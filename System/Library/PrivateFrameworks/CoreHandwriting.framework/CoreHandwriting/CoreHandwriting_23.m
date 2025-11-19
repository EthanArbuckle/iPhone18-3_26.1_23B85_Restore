uint64_t sub_18398E888(uint64_t a1, uint64_t a2)
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
    sub_18398E9CC(a1, *(i + 4));
  }

  return a1;
}

void *sub_18398E9CC(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_18398ECC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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

void sub_18398EDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_18372D7E4(&a11);
  *(v11 + 8) = v12;
  sub_18372F5F0(&a9);
  _Unwind_Resume(a1);
}

void sub_18398F338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHMecabraWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18398F820()
{
  v0 = objc_opt_class();
  v6 = objc_msgSend_defaultURLOfModelInThisBundle(v0, v1, v2, v3, v4, v5);
  v18 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, @"model_hash.dat", v8, v9, v10);

  v11 = objc_opt_class();
  v16 = objc_msgSend_loadHashWithURL_(v11, v12, v18, v13, v14, v15);
  v17 = qword_1EA84D2D8;
  qword_1EA84D2D8 = v16;
}

void sub_18399002C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  *a1 = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = a3;
  objc_storeStrong(a1, a2);
  v7.n128_f32[0] = sub_1836A4100(v6, (a1 + 32), v81, 1, 20.0);
  *(a1 + 24) = v7.n128_u32[0];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3);
  if (v10 <= 6)
  {
    v11 = v6;
    objc_msgSend_bounds(v11, v12, v13, v14, v15, v16);
    operator new();
  }

  v77 = 0;
  v78 = 0;
  __p = 0;
  if (v8 != v9)
  {
    if (v10 <= 0x666666666666666)
    {
      operator new();
    }

    sub_18369761C();
  }

  sub_183696ECC(&__p, &v79, v7);
  v17 = *(a1 + 56);
  if (v17)
  {
    *(a1 + 64) = v17;
    operator delete(v17);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v18 = v79;
  *(a1 + 56) = v79;
  v19 = v80;
  *(a1 + 64) = v80;
  v80 = 0uLL;
  v79 = 0;
  if (__p)
  {
    v77 = __p;
    operator delete(__p);
    v18 = *(a1 + 56);
    v20 = *(a1 + 64);
  }

  else
  {
    v20 = v19.n128_u64[0];
  }

  v21 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v20 - v18) >> 3));
  v79 = sub_183824E30;
  if (v20 == v18)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v28 = sub_183697654(v18, v20, &v79, v22, 1, v19);
  v29 = *(a1 + 56);
  v30 = *(a1 + 64);
  v31 = v30 - v29;
  if (0xCCCCCCCCCCCCCCCDLL * (v30 - v29) < 6)
  {
    v32 = v6;
    objc_msgSend_bounds(v32, v33, v34, v35, v36, v37);
    operator new();
  }

  for (; v31 != 200; v31 = v73 + v74 - v29)
  {
    v46 = *(v30 - 5);
    v45 = *(v30 - 4);
    v47 = v29[5] - v46;
    v48 = v29[6] - v45;
    v49 = (v48 * v48) + (v47 * v47);
    if (v49 > 0.0)
    {
      v47 = v47 / v49;
      v48 = v48 / v49;
    }

    v50 = 0xCCCCCCCCCCCCCCCDLL * (v31 >> 3);
    v51 = sqrtf(v49);
    v52 = v29[1];
    v53 = ((*v29 - v46) * v48 - (v52 - v45) * v47) * v51;
    v54 = fabsf(v53);
    if (v50 - 1 < 2)
    {
      v55 = 0;
    }

    else
    {
      v55 = 0;
      v56 = v50 - 2;
      v57 = v29 + 6;
      v58 = 1;
      do
      {
        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = v57[4] - v62;
        v64 = v57[5] - v61;
        v65 = (v64 * v64) + (v63 * v63);
        if (v65 > 0.0)
        {
          v63 = v63 / v65;
          v64 = v64 / v65;
        }

        v59 = ((*(v57 - 1) - v62) * v64 - (*v57 - v61) * v63) * sqrtf(v65);
        v60 = fabsf(v59);
        if (v60 < v54)
        {
          v54 = v60;
          v55 = v58;
        }

        ++v58;
        v57 += 5;
        --v56;
      }

      while (v56);
    }

    v66 = (v29 + v31);
    v68 = *(v66 - 10);
    v67 = *(v66 - 9);
    v69 = *v29 - v68;
    v70 = v52 - v67;
    v71 = (v70 * v70) + (v69 * v69);
    if (v71 > 0.0)
    {
      v69 = v69 / v71;
      v70 = v70 / v71;
    }

    v28 = ((v46 - v68) * v70 - (v45 - v67) * v69) * sqrtf(v71);
    *&v28 = v28;
    *&v28 = fabsf(*&v28);
    v72 = v50 - 1;
    if (*&v28 >= v54)
    {
      v72 = v55;
    }

    v73 = &v29[5 * v72];
    v23 = v73 + 5;
    v74 = v30 - (v73 + 5);
    if (v30 != v73 + 5)
    {
      memmove(&v29[5 * v72], v23, v74 - 3);
      v29 = *(a1 + 56);
    }

    v30 = (v73 + v74);
    *(a1 + 64) = v73 + v74;
  }

  objc_msgSend_bounds(v6, v23, v24, v25, v26, v27, v28);
  x = v82.origin.x;
  y = v82.origin.y;
  width = v82.size.width;
  height = v82.size.height;
  CGRectGetMidX(v82);
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  v42.n128_f64[0] = CGRectGetMidY(v83);
  v44 = *(a1 + 56);
  v43 = *(a1 + 64);
  if (v43 != v44)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v43 - v44) >> 3) <= 0x666666666666666)
    {
      operator new();
    }

    sub_18369761C();
  }

  v79 = sub_183990748;
  v75.n128_f64[0] = sub_183697654(0, 0, &v79, 0, 1, v42);
  v79 = sub_18399075C;
  sub_183697654(0, 0, &v79, 0, 1, v75);
  operator new();
}

void sub_1839906A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  operator delete(v17);
  v19 = *(v15 + 56);
  if (v19)
  {
    *(v15 + 64) = v19;
    operator delete(v19);
    v20 = *v16;
    if (!*v16)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v20 = *v16;
    if (!*v16)
    {
      goto LABEL_3;
    }
  }

  *(v15 + 40) = v20;
  operator delete(v20);

  _Unwind_Resume(a1);
}

void sub_183991370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_183991460(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183991478(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 1;
  v9 = objc_msgSend_strokeIndexes(v3, v4, v5, v6, v7, v8);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = sub_1839917F0;
  v78[3] = &unk_1E6DDCB80;
  v79 = *(a1 + 32);
  v80 = &v81;
  objc_msgSend_enumerateIndexesUsingBlock_(v9, v10, v78, v11, v12, v13);

  if (*(v82 + 24) != 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v48 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v61 = objc_msgSend_strokeIndexes(v3, v56, v57, v58, v59, v60);
      v67 = objc_msgSend_description(v61, v62, v63, v64, v65, v66);
      v73 = objc_msgSend_count(*(a1 + 32), v68, v69, v70, v71, v72);
      *buf = 138412546;
      v86 = v67;
      v87 = 2048;
      v88 = v73;
      _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_ERROR, "Token stroke indexes don't match text result stroke identifiers, token stroke indexes:%@ text result stroke indexes:%lul", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v19 = MEMORY[0x1E695DFD8];
  v20 = *(a1 + 32);
  v21 = objc_msgSend_strokeIndexes(v3, v14, v15, v16, v17, v18);
  v26 = objc_msgSend_objectsAtIndexes_(v20, v22, v21, v23, v24, v25);
  v31 = objc_msgSend_setWithArray_(v19, v27, v26, v28, v29, v30);

  LOBYTE(v21) = objc_msgSend_isSubsetOfSet_(v31, v32, *(a1 + 40), v33, v34, v35);
  if (v21)
  {
    v41 = objc_msgSend_properties(v3, v36, v37, v38, v39, v40);
    v47 = *(*(*(a1 + 48) + 8) + 40);
    if ((v41 & 0x20) != 0)
    {
      v48 = objc_msgSend_string(v3, v42, v43, v44, v45, v46);
      objc_msgSend_stringByAppendingFormat_(v47, v74, @" %@", v75, v76, v77, v48);
    }

    else
    {
      v48 = objc_msgSend_string(v3, v42, v43, v44, v45, v46);
      objc_msgSend_stringByAppendingFormat_(v47, v49, @"%@", v50, v51, v52, v48);
    }
    v53 = ;
    v54 = *(*(a1 + 48) + 8);
    v55 = *(v54 + 40);
    *(v54 + 40) = v53;

LABEL_11:
  }

  _Block_object_dispose(&v81, 8);
}

void sub_183991744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1839917F0(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5, a6);
  if (result <= a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_183991CEC()
{
  v0 = objc_opt_class();
  v6 = objc_msgSend_defaultURLOfModelInThisBundle(v0, v1, v2, v3, v4, v5);
  v18 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, @"model_hash.dat", v8, v9, v10);

  v11 = objc_opt_class();
  v16 = objc_msgSend_loadHashWithURL_(v11, v12, v18, v13, v14, v15);
  v17 = qword_1EA84D2E8;
  qword_1EA84D2E8 = v16;
}

void sub_183992440(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_183992A0C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v276 = *MEMORY[0x1E69E9840];
  v267 = a2;
  v268 = a3;
  v263 = a4;
  v264 = a5;
  objc_opt_self();
  v13 = objc_msgSend_count(v267, v8, v9, v10, v11, v12);
  if (v13 != objc_msgSend_count(v268, v14, v15, v16, v17, v18))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v24 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = objc_msgSend_count(v267, v25, v26, v27, v28, v29);
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_count(v268, v30, v31, v32, v33, v34);
      _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "Number of corrected and raw tokens must match: %lu != %lu.", buf, 0x16u);
    }
  }

  v35 = objc_msgSend_count(v267, v19, v20, v21, v22, v23);
  if (v35 != objc_msgSend_count(v268, v36, v37, v38, v39, v40))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v46 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      v52 = objc_msgSend_count(v267, v47, v48, v49, v50, v51);
      v58 = objc_msgSend_count(v268, v53, v54, v55, v56, v57);
      *buf = 134218240;
      *&buf[4] = v52;
      *&buf[12] = 2048;
      *&buf[14] = v58;
      _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_FAULT, "Number of corrected and raw tokens must match: %lu != %lu.", buf, 0x16u);
    }
  }

  v59 = 0;
  v265 = 1;
  v60 = 1;
  v61 = 1;
  while (v59 < objc_msgSend_count(v268, v41, v42, v43, v44, v45))
  {
    v67 = objc_msgSend_objectAtIndexedSubscript_(v268, v62, v59, v64, v65, v66);
    v72 = objc_msgSend_objectAtIndexedSubscript_(v267, v68, v59, v69, v70, v71);
    isTopOriginal = objc_msgSend_isTopOriginal(v67, v73, v74, v75, v76, v77);
    if (objc_msgSend_isOriginal(v67, v79, v80, v81, v82, v83))
    {
      objc_msgSend_modelScore(v67, v84, v85, v86, v87, v88);
      v90 = v89 >= 0.8;
    }

    else
    {
      v90 = 0;
    }

    v91 = objc_msgSend_string(v67, v84, v85, v86, v87, v88);
    v97 = objc_msgSend_string(v72, v92, v93, v94, v95, v96);
    isEqual = objc_msgSend_isEqual_(v91, v98, v97, v99, v100, v101);

    v61 &= isTopOriginal;
    v60 &= v90;
    v265 &= isEqual;
    ++v59;
  }

  if ((v61 | v60))
  {
    if (v265)
    {
      for (i = 0; i < objc_msgSend_count(v268, v62, v63, v64, v65, v66); ++i)
      {
        v107 = objc_msgSend_objectAtIndexedSubscript_(v268, v103, i, v104, v105, v106);
        v112 = objc_msgSend_objectAtIndexedSubscript_(v267, v108, i, v109, v110, v111);
        v262 = objc_msgSend_string(v112, v113, v114, v115, v116, v117);
        v123 = objc_msgSend_strokeIndexes(v112, v118, v119, v120, v121, v122);
        v129 = objc_msgSend_wordID(v112, v124, v125, v126, v127, v128);
        objc_msgSend_modelScore(v112, v130, v131, v132, v133, v134);
        v261 = v135;
        objc_msgSend_recognitionScore(v112, v136, v137, v138, v139, v140);
        v260 = v141;
        objc_msgSend_combinedScore(v112, v142, v143, v144, v145, v146);
        v259 = v147;
        objc_msgSend_alignmentScore(v112, v148, v149, v150, v151, v152);
        v258 = v153;
        v159 = objc_msgSend_properties(v112, v154, v155, v156, v157, v158);
        v165 = objc_msgSend_recognizerSourceLocale(v112, v160, v161, v162, v163, v164);
        v171 = objc_msgSend_inputSources(v107, v166, v167, v168, v169, v170);
        v177 = objc_msgSend_substrokeCount(v112, v172, v173, v174, v175, v176);
        objc_msgSend_bounds(v112, v178, v179, v180, v181, v182);
        v184 = v183;
        v186 = v185;
        v188 = v187;
        v190 = v189;
        objc_msgSend_originalBounds(v112, v191, v192, v193, v194, v195);
        v202 = v201;
        v204 = v203;
        v206 = v205;
        v208 = v207;
        if (v112)
        {
          objc_msgSend_principalLines(v112, v196, v197, v198, v199, v200);
        }

        else
        {
          v274 = 0u;
          v275 = 0u;
          v272 = 0u;
          v273 = 0u;
          v270 = 0u;
          v271 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        v209 = objc_msgSend_principalPoints(v112, v196, v197, v198, v199, v200);
        v211 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v210, v262, v123, v129, v159, v165, v171, v261, v260, v259, v258, v184, v186, v188, v190, v177, v202, v204, v206, v208, buf, v209);

        objc_msgSend_addObject_(v263, v212, v211, v213, v214, v215);
        objc_msgSend_addObject_(v264, v216, v211, v217, v218, v219);
      }
    }

    else
    {
      for (j = 0; j < objc_msgSend_count(v268, v62, v63, v64, v65, v66); ++j)
      {
        v244 = objc_msgSend_objectAtIndexedSubscript_(v268, v240, j, v241, v242, v243);
        v249 = objc_msgSend_objectAtIndexedSubscript_(v267, v245, j, v246, v247, v248);
        objc_msgSend_addObject_(v263, v250, v249, v251, v252, v253);
        objc_msgSend_addObject_(v264, v254, v244, v255, v256, v257);
      }
    }
  }

  else
  {
    for (k = 0; k < objc_msgSend_count(v268, v62, v63, v64, v65, v66); ++k)
    {
      v225 = objc_msgSend_objectAtIndexedSubscript_(v268, v221, k, v222, v223, v224);
      v230 = objc_msgSend_objectAtIndexedSubscript_(v267, v226, k, v227, v228, v229);
      objc_msgSend_addObject_(v263, v231, v230, v232, v233, v234);
      objc_msgSend_addObject_(v264, v235, v230, v236, v237, v238);
    }
  }
}

id sub_1839933BC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v12 = a4;
  if (a1)
  {
    if (v8)
    {
      v13 = objc_msgSend_process_options_(v8, v9, v7, v12, v10, v11);

      v7 = v13;
    }

    v7 = v7;
    a1 = v7;
  }

  return a1;
}

void sub_18399409C(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(a1 + 40))
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v7, v4, v5, v6);
  }

  else
  {
    v8 = [CHTokenizedTextResultToken alloc];
    v14 = objc_msgSend_string(v7, v9, v10, v11, v12, v13);
    v20 = objc_msgSend_strokeIndexes(v7, v15, v16, v17, v18, v19);
    v116 = objc_msgSend_wordID(v7, v21, v22, v23, v24, v25);
    objc_msgSend_modelScore(v7, v26, v27, v28, v29, v30);
    v115 = v31;
    objc_msgSend_recognitionScore(v7, v32, v33, v34, v35, v36);
    v114 = v37;
    objc_msgSend_combinedScore(v7, v38, v39, v40, v41, v42);
    v113 = v43;
    objc_msgSend_alignmentScore(v7, v44, v45, v46, v47, v48);
    v112 = v49;
    v55 = objc_msgSend_properties(v7, v50, v51, v52, v53, v54);
    v61 = objc_msgSend_recognizerSourceLocale(v7, v56, v57, v58, v59, v60);
    v67 = objc_msgSend_inputSources(v7, v62, v63, v64, v65, v66);
    v73 = objc_msgSend_substrokeCount(v7, v68, v69, v70, v71, v72);
    objc_msgSend_bounds(v7, v74, v75, v76, v77, v78);
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    objc_msgSend_originalBounds(v7, v87, v88, v89, v90, v91);
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    if (v7)
    {
      objc_msgSend_principalLines(v7, v92, v93, v94, v95, v96);
    }

    else
    {
      memset(v117, 0, 128);
    }

    v105 = objc_msgSend_principalPoints(v7, v92, v93, v94, v95, v96);
    v107 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v8, v106, v14, v20, v116, v55, v61, v67 | 4, v115, v114, v113, v112, v80, v82, v84, v86, v73, v98, v100, v102, v104, v117, v105);

    objc_msgSend_addObject_(*(a1 + 32), v108, v107, v109, v110, v111);
  }
}

void sub_18399431C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = [CHTokenizedTextResultToken alloc];
  v12 = objc_msgSend_string(v5, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeIndexes(v5, v13, v14, v15, v16, v17);
  v151 = objc_msgSend_wordID(v5, v19, v20, v21, v22, v23);
  objc_msgSend_modelScore(v5, v24, v25, v26, v27, v28);
  v150 = v29;
  objc_msgSend_recognitionScore(v5, v30, v31, v32, v33, v34);
  v149 = v35;
  objc_msgSend_combinedScore(v5, v36, v37, v38, v39, v40);
  v148 = v41;
  objc_msgSend_alignmentScore(v5, v42, v43, v44, v45, v46);
  v147 = v47;
  v53 = objc_msgSend_properties(v5, v48, v49, v50, v51, v52);
  v59 = objc_msgSend_recognizerSourceLocale(v5, v54, v55, v56, v57, v58);
  v65 = objc_msgSend_inputSources(v5, v60, v61, v62, v63, v64);
  v71 = objc_msgSend_substrokeCount(v5, v66, v67, v68, v69, v70);
  objc_msgSend_bounds(v5, v72, v73, v74, v75, v76);
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  objc_msgSend_originalBounds(v5, v85, v86, v87, v88, v89);
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  if (v5)
  {
    objc_msgSend_principalLines(v5, v90, v91, v92, v93, v94);
  }

  else
  {
    memset(v153, 0, 128);
  }

  v103 = objc_msgSend_principalPoints(v5, v90, v91, v92, v93, v94);
  v105 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v6, v104, v12, v18, v151, v53, v59, v65 | 4, v150, v149, v148, v147, v78, v80, v82, v84, v71, v96, v98, v100, v102, v153, v103);

  v110 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v106, *a4, v107, v108, v109);
  v116 = objc_msgSend_textTokenRows(v110, v111, v112, v113, v114, v115);
  v121 = objc_msgSend_objectAtIndexedSubscript_(v116, v117, a4[1], v118, v119, v120);

  v132 = objc_msgSend_array(MEMORY[0x1E695DF70], v122, v123, v124, v125, v126);
  for (i = 0; i < objc_msgSend_count(v121, v127, v128, v129, v130, v131); ++i)
  {
    if (i == a4[2])
    {
      objc_msgSend_addObject_(v132, v134, v105, v135, v136, v137);
    }

    else
    {
      v138 = objc_msgSend_objectAtIndex_(v121, v134, i, v135, v136, v137);
      objc_msgSend_addObject_(v132, v139, v138, v140, v141, v142);
    }
  }

  v143 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v134, *a4, v135, v136, v137);
  objc_msgSend_setTokenRowWithTokens_atIndex_(v143, v144, v132, a4[1], v145, v146);
}

void sub_183994E10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0123456789°", a4, a5, a6);
  v7 = qword_1EA84DBF0;
  qword_1EA84DBF0 = v6;
}

id sub_183995134(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5, void *a6, void *a7, void *a8, char a9)
{
  v450 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a7;
  v427 = a8;
  v20 = *(a1 + 12);
  v442 = 0;
  v440 = 0;
  v441 = 0x7FFFFFFFFFFFFFFFLL;
  v438 = 0;
  v439 = 0x7FFFFFFFFFFFFFFFLL;
  v437 = 0;
  v21 = *(a1 + 24);
  v431 = v15;
  v424 = v16;
  v425 = v20;
  if (v21)
  {
    BYTE2(v408) = v20 == 0;
    BYTE1(v408) = a4;
    LOBYTE(v408) = a3;
    v22 = objc_msgSend_lexiconCorrectionsForToken_locale_lexicon_lmVocabulary_ovsStringChecker_textReplacements_consumableStrokesSet_minimumTokenScore_activeHistoryRange_outBestTokenScore_shouldCapitalizeWord_shouldSkipEntryCorrection_allowFullCapsCorrections_minimalLengthForLowConfidenceCorrections_lowConfidenceThreshold_minimalLengthForCustomCapitalizationCorrections_outBestTokenIndex_outFoundTokenInLexicon_outFoundCaseMatchingTokenInLexicon_outCorrectionFromOutOfContextEntry_(CHLanguageUtilities, v17, v15, *(a1 + 16), v21, *(a1 + 48), *(a1 + 56), v16, 0.0, -4.0, *(a1 + 80), 0x7FFFFFFFFFFFFFFFLL, 0, &v438, v408, 4, 3, &v439, &v442 + 1, &v442, &v437);
    v436 = 0;
    v435 = 0;
    if (v22)
    {
      v428 = v22;
      if (objc_msgSend_count(v22, v17, v23, v18, v24, v19) && v442 == 1)
      {
        v25 = v437 ^ 1;
        v430 = 0;
        v26 = *(a1 + 104);
        if (!v26)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v428 = 0;
    }

    v25 = 0;
    v430 = 0;
    v26 = *(a1 + 104);
    if (!v26)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v428 = 0;
  v25 = 0;
  v436 = 0;
  v435 = 0;
  v430 = 0;
  v26 = *(a1 + 104);
  if (!v26)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((v25 & 1) == 0)
  {
    BYTE2(v408) = v425 == 0;
    BYTE1(v408) = a4;
    LOBYTE(v408) = a3;
    v430 = objc_msgSend_lexiconCorrectionsForToken_locale_lexicon_lmVocabulary_ovsStringChecker_textReplacements_consumableStrokesSet_minimumTokenScore_activeHistoryRange_outBestTokenScore_shouldCapitalizeWord_shouldSkipEntryCorrection_allowFullCapsCorrections_minimalLengthForLowConfidenceCorrections_lowConfidenceThreshold_minimalLengthForCustomCapitalizationCorrections_outBestTokenIndex_outFoundTokenInLexicon_outFoundCaseMatchingTokenInLexicon_outCorrectionFromOutOfContextEntry_(CHLanguageUtilities, v17, v15, *(a1 + 16), v26, *(a1 + 48), *(a1 + 56), 0, 0.0, -4.0, *(a1 + 80), 0x7FFFFFFFFFFFFFFFLL, 0, &v440, v408, 4, 3, &v441, &v436, &v435, 0);
  }

LABEL_13:
  v27 = *(a1 + 40);
  if (v27 && (objc_msgSend_findPartialMatchInPhraseLexicon_token_contextBeforeToken_(CHLanguageUtilities, v17, v27, v15, v427, v19) & 1) != 0)
  {
    PartialMatchInPhraseLexicon_token_contextBeforeToken = 1;
    v433 = 0x7FFFFFFFFFFFFFFFLL;
    v434 = 0;
    v432 = 0;
    v423 = a6;
    if (!a9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v28 = *(a1 + 32);
    if (v28)
    {
      PartialMatchInPhraseLexicon_token_contextBeforeToken = objc_msgSend_findPartialMatchInPhraseLexicon_token_contextBeforeToken_(CHLanguageUtilities, v17, v28, v15, v427, v19);
      v433 = 0x7FFFFFFFFFFFFFFFLL;
      v434 = 0;
      v432 = 0;
      v423 = a6;
      if (!a9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      PartialMatchInPhraseLexicon_token_contextBeforeToken = 0;
      v433 = 0x7FFFFFFFFFFFFFFFLL;
      v434 = 0;
      v432 = 0;
      v423 = a6;
      if (!a9)
      {
LABEL_24:
        v426 = 0;
        goto LABEL_25;
      }
    }
  }

  if (*(a1 + 9) != 1)
  {
    goto LABEL_24;
  }

  v421 = a4;
  v30 = objc_msgSend_string(v15, v17, v28, v18, v26, v19);
  v36 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AD48], v31, v32, v33, v34, v35);
  v420 = a3;
  v41 = objc_msgSend_stringByTrimmingCharactersInSet_(v30, v37, v36, v38, v39, v40);
  v47 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AB08], v42, v43, v44, v45, v46);
  v48 = sub_1837A4F0C(v41, v47);

  if (!v48 || ((HIBYTE(v442) | v436 | PartialMatchInPhraseLexicon_token_contextBeforeToken) & 1) != 0)
  {
    goto LABEL_24;
  }

  v225 = v15;
  v418 = v427;
  v231 = objc_msgSend_string(v225, v226, v227, v228, v229, v230);
  v237 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v232, v233, v234, v235, v236);
  v419 = objc_msgSend_stringByTrimmingCharactersInSet_(v231, v238, v237, v239, v240, v241);

  if (objc_msgSend_length(v419, v242, v243, v244, v245, v246) >= 3)
  {
    v251 = objc_msgSend_spellCheckingLocaleForRecognitionLocale_string_(CHRecognizerConfiguration, v247, *(a1 + 16), v231, v248, v249);
    v257 = objc_msgSend_properties(v225, v252, v253, v254, v255, v256);
    v258 = @" ";
    if ((v257 & 0x20) == 0)
    {
      v258 = &stru_1EF1C0318;
    }

    v259 = v258;
    v260 = *(a1 + 64);
    v266 = objc_msgSend_languageCode(v251, v261, v262, v263, v264, v265);
    v417 = objc_msgSend_topCorrectionForString_contextBeforeToken_contextSeparator_shouldUseErrorModel_forLanguage_(v260, v267, v231, v418, v259, 1, v266);

    v273 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v268, v269, v270, v271, v272);
    v278 = objc_msgSend_rangeOfCharacterFromSet_(v417, v274, v273, v275, v276, v277);

    v250 = 0;
    if (v278 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v283 = v417;
      if (!v417)
      {
LABEL_86:

        goto LABEL_87;
      }

      if ((objc_msgSend_isEqualToString_(v417, v279, v231, v280, v281, v282) & 1) != 0 || (v284 = sub_1837A62B0(v231, v417), v290 = objc_msgSend_length(v231, v285, v286, v287, v288, v289), v284 >= 3) && v284 > v290 / 3)
      {
        v250 = 0;
        goto LABEL_86;
      }

      v416 = objc_msgSend_strokeIndexes(v225, v291, v292, v293, v294, v295);
      v414 = objc_msgSend_wordID(v225, v296, v297, v298, v299, v300);
      objc_msgSend_modelScore(v225, v301, v302, v303, v304, v305);
      v413 = v306;
      objc_msgSend_recognitionScore(v225, v307, v308, v309, v310, v311);
      v412 = v312;
      objc_msgSend_combinedScore(v225, v313, v314, v315, v316, v317);
      v411 = v318;
      objc_msgSend_alignmentScore(v225, v319, v320, v321, v322, v323);
      v410 = v324;
      v409 = objc_msgSend_properties(v225, v325, v326, v327, v328, v329);
      v415 = objc_msgSend_recognizerSourceLocale(v225, v330, v331, v332, v333, v334);
      v340 = objc_msgSend_inputSources(v225, v335, v336, v337, v338, v339);
      v346 = objc_msgSend_substrokeCount(v225, v341, v342, v343, v344, v345);
      objc_msgSend_bounds(v225, v347, v348, v349, v350, v351);
      v353 = v352;
      v355 = v354;
      v357 = v356;
      v359 = v358;
      objc_msgSend_originalBounds(v225, v360, v361, v362, v363, v364);
      v371 = v370;
      v373 = v372;
      v375 = v374;
      v377 = v376;
      if (v225)
      {
        objc_msgSend_principalLines(v225, v365, v366, v367, v368, v369);
      }

      else
      {
        v448 = 0u;
        v449 = 0u;
        v446 = 0u;
        v447 = 0u;
        v444 = 0u;
        v445 = 0u;
        memset(buf, 0, sizeof(buf));
      }

      v378 = objc_msgSend_principalPoints(v225, v365, v366, v367, v368, v369);
      v250 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v379, v417, v416, v414, v409, v415, v340 | 0x20, v413, v412, v411, v410, v353, v355, v357, v359, v346, v371, v373, v375, v377, buf, v378);
    }

    v283 = v417;
    goto LABEL_86;
  }

  v250 = 0;
LABEL_87:

  if (v250)
  {
    BYTE2(v408) = v425 == 0;
    BYTE1(v408) = v421;
    LOBYTE(v408) = v420;
    v381 = objc_msgSend_lexiconCorrectionsForToken_locale_lexicon_lmVocabulary_ovsStringChecker_textReplacements_consumableStrokesSet_minimumTokenScore_activeHistoryRange_outBestTokenScore_shouldCapitalizeWord_shouldSkipEntryCorrection_allowFullCapsCorrections_minimalLengthForLowConfidenceCorrections_lowConfidenceThreshold_minimalLengthForCustomCapitalizationCorrections_outBestTokenIndex_outFoundTokenInLexicon_outFoundCaseMatchingTokenInLexicon_outCorrectionFromOutOfContextEntry_(CHLanguageUtilities, v380, v250, *(a1 + 16), *(a1 + 104), *(a1 + 48), *(a1 + 56), v424, 0.0, -4.0, *(a1 + 80), 0x7FFFFFFFFFFFFFFFLL, 0, &v434, v408, 4, 3, &v433, &v432 + 1, &v432, 0);
    if (objc_msgSend_count(v381, v382, v383, v384, v385, v386) && HIBYTE(v432) == 1)
    {
      if (objc_msgSend_count(v430, v387, v388, v389, v390, v391))
      {
        v396 = objc_msgSend_objectAtIndexedSubscript_(v430, v392, v441, v393, v394, v395);
      }

      else
      {
        v396 = v225;
      }

      v401 = v396;
      v402 = MEMORY[0x1E695DEC8];
      v403 = objc_msgSend_objectAtIndexedSubscript_(v381, v397, v433, v398, v399, v400);
      v426 = objc_msgSend_arrayWithObjects_(v402, v404, v403, v405, v406, v407, v401, 0);

      v433 = 0;
    }

    else
    {
      v426 = 0;
    }
  }

  else
  {
    v426 = 0;
  }

LABEL_25:
  v49 = HIBYTE(v442);
  v422 = v436;
  if (objc_msgSend_count(v428, v17, v28, v18, v26, v19))
  {
    v55 = objc_msgSend_objectAtIndexedSubscript_(v428, v50, v439, v52, v53, v54);
    v61 = objc_msgSend_string(v55, v56, v57, v58, v59, v60);

    objc_msgSend_length(v61, v62, v63, v64, v65, v66);
    v72 = objc_msgSend_string(v431, v67, v68, v69, v70, v71);
    objc_msgSend_length(v72, v73, v74, v75, v76, v77);
    v83 = objc_msgSend_length(v61, v78, v79, v80, v81, v82);
    v89 = objc_msgSend_string(v431, v84, v85, v86, v87, v88);
    v95 = objc_msgSend_length(v89, v90, v91, v92, v93, v94);

    v101 = objc_msgSend_string(v431, v96, v97, v98, v99, v100);
    isEqualToString = objc_msgSend_isEqualToString_(v61, v102, v101, v103, v104, v105);

    v112 = objc_msgSend_string(v431, v107, v108, v109, v110, v111);
    v117 = objc_msgSend_caseInsensitiveCompare_(v61, v113, v112, v114, v115, v116) == 0;

    v118 = v83 - v95;
  }

  else
  {
    isEqualToString = 0;
    v117 = 0;
    v118 = 0;
  }

  if (objc_msgSend_count(v430, v50, v51, v52, v53, v54))
  {
    v123 = objc_msgSend_objectAtIndexedSubscript_(v430, v119, v441, v120, v121, v122);
    v129 = objc_msgSend_string(v123, v124, v125, v126, v127, v128);

    objc_msgSend_length(v129, v130, v131, v132, v133, v134);
    v140 = objc_msgSend_string(v431, v135, v136, v137, v138, v139);
    objc_msgSend_length(v140, v141, v142, v143, v144, v145);
    v151 = objc_msgSend_length(v129, v146, v147, v148, v149, v150);
    v157 = objc_msgSend_string(v431, v152, v153, v154, v155, v156);
    v163 = objc_msgSend_length(v157, v158, v159, v160, v161, v162);

    v169 = objc_msgSend_string(v431, v164, v165, v166, v167, v168);
    v174 = objc_msgSend_isEqualToString_(v129, v170, v169, v171, v172, v173);

    v180 = objc_msgSend_string(v431, v175, v176, v177, v178, v179);
    v185 = objc_msgSend_caseInsensitiveCompare_(v129, v181, v180, v182, v183, v184) != 0;

    v186 = v151 - v163;
    v187 = v174 ^ 1 | isEqualToString;
  }

  else
  {
    v186 = 0;
    v187 = 1;
    v185 = 1;
  }

  v188 = 0;
  if (v49 & v422 & (v435 ^ 1)) == 1 && v118 <= v186 && (v187)
  {
    v188 = v117 || v185;
  }

  if (v426)
  {
    v194 = v426;
    if (a5)
    {
      *a5 = v433;
    }

    if (v423)
    {
      *v423 = v434;
    }

    if (!a5)
    {
      goto LABEL_68;
    }

LABEL_54:
    if (objc_msgSend_count(v194, v189, v190, v191, v192, v193))
    {
      v201 = *a5;
      if (v201 >= objc_msgSend_count(v194, v196, v197, v198, v199, v200))
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v202 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
        {
          v208 = *a5;
          v209 = objc_msgSend_count(v194, v203, v204, v205, v206, v207);
          *buf = 134218496;
          *&buf[4] = v208;
          *&buf[12] = 1024;
          *&buf[14] = 0;
          *&buf[18] = 2048;
          *&buf[20] = v209;
          _os_log_impl(&dword_18366B000, v202, OS_LOG_TYPE_ERROR, "The best token index %ld is not contained in the returned tokens range %d, %ld", buf, 0x1Cu);
        }
      }
    }

    if (objc_msgSend_count(v194, v196, v197, v198, v199, v200))
    {
      v215 = *a5;
      if (v215 >= objc_msgSend_count(v194, v210, v211, v212, v213, v214))
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v216 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v216, OS_LOG_TYPE_FAULT))
        {
          v222 = *a5;
          v223 = objc_msgSend_count(v194, v217, v218, v219, v220, v221);
          *buf = 134218496;
          *&buf[4] = v222;
          *&buf[12] = 1024;
          *&buf[14] = 0;
          *&buf[18] = 2048;
          *&buf[20] = v223;
          _os_log_impl(&dword_18366B000, v216, OS_LOG_TYPE_FAULT, "The best token index %ld is not contained in the returned tokens range %d, %ld", buf, 0x1Cu);
        }
      }
    }

    goto LABEL_68;
  }

  if (v437 == 1 && (v436 & 1) != 0 || ((v442 | v188 | v49 & ~v422) & 1) == 0)
  {
    v194 = v430;
    if (v423)
    {
      *v423 = v440;
    }

    if (a5)
    {
      v195 = &v441;
      goto LABEL_53;
    }
  }

  else
  {
    v194 = v428;
    if (v423)
    {
      *v423 = v438;
    }

    if (a5)
    {
      v195 = &v439;
LABEL_53:
      *a5 = *v195;
      goto LABEL_54;
    }
  }

LABEL_68:

  return v194;
}

id sub_183996048(uint64_t a1, void *a2, int a3, void *a4, int a5, void *a6, int a7, char a8)
{
  v13 = a2;
  v14 = a4;
  v524 = a6;
  v15 = v13;
  v21 = v15;
  v515 = a7;
  if (a7)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    v22 = (objc_msgSend_properties(v15, v16, v17, v18, v19, v20) >> 6) & 1;
  }

  v520 = v22;
  v538 = 0;
  v539 = &v538;
  v540 = 0x3032000000;
  v541 = sub_183996F80;
  v542 = sub_183996F90;
  v543 = 0;
  v23 = objc_msgSend_length(v14, v16, v17, v18, v19, v20);
  v537[0] = MEMORY[0x1E69E9820];
  v537[1] = 3221225472;
  v537[2] = sub_183996F98;
  v537[3] = &unk_1E6DDDCB0;
  v537[4] = &v538;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v14, v24, 0, v23, 259, v537);
  if (v14)
  {
    v525 = objc_msgSend_lastComposedCharacter(v14, v25, v26, v27, v28, v29);
  }

  else
  {
    v525 = &stru_1EF1C0318;
  }

  v30 = objc_msgSend_string(v21, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_firstComposedCharacter(v30, v31, v32, v33, v34, v35);

  v519 = v36;
  v42 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v37, v38, v39, v40, v41);
  if (sub_1837A4F0C(v36, v42))
  {
    v43 = sub_1837A93E8(v36);

    if (!a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v43 = 0;

    if (!a3)
    {
      goto LABEL_17;
    }
  }

  if (!objc_msgSend_length(v539[5], v44, v45, v46, v47, v48) || (objc_msgSend_properties(v21, v44, v45, v46, v47, v48) & 0x20) != 0)
  {
LABEL_17:
    HasMatchingString = 0;
    v52 = a1;
    if (*(a1 + 12))
    {
      goto LABEL_18;
    }

LABEL_49:
    if (qword_1EA84DC08 != -1)
    {
      dispatch_once(&qword_1EA84DC08, &unk_1EF1BFA98);
    }

    v340 = objc_msgSend_lastComposedCharacter(v14, v44, v45, v46, v47, v48);
    v346 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v341, v342, v343, v344, v345);
    if (sub_1837A4F0C(v340, v346))
    {
    }

    else
    {
      v357 = objc_msgSend_length(v14, v347, v348, v349, v350, v351);

      if (v357)
      {
        v358 = (objc_msgSend_properties(v21, v352, v353, v354, v355, v356) >> 5) & 1;
        goto LABEL_56;
      }
    }

    LODWORD(v358) = 1;
LABEL_56:
    v359 = objc_msgSend_string(v21, v352, v353, v354, v355, v356);
    v364 = objc_msgSend_stringByTrimmingCharactersInSet_(v359, v360, qword_1EA84DC00, v361, v362, v363);

    v370 = objc_msgSend_firstComposedCharacter(v364, v365, v366, v367, v368, v369);
    v376 = v370;
    if (v358)
    {
      v377 = objc_msgSend_uppercaseString(v370, v371, v372, v373, v374, v375);
      isEqualToString = objc_msgSend_isEqualToString_(v376, v378, v377, v379, v380, v381);

      v535 = 0;
      v536 = 0;
      if ((v520 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      isEqualToString = 0;

      v535 = 0;
      v536 = 0;
      if ((v520 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_29;
  }

  v49 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v44, v45, v46, v47, v48);
  if (sub_1837A4F0C(v525, v49))
  {
    v50 = sub_1837A93E8(v525);

    if (v43 && v50)
    {
      HasMatchingString = 1;
      v52 = a1;
      if (*(a1 + 12))
      {
        goto LABEL_18;
      }

      goto LABEL_49;
    }
  }

  else
  {
  }

  v328 = MEMORY[0x1E696AEC0];
  v329 = v539[5];
  v330 = objc_msgSend_string(v21, v44, v45, v46, v47, v48);
  v335 = objc_msgSend_stringWithFormat_(v328, v331, @"%@%@", v332, v333, v334, v329, v330);

  if (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v336, v335, *(a1 + 24), 0, v337))
  {
    HasMatchingString = 1;

    v52 = a1;
    if (!*(a1 + 12))
    {
      goto LABEL_49;
    }
  }

  else
  {
    HasMatchingString = objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v338, v335, *(a1 + 104), 0, v339);

    v52 = a1;
    if (!*(a1 + 12))
    {
      goto LABEL_49;
    }
  }

LABEL_18:
  v512 = HasMatchingString;
  v53 = sub_1837A4F0C(v525, *(v52 + 88));
  v54 = a5;
  if (a5)
  {
    v55 = sub_1837A4F0C(v525, *(a1 + 96));
  }

  else
  {
    v55 = 0;
  }

  v56 = sub_1837A93E8(v525);
  v62 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v57, v58, v59, v60, v61);
  v63 = sub_1837A4F0C(v525, v62);

  if (v63)
  {
    LODWORD(v69) = 1;
  }

  else
  {
    v69 = (objc_msgSend_properties(v21, v64, v65, v66, v67, v68) >> 5) & 1;
  }

  v70 = (*(a1 + 12) == 2) & (v69 | ((!v56 || v53) && v43));
  if (a3)
  {
    if (v14 && objc_msgSend_length(v14, v64, v65, v66, v67, v68))
    {
      v71 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v64, v65, v66, v67, v68);
      v72 = sub_1837A4F0C(v525, v71);
    }

    else
    {
      v72 = 1;
    }

    isEqualToString = v72 | v54 & v69 | v53 | v55 | v70;
    HasMatchingString = v512;
    v535 = 0;
    v536 = 0;
    if ((v520 & 1) == 0)
    {
LABEL_34:
      v73 = *(a1 + 9) ^ 1;
      if ((HasMatchingString & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_30:
      v74 = objc_msgSend_length(v14, v64, v65, v66, v67, v68);
      v80 = objc_msgSend_length(v539[5], v75, v76, v77, v78, v79);
      v513 = objc_msgSend_substringToIndex_(v14, v81, v74 - v80, v82, v83, v84);

      v85 = MEMORY[0x1E696AEC0];
      v86 = v539[5];
      v510 = objc_msgSend_string(v21, v87, v88, v89, v90, v91);
      v96 = objc_msgSend_stringWithFormat_(v85, v92, @"%@%@", v93, v94, v95, v86, v510);
      v102 = objc_msgSend_strokeIndexes(v21, v97, v98, v99, v100, v101);
      v508 = objc_msgSend_wordID(v21, v103, v104, v105, v106, v107);
      objc_msgSend_modelScore(v21, v108, v109, v110, v111, v112);
      v506 = v113;
      objc_msgSend_recognitionScore(v21, v114, v115, v116, v117, v118);
      v504 = v119;
      objc_msgSend_combinedScore(v21, v120, v121, v122, v123, v124);
      v502 = v125;
      objc_msgSend_alignmentScore(v21, v126, v127, v128, v129, v130);
      v500 = v131;
      v137 = objc_msgSend_properties(v21, v132, v133, v134, v135, v136);
      v143 = objc_msgSend_recognizerSourceLocale(v21, v138, v139, v140, v141, v142);
      v149 = objc_msgSend_inputSources(v21, v144, v145, v146, v147, v148);
      v155 = objc_msgSend_substrokeCount(v21, v150, v151, v152, v153, v154);
      objc_msgSend_bounds(v21, v156, v157, v158, v159, v160);
      v162 = v161;
      v164 = v163;
      v166 = v165;
      v168 = v167;
      objc_msgSend_originalBounds(v21, v169, v170, v171, v172, v173);
      v180 = v179;
      v182 = v181;
      v184 = v183;
      v186 = v185;
      if (v21)
      {
        objc_msgSend_principalLines(v21, v174, v175, v176, v177, v178);
      }

      else
      {
        v533 = 0u;
        v534 = 0u;
        v531 = 0u;
        v532 = 0u;
        v529 = 0u;
        v530 = 0u;
        v527 = 0u;
        v528 = 0u;
      }

      v199 = objc_msgSend_principalPoints(v21, v174, v175, v176, v177, v178);
      v187 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v200, v96, v102, v508, v137, v143, v149, v506, v504, v502, v500, v162, v164, v166, v168, v155, v180, v182, v184, v186, &v527, v199);

      v14 = v513;
      v198 = sub_183995134(a1, v187, isEqualToString & 1, v73 & 1, &v535, &v536, v524, v513, a8);
      if (objc_msgSend_count(v198, v201, v202, v203, v204, v205))
      {
        v210 = objc_msgSend_objectAtIndex_(v198, v206, v535, v207, v208, v209);
        v216 = objc_msgSend_string(v210, v211, v212, v213, v214, v215);
        hasPrefix = objc_msgSend_hasPrefix_(v216, v217, v539[5], v218, v219, v220);

        v197 = v21;
        if (hasPrefix)
        {
          v227 = objc_msgSend_string(v210, v222, v223, v224, v225, v226);
          v233 = objc_msgSend_length(v539[5], v228, v229, v230, v231, v232);
          v238 = objc_msgSend_substringFromIndex_(v227, v234, v233, v235, v236, v237);

          v511 = objc_msgSend_strokeIndexes(v210, v239, v240, v241, v242, v243);
          v509 = objc_msgSend_wordID(v210, v244, v245, v246, v247, v248);
          objc_msgSend_modelScore(v210, v249, v250, v251, v252, v253);
          v507 = v254;
          objc_msgSend_recognitionScore(v210, v255, v256, v257, v258, v259);
          v505 = v260;
          objc_msgSend_combinedScore(v210, v261, v262, v263, v264, v265);
          v503 = v266;
          objc_msgSend_alignmentScore(v210, v267, v268, v269, v270, v271);
          v501 = v272;
          v278 = objc_msgSend_properties(v210, v273, v274, v275, v276, v277);
          v284 = objc_msgSend_recognizerSourceLocale(v210, v279, v280, v281, v282, v283);
          v290 = objc_msgSend_inputSources(v210, v285, v286, v287, v288, v289);
          v296 = objc_msgSend_substrokeCount(v210, v291, v292, v293, v294, v295);
          objc_msgSend_bounds(v210, v297, v298, v299, v300, v301);
          v303 = v302;
          v305 = v304;
          v307 = v306;
          v309 = v308;
          objc_msgSend_originalBounds(v210, v310, v311, v312, v313, v314);
          v321 = v320;
          v323 = v322;
          v325 = v324;
          v327 = v326;
          if (v210)
          {
            objc_msgSend_principalLines(v210, v315, v316, v317, v318, v319);
          }

          else
          {
            v533 = 0u;
            v534 = 0u;
            v531 = 0u;
            v532 = 0u;
            v529 = 0u;
            v530 = 0u;
            v527 = 0u;
            v528 = 0u;
          }

          v382 = objc_msgSend_principalPoints(v210, v315, v316, v317, v318, v319);
          v197 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v383, v238, v511, v509, v278, v284, v290, v507, v505, v503, v501, v303, v305, v307, v309, v296, v321, v323, v325, v327, &v527, v382);
        }

        v14 = v513;
      }

      else
      {
        v197 = v21;
      }

      goto LABEL_64;
    }
  }

  else
  {
    HasMatchingString = 0;
    isEqualToString = objc_msgSend_endsWithSentenceEndPunctuation(v14, v64, v65, v66, v67, v68) | v55 | v70;
    v535 = 0;
    v536 = 0;
    if ((v520 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_29:
  v73 = 1;
  if (HasMatchingString)
  {
    goto LABEL_30;
  }

LABEL_35:
  v187 = sub_183995134(a1, v21, isEqualToString & 1, v73 & 1, &v535, &v536, v524, v14, a8);
  if (!objc_msgSend_count(v187, v188, v189, v190, v191, v192))
  {
    v197 = v21;
    goto LABEL_65;
  }

  v197 = objc_msgSend_objectAtIndex_(v187, v193, v535, v194, v195, v196);
  v198 = v21;
LABEL_64:

LABEL_65:
  v389 = objc_msgSend_string(v197, v384, v385, v386, v387, v388);
  v395 = v389;
  v396 = *(a1 + 12);
  if ((v396 - 1) >= 3)
  {
    if (v396 == 4)
    {
      v399 = objc_msgSend_uppercaseStringWithLocale_(v389, v390, *(a1 + 16), v392, v393, v394);
    }

    else
    {
      if (v396 != 5)
      {
        goto LABEL_76;
      }

      v399 = objc_msgSend_lowercaseStringWithLocale_(v389, v390, *(a1 + 16), v392, v393, v394);
    }

    v398 = v399;
    goto LABEL_74;
  }

  if (!(v515 & isEqualToString & 1 | (((*(a1 + 9) | v520) & 1) == 0)))
  {
    goto LABEL_76;
  }

  v397 = objc_msgSend_lowercaseStringWithLocale_(v389, v390, *(a1 + 16), v392, v393, v394);

  if (isEqualToString)
  {
    v398 = sub_1837A47B8(v397);
    v395 = v397;
LABEL_74:

    v395 = v398;
    goto LABEL_76;
  }

  v395 = v397;
LABEL_76:
  v400 = objc_msgSend_string(v197, v390, v391, v392, v393, v394);
  v405 = objc_msgSend_isEqualToString_(v395, v401, v400, v402, v403, v404);

  if ((v405 & 1) == 0)
  {
    v411 = objc_msgSend_strokeIndexes(v197, v406, v407, v408, v409, v410);
    v523 = objc_msgSend_wordID(v197, v412, v413, v414, v415, v416);
    objc_msgSend_modelScore(v197, v417, v418, v419, v420, v421);
    v521 = v422;
    objc_msgSend_recognitionScore(v197, v423, v424, v425, v426, v427);
    v518 = v428;
    objc_msgSend_combinedScore(v197, v429, v430, v431, v432, v433);
    v516 = v434;
    objc_msgSend_alignmentScore(v197, v435, v436, v437, v438, v439);
    v514 = v440;
    v446 = objc_msgSend_properties(v197, v441, v442, v443, v444, v445);
    v452 = objc_msgSend_recognizerSourceLocale(v197, v447, v448, v449, v450, v451);
    v458 = objc_msgSend_inputSources(v197, v453, v454, v455, v456, v457);
    v464 = objc_msgSend_substrokeCount(v197, v459, v460, v461, v462, v463);
    objc_msgSend_bounds(v197, v465, v466, v467, v468, v469);
    v471 = v470;
    v473 = v472;
    v475 = v474;
    v477 = v476;
    objc_msgSend_originalBounds(v197, v478, v479, v480, v481, v482);
    v489 = v488;
    v491 = v490;
    v493 = v492;
    v495 = v494;
    if (v197)
    {
      objc_msgSend_principalLines(v197, v483, v484, v485, v486, v487);
    }

    else
    {
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v529 = 0u;
      v530 = 0u;
      v527 = 0u;
      v528 = 0u;
    }

    v496 = objc_msgSend_principalPoints(v197, v483, v484, v485, v486, v487);
    v498 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v497, v395, v411, v523, v446, v452, v458 | 0x100, v521, v518, v516, v514, v471, v473, v475, v477, v464, v489, v491, v493, v495, &v527, v496);

    v197 = v498;
  }

  _Block_object_dispose(&v538, 8);

  return v197;
}

void sub_183996D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, void *a29)
{
  _Block_object_dispose((v31 - 200), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_183996F80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183996FD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AD48], a2, a3, a4, a5, a6);
  v7 = qword_1EA84DC00;
  qword_1EA84DC00 = v6;

  v8 = qword_1EA84DC00;
  v18 = objc_msgSend_symbolCharacterSet(MEMORY[0x1E696AB08], v9, v10, v11, v12, v13);
  objc_msgSend_formUnionWithCharacterSet_(v8, v14, v18, v15, v16, v17);
}

void sub_183997060(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1837A93E8(v3);
  v10 = v4;
  if (*(*(*(a1 + 48) + 8) + 24) != v4 && objc_msgSend_length(*(*(*(a1 + 56) + 8) + 40), v5, v6, v7, v8, v9))
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = objc_msgSend_strokeIndexes(*(a1 + 32), v5, v11, v7, v8, v9);
    v115 = v12;
    v114 = objc_msgSend_wordID(*(a1 + 32), v14, v15, v16, v17, v18);
    objc_msgSend_modelScore(*(a1 + 32), v19, v20, v21, v22, v23);
    v113 = v24;
    objc_msgSend_recognitionScore(*(a1 + 32), v25, v26, v27, v28, v29);
    v112 = v30;
    objc_msgSend_combinedScore(*(a1 + 32), v31, v32, v33, v34, v35);
    v111 = v36;
    objc_msgSend_alignmentScore(*(a1 + 32), v37, v38, v39, v40, v41);
    v110 = v42;
    v43 = *(*(*(a1 + 64) + 8) + 24);
    v49 = objc_msgSend_recognizerSourceLocale(*(a1 + 32), v44, v45, v46, v47, v48);
    v55 = objc_msgSend_inputSources(*(a1 + 32), v50, v51, v52, v53, v54);
    v61 = objc_msgSend_substrokeCount(*(a1 + 32), v56, v57, v58, v59, v60);
    objc_msgSend_bounds(*(a1 + 32), v62, v63, v64, v65, v66);
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    objc_msgSend_originalBounds(*(a1 + 32), v75, v76, v77, v78, v79);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = *(a1 + 32);
    if (v93)
    {
      objc_msgSend_principalLines(v93, v80, v81, v82, v83, v84);
      objc_msgSend_principalPoints(*(a1 + 32), v94, v95, v96, v97, v98);
    }

    else
    {
      memset(v116, 0, 128);
      objc_msgSend_principalPoints(0, v80, v81, v82, v83, v84);
    }
    v99 = ;
    v101 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v100, v115, v13, v114, v43, v49, v55, v113, v112, v111, v110, v68, v70, v72, v74, v61, v86, v88, v90, v92, v116, v99);

    objc_msgSend_addObject_(*(a1 + 40), v102, v101, v103, v104, v105);
    objc_msgSend_setString_(*(*(*(a1 + 56) + 8) + 40), v106, &stru_1EF1C0318, v107, v108, v109);
    *(*(*(a1 + 64) + 8) + 24) &= ~0x20uLL;
  }

  objc_msgSend_appendString_(*(*(*(a1 + 56) + 8) + 40), v5, v3, v7, v8, v9);
  *(*(*(a1 + 48) + 8) + 24) = v10;
}

void sub_183998A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  _Block_object_dispose(&STACK[0x600], 8);

  _Unwind_Resume(a1);
}

void sub_1839990F0(uint64_t a1, void *a2, uint64_t a3)
{
  v62 = a2;
  v10 = objc_msgSend_properties(v62, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_string(v62, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_firstComposedCharacter(v16, v17, v18, v19, v20, v21);
  v23 = sub_1837A93E8(v22);

  v24 = *(*(*(a1 + 40) + 8) + 24);
  if (objc_msgSend_length(*(*(*(a1 + 48) + 8) + 40), v25, v26, v27, v28, v29))
  {
    v35 = objc_msgSend_lastComposedCharacter(*(*(*(a1 + 48) + 8) + 40), v30, v31, v32, v33, v34);
    v36 = sub_1837A95A0(v35);

    v37 = (v10 >> 5) & 1;
    if (v24 != v23)
    {
      LOBYTE(v37) = 1;
    }

    if (a3)
    {
LABEL_5:
      v38 = v37 | v36;
      v39 = *(a1 + 32);
      v40 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v30, *(*(*(a1 + 56) + 8) + 24) & (v37 | v36) & 1, v32, v33, v34);
      objc_msgSend_addObject_(v39, v41, v40, v42, v43, v44);

      *(*(*(a1 + 56) + 8) + 24) = v38 & 1;
      goto LABEL_14;
    }
  }

  else
  {
    v36 = 0;
    v37 = (v10 >> 5) & 1;
    if (v24 != v23)
    {
      LOBYTE(v37) = 1;
    }

    if (a3)
    {
      goto LABEL_5;
    }
  }

  if (v37 & 1) != 0 || (*(a1 + 64))
  {
    v45 = 1;
  }

  else
  {
    v45 = *(a1 + 65) | v36;
  }

  *(*(*(a1 + 56) + 8) + 24) = v45 & 1;
LABEL_14:
  v46 = objc_msgSend_string(v62, v30, v31, v32, v33, v34);
  v52 = objc_msgSend_lastComposedCharacter(v46, v47, v48, v49, v50, v51);

  if (sub_1837A93E8(v52))
  {
    v58 = sub_1837A95A0(v52) ^ 1;
  }

  else
  {
    LOBYTE(v58) = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v58;
  v59 = objc_msgSend_string(v62, v53, v54, v55, v56, v57);
  v60 = *(*(a1 + 48) + 8);
  v61 = *(v60 + 40);
  *(v60 + 40) = v59;
}

void sub_1839993D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
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

void sub_18399B960(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  v15 = v3;
  if ((objc_msgSend_properties(v3, v4, v5, v6, v7, v8) & 0x40) == 0)
  {
    if ((objc_msgSend_properties(v3, v9, v10, v11, v12, v13) & 0x20) != 0)
    {
      v21 = *(*(a1 + 80) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = &stru_1EF1C0318;
    }

    v23 = objc_msgSend_string(v3, v16, v17, v18, v19, v20);
    v24 = sub_1837A8464(v23, *(*(a1 + 32) + 16), *(a1 + 40), 0, 0);

    v25 = sub_1837A8464(v24, *(*(a1 + 32) + 32), *(*(*(a1 + 80) + 8) + 40), 0, 1);

    if (objc_msgSend_length(v25, v26, v27, v28, v29, v30) < 2)
    {
      v37 = v25;
    }

    else
    {
      v36 = sub_1837A8464(v25, *(*(a1 + 32) + 24), 0, 1, 1);

      v37 = v36;
    }

    v38 = objc_msgSend_string(v3, v31, v32, v33, v34, v35);
    isEqualToString = objc_msgSend_isEqualToString_(v37, v39, v38, v40, v41, v42);

    v49 = v3;
    if ((isEqualToString & 1) == 0)
    {
      v50 = objc_msgSend_strokeIndexes(v3, v44, v45, v46, v47, v48);
      v287 = objc_msgSend_wordID(v3, v51, v52, v53, v54, v55);
      objc_msgSend_modelScore(v3, v56, v57, v58, v59, v60);
      v285 = v61;
      objc_msgSend_recognitionScore(v3, v62, v63, v64, v65, v66);
      v283 = v67;
      objc_msgSend_combinedScore(v3, v68, v69, v70, v71, v72);
      v281 = v73;
      objc_msgSend_alignmentScore(v3, v74, v75, v76, v77, v78);
      v279 = v79;
      v85 = objc_msgSend_properties(v3, v80, v81, v82, v83, v84);
      v91 = objc_msgSend_recognizerSourceLocale(v3, v86, v87, v88, v89, v90);
      v97 = objc_msgSend_inputSources(v3, v92, v93, v94, v95, v96);
      v103 = objc_msgSend_substrokeCount(v3, v98, v99, v100, v101, v102);
      objc_msgSend_bounds(v3, v104, v105, v106, v107, v108);
      v110 = v109;
      v112 = v111;
      v114 = v113;
      v116 = v115;
      objc_msgSend_originalBounds(v3, v117, v118, v119, v120, v121);
      v128 = v127;
      v130 = v129;
      v132 = v131;
      v134 = v133;
      if (v3)
      {
        objc_msgSend_principalLines(v3, v122, v123, v124, v125, v126);
      }

      else
      {
        v295 = 0u;
        v296 = 0u;
        v293 = 0u;
        v294 = 0u;
        v291 = 0u;
        v292 = 0u;
        v289 = 0u;
        v290 = 0u;
      }

      v135 = objc_msgSend_principalPoints(v3, v122, v123, v124, v125, v126);
      v49 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v136, v37, v50, v287, v85, v91, v97 | 0x800, v285, v283, v281, v279, v110, v112, v114, v116, v103, v128, v130, v132, v134, &v289, v135);
    }

    v15 = v49;

    v141 = objc_msgSend_rangeOfCharacterFromSet_(v37, v137, *(*(a1 + 32) + 40), v138, v139, v140);
    v142 = *(a1 + 32);
    v14 = v15;
    if (*(v142 + 8) == 1)
    {
      v14 = v15;
      if (v141 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v143 = sub_1837A8464(v37, *(v142 + 40), *(a1 + 48), 0, 0);
        v144 = sub_1837A8464(v143, *(*(a1 + 32) + 32), *(*(*(a1 + 80) + 8) + 40), 0, 1);

        if (objc_msgSend_length(v144, v145, v146, v147, v148, v149) < 2)
        {
          v155 = v144;
          v160 = objc_msgSend_isEqualToString_(v144, v150, v37, v151, v152, v153);
        }

        else
        {
          v154 = sub_1837A8464(v144, *(*(a1 + 32) + 24), 0, 1, 1);

          v155 = v154;
          v160 = objc_msgSend_isEqualToString_(v154, v156, v37, v157, v158, v159);
        }

        v14 = v15;
        if ((v160 & 1) == 0)
        {
          v288 = objc_msgSend_strokeIndexes(v3, v161, v162, v163, v164, v165);
          v286 = objc_msgSend_wordID(v3, v166, v167, v168, v169, v170);
          objc_msgSend_modelScore(v3, v171, v172, v173, v174, v175);
          v284 = v176;
          objc_msgSend_recognitionScore(v3, v177, v178, v179, v180, v181);
          v282 = v182;
          objc_msgSend_combinedScore(v3, v183, v184, v185, v186, v187);
          v280 = v188;
          objc_msgSend_alignmentScore(v3, v189, v190, v191, v192, v193);
          v278 = v194;
          v200 = objc_msgSend_properties(v3, v195, v196, v197, v198, v199);
          v206 = objc_msgSend_recognizerSourceLocale(v3, v201, v202, v203, v204, v205);
          v212 = objc_msgSend_inputSources(v3, v207, v208, v209, v210, v211);
          v218 = objc_msgSend_substrokeCount(v3, v213, v214, v215, v216, v217);
          objc_msgSend_bounds(v3, v219, v220, v221, v222, v223);
          v225 = v224;
          v227 = v226;
          v229 = v228;
          v231 = v230;
          objc_msgSend_originalBounds(v3, v232, v233, v234, v235, v236);
          v243 = v242;
          v245 = v244;
          v247 = v246;
          v249 = v248;
          if (v3)
          {
            objc_msgSend_principalLines(v3, v237, v238, v239, v240, v241);
          }

          else
          {
            v295 = 0u;
            v296 = 0u;
            v293 = 0u;
            v294 = 0u;
            v291 = 0u;
            v292 = 0u;
            v289 = 0u;
            v290 = 0u;
          }

          v250 = objc_msgSend_principalPoints(v3, v237, v238, v239, v240, v241);
          v14 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v251, v155, v288, v286, v200, v206, v212 | 0x800, v284, v282, v280, v278, v225, v227, v229, v231, v218, v243, v245, v247, v249, &v289, v250);
        }
      }
    }
  }

  if (objc_msgSend_isTopOriginal(v3, v9, v10, v11, v12, v13))
  {
    objc_msgSend_addObject_(*(a1 + 56), v252, v3, v253, v254, v255);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 56), v252, v15, v253, v254, v255);
  }

  objc_msgSend_addObject_(*(a1 + 64), v256, v15, v257, v258, v259);
  objc_msgSend_addObject_(*(a1 + 72), v260, v14, v261, v262, v263);
  v269 = objc_msgSend_string(v15, v264, v265, v266, v267, v268);
  v275 = objc_msgSend_lastComposedCharacter(v269, v270, v271, v272, v273, v274);
  v276 = *(*(a1 + 80) + 8);
  v277 = *(v276 + 40);
  *(v276 + 40) = v275;
}

void sub_18399C884(uint64_t a1, void *a2)
{
  v21 = a2;
  v11 = objc_msgSend_rangeOfCharacterFromSet_(v21, v3, *(*(a1 + 32) + 8), v4, v5, v6);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_rangeOfCharacterFromSet_(v21, v7, *(*(a1 + 32) + 16), v8, v9, v10) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (objc_msgSend_rangeOfCharacterFromSet_(v21, v7, *(*(a1 + 32) + 24), v8, v9, v10) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 1;
      goto LABEL_7;
    }
  }

  v13 = 0;
  if (objc_msgSend_rangeOfCharacterFromSet_(v21, v7, *(*(a1 + 32) + 40), v8, v9, v10) == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    v15 = objc_msgSend_rangeOfCharacterFromSet_(v21, v7, *(*(a1 + 32) + 32), v8, v9, v10);
    v16 = 0;
    v17 = v15 != 0x7FFFFFFFFFFFFFFFLL;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

LABEL_12:
    v18 = 40;
LABEL_13:
    objc_msgSend_addObject_(*(a1 + v18), v7, v21, v8, v9, v10);
    v19 = v21;
    goto LABEL_14;
  }

  v16 = 1;
  v17 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (v12)
  {
    v18 = 40;
LABEL_10:
    objc_msgSend_removeLastObject(*(a1 + v18), v7, v14, v8, v9, v10);
    v19 = v21;
    goto LABEL_14;
  }

  if (v13)
  {
    v18 = 48;
    goto LABEL_13;
  }

  if (v16)
  {
    v20 = objc_msgSend_count(*(a1 + 48), v7, v14, v8, v9, v10);
    v18 = 48;
    if (v20)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v19 = v21;
  if (v17)
  {
    v18 = 48;
    goto LABEL_10;
  }

LABEL_14:
}

void sub_18399CA90(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if ((objc_msgSend_properties(v3, v4, v5, v6, v7, v8) & 0x40) == 0)
  {
    v151 = objc_msgSend_string(MEMORY[0x1E696AD60], v9, v10, v11, v12, v13);
    v20 = objc_msgSend_string(v3, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_string(v3, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_length(v26, v27, v28, v29, v30, v31);
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = sub_18399CE84;
    v153[3] = &unk_1E6DE08A8;
    v33 = *(a1 + 40);
    v153[4] = *(a1 + 32);
    v154 = v33;
    v155 = *(a1 + 48);
    v34 = v151;
    v156 = v34;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v20, v35, 0, v32, 2, v153);

    v41 = objc_msgSend_string(v3, v36, v37, v38, v39, v40);
    LOBYTE(v20) = objc_msgSend_isEqualToString_(v34, v42, v41, v43, v44, v45);

    v14 = v3;
    if ((v20 & 1) == 0)
    {
      v51 = objc_msgSend_strokeIndexes(v3, v46, v47, v48, v49, v50);
      v150 = objc_msgSend_wordID(v3, v52, v53, v54, v55, v56);
      objc_msgSend_modelScore(v3, v57, v58, v59, v60, v61);
      v149 = v62;
      objc_msgSend_recognitionScore(v3, v63, v64, v65, v66, v67);
      v148 = v68;
      objc_msgSend_combinedScore(v3, v69, v70, v71, v72, v73);
      v147 = v74;
      objc_msgSend_alignmentScore(v3, v75, v76, v77, v78, v79);
      v146 = v80;
      v86 = objc_msgSend_properties(v3, v81, v82, v83, v84, v85);
      v92 = objc_msgSend_recognizerSourceLocale(v3, v87, v88, v89, v90, v91);
      v98 = objc_msgSend_inputSources(v3, v93, v94, v95, v96, v97);
      v104 = objc_msgSend_substrokeCount(v3, v99, v100, v101, v102, v103);
      objc_msgSend_bounds(v3, v105, v106, v107, v108, v109);
      v111 = v110;
      v113 = v112;
      v115 = v114;
      v117 = v116;
      objc_msgSend_originalBounds(v3, v118, v119, v120, v121, v122);
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;
      if (v3)
      {
        objc_msgSend_principalLines(v3, v123, v124, v125, v126, v127);
      }

      else
      {
        memset(v152, 0, sizeof(v152));
      }

      v136 = objc_msgSend_principalPoints(v3, v123, v124, v125, v126, v127);
      v14 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v137, v34, v51, v150, v86, v92, v98 | 0x800, v149, v148, v147, v146, v111, v113, v115, v117, v104, v129, v131, v133, v135, v152, v136);
    }
  }

  if (objc_msgSend_isTopOriginal(v3, v9, v10, v11, v12, v13))
  {
    objc_msgSend_addObject_(*(a1 + 56), v138, v3, v139, v140, v141);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 56), v138, v14, v139, v140, v141);
  }

  objc_msgSend_addObject_(*(a1 + 64), v142, v14, v143, v144, v145);
}

void sub_18399CE84(uint64_t a1, void *a2)
{
  v39 = a2;
  v11 = objc_msgSend_rangeOfCharacterFromSet_(v39, v3, *(*(a1 + 32) + 8), v4, v5, v6);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_rangeOfCharacterFromSet_(v39, v7, *(*(a1 + 32) + 16), v8, v9, v10) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (objc_msgSend_rangeOfCharacterFromSet_(v39, v7, *(*(a1 + 32) + 24), v8, v9, v10) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 1;
      goto LABEL_7;
    }
  }

  v13 = 0;
  if (objc_msgSend_rangeOfCharacterFromSet_(v39, v7, *(*(a1 + 32) + 40), v8, v9, v10) == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    v15 = objc_msgSend_rangeOfCharacterFromSet_(v39, v7, *(*(a1 + 32) + 32), v8, v9, v10);
    v16 = 0;
    v17 = v15 != 0x7FFFFFFFFFFFFFFFLL;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

LABEL_14:
    v29 = 40;
LABEL_17:
    v19 = v39;
    objc_msgSend_addObject_(*(a1 + v29), v7, v39, v8, v9, v10);
    goto LABEL_27;
  }

  v16 = 1;
  v17 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v12)
  {
    v19 = v39;
    if (!objc_msgSend_count(*(a1 + 40), v7, v14, v8, v9, v10))
    {
      goto LABEL_27;
    }

    v20 = objc_msgSend_lastObject(*(a1 + 40), v7, v18, v8, v9, v10);
    v21 = sub_1837A954C(v20);
    v27 = sub_1837A954C(v39) ^ 1;
    v19 = v39;
    if (v21 == v27)
    {
      v28 = objc_msgSend_stringByApplyingTransform_reverse_(v39, v22, *MEMORY[0x1E695DA38], (v27 | v21) & 1, v25, v26);

      v19 = v28;
    }

    objc_msgSend_removeLastObject(*(a1 + 40), v22, v23, v24, v25, v26);
    goto LABEL_26;
  }

  if (v13)
  {
    goto LABEL_16;
  }

  if (v16)
  {
    if (!objc_msgSend_count(*(a1 + 48), v7, v14, v8, v9, v10))
    {
LABEL_16:
      v29 = 48;
      goto LABEL_17;
    }
  }

  else
  {
    v19 = v39;
    if (!v17)
    {
      goto LABEL_27;
    }
  }

  v19 = v39;
  if (!objc_msgSend_count(*(a1 + 48), v7, v14, v8, v9, v10))
  {
    goto LABEL_27;
  }

  v20 = objc_msgSend_lastObject(*(a1 + 48), v7, v30, v8, v9, v10);
  v31 = sub_1837A954C(v20);
  v37 = sub_1837A954C(v39) ^ 1;
  v19 = v39;
  if (v31 == v37)
  {
    v38 = objc_msgSend_stringByApplyingTransform_reverse_(v39, v32, *MEMORY[0x1E695DA38], (v37 | v31) & 1, v35, v36);

    v19 = v38;
  }

  objc_msgSend_removeLastObject(*(a1 + 48), v32, v33, v34, v35, v36);
LABEL_26:

LABEL_27:
  objc_msgSend_appendString_(*(a1 + 56), v7, v19, v8, v9, v10);
}

void sub_18399D2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    v28 = v3;
    v9 = objc_msgSend_properties(v3, v3, v4, v5, v6, v7);
    v8 = v28;
    if ((v9 & 0x10) == 0)
    {
      v14 = *(a1 + 16);
      v15 = objc_msgSend_string(v28, v28, v10, v11, v12, v13);
      LODWORD(v14) = objc_msgSend_isInappropriateString_(v14, v16, v15, v17, v18, v19);

      v8 = v28;
      if (v14)
      {
        v24 = objc_msgSend_properties(v28, v28, v20, v21, v22, v23);
        objc_msgSend_setProperties_(v28, v28, v24 | 0x10, v25, v26, v27);
        v8 = v28;
      }
    }
  }
}

__n128 sub_18399DEEC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_18399DEFC(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v7 = *a4;
  v8 = a4[2];
  if ((objc_msgSend_properties(v6, v9, v10, v11, v12, v13) & 0x20) != 0 && v7 != -v8)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  if (*(*(*(a1 + 64) + 8) + 24) >= *(*(*(a1 + 72) + 8) + 56) + *(*(*(a1 + 72) + 8) + 48))
  {
    v19 = ++*(*(*(a1 + 80) + 8) + 24);
    if (v19 < objc_msgSend_count(*(a1 + 32), v14, v15, v16, v17, v18))
    {
      if (*(*(*(a1 + 88) + 8) + 40))
      {
        goto LABEL_16;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v20 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "growingToken should not be nil", buf, 2u);
      }

      if (*(*(*(a1 + 88) + 8) + 40))
      {
        goto LABEL_16;
      }

      if (qword_1EA84DC48 == -1)
      {
        v21 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
LABEL_15:

LABEL_16:
          v22 = objc_msgSend_objectAtIndex_(*(a1 + 32), v14, *(*(*(a1 + 80) + 8) + 24), v16, v17, v18);
          v28 = objc_msgSend_rangeValue(v22, v23, v24, v25, v26, v27);
          v29 = *(*(a1 + 72) + 8);
          *(v29 + 48) = v28;
          *(v29 + 56) = v30;

          v35 = objc_msgSend_objectAtIndex_(*(a1 + 40), v31, *(*(*(a1 + 80) + 8) + 24), v32, v33, v34);
          v36 = *(*(a1 + 96) + 8);
          v37 = *(v36 + 40);
          *(v36 + 40) = v35;

          sub_18399D2F8(*(a1 + 48), *(*(*(a1 + 88) + 8) + 40));
          objc_msgSend_addObject_(*(a1 + 56), v38, *(*(*(a1 + 88) + 8) + 40), v39, v40, v41);
          v42 = *(*(a1 + 88) + 8);
          v43 = *(v42 + 40);
          *(v42 + 40) = 0;

          goto LABEL_17;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v21 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_15;
        }
      }

      *v71 = 0;
      _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "growingToken should not be nil", v71, 2u);
      goto LABEL_15;
    }
  }

LABEL_17:
  v44 = *(*(*(a1 + 88) + 8) + 40);
  if (v44)
  {
    sub_1836AA78C(v44, v6);
    v50 = *(*(a1 + 104) + 8);
    v51 = *a4 - *(v50 + 48) + 1;
  }

  else
  {
    v52 = objc_msgSend_mutableCopy(v6, v14, v15, v16, v17, v18);
    v53 = *(*(a1 + 88) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = v52;

    v60 = objc_msgSend_intValue(*(*(*(a1 + 96) + 8) + 40), v55, v56, v57, v58, v59);
    objc_msgSend_setWordID_(*(*(*(a1 + 88) + 8) + 40), v61, v60, v62, v63, v64);
    *(*(*(a1 + 104) + 8) + 48) = *a4;
    v50 = *(*(a1 + 104) + 8);
    v51 = 1;
  }

  *(v50 + 56) = v51;
  v65 = objc_msgSend_string(v6, v45, v46, v47, v48, v49);
  *(*(*(a1 + 64) + 8) + 24) += objc_msgSend_length(v65, v66, v67, v68, v69, v70);
}

void sub_18399E274(uint64_t a1, void *a2)
{
  v3 = a2;
  v125 = a1;
  v4 = *(a1 + 32);
  v10 = objc_msgSend_string(v3, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_objectForKeyedSubscript_(v4, v11, v10, v12, v13, v14);

  v126 = v15;
  if (v15)
  {
    v21 = objc_msgSend_unsignedIntValue(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = [CHTokenizedTextResultToken alloc];
  v28 = objc_msgSend_string(v3, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_strokeIndexes(v3, v29, v30, v31, v32, v33);
  objc_msgSend_recognitionScore(v3, v35, v36, v37, v38, v39);
  v124 = v40;
  objc_msgSend_recognitionScore(v3, v41, v42, v43, v44, v45);
  v123 = v46;
  objc_msgSend_combinedScore(v3, v47, v48, v49, v50, v51);
  v122 = v52;
  objc_msgSend_alignmentScore(v3, v53, v54, v55, v56, v57);
  v121 = v58;
  v64 = objc_msgSend_properties(v3, v59, v60, v61, v62, v63);
  v70 = objc_msgSend_recognizerSourceLocale(v3, v65, v66, v67, v68, v69);
  v76 = objc_msgSend_inputSources(v3, v71, v72, v73, v74, v75);
  v82 = objc_msgSend_substrokeCount(v3, v77, v78, v79, v80, v81);
  objc_msgSend_bounds(v3, v83, v84, v85, v86, v87);
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  objc_msgSend_originalBounds(v3, v96, v97, v98, v99, v100);
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  if (v3)
  {
    objc_msgSend_principalLines(v3, v101, v102, v103, v104, v105);
  }

  else
  {
    memset(v127, 0, 128);
  }

  v114 = objc_msgSend_principalPoints(v3, v101, v102, v103, v104, v105);
  v116 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v22, v115, v28, v34, v21, v64, v70, v76, v124, v123, v122, v121, v89, v91, v93, v95, v82, v107, v109, v111, v113, v127, v114);

  objc_msgSend_addObject_(*(v125 + 40), v117, v116, v118, v119, v120);
}

void sub_18399EB34(uint64_t a1, void *a2)
{
  v23 = a2;
  v8 = objc_msgSend_ch_neutralQuotationMarkSet(MEMORY[0x1E696AB08], v3, v4, v5, v6, v7);
  v13 = objc_msgSend_characterAtIndex_(v23, v9, 0, v10, v11, v12);
  IsMember = objc_msgSend_characterIsMember_(v8, v14, v13, v15, v16, v17);

  if (IsMember)
  {
    objc_msgSend_addObject_(*(a1 + 32), v19, v23, v20, v21, v22);
  }
}

void sub_18399EBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (objc_msgSend_shouldInsertSpaceBetweenPreviousChar_andNextChar_inLocale_inString_atRange_withQuoteCount_(CHRecognizerConfiguration, v8, *(*(*(a1 + 64) + 8) + 40), v7, *(*(a1 + 32) + 8), *(a1 + 40), a3, a4, *(a1 + 48)))
  {
    if (!a3)
    {
      *(*(*(a1 + 72) + 8) + 24) |= 0x20uLL;
      if (*(a1 + 80) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    objc_msgSend_appendString_(*(a1 + 56), v9, @" ", v11, v12, v13);
  }

  if (*(a1 + 80) != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v14 = objc_msgSend_ch_neutralQuotationMarkSet(MEMORY[0x1E696AB08], v9, v10, v11, v12, v13);
  v19 = objc_msgSend_characterAtIndex_(v7, v15, 0, v16, v17, v18);
  IsMember = objc_msgSend_characterIsMember_(v14, v20, v19, v21, v22, v23);

  if (IsMember)
  {
    objc_msgSend_addObject_(*(a1 + 48), v9, v7, v11, v12, v13);
  }

LABEL_8:
  objc_msgSend_appendString_(*(a1 + 56), v9, v7, v11, v12, v13);
  v25 = *(*(a1 + 64) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v7;
}

void sub_18399F4F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 72) + 8) + 24);
  v12 = objc_msgSend_result(*(a1 + 32), v7, v8, v9, v10, v11);
  v17 = objc_msgSend_precedingSeparatorForToken_(v12, v13, v5, v14, v15, v16);

  v226 = v17;
  if (a3 >= 1)
  {
    v6 += objc_msgSend_length(v17, v18, v19, v20, v21, v22);
  }

  v23 = objc_msgSend_substringFromIndex_(*(*(*(a1 + 80) + 8) + 40), v18, v6, v20, v21, v22);
  v24 = *(*(a1 + 80) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v26 = *(*(*(a1 + 88) + 8) + 40);
  v27 = *(*(*(a1 + 80) + 8) + 40);
  v29 = *(a1 + 40);
  v28 = *(a1 + 48);
  v230 = v5;
  v30 = v26;
  v229 = v27;
  v228 = v28;
  if (v29)
  {
    v243 = 0;
    v244 = &v243;
    v245 = 0x3032000000;
    v246 = sub_183996F80;
    v247 = sub_183996F90;
    v227 = v30;
    v248 = objc_msgSend_lastComposedCharacter(v30, v31, v32, v33, v34, v35);
    v239 = 0;
    v240 = &v239;
    v241 = 0x2020000000;
    v242 = objc_msgSend_properties(v230, v36, v37, v38, v39, v40);
    v41 = v244[5];
    v47 = objc_msgSend_string(v230, v42, v43, v44, v45, v46);
    v53 = objc_msgSend_firstComposedCharacter(v47, v48, v49, v50, v51, v52);
    v56 = objc_msgSend_shouldRemoveSpaceBetweenPreviousChar_andNextChar_inLocale_(CHRecognizerConfiguration, v54, v41, v53, *(v29 + 8), v55);

    if (v56)
    {
      v240[3] &= ~0x20uLL;
    }

    shouldAddSpaceToNeutralQuotationMarks = objc_msgSend_shouldAddSpaceToNeutralQuotationMarks_(CHRecognizerConfiguration, v57, *(v29 + 8), v58, v59, v60);
    v220 = objc_msgSend_string(MEMORY[0x1E696AD60], v62, v63, v64, v65, v66);
    v72 = objc_msgSend_string(v230, v67, v68, v69, v70, v71);
    v78 = objc_msgSend_string(v230, v73, v74, v75, v76, v77);
    v84 = objc_msgSend_length(v78, v79, v80, v81, v82, v83);
    v232[0] = MEMORY[0x1E69E9820];
    v232[1] = 3221225472;
    v232[2] = sub_18399EBF0;
    v232[3] = &unk_1E6DE08F8;
    v236 = &v243;
    v232[4] = v29;
    v233 = v229;
    v234 = v228;
    v237 = &v239;
    v85 = v220;
    v235 = v85;
    v238 = shouldAddSpaceToNeutralQuotationMarks;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v72, v86, 0, v84, 2, v232);

    v87 = v230;
    v93 = objc_msgSend_string(v87, v88, v89, v90, v91, v92);
    v30 = v227;
    if (objc_msgSend_isEqualToString_(v85, v94, v93, v95, v96, v97))
    {
      v103 = v240[3];
      v104 = objc_msgSend_properties(v87, v98, v99, v100, v101, v102);

      if (v103 == v104)
      {
LABEL_14:

        _Block_object_dispose(&v239, 8);
        _Block_object_dispose(&v243, 8);

        goto LABEL_15;
      }
    }

    else
    {
    }

    v110 = objc_msgSend_strokeIndexes(v87, v105, v106, v107, v108, v109);
    v225 = objc_msgSend_wordID(v87, v111, v112, v113, v114, v115);
    objc_msgSend_modelScore(v87, v116, v117, v118, v119, v120);
    v224 = v121;
    objc_msgSend_recognitionScore(v87, v122, v123, v124, v125, v126);
    v223 = v127;
    objc_msgSend_combinedScore(v87, v128, v129, v130, v131, v132);
    v222 = v133;
    objc_msgSend_alignmentScore(v87, v134, v135, v136, v137, v138);
    v221 = v139;
    v140 = v240[3];
    v146 = objc_msgSend_recognizerSourceLocale(v87, v141, v142, v143, v144, v145);
    v152 = objc_msgSend_inputSources(v87, v147, v148, v149, v150, v151);
    v158 = objc_msgSend_substrokeCount(v87, v153, v154, v155, v156, v157);
    objc_msgSend_bounds(v87, v159, v160, v161, v162, v163);
    v165 = v164;
    v167 = v166;
    v169 = v168;
    v171 = v170;
    objc_msgSend_originalBounds(v87, v172, v173, v174, v175, v176);
    v183 = v182;
    v185 = v184;
    v187 = v186;
    v189 = v188;
    if (v87)
    {
      objc_msgSend_principalLines(v87, v177, v178, v179, v180, v181);
    }

    else
    {
      memset(v231, 0, sizeof(v231));
    }

    v190 = objc_msgSend_principalPoints(v87, v177, v178, v179, v180, v181);
    v192 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v191, v85, v110, v225, v140, v146, v152 | 0x200, v224, v223, v222, v221, v165, v167, v169, v171, v158, v183, v185, v187, v189, v231, v190);

    v87 = v192;
    v30 = v227;
    goto LABEL_14;
  }

  v87 = 0;
LABEL_15:

  objc_msgSend_addObject_(*(a1 + 56), v193, v87, v194, v195, v196);
  objc_msgSend_addObject_(*(a1 + 64), v197, v87, v198, v199, v200);
  v206 = objc_msgSend_string(v87, v201, v202, v203, v204, v205);
  v207 = *(*(a1 + 88) + 8);
  v208 = *(v207 + 40);
  *(v207 + 40) = v206;

  v214 = objc_msgSend_string(v230, v209, v210, v211, v212, v213);
  *(*(*(a1 + 72) + 8) + 24) = objc_msgSend_length(v214, v215, v216, v217, v218, v219);
}

void sub_18399FA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, void *a51, void *a52)
{
  _Block_object_dispose((v56 - 232), 8);
  _Block_object_dispose((v56 - 200), 8);

  _Unwind_Resume(a1);
}

void sub_18399FF8C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

__n128 sub_1839A288C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1839A289C(uint64_t a1, void *a2)
{
  v238 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v3, v238, v4, v5, v6);
  if (*(a1 + 80))
  {
    goto LABEL_10;
  }

  v12 = objc_msgSend_string(v238, v7, v8, v9, v10, v11);
  if (objc_msgSend_hasPrefix_(v12, v13, 0x1EF1C10D8, v14, v15, v16))
  {

LABEL_5:
    v33 = *(*(*(a1 + 48) + 8) + 40);
    if (v33)
    {
      v39 = v33;
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v40 = objc_msgSend_string(*(*(*(a1 + 48) + 8) + 40), v34, v35, v36, v37, v38);
        v44 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v40, v41, @" ", &stru_1EF1C0318, v42, v43);

        v45 = [CHTokenizedTextResultToken alloc];
        v51 = objc_msgSend_strokeIndexes(*(*(*(a1 + 48) + 8) + 40), v46, v47, v48, v49, v50);
        objc_msgSend_modelScore(*(*(*(a1 + 48) + 8) + 40), v52, v53, v54, v55, v56);
        v58 = v57;
        objc_msgSend_recognitionScore(*(*(*(a1 + 48) + 8) + 40), v59, v60, v61, v62, v63);
        v65 = v64;
        objc_msgSend_combinedScore(*(*(*(a1 + 48) + 8) + 40), v66, v67, v68, v69, v70);
        v72 = v71;
        objc_msgSend_alignmentScore(*(*(*(a1 + 48) + 8) + 40), v73, v74, v75, v76, v77);
        v79 = v78;
        v85 = objc_msgSend_properties(*(*(*(a1 + 48) + 8) + 40), v80, v81, v82, v83, v84);
        v91 = objc_msgSend_recognizerSourceLocale(*(*(*(a1 + 48) + 8) + 40), v86, v87, v88, v89, v90);
        v97 = objc_msgSend_inputSources(*(*(*(a1 + 48) + 8) + 40), v92, v93, v94, v95, v96);
        v103 = objc_msgSend_substrokeCount(*(*(*(a1 + 48) + 8) + 40), v98, v99, v100, v101, v102);
        objc_msgSend_bounds(*(*(*(a1 + 48) + 8) + 40), v104, v105, v106, v107, v108);
        v114 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v45, v109, v44, v51, 0, v85, v91, v97 | 0x200, v58, v65, v72, v79, v110, v111, v112, v113, v103);

        v39 = v114;
      }

      objc_msgSend_addObject_(*(a1 + 40), v34, v39, v36, v37, v38);
    }

    v115 = objc_msgSend_mutableCopy(v238, v22, v23, v24, v25, v26);
    v116 = *(*(a1 + 48) + 8);
    v117 = *(v116 + 40);
    *(v116 + 40) = v115;

    *(*(*(a1 + 56) + 8) + 24) = 0;
    objc_msgSend_alignmentScore(v238, v118, v119, v120, v121, v122);
    *(*(*(a1 + 64) + 8) + 24) = v123;
    objc_msgSend_bounds(v238, v124, v125, v126, v127, v128);
    v129 = *(*(a1 + 72) + 8);
    v129[6] = v130;
    v129[7] = v131;
    v129[8] = v132;
    v129[9] = v133;
    goto LABEL_10;
  }

  v27 = objc_msgSend_string(v238, v17, v18, v19, v20, v21);
  hasPrefix = objc_msgSend_hasPrefix_(v27, v28, 0x1EF1C10F8, v29, v30, v31);

  if (hasPrefix)
  {
    goto LABEL_5;
  }

  v134 = *(*(*(a1 + 48) + 8) + 40);
  if (v134)
  {
    if (*(*(*(a1 + 64) + 8) + 24) >= 0.98)
    {
      goto LABEL_19;
    }

    objc_msgSend_bounds(v238, v22, v238, v24, v25, v26);
    x = v240.origin.x;
    y = v240.origin.y;
    width = v240.size.width;
    height = v240.size.height;
    MinX = CGRectGetMinX(v240);
    v140 = MinX - CGRectGetMaxX(*(*(*(a1 + 72) + 8) + 48));
    v141 = *(*(a1 + 72) + 8);
    v142 = v141[9];
    if (v142 <= height)
    {
      v142 = height;
    }

    v141[6] = x;
    v141[7] = y;
    v141[8] = width;
    v141[9] = height;
    v134 = *(*(*(a1 + 48) + 8) + 40);
    if (v140 / (v142 + 0.000001) >= 0.4)
    {
LABEL_19:
      v154 = v134;
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v155 = objc_msgSend_string(*(*(*(a1 + 48) + 8) + 40), v149, v150, v151, v152, v153);
        v159 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v155, v156, @" ", &stru_1EF1C0318, v157, v158);

        v160 = [CHTokenizedTextResultToken alloc];
        v166 = objc_msgSend_strokeIndexes(*(*(*(a1 + 48) + 8) + 40), v161, v162, v163, v164, v165);
        objc_msgSend_modelScore(*(*(*(a1 + 48) + 8) + 40), v167, v168, v169, v170, v171);
        v173 = v172;
        objc_msgSend_recognitionScore(*(*(*(a1 + 48) + 8) + 40), v174, v175, v176, v177, v178);
        v180 = v179;
        objc_msgSend_combinedScore(*(*(*(a1 + 48) + 8) + 40), v181, v182, v183, v184, v185);
        v187 = v186;
        objc_msgSend_alignmentScore(*(*(*(a1 + 48) + 8) + 40), v188, v189, v190, v191, v192);
        v194 = v193;
        v200 = objc_msgSend_properties(*(*(*(a1 + 48) + 8) + 40), v195, v196, v197, v198, v199);
        v206 = objc_msgSend_recognizerSourceLocale(*(*(*(a1 + 48) + 8) + 40), v201, v202, v203, v204, v205);
        v212 = objc_msgSend_inputSources(*(*(*(a1 + 48) + 8) + 40), v207, v208, v209, v210, v211);
        v218 = objc_msgSend_substrokeCount(*(*(*(a1 + 48) + 8) + 40), v213, v214, v215, v216, v217);
        objc_msgSend_bounds(*(*(*(a1 + 48) + 8) + 40), v219, v220, v221, v222, v223);
        v229 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v160, v224, v159, v166, 0, v200, v206, v212 | 0x200, v173, v180, v187, v194, v225, v226, v227, v228, v218);

        v154 = v229;
      }

      objc_msgSend_addObject_(*(a1 + 40), v149, v154, v151, v152, v153);
      v230 = *(*(a1 + 48) + 8);
      v231 = *(v230 + 40);
      *(v230 + 40) = 0;

      *(*(*(a1 + 56) + 8) + 24) = 0;
      *(*(*(a1 + 64) + 8) + 24) = 0x43E0000000000000;
      v232 = *(*(a1 + 72) + 8);
      v233 = *(MEMORY[0x1E695F050] + 16);
      *(v232 + 48) = *MEMORY[0x1E695F050];
      *(v232 + 64) = v233;
      objc_msgSend_addObject_(*(a1 + 40), v234, v238, v235, v236, v237);
    }

    else
    {
      sub_1836AA78C(v134, v238);
      objc_msgSend_alignmentScore(v238, v143, v144, v145, v146, v147);
      *(*(*(a1 + 64) + 8) + 24) = v148;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 40), v22, v238, v24, v25, v26);
  }

LABEL_10:
}

void sub_1839A360C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v4, v3, v5, v6, v7);
  if (*(a1 + 72))
  {
    goto LABEL_19;
  }

  v173 = 0;
  v174 = &v173;
  v175 = 0x2020000000;
  v176 = 1;
  v13 = objc_msgSend_string(v3, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_string(v3, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_length(v19, v20, v21, v22, v23, v24);
  v172[0] = MEMORY[0x1E69E9820];
  v172[1] = 3221225472;
  v172[2] = sub_1839A3B6C;
  v172[3] = &unk_1E6DDDCB0;
  v172[4] = &v173;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v13, v26, 0, v25, 2, v172);

  v32 = objc_msgSend_string(v3, v27, v28, v29, v30, v31);
  if (objc_msgSend_length(v32, v33, v34, v35, v36, v37) == 1)
  {
    v43 = *(*(a1 + 40) + 8);
    v44 = objc_msgSend_string(v3, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_characterAtIndex_(v44, v45, 0, v46, v47, v48);
    IsMember = objc_msgSend_characterIsMember_(v43, v50, v49, v51, v52, v53);

    v59 = *(*(*(a1 + 56) + 8) + 40);
    if (!v59)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((IsMember & 1) == 0)
    {
      objc_msgSend_addObject_(*(a1 + 48), v55, v59, v56, v57, v58);
      v60 = *(*(a1 + 56) + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = 0;

      v62 = *(*(a1 + 64) + 8);
      v63 = *(MEMORY[0x1E695F050] + 16);
      *(v62 + 48) = *MEMORY[0x1E695F050];
      *(v62 + 64) = v63;
    }

    goto LABEL_8;
  }

  IsMember = 0;

  v59 = *(*(*(a1 + 56) + 8) + 40);
  if (v59)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (*(v174 + 24) == 1)
  {
    v64 = objc_msgSend_mutableCopy(v3, v55, v59, v56, v57, v58);
    v65 = *(*(a1 + 56) + 8);
    v66 = *(v65 + 40);
    *(v65 + 40) = v64;

    objc_msgSend_bounds(v3, v67, v68, v69, v70, v71);
    v72 = *(*(a1 + 64) + 8);
    v72[6] = v73;
    v72[7] = v74;
    v72[8] = v75;
    v72[9] = v76;
  }

  else if (((*(*(*(a1 + 56) + 8) + 40) != 0) & IsMember) == 1)
  {
    objc_msgSend_bounds(v3, v55, v59, v56, v57, v58);
    x = v177.origin.x;
    y = v177.origin.y;
    width = v177.size.width;
    height = v177.size.height;
    MinX = CGRectGetMinX(v177);
    MaxX = CGRectGetMaxX(*(*(*(a1 + 64) + 8) + 48));
    v83 = *(*(a1 + 64) + 8);
    v84 = v83[9];
    v83[6] = x;
    v83[7] = y;
    v83[8] = width;
    v83[9] = height;
    sub_1836AA78C(*(*(*(a1 + 56) + 8) + 40), v3);
    if (v84 <= height)
    {
      v85 = height;
    }

    else
    {
      v85 = v84;
    }

    v86 = (MinX - MaxX) / (v85 + 0.000001);
    v92 = *(*(*(a1 + 56) + 8) + 40);
    if (v86 < 0.4)
    {
      v93 = objc_msgSend_string(*(*(*(a1 + 56) + 8) + 40), v87, v88, v89, v90, v91);
      v97 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v93, v94, @" ", &stru_1EF1C0318, v95, v96);

      v98 = [CHTokenizedTextResultToken alloc];
      v104 = objc_msgSend_strokeIndexes(*(*(*(a1 + 56) + 8) + 40), v99, v100, v101, v102, v103);
      objc_msgSend_modelScore(v3, v105, v106, v107, v108, v109);
      v111 = v110;
      objc_msgSend_recognitionScore(*(*(*(a1 + 56) + 8) + 40), v112, v113, v114, v115, v116);
      v118 = v117;
      objc_msgSend_combinedScore(*(*(*(a1 + 56) + 8) + 40), v119, v120, v121, v122, v123);
      v125 = v124;
      objc_msgSend_alignmentScore(*(*(*(a1 + 56) + 8) + 40), v126, v127, v128, v129, v130);
      v132 = v131;
      v138 = objc_msgSend_properties(*(*(*(a1 + 56) + 8) + 40), v133, v134, v135, v136, v137);
      v144 = objc_msgSend_recognizerSourceLocale(*(*(*(a1 + 56) + 8) + 40), v139, v140, v141, v142, v143);
      v150 = objc_msgSend_inputSources(*(*(*(a1 + 56) + 8) + 40), v145, v146, v147, v148, v149);
      v156 = objc_msgSend_substrokeCount(*(*(*(a1 + 56) + 8) + 40), v151, v152, v153, v154, v155);
      objc_msgSend_bounds(*(*(*(a1 + 56) + 8) + 40), v157, v158, v159, v160, v161);
      v167 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v98, v162, v97, v104, 0, v138, v144, v150 | 0x200, v111, v118, v125, v132, v163, v164, v165, v166, v156);

      v92 = v167;
    }

    objc_msgSend_addObject_(*(a1 + 48), v87, v92, v89, v90, v91);
    v168 = *(*(a1 + 56) + 8);
    v169 = *(v168 + 40);
    *(v168 + 40) = 0;

    v170 = *(*(a1 + 64) + 8);
    v171 = *(MEMORY[0x1E695F050] + 16);
    *(v170 + 48) = *MEMORY[0x1E695F050];
    *(v170 + 64) = v171;
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 48), v55, v3, v56, v57, v58);
  }

  _Block_object_dispose(&v173, 8);
LABEL_19:
}

void sub_1839A3AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1839A3B6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = sub_1837A93E8(a2);
  if (!result)
  {
    *a7 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_1839A424C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  if (!*(a4 + 16) && objc_msgSend_count(*(a1 + 32), v6, v7, v8, v9, v10))
  {
    sub_183992A0C(CHPostprocessingStep, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
    objc_msgSend_removeAllObjects(*(a1 + 32), v12, v13, v14, v15, v16);
    objc_msgSend_removeAllObjects(*(a1 + 40), v17, v18, v19, v20, v21);
  }

  v22 = *(a1 + 64);
  v23 = objc_msgSend_string(v11, v6, v7, v8, v9, v10);
  v24 = v23;
  if (v22)
  {
    v25 = v23;
    v29 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v25, v26, @"．．．", @"…", v27, v28);

    v33 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v29, v30, @"、、", @"〟", v31, v32);

    v37 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v33, v34, @"<<", @"《", v35, v36);

    v41 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v37, v38, @">>", @"》", v39, v40);

    v45 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v41, v42, @"＜＜", @"《", v43, v44);

    v49 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v45, v46, @"＞＞", @"》", v47, v48);
  }

  else
  {
    v49 = 0;
  }

  if (*(*(a1 + 64) + 8) == 1)
  {
    v50 = objc_opt_class();
    v54 = objc_msgSend_transliterateStringUsingICUTransliterator__icuTransliterator_(v50, v51, v49, *(*(a1 + 64) + 16), v52, v53);

    v49 = v54;
  }

  v55 = v11;
  isTopOriginal = objc_msgSend_isTopOriginal(v55, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_string(v55, v62, v63, v64, v65, v66);
  isEqualToString = objc_msgSend_isEqualToString_(v49, v68, v67, v69, v70, v71);

  v77 = v55;
  if ((isEqualToString & 1) == 0)
  {
    v78 = [CHTokenizedTextResultToken alloc];
    v84 = objc_msgSend_strokeIndexes(v55, v79, v80, v81, v82, v83);
    v181 = v78;
    v180 = objc_msgSend_wordID(v55, v85, v86, v87, v88, v89);
    objc_msgSend_modelScore(v55, v90, v91, v92, v93, v94);
    v179 = v95;
    objc_msgSend_recognitionScore(v55, v96, v97, v98, v99, v100);
    v178 = v101;
    objc_msgSend_combinedScore(v55, v102, v103, v104, v105, v106);
    v177 = v107;
    objc_msgSend_alignmentScore(v55, v108, v109, v110, v111, v112);
    v176 = v113;
    v119 = objc_msgSend_properties(v55, v114, v115, v116, v117, v118);
    v125 = objc_msgSend_recognizerSourceLocale(v55, v120, v121, v122, v123, v124);
    v131 = objc_msgSend_inputSources(v55, v126, v127, v128, v129, v130);
    v137 = objc_msgSend_substrokeCount(v55, v132, v133, v134, v135, v136);
    objc_msgSend_bounds(v55, v138, v139, v140, v141, v142);
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v150 = v149;
    objc_msgSend_originalBounds(v55, v151, v152, v153, v154, v155);
    v162 = v161;
    v164 = v163;
    v166 = v165;
    v168 = v167;
    if (v55)
    {
      objc_msgSend_principalLines(v55, v156, v157, v158, v159, v160);
    }

    else
    {
      memset(v182, 0, 128);
    }

    v169 = objc_msgSend_principalPoints(v55, v156, v157, v158, v159, v160);
    v77 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v181, v170, v49, v84, v180, v119, v125, v131 | 8, v179, v178, v177, v176, v144, v146, v148, v150, v137, v162, v164, v166, v168, v182, v169);
  }

  objc_msgSend_addObject_(*(a1 + 32), v73, v77, v74, v75, v76);
  v175 = *(a1 + 40);
  if (isTopOriginal)
  {
    objc_msgSend_addObject_(v175, v171, v55, v172, v173, v174);
  }

  else
  {
    objc_msgSend_addObject_(v175, v171, v77, v172, v173, v174);
  }
}

void sub_1839A4738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHTransliterateChineseJapaneseStep;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1839A4810(void *a1, void *a2)
{
  v29 = a2;
  v8 = objc_msgSend_string(v29, v3, v4, v5, v6, v7);
  isNaturallyRTL = objc_msgSend__isNaturallyRTL(v8, v9, v10, v11, v12, v13);

  v20 = objc_msgSend_strokeIndexes(v29, v15, v16, v17, v18, v19);
  Index = objc_msgSend_firstIndex(v20, v21, v22, v23, v24, v25);

  *(*(a1[5] + 8) + 24) = isNaturallyRTL;
  v27 = *(*(a1[6] + 8) + 24);
  if (isNaturallyRTL)
  {
    if (v27)
    {
      goto LABEL_7;
    }
  }

  else if (v27 != 1)
  {
    goto LABEL_7;
  }

  v28 = a1[4];
  if (v28)
  {
    *(v28 + 16) = Index >= *(*(a1[7] + 8) + 24);
  }

LABEL_7:
  *(*(a1[7] + 8) + 24) = Index;
  *(*(a1[6] + 8) + 24) = isNaturallyRTL;
}

void sub_1839A4960(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0123456789%", a4, a5, a6);
  v7 = qword_1EA84DC10;
  qword_1EA84DC10 = v6;
}

void sub_1839A600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, void *a28, uint64_t a29, void *a30, uint64_t a31, void *a32, uint64_t a33, void *a34, uint64_t a35, void *a36, void *a37, void *a38, void *a39, uint64_t a40, void *a41, uint64_t a42, void *a43, void *a44, void *a45, void *a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x250], 8);

  _Unwind_Resume(a1);
}

void sub_1839A65C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_string(v3, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_containsString_(v9, v10, @"%", v11, v12, v13);

  if (v14)
  {
    v244 = [CHTokenizedTextResultToken alloc];
    v19 = *(a1 + 32);
    v25 = objc_msgSend_string(v3, v20, v21, v22, v23, v24);
    v26 = *(*(*(a1 + 48) + 8) + 24);
    v32 = v25;
    if (v19)
    {
      v19 = objc_msgSend_string(MEMORY[0x1E696AD60], v27, v28, v29, v30, v31);
      if (qword_1EA84DC18 != -1)
      {
        dispatch_once(&qword_1EA84DC18, &unk_1EF1BFAB8);
      }

      if (objc_msgSend_length(v32, v33, v34, v35, v36, v37))
      {
        v42 = objc_msgSend_characterAtIndex_(v32, v38, 0, v39, v40, v41);
        if (v42 == 37)
        {
          if (objc_msgSend_length(v32, v43, v44, v45, v46, v47) == 1)
          {
            v52 = 32;
          }

          else
          {
            v52 = objc_msgSend_characterAtIndex_(v32, v48, 1, v49, v50, v51);
          }

          if (objc_msgSend_characterIsMember_(qword_1EA84DC10, v48, v26, v49, v50, v51) & 1) != 0 || (objc_msgSend_characterIsMember_(qword_1EA84DC10, v91, v52, v92, v93, v94))
          {
            objc_msgSend_appendFormat_(v19, v91, @"%C", v92, v93, v94, 37);
          }

          else
          {
            objc_msgSend_appendFormat_(v19, v91, @"%C", v92, v93, v94, 1642);
          }
        }

        else
        {
          objc_msgSend_appendFormat_(v19, v43, @"%C", v45, v46, v47, v42);
        }

        for (i = 1; objc_msgSend_length(v32, v86, v87, v88, v89, v90) > i; ++i)
        {
          v100 = objc_msgSend_characterAtIndex_(v32, v96, i, v97, v98, v99);
          if (v100 == 37)
          {
            v105 = objc_msgSend_characterAtIndex_(v32, v101, i - 1, v102, v103, v104);
            if (i == objc_msgSend_length(v32, v106, v107, v108, v109, v110) - 1)
            {
              v115 = 32;
            }

            else
            {
              v115 = objc_msgSend_characterAtIndex_(v32, v111, i + 1, v112, v113, v114);
            }

            if ((objc_msgSend_characterIsMember_(qword_1EA84DC10, v111, v105, v112, v113, v114) & 1) != 0 || objc_msgSend_characterIsMember_(qword_1EA84DC10, v116, v115, v117, v118, v119))
            {
              objc_msgSend_appendFormat_(v19, v116, @"%C", v117, v118, v119, 37);
            }

            else
            {
              objc_msgSend_appendFormat_(v19, v116, @"%C", v117, v118, v119, 1642);
            }
          }

          else
          {
            objc_msgSend_appendFormat_(v19, v101, @"%C", v102, v103, v104, v100);
          }
        }
      }
    }

    v125 = objc_msgSend_strokeIndexes(v3, v120, v121, v122, v123, v124);
    v243 = objc_msgSend_wordID(v3, v126, v127, v128, v129, v130);
    objc_msgSend_modelScore(v3, v131, v132, v133, v134, v135);
    v242 = v136;
    objc_msgSend_recognitionScore(v3, v137, v138, v139, v140, v141);
    v241 = v142;
    objc_msgSend_combinedScore(v3, v143, v144, v145, v146, v147);
    v240 = v148;
    objc_msgSend_alignmentScore(v3, v149, v150, v151, v152, v153);
    v239 = v154;
    v160 = objc_msgSend_properties(v3, v155, v156, v157, v158, v159);
    v166 = objc_msgSend_recognizerSourceLocale(v3, v161, v162, v163, v164, v165);
    v172 = objc_msgSend_inputSources(v3, v167, v168, v169, v170, v171);
    v178 = objc_msgSend_substrokeCount(v3, v173, v174, v175, v176, v177);
    objc_msgSend_bounds(v3, v179, v180, v181, v182, v183);
    v185 = v184;
    v187 = v186;
    v189 = v188;
    v191 = v190;
    objc_msgSend_originalBounds(v3, v192, v193, v194, v195, v196);
    v203 = v202;
    v205 = v204;
    v207 = v206;
    v209 = v208;
    if (v3)
    {
      objc_msgSend_principalLines(v3, v197, v198, v199, v200, v201);
    }

    else
    {
      memset(v245, 0, 128);
    }

    v210 = objc_msgSend_principalPoints(v3, v197, v198, v199, v200, v201);
    v212 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v244, v211, v19, v125, v243, v160, v166, v172, v242, v241, v240, v239, v185, v187, v189, v191, v178, v203, v205, v207, v209, v245, v210);

    objc_msgSend_addObject_(*(a1 + 40), v213, v212, v214, v215, v216);
    v222 = objc_msgSend_string(v212, v217, v218, v219, v220, v221);
    v228 = objc_msgSend_string(v212, v223, v224, v225, v226, v227);
    v234 = objc_msgSend_length(v228, v229, v230, v231, v232, v233);
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_characterAtIndex_(v222, v235, v234 - 1, v236, v237, v238);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 40), v15, v3, v16, v17, v18);
    v58 = objc_msgSend_string(v3, v53, v54, v55, v56, v57);
    if (objc_msgSend_length(v58, v59, v60, v61, v62, v63))
    {
      v69 = objc_msgSend_string(v3, v64, v65, v66, v67, v68);
      v75 = objc_msgSend_string(v3, v70, v71, v72, v73, v74);
      v81 = objc_msgSend_length(v75, v76, v77, v78, v79, v80);
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_characterAtIndex_(v69, v82, v81 - 1, v83, v84, v85);
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 32;
    }
  }
}

void sub_1839A6BCC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14 = v5;
  if (a3)
  {
    sub_1836AA78C(*(*(*(a1 + 32) + 8) + 40), v5);
    v10 = v14;
  }

  else
  {
    v11 = objc_msgSend_mutableCopy(v5, v5, v6, v7, v8, v9);
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v10 = v14;
  }
}

void sub_1839A7404(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v215 = v11;
  if (!*(a4 + 16) && objc_msgSend_count(*(a1 + 32), v6, v7, v8, v9, v10))
  {
    sub_183992A0C(CHPostprocessingStep, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
    objc_msgSend_removeAllObjects(*(a1 + 32), v12, v13, v14, v15, v16);
    objc_msgSend_removeAllObjects(*(a1 + 40), v17, v18, v19, v20, v21);
  }

  v22 = *(a1 + 64);
  v23 = *(*(*(a1 + 72) + 8) + 40);
  v24 = v11;
  v30 = v23;
  if (v22)
  {
    v31 = objc_msgSend_string(MEMORY[0x1E696AD60], v25, v26, v27, v28, v29);
    v234 = 0;
    v235 = &v234;
    v236 = 0x3032000000;
    v237 = sub_183996F80;
    v238 = sub_183996F90;
    v239 = objc_msgSend_lastComposedCharacter(v30, v32, v33, v34, v35, v36);
    if (!v235[5])
    {
      v235[5] = &stru_1EF1C0318;
    }

    v42 = objc_msgSend_string(v24, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_length(v42, v43, v44, v45, v46, v47);
    v54 = objc_msgSend_length(v235[5], v49, v50, v51, v52, v53) + v48;

    if (v54 > 1)
    {
      v230 = 0;
      v231 = &v230;
      v232 = 0x2020000000;
      v233 = 0;
      v60 = objc_msgSend_string(v24, v55, v56, v57, v58, v59);
      v66 = objc_msgSend_string(v24, v61, v62, v63, v64, v65);
      v72 = objc_msgSend_length(v66, v67, v68, v69, v70, v71);
      *&v222 = MEMORY[0x1E69E9820];
      *(&v222 + 1) = 3221225472;
      *&v223 = sub_1839A7AEC;
      *(&v223 + 1) = &unk_1E6DE0A10;
      *&v224 = v24;
      *(&v224 + 1) = v22;
      *(&v225 + 1) = &v234;
      v73 = v31;
      *&v225 = v73;
      *&v226 = &v230;
      objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v60, v74, 0, v72, 2, &v222);

      v220 = *(v231 + 24);
      v221 = v73;

      _Block_object_dispose(&v230, 8);
    }

    else
    {
      v221 = objc_msgSend_string(v24, v55, v56, v57, v58, v59);
      v220 = 0;
    }

    _Block_object_dispose(&v234, 8);
  }

  else
  {
    v220 = 0;
    v221 = 0;
  }

  v80 = objc_msgSend_properties(v24, v75, v76, v77, v78, v79);
  v86 = objc_msgSend_inputSources(v24, v81, v82, v83, v84, v85);
  v92 = objc_msgSend_wordID(v24, v87, v88, v89, v90, v91);
  v98 = objc_msgSend_string(v24, v93, v94, v95, v96, v97);
  isEqualToString = objc_msgSend_isEqualToString_(v221, v99, v98, v100, v101, v102);

  if ((isEqualToString & 1) == 0)
  {
    v104 = *(a1 + 64);
    v105 = v221;
    v109 = v105;
    if (v104)
    {
      v92 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v106, v105, *(v104 + 24), v107, v108);
      if (!v92)
      {
        v92 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v110, v109, *(v104 + 16), v111, v112);
      }

      LOBYTE(v222) = 0;
      v113 = *(a1 + 64);
      v116 = v109;
      if (v113)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v92 = 0;

      LOBYTE(v222) = 0;
      v113 = *(a1 + 64);
      v116 = v109;
      if (v113)
      {
LABEL_16:
        if (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v114, v116, *(v113 + 16), &v222, v115))
        {

LABEL_19:
          v120 = 4;
          if (v222)
          {
            v120 = 260;
          }

          v80 |= v120;
          goto LABEL_26;
        }

        HasMatchingString = objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v117, v116, *(v113 + 24), &v222, v118);

        if (HasMatchingString)
        {
          goto LABEL_19;
        }

LABEL_25:
        v80 &= 0xFFFFFFFFFFFFFEFBLL;
LABEL_26:
        v121 = 2048;
        if (v220)
        {
          v121 = 128;
        }

        v86 |= v121;
        goto LABEL_29;
      }
    }

    goto LABEL_25;
  }

LABEL_29:
  v122 = [CHTokenizedTextResultToken alloc];
  v128 = objc_msgSend_strokeIndexes(v24, v123, v124, v125, v126, v127);
  objc_msgSend_modelScore(v24, v129, v130, v131, v132, v133);
  v219 = v134;
  objc_msgSend_recognitionScore(v24, v135, v136, v137, v138, v139);
  v218 = v140;
  objc_msgSend_combinedScore(v24, v141, v142, v143, v144, v145);
  v217 = v146;
  objc_msgSend_alignmentScore(v24, v147, v148, v149, v150, v151);
  v216 = v152;
  v158 = objc_msgSend_recognizerSourceLocale(v24, v153, v154, v155, v156, v157);
  v164 = objc_msgSend_substrokeCount(v24, v159, v160, v161, v162, v163);
  objc_msgSend_bounds(v24, v165, v166, v167, v168, v169);
  v171 = v170;
  v173 = v172;
  v175 = v174;
  v177 = v176;
  objc_msgSend_originalBounds(v24, v178, v179, v180, v181, v182);
  v189 = v188;
  v191 = v190;
  v193 = v192;
  v195 = v194;
  if (v24)
  {
    objc_msgSend_principalLines(v24, v183, v184, v185, v186, v187);
  }

  else
  {
    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
  }

  v196 = objc_msgSend_principalPoints(v24, v183, v184, v185, v186, v187);
  v198 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v122, v197, v221, v128, v92, v80, v158, v86, v219, v218, v217, v216, v171, v173, v175, v177, v164, v189, v191, v193, v195, &v222, v196, v215);

  objc_msgSend_addObject_(*(a1 + 32), v199, v198, v200, v201, v202);
  if (((*(a1 + 80) == 0) & v220) != 0)
  {
    objc_msgSend_addObject_(*(a1 + 40), v203, v24, v204, v205, v206);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 40), v203, v198, v204, v205, v206);
  }

  v212 = objc_msgSend_string(v198, v207, v208, v209, v210, v211);
  v213 = *(*(a1 + 72) + 8);
  v214 = *(v213 + 40);
  *(v213 + 40) = v212;
}

void sub_1839A79A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29)
{
  _Block_object_dispose((v34 - 232), 8);
  _Block_object_dispose((v34 - 200), 8);

  _Unwind_Resume(a1);
}

void sub_1839A7AEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v133 = *MEMORY[0x1E69E9840];
  v111 = a2;
  v14 = objc_msgSend_string(*(a1 + 32), v9, v10, v11, v12, v13);
  v20 = objc_msgSend_length(v14, v15, v16, v17, v18, v19);
  v21 = a5 + a6;

  if (v21 >= v20)
  {
    v114 = &stru_1EF1C0318;
  }

  else
  {
    v27 = objc_msgSend_string(*(a1 + 32), v22, v23, v24, v25, v26);
    v32 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v27, v28, v21, v29, v30, v31);
    v34 = v33;

    v40 = objc_msgSend_string(*(a1 + 32), v35, v36, v37, v38, v39);
    v114 = objc_msgSend_substringWithRange_(v40, v41, v32, v34, v42, v43);
  }

  v44 = v111;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = *(*(a1 + 40) + 8);
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v118, v132, 16, v46);
  v117 = v44;
  v115 = v44;
  if (v52)
  {
    v53 = *v119;
    v115 = v44;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v119 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v118 + 1) + 8 * i);
        v56 = objc_msgSend_confusion(v55, v47, v48, v49, v50, v51);
        if (objc_msgSend_isEqualToString_(v117, v57, v56, v58, v59, v60))
        {
          isValidForLocale = objc_msgSend_isValidForLocale_(v55, v61, *(*(a1 + 40) + 32), v62, v63, v64);

          if (isValidForLocale)
          {
            v66 = objc_msgSend_meetsContextRequirementWithLeftContext_rightContext_(v55, v47, *(*(*(a1 + 56) + 8) + 40), v114, v50, v51);
            if (objc_msgSend_requiresLexiconMatch(v55, v67, v68, v69, v70, v71))
            {
              v72 = objc_msgSend_string(*(a1 + 32), v47, v48, v49, v50, v51);
              v77 = objc_msgSend_substringFromIndex_(v72, v73, a3 + a4, v74, v75, v76);

              v78 = MEMORY[0x1E696AEC0];
              v79 = *(a1 + 48);
              v85 = objc_msgSend_correction(v55, v80, v81, v82, v83, v84);
              v90 = objc_msgSend_stringWithFormat_(v78, v86, @"%@%@%@", v87, v88, v89, v79, v85, v77);

              v91 = v90;
              v128 = 0;
              v129 = &v128;
              v130 = 0x2020000000;
              v131 = 0;
              v122 = MEMORY[0x1E69E9820];
              v123 = 3221225472;
              v124 = sub_1839A8098;
              v125 = &unk_1E6DE0A38;
              v127 = &v128;
              v92 = v91;
              v126 = v92;
              LXLexiconEnumerateEntriesForString();
              LOBYTE(v85) = *(v129 + 24);

              _Block_object_dispose(&v128, 8);
              if (v85)
              {
                v93 = 1;
              }

              else
              {
                v94 = v92;
                v128 = 0;
                v129 = &v128;
                v130 = 0x2020000000;
                v131 = 0;
                v122 = MEMORY[0x1E69E9820];
                v123 = 3221225472;
                v124 = sub_1839A8098;
                v125 = &unk_1E6DE0A38;
                v127 = &v128;
                v95 = v94;
                v126 = v95;
                LXLexiconEnumerateEntriesForString();
                v93 = *(v129 + 24);

                _Block_object_dispose(&v128, 8);
              }
            }

            else
            {
              v93 = 1;
            }

            if ((v66 & v93) == 1)
            {
              v96 = objc_msgSend_correction(v55, v47, v48, v49, v50, v51);

              v97 = *(*(a1 + 64) + 8);
              if (*(v97 + 24))
              {
                shouldPreserveOriginal = 1;
              }

              else
              {
                shouldPreserveOriginal = objc_msgSend_shouldPreserveOriginal(v55, v47, v48, v49, v50, v51);
                v97 = *(*(a1 + 64) + 8);
              }

              *(v97 + 24) = shouldPreserveOriginal;
              v115 = v96;
            }
          }
        }

        else
        {
        }
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v118, v132, 16, v51);
    }

    while (v52);
  }

  objc_msgSend_appendString_(*(a1 + 48), v99, v115, v100, v101, v102);
  v108 = objc_msgSend_copy(v115, v103, v104, v105, v106, v107);
  v109 = *(*(a1 + 56) + 8);
  v110 = *(v109 + 40);
  *(v109 + 40) = v108;
}

void sub_1839A8098(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  cf = v5;
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = cf;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  LXEntryGetPartialProbability();
  v10 = v9;
  v14 = objc_msgSend_rangeOfString_options_(*(a1 + 32), v11, v8, 1, v12, v13);
  v16 = v10 > -1.7 && v14 != 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 40) + 8) + 24) = v16;
  *a3 = *(*(*(a1 + 40) + 8) + 24);

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1839A81B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_183695860(&a10);
  _Unwind_Resume(a1);
}

void sub_1839A81D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183695860(va);
  _Unwind_Resume(a1);
}

void sub_1839A81E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18383AB04(va);
  _Unwind_Resume(a1);
}

void sub_1839A8200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18383AB04(va);
  _Unwind_Resume(a1);
}

void sub_1839A8218(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v235[1] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4, a5, a6);
  v7 = qword_1EA84DC20;
  qword_1EA84DC20 = v6;

  v8 = [CHContextualCharacterTransliteration alloc];
  v13 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v9, @"es", v10, v11, v12);
  v235[0] = v13;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v235, 1, v15, v16);
  v23 = objc_msgSend_ch_emptyCharacterSet(MEMORY[0x1E696AB08], v18, v19, v20, v21, v22);
  v214 = 1;
  shouldPreserveOriginal = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v8, v24, @"i", @"¡", v17, v23, 0, 1, v214);

  objc_msgSend_addObject_(qword_1EA84DC20, v25, shouldPreserveOriginal, v26, v27, v28);
  v29 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v35 = objc_msgSend_ch_katakanaCharacterSet(MEMORY[0x1E696AB08], v30, v31, v32, v33, v34);
  objc_msgSend_formUnionWithCharacterSet_(v29, v36, v35, v37, v38, v39);

  v45 = objc_msgSend_ch_hiraganaCharacterSet(MEMORY[0x1E696AB08], v40, v41, v42, v43, v44);
  objc_msgSend_formUnionWithCharacterSet_(v29, v46, v45, v47, v48, v49);

  v55 = objc_msgSend_ch_kanjiCharacterSet(MEMORY[0x1E696AB08], v50, v51, v52, v53, v54);
  objc_msgSend_formUnionWithCharacterSet_(v29, v56, v55, v57, v58, v59);

  v60 = [CHContextualCharacterTransliteration alloc];
  v65 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v61, @"ja", v62, v63, v64);
  v234 = v65;
  v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v66, &v234, 1, v67, v68);
  LOBYTE(v215) = 0;
  v225 = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v60, v70, @"-", @"ー", v69, v29, 0, 0, v215);

  v71 = [CHContextualCharacterTransliteration alloc];
  v76 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v72, @"ja", v73, v74, v75);
  v233 = v76;
  v80 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, &v233, 1, v78, v79);
  LOBYTE(v216) = 0;
  v224 = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v71, v81, @"-", @"ー", v80, 0, v29, 0, v216);

  objc_msgSend_addObject_(qword_1EA84DC20, v82, v225, v83, v84, v85);
  objc_msgSend_addObject_(qword_1EA84DC20, v86, v224, v87, v88, v89);
  v90 = [CHContextualCharacterTransliteration alloc];
  v95 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v91, @"ja", v92, v93, v94);
  v232 = v95;
  v99 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v96, &v232, 1, v97, v98);
  v104 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v100, @"加", v101, v102, v103);
  LOBYTE(v217) = 1;
  v223 = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v90, v105, @"I", @"工", v99, v104, 0, 0, v217);

  objc_msgSend_addObject_(qword_1EA84DC20, v106, v223, v107, v108, v109);
  v110 = [CHContextualCharacterTransliteration alloc];
  v115 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v111, @"zh", v112, v113, v114);
  v231 = v115;
  v119 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v116, &v231, 1, v117, v118);
  v125 = objc_msgSend_ch_kanjiCharacterSet(MEMORY[0x1E696AB08], v120, v121, v122, v123, v124);
  LOBYTE(v218) = 0;
  v127 = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v110, v126, @"-", @"一", v119, v125, 0, 0, v218);

  v128 = [CHContextualCharacterTransliteration alloc];
  v133 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v129, @"zh", v130, v131, v132);
  v230 = v133;
  v137 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v134, &v230, 1, v135, v136);
  v143 = objc_msgSend_ch_kanjiCharacterSet(MEMORY[0x1E696AB08], v138, v139, v140, v141, v142);
  LOBYTE(v219) = 0;
  v145 = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v128, v144, @"-", @"一", v137, 0, v143, 0, v219);

  objc_msgSend_addObject_(qword_1EA84DC20, v146, v127, v147, v148, v149);
  objc_msgSend_addObject_(qword_1EA84DC20, v150, v145, v151, v152, v153);
  v154 = [CHContextualCharacterTransliteration alloc];
  v159 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v155, @"uk", v156, v157, v158);
  v229 = v159;
  v163 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v160, &v229, 1, v161, v162);
  LOBYTE(v220) = 1;
  v165 = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v154, v164, @"Г", @"Ґ", v163, 0, 0, 1, v220);

  v166 = [CHContextualCharacterTransliteration alloc];
  v171 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v167, @"uk", v168, v169, v170);
  v228 = v171;
  v175 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v172, &v228, 1, v173, v174);
  LOBYTE(v221) = 1;
  v177 = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v166, v176, @"г", @"ґ", v175, 0, 0, 1, v221);

  objc_msgSend_addObject_(qword_1EA84DC20, v178, v165, v179, v180, v181);
  objc_msgSend_addObject_(qword_1EA84DC20, v182, v177, v183, v184, v185);
  v186 = [CHContextualCharacterTransliteration alloc];
  v191 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v187, @"uk", v188, v189, v190);
  v227 = v191;
  v195 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v192, &v227, 1, v193, v194);
  v201 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v196, v197, v198, v199, v200);
  v207 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v202, v203, v204, v205, v206);
  LOBYTE(v222) = 0;
  v209 = objc_msgSend_initWithConfusion_correction_locales_leftContext_rightContext_requiresLexiconMatch_shouldPreserveOriginal_(v186, v208, @"'", @"ʼ", v195, v201, v207, 0, v222);

  objc_msgSend_addObject_(qword_1EA84DC20, v210, v209, v211, v212, v213);
}

void sub_1839A8CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1839A9248(uint64_t a1, void *a2)
{
  v3 = a2;
  v206 = v3;
  if (*(a1 + 64))
  {
    objc_msgSend_addObject_(*(a1 + 56), v3, v3, v4, v5, v6);
    goto LABEL_71;
  }

  objc_msgSend_addObject_(*(a1 + 32), v3, v3, v4, v5, v6);
  v17 = objc_msgSend_leftContext(*(a1 + 40), v7, v8, v9, v10, v11);
  if (v17)
  {
    v18 = objc_msgSend_leftContext(*(a1 + 40), v12, v13, v14, v15, v16);
    if (objc_msgSend_length(v18, v19, v20, v21, v22, v23))
    {
      v29 = objc_msgSend_properties(v206, v24, v25, v26, v27, v28);

      if ((v29 & 0x20) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }
  }

  v34 = *(a1 + 48);
  v35 = v206;
  v41 = v35;
  if (!v34 || (objc_msgSend_string(v35, v36, v37, v38, v39, v40), v42 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend_length(v42, v43, v44, v45, v46, v47), v42, v48 != 1))
  {

LABEL_69:
    v197 = 0;
    objc_msgSend_addObject_(*(a1 + 56), v30, v206, v31, v32, v33);
    goto LABEL_70;
  }

  v205 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v49, @"es_ES", v50, v51, v52);
  v58 = objc_msgSend_string(v41, v53, v54, v55, v56, v57);
  v63 = objc_msgSend_lowercaseStringWithLocale_(v58, v59, v205, v60, v61, v62);

  v64 = v63;
  v204 = v63;
  v70 = objc_msgSend_UTF8String(v64, v65, v66, v67, v68, v69);
  v71 = strlen(v70);
  if (v71 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v77 = v71;
  v203 = v41;
  if (v71 >= 0x17)
  {
    operator new();
  }

  BYTE7(v208) = v71;
  if (v71)
  {
    memmove(&__dst, v70, v71);
    *(&__dst + v77) = 0;
    v79 = v34 + 16;
    v78 = *(v34 + 16);
    v80 = BYTE7(v208);
    if (!v78)
    {
LABEL_56:
      v83 = v79;
      goto LABEL_57;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v79 = v34 + 16;
    v78 = *(v34 + 16);
    v80 = BYTE7(v208);
    if (!v78)
    {
      goto LABEL_56;
    }
  }

  if ((v80 & 0x80u) == 0)
  {
    v81 = v80;
  }

  else
  {
    v81 = *(&__dst + 1);
  }

  if ((v80 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v83 = v79;
  do
  {
    v84 = *(v78 + 55);
    if (v84 >= 0)
    {
      v85 = *(v78 + 55);
    }

    else
    {
      v85 = *(v78 + 40);
    }

    if (v84 >= 0)
    {
      v86 = (v78 + 32);
    }

    else
    {
      v86 = *(v78 + 32);
    }

    if (v81 >= v85)
    {
      v87 = v85;
    }

    else
    {
      v87 = v81;
    }

    v88 = memcmp(v86, p_dst, v87);
    v89 = v85 < v81;
    if (v88)
    {
      v89 = v88 < 0;
    }

    v90 = !v89;
    if (v89)
    {
      v91 = 8;
    }

    else
    {
      v91 = 0;
    }

    if (v90)
    {
      v83 = v78;
    }

    v78 = *(v78 + v91);
  }

  while (v78);
  if (v83 == v79)
  {
    goto LABEL_56;
  }

  v92 = *(v83 + 55);
  if (v92 >= 0)
  {
    v93 = *(v83 + 55);
  }

  else
  {
    v93 = *(v83 + 40);
  }

  if (v92 >= 0)
  {
    v94 = (v83 + 32);
  }

  else
  {
    v94 = *(v83 + 32);
  }

  if (v93 >= v81)
  {
    v95 = v81;
  }

  else
  {
    v95 = v93;
  }

  v96 = memcmp(p_dst, v94, v95);
  v97 = v81 < v93;
  if (v96)
  {
    v97 = v96 < 0;
  }

  if (v97)
  {
    goto LABEL_56;
  }

LABEL_57:
  if ((v80 & 0x80) != 0)
  {
    operator delete(__dst);
  }

  if (v83 == v34 + 16 || (objc_msgSend_recognitionScore(v203, v72, v73, v74, v75, v76), v103 >= *(v83 + 80)))
  {

    goto LABEL_69;
  }

  v104 = objc_msgSend_properties(v203, v98, v99, v100, v101, v102);
  v108 = [CHTokenizedTextResultToken alloc];
  v109 = (v83 + 56);
  if (*(v83 + 79) < 0)
  {
    v109 = *v109;
  }

  v110 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v105, v109, 4, v106, v107);
  v116 = objc_msgSend_strokeIndexes(v203, v111, v112, v113, v114, v115);
  v202 = objc_msgSend_wordID(v203, v117, v118, v119, v120, v121);
  objc_msgSend_modelScore(v203, v122, v123, v124, v125, v126);
  v201 = v127;
  objc_msgSend_recognitionScore(v203, v128, v129, v130, v131, v132);
  v200 = v133;
  objc_msgSend_combinedScore(v203, v134, v135, v136, v137, v138);
  v199 = v139;
  objc_msgSend_alignmentScore(v203, v140, v141, v142, v143, v144);
  v198 = v145;
  v151 = objc_msgSend_recognizerSourceLocale(v203, v146, v147, v148, v149, v150);
  v157 = objc_msgSend_inputSources(v203, v152, v153, v154, v155, v156);
  v163 = objc_msgSend_substrokeCount(v203, v158, v159, v160, v161, v162);
  objc_msgSend_bounds(v203, v164, v165, v166, v167, v168);
  v170 = v169;
  v172 = v171;
  v174 = v173;
  v176 = v175;
  objc_msgSend_originalBounds(v203, v177, v178, v179, v180, v181);
  v188 = v187;
  v190 = v189;
  v192 = v191;
  v194 = v193;
  if (v203)
  {
    objc_msgSend_principalLines(v203, v182, v183, v184, v185, v186);
  }

  else
  {
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    __dst = 0u;
    v208 = 0u;
  }

  v195 = objc_msgSend_principalPoints(v203, v182, v183, v184, v185, v186);
  v197 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v108, v196, v110, v116, v202, v104 & 0xFFFFFFFFFFFFFEFBLL, v151, v157 | 0x80, v201, v200, v199, v198, v170, v172, v174, v176, v163, v188, v190, v192, v194, &__dst, v195);

  if (!v197)
  {
    goto LABEL_69;
  }

  objc_msgSend_addObject_(*(a1 + 56), v30, v197, v31, v32, v33);
LABEL_70:

LABEL_71:
}

void sub_1839A9C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1839AA2B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0179OoqVv", a4, a5, a6);
  v7 = qword_1EA84DC30;
  qword_1EA84DC30 = v6;

  v12 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v8, @"٠١٢٣٤٥٦٧٨٩.", v9, v10, v11);
  v13 = qword_1EA84DC38;
  qword_1EA84DC38 = v12;
}

void sub_1839AA32C(uint64_t a1, void *a2)
{
  v8 = a2;
  if (!*(a1 + 72))
  {
    v9 = objc_msgSend_result(*(a1 + 32), v3, v4, v5, v6, v7);
    v15 = objc_msgSend_tokenColumnCount(v9, v10, v11, v12, v13, v14);

    if (v15 == 1)
    {
      v16 = sub_1839AAB5C(*(a1 + 40), v8, *(a1 + 40) + 8);
      v22 = sub_1839AAB5C(*(a1 + 40), v8, *(a1 + 40) + 32);
      if (v16 | v22)
      {
        if ((objc_msgSend_properties(v8, v17, v18, v19, v20, v21) & 0x20) != 0)
        {
          v33 = objc_msgSend_objectForKey_(*(a1 + 48), v23, CHRecognitionOptionIsPreviousResultCharacterLevel, v25, v26, v27);
          isEqual = objc_msgSend_isEqual_(v33, v34, MEMORY[0x1E695E118], v35, v36, v37);
        }

        else
        {
          isEqual = 1;
        }

        v43 = objc_msgSend_leftContext(*(a1 + 32), v23, v24, v25, v26, v27);
        if (v43)
        {
          v44 = objc_msgSend_leftContext(*(a1 + 32), v38, v39, v40, v41, v42);
          v50 = objc_msgSend_length(v44, v45, v46, v47, v48, v49);

          if (v50)
          {
            v52 = objc_msgSend_leftContext(*(a1 + 32), v38, v51, v40, v41, v42);
            v58 = objc_msgSend_lastComposedCharacter(v52, v53, v54, v55, v56, v57);
            LODWORD(v50) = sub_1837A94F4(v58);

            if (v50)
            {
              v60 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v38, v59, v40, v41, v42);
              v66 = objc_msgSend_leftContext(*(a1 + 32), v61, v62, v63, v64, v65);
              v72 = objc_msgSend_leftContext(*(a1 + 32), v67, v68, v69, v70, v71);
              v78 = objc_msgSend_length(v72, v73, v74, v75, v76, v77);
              v83 = objc_msgSend_characterAtIndex_(v66, v79, v78 - 1, v80, v81, v82);
              LODWORD(v50) = objc_msgSend_characterIsMember_(v60, v84, v83, v85, v86, v87);

              v88 = 0;
              v89 = 1;
              if (!v16)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v88 = 0;
              v89 = 0;
              if (!v16)
              {
                goto LABEL_32;
              }
            }

LABEL_25:
            if ((v50 & 1) == 0)
            {
              v120 = v88 | isEqual & v89;
              v121 = *(a1 + 56);
              if (v120)
              {
                objc_msgSend_addObject_(v121, v38, v16, v40, v41, v42);
              }

              else
              {
                objc_msgSend_addObject_(v121, v38, v8, v40, v41, v42);
              }

              v126 = *(a1 + 64);
              if (!v120)
              {
                objc_msgSend_addObject_(v126, v122, v16, v123, v124, v125);
                goto LABEL_47;
              }

              goto LABEL_30;
            }

LABEL_32:
            if (!v22)
            {
              goto LABEL_47;
            }

            v127 = v88 | isEqual & v50;
            v128 = *(a1 + 56);
            if (v127)
            {
              objc_msgSend_addObject_(v128, v38, v22, v40, v41, v42);
            }

            else
            {
              objc_msgSend_addObject_(v128, v38, v8, v40, v41, v42);
            }

            v126 = *(a1 + 64);
            if (!v127)
            {
              objc_msgSend_addObject_(v126, v122, v22, v123, v124, v125);
              goto LABEL_47;
            }

LABEL_30:
            objc_msgSend_addObject_(v126, v122, v8, v123, v124, v125);
            goto LABEL_47;
          }
        }

        else
        {
          LODWORD(v50) = 0;
        }

        v89 = 0;
        v88 = 1;
        if (!v16)
        {
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (*(a1 + 72))
      {
LABEL_9:
        objc_msgSend_addObject_(*(a1 + 56), v17, v8, v19, v20, v21);
        objc_msgSend_addObject_(*(a1 + 64), v29, v8, v30, v31, v32);
LABEL_47:

        goto LABEL_7;
      }

      v90 = objc_msgSend_string(v8, v17, v18, v19, v20, v21);
      v91 = sub_1837A4F0C(v90, qword_1EA84DC30);

      if (v91)
      {
        v93 = sub_1839AB01C(*(a1 + 40), v8, *(a1 + 40) + 32);
        v104 = objc_msgSend_leftContext(*(a1 + 32), v94, v95, v96, v97, v98);
        if (v104 && (objc_msgSend_leftContext(*(a1 + 32), v99, v100, v101, v102, v103), v105 = objc_claimAutoreleasedReturnValue(), objc_msgSend_ch_arabicDigitSet(MEMORY[0x1E696AB08], v106, v107, v108, v109, v110), v111 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v105, v112, v111, 1, v113, v114), v111, v105, v104, (LODWORD(v104) = v115 > 0) != 0))
        {
          objc_msgSend_addObject_(*(a1 + 56), v99, v93, v101, v102, v103);
        }

        else
        {
          objc_msgSend_addObject_(*(a1 + 56), v99, v8, v101, v102, v103);
        }

        v230 = *(a1 + 64);
        if (v104)
        {
          objc_msgSend_addObject_(v230, v116, v8, v117, v118, v119);
        }

        else
        {
          objc_msgSend_addObject_(v230, v116, v93, v117, v118, v119);
        }
      }

      else
      {
        if (*(a1 + 72))
        {
          goto LABEL_9;
        }

        v129 = objc_msgSend_string(v8, v17, v92, v19, v20, v21);
        v130 = sub_1837A4F0C(v129, qword_1EA84DC38);

        if (!v130)
        {
          goto LABEL_9;
        }

        v131 = [CHTokenizedTextResultToken alloc];
        v248 = objc_msgSend_string(v8, v132, v133, v134, v135, v136);
        v247 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v248, v137, @".", @"٠", v138, v139);
        v145 = objc_msgSend_strokeIndexes(v8, v140, v141, v142, v143, v144);
        v246 = v131;
        v245 = objc_msgSend_wordID(v8, v146, v147, v148, v149, v150);
        objc_msgSend_modelScore(v8, v151, v152, v153, v154, v155);
        v244 = v156;
        objc_msgSend_recognitionScore(v8, v157, v158, v159, v160, v161);
        v243 = v162;
        objc_msgSend_combinedScore(v8, v163, v164, v165, v166, v167);
        v242 = v168;
        objc_msgSend_alignmentScore(v8, v169, v170, v171, v172, v173);
        v241 = v174;
        v180 = objc_msgSend_properties(v8, v175, v176, v177, v178, v179);
        v186 = objc_msgSend_recognizerSourceLocale(v8, v181, v182, v183, v184, v185);
        v192 = objc_msgSend_inputSources(v8, v187, v188, v189, v190, v191);
        v198 = objc_msgSend_substrokeCount(v8, v193, v194, v195, v196, v197);
        objc_msgSend_bounds(v8, v199, v200, v201, v202, v203);
        v205 = v204;
        v207 = v206;
        v209 = v208;
        v211 = v210;
        objc_msgSend_originalBounds(v8, v212, v213, v214, v215, v216);
        v223 = v222;
        v225 = v224;
        v227 = v226;
        v229 = v228;
        if (v8)
        {
          objc_msgSend_principalLines(v8, v217, v218, v219, v220, v221);
        }

        else
        {
          memset(v249, 0, 128);
        }

        v231 = objc_msgSend_principalPoints(v8, v217, v218, v219, v220, v221);
        v93 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v246, v232, v247, v145, v245, v180, v186, v192 | 0x80, v244, v243, v242, v241, v205, v207, v209, v211, v198, v223, v225, v227, v229, v249, v231);

        objc_msgSend_addObject_(*(a1 + 56), v233, v8, v234, v235, v236);
        objc_msgSend_addObject_(*(a1 + 64), v237, v93, v238, v239, v240);
      }

      goto LABEL_47;
    }
  }

  objc_msgSend_addObject_(*(a1 + 56), v3, v8, v5, v6, v7);
LABEL_7:
}

id sub_1839AAB5C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (!a1)
  {
    goto LABEL_58;
  }

  v12 = objc_msgSend_string(v5, v6, v7, v8, v9, v10);
  v18 = objc_msgSend_length(v12, v13, v14, v15, v16, v17);

  if (v18 != 1)
  {
    goto LABEL_58;
  }

  v24 = objc_msgSend_string(v11, v19, v20, v21, v22, v23);
  v25 = v24;
  v31 = objc_msgSend_UTF8String(v25, v26, v27, v28, v29, v30);
  v32 = strlen(v31);
  if (v32 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v33 = v32;
  if (v32 >= 0x17)
  {
    operator new();
  }

  BYTE7(v168) = v32;
  if (v32)
  {
    memmove(&__dst, v31, v32);
    *(&__dst + v33) = 0;
    v38 = *(a3 + 8);
    v34 = a3 + 8;
    v35 = v38;
    v37 = BYTE7(v168);
    if (!v38)
    {
      goto LABEL_48;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v36 = *(a3 + 8);
    v34 = a3 + 8;
    v35 = v36;
    v37 = BYTE7(v168);
    if (!v36)
    {
      goto LABEL_48;
    }
  }

  if ((v37 & 0x80u) == 0)
  {
    v39 = v37;
  }

  else
  {
    v39 = *(&__dst + 1);
  }

  if ((v37 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v41 = v34;
  do
  {
    v42 = *(v35 + 55);
    if (v42 >= 0)
    {
      v43 = *(v35 + 55);
    }

    else
    {
      v43 = *(v35 + 40);
    }

    if (v42 >= 0)
    {
      v44 = (v35 + 32);
    }

    else
    {
      v44 = *(v35 + 32);
    }

    if (v39 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v39;
    }

    v46 = memcmp(v44, p_dst, v45);
    v47 = v43 < v39;
    if (v46)
    {
      v47 = v46 < 0;
    }

    v48 = !v47;
    if (v47)
    {
      v49 = 8;
    }

    else
    {
      v49 = 0;
    }

    if (v48)
    {
      v41 = v35;
    }

    v35 = *(v35 + v49);
  }

  while (v35);
  if (v41 == v34)
  {
    goto LABEL_48;
  }

  v50 = *(v41 + 55);
  if (v50 >= 0)
  {
    v51 = *(v41 + 55);
  }

  else
  {
    v51 = *(v41 + 40);
  }

  if (v50 >= 0)
  {
    v52 = (v41 + 32);
  }

  else
  {
    v52 = *(v41 + 32);
  }

  if (v51 >= v39)
  {
    v53 = v39;
  }

  else
  {
    v53 = v51;
  }

  v54 = memcmp(p_dst, v52, v53);
  v55 = v39 < v51;
  if (v54)
  {
    v55 = v54 < 0;
  }

  if (v55)
  {
LABEL_48:
    v41 = v34;
    if ((v37 & 0x80) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  if ((v37 & 0x80) != 0)
  {
LABEL_49:
    operator delete(__dst);

    if (v41 == v34)
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

LABEL_52:

  if (v41 == v34)
  {
LABEL_58:
    v159 = 0;
    goto LABEL_59;
  }

LABEL_53:
  objc_msgSend_recognitionScore(v11, v56, v57, v58, v59, v60);
  if (v66 >= *(v41 + 80))
  {
    goto LABEL_58;
  }

  v67 = objc_msgSend_properties(v11, v61, v62, v63, v64, v65);
  v71 = [CHTokenizedTextResultToken alloc];
  v72 = (v41 + 56);
  if (*(v41 + 79) < 0)
  {
    v72 = *v72;
  }

  v73 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v68, v72, 4, v69, v70);
  v79 = objc_msgSend_strokeIndexes(v11, v74, v75, v76, v77, v78);
  v85 = objc_msgSend_wordID(v11, v80, v81, v82, v83, v84);
  objc_msgSend_modelScore(v11, v86, v87, v88, v89, v90);
  v166 = v91;
  objc_msgSend_recognitionScore(v11, v92, v93, v94, v95, v96);
  v165 = v97;
  objc_msgSend_combinedScore(v11, v98, v99, v100, v101, v102);
  v164 = v103;
  objc_msgSend_alignmentScore(v11, v104, v105, v106, v107, v108);
  v163 = v109;
  v115 = objc_msgSend_recognizerSourceLocale(v11, v110, v111, v112, v113, v114);
  v121 = objc_msgSend_inputSources(v11, v116, v117, v118, v119, v120);
  v127 = objc_msgSend_substrokeCount(v11, v122, v123, v124, v125, v126);
  objc_msgSend_bounds(v11, v128, v129, v130, v131, v132);
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  objc_msgSend_originalBounds(v11, v141, v142, v143, v144, v145);
  v152 = v151;
  v154 = v153;
  v156 = v155;
  v158 = v157;
  if (v11)
  {
    objc_msgSend_principalLines(v11, v146, v147, v148, v149, v150);
  }

  else
  {
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    __dst = 0u;
    v168 = 0u;
  }

  v161 = objc_msgSend_principalPoints(v11, v146, v147, v148, v149, v150);
  v159 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v71, v162, v73, v79, v85, v67 & 0xFFFFFFFFFFFFFFFBLL, v115, v121 | 0x80, v166, v165, v164, v163, v134, v136, v138, v140, v127, v152, v154, v156, v158, &__dst, v161);

LABEL_59:

  return v159;
}

id sub_1839AB01C(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a1)
  {
    v127 = objc_msgSend_string(MEMORY[0x1E696AD60], v5, v6, v7, v8, v9);
    v16 = objc_msgSend_string(v10, v11, v12, v13, v14, v15);
    v22 = objc_msgSend_string(v10, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_length(v22, v23, v24, v25, v26, v27);
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = sub_1839AB388;
    v133[3] = &unk_1E6DE0AB0;
    v135 = a3;
    v29 = v127;
    v134 = v29;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v16, v30, 0, v28, 2, v133);

    v36 = objc_msgSend_properties(v10, v31, v32, v33, v34, v35);
    v37 = [CHTokenizedTextResultToken alloc];
    v43 = objc_msgSend_strokeIndexes(v10, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_wordID(v10, v44, v45, v46, v47, v48);
    objc_msgSend_modelScore(v10, v50, v51, v52, v53, v54);
    v131 = v55;
    objc_msgSend_recognitionScore(v10, v56, v57, v58, v59, v60);
    v130 = v61;
    objc_msgSend_combinedScore(v10, v62, v63, v64, v65, v66);
    v129 = v67;
    objc_msgSend_alignmentScore(v10, v68, v69, v70, v71, v72);
    v128 = v73;
    v79 = objc_msgSend_recognizerSourceLocale(v10, v74, v75, v76, v77, v78);
    v85 = objc_msgSend_inputSources(v10, v80, v81, v82, v83, v84);
    v91 = objc_msgSend_substrokeCount(v10, v86, v87, v88, v89, v90);
    objc_msgSend_bounds(v10, v92, v93, v94, v95, v96);
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    objc_msgSend_originalBounds(v10, v105, v106, v107, v108, v109);
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    if (v10)
    {
      objc_msgSend_principalLines(v10, v110, v111, v112, v113, v114);
    }

    else
    {
      memset(v132, 0, sizeof(v132));
    }

    v123 = objc_msgSend_principalPoints(v10, v110, v111, v112, v113, v114);
    v125 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v37, v124, v29, v43, v49, v36 & 0xFFFFFFFFFFFFFFFBLL, v79, v85 | 0x80, v131, v130, v129, v128, v98, v100, v102, v104, v91, v116, v118, v120, v122, v132, v123);
  }

  else
  {
    v125 = 0;
  }

  return v125;
}

void sub_1839AB388(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 40);
  v38 = v3;
  v11 = objc_msgSend_UTF8String(v38, v6, v7, v8, v9, v10);
  v12 = strlen(v11);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v40 = v12;
  if (v12)
  {
    memmove(__dst, v11, v12);
    *(__dst + v13) = 0;
    v14 = *(v5 + 8);
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_31:
    operator new();
  }

  LOBYTE(__dst[0]) = 0;
  v14 = *(v5 + 8);
  if (!v14)
  {
    goto LABEL_31;
  }

LABEL_5:
  if ((v40 & 0x80u) == 0)
  {
    v15 = v40;
  }

  else
  {
    v15 = __dst[1];
  }

  if ((v40 & 0x80u) == 0)
  {
    v16 = __dst;
  }

  else
  {
    v16 = __dst[0];
  }

  while (1)
  {
    while (1)
    {
      v17 = v14;
      v20 = v14[4];
      v18 = v14 + 4;
      v19 = v20;
      v21 = *(v18 + 23);
      if (v21 >= 0)
      {
        v22 = *(v18 + 23);
      }

      else
      {
        v22 = v18[1];
      }

      if (v21 >= 0)
      {
        v23 = v18;
      }

      else
      {
        v23 = v19;
      }

      if (v22 >= v15)
      {
        v24 = v15;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v16, v23, v24);
      v26 = v15 < v22;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        break;
      }

      v14 = *v17;
      if (!*v17)
      {
        goto LABEL_31;
      }
    }

    v27 = memcmp(v23, v16, v24);
    v31 = v22 < v15;
    if (v27)
    {
      v31 = v27 < 0;
    }

    if (!v31)
    {
      break;
    }

    v14 = v17[1];
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  v37 = v17 + 7;
  if (*(v17 + 79) < 0)
  {
    v37 = *v37;
  }

  v36 = objc_msgSend_stringWithCString_encoding_(v4, v28, v37, 4, v29, v30);
  if (v40 < 0)
  {
    operator delete(__dst[0]);
  }

  objc_msgSend_appendString_(*(a1 + 32), v32, v36, v33, v34, v35);
}

void sub_1839AB63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1839AC2DC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v4, v3, v5, v6, v7);
  v8 = objc_opt_class();
  v14 = objc_msgSend_string(v3, v9, v10, v11, v12, v13);
  v18 = objc_msgSend_transliterateStringUsingICUTransliterator__icuTransliterator_(v8, v15, v14, *(*(a1 + 40) + 8), v16, v17);

  v122 = v18;
  v19 = [CHTokenizedTextResultToken alloc];
  v25 = objc_msgSend_strokeIndexes(v3, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_wordID(v3, v26, v27, v28, v29, v30);
  objc_msgSend_modelScore(v3, v32, v33, v34, v35, v36);
  v121 = v37;
  objc_msgSend_recognitionScore(v3, v38, v39, v40, v41, v42);
  v120 = v43;
  objc_msgSend_combinedScore(v3, v44, v45, v46, v47, v48);
  v119 = v49;
  objc_msgSend_alignmentScore(v3, v50, v51, v52, v53, v54);
  v118 = v55;
  v61 = objc_msgSend_properties(v3, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_recognizerSourceLocale(v3, v62, v63, v64, v65, v66);
  v73 = objc_msgSend_inputSources(v3, v68, v69, v70, v71, v72);
  v79 = objc_msgSend_substrokeCount(v3, v74, v75, v76, v77, v78);
  objc_msgSend_bounds(v3, v80, v81, v82, v83, v84);
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  objc_msgSend_originalBounds(v3, v93, v94, v95, v96, v97);
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  if (v3)
  {
    objc_msgSend_principalLines(v3, v98, v99, v100, v101, v102);
  }

  else
  {
    memset(v123, 0, 128);
  }

  v111 = objc_msgSend_principalPoints(v3, v98, v99, v100, v101, v102);
  v113 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v19, v112, v122, v25, v31, v61, v67, v73 | 8, v121, v120, v119, v118, v86, v88, v90, v92, v79, v104, v106, v108, v110, v123, v111);

  objc_msgSend_addObject_(*(a1 + 48), v114, v113, v115, v116, v117);
}

void sub_1839AC620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHReorderSCTCConfusionStep;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1839ACA50(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_string(v3, v4, v5, v6, v7, v8);
  v15 = objc_msgSend__crStringByRemovingInvalidArabicDiacritics(v9, v10, v11, v12, v13, v14);

  v21 = objc_msgSend_string(v3, v16, v17, v18, v19, v20);
  isEqualToString = objc_msgSend_isEqualToString_(v15, v22, v21, v23, v24, v25);

  if (isEqualToString)
  {
    objc_msgSend_addObject_(*(a1 + 32), v27, v3, v28, v29, v30);
  }

  else
  {
    v31 = [CHTokenizedTextResultToken alloc];
    v37 = objc_msgSend_strokeIndexes(v3, v32, v33, v34, v35, v36);
    v133 = objc_msgSend_wordID(v3, v38, v39, v40, v41, v42);
    objc_msgSend_modelScore(v3, v43, v44, v45, v46, v47);
    v132 = v48;
    objc_msgSend_recognitionScore(v3, v49, v50, v51, v52, v53);
    v131 = v54;
    objc_msgSend_combinedScore(v3, v55, v56, v57, v58, v59);
    v130 = v60;
    objc_msgSend_alignmentScore(v3, v61, v62, v63, v64, v65);
    v129 = v66;
    v72 = objc_msgSend_properties(v3, v67, v68, v69, v70, v71);
    v78 = objc_msgSend_recognizerSourceLocale(v3, v73, v74, v75, v76, v77);
    v84 = objc_msgSend_inputSources(v3, v79, v80, v81, v82, v83);
    v90 = objc_msgSend_substrokeCount(v3, v85, v86, v87, v88, v89);
    objc_msgSend_bounds(v3, v91, v92, v93, v94, v95);
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    objc_msgSend_originalBounds(v3, v104, v105, v106, v107, v108);
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;
    if (v3)
    {
      objc_msgSend_principalLines(v3, v109, v110, v111, v112, v113);
    }

    else
    {
      memset(v134, 0, 128);
    }

    v122 = objc_msgSend_principalPoints(v3, v109, v110, v111, v112, v113);
    v124 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v31, v123, v15, v37, v133, v72, v78, v84 | 0x400, v132, v131, v130, v129, v97, v99, v101, v103, v90, v115, v117, v119, v121, v134, v122);

    objc_msgSend_addObject_(*(a1 + 32), v125, v124, v126, v127, v128);
  }
}

void sub_1839ADE18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1839ADF2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1839ADF6C(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v8 = objc_msgSend_string(MEMORY[0x1E696AD60], v3, v4, v5, v6, v7);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v2;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16, v11);
  if (v17)
  {
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v20 = objc_msgSend_string(*(*(&v26 + 1) + 8 * i), v12, v13, v14, v15, v16, v26);
        objc_msgSend_appendString_(v8, v21, v20, v22, v23, v24);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v26, v30, 16, v16);
    }

    while (v17);
  }

  return v8;
}

uint64_t sub_1839AE0F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9 = objc_msgSend_length(v3, v4, v5, v6, v7, v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1839AE1E8;
  v13[3] = &unk_1E6DDE110;
  v13[4] = a1;
  v13[5] = &v14;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v3, v10, 0, v9, 2, v13);
  v11 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void sub_1839AE1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1839AE1E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_stringByTrimmingCharactersInSet_(a2, a2, *(*(a1 + 32) + 8), a4, a5, a6);
  v13 = objc_msgSend_length(v7, v8, v9, v10, v11, v12);

  if (v13)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

id sub_1839AE9FC(uint64_t a1, void *a2)
{
  v143 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = objc_msgSend_string(v3, v4, v5, v6, v7, v8);
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v10 = *(*(a1 + 32) + 16);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v138, v142, 16, v12);
  if (v17)
  {
    v18 = *v139;
    do
    {
      v19 = 0;
      v20 = v9;
      do
      {
        if (*v139 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v21 = *(*(&v138 + 1) + 8 * v19);
        v22 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 16), v13, v21, v14, v15, v16);
        v9 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v20, v23, v21, v22, v24, v25);

        ++v19;
        v20 = v9;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v138, v142, 16, v16);
    }

    while (v17);
  }

  v31 = objc_msgSend_string(v3, v26, v27, v28, v29, v30);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v32, v31, v33, v34, v35);

  if ((isEqualToString & 1) == 0)
  {
    v37 = [CHTokenizedTextResultToken alloc];
    v43 = objc_msgSend_strokeIndexes(v3, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_wordID(v3, v44, v45, v46, v47, v48);
    objc_msgSend_modelScore(v3, v50, v51, v52, v53, v54);
    v136 = v55;
    objc_msgSend_recognitionScore(v3, v56, v57, v58, v59, v60);
    v135 = v61;
    objc_msgSend_combinedScore(v3, v62, v63, v64, v65, v66);
    v134 = v67;
    objc_msgSend_alignmentScore(v3, v68, v69, v70, v71, v72);
    v133 = v73;
    v79 = objc_msgSend_properties(v3, v74, v75, v76, v77, v78);
    v85 = objc_msgSend_recognizerSourceLocale(v3, v80, v81, v82, v83, v84);
    v91 = objc_msgSend_inputSources(v3, v86, v87, v88, v89, v90);
    v97 = objc_msgSend_substrokeCount(v3, v92, v93, v94, v95, v96);
    objc_msgSend_bounds(v3, v98, v99, v100, v101, v102);
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    objc_msgSend_originalBounds(v3, v111, v112, v113, v114, v115);
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v128 = v127;
    if (v3)
    {
      objc_msgSend_principalLines(v3, v116, v117, v118, v119, v120);
    }

    else
    {
      memset(v137, 0, sizeof(v137));
    }

    v129 = objc_msgSend_principalPoints(v3, v116, v117, v118, v119, v120);
    v131 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v37, v130, v9, v43, v49, v79, v85, v91 | 0x80, v136, v135, v134, v133, v104, v106, v108, v110, v97, v122, v124, v126, v128, v137, v129);

    v3 = v131;
  }

  return v3;
}

uint64_t sub_1839AED94(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_1839ADF6C(CHNumberFieldResultReorderingStep, a2);
  v7 = sub_1839ADF6C(CHNumberFieldResultReorderingStep, v5);
  v8 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  if (v8)
  {
    v11 = sub_1839AE0F8(v8, v9);
    v12 = sub_1839AE0F8(v8, v10);
    if (v11 < v12)
    {
      v13 = -1;
    }

    else
    {
      v13 = v11 > v12;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1839AF230(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v6;
  if (a1)
  {
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = objc_msgSend_string(v5, v7, v8, v9, v10, v11);
    }

    v19 = v13;
    if (*(a1 + 32))
    {
      TokenIDForString = LMLanguageModelGetTokenIDForString();
      v21 = objc_opt_class();
      v130 = objc_msgSend_normalizeLMTokenIDForWord_tokenID_isFromPattern_score_wordLanguageModel_(v21, v22, v19, TokenIDForString, 0, 0, *(a1 + 32));
    }

    else
    {
      v130 = 0;
    }

    v23 = objc_msgSend_properties(v5, v14, v15, v16, v17, v18);
    v29 = objc_msgSend_inputSources(v5, v24, v25, v26, v27, v28);
    isInappropriateString = objc_msgSend_isInappropriateString_(*(a1 + 40), v30, v19, v31, v32, v33);
    if (v12 && (objc_msgSend_string(v5, v34, v35, v36, v37, v38), v40 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v12, v41, v40, v42, v43, v44), v40, (isEqualToString & 1) == 0))
    {
      v47 = 16;
      if (!isInappropriateString)
      {
        v47 = 0;
      }

      v46 = v47 | v23 & 0xFFFFFFFFFFFFFFEFLL;
      v29 |= 8uLL;
    }

    else if (isInappropriateString)
    {
      v46 = v23 | 0x10;
    }

    else
    {
      v46 = v23;
    }

    v48 = [CHTokenizedTextResultToken alloc];
    v54 = objc_msgSend_strokeIndexes(v5, v49, v50, v51, v52, v53);
    objc_msgSend_modelScore(v5, v55, v56, v57, v58, v59);
    v129 = v60;
    objc_msgSend_recognitionScore(v5, v61, v62, v63, v64, v65);
    v128 = v66;
    objc_msgSend_combinedScore(v5, v67, v68, v69, v70, v71);
    v127 = v72;
    objc_msgSend_alignmentScore(v5, v73, v74, v75, v76, v77);
    v126 = v78;
    v84 = objc_msgSend_recognizerSourceLocale(v5, v79, v80, v81, v82, v83);
    v90 = objc_msgSend_substrokeCount(v5, v85, v86, v87, v88, v89);
    objc_msgSend_bounds(v5, v91, v92, v93, v94, v95);
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    objc_msgSend_originalBounds(v5, v104, v105, v106, v107, v108);
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;
    if (v5)
    {
      objc_msgSend_principalLines(v5, v109, v110, v111, v112, v113);
    }

    else
    {
      memset(v131, 0, 128);
    }

    v122 = objc_msgSend_principalPoints(v5, v109, v110, v111, v112, v113);
    v124 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v48, v123, v19, v54, v130, v46, v84, v29, v129, v128, v127, v126, v97, v99, v101, v103, v90, v115, v117, v119, v121, v131, v122);
  }

  else
  {
    v124 = 0;
  }

  return v124;
}

id sub_1839AF5E8(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v11 = a3;
  if (a1)
  {
    a1 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
    for (i = 0; i < objc_msgSend_count(v11, v12, v13, v14, v15, v16); ++i)
    {
      v22 = objc_msgSend_objectAtIndexedSubscript_(v11, v18, i, v19, v20, v21);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v23 = v5;
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v39, v43, 16, v25);
      if (v30)
      {
        v31 = *v40;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v40 != v31)
            {
              objc_enumerationMutation(v23);
            }

            v33 = objc_msgSend_stringByAppendingString_(*(*(&v39 + 1) + 8 * j), v26, v22, v27, v28, v29);
            objc_msgSend_addObject_(a1, v34, v33, v35, v36, v37);
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v39, v43, 16, v29);
        }

        while (v30);
      }
    }
  }

  return a1;
}

void sub_1839B0A18(uint64_t a1, void *a2)
{
  v22 = a2;
  if ((objc_msgSend_properties(v22, v3, v4, v5, v6, v7) & 0x20) != 0)
  {
    objc_msgSend_appendString_(*(a1 + 32), v8, @" ", v10, v11, v12);
  }

  v13 = objc_msgSend_string(v22, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v13, v14, @" ", @"␠", v15, v16);

  objc_msgSend_appendString_(*(a1 + 32), v18, v17, v19, v20, v21);
}

void sub_1839B0B14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v291 = v6;
  if (*(a1 + 136))
  {
    objc_msgSend_addObject_(*(a1 + 56), v7, v6, v9, v10, v11);
    goto LABEL_60;
  }

  v12 = a1 + 96;
  if (!*(*(*(a1 + 96) + 8) + 40) && !*(a4 + 16) && objc_msgSend_count(*(a1 + 32), v7, v8, v9, v10, v11))
  {
    for (i = 0; i < objc_msgSend_count(*(a1 + 40), v7, v8, v9, v10, v11); ++i)
    {
      while (objc_msgSend_count(*(a1 + 48), v14, v15, v16, v17, v18) <= i)
      {
        v24 = *(a1 + 48);
        v25 = objc_msgSend_mutableCopy(*(a1 + 56), v19, v20, v21, v22, v23);
        objc_msgSend_addObject_(v24, v26, v25, v27, v28, v29);
      }

      v30 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v19, i, v21, v22, v23);
      v36 = objc_msgSend_count(v30, v31, v32, v33, v34, v35);

      if (v36)
      {
        v37 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v7, i, v9, v10, v11);
        v38 = *(a1 + 64);
        v43 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v39, i, v40, v41, v42);
        sub_183992A0C(CHPostprocessingStep, v37, v38, v43, 0);

        v48 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v44, i, v45, v46, v47);
        objc_msgSend_removeAllObjects(v48, v49, v50, v51, v52, v53);
      }
    }

    sub_183992A0C(CHPostprocessingStep, *(a1 + 32), *(a1 + 64), *(a1 + 56), *(a1 + 72));
    objc_msgSend_removeAllObjects(*(a1 + 32), v54, v55, v56, v57, v58);
    objc_msgSend_removeAllObjects(*(a1 + 64), v59, v60, v61, v62, v63);
  }

  v64 = *(*(*(a1 + 104) + 8) + 24);
  v65 = objc_msgSend_string(v291, v7, v8, v9, v10, v11);
  v71 = objc_msgSend_length(v65, v66, v67, v68, v69, v70);

  v77 = objc_msgSend_string(v291, v72, v73, v74, v75, v76);
  v83 = v71 + v64;
  *(*(*(a1 + 104) + 8) + 24) += objc_msgSend_length(v77, v78, v79, v80, v81, v82);

  v89 = *(*(*(a1 + 112) + 8) + 24);
  if (v71 + v64 > v89)
  {
    do
    {
      while (1)
      {
        v90 = *(*(*(a1 + 120) + 8) + 40);
        v91 = *(a1 + 80);
        v92 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v84, *(*(*(a1 + 128) + 8) + 24), v86, v87, v88);
        v93 = sub_1839AF5E8(v91, v90, v92);
        v94 = *(*(a1 + 120) + 8);
        v95 = *(v94 + 40);
        *(v94 + 40) = v93;

        v96 = ++*(*(*(a1 + 128) + 8) + 24);
        if (v96 < objc_msgSend_count(*(a1 + 88), v97, v98, v99, v100, v101))
        {
          break;
        }

        *(*(*(a1 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
        v89 = *(*(*(a1 + 112) + 8) + 24);
        if (v83 <= v89)
        {
          goto LABEL_19;
        }
      }

      v102 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v84, *(*(*(a1 + 128) + 8) + 24), v86, v87, v88);
      v108 = objc_msgSend_firstObject(v102, v103, v104, v105, v106, v107);
      *(*(*(a1 + 112) + 8) + 24) += objc_msgSend_length(v108, v109, v110, v111, v112, v113);

      v89 = *(*(*(a1 + 112) + 8) + 24);
    }

    while (v83 > v89);
  }

LABEL_19:
  if (v83 == v89)
  {
    v114 = a1 + 120;
    v115 = *(*(*(a1 + 120) + 8) + 40);
    v116 = *(a1 + 80);
    v117 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v84, *(*(*(a1 + 128) + 8) + 24), v86, v87, v88);
    v118 = sub_1839AF5E8(v116, v115, v117);
    v119 = *(*(a1 + 120) + 8);
    v120 = *(v119 + 40);
    *(v119 + 40) = v118;

    if ((objc_msgSend_count(*(*(*(a1 + 120) + 8) + 40), v121, v122, v123, v124, v125) - 4) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v131 = objc_msgSend_count(*(*(*v114 + 8) + 40), v126, v127, v128, v129, v130) - 1;
    }

    else
    {
      v131 = 2;
    }

    if (v131 <= objc_msgSend_count(*(a1 + 40), v126, v127, v128, v129, v130))
    {
      v144 = objc_msgSend_count(*(a1 + 40), v133, v134, v135, v136, v137);
      v143 = *(*(*v12 + 8) + 40);
      if (v143)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((objc_msgSend_count(*(*(*v114 + 8) + 40), v133, v134, v135, v136, v137) - 4) < 0xFFFFFFFFFFFFFFFDLL)
      {
        v143 = *(*(*v12 + 8) + 40);
        v144 = 2;
        if (!v143)
        {
          goto LABEL_43;
        }

LABEL_30:
        sub_1836AA78C(v143, v291);
        v290 = a1 + 96;
        if (v144 >= 1)
        {
          v150 = 0;
          do
          {
            v156 = objc_msgSend_count(*(*(*v114 + 8) + 40), v145, v146, v147, v148, v149, v290);
            v157 = v150 + 1;
            v158 = *(*(*v114 + 8) + 40);
            if (v150 + 1 >= v156)
            {
              objc_msgSend_firstObject(v158, v151, v152, v153, v154, v155);
            }

            else
            {
              objc_msgSend_objectAtIndexedSubscript_(v158, v151, v150 + 1, v153, v154, v155);
            }
            v159 = ;
            v165 = sub_1839AF230(*(a1 + 80), *(*(*(a1 + 96) + 8) + 40), v159);
            while (1)
            {
              v166 = objc_msgSend_count(*(a1 + 40), v160, v161, v162, v163, v164);
              v171 = *(a1 + 40);
              if (v166 > v150)
              {
                break;
              }

              v172 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v167, *(a1 + 32), v168, v169, v170);
              objc_msgSend_addObject_(v171, v173, v172, v174, v175, v176);
            }

            v177 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v167, v150, v168, v169, v170);
            objc_msgSend_addObject_(v177, v178, v165, v179, v180, v181);

            v150 = v157;
          }

          while (v157 != v144);
        }

        v182 = sub_1839AF230(*(a1 + 80), *(*(*(a1 + 96) + 8) + 40), 0);
        objc_msgSend_addObject_(*(a1 + 64), v183, v182, v184, v185, v186);
        v187 = *(a1 + 80);
        v188 = *(*(*(a1 + 96) + 8) + 40);
        v194 = objc_msgSend_firstObject(*(*(*(a1 + 120) + 8) + 40), v189, v190, v191, v192, v193);
        v195 = sub_1839AF230(v187, v188, v194);

        objc_msgSend_addObject_(*(a1 + 32), v196, v195, v197, v198, v199);
        v200 = *(*v290 + 8);
        v201 = *(v200 + 40);
        *(v200 + 40) = 0;

        goto LABEL_54;
      }

      v144 = objc_msgSend_count(*(*(*v114 + 8) + 40), v138, v139, v140, v141, v142) - 1;
      v143 = *(*(*v12 + 8) + 40);
      if (v143)
      {
        goto LABEL_30;
      }
    }

    if (v144 < 1)
    {
LABEL_51:
      v235 = objc_msgSend_string(v291, v138, v139, v140, v141, v142);
      v241 = objc_msgSend_firstObject(*(*(*v114 + 8) + 40), v236, v237, v238, v239, v240);
      isEqualToString = objc_msgSend_isEqualToString_(v235, v242, v241, v243, v244, v245);

      if (isEqualToString)
      {
        objc_msgSend_addObject_(*(a1 + 32), v247, v291, v249, v250, v251);
        objc_msgSend_addObject_(*(a1 + 64), v252, v291, v253, v254, v255);
LABEL_55:
        v271 = ++*(*(*(a1 + 128) + 8) + 24);
        if (v271 >= objc_msgSend_count(*(a1 + 88), v256, v257, v258, v259, v260, v290))
        {
          *(*(*(a1 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v276 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v272, *(*(*(a1 + 128) + 8) + 24), v273, v274, v275);
          v282 = objc_msgSend_firstObject(v276, v277, v278, v279, v280, v281);
          *(*(*(a1 + 112) + 8) + 24) += objc_msgSend_length(v282, v283, v284, v285, v286, v287);
        }

        v202 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v272, &stru_1EF1C0318, v273, v274, v275);
        goto LABEL_59;
      }

      v261 = *(a1 + 80);
      v262 = objc_msgSend_firstObject(*(*(*(a1 + 120) + 8) + 40), v247, v248, v249, v250, v251);
      v182 = sub_1839AF230(v261, v291, v262);

      objc_msgSend_addObject_(*(a1 + 32), v263, v182, v264, v265, v266);
      objc_msgSend_addObject_(*(a1 + 64), v267, v291, v268, v269, v270);
LABEL_54:

      goto LABEL_55;
    }

LABEL_43:
    v203 = 0;
    do
    {
      v209 = objc_msgSend_count(*(*(*v114 + 8) + 40), v138, v139, v140, v141, v142);
      v210 = v203 + 1;
      v211 = *(*(*v114 + 8) + 40);
      if (v203 + 1 >= v209)
      {
        objc_msgSend_firstObject(v211, v204, v205, v206, v207, v208);
      }

      else
      {
        objc_msgSend_objectAtIndexedSubscript_(v211, v204, v203 + 1, v206, v207, v208);
      }
      v212 = ;
      v218 = sub_1839AF230(*(a1 + 80), v291, v212);
      while (1)
      {
        v219 = objc_msgSend_count(*(a1 + 40), v213, v214, v215, v216, v217);
        v224 = *(a1 + 40);
        if (v219 > v203)
        {
          break;
        }

        v225 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v220, *(a1 + 32), v221, v222, v223);
        objc_msgSend_addObject_(v224, v226, v225, v227, v228, v229);
      }

      v230 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v220, v203, v221, v222, v223);
      objc_msgSend_addObject_(v230, v231, v218, v232, v233, v234);

      v203 = v210;
    }

    while (v210 != v144);
    goto LABEL_51;
  }

  v132 = *(*(*v12 + 8) + 40);
  if (v132)
  {
    sub_1836AA78C(v132, v291);
    goto LABEL_60;
  }

  v202 = objc_msgSend_mutableCopy(v291, v84, v85, v86, v87, v88);
  v114 = a1 + 96;
LABEL_59:
  v288 = *(*v114 + 8);
  v289 = *(v288 + 40);
  *(v288 + 40) = v202;

LABEL_60:
}

void sub_1839B1770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHJapaneseTokenizationAndConversionStep;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1839B28CC(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v7;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v32, v45, 16, v10);
    v17 = 0;
    v18 = 0;
    if (v16)
    {
      v31 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v20 = objc_msgSend_string(*(*(&v32 + 1) + 8 * i), v11, v12, v13, v14, v15);
          v41 = 0;
          v42 = &v41;
          v43 = 0x2020000000;
          v44 = 0;
          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v40 = 0;
          v26 = objc_msgSend_length(v20, v21, v22, v23, v24, v25);
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = sub_1839B2C90;
          v36[3] = &unk_1E6DE0B78;
          v36[4] = &v41;
          v36[5] = &v37;
          objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v20, v27, 0, v26, 2, v36);
          v28 = *(v42 + 24);
          v29 = *(v38 + 24);
          _Block_object_dispose(&v37, 8);
          _Block_object_dispose(&v41, 8);

          v17 |= v28;
          v18 |= v29;
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v32, v45, 16, v15);
      }

      while (v16);
    }

    if (a3)
    {
      *a3 = v17 & 1;
    }

    if (a4)
    {
      *a4 = v18 & 1;
    }
  }
}

void sub_1839B2B50(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a2;
  v13 = v7;
  if (a1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v14 = objc_msgSend_length(v7, v8, v9, v10, v11, v12);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1839B2C90;
    v16[3] = &unk_1E6DE0B78;
    v16[4] = &v21;
    v16[5] = &v17;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v13, v15, 0, v14, 2, v16);
    if (a3)
    {
      *a3 = *(v22 + 24);
    }

    if (a4)
    {
      *a4 = *(v18 + 24);
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }
}

void sub_1839B2C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1839B2C90(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = sub_1837A9444(v5);
  v4 = sub_1837A949C(v5);
  *(*(*(a1 + 32) + 8) + 24) = (*(*(*(a1 + 32) + 8) + 24) | v3) & 1;
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | v4) & 1;
}

void sub_1839B3A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);

  _Unwind_Resume(a1);
}

void sub_1839B3E38(uint64_t *a1, void *a2)
{
  v3 = 0;
  sub_1839B2B50(a1[4], a2, &v3 + 1, &v3);
  if (v3 != 1)
  {
    if (HIBYTE(v3) != 1)
    {
      return;
    }

LABEL_5:
    ++*(*(a1[6] + 8) + 24);
    return;
  }

  ++*(*(a1[5] + 8) + 24);
  if (HIBYTE(v3) == 1)
  {
    goto LABEL_5;
  }
}

uint64_t sub_1839B4480(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_isTopOriginal(a2, a2, a3, a4, a5, a6);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_1839B49BC(uint64_t a1, void *a2)
{
  v262 = *MEMORY[0x1E69E9840];
  v237 = a2;
  v8 = objc_msgSend_string(v237, v3, v4, v5, v6, v7);
  if ((objc_msgSend_properties(v237, v9, v10, v11, v12, v13) & 0x10) == 0 || !objc_msgSend_containsString_(v8, v14, @"i", v15, v16, v17))
  {
    goto LABEL_24;
  }

  v19 = *(a1 + 32);
  v20 = objc_msgSend_drawing(*(a1 + 40), v14, v18, v15, v16, v17);
  v235 = a1;
  v21 = v237;
  v22 = v20;
  v28 = v22;
  if (v19)
  {
    v238 = 0;
    v239 = &v238;
    v240 = 0x2020000000;
    v241 = 0;
    v29 = objc_msgSend_string(v21, v23, v24, v25, v26, v27);
    v35 = objc_msgSend_string(v21, v30, v31, v32, v33, v34);
    v41 = objc_msgSend_length(v35, v36, v37, v38, v39, v40);
    *&v242 = MEMORY[0x1E69E9820];
    *(&v242 + 1) = 3221225472;
    *&v243 = sub_1839B5418;
    *(&v243 + 1) = &unk_1E6DDDCB0;
    *&v244 = &v238;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v29, v42, 0, v41, 2, &v242);

    v48 = objc_msgSend_strokeIndexes(v21, v43, v44, v45, v46, v47);
    v49 = v28;
    v50 = v48;
    v56 = v50;
    *&v250 = 0;
    *(&v250 + 1) = &v250;
    v251 = 0x2020000000uLL;
    if (v49 && objc_msgSend_count(v50, v51, v52, v53, v54, v55) >= 2)
    {
      objc_msgSend_boundsForStrokeIndexes_(v49, v57, v56, v58, v59, v60);
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v69 = v67 * 0.15;
      v254[0] = MEMORY[0x1E69E9820];
      v254[1] = 3221225472;
      v254[2] = sub_1839B54E4;
      v254[3] = &unk_1E6DE0BC8;
      v70 = v49;
      v257 = v69;
      v258 = v62;
      v259 = v64;
      v260 = v66;
      v261 = v68;
      v255 = v70;
      v256 = &v250;
      objc_msgSend_enumerateIndexesUsingBlock_(v56, v71, v254, v72, v73, v74);
    }

    v75 = *(*(&v250 + 1) + 24);
    _Block_object_dispose(&v250, 8);

    LODWORD(v75) = v75 < v239[3];
    _Block_object_dispose(&v238, 8);

    a1 = v235;
    if (v75)
    {
      v76 = *(v235 + 32);
      v77 = v21;
      v234 = v77;
      if (v76)
      {
        goto LABEL_9;
      }

      goto LABEL_41;
    }

LABEL_24:
    objc_msgSend_addObject_(*(a1 + 48), v14, v237, v15, v16, v17);
    goto LABEL_25;
  }

  v76 = *(a1 + 32);
  v77 = v21;
  v234 = v77;
  if (v76)
  {
LABEL_9:
    v83 = objc_msgSend_string(v77, v78, v79, v80, v81, v82);
    v89 = objc_msgSend_array(MEMORY[0x1E695DF70], v84, v85, v86, v87, v88);
    v95 = objc_msgSend_mutableCopy(v83, v90, v91, v92, v93, v94);
    sub_1839B5278(v83, 0, v95, v89);

    v101 = objc_msgSend_copy(v89, v96, v97, v98, v99, v100);
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v102 = v101;
    v236 = v102;
    v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v102, v103, &v250, v254, 16, v104);
    if (v109)
    {
      v110 = *v251;
LABEL_11:
      v111 = 0;
      while (1)
      {
        if (*v251 != v110)
        {
          objc_enumerationMutation(v102);
        }

        v112 = *(*(&v250 + 1) + 8 * v111);
        if (objc_msgSend_isEqualToString_(v112, v105, v83, v106, v107, v108) & 1) != 0 || (objc_msgSend_isInappropriateString_(*(v76 + 8), v105, v112, v106, v107, v108))
        {
          goto LABEL_12;
        }

        v113 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v105, @".,?!", v106, v107, v108);
        v118 = objc_msgSend_stringByTrimmingCharactersInSet_(v112, v114, v113, v115, v116, v117);
        LOBYTE(v238) = 0;
        v119 = v118;
        if (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v120, v119, *(v76 + 16), &v238, v121))
        {
          break;
        }

        HasMatchingString = objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v122, v119, *(v76 + 24), &v238, v123);

        if (HasMatchingString)
        {
          goto LABEL_20;
        }

LABEL_21:

        v102 = v236;
LABEL_12:
        if (v109 == ++v111)
        {
          v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v102, v105, &v250, v254, 16, v108);
          if (v109)
          {
            goto LABEL_11;
          }

          goto LABEL_23;
        }
      }

LABEL_20:
      if (v238 == 1)
      {
        v232 = objc_msgSend_properties(v234, v124, v125, v126, v127, v128);
        v233 = objc_msgSend_inputSources(v234, v132, v133, v134, v135, v136);
        v137 = v112;
        v144 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v138, v137, *(v76 + 24), v139, v140);
        if (!v144)
        {
          v144 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v141, v137, *(v76 + 16), v142, v143);
        }

        if (v238)
        {
          v145 = 260;
        }

        else
        {
          v145 = 4;
        }

        v146 = [CHTokenizedTextResultToken alloc];
        v152 = objc_msgSend_strokeIndexes(v234, v147, v148, v149, v150, v151);
        v231 = v145;
        objc_msgSend_modelScore(v234, v153, v154, v155, v156, v157);
        v230 = v158;
        objc_msgSend_recognitionScore(v234, v159, v160, v161, v162, v163);
        v229 = v164;
        objc_msgSend_combinedScore(v234, v165, v166, v167, v168, v169);
        v228 = v170;
        objc_msgSend_alignmentScore(v234, v171, v172, v173, v174, v175);
        v227 = v176;
        v182 = objc_msgSend_recognizerSourceLocale(v234, v177, v178, v179, v180, v181);
        v226 = objc_msgSend_substrokeCount(v234, v183, v184, v185, v186, v187);
        objc_msgSend_bounds(v234, v188, v189, v190, v191, v192);
        v194 = v193;
        v196 = v195;
        v198 = v197;
        v200 = v199;
        objc_msgSend_originalBounds(v234, v201, v202, v203, v204, v205);
        v212 = v211;
        v214 = v213;
        v216 = v215;
        v218 = v217;
        if (v234)
        {
          objc_msgSend_principalLines(v234, v206, v207, v208, v209, v210);
        }

        else
        {
          v248 = 0u;
          v249 = 0u;
          v246 = 0u;
          v247 = 0u;
          v244 = 0u;
          v245 = 0u;
          v242 = 0u;
          v243 = 0u;
        }

        v219 = objc_msgSend_principalPoints(v234, v206, v207, v208, v209, v210);
        v221 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v146, v220, v137, v152, v144, v231 | v232 & 0xFFFFFFFFFFFFFFEBLL, v182, v233 | 0x800, v230, v229, v228, v227, v194, v196, v198, v200, v226, v212, v214, v216, v218, &v242, v219);

        v131 = v221;
        v130 = v131;
        goto LABEL_37;
      }

      goto LABEL_21;
    }

LABEL_23:
    v130 = 0;
    v131 = v102;
LABEL_37:

    if (v130)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_41:

LABEL_38:
  v130 = v234;
LABEL_39:
  objc_msgSend_addObject_(*(v235 + 48), v222, v130, v223, v224, v225);

LABEL_25:
}

void sub_1839B5278(void *a1, unint64_t a2, void *a3, void *a4)
{
  v37 = a1;
  v7 = a3;
  v8 = a4;
  if (objc_msgSend_length(v37, v9, v10, v11, v12, v13) <= a2)
  {
    v19 = objc_msgSend_copy(v7, v14, v15, v16, v17, v18);
    objc_msgSend_addObject_(v8, v33, v19, v34, v35, v36);
  }

  else
  {
    v19 = objc_msgSend_substringWithRange_(v37, v14, a2, 1, v17, v18);
    if (objc_msgSend_isEqualToString_(v19, v20, @"i", v21, v22, v23))
    {
      sub_1839B5278(v37, a2 + 1, v7, v8);
      v26 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v7, v24, a2, 1, @"ı", v25);
      v32 = objc_msgSend_mutableCopy(v26, v27, v28, v29, v30, v31);
      sub_1839B5278(v37, a2 + 1, v32, v8);
    }

    else
    {
      sub_1839B5278(v37, a2 + 1, v7, v8);
    }
  }
}

void sub_1839B5418(uint64_t a1, void *a2)
{
  v15 = a2;
  if ((objc_msgSend_isEqualToString_(v15, v3, @"i", v4, v5, v6) & 1) != 0 || objc_msgSend_isEqualToString_(v15, v7, @"j", v8, v9, v10))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  if ((objc_msgSend_isEqualToString_(v15, v7, @"ö", v8, v9, v10) & 1) != 0 || objc_msgSend_isEqualToString_(v15, v11, @"ü", v12, v13, v14))
  {
    *(*(*(a1 + 32) + 8) + 24) += 2;
  }
}

unint64_t sub_1839B54E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_strokeCount(*(a1 + 32), a2, a3, a4, a5, a6);
  if (result > a2)
  {
    result = objc_msgSend_boundsForStrokeIndex_(*(a1 + 32), v9, a2, v10, v11, v12);
    v15 = *(a1 + 48);
    v17 = v16 > v15 || v14 > v15;
    if (!v17 && (v13 - *(a1 + 64)) / *(a1 + 80) <= 0.7)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  return result;
}

void sub_1839B57F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1839B580C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1839B580C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void sub_1839B587C(uint64_t a1)
{
  if (a1)
  {
    sub_1839B587C(*a1);
    sub_1839B587C(*(a1 + 8));
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = a1;

LABEL_6:
        operator delete(v2);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 32));
    v2 = a1;

    goto LABEL_6;
  }
}

void sub_1839B5910(void *a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_cgImage(a1, a2, a3, a4, a5, a6);
  DataProvider = CGImageGetDataProvider(v7);
  v9 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v9);
  ColorSpace = CGImageGetColorSpace(v7);
  Width = CGImageGetWidth(v7);
  Height = CGImageGetHeight(v7);
  BitsPerComponent = CGImageGetBitsPerComponent(v7);
  BytesPerRow = CGImageGetBytesPerRow(v7);
  BitmapInfo = CGImageGetBitmapInfo(v7);
  v17 = CGBitmapContextCreateWithData(BytePtr, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo, 0, 0);
  GenericRGB = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 1.0);
  CGContextSetStrokeColorWithColor(v17, GenericRGB);
  v19 = *a3;
  if (a3[1] != *a3)
  {
    v20 = 0;
    do
    {
      CGContextAddPath(v17, *(v19 + 8 * v20++));
      v19 = *a3;
    }

    while (v20 < (a3[1] - *a3) >> 3);
  }

  CGContextDrawPath(v17, kCGPathStroke);
  Image = CGBitmapContextCreateImage(v17);
  v27 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v22, v23, v24, v25, v26);
  v33 = objc_msgSend_UUIDString(v27, v28, v29, v30, v31, v32);

  v34 = MEMORY[0x1E695DFF8];
  v35 = NSTemporaryDirectory();
  v40 = objc_msgSend_fileURLWithPath_(v34, v36, v35, v37, v38, v39);

  v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v41, @"image_%@.png", v42, v43, v44, v33);
  v50 = objc_msgSend_URLByAppendingPathComponent_(v40, v46, v45, v47, v48, v49);

  v56 = objc_msgSend_identifier(*MEMORY[0x1E6982F28], v51, v52, v53, v54, v55);
  v57 = CGImageDestinationCreateWithURL(v50, v56, 1uLL, 0);

  CGImageDestinationAddImage(v57, Image, 0);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v58 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v64 = objc_msgSend_absoluteString(v50, v59, v60, v61, v62, v63);
    *buf = 138412290;
    v66 = v64;
    _os_log_impl(&dword_18366B000, v58, OS_LOG_TYPE_DEFAULT, "VDECT Text detection results saved at URL %@", buf, 0xCu);
  }

  CGImageDestinationFinalize(v57);
  if (v57)
  {
    CFRelease(v57);
  }

  if (Image)
  {
    CFRelease(Image);
  }

  if (GenericRGB)
  {
    CFRelease(GenericRGB);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1839B5C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v13 = va_arg(va4, const void *);

  sub_1839B5E3C(va);
  sub_1839B5E08(va1);
  sub_1839B5DD4(va2);
  sub_1839B5DA0(va3);
  sub_1839B5D6C(va4);
  _Unwind_Resume(a1);
}

const void **sub_1839B5D6C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1839B5DA0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1839B5DD4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1839B5E08(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1839B5E3C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

float sub_1839B6524(uint64_t a1, double **a2, _DWORD *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 - *a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 20) = xmmword_1839DAA90;
  if ((v5 >> 4) <= 1)
  {
    LODWORD(v6.f64[0]) = 0;
    if (!a3)
    {
      return *v6.f64;
    }

    goto LABEL_30;
  }

  *&v7 = (v5 >> 4);
  if (v4 == v3)
  {
    v13 = 0.0;
    *a1 = 0.0 / *&v7;
    *(a1 + 8) = 0.0 / *&v7;
    v6 = vdupq_lane_s64(COERCE__INT64(0.0 / *&v7), 0);
    v12 = 0uLL;
    goto LABEL_14;
  }

  v8 = 0uLL;
  v9 = v4;
  do
  {
    v10 = *v9++;
    v8 = vaddq_f64(v8, v10);
    *a1 = v8;
  }

  while (v9 != v3);
  v6 = vdivq_f64(v8, vdupq_lane_s64(v7, 0));
  *a1 = v6;
  v11 = v5 - 16;
  if (v11 <= 0xF)
  {
    v12 = 0uLL;
    v13 = 0.0;
    v14 = v4;
    do
    {
LABEL_13:
      v20 = *v14++;
      v21 = vsubq_f64(v20, v6);
      v12 = vmlaq_f64(v12, v21, v21);
      v13 = v13 + v21.f64[0] * v21.f64[1];
    }

    while (v14 != v3);
    goto LABEL_14;
  }

  v15 = (v11 >> 4) + 1;
  v14 = &v4[2 * (v15 & 0x1FFFFFFFFFFFFFFELL)];
  v16 = (v4 + 2);
  v12 = 0uLL;
  v13 = 0.0;
  v17 = v15 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v18 = vsubq_f64(v16[-1], v6);
    v19 = vsubq_f64(*v16, v6);
    v12 = vaddq_f64(vaddq_f64(v12, vmulq_f64(v18, v18)), vmulq_f64(v19, v19));
    v13 = v13 + vmulq_laneq_f64(v18, v18, 1).f64[0] + vmulq_laneq_f64(v19, v19, 1).f64[0];
    v16 += 2;
    v17 -= 2;
  }

  while (v17);
  if (v15 != (v15 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_13;
  }

LABEL_14:
  v22 = *&v7 + -1.0;
  v23 = vdivq_f64(v12, vdupq_lane_s64(COERCE__INT64(*&v7 + -1.0), 0));
  if (v23.f64[0] < 0.01)
  {
    v24 = *(v3 - 1);
    v25 = v4[1];
    *a1 = v6;
    v26 = vsubq_f64(v6, v6).f64[0];
    *(a1 + 20) = v26;
    if (v24 <= v25)
    {
      v27 = -1.0;
    }

    else
    {
      v27 = 1.0;
    }

    v32 = v6.f64[1] + v27 - v6.f64[1];
    v33 = (v32 * v32) + (v26 * v26);
    *(a1 + 24) = v32;
    *(a1 + 28) = v33;
    *(a1 + 32) = sqrtf(v33);
    if (v33 > 0.0)
    {
      *(a1 + 20) = v26 / v33;
      v34 = v32 / v33;
LABEL_28:
      *(a1 + 24) = v34;
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v23.f64[1] < 0.01)
  {
    v28 = *(v3 - 2);
    v29 = *v4;
    *a1 = v6;
    v30 = COERCE_DOUBLE(*&vsubq_f64(v6, v6).f64[1]);
    if (v28 <= v29)
    {
      v31 = -1.0;
    }

    else
    {
      v31 = 1.0;
    }

    v41 = v6.f64[0] + v31 - v6.f64[0];
    *(a1 + 20) = v41;
    *(a1 + 24) = v30;
    v42 = (v30 * v30) + (v41 * v41);
    *(a1 + 28) = v42;
    *(a1 + 32) = sqrtf(v42);
    if (v42 > 0.0)
    {
      v43 = v41 / v42;
      v34 = v30 / v42;
      *(a1 + 20) = v43;
      goto LABEL_28;
    }

LABEL_29:
    *(a1 + 16) = 1;
    LODWORD(v6.f64[0]) = 1.0;
    if (!a3)
    {
      return *v6.f64;
    }

LABEL_30:
    *a3 = LODWORD(v6.f64[0]);
    return *v6.f64;
  }

  *a1 = v6;
  v35 = v13 / v22;
  if (v23.f64[0] >= v23.f64[1])
  {
    __asm { FMOV            V5.2D, #1.0 }

    _Q5.f64[1] = v35 / v23.f64[0];
  }

  else
  {
    __asm { FMOV            V5.2D, #1.0 }

    _Q5.f64[0] = v35 / v23.f64[1];
  }

  v44 = vcvt_f32_f64(vsubq_f64(vaddq_f64(v6, _Q5), v6));
  *(a1 + 20) = v44;
  v45 = vmul_f32(v44, v44);
  *v45.i32 = *&v45.i32[1] + (v44.f32[0] * v44.f32[0]);
  *(a1 + 28) = v45.i32[0];
  *(a1 + 32) = sqrtf(*v45.i32);
  if (*v45.i32 > 0.0)
  {
    v44 = vdiv_f32(v44, vdup_lane_s32(v45, 0));
    *(a1 + 20) = v44;
  }

  *(a1 + 16) = 1;
  *v6.f64 = (*(v3 - 1) - v6.f64[1]) * v44.f32[1] + (*(v3 - 2) - v6.f64[0]) * v44.f32[0];
  if (*v6.f64 < 0.0)
  {
    *&v6.f64[0] = vneg_f32(v44);
    *(a1 + 20) = v6.f64[0];
  }

  if (a3)
  {
    v46 = v23.f64[1] / v23.f64[0];
    if (v23.f64[0] / v23.f64[1] <= 50.0)
    {
      if (v46 <= 50.0)
      {
        v6 = vsqrtq_f64(v23);
        *v6.f64 = v35 / vmulq_laneq_f64(v6, v6, 1).f64[0];
      }

      else
      {
        *v6.f64 = 1.0 - v23.f64[0] / v23.f64[1];
      }

      *a3 = LODWORD(v6.f64[0]);
    }

    else
    {
      *v6.f64 = 1.0 - v46;
      *a3 = LODWORD(v6.f64[0]);
    }
  }

  return *v6.f64;
}

uint64_t sub_1839B6858(uint64_t a1, void *a2, _DWORD *a3)
{
  memset(v6, 0, sizeof(v6));
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  sub_1839B6524(a1, v6, a3);
  return a1;
}

float sub_1839B6914(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  result = 0.0;
  if ((v2 - *a2) >= 0x11)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 20);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = ((v3[1] - v5) * v7 + (*v3 - *a1) * v6) * v8;
    for (i = v9; v3 != v2; i = fmaxf(*&v11, i))
    {
      v11 = *v3;
      v12 = v3[1];
      v3 += 2;
      *&v11 = ((v12 - v5) * v7 + (v11 - *a1) * v6) * v8;
      v9 = fminf(*&v11, v9);
    }

    return i - v9;
  }

  return result;
}

id sub_1839B699C()
{
  if (qword_1EA84D2F8 == -1)
  {
    v1 = qword_1EA84D300;
  }

  else
  {
    dispatch_once(&qword_1EA84D2F8, &unk_1EF1BFB18);
    v1 = qword_1EA84D300;
  }

  return v1;
}

void sub_1839B6A04()
{
  v0 = _os_feature_enabled_impl();
  v1 = @"!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_abcdefghijklmnopqrstuvwxyz{|}~£¥§«°»€•←↑→↓✓①②③④⑤⑥⑦⑧⑨¢äÄëËïÏöÖüÜáÁéÉíÍóÓúÚýÝàÀèÈìÌòÒùÙâÂêÊîÎôÔûÛãÃõÕñÑçÇæÆœŒß¡¿ºª";
  v2 = qword_1EA84D300;
  if (v0)
  {
    v1 = @"!„#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_abcdefghijklmnopqrstuvwxyz{|}~¡¢£¥§ª«°º»¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÑÒÓÔÕÖØÙÚÛÜÝßàáâãäåæçèéêëìíîïñòóôõöøùúûüý\xFFĂăĄąĆćČčĎďĘęĚěĞğİıŁłŃńŇňŒœŘřŚśŞşŠšŤťŮůŸŹźŻżŽžȘșȚț•€₺←↑→↓①②③④⑤⑥⑦⑧⑨✓";
  }

  qword_1EA84D300 = v1;
}

id sub_1839B6A60()
{
  if (qword_1EA84D308 == -1)
  {
    v1 = qword_1EA84D310;
  }

  else
  {
    dispatch_once(&qword_1EA84D308, &unk_1EF1BFB38);
    v1 = qword_1EA84D310;
  }

  return v1;
}

void sub_1839B6AC8()
{
  v0 = qword_1EA84D310;
  qword_1EA84D310 = @"!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_abcdefghijklmnopqrstuvwxyz{|}~¡¢£¥§ª«°²³º»¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÑÒÓÔÕÖ×ØÙÚÛÜÝßàáâãäåæçèéêëìíîïñòóôõö÷øùúûüý\xFFĂăĄąĆćČčĎďĐđĘęĚěĞğĨĩİıŁłŃńŇňŒœŘřŚśŞşŠšŤťŨũŮůŸŹźŻżŽžƠơƯưșȚțẠạẢảẤấẦầẨẩẪẫẬậẮắẰằẲẳẴẵẶặẸẹẺẻẼẽẾếỀềỂểỄễỆệỈỉỊịỌọỎỏỐốỒồỔổỖỗỘộỚớỜờỞởỠỡỢợỤụỦủỨứỪừỬửỮữỰựỲỳỴỵỶỷỸỹ•₫€₺←↑→↓⋅①②③④⑤⑥⑦⑧⑨✓";
}

uint64_t sub_1839B6AE0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v12 = objc_msgSend_length(a1, v7, v8, v9, v10, v11);
  v14 = v12;
  if (a4 < 1)
  {
    if (v12)
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v15 = v28;
        v29 = objc_msgSend_rangeOfCharacterFromSet_options_range_(a1, v13, v6, 0, v27, v14);
        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v27 = &v30[v29];
        if (&v30[v29] <= objc_msgSend_length(a1, v30, v31, v32, v33, v34))
        {
          v40 = objc_msgSend_length(a1, v35, v36, v37, v38, v39);
          v28 = v15 + 1;
          v14 = v40 - v27;
          if (v40 != v27)
          {
            continue;
          }
        }

        ++v15;
        break;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    while (v14)
    {
      v17 = objc_msgSend_rangeOfCharacterFromSet_options_range_(a1, v13, v6, 0, v16, v14);
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v16 = &v18[v17];
      if (&v18[v17] > objc_msgSend_length(a1, v18, v19, v20, v21, v22))
      {
        v14 = 0;
        if (a4 == ++v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v14 = objc_msgSend_length(a1, v13, v23, v24, v25, v26) - v16;
        if (a4 == ++v15)
        {
LABEL_8:
          v15 = a4;
          break;
        }
      }
    }
  }

  return v15;
}

id sub_1839B6C10(void *a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v4;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v33, v37, 16, v13);
  if (v14)
  {
    v18 = v14;
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v11);
        }

        v21 = MEMORY[0x1E696AD98];
        v22 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(a1, v15, *(*(&v33 + 1) + 8 * i), -1, v16, v17, v33);
        v27 = objc_msgSend_numberWithInteger_(v21, v23, v22, v24, v25, v26);
        objc_msgSend_addObject_(v10, v28, v27, v29, v30, v31);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v15, &v33, v37, 16, v17);
    }

    while (v18);
  }

  return v10;
}

id sub_1839B6D80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v15 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6, v7, v8, v9);
  if (v4)
  {
    v16 = objc_msgSend_length(a1, v10, v11, v12, v13, v14);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1839B6E6C;
    v20[3] = &unk_1E6DE0BF0;
    v21 = v4;
    v22 = v15;
    objc_msgSend_enumerateCodepointsInRange_usingBlock_(a1, v17, 0, v16, v20, v18);
  }

  return v15;
}

uint64_t sub_1839B6E6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_longCharacterIsMember_(*(a1 + 32), a2, a2, a4, a5, a6);
  if (result)
  {
    v13 = *(a1 + 40);

    return objc_msgSend_addIndexesInRange_(v13, v10, a3, a4, v11, v12);
  }

  return result;
}

id sub_1839B6ED8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v13 = v7;
  if (v6 && v7)
  {
    v14 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v8, v9, v10, v11, v12);
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3010000000;
    v34[3] = &unk_183A5AC72;
    v35 = xmmword_1839D0630;
    v20 = objc_msgSend_length(a1, v15, v16, v17, v18, v19);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1839B70D8;
    v27[3] = &unk_1E6DE0C18;
    v28 = v6;
    v21 = v14;
    v29 = v21;
    v31 = v36;
    v32 = v34;
    v33 = v38;
    v30 = v13;
    objc_msgSend_enumerateCodepointsInRange_usingBlock_(a1, v22, 0, v20, v27, v23);
    v24 = v30;
    v25 = v21;

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);
  }

  else
  {
    v25 = objc_msgSend_indexesOfCharacters_(a1, v8, v6, v10, v11, v12);
  }

  return v25;
}

void sub_1839B70A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

double sub_1839B70D8(uint64_t a1, const char *a2, NSUInteger location, uint64_t a4, uint64_t a5, uint64_t a6)
{
  length = a4;
  if (objc_msgSend_longCharacterIsMember_(*(a1 + 32), a2, a2, a4, a5, a6))
  {
    objc_msgSend_addIndexesInRange_(*(a1 + 40), v10, location, length, v12, v13);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      objc_msgSend_addIndexesInRange_(*(a1 + 40), v14, *(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40), v15, v16);
      result = NAN;
      *(*(*(a1 + 64) + 8) + 32) = xmmword_1839D0630;
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    IsMember = objc_msgSend_longCharacterIsMember_(*(a1 + 48), v10, a2, v11, v12, v13);
    v19 = *(*(a1 + 72) + 8);
    if (IsMember)
    {
      v20 = *(*(a1 + 56) + 8);
      if ((*(v19 + 24) & 1) != 0 || *(v20 + 24) == 1)
      {
        *(v20 + 24) = 1;
        v21 = *(*(a1 + 64) + 8);
        v22.location = *(v21 + 32);
        if (v22.location != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22.length = *(v21 + 40);
          v24.location = location;
          v24.length = length;
          v23 = NSUnionRange(v24, v22);
          location = v23.location;
          length = v23.length;
          v21 = *(*(a1 + 64) + 8);
        }

        *(v21 + 32) = location;
        *(v21 + 40) = length;
        v19 = *(*(a1 + 72) + 8);
      }

      *(v19 + 24) = 0;
    }

    else
    {
      *(v19 + 24) = 0;
      *(*(*(a1 + 56) + 8) + 24) = 0;
      result = NAN;
      *(*(*(a1 + 64) + 8) + 32) = xmmword_1839D0630;
    }
  }

  return result;
}

uint64_t sub_1839B724C(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16, v6);
  if (v7)
  {
    v12 = v7;
    v13 = *v18;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_containsString_(a1, v8, *(*(&v17 + 1) + 8 * v14), v9, v10, v11, v17))
        {
          v15 = 1;
          goto LABEL_11;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v8, &v17, v21, 16, v11);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

uint64_t sub_1839B7358(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1839B7438;
  v12[3] = &unk_1E6DE0C40;
  v12[4] = &v13;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v9, 0, v8, a3, v12);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1839B7420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1839B7450(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1839B7524;
  v11[3] = &unk_1E6DE0C40;
  v11[4] = &v12;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v8, 0, v7, 514, v11);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1839B750C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1839B753C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1839B760C;
  v12[3] = &unk_1E6DDCD60;
  v12[4] = &v13;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(a1, v8, 0, v7, v12, v9);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1839B75F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1839B7624(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = 0;
  v7[1] = 0;
  objc_msgSend_codepointAtIndex_outRange_(a1, a2, a3, v7, a5, a6);
  return v7[0];
}

uint64_t sub_1839B7650(void *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  result = objc_msgSend_characterAtIndex_(a1, a2, a3, a4, a5, a6);
  if ((result & 0xFC00) == 0xD800)
  {
    v15 = result;
    if (v7 + 1 < objc_msgSend_length(a1, v10, v11, v12, v13, v14))
    {
      v20 = objc_msgSend_characterAtIndex_(a1, v16, v7 + 1, v17, v18, v19);
      if ((v20 & 0xFC00) == 0xDC00)
      {
        v21 = v15;
LABEL_9:
        result = (v20 + (v21 << 10) - 56613888);
        v22 = 2;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v22 = 1;
    if (!v7 || (result & 0xFC00) != 0xDC00)
    {
      goto LABEL_11;
    }

    v15 = result;
    v23 = objc_msgSend_characterAtIndex_(a1, v10, v7 - 1, v12, v13, v14);
    if ((v23 & 0xFC00) == 0xD800)
    {
      v21 = v23;
      v20 = v15;
      --v7;
      goto LABEL_9;
    }
  }

  v22 = 1;
  result = v15;
LABEL_11:
  if (a4)
  {
    *a4 = v7;
    a4[1] = v22;
  }

  return result;
}

uint64_t sub_1839B7744(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  if (result)
  {

    return objc_msgSend_codepointAtIndex_outRange_(a1, v8, 0, 0, v9, v10);
  }

  return result;
}

void sub_1839B77A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v13 = a6;
  v14 = a4 - 1;
  if (a5)
  {
    v15 = 0;
  }

  else
  {
    v15 = a4;
  }

  if (!a5)
  {
    v14 = 0;
  }

  v16 = v14 + a3;
  v17 = v15 + a3;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (v14 + a3 < v15 + a3 != a5)
  {
    if (a5)
    {
      do
      {
        v18 = objc_msgSend_codepointAtIndex_outRange_(a1, v10, v16, &v21, v11, v12);
        v20 = 0;
        v13[2](v13, v18, v21, v22, &v20);
        if (v20)
        {
          break;
        }

        v16 = v21 - 1;
      }

      while (v21 - 1 >= v17);
    }

    else
    {
      do
      {
        v19 = objc_msgSend_codepointAtIndex_outRange_(a1, v10, v16, &v21, v11, v12);
        v20 = 0;
        v13[2](v13, v19, v21, v22, &v20);
        if (v20)
        {
          break;
        }

        v16 = v22 + v21;
      }

      while (v22 + v21 < v17);
    }
  }
}

id sub_1839B78AC(void *a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (objc_msgSend_length(a1, a2, a3, a4, a5, a6) <= a3)
  {
    v16 = 0;
  }

  else
  {
    v12 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(a1, v8, a3, v9, v10, v11);
    v16 = objc_msgSend_substringWithRange_(a1, v13, v12, v13, v14, v15);
  }

  return v16;
}

uint64_t sub_1839B792C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_msgSend_length(a1, a2, a3, a4, a5, a6) - 1;

  return objc_msgSend_composedCharacterAtIndex_(a1, v7, v8, v9, v10, v11);
}

id sub_1839B7970(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  v13 = objc_msgSend_arrayWithCapacity_(v7, v9, v8, v10, v11, v12);
  v19 = objc_msgSend_length(a1, v14, v15, v16, v17, v18);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1839B7A50;
  v23[3] = &unk_1E6DE0C68;
  v20 = v13;
  v24 = v20;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v21, 0, v19, 2, v23);

  return v20;
}

id sub_1839B7A5C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1839B7BC8;
  v18 = sub_1839B7BD8;
  v19 = &stru_1EF1C0318;
  v9 = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1839B7BE0;
  v13[3] = &unk_1E6DE0C90;
  v13[6] = a3;
  v13[7] = a4;
  v13[4] = v20;
  v13[5] = &v14;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v10, 0, v9, 2, v13);
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(v20, 8);

  return v11;
}

void sub_1839B7BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1839B7BC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1839B7BE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  v13 = *(a1[4] + 8);
  v14 = *(v13 + 24);
  v15 = a1[6];
  v17 = v14 >= v15;
  v16 = v14 - v15;
  v17 = !v17 || v16 >= a1[7];
  v21 = v9;
  if (!v17)
  {
    v18 = objc_msgSend_stringByAppendingString_(*(*(a1[5] + 8) + 40), v9, v9, v10, v11, v12);
    v19 = *(a1[5] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v13 = *(a1[4] + 8);
    v14 = *(v13 + 24);
  }

  *(v13 + 24) = v14 + 1;
  if (*(*(a1[4] + 8) + 24) > a1[7] + a1[6])
  {
    *a7 = 1;
  }
}

unint64_t sub_1839B7CAC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    v13 = objc_msgSend_length(a1, v8, v9, v10, v11, v12);
    v17 = objc_msgSend_codepointAtIndex_outRange_(a1, v14, v13 - 1, 0, v15, v16);
    return (objc_msgSend_characterType_(CHCharacterSetRules, v18, v17, v19, v20, v21) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1839B7D00(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1839B7E1C;
  v10[3] = &unk_1E6DE0CB8;
  v10[4] = &v15;
  v10[5] = &v11;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v6, v8, 0, v7, 2, v10);
  LOBYTE(v6) = v16[3] & (*(v12 + 24) ^ 1);
  *(v16 + 24) = v6;
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6 & 1;
}

void sub_1839B7DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1839B7E1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = objc_msgSend_isEqualToString_(a2, a2, @".", a4, a5, a6);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 24);
  if (*(*(*(a1 + 40) + 8) + 24) != result)
  {
    v11 = 0;
  }

  *(v10 + 24) = v11;
  *(*(*(a1 + 40) + 8) + 24) ^= 1u;
  *a7 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

uint64_t sub_1839B7E98(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v11 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(a1, v7, a3, v8, v9, v10);
  v13 = v12;
  v17 = objc_msgSend_characterAtIndex_(a1, v12, a3, v14, v15, v16);
  IntPropertyValue = u_getIntPropertyValue(v17, UCHAR_GRAPHEME_CLUSTER_BREAK);
  if (a3 && IntPropertyValue == 10)
  {
    v24 = a3 - 1;
    do
    {
      v11 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(a1, v19, v24, v13, v22, v23);
      v13 = v25;
      v29 = objc_msgSend_characterAtIndex_(a1, v25, v24, v26, v27, v28);
      v30 = u_getIntPropertyValue(v29, UCHAR_GRAPHEME_CLUSTER_BREAK);
      v31 = v24-- != 0;
    }

    while (v31 && v30 == 10);
  }

  v32 = v11 + v13;
  if (v11 + v13 < objc_msgSend_length(a1, v19, v20, v21, v22, v23))
  {
    do
    {
      v37 = objc_msgSend_characterAtIndex_(a1, v33, v32, v34, v35, v36);
      if (u_getIntPropertyValue(v37, UCHAR_GRAPHEME_CLUSTER_BREAK) != 10)
      {
        break;
      }

      v11 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(a1, v38, v11, v13 + 1, v39, v40);
      v13 = v41;
      v32 = &v41[v11];
    }

    while (&v41[v11] < objc_msgSend_length(a1, v41, v42, v43, v44, v45));
  }

  if (v6[2](v6, v11, v13))
  {
    v46 = v32;
  }

  else
  {
    v46 = v11;
  }

  return v46;
}

uint64_t sub_1839B7FCC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EA84D320 == -1)
  {
    result = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84D320, &unk_1EF1BFB58);
    result = objc_msgSend_length(a1, v12, v13, v14, v15, v16);
    if (!result)
    {
      return result;
    }
  }

  return objc_msgSend_rangeOfCharacterFromSet_(a1, v8, qword_1EA84D318, v9, v10, v11) == 0x7FFFFFFFFFFFFFFFLL;
}

void sub_1839B8048(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v11 = objc_msgSend_invertedSet(v13, v6, v7, v8, v9, v10);
  v12 = qword_1EA84D318;
  qword_1EA84D318 = v11;
}

id sub_1839B80A4()
{
  if (qword_1EA84D328 == -1)
  {
    v1 = qword_1EA84D330;
  }

  else
  {
    dispatch_once(&qword_1EA84D328, &unk_1EF1BFB78);
    v1 = qword_1EA84D330;
  }

  return v1;
}

void sub_1839B810C()
{
  v0 = qword_1EA84D330;
  qword_1EA84D330 = &unk_1EF1EBCE8;
}

BOOL sub_1839B8124(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EA84D340 == -1)
  {
    v6 = objc_msgSend_rangeOfCharacterFromSet_(a1, a2, qword_1EA84D338, a4, a5, a6);
  }

  else
  {
    dispatch_once(&qword_1EA84D340, &unk_1EF1BFB98);
    v6 = objc_msgSend_rangeOfCharacterFromSet_(a1, v9, qword_1EA84D338, v10, v11, v12);
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

void sub_1839B818C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_alternativeCharacterForms(MEMORY[0x1E696AEC0], a2, a3, a4, a5, a6);
  v12 = objc_msgSend_allKeys(v6, v7, v8, v9, v10, v11);
  v23 = objc_msgSend_componentsJoinedByString_(v12, v13, &stru_1EF1C0318, v14, v15, v16);

  v21 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v17, v23, v18, v19, v20);
  v22 = qword_1EA84D338;
  qword_1EA84D338 = v21;
}

uint64_t sub_1839B8224(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v7 = objc_msgSend_ch_descenderCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v12 = objc_msgSend_rangeOfCharacterFromSet_(a1, v8, v7, v9, v10, v11) != 0x7FFFFFFFFFFFFFFFLL;

  v54 = v12;
  v18 = objc_msgSend_alternativeCharacterForms(MEMORY[0x1E696AEC0], v13, v14, v15, v16, v17);
  v24 = objc_msgSend_allValues(v18, v19, v20, v21, v22, v23);
  v29 = objc_msgSend_componentsJoinedByString_(v24, v25, &stru_1EF1C0318, v26, v27, v28);

  v35 = objc_msgSend_length(v29, v30, v31, v32, v33, v34);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_1839B8408;
  v50[3] = &unk_1E6DE0D08;
  v50[4] = a1;
  v50[5] = &v51;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v29, v36, 0, v35, 2, v50);
  v42 = objc_msgSend_length(a1, v37, v38, v39, v40, v41);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_1839B8478;
  v47[3] = &unk_1E6DE0CE0;
  v48 = &unk_1EF1EC988;
  v49 = &v51;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(a1, v43, 0, v42, v47, v44);
  v45 = *(v52 + 24);

  _Block_object_dispose(&v51, 8);
  return v45;
}

uint64_t sub_1839B8408(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v8 = result;
  v9 = *(*(result + 40) + 8);
  if (*(v9 + 24))
  {
    v10 = 1;
  }

  else
  {
    result = objc_msgSend_rangeOfString_(*(result + 32), a2, a2, a4, a5, a6);
    v10 = result != 0x7FFFFFFFFFFFFFFFLL;
    v9 = *(*(v8 + 40) + 8);
  }

  *(v9 + 24) = v10;
  *a7 = *(*(*(v8 + 40) + 8) + 24);
  return result;
}

void sub_1839B8478(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) == 1)
  {
    *(v8 + 24) = 1;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_containsObject_(v9, v11, v10, v12, v13, v14);
  }

  *a5 = *(*(*(a1 + 40) + 8) + 24);
}

uint64_t sub_1839B8508(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = objc_msgSend_length(a1, a2, a3, a4, a5, a6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1839B85EC;
  v11[3] = &unk_1E6DE0D08;
  v12 = &unk_1EF1EC9A0;
  v13 = &v14;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v8, 0, v7, 2, v11);
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

void sub_1839B85D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1839B85EC(uint64_t a1, void *a2)
{
  v45 = a2;
  v8 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v3, v4, v5, v6, v7);
  v13 = objc_msgSend_stringByTrimmingCharactersInSet_(v45, v9, v8, v10, v11, v12);

  if (objc_msgSend_length(v13, v14, v15, v16, v17, v18))
  {
    if (objc_msgSend_containsObject_(*(a1 + 32), v19, v45, v20, v21, v22))
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v28 = objc_msgSend_ch_nonAscenderCharacterSet(MEMORY[0x1E696AB08], v23, v24, v25, v26, v27);
      v33 = objc_msgSend_indexesOfCharacters_(v45, v29, v28, v30, v31, v32);

      v39 = objc_msgSend_count(v33, v34, v35, v36, v37, v38);
      if (v39 != objc_msgSend_length(v45, v40, v41, v42, v43, v44))
      {
        ++*(*(*(a1 + 40) + 8) + 24);
      }
    }
  }
}

uint64_t sub_1839B8718(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  hasAscender = objc_msgSend_hasAscender(a1, a2, a3, a4, a5, a6);
  v13 = objc_msgSend_ch_aboveXHeightCharacterSet(MEMORY[0x1E696AB08], v8, v9, v10, v11, v12);
  v18 = objc_msgSend_rangeOfCharacterFromSet_(a1, v14, v13, v15, v16, v17);

  v24 = objc_msgSend_ch_xHeightCharacterSet(MEMORY[0x1E696AB08], v19, v20, v21, v22, v23);
  v29 = objc_msgSend_rangeOfCharacterFromSet_(a1, v25, v24, v26, v27, v28);

  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return (v18 == 0x7FFFFFFFFFFFFFFFLL) & ~hasAscender;
  }
}

BOOL sub_1839B87CC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_ch_xHeightCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v12 = objc_msgSend_rangeOfCharacterFromSet_(a1, v8, v7, v9, v10, v11) != 0x7FFFFFFFFFFFFFFFLL;

  return v12;
}

id sub_1839B8820(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    v11 = objc_msgSend_length(a1, v6, v7, v8, v9, v10);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1839B8928;
    v17[3] = &unk_1E6DE0D30;
    v18 = v4;
    v12 = v5;
    v19 = v12;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v13, 0, v11, 2, v17);
    v14 = v19;
    v15 = v12;
  }

  else
  {
    v15 = a1;
  }

  return v15;
}

void sub_1839B8928(uint64_t a1, void *a2)
{
  v13 = a2;
  v11 = objc_msgSend_convertCharacter_(*(a1 + 32), v3, v13, v4, v5, v6);
  v12 = *(a1 + 40);
  if (v11)
  {
    objc_msgSend_appendString_(v12, v7, v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_appendString_(v12, v7, v13, v8, v9, v10);
  }
}

id sub_1839B899C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v11 = objc_msgSend_count(a1, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_arrayWithCapacity_(v5, v12, v11, v13, v14, v15);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1839B8A80;
  v26[3] = &unk_1E6DE0D58;
  v28 = v4;
  v17 = v16;
  v27 = v17;
  v18 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v19, v26, v20, v21, v22);
  v23 = v27;
  v24 = v17;

  return v17;
}

void sub_1839B8A80(uint64_t a1)
{
  v6 = (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(*(a1 + 32), v2, v6, v3, v4, v5);
}

id sub_1839B8AE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1839B8BBC;
  v20[3] = &unk_1E6DE0D80;
  v21 = v6;
  v7 = v6;
  v8 = a3;
  v13 = objc_msgSend_ch_mappedArrayWithBlock_(a1, v9, v20, v10, v11, v12);
  v18 = objc_msgSend_componentsJoinedByString_(v13, v14, v8, v15, v16, v17);

  return v18;
}

id sub_1839B8BCC(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v11 = objc_msgSend_count(a1, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_arrayWithCapacity_(v4, v12, v11, v13, v14, v15);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1839B8CB8;
  v28[3] = &unk_1E6DE0DA8;
  v29 = v16;
  v17 = v16;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v18, v28, v19, v20, v21);
  v26 = objc_msgSend_componentsJoinedByString_(v17, v22, v5, v23, v24, v25);

  return v26;
}

void sub_1839B8CB8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v27 = objc_msgSend_description(a2, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_description(v6, v12, v13, v14, v15, v16);

  v22 = objc_msgSend_stringWithFormat_(v5, v18, @"%@:%@", v19, v20, v21, v27, v17);
  objc_msgSend_addObject_(v4, v23, v22, v24, v25, v26);
}

BOOL sub_1839B8D68(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = objc_msgSend_mutableCopy(a1, v5, v6, v7, v8, v9);
  objc_msgSend_addIndexes_(v10, v11, v4, v12, v13, v14);
  v20 = objc_msgSend_count(v10, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_count(a1, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_count(v4, v27, v28, v29, v30, v31);

  return v20 != v32 + v26;
}

id sub_1839B8DF0()
{
  if (qword_1EA84D4A0 == -1)
  {
    v1 = qword_1EA84D348;
  }

  else
  {
    dispatch_once(&qword_1EA84D4A0, &unk_1EF1BFBB8);
    v1 = qword_1EA84D348;
  }

  return v1;
}

void sub_1839B8E58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, &stru_1EF1C0318, a4, a5, a6);
  v7 = qword_1EA84D348;
  qword_1EA84D348 = v6;
}

id sub_1839B8EA0()
{
  if (qword_1EA84D4A8 == -1)
  {
    v1 = qword_1EA84D350;
  }

  else
  {
    dispatch_once(&qword_1EA84D4A8, &unk_1EF1BFBD8);
    v1 = qword_1EA84D350;
  }

  return v1;
}

void sub_1839B8F08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @".,!?:，。，！？：", a4, a5, a6);;
  v7 = qword_1EA84D350;
  qword_1EA84D350 = v6;
}

id sub_1839B8F50()
{
  if (qword_1EA84D4B0 == -1)
  {
    v1 = qword_1EA84D358;
  }

  else
  {
    dispatch_once(&qword_1EA84D4B0, &unk_1EF1BFBF8);
    v1 = qword_1EA84D358;
  }

  return v1;
}

void sub_1839B8FB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"¡¿", a4, a5, a6);
  v7 = qword_1EA84D358;
  qword_1EA84D358 = v6;
}

id sub_1839B9000()
{
  if (qword_1EA84D4B8 == -1)
  {
    v1 = qword_1EA84D378;
  }

  else
  {
    dispatch_once(&qword_1EA84D4B8, &unk_1EF1BFC18);
    v1 = qword_1EA84D378;
  }

  return v1;
}

void sub_1839B9068(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", a4, a5, a6);
  v7 = qword_1EA84D378;
  qword_1EA84D378 = v6;
}

id sub_1839B90B0()
{
  if (qword_1EA84D4C0 == -1)
  {
    v1 = qword_1EA84D380;
  }

  else
  {
    dispatch_once(&qword_1EA84D4C0, &unk_1EF1BFC38);
    v1 = qword_1EA84D380;
  }

  return v1;
}

void sub_1839B9118(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", a4, a5, a6);
  v7 = qword_1EA84D380;
  qword_1EA84D380 = v6;
}

id sub_1839B9160()
{
  if (qword_1EA84D4C8 == -1)
  {
    v1 = qword_1EA84D360;
  }

  else
  {
    dispatch_once(&qword_1EA84D4C8, &unk_1EF1BFC58);
    v1 = qword_1EA84D360;
  }

  return v1;
}

void sub_1839B91C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"!#$%&'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_abcdefghijklmnopqrstuvwxyz{|}~£¥§«°»€•←↑→↓✓①②③④⑤⑥⑦⑧⑨¢", a4, a5, a6);;
  v7 = qword_1EA84D360;
  qword_1EA84D360 = v6;
}

id sub_1839B9210()
{
  if (qword_1EA84D4D0 == -1)
  {
    v1 = qword_1EA84D368;
  }

  else
  {
    dispatch_once(&qword_1EA84D4D0, &unk_1EF1BFC78);
    v1 = qword_1EA84D368;
  }

  return v1;
}

void sub_1839B9278(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E696AB08];
  v13 = objc_msgSend_ch_latinCharacterString(MEMORY[0x1E696AEC0], a2, a3, a4, a5, a6);
  v11 = objc_msgSend_characterSetWithCharactersInString_(v6, v7, v13, v8, v9, v10);
  v12 = qword_1EA84D368;
  qword_1EA84D368 = v11;
}

id sub_1839B92EC()
{
  if (qword_1EA84D4D8 == -1)
  {
    v1 = qword_1EA84D370;
  }

  else
  {
    dispatch_once(&qword_1EA84D4D8, &unk_1EF1BFC98);
    v1 = qword_1EA84D370;
  }

  return v1;
}

void sub_1839B9354(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E696AB08];
  v13 = objc_msgSend_ch_latinVietCharacterString(MEMORY[0x1E696AEC0], a2, a3, a4, a5, a6);
  v11 = objc_msgSend_characterSetWithCharactersInString_(v6, v7, v13, v8, v9, v10);
  v12 = qword_1EA84D370;
  qword_1EA84D370 = v11;
}

id sub_1839B93C8()
{
  if (qword_1EA84D4E0 == -1)
  {
    v1 = qword_1EA84D388;
  }

  else
  {
    dispatch_once(&qword_1EA84D4E0, &unk_1EF1BFCB8);
    v1 = qword_1EA84D388;
  }

  return v1;
}

void sub_1839B9430(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"АаБбВвГгҐґДдЕеЄєЁёЖжЗзІіЇїИиЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЪъЫыЬьЭэЮюЯя", a4, a5, a6);
  v7 = qword_1EA84D388;
  qword_1EA84D388 = v6;
}

id sub_1839B9478()
{
  if (qword_1EA84D4E8 == -1)
  {
    v1 = qword_1EA84D390;
  }

  else
  {
    dispatch_once(&qword_1EA84D4E8, &unk_1EF1BFCD8);
    v1 = qword_1EA84D390;
  }

  return v1;
}

void sub_1839B94E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], a2, @"ء", a4, a5, a6, @"آ", @"أ", @"ؤ", @"ئ", @"ا", @"ب", @"ة", @"ت", @"ث", @"ج", @"ح", @"خ", @"د", @"ذ", @"ر", @"ز", @"س", @"ش", @"ص", @"ض", @"ط", @"ظ", @"ع", @"غ", @"ف", @"ق", @"ك", @"ل", @"م", @"ن", @"ه", @"و", @"ى", @"ي", 0);
  v6 = MEMORY[0x1E696AB08];
  v11 = objc_msgSend_componentsJoinedByString_(v18, v7, &stru_1EF1C0318, v8, v9, v10);
  v16 = objc_msgSend_characterSetWithCharactersInString_(v6, v12, v11, v13, v14, v15);
  v17 = qword_1EA84D390;
  qword_1EA84D390 = v16;
}

id sub_1839B96D4()
{
  if (qword_1EA84D4F0 == -1)
  {
    v1 = qword_1EA84D398;
  }

  else
  {
    dispatch_once(&qword_1EA84D4F0, &unk_1EF1BFCF8);
    v1 = qword_1EA84D398;
  }

  return v1;
}

void sub_1839B973C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"٠١٢٣٤٥٦٧٨٩", a4, a5, a6);
  v7 = qword_1EA84D398;
  qword_1EA84D398 = v6;
}

id sub_1839B9784()
{
  if (qword_1EA84D4F8 == -1)
  {
    v1 = qword_1EA84D3A0;
  }

  else
  {
    dispatch_once(&qword_1EA84D4F8, &unk_1EF1BFD18);
    v1 = qword_1EA84D3A0;
  }

  return v1;
}

void sub_1839B97EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], a2, @"ً", a4, a5, a6, @"ٌ", @"ٍ", @"َ", @"ُ", @"ِ", @"ّ", @"ْ", 0);
  v6 = MEMORY[0x1E696AB08];
  v11 = objc_msgSend_componentsJoinedByString_(v18, v7, &stru_1EF1C0318, v8, v9, v10);
  v16 = objc_msgSend_characterSetWithCharactersInString_(v6, v12, v11, v13, v14, v15);
  v17 = qword_1EA84D3A0;
  qword_1EA84D3A0 = v16;
}

id sub_1839B98C8()
{
  if (qword_1EA84D500 == -1)
  {
    v1 = qword_1EA84D3B0;
  }

  else
  {
    dispatch_once(&qword_1EA84D500, &unk_1EF1BFD38);
    v1 = qword_1EA84D3B0;
  }

  return v1;
}

void sub_1839B9930(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], a2, @"ً", a4, a5, a6, @"ٌ", @"ٍ", 0);
  v6 = MEMORY[0x1E696AB08];
  v11 = objc_msgSend_componentsJoinedByString_(v18, v7, &stru_1EF1C0318, v8, v9, v10);
  v16 = objc_msgSend_characterSetWithCharactersInString_(v6, v12, v11, v13, v14, v15);
  v17 = qword_1EA84D3B0;
  qword_1EA84D3B0 = v16;
}

id sub_1839B99DC()
{
  if (qword_1EA84D508 == -1)
  {
    v1 = qword_1EA84D3A8;
  }

  else
  {
    dispatch_once(&qword_1EA84D508, &unk_1EF1BFD58);
    v1 = qword_1EA84D3A8;
  }

  return v1;
}

void sub_1839B9A44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], a2, @"ً", a4, a5, a6, @"ٌ", @"ٍ", @"َ", @"ُ", @"ِ", @"ّ", @"ْ", 0);
  v6 = MEMORY[0x1E696AB08];
  v11 = objc_msgSend_componentsJoinedByString_(v18, v7, &stru_1EF1C0318, v8, v9, v10);
  v16 = objc_msgSend_characterSetWithCharactersInString_(v6, v12, v11, v13, v14, v15);
  v17 = qword_1EA84D3A8;
  qword_1EA84D3A8 = v16;
}

id sub_1839B9B20()
{
  if (qword_1EA84D510 == -1)
  {
    v1 = qword_1EA84D3B8;
  }

  else
  {
    dispatch_once(&qword_1EA84D510, &unk_1EF1BFD78);
    v1 = qword_1EA84D3B8;
  }

  return v1;
}

void sub_1839B9B88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"ЁёЪъЭэЫы", a4, a5, a6);
  v7 = qword_1EA84D3B8;
  qword_1EA84D3B8 = v6;
}

id sub_1839B9BD0()
{
  if (qword_1EA84D518 == -1)
  {
    v1 = qword_1EA84D3C0;
  }

  else
  {
    dispatch_once(&qword_1EA84D518, &unk_1EF1BFD98);
    v1 = qword_1EA84D3C0;
  }

  return v1;
}

void sub_1839B9C38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithRange_(MEMORY[0x1E696AB08], a2, 19968, 20928, a5, a6);
  v7 = qword_1EA84D3C0;
  qword_1EA84D3C0 = v6;
}

id sub_1839B9C80()
{
  if (qword_1EA84D520 == -1)
  {
    v1 = qword_1EA84D3C8;
  }

  else
  {
    dispatch_once(&qword_1EA84D520, &unk_1EF1BFDB8);
    v1 = qword_1EA84D3C8;
  }

  return v1;
}

void sub_1839B9CE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithRange_(MEMORY[0x1E696AB08], a2, 13056, 256, a5, a6);
  v7 = qword_1EA84D3C8;
  qword_1EA84D3C8 = v6;
}

id sub_1839B9D30()
{
  if (qword_1EA84D528 == -1)
  {
    v1 = qword_1EA84D3D0;
  }

  else
  {
    dispatch_once(&qword_1EA84D528, &unk_1EF1BFDD8);
    v1 = qword_1EA84D3D0;
  }

  return v1;
}

void sub_1839B9D98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithRange_(MEMORY[0x1E696AB08], a2, 12352, 96, a5, a6);
  v7 = qword_1EA84D3D0;
  qword_1EA84D3D0 = v6;
}

id sub_1839B9DE0()
{
  if (qword_1EA84D530 == -1)
  {
    v1 = qword_1EA84D3D8;
  }

  else
  {
    dispatch_once(&qword_1EA84D530, &unk_1EF1BFDF8);
    v1 = qword_1EA84D3D8;
  }

  return v1;
}

void sub_1839B9E48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithRange_(MEMORY[0x1E696AB08], a2, 12448, 96, a5, a6);
  v7 = qword_1EA84D3D8;
  qword_1EA84D3D8 = v6;
}

id sub_1839B9E90()
{
  if (qword_1EA84D538 == -1)
  {
    v1 = qword_1EA84D3E0;
  }

  else
  {
    dispatch_once(&qword_1EA84D538, &unk_1EF1BFE18);
    v1 = qword_1EA84D3E0;
  }

  return v1;
}

void sub_1839B9EF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"([{"), a4, a5, a6;
  v7 = qword_1EA84D3E0;
  qword_1EA84D3E0 = v6;
}

id sub_1839B9F40()
{
  if (qword_1EA84D540 == -1)
  {
    v1 = qword_1EA84D3E8;
  }

  else
  {
    dispatch_once(&qword_1EA84D540, &unk_1EF1BFE38);
    v1 = qword_1EA84D3E8;
  }

  return v1;
}

void sub_1839B9FA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"]}"), a4, a5, a6);
  v7 = qword_1EA84D3E8;
  qword_1EA84D3E8 = v6;
}

id sub_1839B9FF0()
{
  if (qword_1EA84D548 == -1)
  {
    v1 = qword_1EA84D3F0;
  }

  else
  {
    dispatch_once(&qword_1EA84D548, &unk_1EF1BFE58);
    v1 = qword_1EA84D3F0;
  }

  return v1;
}

void sub_1839BA058(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"+=<>", a4, a5, a6);
  v7 = qword_1EA84D3F0;
  qword_1EA84D3F0 = v6;
}

id sub_1839BA0A0()
{
  if (qword_1EA84D550 == -1)
  {
    v1 = qword_1EA84D3F8;
  }

  else
  {
    dispatch_once(&qword_1EA84D550, &unk_1EF1BFE78);
    v1 = qword_1EA84D3F8;
  }

  return v1;
}

void sub_1839BA108(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"ๆ*%", a4, a5, a6);
  v7 = qword_1EA84D3F8;
  qword_1EA84D3F8 = v6;
}

id sub_1839BA150()
{
  if (qword_1EA84D558 == -1)
  {
    v1 = qword_1EA84D400;
  }

  else
  {
    dispatch_once(&qword_1EA84D558, &unk_1EF1BFE98);
    v1 = qword_1EA84D400;
  }

  return v1;
}

void sub_1839BA1B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"'", a4, a5, a6);
  v7 = qword_1EA84D400;
  qword_1EA84D400 = v6;
}

id sub_1839BA200()
{
  if (qword_1EA84D560 == -1)
  {
    v1 = qword_1EA84D408;
  }

  else
  {
    dispatch_once(&qword_1EA84D560, &unk_1EF1BFEB8);
    v1 = qword_1EA84D408;
  }

  return v1;
}

void sub_1839BA268(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"§gjpqyдурцщфзЦЩÇçĄąĘęŞşạặẶụẹựọộợậệ\xFFỹỳýȘșȚțฎๆฐญĵ𝒴𝑓𝔷,", a4, a5, a6);
  v7 = qword_1EA84D408;
  qword_1EA84D408 = v6;
}

id sub_1839BA2B0()
{
  if (qword_1EA84D568 == -1)
  {
    v1 = qword_1EA84D410;
  }

  else
  {
    dispatch_once(&qword_1EA84D568, &unk_1EF1BFED8);
    v1 = qword_1EA84D410;
  }

  return v1;
}

void sub_1839BA318(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_ch_xHeightCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v12 = objc_msgSend_mutableCopy(v6, v7, v8, v9, v10, v11);

  v17 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v13, @"ij:*+<>-~.,:", v14, v15, v16);
  objc_msgSend_formUnionWithCharacterSet_(v12, v18, v17, v19, v20, v21);

  v22 = qword_1EA84D410;
  qword_1EA84D410 = v12;
}

id sub_1839BA3A0()
{
  if (qword_1EA84D570 == -1)
  {
    v1 = qword_1EA84D418;
  }

  else
  {
    dispatch_once(&qword_1EA84D570, &unk_1EF1BFEF8);
    v1 = qword_1EA84D418;
  }

  return v1;
}

void sub_1839BA408(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"acegijmnopqrsuvwxyzàáâãäåçèéêëìíîïñòóôõöùúûüýăąćčęěĩńňřśşšũůźżžơưǵșагдежзийклмнопрстуфхцчшщъыьэюяёєกขฃคฆงจฉชซฌญฎฏฐฑฒณดตถทธนบผพภมยรฤลวศษสหฬอฮะาเแๆṕạạảấầẩẫậắằẳẵặặẹẹẻẽếềểễệỉịọỏốồổỗộớờởỡợụụủứừửữựỳỷỹ𝔷", a4, a5, a6);
  v7 = qword_1EA84D418;
  qword_1EA84D418 = v6;
}

id sub_1839BA450()
{
  if (qword_1EA84D578 == -1)
  {
    v1 = qword_1EA84D420;
  }

  else
  {
    dispatch_once(&qword_1EA84D578, &unk_1EF1BFF18);
    v1 = qword_1EA84D420;
  }

  return v1;
}

void sub_1839BA4B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"ijàáâãäåçèéêëìíîïñòóôõöùúûüýăćčęěĩńňřśšũůźżžơưǵйёṕảấầẩẫậắằẳẵặặẻẽếềểễệỉịỏốồổỗộớờởỡợủứừửữựỳỷỹ'°", a4, a5, a6);
  v7 = qword_1EA84D420;
  qword_1EA84D420 = v6;
}

id sub_1839BA500()
{
  if (qword_1EA84D580 == -1)
  {
    v1 = qword_1EA84D428;
  }

  else
  {
    dispatch_once(&qword_1EA84D580, &unk_1EF1BFF38);
    v1 = qword_1EA84D428;
  }

  return v1;
}

void sub_1839BA568(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"=°•*+<>-ー－一ニ二三ゝい〜~.,、'。，…→_", a4, a5, a6);
  v7 = qword_1EA84D428;
  qword_1EA84D428 = v6;
}

id sub_1839BA5B0()
{
  if (qword_1EA84D588 == -1)
  {
    v1 = qword_1EA84D430;
  }

  else
  {
    dispatch_once(&qword_1EA84D588, &unk_1EF1BFF58);
    v1 = qword_1EA84D430;
  }

  return v1;
}

void sub_1839BA618(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"!#$%&'()*+,-./:<=>?[\\]^_{|}~£¥§«°»€•¡¿“”•、。，〈〉《》「」『』【】〔〕〖〗〘〙゠・※²³", a4, a5, a6);;
  v7 = qword_1EA84D430;
  qword_1EA84D430 = v6;
}

id sub_1839BA660()
{
  if (qword_1EA84D590 == -1)
  {
    v1 = qword_1EA84D438;
  }

  else
  {
    dispatch_once(&qword_1EA84D590, &unk_1EF1BFF78);
    v1 = qword_1EA84D438;
  }

  return v1;
}

void sub_1839BA6C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"×÷·§", a4, a5, a6);
  v7 = qword_1EA84D438;
  qword_1EA84D438 = v6;
}

id sub_1839BA710()
{
  if (qword_1EA84D598 == -1)
  {
    v1 = qword_1EA84D440;
  }

  else
  {
    dispatch_once(&qword_1EA84D598, &unk_1EF1BFF98);
    v1 = qword_1EA84D440;
  }

  return v1;
}

void sub_1839BA778(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_ch_synthesisHallucinationProneCharSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v12 = objc_msgSend_mutableCopy(v6, v7, v8, v9, v10, v11);

  v18 = objc_msgSend_ch_synthesisFastPathOnlyCharSet(MEMORY[0x1E696AB08], v13, v14, v15, v16, v17);
  objc_msgSend_formUnionWithCharacterSet_(v12, v19, v18, v20, v21, v22);

  v23 = qword_1EA84D440;
  qword_1EA84D440 = v12;
}

id sub_1839BA7F8()
{
  if (qword_1EA84D5A0 == -1)
  {
    v1 = qword_1EA84D448;
  }

  else
  {
    dispatch_once(&qword_1EA84D5A0, &unk_1EF1BFFB8);
    v1 = qword_1EA84D448;
  }

  return v1;
}

void sub_1839BA860(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"ąćęłńóśźż", a4, a5, a6);
  v7 = qword_1EA84D448;
  qword_1EA84D448 = v6;
}

id sub_1839BA8A8()
{
  if (qword_1EA84D5A8 == -1)
  {
    v1 = qword_1EA84D400;
  }

  else
  {
    dispatch_once(&qword_1EA84D5A8, &unk_1EF1BFFD8);
    v1 = qword_1EA84D400;
  }

  return v1;
}

void sub_1839BA910(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"gjpqyzÇçý\xFFĄąĘęŞşȘșȚțЦЩдзруфцщญฎฐๆỳỹ", a4, a5, a6);
  v7 = qword_1EA84DC40;
  qword_1EA84DC40 = v6;
}

id sub_1839BA958()
{
  if (qword_1EA84D5B0 == -1)
  {
    v1 = qword_1EA84D450;
  }

  else
  {
    dispatch_once(&qword_1EA84D5B0, &unk_1EF1BFFF8);
    v1 = qword_1EA84D450;
  }

  return v1;
}

void sub_1839BA9C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"weruosaxcvnm✓", a4, a5, a6);
  v7 = qword_1EA84D450;
  qword_1EA84D450 = v6;
}

id sub_1839BAA08()
{
  if (qword_1EA84D5B8 == -1)
  {
    v1 = qword_1EA84D458;
  }

  else
  {
    dispatch_once(&qword_1EA84D5B8, &unk_1EF1C0018);
    v1 = qword_1EA84D458;
  }

  return v1;
}

void sub_1839BAA70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"zqypgąęşș¡¿", a4, a5, a6);
  v7 = qword_1EA84D458;
  qword_1EA84D458 = v6;
}

id sub_1839BAAB8()
{
  if (qword_1EA84D5C0 == -1)
  {
    v1 = qword_1EA84D460;
  }

  else
  {
    dispatch_once(&qword_1EA84D5C0, &unk_1EF1C0038);
    v1 = qword_1EA84D460;
  }

  return v1;
}

void sub_1839BAB20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"ik0123456789QWERTYUIOPLKJHGFDSAZXCVBNMtlhdb%?!@ÀÁÂÃÄÅÆÈÉÊËÌÍÎÏÑÒÓÔÕÖØÙÚÛÜÝàáâãäåæèéêëìíîïñòóôõöøùúûüĂăĆćČčĎďĚěĞİıŁłŃńŇňŒœŘřŚśŠšŤťŮůŸŹźŻżŽž€₺↑↓①②③④⑤⑥⑦⑧⑨", a4, a5, a6);
  v7 = qword_1EA84D460;
  qword_1EA84D460 = v6;
}

id sub_1839BAB68()
{
  if (qword_1EA84D5C8 == -1)
  {
    v1 = qword_1EA84D468;
  }

  else
  {
    dispatch_once(&qword_1EA84D5C8, &unk_1EF1C0058);
    v1 = qword_1EA84D468;
  }

  return v1;
}

void sub_1839BABD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0123456789QWERTYUIOPLKJHGFDSAZXCVBNMtlhdb%?!|}¢£¥§ª°ºÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÑÒÓÔÕÖØÙÚÛÜÝĂĄĆČĎĘĚĞİŁłŃŇŒŘŚŞŠŤŮŸŹŻŽȘȚ€₺↑↓①②③④⑤⑥⑦⑧⑨", a4, a5, a6);
  v7 = qword_1EA84D468;
  qword_1EA84D468 = v6;
}

id sub_1839BAC18()
{
  if (qword_1EA84D5D0 == -1)
  {
    v1 = qword_1EA84D470;
  }

  else
  {
    dispatch_once(&qword_1EA84D5D0, &unk_1EF1C0078);
    v1 = qword_1EA84D470;
  }

  return v1;
}

void sub_1839BAC80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0123456789.,+-=", a4, a5, a6);
  v7 = qword_1EA84D470;
  qword_1EA84D470 = v6;
}

id sub_1839BACC8()
{
  if (qword_1EA84D5D8 == -1)
  {
    v1 = qword_1EA84D478;
  }

  else
  {
    dispatch_once(&qword_1EA84D5D8, &unk_1EF1C0098);
    v1 = qword_1EA84D478;
  }

  return v1;
}

void sub_1839BAD30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0123456789", a4, a5, a6);
  v7 = qword_1EA84D478;
  qword_1EA84D478 = v6;
}

id sub_1839BAD78()
{
  if (qword_1EA84D5E0 == -1)
  {
    v1 = qword_1EA84D480;
  }

  else
  {
    dispatch_once(&qword_1EA84D5E0, &unk_1EF1C00B8);
    v1 = qword_1EA84D480;
  }

  return v1;
}

void sub_1839BADE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @".,' ", a4, a5, a6);
  v7 = qword_1EA84D480;
  qword_1EA84D480 = v6;
}

id sub_1839BAE28()
{
  if (qword_1EA84D5E8 == -1)
  {
    v1 = qword_1EA84D488;
  }

  else
  {
    dispatch_once(&qword_1EA84D5E8, &unk_1EF1C00D8);
    v1 = qword_1EA84D488;
  }

  return v1;
}

void sub_1839BAE90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"+-*÷/:×⋅", a4, a5, a6);
  v7 = qword_1EA84D488;
  qword_1EA84D488 = v6;
}

id sub_1839BAED8()
{
  if (qword_1EA84D5F0 == -1)
  {
    v1 = qword_1EA84D498;
  }

  else
  {
    dispatch_once(&qword_1EA84D5F0, &unk_1EF1C00F8);
    v1 = qword_1EA84D498;
  }

  return v1;
}

void sub_1839BAF40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"⌊⌋√⌈⌉₀₁₂₃₄₅₆₇₈₉⁰¹²³⁴⁵⁶⁷⁸⁹π", a4, a5, a6);
  v7 = qword_1EA84D498;
  qword_1EA84D498 = v6;
}

id sub_1839BAF88()
{
  if (qword_1EA84D5F8[0] == -1)
  {
    v1 = qword_1EA84D490;
  }

  else
  {
    dispatch_once(qword_1EA84D5F8, &unk_1EF1C0118);
    v1 = qword_1EA84D490;
  }

  return v1;
}

void sub_1839BAFF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"$€£¥¢₺₴₽₩", a4, a5, a6);
  v7 = qword_1EA84D490;
  qword_1EA84D490 = v6;
}

id sub_1839BB038(const __CFCharacterSet *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, a3, a4, a5, a6);
  objc_msgSend_appendFormat_(v7, v8, @"CharacterSet contents:\n", v9, v10, v11);
  v16 = 0;
  v17 = 67043328;
  do
  {
    if (objc_msgSend_hasMemberInPlane_(a1, v12, v16, v13, v14, v15))
    {
      v18 = (v16 << 16);
      v19 = 0x10000;
      v20 = v17;
      do
      {
        if (CFCharacterSetIsLongCharacterMember(a1, v18))
        {
          if (WORD1(v18))
          {
            objc_msgSend_appendFormat_(v7, v12, @"0x%04X '%c''%c'\n", v13, v14, v15, v18, ((v20 >> 10) - 10240), v18 & 0x3FF | 0xDC00);
          }

          else if ((v18 & 0xF800) != 0xD800)
          {
            objc_msgSend_appendFormat_(v7, v12, @"0x%04X '%c'\n", v13, v14, v15, v18, v18, v22);
          }
        }

        v18 = (v18 + 1);
        ++v20;
        --v19;
      }

      while (v19);
    }

    ++v16;
    v17 += 0x10000;
  }

  while (v16 != 16);

  return v7;
}

BOOL sub_1839BB16C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sizep = 0;
  v7 = a1;
  v13 = objc_msgSend_objCType(v7, v8, v9, v10, v11, v12);
  NSGetSizeAndAlignment(v13, &sizep, 0);
  v18 = a3;
  v19 = sizep;
  if (v18 && sizep == a4)
  {
    objc_msgSend_getValue_(a1, v14, v18, v15, v16, v17);
  }

  return v19 == a4;
}

double sub_1839BB1E0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *MEMORY[0x1E695EFF8];
  objc_msgSend_ch_getValue_ofSize_(a1, a2, &v7, 16, a5, a6);
  return *&v7;
}

id sub_1839BB21C(double a1, double a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v10 = a1;
  *&v10[1] = a2;
  v8 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], a4, v10, "{CGPoint=dd}", a7, a8);

  return v8;
}

double sub_1839BB268(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(MEMORY[0x1E695F058] + 16);
  v8[0] = *MEMORY[0x1E695F058];
  v8[1] = v6;
  objc_msgSend_ch_getValue_ofSize_(a1, a2, v8, 32, a5, a6);
  return *v8;
}

id sub_1839BB2A8(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;
  *&v12[1] = a2;
  *&v12[2] = a3;
  *&v12[3] = a4;
  v10 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], a6, v12, "{CGRect={CGPoint=dd}{CGSize=dd}}", a9, a10);

  return v10;
}

uint64_t sub_1839BBF74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_lowercaseString(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"0x00b6", v8, v9, v10);

  return isEqualToString;
}

uint64_t sub_1839BBFF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_lowercaseString(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"0x00b6", v8, v9, v10);

  return isEqualToString;
}

void sub_1839BC04C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v133 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], a2, a3, a4, a5, a6);
  v19 = objc_msgSend_string(MEMORY[0x1E696AD60], v9, v10, v11, v12, v13);
  while (1)
  {
    v20 = *(*(*(a1 + 80) + 8) + 24);
    if (v20 >= objc_msgSend_count(*(a1 + 32), v14, v15, v16, v17, v18))
    {
      break;
    }

    v26 = *(*(*(a1 + 80) + 8) + 24);
    if (v26 == a2)
    {
      if (objc_msgSend_count(v8, v21, v26, v23, v24, v25))
      {
        v79 = *(a1 + 40);
        v80 = objc_msgSend_strokeGroupFromStrokeIndexes_offset_strokeProvider_classification_(CHTestUtilities, v21, v8, *(a1 + 88), *(a1 + 48), 1);
        objc_msgSend_addObject_(v79, v81, v80, v82, v83, v84);

        objc_msgSend_removeAllIndexes(v8, v85, v86, v87, v88, v89);
        v90 = *(a1 + 56);
        v96 = objc_msgSend_copy(v19, v91, v92, v93, v94, v95);
        objc_msgSend_addObject_(v90, v97, v96, v98, v99, v100);

        objc_msgSend_setString_(v19, v101, &stru_1EF1C0318, v102, v103, v104);
      }

      break;
    }

    v27 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v21, v26, v23, v24, v25);
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v28 = v27;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v127, v132, 16, v30);
    if (v36)
    {
      v37 = *v128;
      do
      {
        v38 = 0;
        do
        {
          if (*v128 != v37)
          {
            objc_enumerationMutation(v28);
          }

          v39 = *(a1 + 64);
          v40 = objc_msgSend_integerValue(*(*(&v127 + 1) + 8 * v38), v31, v32, v33, v34, v35);
          v45 = objc_msgSend_objectAtIndexedSubscript_(v39, v41, v40, v42, v43, v44);
          v50 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 0, v47, v48, v49);
          v56 = objc_msgSend_integerValue(v50, v51, v52, v53, v54, v55);
          objc_msgSend_addIndex_(v8, v57, v56, v58, v59, v60);

          ++v38;
        }

        while (v36 != v38);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v127, v132, 16, v35);
      }

      while (v36);
    }

    v65 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v61, *(*(*(a1 + 80) + 8) + 24), v62, v63, v64);
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v66 = v65;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v123, v131, 16, v68);
    if (v69)
    {
      v70 = *v124;
      do
      {
        v71 = 0;
        do
        {
          if (*v124 != v70)
          {
            objc_enumerationMutation(v66);
          }

          v72 = stringFromUnicodeCodePointString(*(*(&v123 + 1) + 8 * v71));
          objc_msgSend_appendString_(v19, v73, v72, v74, v75, v76);

          ++v71;
        }

        while (v69 != v71);
        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v77, &v123, v131, 16, v78);
      }

      while (v69);
    }

    ++*(*(*(a1 + 80) + 8) + 24);
  }

  if (objc_msgSend_count(v8, v21, v22, v23, v24, v25))
  {
    v106 = *(a1 + 40);
    v107 = objc_msgSend_strokeGroupFromStrokeIndexes_offset_strokeProvider_classification_(CHTestUtilities, v105, v8, *(a1 + 88), *(a1 + 48), 3);
    objc_msgSend_addObject_(v106, v108, v107, v109, v110, v111);

    v112 = *(a1 + 56);
    v118 = objc_msgSend_copy(v19, v113, v114, v115, v116, v117);
    objc_msgSend_addObject_(v112, v119, v118, v120, v121, v122);
  }
}

void sub_1839BC470(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v139 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = *(*(*(a1 + 88) + 8) + 24);
  v15 = objc_msgSend_count(v8, a2, a3, a4, a5, a6);
  v16 = a2;
  if (v15 <= a2)
  {
    v16 = objc_msgSend_count(*(a1 + 32), v10, v11, v12, v13, v14);
  }

  v128 = objc_msgSend_subarrayWithRange_(v8, v10, v9 + 1, v16 + ~*(*(*(a1 + 88) + 8) + 24), v13, v14);
  v27 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v17, v18, v19, v20, v21);
  while (1)
  {
    v28 = *(*(*(a1 + 96) + 8) + 24);
    if (v28 >= objc_msgSend_count(*(a1 + 40), v22, v23, v24, v25, v26))
    {
      break;
    }

    v34 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v29, *(*(*(a1 + 96) + 8) + 24), v31, v32, v33);
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v35 = v34;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v133, v138, 16, v37);
    if (v43)
    {
      v44 = *v134;
      while (2)
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v134 != v44)
          {
            objc_enumerationMutation(v35);
          }

          if (objc_msgSend_integerValue(*(*(&v133 + 1) + 8 * i), v38, v39, v40, v41, v42) > a2)
          {

            if (objc_msgSend_count(v27, v84, v85, v86, v87, v88))
            {
              v90 = *(a1 + 56);
              v91 = objc_msgSend_strokeGroupFromStrokeIndexes_offset_strokeProvider_classification_(CHTestUtilities, v89, v27, *(a1 + 104), *(a1 + 64), 3);
              objc_msgSend_addObject_(v90, v92, v91, v93, v94, v95);

              objc_msgSend_removeAllIndexes(v27, v96, v97, v98, v99, v100);
              v101 = *(a1 + 72);
              v106 = objc_msgSend_componentsJoinedByString_(v128, v102, @" ", v103, v104, v105);
              objc_msgSend_addObject_(v101, v107, v106, v108, v109, v110);
            }

            goto LABEL_24;
          }
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v133, v138, 16, v42);
        if (v43)
        {
          continue;
        }

        break;
      }
    }

    v50 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v46, *(*(*(a1 + 96) + 8) + 24), v47, v48, v49);
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v51 = v50;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v129, v137, 16, v53);
    if (v59)
    {
      v60 = *v130;
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v130 != v60)
          {
            objc_enumerationMutation(v51);
          }

          v62 = *(a1 + 80);
          v63 = objc_msgSend_integerValue(*(*(&v129 + 1) + 8 * j), v54, v55, v56, v57, v58);
          v68 = objc_msgSend_objectAtIndexedSubscript_(v62, v64, v63, v65, v66, v67);
          v73 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, 0, v70, v71, v72);
          v79 = objc_msgSend_integerValue(v73, v74, v75, v76, v77, v78);
          objc_msgSend_addIndex_(v27, v80, v79, v81, v82, v83);
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v54, &v129, v137, 16, v58);
      }

      while (v59);
    }

    ++*(*(*(a1 + 96) + 8) + 24);
  }

LABEL_24:
  if (objc_msgSend_count(v27, v29, v30, v31, v32, v33))
  {
    v112 = *(a1 + 56);
    v113 = objc_msgSend_strokeGroupFromStrokeIndexes_offset_strokeProvider_classification_(CHTestUtilities, v111, v27, *(a1 + 104), *(a1 + 64), 3);
    objc_msgSend_addObject_(v112, v114, v113, v115, v116, v117);

    v118 = *(a1 + 72);
    v123 = objc_msgSend_componentsJoinedByString_(v128, v119, @" ", v120, v121, v122);
    objc_msgSend_addObject_(v118, v124, v123, v125, v126, v127);
  }
}

void sub_1839BCBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v33 - 184), 8);

  _Block_object_dispose((v33 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1839BCC34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_1839BCC4C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 sub_1839BCC5C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1839BCC6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 80);
  v9 = objc_msgSend_orderedStrokes(*(a1 + 32), a2, a3, a4, a5, a6);
  v58 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, &a2[v8], v11, v12, v13);

  v14 = *(a1 + 40);
  v20 = objc_msgSend_encodedStrokeIdentifier(v58, v15, v16, v17, v18, v19);
  objc_msgSend_addObject_(v14, v21, v20, v22, v23, v24);

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v30 = objc_msgSend_encodedStrokeIdentifier(v58, v25, v26, v27, v28, v29);
    v31 = *(*(a1 + 48) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    objc_msgSend_bounds(v58, v33, v34, v35, v36, v37);
    v38 = *(*(a1 + 56) + 8);
    *(v38 + 48) = v39;
    *(v38 + 56) = v40;
  }

  v41 = objc_msgSend_encodedStrokeIdentifier(v58, v25, v26, v27, v28, v29);
  v42 = *(*(a1 + 64) + 8);
  v43 = *(v42 + 40);
  *(v42 + 40) = v41;

  v44 = *(*(a1 + 72) + 8);
  v45 = v44[6];
  v46 = v44[7];
  v47 = v44[8];
  v48 = v44[9];
  objc_msgSend_bounds(v58, v49, v50, v51, v52, v53);
  v61.origin.x = v54;
  v61.origin.y = v55;
  v61.size.width = v56;
  v61.size.height = v57;
  v60.origin.x = v45;
  v60.origin.y = v46;
  v60.size.width = v47;
  v60.size.height = v48;
  *(*(*(a1 + 72) + 8) + 48) = CGRectUnion(v60, v61);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x1EEDBAC40](path);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E10]();
}

{
  return MEMORY[0x1EEE63E30]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}