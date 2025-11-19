@interface CHPruneCandidatesComparingColumnScoresStep
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHPruneCandidatesComparingColumnScoresStep

- (id)process:(id)a3 options:(id)a4
{
  v5 = a3;
  v191 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHPruneCandidatesComparingColumnScoresStep is running", buf, 2u);
  }

  v12 = objc_msgSend_result(v5, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);

  if (v24)
  {
    v192 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29, v191);
    for (i = 0; ; ++i)
    {
      v36 = objc_msgSend_result(v5, v30, v31, v32, v33, v34);
      v42 = objc_msgSend_transcriptionPaths(v36, v37, v38, v39, v40, v41);
      v48 = objc_msgSend_count(v42, v43, v44, v45, v46, v47);

      if (i >= v48)
      {
        break;
      }

      v54 = objc_msgSend_result(v5, v49, v50, v51, v52, v53);
      v60 = objc_msgSend_transcriptionPaths(v54, v55, v56, v57, v58, v59);
      v65 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, i, v62, v63, v64);

      v71 = objc_msgSend_array(MEMORY[0x1E695DF70], v66, v67, v68, v69, v70);
      v77 = objc_msgSend_result(v5, v72, v73, v74, v75, v76);
      v83 = objc_msgSend_result(v5, v78, v79, v80, v81, v82);
      v89 = objc_msgSend_tokenColumnCount(v83, v84, v85, v86, v87, v88);
      v193[0] = MEMORY[0x1E69E9820];
      v193[1] = 3221225472;
      v193[2] = sub_18367ED48;
      v193[3] = &unk_1E6DDBDA0;
      v90 = v71;
      v194 = v90;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v77, v91, v65, 0, v89, v193);

      if (i)
      {
        for (j = 0; ; ++j)
        {
          v98 = objc_msgSend_result(v5, v92, v93, v94, v95, v96);
          v104 = objc_msgSend_tokenColumnCount(v98, v99, v100, v101, v102, v103);

          if (j >= v104)
          {
            break;
          }

          v106 = objc_msgSend_result(v5, v92, v105, v94, v95, v96);
          v112 = objc_msgSend_transcriptionPaths(v106, v107, v108, v109, v110, v111);
          v118 = objc_msgSend_firstObject(v112, v113, v114, v115, v116, v117);
          v123 = objc_msgSend_indexAtPosition_(v118, v119, j, v120, v121, v122);

          if (objc_msgSend_indexAtPosition_(v65, v124, j, v125, v126, v127) != v123)
          {
            v128 = objc_msgSend_result(v5, v92, v93, v94, v95, v96);
            v134 = objc_msgSend_result(v5, v129, v130, v131, v132, v133);
            v140 = objc_msgSend_transcriptionPaths(v134, v135, v136, v137, v138, v139);
            v146 = objc_msgSend_firstObject(v140, v141, v142, v143, v144, v145);
            objc_msgSend_geometricMeanTokenScoreForColumnRange_transcriptionPath_(v128, v147, j, 1, v146, v148);
            v150 = v149;

            v156 = objc_msgSend_result(v5, v151, v152, v153, v154, v155);
            objc_msgSend_geometricMeanTokenScoreForColumnRange_transcriptionPath_(v156, v157, j, 1, v65, v158);
            v160 = v159;

            if (v160 < v150 * 0.05)
            {
              goto LABEL_8;
            }
          }
        }
      }

      objc_msgSend_addObject_(v192, v92, v90, v94, v95, v96);
LABEL_8:
    }

    v161 = objc_msgSend_count(v192, v49, v50, v51, v52, v53);
    v167 = objc_msgSend_result(v5, v162, v163, v164, v165, v166);
    v173 = objc_msgSend_transcriptionPaths(v167, v168, v169, v170, v171, v172);
    v179 = objc_msgSend_count(v173, v174, v175, v176, v177, v178);

    if (v161 != v179)
    {
      v180 = [CHTokenizedMathResult alloc];
      v185 = objc_msgSend_initWithBestPathTokens_(v180, v181, v192, v182, v183, v184);
      objc_msgSend_setResult_(v5, v186, v185, v187, v188, v189);
    }
  }

  return v5;
}

@end