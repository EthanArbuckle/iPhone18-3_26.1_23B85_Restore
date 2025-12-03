@interface CHRemoveVariableCasingAlternativesStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHRemoveVariableCasingAlternativesStep

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
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveVariableCasingAlternativesStep is running", buf, 2u);
  }

  v12 = objc_msgSend_result(processCopy, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);

  if (v24)
  {
    v183 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
    v35 = objc_msgSend_result(processCopy, v30, v31, v32, v33, v34);
    v41 = objc_msgSend_transcriptionPaths(v35, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_firstObject(v41, v42, v43, v44, v45, v46);

    v51 = objc_msgSend_retrievePathTokens_atPathIndex_(self, v48, processCopy, 0, v49, v50);
    objc_msgSend_addObject_(v183, v52, v51, v53, v54, v55);

    for (i = 1; ; i = v184 + 1)
    {
      v62 = objc_msgSend_result(processCopy, v56, v57, v58, v59, v60);
      v68 = objc_msgSend_transcriptionPaths(v62, v63, v64, v65, v66, v67);
      v74 = objc_msgSend_count(v68, v69, v70, v71, v72, v73);

      if (i >= v74)
      {
        break;
      }

      v80 = objc_msgSend_result(processCopy, v75, v76, v77, v78, v79);
      v86 = objc_msgSend_transcriptionPaths(v80, v81, v82, v83, v84, v85);
      v184 = i;
      v91 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, i, v88, v89, v90);

      v185 = objc_msgSend_array(MEMORY[0x1E695DF70], v92, v93, v94, v95, v96);
      for (j = 0; ; ++j)
      {
        v103 = objc_msgSend_result(processCopy, v97, v98, v99, v100, v101);
        v109 = objc_msgSend_tokenColumnCount(v103, v104, v105, v106, v107, v108);

        if (j >= v109)
        {
          break;
        }

        v114 = objc_msgSend_indexAtPosition_(v91, v110, j, v111, v112, v113);
        if (v114 == objc_msgSend_indexAtPosition_(v47, v115, j, v116, v117, v118) || (objc_msgSend_result(processCopy, v119, v120, v121, v122, v123), v124 = objc_claimAutoreleasedReturnValue(), objc_msgSend_transcriptionWithPath_columnRange_(v124, v125, v91, j, 1, v126), v127 = objc_claimAutoreleasedReturnValue(), objc_msgSend_lowercaseString(v127, v128, v129, v130, v131, v132), v133 = objc_claimAutoreleasedReturnValue(), objc_msgSend_result(processCopy, v134, v135, v136, v137, v138), v139 = objc_claimAutoreleasedReturnValue(), v140 = v47, objc_msgSend_transcriptionWithPath_columnRange_(v139, v141, v47, j, 1, v142), v143 = objc_claimAutoreleasedReturnValue(), objc_msgSend_lowercaseString(v143, v144, v145, v146, v147, v148), v149 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v133, v150, v149, v151, v152, v153), v149, v143, v139, v133, v127, v124, v47 = v140, !isEqualToString))
        {
          v155 = objc_msgSend_result(processCopy, v119, v120, v121, v122, v123);
          v159 = objc_msgSend_tokensInTranscriptionPath_atColumnIndex_(v155, v164, v91, j, v165, v166);
          objc_msgSend_addObjectsFromArray_(v185, v167, v159, v168, v169, v170);
        }

        else
        {
          v155 = objc_msgSend_result(processCopy, v119, v120, v121, v122, v123);
          v159 = objc_msgSend_tokensInTranscriptionPath_atColumnIndex_(v155, v156, v140, j, v157, v158);
          objc_msgSend_addObjectsFromArray_(v185, v160, v159, v161, v162, v163);
        }
      }

      objc_msgSend_addObject_(v183, v110, v185, v111, v112, v113);
    }

    v171 = [CHTokenizedMathResult alloc];
    v176 = objc_msgSend_initWithBestPathTokens_(v171, v172, v183, v173, v174, v175);
    objc_msgSend_setResult_(processCopy, v177, v176, v178, v179, v180);
  }

  return processCopy;
}

@end