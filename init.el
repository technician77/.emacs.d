;; Debugger on demand
(setq debug-on-error nil) ;; Set to t to enable debugger
;;
;;Set default coding system to avoid conversion errors when org files are converted to el files.
(set-default-coding-systems 'utf-8)
;;
;; Load (eLisp-) code contained in x.org, write it to x.el and load it, load private/work parts based on which file exists
(when (file-exists-p "~/org/test.org")
           (org-babel-load-file "~/org/config-private.org"))
(when (file-exists-p "~/org/test.org")
           (org-babel-load-file "~/org/config-work.org"))
(org-babel-load-file "~/org/config-general.org")