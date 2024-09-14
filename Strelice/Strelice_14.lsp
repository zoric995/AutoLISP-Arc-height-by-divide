(defun c:strelice_14
	      (/ olderr	oldcmd oldosmode e obj stpt enpt from stop D TXT1 TXT2 TXT3 TXT4 TXT5 TXT6 TXT7 TXT8 TXT9 TXT10 TXT11 TXT12 TXT13 TXT14 refpt TD ptz pt1 pt2 pt3 pt4 pt5 pt6 pt7 pt8 pt9 pt10 pt11 pt12 pt13 pt14 pt15 pt16 pt17 radius HD1 HD2 HD3 HD4 HD5 HD6 HD7 HD8 HD9 HD10 HD11 HD12 HD13 HD14 H1 H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12 H13 H14 P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17 PN1 PN2 PN3 PN4 PN5 PN6 PN7 PN8 PN9 PN10 PN11 PN12 PN13 PN14 PN15 PN16 PN17 LN1 LN2 LN3 LN4 LN5 LN6 LN7 LN8 LN9 LN10 LN11 LN12 LN13 LN14 LN15 LN16 LN17)
  (setq	oldcmd	  (getvar "cmdecho")
	oldosmode (getvar "osmode")
	olderr	  *error*
  )
  (setvar "cmdecho" 0)
  (vl-load-com)
  (while (not stop)
    (if
      (setq e (entsel "\nSelect a LINE near the end to measure from: "))
       (progn
	 (setq pt (osnap (cadr e) "Near"))
	 (if (cdr (assoc 0 (entget (setq e (car e)))))
	   (setq stop T)
	   (princ "\nNot a LINE!!! Try again!!!")
	 )
       )
       (princ "\nNo object found!!! Try again!!!")
    )
  )
  (setq	obj  (vlax-ename->vla-object e)
	stpt (trans (vlax-curve-getStartPoint obj) 0 1)
	enpt (trans (vlax-curve-getEndPoint obj) 0 1)
	stop nil
  )
  (if (< (distance pt stpt) (distance pt enpt))
    (setq from	"StartPoint"
	  refpt	stpt
    )
    (setq from	"EndPoint"
	  refpt	enpt
    )
  )

(princ "Total Length: ")
    (if (eq (vla-get-objectname obj) "AcDbArc")
    (princ (setq TD (vlax-get-property obj 'ArcLength)))
    (princ (setq TD (vlax-get-property obj 'Length)))
)


(setq p1 (* (/ 0.0 14.0) TD))
(setq p2 (* (/ 1.0 14.0) TD))
(setq p3 (* (/ 2.0 14.0) TD))
(setq p4 (* (/ 3.0 14.0) TD))
(setq p5 (* (/ 4.0 14.0) TD))
(setq p6 (* (/ 5.0 14.0) TD))
(setq p7 (* (/ 6.0 14.0) TD))
(setq p8 (* (/ 7.0 14.0) TD))
(setq p9 (* (/ 8.0 14.0) TD))
(setq p10 (* (/ 9.0 14.0) TD))
(setq p11 (* (/ 10.0 14.0) TD))
(setq p12 (* (/ 11.0 14.0) TD))
(setq p13 (* (/ 12.0 14.0) TD))
(setq p14 (* (/ 13.0 14.0) TD))
(setq p15 (* (/ 14.0 14.0) TD))

    (setvar "osmode" oldosmode)
    (initget 160)
    	  (progn
	    (cond
	      ((= "StartPoint" from)
	       (setq pt1 (trans (vlax-curve-getPointAtDist obj P1) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt1 (trans (vlax-curve-getPointAtDist obj (- TD P1)) 0 1))
	      )
	    )
	         
	    (setvar "osmode" 0)
      (command "_.point" pt1)
	  
    )


    (setvar "osmode" oldosmode)
    (initget 160)
   
		  (progn
	    (cond
	      ((= "StartPoint" from)
	       (setq pt2 (trans (vlax-curve-getPointAtDist obj P2) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt2 (trans (vlax-curve-getPointAtDist obj (- TD P2)) 0 1))
	      )
	    )
	      
	    (setvar "osmode" 0)
      (command "_.point" pt2)
	  
    )
  
  
    (setvar "osmode" oldosmode)
    (initget 160)
    
		  (progn
	    (cond
	      ((= "StartPoint" from)
	       (setq pt3 (trans (vlax-curve-getPointAtDist obj P3) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt3 (trans (vlax-curve-getPointAtDist obj (- TD P3)) 0 1))
	      )
	    )	      
	    (setvar "osmode" 0)
      (command "_.point" pt3)
	  
    )




    (setvar "osmode" oldosmode)
    (initget 160)
    
		  (progn
	    (cond
	      ((= "StartPoint" from)
	       (setq pt4 (trans (vlax-curve-getPointAtDist obj P4) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt4 (trans (vlax-curve-getPointAtDist obj (- TD P4)) 0 1))
	      )
	    )
	      (setvar "osmode" 0)
	      (command "_.point" pt4)        
	  )
    



    (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt5 (trans (vlax-curve-getPointAtDist obj P5) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt5 (trans (vlax-curve-getPointAtDist obj (- TD P5)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt5)
	  )




   (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt6 (trans (vlax-curve-getPointAtDist obj P6) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt6 (trans (vlax-curve-getPointAtDist obj (- TD P6)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt6)
	  )





	     (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt7 (trans (vlax-curve-getPointAtDist obj P7) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt7 (trans (vlax-curve-getPointAtDist obj (- TD P7)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt7)
	  )




	  (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt8 (trans (vlax-curve-getPointAtDist obj P8) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt8 (trans (vlax-curve-getPointAtDist obj (- TD P8)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt8)
	  )





	     (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt9 (trans (vlax-curve-getPointAtDist obj P9) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt9 (trans (vlax-curve-getPointAtDist obj (- TD P9)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt9)
	  )


  (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt10 (trans (vlax-curve-getPointAtDist obj P10) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt10 (trans (vlax-curve-getPointAtDist obj (- TD P10)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt10)
	  )




  (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt11 (trans (vlax-curve-getPointAtDist obj P11) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt11 (trans (vlax-curve-getPointAtDist obj (- TD P11)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt11)
	  )





  (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt12 (trans (vlax-curve-getPointAtDist obj P12) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt12 (trans (vlax-curve-getPointAtDist obj (- TD P12)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt12)
	  )



  (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt13 (trans (vlax-curve-getPointAtDist obj P13) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt13 (trans (vlax-curve-getPointAtDist obj (- TD P13)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt13)
	  )





  (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt14 (trans (vlax-curve-getPointAtDist obj P14) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt14 (trans (vlax-curve-getPointAtDist obj (- TD P14)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt14)
	  )



  (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt15 (trans (vlax-curve-getPointAtDist obj P15) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt15 (trans (vlax-curve-getPointAtDist obj (- TD P15)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt15)
	  )



(setvar "osmode" oldosmode)



(command "_line" pt1 pt15 "")
(setq LN1 (entlast)) 





(setq ptz (getpoint "\nSelect line for measurement points: "))




(command "_line" pt2  "_PER" ptz "")
(setq LN2 (entlast))
(setq HD1 (vlax-ename->vla-object LN2)
	stpt (trans (vlax-curve-getStartPoint HD1) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD1) 0 1)
	stop nil)
	(princ "Total Length HD1: ")
    (princ (setq H1 (vlax-get-property HD1 'Length)))




(command "_line" pt3 "_per" ptz "")
(setq LN3 (entlast))
(setq HD2 (vlax-ename->vla-object LN3)
	stpt (trans (vlax-curve-getStartPoint HD2) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD2) 0 1)
	stop nil)
	(princ "Total Length HD2: ")
    (princ (setq H2 (vlax-get-property HD2 'Length)))




(command "_line" pt4 "_per" ptz "")
(setq LN4 (entlast))
(setq HD3 (vlax-ename->vla-object LN4)
	stpt (trans (vlax-curve-getStartPoint HD3) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD3) 0 1)
	stop nil)
	(princ "Total Length HD3: ")
    (princ (setq H3 (vlax-get-property HD3 'Length)))


(command "_line" pt5 "_per" ptz "")
(setq LN5 (entlast))
(setq HD4 (vlax-ename->vla-object LN5)
	stpt (trans (vlax-curve-getStartPoint HD4) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD4) 0 1)
	stop nil)
	(princ "Total Length HD4: ")
    (princ (setq H4 (vlax-get-property HD4 'Length)))

(command "_line" pt6 "_per" ptz "")
(setq LN6 (entlast))
(setq HD5 (vlax-ename->vla-object LN6)
	stpt (trans (vlax-curve-getStartPoint HD5) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD5) 0 1)
	stop nil)
	(princ "Total Length HD5: ")
    (princ (setq H5 (vlax-get-property HD5 'Length)))






(command "_line" pt7 "_per" ptz "")
(setq LN7 (entlast))
(setq HD6 (vlax-ename->vla-object LN7)
	stpt (trans (vlax-curve-getStartPoint HD6) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD6) 0 1)
	stop nil)
	(princ "Total Length HD6: ")
    (princ (setq H6 (vlax-get-property HD6 'Length)))


(command "_line" pt8 "_per" ptz "")
(setq LN8 (entlast))
(setq HD7 (vlax-ename->vla-object LN8)
	stpt (trans (vlax-curve-getStartPoint HD7) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD7) 0 1)
	stop nil)
	(princ "Total Length HD7: ")
    (princ (setq H7 (vlax-get-property HD7 'Length)))


	(command "_line" pt9 "_per" ptz "")
(setq LN9 (entlast))
(setq HD8 (vlax-ename->vla-object LN9)
	stpt (trans (vlax-curve-getStartPoint HD8) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD8) 0 1)
	stop nil)
	(princ "Total Length HD8: ")
    (princ (setq H8 (vlax-get-property HD8 'Length)))

	(command "_line" pt10 "_per" ptz "")
(setq LN10 (entlast))
(setq HD9 (vlax-ename->vla-object LN10)
	stpt (trans (vlax-curve-getStartPoint HD9) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD9) 0 1)
	stop nil)
	(princ "Total Length HD9: ")
    (princ (setq H9 (vlax-get-property HD9 'Length)))

	(command "_line" pt11 "_per" ptz "")
(setq LN11 (entlast))
(setq HD10 (vlax-ename->vla-object LN11)
	stpt (trans (vlax-curve-getStartPoint HD10) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD10) 0 1)
	stop nil)
	(princ "Total Length HD10: ")
    (princ (setq H10 (vlax-get-property HD10 'Length)))

	(command "_line" pt12 "_per" ptz "")
(setq LN12 (entlast))
(setq HD11 (vlax-ename->vla-object LN12)
	stpt (trans (vlax-curve-getStartPoint HD11) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD11) 0 1)
	stop nil)
	(princ "Total Length HD11: ")
    (princ (setq H11 (vlax-get-property HD11 'Length)))

	(command "_line" pt13 "_per" ptz "")
(setq LN13 (entlast))
(setq HD12 (vlax-ename->vla-object LN13)
	stpt (trans (vlax-curve-getStartPoint HD12) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD12) 0 1)
	stop nil)
	(princ "Total Length HD12: ")
    (princ (setq H12 (vlax-get-property HD12 'Length)))

(command "_line" pt14 "_per" ptz "")
(setq LN14 (entlast))
(setq HD13 (vlax-ename->vla-object LN14)
	stpt (trans (vlax-curve-getStartPoint HD13) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD13) 0 1)
	stop nil)
	(princ "Total Length HD13: ")
    (princ (setq H13 (vlax-get-property HD13 'Length)))









(setvar "osmode" oldosmode)
(command "_attdia" 0)
(setq radius (cdr (assoc 40 (entget e))))
(setq PUT1 (getpoint "\nSelect where to put: ")) 

(command "-insert" "*strelice_14.dwg" 1 1 0 "")
(command "_.erase" (entlast) "")

(command "-insert" "strelice_14" PUT1 1 1 0 (strcat "R"(rtos radius 2 1)) (rtos H1 2 1) (rtos H2 2 1) (rtos H3 2 1) (rtos H4 2 1) (rtos H5 2 1) (rtos H6 2 1) (rtos H7 2 1) (rtos H8 2 1) (rtos H9 2 1) (rtos H10 2 1) (rtos H11 2 1) (rtos H12 2 1) (rtos H13 2 1) (rtos p1 2 1) (rtos p2 2 1) (rtos p3 2 1) (rtos p4 2 1) (rtos p5 2 1) (rtos p6 2 1) (rtos p7 2 1) (rtos p8 2 1) (rtos p9 2 1) (rtos p10 2 1) (rtos p11 2 1) (rtos p12 2 1) (rtos p13 2 1) (rtos p14 2 1) (rtos p15 2 1) "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "")
 

)



 