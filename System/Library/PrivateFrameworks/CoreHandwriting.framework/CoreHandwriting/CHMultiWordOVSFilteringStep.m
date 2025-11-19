@interface CHMultiWordOVSFilteringStep
- (CHMultiWordOVSFilteringStep)initWithOVSStringChecker:(id)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHMultiWordOVSFilteringStep

- (CHMultiWordOVSFilteringStep)initWithOVSStringChecker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHMultiWordOVSFilteringStep;
  v6 = [(CHMultiWordOVSFilteringStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ovsStringChecker, a3);
  }

  return v7;
}

- (id)process:(id)a3 options:(id)a4
{
  v603 = *MEMORY[0x1E69E9840];
  v554 = a3;
  v552 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC58;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHMultiWordOVSFilteringStep is running", buf, 2u);
  }

  v579 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9, v10);
  v559 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  for (i = 0; ; ++i)
  {
    v21 = objc_msgSend_result(v554, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_transcriptionPaths(v21, v22, v23, v24, v25, v26);
    v33 = i < objc_msgSend_count(v27, v28, v29, v30, v31, v32);

    if (!v33)
    {
      break;
    }

    v39 = objc_msgSend_result(v554, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_transcriptionPaths(v39, v40, v41, v42, v43, v44);
    v553 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, i, v47, v48, v49);

    v55 = objc_msgSend_result(v554, v50, v51, v52, v53, v54);
    v60 = objc_msgSend_tokensFromTranscriptionPath_(v55, v56, v553, v57, v58, v59);
    v573 = objc_msgSend_mutableCopy(v60, v61, v62, v63, v64, v65);

    for (j = 0; j < objc_msgSend_count(v573, v66, v67, v68, v69, v70); ++j)
    {
      v76 = objc_msgSend_count(v573, v71, v72, v73, v74, v75);
      v81 = &stru_1EF1C0318;
      if (j <= 0xFFFFFFFFFFFFFFFCLL && j < v76)
      {
        v82 = objc_msgSend_objectAtIndexedSubscript_(v573, v77, j, v78, v79, v80);
        v88 = objc_msgSend_string(v82, v83, v84, v85, v86, v87);
        v556 = objc_msgSend_stringByAppendingString_(&stru_1EF1C0318, v89, v88, v90, v91, v92);

        isInappropriateString = objc_msgSend_isInappropriateString_(self->_ovsStringChecker, v93, v556, v94, v95, v96);
        v107 = j + 1;
        if (j + 1 < objc_msgSend_count(v573, v97, v98, v99, v100, v101))
        {
          v108 = objc_msgSend_result(v554, v102, v103, v104, v105, v106);
          v113 = objc_msgSend_objectAtIndexedSubscript_(v573, v109, v107, v110, v111, v112);
          v118 = objc_msgSend_precedingSeparatorForToken_(v108, v114, v113, v115, v116, v117);
          v123 = objc_msgSend_stringByAppendingString_(v556, v119, v118, v120, v121, v122);

          v128 = objc_msgSend_objectAtIndexedSubscript_(v573, v124, v107, v125, v126, v127);
          v134 = objc_msgSend_string(v128, v129, v130, v131, v132, v133);
          v556 = objc_msgSend_stringByAppendingString_(v123, v135, v134, v136, v137, v138);

          v143 = objc_msgSend_isInappropriateString_(self->_ovsStringChecker, v139, v556, v140, v141, v142) == 0;
          v149 = isInappropriateString;
          if (!v143)
          {
            v149 = 2;
          }

          isInappropriateString = v149;
          v151 = j + 2;
          if (j + 2 < objc_msgSend_count(v573, v144, v145, v146, v147, v148))
          {
            v152 = j + 3;
            if (v107 < j + 3)
            {
              v153 = objc_msgSend_result(v554, v102, v150, v104, v105, v106);
              v158 = objc_msgSend_objectAtIndexedSubscript_(v573, v154, v151, v155, v156, v157);
              v163 = objc_msgSend_precedingSeparatorForToken_(v153, v159, v158, v160, v161, v162);
              v168 = objc_msgSend_stringByAppendingString_(v556, v164, v163, v165, v166, v167);

              v173 = objc_msgSend_objectAtIndexedSubscript_(v573, v169, v151, v170, v171, v172);
              v179 = objc_msgSend_string(v173, v174, v175, v176, v177, v178);
              v556 = objc_msgSend_stringByAppendingString_(v168, v180, v179, v181, v182, v183);

              v143 = objc_msgSend_isInappropriateString_(self->_ovsStringChecker, v184, v556, v185, v186, v187) == 0;
              v193 = isInappropriateString;
              if (!v143)
              {
                v193 = 3;
              }

              isInappropriateString = v193;
              v195 = j + 3;
              if (j + 3 < objc_msgSend_count(v573, v188, v189, v190, v191, v192) && v151 < v152)
              {
                v196 = objc_msgSend_result(v554, v102, v194, v104, v105, v106);
                v201 = objc_msgSend_objectAtIndexedSubscript_(v573, v197, v195, v198, v199, v200);
                v206 = objc_msgSend_precedingSeparatorForToken_(v196, v202, v201, v203, v204, v205);
                v211 = objc_msgSend_stringByAppendingString_(v556, v207, v206, v208, v209, v210);

                v216 = objc_msgSend_objectAtIndexedSubscript_(v573, v212, v195, v213, v214, v215);
                v222 = objc_msgSend_string(v216, v217, v218, v219, v220, v221);
                v556 = objc_msgSend_stringByAppendingString_(v211, v223, v222, v224, v225, v226);

                LODWORD(v222) = objc_msgSend_isInappropriateString_(self->_ovsStringChecker, v227, v556, v228, v229, v230);
                v236 = objc_msgSend_count(v573, v231, v232, v233, v234, v235);
                v238 = j + 4;
                v239 = isInappropriateString;
                if (v222)
                {
                  v239 = 4;
                }

                isInappropriateString = v239;
                if (v238 < v236 && v195 < v152)
                {
                  v516 = objc_msgSend_result(v554, v102, v237, v104, v105, v106);
                  v521 = objc_msgSend_objectAtIndexedSubscript_(v573, v517, v238, v518, v519, v520);
                  v526 = objc_msgSend_precedingSeparatorForToken_(v516, v522, v521, v523, v524, v525);
                  v531 = objc_msgSend_stringByAppendingString_(v556, v527, v526, v528, v529, v530);

                  v536 = objc_msgSend_objectAtIndexedSubscript_(v573, v532, v238, v533, v534, v535);
                  v542 = objc_msgSend_string(v536, v537, v538, v539, v540, v541);
                  v557 = objc_msgSend_stringByAppendingString_(v531, v543, v542, v544, v545, v546);

                  objc_msgSend_isInappropriateString_(self->_ovsStringChecker, v547, v557, v548, v549, v550);
                  __break(1u);
                }
              }
            }
          }
        }

        if (isInappropriateString)
        {
          v240 = j;
          do
          {
            v246 = objc_msgSend_objectAtIndexedSubscript_(v573, v102, v240, v104, v105, v106);
            if (!i || (objc_msgSend_firstObject(v559, v241, v242, v243, v244, v245), v247 = objc_claimAutoreleasedReturnValue(), v252 = objc_msgSend_containsObject_(v247, v248, v246, v249, v250, v251), v247, (v252 & 1) == 0))
            {
              v253 = [CHTokenizedTextResultToken alloc];
              v570 = objc_msgSend_string(v246, v254, v255, v256, v257, v258);
              v264 = objc_msgSend_strokeIndexes(v246, v259, v260, v261, v262, v263);
              v270 = objc_msgSend_wordID(v246, v265, v266, v267, v268, v269);
              objc_msgSend_modelScore(v246, v271, v272, v273, v274, v275);
              v277 = v276;
              objc_msgSend_recognitionScore(v246, v278, v279, v280, v281, v282);
              v284 = v283;
              objc_msgSend_combinedScore(v246, v285, v286, v287, v288, v289);
              v291 = v290;
              objc_msgSend_alignmentScore(v246, v292, v293, v294, v295, v296);
              v298 = v297;
              v304 = objc_msgSend_properties(v246, v299, v300, v301, v302, v303);
              v310 = objc_msgSend_recognizerSourceLocale(v246, v305, v306, v307, v308, v309);
              v561 = v298;
              v563 = v291;
              v565 = v284;
              obj = v277;
              v316 = objc_msgSend_inputSources(v246, v311, v312, v313, v314, v315);
              v322 = objc_msgSend_substrokeCount(v246, v317, v318, v319, v320, v321);
              objc_msgSend_bounds(v246, v323, v324, v325, v326, v327);
              v329 = v328;
              v331 = v330;
              v333 = v332;
              v335 = v334;
              objc_msgSend_originalBounds(v246, v336, v337, v338, v339, v340);
              v347 = v346;
              v349 = v348;
              v351 = v350;
              v353 = v352;
              if (v246)
              {
                objc_msgSend_principalLines(v246, v341, v342, v343, v344, v345);
              }

              else
              {
                v598 = 0u;
                v599 = 0u;
                v596 = 0u;
                v597 = 0u;
                v594 = 0u;
                v595 = 0u;
                *buf = 0u;
                v593 = 0u;
              }

              v354 = objc_msgSend_principalPoints(v246, v341, v342, v343, v344, v345);
              v356 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v253, v355, v570, v264, v270, v304 | 0x10, v310, v316, *&obj, v565, v563, v561, v329, v331, v333, v335, v322, v347, v349, v351, v353, buf, v354);

              objc_msgSend_setObject_atIndexedSubscript_(v573, v357, v356, v240, v358, v359);
              objc_msgSend_setObject_forKeyedSubscript_(v579, v360, v356, v246, v361, v362);
            }

            ++v240;
            --isInappropriateString;
          }

          while (isInappropriateString);
        }

        v81 = v556;
      }
    }

    objc_msgSend_addObject_(v559, v71, v573, v73, v74, v75);
  }

  if (objc_msgSend_count(v579, v34, v35, v36, v37, v38))
  {
    v566 = objc_msgSend_array(MEMORY[0x1E695DF70], v363, v364, v365, v366, v367);
    v590 = 0u;
    v591 = 0u;
    v588 = 0u;
    v589 = 0u;
    v373 = objc_msgSend_result(v554, v368, v369, v370, v371, v372);
    obja = objc_msgSend_tokenColumns(v373, v374, v375, v376, v377, v378);

    v562 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v379, &v588, v602, 16, v380);
    if (v562)
    {
      v564 = *v589;
      do
      {
        for (k = 0; k != v562; ++k)
        {
          if (*v589 != v564)
          {
            objc_enumerationMutation(obja);
          }

          v381 = *(*(&v588 + 1) + 8 * k);
          v382 = [CHMutableTokenizedResultColumn alloc];
          v387 = objc_msgSend_initWithTokenRows_(v382, v383, MEMORY[0x1E695E0F0], v384, v385, v386);
          v586 = 0u;
          v587 = 0u;
          v584 = 0u;
          v585 = 0u;
          v577 = v387;
          v393 = objc_msgSend_textTokenRows(v381, v388, v389, v390, v391, v392);
          v574 = v393;
          v401 = objc_msgSend_countByEnumeratingWithState_objects_count_(v393, v394, &v584, v601, 16, v395);
          if (v401)
          {
            v402 = *v585;
            do
            {
              for (m = 0; m != v401; ++m)
              {
                if (*v585 != v402)
                {
                  objc_enumerationMutation(v574);
                }

                v404 = *(*(&v584 + 1) + 8 * m);
                v405 = objc_msgSend_array(MEMORY[0x1E695DF70], v396, v397, v398, v399, v400);
                v582 = 0u;
                v583 = 0u;
                v580 = 0u;
                v581 = 0u;
                v406 = v404;
                v413 = objc_msgSend_countByEnumeratingWithState_objects_count_(v406, v407, &v580, v600, 16, v408);
                if (v413)
                {
                  v414 = *v581;
                  do
                  {
                    for (n = 0; n != v413; ++n)
                    {
                      if (*v581 != v414)
                      {
                        objc_enumerationMutation(v406);
                      }

                      v416 = *(*(&v580 + 1) + 8 * n);
                      v421 = objc_msgSend_objectForKeyedSubscript_(v579, v409, v416, v410, v411, v412);
                      if (v421)
                      {
                        objc_msgSend_addObject_(v405, v417, v421, v418, v419, v420);
                      }

                      else
                      {
                        objc_msgSend_addObject_(v405, v417, v416, v418, v419, v420);
                      }
                    }

                    v413 = objc_msgSend_countByEnumeratingWithState_objects_count_(v406, v409, &v580, v600, 16, v412);
                  }

                  while (v413);
                }

                objc_msgSend_addTokenRowWithTokens_(v577, v422, v405, v423, v424, v425);
              }

              v393 = v574;
              v401 = objc_msgSend_countByEnumeratingWithState_objects_count_(v574, v396, &v584, v601, 16, v400);
            }

            while (v401);
          }

          objc_msgSend_addObject_(v566, v426, v577, v427, v428, v429);
        }

        v562 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v430, &v588, v602, 16, v431);
      }

      while (v562);
    }

    v437 = objc_msgSend_result(v554, v432, v433, v434, v435, v436);
    v443 = objc_msgSend_baseWritingDirection(v437, v438, v439, v440, v441, v442);

    v444 = [CHMutableTokenizedTextResult alloc];
    v572 = objc_msgSend_result(v554, v445, v446, v447, v448, v449);
    v575 = objc_msgSend_transcriptionPaths(v572, v450, v451, v452, v453, v454);
    objb = objc_msgSend_result(v554, v455, v456, v457, v458, v459);
    v578 = objc_msgSend_transcriptionPathScores(objb, v460, v461, v462, v463, v464);
    v470 = objc_msgSend_result(v554, v465, v466, v467, v468, v469);
    v476 = objc_msgSend_trailingSeparator(v470, v471, v472, v473, v474, v475);
    v482 = objc_msgSend_result(v554, v477, v478, v479, v480, v481);
    v488 = objc_msgSend_recognizerGenerationIdentifier(v482, v483, v484, v485, v486, v487);
    v494 = objc_msgSend_result(v554, v489, v490, v491, v492, v493);
    v500 = objc_msgSend_changeableTokenColumnCount(v494, v495, v496, v497, v498, v499);
    v506 = objc_msgSend_result(v554, v501, v502, v503, v504, v505);
    v512 = objc_msgSend_originalTokens(v506, v507, v508, v509, v510, v511);
    LOBYTE(v551) = 0;
    isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v444, v513, v566, v575, v578, v476, v488, v500, v551, v443, v512);
    if (v554)
    {
      objc_storeStrong(v554 + 3, isMinimalDrawingResult_baseWritingDirection_originalTokens);
    }
  }

  return v554;
}

@end