@interface CHTransliterateConfusableCharactersArabicStep
- (CHTransliterateConfusableCharactersArabicStep)init;
- (id).cxx_construct;
- (id)process:(id)process options:(id)options;
@end

@implementation CHTransliterateConfusableCharactersArabicStep

- (CHTransliterateConfusableCharactersArabicStep)init
{
  v3.receiver = self;
  v3.super_class = CHTransliterateConfusableCharactersArabicStep;
  if ([(CHTransliterateConfusableCharactersArabicStep *)&v3 init])
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
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHTransliterateConfusableCharactersArabicStep is running", buf, 2u);
  }

  v6 = MEMORY[0x1E695DF70];
  v12 = objc_msgSend_result(processCopy, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);
  v189 = objc_msgSend_arrayWithCapacity_(v6, v25, v24, v26, v27, v28);

  v29 = MEMORY[0x1E695DF70];
  v35 = objc_msgSend_result(processCopy, v30, v31, v32, v33, v34);
  v41 = objc_msgSend_transcriptionPaths(v35, v36, v37, v38, v39, v40);
  v47 = objc_msgSend_count(v41, v42, v43, v44, v45, v46);
  v188 = objc_msgSend_arrayWithCapacity_(v29, v48, v47, v49, v50, v51);

  if (qword_1EA84DBE8 != -1)
  {
    dispatch_once(&qword_1EA84DBE8, &unk_1EF1BFAF8);
  }

  for (i = 0; ; ++i)
  {
    v58 = objc_msgSend_result(processCopy, v52, v53, v54, v55, v56);
    v64 = objc_msgSend_transcriptionPaths(v58, v59, v60, v61, v62, v63);
    v70 = objc_msgSend_count(v64, v65, v66, v67, v68, v69);

    if (i >= v70)
    {
      break;
    }

    v76 = objc_msgSend_result(processCopy, v71, v72, v73, v74, v75);
    v82 = objc_msgSend_transcriptionPaths(v76, v77, v78, v79, v80, v81);
    v87 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, i, v84, v85, v86);

    v191 = objc_msgSend_array(MEMORY[0x1E695DF70], v88, v89, v90, v91, v92);
    v98 = objc_msgSend_array(MEMORY[0x1E695DF70], v93, v94, v95, v96, v97);
    v104 = objc_msgSend_result(processCopy, v99, v100, v101, v102, v103);
    v110 = objc_msgSend_result(processCopy, v105, v106, v107, v108, v109);
    v116 = objc_msgSend_tokenColumnCount(v110, v111, v112, v113, v114, v115);
    v193[0] = MEMORY[0x1E69E9820];
    v193[1] = 3221225472;
    v193[2] = sub_1839AA32C;
    v193[3] = &unk_1E6DE0A88;
    v199 = i;
    v117 = processCopy;
    v194 = v117;
    selfCopy = self;
    v196 = optionsCopy;
    v118 = v191;
    v197 = v118;
    v119 = v98;
    v198 = v119;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v104, v120, v87, 0, v116, v193);

    if (objc_msgSend_count(v118, v121, v122, v123, v124, v125))
    {
      objc_msgSend_addObject_(v189, v126, v118, v128, v129, v130);
      v136 = objc_msgSend_result(v117, v131, v132, v133, v134, v135);
      v142 = objc_msgSend_transcriptionPathScores(v136, v137, v138, v139, v140, v141);
      v147 = objc_msgSend_objectAtIndexedSubscript_(v142, v143, i, v144, v145, v146);
      objc_msgSend_addObject_(v188, v148, v147, v149, v150, v151);
    }

    if (objc_msgSend_count(v119, v126, v127, v128, v129, v130))
    {
      if ((objc_msgSend_isEqual_(v119, v152, v118, v153, v154, v155) & 1) == 0)
      {
        objc_msgSend_addObject_(v189, v156, v119, v157, v158, v159);
        v165 = objc_msgSend_result(v117, v160, v161, v162, v163, v164);
        v171 = objc_msgSend_transcriptionPathScores(v165, v166, v167, v168, v169, v170);
        v176 = objc_msgSend_objectAtIndexedSubscript_(v171, v172, i, v173, v174, v175);
        objc_msgSend_addObject_(v188, v177, v176, v178, v179, v180);
      }
    }
  }

  v181 = objc_msgSend_result(processCopy, v71, v72, v73, v74, v75);
  v185 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v181, v182, v189, v188, v183, v184);
  if (processCopy)
  {
    objc_storeStrong(processCopy + 3, v185);
  }

  return processCopy;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end