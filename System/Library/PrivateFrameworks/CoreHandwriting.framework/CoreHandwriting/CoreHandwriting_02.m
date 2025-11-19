void sub_1836A8BEC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_1836A9AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (a1 == v3)
    {
      a1 = 1;
    }

    else
    {
      v77.receiver = a1;
      v77.super_class = CHTokenizedTextResultToken;
      if (!objc_msgSendSuper2(&v77, sel_isEqualToTokenizedResultToken_, v3))
      {
        goto LABEL_17;
      }

      v10 = *(a1 + 56);
      if (v10 != objc_msgSend_wordID(v4, v5, v6, v7, v8, v9))
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 64);
      objc_msgSend_modelScore(v4, v11, v12, v13, v14, v15);
      if (vabdd_f64(v16, v22) >= 2.22044605e-16)
      {
        goto LABEL_17;
      }

      v23 = *(a1 + 72);
      objc_msgSend_recognitionScore(v4, v17, v18, v19, v20, v21);
      if (vabdd_f64(v23, v29) >= 2.22044605e-16)
      {
        goto LABEL_17;
      }

      v30 = *(a1 + 80);
      objc_msgSend_combinedScore(v4, v24, v25, v26, v27, v28);
      if (vabdd_f64(v30, v36) >= 2.22044605e-16)
      {
        goto LABEL_17;
      }

      v37 = *(a1 + 88);
      objc_msgSend_alignmentScore(v4, v31, v32, v33, v34, v35);
      if (vabdd_f64(v37, v43) >= 2.22044605e-16)
      {
        goto LABEL_17;
      }

      v44 = *(a1 + 96);
      if (v44 != objc_msgSend_properties(v4, v38, v39, v40, v41, v42))
      {
        goto LABEL_17;
      }

      v50 = *(a1 + 104);
      v51 = objc_msgSend_recognizerSourceLocale(v4, v45, v46, v47, v48, v49);
      v57 = v51;
      if (v50 == v51)
      {
      }

      else
      {
        v58 = *(a1 + 104);
        v59 = objc_msgSend_recognizerSourceLocale(v4, v52, v53, v54, v55, v56);
        LODWORD(v58) = objc_msgSend_isEqual_(v58, v60, v59, v61, v62, v63);

        if (!v58)
        {
          goto LABEL_17;
        }
      }

      v69 = *(a1 + 112);
      if (v69 != objc_msgSend_inputSources(v4, v64, v65, v66, v67, v68))
      {
LABEL_17:
        a1 = 0;
        goto LABEL_18;
      }

      v75 = *(a1 + 120);
      a1 = v75 == objc_msgSend_substrokeCount(v4, v70, v71, v72, v73, v74);
    }
  }

LABEL_18:

  return a1;
}

uint64_t sub_1836A9E20(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_msgSend_bounds(v4, v6, v7, v8, v9, v10);
  MidX = CGRectGetMidX(v20);
  objc_msgSend_bounds(v5, v12, v13, v14, v15, v16);
  v17 = CGRectGetMidX(v21);
  if (MidX < v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = MidX > v17;
  }

  return v18;
}

void sub_1836AA78C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v98 = v3;
    v9 = objc_msgSend_properties(v3, v4, v5, v6, v7, v8);
    v10 = @" ";
    if ((v9 & 0x20) == 0)
    {
      v10 = &stru_1EF1C0318;
    }

    v11 = v10;
    v12 = *(a1 + 304);
    v18 = objc_msgSend_string(v98, v13, v14, v15, v16, v17);
    v23 = objc_msgSend_stringByAppendingFormat_(v12, v19, @"%@%@", v20, v21, v22, v11, v18);
    v24 = *(a1 + 304);
    *(a1 + 304) = v23;

    v30 = objc_msgSend_mutableCopy(*(a1 + 312), v25, v26, v27, v28, v29);
    v36 = objc_msgSend_strokeIndexes(v98, v31, v32, v33, v34, v35);
    objc_msgSend_addIndexes_(v30, v37, v36, v38, v39, v40);

    objc_storeStrong((a1 + 312), v30);
    *(a1 + 120) += objc_msgSend_substrokeCount(v98, v41, v42, v43, v44, v45);
    objc_msgSend_recognitionScore(v98, v46, v47, v48, v49, v50);
    *(a1 + 72) = v51 * *(a1 + 72);
    objc_msgSend_combinedScore(v98, v52, v53, v54, v55, v56);
    *(a1 + 80) = v57 * *(a1 + 80);
    objc_msgSend_alignmentScore(v98, v58, v59, v60, v61, v62);
    *(a1 + 88) = v63;
    v64 = *(a1 + 320);
    v65 = *(a1 + 328);
    v66 = *(a1 + 336);
    v67 = *(a1 + 344);
    objc_msgSend_bounds(v98, v68, v69, v70, v71, v72);
    v101.origin.x = v73;
    v101.origin.y = v74;
    v101.size.width = v75;
    v101.size.height = v76;
    v100.origin.x = v64;
    v100.origin.y = v65;
    v100.size.width = v66;
    v100.size.height = v67;
    *(a1 + 320) = CGRectUnion(v100, v101);
    v77 = *(a1 + 112);
    v83 = objc_msgSend_inputSources(v98, v78, v79, v80, v81, v82);
    v84 = *(a1 + 112);
    v90 = objc_msgSend_inputSources(v98, v85, v86, v87, v88, v89);
    v96 = v83 | v77;
    if ((v90 & 4) == 0 || (v84 & 4) == 0)
    {
      v96 &= ~4uLL;
    }

    *(a1 + 112) = v96;
    if ((objc_msgSend_properties(v98, v91, v92, v93, v94, v95) & 0x10) != 0)
    {
      *(a1 + 96) |= 0x10uLL;
    }

    v3 = v98;
  }
}

uint64_t sub_1836AAB60(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v8 = a1;
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
  }

  v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], a2, v8, 4, a5, a6);
  if (v9)
  {
    if (v7)
    {
      v10 = MGGetBoolAnswer() ^ 1;
    }

    else
    {
      v10 = 1;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC58;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v36 = v10;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEBUG, "Model execution on CPU only: %d", buf, 8u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC58;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v36 = a3;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEBUG, "Model batch size: %d", buf, 8u);
    }

    v13 = v10 ^ 1;
    if (a3 < 2)
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v14 = qword_1EA84DC58;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v36 = 1;
        *&v36[4] = 1024;
        *&v36[6] = 1;
        _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "Falling back to a batch size of %u for usesCPUOnly == %d", buf, 0xEu);
      }
    }

    v15 = objc_alloc(MEMORY[0x1E695FEB0]);
    if (v10)
    {
      v20 = objc_msgSend_initWithComputeUnits_(v15, v16, 0, v17, v18, v19);
    }

    else
    {
      v20 = objc_msgSend_initWithComputeUnits_(v15, v16, 2, v17, v18, v19);
    }

    v33 = v20;
    objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v21, v9, v22, v23, v24);
    v31 = v34 = 0;
    v27 = objc_msgSend_modelWithContentsOfURL_configuration_error_(MEMORY[0x1E695FE90], v25, v31, v33, &v34, v26);
    v32 = v34;
    if (v27)
    {
      operator new();
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v28 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v36 = v32;
      *&v36[8] = 2112;
      v37 = v9;
      _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "Error in MMapBinaryModel: %@ from path=%@", buf, 0x16u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *v36 = v32;
      *&v36[8] = 2112;
      v37 = v9;
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_FAULT, "Error in MMapBinaryModel: %@ from path=%@", buf, 0x16u);
    }
  }

  return 0;
}

void sub_1836AB7BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!a1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "predictionsPointer == nullptr", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_13:

        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_13;
      }
    }

    *v13 = 0;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "predictionsPointer == nullptr", v13, 2u);
    goto LABEL_13;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(a2 + 24))
  {
    v6 = 0;
    v7 = a1 + 8 * a3;
    do
    {
      v8 = sub_1838B8A5C(a2, v6);
      v9 = *(v7 + 8 * v6);
      LODWORD(v12) = *v8;
      *(&v12 + 1) = v9;
      sub_18367B094(a4, &v12);
      ++v6;
    }

    while (v6 < *(a2 + 24));
  }
}

void sub_1836AB954(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836AB970(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!a1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "predictionsPointer == nullptr", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_13:

        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_13;
      }
    }

    *v13 = 0;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "predictionsPointer == nullptr", v13, 2u);
    goto LABEL_13;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(a2 + 24))
  {
    v6 = 0;
    v7 = a1 + 4 * a3;
    do
    {
      v8 = sub_1838B8A5C(a2, v6);
      v9 = *(v7 + 4 * v6);
      LODWORD(v12) = *v8;
      HIDWORD(v12) = v9;
      sub_18367B094(a4, &v12);
      ++v6;
    }

    while (v6 < *(a2 + 24));
  }
}

void sub_1836ABB04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1836ABB20(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2)
    {
      munmap(*v2, *(v2 + 8));
    }

    MEMORY[0x1865E5EC0](v2, 0x1010C40A749B91FLL);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 48) = 0;

    v4 = *(a1 + 48);
  }

  return a1;
}

id sub_1836ABBAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, float32x2_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50, void *a51, uint64_t a52)
{
  a52 = *MEMORY[0x1E69E9840];
  v53 = a2;
  v244 = v53;
  if (*(a1 + 8) == 1)
  {
    v59 = objc_msgSend_count(v53, v54, v55, v56, v57, v58);
  }

  else
  {
    v59 = *(a1 + 36);
  }

  v60 = objc_msgSend_modelDescription(*(a1 + 40), v54, v55, v56, v57, v58);
  v66 = objc_msgSend_inputDescriptionsByName(v60, v61, v62, v63, v64, v65);
  v71 = objc_msgSend_objectForKeyedSubscript_(v66, v67, @"imgData", v68, v69, v70);
  v77 = objc_msgSend_multiArrayConstraint(v71, v72, v73, v74, v75, v76);
  v83 = objc_msgSend_shape(v77, v78, v79, v80, v81, v82);
  v89 = objc_msgSend_count(v83, v84, v85, v86, v87, v88);

  v90 = objc_alloc(MEMORY[0x1E695FED0]);
  v99 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v91, v59, v92, v93, v94);
  if (v89 == 3)
  {
    a49 = v99;
    v100 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v95, *(a1 + 24), v96, v97, v98);
    a50 = v100;
    v105 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v101, *(a1 + 28), v102, v103, v104);
    a51 = v105;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v106, &a49, 3, v107, v108);
  }

  else
  {
    a45 = v99;
    a46 = &unk_1EF1ECA00;
    v100 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v95, *(a1 + 24), v96, v97, v98);
    a47 = v100;
    v105 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v112, *(a1 + 28), v113, v114, v115);
    a48 = v105;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v116, &a45, 4, v117, v118);
  }
  v109 = ;
  v242 = objc_msgSend_initWithShape_dataType_error_(v90, v110, v109, 65600, 0, v111);

  v119 = v242;
  v130 = objc_msgSend_dataPointer(v242, v120, v121, v122, v123, v124);
  v132 = *(a1 + 24);
  v131 = *(a1 + 28);
  if (*(a1 + 32))
  {
    v133 = objc_alloc(MEMORY[0x1E695FED0]);
    a42 = &unk_1EF1ECA00;
    v138 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v134, v59, v135, v136, v137);
    a43 = v138;
    v143 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v139, *(a1 + 32), v140, v141, v142);
    a44 = v143;
    v147 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v144, &a42, 3, v145, v146);
    v243 = objc_msgSend_initWithShape_dataType_error_(v133, v148, v147, 65600, 0, v149);
  }

  else
  {
    v243 = 0;
  }

  v150 = 0;
  v151 = (v131 * v132);
  v152 = (v130 + 32);
  v153 = 8 * v151;
  while (v150 < objc_msgSend_count(v244, v125, v126, v127, v128, v129))
  {
    v158 = objc_msgSend_objectAtIndexedSubscript_(v244, v154, v150, v155, v156, v157);
    v164 = objc_msgSend_drawing(v158, v159, v160, v161, v162, v163);
    v172 = v164;
    if (v164)
    {
      LODWORD(v171) = *(a1 + 24);
      LODWORD(v170) = *(a1 + 28);
      objc_msgSend_bitmapRepresentationForSize_(v164, v165, v166, v167, v168, v169, v171, v170);
    }

    else
    {
      a21 = 0;
      *buf = 0u;
      vars0 = 0u;
    }

    if (v151)
    {
      if (v151 < 8)
      {
        v178 = 0;
LABEL_21:
        v185 = v151 - v178;
        v186 = (v130 + 8 * v178);
        v187 = a21 + v178;
        do
        {
          v188 = *v187++;
          *v186++ = v188;
          --v185;
        }

        while (v185);
        goto LABEL_23;
      }

      v179 = a21 + 2;
      v180 = v151 & 0xFFFFFFF8;
      v181 = v152;
      do
      {
        v182 = *v179[-2].f32;
        v183 = vcvtq_f64_f32(*v179);
        v184 = vcvt_hight_f64_f32(*v179->f32);
        v181[-2] = vcvtq_f64_f32(*v182.f32);
        v181[-1] = vcvt_hight_f64_f32(v182);
        *v181 = v183;
        v181[1] = v184;
        v181 += 4;
        v179 += 4;
        v180 -= 8;
      }

      while (v180);
      v178 = v151 & 0xFFFFFFF8;
      if (v178 != v151)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    if (*(a1 + 32))
    {
      v189 = objc_msgSend_drawing(v158, v173, v174, v175, v176, v177);
      objc_msgSend_bounds(v189, v190, v191, v192, v193, v194);
      v196 = v195;
      v198 = v197;
      v200 = v199;

      if (CGRectIsNull(*(a1 + 56)))
      {
        objc_msgSend_normalizationContext(v158, v201, v202, v203, v204, v205);
        v209 = v208;
        v211 = v210;
      }

      else
      {
        v206 = *(a1 + 56);
        v209 = *(a1 + 64);
        v207 = *(a1 + 72);
        v211 = *(a1 + 80);
      }

      v212 = v209;
      v213 = v211;
      IsEmpty = CGRectIsEmpty(*&v206);
      v215 = IsEmpty;
      if (IsEmpty)
      {
        v216 = 195.0;
      }

      else
      {
        v216 = v211;
      }

      if (IsEmpty)
      {
        v217 = 156.0;
      }

      else
      {
        v217 = v211 * 156.0 / 195.0;
      }

      v218 = v243;
      v224 = objc_msgSend_dataPointer(v243, v219, v220, v221, v222, v223);
      if (v215)
      {
        v225 = 0.0;
      }

      else
      {
        v225 = v209;
      }

      v226 = (v224 + 8 * v150 * *(a1 + 32));
      *v226 = v198 / v217;
      v226[1] = v200 / v216;
      v226[2] = (v200 * 0.5 + v196 - v225) / v216;
    }

    *buf = &unk_1EF1BB808;
    if (a21)
    {
      MEMORY[0x1865E5E90](a21, 0x1000C8052888210);
    }

    ++v150;
    v152 = (v152 + v153);
    v130 += v153;
  }

  v227 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setObject_forKeyedSubscript_(v227, v228, v242, @"imgData", v229, v230);
  if (v243)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v227, v231, v243, @"featureData", v232, v233);
  }

  v234 = objc_alloc(MEMORY[0x1E695FE48]);
  v245 = 0;
  v238 = objc_msgSend_initWithDictionary_error_(v234, v235, v227, &v245, v236, v237);
  v239 = v245;
  if (!v238)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v240 = qword_1EA84DC58;
    if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v239;
      _os_log_impl(&dword_18366B000, v240, OS_LOG_TYPE_ERROR, "Error creating MLFeatures: %@", buf, 0xCu);
    }
  }

  return v238;
}

void *sub_1836AC3FC(void *result)
{
  *result = &unk_1EF1BB808;
  if (result[16])
  {
    v1 = result;
    MEMORY[0x1865E5E90](result[16], 0x1000C8052888210);
    result = v1;
    v1[16] = 0;
  }

  return result;
}

void sub_1836AD438(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, void *a5, char a6)
{
  v90 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v16 = v11;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 1;
  v84 = a4;
  v17 = *a3;
  v18 = a3[1];
  if (*a3 != v18)
  {
    if (v11)
    {
      if (a6)
      {
        while (1)
        {
          v50 = *v17;
          if ((objc_msgSend_characterIsMember_(v16, v12, *v17, v13, v14, v15) & 1) == 0)
          {
            v51 = *(a2 + 48);
            if ((v50 - 57440) > 0x400 || v51 == 0)
            {
              goto LABEL_50;
            }

            v53 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v12, v50, v13, v14, v15);
            v58 = objc_msgSend_objectForKeyedSubscript_(v51, v54, v53, v55, v56, v57);

            if (!v58)
            {
              goto LABEL_50;
            }

            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v59 = v58;
            v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v76, v89, 16, v61);
            if (v67)
            {
              v68 = *v77;
              while (2)
              {
                for (i = 0; i != v67; ++i)
                {
                  if (*v77 != v68)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v70 = objc_msgSend_unsignedIntValue(*(*(&v76 + 1) + 8 * i), v62, v63, v64, v65, v66);
                  if ((objc_msgSend_characterIsMember_(v16, v71, v70, v72, v73, v74) & 1) == 0)
                  {

                    goto LABEL_50;
                  }
                }

                v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v76, v89, 16, v66);
                if (v67)
                {
                  continue;
                }

                break;
              }
            }
          }

          sub_1836AD9D4(&v80, v50);
LABEL_50:
          if (++v17 == v18)
          {
            goto LABEL_6;
          }
        }
      }

      do
      {
        v21 = *v17;
        if (objc_msgSend_characterIsMember_(v16, v12, *v17, v13, v14, v15))
        {
          sub_1836AD9D4(&v80, v21);
        }

        ++v17;
      }

      while (v17 != v18);
    }

    else
    {
      do
      {
        sub_1836AD9D4(&v80, *v17++);
      }

      while (v17 != v18);
    }
  }

LABEL_6:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v19 = v80;
  v20 = v81;
  if (v81 != v80)
  {
    while (1)
    {
      v75 = *v19;
      v22 = v20 - v19;
      if (v22 >= 2)
      {
        v23 = 0;
        v24 = v83;
        v25 = *v19;
        v26 = v19;
        do
        {
          v27 = &v26[v23 + 1];
          v28 = (2 * v23) | 1;
          v29 = 2 * v23 + 2;
          if (v29 < v22)
          {
            v30 = *(v27 + 4);
            v31 = *(v27 + 12);
            v32 = v30 > v31;
            if ((v24 & 1) == 0)
            {
              v32 = v30 < v31;
            }

            v33 = !v32;
            if (v32)
            {
              v34 = 8;
            }

            else
            {
              v34 = 0;
            }

            v27 += v34;
            if (!v33)
            {
              v28 = v29;
            }
          }

          *v26 = *v27;
          v26 = v27;
          v23 = v28;
        }

        while (v28 <= ((v22 - 2) >> 1));
        v35 = v20 - 1;
        if (v27 == v35)
        {
          *v27 = v25;
        }

        else
        {
          *v27 = *v35;
          *v35 = v25;
          v36 = (v27 - v19 + 8) >> 3;
          v37 = v36 < 2;
          v38 = v36 - 2;
          if (!v37)
          {
            v39 = v38 >> 1;
            v40 = &v19[v39];
            v41 = v40[1];
            v42 = *(v27 + 4);
            v43 = v41 > v42;
            if ((v24 & 1) == 0)
            {
              v43 = v41 < v42;
            }

            if (v43)
            {
              v44 = *v27;
              do
              {
                v45 = v27;
                v27 = v40;
                *v45 = *v40;
                if (!v39)
                {
                  break;
                }

                v39 = (v39 - 1) >> 1;
                v40 = &v19[v39];
                v46 = v40[1];
                v47 = v46 > v42;
                if ((v24 & 1) == 0)
                {
                  v47 = v46 < v42;
                }
              }

              while (v47);
              *v27 = v44;
              *(v27 + 4) = v42;
            }
          }
        }
      }

      --v81;
      sub_1836ADC98(a1, *a1, &v75);
      if (v75 != 57424)
      {
        goto LABEL_12;
      }

      if (qword_1EA84DC48 == -1)
      {
        break;
      }

      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v48 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

LABEL_41:

      if (v75 != 57424)
      {
        goto LABEL_12;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v49 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_11;
        }

LABEL_44:
        *buf = 67109376;
        v86 = v75;
        v87 = 1024;
        v88 = v16 == 0;
        _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_FAULT, "Not-a-char codepoint (U+%04x) is being added to the filtered candidate results (activeCharacterSet is nil: %d)", buf, 0xEu);
        goto LABEL_11;
      }

      v49 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_44;
      }

LABEL_11:

LABEL_12:
      v19 = v80;
      v20 = v81;
      if (v81 == v80)
      {
        goto LABEL_67;
      }
    }

    v48 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

LABEL_40:
    *buf = 67109376;
    v86 = v75;
    v87 = 1024;
    v88 = v16 == 0;
    _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_ERROR, "Not-a-char codepoint (U+%04x) is being added to the filtered candidate results (activeCharacterSet is nil: %d)", buf, 0xEu);
    goto LABEL_41;
  }

LABEL_67:
  if (v19)
  {
    v81 = v19;
    operator delete(v19);
  }
}

void sub_1836AD968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1836AD9D4(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (v5 >= *(a1 + 32))
  {
    if (*(v3 + 1) < *(&a2 + 1))
    {
      if (v5 >= 2)
      {
        v22 = 0;
        v23 = *(a1 + 24);
        v24 = *v3;
        v25 = v3;
        do
        {
          v26 = &v25[v22 + 1];
          v27 = (2 * v22) | 1;
          v28 = 2 * v22 + 2;
          if (v28 < v5)
          {
            v29 = *(v26 + 4);
            v30 = *(v26 + 12);
            v31 = v29 > v30;
            if ((v23 & 1) == 0)
            {
              v31 = v29 < v30;
            }

            v32 = !v31;
            if (v31)
            {
              v33 = 8;
            }

            else
            {
              v33 = 0;
            }

            v26 += v33;
            if (!v32)
            {
              v27 = v28;
            }
          }

          *v25 = *v26;
          v25 = v26;
          v22 = v27;
        }

        while (v27 <= ((v5 - 2) >> 1));
        v34 = (v4 - 8);
        if (v26 == v34)
        {
          *v26 = v24;
        }

        else
        {
          *v26 = *v34;
          *v34 = v24;
          v35 = (v26 - v3 + 8) >> 3;
          v36 = v35 < 2;
          v37 = v35 - 2;
          if (!v36)
          {
            v38 = v37 >> 1;
            v39 = &v3[v38];
            v40 = *(v39 + 4);
            v41 = *(v26 + 4);
            v42 = v40 > v41;
            if ((v23 & 1) == 0)
            {
              v42 = v40 < v41;
            }

            if (v42)
            {
              v43 = *v26;
              do
              {
                v44 = v26;
                v26 = v39;
                *v44 = *v39;
                if (!v38)
                {
                  break;
                }

                v38 = (v38 - 1) >> 1;
                v39 = &v3[v38];
                v45 = *(v39 + 4);
                v46 = v45 > v41;
                if ((v23 & 1) == 0)
                {
                  v46 = v45 < v41;
                }
              }

              while (v46);
              *v26 = v43;
              *(v26 + 4) = v41;
            }
          }
        }
      }

      *(a1 + 8) -= 8;
      sub_18367B094(a1, &v60);
      v48 = *a1;
      v47 = *(a1 + 8);
      v49 = (v47 - *a1) >> 3;
      v50 = v49 - 2;
      if (v49 >= 2)
      {
        v51 = *(a1 + 24);
        v52 = v50 >> 1;
        v53 = &v48[v52];
        v54 = *(v53 + 1);
        v14 = *(v47 - 4);
        v55 = v54 > v14;
        if ((v51 & 1) == 0)
        {
          v55 = v54 < v14;
        }

        if (v55)
        {
          v56 = *(v47 - 8);
          v16 = (v47 - 8);
          v17 = v56;
          do
          {
            v57 = v16;
            v16 = v53;
            *v57 = *v53;
            if (!v52)
            {
              break;
            }

            v52 = (v52 - 1) >> 1;
            v53 = &v48[v52];
            v58 = *(v53 + 1);
            v59 = v58 > v14;
            if ((v51 & 1) == 0)
            {
              v59 = v58 < v14;
            }
          }

          while (v59);
          goto LABEL_46;
        }
      }
    }
  }

  else
  {
    sub_18367B094(a1, &v60);
    v7 = *a1;
    v6 = *(a1 + 8);
    v8 = (v6 - *a1) >> 3;
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      v10 = *(a1 + 24);
      v11 = v9 >> 1;
      v12 = &v7[v11];
      v13 = *(v12 + 1);
      v14 = *(v6 - 4);
      v15 = v13 > v14;
      if ((v10 & 1) == 0)
      {
        v15 = v13 < v14;
      }

      if (v15)
      {
        v18 = *(v6 - 8);
        v16 = (v6 - 8);
        v17 = v18;
        do
        {
          v19 = v16;
          v16 = v12;
          *v19 = *v12;
          if (!v11)
          {
            break;
          }

          v11 = (v11 - 1) >> 1;
          v12 = &v7[v11];
          v20 = *(v12 + 1);
          v21 = v20 > v14;
          if ((v10 & 1) == 0)
          {
            v21 = v20 < v14;
          }
        }

        while (v21);
LABEL_46:
        *v16 = v17;
        *(v16 + 1) = v14;
      }
    }
  }
}

char *sub_1836ADC98(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      *(a1 + 8) = v6 + 8;
      return v4;
    }

    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v6 == v8)
      {
LABEL_21:
        v17 = v9 <= a3 || v4 > a3;
        v18 = 8;
        if (v17)
        {
          v18 = 0;
        }

        *v4 = *&a3[v18];
        return v4;
      }
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
      *(a1 + 8) = v6 + 8;
      if (v6 == v8)
      {
        goto LABEL_21;
      }
    }

    memmove(__src + 8, __src, v6 - v8);
    v9 = *(a1 + 8);
    goto LABEL_21;
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 3) + 1;
  if (v11 >> 61)
  {
    sub_18368964C();
  }

  v12 = v7 - v10;
  if (v12 >> 2 > v11)
  {
    v11 = v12 >> 2;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    v13 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (!(v13 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  v14 = __src - v10;
  v15 = (__src - v10) >> 3;
  v16 = (8 * v15);
  if (!v15)
  {
    if (v14 < 1)
    {
      v19 = v14 >> 2;
      if (v10 == __src)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      if (!(v20 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v16 = (v16 - (((v14 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
  }

  *v16 = *a3;
  v21 = *(a1 + 8) - __src;
  memcpy(v16 + 1, __src, v21);
  *(a1 + 8) = v4;
  v22 = &v4[-*a1];
  v23 = v16 - v22;
  memcpy(v16 - v22, *a1, v22);
  v24 = *a1;
  *a1 = v23;
  *(a1 + 8) = v16 + v21 + 8;
  *(a1 + 16) = 0;
  if (v24)
  {
    operator delete(v24);
  }

  return v16;
}

void sub_1836ADEC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836AE3E8(void *a1)
{
  *a1 = &unk_1EF1BB808;
  if (a1[16])
  {
    MEMORY[0x1865E5E90](a1[16], 0x1000C8052888210);
    v1 = vars8;
  }

  JUMPOUT(0x1865E5EB0);
}

void sub_1836AE45C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 140);
  v5 = *(a2 + 136);
  *a3 = &unk_1EF1BB808;
  *(a3 + 136) = v5;
  *(a3 + 140) = v4;
  operator new[]();
}

void sub_1836AE710(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 136);
  v3 = *(a1 + 140);
  *a2 = &unk_1EF1BB808;
  *(a2 + 136) = v4;
  *(a2 + 140) = v3;
  operator new[]();
}

void sub_1836AE884(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 136);
  v3 = *(a1 + 140);
  *a2 = &unk_1EF1BB808;
  *(a2 + 136) = v4;
  *(a2 + 140) = v3;
  operator new[]();
}

uint64_t sub_1836AEA3C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 140);
  if (v2)
  {
    v3 = *(result + 136);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *(a2 + 128);
      v8 = *(a2 + 136);
      v9 = v3 - 1;
      v10 = *(result + 128);
      do
      {
        if (v3 >= 0xC)
        {
          v11 = 0;
          v13 = __CFADD__(v3 * v6, v9);
          v14 = __CFADD__(v8 * v6, v9);
          if (v13 || v14 || (v3 - 1) >> 32)
          {
            goto LABEL_6;
          }

          v15 = 4 * (v3 * v6);
          v16 = 4 * (v8 * v6);
          if (v10 + v15 >= (v7 + 4 * v3 + v16) || v7 + v16 >= (v10 + 4 * v3 + v15))
          {
            v17 = v4;
            v18 = v5;
            v19 = v3 & 0xFFFFFFF8;
            do
            {
              v20 = (v7 + 4 * v18);
              v21 = *v20;
              v22 = v20[1];
              v23 = (v10 + 4 * v17);
              v24 = vaddq_f32(v22, v23[1]);
              *v23 = vaddq_f32(v21, *v23);
              v23[1] = v24;
              v18 += 8;
              v17 += 8;
              v19 -= 8;
            }

            while (v19);
            v11 = v3 & 0xFFFFFFF8;
            if (v11 == v3)
            {
              goto LABEL_8;
            }

            goto LABEL_6;
          }
        }

        v11 = 0;
LABEL_6:
        v12 = v3 - v11;
        do
        {
          *(v10 + 4 * (v4 + v11)) = *(v7 + 4 * (v5 + v11)) + *(v10 + 4 * (v4 + v11));
          LODWORD(v11) = v11 + 1;
          --v12;
        }

        while (v12);
LABEL_8:
        ++v6;
        v5 += v8;
        v4 += v3;
      }

      while (v6 != v2);
    }
  }

  return result;
}

void sub_1836AEB68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    MEMORY[0x1865E5E90](v4, 0x1000C8052888210);
  }

  v5 = *(a2 + 140);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = v5;
  operator new[]();
}

BOOL sub_1836AEC20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (v2 == *(a2 + 136) && (v3 = *(a1 + 140), v3 == *(a2 + 140)))
  {
    return memcmp(*(a1 + 128), *(a2 + 128), 4 * (v3 * v2)) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1836AEC7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1836AECEC(__n128 *a1, __n128 *a2)
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

void sub_1836AED10(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1836AED28(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = v2[7];
  v3 = v2[8];
  if (v4 < v3)
  {
    *v4 = a2;
    v5 = v4 + 4;
LABEL_3:
    v2[7] = v5;
    return;
  }

  v6 = v2[6];
  v7 = v4 - v6;
  v8 = (v4 - v6) >> 2;
  v9 = v8 + 1;
  if ((v8 + 1) >> 62)
  {
    sub_1836D58DC();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_183688F00();
  }

  v12 = (v4 - v6) >> 2;
  v13 = (4 * v8);
  v14 = (4 * v8 - 4 * v12);
  *v13 = a2;
  v5 = v13 + 1;
  memcpy(v14, v6, v7);
  v2[6] = v14;
  v2[7] = v5;
  v2[8] = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  v2[7] = v5;
}

void sub_1836AF3BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_183686078(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836AF440(uint64_t a1)
{
  if (a1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v2 = qword_1EA84DC88;
    v3 = os_signpost_id_generate(v2);

    if (qword_1EA84DC48 == -1)
    {
      v4 = qword_1EA84DC88;
      v5 = v3 - 1;
      if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v4 = qword_1EA84DC88;
      v5 = v3 - 1;
      if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_8;
      }
    }

    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CHLoadTextRecognizerResources", "", buf, 2u);
    }

LABEL_8:

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v6 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEFAULT, "BEGIN CHLoadTextRecognizerResources", buf, 2u);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1836B0534;
    v9[3] = &unk_1E6DDBE10;
    v9[4] = a1;
    sub_1836AF8AC(a1, v9);
    if (qword_1EA84DC48 == -1)
    {
      v7 = qword_1EA84DC88;
      if (v5 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v7 = qword_1EA84DC88;
      if (v5 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_16;
      }
    }

    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v7, OS_SIGNPOST_INTERVAL_END, v3, "CHLoadTextRecognizerResources", "", buf, 2u);
    }

LABEL_16:

    if (qword_1EA84DC48 == -1)
    {
      v8 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        return;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v8 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_DEFAULT, "END CHLoadTextRecognizerResources", buf, 2u);
    goto LABEL_19;
  }
}

void sub_1836AF828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1836AF848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1836AF860(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_copy(*(*(a1 + 32) + 416), a2, a3, a4, a5, a6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1836AF8AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    label = dispatch_queue_get_label(0);
    if (strcmp(label, "com.apple.CoreHandwriting.recognizerQueue"))
    {
      v5 = *(a1 + 288);
      if (v5)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1836B3BBC;
        block[3] = &unk_1E6DDC908;
        v7 = v3;
        dispatch_sync(v5, block);

        return;
      }
    }

    v3[2](v3);
  }
}

void sub_1836AFB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1836AFC84(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_isInappropriateString_(*(a1[4] + 488), a2, a1[5], a4, a5, a6);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_1836AFDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1836AFDF4(uint64_t a1)
{
  v227 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v218 = *(a1 + 40);
  if (v1)
  {
    v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3, v4, v5, v6);
    if (*(v1 + 392) && objc_msgSend_length(v218, v7, v8, v9, v10, v11))
    {
      v18 = objc_msgSend_length(v218, v13, v14, v15, v16, v17);
      v22 = objc_msgSend_codepointAtIndex_outRange_(v218, v19, v18 - 1, &v225, v20, v21);
      sub_1837E49EC(*(v1 + 392), v22, &v223);
      if (objc_msgSend_shouldGenerateDigitLetterAlternatives(*(v1 + 456), v23, v24, v25, v26, v27))
      {
        v32 = v218;
        v37 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v33, @"012olzOLZ", v34, v35, v36);
        v42 = objc_msgSend_stringByTrimmingCharactersInSet_(v32, v38, v37, v39, v40, v41);
        if (objc_msgSend_isEqualToString_(v42, v43, &stru_1EF1C0318, v44, v45, v46))
        {
          v52 = objc_msgSend_array(MEMORY[0x1E695DF70], v47, v48, v49, v50, v51);
          v57 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v53, v32, v54, v55, v56);
          v62 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v58, v32, v59, v60, v61);
          v68 = objc_msgSend_length(v62, v63, v64, v65, v66, v67);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v62, v69, @"l", @"1", 1, 0, v68);
          v75 = objc_msgSend_length(v57, v70, v71, v72, v73, v74);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v76, @"1", @"l", 1, 0, v75);
          v82 = objc_msgSend_length(v62, v77, v78, v79, v80, v81);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v62, v83, @"o", @"0", 1, 0, v82);
          v89 = objc_msgSend_length(v57, v84, v85, v86, v87, v88);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v90, @"0", @"o", 1, 0, v89);
          v96 = objc_msgSend_length(v62, v91, v92, v93, v94, v95);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v62, v97, @"z", @"2", 1, 0, v96);
          v103 = objc_msgSend_length(v57, v98, v99, v100, v101, v102);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v104, @"2", @"z", 1, 0, v103);
          objc_msgSend_addObject_(v52, v105, v62, v106, v107, v108);
          v114 = objc_msgSend_lowercaseString(v57, v109, v110, v111, v112, v113);
          objc_msgSend_addObject_(v52, v115, v114, v116, v117, v118);
        }

        else
        {
          v52 = 0;
        }

        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v120 = v52;
        v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v121, &v219, v226, 16, v122);
        if (v127)
        {
          v128 = *v220;
          do
          {
            for (i = 0; i != v127; ++i)
            {
              if (*v220 != v128)
              {
                objc_enumerationMutation(v120);
              }

              v130 = *(*(&v219 + 1) + 8 * i);
              if ((objc_msgSend_isInappropriateString_(*(v1 + 488), v123, v130, v124, v125, v126) & 1) == 0)
              {
                objc_msgSend_addObject_(v12, v123, v130, v124, v125, v126);
              }
            }

            v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v123, &v219, v226, 16, v126);
          }

          while (v127);
        }
      }

      v131 = v223;
      if (v224 != v223)
      {
        v132 = objc_msgSend_substringToIndex_(v218, v28, v225, v29, v30, v31);
        if (objc_msgSend_shouldEnforceGrammarOnTransliterations(*(v1 + 456), v133, v134, v135, v136, v137))
        {
          v143 = sub_1837A7234(v132);
          v149 = objc_msgSend_contentType(*(v1 + 456), v144, v145, v146, v147, v148);
          v152 = objc_msgSend_rootCursorForContentType_inNetwork_forFirstSegmentGroup_(CHPatternNetwork, v150, v149, *(v1 + 312), 0, v151);
          v155 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v153, v132, v152, *(v1 + 312), v154);

          v161 = v223;
          if (v224 != v223)
          {
            v162 = 0;
            if (v155)
            {
              do
              {
                v178 = v161[v162];
                v182 = objc_msgSend_newCursorByAdvancingWithSymbol_fromCursor_inNetwork_(CHPatternNetwork, v156, v178, v155, *(v1 + 312), v160);
                if (v182)
                {
                  v183 = sub_1837A4260(v178, v156, v179, v180, v181, v160);
                  v188 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v184, @"%@%@", v185, v186, v187, v132, v183);
                  v193 = v188;
                  if (((v143 & 1) != 0 || (sub_1837A7234(v188) & 1) == 0) && (objc_msgSend_isInappropriateString_(*(v1 + 488), v189, v193, v190, v191, v192) & 1) == 0)
                  {
                    objc_msgSend_addObject_(v12, v194, v193, v195, v196, v197);
                  }
                }

                ++v162;
                v161 = v223;
              }

              while (v162 < (v224 - v223) >> 2);
            }

            else
            {
              do
              {
                v163 = sub_1837A4260(v161[v162], v156, v157, v158, v159, v160);
                v168 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v164, @"%@%@", v165, v166, v167, v132, v163);
                v173 = v168;
                if (((v143 & 1) != 0 || (sub_1837A7234(v168) & 1) == 0) && (objc_msgSend_isInappropriateString_(*(v1 + 488), v169, v173, v170, v171, v172) & 1) == 0)
                {
                  objc_msgSend_addObject_(v12, v174, v173, v175, v176, v177);
                }

                ++v162;
                v161 = v223;
              }

              while (v162 < (v224 - v223) >> 2);
            }
          }
        }

        else
        {
          v198 = v223;
          if (v224 != v223)
          {
            v199 = 0;
            do
            {
              v200 = sub_1837A4260(v198[v199], v138, v139, v140, v141, v142);
              v205 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v201, @"%@%@", v202, v203, v204, v132, v200);
              if ((objc_msgSend_isInappropriateString_(*(v1 + 488), v206, v205, v207, v208, v209) & 1) == 0)
              {
                objc_msgSend_addObject_(v12, v210, v205, v211, v212, v213);
              }

              ++v199;
              v198 = v223;
            }

            while (v199 < (v224 - v223) >> 2);
          }
        }

        v131 = v223;
      }

      v214 = v12;
      if (v131)
      {
        v224 = v131;
        operator delete(v131);
      }
    }

    else
    {
      v119 = v12;
    }
  }

  else
  {
    v12 = 0;
  }

  v215 = *(*(a1 + 48) + 8);
  v216 = *(v215 + 40);
  *(v215 + 40) = v12;
}

void sub_1836B03E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1836B0534(uint64_t a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v77 = sub_1836B3918;
  v78 = &unk_1E6DDBE10;
  v79 = v2;
  sub_1836AF8AC(v2, &buf);
  v3 = (a1 + 32);
  *(*v3 + 248) = objc_msgSend_newRecognitionEngine(*(*(a1 + 32) + 456), v4, v5, v6, v7, v8);
  *(*v3 + 256) = objc_msgSend_newFreeFormEngine(*(*(a1 + 32) + 456), v9, v10, v11, v12, v13);
  v19 = objc_msgSend_newCornerDetector(*(*(a1 + 32) + 456), v14, v15, v16, v17, v18);
  v20 = *(*(a1 + 32) + 264);
  *(*v3 + 264) = v19;

  isMainThread = objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v21, v22, v23, v24, v25);
  v34 = objc_msgSend_newWordLanguageModelForRecognizer_async_synchronizationQueue_(*(*v3 + 456), v27, *v3, isMainThread, *(*v3 + 288), v28);
  v35 = *(*(a1 + 32) + 480);
  *(*v3 + 480) = v34;
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = a1 + 32;
  v37 = objc_msgSend_newSpellChecker(*(*(a1 + 32) + 456), v29, v30, v31, v32, v33);
  v38 = *(*(a1 + 32) + 424);
  *(*v36 + 424) = v37;

  v39 = *(*(a1 + 32) + 456);
  v75 = 0;
  v44 = objc_msgSend_newStaticLexicon_(v39, v40, &v75, v41, v42, v43);
  v49 = v75;
  v50 = *(*(a1 + 32) + 472);
  *(*v36 + 472) = v44;
  if (v50)
  {
    CFRelease(v50);
  }

  if (!v49)
  {
LABEL_10:
    v52 = *(*(a1 + 32) + 456);
    v74 = 0;
    v53 = objc_msgSend_newSecondaryStaticLexicon_(v52, v45, &v74, v46, v47, v48);
    v58 = v74;
    v59 = *(a1 + 32);
    v60 = *(v59 + 344);
    *(v59 + 344) = v53;
    if (v60)
    {
      CFRelease(v60);
    }

    if (!v58)
    {
LABEL_17:
      v62 = *(*(a1 + 32) + 456);
      v73 = 0;
      v63 = objc_msgSend_newPhraseLexicon_(v62, v54, &v73, v55, v56, v57);
      v69 = v73;
      v70 = *(a1 + 32);
      v71 = *(v70 + 352);
      *(v70 + 352) = v63;
      if (v71)
      {
        CFRelease(v71);
      }

      if (!v69)
      {
LABEL_24:
        objc_msgSend_newCJKStaticLexicon(*(*(a1 + 32) + 456), v64, v65, v66, v67, v68);
        operator new();
      }

      if (qword_1EA84DC48 == -1)
      {
        v72 = qword_1EA84DC58;
        if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v72 = qword_1EA84DC58;
        if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v69;
      _os_log_impl(&dword_18366B000, v72, OS_LOG_TYPE_ERROR, "Error loading the phrase lexicon: %@", &buf, 0xCu);
      goto LABEL_23;
    }

    if (qword_1EA84DC48 == -1)
    {
      v61 = qword_1EA84DC58;
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v61 = qword_1EA84DC58;
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v58;
    _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_ERROR, "Error loading the secondary static lexicon: %@", &buf, 0xCu);
    goto LABEL_16;
  }

  if (qword_1EA84DC48 == -1)
  {
    v51 = qword_1EA84DC58;
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v51 = qword_1EA84DC58;
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  LODWORD(buf) = 138412290;
  *(&buf + 4) = v49;
  _os_log_impl(&dword_18366B000, v51, OS_LOG_TYPE_ERROR, "Error loading the static lexicon: %@", &buf, 0xCu);
  goto LABEL_9;
}

void sub_1836B0DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (a2)
  {
    sub_183686078(a1);
  }

  _Unwind_Resume(a1);
}

const void **sub_1836B0E94(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1836B0EC8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1836B0EFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 440);
  *(v2 + 440) = 0;

  shouldConvertKanaInPostProcessing = objc_msgSend_shouldConvertKanaInPostProcessing(*(*(a1 + 32) + 456), v4, v5, v6, v7, v8);
  v15 = *(a1 + 32);
  if (shouldConvertKanaInPostProcessing)
  {
    v16 = *(v15 + 464);
    v17 = objc_msgSend_mecabraInputMethodType(*(v15 + 456), v10, v11, v12, v13, v14);
    objc_msgSend_initMecabraIfNeededWithType_learningDictURL_(v16, v18, v17, *(v15 + 376), v19, v20);
    v15 = *(a1 + 32);
  }

  v43 = objc_msgSend_postProcessorLexiconWithStaticLexicon_secondaryLexicon_(*(v15 + 456), v10, *(v15 + 472), *(v15 + 344), v13, v14);
  v21 = *(a1 + 32);
  v41 = v21[44];
  v42 = v21[45];
  v22 = v21[4];
  v23 = v21[57];
  v24 = v21[58];
  v26 = v21[60];
  v25 = v21[61];
  v27 = v21[53];
  v28 = v21[54];
  v30 = v21[40];
  v29 = v21[41];
  v36 = objc_msgSend__effectiveMaxRecognitionResultCount(v21, v31, v32, v33, v34, v35);
  v38 = objc_msgSend_newPostProcessorWithStaticLexicon_customLexicon_phraseLexicon_customPhraseLexicon_textReplacements_postProcessingFST_wordLM_mecabraWrapper_ovsStringChecker_spellChecker_lmVocabulary_maxResultCount_(v23, v37, v43, v42, v41, v22, v28, v30, v26, v24, v25, v27, v29, v36);
  v39 = *(a1 + 32);
  v40 = *(v39 + 440);
  *(v39 + 440) = v38;
}

void sub_1836B1070(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 448);
  *(v2 + 448) = 0;

  v6 = objc_msgSend_newMergedResultPostProcessorWithStaticLexicon_customLexicon_stringChecker_(*(*(a1 + 32) + 456), v4, *(*(a1 + 32) + 472), *(*(a1 + 32) + 360), *(*(a1 + 32) + 488), v5);
  v7 = *(a1 + 32);
  v8 = *(v7 + 448);
  *(v7 + 448) = v6;
}

void sub_1836B10D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 280);
  *(v2 + 280) = 0;

  shouldRunNextGenRecognizer = objc_msgSend_shouldRunNextGenRecognizer(*(*(a1 + 32) + 456), v4, v5, v6, v7, v8);
  v15 = *(a1 + 32);
  if (!shouldRunNextGenRecognizer)
  {
    v33 = objc_msgSend_newCTCTextDecoderWithStaticLexicon_customLexicon_wordLanguageModel_(*(v15 + 456), v10, *(v15 + 472), *(v15 + 360), *(v15 + 480), v14);
    v34 = *(a1 + 32);
    v35 = *(v34 + 280);
    *(v34 + 280) = v33;

    return;
  }

  v16 = *(v15 + 272);
  if (v16)
  {
    goto LABEL_62;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v17 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_ERROR, "The recognition model must be loaded before the text decoder can be initialized", buf, 2u);
  }

  v16 = *(*(a1 + 32) + 272);
  if (v16)
  {
LABEL_62:
    if (objc_msgSend_codeMap(v16, v10, v11, v12, v13, v14))
    {
      goto LABEL_9;
    }

LABEL_19:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v42 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_ERROR, "The codemap must be loaded before the text decoder can be initialized", buf, 2u);
    }

    if (objc_msgSend_codeMap(*(*(a1 + 32) + 272), v43, v44, v45, v46, v47))
    {
LABEL_10:
      if (!objc_msgSend_codeMap(*(*(a1 + 32) + 272), v23, v24, v25, v26, v27))
      {
        return;
      }

LABEL_29:
      objc_msgSend__effectiveMaxRecognitionResultCount(*(a1 + 32), v28, v29, v30, v31, v32);
      v54 = *(a1 + 32);
      if (v54)
      {
        v54 = v54[34];
      }

      v55 = v54;
      objc_msgSend_blankIndex(v55, v56, v57, v58, v59, v60);

      v61 = *(a1 + 32);
      if (v61)
      {
        v62 = *(v61 + 272);
        if (v62)
        {
          v68 = v62;
          objc_msgSend_decodingPruningPolicy(v62, v63, v64, v65, v66, v67);
          v69 = *buf;

          v61 = *(a1 + 32);
          if (v69 == 1)
          {
            if (v61)
            {
              v70 = *(v61 + 272);
              if (v70)
              {
                v76 = v70;
                objc_msgSend_decodingPruningPolicy(v70, v71, v72, v73, v74, v75);
              }
            }

LABEL_50:
            v101 = *(a1 + 32);
            if (v101)
            {
              v101 = v101[34];
            }

            v102 = v101;
            v108 = *(objc_msgSend_codeMap(v102, v103, v104, v105, v106, v107) + 24);

            if (v108)
            {
              operator new();
            }

            v109 = *(a1 + 32);
            if (v109)
            {
              v109 = v109[34];
            }

            v110 = v109;
            objc_msgSend_spaceIndex(v110, v111, v112, v113, v114, v115);
            operator new();
          }
        }

        else
        {
          v61 = *(a1 + 32);
        }
      }

      if (v61)
      {
        v77 = *(v61 + 272);
        if (v77)
        {
          v83 = v77;
          objc_msgSend_decodingPruningPolicy(v77, v78, v79, v80, v81, v82);
          v84 = *buf;

          if (v84)
          {
            goto LABEL_50;
          }
        }
      }

      v85 = *(a1 + 32);
      if (v85 && (v86 = *(v85 + 272)) != 0)
      {
        v92 = v86;
        objc_msgSend_decodingPruningPolicy(v86, v87, v88, v89, v90, v91);
        v93 = *(a1 + 32);
        if (!v93)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v92 = 0;
        *buf = 0;
        v117 = 0;
        v118 = 0;
        v93 = *(a1 + 32);
        if (!v93)
        {
LABEL_49:

          goto LABEL_50;
        }
      }

      v94 = *(v93 + 272);
      if (v94)
      {
        v100 = v94;
        objc_msgSend_decodingPruningPolicy(v94, v95, v96, v97, v98, v99);
      }

      goto LABEL_49;
    }

    goto LABEL_24;
  }

  if (qword_1EA84DC48 == -1)
  {
    v36 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v36 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
LABEL_17:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_FAULT, "The recognition model must be loaded before the text decoder can be initialized", buf, 2u);
  }

LABEL_18:

  if (!objc_msgSend_codeMap(*(*(a1 + 32) + 272), v37, v38, v39, v40, v41))
  {
    goto LABEL_19;
  }

LABEL_9:
  if (objc_msgSend_codeMap(*(*(a1 + 32) + 272), v18, v19, v20, v21, v22))
  {
    goto LABEL_10;
  }

LABEL_24:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v48 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_FAULT, "The codemap must be loaded before the text decoder can be initialized", buf, 2u);
  }

  if (objc_msgSend_codeMap(*(*(a1 + 32) + 272), v49, v50, v51, v52, v53))
  {
    goto LABEL_29;
  }
}

void sub_1836B3070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, int a45, __int16 a46, char a47, char a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, char a55, int a56, __int16 a57, char a58, char a59)
{
  sub_1836B0EC8((v59 - 144));
  sub_1836B3630(&a23);

  sub_1836B379C((v59 - 256));
  *(v59 - 208) = a11;
  v61 = *(v59 - 192);
  if (v61)
  {
    *(v59 - 184) = v61;
    operator delete(v61);
  }

  operator delete(__p);
  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

const void **sub_1836B354C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1836B3580(void *result)
{
  *result = &unk_1EF1BBC08;
  v1 = result[3];
  if (v1)
  {
    result[4] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_1836B35D8(void *result)
{
  *result = &unk_1EF1BBC08;
  v1 = result[3];
  if (v1)
  {
    result[4] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void **sub_1836B3630(void **a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1836B36A0(void *a1)
{
  *a1 = &unk_1EF1BBCC0;
  a1[8] = &unk_1EF1BBD10;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  a1[2] = &unk_1EF1BBAF8;
  v3 = a1[5];
  if (v3)
  {
    v4 = a1[6];
    v5 = a1[5];
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = a1[5];
    }

    a1[6] = v3;
    operator delete(v5);
  }

  return a1;
}

void *sub_1836B379C(void *a1)
{
  *a1 = &unk_1EF1BBAF8;
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1836B3848(void *result)
{
  *result = &unk_1EF1BBD10;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1836B3918(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[31];
  if (v3)
  {
    v4 = sub_1836ABB20(v3);
    MEMORY[0x1865E5EC0](v4, 0x10A0C40D7915B8BLL);
    *(*(a1 + 32) + 248) = 0;
    v2 = *(a1 + 32);
  }

  v5 = v2[32];
  if (v5)
  {
    v6 = sub_1836ABB20(v5);
    MEMORY[0x1865E5EC0](v6, 0x10A0C40D7915B8BLL);
    *(*(a1 + 32) + 256) = 0;
    v2 = *(a1 + 32);
  }

  v7 = v2[49];
  if (v7)
  {
    free(*(v7 + 16));
    MEMORY[0x1865E5EC0](v7, 0x1010C40BF976668);
    *(*(a1 + 32) + 392) = 0;
    v2 = *(a1 + 32);
  }

  v8 = v2[37];
  if (v8)
  {
    v9 = sub_18390C484(v8);
    MEMORY[0x1865E5EC0](v9, 0x10B2C40E2EDC6FALL);
    *(*(a1 + 32) + 296) = 0;
    v2 = *(a1 + 32);
  }

  v10 = v2[38];
  if (v10)
  {
    v11 = sub_18390C484(v10);
    MEMORY[0x1865E5EC0](v11, 0x10B2C40E2EDC6FALL);
    *(*(a1 + 32) + 304) = 0;
    v2 = *(a1 + 32);
  }

  v12 = v2[33];
  v2[33] = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 440);
  *(v13 + 440) = 0;

  v15 = *(a1 + 32);
  v16 = *(v15 + 280);
  *(v15 + 280) = 0;

  v17 = *(a1 + 32);
  v18 = *(v17 + 464);
  *(v17 + 464) = 0;

  v19 = *(a1 + 32);
  v20 = *(v19 + 424);
  *(v19 + 424) = 0;

  v21 = *(a1 + 32);
  v22 = *(v21 + 488);
  *(v21 + 488) = 0;

  v23 = *(a1 + 32);
  v24 = *(v23 + 312);
  *(v23 + 312) = 0;

  v25 = *(a1 + 32);
  v26 = *(v25 + 320);
  *(v25 + 320) = 0;

  v27 = *(a1 + 32);
  v28 = *(v27 + 24);
  *(v27 + 24) = 0;

  v29 = *(a1 + 32);
  sub_18368D56C(v29 + 568, *(v29 + 576));
  *(v29 + 568) = v29 + 576;
  *(v29 + 576) = 0u;
  v30 = *(a1 + 32);
  v31 = *(v30 + 272);
  *(v30 + 272) = 0;

  v32 = *(a1 + 32);
  if (*(v32 + 208) == 1)
  {
    *(v32 + 40) = &unk_1EF1BBCC0;
    *(v32 + 104) = &unk_1EF1BBD10;
    v33 = *(v32 + 120);
    if (v33)
    {
      *(v32 + 128) = v33;
      operator delete(v33);
    }

    *(v32 + 56) = &unk_1EF1BBAF8;
    v34 = *(v32 + 80);
    if (v34)
    {
      v35 = *(v32 + 88);
      v36 = *(v32 + 80);
      if (v35 != v34)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            (*(*v37 + 8))(v37);
          }
        }

        while (v35 != v34);
        v36 = *(v32 + 80);
      }

      *(v32 + 88) = v34;
      operator delete(v36);
    }

    *(v32 + 208) = 0;
  }
}

uint64_t sub_1836B3C94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = *(v7 + 464);
  v9 = objc_msgSend_mecabraInputMethodType(*(v7 + 456), a2, a3, a4, a5, a6);
  objc_msgSend_initMecabraIfNeededWithType_learningDictURL_(v8, v10, v9, *(v7 + 376), v11, v12);
  result = objc_msgSend_mecabra(*(*(a1 + 32) + 464), v13, v14, v15, v16, v17);
  if (result)
  {
    objc_msgSend_mecabra(*(*(a1 + 32) + 464), v19, v20, v21, v22, v23);
    MecabraSetAddressBookNamePhoneticPairs();
    result = objc_msgSend_shouldLoadCJKLexicons(*(*(a1 + 32) + 456), v24, v25, v26, v27, v28);
    if (result)
    {
      v31 = *(a1 + 40);
      v32 = *MEMORY[0x1E69ABF78];
      v33[0] = v31;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v33, &v32, 1, v30);
      objc_claimAutoreleasedReturnValue();
      LMLexiconCreate();
      operator new();
    }
  }

  return result;
}

void sub_1836B3E0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    LMLexiconRelease();
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1836B3F28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = *(v7 + 464);
  v9 = objc_msgSend_mecabraInputMethodType(*(v7 + 456), a2, a3, a4, a5, a6);
  objc_msgSend_initMecabraIfNeededWithType_learningDictURL_(v8, v10, v9, *(v7 + 376), v11, v12);
  result = objc_msgSend_mecabra(*(*(a1 + 32) + 464), v13, v14, v15, v16, v17);
  if (result)
  {
    objc_msgSend_mecabra(*(*(a1 + 32) + 464), v19, v20, v21, v22, v23);
    MecabraSetUserWordKeyPairs();
    result = objc_msgSend_shouldLoadCJKLexicons(*(*(a1 + 32) + 456), v24, v25, v26, v27, v28);
    if (result)
    {
      v31 = *(a1 + 40);
      v32 = *MEMORY[0x1E69ABF78];
      v33[0] = v31;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v33, &v32, 1, v30);
      objc_claimAutoreleasedReturnValue();
      LMLexiconCreate();
      operator new();
    }
  }

  return result;
}

void sub_1836B40A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    LMLexiconRelease();
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1836B41D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 464);
  v9 = objc_msgSend_mecabraInputMethodType(*(v7 + 456), a2, a3, a4, a5, a6);
  objc_msgSend_initMecabraIfNeededWithType_learningDictURL_(v8, v10, v9, *(v7 + 376), v11, v12);
  result = objc_msgSend_mecabra(*(*(a1 + 32) + 464), v13, v14, v15, v16, v17);
  if (result)
  {
    result = objc_msgSend_shouldForwardMecabraOTAAssetsUpdate(*(*(a1 + 32) + 456), v19, v20, v21, v22, v23);
    if (result)
    {
      objc_msgSend_mecabra(*(*(a1 + 32) + 464), v24, v25, v26, v27, v28);
      MecabraSetAssetDataItemsForType();
      objc_msgSend_mecabra(*(*(a1 + 32) + 464), v29, v30, v31, v32, v33);
      MecabraSetAssetDataItemsForType();
      objc_msgSend_newCJKStaticLexicon(*(*(a1 + 32) + 456), v34, v35, v36, v37, v38);
      operator new();
    }
  }

  return result;
}

void sub_1836B4330(void *a1)
{
  __cxa_begin_catch(a1);
  LMLexiconRelease();
  __cxa_rethrow();
}

void sub_1836B43CC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v2 + 360);
  if (v4 != v3)
  {
    if (v3)
    {
      CFRetain(v3);
      v2 = a1[4];
      v4 = *(v2 + 360);
    }

    *(v2 + 360) = v3;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[4];
    if (!*(v5 + 480) || (LMLanguageModelAddTransientVocabulary(), *(a1[4] + 328) = a1[6], (v5 = a1[4]) != 0))
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = sub_1836B10D4;
      v10 = &unk_1E6DDBE10;
      v11 = v5;
      sub_1836AF8AC(v5, &v7);
      v6 = a1[4];
      if (v6)
      {
        v7 = MEMORY[0x1E69E9820];
        v8 = 3221225472;
        v9 = sub_1836B0EFC;
        v10 = &unk_1E6DDBE10;
        v11 = v6;
        sub_1836AF8AC(v6, &v7);
      }
    }
  }
}

void sub_1836B4570(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 32);
  if (v4 != v3)
  {
    if (v3)
    {
      CFRetain(v3);
      v2 = *(a1 + 32);
      v4 = *(v2 + 32);
    }

    *(v2 + 32) = v3;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1836B0EFC;
      v6[3] = &unk_1E6DDBE10;
      v6[4] = v5;
      sub_1836AF8AC(v5, v6);
    }
  }
}

void sub_1836B46D8(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 432) != v1)
  {
    objc_storeStrong((v2 + 432), v1);
    v9 = *(*(a1 + 32) + 368);
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = *(a1 + 32);
      v12 = *(v11 + 368);
      *(v11 + 368) = v10;

      v9 = *(*(a1 + 32) + 368);
    }

    objc_msgSend_removeAllObjects(v9, v4, v5, v6, v7, v8);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = *(*(a1 + 32) + 432);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v36, 16, v15);
    if (v21)
    {
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v13);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          v25 = *(*(a1 + 32) + 368);
          v26 = objc_msgSend_lowercaseString(v24, v16, v17, v18, v19, v20, v31);
          objc_msgSend_setObject_forKey_(v25, v27, v24, v26, v28, v29);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v36, 16, v20);
      }

      while (v21);
    }

    v30 = *(a1 + 32);
    if (v30)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_1836B0EFC;
      v35[3] = &unk_1E6DDBE10;
      v35[4] = v30;
      sub_1836AF8AC(v30, v35);
    }
  }
}

void sub_1836B4948(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    if (v3)
    {
      CFRetain(v3);
      v2 = *(a1 + 32);
      v4 = *(v2 + 480);
    }

    *(v2 + 480) = v3;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = sub_1836B10D4;
      v10 = &unk_1E6DDBE10;
      v11 = v5;
      sub_1836AF8AC(v5, &v7);
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = MEMORY[0x1E69E9820];
        v8 = 3221225472;
        v9 = sub_1836B0EFC;
        v10 = &unk_1E6DDBE10;
        v11 = v6;
        sub_1836AF8AC(v6, &v7);
      }
    }
  }
}

void sub_1836B4AC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 464);
  v9 = objc_msgSend_mecabraInputMethodType(*(v7 + 456), a2, a3, a4, a5, a6);
  objc_msgSend_initMecabraIfNeededWithType_learningDictURL_(v8, v10, v9, *(v7 + 376), v11, v12);
  if (objc_msgSend_mecabra(*(*(a1 + 32) + 464), v13, v14, v15, v16, v17))
  {
    IsPredictionCandidate = MecabraCandidateIsPredictionCandidate();
    objc_msgSend_mecabra(*(*(a1 + 32) + 464), v19, v20, v21, v22, v23);
    if (IsPredictionCandidate)
    {
      MecabraPredictionAcceptCandidate();
    }

    else
    {
      MecabraAcceptCandidate();
    }

    Surface = MecabraCandidateGetSurface();
    sub_1836B4BA8(&cf, Surface);
    if (cf)
    {
      objc_msgSend_mecabra(*(*(a1 + 32) + 464), v25, v26, v27, v28, v29);
      MecabraWorkingSetAddString();
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

void sub_1836B4B94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void *sub_1836B4BA8(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_1836B4C4C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_183695860(v1);
  _Unwind_Resume(a1);
}

void sub_1836B4E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1836B4E90(__n128 *a1, __n128 *a2)
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

void sub_1836B4EB4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_1836B4ECC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 464);
  v9 = objc_msgSend_mecabraInputMethodType(*(v7 + 456), a2, a3, a4, a5, a6);
  objc_msgSend_initMecabraIfNeededWithType_learningDictURL_(v8, v10, v9, *(v7 + 376), v11, v12);
  result = objc_msgSend_mecabra(*(*(a1 + 32) + 464), v13, v14, v15, v16, v17);
  if (result)
  {
    objc_msgSend_mecabra(*(*(a1 + 32) + 464), v19, v20, v21, v22, v23);
    MecabraPredictionAnalyze();
    objc_msgSend_mecabra(*(*(a1 + 32) + 464), v24, v25, v26, v27, v28);
    for (result = MecabraPredictionGetNextCandidate(); result; result = MecabraPredictionGetNextCandidate())
    {
      v35 = *(*(a1 + 56) + 8);
      v37 = v35[7];
      v36 = v35[8];
      if (v37 < v36)
      {
        *v37 = result;
        v34 = v37 + 1;
      }

      else
      {
        v38 = v35[6];
        v39 = v37 - v38;
        v40 = (v37 - v38) >> 3;
        v41 = v40 + 1;
        if ((v40 + 1) >> 61)
        {
          sub_1836D58DC();
        }

        v42 = v36 - v38;
        if (v42 >> 2 > v41)
        {
          v41 = v42 >> 2;
        }

        if (v42 >= 0x7FFFFFFFFFFFFFF8)
        {
          v43 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v41;
        }

        if (v43)
        {
          if (!(v43 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        v44 = (v37 - v38) >> 3;
        v45 = (8 * v40);
        v46 = (8 * v40 - 8 * v44);
        *v45 = result;
        v34 = v45 + 1;
        memcpy(v46, v38, v39);
        v35[6] = v46;
        v35[7] = v34;
        v35[8] = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      v35[7] = v34;
      objc_msgSend_mecabra(*(*(a1 + 32) + 464), v29, v30, v31, v32, v33);
    }
  }

  return result;
}

uint64_t sub_1836B5148(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[4];
  v8 = *(v7 + 464);
  v9 = objc_msgSend_mecabraInputMethodType(*(v7 + 456), a2, a3, a4, a5, a6);
  objc_msgSend_initMecabraIfNeededWithType_learningDictURL_(v8, v10, v9, *(v7 + 376), v11, v12);
  result = objc_msgSend_containsObject_(*(a1[4] + 24), v13, a1[5], v14, v15, v16);
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    result = objc_msgSend_mecabra(*(a1[4] + 464), v18, v19, v20, v21, v22);
    if (result)
    {
      objc_msgSend_mecabra(*(a1[4] + 464), v23, v24, v25, v26, v27);
      result = MecabraWorkingSetContainsString();
      *(*(a1[6] + 8) + 24) = result == 0;
    }
  }

  return result;
}

id sub_1836B51F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1836B5338;
  v14[3] = &unk_1E6DDC868;
  v14[4] = a1;
  v8 = v6;
  v15 = v8;
  v9 = v5;
  v16 = v9;
  v10 = v7;
  v17 = v10;
  sub_1836AF8AC(a1, v14);
  v11 = v17;
  v12 = v10;

  return v10;
}

unint64_t sub_1836B5338(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 464);
  v9 = objc_msgSend_mecabraInputMethodType(*(v7 + 456), a2, a3, a4, a5, a6);
  objc_msgSend_initMecabraIfNeededWithType_learningDictURL_(v8, v10, v9, *(v7 + 376), v11, v12);
  result = objc_msgSend_mecabra(*(*(a1 + 32) + 464), v13, v14, v15, v16, v17);
  if (result)
  {
    result = objc_msgSend_count(*(a1 + 40), v19, v20, v21, v22, v23);
    if (result)
    {
      v28 = 0;
      objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v24, 0, v25, v26, v27);
      while (1)
        v38 = {;
        v44 = objc_msgSend_rangeValue(v38, v39, v40, v41, v42, v43);
        v46 = v45;

        v50 = objc_msgSend_substringWithRange_(*(a1 + 48), v47, v44, v46, v48, v49);
        objc_msgSend_mecabra(*(*(a1 + 32) + 464), v51, v52, v53, v54, v55);
        if (!MecabraWorkingSetContainsString())
        {
          objc_msgSend_addIndex_(*(a1 + 56), v56, v28, v57, v58, v59);
        }

        ++v28;
        result = objc_msgSend_count(*(a1 + 40), v29, v30, v31, v32, v33);
        if (v28 >= result)
        {
          break;
        }

        objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v34, v28, v35, v36, v37);
      }
    }
  }

  return result;
}

void sub_1836B5500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = CHRecognizer;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

id sub_1836B5530(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[13] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2;
    v19[0] = &unk_1EF1ECA18;
    v19[1] = &unk_1EF1ECA30;
    v20[0] = @"Oval";
    v20[1] = @"Line";
    v19[2] = &unk_1EF1ECA48;
    v19[3] = &unk_1EF1ECA60;
    v20[2] = @"Outline Arrow";
    v20[3] = @"Triangle";
    v19[4] = &unk_1EF1ECA78;
    v19[5] = &unk_1EF1ECA90;
    v20[4] = @"Rectangle";
    v20[5] = @"Pentagon";
    v19[6] = &unk_1EF1ECAA8;
    v19[7] = &unk_1EF1ECAC0;
    v20[6] = @"Manhattan Line";
    v20[7] = @"Chat Bubble";
    v19[8] = &unk_1EF1ECAD8;
    v19[9] = &unk_1EF1ECAF0;
    v20[8] = @"Star";
    v20[9] = @"Heart";
    v19[10] = &unk_1EF1ECB08;
    v19[11] = &unk_1EF1ECB20;
    v20[10] = @"Cloud";
    v20[11] = @"ScratchOut";
    v19[12] = &unk_1EF1ECB38;
    v20[12] = @"Scribble";
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v20, v19, 13, a6);
    v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, v6, v9, v10, v11);
    v17 = objc_msgSend_objectForKey_(v7, v13, v12, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_1836B58EC(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1836B5B04(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1836B5B24()
{
  if (!v0)
  {
    JUMPOUT(0x1836B5B18);
  }

  JUMPOUT(0x1836B5B10);
}

const void **sub_1836B5D54(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1836B5D90(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  return a1;
}

id sub_1836B5DF4(void *a1, void *a2, void *a3, void *a4)
{
  v296 = a2;
  v291 = a3;
  v298 = a4;
  if (!a1)
  {
    v289 = 0;
    goto LABEL_188;
  }

  v294 = objc_msgSend__effectiveMaxRecognitionResultCount(a1, v7, v8, v9, v10, v11);
  v299 = 0;
  v300 = 0;
  v301 = 0;
  v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  if (objc_msgSend_strokeCount(v296, v18, v19, v20, v21, v22) <= 10)
  {
    v28 = objc_msgSend_strokeCount(v296, v23, v24, v25, v26, v27);
  }

  else
  {
    v28 = 10;
  }

  v29 = objc_msgSend_objectForKeyedSubscript_(v291, v23, @"CHRecognitionOptionShouldConsumeAllStrokes", v25, v26, v27);
  v35 = objc_msgSend_BOOLValue(v29, v30, v31, v32, v33, v34);

  if (v35)
  {
    v41 = objc_msgSend_strokeCount(v296, v36, v37, v38, v39, v40);
    v28 = objc_msgSend_strokeCount(v296, v42, v43, v44, v45, v46);
    v297 = a1;
    v47 = 0;
    if (v41 <= v28)
    {
LABEL_7:
      v48 = 0;
      v49 = v28 + 1;
      v50 = -1.0;
      v51 = 0x7FFFFFFFFFFFFFFFLL;
      v52 = MEMORY[0x1E695F058];
      v292 = MEMORY[0x1E695E0F0];
      v53 = 0xFFFF;
      while (1)
      {
        if (v298 && (v298[2]() & 1) != 0)
        {
          goto LABEL_185;
        }

        v55 = objc_msgSend_drawingWithLastStrokes_(v296, v36, v41, v38, v39, v40);
        sub_1836ADEE0(&__p, v297[31], v55, v297[29], v294, 1, *v52, v52[1], v52[2], v52[3]);
        v56 = __p;
        v54 = *(__p + 1);
        v57 = 0.2;
        if (*__p == v53)
        {
          v57 = 0.0;
        }

        v58 = v54 > (v50 - v57) ? 1 : v35;
        if (v58)
        {
          break;
        }

        v54 = v50;
LABEL_9:
        v304 = v56;
        operator delete(v56);
LABEL_10:

        ++v41;
        v50 = v54;
        if (v49 == v41)
        {
          a1 = v297;
          if (v48)
          {
            v63 = [CHFreeformRecognitionResult alloc];
            v69 = objc_msgSend_initWithScore_(v63, v64, v65, v66, v67, v68, 0.0);
            objc_msgSend_insertObject_atIndex_(v17, v70, v69, 0, v71, v72);
          }

          objc_msgSend_drawingWithLastStrokes_(v296, v36, v51, v38, v39, v40);
          goto LABEL_38;
        }
      }

      sub_18368A3D8(&v299, __p, v304, (v304 - __p) >> 3);
      v47 = v299;
      v53 = *v299;
      sub_1836ADEE0(v302, v297[32], v55, 0, 2, 1, *v52, v52[1], v52[2], v52[3]);
      if (*v302[0])
      {
        if (*v302[0] == 0xFFFF)
        {
          v59 = 0;
          v60 = (*(v302[0] + 1) - *(v302[0] + 3)) <= 0.2;
          v61 = __p;
          if (v304 == __p)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }

      else if (*(v302[0] + 1) < 0.85)
      {
        v59 = *__p == 4098;
        v60 = 1;
        v61 = __p;
        if (v304 == __p)
        {
          goto LABEL_30;
        }

LABEL_27:
        if (*v61 == 4106 && v61[1] > 0.98)
        {
          v62 = *(v302[0] + 1) < 0.9;
          goto LABEL_31;
        }

LABEL_30:
        v62 = 0;
LABEL_31:
        v48 = !v60 && !v62 || v59;
        v302[1] = v302[0];
        operator delete(v302[0]);
        v56 = __p;
        v51 = v41;
        if (!__p)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v59 = 0;
      v60 = 1;
      v61 = __p;
      if (v304 == __p)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v41 = 1;
    v297 = a1;
    v47 = 0;
    if (v28 >= 1)
    {
      goto LABEL_7;
    }
  }

  objc_msgSend_drawingWithLastStrokes_(v296, v36, 0x7FFFFFFFFFFFFFFFLL, v38, v39, v40);
  v73 = LABEL_38:;
  v295 = objc_msgSend_singleStrokeDrawing(v73, v74, v75, v76, v77, v78);

  v293 = v300;
  if (v47 == v300)
  {
    v174 = a1[29];
    if (!v174)
    {
LABEL_158:
      v187 = 0;
      goto LABEL_159;
    }
  }

  else
  {
    do
    {
      if (v298 && (v298[2]() & 1) != 0)
      {
        v292 = MEMORY[0x1E695E0F0];
        goto LABEL_184;
      }

      v84 = *(v47 + 1);
      if (v84 < 2.22507386e-308)
      {
        v84 = 2.22507386e-308;
      }

      v90 = log10(v84);
      *(v47 + 1) = v90;
      v91 = *v47;
      if (*v47 > 4102)
      {
        if (v91 > 4106)
        {
          if (v91 == 4107)
          {
            v158 = v295;
            operator new();
          }

          if (v91 == 4108)
          {
            v173 = v295;
            operator new();
          }

          v92 = 0;
          if (v91 == 0xFFFF)
          {
            objc_msgSend_bounds(v295, v85, v86, v87, v88, v89);
            x = v309.origin.x;
            y = v309.origin.y;
            width = v309.size.width;
            height = v309.size.height;
            MidX = CGRectGetMidX(v309);
            v310.origin.x = x;
            v310.origin.y = y;
            v310.size.width = width;
            v310.size.height = height;
            MidY = CGRectGetMidY(v310);
            v105 = [CHScribbleRecognitionResult alloc];
            v110 = sub_1836B5530(a1, *v47, v106, v107, v108, v109);
            v92 = objc_msgSend_initWithString_score_rotation_center_size_(v105, v111, v110, v112, v113, v114, *(v47 + 1), 0.0, MidX, MidY, width, height);

            if (v92)
            {
              objc_msgSend_addObject_(v17, v115, v92, v116, v117, v118);
            }
          }
        }

        else
        {
          if (v91 == 4103)
          {
            v126 = v295;
            v306 = 0.25;
            v307[0] = 5.0;
            v127 = CFPreferencesCopyAppValue(@"HWRLineAlignToAxisThreshold", @"com.apple.CoreHandwriting");
            v128 = v127;
            valuePtr = v127;
            if (!v127 || (v129 = CFGetTypeID(v127), v129 != CFNumberGetTypeID()) || !CFNumberGetValue(v128, kCFNumberFloatType, v307) || v307[0] < 0.0 || v307[0] > 40.0)
            {
              v307[0] = 5.0;
            }

            v133 = CFPreferencesCopyAppValue(@"HWRLineLengthRatioThreshold", @"com.apple.CoreHandwriting");
            valuePtr = v133;
            if (v128)
            {
              CFRelease(v128);
            }

            if (!v133 || (v135 = CFGetTypeID(v133), v135 != CFNumberGetTypeID()) || !CFNumberGetValue(v133, kCFNumberFloatType, &v306) || (*&v134 = v306, v306 < 0.0) || v306 > 0.5)
            {
              v306 = 0.25;
            }

            objc_msgSend_pointForStrokeIndex_pointIndex_(v126, v130, 0, 0, v131, v132, v134);
            v141 = objc_msgSend_pointCount(v126, v136, v137, v138, v139, v140);
            objc_msgSend_pointForStrokeIndex_pointIndex_(v126, v142, 0, v141 - 1, v143, v144);
            objc_msgSend_bounds(v126, v145, v146, v147, v148, v149);
            operator new();
          }

          if (v91 == 4105)
          {
            v165 = v295;
            operator new();
          }

          v92 = 0;
          if (v91 == 4106)
          {
            v97 = v295;
            operator new();
          }
        }
      }

      else if (v91 > 4098)
      {
        if (v91 == 4099)
        {
          v150 = v295;
          LODWORD(valuePtr) = 1084227584;
          v306 = 0.1;
          v307[0] = 0.25;
          v151 = CFPreferencesCopyAppValue(@"HWRTriangleAlignToAxisThreshold", @"com.apple.CoreHandwriting");
          v152 = v151;
          v302[0] = v151;
          if (!v151 || (v153 = CFGetTypeID(v151), v153 != CFNumberGetTypeID()) || !CFNumberGetValue(v152, kCFNumberFloatType, &valuePtr) || *&valuePtr < 0.0 || *&valuePtr > 40.0)
          {
            LODWORD(valuePtr) = 1084227584;
          }

          v154 = CFPreferencesCopyAppValue(@"HWRTriangleIsoscelesLengthRatioThreshold", @"com.apple.CoreHandwriting");
          v302[0] = v154;
          if (v152)
          {
            CFRelease(v152);
          }

          if (!v154 || (v155 = CFGetTypeID(v154), v155 != CFNumberGetTypeID()) || !CFNumberGetValue(v154, kCFNumberFloatType, v307) || v307[0] < 0.0 || v307[0] > 0.5)
          {
            v307[0] = 0.25;
          }

          v156 = CFPreferencesCopyAppValue(@"HWRTriangleEquilateralLengthRatioThreshold", @"com.apple.CoreHandwriting");
          v302[0] = v156;
          if (v154)
          {
            CFRelease(v154);
          }

          if (!v156 || (v157 = CFGetTypeID(v156), v157 != CFNumberGetTypeID()) || !CFNumberGetValue(v156, kCFNumberFloatType, &v306) || v306 < 0.0 || v306 > 0.3)
          {
            v306 = 0.1;
          }

          operator new();
        }

        if (v91 == 4100)
        {
          v166 = v295;
          v306 = 15.0;
          v307[0] = 0.25;
          v167 = CFPreferencesCopyAppValue(@"HWRRectangleFitToSquareLengthRatioThreshold", @"com.apple.CoreHandwriting");
          v168 = v167;
          v302[0] = v167;
          if (!v167 || (v169 = CFGetTypeID(v167), v169 != CFNumberGetTypeID()) || !CFNumberGetValue(v168, kCFNumberFloatType, v307) || v307[0] < 0.0 || v307[0] > 0.5)
          {
            v307[0] = 0.25;
          }

          v170 = CFPreferencesCopyAppValue(@"HWRRectangleAlignToIncrementsOf", @"com.apple.CoreHandwriting");
          v171 = v170;
          valuePtr = v170;
          if (!v170 || (v172 = CFGetTypeID(v170), v172 != CFNumberGetTypeID()) || !CFNumberGetValue(v171, kCFNumberFloatType, &v306) || v306 < 1.0 || v306 > 90.1)
          {
            v306 = 15.0;
          }

          operator new();
        }

        v92 = 0;
        if (v91 == 4101)
        {
          v98 = v295;
          operator new();
        }
      }

      else
      {
        if (v91 == 4096)
        {
          v119 = v295;
          v306 = 15.0;
          v307[0] = 0.25;
          v120 = CFPreferencesCopyAppValue(@"HWROvalFitToCircleRadiiRatioThreshold", @"com.apple.CoreHandwriting");
          v121 = v120;
          v302[0] = v120;
          if (!v120 || (v122 = CFGetTypeID(v120), v122 != CFNumberGetTypeID()) || !CFNumberGetValue(v121, kCFNumberFloatType, v307) || v307[0] < 0.0 || v307[0] > 0.5)
          {
            v307[0] = 0.25;
          }

          v123 = CFPreferencesCopyAppValue(@"HWROvalAlignToIncrementsOf", @"com.apple.CoreHandwriting");
          v124 = v123;
          valuePtr = v123;
          if (!v123 || (v125 = CFGetTypeID(v123), v125 != CFNumberGetTypeID()) || !CFNumberGetValue(v124, kCFNumberFloatType, &v306) || v306 < 1.0 || v306 > 90.1)
          {
            v306 = 15.0;
          }

          operator new();
        }

        if (v91 == 4097)
        {
          v159 = v295;
          LODWORD(valuePtr) = 1084227584;
          v307[0] = 0.25;
          v160 = CFPreferencesCopyAppValue(@"HWRLineAlignToAxisThreshold", @"com.apple.CoreHandwriting");
          v161 = v160;
          v302[0] = v160;
          if (!v160 || (v162 = CFGetTypeID(v160), v162 != CFNumberGetTypeID()) || !CFNumberGetValue(v161, kCFNumberFloatType, &valuePtr) || *&valuePtr < 0.0 || *&valuePtr > 40.0)
          {
            LODWORD(valuePtr) = 1084227584;
          }

          v163 = CFPreferencesCopyAppValue(@"HWRLineLengthRatioThreshold", @"com.apple.CoreHandwriting");
          v302[0] = v163;
          if (v161)
          {
            CFRelease(v161);
          }

          if (!v163 || (v164 = CFGetTypeID(v163), v164 != CFNumberGetTypeID()) || !CFNumberGetValue(v163, kCFNumberFloatType, v307) || v307[0] < 0.0 || v307[0] > 0.5)
          {
            v307[0] = 0.25;
          }

          operator new();
        }

        v92 = 0;
        if (v91 == 4098)
        {
          v93 = v295;
          LODWORD(valuePtr) = 1097859072;
          v94 = CFPreferencesCopyAppValue(@"HWROutlinedArrowAlignToIncrementsOf", @"com.apple.CoreHandwriting");
          v95 = v94;
          v302[0] = v94;
          if (!v94 || (v96 = CFGetTypeID(v94), v96 != CFNumberGetTypeID()) || !CFNumberGetValue(v95, kCFNumberFloatType, &valuePtr) || *&valuePtr < 1.0 || *&valuePtr > 90.1)
          {
            LODWORD(valuePtr) = 1097859072;
          }

          operator new();
        }
      }

      v47 += 8;
    }

    while (v47 != v293);
    a1 = v297;
    v174 = v297[29];
    if (!v174)
    {
      goto LABEL_158;
    }
  }

  v175 = objc_msgSend_objectForKey_(&unk_1EF1EB950, v79, @"ScratchOut", v81, v82, v83);
  v181 = objc_msgSend_integerValue(v175, v176, v177, v178, v179, v180);
  IsMember = objc_msgSend_characterIsMember_(v174, v182, v181, v183, v184, v185);

  v187 = IsMember ^ 1;
LABEL_159:
  v188 = objc_msgSend_firstObject(v17, v79, v80, v81, v82, v83);
  v194 = objc_msgSend_string(v188, v189, v190, v191, v192, v193);
  isEqualToString = objc_msgSend_isEqualToString_(v194, v195, @"Freeform", v196, v197, v198);

  v205 = objc_msgSend_string(v188, v200, v201, v202, v203, v204);
  v210 = objc_msgSend_isEqualToString_(v205, v206, @"Manhattan Line", v207, v208, v209);

  v221 = objc_msgSend_pointCount(v295, v211, v212, v213, v214, v215);
  if (v298 && (v298[2]() & 1) != 0)
  {
    v292 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (!(v187 & 1 | ((isEqualToString & 1) == 0)) && v221 <= 0x3E7)
    {
      if (objc_msgSend_count(v17, v216, v217, v218, v219, v220) >= 2)
      {
        v226 = objc_msgSend_objectAtIndexedSubscript_(v17, v222, 1, v223, v224, v225);
        objc_msgSend_score(v226, v227, v228, v229, v230, v231);
        v233 = v232;
        objc_msgSend_score(v188, v234, v235, v236, v237, v238);
        isEqualToString = vabdd_f64(v233, v239) > 0.4;
      }

      sub_183733954(a1[33], v295);
      if (isEqualToString)
      {
        v244 = 0;
      }

      else
      {
        v245 = a1[33];
        if (v245)
        {
          v244 = *(v245 + 40) < 2uLL;
        }

        else
        {
          v244 = 1;
        }
      }

      if (objc_msgSend_indexOfObjectPassingTest_(v17, v240, &unk_1EF1BB860, v241, v242, v243))
      {
        v246 = v244;
      }

      else
      {
        v246 = 1;
      }

      if ((v246 & 1) == 0)
      {
        objc_msgSend_bounds(v295, v216, v217, v218, v219, v220);
        v247 = v311.origin.x;
        v248 = v311.origin.y;
        v249 = v311.size.width;
        v250 = v311.size.height;
        CGRectGetMidX(v311);
        v312.origin.x = v247;
        v312.origin.y = v248;
        v312.size.width = v249;
        v312.size.height = v250;
        CGRectGetMidY(v312);
        v251 = [CHScratchOutRecognitionResult alloc];
        objc_msgSend_score(v188, v252, v253, v254, v255, v256);
        v261 = objc_msgSend_initWithString_score_rotation_center_size_(v251, v257, @"ScratchOut", v258, v259, v260);
        objc_msgSend_insertObject_atIndex_(v17, v262, v261, 0, v263, v264);
      }
    }

    if (!(v187 & 1 | ((v210 & 1) == 0)))
    {
      sub_183733954(a1[33], v295);
      v265 = a1[33];
      if (v265)
      {
        if (*(v265 + 40) >= 5uLL)
        {
          objc_msgSend_bounds(v295, v216, v217, v218, v219, v220);
          v266 = v313.origin.x;
          v267 = v313.origin.y;
          v268 = v313.size.width;
          v269 = v313.size.height;
          CGRectGetMidX(v313);
          v314.origin.x = v266;
          v314.origin.y = v267;
          v314.size.width = v268;
          v314.size.height = v269;
          CGRectGetMidY(v314);
          v270 = [CHScratchOutRecognitionResult alloc];
          objc_msgSend_score(v188, v271, v272, v273, v274, v275);
          v280 = objc_msgSend_initWithString_score_rotation_center_size_(v270, v276, @"ScratchOut", v277, v278, v279);
          objc_msgSend_insertObject_atIndex_(v17, v281, v280, 0, v282, v283);
        }
      }
    }

    if (objc_msgSend_count(v17, v216, v217, v218, v219, v220) > v294)
    {
      objc_msgSend_removeLastObject(v17, v284, v285, v286, v287, v288);
    }

    v292 = v17;
  }

LABEL_184:

  v47 = v299;
LABEL_185:

  if (v47)
  {
    v300 = v47;
    operator delete(v47);
  }

  v289 = v292;
LABEL_188:

  return v289;
}

void sub_1836B8798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, void *__p)
{
  sub_1836E1324(&a30);

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1836B8D30(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = objc_msgSend_string(v2, v3, v4, v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, @"Line", v10, v11, v12))
  {
    isEqualToString = 1;
  }

  else
  {
    v19 = objc_msgSend_string(v2, v13, v14, v15, v16, v17);
    isEqualToString = objc_msgSend_isEqualToString_(v19, v20, @"Manhattan Line", v21, v22, v23);
  }

  return isEqualToString;
}

void sub_1836B8DEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = objc_msgSend_firstObject(v5, v7, v8, v9, v10, v11);
  v13 = MEMORY[0x1E696AE18];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1836B9014;
  v41[3] = &unk_1E6DDC3E8;
  v14 = v12;
  v42 = v14;
  v19 = objc_msgSend_predicateWithBlock_(v13, v15, v41, v16, v17, v18);
  objc_msgSend_filterUsingPredicate_(v5, v20, v19, v21, v22, v23);

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v29 = objc_msgSend_length(v6, v24, v25, v26, v27, v28);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1836B90B8;
  v34[3] = &unk_1E6DDC438;
  v30 = v5;
  v35 = v30;
  v31 = v14;
  v36 = v31;
  v37 = a1;
  v32 = v6;
  v38 = v32;
  v39 = v40;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v32, v33, 0, v29, 258, v34);

  _Block_object_dispose(v40, 8);
}

void sub_1836B8FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1836B9014(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (*(a1 + 32) == v3)
  {

    return 1;
  }

  else
  {
    v10 = objc_msgSend_inappropriateWordIndexes(v3, v4, v5, v6, v7, v8);
    v16 = objc_msgSend_count(v10, v11, v12, v13, v14, v15) == 0;

    return v16;
  }
}

void sub_1836B90B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7)
{
  v11 = MEMORY[0x1E696AE18];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1836B921C;
  v31[3] = &unk_1E6DDC410;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = a3;
  v36 = a4;
  v20 = objc_msgSend_predicateWithBlock_(v11, v16, v31, v17, v18, v19);
  objc_msgSend_filterUsingPredicate_(v12, v21, v20, v22, v23, v24);

  v30 = objc_msgSend_count(*(a1 + 32), v25, v26, v27, v28, v29) < 2 || *(*(*(a1 + 64) + 8) + 24) > 4uLL;
  *a7 = v30;
  ++*(*(*(a1 + 64) + 8) + 24);
}

uint64_t sub_1836B921C(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(a1 + 32) == v7)
  {
    v25 = 1;
  }

  else
  {
    v8 = *(*(a1 + 40) + 488);
    v9 = objc_msgSend_substringFromIndex_(*(a1 + 48), v3, *(a1 + 56), v4, v5, v6);
    v15 = objc_msgSend_string(v7, v10, v11, v12, v13, v14);
    v20 = objc_msgSend_stringByAppendingString_(v9, v16, v15, v17, v18, v19);
    v25 = objc_msgSend_isInappropriateString_(v8, v21, v20, v22, v23, v24) ^ 1;
  }

  return v25;
}

id sub_1836B9304(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v229[1] = *MEMORY[0x1E69E9840];
  v211 = a2;
  v210 = a3;
  v209 = a4;
  v208 = a5;
  if (a1)
  {
    v14 = objc_msgSend__effectiveMaxRecognitionResultCount(a1, v9, v10, v11, v12, v13);
    v231.origin.x = sub_1836B9B98(v209);
    x = v231.origin.x;
    y = v231.origin.y;
    width = v231.size.width;
    height = v231.size.height;
    if (CGRectIsNull(v231))
    {
      objc_msgSend_bounds(v211, v19, v20, v21, v22, v23);
      x = v24;
      y = v25;
      width = v26;
      height = v27;
    }

    objc_msgSend_bounds(v211, v19, v20, v21, v22, v23);
    v234.origin.x = v28;
    v234.origin.y = v29;
    v234.size.width = v30;
    v234.size.height = v31;
    v232.origin.x = x;
    v232.origin.y = y;
    v232.size.width = width;
    v232.size.height = height;
    v233 = CGRectUnion(v232, v234);
    v32 = v233.origin.x;
    v33 = v233.origin.y;
    v34 = v233.size.width;
    v35 = v233.size.height;
    v214 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37, v38, v39, v40);
    v41 = *(a1 + 248);
    if (v41)
    {
      sub_1836ADEE0(&__src, v41, v211, *(a1 + 232), v14, 0, v32, v33, v34, v35);
      if (objc_msgSend_shouldRefineChineseCharacterCandidates(*(a1 + 456), v42, v43, v44, v45, v46))
      {
        sub_1836B9C54(a1, &__src, v211);
      }

      if (objc_msgSend_shouldApplyLMRescoring(*(a1 + 456), v47, v48, v49, v50, v51))
      {
        objc_msgSend__rescoreCandidatesWithLanguageModel_history_(a1, v52, &__src, v208, v55, v56);
      }

      if (objc_msgSend_shouldTransliterateAndSynthetizeCandidates(*(a1 + 456), v52, v53, v54, v55, v56))
      {
        objc_msgSend__applyTransliterationAndSyntheticCandidates_(a1, v57, &__src, v59, v60, v61);
      }

      v216 = a1;
      if (objc_msgSend_shouldPromoteCJKCommonCharacters(*(a1 + 456), v57, v58, v59, v60, v61))
      {
        v67 = __src;
        if (v218 != __src)
        {
          v68 = 0;
          v69 = 0;
          while (1)
          {
            v70 = sub_1837A4260(*&v67[v68], v62, v63, v64, v65, v66);
            if ((objc_msgSend_isRareChineseEntry_(a1, v71, v70, v72, v73, v74) & 1) == 0)
            {
              break;
            }

            v67 = __src;
            ++v69;
            v68 += 8;
            a1 = v216;
            if (v69 >= (v218 - __src) >> 3)
            {
              goto LABEL_24;
            }
          }

          if (v69)
          {
            v75 = __src;
            if (v69 == 1)
            {
              v76 = *__src;
              *__src = *(__src + v68);
              v75[1] = v76;
            }

            else
            {
              v77 = *(__src + v68);
              if (v68)
              {
                memmove(__src + 8, __src, v68);
              }

              *v75 = v77;
            }
          }
        }
      }

LABEL_24:
      v78 = MEMORY[0x1E696AC90];
      if (v210)
      {
        v79 = objc_msgSend_segments(v210, v62, v63, v64, v65, v66);
        v85 = objc_msgSend_count(v79, v80, v81, v82, v83, v84);
        v89 = objc_msgSend_indexSetWithIndexesInRange_(v78, v86, 0, v85, v87, v88);

        v90 = v89;
        v91 = v210;
        objc_msgSend_count(v90, v92, v93, v94, v95, v96);
        v102 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v97, v98, v99, v100, v101);
        v219[0] = MEMORY[0x1E69E9820];
        v219[1] = 3221225472;
        v219[2] = sub_1836C8608;
        v219[3] = &unk_1E6DDC5F8;
        v222 = 0;
        v103 = v91;
        v220 = v103;
        v104 = v102;
        v221 = v104;
        objc_msgSend_enumerateIndexesUsingBlock_(v90, v105, v219, v106, v107, v108);
        v109 = v221;
        v110 = v104;

        v229[0] = v110;
        v213 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v111, v229, 1, v112, v113);
      }

      else
      {
        v114 = objc_msgSend_strokeCount(v211, v62, v63, v64, v65, v66);
        v90 = objc_msgSend_indexSetWithIndexesInRange_(v78, v115, 0, v114, v116, v117);
        v228 = v90;
        v213 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v118, &v228, 1, v119, v120);
      }

      v126 = __src;
      v212 = v218;
      if (__src != v218)
      {
        do
        {
          v127 = sub_1837A4260(*v126, v121, v122, v123, v124, v125);
          v132 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v128, 1, v129, v130, v131);
          v227 = v132;
          v136 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v133, &v227, 1, v134, v135);

          v141 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v137, 0, v138, v139, v140);
          v226 = v141;
          v215 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v142, &v226, 1, v143, v144);

          v145 = MEMORY[0x1E696B098];
          v151 = objc_msgSend_length(v127, v146, v147, v148, v149, v150);
          v155 = objc_msgSend_valueWithRange_(v145, v152, 0, v151, v153, v154);
          v225 = v155;
          v159 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v156, &v225, 1, v157, v158);

          shouldTransformCharacterProbabilitiesIntoLogScores = objc_msgSend_shouldTransformCharacterProbabilitiesIntoLogScores(*(v216 + 456), v160, v161, v162, v163, v164);
          v171 = v126[1];
          if (shouldTransformCharacterProbabilitiesIntoLogScores)
          {
            v171 = -log10f(v171);
          }

          v172 = v171;
          v173 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v166, v167, v168, v169, v170, v171);
          v224 = v173;
          v177 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v174, &v224, 1, v175, v176);

          v183 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v178, v179, v180, v181, v182, v172);
          v223 = v183;
          v187 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v184, &v223, 1, v185, v186);

          v188 = sub_1836B51F0(v216, v127, v159);
          if (objc_msgSend_isInappropriateString_(*(v216 + 488), v189, v127, v190, v191, v192))
          {
            v197 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v193, 0, v194, v195, v196);
          }

          else
          {
            v197 = 0;
          }

          v198 = [CHTextRecognitionResult alloc];
          LOBYTE(v207) = 0;
          isTextReplacement = objc_msgSend_initWithString_score_wordRanges_wordIDs_wordRecognitionScores_wordCombinedScores_wordStrokeSets_wordLexicalEntries_wordPatternEntries_rareWordIndexes_inappropriateWordIndexes_isTextReplacement_(v198, v199, v127, v159, v215, v177, v187, v213, v126[1], v136, v136, v188, v197, v207);
          v205 = sub_1836B9E90(v216, isTextReplacement);
          if (v205)
          {
            objc_msgSend_addObject_(v214, v201, v205, v202, v203, v204);
          }

          objc_msgSend_addObject_(v214, v201, isTextReplacement, v202, v203, v204);

          v126 += 2;
        }

        while (v126 != v212);
      }

      sub_1836B8DEC(v216, v214, v208);

      if (__src)
      {
        v218 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v214 = 0;
  }

  return v214;
}

void sub_1836B99C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, _Unwind_Exception *exception_object, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_1836B9B98(void *a1)
{
  v1 = a1;
  v6 = v1;
  v7 = *(MEMORY[0x1E695F050] + 16);
  v14[0] = *MEMORY[0x1E695F050];
  v14[1] = v7;
  if (v1)
  {
    v8 = objc_msgSend_objectForKey_(v1, v2, CHRecognitionOptionFrameContext, v3, v4, v5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_getValue_(v8, v9, v14, v10, v11, v12);
    }
  }

  return *v14;
}

void sub_1836B9C54(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a3;
  v9 = objc_msgSend_indexesOfStrokesSmallerThanSize_(v36, v4, v5, v6, v7, v8, *(a1 + 496), *(a1 + 504));
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);
  if (v15 == objc_msgSend_strokeCount(v36, v16, v17, v18, v19, v20))
  {
    if (objc_msgSend_strokeCount(v36, v21, v22, v23, v24, v25) == 1)
    {
      operator new();
    }

    if (objc_msgSend_strokeCount(v36, v26, v27, v28, v29, v30) == 2)
    {
      operator new();
    }

    if (objc_msgSend_strokeCount(v36, v31, v32, v33, v34, v35) == 3)
    {
      operator new();
    }
  }
}

void sub_1836B9DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  operator delete(v10);

  _Unwind_Resume(a1);
}

id sub_1836B9E90(uint64_t a1, void *a2)
{
  v149[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = v3;
  if (*(a1 + 432))
  {
    v10 = *(a1 + 368);
    v11 = objc_msgSend_string(v3, v4, v5, v6, v7, v8);
    v17 = objc_msgSend_lowercaseString(v11, v12, v13, v14, v15, v16);
    v22 = objc_msgSend_objectForKey_(v10, v18, v17, v19, v20, v21);

    if (v22)
    {
      v137 = objc_msgSend_objectForKey_(*(a1 + 432), v23, v22, v24, v25, v26);
      v27 = MEMORY[0x1E696AD98];
      objc_msgSend_score(v9, v28, v29, v30, v31, v32);
      v38 = objc_msgSend_numberWithDouble_(v27, v33, v34, v35, v36, v37);
      v149[0] = v38;
      v133 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v39, v149, 1, v40, v41);

      v42 = MEMORY[0x1E696AD98];
      objc_msgSend_score(v9, v43, v44, v45, v46, v47);
      v53 = objc_msgSend_numberWithDouble_(v42, v48, v49, v50, v51, v52);
      v148 = v53;
      v134 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v54, &v148, 1, v55, v56);

      v57 = MEMORY[0x1E696B098];
      v63 = objc_msgSend_length(v137, v58, v59, v60, v61, v62);
      v67 = objc_msgSend_valueWithRange_(v57, v64, 0, v63, v65, v66);
      v147 = v67;
      v135 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v68, &v147, 1, v69, v70);

      v75 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v71, 1, v72, v73, v74);
      v146 = v75;
      v136 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v76, &v146, 1, v77, v78);

      v83 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v79, 1, v80, v81, v82);
      v145 = v83;
      v87 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v84, &v145, 1, v85, v86);

      v92 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v88, 0, v89, v90, v91);
      v144 = v92;
      v96 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v93, &v144, 1, v94, v95);

      v102 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v97, v98, v99, v100, v101);
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v108 = objc_msgSend_wordStrokeSets(v9, v103, v104, v105, v106, v107);
      v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v138, v143, 16, v110);
      if (v115)
      {
        v116 = *v139;
        do
        {
          for (i = 0; i != v115; ++i)
          {
            if (*v139 != v116)
            {
              objc_enumerationMutation(v108);
            }

            objc_msgSend_addIndexes_(v102, v111, *(*(&v138 + 1) + 8 * i), v112, v113, v114);
          }

          v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v111, &v138, v143, 16, v114);
        }

        while (v115);
      }

      v118 = [CHTextRecognitionResult alloc];
      objc_msgSend_score(v9, v119, v120, v121, v122, v123);
      v125 = v124;
      v142 = v102;
      v129 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v126, &v142, 1, v127, v128);
      isTextReplacement = objc_msgSend_initWithString_score_wordRanges_wordIDs_wordRecognitionScores_wordCombinedScores_wordStrokeSets_wordLexicalEntries_wordPatternEntries_rareWordIndexes_inappropriateWordIndexes_isTextReplacement_(v118, v130, v137, v135, v96, v133, v134, v129, v125, v136, v87, 0, 0, 1);
    }

    else
    {
      isTextReplacement = 0;
    }
  }

  else
  {
    isTextReplacement = 0;
  }

  return isTextReplacement;
}

void sub_1836BA370(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a2;
  v9 = a1[4];
  v13 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v10, a5, a6, v11, v12);
  objc_msgSend_addObject_(v9, v14, v13, v15, v16, v17);

  v18 = a1[5];
  v19 = MEMORY[0x1E696AD98];
  v25 = objc_msgSend_wordID(v63, v20, v21, v22, v23, v24);
  v30 = objc_msgSend_numberWithUnsignedInt_(v19, v26, v25, v27, v28, v29);
  objc_msgSend_addObject_(v18, v31, v30, v32, v33, v34);

  v35 = a1[6];
  v36 = MEMORY[0x1E696AD98];
  v42 = objc_msgSend_properties(v63, v37, v38, v39, v40, v41);
  v47 = objc_msgSend_numberWithBool_(v36, v43, (v42 >> 3) & 1, v44, v45, v46);
  objc_msgSend_addObject_(v35, v48, v47, v49, v50, v51);

  v57 = objc_msgSend_string(v63, v52, v53, v54, v55, v56);
  *(*(a1[7] + 8) + 24) += objc_msgSend_length(v57, v58, v59, v60, v61, v62);
}

void sub_1836BA820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25)
{
  _Block_object_dispose((v30 - 144), 8);

  _Unwind_Resume(a1);
}

void sub_1836BA8E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v11 = objc_msgSend_mutableCopy(v60, v6, v7, v8, v9, v10);
  v12 = qword_1EA84CD18;
  qword_1EA84CD18 = v11;

  v13 = qword_1EA84CD18;
  v61 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v14, v15, v16, v17, v18);
  objc_msgSend_formUnionWithCharacterSet_(v13, v19, v61, v20, v21, v22);

  v23 = qword_1EA84CD18;
  v62 = objc_msgSend_symbolCharacterSet(MEMORY[0x1E696AB08], v24, v25, v26, v27, v28);
  objc_msgSend_formUnionWithCharacterSet_(v23, v29, v62, v30, v31, v32);

  v38 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v33, v34, v35, v36, v37);
  v63 = objc_msgSend_mutableCopy(v38, v39, v40, v41, v42, v43);

  v48 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v44, @"'.-/", v45, v46, v47);
  objc_msgSend_formUnionWithCharacterSet_(v63, v49, v48, v50, v51, v52);

  v58 = objc_msgSend_invertedSet(v63, v53, v54, v55, v56, v57);
  v59 = qword_1EA84CD20;
  qword_1EA84CD20 = v58;
}

void sub_1836BAA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1836BAA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1836BAA90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(*(a1 + 32) + 480))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "wordLanguageModel is not valid!", buf, 2u);
    }

    if (!*(*(a1 + 32) + 480))
    {
      if (qword_1EA84DC48 == -1)
      {
        v9 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_13;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v9 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_13:

          v8 = *(a1 + 96);
          v97 = v8;
          if (v8)
          {
LABEL_8:
            if ((v8 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1836D58DC();
          }

          goto LABEL_14;
        }
      }

      *v99 = 0;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_FAULT, "wordLanguageModel is not valid!", v99, 2u);
      goto LABEL_13;
    }
  }

  v8 = *(a1 + 96);
  v97 = v8;
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_14:
  v14 = objc_msgSend_count(*(a1 + 40), a2, a3, a4, a5, a6);
  if (v14)
  {
    if (!(v14 >> 62))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v15 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v10, 0, v11, v12, v13);
  v21 = objc_msgSend_rangeValue(v15, v16, v17, v18, v19, v20);
  v98 = v22;
  v23 = v21;

  v24 = 0;
  v25 = 0;
  for (i = objc_msgSend_count(*(a1 + 40), v26, v27, v28, v29, v30, 4 * v97); v24 < i; i = objc_msgSend_count(*(a1 + 40), v81, v82, v83, v84, v85, v96))
  {
    v36 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v32, v24, v33, v34, v35);
    v42 = objc_msgSend_rangeValue(v36, v37, v38, v39, v40, v41);
    v44 = v43;

    v46 = objc_msgSend_rangeOfCharacterFromSet_options_range_(*(a1 + 56), v45, qword_1EA84CD20, 2, v42, v44);
    v52 = objc_msgSend_rangeOfCharacterFromSet_options_range_(*(a1 + 56), v47, qword_1EA84CD18, 2, v42, v44);
    if (v46 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v53 = 0;
      v54 = 0;
      if (v44 != 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v55 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v48, v25, v49, v50, v51);
      v53 = objc_msgSend_BOOLValue(v55, v56, v57, v58, v59, v60);

      v54 = 0;
      if (v44 != 1)
      {
        goto LABEL_26;
      }
    }

    if (v52 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v61 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v48, v25, v49, v50, v51);
      v54 = objc_msgSend_BOOLValue(v61, v62, v63, v64, v65, v66);
    }

LABEL_26:
    if (v42 != v23 || v44 != v98 || (objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v48, v25, v49, v50, v51), v67 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend_unsignedIntegerValue(v67, v68, v69, v70, v71, v72), v67, !v73))
    {
      v74 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 80), v48, v24, v49, v50, v51);
      v80 = objc_msgSend_unsignedIntegerValue(v74, v75, v76, v77, v78, v79);

      v73 = v80;
    }

    LMLanguageModelConditionalProbability();
    *(v96 + 4 * v24) = v73;
    if (v86 > 0.0)
    {
      v86 = -5.0;
    }

    if ((v53 | v54))
    {
      v87 = v86;
    }

    else
    {
      v87 = -15.654;
    }

    if (!v73)
    {
      v86 = v87;
    }

    *(*(*(a1 + 88) + 8) + 24) = v86 + *(*(*(a1 + 88) + 8) + 24);
    if (v42 + v44 == v23 + v98 && v25 < objc_msgSend_count(*(a1 + 48), v81, v82, v83, v84, v85) - 1)
    {
      v88 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v81, ++v25, v83, v84, v85);
      v94 = objc_msgSend_rangeValue(v88, v89, v90, v91, v92, v93);
      v98 = v95;
      v23 = v94;
    }

    ++v24;
  }
}

void sub_1836BAF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1836BB220(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"-/._@", a4, a5, a6);
  v7 = qword_1EA84DAC8;
  qword_1EA84DAC8 = v6;
}

void sub_1836BB268(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_maximumLengthOfBytesUsingEncoding_(*(a1 + 32), a2, 4, a4, a5, a6);
  v14 = objc_msgSend_length(*(a1 + 32), v8, v9, v10, v11, v12);
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v28 = 0;
  objc_msgSend_getBytes_maxLength_usedLength_encoding_options_range_remainingRange_(*(a1 + 32), v13, 0, 0, &v28, 4, 0, 0, v14, 0);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  objc_msgSend_locale(*(*(a1 + 40) + 456), v15, v16, v17, v18, v19);

  LMStreamTokenizerCreate();
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v21 = *(a1 + 32);
  v20 = v21.i64[0];
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  LMStreamTokenizerPushBytes();
  LMStreamTokenizerRelease();

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v27, 8);
}

void sub_1836BB47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25)
{
  _Block_object_dispose((v26 - 120), 8);
  _Block_object_dispose((v26 - 88), 8);
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_1836BB4EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v307 = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(*(*(a1 + 80) + 8) + 24), a4, a5, a6);
  v16 = objc_msgSend_rangeValue(v10, v11, v12, v13, v14, v15);
  v297 = v17;
  v298 = v16;

  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = objc_msgSend_initWithBytes_length_encoding_(v18, v19, a2, a3, 4, v20);
  v27 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v22, v23, v24, v25, v26);
  v32 = objc_msgSend_stringByTrimmingCharactersInSet_(v21, v28, v27, v29, v30, v31);

  v299 = v32;
  if (objc_msgSend_length(v32, v33, v34, v35, v36, v37))
  {
    v42 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v38, *(*(*(a1 + 80) + 8) + 24), v39, v40, v41);
    v48 = objc_msgSend_BOOLValue(v42, v43, v44, v45, v46, v47);

    v305 = 0;
    v49 = objc_opt_class();
    v55 = objc_msgSend_normalizeLMTokenIDForWord_tokenID_isFromPattern_score_wordLanguageModel_(v49, v50, v32, a4, v48, &v305, *(*(a1 + 48) + 480));
    if (v48 && (objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v51, *(*(*(a1 + 80) + 8) + 24), v52, v53, v54), v56 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend_rangeValue(v56, v57, v58, v59, v60, v61), v56, v64 = *(*(*(a1 + 88) + 8) + 24), v64 > v62))
    {
      v65 = *(a1 + 56);
      v66 = objc_msgSend_length(v65, v51, v63, v52, v53, v54);
      v68 = objc_msgSend_rangeOfString_options_range_(v65, v67, v32, 0, v64, v66 - *(*(*(a1 + 88) + 8) + 24));
      *(*(*(a1 + 88) + 8) + 24) = &v69[v68];
      if (*(*(*(a1 + 88) + 8) + 24) >= (v298 + v297))
      {
        do
        {
          v74 = *(*(*(a1 + 80) + 8) + 24);
          if (v74 >= objc_msgSend_count(*(a1 + 32), v69, v70, v71, v72, v73) - 1)
          {
            break;
          }

          v79 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v75, ++*(*(*(a1 + 80) + 8) + 24), v76, v77, v78);
          v85 = objc_msgSend_rangeValue(v79, v80, v81, v82, v83, v84);
          v87 = v86;
        }

        while (*(*(*(a1 + 88) + 8) + 24) >= (v85 + v87));
      }
    }

    else
    {
      if (v55)
      {
        v88 = *(a1 + 64);
        v89 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v51, v55, v52, v53, v54);
        objc_msgSend_addObject_(v88, v90, v89, v91, v92, v93);

        v94 = *(*(*(a1 + 88) + 8) + 24);
        v95 = *(a1 + 56);
        v101 = objc_msgSend_length(v95, v96, v97, v98, v99, v100);
        v103 = objc_msgSend_rangeOfString_options_range_(v95, v102, v32, 0, v94, v101 - *(*(*(a1 + 88) + 8) + 24));
        v107 = v103;
        v108 = v104;
        if (v48)
        {
          v109 = v298;
        }

        else
        {
          v109 = v103;
        }

        if (v48)
        {
          v110 = v297;
        }

        else
        {
          v110 = v104;
        }

        v111 = *(a1 + 72);
        v112 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v104, v109, v110, v105, v106);
        objc_msgSend_addObject_(v111, v113, v112, v114, v115, v116);

        *(*(*(a1 + 88) + 8) + 24) = &v108[v107];
      }

      else
      {
        v296 = objc_msgSend_componentsSeparatedByCharactersInSet_(v32, v51, qword_1EA84DAC8, v52, v53, v54);
        if (objc_msgSend_count(v296, v122, v123, v124, v125, v126) < 2)
        {
          v255 = *(a1 + 64);
          v256 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v127, 0, v128, v129, v130);
          objc_msgSend_addObject_(v255, v257, v256, v258, v259, v260);

          v261 = *(a1 + 56);
          v262 = *(*(*(a1 + 88) + 8) + 24);
          v268 = objc_msgSend_length(v261, v263, v264, v265, v266, v267);
          v270 = objc_msgSend_rangeOfString_options_range_(v261, v269, v32, 0, v262, v268 - *(*(*(a1 + 88) + 8) + 24));
          v272 = v271;
          v273 = *(a1 + 72);
          v276 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v271, v270, v271, v274, v275);
          objc_msgSend_addObject_(v273, v277, v276, v278, v279, v280);

          *(*(*(a1 + 88) + 8) + 24) = &v272[v270];
        }

        else
        {
          v131 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v32, v127, 0, v128, v129, v130);
          v295 = objc_msgSend_substringWithRange_(v32, v132, v131, v132, v133, v134);
          v139 = objc_msgSend_stringByTrimmingCharactersInSet_(v295, v135, qword_1EA84DAC8, v136, v137, v138);
          v145 = objc_msgSend_length(v139, v140, v141, v142, v143, v144) == 0;

          if (v145)
          {
            v150 = *(a1 + 64);
            v151 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v146, 24, v147, v148, v149);
            objc_msgSend_addObject_(v150, v152, v151, v153, v154, v155);

            v156 = *(a1 + 72);
            v160 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v157, *(*(*(a1 + 88) + 8) + 24), 1, v158, v159);
            objc_msgSend_addObject_(v156, v161, v160, v162, v163, v164);

            ++*(*(*(a1 + 88) + 8) + 24);
          }

          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          v302 = 0u;
          v165 = v296;
          v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v165, v166, &v301, v306, 16, v167);
          if (v173)
          {
            v174 = *v302;
            do
            {
              for (i = 0; i != v173; ++i)
              {
                if (*v302 != v174)
                {
                  objc_enumerationMutation(v165);
                }

                v176 = *(*(&v301 + 1) + 8 * i);
                if (objc_msgSend_length(v176, v168, v169, v170, v171, v172))
                {
                  v300 = 0;
                  v177 = objc_opt_class();
                  v179 = objc_msgSend_normalizeLMTokenIDForWord_tokenID_isFromPattern_score_wordLanguageModel_(v177, v178, v176, 0, 0, &v300, *(*(a1 + 48) + 480));
                  v180 = *(a1 + 64);
                  v185 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v181, v179, v182, v183, v184);
                  objc_msgSend_addObject_(v180, v186, v185, v187, v188, v189);

                  v190 = *(a1 + 56);
                  v191 = *(*(*(a1 + 88) + 8) + 24);
                  v197 = objc_msgSend_length(v190, v192, v193, v194, v195, v196);
                  v199 = objc_msgSend_rangeOfString_options_range_(v190, v198, v176, 0, v191, v197 - *(*(*(a1 + 88) + 8) + 24));
                  v201 = v200;
                  v202 = *(a1 + 72);
                  v205 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v200, v199, v200, v203, v204);
                  objc_msgSend_addObject_(v202, v206, v205, v207, v208, v209);

                  *(*(*(a1 + 88) + 8) + 24) = &v201[v199];
                }
              }

              v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v165, v168, &v301, v306, 16, v172);
            }

            while (v173);
          }

          v215 = objc_msgSend_length(v299, v210, v211, v212, v213, v214);
          v220 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v299, v216, v215 - 1, v217, v218, v219);
          v224 = objc_msgSend_substringWithRange_(v299, v221, v220, v221, v222, v223);
          v229 = objc_msgSend_stringByTrimmingCharactersInSet_(v224, v225, qword_1EA84DAC8, v226, v227, v228);
          v235 = objc_msgSend_length(v229, v230, v231, v232, v233, v234) == 0;

          if (v235)
          {
            v240 = *(a1 + 64);
            v241 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v236, 24, v237, v238, v239);
            objc_msgSend_addObject_(v240, v242, v241, v243, v244, v245);

            v246 = *(a1 + 72);
            v250 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v247, *(*(*(a1 + 88) + 8) + 24), 1, v248, v249);
            objc_msgSend_addObject_(v246, v251, v250, v252, v253, v254);

            ++*(*(*(a1 + 88) + 8) + 24);
          }
        }
      }

      if (*(*(*(a1 + 88) + 8) + 24) >= (v298 + v297))
      {
        do
        {
          v281 = *(*(*(a1 + 80) + 8) + 24);
          if (v281 >= objc_msgSend_count(*(a1 + 32), v117, v118, v119, v120, v121) - 1)
          {
            break;
          }

          v286 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v282, ++*(*(*(a1 + 80) + 8) + 24), v283, v284, v285);
          v292 = objc_msgSend_rangeValue(v286, v287, v288, v289, v290, v291);
          v294 = v293;
        }

        while (*(*(*(a1 + 88) + 8) + 24) >= (v292 + v294));
      }
    }
  }
}

void sub_1836BBE6C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, int a13)
{
  v72 = *MEMORY[0x1E69E9840];
  v67 = a6;
  a7;
  a12;
  v69 = a1;
  shouldPerformGlobalBestSearch = objc_msgSend_shouldPerformGlobalBestSearch(*(a1 + 456), v16, v17, v18, v19, v20);
  v27 = a2;
  if (0xCCCCCCCCCCCCCCCDLL * ((a2[5] - a2[4]) >> 3) - 1 <= 9)
  {
    shouldPerformGlobalBestSearch = objc_msgSend_shouldPerformGlobalBestSearchWithSmallLattice(*(v69 + 456), v22, v23, v24, v25, v26);
  }

  v28 = shouldPerformGlobalBestSearch;
  if (objc_msgSend_shouldPerformIntegratedLexiconExpansion(*(v69 + 456), v22, v23, v24, v25, v26))
  {
    shouldPenalizeLetterInsertion = objc_msgSend_shouldPenalizeLetterInsertion(*(v69 + 456), v29, v30, v31, v32, v33);
    shouldApplyLexicalPenalty = objc_msgSend_shouldApplyLexicalPenalty(*(v69 + 456), v35, v36, v37, v38, v39);
    if (shouldPenalizeLetterInsertion)
    {
      v41 = &unk_1EF1BB8C0;
    }

    else
    {
      v41 = &unk_1EF1BB8E0;
    }

    if (shouldApplyLexicalPenalty)
    {
      v42 = &unk_1EF1BB900;
    }

    else
    {
      v42 = &unk_1EF1BB920;
    }
  }

  else
  {
    v42 = &unk_1EF1BB960;
    v41 = &unk_1EF1BB940;
  }

  if (v28 & 1 | ((objc_msgSend_shouldPerformIntegratedLexiconExpansion(*(v69 + 456), v29, v30, v31, v32, v33) & 1) == 0))
  {
    if (a3 >= 5)
    {
LABEL_16:
      sub_183900DE4(v27, &v71);
      sub_18368D56C(&v71, v71.__r_.__value_.__l.__size_);
      v48 = *(v69 + 312);
      v49 = *(v69 + 336);
      objc_msgSend_shouldComputeStrokePenalties(*(v69 + 456), v50, v51, v52, v53, v54);
      objc_msgSend_shouldExpandCodePoints(*(v69 + 456), v55, v56, v57, v58, v59);
      objc_msgSend_shouldPenalizePrefixes(*(v69 + 456), v60, v61, v62, v63, v64);
      LOBYTE(v66) = v28;
      LODWORD(v65) = a13;
      sub_183911F74(0, &v70, v48, v67, v65, v49, v66, v41, v42);
    }
  }

  else if (a3 > 0x13)
  {
    goto LABEL_16;
  }

  objc_msgSend_shouldPerformIntegratedLexiconExpansion(*(v69 + 456), v43, v44, v45, v46, v47);
  goto LABEL_16;
}

void sub_1836BDF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  operator delete(v53);
  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
    if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
    {
LABEL_7:

      if (a26)
      {
        operator delete(a26);
      }

      if (a29)
      {
        operator delete(a29);
      }

      sub_1836E138C(&a52);
      _Unwind_Resume(a1);
    }
  }

  else if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(STACK[0x268]);
  goto LABEL_7;
}

double sub_1836BE680(uint64_t a1, double *a2)
{
  v2 = a2[17];
  if (v2 <= 15.654)
  {
    v3 = a2[15];
    if (v3 <= 15.654)
    {
      goto LABEL_3;
    }

LABEL_7:
    a2[15] = 15.654;
    v3 = 15.654;
    v4 = a2[21];
    if (v4 <= 15.654)
    {
      return v2 + a2[16] + (v3 + a2[14] + 0.0) * 0.15 + (v4 + a2[20]) * 0.2 + (a2[18] + a2[19]) * 2.0 + (a2[22] + a2[23]) * 0.2 + a2[24] * 8.0;
    }

    goto LABEL_4;
  }

  a2[17] = 15.654;
  v2 = 15.654;
  v3 = a2[15];
  if (v3 > 15.654)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = a2[21];
  if (v4 > 15.654)
  {
LABEL_4:
    a2[21] = 15.654;
    v4 = 15.654;
  }

  return v2 + a2[16] + (v3 + a2[14] + 0.0) * 0.15 + (v4 + a2[20]) * 0.2 + (a2[18] + a2[19]) * 2.0 + (a2[22] + a2[23]) * 0.2 + a2[24] * 8.0;
}

double sub_1836BE758(uint64_t a1, double *a2)
{
  v2 = a2[17];
  if (v2 > 15.654)
  {
    a2[17] = 15.654;
    v2 = 15.654;
  }

  v3 = a2[21];
  if (v3 > 15.654)
  {
    a2[21] = 15.654;
    v3 = 15.654;
  }

  return v2 + a2[16] + (v3 + a2[20]) * 0.2 + (a2[18] + a2[19]) * 2.0 + (a2[22] + a2[23]) * 0.2 + a2[24] * 8.0;
}

BOOL sub_1836BE7F4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8, double a9, double a10)
{
  v130[1] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a3;
  v120 = v19;
  v121 = a8;
  if (!a1)
  {
    v119 = 0;
    goto LABEL_14;
  }

  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = sub_1836BED0C;
  v122[3] = &unk_1E6DDC540;
  v21 = v20;
  v123 = v21;
  v27 = objc_msgSend_indexOfObjectPassingTest_(v19, v22, v122, v23, v24, v25);
  v119 = v27 == 0x7FFFFFFFFFFFFFFFLL;
  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = objc_msgSend_objectAtIndex_(v19, v26, v27, v28, v29, v30);
    objc_msgSend_score(v36, v37, v38, v39, v40, v41);
    if (v47 > a9)
    {
      v47 = a9;
    }

    objc_msgSend_setScore_(v36, v42, v43, v44, v45, v46, v47);
    goto LABEL_13;
  }

  v113 = v21;
  if (!objc_msgSend_isRareChineseEntry_(a1, v26, v21, v28, v29, v30))
  {
    v118 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_11:
    v117 = 0;
    goto LABEL_12;
  }

  v118 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v31, 0, v33, v34, v35);
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_6:
  v117 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v31, 0, v33, v34, v35);
LABEL_12:
  v48 = objc_msgSend_length(v21, v31, v32, v33, v34, v35);
  v49 = [CHTextRecognitionResult alloc];
  v112 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v50, 0, v48, v51, v52);
  v130[0] = v112;
  v116 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v53, v130, 1, v54, v55);
  v111 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v56, a7, v57, v58, v59);
  v129 = v111;
  v115 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v60, &v129, 1, v61, v62);
  v110 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v63, v64, v65, v66, v67, a10);
  v128 = v110;
  v114 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v68, &v128, 1, v69, v70);
  v76 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v71, v72, v73, v74, v75, a9);
  v127 = v76;
  v80 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, &v127, 1, v78, v79);
  v126 = v121;
  v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v81, &v126, 1, v82, v83);
  v89 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v85, a4, v86, v87, v88);
  v125 = v89;
  v93 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v90, &v125, 1, v91, v92);
  v98 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v94, a5, v95, v96, v97);
  v124 = v98;
  v102 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v99, &v124, 1, v100, v101);
  isTextReplacement = objc_msgSend_initWithString_score_wordRanges_wordIDs_wordRecognitionScores_wordCombinedScores_wordStrokeSets_wordLexicalEntries_wordPatternEntries_rareWordIndexes_inappropriateWordIndexes_isTextReplacement_(v49, v103, v113, v116, v115, v114, v80, v84, a9, v93, v102, v118, v117, 0);

  v36 = v118;
  objc_msgSend_addObject_(v120, v105, isTextReplacement, v106, v107, v108);

LABEL_13:
LABEL_14:

  return v119;
}

uint64_t sub_1836BED0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_string(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32), v9, v10, v11);

  return isEqualToString;
}

void sub_1836BF3FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"'.-", a4, a5, a6);
  v7 = qword_1EA84CD28;
  qword_1EA84CD28 = v6;

  v12 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v8, @"àáâäãçèéêëìíîïñòóôõöùúûü\xFFÀÁÂÄÃÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜŸ", v9, v10, v11);
  v13 = qword_1EA84CD30;
  qword_1EA84CD30 = v12;

  v18 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v14, @".-", v15, v16, v17);
  v19 = qword_1EA84CD38;
  qword_1EA84CD38 = v18;
}

void sub_1836BF490(uint64_t a1, uint64_t a2)
{
  v4 = LXEntryCopyString();
  cf = v4;
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = cf;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  LXEntryGetPartialProbability();
  v9 = v8;
  TokenID = LXEntryGetTokenID();
  isInappropriateLexiconEntry = objc_msgSend_isInappropriateLexiconEntry_(*(*(a1 + 32) + 488), v11, a2, v12, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v16, *(a1 + 40), v17, v18, v19);
  v26 = objc_msgSend_lowercaseString(v7, v21, v22, v23, v24, v25);
  v31 = objc_msgSend_isEqualToString_(v7, v27, v26, v28, v29, v30);

  v39 = objc_msgSend_compare_options_(v7, v32, *(a1 + 40), 1, v33, v34);
  if (v9 > *(*(*(a1 + 112) + 8) + 24))
  {
    *(*(*(a1 + 120) + 8) + 24) = TokenID;
    *(*(*(a1 + 112) + 8) + 24) = v9;
  }

  *(*(*(a1 + 128) + 8) + 24) = (*(*(*(a1 + 128) + 8) + 24) | isInappropriateLexiconEntry) & 1;
  v40 = objc_msgSend_componentsSeparatedByCharactersInSet_(v7, v35, qword_1EA84CD28, v36, v37, v38);
  v45 = objc_msgSend_componentsJoinedByString_(v40, v41, &stru_1EF1C0318, v42, v43, v44);

  v166 = v45;
  if (objc_msgSend_compare_options_(v45, v46, *(a1 + 48), 129, v47, v48))
  {
    if ((*(a1 + 208) & v31 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(*(*(a1 + 136) + 8) + 24) = 1;
    if ((*(a1 + 208) & v31 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v54 = sub_1837A47B8(v7);

  if (isEqualToString)
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v54, v49, *(a1 + 40), v51, v52, v53);
  }

  v7 = v54;
LABEL_15:
  v55 = objc_msgSend_length(v7, v49, v50, v51, v52, v53);
  v164 = isInappropriateLexiconEntry;
  v165 = TokenID;
  v59 = *(a1 + 176);
  if (v55 < v59 || ((objc_msgSend_substringWithRange_(*(a1 + 56), v56, *(a1 + 168), *(a1 + 176), v57, v58), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend_substringToIndex_(v7, v61, *(a1 + 176), v62, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend_isEqualToString_(v60, v66, v65, v67, v68, v69), v65, v60, objc_msgSend_substringWithRange_(*(a1 + 56), v71, *(a1 + 168), *(a1 + 176), v72, v73), v74 = objc_claimAutoreleasedReturnValue(), objc_msgSend_substringToIndex_(v7, v75, *(a1 + 176), v76, v77, v78), v79 = objc_claimAutoreleasedReturnValue(), v84 = objc_msgSend_caseInsensitiveCompare_(v74, v80, v79, v81, v82, v83), v79, v74, !v84) ? (v89 = v31) : (v89 = 0), !((v59 == 0) | v70 & 1) && !v89))
  {

    v90 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_22;
  }

  if (v39 && *(*(*(a1 + 136) + 8) + 24) != 1)
  {
    if (v9 <= *(a1 + 200))
    {
      v99 = 0.0004 - v9;
    }

    else
    {
      v99 = 0.0004;
    }

    v100 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v85, @"%@%@%@", v86, v87, v88, *(a1 + 64), v7, *(a1 + 72));
    v97 = v100;
    v105 = *(a1 + 32);
    v106 = *(a1 + 176);
    if (v164)
    {
      v107 = *(a1 + 96);
      v108 = objc_msgSend_substringFromIndex_(v100, v101, v106, v102, v103, v104);
      v109 = (*(*(a1 + 104) + 16))(v99);
      sub_1836BE7F4(v105, v107, v108, 1, 1, 1, v165, *(a1 + 88), v109, **(*(a1 + 192) + 304));
    }

    else
    {
      v142 = *(a1 + 80);
      v108 = objc_msgSend_substringFromIndex_(v100, v101, v106, v102, v103, v104);
      v143 = (*(*(a1 + 104) + 16))(v99);
      sub_1836BE7F4(v105, v142, v108, 1, 1, 0, v165, *(a1 + 88), v143, **(*(a1 + 192) + 304));
    }
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v85, @"%@%@%@", v86, v87, v88, *(a1 + 64), v7, *(a1 + 72));
    v97 = v91 = v165;
    if (!isEqualToString || objc_msgSend_length(*(a1 + 72), v92, v93, v94, v95, v96))
    {
      if (v9 >= *(a1 + 200))
      {
        v98 = 0.0001;
        if (!*(*(*(a1 + 144) + 8) + 24))
        {
          v98 = 0.0;
        }
      }

      else
      {
        v98 = 0.0001;
      }

      v110 = 0.1;
      if (!*(a1 + 209))
      {
        v110 = 0.0;
      }

      v111 = v98 + v110;
      if (v39)
      {
        v169 = 0;
        v112 = *(a1 + 72);
        v113 = *(a1 + 40);
        shouldApplyDiacriticSensitivity = objc_msgSend_shouldApplyDiacriticSensitivity(*(*(a1 + 32) + 456), v92, v93, v94, v95, v96);
        v167 = 0;
        v168 = 0;
        objc_msgSend_computeEditPenalizationFromString_toReferenceString_withSuffix_withCaseSensitivity_withFirstLetterCaseSensitivity_withDiacriticSensitivity_withDiacriticsCharSet_withConsumableStrokesCharSet_outputSuffix_lexiconExtraCharacters_firstLetterCaseFlipped_(CHLanguageUtilities, v115, v113, v7, v112, 0, 0, shouldApplyDiacriticSensitivity, qword_1EA84CD30, qword_1EA84CD28, &v168, &v167, &v169);
        v117 = v116;
        v118 = v168;
        v119 = v167;
        v124 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v120, @"%@%@%@", v121, v122, v123, *(a1 + 64), v7, v118);
        if (objc_msgSend_rangeOfCharacterFromSet_(v119, v125, qword_1EA84CD38, v126, v127, v128) != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(*(*(a1 + 152) + 8) + 24) = 1;
        }

        v111 = v111 + v117 * 3.0 * 0.0001;

        v91 = v165;
        v133 = *(a1 + 32);
        v134 = *(a1 + 176);
        if (v164)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v124 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v92, @"%@%@%@", v94, v95, v96, *(a1 + 64), v7, *(a1 + 72));
        v133 = *(a1 + 32);
        v134 = *(a1 + 176);
        if (v164)
        {
LABEL_43:
          v135 = *(a1 + 96);
          v136 = objc_msgSend_substringFromIndex_(v124, v129, v134, v130, v131, v132);
          v137 = (*(*(a1 + 104) + 16))(v111);
          v138 = sub_1836BE7F4(v133, v135, v136, 1, 1, 1, v91, *(a1 + 88), v137, **(*(a1 + 192) + 304));
LABEL_46:
          v141 = v138;

          *(*(*(a1 + 160) + 8) + 24) |= v141;
          goto LABEL_55;
        }
      }

      v139 = *(a1 + 80);
      v136 = objc_msgSend_substringFromIndex_(v124, v129, v134, v130, v131, v132);
      v140 = (*(*(a1 + 104) + 16))(v111);
      v138 = sub_1836BE7F4(v133, v139, v136, 1, 1, 0, v91, *(a1 + 88), v140, **(*(a1 + 192) + 304));
      goto LABEL_46;
    }

    if (v9 <= *(a1 + 184))
    {
      v144 = objc_msgSend_componentsSeparatedByCharactersInSet_(v7, v92, qword_1EA84CD30, v94, v95, v96);
      v149 = objc_msgSend_componentsJoinedByString_(v144, v145, &stru_1EF1C0318, v146, v147, v148);

      if (objc_msgSend_isEqualToString_(v166, v150, v7, v151, v152, v153))
      {
        v158 = objc_msgSend_isEqualToString_(v149, v154, v7, v155, v156, v157);

        if (v158)
        {
          *(*(*(a1 + 120) + 8) + 24) = v165;
          *(*(*(a1 + 112) + 8) + 24) = 0;
          goto LABEL_55;
        }
      }

      else
      {
      }
    }

    v159 = *(a1 + 32);
    v160 = *(a1 + 80);
    v161 = objc_msgSend_substringFromIndex_(v97, v92, *(a1 + 176), v94, v95, v96);
    v162 = (*(*(a1 + 104) + 16))(0.0);
    sub_1836BE7F4(v159, v160, v161, 1, 1, *(*(*(a1 + 128) + 8) + 24), v165, *(a1 + 88), v162, **(*(a1 + 192) + 304));

    *(*(*(a1 + 144) + 8) + 24) = 1;
  }

LABEL_55:

  v90 = cf;
  if (cf)
  {
LABEL_22:
    CFRelease(v90);
  }
}

void sub_1836BFC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1836BFEA8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  objc_msgSend_score(v4, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_numberWithDouble_(v6, v12, v13, v14, v15, v16);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_score(v5, v19, v20, v21, v22, v23);
  v29 = objc_msgSend_numberWithDouble_(v18, v24, v25, v26, v27, v28);
  v34 = objc_msgSend_compare_(v17, v30, v29, v31, v32, v33);

  return v34;
}

uint64_t sub_1836BFF80(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  objc_msgSend_score(v4, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_numberWithDouble_(v6, v12, v13, v14, v15, v16);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_score(v5, v19, v20, v21, v22, v23);
  v29 = objc_msgSend_numberWithDouble_(v18, v24, v25, v26, v27, v28);
  v34 = objc_msgSend_compare_(v17, v30, v29, v31, v32, v33);

  return v34;
}

void sub_1836C02BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, char a11, int a12, const void *a13)
{
  sub_1836C040C(&a13);

  _Unwind_Resume(a1);
}

const void **sub_1836C040C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1836C0440(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = objc_msgSend_wordLexicalEntries(v2, v3, v4, v5, v6, v7);
  if (objc_msgSend_count(v8, v9, v10, v11, v12, v13))
  {
    v19 = objc_msgSend_wordLexicalEntries(v2, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_lastObject(v19, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_BOOLValue(v25, v26, v27, v28, v29, v30);
  }

  else
  {
    v31 = 0;
  }

  v37 = objc_msgSend_wordPatternEntries(v2, v32, v33, v34, v35, v36);
  if (objc_msgSend_count(v37, v38, v39, v40, v41, v42))
  {
    v48 = objc_msgSend_wordPatternEntries(v2, v43, v44, v45, v46, v47);
    v54 = objc_msgSend_lastObject(v48, v49, v50, v51, v52, v53);
    v60 = objc_msgSend_BOOLValue(v54, v55, v56, v57, v58, v59);

    v61 = v60 ^ 1;
    if (v31)
    {
LABEL_6:
      v67 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v61 = 1;

    if (v31)
    {
      goto LABEL_6;
    }
  }

  v68 = objc_msgSend_string(v2, v62, v63, v64, v65, v66);
  v67 = objc_msgSend_length(v68, v69, v70, v71, v72, v73) == 1;
  if (((v67 | v61) & 1) == 0)
  {
    v79 = objc_msgSend_string(v2, v74, v75, v76, v77, v78);
    v67 = sub_1837A7234(v79) ^ 1;
  }

LABEL_11:
  return v67;
}

void *sub_1836C05FC(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*sub_18368D5C4(a1, v3, &v11, &v10, v5 + 4))
      {
        operator new();
      }

      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

id sub_1836C073C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v285 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v269 = a3;
  v267 = a4;
  v264 = a5;
  v265 = v8;
  v270 = objc_alloc_init(CHMutableTokenizedTextResult);
  objc_msgSend_strokeCount(v8, v9, v10, v11, v12, v13);
  objc_msgSend_totalSegmentCount(v269, v14, v15, v16, v17, v18);
  v19 = sub_1836C38CC(a1, v267);
  v268 = objc_msgSend_precomposedStringWithCanonicalMapping(v19, v20, v21, v22, v23, v24);

  v25 = sub_1836C398C(a1, v267);
  v280 = sub_1836B9B98(v267);
  v281 = v31;
  v282 = v32;
  v283 = v33;
  if (v25 == 2)
  {
    v266 = &stru_1EF1C0318;
  }

  else
  {
    v266 = sub_1837A4FC0(v268);
  }

  v34 = objc_msgSend_length(v268, v26, v27, v28, v29, v30);
  v40 = objc_msgSend_length(v266, v35, v36, v37, v38, v39);
  objc_msgSend_length(v266, v41, v42, v43, v44, v45);
  v261 = objc_msgSend__effectiveMaxRecognitionResultCount(a1, v46, v47, v48, v49, v50);
  RootCursor = 0;
  cf = 0;
  if (objc_msgSend_shouldApplyLexicalPenalty(*(a1 + 456), v51, v52, v53, v54, v55))
  {
    RootCursor = LXLexiconCreateRootCursor();
    if (*(a1 + 360))
    {
      cf = LXLexiconCreateRootCursor();
    }
  }

  context = objc_autoreleasePoolPush();
  sub_18390BF9C(v275);
  memset(&v274[1], 0, 24);
  v61 = objc_msgSend_supportedSegmentationStrategy(*(a1 + 456), v56, v57, v58, v59, v60);
  if (!v61)
  {
    v67 = objc_msgSend_sortedDrawingUsingMinXCoordinate(v8, v62, v63, v64, v65, v66);
    sub_18371B560(v67);
  }

  if (v61 == 1)
  {
    sub_1837219AC(v269, buf);
  }

  if (v277 - v276 == 72 || (objc_msgSend_segments(v269, v62, v63, v64, v65, v66), v68 = objc_claimAutoreleasedReturnValue(), v74 = objc_msgSend_count(v68, v69, v70, v71, v72, v73) == 1, v68, v74))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v80 = qword_1EA84DC58;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      v86 = objc_msgSend_segments(v269, v81, v82, v83, v84, v85);
      v92 = objc_msgSend_count(v86, v87, v88, v89, v90, v91);
      *buf = 134217984;
      *&buf[4] = v92;
      _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_DEBUG, "Processing input as single character drawing with %lu segments\n", buf, 0xCu);
    }

    v263 = 1;
  }

  else
  {
    v263 = 0;
  }

  v260 = v34 - v40;
  if ((v263 & objc_msgSend_shouldFallbackOnSingleCharacterExpansion(*(a1 + 456), v75, v76, v77, v78, v79)) != 1)
  {
    v110 = objc_msgSend_matchingStrokePrefixRangeForDrawing_(*(a1 + 384), v93, v265, v94, v95, v96);
    v112 = v111;
    v118 = v265;
    if (v112)
    {
      v119 = *(a1 + 544);
      if (v119 != (a1 + 552))
      {
        do
        {
          sub_1836C05FC(buf, v119 + 4);
          v120 = *buf;
          if (*buf == &buf[8])
          {
LABEL_27:
            v121 = v119[1];
            if (v121)
            {
              do
              {
                v122 = v121;
                v121 = *v121;
              }

              while (v121);
            }

            else
            {
              do
              {
                v122 = v119[2];
                v128 = *v122 == v119;
                v119 = v122;
              }

              while (!v128);
            }
          }

          else
          {
            while (1)
            {
              v123 = v120[4];
              v125 = v123 >= v110;
              v124 = v123 - v110;
              v125 = !v125 || v124 >= v112;
              if (v125)
              {
                break;
              }

              v126 = v120[1];
              if (v126)
              {
                do
                {
                  v127 = v126;
                  v126 = *v126;
                }

                while (v126);
              }

              else
              {
                do
                {
                  v127 = v120[2];
                  v128 = *v127 == v120;
                  v120 = v127;
                }

                while (!v128);
              }

              v120 = v127;
              if (v127 == &buf[8])
              {
                goto LABEL_27;
              }
            }

            v129 = v119[1];
            v130 = v119;
            if (v129)
            {
              do
              {
                v122 = v129;
                v129 = *v129;
              }

              while (v129);
            }

            else
            {
              do
              {
                v122 = v130[2];
                v128 = *v122 == v130;
                v130 = v122;
              }

              while (!v128);
            }

            if (*(a1 + 544) == v119)
            {
              *(a1 + 544) = v122;
            }

            --*(a1 + 560);
            sub_1836E13E8(*(a1 + 552), v119);
            v131 = v119[7];
            if (v131)
            {
              v119[8] = v131;
              operator delete(v131);
            }

            sub_18368D56C((v119 + 4), v119[5]);
            operator delete(v119);
          }

          sub_18368D56C(buf, *&buf[8]);
          v119 = v122;
        }

        while (v122 != (a1 + 552));
      }
    }

    else
    {
      sub_1836DDA7C(*(a1 + 552));
      *(a1 + 544) = a1 + 552;
      *(a1 + 552) = 0u;
    }

    if (objc_msgSend_shouldUseCaching(*(a1 + 456), v113, v114, v115, v116, v117))
    {
      objc_setProperty_nonatomic_copy(a1, v132, v118, 384);
    }

    v133 = v269;
    v134 = v118;
    v140 = objc_msgSend_supportedSegmentationStrategy(*(a1 + 456), v135, v136, v137, v138, v139);
    if (v140)
    {
      if (v140 == 1)
      {
        __src = 0;
        v146 = 0;
        v147 = objc_msgSend_segments(v133, v141, v142, v143, v144, v145);
        v153 = objc_msgSend_count(v147, v148, v149, v150, v151, v152) != 0;

        if (v153)
        {
          operator new();
        }

LABEL_63:
        v154 = v134;

        v160 = objc_msgSend_segments(v133, v155, v156, v157, v158, v159);
        v166 = (v146 - __src) >> 3;
        v167 = v166 == objc_msgSend_count(v160, v161, v162, v163, v164, v165);

        if (!v167)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v173 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
          {
            v179 = objc_msgSend_segments(v133, v174, v175, v176, v177, v178);
            v185 = objc_msgSend_count(v179, v180, v181, v182, v183, v184);
            *buf = 134218240;
            *&buf[4] = v185;
            *&buf[12] = 2048;
            *&buf[14] = (v146 - __src) >> 3;
            _os_log_impl(&dword_18366B000, v173, OS_LOG_TYPE_ERROR, "The number of segments (%lu) must be the same as the number of sorted segment indexes (%lu)", buf, 0x16u);
          }
        }

        v186 = objc_msgSend_segments(v133, v168, v169, v170, v171, v172);
        v192 = v166 == objc_msgSend_count(v186, v187, v188, v189, v190, v191);

        if (!v192)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v193 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v193, OS_LOG_TYPE_FAULT))
          {
            v199 = objc_msgSend_segments(v133, v194, v195, v196, v197, v198);
            v205 = objc_msgSend_count(v199, v200, v201, v202, v203, v204);
            *buf = 134218240;
            *&buf[4] = v205;
            *&buf[12] = 2048;
            *&buf[14] = (v146 - __src) >> 3;
            _os_log_impl(&dword_18366B000, v193, OS_LOG_TYPE_FAULT, "The number of segments (%lu) must be the same as the number of sorted segment indexes (%lu)", buf, 0x16u);
          }
        }

        if (v146 != __src)
        {
          if (((v146 - __src) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_18368964C();
        }

        v133;
        v154;
        v264;
        sub_18390C204();
      }
    }

    else if (v134)
    {
      objc_msgSend_strokeIndicesSortedByMinXCoordinate(v134, v141, v142, v143, v144, v145);
      v146 = *&buf[8];
      __src = *buf;
      goto LABEL_63;
    }

    __src = 0;
    v146 = 0;
    goto LABEL_63;
  }

  v97 = sub_1836B9304(a1, v265, v269, v267, v268);
  v99 = objc_msgSend__tokenizedTextResultFromResults_segmentGroup_offsetSegment_decodedStrokeSets_spaceBehavior_(a1, v98, v97, v269, 0, 1, v25);
  v105 = objc_msgSend_tokenColumns(v99, v100, v101, v102, v103, v104);
  objc_msgSend_appendTokenColumns_(v270, v106, v105, v107, v108, v109);

  sub_18390C484(v275);
  objc_autoreleasePoolPop(context);
  v209 = objc_msgSend_substringWithRange_(v268, v206, 0, v260, v207, v208);
  v215 = objc_msgSend_transcriptionPaths(v270, v210, v211, v212, v213, v214);
  v221 = objc_msgSend_count(v215, v216, v217, v218, v219, v220) == 0;

  if (v221)
  {
    if (v263)
    {
      v227 = 0;
    }

    else
    {
      v227 = v209;
    }

    v273 = 0;
    v274[0] = 0;
    v228 = objc_msgSend__effectiveMaxRecognitionResultCount(a1, v222, v223, v224, v225, v226);
    objc_msgSend__calculateBestTranscriptionPaths_scores_fromTokenizedResult_pathCount_history_skipLMRescoring_(a1, v229, v274, &v273, v270, v228, v227, v263);
    v230 = v274[0];
    v231 = v273;
    objc_msgSend_setTranscriptionPaths_scores_(v270, v232, v230, v231, v233, v234);
  }

  if (objc_msgSend_shouldKeepDuplicateTokenIDs(*(a1 + 456), v222, v223, v224, v225, v226))
  {
    shouldTransliterateSentencesSCTC = 1;
  }

  else
  {
    shouldTransliterateSentencesSCTC = objc_msgSend_shouldTransliterateSentencesSCTC(*(a1 + 456), v235, v236, v237, v238, v239);
  }

  objc_msgSend_trimTokensToTranscriptionPathCount_(v270, v235, v261, v237, v238, v239);
  shouldKeepOutOfPatternCandidates = objc_msgSend_shouldKeepOutOfPatternCandidates(*(a1 + 456), v241, v242, v243, v244, v245);
  objc_msgSend_filterCandidatesWithOutOfPattern_duplicateTokenIDs_keepOutOfLexiconAlternatives_keepAlternativeLengths_keepSubstrings_shouldKeepOriginalSpelling_(v270, v247, shouldKeepOutOfPatternCandidates, shouldTransliterateSentencesSCTC, 0, 0, 0, 0);
  v252 = objc_msgSend__addAlternativeCandidatesForTokenizedResult_(a1, v248, v270, v249, v250, v251);

  objc_msgSend_adjustColumns(v252, v253, v254, v255, v256, v257);
  v258 = v252;

  if (cf)
  {
    CFRelease(cf);
  }

  if (RootCursor)
  {
    CFRelease(RootCursor);
  }

  return v258;
}

void sub_1836C3260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, char a50)
{
  __cxa_guard_abort(&qword_1EA84CD50);
  v53 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v53;
    operator delete(v53);
  }

  v54 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v54;
    operator delete(v54);
  }

  sub_18390C484(&STACK[0x2A8]);
  sub_18390C484(&STACK[0x3A0]);
  sub_18390C484(&STACK[0x580]);

  if (a32)
  {
    operator delete(a32);
  }

  if (a47)
  {
    operator delete(a47);
  }

  sub_18390C484(&a50);
  sub_1836C040C(&STACK[0x240]);
  sub_1836C040C(&STACK[0x248]);

  _Unwind_Resume(a1);
}

id sub_1836C38CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  v9 = 0;
  if (a1 && v3)
  {
    v10 = objc_msgSend_objectForKey_(v3, v4, CHRecognitionOptionTextBefore, v5, v6, v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t sub_1836C398C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  v9 = 0;
  if (a1 && v3)
  {
    v10 = objc_msgSend_objectForKey_(v3, v4, CHRecognitionOptionPrecedingSpaceBehavior, v5, v6, v7);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = objc_msgSend_integerValue(v10, v11, v12, v13, v14, v15)) == 0)
    {
      v9 = objc_msgSend_precedingSpaceDefaultBehavior(*(a1 + 456), v11, v12, v13, v14, v15);
    }
  }

  return v9;
}

uint64_t sub_1836C3A48(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  if (a1 == a2)
  {
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    sub_1836DBFD8((a1 + 32), *(a2 + 32), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    sub_1836DC16C(a1 + 56, *(a2 + 56), (a2 + 64));
    sub_1836DC498((a1 + 80), *(a2 + 80), *(a2 + 88), 0x8E38E38E38E38E39 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
    sub_1836DC70C((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    sub_1839161C0(a1 + 128, *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 3));
    sub_1839164C0(a1 + 152, *(a2 + 152), (a2 + 160));
    *(a1 + 176) = *(a2 + 176);
    sub_1836DC868(a1 + 184, *(a2 + 184), (a2 + 192));
    sub_1836DD53C(a1 + 208, *(a2 + 208), (a2 + 216));
  }

  *(a1 + 232) = *(a2 + 232);
  return a1;
}

void *sub_1836C3B70(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      if (!*sub_1836E1798(a1, v4, &v9, &v8, *a2))
      {
        operator new();
      }

      ++a2;
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

void *sub_1836C3C9C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*sub_1836E1798(a1, v3, &v11, &v10, *(v5 + 7)))
      {
        operator new();
      }

      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t sub_1836C3DD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, void *a9)
{
  v13 = a2;
  v436 = a7;
  v429 = a9;
  v442 = v13;
  v19 = objc_msgSend_count(v13, v14, v15, v16, v17, v18);
  LODWORD(v25) = *(*(a1 + 248) + 36);
  v427 = vcvtpd_u64_f64(v19 / v25);
  if (v427)
  {
    v431 = 0;
    v26 = 0;
    v434 = (a1 + 552);
    v435 = (a6 + 8);
    v27 = 0.5;
    while (1)
    {
      v29 = *(*(a1 + 248) + 36);
      v438 = v26 * v29;
      if (objc_msgSend_count(v442, v20, v21, v22, v23, v24) - v26 * v29 <= v29)
      {
        v35 = objc_msgSend_count(v442, v30, v31, v32, v33, v34) - v438;
        if (a8)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v35 = *(*(a1 + 248) + 36);
        if (a8)
        {
          goto LABEL_11;
        }
      }

      if (v35 < *(*(a1 + 248) + 36))
      {
        goto LABEL_353;
      }

LABEL_11:
      if (v429 && (v429[2]() & 1) != 0)
      {
        goto LABEL_353;
      }

      v430 = v26;
      v40 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v30, v35, v32, v33, v34);
      v439 = v35;
      if (v35 >= 1)
      {
        v41 = v438;
        v42 = v439;
        do
        {
          v43 = objc_msgSend_objectAtIndexedSubscript_(v442, v36, v41, v37, v38, v39);
          v49 = objc_msgSend_classifiableDrawing(v43, v44, v45, v46, v47, v48);
          objc_msgSend_addObject_(v40, v50, v49, v51, v52, v53);

          ++v41;
          --v42;
        }

        while (v42);
      }

      sub_1836AC464(&__p, *(a1 + 248), v40);
      objc_msgSend_removeAllObjects(v40, v54, v55, v56, v57, v58);
      if (v439 >= 1)
      {
        v63 = 0;
        v446 = v40;
        while (1)
        {
          v64 = __p;
          v443 = v63;
          v445 = objc_msgSend_objectAtIndexedSubscript_(v442, v59, v63 + v438, v60, v61, v62);
          v70 = objc_msgSend_classifiableDrawing(v445, v65, v66, v67, v68, v69);
          v444 = objc_msgSend_drawing(v70, v71, v72, v73, v74, v75);

          v81 = objc_msgSend_edgeIndex(v445, v76, v77, v78, v79, v80);
          v440 = *(a4 + 80);
          v441 = v81;
          if (v445)
          {
            objc_msgSend_strokeGroup(v445, v82, v83, v84, v85, v86);
          }

          else
          {
            v451 = 0;
            v452 = 0;
            v453 = 0;
          }

          v87 = &v64[24 * v443];
          objc_msgSend__adjustCandidatesForConfusableCharacters_(a1, v82, v87, v84, v85, v86);
          if (objc_msgSend_shouldRefineChineseCharacterCandidates(*(a1 + 456), v88, v89, v90, v91, v92))
          {
            sub_1836B9C54(a1, v87, v444);
          }

          if (objc_msgSend_shouldDetectChinesePunctuation(*(a1 + 456), v93, v94, v95, v96, v97))
          {
            break;
          }

LABEL_86:
          if (objc_msgSend_shouldDetectRomanPunctuation(*(a1 + 456), v98, v99, v100, v101, v102))
          {
            v185 = v444;
            shouldTreatAllSmallStrokesAsPunctuation = objc_msgSend_shouldTreatAllSmallStrokesAsPunctuation(*(a1 + 456), v186, v187, v188, v189, v190);
            v197 = *(a1 + 496);
            if (shouldTreatAllSmallStrokesAsPunctuation)
            {
              objc_msgSend_indexesOfStrokesSmallerThanSize_(v185, v192, v193, v194, v195, v196, v197, *(a1 + 504));
            }

            else
            {
              objc_msgSend_indexesOfStrokesSmallerThanSize_(v185, v192, v193, v194, v195, v196, v197 + v197, *(a1 + 504) + *(a1 + 504));
            }
            v198 = ;
            if (!objc_msgSend_count(v198, v199, v200, v201, v202, v203))
            {
              goto LABEL_133;
            }

            if (objc_msgSend_strokeCount(v185, v204, v205, v206, v207, v208) <= 1)
            {
              v226 = v87[1] - *v87;
              if (v226)
              {
                v227 = v226 >> 3;
                if (v227 <= 1)
                {
                  v227 = 1;
                }

                v228 = (*v87 + 4);
                v229 = 0.0;
                do
                {
                  v230 = *v228;
                  v228 += 2;
                  v229 = v229 + v230;
                  --v227;
                }

                while (v227);
                v231 = v229 * 0.5;
              }

              else
              {
                v231 = 0.0;
              }

              v238 = objc_msgSend__defaultPunctuationStringsOutputScores_maxCandidateCount_(a1, v209, 0, 1, v212, v213);
              if (objc_msgSend_count(v238, v239, v240, v241, v242, v243))
              {
                v249 = objc_msgSend_firstObject(v238, v244, v245, v246, v247, v248);
                v253 = objc_msgSend_codepointAtIndex_outRange_(v249, v250, 0, 0, v251, v252);
                v254 = *v87;
                v255 = v87[1] - *v87;
                if (v255)
                {
                  v256 = 0;
                  v257 = 0;
                  v258 = v255 >> 3;
                  if ((v255 >> 3) <= 1)
                  {
                    v258 = 1;
                  }

                  v259 = -v258;
LABEL_108:
                  v260 = (v254 + 4 + 8 * v256++);
                  do
                  {
                    if (*(v260 - 1) == v253)
                    {
                      *v260 = v231;
                      v257 = 1;
                      if (v259 + v256)
                      {
                        goto LABEL_108;
                      }

                      goto LABEL_116;
                    }

                    *v260 = *v260 * v27;
                    v260 += 2;
                    ++v256;
                  }

                  while (v259 + v256 != 1);
                  if (v257)
                  {
                    goto LABEL_116;
                  }
                }

                v261 = v254 + v255;
                *(v261 - 8) = v253;
                *(v261 - 4) = v231;
LABEL_116:
              }

              goto LABEL_133;
            }

            v214 = objc_msgSend_count(v198, v209, v210, v211, v212, v213);
            if (v214 == objc_msgSend_strokeCount(v185, v215, v216, v217, v218, v219))
            {
              v225 = objc_msgSend_strokeCount(v185, v220, v221, v222, v223, v224);
              sub_1836CFA94(a1, v87, v225);
LABEL_133:

              goto LABEL_134;
            }

            *&v469 = 0;
            *(&v469 + 1) = &v469;
            v470 = 0x2020000000;
            v471 = 0;
            if (objc_msgSend_shouldTreatAllSmallStrokesAsPunctuation(*(a1 + 456), v220, v221, v222, v223, v224))
            {
              v237 = objc_msgSend_count(v198, v232, v233, v234, v235, v236);
              *(*(&v469 + 1) + 24) = v237;
LABEL_132:
              sub_1836CFA94(a1, v87, v237);
              _Block_object_dispose(&v469, 8);
              goto LABEL_133;
            }

            v262 = MEMORY[0x1E696AD50];
            v263 = objc_msgSend_strokeCount(v185, v232, v233, v234, v235, v236);
            v267 = objc_msgSend_indexSetWithIndexesInRange_(v262, v264, 0, v263, v265, v266);
            objc_msgSend_removeIndexes_(v267, v268, v198, v269, v270, v271);
            v272 = objc_opt_class();
            if (v272)
            {
              objc_msgSend_convexHullForStrokes_inDrawing_(v272, v273, v267, v185, v274, v275);
            }

            else
            {
              v467 = 0;
              v468 = 0uLL;
            }

            v276 = objc_opt_class();
            if (v276)
            {
              objc_msgSend_enlargedConvexHull_withMargin_(v276, v277, &v467, v278, v279, v280, 10.0);
              v281 = v467;
              if (!v467)
              {
LABEL_124:
                v282 = v465;
                v467 = v465;
                v433 = v466;
                v468 = v466;
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3321888768;
                v457 = sub_1836CFD38;
                v458 = &unk_1EF1BBA68;
                v459 = COERCE_DOUBLE(v185);
                v463 = 0;
                v464 = 0;
                v462 = 0;
                if (v433 != v282)
                {
                  if (((v433 - v282) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_18369761C();
                }

                v283 = v267;
                v460 = *&v283;
                v461 = &v469;
                objc_msgSend_enumerateIndexesUsingBlock_(v198, v284, buf, v285, v286, v287);

                if (v462)
                {
                  v463 = v462;
                  operator delete(v462);
                }

                if (v467)
                {
                  *&v468 = v467;
                  operator delete(v467);
                }

                v237 = *(*(&v469 + 1) + 24);
                goto LABEL_132;
              }
            }

            else
            {
              v465 = 0;
              v466 = 0uLL;
              v281 = v467;
              if (!v467)
              {
                goto LABEL_124;
              }
            }

            *&v468 = v281;
            operator delete(v281);
            goto LABEL_124;
          }

          if (v87[1] != *v87)
          {
            goto LABEL_135;
          }

LABEL_134:
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v290 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v290, OS_LOG_TYPE_ERROR, "We must add at least one candidate for each edge", buf, 2u);
          }

          if (v87[1] == *v87)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v291 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v291, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v291, OS_LOG_TYPE_FAULT, "We must add at least one candidate for each edge", buf, 2u);
            }

            v448 = 0;
            v449 = 0;
            v450 = 0;
            v292 = v87[1];
            v289 = v292 - *v87;
            if (v292 != *v87)
            {
LABEL_147:
              if ((v289 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_18368964C();
            }
          }

          else
          {
LABEL_135:
            v448 = 0;
            v449 = 0;
            v450 = 0;
            v288 = v87[1];
            v289 = v288 - *v87;
            if (v288 != *v87)
            {
              goto LABEL_147;
            }
          }

          v293 = objc_msgSend_numberOfSegments(v445, v180, v181, v182, v183, v184);
          v299 = objc_msgSend_numberOfSubstrokes(v445, v294, v295, v296, v297, v298);
          v305 = v448;
          if (v449 != v448)
          {
            v306 = v299;
            v311 = 0.0;
            if (objc_msgSend_shouldApplyRomanPostProcessing(*(a1 + 456), v300, v301, v302, v303, v304))
            {
              v311 = sub_1837A82B4(v305, &v448, v307, v308, v309, v310);
            }

            sub_1836C579C(&v469, a1, *v305, v308, v309, v310);
            v312 = sub_1839008B0(a5 + 128, &v469);
            v313 = (v440 + 72 * v441);
            v314 = *v313;
            v315 = v313[1];
            v316 = *v305;
            v317 = v305[1];
            *buf = *v313;
            *&buf[8] = v315;
            v457 = v316;
            v458 = v312;
            v459 = v317;
            v460 = v311;
            v461 = v293;
            v462 = v293;
            v463 = v306;
            v318 = *(a3 + 8);
            if (v318 >= *(a3 + 16))
            {
              v319 = sub_1836E1A24(a3, buf);
            }

            else
            {
              *v318 = v314;
              *(v318 + 8) = v315;
              *(v318 + 16) = v316;
              *(v318 + 24) = v312;
              *(v318 + 32) = v317;
              *(v318 + 40) = v311;
              *(v318 + 48) = v293;
              *(v318 + 56) = v293;
              *(v318 + 64) = v306;
              v319 = v318 + 72;
              *(a3 + 8) = v318 + 72;
            }

            *(a3 + 8) = v319;
            if (SHIBYTE(v470) < 0)
            {
              operator delete(v469);
              v305 = v448;
              if ((v449 - v448) < 9)
              {
                goto LABEL_186;
              }
            }

            else
            {
              v305 = v448;
              if ((v449 - v448) < 9)
              {
                goto LABEL_186;
              }
            }

            v320 = 1;
            while (1)
            {
              v321 = &v305[2 * v320];
              if (objc_msgSend_shouldRelaxFinalCandidatesThresholding(*(a1 + 456), v300, v301, v302, v303, v304))
              {
                v322 = v321[1];
                v323 = *(*(a5 + 32) + 40 * v313[1] + 32);
                shouldRelaxFinalCandidatesThresholding = objc_msgSend_shouldRelaxFinalCandidatesThresholding(*(a1 + 456), v300, v301, v302, v303, v304);
                v325 = 0.001;
                if ((shouldRelaxFinalCandidatesThresholding & v323) == 0)
                {
                  v325 = 0.01;
                }

                if (v325 >= v322)
                {
                  break;
                }
              }

              v330 = 0.0;
              if (objc_msgSend_shouldApplyRomanPostProcessing(*(a1 + 456), v300, v301, v302, v303, v304))
              {
                v330 = sub_1837A82B4(v321, &v448, v326, v327, v328, v329);
              }

              sub_1836C579C(&v469, a1, *v321, v327, v328, v329);
              v331 = sub_1839008B0(a5 + 128, &v469);
              v332 = v331;
              v333 = *v313;
              v334 = *v321;
              v335 = v321[1];
              *buf = *v313;
              v457 = v334;
              v458 = v331;
              v459 = v335;
              v460 = v330;
              v461 = v293;
              v462 = v293;
              v463 = v306;
              v337 = *(a3 + 8);
              v336 = *(a3 + 16);
              if (v337 >= v336)
              {
                v339 = *a3;
                v340 = 0x8E38E38E38E38E39 * ((v337 - *a3) >> 3);
                v341 = v340 + 1;
                if (v340 + 1 > 0x38E38E38E38E38ELL)
                {
                  sub_1836D58DC();
                }

                v342 = 0x8E38E38E38E38E39 * ((v336 - v339) >> 3);
                if (2 * v342 > v341)
                {
                  v341 = 2 * v342;
                }

                if (v342 >= 0x1C71C71C71C71C7)
                {
                  v343 = 0x38E38E38E38E38ELL;
                }

                else
                {
                  v343 = v341;
                }

                if (v343)
                {
                  if (v343 <= 0x38E38E38E38E38ELL)
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                v344 = 8 * ((v337 - *a3) >> 3);
                *v344 = v333;
                *(v344 + 16) = v334;
                *(v344 + 24) = v332;
                *(v344 + 32) = v335;
                *(v344 + 40) = v330;
                *(v344 + 48) = v293;
                *(v344 + 56) = v293;
                *(v344 + 64) = v306;
                if (v339 != v337)
                {
                  v345 = v339;
                  v346 = &v339[v344 - v337];
                  do
                  {
                    *v346 = *v345;
                    *(v346 + 1) = *(v345 + 1);
                    *(v346 + 2) = *(v345 + 2);
                    *(v346 + 3) = *(v345 + 3);
                    *(v346 + 8) = *(v345 + 8);
                    v345 += 72;
                    v346 += 72;
                  }

                  while (v345 != v337);
                }

                v338 = v344 + 72;
                *a3 = &v339[72 * v340 - v337];
                *(a3 + 8) = v344 + 72;
                *(a3 + 16) = 0;
                v40 = v446;
                if (v339)
                {
                  operator delete(v339);
                }
              }

              else
              {
                *v337 = v333;
                *(v337 + 16) = v334;
                *(v337 + 24) = v331;
                *(v337 + 32) = v335;
                *(v337 + 40) = v330;
                *(v337 + 48) = v293;
                *(v337 + 56) = v293;
                *(v337 + 64) = v306;
                v338 = v337 + 72;
                *(a3 + 8) = v337 + 72;
                v40 = v446;
              }

              *(a3 + 8) = v338;
              if (SHIBYTE(v470) < 0)
              {
                operator delete(v469);
              }

              ++v320;
              v305 = v448;
              if (v320 >= (v449 - v448) >> 3)
              {
                goto LABEL_186;
              }
            }

            v305 = v448;
            v40 = v446;
          }

LABEL_186:
          if (v305)
          {
            v449 = v305;
            operator delete(v305);
          }

          shouldUseCaching = objc_msgSend_shouldUseCaching(*(a1 + 456), v300, v301, v302, v303, v304);
          if (v453)
          {
            v348 = shouldUseCaching;
          }

          else
          {
            v348 = 0;
          }

          if (v348 == 1)
          {
            v349 = *v435;
            if (!*v435)
            {
              goto LABEL_260;
            }

            if (v451 != &v452)
            {
              do
              {
                while (1)
                {
                  v361 = v349;
                  v362 = v349[4];
                  v363 = v349 + 5;
                  v364 = v451;
                  v365 = v362;
                  if (v362 != v363)
                  {
                    break;
                  }

LABEL_216:
                  v366 = v451;
                  while (v362 != v363)
                  {
                    v367 = v362[4];
                    v368 = v366[4];
                    if (v367 < v368)
                    {
                      break;
                    }

                    if (v368 >= v367)
                    {
                      v369 = v362[1];
                      v370 = v362;
                      if (v369)
                      {
                        do
                        {
                          v362 = v369;
                          v369 = *v369;
                        }

                        while (v369);
                      }

                      else
                      {
                        do
                        {
                          v362 = v370[2];
                          v150 = *v362 == v370;
                          v370 = v362;
                        }

                        while (!v150);
                      }

                      v371 = v366[1];
                      if (v371)
                      {
                        do
                        {
                          v372 = v371;
                          v371 = *v371;
                        }

                        while (v371);
                      }

                      else
                      {
                        do
                        {
                          v372 = v366[2];
                          v150 = *v372 == v366;
                          v366 = v372;
                        }

                        while (!v150);
                      }

                      v366 = v372;
                      if (v372 != &v452)
                      {
                        continue;
                      }
                    }

                    goto LABEL_261;
                  }

                  v349 = v361[1];
                  if (!v349)
                  {
                    goto LABEL_260;
                  }
                }

                while (v364 != &v452)
                {
                  v373 = v364[4];
                  v374 = v365[4];
                  if (v373 < v374)
                  {
                    break;
                  }

                  if (v374 >= v373)
                  {
                    v375 = v364[1];
                    v376 = v364;
                    if (v375)
                    {
                      do
                      {
                        v364 = v375;
                        v375 = *v375;
                      }

                      while (v375);
                    }

                    else
                    {
                      do
                      {
                        v364 = v376[2];
                        v150 = *v364 == v376;
                        v376 = v364;
                      }

                      while (!v150);
                    }

                    v377 = v365[1];
                    if (v377)
                    {
                      do
                      {
                        v378 = v377;
                        v377 = *v377;
                      }

                      while (v377);
                    }

                    else
                    {
                      do
                      {
                        v378 = v365[2];
                        v150 = *v378 == v365;
                        v365 = v378;
                      }

                      while (!v150);
                    }

                    v365 = v378;
                    if (v378 != v363)
                    {
                      continue;
                    }
                  }

                  goto LABEL_216;
                }

                v349 = *v361;
              }

              while (*v361);
LABEL_260:
              operator new();
            }

            v350 = v349[4];
            v351 = v349 + 5;
            if (v350 != v349 + 5)
            {
              v352 = *v435;
              while (1)
              {
                v353 = v451;
                while (v353 != &v452)
                {
                  v354 = v353[4];
                  v355 = v350[4];
                  if (v354 < v355)
                  {
                    break;
                  }

                  if (v355 >= v354)
                  {
                    v356 = v353[1];
                    v357 = v353;
                    if (v356)
                    {
                      do
                      {
                        v353 = v356;
                        v356 = *v356;
                      }

                      while (v356);
                    }

                    else
                    {
                      do
                      {
                        v353 = v357[2];
                        v150 = *v353 == v357;
                        v357 = v353;
                      }

                      while (!v150);
                    }

                    v358 = v350[1];
                    if (v358)
                    {
                      do
                      {
                        v359 = v358;
                        v358 = *v358;
                      }

                      while (v358);
                    }

                    else
                    {
                      do
                      {
                        v359 = v350[2];
                        v150 = *v359 == v350;
                        v350 = v359;
                      }

                      while (!v150);
                    }

                    v350 = v359;
                    if (v359 != v351)
                    {
                      continue;
                    }
                  }

                  goto LABEL_261;
                }

                v360 = *v352;
                if (!*v352)
                {
                  goto LABEL_260;
                }

                v350 = v360[4];
                v351 = v360 + 5;
                v352 = *v352;
                if (v350 == v360 + 5)
                {
                  break;
                }
              }
            }

LABEL_261:
            v383 = *v434;
            if (!*v434)
            {
              goto LABEL_322;
            }

            if (v451 != &v452)
            {
              do
              {
                while (1)
                {
                  v394 = v383;
                  v395 = v383[4];
                  v396 = v383 + 5;
                  v397 = v451;
                  v398 = v395;
                  if (v395 != v383 + 5)
                  {
                    break;
                  }

LABEL_285:
                  v399 = v451;
                  while (v395 != v396)
                  {
                    v400 = v395[4];
                    v401 = v399[4];
                    if (v400 < v401)
                    {
                      break;
                    }

                    if (v401 >= v400)
                    {
                      v402 = v395[1];
                      v403 = v395;
                      if (v402)
                      {
                        do
                        {
                          v395 = v402;
                          v402 = *v402;
                        }

                        while (v402);
                      }

                      else
                      {
                        do
                        {
                          v395 = v403[2];
                          v150 = *v395 == v403;
                          v403 = v395;
                        }

                        while (!v150);
                      }

                      v404 = v399[1];
                      if (v404)
                      {
                        do
                        {
                          v405 = v404;
                          v404 = *v404;
                        }

                        while (v404);
                      }

                      else
                      {
                        do
                        {
                          v405 = v399[2];
                          v150 = *v405 == v399;
                          v399 = v405;
                        }

                        while (!v150);
                      }

                      v399 = v405;
                      if (v405 != &v452)
                      {
                        continue;
                      }
                    }

                    goto LABEL_323;
                  }

                  v383 = v383[1];
                  if (!v383)
                  {
                    goto LABEL_322;
                  }
                }

                while (v397 != &v452)
                {
                  v406 = v397[4];
                  v407 = v398[4];
                  if (v406 < v407)
                  {
                    break;
                  }

                  if (v407 >= v406)
                  {
                    v408 = v397[1];
                    v409 = v397;
                    if (v408)
                    {
                      do
                      {
                        v397 = v408;
                        v408 = *v408;
                      }

                      while (v408);
                    }

                    else
                    {
                      do
                      {
                        v397 = v409[2];
                        v150 = *v397 == v409;
                        v409 = v397;
                      }

                      while (!v150);
                    }

                    v410 = v398[1];
                    if (v410)
                    {
                      do
                      {
                        v411 = v410;
                        v410 = *v410;
                      }

                      while (v410);
                    }

                    else
                    {
                      do
                      {
                        v411 = v398[2];
                        v150 = *v411 == v398;
                        v398 = v411;
                      }

                      while (!v150);
                    }

                    v398 = v411;
                    if (v411 != v396)
                    {
                      continue;
                    }
                  }

                  goto LABEL_285;
                }

                v383 = *v383;
              }

              while (*v394);
LABEL_322:
              operator new();
            }

            v384 = v383[4];
            v385 = v383 + 5;
            if (v384 != v383 + 5)
            {
              v386 = *v434;
              while (1)
              {
                v387 = v451;
                while (v387 != &v452)
                {
                  v388 = v387[4];
                  v389 = v384[4];
                  if (v388 < v389)
                  {
                    break;
                  }

                  if (v389 >= v388)
                  {
                    v390 = v387[1];
                    v391 = v387;
                    if (v390)
                    {
                      do
                      {
                        v387 = v390;
                        v390 = *v390;
                      }

                      while (v390);
                    }

                    else
                    {
                      do
                      {
                        v387 = v391[2];
                        v150 = *v387 == v391;
                        v391 = v387;
                      }

                      while (!v150);
                    }

                    v392 = v384[1];
                    if (v392)
                    {
                      do
                      {
                        v393 = v392;
                        v392 = *v392;
                      }

                      while (v392);
                    }

                    else
                    {
                      do
                      {
                        v393 = v384[2];
                        v150 = *v393 == v384;
                        v384 = v393;
                      }

                      while (!v150);
                    }

                    v384 = v393;
                    if (v393 != v385)
                    {
                      continue;
                    }
                  }

                  v383 = v386;
                  goto LABEL_323;
                }

                v383 = *v386;
                if (!*v386)
                {
                  goto LABEL_322;
                }

                v384 = v383[4];
                v385 = v383 + 5;
                v386 = *v386;
                if (v384 == v383 + 5)
                {
                  break;
                }
              }
            }

LABEL_323:
            if (v383 + 7 != v87)
            {
              sub_18368A3D8(v383 + 7, *v87, v87[1], (v87[1] - *v87) >> 3);
            }
          }

          sub_18368D56C(&v451, v452);

          v63 = v443 + 1;
          if (v443 + 1 == v439)
          {
            goto LABEL_346;
          }
        }

        v103 = v444;
        v104 = v436;
        objc_msgSend_bounds(v104, v105, v106, v107, v108, v109);
        v111 = v110;
        v113 = v112;
        v115 = v114;
        objc_msgSend_bounds(v103, v116, v117, v118, v119, v120);
        v122 = v121;
        v124 = v123;
        v126 = v125;
        v128 = v127;
        if (objc_msgSend_strokeCount(v103, v129, v130, v131, v132, v133) > 2)
        {
          goto LABEL_85;
        }

        v139 = v124 - v113;
        v140 = v113 + v115 - (v124 + v128);
        v141 = v115 * 0.6;
        if (v139 >= v115 * 0.4 && v140 <= v141)
        {
LABEL_28:
          v432 = v126 / (v128 + 0.000000001);
          if (objc_msgSend_strokeCount(v103, v134, v135, v136, v137, v138) == 1)
          {
            if (v128 < v115 * 0.1 && v126 < v115 * 0.1)
            {
              v147 = 0;
              if (v126 < *(a1 + 496) && v128 < *(a1 + 504) && v122 > v111)
              {
                v147 = v139 > v115 * 0.75;
              }
            }

            else
            {
              v147 = 0;
            }

            if (v140 >= v139 || v139 <= v141 || v432 >= 1.5 || v122 <= v111 || (v169 = *v87, v168 = v87[1], v170 = *v87, *v87 == v168))
            {
LABEL_67:
              v27 = 0.5;
              if (v147)
              {
                v172 = *v87;
                v87[1] = *v87;
                v173 = v87[2];
                if (v172 >= v173)
                {
                  v174 = v173 - v172;
                  v175 = v174 >> 2;
                  if ((v174 >> 2) <= 1)
                  {
                    v175 = 1;
                  }

                  if (v174 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v176 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v176 = v175;
                  }

                  if (!(v176 >> 61))
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                *v172 = 0x3F7FBE770000002ELL;
                v167 = v172 + 1;
                goto LABEL_84;
              }
            }

            else
            {
              while (1)
              {
                v171 = *v170;
                if (*v170 == 44)
                {
                  v87[1] = v169;
                  v379 = v87[2];
                  if (v169 >= v379)
                  {
                    v412 = v379 - v169;
                    v413 = v412 >> 2;
                    if ((v412 >> 2) <= 1)
                    {
                      v413 = 1;
                    }

                    if (v412 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v414 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v414 = v413;
                    }

                    if (!(v414 >> 61))
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v380 = 0x3F7FBE770000002CLL;
                  goto LABEL_259;
                }

                if (v171 == 12290)
                {
                  break;
                }

                if (v171 == 20022)
                {
                  v87[1] = v169;
                  v382 = v87[2];
                  if (v169 >= v382)
                  {
                    v418 = v382 - v169;
                    v419 = v418 >> 2;
                    if ((v418 >> 2) <= 1)
                    {
                      v419 = 1;
                    }

                    if (v418 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v420 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v420 = v419;
                    }

                    if (!(v420 >> 61))
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v380 = 0x3F7FBE7700003001;
LABEL_259:
                  *v169 = v380;
                  v167 = v169 + 1;
                  v27 = 0.5;
                  goto LABEL_84;
                }

                v170 += 2;
                if (v170 == v168)
                {
                  goto LABEL_67;
                }
              }

              v87[1] = v169;
              v381 = v87[2];
              v27 = 0.5;
              if (v169 >= v381)
              {
                v415 = v381 - v169;
                v416 = v415 >> 2;
                if ((v415 >> 2) <= 1)
                {
                  v416 = 1;
                }

                if (v415 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v417 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v417 = v416;
                }

                if (!(v417 >> 61))
                {
                  operator new();
                }

                sub_183688F00();
              }

              *v169 = 0x3F7FBE7700003002;
              v167 = v169 + 1;
LABEL_84:
              v87[1] = v167;
            }
          }

          else
          {
            objc_msgSend_boundsForStrokeIndex_(v103, v142, 0, v143, v144, v145);
            v154 = v153;
            v156 = v155;
            objc_msgSend_boundsForStrokeIndex_(v103, v157, 1, v158, v159, v160);
            v27 = 0.5;
            v163 = *(a1 + 504);
            if (v156 < v163)
            {
              v164 = *(a1 + 496);
              if (v154 < v164 && v162 < v163 && v161 < v164 && v432 < 0.25)
              {
                v165 = *v87;
                v87[1] = *v87;
                v166 = v87[2];
                if (v165 >= v166)
                {
                  v177 = v166 - v165;
                  v178 = v177 >> 2;
                  if ((v177 >> 2) <= 1)
                  {
                    v178 = 1;
                  }

                  if (v177 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v179 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v179 = v178;
                  }

                  if (!(v179 >> 61))
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                *v165 = 0x3F7FBE770000003ALL;
                v167 = v165 + 1;
                goto LABEL_84;
              }
            }
          }

LABEL_85:

          goto LABEL_86;
        }

        v148 = *v87;
        v149 = v87[1];
        while (2)
        {
          if (v148 == v149)
          {
            goto LABEL_28;
          }

          v152 = *v148;
          if (*v148 > 12288)
          {
            v150 = (v152 - 12289) < 2 || v152 == 20022;
            if (!v150)
            {
              goto LABEL_41;
            }
          }

          else if (v152 != 44 && v152 != 46)
          {
            goto LABEL_41;
          }

          v151 = *(v148 + 4) * 0.1;
          *(v148 + 4) = v151;
LABEL_41:
          v148 += 8;
          continue;
        }
      }

LABEL_346:
      v421 = __p;
      if (__p)
      {
        v422 = v455;
        v28 = __p;
        if (v455 != __p)
        {
          v423 = v455;
          do
          {
            v425 = *(v423 - 3);
            v423 -= 24;
            v424 = v425;
            if (v425)
            {
              *(v422 - 2) = v424;
              operator delete(v424);
            }

            v422 = v423;
          }

          while (v423 != v421);
          v28 = __p;
        }

        v455 = v421;
        operator delete(v28);
      }

      v431 += v439;

      v26 = v430 + 1;
      if (v430 + 1 == v427)
      {
        goto LABEL_353;
      }
    }
  }

  v431 = 0;
LABEL_353:

  return v431;
}

void sub_1836C5544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, void *a45, void *a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, void *a54)
{
  sub_18368D56C(&a51, a52);

  sub_18369F0F0(&a54);
  _Unwind_Resume(a1);
}

double sub_1836C579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = *(*(a2 + 248) + 48);
  if (v8 && (objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, a3, a4, a5, a6), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v8, v11, v10, v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v15, v10, v15))
  {
    __p[0] = 0;
    __p[1] = 0;
    v39 = 0;
    memset(v37, 0, sizeof(v37));
    v20 = *(*(a2 + 248) + 48);
    v21 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v16, a3, v17, v18, v19);
    v26 = objc_msgSend_objectForKeyedSubscript_(v20, v22, v21, v23, v24, v25);

    if (objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, v37, v40, 16, v28))
    {
      objc_msgSend_unsignedIntValue(**(&v37[0] + 1), v29, v30, v31, v32, v33, a1);
      operator new();
    }

    sub_18389CF20(__p, 0, &v35);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    result = *&v35;
    *a1 = v35;
    *(a1 + 16) = v36;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    sub_18389CD10(a3, __p);
    result = *__p;
    *a1 = *__p;
    *(a1 + 16) = v39;
  }

  return result;
}

void sub_1836C5A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836C7D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *__p)
{
  operator delete(__p);

  sub_1836E1B84(STACK[0x228]);
  v34 = STACK[0x250];
  if (STACK[0x250])
  {
    v35 = v34 - 16;
    v36 = *(v34 - 8);
    if (v36)
    {
      v37 = 24 * v36;
      do
      {

        v37 -= 24;
      }

      while (v37);
    }

    MEMORY[0x1865E5E90](v35, 0x1080C801842DC26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1836C8124(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  if (*(a1 + 1) == 1 && v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = *(a1 + 24) + v12;
      if (*(v14 + 24) == a4)
      {
        v15 = *(v14 + 32);
        v20 = v15;
        if (*(v14 + 40) == *&a3)
        {
          isEqual = objc_msgSend_isEqual_(v15, v16, a2, v17, v18, v19);

          if (isEqual)
          {
            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      ++v13;
      v8 = *v9;
      v12 += 24;
    }

    while (v13 < *v9 + 1);
  }

  if (v8 == *(a1 + 8))
  {
    v9 = (a1 + 32);
    v11 = *(*(a1 + 24) + 24 * *(a1 + 32));
    if (*a1 == 1)
    {
      if (v11 <= a4)
      {
        goto LABEL_26;
      }
    }

    else if (v11 >= a4)
    {
LABEL_26:
      v34 = 0;
      goto LABEL_32;
    }

    v25 = a2;
    v23 = *(a1 + 24);
    v24 = *(a1 + 32);
  }

  else
  {
    v22 = a2;
    v23 = *(a1 + 24);
    v24 = *(a1 + 16) + 1;
    *(a1 + 16) = v24;
  }

  v26 = v23 + 24 * v24;
  *v26 = a4;
  v27 = *(v26 + 8);
  *(v26 + 8) = a2;
  v28 = a2;

  *(v26 + 16) = *&a3;
  sub_1836E1C08(a1, *v9);
  v29 = *(a1 + 16);
  *(a1 + 32) = v29;
  if (v29)
  {
    v30 = v29 >> 1;
    v31 = v29 - 1;
    if (v29 - 1 > v29 >> 1)
    {
      v32 = *(a1 + 24);
      if (*a1)
      {
        v33 = (v32 + 24 * v29 - 24);
        do
        {
          if (*v33 > *(v32 + 24 * v29))
          {
            *(a1 + 32) = v31;
            v29 = v31;
          }

          --v31;
          v33 -= 3;
        }

        while (v31 > v30);
      }

      else
      {
        v35 = (v32 + 24 * v29 - 24);
        do
        {
          if (*v35 < *(v32 + 24 * v29))
          {
            *(a1 + 32) = v31;
            v29 = v31;
          }

          --v31;
          v35 -= 3;
        }

        while (v31 > v30);
      }
    }
  }

  v34 = 1;
LABEL_32:

  return v34;
}

void sub_1836C8364(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_msgSend_combinedScore(v9, v3, v4, v5, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) = v8 + *(*(*(a1 + 32) + 8) + 24);
}

void sub_1836C8608(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v9 = objc_msgSend_segments(*(a1 + 32), a2, a3, a4, a5, a6);
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);
  v16 = &a2[v8];

  if (v16 >= v15)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v22 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 48);
      v29 = objc_msgSend_segments(*(a1 + 32), v23, v24, v25, v26, v27);
      v78 = 134218752;
      v79 = v16;
      v80 = 2048;
      v81 = a2;
      v82 = 2048;
      v83 = v28;
      v84 = 2048;
      v85 = objc_msgSend_count(v29, v30, v31, v32, v33, v34);
      _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_ERROR, "Incorrect index in segment decoding: index %ld (idx %ld + offset %ld) should be smaller than %ld, the number of segments on the group.", &v78, 0x2Au);
    }
  }

  v35 = objc_msgSend_segments(*(a1 + 32), v17, v18, v19, v20, v21);
  v41 = v16 < objc_msgSend_count(v35, v36, v37, v38, v39, v40);

  if (!v41)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v47 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      v53 = *(a1 + 48);
      v54 = objc_msgSend_segments(*(a1 + 32), v48, v49, v50, v51, v52);
      v60 = objc_msgSend_count(v54, v55, v56, v57, v58, v59);
      v78 = 134218752;
      v79 = v16;
      v80 = 2048;
      v81 = a2;
      v82 = 2048;
      v83 = v53;
      v84 = 2048;
      v85 = v60;
      _os_log_impl(&dword_18366B000, v47, OS_LOG_TYPE_FAULT, "Incorrect index in segment decoding: index %ld (idx %ld + offset %ld) should be smaller than %ld, the number of segments on the group.", &v78, 0x2Au);
    }
  }

  v61 = objc_msgSend_segments(*(a1 + 32), v42, v43, v44, v45, v46);
  v66 = objc_msgSend_objectAtIndex_(v61, v62, v16, v63, v64, v65);

  if (v66)
  {
    v72 = *(a1 + 40);
    v73 = objc_msgSend_strokeIndexSet(v66, v67, v68, v69, v70, v71);
    objc_msgSend_addIndexes_(v72, v74, v73, v75, v76, v77);
  }
}

void sub_1836CBA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, void *a40)
{
  v42 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v42;
    operator delete(v42);
  }

  v43 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

id sub_1836CC22C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

id sub_1836CC25C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_activations(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_characterObservations(v7, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, a2, v15, v16, v17);

  return v18;
}

void ***sub_1836CC2F0(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 5);
        v5 -= 5;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 4);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = *(v3 - 4);
            do
            {
              v12 = *(v10 - 8);
              v10 -= 64;
              v11 = v12;
              if (v12)
              {
                *(v9 - 7) = v11;
                operator delete(v11);
              }

              v9 = v10;
            }

            while (v10 != v7);
            v6 = *v5;
          }

          *(v3 - 4) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

id sub_1836CC94C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v167 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v162 = a3;
  v161 = a5;
  if (!a1)
  {
    v135 = 0;
    goto LABEL_85;
  }

  v160 = *(a1 + 16);
  objc_msgSend_recordInputDrawing_(v160, v9, v8, v10, v11, v12);
  shouldRunNextGenRecognizer = objc_msgSend_shouldRunNextGenRecognizer(*(a1 + 456), v13, v14, v15, v16, v17);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v19 = qword_1EA84DC58;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = shouldRunNextGenRecognizer;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_DEBUG, "CHRecognizer is running RNN recognition pipeline: %d", buf, 8u);
  }

  if (shouldRunNextGenRecognizer)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v20 = qword_1EA84DC88;
    v21 = os_signpost_id_generate(v20);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v22 = qword_1EA84DC88;
    v23 = v22;
    v24 = v21 - 1;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CHRecognizerNextGenRecognition", "", buf, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognizerNextGenRecognition", buf, 2u);
    }

    v163 = 0;
    v28 = objc_msgSend__resultUsingNextGenerationPipelineWithDrawing_options_outPrincipalLinePoints_(a1, v26, v8, v162, &v163, v27);
    v29 = v163;
    if (qword_1EA84DC48 == -1)
    {
      v30 = qword_1EA84DC88;
      if (v24 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v30 = qword_1EA84DC88;
      if (v24 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_22;
      }
    }

    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v30, OS_SIGNPOST_INTERVAL_END, v21, "CHRecognizerNextGenRecognition", "", buf, 2u);
    }

LABEL_22:

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v31 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v31, OS_LOG_TYPE_DEFAULT, "END CHRecognizerNextGenRecognition", buf, 2u);
    }

    if (!*(a1 + 440) || !v28)
    {
      v62 = v28;
      if (!a4)
      {
LABEL_76:
        v118 = objc_msgSend_lastTokenStrokeIndexes(v62, v32, v33, v34, v35, v36);
        *(a1 + 408) = objc_msgSend_count(v118, v119, v120, v121, v122, v123);
        objc_msgSend_removeAllIndexes(*(a1 + 416), v124, v125, v126, v127, v128);
        objc_msgSend_addIndexes_(*(a1 + 416), v129, v118, v130, v131, v132);
        v88 = v62;
        goto LABEL_98;
      }

LABEL_74:
      if (v29)
      {
        v113 = v29;
        *a4 = v29;
        objc_msgSend_recordPrincipalPoints_(v160, v114, v29, v115, v116, v117);
      }

      goto LABEL_76;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v37 = qword_1EA84DC88;
    v38 = os_signpost_id_generate(v37);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v39 = qword_1EA84DC88;
    v40 = v39;
    v41 = v38 - 1;
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "CHRecognizerPostProcessingBlock", "", buf, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v42 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognizerPostProcessingBlock", buf, 2u);
    }

    v43 = sub_1836C38CC(a1, v162);
    v44 = [CHResultWithContext alloc];
    v50 = objc_msgSend_contentType(*(a1 + 456), v45, v46, v47, v48, v49);
    v52 = objc_msgSend_initWithResult_leftContext_contentType_drawing_(v44, v51, v28, v43, v50, v8);
    v56 = objc_msgSend_process_options_(*(a1 + 440), v53, v52, v162, v54, v55);
    v62 = objc_msgSend_result(v56, v57, v58, v59, v60, v61);

    if (qword_1EA84DC48 == -1)
    {
      v63 = qword_1EA84DC88;
      if (v41 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_43;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v63 = qword_1EA84DC88;
      if (v41 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_43;
      }
    }

    if (os_signpost_enabled(v63))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v63, OS_SIGNPOST_INTERVAL_END, v38, "CHRecognizerPostProcessingBlock", "", buf, 2u);
    }

LABEL_43:

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v64 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v64, OS_LOG_TYPE_DEFAULT, "END CHRecognizerPostProcessingBlock", buf, 2u);
    }

    if (!a4)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v65 = qword_1EA84DC88;
  spida = os_signpost_id_generate(v65);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v66 = qword_1EA84DC88;
  v67 = v66;
  if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v67, OS_SIGNPOST_INTERVAL_BEGIN, spida, "CHRecognizerSegmentAndDecodeBlock", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v68 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v68, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognizerSegmentAndDecodeBlock", buf, 2u);
  }

  v69 = v8;
  v70 = v162;
  v71 = v161;
  v72 = objc_opt_class();
  v77 = objc_msgSend_generateSegmentsFromDrawing_(v72, v73, v69, v74, v75, v76);
  *(a1 + 408) = 0;
  objc_msgSend_removeAllIndexes(*(a1 + 416), v78, v79, v80, v81, v82);
  v83 = [CHDrawingSegmentGroup alloc];
  v87 = objc_msgSend_initWithSegmentGroupIndex_segments_(v83, v84, 0, v77, v85, v86);
  v88 = sub_1836C073C(a1, v69, v87, v70, v71);
  v99 = objc_msgSend_strokeCount(v69, v89, v90, v91, v92, v93) - *(a1 + 408);
  if (v99 < 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v100 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v100, OS_LOG_TYPE_ERROR, "The first stroke index must be non-negative", buf, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v101 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v101, OS_LOG_TYPE_FAULT, "The first stroke index must be non-negative", buf, 2u);
    }
  }

  v102 = objc_msgSend_supportedSegmentationStrategy(*(a1 + 456), v94, v95, v96, v97, v98);
  if (v102)
  {
    if (v102 == 1)
    {
      v108 = *(a1 + 416);
      v109 = objc_msgSend_strokeCount(v69, v103, v104, v105, v106, v107);
      objc_msgSend_addIndexesInRange_(v108, v110, 0, v109, v111, v112);
    }
  }

  else
  {
    if (!v69)
    {
      v133 = 0;
      v134 = 0;
      *buf = 0;
      v165 = 0;
      v166 = 0;
      goto LABEL_123;
    }

    objc_msgSend_strokeIndicesSortedByMinXCoordinate(v69, v103, v104, v105, v106, v107);
    while (1)
    {
      v133 = *buf;
      v134 = v165;
LABEL_123:
      if (v99 >= (v134 - v133))
      {
        break;
      }

      objc_msgSend_addIndex_(*(a1 + 416), v103, v133[v99++], v105, v106, v107);
    }

    if (v133)
    {
      v165 = v133;
      operator delete(v133);
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v137 = qword_1EA84DC88;
  v138 = v137;
  if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v137))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v138, OS_SIGNPOST_INTERVAL_END, spida, "CHRecognizerSegmentAndDecodeBlock", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v118 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v118, OS_LOG_TYPE_DEFAULT, "END CHRecognizerSegmentAndDecodeBlock", buf, 2u);
  }

  v29 = 0;
LABEL_98:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v139 = qword_1EA84DC88;
  v140 = os_signpost_id_generate(v139);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v141 = qword_1EA84DC88;
  v142 = v141;
  v143 = v140 - 1;
  if (v140 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v141))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v142, OS_SIGNPOST_INTERVAL_BEGIN, v140, "CHRecognizerFilterLowProbabilityBlock", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v144 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v144, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognizerFilterLowProbabilityBlock", buf, 2u);
  }

  if (objc_msgSend_shouldFilterLowProbabilityTranscriptionPaths(*(a1 + 456), v145, v146, v147, v148, v149))
  {
    v155 = objc_msgSend_tokenizedResultWithFilteredPaths_(v88, v150, v151, v152, v153, v154, 0.5);

    v88 = v155;
  }

  if (qword_1EA84DC48 == -1)
  {
    v156 = qword_1EA84DC88;
    if (v143 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_113;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v156 = qword_1EA84DC88;
    if (v143 <= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_113:
      if (os_signpost_enabled(v156))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v156, OS_SIGNPOST_INTERVAL_END, v140, "CHRecognizerFilterLowProbabilityBlock", "", buf, 2u);
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v157 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v157, OS_LOG_TYPE_DEFAULT, "END CHRecognizerFilterLowProbabilityBlock", buf, 2u);
  }

  v135 = v88;
LABEL_85:

  return v135;
}

void sub_1836CD790(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1836CD7F4);
}

void sub_1836CDBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1836CDC64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(*(a1 + 40) + 8) + 24) == 3)
  {
    v9 = objc_msgSend_substringFromIndex_(*(a1 + 32), a2, a3, a4, a5, a6);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a7 = 1;
  }
}

void sub_1836CE00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v32 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1836CE09C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v158 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_pointCount(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = *(a1 + 40);
  if (v7)
  {
    v142 = a1;
    v14 = *(a1 + 32);
    v20 = v14;
    if (v13)
    {
      objc_msgSend_bounds(v14, v15, v16, v17, v18, v19);
      v28 = v27 < *(v13 + 496) && v26 < *(v13 + 504);
      if (objc_msgSend_strokeCount(v20, v21, v22, v23, v24, v25) != 1)
      {
        v28 = 0;
      }

      if (v28)
      {
        v35 = *(v142 + 40);
        v145 = objc_msgSend_strokeCount(*(v142 + 32), v30, v31, v32, v33, v34);
        if (v35)
        {
          v154 = 0;
          v39 = v35;
          v141 = objc_msgSend__defaultPunctuationStringsOutputScores_maxCandidateCount_(v35, v36, &v154, -1, v37, v38);
          v40 = v154;
          v41 = MEMORY[0x1E695DF70];
          v47 = objc_msgSend_count(v141, v42, v43, v44, v45, v46);
          v148 = objc_msgSend_arrayWithCapacity_(v41, v48, v47, v49, v50, v51);
          v144 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v52, 0, v145, v53, v54);
          v147 = objc_msgSend_array(MEMORY[0x1E695DF70], v55, v56, v57, v58, v59);
          v146 = objc_msgSend_array(MEMORY[0x1E695DF70], v60, v61, v62, v63, v64);
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          obj = v141;
          v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v150, v157, 16, v66);
          if (v71)
          {
            v72 = 0;
            v73 = *v151;
            v74 = MEMORY[0x1E695F050];
            do
            {
              v75 = 0;
              do
              {
                if (*v151 != v73)
                {
                  objc_enumerationMutation(obj);
                }

                v76 = *(*(&v150 + 1) + 8 * v75);
                v77 = objc_msgSend_objectAtIndex_(v40, v67, v72, v68, v69, v70);
                objc_msgSend_doubleValue(v77, v78, v79, v80, v81, v82);
                v84 = v83;

                v85 = [CHTokenizedTextResultToken alloc];
                v91 = objc_msgSend_locale(v39[57], v86, v87, v88, v89, v90);
                v93 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v85, v92, v76, v144, 0, 8, v91, 4, v84, v84, v84, 1.0, *v74, v74[1], v74[2], v74[3], v145);

                v156 = v93;
                v97 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v94, &v156, 1, v95, v96);
                objc_msgSend_addObject_(v148, v98, v97, v99, v100, v101);

                v106 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v102, v72, v103, v104, v105);
                objc_msgSend_addObject_(v147, v107, v106, v108, v109, v110);

                v115 = objc_msgSend_objectAtIndex_(v40, v111, v72, v112, v113, v114);
                objc_msgSend_addObject_(v146, v116, v115, v117, v118, v119);

                ++v72;
                ++v75;
              }

              while (v71 != v75);
              v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v150, v157, 16, v70);
            }

            while (v71);
          }

          v120 = [CHTokenizedResultColumn alloc];
          v125 = objc_msgSend_initWithTokenRows_(v120, v121, v148, v122, v123, v124);
          v126 = [CHTokenizedTextResult alloc];
          v155 = v125;
          v130 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v127, &v155, 1, v128, v129);
          isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_recognizerGenerationIdentifier_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v126, v131, v130, v147, v146, 1, 1, 0, 0);
        }

        else
        {
          isMinimalDrawingResult_baseWritingDirection_originalTokens = 0;
        }

        v133 = *(*(v142 + 72) + 8);
        v134 = *(v133 + 40);
        *(v133 + 40) = isMinimalDrawingResult_baseWritingDirection_originalTokens;

        return;
      }
    }

    else
    {
    }

    v136 = *(v142 + 32);
    v135 = *(v142 + 40);
    v137 = *(*(v142 + 80) + 8);
    v149 = *(v137 + 40);
    v138 = sub_1836CC94C(v135, v136, *(v142 + 56), &v149, *(v142 + 64));
    objc_storeStrong((v137 + 40), v149);
    v139 = *(*(v142 + 72) + 8);
    v140 = *(v139 + 40);
    *(v139 + 40) = v138;

    return;
  }

  v29 = *(v13 + 416);

  objc_msgSend_removeAllIndexes(v29, v8, v9, v10, v11, v12);
}

void sub_1836CE814(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v240[1] = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_pointCount(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = *(a1 + 40);
  if (v7)
  {
    v14 = *(a1 + 32);
    v20 = v14;
    if (v13)
    {
      objc_msgSend_bounds(v14, v15, v16, v17, v18, v19);
      v28 = v27 < *(v13 + 496) && v26 < *(v13 + 504);
      if (objc_msgSend_strokeCount(v20, v21, v22, v23, v24, v25) != 1)
      {
        v28 = 0;
      }

      if (v28)
      {
        v35 = *(a1 + 40);
        v219 = a1;
        v36 = objc_msgSend_strokeCount(*(a1 + 32), v30, v31, v32, v33, v34);
        if (v35)
        {
          v40 = v36;
          v232 = 0;
          v220 = objc_msgSend__defaultPunctuationStringsOutputScores_maxCandidateCount_(v35, v37, &v232, -1, v38, v39);
          v226 = v232;
          v41 = MEMORY[0x1E695DF70];
          v47 = objc_msgSend_count(v220, v42, v43, v44, v45, v46);
          v223 = objc_msgSend_arrayWithCapacity_(v41, v48, v47, v49, v50, v51);
          v56 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v52, 0, v53, v54, v55);
          v240[0] = v56;
          v224 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v57, v240, 1, v58, v59);

          v225 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v60, 0, v40, v61, v62);
          v230 = 0u;
          v231 = 0u;
          v228 = 0u;
          v229 = 0u;
          obj = v220;
          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v228, buf, 16, v64);
          if (v65)
          {
            v71 = 0;
            v222 = *v229;
            do
            {
              v227 = v65;
              for (i = 0; i != v227; ++i)
              {
                if (*v229 != v222)
                {
                  objc_enumerationMutation(obj);
                }

                v73 = *(*(&v228 + 1) + 8 * i);
                v74 = MEMORY[0x1E696B098];
                v75 = objc_msgSend_length(v73, v66, v67, v68, v69, v70);
                v79 = objc_msgSend_valueWithRange_(v74, v76, 0, v75, v77, v78);
                v238 = v79;
                v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v80, &v238, 1, v81, v82);

                v88 = objc_msgSend_objectAtIndex_(v226, v84, v71, v85, v86, v87);
                objc_msgSend_doubleValue(v88, v89, v90, v91, v92, v93);
                v95 = v94;

                v101 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v96, v97, v98, v99, v100, v95);
                v237 = v101;
                v105 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v102, &v237, 1, v103, v104);

                v111 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v106, v107, v108, v109, v110, v95);
                v236 = v111;
                v115 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v112, &v236, 1, v113, v114);

                v120 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v116, 0, v117, v118, v119);
                v235 = v120;
                v124 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v121, &v235, 1, v122, v123);

                v129 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v125, 1, v126, v127, v128);
                v234 = v129;
                v133 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v130, &v234, 1, v131, v132);

                v233 = v225;
                v137 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v134, &v233, 1, v135, v136);
                v138 = [CHTextRecognitionResult alloc];
                LOBYTE(v218) = 0;
                isTextReplacement = objc_msgSend_initWithString_score_wordRanges_wordIDs_wordRecognitionScores_wordCombinedScores_wordStrokeSets_wordLexicalEntries_wordPatternEntries_rareWordIndexes_inappropriateWordIndexes_isTextReplacement_(v138, v139, v73, v83, v224, v105, v115, v137, v95, v124, v133, 0, 0, v218);
                objc_msgSend_addObject_(v223, v141, isTextReplacement, v142, v143, v144);

                ++v71;
              }

              v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v228, buf, 16, v70);
            }

            while (v65);
          }
        }

        else
        {
          v223 = 0;
        }

        v145 = *(*(v219 + 64) + 8);
        v146 = *(v145 + 40);
        *(v145 + 40) = v223;

        *(*(v219 + 40) + 408) = objc_msgSend_strokeCount(*(v219 + 32), v147, v148, v149, v150, v151);
        objc_msgSend_removeAllIndexes(*(*(v219 + 40) + 416), v152, v153, v154, v155, v156);
        v160 = *(v219 + 40);
        goto LABEL_22;
      }
    }

    else
    {
    }

    v163 = objc_msgSend_mode(*(*(a1 + 40) + 456), v30, v31, v32, v33, v34);
    if (v163 > 3)
    {
      if ((v163 - 4) >= 3)
      {
        return;
      }

      goto LABEL_49;
    }

    if (v163 != 1)
    {
      if (v163 != 2)
      {
        if (v163 != 3)
        {
          return;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v169 = qword_1EA84DC88;
        v170 = os_signpost_id_generate(v169);

        if (qword_1EA84DC48 == -1)
        {
          v171 = qword_1EA84DC88;
          v172 = v170 - 1;
          if (v170 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_36;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v171 = qword_1EA84DC88;
          v172 = v170 - 1;
          if (v170 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_36;
          }
        }

        if (os_signpost_enabled(v171))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v171, OS_SIGNPOST_INTERVAL_BEGIN, v170, "CHSketchRecognition", "", buf, 2u);
        }

LABEL_36:

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v173 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v173, OS_LOG_TYPE_DEFAULT, "BEGIN CHSketchRecognition", buf, 2u);
        }

        v174 = sub_1836B5DF4(*(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 56));
        v175 = *(*(a1 + 64) + 8);
        v176 = *(v175 + 40);
        *(v175 + 40) = v174;

        if (qword_1EA84DC48 == -1)
        {
          v177 = qword_1EA84DC88;
          if (v172 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_44;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v177 = qword_1EA84DC88;
          if (v172 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_44;
          }
        }

        if (os_signpost_enabled(v177))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v177, OS_SIGNPOST_INTERVAL_END, v170, "CHSketchRecognition", "", buf, 2u);
        }

LABEL_44:

        if (qword_1EA84DC48 == -1)
        {
          v178 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
LABEL_47:

            return;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v178 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_47;
          }
        }

        *buf = 0;
        _os_log_impl(&dword_18366B000, v178, OS_LOG_TYPE_DEFAULT, "END CHSketchRecognition", buf, 2u);
        goto LABEL_47;
      }

      goto LABEL_49;
    }

    v186 = a1;
    if (!objc_msgSend_shouldRunNextGenRecognizer(*(*(a1 + 40) + 456), v164, v165, v166, v167, v168))
    {
      v194 = *(a1 + 40);
      v193 = (a1 + 40);
      v195 = sub_1836B9304(v194, *(v193 - 1), 0, v193[1], 0);
      v196 = *(*(v186 + 64) + 8);
      v197 = *(v196 + 40);
      *(v196 + 40) = v195;

      *(*v193 + 51) = objc_msgSend_strokeCount(*(v193 - 1), v198, v199, v200, v201, v202);
      objc_msgSend_removeAllIndexes(*(*v193 + 52), v203, v204, v205, v206, v207);
      v160 = *v193;
LABEL_22:
      v162 = v160[51];
      v161 = v160[52];

      objc_msgSend_addIndexesInRange_(v161, v157, 0, v162, v158, v159);
      return;
    }

    v187 = *(a1 + 48);
    if (v187)
    {
      v188 = objc_msgSend_objectForKeyedSubscript_(v187, v182, CHRecognitionOptionDrawingAnchorPoint, v183, v184, v185);

      if (v188)
      {
LABEL_49:
        v179 = sub_1836CF2A4(*(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 56));
        v180 = *(*(a1 + 64) + 8);
        v181 = *(v180 + 40);
        *(v180 + 40) = v179;

        return;
      }

      objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v189, *(a1 + 48), v190, v191, v192);
    }

    else
    {
      objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v182, 0, v183, v184, v185);
    }
    v208 = ;
    v214 = objc_msgSend_valueWithPoint_(MEMORY[0x1E696B098], v209, v210, v211, v212, v213, 0.0, -8.0);
    objc_msgSend_setObject_forKeyedSubscript_(v208, v215, v214, CHRecognitionOptionDrawingAnchorPoint, v216, v217);

    goto LABEL_49;
  }

  v29 = *(v13 + 416);

  objc_msgSend_removeAllIndexes(v29, v8, v9, v10, v11, v12);
}

id sub_1836CF2A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = sub_1836CC94C(a1, v10, v11, 0, v12);

    v18 = objc_msgSend_textRecognitionResultArrayGivenHistory_(v13, v14, &stru_1EF1C0318, v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_1836CF3FC(void *a1, unsigned int **a2, unsigned int **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = a3[1];
  *v65 = 0u;
  *v66 = 0u;
  for (i = 1065353216; v9 != v10; ++v9)
  {
    sub_1836E2048(v65, v9);
  }

  *v62 = 0u;
  *__p = 0u;
  v64 = 1065353216;
  v11 = *a2;
  v12 = a2[1];
  v13 = 1.0;
  v59 = a2;
  v61 = a1;
  if (*a2 == v12 || (v14 = v65[1], !v65[1]))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
LABEL_6:
    v16 = *v11;
    v17 = vcnt_s8(v14);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = *v11;
      if (*&v14 <= v16)
      {
        v18 = v16 % v14.i32[0];
      }
    }

    else
    {
      v18 = (v14.i32[0] - 1) & v16;
    }

    v19 = *(v65[0] + v18);
    if (v19)
    {
      v20 = *v19;
      if (v20)
      {
        if (v17.u32[0] < 2uLL)
        {
          v21 = *&v14 - 1;
          while (1)
          {
            v23 = v20[1];
            if (v23 == v16)
            {
              if (*(v20 + 4) == v16)
              {
                goto LABEL_26;
              }
            }

            else if ((v23 & v21) != v18)
            {
              goto LABEL_31;
            }

            v20 = *v20;
            if (!v20)
            {
              goto LABEL_31;
            }
          }
        }

        do
        {
          v22 = v20[1];
          if (v22 == v16)
          {
            if (*(v20 + 4) == v16)
            {
LABEL_26:
              v24 = v15;
              v25 = v15 >> 3;
              if (((v15 >> 3) + 1) >> 61)
              {
                sub_18368964C();
              }

              if (v15 >> 3 != -1)
              {
                if (!(((v15 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                sub_183688F00();
              }

              *(8 * v25) = *v11;
              v15 = 8 * v25 + 8;
              memcpy(0, 0, v24);
              sub_1836E2048(v62, v11);
              break;
            }
          }

          else
          {
            if (v22 >= *&v14)
            {
              v22 %= *&v14;
            }

            if (v22 != v18)
            {
              break;
            }
          }

          v20 = *v20;
        }

        while (v20);
      }
    }

LABEL_31:
    while (1)
    {
      v11 += 2;
      if (v11 == v12)
      {
        break;
      }

      v14 = v65[1];
      if (v65[1])
      {
        goto LABEL_6;
      }
    }

    if (v15)
    {
      v13 = *(v15 - 4);
    }
  }

  v26 = *a3;
  v27 = a3[1];
  if (*a3 != v27)
  {
    do
    {
      v28 = *v26;
      if (v62[1])
      {
        v29 = vcnt_s8(v62[1]);
        v29.i16[0] = vaddlv_u8(v29);
        if (v29.u32[0] > 1uLL)
        {
          v30 = *v26;
          if (v62[1] <= v28)
          {
            v30 = v28 % LODWORD(v62[1]);
          }
        }

        else
        {
          v30 = (LODWORD(v62[1]) - 1) & v28;
        }

        v31 = *(v62[0] + v30);
        if (v31)
        {
          v32 = *v31;
          if (v32)
          {
            if (v29.u32[0] < 2uLL)
            {
              while (1)
              {
                v33 = v32[1];
                if (v33 == v28)
                {
                  if (*(v32 + 4) == v28)
                  {
                    goto LABEL_63;
                  }
                }

                else if ((v33 & (v62[1] - 1)) != v30)
                {
                  goto LABEL_58;
                }

                v32 = *v32;
                if (!v32)
                {
                  goto LABEL_58;
                }
              }
            }

            do
            {
              v34 = v32[1];
              if (v34 == v28)
              {
                if (*(v32 + 4) == v28)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if (v34 >= v62[1])
                {
                  v34 %= v62[1];
                }

                if (v34 != v30)
                {
                  break;
                }
              }

              v32 = *v32;
            }

            while (v32);
          }
        }
      }

LABEL_58:
      v36 = v15;
      v37 = v15 >> 3;
      if ((v37 + 1) >> 61)
      {
        sub_18368964C();
      }

      if (v37 != -1)
      {
        if (!((v37 + 1) >> 61))
        {
          operator new();
        }

        sub_183688F00();
      }

      MEMORY[0xFFFFFFFFFFFFFFF8] = *v26;
      v35 = v13;
      MEMORY[0xFFFFFFFFFFFFFFFC] = LODWORD(v35);
      v15 = 0;
      memcpy(0, 0, v36);
      v13 = v13 * 0.9;
LABEL_63:
      ++v26;
    }

    while (v26 != v27);
  }

  v43 = v15 >> 3;
  if (objc_msgSend__effectiveMaxRecognitionResultCount(v61, a2, a3, a4, a5, a6, v59) < (v15 >> 3))
  {
    v43 = objc_msgSend__effectiveMaxRecognitionResultCount(v61, v38, v39, v40, v41, v42);
  }

  v44 = 8 * v43;
  v45 = v60[2];
  v46 = *v60;
  if (v43 > (v45 - *v60) >> 3)
  {
    if (v46)
    {
      v60[1] = v46;
      operator delete(v46);
      v45 = 0;
      *v60 = 0;
      v60[1] = 0;
      v60[2] = 0;
    }

    if (!(v43 >> 61))
    {
      v47 = v45 >> 2;
      if (v45 >> 2 <= v43)
      {
        v47 = v43;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFF8)
      {
        v48 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v47;
      }

      if (!(v48 >> 61))
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v49 = v60[1];
  v50 = (v49 - v46);
  if (v43 > (v49 - v46) >> 3)
  {
    if (v49 != v46)
    {
      memmove(v46, 0, v49 - v46);
      v49 = v60[1];
    }

    v51 = v44 - v50;
    if (v51)
    {
      memmove(v49, v50, v51);
    }

    v60[1] = &v49[v51];
    v52 = __p[0];
    if (!__p[0])
    {
      goto LABEL_88;
    }

    do
    {
LABEL_87:
      v54 = *v52;
      operator delete(v52);
      v52 = v54;
    }

    while (v54);
    goto LABEL_88;
  }

  if (v43)
  {
    v53 = *v60;
    memmove(v46, 0, v44);
    v46 = v53;
  }

  v60[1] = &v46[v44];
  v52 = __p[0];
  if (__p[0])
  {
    goto LABEL_87;
  }

LABEL_88:
  v55 = v62[0];
  v62[0] = 0;
  if (v55)
  {
    operator delete(v55);
  }

  v56 = v66[0];
  if (v66[0])
  {
    do
    {
      v57 = *v56;
      operator delete(v56);
      v56 = v57;
    }

    while (v57);
  }

  v58 = v65[0];
  v65[0] = 0;
  if (v58)
  {
    operator delete(v58);
  }
}