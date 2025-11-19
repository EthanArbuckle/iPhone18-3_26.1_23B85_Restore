void sub_1837C5BD0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

__n128 sub_1837C5E08(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1837C5E18(void *a1, void *a2)
{
  v3 = a2;
  v19 = v3;
  if (!a1[6])
  {
    v9 = *(a1[4] + 8);
    v10 = v9[6];
    v11 = v9[7];
    v12 = v9[8];
    v13 = v9[9];
    objc_msgSend_bounds(v3, v4, v5, v6, v7, v8);
    v22.origin.x = v14;
    v22.origin.y = v15;
    v22.size.width = v16;
    v22.size.height = v17;
    v21.origin.x = v10;
    v21.origin.y = v11;
    v21.size.width = v12;
    v21.size.height = v13;
    *(*(a1[4] + 8) + 48) = CGRectUnion(v21, v22);
    v3 = v19;
  }

  objc_msgSend_score(v3, v4, v5, v6, v7, v8);
  *(*(a1[5] + 8) + 24) = v18 * *(*(a1[5] + 8) + 24);
}

void sub_1837C6334(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_strokeIndexes(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_1837C6468(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_bounds(v3, v4, v5, v6, v7, v8);
  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v11;
  v22[3] = v12;
  v13 = *(a1 + 32);
  v17 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v14, v22, "{CGRect={CGPoint=dd}{CGSize=dd}}", v15, v16);
  objc_msgSend_addObject_(v13, v18, v17, v19, v20, v21);
}

void sub_1837C670C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1837C6748()
{
  v0 = qword_1EA84C968;
  qword_1EA84C968 = &unk_1EF1EBAB8;
}

void sub_1837C6760(void *a1, void *a2)
{
  v3 = a2;
  ++*(*(a1[4] + 8) + 24);
  v57 = v3;
  objc_msgSend_score(v3, v4, v5, v6, v7, v8);
  *(*(a1[5] + 8) + 24) = log(v9) + *(*(a1[5] + 8) + 24);
  objc_msgSend_score(v57, v10, v11, v12, v13, v14);
  v21 = v20;
  v22 = *(a1[6] + 8);
  v23 = *(v22 + 24);
  if (v21 < v23)
  {
    objc_msgSend_score(v57, v15, v16, v17, v18, v19);
    v22 = *(a1[6] + 8);
  }

  *(v22 + 24) = v23;
  v24 = objc_msgSend_maskedAlternative(v57, v15, v16, v17, v18, v19);

  if (v24)
  {
    v30 = qword_1EA84C968;
    v31 = objc_msgSend_maskedAlternative(v57, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_objectForKeyedSubscript_(v30, v32, v31, v33, v34, v35);

    if (v36)
    {
      v42 = qword_1EA84C968;
      v43 = objc_msgSend_maskedAlternative(v57, v37, v38, v39, v40, v41);
      v48 = objc_msgSend_objectForKeyedSubscript_(v42, v44, v43, v45, v46, v47);
      objc_msgSend_doubleValue(v48, v49, v50, v51, v52, v53);
      v55 = v54;
    }

    else
    {
      v55 = 0.9;
    }

    objc_msgSend_maskedAlternativeScore(v57, v37, v38, v39, v40, v41);
    *(*(a1[7] + 8) + 24) |= v56 > v55;
  }
}

void sub_1837C789C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_string(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_1837C9670(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"\\left("), a4, a5, a6, CFSTR("\\left|"), CFSTR("\\left\\lceil"), CFSTR("\\left\\lfloor"), 0;
  v7 = qword_1EA84CA10;
  qword_1EA84CA10 = v6;

  v12 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v8, @"\\right"), v9, v10, v11, @"\\right|", @"\\right\\rceil", @"\\right\\rfloor", 0);
  v13 = qword_1EA84CA18;
  qword_1EA84CA18 = v12;

  v18 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v14, @"{", v15, v16, v17, @"[", @"\\begin{array}{lr}", 0);
  v19 = qword_1EA84CA20;
  qword_1EA84CA20 = v18;

  v24 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v20, @"}", v21, v22, v23, @"]", @"\\end{array}", 0);
  v25 = qword_1EA84CA28;
  qword_1EA84CA28 = v24;

  v26 = qword_1EA84CA30;
  qword_1EA84CA30 = &unk_1EF1EBAE0;

  v31 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v27, @"\, v28, v29, v30, @"\\,", @"\\", @"\\\, @"\\color{orange}{+}", 0);;
  v32 = qword_1EA84CA38;
  qword_1EA84CA38 = v31;

  v37 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v33, @"^", v34, v35, v36, @"_", @"\\frac", @"\\sqrt", 0);
  v38 = qword_1EA84CA40;
  qword_1EA84CA40 = v37;

  v39 = qword_1EA84CA48;
  qword_1EA84CA48 = &unk_1EF1EBB08;
}

uint64_t sub_1837C9850(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  objc_opt_self();
  v9 = objc_msgSend_mutableCopy(v2, v4, v5, v6, v7, v8);
  objc_msgSend_removeObject_(v9, v10, &stru_1EF1C0318, v11, v12, v13);
  if (!objc_msgSend_count(v9, v14, v15, v16, v17, v18))
  {
    v29 = 0;
    goto LABEL_27;
  }

  v23 = objc_msgSend_objectAtIndex_(v9, v19, 0, v20, v21, v22);
  if (objc_msgSend_isEqualToString_(v23, v24, @"-", v25, v26, v27))
  {
    v28 = v9;
    objc_opt_self();
  }

  else
  {
    v34 = v23;
    if (qword_1EA84C9B8 != -1)
    {
      dispatch_once(&qword_1EA84C9B8, &unk_1EF1BE0E0);
    }

    v35 = objc_msgSend_containsObject_(qword_1EA84C9C0, v30, v34, v31, v32, v33);

    if (v35)
    {
      goto LABEL_26;
    }
  }

  for (i = 1; ; ++i)
  {
    if (i >= objc_msgSend_count(v9, v36, v37, v38, v39, v40))
    {
      v2 = v3;
      v29 = 0;
      goto LABEL_27;
    }

    v46 = objc_msgSend_objectAtIndex_(v9, v42, i, v43, v44, v45);
    if (!objc_msgSend_isEqualToString_(v46, v47, @"-", v48, v49, v50))
    {
      v34 = v46;
      if (qword_1EA84C9B8 != -1)
      {
        dispatch_once(&qword_1EA84C9B8, &unk_1EF1BE0E0);
      }

      v76 = objc_msgSend_containsObject_(qword_1EA84C9C0, v72, v34, v73, v74, v75);

      if (v76)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }

    v51 = v9;
    objc_opt_self();
    if (objc_msgSend_count(v51, v52, v53, v54, v55, v56) <= i - 1)
    {

      goto LABEL_10;
    }

    if (objc_msgSend_count(v51, v57, v58, v59, v60, v61) <= i - 1)
    {
      break;
    }

    v70 = objc_msgSend_objectAtIndex_(v51, v62, i - 1, v63, v64, v65);
    if (qword_1EA84C9B8 != -1)
    {
      dispatch_once(&qword_1EA84C9B8, &unk_1EF1BE0E0);
    }

    v71 = objc_msgSend_containsObject_(qword_1EA84C9C0, v66, v70, v67, v68, v69);

    if ((v71 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_10:
  }

LABEL_25:
  v34 = v46;
LABEL_26:

  v29 = 1;
  v2 = v3;
LABEL_27:

  return v29;
}

void sub_1837CAA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_18367BBC0(&a23);
  sub_18367BBC0(&a29);

  _Unwind_Resume(a1);
}

void sub_1837CABFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"\\frac", a4, a5, a6, @"\\sqrt", @"^", @"_", 0);
  v7 = qword_1EA84CA60;
  qword_1EA84CA60 = v6;

  v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v8, v9, v10, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v14, @"°", @"^ { \\circ }", v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v17, @"'", @"^ { \\prime }", v18, v19);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v20, @"", @"^ { \\prime \\prime }", v21, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v23, @"⁰", @"^ { 0 }", v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v26, @"¹", @"^ { 1 }", v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v29, @"²", @"^ { 2 }", v30, v31);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v32, @"³", @"^ { 3 }", v33, v34);
  v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, @"%C", v36, v37, v38, 8308);
  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, @"^ { %lu }", v41, v42, v43, 4);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v45, v39, v44, v46, v47);

  v52 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v48, @"%C", v49, v50, v51, 8309);
  v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v53, @"^ { %lu }", v54, v55, v56, 5);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v58, v52, v57, v59, v60);

  v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v61, @"%C", v62, v63, v64, 8310);
  v70 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v66, @"^ { %lu }", v67, v68, v69, 6);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v71, v65, v70, v72, v73);

  v78 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v74, @"%C", v75, v76, v77, 8311);
  v83 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v79, @"^ { %lu }", v80, v81, v82, 7);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v84, v78, v83, v85, v86);

  v91 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v87, @"%C", v88, v89, v90, 8312);
  v96 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v92, @"^ { %lu }", v93, v94, v95, 8);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v97, v91, v96, v98, v99);

  v104 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v100, @"%C", v101, v102, v103, 8313);
  v109 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v105, @"^ { %lu }", v106, v107, v108, 9);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v110, v104, v109, v111, v112);

  v117 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v113, @"%C", v114, v115, v116, 8320);
  v122 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v118, @"_ { %lu }", v119, v120, v121, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v123, v117, v122, v124, v125);

  v130 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @"%C", v127, v128, v129, 8321);
  v135 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v131, @"_ { %lu }", v132, v133, v134, 1);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v136, v130, v135, v137, v138);

  v143 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v139, @"%C", v140, v141, v142, 8322);
  v148 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v144, @"_ { %lu }", v145, v146, v147, 2);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v149, v143, v148, v150, v151);

  v156 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v152, @"%C", v153, v154, v155, 8323);
  v161 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v157, @"_ { %lu }", v158, v159, v160, 3);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v162, v156, v161, v163, v164);

  v169 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v165, @"%C", v166, v167, v168, 8324);
  v174 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v170, @"_ { %lu }", v171, v172, v173, 4);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v175, v169, v174, v176, v177);

  v182 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v178, @"%C", v179, v180, v181, 8325);
  v187 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v183, @"_ { %lu }", v184, v185, v186, 5);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v188, v182, v187, v189, v190);

  v195 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v191, @"%C", v192, v193, v194, 8326);
  v200 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v196, @"_ { %lu }", v197, v198, v199, 6);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v201, v195, v200, v202, v203);

  v208 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v204, @"%C", v205, v206, v207, 8327);
  v213 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v209, @"_ { %lu }", v210, v211, v212, 7);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v214, v208, v213, v215, v216);

  v221 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v217, @"%C", v218, v219, v220, 8328);
  v226 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v222, @"_ { %lu }", v223, v224, v225, 8);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v227, v221, v226, v228, v229);

  v234 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v230, @"%C", v231, v232, v233, 8329);
  v239 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v235, @"_ { %lu }", v236, v237, v238, 9);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v240, v234, v239, v241, v242);

  objc_msgSend_setObject_forKeyedSubscript_(v13, v243, @"\\\\ + &", @"\\\\ &", v244, v245);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v246, @"+", @"\\color{orange}{+}", v247, v248);
  v249 = qword_1EA84CA68;
  qword_1EA84CA68 = v13;
}

void sub_1837CB5B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4, a5, a6);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v7, @"x", @"×", v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v10, @"*", @"⋅", v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v13, @"/", @"÷", v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v16, @"pi", @"π", v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v19, &stru_1EF1C0318, @"\n", v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v22, @"=", @"hline", v23, v24);
  v25 = qword_1EA84CA78;
  qword_1EA84CA78 = v6;
}

void sub_1837CB898(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_msgSend_componentsSeparatedByString_(@"!() + , - . / 0 1 2 3 4 5 6 7 8 9 : = \\\\ \\ \\, \\$ \\% \\arccos \\arcsin \\arctan \\ast \\cdot \\circ \\cos \\cosh \\cot \\coth \\csc \\div \\lceil \\left( \\left\\lceil \\left\\lfloor \\left| \\lfloor \\lg \\ln \\log \\prime \\rceil \\rfloor \\right) \\right\\rceil \\right\\rfloor \\right| \\sec \\sin \\sinh \\tan \\tanh \\times a A b B c C d D e E f F g G H h i I j J k K L l m M n N o O p P q Q r R s S t T u U v V w W x X y Y z Z | \\text{€} \\text{£} \\text{¥} \\text{¢} \\text{₺} \\text{₴} \\text{₽} \\text{₩} \\text{°} '  ° ² ³", a2, @" ", a4, a5, a6);
  v12 = objc_msgSend_setWithArray_(v6, v8, v7, v9, v10, v11);
  v13 = qword_1EA84CA88;
  qword_1EA84CA88 = v12;

  v14 = qword_1EA84CA90;
  qword_1EA84CA90 = &unk_1EF1EBB30;
}

void sub_1837CBA00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @" !()+-×*⋅÷:/.,0123456789=%°'aAbBcCdDeEfFgGHhiIjJkKLlmMnNoOpPqQrRsStTuUvVwWxXyYzZ|$¢£¥₩€₴₺₽", a4, a5, a6);
  v7 = qword_1EA84CAA0;
  qword_1EA84CAA0 = v6;
}

void sub_1837CBCE4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69922B8]);
  v7 = objc_msgSend_initWithLocales_(v2, v3, *(a1 + 32), v4, v5, v6);
  v8 = qword_1EA84CAB0;
  qword_1EA84CAB0 = v7;
}

void sub_1837CBF14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"^(?!0*(?:[,. ]0*)*$)(?:[$€£¥¢₺₴₽₩])?[\\d.]\\d*[\\d,. ]*(?:\\d*[,. ]\\d+)*[\\dA-Za-z,. ]*$", 0, 0, a6);
  v7 = qword_1EA84CAC0;
  qword_1EA84CAC0 = v6;
}

void sub_1837CC648(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69922B8]);
  v7 = objc_msgSend_initWithLocales_(v2, v3, *(a1 + 32), v4, v5, v6);
  v8 = qword_1EA84CAC8;
  qword_1EA84CAC8 = v7;

  v11 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v9, @"[+-x×\\*\\.⋅÷/:]?\\s?[\\$€£¥¢₺₴₽₩]?[\\d\\.⋅,]+", 0, 0, v10);
  v12 = qword_1EA84CAD0;
  qword_1EA84CAD0 = v11;
}

void sub_1837CCA3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", a4, a5, a6);
  v7 = qword_1EA84CAE8;
  qword_1EA84CAE8 = v6;
}

void sub_1837CE938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v32 - 176), 8);
  sub_18367BBC0(v31 + 48);
  _Block_object_dispose((v32 - 80), 8);
  _Unwind_Resume(a1);
}

double sub_1837CE994(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

__n128 sub_1837CE9D8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1837CE9FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_1837CEA14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1837CEA2C(void *a1, void *a2)
{
  v125 = a2;
  v8 = objc_msgSend_string(v125, v3, v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"{", v10, v11, v12);

  if (isEqualToString)
  {
    if ((objc_msgSend_isEqualToString_(*(*(a1[4] + 8) + 40), v14, @"^", v16, v17, v18) & 1) != 0 || objc_msgSend_isEqualToString_(*(*(a1[4] + 8) + 40), v19, @"_", v20, v21, v22))
    {
      ++*(*(a1[5] + 8) + 24);
    }

    v23 = *(a1[6] + 8);
    v24 = v23[7];
    v25 = v23[8];
    v26 = ((v25 - v24) << 6) - 1;
    v27 = *(a1[4] + 8);
    if (v25 == v24)
    {
      v26 = 0;
    }

    if (v26 == v23[11] + v23[10])
    {
      sub_1837D2638(v23 + 6);
      v24 = v23[7];
      v25 = v23[8];
    }

    if (v25 == v24)
    {
      v29 = 0;
    }

    else
    {
      v28 = v23[11] + v23[10];
      v29 = (*(v24 + ((v28 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v28 & 0x1FF));
    }

    *v29 = *(v27 + 40);
    ++v23[11];
    goto LABEL_27;
  }

  v30 = objc_msgSend_string(v125, v14, v15, v16, v17, v18);
  v35 = objc_msgSend_isEqualToString_(v30, v31, @"}", v32, v33, v34);

  if (v35)
  {
    v41 = *(a1[6] + 8);
    v42 = v41[11];
    if (v42)
    {
      if ((objc_msgSend_isEqualToString_(*(*(v41[7] + (((v42 + v41[10] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v42 + v41[10] - 1) & 0x1FF)), v36, @"^", v38, v39, v40) & 1) != 0 || (v47 = *(a1[6] + 8), v48 = v47[11] + v47[10] - 1, objc_msgSend_isEqualToString_(*(*(v47[7] + ((v48 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v48 & 0x1FF)), v43, @"_", v44, v45, v46)))
      {
        --*(*(a1[5] + 8) + 24);
      }

      v49 = *(a1[6] + 8);
      v50 = v49[11] + v49[10] - 1;

      v52 = v49[7];
      v51 = v49[8];
      v53 = v51 - v52;
      v54 = v51 == v52;
      v56 = v49[10];
      v55 = v49[11];
      v49[11] = v55 - 1;
      v57 = (v53 << 6) - 1;
      if (v54)
      {
        v57 = 0;
      }

      if ((v57 - (v55 + v56) + 1) >= 0x400)
      {
        operator delete(*(v51 - 8));
        v49[8] -= 8;
      }
    }

    goto LABEL_27;
  }

  v58 = objc_msgSend_string(v125, v36, v37, v38, v39, v40);
  v59 = *(*(a1[5] + 8) + 24);
  v64 = v58;
  if (qword_1EA84C9D8 != -1)
  {
    dispatch_once(&qword_1EA84C9D8, &unk_1EF1BE120);
  }

  v69 = 1.0;
  if ((objc_msgSend_containsObject_(qword_1EA84C9E0, v60, v64, v61, v62, v63) & 1) == 0)
  {
    if (objc_msgSend_containsObject_(qword_1EA84C9E8, v65, v64, v66, v67, v68))
    {
      v74 = 0x3FE3333333333333;
    }

    else
    {
      if ((objc_msgSend_containsObject_(qword_1EA84C9F0, v70, v64, v71, v72, v73) & 1) == 0)
      {
        v69 = 0.0;
        if (objc_msgSend_hasPrefix_(v64, v78, @"\\text{", v79, v80, v81))
        {
          v89 = sub_1837C1898(v64);
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          for (i = objc_msgSend_length(v89, v94, v95, v96, v97, v98); v93 < i; i = objc_msgSend_length(v89, v109, v110, v111, v112, v113))
          {
            v104 = objc_msgSend_characterAtIndex_(v89, v100, v93, v101, v102, v103);
            if (objc_msgSend_characterIsMember_(qword_1EA84C9F8, v105, v104, v106, v107, v108))
            {
              v91 = 1;
              ++v93;
            }

            else
            {
              if (objc_msgSend_characterIsMember_(qword_1EA84CA00, v109, v104, v111, v112, v113))
              {
                v92 = 1;
              }

              else
              {
                v90 |= objc_msgSend_characterIsMember_(qword_1EA84CA08, v109, v104, v111, v112, v113) ^ 1;
              }

              ++v93;
            }
          }

          v120 = 1.4;
          v121 = 0.6;
          if ((v90 | v91))
          {
            v121 = 1.0;
          }

          if ((v90 & v91 & 1) == 0)
          {
            v120 = v121;
          }

          if (((v92 | v90) | v91))
          {
            v69 = v120;
          }

          else
          {
            v69 = 0.0;
          }
        }

        goto LABEL_33;
      }

      v74 = 0x3FF6666666666666;
    }

    v69 = *&v74;
  }

LABEL_33:
  v82 = exp2(-v59) * v69;

  if (v82 > 0.0)
  {
    objc_msgSend_bounds(v125, v36, v37, v38, v39, v40);
    if (!CGRectEqualToRect(v127, *MEMORY[0x1E695F050]))
    {
      v83 = *(a1[7] + 8);
      objc_msgSend_bounds(v125, v36, v37, v38, v39, v40);
      v85 = v83[7];
      v84 = v83[8];
      v87 = v86 / v82;
      if (v85 >= v84)
      {
        v114 = v83[6];
        v115 = v85 - v114;
        v116 = (v85 - v114) >> 3;
        v117 = v116 + 1;
        if ((v116 + 1) >> 61)
        {
          sub_1836D58DC();
        }

        v118 = v84 - v114;
        if (v118 >> 2 > v117)
        {
          v117 = v118 >> 2;
        }

        if (v118 >= 0x7FFFFFFFFFFFFFF8)
        {
          v119 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v119 = v117;
        }

        if (v119)
        {
          if (!(v119 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        v122 = (v85 - v114) >> 3;
        v123 = (8 * v116);
        v124 = (8 * v116 - 8 * v122);
        *v123 = v87;
        v88 = v123 + 1;
        memcpy(v124, v114, v115);
        v83[6] = v124;
        v83[7] = v88;
        v83[8] = 0;
        if (v114)
        {
          operator delete(v114);
        }
      }

      else
      {
        *v85 = v87;
        v88 = v85 + 1;
      }

      v83[7] = v88;
    }
  }

LABEL_27:
  v75 = objc_msgSend_string(v125, v36, v37, v38, v39, v40);
  v76 = *(a1[4] + 8);
  v77 = *(v76 + 40);
  *(v76 + 40) = v75;
}

void sub_1837CF398(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  v35 = v3;
  if (*(a1 + 48) == 1)
  {
    v9 = objc_msgSend_string(v3, v3, v4, v5, v6, v7);
    if (objc_msgSend_isEqualToString_(v9, v10, @"\\begin{array}{lr}", v11, v12, v13))
    {
LABEL_5:

LABEL_6:
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_9;
    }

    v19 = objc_msgSend_string(v35, v14, v15, v16, v17, v18);
    if (objc_msgSend_isEqualToString_(v19, v20, @"\\end{array}", v21, v22, v23))
    {

      goto LABEL_5;
    }

    v29 = objc_msgSend_string(v35, v24, v25, v26, v27, v28);
    isEqualToString = objc_msgSend_isEqualToString_(v29, v30, @"&", v31, v32, v33);

    v8 = v35;
    if (isEqualToString)
    {
      goto LABEL_6;
    }
  }

  objc_msgSend_addObject_(*(a1 + 32), v8, v8, v5, v6, v7);
LABEL_9:
}

void sub_1837CF89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v30 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1837CF99C(uint64_t a1, void *a2)
{
  v3 = a2;
  v111 = v3;
  if ((*(a1 + 64) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v4, v3, v6, v7, v8);
    goto LABEL_23;
  }

  v9 = objc_msgSend_string(v3, v4, v5, v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"\\hline", v11, v12, v13);

  if (isEqualToString)
  {
    objc_msgSend_addObject_(*(a1 + 32), v15, v111, v17, v18, v19);
    v20 = 1;
    v21 = 40;
    goto LABEL_22;
  }

  v22 = v111;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v27 = objc_msgSend_string(v111, v111, v16, v17, v18, v19);
    if (qword_1EA84C9B8 != -1)
    {
      dispatch_once(&qword_1EA84C9B8, &unk_1EF1BE0E0);
    }

    v28 = objc_msgSend_containsObject_(qword_1EA84C9C0, v23, v27, v24, v25, v26);

    if (v28)
    {
      v33 = v111;
      if (!*(*(*(a1 + 56) + 8) + 24) || (objc_msgSend_string(v111, v111, v29, v30, v31, v32), v34 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend_isEqualToString_(v34, v35, @"-", v36, v37, v38), v34, v33 = v111, !v39))
      {
        objc_msgSend_addObject_(*(a1 + 32), v33, v33, v30, v31, v32);
        v96 = *(a1 + 32);
        v97 = [CHTokenizedMathResultToken alloc];
        v103 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v98, v99, v100, v101, v102);
        v106 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v97, v104, @"&", v103, 1, v105, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
        objc_msgSend_addObject_(v96, v107, v106, v108, v109, v110);

        goto LABEL_20;
      }

      v41 = (a1 + 32);
      v40 = *(a1 + 32);
      v42 = [CHTokenizedMathResultToken alloc];
      v48 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v43, v44, v45, v46, v47);
      v51 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v42, v49, @"&", v48, 1, v50, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
      objc_msgSend_addObject_(v40, v52, v51, v53, v54, v55);
    }

    else
    {
      v56 = MEMORY[0x1E695F050];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && *(a1 + 65) == 1)
      {
        v57 = *(a1 + 32);
        v58 = [CHTokenizedMathResultToken alloc];
        v64 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v59, v60, v61, v62, v63);
        v67 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v58, v65, @"\\color{orange}{+}", v64, 8, v66, 1.0, *v56, v56[1], v56[2], v56[3]);
        objc_msgSend_addObject_(v57, v68, v67, v69, v70, v71);
      }

      v41 = (a1 + 32);
      v72 = *(a1 + 32);
      v73 = [CHTokenizedMathResultToken alloc];
      v48 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v74, v75, v76, v77, v78);
      v51 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v73, v79, @"&", v48, 1, v80, 1.0, *v56, v56[1], v56[2], v56[3]);
      objc_msgSend_addObject_(v72, v81, v51, v82, v83, v84);
    }

    v22 = v111;
  }

  else
  {
    v41 = (a1 + 32);
  }

  objc_msgSend_addObject_(*v41, v22, v22, v17, v18, v19);
LABEL_20:
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v90 = objc_msgSend_string(v111, v85, v86, v87, v88, v89);
  v95 = objc_msgSend_isEqualToString_(v90, v91, @"\\\", v92, v93, v94);

  if (!v95)
  {
    goto LABEL_23;
  }

  v20 = 0;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v21 = 56;
LABEL_22:
  *(*(*(a1 + v21) + 8) + 24) = v20;
LABEL_23:
}

void sub_1837D0180(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v4, v5, v6, v7, v8);
  v15 = objc_msgSend_strokeIndexes(v3, v10, v11, v12, v13, v14);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1837D0350;
  v42[3] = &unk_1E6DDE4D0;
  v43 = *(a1 + 32);
  v16 = v9;
  v44 = v16;
  v45 = *(a1 + 40);
  objc_msgSend_enumerateIndexesUsingBlock_(v15, v17, v42, v18, v19, v20);

  v26 = objc_msgSend_mutableCopy(v3, v21, v22, v23, v24, v25);
  objc_msgSend_setStrokeIndexes_(v26, v27, v16, v28, v29, v30);
  v31 = *(a1 + 48);
  v37 = objc_msgSend_copy(v26, v32, v33, v34, v35, v36);
  objc_msgSend_addObject_(v31, v38, v37, v39, v40, v41);
}

void sub_1837D02B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v20 = v18;

  _Unwind_Resume(a1);
}

void sub_1837D0350(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5, a6);
  v8 = *(a1 + 40);
  v18 = v7;
  v13 = objc_msgSend_indexOfObject_(*(a1 + 48), v9, v7, v10, v11, v12);
  objc_msgSend_addIndex_(v8, v14, v13, v15, v16, v17);
}

void sub_1837D10FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v4, v5, v6, v7, v8);
  v15 = objc_msgSend_strokeIndexes(v3, v10, v11, v12, v13, v14);
  v42 = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v44 = sub_1837D12A8;
  v45 = &unk_1E6DDE028;
  v46 = *(a1 + 32);
  v16 = v9;
  v47 = v16;
  objc_msgSend_enumerateIndexesUsingBlock_(v15, v17, &v42, v18, v19, v20);

  v26 = objc_msgSend_mutableCopy(v3, v21, v22, v23, v24, v25, v42, v43, v44, v45);
  objc_msgSend_setStrokeIndexes_(v26, v27, v16, v28, v29, v30);
  v31 = *(a1 + 40);
  v37 = objc_msgSend_copy(v26, v32, v33, v34, v35, v36);
  objc_msgSend_addObject_(v31, v38, v37, v39, v40, v41);
}

void sub_1837D121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

uint64_t sub_1837D12A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1837D1360;
  v21[3] = &unk_1E6DDE3E0;
  v21[4] = a2;
  v9 = objc_msgSend_indexesPassingTest_(v8, a2, v21, a4, a5, a6);
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);

  return objc_msgSend_addIndex_(*(a1 + 40), v16, &a2[-v15], v17, v18, v19);
}

void sub_1837D1BC0(uint64_t a1, void *a2)
{
  v24 = a2;
  if ((objc_msgSend_properties(v24, v3, v4, v5, v6, v7) & 0x4000) != 0)
  {
    v13 = *(a1 + 32);
    v14 = objc_msgSend_copy(*(a1 + 40), v8, v9, v10, v11, v12);
    objc_msgSend_addObject_(v13, v15, v14, v16, v17, v18);

    objc_msgSend_removeAllObjects(*(a1 + 40), v19, v20, v21, v22, v23);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 40), v8, v24, v10, v11, v12);
  }
}

void sub_1837D20D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v4, v5, v6, v7, v8);
  v15 = objc_msgSend_strokeIndexes(v3, v10, v11, v12, v13, v14);
  v42 = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v44 = sub_1837D2274;
  v45 = &unk_1E6DDE520;
  v47 = *(a1 + 40);
  v16 = v9;
  v46 = v16;
  objc_msgSend_enumerateIndexesUsingBlock_(v15, v17, &v42, v18, v19, v20);

  v26 = objc_msgSend_mutableCopy(v3, v21, v22, v23, v24, v25, v42, v43, v44, v45);
  objc_msgSend_setStrokeIndexes_(v26, v27, v16, v28, v29, v30);
  v31 = *(a1 + 32);
  v37 = objc_msgSend_copy(v26, v32, v33, v34, v35, v36);
  objc_msgSend_addObject_(v31, v38, v37, v39, v40, v41);
}

void sub_1837D21E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

uint64_t sub_1837D2370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1837D24F4(a1, a2);
  sub_1837D24F4(v4 + 40, a2 + 40);
  sub_1837D24F4(a1 + 80, a2 + 80);
  sub_1837D24F4(a1 + 120, a2 + 120);
  sub_1837D24F4(a1 + 160, a2 + 160);
  sub_1837D24F4(a1 + 200, a2 + 200);
  sub_1837D24F4(a1 + 240, a2 + 240);
  sub_1837D24F4(a1 + 280, a2 + 280);
  sub_1837D24F4(a1 + 320, a2 + 320);
  sub_1837D24F4(a1 + 360, a2 + 360);
  sub_1837D24F4(a1 + 400, a2 + 400);
  sub_1837D24F4(a1 + 440, a2 + 440);
  return a1;
}

void sub_1837D2420(_Unwind_Exception *a1)
{
  sub_183686C60(v1 + 400);
  sub_183686C60(v1 + 360);
  sub_183686C60(v1 + 320);
  sub_183686C60(v1 + 280);
  sub_183686C60(v1 + 240);
  sub_183686C60(v1 + 200);
  sub_183686C60(v1 + 160);
  sub_183686C60(v1 + 120);
  sub_183686C60(v1 + 80);
  sub_183686C60(v1 + 40);
  sub_183686C60(v1);
  _Unwind_Resume(a1);
}

void sub_1837D24C4(_Unwind_Exception *a1)
{
  sub_183686C60(v1 + 40);
  sub_183686C60(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1837D24F4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_183689098(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_183688A78(a1, (i + 2));
  }

  return a1;
}

void *sub_1837D2638(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_18368AB74(a1, &v10);
}

void sub_1837D2C20(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1837D2C78(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_18368AB74(a1, &v10);
}

void sub_1837D3260(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1837D3734(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1837D376C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1837D3BC4(uint64_t a1, CGFloat a2, CGFloat a3)
{
  IsEmpty = CGPathIsEmpty(*(a1 + 32));
  v7 = *(a1 + 32);
  if (IsEmpty)
  {

    CGPathMoveToPoint(v7, 0, a2, a3);
  }

  else
  {

    CGPathAddLineToPoint(v7, 0, a2, a3);
  }
}

double sub_1837D3C44(uint64_t a1, double a2, double a3)
{
  v4.origin.x = a2 + -1.0;
  v4.origin.y = a3 + -1.0;
  v4.size.width = *(a1 + 32);
  v4.size.height = v4.size.width;
  CGContextFillEllipseInRect(*(a1 + 40), v4);
  return result;
}

void sub_1837D3C60(uint64_t **a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  BYTE4(v77) = 0;
  v75 = 0;
  v76 = 0;
  LOBYTE(v77) = 0;
  *__p = 0u;
  *v79 = 0u;
  v80 = 0u;
  *v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  if (*(a2 + 1) != *a2)
  {
    operator new();
  }

  if (a1[1] != *a1)
  {
    v8 = 0;
    do
    {
      v14 = v77;
      v15 = v75;
      v16 = *a2;
      if (*(a2 + 1) == *a2)
      {
      }

      else
      {
        v74 = v15;
        if ((v14 & 0x100000000) != 0)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 24;
          do
          {
            v23 = *(v16 + v22 - 24) + 56 * v8;
            if (*(v23 + 16) == 1)
            {
              if (v21)
              {
                v24 = sub_1837D4988(*(v23 + 8), *(v16 + v22));
                if (v24 > v17)
                {
                  v16 = *a2;
                  v20 = *(*a2 + v22);
                  v19 = *(*a2 + v22) >> 8;
                  v21 = 1;
                  v17 = v24;
                }

                else
                {
                  v16 = *a2;
                  if (v24 == v17 && *(v16 + v22) == v14)
                  {
                    v21 = BYTE4(v14);
                    v20 = v14;
                    v19 = v14 >> 8;
                  }
                }
              }

              else
              {
                v25 = *(v16 + v22);
                v17 = sub_1837D4988(*(v23 + 8), v25);
                v19 = v25 >> 8;
                v20 = v25;
                v16 = *a2;
                v21 = 1;
              }
            }

            ++v18;
            v22 += 32;
          }

          while (v18 < (*(a2 + 1) - v16) >> 5);
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          do
          {
            v30 = *(v16 + v26) + 56 * v8;
            if (*(v30 + 16) == 1)
            {
              if (v21)
              {
                v31 = sub_1837D4988(*(v30 + 8), *(v16 + v26 + 24));
                v16 = *a2;
                if (v31 > v27)
                {
                  v20 = *(v16 + v26 + 24);
                  v19 = *(v16 + v26 + 24) >> 8;
                  v21 = 1;
                  v27 = v31;
                }
              }

              else
              {
                v29 = *(v16 + v26 + 24);
                v27 = sub_1837D4988(*(v30 + 8), v29);
                v19 = v29 >> 8;
                v20 = v29;
                v16 = *a2;
                v21 = 1;
              }
            }

            ++v28;
            v26 += 32;
          }

          while (v28 < (*(a2 + 1) - v16) >> 5);
        }

        if (v21)
        {
          v32 = v20 | (v19 << 8);
          if (BYTE4(v77) == 1 && (v21 != 1 || v77 != v32))
          {
            sub_1837D45BC(&v75, v9, v10, v11, v12, v13);
          }

          LODWORD(v77) = v20 | (v19 << 8);
          BYTE4(v77) = (v32 | (v21 << 32)) >> 32;
          sub_1836868A4("map::at:  key not found");
        }
      }

      sub_1837D45BC(&v75, v9, v10, v11, v12, v13);
      ++v8;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1));
  }

  sub_1837D45BC(&v75, a2, a3, a4, a5, a6);
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = *a1;
  v39 = a1[1];
  if (*a1 != v39)
  {
    do
    {
      objc_msgSend_addObject_(v37, v33, *v38, v34, v35, v36);
      v38 += 5;
    }

    while (v38 != v39);
  }

  v40 = objc_msgSend_componentsJoinedByString_(v37, v33, &stru_1EF1C0318, v34, v35, v36);

  v44 = v40;
  v45 = v81[0];
  if (v81[1] != v81[0])
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = objc_msgSend_substringWithRange_(v44, v41, *&v45[v46 + 16], *&v45[v46 + 24], v42, v43);
      v49 = *(v81[0] + v46 + 32);
      *(v81[0] + v46 + 32) = v48;

      ++v47;
      v45 = v81[0];
      v46 += 40;
    }

    while (v47 < 0xCCCCCCCCCCCCCCCDLL * ((v81[1] - v81[0]) >> 3));
  }

  v55 = v81[0];
  if (v81[1] == v81[0])
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    sub_1836E1928(0);
    v68 = v81[0];
    if (v81[0])
    {
      goto LABEL_44;
    }

LABEL_50:
    v71 = v79[1];
    if (!v79[1])
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v56 = 0;
  v57 = 8;
  do
  {
    v58 = *&v55[v57];
    v59 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v50, v51, v52, v53, v54);
    v64 = objc_msgSend_stringByTrimmingCharactersInSet_(v58, v60, v59, v61, v62, v63);
    v65 = *(v81[0] + v57);
    *(v81[0] + v57) = v64;

    ++v56;
    v55 = v81[0];
    v66 = v81[1];
    v67 = 0xCCCCCCCCCCCCCCCDLL * ((v81[1] - v81[0]) >> 3);
    v57 += 40;
  }

  while (v56 < v67);
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v85 = a7;
  LOBYTE(v86) = 0;
  if (v66 != v55)
  {
    if (v67 < 0x666666666666667)
    {
      operator new();
    }

    sub_18368964C();
  }

  sub_1836E1928(0);
  v68 = v81[0];
  if (!v81[0])
  {
    goto LABEL_50;
  }

LABEL_44:
  v69 = v81[1];
  v70 = v68;
  if (v81[1] != v68)
  {
    do
    {

      v69 -= 5;
    }

    while (v69 != v68);
    v70 = v81[0];
  }

  v81[1] = v68;
  operator delete(v70);
  v71 = v79[1];
  if (v79[1])
  {
LABEL_51:
    *&v80 = v71;
    operator delete(v71);
  }

LABEL_52:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1837D44D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_1836E1928(a12);
  sub_1837D53D0(va);
  _Unwind_Resume(a1);
}

double sub_1837D45BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  if (v7 && objc_msgSend_length(v7, a2, a3, a4, a5, a6))
  {
    if ((*(a1 + 20) & 1) == 0)
    {
      sub_18368EC64();
    }

    v8 = *(a1 + 16);
    v17 = v8;
    v9 = *a1;
    v18 = v9;
    v19 = *(a1 + 96);
    v20 = 0;
    v10 = *(a1 + 80);
    if (v10 >= *(a1 + 88))
    {
      v13 = sub_1837D5700(a1 + 72, &v17);
      v12 = v20;
      v11 = v18;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      *v10 = v8;
      *(v10 + 8) = v9;
      *(v10 + 16) = v19;
      *(v10 + 32) = 0;
      v13 = v10 + 40;
    }

    *(a1 + 80) = v13;
  }

  v14 = *a1;
  *a1 = 0;

  v15 = *(a1 + 8);
  *(a1 + 8) = 0;

  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
  }

  *(a1 + 32) = *(a1 + 24);
  *(a1 + 56) = *(a1 + 48);
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

BOOL sub_1837D46D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 24);
  sub_1838B55FC((a1 + 24), (a2 + 24), &__p);
  if (v74 == __p)
  {
    v16 = 1;
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v74 - __p) >> 3);
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v74 - __p) >> 3);
    }

    if (*__p <= *(__p + 1))
    {
      v17 = (__p + 32);
      v18 = 1;
      do
      {
        v19 = v18;
        if (v15 == v18)
        {
          break;
        }

        v20 = *(v17 - 1);
        v21 = *v17;
        ++v18;
        v17 += 3;
      }

      while (v20 <= v21);
      v16 = v19 >= v14;
    }

    else
    {
      v16 = 0;
    }
  }

  v22 = *(a2 + 8);
  v23 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v9, v10, v11, v12, v13);
  v27 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v22, v24, v23, -1, v25, v26);
  v33 = objc_msgSend_length(*(a2 + 8), v28, v29, v30, v31, v32);

  if (v27 == v33)
  {
    sub_1837D5470((a1 + 48), *(a1 + 24), *(a1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3));
    v43 = objc_msgSend_copy(*a1, v38, v39, v40, v41, v42);
    v44 = *(a1 + 8);
    *(a1 + 8) = v43;

    *(a1 + 112) = *(a1 + 96);
  }

  if (v16)
  {
    if (!*(a1 + 104))
    {
      if (v27 == v33)
      {
        goto LABEL_23;
      }

      *(a1 + 96) = a3;
      *(a1 + 104) = 0;
      v45 = *a1;
      *a1 = &stru_1EF1C0318;
    }

    *(a1 + 104) = a3 + a4 - *(a1 + 96);
    v46 = objc_msgSend_stringByAppendingString_(*a1, v34, *(a2 + 8), v35, v36, v37);
    v47 = *a1;
    *a1 = v46;

    if (v8 != &__p)
    {
      sub_1837D5470(v8, __p, v74, 0xAAAAAAAAAAAAAAABLL * ((v74 - __p) >> 3));
    }

    v53 = *(a2 + 8);
    v54 = objc_msgSend_ch_sentenceEndPunctuationCharacterSet(MEMORY[0x1E696AB08], v48, v49, v50, v51, v52);
    v58 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v53, v55, v54, -1, v56, v57);
    v64 = objc_msgSend_length(*(a2 + 8), v59, v60, v61, v62, v63);

    if (v58 == v64 || *(a2 + 52) == 1)
    {
      sub_1837D5470((a1 + 48), *(a1 + 24), *(a1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3));
      v70 = objc_msgSend_copy(*a1, v65, v66, v67, v68, v69);
      v71 = *(a1 + 8);
      *(a1 + 8) = v70;

      *(a1 + 112) = *(a1 + 96);
    }
  }

LABEL_23:
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  return v16;
}

void sub_1837D4950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1837D4988(void *a1, int a2)
{
  v3 = a1;
  v9 = objc_msgSend_ch_synthesisFastPathFavoredIsolatedCharSet(MEMORY[0x1E696AB08], v4, v5, v6, v7, v8);
  v15 = objc_msgSend_ch_synthesisFastPathFavoredCharSet(MEMORY[0x1E696AB08], v10, v11, v12, v13, v14);
  if (objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v3, v16, v15, -1, v17, v18) <= 0)
  {
    if (objc_msgSend_countCharacters(v3, v19, v20, v21, v22, v23) == 1)
    {
      if (objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v3, v19, v9, -1, v22, v23) <= 0)
      {
        v24 = 2;
      }

      else
      {
        v24 = 5;
      }
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 5;
  }

  v25 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v19, v20, v21, v22, v23);
  v29 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v3, v26, v25, -1, v27, v28);
  v35 = objc_msgSend_length(v3, v30, v31, v32, v33, v34);

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v36 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_ERROR, "CHSynthesisTextChunkerScore: Attempt to the score for UNDEFINED synthesizer", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v37 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v37 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }
    }

    *v39 = 0;
    _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_FAULT, "CHSynthesisTextChunkerScore: Attempt to the score for UNDEFINED synthesizer", v39, 2u);
    goto LABEL_29;
  }

  switch(a2)
  {
    case 2:
      if (v29 == v35)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      break;
    case 3:
      if (v29 == v35)
      {
        v24 = 0;
      }

      else
      {
        v24 = 3;
      }

      break;
    case 4:
      v24 = 3;
      break;
    default:
LABEL_30:
      v24 = 1;
      break;
  }

LABEL_31:

  return v24;
}

void sub_1837D4C4C(uint64_t *a1@<X0>, NSUInteger length@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, id **a7@<X8>)
{
  v7 = a7;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *length;
  v82 = v7;
  if (*(length + 8) != *length)
  {
    v9 = length;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v78 = length;
    while (1)
    {
      v13 = v8 + 40 * v12;
      if (*(v13 + 32) != 5)
      {
        v80 = v12;
        v81 = (v8 + 40 * v12);
        v14 = *(v13 + 16);
        v79 = *(v13 + 24);
        v15 = *a1;
        for (i = (a1[1] - *a1) >> 3; v11 < 0xCCCCCCCCCCCCCCCDLL * i; i = (a1[1] - *a1) >> 3)
        {
          v17 = v15 + 40 * v11;
          v18 = (v17 + 16);
          if (v14 < *(v17 + 24) + *(v17 + 16))
          {
            break;
          }

          v19 = v7[2];
          if (v10 < v19)
          {
            *v10 = *v17;
            *(v10 + 8) = *(v17 + 8);
            *(v10 + 16) = *v18;
            *(v10 + 32) = *(v17 + 32);
            v10 += 40;
          }

          else
          {
            v20 = *v7;
            v21 = v10 - *v7;
            v22 = 0xCCCCCCCCCCCCCCCDLL * (v21 >> 3) + 1;
            if (v22 > 0x666666666666666)
            {
              sub_18368964C();
            }

            v23 = v14;
            v24 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v20) >> 3);
            if (2 * v24 > v22)
            {
              v22 = 2 * v24;
            }

            if (v24 >= 0x333333333333333)
            {
              v25 = 0x666666666666666;
            }

            else
            {
              v25 = v22;
            }

            if (v25)
            {
              if (v25 <= 0x666666666666666)
              {
                operator new();
              }

              sub_183688F00();
            }

            v26 = 8 * (v21 >> 3);
            *v26 = *v17;
            *(v26 + 8) = *(v17 + 8);
            *(v26 + 16) = *v18;
            *(v26 + 32) = *(v17 + 32);
            if (v20 == v10)
            {
              v31 = v82;
            }

            else
            {
              v27 = v20;
              v28 = v26 - v21;
              do
              {
                *v28 = *v27;
                v29 = v27[1];
                v27[1] = 0;
                *(v28 + 8) = v29;
                *(v28 + 16) = *(v27 + 1);
                v30 = v27[4];
                v27[4] = 0;
                *(v28 + 32) = v30;
                v27 += 5;
                v28 += 40;
              }

              while (v27 != v10);
              do
              {

                v20 += 5;
              }

              while (v20 != v10);
              v31 = v82;
              v20 = *v82;
            }

            v10 = v26 + 40;
            *v31 = (v26 - v21);
            v31[2] = 0;
            v7 = v31;
            if (v20)
            {
              operator delete(v20);
            }

            v14 = v23;
          }

          v7[1] = v10;
          ++v11;
          v15 = *a1;
        }

        CodepointInString = objc_msgSend_firstCodepointInString(*v81, length, a3, a4, a5, a6);
        v38 = objc_msgSend_controlCharacterSet(MEMORY[0x1E696AB08], v33, v34, v35, v36, v37);
        if (objc_msgSend_longCharacterIsMember_(v38, v39, CodepointInString, v40, v41, v42))
        {
        }

        else
        {
          v48 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v43, v44, v45, v46, v47);
          IsMember = objc_msgSend_longCharacterIsMember_(v48, v49, CodepointInString, v50, v51, v52);

          if ((IsMember & 1) == 0)
          {
            v9 = v78;
            v12 = v80;
            if (v11 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) || (v88.location = v14, v88.length = v79, (length = NSIntersectionRange(v88, *(*a1 + 40 * v11 + 16)).length) == 0))
            {
              if (v10 == *v7 || *(v10 - 40) || (v54 = *(v10 - 16), v54 + *(v10 - 24) != v14))
              {
                v84 = 0;
                v85 = &stru_1EF1C0318;
                *&v86 = v14;
                *(&v86 + 1) = v79;
                v63 = sub_1837A4260(CodepointInString, length, a3, a4, a5, a6);
                v87 = v63;
                if (v10 >= v7[2])
                {
                  v10 = sub_1837D5700(v7, &v84);
                }

                else
                {
                  *v10 = 0;
                  v85 = 0;
                  *(v10 + 8) = &stru_1EF1C0318;
                  *(v10 + 16) = v86;
                  v87 = 0;
                  *(v10 + 32) = v63;
                  v10 += 40;
                }

                v7[1] = v10;
              }

              else
              {
                *(v10 - 16) = v54 + v79;
                v55 = *(v10 - 8);
                v56 = sub_1837A4260(CodepointInString, length, a3, a4, a5, a6);
                v61 = objc_msgSend_stringByAppendingString_(v55, v57, v56, v58, v59, v60);
                v62 = *(v10 - 8);
                *(v10 - 8) = v61;
              }
            }

            goto LABEL_5;
          }
        }

        v9 = v78;
        v12 = v80;
      }

LABEL_5:
      ++v12;
      v8 = *v9;
      if (v12 >= 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 3))
      {
        goto LABEL_45;
      }
    }
  }

  v10 = 0;
  v11 = 0;
LABEL_45:
  for (j = *a1; v11 < 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3); j = *a1)
  {
    v65 = j + 40 * v11;
    v66 = v7[2];
    if (v10 < v66)
    {
      *v10 = *v65;
      *(v10 + 8) = *(v65 + 8);
      *(v10 + 16) = *(v65 + 16);
      *(v10 + 32) = *(v65 + 32);
      v10 += 40;
    }

    else
    {
      v67 = *v7;
      v68 = v10 - *v7;
      v69 = 0xCCCCCCCCCCCCCCCDLL * (v68 >> 3) + 1;
      if (v69 > 0x666666666666666)
      {
        sub_18368964C();
      }

      v70 = 0xCCCCCCCCCCCCCCCDLL * ((v66 - v67) >> 3);
      if (2 * v70 > v69)
      {
        v69 = 2 * v70;
      }

      if (v70 >= 0x333333333333333)
      {
        v71 = 0x666666666666666;
      }

      else
      {
        v71 = v69;
      }

      if (v71)
      {
        if (v71 <= 0x666666666666666)
        {
          operator new();
        }

        sub_183688F00();
      }

      v72 = 8 * (v68 >> 3);
      *v72 = *v65;
      *(v72 + 8) = *(v65 + 8);
      *(v72 + 16) = *(v65 + 16);
      *(v72 + 32) = *(v65 + 32);
      v73 = v72 - v68;
      if (v67 != v10)
      {
        v74 = v67;
        v75 = v72 - v68;
        do
        {
          *v75 = *v74;
          v76 = v74[1];
          v74[1] = 0;
          *(v75 + 8) = v76;
          *(v75 + 16) = *(v74 + 1);
          v77 = v74[4];
          v74[4] = 0;
          *(v75 + 32) = v77;
          v74 += 5;
          v75 += 40;
        }

        while (v74 != v10);
        do
        {

          v67 += 5;
        }

        while (v67 != v10);
        v67 = *v82;
        v10 = v72 + 40;
        *v82 = v73;
        v82[2] = 0;
        v7 = v82;
        if (!v67)
        {
          goto LABEL_48;
        }

LABEL_66:
        operator delete(v67);
        goto LABEL_48;
      }

      v10 = v72 + 40;
      *v82 = v73;
      v82[2] = 0;
      v7 = v82;
      if (v67)
      {
        goto LABEL_66;
      }
    }

LABEL_48:
    ++v11;
    v7[1] = v10;
  }
}

uint64_t sub_1837D53D0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  return a1;
}

char *sub_1837D5470(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void **sub_1837D5604(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***sub_1837D5674(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {

          v4 -= 5;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_1837D5700(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3) + 1;
  if (v5 > 0x666666666666666)
  {
    sub_18368964C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v2) >> 3) >= 0x333333333333333)
  {
    v7 = 0x666666666666666;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x666666666666666)
    {
      operator new();
    }

    sub_183688F00();
  }

  v8 = 8 * (v4 >> 3);
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v8 + 8) = v9;
  *(v8 + 16) = *(a2 + 16);
  v10 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v8 + 32) = v10;
  v11 = v8 + 40;
  v12 = v8 - v4;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      *v14 = *v13;
      v15 = v13[1];
      v13[1] = 0;
      *(v14 + 8) = v15;
      *(v14 + 16) = *(v13 + 1);
      v16 = v13[4];
      v13[4] = 0;
      *(v14 + 32) = v16;
      v13 += 5;
      v14 += 40;
    }

    while (v13 != v3);
    do
    {

      v2 += 5;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v11;
}

void sub_1837D5888(uint64_t a1, void *a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  operator new();
}

void sub_1837D5E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  operator delete(v28);

  _Unwind_Resume(a1);
}

void sub_1837D5EF0(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v57 = a2;
  v13 = sub_1837A4260(a2, a2, a3, a4, a5, a6);
  v14 = *(a1 + 64);
  if (*(a1 + 72) != v14)
  {
    v15 = 0;
    v56 = v60;
    do
    {
      v16 = 0;
      v17 = *(v14 + 4 * v15);
      if (v17 <= 2)
      {
        switch(v17)
        {
          case 0:
            if (sub_1837D6424(v13, *(a1 + 32)))
            {
              sub_1837D6550(a1 + 88, v13, a3, a4, v13, 0);
              goto LABEL_29;
            }

            goto LABEL_30;
          case 1:
            v30 = objc_msgSend_decomposedStringWithCanonicalMapping(v13, v8, v9, v10, v11, v12, v56);
            v49 = sub_1837D6424(v30, *(a1 + 32));
            v16 = v49;
            if (v49)
            {
              sub_1837D6550(a1 + 88, v30, a3, a4, v13, 2);
            }

            break;
          case 2:
            v28 = objc_msgSend_decomposedStringWithCompatibilityMapping(v13, v8, v9, v10, v11, v12);
            v29 = *(a1 + 32);
            v30 = v28;
            v31 = v29;
            v63 = 0;
            v64 = &v63;
            v65 = 0x3032000000;
            v66 = sub_1837DAA60;
            v67 = sub_1837DAA70;
            v68 = 0;
            v37 = objc_msgSend_length(v30, v32, v33, v34, v35, v36);
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v60[0] = sub_1837DAA78;
            v60[1] = &unk_1E6DDE5E0;
            v38 = v31;
            v61 = v38;
            v62 = &v63;
            objc_msgSend_enumerateCodepointsInRange_usingBlock_(v30, v39, 0, v37, v59, v40);
            v41 = v64[5];

            _Block_object_dispose(&v63, 8);
            if (v41)
            {
              if (objc_msgSend_length(v41, v42, v43, v44, v45, v46))
              {
                sub_1837D6550(a1 + 88, v41, a3, a4, v13, 3);
                v16 = 1;
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }

            break;
          default:
            goto LABEL_35;
        }
      }

      else
      {
        if (v17 > 4)
        {
          if (v17 == 5)
          {
            sub_1837D6550(a1 + 88, &stru_1EF1C0318, a3, a4, v13, 4);
            ++*(*(*(a1 + 56) + 8) + 24);
            goto LABEL_29;
          }

          if (v17 != 6)
          {
            goto LABEL_35;
          }

          v47 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v8, v13, v10, v11, v12);
          v30 = v47;
          if (!v47 || !sub_1837D6424(v47, *(a1 + 32)))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v17 != 3)
          {
            v18 = objc_msgSend_controlCharacterSet(MEMORY[0x1E696AB08], v8, v9, v10, v11, v12);
            if (objc_msgSend_characterIsMember_(v18, v19, v57, v20, v21, v22))
            {

LABEL_28:
              sub_1837D6550(a1 + 88, &stru_1EF1C0318, a3, a4, v13, 5);
LABEL_29:
              v16 = 1;
              goto LABEL_35;
            }

            v50 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v23, v24, v25, v26, v27);
            IsMember = objc_msgSend_characterIsMember_(v50, v51, v57, v52, v53, v54);

            if (IsMember)
            {
              goto LABEL_28;
            }

LABEL_30:
            v16 = 0;
            goto LABEL_35;
          }

          v48 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v8, v13, v10, v11, v12);
          v30 = v48;
          if (!v48 || !sub_1837D6424(v48, *(a1 + 32)))
          {
LABEL_23:
            v16 = 0;
            goto LABEL_34;
          }
        }

        v16 = 1;
        sub_1837D6550(a1 + 88, v30, a3, a4, v13, 1);
      }

LABEL_34:

LABEL_35:
      ++v15;
      v14 = *(a1 + 64);
    }

    while (v15 < (*(a1 + 72) - v14) >> 2 && (v16 & 1) == 0);
  }
}

void sub_1837D6370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1837D6424(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v10 = objc_msgSend_length(v3, v5, v6, v7, v8, v9);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1837DAA18;
  v16[3] = &unk_1E6DDE5E0;
  v11 = v4;
  v17 = v11;
  v18 = &v19;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(v3, v12, 0, v10, v16, v13);
  v14 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v14;
}

void sub_1837D6520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837D6550(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a5;
  v13 = *(a1 + 8);
  v14 = v12;
  v15 = v11;
  v21 = *(v13 + 8);
  v20 = *(v13 + 16);
  v35 = v15;
  if (v21 >= v20)
  {
    v23 = *v13;
    v24 = v21 - *v13;
    v25 = 0xCCCCCCCCCCCCCCCDLL * (v24 >> 3) + 1;
    if (v25 > 0x666666666666666)
    {
      sub_18368964C();
    }

    v26 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v23) >> 3);
    if (2 * v26 > v25)
    {
      v25 = 2 * v26;
    }

    if (v26 >= 0x333333333333333)
    {
      v27 = 0x666666666666666;
    }

    else
    {
      v27 = v25;
    }

    if (v27)
    {
      if (v27 <= 0x666666666666666)
      {
        operator new();
      }

      sub_183688F00();
    }

    v28 = 8 * (v24 >> 3);
    *v28 = v14;
    *(v28 + 8) = v15;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4;
    *(v28 + 32) = a6;
    v22 = v28 + 40;
    v29 = v28 - v24;
    if (v23 != v21)
    {
      v30 = v23;
      v31 = v29;
      do
      {
        v32 = *v30;
        *v30 = 0;
        v30[1] = 0;
        *v31 = v32;
        v33 = *(v30 + 1);
        *(v31 + 32) = *(v30 + 8);
        *(v31 + 16) = v33;
        v30 += 5;
        v31 += 40;
      }

      while (v30 != v21);
      do
      {

        v34 = *v23;
        v23 += 5;
      }

      while (v23 != v21);
      v23 = *v13;
    }

    *v13 = v29;
    *(v13 + 8) = v22;
    *(v13 + 16) = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v21 = v14;
    v21[1] = v15;
    v21[2] = a3;
    v21[3] = a4;
    v22 = (v21 + 5);
    *(v21 + 8) = a6;
  }

  *(v13 + 8) = v22;
  objc_msgSend_appendString_(**a1, v16, v35, v17, v18, v19);
}

void *sub_1837D677C(void *result, uint64_t a2)
{
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  v3 = *(a2 + 64);
  v2 = *(a2 + 72);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  return result;
}

void sub_1837D67FC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1837D6818(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void **sub_1837D6830(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {

        v5 = *(v3 - 5);
        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1837D6898(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = a2[4];
    v5 = a2[5];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = a2[4];
    v5 = a2[5];
    if (v5)
    {
LABEL_5:
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(v4 + 144);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

LABEL_9:
      v12 = objc_msgSend_mutableCopy(v11, v6, v7, v8, v9, v10);
      objc_msgSend_removeCharactersInString_(v12, v13, @"①②③④⑤⑥⑦⑧⑨§", v14, v15, v16);
      memset(&v20[5], 0, 24);
      v17 = *a2;
      v18 = a2[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = *(v17 + 16);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      else
      {
        v19 = *(v17 + 16);
      }

      sub_1837D5888(v20, v19, v12);
    }
  }

  v11 = *(v4 + 144);
  goto LABEL_9;
}

void sub_1837D6BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D6C50(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = a3[4];
      v7 = a3[5];
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_7:
      v13 = *(v6 + 144);
      goto LABEL_8;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a3[4];
    v7 = a3[5];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = a3[4];
    v7 = a3[5];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v6 + 144);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_8:
  v14 = objc_msgSend_mutableCopy(v13, v8, v9, v10, v11, v12);
  objc_msgSend_removeCharactersInString_(v14, v15, @"①②③④⑤⑥⑦⑧⑨§", v16, v17, v18);
  v19[5] = 0;
  v20 = 0uLL;
  sub_1837D5888(v19, v4, v14);
}

void sub_1837D6E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D6ECC(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = a2[4];
    v5 = a2[5];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = a2[4];
    v5 = a2[5];
    if (v5)
    {
LABEL_5:
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v4 + 144);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

LABEL_9:
      v10 = 0uLL;
      v11 = 0;
      v7 = *a2;
      v8 = a2[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1837D5888(&v9, *(v7 + 16), v6);
    }
  }

  v6 = *(v4 + 144);
  goto LABEL_9;
}

void sub_1837D71C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D720C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = a3[4];
      v7 = a3[5];
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_7:
      v8 = *(v6 + 144);
      goto LABEL_8;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a3[4];
    v7 = a3[5];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = a3[4];
    v7 = a3[5];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = *(v6 + 144);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_8:
  v9[5] = 0;
  v10 = 0uLL;
  sub_1837D5888(v9, v4, v8);
}

void sub_1837D7408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D7450(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a1[6];
  v10 = *(v7 + 8);
  v8 = v7 + 8;
  v9 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v8;
  do
  {
    v12 = *(v9 + 28);
    v13 = v12 >= a2;
    v14 = v12 < a2;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *(v9 + 8 * v14);
  }

  while (v9);
  if (v11 == v8 || *(v11 + 28) > a2)
  {
LABEL_9:
    *(*(a1[5] + 8) + 24) = 0;
    *a5 = 1;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC98;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v21 = a1[4];
      v22 = sub_1837A4260(a2, v16, v17, v18, v19, v20);
      v23 = 138412802;
      v24 = v21;
      v25 = 1024;
      v26 = a2;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_DEBUG, "CHDiffusionPipelineKoPreprocessing::preprocessInputContext: string (%@) contains codepoint %u (%@) not supported by the recognizer", &v23, 0x1Cu);
    }
  }
}

void sub_1837D75C0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11 = objc_msgSend_precomposedStringWithCanonicalMapping(v5, v6, v7, v8, v9, v10);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = a2;
  v17 = objc_msgSend_length(v11, v12, v13, v14, v15, v16);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1837D76FC;
  v21[3] = &unk_1E6DDE5B8;
  v23 = v26;
  v24 = &qword_1EA84CFF0;
  v25 = a3;
  v18 = v11;
  v22 = v18;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(v18, v19, 0, v17, v21, v20);

  _Block_object_dispose(v26, 8);
}

void sub_1837D76BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837D76FC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v8 = sub_1837A4260(a2, a2, a3, a4, a5, a6);
  v14 = objc_msgSend_decomposedStringWithCanonicalMapping(v8, v9, v10, v11, v12, v13);

  v20 = a1[6];
  v23 = *(v20 + 8);
  v21 = v20 + 8;
  v22 = v23;
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = v21;
  do
  {
    v25 = *(v22 + 28);
    v26 = v25 >= v6;
    v27 = v25 < v6;
    if (v26)
    {
      v24 = v22;
    }

    v22 = *(v22 + 8 * v27);
  }

  while (v22);
  if (v24 == v21 || *(v24 + 28) > v6)
  {
LABEL_9:
    for (i = 0; i < objc_msgSend_length(v14, v15, v16, v17, v18, v19); ++i)
    {
      v29 = *(*(a1[5] + 8) + 24) + i;
      v30 = *(a1[7] + 8);
      if (!v30)
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v31 = v30;
          v32 = v30[4];
          if (v29 >= v32)
          {
            break;
          }

          v30 = *v31;
          if (!*v31)
          {
            goto LABEL_18;
          }
        }

        if (v32 >= v29)
        {
          break;
        }

        v30 = v31[1];
        if (!v30)
        {
          goto LABEL_18;
        }
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC98;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = a1[4];
      v35 = 138412802;
      v36 = v34;
      v37 = 1024;
      v38 = v6;
      v39 = 2112;
      v40 = v14;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_DEBUG, "CHDiffusionPipelineKoPreprocessing::preprocessInputContext: jamo string (%@) contains codepoint %u (%@) not supported by the recognizer", &v35, 0x1Cu);
    }
  }

  *(*(a1[5] + 8) + 24) += objc_msgSend_length(v14, v15, v16, v17, v18, v19);
}

void sub_1837D7984(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v8 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_ERROR, "postProcessTransliterationResultsKo: transliteratedString pointer is nil", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v9 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v9 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_FAULT, "postProcessTransliterationResultsKo: transliteratedString pointer is nil", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  if ((atomic_load_explicit(&qword_1EA84CFD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA84CFD0))
  {
    qword_1EA84D000 = 0;
    qword_1EA84CFF8 = 0;
    qword_1EA84CFF0 = &qword_1EA84CFF8;
    __cxa_atexit(sub_1837D8010, &qword_1EA84CFF0, &dword_18366B000);
    __cxa_guard_release(&qword_1EA84CFD0);
  }

  if (qword_1EA84CFD8 != -1)
  {
    dispatch_once(&qword_1EA84CFD8, &unk_1EF1BE2D0);
  }

  v68[0] = 0;
  v68[1] = 0;
  v67 = v68;
  v10 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, a3, a4, a5, a6);
  v63 = a1;
  v16 = *a2;
  if (*(a2 + 1) == *a2)
  {
  }

  else
  {
    v66 = v10;
    v17 = 0;
    v18 = 0;
    do
    {
      v23 = v16 + 40 * v18;
      v24 = *(v23 + 32);
      if (v24 == 2)
      {
        v25 = objc_msgSend_precomposedStringWithCanonicalMapping(*(v23 + 8), v11, v12, v13, v14, v15);
        v76 = 0;
        v77 = &v76;
        v78 = 0x2020000000;
        v79 = 1;
        v31 = objc_msgSend_length(v25, v26, v27, v28, v29, v30);
        *buf = MEMORY[0x1E69E9820];
        v70 = 3221225472;
        v71 = sub_1837D7450;
        v72 = &unk_1E6DDE590;
        v74 = &v76;
        v75 = &qword_1EA84CFF0;
        v32 = v25;
        v73 = v32;
        objc_msgSend_enumerateCodepointsInRange_usingBlock_(v32, v33, 0, v31, buf, v34);
        LOBYTE(v31) = *(v77 + 24);

        _Block_object_dispose(&v76, 8);
        if ((v31 & 1) == 0)
        {
          v35 = v68[0];
          if (!v68[0])
          {
LABEL_24:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v36 = v35;
              v37 = v35[4];
              if (v18 >= v37)
              {
                break;
              }

              v35 = *v36;
              if (!*v36)
              {
                goto LABEL_24;
              }
            }

            if (v37 >= v18)
            {
              break;
            }

            v35 = v36[1];
            if (!v35)
            {
              goto LABEL_24;
            }
          }
        }

        v24 = *(v23 + 32);
      }

      if (v24)
      {
        if (v17)
        {
          sub_1837D75C0(v66, MEMORY[0], &v67);
          objc_msgSend_setString_(v66, v38, &stru_1EF1C0318, v39, v40, v41);
          v17 = 0;
        }
      }

      else
      {
        v42 = v17;
        v43 = v17 >> 3;
        if (((v17 >> 3) + 1) >> 61)
        {
          sub_18368964C();
        }

        if (v17 >> 3 != -1)
        {
          if (!(((v17 >> 3) + 1) >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        *(8 * v43) = v18;
        v17 = 8 * v43 + 8;
        memcpy(0, 0, v42);
        objc_msgSend_appendString_(v66, v19, *(v23 + 8), v20, v21, v22, v63);
      }

      ++v18;
      v16 = *a2;
    }

    while (v18 < 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 3));
    if (v17)
    {
      sub_1837D75C0(v66, MEMORY[0], &v67);

      operator delete(0);
    }

    else
    {
    }
  }

  v54 = objc_msgSend_string(MEMORY[0x1E696AD60], v44, v45, v46, v47, v48, v63);
  v55 = *a2;
  if (*(a2 + 1) != *a2)
  {
    v56 = 0;
    do
    {
      v57 = v55 + 40 * v56;
      v58 = v68[0];
      if (v68[0])
      {
        v59 = v68;
        do
        {
          if (v58[4] >= v56)
          {
            v59 = v58;
          }

          v58 = v58[v58[4] < v56];
        }

        while (v58);
        if (v59 != v68 && v56 >= v59[4])
        {
          v60 = *(v57 + 8);
          *(v57 + 8) = &stru_1EF1C0318;

          *(v57 + 32) = 4;
          ++*a3;
        }
      }

      objc_msgSend_appendString_(v54, v49, *(v57 + 8), v51, v52, v53);
      ++v56;
      v55 = *a2;
    }

    while (v56 < 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 3));
  }

  v61 = objc_msgSend_copy(v54, v49, v50, v51, v52, v53);

  v62 = v61;
  *v64 = v61;
  sub_18368D56C(&v67, v68[0]);
}

void sub_1837D7F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  operator delete(v16);
  sub_18368D56C(&a14, a15);
  _Unwind_Resume(a1);
}

void sub_1837D803C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_UTF8String(@"ctc_ko.codemap", a2, a3, a4, a5, a6);
  if (sub_1837A3290(v6, 0, __s))
  {
    v7 = strlen(__s);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_183688FF0();
    }

    v11 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v28 = v7;
    if (v7)
    {
      memcpy(buf, __s, v7);
    }

    buf[v11] = 0;
    if (v28 >= 0)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v8, buf, 4, v9, v10);
    }

    else
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v8, *buf, 4, v9, v10);
    }
    v14 = ;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC98;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *__dst = 138412290;
      *&__dst[4] = v14;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_DEBUG, "Found codemap from bundle, with path %@", __dst, 0xCu);
    }

    v16 = v14;
    v21 = objc_msgSend_cStringUsingEncoding_(v14, v17, 4, v18, v19, v20);
    v22 = strlen(v21);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_183688FF0();
    }

    v23 = v22;
    if (v22 >= 0x17)
    {
      operator new();
    }

    v26 = v22;
    if (v22)
    {
      memmove(__dst, v21, v22);
    }

    __dst[v23] = 0;
    v13 = sub_1838B88A8(__dst);
    if (v26 < 0)
    {
      operator delete(*__dst);
    }

    if (v28 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC98;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"ctc_ko.codemap";
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "Failed to find codemap from asset name %@ in the bundle", buf, 0xCu);
    }

    v13 = 0;
  }

  v24 = *(v13 + 24);
  v30 = 0;
  v31 = 0;
  *__s = &v30;
  if (v24)
  {
    operator new();
  }

  sub_1836E1928(qword_1EA84CFF8);
  qword_1EA84CFF0 = *__s;
  qword_1EA84CFF8 = v30;
  qword_1EA84D000 = v31;
  if (v31)
  {
    v30[2] = &qword_1EA84CFF8;
    *__s = &v30;
    v30 = 0;
    v31 = 0;
    sub_1836E1928(0);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    qword_1EA84CFF0 = &qword_1EA84CFF8;
    sub_1836E1928(v30);
    if (!v13)
    {
      return;
    }
  }

  if (*v13)
  {
    munmap(*v13, *(v13 + 8));
  }

  MEMORY[0x1865E5EC0](v13, 0x1010C40A749B91FLL);
}

void sub_1837D8510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_183686078(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1837D856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  sub_1836E1928(a19);
  sub_1837DAB84(&a10);
  _Unwind_Resume(a1);
}

void sub_1837D8588(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = a2[4];
    v5 = a2[5];
    if (v5)
    {
LABEL_5:
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v4 + 144);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      __p[0] = 0;
      __p[1] = 0;
      v13 = 0;
      v11 = 0;
      v7 = *a2;
      v8 = a2[1];
      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = a2[4];
    v5 = a2[5];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v6 = *(v4 + 144);
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  v11 = 0;
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
LABEL_8:
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *(v7 + 16);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

LABEL_13:
    sub_1837D5888(&v10, v9, v6);
  }

LABEL_12:
  v9 = *(v7 + 16);
  goto LABEL_13;
}

void sub_1837D8914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D8930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D8950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D8970(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = a3[4];
      v7 = a3[5];
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_7:
      v8 = *(v6 + 144);
      goto LABEL_8;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a3[4];
    v7 = a3[5];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = a3[4];
    v7 = a3[5];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = *(v6 + 144);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_8:
  v9[6] = 0;
  v10 = 0uLL;
  sub_1837D5888(v9, v4, v8);
}

void sub_1837D8B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D8BFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 1);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = *(a1 + 32);
  v10 = *a2;
  v11 = *(a2 + 1);
  v31[0] = *a2;
  v31[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = objc_msgSend_supportedCharactersUsingDefaultStyleOnly_(v9, a2, *(v10 + 89) & *(v10 + 88) & 1, a4, a5, a6);
  v18 = objc_msgSend_allObjects(v12, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_componentsJoinedByString_(v18, v19, &stru_1EF1C0318, v20, v21, v22);

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v28 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v24, v23, v25, v26, v27);
  v32 = 0uLL;
  v33 = 0;
  v29 = *a2;
  v30 = *(a2 + 1);
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1837D5888(v31, *(v29 + 16), v28);
}

void sub_1837D8F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D8FE4(uint64_t a1, void *a2, uint64_t *a3)
{
  v9 = a2;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  v11 = *(a1 + 32);
  v12 = *a3;
  v13 = a3[1];
  v31[0] = *a3;
  v31[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = objc_msgSend_supportedCharactersUsingDefaultStyleOnly_(v11, v5, *(v12 + 89) & *(v12 + 88) & 1, v6, v7, v8);
  v20 = objc_msgSend_allObjects(v14, v15, v16, v17, v18, v19);
  v25 = objc_msgSend_componentsJoinedByString_(v20, v21, &stru_1EF1C0318, v22, v23, v24);

  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v30 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v26, v25, v27, v28, v29);
  v31[5] = 0;
  v32 = 0uLL;
  sub_1837D5888(v31, v9, v30);
}

void sub_1837D9228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_1837D6830(va);
  _Unwind_Resume(a1);
}

void sub_1837D92B8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    if (v3 == a2)
    {
      v7 = 0;
      v8 = *a1;
      a2[3] = v3[3];
      if ((v2 - v3) >= 0x21)
      {
LABEL_9:
        v10 = 1;
        v11 = *a2;
        while (1)
        {
          v12 = v7 - v11;
          if (v7 - v11 == v8[4 * v10 + 1] - v8[4 * v10])
          {
            goto LABEL_20;
          }

          if (qword_1EA84DC48 == -1)
          {
            break;
          }

          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v13 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

LABEL_15:

          v11 = *a2;
          v7 = a2[1];
          v8 = *a1;
          v12 = *(*a1 + 32 * v10 + 8) - *(*a1 + 32 * v10);
          if (v7 - *a2 != v12)
          {
            if (qword_1EA84DC48 == -1)
            {
              v14 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_18;
              }
            }

            else
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              v14 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
              {
LABEL_18:
                *v21 = 0;
                _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "Not consistent metadata length", v21, 2u);
              }
            }

            v11 = *a2;
            v7 = a2[1];
            v8 = *a1;
            v12 = v7 - *a2;
          }

LABEL_20:
          if (v7 != v11)
          {
            v15 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
            v16 = a2[3];
            if (v15 <= 1)
            {
              v15 = 1;
            }

            v17 = (v8[4 * v10] + 32);
            v18 = (v11 + 32);
            do
            {
              v20 = *v17;
              v17 += 10;
              v19 = v20;
              if (*v18 > v20)
              {
                if (*v18 == 4)
                {
                  a2[3] = --v16;
                }

                *v18 = v19;
              }

              v18 += 10;
              --v15;
            }

            while (v15);
          }

          if (++v10 >= ((*(a1 + 8) - v8) >> 5))
          {
            return;
          }
        }

        v13 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

LABEL_14:
        *buf = 0;
        _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "Not consistent metadata length", buf, 2u);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3[1];
      if (v6 != *v3)
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v6 - *v3) >> 3) < 0x666666666666667)
        {
          operator new();
        }

        sub_18368964C();
      }

      v7 = 0;
      v8 = *a1;
      v9 = *(a1 + 8);
      a2[3] = v3[3];
      if ((v9 - v8) >= 0x21)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1837D95F0(uint64_t a1)
{
  *a1 = &unk_1EF1BE450;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1837D96C8(uint64_t a1)
{
  *a1 = &unk_1EF1BE450;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

void *sub_1837D97C0(void *a1)
{
  *a1 = &unk_1EF1BE450;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1837D9890(void *a1)
{
  *a1 = &unk_1EF1BE450;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

void *sub_1837D9980(void *a1)
{
  *a1 = &unk_1EF1BE450;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1837D9A50(void *a1)
{
  *a1 = &unk_1EF1BE450;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

void *sub_1837D9B40(void *a1)
{
  *a1 = &unk_1EF1BE450;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1837D9C10(void *a1)
{
  *a1 = &unk_1EF1BE450;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

void sub_1837D9D00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v376[97] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF90];
  v375[0] = @"✽";
  v375[1] = @"✱";
  v376[0] = @"*";
  v376[1] = @"*";
  v375[2] = @"✷";
  v375[3] = @"✻";
  v376[2] = @"*";
  v376[3] = @"*";
  v375[4] = @"✼";
  v375[5] = @"⁎";
  v376[4] = @"*";
  v376[5] = @"*";
  v375[6] = @"❄";
  v375[7] = @"✴";
  v376[6] = @"*";
  v376[7] = @"*";
  v375[8] = @"❈";
  v375[9] = @"꘎";
  v376[8] = @"*";
  v376[9] = @"*";
  v375[10] = @"⁕";
  v375[11] = @"✹";
  v376[10] = @"*";
  v376[11] = @"*";
  v375[12] = @"∗";
  v375[13] = @"✲";
  v376[12] = @"*";
  v376[13] = @"*";
  v375[14] = @"✳";
  v375[15] = @"❋";
  v376[14] = @"*";
  v376[15] = @"*";
  v375[16] = @"✸";
  v375[17] = @"﹡";
  v376[16] = @"*";
  v376[17] = @"*";
  v375[18] = @"⚹";
  v375[19] = @"❊";
  v376[18] = @"*";
  v376[19] = @"*";
  v375[20] = @"＂";
  v375[21] = @"“";
  v376[20] = @"";
  v376[21] = @"";
  v375[22] = @"”";
  v375[23] = @"❝";
  v376[22] = @"";
  v376[23] = @"";
  v375[24] = @"❞";
  v375[25] = @"＇";
  v376[24] = @"";
  v376[25] = @"'";
  v375[26] = @"‘";
  v375[27] = @"’";
  v376[26] = @"'";
  v376[27] = @"'";
  v375[28] = @"′";
  v375[29] = @"ʼ";
  v376[28] = @"'";
  v376[29] = @"'";
  v375[30] = @"❛";
  v375[31] = @"❜";
  v376[30] = @"'";
  v376[31] = @"'";
  v375[32] = @"─";
  v375[33] = @"ー";
  v376[32] = @"-";
  v376[33] = @"-";
  v375[34] = @"━";
  v375[35] = @"‒";
  v376[34] = @"-";
  v376[35] = @"-";
  v375[36] = @"⁃";
  v375[37] = @"–";
  v376[36] = @"-";
  v376[37] = @"-";
  v375[38] = @"−";
  v375[39] = @"‑";
  v376[38] = @"-";
  v376[39] = @"-";
  v375[40] = @"‐";
  v375[41] = @"⸺";
  v376[40] = @"-";
  v376[41] = @"-";
  v375[42] = @"⸻";
  v375[43] = @"│";
  v376[42] = @"-";
  v376[43] = @"|";
  v375[44] = @"ᵒ";
  v375[45] = @"➔";
  v376[44] = @"º";
  v376[45] = @"→";
  v375[46] = @"⇒";
  v375[47] = @"⟶";
  v376[46] = @"→";
  v376[47] = @"→";
  v375[48] = @"➝";
  v375[49] = @"⇾";
  v376[48] = @"→";
  v376[49] = @"→";
  v375[50] = @"➞";
  v375[51] = @"✔";
  v376[50] = @"→";
  v376[51] = @"✓";
  v375[52] = @"￥";
  v375[53] = @"（";
  v376[52] = @"¥";
  v376[53] = CFSTR("(");
  v375[54] = @"）";
  v375[55] = @"：";
  v376[54] = @"");
  v376[55] = @":";
  v375[56] = @"；";
  v375[57] = @"？";
  v376[56] = @";";
  v376[57] = @"?";
  v375[58] = @"，";
  v375[59] = @"、";
  v376[58] = @",";
  v376[59] = @",";
  v375[60] = @"．";
  v375[61] = @"。";
  v376[60] = @".";
  v376[61] = @".";
  v375[62] = @"％";
  v375[63] = @"／";
  v376[62] = @"%";
  v376[63] = @"/";
  v375[64] = @"＊";
  v376[64] = @"*";
  v375[65] = @"［";
  v376[65] = @"[";
  v375[66] = @"］";
  v376[66] = @"]";
  v375[67] = @"！";
  v376[67] = @"!";
  v375[68] = @"￡";
  v376[68] = @"£";
  v375[69] = @"⇐";
  v376[69] = @"←";
  v376[70] = @"'";
  v375[71] = @"｀";
  v376[71] = @"'";
  v375[72] = @"―";
  v376[72] = @"-";
  v375[73] = @"—";
  v376[73] = @"-";
  v375[74] = @"″";
  v376[74] = @"";
  v375[75] = @"…";
  v376[75] = @"...";
  v375[76] = @"⋅";
  v376[76] = @"·";
  v375[77] = @"„";
  v376[77] = @"";
  v375[78] = @"～";
  v376[78] = @"~";
  v374 = sub_1837A4260(160, a2, a3, a4, a5, a6);
  v375[79] = v374;
  v376[79] = @" ";
  v373 = sub_1837A4260(0x2000, v7, v8, v9, v10, v11);
  v375[80] = v373;
  v376[80] = @" ";
  v372 = sub_1837A4260(8193, v12, v13, v14, v15, v16);
  v375[81] = v372;
  v376[81] = @" ";
  v371 = sub_1837A4260(8194, v17, v18, v19, v20, v21);
  v375[82] = v371;
  v376[82] = @" ";
  v370 = sub_1837A4260(8195, v22, v23, v24, v25, v26);
  v375[83] = v370;
  v376[83] = @" ";
  v369 = sub_1837A4260(8196, v27, v28, v29, v30, v31);
  v375[84] = v369;
  v376[84] = @" ";
  v368 = sub_1837A4260(8197, v32, v33, v34, v35, v36);
  v375[85] = v368;
  v376[85] = @" ";
  v367 = sub_1837A4260(8198, v37, v38, v39, v40, v41);
  v375[86] = v367;
  v376[86] = @" ";
  v366 = sub_1837A4260(8199, v42, v43, v44, v45, v46);
  v375[87] = v366;
  v376[87] = @" ";
  v365 = sub_1837A4260(8200, v47, v48, v49, v50, v51);
  v375[88] = v365;
  v376[88] = @" ";
  v57 = sub_1837A4260(8201, v52, v53, v54, v55, v56);
  v375[89] = v57;
  v376[89] = @" ";
  v63 = sub_1837A4260(8202, v58, v59, v60, v61, v62);
  v375[90] = v63;
  v376[90] = @" ";
  v69 = sub_1837A4260(8203, v64, v65, v66, v67, v68);
  v375[91] = v69;
  v376[91] = @" ";
  v75 = sub_1837A4260(8239, v70, v71, v72, v73, v74);
  v375[92] = v75;
  v376[92] = @" ";
  v81 = sub_1837A4260(8287, v76, v77, v78, v79, v80);
  v375[93] = v81;
  v376[93] = @" ";
  v87 = sub_1837A4260(12288, v82, v83, v84, v85, v86);
  v375[94] = v87;
  v376[94] = @" ";
  v93 = sub_1837A4260(1643, v88, v89, v90, v91, v92);
  v375[95] = v93;
  v376[95] = @",";
  v99 = sub_1837A4260(1644, v94, v95, v96, v97, v98);
  v375[96] = v99;
  v376[96] = @"'";
  v102 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v100, v376, v375, 97, v101);
  v107 = objc_msgSend_dictionaryWithDictionary_(v6, v103, v102, v104, v105, v106);

  CodepointInString = objc_msgSend_firstCodepointInString(@"0", v108, v109, v110, v111, v112);
  v119 = sub_1837A4260(CodepointInString, v114, v115, v116, v117, v118);
  v125 = sub_1837A4260(65296, v120, v121, v122, v123, v124);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v126, v119, v125, v127, v128);

  v134 = objc_msgSend_firstCodepointInString(@"0", v129, v130, v131, v132, v133);
  v140 = sub_1837A4260(v134 + 1, v135, v136, v137, v138, v139);
  v146 = sub_1837A4260(65297, v141, v142, v143, v144, v145);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v147, v140, v146, v148, v149);

  v155 = objc_msgSend_firstCodepointInString(@"0", v150, v151, v152, v153, v154);
  v161 = sub_1837A4260(v155 + 2, v156, v157, v158, v159, v160);
  v167 = sub_1837A4260(65298, v162, v163, v164, v165, v166);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v168, v161, v167, v169, v170);

  v176 = objc_msgSend_firstCodepointInString(@"0", v171, v172, v173, v174, v175);
  v182 = sub_1837A4260(v176 + 3, v177, v178, v179, v180, v181);
  v188 = sub_1837A4260(65299, v183, v184, v185, v186, v187);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v189, v182, v188, v190, v191);

  v197 = objc_msgSend_firstCodepointInString(@"0", v192, v193, v194, v195, v196);
  v203 = sub_1837A4260(v197 + 4, v198, v199, v200, v201, v202);
  v209 = sub_1837A4260(65300, v204, v205, v206, v207, v208);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v210, v203, v209, v211, v212);

  v218 = objc_msgSend_firstCodepointInString(@"0", v213, v214, v215, v216, v217);
  v224 = sub_1837A4260(v218 + 5, v219, v220, v221, v222, v223);
  v230 = sub_1837A4260(65301, v225, v226, v227, v228, v229);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v231, v224, v230, v232, v233);

  v239 = objc_msgSend_firstCodepointInString(@"0", v234, v235, v236, v237, v238);
  v245 = sub_1837A4260(v239 + 6, v240, v241, v242, v243, v244);
  v251 = sub_1837A4260(65302, v246, v247, v248, v249, v250);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v252, v245, v251, v253, v254);

  v260 = objc_msgSend_firstCodepointInString(@"0", v255, v256, v257, v258, v259);
  v266 = sub_1837A4260(v260 + 7, v261, v262, v263, v264, v265);
  v272 = sub_1837A4260(65303, v267, v268, v269, v270, v271);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v273, v266, v272, v274, v275);

  v281 = objc_msgSend_firstCodepointInString(@"0", v276, v277, v278, v279, v280);
  v287 = sub_1837A4260(v281 + 8, v282, v283, v284, v285, v286);
  v293 = sub_1837A4260(65304, v288, v289, v290, v291, v292);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v294, v287, v293, v295, v296);

  v302 = objc_msgSend_firstCodepointInString(@"0", v297, v298, v299, v300, v301);
  v308 = sub_1837A4260(v302 + 9, v303, v304, v305, v306, v307);
  v314 = sub_1837A4260(65305, v309, v310, v311, v312, v313);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v315, v308, v314, v316, v317);

  v323 = 0;
  v324 = 26;
  v325 = 65345;
  do
  {
    v326 = objc_msgSend_firstCodepointInString(@"A", v318, v319, v320, v321, v322);
    v332 = sub_1837A4260(v323 + v326, v327, v328, v329, v330, v331);
    v338 = sub_1837A4260(v325 - 32, v333, v334, v335, v336, v337);
    objc_msgSend_setObject_forKeyedSubscript_(v107, v339, v332, v338, v340, v341);

    v347 = objc_msgSend_firstCodepointInString(@"a", v342, v343, v344, v345, v346);
    v353 = sub_1837A4260(v323 + v347, v348, v349, v350, v351, v352);
    v359 = sub_1837A4260(v325, v354, v355, v356, v357, v358);
    objc_msgSend_setObject_forKeyedSubscript_(v107, v360, v353, v359, v361, v362);

    ++v323;
    ++v325;
    --v324;
  }

  while (v324);
  v363 = objc_msgSend_copy(v107, v318, v319, v320, v321, v322);
  v364 = qword_1EA84CFE0;
  qword_1EA84CFE0 = v363;
}

uint64_t sub_1837DAA18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  result = objc_msgSend_longCharacterIsMember_(*(a1 + 32), a2, a2, a4, a5, a6);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }

  return result;
}

uint64_t sub_1837DAA60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1837DAA78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v8 = a2;
  if (objc_msgSend_longCharacterIsMember_(*(a1 + 32), a2, a2, a4, a5, a6))
  {
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    if (!v16)
    {
      *(v15 + 40) = &stru_1EF1C0318;
      v16 = *(*(*(a1 + 40) + 8) + 40);
    }

    v24 = sub_1837A4260(v8, v10, v11, v12, v13, v14);
    v21 = objc_msgSend_stringByAppendingString_(v16, v17, v24, v18, v19, v20);
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  else if (!a3)
  {
    *a5 = 1;
  }
}

void *sub_1837DAB84(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      munmap(*v1, *(v1 + 8));
    }

    MEMORY[0x1865E5EC0](v1, 0x1010C40A749B91FLL);
    return v2;
  }

  return result;
}

void sub_1837DABE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    sub_18368964C();
  }
}

void ***sub_1837DACD4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {

          v6 = *(v4 - 5);
          v4 -= 5;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

unint64_t sub_1837DB064(uint64_t a1, uint64_t a2)
{
  v4 = **a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v60 = v5;
  v61 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v8 = v5[3];
  v7 = v5[4];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v9 = *(a1 + 40);
  __p = *(a1 + 32);
  v58 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_18384AA0C(&v62, &v60);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v11 = v60;
    v10 = v61;
    if (v60 != v61)
    {
LABEL_14:
      v12 = v10 - v11 - 8;
      if (v12 >= 0x18)
      {
        v15 = (v12 >> 3) + 1;
        v14 = &v11->i64[v15 & 0x3FFFFFFFFFFFFFFCLL];
        v16 = v11 + 1;
        v17 = 0uLL;
        v18 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        v19 = 0uLL;
        do
        {
          v17 = vaddq_s64(v16[-1], v17);
          v19 = vaddq_s64(*v16, v19);
          v16 += 2;
          v18 -= 4;
        }

        while (v18);
        v13 = vaddvq_s64(vaddq_s64(v19, v17));
        if (v15 == (v15 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v21 = *(a1 + 16);
          v22 = *(a1 + 24);
          v55 = v21;
          v56 = v22;
          if (!v22)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v13 = 0;
        v14 = v11;
      }

      do
      {
        v20 = *v14++;
        v13 += v20;
      }

      while (v14 != v10);
      goto LABEL_20;
    }
  }

  else
  {
    v11 = v60;
    v10 = v61;
    if (v60 != v61)
    {
      goto LABEL_14;
    }
  }

  v13 = 0;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v55 = v21;
  v56 = v22;
  if (v22)
  {
LABEL_21:
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_22:
  __p = 0;
  v58 = 0;
  v59 = 0;
  v24 = v21->i64[0];
  v23 = v21->i64[1];
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_18384AA0C(&__p, &v55);
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    v26 = v55;
    v27 = v56;
    if (v55 != v56)
    {
LABEL_33:
      v28 = v27 - v26 - 8;
      if (v28 >= 0x18)
      {
        v31 = (v28 >> 3) + 1;
        v30 = &v26->i64[v31 & 0x3FFFFFFFFFFFFFFCLL];
        v32 = v26 + 1;
        v33 = 0uLL;
        v34 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        v35 = 0uLL;
        do
        {
          v33 = vaddq_s64(v32[-1], v33);
          v35 = vaddq_s64(*v32, v35);
          v32 += 2;
          v34 -= 4;
        }

        while (v34);
        v29 = vaddvq_s64(vaddq_s64(v35, v33));
        if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_39:
          if (!v26)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v29 = 0;
        v30 = v26;
      }

      do
      {
        v36 = *v30++;
        v29 += v36;
      }

      while (v30 != v27);
      goto LABEL_39;
    }
  }

  else
  {
    v26 = v55;
    v27 = v56;
    if (v55 != v56)
    {
      goto LABEL_33;
    }
  }

  v29 = 0;
  if (v26)
  {
LABEL_40:
    operator delete(v26);
  }

LABEL_41:
  if (__p)
  {
    operator delete(__p);
  }

  if (v60)
  {
    operator delete(v60);
  }

  if (v62)
  {
    operator delete(v62);
  }

  if (v13 <= v29)
  {
    v37 = v29;
  }

  else
  {
    v37 = v13;
  }

  v38 = *(a1 + 16);
  v39 = *(a1 + 24);
  v62 = v38;
  v63 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v41 = v38[3];
  v40 = v38[4];
  if (v40 != v41)
  {
    if (((v40 - v41) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v42 = *(a1 + 16);
  v43 = *(a1 + 24);
  v62 = v42;
  v63 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v45 = *v42;
  v44 = v42[1];
  v46 = v44 - v45;
  if (v44 != v45)
  {
    if ((v46 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  if (v46 >> 3)
  {
    v47 = v46 >> 3;
  }

  else
  {
    v47 = 0;
  }

  v49 = *a2;
  v48 = *(a2 + 8);
  if (v48 != *a2)
  {
    for (i = 0; i < (v48 - v49) >> 3; ++i)
    {
      v4 = v49[i];
      if (v4 >= v47)
      {
        v51 = *(a1 + 32);
        v52 = *(a1 + 40);
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          v53 = *(v51 + 184) * v4;
          if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v52->__on_zero_shared)(v52);
            std::__shared_weak_count::__release_weak(v52);
          }

          if (v53 >= v37)
          {
            return v4;
          }
        }

        else if (*(v51 + 184) * v4 >= v37)
        {
          return v4;
        }

        v49 = *a2;
        v48 = *(a2 + 8);
      }
    }
  }

  return v4;
}

void sub_1837DB66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_18369D8F8(&a9);
  if (__p)
  {
    operator delete(__p);
    v21 = a17;
    if (!a17)
    {
LABEL_3:
      v22 = a20;
      if (!a20)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v22);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v21 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  v22 = a20;
  if (!a20)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1837DB70C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *v3;
  v5 = v3[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1837DBBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, char *a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_18368922C(&a14, a15);
  v43 = a19;
  sub_18369D8F8(&a17);

  if (v43)
  {
    a20 = v43;
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1837DBCF8(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *v9;
  v11 = v9[1];
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v13 > v8)
    {
LABEL_17:
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v17 = *v14;
      v16 = v14[1];
      if (v16 != v17)
      {
        if (((v16 - v17) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      if (!v15)
      {
        return;
      }

LABEL_31:
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      return;
    }
  }

  else if (v13 > v8)
  {
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v20 = *(v18 + 24);
  v19 = *(v18 + 32);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v15)
  {
    goto LABEL_31;
  }
}

void sub_1837DC3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, char *a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_18368922C(&a14, a15);
  v43 = a19;
  sub_18369D8F8(&a17);

  if (v43)
  {
    a20 = v43;
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1837DC4B8(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *v9;
  v11 = v9[1];
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v13 > v8)
    {
LABEL_17:
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v17 = *v14;
      v16 = v14[1];
      if (v16 != v17)
      {
        if (((v16 - v17) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      if (!v15)
      {
        return;
      }

LABEL_31:
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      return;
    }
  }

  else if (v13 > v8)
  {
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v20 = *(v18 + 24);
  v19 = *(v18 + 32);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v15)
  {
    goto LABEL_31;
  }
}

void sub_1837DC7AC(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v2 = *(a2 + 40);
  v43 = v3;
  v44 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v46 = 12;
  strcpy(v45, "input_length");
  HIBYTE(v48[2]) = 18;
  v47 = 10;
  strcpy(v48, "style_input_length");
  v48[3] = 10;
  HIBYTE(v49[2]) = 21;
  strcpy(v49, "model_features_length");
  v49[3] = 960;
  v51 = 16;
  strcpy(__p, "ids_input_length");
  v52 = 480;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  sub_1837DE228(&v41, v42, v45);
  sub_1837DE228(&v41, v42, v48);
  sub_1837DE228(&v41, v42, v49);
  sub_1837DE228(&v41, v42, __p);
  if (v51 < 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(v49[2]) & 0x80000000) == 0)
    {
LABEL_5:
      if ((SHIBYTE(v48[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_19:
      operator delete(v48[0]);
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v49[2]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v49[0]);
  if (SHIBYTE(v48[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  operator delete(v45[0]);
LABEL_7:
  v39 = 0;
  v40 = 0;
  v38 = &v39;
  v4 = v41;
  if (v41 != v42)
  {
    do
    {
      sub_1837DE228(&v38, &v39, v4 + 4);
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v42);
  }

  v6 = *(v3 + 80);
  v5 = (v3 + 80);
  sub_18368922C((v5 - 1), v6);
  v7 = v39;
  *(v5 - 1) = v38;
  *v5 = v7;
  v8 = v40;
  v5[1] = v40;
  if (v8)
  {
    *(v7 + 16) = v5;
    v38 = &v39;
    v39 = 0;
    v40 = 0;
    v7 = 0;
  }

  else
  {
    *(v5 - 1) = v5;
  }

  sub_18368922C(&v38, v7);
  v12 = v43;
  if ((objc_msgSend_isEqualToString_(*(v43 + 112), v13, @"main", v14, v15, v16) & 1) == 0)
  {
    v17 = *(v12 + 112);
    *(v12 + 112) = @"main";

    v18 = *(v12 + 152);
    if (v18)
    {
      v23 = v18;
      v24 = 0;
    }

    else
    {
      v37 = 0;
      v23 = objc_msgSend_createProgramLibraryWithError_(CHStyleEncoderModelZHJAE5ML, v19, &v37, v20, v21, v22);
      v24 = v37;
      objc_storeStrong((v12 + 152), v23);
    }

    v25 = [CHStyleEncoderModelZHJAE5ML alloc];
    v28 = objc_msgSend_initWithProgramLibrary_functionName_error_(v25, v26, v23, @"main", 0, v27);
    v34 = objc_msgSend_createExecutionContext(v28, v29, v30, v31, v32, v33);
    v35 = *(v12 + 104);
    *(v12 + 104) = v34;
  }

  sub_18368922C(&v41, v42[0]);
  v36 = v44;
  if (v44)
  {
    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }
  }
}

void sub_1837DCB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char *a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_18368922C(&a13, a14);
  sub_18369D8F8(&a16);
  _Unwind_Resume(a1);
}

void sub_1837DCC38(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *v3;
  v5 = v3[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1837DCD58(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v2 = *(a2 + 40);
  v43 = v3;
  v44 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v46 = 12;
  strcpy(v45, "input_length");
  HIBYTE(v48[2]) = 18;
  v47 = 10;
  strcpy(v48, "style_input_length");
  v48[3] = 10;
  HIBYTE(v49[2]) = 21;
  strcpy(v49, "model_features_length");
  v49[3] = 960;
  v51 = 16;
  strcpy(__p, "ids_input_length");
  v52 = 480;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  sub_1837DE228(&v41, v42, v45);
  sub_1837DE228(&v41, v42, v48);
  sub_1837DE228(&v41, v42, v49);
  sub_1837DE228(&v41, v42, __p);
  if (v51 < 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(v49[2]) & 0x80000000) == 0)
    {
LABEL_5:
      if ((SHIBYTE(v48[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_19:
      operator delete(v48[0]);
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v49[2]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v49[0]);
  if (SHIBYTE(v48[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  operator delete(v45[0]);
LABEL_7:
  v39 = 0;
  v40 = 0;
  v38 = &v39;
  v4 = v41;
  if (v41 != v42)
  {
    do
    {
      sub_1837DE228(&v38, &v39, v4 + 4);
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v42);
  }

  v6 = *(v3 + 80);
  v5 = (v3 + 80);
  sub_18368922C((v5 - 1), v6);
  v7 = v39;
  *(v5 - 1) = v38;
  *v5 = v7;
  v8 = v40;
  v5[1] = v40;
  if (v8)
  {
    *(v7 + 16) = v5;
    v38 = &v39;
    v39 = 0;
    v40 = 0;
    v7 = 0;
  }

  else
  {
    *(v5 - 1) = v5;
  }

  sub_18368922C(&v38, v7);
  v12 = v43;
  if ((objc_msgSend_isEqualToString_(*(v43 + 112), v13, @"main", v14, v15, v16) & 1) == 0)
  {
    v17 = *(v12 + 112);
    *(v12 + 112) = @"main";

    v18 = *(v12 + 152);
    if (v18)
    {
      v23 = v18;
      v24 = 0;
    }

    else
    {
      v37 = 0;
      v23 = objc_msgSend_createProgramLibraryWithError_(CHDiffusionModelZHJAE5ML, v19, &v37, v20, v21, v22);
      v24 = v37;
      objc_storeStrong((v12 + 152), v23);
    }

    v25 = [CHDiffusionModelZHJAE5ML alloc];
    v28 = objc_msgSend_initWithProgramLibrary_functionName_error_(v25, v26, v23, @"main", 0, v27);
    v34 = objc_msgSend_createExecutionContext(v28, v29, v30, v31, v32, v33);
    v35 = *(v12 + 104);
    *(v12 + 104) = v34;
  }

  sub_18368922C(&v41, v42[0]);
  v36 = v44;
  if (v44)
  {
    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }
  }
}

void sub_1837DD0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char *a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_18368922C(&a13, a14);
  sub_18369D8F8(&a16);
  _Unwind_Resume(a1);
}

void sub_1837DD1E4(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *v9;
  v11 = v9[1];
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v13 > v8)
    {
LABEL_17:
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v17 = *v14;
      v16 = v14[1];
      if (v16 != v17)
      {
        if (((v16 - v17) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      if (!v15)
      {
        return;
      }

LABEL_31:
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      return;
    }
  }

  else if (v13 > v8)
  {
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v20 = *(v18 + 24);
  v19 = *(v18 + 32);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v15)
  {
    goto LABEL_31;
  }
}

void sub_1837DD89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, char *a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_18368922C(&a14, a15);
  v43 = a19;
  sub_18369D8F8(&a17);

  if (v43)
  {
    a20 = v43;
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1837DD9AC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *v9;
  v11 = v9[1];
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v13 > v8)
    {
LABEL_17:
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v17 = *v14;
      v16 = v14[1];
      if (v16 != v17)
      {
        if (((v16 - v17) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      if (!v15)
      {
        return;
      }

LABEL_31:
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      return;
    }
  }

  else if (v13 > v8)
  {
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v20 = *(v18 + 24);
  v19 = *(v18 + 32);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v15)
  {
    goto LABEL_31;
  }
}

void sub_1837DE064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, char *a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_18368922C(&a14, a15);
  v43 = a19;
  sub_18369D8F8(&a17);

  if (v43)
  {
    a20 = v43;
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1837DE228(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_1837DE33C(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_1837DE328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1837DE33C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
LABEL_53:
      if (v19)
      {
        *a3 = v21;
        return v21 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v26 = a2;
      do
      {
        v21 = v26[2];
        v27 = *v21 == v26;
        v26 = v21;
      }

      while (v27);
    }

    v28 = *(a5 + 23);
    v29 = *(v21 + 55);
    if (v29 >= 0)
    {
      v30 = *(v21 + 55);
    }

    else
    {
      v30 = v21[5];
    }

    if (v29 >= 0)
    {
      v31 = v21 + 4;
    }

    else
    {
      v31 = v21[4];
    }

    if (v28 >= 0)
    {
      v32 = *(a5 + 23);
    }

    else
    {
      v32 = a5[1];
    }

    if (v28 >= 0)
    {
      v33 = a5;
    }

    else
    {
      v33 = *a5;
    }

    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    v35 = memcmp(v31, v33, v34);
    v36 = v30 < v32;
    if (v35)
    {
      v36 = v35 < 0;
    }

    if (v36)
    {
      goto LABEL_53;
    }

    v37 = *v8;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v38 = v37;
          v41 = v37[4];
          v39 = v37 + 4;
          v40 = v41;
          v42 = *(v39 + 23);
          if (v42 >= 0)
          {
            v43 = *(v39 + 23);
          }

          else
          {
            v43 = v39[1];
          }

          if (v42 >= 0)
          {
            v44 = v39;
          }

          else
          {
            v44 = v40;
          }

          if (v43 >= v32)
          {
            v45 = v32;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v33, v44, v45);
          v47 = v32 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          if (!v47)
          {
            break;
          }

          v37 = *v38;
          v8 = v38;
          if (!*v38)
          {
            goto LABEL_74;
          }
        }

        v48 = memcmp(v44, v33, v45);
        v49 = v43 < v32;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          break;
        }

        v8 = v38 + 1;
        v37 = v38[1];
      }

      while (v37);
    }

    else
    {
      v38 = v8;
    }

LABEL_74:
    *a3 = v38;
    return v8;
  }

  v22 = memcmp(v15, v13, v16);
  v23 = v14 < v12;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (!v23)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = a2[1];
    do
    {
      a4 = v25;
      v25 = *v25;
    }

    while (v25);
  }

  else
  {
    v50 = a2;
    do
    {
      a4 = v50[2];
      v27 = *a4 == v50;
      v50 = a4;
    }

    while (!v27);
  }

  if (a4 != v8)
  {
    v51 = *(a4 + 55);
    if (v51 >= 0)
    {
      v52 = *(a4 + 55);
    }

    else
    {
      v52 = a4[5];
    }

    if (v51 >= 0)
    {
      v53 = (a4 + 4);
    }

    else
    {
      v53 = a4[4];
    }

    if (v52 >= v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v13, v53, v54);
    v56 = v12 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v57 = *v8;
      if (*v8)
      {
        v58 = a3;
        do
        {
          while (1)
          {
            v59 = v57;
            v62 = v57[4];
            v60 = v57 + 4;
            v61 = v62;
            v63 = *(v60 + 23);
            if (v63 >= 0)
            {
              v64 = *(v60 + 23);
            }

            else
            {
              v64 = v60[1];
            }

            if (v63 >= 0)
            {
              v65 = v60;
            }

            else
            {
              v65 = v61;
            }

            if (v64 >= v12)
            {
              v66 = v12;
            }

            else
            {
              v66 = v64;
            }

            v67 = memcmp(v13, v65, v66);
            v68 = v12 < v64;
            if (v67)
            {
              v68 = v67 < 0;
            }

            if (!v68)
            {
              break;
            }

            v57 = *v59;
            v8 = v59;
            if (!*v59)
            {
              goto LABEL_119;
            }
          }

          v69 = memcmp(v65, v13, v66);
          v70 = v64 < v12;
          if (v69)
          {
            v70 = v69 < 0;
          }

          if (!v70)
          {
            break;
          }

          v8 = v59 + 1;
          v57 = v59[1];
        }

        while (v57);
      }

      else
      {
        v59 = v8;
        v58 = a3;
      }

LABEL_119:
      *v58 = v59;
      return v8;
    }
  }

  if (v24)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_1837DEE20(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v9 = objc_msgSend_targetContentInfo(a1, a2, a3, a4, a5, a6);
  v14 = objc_msgSend_referenceSubstringRangeOfComposedCharacterAtIndex_(v9, v10, a2, v11, v12, v13);

  v20 = objc_msgSend_targetContentInfo(a1, v15, v16, v17, v18, v19);
  objc_msgSend_referenceSubstringRangeOfComposedCharacterAtIndex_(v20, v21, &a2[a3 - 1], v22, v23, v24);

  return v14;
}

uint64_t sub_1837DEEEC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = objc_msgSend_targetContentInfo(a1, a2, a3, a4, a5, a6);
    v15 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v10, v11, a2, v12, v13, v14);

    v66 = 0;
    v67 = &v66;
    v68 = 0x4012000000;
    v69 = sub_1837E0684;
    v70 = nullsub_47;
    v71 = &unk_183A5AC72;
    v72 = v15;
    v73 = a3;
    v21 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v16, v17, v18, v19, v20);
    v27 = objc_msgSend_targetContentInfo(a1, v22, v23, v24, v25, v26);
    v33 = objc_msgSend_referenceSubstring(v27, v28, v29, v30, v31, v32);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = sub_1837E0694;
    v63[3] = &unk_1E6DDE110;
    v34 = v21;
    v64 = v34;
    v65 = &v66;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v33, v35, v15, a3, 2, v63);

    if (v67[7])
    {
      v41 = objc_msgSend_targetContentInfo(a1, v36, v37, v38, v39, v40);
      v47 = objc_msgSend_referenceSubstring(v41, v42, v43, v44, v45, v46);
      v57 = MEMORY[0x1E69E9820];
      v58 = 3221225472;
      v59 = sub_1837E074C;
      v60 = &unk_1E6DDE110;
      v61 = v34;
      v62 = &v66;
      objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v47, v48, v15, a3, 258, &v57);
    }

    v49 = objc_msgSend_targetContentInfo(a1, v36, v37, v38, v39, v40, v57, v58, v59, v60);
    v54 = objc_msgSend_absoluteLocationFromRelativeLocation_(v49, v50, v67[6], v51, v52, v53);
    v55 = v67[7];

    if (v55)
    {
      v8 = v54;
    }

    else
    {
      v8 = a2;
    }

    _Block_object_dispose(&v66, 8);
  }

  return v8;
}

void sub_1837DF150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837DF1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837DF1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837DF1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1837DF220(void *a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_ERROR, "The affected range to be trimmed must be valid", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v10 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v10 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v98 = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_FAULT, "The affected range to be trimmed must be valid", v98, 2u);
    goto LABEL_10;
  }

LABEL_11:
  if (a3 >= 2)
  {
    v11 = objc_msgSend_targetContentInfo(a1, a2, a3, a4, a5, a6);
    v16 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v11, v12, v7, v13, v14, v15);

    v22 = objc_msgSend_targetContentInfo(a1, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_referenceSubstring(v22, v23, v24, v25, v26, v27);
    v33 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v28, v29, v16, v30, v31, v32);
    v35 = v34;

    v41 = objc_msgSend_targetContentInfo(a1, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_referenceSubstring(v41, v42, v43, v44, v45, v46);
    v51 = objc_msgSend_substringWithRange_(v47, v48, v33, v35, v49, v50);
    isEqualToString = objc_msgSend_isEqualToString_(v51, v52, @" ", v53, v54, v55);

    if (isEqualToString)
    {
      v62 = v35;
    }

    else
    {
      v62 = 0;
    }

    v63 = objc_msgSend_targetContentInfo(a1, v57, v58, v59, v60, v61);
    v69 = objc_msgSend_referenceSubstring(v63, v64, v65, v66, v67, v68);
    v74 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v69, v70, a3 + v16 - 1, v71, v72, v73);
    v76 = v75;

    v82 = objc_msgSend_targetContentInfo(a1, v77, v78, v79, v80, v81);
    v88 = objc_msgSend_referenceSubstring(v82, v83, v84, v85, v86, v87);
    v92 = objc_msgSend_substringWithRange_(v88, v89, v74, v76, v90, v91);
    objc_msgSend_isEqualToString_(v92, v93, @" ", v94, v95, v96);
    v7 += v62;
  }

  return v7;
}

uint64_t sub_1837DF580(void *a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v167 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  if (a3)
  {
    v8 = a4;
    v10 = objc_msgSend_targetContentInfo(a1, a2, a3, a4, a5, a6);
    v15 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v10, v11, v7, v12, v13, v14);

    v21 = objc_msgSend_targetContentInfo(a1, v16, v17, v18, v19, v20);
    v161 = objc_msgSend_referenceSubstring(v21, v22, v23, v24, v25, v26);

    v160 = objc_msgSend_locale(a1, v27, v28, v29, v30, v31);
    v42 = v15 + v6;
    if (v15 + v6 > objc_msgSend_length(v161, v32, v33, v34, v35, v36))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v43 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v168.location = v15;
        v168.length = v6;
        v44 = NSStringFromRange(v168);
        *buf = 138412546;
        v164 = v44;
        v165 = 2048;
        v166 = objc_msgSend_length(v161, v45, v46, v47, v48, v49);
        _os_log_impl(&dword_18366B000, v43, OS_LOG_TYPE_ERROR, "Range %@ out of string length %ld", buf, 0x16u);
      }
    }

    if (v42 > objc_msgSend_length(v161, v37, v38, v39, v40, v41, a5))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v50 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        v169.location = v15;
        v169.length = v6;
        v51 = NSStringFromRange(v169);
        v57 = objc_msgSend_length(v161, v52, v53, v54, v55, v56);
        *buf = 138412546;
        v164 = v51;
        v165 = 2048;
        v166 = v57;
        _os_log_impl(&dword_18366B000, v50, OS_LOG_TYPE_FAULT, "Range %@ out of string length %ld", buf, 0x16u);
      }
    }

    v162 = 0;
    sub_1837E0A08(CHTextInputGesture, v161, v15, v6, &v162 + 1, &v162);
    if ((v162 & 0x100) == 0 && v162 != 1)
    {
      v81 = 0;
LABEL_59:
      v126 = objc_msgSend_targetContentInfo(a1, v58, v59, v60, v61, v62);
      active = objc_msgSend_activePreviewRange(v126, v127, v128, v129, v130, v131);
      v134 = v133;

      v140 = objc_msgSend_targetContentInfo(a1, v135, v136, v137, v138, v139);
      v145 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v140, v141, active, v142, v143, v144);

      if (v145 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v170.location = v145;
        v170.length = v134;
        v171.location = v15;
        v171.length = v6;
        v151 = NSIntersectionRange(v170, v171);
        length = v151.length;
        if (v151.length == v6)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v151.length && v145 <= v15)
        {
          v15 = v145 + v134;
        }
      }

      if (v159)
      {
        *v159 = v81;
      }

      v152 = objc_msgSend_targetContentInfo(a1, length, v147, v148, v149, v150);
      v7 = objc_msgSend_absoluteLocationFromRelativeLocation_(v152, v153, v15, v154, v155, v156);

      return v7;
    }

    v63 = objc_opt_class();
    v66 = objc_msgSend_rangeOfTokenAtCharacterIndex_inString_locale_(v63, v64, v15, v161, v160, v65);
    v68 = v67;
    v69 = objc_opt_class();
    v72 = objc_msgSend_rangeOfTokenAtCharacterIndex_inString_locale_(v69, v70, v42 - 1, v161, v160, v71);
    v73 = v72;
    v74 = v58;
    if ((v8 & 1) != 0 && v66 == v72 && v68 == v58)
    {
      v75 = objc_msgSend_lastStroke(a1, v58, v59, v60, v61, v62);
      if (v75)
      {
      }

      else if (!objc_msgSend_preferCharacterLevel(a1, v76, v77, v78, v79, v80))
      {
        goto LABEL_34;
      }

      if ((objc_msgSend_preferCharacterLevel(a1, v58, v59, v60, v61, v62) & 1) != 0 || (objc_msgSend_lastStroke(a1, v58, v59, v60, v61, v62), v82 = objc_claimAutoreleasedReturnValue(), v83 = v82 == 0, v82, v83) || (objc_msgSend_sharedSettings(CHTextInputProtoSettings, v58, v59, v60, v61, v62), v84 = objc_claimAutoreleasedReturnValue(), objc_msgSend_subwordGestureEndingSpeedRange(v84, v85, v86, v87, v88, v89), v91 = v90, v84, objc_msgSend_lastStroke(a1, v92, v93, v94, v95, v96), v97 = objc_claimAutoreleasedReturnValue(), objc_msgSend_speedForFinalTimeRange_stroke_(CHStrokeUtilities, v98, v97, v99, v100, v101, v91), v103 = v102, v97, v103 > -1.0) && (objc_msgSend_sharedSettings(CHTextInputProtoSettings, v58, v59, v60, v61, v62), v104 = objc_claimAutoreleasedReturnValue(), objc_msgSend_subwordGestureSpeedThreshold(v104, v105, v106, v107, v108, v109), v111 = v103 < v110, v104, v111))
      {
        v112 = objc_msgSend_sharedSettings(CHTextInputProtoSettings, v58, v59, v60, v61, v62);
        v118 = objc_msgSend_preventLeftoverCharsInSubwordGestures(v112, v113, v114, v115, v116, v117);

        v81 = 0;
        if (!v118 || (v15 - v66) > 1 || &v74[v66 - v42] > 1)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_34:
    if ((HIBYTE(v162) & (v66 != 0x7FFFFFFFFFFFFFFFLL)) != 0)
    {
      v119 = v66;
    }

    else
    {
      v119 = v15;
    }

    v120 = v15 - v119;
    if ((v162 & (v73 != 0x7FFFFFFFFFFFFFFFLL)) != 0)
    {
      v121 = &v74[v73 - v42];
    }

    else
    {
      v121 = 0;
    }

    if ((v120 & 0x8000000000000000) == 0)
    {
LABEL_49:
      if ((v121 & 0x8000000000000000) == 0)
      {
LABEL_58:
        v6 += &v121[v120];
        v81 = 1;
        v15 = v119;
        goto LABEL_59;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v124 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v164 = v121;
        _os_log_impl(&dword_18366B000, v124, OS_LOG_TYPE_ERROR, "trailingExpansion cannot be negative: %ld", buf, 0xCu);
      }

      if (qword_1EA84DC48 == -1)
      {
        v125 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
        {
LABEL_57:

          goto LABEL_58;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v125 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_57;
        }
      }

      *buf = 134217984;
      v164 = v121;
      _os_log_impl(&dword_18366B000, v125, OS_LOG_TYPE_FAULT, "trailingExpansion cannot be negative: %ld", buf, 0xCu);
      goto LABEL_57;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v122 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v164 = v120;
      _os_log_impl(&dword_18366B000, v122, OS_LOG_TYPE_ERROR, "leadingExpansion cannot be negative: %ld", buf, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v123 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
      {
LABEL_48:

        goto LABEL_49;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v123 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_48;
      }
    }

    *buf = 134217984;
    v164 = v120;
    _os_log_impl(&dword_18366B000, v123, OS_LOG_TYPE_FAULT, "leadingExpansion cannot be negative: %ld", buf, 0xCu);
    goto LABEL_48;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return v7;
}

uint64_t sub_1837DFE08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a5;
  v10 = a6;
  objc_opt_self();
  objc_opt_self();
  v11 = a4 - 4;
  if ((a4 - 4) >= 3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "Refined stroke ranges can only be computed for scribble, circle or polygon result types", buf, 2u);
    }
  }

  objc_opt_self();
  if (v11 >= 3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_FAULT, "Refined stroke ranges can only be computed for scribble, circle or polygon result types", buf, 2u);
    }
  }

  v134 = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_ERROR, "The initial affected text range must be valid", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v15 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v15 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_FAULT, "The initial affected text range must be valid", buf, 2u);
    goto LABEL_21;
  }

LABEL_22:
  v16 = objc_opt_class();
  v24 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v17, 0, v18, v19, v20);
  if (v16)
  {
    objc_msgSend_convexHullForStrokes_inDrawing_(v16, v21, v24, v9, v22, v23);
  }

  else
  {
    *buf = 0;
    v142 = 0;
    v143 = 0;
  }

  v26 = *buf;
  v25 = v142;
  v136 = (v142 - *buf) >> 4;
  v27 = malloc_type_calloc(v136, 0x10uLL, 0x1000040451B5BE8uLL);
  v28 = v27;
  if (v25 != v26)
  {
    v29 = 0;
    v30 = v136;
    if (v136 <= 1)
    {
      v30 = 1;
    }

    do
    {
      *&v27[v29] = *(*buf + v29);
      v29 += 16;
      --v30;
    }

    while (v30);
  }

  v31 = [CHPolygon alloc];
  v35 = objc_msgSend_initWithVertices_vertexCount_(v31, v32, v28, v136, v33, v34);
  v40 = v35;
  if (v11 >= 3)
  {
    v41 = 100.0;
    v133 = v9;
    v139 = v134 + a3;
    if (v134 >= v134 + a3)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  v41 = dbl_1839D0650[v11];
  v133 = v9;
  v139 = v134 + a3;
  if (v134 < v134 + a3)
  {
LABEL_38:
    v137 = v35;
    v44 = 0;
    v45 = v134;
    v42 = 0x7FFFFFFFFFFFFFFFLL;
    v138 = v10;
    for (i = objc_msgSend_referenceSubstringRangeOfComposedCharacterAtIndex_(v10, v36, v134, v37, v38, v39); ; i = objc_msgSend_referenceSubstringRangeOfComposedCharacterAtIndex_(v10, v51, v45, v52, v53, v54))
    {
      v55 = i;
      v56 = v47;
      if (i == 0x7FFFFFFFFFFFFFFFLL)
      {
        v57 = v42;
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v58 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *v140 = 0;
          _os_log_impl(&dword_18366B000, v58, OS_LOG_TYPE_ERROR, "Character range cannot be undefined.", v140, 2u);
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v59 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
        {
          *v140 = 0;
          _os_log_impl(&dword_18366B000, v59, OS_LOG_TYPE_FAULT, "Character range cannot be undefined.", v140, 2u);
        }

        v42 = v57;
        v10 = v138;
      }

      v60 = objc_msgSend_referenceSubstringInRange_(v10, v47, v55, v56, v48, v49);
      v65 = objc_msgSend_singleScriptCodeForString_(CHTextScriptUtilities, v61, v60, v62, v63, v64);
      if (a4 == 6)
      {
        v74 = (objc_msgSend_shouldRelaxCharacterBoundsPercentageOverlapForScript_(CHTextScriptUtilities, v66, v65, v67, v68, v69) & 1) != 0 ? 10.0 : v41;
        objc_msgSend_visualCharacterRectForCharacterIndex_(v10, v70, v45, v71, v72, v73);
        v76 = v75;
        v78 = v77;
        v80 = v79;
        v82 = v81;
      }

      else
      {
        objc_msgSend_characterRectForComposedCharacterAtIndex_(v10, v66, v45, v67, v68, v69);
        v76 = v83;
        v78 = v84;
        v80 = v85;
        v82 = v86;
        v74 = v41;
      }

      v144.origin.x = v76;
      v144.origin.y = v78;
      v144.size.width = v80;
      v144.size.height = v82;
      if (!CGRectIsNull(v144))
      {
        break;
      }

LABEL_46:

      if (++v45 == v139)
      {
        goto LABEL_32;
      }
    }

    v87 = [CHPolygon alloc];
    v93 = objc_msgSend_initWithRect_(v87, v88, v89, v90, v91, v92, v76, v78, v80, v82);
    v98 = objc_msgSend_polygonByIntersectingWithClipPolygon_(v40, v94, v93, v95, v96, v97);
    v99 = a4;
    objc_msgSend_area(v98, v100, v101, v102, v103, v104);
    v106 = v105;
    objc_msgSend_area(v93, v107, v108, v109, v110, v111);
    v118 = v106 / v117 * 100.0;
    ++v44;
    if (v118 <= 0.0)
    {
      v50 = v42 == 0x7FFFFFFFFFFFFFFFLL;
      if (v42 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v132 = 1;
      }

      else
      {
        v132 = v44;
      }

      if (v118 <= v74)
      {
LABEL_44:
        a4 = v99;
LABEL_45:

        goto LABEL_46;
      }

      v44 = v132;
    }

    else
    {
      v119 = v42;
      if (v118 <= v74)
      {
        if (a4 != 6 || (v120 = objc_msgSend_edgeCountIntersectingLineSegment_(v137, v112, v113, v114, v115, v116, v76, v78 + v82 * 0.25, v76, v78 + v82 * 0.75), v145.origin.x = v76, v145.origin.y = v78, v145.size.width = v80, v145.size.height = v82, MaxX = CGRectGetMaxX(v145), v146.origin.x = v76, v146.origin.y = v78, v146.size.width = v80, v146.size.height = v82, v122 = CGRectGetMaxX(v146), v128 = objc_msgSend_edgeCountIntersectingLineSegment_(v137, v123, v124, v125, v126, v127, MaxX, v78 + v82 * 0.25, v122, v78 + v82 * 0.75), v120 <= 0) && v128 <= 0)
        {
          if (v136 < 2)
          {
LABEL_74:
            a4 = v99;
            v40 = v137;
            v42 = v119;
            v10 = v138;
            goto LABEL_45;
          }

          v129 = 0;
          v130 = 0;
          v131 = v136 - 1;
          while (1)
          {
            v130 += objc_msgSend_edgeCountIntersectingLineSegment_(v93, v112, v113, v114, v115, v116, *(*buf + v129), *(*buf + v129 + 8), *(*buf + v129 + 16), *(*buf + v129 + 24));
            if (v130 > 2)
            {
              break;
            }

            v129 += 16;
            if (!--v131)
            {
              goto LABEL_74;
            }
          }
        }
      }

      v42 = v119;
      v50 = v119 == 0x7FFFFFFFFFFFFFFFLL;
      if (v119 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = 1;
      }

      v40 = v137;
      v10 = v138;
    }

    if (v50)
    {
      v42 = v45;
    }

    goto LABEL_44;
  }

LABEL_31:
  v42 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_32:

  if (*buf)
  {
    v142 = *buf;
    operator delete(*buf);
  }

  if (v42 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = v134;
  }

  return v42;
}

void sub_1837E05B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1837E0684(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1837E0694(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  v11 = *(a1 + 32);
  v21 = v10;
  v16 = objc_msgSend_characterAtIndex_(v10, v12, 0, v13, v14, v15);
  if (objc_msgSend_characterIsMember_(v11, v17, v16, v18, v19, v20))
  {
    *(*(*(a1 + 40) + 8) + 48) += a4;
    *(*(*(a1 + 40) + 8) + 56) -= a4;
  }

  else
  {
    *a7 = 1;
  }
}

void sub_1837E074C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  v11 = *(a1 + 32);
  v21 = v10;
  v16 = objc_msgSend_characterAtIndex_(v10, v12, 0, v13, v14, v15);
  if (objc_msgSend_characterIsMember_(v11, v17, v16, v18, v19, v20))
  {
    *(*(*(a1 + 40) + 8) + 56) -= a4;
  }

  else
  {
    *a7 = 1;
  }
}

void sub_1837E091C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void *sub_1837E0964(void *result, unint64_t a2)
{
  v2 = *(result[4] + 8);
  v3 = *(v2 + 24);
  if (v3 <= a2)
  {
    v4 = *(result[5] + 8);
    v5 = *(v4 + 24);
    if (v5 + v3 > a2)
    {
      if (a2 + 1 == result[8] + result[7])
      {
        *(v4 + 24) = v5 - 1;
      }

      else if (v3 == a2)
      {
        *(v2 + 24) = a2 + 1;
        --*(*(result[5] + 8) + 24);
      }

      else
      {
        v6 = *(result[6] + 8);
        if ((*(v6 + 24) & 1) == 0)
        {
          *(v6 + 24) = 1;
          *(*(result[5] + 8) + 24) = a2 - *(*(result[4] + 8) + 24);
        }
      }
    }
  }

  return result;
}

void sub_1837E0A08(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v10 = a2;
  objc_opt_self();
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || a3 + a4 > objc_msgSend_length(v10, v11, v12, v13, v14, v15))
  {
    if (qword_1EA84DC48 == -1)
    {
      v21 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v21 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        if (a3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_ERROR, "The input string and range must be compatible with each other", buf, 2u);
    goto LABEL_6;
  }

LABEL_7:
  if (a3 + a4 <= objc_msgSend_length(v10, v16, v17, v18, v19, v20))
  {
    goto LABEL_12;
  }

LABEL_8:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v23 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v23 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
LABEL_10:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_FAULT, "The input string and range must be compatible with each other", buf, 2u);
  }

LABEL_11:

LABEL_12:
  *buf = 0;
  v50 = buf;
  v51 = 0x2020000000;
  v52 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = sub_1837E0D4C;
  v48[3] = &unk_1E6DDDCB0;
  v48[4] = buf;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v10, v22, 0, a3 + 1, 258, v48);
  v24 = objc_opt_class();
  shouldCorrectionGesturesSnapToTokensForScriptCode = objc_msgSend_shouldCorrectionGesturesSnapToTokensForScriptCode_(v24, v25, *(v50 + 6), v26, v27, v28);
  v35 = shouldCorrectionGesturesSnapToTokensForScriptCode;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = *(v50 + 6);
  if (a4 >= 2)
  {
    v36 = objc_msgSend_length(v10, v30, v31, v32, v33, v34);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1837E0DF4;
    v43[3] = &unk_1E6DDDCB0;
    v43[4] = &v44;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v10, v37, a3 + a4, v36 - (a3 + a4), 2, v43);
    v38 = objc_opt_class();
    shouldCorrectionGesturesSnapToTokensForScriptCode = objc_msgSend_shouldCorrectionGesturesSnapToTokensForScriptCode_(v38, v39, *(v45 + 6), v40, v41, v42);
  }

  if (a5)
  {
    *a5 = v35;
  }

  if (a6)
  {
    *a6 = shouldCorrectionGesturesSnapToTokensForScriptCode;
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(buf, 8);
}

void sub_1837E0D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1837E0D4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v19 = a2;
  v9 = objc_opt_class();
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_singleScriptCodeForString_(v9, v10, v19, v11, v12, v13);
  v14 = objc_opt_class();
  if ((objc_msgSend_isSkippableScriptCode_(v14, v15, *(*(*(a1 + 32) + 8) + 24), v16, v17, v18) & 1) == 0)
  {
    *a7 = 1;
  }
}

void sub_1837E0DF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v19 = a2;
  v9 = objc_opt_class();
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_singleScriptCodeForString_(v9, v10, v19, v11, v12, v13);
  v14 = objc_opt_class();
  if ((objc_msgSend_isSkippableScriptCode_(v14, v15, *(*(*(a1 + 32) + 8) + 24), v16, v17, v18) & 1) == 0)
  {
    *a7 = 1;
  }
}

void sub_1837E116C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_183695894(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1837E11D0(float64_t a1, float64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v180 = *MEMORY[0x1E69E9840];
  v8 = a4;
  objc_opt_self();
  if (a5 == 0x7FFFFFFFFFFFFFFFLL || !a6)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The searching range must be valid", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "The searching range must be valid", buf, 2u);
    goto LABEL_10;
  }

LABEL_11:
  *buf = 0;
  v169 = buf;
  v170 = 0x5012000000;
  v171 = sub_1837E1BDC;
  v15 = *(MEMORY[0x1E695F050] + 16);
  v174 = *MEMORY[0x1E695F050];
  v172 = nullsub_48;
  v173 = &unk_183A5AC72;
  v175 = v15;
  if (a5 >= a5 + a6)
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16.f64[0] = a1;
    v16.f64[1] = a2;
    v17 = vcvt_f32_f64(v16);
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = 1.79769313e308;
    do
    {
      objc_msgSend_characterRectForRelativeCharacterIndex_(v8, v9, a5, v10, v11, v12);
      x = v181.origin.x;
      y = v181.origin.y;
      width = v181.size.width;
      height = v181.size.height;
      MidX = CGRectGetMidX(v181);
      v182.origin.x = x;
      v182.origin.y = y;
      v182.size.width = width;
      v182.size.height = height;
      MidY = CGRectGetMidY(v182);
      v25.f64[0] = MidX;
      v25.f64[1] = MidY;
      v26 = vsub_f32(v17, vcvt_f32_f64(v25));
      v27 = sqrtf(vaddv_f32(vmul_f32(v26, v26)));
      if (v19 > v27)
      {
        v28 = v169;
        *(v169 + 6) = x;
        v28[7] = y;
        v28[8] = width;
        v28[9] = height;
        v19 = v27;
        v18 = a5;
      }

      ++a5;
      --a6;
    }

    while (a6);
  }

  v157 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v9, @"[\u200E\u200F\u202A-\u202E]", 0, 0, v12);
  v34 = objc_msgSend_referenceSubstring(v8, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_referenceSubstring(v8, v35, v36, v37, v38, v39);
  v46 = objc_msgSend_length(v40, v41, v42, v43, v44, v45);
  v161 = objc_msgSend_firstMatchInString_options_range_(v157, v47, v34, 0, 0, v46);

  v50 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v48, @"[؀-ۿ]", 0, 0, v49);
  v56 = objc_msgSend_referenceSubstring(v8, v51, v52, v53, v54, v55);
  v62 = objc_msgSend_referenceSubstring(v8, v57, v58, v59, v60, v61);
  v68 = objc_msgSend_length(v62, v63, v64, v65, v66, v67);
  v70 = objc_msgSend_firstMatchInString_options_range_(v50, v69, v56, 0, 0, v68);

  if (!v161 && v70 && (objc_msgSend_baseWritingDirection(v8, v71, v72, v73, v74, v75) == 1 || !objc_msgSend_baseWritingDirection(v8, v76, v77, v78, v79, v80)))
  {
    ubidi_open();
    v86 = objc_msgSend_referenceSubstring(v8, v81, v82, v83, v84, v85);
    v92 = objc_msgSend_length(v86, v87, v88, v89, v90, v91);

    if (v92 << 32)
    {
      if ((v92 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18368964C();
    }

    v98 = objc_msgSend_referenceSubstring(v8, v93, v94, v95, v96, v97);
    objc_msgSend_getCharacters_range_(v98, v99, 0, 0, v92, v100);

    v167 = 0;
    objc_msgSend_baseWritingDirection(v8, v101, v102, v103, v104, v105);
    ubidi_setPara();
    ubidi_getVisualMap();
    Levels = ubidi_getLevels();
    v116 = 0;
    v117 = vabdd_f64(CGRectGetMinX(*(v169 + 48)), a1);
    v123 = vabdd_f64(CGRectGetMaxX(*(v169 + 48)), a1);
    while (1)
    {
      v124 = objc_msgSend_referenceSubstring(v8, v118, v119, v120, v121, v122);
      v130 = v116 < objc_msgSend_length(v124, v125, v126, v127, v128, v129);

      if (!v130)
      {
        break;
      }

      if (v18 == *(4 * v116))
      {
        goto LABEL_39;
      }

      ++v116;
    }

    v116 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_39:
    if (v117 > v123)
    {
      v131 = v116 + 1;
    }

    else
    {
      v131 = v116 - 1;
    }

    v132 = objc_msgSend_referenceSubstring(v8, v118, v119, v120, v121, v122);
    if (objc_msgSend_length(v132, v133, v134, v135, v136, v137) - 1 < v131)
    {
      v143 = objc_msgSend_referenceSubstring(v8, v138, v139, v140, v141, v142);
      v149 = objc_msgSend_length(v143, v144, v145, v146, v147, v148);

      v131 = v149 - 1;
    }

    if (*(Levels + *(4 * v131)) < *(Levels + v18))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v150 = qword_1EA84DC80;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
      {
        v151 = *(4 * v131);
        *v176 = 134218240;
        v177 = v18;
        v178 = 1024;
        v179 = v151;
        _os_log_impl(&dword_18366B000, v150, OS_LOG_TYPE_DEBUG, "CHTextInputGesture _cursorPositionForPoint updated index from %li to %i", v176, 0x12u);
      }

      v18 = *(4 * v131);
      v152 = *(v169 + 6);
      v153 = *(v169 + 7);
      v154 = *(v169 + 8);
      v155 = *(v169 + 9);
      if (v117 > v123)
      {
        MinX = CGRectGetMinX(*&v152);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v152);
      }

      a1 = MinX;
    }

    operator delete(0);
  }

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v106 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      *v176 = 0;
      _os_log_impl(&dword_18366B000, v106, OS_LOG_TYPE_ERROR, "There must be a valid character closest to the point", v176, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v107 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v107 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }
    }

    *v176 = 0;
    _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_FAULT, "There must be a valid character closest to the point", v176, 2u);
    goto LABEL_33;
  }

LABEL_34:
  v108 = objc_msgSend_referenceSubstring(v8, v71, v72, v73, v74, v75);
  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = sub_1837E1BEC;
  v162[3] = &unk_1E6DDE630;
  v164 = buf;
  v109 = v8;
  v163 = v109;
  v165 = a1;
  v166 = a2;
  v113 = objc_msgSend_cursorPositionAtIndex_usingBlockToSelectSide_(v108, v110, v18, v162, v111, v112);

  _Block_object_dispose(buf, 8);
  return v113;
}

void sub_1837E1A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  operator delete(v31);
  if (v30)
  {
    operator delete(v30);
  }

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1837E1BDC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_1837E1BEC(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 2 && a2 < &a2[a3])
  {
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *(*(a1 + 40) + 8);
      v12 = v11[6];
      v13 = v11[7];
      v14 = v11[8];
      v15 = v11[9];
      objc_msgSend_characterRectForRelativeCharacterIndex_(*(a1 + 32), a2, v10, a4, a5, a6);
      v65.origin.x = v16;
      v65.origin.y = v17;
      v65.size.width = v18;
      v65.size.height = v19;
      v64.origin.x = v12;
      v64.origin.y = v13;
      v64.size.width = v14;
      v64.size.height = v15;
      *(*(*(a1 + 40) + 8) + 48) = CGRectUnion(v64, v65);
      ++v10;
      --v9;
    }

    while (v9);
  }

  MinX = CGRectGetMinX(*(*(*(a1 + 40) + 8) + 48));
  v21 = *(a1 + 48);
  MaxX = CGRectGetMaxX(*(*(*(a1 + 40) + 8) + 48));
  v23 = *(a1 + 48);
  v29 = objc_msgSend_referenceSubstring(*(a1 + 32), v24, v25, v26, v27, v28);
  v33 = objc_msgSend_substringWithRange_(v29, v30, a2, a3, v31, v32);
  isRightToLeftScriptForCharacter = objc_msgSend_isRightToLeftScriptForCharacter_(CHTextScriptUtilities, v34, v33, v35, v36, v37);

  v44 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v39, v40, v41, v42, v43);
  v50 = objc_msgSend_referenceSubstring(*(a1 + 32), v45, v46, v47, v48, v49);
  v55 = objc_msgSend_characterAtIndex_(v50, v51, a2, v52, v53, v54);
  IsMember = objc_msgSend_characterIsMember_(v44, v56, v55, v57, v58, v59);
  v61 = vabdd_f64(MinX, v21);
  v62 = vabdd_f64(MaxX, v23);

  if (((isRightToLeftScriptForCharacter ^ 1 | IsMember) & 1) != 0 || v61 > v62)
  {
    return (isRightToLeftScriptForCharacter ^ 1u | IsMember) & (v62 <= v61);
  }

  else
  {
    return 1;
  }
}

void sub_1837E4278(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1837E431C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v26 = *MEMORY[0x1E69E9840];
  v3 = fopen(v2, "r");
  v21 = v3;
  if (v3 && (v4 = v3, !ferror(v3)))
  {
    v22 = 0;
    v23 = 0;
    do
    {
      if (feof(v4) || !fgets(__str, 4096, v4))
      {
        break;
      }

      v15 = strtok(__str, " \t\n\r\b");
      if (v15)
      {
        v24 = 0;
        sscanf(v15, "0x%x", &v24);
        v16 = v23;
        v17 = v23 >> 2;
        if (((v23 >> 2) + 1) >> 62)
        {
          sub_1836D58DC();
        }

        if (v23 >> 2 != -1)
        {
          if (!(((v23 >> 2) + 1) >> 62))
          {
            operator new();
          }

          sub_183688F00();
        }

        *(4 * v17) = v24;
        v23 = 4 * v17 + 4;
        memcpy(0, 0, v16);
        v18 = v22;
        v19 = v22 >> 2;
        if (((v22 >> 2) + 1) >> 62)
        {
          sub_1836D58DC();
        }

        if (v22 >> 2 != -1)
        {
          if (!(((v22 >> 2) + 1) >> 62))
          {
            operator new();
          }

          sub_183688F00();
        }

        *(4 * v19) = 0;
        v22 = 4 * v19 + 4;
        memcpy(0, 0, v18);
        v4 = v21;
        strtok(0, " \t\n\r\b");
        v20 = strtok(0, " \t\n\r\b");
        if (v20)
        {
          sscanf(v20, "0x%x", &v24);
          operator new();
        }
      }
    }

    while (!ferror(v4));
    v5 = v22;
    v6 = v22 >> 2;
    v7 = (v22 >> 2) + 1;
    if (v7 >> 62)
    {
      sub_1836D58DC();
    }
  }

  else
  {
    v23 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  if (v7)
  {
    if (!(v7 >> 62))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(4 * v6) = 0;
  v8 = 4 * v6 + 4;
  memcpy(0, 0, v5);
  *(v1 + 24) = (v8 >> 2) - 1;
  v9 = malloc_type_calloc((v23 >> 2) + (v8 >> 2), 4uLL, 0x100004052888210uLL);
  v10 = *(v1 + 24);
  v11 = &v9[v10];
  *(v1 + 8) = v11;
  *(v1 + 16) = v9;
  *v1 = &v11[4 * v10 + 4];
  if (v10 < 1)
  {
    *&v11[4 * v10] = *(4 * v10);
  }

  else
  {
    v12 = 0;
    do
    {
      v9[v12] = *(4 * v12);
      *&v11[4 * v12] = *(4 * v12);
      ++v12;
      v13 = *(v1 + 24);
    }

    while (v12 < v13);
    *&v11[4 * v13] = *(4 * v13);
  }

  if (v21)
  {
    fclose(v21);
  }

  return v1;
}

void sub_1837E4978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (v17)
  {
    operator delete(v17);
    if (!v18)
    {
LABEL_3:
      if (!__p)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v18)
  {
    goto LABEL_3;
  }

  operator delete(v18);
  if (!__p)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1837E49EC(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 6);
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v18 = a2;
    do
    {
      if (*(a1[2] + 4 * v7) == a2)
      {
        v8 = *(a1[1] + 4 * v7 + 4) - *(a1[1] + 4 * v7);
        if (v8 >= 1)
        {
          v9 = 0;
          v20 = v7;
          v19 = *(a1[1] + 4 * v7 + 4) - *(a1[1] + 4 * v7);
          do
          {
            while (1)
            {
              v10 = *a1;
              v11 = v9 + *(a1[1] + 4 * v7);
              v12 = a3[2];
              if (v6 >= v12)
              {
                break;
              }

              *v6 = *(v10 + 4 * v11);
              v6 += 4;
              a3[1] = v6;
              if (v8 == ++v9)
              {
                goto LABEL_3;
              }
            }

            v13 = v6;
            v14 = v6 >> 2;
            v15 = v14 + 1;
            if ((v14 + 1) >> 62)
            {
              *a3 = 0;
              sub_18368964C();
            }

            if (v12 >> 1 > v15)
            {
              v15 = v12 >> 1;
            }

            if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v16 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v16 = v15;
            }

            if (v16)
            {
              if (!(v16 >> 62))
              {
                operator new();
              }

              *a3 = 0;
              sub_183688F00();
            }

            v17 = (4 * v14);
            *v17 = *(v10 + 4 * v11);
            v6 = (v17 + 1);
            memcpy(0, 0, v13);
            a3[1] = v6;
            a3[2] = 0;
            v7 = v20;
            v8 = v19;
            a3[1] = v6;
            ++v9;
          }

          while (v19 != v9);
LABEL_3:
          v4 = *(a1 + 6);
          a2 = v18;
        }

        *a3 = 0;
      }

      ++v7;
    }

    while (v7 < v4);
  }
}

void sub_1837E4BAC(_Unwind_Exception *a1)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1837E4BD0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v85 = a2;
  v10 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 1117782016;
  objc_storeStrong((a1 + 8), a2);
  objc_storeStrong((a1 + 16), a4);
  v16 = 0;
  *(a1 + 64) = 0;
  v17 = (a1 + 64);
  *a1 = a6;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v18 = 0.0;
  *(a1 + 72) = 0;
  while (objc_msgSend_strokeCount(v10, v11, v12, v13, v14, v15) > v16)
  {
    v24 = 0;
    v18 = v18 + objc_msgSend_pointCountForStrokeIndex_(v10, v19, v16, v21, v22, v23);
    while (objc_msgSend_pointCountForStrokeIndex_(v10, v25, v16, v26, v27, v28) > v24)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(v10, v11, v16, v24, v14, v15);
      v30.f64[1] = v29;
      *v17 = vaddq_f64(v30, *v17);
      ++v24;
    }

    ++v16;
  }

  if (v18 >= 2.0)
  {
    v31 = 0;
    *v17 = vdivq_f64(*v17, vdupq_lane_s64(COERCE__INT64(v18), 0));
    while (objc_msgSend_strokeCount(v10, v19, v20, v21, v22, v23) > v31)
    {
      for (i = 0; objc_msgSend_pointCountForStrokeIndex_(v10, v32, v31, v34, v35, v36) > i; ++i)
      {
        objc_msgSend_pointForStrokeIndex_pointIndex_(v10, v19, v31, i, v22, v23);
        *&v38 = v38 - *(a1 + 64);
        *&v39 = v39 - *(a1 + 72);
        *(a1 + 40) = *(a1 + 40) + (*&v38 * *&v38);
        *(a1 + 48) = *(a1 + 48) + (*&v39 * *&v39);
        *(a1 + 56) = *(a1 + 56) + (*&v38 * *&v39);
      }

      ++v31;
    }

    v40 = *(a1 + 40) / (v18 + -1.0);
    *(a1 + 40) = v40;
    v41 = *(a1 + 48) / (v18 + -1.0);
    *(a1 + 48) = v41;
    v42 = *(a1 + 32);
    v43 = v41 / v40;
    if ((v40 / v41) <= v42)
    {
      if (v43 <= v42)
      {
        v45 = sqrtf(v40);
        *(a1 + 44) = v45;
        v46 = sqrtf(v41);
        v47 = *(a1 + 56) / (v18 + -1.0);
        *(a1 + 52) = v46;
        *(a1 + 56) = v47;
        v44 = v47 / (v45 * v46);
      }

      else
      {
        v44 = 1.0 - (v40 / v41);
      }
    }

    else
    {
      v44 = 1.0 - v43;
    }

    *(a1 + 36) = v44;
    if (fabsf(v44) < 0.1)
    {
      objc_msgSend_bounds(*(a1 + 8), v32, v33, v34, v35, v36);
      operator new();
    }

    objc_msgSend_pointForStrokeIndex_pointIndex_(v10, v32, 0, 0, v35, v36);
    v53 = objc_msgSend_strokeCount(v10, v48, v49, v50, v51, v52);
    v59 = objc_msgSend_strokeCount(v10, v54, v55, v56, v57, v58);
    v64 = objc_msgSend_pointCountForStrokeIndex_(v10, v60, v59 - 1, v61, v62, v63);
    objc_msgSend_pointForStrokeIndex_pointIndex_(v10, v65, v53 - 1, v64 - 1, v66, v67);
    for (j = 0; objc_msgSend_strokeCount(v10, v68, v69, v70, v71, v72) > j; ++j)
    {
      if (objc_msgSend_pointCountForStrokeIndex_(v10, v74, j, v76, v77, v78))
      {
        objc_msgSend_pointForStrokeIndex_pointIndex_(v10, v68, j, 0, v71, v72);
        operator new();
      }
    }

    for (k = 0; objc_msgSend_strokeCount(v10, v74, v75, v76, v77, v78) > k; ++k)
    {
      if (objc_msgSend_pointCountForStrokeIndex_(v10, v80, k, v81, v82, v83))
      {
        objc_msgSend_pointForStrokeIndex_pointIndex_(v10, v74, k, 0, v77, v78);
        operator new();
      }
    }

    operator new();
  }

  *(a1 + 36) = 0;

  return a1;
}

void sub_1837E5484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id *a16, id *a17, void *a18)
{
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1837E6618(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1837E6930(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

id sub_1837E7420(void *a1, void *a2, void *a3, char a4, char a5, char **a6, void *a7, double a8, double a9)
{
  v220[3] = *MEMORY[0x1E69E9840];
  v16 = a2;
  v209 = a3;
  if (a1)
  {
    v22 = objc_msgSend_featureCounts(a1, v17, v18, v19, v20, v21);
    v214 = v16;
    v27 = objc_msgSend_objectForKeyedSubscript_(v22, v23, v209, v24, v25, v26);
    v213 = objc_msgSend_integerValue(v27, v28, v29, v30, v31, v32);

    v211 = objc_msgSend_pointCount(v16, v33, v34, v35, v36, v37);
    v207 = a6;
    v206 = a4;
    if (objc_msgSend_strokeCount(v16, v38, v39, v40, v41, v42))
    {
      v48 = objc_msgSend_strokeCount(v16, v43, v44, v45, v46, v47);
      if (v48 != 1)
      {
        if (!((v48 - 1) >> 61))
        {
          operator new();
        }

        sub_18368964C();
      }

      v54 = 0;
      v178 = 0;
      v55 = 0;
      for (i = objc_msgSend_strokeCount(v16, v49, v50, v51, v52, v53); v178 < i - 1; i = objc_msgSend_strokeCount(v214, v180, v181, v182, v183, v184))
      {
        v185 = objc_msgSend_pointCountForStrokeIndex_(v16, v43, v178, v45, v46, v47);
        if (v178)
        {
          v191 = v185;
        }

        else
        {
          v191 = v185 + 1;
        }

        if (a5)
        {
          v192 = objc_msgSend_sequenceCompression(a1, v186, v187, v188, v189, v190);
          v198 = objc_msgSend_sequenceCompression(a1, v193, v194, v195, v196, v197);
          v199 = v192 + v191 / v198 * v198 - v191;
        }

        else
        {
          v199 = 0;
        }

        if (v199 == objc_msgSend_sequenceCompression(a1, v186, v187, v188, v189, v190))
        {
          v200 = 0;
        }

        else
        {
          v200 = v199;
        }

        v201 = (v54 >> 3) + 1;
        if (v201 >> 61)
        {
          sub_18368964C();
        }

        if (v54 >> 3 != -1)
        {
          if (!(v201 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        v202 = (8 * (v54 >> 3));
        *v202 = v200;
        memcpy(0, 0, v54);
        v16 = v214;
        v54 = (v202 + 1);
        v55 += v200;
        ++v178;
      }
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    v61 = v55 + v211;
    if (objc_msgSend_padLastPoint(a1, v43, v44, v45, v46, v47) && v61 % objc_msgSend_sequenceCompression(a1, v56, v57, v58, v59, v60))
    {
      v67 = objc_msgSend_sequenceCompression(a1, v62, v63, v64, v65, v66);
      v73 = objc_msgSend_sequenceCompression(a1, v68, v69, v70, v71, v72);
      v74 = v67 + v61 / v73 * v73 - v61;
      v61 = v67 + v61 / v73 * v73;
    }

    else
    {
      v74 = 0;
    }

    v75 = objc_alloc(MEMORY[0x1E695FED0]);
    v220[0] = &unk_1EF1ED228;
    v80 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v76, v61, v77, v78, v79);
    v220[1] = v80;
    v86 = objc_msgSend_featureCounts(a1, v81, v82, v83, v84, v85);
    v203 = v54;
    v91 = objc_msgSend_objectForKeyedSubscript_(v86, v87, v209, v88, v89, v90);
    v220[2] = v91;
    v95 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v92, v220, 3, v93, v94);
    v215 = 0;
    v210 = objc_msgSend_initWithShape_dataType_error_(v75, v96, v95, 65568, &v215, v97);
    v208 = v215;

    if (v210)
    {
      v98 = v210;
      v104 = objc_msgSend_dataPointer(v210, v99, v100, v101, v102, v103);
      v205 = v74;
      v115 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v105, v106, v107, v108, v109);
      v116 = 0;
      v117 = 0;
      v118 = 4 * v213;
      v212 = v104;
      while (v117 < objc_msgSend_strokeCount(v16, v110, v111, v112, v113, v114))
      {
        v124 = 0;
        while (v124 < objc_msgSend_pointCountForStrokeIndex_(v16, v119, v117, v121, v122, v123))
        {
          objc_msgSend_pointForStrokeIndex_pointIndex_(v16, v110, v117, v124, v113, v114);
          v132 = v131;
          v134 = v133;
          v135 = v131 - a8;
          v136 = v133 - a9;
          v141 = atan2(v136, v135);
          if (v117 && !v124 && *(8 * v117 - 8) >= 1)
          {
            v142 = v141;
            v143 = 0;
            v144 = v104 + v118 * v116;
            do
            {
              *(v144 + 4 * a1[14]) = 0;
              *(v144 + 4 * a1[15]) = 0;
              *(v144 + 4 * a1[16]) = 0;
              *(v144 + 4 * a1[17]) = 0;
              objc_msgSend_addIndex_(v115, v137, v116 + v143++, v138, v139, v140);
              v144 += v118;
            }

            while (v143 < *(8 * v117 - 8));
            v116 += v143;
            v141 = v142;
            v104 = v212;
          }

          v125 = sqrt(v136 * v136 + v135 * v135);
          v126 = v104 + 4 * v116 * v213;
          *(v126 + 4 * a1[14]) = v125;
          v127 = __sincos_stret(v141);
          sinval = v127.__sinval;
          *(v126 + 4 * a1[15]) = sinval;
          cosval = v127.__cosval;
          *(v126 + 4 * a1[16]) = cosval;
          if (v124)
          {
            v130 = 0.0;
          }

          else
          {
            v130 = 1.0;
          }

          *(v126 + 4 * a1[17]) = v130;
          ++v116;
          ++v124;
          a9 = v134;
          a8 = v132;
          v16 = v214;
        }

        ++v117;
      }

      v145 = v104;
      v146 = v205;
      if (v205 >= 1)
      {
        v147 = v145 + v118 * v116;
        do
        {
          *(v147 + 4 * a1[14]) = 0;
          *(v147 + 4 * a1[15]) = 0;
          *(v147 + 4 * a1[16]) = 0;
          *(v147 + 4 * a1[17]) = 0;
          objc_msgSend_addIndex_(v115, v119, v116++, v121, v122, v123);
          v147 += v118;
          --v146;
        }

        while (v146);
      }

      if (v206)
      {
        v148 = objc_msgSend_distanceFeatureIndex(a1, v119, v120, v121, v122, v123);
        objc_msgSend_distMean(a1, v149, v150, v151, v152, v153);
        v155 = v154;
        objc_msgSend_distStd(a1, v156, v157, v158, v159, v160);
        sub_183827C1C(v145, v61, v213, v148, v115, v155, v161);
      }

      if (v207)
      {
        sub_18368A3D8(v207, 0, v203, v203 >> 3);
      }

      v162 = v210;

      v16 = v214;
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v163 = qword_1EA84DC58;
      if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
      {
        v169 = objc_msgSend_modelName(a1, v164, v165, v166, v167, v168);
        v175 = objc_msgSend_localizedDescription(v208, v170, v171, v172, v173, v174);
        *buf = 138412546;
        v217 = v169;
        v218 = 2112;
        v219 = v175;
        _os_log_impl(&dword_18366B000, v163, OS_LOG_TYPE_ERROR, "An error occurred when trying to allocate feature array for the %@ model: %@", buf, 0x16u);
      }

      if (a7)
      {
        v176 = v208;
        *a7 = v208;
      }
    }
  }

  else
  {
    v210 = 0;
  }

  return v210;
}

void sub_1837E7B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *__p, uint64_t a19, uint64_t a20, void *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1837E7CAC(void **a1, void *a2, void *a3)
{
  v315[2] = *MEMORY[0x1E69E9840];
  v296 = a2;
  v295 = a3;
  if (!a1)
  {
    v241 = 0;
    goto LABEL_57;
  }

  v297 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6, v7, v8, v9);
  v15 = objc_msgSend_directionalFeaturesInputName(a1, v10, v11, v12, v13, v14);
  objc_msgSend_setObject_forKey_(v297, v16, v296, v15, v17, v18);

  v24 = objc_msgSend_shape(v296, v19, v20, v21, v22, v23);
  v29 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 1, v26, v27, v28);
  objc_msgSend_floatValue(v29, v30, v31, v32, v33, v34);
  v36 = v35;
  v42 = objc_msgSend_sequenceCompression(a1, v37, v38, v39, v40, v41);

  v53 = vcvtps_s32_f32(v36 / v42);
  if (objc_msgSend_positionalEncodingsInputIndexCTC(a1, v43, v44, v45, v46, v47) < 0)
  {
    v299 = 0;
  }

  else
  {
    v54 = objc_msgSend_inputNames(a1, v48, v49, v50, v51, v52);
    v60 = objc_msgSend_positionalEncodingsInputIndexCTC(a1, v55, v56, v57, v58, v59);
    log = objc_msgSend_objectAtIndexedSubscript_(v54, v61, v60, v62, v63, v64);

    v70 = objc_msgSend_featureCounts(a1, v65, v66, v67, v68, v69);
    v75 = objc_msgSend_objectForKeyedSubscript_(v70, v71, log, v72, v73, v74);
    v81 = objc_msgSend_integerValue(v75, v76, v77, v78, v79, v80);
    v304 = 0;
    v82 = sub_1837AA4C8(v53, v81, &v304);
    v299 = v304;

    if (!v82)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v242 = qword_1EA84DC58;
      if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
      {
        v248 = objc_msgSend_modelName(a1, v243, v244, v245, v246, v247);
        v254 = objc_msgSend_localizedDescription(v299, v249, v250, v251, v252, v253);
        *v311 = 138412546;
        v312 = v248;
        v313 = 2112;
        v314 = v254;
        _os_log_impl(&dword_18366B000, v242, OS_LOG_TYPE_ERROR, "An error occurred when trying to allocate the input positional encodings for the %@ model: %@", v311, 0x16u);
      }

      goto LABEL_55;
    }

    objc_msgSend_setObject_forKey_(v297, v83, v82, log, v84, v85);
  }

  if ((objc_msgSend_positionalEncodingsInputIndexPrincipalPoints(a1, v48, v49, v50, v51, v52) & 0x8000000000000000) == 0)
  {
    v91 = objc_msgSend_inputNames(a1, v86, v87, v88, v89, v90);
    v97 = objc_msgSend_positionalEncodingsInputIndexPrincipalPoints(a1, v92, v93, v94, v95, v96);
    log = objc_msgSend_objectAtIndexedSubscript_(v91, v98, v97, v99, v100, v101);

    v107 = objc_msgSend_sequenceCompression(a1, v102, v103, v104, v105, v106);
    v113 = objc_msgSend_featureCounts(a1, v108, v109, v110, v111, v112);
    v118 = objc_msgSend_objectForKeyedSubscript_(v113, v114, log, v115, v116, v117);
    v124 = objc_msgSend_integerValue(v118, v119, v120, v121, v122, v123);
    v303 = v299;
    v125 = sub_1837AA4C8(v107 * v53, v124, &v303);
    v126 = v303;

    if (!v125)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v255 = qword_1EA84DC58;
      if (os_log_type_enabled(v255, OS_LOG_TYPE_ERROR))
      {
        v261 = objc_msgSend_modelName(a1, v256, v257, v258, v259, v260);
        v267 = objc_msgSend_localizedDescription(v126, v262, v263, v264, v265, v266);
        *v311 = 138412546;
        v312 = v261;
        v313 = 2112;
        v314 = v267;
        _os_log_impl(&dword_18366B000, v255, OS_LOG_TYPE_ERROR, "An error occurred when trying to allocate the input positional encodings for the %@ model: %@", v311, 0x16u);
      }

      goto LABEL_49;
    }

    objc_msgSend_setObject_forKey_(v297, v127, v125, log, v128, v129);

    v299 = v126;
  }

  if (objc_msgSend_localesEncodingInputIndex(a1, v86, v87, v88, v89, v90) < 0)
  {
    goto LABEL_33;
  }

  v135 = objc_msgSend_inputNames(a1, v130, v131, v132, v133, v134);
  v141 = objc_msgSend_localesEncodingInputIndex(a1, v136, v137, v138, v139, v140);
  log = objc_msgSend_objectAtIndexedSubscript_(v135, v142, v141, v143, v144, v145);

  v294 = v295;
  v146 = objc_alloc(MEMORY[0x1E695FED0]);
  v315[0] = &unk_1EF1ED228;
  v147 = MEMORY[0x1E696AD98];
  v153 = objc_msgSend_count(a1[23], v148, v149, v150, v151, v152);
  v158 = objc_msgSend_numberWithUnsignedInteger_(v147, v154, v153, v155, v156, v157);
  v315[1] = v158;
  v162 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v159, v315, 2, v160, v161);
  v168 = objc_msgSend_modelPrecisionDataType(a1, v163, v164, v165, v166, v167);
  v301 = objc_msgSend_initWithShape_dataType_error_(v146, v169, v162, v168, 0, v170);

  objc_msgSend_fillWithNumber_(v301, v171, &unk_1EF1EE050, v172, v173, v174);
  v175 = v294;
  if (!v294)
  {
    goto LABEL_31;
  }

  v307 = 0u;
  v308 = 0u;
  v305 = 0u;
  v306 = 0u;
  obj = v294;
  v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v176, &v305, v311, 16, v177);
  if (!v183)
  {
    goto LABEL_30;
  }

  v184 = *v306;
  do
  {
    for (i = 0; i != v183; ++i)
    {
      if (*v306 != v184)
      {
        objc_enumerationMutation(obj);
      }

      v186 = *(*(&v305 + 1) + 8 * i);
      v187 = a1[23];
      v188 = objc_msgSend_languageCode(v186, v178, v179, v180, v181, v182, v294);
      v193 = objc_msgSend_indexOfObject_(v187, v189, v188, v190, v191, v192);

      if (v193 != 0x7FFFFFFFFFFFFFFFLL || (v199 = a1[23], objc_msgSend_localeIdentifier(v186, v194, v195, v196, v197, v198), v200 = objc_claimAutoreleasedReturnValue(), v193 = objc_msgSend_indexOfObject_(v199, v201, v200, v202, v203, v204), v200, v193 != 0x7FFFFFFFFFFFFFFFLL))
      {
LABEL_14:
        objc_msgSend_setObject_atIndexedSubscript_(v301, v194, &unk_1EF1EE060, v193, v197, v198);
        continue;
      }

      v207 = objc_msgSend_languageCode(v186, v194, v205, v206, v197, v198);
      if (objc_msgSend_isEqualToString_(v207, v208, @"id", v209, v210, v211))
      {
      }

      else
      {
        v221 = objc_msgSend_languageCode(v186, v212, v213, v214, v215, v216);
        isEqualToString = objc_msgSend_isEqualToString_(v221, v222, @"ms", v223, v224, v225);

        if (!isEqualToString)
        {
          goto LABEL_24;
        }
      }

      v193 = objc_msgSend_indexOfObject_(a1[23], v217, @"id_ms", v218, v219, v220);
      if (v193 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_14;
      }

LABEL_24:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v227 = qword_1EA84DC58;
      if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
      {
        v233 = objc_msgSend_localeIdentifier(v186, v228, v229, v230, v231, v232);
        *buf = 138412290;
        v310 = v233;
        _os_log_impl(&dword_18366B000, v227, OS_LOG_TYPE_ERROR, "Unexpected locale %@ in locales encoding", buf, 0xCu);
      }
    }

    v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v178, &v305, v311, 16, v182);
  }

  while (v183);
LABEL_30:

  v175 = v294;
LABEL_31:

  if (v301)
  {
    objc_msgSend_setObject_forKey_(v297, v234, v301, log, v235, v236);

LABEL_33:
    v237 = objc_alloc(MEMORY[0x1E695FE48]);
    v302 = v299;
    v241 = objc_msgSend_initWithDictionary_error_(v237, v238, v297, &v302, v239, v240);
    v126 = v302;

    if (v241)
    {
      v299 = v126;
      goto LABEL_56;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    log = qword_1EA84DC58;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v273 = objc_msgSend_modelName(a1, v268, v269, v270, v271, v272);
      v279 = objc_msgSend_localizedDescription(v126, v274, v275, v276, v277, v278);
      *v311 = 138412546;
      v312 = v273;
      v313 = 2112;
      v314 = v279;
      _os_log_impl(&dword_18366B000, log, OS_LOG_TYPE_ERROR, "An error occurred when trying to create feature provider for the %@ model: %@", v311, 0x16u);
    }

LABEL_49:
    v299 = v126;
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v280 = qword_1EA84DC58;
    if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
    {
      v286 = objc_msgSend_modelName(a1, v281, v282, v283, v284, v285);
      v292 = objc_msgSend_localizedDescription(v299, v287, v288, v289, v290, v291);
      *v311 = 138412546;
      v312 = v286;
      v313 = 2112;
      v314 = v292;
      _os_log_impl(&dword_18366B000, v280, OS_LOG_TYPE_ERROR, "An error occurred when trying to allocate the locales encodings for the %@ model: %@", v311, 0x16u);
    }
  }

LABEL_55:

  v241 = 0;
LABEL_56:

LABEL_57:

  return v241;
}

void sub_1837EC088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, _Unwind_Exception *exception_objecta, void *a43, uint64_t a44, uint64_t a45, void *a46, void *a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1837359B8(&STACK[0x2A0]);

  _Unwind_Resume(a1);
}

void sub_1837ECA78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v151[3] = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4, a5, a6);
  v8 = objc_alloc(MEMORY[0x1E695FED0]);
  v151[0] = &unk_1EF1ED228;
  v151[1] = &unk_1EF1ED240;
  v14 = objc_msgSend_featureCounts(*(a1 + 32), v9, v10, v11, v12, v13);
  v20 = objc_msgSend_directionalFeaturesInputName(*(a1 + 32), v15, v16, v17, v18, v19);
  v25 = objc_msgSend_objectForKeyedSubscript_(v14, v21, v20, v22, v23, v24);
  v151[2] = v25;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v151, 3, v27, v28);
  v35 = objc_msgSend_modelPrecisionDataType(*(a1 + 32), v30, v31, v32, v33, v34);
  v38 = objc_msgSend_initWithShape_dataType_error_(v8, v36, v29, v35, 0, v37);

  v44 = objc_msgSend_directionalFeaturesInputName(*(a1 + 32), v39, v40, v41, v42, v43);
  objc_msgSend_setObject_forKey_(v7, v45, v38, v44, v46, v47);

  if ((objc_msgSend_positionalEncodingsInputIndexCTC(*(a1 + 32), v48, v49, v50, v51, v52) & 0x8000000000000000) == 0)
  {
    v58 = objc_msgSend_inputNames(*(a1 + 32), v53, v54, v55, v56, v57);
    v64 = objc_msgSend_positionalEncodingsInputIndexCTC(*(a1 + 32), v59, v60, v61, v62, v63);
    v69 = objc_msgSend_objectAtIndexedSubscript_(v58, v65, v64, v66, v67, v68);

    v70 = objc_alloc(MEMORY[0x1E695FED0]);
    v150[0] = &unk_1EF1ED228;
    v150[1] = &unk_1EF1ED228;
    v150[2] = &unk_1EF1ED228;
    v76 = objc_msgSend_featureCounts(*(a1 + 32), v71, v72, v73, v74, v75);
    v81 = objc_msgSend_objectForKeyedSubscript_(v76, v77, v69, v78, v79, v80);
    v150[3] = v81;
    v85 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v82, v150, 4, v83, v84);
    v91 = objc_msgSend_modelPrecisionDataType(*(a1 + 32), v86, v87, v88, v89, v90);
    v94 = objc_msgSend_initWithShape_dataType_error_(v70, v92, v85, v91, 0, v93);

    objc_msgSend_setObject_forKey_(v7, v95, v94, v69, v96, v97);
  }

  if ((objc_msgSend_positionalEncodingsInputIndexPrincipalPoints(*(a1 + 32), v53, v54, v55, v56, v57) & 0x8000000000000000) == 0)
  {
    v103 = objc_msgSend_inputNames(*(a1 + 32), v98, v99, v100, v101, v102);
    v109 = objc_msgSend_positionalEncodingsInputIndexPrincipalPoints(*(a1 + 32), v104, v105, v106, v107, v108);
    v114 = objc_msgSend_objectAtIndexedSubscript_(v103, v110, v109, v111, v112, v113);

    v115 = objc_alloc(MEMORY[0x1E695FED0]);
    v121 = objc_msgSend_featureCounts(*(a1 + 32), v116, v117, v118, v119, v120, &unk_1EF1ED228, &unk_1EF1ED240, &unk_1EF1ED228);
    v126 = objc_msgSend_objectForKeyedSubscript_(v121, v122, v114, v123, v124, v125);
    v149[3] = v126;
    v130 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v127, v149, 4, v128, v129);
    v136 = objc_msgSend_modelPrecisionDataType(*(a1 + 32), v131, v132, v133, v134, v135);
    v139 = objc_msgSend_initWithShape_dataType_error_(v115, v137, v130, v136, 0, v138);

    objc_msgSend_setObject_forKey_(v7, v140, v139, v114, v141, v142);
  }

  v143 = objc_alloc(MEMORY[0x1E695FE48]);
  v147 = objc_msgSend_initWithDictionary_error_(v143, v144, v7, 0, v145, v146);
  v148 = qword_1EA84DB10;
  qword_1EA84DB10 = v147;
}

void sub_1837ED284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1837ED2B4(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, unint64_t a5, BOOL *a6, _BYTE *a7)
{
  if (!a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v11 = expf(*a4);
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v11;
  v12 = sub_1838B8A5C(*(*(a1 + 32) + 176), a5);
  result = objc_msgSend_longCharacterIsMember_(*(a1 + 40), v13, *v12, v14, v15, v16);
  if (result)
  {
    v18 = *(a1 + 64);
    if (v18 <= v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = v18;
      *a7 = 1;
    }
  }

  *a6 = 1.0 - *(*(*(a1 + 48) + 8) + 24) < *(a1 + 64);
  return result;
}

void sub_1837ED49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1837ED4D0(uint64_t result, uint64_t a2, uint64_t a3, float *a4, unint64_t a5, BOOL *a6)
{
  v6 = *(result + 32);
  if (v6[25] != a5 && v6[26] != a5 && v6[27] != a5)
  {
    if (!a3)
    {
      *(*(*(result + 40) + 8) + 24) = 0;
    }

    v9 = result;
    v10 = expf(*a4);
    *(*(v9[5] + 8) + 24) = *(*(v9[5] + 8) + 24) + v10;
    result = sub_1838B8A5C(*(v9[4] + 176), a5);
    v11 = *(v9[6] + 8);
    v12 = *(v11 + 24);
    if (v12 <= v10)
    {
      v13 = *result;
      *(v11 + 24) = v10;
      *(*(v9[7] + 8) + 24) = v13;
      v12 = *(*(v9[6] + 8) + 24);
    }

    *a6 = 1.0 - *(*(v9[5] + 8) + 24) < v12;
  }

  return result;
}

void sub_1837ED80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  _Block_object_dispose(&a26, 8);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v36 - 144), 8);
  _Block_object_dispose((v36 - 112), 8);

  _Unwind_Resume(a1);
}

__n128 sub_1837ED888(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1837ED8AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1837ED8C4(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, unint64_t a5)
{
  if (!a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v9 = expf(*a4);
  v10 = sub_1838B8A5C(*(*(a1 + 32) + 176), a5);
  IsMember = objc_msgSend_longCharacterIsMember_(*(a1 + 40), v11, *v10, v12, v13, v14);
  v16 = *(a1 + 32);
  v17 = v16[27];
  v18 = v16[25];
  v19 = v16[26];
  v21 = v18 == a5 || v19 == a5 || v17 == a5;
  if (!v21 && (IsMember & 1) == 0)
  {
    *a4 = -126.0;
  }

  if (v18 == a5)
  {
    v22 = 56;
LABEL_14:
    *(*(*(a1 + v22) + 8) + 24) = *(*(*(a1 + v22) + 8) + 24) + v9;
    goto LABEL_20;
  }

  if (v19 == a5)
  {
    v23 = 1;
  }

  else
  {
    v23 = IsMember;
  }

  v22 = 48;
  if ((v23 & 1) != 0 || v17 == a5)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (*(a1 + 72) - 1 == a3)
  {
    v24 = log(*(*(*(a1 + 48) + 8) + 24) / (1.0 - *(*(*(a1 + 56) + 8) + 24)));
    v25 = *(*(a1 + 64) + 8);
    v27 = v25[7];
    v26 = v25[8];
    if (v27 >= v26)
    {
      v29 = v25[6];
      v30 = v27 - v29;
      v31 = (v27 - v29) >> 3;
      v32 = v31 + 1;
      if ((v31 + 1) >> 61)
      {
        sub_1836D58DC();
      }

      v33 = v26 - v29;
      if (v33 >> 2 > v32)
      {
        v32 = v33 >> 2;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        v34 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (!(v34 >> 61))
        {
          operator new();
        }

        sub_183688F00();
      }

      v35 = (v27 - v29) >> 3;
      v36 = (8 * v31);
      v37 = (8 * v31 - 8 * v35);
      *v36 = v24;
      v28 = v36 + 1;
      memcpy(v37, v29, v30);
      v25[6] = v37;
      v25[7] = v28;
      v25[8] = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v27 = v24;
      v28 = v27 + 1;
    }

    v25[7] = v28;
  }
}

float sub_1837EDAD4(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5)
{
  if (*(*(a1 + 32) + 200) != a5)
  {
    result = *a4 - *(*(*(*(a1 + 40) + 8) + 48) + 8 * a2);
    *a4 = result;
  }

  return result;
}

void *sub_1837EDF28(void *result, void *a2)
{
  result[1] = 0;
  v2 = result + 1;
  result[2] = 0;
  *result = result + 1;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = result;
    do
    {
      result = sub_18368D5C4(v5, v2, &v10, &v9, v4 + 4);
      if (!*result)
      {
        operator new();
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

void sub_1837EE4EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_copy(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_1837EE9C8(uint64_t a1, void *a2, void *a3, NSObject **a4, void *a5, uint64_t a6)
{
  v821 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v804 = a3;
  objc_opt_self();
  v13 = objc_msgSend_count(v7, v8, v9, v10, v11, v12);
  if (v13 != objc_msgSend_count(v804, v14, v15, v16, v17, v18))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v24 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v818 = objc_msgSend_count(v7, v25, v26, v27, v28, v29);
      v819 = 2048;
      v820 = objc_msgSend_count(v804, v30, v31, v32, v33, v34);
      _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "transcriptionPaths count (%ld) != probabilities count (%ld)", buf, 0x16u);
    }
  }

  v35 = objc_msgSend_count(v7, v19, v20, v21, v22, v23, a6);
  if (v35 != objc_msgSend_count(v804, v36, v37, v38, v39, v40))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v46 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      v52 = objc_msgSend_count(v7, v47, v48, v49, v50, v51);
      v58 = objc_msgSend_count(v804, v53, v54, v55, v56, v57);
      *buf = 134218240;
      v818 = v52;
      v819 = 2048;
      v820 = v58;
      _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_FAULT, "transcriptionPaths count (%ld) != probabilities count (%ld)", buf, 0x16u);
    }
  }

  v795 = objc_msgSend_array(MEMORY[0x1E695DF70], v41, v42, v43, v44, v45);
  v796 = objc_msgSend_array(MEMORY[0x1E695DF70], v59, v60, v61, v62, v63);
  v69 = 0;
  v798 = 0;
  v70 = 0x7FFFFFFFFFFFFFFFLL;
  while (v69 < objc_msgSend_count(v7, v64, v65, v66, v67, v68))
  {
    v75 = objc_msgSend_objectAtIndexedSubscript_(v7, v71, v69, v72, v73, v74);
    v81 = objc_msgSend_count(v75, v76, v77, v78, v79, v80) == 0;

    if (v81)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v87 = qword_1EA84DC58;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v818 = v69;
        _os_log_impl(&dword_18366B000, v87, OS_LOG_TYPE_ERROR, "Skipping path with no tokens at index %lu when initializing tokenized text result. ", buf, 0xCu);
      }
    }

    else
    {
      if (v70 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v70 = v69;
      }

      v87 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v82, v83, v84, v85, v86);
      v813 = 0u;
      v814 = 0u;
      v811 = 0u;
      v812 = 0u;
      v92 = objc_msgSend_objectAtIndexedSubscript_(v7, v88, v69, v89, v90, v91);
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v811, v816, 16, v94);
      if (v100)
      {
        v101 = *v812;
        do
        {
          for (i = 0; i != v100; ++i)
          {
            if (*v812 != v101)
            {
              objc_enumerationMutation(v92);
            }

            v103 = objc_msgSend_strokeIndexes(*(*(&v811 + 1) + 8 * i), v95, v96, v97, v98, v99);
            objc_msgSend_addIndexes_(v87, v104, v103, v105, v106, v107);
          }

          v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v95, &v811, v816, 16, v99);
        }

        while (v100);
      }

      if (v69 == v70)
      {
        v112 = v87;

        v117 = objc_msgSend_objectAtIndexedSubscript_(v7, v113, v69, v114, v115, v116);
        objc_msgSend_addObject_(v795, v118, v117, v119, v120, v121);

        v126 = objc_msgSend_objectAtIndexedSubscript_(v804, v122, v69, v123, v124, v125);
        objc_msgSend_addObject_(v796, v127, v126, v128, v129, v130);
        v798 = v112;
      }

      else if (objc_msgSend_isEqualToIndexSet_(v87, v108, v798, v109, v110, v111))
      {
        v135 = objc_msgSend_objectAtIndexedSubscript_(v7, v131, v69, v132, v133, v134);
        objc_msgSend_addObject_(v795, v136, v135, v137, v138, v139);

        v126 = objc_msgSend_objectAtIndexedSubscript_(v804, v140, v69, v141, v142, v143);
        objc_msgSend_addObject_(v796, v144, v126, v145, v146, v147);
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v126 = qword_1EA84DC58;
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v818 = v69;
          _os_log_impl(&dword_18366B000, v126, OS_LOG_TYPE_ERROR, "Skipping path at index %lu which doesn't cover the same strokes as the top path when initializing tokenized text result.", buf, 0xCu);
        }
      }
    }

    ++v69;
  }

  v806 = v795;

  v794 = v796;
  if (!objc_msgSend_count(v806, v148, v149, v150, v151, v152))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v174 = qword_1EA84DC58;
    if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v174, OS_LOG_TYPE_ERROR, "Found no valid token paths when initializing tokenized text result.", buf, 2u);
    }

    goto LABEL_166;
  }

  v801 = objc_msgSend_array(MEMORY[0x1E695DF70], v153, v154, v155, v156, v157);
  v799 = objc_msgSend_array(MEMORY[0x1E695DF70], v158, v159, v160, v161, v162);
  v168 = objc_msgSend_count(v806, v163, v164, v165, v166, v167);
  if (v168)
  {
    if (!(v168 >> 61))
    {
      operator new();
    }

    sub_18368964C();
  }

  v800 = objc_msgSend_array(MEMORY[0x1E695DF70], v169, v170, v171, v172, v173);
  v805 = objc_msgSend_array(MEMORY[0x1E695DF70], v175, v176, v177, v178, v179);
  for (j = 0; j < objc_msgSend_count(v806, v180, v181, v182, v183, v184); ++j)
  {
    v191 = objc_msgSend_array(MEMORY[0x1E695DF70], v186, v187, v188, v189, v190);
    objc_msgSend_addObject_(v805, v192, v191, v193, v194, v195);

    v201 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v196, v197, v198, v199, v200);
    objc_msgSend_addObject_(v800, v202, v201, v203, v204, v205);
  }

  v803 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v186, v187, v188, v189, v190);
  v802 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v206, v207, v208, v209, v210);
LABEL_51:
  v221 = objc_msgSend_copy(v803, v211, v212, v213, v214, v215);
  for (k = 0; k < objc_msgSend_count(v806, v216, v217, v218, v219, v220); ++k)
  {
    v228 = objc_msgSend_objectAtIndexedSubscript_(v800, v223, k, v225, v226, v227);
    v234 = objc_msgSend_mutableCopy(v802, v229, v230, v231, v232, v233);
    objc_msgSend_removeIndexes_(v234, v235, v228, v236, v237, v238);
    v239 = *(8 * k);
    v244 = objc_msgSend_objectAtIndexedSubscript_(v806, v240, k, v241, v242, v243);
    if (v239 < objc_msgSend_count(v244, v245, v246, v247, v248, v249))
    {
      v254 = objc_msgSend_objectAtIndexedSubscript_(v806, v250, k, v251, v252, v253);
      v259 = objc_msgSend_objectAtIndexedSubscript_(v254, v255, v239, v256, v257, v258);

      if (!v259)
      {
        goto LABEL_63;
      }

      while (1)
      {
        if (objc_msgSend_count(v228, v260, v261, v262, v263, v264))
        {
          if (!objc_msgSend_count(v234, v265, v266, v267, v268, v269))
          {
            v271 = objc_msgSend_strokeIndexes(v259, v265, v270, v267, v268, v269);
            v276 = objc_msgSend_ch_intersectsIndexSet_(v271, v272, v803, v273, v274, v275);

            if (!v276)
            {
              break;
            }
          }
        }

        v277 = objc_msgSend_objectAtIndexedSubscript_(v805, v265, k, v267, v268, v269);
        objc_msgSend_addObject_(v277, v278, v259, v279, v280, v281);

        v287 = objc_msgSend_strokeIndexes(v259, v282, v283, v284, v285, v286);
        objc_msgSend_addIndexes_(v228, v288, v287, v289, v290, v291);

        v297 = objc_msgSend_strokeIndexes(v259, v292, v293, v294, v295, v296);
        objc_msgSend_addIndexes_(v802, v298, v297, v299, v300, v301);

        v307 = objc_msgSend_strokeIndexes(v259, v302, v303, v304, v305, v306);
        objc_msgSend_addIndexes_(v803, v308, v307, v309, v310, v311);

        v317 = objc_msgSend_strokeIndexes(v259, v312, v313, v314, v315, v316);
        objc_msgSend_removeIndexes_(v234, v318, v317, v319, v320, v321);

        v322 = *(8 * k) + 1;
        *(8 * k) = v322;
        v244 = objc_msgSend_objectAtIndexedSubscript_(v806, v323, k, v324, v325, v326);
        if (v322 >= objc_msgSend_count(v244, v327, v328, v329, v330, v331))
        {

          goto LABEL_62;
        }

        v336 = objc_msgSend_objectAtIndexedSubscript_(v806, v332, k, v333, v334, v335);
        v341 = objc_msgSend_objectAtIndexedSubscript_(v336, v337, v322, v338, v339, v340);

        v259 = v341;
        if (!v341)
        {
          v244 = 0;
          goto LABEL_62;
        }
      }

      v244 = v259;
    }

LABEL_62:

LABEL_63:
  }

  v342 = 0;
  while (v342 < objc_msgSend_count(v806, v223, v224, v225, v226, v227))
  {
    v347 = objc_msgSend_objectAtIndexedSubscript_(v800, v343, v342, v344, v345, v346);
    v353 = objc_msgSend_mutableCopy(v347, v348, v349, v350, v351, v352);

    objc_msgSend_addIndexes_(v353, v354, v221, v355, v356, v357);
    LOBYTE(v347) = objc_msgSend_isEqualToIndexSet_(v353, v358, v803, v359, v360, v361);

    ++v342;
    if ((v347 & 1) == 0)
    {
LABEL_96:

      goto LABEL_51;
    }
  }

  v221 = objc_msgSend_array(MEMORY[0x1E695DF70], v362, v363, v364, v365, v366);
  for (m = 0; m < objc_msgSend_count(v805, v367, v368, v369, v370, v371); ++m)
  {
    v377 = objc_msgSend_objectAtIndexedSubscript_(v805, v373, m, v374, v375, v376);
    if (!objc_msgSend_count(v377, v378, v379, v380, v381, v382))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v388 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v388, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v388, OS_LOG_TYPE_ERROR, "Found empty row when creating result with best path tokens. It indicates that the given paths don't cover the same strokes.", buf, 2u);
      }
    }

    if (!objc_msgSend_count(v377, v383, v384, v385, v386, v387))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v394 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v394, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v394, OS_LOG_TYPE_FAULT, "Found empty row when creating result with best path tokens. It indicates that the given paths don't cover the same strokes.", buf, 2u);
      }
    }

    v395 = objc_msgSend_count(v221, v389, v390, v391, v392, v393);
    if (objc_msgSend_count(v377, v396, v397, v398, v399, v400))
    {
      v406 = objc_opt_class();
      v395 = objc_msgSend_mergeTokenRow_intoUniqueRows_(v406, v407, v377, v221, v408, v409);
    }

    if (objc_msgSend_count(v799, v401, v402, v403, v404, v405) <= m)
    {
      v414 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v410, v395, v411, v412, v413);
      objc_msgSend_addObject_(v799, v423, v414, v424, v425, v426);
    }

    else
    {
      v414 = objc_msgSend_objectAtIndexedSubscript_(v799, v410, m, v411, v412, v413);
      v419 = objc_msgSend_indexPathByAddingIndex_(v414, v415, v395, v416, v417, v418);
      objc_msgSend_setObject_atIndexedSubscript_(v799, v420, v419, m, v421, v422);
    }
  }

  v427 = [CHTokenizedResultColumn alloc];
  v432 = objc_msgSend_initWithTokenRows_(v427, v428, v221, v429, v430, v431);
  objc_msgSend_addObject_(v801, v433, v432, v434, v435, v436);
  objc_msgSend_removeAllIndexes(v802, v437, v438, v439, v440, v441);
  for (n = 0; n < objc_msgSend_count(v806, v442, v443, v444, v445, v446); ++n)
  {
    v453 = objc_msgSend_array(MEMORY[0x1E695DF70], v448, v449, v450, v451, v452);
    objc_msgSend_setObject_atIndexedSubscript_(v805, v454, v453, n, v455, v456);

    v461 = objc_msgSend_objectAtIndexedSubscript_(v800, v457, n, v458, v459, v460);
    objc_msgSend_removeAllIndexes(v461, v462, v463, v464, v465, v466);
  }

  v467 = 0;
  while (v467 < objc_msgSend_count(v806, v448, v449, v450, v451, v452))
  {
    v472 = *(8 * v467);
    v473 = objc_msgSend_objectAtIndexedSubscript_(v806, v468, v467, v469, v470, v471);
    LOBYTE(v472) = v472 == objc_msgSend_count(v473, v474, v475, v476, v477, v478);

    ++v467;
    if ((v472 & 1) == 0)
    {

      goto LABEL_96;
    }
  }

  v484 = objc_msgSend_count(v799, v479, v480, v481, v482, v483);
  if (v484 != objc_msgSend_count(v794, v485, v486, v487, v488, v489))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v495 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v495, OS_LOG_TYPE_ERROR))
    {
      v501 = objc_msgSend_count(v799, v496, v497, v498, v499, v500);
      v507 = objc_msgSend_count(v794, v502, v503, v504, v505, v506);
      *buf = 134218240;
      v818 = v501;
      v819 = 2048;
      v820 = v507;
      _os_log_impl(&dword_18366B000, v495, OS_LOG_TYPE_ERROR, "transcriptionPaths count (%ld) != probabilities count (%ld) after tokenized result is built", buf, 0x16u);
    }
  }

  v508 = objc_msgSend_count(v799, v490, v491, v492, v493, v494);
  if (v508 != objc_msgSend_count(v794, v509, v510, v511, v512, v513))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v519 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v519, OS_LOG_TYPE_FAULT))
    {
      v525 = objc_msgSend_count(v799, v520, v521, v522, v523, v524);
      v531 = objc_msgSend_count(v794, v526, v527, v528, v529, v530);
      *buf = 134218240;
      v818 = v525;
      v819 = 2048;
      v820 = v531;
      _os_log_impl(&dword_18366B000, v519, OS_LOG_TYPE_FAULT, "transcriptionPaths count (%ld) != probabilities count (%ld) after tokenized result is built", buf, 0x16u);
    }
  }

  v532 = MEMORY[0x1E695DF70];
  v533 = objc_msgSend_firstObject(v799, v514, v515, v516, v517, v518);
  v538 = objc_msgSend_arrayWithObject_(v532, v534, v533, v535, v536, v537);

  v539 = MEMORY[0x1E695DF70];
  v545 = objc_msgSend_firstObject(v794, v540, v541, v542, v543, v544);
  v793 = objc_msgSend_arrayWithObject_(v539, v546, v545, v547, v548, v549);

  for (ii = 1; ii < objc_msgSend_count(v799, v550, v551, v552, v553, v554); ++ii)
  {
    v561 = objc_msgSend_objectAtIndexedSubscript_(v799, v556, ii, v558, v559, v560);
    v566 = objc_msgSend_containsObject_(v538, v562, v561, v563, v564, v565);

    if ((v566 & 1) == 0)
    {
      v567 = objc_msgSend_objectAtIndexedSubscript_(v799, v550, ii, v552, v553, v554);
      objc_msgSend_addObject_(v538, v568, v567, v569, v570, v571);

      v576 = objc_msgSend_objectAtIndexedSubscript_(v794, v572, ii, v573, v574, v575);
      objc_msgSend_addObject_(v793, v577, v576, v578, v579, v580);
    }
  }

  v792 = objc_msgSend_set(MEMORY[0x1E695DFA8], v556, v557, v558, v559, v560);
  v791 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v581, v582, v583, v584, v585);
  for (jj = 0; jj < objc_msgSend_count(v538, v586, v587, v588, v589, v590); ++jj)
  {
    v595 = objc_msgSend_objectAtIndexedSubscript_(v538, v591, jj, v592, v593, v594);
    v606 = objc_msgSend_string(MEMORY[0x1E696AD60], v596, v597, v598, v599, v600);
    for (kk = 0; kk < objc_msgSend_count(v801, v601, v602, v603, v604, v605); ++kk)
    {
      v612 = objc_msgSend_objectAtIndexedSubscript_(v801, v608, kk, v609, v610, v611);
      v618 = objc_msgSend_textTokenRows(v612, v613, v614, v615, v616, v617);
      v623 = objc_msgSend_indexAtPosition_(v595, v619, kk, v620, v621, v622);
      v628 = objc_msgSend_objectAtIndexedSubscript_(v618, v624, v623, v625, v626, v627);

      v809 = 0u;
      v810 = 0u;
      v807 = 0u;
      v808 = 0u;
      v629 = v628;
      v637 = objc_msgSend_countByEnumeratingWithState_objects_count_(v629, v630, &v807, v815, 16, v631);
      if (v637)
      {
        v638 = *v808;
        do
        {
          for (mm = 0; mm != v637; ++mm)
          {
            if (*v808 != v638)
            {
              objc_enumerationMutation(v629);
            }

            v640 = *(*(&v807 + 1) + 8 * mm);
            if ((objc_msgSend_properties(v640, v632, v633, v634, v635, v636) & 0x20) != 0)
            {
              objc_msgSend_appendString_(v606, v641, @" ", v643, v644, v645);
            }

            v646 = objc_msgSend_string(v640, v641, v642, v643, v644, v645);
            objc_msgSend_appendString_(v606, v647, v646, v648, v649, v650);
          }

          v637 = objc_msgSend_countByEnumeratingWithState_objects_count_(v629, v632, &v807, v815, 16, v636);
        }

        while (v637);
      }
    }

    if (objc_msgSend_containsObject_(v792, v608, v606, v609, v610, v611))
    {
      objc_msgSend_addIndex_(v791, v651, jj, v652, v653, v654);
    }

    else
    {
      objc_msgSend_addObject_(v792, v651, v606, v652, v653, v654);
    }
  }

  if (objc_msgSend_count(v791, v591, jj, v592, v593, v594))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v655 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v655, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v655, OS_LOG_TYPE_DEBUG, "Found different segmentation leading to the same transcription. Deduping keeping the transcription path closer to the top.", buf, 2u);
    }

    objc_msgSend_removeObjectsAtIndexes_(v538, v656, v791, v657, v658, v659);
    objc_msgSend_removeObjectsAtIndexes_(v793, v660, v791, v661, v662, v663);
    v174 = objc_msgSend_array(MEMORY[0x1E695DF70], v664, v665, v666, v667, v668);
    v679 = objc_msgSend_array(MEMORY[0x1E695DF70], v669, v670, v671, v672, v673);
    for (nn = 0; nn < objc_msgSend_count(v801, v674, v675, v676, v677, v678); ++nn)
    {
      v685 = objc_msgSend_objectAtIndexedSubscript_(v801, v681, nn, v682, v683, v684);
      v696 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v686, v687, v688, v689, v690);
      for (i1 = 0; ; ++i1)
      {
        v698 = objc_msgSend_textTokenRows(v685, v691, v692, v693, v694, v695);
        v704 = i1 < objc_msgSend_count(v698, v699, v700, v701, v702, v703);

        if (!v704)
        {
          break;
        }

        v705 = 0;
        while (v705 < objc_msgSend_count(v538, v691, v692, v693, v694, v695))
        {
          v710 = objc_msgSend_objectAtIndexedSubscript_(v538, v706, v705, v707, v708, v709);
          v715 = objc_msgSend_indexAtPosition_(v710, v711, nn, v712, v713, v714) == i1;

          ++v705;
          if (v715)
          {
            goto LABEL_141;
          }
        }

        objc_msgSend_addIndex_(v696, v706, i1, v707, v708, v709);
LABEL_141:
        ;
      }

      for (i2 = 0; i2 < objc_msgSend_count(v538, v691, v692, v693, v694, v695); ++i2)
      {
        v722 = objc_msgSend_objectAtIndexedSubscript_(v538, v717, i2, v719, v720, v721);
        v727 = objc_msgSend_indexAtPosition_(v722, v723, nn, v724, v725, v726);

        v740 = v727 - objc_msgSend_countOfIndexesInRange_(v696, v728, 0, v727, v729, v730);
        if (objc_msgSend_count(v679, v731, v732, v733, v734, v735) <= i2)
        {
          v741 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v736, v740, v737, v738, v739);
          objc_msgSend_addObject_(v679, v750, v741, v751, v752, v753);
        }

        else
        {
          v741 = objc_msgSend_objectAtIndexedSubscript_(v679, v736, i2, v737, v738, v739);
          v746 = objc_msgSend_indexPathByAddingIndex_(v741, v742, v740, v743, v744, v745);
          objc_msgSend_setObject_atIndexedSubscript_(v679, v747, v746, i2, v748, v749);
        }
      }

      if (objc_msgSend_count(v696, v717, v718, v719, v720, v721))
      {
        v759 = objc_msgSend_textTokenRows(v685, v754, v755, v756, v757, v758);
        v765 = objc_msgSend_mutableCopy(v759, v760, v761, v762, v763, v764);

        objc_msgSend_removeObjectsAtIndexes_(v765, v766, v696, v767, v768, v769);
        v770 = [CHTokenizedResultColumn alloc];
        v775 = objc_msgSend_initWithTokenRows_(v770, v771, v765, v772, v773, v774);
        objc_msgSend_addObject_(v174, v776, v775, v777, v778, v779);
      }

      else
      {
        v765 = objc_msgSend_objectAtIndexedSubscript_(v801, v754, nn, v756, v757, v758);
        objc_msgSend_addObject_(v174, v780, v765, v781, v782, v783);
      }
    }

    if (a4)
    {
LABEL_158:
      v784 = v174;
      *a4 = v174;
      if (!a5)
      {
        goto LABEL_159;
      }

LABEL_163:
      v785 = v679;
      *a5 = v679;
      if (v788)
      {
        goto LABEL_164;
      }

      goto LABEL_165;
    }
  }

  else
  {
    v679 = v538;
    v174 = v801;
    if (a4)
    {
      goto LABEL_158;
    }
  }

  if (a5)
  {
    goto LABEL_163;
  }

LABEL_159:
  if (v788)
  {
LABEL_164:
    v786 = v793;
    *v788 = v793;
  }

LABEL_165:

LABEL_166:
}