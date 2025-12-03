@interface CHReorderSCTCConfusionStep
- (CHReorderSCTCConfusionStep)initWithMaxResultCount:(int64_t)count;
- (id)process:(id)process options:(id)options;
- (void)dealloc;
@end

@implementation CHReorderSCTCConfusionStep

- (CHReorderSCTCConfusionStep)initWithMaxResultCount:(int64_t)count
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CHReorderSCTCConfusionStep;
  result = [(CHReorderSCTCConfusionStep *)&v7 init];
  if (result)
  {
    v5 = result;
    result->_maxResultCount = count;
    v8 = *L"Traditional-Simplified";
    v9[0] = *L"nal-Simplified";
    *(v9 + 14) = *L"plified";
    v6 = utrans_openU();
    result = v5;
    v5->_icuTransliterator = v6;
  }

  return result;
}

- (id)process:(id)process options:(id)options
{
  v387 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v365 = processCopy;
  v7 = qword_1EA84DC58;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "CHReorderSCTCConfusionStep is running", buf, 2u);
  }

  maxResultCount = self->_maxResultCount;
  v14 = objc_msgSend_result(processCopy, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_transcriptionPaths(v14, v15, v16, v17, v18, v19);
  v363 = maxResultCount;
  LOBYTE(maxResultCount) = objc_msgSend_count(v20, v21, v22, v23, v24, v25) < 2;

  if ((maxResultCount & 1) == 0)
  {
    v362 = objc_msgSend_array(MEMORY[0x1E695DF70], v26, v27, v28, v29, v30);
    v361 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32, v33, v34, v35);
    v41 = objc_msgSend_result(v365, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_transcriptionPaths(v41, v42, v43, v44, v45, v46);
    v358 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0, v49, v50, v51);

    v57 = objc_msgSend_result(v365, v52, v53, v54, v55, v56);
    v63 = objc_msgSend_transcriptionPaths(v57, v58, v59, v60, v61, v62);
    v359 = objc_msgSend_objectAtIndexedSubscript_(v63, v64, 1, v65, v66, v67);

    v73 = objc_msgSend_array(MEMORY[0x1E695DF70], v68, v69, v70, v71, v72);
    v355 = objc_msgSend_array(MEMORY[0x1E695DF70], v74, v75, v76, v77, v78, v73);
    v84 = objc_msgSend_result(v365, v79, v80, v81, v82, v83);
    v90 = objc_msgSend_result(v365, v85, v86, v87, v88, v89);
    v96 = objc_msgSend_tokenColumnCount(v90, v91, v92, v93, v94, v95);
    v379[0] = MEMORY[0x1E69E9820];
    v379[1] = 3221225472;
    v379[2] = sub_1839AC2DC;
    v379[3] = &unk_1E6DE0AD8;
    v97 = v73;
    v380 = v97;
    selfCopy = self;
    v98 = v355;
    v382 = v98;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v84, v99, v358, 0, v96, v379);

    v105 = objc_msgSend_result(v365, v100, v101, v102, v103, v104);
    v110 = objc_msgSend_tokensFromTranscriptionPath_(v105, v106, v359, v107, v108, v109);
    v357 = objc_msgSend_mutableCopy(v110, v111, v112, v113, v114, v115);

    v121 = objc_msgSend_string(MEMORY[0x1E696AD60], v116, v117, v118, v119, v120);
    v377 = 0u;
    v378 = 0u;
    v375 = 0u;
    v376 = 0u;
    v122 = v98;
    v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v123, &v375, v386, 16, v124);
    if (v130)
    {
      v131 = *v376;
      do
      {
        for (i = 0; i != v130; ++i)
        {
          if (*v376 != v131)
          {
            objc_enumerationMutation(v122);
          }

          v133 = objc_msgSend_string(*(*(&v375 + 1) + 8 * i), v125, v126, v127, v128, v129);
          objc_msgSend_appendString_(v121, v134, v133, v135, v136, v137);
        }

        v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v125, &v375, v386, 16, v129);
      }

      while (v130);
    }

    v143 = objc_msgSend_string(MEMORY[0x1E696AD60], v138, v139, v140, v141, v142);
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v144 = v97;
    v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v145, &v371, v385, 16, v146);
    if (v152)
    {
      v153 = *v372;
      do
      {
        for (j = 0; j != v152; ++j)
        {
          if (*v372 != v153)
          {
            objc_enumerationMutation(v144);
          }

          v155 = objc_msgSend_string(*(*(&v371 + 1) + 8 * j), v147, v148, v149, v150, v151);
          objc_msgSend_appendString_(v143, v156, v155, v157, v158, v159);
        }

        v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v147, &v371, v385, 16, v151);
      }

      while (v152);
    }

    v165 = objc_msgSend_string(MEMORY[0x1E696AD60], v160, v161, v162, v163, v164);
    v369 = 0u;
    v370 = 0u;
    v367 = 0u;
    v368 = 0u;
    v166 = v357;
    v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v167, &v367, v384, 16, v168);
    if (v174)
    {
      v175 = *v368;
      do
      {
        for (k = 0; k != v174; ++k)
        {
          if (*v368 != v175)
          {
            objc_enumerationMutation(v166);
          }

          v177 = objc_msgSend_string(*(*(&v367 + 1) + 8 * k), v169, v170, v171, v172, v173);
          objc_msgSend_appendString_(v165, v178, v177, v179, v180, v181);
        }

        v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v169, &v367, v384, 16, v173);
      }

      while (v174);
    }

    isEqual = objc_msgSend_isEqual_(v143, v182, v165, v183, v184, v185);
    if (isEqual & 1 | ((objc_msgSend_isEqual_(v121, v187, v165, v188, v189, v190) & 1) == 0))
    {
      objc_msgSend_addObject_(v362, v191, v144, v192, v193, v194);
      v200 = objc_msgSend_result(v365, v195, v196, v197, v198, v199);
      v356 = objc_msgSend_transcriptionPathScores(v200, v201, v202, v203, v204, v205);
      v210 = objc_msgSend_objectAtIndexedSubscript_(v356, v206, 0, v207, v208, v209);
      v216 = objc_msgSend_copy(v210, v211, v212, v213, v214, v215);
      objc_msgSend_addObject_(v361, v217, v216, v218, v219, v220);
      v221 = v200;
      v222 = 1;
    }

    else
    {
      objc_msgSend_addObject_(v362, v191, v166, v192, v193, v194);
      v228 = objc_msgSend_result(v365, v223, v224, v225, v226, v227);
      v234 = objc_msgSend_transcriptionPathScores(v228, v229, v230, v231, v232, v233);
      v239 = objc_msgSend_objectAtIndexedSubscript_(v234, v235, 1, v236, v237, v238);
      v245 = objc_msgSend_copy(v239, v240, v241, v242, v243, v244);
      objc_msgSend_addObject_(v361, v246, v245, v247, v248, v249);

      objc_msgSend_addObject_(v362, v250, v144, v251, v252, v253);
      v259 = objc_msgSend_result(v365, v254, v255, v256, v257, v258);
      v356 = objc_msgSend_transcriptionPathScores(v259, v260, v261, v262, v263, v264);
      v210 = objc_msgSend_objectAtIndexedSubscript_(v356, v265, 0, v266, v267, v268);
      v216 = objc_msgSend_copy(v210, v269, v270, v271, v272, v273);
      objc_msgSend_addObject_(v361, v274, v216, v275, v276, v277);
      v221 = v259;
      v222 = 2;
    }

    v366 = v222;

    if (v363 != 1)
    {
      while (1)
      {
        v289 = objc_msgSend_result(v365, v278, v279, v280, v281, v282);
        v295 = objc_msgSend_transcriptionPaths(v289, v290, v291, v292, v293, v294);
        v301 = v366 < objc_msgSend_count(v295, v296, v297, v298, v299, v300);

        if (!v301)
        {
          break;
        }

        v302 = objc_msgSend_result(v365, v278, v279, v280, v281, v282);
        v308 = objc_msgSend_transcriptionPaths(v302, v303, v304, v305, v306, v307);
        v364 = objc_msgSend_objectAtIndexedSubscript_(v308, v309, v366, v310, v311, v312);

        v318 = objc_msgSend_result(v365, v313, v314, v315, v316, v317);
        v323 = objc_msgSend_tokensFromTranscriptionPath_(v318, v319, v364, v320, v321, v322);
        v329 = objc_msgSend_mutableCopy(v323, v324, v325, v326, v327, v328);

        objc_msgSend_addObject_(v362, v330, v329, v331, v332, v333);
        v339 = objc_msgSend_result(v365, v334, v335, v336, v337, v338);
        v345 = objc_msgSend_transcriptionPathScores(v339, v340, v341, v342, v343, v344);
        v350 = objc_msgSend_objectAtIndexedSubscript_(v345, v346, v366, v347, v348, v349);
        objc_msgSend_addObject_(v361, v351, v350, v352, v353, v354);

        ++v366;
      }
    }

    v283 = objc_msgSend_result(v365, v278, v279, v280, v281, v282);
    v287 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v283, v284, v362, v361, v285, v286);
    if (v365)
    {
      objc_storeStrong(v365 + 3, v287);
    }
  }

  return v365;
}

- (void)dealloc
{
  if (self->_icuTransliterator)
  {
    utrans_close();
    self->_icuTransliterator = 0;
  }

  v3.receiver = self;
  v3.super_class = CHReorderSCTCConfusionStep;
  [(CHReorderSCTCConfusionStep *)&v3 dealloc];
}

@end