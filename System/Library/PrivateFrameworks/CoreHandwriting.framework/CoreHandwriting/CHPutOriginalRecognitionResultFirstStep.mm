@interface CHPutOriginalRecognitionResultFirstStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHPutOriginalRecognitionResultFirstStep

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
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHPutOriginalRecognitionResultFirstStep is running", buf, 2u);
  }

  v193 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  for (i = 0; ; ++i)
  {
    v18 = objc_msgSend_result(processCopy, v12, v13, v14, v15, v16);
    v24 = objc_msgSend_transcriptionPaths(v18, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_count(v24, v25, v26, v27, v28, v29);

    if (i >= v30)
    {
      break;
    }

    *buf = 0;
    v196 = buf;
    v197 = 0x2020000000;
    v198 = 1;
    v36 = objc_msgSend_result(processCopy, v31, v32, v33, v34, v35);
    v42 = objc_msgSend_result(processCopy, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_transcriptionPaths(v42, v43, v44, v45, v46, v47);
    v53 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, i, v50, v51, v52);
    v59 = objc_msgSend_result(processCopy, v54, v55, v56, v57, v58);
    v65 = objc_msgSend_transcriptionPaths(v59, v60, v61, v62, v63, v64);
    v70 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, i, v67, v68, v69);
    v76 = objc_msgSend_length(v70, v71, v72, v73, v74, v75);
    v194[0] = MEMORY[0x1E69E9820];
    v194[1] = 3221225472;
    v194[2] = sub_1839B4480;
    v194[3] = &unk_1E6DDC5D0;
    v194[4] = buf;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v36, v77, v53, 0, v76, v194);

    if (v196[24] == 1)
    {
      v83 = objc_msgSend_result(processCopy, v78, v79, v80, v81, v82);
      v89 = objc_msgSend_transcriptionPaths(v83, v84, v85, v86, v87, v88);
      v94 = objc_msgSend_objectAtIndexedSubscript_(v89, v90, i, v91, v92, v93);
      objc_msgSend_insertObject_atIndex_(v193, v95, v94, 0, v96, v97);
    }

    else
    {
      v83 = objc_msgSend_result(processCopy, v78, v79, v80, v81, v82);
      v89 = objc_msgSend_transcriptionPaths(v83, v98, v99, v100, v101, v102);
      v94 = objc_msgSend_objectAtIndexedSubscript_(v89, v103, i, v104, v105, v106);
      objc_msgSend_addObject_(v193, v107, v94, v108, v109, v110);
    }

    _Block_object_dispose(buf, 8);
  }

  v111 = objc_msgSend_result(processCopy, v31, v32, v33, v34, v35);
  v189 = objc_msgSend_baseWritingDirection(v111, v112, v113, v114, v115, v116);

  v117 = [CHMutableTokenizedTextResult alloc];
  v123 = objc_msgSend_result(processCopy, v118, v119, v120, v121, v122);
  v192 = objc_msgSend_tokenColumns(v123, v124, v125, v126, v127, v128);
  v190 = objc_msgSend_result(processCopy, v129, v130, v131, v132, v133);
  v139 = objc_msgSend_transcriptionPathScores(v190, v134, v135, v136, v137, v138);
  v145 = objc_msgSend_result(processCopy, v140, v141, v142, v143, v144);
  v151 = objc_msgSend_trailingSeparator(v145, v146, v147, v148, v149, v150);
  v157 = objc_msgSend_result(processCopy, v152, v153, v154, v155, v156);
  v163 = objc_msgSend_recognizerGenerationIdentifier(v157, v158, v159, v160, v161, v162);
  v169 = objc_msgSend_result(processCopy, v164, v165, v166, v167, v168);
  v175 = objc_msgSend_originalTokens(v169, v170, v171, v172, v173, v174);
  v177 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v117, v176, v192, v193, v139, v151, v163, v175);
  if (processCopy)
  {
    objc_storeStrong(processCopy + 3, v177);
  }

  v183 = objc_msgSend_result(processCopy, v178, v179, v180, v181, v182);
  objc_msgSend_setBaseWritingDirection_(v183, v184, v189, v185, v186, v187);

  return processCopy;
}

@end