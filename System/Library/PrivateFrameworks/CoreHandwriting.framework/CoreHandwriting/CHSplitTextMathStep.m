@interface CHSplitTextMathStep
- (CHSplitTextMathStep)initWithAdditionalRecognitionBlock:(id)a3 strokeProvider:(id)a4 locales:(id)a5;
- (id)process:(id)a3 options:(id)a4;
- (void)processSubGroupFromGroup:(id)a3 strokeIndexes:(id)a4 inputStrokeIdentifiers:(id)a5 classification:(int64_t)a6 result:(id)a7;
@end

@implementation CHSplitTextMathStep

- (CHSplitTextMathStep)initWithAdditionalRecognitionBlock:(id)a3 strokeProvider:(id)a4 locales:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = CHSplitTextMathStep;
  v11 = [(CHSplitTextMathStep *)&v35 init];
  if (v11)
  {
    v12 = MEMORY[0x1865E6810](v8);
    additionalRecognitionBlock = v11->_additionalRecognitionBlock;
    v11->_additionalRecognitionBlock = v12;

    objc_storeStrong(&v11->_strokeProvider, a4);
    v14 = [CHBottomUpStrokeGroupingStrategy alloc];
    isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v14, v15, v9, 1, v10, 0, 0);
    leftToRightBottomUpStrategy = v11->_leftToRightBottomUpStrategy;
    v11->_leftToRightBottomUpStrategy = isInlineContinuousMode_inlineContinuousModeTargets;

    v18 = [CHBottomUpStrokeGroupingStrategy alloc];
    v20 = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v18, v19, v9, 2, v10, 0, 0);
    rightToLeftBottomUpStrategy = v11->_rightToLeftBottomUpStrategy;
    v11->_rightToLeftBottomUpStrategy = v20;

    v22 = MEMORY[0x1E695DFD8];
    v27 = objc_msgSend_componentsSeparatedByString_(@"{ } !() , - . / 0 1 2 3 4 5 6 7 8 9 : \\ \\, \\ \\$ \\% \\arccos \\arcsin \\arctan \\ast \\cdot \\circ \\cos \\cosh \\cot \\coth \\csc \\left( \\lg \\ln \\log \\prime \\right) \\sec \\sin \\sinh \\tan \\tanh a A b B c C d D e E f F g G H h i I j J k K L l m M n N o O p P q Q r R s S t T u U v V w W x X y Y z Z \\text{€} \\text{£} \\text{¥} \\text{¢} \\text{₺} \\text{₴} \\text{₽} \\text{₩} \\text{°} '", v23, @" ", v24, v25, v26);;
    v32 = objc_msgSend_setWithArray_(v22, v28, v27, v29, v30, v31);
    allowedSymbolsInTextPrefix = v11->_allowedSymbolsInTextPrefix;
    v11->_allowedSymbolsInTextPrefix = v32;
  }

  return v11;
}

- (id)process:(id)a3 options:(id)a4
{
  v406 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v379 = a4;
  v396 = 0u;
  v397 = 0u;
  v398 = 0u;
  v399 = 0u;
  if (v6)
  {
    v12 = v6[9];
  }

  else
  {
    v12 = 0;
  }

  v385 = v6;
  v13 = objc_msgSend_copy(v12, v7, v8, v9, v10, v11);
  v387 = self;
  obj = v13;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v396, v405, 16, v15);
  if (v16)
  {
    v384 = *v397;
    *&v17 = 134218240;
    v378 = v17;
    do
    {
      v386 = v16;
      for (i = 0; i != v386; ++i)
      {
        if (*v397 != v384)
        {
          objc_enumerationMutation(obj);
        }

        if (v6)
        {
          v19 = v6[10];
        }

        else
        {
          v19 = 0;
        }

        v20 = *(*(&v396 + 1) + 8 * i);
        v21 = v19;
        v22 = MEMORY[0x1E696AD98];
        v383 = v20;
        v28 = objc_msgSend_uniqueIdentifier(v20, v23, v24, v25, v26, v27);
        v33 = objc_msgSend_numberWithInteger_(v22, v29, v28, v30, v31, v32);
        v389 = objc_msgSend_objectForKeyedSubscript_(v21, v34, v33, v35, v36, v37);

        v48 = objc_msgSend_mathResult(v389, v38, v39, v40, v41, v42);
        if (!v48 || (objc_msgSend_hasTextResult(v389, v43, v44, v45, v46, v47) & 1) != 0)
        {
          goto LABEL_71;
        }

        v54 = objc_msgSend_mathResult(v389, v49, v50, v51, v52, v53);
        v60 = objc_msgSend_topTranscription(v54, v55, v56, v57, v58, v59);
        if ((objc_msgSend_hasSuffix_(v60, v61, @"=", v62, v63, v64) & 1) == 0)
        {

          goto LABEL_70;
        }

        v70 = objc_msgSend_mathResult(v389, v65, v66, v67, v68, v69);
        v76 = objc_msgSend_mathResult(v389, v71, v72, v73, v74, v75);
        v82 = objc_msgSend_transcriptionPaths(v76, v77, v78, v79, v80, v81);
        v88 = objc_msgSend_firstObject(v82, v83, v84, v85, v86, v87);
        isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables = objc_msgSend_isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables_(CHTokenizedMathResult, v89, v70, v88, 0, 1);

        if ((isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables & 1) == 0)
        {
          v380 = objc_msgSend_array(MEMORY[0x1E695DF70], v91, v92, v93, v94, v95);
          v101 = objc_msgSend_mathResult(v389, v96, v97, v98, v99, v100);
          v394[0] = MEMORY[0x1E69E9820];
          v394[1] = 3221225472;
          v394[2] = sub_1838ED6EC;
          v394[3] = &unk_1E6DDBDA0;
          v48 = v380;
          v395 = v48;
          objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v101, v102, v394, v103, v104, v105);

          v111 = objc_msgSend_mathResult(v389, v106, v107, v108, v109, v110);
          objc_msgSend_baseCharacterHeight(v111, v112, v113, v114, v115, v116);
          v118 = v117;

          v124 = 0;
          v125 = 0;
          v381 = 0;
          v388 = 0;
          v126 = v118 * 1.5;
          x = *MEMORY[0x1E695F050];
          y = *(MEMORY[0x1E695F050] + 8);
          width = *(MEMORY[0x1E695F050] + 16);
          height = *(MEMORY[0x1E695F050] + 24);
          while (1)
          {
            if (v125 >= objc_msgSend_count(v48, v119, v120, v121, v122, v123, v378, v379))
            {
LABEL_69:

              v54 = v395;
LABEL_70:

LABEL_71:
              break;
            }

            v135 = objc_msgSend_objectAtIndexedSubscript_(v48, v131, v125, v132, v133, v134);
            v408.origin.x = x;
            v408.origin.y = y;
            v408.size.width = width;
            v408.size.height = height;
            if (CGRectEqualToRect(v408, *MEMORY[0x1E695F050]))
            {
              v141 = 0;
            }

            else
            {
              v142 = objc_msgSend_string(v135, v136, v137, v138, v139, v140);
              if (sub_1837C14B0(v142))
              {
                v141 = 0;
              }

              else
              {
                v148 = objc_msgSend_strokeIndexes(v135, v143, v144, v145, v146, v147);
                if (objc_msgSend_count(v148, v149, v150, v151, v152, v153))
                {
                  objc_msgSend_bounds(v135, v154, v155, v156, v157, v158);
                  v160 = v159;
                  v409.origin.x = x;
                  v409.origin.y = y;
                  v409.size.width = width;
                  v409.size.height = height;
                  v141 = v160 - CGRectGetMaxX(v409) > v126;
                }

                else
                {
                  v141 = 0;
                }
              }
            }

            if ((objc_msgSend_properties(v135, v136, v137, v138, v139, v140) & 0x40000) == 0 && (objc_msgSend_properties(v135, v161, v162, v163, v164, v165) & 0x80000) == 0 && (objc_msgSend_properties(v135, v161, v162, v163, v164, v165) & 0x40) == 0)
            {
              if ((objc_msgSend_properties(v135, v161, v162, v163, v164, v165) & 8) != 0)
              {
                v167 = objc_msgSend_string(v135, v161, v162, v163, v164, v165);
                isEqualToString = objc_msgSend_isEqualToString_(v167, v168, @"-", v169, v170, v171);

                if ((v141 & isEqualToString) != 1 || v388 <= 2)
                {
                  goto LABEL_43;
                }
              }

              else if (v388 <= 2 || !v141)
              {
                goto LABEL_43;
              }

              v173 = MEMORY[0x1E696AC90];
              v174 = objc_msgSend_count(v48, v161, v162, v163, v164, v165);
              v178 = objc_msgSend_indexSetWithIndexesInRange_(v173, v175, v125, v124 + v174, v176, v177);
              v183 = objc_msgSend_objectsAtIndexes_(v48, v179, v178, v180, v181, v182);

              if (objc_msgSend_count(v183, v184, v185, v186, v187, v188))
              {
                v189 = objc_msgSend_firstObject(v183, v161, v162, v163, v164, v165);
                if ((objc_msgSend_properties(v189, v190, v191, v192, v193, v194) & 0x80000) != 0)
                {
                }

                else
                {
                  v200 = objc_msgSend_firstObject(v183, v195, v196, v197, v198, v199);
                  v206 = (objc_msgSend_properties(v200, v201, v202, v203, v204, v205) & 0x40) == 0;

                  if (v206)
                  {
                    v207 = objc_msgSend_mathResult(v389, v161, v162, v163, v164, v165);
                    v213 = objc_msgSend_declaredVariablesWhileRecognized(v207, v208, v209, v210, v211, v212);
                    isTranscriptionValidExpression_limitToCurrentLocale_declaredVariables = objc_msgSend_isTranscriptionValidExpression_limitToCurrentLocale_declaredVariables_(CHTokenizedMathResult, v214, v183, 0, v213, v215);

                    if (isTranscriptionValidExpression_limitToCurrentLocale_declaredVariables)
                    {

                      v135 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v271, v272, v273, v274, v275);
                      v281 = objc_msgSend_mathResult(v389, v276, v277, v278, v279, v280);
                      v287 = objc_msgSend_strokeIndexes(v281, v282, v283, v284, v285, v286);
                      v293 = objc_msgSend_mutableCopy(v287, v288, v289, v290, v291, v292);

                      v392 = 0u;
                      v393 = 0u;
                      v390 = 0u;
                      v391 = 0u;
                      v381 = v183;
                      v296 = objc_msgSend_countByEnumeratingWithState_objects_count_(v381, v294, &v390, v404, 16, v295);
                      v302 = v296;
                      if (v296)
                      {
                        v303 = *v391;
                        do
                        {
                          v304 = 0;
                          do
                          {
                            if (*v391 != v303)
                            {
                              objc_enumerationMutation(v381);
                            }

                            v305 = objc_msgSend_strokeIndexes(*(*(&v390 + 1) + 8 * v304), v297, v298, v299, v300, v301);
                            objc_msgSend_addIndexes_(v135, v306, v305, v307, v308, v309);

                            ++v304;
                          }

                          while (v302 != v304);
                          v302 = objc_msgSend_countByEnumeratingWithState_objects_count_(v381, v297, &v390, v404, 16, v301);
                        }

                        while (v302);
                      }

                      objc_msgSend_removeIndexes_(v293, v310, v135, v311, v312, v313);
                      if (objc_msgSend_count(v293, v314, v315, v316, v317, v318) && objc_msgSend_count(v135, v319, v320, v321, v322, v323))
                      {
                        v329 = objc_msgSend_inputStrokeIdentifiers(v389, v324, v325, v326, v327, v328);
                        objc_msgSend_processSubGroupFromGroup_strokeIndexes_inputStrokeIdentifiers_classification_result_(v387, v330, v383, v293, v329, 1, v385);
                        objc_msgSend_processSubGroupFromGroup_strokeIndexes_inputStrokeIdentifiers_classification_result_(v387, v331, v383, v135, v329, 3, v385);
                        if (v385)
                        {
                          v332 = v385[9];
                        }

                        else
                        {
                          v332 = 0;
                        }

                        v333 = v332;
                        objc_msgSend_removeObject_(v333, v334, v383, v335, v336, v337);

                        if (v385)
                        {
                          v338 = v385[10];
                        }

                        else
                        {
                          v338 = 0;
                        }

                        v339 = v338;
                        v340 = MEMORY[0x1E696AD98];
                        v346 = objc_msgSend_uniqueIdentifier(v383, v341, v342, v343, v344, v345);
                        v351 = objc_msgSend_numberWithInteger_(v340, v347, v346, v348, v349, v350);
                        objc_msgSend_removeObjectForKey_(v339, v352, v351, v353, v354, v355);

                        if (qword_1EA84DC48 != -1)
                        {
                          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                        }

                        v356 = qword_1EA84DC68;
                        if (os_log_type_enabled(v356, OS_LOG_TYPE_DEBUG))
                        {
                          v362 = objc_msgSend_uniqueIdentifier(v383, v357, v358, v359, v360, v361);
                          v368 = objc_msgSend_strokeIdentifiers(v383, v363, v364, v365, v366, v367);
                          v374 = objc_msgSend_count(v368, v369, v370, v371, v372, v373);
                          *buf = v378;
                          v401 = v362;
                          v402 = 2048;
                          v403 = v374;
                          _os_log_impl(&dword_18366B000, v356, OS_LOG_TYPE_DEBUG, "CHSplitTextMathStep split math stroke group %lu with %lu strokes into text prefix and math suffix.", buf, 0x16u);
                        }
                      }

LABEL_68:
                      goto LABEL_69;
                    }
                  }
                }
              }

              v381 = v183;
            }

LABEL_43:
            v217 = objc_msgSend_allowedSymbolsInTextPrefix(v387, v161, v162, v163, v164, v165);
            v223 = objc_msgSend_string(v135, v218, v219, v220, v221, v222);
            v228 = objc_msgSend_containsObject_(v217, v224, v223, v225, v226, v227);

            if (!v228)
            {
              goto LABEL_68;
            }

            objc_msgSend_bounds(v135, v229, v230, v231, v232, v233);
            v412.origin.x = v234;
            v412.origin.y = v235;
            v412.size.width = v236;
            v412.size.height = v237;
            v410.origin.x = x;
            v410.origin.y = y;
            v410.size.width = width;
            v410.size.height = height;
            v411 = CGRectUnion(v410, v412);
            x = v411.origin.x;
            y = v411.origin.y;
            width = v411.size.width;
            height = v411.size.height;
            v243 = objc_msgSend_string(v135, v238, v239, v240, v241, v242);
            if (objc_msgSend_length(v243, v244, v245, v246, v247, v248) == 1)
            {
              v254 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v249, v250, v251, v252, v253);
              v260 = objc_msgSend_string(v135, v255, v256, v257, v258, v259);
              v265 = objc_msgSend_characterAtIndex_(v260, v261, 0, v262, v263, v264);
              IsMember = objc_msgSend_characterIsMember_(v254, v266, v265, v267, v268, v269);

              v388 += IsMember & 1;
            }

            else
            {
            }

            ++v125;
            --v124;
          }
        }

        v6 = v385;
      }

      v13 = obj;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v375, &v396, v405, 16, v376);
    }

    while (v16);
  }

  return v385;
}

- (void)processSubGroupFromGroup:(id)a3 strokeIndexes:(id)a4 inputStrokeIdentifiers:(id)a5 classification:(int64_t)a6 result:(id)a7
{
  v222 = *MEMORY[0x1E69E9840];
  v199 = a3;
  v204 = a7;
  objc_msgSend_objectsAtIndexes_(a5, v12, a4, v13, v14, v15);
  v198 = v197 = self;
  v200 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v16, v198, self->_strokeProvider, v17, v18);
  if (a6 == 3)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v79 = v200;
    v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v205, v217, 16, v81);
    if (v87)
    {
      v88 = *v206;
      do
      {
        for (i = 0; i != v87; ++i)
        {
          if (*v206 != v88)
          {
            objc_enumerationMutation(v79);
          }

          objc_msgSend_bounds(*(*(&v205 + 1) + 8 * i), v82, v83, v84, v85, v86);
          v225.origin.x = v90;
          v225.origin.y = v91;
          v225.size.width = v92;
          v225.size.height = v93;
          v223.origin.x = x;
          v223.origin.y = y;
          v223.size.width = width;
          v223.size.height = height;
          v224 = CGRectUnion(v223, v225);
          x = v224.origin.x;
          y = v224.origin.y;
          width = v224.size.width;
          height = v224.size.height;
        }

        v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v82, &v205, v217, 16, v86);
      }

      while (v87);
    }

    v94 = [CHStrokeGroup alloc];
    v100 = objc_msgSend_ancestorIdentifier(v199, v95, v96, v97, v98, v99);
    v105 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v101, v198, v102, v103, v104);
    v111 = objc_msgSend_firstObject(v198, v106, v107, v108, v109, v110);
    v117 = objc_msgSend_lastObject(v198, v112, v113, v114, v115, v116);
    v123 = objc_msgSend_firstObject(v79, v118, v119, v120, v121, v122);
    objc_msgSend_bounds(v123, v124, v125, v126, v127, v128);
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v94, v129, v100, v105, v111, v117, 3, @"CHGroupingPostProcessingManager", x, y, width, height, 1.0, v130, v131);

    goto LABEL_49;
  }

  if (a6 != 1)
  {
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = 0;
    if (a6 == 2)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  obj = v198;
  v26 = 0;
  v27 = 0;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v213, v221, 16, v25);
  if (!v33)
  {
    goto LABEL_34;
  }

  v34 = *v214;
  v201 = *v214;
  do
  {
    v35 = 0;
    v202 = v33;
    do
    {
      if (*v214 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v213 + 1) + 8 * v35);
      v37 = objc_msgSend_strokeClassificationResult(v204, v28, v29, v30, v31, v32);
      v43 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v37, v38, v39, v40, v41, v42);
      v48 = objc_msgSend_objectForKeyedSubscript_(v43, v44, v36, v45, v46, v47);

      if (v48)
      {
        v211 = 0u;
        v212 = 0u;
        v209 = 0u;
        v210 = 0u;
        v54 = objc_msgSend_orderedScriptClassification(v48, v49, v50, v51, v52, v53);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v209, v220, 16, v56);
        if (!v62)
        {
          goto LABEL_32;
        }

        v63 = *v210;
        while (1)
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v210 != v63)
            {
              objc_enumerationMutation(v54);
            }

            v66 = objc_msgSend_integerValue(*(*(&v209 + 1) + 8 * j), v57, v58, v59, v60, v61);
            if ((objc_msgSend_isMatchingStrokeClassification_scriptClassification_(CHStrokeUtilities, v67, 3, v66, v68, v69) & 1) == 0)
            {
              if (v66 > 7)
              {
                if (v66 == 11 || v66 == 8)
                {
LABEL_17:
                  ++v26;
                  continue;
                }
              }

              else
              {
                if (!v66)
                {
                  goto LABEL_17;
                }

                if (v66 == 1)
                {
                  ++v27;
                }
              }
            }
          }

          v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v209, v220, 16, v61);
          if (!v62)
          {
            v34 = v201;
            v33 = v202;
            goto LABEL_32;
          }
        }
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v54 = qword_1EA84DC68;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v219 = v36;
        _os_log_impl(&dword_18366B000, v54, OS_LOG_TYPE_ERROR, "Raw stroke classification result not found for stroke identifier %@", buf, 0xCu);
      }

LABEL_32:

      ++v35;
    }

    while (v35 != v33);
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v213, v221, 16, v32);
  }

  while (v33);
LABEL_34:

  if (v27 <= objc_msgSend_count(obj, v70, v71, v72, v73, v74) - v26)
  {
    leftToRightBottomUpStrategy = v197->_leftToRightBottomUpStrategy;
    v134 = objc_msgSend_ancestorIdentifier(v199, v19, v20, v21, v22, v23);
    v138 = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_(leftToRightBottomUpStrategy, v135, v200, v134, v136, v137);
  }

  else
  {
LABEL_47:
    rightToLeftBottomUpStrategy = v197->_rightToLeftBottomUpStrategy;
    v140 = objc_msgSend_ancestorIdentifier(v199, v19, v20, v21, v22, v23);
    v138 = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_(rightToLeftBottomUpStrategy, v141, v200, v140, v142, v143);
  }

  v144 = v138;

  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = v144;
LABEL_49:
  v145 = objc_msgSend_cachedRecognitionResultsFromPostProcessing(v204, v19, v20, v21, v22, v23);
  v151 = objc_msgSend_strokeIdentifiers(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v146, v147, v148, v149, v150);
  v156 = objc_msgSend_objectForKeyedSubscript_(v145, v152, v151, v153, v154, v155);

  if (!v156)
  {
    v156 = (*(v197->_additionalRecognitionBlock + 2))();
  }

  v162 = objc_msgSend_strokeIdentifiers(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v157, v158, v159, v160, v161);
  v163 = v156;
  v164 = v162;
  v168 = v164;
  if (v204)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v204[1], v165, v163, v164, v166, v167);
    objc_msgSend_setObject_forKeyedSubscript_(v204[2], v169, v163, v168, v170, v171);

    objc_msgSend_addObject_(v204[9], v172, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v173, v174, v175);
  }

  else
  {

    objc_msgSend_addObject_(0, v193, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v194, v195, v196);
  }

  v176 = v204;
  if (v204)
  {
    v176 = v204[10];
  }

  v177 = v176;
  v178 = MEMORY[0x1E696AD98];
  v184 = objc_msgSend_uniqueIdentifier(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v179, v180, v181, v182, v183);
  v189 = objc_msgSend_numberWithInteger_(v178, v185, v184, v186, v187, v188);
  objc_msgSend_setObject_forKey_(v177, v190, v163, v189, v191, v192);
}

@end