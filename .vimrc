set nocompatible

" Makes vim work with WSL2
se ma
se ff=unix

" Plugins 
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs' 
Plug 'mhinz/vim-startify'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
call plug#end()

" Indention Options
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab
set ai
set si
" Searching options
set nohlsearch
set incsearch
set ignorecase
set smartcase
" Text rendering options
syntax on
set scrolloff=5
set lbr
set display+=lastline
set encoding=utf-8
" User Interface Options
set laststatus=2
set ruler
set number rnu
set wildmode=longest,list
set wildmenu
set noerrorbells
set showcmd
set lazyredraw
set noshowmode
set shortmess+=I
set ttyfast
" Theme options
set t_Co=256
set termguicolors
colorscheme gruvbox
set bg=dark
" Miscallaneous
set autoread
set backspace=indent,eol,start
set history=1000
set dir=~/.cache/vim//
set backupdir=~/.cache/vim//
set timeout timeoutlen=1000 ttimeoutlen=100
" Sane splits
set splitright
set splitbelow

" Key mappings
map <F2> :NERDTreeToggle<CR>
let mapleader=","
nmap <leader>w :w!<cr>
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

" Jump to start and end of line using home row keys
map H ^
map L $

" Plugin options
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ] ]
      \ },
      \ }
