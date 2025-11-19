@interface CHSearchQuery
- (CHSearchQuery)initWithRecognitionSession:(id)a3;
- (NSArray)foundItems;
- (NSString)queryString;
- (id)q_foundItemsForSearchString:(id)a3 sessionResult:(id)a4;
- (void)q_updateQueryResult;
- (void)setQueryString:(id)a3;
@end

@implementation CHSearchQuery

- (CHSearchQuery)initWithRecognitionSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = CHSearchQuery;
  v3 = [(CHQuery *)&v7 initWithRecognitionSession:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    foundItems = v3->_foundItems;
    v3->_foundItems = v4;

    v3->_fullWordsOnly = 0;
    v3->_caseMatchingOnly = 0;
  }

  return v3;
}

- (void)q_updateQueryResult
{
  v72 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC88;
  v4 = os_signpost_id_generate(v3);

  if (qword_1EA84DC48 == -1)
  {
    v5 = qword_1EA84DC88;
    v6 = v4 - 1;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v5 = qword_1EA84DC88;
    v6 = v4 - 1;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CHSearchQuery", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN CHSearchQuery", buf, 2u);
  }

  v65.receiver = self;
  v65.super_class = CHSearchQuery;
  [(CHQuery *)&v65 q_updateQueryResult];
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
    v67 = v20;
    v68 = 2112;
    v69 = v26;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "%@: beginning update for result version %@.", buf, 0x16u);
  }

  v27 = self->_queryString;
  v31 = objc_msgSend_q_foundItemsForSearchString_sessionResult_(self, v28, v27, v13, v29, v30);
  if (qword_1EA84DC48 == -1)
  {
    v32 = qword_1EA84DC60;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v32 = qword_1EA84DC60;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
LABEL_17:
    v38 = objc_msgSend_debugName(self, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_recognitionSession(self, v39, v40, v41, v42, v43);
    v50 = objc_msgSend_count(v31, v45, v46, v47, v48, v49);
    *buf = 138412802;
    v67 = v38;
    v68 = 2048;
    v69 = v44;
    v70 = 2048;
    v71 = v50;
    _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_DEFAULT, "%@: finished update for session %p. Found %ld item(s).", buf, 0x20u);
  }

LABEL_18:

  if (self->_foundItems != v31)
  {
    v56 = objc_msgSend_copy(v31, v51, v52, v53, v54, v55);
    foundItems = self->_foundItems;
    self->_foundItems = v56;

    objc_msgSend_q_queryResultDidChange(self, v58, v59, v60, v61, v62);
  }

  if (qword_1EA84DC48 == -1)
  {
    v63 = qword_1EA84DC88;
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_24;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v63 = qword_1EA84DC88;
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_24;
    }
  }

  if (os_signpost_enabled(v63))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v63, OS_SIGNPOST_INTERVAL_END, v4, "CHSearchQuery", "", buf, 2u);
  }

LABEL_24:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v64 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v64, OS_LOG_TYPE_DEFAULT, "END CHSearchQuery", buf, 2u);
  }
}

- (id)q_foundItemsForSearchString:(id)a3 sessionResult:(id)a4
{
  v430 = *MEMORY[0x1E69E9840];
  v361 = a3;
  v365 = a4;
  v373 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v15 = objc_msgSend_strokeGroupingResult(v365, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_recognitionSession(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_strokeGroupOrdering(v21, v22, v23, v24, v25, v26);
  v31 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v15, v28, v27, 1, v29, v30);

  v408 = 0u;
  v409 = 0u;
  v406 = 0u;
  v407 = 0u;
  obj = v31;
  v363 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v406, v424, 16, v33);
  if (v363)
  {
    v360 = *v407;
    do
    {
      v39 = 0;
      do
      {
        if (*v407 != v360)
        {
          v40 = v39;
          objc_enumerationMutation(obj);
          v39 = v40;
        }

        v364 = v39;
        v41 = *(*(&v406 + 1) + 8 * v39);
        v42 = objc_msgSend_uniqueIdentifier(v41, v34, v35, v36, v37, v38, v355);
        v368 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v365, v43, v42, v44, v45, v46);
        v57 = objc_msgSend_mathResult(v368, v47, v48, v49, v50, v51);
        if (!v57)
        {
LABEL_9:
          v391 = 0;
          v392 = &v391;
          v393 = 0x3032000000;
          v394 = sub_1837BA2E8;
          v395 = sub_1837BA2F8;
          v396 = 0;
          v387[0] = MEMORY[0x1E69E9820];
          v387[1] = 3221225472;
          v388 = sub_1837BA300;
          v389 = &unk_1E6DDE300;
          v390 = &v391;
          v366 = v368;
          v374 = v361;
          v371 = v387;
          if (self && objc_msgSend_length(v374, v75, v76, v77, v78, v79))
          {
            v380 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v80, v81, v82, v83, v84);
            v90 = objc_msgSend_orderedLocales(v366, v85, v86, v87, v88, v89);
            v95 = objc_msgSend_localesSortedByCombinedLanguageFitness_(v366, v91, v90, v92, v93, v94);

            v418 = 0u;
            v419 = 0u;
            v416 = 0u;
            v417 = 0u;
            v357 = v95;
            v355 = objc_msgSend_countByEnumeratingWithState_objects_count_(v357, v96, &v416, buf, 16, v97);
            if (v355)
            {
              v356 = *v417;
              do
              {
                for (i = 0; i != v355; ++i)
                {
                  if (*v417 != v356)
                  {
                    objc_enumerationMutation(v357);
                  }

                  v103 = *(*(&v416 + 1) + 8 * i);
                  v104 = objc_msgSend_recognitionResultsByLocale(v366, v98, v99, v100, v101, v102, v355);
                  v378 = objc_msgSend_objectForKeyedSubscript_(v104, v105, v103, v106, v107, v108);

                  v362 = objc_msgSend_tokenColumnCount(v378, v109, v110, v111, v112, v113);
                  if (v362 >= 1)
                  {
                    v118 = 0;
                    do
                    {
                      v376 = v118;
                      v369 = objc_msgSend_tokenRowsAtColumnIndex_(v378, v114, v118, v115, v116, v117);
                      if (objc_msgSend_count(v369, v119, v120, v121, v122, v123))
                      {
                        v128 = 0;
                        do
                        {
                          v129 = objc_msgSend_objectAtIndexedSubscript_(v369, v124, v128, v125, v126, v127);
                          if (objc_msgSend_count(v129, v130, v131, v132, v133, v134))
                          {
                            v135 = 0;
                            do
                            {
                              v415 = 0;
                              v414[0] = v376;
                              v414[1] = v128;
                              v414[2] = v135;
                              v136 = sub_1837BA394(self, v378, v414, v374, 0, v380, &v415);
                              v137 = v415;
                              v143 = v137;
                              if (v136 && objc_msgSend_count(v137, v138, v139, v140, v141, v142))
                              {
                                v149 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v144, v145, v146, v147, v148);
                                v412 = 0u;
                                v413 = 0u;
                                v410 = 0u;
                                v411 = 0u;
                                v150 = v143;
                                v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v151, &v410, v425, 16, v152);
                                if (v158)
                                {
                                  v159 = *v411;
                                  do
                                  {
                                    for (j = 0; j != v158; ++j)
                                    {
                                      if (*v411 != v159)
                                      {
                                        objc_enumerationMutation(v150);
                                      }

                                      v161 = objc_msgSend_strokeIndexes(*(*(&v410 + 1) + 8 * j), v153, v154, v155, v156, v157);
                                      objc_msgSend_addIndexes_(v149, v162, v161, v163, v164, v165);
                                    }

                                    v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v153, &v410, v425, 16, v157);
                                  }

                                  while (v158);
                                }

                                v388(v371, v149);
                                objc_msgSend_addIndexes_(v380, v166, v149, v167, v168, v169);
                              }

                              ++v135;
                            }

                            while (v135 < objc_msgSend_count(v129, v170, v171, v172, v173, v174));
                          }

                          ++v128;
                        }

                        while (v128 < objc_msgSend_count(v369, v175, v176, v177, v178, v179));
                      }

                      v118 = (v376 + 1);
                    }

                    while (v376 + 1 != v362);
                  }
                }

                v355 = objc_msgSend_countByEnumeratingWithState_objects_count_(v357, v98, &v416, buf, 16, v102);
              }

              while (v355);
            }
          }

          v185 = objc_msgSend_inputStrokeIdentifiers(v366, v180, v181, v182, v183, v184);
          v385 = 0u;
          v386 = 0u;
          v383 = 0u;
          v384 = 0u;
          v186 = v392[5];
          v194 = objc_msgSend_countByEnumeratingWithState_objects_count_(v186, v187, &v383, v420, 16, v188);
          if (v194)
          {
            v195 = *v384;
            do
            {
              v196 = 0;
              do
              {
                if (*v384 != v195)
                {
                  objc_enumerationMutation(v186);
                }

                v197 = *(*(&v383 + 1) + 8 * v196);
                v198 = objc_msgSend_count(v185, v189, v190, v191, v192, v193, v355);
                if (v198 <= objc_msgSend_lastIndex(v197, v199, v200, v201, v202, v203))
                {
                  if (qword_1EA84DC48 != -1)
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  }

                  v209 = qword_1EA84DC50[0];
                  if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
                  {
                    Index = objc_msgSend_lastIndex(v197, v210, v211, v212, v213, v214);
                    v221 = objc_msgSend_count(v185, v216, v217, v218, v219, v220);
                    *buf = 134218240;
                    v427 = Index;
                    v428 = 2048;
                    v429 = v221;
                    _os_log_impl(&dword_18366B000, v209, OS_LOG_TYPE_ERROR, "Stroke index %ld in search result out of group stroke count %ld.", buf, 0x16u);
                  }
                }

                v222 = objc_msgSend_count(v185, v204, v205, v206, v207, v208);
                if (v222 <= objc_msgSend_lastIndex(v197, v223, v224, v225, v226, v227))
                {
                  if (qword_1EA84DC48 != -1)
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  }

                  v232 = qword_1EA84DC50[0];
                  if (os_log_type_enabled(v232, OS_LOG_TYPE_FAULT))
                  {
                    v238 = objc_msgSend_lastIndex(v197, v233, v234, v235, v236, v237);
                    v244 = objc_msgSend_count(v185, v239, v240, v241, v242, v243);
                    *buf = 134218240;
                    v427 = v238;
                    v428 = 2048;
                    v429 = v244;
                    _os_log_impl(&dword_18366B000, v232, OS_LOG_TYPE_FAULT, "Stroke index %ld in search result out of group stroke count %ld.", buf, 0x16u);
                  }
                }

                v245 = objc_msgSend_objectsAtIndexes_(v185, v228, v197, v229, v230, v231);
                v251 = objc_msgSend_recognitionSession(self, v246, v247, v248, v249, v250);
                v257 = objc_msgSend_latestStrokeProvider(v251, v252, v253, v254, v255, v256);
                v261 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v258, v245, v257, v259, v260);

                if (v261)
                {
                  v262 = sub_1837BA0E4([CHSearchQueryItem alloc], v261);
                  objc_msgSend_addObject_(v373, v263, v262, v264, v265, v266);
                }

                ++v196;
              }

              while (v194 != v196);
              v194 = objc_msgSend_countByEnumeratingWithState_objects_count_(v186, v189, &v383, v420, 16, v193);
            }

            while (v194);
          }

          _Block_object_dispose(&v391, 8);
          goto LABEL_90;
        }

        if (objc_msgSend_hasTextResult(v368, v52, v53, v54, v55, v56))
        {
          v63 = objc_msgSend_mathResult(v368, v58, v59, v60, v61, v62);
          isEvaluationExpected = objc_msgSend_isEvaluationExpected(v63, v64, v65, v66, v67, v68);

          if (!isEvaluationExpected)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        v267 = objc_msgSend_recognitionSession(self, v70, v71, v72, v73, v74);
        v405 = 0;
        v375 = objc_msgSend_mathTranscriptionWithEvaluationResultForStrokeGroup_outStrokeIdentifiers_outStrokes_(v267, v268, v41, 0, &v405, v269);
        v372 = v405;

        if (v375 && v372)
        {
          v370 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v270, v375, v271, v272, v273);
          v367 = objc_msgSend_simplifiedTextTranscriptionForLatex_(CHTokenizedMathResult, v274, v375, v275, v276, v277);
          if (self->_caseMatchingOnly)
          {
            v281 = 256;
          }

          else
          {
            v281 = 257;
          }

          v379 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v361, v278, @" ", &stru_1EF1C0318, v279, v280);
          v403 = 0u;
          v404 = 0u;
          v401 = 0u;
          v402 = 0u;
          v422[0] = v375;
          v422[1] = v370;
          v422[2] = v367;
          v377 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v282, v422, 3, v283, v284);
          v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v377, v285, &v401, v423, 16, v286);
          if (v290)
          {
            v291 = *v402;
            while (2)
            {
              for (k = 0; k != v290; ++k)
              {
                if (*v402 != v291)
                {
                  objc_enumerationMutation(v377);
                }

                v381 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(*(*(&v401 + 1) + 8 * k), v287, @" ", &stru_1EF1C0318, v288, v289);
                if (objc_msgSend_rangeOfString_options_(v381, v293, v379, v281, v294, v295) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v301 = objc_msgSend_array(MEMORY[0x1E695DF70], v296, v297, v298, v299, v300);
                  v307 = objc_msgSend_recognitionSession(self, v302, v303, v304, v305, v306);
                  v313 = objc_msgSend_latestStrokeProvider(v307, v308, v309, v310, v311, v312);
                  v314 = objc_opt_respondsToSelector();

                  if (v314)
                  {
                    v399 = 0u;
                    v400 = 0u;
                    v397 = 0u;
                    v398 = 0u;
                    v319 = v372;
                    v327 = objc_msgSend_countByEnumeratingWithState_objects_count_(v319, v320, &v397, v421, 16, v321);
                    if (v327)
                    {
                      v328 = *v398;
                      do
                      {
                        for (m = 0; m != v327; ++m)
                        {
                          if (*v398 != v328)
                          {
                            objc_enumerationMutation(v319);
                          }

                          v330 = *(*(&v397 + 1) + 8 * m);
                          v331 = objc_msgSend_recognitionSession(self, v322, v323, v324, v325, v326);
                          v337 = objc_msgSend_latestStrokeProvider(v331, v332, v333, v334, v335, v336);
                          v343 = objc_msgSend_strokeIdentifier(v330, v338, v339, v340, v341, v342);
                          isValidStrokeIdentifier = objc_msgSend_isValidStrokeIdentifier_(v337, v344, v343, v345, v346, v347);

                          if (isValidStrokeIdentifier)
                          {
                            objc_msgSend_addObject_(v301, v322, v330, v324, v325, v326);
                          }
                        }

                        v327 = objc_msgSend_countByEnumeratingWithState_objects_count_(v319, v322, &v397, v421, 16, v326);
                      }

                      while (v327);
                    }
                  }

                  else
                  {
                    objc_msgSend_addObjectsFromArray_(v301, v315, v372, v316, v317, v318);
                  }

                  v349 = sub_1837BA0E4([CHSearchQueryItem alloc], v301);
                  objc_msgSend_addObject_(v373, v350, v349, v351, v352, v353);

                  goto LABEL_88;
                }
              }

              v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v377, v287, &v401, v423, 16, v289);
              if (v290)
              {
                continue;
              }

              break;
            }
          }

LABEL_88:
        }

LABEL_90:
        v39 = v364 + 1;
      }

      while (v364 + 1 != v363);
      v363 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v406, v424, 16, v38);
    }

    while (v363);
  }

  return v373;
}

- (void)setQueryString:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_processingQueue(self, v5, v6, v7, v8, v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1837BAE18;
  v12[3] = &unk_1E6DDE2B8;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  dispatch_sync(v10, v12);
}

- (NSString)queryString
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1837BA2E8;
  v15 = sub_1837BA2F8;
  v16 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1837BAFAC;
  v10[3] = &unk_1E6DDC180;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (NSArray)foundItems
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1837BA2E8;
  v15 = sub_1837BA2F8;
  v16 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1837BB0E4;
  v10[3] = &unk_1E6DDC180;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

@end