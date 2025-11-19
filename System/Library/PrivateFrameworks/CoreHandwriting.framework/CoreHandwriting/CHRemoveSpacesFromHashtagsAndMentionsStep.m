@interface CHRemoveSpacesFromHashtagsAndMentionsStep
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHRemoveSpacesFromHashtagsAndMentionsStep

- (id)process:(id)a3 options:(id)a4
{
  v5 = a3;
  v227 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveSpacesFromHashtagsAndMentionsStep is running", buf, 2u);
  }

  v7 = 0x1E695D000uLL;
  v232 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v231 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
  v23 = 0;
  v229 = v5;
  while (1)
  {
    v24 = objc_msgSend_result(v5, v18, v19, v20, v21, v22);
    v30 = objc_msgSend_transcriptionPaths(v24, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_count(v30, v31, v32, v33, v34, v35);

    if (v23 >= v36)
    {
      break;
    }

    v42 = objc_msgSend_result(v5, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_transcriptionPaths(v42, v43, v44, v45, v46, v47);
    v53 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, v23, v50, v51, v52);

    v59 = objc_msgSend_array(*(v7 + 3952), v54, v55, v56, v57, v58);
    v65 = objc_msgSend_array(*(v7 + 3952), v60, v61, v62, v63, v64);
    v254 = 0;
    v255 = &v254;
    v256 = 0x3032000000;
    v257 = sub_183996F80;
    v258 = sub_183996F90;
    v259 = 0;
    v250 = 0;
    v251 = &v250;
    v252 = 0x2020000000;
    v253 = 0;
    *buf = 0;
    v243 = buf;
    v244 = 0x5012000000;
    v245 = sub_1839A288C;
    v246 = nullsub_78;
    v247 = &unk_183A5AC72;
    v66 = *(MEMORY[0x1E695F050] + 16);
    v248 = *MEMORY[0x1E695F050];
    v249 = v66;
    v241[0] = 0;
    v241[1] = v241;
    v241[2] = 0x2020000000;
    v241[3] = 0x43E0000000000000;
    v72 = objc_msgSend_result(v5, v67, v68, v69, v70, v71);
    v78 = objc_msgSend_result(v5, v73, v74, v75, v76, v77);
    v84 = objc_msgSend_tokenColumnCount(v78, v79, v80, v81, v82, v83);
    v233[0] = MEMORY[0x1E69E9820];
    v233[1] = 3221225472;
    v233[2] = sub_1839A289C;
    v233[3] = &unk_1E6DE0948;
    v85 = v65;
    v234 = v85;
    v240 = v23;
    v236 = &v254;
    v237 = &v250;
    v86 = v59;
    v235 = v86;
    v238 = v241;
    v239 = buf;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v72, v87, v53, 0, v84, v233);

    v93 = v255;
    v94 = v255[5];
    if (v94)
    {
      v230 = v53;
      v100 = v94;
      if (*(v251 + 24) == 1)
      {
        v101 = objc_msgSend_string(v93[5], v95, v96, v97, v98, v99);
        v228 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v101, v102, @" ", &stru_1EF1C0318, v103, v104);

        v105 = [CHTokenizedTextResultToken alloc];
        v111 = objc_msgSend_strokeIndexes(v255[5], v106, v107, v108, v109, v110);
        objc_msgSend_modelScore(v255[5], v112, v113, v114, v115, v116);
        v118 = v117;
        objc_msgSend_recognitionScore(v255[5], v119, v120, v121, v122, v123);
        v125 = v124;
        objc_msgSend_combinedScore(v255[5], v126, v127, v128, v129, v130);
        v132 = v131;
        objc_msgSend_alignmentScore(v255[5], v133, v134, v135, v136, v137);
        v139 = v138;
        v145 = objc_msgSend_properties(v255[5], v140, v141, v142, v143, v144);
        v151 = objc_msgSend_recognizerSourceLocale(v255[5], v146, v147, v148, v149, v150);
        v157 = objc_msgSend_inputSources(v255[5], v152, v153, v154, v155, v156);
        v163 = objc_msgSend_substrokeCount(v255[5], v158, v159, v160, v161, v162);
        objc_msgSend_bounds(v255[5], v164, v165, v166, v167, v168);
        v174 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v105, v169, v228, v111, 0, v145, v151, v157 | 0x200, v118, v125, v132, v139, v170, v171, v172, v173, v163);

        v100 = v174;
      }

      objc_msgSend_addObject_(v86, v95, v100, v97, v98, v99);

      v53 = v230;
    }

    v5 = v229;
    if (objc_msgSend_count(v86, v88, v89, v90, v91, v92))
    {
      if ((objc_msgSend_isEqual_(v86, v175, v85, v176, v177, v178) & 1) == 0)
      {
        objc_msgSend_addObject_(v232, v175, v86, v176, v177, v178);
        v184 = objc_msgSend_result(v229, v179, v180, v181, v182, v183);
        v190 = objc_msgSend_transcriptionPathScores(v184, v185, v186, v187, v188, v189);
        v195 = objc_msgSend_objectAtIndexedSubscript_(v190, v191, v23, v192, v193, v194);
        objc_msgSend_addObject_(v231, v196, v195, v197, v198, v199);
      }
    }

    objc_msgSend_addObject_(v232, v175, v85, v176, v177, v178);
    v205 = objc_msgSend_result(v229, v200, v201, v202, v203, v204);
    v211 = objc_msgSend_transcriptionPathScores(v205, v206, v207, v208, v209, v210);
    v216 = objc_msgSend_objectAtIndexedSubscript_(v211, v212, v23, v213, v214, v215);
    objc_msgSend_addObject_(v231, v217, v216, v218, v219, v220);

    _Block_object_dispose(v241, 8);
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v250, 8);
    _Block_object_dispose(&v254, 8);

    ++v23;
    v7 = 0x1E695D000;
  }

  v221 = objc_msgSend_result(v5, v37, v38, v39, v40, v41);
  v225 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v221, v222, v232, v231, v223, v224);
  if (v5)
  {
    objc_storeStrong(v5 + 3, v225);
  }

  return v5;
}

@end