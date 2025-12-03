@interface CHTopDownStrokeGroupingStrategy
- (CHTopDownStrokeGroupingStrategy)initWithStrokeProvider:(id)provider locale:(id)locale textInputTargets:(id)targets;
- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup;
- (id)updatedGroupingResult:(id)result byAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers stableStrokeIdentifiers:(id)strokeIdentifiers allSubstrokesByStrokeIdentifier:(id)identifier withCancellationBlock:(id)block;
@end

@implementation CHTopDownStrokeGroupingStrategy

- (CHTopDownStrokeGroupingStrategy)initWithStrokeProvider:(id)provider locale:(id)locale textInputTargets:(id)targets
{
  providerCopy = provider;
  localeCopy = locale;
  targetsCopy = targets;
  v24.receiver = self;
  v24.super_class = CHTopDownStrokeGroupingStrategy;
  v11 = [(CHStrokeGroupingStrategy *)&v24 initWithStrokeProvider:providerCopy];
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    strategyIdentifier = v11->_strategyIdentifier;
    v11->_strategyIdentifier = v13;

    objc_storeStrong(&v11->_textInputTargets, targets);
    v11->_minimumDrawingSize = 16.0;
    v11->_transitionTimeWeight = 0.1;
    v11->_transitionTimeUpperBound = 1.0;
    v11->_verticalDistanceWeight = 1.2;
    v11->_backTransitionWeight = 0.2;
    v11->_backTransitionUpperBound = 3.0;
    v11->_horizontalDistanceBarrier = 1.2;
    v11->_horizontalDistanceWeight = 3.0;
    v11->_aspectRatioWeight = 0.1;
    v11->_writingDirectionWeight = 0.2;
    v11->_writingDirectionUpperBound = 3.0;
    v11->_writingDirectionMinCoeff = 0.025;
    v11->_targetFitnessWeight = 0.8;
    v11->_minLineHeightScore = 0.2;
    v11->_minArcLengthScore = 0.2;
    v11->_arcLengthDiffScoreCoeff = 1.6;
    v11->_expectedSubstrokesPerLine = 5.0;
    v11->_minSubstrokesForSplit = 6.0;
    v11->_reorderStrokes = 1;
    v11->_splitCostThreshold = 0.6;
    if (objc_msgSend_shouldAdjustGroupingForLocale_(CHRecognizerConfiguration, v15, localeCopy, v16, v17, v18))
    {
      v11->_targetFitnessWeight = 1.0;
      v11->_splitCostThreshold = 0.8;
      v11->_reorderStrokes = 0;
    }

    v11->_writingOrientation = objc_msgSend_writingOrientationForLocale_(CHRecognizerConfiguration, v19, localeCopy, v20, v21, v22);
  }

  return v11;
}

- (id)updatedGroupingResult:(id)result byAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers stableStrokeIdentifiers:(id)strokeIdentifiers allSubstrokesByStrokeIdentifier:(id)identifier withCancellationBlock:(id)block
{
  v1058 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  strokesCopy = strokes;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  identifierCopy = identifier;
  blockCopy = block;
  v995 = objc_msgSend_strokeProvider(self, v14, v15, v16, v17, v18);
  if (v995)
  {
    goto LABEL_10;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v24 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "strokeProvider cannot be nil.", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v25 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v25 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
LABEL_8:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_FAULT, "strokeProvider cannot be nil.", buf, 2u);
  }

LABEL_9:

LABEL_10:
  v996 = objc_msgSend_set(MEMORY[0x1E695DFA8], v19, v20, v21, v22, v23);
  v997 = objc_msgSend_set(MEMORY[0x1E695DFA8], v26, v27, v28, v29, v30);
  v994 = objc_msgSend_strokeGroups(resultCopy, v31, v32, v33, v34, v35);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v36 = qword_1EA84DC68;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v42 = objc_msgSend_strategyIdentifier(self, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_count(strokesCopy, v43, v44, v45, v46, v47);
    v54 = objc_msgSend_count(identifiersCopy, v49, v50, v51, v52, v53);
    *buf = 138412802;
    *&buf[4] = v42;
    *&buf[12] = 2048;
    *&buf[14] = v48;
    *&buf[22] = 2048;
    v1039 = v54;
    _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_DEBUG, "Stroke Grouping with strategy %@. Added strokes: %ld, removed strokes: %ld", buf, 0x20u);
  }

  v1019 = objc_msgSend_orderedStrokes(v995, v55, v56, v57, v58, v59);
  if (!objc_msgSend_count(v1019, v60, v61, v62, v63, v64))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v747 = qword_1EA84DC68;
    if (os_log_type_enabled(v747, OS_LOG_TYPE_ERROR))
    {
      v753 = objc_msgSend_strategyIdentifier(self, v748, v749, v750, v751, v752);
      *buf = 138412290;
      *&buf[4] = v753;
      _os_log_impl(&dword_18366B000, v747, OS_LOG_TYPE_ERROR, "Stroke Grouping with strategy %@ triggered with 0 strokes in the stroke provider.", buf, 0xCu);
    }

    v754 = [CHStrokeGroupingResult alloc];
    v757 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v754, v755, v996, v997, v994, v756);
    goto LABEL_158;
  }

  v999 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v65, v66, v67, v68, v69);
  v75 = 0;
  v1001 = 0;
  v76 = -1.79769313e308;
  while (v75 < objc_msgSend_count(v1019, v70, v71, v72, v73, v74) - 1)
  {
    v1018 = v76;
    v82 = [CHTopDownStrokeSplit alloc];
    v84 = objc_msgSend_initWithStrokes_substrokesByStrokeIdentifier_splitIndex_writingOrientation_(v82, v83, v1019, identifierCopy, v75, self->_writingOrientation);
    textInputTargets = self->_textInputTargets;
    v86 = v84;
    v87 = textInputTargets;
    v88 = v999;
    objc_msgSend_groupBounds1(v86, v89, v90, v91, v92, v93);
    v95 = v94;
    objc_msgSend_groupBounds2(v86, v96, v97, v98, v99, v100);
    if (v95 <= v106)
    {
      objc_msgSend_groupBounds2(v86, v101, v102, v103, v104, v105);
    }

    else
    {
      objc_msgSend_groupBounds1(v86, v101, v102, v103, v104, v105);
    }

    minimumDrawingSize = self->_minimumDrawingSize;
    if (v112 > minimumDrawingSize)
    {
      objc_msgSend_groupBounds1(v86, v107, v108, v109, v110, v111);
      v114 = v113;
      objc_msgSend_groupBounds2(v86, v115, v116, v117, v118, v119);
      if (v114 <= v125)
      {
        objc_msgSend_groupBounds2(v86, v120, v121, v122, v123, v124);
      }

      else
      {
        objc_msgSend_groupBounds1(v86, v120, v121, v122, v123, v124);
      }

      minimumDrawingSize = v126;
    }

    objc_msgSend_groupBounds1(v86, v107, v108, v109, v110, v111);
    v128 = v127;
    objc_msgSend_groupBounds2(v86, v129, v130, v131, v132, v133);
    if (v128 <= v139)
    {
      objc_msgSend_groupBounds2(v86, v134, v135, v136, v137, v138);
    }

    else
    {
      objc_msgSend_groupBounds1(v86, v134, v135, v136, v137, v138);
    }

    v146 = v145;
    objc_msgSend_transitionTime(v86, v140, v141, v142, v143, v144);
    transitionTimeUpperBound = self->_transitionTimeUpperBound;
    if (v153 < transitionTimeUpperBound)
    {
      objc_msgSend_transitionTime(v86, v147, v148, v149, v150, v151);
      transitionTimeUpperBound = v154;
    }

    transitionTimeWeight = self->_transitionTimeWeight;
    v1017 = transitionTimeUpperBound;
    objc_msgSend_groupBounds2(v86, v147, v148, v149, v150, v151);
    MinY = CGRectGetMinY(v1060);
    objc_msgSend_groupBounds1(v86, v156, v157, v158, v159, v160);
    MaxY = CGRectGetMaxY(v1061);
    objc_msgSend_groupBounds1(v86, v162, v163, v164, v165, v166);
    v167 = CGRectGetMinY(v1062);
    objc_msgSend_groupBounds2(v86, v168, v169, v170, v171, v172);
    v178 = v167 - CGRectGetMaxY(v1063);
    if (MinY - MaxY <= v178)
    {
      v179 = v178;
    }

    else
    {
      v179 = MinY - MaxY;
    }

    verticalDistanceWeight = self->_verticalDistanceWeight;
    v1015 = v179;
    if (self->_writingOrientation == 2)
    {
      objc_msgSend_groupBounds2(v86, v173, v174, v175, v176, v177);
      MaxX = CGRectGetMaxX(v1064);
      objc_msgSend_groupBounds1(v86, v181, v182, v183, v184, v185);
      MinX = CGRectGetMinX(v1065);
      objc_msgSend_groupBounds1(v86, v187, v188, v189, v190, v191);
      v192 = CGRectGetMinX(v1066);
      objc_msgSend_groupBounds2(v86, v193, v194, v195, v196, v197);
    }

    else
    {
      objc_msgSend_groupBounds1(v86, v173, v174, v175, v176, v177);
      MaxX = CGRectGetMaxX(v1067);
      objc_msgSend_groupBounds2(v86, v202, v203, v204, v205, v206);
      MinX = CGRectGetMinX(v1068);
      objc_msgSend_groupBounds2(v86, v207, v208, v209, v210, v211);
      v192 = CGRectGetMinX(v1069);
      objc_msgSend_groupBounds1(v86, v212, v213, v214, v215, v216);
    }

    v222 = v192 - CGRectGetMaxX(*&v198);
    backTransitionUpperBound = self->_backTransitionUpperBound;
    v1005 = (MaxX - MinX) / minimumDrawingSize;
    if (v1005 < backTransitionUpperBound)
    {
      backTransitionUpperBound = (MaxX - MinX) / minimumDrawingSize;
    }

    v1012 = backTransitionUpperBound;
    v1013 = v222;
    horizontalDistanceBarrier = self->_horizontalDistanceBarrier;
    horizontalDistanceWeight = self->_horizontalDistanceWeight;
    backTransitionWeight = self->_backTransitionWeight;
    v224 = objc_msgSend_orderedStrokes(v86, v217, v218, v219, v220, v221);
    v230 = objc_msgSend_count(v224, v225, v226, v227, v228, v229) > 2;

    v236 = 0.0;
    v237 = 0.0;
    if (v230)
    {
      v238 = objc_msgSend_orderedStrokes(v86, v231, v232, v233, v234, v235);
      v239 = sub_183846FF4(v238);

      v245 = objc_msgSend_orderedStrokesGroup1(v86, v240, v241, v242, v243, v244);
      v246 = sub_183846FF4(v245);

      v252 = objc_msgSend_orderedStrokesGroup2(v86, v247, v248, v249, v250, v251);
      v253 = sub_183846FF4(v252);

      v259 = objc_msgSend_orderedStrokes(v86, v254, v255, v256, v257, v258);
      v265 = objc_msgSend_count(v259, v260, v261, v262, v263, v264);

      v271 = objc_msgSend_orderedStrokes(v86, v266, v267, v268, v269, v270);
      v277 = objc_msgSend_count(v271, v272, v273, v274, v275, v276);

      v237 = v239 / (v265 - 1) / ((v246 + v253) / (v277 - 2) + 0.000001) + -1.0;
    }

    v1003 = v146 / minimumDrawingSize;
    v1004 = v237;
    v278 = fmax(v146 / minimumDrawingSize + -1.0, 0.0);
    if (v278 <= self->_writingDirectionMinCoeff)
    {
      writingDirectionMinCoeff = self->_writingDirectionMinCoeff;
    }

    else
    {
      writingDirectionMinCoeff = v278;
    }

    writingDirectionUpperBound = self->_writingDirectionUpperBound;
    if (v237 < writingDirectionUpperBound)
    {
      writingDirectionUpperBound = v237;
    }

    v1007 = writingDirectionUpperBound;
    v1008 = writingDirectionMinCoeff;
    writingDirectionWeight = self->_writingDirectionWeight;
    if (v87)
    {
      *buf = 0;
      v1028 = 0.0;
      objc_msgSend_groupBounds1(v86, v231, v232, v233, v234, v235);
      v285 = sub_18384721C(v87, buf, &v1028, v281, v282, v283, v284);
      v1037[0] = 0.0;
      v1027[0] = 0.0;
      objc_msgSend_groupBounds2(v86, v286, v287, v288, v289, v290);
      v295 = sub_18384721C(v87, v1037, v1027, v291, v292, v293, v294);
      v301 = v295;
      if (!v285 || !v295)
      {
        goto LABEL_69;
      }

      objc_msgSend_frame(v295, v296, v297, v298, v299, v300);
      v302 = CGRectGetMinY(v1070);
      objc_msgSend_frame(v285, v303, v304, v305, v306, v307);
      if (v302 >= CGRectGetMaxY(v1071))
      {
        v319 = 0;
        if (v285 != v301)
        {
          goto LABEL_52;
        }
      }

      else
      {
        objc_msgSend_frame(v285, v308, v309, v310, v311, v312);
        v313 = CGRectGetMinY(v1072);
        objc_msgSend_frame(v301, v314, v315, v316, v317, v318);
        v319 = v313 < CGRectGetMaxY(v1073);
        if (v285 == v301)
        {
          goto LABEL_56;
        }

LABEL_52:
        if (!v319)
        {
          objc_msgSend_groupBounds1(v86, v308, v309, v310, v311, v312);
          v321 = v320;
          v323 = v322;
          v325 = v324;
          v327 = v326;
          objc_msgSend_frame(v301, v328, v329, v330, v331, v332);
          v1078.origin.x = v333;
          v1078.origin.y = v334;
          v1078.size.width = v335;
          v1078.size.height = v336;
          v1074.origin.x = v321;
          v1074.origin.y = v323;
          v1074.size.width = v325;
          v1074.size.height = v327;
          v1075 = CGRectIntersection(v1074, v1078);
          height = v1075.size.height;
          objc_msgSend_groupBounds2(v86, v338, v339, v340, v341, v342, v1075.origin.x, v1075.origin.y, v1075.size.width);
          v344 = v343;
          v346 = v345;
          v348 = v347;
          v350 = v349;
          objc_msgSend_frame(v285, v351, v352, v353, v354, v355);
          v1079.origin.x = v356;
          v1079.origin.y = v357;
          v1079.size.width = v358;
          v1079.size.height = v359;
          v1076.origin.x = v344;
          v1076.origin.y = v346;
          v1076.size.width = v348;
          v1076.size.height = v350;
          v1077 = CGRectIntersection(v1076, v1079);
          v365 = v1077.size.height;
          v366 = *buf;
          v367 = v1037[0];
          if (*buf > 0.0 && v1037[0] > 0.0)
          {
            objc_msgSend_frame(v285, v360, v361, v362, v363, v364, v1077.origin.x, v1077.origin.y, v1077.size.width);
            v369 = v368;
            v1021 = v365;
            v370 = height;
            objc_msgSend_groupBounds1(v86, v371, v372, v373, v374, v375);
            v377 = v376;
            v378 = v1037[0];
            objc_msgSend_frame(v301, v379, v380, v381, v382, v383);
            v385 = v384;
            objc_msgSend_groupBounds2(v86, v386, v387, v388, v389, v390);
            v392 = v391;
            objc_msgSend_frame(v301, v393, v394, v395, v396, v397);
            v399 = v398;
            objc_msgSend_frame(v285, v400, v401, v402, v403, v404);
            v236 = (v366 * v366 / (v369 * v377 + 0.000001) + v378 * v378 / (v385 * v392 + 0.000001)) * ((1.0 - v370 / v399) * (1.0 - v1021 / v405));
LABEL_69:

            goto LABEL_70;
          }

          if (*buf <= 0.0)
          {
            v236 = 0.0;
            if (v1037[0] <= 0.0)
            {
              goto LABEL_69;
            }

            objc_msgSend_frame(v301, v360, v361, v362, v363, v364, v1077.origin.x, v1077.origin.y, v1077.size.width);
            v459 = v458;
            objc_msgSend_groupBounds2(v86, v460, v461, v462, v463, v464);
            v466 = v465;
            objc_msgSend_frame(v285, v467, v468, v469, v470, v471);
            v422 = v367 * v367 / (v459 * v466 + 0.000001);
            v440 = v365 / v472;
          }

          else
          {
            objc_msgSend_frame(v285, v360, v361, v362, v363, v364, v1077.origin.x, v1077.origin.y, v1077.size.width);
            v426 = v425;
            objc_msgSend_groupBounds1(v86, v427, v428, v429, v430, v431);
            v433 = v432;
            objc_msgSend_frame(v301, v434, v435, v436, v437, v438);
            v422 = v366 * v366 / (v426 * v433 + 0.000001);
            v440 = height / v439;
          }

          v424 = 1.0 - v440;
          goto LABEL_68;
        }
      }

LABEL_56:
      v406 = *buf;
      if (*buf > 0.0 && v1037[0] > 0.0)
      {
        v236 = 0.0;
        goto LABEL_69;
      }

      if (*buf <= 0.0)
      {
        v236 = 0.0;
        if (v1037[0] <= 0.0)
        {
          goto LABEL_69;
        }

        v441 = v1028;
        objc_msgSend_frame(v285, v308, v309, v310, v311, v312, v1037[0]);
        v443 = v442;
        v444 = v1037[0];
        objc_msgSend_frame(v301, v445, v446, v447, v448, v449);
        v451 = v450;
        objc_msgSend_groupBounds2(v86, v452, v453, v454, v455, v456);
        v422 = v441 / (v443 + 0.000001);
        v424 = v444 * v444 / (v451 * v457 + 0.000001);
      }

      else
      {
        objc_msgSend_frame(v285, v308, v309, v310, v311, v312, v1037[0]);
        v408 = v407;
        objc_msgSend_groupBounds1(v86, v409, v410, v411, v412, v413);
        v415 = v414;
        v416 = v1027[0];
        objc_msgSend_frame(v301, v417, v418, v419, v420, v421);
        v422 = v406 * v406 / (v408 * v415 + 0.000001);
        v424 = v416 / (v423 + 0.000001);
      }

LABEL_68:
      v236 = v422 * v424;
      goto LABEL_69;
    }

LABEL_70:
    targetFitnessWeight = self->_targetFitnessWeight;
    objc_msgSend_groupBounds1(v86, v231, v232, v233, v234, v235);
    v475 = v474;
    objc_msgSend_groupBounds2(v86, v476, v477, v478, v479, v480);
    if (v475 >= v486)
    {
      objc_msgSend_groupBounds2(v86, v481, v482, v483, v484, v485);
    }

    else
    {
      objc_msgSend_groupBounds1(v86, v481, v482, v483, v484, v485);
    }

    v493 = v492;
    objc_msgSend_groupBounds1(v86, v487, v488, v489, v490, v491);
    v495 = v494;
    objc_msgSend_groupBounds2(v86, v496, v497, v498, v499, v500);
    if (v495 <= v506)
    {
      objc_msgSend_groupBounds2(v86, v501, v502, v503, v504, v505);
    }

    else
    {
      objc_msgSend_groupBounds1(v86, v501, v502, v503, v504, v505);
    }

    v513 = v493 / (v512 + 0.000001);
    v514 = fmin(v493 / minimumDrawingSize, 1.0);
    if (v513 >= v514)
    {
      v515 = v514;
    }

    else
    {
      v515 = v493 / (v512 + 0.000001);
    }

    if (v515 <= self->_minLineHeightScore)
    {
      minLineHeightScore = self->_minLineHeightScore;
    }

    else
    {
      minLineHeightScore = v515;
    }

    v517 = objc_msgSend_substrokeCount1(v86, v507, v508, v509, v510, v511);
    v1022 = 1.0;
    if ((objc_msgSend_substrokeCount2(v86, v518, v519, v520, v521, v522) + v517) / self->_minSubstrokesForSplit < 1.0)
    {
      v528 = objc_msgSend_substrokeCount1(v86, v523, v524, v525, v526, v527);
      v1022 = (objc_msgSend_substrokeCount2(v86, v529, v530, v531, v532, v533) + v528) / self->_minSubstrokesForSplit;
    }

    v534 = objc_msgSend_strokeGroup1(v86, v523, v524, v525, v526, v527);
    v1020 = sub_183847500(v534, v88);

    v540 = objc_msgSend_strokeGroup2(v86, v535, v536, v537, v538, v539);
    v541 = sub_183847500(v540, v88);

    v547 = objc_msgSend_substrokeCount1(v86, v542, v543, v544, v545, v546);
    v553 = objc_msgSend_substrokeCount2(v86, v548, v549, v550, v551, v552);
    v559 = objc_msgSend_strokeGroup2(v86, v554, v555, v556, v557, v558);
    v565 = objc_msgSend_count(v559, v560, v561, v562, v563, v564);

    v1002 = v514;
    v571 = v236;
    arcLengthDiffScoreCoeff = self->_arcLengthDiffScoreCoeff;
    if (minimumDrawingSize * 0.5 <= self->_minimumDrawingSize)
    {
      v573 = self->_minimumDrawingSize;
    }

    else
    {
      v573 = minimumDrawingSize * 0.5;
    }

    v579 = 1.0;
    if (self->_expectedSubstrokesPerLine > objc_msgSend_substrokeCount1(v86, v566, v567, v568, v569, v570))
    {
      v579 = fmin(v1020 / v573, 1.0);
    }

    v580 = objc_msgSend_substrokeCount2(v86, v574, v575, v576, v577, v578);
    v581 = 1.0;
    if (self->_expectedSubstrokesPerLine > v580)
    {
      v581 = fmin(v541 / v573, 1.0);
    }

    v582 = v579 * v581;
    if (v582 <= self->_minArcLengthScore)
    {
      minArcLengthScore = self->_minArcLengthScore;
    }

    else
    {
      minArcLengthScore = v582;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v584 = sqrt(minLineHeightScore);
    v585 = fmin(v541 / v553 / (v1020 / v547 + 0.000001) * (v541 / v565 / (v541 / v553 + 0.000001)) * arcLengthDiffScoreCoeff, 1.0);
    v76 = (v1017 * transitionTimeWeight + 0.0 + v1015 / minimumDrawingSize * verticalDistanceWeight + v1012 * backTransitionWeight + fmax(v1013 / minimumDrawingSize - horizontalDistanceBarrier, 0.0) * horizontalDistanceWeight + v1007 * fmin(v1008, 1.0) * writingDirectionWeight + v571 * targetFitnessWeight) * (v584 * v1022 * v585 * minArcLengthScore);
    v586 = qword_1EA84DC68;
    if (os_log_type_enabled(v586, OS_LOG_TYPE_DEBUG))
    {
      v592 = objc_msgSend_strokeGroup1(v86, v587, v588, v589, v590, v591);
      v598 = objc_msgSend_count(v592, v593, v594, v595, v596, v597);
      v604 = objc_msgSend_strokeGroup2(v86, v599, v600, v601, v602, v603);
      v610 = objc_msgSend_count(v604, v605, v606, v607, v608, v609);
      objc_msgSend_transitionTime(v86, v611, v612, v613, v614, v615);
      *buf = 134221568;
      *&buf[4] = v598;
      *&buf[12] = 2048;
      *&buf[14] = v610;
      *&buf[22] = 2048;
      v1039 = *&v76;
      *v1040 = 2048;
      *&v1040[2] = v616;
      *&v1040[10] = 2048;
      *&v1040[12] = v1015 / minimumDrawingSize;
      *&v1040[20] = 2048;
      *&v1040[22] = v1013 / minimumDrawingSize;
      *&v1040[30] = 2048;
      v1041 = v1005;
      v1042 = 2048;
      v1043 = v1003;
      v1044 = 2048;
      v1045 = v1004;
      v1046 = 2048;
      v1047 = v571;
      v1048 = 2048;
      v1049 = v513;
      v1050 = 2048;
      v1051 = v1002;
      v1052 = 2048;
      v1053 = v1022;
      v1054 = 2048;
      v1055 = v585;
      v1056 = 2048;
      v1057 = minArcLengthScore;
      _os_log_impl(&dword_18366B000, v586, OS_LOG_TYPE_DEBUG, "SPLIT %lu/%lu: TS=%.3f, TT=%.3f, VD=%.3f, HD=%.3f, BT=%.3f, AR=%.3f, WD=%.3f, TF=%.3f, HS=%.3f, MH=%.3f, SC=%.3f, ALD=%.3f, AL=%.3f", buf, 0x98u);
    }

    if (v76 <= v1018)
    {
      v76 = v1018;
    }

    else
    {
      v617 = v86;

      v1001 = v617;
    }

    ++v75;
  }

  v618 = v76;
  splitCostThreshold = self->_splitCostThreshold;
  if (!v1001)
  {
    if (v618 > splitCostThreshold)
    {
      goto LABEL_150;
    }

    v758 = objc_msgSend_writingDirectionOrderedStrokes_substrokesByStrokeIdentifier_writingOrientation_(CHTopDownStrokeSplit, v77, v1019, identifierCopy, self->_writingOrientation, v81);
    goto LABEL_156;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v620 = qword_1EA84DC68;
  if (os_log_type_enabled(v620, OS_LOG_TYPE_DEBUG))
  {
    v626 = objc_msgSend_strokeGroup1(v1001, v621, v622, v623, v624, v625);
    v632 = objc_msgSend_count(v626, v627, v628, v629, v630, v631);
    v638 = objc_msgSend_strokeGroup2(v1001, v633, v634, v635, v636, v637);
    v644 = objc_msgSend_count(v638, v639, v640, v641, v642, v643);
    v645 = self->_splitCostThreshold;
    *buf = 134218752;
    *&buf[4] = v632;
    *&buf[12] = 2048;
    *&buf[14] = v644;
    *&buf[22] = 2048;
    v1039 = *&v618;
    *v1040 = 2048;
    *&v1040[2] = v645;
    _os_log_impl(&dword_18366B000, v620, OS_LOG_TYPE_DEBUG, "Best split (%lu/%lu) has score %.3f, splitting threshold is %.3f", buf, 0x2Au);
  }

  if (v618 <= splitCostThreshold)
  {
    v759 = @"Low split score";
LABEL_151:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v952 = qword_1EA84DC68;
    if (os_log_type_enabled(v952, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v759;
      _os_log_impl(&dword_18366B000, v952, OS_LOG_TYPE_DEBUG, "Best split not acceptable: %@", buf, 0xCu);
    }

    v758 = objc_msgSend_orderedStrokes(v1001, v953, v954, v955, v956, v957);
LABEL_156:
    v915 = v758;
    v958 = sub_18384660C(self, v758);
    v964 = objc_msgSend_strokeGroups(resultCopy, v959, v960, v961, v962, v963);
    v943 = sub_18384678C(self, v1019, v958, v964, 1);

    objc_msgSend_addObject_(v996, v965, v943, v966, v967, v968);
    objc_msgSend_addObject_(v997, v969, v943, v970, v971, v972);
    goto LABEL_157;
  }

  v646 = v1001;
  v647 = v999;
  v653 = objc_msgSend_strokeGroup2(v646, v648, v649, v650, v651, v652);
  v659 = objc_msgSend_count(v653, v654, v655, v656, v657, v658) == 1;

  if (!v659)
  {
    goto LABEL_112;
  }

  v665 = objc_msgSend_strokeGroup2(v646, v660, v661, v662, v663, v664);
  v671 = objc_msgSend_firstObject(v665, v666, v667, v668, v669, v670);

  objc_msgSend_endTimestamp(v671, v672, v673, v674, v675, v676);
  v678 = v677;
  objc_msgSend_startTimestamp(v671, v679, v680, v681, v682, v683);
  v689 = v678 - v688;
  if (v689 <= 0.2)
  {
    v760 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v684, @"Second group with single too short stroke (time interval = %.3f, threshold = %.3f).", v685, v686, v687, *&v689, 0x3FC999999999999ALL);
LABEL_126:
    v761 = v760;
    v762 = v760;

    goto LABEL_127;
  }

  v690 = objc_opt_class();
  objc_msgSend_arcLengthForStroke_(v690, v691, v671, v692, v693, v694);
  if (v699 <= 15.0)
  {
    v760 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v695, @"Second group with single too short stroke (arc length = %.3f, threshold = %.3f).", v696, v697, v698, *&v699, 0x402E000000000000);
    goto LABEL_126;
  }

LABEL_112:
  v700 = objc_msgSend_strokeGroup2(v646, v660, v661, v662, v663, v664);
  v706 = objc_msgSend_count(v700, v701, v702, v703, v704, v705) < 4;

  if (!v706)
  {
LABEL_140:
    v838 = objc_msgSend_strokeGroup1(v646, v707, v708, v709, v710, v711);
    if (objc_msgSend_count(v838, v839, v840, v841, v842, v843) == 1)
    {
      v849 = objc_msgSend_strokeGroup2(v646, v844, v845, v846, v847, v848);
      v855 = objc_msgSend_count(v849, v850, v851, v852, v853, v854) == 1;

      if (v855)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4812000000;
        v1039 = sub_18384772C;
        *v1040 = sub_183847750;
        *&v1040[8] = &unk_183A5AC72;
        v1041 = 0.0;
        *&v1040[16] = 0;
        *&v1040[24] = 0;
        v856 = objc_opt_class();
        v862 = objc_msgSend_strokeGroup1(v646, v857, v858, v859, v860, v861);
        v868 = objc_msgSend_firstObject(v862, v863, v864, v865, v866, v867);
        *&v1037[0] = MEMORY[0x1E69E9820];
        *&v1037[1] = 3221225472;
        *&v1037[2] = sub_183847768;
        *&v1037[3] = &unk_1E6DDCAC0;
        *&v1037[4] = buf;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v856, v869, v868, 0, 1, v1037);

        v1028 = 0.0;
        v1029 = &v1028;
        v1030 = 0x4812000000;
        v1031 = sub_18384772C;
        v1032 = sub_183847750;
        v1033 = &unk_183A5AC72;
        v1035 = 0;
        v1036 = 0;
        __p = 0;
        v870 = objc_opt_class();
        v876 = objc_msgSend_strokeGroup2(v646, v871, v872, v873, v874, v875);
        v882 = objc_msgSend_firstObject(v876, v877, v878, v879, v880, v881);
        *&v1027[0] = MEMORY[0x1E69E9820];
        *&v1027[1] = 3221225472;
        *&v1027[2] = sub_18384779C;
        *&v1027[3] = &unk_1E6DDCAC0;
        *&v1027[4] = &v1028;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v870, v883, v882, 0, 1, v1027);

        v1026 = 0.0;
        v884 = objc_opt_class();
        objc_msgSend_lineOrientationForStrokePoints_error_(v884, v885, *&buf[8] + 48, &v1026, v886, v887);
        v889 = v888;
        v1025 = 0.0;
        v890 = objc_opt_class();
        objc_msgSend_lineOrientationForStrokePoints_error_(v890, v891, (v1029 + 6), &v1025, v892, v893);
        v761 = 0;
        v763 = 1;
        if (v1026 < 1.0 && v1025 < 1.0)
        {
          if (vabdd_f64(v889, v898) >= 0.392699082)
          {
            v761 = 0;
          }

          else
          {
            v761 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v894, @"Two parallel lines (err1=%.3f, err2=%.3f, ori1=%.3f, ori2=%.3f).", v895, v896, v897, *&v1026, *&v1025, *&v889, *&v898, strokeIdentifiersCopy);
            v899 = v761;
            v763 = 0;
          }
        }

        _Block_object_dispose(&v1028, 8);
        if (__p)
        {
          v1035 = __p;
          operator delete(__p);
        }

        _Block_object_dispose(buf, 8);
        if (*&v1040[16])
        {
          *&v1040[24] = *&v1040[16];
          operator delete(*&v1040[16]);
        }

        goto LABEL_148;
      }
    }

    else
    {
    }

    v761 = 0;
    v763 = 1;
    goto LABEL_148;
  }

  v712 = objc_msgSend_strokeGroup2(v646, v707, v708, v709, v710, v711);
  v1024 = objc_msgSend_lastObject(v712, v713, v714, v715, v716, v717);

  if (objc_msgSend_isFinished(v1024, v718, v719, v720, v721, v722))
  {
LABEL_139:

    goto LABEL_140;
  }

  objc_msgSend_groupBounds1(v646, v723, v724, v725, v726, v727);
  v729 = v728;
  objc_msgSend_groupBounds2(v646, v730, v731, v732, v733, v734);
  if (v729 <= v740)
  {
    objc_msgSend_groupBounds2(v646, v735, v736, v737, v738, v739);
  }

  else
  {
    objc_msgSend_groupBounds1(v646, v735, v736, v737, v738, v739);
  }

  v764 = v746;
  v765 = self->_minimumDrawingSize;
  if (v764 > v765)
  {
    objc_msgSend_groupBounds1(v646, v741, v742, v743, v744, v745);
    v767 = v766;
    objc_msgSend_groupBounds2(v646, v768, v769, v770, v771, v772);
    if (v767 <= v778)
    {
      objc_msgSend_groupBounds2(v646, v773, v774, v775, v776, v777);
    }

    else
    {
      objc_msgSend_groupBounds1(v646, v773, v774, v775, v776, v777);
    }
  }

  v779 = 0;
  v780 = v765 * 4.0;
  while (1)
  {
    v781 = objc_msgSend_strokeGroup2(v646, v741, v742, v743, v744, v745);
    v787 = v779 < objc_msgSend_count(v781, v782, v783, v784, v785, v786) - 2;

    if (!v787)
    {
      break;
    }

    v793 = objc_msgSend_strokeGroup2(v646, v788, v789, v790, v791, v792);
    v798 = objc_msgSend_objectAtIndexedSubscript_(v793, v794, v779, v795, v796, v797);

    v804 = objc_msgSend_encodedStrokeIdentifier(v798, v799, v800, v801, v802, v803);
    v809 = objc_msgSend_objectForKeyedSubscript_(v647, v805, v804, v806, v807, v808);

    if (v809)
    {
      objc_msgSend_doubleValue(v809, v810, v811, v812, v813, v814);
      v816 = v815;
    }

    else
    {
      v817 = objc_opt_class();
      objc_msgSend_arcLengthForStroke_(v817, v818, v798, v819, v820, v821);
      v816 = v822;
      v828 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v823, v824, v825, v826, v827);
      v834 = objc_msgSend_encodedStrokeIdentifier(v798, v829, v830, v831, v832, v833);
      objc_msgSend_setObject_forKeyedSubscript_(v647, v835, v828, v834, v836, v837);
    }

    ++v779;
    if (v816 > v780)
    {
      goto LABEL_139;
    }
  }

  v977 = MEMORY[0x1E696AEC0];
  v978 = objc_msgSend_strokeGroup2(v646, v788, v789, v790, v791, v792);
  v984 = objc_msgSend_count(v978, v979, v980, v981, v982, v983);
  v761 = objc_msgSend_stringWithFormat_(v977, v985, @"Second group with an unfinished stroke and only a few (%li) other short strokes", v986, v987, v988, v984 - 1);
  v989 = v761;

LABEL_127:
  v763 = 0;
LABEL_148:

  v900 = v761;
  v759 = v900;
  if (!v763)
  {
    goto LABEL_151;
  }

LABEL_150:
  v901 = objc_msgSend_strokeGroup1(v1001, v77, v78, v79, v80, v81);
  v907 = objc_msgSend_orderedStrokesGroup1(v1001, v902, v903, v904, v905, v906);
  v908 = sub_18384660C(self, v907);
  v914 = objc_msgSend_strokeGroups(resultCopy, v909, v910, v911, v912, v913);
  v915 = sub_18384678C(self, v901, v908, v914, 1);

  objc_msgSend_addObject_(v996, v916, v915, v917, v918, v919);
  objc_msgSend_addObject_(v997, v920, v915, v921, v922, v923);
  v929 = objc_msgSend_strokeGroup2(v1001, v924, v925, v926, v927, v928);
  v935 = objc_msgSend_orderedStrokesGroup2(v1001, v930, v931, v932, v933, v934);
  v936 = sub_18384660C(self, v935);
  v942 = objc_msgSend_strokeGroups(resultCopy, v937, v938, v939, v940, v941);
  v943 = sub_18384678C(self, v929, v936, v942, 0);

  objc_msgSend_addObject_(v996, v944, v943, v945, v946, v947);
  objc_msgSend_addObject_(v997, v948, v943, v949, v950, v951);
LABEL_157:

  v973 = [CHStrokeGroupingResult alloc];
  v757 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v973, v974, v996, v997, v994, v975);

LABEL_158:

  return v757;
}

- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup
{
  v114 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v100 = groupCopy;
  factorCopy = factor;
  if (self->_reorderStrokes && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v103 = objc_msgSend_orderedStrokeIdentifiers(groupCopy, v10, v11, v12, v13, v14);
    objc_msgSend_strokesForIdentifiers_(self, v16, v103, v17, v18, v19);
  }

  else
  {
    v20 = objc_msgSend_strokeIdentifiers(groupCopy, v10, v11, v12, v13, v14);
    v26 = objc_msgSend_allObjects(v20, v21, v22, v23, v24, v25);
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = sub_183847C24;
    v112[3] = &unk_1E6DDCA70;
    v112[4] = self;
    v103 = objc_msgSend_sortedArrayUsingComparator_(v26, v27, v112, v28, v29, v30);

    objc_msgSend_strokesForIdentifiers_(self, v31, v103, v32, v33, v34);
  }
  v35 = ;
  if (drawing)
  {
    v36 = objc_alloc_init(CHDrawing);
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_alloc_init(CHDrawing);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v35;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v108, v113, 16, v39, v35);
  if (v40)
  {
    v41 = *v109;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v109 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v108 + 1) + 8 * i);
        v44 = objc_opt_class();
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = sub_183847D50;
        v105[3] = &unk_1E6DDE398;
        v45 = v36;
        v106 = v45;
        v46 = v37;
        v107 = v46;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v44, v47, v43, 0, 1, v105);
        if (v36)
        {
          objc_msgSend_endStroke(v45, v48, v49, v50, v51, v52);
          objc_msgSend_startTimestamp(v43, v53, v54, v55, v56, v57);
          objc_msgSend_addStartTime_(v45, v58, v59, v60, v61, v62);
          objc_msgSend_endTimestamp(v43, v63, v64, v65, v66, v67);
          objc_msgSend_addEndTime_(v45, v68, v69, v70, v71, v72);
        }

        objc_msgSend_endStroke(v46, v48, v49, v50, v51, v52);
        objc_msgSend_startTimestamp(v43, v73, v74, v75, v76, v77);
        objc_msgSend_addStartTime_(v46, v78, v79, v80, v81, v82);
        objc_msgSend_endTimestamp(v43, v83, v84, v85, v86, v87);
        objc_msgSend_addEndTime_(v46, v88, v89, v90, v91, v92);
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, &v108, v113, 16, v94);
    }

    while (v40);
  }

  if (drawing)
  {
    v95 = v36;
    *drawing = v36;
  }

  if (ds)
  {
    v96 = v103;
    *ds = v103;
  }

  if (factorCopy)
  {
    *factorCopy = 1.0;
  }

  if (strokeGroup)
  {
    *strokeGroup = 0;
  }

  return v37;
}

@end