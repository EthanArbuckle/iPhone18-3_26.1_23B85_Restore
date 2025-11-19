void sub_183856A48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v105[1] = *MEMORY[0x1E69E9840];
  v98 = a2;
  v7 = a3;
  v96 = a4;
  if (a1)
  {
    v8 = [CHStrokeGroupingResult alloc];
    v13 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v9, v7, v10, v11, v12);
    v97 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v8, v14, v13, 0, 0, v15);

    v16 = [CHGroupingAndRecognitionResults alloc];
    v17 = MEMORY[0x1E696AD98];
    v23 = objc_msgSend_uniqueIdentifier(v7, v18, v19, v20, v21, v22);
    v28 = objc_msgSend_numberWithInteger_(v17, v24, v23, v25, v26, v27);
    v104 = v28;
    v105[0] = v98;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v105, &v104, 1, v30);
    v33 = objc_msgSend_initWithGroupingResult_recognitionResultsByGroupID_strokeClassificationResult_previousProcessedStrokeGroupingResult_previousProcessedRecognizedResultsByGroupID_strokeGroupReplacements_cachedRecognitionResultsFromPostProcessing_(v16, v32, v97, v31, 0, 0, 0, 0, *(a1 + 496));

    v37 = objc_msgSend_process_options_(v96, v34, v33, 0, v35, v36);

    v43 = objc_msgSend_cachedRecognitionResultsFromPostProcessing(v37, v38, v39, v40, v41, v42);
    v44 = *(a1 + 496);
    *(a1 + 496) = v43;

    v50 = objc_msgSend_refreshedCachedResultsFromPostProcessing(v37, v45, v46, v47, v48, v49);
    if (objc_msgSend_count(v50, v51, v52, v53, v54, v55))
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v61 = objc_msgSend_allValues(v50, v56, v57, v58, v59, v60);
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v99, v103, 16, v63);
      if (v69)
      {
        v70 = *v100;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v100 != v70)
            {
              objc_enumerationMutation(v61);
            }

            v72 = *(*(&v99 + 1) + 8 * i);
            v73 = objc_msgSend_mathResult(v72, v64, v65, v66, v67, v68);
            v74 = v73 == 0;

            if (!v74)
            {
              v75 = objc_msgSend_mathResult(v72, v64, v65, v66, v67, v68);
              v81 = objc_msgSend_declaredVariable(v75, v76, v77, v78, v79, v80);

              if (v81)
              {
                objc_msgSend_addObject_(*(a1 + 8), v82, v81, v83, v84, v85);
              }
            }
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v64, &v99, v103, 16, v68);
        }

        while (v69);
      }
    }

    else
    {
      v86 = objc_msgSend_mathResult(v98, v56, v57, v58, v59, v60);
      v61 = objc_msgSend_declaredVariable(v86, v87, v88, v89, v90, v91);

      if (v61)
      {
        objc_msgSend_addObject_(*(a1 + 8), v92, v61, v93, v94, v95);
      }
    }
  }
}

id sub_183858440(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_183861DB4;
    v11[3] = &unk_1E6DDF048;
    v11[4] = a1;
    v12 = v3;
    v5 = MEMORY[0x1865E6810](v11);
    a1 = MEMORY[0x1865E6810](v5, v6, v7, v8, v9);
  }

  return a1;
}

id sub_183858504(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v493 = *MEMORY[0x1E69E9840];
  v438 = a2;
  v437 = a3;
  v451 = a5;
  if (!a1)
  {
    v411 = 0;
    goto LABEL_97;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v9, v10, v11, v12, v13);
  v15 = v14;
  v439 = objc_msgSend_uniqueIdentifier(v438, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_strokeProvider(a1, v21, v22, v23, v24, v25);
  v449 = a1;
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    if (qword_1EA84DC48 == -1)
    {
      v420 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v420, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v420 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v420, OS_LOG_TYPE_DEBUG))
      {
LABEL_7:

        v33 = objc_msgSend_strokeIdentifiers(v438, v28, v29, v30, v31, v32);
        v39 = objc_msgSend_allObjects(v33, v34, v35, v36, v37, v38);
        v45 = objc_msgSend_strokeProvider(v449, v40, v41, v42, v43, v44);
        v49 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v46, v39, v45, v47, v48);

        v55 = objc_msgSend_strokeProvider(v449, v50, v51, v52, v53, v54);
        v60 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v56, v49, v57, v58, v59);
        obj = objc_msgSend_cachedTranscriptionForStrokeGroup_(v55, v61, v60, v62, v63, v64);

        if (obj)
        {
          v70 = objc_msgSend_strokeIdentifiers(v438, v65, v66, v67, v68, v69);
          v76 = objc_msgSend_count(v70, v71, v72, v73, v74, v75);
          v82 = objc_msgSend_strokeIndexes(obj, v77, v78, v79, v80, v81);
          v88 = v76 == objc_msgSend_count(v82, v83, v84, v85, v86, v87);

          if (v88)
          {
            if (qword_1EA84DC48 == -1)
            {
              v423 = qword_1EA84DC50[0];
              if (!os_log_type_enabled(v423, OS_LOG_TYPE_DEBUG))
              {
LABEL_13:

                goto LABEL_28;
              }
            }

            else
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              v423 = qword_1EA84DC50[0];
              if (!os_log_type_enabled(v423, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_13;
              }
            }

            v89 = objc_msgSend_strokeIdentifiers(v438, v425, v426, v427, v428, v429);
            v95 = objc_msgSend_count(v89, v90, v91, v92, v93, v94);
            v101 = objc_msgSend_topTranscription(obj, v96, v97, v98, v99, v100);
            *buf = 134218243;
            *&buf[4] = v95;
            *&buf[12] = 2117;
            *&buf[14] = v101;
            _os_log_impl(&dword_18366B000, v423, OS_LOG_TYPE_DEBUG, "The CHStrokeIdentifier has a cached transcription for this stroke group with %ld strokes, transcription = %{sensitive}@", buf, 0x16u);

            goto LABEL_13;
          }

          if (qword_1EA84DC48 == -1)
          {
            v430 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v430, OS_LOG_TYPE_DEBUG))
            {
LABEL_26:

              goto LABEL_27;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v430 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v430, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_26;
            }
          }

          v115 = objc_msgSend_strokeIdentifiers(v438, v432, v433, v434, v435, v436);
          v121 = objc_msgSend_count(v115, v116, v117, v118, v119, v120);
          v127 = objc_msgSend_strokeIndexes(obj, v122, v123, v124, v125, v126);
          v133 = objc_msgSend_count(v127, v128, v129, v130, v131, v132);
          *buf = 134218240;
          *&buf[4] = v121;
          *&buf[12] = 2048;
          *&buf[14] = v133;
          _os_log_impl(&dword_18366B000, v430, OS_LOG_TYPE_DEBUG, "The CHStrokeIdentifier has a cached transcription for this stroke group with %ld strokes - but the transcription is invalid - covering %ld strokes - ignoring", buf, 0x16u);

          goto LABEL_26;
        }

        if (qword_1EA84DC48 == -1)
        {
          v102 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
LABEL_21:

            goto LABEL_27;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v102 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_21;
          }
        }

        v108 = objc_msgSend_strokeIdentifiers(v438, v103, v104, v105, v106, v107);
        v114 = objc_msgSend_count(v108, v109, v110, v111, v112, v113);
        *buf = 134217984;
        *&buf[4] = v114;
        _os_log_impl(&dword_18366B000, v102, OS_LOG_TYPE_DEBUG, "The CHStrokeIdentifier has no cached transcription for this stroke group with %ld strokes.", buf, 0xCu);

        goto LABEL_21;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v420, OS_LOG_TYPE_DEBUG, "The CHStrokeIdentifier implements a stroke cache.", buf, 2u);
    goto LABEL_7;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v49 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v49 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
LABEL_17:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_DEBUG, "The CHStrokeIdentifier does not implement a stroke cache.", buf, 2u);
  }

LABEL_27:
  obj = 0;
LABEL_28:

  v482 = 0;
  v483 = 0;
  v135 = objc_msgSend_recognizableDrawingForStrokeGroup_translationVector_originalDrawing_orderedStrokesIDs_rescalingFactor_replacementStrokeGroup_(v437, v134, v438, &v483, &v482, 0, a4, 0.0, 0.0);
  v136 = v483;
  v445 = v482;
  v442 = v136;
  v443 = v135;
  v142 = objc_msgSend_strokeCount(v135, v137, v138, v139, v140, v141);
  if (v142 == objc_msgSend_count(v445, v143, v144, v145, v146, v147))
  {
    goto LABEL_33;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v153 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v153 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
  {
LABEL_31:
    v159 = objc_msgSend_strokeCount(v443, v154, v155, v156, v157, v158);
    v165 = objc_msgSend_count(v445, v160, v161, v162, v163, v164);
    *buf = 134218240;
    *&buf[4] = v159;
    *&buf[12] = 2048;
    *&buf[14] = v165;
    _os_log_impl(&dword_18366B000, v153, OS_LOG_TYPE_ERROR, "The strokes count in the drawing (%ld) must match the ones in the result (%ld).", buf, 0x16u);
  }

LABEL_32:

  v136 = v442;
LABEL_33:
  v166 = objc_msgSend_strokeCount(v443, v148, v149, v150, v151, v152);
  if (v166 == objc_msgSend_count(v445, v167, v168, v169, v170, v171))
  {
    goto LABEL_38;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v177 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v177 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
  {
LABEL_36:
    v183 = objc_msgSend_strokeCount(v443, v178, v179, v180, v181, v182);
    v189 = objc_msgSend_count(v445, v184, v185, v186, v187, v188);
    *buf = 134218240;
    *&buf[4] = v183;
    *&buf[12] = 2048;
    *&buf[14] = v189;
    _os_log_impl(&dword_18366B000, v177, OS_LOG_TYPE_FAULT, "The strokes count in the drawing (%ld) must match the ones in the result (%ld).", buf, 0x16u);
  }

LABEL_37:

  v136 = v442;
LABEL_38:
  v190 = objc_msgSend_strokeCount(v136, v172, v173, v174, v175, v176);
  if (v190 == objc_msgSend_count(v445, v191, v192, v193, v194, v195))
  {
    goto LABEL_43;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v201 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v201 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
  {
LABEL_41:
    v207 = objc_msgSend_strokeCount(v136, v202, v203, v204, v205, v206);
    v213 = objc_msgSend_count(v445, v208, v209, v210, v211, v212);
    *buf = 134218240;
    *&buf[4] = v207;
    *&buf[12] = 2048;
    *&buf[14] = v213;
    _os_log_impl(&dword_18366B000, v201, OS_LOG_TYPE_ERROR, "The strokes count in the original drawing (%ld) must match the ones in the result (%ld).", buf, 0x16u);
  }

LABEL_42:

  v136 = v442;
LABEL_43:
  v214 = objc_msgSend_strokeCount(v136, v196, v197, v198, v199, v200);
  if (v214 == objc_msgSend_count(v445, v215, v216, v217, v218, v219))
  {
    goto LABEL_48;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v225 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v225, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v225 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v225, OS_LOG_TYPE_FAULT))
  {
LABEL_46:
    v231 = objc_msgSend_strokeCount(v136, v226, v227, v228, v229, v230);
    v237 = objc_msgSend_count(v445, v232, v233, v234, v235, v236);
    *buf = 134218240;
    *&buf[4] = v231;
    *&buf[12] = 2048;
    *&buf[14] = v237;
    _os_log_impl(&dword_18366B000, v225, OS_LOG_TYPE_FAULT, "The strokes count in the original drawing (%ld) must match the ones in the result (%ld).", buf, 0x16u);
  }

LABEL_47:

LABEL_48:
  v440 = objc_msgSend_recognitionOptions(v449, v220, v221, v222, v223, v224);
  v243 = objc_msgSend_recognitionLocales(v449, v238, v239, v240, v241, v242);
  v249 = objc_msgSend_count(v243, v244, v245, v246, v247, v248);

  v448 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v250, v249, v251, v252, v253);
  v447 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v254, v249, v255, v256, v257);
  v258 = v449;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v490 = sub_18385AFE0;
  v491 = sub_18385AFF0;
  v492 = 0;
  v476 = 0;
  v477 = &v476;
  v478 = 0x3032000000;
  v479 = sub_18385AFE0;
  v480 = sub_18385AFF0;
  v481 = 0;
  if (objc_msgSend_strokeGroupingOnly(v449, v259, v260, v261, v262, v263))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v264 = qword_1EA84DC60;
    if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
    {
      *v484 = 0;
      _os_log_impl(&dword_18366B000, v264, OS_LOG_TYPE_DEFAULT, "GroupingOnly option selected. Skipping the recognition and performing grouping only.", v484, 2u);
    }

    v258 = v449;
  }

  group = dispatch_group_create();
  if (objc_msgSend_classification(v438, v265, v266, v267, v268, v269) == 3 && (objc_msgSend_strokeGroupingOnly(v258, v270, v271, v272, v273, v274) & 1) == 0)
  {
    v354 = objc_msgSend_delegate(v258, v270, v271, v272, v273, v274);
    v280 = objc_msgSend_mathRecognizer(v354, v355, v356, v357, v358, v359);

    if (!v280)
    {
LABEL_86:

      v258 = v449;
      goto LABEL_87;
    }

    v370 = objc_msgSend_copy(v443, v360, v361, v362, v363, v364);
    if (obj && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_storeStrong(v477 + 5, obj);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v371 = qword_1EA84DC60;
      if (!os_log_type_enabled(v371, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_85;
      }

      *v484 = 134217984;
      v485 = v439;
      v372 = "Math result retrieved from cache for stroke group %ld";
    }

    else
    {
      v373 = objc_msgSend_mathResult(v451, v365, v366, v367, v368, v369);
      v374 = v373 == 0;

      if (v374)
      {
        v382 = v449[78];
        v469[0] = MEMORY[0x1E69E9820];
        v469[1] = 3221225472;
        v469[2] = sub_18385AFF8;
        v469[3] = &unk_1E6DDEE70;
        v475 = v439;
        v470 = v280;
        v471 = v449;
        v474 = &v476;
        v472 = v370;
        v473 = v440;
        dispatch_group_async(group, v382, v469);

        v371 = v470;
        goto LABEL_85;
      }

      v380 = objc_msgSend_mathResult(v451, v375, v376, v377, v378, v379);
      v381 = v477[5];
      v477[5] = v380;

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v371 = qword_1EA84DC60;
      if (!os_log_type_enabled(v371, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_85;
      }

      *v484 = 134217984;
      v485 = v439;
      v372 = "Math result retrieved from the last recognition result for stroke group %ld";
    }

    _os_log_impl(&dword_18366B000, v371, OS_LOG_TYPE_DEBUG, v372, v484, 0xCu);
LABEL_85:

    goto LABEL_86;
  }

  if ((objc_msgSend_strokeGroupingOnly(v258, v270, v271, v272, v273, v274) & 1) == 0)
  {
    v467 = 0u;
    v468 = 0u;
    v465 = 0u;
    v466 = 0u;
    v280 = objc_msgSend_recognitionLocales(v258, v275, v276, v277, v278, v279);
    v283 = objc_msgSend_countByEnumeratingWithState_objects_count_(v280, v281, &v465, v488, 16, v282);
    if (v283)
    {
      v289 = *v466;
      do
      {
        v450 = v283;
        for (i = 0; i != v450; ++i)
        {
          if (*v466 != v289)
          {
            objc_enumerationMutation(v280);
          }

          v291 = *(*(&v465 + 1) + 8 * i);
          v297 = objc_msgSend_recognitionResultsByLocale(v451, v284, v285, v286, v287, v288);
          if (!v297 || (objc_msgSend_recognitionResultsByLocale(v451, v292, v293, v294, v295, v296), v298 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v298, v299, v291, v300, v301, v302), v303 = objc_claimAutoreleasedReturnValue(), v304 = v303 == 0, v303, v298, v297, v304))
          {
            v334 = objc_msgSend_delegate(v449, v292, v293, v294, v295, v296);
            v339 = objc_msgSend_recognizerForLocale_(v334, v335, v291, v336, v337, v338);

            if (v339)
            {
              v345 = objc_msgSend_copy(v443, v340, v341, v342, v343, v344);
              v351 = objc_msgSend_copy(v442, v346, v347, v348, v349, v350);
              queue = v449[78];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = sub_18385B458;
              block[3] = &unk_1E6DDEE98;
              v464 = v439;
              block[4] = v291;
              v305 = v339;
              v453 = v305;
              v454 = v449;
              v455 = v345;
              v456 = obj;
              v457 = v442;
              v458 = v445;
              v459 = v440;
              v460 = v351;
              v461 = v448;
              v462 = v447;
              v463 = buf;
              v352 = v351;
              v353 = v345;
              dispatch_group_async(group, queue, block);
            }

            else
            {
              v305 = 0;
            }
          }

          else
          {
            v305 = v448;
            objc_sync_enter(v305);
            v311 = objc_msgSend_recognitionResultsByLocale(v451, v306, v307, v308, v309, v310);
            v316 = objc_msgSend_objectForKeyedSubscript_(v311, v312, v291, v313, v314, v315);
            objc_msgSend_setObject_forKeyedSubscript_(v305, v317, v316, v291, v318, v319);

            v325 = objc_msgSend_languageFitnessByLocale(v451, v320, v321, v322, v323, v324);
            v330 = objc_msgSend_objectForKeyedSubscript_(v325, v326, v291, v327, v328, v329);
            objc_msgSend_setObject_forKeyedSubscript_(v447, v331, v330, v291, v332, v333);

            objc_sync_exit(v305);
          }
        }

        v283 = objc_msgSend_countByEnumeratingWithState_objects_count_(v280, v284, &v465, v488, 16, v288);
      }

      while (v283);
    }

    goto LABEL_86;
  }

LABEL_87:
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (objc_msgSend_saveInputDrawings(v258, v383, v384, v385, v386, v387))
  {
    v393 = v443;
  }

  else
  {
    v393 = 0;
  }

  if (objc_msgSend_count(v448, v388, v389, v390, v391, v392))
  {
    v399 = objc_msgSend_recognitionLocales(v258, v394, v395, v396, v397, v398);
    objc_msgSend_updateMultiLocaleResultDictionary_locales_(CHMultiLocaleResultProcessor, v400, v448, v399, v401, v402);

    v258 = v449;
  }

  v403 = [CHStrokeGroupRecognitionResult alloc];
  v409 = objc_msgSend_recognitionLocales(v258, v404, v405, v406, v407, v408);
  v411 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v403, v410, v409, v448, *(*&buf[8] + 40), v447, v477[5], v445, 1, v393, 0);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v412 = qword_1EA84DC60;
  if (os_log_type_enabled(v412, OS_LOG_TYPE_DEBUG))
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v413, v414, v415, v416, v417);
    *v484 = 134218240;
    v485 = v439;
    v486 = 2048;
    v487 = v418 - v15;
    _os_log_impl(&dword_18366B000, v412, OS_LOG_TYPE_DEBUG, "Recognizer finished for stroke group %ld, duration: %0.3fs", v484, 0x16u);
  }

  _Block_object_dispose(&v476, 8);
  _Block_object_dispose(buf, 8);

LABEL_97:

  return v411;
}

id sub_18385996C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v811 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v803 = a3;
  v802 = a4;
  v804 = a5;
  v801 = v10;
  if (a1)
  {
    v11 = v10;
    v17 = objc_msgSend_mathResult(v11, v12, v13, v14, v15, v16);
    if (v17)
    {

LABEL_7:
      if ((objc_msgSend_disableMathTextSwapping(a1, v23, v24, v25, v26, v27) & 1) != 0 || (objc_msgSend_hasTextResult(v11, v77, v78, v79, v80, v81) & 1) != 0 || (objc_msgSend_mathResult(v11, v82, v83, v84, v85, v86), (v92 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend_recognitionLocales(a1, v87, v88, v89, v90, v91), v93 = objc_claimAutoreleasedReturnValue(), v99 = objc_msgSend_count(v93, v94, v95, v96, v97, v98), v93, v92, !v99))
      {
        v132 = v11;
        goto LABEL_93;
      }

      v102 = objc_msgSend_fallbackTextScriptClassificationForMathGroup_strokeClassificationResult_fromTopNCandidate_(CHStrokeClassifier, v100, v803, v804, 2, v101);
      v107 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v103, v102, v104, v105, v106);
      v796 = objc_msgSend_localeForScriptClass_(CHRecognizerConfiguration, v108, v107, v109, v110, v111);

      if (v804)
      {
        v117 = objc_msgSend_recognitionLocales(a1, v112, v113, v114, v115, v116);
        if (objc_msgSend_containsObject_(v117, v118, v796, v119, v120, v121))
        {
          v126 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v122, v102, v123, v124, v125);
          v131 = objc_msgSend_containsObject_(&unk_1EF1EC658, v127, v126, v128, v129, v130);
        }

        else
        {
          v131 = 1;
        }
      }

      else
      {
        v131 = 1;
      }

      v270 = objc_msgSend_mathResult(v11, v112, v113, v114, v115, v116);
      v276 = objc_msgSend_topTranscription(v270, v271, v272, v273, v274, v275);
      v281 = objc_msgSend_doesLatexContainEvaluationTrigger_(CHTokenizedMathResult, v277, v276, v278, v279, v280) & v131;

      if (v281)
      {
        goto LABEL_91;
      }

      v287 = objc_msgSend_mathResult(v11, v282, v283, v284, v285, v286);
      v293 = objc_msgSend_topTranscription(v287, v288, v289, v290, v291, v292);
      isTrivialTextTranscriptionAvailableForLatex = objc_msgSend_isTrivialTextTranscriptionAvailableForLatex_(CHTokenizedMathResult, v294, v293, v295, v296, v297);

      v304 = objc_msgSend_mathResult(v11, v299, v300, v301, v302, v303);
      if ((objc_msgSend_hasLowConfidence(v304, v305, v306, v307, v308, v309) & 1) == 0)
      {
        v315 = objc_msgSend_mathResult(v11, v310, v311, v312, v313, v314);
        objc_msgSend_score(v315, v316, v317, v318, v319, v320);
        if (!((v326 < 0.6) | isTrivialTextTranscriptionAvailableForLatex & 1))
        {
          v711 = objc_msgSend_mathResult(v11, v321, v322, v323, v324, v325);
          v717 = objc_msgSend_topTranscription(v711, v712, v713, v714, v715, v716);
          if (!objc_msgSend_hasPartialRangeDataDetectorEntries_(CHTokenizedMathResult, v718, v717, v719, v720, v721))
          {

LABEL_91:
            v132 = v11;
            goto LABEL_92;
          }

          v727 = objc_msgSend_mathResult(v11, v722, v723, v724, v725, v726);
          objc_msgSend_score(v727, v728, v729, v730, v731, v732);
          v734 = v733;

          if (v734 >= 0.9)
          {
            goto LABEL_91;
          }

LABEL_32:
          v798 = objc_msgSend_strokeGroupWithUpdatedStrategyIdentifier_classification_(v803, v327, @"CHBottomUpStrokeGroupingStrategy_left-to-right", 1, v328, v329);
          v330 = sub_183858504(a1, v798, v802, a6, 0);
          if ((objc_msgSend_hasTextResult(v330, v331, v332, v333, v334, v335) & 1) == 0)
          {
            if (a6)
            {
              *a6 = 0;
            }

            v409 = sub_183761FE4(2);
            if (os_log_type_enabled(v409, OS_LOG_TYPE_ERROR))
            {
              v699 = objc_msgSend_mathResult(v11, v694, v695, v696, v697, v698);
              objc_msgSend_score(v699, v700, v701, v702, v703, v704);
              *buf = 134218240;
              v806 = v710;
              v807 = 2048;
              v808 = objc_msgSend_uniqueIdentifier(v803, v705, v706, v707, v708, v709);
              _os_log_impl(&dword_18366B000, v409, OS_LOG_TYPE_ERROR, "Text recognition failed when trying to swap math result (score=%0.3f) in group %ld.", buf, 0x16u);
            }

            goto LABEL_90;
          }

          v341 = objc_msgSend_mathResult(v11, v336, v337, v338, v339, v340);
          objc_msgSend_score(v341, v342, v343, v344, v345, v346);
          v348 = v347;

          v354 = objc_msgSend_preferredLocale(v330, v349, v350, v351, v352, v353);
          objc_msgSend_languageFitnessForLocale_(v330, v355, v354, v356, v357, v358);
          v360 = v359;

          v366 = objc_msgSend_recognitionResultsByLocale(v330, v361, v362, v363, v364, v365);
          v372 = objc_msgSend_preferredLocale(v330, v367, v368, v369, v370, v371);
          v377 = objc_msgSend_objectForKeyedSubscript_(v366, v373, v372, v374, v375, v376);
          v794 = objc_msgSend_topTranscription(v377, v378, v379, v380, v381, v382);

          v388 = objc_msgSend_mathResult(v11, v383, v384, v385, v386, v387);
          v394 = objc_msgSend_topTranscription(v388, v389, v390, v391, v392, v393);
          v399 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v395, v394, v396, v397, v398);

          v791 = v399;
          if (objc_msgSend_isEqualToString_(v794, v400, v399, v401, v402, v403))
          {
            goto LABEL_34;
          }

          if (v360 < 0.4)
          {
            v409 = 0;
            goto LABEL_86;
          }

          if (vabdd_f64(v348, v360) <= 0.5)
          {
            if (v348 < 0.9)
            {
              v735 = isTrivialTextTranscriptionAvailableForLatex;
            }

            else
            {
              v735 = 0;
            }

            if (v735 != 1)
            {
LABEL_34:
              v409 = 0;
              v410 = 1;
              goto LABEL_35;
            }

            v409 = sub_18385E07C(a1, v11, v330);
            v410 = 1;
          }

          else
          {
            v409 = 0;
            v410 = v348 <= v360;
            if (v348 <= v360)
            {
LABEL_82:
              if (v410)
              {
                v736 = sub_183761FE4(2);
                if (os_log_type_enabled(v736, OS_LOG_TYPE_DEBUG))
                {
                  v742 = objc_msgSend_mathResult(v11, v737, v738, v739, v740, v741);
                  objc_msgSend_score(v742, v743, v744, v745, v746, v747);
                  v749 = v748;
                  v755 = objc_msgSend_recognitionResultsByLocale(v330, v750, v751, v752, v753, v754);
                  v761 = objc_msgSend_preferredLocale(v330, v756, v757, v758, v759, v760);
                  v766 = objc_msgSend_objectForKeyedSubscript_(v755, v762, v761, v763, v764, v765);
                  objc_msgSend_score(v766, v767, v768, v769, v770, v771);
                  *buf = 134218496;
                  v806 = v749;
                  v807 = 2048;
                  v808 = v777;
                  v809 = 2048;
                  v810 = objc_msgSend_uniqueIdentifier(v803, v772, v773, v774, v775, v776);
                  _os_log_impl(&dword_18366B000, v736, OS_LOG_TYPE_DEBUG, "Swapped math result (score=%0.3f) for text result (score=%0.3f) in group %ld.", buf, 0x20u);
                }

                v473 = v330;
                goto LABEL_89;
              }

LABEL_86:
              if (a6)
              {
                *a6 = 0;
              }

              v473 = v11;
              goto LABEL_89;
            }
          }

LABEL_35:
          if (v410)
          {
            if (!v409)
            {
              v411 = objc_msgSend_mathResult(v11, v404, v405, v406, v407, v408);
              v417 = objc_msgSend_inputStrokeIdentifiers(v11, v412, v413, v414, v415, v416);
              v423 = objc_msgSend_inputStrokeIdentifiers(v330, v418, v419, v420, v421, v422);
              v409 = objc_msgSend_mathResultWithReindexedTokens_originalStrokeIdentifiersOrdering_newStrokeIdentifiersOrdering_(CHTokenizedMathResult, v424, v411, v417, v423, v425);
            }

            v426 = [CHStrokeGroupRecognitionResult alloc];
            v788 = objc_msgSend_orderedLocales(v330, v427, v428, v429, v430, v431);
            v785 = objc_msgSend_recognitionResultsByLocale(v330, v432, v433, v434, v435, v436);
            v782 = objc_msgSend_errorsByLocale(v330, v437, v438, v439, v440, v441);
            v447 = objc_msgSend_languageFitnessByLocale(v330, v442, v443, v444, v445, v446);
            v453 = objc_msgSend_inputStrokeIdentifiers(v330, v448, v449, v450, v451, v452);
            v459 = objc_msgSend_inputDrawing(v330, v454, v455, v456, v457, v458);
            v465 = objc_msgSend_inputDrawingCutPoints(v330, v460, v461, v462, v463, v464);
            v779 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v426, v466, v788, v785, v782, v447, v409, v453, 1, v459, v465);

            v467 = sub_183761FE4(2);
            v473 = v779;
            if (os_log_type_enabled(v467, OS_LOG_TYPE_DEBUG))
            {
              v474 = objc_msgSend_recognitionResultsByLocale(v779, v468, v469, v470, v471, v472);
              v480 = objc_msgSend_preferredLocale(v779, v475, v476, v477, v478, v479);
              v485 = objc_msgSend_objectForKeyedSubscript_(v474, v481, v480, v482, v483, v484);
              objc_msgSend_score(v485, v486, v487, v488, v489, v490);
              v492 = v491;
              v498 = objc_msgSend_mathResult(v11, v493, v494, v495, v496, v497);
              objc_msgSend_score(v498, v499, v500, v501, v502, v503);
              *buf = 134218496;
              v806 = v492;
              v807 = 2048;
              v808 = v509;
              v809 = 2048;
              v810 = objc_msgSend_uniqueIdentifier(v803, v504, v505, v506, v507, v508);
              _os_log_impl(&dword_18366B000, v467, OS_LOG_TYPE_DEBUG, "Added complementary text result (score=%0.3f) running text recognition as alternative to math result (score=%0.3f) in group %ld.", buf, 0x20u);
            }

LABEL_89:
            v11 = v473;
LABEL_90:

            goto LABEL_91;
          }

          goto LABEL_82;
        }
      }

      goto LABEL_32;
    }

    if (!objc_msgSend_hasTextResult(v11, v18, v19, v20, v21, v22))
    {
      goto LABEL_7;
    }

    v796 = objc_msgSend_preferredLocale(v11, v23, v24, v25, v26, v27);
    v33 = objc_msgSend_recognitionResultsByLocale(v11, v28, v29, v30, v31, v32);
    v38 = objc_msgSend_objectForKeyedSubscript_(v33, v34, v796, v35, v36, v37);
    v44 = objc_msgSend_topTranscription(v38, v39, v40, v41, v42, v43);

    v797 = v44;
    v48 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v44, v45, @" ", &stru_1EF1C0318, v46, v47);
    v54 = objc_msgSend_ch_latinCharacterSet(MEMORY[0x1E696AB08], v49, v50, v51, v52, v53);
    v790 = sub_1837A4F0C(v48, v54);

    isTextTranscriptionVariableAssignment_outVariable = objc_msgSend_isTextTranscriptionVariableAssignment_outVariable_(CHTokenizedTextResult, v55, v44, 0, v56, v57);
    v63 = objc_msgSend_recognitionLocales(a1, v58, v59, v60, v61, v62);
    isVerticalMathEntryWithUnitForTextTranscription_locales = objc_msgSend_isVerticalMathEntryWithUnitForTextTranscription_locales_(CHTokenizedMathResult, v64, v44, v63, v65, v66);

    if (objc_msgSend_hasSuffix_(v44, v68, @"=", v69, v70, v71))
    {
      v76 = 1;
    }

    else if ((objc_msgSend_hasSuffix_(v44, v72, @":", v73, v74, v75) & 1) != 0 || (objc_msgSend_hasSuffix_(v44, v72, @";", v134, v74, v75) & 1) != 0 || (objc_msgSend_hasSuffix_(v44, v72, @"i", v134, v74, v75) & 1) != 0 || (objc_msgSend_hasSuffix_(v44, v72, @"t", v134, v74, v75) & 1) != 0 || objc_msgSend_hasSuffix_(v44, v72, @"-", v134, v74, v75))
    {
      v135 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v804, v72, v133, v134, v74, v75);
      v141 = objc_msgSend_inputStrokeIdentifiers(v11, v136, v137, v138, v139, v140);
      v147 = objc_msgSend_lastObject(v141, v142, v143, v144, v145, v146);
      v152 = objc_msgSend_objectForKeyedSubscript_(v135, v148, v147, v149, v150, v151);

      v158 = objc_msgSend_probabilityByScriptClassifications(v152, v153, v154, v155, v156, v157);
      v163 = objc_msgSend_objectForKeyedSubscript_(v158, v159, &unk_1EF1ED978, v160, v161, v162);
      objc_msgSend_floatValue(v163, v164, v165, v166, v167, v168);
      v170 = v169;
      v176 = objc_msgSend_probabilityByScriptClassifications(v152, v171, v172, v173, v174, v175);
      v181 = objc_msgSend_objectForKeyedSubscript_(v176, v177, &unk_1EF1ED990, v178, v179, v180);
      objc_msgSend_floatValue(v181, v182, v183, v184, v185, v186);
      v188 = (v170 + v187);

      if (v188 <= 0.2)
      {
        v194 = objc_msgSend_inputStrokeIdentifiers(v11, v189, v190, v191, v192, v193);
        v200 = objc_msgSend_count(v194, v195, v196, v197, v198, v199);

        if (v200 < 2)
        {
          v76 = 0;
        }

        else
        {
          v206 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v804, v201, v202, v203, v204, v205);
          v787 = objc_msgSend_inputStrokeIdentifiers(v11, v207, v208, v209, v210, v211);
          v217 = objc_msgSend_inputStrokeIdentifiers(v11, v212, v213, v214, v215, v216);
          v223 = objc_msgSend_count(v217, v218, v219, v220, v221, v222);
          v228 = objc_msgSend_objectAtIndexedSubscript_(v787, v224, v223 - 2, v225, v226, v227);
          v233 = objc_msgSend_objectForKeyedSubscript_(v206, v229, v228, v230, v231, v232);

          v239 = objc_msgSend_probabilityByScriptClassifications(v233, v234, v235, v236, v237, v238);
          v244 = objc_msgSend_objectForKeyedSubscript_(v239, v240, &unk_1EF1ED978, v241, v242, v243);
          objc_msgSend_floatValue(v244, v245, v246, v247, v248, v249);
          v251 = v250;
          v257 = objc_msgSend_probabilityByScriptClassifications(v233, v252, v253, v254, v255, v256);
          v262 = objc_msgSend_objectForKeyedSubscript_(v257, v258, &unk_1EF1ED990, v259, v260, v261);
          objc_msgSend_floatValue(v262, v263, v264, v265, v266, v267);
          v269 = (v251 + v268);

          v76 = v269 > 0.2;
          v152 = v233;
        }
      }

      else
      {
        v76 = 1;
      }
    }

    else
    {
      v76 = 0;
    }

    if ((v790 & (v76 | isVerticalMathEntryWithUnitForTextTranscription_locales | isTextTranscriptionVariableAssignment_outVariable)) != 1)
    {
      v132 = v11;
LABEL_62:

LABEL_92:
      goto LABEL_93;
    }

    v786 = objc_msgSend_strokeGroupWithUpdatedStrategyIdentifier_classification_(v803, v72, @"CHMathStrokeGroupingStrategy", 3, v74, v75);
    v792 = sub_183858504(a1, v786, v802, a6, 0);
    v515 = objc_msgSend_mathResult(v792, v510, v511, v512, v513, v514);
    v521 = objc_msgSend_topTranscription(v515, v516, v517, v518, v519, v520);
    v526 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v522, v521, v523, v524, v525);

    v789 = v526;
    hasSuffix = objc_msgSend_hasSuffix_(v526, v527, @"=", v528, v529, v530);
    v537 = objc_msgSend_orderedLocales(v11, v532, v533, v534, v535, v536);
    isTextTranscriptionUnitConversion_locales = objc_msgSend_isTextTranscriptionUnitConversion_locales_(CHTokenizedTextResult, v538, v797, v537, v539, v540);

    v546 = objc_msgSend_orderedLocales(v11, v541, v542, v543, v544, v545);
    v780 = hasSuffix;
    v550 = objc_msgSend_isTextTranscriptionUnitConversion_locales_(CHTokenizedTextResult, v547, v526, v546, v548, v549);

    isTextTranscriptionInMathAlphabet = objc_msgSend_isTextTranscriptionInMathAlphabet_(CHTokenizedMathResult, v551, v797, v552, v553, v554);
    v559 = objc_msgSend_isTextTranscriptionVariableAssignment_outVariable_(CHTokenizedTextResult, v556, v526, 0, v557, v558);
    v565 = objc_msgSend_mathResult(v792, v560, v561, v562, v563, v564);
    if (objc_msgSend_hasLowConfidence(v565, v566, v567, v568, v569, v570))
    {
    }

    else
    {
      v576 = objc_msgSend_mathResult(v792, v571, v572, v573, v574, v575);
      objc_msgSend_score(v576, v577, v578, v579, v580, v581);
      v583 = v582;
      v589 = objc_msgSend_recognitionResultsByLocale(v11, v584, v585, v586, v587, v588);
      v594 = objc_msgSend_objectForKeyedSubscript_(v589, v590, v796, v591, v592, v593);
      objc_msgSend_score(v594, v595, v596, v597, v598, v599);
      v601 = v600 * 0.7;

      if (v583 > v601)
      {
        v602 = isTextTranscriptionUnitConversion_locales;
        v603 = (v76 ^ v780 | isTextTranscriptionUnitConversion_locales) ^ 1;
        goto LABEL_50;
      }
    }

    v603 = 0;
    v602 = isTextTranscriptionUnitConversion_locales;
LABEL_50:
    if (v602 & isTextTranscriptionInMathAlphabet & v550 & 1) != 0 || (v603 & 1) != 0 || (isTextTranscriptionInMathAlphabet & isTextTranscriptionVariableAssignment_outVariable & v559)
    {
      v606 = [CHStrokeGroupRecognitionResult alloc];
      v612 = objc_msgSend_orderedLocales(v11, v607, v608, v609, v610, v611);
      v800 = objc_msgSend_recognitionResultsByLocale(v11, v613, v614, v615, v616, v617);
      v795 = objc_msgSend_errorsByLocale(v11, v618, v619, v620, v621, v622);
      v784 = objc_msgSend_languageFitnessByLocale(v11, v623, v624, v625, v626, v627);
      v781 = objc_msgSend_mathResult(v792, v628, v629, v630, v631, v632);
      v638 = objc_msgSend_inputStrokeIdentifiers(v11, v633, v634, v635, v636, v637);
      v644 = objc_msgSend_inputDrawing(v11, v639, v640, v641, v642, v643);
      v650 = objc_msgSend_inputDrawingCutPoints(v11, v645, v646, v647, v648, v649);
      v132 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v606, v651, v612, v800, v795, v784, v781, v638, 1, v644, v650);

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v604 = v786;
      v605 = v789;
      v652 = qword_1EA84DC60;
      if (os_log_type_enabled(v652, OS_LOG_TYPE_DEBUG))
      {
        v658 = objc_msgSend_mathResult(v11, v653, v654, v655, v656, v657);
        objc_msgSend_score(v658, v659, v660, v661, v662, v663);
        v665 = v664;
        v671 = objc_msgSend_recognitionResultsByLocale(v132, v666, v667, v668, v669, v670);
        v677 = objc_msgSend_preferredLocale(v132, v672, v673, v674, v675, v676);
        v682 = objc_msgSend_objectForKeyedSubscript_(v671, v678, v677, v679, v680, v681);
        objc_msgSend_score(v682, v683, v684, v685, v686, v687);
        *buf = 134218496;
        v806 = v665;
        v807 = 2048;
        v808 = v693;
        v809 = 2048;
        v810 = objc_msgSend_uniqueIdentifier(v803, v688, v689, v690, v691, v692);
        _os_log_impl(&dword_18366B000, v652, OS_LOG_TYPE_DEBUG, "Added complementary math result (score=%0.3f) running math recognition as alternative to text result (score=%0.3f) in group %ld.", buf, 0x20u);
      }
    }

    else
    {
      if (a6)
      {
        *a6 = 0;
      }

      v132 = v11;
      v604 = v786;
      v605 = v789;
    }

    goto LABEL_62;
  }

  v132 = 0;
LABEL_93:

  return v132;
}

uint64_t sub_18385AFE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18385AFF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = *MEMORY[0x1E69E9840];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3, a4, a5, a6);
  v8 = v7;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v9 = qword_1EA84DC60;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 72);
    *buf = 134217984;
    v74 = v10;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEBUG, "Beginning math recognizer request for stroke group %ld", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = *(a1 + 32);
    objc_msgSend_setDeclaredVariables_(v12, v42, *(*(a1 + 40) + 8), v43, v44, v45);
    v51 = objc_msgSend_recognitionLocales(*(a1 + 40), v46, v47, v48, v49, v50);
    objc_msgSend_setLocales_(v12, v52, v51, v53, v54, v55);

    v56 = *(a1 + 48);
    v57 = *(a1 + 56);
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = sub_18385B450;
    v71[3] = &unk_1E6DDEE48;
    v71[4] = *(a1 + 40);
    v60 = objc_msgSend_mathRecognitionResultForDrawing_options_shouldCancel_(v12, v58, v56, v57, v71, v59);
    v61 = *(*(a1 + 64) + 8);
    v62 = *(v61 + 40);
    *(v61 + 40) = v60;

    goto LABEL_17;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v11 = qword_1EA84DC60;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = qword_1EA84DC60;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
LABEL_8:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEBUG, "Running remote recognition", buf, 2u);
  }

LABEL_9:

  v12 = *(a1 + 32);
  objc_msgSend_setDeclaredVariables_(v12, v13, *(*(a1 + 40) + 8), v14, v15, v16);
  v22 = objc_msgSend_recognitionLocales(*(a1 + 40), v17, v18, v19, v20, v21);
  objc_msgSend_setLocales_(v12, v23, v22, v24, v25, v26);

  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v72 = 0;
  v31 = objc_msgSend_mathRecognitionResultForDrawing_options_error_(v12, v29, v27, v28, &v72, v30);
  v32 = v72;
  v33 = *(*(a1 + 64) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v31;

  if (v32)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v35 = qword_1EA84DC70;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_msgSend_description(v32, v36, v37, v38, v39, v40);
      *buf = 138412290;
      v74 = v41;
      _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_ERROR, "Remote Recognition error: %@", buf, 0xCu);
    }
  }

LABEL_17:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v63 = qword_1EA84DC60;
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v63 = qword_1EA84DC60;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
LABEL_19:
    v69 = *(a1 + 72);
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v64, v65, v66, v67, v68);
    *buf = 134218240;
    v74 = v69;
    v75 = 2048;
    v76 = v70 - v8;
    _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_DEBUG, "Finished math recognizer request for stroke group %ld. Duration: %0.3f", buf, 0x16u);
  }

LABEL_20:
}

void sub_18385B458(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v127 = *MEMORY[0x1E69E9840];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3, a4, a5, a6);
  v8 = v7;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v9 = qword_1EA84DC60;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 128);
    v16 = objc_msgSend_localeIdentifier(*(a1 + 32), v10, v11, v12, v13, v14);
    *buf = 134218242;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEBUG, "Beginning text recognizer request for stroke group %ld, locale %@", buf, 0x16u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_msgSend_setDeclaredVariables_(*(a1 + 40), v17, *(*(a1 + 48) + 8), v19, v20, v21);
    v23 = objc_opt_class();
    v28 = objc_msgSend_maxRequestStrokeCountForLocale_(v23, v24, *(a1 + 32), v25, v26, v27);
  }

  else
  {
    v28 = objc_msgSend_strokeCount(*(a1 + 56), v17, v18, v19, v20, v21);
  }

  v29 = v28;
  if (*(a1 + 64))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = sub_18385BB10(*(a1 + 48), *(a1 + 64), *(a1 + 72));
      v34 = 0;
      goto LABEL_15;
    }
  }

  v35 = *(a1 + 80);
  objc_sync_enter(v35);
  v41 = objc_msgSend_copy(*(a1 + 80), v36, v37, v38, v39, v40);
  objc_sync_exit(v35);

  v42 = *(a1 + 48);
  v43 = *(a1 + 56);
  v45 = *(a1 + 32);
  v44 = *(a1 + 40);
  v46 = *(a1 + 88);
  v47 = *(a1 + 96);
  v123 = 0;
  v48 = sub_18385C18C(v42, v43, v44, isKindOfClass & 1, v45, v29, v46, v47, v41, &v123);
  v34 = v123;
  v33 = sub_18385BB10(*(a1 + 48), v48, *(a1 + 96));

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v49 = qword_1EA84DC60;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v49 = qword_1EA84DC60;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
LABEL_13:
    v55 = *(a1 + 128);
    v56 = objc_msgSend_localeIdentifier(*(a1 + 32), v50, v51, v52, v53, v54);
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v57, v58, v59, v60, v61);
    *buf = 134218498;
    *&buf[4] = v55;
    *&buf[12] = 2112;
    *&buf[14] = v56;
    v125 = 2048;
    v126 = v62 - v8;
    _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_DEBUG, "Finished text recognizer request for stroke group %ld, locale %@. Duration: %0.3f", buf, 0x20u);
  }

LABEL_14:

LABEL_15:
  if (v33)
  {
    objc_msgSend_languageFitnessForLocale_recognitionMode_(v33, v30, *(a1 + 32), 6, v31, v32);
    *buf = v63;
    *&buf[8] = v64;
    v65 = *(a1 + 80);
    objc_sync_enter(v65);
    v71 = objc_msgSend_copy(*(a1 + 80), v66, v67, v68, v69, v70);
    objc_msgSend_setInputStrokeIdentifiers_(v33, v72, v71, v73, v74, v75);

    v81 = objc_msgSend_inputStrokeIdentifiers(v33, v76, v77, v78, v79, v80);
    v87 = objc_msgSend_count(v81, v82, v83, v84, v85, v86) == 0;

    if (v87)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v93 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *v122 = 0;
        _os_log_impl(&dword_18366B000, v93, OS_LOG_TYPE_ERROR, "CHRecognitionSessionTask can not produce a text result with no stroke identifiers.", v122, 2u);
      }
    }

    v94 = objc_msgSend_inputStrokeIdentifiers(v33, v88, v89, v90, v91, v92);
    v100 = objc_msgSend_count(v94, v95, v96, v97, v98, v99) == 0;

    if (v100)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v101 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
      {
        *v122 = 0;
        _os_log_impl(&dword_18366B000, v101, OS_LOG_TYPE_FAULT, "CHRecognitionSessionTask can not produce a text result with no stroke identifiers.", v122, 2u);
      }
    }

    objc_sync_exit(v65);

    v102 = *(a1 + 104);
    objc_sync_enter(v102);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 104), v103, v33, *(a1 + 32), v104, v105);
    v109 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v106, buf, "{?=dd}", v107, v108);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 112), v110, v109, *(a1 + 32), v111, v112);

    objc_sync_exit(v102);
    goto LABEL_36;
  }

  if (qword_1EA84DC48 == -1)
  {
    v113 = qword_1EA84DC60;
    if (!os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v113 = qword_1EA84DC60;
  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
  {
LABEL_31:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v113, OS_LOG_TYPE_ERROR, "CHTokenizedTextResult is nil", buf, 2u);
  }

LABEL_32:

  if (v34)
  {
    v114 = *(a1 + 104);
    objc_sync_enter(v114);
    v118 = *(*(*(a1 + 120) + 8) + 40);
    if (!v118)
    {
      v119 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v120 = *(*(a1 + 120) + 8);
      v121 = *(v120 + 40);
      *(v120 + 40) = v119;

      v118 = *(*(*(a1 + 120) + 8) + 40);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v118, v115, v34, *(a1 + 32), v116, v117);
    objc_sync_exit(v114);
  }

LABEL_36:
}

void sub_18385BA30(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

id sub_18385BB10(uint64_t a1, void *a2, void *a3)
{
  v128 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v118 = a3;
  if (!a1)
  {
    v107 = 0;
    goto LABEL_33;
  }

  v114 = objc_msgSend_transcriptionPaths(v5, v6, v7, v8, v9, v10);
  v21 = objc_msgSend_rawTranscriptionPath(v5, v11, v12, v13, v14, v15);
  if (!v21)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v39 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_ERROR, "Raw path not found in the given result.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v38 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v38 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_FAULT, "Raw path not found in the given result.", buf, 2u);
    goto LABEL_19;
  }

  v22 = objc_msgSend_transcriptionPaths(v5, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_doGivenPaths_coverAllTokensInPath_(v5, v23, v22, v21, v24, v25);

  if ((v26 & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v32 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_ERROR, "Transcription paths in the given result don't cover all the raw tokens.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v33 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

        objc_msgSend_arrayByAddingObject_(v114, v34, v21, v35, v36, v37);
        v114 = v38 = v114;
LABEL_19:

        goto LABEL_20;
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
    _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_FAULT, "Transcription paths in the given result don't cover all the raw tokens.", buf, 2u);
    goto LABEL_11;
  }

LABEL_20:
  v40 = objc_msgSend_originalTokens(v5, v27, v28, v29, v30, v31, v21);
  v46 = objc_msgSend_count(v40, v41, v42, v43, v44, v45) == 0;

  if (!v46)
  {
    v52 = objc_msgSend_refinableTranscriptionPath(v5, v47, v48, v49, v50, v51);
    v57 = objc_msgSend_arrayByAddingObject_(v114, v53, v52, v54, v55, v56);

    v114 = v57;
  }

  v115 = objc_msgSend_array(MEMORY[0x1E695DF70], v47, v48, v49, v50, v51);
  v117 = objc_msgSend_originalTokens(v5, v58, v59, v60, v61, v62);
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v114;
  v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v122, v127, 16, v64);
  if (v70)
  {
    v71 = *v123;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v123 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*(&v122 + 1) + 8 * i);
        v74 = objc_msgSend_array(MEMORY[0x1E695DF70], v65, v66, v67, v68, v69);
        v80 = objc_msgSend_tokenColumnCount(v5, v75, v76, v77, v78, v79);
        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = sub_18385DDC4;
        v119[3] = &unk_1E6DDEEC0;
        v120 = v118;
        v81 = v74;
        v121 = v81;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v5, v82, v73, 0, v80, v119);
        v88 = objc_msgSend_refinableTranscriptionPath(v5, v83, v84, v85, v86, v87);
        LODWORD(v73) = objc_msgSend_isEqual_(v73, v89, v88, v90, v91, v92);

        if (v73)
        {
          v97 = v81;

          v117 = v97;
        }

        else
        {
          objc_msgSend_addObject_(v115, v93, v81, v94, v95, v96);
        }
      }

      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v122, v127, 16, v69);
    }

    while (v70);
  }

  v103 = objc_msgSend_transcriptionPathScores(v5, v98, v99, v100, v101, v102);
  v107 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v5, v104, v115, v103, v105, v106);

  objc_msgSend_setOriginalTokens_(v107, v108, v117, v109, v110, v111);
LABEL_33:

  return v107;
}

id sub_18385C18C(void *a1, void *a2, void *a3, int a4, void *a5, unint64_t a6, void *a7, void *a8, void *a9, void *a10)
{
  v733 = *MEMORY[0x1E69E9840];
  v647 = a2;
  v649 = a3;
  v645 = a5;
  v641 = a7;
  v642 = a8;
  v643 = a9;
  v639 = a1;
  if (!a1)
  {
    v562 = 0;
    goto LABEL_149;
  }

  v632 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18, v19);
  v663 = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22, v23, v24);
  v25 = MEMORY[0x1E696AD50];
  v31 = objc_msgSend_strokeCount(v647, v26, v27, v28, v29, v30);
  v653 = objc_msgSend_indexSetWithIndexesInRange_(v25, v32, 0, v31, v33, v34);
  v646 = objc_msgSend_strokeCount(v647, v35, v36, v37, v38, v39);
  v644 = 0;
  v648 = 0;
  v637 = 0;
  v638 = 0;
  v635 = 1;
  while (objc_msgSend_count(v653, v40, v41, v42, v43, v44))
  {
    v45 = v647;
    v46 = v642;
    v656 = v643;
    if (v646 <= a6)
    {
      v654 = v653;
      v655 = v45;
      v77 = 0;
      v651 = v46;
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v726 = 0x2020000000uLL;
      v52 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v47, v48, v49, v50, v51);
      v58 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v53, v54, v55, v56, v57);
      v713[0] = MEMORY[0x1E69E9820];
      v713[1] = 3221225472;
      v713[2] = sub_18385E8AC;
      v713[3] = &unk_1E6DDEEE8;
      p_buf = &buf;
      v717 = a6;
      v59 = v52;
      v714 = v59;
      v671 = v58;
      v715 = v671;
      v654 = v59;
      objc_msgSend_enumerateIndexesUsingBlock_(v653, v60, v713, v61, v62, v63);
      v655 = objc_msgSend_drawingWithStrokesFromIndexSet_(v45, v64, v59, v65, v66, v67);

      v651 = objc_msgSend_drawingWithStrokesFromIndexSet_(v46, v68, v59, v69, v70, v71);

      v76 = objc_msgSend_objectsAtIndexes_(v656, v72, v59, v73, v74, v75);

      _Block_object_dispose(&buf, 8);
      v656 = v76;
      v77 = v671;
    }

    v672 = v77;
    if (_os_feature_enabled_impl())
    {
      hasSupportForPrincipalPoints = objc_msgSend_hasSupportForPrincipalPoints_(CHRecognizerConfiguration, v78, v645, v79, v80, v81);
      v670 = v45;
      v83 = qword_1EA84DC48 == -1;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      hasSupportForPrincipalPoints = 0;
      v670 = v45;
      v83 = qword_1EA84DC48 == -1;
      if (!a4)
      {
LABEL_9:
        if (!v83)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v84 = qword_1EA84DC60;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_18366B000, v84, OS_LOG_TYPE_DEBUG, "Running local recognition", &buf, 2u);
        }

        v85 = v649;
        if (hasSupportForPrincipalPoints)
        {
          v87 = &v710;
        }

        else
        {
          v87 = 0;
        }

        if (hasSupportForPrincipalPoints)
        {
          v710 = 0;
        }

        v709[0] = MEMORY[0x1E69E9820];
        v709[1] = 3221225472;
        v709[2] = sub_18385E98C;
        v709[3] = &unk_1E6DDEE48;
        v709[4] = v639;
        v658 = objc_msgSend_textRecognitionResultForDrawing_options_writingStatistics_principalPoints_shouldCancel_(v85, v86, v655, v641, 0, v87, v709);
        if (hasSupportForPrincipalPoints)
        {
          v652 = v710;
        }

        else
        {
          v652 = 0;
        }

        goto LABEL_41;
      }
    }

    if (!v83)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v88 = qword_1EA84DC60;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_18366B000, v88, OS_LOG_TYPE_DEBUG, "Running remote recognition", &buf, 2u);
    }

    v89 = v649;
    if (hasSupportForPrincipalPoints)
    {
      v91 = &v712;
    }

    else
    {
      v91 = 0;
    }

    if (hasSupportForPrincipalPoints)
    {
      v712 = 0;
    }

    v711 = v648;
    v658 = objc_msgSend_textRecognitionResultForDrawing_options_principalPoints_error_(v89, v90, v655, v641, v91, &v711);
    if (hasSupportForPrincipalPoints)
    {
      v652 = v712;
    }

    else
    {
      v652 = 0;
    }

    v92 = v711;

    if (v92)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v93 = qword_1EA84DC70;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        v99 = objc_msgSend_description(v92, v94, v95, v96, v97, v98);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v99;
        _os_log_impl(&dword_18366B000, v93, OS_LOG_TYPE_ERROR, "Remote Recognition error: %@", &buf, 0xCu);
      }

      v648 = v92;
    }

    else
    {
      v648 = 0;
    }

LABEL_41:

    if (v658)
    {
      objc_msgSend_setInputStrokeIdentifiers_(v658, v100, v656, v101, v102, v103);
      objc_msgSend_setLocale_(v658, v104, v645, v105, v106, v107);
      if (v652)
      {
        shouldUseRefinablePathForReflowTokensForLocale = objc_msgSend_shouldUseRefinablePathForReflowTokensForLocale_(CHRecognizerConfiguration, v108, v645, v110, v111, v112);
        v682 = v652;
        v113 = v651;
        v114 = MEMORY[0x1E695DF70];
        v120 = objc_msgSend_strokeCount(v113, v115, v116, v117, v118, v119);
        v130 = objc_msgSend_arrayWithCapacity_(v114, v121, v120, v122, v123, v124);
        for (i = 0; i < objc_msgSend_strokeCount(v113, v125, v126, v127, v128, v129); ++i)
        {
          v137 = MEMORY[0x1E695DF70];
          v138 = objc_msgSend_count(v682, v132, v133, v134, v135, v136);
          v148 = objc_msgSend_arrayWithCapacity_(v137, v139, v138, v140, v141, v142);
          for (j = 0; j < objc_msgSend_count(v682, v143, v144, v145, v146, v147); ++j)
          {
            v155 = objc_msgSend_array(MEMORY[0x1E695DF70], v150, v151, v152, v153, v154);
            objc_msgSend_addObject_(v148, v156, v155, v157, v158, v159);
          }

          objc_msgSend_addObject_(v130, v150, v148, v152, v153, v154);
        }

        for (k = 0; k < objc_msgSend_count(v682, v132, v133, v134, v135, v136); ++k)
        {
          v165 = objc_msgSend_objectAtIndexedSubscript_(v682, v161, k, v162, v163, v164);
          v720 = 0u;
          v721 = 0u;
          v718 = 0u;
          v719 = 0u;
          v166 = v165;
          v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v167, &v718, &buf, 16, v168);
          if (v173)
          {
            v174 = *v719;
            do
            {
              for (m = 0; m != v173; ++m)
              {
                if (*v719 != v174)
                {
                  objc_enumerationMutation(v166);
                }

                v176 = *(*(&v718 + 1) + 8 * m);
                v177 = objc_msgSend_indexAtPosition_(v176, v169, 0, v170, v171, v172);
                v182 = objc_msgSend_indexAtPosition_(v176, v178, 1, v179, v180, v181);
                v186 = objc_msgSend_pointForStrokeIndex_pointIndex_(v113, v183, v177, v182, v184, v185);
                v194 = sub_1837A9A94(v192, v193, v186, v187, v188, v189, v190, v191);
                v199 = objc_msgSend_objectAtIndexedSubscript_(v130, v195, v177, v196, v197, v198);
                v204 = objc_msgSend_objectAtIndexedSubscript_(v199, v200, k, v201, v202, v203);
                objc_msgSend_addObject_(v204, v205, v194, v206, v207, v208);
              }

              v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v169, &v718, &buf, 16, v172);
            }

            while (v173);
          }
        }

        v217 = sub_18385E994(v639, v130, v658, shouldUseRefinablePathForReflowTokensForLocale);

        v658 = v217;
        goto LABEL_66;
      }

      if (hasSupportForPrincipalPoints)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v130 = qword_1EA84DC58;
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          v223 = objc_msgSend_topTranscription(v658, v218, v219, v220, v221, v222);
          LODWORD(buf) = 138739971;
          *(&buf + 4) = v223;
          _os_log_impl(&dword_18366B000, v130, OS_LOG_TYPE_DEFAULT, "Principal Lines not added from model for text result with transcription %{sensitive}@", &buf, 0xCu);
        }

LABEL_66:
      }

      if (v646 <= a6)
      {
        v554 = v658;

        v216 = v654;
        v635 = 0;
      }

      else
      {
        v224 = objc_msgSend_tokenColumns(v658, v108, v109, v110, v111, v112);
        v230 = objc_msgSend_count(v224, v225, v226, v227, v228, v229);

        v634 = v230 - 1;
        if (objc_msgSend_count(v654, v231, v232, v233, v234, v235) >= a6)
        {
          v241 = objc_msgSend_tokenColumns(v658, v236, v237, v238, v239, v240);
          v247 = objc_msgSend_count(v241, v242, v243, v244, v245, v246) > 2;

          if (v247)
          {
            v248 = objc_msgSend_tokenColumns(v658, v236, v237, v238, v239, v240);
            v254 = objc_msgSend_count(v248, v249, v250, v251, v252, v253);

            v634 = v254 - 3;
          }
        }

        v260 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v236, v237, v238, v239, v240);
        v664 = v260;
        if ((v634 & 0x8000000000000000) == 0)
        {
          v633 = 0;
          do
          {
            v261 = objc_msgSend_tokenColumns(v658, v255, v256, v257, v258, v259);
            v636 = objc_msgSend_objectAtIndexedSubscript_(v261, v262, v633, v263, v264, v265);

            v660 = objc_alloc_init(CHMutableTokenizedResultColumn);
            v707 = 0u;
            v708 = 0u;
            v705 = 0u;
            v706 = 0u;
            obj = objc_msgSend_textTokenRows(v636, v266, v267, v268, v269, v270);
            v661 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v271, &v705, v724, 16, v272);
            if (v661)
            {
              v659 = *v706;
              do
              {
                for (n = 0; n != v661; ++n)
                {
                  if (*v706 != v659)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v278 = *(*(&v705 + 1) + 8 * n);
                  v279 = objc_msgSend_array(MEMORY[0x1E695DF70], v273, v274, v275, v276, v277);
                  v703 = 0u;
                  v704 = 0u;
                  v701 = 0u;
                  v702 = 0u;
                  v665 = v278;
                  v668 = v279;
                  v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v665, v280, &v701, v723, 16, v281);
                  if (v282)
                  {
                    v666 = *v702;
                    do
                    {
                      v673 = v282;
                      for (ii = 0; ii != v673; ++ii)
                      {
                        if (*v702 != v666)
                        {
                          objc_enumerationMutation(v665);
                        }

                        v289 = *(*(&v701 + 1) + 8 * ii);
                        v290 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v283, v284, v285, v286, v287);
                        v296 = objc_msgSend_strokeIndexes(v289, v291, v292, v293, v294, v295);
                        v698[0] = MEMORY[0x1E69E9820];
                        v698[1] = 3221225472;
                        v698[2] = sub_18385ED14;
                        v698[3] = &unk_1E6DDE028;
                        v699 = v672;
                        v297 = v290;
                        v700 = v297;
                        objc_msgSend_enumerateIndexesUsingBlock_(v296, v298, v698, v299, v300, v301);

                        objc_msgSend_boundsForStrokeIndexes_(v670, v302, v297, v303, v304, v305);
                        v307 = v306;
                        v309 = v308;
                        v311 = v310;
                        v313 = v312;
                        v314 = [CHTokenizedTextResultToken alloc];
                        v320 = objc_msgSend_string(v289, v315, v316, v317, v318, v319);
                        v326 = objc_msgSend_wordID(v289, v321, v322, v323, v324, v325);
                        objc_msgSend_recognitionScore(v289, v327, v328, v329, v330, v331);
                        v333 = v332;
                        objc_msgSend_recognitionScore(v289, v334, v335, v336, v337, v338);
                        v340 = v339;
                        objc_msgSend_combinedScore(v289, v341, v342, v343, v344, v345);
                        v347 = v346;
                        objc_msgSend_alignmentScore(v289, v348, v349, v350, v351, v352);
                        v354 = v353;
                        v360 = objc_msgSend_properties(v289, v355, v356, v357, v358, v359);
                        v366 = objc_msgSend_recognizerSourceLocale(v289, v361, v362, v363, v364, v365);
                        v675 = v354;
                        v677 = v347;
                        v680 = v340;
                        v683 = v333;
                        v372 = objc_msgSend_inputSources(v289, v367, v368, v369, v370, v371);
                        v378 = objc_msgSend_substrokeCount(v289, v373, v374, v375, v376, v377);
                        objc_msgSend_originalBounds(v289, v379, v380, v381, v382, v383);
                        v390 = v389;
                        v392 = v391;
                        v394 = v393;
                        v396 = v395;
                        if (v289)
                        {
                          objc_msgSend_principalLines(v289, v384, v385, v386, v387, v388);
                        }

                        else
                        {
                          v731 = 0u;
                          v732 = 0u;
                          v729 = 0u;
                          v730 = 0u;
                          v727 = 0u;
                          v728 = 0u;
                          buf = 0u;
                          v726 = 0u;
                        }

                        v397 = objc_msgSend_principalPoints(v289, v384, v385, v386, v387, v388);
                        v399 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v314, v398, v320, v297, v326, v360, v366, v372, v683, v680, v677, v675, v307, v309, v311, v313, v378, v390, v392, v394, v396, &buf, v397);

                        objc_msgSend_addObject_(v668, v400, v399, v401, v402, v403);
                      }

                      v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v665, v283, &v701, v723, 16, v287);
                    }

                    while (v282);
                  }

                  objc_msgSend_addTokenRowWithTokens_(v660, v404, v668, v405, v406, v407);
                }

                v661 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v273, &v705, v724, 16, v277);
              }

              while (v661);
            }

            objc_msgSend_addObject_(v632, v408, v660, v409, v410, v411);
            v417 = objc_msgSend_strokeIndexes(v636, v412, v413, v414, v415, v416);
            objc_msgSend_addIndexes_(v664, v418, v417, v419, v420, v421);

            v83 = v633++ == v634;
            v260 = v664;
          }

          while (!v83);
        }

        v696 = 0u;
        v697 = 0u;
        v695 = 0u;
        v694 = 0u;
        v422 = objc_msgSend_originalTokens(v658, v255, v256, v257, v258, v259);
        v425 = objc_msgSend_countByEnumeratingWithState_objects_count_(v422, v423, &v694, v722, 16, v424);
        if (v425)
        {
          v681 = *v695;
          v667 = v422;
          do
          {
            v684 = v425;
            for (jj = 0; jj != v684; ++jj)
            {
              if (*v695 != v681)
              {
                objc_enumerationMutation(v667);
              }

              v432 = *(*(&v694 + 1) + 8 * jj);
              v433 = objc_msgSend_strokeIndexes(v432, v426, v427, v428, v429, v430);
              v438 = objc_msgSend_containsIndexes_(v260, v434, v433, v435, v436, v437);

              if (v438)
              {
                v439 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v426, v427, v428, v429, v430);
                v445 = objc_msgSend_strokeIndexes(v432, v440, v441, v442, v443, v444);
                v691[0] = MEMORY[0x1E69E9820];
                v691[1] = 3221225472;
                v691[2] = sub_18385EDB8;
                v691[3] = &unk_1E6DDE028;
                v692 = v672;
                v446 = v439;
                v693 = v446;
                objc_msgSend_enumerateIndexesUsingBlock_(v445, v447, v691, v448, v449, v450);

                objc_msgSend_boundsForStrokeIndexes_(v670, v451, v446, v452, v453, v454);
                v456 = v455;
                v458 = v457;
                v460 = v459;
                v462 = v461;
                v463 = [CHTokenizedTextResultToken alloc];
                v469 = objc_msgSend_string(v432, v464, v465, v466, v467, v468);
                v475 = objc_msgSend_wordID(v432, v470, v471, v472, v473, v474);
                objc_msgSend_recognitionScore(v432, v476, v477, v478, v479, v480);
                v482 = v481;
                objc_msgSend_recognitionScore(v432, v483, v484, v485, v486, v487);
                v489 = v488;
                objc_msgSend_combinedScore(v432, v490, v491, v492, v493, v494);
                v496 = v495;
                objc_msgSend_alignmentScore(v432, v497, v498, v499, v500, v501);
                v503 = v502;
                v509 = objc_msgSend_properties(v432, v504, v505, v506, v507, v508);
                v515 = objc_msgSend_recognizerSourceLocale(v432, v510, v511, v512, v513, v514);
                v669 = v503;
                v674 = v496;
                v676 = v489;
                v678 = v482;
                v521 = objc_msgSend_inputSources(v432, v516, v517, v518, v519, v520);
                v527 = objc_msgSend_substrokeCount(v432, v522, v523, v524, v525, v526);
                objc_msgSend_originalBounds(v432, v528, v529, v530, v531, v532);
                v539 = v538;
                v541 = v540;
                v543 = v542;
                v545 = v544;
                if (v432)
                {
                  objc_msgSend_principalLines(v432, v533, v534, v535, v536, v537);
                }

                else
                {
                  v731 = 0u;
                  v732 = 0u;
                  v729 = 0u;
                  v730 = 0u;
                  v727 = 0u;
                  v728 = 0u;
                  buf = 0u;
                  v726 = 0u;
                }

                v546 = objc_msgSend_principalPoints(v432, v533, v534, v535, v536, v537);
                v548 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v463, v547, v469, v446, v475, v509, v515, v521, v678, v676, v674, v669, v456, v458, v460, v462, v527, v539, v541, v543, v545, &buf, v546);

                objc_msgSend_addObject_(v663, v549, v548, v550, v551, v552);
              }

              v260 = v664;
            }

            v422 = v667;
            v425 = objc_msgSend_countByEnumeratingWithState_objects_count_(v667, v426, &v694, v722, 16, v430);
          }

          while (v425);
        }

        v553 = v658;
        v216 = v664;
      }

      ++v638;
      v644 = v658;
      v555 = v672;
      if (v672)
      {
LABEL_112:
        v688[0] = MEMORY[0x1E69E9820];
        v688[1] = 3221225472;
        v688[2] = sub_18385EE5C;
        v688[3] = &unk_1E6DDE028;
        v556 = v555;
        v689 = v556;
        v690 = v653;
        v557 = v216;
        objc_msgSend_enumerateIndexesUsingBlock_(v216, v558, v688, v559, v560, v561);

        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (v637 < 2)
    {
      v658 = 0;
      ++v637;
      v216 = 0;
      v555 = v672;
      if (v672)
      {
        goto LABEL_112;
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v209 = qword_1EA84DC70;
      if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v637 + 1;
        _os_log_impl(&dword_18366B000, v209, OS_LOG_TYPE_ERROR, "Failed to run recognition after %li failed attempts", &buf, 0xCu);
      }

      v210 = v654;
      objc_msgSend_removeAllIndexes(v653, v211, v212, v213, v214, v215);

      v635 = 0;
      v644 = 0;
      v658 = 0;
      ++v637;
      v216 = v210;
    }

LABEL_114:
    v557 = v216;
    objc_msgSend_removeIndexes_(v653, v100, v216, v101, v102, v103);
    v556 = 0;
LABEL_115:
  }

  v562 = v644;
  if ((v635 & (v644 != 0)) == 1)
  {
    v563 = [CHMutableTokenizedTextResult alloc];
    v569 = objc_msgSend_trailingSeparator(v644, v564, v565, v566, v567, v568);
    v575 = objc_msgSend_recognizerGenerationIdentifier(v644, v570, v571, v572, v573, v574);
    v581 = objc_msgSend_baseWritingDirection(v644, v576, v577, v578, v579, v580);
    LOBYTE(v631) = 0;
    isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v563, v582, v632, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v569, v575, 1, v631, v581, v663);

    if ((objc_msgSend_hasValidColumns(isMinimalDrawingResult_baseWritingDirection_originalTokens, v584, v585, v586, v587, v588) & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v594 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v594, OS_LOG_TYPE_ERROR))
      {
        v599 = objc_msgSend_descriptionWithSensitiveInformation_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v595, 0, v596, v597, v598);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v599;
        _os_log_impl(&dword_18366B000, v594, OS_LOG_TYPE_ERROR, "Unexpected tokenized result with invalid columns passed to transcriptionPathsForTokenizedTextResult, description = %@", &buf, 0xCu);
      }
    }

    if ((objc_msgSend_hasValidColumns(isMinimalDrawingResult_baseWritingDirection_originalTokens, v589, v590, v591, v592, v593) & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v605 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v605, OS_LOG_TYPE_FAULT))
      {
        v610 = objc_msgSend_descriptionWithSensitiveInformation_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v606, 0, v607, v608, v609);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v610;
        _os_log_impl(&dword_18366B000, v605, OS_LOG_TYPE_FAULT, "Unexpected tokenized result with invalid columns passed to transcriptionPathsForTokenizedTextResult, description = %@", &buf, 0xCu);
      }
    }

    if (objc_msgSend_hasValidColumns(isMinimalDrawingResult_baseWritingDirection_originalTokens, v600, v601, v602, v603, v604))
    {
      v611 = v649;
      v614 = v611;
      if (a4)
      {
        v687 = 0;
        v686 = 0;
        v615 = objc_msgSend_transcriptionPathsForTokenizedTextResult_withHistory_scores_error_(v611, v612, isMinimalDrawingResult_baseWritingDirection_originalTokens, 0, &v687, &v686);
        v616 = v687;
        v617 = v686;
        if (!v615)
        {
          v618 = sub_183761FE4(4);
          if (os_log_type_enabled(v618, OS_LOG_TYPE_ERROR))
          {
            v624 = objc_msgSend_description(v617, v619, v620, v621, v622, v623);
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v624;
            _os_log_impl(&dword_18366B000, v618, OS_LOG_TYPE_ERROR, "Remote call to compute transcription paths error: %@", &buf, 0xCu);
          }

          v615 = 0;
          goto LABEL_140;
        }
      }

      else
      {
        v685 = 0;
        v615 = objc_msgSend_bestTranscriptionPathsForTokenizedResult_scores_history_(v611, v612, isMinimalDrawingResult_baseWritingDirection_originalTokens, &v685, 0, v613);
        v616 = v685;
        v617 = 0;
      }

      if (v616 && v615)
      {
        objc_msgSend_setTranscriptionPaths_scores_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v625, v615, v616, v626, v627);
      }

LABEL_140:
      v562 = isMinimalDrawingResult_baseWritingDirection_originalTokens;
    }

    else
    {
      v562 = 0;
      v615 = v644;
    }
  }

  if (a10)
  {
    v628 = v648;
    *a10 = v648;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v629 = qword_1EA84DC60;
  if (os_log_type_enabled(v629, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v638;
    _os_log_impl(&dword_18366B000, v629, OS_LOG_TYPE_DEBUG, "Recognition successful using %li sub-drawings", &buf, 0xCu);
  }

LABEL_149:

  return v562;
}

void sub_18385DDC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = objc_msgSend_strokeIndexes(v3, v5, v6, v7, v8, v9);
  objc_msgSend_boundsForStrokeIndexes_(v4, v11, v10, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [CHTokenizedTextResultToken alloc];
  v29 = objc_msgSend_string(v3, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_strokeIndexes(v3, v30, v31, v32, v33, v34);
  v119 = v22;
  v120 = v20;
  v121 = v18;
  v122 = v16;
  v118 = objc_msgSend_wordID(v3, v36, v37, v38, v39, v40);
  objc_msgSend_modelScore(v3, v41, v42, v43, v44, v45);
  v47 = v46;
  objc_msgSend_recognitionScore(v3, v48, v49, v50, v51, v52);
  v54 = v53;
  objc_msgSend_combinedScore(v3, v55, v56, v57, v58, v59);
  v61 = v60;
  objc_msgSend_alignmentScore(v3, v62, v63, v64, v65, v66);
  v68 = v67;
  v74 = objc_msgSend_properties(v3, v69, v70, v71, v72, v73);
  v80 = objc_msgSend_recognizerSourceLocale(v3, v75, v76, v77, v78, v79);
  v86 = objc_msgSend_inputSources(v3, v81, v82, v83, v84, v85);
  v92 = objc_msgSend_substrokeCount(v3, v87, v88, v89, v90, v91);
  objc_msgSend_bounds(v3, v93, v94, v95, v96, v97);
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  if (v3)
  {
    objc_msgSend_principalLines(v3, v98, v99, v100, v101, v102);
  }

  else
  {
    memset(v123, 0, 128);
  }

  v111 = objc_msgSend_principalPoints(v3, v98, v99, v100, v101, v102);
  v113 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v23, v112, v29, v35, v118, v74, v80, v86, v47, v54, v61, v68, v104, v106, v108, v110, v92, v122, v121, v120, v119, v123, v111);

  objc_msgSend_addObject_(*(a1 + 40), v114, v113, v115, v116, v117);
}

id sub_18385E07C(void *a1, void *a2, void *a3)
{
  v252 = *MEMORY[0x1E69E9840];
  v233 = a2;
  v234 = a3;
  v236 = objc_msgSend_mathResult(v233, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_recognitionResultsByLocale(v234, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_preferredLocale(v234, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_objectForKeyedSubscript_(v15, v22, v21, v23, v24, v25);

  v247 = 0u;
  v248 = 0u;
  v245 = 0u;
  v246 = 0u;
  v32 = objc_msgSend_transcriptionPaths(v26, v27, v28, v29, v30, v31);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v245, v251, 16, v34);
  if (v40)
  {
    v41 = *v246;
    while (2)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v246 != v41)
        {
          objc_enumerationMutation(v32);
        }

        v43 = *(*(&v245 + 1) + 8 * i);
        v44 = objc_msgSend_tokenColumnCount(v26, v35, v36, v37, v38, v39);
        v46 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v26, v45, v43, 0, v44, 0);
        v52 = objc_msgSend_recognitionLocales(a1, v47, v48, v49, v50, v51);
        isVerticalMathEntryWithUnitForTextTranscription_locales = objc_msgSend_isVerticalMathEntryWithUnitForTextTranscription_locales_(CHTokenizedMathResult, v53, v46, v52, v54, v55);

        if (isVerticalMathEntryWithUnitForTextTranscription_locales)
        {
          v231 = 0;
          goto LABEL_11;
        }
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v245, v251, 16, v39);
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v231 = 1;
LABEL_11:

  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  obj = objc_msgSend_transcriptionPaths(v236, v57, v58, v59, v60, v61);
  v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v241, v250, 16, v63);
  if (v69)
  {
    v70 = *v242;
    while (2)
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v242 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v241 + 1) + 8 * j);
        v73 = objc_msgSend_tokenColumnCount(v236, v64, v65, v66, v67, v68);
        v76 = objc_msgSend_transcriptionWithPath_columnRange_(v236, v74, v72, 0, v73, v75);
        v81 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v77, v76, v78, v79, v80);
        v87 = objc_msgSend_recognitionLocales(a1, v82, v83, v84, v85, v86);
        v91 = objc_msgSend_isVerticalMathEntryWithUnitForTextTranscription_locales_(CHTokenizedMathResult, v88, v81, v87, v89, v90);

        if (v91)
        {
          v97 = 0;
          goto LABEL_40;
        }
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v241, v250, 16, v68);
      if (v69)
      {
        continue;
      }

      break;
    }
  }

  if (v231)
  {
    v97 = 0;
  }

  else
  {
    v98 = objc_msgSend_topTranscription(v26, v92, v93, v94, v95, v96);
    obj = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v98, v99, @" ", &stru_1EF1C0318, v100, v101);

    v107 = objc_msgSend_array(MEMORY[0x1E695DF70], v102, v103, v104, v105, v106);
    v239[0] = MEMORY[0x1E69E9820];
    v239[1] = 3221225472;
    v239[2] = sub_18385E8A0;
    v239[3] = &unk_1E6DDBDA0;
    v108 = v107;
    v240 = v108;
    v232 = v108;
    objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v236, v109, v239, v110, v111, v112);
    v118 = objc_msgSend_countCharacters(obj, v113, v114, v115, v116, v117);
    if (v118 == objc_msgSend_count(v108, v119, v120, v121, v122, v123))
    {
      v134 = objc_msgSend_array(MEMORY[0x1E695DF70], v124, v125, v126, v127, v128);
      v135 = 0;
      v230 = v134;
      while (v135 < objc_msgSend_count(v108, v129, v130, v131, v132, v133, v230))
      {
        v140 = objc_msgSend_objectAtIndexedSubscript_(v108, v136, v135, v137, v138, v139);
        v145 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(obj, v141, v135, v142, v143, v144);
        v149 = objc_msgSend_substringWithRange_(obj, v146, v145, v146, v147, v148);
        v155 = objc_msgSend_string(v140, v150, v151, v152, v153, v154);
        isEqualToString = objc_msgSend_isEqualToString_(v155, v156, v149, v157, v158, v159);

        if (isEqualToString)
        {
          objc_msgSend_addObject_(v134, v161, v140, v163, v164, v165);
        }

        else
        {
          v166 = objc_msgSend_mutableCopy(v140, v161, v162, v163, v164, v165);
          objc_msgSend_setString_(v166, v167, v149, v168, v169, v170);
          v171 = v149;
          v177 = objc_msgSend_UTF8String(v149, v172, v173, v174, v175, v176);
          v178 = strlen(v177);
          if (v178 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_183688FF0();
          }

          v179 = v178;
          if (v178 >= 0x17)
          {
            operator new();
          }

          v238 = v178;
          if (v178)
          {
            memmove(&__dst, v177, v178);
          }

          *(&__dst + v179) = 0;
          v180 = sub_18367D41C(a1 + 2, &__dst);
          objc_msgSend_setProperties_(v166, v181, v180, v182, v183, v184);
          v134 = v230;
          v108 = v232;
          if (v238 < 0)
          {
            operator delete(__dst);
          }

          v190 = objc_msgSend_copy(v166, v185, v186, v187, v188, v189);
          objc_msgSend_addObject_(v230, v191, v190, v192, v193, v194);
        }

        ++v135;
      }

      v195 = [CHTokenizedMathResult alloc];
      v249 = v134;
      v199 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v196, &v249, 1, v197, v198);
      v204 = objc_msgSend_initWithBestPathTokens_(v195, v200, v199, v201, v202, v203);

      v210 = objc_msgSend_inputStrokeIdentifiers(v233, v205, v206, v207, v208, v209);
      v216 = objc_msgSend_inputStrokeIdentifiers(v234, v211, v212, v213, v214, v215);
      v97 = objc_msgSend_mathResultWithReindexedTokens_originalStrokeIdentifiersOrdering_newStrokeIdentifiersOrdering_(CHTokenizedMathResult, v217, v204, v210, v216, v218);

      v224 = objc_msgSend_declaredVariablesWhileRecognized(v236, v219, v220, v221, v222, v223);
      objc_msgSend_setDeclaredVariablesWhileRecognized_(v97, v225, v224, v226, v227, v228);
    }

    else
    {
      v97 = 0;
    }

LABEL_40:
  }

  return v97;
}

void sub_18385E8AC(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
  {
    *a3 = 1;
  }

  else
  {
    objc_msgSend_addIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
    v8 = *(a1 + 40);
    v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, a2, v10, v11, v12);
    v18 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v14, *(*(*(a1 + 48) + 8) + 24), v15, v16, v17);
    objc_msgSend_setObject_forKey_(v8, v19, v13, v18, v20, v21);
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

id sub_18385E994(void *a1, void *a2, void *a3, uint64_t a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v51 = a1;
  v49 = v8;
  if (a1)
  {
    v9 = v8;
    v52 = v9;
    if (a4)
    {
      objc_msgSend_refinableTranscriptionPath(v9, v10, v11, v12, v13, v14);
    }

    else
    {
      objc_msgSend_topModelTranscriptionPath(v9, v10, v11, v12, v13, v14);
    }
    v50 = ;
    v15 = objc_opt_class();
    v21 = objc_msgSend_strokeProvider(a1, v16, v17, v18, v19, v20);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = sub_18385EF18;
    v57[3] = &unk_1E6DDEE48;
    v57[4] = a1;
    v23 = objc_msgSend_reflowableTokensWithTextResult_principalLineResult_shouldUseRefinablePath_strokeProvider_shouldCancel_(v15, v22, v52, v7, a4, v21, v57);

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = v23;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v53, v62, 16, v26);
    if (v27)
    {
      v28 = *v54;
      do
      {
        v29 = 0;
        do
        {
          if (*v54 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v53 + 1) + 8 * v29);
          if (qword_1EA84DC48 == -1)
          {
            v31 = qword_1EA84DC58;
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_13;
            }

LABEL_12:
            v37 = objc_msgSend_string(v30, v32, v33, v34, v35, v36);
            hasValidPrincipalLines = objc_msgSend_hasValidPrincipalLines(v30, v38, v39, v40, v41, v42);
            *buf = 138740227;
            v59 = v37;
            v60 = 1024;
            v61 = hasValidPrincipalLines;
            _os_log_impl(&dword_18366B000, v31, OS_LOG_TYPE_DEFAULT, "Principal Lines added from model to token with text %{sensitive}@, valid principal lines ? %d", buf, 0x12u);

            goto LABEL_13;
          }

          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v31 = qword_1EA84DC58;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

LABEL_13:

          ++v29;
        }

        while (v27 != v29);
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v44, &v53, v62, 16, v45);
        v27 = v46;
      }

      while (v46);
    }

    v47 = sub_18385EF20(v51, v24, v52, v50);
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

uint64_t sub_18385ED14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
  v13 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v11, v12);
  v19 = objc_msgSend_integerValue(v13, v14, v15, v16, v17, v18);

  v24 = *(a1 + 40);

  return objc_msgSend_addIndex_(v24, v20, v19, v21, v22, v23);
}

uint64_t sub_18385EDB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
  v13 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v11, v12);
  v19 = objc_msgSend_integerValue(v13, v14, v15, v16, v17, v18);

  v24 = *(a1 + 40);

  return objc_msgSend_addIndex_(v24, v20, v19, v21, v22, v23);
}

void sub_18385EE5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
  v24 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v11, v12);

  v13 = *(a1 + 40);
  v19 = objc_msgSend_integerValue(v24, v14, v15, v16, v17, v18);
  objc_msgSend_removeIndex_(v13, v20, v19, v21, v22, v23);
}

id sub_18385EF20(uint64_t a1, void *a2, void *a3, void *a4)
{
  v170 = a1;
  v189 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v174 = a4;
  v8 = v7;
  if (objc_msgSend_count(v6, v9, v10, v11, v12, v13) && (v18 = objc_msgSend_tokenCountInTranscriptionPath_(v8, v14, v174, v15, v16, v17), v18 == objc_msgSend_count(v6, v19, v20, v21, v22, v23)))
  {
    v173 = objc_msgSend_originalTokens(v8, v24, v25, v26, v27, v28);
    v171 = objc_msgSend_array(MEMORY[0x1E695DF70], v29, v30, v31, v32, v33);
    v172 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35, v36, v37, v38);
    for (i = 0; ; ++i)
    {
      v45 = objc_msgSend_transcriptionPaths(v8, v39, v40, v41, v42, v43, v170);
      v51 = i > objc_msgSend_count(v45, v46, v47, v48, v49, v50);

      if (v51)
      {
        break;
      }

      v57 = objc_msgSend_refinableTranscriptionPath(v8, v52, v53, v54, v55, v56);
      v63 = objc_msgSend_transcriptionPaths(v8, v58, v59, v60, v61, v62);
      v69 = i < objc_msgSend_count(v63, v64, v65, v66, v67, v68);

      if (v69)
      {
        v75 = objc_msgSend_transcriptionPaths(v8, v70, v71, v72, v73, v74);
        v80 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, i, v77, v78, v79);

        v57 = v80;
      }

      HaveSameSegmentation_otherPath = objc_msgSend_transcriptionPathsHaveSameSegmentation_otherPath_(v8, v70, v174, v57, v73, v74);
      v87 = objc_msgSend_array(MEMORY[0x1E695DF70], v82, v83, v84, v85, v86);
      v93 = objc_msgSend_tokenColumnCount(v8, v88, v89, v90, v91, v92);
      v181[0] = MEMORY[0x1E69E9820];
      v181[1] = 3221225472;
      v181[2] = sub_18385F898;
      v181[3] = &unk_1E6DDEF10;
      v184 = HaveSameSegmentation_otherPath;
      v182 = v6;
      v94 = v87;
      v183 = v94;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v8, v95, v57, 0, v93, v181);
      if (objc_msgSend_count(v94, v96, v97, v98, v99, v100))
      {
        v106 = objc_msgSend_refinableTranscriptionPath(v8, v101, v102, v103, v104, v105);
        v107 = v57 == v106;

        if (v107)
        {
          v117 = v173;
          v173 = v94;
        }

        else
        {
          objc_msgSend_addObject_(v171, v108, v94, v109, v110, v111);
          v117 = objc_msgSend_transcriptionPathScores(v8, v112, v113, v114, v115, v116);
          v122 = objc_msgSend_objectAtIndexedSubscript_(v117, v118, i, v119, v120, v121);
          objc_msgSend_addObject_(v172, v123, v122, v124, v125, v126);
        }
      }
    }

    v138 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v8, v52, v171, v172, v55, v56);

    objc_msgSend_setOriginalTokens_(v138, v139, v173, v140, v141, v142);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v186 = sub_18385AFE0;
    v187 = sub_18385AFF0;
    v143 = MEMORY[0x1E695DF70];
    v149 = objc_msgSend_originalTokens(v138, v144, v145, v146, v147, v148);
    v155 = objc_msgSend_count(v149, v150, v151, v152, v153, v154);
    v188 = objc_msgSend_arrayWithCapacity_(v143, v156, v155, v157, v158, v159);

    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = sub_18385FCBC;
    v175[3] = &unk_1E6DDEF60;
    v180 = buf;
    v160 = v138;
    v176 = v160;
    v177 = v174;
    v178 = v8;
    v179 = v170;
    objc_msgSend_enumerateOriginalTokensWithBlock_(v160, v161, v175, v162, v163, v164);
    objc_msgSend_setOriginalTokens_(v160, v165, *(*&buf[8] + 40), v166, v167, v168);

    _Block_object_dispose(buf, 8);
    v137 = v160;
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v127 = qword_1EA84DCA0;
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = objc_msgSend_tokenCountInTranscriptionPath_(v8, v128, v174, v129, v130, v131);
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_count(v6, v132, v133, v134, v135, v136);
      _os_log_impl(&dword_18366B000, v127, OS_LOG_TYPE_ERROR, "Invalid reflowable tokens count: result tokens:%li reflowable tokens:%li", buf, 0x16u);
    }

    v137 = v8;
  }

  return v137;
}

void sub_18385F43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

id sub_18385F5A4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v62 = a2;
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    v9 = v7;
    v10 = [CHContextualTextResult alloc];
    v61 = objc_msgSend_initWithTextResult_terminatingSpecialCharacter_strokeGroup_(v10, v11, v9, 0, v62, v12);
    v13 = [CHContextualTextResults alloc];
    v64[0] = v61;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v64, 1, v15, v16);
    v22 = objc_msgSend_initWithTextResults_(v13, v18, v17, v19, v20, v21);

    v28 = objc_msgSend_locale(v9, v23, v24, v25, v26, v27);
    if (objc_msgSend_shouldUseOriginalTokensForLocale_(CHRecognizerConfiguration, v29, v28, v30, v31, v32))
    {
      objc_msgSend_refinableTranscriptionPath(v9, v33, v34, v35, v36, v37);
    }

    else
    {
      objc_msgSend_topModelTranscriptionPath(v9, v33, v34, v35, v36, v37);
    }
    v38 = ;

    v39 = objc_opt_class();
    v45 = objc_msgSend_strokeIdentifiers(v62, v40, v41, v42, v43, v44);
    v51 = objc_msgSend_allObjects(v45, v46, v47, v48, v49, v50);
    v57 = objc_msgSend_strokeProvider(a1, v52, v53, v54, v55, v56);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = sub_18385F890;
    v63[3] = &unk_1E6DDEE48;
    v63[4] = a1;
    v59 = objc_msgSend_reflowableTokensWithContext_contextStrokes_strokeProvider_skipLineOrientationEstimate_shouldCancel_(v39, v58, v22, v51, v57, a3, v63);

    a1 = sub_18385EF20(a1, v59, v9, v38);
  }

  return a1;
}

void sub_18385F898(uint64_t a1, void *a2, unint64_t a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v10 = a2;
  if (*(a1 + 48) == 1)
  {
    if (objc_msgSend_count(*(a1 + 32), v5, v6, v7, v8, v9) <= a3)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v16 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "Reflowable tokens does not have a token at index %lu", buf, 0xCu);
      }
    }

    if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14, v15) <= a3)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v17 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_FAULT, "Reflowable tokens does not have a token at index %lu", buf, 0xCu);
      }
    }

    v18 = [CHTokenizedTextResultToken alloc];
    v143 = objc_msgSend_string(v10, v19, v20, v21, v22, v23);
    v144 = objc_msgSend_strokeIndexes(v10, v24, v25, v26, v27, v28);
    v34 = objc_msgSend_wordID(v10, v29, v30, v31, v32, v33);
    objc_msgSend_modelScore(v10, v35, v36, v37, v38, v39);
    v141 = v40;
    objc_msgSend_recognitionScore(v10, v41, v42, v43, v44, v45);
    v140 = v46;
    objc_msgSend_combinedScore(v10, v47, v48, v49, v50, v51);
    v139 = v52;
    objc_msgSend_alignmentScore(v10, v53, v54, v55, v56, v57);
    v138 = v58;
    v64 = objc_msgSend_properties(v10, v59, v60, v61, v62, v63);
    v142 = objc_msgSend_recognizerSourceLocale(v10, v65, v66, v67, v68, v69);
    v137 = v64;
    v75 = objc_msgSend_inputSources(v10, v70, v71, v72, v73, v74);
    v81 = objc_msgSend_substrokeCount(v10, v76, v77, v78, v79, v80);
    objc_msgSend_bounds(v10, v82, v83, v84, v85, v86);
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v99 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v95, a3, v96, v97, v98);
    objc_msgSend_bounds(v99, v100, v101, v102, v103, v104);
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v117 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v113, a3, v114, v115, v116);
    v123 = v117;
    if (v117)
    {
      objc_msgSend_principalLines(v117, v118, v119, v120, v121, v122);
    }

    else
    {
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      *buf = 0u;
      v146 = 0u;
    }

    v124 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v118, a3, v120, v121, v122);
    v130 = objc_msgSend_principalPoints(v124, v125, v126, v127, v128, v129);
    v132 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v18, v131, v143, v144, v34, v137, v142, v75, v141, v140, v139, v138, v88, v90, v92, v94, v81, v106, v108, v110, v112, buf, v130);

    objc_msgSend_addObject_(*(a1 + 40), v133, v132, v134, v135, v136);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 40), v5, v10, v7, v8, v9);
  }
}

void sub_18385FCBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_hasValidPrincipalLines(v3, v4, v5, v6, v7, v8))
  {
    objc_msgSend_addObject_(*(*(*(a1 + 64) + 8) + 40), v9, v3, v11, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_inputStrokeIdentifiers(*(a1 + 32), v9, v10, v11, v12, v13);
    v20 = objc_msgSend_strokeIndexes(v3, v15, v16, v17, v18, v19);
    v25 = objc_msgSend_objectsAtIndexes_(v14, v21, v20, v22, v23, v24);

    v236 = 0;
    v237 = &v236;
    v238 = 0x3032000000;
    v239 = sub_18385AFE0;
    v240 = sub_18385AFF0;
    v241 = 0;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v33 = objc_msgSend_tokenColumnCount(*(a1 + 48), v28, v29, v30, v31, v32);
    v233[0] = MEMORY[0x1E69E9820];
    v233[1] = 3221225472;
    v233[2] = sub_183860458;
    v233[3] = &unk_1E6DDE9B0;
    v34 = v3;
    v234 = v34;
    v235 = &v236;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v26, v35, v27, 0, v33, v233);
    if (v237[5])
    {
      v205 = v25;
      v208 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v36, v25, *(*(a1 + 56) + 560), v38, v39);
      v40 = MEMORY[0x1E695DF70];
      v46 = objc_msgSend_strokeIndexes(v34, v41, v42, v43, v44, v45);
      v52 = objc_msgSend_count(v46, v47, v48, v49, v50, v51);
      v206 = objc_msgSend_arrayWithCapacity_(v40, v53, v52, v54, v55, v56);

      v232[0] = 0;
      v232[1] = v232;
      v232[2] = 0x2020000000;
      v232[3] = 0;
      v62 = objc_msgSend_strokeIndexes(v237[5], v57, v58, v59, v60, v61);
      v227[0] = MEMORY[0x1E69E9820];
      v227[1] = 3221225472;
      v227[2] = sub_183860554;
      v227[3] = &unk_1E6DDEF38;
      v63 = v34;
      v228 = v63;
      v230 = v232;
      v231 = &v236;
      v207 = v206;
      v229 = v207;
      objc_msgSend_enumerateIndexesUsingBlock_(v62, v64, v227, v65, v66, v67);

      sub_1838C3014(v208, __p);
      objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v68, v208, v69, v70, v71);
      v203 = v78;
      v204 = v77;
      v201 = v80;
      v202 = v79;
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v81 = v237;
      v82 = v237[5];
      if (v82)
      {
        objc_msgSend_principalLines(v82, v72, v73, v74, v75, v76);
        v81 = v237;
      }

      else
      {
        v216 = 0uLL;
        v217 = 0uLL;
        v214 = 0uLL;
        v215 = 0uLL;
        v212 = 0uLL;
        v213 = 0uLL;
        v210 = 0uLL;
        v211 = 0uLL;
      }

      objc_msgSend_originalBounds(v81[5], v72, v73, v74, v75, v76);
      if (v85 == 0.0)
      {
        v85 = 1.0;
      }

      if (v86 == 0.0)
      {
        v86 = 1.0;
      }

      *&v218 = v83 + v210.f64[0] * v85;
      *(&v218 + 1) = v84 + v210.f64[1] * v86;
      *&v219 = v83 + v211.f64[0] * v85;
      *(&v219 + 1) = v84 + v211.f64[1] * v86;
      *&v220 = v83 + v212.f64[0] * v85;
      *(&v220 + 1) = v84 + v212.f64[1] * v86;
      *&v221 = v83 + v213.f64[0] * v85;
      *(&v221 + 1) = v84 + v213.f64[1] * v86;
      *&v222 = v83 + v214.f64[0] * v85;
      *(&v222 + 1) = v84 + v214.f64[1] * v86;
      *&v223 = v83 + v215.f64[0] * v85;
      *(&v223 + 1) = v84 + v215.f64[1] * v86;
      *&v224 = v83 + v216.f64[0] * v85;
      *(&v224 + 1) = v84 + v216.f64[1] * v86;
      *&v225 = v83 + v217.f64[0] * v85;
      *(&v225 + 1) = v84 + v217.f64[1] * v86;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      sub_1838CD8C4(&v218, __p, v210.f64);
      v193 = v210;
      v194 = v212;
      v195 = v211;
      v196 = v214;
      v197 = v213;
      v199 = v215;
      v200 = v217;
      v198 = v216;
      v92 = objc_msgSend_string(v63, v87, v88, v89, v90, v91);
      v98 = objc_msgSend_strokeIndexes(v63, v93, v94, v95, v96, v97);
      v192 = objc_msgSend_wordID(v63, v99, v100, v101, v102, v103);
      objc_msgSend_modelScore(v63, v104, v105, v106, v107, v108);
      v110 = v109;
      objc_msgSend_recognitionScore(v63, v111, v112, v113, v114, v115);
      v117 = v116;
      objc_msgSend_combinedScore(v63, v118, v119, v120, v121, v122);
      v124 = v123;
      objc_msgSend_alignmentScore(v63, v125, v126, v127, v128, v129);
      v131 = v130;
      v137 = objc_msgSend_properties(v63, v132, v133, v134, v135, v136);
      v143 = objc_msgSend_recognizerSourceLocale(v63, v138, v139, v140, v141, v142);
      v149 = objc_msgSend_inputSources(v63, v144, v145, v146, v147, v148);
      v155 = objc_msgSend_substrokeCount(v63, v150, v151, v152, v153, v154);
      objc_msgSend_bounds(v63, v156, v157, v158, v159, v160);
      v162 = v161;
      v164 = v163;
      v166 = v165;
      v168 = v167;
      objc_msgSend_originalBounds(v63, v169, v170, v171, v172, v173);
      v174.f64[0] = v202;
      v174.f64[1] = v201;
      __asm { FMOV            V5.2D, #1.0 }

      v180 = vbslq_s8(vceqzq_f64(v174), _Q5, v174);
      v181.f64[0] = v204;
      v181.f64[1] = v203;
      v209[0] = vdivq_f64(vsubq_f64(v193, v181), v180);
      v209[1] = vdivq_f64(vsubq_f64(v195, v181), v180);
      v209[2] = vdivq_f64(vsubq_f64(v194, v181), v180);
      v209[3] = vdivq_f64(vsubq_f64(v197, v181), v180);
      v209[4] = vdivq_f64(vsubq_f64(v196, v181), v180);
      v209[5] = vdivq_f64(vsubq_f64(v199, v181), v180);
      v209[6] = vdivq_f64(vsubq_f64(v198, v181), v180);
      v209[7] = vdivq_f64(vsubq_f64(v200, v181), v180);
      v187 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v182, v92, v98, v192, v137, v143, v149, v110, v117, v124, v131, v162, v164, v166, v168, v155, v183, v184, v185, v186, v209, v207);

      objc_msgSend_addObject_(*(*(*(a1 + 64) + 8) + 40), v188, v187, v189, v190, v191);
      v25 = v205;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      _Block_object_dispose(v232, 8);
    }

    else
    {
      objc_msgSend_addObject_(*(*(*(a1 + 64) + 8) + 40), v36, v34, v37, v38, v39);
    }

    _Block_object_dispose(&v236, 8);
  }
}

void sub_1838602F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 200), 8);

  _Unwind_Resume(a1);
}

void sub_183860458(uint64_t a1, void *a2)
{
  v27 = a2;
  v8 = objc_msgSend_strokeIndexes(v27, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_strokeIndexes(*(a1 + 32), v9, v10, v11, v12, v13);
  if (objc_msgSend_containsIndexes_(v8, v15, v14, v16, v17, v18))
  {
    hasValidPrincipalLines = objc_msgSend_hasValidPrincipalLines(v27, v19, v20, v21, v22, v23);

    if (!hasValidPrincipalLines)
    {
      goto LABEL_6;
    }

    v25 = *(*(a1 + 40) + 8);
    v26 = v27;
    v8 = *(v25 + 40);
    *(v25 + 40) = v26;
  }

  else
  {
  }

LABEL_6:
}

void sub_183860554(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_msgSend_strokeIndexes(*(a1 + 32), a2, a3, a4, a5, a6);
  if (!objc_msgSend_containsIndex_(v8, v9, a2, v10, v11, v12))
  {
    goto LABEL_4;
  }

  v18 = *(*(*(a1 + 48) + 8) + 24);
  v19 = objc_msgSend_principalPoints(*(*(*(a1 + 56) + 8) + 40), v13, v14, v15, v16, v17);
  v25 = objc_msgSend_count(v19, v20, v21, v22, v23, v24);

  if (v18 < v25)
  {
    v31 = *(a1 + 40);
    v8 = objc_msgSend_principalPoints(*(*(*(a1 + 56) + 8) + 40), v26, v27, v28, v29, v30);
    v36 = objc_msgSend_objectAtIndexedSubscript_(v8, v32, *(*(*(a1 + 48) + 8) + 24), v33, v34, v35);
    objc_msgSend_addObject_(v31, v37, v36, v38, v39, v40);

LABEL_4:
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

id sub_183860680(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v7, v6, *(a1 + 560), v8, v9);
  v15 = objc_msgSend_indexesOfObjectsPassingTest_(v10, v11, &unk_1EF1BEA10, v12, v13, v14);
  v45 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v16, v17, v18, v19, v20);
  for (i = 0; i < objc_msgSend_tokenColumnCount(v5, v21, v22, v23, v24, v25); ++i)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 1;
    v32 = objc_msgSend_transcriptionPaths(v5, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_firstObject(v32, v33, v34, v35, v36, v37);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_183860914;
    v46[3] = &unk_1E6DDEFA8;
    v48 = &v49;
    v47 = v15;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v5, v39, v38, i, 1, v46);

    if (*(v50 + 24) == 1)
    {
      objc_msgSend_addIndex_(v45, v40, i, v41, v42, v43);
    }

    _Block_object_dispose(&v49, 8);
  }

  return v45;
}

void sub_183860914(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 24) == 1)
  {
    v10 = *(a1 + 32);
    v16 = v3;
    v11 = objc_msgSend_strokeIndexes(v3, v4, v5, v6, v7, v8);
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_containsIndexes_(v10, v12, v11, v13, v14, v15);

    v3 = v16;
  }

  else
  {
    *(v9 + 24) = 0;
  }
}

void sub_1838609F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v245 = *MEMORY[0x1E69E9840];
  v232 = a4;
  v10 = objc_msgSend_subResultWithColumnRange_(*(a1 + 32), v7, a2, a3, v8, v9);
  v231 = a3;
  v14 = objc_msgSend_strokeIndexesForColumnsInRange_(*(a1 + 32), v11, a2, a3, v12, v13);
  v20 = objc_msgSend_inputStrokeIdentifiers(*(a1 + 32), v15, v16, v17, v18, v19);
  v25 = objc_msgSend_objectsAtIndexes_(v20, v21, v14, v22, v23, v24);
  objc_msgSend_setInputStrokeIdentifiers_(v10, v26, v25, v27, v28, v29);

  objc_msgSend_remapAllStrokeIndexesWithIndexSet_(v10, v30, v14, v31, v32, v33);
  v39 = objc_msgSend_strokeIndexes(v10, v34, v35, v36, v37, v38);
  if (!objc_msgSend_firstIndex(v39, v40, v41, v42, v43, v44))
  {
    v50 = objc_msgSend_strokeIndexes(v10, v45, v46, v47, v48, v49);
    Index = objc_msgSend_lastIndex(v50, v51, v52, v53, v54, v55);
    if (Index == objc_msgSend_count(v14, v57, v58, v59, v60, v61) - 1)
    {
      v67 = objc_msgSend_strokeIndexes(v10, v62, v63, v64, v65, v66);
      v73 = objc_msgSend_count(v67, v68, v69, v70, v71, v72);
      v79 = objc_msgSend_count(v14, v74, v75, v76, v77, v78);

      if (v73 == v79)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v85 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v85, OS_LOG_TYPE_ERROR, "Problem of non-contiguous stroke indexes after applying remapAllStrokeIndexesWithIndexSet.", buf, 2u);
  }

LABEL_12:
  v86 = objc_msgSend_strokeIndexes(v10, v80, v81, v82, v83, v84);
  if (!objc_msgSend_firstIndex(v86, v87, v88, v89, v90, v91))
  {
    v97 = objc_msgSend_strokeIndexes(v10, v92, v93, v94, v95, v96);
    v103 = objc_msgSend_lastIndex(v97, v98, v99, v100, v101, v102);
    if (v103 == objc_msgSend_count(v14, v104, v105, v106, v107, v108) - 1)
    {
      v114 = objc_msgSend_strokeIndexes(v10, v109, v110, v111, v112, v113);
      v120 = objc_msgSend_count(v114, v115, v116, v117, v118, v119);
      LOBYTE(v120) = v120 == objc_msgSend_count(v14, v121, v122, v123, v124, v125);

      if (v120)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

LABEL_18:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v131 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v131, OS_LOG_TYPE_FAULT, "Problem of non-contiguous stroke indexes after applying remapAllStrokeIndexesWithIndexSet.", buf, 2u);
  }

LABEL_23:
  v132 = objc_msgSend_locale(*(a1 + 32), v126, v127, v128, v129, v130);
  objc_msgSend_setLocale_(v10, v133, v132, v134, v135, v136);

  v142 = objc_msgSend_array(MEMORY[0x1E695DF70], v137, v138, v139, v140, v141);
  v235[0] = MEMORY[0x1E69E9820];
  v235[1] = 3221225472;
  v235[2] = sub_1838611AC;
  v235[3] = &unk_1E6DDEFD0;
  v143 = v142;
  v236 = v143;
  objc_msgSend_enumerateOriginalTokensWithBlock_(v10, v144, v235, v145, v146, v147);
  v153 = objc_msgSend_count(v143, v148, v149, v150, v151, v152);
  v159 = objc_msgSend_count(v14, v154, v155, v156, v157, v158);
  v160 = *(a1 + 40);
  if (v153 == v159)
  {
    sub_18385E994(v160, v143, v10, 1);
  }

  else
  {
    sub_18385F5A4(v160, *(a1 + 48), (*(a1 + 56) & 1) == 0, v10);
  }
  v161 = ;
  v167 = objc_msgSend_mutableCopy(v161, v162, v163, v164, v165, v166);

  v173 = objc_msgSend_array(MEMORY[0x1E695DF70], v168, v169, v170, v171, v172);
  v233[0] = MEMORY[0x1E69E9820];
  v233[1] = 3221225472;
  v233[2] = sub_183861670;
  v233[3] = &unk_1E6DDCC38;
  v174 = v173;
  v234 = v174;
  objc_msgSend_enumerateIndexesUsingBlock_(v14, v175, v233, v176, v177, v178);
  objc_msgSend_remapAllStrokeIndexesWithArray_(v167, v179, v174, v180, v181, v182);
  v188 = objc_msgSend_tokenColumns(v167, v183, v184, v185, v186, v187);
  objc_msgSend_appendTokenColumns_(v232, v189, v188, v190, v191, v192);

  v196 = objc_msgSend_strokeIndexesForColumnsInRange_(v232, v193, a2, v231, v194, v195);
  if ((objc_msgSend_isEqual_(v196, v197, v14, v198, v199, v200) & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v205 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
    {
      v211 = objc_msgSend_description(v196, v206, v207, v208, v209, v210);
      v217 = objc_msgSend_description(v14, v212, v213, v214, v215, v216);
      *buf = 138413058;
      v238 = v211;
      v239 = 2112;
      v240 = v217;
      v241 = 2048;
      v242 = a2;
      v243 = 2048;
      v244 = v231;
      _os_log_impl(&dword_18366B000, v205, OS_LOG_TYPE_ERROR, "Error: the strokes covered in the cumulative results (%@) don't match those of the original result (%@) for the range %ld,%ld", buf, 0x2Au);
    }
  }

  if ((objc_msgSend_isEqual_(v196, v201, v14, v202, v203, v204) & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v218 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v218, OS_LOG_TYPE_FAULT))
    {
      v224 = objc_msgSend_description(v196, v219, v220, v221, v222, v223);
      v230 = objc_msgSend_description(v14, v225, v226, v227, v228, v229);
      *buf = 138413058;
      v238 = v224;
      v239 = 2112;
      v240 = v230;
      v241 = 2048;
      v242 = a2;
      v243 = 2048;
      v244 = v231;
      _os_log_impl(&dword_18366B000, v218, OS_LOG_TYPE_FAULT, "Error: the strokes covered in the cumulative results (%@) don't match those of the original result (%@) for the range %ld,%ld", buf, 0x2Au);
    }
  }
}

void sub_1838611AC(uint64_t a1, void *a2)
{
  v134 = *MEMORY[0x1E69E9840];
  v115 = a2;
  if (objc_msgSend_hasValidPrincipalPoints(v115, v2, v3, v4, v5, v6))
  {
    v108 = objc_msgSend_principalPoints(v115, v7, v8, v9, v10, v11);
    objc_msgSend_originalBounds(v115, v12, v13, v14, v15, v16);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = v108;
    v26 = MEMORY[0x1E695DF70];
    v109 = v25;
    v32 = objc_msgSend_count(v25, v27, v28, v29, v30, v31);
    v110 = objc_msgSend_arrayWithCapacity_(v26, v33, v32, v34, v35, v36);
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = v109;
    v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v118, v131, 16, v38);
    if (!v106)
    {
      goto LABEL_31;
    }

    v107 = *v119;
    if (v22 == 0.0)
    {
      v22 = 1.0;
    }

    if (v24 == 0.0)
    {
      v24 = 1.0;
    }

    v39 = MEMORY[0x1E695EFF8];
    while (1)
    {
      for (i = 0; i != v106; ++i)
      {
        if (*v119 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v118 + 1) + 8 * i);
        v41 = MEMORY[0x1E695DF70];
        v112 = v40;
        v47 = objc_msgSend_count(v40, v42, v43, v44, v45, v46);
        v52 = objc_msgSend_arrayWithCapacity_(v41, v48, v47, v49, v50, v51);
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v116 = v112;
        v117 = v52;
        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v53, &v126, v133, 16, v54);
        if (v60)
        {
          v61 = *v127;
          do
          {
            for (j = 0; j != v60; ++j)
            {
              if (*v127 != v61)
              {
                objc_enumerationMutation(v116);
              }

              v63 = *(*(&v126 + 1) + 8 * j);
              v64 = MEMORY[0x1E695DF70];
              v65 = objc_msgSend_count(v63, v55, v56, v57, v58, v59, v106);
              v70 = objc_msgSend_arrayWithCapacity_(v64, v66, v65, v67, v68, v69);
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v71 = v63;
              v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v122, v132, 16, v73);
              if (v74)
              {
                v75 = *v123;
                do
                {
                  for (k = 0; k != v74; ++k)
                  {
                    if (*v123 != v75)
                    {
                      objc_enumerationMutation(v71);
                    }

                    sub_1837A97C4(*(*(&v122 + 1) + 8 * k), v130);
                    v82 = v130[0];
                    if ((v130[1] - v130[0]) == 8)
                    {
                      v83 = *v130[0];
                      v84 = *(v130[0] + 1);
                    }

                    else
                    {
                      v83 = *v39;
                      v84 = v39[1];
                      if (!v130[0])
                      {
                        goto LABEL_25;
                      }
                    }

                    operator delete(v130[0]);
LABEL_25:
                    v85 = sub_1837A9A94(v18 + v83 * v22, v20 + v84 * v24, v82, v77, v78, v79, v80, v81);
                    objc_msgSend_addObject_(v70, v86, v85, v87, v88, v89);
                  }

                  v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v90, &v122, v132, 16, v91);
                }

                while (v74);
              }

              objc_msgSend_addObject_(v117, v92, v70, v93, v94, v95);
            }

            v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v55, &v126, v133, 16, v59);
          }

          while (v60);
        }

        objc_msgSend_addObject_(v110, v96, v117, v97, v98, v99);
      }

      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v100, &v118, v131, 16, v101);
      if (!v106)
      {
LABEL_31:

        objc_msgSend_addObjectsFromArray_(*(a1 + 32), v102, v110, v103, v104, v105);
        break;
      }
    }
  }
}

void sub_183861670(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

uint64_t sub_1838616E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 > *(*(*(a1 + 48) + 8) + 24))
  {
    (*(*(a1 + 40) + 16))();
  }

  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = a2 + a3;
  return result;
}

uint64_t sub_183861760(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v6, a2, v7, v8, v9);
  v15 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v11, v5, v12, v13, v14);
  v19 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(*(a1 + 32), v16, v10, v15, v17, v18);

  return v19;
}

void sub_183861934(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_183861DB4(uint64_t a1, void *a2)
{
  v2 = sub_183858504(*(a1 + 32), a2, *(a1 + 40), 0, 0);

  return v2;
}

void sub_18386260C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_encodedStrokeIdentifier(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_183862678(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_encodedStrokeIdentifier(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_1838626E4(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v234 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v13 = objc_msgSend_textResult(*(a1 + 32), v8, v9, v10, v11, v12);
  v19 = objc_msgSend_tokenColumnCount(v13, v14, v15, v16, v17, v18);

  if (v19 <= a3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v48 = qword_1EA84DC60;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *v229 = 0;
      _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: (autorefine) rejecting group having columns with multiple tokens on previous result.", v229, 2u);
    }
  }

  else
  {
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_msgSend_strokeGroupResult(*(a1 + 32), v20, v21, v22, v23, v24);
    v32 = objc_msgSend_inputStrokeIdentifiers(v26, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_strokeIndexes(v7, v33, v34, v35, v36, v37);
    v43 = objc_msgSend_objectsAtIndexes_(v32, v39, v38, v40, v41, v42);
    v48 = objc_msgSend_setWithArray_(v25, v44, v43, v45, v46, v47);

    if (objc_msgSend_isSubsetOfSet_(v48, v49, *(a1 + 40), v50, v51, v52))
    {
      *v229 = 0;
      v230 = v229;
      v231 = 0x2020000000;
      v232 = 0;
      v58 = objc_msgSend_strokeIndexes(v7, v53, v54, v55, v56, v57);
      v226[0] = MEMORY[0x1E69E9820];
      v226[1] = 3221225472;
      v226[2] = sub_183863050;
      v226[3] = &unk_1E6DDCB80;
      v227 = *(a1 + 32);
      v228 = v229;
      objc_msgSend_enumerateIndexesUsingBlock_(v58, v59, v226, v60, v61, v62);

      if (v230[24] == 1)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v68 = qword_1EA84DC60;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v74 = objc_msgSend_string(v7, v69, v70, v71, v72, v73);
          *buf = 138739971;
          *&buf[4] = v74;
          _os_log_impl(&dword_18366B000, v68, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: (autorefine) rejecting token (%{sensitive}@) as it contained synthetic ink)", buf, 0xCu);
        }
      }

      else
      {
        v75 = objc_msgSend_textResult(*(a1 + 48), v63, v64, v65, v66, v67);
        *buf = *a4;
        *&buf[16] = a4[2];
        hasTokenAtLocation = objc_msgSend_hasTokenAtLocation_(v75, v76, buf, v77, v78, v79);

        if (hasTokenAtLocation)
        {
          v86 = objc_msgSend_textResult(*(a1 + 48), v81, v82, v83, v84, v85);
          *buf = *a4;
          *&buf[16] = a4[2];
          v68 = objc_msgSend_tokenAtLocation_(v86, v87, buf, v88, v89, v90);

          v96 = objc_msgSend_string(v7, v91, v92, v93, v94, v95);
          v102 = objc_msgSend_string(v68, v97, v98, v99, v100, v101);
          isEqualToString = objc_msgSend_isEqualToString_(v96, v103, v102, v104, v105, v106);

          if (isEqualToString)
          {
            v113 = objc_msgSend_refinedTokenColumns(*(a1 + 48), v108, v109, v110, v111, v112);
            v118 = objc_msgSend_containsIndex_(v113, v114, *a4, v115, v116, v117);

            if (v118)
            {
              v123 = objc_msgSend_orderedStrokesDrawingForToken_(*(a1 + 32), v119, v7, v120, v121, v122);
              v124 = MEMORY[0x1E695DF70];
              v223 = v123;
              v130 = objc_msgSend_strokeIndexes(v68, v125, v126, v127, v128, v129);
              v136 = objc_msgSend_count(v130, v131, v132, v133, v134, v135);
              v222 = objc_msgSend_arrayWithCapacity_(v124, v137, v136, v138, v139, v140);

              v146 = objc_msgSend_strokeIdentifiers(*(a1 + 48), v141, v142, v143, v144, v145);
              v152 = objc_msgSend_strokeIndexes(v68, v147, v148, v149, v150, v151);
              v157 = objc_msgSend_objectsAtIndexes_(v146, v153, v152, v154, v155, v156);
              v163 = objc_msgSend_strokeProvider(*(a1 + 56), v158, v159, v160, v161, v162);
              v167 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v164, v157, v163, v165, v166);

              v224[0] = MEMORY[0x1E69E9820];
              v224[1] = 3221225472;
              v224[2] = sub_1838630C8;
              v224[3] = &unk_1E6DDF098;
              v168 = v222;
              v225 = v168;
              objc_msgSend_enumerateObjectsUsingBlock_(v167, v169, v224, v170, v171, v172);
              v173 = sub_183761FE4(2);
              if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
              {
                v179 = objc_msgSend_string(v68, v174, v175, v176, v177, v178);
                *buf = 138739971;
                *&buf[4] = v179;
                _os_log_impl(&dword_18366B000, v173, OS_LOG_TYPE_DEFAULT, "Inventory data ingestion: (autorefine) candidate token for inventory: %{sensitive}@", buf, 0xCu);
              }

              v185 = objc_msgSend_textResult(*(a1 + 32), v180, v181, v182, v183, v184);
              v189 = objc_msgSend_subResultWithColumnRange_(v185, v186, a3, 1, v187, v188);

              if (objc_msgSend_isSingleTokenResult(v189, v190, v191, v192, v193, v194))
              {
                objc_msgSend_populateStyleInventoryWithTokenizedResult_drawing_strokeIdentifiers_error_(*(a1 + 64), v195, v189, v223, v168, 0);
              }

              else
              {
                v221 = sub_183761FE4(2);
                if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v189;
                  _os_log_impl(&dword_18366B000, v221, OS_LOG_TYPE_ERROR, "Inventory data ingestion: (autorefine) produced tokenized result should contain a single token: %@", buf, 0xCu);
                }
              }

              v202 = v223;
            }

            else
            {
              v202 = sub_183761FE4(2);
              if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
              {
                v220 = objc_msgSend_string(v68, v215, v216, v217, v218, v219);
                *buf = 138739971;
                *&buf[4] = v220;
                _os_log_impl(&dword_18366B000, v202, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: (autorefine) rejecting token as it is not fully synthetic: %{sensitive}@", buf, 0xCu);
              }
            }
          }

          else
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v202 = qword_1EA84DC60;
            if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
            {
              v208 = objc_msgSend_string(v68, v203, v204, v205, v206, v207);
              v214 = objc_msgSend_string(v7, v209, v210, v211, v212, v213);
              *buf = 138740227;
              *&buf[4] = v208;
              *&buf[12] = 2117;
              *&buf[14] = v214;
              _os_log_impl(&dword_18366B000, v202, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: (autorefine) rejecting token (%{sensitive}@) as transcription is different from previous result (%{sensitive}@)", buf, 0x16u);
            }
          }
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v68 = qword_1EA84DC60;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            v201 = objc_msgSend_string(v7, v196, v197, v198, v199, v200);
            *buf = 138739971;
            *&buf[4] = v201;
            _os_log_impl(&dword_18366B000, v68, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: (autorefine) rejecting token (%{sensitive}@) as new result doesn't have token at the same location)", buf, 0xCu);
          }
        }
      }

      _Block_object_dispose(v229, 8);
    }
  }
}

void sub_183862E88(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183863050(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v9 = objc_msgSend_syntheticStrokeIndexes(*(a1 + 32), a2, a3, a4, a5, a6);
  LODWORD(v7) = objc_msgSend_containsIndex_(v9, v10, v7, v11, v12, v13);

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_1838630C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_encodedStrokeIdentifier(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

void sub_183863134(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, a4, a5, a6);
  v25 = objc_msgSend_UUIDString(v6, v7, v8, v9, v10, v11);

  v12 = MEMORY[0x1E695DFF8];
  v13 = NSTemporaryDirectory();
  v18 = objc_msgSend_fileURLWithPath_(v12, v14, v13, v15, v16, v17);
  v23 = objc_msgSend_URLByAppendingPathComponent_(v18, v19, v25, v20, v21, v22);
  v24 = qword_1EA84D048;
  qword_1EA84D048 = v23;
}

void sub_1838631DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_183863BD0(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_183863DF4(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

id sub_183869B50(uint64_t a1, void *a2, void *a3, uint64_t a4, BOOL *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  objc_opt_self();
  v14 = objc_msgSend_swappableColumnIndexesFromResults_locales_topLocaleIndex_(CHRecognizerConfiguration, v12, v10, v11, a4, v13, v10);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = sub_183869E28;
  v52[3] = &unk_1E6DDF100;
  v52[4] = a4;
  v19 = objc_msgSend_indexOfObjectPassingTest_(v14, v15, v52, v16, v17, v18);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_183869E84;
  v51[3] = &unk_1E6DDF100;
  v51[4] = a4;
  v24 = objc_msgSend_indexOfObjectPassingTest_(v14, v20, v51, v21, v22, v23);
  v29 = v10;
  if (v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = objc_msgSend_objectAtIndexedSubscript_(v11, v25, a4, v26, v27, v28);
    v48 = v29;
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v30 = objc_msgSend_objectAtIndexedSubscript_(v14, v25, 0, v26, v27, v28);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, 0, v32, v33, v34);
  v41 = objc_msgSend_intValue(v35, v36, v37, v38, v39, v40);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v11, v42, v41, v43, v44, v45);

  v48 = v29;
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v48 = objc_msgSend_resultsBySwapping_swappableColumns_locales_topLocaleIndex_topLocale_(CHTokenizedTextResult, v47, v29, v14, v11, a4, v46);
  }

LABEL_6:
  if (a5)
  {
    *a5 = v19 != 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a6)
  {
    v49 = v46;
    *a6 = v46;
  }

  return v48;
}

BOOL sub_183869E28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6);
  v13 = *(a1 + 32) != objc_msgSend_intValue(v7, v8, v9, v10, v11, v12);

  return v13;
}

BOOL sub_183869E84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6);
  v13 = *(a1 + 32) == objc_msgSend_intValue(v7, v8, v9, v10, v11, v12);

  return v13;
}

void sub_18386A7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18386A7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v8 = v7;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18386A7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18386A808(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_hash(v18, v7, v8, v9, v10, v11) - v6 + 32 * v6;
  v12 = *(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_hash(v5, v13, v14, v15, v16, v17) - v12 + 32 * v12;
}

void sub_18386AA94(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v7 = objc_msgSend_function(*(*(a1 + 32) + 8), v2, v3, v4, v5, v6);
  v18 = 0;
  v12 = objc_msgSend_prepareForExecutionWithError_(v7, v8, &v18, v9, v10, v11);
  v13 = v18;
  v14 = *(a1 + 32);
  v15 = *(v14 + 16);
  *(v14 + 16) = v12;

  if (v13)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "Could not prepare CHE5MLExecutionContext for execution.", v17, 2u);
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  (*(*(*(a1 + 32) + 24) + 16))();
}

void sub_18386B960(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC88;
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CHE5MLContextExecution", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "END CHE5MLContextExecution", v11, 2u);
  }

  (*(a1[5] + 16))();
  os_unfair_lock_unlock((a1[4] + 32));
}

void sub_18386C380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_18386C4AC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

BOOL sub_18386C918(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_nonTerminal(v3, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_name(v9, v10, v11, v12, v13, v14);
  if (objc_msgSend_isEqualToString_(v15, v16, *(a1 + 32), v17, v18, v19))
  {
    v34.location = objc_msgSend_inputRange(v3, v20, v21, v22, v23, v24);
    v25 = NSIntersectionRange(v34, *(a1 + 40));
    v32 = v25.location == objc_msgSend_inputRange(v3, v25.length, v26, v27, v28, v29) && v25.length == v30;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

void sub_18386D288(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v112 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v11 = objc_msgSend_grammar(*(a1 + 32), v6, v7, v8, v9, v10);
  v17 = objc_msgSend_terminalProductions(v11, v12, v13, v14, v15, v16);

  obj = v17;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v107, v111, 16, v19);
  if (v25)
  {
    v26 = *v108;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v108 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v107 + 1) + 8 * i);
        v29 = objc_msgSend_rightNode1(v28, v20, v21, v22, v23, v24);
        isEqualToString = objc_msgSend_isEqualToString_(v29, v30, v5, v31, v32, v33);

        if (isEqualToString)
        {
          objc_msgSend_probability(v28, v20, v21, v22, v23, v24);
          v36 = v35;
          if (v35 > 0.0)
          {
            v37 = [CHTerminal alloc];
            v43 = objc_msgSend_rightNode1(v28, v38, v39, v40, v41, v42);
            v46 = objc_msgSend_initWithName_inputRange_(v37, v44, v43, a3, a4, v45);

            v47 = [CHNonTerminal alloc];
            v53 = objc_msgSend_leftNode(v28, v48, v49, v50, v51, v52);
            v56 = objc_msgSend_initWithName_leftNode_rightNode_(v47, v54, v53, v46, 0, v55);

            v57 = [CHParseTableCell alloc];
            inited = objc_msgSend_initNonTerminal_range_(v57, v58, v56, a3, a4, v59);
            objc_msgSend_setRule_(inited, v61, v28, v62, v63, v64);
            objc_msgSend_setTerminal_(inited, v65, v46, v66, v67, v68);
            objc_msgSend_setProbability_(inited, v69, v70, v71, v72, v73, v36);
            v74 = [CHParseTree alloc];
            v80 = objc_msgSend_grammar(*(a1 + 32), v75, v76, v77, v78, v79);
            v85 = objc_msgSend_initWithGrammar_(v74, v81, v80, v82, v83, v84);
            objc_msgSend_setParseTree_(inited, v86, v85, v87, v88, v89);

            v95 = objc_msgSend_parseTree(inited, v90, v91, v92, v93, v94);
            objc_msgSend_setRoot_(v95, v96, v56, v97, v98, v99);

            objc_msgSend_addCell_(*(a1 + 40), v100, inited, v101, v102, v103);
          }
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v107, v111, 16, v24);
    }

    while (v25);
  }
}

uint64_t sub_18386D7D4(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3, v4, v5, v6) == 1)
  {
    v12 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v7, v8, v9, v10, v11);
    v17 = objc_msgSend_stringByTrimmingCharactersInSet_(v1, v13, v12, v14, v15, v16);
    v23 = objc_msgSend_length(v17, v18, v19, v20, v21, v22);

    if (v23 && (objc_msgSend_isEqualToString_(v1, v24, @".", v25, v26, v27) & 1) == 0)
    {
      isEqualToString = objc_msgSend_isEqualToString_(v1, v28, @".", v29, v30, v31);

      return isEqualToString;
    }

    else
    {

      return 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_18386D8B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18386EA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, void *a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

void *sub_18386EDD4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_18386F420(a1, &v10);
}

void sub_18386F3C8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_18386F420(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

uint64_t sub_18386FC24(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_18386FD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18386FD50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18387088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v34 - 176), 8);

  _Block_object_dispose((v34 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_183870974(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18387098C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC70;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_183870AAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v13 = v10;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else if (v10)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC70;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_msgSend_localizedDescription(v13, v15, v16, v17, v18, v19);
      v21 = 138412290;
      v22 = v20;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "Error during recognition: %@", &v21, 0xCu);
    }
  }

  objc_msgSend_logDrawingsAndResultsForRequest_result_error_(*(a1 + 32), v11, *(a1 + 40), v8, v13, v12);
  *(*(*(a1 + 64) + 8) + 24) = 1;
}

void sub_183874238(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"+", a4, a5, a6, @"-", @"\\times", @"\\cdot", @"*", @"\\div", @"/", @":", 0);
  v7 = qword_1EA84D060;
  qword_1EA84D060 = v6;
}

id sub_1838743F8(void *a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v55 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v13 = objc_msgSend_absoluteString(v6, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_fileExistsAtPath_(v7, v14, v13, v15, v16, v17);

  if (v18)
  {
    v23 = 0;
LABEL_5:
    v27 = objc_msgSend_URLByAppendingPathComponent_(v6, v19, v55, v20, v21, v22);
    v30 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v28, v5, 1, 0, v29);
    v56 = v23;
    objc_msgSend_writeToURL_options_error_(v30, v31, v27, 1, &v56, v32);
    v26 = v56;

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v41 = objc_msgSend_absoluteString(v27, v36, v37, v38, v39, v40);
      v47 = objc_msgSend_description(v26, v42, v43, v44, v45, v46);
      *buf = 138412802;
      v59 = v35;
      v60 = 2112;
      v61 = v41;
      v62 = 2112;
      v63 = v47;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_DEFAULT, "%@ saving at URL %@, error = %@", buf, 0x20u);
    }

    if (v26)
    {
      v53 = 0;
    }

    else
    {
      v53 = objc_msgSend_absoluteString(v27, v48, v49, v50, v51, v52);
    }

    goto LABEL_18;
  }

  v57 = 0;
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v7, v19, v6, 1, 0, &v57);
  v25 = v57;
  v26 = v25;
  if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
  {
    v23 = v25;
    goto LABEL_5;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v27 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v59 = v6;
    v60 = 2112;
    v61 = v26;
    _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_ERROR, "Unable to create folder at URL %@: Error %@", buf, 0x16u);
  }

  v53 = 0;
LABEL_18:

  return v53;
}

void sub_1838747A0(uint64_t a1, float a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *a1 = a2;
  sub_18387C174();
}

float sub_18387490C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t **a7)
{
  v7 = *a7;
  v8 = **a7;
  v9 = 0.0;
  if (v8 && v7[1])
  {
    v11 = 0;
    v12 = (a3 + 8);
    do
    {
      v13 = v7[1];
      if (v13)
      {
        for (i = 0; i < v13; ++i)
        {
          v15 = *(a6 + 4 * v13 * v11 + 4 * i);
          if (v15 > a1)
          {
            v16 = *(*(*a5 + 24 * v11) + 40 * i + 16);
            if (v16)
            {
              v17 = *v12;
              do
              {
                v18 = *(v16 + 4);
                if (!v17)
                {
                  goto LABEL_17;
                }

                v19 = (a3 + 8);
                v20 = v17;
                do
                {
                  if (*(v20 + 8) >= v18)
                  {
                    v19 = v20;
                  }

                  v20 = v20[*(v20 + 8) < v18];
                }

                while (v20);
                if (v19 == v12 || v18 < *(v19 + 8))
                {
LABEL_17:
                  operator new();
                }

                v21 = *(v16 + 5);
                v22 = v17;
                while (1)
                {
                  while (1)
                  {
                    v23 = v22;
                    v24 = *(v22 + 8);
                    if (v18 >= v24)
                    {
                      break;
                    }

                    v22 = *v23;
                    if (!*v23)
                    {
                      goto LABEL_29;
                    }
                  }

                  if (v24 >= v18)
                  {
                    break;
                  }

                  v22 = v23[1];
                  if (!v22)
                  {
LABEL_29:
                    operator new();
                  }
                }

                *v23[5] = *v23[5] + (v15 * v21);
                v9 = v9 + (v15 * v21);
                v16 = *v16;
              }

              while (v16);
              v7 = *a7;
            }
          }

          v13 = v7[1];
        }

        v8 = *v7;
      }

      ++v11;
    }

    while (v8 > v11);
  }

  return v9;
}

void sub_183874DFC(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void **a4@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v71 = a4;
  LOBYTE(v72) = 0;
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v70[0] = 0;
  v70[1] = 0;
  v69 = v70;
  v7 = *a3;
  v59 = a3 + 1;
  if (*a3 != a3 + 1)
  {
    v65 = 0;
    v8 = 0;
    v9 = (a1 + 16);
    v10 = -1;
    v63 = (a1 + 16);
    do
    {
      if (*(v7 + 8) > v10)
      {
        v10 = *(v7 + 8);
      }

      v61 = v10;
      v12 = v7[5];
      v11 = v7[6];
      v60 = v7;
      v64 = v11;
      while (v12 != v11)
      {
        v66 = v8;
        v13 = *(v12 + 4);
        v14 = *v9;
        if (!*v9)
        {
          goto LABEL_51;
        }

        v15 = *a2 + 24 * v13;
        v16 = *(v15 + 23);
        v17 = v16 >= 0 ? *(v15 + 23) : *(v15 + 8);
        v18 = v16 >= 0 ? (*a2 + 24 * v13) : *v15;
        v19 = v9;
        do
        {
          v20 = *(v14 + 55);
          if (v20 >= 0)
          {
            v21 = *(v14 + 55);
          }

          else
          {
            v21 = *(v14 + 40);
          }

          if (v20 >= 0)
          {
            v22 = (v14 + 32);
          }

          else
          {
            v22 = *(v14 + 32);
          }

          if (v17 >= v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = v17;
          }

          v24 = memcmp(v22, v18, v23);
          v25 = v21 < v17;
          if (v24)
          {
            v25 = v24 < 0;
          }

          v26 = !v25;
          if (v25)
          {
            v27 = 8;
          }

          else
          {
            v27 = 0;
          }

          if (v26)
          {
            v19 = v14;
          }

          v14 = *(v14 + v27);
        }

        while (v14);
        if (v19 == v9)
        {
          goto LABEL_51;
        }

        v30 = v19[4];
        v29 = v19 + 4;
        v28 = v30;
        v31 = *(v29 + 23);
        if (v31 >= 0)
        {
          v32 = *(v29 + 23);
        }

        else
        {
          v32 = v29[1];
        }

        if (v31 >= 0)
        {
          v33 = v29;
        }

        else
        {
          v33 = v28;
        }

        if (v32 >= v17)
        {
          v34 = v17;
        }

        else
        {
          v34 = v32;
        }

        v35 = memcmp(v18, v33, v34);
        v36 = v17 < v32;
        if (v35)
        {
          v36 = v35 < 0;
        }

        if (v36)
        {
LABEL_51:
          v37 = v70[0];
          if (!v70[0])
          {
LABEL_57:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v38 = v37;
              v39 = *(v37 + 8);
              if (v13 >= v39)
              {
                break;
              }

              v37 = *v38;
              if (!*v38)
              {
                goto LABEL_57;
              }
            }

            if (v39 >= v13)
            {
              break;
            }

            v37 = v38[1];
            if (!v37)
            {
              goto LABEL_57;
            }
          }

          v40 = v38;
          v41 = v66;
          v42 = v66 >> 2;
          v44 = v40[6];
          v43 = v40[7];
          if (v44 < v43)
          {
            *v44 = v42;
            v54 = v44 + 4;
          }

          else
          {
            v45 = v40[5];
            v46 = v44 - v45;
            v47 = (v44 - v45) >> 2;
            v48 = v47 + 1;
            if ((v47 + 1) >> 62)
            {
              sub_18368964C();
            }

            v49 = v43 - v45;
            if (v49 >> 1 > v48)
            {
              v48 = v49 >> 1;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v50 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              if (!(v50 >> 62))
              {
                operator new();
              }

              sub_183688F00();
            }

            v51 = (v44 - v45) >> 2;
            v52 = (4 * v47);
            v53 = (4 * v47 - 4 * v51);
            *v52 = v42;
            v54 = v52 + 1;
            memcpy(v53, v45, v46);
            v40[5] = v53;
            v40[6] = v54;
            v40[7] = 0;
            if (v45)
            {
              operator delete(v45);
            }

            v41 = v66;
          }

          ++v65;
          v40[6] = v54;
          v9 = v63;
          if ((v42 + 1) >> 62)
          {
            sub_18368964C();
          }

          if (v42 != -1)
          {
            if (!((v42 + 1) >> 62))
            {
              operator new();
            }

            sub_183688F00();
          }

          MEMORY[0xFFFFFFFFFFFFFFFC] = v13;
          v8 = 0;
          memcpy(0, 0, v41);
        }

        else
        {
          v8 = v66;
        }

        v12 += 8;
        v11 = v64;
      }

      v55 = v60;
      v56 = v60[1];
      if (v56)
      {
        do
        {
          v57 = v56;
          v56 = *v56;
        }

        while (v56);
      }

      else
      {
        do
        {
          v57 = v55[2];
          v26 = *v57 == v55;
          v55 = v57;
        }

        while (!v26);
      }

      v7 = v57;
      v10 = v61;
    }

    while (v57 != v59);
    if (v61 != -1 && v65)
    {
      v58 = 3 * v65 + v61 + 1;
      memset(v67, 0, 24);
      v71 = v67;
      LOBYTE(v72) = 0;
      if (v58)
      {
        if ((v58 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_18368964C();
      }

      memset(&v67[3], 0, 24);
      v68 = 0;
      if ((v65 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_18368964C();
    }
  }

  sub_18368A374(&v69, v70[0]);
}

void sub_183877484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54)
{
  sub_18387D90C(&a38);
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  sub_18387C0DC(&a28);
  if (a17)
  {
    operator delete(a17);
  }

  sub_18368A374(&a35, a36);
  sub_18369F0F0(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_18387760C(uint64_t a1, void *a2)
{
  v141 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 56) = 0u;
  v3 = a1 + 56;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  v112 = a1 + 96;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  v111 = a1 + 136;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  v110 = a1 + 176;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0u;
  v109 = a1 + 216;
  *(a1 + 208) = 1065353216;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  v114 = (a1 + 296);
  *(a1 + 328) = 1065353216;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  v116 = (a1 + 376);
  v117 = (a1 + 8);
  *(a1 + 408) = 1065353216;
  if (a1 != a2 && *a2 != a2 + 1)
  {
    operator new();
  }

  HIBYTE(v135) = 1;
  LOWORD(__dst) = 123;
  *&v129 = &__dst;
  v115 = a1;
  *(a1 + 24) = *(sub_1836892B0(a1, &__dst) + 14);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__dst);
  }

  HIBYTE(v135) = 1;
  LOWORD(__dst) = 125;
  *&v129 = &__dst;
  *(a1 + 28) = *(sub_1836892B0(a1, &__dst) + 14);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__dst);
  }

  HIBYTE(v135) = 1;
  LOWORD(__dst) = 124;
  *&v129 = &__dst;
  *(a1 + 32) = *(sub_1836892B0(a1, &__dst) + 14);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__dst);
  }

  HIBYTE(v135) = 5;
  strcpy(&__dst, "\\sqrt");
  *&v129 = &__dst;
  *(a1 + 36) = *(sub_1836892B0(a1, &__dst) + 14);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__dst);
  }

  HIBYTE(v135) = 1;
  LOWORD(__dst) = 91;
  *&v129 = &__dst;
  *(a1 + 40) = *(sub_1836892B0(a1, &__dst) + 14);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__dst);
  }

  LODWORD(__dst) = *(a1 + 24);
  v131 = 1;
  strcpy(&v129, "[");
  v126[0] = &v129;
  DWORD1(__dst) = *(sub_1836892B0(a1, &v129) + 14);
  v128 = 14;
  strcpy(v126, "\\begin{matrix}");
  *&v138 = v126;
  DWORD2(__dst) = *(sub_1836892B0(a1, v126) + 14);
  v140 = 15;
  strcpy(&v138, "\\begin{aligned}");
  v137[0] = &v138;
  HIDWORD(__dst) = *(sub_1836892B0(a1, &v138) + 14);
  HIBYTE(v137[2]) = 16;
  strcpy(v137, "\\begin{array}{l}");
  *__p = v137;
  v134 = *(sub_1836892B0(a1, v137) + 14);
  v125 = 17;
  qmemcpy(v113, "\\begin{array}{lr\\begin{array}{l}", sizeof(v113));
  strcpy(__p, "\\begin{array}{lr}");
  v122[0] = __p;
  v135 = *(sub_1836892B0(a1, __p) + 14);
  sub_18387D978(v3, &__dst, v136);
  if (v125 < 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(v137[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((v140 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_207;
    }
  }

  else if ((SHIBYTE(v137[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(v137[0]);
  if ((v140 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v128 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_208:
    operator delete(v126[0]);
    if ((v131 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_209;
  }

LABEL_207:
  operator delete(v138);
  if (v128 < 0)
  {
    goto LABEL_208;
  }

LABEL_18:
  if ((v131 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_209:
  operator delete(v129);
LABEL_19:
  LODWORD(v137[0]) = *(a1 + 28);
  HIBYTE(v135) = 1;
  LOWORD(__dst) = 93;
  *&v129 = &__dst;
  HIDWORD(v137[0]) = *(sub_1836892B0(a1, &__dst) + 14);
  v131 = 12;
  strcpy(&v129, "\\end{matrix}");
  v126[0] = &v129;
  LODWORD(v137[1]) = *(sub_1836892B0(a1, &v129) + 14);
  v128 = 13;
  strcpy(v126, "\\end{aligned}");
  *&v138 = v126;
  HIDWORD(v137[1]) = *(sub_1836892B0(a1, v126) + 14);
  v140 = 11;
  qmemcpy(v108, "\\end{arraligned}\\end{ali\\end{mat", sizeof(v108));
  strcpy(&v138, "\\end{array}");
  *__p = &v138;
  LODWORD(v137[2]) = *(sub_1836892B0(a1, &v138) + 14);
  sub_18387D978(v112, v137, &v137[2] + 1);
  if (v140 < 0)
  {
    operator delete(v138);
    if ((v128 & 0x80000000) == 0)
    {
LABEL_21:
      if ((v131 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_212:
      operator delete(v129);
      if ((SHIBYTE(v135) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_213;
    }
  }

  else if ((v128 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v126[0]);
  if (v131 < 0)
  {
    goto LABEL_212;
  }

LABEL_22:
  if ((SHIBYTE(v135) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_213:
  operator delete(__dst);
LABEL_23:
  HIBYTE(v135) = 14;
  strcpy(&__dst, "\\begin{matrix}");
  *&v129 = &__dst;
  LODWORD(v137[0]) = *(sub_1836892B0(a1, &__dst) + 14);
  v131 = 15;
  strcpy(&v129, "\\begin{aligned}");
  v126[0] = &v129;
  HIDWORD(v137[0]) = *(sub_1836892B0(a1, &v129) + 14);
  v128 = 16;
  *v126 = v113[1];
  v127 = 0;
  *&v138 = v126;
  LODWORD(v137[1]) = *(sub_1836892B0(a1, v126) + 14);
  v140 = 17;
  v138 = v113[0];
  v139 = 125;
  *__p = &v138;
  HIDWORD(v137[1]) = *(sub_1836892B0(a1, &v138) + 14);
  sub_18387D978(v111, v137, &v137[2]);
  if (v140 < 0)
  {
    operator delete(v138);
    if ((v128 & 0x80000000) == 0)
    {
LABEL_25:
      if ((v131 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_216:
      operator delete(v129);
      if ((SHIBYTE(v135) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_217;
    }
  }

  else if ((v128 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v126[0]);
  if (v131 < 0)
  {
    goto LABEL_216;
  }

LABEL_26:
  if ((SHIBYTE(v135) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_217:
  operator delete(__dst);
LABEL_27:
  HIBYTE(v135) = 1;
  LOWORD(__dst) = 38;
  *&v129 = &__dst;
  LODWORD(v126[0]) = *(sub_1836892B0(a1, &__dst) + 14);
  sub_18387D978(v110, v126, v126 + 1);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__dst);
  }

  HIBYTE(v135) = 1;
  LOWORD(__dst) = 94;
  *&v129 = &__dst;
  LODWORD(v138) = *(sub_1836892B0(a1, &__dst) + 14);
  v131 = 1;
  strcpy(&v129, "_");
  v126[0] = &v129;
  DWORD1(v138) = *(sub_1836892B0(a1, &v129) + 14);
  v128 = 5;
  strcpy(v126, "\\frac");
  v137[0] = v126;
  DWORD2(v138) = *(sub_1836892B0(a1, v126) + 14);
  sub_18387D978(v109, &v138, &v138 + 3);
  if ((v128 & 0x80000000) == 0)
  {
    if ((v131 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_219:
    operator delete(v129);
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_220;
  }

  operator delete(v126[0]);
  if (v131 < 0)
  {
    goto LABEL_219;
  }

LABEL_31:
  if ((SHIBYTE(v135) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_220:
  operator delete(__dst);
LABEL_32:
  v131 = 1;
  strcpy(&v129, "+");
  v126[0] = &v129;
  LODWORD(__dst) = *(sub_1836892B0(a1, &v129) + 14);
  v128 = 1;
  LOWORD(v126[0]) = 45;
  *&v138 = v126;
  DWORD1(__dst) = *(sub_1836892B0(a1, v126) + 14);
  v140 = 6;
  strcpy(&v138, "\\times");
  v137[0] = &v138;
  DWORD2(__dst) = *(sub_1836892B0(a1, &v138) + 14);
  HIBYTE(v137[2]) = 4;
  strcpy(v137, "\\ast");
  *__p = v137;
  HIDWORD(__dst) = *(sub_1836892B0(a1, v137) + 14);
  v125 = 5;
  strcpy(__p, "\\cdot");
  v122[0] = __p;
  v134 = *(sub_1836892B0(a1, __p) + 14);
  v123 = 1;
  LOWORD(v122[0]) = 47;
  v120[0] = v122;
  v135 = *(sub_1836892B0(a1, v122) + 14);
  v121 = 4;
  strcpy(v120, "\\div");
  v118[0] = v120;
  v136[0] = *(sub_1836892B0(a1, v120) + 14);
  v119 = 1;
  LOWORD(v118[0]) = 58;
  v132 = v118;
  v136[1] = *(sub_1836892B0(a1, v118) + 14);
  sub_18387D978(a1 + 256, &__dst, v137);
  v4 = v117;
  if (v119 < 0)
  {
    operator delete(v118[0]);
    if ((v121 & 0x80000000) == 0)
    {
LABEL_34:
      if ((v123 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_223;
    }
  }

  else if ((v121 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(v120[0]);
  if ((v123 & 0x80000000) == 0)
  {
LABEL_35:
    if ((v125 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_224;
  }

LABEL_223:
  operator delete(v122[0]);
  if ((v125 & 0x80000000) == 0)
  {
LABEL_36:
    if ((SHIBYTE(v137[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_225;
  }

LABEL_224:
  operator delete(*__p);
  if ((SHIBYTE(v137[2]) & 0x80000000) == 0)
  {
LABEL_37:
    if ((v140 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_226;
  }

LABEL_225:
  operator delete(v137[0]);
  if ((v140 & 0x80000000) == 0)
  {
LABEL_38:
    if ((v128 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_227:
    operator delete(v126[0]);
    qmemcpy(v105, "{matrix}\\begin{maligned}", sizeof(v105));
    v104 = (a1 + 32);
    if ((v131 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_228:
    operator delete(v129);
    goto LABEL_40;
  }

LABEL_226:
  operator delete(v138);
  if (v128 < 0)
  {
    goto LABEL_227;
  }

LABEL_39:
  qmemcpy(v105, "{matrix}\\begin{maligned}", sizeof(v105));
  v104 = (a1 + 32);
  if (v131 < 0)
  {
    goto LABEL_228;
  }

LABEL_40:
  v106 = *"\\begin{aligned}";
  v107 = (a1 + 24);
  for (i = 0; i != 9; ++i)
  {
    while (1)
    {
      v6 = off_1E6DDF208[i];
      v7 = strlen(v6);
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_183688FF0();
      }

      v8 = v7;
      if (v7 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v135) = v7;
      if (v7)
      {
        memmove(&__dst, v6, v7);
        *(&__dst + v8) = 0;
        v9 = *v4;
        v10 = HIBYTE(v135);
        v11 = SHIBYTE(v135);
        if (!*v4)
        {
          goto LABEL_42;
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        v9 = *v4;
        v10 = HIBYTE(v135);
        v11 = SHIBYTE(v135);
        if (!*v4)
        {
          goto LABEL_42;
        }
      }

      v12 = v11 >= 0 ? v10 : *(&__dst + 1);
      v13 = v11 >= 0 ? &__dst : __dst;
      do
      {
        v14 = *(v9 + 55);
        if (v14 >= 0)
        {
          v15 = *(v9 + 55);
        }

        else
        {
          v15 = *(v9 + 40);
        }

        if (v14 >= 0)
        {
          v16 = (v9 + 32);
        }

        else
        {
          v16 = *(v9 + 32);
        }

        if (v12 >= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v12;
        }

        v18 = memcmp(v16, v13, v17);
        v19 = v15 < v12;
        if (v18)
        {
          v19 = v18 < 0;
        }

        v20 = !v19;
        if (v19)
        {
          v21 = 8;
        }

        else
        {
          v21 = 0;
        }

        if (v20)
        {
          v4 = v9;
        }

        v9 = *(v9 + v21);
      }

      while (v9);
      if (v4 == v117)
      {
        v4 = v117;
      }

      else
      {
        v24 = v4[4];
        v23 = v4 + 4;
        v22 = v24;
        v25 = *(v23 + 23);
        if (v25 >= 0)
        {
          v26 = *(v23 + 23);
        }

        else
        {
          v26 = v23[1];
        }

        if (v25 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v22;
        }

        if (v26 >= v12)
        {
          v28 = v12;
        }

        else
        {
          v28 = v26;
        }

        v29 = memcmp(v13, v27, v28);
        v30 = v12 >= v26;
        if (v29)
        {
          v30 = v29 >= 0;
        }

        v4 = v117;
        if (v30)
        {
          *&v129 = &__dst;
          v31 = sub_1836897BC(v115, &__dst);
          sub_18383D490(v114, v31 + 14);
          LOBYTE(v11) = HIBYTE(v135);
        }
      }

LABEL_42:
      if ((v11 & 0x80) != 0)
      {
        break;
      }

      if (++i == 9)
      {
        goto LABEL_90;
      }
    }

    operator delete(__dst);
  }

LABEL_90:
  for (j = 0; j != 9; ++j)
  {
    v33 = off_1E6DDF250[j];
    v34 = strlen(v33);
    if (v34 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_183688FF0();
    }

    v35 = v34;
    if (v34 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v135) = v34;
    if (v34)
    {
      memmove(&__dst, v33, v34);
      *(&__dst + v35) = 0;
      v36 = *v4;
      v37 = HIBYTE(v135);
      v38 = SHIBYTE(v135);
      if (!*v4)
      {
        goto LABEL_138;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      v36 = *v4;
      v37 = HIBYTE(v135);
      v38 = SHIBYTE(v135);
      if (!*v4)
      {
        goto LABEL_138;
      }
    }

    if (v38 >= 0)
    {
      v39 = v37;
    }

    else
    {
      v39 = *(&__dst + 1);
    }

    if (v38 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    do
    {
      v41 = *(v36 + 55);
      if (v41 >= 0)
      {
        v42 = *(v36 + 55);
      }

      else
      {
        v42 = *(v36 + 40);
      }

      if (v41 >= 0)
      {
        v43 = (v36 + 32);
      }

      else
      {
        v43 = *(v36 + 32);
      }

      if (v39 >= v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = v39;
      }

      v45 = memcmp(v43, p_dst, v44);
      v46 = v42 < v39;
      if (v45)
      {
        v46 = v45 < 0;
      }

      v47 = !v46;
      if (v46)
      {
        v48 = 8;
      }

      else
      {
        v48 = 0;
      }

      if (v47)
      {
        v4 = v36;
      }

      v36 = *(v36 + v48);
    }

    while (v36);
    if (v4 == v117)
    {
      goto LABEL_137;
    }

    v51 = v4[4];
    v50 = v4 + 4;
    v49 = v51;
    v52 = *(v50 + 23);
    if (v52 >= 0)
    {
      v53 = *(v50 + 23);
    }

    else
    {
      v53 = v50[1];
    }

    if (v52 >= 0)
    {
      v54 = v50;
    }

    else
    {
      v54 = v49;
    }

    if (v53 >= v39)
    {
      v55 = v39;
    }

    else
    {
      v55 = v53;
    }

    v56 = memcmp(p_dst, v54, v55);
    v57 = v39 >= v53;
    if (v56)
    {
      v57 = v56 >= 0;
    }

    v4 = v117;
    if (v57)
    {
      *&v129 = &__dst;
      v58 = sub_1836897BC(v115, &__dst);
      sub_18383D490((v115 + 336), v58 + 14);
      LOBYTE(v38) = HIBYTE(v135);
LABEL_137:
      v4 = v117;
    }

LABEL_138:
    if ((v38 & 0x80) != 0)
    {
      operator delete(__dst);
    }
  }

  v59 = v115;
  v60 = *(v115 + 28);
  *&__dst = v107;
  *(sub_18383EA88(v116, v107) + 5) = v60;
  HIBYTE(v135) = 1;
  LOWORD(__dst) = 93;
  *&v129 = &__dst;
  v62 = v105[2];
  v61 = v106;
  v64 = v105[0];
  v63 = v105[1];
  v65 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 1;
  strcpy(&v129, "[");
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v65;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_230;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

LABEL_230:
    operator delete(__dst);
  }

LABEL_142:
  HIBYTE(v135) = 12;
  strcpy(&__dst + 8, "rix}");
  *&__dst = v108[3];
  *&v129 = &__dst;
  v66 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 14;
  *&v129 = v63;
  *(&v129 + 6) = v64;
  BYTE14(v129) = 0;
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v66;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_232;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_144;
    }

LABEL_232:
    operator delete(__dst);
  }

LABEL_144:
  HIBYTE(v135) = 13;
  *&__dst = v108[2];
  *(&__dst + 5) = v108[1];
  BYTE13(__dst) = 0;
  *&v129 = &__dst;
  v67 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 15;
  *&v129 = v61;
  *(&v129 + 7) = v62;
  HIBYTE(v129) = 0;
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v67;
  v68 = v108[0];
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_234;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_146;
    }

LABEL_234:
    operator delete(__dst);
  }

LABEL_146:
  HIBYTE(v135) = 11;
  strcpy(&__dst + 7, "ray}");
  *&__dst = v108[0];
  *&v129 = &__dst;
  v69 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 16;
  v129 = v113[1];
  LOBYTE(v130) = 0;
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v69;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_236;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

LABEL_236:
    operator delete(__dst);
  }

LABEL_148:
  HIBYTE(v135) = 11;
  strcpy(&__dst + 7, "ray}");
  *&__dst = v68;
  *&v129 = &__dst;
  v70 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 17;
  v129 = v113[0];
  v130 = 125;
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v70;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_238;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

LABEL_238:
    operator delete(__dst);
  }

LABEL_150:
  HIBYTE(v135) = 1;
  LOWORD(__dst) = 41;
  *&v129 = &__dst;
  v71 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 1;
  strcpy(&v129, "(");
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v71;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_240;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_152;
    }

LABEL_240:
    operator delete(__dst);
  }

LABEL_152:
  HIBYTE(v135) = 7;
  strcpy(&__dst, "\\rbrack");
  *&v129 = &__dst;
  v72 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 7;
  strcpy(&v129, "\\lbrack");
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v72;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_242;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_154;
    }

LABEL_242:
    operator delete(__dst);
  }

LABEL_154:
  HIBYTE(v135) = 7;
  strcpy(&__dst, "\\rangle");
  *&v129 = &__dst;
  v73 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 7;
  strcpy(&v129, "\\langle");
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v73;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_244;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_156;
    }

LABEL_244:
    operator delete(__dst);
  }

LABEL_156:
  HIBYTE(v135) = 6;
  strcpy(&__dst, "\\rceil");
  *&v129 = &__dst;
  v74 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 6;
  strcpy(&v129, "\\lceil");
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v74;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_246;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

LABEL_246:
    operator delete(__dst);
  }

LABEL_158:
  HIBYTE(v135) = 7;
  strcpy(&__dst, "\\rfloor");
  *&v129 = &__dst;
  v75 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 7;
  strcpy(&v129, "\\lfloor");
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v75;
  if (v131 < 0)
  {
    operator delete(v129);
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_248;
    }
  }

  else
  {
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

LABEL_248:
    operator delete(__dst);
  }

LABEL_160:
  HIBYTE(v135) = 7;
  strcpy(&__dst, "\\rfloor");
  *&v129 = &__dst;
  v76 = *(sub_1836892B0(v59, &__dst) + 14);
  v131 = 2;
  strcpy(&v129, "\\{");
  v126[0] = &v129;
  v126[0] = sub_1836892B0(v59, &v129) + 7;
  *(sub_18383EA88(v116, v126[0]) + 5) = v76;
  if (v131 < 0)
  {
    operator delete(v129);
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_250:
    operator delete(__dst);
    goto LABEL_162;
  }

  if (SHIBYTE(v135) < 0)
  {
    goto LABEL_250;
  }

LABEL_162:
  v77 = *v104;
  *&__dst = v104;
  *(sub_18383EA88(v116, v104) + 5) = v77;
  HIBYTE(v135) = 6;
  strcpy(&__dst, "\\left(");
  v78 = v117;
  v79 = *v117;
  if (*v117)
  {
    do
    {
      v80 = *(v79 + 55);
      v81 = v80;
      if ((v80 & 0x80u) != 0)
      {
        v80 = *(v79 + 40);
      }

      if (v81 >= 0)
      {
        v82 = (v79 + 32);
      }

      else
      {
        v82 = *(v79 + 32);
      }

      if (v80 >= 6)
      {
        v83 = 6;
      }

      else
      {
        v83 = v80;
      }

      v84 = v80 < 6;
      v85 = memcmp(v82, &__dst, v83);
      v86 = v85 < 0;
      if (!v85)
      {
        v86 = v84;
      }

      v87 = !v86;
      if (v86)
      {
        v88 = 8;
      }

      else
      {
        v88 = 0;
      }

      if (v87)
      {
        v78 = v79;
      }

      v79 = *(v79 + v88);
    }

    while (v79);
    if (v78 != v117)
    {
      v91 = v78[4];
      v90 = v78 + 4;
      v89 = v91;
      v92 = *(v90 + 23);
      v93 = v92;
      if ((v92 & 0x80u) != 0)
      {
        v92 = v90[1];
      }

      if (v93 >= 0)
      {
        v94 = v90;
      }

      else
      {
        v94 = v89;
      }

      if (v92 >= 6)
      {
        v95 = 6;
      }

      else
      {
        v95 = v92;
      }

      v96 = v92 > 6;
      v97 = memcmp(&__dst, v94, v95);
      v98 = v97 < 0;
      if (!v97)
      {
        v98 = v96;
      }

      if (!v98)
      {
        HIBYTE(v135) = 7;
        strcpy(&__dst, "\\right)");
        *&v129 = &__dst;
        v99 = *(sub_1836892B0(v59, &__dst) + 14);
        v131 = 6;
        strcpy(&v129, "\\left(");
        v126[0] = &v129;
        v126[0] = sub_1836892B0(v59, &v129) + 7;
        *(sub_18383EA88(v116, v126[0]) + 5) = v99;
        if (v131 < 0)
        {
          operator delete(v129);
          if (SHIBYTE(v135) < 0)
          {
            goto LABEL_252;
          }
        }

        else
        {
          if ((SHIBYTE(v135) & 0x80000000) == 0)
          {
            goto LABEL_194;
          }

LABEL_252:
          operator delete(__dst);
        }

LABEL_194:
        HIBYTE(v135) = 7;
        strcpy(&__dst, "\\right|");
        *&v129 = &__dst;
        v100 = *(sub_1836892B0(v59, &__dst) + 14);
        v131 = 6;
        strcpy(&v129, "\\left|");
        v126[0] = &v129;
        v126[0] = sub_1836892B0(v59, &v129) + 7;
        *(sub_18383EA88(v116, v126[0]) + 5) = v100;
        if (v131 < 0)
        {
          operator delete(v129);
          if (SHIBYTE(v135) < 0)
          {
            goto LABEL_254;
          }
        }

        else
        {
          if ((SHIBYTE(v135) & 0x80000000) == 0)
          {
            goto LABEL_196;
          }

LABEL_254:
          operator delete(__dst);
        }

LABEL_196:
        HIBYTE(v135) = 13;
        strcpy(&__dst, "\\right\\rfloor");
        *&v129 = &__dst;
        v101 = *(sub_1836892B0(v59, &__dst) + 14);
        v131 = 12;
        strcpy(&v129, "\\left\\lfloor");
        v126[0] = &v129;
        v126[0] = sub_1836892B0(v59, &v129) + 7;
        *(sub_18383EA88(v116, v126[0]) + 5) = v101;
        if (v131 < 0)
        {
          operator delete(v129);
          if (SHIBYTE(v135) < 0)
          {
            goto LABEL_256;
          }
        }

        else
        {
          if ((SHIBYTE(v135) & 0x80000000) == 0)
          {
            goto LABEL_198;
          }

LABEL_256:
          operator delete(__dst);
        }

LABEL_198:
        HIBYTE(v135) = 12;
        strcpy(&__dst, "\\right\\rceil");
        *&v129 = &__dst;
        v102 = *(sub_1836892B0(v59, &__dst) + 14);
        v131 = 11;
        strcpy(&v129, "\\left\\lceil");
        v126[0] = &v129;
        v126[0] = sub_1836892B0(v59, &v129) + 7;
        *(sub_18383EA88(v116, v126[0]) + 5) = v102;
        if (v131 < 0)
        {
          operator delete(v129);
          if (SHIBYTE(v135) < 0)
          {
            goto LABEL_258;
          }
        }

        else
        {
          if ((SHIBYTE(v135) & 0x80000000) == 0)
          {
            goto LABEL_200;
          }

LABEL_258:
          operator delete(__dst);
        }
      }
    }
  }

LABEL_200:
  HIBYTE(v135) = 2;
  strcpy(&__dst, "\\\");
  *&v129 = &__dst;
  *(v59 + 44) = *(sub_1836892B0(v59, &__dst) + 14);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__dst);
  }

  HIBYTE(v135) = 6;
  strcpy(&__dst, "\\hline");
  *&v129 = &__dst;
  *(v59 + 48) = *(sub_1836892B0(v59, &__dst) + 14);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__dst);
  }

  return v59;
}

void sub_1838795F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (*(v32 - 169) < 0)
  {
    operator delete(*(v32 - 192));
  }

  sub_1836CFA48(a32);
  sub_1836CFA48(a31 + 336);
  sub_1836CFA48(a30);
  sub_1836CFA48(a31 + 256);
  sub_1836CFA48(a21);
  sub_1836CFA48(a22);
  sub_1836CFA48(a23);
  sub_1836CFA48(a24);
  sub_1836CFA48(a10);
  sub_18368922C(a31, *(a31 + 8));
  _Unwind_Resume(a1);
}

void sub_183879A1C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v4 = *(a2 + 23);
  v5 = *(a2 + 23);
  v6 = a2[1];
  if (v4 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (!v7)
  {
    goto LABEL_165;
  }

  v8 = 0;
  v9 = *a2;
  if (v4 >= 0)
  {
    v9 = a2;
  }

  while (*(v9 + v8) == 32)
  {
    if (v7 == ++v8)
    {
      LODWORD(v8) = v7;
      break;
    }
  }

  v10 = v8;
  if (v7 <= v8)
  {
LABEL_165:
    v89 = 0;
    v90 = 0;
    goto LABEL_166;
  }

  v11 = 0;
  v12 = 0;
  v13 = v4 >> 31;
  v14 = v8;
  do
  {
    if ((v13 & 1) == 0)
    {
      if (*(a2 + v10) == 32)
      {
        v17 = v14;
        v6 = v5;
        v16 = a2;
        if (v14 > v5)
        {
LABEL_177:
          v92 = v12;
          v93 = 0;
          v91 = v11;
          sub_18368688C();
        }

        goto LABEL_23;
      }

      if (v5 - 1 != v10)
      {
        goto LABEL_13;
      }

      v20 = v14;
      v6 = v5;
      v16 = a2;
      if (v14 > v5)
      {
LABEL_180:
        v92 = v12;
        v93 = 0;
        v91 = v11;
        sub_18368688C();
      }

LABEL_35:
      v21 = v6 - v20;
      if (v21 >= v8 - v14 + 1)
      {
        v22 = v8 - v14 + 1;
      }

      else
      {
        v22 = v21;
      }

      if (v22 > 0x7FFFFFFFFFFFFFF7)
      {
        v92 = v12;
        v93 = 0;
        v91 = v11;
        sub_183688FF0();
      }

      if (v22 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v95) = v22;
      if (v22)
      {
        memmove(&__dst, v16 + v20, v22);
        *(&__dst + v22) = 0;
      }

      else
      {
        LOBYTE(__dst) = 0;
      }

      v26 = v12 - v11;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3);
      v28 = v27 + 1;
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        v92 = v12;
        v93 = 0;
        v91 = v11;
        sub_18368964C();
      }

      if (0x5555555555555556 * (-v11 >> 3) > v28)
      {
        v28 = 0x5555555555555556 * (-v11 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v11 >> 3) >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v29 = v28;
      }

      if (v29)
      {
        if (v29 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        v92 = v12;
        v93 = 0;
        v91 = v11;
        sub_183688F00();
      }

      v39 = 8 * ((v12 - v11) >> 3);
      *v39 = __dst;
      *(v39 + 16) = v95;
      v12 = (v39 + 24);
      memcpy((24 * v27 - v26), v11, v26);
      if (v11)
      {
        operator delete(v11);
      }

      v11 = 24 * v27 - v26;
      v6 = a2[1];
      v5 = *(a2 + 23);
      goto LABEL_13;
    }

    v16 = *a2;
    if (*(*a2 + v10) != 32)
    {
      if (v6 - 1 != v10)
      {
        goto LABEL_13;
      }

      v20 = v14;
      if (v6 < v14)
      {
        goto LABEL_180;
      }

      goto LABEL_35;
    }

    v17 = v14;
    if (v6 < v14)
    {
      goto LABEL_177;
    }

LABEL_23:
    v18 = v6 - v17;
    if (v18 >= v8 - v14)
    {
      v19 = v8 - v14;
    }

    else
    {
      v19 = v18;
    }

    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      v92 = v12;
      v93 = 0;
      v91 = v11;
      sub_183688FF0();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v95) = v19;
    if (v19)
    {
      memmove(&__dst, v16 + v17, v19);
      *(&__dst + v19) = 0;
    }

    else
    {
      LOBYTE(__dst) = 0;
    }

    v23 = v12 - v11;
    v24 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) + 1;
    if (v24 > 0xAAAAAAAAAAAAAAALL)
    {
      v92 = v12;
      v93 = 0;
      v91 = v11;
      sub_18368964C();
    }

    if (0x5555555555555556 * (-v11 >> 3) > v24)
    {
      v24 = 0x5555555555555556 * (-v11 >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * (-v11 >> 3) >= 0x555555555555555)
    {
      v25 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      if (v25 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      v92 = v12;
      v93 = 0;
      v91 = v11;
      sub_183688F00();
    }

    v30 = 8 * ((v12 - v11) >> 3);
    *v30 = __dst;
    *(v30 + 16) = v95;
    v12 = (v30 + 24);
    v31 = v30 - v23;
    memcpy((v30 - v23), v11, v23);
    if (v11)
    {
      operator delete(v11);
    }

    v11 = v31;
    v5 = *(a2 + 23);
    v6 = a2[1];
    if ((v5 & 0x80u) == 0)
    {
      v32 = *(a2 + 23);
    }

    else
    {
      v32 = a2[1];
    }

    v33 = v8;
    if ((v5 & 0x80u) == 0)
    {
      v34 = a2;
    }

    else
    {
      v34 = *a2;
    }

    if (v32 <= v8 + 1)
    {
      v35 = v8 + 1;
    }

    else
    {
      v35 = v32;
    }

    if (v32 <= v8 + 1)
    {
      v36 = v8 + 1;
    }

    else
    {
      v36 = v32;
    }

    LODWORD(v8) = v36 - 1;
    v37 = v34 + 1;
    do
    {
      v14 = v33 + 1;
      if (v32 <= v33 + 1)
      {
        v14 = v35;
        goto LABEL_13;
      }

      v38 = *(v37 + v33++);
    }

    while (v38 == 32);
    LODWORD(v8) = v14 - 1;
LABEL_13:
    LODWORD(v8) = v8 + 1;
    v10 = v8;
    LOBYTE(v13) = (v5 & 0x80u) != 0;
    if ((v5 & 0x80u) == 0)
    {
      v15 = v5;
    }

    else
    {
      v15 = v6;
    }
  }

  while (v15 > v8);
  v92 = v12;
  v93 = 0;
  v90 = 0;
  v91 = v11;
  v88 = 0;
  v89 = 0;
  if (v12 != v11)
  {
    v84 = 0;
    v40 = 0;
    v41 = (a1 + 8);
    while (1)
    {
      v42 = (v11 + 24 * v40);
      if (v42[23] < 0)
      {
        sub_183688F34(__p, *v42, *(v42 + 1));
      }

      else
      {
        v43 = *v42;
        v87 = *(v42 + 2);
        *__p = v43;
      }

      v44 = *v41;
      if (!*v41)
      {
        goto LABEL_129;
      }

      v45 = v87 >= 0 ? HIBYTE(v87) : __p[1];
      v46 = v87 >= 0 ? __p : __p[0];
      v47 = (a1 + 8);
      v48 = *v41;
      do
      {
        v49 = *(v48 + 55);
        if (v49 >= 0)
        {
          v50 = *(v48 + 55);
        }

        else
        {
          v50 = *(v48 + 40);
        }

        if (v49 >= 0)
        {
          v51 = (v48 + 32);
        }

        else
        {
          v51 = *(v48 + 32);
        }

        if (v45 >= v50)
        {
          v52 = v50;
        }

        else
        {
          v52 = v45;
        }

        v53 = memcmp(v51, v46, v52);
        v54 = v50 < v45;
        if (v53)
        {
          v54 = v53 < 0;
        }

        v55 = !v54;
        if (v54)
        {
          v56 = 8;
        }

        else
        {
          v56 = 0;
        }

        if (v55)
        {
          v47 = v48;
        }

        v48 = *(v48 + v56);
      }

      while (v48);
      if (v47 == v41)
      {
        goto LABEL_129;
      }

      v59 = v47[4];
      v58 = v47 + 4;
      v57 = v59;
      v60 = *(v58 + 23);
      if (v60 >= 0)
      {
        v61 = *(v58 + 23);
      }

      else
      {
        v61 = v58[1];
      }

      if (v60 >= 0)
      {
        v62 = v58;
      }

      else
      {
        v62 = v57;
      }

      if (v61 >= v45)
      {
        v63 = v45;
      }

      else
      {
        v63 = v61;
      }

      v64 = memcmp(v46, v62, v63);
      v65 = v45 < v61;
      if (v64)
      {
        v65 = v64 < 0;
      }

      if (v65)
      {
LABEL_129:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v67 = *(v44 + 55);
          if (v67 >= 0)
          {
            v68 = *(v44 + 55);
          }

          else
          {
            v68 = v44[5];
          }

          if (v67 >= 0)
          {
            v69 = v44 + 4;
          }

          else
          {
            v69 = v44[4];
          }

          if (v68 >= v45)
          {
            v70 = v45;
          }

          else
          {
            v70 = v68;
          }

          v71 = memcmp(v46, v69, v70);
          v72 = v45 < v68;
          if (v71)
          {
            v72 = v71 < 0;
          }

          if (!v72)
          {
            break;
          }

          v44 = *v44;
          if (!v44)
          {
            goto LABEL_176;
          }
        }

        v73 = memcmp(v69, v46, v70);
        v74 = v68 < v45;
        if (v73)
        {
          v74 = v73 < 0;
        }

        if (!v74)
        {
          break;
        }

        v44 = v44[1];
        if (!v44)
        {
LABEL_176:
          v88 = 0;
          sub_1836868A4("map::at:  key not found");
        }
      }

      v75 = v84;
      if (v84 >= v90)
      {
        v76 = v84 >> 2;
        v77 = (v84 >> 2) + 1;
        if (v77 >> 62)
        {
          v88 = 0;
          sub_18368964C();
        }

        if (v90 >> 1 > v77)
        {
          v77 = v90 >> 1;
        }

        if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v78 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v78 = v77;
        }

        if (v78)
        {
          if (!(v78 >> 62))
          {
            operator new();
          }

          v88 = 0;
          sub_183688F00();
        }

        *(4 * v76) = *(v44 + 14);
        memcpy(0, 0, v84);
        v90 = 0;
        v84 = 4 * v76 + 4;
        v89 = v84;
        if ((SHIBYTE(v87) & 0x80000000) == 0)
        {
          goto LABEL_131;
        }
      }

      else
      {
        *v84 = *(v44 + 14);
        v84 += 4;
        v89 = v75 + 4;
        if ((SHIBYTE(v87) & 0x80000000) == 0)
        {
          goto LABEL_131;
        }
      }

      operator delete(__p[0]);
LABEL_131:
      ++v40;
      v11 = v91;
      v66 = a3;
      if (0xAAAAAAAAAAAAAAABLL * ((v92 - v91) >> 3) <= v40)
      {
        goto LABEL_167;
      }
    }
  }

LABEL_166:
  v66 = a3;
LABEL_167:
  v88 = 0;
  sub_18387A58C(a1, &v88, v66);
  v79 = v91;
  if (v91)
  {
    v80 = v92;
    v81 = v91;
    if (v92 != v91)
    {
      do
      {
        v82 = *(v80 - 1);
        v80 -= 3;
        if (v82 < 0)
        {
          operator delete(*v80);
        }
      }

      while (v80 != v79);
      v81 = v91;
    }

    v92 = v79;
    operator delete(v81);
  }
}

void sub_18387A434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  sub_183689748(&a22);
  _Unwind_Resume(a1);
}

void sub_18387A58C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v119 = a3;
  if (a2[1] == *a2)
  {
    v118 = 0;
    v8 = 0;
    goto LABEL_245;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v13 = *(v6 + 4 * v7);
    v14 = *(a1 + 64);
    if (v14)
    {
      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = v13;
        if (v14 <= v13)
        {
          v16 = v13 % v14;
        }
      }

      else
      {
        v16 = (v14 - 1) & v13;
      }

      v17 = *(*(a1 + 56) + 8 * v16);
      if (v17)
      {
        v18 = *v17;
        if (v18)
        {
          if (v15.u32[0] < 2uLL)
          {
            v19 = v14 - 1;
            while (1)
            {
              v20 = v18[1];
              if (v20 == v13)
              {
                if (*(v18 + 4) == v13)
                {
                  goto LABEL_65;
                }
              }

              else if ((v20 & v19) != v16)
              {
                goto LABEL_24;
              }

              v18 = *v18;
              if (!v18)
              {
                goto LABEL_24;
              }
            }
          }

          do
          {
            v21 = v18[1];
            if (v21 == v13)
            {
              if (*(v18 + 4) == v13)
              {
LABEL_65:
                if (v8 >= v9)
                {
                  v46 = v8;
                  v47 = v8 >> 2;
                  v48 = v47 + 1;
                  if ((v47 + 1) >> 62)
                  {
                    sub_18368964C();
                  }

                  if (v9 >> 1 > v48)
                  {
                    v48 = v9 >> 1;
                  }

                  v115 = v11;
                  v116 = v10;
                  if (v48)
                  {
                    if (!(v48 >> 62))
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v54 = (4 * v47);
                  *v54 = v13;
                  v8 = (v54 + 1);
                  memcpy(0, 0, v46);
                  v9 = 0;
                  v11 = v115;
                  v10 = v116;
                  if (v116 < v115)
                  {
LABEL_67:
                    *v10 = v7;
                    v10 += 4;
                    v30 = *(a1 + 184);
                    if (!v30)
                    {
                      goto LABEL_109;
                    }

                    goto LABEL_45;
                  }
                }

                else
                {
                  *v8 = v13;
                  v8 += 4;
                  if (v10 < v11)
                  {
                    goto LABEL_67;
                  }
                }

                v55 = v10 >> 2;
                v56 = (v10 >> 2) + 1;
                if (v56 >> 62)
                {
                  sub_18368964C();
                }

                v117 = v8;
                if (v11 >> 1 > v56)
                {
                  v56 = v11 >> 1;
                }

                if (v56)
                {
                  if (!(v56 >> 62))
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                v57 = v9;
                *(4 * v55) = v7;
                memcpy(0, 0, v10);
                v9 = v57;
                v11 = 0;
                v8 = v117;
                v10 = 4 * v55 + 4;
                v30 = *(a1 + 184);
                if (v30)
                {
                  goto LABEL_45;
                }

                goto LABEL_109;
              }
            }

            else
            {
              if (v21 >= v14)
              {
                v21 %= v14;
              }

              if (v21 != v16)
              {
                break;
              }
            }

            v18 = *v18;
          }

          while (v18);
        }
      }
    }

LABEL_24:
    v22 = *(a1 + 104);
    if (!v22)
    {
      goto LABEL_44;
    }

    v23 = vcnt_s8(v22);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      v24 = v13;
      if (v22 <= v13)
      {
        v24 = v13 % v22;
      }
    }

    else
    {
      v24 = (v22 - 1) & v13;
    }

    v25 = *(*(a1 + 96) + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_44:
      v30 = *(a1 + 184);
      if (!v30)
      {
        goto LABEL_109;
      }

      goto LABEL_45;
    }

    if (v23.u32[0] < 2uLL)
    {
      v27 = v22 - 1;
      while (1)
      {
        v29 = v26[1];
        if (v29 == v13)
        {
          if (*(v26 + 4) == v13)
          {
            goto LABEL_73;
          }
        }

        else if ((v29 & v27) != v24)
        {
          goto LABEL_44;
        }

        v26 = *v26;
        if (!v26)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v28 = v26[1];
      if (v28 == v13)
      {
        break;
      }

      if (v28 >= v22)
      {
        v28 %= v22;
      }

      if (v28 != v24)
      {
        goto LABEL_44;
      }

LABEL_34:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_44;
      }
    }

    if (*(v26 + 4) != v13)
    {
      goto LABEL_34;
    }

LABEL_73:
    if (!v8)
    {
      operator new();
    }

    v42 = v11;
    v43 = v10;
    v44 = v9;
    v45 = *(v8 - 4);
    v8 -= 4;
    if (!sub_18387BBD0(a1, v45, v13))
    {
      operator new();
    }

    v11 = v42;
    v10 = v43 - 4;
    v9 = v44;
    v30 = *(a1 + 184);
    if (!v30)
    {
      goto LABEL_109;
    }

LABEL_45:
    v31 = vcnt_s8(v30);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > 1uLL)
    {
      v32 = v13;
      if (v30 <= v13)
      {
        v32 = v13 % v30;
      }
    }

    else
    {
      v32 = (v30 - 1) & v13;
    }

    v33 = *(*(a1 + 176) + 8 * v32);
    if (v33)
    {
      v34 = *v33;
      if (v34)
      {
        if (v31.u32[0] < 2uLL)
        {
          v35 = v30 - 1;
          while (1)
          {
            v37 = v34[1];
            if (v37 == v13)
            {
              if (*(v34 + 4) == v13)
              {
                goto LABEL_69;
              }
            }

            else if ((v37 & v35) != v32)
            {
              goto LABEL_109;
            }

            v34 = *v34;
            if (!v34)
            {
              goto LABEL_109;
            }
          }
        }

        do
        {
          v36 = v34[1];
          if (v36 == v13)
          {
            if (*(v34 + 4) == v13)
            {
LABEL_69:
              if (!v8)
              {
                operator new();
              }

              v38 = *(a1 + 144);
              if (v38)
              {
                v39 = *(v8 - 4);
                v40 = vcnt_s8(v38);
                v40.i16[0] = vaddlv_u8(v40);
                if (v40.u32[0] > 1uLL)
                {
                  v41 = *(v8 - 4);
                  if (*&v38 <= v39)
                  {
                    v41 = v39 % *&v38;
                  }
                }

                else
                {
                  v41 = (*&v38 - 1) & v39;
                }

                v49 = *(*(a1 + 136) + 8 * v41);
                if (v49)
                {
                  v50 = *v49;
                  if (v50)
                  {
                    if (v40.u32[0] < 2uLL)
                    {
                      v51 = *&v38 - 1;
                      while (1)
                      {
                        v53 = v50[1];
                        if (v53 == v39)
                        {
                          if (*(v50 + 4) == v39)
                          {
                            goto LABEL_109;
                          }
                        }

                        else if ((v53 & v51) != v41)
                        {
                          goto LABEL_237;
                        }

                        v50 = *v50;
                        if (!v50)
                        {
                          goto LABEL_237;
                        }
                      }
                    }

                    do
                    {
                      v52 = v50[1];
                      if (v52 == v39)
                      {
                        if (*(v50 + 4) == v39)
                        {
                          goto LABEL_109;
                        }
                      }

                      else
                      {
                        if (v52 >= *&v38)
                        {
                          v52 %= *&v38;
                        }

                        if (v52 != v41)
                        {
                          break;
                        }
                      }

                      v50 = *v50;
                    }

                    while (v50);
                  }
                }
              }

LABEL_237:
              operator new();
            }
          }

          else
          {
            if (v36 >= v30)
            {
              v36 %= v30;
            }

            if (v36 != v32)
            {
              break;
            }
          }

          v34 = *v34;
        }

        while (v34);
      }
    }

LABEL_109:
    v6 = *a2;
    if (v7)
    {
      v58 = *(a1 + 24);
      v59 = (v6 + 4 * v7);
      v60 = *(v59 - 1);
      if (v13 != v58)
      {
        v61 = *(a1 + 224);
        if (v61)
        {
          v62 = vcnt_s8(v61);
          v62.i16[0] = vaddlv_u8(v62);
          if (v62.u32[0] > 1uLL)
          {
            v63 = *(v59 - 1);
            if (*&v61 <= v60)
            {
              v63 = v60 % *&v61;
            }
          }

          else
          {
            v63 = (*&v61 - 1) & v60;
          }

          v64 = *(*(a1 + 216) + 8 * v63);
          if (v64)
          {
            v65 = *v64;
            if (v65)
            {
              if (v62.u32[0] < 2uLL)
              {
                v66 = *&v61 - 1;
                while (1)
                {
                  v68 = v65[1];
                  if (v68 == v60)
                  {
                    if (*(v65 + 4) == v60)
                    {
                      goto LABEL_243;
                    }
                  }

                  else if ((v68 & v66) != v63)
                  {
                    goto LABEL_131;
                  }

                  v65 = *v65;
                  if (!v65)
                  {
                    goto LABEL_131;
                  }
                }
              }

              do
              {
                v67 = v65[1];
                if (v67 == v60)
                {
                  if (*(v65 + 4) == v60)
                  {
LABEL_243:
                    operator new();
                  }
                }

                else
                {
                  if (v67 >= *&v61)
                  {
                    v67 %= *&v61;
                  }

                  if (v67 != v63)
                  {
                    break;
                  }
                }

                v65 = *v65;
              }

              while (v65);
            }
          }
        }
      }

LABEL_131:
      if (v60 == *(a1 + 36))
      {
        v69 = *v59;
        if (v69 != v58 && v69 != *(a1 + 40))
        {
          operator new();
        }
      }

      if (v13 == *(a1 + 48) && v60 != *(a1 + 44))
      {
        operator new();
      }
    }

    ++v7;
    v12 = a2[1];
  }

  while (v7 < (v12 - v6) >> 2);
  v118 = v10;
  a3 = v119;
  if (v12 == v6)
  {
    goto LABEL_245;
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  while (2)
  {
    v73 = *(v6 + 4 * v70);
    v74 = *(a1 + 24);
    if (v73 == v74)
    {
      if (v71 >= v72)
      {
        v75 = v71;
        v76 = v71 >> 2;
        v77 = v76 + 1;
        if (!((v76 + 1) >> 62))
        {
          if (v72 >> 1 > v77)
          {
            v77 = v72 >> 1;
          }

          if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v78 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v78 = v77;
          }

          if (v78)
          {
            if (!(v78 >> 62))
            {
              operator new();
            }

            goto LABEL_274;
          }

          goto LABEL_218;
        }

        goto LABEL_273;
      }

      goto LABEL_139;
    }

    if (v73 == *(a1 + 28))
    {
      v79 = *(v71 - 4);
      v71 -= 4;
      if (*(v6 + 4 * v79) != v74)
      {
        operator new();
      }

      goto LABEL_140;
    }

    v80 = *(a1 + 304);
    if (v80)
    {
      v81 = vcnt_s8(v80);
      v81.i16[0] = vaddlv_u8(v81);
      if (v81.u32[0] > 1uLL)
      {
        v82 = *(v6 + 4 * v70);
        if (*&v80 <= v73)
        {
          v82 = v73 % *&v80;
        }
      }

      else
      {
        v82 = (*&v80 - 1) & v73;
      }

      v83 = *(*(a1 + 296) + 8 * v82);
      if (v83)
      {
        v84 = *v83;
        if (v84)
        {
          if (v81.u32[0] < 2uLL)
          {
            v85 = *&v80 - 1;
            while (1)
            {
              v87 = v84[1];
              if (v87 == v73)
              {
                if (*(v84 + 4) == v73)
                {
                  goto LABEL_196;
                }
              }

              else if ((v87 & v85) != v82)
              {
                goto LABEL_175;
              }

              v84 = *v84;
              if (!v84)
              {
                goto LABEL_175;
              }
            }
          }

          do
          {
            v86 = v84[1];
            if (v86 == v73)
            {
              if (*(v84 + 4) == v73)
              {
LABEL_196:
                v96 = v73 != *(a1 + 32) || v71 == 0;
                if (!v96 && *(v6 + 4 * *(v71 - 4)) == v73)
                {
                  v71 -= 4;
                  goto LABEL_140;
                }

                if (v71 >= v72)
                {
                  v75 = v71;
                  v76 = v71 >> 2;
                  v102 = v76 + 1;
                  if (!((v76 + 1) >> 62))
                  {
                    if (v72 >> 1 > v102)
                    {
                      v102 = v72 >> 1;
                    }

                    if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v78 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v78 = v102;
                    }

                    if (v78)
                    {
                      if (!(v78 >> 62))
                      {
                        operator new();
                      }

LABEL_274:
                      sub_183688F00();
                    }

LABEL_218:
                    v103 = (4 * v76);
                    v72 = 4 * v78;
                    *v103 = v70;
                    v71 = (v103 + 1);
                    memcpy(0, 0, v75);
                    goto LABEL_140;
                  }

LABEL_273:
                  sub_18368964C();
                }

LABEL_139:
                *v71 = v70;
                v71 += 4;
                goto LABEL_140;
              }
            }

            else
            {
              if (v86 >= *&v80)
              {
                v86 %= *&v80;
              }

              if (v86 != v82)
              {
                break;
              }
            }

            v84 = *v84;
          }

          while (v84);
        }
      }
    }

LABEL_175:
    v88 = *(a1 + 344);
    if (!*&v88)
    {
      goto LABEL_140;
    }

    v89 = vcnt_s8(v88);
    v89.i16[0] = vaddlv_u8(v89);
    if (v89.u32[0] > 1uLL)
    {
      v90 = *(v6 + 4 * v70);
      if (*&v88 <= v73)
      {
        v90 = v73 % *&v88;
      }
    }

    else
    {
      v90 = (*&v88 - 1) & v73;
    }

    v91 = *(*(a1 + 336) + 8 * v90);
    if (!v91)
    {
      goto LABEL_140;
    }

    v92 = *v91;
    if (!v92)
    {
      goto LABEL_140;
    }

    if (v89.u32[0] < 2uLL)
    {
      v93 = *&v88 - 1;
      while (1)
      {
        v95 = v92[1];
        if (v95 == v73)
        {
          if (*(v92 + 4) == v73)
          {
            goto LABEL_202;
          }
        }

        else if ((v95 & v93) != v90)
        {
          goto LABEL_140;
        }

        v92 = *v92;
        if (!v92)
        {
          goto LABEL_140;
        }
      }
    }

    while (2)
    {
      v94 = v92[1];
      if (v94 != v73)
      {
        if (v94 >= *&v88)
        {
          v94 %= *&v88;
        }

        if (v94 != v90)
        {
          goto LABEL_140;
        }

        goto LABEL_185;
      }

      if (*(v92 + 4) != v73)
      {
LABEL_185:
        v92 = *v92;
        if (!v92)
        {
          goto LABEL_140;
        }

        continue;
      }

      break;
    }

LABEL_202:
    if (!v71)
    {
      operator new();
    }

    v97 = *(v71 - 4);
    v71 -= 4;
    if (!sub_18387BBD0(a1, *(v6 + 4 * v97), v73))
    {
      operator new();
    }

    if (v70 - *v71 == 1)
    {
      operator new();
    }

    v98 = *(a1 + 264);
    if (v98)
    {
      v99 = *(*a2 + 4 * v70 - 4);
      v100 = vcnt_s8(v98);
      v100.i16[0] = vaddlv_u8(v100);
      if (v100.u32[0] > 1uLL)
      {
        v101 = *(*a2 + 4 * v70 - 4);
        if (*&v98 <= v99)
        {
          v101 = v99 % *&v98;
        }
      }

      else
      {
        v101 = (*&v98 - 1) & v99;
      }

      v104 = *(*(a1 + 256) + 8 * v101);
      if (v104)
      {
        v105 = *v104;
        if (v105)
        {
          if (v100.u32[0] < 2uLL)
          {
            v106 = *&v98 - 1;
            while (1)
            {
              v108 = v105[1];
              if (v108 == v99)
              {
                if (*(v105 + 4) == v99)
                {
                  goto LABEL_269;
                }
              }

              else if ((v108 & v106) != v101)
              {
                goto LABEL_140;
              }

              v105 = *v105;
              if (!v105)
              {
                goto LABEL_140;
              }
            }
          }

          do
          {
            v107 = v105[1];
            if (v107 == v99)
            {
              if (*(v105 + 4) == v99)
              {
LABEL_269:
                operator new();
              }
            }

            else
            {
              if (v107 >= *&v98)
              {
                v107 %= *&v98;
              }

              if (v107 != v101)
              {
                break;
              }
            }

            v105 = *v105;
          }

          while (v105);
        }
      }
    }

LABEL_140:
    ++v70;
    v6 = *a2;
    if (v70 < (a2[1] - *a2) >> 2)
    {
      continue;
    }

    break;
  }

  if (v71)
  {
    if ((v71 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  a3 = v119;
LABEL_245:
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (v8)
  {
    if (v118)
    {
      if ((v118 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18368964C();
    }

    v112 = a3[1];
    if (!v112)
    {
LABEL_262:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v113 = v112;
        v114 = *(v112 + 32);
        if (v114 < 4)
        {
          break;
        }

        v112 = *v113;
        if (!*v113)
        {
          goto LABEL_262;
        }
      }

      if (v114 == 3)
      {
        break;
      }

      v112 = v113[1];
      if (!v112)
      {
        goto LABEL_262;
      }
    }
  }

  else
  {
    v109 = a3[1];
    if (!v109)
    {
LABEL_255:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v110 = v109;
        v111 = *(v109 + 32);
        if (v111 < 3)
        {
          break;
        }

        v109 = *v110;
        if (!*v110)
        {
          goto LABEL_255;
        }
      }

      if (v111 == 2)
      {
        break;
      }

      v109 = v110[1];
      if (!v109)
      {
        goto LABEL_255;
      }
    }
  }
}

void sub_18387B9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_18368A374(v20, *(v20 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v18);
  if (v19)
  {
    operator delete(v19);
    if (!a14)
    {
LABEL_5:
      if (!a15)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (!a14)
  {
    goto LABEL_5;
  }

  operator delete(a14);
  if (!a15)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a15);
  _Unwind_Resume(a1);
}

BOOL sub_18387BBD0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 384);
  if (!v3)
  {
    return 0;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(a1 + 376);
  v7 = *(v6 + 8 * v5);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v9 = v3 - 1;
  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == a2)
      {
        if (*(v8 + 4) == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v10 & v9) != v5)
      {
        return 0;
      }

      v8 = *v8;
      if (!v8)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v8[1];
    if (v11 == a2)
    {
      break;
    }

    if (v11 >= v3)
    {
      v11 %= v3;
    }

    if (v11 != v5)
    {
      return 0;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (*(v8 + 4) != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  if (v4.u32[0] > 1uLL)
  {
    v13 = a2;
    if (v3 <= a2)
    {
      v13 = a2 % v3;
    }
  }

  else
  {
    v13 = v9 & a2;
  }

  v14 = *(v6 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_42:
    sub_1836868A4("unordered_map::at: key not found");
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = v15[1];
      if (v16 == a2)
      {
        if (*(v15 + 4) == a2)
        {
          return *(v15 + 5) == a3;
        }
      }

      else if ((v16 & v9) != v13)
      {
        goto LABEL_42;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_42;
      }
    }
  }

  while (2)
  {
    v17 = v15[1];
    if (v17 != a2)
    {
      if (v17 >= v3)
      {
        v17 %= v3;
      }

      if (v17 != v13)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    if (*(v15 + 4) != a2)
    {
LABEL_36:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_42;
      }

      continue;
    }

    return *(v15 + 5) == a3;
  }
}

void sub_18387BD84(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  operator new();
}

void sub_18387BE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *(v11 + 48);
    if (!v13)
    {
LABEL_3:
      v14 = *(v11 + 24);
      if (!v14)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v13 = *(v11 + 48);
    if (!v13)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 56) = v13;
  operator delete(v13);
  v14 = *(v11 + 24);
  if (!v14)
  {
LABEL_4:
    v15 = *v11;
    if (!*v11)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v11 + 32) = v14;
  operator delete(v14);
  v15 = *v11;
  if (!*v11)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  *(v11 + 8) = v15;
  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void sub_18387BE80(uint64_t a1, char *__src, _OWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 4) + 1;
    if (v10 >> 60)
    {
      sub_18368964C();
    }

    v11 = v7 - v9;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      sub_183688F00();
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 4;
    v15 = (16 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 3;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      v15 = (v15 - (((v13 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
    }

    *v15 = *a3;
    memcpy(v15 + 1, __src, *(a1 + 8) - __src);
    v18 = *a1;
    v19 = v15 + *(a1 + 8) - __src + 16;
    *(a1 + 8) = __src;
    v20 = (__src - v18);
    v21 = v15 - (__src - v18);
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }

  else
  {
    if (__src != v6)
    {
      v8 = __src + 16;
      if (v6 < 0x10)
      {
        *(a1 + 8) = v6;
        if (v6 == v8)
        {
LABEL_22:
          *__src = *a3;
          return;
        }
      }

      else
      {
        *v6 = *(v6 - 1);
        *(a1 + 8) = v6 + 16;
        if (v6 == v8)
        {
          goto LABEL_22;
        }
      }

      memmove(__src + 16, __src, v6 - v8);
      goto LABEL_22;
    }

    *v6 = *a3;
    *(a1 + 8) = v6 + 16;
  }
}

void sub_18387C0C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_18387C0DC(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 4);
        if (v6)
        {
          *(v4 - 3) = v6;
          operator delete(v6);
        }

        v7 = v4 - 64;
        v8 = *(v4 - 8);
        if (v8)
        {
          *(v4 - 7) = v8;
          operator delete(v8);
        }

        v4 -= 64;
      }

      while (v7 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

void sub_18387C3AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387C5F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387C844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387CA90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387CCDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387CF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387D174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387D3C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387D60C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void sub_18387D858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

void ***sub_18387D86C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 4);
          if (v6)
          {
            *(v4 - 3) = v6;
            operator delete(v6);
          }

          v7 = v4 - 64;
          v8 = *(v4 - 8);
          if (v8)
          {
            *(v4 - 7) = v8;
            operator delete(v8);
          }

          v4 -= 64;
        }

        while (v7 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_18387D90C(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    a1[4] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_18387D978(uint64_t a1, int *a2, int *a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_71;
  }

  v7 = *a1;
  bzero(*a1, 8 * v6);
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2 == a3)
  {
    v11 = v8;
    if (!v8)
    {
      goto LABEL_71;
    }

    do
    {
LABEL_68:
      v31 = *v11;
      operator delete(v11);
      v11 = v31;
    }

    while (v31);
    goto LABEL_71;
  }

  if (v8)
  {
    while (1)
    {
      v10 = *a2;
      *(v8 + 4) = v10;
      v11 = *v8;
      v8[1] = v10;
      if (v6)
      {
        v12 = vcnt_s8(v6);
        v12.i16[0] = vaddlv_u8(v12);
        if (v12.u32[0] > 1uLL)
        {
          v13 = v10;
          if (v6 <= v10)
          {
            v13 = v10 % v6;
          }
        }

        else
        {
          v13 = (v6 - 1) & v10;
        }

        v14 = v7[v13];
        if (v14)
        {
          v15 = *v14;
          if (v15)
          {
            if (v12.u32[0] < 2uLL)
            {
              while (1)
              {
                v17 = v15[1];
                if (v17 == v10)
                {
                  if (*(v15 + 4) == v10)
                  {
                    goto LABEL_55;
                  }
                }

                else if ((v17 & (v6 - 1)) != v13)
                {
                  goto LABEL_24;
                }

                v15 = *v15;
                if (!v15)
                {
                  goto LABEL_24;
                }
              }
            }

            do
            {
              v16 = v15[1];
              if (v16 == v10)
              {
                if (*(v15 + 4) == v10)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                if (v16 >= v6)
                {
                  v16 %= v6;
                }

                if (v16 != v13)
                {
                  break;
                }
              }

              v15 = *v15;
            }

            while (v15);
          }
        }
      }

LABEL_24:
      v18 = (*(a1 + 24) + 1);
      v19 = *(a1 + 32);
      if (!v6 || (v19 * v6) < v18)
      {
        v20 = (v6 & (v6 - 1)) != 0;
        if (v6 < 3)
        {
          v20 = 1;
        }

        v21 = v20 | (2 * v6);
        v22 = vcvtps_u32_f32(v18 / v19);
        if (v21 <= v22)
        {
          prime = v22;
        }

        else
        {
          prime = v21;
        }

        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
          v6 = *(a1 + 8);
        }

        if (prime > v6)
        {
          goto LABEL_36;
        }

        if (prime < v6)
        {
          v24 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
          if (v6 < 3 || (v25 = vcnt_s8(v6), v25.i16[0] = vaddlv_u8(v25), v25.u32[0] > 1uLL))
          {
            v24 = std::__next_prime(v24);
          }

          else
          {
            v26 = 1 << -__clz(v24 - 1);
            if (v24 >= 2)
            {
              v24 = v26;
            }
          }

          if (prime <= v24)
          {
            prime = v24;
          }

          if (prime < v6)
          {
LABEL_36:
            sub_183689098(a1, prime);
          }
        }
      }

      v6 = *(a1 + 8);
      v27 = v8[1];
      v28 = vcnt_s8(v6);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        if (v27 >= v6)
        {
          v27 %= v6;
        }
      }

      else
      {
        v27 &= v6 - 1;
      }

      v7 = *a1;
      v29 = *(*a1 + 8 * v27);
      if (v29)
      {
        break;
      }

      *v8 = *v9;
      *v9 = v8;
      v7[v27] = v9;
      if (*v8)
      {
        v30 = *(*v8 + 8);
        if (v28.u32[0] > 1uLL)
        {
          if (v30 >= v6)
          {
            v30 %= v6;
          }

          v29 = &v7[v30];
        }

        else
        {
          v29 = &v7[v30 & (v6 - 1)];
        }

        goto LABEL_53;
      }

LABEL_54:
      ++*(a1 + 24);
LABEL_55:
      ++a2;
      if (v11)
      {
        v8 = v11;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_65;
    }

    *v8 = *v29;
LABEL_53:
    *v29 = v8;
    goto LABEL_54;
  }

  v11 = 0;
LABEL_65:
  if (v11)
  {
    goto LABEL_68;
  }

LABEL_71:
  while (a2 != a3)
  {
    sub_18383D490(a1, a2++);
  }
}