@interface CHPreserveOriginalRecognitionStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHPreserveOriginalRecognitionStep

- (id)process:(id)process options:(id)options
{
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHPreserveOriginalRecognitionStep is running", buf, 2u);
  }

  v7 = objc_opt_class();
  shouldAdjustColumnsFromPostprocessingStepOptions = objc_msgSend_shouldAdjustColumnsFromPostprocessingStepOptions_(v7, v8, optionsCopy, v9, v10, v11);
  v18 = MEMORY[0x1E695DF70];
  if (shouldAdjustColumnsFromPostprocessingStepOptions)
  {
    v281 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
    v279 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
    for (i = 0; ; ++i)
    {
      v30 = objc_msgSend_result(processCopy, v24, v25, v26, v27, v28);
      v36 = objc_msgSend_transcriptionPaths(v30, v31, v32, v33, v34, v35);
      v42 = objc_msgSend_count(v36, v37, v38, v39, v40, v41);

      if (i >= v42)
      {
        break;
      }

      v48 = objc_msgSend_result(processCopy, v43, v44, v45, v46, v47);
      v54 = objc_msgSend_transcriptionPaths(v48, v49, v50, v51, v52, v53);
      v59 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, i, v56, v57, v58);

      v65 = objc_msgSend_array(MEMORY[0x1E695DF70], v60, v61, v62, v63, v64);
      v71 = objc_msgSend_result(processCopy, v66, v67, v68, v69, v70);
      v77 = objc_msgSend_result(processCopy, v72, v73, v74, v75, v76);
      v83 = objc_msgSend_tokenColumnCount(v77, v78, v79, v80, v81, v82);
      v284[0] = MEMORY[0x1E69E9820];
      v284[1] = 3221225472;
      v284[2] = sub_18399409C;
      v284[3] = &unk_1E6DE07E0;
      v286 = i;
      v84 = v65;
      v285 = v84;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v71, v85, v59, 0, v83, v284);

      if (objc_msgSend_count(v84, v86, v87, v88, v89, v90))
      {
        objc_msgSend_addObject_(v281, v91, v84, v92, v93, v94);
        v100 = objc_msgSend_result(processCopy, v95, v96, v97, v98, v99);
        v106 = objc_msgSend_transcriptionPathScores(v100, v101, v102, v103, v104, v105);
        v111 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, i, v108, v109, v110);
        objc_msgSend_addObject_(v279, v112, v111, v113, v114, v115);
      }
    }

    v267 = objc_msgSend_result(processCopy, v43, v44, v45, v46, v47);
    v271 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v267, v268, v281, v279, v269, v270);
    if (processCopy)
    {
      objc_storeStrong(processCopy + 3, v271);
    }

    v266 = v279;
  }

  else
  {
    v116 = objc_msgSend_result(processCopy, v13, v14, v15, v16, v17);
    v122 = objc_msgSend_tokenColumns(v116, v117, v118, v119, v120, v121);
    v128 = objc_msgSend_count(v122, v123, v124, v125, v126, v127);
    v133 = objc_msgSend_arrayWithCapacity_(v18, v129, v128, v130, v131, v132);

    for (j = 0; ; ++j)
    {
      v140 = objc_msgSend_result(processCopy, v134, v135, v136, v137, v138);
      v146 = objc_msgSend_tokenColumns(v140, v141, v142, v143, v144, v145);
      v152 = objc_msgSend_count(v146, v147, v148, v149, v150, v151);

      if (j >= v152)
      {
        break;
      }

      v158 = objc_msgSend_result(processCopy, v153, v154, v155, v156, v157);
      v164 = objc_msgSend_tokenColumns(v158, v159, v160, v161, v162, v163);
      v169 = objc_msgSend_objectAtIndexedSubscript_(v164, v165, j, v166, v167, v168);
      v175 = objc_msgSend_mutableCopy(v169, v170, v171, v172, v173, v174);
      objc_msgSend_addObject_(v133, v176, v175, v177, v178, v179);
    }

    v180 = objc_msgSend_result(processCopy, v153, v154, v155, v156, v157);
    v282[0] = MEMORY[0x1E69E9820];
    v282[1] = 3221225472;
    v282[2] = sub_18399431C;
    v282[3] = &unk_1E6DDE720;
    v281 = v133;
    v283 = v281;
    objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v180, v181, v282, v182, v183, v184);

    v190 = objc_msgSend_result(processCopy, v185, v186, v187, v188, v189);
    v274 = objc_msgSend_baseWritingDirection(v190, v191, v192, v193, v194, v195);

    v273 = [CHMutableTokenizedTextResult alloc];
    v276 = objc_msgSend_result(processCopy, v196, v197, v198, v199, v200);
    v280 = objc_msgSend_transcriptionPaths(v276, v201, v202, v203, v204, v205);
    v275 = objc_msgSend_result(processCopy, v206, v207, v208, v209, v210);
    v277 = objc_msgSend_transcriptionPathScores(v275, v211, v212, v213, v214, v215);
    v221 = objc_msgSend_result(processCopy, v216, v217, v218, v219, v220);
    v227 = objc_msgSend_trailingSeparator(v221, v222, v223, v224, v225, v226);
    v233 = objc_msgSend_result(processCopy, v228, v229, v230, v231, v232);
    v239 = objc_msgSend_recognizerGenerationIdentifier(v233, v234, v235, v236, v237, v238);
    v245 = objc_msgSend_result(processCopy, v240, v241, v242, v243, v244);
    v251 = objc_msgSend_changeableTokenColumnCount(v245, v246, v247, v248, v249, v250);
    v257 = objc_msgSend_result(processCopy, v252, v253, v254, v255, v256);
    v263 = objc_msgSend_originalTokens(v257, v258, v259, v260, v261, v262);
    isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v273, v264, v281, v280, v277, v227, v239, v251, 0, v274, v263);
    if (processCopy)
    {
      objc_storeStrong(processCopy + 3, isMinimalDrawingResult_baseWritingDirection_originalTokens);
    }

    v266 = v283;
  }

  return processCopy;
}

@end