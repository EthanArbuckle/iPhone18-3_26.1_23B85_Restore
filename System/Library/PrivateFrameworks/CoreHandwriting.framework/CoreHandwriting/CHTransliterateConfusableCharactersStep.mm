@interface CHTransliterateConfusableCharactersStep
- (CHTransliterateConfusableCharactersStep)initWithStaticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)customLexicon locale:(id)locale;
- (id)process:(id)process options:(id)options;
@end

@implementation CHTransliterateConfusableCharactersStep

- (CHTransliterateConfusableCharactersStep)initWithStaticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)customLexicon locale:(id)locale
{
  localeCopy = locale;
  v18.receiver = self;
  v18.super_class = CHTransliterateConfusableCharactersStep;
  v9 = [(CHTransliterateConfusableCharactersStep *)&v18 init];
  if (v9)
  {
    objc_opt_self();
    if (qword_1EA84DC28 != -1)
    {
      dispatch_once(&qword_1EA84DC28, &unk_1EF1BFAD8);
    }

    v9->_characterTransliterations = qword_1EA84DC20;
    v9->_staticLexicon = lexicon;
    v9->_customLexicon = customLexicon;
    v15 = objc_msgSend_copy(localeCopy, v10, v11, v12, v13, v14);
    locale = v9->_locale;
    v9->_locale = v15;
  }

  return v9;
}

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
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHTransliterateConfusableCharactersStep is running", buf, 2u);
  }

  v187 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v186 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  v22 = 0;
  for (i = processCopy; ; processCopy = i)
  {
    v23 = objc_msgSend_result(processCopy, v17, v18, v19, v20, v21);
    v29 = objc_msgSend_transcriptionPaths(v23, v24, v25, v26, v27, v28);
    v35 = objc_msgSend_count(v29, v30, v31, v32, v33, v34);

    if (v22 >= v35)
    {
      break;
    }

    *buf = 0;
    v202 = buf;
    v203 = 0x3032000000;
    v204 = sub_183996F80;
    v205 = sub_183996F90;
    v206 = objc_msgSend_leftContext(processCopy, v36, v37, v38, v39, v40);
    v192 = objc_msgSend_array(MEMORY[0x1E695DF70], v41, v42, v43, v44, v45);
    v191 = objc_msgSend_array(MEMORY[0x1E695DF70], v46, v47, v48, v49, v50);
    v190 = objc_msgSend_array(MEMORY[0x1E695DF70], v51, v52, v53, v54, v55);
    v189 = objc_msgSend_array(MEMORY[0x1E695DF70], v56, v57, v58, v59, v60);
    v66 = objc_msgSend_result(processCopy, v61, v62, v63, v64, v65);
    v72 = objc_msgSend_transcriptionPaths(v66, v67, v68, v69, v70, v71);
    v77 = objc_msgSend_objectAtIndexedSubscript_(v72, v73, v22, v74, v75, v76);

    v83 = objc_msgSend_result(processCopy, v78, v79, v80, v81, v82);
    v89 = objc_msgSend_result(processCopy, v84, v85, v86, v87, v88);
    v95 = objc_msgSend_tokenColumnCount(v89, v90, v91, v92, v93, v94);
    v193[0] = MEMORY[0x1E69E9820];
    v193[1] = 3221225472;
    v193[2] = sub_1839A7404;
    v193[3] = &unk_1E6DE09E8;
    v96 = v190;
    v194 = v96;
    v97 = v189;
    v195 = v97;
    v98 = v192;
    v196 = v98;
    v99 = v191;
    v197 = v99;
    selfCopy = self;
    v199 = buf;
    v200 = v22;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v83, v100, v77, 0, v95, v193);

    if (objc_msgSend_count(v96, v101, v102, v103, v104, v105))
    {
      sub_183992A0C(CHPostprocessingStep, v96, v97, v98, v99);
    }

    if (objc_msgSend_count(v98, v106, v107, v108, v109, v110))
    {
      objc_msgSend_addObject_(v187, v111, v98, v113, v114, v115);
      v121 = objc_msgSend_result(i, v116, v117, v118, v119, v120);
      v127 = objc_msgSend_transcriptionPathScores(v121, v122, v123, v124, v125, v126);
      v132 = objc_msgSend_objectAtIndexedSubscript_(v127, v128, v22, v129, v130, v131);
      v138 = objc_msgSend_copy(v132, v133, v134, v135, v136, v137);
      objc_msgSend_addObject_(v186, v139, v138, v140, v141, v142);
    }

    if (objc_msgSend_count(v99, v111, v112, v113, v114, v115))
    {
      if ((objc_msgSend_isEqual_(v99, v143, v98, v144, v145, v146) & 1) == 0)
      {
        objc_msgSend_addObject_(v187, v147, v99, v148, v149, v150);
        v156 = objc_msgSend_result(i, v151, v152, v153, v154, v155);
        v162 = objc_msgSend_transcriptionPathScores(v156, v157, v158, v159, v160, v161);
        v167 = objc_msgSend_objectAtIndexedSubscript_(v162, v163, v22, v164, v165, v166);
        v173 = objc_msgSend_copy(v167, v168, v169, v170, v171, v172);
        objc_msgSend_addObject_(v186, v174, v173, v175, v176, v177);
      }
    }

    _Block_object_dispose(buf, 8);
    ++v22;
  }

  v178 = objc_msgSend_result(processCopy, v36, v37, v38, v39, v40);
  v182 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v178, v179, v187, v186, v180, v181);
  if (processCopy)
  {
    objc_storeStrong(processCopy + 3, v182);
  }

  return processCopy;
}

@end