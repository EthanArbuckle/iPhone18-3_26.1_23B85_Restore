@interface CHBracketsMatchingStep
- (CHBracketsMatchingStep)initWithCodemap:(id)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHBracketsMatchingStep

- (CHBracketsMatchingStep)initWithCodemap:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CHBracketsMatchingStep;
  v9 = [(CHBracketsMatchingStep *)&v26 init];
  if (v9)
  {
    objc_msgSend_createLatexHelperFromMathCodemap_(CHMathPostProcessingManager, v5, v4, v6, v7, v8);
    ptr = v9->latexHelper.__ptr_;
    v9->latexHelper.__ptr_ = v25;
    if (ptr)
    {
      v15 = sub_183689978(ptr);
      MEMORY[0x1865E5EC0](v15, 0x10A0C409F3568C5);
    }

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_msgSend_componentsSeparatedByString_(@"() \\lfloor \\rfloor \\lceil \\rceil |", v10, @" ", v11, v12, v13);
    v22 = objc_msgSend_setWithArray_(v16, v18, v17, v19, v20, v21);
    bracketSymbols = v9->_bracketSymbols;
    v9->_bracketSymbols = v22;
  }

  return v9;
}

- (id)process:(id)a3 options:(id)a4
{
  v182 = *MEMORY[0x1E69E9840];
  v146 = a3;
  v141 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHBracketsMatchingStep is running", buf, 2u);
  }

  v144 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v17 = 0;
  v143 = v160;
  v142 = v152;
  while (1)
  {
    v18 = objc_msgSend_result(v146, v12, v13, v14, v15, v16, v141, v142, v143);
    v24 = objc_msgSend_transcriptionPaths(v18, v19, v20, v21, v22, v23);
    v30 = v17 < objc_msgSend_count(v24, v25, v26, v27, v28, v29);

    if (!v30)
    {
      break;
    }

    v36 = objc_msgSend_result(v146, v31, v32, v33, v34, v35);
    v42 = objc_msgSend_transcriptionPaths(v36, v37, v38, v39, v40, v41);
    v145 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, v17, v44, v45, v46);

    v52 = objc_msgSend_array(MEMORY[0x1E695DF70], v47, v48, v49, v50, v51);
    *buf = 0;
    v173 = buf;
    v174 = 0x6012000000;
    v175 = sub_1836778A4;
    v176 = sub_1836778E0;
    v177 = &unk_183A5AC72;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v168[0] = 0;
    v168[1] = v168;
    v168[2] = 0x6012000000;
    v168[3] = sub_1836778A4;
    v168[4] = sub_1836778E0;
    v168[5] = &unk_183A5AC72;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v164[0] = 0;
    v164[1] = v164;
    v164[2] = 0x6012000000;
    v164[3] = sub_1836778A4;
    v164[4] = sub_1836778E0;
    v164[5] = &unk_183A5AC72;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v159[0] = 0;
    v159[1] = v159;
    v159[2] = 0x6012000000;
    v159[3] = sub_1836778A4;
    v160[0] = sub_1836778E0;
    v160[1] = &unk_183A5AC72;
    __p = 0u;
    v162 = 0u;
    v163 = 0u;
    v58 = objc_msgSend_result(v146, v53, v54, v55, v56, v57);
    v64 = objc_msgSend_result(v146, v59, v60, v61, v62, v63);
    v70 = objc_msgSend_tokenColumnCount(v64, v65, v66, v67, v68, v69);
    v151[0] = MEMORY[0x1E69E9820];
    v151[1] = 3221225472;
    v152[0] = sub_1836778E8;
    v152[1] = &unk_1E6DDBEB0;
    v71 = v52;
    v155 = v168;
    v156 = v164;
    v157 = v159;
    v158 = buf;
    v153 = v71;
    v154 = self;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v58, v72, v145, 0, v70, v151);

    objc_msgSend_addObject_(v144, v73, v71, v74, v75, v76);
    _Block_object_dispose(v159, 8);
    v77 = *(&__p + 1);
    v78 = v162;
    *(&v163 + 1) = 0;
    v79 = (v162 - *(&__p + 1)) >> 3;
    if (v79 >= 3)
    {
      do
      {
        operator delete(*v77);
        v78 = v162;
        v77 = (*(&__p + 1) + 8);
        *(&__p + 1) = v77;
        v79 = (v162 - v77) >> 3;
      }

      while (v79 > 2);
    }

    if (v79 == 1)
    {
      v80 = 256;
      goto LABEL_13;
    }

    if (v79 == 2)
    {
      v80 = 512;
LABEL_13:
      *&v163 = v80;
    }

    if (v77 != v78)
    {
      do
      {
        v81 = *v77++;
        operator delete(v81);
      }

      while (v77 != v78);
      if (v162 != *(&__p + 1))
      {
        *&v162 = v162 + ((*(&__p + 1) - v162 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }

    _Block_object_dispose(v164, 8);
    v82 = *(&v165 + 1);
    v83 = v166;
    *(&v167 + 1) = 0;
    v84 = (v166 - *(&v165 + 1)) >> 3;
    if (v84 >= 3)
    {
      do
      {
        operator delete(*v82);
        v83 = v166;
        v82 = (*(&v165 + 1) + 8);
        *(&v165 + 1) = v82;
        v84 = (v166 - v82) >> 3;
      }

      while (v84 > 2);
    }

    if (v84 == 1)
    {
      v85 = 256;
      goto LABEL_26;
    }

    if (v84 == 2)
    {
      v85 = 512;
LABEL_26:
      *&v167 = v85;
    }

    if (v82 != v83)
    {
      do
      {
        v86 = *v82++;
        operator delete(v86);
      }

      while (v82 != v83);
      if (v166 != *(&v165 + 1))
      {
        *&v166 = v166 + ((*(&v165 + 1) - v166 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (v165)
    {
      operator delete(v165);
    }

    _Block_object_dispose(v168, 8);
    v87 = *(&v169 + 1);
    v88 = v170;
    *(&v171 + 1) = 0;
    v89 = (v170 - *(&v169 + 1)) >> 3;
    if (v89 >= 3)
    {
      do
      {
        operator delete(*v87);
        v88 = v170;
        v87 = (*(&v169 + 1) + 8);
        *(&v169 + 1) = v87;
        v89 = (v170 - v87) >> 3;
      }

      while (v89 > 2);
    }

    if (v89 == 1)
    {
      v90 = 256;
      goto LABEL_39;
    }

    if (v89 == 2)
    {
      v90 = 512;
LABEL_39:
      *&v171 = v90;
    }

    if (v87 != v88)
    {
      do
      {
        v91 = *v87++;
        operator delete(v91);
      }

      while (v87 != v88);
      if (v170 != *(&v169 + 1))
      {
        *&v170 = v170 + ((*(&v169 + 1) - v170 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (v169)
    {
      operator delete(v169);
    }

    _Block_object_dispose(buf, 8);
    v92 = *(&v178 + 1);
    v93 = v179;
    *(&v180 + 1) = 0;
    v94 = (v179 - *(&v178 + 1)) >> 3;
    if (v94 >= 3)
    {
      do
      {
        operator delete(*v92);
        v93 = v179;
        v92 = (*(&v178 + 1) + 8);
        *(&v178 + 1) = v92;
        v94 = (v179 - v92) >> 3;
      }

      while (v94 > 2);
    }

    if (v94 == 1)
    {
      v95 = 256;
      goto LABEL_52;
    }

    if (v94 == 2)
    {
      v95 = 512;
LABEL_52:
      *&v180 = v95;
    }

    if (v92 != v93)
    {
      do
      {
        v96 = *v92++;
        operator delete(v96);
      }

      while (v92 != v93);
      if (v179 != *(&v178 + 1))
      {
        *&v179 = v179 + ((*(&v178 + 1) - v179 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (v178)
    {
      operator delete(v178);
    }

    ++v17;
  }

  v97 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32, v33, v34, v35);
  v108 = objc_msgSend_count(v144, v98, v99, v100, v101, v102) - 1;
  if (v108 >= 0)
  {
    do
    {
      if (v108 || objc_msgSend_count(v97, v103, v104, v105, v106, v107))
      {
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v109 = objc_msgSend_objectAtIndexedSubscript_(v144, v103, v108, v105, v106, v107);
        v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v147, v181, 16, v111);
        if (v117)
        {
          v118 = *v148;
LABEL_65:
          v119 = 0;
          while (1)
          {
            if (*v148 != v118)
            {
              objc_enumerationMutation(v109);
            }

            bracketSymbols = self->_bracketSymbols;
            v121 = objc_msgSend_string(*(*(&v147 + 1) + 8 * v119), v112, v113, v114, v115, v116);
            LOBYTE(bracketSymbols) = objc_msgSend_containsObject_(bracketSymbols, v122, v121, v123, v124, v125);

            if (bracketSymbols)
            {
              goto LABEL_73;
            }

            if (v117 == ++v119)
            {
              v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v112, &v147, v181, 16, v116);
              if (v117)
              {
                goto LABEL_65;
              }

              break;
            }
          }
        }
      }

      v109 = objc_msgSend_objectAtIndexedSubscript_(v144, v103, v108, v105, v106, v107);
      objc_msgSend_insertObject_atIndex_(v97, v126, v109, 0, v127, v128);
LABEL_73:
    }

    while (v108-- > 0);
  }

  v130 = [CHTokenizedMathResult alloc];
  v135 = objc_msgSend_initWithBestPathTokens_(v130, v131, v97, v132, v133, v134);
  objc_msgSend_setResult_(v146, v136, v135, v137, v138, v139);

  return v146;
}

@end