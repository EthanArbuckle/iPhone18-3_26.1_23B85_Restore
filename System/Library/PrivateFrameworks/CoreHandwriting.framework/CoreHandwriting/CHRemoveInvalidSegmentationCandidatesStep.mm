@interface CHRemoveInvalidSegmentationCandidatesStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHRemoveInvalidSegmentationCandidatesStep

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
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveInvalidSegmentationCandidatesStep is running", buf, 2u);
  }

  v12 = objc_msgSend_result(processCopy, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);

  if (v24)
  {
    v188 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
    v35 = objc_msgSend_result(processCopy, v30, v31, v32, v33, v34);
    v41 = objc_msgSend_transcriptionPaths(v35, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_count(v41, v42, v43, v44, v45, v46);

    if (v47)
    {
      v53 = objc_msgSend_result(processCopy, v48, v49, v50, v51, v52);
      v59 = objc_msgSend_transcriptionPaths(v53, v54, v55, v56, v57, v58);
      v64 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, 0, v61, v62, v63);

      v70 = objc_msgSend_array(MEMORY[0x1E695DF70], v65, v66, v67, v68, v69);
      *buf = 0;
      v202 = buf;
      v203 = 0x2020000000;
      v204 = 0;
      v197 = 0;
      v198 = &v197;
      v199 = 0x2020000000;
      v200 = 0;
      v76 = objc_msgSend_result(processCopy, v71, v72, v73, v74, v75);
      v82 = objc_msgSend_result(processCopy, v77, v78, v79, v80, v81);
      v88 = objc_msgSend_tokenColumnCount(v82, v83, v84, v85, v86, v87);
      v189 = MEMORY[0x1E69E9820];
      v190 = MEMORY[0x1E69E9820];
      v191 = 3221225472;
      v192 = sub_18367E64C;
      v193 = &unk_1E6DDBED8;
      v195 = buf;
      v196 = &v197;
      v89 = v70;
      v194 = v89;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v76, v90, v64, 0, v88, &v190);

      v91 = *(v202 + 3);
      objc_msgSend_addObject_(v188, v92, v89, v93, v94, v95);

      _Block_object_dispose(&v197, 8);
      _Block_object_dispose(buf, 8);

      for (i = 1; ; ++i)
      {
        v102 = objc_msgSend_result(processCopy, v96, v97, v98, v99, v100);
        v108 = objc_msgSend_transcriptionPaths(v102, v103, v104, v105, v106, v107);
        v114 = objc_msgSend_count(v108, v109, v110, v111, v112, v113);

        if (i >= v114)
        {
          break;
        }

        v115 = objc_msgSend_result(processCopy, v48, v49, v50, v51, v52);
        v121 = objc_msgSend_transcriptionPaths(v115, v116, v117, v118, v119, v120);
        v126 = objc_msgSend_objectAtIndexedSubscript_(v121, v122, i, v123, v124, v125);

        v132 = objc_msgSend_array(MEMORY[0x1E695DF70], v127, v128, v129, v130, v131);
        *buf = 0;
        v202 = buf;
        v203 = 0x2020000000;
        v204 = 0;
        v197 = 0;
        v198 = &v197;
        v199 = 0x2020000000;
        v200 = 0;
        v138 = objc_msgSend_result(processCopy, v133, v134, v135, v136, v137);
        v144 = objc_msgSend_result(processCopy, v139, v140, v141, v142, v143);
        v150 = objc_msgSend_tokenColumnCount(v144, v145, v146, v147, v148, v149);
        v190 = v189;
        v191 = 3221225472;
        v192 = sub_18367E64C;
        v193 = &unk_1E6DDBED8;
        v195 = buf;
        v196 = &v197;
        v151 = v132;
        v194 = v151;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v138, v152, v126, 0, v150, &v190);

        if (*(v202 + 3) <= v91 || (v198[3] & 1) == 0)
        {
          objc_msgSend_addObject_(v188, v153, v151, v154, v155, v156);
        }

        _Block_object_dispose(&v197, 8);
        _Block_object_dispose(buf, 8);
      }
    }

    v157 = objc_msgSend_count(v188, v48, v49, v50, v51, v52);
    v163 = objc_msgSend_result(processCopy, v158, v159, v160, v161, v162);
    v169 = objc_msgSend_transcriptionPaths(v163, v164, v165, v166, v167, v168);
    v175 = objc_msgSend_count(v169, v170, v171, v172, v173, v174);

    if (v157 != v175)
    {
      v176 = [CHTokenizedMathResult alloc];
      v181 = objc_msgSend_initWithBestPathTokens_(v176, v177, v188, v178, v179, v180);
      objc_msgSend_setResult_(processCopy, v182, v181, v183, v184, v185);
    }
  }

  return processCopy;
}

@end