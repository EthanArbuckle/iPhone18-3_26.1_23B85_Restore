@interface CHDataDetectorQuery
- (CHDataDetectorQuery)initWithRecognitionSession:(id)a3;
- (NSArray)foundItems;
- (void)q_updateQueryResult;
@end

@implementation CHDataDetectorQuery

- (CHDataDetectorQuery)initWithRecognitionSession:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CHDataDetectorQuery;
  v5 = [(CHQuery *)&v19 initWithRecognitionSession:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    foundItems = v5->_foundItems;
    v5->_foundItems = v6;

    v8 = objc_alloc(MEMORY[0x1E6999A90]);
    v12 = objc_msgSend_initWithScannerType_passiveIntent_(v8, v9, 0, 1, v10, v11);
    dataDetectorConfiguration = v5->_dataDetectorConfiguration;
    v5->_dataDetectorConfiguration = v12;

    objc_msgSend_setSpotlightSuggestionsEnabled_(v5->_dataDetectorConfiguration, v14, 1, v15, v16, v17);
  }

  return v5;
}

- (void)q_updateQueryResult
{
  v593 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC88;
  spid = os_signpost_id_generate(v2);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC88;
  v4 = v3;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHDataDetectorQuery_update", "", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEFAULT, "BEGIN CHDataDetectorQuery_update", &buf, 2u);
  }

  v545.receiver = self;
  v545.super_class = CHDataDetectorQuery;
  [(CHQuery *)&v545 q_updateQueryResult];
  v527 = objc_msgSend_q_sessionResult(self, v6, v7, v8, v9, v10);
  if (self)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEFAULT, "CHDataDetectorQuery._dataDetectorResultsForSessionResult: start", &buf, 2u);
    }

    v517 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
    v22 = objc_msgSend_strokeGroupingResult(v527, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_textStrokeGroupClusters(v22, v23, v24, v25, v26, v27);

    v556 = 0u;
    v557 = 0u;
    v555 = 0u;
    v554 = 0u;
    obj = v28;
    v31 = 0x1E695D000uLL;
    v510 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v554, v580, 16, v30);
    if (v510)
    {
      v514 = *v555;
      *&v37 = 138412290;
      v506 = v37;
      do
      {
        v520 = 0;
        do
        {
          if (*v555 != v514)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v554 + 1) + 8 * v520);
          v525 = objc_msgSend_array(*(v31 + 3952), v32, v33, v34, v35, v36, v506);
          v526 = objc_msgSend_array(*(v31 + 3952), v39, v40, v41, v42, v43);
          v44 = 0;
          v45 = 0;
          v530 = 0;
          v539 = -1;
          for (i = objc_msgSend_count(v38, v46, v47, v48, v49, v50); v44 < i; i = objc_msgSend_count(v92, v201, v202, v203, v204, v205))
          {
            v56 = objc_msgSend_objectAtIndexedSubscript_(v38, v52, v44, v53, v54, v55);
            v62 = objc_msgSend_uniqueIdentifier(v56, v57, v58, v59, v60, v61);
            v67 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v527, v63, v62, v64, v65, v66);
            v541 = v56;
            v543 = objc_msgSend_preferredLocale(v67, v68, v69, v70, v71, v72);
            v73 = objc_opt_class();
            v79 = objc_msgSend_recognitionResultsByLocale(v67, v74, v75, v76, v77, v78);
            v85 = objc_msgSend_locales(v527, v80, v81, v82, v83, v84);
            v91 = objc_msgSend_languageFitnessByLocale(v67, v86, v87, v88, v89, v90);
            v92 = v38;
            v94 = objc_msgSend_filteredResultsByLocale_orderedLocales_usingLanguageFitness_outSortedLocales_(v73, v93, v79, v85, v91, 0);

            v103 = objc_msgSend_objectForKeyedSubscript_(v94, v95, v543, v96, v97, v98);
            if (!v103)
            {
              isEvaluationExpected = v45;
              v125 = v530;
              goto LABEL_46;
            }

            objc_msgSend_addObject_(v525, v99, v541, v100, v101, v102);
            v109 = objc_msgSend_languageCode(v543, v104, v105, v106, v107, v108);
            if (objc_msgSend_isEqualToString_(v109, v110, @"zh", v111, v112, v113))
            {

LABEL_29:
              *&buf = 0;
              *(&buf + 1) = &buf;
              v584 = 0x2020000000;
              v585 = 103;
              v133 = objc_msgSend_topTranscription(v103, v119, v120, v121, v122, v123);
              v139 = objc_msgSend_topTranscription(v103, v134, v135, v136, v137, v138);
              v145 = objc_msgSend_length(v139, v140, v141, v142, v143, v144);
              v553[0] = MEMORY[0x1E69E9820];
              v553[1] = 3221225472;
              v553[2] = sub_183887D04;
              v553[3] = &unk_1E6DDC1A8;
              v553[4] = &buf;
              objc_msgSend_enumerateCodepointsInRange_reverse_usingBlock_(v133, v146, 0, v145, 1, v553);

              v147 = *(*(&buf + 1) + 24);
              _Block_object_dispose(&buf, 8);
              v132 = @"\n";
              if (v147 == 17)
              {
                v132 = 0;
              }

              goto LABEL_31;
            }

            v126 = objc_msgSend_languageCode(v543, v114, v115, v116, v117, v118);
            isEqualToString = objc_msgSend_isEqualToString_(v126, v127, @"yue", v128, v129, v130);

            v132 = @"\n";
            if (isEqualToString)
            {
              goto LABEL_29;
            }

LABEL_31:
            v148 = v132;
            v159 = objc_msgSend_mathResult(v67, v149, v150, v151, v152, v153);
            if (v159)
            {
              if (objc_msgSend_hasTextResult(v67, v154, v155, v156, v157, v158))
              {
                v165 = objc_msgSend_mathResult(v67, v160, v161, v162, v163, v164);
                isEvaluationExpected = objc_msgSend_isEvaluationExpected(v165, v166, v167, v168, v169, v170);
              }

              else
              {
                isEvaluationExpected = 1;
              }
            }

            else
            {
              isEvaluationExpected = 0;
            }

            v176 = objc_msgSend_lastObject(v526, v171, v172, v173, v174, v175);
            if (v176)
            {
              v177 = v44 == v539 + 1;
            }

            else
            {
              v177 = 0;
            }

            v178 = v177;

            if ((v178 & (v530 != 0) & (v45 ^ isEvaluationExpected)) == 1)
            {
              v179 = objc_opt_class();
              if (objc_msgSend_isStrokeGroup_inlineWithNextGroup_(v179, v180, v541, v530, v181, v182))
              {
                v188 = objc_msgSend_lastObject(v526, v183, v184, v185, v186, v187);
                objc_msgSend_setTerminatingSpecialCharacter_(v188, v189, @" ", v190, v191, v192);
              }
            }

            v125 = v541;

            v193 = [CHContextualTextResult alloc];
            v196 = objc_msgSend_initWithTextResult_terminatingSpecialCharacter_strokeGroup_(v193, v194, v103, v148, v125, v195);
            objc_msgSend_addObject_(v526, v197, v196, v198, v199, v200);

            v539 = v44;
LABEL_46:

            ++v44;
            v45 = isEvaluationExpected;
            v530 = v125;
            v38 = v92;
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v206 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
          {
            v212 = objc_msgSend_count(v526, v207, v208, v209, v210, v211);
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v212;
            _os_log_impl(&dword_18366B000, v206, OS_LOG_TYPE_DEFAULT, "CHDataDetectorQuery._dataDetectorResultsForSessionResult: contextualTextResults.count = %lu", &buf, 0xCu);
          }

          if (objc_msgSend_count(v526, v213, v214, v215, v216, v217))
          {
            v218 = [CHContextualTextResults alloc];
            v223 = objc_msgSend_initWithTextResults_(v218, v219, v526, v220, v221, v222);
            v546[0] = MEMORY[0x1E69E9820];
            v546[1] = 3221225472;
            v547 = sub_183887D68;
            v548 = &unk_1E6DDF450;
            v549 = v525;
            v550 = v527;
            v551 = self;
            v552 = v517;
            v224 = v223;
            v507 = v546;
            v521 = v224;
            objc_msgSend_topTranscription(v224, v225, v226, v227, v228, v229);
            v231 = v230 = 0x1E695D000uLL;
            v232 = MEMORY[0x1E6999A88];
            v508 = v231;
            v238 = objc_msgSend_length(v231, v233, v234, v235, v236, v237);
            v522 = objc_msgSend_scanString_range_configuration_(v232, v239, v231, 0, v238, self->_dataDetectorConfiguration);
            if (objc_msgSend_count(v522, v240, v241, v242, v243, v244) || !sub_1837A7338(v231, v245, v246, v247, v248, v249))
            {
              v516 = 0;
              v511 = 0;
            }

            else
            {
              v571 = 0;
              v254 = sub_1837A75A8(v231, &v571, v250, v251, v252, v253);
              v511 = v571;
              v255 = MEMORY[0x1E6999A88];
              v261 = objc_msgSend_length(v254, v256, v257, v258, v259, v260);
              v263 = objc_msgSend_scanString_range_configuration_(v255, v262, v254, 0, v261, self->_dataDetectorConfiguration);

              v516 = 1;
              v522 = v263;
            }

            v569 = 0u;
            v570 = 0u;
            v567 = 0u;
            v568 = 0u;
            v523 = v522;
            v509 = objc_msgSend_countByEnumeratingWithState_objects_count_(v523, v264, &v567, &buf, 16, v265);
            if (v509)
            {
              v512 = *v568;
              do
              {
                v519 = 0;
                do
                {
                  if (*v568 != v512)
                  {
                    objc_enumerationMutation(v523);
                  }

                  v513 = *(*(&v567 + 1) + 8 * v519);
                  v271 = objc_msgSend_urlificationRange(v513, v266, v267, v268, v269, v270);
                  v276 = v271;
                  v277 = v272;
                  if (v516)
                  {
                    v576 = 0;
                    v577 = &v576;
                    v578 = 0x2020000000;
                    v579 = 0;
                    v572 = 0;
                    v573 = &v572;
                    v574 = 0x2020000000;
                    v575 = 0;
                    *&v586 = MEMORY[0x1E69E9820];
                    *(&v586 + 1) = 3221225472;
                    v587 = sub_1837A7AAC;
                    v588 = &unk_1E6DDE160;
                    v591 = v271;
                    v592 = v272;
                    v589 = &v576;
                    v590 = &v572;
                    objc_msgSend_enumerateIndexesUsingBlock_(v511, v272, &v586, v273, v274, v275);
                    v276 -= v577[3];
                    v277 -= v573[3];
                    _Block_object_dispose(&v572, 8);
                    _Block_object_dispose(&v576, 8);
                  }

                  v566 = 0;
                  v535 = objc_msgSend_textResultToIndexMappingFromTopTranscriptionWithCharacterRange_intersectionRanges_(v521, v272, v276, v277, &v566, v275);
                  v532 = v566;
                  v533 = objc_msgSend_array(*(v230 + 3952), v278, v279, v280, v281, v282);
                  v544 = objc_msgSend_array(*(v230 + 3952), v283, v284, v285, v286, v287);
                  v538 = objc_msgSend_array(*(v230 + 3952), v288, v289, v290, v291, v292);
                  v529 = objc_msgSend_array(*(v230 + 3952), v293, v294, v295, v296, v297);
                  v528 = objc_msgSend_array(*(v230 + 3952), v298, v299, v300, v301, v302);
                  v564 = 0u;
                  v565 = 0u;
                  v562 = 0u;
                  v563 = 0u;
                  v531 = objc_msgSend_textResults(v521, v303, v304, v305, v306, v307);
                  v310 = objc_msgSend_countByEnumeratingWithState_objects_count_(v531, v308, &v562, v582, 16, v309);
                  v316 = 0;
                  if (v310)
                  {
                    v534 = *v563;
                    do
                    {
                      v536 = v310;
                      for (j = 0; j != v536; ++j)
                      {
                        if (*v563 != v534)
                        {
                          objc_enumerationMutation(v531);
                        }

                        v318 = *(*(&v562 + 1) + 8 * j);
                        v319 = objc_msgSend_textResult(v318, v311, v312, v313, v314, v315);
                        v329 = objc_msgSend_objectForKeyedSubscript_(v535, v320, v319, v321, v322, v323);
                        if (v329)
                        {
                          v537 = v318;
                          v330 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v324, v325, v326, v327, v328);
                          v540 = v329;
                          v335 = objc_msgSend_objectForKey_(v532, v331, v329, v332, v333, v334);
                          v341 = objc_msgSend_rangeValue(v335, v336, v337, v338, v339, v340);
                          v343 = v342;

                          v349 = objc_msgSend_transcriptionPaths(v319, v344, v345, v346, v347, v348);
                          v355 = objc_msgSend_firstObject(v349, v350, v351, v352, v353, v354);
                          v542 = objc_msgSend_tokensFromTranscriptionPath_characterRange_(v319, v356, v355, v341, v343, v357);

                          objc_msgSend_addObjectsFromArray_(v533, v358, v542, v359, v360, v361);
                          v560 = 0u;
                          v561 = 0u;
                          v558 = 0u;
                          v559 = 0u;
                          v362 = v542;
                          v367 = objc_msgSend_countByEnumeratingWithState_objects_count_(v362, v363, &v558, v581, 16, v364);
                          if (v367)
                          {
                            v368 = *v559;
                            do
                            {
                              for (k = 0; k != v367; ++k)
                              {
                                if (*v559 != v368)
                                {
                                  objc_enumerationMutation(v362);
                                }

                                v370 = *(*(&v558 + 1) + 8 * k);
                                shouldPerformStrictFiltering = objc_msgSend_shouldFilterOutStringForToken_isGibberish_shouldPerformStrictFiltering_(v319, v365, v370, 0, 0, v366);
                                v377 = objc_msgSend_strokeIndexes(v370, v372, v373, v374, v375, v376);
                                objc_msgSend_addIndexes_(v330, v378, v377, v379, v380, v381);

                                v316 += shouldPerformStrictFiltering;
                              }

                              v367 = objc_msgSend_countByEnumeratingWithState_objects_count_(v362, v365, &v558, v581, 16, v366);
                            }

                            while (v367);
                          }

                          objc_msgSend_addObject_(v544, v382, v540, v383, v384, v385);
                          objc_msgSend_addObject_(v538, v386, v330, v387, v388, v389);
                          v395 = objc_msgSend_terminatingSpecialCharacter(v537, v390, v391, v392, v393, v394);
                          v400 = objc_msgSend_isEqualToString_(v395, v396, @" ", v397, v398, v399);

                          if (v400)
                          {
                            v406 = v544;
                          }

                          else
                          {
                            v407 = objc_msgSend_copy(v544, v401, v402, v403, v404, v405);
                            objc_msgSend_addObject_(v529, v408, v407, v409, v410, v411);

                            v417 = objc_msgSend_copy(v538, v412, v413, v414, v415, v416);
                            objc_msgSend_addObject_(v528, v418, v417, v419, v420, v421);

                            v406 = objc_msgSend_array(MEMORY[0x1E695DF70], v422, v423, v424, v425, v426);

                            v432 = objc_msgSend_array(MEMORY[0x1E695DF70], v427, v428, v429, v430, v431);

                            v538 = v432;
                          }

                          v544 = v406;
                          v329 = v540;
                        }
                      }

                      v310 = objc_msgSend_countByEnumeratingWithState_objects_count_(v531, v311, &v562, v582, 16, v315);
                    }

                    while (v310);
                  }

                  if (objc_msgSend_count(v544, v433, v434, v435, v436, v437))
                  {
                    v443 = objc_msgSend_copy(v544, v438, v439, v440, v441, v442);
                    objc_msgSend_addObject_(v529, v444, v443, v445, v446, v447);

                    v453 = objc_msgSend_copy(v538, v448, v449, v450, v451, v452);
                    objc_msgSend_addObject_(v528, v454, v453, v455, v456, v457);
                  }

                  if (v316 < objc_msgSend_count(v533, v438, v439, v440, v441, v442))
                  {
                    if (!objc_msgSend_count(v529, v458, v459, v460, v461, v462))
                    {
                      if (qword_1EA84DC48 != -1)
                      {
                        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                      }

                      v468 = qword_1EA84DC50[0];
                      if (os_log_type_enabled(v468, OS_LOG_TYPE_ERROR))
                      {
                        v474 = objc_msgSend_matchedString(v513, v469, v470, v471, v472, v473);
                        LODWORD(v586) = v506;
                        *(&v586 + 4) = v474;
                        _os_log_impl(&dword_18366B000, v468, OS_LOG_TYPE_ERROR, "The stroke indexes matching data detected content should be non-empty [%@]", &v586, 0xCu);
                      }
                    }

                    if (!objc_msgSend_count(v529, v463, v464, v465, v466, v467))
                    {
                      if (qword_1EA84DC48 != -1)
                      {
                        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                      }

                      v475 = qword_1EA84DC50[0];
                      if (os_log_type_enabled(v475, OS_LOG_TYPE_FAULT))
                      {
                        v481 = objc_msgSend_matchedString(v513, v476, v477, v478, v479, v480);
                        LODWORD(v586) = v506;
                        *(&v586 + 4) = v481;
                        _os_log_impl(&dword_18366B000, v475, OS_LOG_TYPE_FAULT, "The stroke indexes matching data detected content should be non-empty [%@]", &v586, 0xCu);
                      }
                    }

                    v547(v507, v529, v528, v513);
                  }

                  ++v519;
                  v230 = 0x1E695D000;
                }

                while (v519 != v509);
                v509 = objc_msgSend_countByEnumeratingWithState_objects_count_(v523, v266, &v567, &buf, 16, v270);
              }

              while (v509);
            }
          }

          ++v520;
          v31 = 0x1E695D000;
        }

        while (v520 != v510);
        v510 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v554, v580, 16, v36);
      }

      while (v510);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v482 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v482, OS_LOG_TYPE_DEFAULT))
    {
      v488 = objc_msgSend_count(v517, v483, v484, v485, v486, v487);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v488;
      _os_log_impl(&dword_18366B000, v482, OS_LOG_TYPE_DEFAULT, "CHDataDetectorQuery._dataDetectorResultsForSessionResult: found %lu items", &buf, 0xCu);
    }

    v489 = v517;
    v495 = v489;
    if (self->_foundItems != v489)
    {
      v496 = objc_msgSend_copy(v489, v490, v491, v492, v493, v494);
      foundItems = self->_foundItems;
      self->_foundItems = v496;

      objc_msgSend_q_queryResultDidChange(self, v498, v499, v500, v501, v502);
    }
  }

  else
  {

    v495 = 0;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v503 = qword_1EA84DC88;
  v504 = v503;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v503))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v504, OS_SIGNPOST_INTERVAL_END, spid, "CHDataDetectorQuery_update", "", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v505 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v505, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v505, OS_LOG_TYPE_DEFAULT, "END CHDataDetectorQuery_update", &buf, 2u);
  }
}

- (NSArray)foundItems
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_18388915C;
  v15 = sub_18388916C;
  v16 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_183889174;
  v10[3] = &unk_1E6DDC7F0;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

@end