@interface CHRemoveSpacesFromSpecialFieldsStep
- (CHRemoveSpacesFromSpecialFieldsStep)initWithPatternFst:(id)fst patternType:(int64_t)type capitalizationToSplit:(BOOL)split convertToLowercase:(BOOL)lowercase;
- (id)process:(id)process options:(id)options;
@end

@implementation CHRemoveSpacesFromSpecialFieldsStep

- (CHRemoveSpacesFromSpecialFieldsStep)initWithPatternFst:(id)fst patternType:(int64_t)type capitalizationToSplit:(BOOL)split convertToLowercase:(BOOL)lowercase
{
  fstCopy = fst;
  v15.receiver = self;
  v15.super_class = CHRemoveSpacesFromSpecialFieldsStep;
  v12 = [(CHRemoveSpacesFromSpecialFieldsStep *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_patternFST, fst);
    v13->_patternType = type;
    v13->_capitalizationToSplit = split;
    v13->_convertToLowercase = lowercase;
  }

  return v13;
}

- (id)process:(id)process options:(id)options
{
  v451 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  selfCopy = self;
  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveSpacesFromSpecialFieldsStep is running", buf, 2u);
  }

  v17 = objc_msgSend_leftContext(processCopy, v7, v8, v9, v10, v11);
  if (v17)
  {
    v18 = objc_msgSend_leftContext(processCopy, v12, v13, v14, v15, v16);
    v24 = objc_msgSend_length(v18, v19, v20, v21, v22, v23) == 0;

    if (v24)
    {
      v420 = &stru_1EF1C0318;
    }

    else
    {
      v28 = objc_msgSend_leftContext(processCopy, v12, v25, v26, v27, v16);
      v34 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v29, v30, v31, v32, v33);
      v420 = objc_msgSend_stringByTrimmingCharactersInSet_(v28, v35, v34, v36, v37, v38);

      v44 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v39, v40, v41, v42, v43);
      v49 = objc_msgSend_componentsSeparatedByCharactersInSet_(v420, v45, v44, v46, v47, v48);

      if (objc_msgSend_count(v49, v50, v51, v52, v53, v54) >= 2)
      {
        v407 = processCopy;
        v418 = v420;
        v420 = &stru_1EF1C0318;
        goto LABEL_46;
      }
    }

    self = selfCopy;
  }

  else
  {
    v420 = &stru_1EF1C0318;
  }

  v418 = objc_msgSend_rootCursorForPatternType_inNetwork_forFirstSegmentGroup_(CHPatternNetwork, v12, self->_patternType, self->_patternFST, 0, v16);
  v419 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v55, v420, v418, self->_patternFST, v56);
  if (v419)
  {
    v415 = objc_msgSend_array(MEMORY[0x1E695DF70], v57, v58, v59, v60, v61);
    v416 = objc_msgSend_array(MEMORY[0x1E695DF70], v62, v63, v64, v65, v66);
    for (i = 0; ; ++i)
    {
      v72 = objc_msgSend_result(processCopy, v67, v68, v69, v70, v71);
      v78 = objc_msgSend_transcriptionPaths(v72, v73, v74, v75, v76, v77);
      v84 = i < objc_msgSend_count(v78, v79, v80, v81, v82, v83);

      if (!v84)
      {
        break;
      }

      v90 = objc_msgSend_result(processCopy, v85, v86, v87, v88, v89);
      v96 = objc_msgSend_transcriptionPaths(v90, v91, v92, v93, v94, v95);
      v422 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, i, v98, v99, v100);

      v101 = v419;
      v429 = objc_msgSend_array(MEMORY[0x1E695DF70], v102, v103, v104, v105, v106);
      v430 = objc_msgSend_array(MEMORY[0x1E695DF70], v107, v108, v109, v110, v111);
      for (j = 0; j < objc_msgSend_length(v422, v112, v113, v114, v115, v116); ++j)
      {
        v121 = objc_msgSend_indexAtPosition_(v422, v117, j, v118, v119, v120);
        v127 = objc_msgSend_result(processCopy, v122, v123, v124, v125, v126);
        v133 = objc_msgSend_tokenColumns(v127, v128, v129, v130, v131, v132);
        v138 = objc_msgSend_objectAtIndexedSubscript_(v133, v134, j, v135, v136, v137);
        v144 = objc_msgSend_textTokenRows(v138, v139, v140, v141, v142, v143);
        v149 = objc_msgSend_objectAtIndexedSubscript_(v144, v145, v121, v146, v147, v148);

        v448 = 0u;
        v449 = 0u;
        v446 = 0u;
        v447 = 0u;
        obj = v149;
        v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v150, &v446, v450, 16, v151);
        if (v152)
        {
          v431 = *v447;
          do
          {
            v433 = v152;
            v153 = 0;
            v154 = v101;
            do
            {
              v435 = v154;
              if (*v447 != v431)
              {
                objc_enumerationMutation(obj);
              }

              v155 = *(*(&v446 + 1) + 8 * v153);
              v161 = objc_msgSend_string(v155, v156, v157, v158, v159, v160);
              v437 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v162, v161, v154, selfCopy->_patternFST, v163);

              v169 = objc_msgSend_string(v155, v164, v165, v166, v167, v168);
              v175 = objc_msgSend_firstComposedCharacter(v169, v170, v171, v172, v173, v174);
              v181 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x1E696AB08], v176, v177, v178, v179, v180);
              v182 = v175;
              v183 = v181;
              if (objc_msgSend_length(v182, v184, v185, v186, v187, v188))
              {
                v193 = objc_msgSend_indexesOfCharacters_(v182, v189, v183, v190, v191, v192);
                v199 = objc_msgSend_count(v193, v194, v195, v196, v197, v198);
                v205 = v199 == objc_msgSend_length(v182, v200, v201, v202, v203, v204);
              }

              else
              {
                v205 = 0;
              }

              v211 = v155;
              if (v437)
              {
                if (!v205 || (v211 = v155, !selfCopy->_capitalizationToSplit))
                {
                  v217 = objc_msgSend_string(v155, v206, v207, v208, v209, v210);
                  if (selfCopy->_convertToLowercase)
                  {
                    v218 = objc_msgSend_string(v155, v212, v213, v214, v215, v216);
                    v224 = objc_msgSend_lowercaseString(v218, v219, v220, v221, v222, v223);

                    v217 = v224;
                  }

                  v225 = objc_msgSend_properties(v155, v212, v213, v214, v215, v216);
                  v434 = objc_msgSend_strokeIndexes(v155, v226, v227, v228, v229, v230);
                  v236 = objc_msgSend_wordID(v155, v231, v232, v233, v234, v235);
                  objc_msgSend_modelScore(v155, v237, v238, v239, v240, v241);
                  v243 = v242;
                  objc_msgSend_recognitionScore(v155, v244, v245, v246, v247, v248);
                  v250 = v249;
                  objc_msgSend_combinedScore(v155, v251, v252, v253, v254, v255);
                  v257 = v256;
                  objc_msgSend_alignmentScore(v155, v258, v259, v260, v261, v262);
                  v264 = v263;
                  v270 = objc_msgSend_recognizerSourceLocale(v155, v265, v266, v267, v268, v269);
                  v425 = v264;
                  v426 = v257;
                  v427 = v250;
                  v428 = v243;
                  v276 = objc_msgSend_inputSources(v155, v271, v272, v273, v274, v275);
                  v282 = objc_msgSend_substrokeCount(v155, v277, v278, v279, v280, v281);
                  objc_msgSend_bounds(v155, v283, v284, v285, v286, v287);
                  v289 = v288;
                  v291 = v290;
                  v293 = v292;
                  v295 = v294;
                  objc_msgSend_originalBounds(v155, v296, v297, v298, v299, v300);
                  v307 = v306;
                  v309 = v308;
                  v311 = v310;
                  v313 = v312;
                  if (v155)
                  {
                    objc_msgSend_principalLines(v155, v301, v302, v303, v304, v305);
                  }

                  else
                  {
                    v444 = 0u;
                    v445 = 0u;
                    v442 = 0u;
                    v443 = 0u;
                    v440 = 0u;
                    v441 = 0u;
                    *buf = 0u;
                    v439 = 0u;
                  }

                  v314 = objc_msgSend_principalPoints(v155, v301, v302, v303, v304, v305);
                  v211 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v315, v217, v434, v236, v225 & 0xFFFFFFFFFFFFFF9FLL | 0x40, v270, v276 | 0x200, v428, v427, v426, v425, v289, v291, v293, v295, v282, v307, v309, v311, v313, buf, v314);
                }
              }

              if (objc_msgSend_isTopOriginal(v155, v206, v207, v208, v209, v210))
              {
                objc_msgSend_addObject_(v429, v316, v155, v317, v318, v319);
              }

              else
              {
                objc_msgSend_addObject_(v429, v316, v211, v317, v318, v319);
              }

              objc_msgSend_addObject_(v430, v320, v211, v321, v322, v323);
              v324 = MEMORY[0x1E696AEC0];
              v330 = objc_msgSend_result(processCopy, v325, v326, v327, v328, v329);
              v335 = objc_msgSend_precedingSeparatorForToken_(v330, v331, v211, v332, v333, v334);
              v341 = objc_msgSend_string(v211, v336, v337, v338, v339, v340);
              v346 = objc_msgSend_stringWithFormat_(v324, v342, @"%@%@", v343, v344, v345, v335, v341);

              v101 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v347, v346, v435, selfCopy->_patternFST, v348);
              ++v153;
              v154 = v101;
            }

            while (v433 != v153);
            v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v349, &v446, v450, 16, v350);
          }

          while (v152);
        }
      }

      objc_msgSend_addObject_(v415, v117, v430, v118, v119, v120);
      v356 = objc_msgSend_result(processCopy, v351, v352, v353, v354, v355);
      v362 = objc_msgSend_transcriptionPathScores(v356, v357, v358, v359, v360, v361);
      v367 = objc_msgSend_objectAtIndexedSubscript_(v362, v363, i, v364, v365, v366);
      objc_msgSend_addObject_(v416, v368, v367, v369, v370, v371);

      if ((objc_msgSend_modifiesOriginalTokens(selfCopy, v372, v373, v374, v375, v376) & 1) == 0 && (objc_msgSend_isEqualToArray_(v429, v377, v430, v378, v379, v380) & 1) == 0)
      {
        objc_msgSend_addObject_(v415, v381, v429, v382, v383, v384);
        v390 = objc_msgSend_result(processCopy, v385, v386, v387, v388, v389);
        v396 = objc_msgSend_transcriptionPathScores(v390, v391, v392, v393, v394, v395);
        v401 = objc_msgSend_objectAtIndexedSubscript_(v396, v397, i, v398, v399, v400);
        objc_msgSend_addObject_(v416, v402, v401, v403, v404, v405);
      }
    }

    v409 = objc_msgSend_result(processCopy, v85, v86, v87, v88, v89);
    v413 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v409, v410, v415, v416, v411, v412);
    if (processCopy)
    {
      objc_storeStrong(processCopy + 3, v413);
    }

    v414 = processCopy;
    v49 = v419;
  }

  else
  {
    v406 = processCopy;
    v49 = 0;
  }

LABEL_46:

  return processCopy;
}

@end