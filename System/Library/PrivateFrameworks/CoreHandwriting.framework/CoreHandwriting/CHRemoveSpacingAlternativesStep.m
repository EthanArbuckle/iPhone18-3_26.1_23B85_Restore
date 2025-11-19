@interface CHRemoveSpacingAlternativesStep
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHRemoveSpacingAlternativesStep

- (id)process:(id)a3 options:(id)a4
{
  v5 = a3;
  v176 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveSpacingAlternativesStep is running", buf, 2u);
  }

  v12 = objc_msgSend_result(v5, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);

  if (v24)
  {
    v177 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
    v194 = 0;
    v195 = 0;
    v196 = 0;
    v35 = objc_msgSend_result(v5, v30, v31, v32, v33, v34);
    v41 = objc_msgSend_transcriptionPaths(v35, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_count(v41, v42, v43, v44, v45, v46);

    if (v47)
    {
      v53 = objc_msgSend_result(v5, v48, v49, v50, v51, v52);
      v59 = objc_msgSend_transcriptionPaths(v53, v54, v55, v56, v57, v58);
      v64 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, 0, v61, v62, v63);

      v70 = objc_msgSend_array(MEMORY[0x1E695DF70], v65, v66, v67, v68, v69);
      *buf = 0;
      v186 = buf;
      v187 = 0x4812000000;
      v188 = sub_18367AFD4;
      v189 = sub_18367AFF8;
      v190 = &unk_183A5AC72;
      v192 = 0;
      v193 = 0;
      __p = 0;
      v76 = objc_msgSend_result(v5, v71, v72, v73, v74, v75);
      v82 = objc_msgSend_result(v5, v77, v78, v79, v80, v81);
      v88 = objc_msgSend_tokenColumnCount(v82, v83, v84, v85, v86, v87);
      v178 = MEMORY[0x1E69E9820];
      v179 = MEMORY[0x1E69E9820];
      v180 = 3221225472;
      v181 = sub_18367B010;
      v182 = &unk_1E6DDBF78;
      v184 = buf;
      v89 = v70;
      v183 = v89;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v76, v90, v64, 0, v88, &v179);

      if (&v194 != (v186 + 48))
      {
        sub_18368A3D8(&v194, *(v186 + 6), *(v186 + 7), (*(v186 + 7) - *(v186 + 6)) >> 3);
      }

      objc_msgSend_addObject_(v177, v91, v89, v92, v93, v94);

      _Block_object_dispose(buf, 8);
      if (__p)
      {
        v192 = __p;
        operator delete(__p);
      }

      for (i = 1; ; ++i)
      {
        v101 = objc_msgSend_result(v5, v95, v96, v97, v98, v99);
        v107 = objc_msgSend_transcriptionPaths(v101, v102, v103, v104, v105, v106);
        v113 = objc_msgSend_count(v107, v108, v109, v110, v111, v112);

        if (i >= v113)
        {
          break;
        }

        v119 = objc_msgSend_result(v5, v114, v115, v116, v117, v118);
        v125 = objc_msgSend_transcriptionPaths(v119, v120, v121, v122, v123, v124);
        v130 = objc_msgSend_objectAtIndexedSubscript_(v125, v126, i, v127, v128, v129);

        v136 = objc_msgSend_array(MEMORY[0x1E695DF70], v131, v132, v133, v134, v135);
        *buf = 0;
        v186 = buf;
        v187 = 0x4812000000;
        v188 = sub_18367AFD4;
        v189 = sub_18367AFF8;
        v190 = &unk_183A5AC72;
        v192 = 0;
        v193 = 0;
        __p = 0;
        v142 = objc_msgSend_result(v5, v137, v138, v139, v140, v141);
        v148 = objc_msgSend_result(v5, v143, v144, v145, v146, v147);
        v154 = objc_msgSend_tokenColumnCount(v148, v149, v150, v151, v152, v153);
        v179 = v178;
        v180 = 3221225472;
        v181 = sub_18367B010;
        v182 = &unk_1E6DDBF78;
        v184 = buf;
        v155 = v136;
        v183 = v155;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v142, v156, v130, 0, v154, &v179);

        v157 = *(v186 + 6);
        v158 = *(v186 + 7) - v157;
        if (v158 == v195 - v194 && !memcmp(v157, v194, v158))
        {
          objc_msgSend_addObject_(v177, v159, v155, v160, v161, v162);
        }

        _Block_object_dispose(buf, 8);
        if (__p)
        {
          v192 = __p;
          operator delete(__p);
        }
      }
    }

    v163 = [CHTokenizedMathResult alloc];
    v168 = objc_msgSend_initWithBestPathTokens_(v163, v164, v177, v165, v166, v167);
    objc_msgSend_setResult_(v5, v169, v168, v170, v171, v172);

    v173 = v5;
    if (v194)
    {
      v195 = v194;
      operator delete(v194);
    }
  }

  else
  {
    v174 = v5;
  }

  return v5;
}

@end