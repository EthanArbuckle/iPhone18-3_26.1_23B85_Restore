uint64_t sub_1836E3030(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL sub_1836E3184(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v16;
            if ((*a3)(*(a2 - 1)))
            {
              v23 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v23;
            }
          }

          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_1836E3030(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_1836E3030(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_16;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_16:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v24 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v24))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (!(*a3)(*v25, *v18))
  {
LABEL_40:
    v18 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }

  v28 = *v25;
  v29 = v26;
  do
  {
    v30 = a1 + v29;
    *(a1 + v29 + 24) = *(a1 + v29 + 16);
    if (v29 == -16)
    {
      *a1 = v28;
      if (++v27 != 8)
      {
        goto LABEL_40;
      }

      return v25 + 1 == a2;
    }

    v29 -= 8;
  }

  while (((*a3)(v28, *(v30 + 1)) & 1) != 0);
  *(a1 + v29 + 24) = v28;
  if (++v27 != 8)
  {
    goto LABEL_40;
  }

  return v25 + 1 == a2;
}

void sub_1836E3E28()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.CoreHandwriting.CHClientStroke", v2);
  v1 = qword_1EA84CDB0;
  qword_1EA84CDB0 = v0;
}

uint64_t sub_1836E3E8C(uint64_t result)
{
  v1 = qword_1EA84DAD8;
  *(*(result + 32) + 40) = qword_1EA84DAD8;
  qword_1EA84DAD8 = v1 + 1;
  return result;
}

uint64_t sub_1836E5AA4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v11 = objc_msgSend_strokeIdentifier(a2, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_strokeIdentifier(v5, v12, v13, v14, v15, v16);

  v21 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v4, v18, v11, v17, v19, v20);
  return v21;
}

void sub_1836E5B8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 40);
  v11 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 8), a2, a2, a4, a5, a6);
  objc_msgSend_setStrokeAttributes_(v11, v7, v6, v8, v9, v10);
}

void sub_1836E6260(uint64_t a1, void *a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v6, a3, v7, v8, v9);
  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  if (*(a1 + 40) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v23 = v5;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v82, v87, 16, v25);
    if (v26)
    {
      v32 = v26;
      v33 = *v83;
      do
      {
        v34 = 0;
        do
        {
          if (*v83 != v33)
          {
            objc_enumerationMutation(v23);
          }

          v35 = *(a1 + 40);
          v36 = objc_msgSend_intValue(*(*(&v82 + 1) + 8 * v34), v27, v28, v29, v30, v31);
          v41 = objc_msgSend_objectAtIndexedSubscript_(v35, v37, v36, v38, v39, v40);
          v46 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, 0, v43, v44, v45);

          if ((objc_msgSend_containsObject_(v21, v47, v46, v48, v49, v50) & 1) == 0)
          {
            objc_msgSend_addObject_(v21, v51, v46, v52, v53, v54);
          }

          ++v34;
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v27, &v82, v87, 16, v31);
      }

      while (v32);
    }
  }

  else
  {
    v22 = objc_msgSend_mutableCopy(v5, v16, v17, v18, v19, v20);

    v21 = v22;
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v55 = v21;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v78, v86, 16, v57);
  if (v58)
  {
    v64 = v58;
    v65 = *v79;
    do
    {
      v66 = 0;
      do
      {
        if (*v79 != v65)
        {
          objc_enumerationMutation(v55);
        }

        v67 = *(a1 + 48);
        v68 = objc_msgSend_intValue(*(*(&v78 + 1) + 8 * v66), v59, v60, v61, v62, v63, v78);
        v73 = objc_msgSend_objectAtIndexedSubscript_(v67, v69, v68, v70, v71, v72);
        objc_msgSend_addObjectsFromArray_(v73, v74, v10, v75, v76, v77);

        ++v66;
      }

      while (v64 != v66);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v59, &v78, v86, 16, v63);
    }

    while (v64);
  }
}

void sub_1836E64E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], a2, 1, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

id sub_1836E799C(void *a1, void *a2, unint64_t a3)
{
  v244 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v12 = objc_msgSend_shape(v6, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 1, v14, v15, v16);
  v23 = objc_msgSend_unsignedLongValue(v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_shape(v5, v24, v25, v26, v27, v28);
  v34 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 1, v31, v32, v33);
  v40 = objc_msgSend_unsignedLongValue(v34, v35, v36, v37, v38, v39);

  if (v23 != v40)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v46 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v52 = objc_msgSend_shape(v5, v47, v48, v49, v50, v51);
      v57 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 1, v54, v55, v56);
      v63 = objc_msgSend_unsignedLongValue(v57, v58, v59, v60, v61, v62);
      v69 = objc_msgSend_shape(v6, v64, v65, v66, v67, v68);
      v74 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, 1, v71, v72, v73);
      *buf = 134218240;
      v241 = v63;
      v242 = 2048;
      v243 = objc_msgSend_unsignedLongValue(v74, v75, v76, v77, v78, v79);
      _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_ERROR, "Expected dxdy.shape[1]=%lu to match eos.shape[1]=%lu", buf, 0x16u);
    }
  }

  v80 = objc_msgSend_shape(v6, v41, v42, v43, v44, v45);
  v85 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, 1, v82, v83, v84);
  v91 = objc_msgSend_unsignedLongValue(v85, v86, v87, v88, v89, v90);
  v97 = objc_msgSend_shape(v5, v92, v93, v94, v95, v96);
  v102 = objc_msgSend_objectAtIndexedSubscript_(v97, v98, 1, v99, v100, v101);
  LOBYTE(v91) = v91 == objc_msgSend_unsignedLongValue(v102, v103, v104, v105, v106, v107);

  if ((v91 & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v113 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
    {
      v119 = objc_msgSend_shape(v5, v114, v115, v116, v117, v118);
      v124 = objc_msgSend_objectAtIndexedSubscript_(v119, v120, 1, v121, v122, v123);
      v130 = objc_msgSend_unsignedLongValue(v124, v125, v126, v127, v128, v129);
      v136 = objc_msgSend_shape(v6, v131, v132, v133, v134, v135);
      v141 = objc_msgSend_objectAtIndexedSubscript_(v136, v137, 1, v138, v139, v140);
      v147 = objc_msgSend_unsignedLongValue(v141, v142, v143, v144, v145, v146);
      *buf = 134218240;
      v241 = v130;
      v242 = 2048;
      v243 = v147;
      _os_log_impl(&dword_18366B000, v113, OS_LOG_TYPE_FAULT, "Expected dxdy.shape[1]=%lu to match eos.shape[1]=%lu", buf, 0x16u);
    }
  }

  v148 = objc_msgSend_shape(v6, v108, v109, v110, v111, v112);
  v153 = objc_msgSend_objectAtIndexedSubscript_(v148, v149, 1, v150, v151, v152);
  v159 = objc_msgSend_unsignedIntValue(v153, v154, v155, v156, v157, v158) < a3;

  if (v159)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v165 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      v171 = objc_msgSend_shape(v6, v166, v167, v168, v169, v170);
      v176 = objc_msgSend_objectAtIndexedSubscript_(v171, v172, 1, v173, v174, v175);
      v182 = objc_msgSend_unsignedLongValue(v176, v177, v178, v179, v180, v181);
      *buf = 134218240;
      v241 = a3;
      v242 = 2048;
      v243 = v182;
      _os_log_impl(&dword_18366B000, v165, OS_LOG_TYPE_ERROR, "Expected length=%lu to match eos.shape[1]=%lu", buf, 0x16u);
    }
  }

  v183 = objc_msgSend_shape(v6, v160, v161, v162, v163, v164);
  v188 = objc_msgSend_objectAtIndexedSubscript_(v183, v184, 1, v185, v186, v187);
  v194 = objc_msgSend_unsignedIntValue(v188, v189, v190, v191, v192, v193) < a3;

  if (v194)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v195 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v195, OS_LOG_TYPE_FAULT))
    {
      v201 = objc_msgSend_shape(v6, v196, v197, v198, v199, v200);
      v206 = objc_msgSend_objectAtIndexedSubscript_(v201, v202, 1, v203, v204, v205);
      v212 = objc_msgSend_unsignedLongValue(v206, v207, v208, v209, v210, v211);
      *buf = 134218240;
      v241 = a3;
      v242 = 2048;
      v243 = v212;
      _os_log_impl(&dword_18366B000, v195, OS_LOG_TYPE_FAULT, "Expected length=%lu to match eos.shape[1]=%lu", buf, 0x16u);
    }
  }

  v213 = objc_opt_new();
  v214 = v5;
  v220 = objc_msgSend_dataPointer(v5, v215, v216, v217, v218, v219);
  v221 = v6;
  v227 = objc_msgSend_dataPointer(v6, v222, v223, v224, v225, v226);
  if (a3)
  {
    v234 = v227;
    v233 = 0uLL;
    do
    {
      v235 = *v220++;
      v236 = v235;
      v235.i32[0] = *v234++;
      objc_msgSend_addPoint_(v213, v228, v229, v230, v231, v232, vaddq_f64(v233, vcvtq_f64_f32(v236)));
      if (v235.f32[0] > 0.0)
      {
        objc_msgSend_endStroke(v213, v228, v229, v230, v231, v232);
      }

      --a3;
      v233 = v239;
    }

    while (a3);
  }

  if (objc_msgSend_pointCount(v213, v228, v229, v230, v231, v232, v233.f64[0]))
  {
    v237 = v213;
  }

  else
  {
    v237 = 0;
  }

  return v237;
}

id sub_1836E80DC(void *a1, float a2)
{
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x1E695FED0]);
  v7 = objc_msgSend_initWithShape_dataType_error_(v4, v5, v3, 65568, 0, v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1836E81E4;
  v14[3] = &unk_1E6DDCA20;
  v8 = v7;
  v15 = v8;
  v16 = a2;
  objc_msgSend_getBytesWithHandler_(v8, v9, v14, v10, v11, v12);

  return v8;
}

uint64_t sub_1836E81E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5, a6);
  if (result)
  {
    v14 = a2;
    do
    {
      *v14 = *(a1 + 40);
      v14 += 4;
      result = objc_msgSend_count(*(a1 + 32), v9, v10, v11, v12, v13);
    }

    while (v14 != &a2[4 * result]);
  }

  return result;
}

id sub_1836E823C(void *a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x1E695FED0]);
  v8 = objc_msgSend_initWithShape_dataType_error_(v5, v6, v4, 131104, 0, v7);
  v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);
  if (v14 != objc_msgSend_count(v3, v15, v16, v17, v18, v19))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v64 = objc_msgSend_count(v8, v26, v27, v28, v29, v30);
      v65 = 2048;
      v66 = objc_msgSend_count(v3, v31, v32, v33, v34, v35);
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "Size mismatch! shape elements: %ld, vector elements: %ld", buf, 0x16u);
    }
  }

  v36 = objc_msgSend_count(v8, v20, v21, v22, v23, v24);
  if (v36 != objc_msgSend_count(v3, v37, v38, v39, v40, v41))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v42 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      v48 = objc_msgSend_count(v8, v43, v44, v45, v46, v47);
      v54 = objc_msgSend_count(v3, v49, v50, v51, v52, v53);
      *buf = 134218240;
      v64 = v48;
      v65 = 2048;
      v66 = v54;
      _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_FAULT, "Size mismatch! shape elements: %ld, vector elements: %ld", buf, 0x16u);
    }
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = sub_1836E8518;
  v61[3] = &unk_1E6DDC9F8;
  v55 = v3;
  v62 = v55;
  objc_msgSend_getBytesWithHandler_(v8, v56, v61, v57, v58, v59);

  return v8;
}

void sub_1836E84C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1836E8518(uint64_t a1, _DWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16, v5);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v3);
        }

        *a2++ = objc_msgSend_intValue(*(*(&v14 + 1) + 8 * v13++), v6, v7, v8, v9, v10, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v14, v18, 16, v10);
    }

    while (v11);
  }
}

id sub_1836E862C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v11 = a2;
  v40 = v5;
  if (v5)
  {
    v12 = a3[1] - *a3;
    if (v12)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1836D58DC();
    }

    v13 = objc_msgSend_strokeCount(v5, v6, v7, v8, v9, v10);
    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_1836D58DC();
    }

    v19 = 0;
    for (i = 0; i < objc_msgSend_strokeCount(v40, v14, v15, v16, v17, v18); ++i)
    {
      v26 = objc_msgSend_pointCountForStrokeIndex_(v40, v21, i, v23, v24, v25);
      v27 = v19;
      v28 = v19 >> 3;
      if (((v19 >> 3) + 1) >> 61)
      {
        sub_1836D58DC();
      }

      if (v19 >> 3 != -1)
      {
        if (!(((v19 >> 3) + 1) >> 61))
        {
          operator new();
        }

        sub_183688F00();
      }

      *(8 * v28) = v26;
      v19 = 8 * v28 + 8;
      memcpy(0, 0, v27);
    }

    if (v19)
    {
      v29 = 8;
      if (v19 != 8)
      {
        v30 = MEMORY[0];
        do
        {
          v30 = v30 + *v29;
          *v29 = v30;
          v29 += 8;
        }

        while (v29 != v19);
      }

      if (v19 >= 0)
      {
        operator new();
      }

      sub_1836D58DC();
    }

    if (objc_msgSend_strokeCount(v40, v21, v22, v23, v24, v25) >= 2)
    {
      objc_msgSend_boundsForStrokeIndex_(v40, v31, 0, v32, v33, v34);
      CGRectGetMaxX(v42);
      objc_msgSend_boundsForStrokeIndex_(v40, v35, 1, v36, v37, v38);
      CGRectGetMinX(v43);
      operator new();
    }

    operator new();
  }

  return 0;
}

void sub_1836E9808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    v30 = a16;
    if (!a16)
    {
LABEL_3:
      v31 = a10;
      if (!a10)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v30 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v30);
  v31 = a10;
  if (!a10)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v31);

  _Unwind_Resume(a1);
}

void **sub_1836E9A98(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1836E9B0C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 32;
    }
  }

  return a1;
}

void ***sub_1836E9B70(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v4 -= 32;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_1836E9BF4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      a4[1] = 0;
      *a4 = v6;
      a4[2] = 0;
      a4[3] = 0;
      v8 = v5[1];
      v7 = v5[2];
      if (v7 != v8)
      {
        if (((v7 - v8) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1836E9CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v12;
    operator delete(v12);
  }

  sub_1836E9B0C(&a9);
  _Unwind_Resume(a1);
}

void *sub_1836E9D0C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[7] = 0;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 == a2 + 1)
  {
    goto LABEL_25;
  }

  do
  {
    v6 = v5[5];
    v21[0] = v5[4];
    memset(&v21[1], 0, 24);
    v7 = v5[6];
    if (v7 != v6)
    {
      if (((v7 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    sub_1836EA058(a1, v21);
    v9 = v5[1];
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
        v10 = v5[2];
        v11 = *v10 == v5;
        v5 = v10;
      }

      while (!v11);
    }

    v5 = v10;
  }

  while (v10 != v4);
  v12 = a1[2];
  if (!v12)
  {
LABEL_25:
    a1[3] = 0;
    a1[4] = 0;
  }

  else
  {
    v13 = *a1;
    v14 = 0;
    if (*a1 != v3)
    {
      do
      {
        v15 = v13[5];
        for (i = v13[6]; v15 != i; v14 = vcvt_f32_f64(vaddq_f64(v17, vcvtq_f64_f32(v14))))
        {
          v17 = *v15++;
          v8.i32[1] = HIDWORD(v17.f64[0]);
        }

        v18 = v13[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v13[2];
            v11 = *v19 == v13;
            v13 = v19;
          }

          while (!v11);
        }

        v13 = v19;
      }

      while (v19 != v3);
    }

    *v8.i32 = v12;
    *(a1 + 3) = vcvtq_f64_f32(vdiv_f32(v14, vdup_lane_s32(v8, 0)));
  }

  a1[8] = 0;
  return a1;
}

void sub_1836E9EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18368D56C(a10, *(v10 + 48));
  sub_18368A374(v10, *(v10 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1836E9F2C(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    v3 = (result + 48);
    do
    {
      v4 = *v3;
      if (!*v3)
      {
LABEL_10:
        operator new();
      }

      v5 = v2[4];
      while (1)
      {
        while (1)
        {
          v6 = v4;
          v7 = v4[4];
          if (v5 >= v7)
          {
            break;
          }

          v4 = *v6;
          if (!*v6)
          {
            goto LABEL_10;
          }
        }

        if (v7 >= v5)
        {
          break;
        }

        v4 = v6[1];
        if (!v4)
        {
          goto LABEL_10;
        }
      }

      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != a2 + 1);
  }

  return result;
}

float64x2_t sub_1836EA058(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v5 <= v3)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= v3)
    {
      break;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
LABEL_14:
    operator new();
  }

  v7 = *a2;
  while (1)
  {
    while (1)
    {
      v8 = v6;
      v9 = v6[4];
      if (v7 >= v9)
      {
        break;
      }

      v6 = *v8;
      if (!*v8)
      {
        goto LABEL_14;
      }
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v10 = a2[1];
  v11 = a2[2];
  if (v10 == v11)
  {
    v14 = 0uLL;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10++;
      v12 = vcvt_f32_f64(vaddq_f64(v13, vcvtq_f64_f32(v12)));
    }

    while (v10 != v11);
    v14 = vcvtq_f64_f32(v12);
  }

  result = vdivq_f64(vmlaq_n_f64(v14, *(a1 + 24), *(a1 + 16)), vdupq_lane_s64(COERCE__INT64((*(a1 + 16) + ((a2[2] - a2[1]) >> 4))), 0));
  *(a1 + 24) = result;
  return result;
}

void sub_1836EA2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_1836EC858(va);
  _Unwind_Resume(a1);
}

float sub_1836EA2D4(void *a1, void *a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    operator new();
  }

  if (!a4)
  {
    v4 = *a1;
    if (*a1 == a1 + 1)
    {
      v10 = *a2;
      v17 = a2 + 1;
    }

    else
    {
      do
      {
        v5 = v4[5];
        v6 = v4[6];
        if (v5 != v6)
        {
          operator new();
        }

        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != a1 + 1);
      v10 = *a2;
      v17 = a2 + 1;
      if (*a2 == a2 + 1)
      {
        return MEMORY[0];
      }
    }

    do
    {
      v12 = v10[5];
      v11 = v10[6];
      if (v12 != v11)
      {
        operator new();
      }

      v13 = v10[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v10[2];
          v9 = *v14 == v10;
          v10 = v14;
        }

        while (!v9);
      }

      v10 = v14;
    }

    while (v14 != v17);
    return MEMORY[0];
  }

  return 0.0;
}

void *sub_1836EA994@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  if (*result != result + 1)
  {
    v3 = v2[5];
    v4 = v2[6];
    if (v4 != v3)
    {
      if (((v4 - v3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    v6[0] = 0;
    v6[1] = 0;
    v5 = v6;
    operator new();
  }

  return result;
}

void sub_1836EABB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19)
{
  sub_1836EC49C(&a9);
  sub_18368A374(&a18, a19);
  if (v20)
  {
    operator delete(v20);
  }

  sub_1836EAC4C(v19);
  _Unwind_Resume(a1);
}

void **sub_1836EAC4C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = v5 - 40;
        sub_18368D56C(v5, *(v5 + 8));
        sub_18368A374(v5 - 40, *(v5 - 32));
        v5 -= 72;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1836EACC8(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = 0;
  v27 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = 0;
  *(a1 + 56) = 0u;
  v28 = a1 + 56;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v7 = *a2;
  if (a2[1] == *a2)
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v29 = a4;
    v30 = a3;
    v9 = 0;
    do
    {
      v31 = v9;
      sub_1836EC4D8(v32, v7 + 72 * v9);
      v10 = *v5;
      if (!*v5)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v11 = v10;
          v12 = v10[4];
          if (v12 <= v31)
          {
            break;
          }

          v10 = *v11;
          if (!*v11)
          {
            goto LABEL_10;
          }
        }

        if (v12 >= v31)
        {
          break;
        }

        v10 = v11[1];
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      sub_18368D56C(v33, v33[1]);
      sub_18368A374(v32, v32[1]);
      ++v9;
      v7 = *a2;
    }

    while (v9 < 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
    v13 = *(a1 + 56);
    v14 = *(a1 + 80);
    v15 = *(a1 + 16);
    a3 = v30;
    a4 = v29;
  }

  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  v34 = 0uLL;
  v35 = 0;
  *(a1 + 64) = v13;
  *(a1 + 88) = v14;
  LODWORD(v31) = 2139095039;
  if (v15)
  {
    sub_1836ECCD0(v28, v15, &v31, v6);
    v16 = *(a1 + 16);
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v31 = -1;
    v19 = (v18 - v17) >> 3;
    if (v16 <= v19)
    {
      if (v16 < v19)
      {
        *(a1 + 88) = v17 + 8 * v16;
      }
    }

    else
    {
      sub_1836ECEA0(a1 + 80, v16 - v19, &v31);
      v16 = *(a1 + 16);
    }

    if (v16 >= 2)
    {
      if (!(v16 >> 62))
      {
        operator new();
      }

      sub_18369761C();
    }

    if (v16)
    {
      operator new();
    }
  }

  v20 = *v27;
  if (*v27)
  {
    v21 = *(a1 + 32);
    v22 = *v27;
    if (v21 != v20)
    {
      v23 = *(a1 + 32);
      do
      {
        v25 = *(v23 - 3);
        v23 -= 24;
        v24 = v25;
        if (v25)
        {
          *(v21 - 2) = v24;
          operator delete(v24);
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = *v27;
    }

    *(a1 + 32) = v20;
    operator delete(v22);
    *v27 = 0;
    v27[1] = 0;
    v27[2] = 0;
  }

  *(a1 + 24) = v34;
  *(a1 + 40) = v35;
  return a1;
}

void sub_1836EB848(_Unwind_Exception *a1, uint64_t a2, void **a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_18369F0F0(va);
  v19 = *(v17 + 80);
  if (v19)
  {
    *(v17 + 88) = v19;
    operator delete(v19);
  }

  v20 = *a4;
  if (*a4)
  {
    *(v17 + 64) = v20;
    operator delete(v20);
  }

  sub_18369F0F0(a3);
  sub_1836ECC04(v17, *(v17 + 8));
  _Unwind_Resume(a1);
}

void sub_1836EB934(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      sub_1836EC4D8(v10, (v3 + 5));
      v5 = a2[1];
      if (v5 >= a2[2])
      {
        v6 = sub_1836EC8C0(a2, v10);
      }

      else
      {
        sub_1836EC4D8(a2[1], v10);
        v6 = v5 + 72;
      }

      a2[1] = v6;
      sub_18368D56C(v11, v11[1]);
      sub_18368A374(v10, v10[1]);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1836EBA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1836EC6CC(&a9);
  sub_1836EAC4C(v9);
  _Unwind_Resume(a1);
}

void sub_1836EBA60(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 8);
  v84 = (a1 + 8);
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  v6 = *(a1 + 8);
  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = v6[4];
      if (v8 <= a2)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    if (v8 >= a2)
    {
      break;
    }

    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  while (1)
  {
    while (1)
    {
      v9 = v5;
      v10 = v5[4];
      if (v10 <= a3)
      {
        break;
      }

      v5 = *v9;
      if (!*v9)
      {
        goto LABEL_13;
      }
    }

    if (v10 >= a3)
    {
      break;
    }

    v5 = v9[1];
    if (!v5)
    {
LABEL_13:
      operator new();
    }
  }

  v90[0] = 0;
  v90[1] = 0;
  v89 = v90;
  v11 = v9[5];
  v12 = v9 + 6;
  if (v11 != v12)
  {
    do
    {
      sub_1836EC708(&v89, v90, v11 + 4);
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v36 = *v14 == v11;
          v11 = v14;
        }

        while (!v36);
      }

      v11 = v14;
    }

    while (v14 != v12);
    v15 = v89;
    if (v89 != v90)
    {
      do
      {
        v16 = v15[5];
        v85 = v15[4];
        v87 = 0;
        v88 = 0;
        v86 = 0;
        v17 = v15[6];
        if (v17 != v16)
        {
          if (((v17 - v16) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_18369761C();
        }

        sub_1836EA058((v7 + 5), &v85);
        v18 = v15[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v15[2];
            v36 = *v19 == v15;
            v15 = v19;
          }

          while (!v36);
        }

        v15 = v19;
      }

      while (v19 != v90);
    }
  }

  sub_18368A374(&v89, v90[0]);
  v20 = a3;
  v21 = *v84;
  if (!*v84)
  {
    goto LABEL_43;
  }

  v22 = v84;
  v23 = *v84;
  do
  {
    v24 = v23[4];
    v25 = v24 >= a3;
    v26 = v24 < a3;
    if (v25)
    {
      v22 = v23;
    }

    v23 = v23[v26];
  }

  while (v23);
  if (v22 == v84 || v22[4] > a3)
  {
LABEL_43:
    v22 = v84;
  }

  v27 = v22[1];
  if (v27)
  {
    do
    {
      v28 = v27;
      v27 = *v27;
    }

    while (v27);
  }

  else
  {
    v29 = v22;
    do
    {
      v28 = v29[2];
      v36 = *v28 == v29;
      v29 = v28;
    }

    while (!v36);
  }

  if (*a1 == v22)
  {
    *a1 = v28;
  }

  --*(a1 + 16);
  sub_1836E13E8(v21, v22);
  sub_18368D56C((v22 + 10), v22[11]);
  sub_18368A374((v22 + 5), v22[6]);
  operator delete(v22);
  v86 = 0;
  v87 = 0;
  v85 = &v86;
  v31 = *(a1 + 56);
  v32 = *(a1 + 64);
  if (v32 != v31)
  {
    v33 = 0;
    do
    {
      if (v33 != a2 && v33 != v20)
      {
        v34 = *(a1 + 80);
        v35 = *(v34 + 8 * v33);
        v36 = v35 == a2 || v35 == v20;
        if (v36)
        {
          *(v31 + 4 * v33) = 2139095039;
          *(v34 + 8 * v33) = -1;
          v37 = v86;
          if (!v86)
          {
LABEL_69:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v38 = v37;
              v39 = v37[4];
              if (v33 >= v39)
              {
                break;
              }

              v37 = *v38;
              if (!*v38)
              {
                goto LABEL_69;
              }
            }

            if (v39 >= v33)
            {
              break;
            }

            v37 = v38[1];
            if (!v37)
            {
              goto LABEL_69;
            }
          }

          v20 = a3;
        }
      }

      ++v33;
    }

    while (v33 < (v32 - v31) >> 2);
  }

  *(v31 + 4 * a2) = 2139095039;
  v40 = *(a1 + 80);
  *(v40 + 8 * a2) = -1;
  *(v31 + 4 * v20) = 2139095039;
  *(v40 + 8 * v20) = -1;
  v41 = *(a1 + 24);
  v42 = (v41 + 24 * a2);
  v42[1] = *v42;
  v43 = *(a1 + 32);
  LODWORD(v89) = 2139095039;
  if (v43 == v41)
  {
    *(v41 + 24 * v20 + 8) = *(v41 + 24 * v20);
  }

  else
  {
    sub_1836ECCD0(v42, 0xAAAAAAAAAAAAAAABLL * ((v43 - v41) >> 3), &v89, v30);
    v41 = *(a1 + 24);
    v45 = *(a1 + 32);
    v46 = (v41 + 24 * v20);
    v46[1] = *v46;
    LODWORD(v89) = 2139095039;
    v47 = v45 - v41;
    if (v47)
    {
      sub_1836ECCD0(v46, 0xAAAAAAAAAAAAAAABLL * (v47 >> 3), &v89, v44);
      v41 = *(a1 + 24);
      v48 = *(a1 + 32) - v41;
      if (v48)
      {
        v49 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 3);
        if (v49 <= 1)
        {
          v49 = 1;
        }

        v50 = *(a1 + 24);
        do
        {
          v51 = *v50;
          v50 += 3;
          *(v51 + 4 * v20) = 2139095039;
          *(v51 + 4 * a2) = 2139095039;
          --v49;
        }

        while (v49);
        for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v41) >> 3); ++i)
        {
          if (i == a2)
          {
            continue;
          }

          v53 = v84;
          v54 = *v84;
          if (!*v84)
          {
            continue;
          }

          v55 = *v84;
          do
          {
            v56 = v55[4];
            v25 = v56 >= i;
            v57 = v56 < i;
            if (v25)
            {
              v53 = v55;
            }

            v55 = v55[v57];
          }

          while (v55);
          if (v53 == v84 || i < v53[4])
          {
            continue;
          }

          v58 = *v84;
          while (1)
          {
            while (1)
            {
              v59 = v58;
              v60 = v58[4];
              if (v60 <= a2)
              {
                break;
              }

              v58 = *v59;
              if (!*v59)
              {
                goto LABEL_94;
              }
            }

            if (v60 >= a2)
            {
              break;
            }

            v58 = v59[1];
            if (!v58)
            {
LABEL_94:
              operator new();
            }
          }

LABEL_97:
          if (!v54)
          {
LABEL_101:
            operator new();
          }

          while (1)
          {
            v61 = v54[4];
            if (i < v61)
            {
              v54 = *v54;
              goto LABEL_97;
            }

            if (v61 >= i)
            {
              break;
            }

            v54 = v54[1];
            if (!v54)
            {
              goto LABEL_101;
            }
          }

          v62 = sub_1836EA2D4(v59 + 5, v54 + 5, *(a1 + 48), *(a1 + 52));
          v41 = *(a1 + 24);
          if (i >= a2)
          {
            *(*(v41 + 24 * i) + 4 * a2) = v62;
            v63 = (*(a1 + 56) + 4 * i);
            v64 = i;
            v65 = a2;
            if (v62 >= *v63)
            {
              continue;
            }
          }

          else
          {
            *(*(v41 + 24 * a2) + 4 * i) = v62;
            v63 = (*(a1 + 56) + 4 * a2);
            v64 = a2;
            v65 = i;
            if (v62 >= *v63)
            {
              continue;
            }
          }

          *v63 = v62;
          *(*(a1 + 80) + 8 * v64) = v65;
        }
      }
    }
  }

  v66 = v85;
  if (v85 != &v86)
  {
    do
    {
      v67 = v66[4];
      if (v67)
      {
        v68 = 0;
        v69 = *(v41 + 24 * v67);
        v70 = *(a1 + 56);
        v71 = *(v70 + 4 * v67);
        do
        {
          v72 = *(v69 + 4 * v68);
          if (v72 < v71)
          {
            *(v70 + 4 * v67) = v72;
            *(*(a1 + 80) + 8 * v67) = v68;
            v71 = v72;
          }

          ++v68;
        }

        while (v67 != v68);
      }

      v73 = v66[1];
      if (v73)
      {
        do
        {
          v74 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v74 = v66[2];
          v36 = *v74 == v66;
          v66 = v74;
        }

        while (!v36);
      }

      v66 = v74;
    }

    while (v74 != &v86);
  }

  if (*(a1 + 16) == 1)
  {
    v75 = *(*a1 + 32);
    v76 = 0.0;
    v77 = v75;
  }

  else
  {
    v78 = *(a1 + 56);
    v79 = *(a1 + 64) - v78;
    if (v79)
    {
      v80 = 0;
      v81 = v79 >> 2;
      if (v81 <= 1)
      {
        v82 = 1;
      }

      else
      {
        v82 = v81;
      }

      v75 = -1;
      v76 = 3.4028e38;
      do
      {
        if (*(v78 + 4 * v80) < v76)
        {
          v75 = v80;
          v76 = *(v78 + 4 * v80);
        }

        ++v80;
      }

      while (v82 != v80);
    }

    else
    {
      v75 = -1;
      v76 = 3.4028e38;
    }

    v77 = *(*(a1 + 80) + 8 * v75);
  }

  *(a1 + 104) = v75;
  *(a1 + 112) = v77;
  *(a1 + 120) = v76;
  sub_18368D56C(&v85, v86);
}

void sub_1836EC460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17)
{
  if (v17)
  {
    operator delete(v17);
    sub_18368A374(&a16, a17);
    _Unwind_Resume(a1);
  }

  sub_18368A374(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1836EC49C(uint64_t a1)
{
  sub_18368D56C(a1 + 40, *(a1 + 48));
  sub_18368A374(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_1836EC4D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v5 = (a2 + 8);
  v6 = *a2;
  if (*a2 != a2 + 8)
  {
    do
    {
      sub_1836EC708(a1, v4, v6 + 4);
      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v5);
  }

  v7 = *(a2 + 24);
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 24) = v7;
  *(a1 + 56) = 0;
  v8 = *(a2 + 40);
  if (v8 != (a2 + 48))
  {
    do
    {
      if (!*sub_1836DD38C((a1 + 40), (a1 + 48), &v16, &v15, v8 + 4))
      {
        operator new();
      }

      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v11 = *v13 == v8;
          v8 = v13;
        }

        while (!v11);
      }

      v8 = v13;
    }

    while (v13 != (a2 + 48));
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_1836EC6A8(_Unwind_Exception *a1)
{
  sub_18368D56C(v2, *(v1 + 48));
  sub_18368A374(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1836EC6CC(uint64_t a1)
{
  sub_18368D56C(a1 + 48, *(a1 + 56));
  sub_18368A374(a1 + 8, *(a1 + 16));
  return a1;
}

void *sub_1836EC708(void *a1, void *a2, unint64_t *a3)
{
  result = sub_1836DD38C(a1, a2, &v5, &v4, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1836EC834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_1836EC858(va);
  _Unwind_Resume(a1);
}

void **sub_1836EC858(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_1836EC8C0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_18368964C();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_183688F00();
  }

  __p = 0;
  v11 = 72 * v2;
  v13 = 0;
  sub_1836EC4D8(72 * v2, a2);
  v12 = 72 * v2 + 72;
  sub_1836ECA38(a1, &__p);
  v6 = a1[1];
  v7 = v11;
  for (i = v12; v12 != v7; i = v12)
  {
    v12 = i - 72;
    sub_18368D56C(i - 32, *(i - 24));
    sub_18368A374(i - 72, *(i - 64));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_1836ECA24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1836ECB94(va);
  _Unwind_Resume(a1);
}

void sub_1836ECA38(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v8 = (v6 + v7);
      *v8 = *(v4 + v7);
      v9 = *(v4 + v7 + 16);
      v10 = (v4 + v7 + 8);
      v11 = *v10;
      v8[2] = v9;
      v8[1] = v11;
      v12 = v6 + v7 + 8;
      if (v9)
      {
        *(v11 + 16) = v12;
        *(v4 + v7) = v10;
        *v10 = 0;
        *(v4 + v7 + 16) = 0;
      }

      else
      {
        *(v6 + v7) = v12;
      }

      v13 = v6 + v7;
      *(v13 + 24) = *(v4 + v7 + 24);
      v14 = (v4 + v7 + 48);
      v15 = *v14;
      *(v13 + 40) = *(v4 + v7 + 40);
      *(v6 + v7 + 48) = v15;
      v16 = v6 + v7 + 48;
      v17 = *(v4 + v7 + 56);
      *(v13 + 56) = v17;
      if (v17)
      {
        *(v15 + 16) = v16;
        *(v4 + v7 + 40) = v14;
        *v14 = 0;
        *(v4 + v7 + 56) = 0;
      }

      else
      {
        *(v13 + 40) = v16;
      }

      *(v6 + v7 + 64) = *(v4 + v7 + 64);
      v7 += 72;
    }

    while (v4 + v7 != v5);
    v18 = v4 + 40;
    do
    {
      sub_18368D56C(v18, *(v18 + 8));
      sub_18368A374(v18 - 40, *(v18 - 32));
      v19 = v18 + 32;
      v18 += 72;
    }

    while (v19 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v20 = a1[1];
  a1[1] = a2[2];
  a2[2] = v20;
  v21 = a1[2];
  a1[2] = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
}

uint64_t sub_1836ECB94(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_18368D56C(i - 32, *(i - 24));
    sub_18368A374(i - 72, *(i - 64));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1836ECC04(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1836ECC04(a1, *a2);
    sub_1836ECC04(a1, a2[1]);
    sub_18368D56C((a2 + 10), a2[11]);
    sub_18368A374((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_1836ECC74(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_18368D56C((v1 + 10), v1[11]);
      sub_18368A374((v1 + 5), v1[6]);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1836ECCD0(uint64_t a1, unint64_t a2, __int32 *a3, int32x2_t a4)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v11 = (v6 + 4 * a2);
      a4.i32[0] = *a3;
      v12 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = (v6 + 4 * (v13 & 0x7FFFFFFFFFFFFFF8));
      v15 = vdupq_lane_s32(a4, 0);
      v16 = v6 + 1;
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v6 = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          v6->i32[0] = a4.i32[0];
          v6 = (v6 + 4);
        }

        while (v6 != v11);
      }

      v6 = v11;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v7 = (v6->i64 - *a1) >> 2;
    v8 = v7 + a2;
    if ((v7 + a2) >> 62)
    {
      sub_18369761C();
    }

    v9 = v5 - *a1;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      sub_183688F00();
    }

    v18 = 4 * v7;
    v19 = 4 * v7 + 4 * a2;
    a4.i32[0] = *a3;
    v20 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v21 = (4 * v7);
    if (v20 < 7)
    {
      goto LABEL_34;
    }

    v22 = v20 + 1;
    v21 = (v18 + 4 * (v22 & 0x7FFFFFFFFFFFFFF8));
    v23 = vdupq_lane_s32(a4, 0);
    v24 = (v18 + 16);
    v25 = v22 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v24[-1] = v23;
      *v24 = v23;
      v24 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v22 != (v22 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v21++ = a4.i32[0];
      }

      while (v21 != v19);
    }

    v26 = *a1;
    v27 = *(a1 + 8) - *a1;
    v28 = v18 - v27;
    memcpy((v18 - v27), *a1, v27);
    *a1 = v28;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v26)
    {

      operator delete(v26);
    }
  }
}

void sub_1836ECEA0(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x3FFFFFFFFFFFFFFCLL];
      v15 = vdupq_n_s64(v11);
      v16 = (v5 + 2);
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      sub_1836D58DC();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v18 = 8 * v6;
    v19 = 8 * v6 + 8 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = (8 * v6);
    if (v21 < 3)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = vdupq_n_s64(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void sub_1836ED94C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a4;
  v16 = a5;
  if (v20)
  {
    objc_msgSend_floatValue(v20, v11, v12, v13, v14, v15);
    if ((*(a1 + 48) & 1) == 0)
    {
      *(a1 + 48) = 1;
    }

    *(a1 + 40) = v17;
  }

  if (v9)
  {
    objc_msgSend_floatValue(v9, v11, v12, v13, v14, v15);
    if ((*(a1 + 64) & 1) == 0)
    {
      *(a1 + 64) = 1;
    }

    *(a1 + 56) = v18;
  }

  if (v10)
  {
    objc_msgSend_floatValue(v10, v11, v12, v13, v14, v15);
    if ((*(a1 + 80) & 1) == 0)
    {
      *(a1 + 80) = 1;
    }

    *(a1 + 72) = v19;
  }

  if (v16)
  {
    *(a1 + 88) = objc_msgSend_BOOLValue(v16, v11, v12, v13, v14, v15) | 0x100;
  }
}

__n128 sub_1836EDA78@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18369F168();
  }

  sub_18369F384((a2 + 24), a1 + 96);
  result = *(a1 + 120);
  v7 = *(a1 + 136);
  *(a2 + 48) = result;
  *(a2 + 64) = v7;
  return result;
}

void sub_1836EDB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_18369F2FC(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1836EDB94(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    sub_1836EDFE0(v6, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  }

  if (a1 + 96 != a2 + 24)
  {
    v7 = *(a2 + 32);
    if (v7)
    {
      v8 = *(a1 + 96);
      if (v7 > *(a1 + 112) << 6)
      {
        if (v8)
        {
          operator delete(v8);
          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          v7 = *(a2 + 32);
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369F168();
      }

      memmove(v8, *(a2 + 24), (((v7 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v7 = *(a2 + 32);
    }

    *(a1 + 104) = v7;
  }

  result = *(a2 + 48);
  *(a1 + 129) = *(a2 + 57);
  *(a1 + 120) = result;
  *(a1 + 232) = a3;
  return result;
}

__n128 sub_1836EDC9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 152);
  v5 = *(a1 + 160);
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18369F168();
  }

  sub_18369F384((a2 + 24), a1 + 176);
  result = *(a1 + 200);
  v7 = *(a1 + 216);
  *(a2 + 48) = result;
  *(a2 + 64) = v7;
  return result;
}

void sub_1836EDD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_18369F2FC(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1836EDDB8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 152);
  if (v6 != a2)
  {
    sub_1836EDFE0(v6, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  }

  if (a1 + 176 != a2 + 24)
  {
    v7 = *(a2 + 32);
    if (v7)
    {
      v8 = *(a1 + 176);
      if (v7 > *(a1 + 192) << 6)
      {
        if (v8)
        {
          operator delete(v8);
          *(a1 + 176) = 0;
          *(a1 + 184) = 0;
          *(a1 + 192) = 0;
          v7 = *(a2 + 32);
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369F168();
      }

      memmove(v8, *(a2 + 24), (((v7 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v7 = *(a2 + 32);
    }

    *(a1 + 184) = v7;
  }

  result = *(a2 + 48);
  *(a1 + 209) = *(a2 + 57);
  *(a1 + 200) = result;
  *(a1 + 236) = a3;
  return result;
}

void sub_1836EDFC8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1836EDFE0(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_18369F168();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_1836EE24C(v8, *v5, v5[1], (v5[1] - *v5) >> 5);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_1836EE24C(v8, *v18, v18[1], (v18[1] - *v18) >> 5);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_18369F180(a1, (v5 + v16), a3, v15);
}

char *sub_1836EE24C(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v11 = 0x7FFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 59))
      {
        operator new();
      }
    }

    sub_18369F168();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 5)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 7);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 7);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_1836EE3CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BC300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1836EE420(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_1836EE490(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BC350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_1836EE4F0(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 160);
    v5 = *(a1 + 152);
    if (v4 != v3)
    {
      v6 = *(a1 + 160);
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 152);
    }

    *(a1 + 160) = v3;
    operator delete(v5);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a1 + 80);
    v12 = *(a1 + 72);
    if (v11 != v10)
    {
      v13 = *(a1 + 80);
      do
      {
        v15 = *(v13 - 24);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 16) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = *(a1 + 72);
    }

    *(a1 + 80) = v10;
    operator delete(v12);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    *(a1 + 56) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    *(a1 + 32) = v17;
    operator delete(v17);
  }

  v18 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v18;
    operator delete(v18);
  }

  return a1;
}

void sub_1836EE5FC(uint64_t a1, void **a2, void **a3)
{
  v4 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = 0;
    a2[1] = v4;
    a2[2] = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a2 = 0;
    a2[1] = v4;
    a2[2] = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = *a2;
  *a2 = v6;

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1836EE6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_18369D8F8(v10);

  sub_18369D8F8(&a9);
  _Unwind_Resume(a1);
}

void sub_1836EE72C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BC3A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1836EE780(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = *(a1 + 24);
  }
}

void sub_1836EE840(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BC3F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_1836EE8A0(uint64_t a1)
{
  sub_18368922C(a1 + 192, *(a1 + 200));

  sub_18368922C(a1 + 72, *(a1 + 80));
  sub_18368A374(a1 + 48, *(a1 + 56));
  sub_18368D56C(a1 + 24, *(a1 + 32));
  sub_18368D56C(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_1836EF0C4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (__ROR8__(0x8F5C28F5C28F5C29 * a3, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      if ((*(v15 + 16))())
      {
        *a4 = 1;
      }
    }
  }

  v8 = objc_opt_class();
  isPointEnumerationSupportedForStroke = objc_msgSend_isPointEnumerationSupportedForStroke_(v8, v9, v7, v10, v11, v12);

  return isPointEnumerationSupportedForStroke ^ 1u;
}

void sub_1836EF458(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_1836EF5E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v6, a2, v7, v8, v9);
  v15 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v11, v5, v12, v13, v14);
  v19 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(*(a1 + 32), v16, v10, v15, v17, v18);

  return v19;
}

void sub_1836F0568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1836F0584(uint64_t result, _BYTE *a2)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a2 = 1;
  return result;
}

void sub_1836F0AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v38 - 152), 8);
  v40 = *(v38 - 104);
  if (v40)
  {
    *(v38 - 96) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1836F0B5C(__n128 *a1, __n128 *a2)
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

void sub_1836F0B80(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1836F0B98(__n128 *a1, __n128 *a2)
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

void sub_1836F0BBC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void *sub_1836F0BD4(void *result, double a2, double a3, double a4)
{
  v4 = *(*(result[4] + 8) + 24) % result[7];
  v5 = (*(*(result[5] + 8) + 48) + 16 * v4);
  *v5 = a2;
  v5[1] = a3;
  *(*(*(result[6] + 8) + 48) + 8 * v4) = a4;
  ++*(*(result[4] + 8) + 24);
  return result;
}

void sub_1836F0D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 96), 8);

  _Unwind_Resume(a1);
}

__n128 sub_1836F0DCC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void *sub_1836F0DDC(void *result, double a2, double a3)
{
  v3 = *(result[4] + 8);
  if (*(v3 + 24))
  {
    v4.f64[0] = a2;
    v4.f64[1] = a3;
    *&v4.f64[0] = vsub_f32(vcvt_f32_f64(v4), vcvt_f32_f64(*(*(result[6] + 8) + 48)));
    *(*(result[5] + 8) + 24) = *(*(result[5] + 8) + 24) + sqrtf(vaddv_f32(vmul_f32(*&v4.f64[0], *&v4.f64[0])));
  }

  else
  {
    *(v3 + 24) = 1;
  }

  v5 = *(result[6] + 8);
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  return result;
}

void sub_1836F13A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836F13C4(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_18368964C();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_183688F00();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_1836F15E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1836F1FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1836F200C(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

void sub_1836F2224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1836F2264(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_pointCountForStrokeIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v13 = *(*(a1 + 40) + 8);
      objc_msgSend_pointForStrokeIndex_pointIndex_(*(a1 + 32), v9, a2, i, v10, v11);
      *&v20 = v14;
      *(&v20 + 1) = v15;
      sub_1836973A4(v13 + 48, &v20);
      result = objc_msgSend_pointCountForStrokeIndex_(*(a1 + 32), v16, a2, v17, v18, v19);
    }
  }

  return result;
}

void sub_1836F27E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  *(v12 + 8) = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_1836F2A44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836F2B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836F41D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836F438C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4, a5, a6);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = objc_msgSend_scriptClassificationClasses(CHStrokeUtilities, v7, v8, v9, v10, v11, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v34, v38, 16, v14);
  if (v20)
  {
    v21 = *v35;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v34 + 1) + 8 * i);
        if (objc_msgSend_integerValue(v23, v15, v16, v17, v18, v19) == 8)
        {
          objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v24, v25, v26, v27, v28, 1.0);
        }

        else
        {
          objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v24, v25, v26, v27, v28, 0.0);
        }
        v29 = ;
        objc_msgSend_setObject_forKey_(v6, v30, v29, v23, v31, v32);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v34, v38, 16, v19);
    }

    while (v20);
  }

  v33 = qword_1EA84CDB8;
  qword_1EA84CDB8 = v6;
}

void sub_1836F46A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1836F46F8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_containsPoint_(*(a1 + 32), a2, a3, a4, a5, a6);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a2 = 1;
  }

  return result;
}

float sub_1836F5408(void *a1, uint64_t a2, const float **a3, float *a4)
{
  objc_opt_self();
  __C = 0.0;
  vDSP_meanv(*a3, 1, &__C, a3[1] - *a3);
  v7 = *a3;
  v8 = a3[1];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  MEMORY[0x1865E6E60]();
  if (a4)
  {
    result = __C;
    *a4 = __C;
  }

  return result;
}

void sub_1836F5504(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836F5E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a16;
    if (!a16)
    {
LABEL_3:
      if (!v25)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v28 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  if (!v25)
  {
LABEL_4:
    if (!v26)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v25);
  v26 = a23;
  if (!a23)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v26);
  _Unwind_Resume(exception_object);
}

void sub_1836F626C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  operator delete(v14);
  if (v13)
  {
    operator delete(v13);
    v16 = *a13;
    if (!*a13)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v16 = *a13;
    if (!*a13)
    {
      goto LABEL_3;
    }
  }

  *(a13 + 8) = v16;
  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_1836F62F4(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = *a3;
  v6 = *(a3 + 8) - *a3;
  if (v6 > 8)
  {
    v7 = *v5;
    v8 = v6 >> 2;
    if (((v6 >> 2) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = 1;
      do
      {
        v10 = v9;
        if (v8 <= v9 + 1)
        {
          v11 = v9 + 1;
        }

        else
        {
          v11 = v8;
        }

        v12 = v11 - 1;
        v13 = v9;
        while (v12 != v13)
        {
          v9 = v13 + 1;
          v14 = v5[++v13];
          if (v5[v10] != v14)
          {
            goto LABEL_14;
          }
        }

        v14 = v5[v12];
        v9 = v12;
LABEL_14:
        v15 = v10 - 1;
        v16 = v5[v15];
        v17 = v5[(v9 + v15) >> 1];
        v7 = fminf(v16, v7);
        if (v17 > v16 && v17 > v14)
        {
          operator new();
        }

        v5 = *a3;
        v8 = (*(a3 + 8) - *a3) >> 2;
      }

      while (v9 < v8 - 1);
    }

    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1836F67C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    operator delete(v11);
    if (!v10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void sub_1836F6FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
    v38 = a26;
    if (!a26)
    {
LABEL_3:
      if (!v35)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v38 = a26;
    if (!a26)
    {
      goto LABEL_3;
    }
  }

  operator delete(v38);
  if (!v35)
  {
LABEL_4:
    v39 = a31;
    if (!a31)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v35);
  v39 = a31;
  if (!a31)
  {
LABEL_5:
    v40 = a34;
    if (!a34)
    {
LABEL_12:
      v41 = *(v36 - 208);
      if (v41)
      {
        *(v36 - 200) = v41;
        operator delete(v41);
        v42 = *(v36 - 184);
        if (!v42)
        {
LABEL_14:
          v43 = *(v36 - 160);
          if (!v43)
          {
            goto LABEL_15;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v42 = *(v36 - 184);
        if (!v42)
        {
          goto LABEL_14;
        }
      }

      *(v36 - 176) = v42;
      operator delete(v42);
      v43 = *(v36 - 160);
      if (!v43)
      {
LABEL_15:
        _Unwind_Resume(exception_object);
      }

LABEL_18:
      *(v36 - 152) = v43;
      operator delete(v43);
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    operator delete(v40);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(v39);
  v40 = a34;
  if (!a34)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_1836F820C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, _Unwind_Exception *exception_object, void **a16, void *__p, void *a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a16;
    v29 = *a16;
    if (!*a16)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v28 = a16;
    v29 = *a16;
    if (!*a16)
    {
      goto LABEL_3;
    }
  }

  v28[1] = v29;
  operator delete(v29);
  _Unwind_Resume(a1);
}

uint64_t sub_1836F8430(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369F168();
  }

  return result;
}

void sub_1836F8830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1836F8930(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

void sub_1836F8964(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, a4, a5, a6);
  v25 = objc_msgSend_UUIDString(v6, v7, v8, v9, v10, v11);

  v12 = MEMORY[0x1E695DFF8];
  v13 = NSTemporaryDirectory();
  v18 = objc_msgSend_fileURLWithPath_(v12, v14, v13, v15, v16, v17);
  v23 = objc_msgSend_URLByAppendingPathComponent_(v18, v19, v25, v20, v21, v22);
  v24 = qword_1EA84CDC8;
  qword_1EA84CDC8 = v23;
}

void sub_1836F8A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

double sub_1836F8A60(double *a1, double *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return a5.n128_f64[0];
      }

      if (v13 == 2)
      {
        v60 = a2 - 2;
        a5.n128_f64[0] = *(a2 - 2);
        if (a5.n128_f64[0] >= *v12)
        {
          if (*v12 < a5.n128_f64[0])
          {
            return a5.n128_f64[0];
          }

          a5.n128_f64[0] = *(a2 - 1);
          if (a5.n128_f64[0] >= *(v12 + 8))
          {
            return a5.n128_f64[0];
          }
        }

LABEL_206:
        v131 = *v12;
        *v12 = *v60;
        a5.n128_u64[0] = v131;
        *v60 = v131;
        return a5.n128_f64[0];
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      a5.n128_f64[0] = sub_1836F9B8C(v12, (v12 + 16), (v12 + 32), a2 - 2);
      return a5.n128_f64[0];
    }

    if (v13 == 5)
    {
      sub_1836F9B8C(v12, (v12 + 16), (v12 + 32), (v12 + 48));
      v61 = a2 - 2;
      a5.n128_f64[0] = *(a2 - 2);
      v62 = *(v12 + 48);
      if (a5.n128_f64[0] < v62 || v62 >= a5.n128_f64[0] && (a5.n128_f64[0] = *(a2 - 1), a5.n128_f64[0] < *(v12 + 56)))
      {
        a5 = *(v12 + 48);
        *(v12 + 48) = *v61;
        *v61 = a5;
        a5.n128_u64[0] = *(v12 + 48);
        v63 = *(v12 + 32);
        if (a5.n128_f64[0] < v63 || v63 >= a5.n128_f64[0] && (a5.n128_u64[0] = *(v12 + 56), a5.n128_f64[0] < *(v12 + 40)))
        {
          a5 = *(v12 + 32);
          *(v12 + 32) = *(v12 + 48);
          *(v12 + 48) = a5;
          a5.n128_u64[0] = *(v12 + 32);
          v64 = *(v12 + 16);
          if (a5.n128_f64[0] < v64 || v64 >= a5.n128_f64[0] && (a5.n128_u64[0] = *(v12 + 40), a5.n128_f64[0] < *(v12 + 24)))
          {
            a5 = *(v12 + 16);
            *(v12 + 16) = *(v12 + 32);
            *(v12 + 32) = a5;
            a5.n128_u64[0] = *(v12 + 16);
            if (a5.n128_f64[0] < *v12 || *v12 >= a5.n128_f64[0] && (a5.n128_u64[0] = *(v12 + 24), a5.n128_f64[0] < *(v12 + 8)))
            {
              v132 = *v12;
              *v12 = *(v12 + 16);
              a5.n128_u64[0] = v132;
              *(v12 + 16) = v132;
            }
          }
        }
      }

      return a5.n128_f64[0];
    }

LABEL_9:
    if (v13 <= 23)
    {
      v65 = (v12 + 16);
      v67 = v12 == a2 || v65 == a2;
      if (a4)
      {
        if (v67)
        {
          return a5.n128_f64[0];
        }

        v68 = 0;
        v69 = v12;
LABEL_224:
        v71 = v69;
        v69 = v65;
        a5.n128_f64[0] = v71[2];
        if (a5.n128_f64[0] >= *v71)
        {
          if (*v71 < a5.n128_f64[0])
          {
            goto LABEL_223;
          }

          v72 = v71[3];
          if (v72 >= v71[1])
          {
            goto LABEL_223;
          }
        }

        else
        {
          v72 = v71[3];
        }

        *v65 = *v71;
        v70 = v12;
        if (v71 == v12)
        {
          goto LABEL_222;
        }

        v73 = v68;
        while (1)
        {
          v74 = *(v12 + v73 - 16);
          if (a5.n128_f64[0] >= v74)
          {
            if (v74 < a5.n128_f64[0])
            {
              v70 = v71;
LABEL_222:
              *v70 = a5.n128_u64[0];
              *(v70 + 8) = v72;
LABEL_223:
              v65 = v69 + 2;
              v68 += 16;
              if (v69 + 2 == a2)
              {
                return a5.n128_f64[0];
              }

              goto LABEL_224;
            }

            v70 = v12 + v73;
            if (v72 >= *(v12 + v73 - 8))
            {
              goto LABEL_222;
            }
          }

          v71 -= 2;
          *(v12 + v73) = *(v12 + v73 - 16);
          v73 -= 16;
          if (!v73)
          {
            v70 = v12;
            goto LABEL_222;
          }
        }
      }

      if (v67)
      {
        return a5.n128_f64[0];
      }

      while (2)
      {
        v104 = a1;
        a1 = v65;
        a5.n128_f64[0] = v104[2];
        if (a5.n128_f64[0] >= *v104)
        {
          if (*v104 >= a5.n128_f64[0])
          {
            v105 = v104[3];
            if (v105 < v104[1])
            {
              goto LABEL_308;
            }
          }
        }

        else
        {
          v105 = v104[3];
          do
          {
            do
            {
LABEL_308:
              v106 = v104;
              *(v104 + 1) = *v104;
              v107 = *(v104 - 2);
              v104 -= 2;
              v108 = v107;
            }

            while (a5.n128_f64[0] < v107);
          }

          while (v108 >= a5.n128_f64[0] && v105 < *(v106 - 1));
          *v106 = a5.n128_f64[0];
          v106[1] = v105;
        }

        v65 += 2;
        if (a1 + 2 == a2)
        {
          return a5.n128_f64[0];
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v12 == a2)
      {
        return a5.n128_f64[0];
      }

      v75 = (v13 - 2) >> 1;
      v76 = v75;
      while (2)
      {
        v78 = v76;
        if (v75 >= v76)
        {
          v79 = (2 * v76) | 1;
          v80 = (v12 + 16 * v79);
          if (2 * v78 + 2 < v13)
          {
            v81 = v80[2];
            if (*v80 < v81 || v81 >= *v80 && v80[1] < v80[3])
            {
              v80 += 2;
              v79 = 2 * v78 + 2;
            }
          }

          v82 = (v12 + 16 * v78);
          v83 = *v82;
          if (*v80 >= *v82)
          {
            if (v83 < *v80)
            {
              v84 = v82[1];
              goto LABEL_252;
            }

            v84 = v82[1];
            if (v80[1] >= v84)
            {
LABEL_252:
              *v82 = *v80;
              if (v75 >= v79)
              {
                while (1)
                {
                  v85 = 2 * v79;
                  v79 = (2 * v79) | 1;
                  v77 = (v12 + 16 * v79);
                  v86 = v85 + 2;
                  if (v86 < v13)
                  {
                    v87 = v77[2];
                    if (*v77 < v87 || v87 >= *v77 && v77[1] < v77[3])
                    {
                      v77 += 2;
                      v79 = v86;
                    }
                  }

                  if (*v77 < v83 || v83 >= *v77 && v77[1] < v84)
                  {
                    break;
                  }

                  *v80 = *v77;
                  v80 = v77;
                  if (v75 < v79)
                  {
                    goto LABEL_240;
                  }
                }
              }

              v77 = v80;
LABEL_240:
              *v77 = v83;
              v77[1] = v84;
            }
          }
        }

        v76 = v78 - 1;
        if (v78)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v89 = 0;
        v133 = *v12;
        v90 = v12;
        do
        {
          v91 = v90;
          v92 = &v90[2 * v89];
          v90 = v92 + 2;
          v93 = 2 * v89;
          v89 = (2 * v89) | 1;
          v94 = v93 + 2;
          if (v94 < v13)
          {
            v95 = v92[4];
            v96 = v92[2];
            if (v96 < v95 || v95 >= v96 && v92[3] < v92[5])
            {
              v90 = v92 + 4;
              v89 = v94;
            }
          }

          *v91 = *v90;
        }

        while (v89 <= ((v13 - 2) >> 1));
        a2 -= 2;
        if (v90 == a2)
        {
          a5.n128_u64[0] = v133;
          *v90 = v133;
        }

        else
        {
          *v90 = *a2;
          a5.n128_u64[0] = v133;
          *a2 = v133;
          v97 = (v90 - v12 + 16) >> 4;
          v98 = v97 - 2;
          if (v97 >= 2)
          {
            v99 = v98 >> 1;
            v100 = (v12 + 16 * (v98 >> 1));
            a5.n128_f64[0] = *v90;
            if (*v100 < *v90)
            {
              v101 = v90[1];
              goto LABEL_278;
            }

            if (a5.n128_f64[0] >= *v100)
            {
              v101 = v90[1];
              if (v100[1] < v101)
              {
LABEL_278:
                *v90 = *v100;
                if (v98 >= 2)
                {
                  while (1)
                  {
                    v103 = v99 - 1;
                    v99 = (v99 - 1) >> 1;
                    v102 = (v12 + 16 * v99);
                    if (*v102 >= a5.n128_f64[0] && (a5.n128_f64[0] < *v102 || v102[1] >= v101))
                    {
                      break;
                    }

                    *v100 = *v102;
                    v100 = (v12 + 16 * v99);
                    if (v103 <= 1)
                    {
                      goto LABEL_280;
                    }
                  }
                }

                v102 = v100;
LABEL_280:
                *v102 = a5.n128_f64[0];
                v102[1] = v101;
              }
            }
          }
        }

        if (v13-- <= 2)
        {
          return a5.n128_f64[0];
        }

        continue;
      }
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      if (*v14 < *v12 || *v12 >= v16 && v14[1] < *(v12 + 8))
      {
        if (*v9 < v16 || v16 >= *v9 && *(a2 - 1) < v14[1])
        {
          v111 = *v12;
          *v12 = *v9;
        }

        else
        {
          v117 = *v12;
          *v12 = *v14;
          *v14 = v117;
          if (*v9 >= *v14 && (*v14 < *v9 || *(a2 - 1) >= v14[1]))
          {
            goto LABEL_33;
          }

          v111 = *v14;
          *v14 = *v9;
        }

        *v9 = v111;
        goto LABEL_33;
      }

      if (*v9 < v16 || v16 >= *v9 && *(a2 - 1) < v14[1])
      {
        v113 = *v14;
        *v14 = *v9;
        *v9 = v113;
        if (*v14 < *v12 || *v12 >= *v14 && v14[1] < *(v12 + 8))
        {
          v114 = *v12;
          *v12 = *v14;
          *v14 = v114;
        }
      }

LABEL_33:
      v18 = (v12 + 16);
      v19 = *(v12 + 16);
      v20 = v14 - 2;
      v21 = *(v14 - 2);
      if (v21 < v19 || v19 >= v21 && *(v14 - 1) < *(v12 + 24))
      {
        if (*v10 < v21 || v21 >= *v10 && *(a2 - 3) < *(v14 - 1))
        {
          v22 = *v18;
          *v18 = *v10;
        }

        else
        {
          v24 = *v18;
          *v18 = *v20;
          *v20 = v24;
          if (*v10 >= *v20 && (*v20 < *v10 || *(a2 - 3) >= *(v14 - 1)))
          {
            goto LABEL_51;
          }

          v120 = *v20;
          *v20 = *v10;
          v22 = v120;
        }

        *v10 = v22;
        goto LABEL_51;
      }

      if (*v10 < v21 || v21 >= *v10 && *(a2 - 3) < *(v14 - 1))
      {
        v118 = *v20;
        *v20 = *v10;
        *v10 = v118;
        if (*v20 < *v18 || *v18 >= *v20 && *(v14 - 1) < *(v12 + 24))
        {
          v23 = *v18;
          *v18 = *v20;
          *v20 = v23;
        }
      }

LABEL_51:
      v25 = (v12 + 32);
      v26 = *(v12 + 32);
      v28 = v14[2];
      v27 = v14 + 2;
      v29 = v28;
      if (v28 < v26 || v26 >= v29 && v27[1] < *(v12 + 40))
      {
        if (*v11 < v29 || v29 >= *v11 && *(a2 - 5) < v27[1])
        {
          v30 = *v25;
          *v25 = *v11;
        }

        else
        {
          v32 = *v25;
          *v25 = *v27;
          *v27 = v32;
          if (*v11 >= *v27 && (*v27 < *v11 || *(a2 - 5) >= v27[1]))
          {
            goto LABEL_64;
          }

          v122 = *v27;
          *v27 = *v11;
          v30 = v122;
        }

        *v11 = v30;
        goto LABEL_64;
      }

      if (*v11 < v29 || v29 >= *v11 && *(a2 - 5) < v27[1])
      {
        v121 = *v27;
        *v27 = *v11;
        *v11 = v121;
        if (*v27 < *v25 || *v25 >= *v27 && v27[1] < *(v12 + 40))
        {
          v31 = *v25;
          *v25 = *v27;
          *v27 = v31;
        }
      }

LABEL_64:
      v33 = *v15;
      if (*v15 >= *v20 && (*v20 < v33 || v15[1] >= v20[1]))
      {
        if (*v27 < v33 || v33 >= *v27 && v27[1] < v15[1])
        {
          v124 = *v15;
          *v15 = *v27;
          *v27 = v124;
          if (*v15 < *v20 || *v20 >= *v15 && v15[1] < v20[1])
          {
            v125 = *v20;
            *v20 = *v15;
            *v15 = v125;
          }
        }

        goto LABEL_77;
      }

      if (*v27 < v33 || v33 >= *v27 && v27[1] < v15[1])
      {
        v123 = *v20;
        *v20 = *v27;
      }

      else
      {
        v126 = *v20;
        *v20 = *v15;
        *v15 = v126;
        if (*v27 >= *v15 && (*v15 < *v27 || v27[1] >= v15[1]))
        {
          goto LABEL_77;
        }

        v123 = *v15;
        *v15 = *v27;
      }

      *v27 = v123;
LABEL_77:
      v127 = *v12;
      *v12 = *v15;
      *v15 = v127;
      goto LABEL_78;
    }

    v17 = *v12;
    if (*v12 < *v14 || *v14 >= v17 && *(v12 + 8) < v14[1])
    {
      if (*v9 < v17 || v17 >= *v9 && *(a2 - 1) < *(v12 + 8))
      {
        v112 = *v14;
        *v14 = *v9;
LABEL_45:
        *v9 = v112;
        goto LABEL_78;
      }

      v119 = *v14;
      *v14 = *v12;
      *v12 = v119;
      if (*v9 < *v12 || *v12 >= *v9 && *(a2 - 1) < *(v12 + 8))
      {
        v112 = *v12;
        *v12 = *v9;
        goto LABEL_45;
      }
    }

    else if (*v9 < v17 || v17 >= *v9 && *(a2 - 1) < *(v12 + 8))
    {
      v115 = *v12;
      *v12 = *v9;
      *v9 = v115;
      if (*v12 < *v14 || *v14 >= *v12 && *(v12 + 8) < v14[1])
      {
        v116 = *v14;
        *v14 = *v12;
        *v12 = v116;
      }
    }

LABEL_78:
    --a3;
    a5.n128_u64[0] = *v12;
    if (a4)
    {
      goto LABEL_82;
    }

    v34 = *(v12 - 16);
    if (v34 < a5.n128_f64[0])
    {
      goto LABEL_82;
    }

    if (a5.n128_f64[0] < v34)
    {
      v35 = *(v12 + 8);
      goto LABEL_166;
    }

    v35 = *(v12 + 8);
    if (*(v12 - 8) >= v35)
    {
LABEL_166:
      v51 = *v9;
      if (a5.n128_f64[0] < *v9 || v51 >= a5.n128_f64[0] && v35 < *(a2 - 1))
      {
        do
        {
          v52 = *(v12 + 16);
          v12 += 16;
          v53 = v52;
        }

        while (a5.n128_f64[0] >= v52 && (v53 < a5.n128_f64[0] || v35 >= *(v12 + 8)));
      }

      else
      {
          ;
        }
      }

      i = a2;
      if (v12 < a2)
      {
        for (i = a2 - 2; a5.n128_f64[0] < v51 || v51 >= a5.n128_f64[0] && v35 < i[1]; i -= 2)
        {
          v55 = *(i - 2);
          v51 = v55;
        }
      }

      while (v12 < i)
      {
        v129 = *v12;
        *v12 = *i;
        *i = v129;
        do
        {
          v56 = *(v12 + 16);
          v12 += 16;
          v57 = v56;
        }

        while (a5.n128_f64[0] >= v56 && (v57 < a5.n128_f64[0] || v35 >= *(v12 + 8)));
        do
        {
          do
          {
            v58 = *(i - 2);
            i -= 2;
            v59 = v58;
          }

          while (a5.n128_f64[0] < v58);
        }

        while (v59 >= a5.n128_f64[0] && v35 < i[1]);
      }

      if ((v12 - 16) != a1)
      {
        *a1 = *(v12 - 16);
      }

      a4 = 0;
      *(v12 - 16) = a5.n128_u64[0];
      *(v12 - 8) = v35;
    }

    else
    {
LABEL_82:
      v36 = 0;
      v37 = *(v12 + 8);
      while (1)
      {
        v38 = *(v12 + v36 + 16);
        if (v38 >= a5.n128_f64[0] && (a5.n128_f64[0] < v38 || *(v12 + v36 + 24) >= v37))
        {
          break;
        }

        v36 += 16;
      }

      v39 = v12 + v36 + 16;
      if (v36)
      {
        v40 = *v9;
        v41 = a2 - 2;
        if (*v9 >= a5.n128_f64[0])
        {
          do
          {
            if (a5.n128_f64[0] >= v40 && v41[1] < v37)
            {
              break;
            }

            v42 = *(v41 - 2);
            v41 -= 2;
            v40 = v42;
          }

          while (v42 >= a5.n128_f64[0]);
        }
      }

      else
      {
        v41 = a2;
        if (v39 < a2)
        {
          v43 = *v9;
          v41 = a2 - 2;
          if (*v9 >= a5.n128_f64[0])
          {
            v41 = a2 - 2;
            do
            {
              if (a5.n128_f64[0] < v43)
              {
                if (v39 >= v41)
                {
                  break;
                }
              }

              else if (v39 >= v41 || v41[1] < v37)
              {
                break;
              }

              v50 = *(v41 - 2);
              v41 -= 2;
              v43 = v50;
            }

            while (v50 >= a5.n128_f64[0]);
          }
        }
      }

      v12 = v39;
      if (v39 < v41)
      {
        v44 = v41;
        do
        {
          v128 = *v12;
          *v12 = *v44;
          *v44 = v128;
          do
          {
            do
            {
              v45 = *(v12 + 16);
              v12 += 16;
              v46 = v45;
            }

            while (v45 < a5.n128_f64[0]);
          }

          while (a5.n128_f64[0] >= v46 && *(v12 + 8) < v37);
          do
          {
            v47 = *(v44 - 16);
            v44 -= 16;
            v48 = v47;
          }

          while (v47 >= a5.n128_f64[0] && (a5.n128_f64[0] < v48 || *(v44 + 8) >= v37));
        }

        while (v12 < v44);
      }

      if ((v12 - 16) != a1)
      {
        *a1 = *(v12 - 16);
      }

      *(v12 - 16) = a5.n128_u64[0];
      *(v12 - 8) = v37;
      if (v39 < v41)
      {
        goto LABEL_112;
      }

      v49 = sub_1836F9D70(a1, (v12 - 16));
      if (sub_1836F9D70(v12, a2))
      {
        a2 = (v12 - 16);
        if (v49)
        {
          return a5.n128_f64[0];
        }

        goto LABEL_1;
      }

      if (!v49)
      {
LABEL_112:
        sub_1836F8A60(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  v60 = (v12 + 16);
  a5.n128_u64[0] = *(v12 + 16);
  if (a5.n128_f64[0] < *v12 || *v12 >= a5.n128_f64[0] && *(v12 + 24) < *(v12 + 8))
  {
    if (*v9 < a5.n128_f64[0] || a5.n128_f64[0] >= *v9 && *(a2 - 1) < *(v12 + 24))
    {
      v130 = *v12;
      *v12 = *v9;
      a5.n128_u64[0] = v130;
      *v9 = v130;
    }

    else
    {
      v134 = *v12;
      *v12 = *v60;
      *v60 = v134;
      a5.n128_f64[0] = *v9;
      v109 = *(v12 + 16);
      if (*v9 < v109 || v109 >= a5.n128_f64[0] && (a5.n128_f64[0] = *(a2 - 1), a5.n128_f64[0] < *(v12 + 24)))
      {
        a5 = *v60;
        *v60 = *v9;
        *v9 = a5;
      }
    }
  }

  else if (*v9 < a5.n128_f64[0] || a5.n128_f64[0] >= *v9 && (a5.n128_f64[0] = *(a2 - 1), a5.n128_f64[0] < *(v12 + 24)))
  {
    a5 = *v60;
    *v60 = *v9;
    *v9 = a5;
    a5.n128_u64[0] = *(v12 + 16);
    if (a5.n128_f64[0] < *v12)
    {
      goto LABEL_206;
    }

    if (*v12 >= a5.n128_f64[0])
    {
      a5.n128_u64[0] = *(v12 + 24);
      if (a5.n128_f64[0] < *(v12 + 8))
      {
        goto LABEL_206;
      }
    }
  }

  return a5.n128_f64[0];
}

double sub_1836F9B8C(double *a1, double *a2, double *a3, void *a4)
{
  v4 = *a2;
  if (*a2 < *a1 || *a1 >= v4 && a2[1] < a1[1])
  {
    if (*a3 < v4 || v4 >= *a3 && a3[1] < a2[1])
    {
      v5 = *a1;
      *a1 = *a3;
    }

    else
    {
      v8 = *a1;
      *a1 = *a2;
      *a2 = v8;
      if (*a3 >= *a2 && (*a2 < *a3 || a3[1] >= a2[1]))
      {
        goto LABEL_14;
      }

      v5 = *a2;
      *a2 = *a3;
    }

    *a3 = v5;
  }

  else if (*a3 < v4 || v4 >= *a3 && a3[1] < a2[1])
  {
    v6 = *a2;
    *a2 = *a3;
    *a3 = v6;
    if (*a2 < *a1 || *a1 >= *a2 && a2[1] < a1[1])
    {
      v7 = *a1;
      *a1 = *a2;
      *a2 = v7;
    }
  }

LABEL_14:
  *&v9 = *a4;
  if (*a4 < *a3 || *a3 >= *&v9 && (*&v9 = a4[1], *&v9 < a3[1]))
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    *&v9 = *a3;
    if (*a3 < *a2 || *a2 >= *&v9 && (*&v9 = a3[1], *&v9 < a2[1]))
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      *&v9 = *a2;
      if (*a2 < *a1 || *a1 >= *&v9 && (*&v9 = a2[1], *&v9 < a1[1]))
      {
        v9 = *a1;
        *a1 = *a2;
        *a2 = v9;
      }
    }
  }

  return *&v9;
}

BOOL sub_1836F9D70(uint64_t a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v18 = (a1 + 16);
        v21 = *(a1 + 16);
        v22 = a2 - 2;
        if (v21 < *a1 || *a1 >= v21 && *(a1 + 24) < *(a1 + 8))
        {
          if (*v22 < v21 || v21 >= *v22 && *(a2 - 1) < *(a1 + 24))
          {
            v23 = *a1;
            *a1 = *v22;
          }

          else
          {
            v34 = *a1;
            *a1 = *v18;
            *v18 = v34;
            v35 = *(a1 + 16);
            if (*v22 >= v35 && (v35 < *v22 || *(a2 - 1) >= *(a1 + 24)))
            {
              return 1;
            }

            v23 = *v18;
            *v18 = *v22;
          }

          *v22 = v23;
          return 1;
        }

        if (*v22 >= v21 && (v21 < *v22 || *(a2 - 1) >= *(a1 + 24)))
        {
          return 1;
        }

        v30 = *v18;
        *v18 = *v22;
        *v22 = v30;
        v31 = *(a1 + 16);
        if (v31 >= *a1 && (*a1 < v31 || *(a1 + 24) >= *(a1 + 8)))
        {
          return 1;
        }

        goto LABEL_14;
      case 4:
        sub_1836F9B8C(a1, (a1 + 16), (a1 + 32), a2 - 2);
        return 1;
      case 5:
        sub_1836F9B8C(a1, (a1 + 16), (a1 + 32), (a1 + 48));
        v6 = a2 - 2;
        v7 = *(a2 - 2);
        v8 = *(a1 + 48);
        if (v7 < v8 || v8 >= v7 && *(a2 - 1) < *(a1 + 56))
        {
          v9 = *(a1 + 48);
          *(a1 + 48) = *v6;
          *v6 = v9;
          v10 = *(a1 + 48);
          v11 = *(a1 + 32);
          if (v10 < v11 || v11 >= v10 && *(a1 + 56) < *(a1 + 40))
          {
            v12 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v12;
            v13 = *(a1 + 32);
            v14 = *(a1 + 16);
            if (v13 < v14 || v14 >= v13 && *(a1 + 40) < *(a1 + 24))
            {
              v15 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v15;
              v16 = *(a1 + 16);
              if (v16 < *a1 || *a1 >= v16 && *(a1 + 24) < *(a1 + 8))
              {
                v17 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v17;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v18 = a2 - 2;
      v19 = *(a2 - 2);
      if (v19 >= *a1 && (*a1 < v19 || *(a2 - 1) >= *(a1 + 8)))
      {
        return 1;
      }

LABEL_14:
      v20 = *a1;
      *a1 = *v18;
      *v18 = v20;
      return 1;
    }
  }

  v24 = a1 + 32;
  v25 = *a1;
  v26 = (a1 + 16);
  v27 = *(a1 + 16);
  if (v27 >= *a1 && (v25 < v27 || *(a1 + 24) >= *(a1 + 8)))
  {
    if (*v24 < v27 || v27 >= *v24 && *(a1 + 40) < *(a1 + 24))
    {
      v32 = *v26;
      *v26 = *v24;
      *v24 = v32;
      if (*v26 < v25 || v25 >= *v26 && *(a1 + 24) < *(a1 + 8))
      {
        v33 = *a1;
        *a1 = *v26;
        *v26 = v33;
      }
    }

    goto LABEL_50;
  }

  v28 = *v24;
  if (*v24 < v27 || v27 >= v28 && *(a1 + 40) < *(a1 + 24))
  {
    v29 = *a1;
    *a1 = *v24;
  }

  else
  {
    v36 = *a1;
    *a1 = *v26;
    *v26 = v36;
    v37 = *(a1 + 16);
    if (v28 >= v37 && (v37 < v28 || *(a1 + 40) >= *(a1 + 24)))
    {
      goto LABEL_50;
    }

    v29 = *v26;
    *v26 = *v24;
  }

  *v24 = v29;
LABEL_50:
  v38 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (2)
  {
    v41 = *v38;
    if (*v38 >= *v24)
    {
      if (*v24 < v41)
      {
        goto LABEL_54;
      }

      v42 = v38[1];
      if (v42 >= *(v24 + 8))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v42 = v38[1];
    }

    *v38 = *v24;
    v43 = v39;
    while (1)
    {
      v44 = *(a1 + v43 + 16);
      if (v41 >= v44)
      {
        break;
      }

LABEL_58:
      v24 -= 16;
      *(a1 + v43 + 32) = *(a1 + v43 + 16);
      v43 -= 16;
      if (v43 == -32)
      {
        v24 = a1;
        goto LABEL_53;
      }
    }

    if (v44 >= v41)
    {
      if (v42 >= *(a1 + v43 + 24))
      {
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v24 = a1 + v43 + 32;
LABEL_53:
    *v24 = v41;
    *(v24 + 8) = v42;
    if (++v40 != 8)
    {
LABEL_54:
      v24 = v38;
      v39 += 16;
      v38 += 2;
      if (v38 == a2)
      {
        return 1;
      }

      continue;
    }

    return v38 + 2 == a2;
  }
}

char *sub_1836FA2A0(uint64_t a1, char *__dst, char *__src, unint64_t a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_1836D58DC();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v47 = (__dst - v11);
    v48 = 8 * ((__dst - v11) >> 3);
    v49 = (v48 + 8 * a5);
    v50 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - __src) >= 0x20)
    {
      v59 = v50 + 1;
      v60 = (v50 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v51 = (v48 + 8 * v60);
      v52 = &__src[8 * v60];
      v61 = (__src + 16);
      v62 = (v48 + 16);
      v63 = v60;
      do
      {
        v64 = *v61;
        *(v62 - 1) = *(v61 - 1);
        *v62 = v64;
        v61 += 2;
        v62 += 2;
        v63 -= 4;
      }

      while (v63);
      if (v59 == v60)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v51 = v48;
      v52 = __src;
    }

    do
    {
      v53 = *v52;
      v52 += 8;
      *v51++ = v53;
    }

    while (v51 != v49);
LABEL_42:
    v54 = *(a1 + 8) - __dst;
    memcpy((v48 + 8 * a5), __dst, v54);
    v55 = v49 + v54;
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 3;
  if (v16 >= a5)
  {
    v15 = 8 * a5;
    v34 = &__dst[8 * a5];
    v35 = (v10 - 8 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_62;
      }

      v40 = (v37 >> 3) + 1;
      v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
      v35 = (v35 + v41);
      v39 = (v10 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 4;
      }

      while (v44);
      if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_62:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v34);
    }

    goto LABEL_56;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 8 * a5;
    v22 = &v5[8 * a5];
    v23 = &v20[-8 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &__src[v21] + 8;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &__src[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x18)
      {
        goto LABEL_63;
      }

      if ((a5 & 0x1FFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_63;
      }

      v27 = (v25 >> 3) + 1;
      v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&v5[a4] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_63:
        do
        {
          v33 = *v23;
          v23 += 8;
          *v26 = v33;
          v26 += 8;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&v5[8 * a5], v5, v20 - v22);
    }

    if (v10 != v5)
    {
LABEL_56:
      memmove(v5, __src, v15);
    }
  }

  return v5;
}

char *sub_1836FA644(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

id sub_1836FB07C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(a2, a2, @", ", &unk_1EF1BC490, a5, a6);

  return v6;
}

id sub_1836FB0BC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_indexAtPosition_(v2, v4, 0, v5, v6, v7);
  v13 = objc_msgSend_indexAtPosition_(v2, v9, 1, v10, v11, v12);
  v18 = objc_msgSend_stringWithFormat_(v3, v14, @"s%ld,p%ld", v15, v16, v17, v8, v13);

  return v18;
}

void sub_1836FB678(uint64_t *a1)
{
  v2 = (a1 + 12);
  v3 = a1[12];
  a1[15] = 0;
  v4 = a1[13];
  if (v4 == v3)
  {
    v9 = 0;
LABEL_14:
    sub_18370D180(v2, 1 - v9);
    goto LABEL_15;
  }

  v5 = a1[13];
  do
  {
    v7 = *(v5 - 24);
    v5 -= 24;
    v6 = v7;
    if (v7)
    {
      *(v4 - 16) = v6;
      operator delete(v6);
    }

    v4 = v5;
  }

  while (v5 != v3);
  v8 = a1[12];
  a1[13] = v3;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v8) >> 3);
  if (v3 == v8)
  {
    goto LABEL_14;
  }

  if (v9 >= 2)
  {
    v10 = v8 + 24;
    if (v3 != v8 + 24)
    {
      v11 = v3;
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v3 - 16) = v12;
          operator delete(v12);
        }

        v3 = v11;
      }

      while (v11 != v10);
    }

    a1[13] = v10;
    v15 = *a1;
    v14 = a1[1];
    if (v14 == *a1)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

LABEL_15:
  v15 = *a1;
  v14 = a1[1];
  if (v14 == *a1)
  {
LABEL_28:
    v20 = 0;
LABEL_29:
    sub_18370D180(a1, 1 - v20);
    goto LABEL_31;
  }

LABEL_16:
  v16 = v14;
  do
  {
    v18 = *(v16 - 24);
    v16 -= 24;
    v17 = v18;
    if (v18)
    {
      *(v14 - 16) = v17;
      operator delete(v17);
    }

    v14 = v16;
  }

  while (v16 != v15);
  v19 = *a1;
  a1[1] = v15;
  v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v19) >> 3);
  if (v15 == v19)
  {
    goto LABEL_29;
  }

  if (v20 >= 2)
  {
    v21 = v19 + 24;
    if (v15 != v19 + 24)
    {
      v22 = v15;
      do
      {
        v24 = *(v22 - 24);
        v22 -= 24;
        v23 = v24;
        if (v24)
        {
          *(v15 - 16) = v23;
          operator delete(v23);
        }

        v15 = v22;
      }

      while (v22 != v21);
    }

    a1[1] = v21;
  }

LABEL_31:
  a1[4] = 0;
  sub_1836FB830((a1 + 3), 1uLL, 0);
  a1[7] = a1[6];
  a1[10] = a1[9];
}

void sub_1836FB830(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
    return;
  }

  v6 = *(a1 + 16);
  v7 = v6 << 6;
  if (v6 << 6 < v4 || v3 > (v6 << 6) - v4)
  {
    __dst = 0;
    v25 = 0;
    v26 = 0;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_18369F168();
    }

    v10 = v6 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_1836F8430(&__dst, v11);
    v12 = a1;
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = v14 + v4;
    v25 = v14 + v4;
    v16 = __dst;
    if (v14 < 1)
    {
      LODWORD(v18) = 0;
      v17 = __dst;
    }

    else
    {
      v18 = v14 >> 6;
      if (v14 >= 0x40)
      {
        memmove(__dst, v13, 8 * v18);
        v12 = a1;
      }

      v17 = &v16[8 * v18];
      if ((v14 & 0x3F) != 0)
      {
        *v17 = *v17 & ~(0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F)) | *(v13 + v18) & (0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F));
        LODWORD(v18) = v14 & 0x3F;
      }

      else
      {
        LODWORD(v18) = 0;
      }

      v13 = *v12;
      v14 = *(v12 + 8);
      v16 = __dst;
      v15 = v25;
    }

    *v12 = v16;
    *(v12 + 8) = v15;
    __dst = v13;
    v25 = v14;
    v19 = *(v12 + 16);
    *(v12 + 16) = v26;
    v26 = v19;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v17 = (*a1 + 8 * (v3 >> 6));
    v18 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
  }

  if (v4)
  {
    if (a3)
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v20 = v4;
        }

        else
        {
          v20 = (64 - v18);
        }

        *v17 |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v20)) & (-1 << v18);
        v17 += 8;
        v4 -= v20;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        memset(v17, 255, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] | (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
LABEL_44:
        *&v17[8 * v21] = v22;
      }
    }

    else
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v23 = v4;
        }

        else
        {
          v23 = (64 - v18);
        }

        *v17 &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v23)) & (-1 << v18));
        v17 += 8;
        v4 -= v23;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        bzero(v17, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
        goto LABEL_44;
      }
    }
  }
}

void sub_1836FBA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1836FBAA8(float64x2_t **a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a2[13];
  v4 = v3 - a2[12];
  v13 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    v6 = *(v3 - 16) == *(v3 - 24);
    v7 = v5 - v6;
    v12 = 0u;
    if (v5 != v6)
    {
      if (v7 < 1)
      {
        v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      }

      else
      {
        v9 = 0;
        v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        do
        {
          sub_1836FCBE8(&__p, a2, v9);
          v12 = vbslq_s8(vcgtq_f64(v12, *__p), *__p, v12);
          v13 = vbslq_s8(vcgtq_f64(*(__p + 1), v13), *(__p + 1), v13);
          operator delete(__p);
          ++v9;
        }

        while (v7 != v9);
      }
    }
  }

  else
  {
    v12 = 0u;
  }

  sub_18370D4C0(a1, 4uLL);
  v10 = *a1;
  result = v12;
  *v10 = v12;
  v10[1] = v13;
  return result;
}

void sub_1836FBBC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1836FBBE4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, float a5)
{
  sub_1836FB678(a2);
  v10 = *(a1 + 104);
  v11 = v10 - *(a1 + 96);
  if (v11)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3) - (*(v10 - 16) == *(v10 - 24));
    if (v12 >= 1)
    {
      v14 = a2[12];
      v13 = a2[13];
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
      if (v12 <= v15)
      {
        if (v12 < v15)
        {
          v16 = v14 + 24 * v12;
          if (v13 != v16)
          {
            v17 = a2[13];
            do
            {
              v19 = *(v17 - 24);
              v17 -= 24;
              v18 = v19;
              if (v19)
              {
                *(v13 - 16) = v18;
                operator delete(v18);
              }

              v13 = v17;
            }

            while (v17 != v16);
          }

          a2[13] = v16;
        }
      }

      else
      {
        sub_18370D180((a2 + 12), v12 - v15);
      }

      v20 = a2[1];
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 3);
      if (v12 <= v21)
      {
        if (v12 < v21)
        {
          v22 = *a2 + 24 * v12;
          if (v20 != v22)
          {
            v23 = a2[1];
            do
            {
              v25 = *(v23 - 24);
              v23 -= 24;
              v24 = v25;
              if (v25)
              {
                *(v20 - 16) = v24;
                operator delete(v24);
              }

              v20 = v23;
            }

            while (v23 != v22);
          }

          a2[1] = v22;
        }
      }

      else
      {
        sub_18370D180(a2, v12 - v21);
      }

      sub_1836FB830((a2 + 3), v12, 0);
      for (i = 0; i != v12; ++i)
      {
        sub_1836FBD80(a1, a2, i, a3, a4, a5);
      }
    }
  }
}

void sub_1836FBD80(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, float a6)
{
  v107 = *MEMORY[0x1E69E9840];
  v101[0] = 0;
  v101[1] = 0;
  v100 = v101;
  if (a4)
  {
    v11 = a4[1];
    v10 = a4[2];
    if (v11 >= v10)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_18368964C();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v12 + 1)
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      v106 = a4;
      if (v15)
      {
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_183688F00();
      }

      *&buf = 0;
      *(&buf + 1) = 24 * v12;
      v104 = 24 * v12;
      v105 = 0;
      sub_18370D32C((24 * v12), &v100);
      v16 = v104 + 24;
      v18 = *a4;
      v17 = a4[1];
      v19 = *(&buf + 1) + *a4 - v17;
      if (v17 != *a4)
      {
        v20 = 0;
        do
        {
          while (1)
          {
            v21 = (v19 + v20 * 8);
            *v21 = v18[v20];
            v22 = &v18[v20 + 1];
            v23 = *v22;
            *(v19 + v20 * 8 + 8) = *v22;
            v24 = v19 + v20 * 8 + 8;
            v25 = v18[v20 + 2];
            v21[2] = v25;
            if (!v25)
            {
              break;
            }

            *(v23 + 16) = v24;
            v18[v20] = v22;
            *v22 = 0;
            v18[v20 + 2] = 0;
            v20 += 3;
            if (&v18[v20] == v17)
            {
              goto LABEL_18;
            }
          }

          *v21 = v24;
          v20 += 3;
        }

        while (&v18[v20] != v17);
        do
        {
LABEL_18:
          sub_18368D56C(v18, v18[1]);
          v18 += 3;
        }

        while (v18 != v17);
        v18 = *a4;
      }

      *a4 = v19;
      a4[1] = v16;
      a4[2] = v105;
      if (v18)
      {
        operator delete(v18);
      }

      a4[1] = v16;
    }

    else
    {
      sub_18370D32C(a4[1], &v100);
      a4[1] = v11 + 24;
      a4[1] = v11 + 24;
    }
  }

  v26 = *(*(a1 + 96) + 24 * a3);
  v27 = (*(*(a1 + 96) + 24 * a3 + 8) - v26) >> 3;
  if (v27 <= 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v28 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a3;
      _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "Empty stroke at index=%lu detected during spatial resampling.", &buf, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v29 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
LABEL_31:

        v26 = *(*(a1 + 96) + 24 * a3);
        goto LABEL_32;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v29 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_31;
      }
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_FAULT, "Empty stroke at index=%lu detected during spatial resampling.", &buf, 0xCu);
    goto LABEL_31;
  }

LABEL_32:
  v30 = *v26;
  v31 = v26[1];
  v102 = v31;
  *&buf = v30;
  sub_183707A70(*(a2 + 96) + 24 * a3, &buf);
  sub_183707A70(*(a2 + 96) + 24 * a3, &v102);
  v96 = a3 >> 6;
  *(*(a2 + 24) + 8 * (a3 >> 6)) &= ~(1 << a3);
  if (a4)
  {
    operator new();
  }

  v32 = *(*(a1 + 96) + 24 * a3);
  v33 = (*(*(a1 + 96) + 24 * a3 + 8) - v32) >> 3;
  v34 = 0.0;
  if (v33 >= 4)
  {
    v35 = v33 >> 1;
    v36 = v35 - 1;
    if (v35 - 1 >= 4)
    {
      v38 = v36 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v39 = v32 + 2;
      v37 = 0.0;
      v40 = v36 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v42 = v39[1];
        v41 = v39[2];
        v44 = v39[-2];
        v43 = v39[-1];
        v45 = *v39;
        v39 += 4;
        v46 = vsubq_f64(v45, v43);
        v47 = vsubq_f64(v43, v44);
        v48 = vzip1q_s64(v47, v46);
        v49 = vsubq_f64(v41, v42);
        v50 = vsubq_f64(v42, v45);
        v51 = vzip1q_s64(v50, v49);
        v52 = vsqrtq_f64(vmlaq_f64(vzip2q_s64(vmulq_f64(v47, v47), vmulq_f64(v46, v46)), v48, v48));
        v53 = vsqrtq_f64(vmlaq_f64(vzip2q_s64(vmulq_f64(v50, v50), vmulq_f64(v49, v49)), v51, v51));
        v37 = v37 + v52.f64[0] + v52.f64[1] + v53.f64[0] + v53.f64[1];
        v40 -= 4;
      }

      while (v40);
      if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v37 = 0.0;
      v38 = 1;
    }

    v54 = v35 - v38;
    f64 = v32[v38].f64;
    do
    {
      v37 = v37 + sqrt((f64[1] - *(f64 - 1)) * (f64[1] - *(f64 - 1)) + (*f64 - *(f64 - 2)) * (*f64 - *(f64 - 2)));
      f64 += 2;
      --v54;
    }

    while (v54);
LABEL_42:
    v34 = v37;
  }

  v93 = v27 >> 1;
  v95 = ~(1 << a3);
  if (v34 >= a6)
  {
    if (a5 != 0x7FFFFFFFFFFFFFFFLL && ceilf(v34 / a6) > a5)
    {
      a6 = v34 / (a5 + -1.0);
    }

    if (v27 >= 4)
    {
      v59 = a5;
      v98 = a3;
      i = 0.0;
      v92 = 24 * a3;
      v61 = 1;
      v62 = 1;
      v63 = a2;
      do
      {
        v64 = (*(*(a1 + 96) + v92) + 16 * v61);
        v65 = v64[-1];
        *&v65.f64[0] = vcvt_f32_f64(v65);
        v66 = vcvt_f32_f64(*v64);
        v67 = v65;
        *&v65.f64[0] = vsub_f32(*&v65.f64[0], v66);
        v68 = sqrtf(vaddv_f32(vmul_f32(*&v65.f64[0], *&v65.f64[0])));
        for (i = i + v68; i >= a6; v68 = i)
        {
          *&v67.f64[0] = vmla_n_f32(*&v67.f64[0], vsub_f32(v66, *&v67.f64[0]), (a6 - (i - v68)) / v68);
          v99 = v67;
          if (v59 == 0x7FFFFFFFFFFFFFFFLL || v62 < a5 - 1)
          {
            v70 = *v67.f64;
            v71 = *(a2 + 96) + 24 * a3;
            v73 = *(v71 + 8);
            v72 = *(v71 + 16);
            if (v73 >= v72)
            {
              v75 = *v71;
              v76 = v73 - *v71;
              v77 = v76 >> 3;
              v78 = (v76 >> 3) + 1;
              if (v78 >> 61)
              {
                sub_1836D58DC();
              }

              v79 = v72 - v75;
              if (v79 >> 2 > v78)
              {
                v78 = v79 >> 2;
              }

              if (v79 >= 0x7FFFFFFFFFFFFFF8)
              {
                v80 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v80 = v78;
              }

              if (v80)
              {
                if (!(v80 >> 61))
                {
                  operator new();
                }

                sub_183688F00();
              }

              *(8 * v77) = v70;
              v74 = 8 * v77 + 8;
              memcpy(0, v75, v76);
              *v71 = 0;
              *(v71 + 8) = v74;
              *(v71 + 16) = 0;
              if (v75)
              {
                operator delete(v75);
              }

              a2 = v63;
              a3 = v98;
            }

            else
            {
              *v73 = v70;
              v74 = (v73 + 1);
            }

            v81 = *(v99.f64 + 1);
            *(v71 + 8) = v74;
            v82 = *(a2 + 96) + 24 * a3;
            v84 = *(v82 + 8);
            v83 = *(v82 + 16);
            if (v84 >= v83)
            {
              v86 = *v82;
              v87 = v84 - *v82;
              v88 = v87 >> 3;
              v89 = (v87 >> 3) + 1;
              if (v89 >> 61)
              {
                sub_1836D58DC();
              }

              v90 = v83 - v86;
              if (v90 >> 2 > v89)
              {
                v89 = v90 >> 2;
              }

              if (v90 >= 0x7FFFFFFFFFFFFFF8)
              {
                v91 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v91 = v89;
              }

              if (v91)
              {
                if (!(v91 >> 61))
                {
                  operator new();
                }

                sub_183688F00();
              }

              *(8 * v88) = v81;
              v85 = 8 * v88 + 8;
              memcpy(0, v86, v87);
              *v82 = 0;
              *(v82 + 8) = v85;
              *(v82 + 16) = 0;
              if (v86)
              {
                operator delete(v86);
              }

              a2 = v63;
            }

            else
            {
              *v84 = v81;
              v85 = (v84 + 1);
            }

            *(v82 + 8) = v85;
            *(*(a2 + 24) + 8 * v96) &= v95;
            ++v62;
            a2 = v63;
            v59 = a5;
            a3 = v98;
          }

          v67 = v99;
          v69 = vsub_f32(*&v99.f64[0], v66);
          i = sqrtf(vaddv_f32(vmul_f32(v69, v69)));
        }

        ++v61;
      }

      while (v61 != v93);
      v32 = *(*(a1 + 96) + 24 * a3);
    }

    goto LABEL_45;
  }

  if (v27 >= 4)
  {
LABEL_45:
    v56 = v32[v93 - 1].f64;
    v57 = *v56;
    v58 = v56[1];
    v102 = v58;
    *&buf = v57;
    sub_183707A70(*(a2 + 96) + 24 * a3, &buf);
    sub_183707A70(*(a2 + 96) + 24 * a3, &v102);
    *(*(a2 + 24) + 8 * v96) &= v95;
  }

  sub_18368D56C(&v100, v101[0]);
}

void sub_1836FCAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_18370D468(va1);
  sub_18368D56C(va, v14);
  _Unwind_Resume(a1);
}

void sub_1836FCB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  *(v20 + 8) = v21;
  sub_18368D56C(&a19, a20);
  _Unwind_Resume(a1);
}

void *sub_1836FCBE8(void *result, void *a2, unint64_t a3)
{
  if ((*(a2[3] + 8 * (a3 >> 6)) & (1 << a3)) == 0)
  {
    v3 = (a2[12] + 24 * a3);
    v4 = *v3;
    v5 = (v3[1] - *v3) >> 3;
    if (v5 >= 2)
    {
      v6 = v5 >> 1;
      v7 = (v4 + 8);
      v8 = -1.79769313e308;
      v9 = 1.79769313e308;
      v10 = 1.79769313e308;
      v11 = -1.79769313e308;
      do
      {
        v12 = *(v7 - 1);
        v13 = *v7;
        if (v12 < v9)
        {
          v9 = *(v7 - 1);
        }

        if (v12 > v8)
        {
          v8 = *(v7 - 1);
        }

        if (v13 < v10)
        {
          v10 = *v7;
        }

        if (v13 > v11)
        {
          v11 = *v7;
        }

        v7 += 2;
        --v6;
      }

      while (v6);
    }

    operator new();
  }

  v14 = (*a2 + 24 * a3);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  v16 = *v14;
  v15 = v14[1];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  return result;
}

void sub_1836FE0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24)
{
  sub_18370859C(&STACK[0x400]);

  _Unwind_Resume(a1);
}

void sub_1836FE1BC(void *a1)
{
  v4 = a1[12];
  v3 = a1[13];
  v2 = (a1 + 12);
  if (v3 != v4 && *(v3 - 16) != *(v3 - 24))
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
    v6 = a1[15] + 1;
    if (v6 <= v5)
    {
      if (v6 < v5)
      {
        v7 = v4 + 24 * v6;
        if (v3 != v7)
        {
          v8 = v3;
          do
          {
            v10 = *(v8 - 24);
            v8 -= 24;
            v9 = v10;
            if (v10)
            {
              *(v3 - 16) = v9;
              operator delete(v9);
            }

            v3 = v8;
          }

          while (v8 != v7);
        }

        a1[13] = v7;
      }
    }

    else
    {
      sub_18370D180(v2, v6 - v5);
    }

    v11 = a1[15] + 1;
    v12 = a1[1];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a1) >> 3);
    if (v11 <= v13)
    {
      if (v11 < v13)
      {
        v14 = *a1 + 24 * v11;
        if (v12 != v14)
        {
          v15 = a1[1];
          do
          {
            v17 = *(v15 - 24);
            v15 -= 24;
            v16 = v17;
            if (v17)
            {
              *(v12 - 16) = v16;
              operator delete(v16);
            }

            v12 = v15;
          }

          while (v15 != v14);
        }

        a1[1] = v14;
      }
    }

    else
    {
      sub_18370D180(a1, v11 - v13);
    }

    v18 = a1[15] + 1;

    sub_1836FB830((a1 + 3), v18, 0);
  }
}

void sub_1836FE308(void *a1, double a2)
{
  v4 = a1[7];
  v3 = a1[8];
  if (v4 >= v3)
  {
    v6 = a1[6];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_1836D58DC();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v12 = (v4 - v6) >> 3;
    v13 = (8 * v8);
    v14 = (8 * v8 - 8 * v12);
    *v13 = a2;
    v5 = v13 + 1;
    memcpy(v14, v6, v7);
    a1[6] = v14;
    a1[7] = v5;
    a1[8] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 1;
  }

  a1[7] = v5;
}

void sub_1836FE40C(void *a1, double a2)
{
  v4 = a1[10];
  v3 = a1[11];
  if (v4 >= v3)
  {
    v6 = a1[9];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_1836D58DC();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v12 = (v4 - v6) >> 3;
    v13 = (8 * v8);
    v14 = (8 * v8 - 8 * v12);
    *v13 = a2;
    v5 = v13 + 1;
    memcpy(v14, v6, v7);
    a1[9] = v14;
    a1[10] = v5;
    a1[11] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 1;
  }

  a1[10] = v5;
}

void sub_1836FE948(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_183708E04(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = *(a1 + 24);
      if (v4 > *(a1 + 40) << 6)
      {
        if (v5)
        {
          operator delete(v5);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          v4 = *(a2 + 32);
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369F168();
      }

      memmove(v5, *(a2 + 24), (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v4 = *(a2 + 32);
    }

    *(a1 + 32) = v4;
    sub_1836E0FD4((a1 + 48), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
    sub_1836E0FD4((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
    sub_183708E04((a1 + 96), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  }

  v6 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v6;
  v7 = *(a1 + 384);
  if (v7)
  {
    MEMORY[0x1865E5E90](v7, 0x1000C8000313F17);
  }

  *(a1 + 396) = *(a2 + 396);
  *(a1 + 392) = *(a2 + 392);
  operator new[]();
}

void sub_1836FF0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v12)
  {
    operator delete(v12);
    v14 = __p;
    if (!__p)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);

  _Unwind_Resume(a1);
}

void sub_1836FF3C4(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void sub_1836FF4F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_1836FF928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  sub_18370859C(&a41);
  sub_18370859C(&STACK[0x400]);

  _Unwind_Resume(a1);
}

void sub_1836FFC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 80), 8);

  _Unwind_Resume(a1);
}

unint64_t sub_1836FFC48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_pointCountForStrokeIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(*(a1 + 32), v9, a2, i, v10, v11);
      *(*(*(a1 + 40) + 8) + 24) = v13 + *(*(*(a1 + 40) + 8) + 24);
      *(*(*(a1 + 48) + 8) + 24) = v14 + *(*(*(a1 + 48) + 8) + 24);
      ++*(*(*(a1 + 56) + 8) + 24);
      result = objc_msgSend_pointCountForStrokeIndex_(*(a1 + 32), v15, a2, v16, v17, v18);
    }
  }

  return result;
}

void sub_1836FFDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1836FFE0C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1836FFE1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_boundsForStrokeIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
  v11.origin.x = v7;
  v11.origin.y = v8;
  v11.size.width = v9;
  v11.size.height = v10;
  *(*(*(a1 + 40) + 8) + 48) = CGRectUnion(*(*(*(a1 + 40) + 8) + 48), v11);
}

void sub_183701BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  operator delete(__p);
  sub_18370859C(&a41);
  sub_18370859C(&STACK[0x380]);
  _Unwind_Resume(a1);
}

void sub_1837039A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a41)
  {
    MEMORY[0x1865E5E90](a41, 0x1000C8052888210);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_183703BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_18370859C(va);
  sub_18370859C(&STACK[0x300]);

  _Unwind_Resume(a1);
}

void sub_183703F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1837043A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  if (a14)
  {
    operator delete(a14);
    if (a13)
    {
LABEL_6:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if (a13)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_183704698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_18370859C(&a9);
  sub_18370859C(&STACK[0x280]);
  sub_18370859C(&STACK[0x500]);

  _Unwind_Resume(a1);
}

void sub_1837047DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_18370859C(&a9);
  sub_18370859C(&STACK[0x280]);
  sub_18370859C(&STACK[0x500]);

  _Unwind_Resume(a1);
}

void sub_1837053DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_18370859C(va);
  sub_18370859C(&STACK[0x300]);
  sub_18370859C(&STACK[0x580]);

  _Unwind_Resume(a1);
}

void sub_183705798(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_183705AEC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = a3;
  if (a1)
  {
    v12 = objc_msgSend_strokeIndex(v5, v6, v7, v8, v9, v10);
    v18 = objc_msgSend_pointIndex(v5, v13, v14, v15, v16, v17);
    v24 = objc_msgSend_strokeIndex(v11, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_pointIndex(v11, v25, v26, v27, v28, v29);
    if (v12 <= v24)
    {
      v38 = v30;
      v39 = -3.4028e38;
      v35 = 3.4028e38;
      v40 = 3.4028e38;
      v41 = -3.4028e38;
      v42 = v12;
      do
      {
        if (v42 == v12)
        {
          v44 = v18;
        }

        else
        {
          v44 = 0;
        }

        v45 = v38;
        if (v42 != v24)
        {
          v45 = objc_msgSend_pointCountForStrokeIndex_(a1, v31, v42, v32, v33, v34) - 1;
        }

        objc_msgSend_boundsForStrokeIndex_(a1, v31, v42, v32, v33, v34);
        rect = v46;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        if (objc_msgSend_pointCountForStrokeIndex_(a1, v53, v42, v54, v55, v56) == v45 - v44 + 1)
        {
          v64.origin.x = v48;
          v64.origin.y = v50;
          v64.size.width = v52;
          v64.size.height = rect;
          MinX = CGRectGetMinX(v64);
          v65.origin.x = v48;
          v65.origin.y = v50;
          v65.size.width = v52;
          v65.size.height = rect;
          MinY = CGRectGetMinY(v65);
          v66.origin.x = v48;
          v66.origin.y = v50;
          v66.size.width = v52;
          v66.size.height = rect;
          MaxX = CGRectGetMaxX(v66);
          v67.origin.x = v48;
          v67.origin.y = v50;
          v67.size.width = v52;
          v67.size.height = rect;
          v35 = fmin(v35, MinX);
          v40 = fmin(v40, MinY);
          v39 = fmax(v39, MaxX);
          v41 = fmax(v41, CGRectGetMaxY(v67));
        }

        else
        {
          v68.origin.x = v48;
          v68.origin.y = v50;
          v68.size.width = v52;
          v68.size.height = rect;
          if (CGRectGetMinX(v68) > v35 || (v69.origin.x = v48, v69.origin.y = v50, v69.size.width = v52, v69.size.height = rect, CGRectGetMaxX(v69) > v39) || (v70.origin.x = v48, v70.origin.y = v50, v70.size.width = v52, v70.size.height = rect, CGRectGetMinY(v70) < v40) || (v71.origin.x = v48, v71.origin.y = v50, v71.size.width = v52, v71.size.height = rect, CGRectGetMaxY(v71) > v41))
          {
            if (v45 >= v44)
            {
              v58 = v45 + 1;
              do
              {
                objc_msgSend_pointForStrokeIndex_pointIndex_(a1, v31, v42, v44, v33, v34);
                v35 = fmin(v35, v59);
                v40 = fmin(v40, v60);
                v39 = fmax(v39, v59);
                v41 = fmax(v41, v60);
                ++v44;
              }

              while (v58 != v44);
            }
          }
        }
      }

      while (v42++ != v24);
    }

    else
    {
      v35 = 3.4028e38;
    }

    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  return v36;
}

void sub_18370622C(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void sub_183706304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_18370859C(&a9);

  _Unwind_Resume(a1);
}

void sub_183706878(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *exc_bufa, void *a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(a1);
    v24 = sub_183761FE4(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "Drawing writeToFile caught NSException: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1837067F4);
  }

  _Unwind_Resume(a1);
}

void sub_1837076E8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

BOOL sub_1837077F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_segmentID(a2, a2, a3, a4, a5, a6);
  v13 = objc_msgSend_unsignedIntegerValue(v7, v8, v9, v10, v11, v12);
  v19 = v13 == objc_msgSend_unsignedIntegerValue(*(a1 + 32), v14, v15, v16, v17, v18);

  return v19;
}

void sub_183707A70(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1836D58DC();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_183707B88(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 256) = &unk_1EF1BC4E0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  sub_1836FB678(a1);
  return a1;
}

void sub_183707C08(_Unwind_Exception *a1)
{
  v6 = *(v1 + 520);
  if (v6)
  {
    *(v1 + 528) = v6;
    operator delete(v6);
    *v4 = v3;
    v7 = *(v1 + 384);
    if (!v7)
    {
LABEL_3:
      sub_18369F0F0(v2);
      v8 = *(v1 + 72);
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *v4 = v3;
    v7 = *(v1 + 384);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x1865E5E90](v7, 0x1000C8000313F17);
  *(v1 + 384) = 0;
  sub_18369F0F0(v2);
  v8 = *(v1 + 72);
  if (!v8)
  {
LABEL_4:
    v9 = *(v1 + 48);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v1 + 80) = v8;
  operator delete(v8);
  v9 = *(v1 + 48);
  if (!v9)
  {
LABEL_5:
    v10 = *(v1 + 24);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v1 + 56) = v9;
  operator delete(v9);
  v10 = *(v1 + 24);
  if (!v10)
  {
LABEL_6:
    sub_18369F0F0(v1);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v10);
  sub_18369F0F0(v1);
  _Unwind_Resume(a1);
}

void *sub_183707CC0(void *result)
{
  *result = &unk_1EF1BC4E0;
  if (result[16])
  {
    v1 = result;
    MEMORY[0x1865E5E90](result[16], 0x1000C8000313F17);
    result = v1;
    v1[16] = 0;
  }

  return result;
}

void sub_183707D28(void *a1)
{
  *a1 = &unk_1EF1BC4E0;
  if (a1[16])
  {
    MEMORY[0x1865E5E90](a1[16], 0x1000C8000313F17);
    v1 = vars8;
  }

  JUMPOUT(0x1865E5EB0);
}

void sub_183707D9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 140);
  v5 = *(a2 + 136);
  *a3 = &unk_1EF1BC4E0;
  *(a3 + 136) = v5;
  *(a3 + 140) = v4;
  operator new[]();
}

void sub_183708030(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 136);
  v3 = *(a1 + 140);
  *a2 = &unk_1EF1BC4E0;
  *(a2 + 136) = v4;
  *(a2 + 140) = v3;
  operator new[]();
}

void sub_1837081A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 136);
  v3 = *(a1 + 140);
  *a2 = &unk_1EF1BC4E0;
  *(a2 + 136) = v4;
  *(a2 + 140) = v3;
  operator new[]();
}

uint64_t sub_18370835C(uint64_t result, uint64_t a2)
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
        if (v3 >= 0xA)
        {
          v11 = 0;
          v13 = __CFADD__(v3 * v6, v9);
          v14 = __CFADD__(v8 * v6, v9);
          if (v13 || v14 || (v3 - 1) >> 32)
          {
            goto LABEL_6;
          }

          v15 = 8 * (v3 * v6);
          v16 = 8 * (v8 * v6);
          if (v10 + v15 >= (v7 + 8 * v3 + v16) || v7 + v16 >= (v10 + 8 * v3 + v15))
          {
            v17 = v4;
            v18 = v5;
            v19 = v3 & 0xFFFFFFFC;
            do
            {
              v20 = (v7 + 8 * v18);
              v21 = *v20;
              v22 = v20[1];
              v23 = (v10 + 8 * v17);
              v24 = vaddq_f64(v22, v23[1]);
              *v23 = vaddq_f64(v21, *v23);
              v23[1] = v24;
              v18 += 4;
              v17 += 4;
              v19 -= 4;
            }

            while (v19);
            v11 = v3 & 0xFFFFFFFC;
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
          *(v10 + 8 * (v4 + v11)) = *(v7 + 8 * (v5 + v11)) + *(v10 + 8 * (v4 + v11));
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

void sub_183708488(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    MEMORY[0x1865E5E90](v4, 0x1000C8000313F17);
  }

  v5 = *(a2 + 140);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = v5;
  operator new[]();
}

BOOL sub_183708540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (v2 == *(a2 + 136) && (v3 = *(a1 + 140), v3 == *(a2 + 140)))
  {
    return memcmp(*(a1 + 128), *(a2 + 128), 8 * (v3 * v2)) == 0;
  }

  else
  {
    return 0;
  }
}

void **sub_18370859C(void **a1)
{
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    operator delete(v2);
  }

  a1[32] = &unk_1EF1BC4E0;
  v3 = a1[48];
  if (v3)
  {
    MEMORY[0x1865E5E90](v3, 0x1000C8000313F17);
    a1[48] = 0;
  }

  v4 = a1[12];
  if (v4)
  {
    v5 = a1[13];
    v6 = a1[12];
    if (v5 != v4)
    {
      v7 = a1[13];
      do
      {
        v9 = *(v7 - 3);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 2) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = a1[12];
    }

    a1[13] = v4;
    operator delete(v6);
  }

  v10 = a1[9];
  if (v10)
  {
    a1[10] = v10;
    operator delete(v10);
  }

  v11 = a1[6];
  if (v11)
  {
    a1[7] = v11;
    operator delete(v11);
  }

  v12 = a1[3];
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *a1;
  if (*a1)
  {
    v14 = a1[1];
    v15 = *a1;
    if (v14 != v13)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 3);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 2) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = *a1;
    }

    a1[1] = v13;
    operator delete(v15);
  }

  return a1;
}

double sub_1837086DC(uint64_t a1, double a2)
{
  if (a2 < 0.0 || *(a1 + 48) < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_183708868(exception);
    __cxa_throw(exception, off_1E6DDBD10, MEMORY[0x1E69E5270]);
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = v3 - v2;
  v4 = v3 == v2;
  v6 = (v3 - v2) >> 3;
  if (!v4)
  {
    v7 = v6;
    v8 = *(a1 + 24);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[v7 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v7 += ~(v7 >> 1);
      if (v12 > a2)
      {
        v7 = v9;
      }

      else
      {
        v8 = v11;
      }
    }

    while (v7);
    v5 = v8 - v2;
  }

  v13 = v5 - 8;
  v14 = (v13 >> 3) + 1;
  v15 = *(v2 + 8 * v14);
  v16 = *(v2 + v13);
  v17 = (v13 >> 3) - 1;
  v18 = *(v2 + 8 * v17);
  v19 = v16 - a2;
  if ((v13 >> 3) + 2 == v6)
  {
    v20 = 0;
  }

  else
  {
    v20 = (v13 >> 3) + 2;
  }

  v21 = *(v2 + 8 * v20);
  v22 = 1.0 / (v16 - v18);
  v23 = -(v18 - a2);
  v24 = 1.0 / (v15 - v16);
  v25 = v15 - a2;
  v26 = -v19;
  v27 = 1.0 / (v15 - v18);
  v28 = v21 - a2;
  v29 = 1.0 / (v21 - v15);
  v30 = 1.0 / (v21 - v16);
  v31 = *(*a1 + 2 * v13);
  v32 = vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v31, v23), *(*a1 + 16 * v17), v19), v22);
  v33 = *(*a1 + 16 * v14);
  v34 = vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v33, v26), v31, v25), v24);
  *&result = *&vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(*a1 + 16 * v20), -v25), v33, v28), v29), v26), v34, v28), v30), v26), vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v34, v23), v32, v25), v27), v25), v24);
  return result;
}

std::logic_error *sub_183708868(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "Parameter outside bounds.");
  result->__vftable = (MEMORY[0x1E69E55A8] + 16);
  return result;
}

uint64_t sub_1837088A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1837088E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  sub_18369F384((a1 + 24), a2 + 24);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v9 = *(a2 + 96);
  v10 = *(a2 + 104);
  if (v10 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v11 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v11;
  *(a1 + 256) = &unk_1EF1BC4E0;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 396) = *(a2 + 396);
  operator new[]();
}

void sub_183708BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 104) = v10;
  sub_18369F2FC(&a9);
  v14 = *v12;
  if (*v12)
  {
    *(v9 + 80) = v14;
    operator delete(v14);
    v15 = *v11;
    if (!*v11)
    {
LABEL_3:
      v16 = *(v9 + 24);
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v15 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 56) = v15;
  operator delete(v15);
  v16 = *(v9 + 24);
  if (!v16)
  {
LABEL_4:
    sub_18369F0F0(v9);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_18369F0F0(v9);
  _Unwind_Resume(a1);
}

void *sub_183708CF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_183708DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_18369F28C(&a9);
  _Unwind_Resume(a1);
}

void sub_183708E04(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1836D58DC();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_1836E0FD4(v8, *v5, v5[1], (v5[1] - *v5) >> 3);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_1836E0FD4(v8, *v18, v18[1], (v18[1] - *v18) >> 3);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_183708CF8(a1, (v5 + v16), a3, v15);
}

char *sub_183709070(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

BOOL sub_1837091CC(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 != *a1)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 1.79769313e308;
    do
    {
      if (*(*a1 + 8 * v4) < v6)
      {
        v6 = *(*a1 + 8 * v4);
      }

      v4 += 2;
    }

    while (v4 < v5);
    v7 = *a2;
    v8 = a2[1];
    v9 = v8 - *a2;
    if (v8 != *a2)
    {
      goto LABEL_7;
    }

    return v6 < 1.79769313e308;
  }

  v6 = 1.79769313e308;
  v7 = *a2;
  v14 = a2[1];
  v9 = v14 - *a2;
  if (v14 == *a2)
  {
    return v6 < 1.79769313e308;
  }

LABEL_7:
  v10 = 0;
  v11 = v9 >> 3;
  v12 = 1.79769313e308;
  do
  {
    if (*(v7 + 8 * v10) < v12)
    {
      v12 = *(v7 + 8 * v10);
    }

    v10 += 2;
  }

  while (v10 < v11);
  return v6 < v12;
}

void sub_183709268(void *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  while (2)
  {
    v9 = a2 - 3;
    v178 = a2 - 4;
    v179 = a2 - 1;
    v180 = a2 - 9;
    v182 = a2 - 6;
    v184 = a2;
    v177 = a2 - 7;
    v10 = a1;
    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = v184;
        v13 = v184 - v10;
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v184 - v10) >> 3);
        v15 = v14 - 2;
        if (v14 > 2)
        {
          switch(v14)
          {
            case 3:
              v118 = (*a3)((v10 + 24), v10);
              v119 = (*a3)(v9, (v10 + 24));
              if (v118)
              {
                v121 = (v10 + 16);
                v120 = *v10;
                if (v119)
                {
                  *v10 = *(v184 - 3);
                  *(v184 - 3) = v120;
                  v122 = *(v10 + 8);
                  *(v10 + 8) = *(v184 - 2);
                }

                else
                {
                  v121 = (v10 + 40);
                  v173 = *(v10 + 40);
                  v174 = *(v10 + 8);
                  *v10 = *(v10 + 24);
                  *(v10 + 16) = v173;
                  *(v10 + 24) = v120;
                  *(v10 + 32) = v174;
                  if (!(*a3)(v9, (v10 + 24)))
                  {
                    return;
                  }

                  v175 = *(v10 + 24);
                  *(v10 + 24) = *(v184 - 3);
                  *(v184 - 3) = v175;
                  v122 = *(v10 + 32);
                  *(v10 + 32) = *(v184 - 2);
                }

                *(v184 - 2) = v122;
              }

              else
              {
                if (!v119)
                {
                  return;
                }

                v163 = *(v10 + 24);
                *(v10 + 24) = *(v184 - 3);
                *(v184 - 3) = v163;
                v164 = *(v10 + 32);
                *(v10 + 32) = *(v184 - 2);
                *(v184 - 2) = v164;
                v165 = *(v10 + 40);
                v179 = (v10 + 40);
                *(v10 + 40) = *(v184 - 1);
                *(v184 - 1) = v165;
                if (!(*a3)((v10 + 24), v10))
                {
                  return;
                }

                v166 = *v10;
                *v10 = *(v10 + 24);
                *(v10 + 24) = v166;
                v121 = (v10 + 16);
              }

              v176 = *v121;
              *v121 = *v179;
              *v179 = v176;
              return;
            case 4:

              sub_18370A4A8(v10, (v10 + 24), (v10 + 48), v9, a3);
              return;
            case 5:

              sub_18370A6F8(v10, (v10 + 24), (v10 + 48), (v10 + 72), v9, a3);
              return;
          }
        }

        else
        {
          if (v14 < 2)
          {
            return;
          }

          if (v14 == 2)
          {
            if ((*a3)(v9, v10))
            {
              v115 = *v10;
              *v10 = *(v184 - 3);
              *(v184 - 3) = v115;
              v116 = *(v10 + 8);
              *(v10 + 8) = *(v184 - 2);
              *(v184 - 2) = v116;
              v117 = *(v10 + 16);
              *(v10 + 16) = *(v184 - 1);
              *(v184 - 1) = v117;
            }

            return;
          }
        }

        v186 = v10;
        if (v13 <= 575)
        {
          if (a5)
          {
            if (v10 != v184)
            {
              v123 = (v10 + 24);
              if ((v10 + 24) != v184)
              {
                v124 = 0;
                v125 = v10;
                do
                {
                  v128 = v123;
                  if ((*a3)(v123, v125))
                  {
                    v129 = 0;
                    v187 = *v128;
                    v188 = v125[5];
                    *v128 = 0;
                    v128[1] = 0;
                    v128[2] = 0;
                    v130 = v124;
                    do
                    {
                      v131 = v11 + v130;
                      if (v129)
                      {
                        *(v131 + 4) = v129;
                        operator delete(v129);
                        *(v131 + 3) = 0;
                        *(v131 + 4) = 0;
                        *(v131 + 5) = 0;
                      }

                      *(v131 + 24) = *v131;
                      *(v131 + 5) = *(v131 + 2);
                      *(v131 + 1) = 0;
                      *(v131 + 2) = 0;
                      *v131 = 0;
                      if (!v130)
                      {
                        v126 = (v10 + 8);
                        v127 = v10;
                        goto LABEL_130;
                      }

                      v132 = (*a3)(&v187, (v10 + v130 - 24));
                      v129 = *v131;
                      v130 -= 24;
                      v11 = v10;
                    }

                    while ((v132 & 1) != 0);
                    v133 = v10 + v130;
                    v126 = (v10 + v130 + 32);
                    v127 = (v133 + 24);
                    if (v129)
                    {
                      *(v133 + 32) = v129;
                      operator delete(v129);
                      *v127 = 0;
                      v127[1] = 0;
                      v127[2] = 0;
                    }

LABEL_130:
                    *v127 = v187;
                    *v126 = *(&v187 + 1);
                    v127[2] = v188;
                    v11 = v10;
                  }

                  v123 = v128 + 3;
                  v124 += 24;
                  v125 = v128;
                }

                while (v128 + 3 != v184);
              }
            }
          }

          else if (v10 != v184)
          {
            v167 = (v10 + 24);
            if ((v10 + 24) != v184)
            {
              v168 = v10 - 24;
              do
              {
                v169 = v167;
                if ((*a3)(v167, v11))
                {
                  v170 = 0;
                  v187 = *v169;
                  v188 = v11[5];
                  *v169 = 0;
                  v169[1] = 0;
                  v169[2] = 0;
                  v171 = v168;
                  do
                  {
                    if (v170)
                    {
                      *(v171 + 56) = v170;
                      operator delete(v170);
                      *(v171 + 48) = 0;
                      *(v171 + 56) = 0;
                      *(v171 + 64) = 0;
                    }

                    *(v171 + 48) = *(v171 + 24);
                    *(v171 + 64) = *(v171 + 40);
                    *(v171 + 32) = 0;
                    *(v171 + 40) = 0;
                    *(v171 + 24) = 0;
                    v172 = (*a3)(&v187, v171);
                    v170 = *(v171 + 24);
                    v171 -= 24;
                  }

                  while ((v172 & 1) != 0);
                  if (v170)
                  {
                    *(v171 + 56) = v170;
                    operator delete(v170);
                    *(v171 + 48) = 0;
                    *(v171 + 56) = 0;
                    *(v171 + 64) = 0;
                  }

                  *(v171 + 48) = v187;
                  *(v171 + 64) = v188;
                }

                v167 = v169 + 3;
                v168 += 24;
                v11 = v169;
              }

              while (v169 + 3 != v184);
            }
          }

          return;
        }

        if (!a4)
        {
          if (v10 != v184)
          {
            v134 = v15 >> 1;
            v135 = v15 >> 1;
            do
            {
              v136 = v135;
              if (v134 >= v135)
              {
                v137 = (2 * v135) | 1;
                v138 = &v11[3 * v137];
                if (2 * v135 + 2 < v14 && (*a3)(v138, v138 + 3))
                {
                  v138 += 3;
                  v137 = 2 * v136 + 2;
                }

                v11 = v186;
                v139 = &v186[3 * v136];
                if (((*a3)(v138, v139) & 1) == 0)
                {
                  v140 = 0;
                  v187 = *v139;
                  v188 = v139[2];
                  *v139 = 0;
                  v139[1] = 0;
                  v139[2] = 0;
                  while (1)
                  {
                    v141 = v138;
                    if (v140)
                    {
                      v139[1] = v140;
                      operator delete(v140);
                      *v139 = 0;
                      v139[1] = 0;
                      v139[2] = 0;
                    }

                    *v139 = *v138;
                    v139[2] = v138[2];
                    *v138 = 0;
                    v138[1] = 0;
                    v138[2] = 0;
                    if (v134 < v137)
                    {
                      break;
                    }

                    v142 = v11;
                    v143 = (2 * v137) | 1;
                    v138 = &v142[3 * v143];
                    v137 = 2 * v137 + 2;
                    if (v137 >= v14)
                    {
                      v137 = v143;
                    }

                    else if ((*a3)(&v142[3 * v143], v138 + 3))
                    {
                      v138 += 3;
                    }

                    else
                    {
                      v137 = v143;
                    }

                    v144 = (*a3)(v138, &v187);
                    v140 = *v141;
                    v139 = v141;
                    v11 = v186;
                    if (v144)
                    {
                      if (v140)
                      {
                        v141[1] = v140;
                        operator delete(v140);
                        *v141 = 0;
                        v141[1] = 0;
                        v141[2] = 0;
                      }

                      break;
                    }
                  }

                  *v141 = v187;
                  v141[2] = v188;
                }
              }

              v135 = v136 - 1;
            }

            while (v136);
            v145 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
            v146 = v184;
            do
            {
              if (v145 >= 2)
              {
                v148 = 0;
                v183 = v186[1];
                v185 = *v186;
                v181 = v186[2];
                v186[1] = 0;
                v186[2] = 0;
                v149 = v186;
                *v186 = 0;
                do
                {
                  v150 = v149;
                  v151 = &v149[3 * v148];
                  v149 = v151 + 3;
                  v152 = 2 * v148;
                  v148 = (2 * v148) | 1;
                  v153 = v152 + 2;
                  if (v152 + 2 < v145)
                  {
                    v154 = v151 + 6;
                    if ((*a3)(v151 + 3, v151 + 6))
                    {
                      v149 = v154;
                      v148 = v153;
                    }

                    v155 = *v150;
                    if (*v150)
                    {
                      v150[1] = v155;
                      operator delete(v155);
                      *v150 = 0;
                      v150[1] = 0;
                      v150[2] = 0;
                    }
                  }

                  *v150 = *v149;
                  v150[2] = v149[2];
                  *v149 = 0;
                  v149[1] = 0;
                  v149[2] = 0;
                }

                while (v148 <= ((v145 - 2) >> 1));
                if (v149 == v146 - 3)
                {
                  *v149 = v185;
                  v149[1] = v183;
                  v149[2] = v181;
                }

                else
                {
                  v156 = *(v146 - 1);
                  *v149 = *(v146 - 3);
                  v149[2] = v156;
                  *(v146 - 3) = v185;
                  *(v146 - 2) = v183;
                  *(v146 - 1) = v181;
                  v157 = v149 - v186 + 24;
                  if (v157 >= 25)
                  {
                    v158 = (-2 - 0x5555555555555555 * (v157 >> 3)) >> 1;
                    v159 = &v186[3 * v158];
                    if ((*a3)(v159, v149))
                    {
                      v160 = 0;
                      v187 = *v149;
                      v188 = v149[2];
                      *v149 = 0;
                      v149[1] = 0;
                      v149[2] = 0;
                      while (1)
                      {
                        v161 = v159;
                        if (v160)
                        {
                          v149[1] = v160;
                          operator delete(v160);
                          *v149 = 0;
                          v149[1] = 0;
                          v149[2] = 0;
                        }

                        *v149 = *v159;
                        v149[2] = v159[2];
                        *v159 = 0;
                        v159[1] = 0;
                        v159[2] = 0;
                        if (!v158)
                        {
                          break;
                        }

                        v158 = (v158 - 1) >> 1;
                        v159 = &v186[3 * v158];
                        v162 = (*a3)(v159, &v187);
                        v160 = *v161;
                        v149 = v161;
                        if ((v162 & 1) == 0)
                        {
                          if (v160)
                          {
                            v161[1] = v160;
                            operator delete(v160);
                            *v161 = 0;
                            v161[1] = 0;
                            v161[2] = 0;
                          }

                          break;
                        }
                      }

                      *v161 = v187;
                      v161[2] = v188;
                    }
                  }
                }
              }

              v146 -= 3;
            }

            while (v145-- > 2);
          }

          return;
        }

        v16 = v14 >> 1;
        v17 = (v10 + 24 * v16);
        v18 = *a3;
        if (v13 >= 0xC01)
        {
          v19 = v18(&v11[3 * v16], v11);
          v20 = (*a3)(v9, &v11[3 * v16]);
          if (v19)
          {
            v22 = v11 + 2;
            v21 = *v11;
            if (v20)
            {
              *v11 = *(v184 - 3);
              *(v184 - 3) = v21;
              v23 = v11[1];
              v11[1] = *(v184 - 2);
            }

            else
            {
              v22 = v17 + 2;
              v39 = v17[2];
              v40 = *(v11 + 1);
              *v11 = *v17;
              *v17 = v21;
              v11[2] = v39;
              *(v17 + 1) = v40;
              if (!(*a3)(v9, &v11[3 * v16]))
              {
                goto LABEL_28;
              }

              v41 = *v17;
              *v17 = *(v184 - 3);
              *(v184 - 3) = v41;
              v23 = v17[1];
              v17[1] = *(v184 - 2);
            }

            *(v184 - 2) = v23;
            v32 = v179;
          }

          else
          {
            if (!v20 || (v29 = *v17, *v17 = *(v184 - 3), *(v184 - 3) = v29, v30 = v17[1], v17[1] = *(v184 - 2), *(v184 - 2) = v30, v32 = v17 + 2, v31 = v17[2], v17[2] = *(v184 - 1), *(v184 - 1) = v31, !(*a3)(v17, v186)))
            {
LABEL_28:
              v43 = &v186[3 * v16 - 3];
              v44 = (*a3)(v43, v186 + 3);
              v45 = (*a3)(v182, v43);
              if (v44)
              {
                v46 = v186[3];
                if (v45)
                {
                  v47 = v186 + 5;
                  v48 = v184;
                  v186[3] = *(v184 - 6);
                  *(v184 - 6) = v46;
                  v49 = v186[4];
                  v186[4] = *(v184 - 5);
                }

                else
                {
                  v186[3] = *v43;
                  *v43 = v46;
                  v59 = v186[4];
                  v186[4] = v186[3 * v16 - 2];
                  v186[3 * v16 - 2] = v59;
                  v47 = &v186[3 * v16 - 1];
                  v60 = v186[5];
                  v186[5] = *v47;
                  *v47 = v60;
                  if (!(*a3)(v182, v43))
                  {
                    goto LABEL_41;
                  }

                  v61 = *v43;
                  v48 = v184;
                  *v43 = *(v184 - 6);
                  *(v184 - 6) = v61;
                  v49 = v186[3 * v16 - 2];
                  v186[3 * v16 - 2] = *(v184 - 5);
                }

                *(v48 - 5) = v49;
                v53 = v178;
              }

              else
              {
                if (!v45 || (v50 = *v43, *v43 = *(v184 - 6), *(v184 - 6) = v50, v51 = v186[3 * v16 - 2], v186[3 * v16 - 2] = *(v184 - 5), *(v184 - 5) = v51, v53 = &v186[3 * v16 - 1], v52 = *v53, *v53 = *(v184 - 4), *(v184 - 4) = v52, !(*a3)(v43, v186 + 3)))
                {
LABEL_41:
                  v63 = &v186[3 * v16 + 3];
                  v64 = (*a3)(v63, v186 + 6);
                  v65 = (*a3)(v180, v63);
                  if (v64)
                  {
                    v66 = v186[6];
                    if (v65)
                    {
                      v67 = v186 + 8;
                      v68 = v184;
                      v186[6] = *(v184 - 9);
                      *(v184 - 9) = v66;
                      v69 = v186[7];
                      v186[7] = *(v184 - 8);
                    }

                    else
                    {
                      v186[6] = *v63;
                      *v63 = v66;
                      v76 = v186[7];
                      v186[7] = v63[1];
                      v63[1] = v76;
                      v67 = v63 + 2;
                      v77 = v186[8];
                      v186[8] = v63[2];
                      v63[2] = v77;
                      if (!(*a3)(v180, v63))
                      {
                        goto LABEL_51;
                      }

                      v78 = *v63;
                      v68 = v184;
                      *v63 = *(v184 - 9);
                      *(v184 - 9) = v78;
                      v69 = v63[1];
                      v63[1] = *(v184 - 8);
                    }

                    *(v68 - 8) = v69;
                    v73 = v177;
                  }

                  else
                  {
                    if (!v65 || (v70 = *v63, *v63 = *(v184 - 9), *(v184 - 9) = v70, v71 = v63[1], v63[1] = *(v184 - 8), *(v184 - 8) = v71, v73 = v63 + 2, v72 = v63[2], v63[2] = *(v184 - 7), *(v184 - 7) = v72, !(*a3)(v63, v186 + 6)))
                    {
LABEL_51:
                      v80 = (*a3)(v17, v43);
                      v81 = (*a3)(v63, v17);
                      if (v80)
                      {
                        v82 = *v43;
                        v83 = v186;
                        if (v81)
                        {
                          v84 = v43[1];
                          *v43 = *v63;
                          *v63 = v82;
                          v63[1] = v84;
                          v85 = v63 + 2;
                          v86 = v43 + 2;
                        }

                        else
                        {
                          v90 = *v17;
                          v91 = v17[2];
                          *v17 = v82;
                          v92 = *(v43 + 1);
                          *v43 = v90;
                          v43[2] = v91;
                          *(v17 + 1) = v92;
                          if (!(*a3)(v63, v17))
                          {
LABEL_60:
                            v95 = *v83;
                            *v83 = *v17;
                            v27 = (v83 + 1);
                            *v17 = v95;
                            v38 = v17 + 2;
                            v12 = v184;
                            goto LABEL_61;
                          }

                          v93 = *v17;
                          *v17 = *v63;
                          *v63 = v93;
                          v86 = v17 + 2;
                          v85 = v63 + 2;
                        }
                      }

                      else
                      {
                        v83 = v186;
                        if (!v81)
                        {
                          goto LABEL_60;
                        }

                        v87 = *v17;
                        *v17 = *v63;
                        *v63 = v87;
                        v85 = v17 + 2;
                        v88 = v17[2];
                        v17[2] = v63[2];
                        v63[2] = v88;
                        if (!(*a3)(v17, v43))
                        {
                          goto LABEL_60;
                        }

                        v89 = *v43;
                        *v43 = *v17;
                        v86 = v43 + 2;
                        *v17 = v89;
                      }

                      v94 = *v86;
                      *v86 = *v85;
                      *v85 = v94;
                      goto LABEL_60;
                    }

                    v74 = v186[6];
                    v186[6] = *v63;
                    *v63 = v74;
                    v75 = v186[7];
                    v186[7] = v63[1];
                    v63[1] = v75;
                    v67 = v186 + 8;
                  }

                  v79 = *v67;
                  *v67 = *v73;
                  *v73 = v79;
                  goto LABEL_51;
                }

                v54 = v186[3];
                v186[3] = *v43;
                *v43 = v54;
                v55 = v186[4];
                v186[4] = v186[3 * v16 - 2];
                v186[3 * v16 - 2] = v55;
                v47 = v186 + 5;
              }

              v62 = *v47;
              *v47 = *v53;
              *v53 = v62;
              goto LABEL_41;
            }

            v33 = *v186;
            *v186 = *v17;
            v22 = v186 + 2;
            *v17 = v33;
          }

          v42 = *v22;
          *v22 = *v32;
          *v32 = v42;
          goto LABEL_28;
        }

        v24 = v18(v11, &v11[3 * v16]);
        v25 = (*a3)(v9, v11);
        if (v24)
        {
          v27 = v17 + 2;
          v26 = *v17;
          if (v25)
          {
            *v17 = *(v184 - 3);
            *(v184 - 3) = v26;
            v28 = v17[1];
            v17[1] = *(v184 - 2);
LABEL_36:
            *(v184 - 2) = v28;
            v38 = v179;
            goto LABEL_61;
          }

          v27 = v11 + 2;
          v56 = v11[2];
          v57 = *(v17 + 1);
          *v17 = *v11;
          *v11 = v26;
          v17[2] = v56;
          *(v11 + 1) = v57;
          if ((*a3)(v9, v11))
          {
            v58 = *v186;
            *v186 = *(v184 - 3);
            *(v184 - 3) = v58;
            v28 = v186[1];
            v186[1] = *(v184 - 2);
            goto LABEL_36;
          }
        }

        else if (v25)
        {
          v34 = *v186;
          *v186 = *(v184 - 3);
          *(v184 - 3) = v34;
          v35 = v186[1];
          v186[1] = *(v184 - 2);
          *(v184 - 2) = v35;
          v36 = v186[2];
          v186[2] = *(v184 - 1);
          *(v184 - 1) = v36;
          if ((*a3)())
          {
            v37 = *v17;
            *v17 = *v186;
            *v186 = v37;
            v27 = v17 + 2;
            v38 = v186 + 2;
LABEL_61:
            v96 = *v27;
            *v27 = *v38;
            *v38 = v96;
          }
        }

        --a4;
        a1 = v186;
        if (a5 & 1) != 0 || ((*a3)(v186 - 3, v186))
        {
          break;
        }

        v187 = *v186;
        v188 = v186[2];
        *v186 = 0;
        v186[1] = 0;
        v186[2] = 0;
        if ((*a3)(&v187, v9))
        {
          v10 = v186;
          do
          {
            v10 += 24;
          }

          while (((*a3)(&v187, v10) & 1) == 0);
        }

        else
        {
          v107 = v186 + 3;
          do
          {
            v10 = v107;
            if (v107 >= v12)
            {
              break;
            }

            v108 = (*a3)(&v187, v107);
            v107 = (v10 + 24);
          }

          while (!v108);
        }

        v109 = v12;
        if (v10 < v12)
        {
          v109 = v12;
          do
          {
            v109 -= 3;
          }

          while (((*a3)(&v187, v109) & 1) != 0);
        }

        while (v10 < v109)
        {
          v110 = *v10;
          *v10 = *v109;
          *v109 = v110;
          v111 = *(v10 + 8);
          *(v10 + 8) = v109[1];
          v109[1] = v111;
          v112 = *(v10 + 16);
          *(v10 + 16) = v109[2];
          v109[2] = v112;
          do
          {
            v10 += 24;
          }

          while (!(*a3)(&v187, v10));
          do
          {
            v109 -= 3;
          }

          while (((*a3)(&v187, v109) & 1) != 0);
        }

        v113 = *v186;
        if ((v10 - 24) == v186)
        {
          if (!v113)
          {
            goto LABEL_111;
          }

          *(v10 - 16) = v113;
          operator delete(v113);
        }

        else
        {
          if (v113)
          {
            v186[1] = v113;
            operator delete(v113);
            *v186 = 0;
            v186[1] = 0;
            v186[2] = 0;
          }

          *v186 = *(v10 - 24);
          v186[2] = *(v10 - 8);
        }

        *(v10 - 24) = 0;
        *(v10 - 16) = 0;
        *(v10 - 8) = 0;
LABEL_111:
        a5 = 0;
        *(v10 - 24) = v187;
        *(v10 - 8) = v188;
      }

      v97 = 0;
      v187 = *v186;
      v188 = v186[2];
      *v186 = 0;
      v186[1] = 0;
      v186[2] = 0;
      do
      {
        v98 = (*a3)(&v186[v97 + 3], &v187);
        v97 += 3;
      }

      while ((v98 & 1) != 0);
      v99 = &v186[v97];
      v100 = v12;
      if (v97 == 3)
      {
        v100 = v12;
        do
        {
          if (v99 >= v100)
          {
            break;
          }

          v100 -= 3;
        }

        while (((*a3)(v100, &v187) & 1) == 0);
      }

      else
      {
        do
        {
          v100 -= 3;
        }

        while (!(*a3)(v100, &v187));
      }

      v10 = &v186[v97];
      if (v99 < v100)
      {
        v101 = v100;
        do
        {
          v102 = *v10;
          *v10 = *v101;
          *v101 = v102;
          v103 = *(v10 + 8);
          *(v10 + 8) = v101[1];
          v101[1] = v103;
          v104 = *(v10 + 16);
          *(v10 + 16) = v101[2];
          v101[2] = v104;
          do
          {
            v10 += 24;
          }

          while (((*a3)(v10, &v187) & 1) != 0);
          do
          {
            v101 -= 3;
          }

          while (!(*a3)(v101, &v187));
        }

        while (v10 < v101);
      }

      v105 = *v186;
      if ((v10 - 24) == v186)
      {
        if (!v105)
        {
          goto LABEL_85;
        }

        *(v10 - 16) = v105;
        operator delete(v105);
      }

      else
      {
        if (v105)
        {
          v186[1] = v105;
          operator delete(v105);
          *v186 = 0;
          v186[1] = 0;
          v186[2] = 0;
        }

        *v186 = *(v10 - 24);
        v186[2] = *(v10 - 8);
      }

      *(v10 - 24) = 0;
      *(v10 - 16) = 0;
      *(v10 - 8) = 0;
LABEL_85:
      *(v10 - 24) = v187;
      *(v10 - 8) = v188;
      if (v99 < v100)
      {
        goto LABEL_88;
      }

      v106 = sub_18370A854(v186, (v10 - 24), a3);
      if (sub_18370A854(v10, v184, a3))
      {
        break;
      }

      if (!v106)
      {
LABEL_88:
        sub_183709268(v186, v10 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    a2 = (v10 - 24);
    if (!v106)
    {
      continue;
    }

    break;
  }
}