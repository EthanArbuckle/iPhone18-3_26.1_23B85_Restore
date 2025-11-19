@interface CHRemoveSubscriptFromVariableStep
- (BOOL)isAlphabetic:(id)a3;
- (id)_trimSubscriptTokens:(id)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHRemoveSubscriptFromVariableStep

- (id)_trimSubscriptTokens:(id)a3
{
  v3 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0;
  while (v10 < objc_msgSend_count(v3, v4, v5, v6, v7, v8))
  {
    if (v10 >= objc_msgSend_count(v3, v11, v12, v13, v14, v15) - 1)
    {
      goto LABEL_9;
    }

    v16 = objc_msgSend_objectAtIndexedSubscript_(v3, v4, v10, v6, v7, v8);
    v22 = objc_msgSend_string(v16, v17, v18, v19, v20, v21);
    if (objc_msgSend_isEqualToString_(v22, v23, @"_", v24, v25, v26))
    {
      v31 = objc_msgSend_objectAtIndexedSubscript_(v3, v27, v10 + 1, v28, v29, v30);
      v37 = objc_msgSend_string(v31, v32, v33, v34, v35, v36);
      isEqualToString = objc_msgSend_isEqualToString_(v37, v38, @"{", v39, v40, v41);

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_9;
      }

      v10 += 2;
    }

    else
    {

LABEL_9:
      v43 = objc_msgSend_objectAtIndex_(v3, v4, v10, v6, v7, v8);
      v49 = objc_msgSend_string(v43, v44, v45, v46, v47, v48);
      v54 = objc_msgSend_isEqualToString_(v49, v50, @"}", v51, v52, v53);

      if ((v54 & 1) == 0)
      {
        v55 = objc_msgSend_objectAtIndex_(v3, v4, v10, v6, v7, v8);
        objc_msgSend_addObject_(v9, v56, v55, v57, v58, v59);
      }

      ++v10;
    }
  }

  return v9;
}

- (BOOL)isAlphabetic:(id)a3
{
  v3 = a3;
  v9 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v4, v5, v6, v7, v8);
  v15 = objc_msgSend_invertedSet(v9, v10, v11, v12, v13, v14);

  LOBYTE(v9) = objc_msgSend_rangeOfCharacterFromSet_(v3, v16, v15, v17, v18, v19) == 0x7FFFFFFFFFFFFFFFLL;
  return v9;
}

- (id)process:(id)a3 options:(id)a4
{
  v5 = a3;
  v145 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveSubscriptFromVariableStep is running", buf, 2u);
  }

  v12 = objc_msgSend_result(v5, v7, v8, v9, v10, v11);
  v149 = v5;
  v18 = objc_msgSend_transcriptionPaths(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);

  if (v24)
  {
    v147 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v25, @"{}_", v26, v27, v28);
    v29 = 0x1E695D000uLL;
    v148 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31, v32, v33, v34);
    for (i = 0; ; ++i)
    {
      v41 = objc_msgSend_result(v5, v35, v36, v37, v38, v39);
      v47 = objc_msgSend_transcriptionPaths(v41, v42, v43, v44, v45, v46);
      v53 = objc_msgSend_count(v47, v48, v49, v50, v51, v52);

      if (i >= v53)
      {
        v134 = [CHTokenizedMathResult alloc];
        v139 = objc_msgSend_initWithBestPathTokens_(v134, v135, v148, v136, v137, v138);
        objc_msgSend_setResult_(v5, v140, v139, v141, v142, v143);

        goto LABEL_23;
      }

      v59 = objc_msgSend_result(v5, v54, v55, v56, v57, v58);
      v65 = objc_msgSend_transcriptionPaths(v59, v60, v61, v62, v63, v64);
      v70 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, i, v67, v68, v69);

      v76 = objc_msgSend_array(*(v29 + 3952), v71, v72, v73, v74, v75);
      v82 = objc_msgSend_result(v5, v77, v78, v79, v80, v81);
      v88 = objc_msgSend_result(v5, v83, v84, v85, v86, v87);
      v94 = objc_msgSend_tokenColumnCount(v88, v89, v90, v91, v92, v93);
      v181[0] = MEMORY[0x1E69E9820];
      v181[1] = 3221225472;
      v181[2] = sub_18367FF98;
      v181[3] = &unk_1E6DDBDA0;
      v95 = v76;
      v182 = v95;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v82, v96, v70, 0, v94, v181);

      v97 = v29;
      v103 = objc_msgSend_array(*(v29 + 3952), v98, v99, v100, v101, v102);
      *buf = 0;
      v175 = buf;
      v176 = 0x6012000000;
      v177 = sub_18367BB7C;
      v178 = sub_18367BBB8;
      v179 = &unk_183A5AC72;
      memset(v180, 0, sizeof(v180));
      v172[0] = 0;
      v172[1] = v172;
      v172[2] = 0x6012000000;
      v172[3] = sub_18367BB7C;
      v172[4] = sub_18367BBB8;
      v172[5] = &unk_183A5AC72;
      memset(v173, 0, sizeof(v173));
      v170[0] = 0;
      v170[1] = v170;
      v170[2] = 0x6012000000;
      v170[3] = sub_18367BF04;
      v170[4] = sub_18367BF40;
      v170[5] = &unk_183A5AC72;
      memset(v171, 0, sizeof(v171));
      v168[0] = 0;
      v168[1] = v168;
      v168[2] = 0x6012000000;
      v168[3] = sub_18367BF04;
      v168[4] = sub_18367BF40;
      v168[5] = &unk_183A5AC72;
      memset(v169, 0, sizeof(v169));
      v164[0] = 0;
      v164[1] = v164;
      v164[2] = 0x6012000000;
      v164[3] = sub_1836778A4;
      v164[4] = sub_1836778E0;
      v164[5] = &unk_183A5AC72;
      __p = 0u;
      v166 = 0u;
      v167 = 0u;
      v162[0] = 0;
      v162[1] = v162;
      v162[2] = 0x3032000000;
      v162[3] = sub_18367FFA4;
      v162[4] = sub_18367FFB4;
      v163 = 0;
      v109 = objc_msgSend_result(v5, v104, v105, v106, v107, v108);
      v115 = objc_msgSend_result(v5, v110, v111, v112, v113, v114);
      v121 = objc_msgSend_tokenColumnCount(v115, v116, v117, v118, v119, v120);
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 3221225472;
      v150[2] = sub_18367FFBC;
      v150[3] = &unk_1E6DDBF28;
      v156 = v162;
      v157 = v172;
      v122 = v95;
      v151 = v122;
      v152 = self;
      v158 = buf;
      v159 = v170;
      v160 = v168;
      v161 = v164;
      v153 = v147;
      v154 = v149;
      v123 = v103;
      v155 = v123;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v109, v124, v70, 0, v121, v150);

      objc_msgSend_addObject_(v148, v125, v123, v126, v127, v128);
      _Block_object_dispose(v162, 8);

      _Block_object_dispose(v164, 8);
      v129 = *(&__p + 1);
      v130 = v166;
      *(&v167 + 1) = 0;
      v131 = (v166 - *(&__p + 1)) >> 3;
      v29 = v97;
      if (v131 >= 3)
      {
        do
        {
          operator delete(*v129);
          v130 = v166;
          v129 = (*(&__p + 1) + 8);
          *(&__p + 1) = v129;
          v131 = (v166 - v129) >> 3;
        }

        while (v131 > 2);
      }

      if (v131 == 1)
      {
        break;
      }

      if (v131 == 2)
      {
        v132 = 512;
LABEL_15:
        *&v167 = v132;
      }

      if (v129 != v130)
      {
        do
        {
          v133 = *v129++;
          operator delete(v133);
        }

        while (v129 != v130);
        if (v166 != *(&__p + 1))
        {
          *&v166 = v166 + ((*(&__p + 1) - v166 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      if (__p)
      {
        operator delete(__p);
      }

      _Block_object_dispose(v168, 8);
      sub_18367BBC0(v169);
      _Block_object_dispose(v170, 8);
      sub_18367BBC0(v171);
      _Block_object_dispose(v172, 8);
      sub_18367BBC0(v173);
      _Block_object_dispose(buf, 8);
      sub_18367BBC0(v180);

      v5 = v149;
    }

    v132 = 256;
    goto LABEL_15;
  }

LABEL_23:

  return v5;
}

@end