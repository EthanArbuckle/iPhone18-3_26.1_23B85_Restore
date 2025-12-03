@interface CHPrimeTransliterationStep
- (id)process:(id)process options:(id)options;
- (void)transliteratePrimeExponent:(id)exponent startIndex:(int64_t)index endIndex:(int64_t)endIndex preservedPrimeIndexes:(void *)indexes;
@end

@implementation CHPrimeTransliterationStep

- (void)transliteratePrimeExponent:(id)exponent startIndex:(int64_t)index endIndex:(int64_t)endIndex preservedPrimeIndexes:(void *)indexes
{
  exponentCopy = exponent;
  v14 = exponentCopy;
  v95 = 0;
  v96 = 0;
  v94 = &v95;
  if (index > endIndex)
  {
    goto LABEL_64;
  }

  v15 = 0;
  objc_msgSend_objectAtIndexedSubscript_(exponentCopy, v10, index, v11, v12, v13, exponentCopy);
  while (1)
    v22 = {;
    v28 = objc_msgSend_string(v22, v23, v24, v25, v26, v27);
    isEqualToString = objc_msgSend_isEqualToString_(v28, v29, @"\\prime", v30, v31, v32);

    if (isEqualToString)
    {
      v39 = v95;
      if (!v95)
      {
LABEL_14:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v40 = v39;
          v41 = v39[4];
          if (index >= v41)
          {
            break;
          }

          v39 = *v40;
          if (!*v40)
          {
            goto LABEL_14;
          }
        }

        if (v41 >= index)
        {
          break;
        }

        v39 = v40[1];
        if (!v39)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v42 = objc_msgSend_string(v22, v34, v35, v36, v37, v38);
      if ((objc_msgSend_isEqualToString_(v42, v43, @"^", v44, v45, v46) & 1) == 0)
      {
        v52 = objc_msgSend_string(v22, v47, v48, v49, v50, v51);
        if ((objc_msgSend_isEqualToString_(v52, v53, @"{", v54, v55, v56) & 1) == 0)
        {
          v62 = objc_msgSend_string(v22, v57, v58, v59, v60, v61);
          v16 = objc_msgSend_isEqualToString_(v62, v63, @"}", v64, v65, v66) ^ 1;

          v15 |= v16;
          v14 = v93;
        }
      }
    }

    v21 = index++ == endIndex;
    if (v21)
    {
      break;
    }

    objc_msgSend_objectAtIndexedSubscript_(v14, v17, index, v18, v19, v20, v93);
  }

  v67 = v15;
  v68 = v94;
  v69 = indexes + 8;
  v70 = *indexes;
  v71 = v94 == &v95;
  if (v94 == &v95 || v70 == v69)
  {
LABEL_36:
    if (v71)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v72 = v94;
    while (1)
    {
      v73 = v72[4];
      v74 = *(v70 + 4);
      if (v73 < v74)
      {
        break;
      }

      if (v74 >= v73)
      {
        v76 = v72[1];
        if (v76)
        {
          do
          {
            v75 = v76;
            v76 = *v76;
          }

          while (v76);
        }

        else
        {
          do
          {
            v75 = v72[2];
            v21 = *v75 == v72;
            v72 = v75;
          }

          while (!v21);
        }
      }

      else
      {
        v75 = v72;
      }

      v77 = *(v70 + 1);
      if (v77)
      {
        do
        {
          v78 = v77;
          v77 = *v77;
        }

        while (v77);
      }

      else
      {
        do
        {
          v78 = *(v70 + 2);
          v21 = *v78 == v70;
          v70 = v78;
        }

        while (!v21);
      }

      v71 = v75 == &v95;
      if (v75 != &v95)
      {
        v70 = v78;
        v72 = v75;
        if (v78 != v69)
        {
          continue;
        }
      }

      goto LABEL_36;
    }
  }

  if (((v96 - 3) < 0xFFFFFFFFFFFFFFFELL) | v67 & 1)
  {
    if (v94 != &v95)
    {
      do
      {
        v79 = v68[4];
        v80 = objc_msgSend_objectAtIndexedSubscript_(v14, v69, v79, v18, v19, v20);
        v83 = objc_msgSend_updatedToken_withString_withTokenProperty_(CHTokenizedMathResultToken, v81, v80, @"1", 2, v82);
        objc_msgSend_setObject_atIndexedSubscript_(v14, v84, v83, v79, v85, v86);

        v87 = v68[1];
        if (v87)
        {
          do
          {
            v88 = v87;
            v87 = *v87;
          }

          while (v87);
        }

        else
        {
          do
          {
            v88 = v68[2];
            v21 = *v88 == v68;
            v68 = v88;
          }

          while (!v21);
        }

        v68 = v88;
      }

      while (v88 != &v95);
    }

    goto LABEL_64;
  }

LABEL_47:
  if (v94 != &v95)
  {
    do
    {
      v89 = *sub_18368D5C4(indexes, v69, &v98, &v97, v68 + 4);
      if (!v89)
      {
        operator new();
      }

      v90 = *(v89 + 1);
      if (v90)
      {
        do
        {
          v69 = v90;
          v90 = *v90;
        }

        while (v90);
      }

      else
      {
        do
        {
          v69 = *(v89 + 2);
          v21 = *v69 == v89;
          v89 = v69;
        }

        while (!v21);
      }

      v91 = v68[1];
      if (v91)
      {
        do
        {
          v92 = v91;
          v91 = *v91;
        }

        while (v91);
      }

      else
      {
        do
        {
          v92 = v68[2];
          v21 = *v92 == v68;
          v68 = v92;
        }

        while (!v21);
      }

      v68 = v92;
    }

    while (v92 != &v95);
  }

LABEL_64:
  sub_18368D56C(&v94, v95);
}

- (id)process:(id)process options:(id)options
{
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC58;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHPrimeTransliterationStep is running", buf, 2u);
  }

  v6 = 0x1E695D000uLL;
  v139 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v17 = 0;
  v155[0] = 0;
  v155[1] = 0;
  v154 = v155;
  while (1)
  {
    v18 = objc_msgSend_result(processCopy, v12, v13, v14, v15, v16, optionsCopy);
    v24 = objc_msgSend_transcriptionPaths(v18, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_count(v24, v25, v26, v27, v28, v29);

    if (v17 >= v30)
    {
      break;
    }

    v36 = objc_msgSend_result(processCopy, v31, v32, v33, v34, v35);
    v42 = objc_msgSend_transcriptionPaths(v36, v37, v38, v39, v40, v41);
    v142 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, v17, v44, v45, v46);

    v141 = objc_msgSend_array(*(v6 + 3952), v47, v48, v49, v50, v51);
    v150 = 0;
    v151 = &v150;
    v152 = 0x2020000000;
    v153 = 0;
    v57 = objc_msgSend_result(processCopy, v52, v53, v54, v55, v56);
    v63 = objc_msgSend_result(processCopy, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_tokenColumnCount(v63, v64, v65, v66, v67, v68);
    v147[0] = MEMORY[0x1E69E9820];
    v147[1] = 3221225472;
    v147[2] = sub_183685EF0;
    v147[3] = &unk_1E6DDBF78;
    v70 = v141;
    v148 = v70;
    v149 = &v150;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v57, v71, v142, 0, v69, v147);

    if (*(v151 + 24) == 1)
    {
      v138 = v17;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v145 = 0u;
      v146 = 0u;
      *buf = 0u;
      while (v82 < objc_msgSend_count(v70, v72, v73, v74, v75, v76))
      {
        v83 = objc_msgSend_objectAtIndexedSubscript_(v70, v72, v82, v74, v75, v76);
        v89 = objc_msgSend_string(v83, v84, v85, v86, v87, v88);
        isEqualToString = objc_msgSend_isEqualToString_(v89, v90, @"^", v91, v92, v93);

        if (isEqualToString)
        {
          if (v80 == v79)
          {
            v100 = 0;
          }

          else
          {
            v100 = ((v80 - v79) << 6) - 1;
          }

          v101 = v77 + v78;
          if (v100 == v77 + v78)
          {
            sub_183689B9C(buf);
            v79 = *&buf[8];
            v80 = v145;
            v77 = *(&v146 + 1);
            v78 = v146;
            v101 = *(&v146 + 1) + v146;
          }

          (*(v79 + ((v101 >> 6) & 0x3FFFFFFFFFFFFF8)))[v101 & 0x1FF] = v82;
          *(&v146 + 1) = ++v77;
          v81 = v77;
        }

        else
        {
          v102 = objc_msgSend_string(v83, v95, v96, v97, v98, v99);
          v107 = objc_msgSend_isEqualToString_(v102, v103, @"{", v104, v105, v106);

          if ((v107 & 1) == 0)
          {
            v113 = objc_msgSend_string(v83, v108, v109, v110, v111, v112);
            v118 = objc_msgSend_isEqualToString_(v113, v114, @"}", v115, v116, v117);

            if (v118)
            {
              if (v81)
              {
                v120 = ((v80 - v79) << 6) - 1;
                v77 = v81 - 1;
                v121 = (*(v79 + (((v78 + v81 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v78 + v81 - 1) & 0x1FF];
                if (v80 == v79)
                {
                  v120 = 0;
                }

                *(&v146 + 1) = v81 - 1;
                if ((v120 - (v81 + v78) + 1) >= 0x400)
                {
                  v122 = *--v80;
                  operator delete(v122);
                  *&v145 = v80;
                }

                objc_msgSend_transliteratePrimeExponent_startIndex_endIndex_preservedPrimeIndexes_(self, v119, v70, v121, v82, &v154);
                --v81;
              }
            }
          }
        }

        ++v82;
      }

      v123 = v80 - v79;
      if ((v80 - v79) >= 0x11)
      {
        do
        {
          v124 = *v79++;
          operator delete(v124);
          v123 -= 8;
        }

        while (v123 > 0x10);
      }

      while (v79 != v80)
      {
        v125 = *v79++;
        operator delete(v125);
      }

      if (*buf)
      {
        operator delete(*buf);
      }

      v6 = 0x1E695D000;
      v17 = v138;
    }

    objc_msgSend_addObject_(v139, v72, v70, v74, v75, v76);

    _Block_object_dispose(&v150, 8);
    ++v17;
  }

  v126 = [CHTokenizedMathResult alloc];
  v131 = objc_msgSend_initWithBestPathTokens_(v126, v127, v139, v128, v129, v130);
  objc_msgSend_setResult_(processCopy, v132, v131, v133, v134, v135);

  sub_18368D56C(&v154, v155[0]);

  return processCopy;
}

@end