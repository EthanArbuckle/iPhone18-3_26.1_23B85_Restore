@interface CHRecognitionSessionTextInputTask
- (CHRecognitionSessionTextInputTask)initWithLocales:(id)a3 strokeProvider:(id)a4 initialTextInputTargets:(id)a5 inputResult:(id)a6 recognitionEnvironment:(int64_t)a7 calculateDocumentProvider:(id)a8;
- (CHRecognitionSessionTextInputTask)initWithSessionMode:(int64_t)a3 locales:(id)a4 preferredLocales:(id)a5 strokeProvider:(id)a6 calculateDocumentProvider:(id)a7 inputResult:(id)a8 recognitionQOSClass:(unsigned int)a9 recognitionEnvironment:(int64_t)a10 isHighResponsivenessTask:(BOOL)a11 strokeGroupingRequirement:(int64_t)a12 principalLineRequirement:(int64_t)a13 subjectStrokeIdentifiers:(id)a14 recognitionOptions:(id)a15 partialResultBlock:(id)a16 wantsAutoRefine:(BOOL)a17;
- (id)newGroupingManager;
- (id)newStrokeClassifier;
- (id)textCorrectionResultsForGroupingResult:(id)a3 groupingManager:(id)a4;
@end

@implementation CHRecognitionSessionTextInputTask

- (CHRecognitionSessionTextInputTask)initWithLocales:(id)a3 strokeProvider:(id)a4 initialTextInputTargets:(id)a5 inputResult:(id)a6 recognitionEnvironment:(int64_t)a7 calculateDocumentProvider:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = CHRecognitionSessionTextInputTask;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v24 = [(CHRecognitionSessionTask *)&v31 initWithSessionMode:1 locales:v14 preferredLocales:v14 strokeProvider:v15 calculateDocumentProvider:v18 inputResult:v17 recognitionQOSClass:v28 recognitionEnvironment:a7 isHighResponsivenessTask:v29 strokeGroupingRequirement:0 principalLineRequirement:0 subjectStrokeIdentifiers:0 recognitionOptions:0 partialResultBlock:0 wantsAutoRefine:v30];
  if (v24)
  {
    v25 = objc_msgSend_copy(v16, v19, v20, v21, v22, v23);
    initialTextInputTargets = v24->_initialTextInputTargets;
    v24->_initialTextInputTargets = v25;
  }

  return v24;
}

- (CHRecognitionSessionTextInputTask)initWithSessionMode:(int64_t)a3 locales:(id)a4 preferredLocales:(id)a5 strokeProvider:(id)a6 calculateDocumentProvider:(id)a7 inputResult:(id)a8 recognitionQOSClass:(unsigned int)a9 recognitionEnvironment:(int64_t)a10 isHighResponsivenessTask:(BOOL)a11 strokeGroupingRequirement:(int64_t)a12 principalLineRequirement:(int64_t)a13 subjectStrokeIdentifiers:(id)a14 recognitionOptions:(id)a15 partialResultBlock:(id)a16 wantsAutoRefine:(BOOL)a17
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v18 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_ERROR, "Use the designated initializer instead", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v19 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v21 = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_FAULT, "Use the designated initializer instead", v21, 2u);
  }

LABEL_8:

  return 0;
}

- (id)textCorrectionResultsForGroupingResult:(id)a3 groupingManager:(id)a4
{
  v444 = *MEMORY[0x1E69E9840];
  v400 = a3;
  v404 = a4;
  v408 = objc_msgSend_inputResult(self, v6, v7, v8, v9, v10);
  v405 = objc_msgSend_recognitionLocales(self, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_activeTextInputQuery(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_recognitionSession(v21, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_strokeGroupOrdering(v27, v28, v29, v30, v31, v32);
  v401 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v400, v34, v33, 0, v35, v36);

  v42 = objc_msgSend_activeTextInputQuery(self, v37, v38, v39, v40, v41);
  v48 = objc_msgSend_textInputTargetsDataSource(v42, v43, v44, v45, v46, v47);

  v418 = self;
  v399 = v48;
  if (v48)
  {
    v409 = v48;
    v54 = v401;
    v60 = v54;
    if (self)
    {
      v61 = objc_msgSend_count(v54, v55, v56, v57, v58, v59);
      v66 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v62, v61, v63, v64, v65);
      v428 = 0.0;
      v429 = &v428;
      v430 = 0x2020000000;
      v431 = 0;
      v67 = dispatch_group_create();
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = sub_183784F34;
      v437 = &unk_1E6DDDD60;
      v438 = v60;
      v439 = self;
      v440 = v409;
      v68 = v67;
      v441 = v68;
      v69 = v66;
      v442 = v69;
      v443 = &v428;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
      v70 = dispatch_time(0, 2000000000);
      dispatch_group_wait(v68, v70);
      v71 = v69;
      objc_sync_enter(v71);
      *(v429 + 24) = 1;
      v77 = objc_msgSend_copy(v71, v72, v73, v74, v75, v76);
      objc_sync_exit(v71);

      _Block_object_dispose(&v428, 8);
    }

    else
    {
      v77 = 0;
    }

    v410 = v77;
  }

  else
  {
    v410 = 0;
  }

  v78 = MEMORY[0x1E695DF90];
  v79 = objc_msgSend_count(v401, v49, v50, v51, v52, v53);
  v403 = objc_msgSend_dictionaryWithCapacity_(v78, v80, v79, v81, v82, v83);
  v426 = 0u;
  v427 = 0u;
  v424 = 0u;
  v425 = 0u;
  obj = v401;
  v407 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, &v424, v435, 16, v85);
  if (v407)
  {
    v406 = *v425;
LABEL_8:
    v91 = 0;
    while (1)
    {
      if (*v425 != v406)
      {
        objc_enumerationMutation(obj);
      }

      v92 = *(*(&v424 + 1) + 8 * v91);
      if (objc_msgSend_cancelled(self, v86, v87, v88, v89, v90))
      {
        break;
      }

      context = objc_autoreleasePoolPush();
      v93 = MEMORY[0x1E696AD98];
      v99 = objc_msgSend_uniqueIdentifier(v92, v94, v95, v96, v97, v98);
      v415 = objc_msgSend_numberWithInteger_(v93, v100, v99, v101, v102, v103);
      v417 = objc_msgSend_objectForKeyedSubscript_(v410, v104, v415, v105, v106, v107);
      if (v417)
      {
        v422 = 0u;
        v423 = 0u;
        v420 = 0u;
        v421 = 0u;
        v113 = objc_msgSend_strokeGroupingResult(v408, v108, v109, v110, v111, v112);
        v119 = objc_msgSend_strokeGroups(v113, v114, v115, v116, v117, v118);

        v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v120, &v420, v434, 16, v121);
        if (v127)
        {
          v128 = *v421;
LABEL_15:
          v129 = 0;
          while (1)
          {
            if (*v421 != v128)
            {
              objc_enumerationMutation(v119);
            }

            v130 = *(*(&v420 + 1) + 8 * v129);
            v131 = objc_msgSend_ancestorIdentifier(v130, v122, v123, v124, v125, v126);
            if (v131 == objc_msgSend_ancestorIdentifier(v92, v132, v133, v134, v135, v136))
            {
              break;
            }

            if (v127 == ++v129)
            {
              v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v122, &v420, v434, 16, v126);
              if (v127)
              {
                goto LABEL_15;
              }

              goto LABEL_21;
            }
          }

          v138 = objc_msgSend_uniqueIdentifier(v130, v122, v123, v124, v125, v126);
          v143 = objc_msgSend_textCorrectionResultForStrokeGroupIdentifier_(v408, v139, v138, v140, v141, v142);
          v137 = objc_msgSend_textCorrectionResult(v143, v144, v145, v146, v147, v148);

          if (!v137)
          {
            goto LABEL_25;
          }

          v154 = objc_msgSend_inputTarget(v137, v149, v150, v151, v152, v153);
          v160 = objc_msgSend_inputTargetIdentifier(v154, v155, v156, v157, v158, v159);
          v166 = objc_msgSend_textInputTarget(v417, v161, v162, v163, v164, v165);
          v172 = objc_msgSend_inputTargetIdentifier(v166, v167, v168, v169, v170, v171);
          isEqualToNumber = objc_msgSend_isEqualToNumber_(v160, v173, v172, v174, v175, v176);

          if (isEqualToNumber)
          {
            goto LABEL_25;
          }
        }

        else
        {
LABEL_21:
          v137 = v119;
        }

        v137 = 0;
LABEL_25:
        v419 = v92;
        v413 = v404;
        v178 = v417;
        v412 = v405;
        v416 = v137;
        v411 = v178;
        if (v418)
        {
          v179 = v178;
          objc_opt_self();
          v184 = objc_msgSend_defaultTextAffectedRangeForTargetContentInfo_(CHTextCorrectionRecognizer, v180, v179, v181, v182, v183);
          objc_msgSend_characterRectForAbsoluteCharacterIndex_(v179, v185, &v185[v184 - 1], v186, v187, v188);
          x = v446.origin.x;
          y = v446.origin.y;
          width = v446.size.width;
          height = v446.size.height;
          if (CGRectIsNull(v446))
          {
            v198 = objc_msgSend_textInputTarget(v179, v193, v194, v195, v196, v197);
            objc_msgSend_frame(v198, v199, v200, v201, v202, v203);
            x = v204;
            y = v205;
            width = v206;
            height = v207;
          }

          v428 = 0.0;
          v208 = v419;
          objc_msgSend_bounds(v419, v209, v210, v211, v212, v213);
          v215 = v214;
          objc_msgSend_bounds(v419, v216, v217, v218, v219, v220);
          v432 = 0;
          v433 = 0;
          v222 = objc_msgSend_recognizableDrawingForStrokeGroup_translationVector_originalDrawing_orderedStrokesIDs_rescalingFactor_replacementStrokeGroup_(v413, v221, v419, &v433, &v432, &v428, 0, v215);
          v223 = v433;
          v224 = v432;
          v230 = objc_msgSend_strokeCount(v222, v225, v226, v227, v228, v229);
          if (v230 != objc_msgSend_count(v224, v231, v232, v233, v234, v235))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v241 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
            {
              v247 = objc_msgSend_strokeCount(v222, v242, v243, v244, v245, v246);
              v253 = objc_msgSend_count(v224, v248, v249, v250, v251, v252);
              *block = 134218240;
              *&block[4] = v247;
              *&block[12] = 2048;
              *&block[14] = v253;
              _os_log_impl(&dword_18366B000, v241, OS_LOG_TYPE_ERROR, "The strokes count in the drawing (%ld) must match the ones in the result (%ld).", block, 0x16u);
            }

            v208 = v419;
          }

          v254 = objc_msgSend_strokeCount(v222, v236, v237, v238, v239, v240);
          if (v254 != objc_msgSend_count(v224, v255, v256, v257, v258, v259))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v265 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v265, OS_LOG_TYPE_FAULT))
            {
              v271 = objc_msgSend_strokeCount(v222, v266, v267, v268, v269, v270);
              v277 = objc_msgSend_count(v224, v272, v273, v274, v275, v276);
              *block = 134218240;
              *&block[4] = v271;
              *&block[12] = 2048;
              *&block[14] = v277;
              _os_log_impl(&dword_18366B000, v265, OS_LOG_TYPE_FAULT, "The strokes count in the drawing (%ld) must match the ones in the result (%ld).", block, 0x16u);
            }

            v208 = v419;
          }

          v278 = objc_msgSend_strokeCount(v223, v260, v261, v262, v263, v264);
          if (v278 != objc_msgSend_count(v224, v279, v280, v281, v282, v283))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v289 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
            {
              v295 = objc_msgSend_strokeCount(v223, v290, v291, v292, v293, v294);
              v301 = objc_msgSend_count(v224, v296, v297, v298, v299, v300);
              *block = 134218240;
              *&block[4] = v295;
              *&block[12] = 2048;
              *&block[14] = v301;
              _os_log_impl(&dword_18366B000, v289, OS_LOG_TYPE_ERROR, "The strokes count in the original drawing (%ld) must match the ones in the result (%ld).", block, 0x16u);
            }

            v208 = v419;
          }

          v302 = objc_msgSend_strokeCount(v223, v284, v285, v286, v287, v288);
          if (v302 != objc_msgSend_count(v224, v303, v304, v305, v306, v307))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v313 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v313, OS_LOG_TYPE_FAULT))
            {
              v319 = objc_msgSend_strokeCount(v223, v314, v315, v316, v317, v318);
              v325 = objc_msgSend_count(v224, v320, v321, v322, v323, v324);
              *block = 134218240;
              *&block[4] = v319;
              *&block[12] = 2048;
              *&block[14] = v325;
              _os_log_impl(&dword_18366B000, v313, OS_LOG_TYPE_FAULT, "The strokes count in the original drawing (%ld) must match the ones in the result (%ld).", block, 0x16u);
            }

            v208 = v419;
          }

          v326 = objc_msgSend_strokeProvider(v418, v308, v309, v310, v311, v312);
          v327 = v208;
          v328 = v326;
          objc_opt_self();
          v338 = objc_msgSend_lastStrokeIdentifier(v327, v329, v330, v331, v332, v333);
          if (v338)
          {
            v343 = objc_msgSend_strokeIdentifierFromData_(v328, v334, v338, v335, v336, v337);
            if (v343)
            {
              v344 = objc_msgSend_strokeForIdentifier_(v328, v339, v343, v340, v341, v342);
            }

            else
            {
              v344 = 0;
            }
          }

          else
          {
            v344 = 0;
          }

          v350 = objc_msgSend_delegate(v418, v345, v346, v347, v348, v349);
          v355 = objc_msgSend_textCorrectionRecognizerForLocales_(v350, v351, v412, v352, v353, v354);

          v356 = v428;
          v362 = objc_msgSend_calculateDocumentProvider(v418, v357, v358, v359, v360, v361);
          v368 = objc_msgSend_declaredVariables(v362, v363, v364, v365, v366, v367);
          v370 = objc_msgSend_textCorrectionResultForDrawing_targetContentInfo_originalDrawing_lastStroke_localTypedContextBounds_normalizedDrawingScaleFactor_previousCorrectionResult_declaredVariables_(v355, v369, v222, v179, v223, v344, v416, v368, x, y, width, height, v356);

          v371 = [CHStrokeGroupTextCorrectionResult alloc];
          v375 = objc_msgSend_initWithTextCorrectionResult_inputStrokeIdentifiers_(v371, v372, v370, v224, v373, v374);
        }

        else
        {
          v375 = 0;
        }

        v376 = MEMORY[0x1E696AD98];
        v382 = objc_msgSend_uniqueIdentifier(v419, v377, v378, v379, v380, v381);
        v387 = objc_msgSend_numberWithInteger_(v376, v383, v382, v384, v385, v386);
        objc_msgSend_setObject_forKeyedSubscript_(v403, v388, v375, v387, v389, v390);
      }

      objc_autoreleasePoolPop(context);
      self = v418;
      if (++v91 == v407)
      {
        v391 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v86, &v424, v435, 16, v90);
        v407 = v391;
        if (v391)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v397 = objc_msgSend_copy(v403, v392, v393, v394, v395, v396);

  return v397;
}

- (id)newStrokeClassifier
{
  v3 = [CHStrokeClassifier alloc];
  v9 = objc_msgSend_strokeProvider(self, v4, v5, v6, v7, v8);
  v13 = objc_msgSend_initWithStrokeProvider_forceClass_(v3, v10, v9, 1, v11, v12);

  return v13;
}

- (id)newGroupingManager
{
  v3 = [CHStrokeGroupingManager alloc];
  v9 = objc_msgSend_strokeProvider(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_recognitionLocales(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_initialTextInputTargets(self, v16, v17, v18, v19, v20);
  isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v3, v22, v9, v15, 1, v21);

  return isInlineContinuousMode_inlineContinuousModeTargets;
}

@end