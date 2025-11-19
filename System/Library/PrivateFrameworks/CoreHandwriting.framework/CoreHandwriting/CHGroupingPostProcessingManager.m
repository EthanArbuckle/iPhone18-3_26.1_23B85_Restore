@interface CHGroupingPostProcessingManager
- (CHGroupingPostProcessingManager)init;
- (CHGroupingPostProcessingManager)initWithSequence:(id)a3 groupingManager:(id)a4;
- (CHGroupingPostProcessingManager)initWithStep:(id)a3 groupingManager:(id)a4;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHGroupingPostProcessingManager

- (CHGroupingPostProcessingManager)init
{
  v6.receiver = self;
  v6.super_class = CHGroupingPostProcessingManager;
  v2 = [(CHGroupingPostProcessingManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    sequence = v2->_sequence;
    v2->_sequence = v3;
  }

  return v2;
}

- (CHGroupingPostProcessingManager)initWithStep:(id)a3 groupingManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  v13 = objc_msgSend_initWithObjects_(v8, v9, v6, v10, v11, v12, 0);
  v17 = objc_msgSend_initWithSequence_groupingManager_(self, v14, v13, v7, v15, v16);

  return v17;
}

- (CHGroupingPostProcessingManager)initWithSequence:(id)a3 groupingManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHGroupingPostProcessingManager;
  v9 = [(CHGroupingPostProcessingManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sequence, a3);
    objc_storeStrong(&v10->_groupingManager, a4);
  }

  return v10;
}

- (id)process:(id)a3 options:(id)a4
{
  v553 = *MEMORY[0x1E69E9840];
  v517 = a3;
  v515 = a4;
  for (i = 0; ; ++i)
  {
    v12 = objc_msgSend_sequence(self, v6, v7, v8, v9, v10);
    v18 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);

    if (i >= v18)
    {
      break;
    }

    v24 = objc_msgSend_sequence(self, v19, v20, v21, v22, v23);
    v29 = objc_msgSend_objectAtIndex_(v24, v25, i, v26, v27, v28);

    v35 = objc_msgSend_groupingManager(self, v30, v31, v32, v33, v34);
    objc_msgSend_setGroupingManager_(v29, v36, v35, v37, v38, v39);

    v45 = objc_msgSend_saveInputDrawings(self, v40, v41, v42, v43, v44);
    objc_msgSend_setSaveInputDrawings_(v29, v46, v45, v47, v48, v49);
    v53 = objc_msgSend_process_options_(v29, v50, v517, v515, v51, v52);

    v517 = v53;
  }

  v54 = v515;
  v514 = v54;
  objc_opt_self();
  if (v54)
  {
    v59 = objc_msgSend_objectForKey_(v54, v55, CHGroupingPostProcessingManagerOptionIgnorePreviousRecognitionResults, v56, v57, v58);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v520 = objc_msgSend_BOOLValue(v59, v60, v61, v62, v63, v64);
    }

    else
    {
      v520 = 0;
    }
  }

  else
  {
    v520 = 0;
  }

  v65 = v517;
  v527 = v65;
  if (self)
  {
    if (v65)
    {
      v66 = v65[9];
    }

    else
    {
      v66 = 0;
    }

    v67 = MEMORY[0x1E695DFA8];
    v68 = v66;
    v74 = objc_msgSend_count(v68, v69, v70, v71, v72, v73);
    v523 = objc_msgSend_setWithCapacity_(v67, v75, v74, v76, v77, v78);

    v518 = objc_msgSend_set(MEMORY[0x1E695DFA8], v79, v80, v81, v82, v83);
    v89 = objc_msgSend_previousProcessedStrokeGroupingResult(v527, v84, v85, v86, v87, v88);
    v95 = objc_msgSend_strokeGroups(v89, v90, v91, v92, v93, v94);
    v516 = objc_msgSend_mutableCopy(v95, v96, v97, v98, v99, v100);

    v524 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v101, v102, v103, v104, v105);
    v111 = objc_msgSend_previousProcessedStrokeGroupingResult(v527, v106, v107, v108, v109, v110);
    v117 = objc_msgSend_strokeGroups(v111, v112, v113, v114, v115, v116);
    v522 = objc_msgSend_mutableCopy(v117, v118, v119, v120, v121, v122);

    v547 = 0u;
    v548 = 0u;
    v545 = 0u;
    v546 = 0u;
    v123 = v527;
    if (v527)
    {
      v123 = v527[9];
    }

    obj = v123;
    v525 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v124, &v545, v552, 16, v125);
    if (v525)
    {
      v521 = *v546;
      do
      {
        for (j = 0; j != v525; ++j)
        {
          if (*v546 != v521)
          {
            objc_enumerationMutation(obj);
          }

          v532 = *(*(&v545 + 1) + 8 * j);
          v541 = 0u;
          v542 = 0u;
          v543 = 0u;
          v544 = 0u;
          v528 = v522;
          v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v528, v126, &v541, v551, 16, v127);
          if (v133)
          {
            v134 = *v542;
LABEL_22:
            v135 = 0;
            while (1)
            {
              if (*v542 != v134)
              {
                objc_enumerationMutation(v528);
              }

              v136 = *(*(&v541 + 1) + 8 * v135);
              v137 = objc_msgSend_strokeIdentifiers(v532, v128, v129, v130, v131, v132);
              v143 = objc_msgSend_strokeIdentifiers(v136, v138, v139, v140, v141, v142);
              isEqualToSet = objc_msgSend_isEqualToSet_(v137, v144, v143, v145, v146, v147);

              if (isEqualToSet)
              {
                break;
              }

              if (v133 == ++v135)
              {
                v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v528, v128, &v541, v551, 16, v132);
                if (!v133)
                {
                  goto LABEL_28;
                }

                goto LABEL_22;
              }
            }

            if ((v520 & 1) != 0 || (objc_msgSend_previousProcessedRecognizedResultsByGroupID(v527, v128, v129, v130, v131, v132), v210 = objc_claimAutoreleasedReturnValue(), v211 = MEMORY[0x1E696AD98], v217 = objc_msgSend_uniqueIdentifier(v136, v212, v213, v214, v215, v216), objc_msgSend_numberWithInteger_(v211, v218, v217, v219, v220, v221), v222 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v210, v223, v222, v224, v225, v226), v227 = objc_claimAutoreleasedReturnValue(), v222, v210, !v227))
            {
              v233 = v527;
              if (v527)
              {
                v233 = v527[10];
              }

              v234 = v233;
              v235 = MEMORY[0x1E696AD98];
              v241 = objc_msgSend_uniqueIdentifier(v532, v236, v237, v238, v239, v240);
              v246 = objc_msgSend_numberWithInteger_(v235, v242, v241, v243, v244, v245);
              v227 = objc_msgSend_objectForKeyedSubscript_(v234, v247, v246, v248, v249, v250);
            }

            v251 = objc_msgSend_strokeGroupReplacements(v527, v228, v229, v230, v231, v232);
            v256 = objc_msgSend_containsObject_(v251, v252, v532, v253, v254, v255);

            if (v256)
            {
              objc_msgSend_addObject_(v523, v257, v532, v259, v260, v261);
              v262 = MEMORY[0x1E696AD98];
              v268 = objc_msgSend_uniqueIdentifier(v532, v263, v264, v265, v266, v267);
              v273 = objc_msgSend_numberWithInteger_(v262, v269, v268, v270, v271, v272);
              objc_msgSend_setObject_forKeyedSubscript_(v524, v274, v227, v273, v275, v276);
            }

            else
            {
              v277 = objc_msgSend_strategyIdentifier(v532, v257, v258, v259, v260, v261);
              v283 = objc_msgSend_classification(v532, v278, v279, v280, v281, v282);
              v273 = objc_msgSend_strokeGroupWithUpdatedStrategyIdentifier_classification_(v136, v284, v277, v283, v285, v286);

              objc_msgSend_addObject_(v523, v287, v273, v288, v289, v290);
              objc_msgSend_removeObject_(v516, v291, v136, v292, v293, v294);
              v295 = MEMORY[0x1E696AD98];
              v301 = objc_msgSend_uniqueIdentifier(v136, v296, v297, v298, v299, v300);
              v306 = objc_msgSend_numberWithInteger_(v295, v302, v301, v303, v304, v305);
              objc_msgSend_setObject_forKeyedSubscript_(v524, v307, v227, v306, v308, v309);
            }

            v530 = v136;
            StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = v528;
LABEL_60:

            v348 = v530;
            if (v530)
            {
              objc_msgSend_removeObject_(v528, v455, v530, v456, v457, v458);
            }
          }

          else
          {
LABEL_28:

            v154 = objc_msgSend_strategyIdentifier(v532, v149, v150, v151, v152, v153);
            isEqualToString = objc_msgSend_isEqualToString_(v154, v155, @"CHGroupingPostProcessingManager", v156, v157, v158);

            if (isEqualToString)
            {
              v539 = 0u;
              v540 = 0u;
              v537 = 0u;
              v538 = 0u;
              v529 = v528;
              v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v529, v164, &v537, v550, 16, v165);
              if (!v171)
              {

                v530 = 0;
                goto LABEL_56;
              }

              v530 = 0;
              v172 = *v538;
              v173 = 0x7FFFFFFFFFFFFFFFLL;
              while (2)
              {
                v174 = 0;
LABEL_33:
                if (*v538 != v172)
                {
                  objc_enumerationMutation(v529);
                }

                v175 = *(*(&v537 + 1) + 8 * v174);
                v176 = objc_msgSend_strokeIdentifiers(v175, v166, v167, v168, v169, v170);
                v182 = objc_msgSend_strokeIdentifiers(v532, v177, v178, v179, v180, v181);
                if (objc_msgSend_isSubsetOfSet_(v176, v183, v182, v184, v185, v186))
                {

LABEL_38:
                  if (objc_msgSend_ancestorIdentifier(v175, v166, v167, v168, v169, v170) < v173)
                  {
                    v173 = objc_msgSend_ancestorIdentifier(v175, v166, v167, v168, v169, v170);
                    v204 = v175;

                    v530 = v204;
                  }
                }

                else
                {
                  v192 = objc_msgSend_strokeIdentifiers(v532, v187, v188, v189, v190, v191);
                  v198 = objc_msgSend_strokeIdentifiers(v175, v193, v194, v195, v196, v197);
                  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v192, v199, v198, v200, v201, v202);

                  if (isSubsetOfSet)
                  {
                    goto LABEL_38;
                  }
                }

                if (v171 == ++v174)
                {
                  v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v529, v166, &v537, v550, 16, v170);
                  if (!v171)
                  {

                    if (v173 != 0x7FFFFFFFFFFFFFFFLL)
                    {
LABEL_57:
                      v349 = [CHStrokeGroup alloc];
                      v355 = objc_msgSend_uniqueIdentifier(v532, v350, v351, v352, v353, v354);
                      v361 = objc_msgSend_strokeIdentifiers(v532, v356, v357, v358, v359, v360);
                      v367 = objc_msgSend_firstStrokeIdentifier(v532, v362, v363, v364, v365, v366);
                      v373 = objc_msgSend_lastStrokeIdentifier(v532, v368, v369, v370, v371, v372);
                      objc_msgSend_bounds(v532, v374, v375, v376, v377, v378);
                      v380 = v379;
                      v382 = v381;
                      v384 = v383;
                      v386 = v385;
                      v392 = objc_msgSend_classification(v532, v387, v388, v389, v390, v391);
                      objc_msgSend_groupingConfidence(v532, v393, v394, v395, v396, v397);
                      v399 = v398;
                      v405 = objc_msgSend_strategyIdentifier(v532, v400, v401, v402, v403, v404);
                      objc_msgSend_firstStrokeOrigin(v532, v406, v407, v408, v409, v410);
                      StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v349, v411, v355, v173, v361, v367, v373, v392, v380, v382, v384, v386, v399, v412, v413, v405);

                      objc_msgSend_addObject_(v523, v414, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v415, v416, v417);
                      objc_msgSend_addObject_(v518, v418, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v419, v420, v421);
                      v422 = v527;
                      if (v527)
                      {
                        v422 = v527[10];
                      }

                      v227 = v422;
                      v423 = MEMORY[0x1E696AD98];
                      v429 = objc_msgSend_uniqueIdentifier(v532, v424, v425, v426, v427, v428);
                      v434 = objc_msgSend_numberWithInteger_(v423, v430, v429, v431, v432, v433);
                      v439 = objc_msgSend_objectForKeyedSubscript_(v227, v435, v434, v436, v437, v438);
                      v440 = MEMORY[0x1E696AD98];
                      v446 = objc_msgSend_uniqueIdentifier(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v441, v442, v443, v444, v445);
                      v451 = objc_msgSend_numberWithInteger_(v440, v447, v446, v448, v449, v450);
                      objc_msgSend_setObject_forKeyedSubscript_(v524, v452, v439, v451, v453, v454);

                      goto LABEL_60;
                    }

LABEL_56:
                    v173 = objc_msgSend_ancestorIdentifier(v532, v205, v206, v207, v208, v209);
                    goto LABEL_57;
                  }

                  continue;
                }

                goto LABEL_33;
              }
            }

            objc_msgSend_addObject_(v523, v160, v532, v161, v162, v163);
            objc_msgSend_addObject_(v518, v311, v532, v312, v313, v314);
            v315 = v527;
            if (v527)
            {
              v315 = v527[10];
            }

            v531 = v315;
            v316 = MEMORY[0x1E696AD98];
            v322 = objc_msgSend_uniqueIdentifier(v532, v317, v318, v319, v320, v321);
            v327 = objc_msgSend_numberWithInteger_(v316, v323, v322, v324, v325, v326);
            v332 = objc_msgSend_objectForKeyedSubscript_(v531, v328, v327, v329, v330, v331);
            v333 = MEMORY[0x1E696AD98];
            v339 = objc_msgSend_uniqueIdentifier(v532, v334, v335, v336, v337, v338);
            v344 = objc_msgSend_numberWithInteger_(v333, v340, v339, v341, v342, v343);
            objc_msgSend_setObject_forKeyedSubscript_(v524, v345, v332, v344, v346, v347);

            v348 = 0;
          }
        }

        v525 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v459, &v545, v552, 16, v460);
      }

      while (v525);
    }

    v461 = [CHStrokeGroupingResult alloc];
    v464 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v461, v462, v523, v518, v516, v463);
    if (v527)
    {
      objc_storeStrong(v527 + 3, v464);
    }

    v535 = 0u;
    v536 = 0u;
    v533 = 0u;
    v534 = 0u;
    v465 = v524;
    v473 = objc_msgSend_countByEnumeratingWithState_objects_count_(v465, v466, &v533, v549, 16, v467);
    if (v473)
    {
      v474 = *v534;
      do
      {
        for (k = 0; k != v473; ++k)
        {
          if (*v534 != v474)
          {
            objc_enumerationMutation(v465);
          }

          v476 = *(*(&v533 + 1) + 8 * k);
          v477 = objc_msgSend_recognitionResultsByGroupID(v527, v468, v469, v470, v471, v472);
          v478 = v477 == 0;

          if (!v478)
          {
            v479 = objc_msgSend_recognitionResultsByGroupID(v527, v468, v469, v470, v471, v472);
            v484 = objc_msgSend_objectForKeyedSubscript_(v479, v480, v476, v481, v482, v483);
            v490 = objc_msgSend_inputDrawing(v484, v485, v486, v487, v488, v489);
            v491 = v490 == 0;

            if (!v491)
            {
              v492 = objc_msgSend_recognitionResultsByGroupID(v527, v468, v469, v470, v471, v472);
              v497 = objc_msgSend_objectForKeyedSubscript_(v492, v493, v476, v494, v495, v496);
              v503 = objc_msgSend_inputDrawing(v497, v498, v499, v500, v501, v502);
              v508 = objc_msgSend_objectForKeyedSubscript_(v465, v504, v476, v505, v506, v507);
              objc_msgSend_setInputDrawing_(v508, v509, v503, v510, v511, v512);
            }
          }
        }

        v473 = objc_msgSend_countByEnumeratingWithState_objects_count_(v465, v468, &v533, v549, 16, v472);
      }

      while (v473);
    }

    if (v527)
    {
      objc_storeStrong(v527 + 4, v524);
    }

    v65 = v527;
  }

  return v527;
}

@end