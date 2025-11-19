@interface CHSpellCorrectionCandidatesStep
- (CHSpellCorrectionCandidatesStep)initWithLocale:(id)a3 spellChecker:(id)a4 staticLexicon:(_LXLexicon *)a5 customLexicon:(_LXLexicon *)a6;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHSpellCorrectionCandidatesStep

- (CHSpellCorrectionCandidatesStep)initWithLocale:(id)a3 spellChecker:(id)a4 staticLexicon:(_LXLexicon *)a5 customLexicon:(_LXLexicon *)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = CHSpellCorrectionCandidatesStep;
  v13 = [(CHSpellCorrectionCandidatesStep *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_locale, a3);
    objc_storeStrong(&v14->_spellChecker, a4);
    v14->_staticLexicon = a5;
    v14->_customLexicon = a6;
  }

  return v14;
}

- (id)process:(id)a3 options:(id)a4
{
  v539 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v495 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v499 = v5;
  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHSpellCorrectionCandidatesStep is running", buf, 2u);
  }

  v497 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v498 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  v502 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20, v21);
  v512 = objc_msgSend_array(MEMORY[0x1E695DF70], v22, v23, v24, v25, v26);
  v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v27, v28, v29, v30, v31);
  objc_msgSend_addObject_(v512, v33, v32, v34, v35, v36);

  v42 = objc_msgSend_array(MEMORY[0x1E695DF70], v37, v38, v39, v40, v41);
  objc_msgSend_addObject_(v512, v43, v42, v44, v45, v46);

  for (i = 0; ; i = v496 + 1)
  {
    v53 = objc_msgSend_result(v499, v47, v48, v49, v50, v51);
    v496 = i;
    v59 = i < objc_msgSend_tokenColumnCount(v53, v54, v55, v56, v57, v58);

    if (!v59)
    {
      break;
    }

    v65 = objc_msgSend_result(v499, v60, v61, v62, v63, v64);
    v71 = objc_msgSend_result(v499, v66, v67, v68, v69, v70);
    v77 = objc_msgSend_transcriptionPaths(v71, v72, v73, v74, v75, v76);
    v82 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, 0, v79, v80, v81);
    v86 = objc_msgSend_tokensInTranscriptionPath_atColumnIndex_(v65, v83, v82, v496, v84, v85);

    v535 = 0u;
    v536 = 0u;
    v533 = 0u;
    v534 = 0u;
    obj = v86;
    v501 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v87, &v533, v538, 16, v88);
    if (v501)
    {
      v500 = *v534;
      do
      {
        for (j = 0; j != v501; ++j)
        {
          if (*v534 != v500)
          {
            objc_enumerationMutation(obj);
          }

          v93 = *(*(&v533 + 1) + 8 * j);
          objc_msgSend_addObject_(v502, v89, v93, v90, v91, v92);
          locale = self->_locale;
          v517 = v93;
          v100 = objc_msgSend_string(v93, v95, v96, v97, v98, v99);
          v513 = objc_msgSend_spellCheckingLocaleForRecognitionLocale_string_(CHRecognizerConfiguration, v101, locale, v100, v102, v103);

          v519 = objc_msgSend_array(MEMORY[0x1E695DF70], v104, v105, v106, v107, v108);
          if (objc_msgSend_count(obj, v109, v110, v111, v112, v113) == 1 && (objc_msgSend_properties(v517, v114, v115, v116, v117, v118) & 4) == 0)
          {
            spellChecker = self->_spellChecker;
            v125 = objc_msgSend_string(v517, v119, v120, v121, v122, v123);
            v127 = objc_msgSend_topCorrectionsForRecognition_contextBeforeToken_contextSeparator_shouldUseErrorModel_forLocale_minScore_(spellChecker, v126, v125, &stru_1EF1C0318, &stru_1EF1C0318, 1, v513, -0.351);

            objc_msgSend_addObjectsFromArray_(v519, v128, v127, v129, v130, v131);
          }

          v132 = v517;
          v142 = v132;
          if (objc_msgSend_count(v519, v133, v134, v135, v136, v137))
          {
            v143 = objc_msgSend_objectAtIndexedSubscript_(v519, v138, 0, v139, v140, v141);
            v152 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v144, v143, self->_customLexicon, v145, v146);
            if (!v152)
            {
              v152 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v147, v143, self->_staticLexicon, v150, v151);
            }

            v153 = objc_msgSend_properties(v132, v147, v148, v149, v150, v151);
            v532 = 0;
            if ((objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v154, v143, self->_staticLexicon, &v532, v155) & 1) != 0 || objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v156, v143, self->_customLexicon, &v532, v157))
            {
              v158 = 4;
              if (v532)
              {
                v158 = 260;
              }

              v159 = v158 | v153;
            }

            else
            {
              v159 = v153 & 0xFFFFFFFFFFFFFEFBLL;
            }

            v160 = [CHTokenizedTextResultToken alloc];
            v515 = objc_msgSend_strokeIndexes(v132, v161, v162, v163, v164, v165);
            objc_msgSend_modelScore(v132, v166, v167, v168, v169, v170);
            v172 = v171;
            objc_msgSend_recognitionScore(v132, v173, v174, v175, v176, v177);
            v179 = v178;
            objc_msgSend_combinedScore(v132, v180, v181, v182, v183, v184);
            v186 = v185;
            objc_msgSend_alignmentScore(v132, v187, v188, v189, v190, v191);
            v193 = v192;
            v199 = objc_msgSend_recognizerSourceLocale(v132, v194, v195, v196, v197, v198);
            v507 = v193;
            v509 = v172;
            v205 = objc_msgSend_inputSources(v132, v200, v201, v202, v203, v204);
            v211 = objc_msgSend_substrokeCount(v132, v206, v207, v208, v209, v210);
            objc_msgSend_bounds(v132, v212, v213, v214, v215, v216);
            v503 = v218;
            v505 = v217;
            v220 = v219;
            v222 = v221;
            objc_msgSend_originalBounds(v132, v223, v224, v225, v226, v227);
            v234 = v233;
            v236 = v235;
            v238 = v237;
            v240 = v239;
            if (v517)
            {
              objc_msgSend_principalLines(v132, v228, v229, v230, v231, v232);
            }

            else
            {
              v530 = 0u;
              v531 = 0u;
              v528 = 0u;
              v529 = 0u;
              v526 = 0u;
              v527 = 0u;
              *buf = 0u;
              v525 = 0u;
            }

            v241 = objc_msgSend_principalPoints(v132, v228, v229, v230, v231, v232);
            v142 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v160, v242, v143, v515, v152, v159, v199, v205 | 0x20, v509, v179 * 0.5, v186 * 0.5, v507, v505, v503, v220, v222, v211, v234, v236, v238, v240, buf, v241, v495);
          }

          v243 = objc_msgSend_objectAtIndexedSubscript_(v512, v138, 0, v139, v140, v141);
          objc_msgSend_addObject_(v243, v244, v142, v245, v246, v247);

          v248 = v132;
          if (objc_msgSend_count(v519, v249, v250, v251, v252, v253) >= 2)
          {
            v258 = objc_msgSend_objectAtIndexedSubscript_(v519, v254, 1, v255, v256, v257);
            v267 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v259, v258, self->_customLexicon, v260, v261);
            if (!v267)
            {
              v267 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v262, v258, self->_staticLexicon, v265, v266);
            }

            v268 = objc_msgSend_properties(v248, v262, v263, v264, v265, v266);
            v532 = 0;
            if (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v269, v258, self->_staticLexicon, &v532, v270) & 1) != 0 || (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v271, v258, self->_customLexicon, &v532, v272))
            {
              v273 = 4;
              if (v532)
              {
                v273 = 260;
              }

              v274 = v273 | v268;
            }

            else
            {
              v274 = v268 & 0xFFFFFFFFFFFFFEFBLL;
            }

            v275 = [CHTokenizedTextResultToken alloc];
            v516 = objc_msgSend_strokeIndexes(v248, v276, v277, v278, v279, v280);
            objc_msgSend_modelScore(v248, v281, v282, v283, v284, v285);
            v287 = v286;
            objc_msgSend_recognitionScore(v248, v288, v289, v290, v291, v292);
            v294 = v293;
            objc_msgSend_combinedScore(v248, v295, v296, v297, v298, v299);
            v301 = v300;
            objc_msgSend_alignmentScore(v248, v302, v303, v304, v305, v306);
            v308 = v307;
            v314 = objc_msgSend_recognizerSourceLocale(v248, v309, v310, v311, v312, v313);
            v508 = v308;
            v510 = v287;
            v320 = objc_msgSend_inputSources(v248, v315, v316, v317, v318, v319);
            v326 = objc_msgSend_substrokeCount(v248, v321, v322, v323, v324, v325);
            objc_msgSend_bounds(v248, v327, v328, v329, v330, v331);
            v504 = v333;
            v506 = v332;
            v335 = v334;
            v337 = v336;
            objc_msgSend_originalBounds(v248, v338, v339, v340, v341, v342);
            v349 = v348;
            v351 = v350;
            v353 = v352;
            v355 = v354;
            if (v517)
            {
              objc_msgSend_principalLines(v248, v343, v344, v345, v346, v347);
            }

            else
            {
              v530 = 0u;
              v531 = 0u;
              v528 = 0u;
              v529 = 0u;
              v526 = 0u;
              v527 = 0u;
              *buf = 0u;
              v525 = 0u;
            }

            v356 = objc_msgSend_principalPoints(v248, v343, v344, v345, v346, v347);
            v358 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v275, v357, v258, v516, v267, v274, v314, v320 | 0x20, v510, v294 * 0.5, v301 * 0.5, v508, v335, v506, v504, v337, v326, v349, v351, v353, v355, buf, v356);

            v248 = v358;
          }

          v359 = objc_msgSend_objectAtIndexedSubscript_(v512, v254, 1, v255, v256, v257);
          objc_msgSend_addObject_(v359, v360, v248, v361, v362, v363);
        }

        v501 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v89, &v533, v538, 16, v92);
      }

      while (v501);
    }
  }

  objc_msgSend_addObject_(v497, v60, v502, v62, v63, v64);
  v369 = objc_msgSend_result(v499, v364, v365, v366, v367, v368);
  v375 = objc_msgSend_transcriptionPathScores(v369, v370, v371, v372, v373, v374);
  v380 = objc_msgSend_objectAtIndexedSubscript_(v375, v376, 0, v377, v378, v379);
  objc_msgSend_addObject_(v498, v381, v380, v382, v383, v384);

  v522 = 0u;
  v523 = 0u;
  v520 = 0u;
  v521 = 0u;
  v385 = v512;
  v392 = objc_msgSend_countByEnumeratingWithState_objects_count_(v385, v386, &v520, v537, 16, v387);
  if (v392)
  {
    v393 = *v521;
    do
    {
      for (k = 0; k != v392; ++k)
      {
        if (*v521 != v393)
        {
          objc_enumerationMutation(v385);
        }

        v395 = *(*(&v520 + 1) + 8 * k);
        if ((objc_msgSend_isEqual_(v395, v388, v502, v389, v390, v391) & 1) == 0)
        {
          objc_msgSend_addObject_(v497, v388, v395, v389, v390, v391);
          v401 = objc_msgSend_result(v499, v396, v397, v398, v399, v400);
          v407 = objc_msgSend_transcriptionPathScores(v401, v402, v403, v404, v405, v406);
          v412 = objc_msgSend_objectAtIndexedSubscript_(v407, v408, 0, v409, v410, v411);
          objc_msgSend_addObject_(v498, v413, v412, v414, v415, v416);
        }
      }

      v392 = objc_msgSend_countByEnumeratingWithState_objects_count_(v385, v388, &v520, v537, 16, v391);
    }

    while (v392);
  }

  for (m = 1; ; ++m)
  {
    v423 = objc_msgSend_result(v499, v417, v418, v419, v420, v421);
    v429 = objc_msgSend_transcriptionPaths(v423, v424, v425, v426, v427, v428);
    v435 = m < objc_msgSend_count(v429, v430, v431, v432, v433, v434);

    if (!v435)
    {
      break;
    }

    v441 = objc_msgSend_result(v499, v436, v437, v438, v439, v440);
    v447 = objc_msgSend_result(v499, v442, v443, v444, v445, v446);
    v453 = objc_msgSend_transcriptionPaths(v447, v448, v449, v450, v451, v452);
    v458 = objc_msgSend_objectAtIndexedSubscript_(v453, v454, m, v455, v456, v457);
    v463 = objc_msgSend_tokensFromTranscriptionPath_(v441, v459, v458, v460, v461, v462);

    objc_msgSend_addObject_(v497, v464, v463, v465, v466, v467);
    v473 = objc_msgSend_result(v499, v468, v469, v470, v471, v472);
    v479 = objc_msgSend_transcriptionPathScores(v473, v474, v475, v476, v477, v478);
    v484 = objc_msgSend_objectAtIndexedSubscript_(v479, v480, m, v481, v482, v483);
    objc_msgSend_addObject_(v498, v485, v484, v486, v487, v488);
  }

  v489 = objc_msgSend_result(v499, v436, v437, v438, v439, v440);
  v493 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v489, v490, v497, v498, v491, v492);
  if (v499)
  {
    objc_storeStrong(v499 + 3, v493);
  }

  return v499;
}

@end