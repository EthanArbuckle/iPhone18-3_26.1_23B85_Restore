void sub_18374D1F4(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  if ((objc_msgSend_strokeAttributes(v14, v5, v6, v7, v8, v9) & 4) != 0)
  {
    objc_msgSend_addIndex_(*(a1 + 32), v10, a3, v11, v12, v13);
  }
}

void sub_18374D264(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, a3, v6, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v10, v13, v9, v11, v12);
}

void sub_18374D3C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18374D960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  v36 = v29;
  v37 = v28;

  _Unwind_Resume(a1);
}

id sub_18374E1D8(void *a1, void *a2, void *a3)
{
  v235 = *MEMORY[0x1E69E9840];
  v208 = a2;
  v212 = a3;
  v214 = a1;
  if (a1)
  {
    v210 = objc_msgSend_string(MEMORY[0x1E696AD60], v5, v6, v7, v8, v9);
    v230 = 0u;
    v231 = 0u;
    v228 = 0u;
    v229 = 0u;
    obj = objc_msgSend_locales(a1, v10, v11, v12, v13, v14);
    v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v228, v234, 16, v16);
    if (!v202)
    {
      goto LABEL_50;
    }

    v203 = *v229;
    while (1)
    {
      for (i = 0; i != v202; ++i)
      {
        if (*v229 != v203)
        {
          objc_enumerationMutation(obj);
        }

        v215 = *(*(&v228 + 1) + 8 * i);
        v204 = objc_msgSend_localeIdentifier(v215, v17, v18, v19, v20, v21);
        objc_msgSend_appendFormat_(v210, v22, @"== %@ ==\n", v23, v24, v25, v204);
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v31 = objc_msgSend_strokeGroupingResult(v214, v26, v27, v28, v29, v30);
        v207 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v31, v32, 0, 1, v33, v34);

        v211 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v35, &v224, v233, 16, v36);
        if (v211)
        {
          v209 = *v225;
          do
          {
            v217 = 0;
            do
            {
              if (*v225 != v209)
              {
                objc_enumerationMutation(v207);
              }

              v42 = *(*(&v224 + 1) + 8 * v217);
              v43 = objc_msgSend_uniqueIdentifier(v42, v37, v38, v39, v40, v41);
              v218 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v214, v44, v43, v45, v46, v47);
              v53 = objc_msgSend_uniqueIdentifier(v42, v48, v49, v50, v51, v52);
              v216 = objc_msgSend_textCorrectionResultForStrokeGroupIdentifier_(v214, v54, v53, v55, v56, v57);
              if (v218)
              {
                v63 = objc_msgSend_recognitionResultsByLocale(v218, v58, v59, v60, v61, v62);
                v68 = objc_msgSend_objectForKeyedSubscript_(v63, v64, v215, v65, v66, v67);

                v74 = objc_msgSend_errorsByLocale(v218, v69, v70, v71, v72, v73);
                v219 = objc_msgSend_objectForKeyedSubscript_(v74, v75, v215, v76, v77, v78);
              }

              else
              {
                if (!v216)
                {
                  v219 = 0;
                  v68 = 0;
                  goto LABEL_17;
                }

                v79 = objc_msgSend_textCorrectionResult(v216, v58, v59, v60, v61, v62);
                v68 = objc_msgSend_textResult(v79, v80, v81, v82, v83, v84);

                v74 = objc_msgSend_textCorrectionResult(v216, v85, v86, v87, v88, v89);
                v219 = objc_msgSend_error(v74, v90, v91, v92, v93, v94);
              }

LABEL_17:
              v100 = objc_msgSend_string(MEMORY[0x1E696AD60], v58, v59, v60, v61, v62);
              if (!v212 || (v212[2](v212, v42, v215), (v101 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                v102 = MEMORY[0x1E696AEC0];
                v103 = objc_msgSend_uniqueIdentifier(v42, v95, v96, v97, v98, v99);
                v101 = objc_msgSend_stringWithFormat_(v102, v104, @"GroupID %ld", v105, v106, v107, v103);
              }

              objc_msgSend_appendFormat_(v100, v95, @"%@: {\n  ", v97, v98, v99, v101);
              v213 = v101;
              if (v68)
              {
                v113 = objc_msgSend_transcriptionPaths(v68, v108, v109, v110, v111, v112);
                v119 = objc_msgSend_count(v113, v114, v115, v116, v117, v118) == 0;

                if (v119)
                {
                  objc_msgSend_appendFormat_(v100, v120, @"%@", v122, v123, v124, @"<NO RESULT>\n");
                }

                v222 = 0u;
                v223 = 0u;
                v220 = 0u;
                v221 = 0u;
                v125 = objc_msgSend_transcriptionPaths(v68, v120, v121, v122, v123, v124);
                v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v126, &v220, v232, 16, v127);
                if (v133)
                {
                  v134 = *v221;
                  do
                  {
                    for (j = 0; j != v133; ++j)
                    {
                      if (*v221 != v134)
                      {
                        objc_enumerationMutation(v125);
                      }

                      v136 = *(*(&v220 + 1) + 8 * j);
                      v137 = objc_msgSend_transcriptionPaths(v68, v128, v129, v130, v131, v132);
                      v143 = objc_msgSend_lastObject(v137, v138, v139, v140, v141, v142);

                      v149 = objc_msgSend_length(v136, v144, v145, v146, v147, v148);
                      v151 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v68, v150, v136, 0, v149, 0);
                      v156 = v151;
                      v157 = @", ";
                      if (v136 == v143)
                      {
                        v157 = @"\n";
                      }

                      objc_msgSend_appendFormat_(v100, v152, @"%@%@", v153, v154, v155, v151, v157);
                    }

                    v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v128, &v220, v232, 16, v132);
                  }

                  while (v133);
                }
              }

              else
              {
                if (!v219)
                {
                  objc_msgSend_appendFormat_(v100, v108, @"%@", v110, v111, v112, @"<NO RESULT>\n");
                  goto LABEL_36;
                }

                v125 = objc_msgSend_localizedDescription(v219, v108, v109, v110, v111, v112);
                objc_msgSend_appendFormat_(v100, v158, @"<ERROR: %@>\n", v159, v160, v161, v125);
              }

LABEL_36:
              objc_msgSend_appendFormat_(v100, v162, @"},\n", v163, v164, v165);
              if (v68)
              {
                v171 = objc_msgSend_transcriptionPaths(v68, v166, v167, v168, v169, v170);
                v177 = objc_msgSend_count(v171, v172, v173, v174, v175, v176) == 0;

                if (!v177)
                {
                  v179 = objc_msgSend_recognizerGenerationIdentifier(v68, v166, v178, v168, v169, v170);
                  v184 = @"Gen 1";
                  if (v179 == 2)
                  {
                    v184 = @"Gen 2";
                  }

                  objc_msgSend_appendFormat_(v100, v180, @"Recognizer Generation: %@\n", v181, v182, v183, v184);
                  v185 = @"None";
                  objc_msgSend_languageFitnessForLocale_(v218, v186, v215, v187, v188, v189);
                  if (v194 > -3.40282347e38)
                  {
                    v185 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v190, @"(%.3f, %.3f)", v191, v192, v193, *&v194, v195);
                  }

                  objc_msgSend_appendFormat_(v100, v190, @"Language Fitness: %@\n\n", v191, v192, v193, v185);
                }
              }

              objc_msgSend_appendString_(v210, v166, v100, v168, v169, v170);
              objc_msgSend_addObject_(v208, v196, v100, v197, v198, v199);

              ++v217;
            }

            while (v217 != v211);
            v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v37, &v224, v233, 16, v41);
            v211 = v200;
          }

          while (v200);
        }
      }

      v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v228, v234, 16, v21);
      if (!v202)
      {
LABEL_50:

        goto LABEL_51;
      }
    }
  }

  v210 = 0;
LABEL_51:

  return v210;
}

id sub_18374EAA4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v12 = objc_msgSend_uniqueIdentifier(v4, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_localeIdentifier(v5, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_stringWithFormat_(v6, v19, @"GroupID %ld, %@", v20, v21, v22, v12, v18);

  return v23;
}

void sub_18374F480(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v55 = v3;
  v10 = objc_msgSend_strokeIndexes(v3, v5, v6, v7, v8, v9);
  objc_msgSend_addIndexes_(v4, v11, v10, v12, v13, v14);

  v20 = objc_msgSend_string(v55, v15, v16, v17, v18, v19);
  if (sub_1837C14B0(v20))
  {
  }

  else
  {
    v26 = objc_msgSend_strokeIndexes(v55, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_count(v26, v27, v28, v29, v30, v31);

    if (!v32)
    {
      v38 = objc_msgSend_string(v55, v33, v34, v35, v36, v37);
      if (objc_msgSend_isEqualToString_(v38, v39, @"=", v40, v41, v42))
      {

        v48 = a1[5];
      }

      else
      {
        v49 = objc_msgSend_string(v55, v43, v44, v45, v46, v47);
        isEqualToString = objc_msgSend_isEqualToString_(v49, v50, @"\\hline", v51, v52, v53);

        if (isEqualToString)
        {
          v48 = a1[5];
        }

        else
        {
          v48 = a1[6];
        }
      }

      *(*(v48 + 8) + 24) = 1;
    }
  }
}

void sub_183751C88(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_18375384C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_183753F78()
{
  v0 = qword_1EA84CE68;
  qword_1EA84CE68 = &unk_1EF1EC478;
}

void sub_183753FF8()
{
  v0 = qword_1EA84CE78;
  qword_1EA84CE78 = &unk_1EF1EC490;
}

void sub_1837541B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_183754B78(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_183754B94(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_183754BAC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_class();
  v10 = objc_msgSend_integerValue(v3, v5, v6, v7, v8, v9);
  isStrokeClassificationTextOrMath = objc_msgSend_isStrokeClassificationTextOrMath_(v4, v11, v10, v12, v13, v14);

  return isStrokeClassificationTextOrMath;
}

void sub_183756368(void **a1, void *a2, void *a3)
{
  v79 = a2;
  v5 = a3;
  v11 = objc_msgSend_strokeClassificationsByStrokeIdentifier(a1[4], v6, v7, v8, v9, v10);
  v16 = objc_msgSend_objectForKey_(v11, v12, v79, v13, v14, v15);

  v22 = objc_msgSend_integerValue(v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_integerValue(v5, v23, v24, v25, v26, v27);
  v29 = v28;
  if (!v16)
  {
    v45 = objc_opt_class();
    isStrokeClassificationTextOrMath = objc_msgSend_isStrokeClassificationTextOrMath_(v45, v46, v29, v47, v48, v49);
    v44 = 6;
    if (isStrokeClassificationTextOrMath)
    {
      v44 = 5;
    }

    goto LABEL_8;
  }

  if (v28 == v22)
  {
    goto LABEL_9;
  }

  v30 = objc_opt_class();
  if (objc_msgSend_isStrokeClassificationTextOrMath_(v30, v31, v29, v32, v33, v34))
  {
    v35 = objc_opt_class();
    if (objc_msgSend_isStrokeClassificationTextOrMath_(v35, v36, v22, v37, v38, v39))
    {
      v44 = 7;
LABEL_8:
      objc_msgSend_addObject_(a1[v44], v40, v79, v41, v42, v43);
      goto LABEL_9;
    }
  }

  v51 = objc_opt_class();
  if ((objc_msgSend_isStrokeClassificationTextOrMath_(v51, v52, v22, v53, v54, v55) & 1) == 0)
  {
    v56 = objc_opt_class();
    if (!objc_msgSend_isStrokeClassificationTextOrMath_(v56, v57, v29, v58, v59, v60))
    {
      v44 = 8;
      goto LABEL_8;
    }
  }

  v61 = objc_opt_class();
  if (objc_msgSend_isStrokeClassificationTextOrMath_(v61, v62, v29, v63, v64, v65))
  {
    objc_msgSend_addObject_(a1[5], v66, v79, v67, v68, v69);
    v44 = 9;
    goto LABEL_8;
  }

  v70 = objc_opt_class();
  if (objc_msgSend_isStrokeClassificationTextOrMath_(v70, v71, v22, v72, v73, v74))
  {
    objc_msgSend_addObject_(a1[10], v75, v79, v76, v77, v78);
    v44 = 6;
    goto LABEL_8;
  }

LABEL_9:
}

id sub_183757A64(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      objc_msgSend_textStrokeGroups(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      objc_msgSend_strokeGroups(a1, a2, a3, a4, a5, a6);
    }
    v6 = ;
    v12 = objc_msgSend_allObjects(v6, v7, v8, v9, v10, v11);
    v17 = objc_msgSend_sortedArrayUsingComparator_(v12, v13, &unk_1EF1BC870, v14, v15, v16);

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t sub_183757B30(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_msgSend_bounds(v4, v6, v7, v8, v9, v10);
  MinY = CGRectGetMinY(v56);
  objc_msgSend_bounds(v4, v12, v13, v14, v15, v16);
  MidY = CGRectGetMidY(v57);
  objc_msgSend_bounds(v4, v18, v19, v20, v21, v22);
  MaxY = CGRectGetMaxY(v58);
  objc_msgSend_bounds(v4, v24, v25, v26, v27, v28);
  MinX = CGRectGetMinX(v59);
  objc_msgSend_bounds(v5, v30, v31, v32, v33, v34);
  v35 = CGRectGetMinY(v60);
  objc_msgSend_bounds(v5, v36, v37, v38, v39, v40);
  v41 = CGRectGetMidY(v61);
  objc_msgSend_bounds(v5, v42, v43, v44, v45, v46);
  v47 = CGRectGetMaxY(v62);
  objc_msgSend_bounds(v5, v48, v49, v50, v51, v52);
  v53 = CGRectGetMinX(v63);
  v54 = 1;
  if (MidY <= v47 && MinY <= v41)
  {
    v54 = -1;
    if (v41 <= MaxY && v35 <= MidY)
    {
      if (MinX > v53)
      {
        v54 = 1;
      }

      else
      {
        v54 = -1;
      }
    }
  }

  return v54;
}

id sub_183757CE4(id a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v91 = a2;
  v6 = a1;
  v98 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_58;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v7 = objc_msgSend_textStrokeGroups(a1, a2, a3, a4, a5, a6);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v93, v97, 16, v9);
  if (!v15)
  {

    v59 = 0;
    v61 = 0;
    v18 = 0;
    v17 = 0;
LABEL_27:
    v60 = 0;
    v16 = v59;
    v59 = v61;
    goto LABEL_28;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *v94;
  do
  {
    v21 = 0;
    do
    {
      if (*v94 != v20)
      {
        objc_enumerationMutation(v7);
      }

      v22 = *(*(&v93 + 1) + 8 * v21);
      objc_msgSend_averageWritingOrientation(v22, v10, v11, v12, v13, v14);
      v30 = atan2(v24, v23);
      v31 = fabs(v30);
      if (v31 <= 0.785398163)
      {
        v32 = objc_msgSend_strokeIdentifiers(v22, v25, v26, v27, v28, v29);
        v19 += objc_msgSend_count(v32, v38, v39, v40, v41, v42);
      }

      else if (v31 <= 2.35619449)
      {
        if (v30 >= 0.0)
        {
          v32 = objc_msgSend_strokeIdentifiers(v22, v25, v26, v27, v28, v29);
          v18 += objc_msgSend_count(v32, v48, v49, v50, v51, v52);
        }

        else
        {
          v32 = objc_msgSend_strokeIdentifiers(v22, v25, v26, v27, v28, v29);
          v17 += objc_msgSend_count(v32, v43, v44, v45, v46, v47);
        }
      }

      else
      {
        v32 = objc_msgSend_strokeIdentifiers(v22, v25, v26, v27, v28, v29);
        v16 += objc_msgSend_count(v32, v33, v34, v35, v36, v37);
      }

      ++v21;
    }

    while (v15 != v21);
    v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v93, v97, 16, v14);
    v15 = v53;
  }

  while (v53);

  if (v19 < 0)
  {
    v59 = -1;
  }

  else
  {
    v59 = v19;
  }

  if (v16 <= v59)
  {
    if (v16 < 0)
    {
      v61 = -1;
    }

    else
    {
      v61 = v16;
    }

    if (v19 < 0)
    {
      v60 = 0;
      v16 = v59;
      v59 = -1;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v60 = 1;
LABEL_28:
  if (v17 <= v59)
  {
    v62 = v59;
  }

  else
  {
    v62 = v17;
  }

  if (v16 < 0)
  {
    v62 = v59;
  }

  if (v17 <= v16)
  {
    v63 = v16;
  }

  else
  {
    v60 = 2;
    v63 = v17;
  }

  if (v17 > v16)
  {
    v62 = v16;
  }

  if (v18 <= v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = v18;
  }

  if (v63 >= 0)
  {
    v62 = v64;
  }

  if (v18 <= v63)
  {
    v65 = v60;
  }

  else
  {
    v65 = 3;
  }

  if (v18 <= v63)
  {
    v66 = v62;
  }

  else
  {
    v66 = v63;
  }

  if (v66 >= 1)
  {
    if (v18 > v63)
    {
      v63 = v18;
    }

    if (v63 / v66 < 1.2)
    {
      v67 = MEMORY[0x1E695DF58];
      v68 = objc_msgSend_preferredLanguages(MEMORY[0x1E695DF58], v54, v55, v56, v57, v58);
      v74 = objc_msgSend_firstObject(v68, v69, v70, v71, v72, v73);
      objc_msgSend_lineDirectionForLanguage_(v67, v75, v74, v76, v77, v78);

      v65 = 0;
    }
  }

  if (v91)
  {
    objc_msgSend_textStrokeGroups(v6, v54, v55, v56, v57, v58);
  }

  else
  {
    objc_msgSend_strokeGroups(v6, v54, v55, v56, v57, v58);
  }
  v79 = ;
  v85 = objc_msgSend_allObjects(v79, v80, v81, v82, v83, v84);
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = sub_1837580E4;
  v92[3] = &unk_1E6DDD528;
  v92[4] = v65;
  v6 = objc_msgSend_sortedArrayUsingComparator_(v85, v86, v92, v87, v88, v89);

LABEL_58:

  return v6;
}

uint64_t sub_1837580E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = a3;
  v12 = *(a1 + 32);
  v13 = 1;
  switch(v12)
  {
    case 3:
      goto LABEL_7;
    case 2:
      v13 = -1;
LABEL_7:
      objc_msgSend_bounds(v5, v6, v7, v8, v9, v10);
      MinX = CGRectGetMinX(v146);
      objc_msgSend_bounds(v5, v50, v51, v52, v53, v54);
      MidX = CGRectGetMidX(v147);
      objc_msgSend_bounds(v5, v55, v56, v57, v58, v59);
      MaxX = CGRectGetMaxX(v148);
      objc_msgSend_bounds(v11, v60, v61, v62, v63, v64);
      MinY = CGRectGetMinX(v149);
      objc_msgSend_bounds(v11, v65, v66, v67, v68, v69);
      MidY = CGRectGetMidX(v150);
      objc_msgSend_bounds(v11, v70, v71, v72, v73, v74);
      MaxY = CGRectGetMaxX(v151);
      goto LABEL_8;
    case 1:
      v13 = -1;
      break;
  }

  objc_msgSend_bounds(v5, v6, v7, v8, v9, v10);
  MinX = CGRectGetMinY(v140);
  objc_msgSend_bounds(v5, v15, v16, v17, v18, v19);
  MidX = CGRectGetMidY(v141);
  objc_msgSend_bounds(v5, v21, v22, v23, v24, v25);
  MaxX = CGRectGetMaxY(v142);
  objc_msgSend_bounds(v11, v27, v28, v29, v30, v31);
  MinY = CGRectGetMinY(v143);
  objc_msgSend_bounds(v11, v33, v34, v35, v36, v37);
  MidY = CGRectGetMidY(v144);
  objc_msgSend_bounds(v11, v39, v40, v41, v42, v43);
  MaxY = CGRectGetMaxY(v145);
LABEL_8:
  v75 = 1;
  if (MidX <= MaxY && MinX <= MidY)
  {
    v75 = -1;
    if (MidY <= MaxX && MinY <= MidX)
    {
      objc_msgSend_firstStrokeOrigin(v5, v44, v45, v46, v47, v48);
      v77 = v76;
      objc_msgSend_firstStrokeOrigin(v5, v78, v79, v80, v81, v82);
      v84 = v83;
      objc_msgSend_firstStrokeOrigin(v5, v85, v86, v87, v88, v89);
      v91 = v90;
      objc_msgSend_firstStrokeOrigin(v5, v92, v93, v94, v95, v96);
      v98 = v97;
      objc_msgSend_firstStrokeOrigin(v11, v99, v100, v101, v102, v103);
      v105 = v104;
      objc_msgSend_firstStrokeOrigin(v11, v106, v107, v108, v109, v110);
      v112 = v111;
      objc_msgSend_firstStrokeOrigin(v11, v113, v114, v115, v116, v117);
      v119 = v118;
      objc_msgSend_firstStrokeOrigin(v11, v120, v121, v122, v123, v124);
      v130 = (v91 * v98 + v77 * v84) * v13;
      v132 = (v119 * v131 + v105 * v112) * v13;
      if (v130 >= v132)
      {
        if (v130 <= v132)
        {
          v133 = objc_msgSend_uniqueIdentifier(v5, v125, v126, v127, v128, v129);
          if (v133 < objc_msgSend_uniqueIdentifier(v11, v134, v135, v136, v137, v138))
          {
            v75 = -1;
          }

          else
          {
            v75 = 1;
          }
        }

        else
        {
          v75 = 1;
        }
      }
    }
  }

  return v75;
}

id sub_1837583CC(id a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    v9 = objc_alloc_init(CHCTLD);
    if (a2)
    {
      objc_msgSend_textStrokeGroups(v2, v4, v5, v6, v7, v8);
    }

    else
    {
      objc_msgSend_strokeGroups(v2, v4, v5, v6, v7, v8);
    }
    v10 = ;
    v16 = objc_msgSend_allObjects(v10, v11, v12, v13, v14, v15);

    v2 = objc_msgSend_orderStrokeGroups_(v9, v17, v16, v18, v19, v20);
  }

  return v2;
}

void sub_183758634(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1837586F0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18375870C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1837588E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_183758DA4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_183758DC0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_183758DD8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v9 = objc_msgSend_classification(v2, v4, v5, v6, v7, v8);
  isStrokeClassificationTextOrMath = objc_msgSend_isStrokeClassificationTextOrMath_(v3, v10, v9, v11, v12, v13);

  return isStrokeClassificationTextOrMath;
}

void sub_183758EC8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_183758EE4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_183758EFC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v9 = objc_msgSend_classification(v2, v4, v5, v6, v7, v8);
  LODWORD(v3) = objc_msgSend_isStrokeClassificationTextOrMath_(v3, v10, v9, v11, v12, v13);

  return v3 ^ 1;
}

uint64_t sub_183759C44(void **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_objectForKeyedSubscript_(a1[4], v7, v5, v8, v9, v10);
  objc_msgSend_ch_CGRectValue(v11, v12, v13, v14, v15, v16);
  v145 = v18;
  v146 = v17;
  rect = v19;
  v21 = v20;

  v26 = objc_msgSend_objectForKeyedSubscript_(a1[5], v22, v5, v23, v24, v25);
  objc_msgSend_doubleValue(v26, v27, v28, v29, v30, v31);
  v139 = v32;

  v37 = objc_msgSend_objectForKeyedSubscript_(a1[6], v33, v5, v34, v35, v36);
  objc_msgSend_doubleValue(v37, v38, v39, v40, v41, v42);
  v138 = v43;

  v48 = objc_msgSend_objectForKeyedSubscript_(a1[4], v44, v6, v45, v46, v47);
  objc_msgSend_ch_CGRectValue(v48, v49, v50, v51, v52, v53);
  v142 = v55;
  v143 = v54;
  v57 = v56;
  v59 = v58;

  v64 = objc_msgSend_objectForKeyedSubscript_(a1[5], v60, v6, v61, v62, v63);
  objc_msgSend_doubleValue(v64, v65, v66, v67, v68, v69);
  v137 = v70;

  v75 = objc_msgSend_objectForKeyedSubscript_(a1[6], v71, v6, v72, v73, v74);
  objc_msgSend_doubleValue(v75, v76, v77, v78, v79, v80);
  v136 = v81;

  v82 = v5;
  v83 = v6;
  objc_opt_self();
  v89 = objc_msgSend_lastObject(v82, v84, v85, v86, v87, v88);
  objc_msgSend_bounds(v89, v90, v91, v92, v93, v94);
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;

  v108 = objc_msgSend_firstObject(v83, v103, v104, v105, v106, v107);
  objc_msgSend_bounds(v108, v109, v110, v111, v112, v113);
  v141 = v114;

  v147.origin.x = v96;
  v147.origin.y = v98;
  v147.size.width = v100;
  v147.size.height = v102;
  MaxX = CGRectGetMaxX(v147);
  v148.size.width = v145;
  v148.origin.x = v146;
  v148.origin.y = v21;
  v148.size.height = rect;
  v115 = CGRectGetMaxX(v148);
  v149.origin.x = v57;
  v149.origin.y = v143;
  v149.size.width = v59;
  v149.size.height = v142;
  v116 = CGRectGetMaxX(v149);
  v150.origin.x = v57;
  v150.origin.y = v143;
  v150.size.width = v59;
  v150.size.height = v142;
  v117 = CGRectGetMaxX(v150);
  v151.size.width = v145;
  v151.origin.x = v146;
  v151.origin.y = v21;
  v151.size.height = rect;
  v118 = CGRectGetMaxX(v151);
  v119 = v21;
  v125 = objc_msgSend_count(v83, v120, v121, v122, v123, v124);
  v126 = v145 + 1.0e-10;
  v127 = fmin(v115, v116) - fmax(v146, v57);
  v128 = fmax(v127 / (v145 + 1.0e-10), v127 / (v59 + 1.0e-10));
  if (v125 != 1)
  {
    v129 = 0;
    if (v57 >= v146)
    {
      goto LABEL_7;
    }

LABEL_12:
    if (v128 > 0.33)
    {
      v129 = 1;
    }

    if (v128 <= 0.75)
    {
      goto LABEL_8;
    }

LABEL_15:
    v131 = 1;
    goto LABEL_16;
  }

  v129 = (v59 + 1.0e-10) / v126 < 0.5;
  if (v127 <= 0.0)
  {
    v129 = 0;
  }

  if (v128 > 0.2)
  {
    v129 = 1;
  }

  if (v57 < v146)
  {
    goto LABEL_12;
  }

LABEL_7:
  v129 = 0;
  if (v128 > 0.75)
  {
    goto LABEL_15;
  }

LABEL_8:
  v130 = v117 > v118;
  if (v128 <= 0.5)
  {
    v130 = 0;
  }

  v131 = v129 || v130;
LABEL_16:
  v152.origin.x = v57;
  v152.size.height = v142;
  v152.origin.y = v143;
  v152.size.width = v59;
  MinY = CGRectGetMinY(v152);
  v153.size.width = v145;
  v153.origin.x = v146;
  v153.origin.y = v119;
  v153.size.height = rect;
  MaxY = CGRectGetMaxY(v153);
  if ((v141 - MaxX) / v126 >= 0.35)
  {
    v134 = 0;
  }

  else if (MinY - MaxY < (v138 + v139 + v137 + v136) * 0.5)
  {
    v134 = v131;
  }

  else
  {
    v134 = 0;
  }

  return v134;
}

void sub_18375AFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_sync_exit(v20);

  _Unwind_Resume(a1);
}

void sub_18375B278(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18375B32C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18375B754(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

id sub_18375B7F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

id sub_18375B824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

void sub_18375BA1C(uint64_t a1, void *a2, void *a3)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_msgSend_getValue_(v6, v7, v29, v8, v9, v10);
  v30[0] = @"rawScore";
  v16 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v11, v12, v13, v14, v15, v29[0]);
  v30[1] = @"combinedScore";
  v31[0] = v16;
  v22 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, v19, v20, v21, v29[1]);
  v31[1] = v22;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v31, v30, 2, v24);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v26, v25, v5, v27, v28);
}

void sub_18375C354(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"rawScore", v8, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13, v14, v15, v16);
  v18 = v17;

  v23 = objc_msgSend_objectForKeyedSubscript_(v6, v19, @"combinedScore", v20, v21, v22);
  objc_msgSend_doubleValue(v23, v24, v25, v26, v27, v28);
  v30 = v29;

  v38[0] = v18;
  v38[1] = v30;
  v34 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v31, v38, "{?=dd}", v32, v33);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v35, v34, v5, v36, v37);
}

void sub_18375C480(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_msgSend_doubleValue(v6, v7, v8, v9, v10, v11);
  v20[0] = v12;
  v20[1] = 0;
  v16 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v13, v20, "{?=dd}", v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v17, v16, v5, v18, v19);
}

uint64_t sub_18375CDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v7, a2, v8, v9, v10);
  v17 = objc_msgSend_firstObject(v11, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_objectForKeyedSubscript_(v6, v18, v17, v19, v20, v21);
  objc_msgSend_getValue_(v22, v23, v51, v24, v25, v26);

  v27 = *(a1 + 32);
  v32 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v28, v5, v29, v30, v31);
  v38 = objc_msgSend_firstObject(v32, v33, v34, v35, v36, v37);
  v43 = objc_msgSend_objectForKeyedSubscript_(v27, v39, v38, v40, v41, v42);
  objc_msgSend_getValue_(v43, v44, v50, v45, v46, v47);

  if (v51[0] - v50[0] <= 0.00499999989)
  {
    v48 = v51[0] - v50[0] < -0.00499999989;
  }

  else
  {
    v48 = -1;
  }

  return v48;
}

uint64_t sub_18375D2A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, a2, v7, v8, v9);
  objc_msgSend_getValue_(v10, v11, v28, v12, v13, v14);

  v19 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v15, v5, v16, v17, v18);
  objc_msgSend_getValue_(v19, v20, v27, v21, v22, v23);

  v24 = v28[0] - v27[0];
  if (v24 <= 0.005)
  {
    v25 = v24 < -0.005;
  }

  else
  {
    v25 = -1;
  }

  return v25;
}

uint64_t sub_18375D3A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, a2, v7, v8, v9);
  objc_msgSend_getValue_(v10, v11, &v28, v12, v13, v14);

  v19 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v15, v5, v16, v17, v18);
  objc_msgSend_getValue_(v19, v20, &v26, v21, v22, v23);

  if (v28 - v26 > 0.1)
  {
    goto LABEL_2;
  }

  if (v28 - v26 < -0.1)
  {
LABEL_4:
    v24 = 1;
    goto LABEL_5;
  }

  if (v29 - v27 <= 0.00499999989)
  {
    if (v29 - v27 >= -0.00499999989)
    {
      v24 = 0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_2:
  v24 = -1;
LABEL_5:

  return v24;
}

uint64_t sub_18375D704(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18375D7F4;
  v13[3] = &unk_1E6DDD638;
  v6 = v4;
  v14 = v6;
  v11 = objc_msgSend_indexOfObjectPassingTest_(v5, v7, v13, v8, v9, v10);

  return v11;
}

uint64_t sub_18375D7F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_languageCode(a2, a2, a3, a4, a5, a6);
  hasPrefix = objc_msgSend_hasPrefix_(v7, v8, *(a1 + 32), v9, v10, v11);

  return hasPrefix;
}

unint64_t sub_18375E52C(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
  LODWORD(v7) = objc_msgSend_containsObject_(v7, v9, v8, v10, v11, v12);

  return (a3 >> 29) & 1 | v7;
}

id sub_18375E59C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v51 = a3;
  v50 = a4;
  objc_opt_self();
  v48 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v6;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v59, v63, 16, v13);
  if (v18)
  {
    v19 = *v60;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v60 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v59 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKey_(v51, v14, v21, v15, v16, v17);
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 0;
        v28 = objc_msgSend_topTranscription(v22, v23, v24, v25, v26, v27);
        v34 = objc_msgSend_topTranscription(v22, v29, v30, v31, v32, v33);
        v40 = objc_msgSend_length(v34, v35, v36, v37, v38, v39);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = sub_18375E9A4;
        v52[3] = &unk_1E6DDD6A8;
        v54 = &v55;
        v53 = v50;
        objc_msgSend_enumerateCodepointsInRange_usingBlock_(v28, v41, 0, v40, v52, v42);

        if (*(v56 + 24) == 1)
        {
          objc_msgSend_addObject_(v48, v43, v21, v44, v45, v46);
        }

        _Block_object_dispose(&v55, 8);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v59, v63, 16, v17);
    }

    while (v18);
  }

  return v48;
}

uint64_t sub_18375E8B8(uint64_t a1, int a2, unint64_t a3)
{
  if ((a2 & 0xFFFFFFFD) == 0x14)
  {
    return 1;
  }

  else
  {
    return (a3 >> 29) & 1;
  }
}

uint64_t sub_18375E8CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, a2, v7, v8, v9);
  objc_msgSend_getValue_(v10, v11, v28, v12, v13, v14);

  v19 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v15, v5, v16, v17, v18);
  objc_msgSend_getValue_(v19, v20, &v26, v21, v22, v23);

  if (v29 <= v27)
  {
    v24 = v29 < v27;
  }

  else
  {
    v24 = -1;
  }

  return v24;
}

uint64_t sub_18375E9A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  objc_msgSend_scriptCodeForCodepoint_(CHTextScriptUtilities, a2, a2, a4, a5, a6);
  objc_msgSend_characterType_(CHCharacterSetRules, v9, a2, v10, v11, v12);
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_18375EAA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_183760130(uint64_t a1, void *a2)
{
  v51 = a2;
  v13 = objc_msgSend_string(v51, v3, v4, v5, v6, v7);
  if (*(a1 + 40) == 1)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_msgSend_string(v51, v8, v9, v10, v11, v12);
    v20 = objc_msgSend_stringWithFormat_(v14, v16, @"\\text{%@}", v17, v18, v19, v15);

    v13 = v20;
  }

  v21 = [CHTokenizedMathResultToken alloc];
  v27 = objc_msgSend_strokeIndexes(v51, v22, v23, v24, v25, v26);
  objc_msgSend_recognitionScore(v51, v28, v29, v30, v31, v32);
  v34 = v33;
  objc_msgSend_bounds(v51, v35, v36, v37, v38, v39);
  v46 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v21, v40, v13, v27, 0x1000000, v41, v34, v42, v43, v44, v45);

  objc_msgSend_addObject_(*(a1 + 32), v47, v46, v48, v49, v50);
}

void sub_183760814(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_183760A6C(uint64_t a1)
{
  sub_18373F424(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_18373F424(*a1, v2);
  }

  return a1;
}

id sub_183761FE4(int a1)
{
  if (qword_1EA84DC48 == -1)
  {
    v2 = qword_1EA84DC50[a1];
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v2 = qword_1EA84DC50[a1];
  }

  return v2;
}

void sub_183762068()
{
  v0 = os_log_create("com.apple.corehandwriting", "General");
  v1 = qword_1EA84DC50[0];
  qword_1EA84DC50[0] = v0;

  v2 = os_log_create("com.apple.corehandwriting", "Recognizer");
  v3 = qword_1EA84DC58;
  qword_1EA84DC58 = v2;

  v4 = os_log_create("com.apple.corehandwriting", "RecognitionSession");
  v5 = qword_1EA84DC60;
  qword_1EA84DC60 = v4;

  v6 = os_log_create("com.apple.corehandwriting", "StrokeGrouping");
  v7 = qword_1EA84DC68;
  qword_1EA84DC68 = v6;

  v8 = os_log_create("com.apple.corehandwriting", "ClutterFiltering");
  v9 = qword_1EA84DC78;
  qword_1EA84DC78 = v8;

  v10 = os_log_create("com.apple.corehandwriting", "RemoteRecognizer");
  v11 = qword_1EA84DC70;
  qword_1EA84DC70 = v10;

  v12 = os_log_create("com.apple.corehandwriting", "TextCorrectionRecognizer");
  v13 = qword_1EA84DC80;
  qword_1EA84DC80 = v12;

  v14 = os_log_create("com.apple.corehandwriting", "CoreHandwritingSignPosts");
  v15 = qword_1EA84DC88;
  qword_1EA84DC88 = v14;

  v16 = os_log_create("com.apple.corehandwriting", "Synthesizer");
  v17 = qword_1EA84DC98;
  qword_1EA84DC98 = v16;

  v18 = os_log_create("com.apple.corehandwriting", "TextTransform");
  v19 = qword_1EA84DCA0;
  qword_1EA84DCA0 = v18;

  v20 = os_log_create("com.apple.corehandwriting", "LineWrapping");
  v21 = qword_1EA84DCA8;
  qword_1EA84DCA8 = v20;

  v22 = os_log_create("com.apple.corehandwriting", "StrokeClassification");
  v23 = qword_1EA84DCB0;
  qword_1EA84DCB0 = v22;

  v24 = os_log_create("com.apple.corehandwriting", "DocumentLayoutAnalysis");
  v25 = qword_1EA84DCB8;
  qword_1EA84DCB8 = v24;

  v26 = os_log_create("com.apple.corehandwriting", "SessionTracker");
  v27 = qword_1EA84DCC0;
  qword_1EA84DCC0 = v26;
}

void sub_183762EF4()
{
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  JUMPOUT(0x183762EB4);
}

id sub_183763FC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18376408C;
  v13[3] = &unk_1E6DDD700;
  v13[4] = *(a1 + 32);
  v6 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(a2, a2, @", ", v13, a5, a6);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"  %@", v8, v9, v10, v6);

  return v11;
}

id sub_18376408C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v9 = v3;
  if (v2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_msgSend_string(v3, v4, v5, v6, v7, v8);
    v16 = objc_msgSend_stringWithFormat_(v10, v12, @"[%p %@", v13, v14, v15, v9, v11);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v9;
      objc_msgSend_recognitionScore(v17, v18, v19, v20, v21, v22);
      v24 = v23;
      objc_msgSend_combinedScore(v17, v25, v26, v27, v28, v29);
      v31 = v30;
      objc_msgSend_modelScore(v17, v32, v33, v34, v35, v36);
      v38 = v37;

      objc_msgSend_stringByAppendingFormat_(v16, v39, @" %.2f, %.2f, %.2f]", v40, v41, v42, v24, v31, v38);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v53 = objc_msgSend_stringByAppendingString_(v16, v43, @"]", v45, v46, v47);
        goto LABEL_8;
      }

      objc_msgSend_score(v9, v43, v44, v45, v46, v47);
      objc_msgSend_stringByAppendingFormat_(v16, v48, @" %.2f]", v49, v50, v51, v52, v56);
    }
    v53 = ;
LABEL_8:
    v54 = v53;

    goto LABEL_9;
  }

  v54 = 0;
LABEL_9:

  return v54;
}

void sub_1837642C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837642E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v30 = a2;
  v12 = objc_msgSend_count(v30, v7, v8, v9, v10, v11);
  if (v12 == *(a1 + 56))
  {
    v17 = *(a1 + 48);
    if (v17 >= v17 + v12)
    {
LABEL_6:
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }

    else
    {
      v18 = 0;
      while (1)
      {
        v19 = objc_msgSend_objectAtIndex_(v30, v13, v18, v14, v15, v16);
        v24 = objc_msgSend_objectAtIndex_(*(a1 + 32), v20, v17, v21, v22, v23);
        isEquivalentToToken = objc_msgSend_isEquivalentToToken_(v19, v25, v24, v26, v27, v28);

        if (!isEquivalentToToken)
        {
          break;
        }

        ++v18;
        if (++v17 >= *(a1 + 56) + *(a1 + 48))
        {
          goto LABEL_6;
        }
      }
    }
  }
}

void sub_1837644A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837644C0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_msgSend_firstObject(a2, a2, a3, a4, a5, a6);
  isEquivalentToToken = objc_msgSend_isEquivalentToToken_(v8, v9, *(a1 + 32), v10, v11, v12);

  if (isEquivalentToToken)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t sub_183765604(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v39, v44, 16, v7);
  v14 = 0.0;
  v15 = 0.0;
  if (v8)
  {
    v16 = v8;
    v17 = *v40;
    do
    {
      v18 = 0;
      do
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_combinedScore(*(*(&v39 + 1) + 8 * v18), v9, v10, v11, v12, v13);
        v15 = v15 + v19;
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v39, v44, 16, v13);
    }

    while (v16);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v5;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v35, v43, 16, v22);
  if (v23)
  {
    v29 = v23;
    v30 = *v36;
    v14 = 0.0;
    do
    {
      v31 = 0;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v20);
        }

        objc_msgSend_combinedScore(*(*(&v35 + 1) + 8 * v31), v24, v25, v26, v27, v28, v35);
        v14 = v14 + v32;
        ++v31;
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v24, &v35, v43, 16, v28);
    }

    while (v29);
  }

  if (v15 < v14)
  {
    v33 = -1;
  }

  else
  {
    v33 = v15 > v14;
  }

  return v33;
}

uint64_t sub_1837657CC(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v39, v44, 16, v7);
  v14 = 0.0;
  v15 = 0.0;
  if (v8)
  {
    v16 = v8;
    v17 = *v40;
    do
    {
      v18 = 0;
      do
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_score(*(*(&v39 + 1) + 8 * v18), v9, v10, v11, v12, v13);
        v15 = v15 + v19;
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v39, v44, 16, v13);
    }

    while (v16);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v5;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v35, v43, 16, v22);
  if (v23)
  {
    v29 = v23;
    v30 = *v36;
    v14 = 0.0;
    do
    {
      v31 = 0;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v20);
        }

        objc_msgSend_score(*(*(&v35 + 1) + 8 * v31), v24, v25, v26, v27, v28, v35);
        v14 = v14 + v32;
        ++v31;
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v24, &v35, v43, 16, v28);
    }

    while (v29);
  }

  if (v15 < v14)
  {
    v33 = -1;
  }

  else
  {
    v33 = v15 > v14;
  }

  return v33;
}

void sub_1837661DC(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC88;
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CHContextLookupQuery_atLocation", "", &v24, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "END CHContextLookupQuery_atLocation", &v24, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v11 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
LABEL_12:
    v17 = objc_msgSend_count(v5, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_length(v6, v18, v19, v20, v21, v22);
    v24 = 134218240;
    v25 = v17;
    v26 = 2048;
    v27 = v23;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEFAULT, "CHContextLookupQuery_atLocation returning nt strokes %ld, text transcription length %ld", &v24, 0x16u);
  }

LABEL_13:

  (*(*(a1 + 32) + 16))();
}

void sub_18376665C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC88;
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v45) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CHContextLookupQuery_withPath", "", &v45, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v45) = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "END CHContextLookupQuery_withPath", &v45, 2u);
  }

  v14 = [CHContextualTextResults alloc];
  v19 = objc_msgSend_initWithTextResults_(v14, v15, v9, v16, v17, v18);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v20 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
LABEL_12:
    v26 = objc_msgSend_count(v7, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_count(v8, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_textResults(v19, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_count(v38, v39, v40, v41, v42, v43);
    v45 = 134218496;
    v46 = v26;
    v47 = 2048;
    v48 = v32;
    v49 = 2048;
    v50 = v44;
    _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_DEFAULT, "CHContextLookupQuery_withPath returning coveredStrokes %ld, ntStrokes %ld, textResults %ld", &v45, 0x20u);
  }

LABEL_13:

  (*(*(a1 + 32) + 16))();
}

void sub_183766B58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC88;
  v11 = v10;
  v12 = *(a1 + 48);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v51) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CHContextLookupQuery_withSelectedStrokes", "", &v51, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v51) = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "END CHContextLookupQuery_withSelectedStrokes", &v51, 2u);
  }

  v14 = [CHContextualTextResults alloc];
  v19 = objc_msgSend_initWithTextResults_(v14, v15, v9, v16, v17, v18);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v20 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
LABEL_12:
    v26 = objc_msgSend_count(*(a1 + 32), v21, v22, v23, v24, v25);
    v32 = objc_msgSend_count(v7, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_count(v8, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_textResults(v19, v39, v40, v41, v42, v43);
    v50 = objc_msgSend_count(v44, v45, v46, v47, v48, v49);
    v51 = 134218752;
    v52 = v26;
    v53 = 2048;
    v54 = v32;
    v55 = 2048;
    v56 = v38;
    v57 = 2048;
    v58 = v50;
    _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_DEFAULT, "CHContextLookupQuery_withSelectedStrokes with %ld selected strokes returning coveredStrokes %ld, ntStrokes %ld, textResults %ld", &v51, 0x2Au);
  }

LABEL_13:

  (*(*(a1 + 40) + 16))();
}

void sub_183767054(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v90 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC88;
  v13 = v12;
  v14 = *(a1 + 48);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_END, v14, "CHContextLookupQuery_withPath", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v15 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_DEFAULT, "END CHContextLookupQuery_withPath", buf, 2u);
  }

  v21 = objc_msgSend_recognitionSession(*(a1 + 32), v16, v17, v18, v19, v20);
  v26 = objc_msgSend_structuredContextualTextResultsWithTextResults_(v21, v22, v10, v23, v24, v25);

  v32 = objc_msgSend_recognitionSession(*(a1 + 32), v27, v28, v29, v30, v31);
  v37 = objc_msgSend_structuredContextualTextResultsWithTextResults_(v32, v33, v11, v34, v35, v36);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v38 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v38 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
LABEL_12:
    v75 = objc_msgSend_count(v77, v39, v40, v41, v42, v43);
    v76 = a1;
    v49 = v9;
    v50 = objc_msgSend_count(v9, v44, v45, v46, v47, v48);
    v56 = objc_msgSend_count(v26, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_count(v10, v57, v58, v59, v60, v61);
    v68 = objc_msgSend_count(v37, v63, v64, v65, v66, v67);
    v74 = objc_msgSend_count(v11, v69, v70, v71, v72, v73);
    *buf = 134219264;
    v79 = v75;
    v80 = 2048;
    v81 = v50;
    v9 = v49;
    a1 = v76;
    v82 = 2048;
    v83 = v56;
    v84 = 2048;
    v85 = v62;
    v86 = 2048;
    v87 = v68;
    v88 = 2048;
    v89 = v74;
    _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_DEFAULT, "CHContextLookupQuery_withPath returning coveredStrokes %ld, ntStrokes %ld, textResults %ld (%ld unstructured), surroundingResults %ld (%ld unstructured)", buf, 0x3Eu);
  }

LABEL_13:

  (*(*(a1 + 40) + 16))();
}

void sub_1837675E4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v97 = *MEMORY[0x1E69E9840];
  v82 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC88;
  v13 = v12;
  v14 = *(a1 + 56);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_END, v14, "CHContextLookupQuery_withSelectedStrokes", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v15 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_DEFAULT, "END CHContextLookupQuery_withSelectedStrokes", buf, 2u);
  }

  v21 = objc_msgSend_recognitionSession(*(a1 + 32), v16, v17, v18, v19, v20);
  v26 = objc_msgSend_structuredContextualTextResultsWithTextResults_(v21, v22, v10, v23, v24, v25);

  v32 = objc_msgSend_recognitionSession(*(a1 + 32), v27, v28, v29, v30, v31);
  v37 = objc_msgSend_structuredContextualTextResultsWithTextResults_(v32, v33, v11, v34, v35, v36);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v38 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v38 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
LABEL_12:
    v81 = objc_msgSend_count(*(a1 + 40), v39, v40, v41, v42, v43);
    v80 = objc_msgSend_count(v82, v44, v45, v46, v47, v48);
    v79 = objc_msgSend_count(v9, v49, v50, v51, v52, v53);
    v59 = objc_msgSend_count(v26, v54, v55, v56, v57, v58);
    v65 = objc_msgSend_count(v10, v60, v61, v62, v63, v64);
    v71 = a1;
    v72 = objc_msgSend_count(v37, v66, v67, v68, v69, v70);
    v78 = objc_msgSend_count(v11, v73, v74, v75, v76, v77);
    *buf = 134219520;
    v84 = v81;
    v85 = 2048;
    v86 = v80;
    v87 = 2048;
    v88 = v79;
    v89 = 2048;
    v90 = v59;
    v91 = 2048;
    v92 = v65;
    v93 = 2048;
    v94 = v72;
    a1 = v71;
    v95 = 2048;
    v96 = v78;
    _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_DEFAULT, "CHContextLookupQuery_withSelectedStrokes with %ld selected strokes returning coveredStrokes %ld, ntStrokes %ld, textResults %ld (%ld unstructured), surroundingResults %ld (%ld unstructured)", buf, 0x48u);
  }

LABEL_13:

  (*(*(a1 + 48) + 16))();
}

void sub_183768000(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id sub_18376A0E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

id sub_18376A114(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%p", a4, a5, a6, a2);

  return v6;
}

__n128 sub_18376ADFC(__n128 *a1, __n128 *a2)
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

void sub_18376AE20(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18376AE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 + 3) >= 7)
  {
    if (a3 > -4)
    {
      operator new();
    }

    sub_18369761C();
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = v3[6];
  if (v4)
  {
    v3[7] = v4;
    operator delete(v4);
  }

  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
}

void sub_18376B0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18376B100(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  objc_msgSend_floatValue(v11, v5, v6, v7, v8, v9);
  *(*(*(*(a1 + 32) + 8) + 48) + 4 * a3) = v10;
}

void sub_18376BB9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18376BFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a16;
    if (!a16)
    {
LABEL_3:
      v23 = a19;
      if (!a19)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v22 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  v23 = a19;
  if (!a19)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v23);

  _Unwind_Resume(a1);
}

void sub_18376C38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_18376C77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18376CD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18376CE24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_UTF8String(@"zhja_ids_decomposition_mapping.json", a2, a3, a4, a5, a6);
  sub_1837A3290(v6, 0, __s);
  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v11 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v71 = v7;
  if (v7)
  {
    memcpy(&__dst, __s, v7);
  }

  *(&__dst + v11) = 0;
  if (v71 >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v8, &__dst, 4, v9, v10);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v8, __dst, 4, v9, v10);
  }
  v64 = ;
  v65 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v12, v64, v13, v14, v15);
  v18 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v16, v65, 1, 0, v17);
  v19 = MEMORY[0x1E695DF90];
  v25 = objc_msgSend_count(v18, v20, v21, v22, v23, v24);
  v30 = objc_msgSend_dictionaryWithCapacity_(v19, v26, v25, v27, v28, v29);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v36 = objc_msgSend_allKeys(v18, v31, v32, v33, v34, v35);
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v66, v72, 16, v38);
  if (v43)
  {
    v44 = *v67;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v67 != v44)
        {
          objc_enumerationMutation(v36);
        }

        v46 = *(*(&v66 + 1) + 8 * i);
        v47 = MEMORY[0x1E695DFD8];
        v48 = objc_msgSend_objectForKeyedSubscript_(v18, v39, v46, v40, v41, v42);
        v53 = objc_msgSend_setWithArray_(v47, v49, v48, v50, v51, v52);

        objc_msgSend_setObject_forKeyedSubscript_(v30, v54, v53, v46, v55, v56);
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v66, v72, 16, v42);
    }

    while (v43);
  }

  v62 = objc_msgSend_copy(v30, v57, v58, v59, v60, v61);
  v63 = qword_1EA84CE88;
  qword_1EA84CE88 = v62;

  if (v71 < 0)
  {
    operator delete(__dst);
  }
}

void sub_18376D0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_18376D26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18376D28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_18376D3A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_zhjaIDSMapping(CHSynthesisStyleSample, a2, a3, a4, a5, a6);
  v7 = objc_opt_new();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_18376D4A8;
  v20[3] = &unk_1E6DDD8F0;
  v8 = v7;
  v21 = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v9, v20, v10, v11, v12);
  v18 = objc_msgSend_copy(v8, v13, v14, v15, v16, v17);
  v19 = qword_1EA84CE98;
  qword_1EA84CE98 = v18;
}

void sub_18376D4A8(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  v11 = objc_msgSend_ch_latinVietCharacterSet(MEMORY[0x1E696AB08], v6, v7, v8, v9, v10);
  CodepointInString = objc_msgSend_firstCodepointInString(v27, v12, v13, v14, v15, v16);
  IsMember = objc_msgSend_longCharacterIsMember_(v11, v18, CodepointInString, v19, v20, v21);

  if ((IsMember & 1) == 0)
  {
    objc_msgSend_unionSet_(*(a1 + 32), v23, v5, v24, v25, v26);
  }
}

void sub_18376D908(uint64_t a1, void *a2)
{
  v19 = a2;
  v8 = objc_msgSend_zhjaIDSMapping(CHSynthesisStyleSample, v3, v4, v5, v6, v7);
  v13 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v19, v10, v11, v12);

  v18 = *(a1 + 32);
  if (v13)
  {
    objc_msgSend_unionSet_(v18, v14, v13, v15, v16, v17);
  }

  else
  {
    objc_msgSend_addObject_(v18, v14, v19, v15, v16, v17);
  }
}

void sub_18376D9E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1837A4260(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(*(a1 + 32), v7, v11, v8, v9, v10);
}

void sub_18376E180(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4, a5, a6);
  v11 = objc_msgSend_containerURLForSecurityApplicationGroupIdentifier_(v6, v7, @"group.com.apple.corehandwriting", v8, v9, v10);
  v12 = qword_1EA84CEA8;
  qword_1EA84CEA8 = v11;

  if (!qword_1EA84CEA8)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = @"group.com.apple.corehandwriting";
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "NSURL for group container %@ not found", &v15, 0xCu);
    }

    if (!qword_1EA84CEA8)
    {
      if (qword_1EA84DC48 == -1)
      {
        v14 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          return;
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

      v15 = 138412290;
      v16 = @"group.com.apple.corehandwriting";
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "NSURL for group container %@ not found", &v15, 0xCu);
      goto LABEL_10;
    }
  }
}

void sub_18376E564()
{
  v0 = qword_1EA84CEB8;
  qword_1EA84CEB8 = @"0.0.8";
}

void sub_18376E6A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_ch_mathCharSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v7 = qword_1EA84CEC8;
  qword_1EA84CEC8 = v6;
}

void sub_18376EA3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18376F918(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18376FBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_18376FBD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_18376FC70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = objc_msgSend_styles(*(a1 + 32), a2, a3, a4, a5, a6, 0);
  v13 = objc_msgSend_allValues(v7, v8, v9, v10, v11, v12);

  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v35, v39, 16, v15);
  if (v21)
  {
    v22 = *v36;
    do
    {
      v23 = 0;
      do
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v35 + 1) + 8 * v23);
        v25 = objc_msgSend_currentSamplingTimestep(*(a1 + 32), v16, v17, v18, v19, v20);
        objc_msgSend_shiftTimestepsByOffset_(v24, v26, v25, v27, v28, v29);
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v35, v39, 16, v20);
    }

    while (v21);
  }

  return objc_msgSend_setCurrentSamplingTimestep_(*(a1 + 32), v30, 0, v31, v32, v33);
}

void sub_18376FE78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v38 = objc_msgSend_transcription(*(a1 + 40), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_strokeIdentifiers(*(a1 + 40), v8, v9, v10, v11, v12);
  LODWORD(v7) = objc_msgSend_containsSampleWithTranscription_strokeIdentifiers_(v7, v14, v38, v13, v15, v16);

  if (v7)
  {
    v39 = objc_msgSend_styles(*(a1 + 32), v17, v18, v19, v20, v21);
    v27 = objc_msgSend_strokeIdentifiers(*(a1 + 40), v22, v23, v24, v25, v26);
    v32 = objc_msgSend_objectForKeyedSubscript_(v39, v28, v27, v29, v30, v31);
    objc_msgSend_incrementSamplingCount(v32, v33, v34, v35, v36, v37);
  }
}

void sub_1837708E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_183770970(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_copy(*(a1 + 32), a2, a3, a4, a5, a6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_183770A28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_hasInventoryChanged(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    objc_msgSend_removeStyleSamplesIfNeeded(*(a1 + 32), v7, v8, v9, v10, v11);
    objc_msgSend_resetCurrentSamplingTimestep(*(a1 + 32), v12, v13, v14, v15, v16);
    if (objc_msgSend_save(*(a1 + 32), v17, v18, v19, v20, v21))
    {
      objc_msgSend_setHasInventoryChanged_(*(a1 + 32), v22, 0, v23, v24, v25);
      v31 = objc_msgSend_now(MEMORY[0x1E695DF00], v26, v27, v28, v29, v30);
      objc_msgSend_setLastSavedDate_(*(a1 + 32), v32, v31, v33, v34, v35);

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v36 = qword_1EA84DC98;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v42 = objc_msgSend_lastSavedDate(*(a1 + 32), v37, v38, v39, v40, v41);
        v43 = 138412290;
        v44 = v42;
        _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_DEBUG, "style inventory last saved on: %@)", &v43, 0xCu);
      }
    }
  }
}

void sub_183770C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183770CB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_styles(*(a1 + 32), a2, a3, a4, a5, a6);
  v24 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *(a1 + 40), v9, v10, v11);

  v17 = v24;
  if (v24)
  {
    v18 = *(a1 + 48);
    v19 = objc_msgSend_transcription(v24, v12, v13, v14, v15, v16);
    *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_isEqualToString_(v18, v20, v19, v21, v22, v23);

    v17 = v24;
  }
}

void sub_183770E7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_styles(*(a1 + 32), a2, a3, a4, a5, a6);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *(a1 + 40), v9, v10, v11);

  *(*(*(a1 + 48) + 8) + 24) = v12 != 0;
}

void sub_183770FC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_styles(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_allValues(v7, v8, v9, v10, v11, v12);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1837710B0;
  v20[3] = &unk_1E6DDD990;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v21 = v14;
  v22 = v15;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v16, v20, v17, v18, v19);
}

void sub_1837710B0(uint64_t a1, void *a2)
{
  v18 = a2;
  v8 = objc_msgSend_strokeIdentifiers(v18, v3, v4, v5, v6, v7);
  v13 = objc_msgSend_intersectsSet_(v8, v9, *(a1 + 32), v10, v11, v12);

  if (v13)
  {
    objc_msgSend__unsafeRemoveSample_(*(a1 + 40), v14, v18, v15, v16, v17);
  }
}

uint64_t sub_183771244(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_styles(*(a1 + 32), a2, a3, a4, a5, a6);
  objc_msgSend_removeAllObjects(v7, v8, v9, v10, v11, v12);

  v18 = objc_msgSend_sampleCountByCharacter(*(a1 + 32), v13, v14, v15, v16, v17);
  objc_msgSend_removeAllObjects(v18, v19, v20, v21, v22, v23);

  v29 = objc_msgSend_supportsPersonalization(*(a1 + 32), v24, v25, v26, v27, v28);
  objc_msgSend_removeAllObjects(v29, v30, v31, v32, v33, v34);

  v40 = *(a1 + 32);

  return objc_msgSend_save(v40, v35, v36, v37, v38, v39);
}

void sub_183771A80(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16, v4);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend__unsafeAddSample_(*(a1 + 40), v5, *(*(&v12 + 1) + 8 * v11++), v6, v7, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v12, v16, 16, v8);
    }

    while (v9);
  }
}

void sub_183771DCC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_183771F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_183771F58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x1E695DFD8];
  v21 = objc_msgSend_sampleCountByCharacter(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_allKeys(v21, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_setWithArray_(v7, v14, v13, v15, v16, v17);
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

void sub_183772EA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_183773048(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4, a5, a6);
  v8 = MEMORY[0x1E695DF70];
  v14 = objc_msgSend_tokenColumnCount(*(a1 + 32), v9, v10, v11, v12, v13);
  v19 = objc_msgSend_arrayWithCapacity_(v8, v15, v14, v16, v17, v18);
  v20 = *(a1 + 32);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1837731E8;
  v39[3] = &unk_1E6DDD9B8;
  v40 = v20;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v41 = v21;
  v42 = v22;
  v23 = v7;
  v25 = *(a1 + 56);
  v24 = *(a1 + 64);
  v43 = v23;
  v46 = v24;
  v44 = v25;
  v26 = v19;
  v45 = v26;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v40, v27, v39, v28, v29, v30);
  objc_msgSend_removeSamplesContainingStrokeIdentifiers_(*(a1 + 48), v31, v23, v32, v33, v34);
  objc_msgSend_addSamplesWithArray_(*(a1 + 48), v35, v26, v36, v37, v38);
}

void sub_1837731E8(uint64_t a1, void *a2)
{
  v145 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_msgSend_isSingleTokenResult(*(a1 + 32), v4, v5, v6, v7, v8))
  {
    v19 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v9, *(a1 + 40), v11, v12, v13);
    goto LABEL_6;
  }

  v20 = objc_msgSend_strokeIndexes(v3, v9, v10, v11, v12, v13);
  if (!objc_msgSend_count(v20, v21, v22, v23, v24, v25))
  {

    goto LABEL_18;
  }

  v31 = objc_msgSend_strokeIndexes(v3, v26, v27, v28, v29, v30);
  Index = objc_msgSend_lastIndex(v31, v32, v33, v34, v35, v36);
  v43 = objc_msgSend_count(*(a1 + 40), v38, v39, v40, v41, v42);

  if (Index >= v43)
  {
LABEL_18:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v70 = qword_1EA84DC98;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v102 = objc_msgSend_strokeIndexes(v3, v97, v98, v99, v100, v101);
      v108 = objc_msgSend_string(v3, v103, v104, v105, v106, v107);
      v114 = objc_msgSend_count(*(a1 + 40), v109, v110, v111, v112, v113);
      v139 = 138412803;
      v140 = v102;
      v141 = 2117;
      v142 = v108;
      v143 = 2048;
      v144 = v114;
      _os_log_impl(&dword_18366B000, v70, OS_LOG_TYPE_ERROR, "Inventory data ingestion: token stroke indexes (%@) for string (%{sensitive}@) are not valid for strokeIdentifiers with count %ld", &v139, 0x20u);
    }

    v19 = 0;
    goto LABEL_28;
  }

  v49 = MEMORY[0x1E695DFD8];
  v50 = *(a1 + 40);
  v51 = objc_msgSend_strokeIndexes(v3, v44, v45, v46, v47, v48);
  v56 = objc_msgSend_objectsAtIndexes_(v50, v52, v51, v53, v54, v55);
  v19 = objc_msgSend_setWithArray_(v49, v57, v56, v58, v59, v60);

LABEL_6:
  v61 = *(a1 + 48);
  v62 = objc_msgSend_string(v3, v14, v15, v16, v17, v18);
  LODWORD(v61) = objc_msgSend_containsSampleWithTranscription_strokeIdentifiers_(v61, v63, v62, v19, v64, v65);

  if (v61)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v70 = qword_1EA84DC98;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      v76 = objc_msgSend_string(v3, v71, v72, v73, v74, v75);
      v139 = 138739971;
      v140 = v76;
      _os_log_impl(&dword_18366B000, v70, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: token already in the inventory. token string: %{sensitive}@", &v139, 0xCu);
    }

    goto LABEL_28;
  }

  objc_msgSend_unionSet_(*(a1 + 56), v66, v19, v67, v68, v69);
  if (objc_msgSend_shouldBypassGating(CHSynthesisStyleInventory, v77, v78, v79, v80, v81))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v85 = qword_1EA84DC98;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      v91 = objc_msgSend_string(v3, v86, v87, v88, v89, v90);
      v139 = 138739971;
      v140 = v91;
      _os_log_impl(&dword_18366B000, v85, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: bypassing gating for text token: %{sensitive}@", &v139, 0xCu);
    }

    goto LABEL_24;
  }

  if (objc_msgSend_isTokenAcceptable_script_(*(a1 + 48), v82, v3, *(a1 + 80), v83, v84))
  {
LABEL_24:
    isSingleTokenResult = objc_msgSend_isSingleTokenResult(*(a1 + 32), v92, v93, v94, v95, v96);
    v121 = *(a1 + 64);
    if (isSingleTokenResult)
    {
      v70 = v121;
    }

    else
    {
      v127 = objc_msgSend_strokeIndexes(v3, v116, v117, v118, v119, v120);
      v70 = objc_msgSend_drawingWithStrokesFromIndexSet_(v121, v128, v127, v129, v130, v131);
    }

    v132 = objc_msgSend_string(v3, v122, v123, v124, v125, v126);
    v134 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v133, v132, v70, *(a1 + 80), v19);

    objc_msgSend_addObject_(*(a1 + 72), v135, v134, v136, v137, v138);
LABEL_28:
  }
}

void sub_183773888(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_preferredTranscription(*(a1 + 32), a2, a3, a4, a5, a6);
  if (objc_msgSend_isTrivialTextTranscriptionAvailableForLatex_(CHTokenizedMathResult, v8, v7, v9, v10, v11))
  {
    v16 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v12, v7, v13, v14, v15);
    v21 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v17, *(a1 + 40), v18, v19, v20);
    if (objc_msgSend_containsSampleWithTranscription_strokeIdentifiers_(*(a1 + 48), v22, v16, v21, v23, v24))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v29 = qword_1EA84DC98;
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      v68 = 138739971;
      v69 = v16;
      v30 = "Inventory data ingestion: token already in the inventory. token string: %{sensitive}@";
      v31 = v29;
      v32 = 12;
    }

    else
    {
      objc_msgSend_removeSamplesContainingStrokeIdentifiers_(*(a1 + 48), v25, v21, v26, v27, v28);
      shouldBypassGating = objc_msgSend_shouldBypassGating(CHSynthesisStyleInventory, v33, v34, v35, v36, v37);
      if (shouldBypassGating)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v44 = qword_1EA84DC98;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v68 = 138739971;
          v69 = v16;
          _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: bypassing gating for math token: %{sensitive}@", &v68, 0xCu);
        }
      }

      objc_msgSend_score(*(a1 + 32), v38, v39, v40, v41, v42);
      if ((v50 >= 0.949999988) | shouldBypassGating & 1)
      {
        if ((objc_msgSend_length(v16, v45, v46, v47, v48, v49) > 2) | shouldBypassGating & 1)
        {
          v29 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v51, v16, *(a1 + 56), 1, v21);
          objc_msgSend_addSample_(*(a1 + 48), v52, v29, v53, v54, v55);
LABEL_30:

          goto LABEL_31;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v29 = qword_1EA84DC98;
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_30;
        }

        v67 = objc_msgSend_length(v16, v62, v63, v64, v65, v66);
        v68 = 134218499;
        v69 = v67;
        v70 = 2048;
        v71 = 3;
        v72 = 2117;
        v73 = v16;
        v30 = "Inventory data ingestion: rejecting math token due to length (%ld) smaller than %ld. token string: %{sensitive}@";
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v29 = qword_1EA84DC98;
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_30;
        }

        objc_msgSend_score(*(a1 + 32), v56, v57, v58, v59, v60);
        v68 = 134218499;
        v69 = v61;
        v70 = 2048;
        v71 = 0x3FEE666660000000;
        v72 = 2117;
        v73 = v16;
        v30 = "Inventory data ingestion: rejecting math token due to recognition score (%2.2f) smaller than threshold %2.2f. token string: %{sensitive}@";
      }

      v31 = v29;
      v32 = 32;
    }

    _os_log_impl(&dword_18366B000, v31, OS_LOG_TYPE_DEBUG, v30, &v68, v32);
    goto LABEL_30;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC98;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v68 = 138739971;
    v69 = v7;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: rejecting math token as it does not have trivial text transcription. token string: %{sensitive}@", &v68, 0xCu);
  }

LABEL_31:
}

void sub_183773DD8(id *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v2 = a1[4];
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v73, v78, 16, v4);
  if (v10)
  {
    v11 = *v74;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v74 != v11)
        {
          objc_enumerationMutation(v2);
        }

        v13 = *(*(&v73 + 1) + 8 * i);
        v14 = a1[5];
        v15 = objc_msgSend_transcription(v13, v5, v6, v7, v8, v9);
        v21 = objc_msgSend_strokeIdentifiers(v13, v16, v17, v18, v19, v20);
        LODWORD(v14) = objc_msgSend_containsSampleWithTranscription_strokeIdentifiers_(v14, v22, v15, v21, v23, v24);

        if (v14)
        {
          v25 = objc_msgSend_styles(a1[5], v5, v6, v7, v8, v9);
          v31 = objc_msgSend_strokeIdentifiers(v13, v26, v27, v28, v29, v30);
          v36 = objc_msgSend_objectForKeyedSubscript_(v25, v32, v31, v33, v34, v35);

          if (v13)
          {
            objc_msgSend_embeddingVector(v13, v37, v38, v39, v40, v41);
          }

          else
          {
            __p = 0;
            v71 = 0;
            v72 = 0;
          }

          objc_msgSend_setEmbeddingVector_(v36, v37, &__p, v39, v40, v41);
          if (__p)
          {
            v71 = __p;
            operator delete(__p);
          }

          v47 = objc_msgSend_script(v13, v42, v43, v44, v45, v46);
          objc_msgSend_setScript_(v36, v48, v47, v49, v50, v51);
          objc_msgSend_setHasInventoryChanged_(a1[5], v52, 1, v53, v54, v55);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v73, v78, 16, v9);
    }

    while (v10);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v56 = a1[6];
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v66, v77, 16, v58);
  if (v63)
  {
    v64 = *v67;
    do
    {
      for (j = 0; j != v63; ++j)
      {
        if (*v67 != v64)
        {
          objc_enumerationMutation(v56);
        }

        objc_msgSend__unsafeRemoveSample_(a1[5], v59, *(*(&v66 + 1) + 8 * j), v60, v61, v62, v66);
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v59, &v66, v77, 16, v62);
    }

    while (v63);
  }
}

void sub_183774194(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = objc_msgSend_styles(*(a1 + 32), a2, a3, a4, a5, a6, 0);
  v13 = objc_msgSend_allValues(v7, v8, v9, v10, v11, v12);

  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v38, v44, 16, v15);
  if (v21)
  {
    v22 = *v39;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        if ((objc_msgSend_hasEmbeddingVector(v24, v16, v17, v18, v19, v20) & 1) == 0)
        {
          v25 = *(a1 + 40);
          v26 = objc_msgSend_copy(v24, v16, v17, v18, v19, v20);
          objc_msgSend_addObject_(v25, v27, v26, v28, v29, v30);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v38, v44, 16, v20);
    }

    while (v21);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v31 = qword_1EA84DC98;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v37 = objc_msgSend_count(*(a1 + 40), v32, v33, v34, v35, v36);
    *buf = 134217984;
    v43 = v37;
    _os_log_impl(&dword_18366B000, v31, OS_LOG_TYPE_DEBUG, "Inventory style samples without style embedding: %lu", buf, 0xCu);
  }
}

void sub_183774610(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend__unsafeSamplesWithStylePrediction(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_count(v7, v8, v9, v10, v11, v12);
  if (v13 == objc_msgSend_countOfStyleSamples(*(a1 + 32), v14, v15, v16, v17, v18))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v24 = MEMORY[0x1E695DF70];
    v25 = objc_msgSend_count(v7, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_arrayWithCapacity_(v24, v26, v25, v27, v28, v29);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_18377478C;
    v48[3] = &unk_1E6DDDA08;
    v51 = *(a1 + 48);
    v31 = v30;
    v32 = *(a1 + 32);
    v49 = v31;
    v50 = v32;
    objc_msgSend_enumerateObjectsUsingBlock_(v7, v33, v48, v34, v35, v36);
    v42 = objc_msgSend_count(v31, v37, v38, v39, v40, v41);
    if (v42 >= objc_msgSend_minimumNumberOfSamplesWithStylePrediction(*(a1 + 32), v43, v44, v45, v46, v47))
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

void sub_18377478C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = a2;
  if (objc_msgSend_script(v26, v6, v7, v8, v9, v10) == *(a1 + 48))
  {
    objc_msgSend_addObject_(*(a1 + 32), v11, v26, v12, v13, v14);
    v20 = objc_msgSend_count(*(a1 + 32), v15, v16, v17, v18, v19);
    if (v20 >= objc_msgSend_minimumNumberOfSamplesWithStylePrediction(*(a1 + 40), v21, v22, v23, v24, v25))
    {
      *a4 = 1;
    }
  }
}

void sub_183775228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v26 = v3;
  v10 = objc_msgSend_drawing(v3, v5, v6, v7, v8, v9);
  objc_msgSend_addObject_(v4, v11, v10, v12, v13, v14);

  v15 = *(a1 + 40);
  v21 = objc_msgSend_transcription(v26, v16, v17, v18, v19, v20);
  objc_msgSend_addObject_(v15, v22, v21, v23, v24, v25);
}

void sub_183775418(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, a3, v6, v7, v8);
  v15 = objc_msgSend_set(MEMORY[0x1E695DFD8], v10, v11, v12, v13, v14);
  v17 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v16, v9, v22, 0, v15);

  objc_msgSend_addObject_(*(a1 + 40), v18, v17, v19, v20, v21);
}

void sub_183775858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19)
{
  v23 = v22;

  _Unwind_Resume(a1);
}

void sub_183775904(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  v161 = *MEMORY[0x1E69E9840];
  __p = 0;
  v155 = 0;
  v156 = 0;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v7 = objc_msgSend__unsafeSamplesWithStylePrediction(*(a1 + 32), a2, a3, a4, a5, a6);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v150, v160, 16, v9);
  v149 = v6;
  v16 = 0;
  if (v15)
  {
    v17 = 0x1E6DDB000uLL;
    v18 = *v151;
    v142 = v7;
    v147 = *v151;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v151 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = *(*(&v150 + 1) + 8 * i);
        v21 = objc_msgSend_script(*(v6 + 40), v10, v11, v12, v13, v14, v142);
        if (v21 == objc_msgSend_script(v20, v22, v23, v24, v25, v26))
        {
          objc_msgSend_cosineSimilarityToSample_(*(v6 + 40), v10, v20, v12, v13, v14);
          v28 = v27;
          v37 = objc_msgSend_remainingCharacterSetFromPromptCharacterSet_withSample_(*(v17 + 1704), v29, *(v6 + 48), v20, v30, v31);
          if (v28 >= 0.55)
          {
            v38 = objc_msgSend_transcriptionLengthForSynthesis(v20, v32, v33, v34, v35, v36) < *(v6 + 72);
            objc_msgSend_transcription(v20, v39, v40, v41, v42, v43);
            v145 = v44 = v15;
            isEqualToString = objc_msgSend_isEqualToString_(v145, v45, *(v6 + 56), v46, v47, v48);
            v55 = objc_msgSend_count(*(v6 + 48), v50, v51, v52, v53, v54);
            v61 = v55 - objc_msgSend_count(v37, v56, v57, v58, v59, v60);
            v62 = v20;
            if (v16 < v156)
            {
              *v16 = v38;
              *(v16 + 1) = isEqualToString;
              *(v16 + 4) = v61;
              *(v16 + 8) = v28;
              *(v16 + 16) = v62;
              v16 += 24;
              v15 = v44;
              v17 = 0x1E6DDB000;
              goto LABEL_25;
            }

            v63 = __p;
            v64 = v16 - __p;
            v65 = 0xAAAAAAAAAAAAAAABLL * ((v16 - __p) >> 3) + 1;
            if (v65 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_18368964C();
            }

            if (0x5555555555555556 * ((v156 - __p) >> 3) > v65)
            {
              v65 = 0x5555555555555556 * ((v156 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v156 - __p) >> 3) >= 0x555555555555555)
            {
              v65 = 0xAAAAAAAAAAAAAAALL;
            }

            if (v65)
            {
              if (v65 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_183688F00();
            }

            v66 = 8 * ((v16 - __p) >> 3);
            *v66 = v38;
            *(v66 + 1) = isEqualToString;
            *(v66 + 4) = v61;
            *(v66 + 8) = v28;
            *(v66 + 16) = v62;
            v67 = (v66 - v64);
            if (v63 == v16)
            {
              v7 = v142;
              v15 = v44;
              v17 = 0x1E6DDB000;
              v16 = v66 + 24;
              __p = v67;
              v155 = v66 + 24;
              v156 = 0;
              if (v63)
              {
                goto LABEL_24;
              }
            }

            else
            {
              v68 = v63;
              v69 = v66 - v64;
              v7 = v142;
              v15 = v44;
              v17 = 0x1E6DDB000;
              do
              {
                v70 = *v68;
                *(v69 + 8) = *(v68 + 2);
                *v69 = v70;
                v71 = v68[2];
                v68[2] = 0;
                *(v69 + 16) = v71;
                v68 += 3;
                v69 += 24;
              }

              while (v68 != v16);
              do
              {

                v63 += 3;
              }

              while (v63 != v16);
              v63 = __p;
              v16 = v66 + 24;
              __p = v67;
              v155 = v66 + 24;
              v156 = 0;
              if (v63)
              {
LABEL_24:
                operator delete(v63);
              }
            }

LABEL_25:
            v155 = v16;
          }

          v18 = v147;
          v6 = v149;
          continue;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v150, v160, 16, v14);
      if (!v15)
      {
        v72 = __p;
        goto LABEL_32;
      }
    }
  }

  v72 = 0;
LABEL_32:

  v73 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v72) >> 3);
  if (v73 >= 0xA)
  {
    v74 = 10;
  }

  else
  {
    v74 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v72) >> 3);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v75 = qword_1EA84DC98;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v16 - v72) >> 3);
    v158 = 2048;
    v159 = v74;
    _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_DEBUG, "Style Sampling: nearestInventorySamplesToSample for input style sample: found %zu nearest samples, capping to %ld", buf, 0x16u);
  }

  v148 = v74;

  if (v16 == v72)
  {
    goto LABEL_116;
  }

  v80 = v74;
  v81 = &v72[24 * v74];
  if (v73 >= 2)
  {
    v82 = (v74 - 2) >> 1;
    sub_18377E324(v72, v148, &v72[24 * v82]);
    if ((v148 - 2) >= 2)
    {
      sub_18377E324(v72, v148, &v72[24 * v82 - 24]);
      if (v82 != 1)
      {
        sub_18377E324(v72, v148, &v72[24 * v82 - 48]);
        if (v82 != 2)
        {
          sub_18377E324(v72, v148, &v72[24 * v82 - 72]);
          if (v82 != 3)
          {
            sub_18377E324(v72, v148, &v72[24 * v82 - 96]);
          }
        }
      }
    }
  }

  if (v81 != v16)
  {
    v129 = v81;
    do
    {
      if (*v129 == 1)
      {
        if (*v72 != 1 || (v130 = *(v129 + 1), v131 = *(v72 + 1), v130 > v131) || v130 == v131 && v129[1] == 1 && (v72[1] != 1 || *(v129 + 2) > *(v72 + 2)))
        {
          *buf = *v129;
          *&buf[8] = *(v129 + 2);
          v132 = *(v129 + 2);
          *(v129 + 2) = 0;
          v133 = *v72;
          *(v129 + 2) = *(v72 + 2);
          *v129 = v133;
          v134 = *(v72 + 2);
          *(v72 + 2) = 0;
          v135 = *(v129 + 2);
          *(v129 + 2) = v134;

          *v72 = *buf;
          *(v72 + 2) = *&buf[8];
          v136 = *(v72 + 2);
          *(v72 + 2) = v132;

          v80 = v148;
          sub_18377E324(v72, v148, v72);
        }
      }

      v129 += 24;
    }

    while (v129 != v16);
  }

  if (v73 < 2)
  {
    v137 = v149;
    goto LABEL_111;
  }

  do
  {
    v86 = 0;
    v87 = v81;
    *buf = *v72;
    *&buf[8] = *(v72 + 2);
    v88 = *(v72 + 2);
    *(v72 + 2) = 0;
    v89 = v72;
    do
    {
      v90 = &v89[24 * v86 + 24];
      v91 = 2 * v86;
      v86 = (2 * v86) | 1;
      v92 = v91 + 2;
      if (v92 < v80 && *v90 == 1)
      {
        if (*(v90 + 24) != 1 || (v93 = *(v90 + 4), v94 = *(v90 + 28), v93 > v94) || v93 == v94 && *(v90 + 1) == 1 && (*(v90 + 25) != 1 || *(v90 + 8) > *(v90 + 32)))
        {
          v90 += 24;
          v86 = v92;
        }
      }

      v95 = *v90;
      *(v89 + 2) = *(v90 + 8);
      *v89 = v95;
      v96 = *(v90 + 16);
      *(v90 + 16) = 0;
      v97 = *(v89 + 2);
      *(v89 + 2) = v96;

      v89 = v90;
    }

    while (v86 <= ((v80 - 2) >> 1));
    v81 -= 24;
    if (v90 == v87 - 24)
    {
      v83 = *buf;
      *(v90 + 8) = *&buf[8];
      *v90 = v83;
      v84 = *(v90 + 16);
      *(v90 + 16) = v88;
      goto LABEL_50;
    }

    v98 = *v81;
    *(v90 + 8) = *(v87 - 4);
    *v90 = v98;
    v100 = *(v87 - 1);
    v99 = (v87 - 8);
    *v99 = 0;
    v101 = *(v90 + 16);
    *(v90 + 16) = v100;

    *v81 = *buf;
    *(v81 + 2) = *&buf[8];
    v102 = *v99;
    *v99 = v88;

    v103 = v90 + 24 - v72;
    if (v103 >= 25)
    {
      v104 = -2 - 0x5555555555555555 * (v103 >> 3);
      v105 = v104 >> 1;
      v106 = &v72[24 * (v104 >> 1)];
      if (*v106 == 1)
      {
        v146 = *v90;
        if ((*v90 & 1) == 0)
        {
          v108 = *(v90 + 4);
          goto LABEL_76;
        }

        v107 = *(v106 + 1);
        v108 = *(v90 + 4);
        if (v107 > v108)
        {
          goto LABEL_76;
        }

        if (v107 == v108 && v106[1] == 1)
        {
          if (*(v90 + 1) != 1)
          {
            v108 = *(v106 + 1);
LABEL_76:
            v109 = *(v90 + 1);
            v143 = *(v90 + 2);
            v110 = *(v90 + 8);
            v144 = *(v90 + 16);
            *(v90 + 16) = 0;
            v111 = *v106;
            *(v90 + 8) = *(v106 + 2);
            *v90 = v111;
            v112 = *(v106 + 2);
            *(v106 + 2) = 0;
            v113 = *(v90 + 16);
            *(v90 + 16) = v112;

            if (v104 >= 2)
            {
              v114 = &v72[24 * (v104 >> 1)];
              if (v146)
              {
                if (v109)
                {
                  while (1)
                  {
                    v115 = v105 - 1;
                    v105 = (v105 - 1) >> 1;
                    v106 = &v72[24 * v105];
                    if (*v106 != 1)
                    {
                      break;
                    }

                    v116 = *(v106 + 1);
                    if (v116 <= v108 && (v116 != v108 || v106[1] != 1 || *(v106 + 2) <= v110))
                    {
                      break;
                    }

                    v117 = *v106;
                    *(v114 + 2) = *(v106 + 2);
                    *v114 = v117;
                    v118 = *(v106 + 2);
                    *(v106 + 2) = 0;
                    v119 = *(v114 + 2);
                    *(v114 + 2) = v118;

                    v114 = &v72[24 * v105];
                    if (v115 < 2)
                    {
                      goto LABEL_96;
                    }
                  }
                }

                else
                {
                  while (1)
                  {
                    v124 = v105 - 1;
                    v105 = (v105 - 1) >> 1;
                    v106 = &v72[24 * v105];
                    if (*v106 != 1)
                    {
                      break;
                    }

                    v125 = *(v106 + 1);
                    if (v125 <= v108 && (v125 != v108 || v106[1] != 1))
                    {
                      break;
                    }

                    v126 = *v106;
                    *(v114 + 2) = *(v106 + 2);
                    *v114 = v126;
                    v127 = *(v106 + 2);
                    *(v106 + 2) = 0;
                    v128 = *(v114 + 2);
                    *(v114 + 2) = v127;

                    v114 = &v72[24 * v105];
                    if (v124 < 2)
                    {
                      goto LABEL_96;
                    }
                  }
                }
              }

              else
              {
                while (1)
                {
                  v120 = v105 - 1;
                  v105 = (v105 - 1) >> 1;
                  v106 = &v72[24 * v105];
                  if (*v106 != 1)
                  {
                    break;
                  }

                  v121 = *v106;
                  *(v114 + 2) = *(v106 + 2);
                  *v114 = v121;
                  v122 = *(v106 + 2);
                  *(v106 + 2) = 0;
                  v123 = *(v114 + 2);
                  *(v114 + 2) = v122;

                  v114 = &v72[24 * v105];
                  if (v120 <= 1)
                  {
                    goto LABEL_96;
                  }
                }
              }

              v106 = v114;
            }

LABEL_96:
            *v106 = v146;
            v106[1] = v109;
            *(v106 + 1) = v143;
            *(v106 + 1) = v108;
            *(v106 + 2) = v110;
            v84 = *(v106 + 2);
            *(v106 + 2) = v144;
LABEL_50:

            continue;
          }

          v108 = *(v106 + 1);
          if (*(v106 + 2) > *(v90 + 8))
          {
            goto LABEL_76;
          }
        }
      }
    }
  }

  while (v80-- > 2);
  v72 = __p;
  v80 = v148;
  v137 = v149;
LABEL_111:
  if (v80 <= 1)
  {
    v138 = 1;
  }

  else
  {
    v138 = v80;
  }

  v139 = 16;
  do
  {
    objc_msgSend_addObject_(*(v137 + 64), v76, *&v72[v139], v77, v78, v79);
    v139 += 24;
    --v138;
  }

  while (v138);
LABEL_116:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v140 = qword_1EA84DC98;
  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v140, OS_LOG_TYPE_DEBUG, "Style Sampling: nearestInventorySamplesToSample for input style sample: Completed", buf, 2u);
  }

  if (v72)
  {
    for (j = v155; j != v72; j -= 3)
    {
    }

    operator delete(v72);
  }
}

void sub_183776394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_183776420(va);
  _Unwind_Resume(a1);
}

void **sub_183776420(void **a1)
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
        v5 = v3 - 3;

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

void sub_1837767CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  v31 = v29;

  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_18377686C(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v2 = *(a1 + 32);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v52, v56, 16, v4);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *v53;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        if (objc_msgSend_script(v15, v5, v6, v7, v8, v9, v52) == *(a1 + 64))
        {
          v16 = objc_msgSend_transcription(v15, v5, v6, v7, v8, v9);
          isEqualToString = objc_msgSend_isEqualToString_(v16, v17, *(a1 + 40), v18, v19, v20);

          if (isEqualToString)
          {
            v49 = v15;

            v12 = v49;
            goto LABEL_16;
          }

          v27 = MEMORY[0x1E695DFA8];
          v28 = objc_msgSend_characterCoverage(v15, v22, v23, v24, v25, v26);
          v33 = objc_msgSend_setWithSet_(v27, v29, v28, v30, v31, v32);

          objc_msgSend_intersectSet_(v33, v34, *(a1 + 48), v35, v36, v37);
          if (objc_msgSend_count(v33, v38, v39, v40, v41, v42) >= v11)
          {
            v11 = objc_msgSend_count(v33, v43, v44, v45, v46, v47);
            v48 = v15;

            v12 = v48;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v52, v56, 16, v9);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_16:

  v50 = *(*(a1 + 56) + 8);
  v51 = *(v50 + 40);
  *(v50 + 40) = v12;
}

void sub_183776D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_183776D88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v210 = *MEMORY[0x1E69E9840];
  while (v9 < objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v10, v9, v11, v12, v13);
    if (objc_msgSend_script(v14, v15, v16, v17, v18, v19) == *(a1 + 56))
    {
      v25 = a1;
      v26 = v9;
      v27 = MEMORY[0x1E695DFA8];
      v28 = objc_msgSend_characterCoverage(v14, v20, v21, v22, v23, v24);
      v33 = objc_msgSend_setWithSet_(v27, v29, v28, v30, v31, v32);

      v206 = v14;
      v207 = v33;
      objc_msgSend_intersectSet_(v33, v34, *(v25 + 40), v35, v36, v37);
      v43 = objc_msgSend_count(v33, v38, v39, v40, v41, v42);
      v49 = objc_msgSend_transcription(v14, v44, v45, v46, v47, v48);
      v55 = objc_msgSend_length(v49, v50, v51, v52, v53, v54);
      v56 = v7 - v8;
      v57 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
      v58 = v57 + 1;
      if (v57 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_18368964C();
      }

      if (0x5555555555555556 * (-v8 >> 3) > v58)
      {
        v58 = 0x5555555555555556 * (-v8 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v8 >> 3) >= 0x555555555555555)
      {
        v59 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v59 = v58;
      }

      if (v59)
      {
        if (v59 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_183688F00();
      }

      v60 = 24 * v57;
      v9 = v26;
      *v60 = v26;
      *(v60 + 8) = v43;
      *(v60 + 16) = v55;
      v7 = 24 * v57 + 24;
      v61 = (v60 + 24 * (v56 / -24));
      memcpy(v61, v8, v56);
      if (v8)
      {
        operator delete(v8);
      }

      v8 = v61;
      a1 = v25;
      v14 = v206;
      v62 = v7 - v61;
      if (v7 - v8 >= 25)
      {
        v63 = -2 - 0x5555555555555555 * (v62 >> 3);
        v64 = v63 >> 1;
        v65 = (v8 + 24 * (v63 >> 1));
        v66 = v65[1];
        v67 = *(v7 - 16);
        v68 = *(v7 - 8);
        if (v66 > v67 || v66 == v67 && ((v80 = v65[2], v68 >= 3) ? (v81 = v80 >= v68) : (v81 = 0), v81 ? (v82 = 0) : (v82 = 1), v80 >= 3 ? (v83 = v82 == 0) : (v83 = 1), !v83))
        {
          v69 = v7 - 24;
          v70 = *(v7 - 24);
          v71 = *v65;
          *(v69 + 16) = v65[2];
          *v69 = v71;
          if (v63 >= 2)
          {
            v72 = (v8 + 24 * (v63 >> 1));
            while (1)
            {
              v74 = v64 - 1;
              v64 = (v64 - 1) >> 1;
              v65 = (v8 + 24 * v64);
              v75 = v65[1];
              if (v75 <= v67)
              {
                if (v75 != v67)
                {
                  break;
                }

                v76 = v65[2];
                v77 = v68 >= 3 && v76 >= v68;
                v78 = !v77;
                if (v76 < 3 || !v78)
                {
                  break;
                }
              }

              v73 = *v65;
              v72[2] = v65[2];
              *v72 = v73;
              v72 = (v8 + 24 * v64);
              if (v74 <= 1)
              {
                goto LABEL_36;
              }
            }

            v65 = v72;
          }

LABEL_36:
          *v65 = v70;
          v65[1] = v67;
          v65[2] = v68;
        }
      }

      v84 = 0xAAAAAAAAAAAAAAABLL * (v62 >> 3);
      v85 = *(v25 + 64);
      while (v84 > v85)
      {
        if (v62 >= 25)
        {
          v87 = 0;
          v88 = *v8;
          v209 = *(v8 + 16);
          *buf = v88;
          v89 = v8;
          do
          {
            v91 = v89;
            v89 += 24 * v87 + 24;
            v92 = 2 * v87;
            v87 = (2 * v87) | 1;
            v93 = v92 + 2;
            if (v93 < v84)
            {
              v94 = *(v89 + 8);
              v95 = *(v89 + 32);
              if (v94 > v95 || v94 == v95 && ((v96 = *(v89 + 16), v97 = *(v89 + 40), v97 >= 3) ? (v98 = v96 >= v97) : (v98 = 0), v98 ? (v99 = 0) : (v99 = 1), v96 >= 3 ? (v100 = v99 == 0) : (v100 = 1), !v100))
              {
                v89 += 24;
                v87 = v93;
              }
            }

            v90 = *v89;
            *(v91 + 16) = *(v89 + 16);
            *v91 = v90;
          }

          while (v87 <= ((v84 - 2) >> 1));
          v101 = (v7 - 24);
          if (v89 == v7 - 24)
          {
            v86 = *buf;
            *(v89 + 16) = v209;
            *v89 = v86;
          }

          else
          {
            v102 = *v101;
            *(v89 + 16) = *(v7 - 8);
            *v89 = v102;
            v103 = *buf;
            *(v7 - 8) = v209;
            *v101 = v103;
            v104 = v89 - v8 + 24;
            if (v104 >= 25)
            {
              v105 = -2 - 0x5555555555555555 * (v104 >> 3);
              v106 = v105 >> 1;
              v107 = (v8 + 24 * (v105 >> 1));
              v108 = v107[1];
              v109 = *(v89 + 8);
              v110 = *(v89 + 16);
              if (v108 > v109 || v108 == v109 && ((v121 = v107[2], v110 >= 3) ? (v122 = v121 >= v110) : (v122 = 0), v122 ? (v123 = 0) : (v123 = 1), v121 >= 3 ? (v124 = v123 == 0) : (v124 = 1), !v124))
              {
                v111 = *v89;
                v112 = *v107;
                *(v89 + 16) = v107[2];
                *v89 = v112;
                if (v105 >= 2)
                {
                  v113 = (v8 + 24 * (v105 >> 1));
                  while (1)
                  {
                    v115 = v106 - 1;
                    v106 = (v106 - 1) >> 1;
                    v107 = (v8 + 24 * v106);
                    v116 = v107[1];
                    if (v116 <= v109)
                    {
                      if (v116 != v109)
                      {
                        break;
                      }

                      v117 = v107[2];
                      v118 = v110 >= 3 && v117 >= v110;
                      v119 = !v118;
                      if (v117 < 3 || !v119)
                      {
                        break;
                      }
                    }

                    v114 = *v107;
                    v113[2] = v107[2];
                    *v113 = v114;
                    v113 = (v8 + 24 * v106);
                    if (v115 <= 1)
                    {
                      goto LABEL_93;
                    }
                  }

                  v107 = v113;
                }

LABEL_93:
                *v107 = v111;
                v107[1] = v109;
                v107[2] = v110;
              }
            }
          }

          v85 = *(v25 + 64);
        }

        v7 -= 24;
        v62 = v7 - v8;
        v84 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
      }
    }

    ++v9;
  }

  if (v8 != v7)
  {
    v125 = objc_alloc(MEMORY[0x1E695DF70]);
    v130 = objc_msgSend_initWithCapacity_(v125, v126, 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3), v127, v128, v129);
    v131 = *(*(a1 + 48) + 8);
    v132 = *(v131 + 40);
    *(v131 + 40) = v130;

    while (qword_1EA84DC48 == -1)
    {
      v134 = qword_1EA84DC98;
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_112;
      }

LABEL_113:

      v152 = *(*(*(a1 + 48) + 8) + 40);
      v157 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v153, *v8, v154, v155, v156);
      v162 = objc_msgSend_normalizeStyleSample_(CHSynthesisStyleSample, v158, v157, v159, v160, v161);
      objc_msgSend_addObject_(v152, v163, v162, v164, v165, v166);

      if (v7 - v8 >= 25)
      {
        v167 = 0;
        v168 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
        v169 = *v8;
        v209 = *(v8 + 16);
        *buf = v169;
        v170 = v8;
        do
        {
          v172 = v170;
          v170 += 24 * v167 + 24;
          v173 = 2 * v167;
          v167 = (2 * v167) | 1;
          v174 = v173 + 2;
          if (v174 < v168)
          {
            v175 = *(v170 + 8);
            v176 = *(v170 + 32);
            if (v175 > v176 || v175 == v176 && ((v177 = *(v170 + 16), v178 = *(v170 + 40), v178 >= 3) ? (v179 = v177 >= v178) : (v179 = 0), v179 ? (v180 = 0) : (v180 = 1), v177 >= 3 ? (v181 = v180 == 0) : (v181 = 1), !v181))
            {
              v170 += 24;
              v167 = v174;
            }
          }

          v171 = *v170;
          *(v172 + 16) = *(v170 + 16);
          *v172 = v171;
        }

        while (v167 <= ((v168 - 2) >> 1));
        v182 = (v7 - 24);
        if (v170 == v7 - 24)
        {
          v133 = *buf;
          *(v170 + 16) = v209;
          *v170 = v133;
        }

        else
        {
          v183 = *v182;
          *(v170 + 16) = *(v7 - 8);
          *v170 = v183;
          v184 = *buf;
          *(v7 - 8) = v209;
          *v182 = v184;
          v185 = v170 - v8 + 24;
          if (v185 >= 25)
          {
            v186 = -2 - 0x5555555555555555 * (v185 >> 3);
            v187 = v186 >> 1;
            v188 = (v8 + 24 * (v186 >> 1));
            v189 = v188[1];
            v190 = *(v170 + 8);
            v191 = *(v170 + 16);
            if (v189 > v190 || v189 == v190 && ((v202 = v188[2], v191 >= 3) ? (v203 = v202 >= v191) : (v203 = 0), v203 ? (v204 = 0) : (v204 = 1), v202 >= 3 ? (v205 = v204 == 0) : (v205 = 1), !v205))
            {
              v192 = *v170;
              v193 = *v188;
              *(v170 + 16) = v188[2];
              *v170 = v193;
              if (v186 >= 2)
              {
                v194 = (v8 + 24 * (v186 >> 1));
                while (1)
                {
                  v196 = v187 - 1;
                  v187 = (v187 - 1) >> 1;
                  v188 = (v8 + 24 * v187);
                  v197 = v188[1];
                  if (v197 <= v190)
                  {
                    if (v197 != v190)
                    {
                      break;
                    }

                    v198 = v188[2];
                    v199 = v191 >= 3 && v198 >= v191;
                    v200 = !v199;
                    if (v198 < 3 || !v200)
                    {
                      break;
                    }
                  }

                  v195 = *v188;
                  v194[2] = v188[2];
                  *v194 = v195;
                  v194 = (v8 + 24 * v187);
                  if (v196 <= 1)
                  {
                    goto LABEL_152;
                  }
                }

                v188 = v194;
              }

LABEL_152:
              *v188 = v192;
              v188[1] = v190;
              v188[2] = v191;
            }
          }
        }
      }

      v7 -= 24;
      if (v8 == v7)
      {
        goto LABEL_167;
      }
    }

    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v134 = qword_1EA84DC98;
    if (!os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_113;
    }

LABEL_112:
    v139 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v135, *v8, v136, v137, v138);
    v145 = objc_msgSend_transcription(v139, v140, v141, v142, v143, v144);
    v151 = objc_msgSend_length(v145, v146, v147, v148, v149, v150);
    *buf = 134217984;
    *&buf[4] = v151;
    _os_log_impl(&dword_18366B000, v134, OS_LOG_TYPE_DEFAULT, "Style Sampling: found style sample with length: %lu", buf, 0xCu);

    goto LABEL_113;
  }

LABEL_167:
  if (v8)
  {
    operator delete(v8);
  }
}

void sub_183777620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_183777960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v25 = v24;

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1837779B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v182 = *MEMORY[0x1E69E9840];
  v178 = 0;
  v179 = 0;
  v180 = 0;
  objc_msgSend__unsafeSamplesWithStylePrediction(*(a1 + 32), a2, a3, a4, a5, a6);
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  obj = v175 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v174, v181, 16, v7);
  if (!v13)
  {

    return;
  }

  v14 = 0;
  v15 = *v175;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v175 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v174 + 1) + 8 * i);
      if (objc_msgSend_script(v18, v8, v9, v10, v11, v12) == *(a1 + 48))
      {
        if (v14 < v180)
        {
          *v14 = v18;
          v17 = v14 + 1;
        }

        else
        {
          v19 = v178;
          v20 = (v14 - v178);
          v21 = v14 - v178;
          v22 = v21 + 1;
          if ((v21 + 1) >> 61)
          {
            sub_18368964C();
          }

          v23 = v180 - v178;
          if ((v180 - v178) >> 2 > v22)
          {
            v22 = v23 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (!(v24 >> 61))
            {
              operator new();
            }

            sub_183688F00();
          }

          v25 = (8 * v21);
          *v25 = v18;
          v17 = (v25 + 1);
          if (v19 != v14)
          {
            v26 = v20 - 8;
            v27 = v19;
            v28 = 0;
            if ((v20 - 8) < 0x28)
            {
              goto LABEL_88;
            }

            if (v19 < (v26 & 0xFFFFFFFFFFFFFFF8) + 8)
            {
              v27 = v19;
              v28 = 0;
              if ((v19 + (v26 & 0xFFFFFFFFFFFFFFF8)) != -8)
              {
                goto LABEL_88;
              }
            }

            v29 = (v26 >> 3) + 1;
            v28 = (8 * (v29 & 0x3FFFFFFFFFFFFFFCLL));
            v27 = (v28 + v19);
            v30 = 16;
            v31 = (v19 + 2);
            v32 = v29 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v33 = *(v31 - 1);
              v34 = *v31;
              *(v31 - 1) = 0uLL;
              *v31 = 0uLL;
              *(v30 - 16) = v33;
              *v30 = v34;
              v30 += 32;
              v31 += 2;
              v32 -= 4;
            }

            while (v32);
            if (v29 != (v29 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_88:
              do
              {
                v35 = *v27;
                *v27++ = 0;
                *v28++ = v35;
              }

              while (v27 != v14);
            }

            v36 = v19;
            do
            {
            }

            while (v36 != v14);
          }

          v178 = 0;
          v180 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        v179 = v17;
        v14 = v17;
      }
    }

    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v174, v181, 16, v12);
  }

  while (v13);
  v171 = v178;

  v42 = v171;
  v43 = v14 - v171;
  if (v43 <= 0xA)
  {
    if (v171 == v14)
    {
      goto LABEL_69;
    }

    v44 = v14;
    if (v43 <= 1)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v44 = v171 + 10;
    v43 = 10;
  }

  v168 = v43;
  v45 = (v43 - 2) >> 1;
  v46 = &v171[v45];
  v47 = v45 + 1;
  do
  {
    sub_18377E8F4(v171, v43, v46--);
    --v47;
  }

  while (v47);
  v170 = v44;
  if (v44 != v14)
  {
    v163 = v44;
    do
    {
      if (sub_18377E81C(*v163, *v42))
      {
        v164 = *v163;
        *v163 = 0;
        v165 = *v42;
        *v42 = 0;
        v166 = *v163;
        *v163 = v165;

        v167 = *v171;
        *v171 = v164;

        v42 = v171;
        sub_18377E8F4(v171, v43, v171);
      }

      ++v163;
    }

    while (v163 != v14);
  }

  v48 = v43;
  do
  {
    v50 = 0;
    v169 = *v42;
    *v42 = 0;
    do
    {
      v51 = &v42[v50 + 1];
      v52 = 2 * v50;
      v50 = (2 * v50) | 1;
      v53 = v52 + 2;
      if (v52 + 2 < v48)
      {
        v54 = *(v51 + 8);
        v55 = *v51;
        v56 = v54;
        v62 = objc_msgSend_samplingCount(v55, v57, v58, v59, v60, v61);
        if (v62 == objc_msgSend_samplingCount(v56, v63, v64, v65, v66, v67))
        {
          v73 = objc_msgSend_creationDate(v55, v68, v69, v70, v71, v72);
          v79 = objc_msgSend_creationDate(v56, v74, v75, v76, v77, v78);
          v80 = v73 > v79;
        }

        else
        {
          v81 = objc_msgSend_samplingCount(v55, v68, v69, v70, v71, v72);
          v80 = v81 > objc_msgSend_samplingCount(v56, v82, v83, v84, v85, v86);
        }

        v87 = 8;
        if (!v80)
        {
          v87 = 0;
        }

        v51 += v87;
        if (v80)
        {
          v50 = v53;
        }
      }

      v88 = *v51;
      *v51 = 0;
      v89 = *v42;
      *v42 = v88;

      v42 = v51;
    }

    while (v50 <= ((v48 - 2) >> 1));
    v90 = v170 - 1;
    if (v51 == --v170)
    {
      v139 = *v51;
      *v51 = v169;
      goto LABEL_67;
    }

    v92 = *v90;
    *v90 = 0;
    v93 = *v51;
    *v51 = v92;

    v94 = *v170;
    *v170 = v169;

    v42 = v171;
    v95 = (v51 + 8 - v171) >> 3;
    v96 = v95 - 2;
    if (v95 >= 2)
    {
      v97 = v96 >> 1;
      v98 = &v171[v96 >> 1];
      if (sub_18377E81C(*v98, *v51))
      {
        v99 = *v51;
        *v51 = 0;
        v100 = *v98;
        *v98 = 0;
        v101 = *v51;
        *v51 = v100;

        if (v96 < 2)
        {
          goto LABEL_66;
        }

        v102 = &v171[v96 >> 1];
        while (1)
        {
          v103 = v97 - 1;
          v97 = (v97 - 1) >> 1;
          v98 = &v171[v97];
          v104 = *v98;
          v105 = v99;
          v111 = objc_msgSend_samplingCount(v104, v106, v107, v108, v109, v110);
          if (v111 == objc_msgSend_samplingCount(v105, v112, v113, v114, v115, v116))
          {
            v122 = objc_msgSend_creationDate(v104, v117, v118, v119, v120, v121);
            v128 = objc_msgSend_creationDate(v105, v123, v124, v125, v126, v127);
            v129 = v122 > v128;

            if (!v129)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v130 = objc_msgSend_samplingCount(v104, v117, v118, v119, v120, v121);
            v136 = v130 > objc_msgSend_samplingCount(v105, v131, v132, v133, v134, v135);

            if (!v136)
            {
LABEL_65:
              v98 = v102;
LABEL_66:
              v139 = *v98;
              *v98 = v99;
LABEL_67:

              v42 = v171;
              break;
            }
          }

          v137 = *v98;
          *v98 = 0;
          v138 = *v102;
          *v102 = v137;

          v102 = &v171[v97];
          if (v103 <= 1)
          {
            goto LABEL_66;
          }
        }
      }
    }
  }

  while (v48-- > 2);
  v42 = v178;
  v43 = v168;
LABEL_69:
  v140 = v42;
  if (v43 >= 1)
  {
    do
    {
      v144 = objc_msgSend_transcription(*v42, v37, v38, v39, v40, v41, v168);
      v150 = objc_msgSend_length(v144, v145, v146, v147, v148, v149);
      v156 = objc_msgSend_transcription(*(*(*(a1 + 40) + 8) + 40), v151, v152, v153, v154, v155);
      v162 = v150 > objc_msgSend_length(v156, v157, v158, v159, v160, v161);

      if (v162)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), *v42);
      }

      ++v42;
      --v43;
    }

    while (v43);

    v141 = v140;
    v142 = v179;
    if (v179 == v140)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v141 = v42;
  if (!v42)
  {
    return;
  }

  v142 = v179;
  if (v179 != v42)
  {
    do
    {
LABEL_72:
      v143 = *--v142;

      v141 = v140;
    }

    while (v142 != v140);
  }

LABEL_73:
  v179 = v141;
  operator delete(v141);
}

void sub_1837780D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_18377E7BC(va);
  _Unwind_Resume(a1);
}

void sub_1837780E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_18377E7BC(va);
  _Unwind_Resume(a1);
}

void sub_1837786F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = *MEMORY[0x1E69E9840];
  v74 = objc_msgSend__maxSamplesToStitch(CHSynthesisStyleInventory, a2, a3, a4, a5, a6);
  if (objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40), v7, v8, v9, v10, v11))
  {
    objc_msgSend_nearestInventorySamplesToSample_prompt_maxStyleSampleLength_(*(a1 + 32), v12, *(a1 + 40), *(a1 + 48), *(a1 + 72), v13);
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v14 = v80 = 0u;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v79, v84, 16, v16);
    if (v22)
    {
      v23 = *v80;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v80 != v23)
          {
            objc_enumerationMutation(v14);
          }

          if (objc_msgSend_transcriptionLengthForSynthesis(*(*(&v79 + 1) + 8 * i), v17, v18, v19, v20, v21) < *(a1 + 72))
          {
            v25 = 1;
            goto LABEL_12;
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v79, v84, 16, v21);
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
LABEL_12:

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v26 = v14;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v75, v83, 16, v28);
    if (v34)
    {
      v35 = 0;
      v36 = 0;
      v37 = *v76;
LABEL_14:
      v38 = 0;
      while (1)
      {
        if (*v76 != v37)
        {
          objc_enumerationMutation(v26);
        }

        v39 = *(*(&v75 + 1) + 8 * v38);
        if (!v25 || objc_msgSend_transcriptionLengthForSynthesis(*(*(&v75 + 1) + 8 * v38), v29, v30, v31, v32, v33) + v35 < *(a1 + 72))
        {
          v40 = objc_msgSend_remainingCharacterSetFromPromptCharacterSet_withSample_(CHSynthesisStyleInventory, v29, *(*(*(a1 + 64) + 8) + 40), v39, v32, v33);

          v36 = v40;
          v46 = objc_msgSend_count(v40, v41, v42, v43, v44, v45);
          if (v46 < objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40), v47, v48, v49, v50, v51))
          {
            objc_msgSend_addObject_(*(a1 + 56), v52, v39, v54, v55, v56);
            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v36);
            v62 = objc_msgSend_transcription(v39, v57, v58, v59, v60, v61);
            v68 = objc_msgSend_length(v62, v63, v64, v65, v66, v67);

            v35 += v68;
          }

          if (!objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40), v52, v53, v54, v55, v56) || objc_msgSend_count(*(a1 + 56), v69, v70, v71, v72, v73) >= v74)
          {
            break;
          }
        }

        if (v34 == ++v38)
        {
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v75, v83, 16, v33);
          if (v34)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    else
    {
      v36 = 0;
    }
  }
}

uint64_t sub_183778A10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v8 = objc_msgSend_currentSamplingTimestep(v6, a2, a3, a4, a5, a6) + 1;

  return objc_msgSend_setCurrentSamplingTimestep_(v6, v7, v8, v9, v10, v11);
}

void sub_183778A50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_copy(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_183779470(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_lowercaseLetterCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v7 = qword_1EA84DAE8;
  qword_1EA84DAE8 = v6;
}

void sub_1837794B0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = qword_1EA84DAE8;
  v16 = v5;
  v11 = objc_msgSend_characterAtIndex_(v5, v7, 0, v8, v9, v10);
  if (objc_msgSend_characterIsMember_(v6, v12, v11, v13, v14, v15))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  if (*(*(*(a1 + 32) + 8) + 24) >= 10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_183779570(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4, a5, a6);
  v11 = 4352;
  v12 = 256;
  do
  {
    v13 = sub_1837A4260(v11, v6, v7, v8, v9, v10);
    objc_msgSend_addObject_(v20, v14, v13, v15, v16, v17);

    ++v11;
    --v12;
  }

  while (v12);
  v18 = objc_msgSend_copy(v20, v6, v7, v8, v9, v10);
  v19 = qword_1EA84CEE0;
  qword_1EA84CEE0 = v18;
}

uint64_t sub_183779700(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend__unsafeSupportsPersonalizationForScript_(*(a1 + 32), a2, *(a1 + 48), a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_18377A1CC(uint64_t result)
{
  if (!*(*(result + 32) + 8))
  {
    operator new();
  }

  return result;
}

void sub_18377A2CC(void *a1, int a2)
{
  v38 = *MEMORY[0x1E69E9840];
  (*(**(a1[4] + 8) + 16))(&__p);
  if (__p == v35)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC98;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v37 = a2;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "Default style samples for prompt: cannot find character with codepoint %u for ZHJA script in memory mapped character holder.", buf, 8u);
    }
  }

  else
  {
    v9 = a1[5];
    v10 = sub_1837A4260(a2, v4, v5, v6, v7, v8);
    v16 = objc_msgSend_copy(*__p, v11, v12, v13, v14, v15);
    v17 = a1[6];
    v23 = objc_msgSend_set(MEMORY[0x1E695DFD8], v18, v19, v20, v21, v22);
    v25 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v24, v10, v16, v17, v23);
    objc_msgSend_addObject_(v9, v26, v25, v27, v28, v29);
  }

  v30 = __p;
  if (__p)
  {
    v31 = v35;
    v32 = __p;
    if (v35 != __p)
    {
      do
      {
        v33 = *(v31 - 3);
        v31 -= 24;
      }

      while (v31 != v30);
      v32 = __p;
    }

    v35 = v30;
    operator delete(v32);
  }
}

void sub_18377A4A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_18377A4E8(uint64_t result)
{
  if (!*(*(result + 32) + 16))
  {
    operator new();
  }

  return result;
}

void sub_18377B25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, char a39)
{
  _Block_object_dispose(&a33, 8);

  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_18377B3DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_options(*(a1 + 40), a2, a3, a4, a5, a6);
  LOBYTE(v7) = objc_msgSend_shouldForceInventoryDefaultStyleWithOptions_(v7, v9, v8, v10, v11, v12);

  if (v7)
  {
    v18 = 0;
  }

  else
  {
    v18 = objc_msgSend_supportsPersonalizationForScript_(*(a1 + 32), v13, *(a1 + 72), v15, v16, v17);
  }

  *(*(*(a1 + 56) + 8) + 24) = v18;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v19 = objc_msgSend_styleDrawings(*(a1 + 48), v13, v14, v15, v16, v17);
    v25 = objc_msgSend_styleContents(*(a1 + 48), v20, v21, v22, v23, v24);
    if (objc_msgSend_count(v19, v26, v27, v28, v29, v30) && objc_msgSend_count(v25, v31, v32, v33, v34, v35))
    {
      v36 = objc_msgSend_styleContents(*(a1 + 48), v31, v32, v33, v34, v35);
      v42 = objc_msgSend_firstObject(v36, v37, v38, v39, v40, v41);
      v48 = objc_msgSend_styleDrawings(*(a1 + 48), v43, v44, v45, v46, v47);
      v54 = objc_msgSend_firstObject(v48, v49, v50, v51, v52, v53);
      v55 = *(a1 + 72);
      v61 = objc_msgSend_set(MEMORY[0x1E695DFD8], v56, v57, v58, v59, v60);
      v63 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v62, v42, v54, v55, v61);

      v69 = objc_msgSend_stylePredictions(*(a1 + 48), v64, v65, v66, v67, v68);
      v75 = objc_msgSend_firstObject(v69, v70, v71, v72, v73, v74);
      objc_msgSend_updateStyleEmbedding_script_(v63, v76, v75, *(a1 + 72), v77, v78);

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v79 = qword_1EA84DC98;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *v86 = 0;
        _os_log_impl(&dword_18366B000, v79, OS_LOG_TYPE_DEFAULT, "Style Sampling: input sample is part of the synthesis request", v86, 2u);
      }
    }

    else
    {
      v63 = 0;
    }

    v80 = *(a1 + 32);
    v81 = objc_msgSend_string(*(a1 + 40), v31, v32, v33, v34, v35);
    v83 = objc_msgSend_personalizedStyleSamplesForInputSample_prompt_script_samplingAlgorithm_maxStyleSampleLength_(v80, v82, v63, v81, *(a1 + 72), 1, *(a1 + 80));
    v84 = *(*(a1 + 64) + 8);
    v85 = *(v84 + 40);
    *(v84 + 40) = v83;
  }
}

void sub_18377B898(uint64_t a1, void *a2)
{
  v23 = a2;
  v6 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v3, v23, *(a1 + 48), v4, v5);
  if (objc_msgSend_isSubsetOfSet_(v6, v7, *(a1 + 32), v8, v9, v10))
  {
    objc_msgSend_appendString_(*(a1 + 40), v11, @"Y", v12, v13, v14);
  }

  else if (objc_msgSend_intersectsSet_(v6, v11, *(a1 + 32), v12, v13, v14))
  {
    objc_msgSend_appendString_(*(a1 + 40), v15, @"P", v16, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(v23, v15, @" ", v16, v17, v18))
  {
    objc_msgSend_appendString_(*(a1 + 40), v19, @" ", v20, v21, v22);
  }

  else
  {
    objc_msgSend_appendString_(*(a1 + 40), v19, @"N", v20, v21, v22);
  }
}

uint64_t sub_18377BA50(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1[4] + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18377BACC;
  v9[3] = &unk_1E6DDDBC0;
  v7 = a1[6];
  v9[4] = a1[5];
  v9[5] = v7;
  return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, a2, v9, a4, a5, a6);
}

uint64_t sub_18377BACC(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_script(a3, a2, a3, a4, a5, a6);
  if (result == *(a1 + 40))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void sub_18377BBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18377BBD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_count(*(*(a1 + 32) + 48), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_18377BD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18377BD3C(uint64_t a1)
{
  v112 = *(a1 + 32);
  v7 = objc_msgSend_styles(*(a1 + 40), v2, v3, v4, v5, v6);
  v13 = objc_msgSend_styles(v112, v8, v9, v10, v11, v12);
  isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v7, v14, v13, v15, v16, v17);

  if (isEqualToDictionary && (objc_msgSend_sampleCountByCharacter(*(a1 + 40), v19, v20, v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend_sampleCountByCharacter(v112, v25, v26, v27, v28, v29), v30 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend_isEqualToDictionary_(v24, v31, v30, v32, v33, v34), v30, v24, v35) && (objc_msgSend_inventoryStorageURL(*(a1 + 40), v36, v37, v38, v39, v40), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend_inventoryStorageURL(v112, v42, v43, v44, v45, v46), v47 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v41, v48, v47, v49, v50, v51), v47, v41, isEqual) && (objc_msgSend_synthesisModelHashes(*(a1 + 40), v53, v54, v55, v56, v57), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend_synthesisModelHashes(v112, v59, v60, v61, v62, v63), v64 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend_isEqual_(v58, v65, v64, v66, v67, v68), v64, v58, v69) && (v75 = objc_msgSend_currentSamplingTimestep(*(a1 + 40), v70, v71, v72, v73, v74), v75 == objc_msgSend_currentSamplingTimestep(v112, v76, v77, v78, v79, v80)) && (objc_msgSend_fastPathCharacterStyles(*(a1 + 40), v81, v82, v83, v84, v85), v86 = objc_claimAutoreleasedReturnValue(), objc_msgSend_fastPathCharacterStyles(v112, v87, v88, v89, v90, v91), v92 = objc_claimAutoreleasedReturnValue(), v97 = objc_msgSend_isEqualToDictionary_(v86, v93, v92, v94, v95, v96), v92, v86, v97))
  {
    objc_msgSend_characterStyleTimestamp(*(a1 + 40), v98, v99, v100, v101, v102);
    v104 = v103;
    objc_msgSend_characterStyleTimestamp(v112, v105, v106, v107, v108, v109);
    v111 = v104 == v110;
  }

  else
  {
    v111 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v111;
}

void sub_18377C1C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_latin(*(*(a1 + 32) + 32), a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 40), v9, v10, v11);

  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_updateHashLatin_(*(*(a1 + 32) + 32), v13, *(a1 + 40), v14, v15, v16);
    objc_msgSend_clearSamplesEmbeddingVectorForScript_(*(a1 + 32), v17, 1, v18, v19, v20);
    v25 = *(a1 + 32);

    objc_msgSend_setHasInventoryChanged_(v25, v21, 1, v22, v23, v24);
  }
}

void sub_18377C314(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_zhJa(*(*(a1 + 32) + 32), a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 40), v9, v10, v11);

  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_updateHashZhJa_(*(*(a1 + 32) + 32), v13, *(a1 + 40), v14, v15, v16);
    objc_msgSend_clearSamplesEmbeddingVectorForScript_(*(a1 + 32), v17, 2, v18, v19, v20);
    v25 = *(a1 + 32);

    objc_msgSend_setHasInventoryChanged_(v25, v21, 1, v22, v23, v24);
  }
}

void sub_18377C460(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_ko(*(*(a1 + 32) + 32), a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 40), v9, v10, v11);

  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_updateHashKo_(*(*(a1 + 32) + 32), v13, *(a1 + 40), v14, v15, v16);
    objc_msgSend_clearSamplesEmbeddingVectorForScript_(*(a1 + 32), v17, 3, v18, v19, v20);
    v25 = *(a1 + 32);

    objc_msgSend_setHasInventoryChanged_(v25, v21, 1, v22, v23, v24);
  }
}

void sub_18377C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18377C6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_18377C6E0(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_18377C7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_18377C814(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a1 + 32) + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18377C890;
  v8[3] = &unk_1E6DDDBE8;
  v8[4] = *(a1 + 40);
  return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, a2, v8, a4, a5, a6);
}

void sub_18377C890(uint64_t a1, void *a2, void *a3)
{
  v42 = a2;
  v5 = a3;
  CodepointInString = objc_msgSend_firstCodepointInString(v42, v6, v7, v8, v9, v10);
  v17 = sub_1837A4260(CodepointInString, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v18, v17, v19, v20, v21);

  if (!v22)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v28, v27, v17, v29, v30);
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v23, v17, v24, v25, v26);
  v37 = objc_msgSend_copy(v5, v32, v33, v34, v35, v36);
  objc_msgSend_addObject_(v31, v38, v37, v39, v40, v41);
}

uint64_t sub_18377CA68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_removeAllObjects(*(*(a1 + 32) + 72), a2, a3, a4, a5, a6);
  *(*(a1 + 32) + 96) = 0;
  return result;
}

void sub_18377CBA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = sub_1837A4260(*(a1 + 64), a2, a3, a4, a5, a6);
  v13 = v7;
  if (*(a1 + 56) >= 1)
  {
    v14 = objc_msgSend_stringByAppendingFormat_(v7, v8, @" %d", v10, v11, v12, *(a1 + 56));

    v13 = v14;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v8, v9, v10, v11, v12);
  *(*(a1 + 32) + 96) = v15;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v23 = objc_msgSend_set(MEMORY[0x1E695DFD8], v18, v19, v20, v21, v22);
  v25 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v24, v16, v17, 0, v23);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 72), v26, v25, v13, v27, v28);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v29 = qword_1EA84DC98;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v13;
    _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_DEBUG, "Added personalized character for %@", buf, 0xCu);
  }

  *(*(a1 + 32) + 24) = 1;
}

void sub_18377D0B4(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC98;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_countOfStyleSamples(*(a1 + 32), v3, v4, v5, v6, v7);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *buf = 134218496;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    v105 = v10;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_DEFAULT, "Inventory data ingestion: removing style samples if needed for inventory size: %lu, maximum size: %lu, minimum sample count by characters: %lu", buf, 0x20u);
  }

  if (objc_msgSend_countOfStyleSamples(*(a1 + 32), v11, v12, v13, v14, v15) > *(a1 + 40))
  {
    v21 = objc_msgSend_countOfStyleSamples(*(a1 + 32), v16, v17, v18, v19, v20);
    v22 = *(a1 + 40);
    v89 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v23, v24, v25, v26, v27);
    v33 = objc_msgSend_styles(*(a1 + 32), v28, v29, v30, v31, v32);
    v39 = objc_msgSend_allValues(v33, v34, v35, v36, v37, v38);
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = sub_18377D6A4;
    v97[3] = &unk_1E6DDDAD0;
    v91 = v89;
    v98 = v91;
    objc_msgSend_enumerateObjectsUsingBlock_(v39, v40, v97, v41, v42, v43);

    v49 = objc_msgSend_allKeys(v91, v44, v45, v46, v47, v48);
    v54 = objc_msgSend_sortedArrayUsingComparator_(v49, v50, &unk_1EF1BCAD0, v51, v52, v53);

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v105 = 0;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v54;
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v93, v103, 16, v56);
    v62 = v21 - v22;
    if (v61)
    {
      v63 = *v94;
LABEL_8:
      v64 = 0;
      while (1)
      {
        if (*v94 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v65 = objc_msgSend_objectForKeyedSubscript_(v91, v57, *(*(&v93 + 1) + 8 * v64), v58, v59, v60);
        v70 = objc_msgSend_sortedArrayUsingComparator_(v65, v66, &unk_1EF1BCAF0, v67, v68, v69);
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = sub_18377D890;
        v92[3] = &unk_1E6DDDC60;
        v71 = *(a1 + 48);
        v92[4] = *(a1 + 32);
        v92[5] = buf;
        v92[6] = v71;
        v92[7] = v62;
        objc_msgSend_enumerateObjectsUsingBlock_(v70, v72, v92, v73, v74, v75);
        v76 = *(*&buf[8] + 24) < v62;

        if (!v76)
        {
          break;
        }

        if (v61 == ++v64)
        {
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v93, v103, 16, v60);
          if (v61)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v77 = *(*&buf[8] + 24);
    if (v77 > v62)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v78 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = *(*&buf[8] + 24);
        *v99 = 134218240;
        v100 = v79;
        v101 = 2048;
        v102 = v62;
        _os_log_impl(&dword_18366B000, v78, OS_LOG_TYPE_ERROR, "Deleted more samples (%ld) than requested (%ld).", v99, 0x16u);
      }

      v77 = *(*&buf[8] + 24);
    }

    if (v77 > v62)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v80 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        v81 = *(*&buf[8] + 24);
        *v99 = 134218240;
        v100 = v81;
        v101 = 2048;
        v102 = v62;
        _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_FAULT, "Deleted more samples (%ld) than requested (%ld).", v99, 0x16u);
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v82 = qword_1EA84DC98;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v88 = objc_msgSend_countOfStyleSamples(*(a1 + 32), v83, v84, v85, v86, v87);
      *v99 = 134217984;
      v100 = v88;
      _os_log_impl(&dword_18366B000, v82, OS_LOG_TYPE_DEFAULT, "Inventory data ingestion: Inventory size after removing samples: %ld", v99, 0xCu);
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_18377D5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  _Block_object_dispose((v35 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_18377D6A4(uint64_t a1, void *a2)
{
  v39 = a2;
  v8 = objc_msgSend_creationTimestep(v39, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_samplingCount(v39, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v15, v14 + v8, v16, v17, v18);
  v24 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v20, v19, v21, v22, v23);

  if (!v24)
  {
    v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v31, v30, v19, v32, v33);
  }

  v34 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v25, v19, v27, v28, v29);
  objc_msgSend_addObject_(v34, v35, v39, v36, v37, v38);
}

uint64_t sub_18377D7EC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v10 = objc_msgSend_creationDate(a2, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_creationDate(v4, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_compare_(v10, v17, v16, v18, v19, v20);

  return v21;
}

void sub_18377D85C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18377D890(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = a2;
  if (objc_msgSend_script(v21, v6, v7, v8, v9, v10) != 1 || (v16 = *(a1 + 32), objc_msgSend_characterCoverage(v21, v11, v12, v13, v14, v15), v17 = objc_claimAutoreleasedReturnValue(), LOBYTE(v16) = objc_msgSend__unsafeHasLowSampleCountForCharacters_minimumSampleCount_(v16, v18, v17, *(a1 + 48), v19, v20), v17, (v16 & 1) == 0))
  {
    objc_msgSend__unsafeRemoveSample_(*(a1 + 32), v11, v21, v13, v14, v15);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  if (*(*(*(a1 + 40) + 8) + 24) >= *(a1 + 56))
  {
    *a4 = 1;
  }
}

void sub_18377DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18377DA44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"0", a4, a5, a6, @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", 0);
  v12 = objc_msgSend_characterCoverage(*(a1 + 32), v7, v8, v9, v10, v11);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_isSubsetOfSet_(v17, v13, v12, v14, v15, v16);
}

void sub_18377DDB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_styles(*(a1 + 32), a2, a3, a4, a5, a6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18377DE70;
  v12[3] = &unk_1E6DDDC88;
  v13 = *(a1 + 40);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v8, v12, v9, v10, v11);
}

void sub_18377E058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x1865E5EC0](v10, 0x10F1C40794A528ELL);

  _Unwind_Resume(a1);
}

void sub_18377E138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x1865E5EC0](v10, 0x10F1C40794A528ELL);

  _Unwind_Resume(a1);
}

void sub_18377E324(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a2 - 2;
  if (a2 < 2)
  {
    return;
  }

  v5 = v3 >> 1;
  if ((v3 >> 1) < (0xAAAAAAAAAAAAAAABLL * (&a3[-a1] >> 3)))
  {
    return;
  }

  v7 = (0x5555555555555556 * (&a3[-a1] >> 3)) | 1;
  v8 = (a1 + 24 * v7);
  if (0x5555555555555556 * (&a3[-a1] >> 3) + 2 < a2 && *v8 == 1)
  {
    if (*(v8 + 24) != 1 || (v9 = *(v8 + 1), v10 = *(v8 + 7), v9 > v10) || v9 == v10 && *(v8 + 1) == 1 && (*(v8 + 25) != 1 || *(v8 + 2) > *(v8 + 8)))
    {
      v8 += 3;
      v7 = 0x5555555555555556 * (&a3[-a1] >> 3) + 2;
    }
  }

  v11 = *a3;
  if (*v8)
  {
    if ((*a3 & 1) == 0)
    {
      return;
    }

    v12 = *(v8 + 1);
    v13 = *(a3 + 1);
    if (v12 > v13)
    {
      return;
    }

    if (v12 == v13)
    {
      if (*(v8 + 1) == 1)
      {
        if (a3[1] != 1)
        {
          return;
        }

        v13 = *(v8 + 1);
        if (*(v8 + 2) > *(a3 + 2))
        {
          return;
        }
      }

      else
      {
        v13 = *(v8 + 1);
      }
    }
  }

  else
  {
    v13 = *(a3 + 1);
  }

  v14 = a3[1];
  v45 = *(a3 + 1);
  v15 = *(a3 + 2);
  v46 = *(a3 + 2);
  *(a3 + 2) = 0;
  v16 = *v8;
  *(a3 + 2) = *(v8 + 2);
  *a3 = v16;
  v17 = v8[2];
  v8[2] = 0;
  v18 = *(a3 + 2);
  *(a3 + 2) = v17;

  if (v5 >= v7)
  {
    if (v11)
    {
      v19 = v8;
      if (v14)
      {
        while (1)
        {
          v31 = v19;
          v32 = 2 * v7;
          v7 = (2 * v7) | 1;
          v19 = (a1 + 24 * v7);
          v33 = v32 + 2;
          if (v33 < a2 && *v19 == 1)
          {
            if (*(v19 + 24) != 1 || (v34 = *(v19 + 1), v35 = *(v19 + 7), v34 > v35) || v34 == v35 && *(v19 + 1) == 1 && (*(v19 + 25) != 1 || *(v19 + 2) > *(v19 + 8)))
            {
              v19 += 3;
              v7 = v33;
            }
          }

          if (*v19 == 1)
          {
            v36 = *(v19 + 1);
            if (v36 > v13 || v36 == v13 && *(v19 + 1) == 1 && *(v19 + 2) > v15)
            {
              break;
            }
          }

          v28 = *v19;
          *(v31 + 2) = *(v19 + 2);
          *v31 = v28;
          v29 = v19[2];
          v19[2] = 0;
          v30 = v31[2];
          v31[2] = v29;

          if (v5 < v7)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        while (1)
        {
          v31 = v19;
          v40 = 2 * v7;
          v7 = (2 * v7) | 1;
          v19 = (a1 + 24 * v7);
          v41 = v40 + 2;
          if (v41 < a2 && *v19 == 1)
          {
            if (*(v19 + 24) != 1 || (v42 = *(v19 + 1), v43 = *(v19 + 7), v42 > v43) || v42 == v43 && *(v19 + 1) == 1 && (*(v19 + 25) != 1 || *(v19 + 2) > *(v19 + 8)))
            {
              v19 += 3;
              v7 = v41;
            }
          }

          if (*v19 == 1)
          {
            v44 = *(v19 + 1);
            if (v44 > v13 || v44 == v13 && (*(v19 + 1) & 1) != 0)
            {
              break;
            }
          }

          v37 = *v19;
          *(v31 + 2) = *(v19 + 2);
          *v31 = v37;
          v38 = v19[2];
          v19[2] = 0;
          v39 = v31[2];
          v31[2] = v38;

          if (v5 < v7)
          {
            goto LABEL_20;
          }
        }
      }

      v19 = v31;
      goto LABEL_20;
    }

    while (1)
    {
      v21 = 2 * v7;
      v7 = (2 * v7) | 1;
      v19 = (a1 + 24 * v7);
      v22 = v21 + 2;
      if (v22 < a2 && *v19 == 1)
      {
        if (*(v19 + 24) != 1 || (v23 = *(v19 + 1), v24 = *(v19 + 7), v23 > v24) || v23 == v24 && *(v19 + 1) == 1 && (*(v19 + 25) != 1 || *(v19 + 2) > *(v19 + 8)))
        {
          v19 += 3;
          v7 = v22;
        }
      }

      if (*v19)
      {
        break;
      }

      v25 = *v19;
      *(v8 + 2) = *(v19 + 2);
      *v8 = v25;
      v26 = v19[2];
      v19[2] = 0;
      v27 = v8[2];
      v8[2] = v26;

      v8 = v19;
      if (v5 < v7)
      {
        goto LABEL_20;
      }
    }
  }

  v19 = v8;
LABEL_20:
  *v19 = v11;
  *(v19 + 1) = v14;
  *(v19 + 1) = v45;
  *(v19 + 1) = v13;
  *(v19 + 2) = v15;
  v20 = v19[2];
  v19[2] = v46;
}

void **sub_18377E7BC(void **a1)
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
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

BOOL sub_18377E81C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = objc_msgSend_samplingCount(v3, v5, v6, v7, v8, v9);
  if (v10 == objc_msgSend_samplingCount(v4, v11, v12, v13, v14, v15))
  {
    v21 = objc_msgSend_creationDate(v3, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_creationDate(v4, v22, v23, v24, v25, v26);
    v28 = v21 > v27;
  }

  else
  {
    v29 = objc_msgSend_samplingCount(v3, v16, v17, v18, v19, v20);
    v28 = v29 > objc_msgSend_samplingCount(v4, v30, v31, v32, v33, v34);
  }

  return v28;
}

void sub_18377E8F4(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = (a2 - 2) >> 1;
  if (v3 >= (a3 - a1) >> 3)
  {
    v4 = a3;
    v7 = (a3 - a1) >> 2;
    v8 = v7 | 1;
    v9 = (a1 + 8 * (v7 | 1));
    v10 = v7 + 2;
    if (v7 + 2 < a2)
    {
      v11 = sub_18377E81C(*v9, v9[1]);
      v12 = 8;
      if (!v11)
      {
        v12 = 0;
      }

      v9 = (v9 + v12);
      if (v11)
      {
        v8 = v10;
      }
    }

    if (!sub_18377E81C(*v9, *v4))
    {
      v13 = *v4;
      *v4 = 0;
      do
      {
        v14 = v4;
        v4 = v9;
        v15 = *v9;
        *v9 = 0;
        v16 = *v14;
        *v14 = v15;

        if (v3 < v8)
        {
          break;
        }

        v17 = (2 * v8) | 1;
        v9 = (a1 + 8 * v17);
        v8 = 2 * v8 + 2;
        if (v8 >= a2)
        {
          v8 = v17;
        }

        else
        {
          v18 = sub_18377E81C(*v9, v9[1]);
          if (v18)
          {
            v19 = 8;
          }

          else
          {
            v19 = 0;
          }

          v9 = (v9 + v19);
          if (!v18)
          {
            v8 = v17;
          }
        }
      }

      while (!sub_18377E81C(*v9, v13));
      v20 = *v4;
      *v4 = v13;
    }
  }
}

IOSurfaceRef sub_18377EA64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30[0] = *MEMORY[0x1E696D130];
  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], a2, a1, a4, a5, a6);
  v31[0] = v9;
  v30[1] = *MEMORY[0x1E696CF58];
  v14 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v10, a2, v11, v12, v13);
  v31[1] = v14;
  v30[2] = *MEMORY[0x1E696CE50];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v15, a3, v16, v17, v18);
  v31[2] = v19;
  v30[3] = *MEMORY[0x1E696CE58];
  v24 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v20, a4, v21, v22, v23);
  v31[3] = v24;
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v31, v30, 4, v26);

  v28 = IOSurfaceCreate(v27);
  return v28;
}

void sub_18377EBB8(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

id sub_18377EBFC(void *a1, void *a2, vImagePixelCount a3, void *a4)
{
  src.data = a1;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 2 * a3;
  v8.data = a2;
  v8.height = 1;
  v8.width = a3;
  v8.rowBytes = 4 * a3;
  result = vImageConvert_Planar16FtoPlanarF(&src, &v8, 0);
  if (a4)
  {
    if (result)
    {
      result = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"com.apple.corehandwriting", -1005, 0, v7);
      *a4 = result;
    }
  }

  return result;
}

id sub_18377EC80(void *a1, void *a2, vImagePixelCount a3, void *a4)
{
  src.data = a1;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 4 * a3;
  v8.data = a2;
  v8.height = 1;
  v8.width = a3;
  v8.rowBytes = 2 * a3;
  result = vImageConvert_PlanarFtoPlanar16F(&src, &v8, 0);
  if (a4)
  {
    if (result)
    {
      result = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"com.apple.corehandwriting", -1005, 0, v7);
      *a4 = result;
    }
  }

  return result;
}

void sub_18377ED04()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.CoreHandwriting.StrokeGroupID", v2);
  v1 = qword_1EA84CEF0;
  qword_1EA84CEF0 = v0;
}

uint64_t sub_18377ED68(uint64_t result)
{
  v1 = qword_1EA84CB90;
  *(*(*(result + 32) + 8) + 24) = qword_1EA84CB90;
  qword_1EA84CB90 = v1 + 1;
  return result;
}

void sub_18377FD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_183781098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_1837819B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18377E7BC(va);
  _Unwind_Resume(a1);
}

double sub_183781A1C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v8 = objc_msgSend_classification(v2, v3, v4, v5, v6, v7);
  isStrokeClassificationTextOrMath = objc_msgSend_isStrokeClassificationTextOrMath_(CHStrokeUtilities, v9, v8, v10, v11, v12);
  objc_msgSend_bounds(v2, v14, v15, v16, v17, v18);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  objc_msgSend_normalizedSize(v2, v25, v26, v27, v28, v29);
  if (v35 <= 0.0)
  {
    v36 = v22;
    v37 = v24;
  }

  else
  {
    objc_msgSend_normalizedSize(v2, v30, v31, v32, v33, v34);
  }

  v38 = v36 * 0.1;
  if (isStrokeClassificationTextOrMath)
  {
    v38 = v37 * 1.5;
  }

  v39 = v20 - v38 * 0.5;

  return v39;
}

uint64_t sub_183781EE4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v11 = objc_msgSend_ancestorIdentifier(v4, v6, v7, v8, v9, v10);
  if (v11 >= objc_msgSend_ancestorIdentifier(v5, v12, v13, v14, v15, v16))
  {
    v23 = objc_msgSend_ancestorIdentifier(v4, v17, v18, v19, v20, v21);
    v22 = v23 != objc_msgSend_ancestorIdentifier(v5, v24, v25, v26, v27, v28);
  }

  else
  {
    v22 = -1;
  }

  return v22;
}

id sub_1837826D8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v10 = objc_msgSend_drawing(v4, v5, v6, v7, v8, v9);

  if (v10)
  {
    v11 = sub_183782764(a2, v4, 1);

    v4 = v11;
    objc_msgSend_resampleDrawing(v11, v12, v13, v14, v15, v16);
  }

  v17 = v4;

  return v4;
}

id sub_183782764(void *a1, void *a2, int a3)
{
  v215[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v11 = objc_msgSend_drawing(v5, v6, v7, v8, v9, v10);
  v17 = v11;
  if (a3)
  {
    v18 = objc_msgSend_sortedDrawingUsingMinXCoordinate(v11, v12, v13, v14, v15, v16);

    v17 = v18;
  }

  v19 = objc_msgSend_content(v5, v12, v13, v14, v15, v16);
  v25 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v20, v21, v22, v23, v24);
  v30 = objc_msgSend_componentsSeparatedByCharactersInSet_(v19, v26, v25, v27, v28, v29);

  v35 = objc_msgSend_indexesOfObjectsPassingTest_(v30, v31, &unk_1EF1BCBF0, v32, v33, v34);
  v40 = objc_msgSend_objectsAtIndexes_(v30, v36, v35, v37, v38, v39);

  if (objc_msgSend_count(v40, v41, v42, v43, v44, v45) <= 1)
  {
    goto LABEL_6;
  }

  v51 = objc_msgSend_count(v40, v46, v47, v48, v49, v50);
  if (v51 > objc_msgSend_strokeCount(v17, v52, v53, v54, v55, v56))
  {
    v57 = [CHSynthesisContractViolation alloc];
    v63 = objc_msgSend_count(v40, v58, v59, v60, v61, v62);
    v65 = objc_msgSend_initWithLocationRange_comment_kind_(v57, v64, 0, v63, 0, 2);
    v215[0] = v65;
    v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v66, v215, 1, v67, v68);
    objc_msgSend_setContractViolations_(v5, v70, v69, v71, v72, v73);

LABEL_6:
    v74 = v5;
    goto LABEL_7;
  }

  v76 = a1[5];
  v208 = a1[4];
  v209 = v76;
  if (v76)
  {
    atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v77 = a1[2];
  v78 = a1[3];
  v206 = v77;
  v207 = v78;
  if (v78)
  {
    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(buf, 0, sizeof(buf));
  *&v196 = 0;
  v80 = *v77;
  v79 = v77[1];
  v194 = v17;
  if (v79 != v80)
  {
    if (((v79 - v80) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  sub_18384AA0C(buf, &v210);
  if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v78->__on_zero_shared)(v78);
    std::__shared_weak_count::__release_weak(v78);
  }

  v86 = v209;
  if (v209 && !atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v86->__on_zero_shared)(v86);
    std::__shared_weak_count::__release_weak(v86);
  }

  v87 = objc_msgSend_count(v40, v81, v82, v83, v84, v85);
  if (v87)
  {
    if (!(v87 >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v97 = v211;
  if (v211 >= v212)
  {
    v98 = v210;
    v99 = v211 - v210;
    v100 = v211 - v210;
    v101 = v100 + 1;
    if ((v100 + 1) >> 61)
    {
      sub_1836D58DC();
    }

    v102 = v212 - v210;
    if ((v212 - v210) >> 2 > v101)
    {
      v101 = v102 >> 2;
    }

    if (v102 >= 0x7FFFFFFFFFFFFFF8)
    {
      v103 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v103 = v101;
    }

    if (v103)
    {
      if (!(v103 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v104 = (8 * v100);
    *v104 = 0;
    v93 = v104 + 1;
    memcpy(0, v98, v99);
    v210 = 0;
    v212 = 0;
    if (v98)
    {
      operator delete(v98);
    }

    v94 = 0;
    v211 = v93;
    if (!v93)
    {
      goto LABEL_46;
    }

LABEL_27:
    v95 = 0;
    v96 = v94;
    do
    {
      if (*v94)
      {
        v95 += *v94;
      }

      else if (v95)
      {
        operator new();
      }

      ++v94;
    }

    while (v94 != v93);
    goto LABEL_47;
  }

  *v211 = 0;
  v93 = v97 + 1;
  v94 = v210;
  v211 = v93;
  if (v210 != v93)
  {
    goto LABEL_27;
  }

LABEL_46:
  v96 = v94;
LABEL_47:
  v17 = v194;
  v105 = v96;
  if (objc_msgSend_count(v40, v88, v89, v90, v91, v92))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v153 = qword_1EA84DC98;
    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v153, OS_LOG_TYPE_ERROR, "Synthesizer: Error segment drawing. Different segment number.", buf, 2u);
    }

    v154 = [CHSynthesisContractViolation alloc];
    v160 = objc_msgSend_count(v40, v155, v156, v157, v158, v159);
    v162 = objc_msgSend_initWithLocationRange_comment_kind_(v154, v161, 0, v160, 0, 2);
    v214 = v162;
    v166 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v163, &v214, 1, v164, v165);
    objc_msgSend_setContractViolations_(v5, v167, v166, v168, v169, v170);

    v74 = v5;
  }

  else
  {
    __p = 0;
    v204 = 0;
    v205 = 0;
    v111 = sub_1836E862C(v194, v40, &__p);
    if (__p)
    {
      v204 = __p;
      operator delete(__p);
    }

    if (v111 && (v112 = objc_msgSend_count(v111, v106, v107, v108, v109, v110), v112 == objc_msgSend_count(v40, v113, v114, v115, v116, v117)))
    {
      v118 = [CHSynthesisResult alloc];
      v193 = objc_msgSend_content(v5, v119, v120, v121, v122, v123);
      v129 = objc_msgSend_inventoryDebuggingStyleDrawing(v5, v124, v125, v126, v127, v128);
      v135 = objc_msgSend_inventoryDebuggingStyleContent(v5, v130, v131, v132, v133, v134);
      v141 = objc_msgSend_numberOfNotSynthesizedCharacters(v5, v136, v137, v138, v139, v140);
      v74 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_inventoryDebuggingStyleDrawing_inventoryDebuggingStyleContent_numberOfNotSynthesizedCharacters_(v118, v142, v193, v194, v40, v111, v129, v135, v141);

      if (objc_msgSend_hasPrincipalLines(v5, v143, v144, v145, v146, v147))
      {
        if (v5)
        {
          objc_msgSend_principalLines(v5, v148, v149, v150, v151, v152);
        }

        else
        {
          v201 = 0u;
          v202 = 0u;
          v199 = 0u;
          v200 = 0u;
          v197 = 0u;
          v198 = 0u;
          *buf = 0u;
          v196 = 0u;
        }

        objc_msgSend_setPrincipalLines_(v74, v148, buf, v150, v151, v152);
      }

      objc_msgSend_averageDistanceBetweenElements(v5, v148, v149, v150, v151, v152);
      objc_msgSend_setAverageDistanceBetweenElements_(v74, v188, v189, v190, v191, v192);
    }

    else
    {
      v171 = [CHSynthesisContractViolation alloc];
      v177 = objc_msgSend_count(v40, v172, v173, v174, v175, v176);
      v179 = objc_msgSend_initWithLocationRange_comment_kind_(v171, v178, 0, v177, 0, 2);
      v213 = v179;
      v183 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v180, &v213, 1, v181, v182);
      objc_msgSend_setContractViolations_(v5, v184, v183, v185, v186, v187);

      v74 = v5;
    }
  }

  if (v105)
  {
    v211 = v105;
    operator delete(v105);
  }

LABEL_7:

  return v74;
}

void sub_183782FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  if (v35)
  {
    operator delete(v35);
  }

  v40 = *(v38 - 160);
  if (v40)
  {
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

id sub_183783150(uint64_t a1, void *a2, void *a3)
{
  v178 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = objc_msgSend_drawing(v4, v5, v6, v7, v8, v9);

  if (v10)
  {
    v11 = v4;
    v163 = objc_msgSend_drawing(v11, v12, v13, v14, v15, v16);
    v22 = objc_msgSend_content(v11, v17, v18, v19, v20, v21);
    v164 = v163;
    v172 = 0;
    v173 = &v172;
    v174 = 0x3032000000;
    v175 = sub_183783C7C;
    v176 = sub_183783C8C;
    v177 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = objc_msgSend_length(v22, v23, v24, v25, v26, v27);
    v171[0] = MEMORY[0x1E69E9820];
    v171[1] = 3221225472;
    v171[2] = sub_183783C94;
    v171[3] = &unk_1E6DDC1A8;
    v171[4] = &v172;
    objc_msgSend_enumerateCodepointsInRange_usingBlock_(v22, v29, 0, v28, v171, v30);
    v31 = v173[5];
    v36 = objc_msgSend_indexesOfObjectsPassingTest_(v31, v32, &unk_1EF1BCC10, v33, v34, v35);
    v41 = objc_msgSend_objectsAtIndexes_(v31, v37, v36, v38, v39, v40);

    if (objc_msgSend_count(v41, v42, v43, v44, v45, v46) < 2 || (v52 = objc_msgSend_count(v41, v47, v48, v49, v50, v51), v52 > objc_msgSend_strokeCount(v164, v53, v54, v55, v56, v57)))
    {
      v58 = 0;
      goto LABEL_5;
    }

    v134 = a2[5];
    v168 = a2[4];
    v169 = v134;
    if (v134)
    {
      atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v135 = a2[2];
    v136 = a2[3];
    if (v136)
    {
      atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p = 0;
    v166 = 0;
    v167 = 0;
    v138 = *v135;
    v137 = v135[1];
    if (v137 != v138)
    {
      if (((v137 - v138) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1836D58DC();
    }

    sub_18384AA0C(&__p, v170);
    if (v136 && !atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v136->__on_zero_shared)(v136);
      std::__shared_weak_count::__release_weak(v136);
    }

    v144 = v169;
    if (v169 && !atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v144->__on_zero_shared)(v144);
      std::__shared_weak_count::__release_weak(v144);
    }

    v145 = objc_msgSend_count(v41, v139, v140, v141, v142, v143);
    if (v145)
    {
      if (!(v145 >> 61))
      {
        operator new();
      }

      sub_1836D58DC();
    }

    if (v170[0] != v170[1])
    {
      operator new();
    }

    if (objc_msgSend_count(v41, v146, v147, v148, v149, v150))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v156 = qword_1EA84DC98;
      if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_18366B000, v156, OS_LOG_TYPE_ERROR, "Synthesizer: Error segment drawing. Different segment number.", &__p, 2u);
      }
    }

    else
    {
      __p = 0;
      v166 = 0;
      v167 = 0;
      v156 = sub_1836E862C(v164, v41, &__p);
      if (__p)
      {
        v166 = __p;
        operator delete(__p);
      }

      if (v156)
      {
        v157 = objc_msgSend_count(v156, v151, v152, v153, v154, v155);
        if (v157 == objc_msgSend_count(v41, v158, v159, v160, v161, v162))
        {
          v156 = v156;
          v58 = v156;
          goto LABEL_45;
        }
      }
    }

    v58 = 0;
LABEL_45:

    if (v170[0])
    {
      operator delete(v170[0]);
    }

LABEL_5:

    _Block_object_dispose(&v172, 8);
    if (v58)
    {
      v59 = v164;
      v60 = v58;
      if (objc_msgSend_count(v60, v61, v62, v63, v64, v65))
      {
        v70 = objc_msgSend_objectAtIndexedSubscript_(v60, v66, 0, v67, v68, v69);
        objc_msgSend_boundsForStrokeIndexes_(v59, v71, v70, v72, v73, v74);
        v76 = v75;
        y = v77;
        v80 = v79;
        height = v81;

        v88 = 0;
        v89 = 0.0;
        while (v88 + 1 < objc_msgSend_count(v60, v83, v84, v85, v86, v87))
        {
          v94 = objc_msgSend_objectAtIndexedSubscript_(v60, v90, v88 + 1, v91, v92, v93);
          objc_msgSend_boundsForStrokeIndexes_(v59, v95, v94, v96, v97, v98);
          v100 = v99;
          v181.origin.y = v101;
          v181.size.width = v102;
          v181.size.height = v103;
          v179.origin.x = v76;
          v179.origin.y = y;
          v179.size.width = v80;
          v179.size.height = height;
          v181.origin.x = v100;
          v180 = CGRectUnion(v179, v181);
          x = v180.origin.x;
          y = v180.origin.y;
          width = v180.size.width;
          height = v180.size.height;

          v89 = v100 - (v76 + v80) + v89;
          ++v88;
          v76 = x;
          v80 = width;
        }

        if (v88)
        {

          objc_msgSend_setAverageDistanceBetweenElements_(v11, v106, v107, v108, v109, v110, (v89 / v88));
LABEL_14:

          v126 = sub_183782764(a2, v11, 0);

          v4 = v126;
          objc_msgSend_resampleDrawing(v126, v127, v128, v129, v130, v131);
          goto LABEL_15;
        }
      }
    }

    else
    {
      v111 = [CHSynthesisContractViolation alloc];
      v117 = objc_msgSend_length(v22, v112, v113, v114, v115, v116);
      v59 = objc_msgSend_initWithLocationRange_comment_kind_(v111, v118, 0, v117, 0, 2);
      v172 = v59;
      v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v119, &v172, 1, v120, v121);
      objc_msgSend_setContractViolations_(v11, v122, v60, v123, v124, v125);
    }

    goto LABEL_14;
  }

LABEL_15:
  v132 = v4;

  return v4;
}

void sub_183783914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v37)
  {
    operator delete(v37);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id sub_183783A88(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v10 = *a2;
  v11 = a2[1];
  if (!v11)
  {
    v14 = *(v10 + 56);
    v15 = *(v10 + 64);
    if (*(v10 + 48))
    {
      v12 = *(v10 + 40);
      v16 = *(v10 + 72);
      if (*(v10 + 80))
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  v14 = *(v10 + 56);
  v15 = *(v10 + 64);
  v16 = *(v10 + 72);
  v17 = *(v10 + 80);
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_18:
    v12 = -1.0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v17 & 1) == 0)
  {
LABEL_14:
    if ((v15 & 1) == 0)
    {
      v14 = -1.0;
    }

LABEL_19:
    objc_msgSend_scaleDrawingWithWidth_height_desiredDistanceBetweenDigitCenters_(v9, v4, v5, v6, v7, v8, v14, v12, -1.0);
    goto LABEL_20;
  }

LABEL_5:
  if (v15)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC98;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_ERROR, "Synthesizer: CHTextSynthesisOptionFitWidth option is ignored in CHTextSynthesisOptionDistanceBetweenDigitsCenters mode.", v20, 2u);
    }
  }

  objc_msgSend_scaleDrawingWithWidth_height_desiredDistanceBetweenDigitCenters_(v9, v4, v5, v6, v7, v8, -1.0, v12, v16);
LABEL_20:

  return v9;
}

uint64_t sub_183783C7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183783C94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v11 = sub_1837A4260(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_183784F34(uint64_t a1)
{
  v149 = *MEMORY[0x1E69E9840];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v135, v147, 16, v3);
  if (v4)
  {
    v119 = *v136;
    v117 = v140;
    do
    {
      v10 = 0;
      v120 = v4;
      do
      {
        if (*v136 != v119)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v135 + 1) + 8 * v10);
        v12 = MEMORY[0x1E696AD98];
        v13 = objc_msgSend_uniqueIdentifier(v11, v5, v6, v7, v8, v9, v117);
        v121 = objc_msgSend_numberWithInteger_(v12, v14, v13, v15, v16, v17);
        v18 = *(a1 + 40);
        v19 = *(a1 + 32);
        v123 = *(a1 + 48);
        v124 = v11;
        v122 = v19;
        if (v18)
        {
          v25 = objc_msgSend_set(MEMORY[0x1E695DFA8], v20, v21, v22, v23, v24);
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v31 = objc_msgSend_strokeIdentifiers(v124, v26, v27, v28, v29, v30);
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v142, v148, 16, v33);
          if (v39)
          {
            v40 = *v143;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v143 != v40)
                {
                  objc_enumerationMutation(v31);
                }

                v42 = *(*(&v142 + 1) + 8 * i);
                v43 = objc_msgSend_strokeProvider(v18, v34, v35, v36, v37, v38);
                v48 = objc_msgSend_strokeIdentifierFromData_(v43, v44, v42, v45, v46, v47);

                objc_msgSend_addObject_(v25, v49, v48, v50, v51, v52);
              }

              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v142, v148, 16, v38);
            }

            while (v39);
          }

          v57 = objc_msgSend_queryItemStableIdentifierForStrokeGroup_(CHTextInputQuery, v53, v124, v54, v55, v56);
          if (objc_opt_respondsToSelector())
          {
            v63 = MEMORY[0x1E695DF70];
            v64 = objc_msgSend_count(v122, v58, v59, v60, v61, v62);
            v69 = objc_msgSend_arrayWithCapacity_(v63, v65, v64, v66, v67, v68);
            v139[0] = MEMORY[0x1E69E9820];
            v139[1] = 3221225472;
            v140[0] = sub_183785AA0;
            v140[1] = &unk_1E6DDDD88;
            v70 = v69;
            v141 = v70;
            objc_msgSend_enumerateObjectsUsingBlock_(v122, v71, v139, v72, v73, v74);
            v77 = objc_msgSend_textInputTargetForItemStableIdentifier_strokeIdentifiers_simultaneousItemStableIdentifiers_(v123, v75, v57, v25, v70, v76);
          }

          else
          {
            v77 = objc_msgSend_textInputTargetForItemStableIdentifier_strokeIdentifiers_(v123, v58, v57, v25, v61, v62);
          }
        }

        else
        {
          v77 = 0;
        }

        if (v77)
        {
          dispatch_group_enter(*(a1 + 56));
          v83 = objc_msgSend_set(MEMORY[0x1E695DFA8], v78, v79, v80, v81, v82);
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v89 = objc_msgSend_strokeIdentifiers(v124, v84, v85, v86, v87, v88);
          v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v131, v146, 16, v91);
          if (v97)
          {
            v98 = *v132;
            do
            {
              for (j = 0; j != v97; ++j)
              {
                if (*v132 != v98)
                {
                  objc_enumerationMutation(v89);
                }

                v100 = *(*(&v131 + 1) + 8 * j);
                v101 = objc_msgSend_strokeProvider(*(a1 + 40), v92, v93, v94, v95, v96);
                v106 = objc_msgSend_strokeIdentifierFromData_(v101, v102, v100, v103, v104, v105);

                objc_msgSend_addObject_(v83, v107, v106, v108, v109, v110);
              }

              v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v92, &v131, v146, 16, v96);
            }

            while (v97);
          }

          v111 = *(a1 + 48);
          v125[0] = MEMORY[0x1E69E9820];
          v125[1] = 3221225472;
          v125[2] = sub_18378556C;
          v125[3] = &unk_1E6DDDD38;
          v112 = v77;
          v126 = v112;
          v113 = *(a1 + 64);
          v114 = *(a1 + 72);
          v127 = v113;
          v130 = v114;
          v128 = v121;
          v129 = *(a1 + 56);
          objc_msgSend_fetchContentInfoForTextInputTarget_strokeIdentifiers_completion_(v111, v115, v112, v83, v125, v116);
        }

        ++v10;
      }

      while (v10 != v120);
      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v135, v147, 16, v9);
    }

    while (v4);
  }
}

void sub_18378556C(uint64_t a1, void *a2)
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = v3;
  if (!v3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v92 = qword_1EA84DC60;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v98 = *(a1 + 32);
      v111 = 138412290;
      v112 = v98;
      _os_log_impl(&dword_18366B000, v92, OS_LOG_TYPE_ERROR, "Received nil target content info for target %@", &v111, 0xCu);
    }

    goto LABEL_34;
  }

  v10 = objc_msgSend_referenceSubstring(v3, v4, v5, v6, v7, v8);
  v16 = objc_msgSend_length(v10, v11, v12, v13, v14, v15);
  objc_msgSend_referenceSubstringRange(v9, v17, v18, v19, v20, v21);
  v23 = v22;

  v29 = v16 == v23;
  if (v16 != v23)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v30 = qword_1EA84DC60;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_msgSend_referenceSubstring(v9, v31, v32, v33, v34, v35);
      v42 = objc_msgSend_length(v36, v37, v38, v39, v40, v41);
      objc_msgSend_referenceSubstringRange(v9, v43, v44, v45, v46, v47);
      v111 = 134218240;
      v112 = v42;
      v113 = 2048;
      v114 = v48;
      _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_ERROR, "Target content info is invalid, ignoring. referenceSubstring.length %ld != referenceSubstringRange.length %ld", &v111, 0x16u);
    }
  }

  if (objc_msgSend_selectedTextRange(v9, v24, v25, v26, v27, v28) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v54 = objc_msgSend_selectedTextRange(v9, v49, v50, v51, v52, v53);
    if (&v59[v54] > objc_msgSend_textContentLength(v9, v59, v55, v56, v57, v58))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v60 = qword_1EA84DC60;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v116.location = objc_msgSend_selectedTextRange(v9, v61, v62, v63, v64, v65);
        v66 = NSStringFromRange(v116);
        v72 = objc_msgSend_textContentLength(v9, v67, v68, v69, v70, v71);
        v111 = 138412546;
        v112 = v66;
        v113 = 2048;
        v114 = v72;
        _os_log_impl(&dword_18366B000, v60, OS_LOG_TYPE_ERROR, "Target content info is invalid, ignoring. selectedTextRange %@ invalid for length %ld", &v111, 0x16u);
      }

      v29 = 0;
    }
  }

  if (objc_msgSend_strokeCoveredTextRange(v9, v49, v50, v51, v52, v53) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v78 = objc_msgSend_strokeCoveredTextRange(v9, v73, v74, v75, v76, v77);
    v80 = v79;
    v120.location = objc_msgSend_referenceSubstringRange(v9, v79, v81, v82, v83, v84);
    v120.length = v85;
    v117.location = v78;
    v117.length = v80;
    length = NSIntersectionRange(v117, v120).length;
    objc_msgSend_strokeCoveredTextRange(v9, length, v87, v88, v89, v90);
    if (length != v91)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v92 = qword_1EA84DC60;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v118.location = objc_msgSend_strokeCoveredTextRange(v9, v99, v100, v101, v102, v103);
        v104 = NSStringFromRange(v118);
        v119.location = objc_msgSend_referenceSubstringRange(v9, v105, v106, v107, v108, v109);
        v110 = NSStringFromRange(v119);
        v111 = 138412546;
        v112 = v104;
        v113 = 2112;
        v114 = v110;
        _os_log_impl(&dword_18366B000, v92, OS_LOG_TYPE_ERROR, "Target content info is invalid, ignoring. strokeCoveredTextRange %@ is not in range of referenceSubstringRange %@", &v111, 0x16u);
      }

      goto LABEL_34;
    }
  }

  if (v29)
  {
    v92 = *(a1 + 40);
    objc_sync_enter(v92);
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v96 = qword_1EA84DC60;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v97 = *(a1 + 32);
        v111 = 138412290;
        v112 = v97;
        _os_log_impl(&dword_18366B000, v96, OS_LOG_TYPE_ERROR, "Request for target content info timed out for target %@", &v111, 0xCu);
      }
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v93, v9, *(a1 + 48), v94, v95);
    }

    objc_sync_exit(v92);
LABEL_34:
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_183785AA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_msgSend_queryItemStableIdentifierForStrokeGroup_(CHTextInputQuery, a2, a2, a4, a5, a6);
  objc_msgSend_addObject_(*(a1 + 32), v7, v11, v8, v9, v10);
}

uint64_t sub_183785B9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  *(a1 + 40) = 0;
  *a1 = &unk_1EF1BCC40;
  *(a1 + 8) = a1 + 16;
  *(a1 + 48) = objc_msgSend_currentLocale(MEMORY[0x1E695DF58], a2, a3, a4, a5, a6);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!v6)
  {
    v8 = @"default_style_inventory_A.lzfse";
    v10 = @"n";
    v9 = @"n";
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    v8 = @"default_style_inventory_cj_punctuation.lzfse";
    v9 = @"ideographicperiod";
    v10 = @"whitecornerbracketright";
LABEL_5:
    *(a1 + 64) = v10;
    v11 = *(a1 + 72);
    *(a1 + 72) = v9;

    v12 = *(a1 + 56);
    *(a1 + 56) = v8;
  }

  *(a1 + 80) = v6;
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("com.apple.CoreHandwriting.CHFPCharacterHolderAppleStyleQueue", v13);
  v15 = *(a1 + 40);
  *(a1 + 40) = v14;

  return a1;
}

BOOL sub_183785CB8(uint64_t a1)
{
  v221 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    return 1;
  }

  v201 = *(a1 + 36);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v194 = v3;
  v195 = v4;
  v196 = v5;
  v197 = v7;
  v13 = objc_msgSend_UTF8String(v197, v8, v9, v10, v11, v12);
  v193 = a1;
  if (!sub_1837A3290(v13, 0, __s))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC98;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_ERROR, "uncompressInventoryFromLZFSE Could not find annotated synthesis style.", buf, 2u);
    }

    goto LABEL_31;
  }

  v14 = strlen(__s);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v18 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  BYTE7(v216) = v14;
  if (v14)
  {
    memcpy(buf, __s, v14);
  }

  buf[v18] = 0;
  if ((SBYTE7(v216) & 0x80u) == 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v15, buf, 4, v16, v17);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v15, *buf, 4, v16, v17);
  }
  v20 = ;
  v25 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v21, v20, v22, v23, v24);
  v26 = MEMORY[0x1E696AEC0];
  v31 = objc_msgSend_stringByAppendingString_(v20, v27, @".size", v28, v29, v30);
  v34 = objc_msgSend_stringWithContentsOfFile_encoding_error_(v26, v32, v31, 4, 0, v33);

  v40 = objc_msgSend_integerValue(v34, v35, v36, v37, v38, v39);
  v43 = sub_1837A9EEC(v25, v40);
  if (v43)
  {
    v44 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v41, v43, 1, 0, v42);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v45 = qword_1EA84DC98;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v209) = 0;
      _os_log_impl(&dword_18366B000, v45, OS_LOG_TYPE_ERROR, "uncompressInventoryFromLZFSE Failed to load inventory", &v209, 2u);
    }

    v44 = 0;
  }

  if (SBYTE7(v216) < 0)
  {
    operator delete(*buf);
  }

  if (!v44)
  {
LABEL_31:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v89 = qword_1EA84DC98;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *__s = 0;
      _os_log_impl(&dword_18366B000, v89, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle Failed to load inventory", __s, 2u);
    }

    *(&v213 + 1) = 0;
    v214 = 0;
    *&v213 = &v213 + 8;
    goto LABEL_126;
  }

  *(&v209 + 1) = 0;
  v210 = 0;
  *&v209 = &v209 + 8;
  v46 = v44;
  v47 = v195;
  v48 = v196;
  v202 = v46;
  v200 = v194;
  sub_183786ECC(__s, v46, v47, 0, v200);
  if (v220 == *__s)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v90 = qword_1EA84DC98;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v47;
      _os_log_impl(&dword_18366B000, v90, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle failed to load character %@ for retrieving scale of the inventory.", buf, 0xCu);
    }

    v67 = 0;
    v61 = 0.0;
  }

  else
  {
    v54 = objc_msgSend_copy(**__s, v49, v50, v51, v52, v53);
    objc_msgSend_bounds(v54, v55, v56, v57, v58, v59);
    v61 = v60;

    sub_183786ECC(buf, v46, v48, 0, v200);
    v67 = *&buf[8] != *buf;
    if (*&buf[8] == *buf)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v68 = qword_1EA84DC98;
      v61 = 0.0;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v213) = 138412290;
        *(&v213 + 4) = v48;
        _os_log_impl(&dword_18366B000, v68, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle failed to load character %@ for retrieving scale of the inventory.", &v213, 0xCu);
      }
    }

    else
    {
      v68 = objc_msgSend_copy(**buf, v62, v63, v64, v65, v66);
      objc_msgSend_bounds(v68, v69, v70, v71, v72, v73);
      v75 = v74;
      v81 = objc_msgSend_copy(**buf, v76, v77, v78, v79, v80);
      objc_msgSend_bounds(v81, v82, v83, v84, v85, v86);
      v88 = v87;

      v1 = v75 + v88;
    }

    v91 = *buf;
    if (*buf)
    {
      v92 = *&buf[8];
      v93 = *buf;
      if (*&buf[8] != *buf)
      {
        do
        {
          v94 = *(v92 - 24);
          v92 -= 24;
        }

        while (v92 != v91);
        v93 = *buf;
      }

      *&buf[8] = v91;
      operator delete(v93);
    }
  }

  v95 = *__s;
  if (*__s)
  {
    v96 = v220;
    v97 = *__s;
    if (v220 != *__s)
    {
      do
      {
        v98 = *(v96 - 3);
        v96 -= 3;
      }

      while (v96 != v95);
      v97 = *__s;
    }

    v220 = v95;
    operator delete(v97);
  }

  if (!v67)
  {
    *(&v213 + 1) = 0;
    v214 = 0;
    *&v213 = &v213 + 8;
    goto LABEL_125;
  }

  v103 = objc_msgSend_objectForKey_(v202, v99, @"glyphs", v100, v101, v102);
  v217 = 0u;
  v218 = 0u;
  *buf = 0u;
  v216 = 0u;
  v192 = v103;
  obj = objc_msgSend_allKeys(v103, v104, v105, v106, v107, v108);
  v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v109, buf, __s, 16, v110);
  if (!v111)
  {
    goto LABEL_120;
  }

  v199 = *v216;
  v112 = v61;
  v113 = v1;
  *&v114 = v1 - v61;
  v115 = 1.0 / (v113 - v112);
  v116 = (0.0 / v115);
  v117 = ((1.0 / v115) - v113);
  v206 = vdupq_lane_s64(v114, 0);
  v118 = v115;
  do
  {
    v119 = 0;
    v203 = v111;
    do
    {
      if (*v216 != v199)
      {
        objc_enumerationMutation(obj);
      }

      v204 = *(*&buf[8] + 8 * v119);
      v205 = v119;
      sub_183786ECC(&v213, v202, v204, v201, v200);
      v126 = *(&v213 + 1);
      v125 = v213;
      if (v213 != *(&v213 + 1))
      {
        while (1)
        {
          v127 = objc_msgSend_characterSetWithRange_(MEMORY[0x1E696AB08], v120, 768, 112, v124, v121);
          IsMember = objc_msgSend_longCharacterIsMember_(v127, v128, v125[1].u32[1], v129, v130, v131);

          if (IsMember)
          {
            break;
          }

          v125 += 3;
          if (v125 == v126)
          {
            v125 = v126;
            goto LABEL_73;
          }
        }

        if (v125 != v126)
        {
          for (i = v125 + 3; i != v126; i += 3)
          {
            v134 = objc_msgSend_characterSetWithRange_(MEMORY[0x1E696AB08], v120, 768, 112, v124, v121);
            v139 = objc_msgSend_longCharacterIsMember_(v134, v135, i[1].u32[1], v136, v137, v138);

            if ((v139 & 1) == 0)
            {
              v140 = *i;
              *i = 0;
              v141 = *v125;
              *v125 = v140;

              v125[1] = i[1];
              v125[2].i32[0] = i[2].i32[0];
              v125[2].i32[1] = i[2].i32[1];
              v125 += 3;
            }
          }
        }
      }

LABEL_73:
      v142 = *(&v213 + 1);
      if (v125 != *(&v213 + 1))
      {
        v143 = *(&v213 + 1);
        v142 = v125;
        while (v143 != v125)
        {
          v144 = v143[-3];
          v143 -= 3;
        }

        *(&v213 + 1) = v125;
      }

      v145 = v213;
      if (v213 != v142)
      {
        v207 = v142;
        while (1)
        {
          v146 = objc_msgSend_copy(*v145, v120, v122, v123, v124, v121);
          objc_msgSend_bounds(v146, v147, v148, v149, v150, v151);
          v208 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v146, v153, v154, v155, v156, v157, v116 - v152, v117, v118);

          v163 = v145[2];
          v164 = v145[1].u32[1];
          v165 = *(&v209 + 1);
          if (!*(&v209 + 1))
          {
LABEL_86:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v166 = v165;
              v167 = *(v165 + 32);
              if (v164 >= v167)
              {
                break;
              }

              v165 = *v166;
              if (!*v166)
              {
                goto LABEL_86;
              }
            }

            if (v167 >= v164)
            {
              break;
            }

            v165 = v166[1];
            if (!v165)
            {
              goto LABEL_86;
            }
          }

          v168 = v166;
          v169 = v145[1].i32[0];
          v170 = objc_msgSend_copy(v208, v158, v159, v160, v161, v162);
          v171 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v163), v206));
          v173 = v166[6];
          v172 = v166[7];
          if (v173 >= v172)
          {
            v176 = v166[5];
            v177 = 0xAAAAAAAAAAAAAAABLL * ((v173 - v176) >> 3) + 1;
            if (v177 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_183788D88();
            }

            v178 = 0xAAAAAAAAAAAAAAABLL * ((v172 - v176) >> 3);
            if (2 * v178 > v177)
            {
              v177 = 2 * v178;
            }

            if (v178 >= 0x555555555555555)
            {
              v179 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v179 = v177;
            }

            if (v179)
            {
              if (v179 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_183688F00();
            }

            v180 = 8 * ((v173 - v176) >> 3);
            *v180 = v170;
            *(v180 + 8) = v169;
            *(v180 + 12) = v164;
            *(v180 + 16) = v171;
            v181 = v180 - (v173 - v176);
            if (v176 == v173)
            {
              v175 = v207;
              v174 = v180 + 24;
              v168[5] = v181;
              v168[6] = v174;
              v168[7] = 0;
              if (!v176)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v182 = v176;
              v183 = v180 - (v173 - v176);
              v175 = v207;
              do
              {
                v184 = *v182;
                *v182 = 0;
                *v183 = v184;
                *(v183 + 8) = *(v182 + 1);
                v182 += 3;
                v183 += 24;
              }

              while (v182 != v173);
              do
              {

                v176 += 3;
              }

              while (v176 != v173);
              v176 = v168[5];
              v174 = v180 + 24;
              v168[5] = v181;
              v168[6] = v174;
              v168[7] = 0;
              if (!v176)
              {
                goto LABEL_104;
              }
            }

            operator delete(v176);
          }

          else
          {
            *v173 = v170;
            v173[1].i32[0] = v169;
            v173[1].i32[1] = v164;
            v174 = &v173[3];
            v173[2] = v171;
            v175 = v207;
          }

LABEL_104:
          v168[6] = v174;

          v145 += 3;
          if (v145 == v175)
          {
            v142 = *(&v213 + 1);
            v145 = v213;
            break;
          }
        }
      }

      if (v142 != v145)
      {
        if (!v145)
        {
          goto LABEL_60;
        }

LABEL_116:
        v186 = *(&v213 + 1);
        v187 = v145;
        if (*(&v213 + 1) != v145)
        {
          do
          {
            v188 = v186[-3];
            v186 -= 3;
          }

          while (v186 != v145);
          v187 = v213;
        }

        *(&v213 + 1) = v145;
        operator delete(v187);
        goto LABEL_60;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v185 = qword_1EA84DC98;
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        *v211 = 138412290;
        v212 = v204;
        _os_log_impl(&dword_18366B000, v185, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle Could not add glyph %@ to inventory", v211, 0xCu);
      }

      v145 = v213;
      if (v213)
      {
        goto LABEL_116;
      }

LABEL_60:
      v119 = v205 + 1;
    }

    while (v205 + 1 != v203);
    v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v120, buf, __s, 16, v121);
  }

  while (v111);
LABEL_120:

  v213 = v209;
  v214 = v210;
  if (v210)
  {
    *(*(&v209 + 1) + 16) = &v213 + 8;
    *&v209 = &v209 + 8;
    *(&v209 + 1) = 0;
    v210 = 0;
  }

  else
  {
    *&v213 = &v213 + 8;
  }

LABEL_125:
  sub_18368EBD4(&v209, *(&v209 + 1));

LABEL_126:
  v189 = v193 + 16;
  sub_18368EBD4(v193 + 8, *(v193 + 16));
  v190 = *(&v213 + 1);
  *(v193 + 8) = v213;
  *(v193 + 16) = v190;
  v191 = v214;
  *(v193 + 24) = v214;
  if (v191)
  {
    v190[2] = v189;
    *&v213 = &v213 + 8;
    *(&v213 + 1) = 0;
    v214 = 0;
    v190 = 0;
  }

  else
  {
    *(v193 + 8) = v189;
  }

  sub_18368EBD4(&v213, v190);
  return *(v193 + 24) != 0;
}

void sub_183786B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  sub_18368EE60(&__p);
  sub_18368EE60(&a52);

  sub_18368EBD4(&a31, a32);
  _Unwind_Resume(a1);
}

void sub_183786D30()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC98;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle addCharacter not supported!", v1, 2u);
  }
}

uint64_t sub_183786DC4(uint64_t a1)
{
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_183786E38(uint64_t a1)
{
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1865E5EC0);
}

void sub_183786ECC(id **a1, void *a2, void *a3, int a4, void *a5)
{
  v211 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v182 = v8;
  v183 = v9;
  v180 = v10;
  v181 = objc_msgSend_objectForKey_(v8, v11, @"glyphs", v12, v13, v14);
  v19 = objc_msgSend_objectForKey_(v181, v15, v9, v16, v17, v18);
  v24 = v19;
  if (v19)
  {
    v179 = v19;
    v25 = objc_msgSend_objectForKey_(v19, v20, @"characters", v21, v22, v23);
    v30 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0, v27, v28, v29);

    v35 = objc_msgSend_objectForKey_(v24, v31, @"advance", v32, v33, v34);

    if (!v35)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v95 = qword_1EA84DC98;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_18366B000, v95, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterHolderAppleStyle: no advance for glyph %@. Skip it", buf, 0xCu);
      }

      goto LABEL_70;
    }

    v40 = objc_msgSend_objectForKey_(v24, v36, @"advance", v37, v38, v39);
    objc_msgSend_floatValue(v40, v41, v42, v43, v44, v45);
    v47 = v46;

    if (!v30)
    {
      if (!objc_msgSend_isEqualToString_(v9, v48, @".notdef", v49, v50, v51))
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v30 = qword_1EA84DC98;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterHolderAppleStyle: empty characters field for glyph %@. Skip it", buf, 0xCu);
        }

        goto LABEL_70;
      }

      v30 = sub_1837A4260(9633, v52, v53, v54, v55, v56);
    }

    v185 = v30;
    v57 = v24;
    v58 = v10;
    v198 = 0;
    v199 = &v198;
    v200 = 0x3032000000;
    v201 = sub_183788B40;
    v202 = sub_183788B50;
    v203 = 0;
    v192 = 0;
    v193 = &v192;
    v194 = 0x3032000000;
    v195 = sub_183788B40;
    v196 = sub_183788B50;
    v197 = 0;
    v63 = objc_msgSend_objectForKey_(v57, v59, @"locales", v60, v61, v62);
    v64 = v63 == 0;

    if (!v64)
    {
      v70 = objc_msgSend_localeIdentifier(v58, v65, v66, v67, v68, v69);
      v76 = objc_msgSend_regionCode(v58, v71, v72, v73, v74, v75);
      v81 = objc_msgSend_objectForKeyedSubscript_(v57, v77, @"locales", v78, v79, v80);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_183788B58;
      v206 = &unk_1E6DDDDB0;
      v82 = v70;
      v207 = v82;
      v209 = &v198;
      v210 = &v192;
      v83 = v76;
      v208 = v83;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v81, v84, buf, v85, v86, v87);
    }

    v88 = v199;
    if (!v199[5])
    {
      v88 = v193;
    }

    v178 = v88[5];
    _Block_object_dispose(&v192, 8);

    _Block_object_dispose(&v198, 8);
    if (v178)
    {
      v93 = v183;
      if ((objc_msgSend_isEqualToString_(v178, v89, v183, v90, v91, v92) & 1) == 0)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v94 = qword_1EA84DC98;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v178;
          *&buf[12] = 2112;
          *&buf[14] = v183;
          _os_log_impl(&dword_18366B000, v94, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterHolderAppleStyle: use localised glyph name %@ for glyph %@", buf, 0x16u);
        }

        v93 = v178;
      }
    }

    else
    {
      v93 = v183;
    }

    v183 = v93;
    sub_1837879C8(v182, v93);
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    obj = v189 = 0u;
    v98 = 0;
    v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v96, &v188, v204, 16, v97);
    if (v104)
    {
      v105 = *v189;
      do
      {
        v106 = 0;
        do
        {
          if (*v189 != v105)
          {
            objc_enumerationMutation(obj);
          }

          v107 = *(*(&v188 + 1) + 8 * v106);
          if (objc_msgSend_pointCount(v107, v99, v100, v101, v102, v103))
          {
            v113 = a1;
            objc_msgSend_bounds(v107, v108, v109, v110, v111, v112);
            v115 = v114;
            objc_msgSend_bounds(v107, v116, v117, v118, v119, v120);
            v122 = v121;
            objc_msgSend_bounds(v107, v123, v124, v125, v126, v127);
            v129 = v128;
            CodepointInString = objc_msgSend_firstCodepointInString(v185, v130, v131, v132, v133, v134);
            v141 = objc_msgSend_copy(v107, v136, v137, v138, v139, v140);
            v142 = v47 - v122 - v129;
            v143 = v115;
            v144 = a1[2];
            if (v98 >= v144)
            {
              v146 = v105;
              v147 = *a1;
              v148 = v98 - *a1;
              v149 = 0xAAAAAAAAAAAAAAABLL * (v148 >> 3) + 1;
              if (v149 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_183788D88();
              }

              v150 = 0xAAAAAAAAAAAAAAABLL * (v144 - v147);
              if (2 * v150 > v149)
              {
                v149 = 2 * v150;
              }

              if (v150 >= 0x555555555555555)
              {
                v149 = 0xAAAAAAAAAAAAAAALL;
              }

              if (v149)
              {
                if (v149 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_183688F00();
              }

              v151 = 8 * (v148 >> 3);
              *v151 = v141;
              *(v151 + 8) = a4;
              *(v151 + 12) = CodepointInString;
              *(v151 + 16) = v143;
              *(v151 + 20) = v142;
              v152 = v151 - v148;
              if (v147 == v98)
              {
                v156 = a1;
                v105 = v146;
              }

              else
              {
                v153 = v147;
                v154 = v151 - v148;
                v105 = v146;
                do
                {
                  v155 = *v153;
                  *v153 = 0;
                  *v154 = v155;
                  *(v154 + 8) = *(v153 + 1);
                  v153 += 3;
                  v154 += 24;
                }

                while (v153 != v98);
                do
                {

                  v147 += 3;
                }

                while (v147 != v98);
                v156 = a1;
                v147 = *a1;
              }

              v98 = v151 + 24;
              *v156 = v152;
              v156[2] = 0;
              v113 = v156;
              if (v147)
              {
                operator delete(v147);
              }
            }

            else
            {
              *v98 = v141;
              *(v98 + 8) = a4;
              *(v98 + 12) = CodepointInString;
              *(v98 + 16) = v143;
              *(v98 + 20) = v142;
              v98 += 24;
            }

            v145 = 0;
            v113[1] = v98;
          }

          else
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v145 = qword_1EA84DC98;
            if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v183;
              _os_log_impl(&dword_18366B000, v145, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle: drawing for char %@. Skip it.", buf, 0xCu);
            }
          }

          ++v106;
        }

        while (v106 != v104);
        v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v99, &v188, v204, 16, v103);
      }

      while (v104);
    }

    if (*a1 == v98 && objc_msgSend_isEqualToString_(v183, v157, @"space", v158, v159, v160))
    {
      v161 = objc_alloc_init(CHDrawing);
      v167 = objc_msgSend_firstCodepointInString(v185, v162, v163, v164, v165, v166);
      v173 = objc_msgSend_copy(v161, v168, v169, v170, v171, v172);
      v174 = a1[2];
      if (v98 >= v174)
      {
        v175 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v98) >> 3);
        v176 = 2 * v175;
        if (2 * v175 <= 1)
        {
          v176 = 1;
        }

        if (v175 >= 0x555555555555555)
        {
          v177 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v177 = v176;
        }

        if (v177 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_183688F00();
      }

      *v98 = v173;
      *(v98 + 8) = a4;
      *(v98 + 12) = v167;
      *(v98 + 16) = 0;
      *(v98 + 20) = v47;
      a1[1] = (v98 + 24);
    }

    v30 = v185;
LABEL_70:

    v24 = v179;
  }
}

void sub_18378784C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, void **a22)
{
  sub_18368EE60(a22);

  _Unwind_Resume(a1);
}

NSObject *sub_1837879C8(void *a1, void *a2)
{
  v383 = *MEMORY[0x1E69E9840];
  v323 = a1;
  v324 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v320 = objc_msgSend_objectForKey_(v323, v4, @"glyphs", v5, v6, v7);
  v12 = objc_msgSend_objectForKey_(v320, v8, v324, v9, v10, v11);
  v319 = v12;
  if (v12)
  {
    v13 = v12;
    v334 = v323;
    v322 = v13;
    v326 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_msgSend_objectForKey_(v13, v14, @"components", v15, v16, v17);

    if (v18)
    {
      objc_msgSend_objectForKeyedSubscript_(v322, v19, @"components", v20, v21, v22);
      v366 = 0u;
      v367 = 0u;
      v364 = 0u;
      obj = v365 = 0u;
      v318 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v364, v380, 16, v24);
      if (v318)
      {
        v321 = *v365;
        *&v30 = 138412290;
        v316 = v30;
        do
        {
          v327 = 0;
          do
          {
            if (*v365 != v321)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v364 + 1) + 8 * v327);
            if (objc_msgSend_count(v31, v25, v26, v27, v28, v29, v316) != 2)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v37 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle: Expected exactly 2 elements in the component: GlyphName and AffineTransform", buf, 2u);
              }
            }

            if (objc_msgSend_count(v31, v32, v33, v34, v35, v36) != 2)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v42 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_FAULT, "CHFastPathCharacterHolderAppleStyle: Expected exactly 2 elements in the component: GlyphName and AffineTransform", buf, 2u);
              }
            }

            v330 = objc_msgSend_objectAtIndexedSubscript_(v31, v38, 0, v39, v40, v41);
            if (!v330)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v47 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v47, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle: Component glyph name is nil", buf, 2u);
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v48 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_FAULT, "CHFastPathCharacterHolderAppleStyle: Component glyph name is nil", buf, 2u);
              }
            }

            v49 = objc_msgSend_objectAtIndexedSubscript_(v31, v43, 1, v44, v45, v46);
            if (!v49)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v55 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v55, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle: affine transform for component is nil", buf, 2u);
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v56 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v56, OS_LOG_TYPE_FAULT, "CHFastPathCharacterHolderAppleStyle: affine transform for component is nil", buf, 2u);
              }

              v49 = 0;
            }

            v328 = v49;
            if (objc_msgSend_count(v49, v50, v51, v52, v53, v54) != 6)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v62 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle: affine transform for component should has length 6", buf, 2u);
              }
            }

            if (objc_msgSend_count(v328, v57, v58, v59, v60, v61) != 6)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v63 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_FAULT, "CHFastPathCharacterHolderAppleStyle: affine transform for component should has length 6", buf, 2u);
              }
            }

            v325 = sub_1837879C8(v334, v330);
            v332 = v328;
            v345 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v68 = objc_msgSend_objectAtIndexedSubscript_(v332, v64, 0, v65, v66, v67);
            objc_msgSend_floatValue(v68, v69, v70, v71, v72, v73);
            v75 = v74;
            v80 = objc_msgSend_objectAtIndexedSubscript_(v332, v76, 1, v77, v78, v79);
            objc_msgSend_floatValue(v80, v81, v82, v83, v84, v85);
            v87 = v86;
            v92 = objc_msgSend_objectAtIndexedSubscript_(v332, v88, 2, v89, v90, v91);
            objc_msgSend_floatValue(v92, v93, v94, v95, v96, v97);
            v99 = v98;
            v104 = objc_msgSend_objectAtIndexedSubscript_(v332, v100, 3, v101, v102, v103);
            objc_msgSend_floatValue(v104, v105, v106, v107, v108, v109);
            v111 = v110;
            v116 = objc_msgSend_objectAtIndexedSubscript_(v332, v112, 4, v113, v114, v115);
            objc_msgSend_floatValue(v116, v117, v118, v119, v120, v121);
            v123 = v122;
            v128 = objc_msgSend_objectAtIndexedSubscript_(v332, v124, 5, v125, v126, v127);
            objc_msgSend_floatValue(v128, v129, v130, v131, v132, v133);
            v135 = v134;

            v371 = 0u;
            v372 = 0u;
            v369 = 0u;
            v370 = 0u;
            v342 = v325;
            v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v342, v136, &v369, buf, 16, v137);
            if (v142)
            {
              v143 = v75;
              v144 = v87;
              v145 = v99;
              v146 = v111;
              v147 = v123;
              v148 = -v135;
              v149 = *v370;
              do
              {
                for (i = 0; i != v142; ++i)
                {
                  if (*v370 != v149)
                  {
                    objc_enumerationMutation(v342);
                  }

                  v151 = *(*(&v369 + 1) + 8 * i);
                  *v368 = v143;
                  *&v368[1] = v144;
                  *&v368[2] = v145;
                  *&v368[3] = v146;
                  *&v368[4] = v147;
                  *&v368[5] = v148;
                  v152 = objc_msgSend_newDrawingWithAffineTransform_(v151, v138, v368, v139, v140, v141);
                  objc_msgSend_addObject_(v345, v153, v152, v154, v155, v156);
                }

                v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v342, v138, &v369, buf, 16, v141);
              }

              while (v142);
            }

            if (objc_msgSend_count(v345, v157, v158, v159, v160, v161))
            {
              if (objc_msgSend_count(v326, v162, v163, v164, v165, v166))
              {
                v172 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v362 = 0u;
                v363 = 0u;
                v360 = 0u;
                v361 = 0u;
                v336 = v326;
                v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v336, v173, &v360, v379, 16, v174);
                if (v175)
                {
                  v338 = *v361;
                  do
                  {
                    v340 = v175;
                    for (j = 0; j != v340; ++j)
                    {
                      if (*v361 != v338)
                      {
                        objc_enumerationMutation(v336);
                      }

                      v177 = *(*(&v360 + 1) + 8 * j);
                      v356 = 0u;
                      v357 = 0u;
                      v358 = 0u;
                      v359 = 0u;
                      v178 = v345;
                      v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v179, &v356, &v375, 16, v180);
                      if (v186)
                      {
                        v187 = *v357;
                        do
                        {
                          for (k = 0; k != v186; ++k)
                          {
                            if (*v357 != v187)
                            {
                              objc_enumerationMutation(v178);
                            }

                            v189 = *(*(&v356 + 1) + 8 * k);
                            v190 = objc_msgSend_copy(v177, v181, v182, v183, v184, v185);
                            objc_msgSend_appendDrawing_(v190, v191, v189, v192, v193, v194);
                            objc_msgSend_addObject_(v172, v195, v190, v196, v197, v198);
                          }

                          v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v181, &v356, &v375, 16, v185);
                        }

                        while (v186);
                      }
                    }

                    v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v336, v199, &v360, v379, 16, v200);
                  }

                  while (v175);
                }

                v326 = v172;
                v201 = v336;
              }

              else
              {
                v201 = v326;
                v326 = objc_msgSend_copy(v345, v167, v168, v169, v170, v171);
              }
            }

            else
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v201 = qword_1EA84DC98;
              if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
              {
                *buf = v316;
                v382 = v330;
                _os_log_impl(&dword_18366B000, v201, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderAppleStyle: No drawings for component %@", buf, 0xCu);
              }
            }

            ++v327;
          }

          while (v327 != v318);
          v318 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v364, v380, 16, v29);
        }

        while (v318);
      }

      v202 = v326;
      v203 = v202;
    }

    else
    {
      v203 = v326;
    }

    v339 = v203;

    v205 = v322;
    v335 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v341 = v205;
    v210 = objc_msgSend_objectForKey_(v205, v206, @"paths", v207, v208, v209);
    LOBYTE(v205) = v210 == 0;

    if ((v205 & 1) == 0)
    {
      v215 = objc_msgSend_objectForKeyedSubscript_(v341, v211, @"paths", v212, v213, v214);
      v377 = 0u;
      v378 = 0u;
      v375 = 0u;
      v376 = 0u;
      v333 = v215;
      v329 = objc_msgSend_countByEnumeratingWithState_objects_count_(v333, v216, &v375, buf, 16, v217);
      if (v329)
      {
        v331 = *v376;
        do
        {
          for (m = 0; m != v329; m = m + 1)
          {
            if (*v376 != v331)
            {
              objc_enumerationMutation(v333);
            }

            v218 = *(*(&v375 + 1) + 8 * m);
            v219 = objc_alloc_init(CHDrawing);
            v371 = 0u;
            v372 = 0u;
            v369 = 0u;
            v370 = 0u;
            v343 = v218;
            v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v343, v220, &v369, v380, 16, v221);
            if (v222)
            {
              v346 = *v370;
              do
              {
                for (n = 0; n != v222; ++n)
                {
                  if (*v370 != v346)
                  {
                    objc_enumerationMutation(v343);
                  }

                  v224 = *(*(&v369 + 1) + 8 * n);
                  v364 = 0u;
                  v365 = 0u;
                  v366 = 0u;
                  v367 = 0u;
                  v225 = v224;
                  v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v225, v226, &v364, v379, 16, v227);
                  if (v232)
                  {
                    v233 = *v365;
                    do
                    {
                      for (ii = 0; ii != v232; ++ii)
                      {
                        if (*v365 != v233)
                        {
                          objc_enumerationMutation(v225);
                        }

                        v235 = *(*(&v364 + 1) + 8 * ii);
                        v236 = objc_msgSend_objectAtIndex_(v235, v228, 0, v229, v230, v231);
                        objc_msgSend_floatValue(v236, v237, v238, v239, v240, v241);
                        v243 = v242;

                        v248 = objc_msgSend_objectAtIndex_(v235, v244, 1, v245, v246, v247);
                        objc_msgSend_floatValue(v248, v249, v250, v251, v252, v253);
                        v255 = v254;

                        objc_msgSend_addPoint_(v219, v256, v257, v258, v259, v260, v243, -v255);
                      }

                      v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v225, v228, &v364, v379, 16, v231);
                    }

                    while (v232);
                  }

                  objc_msgSend_endStroke(v219, v261, v262, v263, v264, v265);
                }

                v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v343, v266, &v369, v380, 16, v267);
              }

              while (v222);
            }

            objc_msgSend_addObject_(v335, v268, v219, v269, v270, v271);
          }

          v329 = objc_msgSend_countByEnumeratingWithState_objects_count_(v333, v272, &v375, buf, 16, v273);
        }

        while (v329);
      }
    }

    v279 = objc_msgSend_count(v339, v274, v275, v276, v277, v278);
    v285 = v335;
    if (v279)
    {
      v286 = objc_msgSend_count(v335, v280, v281, v282, v283, v284);
      v285 = v339;
      if (v286)
      {
        v354 = 0u;
        v355 = 0u;
        v352 = 0u;
        v353 = 0u;
        v344 = v339;
        v289 = objc_msgSend_countByEnumeratingWithState_objects_count_(v344, v287, &v352, v374, 16, v288);
        if (v289)
        {
          v347 = *v353;
          do
          {
            for (jj = 0; jj != v289; ++jj)
            {
              if (*v353 != v347)
              {
                objc_enumerationMutation(v344);
              }

              v291 = *(*(&v352 + 1) + 8 * jj);
              v348 = 0u;
              v349 = 0u;
              v350 = 0u;
              v351 = 0u;
              v292 = v335;
              v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v293, &v348, v373, 16, v294);
              if (v300)
              {
                v301 = *v349;
                do
                {
                  for (kk = 0; kk != v300; ++kk)
                  {
                    if (*v349 != v301)
                    {
                      objc_enumerationMutation(v292);
                    }

                    v303 = *(*(&v348 + 1) + 8 * kk);
                    v304 = objc_msgSend_copy(v291, v295, v296, v297, v298, v299);
                    objc_msgSend_appendDrawing_(v304, v305, v303, v306, v307, v308);
                    objc_msgSend_addObject_(v3, v309, v304, v310, v311, v312);
                  }

                  v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v295, &v348, v373, 16, v299);
                }

                while (v300);
              }
            }

            v289 = objc_msgSend_countByEnumeratingWithState_objects_count_(v344, v313, &v352, v374, 16, v314);
          }

          while (v289);
        }

        v285 = v3;
      }
    }

    v204 = v285;
  }

  else
  {
    v204 = v3;
  }

  return v204;
}

uint64_t sub_183788B40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183788B58(uint64_t *a1, void *a2, void *a3, _BYTE *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  if (objc_msgSend_containsObject_(v9, v10, a1[4], v11, v12, v13))
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC98;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(a1[6] + 8) + 40);
      v20 = a1[4];
      v24 = 138412546;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterHolderAppleStyle: localised version with glyph name %@ and locale %@ was found", &v24, 0x16u);
    }

    *a4 = 1;
  }

  else if (!*(*(a1[7] + 8) + 40) && objc_msgSend_containsObject_(v9, v14, a1[5], v15, v16, v17))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v21 = qword_1EA84DC98;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*(a1[7] + 8) + 40);
      v23 = a1[5];
      v24 = 138412546;
      v25 = v22;
      v26 = 2112;
      v27 = v23;
      _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterHolderAppleStyle: localised version with glyph name %@ and locale %@ was found", &v24, 0x16u);
    }
  }
}

void sub_1837894F8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1837895DC(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = *(val + 7);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_183789A74;
    v7[3] = &unk_1E6DDDE00;
    v7[4] = val;
    objc_copyWeak(&v8, &location);
    objc_msgSend_queryTextReplacementsWithCallback_(v2, v3, v7, v4, v5, v6);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_183789690(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1837897E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CHInputContextLexiconManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_183789814(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC70;
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      *v36 = 0;
      _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_DEBUG, "Removing contact update observer", v36, 2u);
    }

    v6 = sub_18378A48C();
    v4 = objc_msgSend_sharedManager(v6, v7, v8, v9, v10, v11);
    objc_msgSend_removeContactObserver_(v4, v12, *(v2 + 16), v13, v14, v15);
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_DEBUG, "No contact update observer to remove.", buf, 2u);
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 24);
  if (qword_1EA84DC48 == -1)
  {
    v18 = qword_1EA84DC70;
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
LABEL_11:
      if (v19)
      {
        *v38 = 0;
        _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEBUG, "Removing named entity lexicon update observer", v38, 2u);
      }

      v20 = sub_18378A48C();
      v18 = objc_msgSend_sharedManager(v20, v21, v22, v23, v24, v25);
      objc_msgSend_removeNamedEntitiesUpdateObserver_(v18, v26, *(v16 + 24), v27, v28, v29);
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v18 = qword_1EA84DC70;
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      goto LABEL_11;
    }
  }

  if (v19)
  {
    *v39 = 0;
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEBUG, "No named entity lexicon update observer to remove.", v39, 2u);
  }

LABEL_17:

  v30 = *(a1 + 32);
  v31 = *(v30 + 48);
  *(v30 + 48) = 0;

  v32 = *(a1 + 32);
  v33 = *(v32 + 56);
  *(v32 + 56) = 0;

  v34 = *(a1 + 32);
  v35 = *(v34 + 72);
  *(v34 + 72) = 0;
}

void sub_183789A74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_183789B34;
  block[3] = &unk_1E6DDDDD8;
  objc_copyWeak(&v10, (a1 + 40));
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v10);
}

void sub_183789B34(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = *(a1 + 32);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v26, v30, 16, v5);
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = objc_msgSend_shortcut(v14, v6, v7, v8, v9, v10, v26);
          v21 = objc_msgSend_phrase(v14, v16, v17, v18, v19, v20);
          objc_msgSend_setObject_forKey_(*(*(a1 + 40) + 48), v22, v21, v15, v23, v24);
          v25 = objc_loadWeakRetained((a1 + 48));
          sub_183789CF0(v25, v15);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v26, v30, 16, v10);
      }

      while (v11);
    }
  }
}

void sub_183789CF0(uint64_t a1, CFStringRef theString)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (!*(a1 + 80))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v4 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "Transient lexicon must be non-nil", buf, 2u);
    }

    if (!*(a1 + 80))
    {
      if (qword_1EA84DC48 == -1)
      {
        v5 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v5 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_11;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_FAULT, "Transient lexicon must be non-nil", buf, 2u);
      goto LABEL_11;
    }
  }

LABEL_12:
  if (CFStringGetLength(theString) >= 1)
  {
    sub_18378B30C(a1);
    objc_msgSend_splitStringIntoSubtokensForLexicon_minLength_(CHLanguageUtilities, v6, theString, 3, v7, v8);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v9 = v18 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v22, 16, v11);
    if (v12)
    {
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v9);
          }

          sub_18378B30C(a1);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v17, v22, 16, v16);
      }

      while (v12);
    }
  }
}

uint64_t sub_18378A03C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18378A054(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_copy(*(*(a1 + 32) + 48), a2, a3, a4, a5, a6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_18378A190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_copy(*(*(a1 + 32) + 72), a2, a3, a4, a5, a6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_18378A1DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = objc_msgSend_lexiconQueue(WeakRetained, v5, v6, v7, v8, v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18378A2CC;
  v12[3] = &unk_1E6DDDE28;
  v13 = v3;
  v11 = v3;
  objc_copyWeak(&v14, (a1 + 32));
  dispatch_async(v10, v12);

  objc_destroyWeak(&v14);
}

void sub_18378A2CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_copy(*(a1 + 32), a2, a3, a4, a5, a6);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = v7;
  if (WeakRetained)
  {
    LMVocabularyReset();
    LMVocabularySetLanguages();
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_18378B8BC;
    v23 = &unk_1E6DDDEC8;
    v24 = WeakRetained;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v10, &v20, v11, v12, v13);
  }

  v14 = objc_loadWeakRetained((a1 + 40));
  v19 = v9;
  if (v14)
  {
    if (qword_1EA84DAF0 != -1)
    {
      dispatch_once(&qword_1EA84DAF0, &unk_1EF1BCC88);
    }

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_18378B5FC;
    v23 = &unk_1E6DDDEC8;
    v24 = v14;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v19, v15, &v20, v16, v17, v18, v19);
  }
}

id sub_18378A48C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA84CF18;
  v7 = qword_1EA84CF18;
  if (!qword_1EA84CF18)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_18378C1EC;
    v3[3] = &unk_1E6DDCCD0;
    v3[4] = &v4;
    sub_18378C1EC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18378A554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18378A980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_183686078(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_18378AA20()
{
  MutableCopy = LXEntryCreateMutableCopy();
  LXEntryGetTokenID();
  LXEntryGetTimestamp();
  LXLexiconAddEntryWithTokenID();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_18378AAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18378C3B4(va);
  _Unwind_Resume(a1);
}

void sub_18378AABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18378C3B4(va);
  _Unwind_Resume(a1);
}

void sub_18378AAD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_lexiconQueue(WeakRetained, v3, v4, v5, v6, v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18378AB94;
  block[3] = &unk_1E6DDD098;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_async(v8, block);

  objc_destroyWeak(&v10);
}

void sub_18378AB94(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v1 = qword_1EA84DC70;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v1, OS_LOG_TYPE_DEBUG, "Updating named entity lexicons", buf, 2u);
    }

    v2 = sub_18378A48C();
    v8 = objc_msgSend_sharedManager(v2, v3, v4, v5, v6, v7);
    v13 = objc_msgSend_loadLexiconsUsingFilter_(v8, v9, 0, v10, v11, v12);

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v13;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v39, buf, 16, v16);
    if (v22)
    {
      v24 = *v40;
      *&v23 = 134217984;
      v37 = v23;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v14);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          if (objc_msgSend_typeFlags(v26, v17, v18, v19, v20, v21, v37))
          {
            LexiconImplementation = objc_msgSend_getLexiconImplementation(v26, v17, v18, v19, v20, v21);
            v33 = LexiconImplementation;
            if (LexiconImplementation)
            {
              CFRetain(LexiconImplementation);
            }

            v34 = objc_msgSend_typeFlags(v26, v28, v29, v30, v31, v32);
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v35 = qword_1EA84DC70;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v45) = v37;
              *(&v45 + 4) = v33;
              _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_DEBUG, "Adding named entity lexicon %p", &v45, 0xCu);
            }

            RootCursor = LXLexiconCreateRootCursor();
            v43 = RootCursor;
            *&v45 = MEMORY[0x1E69E9820];
            *(&v45 + 1) = 3221225472;
            v46 = sub_18378AF1C;
            v47 = &unk_1E6DDDEA0;
            v49 = (v34 & 4) != 0;
            v48 = WeakRetained;
            LXCursorEnumerateEntriesRecursively();
            if (RootCursor)
            {
              CFRelease(RootCursor);
            }

            if (v33)
            {
              CFRelease(v33);
            }
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v39, buf, 16, v21);
      }

      while (v22);
    }
  }
}