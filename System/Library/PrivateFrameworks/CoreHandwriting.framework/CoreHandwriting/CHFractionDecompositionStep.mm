@interface CHFractionDecompositionStep
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHFractionDecompositionStep

- (id)process:(id)a3 options:(id)a4
{
  v360 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = v4;
  v351 = 0u;
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  if (v4)
  {
    v4 = v4[9];
  }

  v322 = v10;
  v11 = objc_msgSend_copy(v4, v5, v6, v7, v8, v9);
  obj = v11;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v351, v359, 16, v13);
  if (v14)
  {
    v320 = *v352;
    do
    {
      v321 = v14;
      for (i = 0; i != v321; ++i)
      {
        if (*v352 != v320)
        {
          objc_enumerationMutation(obj);
        }

        if (v10)
        {
          v16 = v10[10];
        }

        else
        {
          v16 = 0;
        }

        v17 = *(*(&v351 + 1) + 8 * i);
        v18 = v16;
        v19 = MEMORY[0x1E696AD98];
        v25 = objc_msgSend_uniqueIdentifier(v17, v20, v21, v22, v23, v24);
        v30 = objc_msgSend_numberWithInteger_(v19, v26, v25, v27, v28, v29);
        v35 = objc_msgSend_objectForKeyedSubscript_(v18, v31, v30, v32, v33, v34);

        v46 = objc_msgSend_mathResult(v35, v36, v37, v38, v39, v40);
        if (v46 && (objc_msgSend_hasTextResult(v35, v41, v42, v43, v44, v45) & 1) == 0)
        {
          v54 = objc_msgSend_mathResult(v35, v47, v48, v49, v50, v51);
          v60 = objc_msgSend_topTranscription(v54, v55, v56, v57, v58, v59);
          if (objc_msgSend_hasPrefix_(v60, v61, @"\\frac", v62, v63, v64))
          {
            v317 = objc_msgSend_mathResult(v35, v65, v66, v67, v68, v69);
            v75 = objc_msgSend_topTranscription(v317, v70, v71, v72, v73, v74);
            if (objc_msgSend_hasSuffix_(v75, v76, @"=", v77, v78, v79))
            {
            }

            else
            {
              v315 = objc_msgSend_mathResult(v35, v80, v81, v82, v83, v84);
              v313 = objc_msgSend_mathResult(v35, v85, v86, v87, v88, v89);
              v95 = objc_msgSend_transcriptionPaths(v313, v90, v91, v92, v93, v94);
              v101 = objc_msgSend_firstObject(v95, v96, v97, v98, v99, v100);
              isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables = objc_msgSend_isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables_(CHTokenizedMathResult, v102, v315, v101, 0, 1);

              if ((isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables & 1) == 0)
              {
                v347 = 0;
                v348 = &v347;
                v349 = 0x2020000000;
                v350 = 1;
                v345[0] = 0;
                v345[1] = v345;
                v345[2] = 0x2020000000;
                v346 = 0;
                v341 = 0;
                v342 = &v341;
                v343 = 0x2020000000;
                v344 = 0;
                v337 = 0;
                v338 = &v337;
                v339 = 0x2020000000;
                v340 = 0;
                v331 = 0;
                v332 = &v331;
                v333 = 0x3032000000;
                v334 = sub_1838EEAEC;
                v335 = sub_1838EEAFC;
                v336 = 0;
                v109 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v104, v105, v106, v107, v108);
                v115 = objc_msgSend_mathResult(v35, v110, v111, v112, v113, v114);
                v121 = objc_msgSend_strokeIndexes(v115, v116, v117, v118, v119, v120);
                v127 = objc_msgSend_mutableCopy(v121, v122, v123, v124, v125, v126);

                v133 = objc_msgSend_mathResult(v35, v128, v129, v130, v131, v132);
                v323[0] = MEMORY[0x1E69E9820];
                v323[1] = 3221225472;
                v323[2] = sub_1838EEB04;
                v323[3] = &unk_1E6DDF998;
                v326 = &v347;
                v327 = &v331;
                v328 = v345;
                v134 = v109;
                v324 = v134;
                v325 = self;
                v329 = &v341;
                v330 = &v337;
                objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v133, v135, v323, v136, v137, v138);

                v144 = objc_msgSend_strokeIndexes(v332[5], v139, v140, v141, v142, v143);
                objc_msgSend_removeIndexes_(v127, v145, v144, v146, v147, v148);

                objc_msgSend_removeIndexes_(v127, v149, v134, v150, v151, v152);
                if (*(v348 + 24) == 1)
                {
                  v158 = objc_msgSend_strokeIndexes(v332[5], v153, v154, v155, v156, v157);
                  v169 = objc_msgSend_count(v158, v159, v160, v161, v162, v163) && objc_msgSend_count(v127, v164, v165, v166, v167, v168) && v342[3] >= 3 && v338[3] > 2;
                  *(v348 + 24) = v169;

                  if (v348[3])
                  {
                    v318 = objc_msgSend_inputStrokeIdentifiers(v35, v170, v171, v172, v173, v174);
                    if (objc_msgSend_count(v134, v175, v176, v177, v178, v179))
                    {
                      objc_msgSend_processSubGroupFromGroup_strokeIndexes_inputStrokeIdentifiers_classification_result_(self, v180, v17, v134, v318, 1, v322);
                    }

                    if (objc_msgSend_count(v127, v180, v181, v182, v183, v184))
                    {
                      objc_msgSend_processSubGroupFromGroup_strokeIndexes_inputStrokeIdentifiers_classification_result_(self, v185, v17, v127, v318, 1, v322);
                    }

                    v190 = objc_msgSend_strokeIndexes(v332[5], v185, v186, v187, v188, v189);
                    v316 = objc_msgSend_objectsAtIndexes_(v318, v191, v190, v192, v193, v194);

                    v195 = [CHStrokeGroup alloc];
                    v200 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v196, v316, v197, v198, v199);
                    v206 = objc_msgSend_firstObject(v316, v201, v202, v203, v204, v205);
                    v212 = objc_msgSend_lastObject(v316, v207, v208, v209, v210, v211);
                    objc_msgSend_bounds(v332[5], v213, v214, v215, v216, v217);
                    v219 = v218;
                    v221 = v220;
                    v223 = v222;
                    v225 = v224;
                    objc_msgSend_bounds(v332[5], v226, v227, v228, v229, v230);
                    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v195, v231, v200, v206, v212, 6, @"groupingPostProcessingManagerNonText", v219, v221, v223, v225, 1.0, v232, v233);

                    v234 = [CHStrokeGroupRecognitionResult alloc];
                    v240 = objc_msgSend_processing(v35, v235, v236, v237, v238, v239);
                    v242 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_(v234, v241, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], 0, v316, v240);
                    if (v322)
                    {
                      v243 = v322[9];
                    }

                    else
                    {
                      v243 = 0;
                    }

                    v244 = v243;
                    objc_msgSend_addObject_(v244, v245, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v246, v247, v248);

                    if (v322)
                    {
                      v249 = v322;
                      v250 = v322[10];
                    }

                    else
                    {
                      v250 = 0;
                      v249 = 0;
                    }

                    v251 = v250;
                    v252 = MEMORY[0x1E696AD98];
                    v258 = objc_msgSend_uniqueIdentifier(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v253, v254, v255, v256, v257);
                    v263 = objc_msgSend_numberWithInteger_(v252, v259, v258, v260, v261, v262);
                    objc_msgSend_setObject_forKey_(v251, v264, v242, v263, v265, v266);

                    if (v249)
                    {
                      v267 = v322;
                      v268 = v322[9];
                    }

                    else
                    {
                      v268 = 0;
                      v267 = v322;
                    }

                    v269 = v268;
                    objc_msgSend_removeObject_(v269, v270, v17, v271, v272, v273);

                    if (v267)
                    {
                      v274 = v322[10];
                    }

                    else
                    {
                      v274 = 0;
                    }

                    v275 = v274;
                    v276 = MEMORY[0x1E696AD98];
                    v282 = objc_msgSend_uniqueIdentifier(v17, v277, v278, v279, v280, v281);
                    v287 = objc_msgSend_numberWithInteger_(v276, v283, v282, v284, v285, v286);
                    objc_msgSend_removeObjectForKey_(v275, v288, v287, v289, v290, v291);

                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v292 = qword_1EA84DC68;
                    if (os_log_type_enabled(v292, OS_LOG_TYPE_DEBUG))
                    {
                      v298 = objc_msgSend_uniqueIdentifier(v17, v293, v294, v295, v296, v297);
                      v304 = objc_msgSend_strokeIdentifiers(v17, v299, v300, v301, v302, v303);
                      v310 = objc_msgSend_count(v304, v305, v306, v307, v308, v309);
                      *buf = 134218240;
                      v356 = v298;
                      v357 = 2048;
                      v358 = v310;
                      _os_log_impl(&dword_18366B000, v292, OS_LOG_TYPE_DEBUG, "CHFractionDecompositionStep decomposed math stroke group %lu with %lu strokes into two text and one non-text groups.", buf, 0x16u);
                    }
                  }
                }

                else
                {
                  *(v348 + 24) = 0;
                }

                _Block_object_dispose(&v331, 8);
                _Block_object_dispose(&v337, 8);
                _Block_object_dispose(&v341, 8);
                _Block_object_dispose(v345, 8);
                _Block_object_dispose(&v347, 8);
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }

        v10 = v322;
      }

      v11 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v351, v359, 16, v53);
    }

    while (v14);
  }

  return v322;
}

@end