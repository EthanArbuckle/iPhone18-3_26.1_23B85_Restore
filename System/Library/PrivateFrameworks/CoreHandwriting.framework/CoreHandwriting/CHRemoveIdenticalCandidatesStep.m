@interface CHRemoveIdenticalCandidatesStep
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHRemoveIdenticalCandidatesStep

- (id)process:(id)a3 options:(id)a4
{
  v5 = a3;
  v236 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveIdenticalCandidatesStep is running", buf, 2u);
  }

  v12 = objc_msgSend_result(v5, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);

  if (v24 >= 2)
  {
    v35 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v25, v26, v27, v28, v29);
    for (i = 0; ; ++i)
    {
      v37 = objc_msgSend_result(v5, v30, v31, v32, v33, v34);
      v43 = objc_msgSend_tokenColumnCount(v37, v38, v39, v40, v41, v42);

      if (i >= v43)
      {
        break;
      }

      v49 = objc_msgSend_result(v5, v44, v45, v46, v47, v48);
      v54 = objc_msgSend_renderableLatexCandidatesForColumnIndex_(v49, v50, i, v51, v52, v53);

      if (objc_msgSend_count(v54, v55, v56, v57, v58, v59) >= 2)
      {
        v238 = objc_msgSend_set(MEMORY[0x1E695DFA8], v60, v61, v62, v63, v64);
        for (j = 0; j < objc_msgSend_count(v54, v65, v66, v67, v68, v69); ++j)
        {
          v75 = objc_msgSend_objectAtIndexedSubscript_(v54, v71, j, v72, v73, v74);
          v80 = objc_msgSend_containsObject_(v238, v76, v75, v77, v78, v79);

          if (v80)
          {
            goto LABEL_15;
          }

          v117 = objc_msgSend_result(v5, v81, v82, v83, v84, v85);
          v123 = objc_msgSend_tokenColumnCount(v117, v118, v119, v120, v121, v122) - 1;

          if (i != v123)
          {
            goto LABEL_25;
          }

          v124 = objc_msgSend_objectAtIndexedSubscript_(v54, v81, j, v83, v84, v85);
          if (objc_msgSend_hasSuffix_(v124, v125, @" =", v126, v127, v128))
          {
            v134 = objc_msgSend_length(v124, v129, v130, v131, v132, v133);
            v140 = objc_msgSend_length(@" =", v135, v136, v137, v138, v139);
            objc_msgSend_substringToIndex_(v124, v141, v134 - v140, v142, v143, v144);
          }

          else
          {
            objc_msgSend_stringByAppendingString_(v124, v129, @" =", v131, v132, v133);
          }
          v145 = ;

          v150 = objc_msgSend_containsObject_(v238, v146, v145, v147, v148, v149);
          if (v150)
          {
LABEL_15:
            for (k = 0; ; ++k)
            {
              v87 = objc_msgSend_result(v5, v81, v82, v83, v84, v85);
              v93 = objc_msgSend_transcriptionPaths(v87, v88, v89, v90, v91, v92);
              v99 = objc_msgSend_count(v93, v94, v95, v96, v97, v98);

              if (k >= v99)
              {
                break;
              }

              v100 = objc_msgSend_result(v5, v65, v66, v67, v68, v69);
              v106 = objc_msgSend_transcriptionPaths(v100, v101, v102, v103, v104, v105);
              v111 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, k, v108, v109, v110);
              v116 = objc_msgSend_indexAtPosition_(v111, v112, i, v113, v114, v115);

              if (v116 == j)
              {
                objc_msgSend_addIndex_(v35, v81, k, v83, v84, v85);
              }
            }
          }

          else
          {
LABEL_25:
            v151 = objc_msgSend_objectAtIndexedSubscript_(v54, v81, j, v83, v84, v85);
            objc_msgSend_addObject_(v238, v152, v151, v153, v154, v155);
          }
        }
      }
    }

    if (objc_msgSend_count(v35, v44, v45, v46, v47, v48))
    {
      v239 = objc_msgSend_array(MEMORY[0x1E695DF70], v156, v157, v158, v159, v160);
      for (m = 0; ; ++m)
      {
        v167 = objc_msgSend_result(v5, v161, v162, v163, v164, v165);
        v173 = objc_msgSend_transcriptionPaths(v167, v168, v169, v170, v171, v172);
        v179 = objc_msgSend_count(v173, v174, v175, v176, v177, v178);

        if (m >= v179)
        {
          break;
        }

        if ((objc_msgSend_containsIndex_(v35, v180, m, v181, v182, v183) & 1) == 0)
        {
          v237 = objc_msgSend_array(MEMORY[0x1E695DF70], v161, v162, v163, v164, v165);
          v189 = objc_msgSend_result(v5, v184, v185, v186, v187, v188);
          v195 = objc_msgSend_result(v5, v190, v191, v192, v193, v194);
          v201 = objc_msgSend_transcriptionPaths(v195, v196, v197, v198, v199, v200);
          v206 = objc_msgSend_objectAtIndexedSubscript_(v201, v202, m, v203, v204, v205);
          v212 = objc_msgSend_result(v5, v207, v208, v209, v210, v211);
          v218 = objc_msgSend_tokenColumnCount(v212, v213, v214, v215, v216, v217);
          v240[0] = MEMORY[0x1E69E9820];
          v240[1] = 3221225472;
          v240[2] = sub_183683FA0;
          v240[3] = &unk_1E6DDBDA0;
          v219 = v237;
          v241 = v219;
          objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v189, v220, v206, 0, v218, v240);

          objc_msgSend_addObject_(v239, v221, v219, v222, v223, v224);
        }
      }

      v225 = [CHTokenizedMathResult alloc];
      v230 = objc_msgSend_initWithBestPathTokens_(v225, v226, v239, v227, v228, v229);
      objc_msgSend_setResult_(v5, v231, v230, v232, v233, v234);
    }
  }

  return v5;
}

@end