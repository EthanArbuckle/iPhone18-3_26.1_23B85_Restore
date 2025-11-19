@interface CHRemoveSpacesFromStrongURLsAndEmailsStep
- (CHRemoveSpacesFromStrongURLsAndEmailsStep)initWithPatternFst:(id)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHRemoveSpacesFromStrongURLsAndEmailsStep

- (CHRemoveSpacesFromStrongURLsAndEmailsStep)initWithPatternFst:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHRemoveSpacesFromStrongURLsAndEmailsStep;
  v6 = [(CHRemoveSpacesFromStrongURLsAndEmailsStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_patternFST, a3);
  }

  return v7;
}

- (id)process:(id)a3 options:(id)a4
{
  v536 = *MEMORY[0x1E69E9840];
  v498 = a3;
  v491 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v504 = self;
  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveSpacesFromStrongURLsAndEmailsStep is running", buf, 2u);
  }

  v496 = objc_msgSend_leftContext(v498, v7, v8, v9, v10, v11);
  if (objc_msgSend_length(v496, v12, v13, v14, v15, v16))
  {
    v22 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v17, v18, v19, v20, v21);
    v26 = objc_msgSend_rangeOfCharacterFromSet_options_(v496, v23, v22, 4, v24, v25);
    v28 = v27;

    if (v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = objc_msgSend_substringFromIndex_(v496, v17, v26 + v28, v19, v20, v21);

      v496 = v29;
    }
  }

  if (objc_msgSend_length(v496, v17, v18, v19, v20, v21))
  {
    v35 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v30, v31, v32, v33, v34);
    v40 = objc_msgSend_stringByTrimmingCharactersInSet_(v496, v36, v35, v37, v38, v39);

    v46 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v41, v42, v43, v44, v45);
    v51 = objc_msgSend_componentsSeparatedByCharactersInSet_(v40, v47, v46, v48, v49, v50);

    v57 = objc_msgSend_count(v51, v52, v53, v54, v55, v56);
    v492 = objc_msgSend_objectAtIndexedSubscript_(v51, v58, v57 - 1, v59, v60, v61);

    v496 = v40;
  }

  else
  {
    v492 = &stru_1EF1C0318;
  }

  v62 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v30, v31, v32, v33, v34);
  v67 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v63, &stru_1EF1C0318, v64, v65, v66);
  v68 = *MEMORY[0x1E695F050];
  v69 = *(MEMORY[0x1E695F050] + 8);
  v70 = *(MEMORY[0x1E695F050] + 16);
  v71 = *(MEMORY[0x1E695F050] + 24);
  *buf = *MEMORY[0x1E695EFF8];
  *&buf[16] = *buf;
  *&buf[32] = *buf;
  v531 = *buf;
  v532 = *buf;
  v533 = *buf;
  v534 = *buf;
  v535 = *buf;
  v495 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v72, v492, v62, 0, 0, v67, 0, 0.0, 0.0, 0.0, 0.0, 0, v68, v69, v70, v71, buf, MEMORY[0x1E695E0F0]);

  v493 = objc_msgSend_array(MEMORY[0x1E695DF70], v73, v74, v75, v76, v77);
  v494 = objc_msgSend_array(MEMORY[0x1E695DF70], v78, v79, v80, v81, v82);
  v497 = 0;
  v506 = 0;
  v502 = 0;
  while (1)
  {
    v88 = objc_msgSend_result(v498, v83, v84, v85, v86, v87);
    v94 = objc_msgSend_transcriptionPaths(v88, v89, v90, v91, v92, v93);
    v100 = v497 < objc_msgSend_count(v94, v95, v96, v97, v98, v99);

    if (!v100)
    {
      break;
    }

    v106 = objc_msgSend_result(v498, v101, v102, v103, v104, v105);
    v112 = objc_msgSend_transcriptionPaths(v106, v107, v108, v109, v110, v111);
    v499 = objc_msgSend_objectAtIndexedSubscript_(v112, v113, v497, v114, v115, v116);

    v503 = objc_msgSend_array(MEMORY[0x1E695DF70], v117, v118, v119, v120, v121);
    objc_msgSend_addObject_(v503, v122, v495, v123, v124, v125);
    v131 = objc_msgSend_result(v498, v126, v127, v128, v129, v130);
    v136 = objc_msgSend_tokensFromTranscriptionPath_(v131, v132, v499, v133, v134, v135);
    objc_msgSend_addObjectsFromArray_(v503, v137, v136, v138, v139, v140);

    v146 = 0;
    v523 = 0;
    v501 = 0;
    v519 = 0;
    range = 0;
    v515 = 0x7FFFFFFFFFFFFFFFLL;
    while (v146 < objc_msgSend_count(v503, v141, v142, v143, v144, v145))
    {
      v151 = objc_msgSend_objectAtIndexedSubscript_(v503, v147, v146, v148, v149, v150);
      v157 = objc_msgSend_string(v151, v152, v153, v154, v155, v156);
      v521 = v146;
      v517 = objc_msgSend_lowercaseString(v157, v158, v159, v160, v161, v162);

      v165 = objc_msgSend_rootCursorForPatternType_inNetwork_forFirstSegmentGroup_(CHPatternNetwork, v163, 11, v504[1], 0, v164);
      v168 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v166, v517, v165, v504[1], v167);

      v171 = objc_msgSend_rootCursorForPatternType_inNetwork_forFirstSegmentGroup_(CHPatternNetwork, v169, 12, v504[1], 0, v170);
      v174 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v172, v517, v171, v504[1], v173);

      v177 = objc_msgSend_rootCursorForPatternType_inNetwork_forFirstSegmentGroup_(CHPatternNetwork, v175, 13, v504[1], 0, v176);
      v180 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v178, v517, v177, v504[1], v179);

      isString_fullPattern_inNetwork = v180 != 0;
      if (!(v168 | v180))
      {

        break;
      }

      v186 = v174;
      v525[0] = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v181, v517, v182, v183, v184);
      v192 = v146;
      if (v146 || !v186)
      {
        if (!v146)
        {
          v193 = 0;
LABEL_28:
          if (!isString_fullPattern_inNetwork)
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

        isCompletePattern = objc_msgSend_isCompletePattern(v168, v187, v188, v189, v190, v191);
        isString_fullPattern_inNetwork = 0;
        if (v186)
        {
          v193 = 1;
        }

        else
        {
          v193 = isCompletePattern;
        }

        if ((v193 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v193 = 1;
      }

LABEL_19:
      if (objc_msgSend_length(v525[0], v187, v188, v189, v190, v191) > v519)
      {
        v519 = objc_msgSend_length(v525[0], v187, v188, v189, v190, v191);
        goto LABEL_32;
      }

LABEL_29:
      if (!v146 || v515 >= v146)
      {
LABEL_37:
        isString_fullPattern_inNetwork = v506;
        v193 = HIDWORD(v506);
        goto LABEL_38;
      }

      isString_fullPattern_inNetwork = objc_msgSend_isString_fullPattern_inNetwork_(CHPatternNetwork, v187, v517, 10, v504[1], v191);
      v197 = objc_msgSend_isString_fullPattern_inNetwork_(CHPatternNetwork, v195, v517, 11, v504[1], v196);
      v193 = v197;
      if ((isString_fullPattern_inNetwork & 1) == 0)
      {
        if (!v197)
        {
          goto LABEL_37;
        }

        if ((v506 & 0x100000000) == 0)
        {
          v193 = 0;
          isString_fullPattern_inNetwork = v506;
          goto LABEL_38;
        }

        if (v502)
        {
          v193 = 1;
          isString_fullPattern_inNetwork = v506;
          goto LABEL_38;
        }
      }

LABEL_32:
      range = 1;
      v515 = v146;
LABEL_38:
      v198 = 2;
      v506 = __PAIR64__(v193, isString_fullPattern_inNetwork);
      while (1)
      {
        v199 = objc_msgSend_count(v503, v187, v188, v189, v190, v191);
        v204 = v192 + v198 - 1;
        if (v204 >= v199)
        {
          break;
        }

        v205 = v186;
        v206 = objc_msgSend_objectAtIndexedSubscript_(v503, v200, v204, v201, v202, v203);
        v212 = objc_msgSend_string(v206, v207, v208, v209, v210, v211);
        v218 = objc_msgSend_lowercaseString(v212, v213, v214, v215, v216, v217);

        v221 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v219, v218, v168, v504[1], v220);
        v224 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v222, v218, v180, v504[1], v223);
        if (!(v221 | v224))
        {

          v180 = 0;
          v168 = v218;
          goto LABEL_62;
        }

        v225 = v221;

        v226 = v224;
        v229 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v227, v218, v205, v504[1], v228);

        v235 = objc_msgSend_isCompletePattern(v225, v230, v231, v232, v233, v234);
        if (v229)
        {
          v241 = 1;
        }

        else
        {
          v241 = v235;
        }

        if (v226)
        {
          if ((objc_msgSend_containsString_(v525[0], v236, @"@", v238, v239, v240) & 1) != 0 || objc_msgSend_containsString_(v218, v236, @"@", v238, v239, v240))
          {
            if (objc_msgSend_containsString_(v525[0], v236, @".", v238, v239, v240))
            {
              v242 = 1;
            }

            else
            {
              v242 = objc_msgSend_containsString_(v218, v236, @".", v238, v239, v240);
            }

            v243 = 1;
LABEL_53:
            objc_msgSend_appendString_(v525[0], v236, v218, v238, v239, v240);
            v523 = v243;
            goto LABEL_54;
          }

          v523 = 0;
        }

        v242 = 0;
        v243 = v523;
        v244 = v241 | v523;
        v523 = 0;
        if (v244)
        {
          goto LABEL_53;
        }

LABEL_54:
        if (((v241 | v242) & 1) != 0 && (v502 |= v229 != 0, objc_msgSend_length(v525[0], v236, v237, v238, v239, v240) > v519))
        {
          v519 = objc_msgSend_length(v525[0], v245, v246, v247, v248, v249);
          v250 = v525[0];

          v501 = v250;
          range = v198;
          v515 = v521;
          HIDWORD(v506) = v241;
        }

        else
        {
          v242 = v506;
        }

        ++v198;
        v180 = v226;
        v186 = v229;
        v168 = v225;
        LODWORD(v506) = v242;
        v192 = v521;
      }

      v205 = v186;
      if (!v168)
      {
        goto LABEL_63;
      }

LABEL_62:

LABEL_63:
      if (v205)
      {
      }

      if (v180)
      {
      }

      v146 = v521 + 1;
    }

    v251 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v506 | BYTE4(v506)) & (v506 | ~BYTE4(v506) | (v519 > 3)))
    {
      v251 = v515;
    }

    v525[0] = v251;
    if (!(BYTE4(v506) & 1 | ((v506 & 1) == 0)))
    {
      v252 = objc_msgSend_containsString_(v501, v147, @"@", v148, v149, v150);
      v253 = v525[0];
      if (!v252)
      {
        v253 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v525[0] = v253;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v254 = qword_1EA84DC58;
    if (os_log_type_enabled(v254, OS_LOG_TYPE_DEBUG))
    {
      v538.location = v525[0];
      v538.length = range;
      v255 = NSStringFromRange(v538);
      *buf = 138413058;
      *&buf[4] = v255;
      *&buf[12] = 2048;
      *&buf[14] = v519;
      *&buf[22] = 1024;
      *&buf[24] = v506 & 1;
      *&buf[28] = 1024;
      *&buf[30] = BYTE4(v506) & 1;
      _os_log_impl(&dword_18366B000, v254, OS_LOG_TYPE_DEBUG, "CHRemoveSpacesFromStrongURLsStep range: %@ stringLength: %li isEmail: %i isUrl: %i", buf, 0x22u);
    }

    v516 = objc_msgSend_array(MEMORY[0x1E695DF70], v256, v257, v258, v259, v260);
    v518 = objc_msgSend_array(MEMORY[0x1E695DF70], v261, v262, v263, v264, v265);
    v500 = 0;
    v505 = 1;
LABEL_81:
    if (v500 < objc_msgSend_length(v499, v266, v267, v268, v269, v270))
    {
      v275 = objc_msgSend_indexAtPosition_(v499, v271, v500, v272, v273, v274);
      v281 = objc_msgSend_result(v498, v276, v277, v278, v279, v280);
      v287 = objc_msgSend_tokenColumns(v281, v282, v283, v284, v285, v286);
      v292 = objc_msgSend_objectAtIndexedSubscript_(v287, v288, v500, v289, v290, v291);
      v298 = objc_msgSend_textTokenRows(v292, v293, v294, v295, v296, v297);
      v303 = objc_msgSend_objectAtIndexedSubscript_(v298, v299, v275, v300, v301, v302);

      v527 = 0u;
      v528 = 0u;
      *&v525[1] = 0u;
      v526 = 0u;
      obj = v303;
      v306 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v304, &v525[1], v529, 16, v305);
      if (!v306)
      {
        goto LABEL_103;
      }

      v520 = *v526;
      while (1)
      {
        v307 = 0;
        v308 = v505;
        v522 = v306;
        v505 += v306;
        do
        {
          if (*v526 != v520)
          {
            objc_enumerationMutation(obj);
          }

          v309 = *(v525[2] + v307);
          v315 = v309;
          v316 = v309;
          if (v525[0] <= v308)
          {
            v316 = v309;
            if (v308 - v525[0] < range)
            {
              v317 = objc_msgSend_properties(v309, v310, v311, v312, v313, v314);
              v323 = v317 | 0x40;
              if ((v506 & 0x100000000) != 0)
              {
                if (v308 <= v525[0])
                {
                  goto LABEL_94;
                }

LABEL_93:
                v323 = v317 & 0xFFFFFFFFFFFFFF9FLL | 0x40;
              }

              else if ((v506 & (v308 > v525[0])) == 1)
              {
                goto LABEL_93;
              }

LABEL_94:
              v513 = objc_msgSend_string(v315, v318, v319, v320, v321, v322);
              v329 = objc_msgSend_lowercaseString(v513, v324, v325, v326, v327, v328);
              v524 = objc_msgSend_strokeIndexes(v315, v330, v331, v332, v333, v334);
              v340 = objc_msgSend_wordID(v315, v335, v336, v337, v338, v339);
              objc_msgSend_modelScore(v315, v341, v342, v343, v344, v345);
              v347 = v346;
              objc_msgSend_recognitionScore(v315, v348, v349, v350, v351, v352);
              v354 = v353;
              objc_msgSend_combinedScore(v315, v355, v356, v357, v358, v359);
              v361 = v360;
              objc_msgSend_alignmentScore(v315, v362, v363, v364, v365, v366);
              v368 = v367;
              v514 = objc_msgSend_recognizerSourceLocale(v315, v369, v370, v371, v372, v373);
              v509 = v368;
              v510 = v361;
              v511 = v354;
              v512 = v347;
              v374 = v329;
              v380 = objc_msgSend_inputSources(v315, v375, v376, v377, v378, v379);
              v386 = objc_msgSend_substrokeCount(v315, v381, v382, v383, v384, v385);
              objc_msgSend_bounds(v315, v387, v388, v389, v390, v391);
              v393 = v392;
              v395 = v394;
              v397 = v396;
              v399 = v398;
              objc_msgSend_originalBounds(v315, v400, v401, v402, v403, v404);
              v411 = v410;
              v413 = v412;
              v415 = v414;
              v417 = v416;
              if (v315)
              {
                objc_msgSend_principalLines(v315, v405, v406, v407, v408, v409);
              }

              else
              {
                v534 = 0u;
                v535 = 0u;
                v532 = 0u;
                v533 = 0u;
                v531 = 0u;
                memset(buf, 0, sizeof(buf));
              }

              v418 = objc_msgSend_principalPoints(v315, v405, v406, v407, v408, v409);
              v316 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v419, v374, v524, v340, v323, v514, v380 | 0x200, v512, v511, v510, v509, v393, v395, v397, v399, v386, v411, v413, v415, v417, buf, v418);
            }
          }

          if (objc_msgSend_isTopOriginal(v315, v310, v311, v312, v313, v314))
          {
            objc_msgSend_addObject_(v516, v420, v315, v421, v422, v423);
          }

          else
          {
            objc_msgSend_addObject_(v516, v420, v316, v421, v422, v423);
          }

          objc_msgSend_addObject_(v518, v424, v316, v425, v426, v427);

          ++v308;
          ++v307;
        }

        while (v522 != v307);
        v306 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v428, &v525[1], v529, 16, v429);
        if (!v306)
        {
LABEL_103:

          ++v500;
          goto LABEL_81;
        }
      }
    }

    objc_msgSend_addObject_(v493, v271, v518, v272, v273, v274);
    v435 = objc_msgSend_result(v498, v430, v431, v432, v433, v434);
    v441 = objc_msgSend_transcriptionPathScores(v435, v436, v437, v438, v439, v440);
    v446 = objc_msgSend_objectAtIndexedSubscript_(v441, v442, v497, v443, v444, v445);
    objc_msgSend_addObject_(v494, v447, v446, v448, v449, v450);

    if ((objc_msgSend_modifiesOriginalTokens(v504, v451, v452, v453, v454, v455) & 1) == 0 && (objc_msgSend_isEqualToArray_(v516, v456, v518, v457, v458, v459) & 1) == 0)
    {
      objc_msgSend_addObject_(v493, v460, v516, v461, v462, v463);
      v469 = objc_msgSend_result(v498, v464, v465, v466, v467, v468);
      v475 = objc_msgSend_transcriptionPathScores(v469, v470, v471, v472, v473, v474);
      v480 = objc_msgSend_objectAtIndexedSubscript_(v475, v476, v497, v477, v478, v479);
      objc_msgSend_addObject_(v494, v481, v480, v482, v483, v484);
    }

    ++v497;
  }

  v485 = objc_msgSend_result(v498, v101, v102, v103, v104, v105);
  v489 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v485, v486, v493, v494, v487, v488);
  if (v498)
  {
    objc_storeStrong(v498 + 3, v489);
  }

  return v498;
}

@end