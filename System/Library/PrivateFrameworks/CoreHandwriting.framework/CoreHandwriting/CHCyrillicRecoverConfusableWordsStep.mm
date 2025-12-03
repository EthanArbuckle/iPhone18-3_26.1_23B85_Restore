@interface CHCyrillicRecoverConfusableWordsStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHCyrillicRecoverConfusableWordsStep

- (id)process:(id)process options:(id)options
{
  v532 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  v499 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v498 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  v20 = objc_msgSend_leftContext(processCopy, v15, v16, v17, v18, v19);
  v495 = sub_1837A4FC0(v20);

  v527 = 0;
  v528 = &v527;
  v529 = 0x2020000000;
  v530 = 0;
  v523 = 0;
  v524 = &v523;
  v525 = 0x2020000000;
  v526 = 0;
  v26 = objc_msgSend_leftContext(processCopy, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_leftContext(processCopy, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_length(v32, v33, v34, v35, v36, v37);
  v522[0] = MEMORY[0x1E69E9820];
  v522[1] = 3221225472;
  v522[2] = sub_1839B3E38;
  v522[3] = &unk_1E6DE0BA0;
  v522[4] = self;
  v522[5] = &v527;
  v522[6] = &v523;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v26, v39, 0, v38, 3, v522);

  v502 = objc_msgSend_array(MEMORY[0x1E695DF70], v40, v41, v42, v43, v44);
  v50 = 0;
  v500 = 0;
  v501 = 0;
  while (1)
  {
    v51 = objc_msgSend_result(processCopy, v45, v46, v47, v48, v49);
    v57 = v50 < objc_msgSend_tokenColumnCount(v51, v52, v53, v54, v55, v56);

    if (!v57)
    {
      break;
    }

    v63 = objc_msgSend_result(processCopy, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_result(processCopy, v64, v65, v66, v67, v68);
    v75 = objc_msgSend_transcriptionPaths(v69, v70, v71, v72, v73, v74);
    v80 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 0, v77, v78, v79);
    v84 = objc_msgSend_tokensInTranscriptionPath_atColumnIndex_(v63, v81, v80, v50, v82, v83);

    objc_msgSend_addObject_(v502, v85, v84, v86, v87, v88);
    v521 = 0;
    sub_1839B28CC(self, v84, &v521 + 1, &v521);
    v89 = v521;
    v90 = HIBYTE(v521);

    v500 += v89;
    v501 += v90;
    ++v50;
  }

  v496 = objc_msgSend_array(MEMORY[0x1E695DF70], v58, v59, v60, v61, v62);
  v497 = objc_msgSend_array(MEMORY[0x1E695DF70], v91, v92, v93, v94, v95);
  v503 = 0;
  objc_msgSend_result(processCopy, v96, v97, v98, v99, v100);
  while (1)
    v101 = {;
    v107 = v503 < objc_msgSend_tokenColumnCount(v101, v102, v103, v104, v105, v106);

    if (!v107)
    {
      break;
    }

    v112 = objc_msgSend_objectAtIndexedSubscript_(v502, v108, v503, v109, v110, v111);
    v521 = 0;
    sub_1839B28CC(self, v112, &v521 + 1, &v521);
    v118 = objc_msgSend_count(v112, v113, v114, v115, v116, v117);
    v123 = objc_msgSend_objectAtIndexedSubscript_(v112, v119, 0, v120, v121, v122);
    v510 = v112;
    v129 = objc_msgSend_string(v123, v124, v125, v126, v127, v128);
    v135 = objc_msgSend_length(v129, v130, v131, v132, v133, v134);
    v136 = v118 != 1;

    v141 = v135 > 6 || v136;
    if ((v141 & 1) != 0 || v521 == HIBYTE(v521))
    {
      v149 = v510;
      objc_msgSend_addObjectsFromArray_(v496, v137, v510, v138, v139, v140);
      objc_msgSend_addObjectsFromArray_(v497, v150, v510, v151, v152, v153);
      goto LABEL_91;
    }

    v520 = 0;
    v142 = v510;
    if (v503)
    {
      v143 = objc_msgSend_objectAtIndexedSubscript_(v502, v137, v503 - 1, v138, v139, v140);
      sub_1839B28CC(self, v143, &v520 + 1, &v520);

      v142 = v510;
    }

    else
    {
      sub_1839B2B50(self, v495, &v520 + 1, &v520);
    }

    v155 = HIBYTE(v521) == HIBYTE(v520) && v520 == v521;
    if ((v520 & 0x100) != 0)
    {
      if (!v155)
      {
        goto LABEL_23;
      }
    }

    else if (!v155 && (v520 & 1) != 0)
    {
LABEL_23:
      v156 = objc_msgSend_firstObject(v142, v144, v145, v146, v147, v148);
      v162 = (objc_msgSend_properties(v156, v157, v158, v159, v160, v161) & 0x20) == 0;

      v142 = v510;
      goto LABEL_26;
    }

    v162 = 0;
LABEL_26:
    v519 = 0;
    if (v503 < objc_msgSend_count(v502, v144, v145, v146, v147, v148) - 1)
    {
      v167 = objc_msgSend_objectAtIndexedSubscript_(v502, v163, v503 + 1, v164, v165, v166);
      sub_1839B28CC(self, v167, &v519 + 1, &v519);

      v142 = v510;
    }

    v169 = HIBYTE(v521) == HIBYTE(v519) && v521 == v519 || v155;
    if (v169)
    {
      v170 = 0;
      v171 = 0;
      if ((v521 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v172 = objc_msgSend_objectAtIndexedSubscript_(v142, v163, 0, v164, v165, v166);
      v178 = objc_msgSend_string(v172, v173, v174, v175, v176, v177);
      v170 = objc_msgSend_length(v178, v179, v180, v181, v182, v183) < 3;

      if ((v521 & 1) == 0)
      {
        v171 = 0;
        v185 = HIBYTE(v521);
        if (HIBYTE(v521) == 1)
        {
LABEL_42:
          v184 = v520 | v519;
          if (!v171)
          {
            goto LABEL_43;
          }

          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    if ((v520 & 0x100) != 0)
    {
      v184 = 1;
      goto LABEL_47;
    }

    v171 = 1;
    v184 = 1;
    if ((v519 & 0x100) == 0)
    {
LABEL_41:
      v185 = HIBYTE(v521);
      if (HIBYTE(v521) == 1)
      {
        goto LABEL_42;
      }

LABEL_46:
      v184 = 0;
      if (!v171)
      {
LABEL_43:
        v186 = v184 & ((v528[3] + v500) / (v524[3] + v501) > 1.0);
        if (v185)
        {
          goto LABEL_48;
        }

        goto LABEL_44;
      }
    }

LABEL_47:
    v186 = v184 & ((v524[3] + v501) / (v528[3] + v500) > 1.0);
    if ((v521 & 0x100) != 0)
    {
LABEL_48:
      v187 = objc_msgSend_objectAtIndexedSubscript_(v510, v163, 0, v164, v165, v166);
      v193 = objc_msgSend_string(v187, v198, v199, v200, v201, v202);
      v509 = objc_msgSend_transformLatinToCyrillic_(CHLanguageUtilities, v203, v193, v204, v205, v206);
      goto LABEL_49;
    }

LABEL_44:
    v187 = objc_msgSend_objectAtIndexedSubscript_(v510, v163, 0, v164, v165, v166);
    v193 = objc_msgSend_string(v187, v188, v189, v190, v191, v192);
    v509 = objc_msgSend_transformCyrillicToLatin_(CHLanguageUtilities, v194, v193, v195, v196, v197);
LABEL_49:

    v511 = objc_msgSend_objectAtIndexedSubscript_(v510, v207, 0, v208, v209, v210);
    v216 = objc_msgSend_result(processCopy, v211, v212, v213, v214, v215);
    v221 = objc_msgSend_tokenRowsAtColumnIndex_(v216, v217, v503, v218, v219, v220);

    v517 = 0u;
    v518 = 0u;
    v515 = 0u;
    v516 = 0u;
    obj = v221;
    v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v222, &v515, v531, 16, v223);
    if (!v229)
    {

      goto LABEL_89;
    }

    v513 = *v516;
    v507 = 0;
    v508 = v170 || v162;
    v506 = v186 | v162;
    v230 = -1.0;
    do
    {
      for (i = 0; i != v229; ++i)
      {
        if (*v516 != v513)
        {
          objc_enumerationMutation(obj);
        }

        v232 = *(*(&v515 + 1) + 8 * i);
        if (objc_msgSend_count(v232, v224, v225, v226, v227, v228) <= 1)
        {
          v233 = objc_msgSend_objectAtIndexedSubscript_(v232, v224, 0, v226, v227, v228);
          v239 = objc_msgSend_string(v233, v234, v235, v236, v237, v238);
          if (objc_msgSend_length(v239, v240, v241, v242, v243, v244) >= 7)
          {

LABEL_59:
            continue;
          }

          v249 = objc_msgSend_objectAtIndexedSubscript_(v232, v245, 0, v246, v247, v248);
          v255 = objc_msgSend_string(v249, v250, v251, v252, v253, v254);
          v260 = objc_msgSend_objectAtIndexedSubscript_(v510, v256, 0, v257, v258, v259);
          v266 = objc_msgSend_string(v260, v261, v262, v263, v264, v265);
          isEqualToString = objc_msgSend_isEqualToString_(v255, v267, v266, v268, v269, v270);

          if ((isEqualToString & 1) == 0)
          {
            v272 = objc_msgSend_objectAtIndexedSubscript_(v232, v224, 0, v226, v227, v228);
            v278 = objc_msgSend_string(v272, v273, v274, v275, v276, v277);
            v284 = objc_msgSend_length(v278, v279, v280, v281, v282, v283) == 1;

            if ((v284 & v508) != 1)
            {
              goto LABEL_78;
            }

            v514 = 0;
            sub_1839B28CC(self, v232, &v514 + 1, &v514);
            v290 = HIBYTE(v514) == HIBYTE(v520) && v514 == v520;
            if (HIBYTE(v514) == HIBYTE(v519) && v514 == v519)
            {
              v290 = 1;
            }

            if (((HIBYTE(v514) | v514) & 1) != 0 && v290 && (objc_msgSend_objectAtIndexedSubscript_(v232, v285, 0, v286, v287, v288), v292 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recognitionScore(v292, v293, v294, v295, v296, v297), v299 = v298 > v230, v292, v299))
            {
              v300 = objc_msgSend_objectAtIndexedSubscript_(v232, v285, 0, v286, v287, v288);

              v305 = objc_msgSend_objectAtIndexedSubscript_(v232, v301, 0, v302, v303, v304);
              objc_msgSend_recognitionScore(v305, v306, v307, v308, v309, v310);
              v230 = v311;

              v507 = 1;
            }

            else
            {
LABEL_78:
              v300 = v511;
            }

            v312 = objc_msgSend_objectAtIndexedSubscript_(v232, v285, 0, v286, v287, v288);
            v318 = objc_msgSend_string(v312, v313, v314, v315, v316, v317);
            v323 = objc_msgSend_containsObject_(v509, v319, v318, v320, v321, v322);

            if (!v323 || ((objc_msgSend_objectAtIndexedSubscript_(v232, v224, 0, v226, v227, v228), v324 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recognitionScore(v324, v325, v326, v327, v328, v329), ((v330 > v230) & v507) == 0) ? (v331 = v330 > v230) : (v331 = v506), v324, !v331))
            {
              v511 = v300;
              continue;
            }

            v511 = objc_msgSend_objectAtIndexedSubscript_(v232, v224, 0, v226, v227, v228);

            v233 = objc_msgSend_objectAtIndexedSubscript_(v232, v332, 0, v333, v334, v335);
            objc_msgSend_recognitionScore(v233, v336, v337, v338, v339, v340);
            v230 = v341;
            v507 = v506;
            goto LABEL_59;
          }
        }
      }

      v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v224, &v515, v531, 16, v228);
    }

    while (v229);

    if (v507)
    {
      objc_msgSend_addObject_(v496, v342, v511, v343, v344, v345);
      v350 = objc_msgSend_objectAtIndexedSubscript_(v510, v346, 0, v347, v348, v349);
      objc_msgSend_addObject_(v497, v351, v350, v352, v353, v354);

      goto LABEL_90;
    }

LABEL_89:
    v355 = objc_msgSend_objectAtIndexedSubscript_(v510, v342, 0, v343, v344, v345);
    objc_msgSend_addObject_(v496, v356, v355, v357, v358, v359);

    objc_msgSend_addObject_(v497, v360, v511, v361, v362, v363);
LABEL_90:

    v149 = v510;
LABEL_91:

    ++v503;
    objc_msgSend_result(processCopy, v364, v365, v366, v367, v368);
  }

  if ((objc_msgSend_isEqual_(v496, v108, v497, v109, v110, v111) & 1) == 0)
  {
    objc_msgSend_addObject_(v499, v369, v496, v370, v371, v372);
    v378 = objc_msgSend_result(processCopy, v373, v374, v375, v376, v377);
    v384 = objc_msgSend_transcriptionPathScores(v378, v379, v380, v381, v382, v383);
    v389 = objc_msgSend_objectAtIndexedSubscript_(v384, v385, 0, v386, v387, v388);
    objc_msgSend_addObject_(v498, v390, v389, v391, v392, v393);
  }

  objc_msgSend_addObject_(v499, v369, v497, v370, v371, v372);
  v399 = objc_msgSend_result(processCopy, v394, v395, v396, v397, v398);
  v405 = objc_msgSend_transcriptionPathScores(v399, v400, v401, v402, v403, v404);
  v410 = objc_msgSend_objectAtIndexedSubscript_(v405, v406, 0, v407, v408, v409);
  objc_msgSend_addObject_(v498, v411, v410, v412, v413, v414);

  for (j = 1; ; ++j)
  {
    v421 = objc_msgSend_result(processCopy, v415, v416, v417, v418, v419);
    v427 = objc_msgSend_transcriptionPaths(v421, v422, v423, v424, v425, v426);
    v433 = j < objc_msgSend_count(v427, v428, v429, v430, v431, v432);

    if (!v433)
    {
      break;
    }

    v439 = objc_msgSend_result(processCopy, v434, v435, v436, v437, v438);
    v445 = objc_msgSend_result(processCopy, v440, v441, v442, v443, v444);
    v451 = objc_msgSend_transcriptionPaths(v445, v446, v447, v448, v449, v450);
    v456 = objc_msgSend_objectAtIndexedSubscript_(v451, v452, j, v453, v454, v455);
    v461 = objc_msgSend_tokensFromTranscriptionPath_(v439, v457, v456, v458, v459, v460);

    objc_msgSend_addObject_(v499, v462, v461, v463, v464, v465);
    v471 = objc_msgSend_result(processCopy, v466, v467, v468, v469, v470);
    v477 = objc_msgSend_transcriptionPathScores(v471, v472, v473, v474, v475, v476);
    v482 = objc_msgSend_objectAtIndexedSubscript_(v477, v478, j, v479, v480, v481);
    objc_msgSend_addObject_(v498, v483, v482, v484, v485, v486);
  }

  v487 = objc_msgSend_result(processCopy, v434, v435, v436, v437, v438);
  v491 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v487, v488, v499, v498, v489, v490);
  if (processCopy)
  {
    objc_storeStrong(processCopy + 3, v491);
  }

  v492 = processCopy;
  _Block_object_dispose(&v523, 8);
  _Block_object_dispose(&v527, 8);

  return v492;
}

@end