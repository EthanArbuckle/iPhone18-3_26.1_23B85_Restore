@interface CHRecognitionSessionTask
+ (BOOL)isGroupAcceptableForInventory:(id)a3 textSynthesizer:(id)a4 strokeProvider:(id)a5 recognitionResult:(id)a6 strokeClassificationResult:(id)a7 allowSyntheticStrokes:(BOOL)a8;
- (BOOL)shouldCancelTaskGivenNewTask:(id)a3;
- (CHRecognitionSessionTask)init;
- (CHRecognitionSessionTask)initWithSessionMode:(int64_t)a3 locales:(id)a4 preferredLocales:(id)a5 strokeProvider:(id)a6 calculateDocumentProvider:(id)a7 inputResult:(id)a8 recognitionQOSClass:(unsigned int)a9 recognitionEnvironment:(int64_t)a10 isHighResponsivenessTask:(BOOL)a11 strokeGroupingRequirement:(int64_t)a12 principalLineRequirement:(int64_t)a13 subjectStrokeIdentifiers:(id)a14 recognitionOptions:(id)a15 partialResultBlock:(id)a16 wantsAutoRefine:(BOOL)a17;
- (id)clutterFilter;
- (id)newDocumentLayoutAnalysisManager;
- (id)newGroupingManager;
- (id)newGroupingPostProcessingManagerWithGroupingManager:(id)a3;
- (id)newStrokeClassifier;
- (id)recognitionResultsForGroupingResult:(id)a3 groupingManager:(id)a4 strokeGroupsToProcess:(id)a5 strokeClassificationResult:(id)a6 shouldUpdateRecognitionResultsPerLocale:(BOOL)a7 strokeGroupReplacements:(id *)a8;
- (void)cancel;
- (void)main;
@end

@implementation CHRecognitionSessionTask

- (CHRecognitionSessionTask)init
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_ERROR, "Use designated initializer instead", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v6 = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_FAULT, "Use designated initializer instead", v6, 2u);
  }

LABEL_8:

  return 0;
}

- (CHRecognitionSessionTask)initWithSessionMode:(int64_t)a3 locales:(id)a4 preferredLocales:(id)a5 strokeProvider:(id)a6 calculateDocumentProvider:(id)a7 inputResult:(id)a8 recognitionQOSClass:(unsigned int)a9 recognitionEnvironment:(int64_t)a10 isHighResponsivenessTask:(BOOL)a11 strokeGroupingRequirement:(int64_t)a12 principalLineRequirement:(int64_t)a13 subjectStrokeIdentifiers:(id)a14 recognitionOptions:(id)a15 partialResultBlock:(id)a16 wantsAutoRefine:(BOOL)a17
{
  v22 = a4;
  v23 = a5;
  v138 = a6;
  v137 = a7;
  v139 = a8;
  v136 = a14;
  v24 = a15;
  v25 = a16;
  if (!objc_msgSend_count(v23, v26, v27, v28, v29, v30))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v36 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_ERROR, "The preferred locales list cannot be empty.", buf, 2u);
    }
  }

  if (!objc_msgSend_count(v23, v31, v32, v33, v34, v35))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v37 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_FAULT, "The preferred locales list cannot be empty.", buf, 2u);
    }
  }

  v140.receiver = self;
  v140.super_class = CHRecognitionSessionTask;
  v38 = [(CHRecognitionSessionTask *)&v140 init];
  p_isa = &v38->super.isa;
  v45 = v38;
  if (v38)
  {
    v38->_sessionMode = a3;
    v46 = objc_msgSend_copy(v22, v39, v40, v41, v42, v43);
    recognitionLocales = v45->_recognitionLocales;
    v45->_recognitionLocales = v46;

    v53 = objc_msgSend_copy(v23, v48, v49, v50, v51, v52);
    preferredLocales = v45->_preferredLocales;
    v45->_preferredLocales = v53;

    objc_storeStrong(p_isa + 70, a6);
    objc_storeStrong(p_isa + 71, a7);
    objc_storeStrong(p_isa + 64, a8);
    v45->_status = 0;
    v45->_recognitionEnvironment = a10;
    v45->_isHighResponsivenessTask = a11;
    v45->_strokeGroupingRequirement = a12;
    v45->_principalLineRequirement = a13;
    objc_storeStrong(p_isa + 79, a14);
    v60 = objc_msgSend_copy(v25, v55, v56, v57, v58, v59);
    partialResultBlock = v45->_partialResultBlock;
    v45->_partialResultBlock = v60;

    v67 = objc_msgSend_copy(v24, v62, v63, v64, v65, v66);
    recognitionOptions = v45->_recognitionOptions;
    v45->_recognitionOptions = v67;

    *&v45->_disableMathTextSwapping = 0;
    v45->_wantsAutoRefine = a17;
    v74 = objc_msgSend_set(MEMORY[0x1E695DFA8], v69, v70, v71, v72, v73);
    intermediateDeclaredVariables = v45->_intermediateDeclaredVariables;
    v45->_intermediateDeclaredVariables = v74;

    v81 = objc_msgSend_cachedRecognitionResultsFromPostProcessing(v139, v76, v77, v78, v79, v80);
    v87 = objc_msgSend_copy(v81, v82, v83, v84, v85, v86);
    cachedRecognitionResultsFromPostProcessing = v45->_cachedRecognitionResultsFromPostProcessing;
    v45->_cachedRecognitionResultsFromPostProcessing = v87;

    if (_os_feature_enabled_impl())
    {
      if (CHHasPersonalizedSynthesisSupport())
      {
        v93 = objc_msgSend_objectForKeyedSubscript_(v45->_recognitionOptions, v89, @"CHRecognitionTaskSkipPopulatingInventory", v90, v91, v92);
        v99 = objc_msgSend_BOOLValue(v93, v94, v95, v96, v97, v98);

        v45->_allowContributionToStyle = (a3 == 0) & (v99 ^ 1);
        if (os_variant_has_internal_diagnostics())
        {
          v105 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v100, v101, v102, v103, v104);
          v110 = objc_msgSend_dictionaryForKey_(v105, v106, @"com.apple.corehandwriting", v107, v108, v109);

          v115 = objc_msgSend_objectForKey_(v110, v111, @"kCHFreezeStyleInventory", v112, v113, v114);
          v121 = objc_msgSend_BOOLValue(v115, v116, v117, v118, v119, v120);

          if (v121)
          {
            v45->_allowContributionToStyle = 0;
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v122 = qword_1EA84DC98;
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v122, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: the inventory is frozen", buf, 2u);
            }
          }
        }
      }
    }

    v123 = objc_alloc(MEMORY[0x1E69922B8]);
    v128 = objc_msgSend_initWithLocales_(v123, v124, v45->_recognitionLocales, v125, v126, v127);
    unitsTrie = v45->_unitsTrie;
    v45->_unitsTrie = v128;

    v130 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v131 = dispatch_queue_attr_make_with_qos_class(v130, a9, 0);

    v132 = dispatch_queue_create("com.apple.CoreHandwriting.RecognitionSessionRecognizers", v131);
    recognizersQueue = v45->__recognizersQueue;
    v45->__recognizersQueue = v132;
  }

  return v45;
}

- (void)main
{
  v2994 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_outputResult(self, a2, v2, v3, v4, v5);

  if (v7)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "Recognition tasks can only be executed once: %@", buf, 0xCu);
    }
  }

  v14 = objc_msgSend_outputResult(self, v8, v9, v10, v11, v12);
  v15 = v14 == 0;

  if (!v15)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_FAULT, "Recognition tasks can only be executed once: %@", buf, 0xCu);
    }
  }

  v17 = self;
  objc_sync_enter(v17);
  if (!v17->_cancelled)
  {
    sub_18385556C(v17, 1);
    objc_sync_exit(v17);
    v2908 = v17;

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      inputResult = v17->_inputResult;
      v25 = inputResult != 0;
      v26 = objc_msgSend_strokeClassificationResult(inputResult, v19, v20, v21, v22, v23);
      v32 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v26, v27, v28, v29, v30, v31);
      v38 = objc_msgSend_count(v32, v33, v34, v35, v36, v37);
      v44 = objc_msgSend_strokeProvider(v2908, v39, v40, v41, v42, v43);
      v50 = objc_msgSend_principalLineRequirement(v2908, v45, v46, v47, v48, v49);
      v56 = objc_msgSend_count(*(v2908 + 632), v51, v52, v53, v54, v55);
      *buf = 67110146;
      *&buf[4] = v25;
      *&buf[8] = 2048;
      *&buf[10] = v38;
      *&buf[18] = 2112;
      *&buf[20] = v44;
      *&buf[28] = 2048;
      *&buf[30] = v50;
      *&buf[38] = 2048;
      *&buf[40] = v56;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEFAULT, "RecognitionTask main starting with input result ? %d, strokes in strokeClassificationResult = %ld, strokeProvider %@, principalLinesRequirement = %ld, subjectStrokes: %ld", buf, 0x30u);
    }

    v62 = *(v2908 + 512);
    if (!v62 || (v63 = MEMORY[0x1E695DFD8], objc_msgSend_locales(v62, v57, v58, v59, v60, v61), v2862 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setWithArray_(v63, v64, v2862, v65, v66, v67), v68 = objc_claimAutoreleasedReturnValue(), v69 = MEMORY[0x1E695DFD8], objc_msgSend_recognitionLocales(v2908, v70, v71, v72, v73, v74), v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setWithArray_(v69, v76, v75, v77, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), LOBYTE(v69) = objc_msgSend_isEqualToSet_(v68, v81, v80, v82, v83, v84), v80, v75, v68, v2862, (v69 & 1) != 0))
    {
      v2876 = 0;
      goto LABEL_33;
    }

    v2863 = objc_msgSend_locales(*(v2908 + 512), v57, v58, v59, v60, v61);
    v90 = objc_msgSend_recognitionLocales(v2908, v85, v86, v87, v88, v89);
    isGroupingWithLocales_differentFromGroupingWithLocales = objc_msgSend_isGroupingWithLocales_differentFromGroupingWithLocales_(CHRecognizerConfiguration, v91, v2863, v90, v92, v93);

    if (isGroupingWithLocales_differentFromGroupingWithLocales)
    {
      v95 = *(v2908 + 512);
      *(v2908 + 512) = 0;

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v96 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v97 = "RecognitionTask input result has different recognition locales. The difference requires the cached result to be discarded.";
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v96 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v97 = "RecognitionTask input result has different recognition locales. The difference requires to add/remove some recognition result per stroke group.";
    }

    _os_log_impl(&dword_18366B000, v96, OS_LOG_TYPE_DEFAULT, v97, buf, 2u);
LABEL_32:

    v2876 = isGroupingWithLocales_differentFromGroupingWithLocales ^ 1;
LABEL_33:
    v2864 = objc_msgSend_strokeProvider(v2908, v57, v58, v59, v60, v61);
    v103 = objc_msgSend_delegate(v2908, v98, v99, v100, v101, v102);
    v104 = v103 == 0;

    if (v104)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v110 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v110, OS_LOG_TYPE_ERROR, "delegate cannot be nil when the task starts", buf, 2u);
      }
    }

    v111 = objc_msgSend_delegate(v2908, v105, v106, v107, v108, v109);
    v112 = v111 == 0;

    if (v112)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v113 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v113, OS_LOG_TYPE_FAULT, "delegate cannot be nil when the task starts", buf, 2u);
      }
    }

    if (os_variant_has_internal_diagnostics())
    {
      v119 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v114, v115, v116, v117, v118);
      v124 = objc_msgSend_dictionaryForKey_(v119, v120, @"com.apple.corehandwriting", v121, v122, v123);

      v129 = objc_msgSend_objectForKey_(v124, v125, @"CHLogFullDrawings", v126, v127, v128);
      v135 = objc_msgSend_BOOLValue(v129, v130, v131, v132, v133, v134);

      if (v135)
      {
        if (qword_1EA84D050 != -1)
        {
          dispatch_once(&qword_1EA84D050, &unk_1EF1BEA30);
        }

        spid = objc_alloc_init(MEMORY[0x1E696AB78]);
        objc_msgSend_setDateFormat_(spid, v136, @"dd-MM-yyyy-HH-mm-ss-SSS", v137, v138, v139);
        v145 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v140, v141, v142, v143, v144);
        v151 = objc_msgSend_UUIDString(v145, v146, v147, v148, v149, v150);
        v156 = objc_msgSend_substringToIndex_(v151, v152, 4, v153, v154, v155);

        v162 = objc_msgSend_now(MEMORY[0x1E695DF00], v157, v158, v159, v160, v161);
        v167 = objc_msgSend_stringFromDate_(spid, v163, v162, v164, v165, v166);

        v173 = objc_msgSend_strokeProvider(v2908, v168, v169, v170, v171, v172);
        v179 = objc_msgSend_orderedStrokes(v173, v174, v175, v176, v177, v178);
        v180 = objc_opt_class();
        v186 = objc_msgSend_createDrawingForStrokes_interpolationType_resolution_cancellationBlock_(v180, v181, v179, 0, 2, 0);
        if (v186)
        {
          v187 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v182, @"full_drawing_%@_%@.json", v183, v184, v185, v167, v156);
          objc_msgSend_writeToFileWithContext_folder_basename_(v186, v188, &unk_1EF1EBBA8, qword_1EA84D048, v187, v189);
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v190 = qword_1EA84DC60;
          if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = @"CHLogFullDrawings";
            *&buf[12] = 2112;
            *&buf[14] = qword_1EA84D048;
            *&buf[22] = 2112;
            *&buf[24] = v187;
            _os_log_impl(&dword_18366B000, v190, OS_LOG_TYPE_DEFAULT, "%@ serialize drawing to %@/%@, ", buf, 0x20u);
          }
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v187 = qword_1EA84DC60;
          if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = @"CHLogFullDrawings";
            _os_log_impl(&dword_18366B000, v187, OS_LOG_TYPE_ERROR, "%@ skipping serialization of nil drawing.", buf, 0xCu);
          }
        }
      }
    }

    if (objc_msgSend_principalLineRequirement(v2908, v114, v115, v116, v117, v118) == 3)
    {
      v196 = *(v2908 + 512);
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v197, v198, v199, v200, v201);
      v203 = v202;
      v209 = objc_msgSend_recognitionResultsByGroupID(v196, v204, v205, v206, v207, v208);
      spida = objc_msgSend_mutableCopy(v209, v210, v211, v212, v213, v214);

      v2986 = 0u;
      v2985 = 0u;
      v2984 = 0u;
      v2983 = 0u;
      v220 = objc_msgSend_strokeGroupingResult(v196, v215, v216, v217, v218, v219);
      v226 = objc_msgSend_strokeGroups(v220, v221, v222, v223, v224, v225);

      v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v226, v227, &v2983, buf, 16, v228);
      if (v234)
      {
        v235 = *v2984;
LABEL_64:
        v236 = 0;
        while (1)
        {
          if (*v2984 != v235)
          {
            objc_enumerationMutation(v226);
          }

          v237 = *(*(&v2983 + 1) + 8 * v236);
          if (objc_msgSend_cancelled(v2908, v229, v230, v231, v232, v233))
          {
            break;
          }

          v243 = objc_msgSend_uniqueIdentifier(v237, v238, v239, v240, v241, v242);
          v248 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v196, v244, v243, v245, v246, v247);
          v254 = v248;
          if (v248 && objc_msgSend_hasTextResult(v248, v249, v250, v251, v252, v253))
          {
            v255 = sub_183855780(v2908, v237, v254);
            v256 = MEMORY[0x1E696AD98];
            v262 = objc_msgSend_uniqueIdentifier(v237, v257, v258, v259, v260, v261);
            v267 = objc_msgSend_numberWithInteger_(v256, v263, v262, v264, v265, v266);
            objc_msgSend_setObject_forKeyedSubscript_(spida, v268, v255, v267, v269, v270);
          }

          if (v234 == ++v236)
          {
            v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v226, v229, &v2983, buf, 16, v233);
            if (v234)
            {
              goto LABEL_64;
            }

            break;
          }
        }
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v271, v272, v273, v274, v275);
      v277 = v276;
      if (objc_msgSend_cancelled(v2908, v278, v279, v280, v281, v282))
      {
        AutoRefineResult_generationDuration_recognitionEnvironment = 0;
      }

      else
      {
        memset(v2982, 0, 56);
        if (v196)
        {
          objc_msgSend_generationDuration(v196, v283, v284, v285, v286, v287);
        }

        *&v2982[40] = v277 - v203;
        v2859 = [CHRecognitionSessionResult alloc];
        v2885 = objc_msgSend_strokeProviderVersion(v196, v301, v302, v303, v304, v305);
        v2890 = objc_msgSend_encodedStrokeProviderVersion(v196, v306, v307, v308, v309, v310);
        v2894 = objc_msgSend_orderedStrokeIdentifiers(v196, v311, v312, v313, v314, v315);
        v321 = objc_msgSend_sessionMode(v196, v316, v317, v318, v319, v320);
        v2883 = objc_msgSend_recognitionLocales(v2908, v322, v323, v324, v325, v326);
        v2880 = objc_msgSend_preferredLocales(v2908, v327, v328, v329, v330, v331);
        logd = objc_msgSend_calculateDocumentProvider(v2908, v332, v333, v334, v335, v336);
        v2877 = objc_msgSend_declaredVariables(logd, v337, v338, v339, v340, v341);
        v2873 = objc_msgSend_clutterFilter(v196, v342, v343, v344, v345, v346);
        v2869 = objc_msgSend_strokeClassificationResult(v196, v347, v348, v349, v350, v351);
        v2865 = objc_msgSend_strokeGroupingResult(v196, v352, v353, v354, v355, v356);
        v362 = objc_msgSend_unprocessedStrokeGroupingResult(v196, v357, v358, v359, v360, v361);
        v368 = objc_msgSend_tilingResult(v196, v363, v364, v365, v366, v367);
        v374 = objc_msgSend_documentLayoutAnalysisResult(v196, v369, v370, v371, v372, v373);
        v380 = objc_msgSend_rawRecognitionResultsByGroupID(v196, v375, v376, v377, v378, v379);
        v386 = objc_msgSend_textCorrectionResultsByGroupID(v196, v381, v382, v383, v384, v385);
        v392 = objc_msgSend_autoRefineResults(v196, v387, v388, v389, v390, v391);
        v398 = objc_msgSend_lastAutoRefineResult(v196, v393, v394, v395, v396, v397);
        *v2979 = *v2982;
        *&v2979[16] = *&v2982[16];
        v2980 = *&v2982[32];
        v2981 = *&v2982[48];
        v404 = objc_msgSend_recognitionEnvironment(v2908, v399, v400, v401, v402, v403);
        AutoRefineResult_generationDuration_recognitionEnvironment = objc_msgSend_initWithStrokeProviderVersion_encodedStrokeProviderVersion_orderedStrokeIdentifiers_sessionMode_locales_preferredLocales_declaredVariables_clutterFilter_strokeClassificationResult_strokeGroupingResult_unprocessedStrokeGroupingResult_tilingResult_documentLayoutAnalysisResult_recognitionResults_rawRecognitionResults_inlineContinuousModeResults_autoRefineResults_lastAutoRefineResult_generationDuration_recognitionEnvironment_(v2859, v405, v2885, v2890, v2894, v321, v2883, v2880, v2877, v2873, v2869, v2865, v362, v368, v374, spida, v380, v386, v392, v398, v2979, v404);
      }

      v406 = AutoRefineResult_generationDuration_recognitionEnvironment;
LABEL_649:
      v2843 = v406;
      objc_storeStrong((v2908 + 576), v406);
      v2691 = v2864;
      if (qword_1EA84D040 != -1)
      {
        dispatch_once(&qword_1EA84D040, &unk_1EF1BE9F0);
      }

      v2692 = objc_msgSend_outputResult(v2908, v2686, v2687, v2688, v2689, v2690);
      v2693 = v2692 != 0;
      v2694 = byte_1EA84D038;

      if ((v2693 & v2694) != 0)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v2695 = qword_1EA84DC60;
        if (os_log_type_enabled(v2695, OS_LOG_TYPE_DEBUG))
        {
          v2701 = objc_msgSend_strokeProviderVersion(v2691, v2696, v2697, v2698, v2699, v2700);
          *buf = 138412290;
          *&buf[4] = v2701;
          _os_log_impl(&dword_18366B000, v2695, OS_LOG_TYPE_DEBUG, "Recognition results for version %@:", buf, 0xCu);
        }

        v2707 = objc_msgSend_outputResult(v2908, v2702, v2703, v2704, v2705, v2706);
        v2713 = objc_msgSend_allResultsDebugDescriptionByGroup(v2707, v2708, v2709, v2710, v2711, v2712);

        v2986 = 0u;
        v2985 = 0u;
        v2984 = 0u;
        v2983 = 0u;
        v2714 = v2713;
        v2717 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2714, v2715, &v2983, buf, 16, v2716);
        if (v2717)
        {
          v2718 = *v2984;
          do
          {
            v2719 = 0;
            do
            {
              if (*v2984 != v2718)
              {
                objc_enumerationMutation(v2714);
              }

              v2720 = *(*(&v2983 + 1) + 8 * v2719);
              if (qword_1EA84DC48 == -1)
              {
                v2721 = qword_1EA84DC60;
                if (!os_log_type_enabled(v2721, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_664;
                }

LABEL_663:
                *v2982 = 138412290;
                *&v2982[4] = v2720;
                _os_log_impl(&dword_18366B000, v2721, OS_LOG_TYPE_DEBUG, "%@", v2982, 0xCu);
                goto LABEL_664;
              }

              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              v2721 = qword_1EA84DC60;
              if (os_log_type_enabled(v2721, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_663;
              }

LABEL_664:

              ++v2719;
            }

            while (v2717 != v2719);
            v2724 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2714, v2722, &v2983, buf, 16, v2723);
            v2717 = v2724;
          }

          while (v2724);
        }
      }

      v406 = v2843;
      sub_18385556C(v2908, 2);
LABEL_671:

      v17 = v2864;
      goto LABEL_672;
    }

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v191, v192, v193, v194, v195);
    v2821 = v294;
    v295 = *(v2908 + 632);
    if (v295)
    {
      v2832 = objc_msgSend_mutableCopy(v295, v289, v290, v291, v292, v293);
    }

    else
    {
      v407 = objc_msgSend_orderedStrokes(v2864, v289, v290, v291, v292, v293);
      v2949[0] = MEMORY[0x1E69E9820];
      v2949[1] = 3221225472;
      v2949[2] = sub_183855740;
      v2949[3] = &unk_1E6DDEE48;
      v2949[4] = v2908;
      v2832 = objc_msgSend_encodedStrokeIdentifiersFromStrokes_withStrokeProvider_shouldCancel_(CHStrokeUtilities, v408, v407, v2864, v2949, v409);

      if (!v2832)
      {
        v406 = 0;
        goto LABEL_671;
      }
    }

    v2831 = objc_msgSend_newGroupingManager(v2908, v296, v297, v298, v299, v300);
    v2823 = objc_msgSend_newDocumentLayoutAnalysisManager(v2908, v410, v411, v412, v413, v414);
    if (*(v2908 + 632))
    {
      v420 = objc_msgSend_strokeClassificationResult(*(v2908 + 512), v415, v416, v417, v418, v419);
      v425 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v421, *(v2908 + 632), v422, v423, v424);
      v2846 = objc_msgSend_subResultForStrokeIdentifiers_(v420, v426, v425, v427, v428, v429);

      v435 = objc_msgSend_documentLayoutAnalysisResult(*(v2908 + 512), v430, v431, v432, v433, v434);
      LOBYTE(v420) = v435 == 0;

      if ((v420 & 1) == 0)
      {
        v2948 = 0u;
        v2947 = 0u;
        v2946 = 0u;
        v2945 = 0u;
        v436 = *(v2908 + 632);
        v444 = objc_msgSend_countByEnumeratingWithState_objects_count_(v436, v437, &v2945, v2967, 16, v438);
        if (v444)
        {
          v445 = *v2946;
          while (2)
          {
            for (i = 0; i != v444; ++i)
            {
              if (*v2946 != v445)
              {
                objc_enumerationMutation(v436);
              }

              v447 = *(*(&v2945 + 1) + 8 * i);
              v448 = objc_msgSend_documentLayoutAnalysisResult(*(v2908 + 512), v439, v440, v441, v442, v443);
              v454 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v448, v449, v450, v451, v452, v453);
              v459 = objc_msgSend_objectForKeyedSubscript_(v454, v455, v447, v456, v457, v458);
              v460 = v459 == 0;

              if (v460)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v660 = qword_1EA84DCB8;
                if (os_log_type_enabled(v660, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *&buf[4] = v447;
                  _os_log_impl(&dword_18366B000, v660, OS_LOG_TYPE_DEBUG, "Failed to create subject grouping result because stroke %@ is not covered in the last document layout analysis result.", buf, 0xCu);
                }

                goto LABEL_156;
              }
            }

            v444 = objc_msgSend_countByEnumeratingWithState_objects_count_(v436, v439, &v2945, v2967, 16, v443);
            if (v444)
            {
              continue;
            }

            break;
          }
        }

        v466 = objc_msgSend_orderedStrokes(v2864, v461, v462, v463, v464, v465);
        v2944[0] = MEMORY[0x1E69E9820];
        v2944[1] = 3221225472;
        v2944[2] = sub_183855748;
        v2944[3] = &unk_1E6DDEE48;
        v2944[4] = v2908;
        v469 = objc_msgSend_encodedStrokeIdentifiersFromStrokes_withStrokeProvider_shouldCancel_(CHStrokeUtilities, v467, v466, v2864, v2944, v468);

        v475 = objc_msgSend_orderedStrokeIdentifiers(*(v2908 + 512), v470, v471, v472, v473, v474);
        v481 = objc_msgSend_lastObject(*(v2908 + 632), v476, v477, v478, v479, v480);
        v486 = objc_msgSend_indexOfObject_(v475, v482, v481, v483, v484, v485);

        if (v486 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_93:
          v492 = 1;
        }

        else
        {
          v1003 = objc_msgSend_count(v469, v487, v488, v489, v490, v491);
          v492 = 1;
          if ((v486 & 0x8000000000000000) == 0 && v1003 > v486)
          {
            v1009 = 0;
            v1010 = v486 + 1;
            while (1)
            {
              v1011 = objc_msgSend_orderedStrokeIdentifiers(*(v2908 + 512), v1004, v1005, v1006, v1007, v1008);
              v1016 = objc_msgSend_objectAtIndexedSubscript_(v1011, v1012, v1009, v1013, v1014, v1015);
              v1021 = objc_msgSend_objectAtIndexedSubscript_(v469, v1017, v1009, v1018, v1019, v1020);
              isEqual = objc_msgSend_isEqual_(v1016, v1022, v1021, v1023, v1024, v1025);

              if ((isEqual & 1) == 0)
              {
                break;
              }

              if (v1010 == ++v1009)
              {
                goto LABEL_93;
              }
            }

            v2767 = sub_183761FE4(13);
            if (os_log_type_enabled(v2767, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v2767, OS_LOG_TYPE_DEBUG, "Failed to create subject grouping result because the last session result is outdated and some stroke before the subject strokes were deleted.", buf, 2u);
            }

            v492 = 0;
          }
        }

        v497 = v492 ^ 1;
        if (!v2846)
        {
          v497 = 1;
        }

        if ((v497 & 1) == 0 && v2823)
        {
          v498 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v493, *(v2908 + 632), v494, v495, v496);
          v504 = objc_msgSend_orderedStrokeIdentifiers(*(v2908 + 512), v499, v500, v501, v502, v503);
          v510 = objc_msgSend_unprocessedStrokeGroupingResult(*(v2908 + 512), v505, v506, v507, v508, v509);
          v516 = objc_msgSend_documentLayoutAnalysisResult(*(v2908 + 512), v511, v512, v513, v514, v515);
          v522 = objc_msgSend_strokeClassificationResult(*(v2908 + 512), v517, v518, v519, v520, v521);
          v2943[0] = MEMORY[0x1E69E9820];
          v2943[1] = 3221225472;
          v2943[2] = sub_183855750;
          v2943[3] = &unk_1E6DDEE48;
          v2943[4] = v2908;
          v524 = objc_msgSend_subjectStrokeGroupingResult_allOrderedStrokeIdentifiers_lastGroupingResult_lastDocumentLayoutAnalysisResult_lastStrokeClassificationResult_cancellationBlock_(v2823, v523, v498, v504, v510, v516, v522, v2943);

          v530 = 0;
          v2884 = 0;
          v2834 = 0;
          v531 = v2846;
          goto LABEL_173;
        }
      }

LABEL_156:
      v661 = *(v2908 + 512);
      *(v2908 + 512) = 0;

      v662 = MEMORY[0x1E695DF70];
      v668 = objc_msgSend_count(*(v2908 + 632), v663, v664, v665, v666, v667);
      log = objc_msgSend_arrayWithCapacity_(v662, v669, v668, v670, v671, v672);
      v2942 = 0u;
      v2941 = 0u;
      v2940 = 0u;
      v2939 = 0u;
      obj = *(v2908 + 632);
      v673 = v2864;
      v681 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v674, &v2939, v2966, 16, v675);
      if (!v681)
      {
        goto LABEL_172;
      }

      v682 = *v2940;
LABEL_158:
      v683 = 0;
      while (1)
      {
        if (*v2940 != v682)
        {
          objc_enumerationMutation(obj);
        }

        v684 = *(*(&v2939 + 1) + 8 * v683);
        if (__ROR8__(0x8F5C28F5C28F5C29 * objc_msgSend_count(log, v676, v677, v678, v679, v680), 2) <= 0x28F5C28F5C28F5CuLL && (objc_msgSend_cancelled(v2908, v685, v686, v687, v688, v689) & 1) != 0)
        {
          break;
        }

        v690 = objc_opt_class();
        v698 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v690, v691, v684, v673, v692, v693);
        if (v698)
        {
          objc_msgSend_addObject_(log, v694, v698, v695, v696, v697);
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v699 = qword_1EA84DC60;
          if (os_log_type_enabled(v699, OS_LOG_TYPE_ERROR))
          {
            v705 = objc_msgSend_strokeProviderVersion(v2864, v700, v701, v702, v703, v704);
            v711 = objc_msgSend_orderedStrokes(v2864, v706, v707, v708, v709, v710);
            v717 = objc_msgSend_count(v711, v712, v713, v714, v715, v716);
            v723 = objc_msgSend_count(*(v2908 + 632), v718, v719, v720, v721, v722);
            *buf = 138413058;
            *&buf[4] = v684;
            *&buf[12] = 2112;
            *&buf[14] = v705;
            *&buf[22] = 2048;
            *&buf[24] = v717;
            *&buf[32] = 2048;
            *&buf[34] = v723;
            _os_log_impl(&dword_18366B000, v699, OS_LOG_TYPE_ERROR, "Invalid stroke %@ for stroke provider: version = %@, number of strokes = %ld, number of subject stroke identifiers %ld ", buf, 0x2Au);
          }
        }

        ++v683;
        v673 = v2864;
        if (v681 == v683)
        {
          v681 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v676, &v2939, v2966, 16, v680);
          if (!v681)
          {
LABEL_172:

            v2834 = log;
            v530 = 0;
            v2884 = 0;
            v531 = 0;
            v524 = 0;
            goto LABEL_173;
          }

          goto LABEL_158;
        }
      }

      v2826 = 0;
      v2828 = 0;
      v2847 = 0;
      v2837 = 0;
      v2841 = 0;
      v731 = 0;
LABEL_648:

      v406 = v2841;
      if ((v731 & 1) == 0)
      {
        goto LABEL_671;
      }

      goto LABEL_649;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v532 = qword_1EA84DC88;
    v533 = os_signpost_id_generate(v532);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v534 = qword_1EA84DC88;
    v535 = v534;
    v536 = v533 - 1;
    if (v533 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v534))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v535, OS_SIGNPOST_INTERVAL_BEGIN, v533, "CHSessionTaskGetAddedStrokes", "", buf, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v537 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v537, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v537, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskGetAddedStrokes", buf, 2u);
    }

    v538 = objc_opt_class();
    v2938 = 0;
    v2937 = 0;
    v544 = objc_msgSend_strokeGroupingResult(*(v2908 + 512), v539, v540, v541, v542, v543);
    v2936[0] = MEMORY[0x1E69E9820];
    v2936[1] = 3221225472;
    v2936[2] = sub_183855758;
    v2936[3] = &unk_1E6DDEE48;
    v2936[4] = v2908;
    objc_msgSend_getAddedStrokes_removedStrokeIdentifiers_inStrokeProvider_lastGroupingResult_shouldCancel_(v538, v545, &v2938, &v2937, v2864, v544, v2936);
    v2834 = v2938;
    v2884 = v2937;

    if (qword_1EA84DC48 == -1)
    {
      v546 = qword_1EA84DC88;
      if (v536 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_112;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v546 = qword_1EA84DC88;
      if (v536 <= 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_112:
        if (os_signpost_enabled(v546))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v546, OS_SIGNPOST_INTERVAL_END, v533, "CHSessionTaskGetAddedStrokes", "", buf, 2u);
        }
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v547 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v547, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v547, OS_LOG_TYPE_DEFAULT, "END CHSessionTaskGetAddedStrokes", buf, 2u);
    }

    v553 = objc_msgSend_orderedStrokes(v2864, v548, v549, v550, v551, v552);
    v559 = objc_msgSend_count(v553, v554, v555, v556, v557, v558);
    v565 = objc_msgSend_count(v2834, v560, v561, v562, v563, v564);
    v571 = objc_msgSend_count(v2834, v566, v567, v568, v569, v570);

    v577 = objc_msgSend_orderedStrokes(v2864, v572, v573, v574, v575, v576);
    v581 = objc_msgSend_subarrayWithRange_(v577, v578, v559 - v565, v571, v579, v580);
    isEqualToArray = objc_msgSend_isEqualToArray_(v581, v582, v2834, v583, v584, v585);

    if ((isEqualToArray & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v587 = qword_1EA84DC60;
      if (os_log_type_enabled(v587, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v587, OS_LOG_TYPE_DEBUG, "Added strokes are interleaved with the old strokes. This will require building document layout analysis result from scratch.", buf, 2u);
      }
    }

    if (*(v2908 + 512))
    {
      v588 = objc_msgSend_array(MEMORY[0x1E695DF70], v525, v526, v527, v528, v529);
      v589 = MEMORY[0x1E695DFD8];
      v595 = objc_msgSend_orderedStrokeIdentifiers(*(v2908 + 512), v590, v591, v592, v593, v594);
      v600 = objc_msgSend_setWithArray_(v589, v596, v595, v597, v598, v599);

      v2935 = 0u;
      v2934 = 0u;
      v2933 = 0u;
      v2932 = 0u;
      v606 = objc_msgSend_orderedStrokes(v2864, v601, v602, v603, v604, v605);
      v614 = objc_msgSend_countByEnumeratingWithState_objects_count_(v606, v607, &v2932, v2965, 16, v608);
      if (v614)
      {
        v615 = *v2933;
        do
        {
          for (j = 0; j != v614; ++j)
          {
            if (*v2933 != v615)
            {
              objc_enumerationMutation(v606);
            }

            v617 = objc_msgSend_encodedStrokeIdentifier(*(*(&v2932 + 1) + 8 * j), v609, v610, v611, v612, v613);
            if (objc_msgSend_containsObject_(v600, v618, v617, v619, v620, v621))
            {
              objc_msgSend_addObject_(v588, v622, v617, v623, v624, v625);
            }
          }

          v614 = objc_msgSend_countByEnumeratingWithState_objects_count_(v606, v609, &v2932, v2965, 16, v613);
        }

        while (v614);
      }

      v631 = objc_msgSend_array(MEMORY[0x1E695DF70], v626, v627, v628, v629, v630);
      v2930 = 0u;
      v2931 = 0u;
      v2928 = 0u;
      v2929 = 0u;
      v637 = objc_msgSend_orderedStrokeIdentifiers(*(v2908 + 512), v632, v633, v634, v635, v636);
      v644 = objc_msgSend_countByEnumeratingWithState_objects_count_(v637, v638, &v2928, v2964, 16, v639);
      if (v644)
      {
        v645 = *v2929;
        do
        {
          for (k = 0; k != v644; ++k)
          {
            if (*v2929 != v645)
            {
              objc_enumerationMutation(v637);
            }

            v647 = *(*(&v2928 + 1) + 8 * k);
            if ((objc_msgSend_containsObject_(v2884, v640, v647, v641, v642, v643) & 1) == 0)
            {
              objc_msgSend_addObject_(v631, v640, v647, v641, v642, v643);
            }
          }

          v644 = objc_msgSend_countByEnumeratingWithState_objects_count_(v637, v640, &v2928, v2964, 16, v643);
        }

        while (v644);
      }

      if ((objc_msgSend_isEqualToArray_(v588, v648, v631, v649, v650, v651) & 1) == 0)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v652 = qword_1EA84DC60;
        if (os_log_type_enabled(v652, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v652, OS_LOG_TYPE_ERROR, "Old existing strokes changed order since the last recognition result. Discarding the last session result as everything needs to be reprocessed.", buf, 2u);
        }

        v653 = *(v2908 + 512);
        *(v2908 + 512) = 0;

        v659 = objc_msgSend_orderedStrokes(v2864, v654, v655, v656, v657, v658);

        v2884 = 0;
        *(v2908 + 511) = 0;
        v2834 = v659;
      }
    }

    v531 = 0;
    v524 = 0;
    v530 = isEqualToArray ^ 1;
LABEL_173:
    v2837 = v524;
    v2847 = v531;
    if (objc_msgSend_sessionMode(v2908, v525, v526, v527, v528, v529))
    {
      v729 = 0;
      v730 = 0;
    }

    else
    {
      v2926 = 0u;
      v2927 = 0u;
      v2924 = 0u;
      v2925 = 0u;
      v732 = v2834;
      v729 = 0;
      v730 = 0;
      v740 = objc_msgSend_countByEnumeratingWithState_objects_count_(v732, v733, &v2924, v2963, 16, v734);
      if (v740)
      {
        v741 = *v2925;
        do
        {
          for (m = 0; m != v740; ++m)
          {
            if (*v2925 != v741)
            {
              objc_enumerationMutation(v732);
            }

            v743 = *(*(&v2924 + 1) + 8 * m);
            v730 += (objc_msgSend_strokeAttributes(v743, v735, v736, v737, v738, v739) >> 2) & 1;
            v729 += (objc_msgSend_strokeAttributes(v743, v744, v745, v746, v747, v748) >> 1) & 1;
          }

          v740 = objc_msgSend_countByEnumeratingWithState_objects_count_(v732, v735, &v2924, v2963, 16, v739);
        }

        while (v740);
      }
    }

    if (objc_msgSend_sessionMode(v2908, v724, v725, v726, v727, v728))
    {
      goto LABEL_185;
    }

    if (*(v2908 + 511))
    {
      v749 = 1;
    }

    else
    {
      if (*(v2908 + 512))
      {
LABEL_185:
        v749 = 0;
        goto LABEL_191;
      }

      v749 = *(v2908 + 632) == 0;
    }

LABEL_191:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v750 = qword_1EA84DC60;
    if (os_log_type_enabled(v750, OS_LOG_TYPE_DEFAULT))
    {
      v756 = objc_msgSend_count(v2832, v751, v752, v753, v754, v755);
      v762 = objc_msgSend_count(v2834, v757, v758, v759, v760, v761);
      v768 = objc_msgSend_count(v2884, v763, v764, v765, v766, v767);
      v769 = *(v2908 + 511);
      *buf = 134219520;
      *&buf[4] = v756;
      *&buf[12] = 2048;
      *&buf[14] = v762;
      *&buf[22] = 2048;
      *&buf[24] = v730;
      *&buf[32] = 2048;
      *&buf[34] = v729;
      *&buf[42] = 2048;
      *&buf[44] = v768;
      *&buf[52] = 1024;
      *&buf[54] = v769;
      v2992 = 1024;
      v2993 = v749;
      _os_log_impl(&dword_18366B000, v750, OS_LOG_TYPE_DEFAULT, "RecognitionTask running for %lu strokes: %lu added strokes [%ld synthetic, %ld shapes], %ld removed strokes, wantsAutoRefine ? %d, shouldBuildAutoRefineResult ? %d", buf, 0x40u);
    }

    v770 = MEMORY[0x1E696ACC8];
    v776 = objc_msgSend_strokeProviderVersion(v2864, v771, v772, v773, v774, v775);
    v2923 = 0;
    v2822 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v770, v777, v776, 1, &v2923, v778);
    v2817 = v2923;

    v2835 = objc_msgSend_currentProgress(MEMORY[0x1E696AE38], v779, v780, v781, v782, v783);
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v784, v785, v786, v787, v788);
    v790 = v789;
    v2830 = objc_msgSend_clutterFilter(v2908, v791, v792, v793, v794, v795);
    if (!v2830)
    {
      v2830 = 0;
      v2818 = 0;
      goto LABEL_223;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v801 = qword_1EA84DC88;
    v802 = os_signpost_id_generate(v801);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v803 = qword_1EA84DC88;
    v804 = v803;
    v805 = v802 - 1;
    if (v802 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v803))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v804, OS_SIGNPOST_INTERVAL_BEGIN, v802, "CHSessionTaskClutterFilter", "", buf, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v806 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v806, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v806, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskClutterFilter", buf, 2u);
    }

    if (objc_msgSend_cancelled(v2908, v807, v808, v809, v810, v811))
    {
      v2818 = 0;
    }

    else
    {
      if (objc_msgSend_isEmpty(v2830, v812, v813, v814, v815, v816) && !*(v2908 + 632))
      {
        v823 = objc_msgSend_strokeProvider(v2908, v817, v818, v819, v820, v821);
        v1421 = objc_msgSend_orderedStrokes(v823, v1416, v1417, v1418, v1419, v1420);
        v2922 = 0;
        v1424 = objc_msgSend_clutterFilterByAddingStrokes_removingStrokeIdentifiers_affectedStrokeIdentifiers_(v2830, v1422, v1421, 0, &v2922, v1423);
        v2818 = v2922;

        v2830 = v1424;
      }

      else
      {
        v2921 = 0;
        v822 = objc_msgSend_clutterFilterByAddingStrokes_removingStrokeIdentifiers_affectedStrokeIdentifiers_(v2830, v817, v2834, v2884, &v2921, v821);
        v2818 = v2921;
        v823 = v2830;
        v2830 = v822;
      }
    }

    if (qword_1EA84DC48 == -1)
    {
      v824 = qword_1EA84DC88;
      if (v805 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_216;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v824 = qword_1EA84DC88;
      if (v805 <= 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_216:
        if (os_signpost_enabled(v824))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v824, OS_SIGNPOST_INTERVAL_END, v802, "CHSessionTaskClutterFilter", "", buf, 2u);
        }
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v825 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v825, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v825, OS_LOG_TYPE_DEFAULT, "END CHSessionTaskClutterFilter", buf, 2u);
    }

LABEL_223:
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v796, v797, v798, v799, v800);
    v827 = v826;
    v833 = objc_msgSend_completedUnitCount(v2835, v828, v829, v830, v831, v832);
    objc_msgSend_setCompletedUnitCount_(v2835, v834, v833 + 5, v835, v836, v837);
    v2816 = v827 - v790;
    if ((objc_msgSend_cancelled(v2908, v838, v839, v840, v841, v842) & 1) == 0)
    {
      v848 = *(v2908 + 640);
      v849 = v848 == 0;

      if (!v849)
      {
        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v843, v844, v845, v846, v847);
        v851 = v850;
        v857 = objc_msgSend_copy(v2830, v852, v853, v854, v855, v856);
        v858 = [CHRecognitionSessionResult alloc];
        v864 = objc_msgSend_strokeProviderVersion(v2864, v859, v860, v861, v862, v863);
        v870 = objc_msgSend_sessionMode(*(v2908 + 512), v865, v866, v867, v868, v869);
        v876 = objc_msgSend_recognitionLocales(v2908, v871, v872, v873, v874, v875);
        v882 = objc_msgSend_preferredLocales(v2908, v877, v878, v879, v880, v881);
        v888 = objc_msgSend_calculateDocumentProvider(v2908, v883, v884, v885, v886, v887);
        v894 = objc_msgSend_declaredVariables(v888, v889, v890, v891, v892, v893);
        *buf = v2816;
        memset(&buf[8], 0, 40);
        *&buf[48] = v851 - v2821;
        v900 = objc_msgSend_recognitionEnvironment(v2908, v895, v896, v897, v898, v899);
        v902 = objc_msgSend_initWithStrokeProviderVersion_encodedStrokeProviderVersion_orderedStrokeIdentifiers_sessionMode_locales_preferredLocales_declaredVariables_clutterFilter_strokeClassificationResult_strokeGroupingResult_unprocessedStrokeGroupingResult_tilingResult_documentLayoutAnalysisResult_recognitionResults_rawRecognitionResults_inlineContinuousModeResults_autoRefineResults_lastAutoRefineResult_generationDuration_recognitionEnvironment_(v858, v901, v864, v2822, v2832, v870, v876, v882, v894, v857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, buf, v900);

        v903 = *(v2908 + 640);
        v903[2](v903, v902);
      }
    }

    v904 = objc_msgSend_strokeGroupingRequirement(v2908, v843, v844, v845, v846, v847);
    if (v904)
    {
      if (v904 == 1)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v910 = qword_1EA84DC88;
        v911 = os_signpost_id_generate(v910);

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v912 = qword_1EA84DC88;
        v913 = v912;
        v914 = v911 - 1;
        if (v911 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v912))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v913, OS_SIGNPOST_INTERVAL_BEGIN, v911, "CHSessionTaskFastStrokeGrouping", "", buf, 2u);
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v915 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v915, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v915, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskFastStrokeGrouping", buf, 2u);
        }

        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v916, v917, v918, v919, v920);
        v922 = v921;
        v923 = [CHFastStrokeGroupingStrategy alloc];
        v931 = objc_msgSend_initWithStrokeProvider_locales_clutterFilter_(v923, v924, v2864, 0, v2830, v925);
        if (*(v2908 + 632))
        {
          v935 = v2834;
        }

        else
        {
          v987 = objc_msgSend_strokeProvider(v2908, v926, v927, v928, v929, v930);
          v935 = objc_msgSend_orderedStrokes(v987, v988, v989, v990, v991, v992);
        }

        v2920[0] = MEMORY[0x1E69E9820];
        v2920[1] = 3221225472;
        v2920[2] = sub_183855760;
        v2920[3] = &unk_1E6DDEE48;
        v2920[4] = v2908;
        v993 = objc_msgSend_lineGroupingResultUsingStrokes_shouldCancel_(v931, v932, v935, v2920, v933, v934);

        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v994, v995, v996, v997, v998);
        v1000 = v999;
        if (qword_1EA84DC48 == -1)
        {
          v1001 = qword_1EA84DC88;
          if (v914 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_267;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v1001 = qword_1EA84DC88;
          if (v914 <= 0xFFFFFFFFFFFFFFFDLL)
          {
LABEL_267:
            if (os_signpost_enabled(v1001))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18366B000, v1001, OS_SIGNPOST_INTERVAL_END, v911, "CHSessionTastFastStrokeGrouping", "", buf, 2u);
            }
          }
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v1002 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v1002, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v1002, OS_LOG_TYPE_DEFAULT, "END CHSessionTastFastStrokeGrouping", buf, 2u);
        }

        v2826 = 0;
        v2828 = 0;
        v2815 = v1000 - v922;
        v938 = 0.0;
        v2837 = v993;
        v939 = 0.0;
        goto LABEL_301;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v931 = qword_1EA84DC60;
      v938 = 0.0;
      if (os_log_type_enabled(v931, OS_LOG_TYPE_ERROR))
      {
        v945 = objc_msgSend_strokeGroupingRequirement(v2908, v940, v941, v942, v943, v944);
        *buf = 134217984;
        *&buf[4] = v945;
        _os_log_impl(&dword_18366B000, v931, OS_LOG_TYPE_ERROR, "Grouping algorithm not implemented: %ld", buf, 0xCu);
      }

      v2826 = 0;
      v2828 = 0;
      v2815 = 0.0;
      v939 = 0.0;
LABEL_301:

      v1099 = objc_msgSend_completedUnitCount(v2835, v1094, v1095, v1096, v1097, v1098);
      objc_msgSend_setCompletedUnitCount_(v2835, v1100, v1099 + 35, v1101, v1102, v1103);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1104 = qword_1EA84DC88;
      v2874 = os_signpost_id_generate(v1104);

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1105 = qword_1EA84DC88;
      v1106 = v1105;
      if (v2874 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1105))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v1106, OS_SIGNPOST_INTERVAL_BEGIN, v2874, "CHSessionTaskRecognition", "", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1107 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v1107, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v1107, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskRecognition", buf, 2u);
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v1108, v1109, v1110, v1111, v1112);
      v1114 = v1113;
      if ((objc_msgSend_cancelled(v2908, v1115, v1116, v1117, v1118, v1119) & 1) != 0 || !v2837)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v1137 = qword_1EA84DC60;
        if (os_log_type_enabled(v1137, OS_LOG_TYPE_DEFAULT))
        {
          v1143 = objc_msgSend_cancelled(v2908, v1138, v1139, v1140, v1141, v1142);
          *buf = 67109376;
          *&buf[4] = v1143;
          *&buf[8] = 1024;
          *&buf[10] = v2837 != 0;
          _os_log_impl(&dword_18366B000, v1137, OS_LOG_TYPE_DEFAULT, "No Candidate AutoRefine group: task cancelled ? %d, has stroke group result ? %d", buf, 0xEu);
        }

        v2860 = 0;
        v2844 = 0;
        v2845 = 0;
        v2833 = 0;
        v1149 = 0;
      }

      else
      {
        v2838 = v2837;
        v1130 = objc_msgSend_createdStrokeGroups(v2838, v1120, v1121, v1122, v1123, v1124);
        if (v1130)
        {
          v1131 = objc_msgSend_createdStrokeGroups(v2838, v1125, v1126, v1127, v1128, v1129);
          v2833 = objc_msgSend_mutableCopy(v1131, v1132, v1133, v1134, v1135, v1136);
        }

        else
        {
          v2833 = objc_msgSend_set(MEMORY[0x1E695DFA8], v1125, v1126, v1127, v1128, v1129);
        }

        v1160 = objc_msgSend_forceRecognitionStrokeGroupIdentifiers(v2908, v1150, v1151, v1152, v1153, v1154);
        if (v1160)
        {
          v1161 = objc_msgSend_strokeGroups(v2838, v1155, v1156, v1157, v1158, v1159);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1838569B4;
          *&buf[24] = &unk_1E6DDD240;
          *&buf[32] = v1160;
          v1166 = objc_msgSend_objectsPassingTest_(v1161, v1162, buf, v1163, v1164, v1165);

          objc_msgSend_unionSet_(v2833, v1167, v1166, v1168, v1169, v1170);
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v1171 = qword_1EA84DC60;
        if (os_log_type_enabled(v1171, OS_LOG_TYPE_DEFAULT))
        {
          v1177 = objc_msgSend_count(v2833, v1172, v1173, v1174, v1175, v1176);
          v1183 = objc_msgSend_strokeGroups(v2838, v1178, v1179, v1180, v1181, v1182);
          v1189 = objc_msgSend_count(v1183, v1184, v1185, v1186, v1187, v1188);
          v1195 = objc_msgSend_createdStrokeGroups(v2838, v1190, v1191, v1192, v1193, v1194);
          v1201 = objc_msgSend_count(v1195, v1196, v1197, v1198, v1199, v1200);
          *buf = 134218496;
          *&buf[4] = v1177;
          *&buf[12] = 2048;
          *&buf[14] = v1189;
          *&buf[22] = 2048;
          *&buf[24] = v1201;
          _os_log_impl(&dword_18366B000, v1171, OS_LOG_TYPE_DEFAULT, "Started Recognition pass for %ld groups to process among %ld total groups, %ld created groups.", buf, 0x20u);
        }

        v2913 = 0;
        v1203 = objc_msgSend_recognitionResultsForGroupingResult_groupingManager_strokeGroupsToProcess_strokeClassificationResult_shouldUpdateRecognitionResultsPerLocale_strokeGroupReplacements_(v2908, v1202, v2838, v2831, v2833, v2847, v2876, &v2913);
        v2844 = v2913;
        v1207 = objc_msgSend_textCorrectionResultsForGroupingResult_groupingManager_(v2908, v1204, v2838, v2831, v1205, v1206);
        v2866 = objc_msgSend_groupingResultUpdatedWithGroupReplacements_(v2838, v1208, v2844, v1209, v1210, v1211);
        loga = v1207;
        v2851 = v1203;

        if (v749)
        {
          obja = v2834;
          v1212 = v2833;
          v2844 = v2844;
          v1213 = MEMORY[0x1E695DF70];
          v2833 = v1212;
          v1219 = objc_msgSend_count(v1212, v1214, v1215, v1216, v1217, v1218);
          v2895 = objc_msgSend_arrayWithCapacity_(v1213, v1220, v1219, v1221, v1222, v1223);
          if (objc_msgSend_count(v1212, v1224, v1225, v1226, v1227, v1228))
          {
            v1234 = MEMORY[0x1E695DFA8];
            v1235 = objc_msgSend_count(obja, v1229, v1230, v1231, v1232, v1233);
            v1240 = objc_msgSend_setWithCapacity_(v1234, v1236, v1235, v1237, v1238, v1239);
            v2990 = 0u;
            v2989 = 0u;
            v2988 = 0u;
            *v2987 = 0u;
            v1241 = obja;
            v1249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1241, v1242, v2987, buf, 16, v1243);
            if (v1249)
            {
              v1250 = *v2988;
              do
              {
                for (n = 0; n != v1249; ++n)
                {
                  if (*v2988 != v1250)
                  {
                    objc_enumerationMutation(v1241);
                  }

                  v1252 = objc_msgSend_encodedStrokeIdentifier(*(*&v2987[8] + 8 * n), v1244, v1245, v1246, v1247, v1248);
                  objc_msgSend_addObject_(v1240, v1253, v1252, v1254, v1255, v1256);
                }

                v1249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1241, v1244, v2987, buf, 16, v1248);
              }

              while (v1249);
            }

            v2961 = 0u;
            v2960 = 0u;
            v2959 = 0u;
            v2958 = 0u;
            v1257 = v2833;
            v1265 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1257, v1258, &v2958, &v2983, 16, v1259);
            if (v1265)
            {
              v1266 = *v2959;
              do
              {
                for (ii = 0; ii != v1265; ++ii)
                {
                  if (*v2959 != v1266)
                  {
                    objc_enumerationMutation(v1257);
                  }

                  v1268 = *(*(&v2958 + 1) + 8 * ii);
                  v1269 = objc_msgSend_strokeIdentifiers(v1268, v1260, v1261, v1262, v1263, v1264);
                  v1274 = objc_msgSend_intersectsSet_(v1269, v1270, v1240, v1271, v1272, v1273);

                  if (v1274)
                  {
                    objc_msgSend_addObject_(v2895, v1260, v1268, v1262, v1263, v1264);
                  }
                }

                v1265 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1257, v1260, &v2958, &v2983, 16, v1264);
              }

              while (v1265);
            }

            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v1275 = qword_1EA84DC60;
            if (os_log_type_enabled(v1275, OS_LOG_TYPE_DEFAULT))
            {
              v1281 = objc_msgSend_count(v1240, v1276, v1277, v1278, v1279, v1280);
              v1287 = objc_msgSend_count(v1257, v1282, v1283, v1284, v1285, v1286);
              v1293 = objc_msgSend_count(v2895, v1288, v1289, v1290, v1291, v1292);
              *v2982 = 134218496;
              *&v2982[4] = v1281;
              *&v2982[12] = 2048;
              *&v2982[14] = v1287;
              *&v2982[22] = 2048;
              *&v2982[24] = v1293;
              _os_log_impl(&dword_18366B000, v1275, OS_LOG_TYPE_DEFAULT, "Candidate AutoRefine group: added strokes = %ld, number of modified groups = %ld, groups with newly added strokes = %ld", v2982, 0x20u);
            }
          }

          else
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v1240 = qword_1EA84DC60;
            if (os_log_type_enabled(v1240, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v1240, OS_LOG_TYPE_DEFAULT, "No Candidate AutoRefine group: number of groups to process is 0.", buf, 2u);
            }
          }

          if (objc_msgSend_count(v2895, v1294, v1295, v1296, v1297, v1298))
          {
            v1304 = MEMORY[0x1E695DF70];
            v1305 = objc_msgSend_count(v2895, v1299, v1300, v1301, v1302, v1303);
            v2886 = objc_msgSend_arrayWithCapacity_(v1304, v1306, v1305, v1307, v1308, v1309);
            v2957 = 0u;
            v2956 = 0u;
            v2955 = 0u;
            v2954 = 0u;
            spidc = v2895;
            v1312 = objc_msgSend_countByEnumeratingWithState_objects_count_(spidc, v1310, &v2954, v2982, 16, v1311);
            if (v1312)
            {
              v1313 = *v2955;
              do
              {
                for (jj = 0; jj != v1312; ++jj)
                {
                  if (*v2955 != v1313)
                  {
                    objc_enumerationMutation(spidc);
                  }

                  v1315 = *(*(&v2954 + 1) + 8 * jj);
                  v1316 = objc_opt_class();
                  v1322 = objc_msgSend_classification(v1315, v1317, v1318, v1319, v1320, v1321);
                  isStrokeClassificationTextOrMath = objc_msgSend_isStrokeClassificationTextOrMath_(v1316, v1323, v1322, v1324, v1325, v1326);
                  v1333 = objc_msgSend_strokeIdentifiers(v1315, v1328, v1329, v1330, v1331, v1332);
                  v1339 = objc_msgSend_allObjects(v1333, v1334, v1335, v1336, v1337, v1338);
                  v1345 = objc_msgSend_strokeProvider(v2908, v1340, v1341, v1342, v1343, v1344);
                  v1349 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v1346, v1339, v1345, v1347, v1348);

                  v2953 = 0u;
                  v2952 = 0u;
                  v2951 = 0u;
                  v2950 = 0u;
                  v1350 = v1349;
                  v1358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1350, v1351, &v2950, v2979, 16, v1352);
                  if (v1358)
                  {
                    v1359 = *v2951;
LABEL_364:
                    v1360 = 0;
                    while (1)
                    {
                      if (*v2951 != v1359)
                      {
                        objc_enumerationMutation(v1350);
                      }

                      if ((objc_msgSend_strokeAttributes(*(*(&v2950 + 1) + 8 * v1360), v1353, v1354, v1355, v1356, v1357) & 4) == 0)
                      {
                        break;
                      }

                      if (v1358 == ++v1360)
                      {
                        v1358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1350, v1353, &v2950, v2979, 16, v1357);
                        if (v1358)
                        {
                          goto LABEL_364;
                        }

                        goto LABEL_370;
                      }
                    }

                    if (isStrokeClassificationTextOrMath)
                    {
                      v1380 = MEMORY[0x1E696AD98];
                      v1381 = objc_msgSend_uniqueIdentifier(v1315, v1375, v1376, v1377, v1378, v1379);
                      v1386 = objc_msgSend_numberWithInteger_(v1380, v1382, v1381, v1383, v1384, v1385);
                      v1362 = objc_msgSend_objectForKeyedSubscript_(v2844, v1387, v1386, v1388, v1389, v1390);

                      if (v1362)
                      {
                        objc_msgSend_addObject_(v2886, v1391, v1362, v1392, v1393, v1394);
                        if (qword_1EA84DC48 != -1)
                        {
                          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                        }

                        v1395 = qword_1EA84DC60;
                        if (os_log_type_enabled(v1395, OS_LOG_TYPE_DEFAULT))
                        {
                          v1401 = objc_msgSend_strokeIdentifiers(v1362, v1396, v1397, v1398, v1399, v1400);
                          v1407 = objc_msgSend_count(v1401, v1402, v1403, v1404, v1405, v1406);
                          *v2968 = 134217984;
                          v2969 = v1407;
                          _os_log_impl(&dword_18366B000, v1395, OS_LOG_TYPE_DEFAULT, "Candidate AutoRefine replacement group with %ld strokes.", v2968, 0xCu);
                        }
                      }

                      else
                      {
                        objc_msgSend_addObject_(v2886, v1391, v1315, v1392, v1393, v1394);
                        v1362 = 0;
                      }

                      goto LABEL_383;
                    }

                    v1361 = 1;
                    if (qword_1EA84DC48 == -1)
                    {
                      goto LABEL_371;
                    }
                  }

                  else
                  {
LABEL_370:

                    v1361 = 0;
                    if (qword_1EA84DC48 == -1)
                    {
                      goto LABEL_371;
                    }
                  }

                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
LABEL_371:
                  v1362 = qword_1EA84DC60;
                  if (os_log_type_enabled(v1362, OS_LOG_TYPE_DEFAULT))
                  {
                    v1368 = objc_msgSend_strokeIdentifiers(v1315, v1363, v1364, v1365, v1366, v1367);
                    v1374 = objc_msgSend_count(v1368, v1369, v1370, v1371, v1372, v1373);
                    *v2968 = 134218496;
                    v2969 = v1374;
                    v2970 = 1024;
                    *v2971 = isStrokeClassificationTextOrMath;
                    *&v2971[4] = 1024;
                    *&v2971[6] = v1361;
                    _os_log_impl(&dword_18366B000, v1362, OS_LOG_TYPE_DEFAULT, "Candidate AutoRefine group skipped: group with %ld strokes: isTextOrMath ? %d, hasNonSyntheticStrokes ? %d", v2968, 0x18u);
                  }

LABEL_383:
                }

                v1312 = objc_msgSend_countByEnumeratingWithState_objects_count_(spidc, v1408, &v2954, v2982, 16, v1409);
              }

              while (v1312);
            }

            if (objc_msgSend_count(v2886, v1410, v1411, v1412, v1413, v1414))
            {
              v1415 = v2886;
              v2860 = v1415;
            }

            else
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v1425 = qword_1EA84DC60;
              if (os_log_type_enabled(v1425, OS_LOG_TYPE_DEFAULT))
              {
                *v2968 = 0;
                _os_log_impl(&dword_18366B000, v1425, OS_LOG_TYPE_DEFAULT, "No Candidate AutoRefine group.", v2968, 2u);
              }

              v2860 = 0;
              v1415 = v2886;
            }
          }

          else
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v1415 = qword_1EA84DC60;
            if (os_log_type_enabled(v1415, OS_LOG_TYPE_DEFAULT))
            {
              *v2982 = 0;
              _os_log_impl(&dword_18366B000, v1415, OS_LOG_TYPE_DEFAULT, "No Candidate AutoRefine group.", v2982, 2u);
            }

            v2860 = 0;
          }
        }

        else
        {
          v2860 = 0;
        }

        v1149 = loga;
        v2845 = v2851;
        v2837 = v2866;
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v1144, v1145, v1146, v1147, v1148);
      v2819 = v1149;
      if (qword_1EA84DC48 != -1)
      {
        v2812 = v1426;
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v1426 = v2812;
      }

      v1427 = v1426 - v1114;
      v1428 = qword_1EA84DC60;
      if (os_log_type_enabled(v1428, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v1427;
        _os_log_impl(&dword_18366B000, v1428, OS_LOG_TYPE_DEFAULT, "Ran stroke group recognition in duration = %3.6f seconds", buf, 0xCu);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1429 = qword_1EA84DC88;
      v1430 = v1429;
      if (v2874 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1429))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v1430, OS_SIGNPOST_INTERVAL_END, v2874, "CHSessionTaskRecognition", "", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1431 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v1431, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v1431, OS_LOG_TYPE_DEFAULT, "END CHSessionTaskRecognition", buf, 2u);
      }

      v1437 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v1432, v1433, v1434, v1435, v1436);
      objc_msgSend_floatForKey_(v1437, v1438, @"CHRecognitionTaskOverhead", v1439, v1440, v1441);
      v1443 = v1442;

      if (v1443 > 0.0)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v1444 = qword_1EA84DC60;
        v1445 = v1443;
        if (os_log_type_enabled(v1444, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v1445;
          _os_log_impl(&dword_18366B000, v1444, OS_LOG_TYPE_DEFAULT, "Recognition task almost finished, waiting for explicit overhead of %0.1fs.", buf, 0xCu);
        }

        objc_msgSend_sleepForTimeInterval_(MEMORY[0x1E696AF00], v1446, v1447, v1448, v1449, v1450, v1445);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1451 = qword_1EA84DC88;
      v1452 = os_signpost_id_generate(v1451);

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1453 = qword_1EA84DC88;
      v1454 = v1453;
      if (v1452 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1453))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v1454, OS_SIGNPOST_INTERVAL_BEGIN, v1452, "CHSessionTaskGroupingPostProcessing", "", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1455 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v1455, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v1455, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskGroupingPostProcessing", buf, 2u);
      }

      v2824 = objc_msgSend_newGroupingPostProcessingManagerWithGroupingManager_(v2908, v1456, v2831, v1457, v1458, v1459);
      if ((objc_msgSend_cancelled(v2908, v1460, v1461, v1462, v1463, v1464) & 1) == 0 && v2824 && v2837 && v2845)
      {
        v1465 = [CHGroupingAndRecognitionResults alloc];
        v1471 = objc_msgSend_strokeGroupingResult(*(v2908 + 512), v1466, v1467, v1468, v1469, v1470);
        v1477 = objc_msgSend_recognitionResultsByGroupID(*(v2908 + 512), v1472, v1473, v1474, v1475, v1476);
        v1478 = MEMORY[0x1E695DFD8];
        v1484 = objc_msgSend_allKeys(v2844, v1479, v1480, v1481, v1482, v1483);
        v1489 = objc_msgSend_setWithArray_(v1478, v1485, v1484, v1486, v1487, v1488);
        v1491 = objc_msgSend_initWithGroupingResult_recognitionResultsByGroupID_strokeClassificationResult_previousProcessedStrokeGroupingResult_previousProcessedRecognizedResultsByGroupID_strokeGroupReplacements_cachedRecognitionResultsFromPostProcessing_(v1465, v1490, v2837, v2845, v2847, v1471, v1477, v1489, *(v2908 + 496));

        v1497 = objc_msgSend_recognitionOptions(v2908, v1492, v1493, v1494, v1495, v1496);
        v1503 = objc_msgSend_mutableCopy(v1497, v1498, v1499, v1500, v1501, v1502);

        v1508 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v1504, v2876, v1505, v1506, v1507);
        objc_msgSend_setObject_forKeyedSubscript_(v1503, v1509, v1508, CHGroupingPostProcessingManagerOptionIgnorePreviousRecognitionResults, v1510, v1511);

        v1517 = objc_msgSend_recognitionLocales(v2908, v1512, v1513, v1514, v1515, v1516);
        objc_msgSend_setObject_forKeyedSubscript_(v1503, v1518, v1517, qword_1EA84BB50, v1519, v1520);

        v1524 = objc_msgSend_process_options_(v2824, v1521, v1491, v1503, v1522, v1523);

        v1530 = objc_msgSend_strokeGroupingResult(v1524, v1525, v1526, v1527, v1528, v1529);
        v1536 = objc_msgSend_recognitionResultsByGroupID(v1524, v1531, v1532, v1533, v1534, v1535);
        v2820 = objc_msgSend_refreshedCachedResultsFromPostProcessing(v1524, v1537, v1538, v1539, v1540, v1541);
        v2825 = v1530;

        v1542 = v1536;
      }

      else
      {
        v2825 = v2837;
        v1542 = v2845;
        v2820 = 0;
      }

      if (qword_1EA84DC48 != -1)
      {
        v2813 = v1542;
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v1542 = v2813;
      }

      v2875 = v1542;
      v1543 = qword_1EA84DC88;
      v1544 = v1543;
      if (v1452 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1543))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v1544, OS_SIGNPOST_INTERVAL_END, v1452, "CHSessionTaskGroupingPostProcessing", "", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1545 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v1545, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v1545, OS_LOG_TYPE_DEFAULT, "END CHSessionTaskGroupingPostProcessing", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1546 = qword_1EA84DC88;
      spidd = os_signpost_id_generate(v1546);

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1547 = qword_1EA84DC88;
      v1548 = v1547;
      v1549 = spidd - 1;
      if (spidd - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1547))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v1548, OS_SIGNPOST_INTERVAL_BEGIN, spidd, "CHSessionTaskPrincipalLines", "", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1550 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v1550, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v1550, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskPrincipalLines", buf, 2u);
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v1551, v1552, v1553, v1554, v1555);
      v1557 = v1556;
      if ((objc_msgSend_cancelled(v2908, v1558, v1559, v1560, v1561, v1562) & 1) == 0 && objc_msgSend_principalLineRequirement(v2908, v1563, v1564, v1565, v1566, v1567) == 2)
      {
        v1568 = objc_msgSend_mutableCopy(v2875, v1563, v1564, v1565, v1566, v1567);
        v2911 = 0u;
        v2912 = 0u;
        v2909 = 0u;
        v2910 = 0u;
        v1574 = objc_msgSend_strokeGroups(v2825, v1569, v1570, v1571, v1572, v1573);
        v1582 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1574, v1575, &v2909, v2962, 16, v1576);
        if (v1582)
        {
          v1583 = *v2910;
          do
          {
            for (kk = 0; kk != v1582; ++kk)
            {
              if (*v2910 != v1583)
              {
                objc_enumerationMutation(v1574);
              }

              v1585 = *(*(&v2909 + 1) + 8 * kk);
              if (objc_msgSend_classification(v1585, v1577, v1578, v1579, v1580, v1581) == 1 || objc_msgSend_classification(v1585, v1577, v1578, v1579, v1580, v1581) == 2)
              {
                v1586 = MEMORY[0x1E696AD98];
                v1587 = objc_msgSend_uniqueIdentifier(v1585, v1577, v1578, v1579, v1580, v1581);
                v1592 = objc_msgSend_numberWithInteger_(v1586, v1588, v1587, v1589, v1590, v1591);
                v1597 = objc_msgSend_objectForKeyedSubscript_(v2875, v1593, v1592, v1594, v1595, v1596);

                v1598 = sub_183855780(v2908, v1585, v1597);
                v1599 = MEMORY[0x1E696AD98];
                v1605 = objc_msgSend_uniqueIdentifier(v1585, v1600, v1601, v1602, v1603, v1604);
                v1610 = objc_msgSend_numberWithInteger_(v1599, v1606, v1605, v1607, v1608, v1609);
                objc_msgSend_setObject_forKeyedSubscript_(v1568, v1611, v1598, v1610, v1612, v1613);
              }
            }

            v1582 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1574, v1577, &v2909, v2962, 16, v1581);
          }

          while (v1582);
        }

        v1614 = v1568;
        v2875 = v1614;
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v1563, v1564, v1565, v1566, v1567);
      v1616 = v1615;
      if (qword_1EA84DC48 == -1)
      {
        v1617 = qword_1EA84DC88;
        if (v1549 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_471;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v1617 = qword_1EA84DC88;
        if (v1549 <= 0xFFFFFFFFFFFFFFFDLL)
        {
LABEL_471:
          if (os_signpost_enabled(v1617))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_18366B000, v1617, OS_SIGNPOST_INTERVAL_END, spidd, "CHSessionTaskPrincipalLines", "", buf, 2u);
          }
        }
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v1618 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v1618, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v1618, OS_LOG_TYPE_DEFAULT, "END CHSessionTaskPrincipalLines", buf, 2u);
      }

      if (objc_msgSend_count(v2860, v1619, v1620, v1621, v1622, v1623) < 6)
      {
        v1636 = v2860;
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v1629 = qword_1EA84DC60;
        if (os_log_type_enabled(v1629, OS_LOG_TYPE_DEFAULT))
        {
          v1635 = objc_msgSend_count(v2860, v1630, v1631, v1632, v1633, v1634);
          *buf = 134217984;
          *&buf[4] = v1635;
          _os_log_impl(&dword_18366B000, v1629, OS_LOG_TYPE_DEFAULT, "AutoRefine groups rejected, document update yielded too many potential groups (%ld candidates)", buf, 0xCu);
        }

        v1636 = 0;
      }

      v1637 = MEMORY[0x1E695DF70];
      v2861 = v1636;
      v1638 = objc_msgSend_count(v1636, v1624, v1625, v1626, v1627, v1628);
      v2836 = objc_msgSend_arrayWithCapacity_(v1637, v1639, v1638, v1640, v1641, v1642);
      v2867 = 0;
      v1648 = 0;
      v1649 = v1616 - v1557;
      while (v1648 < objc_msgSend_count(v2861, v1643, v1644, v1645, v1646, v1647))
      {
        v2887 = objc_msgSend_objectAtIndexedSubscript_(v2861, v1650, v1648, v1652, v1653, v1654);
        objc_msgSend_autoRefineTriggerFactor(CHRecognitionSession, v1655, v1656, v1657, v1658, v1659);
        v1661 = v1660;
        v1662 = MEMORY[0x1E696AD98];
        v1668 = objc_msgSend_uniqueIdentifier(v2887, v1663, v1664, v1665, v1666, v1667);
        v1673 = objc_msgSend_numberWithInteger_(v1662, v1669, v1668, v1670, v1671, v1672);
        v2878 = v1648;
        v2896 = objc_msgSend_objectForKeyedSubscript_(v2845, v1674, v1673, v1675, v1676, v1677);

        v2891 = objc_msgSend_preferredLocale(v2896, v1678, v1679, v1680, v1681, v1682);
        if (CHHasPersonalizedSynthesisSupport())
        {
          v1683 = sub_18394AE24(v2891);
        }

        else
        {
          v1683 = 0;
        }

        v1689 = objc_msgSend_strokeIdentifiers(v2887, v1684, v1685, v1686, v1687, v1688);
        v1695 = objc_msgSend_allObjects(v1689, v1690, v1691, v1692, v1693, v1694);
        v1696 = v1661 * 0.5;
        v1697 = v1696;
        isHighConfidenceForStrokesIdentifiers_scripts_confidenceThreshold = objc_msgSend_isHighConfidenceForStrokesIdentifiers_scripts_confidenceThreshold_(v2847, v1698, v1695, &unk_1EF1EC640, v1699, v1700, v1696);

        v1707 = objc_msgSend_recognitionResultsByLocale(v2896, v1702, v1703, v1704, v1705, v1706);
        spide = objc_msgSend_objectForKeyedSubscript_(v1707, v1708, v2891, v1709, v1710, v1711);

        v1717 = objc_msgSend_refinableTranscription(spide, v1712, v1713, v1714, v1715, v1716);
        v1723 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v1718, v1719, v1720, v1721, v1722);
        v1728 = objc_msgSend_componentsSeparatedByCharactersInSet_(v1717, v1724, v1723, v1725, v1726, v1727);
        v2881 = objc_msgSend_componentsJoinedByString_(v1728, v1729, &stru_1EF1C0318, v1730, v1731, v1732);

        v1738 = objc_msgSend_length(v2881, v1733, v1734, v1735, v1736, v1737);
        if (objc_msgSend_isCandidateMathGroup(v2896, v1739, v1740, v1741, v1742, v1743) & 1 | ((v1683 & 1) == 0) || ((isHighConfidenceForStrokesIdentifiers_scripts_confidenceThreshold ^ 1) & 1) != 0 || !v1738)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v1995 = qword_1EA84DC60;
          if (os_log_type_enabled(v1995, OS_LOG_TYPE_DEFAULT))
          {
            isCandidateMathGroup = objc_msgSend_isCandidateMathGroup(v2896, v1996, v1997, v1998, v1999, v2000);
            v2002 = v1738 == 0;
            v2008 = objc_msgSend_recognitionResultsByLocale(v2896, v2003, v2004, v2005, v2006, v2007);
            v2014 = objc_msgSend_preferredLocale(v2896, v2009, v2010, v2011, v2012, v2013);
            v2019 = objc_msgSend_objectForKeyedSubscript_(v2008, v2015, v2014, v2016, v2017, v2018);
            v2025 = objc_msgSend_rawTranscription(v2019, v2020, v2021, v2022, v2023, v2024);
            *buf = 134219523;
            *&buf[4] = v2878;
            *&buf[12] = 1024;
            *&buf[14] = isCandidateMathGroup;
            *&buf[18] = 1024;
            *&buf[20] = v1683;
            *&buf[24] = 1024;
            *&buf[26] = isHighConfidenceForStrokesIdentifiers_scripts_confidenceThreshold;
            *&buf[30] = 2048;
            *&buf[32] = v1697;
            *&buf[40] = 1024;
            *&buf[42] = v2002;
            *&buf[46] = 2117;
            *&buf[48] = v2025;
            _os_log_impl(&dword_18366B000, v1995, OS_LOG_TYPE_DEFAULT, "AutoRefine group [%ld] rejected: math candidate ? %d, isSupportedScriptPreferred ? %d, isHighConfidenceText ? %d (threshold = %.2f), isTextTooShort ? %d, text = %{sensitive}@", buf, 0x38u);
          }

          v2031 = objc_msgSend_recognitionResultsByLocale(v2896, v2026, v2027, v2028, v2029, v2030);
          v2037 = objc_msgSend_preferredLocale(v2896, v2032, v2033, v2034, v2035, v2036);
          v2042 = objc_msgSend_objectForKeyedSubscript_(v2031, v2038, v2037, v2039, v2040, v2041);
          v2048 = objc_msgSend_rawTranscription(v2042, v2043, v2044, v2045, v2046, v2047);
          v2049 = v2048 == 0;

          if (!v2049)
          {
            v2870 = v2867;
            goto LABEL_529;
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          logb = qword_1EA84DC60;
          if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
          {
            v2055 = objc_msgSend_preferredLocale(v2896, v2050, v2051, v2052, v2053, v2054);
            v2061 = objc_msgSend_description(v2055, v2056, v2057, v2058, v2059, v2060);
            *buf = 134218242;
            *&buf[4] = v2878;
            *&buf[12] = 2112;
            *&buf[14] = v2061;
            _os_log_impl(&dword_18366B000, logb, OS_LOG_TYPE_DEFAULT, "AutoRefine group [%ld] rejected: text is nil, preferred locale = %@", buf, 0x16u);
          }

          v2870 = v2867;
        }

        else
        {
          objc_msgSend_setLocale_(spide, v1744, v2891, v1745, v1746, v1747);
          v1748 = spide;
          v1749 = v2896;
          v1750 = v2887;
          v1756 = objc_msgSend_inputStrokeIdentifiers(v1749, v1751, v1752, v1753, v1754, v1755);
          v1757 = sub_183860680(v2908, v1748, v1756);

          LOBYTE(v1756) = objc_msgSend_count(v1757, v1758, v1759, v1760, v1761, v1762) == 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1838609F4;
          *&buf[24] = &unk_1E6DDEFF8;
          v1763 = v1748;
          *&buf[32] = v1763;
          *&buf[40] = v2908;
          v2852 = v1750;
          *&buf[48] = v2852;
          buf[56] = v1756;
          v1764 = MEMORY[0x1865E6810](buf);
          *v2982 = 0;
          *&v2982[8] = v2982;
          *&v2982[16] = 0x2020000000uLL;
          v1765 = objc_alloc_init(CHMutableTokenizedTextResult);
          v1771 = objc_msgSend_tokenColumnCount(v1763, v1766, v1767, v1768, v1769, v1770);
          *&v2983 = MEMORY[0x1E69E9820];
          *(&v2983 + 1) = 3221225472;
          *&v2984 = sub_1838616E4;
          *(&v2984 + 1) = &unk_1E6DDF020;
          *&v2986 = v2982;
          v1772 = v1764;
          *(&v2985 + 1) = v1772;
          v1773 = v1765;
          *&v2985 = v1773;
          objc_msgSend_enumerateRangesUsingBlock_(v1757, v1774, &v2983, v1775, v1776, v1777);
          if (v1771 > *(*&v2982[8] + 24))
          {
            v1772[2](v1772);
          }

          v1778 = v1757;
          v1784 = objc_msgSend_tokenColumnCount(v1773, v1779, v1780, v1781, v1782, v1783);
          if (v1784 != objc_msgSend_tokenColumnCount(v1763, v1785, v1786, v1787, v1788, v1789))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v1795 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v1795, OS_LOG_TYPE_ERROR))
            {
              v1801 = objc_msgSend_tokenColumnCount(v1763, v1796, v1797, v1798, v1799, v1800);
              v1807 = objc_msgSend_tokenColumnCount(v1773, v1802, v1803, v1804, v1805, v1806);
              *v2979 = 134218498;
              *&v2979[4] = v1801;
              *&v2979[12] = 2048;
              *&v2979[14] = v1807;
              *&v2979[22] = 2112;
              *&v2979[24] = v1757;
              _os_log_impl(&dword_18366B000, v1795, OS_LOG_TYPE_ERROR, "Unexpected mismatch after recomposing a text result: expected %ld columns, got %ld. Synthetic tokens at indexes: %@", v2979, 0x20u);
            }
          }

          v1808 = objc_msgSend_tokenColumnCount(v1773, v1790, v1791, v1792, v1793, v1794);
          if (v1808 != objc_msgSend_tokenColumnCount(v1763, v1809, v1810, v1811, v1812, v1813))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v1819 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v1819, OS_LOG_TYPE_FAULT))
            {
              v1825 = objc_msgSend_tokenColumnCount(v1763, v1820, v1821, v1822, v1823, v1824);
              v1831 = objc_msgSend_tokenColumnCount(v1773, v1826, v1827, v1828, v1829, v1830);
              *v2979 = 134218498;
              *&v2979[4] = v1825;
              *&v2979[12] = 2048;
              *&v2979[14] = v1831;
              *&v2979[22] = 2112;
              *&v2979[24] = v1757;
              _os_log_impl(&dword_18366B000, v1819, OS_LOG_TYPE_FAULT, "Unexpected mismatch after recomposing a text result: expected %ld columns, got %ld. Synthetic tokens at indexes: %@", v2979, 0x20u);
            }
          }

          v1832 = objc_msgSend_transcriptionPaths(v1763, v1814, v1815, v1816, v1817, v1818);
          v1838 = objc_msgSend_transcriptionPathScores(v1763, v1833, v1834, v1835, v1836, v1837);
          objc_msgSend_setTranscriptionPaths_scores_(v1773, v1839, v1832, v1838, v1840, v1841);

          v1847 = objc_msgSend_inputStrokeIdentifiers(v1763, v1842, v1843, v1844, v1845, v1846);
          objc_msgSend_setInputStrokeIdentifiers_(v1773, v1848, v1847, v1849, v1850, v1851);

          v1857 = objc_msgSend_locale(v1763, v1852, v1853, v1854, v1855, v1856);
          objc_msgSend_setLocale_(v1773, v1858, v1857, v1859, v1860, v1861);

          v1867 = objc_msgSend_recognizerGenerationIdentifier(v1763, v1862, v1863, v1864, v1865, v1866);
          objc_msgSend_setRecognizerGenerationIdentifier_(v1773, v1868, v1867, v1869, v1870, v1871);
          v1877 = objc_msgSend_originalTokens(v1763, v1872, v1873, v1874, v1875, v1876);
          objc_msgSend_setOriginalTokens_(v1773, v1878, v1877, v1879, v1880, v1881);

          v1882 = v2985;
          spide = v1773;

          _Block_object_dispose(v2982, 8);
          logb = v1757;

          v1883 = [CHRecognitionSessionAutoRefineResult alloc];
          v2870 = objc_msgSend_initWithStrokeGroupResult_strokeGroup_textResult_refinedColumns_strokeProvider_(v1883, v1884, v1749, v2852, spide, logb, *(v2908 + 560));

          if (v2870)
          {
            objc_msgSend_addObject_(v2836, v1885, v2870, v1886, v1887, v1888);
            v2839 = objc_msgSend_mutableCopy(v2875, v1889, v1890, v1891, v1892, v1893);
            v1894 = v1749;
            v2842 = v2891;
            objb = spide;
            v1900 = objc_msgSend_recognitionResultsByLocale(v1894, v1895, v1896, v1897, v1898, v1899);
            v2868 = objc_msgSend_mutableCopy(v1900, v1901, v1902, v1903, v1904, v1905);

            objc_msgSend_setObject_forKeyedSubscript_(v2868, v1906, objb, v2842, v1907, v1908);
            v1914 = objc_msgSend_processing(v1894, v1909, v1910, v1911, v1912, v1913);
            v1915 = [CHStrokeGroupRecognitionResult alloc];
            v1921 = objc_msgSend_recognitionLocales(v2908, v1916, v1917, v1918, v1919, v1920);
            v1927 = objc_msgSend_errorsByLocale(v1894, v1922, v1923, v1924, v1925, v1926);
            v1933 = objc_msgSend_languageFitnessByLocale(v1894, v1928, v1929, v1930, v1931, v1932);
            v1939 = objc_msgSend_mathResult(v1894, v1934, v1935, v1936, v1937, v1938);
            v1945 = objc_msgSend_inputStrokeIdentifiers(v1894, v1940, v1941, v1942, v1943, v1944);
            v1951 = objc_msgSend_inputDrawing(v1894, v1946, v1947, v1948, v1949, v1950);
            v1957 = objc_msgSend_inputDrawingCutPoints(v1894, v1952, v1953, v1954, v1955, v1956);
            v1959 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v1915, v1958, v1921, v2868, v1927, v1933, v1939, v1945, v1914 | 2, v1951, v1957);

            v1960 = MEMORY[0x1E696AD98];
            v1966 = objc_msgSend_uniqueIdentifier(v2852, v1961, v1962, v1963, v1964, v1965);
            v1971 = objc_msgSend_numberWithInteger_(v1960, v1967, v1966, v1968, v1969, v1970);
            objc_msgSend_setObject_forKeyedSubscript_(v2839, v1972, v1959, v1971, v1973, v1974);

            v1975 = v2839;
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v1976 = qword_1EA84DC60;
            if (os_log_type_enabled(v1976, OS_LOG_TYPE_DEFAULT))
            {
              v1982 = objc_msgSend_strokeIndexes(objb, v1977, v1978, v1979, v1980, v1981);
              v1988 = objc_msgSend_count(v1982, v1983, v1984, v1985, v1986, v1987);
              v1994 = objc_msgSend_refinableTranscription(objb, v1989, v1990, v1991, v1992, v1993);
              *buf = 134218499;
              *&buf[4] = v2878;
              *&buf[12] = 2048;
              *&buf[14] = v1988;
              *&buf[22] = 2117;
              *&buf[24] = v1994;
              _os_log_impl(&dword_18366B000, v1976, OS_LOG_TYPE_DEFAULT, "AutoRefine group [%ld] stored as result with %ld strokes, text = %{sensitive}@", buf, 0x20u);
            }

            v2875 = v1975;
          }

          else
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v1975 = qword_1EA84DC60;
            if (os_log_type_enabled(v1975, OS_LOG_TYPE_DEFAULT))
            {
              v2067 = objc_msgSend_strokeIndexes(spide, v2062, v2063, v2064, v2065, v2066);
              v2073 = objc_msgSend_count(v2067, v2068, v2069, v2070, v2071, v2072);
              v2079 = objc_msgSend_refinableTranscription(spide, v2074, v2075, v2076, v2077, v2078);
              *buf = 134218499;
              *&buf[4] = v2878;
              *&buf[12] = 2048;
              *&buf[14] = v2073;
              *&buf[22] = 2117;
              *&buf[24] = v2079;
              _os_log_impl(&dword_18366B000, v1975, OS_LOG_TYPE_DEFAULT, "AutoRefine group [%ld] rejected, unable to build result with %ld strokes, text = %{sensitive}@", buf, 0x20u);
            }
          }
        }

LABEL_529:
        v1648 = v2878 + 1;
        v2867 = v2870;
      }

      if (objc_msgSend_count(v2836, v1650, v1651, v1652, v1653, v1654))
      {
        v2080 = v2836;
      }

      else
      {
        v2080 = 0;
      }

      v2840 = v2080;
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v2081 = qword_1EA84DC60;
      if (os_log_type_enabled(v2081, OS_LOG_TYPE_DEFAULT))
      {
        v2087 = objc_msgSend_count(v2840, v2082, v2083, v2084, v2085, v2086);
        *buf = 134217984;
        *&buf[4] = v2087;
        _os_log_impl(&dword_18366B000, v2081, OS_LOG_TYPE_DEFAULT, "AutoRefine groups kept in session result: %ld", buf, 0xCu);
      }

      v2093 = objc_msgSend_cancelled(v2908, v2088, v2089, v2090, v2091, v2092);
      v2099 = v2837;
      v2100 = v2875;
      if ((v2093 & 1) == 0 && *(v2908 + 510) == 1)
      {
        v2853 = CHHasHandwritingGenerationAllowed(v2093, v2094, v2095, v2096, v2097, v2098);
        v2106 = objc_msgSend_createdStrokeGroups(v2825, v2101, v2102, v2103, v2104, v2105);
        spidf = v2875;
        v2897 = v2847;
        v2871 = v2106;
        logc = v2884;
        if (CHHasPersonalizedSynthesisSupport())
        {
          v2112 = objc_msgSend_delegate(v2908, v2107, v2108, v2109, v2110, v2111);
          v2118 = objc_msgSend_textSynthesizer(v2112, v2113, v2114, v2115, v2116, v2117);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v2125 = objc_msgSend_delegate(v2908, v2120, v2121, v2122, v2123, v2124);
            v2888 = objc_msgSend_textSynthesizer(v2125, v2126, v2127, v2128, v2129, v2130);

            if (objc_msgSend_count(logc, v2131, v2132, v2133, v2134, v2135))
            {
              v2141 = MEMORY[0x1E695DFA8];
              v2142 = objc_msgSend_count(logc, v2136, v2137, v2138, v2139, v2140);
              v2147 = objc_msgSend_setWithCapacity_(v2141, v2143, v2142, v2144, v2145, v2146);
              *v2982 = MEMORY[0x1E69E9820];
              *&v2982[8] = 3221225472;
              *&v2982[16] = sub_18386260C;
              *&v2982[24] = &unk_1E6DDF070;
              v2148 = v2147;
              *&v2982[32] = v2148;
              objc_msgSend_enumerateObjectsUsingBlock_(logc, v2149, v2982, v2150, v2151, v2152);
              objc_msgSend_updateStyleInventoryWithRemovedStrokeIdentifiers_error_(v2888, v2153, v2148, 0, v2154, v2155);
            }

            if (v2853)
            {
              v2986 = 0u;
              v2985 = 0u;
              v2984 = 0u;
              v2983 = 0u;
              v2892 = v2871;
              v2163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2892, v2156, &v2983, buf, 16, v2157);
              if (v2163)
              {
                v2164 = *v2984;
                do
                {
                  v2165 = 0;
                  do
                  {
                    if (*v2984 != v2164)
                    {
                      objc_enumerationMutation(v2892);
                    }

                    v2166 = *(*(&v2983 + 1) + 8 * v2165);
                    v2167 = MEMORY[0x1E696AD98];
                    v2168 = objc_msgSend_uniqueIdentifier(v2166, v2158, v2159, v2160, v2161, v2162);
                    v2173 = objc_msgSend_numberWithInteger_(v2167, v2169, v2168, v2170, v2171, v2172);
                    v2178 = objc_msgSend_objectForKey_(spidf, v2174, v2173, v2175, v2176, v2177);

                    v2184 = objc_msgSend_delegate(v2908, v2179, v2180, v2181, v2182, v2183);
                    v2190 = objc_msgSend_textSynthesizer(v2184, v2185, v2186, v2187, v2188, v2189);
                    v2196 = objc_msgSend_strokeProvider(v2908, v2191, v2192, v2193, v2194, v2195);
                    isGroupAcceptableForInventory_textSynthesizer_strokeProvider_recognitionResult_strokeClassificationResult_allowSyntheticStrokes = objc_msgSend_isGroupAcceptableForInventory_textSynthesizer_strokeProvider_recognitionResult_strokeClassificationResult_allowSyntheticStrokes_(CHRecognitionSessionTask, v2197, v2166, v2190, v2196, v2178, v2897, 0);

                    if (isGroupAcceptableForInventory_textSynthesizer_strokeProvider_recognitionResult_strokeClassificationResult_allowSyntheticStrokes)
                    {
                      v2204 = objc_msgSend_preferredTokenizedResult(v2178, v2199, v2200, v2201, v2202, v2203);
                      if (v2204)
                      {
                        v2205 = [CHStrokeGroupingManager alloc];
                        v2211 = objc_msgSend_strokeProvider(v2908, v2206, v2207, v2208, v2209, v2210);
                        v2217 = objc_msgSend_recognitionResultsByLocale(v2178, v2212, v2213, v2214, v2215, v2216);
                        v2223 = objc_msgSend_allKeys(v2217, v2218, v2219, v2220, v2221, v2222);
                        isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v2205, v2224, v2211, v2223, 0, 0);

                        *&v2958 = 0;
                        v2228 = objc_msgSend_simpleDrawingForStrokeGroup_originalDrawing_orderedStrokesIDs_(isInlineContinuousMode_inlineContinuousModeTargets, v2226, v2166, 0, &v2958, v2227);
                        v2229 = v2958;
                        v2230 = MEMORY[0x1E695DF70];
                        v2236 = objc_msgSend_strokeCount(v2228, v2231, v2232, v2233, v2234, v2235);
                        v2241 = objc_msgSend_arrayWithCapacity_(v2230, v2237, v2236, v2238, v2239, v2240);
                        *v2979 = MEMORY[0x1E69E9820];
                        *&v2979[8] = 3221225472;
                        *&v2979[16] = sub_183862678;
                        *&v2979[24] = &unk_1E6DDF098;
                        v2242 = v2241;
                        *&v2980 = v2242;
                        objc_msgSend_enumerateObjectsUsingBlock_(v2229, v2243, v2979, v2244, v2245, v2246);
                        objc_msgSend_populateStyleInventoryWithTokenizedResult_drawing_strokeIdentifiers_error_(v2888, v2247, v2204, v2228, v2242, 0);
                      }

                      else
                      {
                        if (qword_1EA84DC48 != -1)
                        {
                          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                        }

                        isInlineContinuousMode_inlineContinuousModeTargets = qword_1EA84DC60;
                        if (os_log_type_enabled(isInlineContinuousMode_inlineContinuousModeTargets, OS_LOG_TYPE_ERROR))
                        {
                          *v2987 = 138412290;
                          *&v2987[4] = v2178;
                          _os_log_impl(&dword_18366B000, isInlineContinuousMode_inlineContinuousModeTargets, OS_LOG_TYPE_ERROR, "Inventory data ingestion: rejecting group with nil tokenizedResult: %@", v2987, 0xCu);
                        }
                      }
                    }

                    ++v2165;
                  }

                  while (v2163 != v2165);
                  v2163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2892, v2158, &v2983, buf, 16, v2162);
                }

                while (v2163);
              }
            }
          }
        }

        v2099 = v2837;
        v2100 = v2875;
        if (v2853)
        {
          v2248 = objc_msgSend_lastAutoRefineResult(*(v2908 + 512), v2094, v2095, v2096, v2097, v2098);
          v2254 = objc_msgSend_firstObject(v2836, v2249, v2250, v2251, v2252, v2253);
          v2260 = objc_msgSend_createdStrokeGroups(v2837, v2255, v2256, v2257, v2258, v2259);
          v2261 = sub_183855BF0(v2908, v2248, v2254, v2260, spidf);

          v2267 = objc_msgSend_lastAutoRefineResult(*(v2908 + 512), v2262, v2263, v2264, v2265, v2266);
          sub_1838560A8(v2908, v2261, v2267, v2897, logc);

          v2099 = v2837;
          v2100 = v2875;
        }
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v2094, v2095, v2096, v2097, v2098);
      v2269 = v2268;
      if (objc_msgSend_cancelled(v2908, v2270, v2271, v2272, v2273, v2274))
      {
        v2841 = 0;
      }

      else
      {
        if (!v2099)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v2280 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v2280, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v2280, OS_LOG_TYPE_ERROR, "strokeGroupingResult cannot be nil for a non-cancelled task.", buf, 2u);
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v2281 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v2281, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v2281, OS_LOG_TYPE_FAULT, "strokeGroupingResult cannot be nil for a non-cancelled task.", buf, 2u);
          }
        }

        if (v2840)
        {
          objc_msgSend_firstObject(v2840, v2275, v2276, v2277, v2278, v2279);
        }

        else
        {
          objc_msgSend_lastAutoRefineResult(*(v2908 + 512), v2275, v2276, v2277, v2278, v2279);
        }
        v2282 = ;

        v2283 = [CHRecognitionSessionResult alloc];
        v2289 = objc_msgSend_strokeProviderVersion(v2864, v2284, v2285, v2286, v2287, v2288);
        v2295 = objc_msgSend_sessionMode(*(v2908 + 512), v2290, v2291, v2292, v2293, v2294);
        v2301 = objc_msgSend_recognitionLocales(v2908, v2296, v2297, v2298, v2299, v2300);
        v2307 = objc_msgSend_preferredLocales(v2908, v2302, v2303, v2304, v2305, v2306);
        v2313 = objc_msgSend_calculateDocumentProvider(v2908, v2308, v2309, v2310, v2311, v2312);
        v2319 = objc_msgSend_declaredVariables(v2313, v2314, v2315, v2316, v2317, v2318);
        *buf = v2816;
        *&buf[8] = v939;
        *&buf[16] = v2815;
        *&buf[24] = v938;
        *&buf[32] = v1427;
        *&buf[40] = v1649;
        *&buf[48] = v2269 - v2821;
        v2325 = objc_msgSend_recognitionEnvironment(v2908, v2320, v2321, v2322, v2323, v2324);
        v2841 = objc_msgSend_initWithStrokeProviderVersion_encodedStrokeProviderVersion_orderedStrokeIdentifiers_sessionMode_locales_preferredLocales_declaredVariables_clutterFilter_strokeClassificationResult_strokeGroupingResult_unprocessedStrokeGroupingResult_tilingResult_documentLayoutAnalysisResult_recognitionResults_rawRecognitionResults_inlineContinuousModeResults_autoRefineResults_lastAutoRefineResult_generationDuration_recognitionEnvironment_(v2283, v2326, v2289, v2822, v2832, v2295, v2301, v2307, v2319, v2830, v2847, v2825, v2837, v2826, v2828, v2875, v2845, v2819, v2840, v2282, buf, v2325);

        objc_msgSend_setCachedRecognitionResultsFromPostProcessing_(v2841, v2327, v2820, v2328, v2329, v2330);
        v2099 = v2837;
        v2100 = v2875;
      }

      sub_18385648C(v2908, v2099, v2845, @"Raw");
      sub_18385648C(v2908, v2825, v2100, @"Processed");
      v2336 = objc_msgSend_recognitionResultsByGroupID(*(v2908 + 512), v2331, v2332, v2333, v2334, v2335);
      v2872 = v2825;
      v2337 = v2100;
      v2893 = v2336;
      log = v2834;
      obj = v2884;
      if (os_variant_has_internal_diagnostics())
      {
        spidg = objc_msgSend_set(MEMORY[0x1E695DFA8], v2338, v2339, v2340, v2341, v2342);
        v2990 = 0u;
        v2989 = 0u;
        v2988 = 0u;
        *v2987 = 0u;
        v2343 = log;
        v2351 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2343, v2344, v2987, buf, 16, v2345);
        if (v2351)
        {
          v2352 = *v2988;
          do
          {
            for (mm = 0; mm != v2351; ++mm)
            {
              if (*v2988 != v2352)
              {
                objc_enumerationMutation(v2343);
              }

              v2354 = objc_msgSend_encodedStrokeIdentifier(*(*&v2987[8] + 8 * mm), v2346, v2347, v2348, v2349, v2350);
              objc_msgSend_addObject_(spidg, v2355, v2354, v2356, v2357, v2358);
            }

            v2351 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2343, v2346, v2987, buf, 16, v2350);
          }

          while (v2351);
        }

        v2961 = 0u;
        v2960 = 0u;
        v2959 = 0u;
        v2958 = 0u;
        v2364 = objc_msgSend_createdStrokeGroups(v2872, v2359, v2360, v2361, v2362, v2363);
        v2898 = v2364;
        v2372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2364, v2365, &v2958, &v2983, 16, v2366);
        v2879 = v2337;
        if (v2372)
        {
          v2373 = *v2959;
          do
          {
            for (nn = 0; nn != v2372; ++nn)
            {
              if (*v2959 != v2373)
              {
                objc_enumerationMutation(v2898);
              }

              v2375 = *(*(&v2958 + 1) + 8 * nn);
              v2376 = MEMORY[0x1E696AD98];
              v2377 = objc_msgSend_uniqueIdentifier(v2375, v2367, v2368, v2369, v2370, v2371);
              v2382 = objc_msgSend_numberWithInteger_(v2376, v2378, v2377, v2379, v2380, v2381);
              v2387 = objc_msgSend_objectForKeyedSubscript_(v2337, v2383, v2382, v2384, v2385, v2386);

              v2398 = objc_msgSend_mathResult(v2387, v2388, v2389, v2390, v2391, v2392);
              if (v2398)
              {
                v2399 = objc_msgSend_mathResult(v2387, v2393, v2394, v2395, v2396, v2397);
                isEvaluationExpected = objc_msgSend_isEvaluationExpected(v2399, v2400, v2401, v2402, v2403, v2404);

                if (isEvaluationExpected)
                {
                  v2411 = objc_msgSend_mathResult(v2387, v2406, v2407, v2408, v2409, v2410);
                  v2417 = objc_msgSend_preferredTranscription(v2411, v2412, v2413, v2414, v2415, v2416);
                  hasSuffix = objc_msgSend_hasSuffix_(v2417, v2418, @"=", v2419, v2420, v2421);
                  v2423 = @"vertical";
                  if (hasSuffix)
                  {
                    v2423 = @"horizontal";
                  }

                  v2424 = v2423;

                  if (qword_1EA84DC48 != -1)
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  }

                  v2425 = qword_1EA84DC60;
                  if (os_log_type_enabled(v2425, OS_LOG_TYPE_DEFAULT))
                  {
                    v2431 = objc_msgSend_mathResult(v2387, v2426, v2427, v2428, v2429, v2430);
                    v2437 = objc_msgSend_mathResult(v2387, v2432, v2433, v2434, v2435, v2436);
                    objc_msgSend_score(v2437, v2438, v2439, v2440, v2441, v2442);
                    v2444 = v2443;
                    v2450 = objc_msgSend_uniqueIdentifier(v2375, v2445, v2446, v2447, v2448, v2449);
                    v2456 = objc_msgSend_ancestorIdentifier(v2375, v2451, v2452, v2453, v2454, v2455);
                    *v2982 = 134219010;
                    *&v2982[4] = v2431;
                    *&v2982[12] = 2112;
                    *&v2982[14] = v2424;
                    *&v2982[22] = 2048;
                    *&v2982[24] = v2444;
                    *&v2982[32] = 2048;
                    *&v2982[34] = v2450;
                    *&v2982[42] = 2048;
                    *&v2982[44] = v2456;
                    _os_log_impl(&dword_18366B000, v2425, OS_LOG_TYPE_DEFAULT, "Math expression %p detected. Type: %@, Score: %.3f, Unique ID: %lu, Ancestor ID: %lu", v2982, 0x34u);

                    v2337 = v2879;
                  }

                  if (qword_1EA84DC48 != -1)
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  }

                  v2457 = qword_1EA84DC60;
                  if (os_log_type_enabled(v2457, OS_LOG_TYPE_DEFAULT))
                  {
                    v2463 = objc_msgSend_mathResult(v2387, v2458, v2459, v2460, v2461, v2462);
                    v2469 = objc_msgSend_alternativeCandidatesLog(v2463, v2464, v2465, v2466, v2467, v2468);
                    *v2982 = 138412290;
                    *&v2982[4] = v2469;
                    _os_log_impl(&dword_18366B000, v2457, OS_LOG_TYPE_DEFAULT, "%@", v2982, 0xCu);
                  }
                }
              }
            }

            v2364 = v2898;
            v2372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2898, v2367, &v2958, &v2983, 16, v2371);
          }

          while (v2372);
        }

        v2957 = 0u;
        v2956 = 0u;
        v2955 = 0u;
        v2954 = 0u;
        v2475 = objc_msgSend_deletedStrokeGroups(v2872, v2470, v2471, v2472, v2473, v2474);
        v2882 = v2475;
        v2478 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2475, v2476, &v2954, v2982, 16, v2477);
        if (v2478)
        {
          v2889 = *v2955;
          do
          {
            v2899 = v2478;
            for (i1 = 0; i1 != v2899; i1 = i1 + 1)
            {
              if (*v2955 != v2889)
              {
                objc_enumerationMutation(v2882);
              }

              v2485 = *(*(&v2954 + 1) + 8 * i1);
              v2486 = MEMORY[0x1E696AD98];
              v2487 = objc_msgSend_uniqueIdentifier(v2485, v2479, v2480, v2481, v2482, v2483);
              v2492 = objc_msgSend_numberWithInteger_(v2486, v2488, v2487, v2489, v2490, v2491);
              v2497 = objc_msgSend_objectForKeyedSubscript_(v2893, v2493, v2492, v2494, v2495, v2496);

              v2508 = objc_msgSend_mathResult(v2497, v2498, v2499, v2500, v2501, v2502);
              if (v2508)
              {
                v2509 = objc_msgSend_mathResult(v2497, v2503, v2504, v2505, v2506, v2507);
                v2515 = objc_msgSend_isEvaluationExpected(v2509, v2510, v2511, v2512, v2513, v2514);

                if (v2515)
                {
                  v2521 = objc_msgSend_mathResult(v2497, v2516, v2517, v2518, v2519, v2520);
                  v2527 = objc_msgSend_preferredTranscription(v2521, v2522, v2523, v2524, v2525, v2526);
                  v2532 = objc_msgSend_hasSuffix_(v2527, v2528, @"=", v2529, v2530, v2531);
                  v2533 = @"vertical";
                  if (v2532)
                  {
                    v2533 = @"horizontal";
                  }

                  v2534 = v2533;

                  v2953 = 0u;
                  v2952 = 0u;
                  v2951 = 0u;
                  v2950 = 0u;
                  v2540 = objc_msgSend_createdStrokeGroups(v2872, v2535, v2536, v2537, v2538, v2539);
                  v2548 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2540, v2541, &v2950, v2979, 16, v2542);
                  if (v2548)
                  {
                    v2549 = *v2951;
LABEL_618:
                    v2550 = 0;
                    while (1)
                    {
                      if (*v2951 != v2549)
                      {
                        objc_enumerationMutation(v2540);
                      }

                      v2551 = *(*(&v2950 + 1) + 8 * v2550);
                      v2552 = objc_msgSend_ancestorIdentifier(v2551, v2543, v2544, v2545, v2546, v2547);
                      if (v2552 == objc_msgSend_ancestorIdentifier(v2485, v2553, v2554, v2555, v2556, v2557))
                      {
                        break;
                      }

                      if (v2548 == ++v2550)
                      {
                        v2548 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2540, v2543, &v2950, v2979, 16, v2547);
                        if (v2548)
                        {
                          goto LABEL_618;
                        }

                        v2558 = 0;
                        v2559 = @"grouping changed";
                        v2337 = v2879;
                        goto LABEL_636;
                      }
                    }

                    v2558 = v2551;

                    v2337 = v2879;
                    if (v2558)
                    {
                      v2565 = objc_msgSend_strokeIdentifiers(v2558, v2560, v2561, v2562, v2563, v2564);
                      v2571 = objc_msgSend_count(v2565, v2566, v2567, v2568, v2569, v2570);
                      v2577 = objc_msgSend_strokeIdentifiers(v2485, v2572, v2573, v2574, v2575, v2576);
                      LODWORD(v2571) = v2571 > objc_msgSend_count(v2577, v2578, v2579, v2580, v2581, v2582);

                      v2559 = @"grouping changed";
                      if (v2571)
                      {
                        v2588 = objc_msgSend_strokeIdentifiers(v2558, v2583, v2584, v2585, v2586, v2587);
                        v2594 = objc_msgSend_mutableCopy(v2588, v2589, v2590, v2591, v2592, v2593);

                        objc_msgSend_minusSet_(v2594, v2595, spidg, v2596, v2597, v2598);
                        v2604 = objc_msgSend_strokeIdentifiers(v2485, v2599, v2600, v2601, v2602, v2603);
                        isEqualToSet = objc_msgSend_isEqualToSet_(v2594, v2605, v2604, v2606, v2607, v2608);

                        if (isEqualToSet)
                        {
                          v2559 = @"strokes added";
                        }

                        else
                        {
                          v2559 = @"grouping changed";
                        }
                      }

                      v2610 = objc_msgSend_strokeIdentifiers(v2558, v2583, v2584, v2585, v2586, v2587);
                      v2616 = objc_msgSend_count(v2610, v2611, v2612, v2613, v2614, v2615);
                      v2622 = objc_msgSend_strokeIdentifiers(v2485, v2617, v2618, v2619, v2620, v2621);
                      LODWORD(v2616) = v2616 < objc_msgSend_count(v2622, v2623, v2624, v2625, v2626, v2627);

                      if (v2616)
                      {
                        v2633 = objc_msgSend_strokeIdentifiers(v2485, v2628, v2629, v2630, v2631, v2632);
                        v2540 = objc_msgSend_mutableCopy(v2633, v2634, v2635, v2636, v2637, v2638);

                        objc_msgSend_minusSet_(v2540, v2639, obj, v2640, v2641, v2642);
                        v2648 = objc_msgSend_strokeIdentifiers(v2558, v2643, v2644, v2645, v2646, v2647);
                        v2653 = objc_msgSend_isEqualToSet_(v2540, v2649, v2648, v2650, v2651, v2652);

                        if (v2653)
                        {
                          v2559 = @"strokes erased";
                        }

                        goto LABEL_636;
                      }

                      goto LABEL_637;
                    }

                    v2559 = @"grouping changed";
                    if (qword_1EA84DC48 == -1)
                    {
                      goto LABEL_638;
                    }

LABEL_644:
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  }

                  else
                  {
                    v2558 = 0;
                    v2559 = @"grouping changed";
LABEL_636:

LABEL_637:
                    if (qword_1EA84DC48 != -1)
                    {
                      goto LABEL_644;
                    }
                  }

LABEL_638:
                  v2654 = qword_1EA84DC60;
                  if (os_log_type_enabled(v2654, OS_LOG_TYPE_DEFAULT))
                  {
                    v2660 = objc_msgSend_mathResult(v2497, v2655, v2656, v2657, v2658, v2659);
                    v2666 = objc_msgSend_mathResult(v2497, v2661, v2662, v2663, v2664, v2665);
                    objc_msgSend_score(v2666, v2667, v2668, v2669, v2670, v2671);
                    v2673 = v2672;
                    v2679 = objc_msgSend_uniqueIdentifier(v2485, v2674, v2675, v2676, v2677, v2678);
                    v2685 = objc_msgSend_ancestorIdentifier(v2485, v2680, v2681, v2682, v2683, v2684);
                    *v2968 = 134219266;
                    v2969 = v2660;
                    v2970 = 2112;
                    *v2971 = v2534;
                    *&v2971[8] = 2048;
                    v2972 = v2673;
                    v2973 = 2048;
                    v2974 = v2679;
                    v2975 = 2048;
                    v2976 = v2685;
                    v2977 = 2112;
                    v2978 = v2559;
                    _os_log_impl(&dword_18366B000, v2654, OS_LOG_TYPE_DEFAULT, "Math expression %p removed. Type: %@, Score: %.3f, Unique ID: %lu, Ancestor ID: %lu, Reason: %@", v2968, 0x3Eu);

                    v2337 = v2879;
                  }
                }
              }
            }

            v2475 = v2882;
            v2478 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2882, v2479, &v2954, v2982, 16, v2483);
          }

          while (v2478);
        }
      }

      v731 = 1;
      goto LABEL_648;
    }

    if (v2847 && v2837)
    {
      v936 = 0;
      v937 = 0;
      v938 = 0.0;
      v2815 = 0.0;
      v939 = 0.0;
LABEL_297:
      v2828 = v936;
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v931 = qword_1EA84DC60;
      v2826 = v937;
      if (os_log_type_enabled(v931, OS_LOG_TYPE_DEFAULT))
      {
        v1087 = objc_msgSend_count(v2834, v1082, v1083, v1084, v1085, v1086);
        v1093 = objc_msgSend_count(v2884, v1088, v1089, v1090, v1091, v1092);
        *buf = 134218496;
        *&buf[4] = v1087;
        *&buf[12] = 2048;
        *&buf[14] = v1093;
        *&buf[22] = 2048;
        *&buf[24] = v938 + v2815 + v939;
        _os_log_impl(&dword_18366B000, v931, OS_LOG_TYPE_DEFAULT, "Completed CHSessionTaskAccurateGrouping for %ld added strokes, %ld removed strokes in %f s.", buf, 0x20u);
      }

      goto LABEL_301;
    }

    v939 = 0.0;
    if ((objc_msgSend_cancelled(v2908, v905, v906, v907, v908, v909) & 1) == 0)
    {
      v951 = sub_183761FE4(7);
      v952 = os_signpost_id_generate(v951);

      v953 = sub_183761FE4(7);
      v954 = v953;
      if (v952 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v953))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v954, OS_SIGNPOST_INTERVAL_BEGIN, v952, "CHSessionTaskStrokeClassificationHeuristic", "", buf, 2u);
      }

      v955 = sub_183761FE4(0);
      if (os_log_type_enabled(v955, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v955, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskStrokeClassificationHeuristic", buf, 2u);
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v956, v957, v958, v959, v960);
      v962 = v961;
      v968 = objc_msgSend_newStrokeClassifier(v2908, v963, v964, v965, v966, v967);
      v974 = objc_msgSend_strokeClassificationResult(*(v2908 + 512), v969, v970, v971, v972, v973);
      v2919[0] = MEMORY[0x1E69E9820];
      v2919[1] = 3221225472;
      v2919[2] = sub_183855768;
      v2919[3] = &unk_1E6DDEE48;
      v2919[4] = v2908;
      v976 = objc_msgSend_updateResult_addingStrokes_removingStrokeIdentifiers_clutterFilter_affectedClutterStrokeIDs_cancellationBlock_(v968, v975, v974, v2834, v2884, v2830, v2818, v2919);

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v977, v978, v979, v980, v981);
      v983 = v982;
      v984 = sub_183761FE4(7);
      v985 = v984;
      if (v952 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v984))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v985, OS_SIGNPOST_INTERVAL_END, v952, "CHSessionTaskStrokeClassificationHeuristic", "", buf, 2u);
      }

      v986 = sub_183761FE4(0);
      if (os_log_type_enabled(v986, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v986, OS_LOG_TYPE_DEFAULT, "END CHSessionTaskStrokeClassificationHeuristic", buf, 2u);
      }

      v939 = v983 - v962;
      v2847 = v976;
    }

    v2815 = 0.0;
    if (objc_msgSend_cancelled(v2908, v946, v947, v948, v949, v950))
    {
      v936 = 0;
      v937 = 0;
LABEL_263:
      v938 = 0.0;
      goto LABEL_297;
    }

    if (!v2823)
    {
      if (v2847)
      {
        v2725 = sub_183761FE4(7);
        v2726 = os_signpost_id_generate(v2725);

        v2727 = sub_183761FE4(7);
        v2728 = v2727;
        if (v2726 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2727))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v2728, OS_SIGNPOST_INTERVAL_BEGIN, v2726, "CHSessionTaskAccurateGrouping", "", buf, 2u);
        }

        v2729 = sub_183761FE4(0);
        if (os_log_type_enabled(v2729, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v2729, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskAccurateGrouping", buf, 2u);
        }

        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v2730, v2731, v2732, v2733, v2734);
        v2736 = v2735;
        v2742 = objc_msgSend_unprocessedStrokeGroupingResult(*(v2908 + 512), v2737, v2738, v2739, v2740, v2741);
        v2748 = objc_msgSend_orderedStrokeIdentifiers(*(v2908 + 512), v2743, v2744, v2745, v2746, v2747);
        v2754 = objc_msgSend_strokeClassificationResult(*(v2908 + 512), v2749, v2750, v2751, v2752, v2753);
        v2914[0] = MEMORY[0x1E69E9820];
        v2914[1] = 3221225472;
        v2914[2] = sub_183855778;
        v2914[3] = &unk_1E6DDEE48;
        v2914[4] = v2908;
        v2756 = objc_msgSend_updateGroupingResult_addingStrokes_removingStrokeIdentifiers_orderedStrokeIdentifiers_lastOrderedStrokeIdentifiers_strokeClassificationResult_lastStrokeClassificationResult_mathStrokeGroupingResult_cancellationBlock_(v2831, v2755, v2742, v2834, v2884, v2832, v2748, v2847, v2754, 0, v2914);

        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v2757, v2758, v2759, v2760, v2761);
        v2815 = v2762 - v2736;
        v2763 = sub_183761FE4(2);
        if (os_log_type_enabled(v2763, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v2815;
          _os_log_impl(&dword_18366B000, v2763, OS_LOG_TYPE_DEFAULT, "Ran stroke grouping in duration = %3.6f seconds", buf, 0xCu);
        }

        v2764 = sub_183761FE4(7);
        v2765 = v2764;
        if (v2726 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v2764))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v2765, OS_SIGNPOST_INTERVAL_END, v2726, "CHSessionTaskAccurateGrouping", "", buf, 2u);
        }

        v2766 = sub_183761FE4(0);
        if (os_log_type_enabled(v2766, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v2766, OS_LOG_TYPE_DEFAULT, "END CHSessionTaskAccurateGrouping", buf, 2u);
        }

        v936 = 0;
        v937 = 0;
        v2837 = v2756;
      }

      else
      {
        v936 = 0;
        v937 = 0;
        v2847 = 0;
      }

      goto LABEL_263;
    }

    v1027 = sub_183761FE4(7);
    spidb = os_signpost_id_generate(v1027);

    v1028 = sub_183761FE4(7);
    v1029 = v1028;
    if (spidb - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1028))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v1029, OS_SIGNPOST_INTERVAL_BEGIN, spidb, "CHSessionTaskDocumentLayoutAnalysisManager", "", buf, 2u);
    }

    v1030 = sub_183761FE4(0);
    if (os_log_type_enabled(v1030, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v1030, OS_LOG_TYPE_DEFAULT, "BEGIN CHSessionTaskDocumentLayoutAnalysisManager", buf, 2u);
    }

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v1031, v1032, v1033, v1034, v1035);
    v1037 = v1036;
    if (objc_msgSend_count(v2834, v1038, v1039, v1040, v1041, v1042))
    {
      v1048 = v2908;
      v1049 = *(v2908 + 632);
    }

    else
    {
      v2768 = objc_msgSend_count(v2884, v1043, v1044, v1045, v1046, v1047);
      v1049 = *(v2908 + 632);
      if (v2768)
      {
        v1048 = v2908;
      }

      else
      {
        v1048 = v2908;
        if (!v1049)
        {
          v2774 = objc_msgSend_strokeClassificationResult(*(v2908 + 512), v1043, v1044, v1045, v1046, v1047);
          if (v2774)
          {
            v2775 = objc_msgSend_strokeClassificationResult(*(v2908 + 512), v2769, v2770, v2771, v2772, v2773);
          }

          else
          {
            v2775 = v2847;
          }

          v2847 = v2775;

          v2781 = objc_msgSend_tilingResult(*(v2908 + 512), v2776, v2777, v2778, v2779, v2780);
          v2787 = objc_msgSend_documentLayoutAnalysisResult(*(v2908 + 512), v2782, v2783, v2784, v2785, v2786);
          v2793 = objc_msgSend_unprocessedStrokeGroupingResult(*(v2908 + 512), v2788, v2789, v2790, v2791, v2792);
          v2827 = v2781;
          v2829 = v2787;
          v2799 = [CHStrokeGroupingResult alloc];
          if (v2793)
          {
            v2800 = objc_msgSend_unprocessedStrokeGroupingResult(*(v2908 + 512), v2794, v2795, v2796, v2797, v2798);
            v2806 = objc_msgSend_strokeGroups(v2800, v2801, v2802, v2803, v2804, v2805);
            v1071 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v2799, v2807, v2806, 0, 0, v2808);

            v2809 = v1071;
          }

          else
          {
            v2800 = objc_msgSend_set(MEMORY[0x1E695DFD8], v2794, v2795, v2796, v2797, v2798);
            v2806 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v2799, v2810, v2800, 0, 0, v2811);
            v1071 = v2806;
            v2809 = v2837;
          }

          goto LABEL_289;
        }
      }
    }

    v1050 = objc_msgSend_strokeClassificationResult(*(v1048 + 512), v1043, v1044, v1045, v1046, v1047);
    v1056 = objc_msgSend_tilingResult(*(v2908 + 512), v1051, v1052, v1053, v1054, v1055);
    v1062 = objc_msgSend_documentLayoutAnalysisResult(*(v2908 + 512), v1057, v1058, v1059, v1060, v1061);
    v1068 = objc_msgSend_unprocessedStrokeGroupingResult(*(v2908 + 512), v1063, v1064, v1065, v1066, v1067);
    v2918 = 0;
    v2917 = 0;
    v2916 = v2837;
    v2915[0] = MEMORY[0x1E69E9820];
    v2915[1] = 3221225472;
    v2915[2] = sub_183855770;
    v2915[3] = &unk_1E6DDEE48;
    v2915[4] = v2908;
    LOBYTE(v2814) = v530;
    v1070 = objc_msgSend_updatedStrokeClassificationResult_subjectStrokeIdentifiers_lastStrokeClassificationResult_lastTilingResult_lastDocumentLayoutAnalysisResult_lastGroupingResult_outTilingResult_outDocumentLayoutAnalysisResult_outStrokeGroupingResult_shouldRebuildResult_cancellationBlock_(v2823, v1069, v2847, v1049, v1050, v1056, v1062, v1068, &v2918, &v2917, &v2916, v2814, v2915);
    v2827 = v2918;
    v2829 = v2917;
    v1071 = v2916;

    v2847 = v1070;
LABEL_289:
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v1072, v1073, v1074, v1075, v1076);
    v938 = v1077 - v1037;
    v1078 = sub_183761FE4(2);
    if (os_log_type_enabled(v1078, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v938;
      _os_log_impl(&dword_18366B000, v1078, OS_LOG_TYPE_DEFAULT, "Ran document layout analysis in duration = %3.6f seconds", buf, 0xCu);
    }

    v1079 = sub_183761FE4(7);
    v1080 = v1079;
    if (spidb - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v1079))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v1080, OS_SIGNPOST_INTERVAL_END, spidb, "CHSessionTaskDocumentLayoutAnalysisManager", "", buf, 2u);
    }

    v1081 = sub_183761FE4(0);
    if (os_log_type_enabled(v1081, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v1081, OS_LOG_TYPE_DEFAULT, "END CHSessionTaskDocumentLayoutAnalysisManager", buf, 2u);
    }

    v2837 = v1071;
    v937 = v2827;
    v936 = v2829;
    goto LABEL_297;
  }

  objc_sync_exit(v17);
LABEL_672:
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  obj->_status = 2;
  obj->_cancelled = 1;
  objc_sync_exit(obj);
}

- (id)recognitionResultsForGroupingResult:(id)a3 groupingManager:(id)a4 strokeGroupsToProcess:(id)a5 strokeClassificationResult:(id)a6 shouldUpdateRecognitionResultsPerLocale:(BOOL)a7 strokeGroupReplacements:(id *)a8
{
  v699 = a7;
  v744 = *MEMORY[0x1E69E9840];
  v708 = a3;
  v12 = a4;
  v692 = a5;
  v688 = a6;
  v701 = self;
  v697 = v12;
  v684 = sub_183858440(self, v12);
  v13 = [CHHorizontalUndersegmentationSplittingStep alloc];
  v689 = objc_msgSend_initWithAdditionalRecognitionBlock_(v13, v14, v684, v15, v16, v17);
  v18 = MEMORY[0x1E695DF90];
  v24 = objc_msgSend_strokeGroups(v708, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_count(v24, v25, v26, v27, v28, v29);
  v709 = objc_msgSend_dictionaryWithCapacity_(v18, v31, v30, v32, v33, v34);

  v713 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v35, v36, v37, v38, v39);
  v705 = objc_msgSend_inputResult(self, v40, v41, v42, v43, v44);
  intermediateDeclaredVariables = self->_intermediateDeclaredVariables;
  location = &self->_intermediateDeclaredVariables;
  if (objc_msgSend_leverageAllProvidedVariables(self, v45, v46, v47, v48, v49))
  {
    v55 = objc_msgSend_calculateDocumentProvider(self, v50, v51, v52, v53, v54);
    v61 = objc_msgSend_declaredVariables(v55, v56, v57, v58, v59, v60);
  }

  else
  {
    obj = objc_msgSend_set(MEMORY[0x1E695DFA8], v50, v51, v52, v53, v54);
    v742 = 0u;
    v743 = 0u;
    v740 = 0u;
    v741 = 0u;
    v71 = objc_msgSend_calculateDocumentProvider(self, v66, v67, v68, v69, v70);
    v77 = objc_msgSend_recognizedExpressions(v71, v72, v73, v74, v75, v76);

    v78 = v77;
    v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v79, &v740, &buf, 16, v80);
    if (v81)
    {
      v710 = *v741;
      do
      {
        for (i = 0; i != v81; ++i)
        {
          if (*v741 != v710)
          {
            objc_enumerationMutation(v78);
          }

          v83 = *(*(&v740 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            if (objc_msgSend_isAssociatedWithCurrentSession(v83, v84, v85, v86, v87, v88))
            {
              goto LABEL_20;
            }
          }

          else
          {
            v94 = objc_msgSend_inputResult(v701, v84, v85, v86, v87, v88);
            v100 = objc_msgSend_strokeGroupIdentifier(v83, v95, v96, v97, v98, v99);
            v106 = objc_msgSend_integerValue(v100, v101, v102, v103, v104, v105);
            v111 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v94, v107, v106, v108, v109, v110);

            if (v111)
            {
              v117 = objc_msgSend_mathResult(v111, v89, v90, v91, v92, v93);
              if (v117)
              {
                v118 = objc_msgSend_mathResult(v111, v112, v113, v114, v115, v116);
                v124 = objc_msgSend_preferredTranscription(v118, v119, v120, v121, v122, v123);
                v130 = objc_msgSend_expression(v83, v125, v126, v127, v128, v129);
                isEqualToString = objc_msgSend_isEqualToString_(v124, v131, v130, v132, v133, v134);

                if (isEqualToString)
                {
                  goto LABEL_20;
                }
              }

              else
              {
              }
            }
          }

          v136 = objc_msgSend_expression(v83, v89, v90, v91, v92, v93);
          v141 = objc_msgSend_declaredVariableInLatexTranscription_(CHTokenizedMathResult, v137, v136, v138, v139, v140);

          if (v141)
          {
            objc_msgSend_addObject_(obj, v142, v141, v143, v144, v145);
          }
        }

        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v146, &v740, &buf, 16, v147);
      }

      while (v81);
    }

LABEL_20:

    v61 = objc_msgSend_copy(obj, v148, v149, v150, v151, v152);
  }

  objc_msgSend_unionSet_(intermediateDeclaredVariables, v62, v61, v63, v64, v65);

  v153 = [CHCTLD alloc];
  v683 = objc_msgSend_initWithType_(v153, v154, 1, v155, v156, v157);
  v163 = objc_msgSend_textStrokeGroups(v708, v158, v159, v160, v161, v162);
  v169 = objc_msgSend_allObjects(v163, v164, v165, v166, v167, v168);
  v174 = objc_msgSend_orderStrokeGroups_(v683, v170, v169, v171, v172, v173);

  v180 = objc_msgSend_nontextStrokeGroups(v708, v175, v176, v177, v178, v179);
  v186 = objc_msgSend_allObjects(v180, v181, v182, v183, v184, v185);
  v687 = objc_msgSend_arrayByAddingObjectsFromArray_(v174, v187, v186, v188, v189, v190);

  v686 = objc_msgSend_currentProgress(MEMORY[0x1E696AE38], v191, v192, v193, v194, v195);
  v196 = MEMORY[0x1E696AE38];
  v202 = objc_msgSend_count(v687, v197, v198, v199, v200, v201);
  v696 = objc_msgSend_progressWithTotalUnitCount_parent_pendingUnitCount_(v196, v203, v202, v686, 60, v204);
  v682 = objc_msgSend_mergeableStrokeGroupClustersFromSortedStrokeGroups_(CHStrokeGroupingManager, v205, v687, v206, v207, v208);
  v712 = objc_msgSend_array(MEMORY[0x1E695DF70], v209, v210, v211, v212, v213);
  v711 = objc_msgSend_array(MEMORY[0x1E695DF70], v214, v215, v216, v217, v218);
  v730 = 0u;
  v731 = 0u;
  v728 = 0u;
  v729 = 0u;
  obja = v682;
  v226 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v219, &v728, v735, 16, v220);
  if (v226)
  {
    v227 = *v729;
    do
    {
      for (j = 0; j != v226; ++j)
      {
        if (*v729 != v227)
        {
          objc_enumerationMutation(obja);
        }

        v229 = *(*(&v728 + 1) + 8 * j);
        v230 = objc_msgSend_firstObject(v229, v221, v222, v223, v224, v225);
        objc_msgSend_addObject_(v711, v231, v230, v232, v233, v234);

        v240 = objc_msgSend_lastObject(v229, v235, v236, v237, v238, v239);
        objc_msgSend_addObject_(v712, v241, v240, v242, v243, v244);
      }

      v226 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v221, &v728, v735, 16, v225);
    }

    while (v226);
  }

  v726 = 0u;
  v727 = 0u;
  v724 = 0u;
  v725 = 0u;
  v690 = v687;
  v693 = objc_msgSend_countByEnumeratingWithState_objects_count_(v690, v245, &v724, v734, 16, v246);
  if (!v693)
  {
    v700 = 0;
    goto LABEL_101;
  }

  v700 = 0;
  v691 = *v725;
  while (2)
  {
    v698 = 0;
    do
    {
      if (*v725 != v691)
      {
        objc_enumerationMutation(v690);
      }

      v252 = *(*(&v724 + 1) + 8 * v698);
      if (objc_msgSend_cancelled(v701, v247, v248, v249, v250, v251))
      {
        v541 = objc_msgSend_totalUnitCount(v696, v253, v254, v255, v256, v257);
        objc_msgSend_setCompletedUnitCount_(v696, v542, v541, v543, v544, v545);
        goto LABEL_101;
      }

      context = objc_autoreleasePoolPush();
      v263 = objc_msgSend_uniqueIdentifier(v252, v258, v259, v260, v261, v262);
      v273 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v705, v264, v263, v265, v266, v267);
      if (!v273)
      {
        v274 = objc_msgSend_uniqueIdentifier(v252, v268, v269, v270, v271, v272);
        v273 = objc_msgSend_rawRecognitionResultForStrokeGroupIdentifier_(v705, v275, v274, v276, v277, v278);
      }

      v279 = objc_msgSend_containsObject_(v711, v268, v252, v270, v271, v272);
      v284 = objc_msgSend_containsObject_(v712, v280, v252, v281, v282, v283);
      v289 = objc_msgSend_containsObject_(v692, v285, v252, v286, v287, v288);
      v703 = v273;
      if (v273)
      {
        v295 = v289;
      }

      else
      {
        v295 = 1;
      }

      if ((v295 & 1) != 0 || (objc_msgSend_mathResult(v273, v290, v291, v292, v293, v294), (v301 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_mathResult(v273, v296, v297, v298, v299, v300), v302 = objc_claimAutoreleasedReturnValue(), objc_msgSend_declaredVariablesWhileRecognized(v302, v303, v304, v305, v306, v307), v308 = objc_claimAutoreleasedReturnValue(), isEqualToSet = objc_msgSend_isEqualToSet_(v308, v309, *location, v310, v311, v312), v308, v302, v301, (isEqualToSet & 1) == 0))
      {
        v323 = objc_opt_class();
        v329 = objc_msgSend_classification(v252, v324, v325, v326, v327, v328);
        if (objc_msgSend_isStrokeClassificationTextOrMath_(v323, v330, v329, v331, v332, v333))
        {
          v723 = 0;
          v334 = sub_183858504(v701, v252, v697, &v723, 0);
          v335 = v723;
          v722 = v335;
          v336 = sub_18385996C(v701, v334, v252, v697, v688, &v722);
          v337 = v722;

          v343 = objc_msgSend_mathResult(v336, v338, v339, v340, v341, v342);
          v344 = v343 == 0;

          if (!v344)
          {
            v350 = *location;
            v351 = objc_msgSend_mathResult(v336, v345, v346, v347, v348, v349);
            objc_msgSend_setDeclaredVariablesWhileRecognized_(v351, v352, v350, v353, v354, v355);

            sub_183856A48(v701, v336, v252, v689);
          }

          if (v337)
          {
            v356 = v337;
          }

          else
          {
            v356 = v252;
          }

          v357 = v356;
          if ((objc_msgSend_cancelled(v701, v358, v359, v360, v361, v362) & 1) == 0 && objc_msgSend_principalLineRequirement(v701, v363, v364, v365, v366, v367) == 1 && (objc_msgSend_classification(v357, v368, v369, v370, v371, v372) == 1 || objc_msgSend_classification(v357, v373, v374, v375, v376, v377) == 2))
          {
            v378 = sub_183855780(v701, v357, v336);
          }

          else
          {
            v378 = v336;
          }

          if (!v378)
          {
LABEL_69:

            v273 = v703;
            if (!v279)
            {
              goto LABEL_70;
            }

            goto LABEL_45;
          }

          if (v337)
          {
            v413 = MEMORY[0x1E696AD98];
            v414 = objc_msgSend_uniqueIdentifier(v337, v408, v409, v410, v411, v412);
            v419 = objc_msgSend_numberWithInteger_(v413, v415, v414, v416, v417, v418);
            objc_msgSend_setObject_forKeyedSubscript_(v709, v420, v378, v419, v421, v422);

            v423 = MEMORY[0x1E696AD98];
            v429 = objc_msgSend_uniqueIdentifier(v252, v424, v425, v426, v427, v428);
            v434 = objc_msgSend_numberWithInteger_(v423, v430, v429, v431, v432, v433);
            objc_msgSend_setObject_forKeyedSubscript_(v713, v435, v337, v434, v436, v437);
LABEL_68:

            goto LABEL_69;
          }
        }

        else
        {
          v379 = v252;
          v385 = objc_msgSend_strokeProvider(v701, v380, v381, v382, v383, v384);
          v386 = MEMORY[0x1E696AEB0];
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v737 = sub_183861760;
          v738 = &unk_1E6DDCA70;
          v387 = v385;
          v739 = v387;
          v390 = objc_msgSend_sortDescriptorWithKey_ascending_comparator_(v386, v388, 0, 1, &buf, v389);
          v396 = objc_msgSend_strokeIdentifiers(v379, v391, v392, v393, v394, v395);
          *&v740 = v390;
          v400 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v397, &v740, 1, v398, v399);
          v405 = objc_msgSend_sortedArrayUsingDescriptors_(v396, v401, v400, v402, v403, v404);

          v406 = [CHStrokeGroupRecognitionResult alloc];
          v378 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v406, v407, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8], 0, MEMORY[0x1E695E0F8], 0, v405, 0, 0, 0);

          if (!v378)
          {
            v337 = 0;
            goto LABEL_69;
          }
        }

        v438 = MEMORY[0x1E696AD98];
        v439 = objc_msgSend_uniqueIdentifier(v252, v408, v409, v410, v411, v412);
        v434 = objc_msgSend_numberWithInteger_(v438, v440, v439, v441, v442, v443);
        objc_msgSend_setObject_forKeyedSubscript_(v709, v444, v378, v434, v445, v446);
        v337 = 0;
        goto LABEL_68;
      }

      v314 = objc_msgSend_mathResult(v273, v296, v297, v298, v299, v300);
      v315 = v314 == 0;

      if (!v315)
      {
        sub_183856A48(v701, v273, v252, v689);
      }

      if (!v279)
      {
LABEL_70:
        if (v700)
        {
          v447 = v284;
        }

        else
        {
          v447 = 0;
        }

        if (v447 != 1)
        {
          goto LABEL_96;
        }

        goto LABEL_74;
      }

LABEL_45:
      v321 = objc_msgSend_mutableCopy(*location, v316, v317, v318, v319, v320);

      v273 = v703;
      v700 = v321;
      if (v321)
      {
        v322 = v284;
      }

      else
      {
        v322 = 0;
      }

      if (v322 != 1)
      {
        goto LABEL_96;
      }

LABEL_74:
      v448 = objc_msgSend_indexOfObject_(v712, v316, v252, v318, v319, v320);
      v453 = objc_msgSend_objectAtIndexedSubscript_(obja, v449, v448, v450, v451, v452);
      if (objc_msgSend_count(v713, v454, v455, v456, v457, v458))
      {
        v464 = MEMORY[0x1E695DF70];
        v465 = objc_msgSend_count(v453, v459, v460, v461, v462, v463);
        v470 = objc_msgSend_arrayWithCapacity_(v464, v466, v465, v467, v468, v469);
        v720 = 0u;
        v721 = 0u;
        v718 = 0u;
        v719 = 0u;
        v471 = v453;
        v479 = objc_msgSend_countByEnumeratingWithState_objects_count_(v471, v472, &v718, v733, 16, v473);
        if (v479)
        {
          v480 = *v719;
          do
          {
            for (k = 0; k != v479; ++k)
            {
              if (*v719 != v480)
              {
                objc_enumerationMutation(v471);
              }

              v482 = *(*(&v718 + 1) + 8 * k);
              v483 = MEMORY[0x1E696AD98];
              v484 = objc_msgSend_uniqueIdentifier(v482, v474, v475, v476, v477, v478);
              v489 = objc_msgSend_numberWithInteger_(v483, v485, v484, v486, v487, v488);
              v494 = objc_msgSend_objectForKeyedSubscript_(v713, v490, v489, v491, v492, v493);

              if (v494)
              {
                objc_msgSend_addObject_(v470, v495, v494, v496, v497, v498);
              }

              else
              {
                objc_msgSend_addObject_(v470, v495, v482, v496, v497, v498);
              }
            }

            v479 = objc_msgSend_countByEnumeratingWithState_objects_count_(v471, v474, &v718, v733, 16, v478);
          }

          while (v479);
        }
      }

      else
      {
        v470 = v453;
      }

      v499 = v470;
      v500 = v709;
      v501 = v700;
      v505 = objc_msgSend_textTranscriptionsForSortedGroupCluster_recognizedResultsByGroupID_(CHStrokeGroupRecognitionResult, v502, v499, v500, v503, v504);
      v511 = objc_msgSend_count(v505, v506, v507, v508, v509, v510);
      if (v511 == objc_msgSend_count(v499, v512, v513, v514, v515, v516))
      {
        v521 = objc_msgSend_componentsJoinedByString_(v505, v517, &stru_1EF1C0318, v518, v519, v520);
        v525 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v521, v522, @" ", &stru_1EF1C0318, v523, v524);

        *&v740 = 0;
        isTextTranscriptionVariableAssignment_outVariable = objc_msgSend_isTextTranscriptionVariableAssignment_outVariable_(CHTokenizedTextResult, v526, v525, &v740, v527, v528);
        v530 = v740;
        if (isTextTranscriptionVariableAssignment_outVariable)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v531 = qword_1EA84DC60;
          if (os_log_type_enabled(v531, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v530;
            _os_log_impl(&dword_18366B000, v531, OS_LOG_TYPE_DEBUG, "Add variable %@ from mergeable group", &buf, 0xCu);
          }

          objc_msgSend_addObject_(v501, v532, v530, v533, v534, v535);
          objc_storeStrong(location, v700);
        }
      }

      v700 = 0;
      v273 = v703;
LABEL_96:
      v536 = objc_msgSend_completedUnitCount(v696, v316, v317, v318, v319, v320);
      objc_msgSend_setCompletedUnitCount_(v696, v537, v536 + 1, v538, v539, v540);

      objc_autoreleasePoolPop(context);
      ++v698;
    }

    while (v698 != v693);
    v693 = objc_msgSend_countByEnumeratingWithState_objects_count_(v690, v247, &v724, v734, 16, v251);
    if (v693)
    {
      continue;
    }

    break;
  }

LABEL_101:

  if (objc_msgSend_cancelled(v701, v546, v547, v548, v549, v550))
  {
    goto LABEL_126;
  }

  v716 = 0u;
  v717 = 0u;
  v714 = 0u;
  v715 = 0u;
  v556 = objc_msgSend_unprocessedStrokeGroupingResult(v705, v551, v552, v553, v554, v555);
  v704 = objc_msgSend_strokeGroups(v556, v557, v558, v559, v560, v561);

  v569 = objc_msgSend_countByEnumeratingWithState_objects_count_(v704, v562, &v714, v732, 16, v563);
  if (!v569)
  {
    goto LABEL_125;
  }

  v570 = *v715;
  while (2)
  {
    v571 = 0;
    while (2)
    {
      if (*v715 != v570)
      {
        objc_enumerationMutation(v704);
      }

      v572 = *(*(&v714 + 1) + 8 * v571);
      v573 = MEMORY[0x1E696AD98];
      v574 = objc_msgSend_uniqueIdentifier(v572, v564, v565, v566, v567, v568);
      v579 = objc_msgSend_numberWithInteger_(v573, v575, v574, v576, v577, v578);
      v584 = objc_msgSend_objectForKeyedSubscript_(v709, v580, v579, v581, v582, v583);
      if (v584)
      {

        goto LABEL_116;
      }

      v595 = objc_msgSend_strokeGroups(v708, v585, v586, v587, v588, v589);
      v600 = objc_msgSend_containsObject_(v595, v596, v572, v597, v598, v599);

      if (v600)
      {
        v601 = objc_msgSend_uniqueIdentifier(v572, v590, v591, v592, v593, v594);
        v606 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v705, v602, v601, v603, v604, v605);
        v612 = v606;
        if (!v606 || (objc_msgSend_mathResult(v606, v607, v608, v609, v610, v611), v613 = objc_claimAutoreleasedReturnValue(), v614 = v613 == 0, v613, !v614))
        {
          v615 = objc_msgSend_uniqueIdentifier(v572, v607, v608, v609, v610, v611);
          v620 = objc_msgSend_rawRecognitionResultForStrokeGroupIdentifier_(v705, v616, v615, v617, v618, v619);

          v612 = v620;
        }

        if (v699)
        {
          v621 = sub_183858504(v701, v572, v697, 0, v612);

          v612 = v621;
        }

        objc_msgSend_setObject_forKeyedSubscript_(v709, v607, v612, v579, v610, v611);
LABEL_122:
      }

      else
      {
LABEL_116:
        v612 = objc_msgSend_strokeGroups(v708, v590, v591, v592, v593, v594);
        if (!objc_msgSend_containsObject_(v612, v622, v572, v623, v624, v625))
        {
          goto LABEL_122;
        }

        v630 = objc_msgSend_objectForKeyedSubscript_(v709, v626, v579, v627, v628, v629);
        v636 = objc_msgSend_mathResult(v630, v631, v632, v633, v634, v635);
        v637 = v636 == 0;

        if (!v637)
        {
          v642 = objc_msgSend_objectForKeyedSubscript_(v709, v638, v579, v639, v640, v641);
          v612 = objc_msgSend_mathResult(v642, v643, v644, v645, v646, v647);

          v653 = objc_msgSend_uniqueIdentifier(v572, v648, v649, v650, v651, v652);
          v658 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v705, v654, v653, v655, v656, v657);
          v664 = objc_msgSend_mathResult(v658, v659, v660, v661, v662, v663);

          if (v664 && objc_msgSend_isEquivalentToTokenizedMathResult_(v664, v665, v612, v666, v667, v668))
          {
            v674 = objc_msgSend_selectedTranscriptionPathIndex(v664, v669, v670, v671, v672, v673);
            objc_msgSend_setSelectedTranscriptionPathIndex_(v612, v675, v674, v676, v677, v678);
          }

          goto LABEL_122;
        }
      }

      if (v569 != ++v571)
      {
        continue;
      }

      break;
    }

    v569 = objc_msgSend_countByEnumeratingWithState_objects_count_(v704, v564, &v714, v732, 16, v568);
    if (v569)
    {
      continue;
    }

    break;
  }

LABEL_125:

LABEL_126:
  if (a8)
  {
    v679 = v713;
    *a8 = v713;
  }

  v680 = objc_msgSend_copy(v709, v551, v552, v553, v554, v555);

  return v680;
}

- (id)clutterFilter
{
  v6 = objc_msgSend_inputResult(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_clutterFilter(v6, v7, v8, v9, v10, v11);

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = objc_alloc_init(CHStrokeClutterFilter);
  }

  return v13;
}

- (id)newDocumentLayoutAnalysisManager
{
  v7 = objc_msgSend_delegate(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentLayoutAnalyzer(v7, v8, v9, v10, v11, v12);

  v14 = [CHDocumentLayoutAnalysisManager alloc];
  v20 = objc_msgSend_strokeProvider(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_recognitionLocales(self, v21, v22, v23, v24, v25);
  v29 = objc_msgSend_initWithStrokeProvider_documentLayoutAnalyzer_locales_(v14, v27, v20, v13, v26, v28);

  return v29;
}

- (id)newStrokeClassifier
{
  v3 = [CHStrokeClassifier alloc];
  v9 = objc_msgSend_strokeProvider(self, v4, v5, v6, v7, v8);
  v13 = objc_msgSend_initWithStrokeProvider_forceClass_(v3, v10, v9, 0, v11, v12);

  return v13;
}

- (id)newGroupingManager
{
  v3 = [CHStrokeGroupingManager alloc];
  v9 = objc_msgSend_strokeProvider(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_recognitionLocales(self, v10, v11, v12, v13, v14);
  isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v3, v16, v9, v15, 0, 0);

  return isInlineContinuousMode_inlineContinuousModeTargets;
}

- (id)newGroupingPostProcessingManagerWithGroupingManager:(id)a3
{
  v4 = a3;
  v5 = sub_183858440(self, v4);
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v12 = [CHGroupOversegmentationMergingStep alloc];
  v18 = objc_msgSend_strokeProvider(self, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_recognitionLocales(self, v19, v20, v21, v22, v23);
  v27 = objc_msgSend_initWithAdditionalRecognitionBlock_strokeProvider_locales_(v12, v25, v5, v18, v24, v26);
  objc_msgSend_addObject_(v11, v28, v27, v29, v30, v31);

  v32 = objc_alloc_init(CHVerticalUndersegmentationSplittingStep);
  objc_msgSend_addObject_(v11, v33, v32, v34, v35, v36);

  v37 = objc_alloc_init(CHVerticalMathLinkingStep);
  objc_msgSend_addObject_(v11, v38, v37, v39, v40, v41);

  v42 = [CHHorizontalUndersegmentationSplittingStep alloc];
  v47 = objc_msgSend_initWithAdditionalRecognitionBlock_(v42, v43, v5, v44, v45, v46);
  objc_msgSend_addObject_(v11, v48, v47, v49, v50, v51);

  v52 = [CHTextToMathResultTransformationStep alloc];
  v57 = objc_msgSend_initWithAdditionalRecognitionBlock_(v52, v53, v5, v54, v55, v56);
  objc_msgSend_addObject_(v11, v58, v57, v59, v60, v61);

  v62 = [CHFractionDecompositionStep alloc];
  v68 = objc_msgSend_strokeProvider(self, v63, v64, v65, v66, v67);
  v74 = objc_msgSend_recognitionLocales(self, v69, v70, v71, v72, v73);
  v77 = objc_msgSend_initWithAdditionalRecognitionBlock_strokeProvider_locales_(v62, v75, v5, v68, v74, v76);
  objc_msgSend_addObject_(v11, v78, v77, v79, v80, v81);

  v82 = [CHSplitTextMathStep alloc];
  v88 = objc_msgSend_strokeProvider(self, v83, v84, v85, v86, v87);
  v94 = objc_msgSend_recognitionLocales(self, v89, v90, v91, v92, v93);
  v97 = objc_msgSend_initWithAdditionalRecognitionBlock_strokeProvider_locales_(v82, v95, v5, v88, v94, v96);
  objc_msgSend_addObject_(v11, v98, v97, v99, v100, v101);

  v102 = [CHGroupingPostProcessingManager alloc];
  v106 = objc_msgSend_initWithSequence_groupingManager_(v102, v103, v11, v4, v104, v105);
  v112 = objc_msgSend_saveInputDrawings(self, v107, v108, v109, v110, v111);
  objc_msgSend_setSaveInputDrawings_(v106, v113, v112, v114, v115, v116);

  return v106;
}

+ (BOOL)isGroupAcceptableForInventory:(id)a3 textSynthesizer:(id)a4 strokeProvider:(id)a5 recognitionResult:(id)a6 strokeClassificationResult:(id)a7 allowSyntheticStrokes:(BOOL)a8
{
  v8 = a8;
  v194[1] = *MEMORY[0x1E69E9840];
  v174 = a3;
  v171 = a4;
  v175 = a5;
  v173 = a6;
  v170 = a7;
  v13 = objc_opt_class();
  v19 = objc_msgSend_classification(v174, v14, v15, v16, v17, v18);
  if (objc_msgSend_isStrokeClassificationTextOrMath_(v13, v20, v19, v21, v22, v23))
  {
    v168 = objc_msgSend_preferredLocale(v173, v24, v25, v26, v27, v28);
    v34 = objc_msgSend_mathResult(v173, v29, v30, v31, v32, v33);
    v40 = v34;
    if (v34)
    {
      if (v168)
      {
        v41 = objc_msgSend_mathResult(v173, v35, v36, v37, v38, v39);
        isEvaluationExpected = objc_msgSend_isEvaluationExpected(v41, v42, v43, v44, v45, v46);

        if (!isEvaluationExpected)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      v48 = objc_msgSend_mathResult(v173, v35, v36, v37, v38, v39);
      v169 = objc_msgSend_preferredTranscription(v48, v60, v61, v62, v63, v64);
LABEL_9:

      v193 = CHTextSynthesisOptionSupportedCharactersStrict[0];
      v194[0] = MEMORY[0x1E695E118];
      v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v65, v194, &v193, 1, v66);
      v167 = objc_msgSend_mutableCopy(v67, v68, v69, v70, v71, v72);

      v76 = objc_msgSend_supportedCharacterIndexesForString_options_(v171, v73, v169, v167, v74, v75);
      v165 = v76;
      v82 = objc_msgSend_count(v76, v77, v78, v79, v80, v81);
      if (v82 == objc_msgSend_length(v169, v83, v84, v85, v86, v87))
      {
        v92 = v168;
        if (v168)
        {
          isSupportedLatinScriptLocale_withMode = objc_msgSend_isSupportedLatinScriptLocale_withMode_(CHRecognizerConfiguration, v88, v168, 6, v90, v91);
        }

        else
        {
          isSupportedLatinScriptLocale_withMode = 0;
        }

        v98 = objc_msgSend_strokeIdentifiers(v174, v88, v92, v89, v90, v91);
        v104 = objc_msgSend_allObjects(v98, v99, v100, v101, v102, v103);
        isHighConfidenceForStrokesIdentifiers_scripts_confidenceThreshold = objc_msgSend_isHighConfidenceForStrokesIdentifiers_scripts_confidenceThreshold_(v170, v105, v104, &unk_1EF1EC670, v106, v107, 0.5);

        if (isHighConfidenceForStrokesIdentifiers_scripts_confidenceThreshold & 1 | ((isSupportedLatinScriptLocale_withMode & 1) == 0))
        {
          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v94 = objc_msgSend_strokeIdentifiers(v174, v109, v110, v111, v112, v113);
          v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v114, &v176, v192, 16, v115);
          if (!v120)
          {
            v59 = 1;
            goto LABEL_51;
          }

          obj = v94;
          v172 = *v177;
          v121 = !v8;
LABEL_20:
          v122 = 0;
          while (1)
          {
            if (*v177 != v172)
            {
              objc_enumerationMutation(obj);
            }

            v123 = objc_msgSend_strokeIdentifierFromData_(v175, v116, *(*(&v176 + 1) + 8 * v122), v117, v118, v119);
            v128 = objc_msgSend_strokeForIdentifier_(v175, v124, v123, v125, v126, v127);
            v134 = objc_msgSend_strokeAttributes(v128, v129, v130, v131, v132, v133);
            v140 = objc_msgSend_strokeAttributes(v128, v135, v136, v137, v138, v139);
            v146 = objc_msgSend_strokeAttributes(v128, v141, v142, v143, v144, v145);
            v152 = objc_msgSend_strokeAttributes(v128, v147, v148, v149, v150, v151);
            v158 = objc_msgSend_strokeAttributes(v128, v153, v154, v155, v156, v157);

            if (v121 & (v134 >> 2) & 1 | (v140 >> 3) & 1 | (v146 >> 4) & 1 | (v152 >> 5) & 1 | (v158 >> 6) & 1)
            {
              break;
            }

            if (v120 == ++v122)
            {
              v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v116, &v176, v192, 16, v119);
              v59 = 1;
              if (v120)
              {
                goto LABEL_20;
              }

              v94 = obj;
              goto LABEL_51;
            }
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v94 = qword_1EA84DC98;
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            v159 = @"YES";
            if ((v134 & 4) != 0)
            {
              v160 = @"YES";
            }

            else
            {
              v160 = @"NO";
            }

            *buf = 138413571;
            v181 = v160;
            if ((v140 & 8) != 0)
            {
              v161 = @"YES";
            }

            else
            {
              v161 = @"NO";
            }

            v182 = 2112;
            v183 = v161;
            if ((v146 & 0x10) != 0)
            {
              v162 = @"YES";
            }

            else
            {
              v162 = @"NO";
            }

            v184 = 2112;
            v185 = v162;
            if ((v152 & 0x20) != 0)
            {
              v163 = @"YES";
            }

            else
            {
              v163 = @"NO";
            }

            v186 = 2112;
            if ((v158 & 0x40) == 0)
            {
              v159 = @"NO";
            }

            v187 = v163;
            v188 = 2112;
            v189 = v159;
            v190 = 2117;
            v191 = v169;
            v95 = "Inventory data ingestion: rejecting text group as in contains undesired stroke attributes (synthetic %@, finger drawn %@, pasted %@, shared ink %@, unsafe %@). Transcription string: %{sensitive}@";
            v96 = v94;
            v97 = 62;
            goto LABEL_49;
          }

LABEL_50:
          v59 = 0;
LABEL_51:

          goto LABEL_52;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v94 = qword_1EA84DC98;
        if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_50;
        }

        *buf = 138739971;
        v181 = v169;
        v95 = "Inventory data ingestion: rejecting text group due to low confidence for Latin script. Transcription string: %{sensitive}@";
        v96 = v94;
        v97 = 12;
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v94 = qword_1EA84DC98;
        if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_50;
        }

        *buf = 138412547;
        v181 = v76;
        v182 = 2117;
        v183 = v169;
        v95 = "Inventory data ingestion: rejecting text group as transcription string is not fully supported (supported indexes: %@). Transcription string: %{sensitive}@";
        v96 = v94;
        v97 = 22;
      }

LABEL_49:
      _os_log_impl(&dword_18366B000, v96, OS_LOG_TYPE_DEBUG, v95, buf, v97);
      goto LABEL_50;
    }

LABEL_5:
    v48 = objc_msgSend_recognitionResultsByLocale(v173, v35, v36, v37, v38, v39);
    v53 = objc_msgSend_objectForKeyedSubscript_(v48, v49, v168, v50, v51, v52);
    v169 = objc_msgSend_topTranscription(v53, v54, v55, v56, v57, v58);

    goto LABEL_9;
  }

  v59 = 0;
LABEL_52:

  return v59;
}

- (BOOL)shouldCancelTaskGivenNewTask:(id)a3
{
  v9 = a3;
  if (v9 && (objc_msgSend_strokeProvider(self, v4, v5, v6, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_strokeProvider(v9, v11, v12, v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v10, v10 == v16) && (!objc_msgSend_status(self, v17, v18, v19, v20, v21) || objc_msgSend_status(self, v23, v24, v25, v26, v27) == 1))
  {
    v28 = objc_msgSend_principalLineRequirement(self, v23, v24, v25, v26, v27);
    LOBYTE(v28) = v28 == objc_msgSend_principalLineRequirement(v9, v29, v30, v31, v32, v33);

    return v28;
  }

  else
  {

    return 0;
  }
}

@end