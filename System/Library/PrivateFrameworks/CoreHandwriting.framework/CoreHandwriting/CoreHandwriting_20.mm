id sub_18392C888(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, void *a6, void *a7, void *a8)
{
  v101 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a8;
  if (!a1)
  {
    goto LABEL_38;
  }

  if (*(a1 + 16) != 4)
  {
    if (a4)
    {
      v49 = sub_18392E970(a1, v15, a3);
      if (objc_msgSend_isValidForStrokes_(v49, v50, v15, v51, v52, v53))
      {
        v97 = v16;
        v98 = 0;
        v57 = objc_msgSend_fullyCoveredStrokeGroupsForContextStrokes_partiallyCoveredStrokeGroups_(v49, v54, v15, &v98, v55, v56);
        v58 = v98;
        v59 = *MEMORY[0x1E695F060];
        v60 = *(MEMORY[0x1E695F060] + 8);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_drawingCanvasSize(*(a1 + 24), v61, v62, v63, v64, v65);
          v59 = v66;
          v60 = v67;
        }

        v73 = objc_msgSend_contextualResultsWithFullyCoveredStrokeGroups_partiallyCoveredStrokeGroups_drawingCanvasSize_(v49, v61, v57, v58, v64, v65, v59, v60);
        if (a6)
        {
          *a6 = objc_msgSend_strokeGroupingResult(v49, v68, v69, v70, v71, v72);
        }

        if (a7)
        {
          *a7 = objc_msgSend_strokeClassificationResult(v49, v68, v69, v70, v71, v72);
        }

        goto LABEL_45;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v80 = qword_1EA84DC60;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = objc_msgSend_count(v15, v81, v82, v83, v84, v85);
        _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_ERROR, "Unable to extract a contextualTextResult from cached result. The onDemand recognition result is not valid for some of the %ld context strokes.", buf, 0xCu);
      }
    }

LABEL_38:
    v73 = 0;
    goto LABEL_46;
  }

  v17 = v15;
  v97 = v16;
  v95 = v16;
  v22 = *(a1 + 8);
  if (v22)
  {
    goto LABEL_13;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v23 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "A cached result must exist when calling _contextualTextResultsFromCachedResultUsingContextStrokes:shouldCancel:", buf, 2u);
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    goto LABEL_13;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v24 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v24 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_FAULT, "A cached result must exist when calling _contextualTextResultsFromCachedResultUsingContextStrokes:shouldCancel:", buf, 2u);
  }

LABEL_12:

  v22 = *(a1 + 8);
LABEL_13:
  if (objc_msgSend_isValidForStrokes_(v22, v18, v17, v19, v20, v21, v95))
  {
    v28 = *(a1 + 8);
    *buf = 0;
    v29 = objc_msgSend_fullyCoveredStrokeGroupsForContextStrokes_partiallyCoveredStrokeGroups_(v28, v25, v17, buf, v26, v27);
    v30 = *buf;
    v31 = *MEMORY[0x1E695F060];
    v32 = *(MEMORY[0x1E695F060] + 8);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_drawingCanvasSize(*(a1 + 24), v33, v34, v35, v36, v37);
      v31 = v38;
      v32 = v39;
    }

    if (objc_msgSend_count(v30, v33, v34, v35, v36, v37) && a5)
    {
      v40 = sub_18392E970(a1, v17, a3);
      v99 = v30;
      v44 = objc_msgSend_fullyCoveredStrokeGroupsForContextStrokes_partiallyCoveredStrokeGroups_(v40, v41, v17, &v99, v42, v43);
      v45 = v99;

      v30 = v45;
      v29 = v44;
      objc_msgSend_contextualResultsWithFullyCoveredStrokeGroups_partiallyCoveredStrokeGroups_drawingCanvasSize_(v40, v46, v44, v45, v47, v48, v31, v32);
    }

    else
    {
      v40 = *(a1 + 8);
      objc_msgSend_contextualResultsWithFullyCoveredStrokeGroups_partiallyCoveredStrokeGroups_drawingCanvasSize_(v40, v86, v29, v30, v87, v88, v31, v32);
    }
    v73 = ;
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v30 = qword_1EA84DC60;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v79 = objc_msgSend_count(v17, v74, v75, v76, v77, v78);
      *buf = 134217984;
      *&buf[4] = v79;
      _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_ERROR, "Unable to extract a contextualTextResult from cached result. The last recognition result is not valid for some of the %ld context strokes.", buf, 0xCu);
    }

    v73 = 0;
  }

  if (a6)
  {
    *a6 = objc_msgSend_strokeGroupingResult(*(a1 + 8), v89, v90, v91, v92, v93);
  }

  if (a7)
  {
    *a7 = objc_msgSend_strokeClassificationResult(*(a1 + 8), v89, v90, v91, v92, v93);
  }

LABEL_45:
  v16 = v97;
LABEL_46:

  return v73;
}

id sub_18392D398(void **a1, void *a2)
{
  v168 = *MEMORY[0x1E69E9840];
  v152 = a2;
  v8 = objc_msgSend_strokeGroupingResult(a1[1], v3, v4, v5, v6, v7);
  v14 = objc_msgSend_strokeGroupOrdering(a1, v9, v10, v11, v12, v13);
  v18 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v8, v15, v14, 1, v16, v17);

  v153 = v18;
  v24 = objc_msgSend_strokeGroupingResult(a1[1], v19, v20, v21, v22, v23);
  v30 = objc_msgSend_textStrokeGroupClusters(v24, v25, v26, v27, v28, v29);

  v156 = a1;
  v31 = objc_opt_class();
  v165 = 0;
  v154 = objc_msgSend_strokeIdentifiersInFullContextForStrokeIdentifiers_sortedStrokeGroups_clusteredStrokeGroups_unusedStrokeIdentifiers_(v31, v32, v152, v18, v30, &v165);
  v155 = v165;
  v37 = objc_msgSend_setWithSet_(MEMORY[0x1E695DFA8], v33, v154, v34, v35, v36);
  if (objc_msgSend_count(v155, v38, v39, v40, v41, v42))
  {
    v48 = objc_msgSend_strokeGroupingResult(v156[1], v43, v44, v45, v46, v47);
    v54 = objc_msgSend_strokeGroupOrdering(v156, v49, v50, v51, v52, v53);
    v58 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v48, v55, v54, 0, v56, v57);

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v59 = v155;
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v161, v167, 16, v61);
    if (v62)
    {
      v63 = *v162;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v162 != v63)
          {
            objc_enumerationMutation(v59);
          }

          v65 = *(*(&v161 + 1) + 8 * i);
          v66 = objc_opt_class();
          v70 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_(v66, v67, v65, v58, v68, v69);
          v76 = v70;
          if (v70)
          {
            v77 = objc_msgSend_strokeIdentifiers(v70, v71, v72, v73, v74, v75);
            v83 = objc_msgSend_allObjects(v77, v78, v79, v80, v81, v82);
            objc_msgSend_addObjectsFromArray_(v37, v84, v83, v85, v86, v87);
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v88, &v161, v167, 16, v89);
      }

      while (v62);
    }
  }

  v90 = objc_msgSend_allObjects(v37, v43, v44, v45, v46, v47);
  v94 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v91, v90, v156[3], v92, v93);
  objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v95, v94, v96, v97, v98);
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v112 = objc_msgSend_strokeGroupingResult(v156[1], v107, v108, v109, v110, v111);
  v118 = objc_msgSend_nontextStrokeGroups(v112, v113, v114, v115, v116, v117);

  v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v119, &v157, v166, 16, v120);
  if (v126)
  {
    v127 = *v158;
    do
    {
      for (j = 0; j != v126; ++j)
      {
        if (*v158 != v127)
        {
          objc_enumerationMutation(v118);
        }

        v129 = *(*(&v157 + 1) + 8 * j);
        objc_msgSend_bounds(v129, v121, v122, v123, v124, v125);
        v172.origin.x = v100;
        v172.origin.y = v102;
        v172.size.width = v104;
        v172.size.height = v106;
        v171 = CGRectIntersection(v170, v172);
        width = v171.size.width;
        height = v171.size.height;
        if (!CGRectIsNull(v171))
        {
          objc_msgSend_bounds(v129, v121, v122, v123, v124, v125);
          v133 = v132;
          objc_msgSend_bounds(v129, v134, v135, v136, v137, v138);
          if (width * height / (v133 * v139 + 1.0e-10) > 0.5)
          {
            v140 = objc_msgSend_strokeIdentifiers(v129, v121, v122, v123, v124, v125);
            v146 = objc_msgSend_allObjects(v140, v141, v142, v143, v144, v145);
            objc_msgSend_addObjectsFromArray_(v37, v147, v146, v148, v149, v150);
          }
        }
      }

      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v121, &v157, v166, 16, v125);
    }

    while (v126);
  }

  return v37;
}

id sub_18392DEC8(void **a1, double a2, double a3)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_18391E9B8;
  v34 = sub_18391E9C8;
  v35 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0x7FEFFFFFFFFFFFFFLL;
  v6 = objc_opt_class();
  v12 = objc_msgSend_strokeGroupingResult(a1[1], v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeGroupOrdering(a1, v13, v14, v15, v16, v17);
  v22 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v12, v19, v18, 0, v20, v21);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_18392E0A0;
  v28[3] = &unk_1E6DE0118;
  *&v28[7] = a2;
  *&v28[8] = a3;
  v28[4] = a1;
  v28[5] = v29;
  v28[6] = &v30;
  objc_msgSend_strokeGroupsContainingPoint_strokeGroups_groupProcessingBlock_(v6, v23, v22, v28, v24, v25, a2, a3);

  v26 = v31[5];
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v30, 8);

  return v26;
}

void sub_18392E05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_18392E0A0(double *a1, void *a2)
{
  v4 = a2;
  v5 = a1[7];
  v6 = a1[8];
  v25 = v4;
  v12 = objc_msgSend_strokeIdentifiers(v4, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_allObjects(v12, v13, v14, v15, v16, v17);
  objc_msgSend_distanceFromPoint_toStrokes_withStrokeProvider_(CHStrokeUtilities, v19, v18, *(*(a1 + 4) + 24), v20, v21, v5, v6);
  v23 = v22;

  v24 = *(*(a1 + 5) + 8);
  if (v23 < *(v24 + 24))
  {
    *(v24 + 24) = v23;
    objc_storeStrong((*(*(a1 + 6) + 8) + 40), a2);
  }
}

void sub_18392E1C0(uint64_t a1, void *a2)
{
  v241 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v222 = v3;
  v10 = objc_msgSend_uniqueIdentifier(v3, v5, v6, v7, v8, v9);
  v227 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v4, v11, v10, v12, v13, v14);
  v20 = objc_msgSend_locales(*(*(a1 + 32) + 8), v15, v16, v17, v18, v19);
  v25 = objc_msgSend_localesSortedByCombinedLanguageFitness_(v227, v21, v20, v22, v23, v24);

  v221 = v25;
  v223 = objc_msgSend_firstObject(v25, v26, v27, v28, v29, v30);
  v36 = objc_msgSend_recognitionResultsByLocale(v227, v31, v32, v33, v34, v35);
  v41 = objc_msgSend_objectForKey_(v36, v37, v223, v38, v39, v40);

  v224 = v41;
  if (v41)
  {
    for (i = 0; i < objc_msgSend_tokenColumnCount(v224, v42, v43, v44, v45, v46); ++i)
    {
      v225 = objc_msgSend_tokenRowsAtColumnIndex_(v224, v47, i, v48, v49, v50);
      v56 = objc_msgSend_transcriptionPaths(v224, v51, v52, v53, v54, v55);
      v62 = objc_msgSend_firstObject(v56, v57, v58, v59, v60, v61);
      v67 = objc_msgSend_indexAtPosition_(v62, v63, i, v64, v65, v66);

      v72 = objc_msgSend_objectAtIndexedSubscript_(v225, v68, v67, v69, v70, v71);
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v73 = v72;
      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v235, v240, 16, v75);
      if (v81)
      {
        v82 = *v236;
        do
        {
          for (j = 0; j != v81; ++j)
          {
            if (*v236 != v82)
            {
              objc_enumerationMutation(v73);
            }

            v84 = *(*(&v235 + 1) + 8 * j);
            v85 = objc_msgSend_inputStrokeIdentifiers(v227, v76, v77, v78, v79, v80);
            v91 = objc_msgSend_strokeIndexes(v84, v86, v87, v88, v89, v90);
            v96 = objc_msgSend_objectsAtIndexes_(v85, v92, v91, v93, v94, v95);

            objc_msgSend_distanceFromPoint_toStrokes_withStrokeProvider_(CHStrokeUtilities, v97, v96, *(*(a1 + 32) + 24), v98, v99, *(a1 + 56), *(a1 + 64));
            v105 = v104;
            if (v104 < *(*(*(a1 + 40) + 8) + 24))
            {
              v106 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v100, v96, v101, v102, v103);
              v107 = *(*(a1 + 48) + 8);
              v108 = *(v107 + 40);
              *(v107 + 40) = v106;

              *(*(*(a1 + 40) + 8) + 24) = v105;
            }
          }

          v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v235, v240, 16, v80);
        }

        while (v81);
      }
    }
  }

  else
  {
    v109 = objc_opt_class();
    v115 = objc_msgSend_classification(v222, v110, v111, v112, v113, v114);
    if (objc_msgSend_isStrokeClassificationTextOrMath_(v109, v116, v115, v117, v118, v119))
    {
      v125 = MEMORY[0x1E695DF70];
      v126 = objc_msgSend_inputStrokeIdentifiers(v227, v120, v121, v122, v123, v124);
      v132 = objc_msgSend_count(v126, v127, v128, v129, v130, v131);
      v137 = objc_msgSend_arrayWithCapacity_(v125, v133, v132, v134, v135, v136);

      v233 = 0u;
      v234 = 0u;
      v231 = 0u;
      v232 = 0u;
      v143 = objc_msgSend_inputStrokeIdentifiers(v227, v138, v139, v140, v141, v142);
      v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v144, &v231, v239, 16, v145);
      if (v150)
      {
        v151 = *v232;
        do
        {
          for (k = 0; k != v150; ++k)
          {
            if (*v232 != v151)
            {
              objc_enumerationMutation(v143);
            }

            v153 = objc_msgSend_strokeIdentifierFromData_(*(*(a1 + 32) + 24), v146, *(*(&v231 + 1) + 8 * k), v147, v148, v149);
            v162 = objc_msgSend_strokeForIdentifier_(*(*(a1 + 32) + 24), v154, v153, v155, v156, v157);
            if (v162)
            {
              objc_msgSend_addObject_(v137, v158, v162, v159, v160, v161);
            }
          }

          v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v146, &v231, v239, 16, v149);
        }

        while (v150);
      }

      v163 = [CHFastStrokeGroupingStrategy alloc];
      v166 = objc_msgSend_initWithStrokeProvider_locales_clutterFilter_(v163, v164, *(*(a1 + 32) + 24), 0, 0, v165);
      v170 = v166;
      if (v166)
      {
        objc_msgSend_clustersForStrokes_shouldMakeSingleCluster_anchorPoints_(v166, v167, v137, 1, 1, v169);
      }

      else
      {
        __p = 0;
        v229 = 0;
        v230 = 0;
      }

      v193 = objc_msgSend_fastGroupingResultWithFastGroupingClusters_clusteredStrokes_(v170, v167, &__p, v137, v168, v169);
      v195 = objc_msgSend_groupingResultForContextStrokes_clusteredStrokes_fastGroupingResult_point_tokenizationLevel_(v170, v194, 0, v137, v193, 1, *(a1 + 56), *(a1 + 64));
      v196 = *(a1 + 56);
      v197 = *(a1 + 64);
      v203 = objc_msgSend_allObjects(v195, v198, v199, v200, v201, v202);
      objc_msgSend_distanceFromPoint_toStrokes_withStrokeProvider_(CHStrokeUtilities, v204, v203, *(*(a1 + 32) + 24), v205, v206, v196, v197);
      v208 = v207;

      if (v208 < *(*(*(a1 + 40) + 8) + 24))
      {
        v214 = objc_msgSend_strokeIdentifiers(v222, v209, v210, v211, v212, v213);
        v215 = *(*(a1 + 48) + 8);
        v216 = *(v215 + 40);
        *(v215 + 40) = v214;

        *(*(*(a1 + 40) + 8) + 24) = v208;
      }

      v217 = __p;
      if (__p)
      {
        v218 = __p;
        if (v229 != __p)
        {
          v219 = v229 - 32;
          do
          {
            v220 = (v219 - 40);
            sub_18368D56C(v219, *(v219 + 8));
            sub_18368A374(v219 - 40, *(v219 - 32));
            v219 -= 72;
          }

          while (v220 != v217);
          v218 = __p;
        }

        v229 = v217;
        operator delete(v218);
      }
    }

    else
    {
      v171 = *(a1 + 56);
      v172 = *(a1 + 64);
      v173 = objc_msgSend_strokeIdentifiers(v222, v120, v121, v122, v123, v124);
      v179 = objc_msgSend_allObjects(v173, v174, v175, v176, v177, v178);
      objc_msgSend_distanceFromPoint_toStrokes_withStrokeProvider_(CHStrokeUtilities, v180, v179, *(*(a1 + 32) + 24), v181, v182, v171, v172);
      v184 = v183;

      if (v184 < *(*(*(a1 + 40) + 8) + 24))
      {
        v190 = objc_msgSend_strokeIdentifiers(v222, v185, v186, v187, v188, v189);
        v191 = *(*(a1 + 48) + 8);
        v192 = *(v191 + 40);
        *(v191 + 40) = v190;

        *(*(*(a1 + 40) + 8) + 24) = v184;
      }
    }
  }
}

id sub_18392E970(void *a1, void *a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v11 = objc_msgSend_dataSource(a1, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_strokeProviderSnapshot(v11, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_strokeGroupingOnly(a1, v18, v19, v20, v21, v22);
  v24 = sub_183921D1C(a1, v17, a3, 1, v23, v5, 0, 0);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v25 = qword_1EA84DC60;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_msgSend_count(v5, v26, v27, v28, v29, v30);
    v37 = objc_msgSend_strokeProviderVersion(v17, v32, v33, v34, v35, v36);
    v57 = 134218498;
    v58 = a1;
    v59 = 2048;
    v60 = v31;
    v61 = 2112;
    v62 = v37;
    _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p starting high responsiveness task with %ld strokes for version: %@.", &v57, 0x20u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v38 = qword_1EA84DC88;
  v39 = os_signpost_id_generate(v38);

  if (qword_1EA84DC48 == -1)
  {
    v40 = qword_1EA84DC88;
    v41 = v39 - 1;
    if (v39 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v40 = qword_1EA84DC88;
    v41 = v39 - 1;
    if (v39 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_11;
    }
  }

  if (os_signpost_enabled(v40))
  {
    LOWORD(v57) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v39, "CHRecognitionSessionOnDemandTask", "", &v57, 2u);
  }

LABEL_11:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v42 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v57) = 0;
    _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognitionSessionOnDemandTask", &v57, 2u);
  }

  objc_msgSend_main(v24, v43, v44, v45, v46, v47);
  if (qword_1EA84DC48 == -1)
  {
    v48 = qword_1EA84DC88;
    if (v41 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_19;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v48 = qword_1EA84DC88;
    if (v41 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_19;
    }
  }

  if (os_signpost_enabled(v48))
  {
    LOWORD(v57) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v48, OS_SIGNPOST_INTERVAL_END, v39, "CHRecognitionSessionOnDemandTask", "", &v57, 2u);
  }

LABEL_19:

  if (qword_1EA84DC48 == -1)
  {
    v49 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v49 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
LABEL_21:
    LOWORD(v57) = 0;
    _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_DEFAULT, "END CHRecognitionSessionOnDemandTask", &v57, 2u);
  }

LABEL_22:

  v55 = objc_msgSend_outputResult(v24, v50, v51, v52, v53, v54);

  return v55;
}

void sub_18392EF4C(uint64_t a1)
{
  v1 = a1;
  v343 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 && (*(v2 + 16))())
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v3 = qword_1EA84DC60;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEFAULT, "ContextLookup Query result for location cancelled.", buf, 2u);
    }

    goto LABEL_77;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC60;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_attachments(*(*(v1 + 32) + 48), v5, v6, v7, v8, v9);
    *buf = 134217984;
    v336 = objc_msgSend_count(v10, v11, v12, v13, v14, v15);
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_DEFAULT, "ContextLookup Query for location starting in document with %ld attachments.", buf, 0xCu);
  }

  objc_msgSend_becomeCurrentWithPendingUnitCount_(*(v1 + 40), v16, 100, v17, v18, v19);
  v25 = objc_msgSend_strokeGroupingResult(*(*(v1 + 32) + 8), v20, v21, v22, v23, v24);
  v26 = *(v1 + 64);
  v27 = *(v1 + 72);
  v330 = 0;
  v329 = 0;
  v286 = objc_msgSend_textStrokeGroupClustersAtPosition_closestAbove_closestBelow_(v25, v28, &v330, &v329, v29, v30, v26, v27);
  v284 = v330;
  v283 = v329;

  if (objc_msgSend_count(v286, v31, v32, v33, v34, v35))
  {
    v285 = v286;
  }

  else
  {
    v285 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37, v38, v39, v40);
    if (v284)
    {
      objc_msgSend_addObject_(v285, v41, v284, v42, v43, v44);
    }

    if (v283)
    {
      objc_msgSend_addObject_(v285, v41, v283, v42, v43, v44);
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v45 = qword_1EA84DC60;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v52 = *(v1 + 64);
    v51 = *(v1 + 72);
    v53 = objc_msgSend_count(v285, v46, v47, v48, v49, v50);
    v59 = objc_msgSend_strokeGroupingResult(*(*(v1 + 32) + 8), v54, v55, v56, v57, v58);
    v65 = objc_msgSend_textStrokeGroupClusters(v59, v60, v61, v62, v63, v64);
    v71 = objc_msgSend_count(v65, v66, v67, v68, v69, v70);
    *buf = 134218752;
    v336 = v52;
    v337 = 2048;
    v338 = v51;
    v339 = 2048;
    v340 = v53;
    v341 = 2048;
    v342 = v71;
    _os_log_impl(&dword_18366B000, v45, OS_LOG_TYPE_DEFAULT, "ContextLookup Query result for location %.2f,%.2f, analyzing contents from %ld text clusters from %ld clusters in the document.", buf, 0x2Au);
  }

  v301 = objc_msgSend_array(MEMORY[0x1E695DF70], v72, v73, v74, v75, v76);
  v290 = objc_msgSend_array(MEMORY[0x1E695DF70], v77, v78, v79, v80, v81);
  v327 = 0u;
  v328 = 0u;
  v325 = 0u;
  v326 = 0u;
  obj = v285;
  v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v325, v334, 16, v83);
  if (v288)
  {
    v289 = *v326;
    v298 = v1;
    do
    {
      v297 = 0;
      do
      {
        if (*v326 != v289)
        {
          objc_enumerationMutation(obj);
        }

        v89 = *(*(&v325 + 1) + 8 * v297);
        v304 = objc_msgSend_array(MEMORY[0x1E695DF70], v84, v85, v86, v87, v88);
        v323 = 0u;
        v324 = 0u;
        v321 = 0u;
        v322 = 0u;
        v90 = v89;
        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v321, v333, 16, v92);
        if (v98)
        {
          v99 = *v322;
          do
          {
            for (i = 0; i != v98; ++i)
            {
              if (*v322 != v99)
              {
                objc_enumerationMutation(v90);
              }

              v101 = objc_msgSend_strokeIdentifiers(*(*(&v321 + 1) + 8 * i), v93, v94, v95, v96, v97);
              v107 = objc_msgSend_allObjects(v101, v102, v103, v104, v105, v106);
              objc_msgSend_addObjectsFromArray_(v304, v108, v107, v109, v110, v111);
            }

            v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v93, &v321, v333, 16, v97);
          }

          while (v98);
        }

        v112 = *(v1 + 32);
        v319 = 0;
        v320 = 0;
        v113 = sub_18392C888(v112, v304, 0, 1, 0, &v320, &v319, *(v1 + 48));
        v291 = v320;
        v303 = v319;
        v292 = v113;
        if (!v113)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v119 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v119, OS_LOG_TYPE_ERROR, "Context results must be non-nil", buf, 2u);
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v120 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v120, OS_LOG_TYPE_FAULT, "Context results must be non-nil", buf, 2u);
          }
        }

        v293 = objc_msgSend_array(MEMORY[0x1E695DF70], v114, v115, v116, v117, v118);
        v294 = objc_msgSend_array(MEMORY[0x1E695DF70], v121, v122, v123, v124, v125);
        v131 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v303, v126, v127, v128, v129, v130);
        v314[0] = MEMORY[0x1E69E9820];
        v314[1] = 3221225472;
        v314[2] = sub_18392FD24;
        v314[3] = &unk_1E6DE0140;
        v132 = v290;
        v133 = *(v1 + 32);
        v315 = v132;
        v316 = v133;
        v295 = v293;
        v317 = v295;
        v296 = v294;
        v318 = v296;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v131, v134, v314, v135, v136, v137);

        v302 = objc_msgSend_strokeIdentifiersByStrokeClusterPolygonsFromStrokeBounds_strokes_(CHStrokeUtilities, v138, v295, v296, v139, v140);
        objc_msgSend_addObjectsFromArray_(v301, v141, v292, v142, v143, v144);
        v312 = 0u;
        v313 = 0u;
        v310 = 0u;
        v311 = 0u;
        v300 = v292;
        v147 = 0;
        v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v300, v145, &v310, v332, 16, v146);
        if (v148)
        {
          v149 = *v311;
          v299 = *v311;
          do
          {
            for (j = 0; j != v148; ++j)
            {
              if (*v311 != v149)
              {
                objc_enumerationMutation(v300);
              }

              v151 = *(*(&v310 + 1) + 8 * j);
              v152 = *(v1 + 32);
              v309 = 0;
              v153 = sub_18392FECC(v152, v151, v302, v303, &v309);
              v159 = v309;
              if (v153)
              {
                if (!v147)
                {
                  v147 = objc_msgSend_set(MEMORY[0x1E695DFA8], v154, v155, v156, v157, v158);
                }

                v160 = objc_msgSend_textResult(v151, v154, v155, v156, v157, v158);
                v166 = objc_msgSend_inputStrokeIdentifiers(v160, v161, v162, v163, v164, v165);

                objc_msgSend_addObjectsFromArray_(v147, v167, v166, v168, v169, v170);
                objc_msgSend_removeObject_(v301, v171, v151, v172, v173, v174);
              }

              else
              {
                v175 = objc_opt_class();
                v181 = objc_msgSend_strokeGroup(v151, v176, v177, v178, v179, v180);
                v187 = objc_msgSend_classification(v181, v182, v183, v184, v185, v186);
                LODWORD(v175) = objc_msgSend_isStrokeClassificationMath_(v175, v188, v187, v189, v190, v191);

                if (v175)
                {
                  if (!v147)
                  {
                    v147 = objc_msgSend_set(MEMORY[0x1E695DFA8], v192, v193, v194, v195, v196);
                  }

                  v197 = objc_msgSend_strokeGroup(v151, v192, v193, v194, v195, v196);
                  v166 = objc_msgSend_strokeIdentifiers(v197, v198, v199, v200, v201, v202);

                  v208 = objc_msgSend_allObjects(v166, v203, v204, v205, v206, v207);
                  objc_msgSend_addObjectsFromArray_(v147, v209, v208, v210, v211, v212);

                  objc_msgSend_removeObject_(v301, v213, v151, v214, v215, v216);
                }

                else
                {
                  if (!objc_msgSend_count(v159, v192, v193, v194, v195, v196))
                  {
                    goto LABEL_68;
                  }

                  v307 = 0u;
                  v308 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v166 = v159;
                  v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v217, &v305, v331, 16, v218);
                  if (v223)
                  {
                    v224 = *v306;
                    do
                    {
                      for (k = 0; k != v223; ++k)
                      {
                        if (*v306 != v224)
                        {
                          objc_enumerationMutation(v166);
                        }

                        v226 = *(*(&v305 + 1) + 8 * k);
                        if (objc_msgSend_containsObject_(v132, v219, v226, v220, v221, v222))
                        {
                          objc_msgSend_removeObject_(v132, v219, v226, v220, v221, v222);
                        }
                      }

                      v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v219, &v305, v331, 16, v222);
                    }

                    while (v223);
                    v1 = v298;
                    v149 = v299;
                  }
                }
              }

LABEL_68:
            }

            v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v300, v227, &v310, v332, 16, v228);
          }

          while (v148);
        }

        v234 = objc_msgSend_allObjects(v147, v229, v230, v231, v232, v233);
        objc_msgSend_addObjectsFromArray_(v132, v235, v234, v236, v237, v238);

        ++v297;
      }

      while (v297 != v288);
      v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, &v325, v334, 16, v88);
    }

    while (v288);
  }

  v244 = objc_msgSend_latestStrokeProvider(*(v1 + 32), v239, v240, v241, v242, v243);
  v248 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v245, v290, v244, v246, v247);

  v249 = [CHContextualTextResults alloc];
  v254 = objc_msgSend_initWithTextResults_(v249, v250, v301, v251, v252, v253);
  v260 = objc_msgSend_topTranscription(v254, v255, v256, v257, v258, v259);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v261 = qword_1EA84DC60;
  if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
  {
    v267 = objc_msgSend_count(v248, v262, v263, v264, v265, v266);
    *buf = 134218243;
    v336 = v267;
    v337 = 2117;
    v338 = v260;
    _os_log_impl(&dword_18366B000, v261, OS_LOG_TYPE_DEFAULT, "ContextLookup Query result for location: %ld non-text strokes returned, presentable text = %{sensitive}@.", buf, 0x16u);
  }

  (*(*(v1 + 56) + 16))();
  objc_msgSend_resignCurrent(*(v1 + 40), v268, v269, v270, v271, v272);
  v278 = objc_msgSend_totalUnitCount(*(v1 + 40), v273, v274, v275, v276, v277);
  objc_msgSend_setCompletedUnitCount_(*(v1 + 40), v279, v278, v280, v281, v282);

  v3 = v284;
LABEL_77:
}

void sub_18392FD24(uint64_t a1, void *a2, void *a3)
{
  v58 = a2;
  v5 = a3;
  v11 = objc_msgSend_integerValue(v5, v6, v7, v8, v9, v10);
  isStrokeClassificationTextOrMath = objc_msgSend_isStrokeClassificationTextOrMath_(CHStrokeUtilities, v12, v11, v13, v14, v15);
  if (v11 == 6)
  {
    v21 = 1;
  }

  else
  {
    v21 = isStrokeClassificationTextOrMath;
  }

  if ((v21 & 1) == 0 && (objc_msgSend_containsObject_(*(a1 + 32), v17, v58, v18, v19, v20) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v22, v58, v23, v24, v25);
    v26 = objc_opt_class();
    v32 = objc_msgSend_latestStrokeProvider(*(a1 + 40), v27, v28, v29, v30, v31);
    v36 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v26, v33, v58, v32, v34, v35);

    v37 = *(a1 + 48);
    v38 = MEMORY[0x1E696B098];
    objc_msgSend_bounds(v36, v39, v40, v41, v42, v43);
    v49 = objc_msgSend_ch_valueWithCGRect_(v38, v44, v45, v46, v47, v48);
    objc_msgSend_addObject_(v37, v50, v49, v51, v52, v53);

    objc_msgSend_addObject_(*(a1 + 56), v54, v36, v55, v56, v57);
  }
}

uint64_t sub_18392FECC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v229 = *MEMORY[0x1E69E9840];
  v205 = a2;
  v8 = a3;
  v14 = a4;
  v208 = v8;
  if (!a1)
  {
    v197 = 0;
    goto LABEL_51;
  }

  v203 = objc_msgSend_allKeys(v8, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_textResult(v205, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_inputStrokeIdentifiers(v20, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_latestStrokeProvider(a1, v27, v28, v29, v30, v31);
  v36 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v33, v26, v32, v34, v35);

  v225 = 0;
  v201 = v36;
  v39 = objc_msgSend_strokesIntersectingPolygons_fromStrokes_intersectedPolygons_(CHStrokeUtilities, v37, v203, v36, &v225, v38);
  v204 = v225;
  v211 = v39;
  v202 = objc_msgSend_count(v39, v40, v41, v42, v43, v44);
  v207 = objc_msgSend_set(MEMORY[0x1E695DFA8], v45, v46, v47, v48, v49);
  if (objc_msgSend_count(v204, v50, v51, v52, v53, v54))
  {
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    obj = v204;
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v221, v228, 16, v61);
    if (v62)
    {
      v206 = 0;
      v210 = *v222;
      do
      {
        v212 = v62;
        for (i = 0; i != v212; ++i)
        {
          if (*v222 != v210)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v221 + 1) + 8 * i);
          v217 = 0u;
          v218 = 0u;
          v219 = 0u;
          v220 = 0u;
          v67 = v211;
          v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, &v217, v227, 16, v69);
          if (v75)
          {
            v76 = 0;
            v77 = *v218;
            do
            {
              for (j = 0; j != v75; ++j)
              {
                if (*v218 != v77)
                {
                  objc_enumerationMutation(v67);
                }

                v79 = *(*(&v217 + 1) + 8 * j);
                v80 = objc_msgSend_polygonDrawing(v66, v70, v71, v72, v73, v74);
                objc_msgSend_bounds(v80, v81, v82, v83, v84, v85);
                v87 = v86;
                v89 = v88;
                v91 = v90;
                v93 = v92;
                objc_msgSend_bounds(v79, v94, v95, v96, v97, v98);
                v231.origin.x = v99;
                v231.origin.y = v100;
                v231.size.width = v101;
                v231.size.height = v102;
                v230.origin.x = v87;
                v230.origin.y = v89;
                v230.size.width = v91;
                v230.size.height = v93;
                LODWORD(v79) = CGRectContainsRect(v230, v231);

                v76 += v79;
              }

              v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v70, &v217, v227, 16, v74);
            }

            while (v75);
            v103 = v76;
          }

          else
          {
            v103 = 0.0;
          }

          if (v103 >= (v202 * 0.85))
          {
            v106 = objc_msgSend_objectForKeyedSubscript_(v208, v64, v66, v104, v105, v65);
            v215 = 0u;
            v216 = 0u;
            v213 = 0u;
            v214 = 0u;
            v107 = v106;
            v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v213, v226, 16, v109);
            if (v115)
            {
              v116 = 0;
              v117 = *v214;
              do
              {
                for (k = 0; k != v115; ++k)
                {
                  if (*v214 != v117)
                  {
                    objc_enumerationMutation(v107);
                  }

                  v119 = *(*(&v213 + 1) + 8 * k);
                  v120 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v14, v110, v111, v112, v113, v114);
                  v125 = objc_msgSend_objectForKeyedSubscript_(v120, v121, v119, v122, v123, v124);
                  v131 = objc_msgSend_integerValue(v125, v126, v127, v128, v129, v130);

                  if (v131 == 7)
                  {
                    ++v116;
                  }
                }

                v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v110, &v213, v226, 16, v114);
              }

              while (v115);
              v132 = v116;
            }

            else
            {
              v132 = 0.0;
            }

            if (v132 >= (objc_msgSend_count(v107, v133, v134, v135, v136, v137) * 0.6))
            {
              v143 = objc_msgSend_allObjects(v107, v138, v139, v140, v141, v142);
              objc_msgSend_addObjectsFromArray_(v207, v144, v143, v145, v146, v147);

              v206 = 1;
            }
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v221, v228, 16, v65);
      }

      while (v62);

      if (v206)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }
  }

  if (v202 / objc_msgSend_count(v201, v55, v56, v57, v58, v59) >= 0.200000003 && (objc_msgSend_isNonTextCandidateForContextLookupByStrokeClassificationResult_(v205, v55, v14, v57, v58, v59) & 1) != 0)
  {
    goto LABEL_49;
  }

LABEL_39:
  v148 = 0.0;
  if (v202 <= 0)
  {
    v148 = objc_msgSend_minRectangleDistanceFromStrokes_toPolygons_(CHStrokeUtilities, v55, v201, v203, v58, v59);
  }

  v149 = objc_msgSend_strokeGroup(v205, v55, v56, v57, v58, v59);
  objc_msgSend_bounds(v149, v150, v151, v152, v153, v154);
  v156 = v155;

  if (!objc_msgSend_isMathForContextLookup(v205, v157, v158, v159, v160, v161))
  {
    isNonTextCandidateTextTranscription = 0;
    if (v148 >= v156 + v156)
    {
      goto LABEL_46;
    }

LABEL_45:
    if ((objc_msgSend_isNonTextCandidateForContextLookup(v205, v162, v163, v164, v165, v166) | isNonTextCandidateTextTranscription))
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v167 = objc_msgSend_textResult(v205, v162, v163, v164, v165, v166);
  v173 = objc_msgSend_topTranscription(v167, v168, v169, v170, v171, v172);
  isNonTextCandidateTextTranscription = objc_msgSend_isNonTextCandidateTextTranscription_(CHTokenizedMathResult, v174, v173, v175, v176, v177);

  if (v148 < v156 + v156)
  {
    goto LABEL_45;
  }

LABEL_46:
  v179 = objc_msgSend_textResult(v205, v162, v163, v164, v165, v166);
  if (objc_msgSend_shouldFilterSingleCharacterResult(v179, v180, v181, v182, v183, v184))
  {
  }

  else
  {
    v190 = objc_msgSend_textResult(v205, v185, v186, v187, v188, v189);
    shouldFilterSingleTokenResult = objc_msgSend_shouldFilterSingleTokenResult(v190, v191, v192, v193, v194, v195);

    if ((shouldFilterSingleTokenResult & 1) == 0)
    {
      if (a5)
      {
        v199 = v207;
        v197 = 0;
        *a5 = v207;
      }

      else
      {
        v197 = 0;
      }

      goto LABEL_50;
    }
  }

LABEL_49:
  v197 = 1;
LABEL_50:

LABEL_51:
  return v197;
}

void sub_183931648(uint64_t a1, void *a2, void *a3, const CGPath *a4, void *a5, void *a6)
{
  v1060 = *MEMORY[0x1E69E9840];
  v944 = a2;
  v952 = a3;
  v943 = a5;
  v950 = a6;
  v988 = a1;
  if (!a1)
  {
    goto LABEL_167;
  }

  v993 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], v10, v952, v11, v12, v13);
  v948 = objc_msgSend_array(MEMORY[0x1E695DEC8], v14, v15, v16, v17, v18);
  v24 = 0x1E6DDB000uLL;
  if (objc_msgSend_count(v952, v19, v20, v21, v22, v23))
  {
    v999 = 0;
    v1000 = 0;
    v962 = sub_18392C888(a1, v952, 0, 1, 0, &v1000, &v999, v950);
    v956 = v1000;
    v990 = v999;
    v970 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v25, v26, v27, v28, v29);
    v966 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31, v32, v33, v34);
    v968 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37, v38, v39);
    for (i = 0; i < objc_msgSend_count(v952, v40, v41, v42, v43, v44); ++i)
    {
      v50 = objc_msgSend_objectAtIndexedSubscript_(v952, v46, i, v47, v48, v49);
      v56 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v990, v51, v52, v53, v54, v55);
      v61 = objc_msgSend_objectForKey_(v56, v57, v50, v58, v59, v60);
      v67 = objc_msgSend_integerValue(v61, v62, v63, v64, v65, v66);

      isStrokeClassificationTextOrMath = objc_msgSend_isStrokeClassificationTextOrMath_(CHStrokeUtilities, v68, v67, v69, v70, v71);
      if (v67 == 6)
      {
        v77 = 1;
      }

      else
      {
        v77 = isStrokeClassificationTextOrMath;
      }

      if ((v77 & 1) == 0)
      {
        objc_msgSend_addIndex_(v970, v73, i, v74, v75, v76);
        v78 = objc_opt_class();
        v84 = objc_msgSend_latestStrokeProvider(v988, v79, v80, v81, v82, v83);
        v88 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v78, v85, v50, v84, v86, v87);

        v89 = MEMORY[0x1E696B098];
        objc_msgSend_bounds(v88, v90, v91, v92, v93, v94);
        v100 = objc_msgSend_ch_valueWithCGRect_(v89, v95, v96, v97, v98, v99);
        objc_msgSend_addObject_(v966, v101, v100, v102, v103, v104);

        objc_msgSend_addObject_(v968, v105, v88, v106, v107, v108);
      }

      v24 = 0x1E6DDB000;
    }

    v981 = objc_msgSend_strokeIdentifiersByStrokeClusterPolygonsFromStrokeBounds_strokes_(*(v24 + 1664), v46, v966, v968, v48, v49);
    v964 = objc_msgSend_allKeys(v981, v109, v110, v111, v112, v113);

    v114 = MEMORY[0x1E695DF70];
    v120 = objc_msgSend_count(v962, v115, v116, v117, v118, v119);
    v125 = objc_msgSend_arrayWithCapacity_(v114, v121, v120, v122, v123, v124);
    v997 = 0u;
    v998 = 0u;
    v995 = 0u;
    v996 = 0u;
    obj = v962;
    v954 = v125;
    v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v126, &v995, v1039, 16, v127);
    if (v128)
    {
      v959 = 0;
      v984 = 0;
      v972 = 0;
      v978 = *v996;
      do
      {
        v985 = v128;
        for (j = 0; j != v985; j = j + 1)
        {
          if (*v996 != v978)
          {
            objc_enumerationMutation(obj);
          }

          v135 = *(*(&v995 + 1) + 8 * j);
          v136 = objc_msgSend_textResult(v135, v129, v130, v131, v132, v133);
          v142 = objc_msgSend_inputStrokeIdentifiers(v136, v137, v138, v139, v140, v141);

          v994 = v984;
          LODWORD(v136) = sub_18392FECC(v988, v135, v981, v990, &v994);
          v143 = v994;

          v984 = v143;
          if (v136)
          {
            v149 = v972;
            if (!v972)
            {
              v149 = objc_msgSend_set(MEMORY[0x1E695DFA8], v144, v145, v146, v147, v148);
            }

            v972 = v149;
            objc_msgSend_addObjectsFromArray_(v149, v144, v142, v146, v147, v148);
          }

          else
          {
            v155 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v144, v145, v146, v147, v148);
            for (k = 0; ; ++k)
            {
              v157 = objc_msgSend_textResult(v135, v150, v151, v152, v153, v154);
              v163 = k < objc_msgSend_tokenColumnCount(v157, v158, v159, v160, v161, v162);

              if (!v163)
              {
                break;
              }

              v169 = objc_msgSend_textResult(v135, v164, v165, v166, v167, v168);
              v175 = objc_msgSend_tokenColumns(v169, v170, v171, v172, v173, v174);
              v180 = objc_msgSend_objectAtIndexedSubscript_(v175, v176, k, v177, v178, v179);
              v186 = objc_msgSend_strokeIndexes(v180, v181, v182, v183, v184, v185);

              v187 = MEMORY[0x1E695DFD8];
              v192 = objc_msgSend_objectsAtIndexes_(v142, v188, v186, v189, v190, v191);
              v197 = objc_msgSend_setWithArray_(v187, v193, v192, v194, v195, v196);

              if (objc_msgSend_intersectsSet_(v197, v198, v993, v199, v200, v201))
              {
                objc_msgSend_addIndex_(v155, v202, k, v203, v204, v205);
              }
            }

            if (objc_msgSend_count(v155, v164, v165, v166, v167, v168))
            {
              v211 = objc_msgSend_count(v155, v206, v207, v208, v209, v210);
              v217 = objc_msgSend_textResult(v135, v212, v213, v214, v215, v216);
              LODWORD(v211) = v211 < objc_msgSend_tokenColumnCount(v217, v218, v219, v220, v221, v222);

              if (v211)
              {
                Index = objc_msgSend_firstIndex(v155, v223, v224, v225, v226, v227);
                v233 = objc_msgSend_lastIndex(v155, v228, v229, v230, v231, v232);
                v239 = objc_msgSend_firstIndex(v155, v234, v235, v236, v237, v238);
                v245 = objc_msgSend_textResult(v135, v240, v241, v242, v243, v244);
                v246 = v233 - v239;
                v975 = objc_msgSend_subResultWithColumnRange_(v245, v247, Index, v246 + 1, v248, v249);

                v255 = objc_msgSend_topTranscription(v975, v250, v251, v252, v253, v254);
                v261 = objc_msgSend_length(v255, v256, v257, v258, v259, v260);
                v267 = objc_msgSend_textResult(v135, v262, v263, v264, v265, v266);
                v273 = objc_msgSend_topTranscription(v267, v268, v269, v270, v271, v272);
                LODWORD(v261) = objc_msgSend_length(v273, v274, v275, v276, v277, v278) * 0.6 > v261;

                if (v261)
                {
                  v284 = objc_msgSend_textResult(v135, v279, v280, v281, v282, v283);
                  v290 = objc_msgSend_inputStrokeIdentifiers(v284, v285, v286, v287, v288, v289);
                  v296 = objc_msgSend_textResult(v135, v291, v292, v293, v294, v295);
                  v300 = objc_msgSend_strokeIndexesForColumnsInRange_(v296, v297, Index, v246 + 1, v298, v299);
                  v305 = objc_msgSend_objectsAtIndexes_(v290, v301, v300, v302, v303, v304);
                  objc_msgSend_setInputStrokeIdentifiers_(v975, v306, v305, v307, v308, v309);

                  v310 = [CHContextualTextResult alloc];
                  v316 = objc_msgSend_terminatingSpecialCharacter(v135, v311, v312, v313, v314, v315);
                  v322 = objc_msgSend_strokeGroup(v135, v317, v318, v319, v320, v321);
                  v325 = objc_msgSend_initWithTextResult_terminatingSpecialCharacter_strokeGroup_(v310, v323, v975, v316, v322, v324);

                  objc_msgSend_addObject_(v125, v326, v325, v327, v328, v329);
                  v335 = objc_msgSend_inputStrokeIdentifiers(v975, v330, v331, v332, v333, v334);

                  v142 = v335;
                  v341 = objc_msgSend_count(v335, v336, v337, v338, v339, v340);
                }

                else
                {
                  objc_msgSend_addObject_(v125, v279, v135, v281, v282, v283);
                  v341 = objc_msgSend_count(v142, v356, v357, v358, v359, v360);
                }

                v351 = v341;
                objc_msgSend_addObjectsFromArray_(v993, v342, v142, v343, v344, v345);
              }

              else
              {
                objc_msgSend_addObject_(v125, v223, v135, v225, v226, v227);
                v351 = objc_msgSend_count(v142, v346, v347, v348, v349, v350);
                objc_msgSend_addObjectsFromArray_(v993, v352, v142, v353, v354, v355);
              }

              v959 += v351;
            }
          }
        }

        v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v129, &v995, v1039, 16, v133);
      }

      while (v128);
    }

    else
    {
      v959 = 0;
      v984 = 0;
      v972 = 0;
    }

    for (m = 0; m < objc_msgSend_count(v952, v362, v363, v364, v365, v366); ++m)
    {
      v372 = objc_msgSend_objectAtIndexedSubscript_(v952, v368, m, v369, v370, v371);
      if (objc_msgSend_containsObject_(v972, v373, v372, v374, v375, v376))
      {
        objc_msgSend_addIndex_(v970, v377, m, v378, v379, v380);
      }

      if (objc_msgSend_containsObject_(v984, v377, v372, v378, v379, v380))
      {
        objc_msgSend_removeIndex_(v970, v381, m, v382, v383, v384);
      }
    }

    v945 = objc_msgSend_objectsAtIndexes_(v944, v368, v970, v369, v370, v371);

    v948 = v964;
    v361 = v954;
  }

  else
  {
    obj = 0;
    v959 = 0;
    v984 = 0;
    v972 = 0;
    v361 = 0;
    v945 = MEMORY[0x1E695E0F0];
  }

  v955 = v361;
  v385 = objc_opt_class();
  v391 = objc_msgSend_allObjects(v993, v386, v387, v388, v389, v390);
  v397 = objc_msgSend_latestStrokeProvider(v988, v392, v393, v394, v395, v396);
  v946 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(v385, v398, v391, v397, v399, v400);

  if (v955)
  {
    v947 = objc_msgSend_copy(v955, v401, v402, v403, v404, v405);
  }

  else
  {
    v947 = MEMORY[0x1E695E0F0];
  }

  v406 = obj;
  v949 = v993;
  v953 = v948;
  v942 = v950;
  v951 = v406;
  v412 = objc_msgSend_count(v406, v407, v408, v409, v410, v411);
  v418 = MEMORY[0x1E695F050];
  if (v412)
  {
    goto LABEL_51;
  }

  v908 = objc_msgSend_count(v953, v413, v414, v415, v416, v417);
  if (a4 || v908)
  {
    v418 = MEMORY[0x1E695F050];
    if (!v908)
    {
      BoundingBox = CGPathGetBoundingBox(a4);
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      v976 = 1;
      goto LABEL_52;
    }

LABEL_51:
    v976 = 0;
    y = v418[1];
    x = *v418;
    width = v418[2];
    height = v418[3];
LABEL_52:
    v969 = objc_msgSend_array(MEMORY[0x1E695DF70], v413, v414, v415, v416, v417);
    v974 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v422, v423, v424, v425, v426);
    patha = objc_msgSend_array(MEMORY[0x1E695DF70], v427, v428, v429, v430, v431);
    v437 = objc_msgSend_strokeGroupingResult(v988[1], v432, v433, v434, v435, v436);
    v971 = objc_msgSend_textStrokeGroupClusters(v437, v438, v439, v440, v441, v442);

    for (n = 0; n < objc_msgSend_count(v971, v443, v444, v445, v446, v447); ++n)
    {
      v452 = objc_msgSend_objectAtIndexedSubscript_(v971, v448, n, v449, v450, v451);
      v454 = *MEMORY[0x1E695F050];
      v453 = *(MEMORY[0x1E695F050] + 8);
      v456 = *(MEMORY[0x1E695F050] + 16);
      v455 = *(MEMORY[0x1E695F050] + 24);
      v1035 = 0u;
      v1036 = 0u;
      v1037 = 0u;
      v1038 = 0u;
      v457 = v452;
      v465 = objc_msgSend_countByEnumeratingWithState_objects_count_(v457, v458, &v1035, buf, 16, v459);
      if (v465)
      {
        v466 = *v1036;
        do
        {
          for (ii = 0; ii != v465; ++ii)
          {
            if (*v1036 != v466)
            {
              objc_enumerationMutation(v457);
            }

            objc_msgSend_bounds(*(*(&v1035 + 1) + 8 * ii), v460, v461, v462, v463, v464);
            v1064.origin.x = v468;
            v1064.origin.y = v469;
            v1064.size.width = v470;
            v1064.size.height = v471;
            v1061.origin.x = v454;
            v1061.origin.y = v453;
            v1061.size.width = v456;
            v1061.size.height = v455;
            v1062 = CGRectUnion(v1061, v1064);
            v454 = v1062.origin.x;
            v453 = v1062.origin.y;
            v456 = v1062.size.width;
            v455 = v1062.size.height;
          }

          v465 = objc_msgSend_countByEnumeratingWithState_objects_count_(v457, v460, &v1035, buf, 16, v464);
        }

        while (v465);
      }

      v1033 = 0u;
      v1034 = 0u;
      v1031 = 0u;
      v1032 = 0u;
      v986 = v951;
      v474 = objc_msgSend_countByEnumeratingWithState_objects_count_(v986, v472, &v1031, v1047, 16, v473);
      if (v474)
      {
        v979 = *v1032;
        do
        {
          for (jj = 0; jj != v474; ++jj)
          {
            if (*v1032 != v979)
            {
              objc_enumerationMutation(v986);
            }

            v476 = *(*(&v1031 + 1) + 8 * jj);
            v1027 = 0u;
            v1028 = 0u;
            v1029 = 0u;
            v1030 = 0u;
            v477 = v457;
            v485 = objc_msgSend_countByEnumeratingWithState_objects_count_(v477, v478, &v1027, v1046, 16, v479);
            if (v485)
            {
              v486 = *v1028;
              while (2)
              {
                for (kk = 0; kk != v485; ++kk)
                {
                  if (*v1028 != v486)
                  {
                    objc_enumerationMutation(v477);
                  }

                  v488 = *(*(&v1027 + 1) + 8 * kk);
                  v489 = objc_msgSend_strokeGroup(v476, v480, v481, v482, v483, v484);
                  LODWORD(v488) = objc_msgSend_isEquivalentToStrokeGroup_(v488, v490, v489, v491, v492, v493);

                  if (v488)
                  {
                    objc_msgSend_addObjectsFromArray_(v969, v480, v477, v482, v483, v484);
                    v513 = objc_msgSend_ch_valueWithCGRect_(MEMORY[0x1E696B098], v508, v509, v510, v511, v512, v454, v453, v456, v455);
                    objc_msgSend_addObject_(patha, v514, v513, v515, v516, v517);

                    goto LABEL_78;
                  }
                }

                v485 = objc_msgSend_countByEnumeratingWithState_objects_count_(v477, v480, &v1027, v1046, 16, v484);
                if (v485)
                {
                  continue;
                }

                break;
              }
            }
          }

          v474 = objc_msgSend_countByEnumeratingWithState_objects_count_(v986, v494, &v1031, v1047, 16, v495);
        }

        while (v474);
      }

      v986 = objc_msgSend_ch_valueWithCGRect_(MEMORY[0x1E696B098], v496, v497, v498, v499, v500, v454, v453, v456, v455);
      v477 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v501, n, v502, v503, v504);
      objc_msgSend_setObject_forKey_(v974, v505, v986, v477, v506, v507);
LABEL_78:
    }

    v1025 = 0u;
    v1026 = 0u;
    v1023 = 0u;
    v1024 = 0u;
    v518 = objc_msgSend_allKeys(v974, v448, n, v449, v450, v451);
    v525 = objc_msgSend_countByEnumeratingWithState_objects_count_(v518, v519, &v1023, v1045, 16, v520);
    if (!v525)
    {
      goto LABEL_112;
    }

    v526 = *v1024;
    if (v976)
    {
      do
      {
        for (mm = 0; mm != v525; ++mm)
        {
          if (*v1024 != v526)
          {
            objc_enumerationMutation(v518);
          }

          v528 = *(*(&v1023 + 1) + 8 * mm);
          v529 = objc_msgSend_objectForKeyedSubscript_(v974, v521, v528, v522, v523, v524);
          objc_msgSend_ch_CGRectValue(v529, v530, v531, v532, v533, v534);
          v536 = v535;
          v538 = v537;
          v540 = v539;
          v542 = v541;

          objc_msgSend_distanceFromRectangle_toRectangle_(CHStrokeUtilities, v543, v544, v545, v546, v547, v536, v538, v540, v542, x, y, width, height);
          if (v549 < height * 4.0)
          {
            v550 = objc_msgSend_integerValue(v528, v521, v548, v522, v523, v524);
            v555 = objc_msgSend_objectAtIndexedSubscript_(v971, v551, v550, v552, v553, v554);
            objc_msgSend_addObjectsFromArray_(v969, v556, v555, v557, v558, v559);
          }
        }

        v525 = objc_msgSend_countByEnumeratingWithState_objects_count_(v518, v521, &v1023, v1045, 16, v524);
      }

      while (v525);
LABEL_112:

      v983 = objc_msgSend_array(MEMORY[0x1E695DF70], v633, v634, v635, v636, v637);
      v1013 = 0u;
      v1014 = 0u;
      v1011 = 0u;
      v1012 = 0u;
      v963 = v969;
      v645 = objc_msgSend_countByEnumeratingWithState_objects_count_(v963, v638, &v1011, v1042, 16, v639);
      if (v645)
      {
        v646 = *v1012;
        do
        {
          for (nn = 0; nn != v645; ++nn)
          {
            if (*v1012 != v646)
            {
              objc_enumerationMutation(v963);
            }

            v648 = objc_msgSend_strokeIdentifiers(*(*(&v1011 + 1) + 8 * nn), v640, v641, v642, v643, v644);
            v654 = objc_msgSend_allObjects(v648, v649, v650, v651, v652, v653);
            objc_msgSend_addObjectsFromArray_(v983, v655, v654, v656, v657, v658);
          }

          v645 = objc_msgSend_countByEnumeratingWithState_objects_count_(v963, v640, &v1011, v1042, 16, v644);
        }

        while (v645);
      }

      v1009 = 0u;
      v1010 = 0u;
      v1007 = 0u;
      v1008 = 0u;
      v659 = v949;
      v666 = objc_msgSend_countByEnumeratingWithState_objects_count_(v659, v660, &v1007, v1041, 16, v661);
      if (v666)
      {
        v667 = *v1008;
        do
        {
          for (i1 = 0; i1 != v666; ++i1)
          {
            if (*v1008 != v667)
            {
              objc_enumerationMutation(v659);
            }

            objc_msgSend_removeObject_(v983, v662, *(*(&v1007 + 1) + 8 * i1), v663, v664, v665);
          }

          v666 = objc_msgSend_countByEnumeratingWithState_objects_count_(v659, v662, &v1007, v1041, 16, v665);
        }

        while (v666);
      }

      if (objc_msgSend_count(v983, v669, v670, v671, v672, v673))
      {
        v1005 = 0;
        v1006 = 0;
        v674 = sub_18392C888(v988, v983, 0, 1, 0, &v1006, &v1005, v942);
        v940 = v1006;
        v941 = v1005;
        v675 = MEMORY[0x1E695DF70];
        v681 = objc_msgSend_count(v674, v676, v677, v678, v679, v680);
        v686 = objc_msgSend_arrayWithCapacity_(v675, v682, v681, v683, v684, v685);
        v1004 = 0u;
        v1002 = 0u;
        v1003 = 0u;
        v1001 = 0u;
        v957 = v674;
        v977 = v686;
        v967 = objc_msgSend_countByEnumeratingWithState_objects_count_(v957, v687, &v1001, v1040, 16, v688);
        if (v967)
        {
          v965 = *v1002;
          v694 = 0x1E695D000uLL;
          do
          {
            for (i2 = 0; i2 != v967; ++i2)
            {
              if (*v1002 != v965)
              {
                objc_enumerationMutation(v957);
              }

              v695 = *(*(&v1001 + 1) + 8 * i2);
              if ((objc_msgSend_isNonTextCandidateForContextLookup(v695, v689, v690, v691, v692, v693, v940) & 1) == 0 && (objc_msgSend_isMathForContextLookup(v695, v689, v690, v691, v692, v693) & 1) == 0)
              {
                v987 = objc_msgSend_setWithArray_(*(v694 + 4056), v689, v983, v691, v692, v693);
                v696 = *(v694 + 4056);
                v702 = objc_msgSend_textResult(v695, v697, v698, v699, v700, v701);
                v708 = objc_msgSend_inputStrokeIdentifiers(v702, v703, v704, v705, v706, v707);
                v713 = objc_msgSend_setWithArray_(v696, v709, v708, v710, v711, v712);
                LODWORD(v696) = objc_msgSend_isSubsetOfSet_(v713, v714, v987, v715, v716, v717);

                if (v696)
                {
                  objc_msgSend_addObject_(v977, v718, v695, v720, v721, v722);
                }

                else
                {
                  v989 = objc_msgSend_array(MEMORY[0x1E695DF70], v718, v719, v720, v721, v722);
                  v992 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v723, v724, v725, v726, v727);
                  for (i3 = 0; ; ++i3)
                  {
                    v734 = objc_msgSend_textResult(v695, v728, v729, v730, v731, v732);
                    v740 = i3 < objc_msgSend_tokenColumnCount(v734, v735, v736, v737, v738, v739);

                    if (!v740)
                    {
                      break;
                    }

                    v746 = objc_msgSend_textResult(v695, v741, v742, v743, v744, v745);
                    v752 = objc_msgSend_tokenColumns(v746, v747, v748, v749, v750, v751);
                    v757 = objc_msgSend_objectAtIndexedSubscript_(v752, v753, i3, v754, v755, v756);
                    v763 = objc_msgSend_strokeIndexes(v757, v758, v759, v760, v761, v762);

                    v764 = MEMORY[0x1E695DFD8];
                    v770 = objc_msgSend_textResult(v695, v765, v766, v767, v768, v769);
                    v776 = objc_msgSend_inputStrokeIdentifiers(v770, v771, v772, v773, v774, v775);
                    v781 = objc_msgSend_objectsAtIndexes_(v776, v777, v763, v778, v779, v780);
                    v786 = objc_msgSend_setWithArray_(v764, v782, v781, v783, v784, v785);

                    if (objc_msgSend_intersectsSet_(v786, v787, v987, v788, v789, v790))
                    {
                      if (objc_msgSend_count(v992, v791, v792, v793, v794, v795) && (i3 - objc_msgSend_lastIndex(v992, v796, v797, v798, v799, v800)) >= 2)
                      {
                        v802 = objc_msgSend_copy(v992, v796, v801, v798, v799, v800);
                        objc_msgSend_addObject_(v989, v803, v802, v804, v805, v806);

                        objc_msgSend_removeAllIndexes(v992, v807, v808, v809, v810, v811);
                      }

                      objc_msgSend_addIndex_(v992, v796, i3, v798, v799, v800);
                    }
                  }

                  if (objc_msgSend_count(v992, v741, v742, v743, v744, v745))
                  {
                    objc_msgSend_addObject_(v989, v812, v992, v814, v815, v816);
                  }

                  if (objc_msgSend_count(v989, v812, v813, v814, v815, v816))
                  {
                    for (i4 = 0; i4 < objc_msgSend_count(v989, v817, v818, v819, v820, v821); ++i4)
                    {
                      v827 = objc_msgSend_objectAtIndexedSubscript_(v989, v823, i4, v824, v825, v826);
                      v838 = @" ";
                      if (i4 == objc_msgSend_count(v989, v828, v829, v830, v831, v832) - 1)
                      {
                        v838 = objc_msgSend_terminatingSpecialCharacter(v695, v833, v834, v835, v836, v837);
                      }

                      v839 = objc_msgSend_firstIndex(v827, v833, v834, v835, v836, v837);
                      v845 = objc_msgSend_lastIndex(v827, v840, v841, v842, v843, v844);
                      v851 = objc_msgSend_firstIndex(v827, v846, v847, v848, v849, v850);
                      v857 = objc_msgSend_textResult(v695, v852, v853, v854, v855, v856);
                      v858 = v845 - v851;
                      v862 = objc_msgSend_subResultWithColumnRange_(v857, v859, v839, v845 - v851 + 1, v860, v861);

                      v868 = objc_msgSend_textResult(v695, v863, v864, v865, v866, v867);
                      v874 = objc_msgSend_inputStrokeIdentifiers(v868, v869, v870, v871, v872, v873);
                      v880 = objc_msgSend_textResult(v695, v875, v876, v877, v878, v879);
                      v884 = objc_msgSend_strokeIndexesForColumnsInRange_(v880, v881, v839, v858 + 1, v882, v883);
                      v889 = objc_msgSend_objectsAtIndexes_(v874, v885, v884, v886, v887, v888);
                      objc_msgSend_setInputStrokeIdentifiers_(v862, v890, v889, v891, v892, v893);

                      v894 = [CHContextualTextResult alloc];
                      v900 = objc_msgSend_strokeGroup(v695, v895, v896, v897, v898, v899);
                      v903 = objc_msgSend_initWithTextResult_terminatingSpecialCharacter_strokeGroup_(v894, v901, v862, v838, v900, v902);

                      objc_msgSend_addObject_(v977, v904, v903, v905, v906, v907);
                    }
                  }
                }

                v694 = 0x1E695D000;
              }
            }

            v967 = objc_msgSend_countByEnumeratingWithState_objects_count_(v957, v689, &v1001, v1040, 16, v693);
          }

          while (v967);
        }
      }

      else
      {
        v977 = MEMORY[0x1E695E0F0];
      }

      goto LABEL_162;
    }

LABEL_89:
    v560 = 0;
    while (1)
    {
      if (*v1024 != v526)
      {
        objc_enumerationMutation(v518);
      }

      v561 = *(*(&v1023 + 1) + 8 * v560);
      v562 = objc_msgSend_objectForKeyedSubscript_(v974, v521, v561, v522, v523, v524);
      objc_msgSend_ch_CGRectValue(v562, v563, v564, v565, v566, v567);
      v569 = v568;
      v571 = v570;
      v573 = v572;
      v575 = v574;

      v1021 = 0u;
      v1022 = 0u;
      v1019 = 0u;
      v1020 = 0u;
      v576 = patha;
      v584 = objc_msgSend_countByEnumeratingWithState_objects_count_(v576, v577, &v1019, v1044, 16, v578);
      if (v584)
      {
        break;
      }

LABEL_100:

      v1017 = 0u;
      v1018 = 0u;
      v1015 = 0u;
      v1016 = 0u;
      v576 = v953;
      v600 = objc_msgSend_countByEnumeratingWithState_objects_count_(v576, v598, &v1015, v1043, 16, v599);
      if (v600)
      {
        v601 = *v1016;
LABEL_102:
        v602 = 0;
        while (1)
        {
          if (*v1016 != v601)
          {
            objc_enumerationMutation(v576);
          }

          v603 = objc_msgSend_polygonDrawing(*(*(&v1015 + 1) + 8 * v602), v579, v580, v581, v582, v583);
          objc_msgSend_bounds(v603, v604, v605, v606, v607, v608);
          v610 = v609;
          v612 = v611;
          v614 = v613;
          v616 = v615;

          objc_msgSend_distanceFromRectangle_toRectangle_(CHStrokeUtilities, v617, v618, v619, v620, v621, v569, v571, v573, v575, v610, v612, v614, v616);
          if (v622 < v616 * 4.0)
          {
            break;
          }

          if (v600 == ++v602)
          {
            v600 = objc_msgSend_countByEnumeratingWithState_objects_count_(v576, v579, &v1015, v1043, 16, v583);
            if (v600)
            {
              goto LABEL_102;
            }

            goto LABEL_110;
          }
        }

LABEL_109:
        v623 = objc_msgSend_integerValue(v561, v579, v580, v581, v582, v583);
        v628 = objc_msgSend_objectAtIndexedSubscript_(v971, v624, v623, v625, v626, v627);
        objc_msgSend_addObjectsFromArray_(v969, v629, v628, v630, v631, v632);
      }

LABEL_110:

      if (++v560 == v525)
      {
        v525 = objc_msgSend_countByEnumeratingWithState_objects_count_(v518, v521, &v1023, v1045, 16, v524);
        if (!v525)
        {
          goto LABEL_112;
        }

        goto LABEL_89;
      }
    }

    v585 = *v1020;
LABEL_94:
    v586 = 0;
    while (1)
    {
      if (*v1020 != v585)
      {
        objc_enumerationMutation(v576);
      }

      objc_msgSend_ch_CGRectValue(*(*(&v1019 + 1) + 8 * v586), v579, v580, v581, v582, v583);
      v588 = v587;
      objc_msgSend_distanceFromRectangle_toRectangle_(CHStrokeUtilities, v589, v590, v591, v592, v593, v569, v571, v573, v575, v594, v595, v596, v587);
      if (v597 < v588 * 4.0)
      {
        goto LABEL_109;
      }

      if (v584 == ++v586)
      {
        v584 = objc_msgSend_countByEnumeratingWithState_objects_count_(v576, v579, &v1019, v1044, 16, v583);
        if (v584)
        {
          goto LABEL_94;
        }

        goto LABEL_100;
      }
    }
  }

  v977 = MEMORY[0x1E695E0F0];
LABEL_162:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v909 = qword_1EA84DC60;
  if (os_log_type_enabled(v909, OS_LOG_TYPE_DEFAULT))
  {
    v915 = objc_msgSend_count(v944, v910, v911, v912, v913, v914);
    v921 = objc_msgSend_count(v946, v916, v917, v918, v919, v920);
    v927 = objc_msgSend_count(v945, v922, v923, v924, v925, v926);
    v933 = objc_msgSend_count(v947, v928, v929, v930, v931, v932);
    v939 = objc_msgSend_count(v977, v934, v935, v936, v937, v938);
    *buf = 134219264;
    v1049 = v915;
    v1050 = 2048;
    v1051 = v921;
    v1052 = 2048;
    v1053 = v927;
    v1054 = 2048;
    v1055 = v959;
    v1056 = 2048;
    v1057 = v933;
    v1058 = 2048;
    v1059 = v939;
    _os_log_impl(&dword_18366B000, v909, OS_LOG_TYPE_DEFAULT, "ContextLookup Query result: %ld strokes initially selected, %ld strokes covered, %ld nonTextStrokes, %ld text strokes in %ld lines of text, %ld lines of surrounding text", buf, 0x3Eu);
  }

  v943[2](v943, v946, v945, v947, v977);
LABEL_167:
}

void sub_183933838(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 56);
  if (v7 && (*(v7 + 16))())
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v8 = qword_1EA84DC60;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_DEFAULT, "ContextLookup Query result for selected strokes cancelled.", buf, 2u);
    }
  }

  else
  {
    objc_msgSend_becomeCurrentWithPendingUnitCount_(*(a1 + 32), a2, 100, a4, a5, a6);
    v9 = objc_opt_class();
    v28 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(v9, v10, *(a1 + 40), *(*(a1 + 48) + 24), v11, v12);
    sub_183931648(*(a1 + 48), *(a1 + 40), v28, 0, *(a1 + 64), *(a1 + 56));
    objc_msgSend_resignCurrent(*(a1 + 32), v13, v14, v15, v16, v17);
    v23 = objc_msgSend_totalUnitCount(*(a1 + 32), v18, v19, v20, v21, v22);
    objc_msgSend_setCompletedUnitCount_(*(a1 + 32), v24, v23, v25, v26, v27);
  }
}

void sub_183933AF4(uint64_t a1)
{
  v146 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (!v2 || !(*(v2 + 16))())
  {
    if (qword_1EA84DC48 == -1)
    {
      v4 = qword_1EA84DC60;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v4 = qword_1EA84DC60;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_msgSend_becomeCurrentWithPendingUnitCount_(*(a1 + 40), v16, 100, v17, v18, v19);
        v25 = objc_msgSend_latestStrokeProvider(*(a1 + 32), v20, v21, v22, v23, v24);
        v3 = objc_msgSend_orderedStrokes(v25, v26, v27, v28, v29, v30);

        v36 = objc_msgSend_latestStrokeProvider(*(a1 + 32), v31, v32, v33, v34, v35);
        v42 = objc_msgSend_visibleStrokeEncodedIdentifiers(v36, v37, v38, v39, v40, v41);

        v53 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v43, v44, v45, v46, v47);
        for (i = 0; i < objc_msgSend_count(v3, v48, v49, v50, v51, v52); ++i)
        {
          v60 = objc_msgSend_objectAtIndexedSubscript_(v3, v55, i, v57, v58, v59);
          if (!objc_msgSend_count(v42, v61, v62, v63, v64, v65) || (objc_msgSend_latestStrokeProvider(*(a1 + 32), v66, v67, v68, v69, v70), v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend_strokeIdentifier(v60, v72, v73, v74, v75, v76), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend_encodedStrokeIdentifier_(v71, v78, v77, v79, v80, v81), v82 = objc_claimAutoreleasedReturnValue(), v77, v71, LODWORD(v71) = objc_msgSend_containsObject_(v42, v83, v82, v84, v85, v86), v82, v71))
          {
            objc_msgSend_bounds(v60, v66, v67, v68, v69, v70);
            x = v147.x;
            y = v147.y;
            v90 = v89;
            v92 = v91;
            v93 = CGPathContainsPoint(*(a1 + 64), 0, v147, 0);
            v148.x = x + v90;
            v148.y = y;
            v94 = CGPathContainsPoint(*(a1 + 64), 0, v148, 0);
            v149.x = x + v90;
            v149.y = y + v92;
            v95 = CGPathContainsPoint(*(a1 + 64), 0, v149, 0);
            v150.x = x;
            v150.y = y + v92;
            v100 = v94 + v93 + v95 + CGPathContainsPoint(*(a1 + 64), 0, v150, 0);
            if (v100 >= 3 || v100 && (v151.x = x + v90 * 0.5, v151.y = y + v92 * 0.5, CGPathContainsPoint(*(a1 + 64), 0, v151, 0)))
            {
              objc_msgSend_addIndex_(v53, v96, i, v97, v98, v99);
            }
          }
        }

        v101 = MEMORY[0x1E695DF70];
        v102 = objc_msgSend_count(v53, v55, v56, v57, v58, v59);
        v107 = objc_msgSend_arrayWithCapacity_(v101, v103, v102, v104, v105, v106);
        v138 = MEMORY[0x1E69E9820];
        v139 = 3221225472;
        v140 = sub_1839340A4;
        v141 = &unk_1E6DE0190;
        v108 = v107;
        v109 = *(a1 + 32);
        v142 = v108;
        v143 = v109;
        objc_msgSend_enumerateObjectsAtIndexes_options_usingBlock_(v3, v110, v53, 0, &v138, v111);
        v112 = objc_opt_class();
        v118 = objc_msgSend_latestStrokeProvider(*(a1 + 32), v113, v114, v115, v116, v117, v138, v139, v140, v141);
        v122 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(v112, v119, v108, v118, v120, v121);

        sub_183931648(*(a1 + 32), v122, v108, *(a1 + 64), *(a1 + 56), *(a1 + 48));
        objc_msgSend_resignCurrent(*(a1 + 40), v123, v124, v125, v126, v127);
        v133 = objc_msgSend_totalUnitCount(*(a1 + 40), v128, v129, v130, v131, v132);
        objc_msgSend_setCompletedUnitCount_(*(a1 + 40), v134, v133, v135, v136, v137);

        goto LABEL_19;
      }
    }

    v10 = objc_msgSend_attachments(*(*(a1 + 32) + 48), v5, v6, v7, v8, v9);
    *buf = 134217984;
    v145 = objc_msgSend_count(v10, v11, v12, v13, v14, v15);
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_DEFAULT, "ContextLookup Query for path starting in document with %ld attachments.", buf, 0xCu);

    goto LABEL_9;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v3 = qword_1EA84DC60;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  v3 = qword_1EA84DC60;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEFAULT, "ContextLookup Query result for path cancelled.", buf, 2u);
  }

LABEL_19:
}

void sub_1839340A4(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = *(a1 + 32);
  v9 = objc_msgSend_latestStrokeProvider(*(a1 + 40), v4, v5, v6, v7, v8);
  v15 = objc_msgSend_strokeIdentifier(v25, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_encodedStrokeIdentifier_(v9, v16, v15, v17, v18, v19);
  objc_msgSend_addObject_(v3, v21, v20, v22, v23, v24);
}

void sub_183934394(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_becomeCurrentWithPendingUnitCount_(*(a1 + 32), a2, 100, a4, a5, a6);
  v28 = sub_18392C888(*(a1 + 40), *(a1 + 48), 0, 1, 1, 0, 0, *(a1 + 56));
  v7 = [CHContextualTextResults alloc];
  v12 = objc_msgSend_initWithTextResults_(v7, v8, v28, v9, v10, v11);
  (*(*(a1 + 64) + 16))();
  objc_msgSend_resignCurrent(*(a1 + 32), v13, v14, v15, v16, v17);
  v23 = objc_msgSend_totalUnitCount(*(a1 + 32), v18, v19, v20, v21, v22);
  objc_msgSend_setCompletedUnitCount_(*(a1 + 32), v24, v23, v25, v26, v27);
}

void sub_183934628(uint64_t a1)
{
  v432[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v363 = objc_msgSend_visibleStrokeEncodedIdentifiers(v2, v3, v4, v5, v6, v7);
  v8 = objc_opt_class();
  v432[0] = *(a1 + 40);
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v432, 1, v10, v11);
  v364 = a1;
  v369 = objc_msgSend_polygonForStrokes_(v8, v13, v12, v14, v15, v16);

  v22 = objc_msgSend_strokeGroupingResult(*(*(a1 + 32) + 8), v17, v18, v19, v20, v21);
  v28 = objc_msgSend_strokeGroupOrdering(*(a1 + 32), v23, v24, v25, v26, v27);
  v352 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v22, v29, v28, 0, v30, v31);

  v353 = objc_msgSend_array(MEMORY[0x1E695DF70], v32, v33, v34, v35, v36);
  v355 = objc_msgSend_array(MEMORY[0x1E695DF70], v37, v38, v39, v40, v41);
  v354 = objc_msgSend_array(MEMORY[0x1E695DF70], v42, v43, v44, v45, v46);
  v368 = objc_msgSend_array(MEMORY[0x1E695DF70], v47, v48, v49, v50, v51);
  v367 = objc_msgSend_array(MEMORY[0x1E695DF70], v52, v53, v54, v55, v56);
  v419[0] = 0;
  v419[1] = v419;
  v419[2] = 0x2020000000;
  v420 = 0;
  v415 = 0;
  v416 = &v415;
  v417 = 0x2020000000;
  v418 = 0x7FFFFFFFFFFFFFFFLL;
  v411 = 0;
  v412 = &v411;
  v413 = 0x2020000000;
  v414 = 0;
  v407 = 0;
  v408 = &v407;
  v409 = 0x2020000000;
  v410 = 0x7FFFFFFFFFFFFFFFLL;
  v406[0] = 0;
  v406[1] = v406;
  v406[2] = 0x2020000000;
  v406[3] = 0;
  v356 = objc_msgSend_array(MEMORY[0x1E695DF70], v57, v58, v59, v60, v61);
  v404 = 0u;
  v405 = 0u;
  v402 = 0u;
  v403 = 0u;
  obj = v352;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v402, v431, 16, v63);
  if (v64)
  {
    v357 = 0;
    v71 = 0;
    v359 = *v403;
    v360 = v64;
    *&v70 = 138739971;
    v351 = v70;
LABEL_3:
    v365 = 0;
    while (1)
    {
      if (*v403 != v359)
      {
        objc_enumerationMutation(obj);
      }

      v72 = *(*(&v402 + 1) + 8 * v365);
      v73 = *(v364 + 56);
      if (v73 && ((*(v73 + 16))() & 1) != 0)
      {
        goto LABEL_60;
      }

      if (!objc_msgSend_count(v363, v65, v66, v67, v68, v69, v351) || (objc_msgSend_strokeIdentifiers(v72, v65, v66, v67, v68, v69), v74 = objc_claimAutoreleasedReturnValue(), objc_msgSend_set(v363, v75, v76, v77, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v74, v81, v80, v82, v83, v84), v80, v74, (isSubsetOfSet & 1) != 0))
      {
        objc_msgSend_bounds(*(v364 + 40), v65, v66, v67, v68, v69);
        v87 = v86;
        v89 = v88;
        v91 = v90;
        v93 = v92;
        objc_msgSend_bounds(v72, v94, v95, v96, v97, v98);
        v434.origin.x = v99;
        v434.origin.y = v100;
        v434.size.width = v101;
        v434.size.height = v102;
        v433.origin.x = v87;
        v433.origin.y = v89;
        v433.size.width = v91;
        v433.size.height = v93;
        if (CGRectIntersectsRect(v433, v434))
        {
          break;
        }
      }

LABEL_6:
      if (++v365 == v360)
      {
        v360 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v402, v431, 16, v69);
        if (v360)
        {
          goto LABEL_3;
        }

        goto LABEL_60;
      }
    }

    v103 = *(*(v364 + 32) + 8);
    v104 = objc_msgSend_uniqueIdentifier(v72, v65, v66, v67, v68, v69);
    v361 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v103, v105, v104, v106, v107, v108);
    v119 = objc_msgSend_mathResult(v361, v109, v110, v111, v112, v113);
    if (!v119)
    {
      goto LABEL_17;
    }

    if (objc_msgSend_hasTextResult(v361, v114, v115, v116, v117, v118))
    {
      v125 = objc_msgSend_mathResult(v361, v120, v121, v122, v123, v124);
      isEvaluationExpected = objc_msgSend_isEvaluationExpected(v125, v126, v127, v128, v129, v130);

      if ((isEvaluationExpected & 1) == 0)
      {
LABEL_17:
        if (objc_msgSend_hasTextResult(v361, v114, v115, v116, v117, v118))
        {
          v137 = objc_msgSend_recognitionResultsByLocale(v361, v132, v133, v134, v135, v136);
          v143 = objc_msgSend_preferredLocale(v361, v138, v139, v140, v141, v142);
          v148 = objc_msgSend_objectForKeyedSubscript_(v137, v144, v143, v145, v146, v147);

          v154 = objc_msgSend_preferredLocale(v361, v149, v150, v151, v152, v153);
          shouldUseOriginalTokensForLocale = objc_msgSend_shouldUseOriginalTokensForLocale_(CHRecognizerConfiguration, v155, v154, v156, v157, v158);

          if (shouldUseOriginalTokensForLocale)
          {
            v165 = objc_msgSend_originalTokens(v148, v160, v161, v162, v163, v164);
          }

          else
          {
            v213 = objc_msgSend_array(MEMORY[0x1E695DF70], v160, v161, v162, v163, v164);
            v400[0] = MEMORY[0x1E69E9820];
            v400[1] = 3221225472;
            v400[2] = sub_1839357C4;
            v400[3] = &unk_1E6DDE720;
            v214 = v213;
            v401 = v214;
            objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v148, v215, v400, v216, v217, v218);
            v165 = objc_msgSend_copy(v214, v219, v220, v221, v222, v223);
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v224 = qword_1EA84DC60;
          if (os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
          {
            v230 = objc_msgSend_topTranscription(v148, v225, v226, v227, v228, v229);
            v236 = objc_msgSend_count(v165, v231, v232, v233, v234, v235);
            *buf = 138740483;
            v237 = @"NO";
            if (shouldUseOriginalTokensForLocale)
            {
              v237 = @"YES";
            }

            v426 = v230;
            v427 = 2112;
            v428 = v237;
            v429 = 2048;
            v430 = v236;
            _os_log_impl(&dword_18366B000, v224, OS_LOG_TYPE_DEBUG, "ScratchOut: evaluating group with transcription %{sensitive}@, using original tokens: %@, num tokens: %lu", buf, 0x20u);
          }

          v386[0] = MEMORY[0x1E69E9820];
          v386[1] = 3221225472;
          v386[2] = sub_1839357D0;
          v386[3] = &unk_1E6DE01E0;
          v387 = v361;
          v388 = v2;
          v389 = *(v364 + 40);
          v395 = v419;
          v390 = v355;
          v396 = &v411;
          v391 = v353;
          v392 = v369;
          v397 = v406;
          v393 = v356;
          v394 = v354;
          v398 = &v415;
          v399 = &v407;
          objc_msgSend_enumerateObjectsUsingBlock_(v165, v238, v386, v239, v240, v241);
          v242 = *(v412 + 24);

          v357 += v242;
        }

        else
        {
          v380 = 0u;
          v381 = 0u;
          v378 = 0u;
          v379 = 0u;
          v148 = objc_msgSend_strokeIdentifiers(v72, v132, v133, v134, v135, v136);
          v201 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v196, &v378, v423, 16, v197);
          if (v201)
          {
            v202 = *v379;
            do
            {
              for (i = 0; i != v201; ++i)
              {
                if (*v379 != v202)
                {
                  objc_enumerationMutation(v148);
                }

                v204 = *(*(&v378 + 1) + 8 * i);
                v208 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v198, v204, v2, v199, v200);
                if (v208 && objc_msgSend_isStroke_intersectingPolygon_(CHStrokeUtilities, v205, v208, v369, v206, v207))
                {
                  objc_msgSend_addObject_(v367, v209, v204, v210, v211, v212);
                }
              }

              v201 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v198, &v378, v423, 16, v200);
            }

            while (v201);
          }
        }

        goto LABEL_4;
      }
    }

    else
    {
    }

    if (!v71)
    {
      v71 = objc_msgSend_polygonSetForScratchOutStroke_(CHStrokeUtilities, v114, *(v364 + 40), v116, v117, v118);
    }

    v384 = 0u;
    v385 = 0u;
    v382 = 0u;
    v383 = 0u;
    v148 = objc_msgSend_inputStrokeIdentifiers(v361, v114, v115, v116, v117, v118);
    v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v166, &v382, v424, 16, v167);
    if (v171)
    {
      v172 = 0;
      v173 = *v383;
      do
      {
        for (j = 0; j != v171; ++j)
        {
          if (*v383 != v173)
          {
            objc_enumerationMutation(v148);
          }

          v175 = *(*(&v382 + 1) + 8 * j);
          v179 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v168, v175, v2, v169, v170);
          if (v179 && objc_msgSend_isStroke_intersectingAnyPolygonInSet_(CHStrokeUtilities, v176, v179, v71, v177, v178))
          {
            objc_msgSend_addObject_(v368, v180, v175, v181, v182, v183);
            v172 = 1;
          }
        }

        v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v168, &v382, v424, 16, v170);
      }

      while (v171);

      if ((v172 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v148 = qword_1EA84DC60;
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        v189 = objc_msgSend_mathResult(v361, v184, v185, v186, v187, v188);
        v195 = objc_msgSend_topTranscription(v189, v190, v191, v192, v193, v194);
        *buf = v351;
        v426 = v195;
        _os_log_impl(&dword_18366B000, v148, OS_LOG_TYPE_DEBUG, "ScratchOut: math strokes augmented with strokes from group: %{sensitive}@", buf, 0xCu);
      }
    }

LABEL_4:

LABEL_5:
    goto LABEL_6;
  }

  v357 = 0;
  v71 = 0;
LABEL_60:

  v248 = *(v364 + 56);
  if (v248 && ((*(v248 + 16))() & 1) != 0)
  {
    (*(*(v364 + 64) + 16))();
  }

  else
  {
    if (objc_msgSend_count(v356, v243, v244, v245, v246, v247, v351))
    {
      v366 = 0;
      v254 = 1;
      v260 = objc_msgSend_copy(v356, v249, v250, v251, v252, v253);
    }

    else if (v357 < 3 || (v251 = v408[3], v251 < 1))
    {
      if (objc_msgSend_count(v355, v249, v250, v251, v252, v253))
      {
        v269 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v266, 0, v416[3], v267, v268);
        v260 = objc_msgSend_objectsAtIndexes_(v355, v270, v269, v271, v272, v273);
        v366 = v354;

        v254 = 0;
      }

      else
      {
        v260 = v354;
        v366 = 0;
        v254 = 1;
      }
    }

    else
    {
      v261 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v249, 0, v251, v252, v253);
      v260 = objc_msgSend_objectsAtIndexes_(v353, v262, v261, v263, v264, v265);

      v366 = 0;
      v254 = 0;
    }

    if (objc_msgSend_count(v368, v255, v256, v257, v258, v259))
    {
      v279 = objc_msgSend_arrayByAddingObjectsFromArray_(v260, v274, v368, v276, v277, v278);

      v254 = 1;
      v260 = v279;
    }

    if (objc_msgSend_count(v367, v274, v275, v276, v277, v278))
    {
      v285 = objc_msgSend_arrayByAddingObjectsFromArray_(v260, v280, v367, v282, v283, v284);

      v254 = 1;
      v260 = v285;
    }

    v362 = v254;
    v286 = MEMORY[0x1E695DFA8];
    v287 = objc_msgSend_count(v260, v280, v281, v282, v283, v284);
    v292 = objc_msgSend_setWithCapacity_(v286, v288, v287, v289, v290, v291);
    v376 = 0u;
    v377 = 0u;
    v374 = 0u;
    v375 = 0u;
    v293 = v260;
    v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(v293, v294, &v374, v422, 16, v295);
    if (v300)
    {
      v301 = *v375;
      do
      {
        for (k = 0; k != v300; ++k)
        {
          if (*v375 != v301)
          {
            objc_enumerationMutation(v293);
          }

          v303 = objc_msgSend_strokeIdentifierFromData_(v2, v296, *(*(&v374 + 1) + 8 * k), v297, v298, v299);
          objc_msgSend_addObject_(v292, v304, v303, v305, v306, v307);
        }

        v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(v293, v296, &v374, v422, 16, v299);
      }

      while (v300);
    }

    v308 = MEMORY[0x1E695DFA8];
    v314 = objc_msgSend_count(v366, v309, v310, v311, v312, v313);
    v319 = objc_msgSend_setWithCapacity_(v308, v315, v314, v316, v317, v318);
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v320 = v366;
    v327 = objc_msgSend_countByEnumeratingWithState_objects_count_(v320, v321, &v370, v421, 16, v322);
    if (v327)
    {
      v328 = *v371;
      do
      {
        for (m = 0; m != v327; ++m)
        {
          if (*v371 != v328)
          {
            objc_enumerationMutation(v320);
          }

          v330 = objc_msgSend_strokeIdentifierFromData_(v2, v323, *(*(&v370 + 1) + 8 * m), v324, v325, v326);
          objc_msgSend_addObject_(v319, v331, v330, v332, v333, v334);
        }

        v327 = objc_msgSend_countByEnumeratingWithState_objects_count_(v320, v323, &v370, v421, 16, v326);
      }

      while (v327);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v335 = qword_1EA84DC60;
    if (os_log_type_enabled(v335, OS_LOG_TYPE_DEBUG))
    {
      v341 = objc_msgSend_count(v292, v336, v337, v338, v339, v340);
      *buf = 134218240;
      v426 = v341;
      v427 = 2048;
      v428 = v362;
      _os_log_impl(&dword_18366B000, v335, OS_LOG_TYPE_DEBUG, "ScratchOut: covered strokes: %ld, result level: %ld", buf, 0x16u);
    }

    v342 = [CHTokenizedStrokeResult alloc];
    v346 = objc_msgSend_initWithStrokeIdentifiers_resultLevel_(v342, v343, v292, v362, v344, v345);
    objc_msgSend_setCompletedUnitCount_(*(v364 + 48), v347, 100, v348, v349, v350);
    (*(*(v364 + 64) + 16))();
  }

  _Block_object_dispose(v406, 8);
  _Block_object_dispose(&v407, 8);
  _Block_object_dispose(&v411, 8);
  _Block_object_dispose(&v415, 8);
  _Block_object_dispose(v419, 8);
}

void sub_183935444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30)
{
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x320], 8);

  _Unwind_Resume(a1);
}

void sub_1839357D0(uint64_t a1, void *a2)
{
  v235 = *MEMORY[0x1E69E9840];
  v216 = a2;
  v8 = objc_msgSend_inputStrokeIdentifiers(*(a1 + 32), v3, v4, v5, v6, v7);
  v14 = objc_msgSend_strokeIndexes(v216, v9, v10, v11, v12, v13);
  v215 = objc_msgSend_objectsAtIndexes_(v8, v15, v14, v16, v17, v18);

  v19 = MEMORY[0x1E695F050];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v29 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25, v26, v27, v28);
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v30 = v215;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v221, v234, 16, v32);
  if (v36)
  {
    v37 = *v222;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v222 != v37)
        {
          objc_enumerationMutation(v30);
        }

        v39 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v33, *(*(&v221 + 1) + 8 * i), *(a1 + 40), v34, v35);
        v45 = v39;
        if (v39)
        {
          objc_msgSend_bounds(v39, v40, v41, v42, v43, v44);
          v243.origin.x = v46;
          v243.origin.y = v47;
          v243.size.width = v48;
          v243.size.height = v49;
          v236.origin.x = x;
          v236.origin.y = y;
          v236.size.width = width;
          v236.size.height = height;
          v237 = CGRectUnion(v236, v243);
          x = v237.origin.x;
          y = v237.origin.y;
          width = v237.size.width;
          height = v237.size.height;
          objc_msgSend_addObject_(v29, v50, v45, v51, v52, v53);
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v221, v234, 16, v35);
    }

    while (v36);
  }

  objc_msgSend_bounds(*(a1 + 48), v54, v55, v56, v57, v58);
  v244.origin.x = v59;
  v244.origin.y = v60;
  v244.size.width = v61;
  v244.size.height = v62;
  v238.origin.x = x;
  v238.origin.y = y;
  v238.size.width = width;
  v238.size.height = height;
  if (CGRectIntersectsRect(v238, v244))
  {
    v73 = objc_msgSend_array(MEMORY[0x1E695DF70], v63, v64, v65, v66, v67);
    for (j = 0; j < objc_msgSend_count(v30, v68, v69, v70, v71, v72); ++j)
    {
      v80 = objc_msgSend_objectAtIndexedSubscript_(v29, v75, j, v77, v78, v79);
      if (objc_msgSend_isStroke_intersectingPolygon_(CHStrokeUtilities, v81, v80, *(a1 + 72), v82, v83))
      {
        v88 = objc_msgSend_objectAtIndexedSubscript_(v30, v84, j, v85, v86, v87);
        objc_msgSend_addObject_(v73, v89, v88, v90, v91, v92);
      }
    }

    if (objc_msgSend_count(v73, v75, v76, v77, v78, v79))
    {
      ++*(*(*(a1 + 112) + 8) + 24);
      v105 = objc_msgSend_preferredLocale(*(a1 + 32), v100, v101, v102, v103, v104);
      shouldAllowSubTokenDeletionForLocale = objc_msgSend_shouldAllowSubTokenDeletionForLocale_(CHRecognizerConfiguration, v106, v105, v107, v108, v109);

      if (((*(*(*(a1 + 112) + 8) + 24) == 1) & shouldAllowSubTokenDeletionForLocale) == 1 && (v116 = objc_msgSend_count(v73, v111, v112, v113, v114, v115), v116 < objc_msgSend_count(v29, v117, v118, v119, v120, v121)))
      {
        objc_msgSend_addObjectsFromArray_(*(a1 + 80), v111, v73, v113, v114, v115);
      }

      else
      {
        objc_msgSend_removeAllObjects(*(a1 + 80), v111, v112, v113, v114, v115);
      }
    }

    v122 = *v19;
    v123 = v19[1];
    v124 = v19[2];
    v125 = v19[3];
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v93 = v73;
    v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v126, &v217, v233, 16, v127);
    if (v131)
    {
      v132 = *v218;
      do
      {
        for (k = 0; k != v131; ++k)
        {
          if (*v218 != v132)
          {
            objc_enumerationMutation(v93);
          }

          v134 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v128, *(*(&v217 + 1) + 8 * k), *(a1 + 40), v129, v130);
          v140 = v134;
          if (v134)
          {
            objc_msgSend_bounds(v134, v135, v136, v137, v138, v139);
            v245.origin.x = v141;
            v245.origin.y = v142;
            v245.size.width = v143;
            v245.size.height = v144;
            v239.origin.x = v122;
            v239.origin.y = v123;
            v239.size.width = v124;
            v239.size.height = v125;
            v240 = CGRectUnion(v239, v245);
            v122 = v240.origin.x;
            v123 = v240.origin.y;
            v124 = v240.size.width;
            v125 = v240.size.height;
          }
        }

        v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v128, &v217, v233, 16, v130);
      }

      while (v131);
    }

    v241.origin.x = x;
    v241.origin.y = y;
    v241.size.width = width;
    v241.size.height = height;
    v246.origin.x = v122;
    v246.origin.y = v123;
    v246.size.width = v124;
    v246.size.height = v125;
    v242 = CGRectIntersection(v241, v246);
    v145 = v242.size.width;
    v146 = objc_opt_class();
    v151 = objc_msgSend_polygonForStrokes_(v146, v147, v29, v148, v149, v150);
    v157 = objc_msgSend_polygonDrawing(v151, v152, v153, v154, v155, v156);
    objc_msgSend_bounds(v157, v158, v159, v160, v161, v162);
    v164 = v163;

    v214 = objc_msgSend_polygonByIntersectingWithClipPolygon_(*(a1 + 72), v165, v151, v166, v167, v168);
    v174 = objc_msgSend_polygonDrawing(v214, v169, v170, v171, v172, v173);
    objc_msgSend_bounds(v174, v175, v176, v177, v178, v179);
    v181 = v180;

    v182 = v145 / width;
    v183 = v181 / fmax(v164, 0.00001);
    v184 = v183 >= 0.5 && v182 >= 0.5;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v185 = qword_1EA84DC60;
    if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
    {
      v191 = objc_msgSend_string(v216, v186, v187, v188, v189, v190);
      v192 = v191;
      v193 = @"NO";
      *buf = 138413059;
      if (v184)
      {
        v193 = @"YES";
      }

      v226 = v193;
      v227 = 2048;
      v228 = v182;
      v229 = 2048;
      v230 = v183;
      v231 = 2117;
      v232 = v191;
      _os_log_impl(&dword_18366B000, v185, OS_LOG_TYPE_DEBUG, "ScratchOut: isTokenFullyCovered: %@, intersectingRectWidthRatio %.2f, areaRatio %.2f, token: %{sensitive}@", buf, 0x2Au);
    }

    if (v184)
    {
      v199 = 1;
      *(*(*(a1 + 96) + 8) + 24) = 1;
      if (*(*(*(a1 + 96) + 8) + 24) != 1)
      {
        goto LABEL_54;
      }
    }

    else if (objc_msgSend_count(v93, v194, v195, v196, v197, v198))
    {
      objc_msgSend_addObjectsFromArray_(*(a1 + 88), v194, v93, v196, v197, v198);
      v199 = 1;
      if (*(*(*(a1 + 96) + 8) + 24) != 1)
      {
LABEL_54:
        if (v184)
        {
          *(*(*(a1 + 120) + 8) + 24) = objc_msgSend_count(*(a1 + 56), v194, v195, v196, v197, v198);
        }

        else if (!v199)
        {
LABEL_58:
          if (*(*(*(a1 + 104) + 8) + 24) == 1)
          {
            objc_msgSend_addObjectsFromArray_(*(a1 + 64), v194, v30, v196, v197, v198);
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v200 = qword_1EA84DC60;
            if (os_log_type_enabled(v200, OS_LOG_TYPE_DEBUG))
            {
              v206 = objc_msgSend_string(v216, v201, v202, v203, v204, v205);
              *buf = 138739971;
              v226 = v206;
              _os_log_impl(&dword_18366B000, v200, OS_LOG_TYPE_DEBUG, "ScratchOut: paragraph-level result augmented with tentative token: %{sensitive}@", buf, 0xCu);
            }
          }

          if ((v184 | v199) == 1)
          {
            *(*(*(a1 + 128) + 8) + 24) = objc_msgSend_count(*(a1 + 64), v194, v195, v196, v197, v198);
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v207 = qword_1EA84DC60;
            if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
            {
              v213 = objc_msgSend_string(v216, v208, v209, v210, v211, v212);
              *buf = 138739971;
              v226 = v213;
              _os_log_impl(&dword_18366B000, v207, OS_LOG_TYPE_DEBUG, "ScratchOut: committing paragraph-level result at token: %{sensitive}@", buf, 0xCu);
            }
          }

LABEL_71:
          goto LABEL_72;
        }

        *(*(*(a1 + 104) + 8) + 24) = 1;
        goto LABEL_58;
      }
    }

    else
    {
      v199 = 0;
      if (*(*(*(a1 + 96) + 8) + 24) != 1)
      {
        goto LABEL_54;
      }
    }

    objc_msgSend_addObjectsFromArray_(*(a1 + 56), v194, v30, v196, v197, v198);
    goto LABEL_54;
  }

  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 56), v63, v30, v65, v66, v67);
  }

  if (*(*(*(a1 + 104) + 8) + 24) == 1)
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 64), v63, v30, v65, v66, v67);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v93 = qword_1EA84DC60;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      v99 = objc_msgSend_string(v216, v94, v95, v96, v97, v98);
      *buf = 138739971;
      v226 = v99;
      _os_log_impl(&dword_18366B000, v93, OS_LOG_TYPE_DEBUG, "ScratchOut: paragraph-level result augmented with tentative token: %{sensitive}@", buf, 0xCu);
    }

    goto LABEL_71;
  }

LABEL_72:
}

void sub_1839363E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3, a4, a5, a6);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v49 = 0;
  v50 = 0;
  v10 = sub_18392C888(v8, v9, 2, 1, 1, &v50, &v49, *(a1 + 64));
  v11 = v50;
  v17 = v49;
  if (v10)
  {
    objc_msgSend_timeIntervalSinceNow(v7, v12, v13, v14, v15, v16);
    v19 = v18;
    v20 = [CHContextualTextResults alloc];
    v25 = objc_msgSend_initWithTextResults_(v20, v21, v10, v22, v23, v24);
    v26 = [CHTextTransformationManager alloc];
    v28 = objc_msgSend_initWithContextStrokes_relatedNonTextStrokes_parameters_contextResults_strokeGroupingResult_strokeClassificationResult_strokeProvider_excludedStrokeTypes_(v26, v27, *(a1 + 40), MEMORY[0x1E695E0F0], *(a1 + 48), v25, v11, v17, *(*(a1 + 32) + 24), 0);
    v34 = v28;
    if (v28)
    {
      objc_msgSend_transformWithProgress_shouldCancel_(v28, v29, *(a1 + 56), *(a1 + 64), v32, v33);
      v35 = v52;
    }

    else
    {
      v35 = 0;
      buf = 0uLL;
      v52 = 0;
    }

    v42 = v19 * -1000.0;
    *&v42 = v19 * -1000.0;
    v43 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v29, v30, v31, v32, v33, v42);
    objc_msgSend_setValue_forKey_(v35, v44, v43, @"time_for_recognition_ms", v45, v46);

    v47 = (*(*(a1 + 64) + 16))();
    v48 = *(a1 + 72);
    if (v47)
    {
      (*(v48 + 16))(v48, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8]);
    }

    else
    {
      (*(v48 + 16))(v48, buf, *(&buf + 1), v52);
    }
  }

  else
  {
    (*(*(a1 + 72) + 16))();
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DCA0;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_msgSend_count(*(a1 + 40), v36, v37, v38, v39, v40);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v41;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "Unable to build stroke point transformation result for input with %ld context strokes", &buf, 0xCu);
    }
  }
}

id sub_183936724(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EF1EC718, v3, &v33, v38, 16, v4);
    if (v6)
    {
      v7 = *v34;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(&unk_1EF1EC718);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          v15 = objc_msgSend_remoteTextSynthesizer(a1, v10, v11, v12, v13, v14);
          v37 = v9;
          v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, &v37, 1, v17, v18);
          v23 = objc_msgSend_chunkedDataForStringRefine_allowedSynthesizers_(v15, v20, v5, v19, v21, v22);

          if (v23)
          {
            v29 = objc_msgSend_chunkForOneShotRefine(v23, v24, v25, v26, v27, v28);
            if (v29)
            {

              goto LABEL_13;
            }
          }
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EF1EC718, v30, &v33, v38, 16, v31);
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  v29 = 0;
LABEL_13:

  return v29;
}

id sub_183936920(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v161 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v109 = a3;
  v110 = a4;
  v10 = a5;
  v101 = v10;
  if (!a1)
  {
    v99 = 0;
    goto LABEL_20;
  }

  v16 = v10;
  v108 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v22 = objc_msgSend_textResult(v9, v17, v18, v19, v20, v21);
  v107 = objc_msgSend_refinableTranscription(v22, v23, v24, v25, v26, v27);

  v106 = objc_msgSend_array(MEMORY[0x1E695DF70], v28, v29, v30, v31, v32);
  v103 = objc_msgSend_array(MEMORY[0x1E695DF70], v33, v34, v35, v36, v37);
  v147 = 0;
  v148 = &v147;
  v149 = 0x4012000000;
  v150 = sub_1839371F0;
  v151 = nullsub_67;
  v152 = &unk_183A5AC72;
  v153 = 0;
  v154 = 0;
  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = sub_1839376F0;
  v144[3] = &unk_1E6DE0250;
  v38 = v16;
  v146 = v38;
  v39 = v108;
  v145 = v39;
  v40 = MEMORY[0x1865E6810](v144);
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = sub_1839378DC;
  v139[3] = &unk_1E6DE0278;
  v139[4] = a1;
  v140 = v110;
  v142 = v38;
  v41 = v39;
  v141 = v41;
  v102 = v40;
  v143 = v102;
  v104 = MEMORY[0x1865E6810](v139);
  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = sub_183938294;
  v138[3] = &unk_1E6DDF9E8;
  v138[4] = a1;
  v105 = MEMORY[0x1865E6810](v138);
  v42 = objc_opt_class();
  objc_msgSend_autoRefineTriggerFactor(v42, v43, v44, v45, v46, v47);
  v49 = v48;
  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 0;
  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v129 = 0;
  v55 = objc_msgSend_textResult(v9, v50, v51, v52, v53, v54);
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = sub_1839382CC;
  v125[3] = &unk_1E6DE02A0;
  v125[4] = &v126;
  v125[5] = &v134;
  v125[6] = &v130;
  objc_msgSend_enumerateOriginalTokensWithBlock_(v55, v56, v125, v57, v58, v59);

  v65 = v131[3];
  if (v65 <= 0)
  {
    v127[3] = 0.0;
LABEL_7:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v68 = qword_1EA84DC98;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v74 = objc_msgSend_textResult(v9, v69, v70, v71, v72, v73);
      v80 = objc_msgSend_topTranscription(v74, v75, v76, v77, v78, v79);
      v81 = v131[3];
      v82 = v135[3];
      v83 = *(v127 + 3);
      *buf = 138740995;
      *&buf[4] = v80;
      *&buf[12] = 2048;
      *&buf[14] = v81;
      *&buf[22] = 2048;
      v156 = v82;
      v157 = 2048;
      v158 = v83;
      v159 = 1024;
      v160 = 0;
      _os_log_impl(&dword_18366B000, v68, OS_LOG_TYPE_DEFAULT, "Line synthesis for Refine or AutoRefine processed. string: %{sensitive}@, token count = %ld, refinable tokens: %ld, averageOrientation %.2f, -> Line orientation refinable ? %d.", buf, 0x30u);
    }

    v67 = 0;
    goto LABEL_12;
  }

  v66 = v127[3] / v65;
  v127[3] = v66;
  if (vcvtd_n_f64_u64(v65, 1uLL) >= v135[3] || v66 > 0.6)
  {
    goto LABEL_7;
  }

  v67 = 1;
LABEL_12:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v156) = 0;
  v84 = objc_msgSend_textResult(v9, v60, v61, v62, v63, v64);
  v85 = v49;
  v86 = v85 * 0.75;
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = sub_183938398;
  v111[3] = &unk_1E6DE02C8;
  v121 = buf;
  v87 = v105;
  v117 = v87;
  v123 = v86;
  v124 = v67;
  v88 = v103;
  v112 = v88;
  v122 = &v147;
  v89 = v107;
  v113 = v89;
  v118 = &unk_1EF1BF478;
  v90 = v106;
  v114 = v90;
  v91 = v104;
  v119 = v91;
  v92 = v109;
  v115 = v92;
  v93 = v102;
  v120 = v93;
  v116 = v9;
  objc_msgSend_enumerateOriginalTokensWithBlock_(v84, v94, v111, v95, v96, v97);

  if (*(*&buf[8] + 24))
  {
    v99 = 0;
  }

  else
  {
    if (v148[7])
    {
      if (sub_183937200(v98, v90, v88))
      {
        (*(v91 + 2))(v91, v90, v88, v92);
      }

      else
      {
        (*(v93 + 2))(v93, v90, v88);
      }
    }

    v99 = v41;
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(&v134, 8);

  _Block_object_dispose(&v147, 8);
LABEL_20:

  return v99;
}

void sub_183937018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);

  _Block_object_dispose((v71 - 256), 8);
  _Unwind_Resume(a1);
}

__n128 sub_1839371F0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_183937200(uint64_t a1, void *a2, void *a3)
{
  v132 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v11 = objc_msgSend_firstObject(v4, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15, v16);

  for (i = 1; i < objc_msgSend_count(v4, v18, v19, v20, v21, v22); ++i)
  {
    v29 = objc_msgSend_objectAtIndexedSubscript_(v4, v24, i, v26, v27, v28);
    objc_msgSend_addObjectsFromArray_(v17, v30, v29, v31, v32, v33);
  }

  v34 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v24, v25, v26, v27, v28);
  v40 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v35, v36, v37, v38, v39);
  v112 = MEMORY[0x1E69E9820];
  v113 = 3221225472;
  v114 = sub_183937674;
  v115 = &unk_1E6DE0190;
  v41 = v34;
  v116 = v41;
  v42 = v40;
  v117 = v42;
  objc_msgSend_enumerateObjectsUsingBlock_(v17, v43, &v112, v44, v45, v46);
  if (objc_msgSend_count(v41, v47, v48, v49, v50, v51, v112, v113, v114, v115) && objc_msgSend_count(v42, v52, v53, v54, v55, v56) <= 2)
  {
    v63 = objc_msgSend_objectsAtIndexes_(v17, v57, v41, v58, v59, v60);
    objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v64, v63, v65, v66, v67);
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v80 = objc_msgSend_objectsAtIndexes_(v17, v76, v42, v77, v78, v79);
    objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v81, v80, v82, v83, v84);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v133.origin.x = v69;
    v133.origin.y = v71;
    v133.size.width = v73;
    v133.size.height = v75;
    v135.origin.x = v86;
    v135.origin.y = v88;
    v135.size.width = v90;
    v135.size.height = v92;
    v134 = CGRectIntersection(v133, v135);
    v61 = 1;
    if (v90 <= v73 * 0.3 && v92 <= v75 * 0.5)
    {
      v93 = v134.size.width <= v90 * 0.5;
      if (v134.size.height > v92 * 0.5)
      {
        v93 = 0;
      }

      if (v90 < v73 * 0.2 || v92 < v75 * 0.2 || v93)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v94 = qword_1EA84DC98;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          v99 = objc_msgSend_componentsJoinedByString_(v5, v95, &stru_1EF1C0318, v96, v97, v98);
          v105 = objc_msgSend_count(v42, v100, v101, v102, v103, v104);
          v111 = objc_msgSend_count(v41, v106, v107, v108, v109, v110);
          *buf = 138741507;
          v119 = v99;
          v120 = 2048;
          v121 = v105;
          v122 = 2048;
          v123 = v90;
          v124 = 2048;
          v125 = v92;
          v126 = 2048;
          v127 = v111;
          v128 = 2048;
          v129 = v73;
          v130 = 2048;
          v131 = v75;
          _os_log_impl(&dword_18366B000, v94, OS_LOG_TYPE_DEFAULT, "Token synthesis for Refine or AutoRefine skipped. string: %{sensitive}@, new strokes %ld with bounds = %.2f,%.2f, refined strokes %ld with bounds = %.2f,%.2f", buf, 0x48u);
        }

        v61 = 0;
      }
    }
  }

  else
  {
    v61 = 1;
  }

  return v61;
}

void sub_183937674(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v10 = objc_msgSend_strokeAttributes(v16, v5, v6, v7, v8, v9);
  v15 = 32;
  if ((v10 & 4) == 0)
  {
    v15 = 40;
  }

  objc_msgSend_addIndex_(*(a1 + v15), v11, a3, v12, v13, v14);
}

void sub_1839376F0(uint64_t a1, void *a2, void *a3)
{
  v50 = a2;
  v5 = a3;
  v11 = objc_msgSend_firstObject(v50, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15, v16);

  for (i = 1; i < objc_msgSend_count(v50, v18, v19, v20, v21, v22); ++i)
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(v50, v24, i, v25, v26, v27);
    objc_msgSend_addObjectsFromArray_(v17, v29, v28, v30, v31, v32);
  }

  v33 = objc_opt_class();
  v35 = objc_msgSend_createDrawingForStrokes_interpolationType_resolution_cancellationBlock_(v33, v34, v17, 1, 2, *(a1 + 40));
  v36 = [CHSynthesisResult alloc];
  v41 = objc_msgSend_componentsJoinedByString_(v5, v37, &stru_1EF1C0318, v38, v39, v40);
  v45 = objc_msgSend_initWithContent_drawing_(v36, v42, v41, v35, v43, v44);

  objc_msgSend_addObject_(*(a1 + 32), v46, v45, v47, v48, v49);
}

void sub_1839378DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v244 = *MEMORY[0x1E69E9840];
  v223 = a2;
  v220 = a3;
  v6 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC98;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v239 = v220;
    v240 = 2048;
    v241 = objc_msgSend_count(v223, v8, v9, v10, v11, v12);
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "AutoRefine Triggering synthesis for %{sensitive}@ with %ld segments", buf, 0x16u);
  }

  v13 = MEMORY[0x1E695DF70];
  v19 = objc_msgSend_count(v223, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_arrayWithCapacity_(v13, v20, v19, v21, v22, v23);
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  obj = v223;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v229, v237, 16, v26);
  if (v27)
  {
    v28 = *v230;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v230 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v229 + 1) + 8 * i);
        v227[0] = MEMORY[0x1E69E9820];
        v227[1] = 3221225472;
        v227[2] = sub_1839381E8;
        v227[3] = &unk_1E6DDD268;
        v228 = v6;
        v35 = objc_msgSend_sortedArrayUsingComparator_(v30, v31, v227, v32, v33, v34);
        objc_msgSend_addObject_(v24, v36, v35, v37, v38, v39);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v229, v237, 16, v41);
    }

    while (v27);
  }

  v43 = *(a1 + 32);
  v42 = *(a1 + 40);
  v44 = *(a1 + 56);
  v225 = v24;
  v217 = v42;
  v45 = v220;
  v50 = v44;
  v224 = v45;
  if (v43)
  {
    v51 = objc_msgSend_componentsJoinedByString_(v45, v46, &stru_1EF1C0318, v47, v48, v49);
    v218 = v51;
    v221 = sub_183936724(v43, v51);
    if (v221)
    {
      v57 = MEMORY[0x1E695DF70];
      v58 = objc_msgSend_count(v225, v52, v53, v54, v55, v56);
      v63 = objc_msgSend_arrayWithCapacity_(v57, v59, v58, v60, v61, v62);
      v235 = 0u;
      v236 = 0u;
      v233 = 0u;
      v234 = 0u;
      v64 = v225;
      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v233, buf, 16, v66);
      if (v67)
      {
        v68 = *v234;
        do
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v234 != v68)
            {
              objc_enumerationMutation(v64);
            }

            v70 = *(*(&v233 + 1) + 8 * j);
            v71 = objc_opt_class();
            v73 = objc_msgSend_createDrawingForStrokes_interpolationType_resolution_cancellationBlock_(v71, v72, v70, 1, 2, v50);
            if (objc_msgSend_strokeCount(v73, v74, v75, v76, v77, v78))
            {
              objc_msgSend_addObject_(v63, v79, v73, v80, v81, v82);
            }
          }

          v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v83, &v233, buf, 16, v84);
        }

        while (v67);
      }

      if (objc_msgSend_count(v63, v85, v86, v87, v88, v89))
      {
        v95 = objc_msgSend_firstObject(v63, v90, v91, v92, v93, v94);
        v101 = objc_msgSend_copy(v95, v96, v97, v98, v99, v100);

        for (k = 1; k < objc_msgSend_count(v63, v102, v103, v104, v105, v106); ++k)
        {
          v113 = objc_msgSend_objectAtIndexedSubscript_(v63, v108, k, v110, v111, v112);
          objc_msgSend_appendDrawing_(v101, v114, v113, v115, v116, v117);
        }

        v219 = objc_msgSend_textSynthesizer(v43, v108, v109, v110, v111, v112);
        if (v217)
        {
          v122 = objc_msgSend_synthesisOptionsWithStyleStrength_(CHSynthesisRequestOptions, v118, v217, v119, v120, v121);
          objc_msgSend_setStyleContents_(v122, v123, v224, v124, v125, v126);
          v127 = v122;
          objc_msgSend_setStyleDrawings_(v122, v128, v63, v129, v130, v131);
        }

        else
        {
          v127 = objc_msgSend_synthesisOptionsWithDrawings_contents_(CHSynthesisRequestOptions, v118, v63, v224, v120, v121);
        }

        v137 = objc_msgSend_synthesisSuggestion(v221, v132, v133, v134, v135, v136);
        objc_msgSend_setChunkSynthesisSuggestion_(v127, v138, v137, v139, v140, v141);
        v147 = objc_msgSend_chunkValueForSynthesis(v221, v142, v143, v144, v145, v146);
        v148 = v127;
        v154 = objc_msgSend_dictionary(v127, v149, v150, v151, v152, v153);
        v156 = objc_msgSend_refineDrawing_transcription_options_shouldCancel_error_(v219, v155, v101, v147, v154, v50, 0);

        v157 = [CHSynthesisResult alloc];
        v216 = objc_msgSend_drawing(v156, v158, v159, v160, v161, v162);
        v168 = objc_msgSend_segmentContents(v156, v163, v164, v165, v166, v167);
        v174 = objc_msgSend_segmentStrokeIndexes(v156, v169, v170, v171, v172, v173);
        v180 = objc_msgSend_numberOfNotSynthesizedCharacters(v156, v175, v176, v177, v178, v179);
        v43 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_numberOfNotSynthesizedCharacters_(v157, v181, v218, v216, v168, v174, v180);

        goto LABEL_36;
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v63 = qword_1EA84DC98;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v239 = v51;
        _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_DEFAULT, "Refine or AutoRefine skipped. string: %{sensitive}@ no chunk for one shot refine", buf, 0xCu);
      }
    }

    v43 = 0;
LABEL_36:
  }

  if (!v43 || (objc_msgSend_drawing(v43, v182, v183, v184, v185, v186), v187 = objc_claimAutoreleasedReturnValue(), v193 = objc_msgSend_strokeCount(v187, v188, v189, v190, v191, v192) == 0, v187, v193))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v198 = qword_1EA84DC98;
    if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
    {
      v203 = objc_msgSend_componentsJoinedByString_(v224, v199, &stru_1EF1C0318, v200, v201, v202);
      v209 = objc_msgSend_length(v203, v204, v205, v206, v207, v208);
      v215 = objc_msgSend_count(obj, v210, v211, v212, v213, v214);
      *buf = 134218499;
      v239 = v209;
      v240 = 2117;
      v241 = v224;
      v242 = 2048;
      v243 = v215;
      _os_log_impl(&dword_18366B000, v198, OS_LOG_TYPE_ERROR, "Chunk synthesis for AutoRefine failed, chunk length = %ld, string = %{sensitive}@, strokes to replace = %ld. Falling back to skip logic.", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 48), v194, v43, v195, v196, v197);
  }
}

uint64_t sub_1839381E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v12 = objc_msgSend_strokeIdentifier(a2, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeIdentifier(v5, v13, v14, v15, v16, v17);
  v22 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v6, v19, v12, v18, v20, v21);

  return v22;
}

BOOL sub_183938294(uint64_t a1, void *a2)
{
  v2 = sub_183936724(*(a1 + 32), a2);
  v3 = v2 != 0;

  return v3;
}

void sub_1839382CC(void *a1, void *a2)
{
  v17 = a2;
  objc_msgSend_principalOrientation(v17, v3, v4, v5, v6, v7);
  *(*(a1[4] + 8) + 24) = fabs(v8) + *(*(a1[4] + 8) + 24);
  objc_msgSend_principalOrientation(v17, v9, v10, v11, v12, v13);
  v15 = *(a1[5] + 8);
  v16 = *(v15 + 24);
  if (fabs(v14) <= 0.6)
  {
    ++v16;
  }

  *(v15 + 24) = v16;
  ++*(*(a1[6] + 8) + 24);
}

void sub_183938398(uint64_t a1, void *a2, uint64_t a3)
{
  v401 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v11 = v5;
  if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
  {
    v12 = objc_msgSend_properties(v5, v6, v7, v8, v9, v10);
    v18 = objc_msgSend_string(v11, v13, v14, v15, v16, v17);
    v24 = objc_msgSend_length(v18, v19, v20, v21, v22, v23);

    v379 = v12 & 0x20;
    v30 = (v12 & 0x20) == 0 || a3 == 0;
    v31 = !v30;
    if (!v30)
    {
      ++v24;
    }

    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_msgSend_string(v11, v25, v26, v27, v28, v29);
    v38 = v33;
    if (v31)
    {
      objc_msgSend_stringWithFormat_(v32, v34, @"%@%@", v35, v36, v37, @" ", v33);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v32, v34, @"%@%@", v35, v36, v37, &stru_1EF1C0318, v33);
    }
    v39 = ;

    v40 = *(a1 + 72);
    v46 = objc_msgSend_string(v11, v41, v42, v43, v44, v45);
    v381 = (*(v40 + 16))(v40, v46);
    v380 = v24;

    objc_msgSend_recognitionScore(v11, v47, v48, v49, v50, v51);
    v53 = v52;
    v54 = *(a1 + 120);
    hasValidPrincipalLines = objc_msgSend_hasValidPrincipalLines(v11, v55, v56, v57, v58, v59);
    objc_msgSend_principalOrientation(v11, v61, v62, v63, v64, v65);
    v67 = v66;
    v73 = objc_msgSend_recognizerSourceLocale(v11, v68, v69, v70, v71, v72);
    isSupportedLatinScriptLocale_withMode = objc_msgSend_isSupportedLatinScriptLocale_withMode_(CHRecognizerConfiguration, v74, v73, 6, v75, v76);

    if (hasValidPrincipalLines & 1 | ((isSupportedLatinScriptLocale_withMode & 1) == 0))
    {
LABEL_22:
      v84 = v54;
      v85 = fabs(v67);
      if (!isSupportedLatinScriptLocale_withMode || (v382 = 0, *(a1 + 124) == 1) && v85 <= 0.6)
      {
        if (v53 > v84)
        {
          v86 = v381;
        }

        else
        {
          v86 = 0;
        }

        v382 = v86;
      }

      v87 = *(a1 + 72);
      v88 = objc_msgSend_componentsJoinedByString_(*(a1 + 32), v78, &stru_1EF1C0318, v79, v80, v81);
      v93 = objc_msgSend_stringByAppendingString_(v88, v89, v39, v90, v91, v92);
      LOBYTE(v87) = (*(v87 + 16))(v87, v93);

      if ((v87 & 1) == 0)
      {
        v99 = *(*(a1 + 112) + 8);
        v100 = *(v99 + 48);
        v101 = *(v99 + 56);
        if (v101 + v100 > objc_msgSend_length(*(a1 + 40), v94, v95, v96, v97, v98))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v102 = qword_1EA84DC50[0];
          v378 = v39;
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            v108 = *(*(a1 + 112) + 8);
            v110 = *(v108 + 48);
            v109 = *(v108 + 56);
            v111 = *(a1 + 40);
            v112 = objc_msgSend_length(v111, v103, v104, v105, v106, v107);
            v376 = objc_msgSend_string(v11, v113, v114, v115, v116, v117);
            v123 = objc_msgSend_string(v11, v118, v119, v120, v121, v122);
            v129 = objc_msgSend_length(v123, v124, v125, v126, v127, v128);
            *buf = 134219779;
            v386 = v110;
            v387 = 2048;
            v388 = v109;
            v389 = 2117;
            v390 = v111;
            v391 = 2048;
            *v392 = v112;
            *&v392[8] = 2117;
            *v393 = v376;
            *&v393[8] = 2048;
            v394 = v129;
            *v395 = 1024;
            *&v395[2] = v379 >> 5;
            LOWORD(v396) = 1024;
            *(&v396 + 2) = a3 == 0;
            _os_log_impl(&dword_18366B000, v102, OS_LOG_TYPE_ERROR, "Unexpected currentRange = (%ld, %ld), vs transcription %{sensitive}@, length = %ld - after handling token %{sensitive}@, length = %ld, hasPrecedingSpace ? %d, isFirstToken ? %d", buf, 0x4Au);

            v39 = v378;
          }

          if (qword_1EA84DC48 == -1)
          {
            v130 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
            {
LABEL_38:

              goto LABEL_43;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v130 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_38;
            }
          }

          v136 = *(*(a1 + 112) + 8);
          v138 = *(v136 + 48);
          v137 = *(v136 + 56);
          v139 = *(a1 + 40);
          v140 = objc_msgSend_length(v139, v131, v132, v133, v134, v135);
          v377 = objc_msgSend_string(v11, v141, v142, v143, v144, v145);
          v151 = objc_msgSend_string(v11, v146, v147, v148, v149, v150);
          v157 = objc_msgSend_length(v151, v152, v153, v154, v155, v156);
          *buf = 134219779;
          v386 = v138;
          v387 = 2048;
          v388 = v137;
          v389 = 2117;
          v390 = v139;
          v391 = 2048;
          *v392 = v140;
          *&v392[8] = 2117;
          *v393 = v377;
          *&v393[8] = 2048;
          v394 = v157;
          *v395 = 1024;
          *&v395[2] = v379 >> 5;
          LOWORD(v396) = 1024;
          *(&v396 + 2) = a3 == 0;
          _os_log_impl(&dword_18366B000, v130, OS_LOG_TYPE_FAULT, "Unexpected currentRange = (%ld, %ld), vs transcription %{sensitive}@, length = %ld - after handling token %{sensitive}@, length = %ld, hasPrecedingSpace ? %d, isFirstToken ? %d", buf, 0x4Au);

          v39 = v378;
          goto LABEL_38;
        }

        if ((*(*(a1 + 80) + 16))())
        {
          (*(*(a1 + 88) + 16))();
        }

        else
        {
          (*(*(a1 + 96) + 16))();
        }

        v163 = *(*(a1 + 112) + 8);
        *(v163 + 48) += *(v163 + 56);
        *(v163 + 56) = 0;
        objc_msgSend_removeAllObjects(*(a1 + 48), v158, v159, v160, v161, v162);
        objc_msgSend_removeAllObjects(*(a1 + 32), v164, v165, v166, v167, v168);
      }

LABEL_43:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v169 = qword_1EA84DC98;
      if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
      {
        if (v382)
        {
          v175 = @"processed";
        }

        else
        {
          v175 = @"skipped";
        }

        v176 = objc_msgSend_string(v11, v170, v171, v172, v173, v174);
        objc_msgSend_recognitionScore(v11, v177, v178, v179, v180, v181);
        v183 = v182;
        v184 = *(a1 + 120);
        objc_msgSend_principalOrientation(v11, v185, v186, v187, v188, v189);
        v191 = *(a1 + 124);
        *buf = 138414851;
        v386 = v175;
        v387 = 2117;
        v192 = @"fallback refine";
        v388 = v176;
        v389 = 2048;
        v390 = v183;
        if (v382)
        {
          v192 = @"refine";
        }

        v391 = 1024;
        *v392 = v381;
        *&v392[4] = 1024;
        *&v392[6] = v53 > v84;
        *v393 = 2048;
        *&v393[2] = v184;
        LOWORD(v394) = 1024;
        *(&v394 + 2) = hasValidPrincipalLines;
        HIWORD(v394) = 1024;
        *v395 = v85 <= 0.6;
        *&v395[4] = 2048;
        v396 = v190;
        v397 = 1024;
        v398 = v191;
        v399 = 2112;
        v400 = v192;
        _os_log_impl(&dword_18366B000, v169, OS_LOG_TYPE_DEFAULT, "Token synthesis for Refine or AutoRefine %@. string: %{sensitive}@ (p=%1.2f), supported ? %d sufficiently confident ? %d (threshold = %.2f), hasValidPrincipalLines ? %d, hasRefinableOrientation ? %d (angle = %.2f). Line orientation refinable ? %d. Applying %@ behavior.", buf, 0x5Cu);
      }

      v198 = objc_msgSend_strokeIndexes(v11, v193, v194, v195, v196, v197);
      Index = objc_msgSend_lastIndex(v198, v199, v200, v201, v202, v203);
      v210 = objc_msgSend_textResult(*(a1 + 64), v205, v206, v207, v208, v209);
      v216 = objc_msgSend_inputStrokeIdentifiers(v210, v211, v212, v213, v214, v215);
      LOBYTE(Index) = Index < objc_msgSend_count(v216, v217, v218, v219, v220, v221);

      if (Index)
      {
        if (v382)
        {
          v227 = objc_msgSend_textResult(*(a1 + 64), v222, v223, v224, v225, v226);
          v233 = objc_msgSend_inputStrokeIdentifiers(v227, v228, v229, v230, v231, v232);
          v239 = objc_msgSend_strokeIndexes(v11, v234, v235, v236, v237, v238);
          v244 = objc_msgSend_objectsAtIndexes_(v233, v240, v239, v241, v242, v243);

          v245 = *(a1 + 48);
          v246 = objc_opt_class();
          v250 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(v246, v247, v244, *(a1 + 56), v248, v249);
          objc_msgSend_addObject_(v245, v251, v250, v252, v253, v254);

          *(*(*(a1 + 112) + 8) + 56) += v380;
          objc_msgSend_addObject_(*(a1 + 32), v255, v39, v256, v257, v258);
        }

        else
        {
          if (*(*(*(a1 + 112) + 8) + 56))
          {
            if ((*(*(a1 + 80) + 16))())
            {
              (*(*(a1 + 88) + 16))();
            }

            else
            {
              (*(*(a1 + 96) + 16))();
            }
          }

          v333 = objc_msgSend_textResult(*(a1 + 64), v222, v223, v224, v225, v226);
          v339 = objc_msgSend_inputStrokeIdentifiers(v333, v334, v335, v336, v337, v338);
          v345 = objc_msgSend_strokeIndexes(v11, v340, v341, v342, v343, v344);
          v350 = objc_msgSend_objectsAtIndexes_(v339, v346, v345, v347, v348, v349);

          v351 = objc_opt_class();
          v355 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(v351, v352, v350, *(a1 + 56), v353, v354);
          v356 = *(a1 + 96);
          v384 = v355;
          v360 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v357, &v384, 1, v358, v359);
          v383 = v39;
          v364 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v361, &v383, 1, v362, v363);
          (*(v356 + 16))(v356, v360, v364);

          v365 = *(*(a1 + 112) + 8);
          *(v365 + 48) += v380 + *(v365 + 56);
          *(v365 + 56) = 0;
          objc_msgSend_removeAllObjects(*(a1 + 48), v366, v367, v368, v369, v370);
          objc_msgSend_removeAllObjects(*(a1 + 32), v371, v372, v373, v374, v375);
        }

        goto LABEL_68;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v259 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
      {
        v265 = objc_msgSend_textResult(*(a1 + 64), v260, v261, v262, v263, v264);
        v271 = objc_msgSend_inputStrokeIdentifiers(v265, v266, v267, v268, v269, v270);
        v277 = objc_msgSend_count(v271, v272, v273, v274, v275, v276);
        v283 = objc_msgSend_strokeIndexes(v11, v278, v279, v280, v281, v282);
        v289 = objc_msgSend_description(v283, v284, v285, v286, v287, v288);
        v295 = objc_msgSend_properties(v11, v290, v291, v292, v293, v294);
        *buf = 134218498;
        v386 = v277;
        v387 = 2112;
        v388 = v289;
        v389 = 2048;
        v390 = v295;
        _os_log_impl(&dword_18366B000, v259, OS_LOG_TYPE_ERROR, "Error: contextualResult.textResult.inputStrokeIdentifiers has %ld strokes. Incompatible with token stroke indexes %@ and properties=%lu", buf, 0x20u);
      }

      if (qword_1EA84DC48 == -1)
      {
        v296 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v296, OS_LOG_TYPE_FAULT))
        {
LABEL_62:

          *(*(*(a1 + 104) + 8) + 24) = 1;
LABEL_68:

          goto LABEL_69;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v296 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v296, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_62;
        }
      }

      v302 = objc_msgSend_textResult(*(a1 + 64), v297, v298, v299, v300, v301);
      v308 = objc_msgSend_inputStrokeIdentifiers(v302, v303, v304, v305, v306, v307);
      v314 = objc_msgSend_count(v308, v309, v310, v311, v312, v313);
      v320 = objc_msgSend_strokeIndexes(v11, v315, v316, v317, v318, v319);
      v326 = objc_msgSend_description(v320, v321, v322, v323, v324, v325);
      v332 = objc_msgSend_properties(v11, v327, v328, v329, v330, v331);
      *buf = 134218498;
      v386 = v314;
      v387 = 2112;
      v388 = v326;
      v389 = 2048;
      v390 = v332;
      _os_log_impl(&dword_18366B000, v296, OS_LOG_TYPE_FAULT, "Error: contextualResult.textResult.inputStrokeIdentifiers has %ld strokes. Incompatible with token stroke indexes %@ and properties=%lu", buf, 0x20u);

      goto LABEL_62;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v82 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v386 = v11;
      _os_log_impl(&dword_18366B000, v82, OS_LOG_TYPE_ERROR, "Token %@ should have valid principal lines.", buf, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v83 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v83 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }
    }

    *buf = 138412290;
    v386 = v11;
    _os_log_impl(&dword_18366B000, v83, OS_LOG_TYPE_FAULT, "Token %@ should have valid principal lines.", buf, 0xCu);
    goto LABEL_21;
  }

LABEL_69:
}

id sub_183939C30(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v16 = a4;
  if (a1)
  {
    v17 = objc_msgSend_textResult(v10, v11, v12, v13, v14, v15);
    v23 = objc_msgSend_originalTokens(v17, v18, v19, v20, v21, v22);

    v24 = objc_opt_class();
    v30 = objc_msgSend_textResult(v10, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_inputStrokeIdentifiers(v30, v31, v32, v33, v34, v35);
    v40 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(v24, v37, v36, v16, v38, v39);

    v41 = objc_opt_class();
    v45 = 0;
    a1 = objc_msgSend_alignReflowableTokens_resultTokens_strokeIdentifiers_outStrokeIdentifiers_(v41, v42, v9, v23, v40, &v45);
    v43 = v45;
    if (a5)
    {
      v43 = v43;
      *a5 = v43;
    }
  }

  return a1;
}

id sub_183939E10(uint64_t a1, void *a2, int a3, void *a4)
{
  v640 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v595 = a4;
  v596 = v7;
  v602 = a1;
  if (a1)
  {
    v590 = a3;
    log = objc_msgSend_content(v7, v8, v9, v10, v11, v12);
    obj = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
    v21 = objc_msgSend_majorityScriptIdForString_invalidCodes_(CHTextScriptUtilities, v18, log, &unk_1EF1EC748, v19, v20);
    v27 = objc_msgSend_lowercaseString(v21, v22, v23, v24, v25, v26);

    v607 = v27;
    if (!objc_msgSend_caseInsensitiveCompare_(v27, v28, @"Latn", v29, v30, v31))
    {
      v626 = 0u;
      v627 = 0u;
      v624 = 0u;
      v625 = 0u;
      v45 = *(a1 + 200);
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v624, buf, 16, v47);
      if (v48)
      {
        v49 = *v625;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v625 != v49)
            {
              objc_enumerationMutation(v45);
            }

            v51 = *(*(&v624 + 1) + 8 * i);
            v52 = objc_opt_class();
            if (objc_msgSend_isMatchingScriptAndLocale_scriptCode_(v52, v53, v51, v607, v54, v55))
            {
              objc_msgSend_addObject_(obj, v56, v51, v57, v58, v59);
            }
          }

          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v56, &v624, buf, 16, v59);
        }

        while (v48);
      }

      v63 = objc_msgSend_rankedLatinLocalesForString_locales_(CHLanguageUtilities, v60, log, obj, v61, v62);
      v69 = objc_msgSend_mutableCopy(v63, v64, v65, v66, v67, v68);

LABEL_21:
      v622 = 0u;
      v623 = 0u;
      v620 = 0u;
      v621 = 0u;
      obja = v69;
      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v86, &v620, v632, 16, v87);
      if (v88)
      {
        v597 = *v621;
        while (2)
        {
          v89 = 0;
          v600 = v88;
          do
          {
            if (*v621 != v597)
            {
              objc_enumerationMutation(obja);
            }

            v92 = *(*(&v620 + 1) + 8 * v89);
            v616 = 0u;
            v617 = 0u;
            v618 = 0u;
            v619 = 0u;
            v93 = *(v602 + 200);
            v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v616, v631, 16, v95);
            if (v101)
            {
              v102 = *v617;
LABEL_30:
              v103 = 0;
              while (1)
              {
                if (*v617 != v102)
                {
                  objc_enumerationMutation(v93);
                }

                v104 = *(*(&v616 + 1) + 8 * v103);
                v105 = objc_msgSend_languageCode(v92, v96, v97, v98, v99, v100);
                v111 = objc_msgSend_languageCode(v104, v106, v107, v108, v109, v110);
                isEqualToString = objc_msgSend_isEqualToString_(v105, v112, v111, v113, v114, v115);

                if (isEqualToString)
                {
                  break;
                }

                if (v101 == ++v103)
                {
                  v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v96, &v616, v631, 16, v100);
                  if (v101)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_24;
                }
              }

              v117 = v104;

              if (!v117)
              {
                goto LABEL_25;
              }

              goto LABEL_41;
            }

LABEL_24:

LABEL_25:
            ++v89;
          }

          while (v89 != v600);
          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v90, &v620, v632, 16, v91);
          if (v88)
          {
            continue;
          }

          break;
        }
      }

      v117 = 0;
LABEL_41:

      v123 = objc_msgSend_drawing(v596, v118, v119, v120, v121, v122);
      v615 = 0;
      objb = sub_18393B2B0(v602, v123, v117, &v615, v595);
      v608 = v615;

      v124 = v596;
      v603 = objc_msgSend_copy(v596, v125, v126, v127, v128, v129);
      v601 = objc_msgSend_content(v596, v130, v131, v132, v133, v134);
      if (v590)
      {
        v140 = objc_msgSend_originalTokens(v608, v135, v136, v137, v138, v139);
        if (objc_msgSend_count(v140, v141, v142, v143, v144, v145) != 2 || (objc_msgSend_objectAtIndexedSubscript_(v140, v146, 1, v147, v148, v149), v150 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v150, v151, v152, v153, v154, v155), v156 = objc_claimAutoreleasedReturnValue(), v161 = objc_msgSend_caseInsensitiveCompare_(v156, v157, @"Zealot", v158, v159, v160) == 0, v156, v150, !v161))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v167 = qword_1EA84DC98;
          if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
          {
            v173 = objc_msgSend_content(v596, v168, v169, v170, v171, v172);
            v179 = objc_msgSend_originalTranscription(v608, v174, v175, v176, v177, v178);
            v185 = objc_msgSend_count(v140, v180, v181, v182, v183, v184);
            *buf = 138740483;
            *&buf[4] = v173;
            *&buf[12] = 2117;
            *&buf[14] = v179;
            *&buf[22] = 2048;
            *&buf[24] = v185;
            _os_log_impl(&dword_18366B000, v167, OS_LOG_TYPE_DEBUG, "Single-char string synthesis %{sensitive}@ : recognized as %{sensitive}@ with appended suffix returned unexpected %lu tokens, fallback to calling the original synthesis again.", buf, 0x20u);
          }

          v186 = 0;
LABEL_86:

          v203 = v608;
          goto LABEL_87;
        }

        v187 = objc_msgSend_firstObject(v140, v162, v163, v164, v165, v166);
        v193 = objc_msgSend_trailingSeparator(v608, v188, v189, v190, v191, v192);
        v199 = objc_msgSend_recognizerGenerationIdentifier(v608, v194, v195, v196, v197, v198);
        v202 = objc_msgSend_tokenizedTextResultWithToken_trailingSeparator_recognizerGenerationIdentifier_(CHTokenizedTextResult, v200, v187, v193, v199, v201);

        v203 = v202;
        v209 = objc_msgSend_firstObject(v140, v204, v205, v206, v207, v208);
        v609 = objc_msgSend_strokeIndexes(v209, v210, v211, v212, v213, v214);

        v220 = objc_msgSend_drawing(v596, v215, v216, v217, v218, v219);
        v598 = objc_msgSend_drawingWithStrokesFromIndexSet_(v220, v221, v609, v222, v223, v224);

        v230 = objc_msgSend_numberOfNotSynthesizedCharacters(v596, v225, v226, v227, v228, v229);
        if (v230)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v231 = qword_1EA84DC98;
          if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
          {
            v237 = objc_msgSend_numberOfNotSynthesizedCharacters(v596, v232, v233, v234, v235, v236);
            *buf = 134217984;
            *&buf[4] = v237;
            _os_log_impl(&dword_18366B000, v231, OS_LOG_TYPE_DEBUG, "Enforced single-char string synthesis returned unexpected number of unsupported characters: %lu, fallback to calling the original synthesis again.", buf, 0xCu);
          }
        }

        else
        {
          v291 = [CHSynthesisResult alloc];
          logb = objc_msgSend_topTranscription(v203, v292, v293, v294, v295, v296);
          v302 = objc_msgSend_topTranscription(v203, v297, v298, v299, v300, v301);
          v630 = v302;
          v306 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v303, &v630, 1, v304, v305);
          v312 = objc_msgSend_strokeIndexes(v203, v307, v308, v309, v310, v311);
          v629 = v312;
          v316 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v313, &v629, 1, v314, v315);
          v322 = objc_msgSend_numberOfNotSynthesizedCharacters(v596, v317, v318, v319, v320, v321);
          v324 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_numberOfNotSynthesizedCharacters_(v291, v323, logb, v598, v306, v316, v322);

          v330 = objc_msgSend_content(v596, v325, v326, v327, v328, v329);
          v336 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v331, v332, v333, v334, v335);
          v341 = objc_msgSend_componentsSeparatedByCharactersInSet_(v330, v337, v336, v338, v339, v340);
          v347 = objc_msgSend_firstObject(v341, v342, v343, v344, v345, v346);

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v231 = qword_1EA84DC98;
          if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v231, OS_LOG_TYPE_DEBUG, "Single-char string synthesis with appended suffix returned two tokens as expected", buf, 2u);
          }

          v601 = v347;
          v603 = v324;
        }

        if (v230)
        {
          v186 = 0;
LABEL_87:

          goto LABEL_88;
        }

        v608 = v203;
        v124 = v596;
      }

      v140 = v124;
      v599 = v140;
      if (v608)
      {
        loga = objc_msgSend_topModelTranscription(v608, v348, v349, v350, v351, v352);
        v353 = sub_1837A695C(loga, v601);
        v359 = objc_msgSend_mutableCopy(v353, v354, v355, v356, v357, v358);

        while (objc_msgSend_count(v359, v360, v361, v362, v363, v364) >= 2)
        {
          v370 = objc_msgSend_lastObject(v359, v365, v366, v367, v368, v369);
          v376 = objc_msgSend_lastObject(v370, v371, v372, v373, v374, v375);
          v382 = objc_msgSend_length(v376, v377, v378, v379, v380, v381) == 0;

          if (!v382)
          {
            break;
          }

          v383 = objc_msgSend_count(v359, v365, v366, v367, v368, v369);
          v388 = objc_msgSend_objectAtIndexedSubscript_(v359, v384, v383 - 2, v385, v386, v387);
          v394 = objc_msgSend_firstObject(v388, v389, v390, v391, v392, v393);
          v400 = objc_msgSend_lastObject(v359, v395, v396, v397, v398, v399);
          v406 = objc_msgSend_firstObject(v400, v401, v402, v403, v404, v405);
          v411 = objc_msgSend_stringByAppendingString_(v394, v407, v406, v408, v409, v410);

          v417 = objc_msgSend_count(v359, v412, v413, v414, v415, v416);
          v422 = objc_msgSend_objectAtIndexedSubscript_(v359, v418, v417 - 2, v419, v420, v421);
          v428 = objc_msgSend_lastObject(v422, v423, v424, v425, v426, v427);

          objc_msgSend_removeLastObject(v359, v429, v430, v431, v432, v433);
          v628[0] = v411;
          v628[1] = v428;
          v437 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v434, v628, 2, v435, v436);
          v443 = objc_msgSend_count(v359, v438, v439, v440, v441, v442);
          objc_msgSend_setObject_atIndexedSubscript_(v359, v444, v437, v443 - 1, v445, v446);
        }

        v589 = objc_msgSend_array(MEMORY[0x1E695DF70], v365, v366, v367, v368, v369);
        v452 = objc_msgSend_array(MEMORY[0x1E695DF70], v447, v448, v449, v450, v451);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *&buf[24] = 0;
        v458 = objc_msgSend_topModelTranscriptionPath(v608, v453, v454, v455, v456, v457);
        v464 = objc_msgSend_tokenColumns(v608, v459, v460, v461, v462, v463);
        v470 = objc_msgSend_count(v464, v465, v466, v467, v468, v469);
        v610[0] = MEMORY[0x1E69E9820];
        v610[1] = 3221225472;
        v610[2] = sub_18393B9FC;
        v610[3] = &unk_1E6DE02F0;
        v591 = v359;
        v611 = v591;
        v614 = buf;
        v471 = v589;
        v612 = v471;
        v472 = v452;
        v613 = v472;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v608, v473, v458, 0, v470, v610);

        v474 = [CHSynthesisResult alloc];
        v480 = objc_msgSend_content(v603, v475, v476, v477, v478, v479);
        v486 = objc_msgSend_drawing(v603, v481, v482, v483, v484, v485);
        v492 = objc_msgSend_inventoryDebuggingStyleDrawing(v603, v487, v488, v489, v490, v491);
        v498 = objc_msgSend_inventoryDebuggingStyleContent(v603, v493, v494, v495, v496, v497);
        v504 = objc_msgSend_numberOfNotSynthesizedCharacters(v603, v499, v500, v501, v502, v503);
        v140 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_inventoryDebuggingStyleDrawing_inventoryDebuggingStyleContent_numberOfNotSynthesizedCharacters_(v474, v505, v480, v486, v471, v472, v492, v498, v504);

        _Block_object_dispose(buf, 8);
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        loga = qword_1EA84DC98;
        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
        {
          v511 = objc_msgSend_content(v140, v506, v507, v508, v509, v510);
          *buf = 138739971;
          *&buf[4] = v511;
          _os_log_impl(&dword_18366B000, loga, OS_LOG_TYPE_DEFAULT, "recognizer segmentation and principal line detection failed for synthesis result with content:%{sensitive}@", buf, 0xCu);
        }
      }

      if (objc_msgSend_hasPrincipalLines(v599, v512, v513, v514, v515, v516))
      {
        if (v599)
        {
          objc_msgSend_principalLines(v599, v517, v518, v519, v520, v521);
        }

        else
        {
          v638 = 0u;
          v639 = 0u;
          v636 = 0u;
          v637 = 0u;
          v634 = 0u;
          v635 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        objc_msgSend_setPrincipalLines_(v140, v517, buf, v519, v520, v521);
      }

      v186 = objc_msgSend_reflowableTokensFromSynthesisResult_principalPoints_shouldCancel_(CHReflowableSynthesisResultToken, v517, v140, objb, v595, v521);
      goto LABEL_86;
    }

    if (objc_msgSend_containsObject_(&unk_1EF1EC760, v32, v27, v33, v34, v35))
    {
      v40 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v36, @"zh-Hans", v37, v38, v39);
      objc_msgSend_addObject_(obj, v41, v40, v42, v43, v44);
LABEL_19:

LABEL_20:
      v69 = obj;
      goto LABEL_21;
    }

    if (objc_msgSend_containsObject_(&unk_1EF1EC778, v36, v27, v37, v38, v39))
    {
      v40 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v70, @"zh-Hant", v71, v72, v73);
      objc_msgSend_addObject_(obj, v74, v40, v75, v76, v77);
      goto LABEL_19;
    }

    if (objc_msgSend_containsObject_(&unk_1EF1EC790, v70, v27, v71, v72, v73))
    {
      v40 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v78, @"ja_Jpan", v79, v80, v81);
      objc_msgSend_addObject_(obj, v82, v40, v83, v84, v85);
      goto LABEL_19;
    }

    if (!objc_msgSend_containsObject_(&unk_1EF1EC7A8, v78, v27, v79, v80, v81))
    {
      if (objc_msgSend_containsObject_(&unk_1EF1EC7C0, v238, v27, v239, v240, v241))
      {
        v40 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v283, @"ko_KR", v284, v285, v286);
        objc_msgSend_addObject_(obj, v287, v40, v288, v289, v290);
      }

      else if (objc_msgSend_containsObject_(&unk_1EF1EC7D8, v283, v27, v284, v285, v286))
      {
        v40 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v523, @"th_TH", v524, v525, v526);
        objc_msgSend_addObject_(obj, v527, v40, v528, v529, v530);
      }

      else if (objc_msgSend_containsObject_(&unk_1EF1EC7F0, v523, v27, v524, v525, v526))
      {
        v535 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v531, @"ru_RU", v532, v533, v534);
        objc_msgSend_addObject_(obj, v536, v535, v537, v538, v539);

        v40 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v540, @"uk_UA", v541, v542, v543);
        objc_msgSend_addObject_(obj, v544, v40, v545, v546, v547);
      }

      else if (objc_msgSend_containsObject_(&unk_1EF1EC808, v531, v27, v532, v533, v534))
      {
        v40 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v571, @"ar_AE", v573, v574, v575);
        objc_msgSend_addObject_(obj, v576, v40, v577, v578, v579);
      }

      else
      {
        if (!objc_msgSend_count(*(a1 + 200), v571, v572, v573, v574, v575))
        {
          goto LABEL_20;
        }

        v40 = objc_msgSend_firstObject(*(a1 + 200), v580, v581, v582, v583, v584);
        objc_msgSend_addObject_(obj, v585, v40, v586, v587, v588);
      }

      goto LABEL_19;
    }

    v242 = objc_msgSend_scriptHistogramForString_(CHTextScriptUtilities, v238, log, v239, v240, v241);
    v247 = objc_msgSend_objectForKeyedSubscript_(v242, v243, @"Hira", v244, v245, v246);
    if (v247 || (objc_msgSend_objectForKeyedSubscript_(v242, v248, @"Kana", v249, v250, v251), (v247 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v548 = objc_msgSend_objectForKeyedSubscript_(v242, v252, @"Kata", v253, v254, v255);

      if (!v548)
      {
        v549 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v256, @"zh-Hans", v257, v258, v259);
        objc_msgSend_addObject_(obj, v550, v549, v551, v552, v553);

        v558 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v554, @"zh-Hant", v555, v556, v557);
        objc_msgSend_addObject_(obj, v559, v558, v560, v561, v562);

        v278 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v563, @"ja_Jpan", v564, v565, v566);
        objc_msgSend_addObject_(obj, v567, v278, v568, v569, v570);
        goto LABEL_59;
      }
    }

    v260 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v256, @"ja_Jpan", v257, v258, v259);
    objc_msgSend_addObject_(obj, v261, v260, v262, v263, v264);

    v269 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v265, @"zh-Hans", v266, v267, v268);
    objc_msgSend_addObject_(obj, v270, v269, v271, v272, v273);

    v278 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v274, @"zh-Hant", v275, v276, v277);
    objc_msgSend_addObject_(obj, v279, v278, v280, v281, v282);
LABEL_59:

    goto LABEL_20;
  }

  v186 = 0;
LABEL_88:

  return v186;
}

id sub_18393B2B0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v158 = *MEMORY[0x1E69E9840];
  v144 = a2;
  v9 = a3;
  v143 = a5;
  v10 = 0;
  v145 = v9;
  if (a1 && v9)
  {
    if (!_os_feature_enabled_impl() || (objc_msgSend_hasSupportForPrincipalPoints_(CHRecognizerConfiguration, v11, v9, v12, v13, v14) & 1) == 0)
    {
      v10 = 0;
      goto LABEL_45;
    }

    v19 = objc_msgSend_recognizerForLocale_(a1, v15, v9, v16, v17, v18);
    v142 = v19;
    if (!v19)
    {
      v34 = 0;
LABEL_44:
      v10 = v34;

      goto LABEL_45;
    }

    objc_opt_class();
    v140 = a4;
    if (objc_opt_isKindOfClass())
    {
      if (qword_1EA84DC48 == -1)
      {
        v135 = qword_1EA84DC60;
        if (!os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
        {
LABEL_11:

          v20 = v19;
          v21 = a1[15];
          v150 = 0;
          v151 = 0;
          v23 = objc_msgSend_textRecognitionResultForDrawing_options_principalPoints_error_(v20, v22, v144, v21, &v151, &v150);
          v24 = v151;
          v25 = v150;
          v141 = v23;
          v139 = v25;
          if (!v25)
          {
            goto LABEL_24;
          }

          v26 = v25;
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v27 = qword_1EA84DC70;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_msgSend_description(v26, v28, v29, v30, v31, v32, v139);
            *buf = 138412290;
            v157 = v33;
            _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_ERROR, "Remote Recognition error: %@", buf, 0xCu);
          }

LABEL_23:

LABEL_24:
          v146 = v24;
          v38 = v144;
          v39 = MEMORY[0x1E695DF70];
          v45 = objc_msgSend_strokeCount(v38, v40, v41, v42, v43, v44);
          v34 = objc_msgSend_arrayWithCapacity_(v39, v46, v45, v47, v48, v49);
          for (i = 0; i < objc_msgSend_strokeCount(v38, v50, v51, v52, v53, v54, v139); ++i)
          {
            v61 = MEMORY[0x1E695DF70];
            v62 = objc_msgSend_count(v146, v56, v57, v58, v59, v60);
            v72 = objc_msgSend_arrayWithCapacity_(v61, v63, v62, v64, v65, v66);
            for (j = 0; j < objc_msgSend_count(v146, v67, v68, v69, v70, v71); ++j)
            {
              v79 = objc_msgSend_array(MEMORY[0x1E695DF70], v74, v75, v76, v77, v78);
              objc_msgSend_addObject_(v72, v80, v79, v81, v82, v83);
            }

            objc_msgSend_addObject_(v34, v74, v72, v76, v77, v78);
          }

          for (k = 0; k < objc_msgSend_count(v146, v56, v57, v58, v59, v60); ++k)
          {
            v89 = objc_msgSend_objectAtIndexedSubscript_(v146, v85, k, v86, v87, v88);
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v90 = v89;
            v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v152, buf, 16, v92);
            if (v97)
            {
              v98 = *v153;
              do
              {
                for (m = 0; m != v97; ++m)
                {
                  if (*v153 != v98)
                  {
                    objc_enumerationMutation(v90);
                  }

                  v100 = *(*(&v152 + 1) + 8 * m);
                  v101 = objc_msgSend_indexAtPosition_(v100, v93, 0, v94, v95, v96);
                  v106 = objc_msgSend_indexAtPosition_(v100, v102, 1, v103, v104, v105);
                  v110 = objc_msgSend_pointForStrokeIndex_pointIndex_(v38, v107, v101, v106, v108, v109);
                  v118 = sub_1837A9A94(v116, v117, v110, v111, v112, v113, v114, v115);
                  v123 = objc_msgSend_objectAtIndexedSubscript_(v34, v119, v101, v120, v121, v122);
                  v128 = objc_msgSend_objectAtIndexedSubscript_(v123, v124, k, v125, v126, v127);
                  objc_msgSend_addObject_(v128, v129, v118, v130, v131, v132);
                }

                v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v93, &v152, buf, 16, v96);
              }

              while (v97);
            }
          }

          if (v140)
          {
            v19 = v141;
            if (v141)
            {
              v133 = v141;
              v19 = v141;
              *v140 = v141;
            }
          }

          else
          {
            v19 = v141;
          }

          goto LABEL_44;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v135 = qword_1EA84DC60;
        if (!os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_11;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v135, OS_LOG_TYPE_DEBUG, "Running remote recognition", buf, 2u);
      goto LABEL_11;
    }

    if (qword_1EA84DC48 == -1)
    {
      v137 = qword_1EA84DC60;
      if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
      {
LABEL_22:

        v35 = a1[15];
        v149 = 0;
        v147[0] = MEMORY[0x1E69E9820];
        v147[1] = 3221225472;
        v147[2] = sub_183941DE8;
        v147[3] = &unk_1E6DE0428;
        v148 = v143;
        v36 = v142;
        v141 = objc_msgSend_textRecognitionResultForDrawing_options_writingStatistics_principalPoints_shouldCancel_(v36, v37, v144, v35, 0, &v149, v147);
        v24 = v149;
        v139 = 0;
        v27 = v148;
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v137 = qword_1EA84DC60;
      if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v137, OS_LOG_TYPE_DEBUG, "Running local recognition", buf, 2u);
    goto LABEL_22;
  }

LABEL_45:

  return v10;
}

void sub_18393B9FC(uint64_t a1, void *a2)
{
  v190 = a2;
  if ((objc_msgSend_properties(v190, v3, v4, v5, v6, v7) & 0x20) != 0)
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v8, *(*(*(a1 + 56) + 8) + 24), v10, v11, v12);
    v19 = objc_msgSend_firstObject(v13, v14, v15, v16, v17, v18);
    if (objc_msgSend_isEqualToString_(v19, v20, @" ", v21, v22, v23))
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v24, *(*(*(a1 + 56) + 8) + 24), v25, v26, v27);
      v34 = objc_msgSend_lastObject(v28, v29, v30, v31, v32, v33);
      isEqualToString = objc_msgSend_isEqualToString_(v34, v35, @" ", v36, v37, v38);

      if (isEqualToString)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
      }
    }

    else
    {
    }
  }

  v45 = objc_msgSend_string(MEMORY[0x1E696AD60], v8, v9, v10, v11, v12);
  for (i = 0; ; ++i)
  {
    v47 = objc_msgSend_string(v190, v40, v41, v42, v43, v44);
    v53 = objc_msgSend_countCharacters(v47, v48, v49, v50, v51, v52);

    if (i >= v53)
    {
      break;
    }

    while (1)
    {
      v59 = *(*(*(a1 + 56) + 8) + 24);
      if (v59 >= objc_msgSend_count(*(a1 + 32), v54, v55, v56, v57, v58) - 1)
      {
        break;
      }

      v64 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v60, *(*(*(a1 + 56) + 8) + 24), v61, v62, v63);
      v70 = objc_msgSend_lastObject(v64, v65, v66, v67, v68, v69);
      v76 = objc_msgSend_length(v70, v71, v72, v73, v74, v75);

      if (v76)
      {
        break;
      }

      v77 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v60, *(*(*(a1 + 56) + 8) + 24), v61, v62, v63);
      v83 = objc_msgSend_firstObject(v77, v78, v79, v80, v81, v82);
      objc_msgSend_appendString_(v45, v84, v83, v85, v86, v87);

      ++*(*(*(a1 + 56) + 8) + 24);
    }

    v88 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v60, *(*(*(a1 + 56) + 8) + 24), v61, v62, v63);
    v94 = objc_msgSend_firstObject(v88, v89, v90, v91, v92, v93);
    objc_msgSend_appendString_(v45, v95, v94, v96, v97, v98);

    ++*(*(*(a1 + 56) + 8) + 24);
  }

  if (objc_msgSend_length(v45, v54, v55, v56, v57, v58) || !objc_msgSend_count(*(a1 + 40), v99, v100, v101, v102, v103))
  {
    if (objc_msgSend_count(*(a1 + 40), v99, v100, v101, v102, v103) && (objc_msgSend_lastObject(*(a1 + 40), v104, v105, v106, v107, v108), v109 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend_length(v109, v110, v111, v112, v113, v114), v109, !v115))
    {
      v154 = *(a1 + 40);
      v155 = objc_msgSend_count(v154, v104, v116, v106, v107, v108);
      objc_msgSend_setObject_atIndexedSubscript_(v154, v156, v45, v155 - 1, v157, v158);
      v164 = objc_msgSend_lastObject(*(a1 + 48), v159, v160, v161, v162, v163);
      v123 = objc_msgSend_mutableCopy(v164, v165, v166, v167, v168, v169);

      v175 = objc_msgSend_strokeIndexes(v190, v170, v171, v172, v173, v174);
      objc_msgSend_addIndexes_(v123, v176, v175, v177, v178, v179);

      v180 = *(a1 + 48);
      v186 = objc_msgSend_count(v180, v181, v182, v183, v184, v185);
      objc_msgSend_setObject_atIndexedSubscript_(v180, v187, v123, v186 - 1, v188, v189);
    }

    else
    {
      objc_msgSend_addObject_(*(a1 + 40), v104, v45, v106, v107, v108);
      v117 = *(a1 + 48);
      v123 = objc_msgSend_strokeIndexes(v190, v118, v119, v120, v121, v122);
      objc_msgSend_addObject_(v117, v124, v123, v125, v126, v127);
    }
  }

  else
  {
    v128 = objc_msgSend_lastObject(*(a1 + 48), v99, v100, v101, v102, v103);
    v123 = objc_msgSend_mutableCopy(v128, v129, v130, v131, v132, v133);

    v139 = objc_msgSend_strokeIndexes(v190, v134, v135, v136, v137, v138);
    objc_msgSend_addIndexes_(v123, v140, v139, v141, v142, v143);

    v144 = *(a1 + 48);
    v150 = objc_msgSend_count(v144, v145, v146, v147, v148, v149);
    objc_msgSend_setObject_atIndexedSubscript_(v144, v151, v123, v150 - 1, v152, v153);
  }
}

void sub_18393C180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v21 = v16;

  _Unwind_Resume(a1);
}

void sub_18393C224(uint64_t a1)
{
  v209 = *MEMORY[0x1E69E9840];
  if (!(*(*(a1 + 72) + 16))())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = v4;
    if (v3)
    {
      v10 = objc_msgSend_forcedCachedContextualResultCoveringStrokes_(*(v3 + 8), v5, v4, v6, v7, v8);

      if (v10)
      {
        v16 = *(a1 + 32);
        v17 = objc_msgSend_latestStrokeProvider(v16, v11, v12, v13, v14, v15);
        v18 = sub_183936920(v16, v10, v17, *(a1 + 56), *(a1 + 72));

        v187 = v18;
        v24 = objc_msgSend_totalUnitCount(*(a1 + 64), v19, v20, v21, v22, v23);
        objc_msgSend_setCompletedUnitCount_(*(a1 + 64), v25, v24, v26, v27, v28);
        if (objc_msgSend_count(v18, v29, v30, v31, v32, v33))
        {
          if (((*(*(a1 + 72) + 16))() & 1) == 0 && objc_msgSend_count(v18, v34, v35, v36, v37, v38))
          {
            v44 = objc_msgSend_array(MEMORY[0x1E695DF70], v39, v40, v41, v42, v43);
            v192 = 0u;
            v193 = 0u;
            v190 = 0u;
            v191 = 0u;
            v45 = v18;
            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v190, v194, 16, v47);
            if (v53)
            {
              v54 = *v191;
              while (2)
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v191 != v54)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v56 = *(*(&v190 + 1) + 8 * i);
                  v57 = objc_msgSend_drawing(v56, v48, v49, v50, v51, v52);
                  v63 = objc_msgSend_strokeCount(v57, v58, v59, v60, v61, v62) == 0;

                  if (v63)
                  {
                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v107 = qword_1EA84DC50[0];
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                    {
                      v113 = objc_msgSend_content(v56, v108, v109, v110, v111, v112);
                      *buf = 138739971;
                      v196 = v113;
                      _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_ERROR, "Session synthesis for autorefine stopping because synthesizer generated an empty drawing for string %{sensitive}@", buf, 0xCu);
                    }

                    (*(*(a1 + 80) + 16))();
                    goto LABEL_34;
                  }

                  v64 = sub_183939E10(*(a1 + 32), v56, 0, *(a1 + 72));
                  objc_msgSend_addObjectsFromArray_(v44, v65, v64, v66, v67, v68);
                }

                v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v190, v194, 16, v52);
                if (v53)
                {
                  continue;
                }

                break;
              }
            }

            v74 = objc_msgSend_array(MEMORY[0x1E695DEC8], v69, v70, v71, v72, v73);
            v75 = *(a1 + 32);
            v81 = objc_msgSend_latestStrokeProvider(v75, v76, v77, v78, v79, v80);
            v189 = v74;
            v82 = sub_183939C30(v75, v44, v10, v81, &v189);
            v45 = v189;

            (*(*(a1 + 80) + 16))();
LABEL_34:

            v18 = v187;
            goto LABEL_28;
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v83 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v89 = objc_msgSend_count(*(a1 + 40), v84, v85, v86, v87, v88);
            v95 = objc_msgSend_latestStrokeProvider(*(a1 + 32), v90, v91, v92, v93, v94);
            v101 = objc_msgSend_orderedStrokes(v95, v96, v97, v98, v99, v100);
            *buf = 134218240;
            v196 = v89;
            v197 = 2048;
            v198 = objc_msgSend_count(v101, v102, v103, v104, v105, v106);
            _os_log_impl(&dword_18366B000, v83, OS_LOG_TYPE_ERROR, "Session is cancelling refinement with strokes to replace = %ld, strokes in provider = %ld", buf, 0x16u);
          }
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v83 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v83, OS_LOG_TYPE_ERROR, "Session synthesis for autorefine stopping because synthesizer failed to refine a drawing", buf, 2u);
          }
        }

        (*(*(a1 + 80) + 16))();
LABEL_28:

LABEL_41:
        return;
      }
    }

    else
    {
    }

    v114 = objc_msgSend_autoRefineResults(*(*(a1 + 32) + 8), v11, v12, v13, v14, v15);
    v10 = objc_msgSend_firstObject(v114, v115, v116, v117, v118, v119);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v120 = qword_1EA84DC60;
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      v186 = objc_msgSend_autoRefineResults(*(*(a1 + 32) + 8), v121, v122, v123, v124, v125);
      v131 = objc_msgSend_count(v186, v126, v127, v128, v129, v130);
      v185 = objc_msgSend_textResult(v10, v132, v133, v134, v135, v136);
      v188 = objc_msgSend_rawTranscription(v185, v137, v138, v139, v140, v141);
      v184 = objc_msgSend_strokeIdentifiers(v10, v142, v143, v144, v145, v146);
      v152 = objc_msgSend_count(v184, v147, v148, v149, v150, v151);
      v158 = objc_msgSend_syntheticStrokeIndexes(v10, v153, v154, v155, v156, v157);
      v164 = objc_msgSend_count(v158, v159, v160, v161, v162, v163);
      v170 = objc_msgSend_strokeGroup(v10, v165, v166, v167, v168, v169);
      v176 = objc_msgSend_uniqueIdentifier(v170, v171, v172, v173, v174, v175);
      v177 = *(a1 + 48);
      v183 = objc_msgSend_count(*(a1 + 40), v178, v179, v180, v181, v182);
      *buf = 134219523;
      v196 = v131;
      v197 = 2117;
      v198 = v188;
      v199 = 2048;
      v200 = v152;
      v201 = 2048;
      v202 = v164;
      v203 = 2048;
      v204 = v176;
      v205 = 2117;
      v206 = v177;
      v207 = 2048;
      v208 = v183;
      _os_log_impl(&dword_18366B000, v120, OS_LOG_TYPE_DEFAULT, "Session unable to reconstruct a recognition result for incoming strokes to AutoRefine: Skipping. Cached autorefine result count = %ld, first result has text %{sensitive}@ with %ld strokes (%ld synthetic), groupID = %ld, synthesis request for string %{sensitive}@ wants to replace %ld strokes", buf, 0x48u);
    }

    (*(*(a1 + 80) + 16))();
    goto LABEL_41;
  }

  v2 = *(*(a1 + 80) + 16);

  v2();
}

void sub_18393CC50(uint64_t a1)
{
  v120 = *MEMORY[0x1E69E9840];
  v100 = sub_18392C888(*(a1 + 32), *(a1 + 40), 2, 1, 1, 0, 0, *(a1 + 64));
  if (!v100)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Context results must be non-nil", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v8 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v8 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_FAULT, "Context results must be non-nil", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v104 = objc_msgSend_latestStrokeProvider(*(a1 + 32), v2, v3, v4, v5, v6);
  v101 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13);
  v102 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16, v17, v18);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v100;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v113, v119, 16, v20);
  if (v21)
  {
    v22 = 0;
    v103 = *v114;
    do
    {
      v105 = v21;
      for (i = 0; i != v105; ++i)
      {
        if (*v114 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v113 + 1) + 8 * i);
        v107 = sub_183936920(*(a1 + 32), v24, v104, *(a1 + 48), *(a1 + 64));
        if (objc_msgSend_count(v107, v25, v26, v27, v28, v29))
        {
          v35 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31, v32, v33, v34);
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v36 = v107;
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v109, v118, 16, v38);
          if (v39)
          {
            v40 = *v110;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v110 != v40)
                {
                  objc_enumerationMutation(v36);
                }

                v42 = sub_183939E10(*(a1 + 32), *(*(&v109 + 1) + 8 * j), 0, *(a1 + 64));
                objc_msgSend_addObjectsFromArray_(v35, v43, v42, v44, v45, v46);
              }

              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v47, &v109, v118, 16, v48);
            }

            while (v39);
          }

          v54 = objc_msgSend_array(MEMORY[0x1E695DEC8], v49, v50, v51, v52, v53);
          v55 = *(a1 + 32);
          v61 = objc_msgSend_latestStrokeProvider(v55, v56, v57, v58, v59, v60);
          v108 = v54;
          v62 = sub_183939C30(v55, v35, v24, v61, &v108);
          v63 = v108;

          objc_msgSend_addObjectsFromArray_(v101, v64, v62, v65, v66, v67);
          objc_msgSend_addObjectsFromArray_(v102, v68, v63, v69, v70, v71);
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v35 = qword_1EA84DC98;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_ERROR, "Failed to refine drawing", buf, 2u);
          }
        }

        v77 = objc_msgSend_totalUnitCount(*(a1 + 56), v72, v73, v74, v75, v76);
        v83 = objc_msgSend_count(obj, v78, v79, v80, v81, v82);
        ++v22;
        objc_msgSend_setCompletedUnitCount_(*(a1 + 56), v84, ((v77 * v22) / v83), v85, v86, v87);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v88, &v113, v119, 16, v89);
    }

    while (v21);
  }

  v95 = objc_msgSend_totalUnitCount(*(a1 + 56), v90, v91, v92, v93, v94);
  objc_msgSend_setCompletedUnitCount_(*(a1 + 56), v96, v95, v97, v98, v99);
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
}

void sub_18393D420(uint64_t a1)
{
  v238 = *MEMORY[0x1E69E9840];
  v208 = sub_18392C888(*(a1 + 32), *(a1 + 40), 2, 1, 1, 0, 0, *(a1 + 64));
  if (!v208)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Context results must be non-nil", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v8 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v8 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_FAULT, "Context results must be non-nil", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v211 = objc_msgSend_latestStrokeProvider(*(a1 + 32), v2, v3, v4, v5, v6, v208);
  v218 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13);
  v219 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16, v17, v18);
  v217 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  obj = v209;
  v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v226, v237, 16, v25);
  if (v212)
  {
    v214 = 0;
    v210 = *v227;
    do
    {
      v216 = 0;
      do
      {
        if (*v227 != v210)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v226 + 1) + 8 * v216);
        v215 = sub_183936920(*(a1 + 32), v26, v211, *(a1 + 48), *(a1 + 64));
        if (objc_msgSend_count(v215, v27, v28, v29, v30, v31))
        {
          v37 = objc_msgSend_array(MEMORY[0x1E695DF70], v32, v33, v34, v35, v36);
          v224 = 0u;
          v225 = 0u;
          v222 = 0u;
          v223 = 0u;
          v38 = v215;
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v222, v236, 16, v40);
          if (v41)
          {
            v42 = *v223;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v223 != v42)
                {
                  objc_enumerationMutation(v38);
                }

                v44 = sub_183939E10(*(a1 + 32), *(*(&v222 + 1) + 8 * i), 0, *(a1 + 64));
                objc_msgSend_addObjectsFromArray_(v37, v45, v44, v46, v47, v48);
              }

              v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v49, &v222, v236, 16, v50);
            }

            while (v41);
          }

          v56 = objc_msgSend_array(MEMORY[0x1E695DEC8], v51, v52, v53, v54, v55);
          v57 = *(a1 + 32);
          v63 = objc_msgSend_latestStrokeProvider(v57, v58, v59, v60, v61, v62);
          v221 = v56;
          v64 = sub_183939C30(v57, v37, v26, v63, &v221);
          v220 = v221;

          v70 = 0;
          while (2)
          {
            if (v70 >= objc_msgSend_count(v64, v65, v66, v67, v68, v69))
            {

              goto LABEL_39;
            }

            v75 = objc_msgSend_objectAtIndexedSubscript_(v64, v71, v70, v72, v73, v74);
            v81 = objc_msgSend_drawing(v75, v76, v77, v78, v79, v80);
            if (objc_msgSend_strokeCount(v81, v82, v83, v84, v85, v86))
            {
              v91 = objc_msgSend_objectAtIndexedSubscript_(v220, v87, v70, v88, v89, v90);
              v97 = objc_msgSend_count(v91, v92, v93, v94, v95, v96) == 0;

              if (!v97)
              {
                v103 = objc_msgSend_drawing(v75, v98, v99, v100, v101, v102);
                objc_msgSend_addObject_(v219, v104, v103, v105, v106, v107);

                v112 = objc_msgSend_objectAtIndexedSubscript_(v220, v108, v70, v109, v110, v111);
                objc_msgSend_addObject_(v218, v113, v112, v114, v115, v116);

                v117 = objc_opt_class();
                v123 = objc_msgSend_string(v75, v118, v119, v120, v121, v122);
                v124 = MEMORY[0x1E696AC90];
                v129 = objc_msgSend_objectAtIndexedSubscript_(v220, v125, v70, v126, v127, v128);
                v135 = objc_msgSend_count(v129, v130, v131, v132, v133, v134);
                v139 = objc_msgSend_indexSetWithIndexesInRange_(v124, v136, 0, v135, v137, v138);
                objc_msgSend_bounds(v75, v140, v141, v142, v143, v144);
                v146 = objc_msgSend_tokenizedTextResultWithString_strokeIndexes_bounds_trailingSeparator_recognizerGenerationIdentifier_defaultTokenScores_(v117, v145, v123, v139, &stru_1EF1C0318, 0);

                objc_msgSend_addObject_(v217, v147, v146, v148, v149, v150);
LABEL_33:

                ++v70;
                continue;
              }
            }

            else
            {
            }

            break;
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v146 = qword_1EA84DC98;
          if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            v156 = objc_msgSend_string(v75, v151, v152, v153, v154, v155);
            v162 = objc_msgSend_drawing(v75, v157, v158, v159, v160, v161);
            v168 = objc_msgSend_strokeCount(v162, v163, v164, v165, v166, v167);
            v173 = objc_msgSend_objectAtIndexedSubscript_(v220, v169, v70, v170, v171, v172);
            v179 = objc_msgSend_count(v173, v174, v175, v176, v177, v178);
            *buf = 138740483;
            v231 = v156;
            v232 = 2048;
            v233 = v168;
            v234 = 2048;
            v235 = v179;
            _os_log_impl(&dword_18366B000, v146, OS_LOG_TYPE_ERROR, "Skipping Refinement for a token %{sensitive}@, drawing with %ld strokes, aligned strokes = %ld", buf, 0x20u);
          }

          goto LABEL_33;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v37 = qword_1EA84DC98;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_ERROR, "Failed to refine drawing", buf, 2u);
        }

LABEL_39:

        v185 = objc_msgSend_totalUnitCount(*(a1 + 56), v180, v181, v182, v183, v184);
        v191 = objc_msgSend_count(obj, v186, v187, v188, v189, v190);
        ++v214;
        objc_msgSend_setCompletedUnitCount_(*(a1 + 56), v192, ((v185 * v214) / v191), v193, v194, v195);

        ++v216;
      }

      while (v216 != v212);
      v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v196, &v226, v237, 16, v197);
    }

    while (v212);
  }

  v203 = objc_msgSend_totalUnitCount(*(a1 + 56), v198, v199, v200, v201, v202);
  objc_msgSend_setCompletedUnitCount_(*(a1 + 56), v204, v203, v205, v206, v207);
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
}

void sub_18393E87C(uint64_t a1, void *a2)
{
  v50[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = objc_msgSend_strokeIndexes(v3, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_objectsAtIndexes_(v4, v11, v10, v12, v13, v14);

  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v23 = objc_msgSend_latestStrokeProvider(*(a1 + 40), v18, v19, v20, v21, v22);
  objc_msgSend_distanceFromPoint_toStrokes_withStrokeProvider_(CHStrokeUtilities, v24, v15, v23, v25, v26, v16, v17);
  v28 = v27;

  v29 = *(a1 + 48);
  v49[0] = @"distance";
  v35 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v30, v31, v32, v33, v34, v28);
  v50[0] = v35;
  v49[1] = @"transcription";
  v41 = objc_msgSend_string(v3, v36, v37, v38, v39, v40);
  v49[2] = @"strokeIdentifiers";
  v50[1] = v41;
  v50[2] = v15;
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v42, v50, v49, 3, v43);
  objc_msgSend_addObject_(v29, v45, v44, v46, v47, v48);
}

void sub_18393ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37)
{
  _Block_object_dispose((v39 - 216), 8);

  _Block_object_dispose((v39 - 168), 8);
  _Unwind_Resume(a1);
}

id sub_18393EE34(uint64_t a1, void *a2)
{
  v305 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_msgSend_synthesisSuggestion(v3, v4, v5, v6, v7, v8) != 1)
  {
    v65 = objc_alloc(MEMORY[0x1E695DF90]);
    v71 = objc_msgSend_dictionary(*(*(*(a1 + 72) + 8) + 40), v66, v67, v68, v69, v70);
    v20 = objc_msgSend_initWithDictionary_(v65, v72, v71, v73, v74, v75);

    objc_msgSend_addEntriesFromDictionary_(v20, v76, *(a1 + 48), v77, v78, v79);
    v80 = MEMORY[0x1E696AD98];
    v86 = objc_msgSend_synthesisSuggestion(v3, v81, v82, v83, v84, v85);
    v91 = objc_msgSend_numberWithInteger_(v80, v87, v86, v88, v89, v90);
    objc_msgSend_setObject_forKeyedSubscript_(v20, v92, v91, CHTextSynthesisOptionSynthesisSuggestion[0], v93, v94);

    v49 = objc_msgSend_chunkValueForSynthesis(v3, v95, v96, v97, v98, v99);
    if (objc_msgSend_length(v49, v100, v101, v102, v103, v104) && objc_msgSend_countCodepoints(v49, v105, v106, v107, v108, v109) == 1 && objc_msgSend_synthesisSuggestion(v3, v105, v106, v107, v108, v109) == 2)
    {
      v110 = objc_msgSend_stringByAppendingFormat_(v49, v105, @" %@", v107, v108, v109, @"Zealot");

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v111 = qword_1EA84DC98;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138739971;
        *&buf[4] = v110;
        _os_log_impl(&dword_18366B000, v111, OS_LOG_TYPE_DEBUG, "Suffix appended to single-char string for synthesis: %{sensitive}@", buf, 0xCu);
      }

      v112 = 1;
      v49 = v110;
    }

    else
    {
      v112 = 0;
    }

    v113 = objc_msgSend_textSynthesizer(*(a1 + 32), v105, v106, v107, v108, v109);
    v115 = objc_msgSend_synthesizeDrawingForString_options_shouldCancel_error_(v113, v114, v49, v20, *(a1 + 56), 0);

    if (!v115)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v203 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
      {
        v209 = objc_msgSend_synthesisSuggestion(v3, v204, v205, v206, v207, v208);
        *buf = 138740227;
        *&buf[4] = v49;
        *&buf[12] = 1024;
        *&buf[14] = v209;
        _os_log_impl(&dword_18366B000, v203, OS_LOG_TYPE_ERROR, "No synthesis result for string:%{sensitive}@ suggestion:%d", buf, 0x12u);
      }

      if (qword_1EA84DC48 == -1)
      {
        v210 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_55;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v210 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_55;
        }
      }

      v216 = objc_msgSend_synthesisSuggestion(v3, v211, v212, v213, v214, v215);
      *buf = 138740227;
      *&buf[4] = v49;
      *&buf[12] = 1024;
      *&buf[14] = v216;
      _os_log_impl(&dword_18366B000, v210, OS_LOG_TYPE_FAULT, "No synthesis result for string:%{sensitive}@ suggestion:%d", buf, 0x12u);
      goto LABEL_55;
    }

    objc_msgSend_addObject_(*(a1 + 40), v116, v115, v117, v118, v119);
    v125 = sub_183939E10(*(a1 + 32), v115, v112, *(a1 + 56));
    if (v125)
    {
      v126 = 0;
    }

    else
    {
      v126 = v112;
    }

    if (v126 != 1)
    {
      goto LABEL_57;
    }

    v127 = objc_msgSend_textSynthesizer(*(a1 + 32), v120, v121, v122, v123, v124);
    v133 = objc_msgSend_chunkValueForSynthesis(v3, v128, v129, v130, v131, v132);
    v135 = objc_msgSend_synthesizeDrawingForString_options_shouldCancel_error_(v127, v134, v133, v20, *(a1 + 56), 0);

    if (v135)
    {
      v125 = sub_183939E10(*(a1 + 32), v135, 0, *(a1 + 56));
      v115 = v135;
      goto LABEL_57;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v259 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
    {
      v265 = objc_msgSend_chunkValueForSynthesis(v3, v260, v261, v262, v263, v264);
      v271 = objc_msgSend_synthesisSuggestion(v3, v266, v267, v268, v269, v270);
      *buf = 138740227;
      *&buf[4] = v265;
      *&buf[12] = 1024;
      *&buf[14] = v271;
      _os_log_impl(&dword_18366B000, v259, OS_LOG_TYPE_ERROR, "No synthesis result for the fallback request's string:%{sensitive}@ suggestion:%d", buf, 0x12u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v210 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
      {
LABEL_55:

        v115 = 0;
        goto LABEL_56;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v210 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_55;
      }
    }

    v277 = objc_msgSend_chunkValueForSynthesis(v3, v272, v273, v274, v275, v276);
    v283 = objc_msgSend_synthesisSuggestion(v3, v278, v279, v280, v281, v282);
    *buf = 138740227;
    *&buf[4] = v277;
    *&buf[12] = 1024;
    *&buf[14] = v283;
    _os_log_impl(&dword_18366B000, v210, OS_LOG_TYPE_FAULT, "No synthesis result for the fallback request's string:%{sensitive}@ suggestion:%d", buf, 0x12u);

    goto LABEL_55;
  }

  v9 = objc_alloc(MEMORY[0x1E695DF90]);
  v15 = objc_msgSend_dictionary(*(*(*(a1 + 64) + 8) + 40), v10, v11, v12, v13, v14);
  v20 = objc_msgSend_initWithDictionary_(v9, v16, v15, v17, v18, v19);

  v21 = MEMORY[0x1E696AD98];
  v27 = objc_msgSend_synthesisSuggestion(v3, v22, v23, v24, v25, v26);
  v32 = objc_msgSend_numberWithInteger_(v21, v28, v27, v29, v30, v31);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v33, v32, CHTextSynthesisOptionSynthesisSuggestion[0], v34, v35);

  v41 = objc_msgSend_textSynthesizer(*(a1 + 32), v36, v37, v38, v39, v40);
  v47 = objc_msgSend_chunkValueForSynthesis(v3, v42, v43, v44, v45, v46);
  v49 = objc_msgSend_synthesizeDrawingForString_options_shouldCancel_error_(v41, v48, v47, v20, *(a1 + 56), 0);

  objc_msgSend_addObject_(*(a1 + 40), v50, v49, v51, v52, v53);
  if (v49)
  {
    objc_msgSend_principalLines(v49, v54, v55, v56, v57, v58);
    v295 = *buf;
    v296 = *&buf[16];
    v59 = v299;
    v60 = v300;
    v62 = v301;
    v61 = v302;
    v64 = v303;
    v63 = v304;
    goto LABEL_28;
  }

  v296 = *MEMORY[0x1E695EFF8];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v136 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
  {
    v142 = objc_msgSend_chunkValueForSynthesis(v3, v137, v138, v139, v140, v141);
    *buf = 138739971;
    *&buf[4] = v142;
    _os_log_impl(&dword_18366B000, v136, OS_LOG_TYPE_ERROR, "No fast-path synthesis result for string:%{sensitive}@", buf, 0xCu);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v143 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v143 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
  {
LABEL_26:
    v149 = objc_msgSend_chunkValueForSynthesis(v3, v144, v145, v146, v147, v148);
    *buf = 138739971;
    *&buf[4] = v149;
    _os_log_impl(&dword_18366B000, v143, OS_LOG_TYPE_FAULT, "No fast-path synthesis result for string:%{sensitive}@", buf, 0xCu);
  }

LABEL_27:

  v295 = v296;
  v59 = v296;
  v60 = v296;
  v62 = v296;
  v61 = v296;
  v64 = v296;
  v63 = v296;
LABEL_28:
  v293 = v62;
  v294 = v59;
  if (fabs(COERCE_DOUBLE(*&vsubq_f64(v62, v59).f64[1])) > 2.22044605e-16)
  {
    v289 = v64;
    v290 = v61;
    v291 = v60;
    v292 = v63;
    v150 = objc_opt_class();
    *buf = v295;
    *&buf[16] = v296;
    v299 = v294;
    v300 = v291;
    v301 = v293;
    v302 = v290;
    v303 = v289;
    v304 = v292;
    v156 = objc_msgSend_chunkValueOriginal(v3, v151, v152, v153, v154, v155);
    v160 = objc_msgSend_textSizeFromPrincipalLines_string_(v150, v157, buf, v156, v158, v159);

    v166 = objc_msgSend_drawing(v49, v161, v162, v163, v164, v165);
    objc_msgSend_bounds(v166, v167, v168, v169, v170, v171);
    v287 = v173;
    v288 = v172;
    v285 = v175;
    v286 = v174;

    v181 = objc_msgSend_drawing(v49, v176, v177, v178, v179, v180);
    objc_msgSend_bounds(v181, v182, v183, v184, v185, v186);
    if (v192 == 0.0)
    {
      v201 = 1.0;
    }

    else
    {
      v193 = objc_msgSend_drawing(v49, v187, v188, v189, v190, v191);
      objc_msgSend_bounds(v193, v194, v195, v196, v197, v198);
      v200 = v199;

      v201 = 1.0 / v200;
    }

    v217 = objc_opt_class();
    v115 = objc_msgSend_scaledSize_scale_(v217, v218, v160, v219, v220, v221, v201);

    v222 = [CHReflowableSynthesisResultToken alloc];
    v228 = objc_msgSend_drawing(v49, v223, v224, v225, v226, v227);
    v234 = objc_msgSend_chunkValueOriginal(v3, v229, v230, v231, v232, v233);
    v235.f64[0] = v286;
    v235.f64[1] = v285;
    __asm { FMOV            V1.2D, #1.0 }

    v241 = vbslq_s8(vceqzq_f64(v235), _Q1, v235);
    v242.f64[0] = v288;
    v242.f64[1] = v287;
    *buf = vdivq_f64(vsubq_f64(v295, v242), v241);
    *&buf[16] = vdivq_f64(vsubq_f64(v296, v242), v241);
    v299 = vdivq_f64(vsubq_f64(v294, v242), v241);
    v300 = vdivq_f64(vsubq_f64(v291, v242), v241);
    v301 = vdivq_f64(vsubq_f64(v293, v242), v241);
    v302 = vdivq_f64(vsubq_f64(v290, v242), v241);
    v303 = vdivq_f64(vsubq_f64(v289, v242), v241);
    v304 = vdivq_f64(vsubq_f64(v292, v242), v241);
    v248 = objc_msgSend_drawing(v49, v243, v244, v245, v246, v247);
    objc_msgSend_bounds(v248, v249, v250, v251, v252, v253);
    hasPrecedingSpace = objc_msgSend_initWithDrawing_string_principalLines_textSize_bounds_hasPrecedingSpace_(v222, v254, v228, v234, buf, v115, 0);
    v297 = hasPrecedingSpace;
    v125 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v256, &v297, 1, v257, v258);

    goto LABEL_57;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v202 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v202, OS_LOG_TYPE_ERROR, "fast-path synthesis result does not contain principal lines information", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v115 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_56;
    }

    goto LABEL_37;
  }

  v115 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
  {
LABEL_37:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v115, OS_LOG_TYPE_FAULT, "fast-path synthesis result does not contain principal lines information", buf, 2u);
  }

LABEL_56:
  v125 = 0;
LABEL_57:

  return v125;
}

void sub_18393FB14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v342 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_remoteTextSynthesizer(*(a1 + 32), a2, a3, a4, a5, a6);
  v10 = objc_msgSend_chunkedDataForString_allowedSynthesizers_(v6, v7, *(a1 + 40), &unk_1EF1EC730, v8, v9);

  v315 = v10;
  v316 = objc_msgSend_dataChunks(v10, v11, v12, v13, v14, v15);
  if (!v316)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 40);
      *buf = 138740227;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_length(v22, v17, v18, v19, v20, v21);
      _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "Failed to chunk input string %{sensitive}@ of length %lu", buf, 0x16u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v23 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        v316 = objc_alloc_init(MEMORY[0x1E695DEC8]);
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v23 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    v29 = *(a1 + 40);
    v30 = objc_msgSend_length(v29, v24, v25, v26, v27, v28);
    *buf = 138740227;
    *&buf[4] = v29;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_FAULT, "Failed to chunk input string %{sensitive}@ of length %lu", buf, 0x16u);
    goto LABEL_9;
  }

LABEL_10:
  if (os_variant_has_internal_diagnostics())
  {
    v314 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v31, v32, v33, v34, v35);
    v41 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37, v38, v39, v40);
    v329 = 0u;
    v330 = 0u;
    v327 = 0u;
    v328 = 0u;
    obj = v316;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v327, v341, 16, v43);
    if (v44)
    {
      v45 = *v328;
      do
      {
        v46 = 0;
        do
        {
          if (*v328 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v327 + 1) + 8 * v46);
          v339[0] = @"stringToSynthesize";
          v53 = objc_msgSend_chunkValueForSynthesis(v47, v48, v49, v50, v51, v52);
          v340[0] = v53;
          v339[1] = @"originalSubstring";
          v59 = objc_msgSend_chunkValueOriginal(v47, v54, v55, v56, v57, v58);
          v340[1] = v59;
          v339[2] = @"rangeInOriginalString";
          v343.location = objc_msgSend_rangeInOriginalString(v47, v60, v61, v62, v63, v64);
          v65 = NSStringFromRange(v343);
          v340[2] = v65;
          v339[3] = @"synthesisSuggestion";
          v66 = MEMORY[0x1E696AD98];
          v72 = objc_msgSend_synthesisSuggestion(v47, v67, v68, v69, v70, v71);
          v77 = objc_msgSend_numberWithInt_(v66, v73, v72, v74, v75, v76);
          v340[3] = v77;
          v80 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v78, v340, v339, 4, v79);

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v81 = qword_1EA84DC98;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v87 = objc_msgSend_chunkValueForSynthesis(v47, v82, v83, v84, v85, v86);
            v93 = objc_msgSend_chunkValueOriginal(v47, v88, v89, v90, v91, v92);
            v344.location = objc_msgSend_rangeInOriginalString(v47, v94, v95, v96, v97, v98);
            v99 = NSStringFromRange(v344);
            v105 = objc_msgSend_synthesisSuggestion(v47, v100, v101, v102, v103, v104);
            *buf = 138740739;
            *&buf[4] = v87;
            *&buf[12] = 2117;
            *&buf[14] = v93;
            *&buf[22] = 2112;
            v333 = v99;
            LOWORD(v334) = 1024;
            *(&v334 + 2) = v105;
            _os_log_impl(&dword_18366B000, v81, OS_LOG_TYPE_DEFAULT, "Received chunk synthesize:%{sensitive}@ original:%{sensitive}@ range:%@ suggestion:%d from deamon", buf, 0x26u);
          }

          objc_msgSend_addObject_(v41, v106, v80, v107, v108, v109);
          ++v46;
        }

        while (v44 != v46);
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v327, v341, 16, v111);
      }

      while (v44);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v314, v112, v41, @"chunks", v113, v114);
    v319 = v314;
  }

  else
  {
    v319 = 0;
  }

  v115 = sub_18389FE44(v316);

  v120 = objc_msgSend_styleSampleOptionsForPoint_shouldCancel_(*(a1 + 32), v116, *(a1 + 64), v117, v118, v119, *(a1 + 104), *(a1 + 112));
  v121 = *(*(a1 + 88) + 8);
  v122 = *(v121 + 40);
  *(v121 + 40) = v120;

  v127 = objc_msgSend_synthesisOptionsWithFastPath_(CHSynthesisRequestOptions, v123, 1, v124, v125, v126);
  v128 = *(*(a1 + 96) + 8);
  v129 = *(v128 + 40);
  *(v128 + 40) = v127;

  v317 = objc_msgSend_sortedArrayUsingComparator_(v115, v130, &unk_1EF1BF498, v131, v132, v133);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4812000000;
  v333 = sub_183940A48;
  v334 = sub_183940A6C;
  v335 = &unk_183A5AC72;
  v337 = 0;
  v338 = 0;
  __p = 0;
  v139 = objc_msgSend_count(v317, v134, v135, v136, v137, v138);
  if (0xAAAAAAAAAAAAAAABLL * ((v338 - __p) >> 3) < v139)
  {
    if (v139 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  v322[0] = MEMORY[0x1E69E9820];
  v322[1] = 3221225472;
  v322[2] = sub_183940AE4;
  v322[3] = &unk_1E6DE03B0;
  v325 = *(a1 + 72);
  v323 = *(a1 + 40);
  v326 = buf;
  v324 = *(a1 + 48);
  objc_msgSend_enumerateObjectsUsingBlock_(v317, v140, v322, v141, v142, v143);
  v149 = objc_msgSend_totalUnitCount(*(a1 + 48), v144, v145, v146, v147, v148);
  objc_msgSend_setCompletedUnitCount_(*(a1 + 48), v150, v149, v151, v152, v153);
  v154 = *(*&buf[8] + 48);
  v155 = *(*&buf[8] + 56);
  v156 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v155 - v154));
  if (v155 == v154)
  {
    v157 = 0;
  }

  else
  {
    v157 = v156;
  }

  sub_18394241C(v154, v155, v157, 1);
  v162 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v158, 0xAAAAAAAAAAAAAAABLL * ((*(*&buf[8] + 56) - *(*&buf[8] + 48)) >> 3), v159, v160, v161);
  v172 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v163, 0xAAAAAAAAAAAAAAABLL * ((*(*&buf[8] + 56) - *(*&buf[8] + 48)) >> 3), v164, v165, v166);
  v173 = *(*&buf[8] + 48);
  obja = *(*&buf[8] + 56);
  if (v173 != obja)
  {
    v174 = 0;
    while (1)
    {
      v175 = objc_msgSend_string(*v173, v167, v168, v169, v170, v171);
      v181 = objc_msgSend_ch_synthesisFastPathFavoredCharSet(MEMORY[0x1E696AB08], v176, v177, v178, v179, v180);
      v182 = sub_1837A4F0C(v175, v181);

      if (!objc_msgSend_count(v162, v183, v184, v185, v186, v187) || !v174 && !v182)
      {
        break;
      }

      v193 = objc_msgSend_lastObject(v162, v188, v189, v190, v191, v192);
      v199 = objc_msgSend_string(v193, v194, v195, v196, v197, v198);
      v205 = objc_msgSend_lastComposedCharacter(v199, v200, v201, v202, v203, v204);

      v211 = objc_msgSend_string(*v173, v206, v207, v208, v209, v210);
      v217 = objc_msgSend_firstComposedCharacter(v211, v212, v213, v214, v215, v216);

      v218 = *(v173 + 8);
      v224 = objc_msgSend_lastObject(v172, v219, v220, v221, v222, v223);
      v230 = objc_msgSend_rangeValue(v224, v225, v226, v227, v228, v229);
      v232 = v231;

      v243 = v230 + v232;
      if (((objc_msgSend_hasPrecedingSpace(*v173, v233, v234, v235, v236, v237) & 1) != 0 || sub_1837A95F4(v205, v217)) && (objc_msgSend_ch_basicOpeningParenthesesSet(MEMORY[0x1E696AB08], v238, v239, v240, v241, v242), v244 = objc_claimAutoreleasedReturnValue(), v245 = sub_1837A4F0C(v205, v244), v244, !v245))
      {
        v296 = objc_msgSend_ch_sentenceEndPunctuationCharacterSet(MEMORY[0x1E696AB08], v246, v247, v248, v249, v250);
        v297 = sub_1837A4F0C(v217, v296);

        if (!v297 || v218 != v243)
        {
          break;
        }
      }

      else
      {

        if (v218 != v243)
        {
          break;
        }
      }

      v252 = objc_msgSend_lastObject(v162, v188, v251, v190, v191, v192);
      v331[0] = v252;
      v331[1] = *v173;
      v256 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v253, v331, 2, v254, v255);
      v261 = objc_msgSend_mergeReflowableTokens_(CHTextTransformationManager, v257, v256, v258, v259, v260);

      v267 = objc_msgSend_lastObject(v172, v262, v263, v264, v265, v266);
      v345.location = objc_msgSend_rangeValue(v267, v268, v269, v270, v271, v272);
      v273 = NSUnionRange(v345, *(v173 + 8));

      objc_msgSend_removeLastObject(v162, v274, v275, v276, v277, v278);
      objc_msgSend_addObject_(v162, v279, v261, v280, v281, v282);
      objc_msgSend_removeLastObject(v172, v283, v284, v285, v286, v287);
      v291 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v288, v273.location, v273.length, v289, v290);
      objc_msgSend_addObject_(v172, v292, v291, v293, v294, v295);

LABEL_41:
      v173 += 24;
      v174 = v182;
      if (v173 == obja)
      {
        goto LABEL_42;
      }
    }

    objc_msgSend_addObject_(v162, v188, *v173, v190, v191, v192);
    v261 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v298, *(v173 + 8), *(v173 + 16), v299, v300);
    objc_msgSend_addObject_(v172, v301, v261, v302, v303, v304);
    goto LABEL_41;
  }

LABEL_42:
  v305 = objc_msgSend_firstObject(v162, v167, v168, v169, v170, v171);
  objc_msgSend_setDebugInfo_(v305, v306, v319, v307, v308, v309);

  (*(*(a1 + 80) + 16))();
  _Block_object_dispose(buf, 8);
  v310 = __p;
  if (__p)
  {
    v311 = v337;
    v312 = __p;
    if (v337 != __p)
    {
      do
      {
        v313 = *(v311 - 3);
        v311 -= 24;
      }

      while (v311 != v310);
      v312 = __p;
    }

    v337 = v310;
    operator delete(v312);
  }
}

uint64_t sub_1839408D4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v11 = objc_msgSend_synthesisSuggestion(v4, v6, v7, v8, v9, v10);
  if (v11 >= objc_msgSend_synthesisSuggestion(v5, v12, v13, v14, v15, v16))
  {
    v23 = objc_msgSend_synthesisSuggestion(v4, v17, v18, v19, v20, v21);
    if (v23 > objc_msgSend_synthesisSuggestion(v5, v24, v25, v26, v27, v28))
    {
      v22 = 1;
      goto LABEL_7;
    }

    v34 = objc_msgSend_chunkValueForSynthesis(v4, v29, v30, v31, v32, v33);
    v40 = objc_msgSend_length(v34, v35, v36, v37, v38, v39);
    v46 = objc_msgSend_chunkValueForSynthesis(v5, v41, v42, v43, v44, v45);
    v52 = objc_msgSend_length(v46, v47, v48, v49, v50, v51);

    if (v40 >= v52)
    {
      v58 = objc_msgSend_chunkValueForSynthesis(v4, v53, v54, v55, v56, v57);
      v64 = objc_msgSend_length(v58, v59, v60, v61, v62, v63);
      v70 = objc_msgSend_chunkValueForSynthesis(v5, v65, v66, v67, v68, v69);
      v22 = v64 > objc_msgSend_length(v70, v71, v72, v73, v74, v75);

      goto LABEL_7;
    }
  }

  v22 = -1;
LABEL_7:

  return v22;
}

__n128 sub_183940A48(__n128 *a1, __n128 *a2)
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

void sub_183940A6C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 24);
        v3 -= 24;
      }

      while (v3 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

void sub_183940AE4(uint64_t a1, void *a2)
{
  v174 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v158 = v2;
  v8 = objc_msgSend_rangeInOriginalString(v2, v3, v4, v5, v6, v7);
  v157 = v9;
  v10 = v8;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC60;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v173 = v2;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEFAULT, "Text Synthesis Loop : chunk=%{sensitive}@", buf, 0xCu);
  }

  v12 = v2;
  if (objc_msgSend_isNotDef(v2, v13, v14, v15, v16, v17) && objc_msgSend_synthesisSuggestion(v2, v18, v19, v20, v21, v22) != 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v23 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "NotDef chunk can be synthesized with a fast path only.", buf, 2u);
    }

    v12 = v2;
  }

  if (objc_msgSend_isNotDef(v12, v18, v19, v20, v21, v22) && objc_msgSend_synthesisSuggestion(v12, v24, v25, v26, v27, v28) != 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_FAULT, "NotDef chunk can be synthesized with a fast path only.", buf, 2u);
    }
  }

  v30 = (*(*(a1 + 48) + 16))();
  if (objc_msgSend_count(v30, v31, v32, v33, v34, v35))
  {
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    obj = v30;
    v156 = v30;
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v167, v171, 16, v42);
    if (!v48)
    {
      goto LABEL_62;
    }

    v161 = v10 + v157;
    v160 = v10 + v157 - 1;
    v162 = *v168;
    while (1)
    {
      v49 = 0;
      v163 = v48;
      do
      {
        if (*v168 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v167 + 1) + 8 * v49);
        v51 = objc_msgSend_string(v50, v43, v44, v45, v46, v47);
        v57 = objc_msgSend_length(v51, v52, v53, v54, v55, v56);
        v164 = v49;

        v62 = objc_msgSend_composedCharacterAtIndex_(*(a1 + 32), v58, v10, v59, v60, v61);
        v67 = v62;
        if (v10)
        {
          v166 = objc_msgSend_composedCharacterAtIndex_(*(a1 + 32), v63, v10 - 1, v64, v65, v66);
        }

        else
        {
          v166 = v62;
        }

        v73 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v68, v69, v70, v71, v72);
        v74 = v67;
        v75 = v73;
        if (objc_msgSend_length(v74, v76, v77, v78, v79, v80))
        {
          v85 = objc_msgSend_indexesOfCharacters_(v74, v81, v75, v82, v83, v84);
          v91 = objc_msgSend_count(v85, v86, v87, v88, v89, v90);
          v97 = v91 == objc_msgSend_length(v74, v92, v93, v94, v95, v96);

          if (v97)
          {
            objc_msgSend_setHasPrecedingSpace_(v50, v98, 1, v100, v101, v102);
            goto LABEL_36;
          }
        }

        else
        {
        }

        v108 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v98, v99, v100, v101, v102);
        v109 = v166;
        v110 = v108;
        if (objc_msgSend_length(v109, v111, v112, v113, v114, v115))
        {
          v120 = objc_msgSend_indexesOfCharacters_(v109, v116, v110, v117, v118, v119);
          v126 = objc_msgSend_count(v120, v121, v122, v123, v124, v125);
          LODWORD(v126) = v126 == objc_msgSend_length(v109, v127, v128, v129, v130, v131);

          if (v126)
          {
            objc_msgSend_setHasPrecedingSpace_(v50, v103, 1, v105, v106, v107);
            --v10;
          }
        }

        else
        {
        }

LABEL_36:
        hasPrecedingSpace = objc_msgSend_hasPrecedingSpace(v50, v103, v104, v105, v106, v107);
        if (v10 >= v161)
        {
          v133 = v160;
        }

        else
        {
          v133 = v10;
        }

        if (v161 - v133 >= v57 + hasPrecedingSpace)
        {
          v134 = v57 + hasPrecedingSpace;
        }

        else
        {
          v134 = v161 - v133;
        }

        v135 = *(*(a1 + 56) + 8);
        v137 = v135[7];
        v136 = v135[8];
        if (v137 >= v136)
        {
          v139 = v135[6];
          v140 = 0xAAAAAAAAAAAAAAABLL * ((v137 - v139) >> 3) + 1;
          if (v140 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_18368964C();
          }

          v141 = 0xAAAAAAAAAAAAAAABLL * ((v136 - v139) >> 3);
          if (2 * v141 > v140)
          {
            v140 = 2 * v141;
          }

          if (v141 >= 0x555555555555555)
          {
            v142 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v142 = v140;
          }

          if (v142)
          {
            if (v142 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_183688F00();
          }

          v143 = (8 * ((v137 - v139) >> 3));
          *v143 = v50;
          v143[1] = v133;
          v143[2] = v134;
          v144 = v135[6];
          v145 = v135[7];
          v146 = v143 + v144 - v145;
          if (v144 != v145)
          {
            v147 = v135[6];
            v148 = v143 + v144 - v145;
            do
            {
              v149 = *v147;
              *v147 = 0;
              *v148 = v149;
              *(v148 + 8) = *(v147 + 8);
              v147 += 24;
              v148 += 24;
            }

            while (v147 != v145);
            do
            {

              v144 += 3;
            }

            while (v144 != v145);
            v144 = v135[6];
          }

          v138 = v143 + 3;
          v135[6] = v146;
          v135[7] = v143 + 3;
          v135[8] = 0;
          if (v144)
          {
            operator delete(v144);
          }
        }

        else
        {
          *v137 = v50;
          v137[1] = v133;
          v137[2] = v134;
          v138 = v137 + 3;
        }

        v135[7] = v138;

        v10 = v134 + v133;
        v49 = v164 + 1;
      }

      while (v164 + 1 != v163);
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v167, v171, 16, v47);
      if (!v48)
      {
LABEL_62:

        v30 = v156;
        break;
      }
    }
  }

  v150 = *(a1 + 40);
  v151 = objc_msgSend_completedUnitCount(v150, v36, v37, v38, v39, v40);
  objc_msgSend_setCompletedUnitCount_(v150, v152, v151 + v157, v153, v154, v155);
}

void sub_183941418(uint64_t a1)
{
  v192 = *MEMORY[0x1E69E9840];
  v175 = sub_18392C888(*(a1 + 32), *(a1 + 40), 2, 1, 0, 0, 0, *(a1 + 72));
  if (!v175)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v1 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v1, OS_LOG_TYPE_ERROR, "Context results must be non-nil", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v2 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v2 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_FAULT, "Context results must be non-nil", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v10 = objc_msgSend_latestStrokeProvider(*(a1 + 32), v5, v6, v7, v8, v9);
  v172 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(v3, v11, v4, v10, v12, v13);

  v14 = objc_opt_class();
  v171 = objc_msgSend_createDrawingForStrokes_interpolationType_resolution_cancellationBlock_(v14, v15, v172, 1, 2, *(a1 + 72));
  v16 = *(a1 + 40);
  v184 = 0;
  v173 = objc_msgSend_rawTranscriptionForStrokesWithEncodedIdentifiers_contextResults_outLocale_(CHTextCheckUtils, v17, v16, v175, &v184, v18);
  v170 = v184;
  v24 = objc_msgSend_remoteTextSynthesizer(*(a1 + 32), v19, v20, v21, v22, v23);
  v177 = objc_msgSend_planForReplacingText_withText_(v24, v25, v173, *(a1 + 48), v26, v27);

  if (v177)
  {
    v28 = objc_alloc_init(CHSynthesisRequestOptions);
    v34 = objc_msgSend_synthesisSuggestion(v177, v29, v30, v31, v32, v33);
    objc_msgSend_setChunkSynthesisSuggestion_(v28, v35, v34, v36, v37, v38);
    v44 = objc_msgSend_textSynthesizer(*(a1 + 32), v39, v40, v41, v42, v43);
    v50 = objc_msgSend_originalString(v177, v45, v46, v47, v48, v49);
    v56 = objc_msgSend_replacementString(v177, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_dictionary(v28, v57, v58, v59, v60, v61);
    v174 = objc_msgSend_replaceDrawing_originalTranscription_replacementTranscription_options_shouldCancel_error_(v44, v63, v171, v50, v56, v62, *(a1 + 72), 0);

    if (v174)
    {
      objc_msgSend_addObject_(*(a1 + 56), v64, v174, v65, v66, v67);
      v68 = *(a1 + 32);
      v74 = objc_msgSend_drawing(v174, v69, v70, v71, v72, v73);
      v75 = sub_18393B2B0(v68, v74, v170, 0, *(a1 + 72));

      v176 = objc_msgSend_reflowableTokensFromSynthesisResult_principalPoints_shouldCancel_(CHReflowableSynthesisResultToken, v76, v174, v75, *(a1 + 72), v77);
      goto LABEL_26;
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v78 = qword_1EA84DC98;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v78, OS_LOG_TYPE_ERROR, "Unable to create replacement plan for text", buf, 2u);
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v79 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
  {
    v80 = *(a1 + 48);
    *buf = 138740227;
    v189 = v173;
    v190 = 2117;
    v191 = v80;
    _os_log_impl(&dword_18366B000, v79, OS_LOG_TYPE_ERROR, "No synthesis result to replace original string:%{sensitive}@ with replacement string:%{sensitive}@", buf, 0x16u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v75 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v75 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
  {
LABEL_24:
    v81 = *(a1 + 48);
    *buf = 138740227;
    v189 = v173;
    v190 = 2117;
    v191 = v81;
    _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_FAULT, "No synthesis result to replace original string:%{sensitive}@ with replacement string:%{sensitive}@", buf, 0x16u);
  }

LABEL_25:
  v174 = 0;
  v176 = 0;
LABEL_26:

  v87 = objc_msgSend_totalUnitCount(*(a1 + 64), v82, v83, v84, v85, v86);
  objc_msgSend_setCompletedUnitCount_(*(a1 + 64), v88, v87, v89, v90, v91);
  if (objc_msgSend_count(v176, v92, v93, v94, v95, v96))
  {
    v179 = objc_msgSend_array(MEMORY[0x1E695DF70], v97, v98, v99, v100, v101);
    v107 = objc_msgSend_array(MEMORY[0x1E695DF70], v102, v103, v104, v105, v106);
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v108 = v176;
    v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v180, v187, 16, v110);
    if (v116)
    {
      v117 = 0;
      v118 = *v181;
      do
      {
        for (i = 0; i != v116; ++i)
        {
          if (*v181 != v118)
          {
            objc_enumerationMutation(v108);
          }

          v120 = *(*(&v180 + 1) + 8 * i);
          v121 = objc_msgSend_string(v120, v111, v112, v113, v114, v115);
          v127 = objc_msgSend_length(v121, v122, v123, v124, v125, v126);

          LODWORD(v121) = objc_msgSend_hasPrecedingSpace(v120, v128, v129, v130, v131, v132);
          objc_msgSend_addObject_(v107, v133, v120, v134, v135, v136);
          v137 = v127 + v121;
          v141 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v138, v117, v137, v139, v140);
          objc_msgSend_addObject_(v179, v142, v141, v143, v144, v145);

          v117 += v137;
        }

        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v111, &v180, v187, 16, v115);
      }

      while (v116);
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v152 = a1;
    if (has_internal_diagnostics)
    {
      v185[0] = @"originalTranscription";
      v185[1] = @"replacementTranscription";
      v153 = *(a1 + 48);
      v186[0] = v173;
      v186[1] = v153;
      v185[2] = @"content";
      v154 = objc_msgSend_content(v174, v147, v148, v149, v150, v151);
      v186[2] = v154;
      v157 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v155, v186, v185, 3, v156);

      v163 = objc_msgSend_firstObject(v107, v158, v159, v160, v161, v162);
      objc_msgSend_setDebugInfo_(v163, v164, v157, v165, v166, v167);

      v152 = a1;
    }

    (*(*(v152 + 80) + 16))();
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v168 = qword_1EA84DC98;
    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
    {
      v169 = *(a1 + 40);
      *buf = 138412290;
      v189 = v169;
      _os_log_impl(&dword_18366B000, v168, OS_LOG_TYPE_ERROR, "Failed to create reflowable tokens for synthesized string to replace strokes: %@", buf, 0xCu);
    }

    (*(*(a1 + 80) + 16))();
  }
}

void sub_18394241C(void *a1, void *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v146 = a2 - 6;
    v147 = a2 - 3;
    v145 = a2 - 9;
    v7 = a1;
    v151 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - v7);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                sub_183942E90(a1, a1 + 3, v147);
                return;
              case 4:
                sub_183942E90(a1, a1 + 3, a1 + 6);
                v61 = (a2 - 2);
                v62 = (a1 + 7);
                if (*(a2 - 2) < a1[7])
                {
                  v63 = a1[6];
                  a1[6] = 0;
                  v64 = *(a2 - 3);
                  *(a2 - 3) = 0;
                  v65 = a1[6];
                  a1[6] = v64;

                  v66 = *(a2 - 3);
                  *(a2 - 3) = v63;

                  v156 = *v62;
                  *v62 = *v61;
                  *v61 = v156;
                  v67 = (a1 + 4);
                  if (a1[7] < a1[4])
                  {
                    v68 = a1[3];
                    a1[3] = a1[6];
                    a1[6] = v68;
                    v157 = *v67;
                    *v67 = *v62;
                    *v62 = v157;
                    v69 = (a1 + 1);
                    if (a1[4] < a1[1])
                    {
                      v70 = *a1;
                      *a1 = a1[3];
                      a1[3] = v70;
                      v158 = *v69;
                      *v69 = *v67;
                      *v67 = v158;
                    }
                  }
                }

                return;
              case 5:

                sub_18394303C(a1, a1 + 3, a1 + 6, a1 + 9, v147);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              v55 = (a2 - 2);
              v56 = (a1 + 1);
              if (*(a2 - 2) < a1[1])
              {
                v57 = *a1;
                *a1 = 0;
                v58 = *(a2 - 3);
                *(a2 - 3) = 0;
                v59 = *a1;
                *a1 = v58;

                v60 = *(a2 - 3);
                *(a2 - 3) = v57;

                v155 = *v56;
                *v56 = *v55;
                *v55 = v155;
              }

              return;
            }
          }

          if (v8 <= 575)
          {
            v71 = a1 + 3;
            v73 = a1 == a2 || v71 == a2;
            if (a4)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = a1;
                do
                {
                  v78 = v71;
                  v79 = v75[4];
                  if (v79 < v75[1])
                  {
                    v80 = *v71;
                    *v71 = 0;
                    v81 = v75[5];
                    v82 = v74;
                    do
                    {
                      v83 = a1 + v82;
                      v84 = *(a1 + v82);
                      *v83 = 0;
                      v85 = *(a1 + v82 + 24);
                      *(v83 + 3) = v84;

                      *(v83 + 2) = *(v83 + 8);
                      if (!v82)
                      {
                        v76 = a1;
                        goto LABEL_78;
                      }

                      v82 -= 24;
                    }

                    while (v79 < *(v83 - 2));
                    v76 = a1 + v82 + 24;
LABEL_78:
                    v77 = *v76;
                    *v76 = v80;

                    *(v83 + 1) = v79;
                    *(v76 + 16) = v81;
                  }

                  v71 = v78 + 3;
                  v74 += 24;
                  v75 = v78;
                }

                while (v78 + 3 != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v135 = v71;
                v136 = a1[4];
                if (v136 < a1[1])
                {
                  v137 = *v71;
                  *v71 = 0;
                  v138 = a1[5];
                  v139 = v71;
                  v140 = v71;
                  do
                  {
                    v141 = *(v140 - 3);
                    v140 -= 3;
                    *v140 = 0;
                    v142 = *v139;
                    *v139 = v141;

                    *(v139 + 1) = *(v139 - 1);
                    v143 = *(v139 - 5);
                    v139 = v140;
                  }

                  while (v136 < v143);
                  v144 = *v140;
                  *v140 = v137;

                  v140[1] = v136;
                  v140[2] = v138;
                }

                v71 = v135 + 3;
                a1 = v135;
              }

              while (v135 + 3 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v86 = v10 >> 1;
              v87 = v10 >> 1;
              do
              {
                v89 = v87;
                if (v86 >= v87)
                {
                  v90 = (2 * v87) | 1;
                  v91 = &a1[3 * v90];
                  if (2 * v89 + 2 < v9)
                  {
                    v92 = v91[1];
                    v93 = v91[4];
                    v94 = v92 >= v93;
                    v95 = v92 >= v93 ? 0 : 24;
                    v91 = (v91 + v95);
                    if (!v94)
                    {
                      v90 = 2 * v89 + 2;
                    }
                  }

                  v96 = &a1[3 * v89];
                  v97 = v96[1];
                  if (v91[1] >= v97)
                  {
                    v98 = *v96;
                    *v96 = 0;
                    v148 = v98;
                    v150 = v96[2];
                    do
                    {
                      v99 = v96;
                      v96 = v91;
                      v100 = *v91;
                      *v96 = 0;
                      v101 = *v99;
                      *v99 = v100;

                      *(v99 + 1) = *(v96 + 1);
                      if (v86 < v90)
                      {
                        break;
                      }

                      v102 = (2 * v90) | 1;
                      v91 = &a1[3 * v102];
                      if (2 * v90 + 2 < v9)
                      {
                        v103 = v91[1];
                        v104 = v91[4];
                        v105 = v103 >= v104;
                        v106 = v103 >= v104 ? 0 : 24;
                        v91 = (v91 + v106);
                        if (!v105)
                        {
                          v102 = 2 * v90 + 2;
                        }
                      }

                      v90 = v102;
                    }

                    while (v91[1] >= v97);
                    v88 = *v96;
                    *v96 = v148;

                    v96[1] = v97;
                    v96[2] = v150;
                  }
                }

                v87 = v89 - 1;
              }

              while (v89);
              v107 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
              v108 = v151;
              do
              {
                v111 = 0;
                v112 = *a1;
                *a1 = 0;
                v159 = *(a1 + 1);
                v113 = a1;
                do
                {
                  v120 = &v113[3 * v111];
                  v117 = v120 + 3;
                  if (2 * v111 + 2 < v107)
                  {
                    v114 = v120[4];
                    v115 = v120[7];
                    v116 = v120 + 6;
                    if (v114 >= v115)
                    {
                      v111 = (2 * v111) | 1;
                    }

                    else
                    {
                      v117 = v116;
                      v111 = 2 * v111 + 2;
                    }
                  }

                  else
                  {
                    v111 = (2 * v111) | 1;
                  }

                  v118 = *v117;
                  *v117 = 0;
                  v119 = *v113;
                  *v113 = v118;

                  *(v113 + 1) = *(v117 + 1);
                  v113 = v117;
                }

                while (v111 <= ((v107 - 2) >> 1));
                v121 = v108 - 3;
                if (v117 == v108 - 3)
                {
                  v109 = *v117;
                  *v117 = v112;

                  *(v117 + 1) = v159;
                }

                else
                {
                  v122 = *(v108 - 3);
                  *(v108 - 3) = 0;
                  v123 = *v117;
                  *v117 = v122;

                  *(v117 + 1) = *(v108 - 1);
                  v124 = *(v108 - 3);
                  *(v108 - 3) = v112;

                  *(v108 - 1) = v159;
                  v125 = v117 - a1 + 24;
                  if (v125 >= 25)
                  {
                    v126 = (0xAAAAAAAAAAAAAAABLL * (v125 >> 3) - 2) >> 1;
                    v127 = &a1[3 * v126];
                    v128 = v117[1];
                    if (v127[1] < v128)
                    {
                      v129 = *v117;
                      *v117 = 0;
                      v130 = v117[2];
                      do
                      {
                        v131 = v117;
                        v117 = v127;
                        v132 = *v127;
                        *v117 = 0;
                        v133 = *v131;
                        *v131 = v132;

                        *(v131 + 1) = *(v117 + 1);
                        if (!v126)
                        {
                          break;
                        }

                        v126 = (v126 - 1) >> 1;
                        v127 = &a1[3 * v126];
                      }

                      while (v127[1] < v128);
                      v134 = *v117;
                      *v117 = v129;

                      v117[1] = v128;
                      v117[2] = v130;
                    }
                  }
                }

                v108 = v121;
              }

              while (v107-- > 2);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = &a1[3 * (v9 >> 1)];
          if (v8 < 0xC01)
          {
            sub_183942E90(v12, a1, v147);
            --a3;
            if (a4)
            {
LABEL_19:
              v17 = a1[1];
              break;
            }
          }

          else
          {
            sub_183942E90(a1, v12, v147);
            sub_183942E90(a1 + 3, &a1[3 * v11 - 3], v146);
            sub_183942E90(a1 + 6, &a1[3 * v11 + 3], v145);
            sub_183942E90(&a1[3 * v11 - 3], v12, &a1[3 * v11 + 3]);
            v13 = *a1;
            *a1 = 0;
            v14 = *v12;
            *v12 = 0;
            v15 = *a1;
            *a1 = v14;

            v16 = *v12;
            *v12 = v13;
            a2 = v151;

            v152 = *(a1 + 1);
            *(a1 + 1) = *(v12 + 1);
            *(v12 + 1) = v152;
            --a3;
            if (a4)
            {
              goto LABEL_19;
            }
          }

          v17 = a1[1];
          if (*(a1 - 2) < v17)
          {
            break;
          }

          v18 = *a1;
          *a1 = 0;
          if (v17 >= *(a2 - 2))
          {
            v41 = a1 + 3;
            do
            {
              v7 = v41;
              if (v41 >= a2)
              {
                break;
              }

              v42 = v41[1];
              v41 += 3;
            }

            while (v17 >= v42);
          }

          else
          {
            v19 = a1;
            do
            {
              v7 = v19 + 3;
              v20 = v19[4];
              v19 += 3;
            }

            while (v17 >= v20);
          }

          v43 = a2;
          if (v7 < a2)
          {
            do
            {
              v43 = a2 - 3;
              v44 = *(a2 - 2);
              a2 -= 3;
            }

            while (v17 < v44);
          }

          v45 = a1[2];
          while (v7 < v43)
          {
            v46 = *v7;
            *v7 = 0;
            v47 = *v43;
            *v43 = 0;
            v48 = *v7;
            *v7 = v47;

            v49 = *v43;
            *v43 = v46;

            v154 = *(v7 + 1);
            *(v7 + 1) = *(v43 + 1);
            *(v43 + 1) = v154;
            do
            {
              v50 = v7[4];
              v7 += 3;
            }

            while (v17 >= v50);
            do
            {
              v51 = *(v43 - 2);
              v43 -= 3;
            }

            while (v17 < v51);
          }

          if (v7 - 3 != a1)
          {
            v52 = *(v7 - 3);
            *(v7 - 3) = 0;
            v53 = *a1;
            *a1 = v52;

            *(a1 + 1) = *(v7 - 1);
          }

          v54 = *(v7 - 3);
          *(v7 - 3) = v18;

          a4 = 0;
          *(v7 - 2) = v17;
          *(v7 - 1) = v45;
          a2 = v151;
        }

        v21 = 0;
        v22 = *a1;
        *a1 = 0;
        v23 = a1[2];
        do
        {
          v24 = a1[v21 + 4];
          v21 += 3;
        }

        while (v24 < v17);
        v25 = &a1[v21];
        v26 = a2;
        if (v21 == 3)
        {
          while (v25 < a2)
          {
            v27 = a2 - 3;
            v29 = *(a2 - 2);
            a2 -= 3;
            if (v29 < v17)
            {
              goto LABEL_27;
            }
          }

          v27 = a2;
          v7 = &a1[v21];
        }

        else
        {
          do
          {
            v27 = v26 - 3;
            v28 = *(v26 - 2);
            v26 -= 3;
          }

          while (v28 >= v17);
LABEL_27:
          v7 = v25;
          if (v25 < v27)
          {
            v30 = v27;
            do
            {
              v31 = *v7;
              *v7 = 0;
              v32 = *v30;
              *v30 = 0;
              v33 = *v7;
              *v7 = v32;

              v34 = *v30;
              *v30 = v31;

              v153 = *(v7 + 1);
              *(v7 + 1) = *(v30 + 8);
              *(v30 + 8) = v153;
              do
              {
                v35 = v7[4];
                v7 += 3;
              }

              while (v35 < v17);
              do
              {
                v36 = *(v30 - 16);
                v30 -= 24;
              }

              while (v36 >= v17);
            }

            while (v7 < v30);
          }
        }

        if (v7 - 3 != a1)
        {
          v37 = *(v7 - 3);
          *(v7 - 3) = 0;
          v38 = *a1;
          *a1 = v37;

          *(a1 + 1) = *(v7 - 1);
        }

        v39 = *(v7 - 3);
        *(v7 - 3) = v22;

        *(v7 - 2) = v17;
        *(v7 - 1) = v23;
        a2 = v151;
        if (v25 >= v27)
        {
          break;
        }

LABEL_38:
        sub_18394241C(a1, v7 - 3, a3, a4 & 1);
        a4 = 0;
      }

      v40 = sub_1839432AC(a1, v7 - 3);
      if (sub_1839432AC(v7, v151))
      {
        break;
      }

      if (!v40)
      {
        goto LABEL_38;
      }
    }

    a2 = v7 - 3;
    if (!v40)
    {
      continue;
    }

    break;
  }
}

__n128 sub_183942E24(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;

  v7 = *a2;
  *a2 = v4;

  result = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_183942E90(void *a1, void *a2, void *a3)
{
  v6 = (a2 + 1);
  v5 = a2[1];
  v7 = (a1 + 1);
  v9 = (a3 + 1);
  v8 = a3[1];
  if (v5 >= a1[1])
  {
    if (v8 < v5)
    {
      v15 = *a2;
      *a2 = 0;
      v16 = *a3;
      *a3 = 0;
      v17 = *a2;
      *a2 = v16;

      v19 = *a3;
      *a3 = v15;

      v20 = *v6;
      *v6 = *v9;
      *v9 = v20;
      if (a2[1] < *v7)
      {
        v21 = *a1;
        *a1 = 0;
        v22 = *a2;
        *a2 = 0;
        v23 = *a1;
        *a1 = v22;

        v24 = *a2;
        *a2 = v21;

        v25 = *v7;
        *v7 = *v6;
        *v6 = v25;
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v8 >= v5)
    {
      v26 = *a2;
      *a2 = 0;
      v27 = *a1;
      *a1 = v26;

      v28 = *a2;
      *a2 = v10;

      v29 = *v7;
      *v7 = *v6;
      *v6 = v29;
      if (*v9 >= a2[1])
      {
        return;
      }

      v30 = *a2;
      *a2 = 0;
      v31 = *a3;
      *a3 = 0;
      v32 = *a2;
      *a2 = v31;

      v33 = *a3;
      *a3 = v30;

      v14 = *v6;
      *v6 = *v9;
    }

    else
    {
      v11 = *a3;
      *a3 = 0;
      v12 = *a1;
      *a1 = v11;

      v13 = *a3;
      *a3 = v10;

      v14 = *v7;
      *v7 = *v9;
    }

    *v9 = v14;
  }
}

__n128 sub_18394303C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  sub_183942E90(a1, a2, a3);
  v11 = (a4 + 1);
  v12 = (a3 + 1);
  if (a4[1] < a3[1])
  {
    v13 = *a3;
    *a3 = 0;
    v14 = *a4;
    *a4 = 0;
    v15 = *a3;
    *a3 = v14;

    v16 = *a4;
    *a4 = v13;

    result = *v12;
    *v12 = *v11;
    *v11 = result;
    v17 = (a2 + 1);
    if (a3[1] < a2[1])
    {
      v18 = *a2;
      *a2 = 0;
      v19 = *a3;
      *a3 = 0;
      v20 = *a2;
      *a2 = v19;

      v21 = *a3;
      *a3 = v18;

      result = *v17;
      *v17 = *v12;
      *v12 = result;
      v22 = (a1 + 1);
      if (a2[1] < a1[1])
      {
        v23 = *a1;
        *a1 = 0;
        v24 = *a2;
        *a2 = 0;
        v25 = *a1;
        *a1 = v24;

        v26 = *a2;
        *a2 = v23;

        result = *v22;
        *v22 = *v17;
        *v17 = result;
      }
    }
  }

  v27 = (a5 + 1);
  if (a5[1] < v11->n128_u64[0])
  {
    v28 = *a4;
    *a4 = 0;
    v29 = *a5;
    *a5 = 0;
    v30 = *a4;
    *a4 = v29;

    v31 = *a5;
    *a5 = v28;

    result = *v11;
    *v11 = *v27;
    *v27 = result;
    if (a4[1] < v12->n128_u64[0])
    {
      v32 = *a3;
      *a3 = 0;
      v33 = *a4;
      *a4 = 0;
      v34 = *a3;
      *a3 = v33;

      v35 = *a4;
      *a4 = v32;

      result = *v12;
      *v12 = *v11;
      *v11 = result;
      v36 = (a2 + 1);
      if (a3[1] < a2[1])
      {
        v37 = *a2;
        *a2 = 0;
        v38 = *a3;
        *a3 = 0;
        v39 = *a2;
        *a2 = v38;

        v40 = *a3;
        *a3 = v37;

        result = *v36;
        *v36 = *v12;
        *v12 = result;
        v41 = (a1 + 1);
        if (a2[1] < a1[1])
        {
          v42 = *a1;
          *a1 = 0;
          v43 = *a2;
          *a2 = 0;
          v44 = *a1;
          *a1 = v43;

          v45 = *a2;
          *a2 = v42;

          result = *v41;
          *v41 = *v36;
          *v36 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_1839432AC(void *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_183942E90(a1, a1 + 3, a2 - 3);
        break;
      case 4:
        sub_183942E90(a1, a1 + 3, a1 + 6);
        v25 = (a2 - 2);
        v26 = (a1 + 7);
        if (*(a2 - 2) < a1[7])
        {
          v27 = a1[6];
          a1[6] = 0;
          v28 = *(a2 - 3);
          *(a2 - 3) = 0;
          v29 = a1[6];
          a1[6] = v28;

          v30 = *(a2 - 3);
          *(a2 - 3) = v27;

          v31 = *v26;
          *v26 = *v25;
          *v25 = v31;
          v32 = (a1 + 4);
          if (a1[7] < a1[4])
          {
            v33 = a1[3];
            a1[3] = a1[6];
            a1[6] = v33;
            v34 = *v32;
            *v32 = *v26;
            *v26 = v34;
            if (a1[4] < a1[1])
            {
              sub_183942E24(a1, (a1 + 3));
            }
          }
        }

        return 1;
      case 5:
        sub_18394303C(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2 - 2);
    v6 = (a1 + 1);
    if (*(a2 - 2) < a1[1])
    {
      v7 = *a1;
      *a1 = 0;
      v8 = *(a2 - 3);
      *(a2 - 3) = 0;
      v9 = *a1;
      *a1 = v8;

      v10 = *(a2 - 3);
      *(a2 - 3) = v7;

      v11 = *v6;
      *v6 = *v5;
      *v5 = v11;
    }

    return 1;
  }

LABEL_11:
  v12 = a1 + 6;
  sub_183942E90(a1, a1 + 3, a1 + 6);
  v13 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v18 = v13[1];
    if (v18 < v12[1])
    {
      v19 = *v13;
      *v13 = 0;
      v20 = v14;
      v21 = v13[2];
      do
      {
        v22 = a1 + v20;
        v23 = *(a1 + v20 + 48);
        *(v22 + 6) = 0;
        v24 = *(a1 + v20 + 72);
        *(v22 + 9) = v23;

        *(v22 + 5) = *(v22 + 56);
        if (v20 == -48)
        {
          v16 = a1;
          goto LABEL_14;
        }

        v20 -= 24;
      }

      while (v18 < *(v22 + 4));
      v16 = a1 + v20 + 72;
LABEL_14:
      v17 = *v16;
      *v16 = v19;

      *(v22 + 7) = v18;
      *(v16 + 16) = v21;
      if (++v15 == 8)
      {
        return v13 + 3 == a2;
      }
    }

    v12 = v13;
    v14 += 24;
    v13 += 3;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

id sub_183946134(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v67 = a4;
  v16 = a5;
  if (a1)
  {
    isCharacterLevel = objc_msgSend_isCharacterLevel(v9, v11, v12, v13, v14, v15);
    v18 = [CHTextInputGesture alloc];
    v24 = objc_msgSend_resultType(v9, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_locales(a1, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_firstObject(v30, v31, v32, v33, v34, v35);
    Stroke_preferCharacterLevel = objc_msgSend_initWithGestureType_targetContentInfo_locale_normalizedDrawing_originalDrawing_lastStroke_preferCharacterLevel_(v18, v37, v24, v16, v36, v10, v10, v67, isCharacterLevel);

    v68 = 0;
    objc_msgSend_getAffectedRange_expandedToFullTokens_(Stroke_preferCharacterLevel, v39, v69, &v68, v40, v41);
    v42 = v68;
    v43 = [CHTextCorrectionResult alloc];
    v49 = objc_msgSend_textInputTarget(v16, v44, v45, v46, v47, v48);
    v50 = v69[0];
    v51 = v69[1];
    v57 = objc_msgSend_textResult(Stroke_preferCharacterLevel, v52, v53, v54, v55, v56);
    v63 = objc_msgSend_gestureType(Stroke_preferCharacterLevel, v58, v59, v60, v61, v62);
    isCharacterLevel_error = objc_msgSend_initWithInputTarget_affectedRange_textResult_resultType_isCharacterLevel_error_(v43, v64, v49, v50, v51, v57, v63, (v42 ^ 1) & 1, 0);
  }

  else
  {
    isCharacterLevel_error = 0;
  }

  return isCharacterLevel_error;
}

uint64_t sub_183946344(uint64_t a1, void *a2)
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

uint64_t sub_183946400(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_string(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"Oval", v8, v9, v10);

  return isEqualToString;
}

uint64_t sub_183946454(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_string(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"Rectangle", v8, v9, v10);

  return isEqualToString;
}

uint64_t sub_1839464A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_string(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"ScratchOut", v8, v9, v10);

  return isEqualToString;
}

BOOL sub_1839464FC(void *a1, NSUInteger a2, NSUInteger a3, BOOL *a4, double *a5, double *a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14)
{
  v126 = *MEMORY[0x1E69E9840];
  v23 = a1;
  MaxX = *MEMORY[0x1E695F050];
  v25 = *(MEMORY[0x1E695F050] + 8);
  v26 = *(MEMORY[0x1E695F050] + 16);
  v27 = *(MEMORY[0x1E695F050] + 24);
  v128.location = objc_msgSend_referenceSubstringRange(v23, v28, v29, v30, v31, v32);
  v128.length = v33;
  v127.location = a2;
  v127.length = a3;
  length = NSIntersectionRange(v127, v128).length;
  v119 = a8;
  v120 = a9;
  v118 = a10;
  objc_msgSend_referenceSubstringRange(v23, length, v35, v36, v37, v38);
  v39 = 0;
  v40 = 0.0;
  v41 = 6.0;
  if (!v42 || length != a3)
  {
LABEL_8:
    MinY = v25;
    a14 = v27;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v43 = v23;
  objc_opt_self();
  v48 = objc_msgSend_relativeLocationFromAbsoluteLocation_(v43, v44, a2, v45, v46, v47);
  v54 = v48;
  v55 = 0;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  if (v48 && v48 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v57 = objc_msgSend_referenceSubstring(v43, v49, v50, v51, v52, v53);
    v56 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v57, v58, v54 - 1, v59, v60, v61);
    v55 = v62;
  }

  if (v56 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = 0;
    goto LABEL_8;
  }

  v77 = objc_msgSend_referenceSubstring(v43, v63, v64, v65, v66, v67);
  v81 = objc_msgSend_substringWithRange_(v77, v78, v56, v55, v79, v80);

  objc_msgSend_characterRectForRelativeCharacterIndex_(v43, v82, v56, v83, v84, v85);
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v99 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v94, v95, v96, v97, v98);
  objc_msgSend_rangeOfCharacterFromSet_(v81, v100, v99, v101, v102, v103);
  v39 = v104 == v55;

  v131.origin.x = a11;
  v131.origin.y = a12;
  v131.size.width = a13;
  v131.size.height = a14;
  MinY = CGRectGetMinY(v131);
  v132.origin.x = a7;
  v132.origin.y = v119;
  v132.size.width = v120;
  v132.size.height = v118;
  MidX = CGRectGetMidX(v132);
  v133.origin.x = v87;
  v133.origin.y = v89;
  v133.size.width = v91;
  v133.size.height = v93;
  v106 = CGRectGetMidX(v133);
  v107 = v93;
  v41 = a14 * 0.4;
  if (MidX <= v106)
  {
    v111 = v87;
    v112 = v89;
    v113 = v91;
    MinX = CGRectGetMinX(*(&v107 - 3));
    v135.origin.x = a7;
    v135.origin.y = v119;
    v135.size.width = v120;
    v135.size.height = v118;
    MaxX = MinX - v41;
    v40 = MinX - CGRectGetMaxX(v135);
  }

  else
  {
    v108 = v87;
    v109 = v89;
    v110 = v91;
    MaxX = CGRectGetMaxX(*(&v107 - 3));
    v134.origin.x = a7;
    v134.origin.y = v119;
    v134.size.width = v120;
    v134.size.height = v118;
    v40 = CGRectGetMinX(v134) - MaxX;
  }

  v27 = a14 + a14;
  v25 = MinY + a14 * -0.5;

  v26 = a14 * 0.4;
  if (a4)
  {
LABEL_9:
    *a4 = v39;
  }

LABEL_10:
  if (a5)
  {
    *a5 = v40;
  }

  v69 = MinY;
  if (a6)
  {
    *a6 = v41;
  }

  v129.origin.x = a7;
  v129.origin.y = v119;
  v129.size.width = v120;
  v129.size.height = v118;
  v70 = MaxX;
  v71 = v26;
  v72 = a14;
  v73 = CGRectIntersectsRect(v129, *(&v69 - 1));
  v130.origin.x = MaxX;
  v130.origin.y = v25;
  v130.size.width = v26;
  v130.size.height = v27;
  v136.origin.x = a7;
  v136.origin.y = v119;
  v136.size.width = v120;
  v136.size.height = v118;
  v74 = CGRectContainsRect(v130, v136);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v75 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v123 = v73;
    v124 = 1024;
    v125 = v74;
    _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_DEBUG, "doesIntersectNoSpaceRegion: %i isContainedInPaddedNoSpaceRegion: %i", buf, 0xEu);
  }

  return v73 || v74;
}

void sub_183946A1C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!CGRectIsNull(*&a2))
  {
    v10.origin.x = a2;
    v10.origin.y = a3;
    v10.size.width = a4;
    v10.size.height = a5;
    if (CGRectGetMaxX(v10) >= *(*(*(a1 + 32) + 8) + 24))
    {
      v11.origin.x = a2;
      v11.origin.y = a3;
      v11.size.width = a4;
      v11.size.height = a5;
      *(*(*(a1 + 32) + 8) + 24) = CGRectGetMaxX(v11);
    }

    v12.origin.x = a2;
    v12.origin.y = a3;
    v12.size.width = a4;
    v12.size.height = a5;
    if (CGRectGetMinX(v12) <= *(*(*(a1 + 40) + 8) + 24))
    {
      v13.origin.x = a2;
      v13.origin.y = a3;
      v13.size.width = a4;
      v13.size.height = a5;
      *(*(*(a1 + 40) + 8) + 24) = CGRectGetMinX(v13);
    }
  }
}

void *sub_183948EA8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x4812000000;
    v45 = sub_183949188;
    v46 = sub_1839491AC;
    v47 = &unk_183A5AC72;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x4812000000;
    v36 = sub_18394926C;
    v37 = sub_183949290;
    v38 = &unk_183A5AC72;
    v40 = 0;
    v41 = 0;
    __p = 0;
    v7 = a1[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_183949320;
    block[3] = &unk_1E6DE0478;
    block[4] = a1;
    v29 = v5;
    v31 = &v33;
    v32 = &v42;
    v8 = v6;
    v30 = v8;
    dispatch_sync(v7, block);
    if (v8 && (v8[2](v8) & 1) != 0)
    {
      v9 = 0;
    }

    else
    {
      v10 = [CHDocumentLayoutAnalysisTileResult alloc];
      v9 = objc_msgSend_initWithStrokeClassificationMatrix_sparseAdjacencyMatrix_(v10, v11, (v34 + 6), (v43 + 6), v12, v13);
    }

    a1 = v9;

    _Block_object_dispose(&v33, 8);
    v14 = __p;
    if (__p)
    {
      v15 = v40;
      v16 = __p;
      if (v40 != __p)
      {
        v17 = v40;
        do
        {
          v19 = *(v17 - 3);
          v17 -= 24;
          v18 = v19;
          if (v19)
          {
            *(v15 - 2) = v18;
            operator delete(v18);
          }

          v15 = v17;
        }

        while (v17 != v14);
        v16 = __p;
      }

      v40 = v14;
      operator delete(v16);
    }

    _Block_object_dispose(&v42, 8);
    v20 = v48;
    if (v48)
    {
      v21 = v49;
      v22 = v48;
      if (v49 != v48)
      {
        do
        {
          v23 = *(v21 - 3);
          if (v23)
          {
            do
            {
              v24 = *v23;
              operator delete(v23);
              v23 = v24;
            }

            while (v24);
          }

          v26 = *(v21 - 5);
          v21 -= 5;
          v25 = v26;
          *v21 = 0;
          if (v26)
          {
            operator delete(v25);
          }
        }

        while (v21 != v20);
        v22 = v48;
      }

      v49 = v20;
      operator delete(v22);
    }
  }

  return a1;
}

void sub_18394913C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  sub_18369F0F0((v14 + 48));
  _Block_object_dispose((v15 - 136), 8);
  sub_1837280DC((v13 + 48));

  _Unwind_Resume(a1);
}

__n128 sub_183949188(__n128 *a1, __n128 *a2)
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

void sub_1839491AC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 == v1)
    {
      *(a1 + 56) = v1;
    }

    else
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          do
          {
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }

        v8 = *(v3 - 5);
        v3 -= 5;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          operator delete(v7);
        }
      }

      while (v3 != v1);
      v4 = *(a1 + 48);
      *(a1 + 56) = v1;
    }

    operator delete(v4);
  }
}

__n128 sub_18394926C(__n128 *a1, __n128 *a2)
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

void sub_183949290(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      v5 = v3;
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

void sub_18394938C()
{
  v0 = objc_alloc_init(CHCharacterSetRules);
  v1 = qword_1EA84D200;
  qword_1EA84D200 = v0;
}

uint64_t sub_1839494DC(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1)
  {
    v8 = 0;
    goto LABEL_36;
  }

  v2 = *(result + 48);
  v3 = *(v1 + 288);
  if (!v3)
  {
LABEL_13:
    if (v2 <= 8219)
    {
      v8 = 5;
      switch(v2)
      {
        case 0x21u:
        case 0x22u:
        case 0x2Bu:
        case 0x30u:
        case 0x31u:
        case 0x32u:
        case 0x33u:
        case 0x34u:
        case 0x35u:
        case 0x37u:
        case 0x38u:
        case 0x39u:
        case 0x3Au:
        case 0x3Bu:
        case 0x3Du:
        case 0x3Fu:
        case 0x40u:
        case 0x44u:
        case 0x4Au:
        case 0x4Cu:
        case 0x50u:
        case 0x51u:
        case 0x54u:
        case 0x55u:
        case 0x56u:
        case 0x58u:
        case 0x61u:
        case 0x62u:
        case 0x64u:
        case 0x65u:
        case 0x66u:
        case 0x67u:
        case 0x68u:
        case 0x69u:
        case 0x6Au:
        case 0x6Eu:
        case 0x70u:
        case 0x71u:
        case 0x72u:
        case 0x74u:
        case 0x75u:
        case 0x76u:
        case 0x78u:
        case 0x79u:
        case 0x7Bu:
        case 0x7Du:
        case 0xA1u:
        case 0xA7u:
        case 0xABu:
        case 0xBAu:
        case 0xBBu:
        case 0xBFu:
        case 0xC7u:
        case 0xD2u:
        case 0xD3u:
        case 0xD4u:
        case 0xD5u:
        case 0xD7u:
        case 0xDFu:
        case 0xE7u:
        case 0xECu:
        case 0xEDu:
        case 0xEEu:
        case 0xF2u:
        case 0xF3u:
        case 0xF4u:
        case 0xF5u:
          goto LABEL_15;
        case 0x23u:
        case 0x2Au:
        case 0x45u:
        case 0x4Du:
        case 0x57u:
        case 0x5Au:
        case 0x77u:
        case 0x7Au:
        case 0xC0u:
        case 0xC1u:
        case 0xC2u:
        case 0xC3u:
        case 0xCCu:
        case 0xCDu:
        case 0xCEu:
        case 0xD1u:
        case 0xDCu:
        case 0xE4u:
        case 0xEBu:
        case 0xFCu:
        case 0xFFu:
          v8 = 4;
          if (!v3)
          {
            goto LABEL_34;
          }

          goto LABEL_31;
        case 0x24u:
        case 0x25u:
        case 0x41u:
        case 0x42u:
        case 0x46u:
        case 0x47u:
        case 0x48u:
        case 0x49u:
        case 0x4Bu:
        case 0x4Eu:
        case 0x52u:
        case 0x59u:
        case 0x6Bu:
        case 0x6Du:
        case 0xA3u:
        case 0xAAu:
        case 0xD6u:
        case 0xD9u:
        case 0xDAu:
        case 0xDBu:
        case 0xE0u:
        case 0xE1u:
        case 0xE2u:
        case 0xE3u:
        case 0xE8u:
        case 0xE9u:
        case 0xEAu:
        case 0xEFu:
        case 0xF1u:
        case 0xF6u:
        case 0xF7u:
        case 0xF9u:
        case 0xFAu:
        case 0xFBu:
        case 0x152u:
        case 0x153u:
          goto LABEL_24;
        case 0x26u:
        case 0x27u:
        case 0x28u:
        case 0x29u:
        case 0x2Cu:
        case 0x2Du:
        case 0x2Eu:
        case 0x2Fu:
        case 0x36u:
        case 0x3Cu:
        case 0x3Eu:
        case 0x43u:
        case 0x4Fu:
        case 0x53u:
        case 0x5Bu:
        case 0x5Cu:
        case 0x5Du:
        case 0x5Eu:
        case 0x5Fu:
        case 0x60u:
        case 0x63u:
        case 0x6Cu:
        case 0x6Fu:
        case 0x73u:
        case 0x7Cu:
        case 0x7Eu:
        case 0x7Fu:
        case 0x80u:
        case 0x81u:
        case 0x82u:
        case 0x83u:
        case 0x84u:
        case 0x85u:
        case 0x86u:
        case 0x87u:
        case 0x88u:
        case 0x89u:
        case 0x8Au:
        case 0x8Bu:
        case 0x8Cu:
        case 0x8Du:
        case 0x8Eu:
        case 0x8Fu:
        case 0x90u:
        case 0x91u:
        case 0x92u:
        case 0x93u:
        case 0x94u:
        case 0x95u:
        case 0x96u:
        case 0x97u:
        case 0x98u:
        case 0x99u:
        case 0x9Au:
        case 0x9Bu:
        case 0x9Cu:
        case 0x9Du:
        case 0x9Eu:
        case 0x9Fu:
        case 0xA0u:
        case 0xA2u:
        case 0xA4u:
        case 0xA6u:
        case 0xA8u:
        case 0xA9u:
        case 0xACu:
        case 0xADu:
        case 0xAEu:
        case 0xAFu:
        case 0xB0u:
        case 0xB1u:
        case 0xB2u:
        case 0xB3u:
        case 0xB4u:
        case 0xB5u:
        case 0xB6u:
        case 0xB7u:
        case 0xB8u:
        case 0xB9u:
        case 0xBCu:
        case 0xBDu:
        case 0xBEu:
        case 0xC5u:
        case 0xC6u:
        case 0xCBu:
        case 0xD0u:
        case 0xD8u:
        case 0xDDu:
        case 0xDEu:
        case 0xE5u:
        case 0xE6u:
        case 0xF0u:
        case 0xF8u:
        case 0xFDu:
        case 0xFEu:
        case 0x100u:
        case 0x101u:
        case 0x102u:
        case 0x103u:
        case 0x104u:
        case 0x105u:
        case 0x106u:
        case 0x107u:
        case 0x108u:
        case 0x109u:
        case 0x10Au:
        case 0x10Bu:
        case 0x10Cu:
        case 0x10Du:
        case 0x10Eu:
        case 0x10Fu:
        case 0x110u:
        case 0x111u:
        case 0x112u:
        case 0x113u:
        case 0x114u:
        case 0x115u:
        case 0x116u:
        case 0x117u:
        case 0x118u:
        case 0x119u:
        case 0x11Au:
        case 0x11Bu:
        case 0x11Cu:
        case 0x11Du:
        case 0x11Eu:
        case 0x11Fu:
        case 0x120u:
        case 0x121u:
        case 0x122u:
        case 0x123u:
        case 0x124u:
        case 0x125u:
        case 0x126u:
        case 0x127u:
        case 0x128u:
        case 0x129u:
        case 0x12Au:
        case 0x12Bu:
        case 0x12Cu:
        case 0x12Du:
        case 0x12Eu:
        case 0x12Fu:
        case 0x130u:
        case 0x131u:
        case 0x132u:
        case 0x133u:
        case 0x134u:
        case 0x135u:
        case 0x136u:
        case 0x137u:
        case 0x138u:
        case 0x139u:
        case 0x13Au:
        case 0x13Bu:
        case 0x13Cu:
        case 0x13Du:
        case 0x13Eu:
        case 0x13Fu:
        case 0x140u:
        case 0x141u:
        case 0x142u:
        case 0x143u:
        case 0x144u:
        case 0x145u:
        case 0x146u:
        case 0x147u:
        case 0x148u:
        case 0x149u:
        case 0x14Au:
        case 0x14Bu:
        case 0x14Cu:
        case 0x14Du:
        case 0x14Eu:
        case 0x14Fu:
        case 0x150u:
        case 0x151u:
        case 0x154u:
        case 0x155u:
        case 0x156u:
        case 0x157u:
        case 0x158u:
        case 0x159u:
        case 0x15Au:
        case 0x15Bu:
        case 0x15Cu:
        case 0x15Du:
        case 0x15Eu:
        case 0x15Fu:
        case 0x160u:
        case 0x161u:
        case 0x162u:
        case 0x163u:
        case 0x164u:
        case 0x165u:
        case 0x166u:
        case 0x167u:
        case 0x168u:
        case 0x169u:
        case 0x16Au:
        case 0x16Bu:
        case 0x16Cu:
        case 0x16Du:
        case 0x16Eu:
        case 0x16Fu:
        case 0x170u:
        case 0x171u:
        case 0x172u:
        case 0x173u:
        case 0x174u:
        case 0x175u:
        case 0x176u:
        case 0x177u:
          goto LABEL_28;
        case 0xA5u:
        case 0xC4u:
        case 0xC8u:
        case 0xC9u:
        case 0xCAu:
        case 0xCFu:
        case 0x178u:
          goto LABEL_25;
        default:
          if (v2 != 7838)
          {
            goto LABEL_28;
          }

          goto LABEL_15;
      }
    }

    if (v2 - 8220 < 3)
    {
LABEL_15:
      v8 = 2;
      if (v3)
      {
        goto LABEL_31;
      }
    }

    else if (v2 == 8230 || v2 == 8364)
    {
LABEL_24:
      v8 = 3;
LABEL_25:
      if (v3)
      {
        while (1)
        {
LABEL_31:
          while (1)
          {
            v9 = v3;
            v10 = *(v3 + 32);
            if (v10 <= v2)
            {
              break;
            }

            v3 = *v9;
            if (!*v9)
            {
              goto LABEL_34;
            }
          }

          if (v10 >= v2)
          {
            break;
          }

          v3 = v9[1];
          if (!v3)
          {
            goto LABEL_34;
          }
        }

        v9[5] = v8;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_28:
      v8 = 1;
      if (v3)
      {
        goto LABEL_31;
      }
    }

LABEL_34:
    operator new();
  }

  v4 = *(v1 + 288);
  while (1)
  {
    v5 = *(v4 + 8);
    if (v5 <= v2)
    {
      break;
    }

LABEL_4:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v5 < v2)
  {
    ++v4;
    goto LABEL_4;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      v7 = *(v3 + 32);
      if (v7 <= v2)
      {
        break;
      }

      v3 = *v6;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }

    if (v7 >= v2)
    {
      break;
    }

    v3 = v6[1];
    if (!v3)
    {
LABEL_19:
      operator new();
    }
  }

  v8 = v6[5];
LABEL_36:
  *(*(*(result + 40) + 8) + 24) = v8;
  return result;
}

uint64_t sub_183949844(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(result + 48);
    v1 = 3;
    switch(v2)
    {
      case 34:
      case 58:
      case 59:
      case 161:
      case 171:
      case 187:
      case 192:
      case 193:
      case 194:
      case 195:
      case 200:
      case 201:
      case 202:
      case 204:
      case 205:
      case 206:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 217:
      case 218:
      case 219:
      case 224:
      case 225:
      case 226:
      case 227:
      case 232:
      case 233:
      case 234:
      case 236:
      case 237:
      case 238:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 249:
      case 250:
      case 251:
        goto LABEL_3;
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 188:
      case 189:
      case 190:
      case 191:
      case 197:
      case 198:
      case 199:
      case 208:
      case 215:
      case 216:
      case 221:
      case 222:
      case 223:
      case 229:
      case 230:
      case 231:
      case 240:
      case 248:
      case 253:
      case 254:
      case 255:
      case 256:
      case 257:
      case 258:
      case 259:
      case 260:
      case 261:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 267:
      case 268:
      case 269:
      case 270:
      case 271:
      case 272:
      case 273:
      case 274:
      case 275:
      case 276:
      case 277:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
      case 293:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 299:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
        goto LABEL_7;
      case 196:
      case 203:
      case 207:
      case 214:
      case 220:
      case 228:
      case 235:
      case 239:
      case 246:
      case 247:
      case 252:
      case 376:
        goto LABEL_4;
      default:
        if ((v2 - 8220) < 3)
        {
LABEL_3:
          v1 = 2;
          goto LABEL_4;
        }

        if (v2 == 8230)
        {
          goto LABEL_4;
        }

LABEL_7:
        *(*(*(result + 40) + 8) + 24) = 1;
        break;
    }
  }

  else
  {
LABEL_4:
    *(*(*(result + 40) + 8) + 24) = v1;
  }

  return result;
}