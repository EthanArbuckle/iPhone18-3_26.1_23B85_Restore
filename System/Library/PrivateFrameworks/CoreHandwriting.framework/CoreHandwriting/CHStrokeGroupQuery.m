@interface CHStrokeGroupQuery
- (NSArray)strokeGroupItems;
- (id)q_strokeGroupItemsFromSessionResult:(id)a3;
- (id)tokenStrokeIdentifiersWithCoveringStroke:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)tokenizedStrokeResultForInitialStrokes:(id)a3 point:(CGPoint)a4 tokenizationLevel:(int64_t)a5;
- (id)tokenizedStrokeResultForInitialStrokes:(id)a3 point:(CGPoint)a4 tokenizationLevel:(int64_t)a5 completion:(id)a6 shouldCancel:(id)a7;
- (void)q_updateQueryResult;
@end

@implementation CHStrokeGroupQuery

- (void)q_updateQueryResult
{
  v117 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC88;
  v4 = os_signpost_id_generate(v3);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC88;
  v6 = v5;
  v105 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CHStrokeGroupQuery", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN CHStrokeGroupQuery", buf, 2u);
  }

  v106.receiver = self;
  v106.super_class = CHStrokeGroupQuery;
  [(CHQuery *)&v106 q_updateQueryResult];
  v13 = objc_msgSend_q_sessionResult(self, v8, v9, v10, v11, v12);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC60;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = objc_msgSend_debugName(self, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_strokeProviderVersion(v13, v21, v22, v23, v24, v25);
    *buf = 138412546;
    v112 = v20;
    v113 = 2112;
    v114 = v26;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "%@: beginning update for result version %@.", buf, 0x16u);
  }

  v31 = objc_msgSend_q_strokeGroupItemsFromSessionResult_(self, v27, v13, v28, v29, v30);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v32 = qword_1EA84DC60;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v32 = qword_1EA84DC60;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
LABEL_18:
    v38 = objc_msgSend_debugName(self, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_recognitionSession(self, v39, v40, v41, v42, v43);
    v50 = objc_msgSend_count(v31, v45, v46, v47, v48, v49);
    *buf = 138412802;
    v112 = v38;
    v113 = 2048;
    v114 = v44;
    v115 = 2048;
    v116 = v50;
    _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_DEFAULT, "%@: finished update for session %p. %ld item(s) available.", buf, 0x20u);
  }

LABEL_19:

  v51 = v31;
  v57 = v51;
  if (self && self->_strokeGroupItems != v51)
  {
    v104 = v13;
    v58 = v4;
    v59 = objc_msgSend_copy(v51, v52, v53, v54, v55, v56);
    strokeGroupItems = self->_strokeGroupItems;
    self->_strokeGroupItems = v59;

    v61 = MEMORY[0x1E695DF90];
    v67 = objc_msgSend_count(self->_strokeGroupItems, v62, v63, v64, v65, v66);
    v72 = objc_msgSend_dictionaryWithCapacity_(v61, v68, v67, v69, v70, v71);
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v73 = self->_strokeGroupItems;
    v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v107, buf, 16, v75);
    if (v76)
    {
      v82 = v76;
      v83 = *v108;
      do
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v108 != v83)
          {
            objc_enumerationMutation(v73);
          }

          v85 = *(*(&v107 + 1) + 8 * i);
          v86 = objc_msgSend_strokeGroupIdentifier(v85, v77, v78, v79, v80, v81);
          objc_msgSend_setObject_forKeyedSubscript_(v72, v87, v85, v86, v88, v89);
        }

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v77, &v107, buf, 16, v81);
      }

      while (v82);
    }

    v95 = objc_msgSend_copy(v72, v90, v91, v92, v93, v94);
    strokeGroupItemsByID = self->_strokeGroupItemsByID;
    self->_strokeGroupItemsByID = v95;

    objc_msgSend_q_queryResultDidChange(self, v97, v98, v99, v100, v101);
    v4 = v58;
    v13 = v104;
  }

  if (qword_1EA84DC48 == -1)
  {
    v102 = qword_1EA84DC88;
    if (v105 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_33;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v102 = qword_1EA84DC88;
    if (v105 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_33;
    }
  }

  if (os_signpost_enabled(v102))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v102, OS_SIGNPOST_INTERVAL_END, v4, "CHStrokeGroupQuery", "", buf, 2u);
  }

LABEL_33:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v103 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v103, OS_LOG_TYPE_DEFAULT, "END CHStrokeGroupQuery", buf, 2u);
  }
}

- (id)q_strokeGroupItemsFromSessionResult:(id)a3
{
  v223 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = objc_msgSend_strokeGroupingResult(v4, v5, v6, v7, v8, v9);
  v11 = MEMORY[0x1E695DF70];
  v17 = objc_msgSend_strokeGroups(v10, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_count(v17, v18, v19, v20, v21, v22);
  v211 = objc_msgSend_arrayWithCapacity_(v11, v24, v23, v25, v26, v27);

  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v217 = self;
  v33 = objc_msgSend_recognitionSession(self, v28, v29, v30, v31, v32);
  v39 = objc_msgSend_strokeGroupOrdering(v33, v34, v35, v36, v37, v38);
  v206 = v10;
  v43 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v10, v40, v39, 0, v41, v42);

  obj = v43;
  v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v218, v222, 16, v45);
  if (v215)
  {
    v51 = *v219;
    v208 = *v219;
    v209 = v4;
    do
    {
      for (i = 0; i != v215; ++i)
      {
        if (*v219 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v218 + 1) + 8 * i);
        v54 = MEMORY[0x1E696AD98];
        v55 = objc_msgSend_uniqueIdentifier(v53, v46, v47, v48, v49, v50);
        v60 = objc_msgSend_numberWithInteger_(v54, v56, v55, v57, v58, v59);
        v65 = objc_msgSend_objectForKeyedSubscript_(v217->_strokeGroupItemsByID, v61, v60, v62, v63, v64);
        v71 = objc_msgSend_mathResult(v65, v66, v67, v68, v69, v70);
        v77 = objc_msgSend_uniqueIdentifier(v53, v72, v73, v74, v75, v76);
        v82 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v4, v78, v77, v79, v80, v81);
        v88 = objc_msgSend_mathResult(v82, v83, v84, v85, v86, v87);
        isEqualToTokenizedMathResult = objc_msgSend_isEqualToTokenizedMathResult_(v71, v89, v88, v90, v91, v92);

        if (v65 && (isEqualToTokenizedMathResult & 1) != 0)
        {
          goto LABEL_5;
        }

        v99 = objc_msgSend_uniqueIdentifier(v53, v94, v95, v96, v97, v98);
        v104 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v4, v100, v99, v101, v102, v103);
        v110 = objc_msgSend_inputStrokeIdentifiers(v104, v105, v106, v107, v108, v109);
        v213 = objc_msgSend_recognitionResultsByLocale(v104, v111, v112, v113, v114, v115);
        v216 = objc_msgSend_errorsByLocale(v104, v116, v117, v118, v119, v120);
        v121 = MEMORY[0x1E696AD98];
        v127 = objc_msgSend_ancestorIdentifier(v53, v122, v123, v124, v125, v126);
        v212 = objc_msgSend_numberWithInteger_(v121, v128, v127, v129, v130, v131);
        v137 = objc_msgSend_preferredLocale(v104, v132, v133, v134, v135, v136);
        v143 = objc_msgSend_recognitionSession(v217, v138, v139, v140, v141, v142);
        v149 = objc_msgSend_latestStrokeProvider(v143, v144, v145, v146, v147, v148);
        v214 = v110;
        v153 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v150, v110, v149, v151, v152);

        if (v153)
        {
          v159 = objc_msgSend_mathResult(v104, v154, v155, v156, v157, v158);
          v160 = v159 | v137;

          if (v160)
          {
            v166 = objc_msgSend_classification(v53, v161, v162, v163, v164, v165);
            v177 = objc_msgSend_mathResult(v104, v167, v168, v169, v170, v171);
            isEvaluationExpected = v177 != 0;
            v179 = v213;
            if (v177 && v137)
            {
              objc_msgSend_mathResult(v104, v172, v173, v174, v175, v176);
              v180 = v207 = v166;
              isEvaluationExpected = objc_msgSend_isEvaluationExpected(v180, v181, v182, v183, v184, v185);

              v166 = v207;
            }

            v186 = isEvaluationExpected ? 3 : v166;
            v187 = [CHStrokeGroupQueryItem alloc];
            v193 = objc_msgSend_mathResult(v104, v188, v189, v190, v191, v192);
            v194 = v187;
            v195 = v212;
            v196 = sub_18369AE18(v194, v60, v212, v153, v186, 1, v137, v213, v193, v216);

            v65 = v193;
            v4 = v209;
          }

          else
          {
            v197 = [CHStrokeGroupQueryItem alloc];
            v203 = objc_msgSend_classification(v53, v198, v199, v200, v201, v202);
            v204 = v197;
            v195 = v212;
            v196 = sub_18369AE18(v204, v60, v212, v153, v203, 0, 0, MEMORY[0x1E695E0F8], 0, MEMORY[0x1E695E0F8]);
            v4 = v209;
            v179 = v213;
          }

          v65 = v196;
        }

        else
        {
          v4 = v209;
          v195 = v212;
          v179 = v213;
        }

        v51 = v208;
        if (v65)
        {
LABEL_5:
          objc_msgSend_addObject_(v211, v94, v65, v96, v97, v98);
        }
      }

      v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v218, v222, 16, v50);
    }

    while (v215);
  }

  return v211;
}

- (id)tokenizedStrokeResultForInitialStrokes:(id)a3 point:(CGPoint)a4 tokenizationLevel:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_18369B108;
  v23 = sub_18369B118;
  v24 = 0;
  v10 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18369B120;
  v16[3] = &unk_1E6DDC108;
  v18 = &v19;
  v11 = v10;
  v17 = v11;
  v13 = objc_msgSend_tokenizedStrokeResultForInitialStrokes_point_tokenizationLevel_completion_shouldCancel_(self, v12, v9, a5, v16, 0, x, y);
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v14 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)tokenizedStrokeResultForInitialStrokes:(id)a3 point:(CGPoint)a4 tokenizationLevel:(int64_t)a5 completion:(id)a6 shouldCancel:(id)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC88;
  v17 = os_signpost_id_generate(v16);

  if (qword_1EA84DC48 == -1)
  {
    v18 = qword_1EA84DC88;
    if (v17 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v18 = qword_1EA84DC88;
    if (v17 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CHStrokeGroupQuery_resultsForInitialStrokes", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v19 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN CHStrokeGroupQuery_resultsForInitialStrokes", buf, 2u);
  }

  v25 = objc_msgSend_recognitionSession(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_latestStrokeProvider(v25, v26, v27, v28, v29, v30);
  v35 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v32, v15, v31, v33, v34);

  v41 = objc_msgSend_recognitionSession(self, v36, v37, v38, v39, v40);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_18369B440;
  v46[3] = &unk_1E6DDC130;
  v47 = v13;
  v48 = v17;
  v42 = v13;
  v44 = objc_msgSend_tokenStrokeIdentifiersForContextStrokes_point_tokenizationLevel_completion_shouldCancel_(v41, v43, v35, a5, v46, v14, x, y);

  return v44;
}

- (id)tokenStrokeIdentifiersWithCoveringStroke:(id)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC88;
  v12 = os_signpost_id_generate(v11);

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC88;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v13 = qword_1EA84DC88;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CHStrokeGroupQuery_strokesCoveredByStroke", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN CHStrokeGroupQuery_strokesCoveredByStroke", buf, 2u);
  }

  v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_18369B7E0;
  v26[3] = &unk_1E6DDC158;
  v27 = v8;
  v28 = v12;
  v21 = v8;
  v24 = objc_msgSend_tokenStrokeIdentifiersWithCoveringStroke_completion_shouldCancel_(v20, v22, v10, v26, v9, v23);

  return v24;
}

- (NSArray)strokeGroupItems
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_18369B108;
  v16 = sub_18369B118;
  v17 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18369BA78;
  v11[3] = &unk_1E6DDC180;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(v7, v11);

  v8 = v13[5];
  if (!v8)
  {
    v13[5] = MEMORY[0x1E695E0F0];
    v8 = v13[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

@end