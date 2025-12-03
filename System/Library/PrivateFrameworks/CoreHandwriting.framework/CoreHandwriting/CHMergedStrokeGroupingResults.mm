@interface CHMergedStrokeGroupingResults
- (CHMergedStrokeGroupingResults)initWithCoder:(id)coder;
- (CHMergedStrokeGroupingResults)initWithStrokeGroups:(id)groups createdStrokeGroups:(id)strokeGroups deletedStrokeGroups:(id)deletedStrokeGroups groupingResultsByStrategyIdentifier:(id)identifier;
- (id)groupingResultUpdatedWithGroupReplacements:(id)replacements;
- (id)strokeGroupsOfClass:(int64_t)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHMergedStrokeGroupingResults

- (CHMergedStrokeGroupingResults)initWithStrokeGroups:(id)groups createdStrokeGroups:(id)strokeGroups deletedStrokeGroups:(id)deletedStrokeGroups groupingResultsByStrategyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CHMergedStrokeGroupingResults;
  v12 = [(CHStrokeGroupingResult *)&v15 initWithStrokeGroups:groups createdStrokeGroups:strokeGroups deletedStrokeGroups:deletedStrokeGroups];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_groupingResultsByStrategyIdentifier, identifier);
  }

  return v13;
}

- (id)groupingResultUpdatedWithGroupReplacements:(id)replacements
{
  v507 = *MEMORY[0x1E69E9840];
  replacementsCopy = replacements;
  if (objc_msgSend_count(replacementsCopy, v3, v4, v5, v6, v7))
  {
    v13 = objc_msgSend_strokeGroups(self, v8, v9, v10, v11, v12);
    v475 = objc_msgSend_mutableCopy(v13, v14, v15, v16, v17, v18);

    v29 = objc_msgSend_createdStrokeGroups(self, v19, v20, v21, v22, v23);
    if (v29)
    {
      v30 = objc_msgSend_createdStrokeGroups(self, v24, v25, v26, v27, v28);
      v474 = objc_msgSend_mutableCopy(v30, v31, v32, v33, v34, v35);
    }

    else
    {
      v474 = objc_msgSend_set(MEMORY[0x1E695DFA8], v24, v25, v26, v27, v28);
    }

    v47 = objc_msgSend_deletedStrokeGroups(self, v37, v38, v39, v40, v41);
    if (v47)
    {
      v48 = objc_msgSend_deletedStrokeGroups(self, v42, v43, v44, v45, v46);
      v468 = objc_msgSend_mutableCopy(v48, v49, v50, v51, v52, v53);
    }

    else
    {
      v468 = objc_msgSend_set(MEMORY[0x1E695DFA8], v42, v43, v44, v45, v46);
    }

    v481 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v54, v55, v56, v57, v58);
    v499 = 0u;
    v500 = 0u;
    v497 = 0u;
    v498 = 0u;
    v64 = objc_msgSend_groupingResultsByStrategyIdentifier(self, v59, v60, v61, v62, v63);
    v70 = objc_msgSend_keyEnumerator(v64, v65, v66, v67, v68, v69);

    obj = v70;
    v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v497, v506, 16, v72);
    if (v78)
    {
      v79 = *v498;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v498 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v81 = *(*(&v497 + 1) + 8 * i);
          v82 = objc_msgSend_groupingResultsByStrategyIdentifier(self, v73, v74, v75, v76, v77);
          v87 = objc_msgSend_objectForKeyedSubscript_(v82, v83, v81, v84, v85, v86);

          v93 = objc_msgSend_strokeGroups(v87, v88, v89, v90, v91, v92);
          v99 = objc_msgSend_mutableCopy(v93, v94, v95, v96, v97, v98);

          v110 = objc_msgSend_createdStrokeGroups(v87, v100, v101, v102, v103, v104);
          if (v110)
          {
            v111 = objc_msgSend_createdStrokeGroups(v87, v105, v106, v107, v108, v109);
            v117 = objc_msgSend_mutableCopy(v111, v112, v113, v114, v115, v116);
          }

          else
          {
            v117 = objc_msgSend_set(MEMORY[0x1E695DFA8], v105, v106, v107, v108, v109);
          }

          v128 = objc_msgSend_deletedStrokeGroups(v87, v118, v119, v120, v121, v122);
          if (v128)
          {
            v129 = objc_msgSend_deletedStrokeGroups(v87, v123, v124, v125, v126, v127);
            v135 = objc_msgSend_mutableCopy(v129, v130, v131, v132, v133, v134);
          }

          else
          {
            v135 = objc_msgSend_set(MEMORY[0x1E695DFA8], v123, v124, v125, v126, v127);
          }

          v505[0] = v99;
          v505[1] = v117;
          v505[2] = v135;
          v139 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v136, v505, 3, v137, v138);
          objc_msgSend_setObject_forKeyedSubscript_(v481, v140, v139, v81, v141, v142);
        }

        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v73, &v497, v506, 16, v77);
      }

      while (v78);
    }

    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v148 = objc_msgSend_allValues(replacementsCopy, v143, v144, v145, v146, v147);
    v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v149, &v493, v504, 16, v150);
    if (v156)
    {
      v157 = *v494;
      do
      {
        for (j = 0; j != v156; ++j)
        {
          if (*v494 != v157)
          {
            objc_enumerationMutation(v148);
          }

          v159 = *(*(&v493 + 1) + 8 * j);
          v160 = objc_msgSend_strategyIdentifier(v159, v151, v152, v153, v154, v155);
          v165 = objc_msgSend_objectForKeyedSubscript_(v481, v161, v160, v162, v163, v164);
          v166 = v165 == 0;

          if (v166)
          {
            v167 = objc_msgSend_set(MEMORY[0x1E695DFA8], v151, v152, v153, v154, v155);
            v503[0] = v167;
            v173 = objc_msgSend_set(MEMORY[0x1E695DFA8], v168, v169, v170, v171, v172);
            v503[1] = v173;
            v179 = objc_msgSend_set(MEMORY[0x1E695DFA8], v174, v175, v176, v177, v178);
            v503[2] = v179;
            v183 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v180, v503, 3, v181, v182);
            v189 = objc_msgSend_strategyIdentifier(v159, v184, v185, v186, v187, v188);
            objc_msgSend_setObject_forKeyedSubscript_(v481, v190, v183, v189, v191, v192);
          }
        }

        v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v151, &v493, v504, 16, v155);
      }

      while (v156);
    }

    v492 = 0u;
    v490 = 0u;
    v491 = 0u;
    v489 = 0u;
    v198 = objc_msgSend_strokeGroups(self, v193, v194, v195, v196, v197);
    v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v199, &v489, v502, 16, v200);
    if (v206)
    {
      v207 = *v490;
      do
      {
        for (k = 0; k != v206; ++k)
        {
          if (*v490 != v207)
          {
            objc_enumerationMutation(v198);
          }

          v209 = *(*(&v489 + 1) + 8 * k);
          v210 = MEMORY[0x1E696AD98];
          v211 = objc_msgSend_uniqueIdentifier(v209, v201, v202, v203, v204, v205);
          v216 = objc_msgSend_numberWithInteger_(v210, v212, v211, v213, v214, v215);
          v221 = objc_msgSend_objectForKeyedSubscript_(replacementsCopy, v217, v216, v218, v219, v220);

          v227 = objc_msgSend_strategyIdentifier(v209, v222, v223, v224, v225, v226);
          v233 = objc_msgSend_classification(v209, v228, v229, v230, v231, v232);
          v237 = objc_msgSend_strokeGroupWithUpdatedStrategyIdentifier_classification_(v221, v234, v227, v233, v235, v236);

          if (v237)
          {
            objc_msgSend_removeObject_(v475, v238, v209, v239, v240, v241);
            v247 = objc_msgSend_strategyIdentifier(v209, v242, v243, v244, v245, v246);
            v252 = objc_msgSend_objectForKeyedSubscript_(v481, v248, v247, v249, v250, v251);
            v257 = objc_msgSend_objectAtIndexedSubscript_(v252, v253, 0, v254, v255, v256);
            objc_msgSend_removeObject_(v257, v258, v209, v259, v260, v261);

            objc_msgSend_addObject_(v475, v262, v237, v263, v264, v265);
            v271 = objc_msgSend_strategyIdentifier(v237, v266, v267, v268, v269, v270);
            v276 = objc_msgSend_objectForKeyedSubscript_(v481, v272, v271, v273, v274, v275);
            v281 = objc_msgSend_objectAtIndexedSubscript_(v276, v277, 0, v278, v279, v280);
            objc_msgSend_addObject_(v281, v282, v237, v283, v284, v285);

            if (objc_msgSend_containsObject_(v474, v286, v209, v287, v288, v289))
            {
              objc_msgSend_removeObject_(v474, v290, v209, v291, v292, v293);
              v299 = objc_msgSend_strategyIdentifier(v209, v294, v295, v296, v297, v298);
              v304 = objc_msgSend_objectForKeyedSubscript_(v481, v300, v299, v301, v302, v303);
              v309 = objc_msgSend_objectAtIndexedSubscript_(v304, v305, 1, v306, v307, v308);
              objc_msgSend_removeObject_(v309, v310, v209, v311, v312, v313);

              objc_msgSend_addObject_(v474, v314, v237, v315, v316, v317);
              v323 = objc_msgSend_strategyIdentifier(v237, v318, v319, v320, v321, v322);
              v328 = objc_msgSend_objectForKeyedSubscript_(v481, v324, v323, v325, v326, v327);
              v333 = objc_msgSend_objectAtIndexedSubscript_(v328, v329, 1, v330, v331, v332);
              objc_msgSend_addObject_(v333, v334, v237, v335, v336, v337);
            }

            else
            {
              objc_msgSend_addObject_(v468, v290, v209, v291, v292, v293);
              v323 = objc_msgSend_strategyIdentifier(v209, v338, v339, v340, v341, v342);
              v328 = objc_msgSend_objectForKeyedSubscript_(v481, v343, v323, v344, v345, v346);
              v333 = objc_msgSend_objectAtIndexedSubscript_(v328, v347, 2, v348, v349, v350);
              objc_msgSend_addObject_(v333, v351, v209, v352, v353, v354);
            }
          }
        }

        v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v201, &v489, v502, 16, v205);
      }

      while (v206);
    }

    v471 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v355, v356, v357, v358, v359);
    v487 = 0u;
    v488 = 0u;
    v485 = 0u;
    v486 = 0u;
    v469 = objc_msgSend_keyEnumerator(v481, v360, v361, v362, v363, v364);
    v473 = objc_msgSend_countByEnumeratingWithState_objects_count_(v469, v365, &v485, v501, 16, v366);
    if (v473)
    {
      v470 = *v486;
      do
      {
        for (m = 0; m != v473; ++m)
        {
          if (*v486 != v470)
          {
            objc_enumerationMutation(v469);
          }

          obja = *(*(&v485 + 1) + 8 * m);
          v476 = objc_msgSend_objectForKeyedSubscript_(v481, v367, obja, v368, v369, v370);
          v376 = objc_msgSend_groupingResultsByStrategyIdentifier(self, v371, v372, v373, v374, v375);
          v381 = objc_msgSend_objectForKeyedSubscript_(v376, v377, obja, v378, v379, v380);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v388 = objc_msgSend_groupingResultsByStrategyIdentifier(self, v383, v384, v385, v386, v387);
            v393 = objc_msgSend_objectForKeyedSubscript_(v388, v389, obja, v390, v391, v392);

            v394 = [CHBottomUpStrokeGroupingResult alloc];
            v399 = objc_msgSend_objectAtIndexedSubscript_(v476, v395, 0, v396, v397, v398);
            v404 = objc_msgSend_objectAtIndexedSubscript_(v476, v400, 1, v401, v402, v403);
            v409 = objc_msgSend_objectAtIndexedSubscript_(v476, v405, 2, v406, v407, v408);
            v415 = objc_msgSend_substrokePlacementsByStrokeIdentifier(v393, v410, v411, v412, v413, v414);
            v417 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_substrokePlacementsByStrokeIdentifier_(v394, v416, v399, v404, v409, v415);
            objc_msgSend_setObject_forKeyedSubscript_(v471, v418, v417, obja, v419, v420);
          }

          else
          {
            v421 = objc_msgSend_groupingResultsByStrategyIdentifier(self, v383, v384, v385, v386, v387);
            v431 = objc_msgSend_objectForKeyedSubscript_(v421, v422, obja, v423, v424, v425);
            if (v431)
            {
              v432 = objc_msgSend_groupingResultsByStrategyIdentifier(self, v426, v427, v428, v429, v430);
              v437 = objc_msgSend_objectForKeyedSubscript_(v432, v433, obja, v434, v435, v436);
              v443 = objc_msgSend_cachedAdjacencies(v437, v438, v439, v440, v441, v442);
              v483 = 0;
              v484 = 0;
              v482 = &v483;
              if (*v443 != v443 + 1)
              {
                operator new();
              }
            }

            else
            {
              v483 = 0;
              v484 = 0;
              v482 = &v483;
            }

            v444 = [CHStrokeGroupingResult alloc];
            v449 = objc_msgSend_objectAtIndexedSubscript_(v476, v445, 0, v446, v447, v448);
            v454 = objc_msgSend_objectAtIndexedSubscript_(v476, v450, 1, v451, v452, v453);
            v459 = objc_msgSend_objectAtIndexedSubscript_(v476, v455, 2, v456, v457, v458);
            v461 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_cachedAdjacencies_(v444, v460, v449, v454, v459, &v482);
            objc_msgSend_setObject_forKeyedSubscript_(v471, v462, v461, obja, v463, v464);

            sub_18373F424(&v482, v483);
          }
        }

        v473 = objc_msgSend_countByEnumeratingWithState_objects_count_(v469, v367, &v485, v501, 16, v370);
      }

      while (v473);
    }

    v465 = [CHMergedStrokeGroupingResults alloc];
    selfCopy = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_groupingResultsByStrategyIdentifier_(v465, v466, v475, v474, v468, v471);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)strokeGroupsOfClass:(int64_t)class
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, class, v3, v4, v5);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = objc_msgSend_groupingResultsByStrategyIdentifier(self, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_allValues(v14, v15, v16, v17, v18, v19);

  obj = v20;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v44, v48, 16, v22);
  if (v28)
  {
    v29 = *v45;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = objc_msgSend_strokeGroups(*(*(&v44 + 1) + 8 * i), v23, v24, v25, v26, v27);
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = sub_18373907C;
        v43[3] = &unk_1E6DDD130;
        v43[4] = class;
        v36 = objc_msgSend_objectsPassingTest_(v31, v32, v43, v33, v34, v35);

        objc_msgSend_unionSet_(v8, v37, v36, v38, v39, v40);
      }

      v20 = obj;
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v44, v48, 16, v27);
    }

    while (v28);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = objc_msgSend_strokeGroups(self, v4, v5, v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v9, @"strokeGroups", v11, v12);

  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_groupingResultsByStrategyIdentifier, @"groupingResultsByStrategyIdentifier", v14, v15);
}

- (CHMergedStrokeGroupingResults)initWithCoder:(id)coder
{
  v37[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v37, 3, v7, v8);
  v14 = objc_msgSend_setWithArray_(v5, v10, v9, v11, v12, v13);
  v18 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, v14, @"strokeGroups", v16, v17);

  v19 = MEMORY[0x1E695DFD8];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v36[2] = objc_opt_class();
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v36, 3, v21, v22);
  v28 = objc_msgSend_setWithArray_(v19, v24, v23, v25, v26, v27);
  v32 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v29, v28, @"groupingResultsByStrategyIdentifier", v30, v31);

  v34 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_groupingResultsByStrategyIdentifier_(self, v33, v18, v18, 0, v32);
  return v34;
}

@end