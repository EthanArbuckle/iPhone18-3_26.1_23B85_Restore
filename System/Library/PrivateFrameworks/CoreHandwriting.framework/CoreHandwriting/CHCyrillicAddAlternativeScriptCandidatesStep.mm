@interface CHCyrillicAddAlternativeScriptCandidatesStep
- (CHCyrillicAddAlternativeScriptCandidatesStep)initWithStaticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)customLexicon;
- (id)process:(id)process options:(id)options;
@end

@implementation CHCyrillicAddAlternativeScriptCandidatesStep

- (CHCyrillicAddAlternativeScriptCandidatesStep)initWithStaticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)customLexicon
{
  v7.receiver = self;
  v7.super_class = CHCyrillicAddAlternativeScriptCandidatesStep;
  result = [(CHCyrillicAddAlternativeScriptCandidatesStep *)&v7 init];
  if (result)
  {
    result->_staticLexicon = lexicon;
    result->_customLexicon = customLexicon;
  }

  return result;
}

- (id)process:(id)process options:(id)options
{
  v638 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  v589 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v590 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  v596 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18, v19);
  v602 = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22, v23, v24);
  v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
  objc_msgSend_addObject_(v602, v31, v30, v32, v33, v34);

  v40 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37, v38, v39);
  objc_msgSend_addObject_(v602, v41, v40, v42, v43, v44);

  for (i = 0; ; ++i)
  {
    v50 = objc_msgSend_result(processCopy, v45, v46, v47, v48, v49);
    v56 = i < objc_msgSend_tokenColumnCount(v50, v51, v52, v53, v54, v55);

    if (!v56)
    {
      break;
    }

    v62 = objc_msgSend_result(processCopy, v57, v58, v59, v60, v61);
    v68 = objc_msgSend_result(processCopy, v63, v64, v65, v66, v67);
    v74 = objc_msgSend_transcriptionPaths(v68, v69, v70, v71, v72, v73);
    v79 = objc_msgSend_objectAtIndexedSubscript_(v74, v75, 0, v76, v77, v78);
    v83 = objc_msgSend_tokensInTranscriptionPath_atColumnIndex_(v62, v80, v79, i, v81, v82);

    v633 = 0u;
    v634 = 0u;
    v631 = 0u;
    v632 = 0u;
    obj = v83;
    v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, &v631, v637, 16, v85);
    if (v594)
    {
      v592 = *v632;
      do
      {
        for (j = 0; j != v594; ++j)
        {
          if (*v632 != v592)
          {
            objc_enumerationMutation(obj);
          }

          v90 = *(*(&v631 + 1) + 8 * j);
          objc_msgSend_addObject_(v596, v86, v90, v87, v88, v89);
          v605 = v90;
          v96 = objc_msgSend_string(v90, v91, v92, v93, v94, v95);
          v102 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v97, v98, v99, v100, v101);
          v609 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v96, v103, v102, 1, v104, v105);

          v111 = objc_msgSend_string(v90, v106, v107, v108, v109, v110);
          v117 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v112, v113, v114, v115, v116);
          v606 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v111, v118, v117, 1, v119, v120);

          v629 = 0u;
          v630 = 0u;
          v627 = 0u;
          v628 = 0u;
          v126 = objc_msgSend_result(processCopy, v121, v122, v123, v124, v125);
          v132 = objc_msgSend_tokenColumns(v126, v127, v128, v129, v130, v131);
          v137 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, i, v134, v135, v136);
          v612 = objc_msgSend_textTokenRows(v137, v138, v139, v140, v141, v142);

          v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v612, v143, &v627, v636, 16, v144);
          if (v150)
          {
            v151 = *v628;
LABEL_10:
            v152 = 0;
            while (1)
            {
              if (*v628 != v151)
              {
                objc_enumerationMutation(v612);
              }

              v153 = *(*(&v627 + 1) + 8 * v152);
              if (objc_msgSend_count(v153, v145, v146, v147, v148, v149) == 1)
              {
                v154 = objc_msgSend_objectAtIndexedSubscript_(v153, v145, 0, v147, v148, v149);
                v160 = objc_msgSend_string(v154, v155, v156, v157, v158, v159);
                v166 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v161, v162, v163, v164, v165);
                v170 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v160, v167, v166, 1, v168, v169);

                v175 = objc_msgSend_objectAtIndexedSubscript_(v153, v171, 0, v172, v173, v174);
                v181 = objc_msgSend_string(v175, v176, v177, v178, v179, v180);
                v187 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v182, v183, v184, v185, v186);
                v191 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v181, v188, v187, 1, v189, v190);
                v192 = v170 > 0;

                v193 = 0;
                v194 = v191 > 0 && v609 > 0;
                if (v194 || v606 > 0 && v192)
                {
                  break;
                }
              }

              if (v150 == ++v152)
              {
                v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v612, v145, &v627, v636, 16, v149);
                if (v150)
                {
                  goto LABEL_10;
                }

                goto LABEL_22;
              }
            }
          }

          else
          {
LABEL_22:
            v193 = 1;
          }

          if (objc_msgSend_count(obj, v195, v196, v197, v198, v199) == 1 && ((objc_msgSend_string(v605, v200, v201, v202, v203, v204), v205 = objc_claimAutoreleasedReturnValue(), objc_msgSend_length(v205, v206, v207, v208, v209, v210) < 4) ? (v211 = (v609 > 0) ^ (v606 > 0)) : (v211 = 0), v205, (v193 & v211) != 0))
          {
            v221 = objc_msgSend_string(v605, v212, v213, v214, v215, v216);
            if (v609 < 1)
            {
              objc_msgSend_transformCyrillicToLatin_(CHLanguageUtilities, v217, v221, v218, v219, v220);
            }

            else
            {
              objc_msgSend_transformLatinToCyrillic_(CHLanguageUtilities, v217, v221, v218, v219, v220);
            }
            v223 = ;

            v222 = v223;
          }

          else
          {
            v222 = 0;
          }

          v224 = v605;
          v613 = v222;
          v234 = v224;
          if (objc_msgSend_count(v222, v225, v226, v227, v228, v229))
          {
            v235 = objc_msgSend_objectAtIndexedSubscript_(v222, v230, 0, v231, v232, v233);
            v244 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v236, v235, self->_customLexicon, v237, v238);
            if (!v244)
            {
              v244 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v239, v235, self->_staticLexicon, v242, v243);
            }

            v245 = objc_msgSend_properties(v224, v239, v240, v241, v242, v243);
            v626 = 0;
            if ((objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v246, v235, self->_staticLexicon, &v626, v247) & 1) != 0 || objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v248, v235, self->_customLexicon, &v626, v249))
            {
              v250 = 4;
              if (v626)
              {
                v250 = 260;
              }

              v251 = v250 | v245;
            }

            else
            {
              v251 = v245 & 0xFFFFFFFFFFFFFEFBLL;
            }

            v252 = [CHTokenizedTextResultToken alloc];
            v258 = objc_msgSend_strokeIndexes(v224, v253, v254, v255, v256, v257);
            objc_msgSend_modelScore(v224, v259, v260, v261, v262, v263);
            v265 = v264;
            objc_msgSend_recognitionScore(v224, v266, v267, v268, v269, v270);
            v272 = v271;
            objc_msgSend_combinedScore(v224, v273, v274, v275, v276, v277);
            v279 = v278;
            objc_msgSend_alignmentScore(v224, v280, v281, v282, v283, v284);
            v286 = v285;
            v292 = objc_msgSend_recognizerSourceLocale(v224, v287, v288, v289, v290, v291);
            v607 = v286;
            v610 = v265;
            v298 = objc_msgSend_inputSources(v224, v293, v294, v295, v296, v297);
            v304 = objc_msgSend_substrokeCount(v224, v299, v300, v301, v302, v303);
            objc_msgSend_bounds(v224, v305, v306, v307, v308, v309);
            v597 = v311;
            v599 = v310;
            v313 = v312;
            v315 = v314;
            objc_msgSend_originalBounds(v224, v316, v317, v318, v319, v320);
            v327 = v326;
            v329 = v328;
            v331 = v330;
            v333 = v332;
            if (v605)
            {
              objc_msgSend_principalLines(v224, v321, v322, v323, v324, v325);
            }

            else
            {
              v624 = 0u;
              v625 = 0u;
              v622 = 0u;
              v623 = 0u;
              v620 = 0u;
              v621 = 0u;
              v618 = 0u;
              v619 = 0u;
            }

            v334 = objc_msgSend_principalPoints(v224, v321, v322, v323, v324, v325);
            v234 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v252, v335, v235, v258, v244, v251, v292, v298 | 8, v610, v272 * 0.5, v279 * 0.5, v607, v599, v597, v313, v315, v304, v327, v329, v331, v333, &v618, v334);
          }

          v336 = objc_msgSend_objectAtIndexedSubscript_(v602, v230, 0, v231, v232, v233);
          objc_msgSend_addObject_(v336, v337, v234, v338, v339, v340);

          v341 = v224;
          if (objc_msgSend_count(v613, v342, v343, v344, v345, v346) >= 2)
          {
            v351 = objc_msgSend_objectAtIndexedSubscript_(v613, v347, 1, v348, v349, v350);
            v611 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v352, v351, self->_customLexicon, v353, v354);
            if (!v611)
            {
              v611 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v355, v351, self->_staticLexicon, v358, v359);
            }

            v360 = objc_msgSend_properties(v341, v355, v356, v357, v358, v359);
            v626 = 0;
            if (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v361, v351, self->_staticLexicon, &v626, v362) & 1) != 0 || (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v363, v351, self->_customLexicon, &v626, v364))
            {
              v365 = 4;
              if (v626)
              {
                v365 = 260;
              }

              v366 = v365 | v360;
            }

            else
            {
              v366 = v360 & 0xFFFFFFFFFFFFFEFBLL;
            }

            v367 = [CHTokenizedTextResultToken alloc];
            v373 = objc_msgSend_strokeIndexes(v341, v368, v369, v370, v371, v372);
            objc_msgSend_modelScore(v341, v374, v375, v376, v377, v378);
            v380 = v379;
            objc_msgSend_recognitionScore(v341, v381, v382, v383, v384, v385);
            v387 = v386;
            objc_msgSend_combinedScore(v341, v388, v389, v390, v391, v392);
            v394 = v393;
            objc_msgSend_alignmentScore(v341, v395, v396, v397, v398, v399);
            v401 = v400;
            v407 = objc_msgSend_recognizerSourceLocale(v341, v402, v403, v404, v405, v406);
            v600 = v401;
            v608 = v380;
            v413 = objc_msgSend_inputSources(v341, v408, v409, v410, v411, v412);
            v419 = objc_msgSend_substrokeCount(v341, v414, v415, v416, v417, v418);
            objc_msgSend_bounds(v341, v420, v421, v422, v423, v424);
            v598 = v425;
            v591 = v426;
            v428 = v427;
            v430 = v429;
            objc_msgSend_originalBounds(v341, v431, v432, v433, v434, v435);
            v442 = v441;
            v444 = v443;
            v446 = v445;
            v448 = v447;
            if (v605)
            {
              objc_msgSend_principalLines(v341, v436, v437, v438, v439, v440);
            }

            else
            {
              v624 = 0u;
              v625 = 0u;
              v622 = 0u;
              v623 = 0u;
              v620 = 0u;
              v621 = 0u;
              v618 = 0u;
              v619 = 0u;
            }

            v449 = objc_msgSend_principalPoints(v341, v436, v437, v438, v439, v440);
            v451 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v367, v450, v351, v373, v611, v366, v407, v413 | 8, v608, v387 * 0.5, v394 * 0.5, v600, v598, v591, v428, v430, v419, v442, v444, v446, v448, &v618, v449);

            v341 = v451;
          }

          v452 = objc_msgSend_objectAtIndexedSubscript_(v602, v347, 1, v348, v349, v350);
          objc_msgSend_addObject_(v452, v453, v341, v454, v455, v456);
        }

        v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v86, &v631, v637, 16, v89);
      }

      while (v594);
    }
  }

  objc_msgSend_addObject_(v589, v57, v596, v59, v60, v61);
  v462 = objc_msgSend_result(processCopy, v457, v458, v459, v460, v461);
  v468 = objc_msgSend_transcriptionPathScores(v462, v463, v464, v465, v466, v467);
  v473 = objc_msgSend_objectAtIndexedSubscript_(v468, v469, 0, v470, v471, v472);
  objc_msgSend_addObject_(v590, v474, v473, v475, v476, v477);

  v616 = 0u;
  v617 = 0u;
  v614 = 0u;
  v615 = 0u;
  v478 = v602;
  v485 = objc_msgSend_countByEnumeratingWithState_objects_count_(v478, v479, &v614, v635, 16, v480);
  if (v485)
  {
    v486 = *v615;
    do
    {
      for (k = 0; k != v485; ++k)
      {
        if (*v615 != v486)
        {
          objc_enumerationMutation(v478);
        }

        v488 = *(*(&v614 + 1) + 8 * k);
        if ((objc_msgSend_isEqual_(v488, v481, v596, v482, v483, v484) & 1) == 0)
        {
          objc_msgSend_addObject_(v589, v481, v488, v482, v483, v484);
          v494 = objc_msgSend_result(processCopy, v489, v490, v491, v492, v493);
          v500 = objc_msgSend_transcriptionPathScores(v494, v495, v496, v497, v498, v499);
          v505 = objc_msgSend_objectAtIndexedSubscript_(v500, v501, 0, v502, v503, v504);
          objc_msgSend_addObject_(v590, v506, v505, v507, v508, v509);
        }
      }

      v485 = objc_msgSend_countByEnumeratingWithState_objects_count_(v478, v481, &v614, v635, 16, v484);
    }

    while (v485);
  }

  for (m = 1; ; ++m)
  {
    v516 = objc_msgSend_result(processCopy, v510, v511, v512, v513, v514);
    v522 = objc_msgSend_transcriptionPaths(v516, v517, v518, v519, v520, v521);
    v528 = m < objc_msgSend_count(v522, v523, v524, v525, v526, v527);

    if (!v528)
    {
      break;
    }

    v534 = objc_msgSend_result(processCopy, v529, v530, v531, v532, v533);
    v540 = objc_msgSend_result(processCopy, v535, v536, v537, v538, v539);
    v546 = objc_msgSend_transcriptionPaths(v540, v541, v542, v543, v544, v545);
    v551 = objc_msgSend_objectAtIndexedSubscript_(v546, v547, m, v548, v549, v550);
    v556 = objc_msgSend_tokensFromTranscriptionPath_(v534, v552, v551, v553, v554, v555);

    objc_msgSend_addObject_(v589, v557, v556, v558, v559, v560);
    v566 = objc_msgSend_result(processCopy, v561, v562, v563, v564, v565);
    v572 = objc_msgSend_transcriptionPathScores(v566, v567, v568, v569, v570, v571);
    v577 = objc_msgSend_objectAtIndexedSubscript_(v572, v573, m, v574, v575, v576);
    objc_msgSend_addObject_(v590, v578, v577, v579, v580, v581);
  }

  v582 = objc_msgSend_result(processCopy, v529, v530, v531, v532, v533);
  v586 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v582, v583, v589, v590, v584, v585);
  if (processCopy)
  {
    objc_storeStrong(processCopy + 3, v586);
  }

  return processCopy;
}

@end