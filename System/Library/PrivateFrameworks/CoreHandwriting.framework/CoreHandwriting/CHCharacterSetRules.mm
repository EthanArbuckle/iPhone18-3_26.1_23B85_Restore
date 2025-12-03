@interface CHCharacterSetRules
+ (unint64_t)characterType:(unsigned int)type;
+ (unint64_t)characterTypeFromString:(id)string;
+ (unint64_t)expectedMaxDotCount:(unsigned int)count;
+ (unint64_t)expectedMaxStrokeCount:(unsigned int)count;
+ (unint64_t)expectedMinStrokeCount:(unsigned int)count;
- (CHCharacterSetRules)init;
- (id).cxx_construct;
@end

@implementation CHCharacterSetRules

+ (unint64_t)expectedMaxStrokeCount:(unsigned int)count
{
  objc_opt_self();
  if (qword_1EA84D208 != -1)
  {
    dispatch_once(&qword_1EA84D208, &unk_1EF1BF538);
  }

  v4 = qword_1EA84D200;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (v4)
  {
    v5 = v4[34];
  }

  else
  {
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1839494DC;
  block[3] = &unk_1E6DE04A0;
  v10 = v4;
  v11 = &v13;
  countCopy = count;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

+ (unint64_t)expectedMinStrokeCount:(unsigned int)count
{
  objc_opt_self();
  if (qword_1EA84D208 != -1)
  {
    dispatch_once(&qword_1EA84D208, &unk_1EF1BF538);
  }

  v4 = qword_1EA84D200;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (v4)
  {
    v5 = v4[34];
  }

  else
  {
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_183949844;
  block[3] = &unk_1E6DE04A0;
  v10 = v4;
  v11 = &v13;
  countCopy = count;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

+ (unint64_t)expectedMaxDotCount:(unsigned int)count
{
  objc_opt_self();
  if (qword_1EA84D208 != -1)
  {
    dispatch_once(&qword_1EA84D208, &unk_1EF1BF538);
  }

  v4 = qword_1EA84D200;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (v4)
  {
    v5 = v4[34];
  }

  else
  {
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1839499D8;
  block[3] = &unk_1E6DE04A0;
  v10 = v4;
  v11 = &v13;
  countCopy = count;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

+ (unint64_t)characterType:(unsigned int)type
{
  objc_opt_self();
  if (qword_1EA84D208 != -1)
  {
    dispatch_once(&qword_1EA84D208, &unk_1EF1BF538);
  }

  v4 = qword_1EA84D200;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (v4)
  {
    v5 = v4[34];
  }

  else
  {
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_183949B54;
  block[3] = &unk_1E6DE04A0;
  v10 = v4;
  v11 = &v13;
  typeCopy = type;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

+ (unint64_t)characterTypeFromString:(id)string
{
  *&v42[5] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(stringCopy, v5, 0, v6, v7, v8);
  if (v17 != objc_msgSend_length(stringCopy, v17, v9, v10, v11, v12))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v41 = 138412290;
      *v42 = stringCopy;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_ERROR, "Method can only be called on a single character string: %@", &v41, 0xCu);
    }
  }

  objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(stringCopy, v13, 0, v14, v15, v16);
  if (v26 != objc_msgSend_length(stringCopy, v26, v19, v20, v21, v22))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v27 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v41 = 138412290;
      *v42 = stringCopy;
      _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_FAULT, "Method can only be called on a single character string: %@", &v41, 0xCu);
    }
  }

  v28 = objc_msgSend_codepointAtIndex_outRange_(stringCopy, v23, 0, &v41, v24, v25);
  v29 = *&v42[1];
  if (v29 == objc_msgSend_length(stringCopy, v30, v31, v32, v33, v34))
  {
    v39 = objc_msgSend_characterType_(self, v35, v28, v36, v37, v38);
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (CHCharacterSetRules)init
{
  v216.receiver = self;
  v216.super_class = CHCharacterSetRules;
  v2 = [(CHCharacterSetRules *)&v216 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.CoreHandwriting.CHCharacterSetsRules", v3);
    charSetRulesQueue = v2->__charSetRulesQueue;
    v2->__charSetRulesQueue = v4;

    v11 = objc_msgSend_lowercaseLetterCharacterSet(MEMORY[0x1E696AB08], v6, v7, v8, v9, v10);
    lowercaseCharSet = v2->_lowercaseCharSet;
    v2->_lowercaseCharSet = v11;

    v18 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x1E696AB08], v13, v14, v15, v16, v17);
    uppercaseCharSet = v2->_uppercaseCharSet;
    v2->_uppercaseCharSet = v18;

    v25 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v20, v21, v22, v23, v24);
    digitCharSet = v2->_digitCharSet;
    v2->_digitCharSet = v25;

    v31 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v27, @"#@(¡¿“„«"), v28, v29, v30;
    startPunctuationCharSet = v2->_startPunctuationCharSet;
    v2->_startPunctuationCharSet = v31;

    v37 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v33, @"-'_", v34, v35, v36);
    middlePunctuationCharSet = v2->_middlePunctuationCharSet;
    v2->_middlePunctuationCharSet = v37;

    v43 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v39, @".,:!?“»。！？"), v40, v41, v42);;
    endOfWordPunctuationCharSet = v2->_endOfWordPunctuationCharSet;
    v2->_endOfWordPunctuationCharSet = v43;

    v49 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v45, @".!?。！？", v46, v47, v48);
    endOfSentencePunctuationCharSet = v2->_endOfSentencePunctuationCharSet;
    v2->_endOfSentencePunctuationCharSet = v49;

    v55 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v51, @"$€¢£-.+[", v52, v53, v54);
    digitStartPunctuationCharSet = v2->_digitStartPunctuationCharSet;
    v2->_digitStartPunctuationCharSet = v55;

    v61 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v57, @"%?!.,:])$€¢£₽°"), v58, v59, v60);;
    digitEndPunctuationCharSet = v2->_digitEndPunctuationCharSet;
    v2->_digitEndPunctuationCharSet = v61;

    v67 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v63, @"^*+=<>.,", v64, v65, v66);
    arithmeticOperatorCharSet = v2->_arithmeticOperatorCharSet;
    v2->_arithmeticOperatorCharSet = v67;

    v73 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v69, @":'-/", v70, v71, v72);
    dateTimeSeparatorCharSet = v2->_dateTimeSeparatorCharSet;
    v2->_dateTimeSeparatorCharSet = v73;

    v79 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v75, @"apmAPM.", v76, v77, v78);
    dateTimeEndLetterCharSet = v2->_dateTimeEndLetterCharSet;
    v2->_dateTimeEndLetterCharSet = v79;

    v85 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v81, @"strdndth.", v82, v83, v84);
    numeralEndLetterCharSet = v2->_numeralEndLetterCharSet;
    v2->_numeralEndLetterCharSet = v85;

    v92 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AB08], v87, v88, v89, v90, v91);
    v98 = objc_msgSend_invertedSet(v92, v93, v94, v95, v96, v97);
    lexiconSkipCharSet = v2->_lexiconSkipCharSet;
    v2->_lexiconSkipCharSet = v98;

    v104 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v100, @"!?:ij%¡¿ÄËÏÖÜŸäëïöü\xFFİŻż！？", v101, v102, v103);;
    containsDotCharSet = v2->_containsDotCharSet;
    v2->_containsDotCharSet = v104;

    v110 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v106, @":%ÄËÏÖÜŸäëïöü\xFF", v107, v108, v109);;
    containsTwoDotsCharSet = v2->_containsTwoDotsCharSet;
    v2->_containsTwoDotsCharSet = v110;

    v116 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v112, @"@#", v113, v114, v115);
    prefixCapitalizationExceptionCharSet = v2->_prefixCapitalizationExceptionCharSet;
    v2->_prefixCapitalizationExceptionCharSet = v116;

    v122 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v118, @"!?.", v119, v120, v121);
    selfLoopPunctuationCharSet = v2->_selfLoopPunctuationCharSet;
    v2->_selfLoopPunctuationCharSet = v122;

    v128 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v124, @":B=", v125, v126, v127);;
    emoticonTopCharSet = v2->_emoticonTopCharSet;
    v2->_emoticonTopCharSet = v128;

    v134 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v130, @"-'", v131, v132, v133);
    emoticonMiddleCharSet = v2->_emoticonMiddleCharSet;
    v2->_emoticonMiddleCharSet = v134;

    v140 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v136, @"(pPDoOxX*"), v137, v138, v139);
    emoticonBottomCharSet = v2->_emoticonBottomCharSet;
    v2->_emoticonBottomCharSet = v140;

    v146 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v142, @"@", v143, v144, v145);
    emailAtCharSet = v2->_emailAtCharSet;
    v2->_emailAtCharSet = v146;

    v152 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v148, @"_-.+", v149, v150, v151);
    emailPunctuationCharSet = v2->_emailPunctuationCharSet;
    v2->_emailPunctuationCharSet = v152;

    v158 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v154, @"_-.:/+&?%()$=", v155, v156, v157);
    urlPunctuationCharSet = v2->_urlPunctuationCharSet;
    v2->_urlPunctuationCharSet = v158;

    v164 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v160, @"-/.@_", v161, v162, v163);
    nonSpaceSeparatorCharSet = v2->_nonSpaceSeparatorCharSet;
    v2->_nonSpaceSeparatorCharSet = v164;

    v170 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v166, @".,!?:۔،؛؟", v167, v168, v169);;
    punctuationThatNeedSpaceCleanup = v2->_punctuationThatNeedSpaceCleanup;
    v2->_punctuationThatNeedSpaceCleanup = v170;

    v176 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v172, @"!?:", v173, v174, v175);;
    symbolsRequiringSpaceBeforeInFrench = v2->_symbolsRequiringSpaceBeforeInFrench;
    v2->_symbolsRequiringSpaceBeforeInFrench = v176;

    v182 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v178, @"$£€¥₽₫₴₺", v179, v180, v181);
    currencySymbols = v2->_currencySymbols;
    v2->_currencySymbols = v182;

    v188 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v184, @"¡¿", v185, v186, v187);
    sentenceStartPunctuationInSpanish = v2->_sentenceStartPunctuationInSpanish;
    v2->_sentenceStartPunctuationInSpanish = v188;

    v194 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v190, @"„", v191, v192, v193);
    openQuotationCharSet = v2->_openQuotationCharSet;
    v2->_openQuotationCharSet = v194;

    v200 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v196, @"〒", v197, v198, v199);
    commonJapaneseSymbols = v2->_commonJapaneseSymbols;
    v2->_commonJapaneseSymbols = v200;

    v206 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v202, @"()［］【】《》『』「」〈〉｛｝（）〝〟", v203, v204, v205);
    CJKPairedPunctuationsCharSet = v2->_CJKPairedPunctuationsCharSet;
    v2->_CJKPairedPunctuationsCharSet = v206;

    v213 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AB08], v208, v209, v210, v211, v212);
    alphaNumericCharSet = v2->_alphaNumericCharSet;
    v2->_alphaNumericCharSet = v213;
  }

  return v2;
}

- (id).cxx_construct
{
  *(self + 35) = self + 288;
  *(self + 36) = 0;
  *(self + 39) = 0;
  *(self + 40) = 0;
  *(self + 37) = 0;
  *(self + 38) = self + 312;
  return self;
}

@end