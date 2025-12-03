@interface CHBottomUpStrokeGroupingStrategy
- (BOOL)refineWritingOrientationAndResortSubstrokes:(id)substrokes averageWritingOrientation:(CGVector *)orientation;
- (CGVector)clippedWritingOrientation:(CGVector)orientation;
- (CHBottomUpStrokeGroupingStrategy)initWithStrokeProvider:(id)provider defaultWritingOrientation:(int64_t)orientation locales:(id)locales isInlineContinuousMode:(BOOL)mode inlineContinuousModeTargets:(id)targets;
- (double)relativeOverlapOfGroup:(id)group withGroup:(id)withGroup;
- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup;
- (id)regroupedStrokeGroup:(id)group fromResult:(id)result withAdversarialGroup:(id)adversarialGroup allSubstrokesByStrokeIdentifier:(id)identifier cancellationBlock:(id)block;
- (id)strokeGroupFromStrokes:(id)strokes ancestorIdentifier:(int64_t)identifier;
- (id)strokeGroupFromStrokes:(id)strokes ancestorIdentifier:(int64_t)identifier strokeBoundsPerStrokeIdentifier:(id)strokeIdentifier substrokesByStrokeIdentifier:(id)byStrokeIdentifier scriptClassification:(int64_t)classification;
- (id)strokeGroupMergingGroup:(id)group withGroup:(id)withGroup;
- (id)tryRegroupingStrokesInGroup:(id)group substrokePlacementsByStrokeIdentifier:(id)identifier cancellationBlock:(id)block;
- (id)updatedGroupingResult:(id)result byAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers stableStrokeIdentifiers:(id)strokeIdentifiers allSubstrokesByStrokeIdentifier:(id)identifier withCancellationBlock:(id)block;
- (int64_t)compareDistanceInWritingSequenceOfStroke:(id)stroke andStroke:(id)andStroke toReferenceStroke:(id)referenceStroke;
- (vector<CGPoint,)flippedCenters:(CHBottomUpStrokeGroupingStrategy *)self ofSubstrokes:(SEL)substrokes maxStrokesGap:(const void *)gap begnning:(id)begnning;
- (void)estimateWritingDirectionAndSortSubstrokesAccordingly:(id *)accordingly averageWritingOrientation:(CGVector *)orientation averageStrokeDeviation:(CGVector *)deviation;
- (void)getMergingEndOfLineCost:(double *)cost mergingEndOfLineStroke:(id *)stroke forStroke:(id)forStroke consistingOfSubstrokes:(id)substrokes toLineGroup:(id)group;
- (void)getMergingMiddleOfLineCost:(double *)cost mergingMiddleOfLineStroke:(id *)stroke forStroke:(id)forStroke consistingOfSubstrokes:(id)substrokes toLineGroup:(id)group;
- (void)mergeGroupsPostProcessing:(id)processing createdGroups:(id)groups deletedGroups:(id)deletedGroups availableGroupingStrategies:(id)strategies allowOppositeOrientations:(BOOL)orientations groupStatistics:(id)statistics;
- (void)refineLocalWritingOrientationsForSubstrokes:(id)substrokes useCoalescedCenter:(BOOL)center;
- (void)smoothLocalWritingOrientations:(void *)orientations;
- (void)sortSubstrokesByWritingDirection:(id)direction averageWritingOrientation:(CGVector *)orientation;
- (void)updateLocalStrokeDeviationsForSubstrokes:(id)substrokes averageStrokeDeviation:(CGVector *)deviation;
- (void)updateLocalWritingOrientationsForSubstrokes:(id)substrokes useCoalescedCenter:(BOOL)center;
@end

@implementation CHBottomUpStrokeGroupingStrategy

- (CHBottomUpStrokeGroupingStrategy)initWithStrokeProvider:(id)provider defaultWritingOrientation:(int64_t)orientation locales:(id)locales isInlineContinuousMode:(BOOL)mode inlineContinuousModeTargets:(id)targets
{
  modeCopy = mode;
  v57 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  localesCopy = locales;
  v47 = providerCopy;
  targetsCopy = targets;
  v55.receiver = self;
  v55.super_class = CHBottomUpStrokeGroupingStrategy;
  v50 = [(CHStrokeGroupingStrategy *)&v55 initWithStrokeProvider:providerCopy];
  if (v50)
  {
    if (orientation == 2)
    {
      v13 = xmmword_1839DA1C0;
      v14 = @"right-to-left";
      v15 = 2;
    }

    else
    {
      if (orientation == 3)
      {
        v13 = xmmword_1839CE640;
        v14 = @"vertical";
      }

      else
      {
        v13 = xmmword_1839CE630;
        v14 = @"left-to-right";
      }

      v15 = 1;
    }

    v50->_defaultOrientationVector = v13;
    v50->_textStrokeClassification = v15;
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v23 = objc_msgSend_stringWithFormat_(v16, v19, @"%@_%@", v20, v21, v22, v18, v14);
    strategyIdentifier = v50->_strategyIdentifier;
    v50->_strategyIdentifier = v23;

    v50->_isInlineContinuousMode = modeCopy;
    objc_storeStrong(&v50->_textInputTargets, targets);
    v50->_defaultDeviationVector = xmmword_1839DA200;
    v50->_strokeDeviationCapCoeff = 2.0;
    v50->_groupingMergingCostThresh = 6.0;
    v50->_groupingMergingEndCostLowThresh = 3.0;
    v50->_groupingSimilarCostThresh = 0.8;
    v50->_groupingContextSize = 6;
    v50->_mergeEndDxCostCoeff = 1.0;
    v50->_mergeEndDyCostCoeff = 2.0;
    v50->_mergeEndBelowModifier = 1.2;
    v50->_mergeEndLeftModifier = 5.0;
    v50->_mergeMiddleDxCostCoeff = 2.0;
    v50->_mergeMiddleDyCostCoeff = 4.0;
    v50->_mergeMiddleBelowModifier = 2.0;
    v50->_splitMinimumStrokeCount = 4;
    v50->_splitMaxNaturalIndexDiffThreshold = 8;
    v50->_shouldLimitDefaultWritingOrientationDeviation = 0;
    v50->_shouldAdjustDeviationOfSmallGroups = 0;
    v50->_shouldCoalesceLastSubstrokes = 0;
    if (modeCopy)
    {
      v50->_shouldLimitDefaultWritingOrientationDeviation = 1;
    }

    v50->_containsCJKLocale = 0;
    v50->_containsNonCJKLocale = 0;
    v50->_containsVeryComplexCharacters = 0;
    if (localesCopy)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v25 = localesCopy;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v51, v56, 16, v27);
      if (v32)
      {
        v33 = *v52;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v52 != v33)
            {
              objc_enumerationMutation(v25);
            }

            v35 = *(*(&v51 + 1) + 8 * i);
            if (objc_msgSend_shouldAdjustGroupingForLocale_(CHRecognizerConfiguration, v28, v35, v29, v30, v31))
            {
              p_containsCJKLocale = &v50->_containsCJKLocale;
            }

            else
            {
              p_containsCJKLocale = &v50->_containsNonCJKLocale;
            }

            *p_containsCJKLocale = 1;
            if (objc_msgSend_shouldAdjustGroupingHeuristicsForVeryComplexCharacters_(CHRecognizerConfiguration, v36, v35, v37, v38, v39))
            {
              v50->_containsVeryComplexCharacters = 1;
            }
          }

          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v51, v56, 16, v31);
        }

        while (v32);
      }

      if (v50->_containsCJKLocale)
      {
        v50->_mergeEndDyCostCoeff = 1.8;
        v50->_mergeEndLeftModifier = 4.5;
        v50->_splitMinimumStrokeCount = 6;
        v50->_splitMaxNaturalIndexDiffThreshold = 10;
      }

      if (!v50->_containsNonCJKLocale)
      {
        v50->_shouldAdjustDeviationOfSmallGroups = 1;
        v50->_shouldCoalesceLastSubstrokes = 1;
        __asm { FMOV            V0.2D, #14.0 }

        v50->_defaultDeviationVector = _Q0;
        v50->_groupingContextSize = 15;
        v50->_mergeEndDyCostCoeff = 1.4;
        v50->_mergeEndLeftModifier = 3.8;
        v50->_mergeEndBelowModifier = 1.42;
        if (v50->_containsVeryComplexCharacters)
        {
          v50->_splitMinimumStrokeCount = 12;
          v50->_splitMaxNaturalIndexDiffThreshold = 16;
        }
      }
    }
  }

  return v50;
}

- (id)updatedGroupingResult:(id)result byAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers stableStrokeIdentifiers:(id)strokeIdentifiers allSubstrokesByStrokeIdentifier:(id)identifier withCancellationBlock:(id)block
{
  v698 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  strokesCopy = strokes;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  identifierCopy = identifier;
  blockCopy = block;
  v596 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15, v16, v17, v18);
  v594 = objc_msgSend_set(MEMORY[0x1E695DFA8], v19, v20, v21, v22, v23);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v677 = 0u;
    v678 = 0u;
    v679 = 0u;
    v680 = 0u;
    obj = resultCopy;
    v34 = objc_msgSend_strokeGroups(obj, v29, v30, v31, v32, v33);
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v677, v697, 16, v36);
    if (v37)
    {
      v38 = *v678;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v678 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v677 + 1) + 8 * i);
          v41 = objc_opt_class();
          v47 = objc_msgSend_classification(v40, v42, v43, v44, v45, v46);
          if (objc_msgSend_isStrokeClassificationTextOrMath_(v41, v48, v47, v49, v50, v51))
          {
            objc_msgSend_addObject_(v594, v52, v40, v53, v54, v55);
          }
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v52, &v677, v697, 16, v55);
      }

      while (v37);
    }

    v61 = objc_msgSend_substrokePlacementsByStrokeIdentifier(obj, v56, v57, v58, v59, v60);
    objc_msgSend_addEntriesFromDictionary_(v596, v62, v61, v63, v64, v65);
  }

  else
  {
    v676 = 0u;
    v675 = 0u;
    v674 = 0u;
    v673 = 0u;
    obj = objc_msgSend_strokeGroups(resultCopy, v24, v25, v26, v27, v28);
    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v673, v696, 16, v67);
    if (v68)
    {
      v582 = v68;
      v586 = *v674;
      do
      {
        for (j = 0; j != v582; ++j)
        {
          if (*v674 != v586)
          {
            objc_enumerationMutation(obj);
          }

          v71 = *(*(&v673 + 1) + 8 * j);
          v72 = objc_opt_class();
          v78 = objc_msgSend_classification(v71, v73, v74, v75, v76, v77);
          if (objc_msgSend_isStrokeClassificationTextOrMath_(v72, v79, v78, v80, v81, v82))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_addObject_(v594, v83, v71, v85, v86, v87);
            }

            else
            {
              v93 = objc_msgSend_strokeIdentifiers(v71, v83, v84, v85, v86, v87);
              v99 = objc_msgSend_allObjects(v93, v94, v95, v96, v97, v98);
              v105 = objc_msgSend_strokeProvider(self, v100, v101, v102, v103, v104);
              v109 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v106, v99, v105, v107, v108);

              v115 = objc_msgSend_ancestorIdentifier(v71, v110, v111, v112, v113, v114);
              v119 = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_(self, v116, v109, v115, v117, v118);
              objc_msgSend_addObject_(v594, v120, v119, v121, v122, v123);
            }

            v672 = 0u;
            v671 = 0u;
            v670 = 0u;
            v669 = 0u;
            v124 = objc_msgSend_strokeIdentifiers(v71, v88, v89, v90, v91, v92);
            v599 = v124;
            v609 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v669, v695, 16, v126);
            if (v609)
            {
              v604 = *v670;
              do
              {
                for (k = 0; k != v609; ++k)
                {
                  if (*v670 != v604)
                  {
                    objc_enumerationMutation(v599);
                  }

                  v133 = *(*(&v669 + 1) + 8 * k);
                  v134 = objc_msgSend_array(MEMORY[0x1E695DF70], v127, v128, v129, v130, v131);
                  v668 = 0u;
                  v667 = 0u;
                  v665 = 0u;
                  v666 = 0u;
                  v615 = v133;
                  v139 = objc_msgSend_objectForKey_(identifierCopy, v135, v133, v136, v137, v138);
                  v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v140, &v665, v694, 16, v141);
                  if (v142)
                  {
                    v143 = *v666;
                    do
                    {
                      for (m = 0; m != v142; ++m)
                      {
                        if (*v666 != v143)
                        {
                          objc_enumerationMutation(v139);
                        }

                        v145 = *(*(&v665 + 1) + 8 * m);
                        v146 = [CHSubstrokePlacement alloc];
                        v151 = objc_msgSend_initWithSubstroke_(v146, v147, v145, v148, v149, v150);
                        objc_msgSend_setWritingOrientation_(v151, v152, v153, v154, v155, v156, self->_defaultOrientationVector.dx, self->_defaultOrientationVector.dy);
                        objc_msgSend_addObject_(v134, v157, v151, v158, v159, v160);
                      }

                      v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v161, &v665, v694, 16, v162);
                    }

                    while (v142);
                  }

                  objc_msgSend_setObject_forKey_(v596, v163, v134, v615, v164, v165);
                }

                v124 = v599;
                v609 = objc_msgSend_countByEnumeratingWithState_objects_count_(v599, v127, &v669, v695, 16, v131);
              }

              while (v609);
            }
          }
        }

        v582 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, &v673, v696, 16, v70);
      }

      while (v582);
    }
  }

  v171 = objc_msgSend_strokeProvider(self, v166, v167, v168, v169, v170);
  if (!v171)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v172 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v172, OS_LOG_TYPE_ERROR, "strokeProvider cannot be nil.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v173 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
      {
LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v173 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v173, OS_LOG_TYPE_FAULT, "strokeProvider cannot be nil.", buf, 2u);
    goto LABEL_47;
  }

LABEL_48:
  v663 = 0u;
  v664 = 0u;
  v661 = 0u;
  v662 = 0u;
  v585 = strokesCopy;
  v605 = objc_msgSend_countByEnumeratingWithState_objects_count_(v585, v174, &v661, v693, 16, v175);
  if (v605)
  {
    v600 = *v662;
    do
    {
      for (n = 0; n != v605; ++n)
      {
        if (*v662 != v600)
        {
          objc_enumerationMutation(v585);
        }

        v181 = *(*(&v661 + 1) + 8 * n);
        v182 = objc_msgSend_array(MEMORY[0x1E695DF70], v176, v177, v178, v179, v180);
        v659 = 0u;
        v660 = 0u;
        v657 = 0u;
        v658 = 0u;
        v610 = v181;
        v188 = objc_msgSend_encodedStrokeIdentifier(v181, v183, v184, v185, v186, v187);
        v193 = objc_msgSend_objectForKey_(identifierCopy, v189, v188, v190, v191, v192);

        v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v193, v194, &v657, v692, 16, v195);
        if (v196)
        {
          v197 = *v658;
          do
          {
            for (ii = 0; ii != v196; ++ii)
            {
              if (*v658 != v197)
              {
                objc_enumerationMutation(v193);
              }

              v199 = *(*(&v657 + 1) + 8 * ii);
              v200 = [CHSubstrokePlacement alloc];
              v205 = objc_msgSend_initWithSubstroke_(v200, v201, v199, v202, v203, v204);
              objc_msgSend_setWritingOrientation_(v205, v206, v207, v208, v209, v210, self->_defaultOrientationVector.dx, self->_defaultOrientationVector.dy);
              objc_msgSend_addObject_(v182, v211, v205, v212, v213, v214);
            }

            v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v193, v215, &v657, v692, 16, v216);
          }

          while (v196);
        }

        v222 = objc_msgSend_encodedStrokeIdentifier(v610, v217, v218, v219, v220, v221);
        objc_msgSend_setObject_forKey_(v596, v223, v182, v222, v224, v225);
      }

      v605 = objc_msgSend_countByEnumeratingWithState_objects_count_(v585, v176, &v661, v693, 16, v180);
    }

    while (v605);
  }

  v573 = objc_msgSend_set(MEMORY[0x1E695DFA8], v226, v227, v228, v229, v230);
  v581 = objc_msgSend_set(MEMORY[0x1E695DFA8], v231, v232, v233, v234, v235);
  v583 = objc_msgSend_set(MEMORY[0x1E695DFA8], v236, v237, v238, v239, v240);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v241 = qword_1EA84DC68;
  if (os_log_type_enabled(v241, OS_LOG_TYPE_DEBUG))
  {
    v247 = objc_msgSend_strategyIdentifier(self, v242, v243, v244, v245, v246);
    v253 = objc_msgSend_count(v585, v248, v249, v250, v251, v252);
    v259 = objc_msgSend_count(identifiersCopy, v254, v255, v256, v257, v258);
    *buf = 138412802;
    *&buf[4] = v247;
    *&buf[12] = 2048;
    *&buf[14] = v253;
    *&buf[22] = 2048;
    v691 = v259;
    _os_log_impl(&dword_18366B000, v241, OS_LOG_TYPE_DEBUG, "Stroke Grouping with strategy %@. Added strokes: %ld, removed strokes: %ld", buf, 0x20u);
  }

  if (objc_msgSend_count(identifiersCopy, v260, v261, v262, v263, v264))
  {
    v655 = 0u;
    v656 = 0u;
    v653 = 0u;
    v654 = 0u;
    v270 = identifiersCopy;
    v277 = objc_msgSend_countByEnumeratingWithState_objects_count_(v270, v271, &v653, v689, 16, v272);
    if (v277)
    {
      v278 = *v654;
      do
      {
        for (jj = 0; jj != v277; ++jj)
        {
          if (*v654 != v278)
          {
            objc_enumerationMutation(v270);
          }

          objc_msgSend_removeObjectForKey_(v596, v273, *(*(&v653 + 1) + 8 * jj), v274, v275, v276);
        }

        v277 = objc_msgSend_countByEnumeratingWithState_objects_count_(v270, v273, &v653, v689, 16, v276);
      }

      while (v277);
    }
  }

  v280 = objc_msgSend_set(MEMORY[0x1E695DFA8], v265, v266, v267, v268, v269);
  v617 = v280;
  objc_msgSend_addObjectsFromArray_(v280, v281, v585, v282, v283, v284);
  v598 = objc_msgSend_mutableCopy(strokeIdentifiersCopy, v285, v286, v287, v288, v289);
  v587 = 0;
  do
  {
    if (blockCopy[2]())
    {
      break;
    }

    v578 = objc_msgSend_count(v598, v290, v291, v292, v293, v294);
    v651 = 0u;
    v652 = 0u;
    v649 = 0u;
    v650 = 0u;
    obja = v594;
    v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v295, &v649, v688, 16, v296);
    if (v297)
    {
      v601 = *v650;
      do
      {
        v606 = v297;
        for (kk = 0; kk != v606; ++kk)
        {
          if (*v650 != v601)
          {
            objc_enumerationMutation(obja);
          }

          v304 = *(*(&v649 + 1) + 8 * kk);
          v305 = objc_msgSend_strokeIdentifiers(v304, v298, v299, v300, v301, v302);
          isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v305, v306, v598, v307, v308, v309);

          if ((isSubsetOfSet & 1) == 0)
          {
            v311 = objc_msgSend_strokeIdentifiers(v304, v298, v299, v300, v301, v302);
            objc_msgSend_minusSet_(v598, v312, v311, v313, v314, v315);

            v316 = MEMORY[0x1E695DFA8];
            v322 = objc_msgSend_strokeIdentifiers(v304, v317, v318, v319, v320, v321);
            v611 = objc_msgSend_setWithSet_(v316, v323, v322, v324, v325, v326);

            objc_msgSend_minusSet_(v611, v327, identifiersCopy, v328, v329, v330);
            v647 = 0u;
            v648 = 0u;
            v645 = 0u;
            v646 = 0u;
            v331 = v611;
            v334 = objc_msgSend_countByEnumeratingWithState_objects_count_(v331, v332, &v645, v687, 16, v333);
            if (v334)
            {
              v335 = *v646;
              do
              {
                for (mm = 0; mm != v334; ++mm)
                {
                  if (*v646 != v335)
                  {
                    objc_enumerationMutation(v331);
                  }

                  v337 = *(*(&v645 + 1) + 8 * mm);
                  v338 = objc_opt_class();
                  v346 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v338, v339, v337, v171, v340, v341);
                  if (v346)
                  {
                    objc_msgSend_addObject_(v617, v342, v346, v343, v344, v345);
                  }
                }

                v334 = objc_msgSend_countByEnumeratingWithState_objects_count_(v331, v347, &v645, v687, 16, v348);
              }

              while (v334);
            }

            v354 = objc_msgSend_count(v331, v349, v350, v351, v352, v353);
            v360 = objc_msgSend_strokeIdentifiers(v304, v355, v356, v357, v358, v359);
            v366 = v354 == objc_msgSend_count(v360, v361, v362, v363, v364, v365);

            if (v366)
            {
              objc_msgSend_addObject_(v583, v367, v304, v368, v369, v370);
            }

            else
            {
              objc_msgSend_addObject_(v581, v367, v304, v368, v369, v370);
              v587 |= objc_msgSend_count(v331, v371, v372, v373, v374, v375) != 0;
            }
          }
        }

        v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v298, &v649, v688, 16, v302);
      }

      while (v297);
    }

    v280 = v617;
  }

  while (objc_msgSend_count(v598, v376, v377, v378, v379, v380) != v578);
  if (objc_msgSend_count(v585, v290, v291, v292, v293, v294))
  {
    v612 = objc_msgSend_firstObject(v585, v381, v382, v383, v384, v385);
    v643 = 0u;
    v644 = 0u;
    v641 = 0u;
    v642 = 0u;
    v386 = v280;
    v389 = 0;
    v394 = objc_msgSend_countByEnumeratingWithState_objects_count_(v386, v387, &v641, v686, 16, v388);
    if (v394)
    {
      v395 = *v642;
      do
      {
        for (nn = 0; nn != v394; ++nn)
        {
          if (*v642 != v395)
          {
            objc_enumerationMutation(v386);
          }

          v397 = *(*(&v641 + 1) + 8 * nn);
          if ((objc_msgSend_containsObject_(v585, v390, v397, v391, v392, v393) & 1) == 0)
          {
            v399 = objc_msgSend_strokeIdentifier(v397, v390, v398, v391, v392, v393);
            v405 = objc_msgSend_strokeIdentifier(v612, v400, v401, v402, v403, v404);
            v409 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v171, v406, v399, v405, v407, v408) == -1;

            v389 |= v409;
          }
        }

        v394 = objc_msgSend_countByEnumeratingWithState_objects_count_(v386, v390, &v641, v686, 16, v393);
      }

      while (v394);
    }

    v280 = v617;
    v415 = objc_msgSend_count(v617, v410, v411, v412, v413, v414);
  }

  else
  {
    v389 = 0;
    v415 = objc_msgSend_count(v280, v381, v382, v383, v384, v385);
  }

  if (((v415 > objc_msgSend_count(v585, v416, v417, v418, v419, v420)) & (v587 | v389)) == 1)
  {
    v426 = objc_msgSend_allObjects(v280, v421, v422, v423, v424, v425);
    v639[0] = MEMORY[0x1E69E9820];
    v639[1] = 3221225472;
    v639[2] = sub_18394ED78;
    v639[3] = &unk_1E6DDD268;
    v640 = v171;
    v431 = objc_msgSend_sortedArrayUsingComparator_(v426, v427, v639, v428, v429, v430);

    v585 = v431;
  }

  if ((v587 | v389))
  {
    objc_msgSend_minusSet_(v594, v421, v583, v423, v424, v425);
  }

  objc_msgSend_minusSet_(v594, v421, v581, v423, v424, v425);
  v437 = objc_msgSend_mutableCopy(v581, v432, v433, v434, v435, v436);
  v567 = v587 | v389;
  objc_msgSend_unionSet_(v437, v438, v583, v439, v440, v441);
  v569 = v437;
  *&buf[16] = 0;
  *&buf[8] = 0;
  *buf = &buf[8];
  v635 = 0u;
  v636 = 0u;
  v637 = 0u;
  v638 = 0u;
  v588 = v594;
  v444 = objc_msgSend_countByEnumeratingWithState_objects_count_(v588, v442, &v635, v685, 16, v443);
  if (v444)
  {
    v576 = *v636;
    do
    {
      v445 = 0;
      v579 = v444;
      do
      {
        if (*v636 != v576)
        {
          objc_enumerationMutation(v588);
        }

        objb = v445;
        v613 = *(*(&v635 + 1) + 8 * v445);
        v631 = 0u;
        v632 = 0u;
        v633 = 0u;
        v634 = 0u;
        v602 = v588;
        v453 = objc_msgSend_countByEnumeratingWithState_objects_count_(v602, v446, &v631, v684, 16, v447);
        if (v453)
        {
          v607 = *v632;
          do
          {
            for (i1 = 0; i1 != v453; ++i1)
            {
              if (*v632 != v607)
              {
                objc_enumerationMutation(v602);
              }

              v455 = *(*(&v631 + 1) + 8 * i1);
              v456 = objc_msgSend_uniqueIdentifier(v613, v448, v449, v450, v451, v452);
              v462 = objc_msgSend_uniqueIdentifier(v455, v457, v458, v459, v460, v461);
              v463 = *&buf[8];
              if (!*&buf[8])
              {
LABEL_133:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v464 = v463;
                  v465 = v463[4];
                  if (v456 >= v465)
                  {
                    break;
                  }

LABEL_127:
                  v463 = *v464;
                  if (!*v464)
                  {
                    goto LABEL_133;
                  }
                }

                if (v465 >= v456)
                {
                  break;
                }

LABEL_132:
                v463 = v464[1];
                if (!v463)
                {
                  goto LABEL_133;
                }
              }

              v466 = v464[5];
              if (v462 < v466)
              {
                goto LABEL_127;
              }

              if (v466 < v462)
              {
                goto LABEL_132;
              }
            }

            v453 = objc_msgSend_countByEnumeratingWithState_objects_count_(v602, v448, &v631, v684, 16, v452);
          }

          while (v453);
        }

        v445 = objb + 1;
      }

      while (objb + 1 != v579);
      v444 = objc_msgSend_countByEnumeratingWithState_objects_count_(v602, v467, &v635, v685, 16, v468);
    }

    while (v444);
  }

  v577 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v469, v470, v471, v472, v473);
  v629 = 0u;
  v630 = 0u;
  v627 = 0u;
  v628 = 0u;
  v568 = v585;
  v476 = 0;
  v477 = objc_msgSend_countByEnumeratingWithState_objects_count_(v568, v474, &v627, v683, 16, v475);
  if (v477)
  {
    v478 = *v628;
    while (2)
    {
      v479 = 0;
      v480 = v476;
      do
      {
        if (*v628 != v478)
        {
          objc_enumerationMutation(v568);
        }

        v481 = *(*(&v627 + 1) + 8 * v479);
        if (blockCopy[2]())
        {
          v476 = v480;
          goto LABEL_152;
        }

        v482 = objc_autoreleasePoolPush();
        v626 = 0;
        sub_18394EE24(self, v588, v573, v581, v481, 0, v596, v569, 1, v480, &v626, blockCopy);
        v483 = v626;
        v484 = MEMORY[0x1E696AD98];
        v490 = objc_msgSend_uniqueIdentifier(v483, v485, v486, v487, v488, v489);
        v495 = objc_msgSend_numberWithInteger_(v484, v491, v490, v492, v493, v494);
        objc_msgSend_removeObjectForKey_(v577, v496, v495, v497, v498, v499);

        sub_183950C28(self, v588, v573, v581, 0, 0, buf, v577);
        if (v483 && objc_msgSend_containsObject_(v588, v500, v483, v501, v502, v503))
        {
          v570 = v483;
        }

        else
        {
          v570 = 0;
        }

        v476 = v570;
        objc_autoreleasePoolPop(v482);
        ++v479;
        v480 = v570;
      }

      while (v477 != v479);
      v477 = objc_msgSend_countByEnumeratingWithState_objects_count_(v568, v504, &v627, v683, 16, v505);
      if (v477)
      {
        continue;
      }

      break;
    }
  }

LABEL_152:
  v571 = v476;

  if ((v567 & 1) != 0 && objc_msgSend_count(v583, v506, v507, v508, v509, v510) && (blockCopy[2]() & 1) == 0)
  {
    objc = objc_msgSend_set(MEMORY[0x1E695DFA8], v511, v512, v513, v514, v515);
    v624 = 0u;
    v625 = 0u;
    v622 = 0u;
    v623 = 0u;
    v580 = v573;
    v608 = objc_msgSend_countByEnumeratingWithState_objects_count_(v580, v516, &v622, v682, 16, v517);
    if (v608)
    {
      v603 = *v623;
      do
      {
        for (i2 = 0; i2 != v608; ++i2)
        {
          if (*v623 != v603)
          {
            objc_enumerationMutation(v580);
          }

          v518 = *(*(&v622 + 1) + 8 * i2);
          v618 = 0u;
          v619 = 0u;
          v620 = 0u;
          v621 = 0u;
          v519 = v583;
          v527 = objc_msgSend_countByEnumeratingWithState_objects_count_(v519, v520, &v618, v681, 16, v521);
          if (v527)
          {
            v528 = *v619;
LABEL_162:
            v529 = 0;
            while (1)
            {
              if (*v619 != v528)
              {
                objc_enumerationMutation(v519);
              }

              v530 = *(*(&v618 + 1) + 8 * v529);
              v531 = objc_msgSend_strokeIdentifiers(v518, v522, v523, v524, v525, v526);
              v537 = objc_msgSend_strokeIdentifiers(v530, v532, v533, v534, v535, v536);
              isEqualToSet = objc_msgSend_isEqualToSet_(v531, v538, v537, v539, v540, v541);

              if (isEqualToSet)
              {
                break;
              }

              if (v527 == ++v529)
              {
                v527 = objc_msgSend_countByEnumeratingWithState_objects_count_(v519, v522, &v618, v681, 16, v526);
                if (v527)
                {
                  goto LABEL_162;
                }

                goto LABEL_168;
              }
            }

            v547 = v530;
            objc_msgSend_removeObject_(v588, v548, v518, v549, v550, v551);
            objc_msgSend_addObject_(v588, v552, v547, v553, v554, v555);

            if (!v547)
            {
              goto LABEL_171;
            }

            objc_msgSend_removeObject_(v519, v543, v547, v544, v545, v546);
          }

          else
          {
LABEL_168:

LABEL_171:
            v547 = 0;
            objc_msgSend_addObject_(objc, v543, v518, v544, v545, v546);
          }
        }

        v608 = objc_msgSend_countByEnumeratingWithState_objects_count_(v580, v556, &v622, v682, 16, v557);
      }

      while (v608);
    }

    v573 = objc;
    objc_msgSend_unionSet_(v581, v558, v583, v559, v560, v561);
  }

  if (blockCopy[2]())
  {
    v562 = 0;
  }

  else
  {
    v563 = [CHBottomUpStrokeGroupingResult alloc];
    v562 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_substrokePlacementsByStrokeIdentifier_(v563, v564, v588, v573, v581, v596);
  }

  v565 = v562;

  sub_1836E1928(*&buf[8]);

  return v565;
}

- (id)strokeGroupFromStrokes:(id)strokes ancestorIdentifier:(int64_t)identifier
{
  v4 = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_strokeBoundsPerStrokeIdentifier_substrokesByStrokeIdentifier_scriptClassification_(self, a2, strokes, identifier, 0, 0, 0);

  return v4;
}

- (id)strokeGroupFromStrokes:(id)strokes ancestorIdentifier:(int64_t)identifier strokeBoundsPerStrokeIdentifier:(id)strokeIdentifier substrokesByStrokeIdentifier:(id)byStrokeIdentifier scriptClassification:(int64_t)classification
{
  v218 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  strokeIdentifierCopy = strokeIdentifier;
  byStrokeIdentifierCopy = byStrokeIdentifier;
  v18 = objc_msgSend_firstObject(strokesCopy, v13, v14, v15, v16, v17);
  v191 = objc_msgSend_encodedStrokeIdentifier(v18, v19, v20, v21, v22, v23);

  v29 = objc_msgSend_lastObject(strokesCopy, v24, v25, v26, v27, v28);
  v192 = objc_msgSend_encodedStrokeIdentifier(v29, v30, v31, v32, v33, v34);
  identifierCopy = identifier;
  classificationCopy = classification;

  v35 = MEMORY[0x1E695DFA8];
  v41 = objc_msgSend_count(strokesCopy, v36, v37, v38, v39, v40);
  v197 = objc_msgSend_setWithCapacity_(v35, v42, v41, v43, v44, v45);
  v51 = objc_msgSend_array(MEMORY[0x1E695DF70], v46, v47, v48, v49, v50);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  obj = strokesCopy;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v212, v217, 16, v57);
  if (v58)
  {
    v198 = v58;
    v194 = *v213;
    do
    {
      for (i = 0; i != v198; ++i)
      {
        if (*v213 != v194)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v212 + 1) + 8 * i);
        v65 = objc_msgSend_encodedStrokeIdentifier(v64, v59, v60, v61, v62, v63);
        objc_msgSend_addObject_(v197, v66, v65, v67, v68, v69);
        v74 = objc_msgSend_objectForKeyedSubscript_(byStrokeIdentifierCopy, v70, v65, v71, v72, v73);
        if (!v74)
        {
          v75 = objc_opt_class();
          v74 = objc_msgSend_substrokesForStroke_(v75, v76, v64, v77, v78, v79);
        }

        v199 = v64;
        v200 = v65;
        v210 = 0u;
        v211 = 0u;
        v208 = 0u;
        v209 = 0u;
        v80 = v74;
        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v208, v216, 16, v82);
        if (v83)
        {
          v84 = *v209;
          do
          {
            for (j = 0; j != v83; ++j)
            {
              if (*v209 != v84)
              {
                objc_enumerationMutation(v80);
              }

              v86 = *(*(&v208 + 1) + 8 * j);
              v87 = [CHSubstrokePlacement alloc];
              v92 = objc_msgSend_initWithSubstroke_(v87, v88, v86, v89, v90, v91);
              objc_msgSend_setWritingOrientation_(v92, v93, v94, v95, v96, v97, self->_defaultOrientationVector.dx, self->_defaultOrientationVector.dy);
              objc_msgSend_setStrokeDeviation_(v92, v98, v99, v100, v101, v102, self->_defaultDeviationVector.dx, self->_defaultDeviationVector.dy);
              objc_msgSend_addObject_(v51, v103, v92, v104, v105, v106);
            }

            v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v107, &v208, v216, 16, v108);
          }

          while (v83);
        }

        v113 = objc_msgSend_objectForKeyedSubscript_(strokeIdentifierCopy, v109, v200, v110, v111, v112);
        v119 = v113;
        if (v113)
        {
          objc_msgSend_ch_CGRectValue(v113, v114, v115, v116, v117, v118);
        }

        else
        {
          objc_msgSend_bounds(v199, v114, v115, v116, v117, v118);
        }

        v222.origin.x = v120;
        v222.origin.y = v121;
        v222.size.width = v122;
        v222.size.height = v123;
        v220.origin.x = x;
        v220.origin.y = y;
        v220.size.width = width;
        v220.size.height = height;
        v221 = CGRectUnion(v220, v222);
        x = v221.origin.x;
        y = v221.origin.y;
        width = v221.size.width;
        height = v221.size.height;
      }

      v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v212, v217, 16, v63);
    }

    while (v198);
  }

  v129 = objc_msgSend_firstObject(obj, v124, v125, v126, v127, v128);
  v135 = objc_msgSend_encodedStrokeIdentifier(v129, v130, v131, v132, v133, v134);
  v140 = objc_msgSend_objectForKeyedSubscript_(strokeIdentifierCopy, v136, v135, v137, v138, v139);

  if (v140)
  {
    objc_msgSend_ch_CGRectValue(v140, v141, v142, v143, v144, v145);
    v149 = v148;
    v151 = v150;
  }

  else
  {
    v152 = objc_msgSend_firstObject(obj, v141, v142, v143, v144, v145);
    objc_msgSend_bounds(v152, v153, v154, v155, v156, v157);
    v149 = v158;
    v151 = v159;
  }

  defaultOrientationVector = self->_defaultOrientationVector;
  defaultDeviationVector = self->_defaultDeviationVector;
  v207 = defaultOrientationVector;
  if ((classificationCopy - 4) <= 2 && self->_containsNonCJKLocale && self->_containsCJKLocale)
  {
    *__p = self->_defaultDeviationVector;
    groupingContextSize = self->_groupingContextSize;
    __asm { FMOV            V0.2D, #14.0 }

    self->_defaultDeviationVector = _Q0;
    self->_groupingContextSize = 15;
    v205 = v51;
    objc_msgSend_estimateWritingDirectionAndSortSubstrokesAccordingly_averageWritingOrientation_averageStrokeDeviation_(self, v146, &v205, &v207, &defaultDeviationVector, v147);
    v167 = v205;

    self->_defaultDeviationVector = *__p;
    self->_groupingContextSize = groupingContextSize;
  }

  else
  {
    v204 = v51;
    objc_msgSend_estimateWritingDirectionAndSortSubstrokesAccordingly_averageWritingOrientation_averageStrokeDeviation_(self, v146, &v204, &v207, &defaultDeviationVector, v147);
    v167 = v204;
  }

  v173 = v167;
  __p[0] = 0;
  __p[1] = 0;
  v203 = 0;
  v174 = objc_msgSend_count(obj, v168, v169, v170, v171, v172);
  if (v174)
  {
    if (!(v174 >> 60))
    {
      operator new();
    }

    sub_18368964C();
  }

  v175 = sub_183952538(self, v167, __p);
  v176 = sub_183952A70(self, v167, defaultDeviationVector.dx, defaultDeviationVector.dy);
  v177 = sub_1839533DC(self, v167, v175, v207.dx, v207.dy);
  v178 = [CHTextLineStrokeGroup alloc];
  textStrokeClassification = self->_textStrokeClassification;
  v185 = objc_msgSend_strategyIdentifier(self, v180, v181, v182, v183, v184);
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin_(v178, v186, identifierCopy, v197, v191, v192, textStrokeClassification, v185, x, y, width, height, v207, defaultDeviationVector, v173, v175, __p, v176, *&v177, v149, v151);

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin;
}

- (id)strokeGroupMergingGroup:(id)group withGroup:(id)withGroup
{
  v4 = sub_183953E28(self, group, withGroup, 0, 0);

  return v4;
}

- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup
{
  dy = vector.dy;
  dx = vector.dx;
  v274 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  objc_opt_class();
  factorCopy = factor;
  if (objc_opt_isKindOfClass())
  {
    v24 = groupCopy;
    v25 = 0;
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v70 = objc_msgSend_strokeIdentifiers(groupCopy, v14, v15, v16, v17, v18);
    v76 = objc_msgSend_strokeProvider(self, v71, v72, v73, v74, v75);
    v80 = objc_msgSend_sortedStrokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v77, v70, v76, v78, v79);

    if (objc_msgSend_count(v80, v81, v82, v83, v84, v85))
    {
      v91 = objc_msgSend_ancestorIdentifier(groupCopy, v86, v87, v88, v89, v90);
      v25 = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_(self, v92, v80, v91, v93, v94);

      v24 = v25;
      if (v25)
      {
LABEL_3:
        objc_msgSend_writingDirectionSortedStrokeIdentifiers(v24, v19, v20, v21, v22, v23);
        v226 = v24;
        v225 = v224 = v25;
        v218 = objc_msgSend_strokesForIdentifiers_(self, v26, v225, v27, v28, v29);
        v35 = objc_msgSend_writingDirectionSortedSubstrokes(v24, v30, v31, v32, v33, v34);
        v40 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0, v37, v38, v39);
        objc_msgSend_strokeDeviation(v40, v41, v42, v43, v44, v45);
        v47 = v46;
        v49 = v48;

        v232 = 0;
        v233 = 0;
        v234 = 0;
        v55 = *objc_msgSend_localStrokeWritingOrientations(v24, v50, v51, v52, v53, v54);
        v66 = *(objc_msgSend_localStrokeWritingOrientations(v24, v56, v57, v58, v59, v60) + 8);
        if (v55 == v66)
        {
          v68 = 0.0;
          goto LABEL_14;
        }

        v67 = v66 - v55 - 16;
        if (v67 >= 0x10)
        {
          v95 = (v67 >> 4) + 1;
          v69 = &v55[2 * (v95 & 0x1FFFFFFFFFFFFFFELL)];
          v96 = v55 + 2;
          v68 = 0.0;
          v97 = v95 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v98 = *(v96 - 2);
            v99 = *v96;
            v96 += 4;
            v68 = v68 + v98 + v99;
            v97 -= 2;
          }

          while (v97);
          if (v95 == (v95 & 0x1FFFFFFFFFFFFFFELL))
          {
LABEL_14:
            v101 = objc_msgSend_localStrokeWritingOrientations(v24, v61, v62, v63, v64, v65);
            v217 = dy;
            v102 = ((v101[1] - *v101) >> 4);
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v103 = v68 / v102;
            v104 = qword_1EA84DC68;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
            {
              v110 = **objc_msgSend_localStrokeWritingOrientations(v24, v105, v106, v107, v108, v109);
              *buf = 134218240;
              *&buf[4] = v110;
              *&buf[12] = 2048;
              *&buf[14] = v103;
              _os_log_impl(&dword_18366B000, v104, OS_LOG_TYPE_DEBUG, "Normalizing a drawing here with a local orientations on x = %f (first), %f (average)", buf, 0x16u);
            }

            v216 = v103;

            v229 = objc_msgSend_localStrokeWritingOrientations(v24, v111, v112, v113, v114, v115);
            v116 = v218;
            selfCopy = self;
            if (self)
            {
              v117 = atan2(self->_defaultOrientationVector.dy, self->_defaultOrientationVector.dx);
              v230 = v116;
              v123 = objc_msgSend_count(v116, v118, v119, v120, v121, v122);
              v124 = v229;
              if (0xAAAAAAAAAAAAAAABLL * ((v234 - v232) >> 3) < v123)
              {
                if (v123 < 0xAAAAAAAAAAAAAABLL)
                {
                  operator new();
                }

                sub_18368964C();
              }

              v256 = 0;
              v257 = &v256;
              v258 = 0x2020000000;
              v259 = 0x7FEFFFFFFFFFFFFFLL;
              v252 = 0;
              v253 = &v252;
              v254 = 0x2020000000;
              v255 = 0xFFEFFFFFFFFFFFFFLL;
              v248 = 0;
              v249 = &v248;
              v250 = 0x2020000000;
              v251 = 0x7FEFFFFFFFFFFFFFLL;
              v244 = 0;
              v245 = &v244;
              v246 = 0x2020000000;
              v247 = 0xFFEFFFFFFFFFFFFFLL;
              v130 = objc_alloc_init(CHDrawing);
              v131 = 0;
              v132 = 0;
              v227 = v49 * -2.0;
              v228 = v47 * -2.0;
              while (v132 < objc_msgSend_count(v116, v125, v126, v127, v128, v129))
              {
                v137 = objc_msgSend_objectAtIndexedSubscript_(v116, v133, v132, v134, v135, v136);
                v138 = atan2(*(*v124 + v131 + 8), *(*v124 + v131));
                objc_msgSend_bounds(v137, v139, v140, v141, v142, v143);
                MidX = CGRectGetMidX(v276);
                objc_msgSend_bounds(v137, v145, v146, v147, v148, v149);
                MidY = CGRectGetMidY(v277);
                v151 = v117 + v138;
                v152 = v151;
                v153 = __sincosf_stret(v152);
                if (v131)
                {
                  v231 = v9;
                  v154 = v102;
                  v155 = v103;
                  v151 = atan2(*(*v124 + v131 - 8) + *(*v124 + v131 + 8), *(*v124 + v131 - 16) + *(*v124 + v131));
                }

                else
                {
                  v155 = MidX + v228 * v153.__cosval;
                  v154 = MidY + v227 * v153.__sinval;
                  v231 = 0.0;
                  v8 = 0.0;
                }

                v156 = v117 + v151;
                v157 = __sincosf_stret(v156);
                v235 = 0;
                v236 = &v235;
                v237 = 0x4812000000;
                v238 = sub_1839552F8;
                v239 = sub_18395531C;
                v240 = &unk_183A5AC72;
                v242 = 0;
                v243 = 0;
                __p = 0;
                v158 = objc_opt_class();
                v159 = (MidY - v154) * v157.__cosval - (MidX - v155) * v157.__sinval;
                v9 = v231 + (MidY - v154) * v157.__sinval + (MidX - v155) * v157.__cosval;
                v8 = v8 + v159;
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = sub_183955334;
                v261 = &unk_1E6DE0510;
                v160 = v130;
                v268 = v9;
                v269 = v8;
                cosval = v153.__cosval;
                v271 = MidX;
                v272 = MidY;
                sinval = v153.__sinval;
                v262 = v160;
                v263 = &v235;
                v264 = &v256;
                v265 = &v252;
                v266 = &v248;
                v267 = &v244;
                objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v158, v161, v137, 0, 1, buf);
                v167 = v236;
                v168 = v233;
                if (v233 >= v234)
                {
                  v116 = v230;
                  v171 = sub_18374A8A8(&v232, v236 + 6);
                }

                else
                {
                  *v233 = 0;
                  *(v168 + 1) = 0;
                  *(v168 + 2) = 0;
                  v170 = v167[6];
                  v169 = v167[7];
                  if (v169 != v170)
                  {
                    if (((v169 - v170) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_18369761C();
                  }

                  v171 = v168 + 24;
                  v116 = v230;
                  v124 = v229;
                }

                v233 = v171;
                if (v130)
                {
                  objc_msgSend_endStroke(v160, v162, v163, v164, v165, v166);
                }

                _Block_object_dispose(&v235, 8);
                if (__p)
                {
                  v242 = __p;
                  operator delete(__p);
                }

                ++v132;
                v131 += 16;
                v103 = MidX;
                v102 = MidY;
              }

              v172 = v130;
              v173 = v257[3];
              v174 = v249[3];
              v175 = v253[3];
              v176 = v245[3];

              v177 = v175 - v173;
              v178 = v176 - v174;
              _Block_object_dispose(&v244, 8);
              _Block_object_dispose(&v248, 8);
              _Block_object_dispose(&v252, 8);
              _Block_object_dispose(&v256, 8);
            }

            else
            {
              v130 = 0;
              v178 = 0.0;
              v177 = 0.0;
              v174 = 0.0;
              v173 = 0.0;
            }

            v179 = v130;
            objc_msgSend_setNormalizedSize_(groupCopy, v180, v181, v182, v183, v184, v177, v178);
            v190 = objc_alloc_init(CHDrawing);
            v191 = 2.0;
            if (v178 >= 82.5)
            {
              v191 = 1.0;
            }

            if (selfCopy)
            {
              v192 = v191;
            }

            else
            {
              v192 = 0.0;
            }

            if (fabs(v216 + 1.0) >= 0.1)
            {
              v197 = v232;
              if (v233 != v232)
              {
                v198 = 0;
                do
                {
                  v200 = &v197[24 * v198];
                  v199 = *v200;
                  if (*(v200 + 1) != *v200)
                  {
                    v201 = 0;
                    v202 = 0;
                    do
                    {
                      objc_msgSend_addPoint_(v190, v185, v186, v187, v188, v189, dx + v192 * (*(v199 + v201) - v173), v217 + v192 * (*(v199 + v201 + 8) - v174));
                      ++v202;
                      v199 = *(v232 + 3 * v198);
                      v201 += 16;
                    }

                    while (v202 < (*(v232 + 3 * v198 + 1) - v199) >> 4);
                  }

                  objc_msgSend_endStroke(v190, v185, v186, v187, v188, v189);
                  ++v198;
                  v197 = v232;
                }

                while (v198 < 0xAAAAAAAAAAAAAAABLL * ((v233 - v232) >> 3));
              }

              v24 = v226;
              if (drawing)
              {
                v203 = v179;
                *drawing = v179;
              }

              if (ds)
              {
                v204 = v225;
                *ds = v225;
              }

              if (factorCopy)
              {
                *factorCopy = v192;
              }

              v196 = v190;
              if (!strokeGroup)
              {
                goto LABEL_71;
              }
            }

            else
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v193 = qword_1EA84DC68;
              if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v193, OS_LOG_TYPE_ERROR, "Suspect normalizing of a drawing where stroke order is flipped. Reverting.", buf, 2u);
              }

              if (drawing)
              {
                v194 = v179;
                *drawing = v179;
              }

              if (ds)
              {
                v195 = v225;
                *ds = v225;
              }

              if (factorCopy)
              {
                *factorCopy = v192;
              }

              v196 = v179;
              if (!strokeGroup)
              {
                goto LABEL_71;
              }
            }

            v205 = v224;
            *strokeGroup = v224;
LABEL_71:
            v206 = v196;

            v207 = v232;
            if (v232)
            {
              v208 = v233;
              v209 = v232;
              if (v233 != v232)
              {
                v210 = v233;
                do
                {
                  v212 = *(v210 - 3);
                  v210 -= 24;
                  v211 = v212;
                  if (v212)
                  {
                    *(v208 - 2) = v211;
                    operator delete(v211);
                  }

                  v208 = v210;
                }

                while (v210 != v207);
                v209 = v232;
              }

              v233 = v207;
              operator delete(v209);
            }

            v25 = v224;
            goto LABEL_86;
          }
        }

        else
        {
          v68 = 0.0;
          v69 = v55;
        }

        do
        {
          v100 = *v69;
          v69 += 2;
          v68 = v68 + v100;
        }

        while (v69 != v66);
        goto LABEL_14;
      }
    }

    else
    {
      v25 = 0;

      v24 = 0;
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v213 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v213, OS_LOG_TYPE_ERROR, "Stroke group can't be nil and must be of CHTextLineStrokeGroup class. Returning empty drawing.", buf, 2u);
  }

  v206 = objc_alloc_init(CHDrawing);
LABEL_86:

  return v206;
}

- (void)getMergingEndOfLineCost:(double *)cost mergingEndOfLineStroke:(id *)stroke forStroke:(id)forStroke consistingOfSubstrokes:(id)substrokes toLineGroup:(id)group
{
  forStrokeCopy = forStroke;
  substrokesCopy = substrokes;
  groupCopy = group;
  v45 = 0;
  v46 = 10000.0;
  v20 = objc_msgSend_writingDirectionSortedSubstrokes(groupCopy, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25);
  sub_1839555FC(self, &v46, &v45, forStrokeCopy, substrokesCopy, groupCopy, v26 - 1);
  v27 = v45;

  if ((objc_msgSend_lastSubstrokeIndexBeforeMerge(groupCopy, v28, v29, v30, v31, v32) & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v44 = 0.0;
    SubstrokeIndexBeforeMerge = objc_msgSend_lastSubstrokeIndexBeforeMerge(groupCopy, v33, v34, v35, v36, v37);
    sub_1839555FC(self, &v44, &v43, forStrokeCopy, substrokesCopy, groupCopy, SubstrokeIndexBeforeMerge);
    v39 = v43;
    v40 = v39;
    if (v44 < v46)
    {
      v46 = v44;
      v41 = v39;

      v27 = v41;
    }
  }

  if (cost)
  {
    *cost = v46;
  }

  if (stroke)
  {
    v42 = v27;
    *stroke = v27;
  }
}

- (void)getMergingMiddleOfLineCost:(double *)cost mergingMiddleOfLineStroke:(id *)stroke forStroke:(id)forStroke consistingOfSubstrokes:(id)substrokes toLineGroup:(id)group
{
  v291 = *MEMORY[0x1E69E9840];
  forStrokeCopy = forStroke;
  substrokesCopy = substrokes;
  groupCopy = group;
  v281 = forStrokeCopy;
  v275 = objc_msgSend_set(MEMORY[0x1E695DFA8], v13, v14, v15, v16, v17);
  objc_msgSend_bounds(forStrokeCopy, v18, v19, v20, v21, v22);
  v24 = v23;
  objc_msgSend_bounds(forStrokeCopy, v25, v26, v27, v28, v29);
  v31 = v30;
  objc_msgSend_bounds(forStrokeCopy, v32, v33, v34, v35, v36);
  v38 = v37;
  objc_msgSend_bounds(forStrokeCopy, v39, v40, v41, v42, v43);
  v45 = v44;
  objc_msgSend_bounds(forStrokeCopy, v46, v47, v48, v49, v50);
  v55 = sqrt(v38 * v45 + v24 * v31);
  v56 = -v55;
  v57 = v55 < 100.0;
  v58 = -100.0;
  if (!v57)
  {
    v58 = v56;
  }

  v292 = CGRectInset(*&v51, v58, v58);
  x = v292.origin.x;
  y = v292.origin.y;
  width = v292.size.width;
  height = v292.size.height;
  for (i = 0; ; ++i)
  {
    v69 = objc_msgSend_writingDirectionSortedSubstrokes(groupCopy, v59, v60, v61, v62, v63);
    v75 = objc_msgSend_count(v69, v70, v71, v72, v73, v74) - 1;

    if (i >= v75)
    {
      break;
    }

    v81 = objc_msgSend_writingDirectionSortedSubstrokes(groupCopy, v76, v77, v78, v79, v80);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, i, v83, v84, v85);

    v92 = objc_msgSend_substroke(v86, v87, v88, v89, v90, v91);
    objc_msgSend_bounds(v92, v93, v94, v95, v96, v97);
    v294.origin.x = x;
    v294.origin.y = y;
    v294.size.width = width;
    v294.size.height = height;
    LODWORD(v81) = CGRectIntersectsRect(v293, v294);

    if (v81)
    {
      objc_msgSend_addObject_(v275, v98, v86, v99, v100, v101);
    }
  }

  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  obj = v275;
  v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v102, &v285, v290, 16, v103);
  costCopy = cost;
  if (v104)
  {
    v110 = 0;
    v111 = 0;
    v277 = *v286;
    v278 = v104;
    v112 = 10000.0;
    do
    {
      for (j = 0; j != v278; ++j)
      {
        if (*v286 != v277)
        {
          objc_enumerationMutation(obj);
        }

        v113 = *(*(&v285 + 1) + 8 * j);
        if (!v110 || (objc_msgSend_encodedStrokeIdentifier(v110, v105, v106, v107, v108, v109), v114 = objc_claimAutoreleasedReturnValue(), objc_msgSend_substroke(v113, v115, v116, v117, v118, v119), v120 = objc_claimAutoreleasedReturnValue(), objc_msgSend_strokeIdentifier(v120, v121, v122, v123, v124, v125), v126 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v114, v127, v126, v128, v129, v130), v126, v120, v114, (isEqual & 1) == 0))
        {
          v137 = objc_opt_class();
          v143 = objc_msgSend_substroke(v113, v138, v139, v140, v141, v142);
          v149 = objc_msgSend_strokeIdentifier(v143, v144, v145, v146, v147, v148);
          v155 = objc_msgSend_strokeProvider(self, v150, v151, v152, v153, v154);
          v159 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v137, v156, v149, v155, v157, v158);

          v110 = v159;
        }

        objc_msgSend_averageWritingOrientation(groupCopy, v132, v133, v134, v135, v136);
        v161 = v160;
        objc_msgSend_writingOrientation(v113, v162, v163, v164, v165, v166);
        v168 = v167;
        objc_msgSend_averageWritingOrientation(groupCopy, v169, v170, v171, v172, v173);
        v175 = v174;
        objc_msgSend_writingOrientation(v113, v176, v177, v178, v179, v180);
        v186 = (v161 + v168) * 0.5;
        v188 = (v175 + v187) * 0.5;
        v189 = sqrt(v188 * v188 + v186 * v186);
        if (v189 != 0.0)
        {
          v186 = v186 / v189;
          v188 = v188 / v189;
        }

        if (self->_shouldLimitDefaultWritingOrientationDeviation)
        {
          objc_msgSend_clippedWritingOrientation_(self, v181, v182, v183, v184, v185, v186, v188);
          v186 = v190;
          v188 = v191;
        }

        objc_msgSend_averageStrokeDeviation(groupCopy, v181, v182, v183, v184, v185);
        v193 = v192;
        objc_msgSend_strokeDeviation(v113, v194, v195, v196, v197, v198);
        v200 = v199;
        objc_msgSend_averageStrokeDeviation(groupCopy, v201, v202, v203, v204, v205);
        v207 = v206;
        objc_msgSend_strokeDeviation(v113, v208, v209, v210, v211, v212);
        v218 = 0;
        dx = (v193 + v200) * 0.5;
        dy = (v207 + v219) * 0.5;
        if (dx <= self->_defaultDeviationVector.dx)
        {
          dx = self->_defaultDeviationVector.dx;
        }

        if (dy <= self->_defaultDeviationVector.dy)
        {
          dy = self->_defaultDeviationVector.dy;
        }

        v283 = v186;
        v284 = sqrt(dy * dy + dx * dx);
        v282 = v188;
        while (v218 < objc_msgSend_count(substrokesCopy, v213, v214, v215, v216, v217))
        {
          v222 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v105, v218, v107, v108, v109);
          v228 = objc_msgSend_substroke(v222, v223, v224, v225, v226, v227);

          v289 = v113;
          v232 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v229, &v289, 1, v230, v231);
          v233 = sub_183955D64(self, v232, v228, v110, v281, v186, v188);
          v235 = v234;

          v241 = v235 / v284;
          if (v235 / v284 >= 0.0)
          {
            mergeMiddleDyCostCoeff = self->_mergeMiddleBelowModifier * self->_mergeMiddleDyCostCoeff;
          }

          else
          {
            mergeMiddleDyCostCoeff = self->_mergeMiddleDyCostCoeff;
          }

          mergeMiddleDxCostCoeff = self->_mergeMiddleDxCostCoeff;
          objc_msgSend_bounds(v228, v236, v237, v238, v239, v240);
          v245 = v244;
          objc_msgSend_bounds(v228, v246, v247, v248, v249, v250);
          v252 = v251;
          objc_msgSend_bounds(v228, v253, v254, v255, v256, v257);
          v259 = v258;
          objc_msgSend_bounds(v228, v260, v261, v262, v263, v264);
          v265 = fabs(v233 / v284) * mergeMiddleDxCostCoeff + fabs(v241) * mergeMiddleDyCostCoeff;
          v267 = sqrt(v259 * v266 + v245 * v252) / v284;
          v268 = 1.0;
          v269 = v267 < 0.8 || v267 > 1.0;
          if (v267 <= 1.0 || v267 < 0.8)
          {
            v268 = 0.8;
          }

          if (v269)
          {
            v267 = v268;
          }

          v270 = v265 * v267;
          if (v265 * v267 >= v112)
          {
            v270 = v112;
            v188 = v282;
            v186 = v283;
          }

          else
          {
            v271 = v110;

            v188 = v282;
            v186 = v283;
            v111 = v271;
          }

          ++v218;
          v112 = v270;
        }
      }

      v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v105, &v285, v290, 16, v109);
    }

    while (v278);
  }

  else
  {
    v110 = 0;
    v111 = 0;
    v112 = 10000.0;
  }

  if (costCopy)
  {
    *costCopy = v112;
  }

  if (stroke)
  {
    v272 = v111;
    *stroke = v111;
  }
}

- (int64_t)compareDistanceInWritingSequenceOfStroke:(id)stroke andStroke:(id)andStroke toReferenceStroke:(id)referenceStroke
{
  strokeCopy = stroke;
  andStrokeCopy = andStroke;
  referenceStrokeCopy = referenceStroke;
  v16 = referenceStrokeCopy;
  v17 = 0;
  if (strokeCopy && andStrokeCopy && referenceStrokeCopy)
  {
    v18 = objc_msgSend_strokeProvider(self, v11, v12, v13, v14, v15);
    v24 = objc_msgSend_strokeIdentifier(strokeCopy, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_strokeIdentifier(v16, v25, v26, v27, v28, v29);
    v34 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v18, v31, v24, v30, v32, v33);

    v40 = objc_msgSend_strokeProvider(self, v35, v36, v37, v38, v39);
    v46 = objc_msgSend_strokeIdentifier(andStrokeCopy, v41, v42, v43, v44, v45);
    v52 = objc_msgSend_strokeIdentifier(v16, v47, v48, v49, v50, v51);
    v56 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v40, v53, v46, v52, v54, v55);

    v62 = objc_msgSend_strokeProvider(self, v57, v58, v59, v60, v61);
    v68 = objc_msgSend_strokeIdentifier(strokeCopy, v63, v64, v65, v66, v67);
    v74 = objc_msgSend_strokeIdentifier(andStrokeCopy, v69, v70, v71, v72, v73);
    v78 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v62, v75, v68, v74, v76, v77);

    if (v34 == -1 && v56 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      if (v56 != -1 || v34 != 1)
      {
        if (v78)
        {
          v17 = -1;
          if ((v34 != -1 || v78 != 1) && (v78 != -1 || v34 != 1) && v34 != 0)
          {
            v17 = 1;
          }
        }
      }
    }
  }

  return v17;
}

- (void)estimateWritingDirectionAndSortSubstrokesAccordingly:(id *)accordingly averageWritingOrientation:(CGVector *)orientation averageStrokeDeviation:(CGVector *)deviation
{
  v14 = *accordingly;
  v15 = 0;
  defaultOrientationVector = self->_defaultOrientationVector;
  while (2)
  {
    v16 = objc_msgSend_mutableCopy(v14, v9, v10, v11, v12, v13);
    objc_msgSend_updateLocalWritingOrientationsForSubstrokes_useCoalescedCenter_(self, v17, v14, 0, v18, v19);
    objc_msgSend_sortSubstrokesByWritingDirection_averageWritingOrientation_(self, v20, v14, &defaultOrientationVector, v21, v22);
    v28 = 0;
    ++v15;
    do
    {
      if (v28 >= objc_msgSend_count(v14, v23, v24, v25, v26, v27))
      {

        goto LABEL_9;
      }

      v33 = objc_msgSend_objectAtIndexedSubscript_(v14, v29, v28, v30, v31, v32);
      objc_msgSend_writingOrientation(v33, v34, v35, v36, v37, v38);
      v40 = v39;
      v42 = v41;
      v47 = objc_msgSend_objectAtIndexedSubscript_(v16, v43, v28, v44, v45, v46);
      objc_msgSend_writingOrientation(v47, v48, v49, v50, v51, v52);
      v54 = v53;
      v56 = v55;

      if (v40 != v54)
      {
        break;
      }

      ++v28;
    }

    while (v42 == v56);

    if (v15 != 10)
    {
      continue;
    }

    break;
  }

LABEL_9:
  if (objc_msgSend_count(v14, v9, v10, v11, v12, v13) > self->_groupingContextSize)
  {
    objc_msgSend_refineLocalWritingOrientationsForSubstrokes_useCoalescedCenter_(self, v57, v14, 0, v58, v59);
    objc_msgSend_sortSubstrokesByWritingDirection_averageWritingOrientation_(self, v60, v14, &defaultOrientationVector, v61, v62);
    defaultDeviationVector = defaultOrientationVector;
    v63 = objc_alloc(MEMORY[0x1E695DF70]);
    v67 = objc_msgSend_initWithArray_copyItems_(v63, v64, v14, 1, v65, v66);
    v73 = atan2(defaultOrientationVector.dy, defaultOrientationVector.dx);
    v74 = 0;
    v75 = 0.0;
    v76 = 0.0;
    while (v74 < objc_msgSend_count(v14, v68, v69, v70, v71, v72, defaultDeviationVector))
    {
      v81 = objc_msgSend_objectAtIndexedSubscript_(v14, v77, v74, v78, v79, v80);
      objc_msgSend_writingOrientation(v81, v82, v83, v84, v85, v86);
      v76 = v76 + 0.1;
      v75 = v75 + v87 * v76;

      ++v74;
    }

    if (objc_msgSend_refineWritingOrientationAndResortSubstrokes_averageWritingOrientation_(self, v77, v14, &defaultOrientationVector, v79, v80))
    {
      v93 = 0;
      v94 = 0.0;
      v95 = 0.0;
      while (v93 < objc_msgSend_count(v14, v88, v89, v90, v91, v92))
      {
        v100 = objc_msgSend_objectAtIndexedSubscript_(v14, v96, v93, v97, v98, v99);
        objc_msgSend_writingOrientation(v100, v101, v102, v103, v104, v105);
        v94 = v94 + 0.1;
        v95 = v95 + v106 * v94;

        ++v93;
      }

      if (v95 != v75)
      {
        if (objc_msgSend_refineWritingOrientationAndResortSubstrokes_averageWritingOrientation_(self, v96, v14, &defaultOrientationVector, v98, v99))
        {
          v112 = 0;
          v113 = 0.0;
          v114 = 0.0;
          while (v112 < objc_msgSend_count(v14, v107, v108, v109, v110, v111))
          {
            v119 = objc_msgSend_objectAtIndexedSubscript_(v14, v115, v112, v116, v117, v118);
            objc_msgSend_writingOrientation(v119, v120, v121, v122, v123, v124);
            v113 = v113 + 0.1;
            v114 = v114 + v125 * v113;

            ++v112;
          }

          if (v114 != v95)
          {
            if (objc_msgSend_refineWritingOrientationAndResortSubstrokes_averageWritingOrientation_(self, v115, v14, &defaultOrientationVector, v117, v118))
            {
              v131 = 0;
              v132 = 0.0;
              v133 = 0.0;
              while (v131 < objc_msgSend_count(v14, v126, v127, v128, v129, v130))
              {
                v138 = objc_msgSend_objectAtIndexedSubscript_(v14, v134, v131, v135, v136, v137);
                objc_msgSend_writingOrientation(v138, v139, v140, v141, v142, v143);
                v132 = v132 + 0.1;
                v133 = v133 + v144 * v132;

                ++v131;
              }

              if (v133 != v114)
              {
                if (objc_msgSend_refineWritingOrientationAndResortSubstrokes_averageWritingOrientation_(self, v134, v14, &defaultOrientationVector, v136, v137))
                {
                  v150 = 0;
                  v151 = 0.0;
                  v152 = 0.0;
                  while (v150 < objc_msgSend_count(v14, v145, v146, v147, v148, v149))
                  {
                    v157 = objc_msgSend_objectAtIndexedSubscript_(v14, v153, v150, v154, v155, v156);
                    objc_msgSend_writingOrientation(v157, v158, v159, v160, v161, v162);
                    v151 = v151 + 0.1;
                    v152 = v152 + v163 * v151;

                    ++v150;
                  }

                  if (v152 != v133 && objc_msgSend_refineWritingOrientationAndResortSubstrokes_averageWritingOrientation_(self, v153, v14, &defaultOrientationVector, v155, v156))
                  {
                    for (i = 0; i < objc_msgSend_count(v14, v164, v165, v166, v167, v168); ++i)
                    {
                      v174 = objc_msgSend_objectAtIndexedSubscript_(v14, v170, i, v171, v172, v173);
                      objc_msgSend_writingOrientation(v174, v175, v176, v177, v178, v179);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (vabdd_f64(atan2(defaultOrientationVector.dy, defaultOrientationVector.dx), v73) > 0.785398163)
    {
      v180 = v67;
      *accordingly = v67;
      v181 = v67;

      defaultOrientationVector = defaultDeviationVector;
      v14 = v181;
    }
  }

  defaultDeviationVector = self->_defaultDeviationVector;
  objc_msgSend_updateLocalStrokeDeviationsForSubstrokes_averageStrokeDeviation_(self, v57, v14, &defaultDeviationVector, v58, v59);
  if (orientation)
  {
    *orientation = defaultOrientationVector;
  }

  if (deviation)
  {
    *deviation = defaultDeviationVector;
  }
}

- (void)sortSubstrokesByWritingDirection:(id)direction averageWritingOrientation:(CGVector *)orientation
{
  directionCopy = direction;
  if (objc_msgSend_count(directionCopy, v6, v7, v8, v9, v10))
  {
    v16 = 0;
    v17 = 0.0;
    v18 = 0.0;
    while (v16 < objc_msgSend_count(directionCopy, v11, v12, v13, v14, v15))
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(directionCopy, v19, v16, v21, v22, v23);
      objc_msgSend_writingOrientation(v24, v25, v26, v27, v28, v29);
      v31 = v30;
      v33 = v32;

      v17 = v17 + v31;
      v18 = v18 + v33;
      ++v16;
    }

    if (objc_msgSend_count(directionCopy, v19, v20, v21, v22, v23))
    {
      v17 = v17 / objc_msgSend_count(directionCopy, v34, v35, v36, v37, v38);
      v18 = v18 / objc_msgSend_count(directionCopy, v39, v40, v41, v42, v43);
    }

    if (orientation)
    {
      orientation->dx = v17;
      orientation->dy = v18;
    }

    if (objc_msgSend_count(directionCopy, v34, v35, v36, v37, v38) >= 2)
    {
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_183957890;
      v48[3] = &unk_1E6DE0558;
      *&v48[4] = v17;
      *&v48[5] = v18;
      objc_msgSend_sortUsingComparator_(directionCopy, v44, v48, v45, v46, v47);
    }
  }

  else if (orientation)
  {
    orientation->dx = 0.0;
    orientation->dy = 0.0;
  }
}

- (void)updateLocalWritingOrientationsForSubstrokes:(id)substrokes useCoalescedCenter:(BOOL)center
{
  centerCopy = center;
  substrokesCopy = substrokes;
  if (objc_msgSend_count(substrokesCopy, v6, v7, v8, v9, v10) < self->_groupingContextSize)
  {
    for (i = 0; i < objc_msgSend_count(substrokesCopy, v11, v12, v13, v14, v15); ++i)
    {
      dx = self->_defaultOrientationVector.dx;
      dy = self->_defaultOrientationVector.dy;
      v23 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v17, i, v18, v19, v20);
      objc_msgSend_setWritingOrientation_(v23, v24, v25, v26, v27, v28, dx, dy);
    }

    goto LABEL_55;
  }

  v29 = objc_msgSend_count(substrokesCopy, v11, v12, v13, v14, v15);
  v35 = 2 * self->_groupingContextSize;
  v36 = 0.0;
  if (v29 < v35)
  {
    v36 = (v35 - objc_msgSend_count(substrokesCopy, v30, v31, v32, v33, v34)) / self->_groupingContextSize;
  }

  __p = 0;
  v188 = 0;
  v189 = 0;
  v37 = objc_msgSend_count(substrokesCopy, v30, v31, v32, v33, v34);
  v43 = v37;
  if (v37)
  {
    if (!(v37 >> 60))
    {
      operator new();
    }

    sub_18368964C();
  }

  v44 = 0;
  v45 = 0;
  v46 = -1;
  v47 = 1.0 - v36;
  v184 = 0;
  while (v45 < objc_msgSend_count(substrokesCopy, v38, v39, v40, v41, v42))
  {
    v185 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v49, v45, v50, v51, v52);
    if (centerCopy)
    {
      objc_msgSend_coalescedCenter(v185, v53, v54, v55, v56, v57);
      MidX = v63;
      MidY = v65;
      v67 = 0.0;
      v68 = 0.0;
      __src = v44;
      if (self->_groupingContextSize < 2)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v129 = objc_msgSend_substroke(v185, v53, v54, v55, v56, v57);
      objc_msgSend_bounds(v129, v130, v131, v132, v133, v134);
      MidX = CGRectGetMidX(v194);
      v140 = objc_msgSend_substroke(v185, v135, v136, v137, v138, v139);
      objc_msgSend_bounds(v140, v141, v142, v143, v144, v145);
      MidY = CGRectGetMidY(v195);

      v67 = 0.0;
      v68 = 0.0;
      __src = v44;
      if (self->_groupingContextSize < 2)
      {
LABEL_29:
        v146 = sqrt(0.0 * 0.0 + 0.0 * 0.0);
        if (v146 != 0.0)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }
    }

    v181 = v43;
    v182 = v46;
    v69 = 0;
    v70 = v46;
    v71 = 1;
    do
    {
      if (v45 >= v71)
      {
        v72 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v58, v70, v60, v61, v62);
        v78 = v72;
        if (centerCopy)
        {
          objc_msgSend_coalescedCenter(v72, v73, v74, v75, v76, v77);
          v80 = v79;
          v82 = v81;
        }

        else
        {
          v83 = objc_msgSend_substroke(v72, v73, v74, v75, v76, v77);
          objc_msgSend_bounds(v83, v84, v85, v86, v87, v88);
          v80 = CGRectGetMidX(v190);
          v94 = objc_msgSend_substroke(v78, v89, v90, v91, v92, v93);
          objc_msgSend_bounds(v94, v95, v96, v97, v98, v99);
          v82 = CGRectGetMidY(v191);
        }

        v67 = v67 + MidX - v80;
        v68 = v68 + MidY - v82;
        ++v69;
      }

      v100 = objc_msgSend_count(substrokesCopy, v58, v59, v60, v61, v62);
      v59 = v45 + v71;
      if (v45 + v71 < v100)
      {
        v101 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v58, v59, v60, v61, v62);
        v107 = v101;
        if (centerCopy)
        {
          objc_msgSend_coalescedCenter(v101, v102, v103, v104, v105, v106);
          v109 = v108;
          v111 = v110;
        }

        else
        {
          v112 = objc_msgSend_substroke(v101, v102, v103, v104, v105, v106);
          objc_msgSend_bounds(v112, v113, v114, v115, v116, v117);
          v109 = CGRectGetMidX(v192);
          v123 = objc_msgSend_substroke(v107, v118, v119, v120, v121, v122);
          objc_msgSend_bounds(v123, v124, v125, v126, v127, v128);
          v111 = CGRectGetMidY(v193);
        }

        v67 = v67 + v109 - MidX;
        v68 = v68 + v111 - MidY;
        ++v69;
      }

      ++v71;
      --v70;
    }

    while (v71 < self->_groupingContextSize);
    if (v69)
    {
      v67 = v67 / v69;
      v68 = v68 / v69;
    }

    v46 = v182;
    v44 = __src;
    v43 = v181;
    v146 = sqrt(v68 * v68 + v67 * v67);
    if (v146 != 0.0)
    {
LABEL_30:
      v147 = v67 / v146;
      v148 = v68 / v146;
      if (v36 <= 0.0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_38:
    v147 = self->_defaultOrientationVector.dx;
    v148 = self->_defaultOrientationVector.dy;
    if (v36 <= 0.0)
    {
LABEL_39:
      v154 = v184;
      if (v184 < v43)
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    }

LABEL_31:
    v149 = v47 * v147;
    v150 = v47 * v148;
    v147 = self->_defaultOrientationVector.dx;
    v148 = self->_defaultOrientationVector.dy;
    v151 = v149 + v36 * v147;
    v152 = v150 + v36 * v148;
    v153 = sqrt(v152 * v152 + v151 * v151);
    v154 = v184;
    if (v153 != 0.0)
    {
      v147 = v151 / v153;
      v148 = v152 / v153;
    }

    if (v184 < v43)
    {
LABEL_11:
      *v154 = v147;
      v154[1] = v148;
      v48 = v154 + 2;
      goto LABEL_12;
    }

LABEL_40:
    v155 = v46;
    v156 = v154 - v44;
    v157 = (v154 - v44) >> 4;
    v158 = v157 + 1;
    if ((v157 + 1) >> 60)
    {
      sub_18368964C();
    }

    if ((v43 - v44) >> 3 > v158)
    {
      v158 = (v43 - v44) >> 3;
    }

    if (v43 - v44 >= 0x7FFFFFFFFFFFFFF0)
    {
      v159 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v159 = v158;
    }

    if (v159)
    {
      if (!(v159 >> 60))
      {
        operator new();
      }

      sub_183688F00();
    }

    v44 = 0;
    v160 = (16 * v157);
    *v160 = v147;
    v160[1] = v148;
    v161 = 16 * v157 + 16;
    memcpy(0, __src, v156);
    __p = 0;
    v189 = 0;
    v46 = v155;
    v48 = v161;
    v43 = 0;
LABEL_12:
    v184 = v48;
    v188 = v48;

    ++v45;
    ++v46;
  }

  objc_msgSend_smoothLocalWritingOrientations_(self, v49, &__p, v50, v51, v52);
  v167 = 0;
  for (j = 0; j < objc_msgSend_count(substrokesCopy, v162, v163, v164, v165, v166); ++j)
  {
    v173 = *(__p + v167);
    v174 = *(__p + v167 + 8);
    v175 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v169, j, v170, v171, v172);
    objc_msgSend_setWritingOrientation_(v175, v176, v177, v178, v179, v180, v173, v174);

    v167 += 16;
  }

  if (__p)
  {
    v188 = __p;
    operator delete(__p);
  }

LABEL_55:
}

- (void)smoothLocalWritingOrientations:(void *)orientations
{
  v3 = *orientations;
  v4 = (*(orientations + 1) - *orientations) >> 4;
  if (v4 >= 2)
  {
    v6 = *v3;
    v5 = v3 + 1;
    v7 = v6;
    v8 = v4 - 1;
    __asm { FMOV            V1.2D, #0.5 }

    do
    {
      v14 = v7;
      v7 = *v5;
      v15 = vmlaq_f64(vmulq_f64(*v5, _Q1), _Q1, v14);
      v16 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v15, v15).f64[1]) + v15.f64[0] * v15.f64[0]);
      if (v16 != 0.0)
      {
        *v5 = vdivq_f64(v15, vdupq_lane_s64(*&v16, 0));
      }

      ++v5;
      --v8;
    }

    while (v8);
  }
}

- (CGVector)clippedWritingOrientation:(CGVector)orientation
{
  dy = orientation.dy;
  dx = orientation.dx;
  v5 = atan2(self->_defaultOrientationVector.dy, self->_defaultOrientationVector.dx);
  v6 = atan2(dy, dx) - v5;
  if (v6 <= 3.14159265)
  {
    if (v6 <= -3.14159265)
    {
      v6 = v6 + 3.14159265;
      if (fabs(v6) > 0.523598776)
      {
        goto LABEL_8;
      }
    }

    else if (fabs(v6) > 0.523598776)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = v6 + -3.14159265;
    if (fabs(v6) > 0.523598776)
    {
LABEL_8:
      v9 = v5 + dbl_1839DA1D0[v6 < 0.0];
      if (v9 <= 3.14159265)
      {
        if (v9 > -3.14159265)
        {
LABEL_13:
          v11 = __sincos_stret(v9);
          cosval = v11.__cosval;
          sinval = v11.__sinval;
          goto LABEL_14;
        }

        v10 = 6.28318531;
      }

      else
      {
        v10 = -6.28318531;
      }

      v9 = v9 + v10;
      goto LABEL_13;
    }
  }

  cosval = dx;
  sinval = dy;
LABEL_14:
  result.dy = sinval;
  result.dx = cosval;
  return result;
}

- (void)refineLocalWritingOrientationsForSubstrokes:(id)substrokes useCoalescedCenter:(BOOL)center
{
  v138 = *MEMORY[0x1E69E9840];
  v134 = 0;
  v135 = 0;
  v136 = 0;
  substrokesCopy = substrokes;
  v11 = objc_msgSend_count(substrokesCopy, v6, v7, v8, v9, v10);
  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_18369761C();
  }

  selfCopy = self;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v12 = substrokesCopy;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v130, v137, 16, v14);
  obj = v12;
  if (v20)
  {
    v21 = *v131;
    if (center)
    {
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v131 != v21)
          {
            objc_enumerationMutation(obj);
          }

          objc_msgSend_coalescedCenter(*(*(&v130 + 1) + 8 * i), v15, v16, v17, v18, v19);
          v26 = v135;
          if (v135 < v136)
          {
            *v135 = v24;
            *(v26 + 1) = v25;
            v23 = (v26 + 16);
          }

          else
          {
            v27 = v134;
            v28 = v135 - v134;
            v29 = (v135 - v134) >> 4;
            v30 = v29 + 1;
            if ((v29 + 1) >> 60)
            {
              sub_18369761C();
            }

            v31 = v136 - v134;
            if ((v136 - v134) >> 3 > v30)
            {
              v30 = v31 >> 3;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF0)
            {
              v32 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              if (!(v32 >> 60))
              {
                operator new();
              }

              sub_183688F00();
            }

            v33 = (v135 - v134) >> 4;
            v34 = (16 * v29);
            *v34 = v24;
            v34[1] = v25;
            v23 = 16 * v29 + 16;
            v35 = (16 * v29 - 16 * v33);
            memcpy(&v34[-2 * v33], v27, v28);
            v134 = v35;
            v135 = v23;
            v136 = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          v135 = v23;
        }

        v12 = obj;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v130, v137, 16, v19);
      }

      while (v20);
    }

    else
    {
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v131 != v21)
          {
            objc_enumerationMutation(v12);
          }

          v37 = *(*(&v130 + 1) + 8 * j);
          v38 = objc_msgSend_substroke(v37, v15, v16, v17, v18, v19);
          objc_msgSend_bounds(v38, v39, v40, v41, v42, v43);
          MidX = CGRectGetMidX(v139);
          v50 = objc_msgSend_substroke(v37, v45, v46, v47, v48, v49);
          objc_msgSend_bounds(v50, v51, v52, v53, v54, v55);
          MidY = CGRectGetMidY(v140);
          v57 = v135;
          if (v135 >= v136)
          {
            v59 = v134;
            v60 = v135 - v134;
            v61 = (v135 - v134) >> 4;
            v62 = v61 + 1;
            if ((v61 + 1) >> 60)
            {
              sub_18369761C();
            }

            v63 = v136 - v134;
            if ((v136 - v134) >> 3 > v62)
            {
              v62 = v63 >> 3;
            }

            if (v63 >= 0x7FFFFFFFFFFFFFF0)
            {
              v64 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v64 = v62;
            }

            if (v64)
            {
              if (!(v64 >> 60))
              {
                operator new();
              }

              sub_183688F00();
            }

            v65 = 16 * v61;
            *v65 = MidX;
            *(v65 + 8) = MidY;
            v58 = 16 * v61 + 16;
            memcpy(0, v59, v60);
            v134 = 0;
            v135 = v58;
            v136 = 0;
            if (v59)
            {
              operator delete(v59);
            }

            v12 = obj;
          }

          else
          {
            *v135 = MidX;
            *(v57 + 1) = MidY;
            v58 = (v57 + 16);
          }

          v135 = v58;
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v130, v137, 16, v19);
      }

      while (v20);
    }
  }

  groupingContextSize = self->_groupingContextSize;
  v72 = objc_msgSend_count(v12, v67, v68, v69, v70, v71);
  v77 = self->_groupingContextSize;
  v78 = v77;
  if (groupingContextSize >= v72 - v77)
  {
    v79 = objc_msgSend_count(v12, v73, v74, v75, v77, v76);
    v77 = self->_groupingContextSize;
    v78 = v79 - v77;
  }

  objc_msgSend_flippedCenters_ofSubstrokes_maxStrokesGap_begnning_(self, v73, &v134, v12, v77, 1);
  objc_msgSend_flippedCenters_ofSubstrokes_maxStrokesGap_begnning_(self, v80, &v134, v12, self->_groupingContextSize, 0);
  v85 = ((v135 - v134) >> 4) + 2 * v78;
  if (v85)
  {
    if (!(v85 >> 60))
    {
      operator new();
    }

    sub_18369761C();
  }

  v118 = v78;
  v89 = v128;
  v92 = v129;
  if (v128 == v129)
  {
    v86 = 0;
    v90 = v134;
    v91 = v135;
    if (v134 == v135)
    {
      goto LABEL_64;
    }

    goto LABEL_59;
  }

  v86 = 0;
  do
  {
    v87 = v86;
    v88 = v86 >> 4;
    if (((v86 >> 4) + 1) >> 60)
    {
      sub_18369761C();
    }

    if (v86 >> 4 != -1)
    {
      if (!(((v86 >> 4) + 1) >> 60))
      {
        operator new();
      }

      sub_183688F00();
    }

    *(16 * v88) = *v89;
    v86 = 16 * v88 + 16;
    memcpy(0, 0, v87);
    ++v89;
  }

  while (v89 != v92);
  v90 = v134;
  v91 = v135;
  if (v134 != v135)
  {
    do
    {
LABEL_59:
      v93 = v86;
      v94 = v86 >> 4;
      if (((v86 >> 4) + 1) >> 60)
      {
        sub_18369761C();
      }

      if (v86 >> 4 != -1)
      {
        if (!(((v86 >> 4) + 1) >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      *(16 * v94) = *v90;
      v86 = 16 * v94 + 16;
      memcpy(0, 0, v93);
      v90 += 16;
    }

    while (v90 != v91);
  }

LABEL_64:
  v95 = v126;
  v96 = v127;
  if (v126 != v127)
  {
    do
    {
      v97 = v86;
      v98 = v86 >> 4;
      if (((v86 >> 4) + 1) >> 60)
      {
        sub_18369761C();
      }

      if (v86 >> 4 != -1)
      {
        if (!(((v86 >> 4) + 1) >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      *(16 * v98) = *v95;
      v86 = 16 * v98 + 16;
      memcpy(0, 0, v97);
      ++v95;
    }

    while (v95 != v96);
  }

  __p = 0;
  v124 = 0;
  v125 = 0;
  if (v86)
  {
    if (!((v86 >> 4) >> 60))
    {
      operator new();
    }

    sub_18368964C();
  }

  objc_msgSend_smoothLocalWritingOrientations_(selfCopy, v81, &__p, v82, v83, v84, v118);
  v104 = 0;
  v105 = 16 * v119;
  while (v104 < objc_msgSend_count(obj, v99, v100, v101, v102, v103))
  {
    v110 = *(__p + v105);
    v111 = *(__p + v105 + 8);
    v112 = objc_msgSend_objectAtIndexedSubscript_(obj, v106, v104, v107, v108, v109);
    objc_msgSend_setWritingOrientation_(v112, v113, v114, v115, v116, v117, v110, v111);

    ++v104;
    v105 += 16;
  }

  if (__p)
  {
    v124 = __p;
    operator delete(__p);
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }
}

- (vector<CGPoint,)flippedCenters:(CHBottomUpStrokeGroupingStrategy *)self ofSubstrokes:(SEL)substrokes maxStrokesGap:(const void *)gap begnning:(id)begnning
{
  begnningCopy = begnning;
  if (((*(gap + 1) - *gap) >> 4) - a6 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = ((*(gap + 1) - *gap) >> 4) - a6;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_18369761C();
  }

  v12 = atan2(0.0 / 0, 0.0 / 0);
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeRotation(&v22, -v12);
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeRotation(&v21, v12);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  if (a7)
  {
    begin = retstr->__begin_;
    end = retstr->__end_;
    if (retstr->__begin_ != end)
    {
      v15 = end - 1;
      if (v15 > begin)
      {
        v16 = begin + 1;
        do
        {
          v17 = v16[-1];
          v16[-1] = *v15;
          *v15-- = v17;
        }

        while (v16++ < v15);
      }
    }
  }

  return result;
}

- (BOOL)refineWritingOrientationAndResortSubstrokes:(id)substrokes averageWritingOrientation:(CGVector *)orientation
{
  substrokesCopy = substrokes;
  v339 = 0;
  v340 = 0;
  v341 = 0;
  v12 = objc_msgSend_count(substrokesCopy, v7, v8, v9, v10, v11);
  v335 = substrokesCopy;
  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_18368964C();
  }

  v18 = objc_msgSend_count(substrokesCopy, v13, v14, v15, v16, v17);
  orientationCopy = orientation;
  selfCopy = self;
  if (v18)
  {
    if (!(v18 >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0.0;
  while (v25 < objc_msgSend_count(substrokesCopy, v19, v20, v21, v22, v23, orientationCopy))
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v27, v25, v29, v30, v31);
    objc_msgSend_setOriginalWritingDirectionIndex_(v32, v33, v25, v34, v35, v36);
    v42 = objc_msgSend_substroke(v32, v37, v38, v39, v40, v41);
    objc_msgSend_writingOrientation(v32, v43, v44, v45, v46, v47);
    v49 = v48;
    objc_msgSend_writingOrientation(v32, v50, v51, v52, v53, v54);
    v56 = atan2(v49, v55);
    objc_msgSend_bounds(v42, v57, v58, v59, v60, v61);
    MidX = CGRectGetMidX(v342);
    objc_msgSend_bounds(v42, v63, v64, v65, v66, v67);
    MidY = CGRectGetMidY(v343);
    v69 = v56;
    v75 = __sincosf_stret(v69);
    cosval = v75.__cosval;
    sinval = v75.__sinval;
    if (v25)
    {
      v78 = objc_msgSend_objectAtIndexedSubscript_(v335, v70, v25 - 1, *&v72, *&v73, *&v74);
      objc_msgSend_writingOrientation(v78, v79, v80, v81, v82, v83);
      v85 = v84;
      objc_msgSend_writingOrientation(v32, v86, v87, v88, v89, v90);
      v92 = v91;
      v97 = objc_msgSend_objectAtIndexedSubscript_(v335, v93, v25 - 1, v94, v95, v96);
      objc_msgSend_writingOrientation(v97, v98, v99, v100, v101, v102);
      v104 = v103;
      objc_msgSend_writingOrientation(v32, v105, v106, v107, v108, v109);
      v111 = atan2(v85 + v92, v104 + v110);

      v112 = v111;
      v118 = __sincosf_stret(v112);
      v119 = v118.__cosval;
      v120 = v118.__sinval;
    }

    else
    {
      objc_msgSend_strokeDeviation(v32, v70, *&v71, *&v72, *&v73, *&v74);
      v122 = v121;
      objc_msgSend_strokeDeviation(v32, v123, v124, v125, v126, v127);
      v332 = MidY + v128 * -2.0 * sinval;
      v333 = MidX + v122 * -2.0 * cosval;
      v120 = v75.__sinval;
      v119 = v75.__cosval;
    }

    v129 = objc_msgSend_convexHull(v42, v113, *&v114, *&v115, *&v116, *&v117);
    v130 = *v129;
    v131 = *(v129 + 8);
    if (*v129 == v131)
    {
      v136 = 1.79769313e308;
      v135 = 1.79769313e308;
      v144 = -1.79769313e308 - 1.79769313e308;
      v145 = -1.79769313e308 - 1.79769313e308;
      v146 = v340;
      v147 = v341;
      if (v340 < v341)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v132 = v120 * (MidY - v332) + (MidX - v333) * v119 + 0.0;
      v133 = v119 * (MidY - v332) - (MidX - v333) * v120 + 0.0;
      v134 = -1.79769313e308;
      v135 = 1.79769313e308;
      v136 = 1.79769313e308;
      v137 = -1.79769313e308;
      do
      {
        v138 = *v130;
        v139 = v130[1];
        v130 += 2;
        v140 = v138 - MidX;
        v141 = v139 - MidY;
        v142 = v132 + cosval * v140 + sinval * v141;
        v143 = v133 + -sinval * v140 + cosval * v141;
        if (v142 < v135)
        {
          v135 = v142;
        }

        if (v142 > v134)
        {
          v134 = v142;
        }

        if (v143 < v136)
        {
          v136 = v143;
        }

        if (v143 > v137)
        {
          v137 = v143;
        }
      }

      while (v130 != v131);
      v144 = v134 - v135;
      v145 = v137 - v136;
      v146 = v340;
      v147 = v341;
      if (v340 < v341)
      {
LABEL_24:
        *v146 = v135;
        v146[1] = v136;
        v148 = (v146 + 4);
        v146[2] = v144;
        v146[3] = v145;
        goto LABEL_37;
      }
    }

    v149 = v339;
    v150 = v146 - v339;
    v151 = (v146 - v339) >> 5;
    v152 = v151 + 1;
    if ((v151 + 1) >> 59)
    {
      sub_18368964C();
    }

    v153 = v147 - v339;
    if (v153 >> 4 > v152)
    {
      v152 = v153 >> 4;
    }

    if (v153 >= 0x7FFFFFFFFFFFFFE0)
    {
      v154 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v154 = v152;
    }

    if (v154)
    {
      if (!(v154 >> 59))
      {
        operator new();
      }

      sub_183688F00();
    }

    v155 = v151;
    v156 = (32 * v151);
    *v156 = v135;
    v156[1] = v136;
    v156[2] = v144;
    v156[3] = v145;
    v148 = 32 * v151 + 32;
    v157 = &v156[-4 * v155];
    memcpy(v157, v149, v150);
    v339 = v157;
    v341 = 0;
    if (v149)
    {
      operator delete(v149);
    }

LABEL_37:
    v340 = v148;
    v344.origin.x = v135;
    v344.origin.y = v136;
    v344.size.width = v144;
    v344.size.height = v145;
    v158 = CGRectGetMidY(v344);
    v159 = v24;
    v160 = v24 >> 3;
    if (((v24 >> 3) + 1) >> 61)
    {
      sub_1836D58DC();
    }

    if (v24 >> 3 != -1)
    {
      if (!(((v24 >> 3) + 1) >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    *(8 * v160) = v158;
    v24 = 8 * v160 + 8;
    memcpy(0, 0, v159);
    v26 = v26 + sqrt(v145 * v145 + v144 * v144);

    ++v25;
    substrokesCopy = v335;
  }

  v161 = objc_msgSend_count(substrokesCopy, v27, v28, v29, v30, v31);
  if (v340 != v339)
  {
    if (((v340 - v339) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  __p = &v339;
  sub_18395DFE0(0, 0, &__p, 0, 1);
  if (v24)
  {
    if ((v24 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v167 = 0;
  v168 = v26 / v161 * 0.7;
  groupingContextSize = selfCopy->_groupingContextSize;
  v331 = 2 * groupingContextSize;
  while (v167 < objc_msgSend_count(substrokesCopy, v162, v163, v164, v165, v166))
  {
    v180 = v167 + v331;
    if (objc_msgSend_count(substrokesCopy, v170, v171, v172, v173, v174) - 1 < v167 + v331)
    {
      v180 = objc_msgSend_count(substrokesCopy, v175, v176, v177, v178, v179) - 1;
    }

    if (selfCopy->_groupingContextSize * 1.5 > (objc_msgSend_count(substrokesCopy, v175, v176, v177, v178, v179) + ~v180))
    {
      v180 = objc_msgSend_count(substrokesCopy, v181, v182, v183, v184, v185) - 1;
    }

    v191 = objc_msgSend_count(substrokesCopy, v181, v182, v183, v184, v185);
    v192 = v180 + 1;
    v193 = v180 + 1 + groupingContextSize;
    if (v191 < v193)
    {
      v193 = objc_msgSend_count(substrokesCopy, v186, v187, v188, v189, v190);
    }

    v194 = 8 * ((v167 - groupingContextSize) & ~((v167 - groupingContextSize) >> 63));
    __p = 0;
    v337 = 0;
    v338 = 0;
    if (8 * v193 != v194)
    {
      if (((8 * v193 - v194) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1836D58DC();
    }

    v195 = objc_opt_class();
    objc_msgSend_vectorMeanWithoutOutliers_(v195, v196, &__p, v197, v198, v199);
    if (v167 <= v180)
    {
      v201 = v180 - v167 + 1;
      v202 = 8 * v167;
      v203 = (8 * v167);
      do
      {
        if (vabdd_f64(*v203, v200) < v168)
        {
          operator new();
        }

        v202 += 8;
        ++v203;
        --v201;
      }

      while (v201);
    }

    if (__p)
    {
      v337 = __p;
      operator delete(__p);
    }

    v167 = v192;
    substrokesCopy = v335;
  }

  if (selfCopy->_groupingContextSize)
  {
    if (objc_msgSend_count(v335, v170, v171, v172, v173, v174))
    {
      operator new();
    }

    substrokesCopy = v335;
  }

  v204 = objc_msgSend_array(MEMORY[0x1E695DF70], v170, v171, v172, v173, v174);
  v209 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v205, MEMORY[0], v206, v207, v208);
  v215 = objc_msgSend_substroke(v209, v210, v211, v212, v213, v214);
  objc_msgSend_bounds(v215, v216, v217, v218, v219, v220);
  v222 = v221;
  v224 = v223;
  v226 = v225;
  v228 = v227;

  v229 = v209;
  v345.origin.x = v222;
  v345.origin.y = v224;
  v345.size.width = v226;
  v345.size.height = v228;
  v230 = CGRectGetMidX(v345);
  v346.origin.x = v222;
  v346.origin.y = v224;
  v346.size.width = v226;
  v346.size.height = v228;
  v231 = CGRectGetMidY(v346);
  objc_msgSend_setCoalescedCenter_(v209, v232, v233, v234, v235, v236, v230, v231);
  objc_msgSend_addObject_(v204, v237, v209, v238, v239, v240);
  v246 = objc_msgSend_count(v335, v241, v242, v243, v244, v245);
  if (v246 == objc_msgSend_count(v204, v247, v248, v249, v250, v251) || objc_msgSend_count(v204, v252, v253, v254, v255, v256) < selfCopy->_groupingContextSize)
  {
    v260 = 0;

    operator delete(0);
  }

  else
  {
    objc_msgSend_updateLocalWritingOrientationsForSubstrokes_useCoalescedCenter_(selfCopy, v257, v204, 1, v258, v259);
    if (objc_msgSend_count(v204, v262, v263, v264, v265, v266) > selfCopy->_groupingContextSize)
    {
      objc_msgSend_refineLocalWritingOrientationsForSubstrokes_useCoalescedCenter_(selfCopy, v267, v204, 1, v270, v271);
    }

    v272 = 0;
    for (i = 0; i < objc_msgSend_count(v204, v267, v268, v269, v270, v271); ++i)
    {
      v279 = objc_msgSend_objectAtIndexedSubscript_(v204, v274, i, v276, v277, v278);
      v290 = objc_msgSend_originalWritingDirectionIndex(v279, v280, v281, v282, v283, v284);
      if (v272 < v290)
      {
        do
        {
          objc_msgSend_writingOrientation(v279, v285, v286, v287, v288, v289);
          v292 = v291;
          v294 = v293;
          v299 = objc_msgSend_objectAtIndexedSubscript_(v335, v295, v272, v296, v297, v298);
          objc_msgSend_setWritingOrientation_(v299, v300, v301, v302, v303, v304, v292, v294);

          ++v272;
        }

        while (v290 != v272);
      }

      v272 = v290;
    }

    for (j = v272 + 1; j < objc_msgSend_count(v335, v274, v275, v276, v277, v278); ++j)
    {
      v310 = objc_msgSend_objectAtIndexedSubscript_(v335, v306, v272, v307, v308, v309);
      objc_msgSend_writingOrientation(v310, v311, v312, v313, v314, v315);
      v317 = v316;
      v319 = v318;
      v324 = objc_msgSend_objectAtIndexedSubscript_(v335, v320, j, v321, v322, v323);
      objc_msgSend_setWritingOrientation_(v324, v325, v326, v327, v328, v329, v317, v319);
    }

    objc_msgSend_sortSubstrokesByWritingDirection_averageWritingOrientation_(selfCopy, v306, v335, orientationCopy, v308, v309);
    v260 = 1;

    operator delete(0);
  }

  if (v339)
  {
    v340 = v339;
    operator delete(v339);
  }

  return v260;
}

- (void)updateLocalStrokeDeviationsForSubstrokes:(id)substrokes averageStrokeDeviation:(CGVector *)deviation
{
  substrokesCopy = substrokes;
  if (objc_msgSend_count(substrokesCopy, v6, v7, v8, v9, v10) >= 2)
  {
    for (i = 0; i < objc_msgSend_count(substrokesCopy, v11, v12, v13, v14, v15); ++i)
    {
      v58 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v53, i, v55, v56, v57);
      v64 = objc_msgSend_substroke(v58, v59, v60, v61, v62, v63);

      objc_msgSend_bounds(v64, v65, v66, v67, v68, v69);
      MidX = CGRectGetMidX(v225);
      objc_msgSend_bounds(v64, v71, v72, v73, v74, v75);
      MidY = CGRectGetMidY(v226);
      v81 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v77, i, v78, v79, v80);
      objc_msgSend_writingOrientation(v81, v82, v83, v84, v85, v86);
      v88 = v87;
      v90 = v89;

      v96 = 0;
      v97 = 0;
      v98 = 0.0;
      v99 = 0.0;
      v100 = 0.0;
      while (1)
      {
        v101 = objc_msgSend_convexHull(v64, v91, v92, v93, v94, v95);
        if (v97 >= (v101[1] - *v101) >> 4)
        {
          break;
        }

        v107 = (*objc_msgSend_convexHull(v64, v102, v103, v104, v105, v106) + v96);
        v108 = MidX - *v107;
        v109 = MidY - v107[1];
        v100 = v100 + fabs(v90 * v109 + v108 * v88) * 2.0;
        v110 = fabs(v88 * v109 - v108 * v90);
        v99 = v99 + v110 * 2.0;
        if (v110 > v98)
        {
          v98 = v110;
        }

        ++v97;
        v96 += 16;
      }

      if (v97 > 1)
      {
        v100 = v100 / v97;
        v99 = v99 / v97;
      }

      if (v100 <= v99)
      {
        v111 = v99;
      }

      else
      {
        v111 = v100;
      }

      strokeDeviationCapCoeff = self->_strokeDeviationCapCoeff;
      v221 = v111;
      if (i)
      {
        v112 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v102, i - 1, v104, v105, v106);
        v118 = objc_msgSend_substroke(v112, v113, v114, v115, v116, v117);
        objc_msgSend_bounds(v118, v119, v120, v121, v122, v123);
        v219 = CGRectGetMidX(v227);
        v129 = objc_msgSend_substroke(v112, v124, v125, v126, v127, v128);
        objc_msgSend_bounds(v129, v130, v131, v132, v133, v134);
        v218 = CGRectGetMidY(v228);

        v139 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v135, i - 1, v136, v137, v138);
        objc_msgSend_writingOrientation(v139, v140, v141, v142, v143, v144);
        v146 = v145;
        v151 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v147, i - 1, v148, v149, v150);
        objc_msgSend_writingOrientation(v151, v152, v153, v154, v155, v156);
        v157 = (v88 + v146) * 0.5;
        v159 = (v90 + v158) * 0.5;

        v100 = v100 + fabs((MidY - v218) * v159 + (MidX - v219) * v157);
        v160 = fabs((MidY - v218) * v157 - (MidX - v219) * v159);
        if (v160 > v98)
        {
          v98 = v160;
        }

        v161 = 3.0;
      }

      else
      {
        v161 = 2.0;
      }

      v162 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v102, i, v104, v105, v106);
      v168 = v162;
      v169 = v221 * strokeDeviationCapCoeff;
      if (v98 >= v221 * strokeDeviationCapCoeff)
      {
        v170 = v221 * strokeDeviationCapCoeff;
      }

      else
      {
        v170 = v98;
      }

      if (v100 / v161 < v169)
      {
        v169 = v100 / v161;
      }

      objc_msgSend_setStrokeDeviation_(v162, v163, v164, v165, v166, v167, v169, v170);
    }

    v171 = objc_msgSend_count(substrokesCopy, v53, v54, v55, v56, v57);
    if (v171)
    {
      if (!(v171 >> 60))
      {
        operator new();
      }

      sub_18368964C();
    }

    if (objc_msgSend_count(substrokesCopy, v172, v173, v174, v175, v176))
    {
      v182 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v177, 0, v179, v180, v181);
      objc_msgSend_strokeDeviation(v182, v183, v184, v185, v186, v187);

      if (objc_msgSend_count(substrokesCopy, v188, v189, v190, v191, v192) != 1)
      {
        v197 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v193, 1, v194, v195, v196);
        objc_msgSend_strokeDeviation(v197, v198, v199, v200, v201, v202);
      }

      operator new();
    }

    v203 = 0;
    v222 = 0u;
    v204 = 0;
    while (v203 < objc_msgSend_count(substrokesCopy, v177, v178, v179, v180, v181))
    {
      v209 = *v204;
      v210 = v204[1];
      v211 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v205, v203, v206, v207, v208);
      objc_msgSend_setStrokeDeviation_(v211, v212, v213, v214, v215, v216, v209, v210);

      v217 = *v204;
      v204 += 2;
      v222 = vaddq_f64(v222, v217);
      ++v203;
    }

    if (deviation)
    {
      *deviation = vdivq_f64(v222, vdupq_lane_s64(COERCE__INT64(0), 0));
    }
  }

  else
  {
    for (j = 0; j < objc_msgSend_count(substrokesCopy, v11, v12, v13, v14, v15); ++j)
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v17, j, v18, v19, v20);
      v27 = objc_msgSend_substroke(v21, v22, v23, v24, v25, v26);

      objc_msgSend_bounds(v27, v28, v29, v30, v31, v32);
      dx = v33;
      objc_msgSend_bounds(v27, v35, v36, v37, v38, v39);
      if (dx < self->_defaultDeviationVector.dx)
      {
        dx = self->_defaultDeviationVector.dx;
      }

      if (v44 >= self->_defaultDeviationVector.dy)
      {
        dy = v44;
      }

      else
      {
        dy = self->_defaultDeviationVector.dy;
      }

      v46 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v40, j, v41, v42, v43);
      objc_msgSend_setStrokeDeviation_(v46, v47, v48, v49, v50, v51, dx, dy);

      if (deviation)
      {
        deviation->dx = dx;
        deviation->dy = dy;
      }
    }
  }
}

- (void)mergeGroupsPostProcessing:(id)processing createdGroups:(id)groups deletedGroups:(id)deletedGroups availableGroupingStrategies:(id)strategies allowOppositeOrientations:(BOOL)orientations groupStatistics:(id)statistics
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  sub_183950C28(self, processing, groups, deletedGroups, strategies, orientations, &v8, statistics);
  sub_1836E1928(v9[0]);
}

- (id)tryRegroupingStrokesInGroup:(id)group substrokePlacementsByStrokeIdentifier:(id)identifier cancellationBlock:(id)block
{
  v348 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  identifierCopy = identifier;
  blockCopy = block;
  selfCopy = self;
  v324 = objc_msgSend_strokeProvider(self, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_set(MEMORY[0x1E695DFA8], v13, v14, v15, v16, v17);
  v328 = v18;
  v24 = objc_msgSend_strokeIdentifiers(groupCopy, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_count(v24, v25, v26, v27, v28, v29);
  splitMinimumStrokeCount = self->_splitMinimumStrokeCount;

  if (v30 >= splitMinimumStrokeCount)
  {
    v38 = objc_msgSend_strokeIdentifiers(groupCopy, v32, v33, v34, v35, v36);
    v44 = objc_msgSend_allObjects(v38, v39, v40, v41, v42, v43);
    v343[0] = MEMORY[0x1E69E9820];
    v343[1] = 3221225472;
    v343[2] = sub_18395BF4C;
    v343[3] = &unk_1E6DDCA70;
    v325 = v324;
    v344 = v325;
    v323 = objc_msgSend_sortedArrayUsingComparator_(v44, v45, v343, v46, v47, v48);

    v331 = objc_msgSend_lastObject(v323, v49, v50, v51, v52, v53);
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v63 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v58, v59, v60, v61, v62);
    v341 = 0u;
    v342 = 0u;
    v339 = 0u;
    v340 = 0u;
    v69 = objc_msgSend_writingDirectionSortedSubstrokes(groupCopy, v64, v65, v66, v67, v68);
    v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v339, v347, 16, v71);
    r1[0] = *&x;
    if (v77)
    {
      v78 = *v340;
      v79 = y;
      v80 = width;
      v81 = height;
      do
      {
        for (i = 0; i != v77; ++i)
        {
          if (*v340 != v78)
          {
            objc_enumerationMutation(v69);
          }

          v83 = *(*(&v339 + 1) + 8 * i);
          objc_msgSend_rotatedBounds(v83, v72, v73, v74, v75, v76);
          v359.origin.x = v84;
          v359.origin.y = v85;
          v359.size.width = v86;
          v359.size.height = v87;
          v350.origin.x = x;
          v350.origin.y = y;
          v350.size.width = width;
          v350.size.height = height;
          v351 = CGRectUnion(v350, v359);
          x = v351.origin.x;
          y = v351.origin.y;
          width = v351.size.width;
          height = v351.size.height;
          v93 = objc_msgSend_substroke(v83, v88, v89, v90, v91, v92);
          v99 = objc_msgSend_strokeIdentifier(v93, v94, v95, v96, v97, v98);
          isEqual = objc_msgSend_isEqual_(v99, v100, v331, v101, v102, v103);

          if (isEqual)
          {
            objc_msgSend_rotatedBounds(v83, v105, v106, v107, v108, v109);
            v360.origin.x = v110;
            v360.origin.y = v111;
            v360.size.width = v112;
            v360.size.height = v113;
            *&v352.origin.x = r1[0];
            v352.origin.y = v79;
            v352.size.width = v80;
            v352.size.height = v81;
            v353 = CGRectUnion(v352, v360);
            r1[0] = *&v353.origin.x;
            v79 = v353.origin.y;
            v80 = v353.size.width;
            v81 = v353.size.height;
          }

          objc_msgSend_rotatedBounds(v83, v105, v106, v107, v108, v109);
          MaxX = CGRectGetMaxX(v354);
          v120 = objc_msgSend_substroke(v83, v115, v116, v117, v118, v119);
          v126 = objc_msgSend_strokeIdentifier(v120, v121, v122, v123, v124, v125);
          v131 = objc_msgSend_objectForKey_(v63, v127, v126, v128, v129, v130);

          if (v131)
          {
            objc_msgSend_floatValue(v131, v132, v133, v134, v135, v136);
            v143 = v142;
            if (MaxX >= v143)
            {
              v143 = MaxX;
            }

            v144 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v137, v138, v139, v140, v141, v143);
            v150 = objc_msgSend_substroke(v83, v145, v146, v147, v148, v149);
            v156 = objc_msgSend_strokeIdentifier(v150, v151, v152, v153, v154, v155);
            objc_msgSend_setObject_forKey_(v63, v157, v144, v156, v158, v159);
          }

          else
          {
            v144 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v132, v133, v134, v135, v136, MaxX);
            v150 = objc_msgSend_substroke(v83, v160, v161, v162, v163, v164);
            v156 = objc_msgSend_strokeIdentifier(v150, v165, v166, v167, v168, v169);
            objc_msgSend_setObject_forKey_(v63, v170, v144, v156, v171, v172);
          }
        }

        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v72, &v339, v347, 16, v76);
      }

      while (v77);
    }

    else
    {
      v79 = y;
      v80 = width;
      v81 = height;
    }

    v355.origin.x = x;
    v355.origin.y = y;
    v355.size.width = width;
    v355.size.height = height;
    v321 = CGRectGetMaxX(v355);
    *&v356.origin.x = r1[0];
    v356.origin.y = v79;
    v356.size.width = v80;
    v356.size.height = v81;
    v320 = CGRectGetMaxX(v356);
    objc_msgSend_averageStrokeDeviation(groupCopy, v173, v174, v175, v176, v177);
    v179 = v178;
    *&v357.origin.x = r1[0];
    v357.origin.y = v79;
    v357.size.width = v80;
    v357.size.height = v81;
    MinY = CGRectGetMinY(v357);
    v358.origin.x = x;
    v358.origin.y = y;
    v358.size.width = width;
    v358.size.height = height;
    v185 = CGRectGetMinY(v358);
    if (v321 - v320 >= v179 || MinY - v185 >= height * 0.5)
    {
      v337 = 0u;
      v338 = 0u;
      v335 = 0u;
      v336 = 0u;
      v187 = v323;
      v190 = 0;
      v191 = 0;
      v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v188, &v335, v346, 16, v189);
      if (v196)
      {
        v197 = *v336;
        v198 = -3.40282347e38;
        do
        {
          for (j = 0; j != v196; ++j)
          {
            if (*v336 != v197)
            {
              objc_enumerationMutation(v187);
            }

            v200 = objc_msgSend_objectForKeyedSubscript_(v63, v192, *(*(&v335 + 1) + 8 * j), v193, v194, v195);
            objc_msgSend_floatValue(v200, v201, v202, v203, v204, v205);
            v207 = v206;

            objc_msgSend_averageStrokeDeviation(groupCopy, v208, v209, v210, v211, v212);
            v213 = v207;
            v215 = v198 - v214;
            if (v198 <= v207)
            {
              v216 = v207;
            }

            else
            {
              v216 = v198;
            }

            if (v191 <= v190)
            {
              v217 = v190;
            }

            else
            {
              v217 = v191;
            }

            if (v215 > v213)
            {
              v198 = -3.40282347e38;
            }

            else
            {
              v198 = v216;
            }

            if (v215 <= v213)
            {
              ++v190;
            }

            else
            {
              v190 = 0;
            }

            if (v215 > v213)
            {
              v191 = v217;
            }
          }

          v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v192, &v335, v346, 16, v195);
        }

        while (v196);
      }

      if (v191 <= v190)
      {
        v223 = v190;
      }

      else
      {
        v223 = v191;
      }

      splitMaxNaturalIndexDiffThreshold = selfCopy->_splitMaxNaturalIndexDiffThreshold;
      if (v223 * 0.8 <= splitMaxNaturalIndexDiffThreshold)
      {
        splitMaxNaturalIndexDiffThreshold = v223 * 0.8;
      }

      if (splitMaxNaturalIndexDiffThreshold >= selfCopy->_splitMinimumStrokeCount)
      {
        v225 = splitMaxNaturalIndexDiffThreshold;
      }

      else
      {
        v225 = selfCopy->_splitMinimumStrokeCount;
      }

      v226 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(groupCopy, v218, v219, v220, v221, v222);
      v322 = objc_msgSend_firstObject(v226, v227, v228, v229, v230, v231);

      v241 = objc_msgSend_indexOfObject_(v187, v232, v322, v233, v234, v235);
      v242 = 0;
      for (k = 1; ; ++k)
      {
        v244 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(groupCopy, v236, v237, v238, v239, v240);
        v250 = k < objc_msgSend_count(v244, v245, v246, v247, v248, v249);

        if (!v250)
        {
          break;
        }

        v256 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(groupCopy, v251, v252, v253, v254, v255);
        v261 = objc_msgSend_objectAtIndexedSubscript_(v256, v257, k, v258, v259, v260);

        v266 = objc_msgSend_indexOfObject_(v187, v262, v261, v263, v264, v265);
        v267 = v266;
        v268 = v266 - v241;
        if (v266 - v241 < 0)
        {
          v268 = v241 - v266;
        }

        if (v268 > v225)
        {
          ++v242;
        }

        v241 = v267;
      }

      v269 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(groupCopy, v251, v252, v253, v254, v255);
      if ((objc_msgSend_count(v269, v270, v271, v272, v273, v274) - 1) * 0.3 < 2.0)
      {
        v287 = 2;
      }

      else
      {
        v280 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(groupCopy, v275, v276, v277, v278, v279);
        v286 = objc_msgSend_count(v280, v281, v282, v283, v284, v285);

        v287 = ((v286 - 1) * 0.3);
      }

      if (v242 <= v287)
      {
        v317 = v328;
        objc_msgSend_addObject_(v328, v288, groupCopy, v290, v291, v292);
      }

      else
      {
        v293 = objc_msgSend_set(MEMORY[0x1E695DFA8], v288, v289, v290, v291, v292);
        objc_msgSend_addObject_(v293, v294, groupCopy, v295, v296, v297);
        v333 = 0u;
        v334 = 0u;
        memset(&r1[1], 0, 32);
        r1[0] = v187;
        v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(r1[0], v298, &r1[1], v345, 16, v299);
        if (v300)
        {
          v301 = *r1[3];
LABEL_64:
          v302 = 0;
          while (1)
          {
            if (*r1[3] != v301)
            {
              objc_enumerationMutation(r1[0]);
            }

            v303 = *(r1[2] + v302);
            if (blockCopy[2]())
            {
              break;
            }

            v304 = objc_autoreleasePoolPush();
            v309 = objc_msgSend_strokeIdentifierFromData_(v325, v305, v303, v306, v307, v308);
            v314 = objc_msgSend_strokeForIdentifier_(v325, v310, v309, v311, v312, v313);
            sub_18394EE24(selfCopy, v328, 0, 0, v314, 0, identifierCopy, v293, 0, 0, 0, blockCopy);

            objc_autoreleasePoolPop(v304);
            if (v300 == ++v302)
            {
              v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(r1[0], v315, &r1[1], v345, 16, v316);
              if (v300)
              {
                goto LABEL_64;
              }

              break;
            }
          }
        }

        v317 = v328;
      }

      v318 = v317;
    }

    else
    {
      objc_msgSend_addObject_(v328, v181, groupCopy, v182, v183, v184);
      v186 = v328;
    }

    v18 = v328;
  }

  else
  {
    objc_msgSend_addObject_(v18, v32, groupCopy, v34, v35, v36);
    v37 = v18;
  }

  return v328;
}

- (id)regroupedStrokeGroup:(id)group fromResult:(id)result withAdversarialGroup:(id)adversarialGroup allSubstrokesByStrokeIdentifier:(id)identifier cancellationBlock:(id)block
{
  v232 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  resultCopy = result;
  adversarialGroupCopy = adversarialGroup;
  identifierCopy = identifier;
  blockCopy = block;
  v12 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(groupCopy, v13, v12, v14, v15, v16) || (v21 = objc_opt_class(), (objc_msgSend_isMemberOfClass_(resultCopy, v22, v21, v23, v24, v25) & 1) == 0))
  {
    v192 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v17, groupCopy, v18, v19, v20);
    goto LABEL_43;
  }

  v188 = objc_msgSend_strokeProvider(self, v17, v26, v18, v19, v20);
  if (!v188)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v32 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_ERROR, "strokeProvider cannot be nil.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v33 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v33 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_FAULT, "strokeProvider cannot be nil.", buf, 2u);
    goto LABEL_11;
  }

LABEL_12:
  v192 = objc_msgSend_set(MEMORY[0x1E695DFA8], v27, v28, v29, v30, v31);
  v39 = objc_msgSend_strokeIdentifiers(groupCopy, v34, v35, v36, v37, v38);
  v45 = objc_msgSend_allObjects(v39, v40, v41, v42, v43, v44);
  v221[0] = MEMORY[0x1E69E9820];
  v221[1] = 3221225472;
  v221[2] = sub_18395C99C;
  v221[3] = &unk_1E6DDCA70;
  v202 = v188;
  v222 = v202;
  v187 = objc_msgSend_sortedArrayUsingComparator_(v45, v46, v221, v47, v48, v49);

  v201 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v50, v51, v52, v53, v54);
  v60 = objc_msgSend_substrokePlacementsByStrokeIdentifier(resultCopy, v55, v56, v57, v58, v59);
  objc_msgSend_addEntriesFromDictionary_(v201, v61, v60, v62, v63, v64);

  v200 = objc_msgSend_array(MEMORY[0x1E695DF70], v65, v66, v67, v68, v69);
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  objc_msgSend_strokeIdentifiers(adversarialGroupCopy, v70, v71, v72, v73, v74);
  v76 = v75 = v202;
  obj = v76;
  v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v217, v231, 16, v78);
  if (v79)
  {
    v195 = *v218;
    do
    {
      v197 = v79;
      for (i = 0; i != v197; ++i)
      {
        if (*v218 != v195)
        {
          objc_enumerationMutation(obj);
        }

        v203 = objc_msgSend_strokeIdentifierFromData_(v75, v80, *(*(&v217 + 1) + 8 * i), v81, v82, v83);
        v205 = objc_msgSend_strokeForIdentifier_(v75, v85, v203, v86, v87, v88);
        objc_msgSend_addObject_(v200, v89, v205, v90, v91, v92);
        v98 = objc_msgSend_array(MEMORY[0x1E695DF70], v93, v94, v95, v96, v97);
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v104 = objc_msgSend_encodedStrokeIdentifier(v205, v99, v100, v101, v102, v103);
        v109 = objc_msgSend_objectForKey_(identifierCopy, v105, v104, v106, v107, v108);

        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v213, v230, 16, v111);
        if (v112)
        {
          v113 = *v214;
          do
          {
            for (j = 0; j != v112; ++j)
            {
              if (*v214 != v113)
              {
                objc_enumerationMutation(v109);
              }

              v115 = *(*(&v213 + 1) + 8 * j);
              v116 = [CHSubstrokePlacement alloc];
              v121 = objc_msgSend_initWithSubstroke_(v116, v117, v115, v118, v119, v120);
              objc_msgSend_setWritingOrientation_(v121, v122, v123, v124, v125, v126, self->_defaultOrientationVector.dx, self->_defaultOrientationVector.dy);
              objc_msgSend_addObject_(v98, v127, v121, v128, v129, v130);
            }

            v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v131, &v213, v230, 16, v132);
          }

          while (v112);
        }

        v138 = objc_msgSend_encodedStrokeIdentifier(v205, v133, v134, v135, v136, v137);
        objc_msgSend_setObject_forKey_(v201, v139, v98, v138, v140, v141);

        v75 = v202;
      }

      v76 = obj;
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v80, &v217, v231, 16, v83);
    }

    while (v79);
  }

  v198 = objc_msgSend_set(MEMORY[0x1E695DFA8], v142, v143, v144, v145, v146);
  objc_msgSend_addObject_(v198, v147, groupCopy, v148, v149, v150);
  v212[0] = 0;
  v212[1] = 0;
  v211 = v212;
  v204 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v151, v152, v153, v154, v155);
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v196 = v187;
  v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(v196, v156, &v207, v229, 16, v157);
  if (v158)
  {
    v206 = *v208;
LABEL_28:
    v159 = 0;
    while (1)
    {
      if (*v208 != v206)
      {
        objc_enumerationMutation(v196);
      }

      v160 = *(*(&v207 + 1) + 8 * v159);
      if (blockCopy[2]())
      {
        break;
      }

      v161 = objc_autoreleasePoolPush();
      v166 = objc_msgSend_strokeIdentifierFromData_(v202, v162, v160, v163, v164, v165);
      v175 = objc_msgSend_strokeForIdentifier_(v202, v167, v166, v168, v169, v170);
      if (v175)
      {
        sub_18394EE24(self, v192, 0, 0, v175, v200, v201, v198, 0, 0, 0, blockCopy);
        sub_183950C28(self, v192, 0, 0, 0, 0, &v211, v204);
      }

      else
      {
        isValidStrokeIdentifier = objc_msgSend_isValidStrokeIdentifier_(v202, v171, v166, v172, v173, v174);
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v177 = qword_1EA84DC68;
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          v183 = objc_msgSend_strokeProviderVersion(v202, v178, v179, v180, v181, v182);
          *buf = 138412802;
          v224 = v166;
          v225 = 2112;
          v226 = v183;
          v227 = 1024;
          v228 = isValidStrokeIdentifier;
          _os_log_impl(&dword_18366B000, v177, OS_LOG_TYPE_DEFAULT, "Failed to get stroke with id: %@ from stroke provider version %@, isValid ? %d", buf, 0x1Cu);
        }
      }

      objc_autoreleasePoolPop(v161);
      if (v158 == ++v159)
      {
        v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(v196, v184, &v207, v229, 16, v185);
        if (v158)
        {
          goto LABEL_28;
        }

        break;
      }
    }
  }

  sub_1836E1928(v212[0]);
LABEL_43:

  return v192;
}

- (double)relativeOverlapOfGroup:(id)group withGroup:(id)withGroup
{
  groupCopy = group;
  withGroupCopy = withGroup;
  v8 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(groupCopy, v9, v8, v10, v11, v12) && (v18 = objc_opt_class(), (objc_msgSend_isMemberOfClass_(withGroupCopy, v19, v18, v20, v21, v22) & 1) != 0))
  {
    v23 = groupCopy;
    v191 = withGroupCopy;
    v24 = sub_18395AF48(self, v23, 0);
    v29 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27, v28);
    objc_msgSend_floatValue(v29, v30, v31, v32, v33, v34);
    v36 = v35;

    v41 = objc_msgSend_objectAtIndexedSubscript_(v24, v37, 1, v38, v39, v40);
    objc_msgSend_floatValue(v41, v42, v43, v44, v45, v46);
    v48 = v47;

    objc_msgSend_bounds(v23, v49, v50, v51, v52, v53);
    MinX = CGRectGetMinX(v194);
    objc_msgSend_bounds(v23, v55, v56, v57, v58, v59);
    MaxY = CGRectGetMaxY(v195);
    v61 = sub_18395AF48(self, v191, 0);
    v66 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, 0, v63, v64, v65);
    objc_msgSend_floatValue(v66, v67, v68, v69, v70, v71);
    v73 = v72;

    v78 = objc_msgSend_objectAtIndexedSubscript_(v61, v74, 1, v75, v76, v77);
    objc_msgSend_floatValue(v78, v79, v80, v81, v82, v83);
    v85 = v84;

    v86 = v23;
    v87 = v191;
    v88 = v87;
    if (v48 <= v85)
    {

      v89 = v86;
      objc_msgSend_bounds(v88, v158, v159, v160, v161, v162);
      MinX = CGRectGetMinX(v198);
      objc_msgSend_bounds(v88, v163, v164, v165, v166, v167);
      MaxY = CGRectGetMaxY(v199);
      v90 = v88;
      v36 = v73;
    }

    else
    {
      v89 = v87;
      v90 = v86;
    }

    v168 = -v36;
    sub_18395B224(v193, MinX, MaxY, v168, CHBottomUpStrokeGroupingStrategy, v90);
    sub_18395B224(__p, MinX, MaxY, v168, CHBottomUpStrokeGroupingStrategy, v89);
    objc_msgSend_unionStrokeBounds_usingStrokeCountLimit_reverseOrder_(CHStrokeUtilities, v169, v193, 0x7FFFFFFFFFFFFFFFLL, 0, v170);
    v172 = v171;
    v174 = v173;
    v176 = v175;
    v178 = v177;
    objc_msgSend_unionStrokeBounds_usingStrokeCountLimit_reverseOrder_(CHStrokeUtilities, v179, __p, 0x7FFFFFFFFFFFFFFFLL, 0, v180);
    v203.origin.x = v181;
    v203.origin.y = v182;
    v184 = v183;
    v186 = v185;
    v200.origin.x = v172;
    v200.origin.y = v174;
    v200.size.width = v176;
    v200.size.height = v178;
    v203.size.width = v184;
    v203.size.height = v186;
    v201 = CGRectIntersection(v200, v203);
    width = v201.size.width;
    height = v201.size.height;
    if (v176 * v178 >= v184 * v186)
    {
      v189 = v184 * v186;
    }

    else
    {
      v189 = v176 * v178;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v193[0])
    {
      v193[1] = v193[0];
      operator delete(v193[0]);
    }

    v157 = width * height / v189;
  }

  else
  {
    objc_msgSend_bounds(groupCopy, v13, v14, v15, v16, v17);
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    objc_msgSend_bounds(withGroupCopy, v99, v100, v101, v102, v103);
    v202.origin.x = v104;
    v202.origin.y = v105;
    v202.size.width = v106;
    v202.size.height = v107;
    v196.origin.x = v92;
    v196.origin.y = v94;
    v196.size.width = v96;
    v196.size.height = v98;
    v197 = CGRectIntersection(v196, v202);
    v108 = v197.size.width;
    v109 = v197.size.height;
    objc_msgSend_bounds(groupCopy, v110, v111, v112, v113, v114, v197.origin.x, v197.origin.y);
    v116 = v115;
    objc_msgSend_bounds(groupCopy, v117, v118, v119, v120, v121);
    v123 = v122;
    objc_msgSend_bounds(withGroupCopy, v124, v125, v126, v127, v128);
    v130 = v129;
    objc_msgSend_bounds(withGroupCopy, v131, v132, v133, v134, v135);
    v141 = v116 * v123;
    if (v116 * v123 >= v130 * v142)
    {
      objc_msgSend_bounds(withGroupCopy, v136, v137, v138, v139, v140, v141);
      v144 = v151;
      objc_msgSend_bounds(withGroupCopy, v152, v153, v154, v155, v156);
    }

    else
    {
      objc_msgSend_bounds(groupCopy, v136, v137, v138, v139, v140, v141);
      v144 = v143;
      objc_msgSend_bounds(groupCopy, v145, v146, v147, v148, v149);
    }

    v157 = v108 * v109 / (v144 * v150);
  }

  return v157;
}

@end