" Enable Pathogen
execute pathogen#infect('modules/{}')
filetype plugin indent on
syntax on

" Load powerline plugin
set laststatus=2
if has("unix")
    set runtimepath+=~/.vim/modules/powerline/powerline/bindings/vim
elseif has("win32")
    set encoding=utf-8
    source $VIM/_vimrc
    set runtimepath+=~\vimfiles\modules\powerline\powerline\bindings\vim
    set guifont=Inconsolata\ for\ Powerline:h12,Fixedsys:h12,Consolas:h12
endif

" Set default vim setting
set sw=4
set ts=4
set expandtab
set hlsearch
set incsearch

" Mappings
map ,t   <Esc>:w!<CR>:!perl -d %<CR>
map ,/   <Esc>*:vimgrep /<C-R>// **/*<CR>
nmap ,a  :w!<CR>:!python %<CR>
nmap ,c  :w!<CR>:!perl -c %<CR>
nmap ,d  :w!<CR>:bd<CR>
nmap ,e  :TlistOpen<CR>
nmap ,n  :w!<CR>:bn<CR>
nmap ,v  :tabedit $MYVIMRC<CR>
nmap ,w  :w !sudo tee %<CR>
vmap ,r  :w !sh<CR>

" Mappings for Tabular
vmap ,= :Tab /=<CR>
vmap ,T :Tab /=><CR>

" Dbext settings
let g:dbext_default_SQLITE_bin = 'sqlite3'
let g:dbext_default_profile_sqlite = 'type=SQLITE:dbname=~/sqlite.db'
" #--dbext:profile=sqlite
let g:dbext_default_MYSQL_bin = 'mysql'
let g:dbext_default_profile_mysql= 'type=MYSQL:user=lirian:dbname=db'
" #--dbext:profile=mysql

" csv.vim
let b:csv_headerline=0
let g:csv_delim='|'
