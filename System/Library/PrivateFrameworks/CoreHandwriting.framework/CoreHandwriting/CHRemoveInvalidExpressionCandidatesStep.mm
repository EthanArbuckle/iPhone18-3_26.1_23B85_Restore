@interface CHRemoveInvalidExpressionCandidatesStep
- (BOOL)isTranscriptionValidExpression:(id)expression transcriptionPath:(id)path limitToCurrentLocale:(BOOL)locale;
- (CHRemoveInvalidExpressionCandidatesStep)initWithCodemap:(id)codemap;
- (id)process:(id)process options:(id)options;
@end

@implementation CHRemoveInvalidExpressionCandidatesStep

- (CHRemoveInvalidExpressionCandidatesStep)initWithCodemap:(id)codemap
{
  codemapCopy = codemap;
  v14.receiver = self;
  v14.super_class = CHRemoveInvalidExpressionCandidatesStep;
  v9 = [(CHRemoveInvalidExpressionCandidatesStep *)&v14 init];
  if (v9)
  {
    objc_msgSend_createLatexHelperFromMathCodemap_(CHMathPostProcessingManager, v5, codemapCopy, v6, v7, v8);
    ptr = v9->_latexSyntaxHelper.__ptr_;
    v9->_latexSyntaxHelper.__ptr_ = v13;
    if (ptr)
    {
      v11 = sub_183689978(ptr);
      MEMORY[0x1865E5EC0](v11, 0x10A0C409F3568C5);
    }
  }

  return v9;
}

- (id)process:(id)process options:(id)options
{
  v167 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC58;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "CHRemoveInvalidExpressionCandidatesStep is running", buf, 2u);
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v8, qword_1EA84BB58, v9, v10, v11);
  v153 = processCopy;
  if (v16)
  {
    v17 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v12, qword_1EA84BB58, v13, v14, v15);
    v23 = objc_msgSend_BOOLValue(v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v23 = 1;
  }

  v24 = MEMORY[0x1E695DF70];
  v30 = objc_msgSend_result(processCopy, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_transcriptionPaths(v30, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_count(v36, v37, v38, v39, v40, v41);
  v150 = objc_msgSend_arrayWithCapacity_(v24, v43, v42, v44, v45, v46);

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v52 = objc_msgSend_result(processCopy, v47, v48, v49, v50, v51);
  v58 = objc_msgSend_transcriptionPaths(v52, v53, v54, v55, v56, v57);

  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v160, v166, 16, v60);
  if (v66)
  {
    v67 = *v161;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v161 != v67)
        {
          objc_enumerationMutation(v58);
        }

        v69 = *(*(&v160 + 1) + 8 * i);
        v70 = objc_msgSend_result(processCopy, v61, v62, v63, v64, v65, optionsCopy);
        isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale = objc_msgSend_isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_(self, v71, v70, v69, v23, v72);

        if (isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale)
        {
          objc_msgSend_addObject_(v150, v61, v69, v63, v64, v65);
        }
      }

      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v160, v166, 16, v65);
    }

    while (v66);
  }

  if (!objc_msgSend_count(v150, v74, v75, v76, v77, v78))
  {
    v84 = objc_msgSend_result(processCopy, v79, v80, v81, v82, v83);
    v90 = objc_msgSend_transcriptionPaths(v84, v85, v86, v87, v88, v89);
    v96 = objc_msgSend_firstObject(v90, v91, v92, v93, v94, v95);
    objc_msgSend_addObject_(v150, v97, v96, v98, v99, v100);
  }

  v152 = objc_msgSend_array(MEMORY[0x1E695DF70], v79, v80, v81, v82, v83, optionsCopy);
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = v150;
  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v156, v165, 16, v102);
  if (v108)
  {
    v109 = *v157;
    do
    {
      for (j = 0; j != v108; ++j)
      {
        if (*v157 != v109)
        {
          objc_enumerationMutation(obj);
        }

        v111 = *(*(&v156 + 1) + 8 * j);
        v112 = objc_msgSend_array(MEMORY[0x1E695DF70], v103, v104, v105, v106, v107);
        v118 = objc_msgSend_result(v153, v113, v114, v115, v116, v117);
        v124 = objc_msgSend_result(v153, v119, v120, v121, v122, v123);
        v130 = objc_msgSend_tokenColumnCount(v124, v125, v126, v127, v128, v129);
        v154[0] = MEMORY[0x1E69E9820];
        v154[1] = 3221225472;
        v154[2] = sub_183681CE4;
        v154[3] = &unk_1E6DDBDA0;
        v131 = v112;
        v155 = v131;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v118, v132, v111, 0, v130, v154);

        processCopy = v153;
        objc_msgSend_addObject_(v152, v133, v131, v134, v135, v136);
      }

      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v103, &v156, v165, 16, v107);
    }

    while (v108);
  }

  v137 = [CHTokenizedMathResult alloc];
  v142 = objc_msgSend_initWithBestPathTokens_(v137, v138, v152, v139, v140, v141);
  objc_msgSend_setResult_(processCopy, v143, v142, v144, v145, v146);

  return processCopy;
}

- (BOOL)isTranscriptionValidExpression:(id)expression transcriptionPath:(id)path limitToCurrentLocale:(BOOL)locale
{
  localeCopy = locale;
  expressionCopy = expression;
  pathCopy = path;
  v15 = objc_msgSend_tokenColumnCount(expressionCopy, v10, v11, v12, v13, v14);
  v18 = objc_msgSend_transcriptionWithPath_columnRange_(expressionCopy, v16, pathCopy, 0, v15, v17);
  ptr = self->_latexSyntaxHelper.__ptr_;
  v20 = v18;
  v26 = objc_msgSend_UTF8String(v20, v21, v22, v23, v24, v25);
  v27 = strlen(v26);
  if (v27 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    operator new();
  }

  v35 = v27;
  if (v27)
  {
    memmove(&__p, v26, v27);
  }

  *(&__p + v28) = 0;
  sub_183879A1C(ptr, &__p, &v36);
  if ((v35 & 0x80000000) == 0)
  {
    if (v38 == 1)
    {
      goto LABEL_11;
    }

LABEL_19:
    isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables = 0;
    goto LABEL_20;
  }

  operator delete(__p);
  if (v38 != 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v30 = v37;
  if (!v37)
  {
    goto LABEL_19;
  }

  v31 = &v37;
  do
  {
    if (v30[8] >= 2)
    {
      v31 = v30;
    }

    v30 = *&v30[2 * (v30[8] < 2)];
  }

  while (v30);
  if (v31 == &v37 || v31[8] > 2)
  {
    goto LABEL_19;
  }

  isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables = objc_msgSend_isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables_(CHTokenizedMathResult, v29, expressionCopy, pathCopy, localeCopy, 0);
LABEL_20:
  sub_18368A374(&v36, v37);

  return isTranscriptionValidExpression_transcriptionPath_limitToCurrentLocale_requireDeclaredVariables;
}

@end