@interface CHTransliterateExponentsStep
- (CHTransliterateExponentsStep)init;
- (id)process:(id)process options:(id)options;
@end

@implementation CHTransliterateExponentsStep

- (CHTransliterateExponentsStep)init
{
  v5.receiver = self;
  v5.super_class = CHTransliterateExponentsStep;
  result = [(CHTransliterateExponentsStep *)&v5 init];
  if (result)
  {
    exponentTransliterations = result->_exponentTransliterations;
    result->_exponentTransliterations = &unk_1EF1EB888;
    v4 = result;

    return v4;
  }

  return result;
}

- (id)process:(id)process options:(id)options
{
  v164 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  v14 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v6, qword_1EA84BB60, v7, v8, v9);
  if (!v14 || (objc_msgSend_objectForKeyedSubscript_(optionsCopy, v10, qword_1EA84BB60, v11, v12, v13), v15 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_BOOLValue(v15, v16, v17, v18, v19, v20), v15, v14, (v21 & 1) == 0))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v22 = qword_1EA84DC58;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_DEBUG, "CHTransliterateExponentsStep is running", buf, 2u);
    }

    v136 = objc_msgSend_array(MEMORY[0x1E695DF70], v23, v24, v25, v26, v27);
    for (i = 0; ; ++i)
    {
      v34 = objc_msgSend_result(processCopy, v28, v29, v30, v31, v32);
      v40 = objc_msgSend_transcriptionPaths(v34, v35, v36, v37, v38, v39);
      v46 = i < objc_msgSend_count(v40, v41, v42, v43, v44, v45);

      if (!v46)
      {
        v124 = [CHTokenizedMathResult alloc];
        v129 = objc_msgSend_initWithBestPathTokens_(v124, v125, v136, v126, v127, v128);
        objc_msgSend_setResult_(processCopy, v130, v129, v131, v132, v133);

        goto LABEL_58;
      }

      v52 = objc_msgSend_result(processCopy, v47, v48, v49, v50, v51);
      v58 = objc_msgSend_transcriptionPaths(v52, v53, v54, v55, v56, v57);
      v63 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, i, v60, v61, v62);

      v69 = objc_msgSend_array(MEMORY[0x1E695DF70], v64, v65, v66, v67, v68);
      *buf = 0;
      v156 = buf;
      v157 = 0x6012000000;
      v158 = sub_18367BB7C;
      v159 = sub_18367BBB8;
      v160 = &unk_183A5AC72;
      memset(v161, 0, sizeof(v161));
      v151[0] = 0;
      v151[1] = v151;
      v151[2] = 0x6012000000;
      v151[3] = sub_18367BD34;
      v151[4] = sub_18367BD70;
      v151[5] = &unk_183A5AC72;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v149[0] = 0;
      v149[1] = v149;
      v149[2] = 0x6012000000;
      v149[3] = sub_18367BF04;
      v149[4] = sub_18367BF40;
      v149[5] = &unk_183A5AC72;
      memset(v150, 0, sizeof(v150));
      v145[0] = 0;
      v145[1] = v145;
      v145[2] = 0x6012000000;
      v145[3] = sub_1836778A4;
      v145[4] = sub_1836778E0;
      v145[5] = &unk_183A5AC72;
      __p = 0u;
      v147 = 0u;
      v148 = 0u;
      v75 = objc_msgSend_result(processCopy, v70, v71, v72, v73, v74);
      v81 = objc_msgSend_result(processCopy, v76, v77, v78, v79, v80);
      v87 = objc_msgSend_tokenColumnCount(v81, v82, v83, v84, v85, v86);
      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = sub_18367BF48;
      v138[3] = &unk_1E6DDBEB0;
      v141 = buf;
      v142 = v151;
      v143 = v149;
      v144 = v145;
      v88 = v69;
      v139 = v88;
      selfCopy = self;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v75, v89, v63, 0, v87, v138);

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v90 = qword_1EA84DC58;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        v91 = *(v156 + 11);
        *v162 = 134217984;
        v163 = v91;
        _os_log_impl(&dword_18366B000, v90, OS_LOG_TYPE_DEBUG, "CHTransliterateExponentsStep warning: %lu open exponents after enumerating all the tokens in the path ", v162, 0xCu);
      }

      while (1)
      {
        v96 = v156;
        v97 = *(v156 + 11);
        if (!v97)
        {
          break;
        }

        v98 = v156 + 80;
        v99 = *(*(*(v156 + 7) + (((v97 + *(v156 + 10) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v97 + *(v156 + 10) - 1) & 0x1FF));
        v100 = *(v96 + 11) + *(v96 + 10) - 1;

        v105 = *(v96 + 8);
        v106 = ((v105 - *(v96 + 7)) << 6) - 1;
        v107 = *(v96 + 11);
        if (v105 == *(v96 + 7))
        {
          v106 = 0;
        }

        *(v96 + 11) = v107 - 1;
        if ((v106 - (v107 + *v98) + 1) >= 0x400)
        {
          operator delete(*(v105 - 8));
          *(v96 + 8) -= 8;
        }

        v108 = *(v156 + 11);
        v109 = v88;
        if (v108)
        {
          v109 = *(*(*(v156 + 7) + (((v108 + *(v156 + 10) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v108 + *(v156 + 10) - 1) & 0x1FF));
        }

        objc_msgSend_addObjectsFromArray_(v109, v101, v99, v102, v103, v104);
      }

      objc_msgSend_addObject_(v136, v92, v88, v93, v94, v95);

      _Block_object_dispose(v145, 8);
      v110 = *(&__p + 1);
      v111 = v147;
      *(&v148 + 1) = 0;
      v112 = (v147 - *(&__p + 1)) >> 3;
      if (v112 >= 3)
      {
        do
        {
          operator delete(*v110);
          v111 = v147;
          v110 = (*(&__p + 1) + 8);
          *(&__p + 1) = v110;
          v112 = (v147 - v110) >> 3;
        }

        while (v112 > 2);
      }

      if (v112 == 1)
      {
        break;
      }

      if (v112 == 2)
      {
        v113 = 512;
LABEL_28:
        *&v148 = v113;
      }

      if (v110 != v111)
      {
        do
        {
          v114 = *v110++;
          operator delete(v114);
        }

        while (v110 != v111);
        if (v147 != *(&__p + 1))
        {
          *&v147 = v147 + ((*(&__p + 1) - v147 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      if (__p)
      {
        operator delete(__p);
      }

      _Block_object_dispose(v149, 8);
      sub_18367BBC0(v150);
      _Block_object_dispose(v151, 8);
      v115 = *(&v152 + 1);
      v116 = v153;
      if (v153 == *(&v152 + 1))
      {
        v116 = *(&v152 + 1);
        *(&v154 + 1) = 0;
        v121 = 0;
      }

      else
      {
        v117 = (*(&v152 + 1) + 8 * (v154 >> 9));
        v118 = (*v117 + 8 * (v154 & 0x1FF));
        v119 = *(*(&v152 + 1) + (((*(&v154 + 1) + v154) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v154 + 1) + v154) & 0x1FF);
        if (v118 != v119)
        {
          do
          {

            if ((v118 - *v117) == 4096)
            {
              v120 = v117[1];
              ++v117;
              v118 = v120;
            }
          }

          while (v118 != v119);
          v115 = *(&v152 + 1);
          v116 = v153;
        }

        *(&v154 + 1) = 0;
        v121 = v116 - v115;
        if (v121 >= 3)
        {
          do
          {
            operator delete(*v115);
            v116 = v153;
            v115 = (*(&v152 + 1) + 8);
            *(&v152 + 1) = v115;
            v121 = (v153 - v115) >> 3;
          }

          while (v121 > 2);
        }
      }

      if (v121 == 1)
      {
        v122 = 256;
        goto LABEL_49;
      }

      if (v121 == 2)
      {
        v122 = 512;
LABEL_49:
        *&v154 = v122;
      }

      if (v115 != v116)
      {
        do
        {
          v123 = *v115++;
          operator delete(v123);
        }

        while (v115 != v116);
        if (v153 != *(&v152 + 1))
        {
          *&v153 = v153 + ((*(&v152 + 1) - v153 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      if (v152)
      {
        operator delete(v152);
      }

      _Block_object_dispose(buf, 8);
      sub_18367BBC0(v161);
    }

    v113 = 256;
    goto LABEL_28;
  }

LABEL_58:

  return processCopy;
}

@end