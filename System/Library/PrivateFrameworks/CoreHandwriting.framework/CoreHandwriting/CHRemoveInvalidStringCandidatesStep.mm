@interface CHRemoveInvalidStringCandidatesStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHRemoveInvalidStringCandidatesStep

- (id)process:(id)process options:(id)options
{
  v249 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveInvalidStringCandidatesStep is running", buf, 2u);
  }

  v12 = objc_msgSend_result(processCopy, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23) == 0;

  if (v24)
  {
    v207 = processCopy;
  }

  else
  {
    v237 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29, optionsCopy);
    for (i = 0; ; ++i)
    {
      v36 = objc_msgSend_result(processCopy, v30, v31, v32, v33, v34);
      v42 = objc_msgSend_transcriptionPaths(v36, v37, v38, v39, v40, v41);
      v48 = i < objc_msgSend_count(v42, v43, v44, v45, v46, v47);

      if (!v48)
      {
        break;
      }

      v54 = objc_msgSend_result(processCopy, v49, v50, v51, v52, v53);
      v60 = objc_msgSend_transcriptionPaths(v54, v55, v56, v57, v58, v59);
      v65 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, i, v62, v63, v64);

      v71 = objc_msgSend_array(MEMORY[0x1E695DF70], v66, v67, v68, v69, v70);
      v77 = objc_msgSend_result(processCopy, v72, v73, v74, v75, v76);
      v83 = objc_msgSend_result(processCopy, v78, v79, v80, v81, v82);
      v89 = objc_msgSend_tokenColumnCount(v83, v84, v85, v86, v87, v88);
      v245[0] = MEMORY[0x1E69E9820];
      v245[1] = 3221225472;
      v245[2] = sub_18367E01C;
      v245[3] = &unk_1E6DDBDA0;
      v90 = v71;
      v246 = v90;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v77, v91, v65, 0, v89, v245);

      objc_msgSend_addObject_(v237, v92, v90, v93, v94, v95);
    }

    v96 = objc_msgSend_result(processCopy, v49, v50, v51, v52, v53);
    v102 = objc_msgSend_transcriptionPaths(v96, v97, v98, v99, v100, v101);
    v108 = objc_msgSend_count(v102, v103, v104, v105, v106, v107);
    *buf = 0;
    v243 = 0;
    v244 = 0;
    if (v108)
    {
      if (!(v108 >> 61))
      {
        operator new();
      }

      sub_18368964C();
    }

    for (j = 0; ; ++j)
    {
      v115 = objc_msgSend_result(processCopy, v109, v110, v111, v112, v113);
      v121 = j < objc_msgSend_tokenColumnCount(v115, v116, v117, v118, v119, v120);

      if (!v121)
      {
        break;
      }

      v127 = objc_msgSend_result(processCopy, v122, v123, v124, v125, v126);
      v132 = objc_msgSend_tokenRowsAtColumnIndex_(v127, v128, j, v129, v130, v131);

      if (objc_msgSend_count(v132, v133, v134, v135, v136, v137) >= 2)
      {
        v148 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v138, v139, v140, v141, v142);
        for (k = 0; k < objc_msgSend_count(v132, v143, v144, v145, v146, v147); ++k)
        {
          v240 = 0u;
          v241 = 0u;
          v238 = 0u;
          v239 = 0u;
          v155 = objc_msgSend_objectAtIndexedSubscript_(v132, v150, k, v152, v153, v154);
          v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v156, &v238, v248, 16, v157);
          if (v163)
          {
            v164 = *v239;
            while (2)
            {
              for (m = 0; m != v163; ++m)
              {
                if (*v239 != v164)
                {
                  objc_enumerationMutation(v155);
                }

                if (!objc_msgSend_properties(*(*(&v238 + 1) + 8 * m), v158, v159, v160, v161, v162))
                {
                  objc_msgSend_addIndex_(v148, v158, k, v160, v161, v162);
                  goto LABEL_27;
                }
              }

              v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v158, &v238, v248, 16, v162);
              if (v163)
              {
                continue;
              }

              break;
            }
          }

LABEL_27:
        }

        for (n = 0; ; ++n)
        {
          v167 = objc_msgSend_result(processCopy, v150, v151, v152, v153, v154);
          v173 = objc_msgSend_transcriptionPaths(v167, v168, v169, v170, v171, v172);
          v179 = n < objc_msgSend_count(v173, v174, v175, v176, v177, v178);

          if (!v179)
          {
            break;
          }

          v185 = objc_msgSend_result(processCopy, v180, v181, v182, v183, v184);
          v191 = objc_msgSend_transcriptionPaths(v185, v186, v187, v188, v189, v190);
          v196 = objc_msgSend_objectAtIndexedSubscript_(v191, v192, n, v193, v194, v195);

          v201 = objc_msgSend_indexAtPosition_(v196, v197, j, v198, v199, v200);
          if (objc_msgSend_containsIndex_(v148, v202, v201, v203, v204, v205))
          {
            ++*(*buf + 8 * n);
          }
        }
      }
    }

    v206 = objc_msgSend_count(v237, v122, v123, v124, v125, v126);
    if (v206)
    {
      if (!(v206 >> 61))
      {
        operator new();
      }

      sub_18368964C();
    }

    v247 = buf;
    sub_18368B348(0, 0, &v247, 0, 1);
    v213 = objc_msgSend_array(MEMORY[0x1E695DF70], v208, v209, v210, v211, v212);
    v219 = objc_msgSend_firstObject(v237, v214, v215, v216, v217, v218);
    objc_msgSend_addObject_(v213, v220, v219, v221, v222, v223);

    v224 = [CHTokenizedMathResult alloc];
    v229 = objc_msgSend_initWithBestPathTokens_(v224, v225, v213, v226, v227, v228);
    objc_msgSend_setResult_(processCopy, v230, v229, v231, v232, v233);

    v234 = processCopy;
    if (*buf)
    {
      v243 = *buf;
      operator delete(*buf);
    }
  }

  return processCopy;
}

@end