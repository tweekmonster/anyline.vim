let s:anyline = themis#suite('anyline')
let s:assert = themis#helper('assert')


function! s:anyline.guard() abort
  call s:assert.exists('g:anyline')
  call s:assert.equals(g:anyline, 1)
  runtime! plugin/anyline.vim
  call s:assert.equals(g:anyline, 2)
endfunction


function! s:anyline.statusline() abort
  call s:assert.exists('g:anyline_custom_statusline')
  call s:assert.equals(&statusline, '%{g:anyline_custom_statusline}')
endfunction
