@interface CHTransliterateUnmatchedConfusablesStep
- (BOOL)doesTransliterateAtIndexResolveUnmatchingCase:(id)case atIndex:(int64_t)index withString:(id)string unmatchingCase:(int)unmatchingCase shouldForceLocaleFormatNumber:(BOOL)number;
- (BOOL)updateUnmatchingSymbol:(id)symbol unmatchingType:(int)type mode:(id)mode shouldForceLocaleFormatNumber:(BOOL)number outUpdatedPathTokens:(id)tokens;
- (CHTransliterateUnmatchedConfusablesStep)initWithCodemap:(id)codemap;
- (id)process:(id)process options:(id)options;
@end

@implementation CHTransliterateUnmatchedConfusablesStep

- (CHTransliterateUnmatchedConfusablesStep)initWithCodemap:(id)codemap
{
  codemapCopy = codemap;
  v16.receiver = self;
  v16.super_class = CHTransliterateUnmatchedConfusablesStep;
  v9 = [(CHTransliterateUnmatchedConfusablesStep *)&v16 init];
  if (v9)
  {
    objc_msgSend_createLatexHelperFromMathCodemap_(CHMathPostProcessingManager, v5, codemapCopy, v6, v7, v8);
    ptr = v9->latexHelper.__ptr_;
    v9->latexHelper.__ptr_ = v15;
    if (ptr)
    {
      v11 = sub_183689978(ptr);
      MEMORY[0x1865E5EC0](v11, 0x10A0C409F3568C5);
    }

    mathOpeningConfusableMappings = v9->_mathOpeningConfusableMappings;
    v9->_mathOpeningConfusableMappings = &unk_1EF1EB8B0;

    mathClosingConfusableMappings = v9->_mathClosingConfusableMappings;
    v9->_mathClosingConfusableMappings = &unk_1EF1EB8D8;
  }

  return v9;
}

- (BOOL)doesTransliterateAtIndexResolveUnmatchingCase:(id)case atIndex:(int64_t)index withString:(id)string unmatchingCase:(int)unmatchingCase shouldForceLocaleFormatNumber:(BOOL)number
{
  numberCopy = number;
  caseCopy = case;
  stringCopy = string;
  v17 = objc_msgSend_mutableCopy(caseCopy, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_objectAtIndexedSubscript_(caseCopy, v18, index, v19, v20, v21);
  v26 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v23, v22, stringCopy, v24, v25);

  objc_msgSend_setObject_atIndexedSubscript_(v17, v27, v26, index, v28, v29);
  v33 = objc_msgSend_concatenateTokensIntoTranscription_tokenSeparator_(CHMathPostProcessingManager, v30, v17, @" ", v31, v32);
  ptr = self->latexHelper.__ptr_;
  v35 = v33;
  v41 = objc_msgSend_UTF8String(v35, v36, v37, v38, v39, v40);
  v42 = strlen(v41);
  if (v42 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    operator new();
  }

  v53 = v42;
  if (v42)
  {
    memmove(&__dst, v41, v42);
  }

  *(&__dst + v43) = 0;
  sub_183879A1C(ptr, &__dst, &v54);
  if (v53 < 0)
  {
    operator delete(__dst);
    v45 = v55[0];
    if (!v55[0])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v45 = v55[0];
    if (!v55[0])
    {
      goto LABEL_17;
    }
  }

  v46 = v55;
  v47 = v45;
  do
  {
    if (*(v47 + 8) >= unmatchingCase)
    {
      v46 = v47;
    }

    v47 = *&v47[8 * (*(v47 + 8) < unmatchingCase)];
  }

  while (v47);
  if (v46 != v55 && *(v46 + 8) <= unmatchingCase)
  {
    isTranscriptionValidExpression_limitToCurrentLocale_declaredVariables = 0;
    goto LABEL_18;
  }

LABEL_17:
  isTranscriptionValidExpression_limitToCurrentLocale_declaredVariables = objc_msgSend_isTranscriptionValidExpression_limitToCurrentLocale_declaredVariables_(CHTokenizedMathResult, v45, v17, numberCopy, 0, v44);
  v45 = v55[0];
LABEL_18:
  sub_18368A374(&v54, v45);

  return isTranscriptionValidExpression_limitToCurrentLocale_declaredVariables;
}

- (BOOL)updateUnmatchingSymbol:(id)symbol unmatchingType:(int)type mode:(id)mode shouldForceLocaleFormatNumber:(BOOL)number outUpdatedPathTokens:(id)tokens
{
  v39 = *MEMORY[0x1E69E9840];
  symbolCopy = symbol;
  modeCopy = mode;
  tokensCopy = tokens;
  v34 = symbolCopy;
  v14 = objc_msgSend_concatenateTokensIntoTranscription_tokenSeparator_(CHMathPostProcessingManager, v11, symbolCopy, @" ", v12, v13);
  ptr = self->latexHelper.__ptr_;
  v30 = v14;
  v21 = objc_msgSend_UTF8String(v30, v16, v17, v18, v19, v20);
  v22 = strlen(v21);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  v38 = v22;
  if (v22)
  {
    memmove(&__dst, v21, v22);
  }

  *(&__dst + v23) = 0;
  sub_183879A1C(ptr, &__dst, &v35);
  if (v38 < 0)
  {
    operator delete(__dst);
    v24 = v36[0];
    if (!v36[0])
    {
      goto LABEL_20;
    }
  }

  else
  {
    v24 = v36[0];
    if (!v36[0])
    {
      goto LABEL_20;
    }
  }

  v25 = v36;
  v26 = v24;
  do
  {
    if (*(v26 + 8) >= type)
    {
      v25 = v26;
    }

    v26 = v26[*(v26 + 8) < type];
  }

  while (v26);
  if (v25 != v36 && *(v25 + 8) <= type)
  {
    v28 = v25[5];
    v27 = v25[6];
    if (v27 != v28)
    {
      if (((v27 - v28) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18368964C();
    }
  }

LABEL_20:
  sub_18368A374(&v35, v24);

  return 0;
}

- (id)process:(id)process options:(id)options
{
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
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "CHTransliterateUnmatchedConfusablesStep is running", buf, 2u);
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v8, qword_1EA84BB58, v9, v10, v11);
  if (v16)
  {
    v17 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v12, qword_1EA84BB58, v13, v14, v15);
    v23 = objc_msgSend_BOOLValue(v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v23 = 1;
  }

  v87 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25, v26, v27, v28);
  v34 = 0;
  v35 = 0;
  while (1)
  {
    v36 = objc_msgSend_result(processCopy, v29, v30, v31, v32, v33, optionsCopy);
    v42 = objc_msgSend_transcriptionPaths(v36, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_count(v42, v43, v44, v45, v46, v47);

    if (v34 >= v48)
    {
      break;
    }

    v52 = objc_msgSend_retrievePathTokens_atPathIndex_(self, v49, processCopy, v34, v50, v51);
    v58 = objc_msgSend_mutableCopy(v52, v53, v54, v55, v56, v57);
    v64 = objc_msgSend_mutableCopy(v52, v59, v60, v61, v62, v63);
    shouldForceLocaleFormatNumber_outUpdatedPathTokens = objc_msgSend_updateUnmatchingSymbol_unmatchingType_mode_shouldForceLocaleFormatNumber_outUpdatedPathTokens_(self, v65, v52, 4, @"opening", v23, v58);
    v68 = objc_msgSend_updateUnmatchingSymbol_unmatchingType_mode_shouldForceLocaleFormatNumber_outUpdatedPathTokens_(self, v67, v58, 5, @"closing", v23, v64);
    v73 = v68;
    if (shouldForceLocaleFormatNumber_outUpdatedPathTokens)
    {
      v74 = v58;
    }

    else
    {
      v74 = v52;
    }

    if (v68)
    {
      objc_msgSend_addObject_(v87, v69, v64, v70, v71, v72);
    }

    else
    {
      objc_msgSend_addObject_(v87, v69, v74, v70, v71, v72);
    }

    v35 = shouldForceLocaleFormatNumber_outUpdatedPathTokens | v73;

    ++v34;
  }

  if (v35)
  {
    v75 = [CHTokenizedMathResult alloc];
    v80 = objc_msgSend_initWithBestPathTokens_(v75, v76, v87, v77, v78, v79);
    objc_msgSend_setResult_(processCopy, v81, v80, v82, v83, v84);
  }

  return processCopy;
}

@end