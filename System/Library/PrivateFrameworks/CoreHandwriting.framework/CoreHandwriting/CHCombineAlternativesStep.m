@interface CHCombineAlternativesStep
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHCombineAlternativesStep

- (id)process:(id)a3 options:(id)a4
{
  v174 = *MEMORY[0x1E69E9840];
  v160 = a3;
  v154 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC58;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHCombineAlternativesStep is running", buf, 2u);
  }

  v6 = MEMORY[0x1E695DFA0];
  v12 = objc_msgSend_result(v160, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v155 = objc_msgSend_orderedSetWithArray_(v6, v19, v18, v20, v21, v22);

  v33 = objc_msgSend_array(MEMORY[0x1E695DF70], v23, v24, v25, v26, v27);
  v34 = 0;
  for (i = 0; ; i = v96)
  {
    v35 = objc_msgSend_result(v160, v28, v29, v30, v31, v32, v154);
    v41 = v34 < objc_msgSend_tokenColumnCount(v35, v36, v37, v38, v39, v40);

    if (!v41)
    {
      break;
    }

    v47 = 0;
    if (v34)
    {
      while (1)
      {
        v48 = objc_msgSend_result(v160, v42, v43, v44, v45, v46);
        v53 = objc_msgSend_tokenRowsAtColumnIndex_(v48, v49, v34, v50, v51, v52);
        v59 = v47 < objc_msgSend_count(v53, v54, v55, v56, v57, v58);

        if (!v59)
        {
          break;
        }

        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        v60 = i;
        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v167, v173, 16, v62);
        if (v67)
        {
          v68 = *v168;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v168 != v68)
              {
                objc_enumerationMutation(v60);
              }

              v70 = objc_msgSend_indexPathByAddingIndex_(*(*(&v167 + 1) + 8 * j), v63, v47, v64, v65, v66);
              objc_msgSend_addObject_(v33, v71, v70, v72, v73, v74);
            }

            v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v63, &v167, v173, 16, v66);
          }

          while (v67);
        }

        ++v47;
      }
    }

    else
    {
      while (1)
      {
        v75 = objc_msgSend_result(v160, v42, v43, v44, v45, v46);
        v80 = objc_msgSend_tokenRowsAtColumnIndex_(v75, v76, 0, v77, v78, v79);
        v86 = v47 < objc_msgSend_count(v80, v81, v82, v83, v84, v85);

        if (!v86)
        {
          break;
        }

        v91 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v87, v47, v88, v89, v90);
        objc_msgSend_addObject_(v33, v92, v91, v93, v94, v95);

        ++v47;
      }
    }

    v96 = v33;

    v102 = objc_msgSend_array(MEMORY[0x1E695DF70], v97, v98, v99, v100, v101);

    ++v34;
    v33 = v102;
  }

  objc_msgSend_addObjectsFromArray_(v155, v42, i, v44, v45, v46);
  v158 = objc_msgSend_array(MEMORY[0x1E695DF70], v103, v104, v105, v106, v107);
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  obj = v155;
  v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v108, &v163, v172, 16, v109);
  if (v115)
  {
    v157 = *v164;
    do
    {
      for (k = 0; k != v115; ++k)
      {
        if (*v164 != v157)
        {
          objc_enumerationMutation(obj);
        }

        v117 = *(*(&v163 + 1) + 8 * k);
        v118 = objc_msgSend_array(MEMORY[0x1E695DF70], v110, v111, v112, v113, v114);
        v124 = objc_msgSend_result(v160, v119, v120, v121, v122, v123);
        v130 = objc_msgSend_result(v160, v125, v126, v127, v128, v129);
        v136 = objc_msgSend_tokenColumnCount(v130, v131, v132, v133, v134, v135);
        v161[0] = MEMORY[0x1E69E9820];
        v161[1] = 3221225472;
        v161[2] = sub_1836815F4;
        v161[3] = &unk_1E6DDBDA0;
        v137 = v118;
        v162 = v137;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v124, v138, v117, 0, v136, v161);

        objc_msgSend_addObject_(v158, v139, v137, v140, v141, v142);
      }

      v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v163, v172, 16, v114);
    }

    while (v115);
  }

  v143 = [CHTokenizedMathResult alloc];
  v148 = objc_msgSend_initWithBestPathTokens_(v143, v144, v158, v145, v146, v147);
  objc_msgSend_setResult_(v160, v149, v148, v150, v151, v152);

  return v160;
}

@end