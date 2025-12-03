@interface CHIndexableContentQuery
- (CHIndexableContentQuery)initWithRecognitionSession:(id)session;
- (CHRecognitionSessionIndexableContent)indexableContent;
- (void)q_updateQueryResult;
@end

@implementation CHIndexableContentQuery

- (CHIndexableContentQuery)initWithRecognitionSession:(id)session
{
  v10.receiver = self;
  v10.super_class = CHIndexableContentQuery;
  result = [(CHQuery *)&v10 initWithRecognitionSession:session];
  if (result)
  {
    v9 = result;
    objc_msgSend_setPreferredUpdatesInterval_(result, v4, v5, v6, v7, v8, 2.0);
    return v9;
  }

  return result;
}

- (void)q_updateQueryResult
{
  v261 = *MEMORY[0x1E69E9840];
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
  v230 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CHIndexableContentQuery", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN CHIndexableContentQuery", buf, 2u);
  }

  v254.receiver = self;
  v254.super_class = CHIndexableContentQuery;
  [(CHQuery *)&v254 q_updateQueryResult];
  v237 = objc_msgSend_q_sessionResult(self, v8, v9, v10, v11, v12);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  spid = v4;
  v13 = qword_1EA84DC60;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_msgSend_debugName(self, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_strokeProviderVersion(v237, v20, v21, v22, v23, v24);
    *buf = 138412546;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v25;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEBUG, "%@: beginning update for result version %@.", buf, 0x16u);
  }

  v31 = objc_msgSend_string(MEMORY[0x1E696AD60], v26, v27, v28, v29, v30);
  v233 = objc_msgSend_string(MEMORY[0x1E696AD60], v32, v33, v34, v35, v36);
  v42 = objc_msgSend_strokeGroupingResult(v237, v37, v38, v39, v40, v41);
  selfCopy = self;
  v48 = objc_msgSend_recognitionSession(self, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_strokeGroupOrdering(v48, v49, v50, v51, v52, v53);
  v58 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v42, v55, v54, 1, v56, v57);

  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  obj = v58;
  v235 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v250, v260, 16, v60);
  if (v235)
  {
    v234 = *v251;
    do
    {
      for (i = 0; i != v235; i = v167 + 1)
      {
        if (*v251 != v234)
        {
          objc_enumerationMutation(obj);
        }

        v238 = i;
        v236 = *(*(&v250 + 1) + 8 * i);
        v67 = objc_msgSend_uniqueIdentifier(v236, v61, v62, v63, v64, v65);
        v241 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v237, v68, v67, v69, v70, v71);
        v246 = 0u;
        v247 = 0u;
        v248 = 0u;
        v249 = 0u;
        v239 = objc_msgSend_locales(v237, v72, v73, v74, v75, v76);
        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v77, &v246, v259, 16, v78);
        if (v79)
        {
          v85 = v79;
          v240 = *v247;
          do
          {
            for (j = 0; j != v85; ++j)
            {
              if (*v247 != v240)
              {
                objc_enumerationMutation(v239);
              }

              v87 = *(*(&v246 + 1) + 8 * j);
              v88 = objc_msgSend_recognitionResultsByLocale(v241, v80, v81, v82, v83, v84);
              v93 = objc_msgSend_objectForKeyedSubscript_(v88, v89, v87, v90, v91, v92);

              v244 = 0u;
              v245 = 0u;
              v242 = 0u;
              v243 = 0u;
              v99 = objc_msgSend_transcriptionPaths(v93, v94, v95, v96, v97, v98);
              v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v100, &v242, v258, 16, v101);
              if (v102)
              {
                v108 = v102;
                v109 = *v243;
                do
                {
                  for (k = 0; k != v108; ++k)
                  {
                    if (*v243 != v109)
                    {
                      objc_enumerationMutation(v99);
                    }

                    v111 = *(*(&v242 + 1) + 8 * k);
                    v112 = objc_msgSend_length(v111, v103, v104, v105, v106, v107);
                    v114 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v93, v113, v111, 0, v112, 0);
                    objc_msgSend_appendFormat_(v31, v115, @"%@\n", v116, v117, v118, v114, spid);
                  }

                  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v103, &v242, v258, 16, v107);
                }

                while (v108);
              }
            }

            v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v80, &v246, v259, 16, v84);
          }

          while (v85);
        }

        v124 = objc_msgSend_mathResult(v241, v119, v120, v121, v122, v123);

        if (!v124)
        {
          goto LABEL_45;
        }

        v130 = objc_msgSend_recognitionSession(selfCopy, v125, v126, v127, v128, v129);
        v133 = objc_msgSend_mathTranscriptionWithEvaluationResultForStrokeGroup_outStrokeIdentifiers_outStrokes_(v130, v131, v236, 0, 0, v132);

        v124 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v134, v133, v135, v136, v137);
        v142 = objc_msgSend_simplifiedTextTranscriptionForLatex_(CHTokenizedMathResult, v138, v133, v139, v140, v141);
        objc_msgSend_appendFormat_(v31, v143, @"%@\n", v144, v145, v146, v133);
        objc_msgSend_appendFormat_(v31, v147, @"%@\n", v148, v149, v150, v124);
        if ((objc_msgSend_isEqualToString_(v142, v151, v124, v152, v153, v154) & 1) == 0)
        {
          objc_msgSend_appendFormat_(v31, v155, @"%@\n", v156, v157, v158, v142);
        }

        if (v124)
        {
          v167 = v238;
          if (!objc_msgSend_hasTextResult(v241, v125, v159, v160, v161, v162) || (objc_msgSend_mathResult(v241, v125, v163, v164, v165, v166), v168 = objc_claimAutoreleasedReturnValue(), isEvaluationExpected = objc_msgSend_isEvaluationExpected(v168, v169, v170, v171, v172, v173), v168, isEvaluationExpected))
          {
            objc_msgSend_appendFormat_(v233, v125, @"%@\n", v164, v165, v166, v124);
            goto LABEL_21;
          }
        }

        else
        {
LABEL_45:
          v167 = v238;
        }

        v175 = objc_msgSend_highConfidenceTextForSessionResult_averageTokenScore_rejectionRate_doesContainUnfilteredMultiLocaleResults_isNonTextCandidateResult_(v241, v125, v237, 0, 0, 0, 0);
        v180 = v175;
        if (v175)
        {
          objc_msgSend_appendFormat_(v233, v176, @"%@\n", v177, v178, v179, v175);
        }

LABEL_21:
      }

      v235 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, &v250, v260, 16, v65);
    }

    while (v235);
  }

  v181 = [CHRecognitionSessionIndexableContent alloc];
  v182 = v31;
  v183 = v233;
  v184 = v183;
  if (!v181)
  {

    p_isa = &selfCopy->super.super.isa;
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_69;
  }

  *buf = v181;
  *&buf[8] = CHRecognitionSessionIndexableContent;
  v181 = objc_msgSendSuper2(buf, sel_init);
  if (v181)
  {
    v190 = objc_msgSend_copy(v182, v185, v186, v187, v188, v189);
    indexableTextRepresentation = v181->_indexableTextRepresentation;
    v181->_indexableTextRepresentation = v190;

    v197 = objc_msgSend_copy(v184, v192, v193, v194, v195, v196);
    presentableTextRepresentation = v181->_presentableTextRepresentation;
    v181->_presentableTextRepresentation = v197;
  }

  p_isa = &selfCopy->super.super.isa;
  if (qword_1EA84DC48 != -1)
  {
LABEL_69:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

LABEL_53:
  v200 = qword_1EA84DC60;
  if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
  {
    v206 = objc_msgSend_debugName(p_isa, v201, v202, v203, v204, v205);
    v212 = objc_msgSend_recognitionSession(p_isa, v207, v208, v209, v210, v211);
    v218 = objc_msgSend_length(v182, v213, v214, v215, v216, v217);
    *buf = 138412802;
    *&buf[4] = v206;
    *&buf[12] = 2048;
    *&buf[14] = v212;
    v256 = 2048;
    v257 = v218;
    _os_log_impl(&dword_18366B000, v200, OS_LOG_TYPE_DEFAULT, "%@: finished update for session %p. indexableContent length: %ld", buf, 0x20u);
  }

  v219 = v181;
  v220 = v219;
  if (p_isa && p_isa[9] != v219)
  {
    objc_storeStrong(p_isa + 9, v181);
    objc_msgSend_q_queryResultDidChange(p_isa, v221, v222, v223, v224, v225);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v226 = qword_1EA84DC88;
  v227 = v226;
  if (v230 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v226))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v227, OS_SIGNPOST_INTERVAL_END, spid, "CHIndexableContentQuery", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v228 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v228, OS_LOG_TYPE_DEFAULT, "END CHIndexableContentQuery", buf, 2u);
  }
}

- (CHRecognitionSessionIndexableContent)indexableContent
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1839807E4;
  v15 = sub_1839807F4;
  v16 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1839807FC;
  v10[3] = &unk_1E6DDC180;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

@end