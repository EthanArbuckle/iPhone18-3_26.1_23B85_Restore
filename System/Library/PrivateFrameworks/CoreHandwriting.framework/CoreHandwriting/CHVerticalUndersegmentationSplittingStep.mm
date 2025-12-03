@interface CHVerticalUndersegmentationSplittingStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHVerticalUndersegmentationSplittingStep

- (id)process:(id)process options:(id)options
{
  v505[16] = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  v496 = 0u;
  v497 = 0u;
  v498 = 0u;
  v499 = 0u;
  if (processCopy)
  {
    v11 = processCopy[9];
  }

  else
  {
    v11 = 0;
  }

  v486 = processCopy;
  v12 = objc_msgSend_copy(v11, v6, v7, v8, v9, v10);
  v483 = v12;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v496, v504, 16, v14);
  if (v20)
  {
    v484 = *v497;
    if (self)
    {
      while (1)
      {
        v481 = 0;
        v477 = v20;
        do
        {
          if (*v497 != v484)
          {
            objc_enumerationMutation(v12);
          }

          if (v486)
          {
            v21 = *(v486 + 10);
          }

          else
          {
            v21 = 0;
          }

          v22 = *(*(&v496 + 1) + 8 * v481);
          v23 = v21;
          v24 = MEMORY[0x1E696AD98];
          v30 = objc_msgSend_uniqueIdentifier(v22, v25, v26, v27, v28, v29);
          v35 = objc_msgSend_numberWithInteger_(v24, v31, v30, v32, v33, v34);
          v487 = objc_msgSend_objectForKeyedSubscript_(v23, v36, v35, v37, v38, v39);

          v45 = objc_msgSend_mathResult(v487, v40, v41, v42, v43, v44);
          v482 = v22;
          if (!v45 || (objc_msgSend_strokeIndexes(v45, v46, v47, v48, v49, v50), v51 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend_count(v51, v52, v53, v54, v55, v56), objc_msgSend_strokeIdentifiers(v482, v58, v59, v60, v61, v62), v63 = objc_claimAutoreleasedReturnValue(), LOBYTE(v57) = v57 == objc_msgSend_count(v63, v64, v65, v66, v67, v68), v63, v51, (v57 & 1) == 0))
          {

            goto LABEL_35;
          }

          v74 = objc_msgSend_topTranscription(v45, v69, v70, v71, v72, v73);
          v79 = objc_msgSend_componentsSeparatedByString_(v74, v75, @"\\\\"", v76, v77, v78);
          v85 = objc_msgSend_count(v79, v80, v81, v82, v83, v84);

          v91 = objc_msgSend_topTranscription(v45, v86, v87, v88, v89, v90);
          v96 = objc_msgSend_componentsSeparatedByString_(v91, v92, @"\\\\ \\hline", v93, v94, v95);
          v102 = objc_msgSend_count(v96, v97, v98, v99, v100, v101);

          v104 = v85 > 1 && v85 != v102;
          if (v104)
          {
            v110 = objc_msgSend_mathResult(v487, v105, v106, v107, v108, v109);
            v116 = objc_msgSend_transcriptionPaths(v110, v111, v112, v113, v114, v115);
            v122 = objc_msgSend_firstObject(v116, v117, v118, v119, v120, v121);

            v479 = 0;
            v494 = 0;
            v128 = 0;
            v490 = v122;
            while (1)
            {
              if (v128 >= objc_msgSend_tokenColumnCount(v110, v123, v124, v125, v126, v127))
              {
                if (v494 < objc_msgSend_tokenColumnCount(v110, v129, v130, v131, v132, v133))
                {
                  v216 = objc_msgSend_tokenColumnCount(v110, v211, v212, v213, v214, v215) - v494;
                  v217 = v479;
                  v218 = v479 >> 4;
                  if (((v479 >> 4) + 1) >> 60)
                  {
                    sub_18368964C();
                  }

                  if (v479 >> 4 != -1)
                  {
                    if (!(((v479 >> 4) + 1) >> 60))
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v219 = (16 * v218);
                  *v219 = v494;
                  v219[1] = v216;
                  v479 = 16 * v218 + 16;
                  memcpy(0, 0, v217);
                }

                v475 = objc_msgSend_mathResult(v487, v220, v221, v222, v223, v224);
                if (v479)
                {
                  if ((v479 & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_18368964C();
                }

                v491 = v475;
                v478 = objc_msgSend_array(MEMORY[0x1E695DF70], v225, v226, v227, v228, v229);

                v235 = objc_msgSend_mathResult(v487, v230, v231, v232, v233, v234);
                v492 = objc_msgSend_updateStrokeIndexOffsetForSubResults_fromResult_(CHTokenizedMathResult, v236, v478, v235, v237, v238);

                v244 = objc_msgSend_mathResult(v487, v239, v240, v241, v242, v243);
                v500 = 0;
                v501 = &v500;
                v502 = 0x2020000000;
                v503 = 1;
                v505[0] = MEMORY[0x1E69E9820];
                v505[1] = 3221225472;
                v505[2] = sub_1838E48BC;
                v505[3] = &unk_1E6DDF948;
                v505[4] = &v500;
                objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v244, v245, v505, v246, v247, v248);
                if (*(v501 + 24) == 1)
                {
                  v249 = *(v501 + 24);
                }

                else
                {
                  v249 = 0;
                }

                _Block_object_dispose(&v500, 8);

                if (v249)
                {
                  v485 = objc_msgSend_inputStrokeIdentifiers(v487, v250, v251, v252, v253, v254);
                  for (i = 0; i < objc_msgSend_count(v478, v255, v256, v257, v258, v259); ++i)
                  {
                    v265 = objc_msgSend_objectAtIndexedSubscript_(v478, v261, i, v262, v263, v264);
                    v493 = objc_msgSend_strokeIndexes(v265, v266, v267, v268, v269, v270);
                    v275 = objc_msgSend_objectsAtIndexes_(v485, v271, v493, v272, v273, v274);
                    v281 = objc_msgSend_firstObject(v275, v276, v277, v278, v279, v280);
                    v495 = objc_msgSend_lastObject(v275, v282, v283, v284, v285, v286);
                    objc_msgSend_bounds(v265, v287, v288, v289, v290, v291);
                    v297 = objc_msgSend_groupingManager(self, v292, v293, v294, v295, v296);
                    v303 = objc_msgSend_strokeProvider(v297, v298, v299, v300, v301, v302);
                    v304 = v303 == 0;

                    if (!v304)
                    {
                      v310 = objc_msgSend_groupingManager(self, v305, v306, v307, v308, v309);
                      v316 = objc_msgSend_strokeProvider(v310, v311, v312, v313, v314, v315);
                      v320 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v317, v281, v316, v318, v319);
                      objc_msgSend_bounds(v320, v321, v322, v323, v324, v325);
                    }

                    v326 = [CHStrokeGroup alloc];
                    v332 = objc_msgSend_ancestorIdentifier(v482, v327, v328, v329, v330, v331);
                    v337 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v333, v275, v334, v335, v336);
                    objc_msgSend_bounds(v265, v338, v339, v340, v341, v342);
                    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v326, v343, v332, v337, v281, v495, 3, @"CHGroupingPostProcessingManager");

                    if (v486)
                    {
                      v345 = *(v486 + 9);
                    }

                    else
                    {
                      v345 = 0;
                    }

                    v346 = v345;
                    objc_msgSend_addObject_(v346, v347, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v348, v349, v350);

                    if (!objc_msgSend_saveInputDrawings(self, v351, v352, v353, v354, v355) || (objc_msgSend_groupingManager(self, v356, v357, v358, v359, v360), v361 = objc_claimAutoreleasedReturnValue(), v362 = v361 == 0, v361, v362))
                    {
                      v370 = 0;
                    }

                    else
                    {
                      v368 = objc_msgSend_groupingManager(self, v363, v364, v365, v366, v367);
                      v370 = objc_msgSend_recognizableDrawingForStrokeGroup_translationVector_originalDrawing_orderedStrokesIDs_rescalingFactor_replacementStrokeGroup_(v368, v369, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, 0, 0, 0, 0, 0.0, 0.0);
                    }

                    v371 = [CHStrokeGroupRecognitionResult alloc];
                    v376 = objc_msgSend_objectAtIndexedSubscript_(v492, v372, i, v373, v374, v375);
                    v382 = objc_msgSend_processing(v487, v377, v378, v379, v380, v381);
                    v384 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v371, v383, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], v376, v275, v382, v370, 0);

                    if (v486)
                    {
                      v385 = *(v486 + 10);
                    }

                    else
                    {
                      v385 = 0;
                    }

                    v386 = v385;
                    v387 = MEMORY[0x1E696AD98];
                    v393 = objc_msgSend_uniqueIdentifier(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v388, v389, v390, v391, v392);
                    v398 = objc_msgSend_numberWithInteger_(v387, v394, v393, v395, v396, v397);
                    objc_msgSend_setObject_forKey_(v386, v399, v384, v398, v400, v401);
                  }

                  if (v486)
                  {
                    v402 = *(v486 + 9);
                  }

                  else
                  {
                    v402 = 0;
                  }

                  v403 = v402;
                  objc_msgSend_removeObject_(v403, v404, v482, v405, v406, v407);

                  if (v486)
                  {
                    v408 = *(v486 + 10);
                  }

                  else
                  {
                    v408 = 0;
                  }

                  v409 = v408;
                  v410 = MEMORY[0x1E696AD98];
                  v416 = objc_msgSend_uniqueIdentifier(v482, v411, v412, v413, v414, v415);
                  v421 = objc_msgSend_numberWithInteger_(v410, v417, v416, v418, v419, v420);
                  objc_msgSend_removeObjectForKey_(v409, v422, v421, v423, v424, v425);
                }

                goto LABEL_35;
              }

              v134 = objc_msgSend_tokenRowsAtColumnIndex_(v110, v129, v128, v131, v132, v133);
              v139 = objc_msgSend_indexAtPosition_(v122, v135, v128, v136, v137, v138);
              v144 = objc_msgSend_objectAtIndexedSubscript_(v134, v140, v139, v141, v142, v143);
              v149 = objc_msgSend_objectAtIndexedSubscript_(v144, v145, 0, v146, v147, v148);
              v155 = objc_msgSend_string(v149, v150, v151, v152, v153, v154);
              isEqualToString = objc_msgSend_isEqualToString_(v155, v156, @"\\\\"", v157, v158, v159);

              if (isEqualToString)
              {
                break;
              }

LABEL_33:

              ++v128;
            }

            if (objc_msgSend_count(v144, v161, v162, v163, v164, v165) < 2)
            {
              if (v128 < objc_msgSend_tokenColumnCount(v110, v166, v167, v168, v169, v170) - 1)
              {
                v187 = objc_msgSend_indexAtPosition_(v122, v183, v128 + 1, v184, v185, v186);
                v171 = objc_msgSend_objectAtIndexedSubscript_(v134, v188, v187, v189, v190, v191);
                v177 = objc_msgSend_objectAtIndexedSubscript_(v171, v192, 0, v193, v194, v195);
                v201 = objc_msgSend_string(v177, v196, v197, v198, v199, v200);
                v182 = objc_msgSend_isEqualToString_(v201, v202, @"\\hline", v203, v204, v205);

                goto LABEL_26;
              }
            }

            else
            {
              v171 = objc_msgSend_objectAtIndexedSubscript_(v144, v166, 1, v168, v169, v170);
              v177 = objc_msgSend_string(v171, v172, v173, v174, v175, v176);
              v182 = objc_msgSend_isEqualToString_(v177, v178, @"\\hline", v179, v180, v181);
LABEL_26:

              if (v182 == 1)
              {
                goto LABEL_33;
              }
            }

            if (v128 - v494 >= 1)
            {
              v206 = v479;
              v207 = v479 >> 4;
              if (((v479 >> 4) + 1) >> 60)
              {
                sub_18368964C();
              }

              if (v479 >> 4 != -1)
              {
                if (!(((v479 >> 4) + 1) >> 60))
                {
                  operator new();
                }

                sub_183688F00();
              }

              v208 = (16 * v207);
              *v208 = v494;
              v208[1] = v128 - v494;
              v479 = 16 * v207 + 16;
              memcpy(0, 0, v206);
              v494 = v128;
              v122 = v490;
            }

            goto LABEL_33;
          }

LABEL_35:

          ++v481;
          v12 = v483;
        }

        while (v481 != v477);
        v426 = objc_msgSend_countByEnumeratingWithState_objects_count_(v483, v209, &v496, v504, 16, v210);
        v20 = v426;
        if (!v426)
        {
          goto LABEL_82;
        }
      }
    }

    if (v486)
    {
      do
      {
        v427 = v20;
        for (j = 0; j != v427; ++j)
        {
          if (*v497 != v484)
          {
            objc_enumerationMutation(v483);
          }

          v429 = *(*(&v496 + 1) + 8 * j);
          v430 = *(v486 + 10);
          v431 = MEMORY[0x1E696AD98];
          v437 = objc_msgSend_uniqueIdentifier(v429, v432, v433, v434, v435, v436);
          v442 = objc_msgSend_numberWithInteger_(v431, v438, v437, v439, v440, v441);
          v488 = objc_msgSend_objectForKeyedSubscript_(v430, v443, v442, v444, v445, v446);

          v452 = objc_msgSend_mathResult(v488, v447, v448, v449, v450, v451);
        }

        v12 = v483;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v483, v453, &v496, v504, 16, v454);
      }

      while (v20);
    }

    else
    {
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v497 != v484)
          {
            objc_enumerationMutation(v483);
          }

          v457 = *(*(&v496 + 1) + 8 * k);
          v458 = MEMORY[0x1E696AD98];
          v459 = objc_msgSend_uniqueIdentifier(v457, v15, v16, v17, v18, v19);
          v464 = objc_msgSend_numberWithInteger_(v458, v460, v459, v461, v462, v463);
          v489 = objc_msgSend_objectForKeyedSubscript_(0, v465, v464, v466, v467, v468);

          v474 = objc_msgSend_mathResult(v489, v469, v470, v471, v472, v473);
        }

        v12 = v483;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v483, v15, &v496, v504, 16, v19);
      }

      while (v20);
    }
  }

LABEL_82:

  return v486;
}

@end