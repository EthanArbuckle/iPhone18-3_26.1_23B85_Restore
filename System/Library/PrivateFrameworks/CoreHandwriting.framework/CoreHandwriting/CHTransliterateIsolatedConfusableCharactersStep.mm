@interface CHTransliterateIsolatedConfusableCharactersStep
- (CHTransliterateIsolatedConfusableCharactersStep)init;
- (id).cxx_construct;
- (id)process:(id)process options:(id)options;
@end

@implementation CHTransliterateIsolatedConfusableCharactersStep

- (CHTransliterateIsolatedConfusableCharactersStep)init
{
  v3.receiver = self;
  v3.super_class = CHTransliterateIsolatedConfusableCharactersStep;
  if ([(CHTransliterateIsolatedConfusableCharactersStep *)&v3 init])
  {
    sub_1839B5580();
  }

  return 0;
}

- (id)process:(id)process options:(id)options
{
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
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHTransliterateIsolatedConfusableCharactersStep is running", buf, 2u);
  }

  v161 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v160 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v16 = 0;
  objc_msgSend_result(processCopy, v17, v18, v19, v20, v21, optionsCopy, v165);
  while (1)
    v27 = {;
    v33 = objc_msgSend_transcriptionPaths(v27, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_count(v33, v34, v35, v36, v37, v38);

    if (v16 >= v39)
    {
      break;
    }

    v45 = objc_msgSend_result(processCopy, v40, v41, v42, v43, v44);
    v51 = objc_msgSend_transcriptionPaths(v45, v46, v47, v48, v49, v50);
    v56 = objc_msgSend_objectAtIndexedSubscript_(v51, v52, v16, v53, v54, v55);

    v162 = objc_msgSend_array(MEMORY[0x1E695DF70], v57, v58, v59, v60, v61);
    v67 = objc_msgSend_array(MEMORY[0x1E695DF70], v62, v63, v64, v65, v66);
    v73 = objc_msgSend_result(processCopy, v68, v69, v70, v71, v72);
    v79 = objc_msgSend_result(processCopy, v74, v75, v76, v77, v78);
    v85 = objc_msgSend_tokenColumnCount(v79, v80, v81, v82, v83, v84);
    v164[0] = MEMORY[0x1E69E9820];
    v164[1] = 3221225472;
    v165[0] = sub_1839A9248;
    v165[1] = &unk_1E6DE0A60;
    v170 = v16;
    v86 = v67;
    v166 = v86;
    v87 = processCopy;
    v167 = v87;
    selfCopy = self;
    v88 = v162;
    v169 = v88;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v73, v89, v56, 0, v85, v164);

    if (objc_msgSend_count(v86, v90, v91, v92, v93, v94))
    {
      objc_msgSend_addObject_(v161, v95, v86, v97, v98, v99);
      v105 = objc_msgSend_result(v87, v100, v101, v102, v103, v104);
      v111 = objc_msgSend_transcriptionPathScores(v105, v106, v107, v108, v109, v110);
      v116 = objc_msgSend_objectAtIndexedSubscript_(v111, v112, v16, v113, v114, v115);
      objc_msgSend_addObject_(v160, v117, v116, v118, v119, v120);
    }

    if (objc_msgSend_count(v88, v95, v96, v97, v98, v99))
    {
      if ((objc_msgSend_isEqual_(v88, v121, v86, v122, v123, v124) & 1) == 0)
      {
        objc_msgSend_addObject_(v161, v125, v88, v126, v127, v128);
        v134 = objc_msgSend_result(v87, v129, v130, v131, v132, v133);
        v140 = objc_msgSend_transcriptionPathScores(v134, v135, v136, v137, v138, v139);
        v145 = objc_msgSend_objectAtIndexedSubscript_(v140, v141, v16, v142, v143, v144);
        objc_msgSend_addObject_(v160, v146, v145, v147, v148, v149);
      }
    }

    ++v16;
    objc_msgSend_result(processCopy, v22, v23, v24, v25, v26, v157, v158);
  }

  v150 = objc_msgSend_result(processCopy, v40, v41, v42, v43, v44);
  v154 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v150, v151, v161, v160, v152, v153);
  if (processCopy)
  {
    objc_storeStrong(processCopy + 3, v154);
  }

  return processCopy;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end