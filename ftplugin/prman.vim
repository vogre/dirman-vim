" Only do this when not done yet for this buffer
if exists("b:did_prman")
  finish
endif
let b:did_prman = 1
setlocal readonly
setlocal noswapfile

function! VisitLink()
  let l:x = expand('<cWORD>')
  cd `=l:x`
  bwipeout
endfunction

if !hasmapto('<Plug>PrmanVisit')
  nmap <buffer> <Enter> <Plug>PrmanVisit
endif
nnoremap <buffer> <Plug>PrmanVisit :call VisitLink()<CR>
