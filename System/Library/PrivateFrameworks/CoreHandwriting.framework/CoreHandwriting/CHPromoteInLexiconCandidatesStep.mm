@interface CHPromoteInLexiconCandidatesStep
- (CHPromoteInLexiconCandidatesStep)initWithStaticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)customLexicon;
- (id)process:(id)process options:(id)options;
@end

@implementation CHPromoteInLexiconCandidatesStep

- (CHPromoteInLexiconCandidatesStep)initWithStaticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)customLexicon
{
  v7.receiver = self;
  v7.super_class = CHPromoteInLexiconCandidatesStep;
  result = [(CHPromoteInLexiconCandidatesStep *)&v7 init];
  if (result)
  {
    result->_staticLexicon = lexicon;
    result->_customLexicon = customLexicon;
  }

  return result;
}

- (id)process:(id)process options:(id)options
{
  v355 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC58;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHPromoteInLexiconCandidatesStep is running", buf, 2u);
  }

  v344 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v343 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v21 = objc_msgSend_result(processCopy, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_transcriptionPaths(v21, v22, v23, v24, v25, v26);
  v345 = objc_msgSend_firstObject(v27, v28, v29, v30, v31, v32);

  v346 = objc_msgSend_array(MEMORY[0x1E695DF70], v33, v34, v35, v36, v37);
  v43 = 0;
  v342 = 0;
  while (1)
  {
    v44 = objc_msgSend_result(processCopy, v38, v39, v40, v41, v42);
    v348 = v43;
    v50 = v43 < objc_msgSend_tokenColumnCount(v44, v45, v46, v47, v48, v49);

    if (!v50)
    {
      break;
    }

    v350 = objc_msgSend_indexAtPosition_(v345, v51, v348, v52, v53, v54);
    v60 = objc_msgSend_result(processCopy, v55, v56, v57, v58, v59);
    v65 = objc_msgSend_tokenRowsAtColumnIndex_(v60, v61, v348, v62, v63, v64);

    v70 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, v350, v67, v68, v69);
    v76 = objc_msgSend_count(v70, v71, v72, v73, v74, v75);

    v82 = objc_msgSend_count(v65, v77, v78, v79, v80, v81);
    if (v76 != 1 || v82 < 2)
    {
      goto LABEL_35;
    }

    v87 = objc_msgSend_objectAtIndexedSubscript_(v65, v83, v350, v84, v85, v86);
    v92 = objc_msgSend_objectAtIndexedSubscript_(v87, v88, 0, v89, v90, v91);
    v98 = objc_msgSend_string(v92, v93, v94, v95, v96, v97);

    if (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v99, v98, self->_staticLexicon, 0, v100))
    {
      HasMatchingString = 1;
    }

    else
    {
      HasMatchingString = objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v101, v98, self->_customLexicon, 0, v104);
    }

    v106 = objc_msgSend_objectAtIndexedSubscript_(v65, v101, v350, v102, v103, v104);
    v111 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, 0, v108, v109, v110);
    v117 = objc_msgSend_inputSources(v111, v112, v113, v114, v115, v116);

    if ((HasMatchingString & 1) != 0 || objc_msgSend_length(v98, v118, v119, v120, v121, v122) < 3)
    {

LABEL_35:
      v125 = v350;
      goto LABEL_36;
    }

    if ((v117 & 0x10) != 0)
    {
      goto LABEL_35;
    }

    v124 = 0;
    v125 = 0x7FFFFFFFFFFFFFFFLL;
    v126 = 0.25;
    while (v124 < objc_msgSend_count(v65, v83, v123, v84, v85, v86))
    {
      v127 = objc_msgSend_objectAtIndexedSubscript_(v65, v83, v124, v84, v85, v86);
      v134 = objc_msgSend_count(v127, v128, v129, v130, v131, v132) == 1 && v350 != v124;

      if (v134)
      {
        v135 = objc_msgSend_objectAtIndexedSubscript_(v65, v83, v124, v84, v85, v86);
        v140 = objc_msgSend_objectAtIndexedSubscript_(v135, v136, 0, v137, v138, v139);
        v146 = objc_msgSend_string(v140, v141, v142, v143, v144, v145);
        if (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v147, v146, self->_staticLexicon, 0, v148))
        {
          v153 = 0;
        }

        else
        {
          v154 = objc_msgSend_objectAtIndexedSubscript_(v65, v149, v124, v150, v151, v152);
          v159 = objc_msgSend_objectAtIndexedSubscript_(v154, v155, 0, v156, v157, v158);
          v165 = objc_msgSend_string(v159, v160, v161, v162, v163, v164);
          v168 = objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v166, v165, self->_customLexicon, 0, v167);

          v153 = v168 ^ 1;
        }

        v173 = objc_msgSend_objectAtIndexedSubscript_(v65, v169, v350, v170, v171, v172);
        v178 = objc_msgSend_objectAtIndexedSubscript_(v173, v174, 0, v175, v176, v177);
        objc_msgSend_recognitionScore(v178, v179, v180, v181, v182, v183);
        v185 = v184;
        v190 = objc_msgSend_objectAtIndexedSubscript_(v65, v186, v124, v187, v188, v189);
        v195 = objc_msgSend_objectAtIndexedSubscript_(v190, v191, 0, v192, v193, v194);
        objc_msgSend_recognitionScore(v195, v196, v197, v198, v199, v200);
        v202 = v201;

        v203 = v185 - v202;
        if (!((v203 >= v126) | v153 & 1))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v204 = qword_1EA84DC58;
          if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
          {
            v209 = objc_msgSend_objectAtIndexedSubscript_(v65, v205, v124, v206, v207, v208);
            v214 = objc_msgSend_objectAtIndexedSubscript_(v209, v210, 0, v211, v212, v213);
            v220 = objc_msgSend_string(v214, v215, v216, v217, v218, v219);
            v225 = objc_msgSend_objectAtIndexedSubscript_(v65, v221, v350, v222, v223, v224);
            v230 = objc_msgSend_objectAtIndexedSubscript_(v225, v226, 0, v227, v228, v229);
            v236 = objc_msgSend_string(v230, v231, v232, v233, v234, v235);
            *buf = 138412546;
            v352 = v220;
            v353 = 2112;
            v354 = v236;
            _os_log_impl(&dword_18366B000, v204, OS_LOG_TYPE_DEBUG, "CHPromoteInLexiconCandidatesStep promoting %@ over %@", buf, 0x16u);
          }

          v342 = 1;
          v126 = v203;
          v125 = v124;
        }
      }

      ++v124;
    }

    if (v125 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

LABEL_36:
    v237 = objc_msgSend_objectAtIndexedSubscript_(v65, v83, v125, v84, v85, v86);
    objc_msgSend_addObjectsFromArray_(v346, v238, v237, v239, v240, v241);

    v43 = v348 + 1;
  }

  if (v342)
  {
    objc_msgSend_addObject_(v344, v51, v346, v52, v53, v54);
    v247 = objc_msgSend_result(processCopy, v242, v243, v244, v245, v246);
    v253 = objc_msgSend_transcriptionPathScores(v247, v248, v249, v250, v251, v252);
    v258 = objc_msgSend_objectAtIndexedSubscript_(v253, v254, 0, v255, v256, v257);
    objc_msgSend_addObject_(v343, v259, v258, v260, v261, v262);

    for (i = 0; ; ++i)
    {
      v269 = objc_msgSend_result(processCopy, v263, v264, v265, v266, v267);
      v275 = objc_msgSend_transcriptionPaths(v269, v270, v271, v272, v273, v274);
      v281 = i < objc_msgSend_count(v275, v276, v277, v278, v279, v280);

      if (!v281)
      {
        break;
      }

      v287 = objc_msgSend_result(processCopy, v282, v283, v284, v285, v286);
      v293 = objc_msgSend_transcriptionPaths(v287, v288, v289, v290, v291, v292);
      v298 = objc_msgSend_objectAtIndexedSubscript_(v293, v294, i, v295, v296, v297);

      v304 = objc_msgSend_result(processCopy, v299, v300, v301, v302, v303);
      v309 = objc_msgSend_tokensFromTranscriptionPath_(v304, v305, v298, v306, v307, v308);

      objc_msgSend_addObject_(v344, v310, v309, v311, v312, v313);
      v319 = objc_msgSend_result(processCopy, v314, v315, v316, v317, v318);
      v325 = objc_msgSend_transcriptionPathScores(v319, v320, v321, v322, v323, v324);
      v330 = objc_msgSend_objectAtIndexedSubscript_(v325, v326, i, v327, v328, v329);
      objc_msgSend_addObject_(v343, v331, v330, v332, v333, v334);
    }

    v335 = objc_msgSend_result(processCopy, v282, v283, v284, v285, v286);
    v339 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v335, v336, v344, v343, v337, v338);
    if (processCopy)
    {
      objc_storeStrong(processCopy + 3, v339);
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v335 = qword_1EA84DC58;
    if (os_log_type_enabled(v335, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v335, OS_LOG_TYPE_DEBUG, "CHPromoteInLexiconCandidatesStep did not find any suitable tokens for promotion", buf, 2u);
    }
  }

  return processCopy;
}

@end