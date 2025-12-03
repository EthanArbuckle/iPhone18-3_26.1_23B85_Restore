@interface CHTimeWindowStrokeGroupingStrategy
- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup;
- (id)updatedGroupingResult:(id)result byAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers stableStrokeIdentifiers:(id)strokeIdentifiers allSubstrokesByStrokeIdentifier:(id)identifier withCancellationBlock:(id)block;
@end

@implementation CHTimeWindowStrokeGroupingStrategy

- (id)updatedGroupingResult:(id)result byAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers stableStrokeIdentifiers:(id)strokeIdentifiers allSubstrokesByStrokeIdentifier:(id)identifier withCancellationBlock:(id)block
{
  v431 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  strokesCopy = strokes;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  identifierCopy = identifier;
  blockCopy = block;
  v389 = resultCopy;
  v27 = objc_msgSend_strokeGroups(resultCopy, v17, v18, v19, v20, v21);
  if (v27)
  {
    objc_msgSend_strokeProvider(self, v22, v23, v24, v25, v26);
    v399 = v28 = &qword_1EA84D000;
    if (v399)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v27 = objc_msgSend_set(MEMORY[0x1E695DFD8], v22, v23, v24, v25, v26);
    objc_msgSend_strokeProvider(self, v34, v35, v36, v37, v38);
    v399 = v28 = &qword_1EA84D000;
    if (v399)
    {
      goto LABEL_13;
    }
  }

  if (v28[393] != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v39 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_ERROR, "strokeProvider cannot be nil.", buf, 2u);
  }

  if (v28[393] != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v40 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v40 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_FAULT, "strokeProvider cannot be nil.", buf, 2u);
  }

LABEL_12:

LABEL_13:
  v41 = objc_msgSend_mutableCopy(v27, v29, v30, v31, v32, v33);
  v397 = objc_msgSend_set(MEMORY[0x1E695DFA8], v42, v43, v44, v45, v46);
  v395 = objc_msgSend_set(MEMORY[0x1E695DFA8], v47, v48, v49, v50, v51);
  v400 = objc_msgSend_mutableCopy(strokesCopy, v52, v53, v54, v55, v56);
  v384 = v41;
  if (v28[393] != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v390 = v27;
  v388 = strokesCopy;
  v57 = qword_1EA84DC68;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    v58 = objc_opt_class();
    v59 = v58;
    v65 = objc_msgSend_count(v400, v60, v61, v62, v63, v64);
    v71 = objc_msgSend_count(identifiersCopy, v66, v67, v68, v69, v70);
    *buf = 138412802;
    v426 = v58;
    v427 = 2048;
    v428 = v65;
    v429 = 2048;
    v430 = v71;
    _os_log_impl(&dword_18366B000, v57, OS_LOG_TYPE_DEBUG, "Stroke Grouping with strategy %@. Added strokes: %ld, removed strokes: %ld", buf, 0x20u);
  }

  selfCopy = self;
  if (objc_msgSend_count(identifiersCopy, v72, v73, v74, v75, v76))
  {
    v419 = 0u;
    v420 = 0u;
    v417 = 0u;
    v418 = 0u;
    v77 = v390;
    v394 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v417, v424, 16, v79);
    if (!v394)
    {
LABEL_48:

      goto LABEL_49;
    }

    v85 = 0;
    v86 = *v418;
    v391 = *v418;
    v392 = v77;
    do
    {
      v87 = 0;
      do
      {
        while (1)
        {
          if (*v418 != v86)
          {
            objc_enumerationMutation(v77);
          }

          v396 = v87;
          v89 = *(*(&v417 + 1) + 8 * v87);
          v90 = objc_msgSend_strokeIdentifiers(v89, v80, v81, v82, v83, v84, v384);
          v95 = objc_msgSend_intersectsSet_(v90, v91, identifiersCopy, v92, v93, v94);

          if (v95)
          {
            break;
          }

          v88 = v399;
          v87 = v396 + 1;
          if (v396 + 1 == v394)
          {
            goto LABEL_20;
          }
        }

        objc_msgSend_addObject_(v395, v80, v89, v82, v83, v84);
        v415 = 0u;
        v416 = 0u;
        v413 = 0u;
        v414 = 0u;
        v101 = objc_msgSend_strokeIdentifiers(v89, v96, v97, v98, v99, v100);
        v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, &v413, v423, 16, v103);
        if (v104)
        {
          v109 = v104;
          v110 = *v414;
          v88 = v399;
          while (1)
          {
            for (i = 0; i != v109; ++i)
            {
              if (*v414 == v110)
              {
                v112 = *(*(&v413 + 1) + 8 * i);
                if (objc_msgSend_containsObject_(identifiersCopy, v105, v112, v106, v107, v108))
                {
                  continue;
                }
              }

              else
              {
                objc_enumerationMutation(v101);
                v112 = *(*(&v413 + 1) + 8 * i);
                if (objc_msgSend_containsObject_(identifiersCopy, v113, v112, v114, v115, v116))
                {
                  continue;
                }
              }

              v117 = objc_opt_class();
              v125 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v117, v118, v112, v88, v119, v120);
              if (v125)
              {
                objc_msgSend_addObject_(v400, v121, v125, v122, v123, v124);
                v85 = 1;
              }

              else
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v126 = qword_1EA84DC68;
                if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v426 = v112;
                  _os_log_impl(&dword_18366B000, v126, OS_LOG_TYPE_ERROR, "Could not find stroke for id: %@", buf, 0xCu);
                }

                v88 = v399;
              }
            }

            v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v105, &v413, v423, 16, v108);
            if (!v109)
            {
              goto LABEL_44;
            }
          }
        }

        v88 = v399;
LABEL_44:

        v86 = v391;
        v77 = v392;
        v87 = v396 + 1;
      }

      while (v396 + 1 != v394);
LABEL_20:
      v394 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v80, &v417, v424, 16, v84);
    }

    while (v394);

    if (v85)
    {
      v411[0] = MEMORY[0x1E69E9820];
      v411[1] = 3221225472;
      v411[2] = sub_18384C900;
      v411[3] = &unk_1E6DDC930;
      v412 = v88;
      objc_msgSend_sortUsingComparator_(v400, v127, v411, v128, v129, v130);
      v77 = v412;
      goto LABEL_48;
    }
  }

LABEL_49:
  v409 = 0u;
  v410 = 0u;
  v407 = 0u;
  v408 = 0u;
  v131 = v390;
  v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v132, &v407, v422, 16, v133);
  if (v134)
  {
    v135 = v134;
    StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp = 0;
    v137 = *v408;
    do
    {
      for (j = 0; j != v135; ++j)
      {
        if (*v408 != v137)
        {
          objc_enumerationMutation(v131);
        }

        v139 = *(*(&v407 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp || (objc_msgSend_endTimestamp(v139, v140, v141, v142, v143, v144), v146 = v145, objc_msgSend_endTimestamp(StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp, v147, v148, v149, v150, v151), v146 > v152))
          {
            if ((objc_msgSend_containsObject_(v395, v140, v139, v142, v143, v144, v384) & 1) == 0)
            {
              v153 = v139;

              StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp = v153;
            }
          }
        }
      }

      v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v140, &v407, v422, 16, v144);
    }

    while (v135);
  }

  else
  {
    StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp = 0;
  }

  v398 = v131;

  v405 = 0u;
  v406 = 0u;
  v403 = 0u;
  v404 = 0u;
  v154 = v400;
  v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v155, &v403, v421, 16, v156);
  if (v157)
  {
    v163 = v157;
    v164 = *v404;
    do
    {
      v165 = 0;
      v166 = StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp;
      do
      {
        if (*v404 != v164)
        {
          objc_enumerationMutation(v154);
        }

        v206 = *(*(&v403 + 1) + 8 * v165);
        objc_msgSend_startTimestamp(v206, v158, v159, v160, v161, v162, v384);
        v208 = v207;
        objc_msgSend_endTimestamp(v166, v209, v210, v211, v212, v213);
        v215 = v214;
        objc_msgSend_startTimestamp(v206, v216, v217, v218, v219, v220);
        v222 = v221;
        objc_msgSend_endTimestamp(v166, v223, v224, v225, v226, v227);
        v234 = v222 - v233;
        if (v208 >= v215)
        {
          v235 = v234;
        }

        else
        {
          v235 = -v234;
        }

        objc_msgSend_endTimestamp(v206, v228, v229, v230, v231, v232);
        v237 = v236;
        objc_msgSend_startTimestamp(v166, v238, v239, v240, v241, v242);
        v244 = v243;
        objc_msgSend_endTimestamp(v206, v245, v246, v247, v248, v249);
        v251 = v250;
        objc_msgSend_startTimestamp(v166, v252, v253, v254, v255, v256);
        v263 = v251 - v262;
        if (v237 < v244)
        {
          v263 = -v263;
        }

        if (v235 >= v263)
        {
          objc_msgSend_endTimestamp(v206, v257, v258, v259, v260, v261);
          v265 = v264;
          objc_msgSend_startTimestamp(v166, v266, v267, v268, v269, v270);
          v272 = v271;
          objc_msgSend_endTimestamp(v206, v273, v274, v275, v276, v277);
          v279 = v278;
          objc_msgSend_startTimestamp(v166, v280, v281, v282, v283, v284);
          v286 = v279 - v285;
          if (v265 < v272)
          {
            v235 = -v286;
          }

          else
          {
            v235 = v286;
          }
        }

        if (v166 && v235 < 1.0)
        {
          if ((objc_msgSend_containsObject_(v397, v257, v166, v259, v260, v261) & 1) == 0)
          {
            objc_msgSend_addObject_(v395, v287, v166, v288, v289, v290);
          }

          objc_msgSend_removeObject_(v397, v287, v166, v288, v289, v290);
          v291 = MEMORY[0x1E695DFD8];
          v297 = objc_msgSend_encodedStrokeIdentifier(v206, v292, v293, v294, v295, v296);
          v167 = objc_msgSend_setWithObject_(v291, v298, v297, v299, v300, v301);

          objc_msgSend_bounds(v166, v302, v303, v304, v305, v306);
          v308 = v307;
          v310 = v309;
          v312 = v311;
          v314 = v313;
          objc_msgSend_bounds(v206, v315, v316, v317, v318, v319);
          v435.origin.x = v320;
          v435.origin.y = v321;
          v435.size.width = v322;
          v435.size.height = v323;
          v433.origin.x = v308;
          v433.origin.y = v310;
          v433.size.width = v312;
          v433.size.height = v314;
          v434 = CGRectUnion(v433, v435);
          x = v434.origin.x;
          y = v434.origin.y;
          width = v434.size.width;
          height = v434.size.height;
          objc_msgSend_startTimestamp(v166, v328, v329, v330, v331, v332);
          v334 = v333;
          objc_msgSend_startTimestamp(v206, v335, v336, v337, v338, v339);
          if (v334 >= v345)
          {
            objc_msgSend_startTimestamp(v206, v340, v341, v342, v343, v344);
          }

          else
          {
            objc_msgSend_startTimestamp(v166, v340, v341, v342, v343, v344);
          }

          v352 = v351;
          objc_msgSend_endTimestamp(v166, v346, v347, v348, v349, v350);
          v354 = v353;
          objc_msgSend_endTimestamp(v206, v355, v356, v357, v358, v359);
          if (v354 <= v365)
          {
            objc_msgSend_endTimestamp(v206, v360, v361, v362, v363, v364);
          }

          else
          {
            objc_msgSend_endTimestamp(v166, v360, v361, v362, v363, v364);
          }

          v368 = v367;
          v401 = 0;
          v402 = 0;
          objc_msgSend_firstStrokeIdentifier_lastStrokeIdentifier_inGroup_addingStrokeIdentifiers_removingStrokeIdentifiers_(selfCopy, v366, &v402, &v401, v166, v167, 0);
          v369 = v402;
          v173 = v401;
          StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp = objc_msgSend_groupByAddingStrokeIdentifiers_removingStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp_(v166, v370, v167, 0, v369, v173, x, y, width, height, v352, v368);

          v166 = v369;
        }

        else
        {
          v167 = objc_msgSend_encodedStrokeIdentifier(v206, v257, v258, v259, v260, v261);
          v168 = [CHTimeWindowStrokeGroup alloc];
          v173 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v169, v167, v170, v171, v172);
          objc_msgSend_bounds(v206, v174, v175, v176, v177, v178);
          v180 = v179;
          v182 = v181;
          v184 = v183;
          v186 = v185;
          objc_msgSend_startTimestamp(v206, v187, v188, v189, v190, v191);
          v193 = v192;
          objc_msgSend_endTimestamp(v206, v194, v195, v196, v197, v198);
          StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp_(v168, v199, v173, v167, v167, v200, v180, v182, v184, v186, v193, v201);
        }

        objc_msgSend_addObject_(v397, v202, StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp, v203, v204, v205);
        ++v165;
        v166 = StrokeIdentifier_lastStrokeIdentifier_bounds_startTimestamp_endTimestamp;
      }

      while (v163 != v165);
      v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v158, &v403, v421, 16, v162);
    }

    while (v163);
  }

  objc_msgSend_unionSet_(v384, v371, v397, v372, v373, v374);
  objc_msgSend_minusSet_(v384, v375, v395, v376, v377, v378);
  v379 = [CHStrokeGroupingResult alloc];
  v382 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v379, v380, v384, v397, v395, v381);

  return v382;
}

- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup
{
  v101 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v90 = objc_alloc_init(CHDrawing);
  drawingCopy = drawing;
  if (drawing)
  {
    v16 = objc_alloc_init(CHDrawing);
    v27 = objc_msgSend_strokeIdentifiers(groupCopy, v17, v18, v19, v20, v21);
    if (self)
    {
LABEL_3:
      v28 = objc_msgSend_allObjects(v27, v22, v23, v24, v25, v26, drawing);
      v33 = objc_msgSend_strokesForIdentifiers_(self, v29, v28, v30, v31, v32);

      v38 = objc_msgSend_sortedArrayUsingComparator_(v33, v34, &unk_1EF1BE9D0, v35, v36, v37);

      goto LABEL_4;
    }
  }

  else
  {
    v16 = 0;
    v27 = objc_msgSend_strokeIdentifiers(groupCopy, v11, v12, v13, v14, v15);
    if (self)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
LABEL_4:

  v88 = groupCopy;
  objc_msgSend_bounds(groupCopy, v39, v40, v41, v42, v43);
  v45 = v44;
  v47 = v46;
  v53 = objc_msgSend_array(MEMORY[0x1E695DF70], v48, v49, v50, v51, v52);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v38;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, &v96, v100, 16, v55);
  if (v56)
  {
    v57 = v56;
    v58 = *v97;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v97 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v67 = *(*(&v96 + 1) + 8 * i);
        v68 = objc_opt_class();
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = sub_18384CC98;
        v91[3] = &unk_1E6DDEDF8;
        v69 = v16;
        v92 = v69;
        v94 = v45;
        v95 = v47;
        v70 = v90;
        v93 = v70;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v68, v71, v67, 0, 1, v91);
        objc_msgSend_endStroke(v70, v72, v73, v74, v75, v76);
        if (v16)
        {
          objc_msgSend_endStroke(v69, v77, v78, v79, v80, v81);
        }

        v60 = objc_msgSend_encodedStrokeIdentifier(v67, v77, v78, v79, v80, v81, drawingCopy);
        objc_msgSend_addObject_(v53, v61, v60, v62, v63, v64);
      }

      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v96, v100, 16, v66);
    }

    while (v57);
  }

  if (drawingCopy)
  {
    v82 = v16;
    *drawingCopy = v16;
  }

  if (ds)
  {
    v83 = v53;
    *ds = v53;
  }

  if (strokeGroup)
  {
    *strokeGroup = 0;
  }

  return v90;
}

@end