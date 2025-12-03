@interface CHRecognizer
+ (id)inputLocalesFromRecognitionOptions:(id)options;
+ (void)_updatePrecedingAndTrailingSeparatorsForTopCandidate:(id)candidate history:(id)history textAfter:(id)after locale:(id)locale outTrailingSeparator:(id *)separator inFirstTokenHasPrecedingSpace:(BOOL)space outFirstTokenHasPrecedingSpace:(BOOL *)precedingSpace;
- (BOOL)_isLocaleSupported:(id)supported;
- (BOOL)enableCachingIfAvailable;
- (BOOL)enableGen2CharacterLMIfAvailable;
- (BOOL)enableGen2ModelIfAvailable;
- (BOOL)isOVSString:(id)string;
- (BOOL)isRareChineseEntry:(id)entry;
- (CGSize)minimumDrawingSize;
- (CHRecognitionInsight)recordedInsightFromLastRequest;
- (CHRecognizer)initWithMode:(int)mode locale:(id)locale learningDictionaryURL:(id)l recognizerOptions:(id)options;
- (CHRecognizer)initWithType:(int)type mode:(int)mode locale:(__CFLocale *)locale learningDictionaryURL:(id)l;
- (NSLocale)locale;
- (ObjectRef<const)staticLexicon;
- (ObjectRef<void)wordLanguageModel;
- (double)_calculateJointWordLMScoreForString:(id)string wordRanges:(id)ranges wordIDs:(id)ds patternEntries:(id)entries history:(unsigned int *)history historyLength:(unint64_t)length;
- (id).cxx_construct;
- (id)_addAlternativeCandidatesForTokenizedResult:(id)result;
- (id)_applySentenceTransliterationCandidates:(unsigned __int16 *)candidates codesLen:(int)len codesMax:(int)max;
- (id)_changeableColumnCountUpdatedResult:(id)result options:(id)options;
- (id)_contextTokenIDsFromHistory:(id)history maxCharacterLength:(unint64_t)length maxTokenCount:(unint64_t)count;
- (id)_defaultPunctuationStringsOutputScores:(id *)scores maxCandidateCount:(int64_t)count;
- (id)_postprocessingMergedRecognitionResult:(id)result options:(id)options;
- (id)_resultUsingNextGenerationPipelineWithDrawing:(id)drawing options:(id)options outPrincipalLinePoints:(id *)points;
- (id)_tokenFromLegacyResult:(id)result wordIndex:(unint64_t)index strokeSet:(id)set substrokeCount:(int64_t)count;
- (id)_tokenizedTextResultFromResults:(id)results segmentGroup:(id)group offsetSegment:(int64_t)segment decodedStrokeSets:(BOOL)sets spaceBehavior:(int64_t)behavior;
- (id)_tokensUsingLMTokenizerForString:(id)string wordRanges:(id)ranges nonWordPatterns:(id)patterns outTokenIDs:(id *)ds;
- (id)bestTranscriptionPathsForTokenizedResult:(id)result scores:(id *)scores history:(id)history;
- (id)characterSetForStrings:(id)strings;
- (id)recognitionEngineCachingKey;
- (id)recognitionResultsForDrawing:(id)drawing options:(id)options;
- (id)recognitionResultsForDrawing:(id)drawing options:(id)options shouldCancel:(id)cancel;
- (id)strokeIndexesForLastCharacter;
- (id)supportedCharacterSet;
- (id)supportedStrings;
- (id)textRecognitionResultForDrawing:(id)drawing options:(id)options shouldCancel:(id)cancel;
- (id)textRecognitionResultForDrawing:(id)drawing options:(id)options writingStatistics:(id)statistics principalPoints:(id *)points shouldCancel:(id)cancel;
- (id)transliterationVariantsForString:(id)string;
- (int)autoCapitalizationMode;
- (int)autoCorrectionMode;
- (int)baseWritingDirection;
- (int)contentType;
- (int)recognitionMode;
- (unint64_t)_effectiveMaxRecognitionResultCount;
- (vector<const)completionsForCandidate:(CHRecognizer *)self candidateContext:(SEL)context prefix:(id)prefix option:(id)option;
- (void)_adjustCandidatesForConfusableCharacters:(void *)characters;
- (void)_adjustResultsForConfusableCharacters:(id)characters;
- (void)_applyTransliterationAndSyntheticCandidates:(void *)candidates;
- (void)_calculateBestTranscriptionPaths:(id *)paths scores:(id *)scores fromTokenizedResult:(id)result pathCount:(int64_t)count history:(id)history skipLMRescoring:(BOOL)rescoring;
- (void)_initializeMergedResultPostProcessor;
- (void)_rescoreCandidatesWithLanguageModel:(void *)model history:(id)history;
- (void)_setConfiguration:(id)configuration;
- (void)_updateWordLanguageModel:(void *)model;
- (void)candidateAccepted:(void *)accepted;
- (void)dealloc;
- (void)recordInsightWithRequest:(id)request;
- (void)setActiveCharacterSet:(id)set;
- (void)setAutoCapitalizationMode:(int)mode;
- (void)setAutoCorrectionMode:(int)mode;
- (void)setBaseWritingDirection:(int)direction;
- (void)setContentType:(int)type;
- (void)setCustomLexicon:(_LXLexicon *)lexicon customVocabulary:(void *)vocabulary;
- (void)setCustomPhraseLexicon:(_LXLexicon *)lexicon;
- (void)setEnableCachingIfAvailable:(BOOL)available;
- (void)setEnableGen2CharacterLMIfAvailable:(BOOL)available;
- (void)setEnableGen2ModelIfAvailable:(BOOL)available;
- (void)setLocale:(id)locale;
- (void)setMaxRecognitionResultCount:(unint64_t)count;
- (void)setMinimumDrawingSize:(CGSize)size;
- (void)setRecognitionMode:(int)mode;
- (void)setRecognitionType:(int)type;
- (void)setStaticLexicon:(ObjectRef<const _LXLexicon *>)lexicon;
- (void)setTextReplacements:(id)replacements;
- (void)setWordLanguageModel:(ObjectRef<void *>)model;
- (void)updateAddressBookLexicon:(id)lexicon;
- (void)updateMecabraWithRegionalOTAAssets:(id)assets nonRegionalOTAAssets:(id)aAssets;
- (void)updateUserDictionaryLexicon:(id)lexicon;
@end

@implementation CHRecognizer

- (CHRecognizer)initWithType:(int)type mode:(int)mode locale:(__CFLocale *)locale learningDictionaryURL:(id)l
{
  v7 = *&mode;
  v8 = *&type;
  lCopy = l;
  if (locale)
  {
    localeCopy = locale;
  }

  else
  {
    localeCopy = objc_msgSend_defaultLocaleForRecognitionType_withMode_(CHRecognizerConfiguration, v10, v8, v7, v11, v12);
  }

  v16 = localeCopy;
  self->_recognitionType = v8;
  v17 = objc_msgSend_initWithMode_locale_learningDictionaryURL_recognizerOptions_(self, v15, v7, localeCopy, lCopy, 0);

  return v17;
}

- (CHRecognizer)initWithMode:(int)mode locale:(id)locale learningDictionaryURL:(id)l recognizerOptions:(id)options
{
  v8 = *&mode;
  v88 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  lCopy = l;
  optionsCopy = options;
  if (objc_msgSend_isLocaleSupported_withMode_(CHRecognizerConfiguration, v13, localeCopy, v8, v14, v15))
  {
    v83.receiver = self;
    v83.super_class = CHRecognizer;
    v16 = [(CHRecognizer *)&v83 init];
    if (!v16)
    {
LABEL_23:
      self = v16;
      selfCopy = self;
      goto LABEL_29;
    }

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.CoreHandwriting.recognizerQueue", v17);
    v19 = *(v16 + 36);
    *(v16 + 36) = v18;

    *(v16 + 31) = 0;
    v20 = *(v16 + 33);
    *(v16 + 33) = 0;

    v21 = *(v16 + 34);
    *(v16 + 34) = 0;

    v22 = *(v16 + 53);
    *(v16 + 53) = 0;

    v23 = *(v16 + 61);
    *(v16 + 61) = 0;

    v24 = *(v16 + 60);
    *(v16 + 60) = 0;
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = *(v16 + 42);
    *(v16 + 42) = 0;
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = *(v16 + 58);
    *(v16 + 58) = 0;

    v27 = *(v16 + 59);
    *(v16 + 59) = 0;
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *(v16 + 43);
    *(v16 + 43) = 0;
    if (v28)
    {
      CFRelease(v28);
    }

    v29 = *(v16 + 65);
    v30 = 0uLL;
    *(v16 + 32) = 0u;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
      v30 = 0uLL;
    }

    v31 = *(v16 + 67);
    *(v16 + 33) = v30;
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v32 = *(v16 + 45);
      *(v16 + 45) = 0;
      if (!v32)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v32 = *(v16 + 45);
      *(v16 + 45) = 0;
      if (!v32)
      {
LABEL_18:
        v33 = *(v16 + 4);
        *(v16 + 4) = 0;
        if (v33)
        {
          CFRelease(v33);
        }

        *(v16 + 37) = 0;
        *(v16 + 38) = 0;
        v34 = *(v16 + 48);
        *(v16 + 48) = 0;
        *(v16 + 49) = 0;

        objc_storeStrong(v16 + 47, l);
        *(v16 + 51) = -1;
        v35 = objc_alloc_init(MEMORY[0x1E696AD50]);
        v36 = *(v16 + 52);
        *(v16 + 52) = v35;

        v37 = *(v16 + 55);
        *(v16 + 55) = 0;

        v38 = *(v16 + 56);
        *(v16 + 56) = 0;

        if (!optionsCopy)
        {
          optionsCopy = objc_alloc_init(CHRecognizerOptions);
        }

        v39 = [CHRecognizerConfiguration alloc];
        v45 = objc_msgSend_enableCachingIfAvailable(optionsCopy, v40, v41, v42, v43, v44);
        v51 = objc_msgSend_enableGen2ModelIfAvailable(optionsCopy, v46, v47, v48, v49, v50);
        v57 = objc_msgSend_enableGen2CharacterLMIfAvailable(optionsCopy, v52, v53, v54, v55, v56);
        v59 = objc_msgSend_initWithMode_locale_contentType_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v39, v58, v8, localeCopy, 0, v45, v51, v57);
        objc_storeStrong(v16 + 57, v59);
        v60 = *(v16 + 29);
        *(v16 + 29) = 0;

        *(v16 + 28) = 0;
        v61 = objc_opt_class();
        objc_msgSend_defaultMinimumDrawingSize(v61, v62, v63, v64, v65, v66);
        *(v16 + 62) = v67;
        *(v16 + 63) = v68;
        sub_1836AF440(v16);

        goto LABEL_23;
      }
    }

    CFRelease(v32);
    goto LABEL_18;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v70 = qword_1EA84DC58;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
  {
    v75 = objc_msgSend_stringForRecognitionMode_(CHRecognizerConfiguration, v71, v8, v72, v73, v74);
    v81 = objc_msgSend_localeIdentifier(localeCopy, v76, v77, v78, v79, v80);
    *buf = 138412546;
    v85 = v75;
    v86 = 2112;
    v87 = v81;
    _os_log_impl(&dword_18366B000, v70, OS_LOG_TYPE_ERROR, "Configuration for recognizer with mode=%@ and locale=%@ is not supported.", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_29:

  return selfCopy;
}

- (id)strokeIndexesForLastCharacter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1836AF848;
  v9 = sub_1836AF858;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836AF860;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_defaultPunctuationStringsOutputScores:(id *)scores maxCandidateCount:(int64_t)count
{
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, scores, count, v4, v5);
  v15 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  transliterationVariantMap = self->_transliterationVariantMap;
  if (transliterationVariantMap)
  {
    sub_1837E49EC(transliterationVariantMap, 57425, &v55);
    v22 = v55;
    v23 = v56;
    if (v55 != v56)
    {
      v54 = v55;
      v24 = v55 + 4;
      v25 = 0.0;
      do
      {
        v26 = sub_1837A4260(*(v24 - 1), v17, v18, v19, v20, v21);
        v31 = v26;
        v32 = *(v24 - 1);
        v33 = v32 == 8212 || v32 == 8943;
        if (v33 || v32 == 8230)
        {
          v35 = objc_msgSend_stringByAppendingString_(v26, v27, v26, v28, v29, v30);

          v31 = v35;
        }

        objc_msgSend_addObject_(v9, v27, v31, v28, v29, v30);
        v41 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v36, v37, v38, v39, v40, v25);
        objc_msgSend_addObject_(v15, v42, v41, v43, v44, v45);

        v51 = objc_msgSend_count(v9, v46, v47, v48, v49, v50);
        if (v51 == count)
        {
          break;
        }

        v25 = v25 + 2.22044605e-16;
        v33 = v24 == v23;
        v24 += 4;
      }

      while (!v33);
      v22 = v54;
    }

    if (scores)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0;
    if (scores)
    {
LABEL_18:
      v52 = v15;
      *scores = v15;
    }
  }

  if (v22)
  {
    operator delete(v22);
  }

  return v9;
}

- (BOOL)isOVSString:(id)string
{
  stringCopy = string;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1836AFC84;
  v7[3] = &unk_1E6DDC378;
  v8 = stringCopy;
  v9 = &v10;
  v7[4] = self;
  v5 = stringCopy;
  sub_1836AF8AC(self, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (id)transliterationVariantsForString:(id)string
{
  stringCopy = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1836AF848;
  v15 = sub_1836AF858;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1836AFDF4;
  v8[3] = &unk_1E6DDC378;
  v9 = stringCopy;
  v10 = &v11;
  v8[4] = self;
  v5 = stringCopy;
  sub_1836AF8AC(self, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_initializeMergedResultPostProcessor
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1836B1070;
  v2[3] = &unk_1E6DDBE10;
  v2[4] = self;
  sub_1836AF8AC(self, v2);
}

- (BOOL)_isLocaleSupported:(id)supported
{
  supportedCopy = supported;
  v10 = objc_msgSend_mode(self->_configuration, v5, v6, v7, v8, v9);
  isLocaleSupported_withMode = objc_msgSend_isLocaleSupported_withMode_(CHRecognizer, v11, supportedCopy, v10, v12, v13);

  return isLocaleSupported_withMode;
}

- (void)updateAddressBookLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  if (objc_msgSend_count(lexiconCopy, v5, v6, v7, v8, v9))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1836B3C94;
    v10[3] = &unk_1E6DDC818;
    v10[4] = self;
    v11 = lexiconCopy;
    sub_1836AF8AC(self, v10);
  }
}

- (void)updateUserDictionaryLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  if (objc_msgSend_count(lexiconCopy, v5, v6, v7, v8, v9))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1836B3F28;
    v10[3] = &unk_1E6DDC818;
    v10[4] = self;
    v11 = lexiconCopy;
    sub_1836AF8AC(self, v10);
  }
}

- (void)updateMecabraWithRegionalOTAAssets:(id)assets nonRegionalOTAAssets:(id)aAssets
{
  assetsCopy = assets;
  aAssetsCopy = aAssets;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1836B41D8;
  v10[3] = &unk_1E6DDC890;
  v10[4] = self;
  v11 = assetsCopy;
  v12 = aAssetsCopy;
  v8 = aAssetsCopy;
  v9 = assetsCopy;
  sub_1836AF8AC(self, v10);
}

- (void)setCustomLexicon:(_LXLexicon *)lexicon customVocabulary:(void *)vocabulary
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836B43CC;
  v4[3] = &unk_1E6DDC8E0;
  v4[4] = self;
  v4[5] = lexicon;
  v4[6] = vocabulary;
  sub_1836AF8AC(self, v4);
}

- (void)setCustomPhraseLexicon:(_LXLexicon *)lexicon
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836B4570;
  v3[3] = &unk_1E6DDC3A0;
  v3[4] = self;
  v3[5] = lexicon;
  sub_1836AF8AC(self, v3);
}

- (void)setTextReplacements:(id)replacements
{
  replacementsCopy = replacements;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1836B46D8;
  v6[3] = &unk_1E6DDC818;
  v6[4] = self;
  v7 = replacementsCopy;
  v5 = replacementsCopy;
  sub_1836AF8AC(self, v6);
}

- (void)_updateWordLanguageModel:(void *)model
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836B4948;
  v3[3] = &unk_1E6DDC3A0;
  v3[4] = self;
  v3[5] = model;
  sub_1836AF8AC(self, v3);
}

- (void)candidateAccepted:(void *)accepted
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836B4AC8;
  v3[3] = &unk_1E6DDC3A0;
  v3[4] = self;
  v3[5] = accepted;
  sub_1836AF8AC(self, v3);
}

- (vector<const)completionsForCandidate:(CHRecognizer *)self candidateContext:(SEL)context prefix:(id)prefix option:(id)option
{
  prefixCopy = prefix;
  optionCopy = option;
  v14 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = sub_1836B4E90;
  v30 = sub_1836B4EB4;
  v31 = &unk_183A5AC72;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1836B4ECC;
  v21[3] = &unk_1E6DDC8B8;
  v21[4] = self;
  v15 = optionCopy;
  v22 = v15;
  v16 = v14;
  v24 = &v26;
  v25 = a7;
  v23 = v16;
  sub_1836AF8AC(self, v21);
  v17 = v27;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v19 = v17[6];
  v18 = v17[7];
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  _Block_object_dispose(&v26, 8);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  return result;
}

- (BOOL)isRareChineseEntry:(id)entry
{
  entryCopy = entry;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1836B5148;
  v7[3] = &unk_1E6DDC840;
  v7[4] = self;
  v8 = entryCopy;
  v9 = &v10;
  v5 = entryCopy;
  sub_1836AF8AC(self, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (void)dealloc
{
  if (self)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1836B3918;
    v4[3] = &unk_1E6DDBE10;
    v4[4] = self;
    sub_1836AF8AC(self, v4);
  }

  if (self->_icuTransliterator)
  {
    utrans_close();
    self->_icuTransliterator = 0;
  }

  v3.receiver = self;
  v3.super_class = CHRecognizer;
  [(CHRecognizer *)&v3 dealloc];
}

- (id)supportedCharacterSet
{
  if (self->_engine)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD48]);
    var2 = self->_engine->var2;
    if (var2->var3)
    {
      sub_1838B8A5C(var2, 0);
      operator new();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)supportedStrings
{
  if (self->_engine)
  {
    v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
    var2 = self->_engine->var2;
    if (var2->var3)
    {
      sub_1838B8A5C(var2, 0);
      operator new();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)characterSetForStrings:(id)strings
{
  v37 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v5 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = stringsCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16, v8);
  if (v11)
  {
    v12 = *v33;
    if (self)
    {
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v19 = objc_msgSend_objectForKey_(&unk_1EF1EB950, v15, v14, v16, v17, v18, v32);

          if (v19)
          {
            v25 = objc_msgSend_integerValue(v19, v20, v21, v22, v23, v24);
            objc_msgSend_addCharactersInRange_(v5, v26, v25, 1, v27, v28);
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v29, &v32, v36, 16, v30);
      }

      while (v11);
    }

    else
    {
      do
      {
        if (*v33 == v12)
        {
          do
          {
            --v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v6);
            }

            --v11;
          }

          while (v11);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v32, v36, 16, v10);
      }

      while (v11);
    }
  }

  return v5;
}

- (double)_calculateJointWordLMScoreForString:(id)string wordRanges:(id)ranges wordIDs:(id)ds patternEntries:(id)entries history:(unsigned int *)history historyLength:(unint64_t)length
{
  stringCopy = string;
  rangesCopy = ranges;
  dsCopy = ds;
  entriesCopy = entries;
  if (qword_1EA84DAC0 != -1)
  {
    dispatch_once(&qword_1EA84DAC0, &unk_1EF1BB880);
  }

  v78 = dsCopy;
  v76 = entriesCopy;
  v24 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v14, entriesCopy, v15, v16, v17);
  for (i = 0; i < objc_msgSend_count(rangesCopy, v19, v20, v21, v22, v23); ++i)
  {
    v30 = objc_msgSend_objectAtIndexedSubscript_(v24, v26, i, v27, v28, v29);
    v36 = objc_msgSend_BOOLValue(v30, v31, v32, v33, v34, v35);

    if (v36)
    {
      v37 = objc_msgSend_objectAtIndexedSubscript_(rangesCopy, v19, i, v21, v22, v23);
      v43 = objc_msgSend_rangeValue(v37, v38, v39, v40, v41, v42);
      v45 = v44;

      v51 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v46, v47, v48, v49, v50);
      v53 = objc_msgSend_rangeOfCharacterFromSet_options_range_(stringCopy, v52, v51, 2, v43, v45);

      if (v53 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v19, 0, v21, v22, v23);
        objc_msgSend_setObject_atIndexedSubscript_(v24, v55, v54, i, v56, v57);
      }
    }
  }

  if (objc_msgSend_indexOfObject_(v78, v26, &unk_1EF1ECB50, v27, v28, v29) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = rangesCopy;
    v64 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v60, v78, v61, v62, v63);
  }

  else
  {
    v93[0] = 0;
    v65 = objc_msgSend__tokensUsingLMTokenizerForString_wordRanges_nonWordPatterns_outTokenIDs_(self, v58, stringCopy, rangesCopy, v24, v93);
    v64 = v93[0];
    v59 = v65;
  }

  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = sub_1836BAA90;
  v79[3] = &unk_1E6DDC488;
  v79[4] = self;
  lengthCopy = length;
  historyCopy = history;
  v66 = v59;
  v80 = v66;
  v67 = rangesCopy;
  v81 = v67;
  v68 = stringCopy;
  v82 = v68;
  v69 = v76;
  v83 = v69;
  v70 = v78;
  v84 = v70;
  v85 = v64;
  v86 = &v89;
  v71 = v64;
  sub_1836AF8AC(self, v79);
  v72 = v90[3];

  _Block_object_dispose(&v89, 8);
  return v72;
}

- (id)_tokensUsingLMTokenizerForString:(id)string wordRanges:(id)ranges nonWordPatterns:(id)patterns outTokenIDs:(id *)ds
{
  stringCopy = string;
  rangesCopy = ranges;
  patternsCopy = patterns;
  if (qword_1EA84DAD0 != -1)
  {
    dispatch_once(&qword_1EA84DAD0, &unk_1EF1BB8A0);
  }

  v18 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  v24 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  v29 = objc_msgSend_stringByAppendingString_(stringCopy, v25, @" ", v26, v27, v28);

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1836BB268;
  v42[3] = &unk_1E6DDC4D8;
  v30 = v29;
  v43 = v30;
  selfCopy = self;
  v31 = rangesCopy;
  v45 = v31;
  v32 = patternsCopy;
  v46 = v32;
  v33 = v24;
  v47 = v33;
  v34 = v18;
  v48 = v34;
  sub_1836AF8AC(self, v42);
  if (ds)
  {
    *ds = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v35, v33, v36, v37, v38);
  }

  v39 = v48;
  v40 = v34;

  return v34;
}

- (id)_addAlternativeCandidatesForTokenizedResult:(id)result
{
  v201 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v191 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
  v8 = MEMORY[0x1E695DF70];
  v14 = objc_msgSend_transcriptionPaths(resultCopy, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_arrayWithArray_(v8, v15, v14, v16, v17, v18);

  v20 = MEMORY[0x1E695DF70];
  v26 = objc_msgSend_transcriptionPathScores(resultCopy, v21, v22, v23, v24, v25);
  v195 = objc_msgSend_arrayWithArray_(v20, v27, v26, v28, v29, v30);

  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  obj = objc_msgSend_tokenColumns(resultCopy, v31, v32, v33, v34, v35);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v196, v200, 16, v37);
  if (v38)
  {
    v44 = 0;
    v190 = *v197;
    do
    {
      v192 = v38;
      for (i = 0; i != v192; ++i)
      {
        if (*v197 != v190)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v196 + 1) + 8 * i);
        v47 = objc_msgSend_firstObject(v19, v39, v40, v41, v42, v43);
        v52 = objc_msgSend_indexAtPosition_(v47, v48, v44, v49, v50, v51);

        v58 = objc_msgSend_transcriptionPaths(resultCopy, v53, v54, v55, v56, v57);
        v64 = objc_msgSend_firstObject(v58, v59, v60, v61, v62, v63);
        v194 = objc_msgSend_tokensInTranscriptionPath_atColumnIndex_(resultCopy, v65, v64, v44, v66, v67);

        if (objc_msgSend_count(v194, v68, v69, v70, v71, v72) == 1)
        {
          v78 = MEMORY[0x1E695DF70];
          v79 = objc_msgSend_textTokenRows(v46, v73, v74, v75, v76, v77);
          v84 = objc_msgSend_arrayWithArray_(v78, v80, v79, v81, v82, v83);

          if (objc_msgSend_count(v84, v85, v86, v87, v88, v89) >= 2)
          {
            for (j = 1; j < objc_msgSend_count(v19, v90, v91, v92, v93, v94); ++j)
            {
              v101 = objc_msgSend_objectAtIndexedSubscript_(v19, v96, j, v98, v99, v100);
              v106 = objc_msgSend_indexAtPosition_(v101, v102, v44, v103, v104, v105);

              if (v106 > v52)
              {
                v107 = objc_msgSend_objectAtIndex_(v19, v90, j, v92, v93, v94);
                v112 = objc_msgSend_indexAtPosition_(v107, v108, v44, v109, v110, v111);
                v113 = sub_1837A3654(v107, v44, v112);
                objc_msgSend_replaceObjectAtIndex_withObject_(v19, v114, j, v113, v115, v116);
              }
            }

            v121 = objc_msgSend_count(v84, v96, v97, v98, v99, v100) - 1;
            if (v121 >= 0)
            {
              do
              {
                v122 = objc_msgSend_objectAtIndex_(v84, v117, v121, v118, v119, v120);
                v128 = v122;
                if (v121 != v52 && objc_msgSend_count(v122, v123, v124, v125, v126, v127) == 1)
                {
                  v134 = objc_msgSend_firstObject(v128, v129, v130, v131, v132, v133);
                  v140 = (objc_msgSend_properties(v134, v135, v136, v137, v138, v139) & 4) == 0;

                  if (v140)
                  {
                    objc_msgSend_removeObjectAtIndex_(v84, v141, v121, v142, v143, v144);
                    v154 = objc_msgSend_count(v19, v145, v146, v147, v148, v149);
                    if (v154 - 1 >= 0)
                    {
                      do
                      {
                        v155 = objc_msgSend_objectAtIndex_(v19, v150, --v154, v151, v152, v153);
                        if (objc_msgSend_indexAtPosition_(v155, v156, v44, v157, v158, v159) == v121)
                        {
                          objc_msgSend_removeObjectAtIndex_(v19, v160, v154, v161, v162, v163);
                          objc_msgSend_removeObjectAtIndex_(v195, v164, v154, v165, v166, v167);
                        }

                        else if (objc_msgSend_indexAtPosition_(v155, v160, v44, v161, v162, v163) > v121)
                        {
                          v172 = objc_msgSend_indexAtPosition_(v155, v168, v44, v169, v170, v171);
                          v173 = sub_1837A3654(v155, v44, v172 - 1);
                          objc_msgSend_replaceObjectAtIndex_withObject_(v19, v174, v154, v173, v175, v176);
                        }
                      }

                      while (v154 > 0);
                    }
                  }
                }
              }

              while (v121-- > 0);
            }
          }

          v178 = [CHMutableTokenizedResultColumn alloc];
          v183 = objc_msgSend_initWithTokenRows_(v178, v179, v84, v180, v181, v182);
          objc_msgSend_addObject_(v191, v184, v183, v185, v186, v187);
        }

        else
        {
          objc_msgSend_addObject_(v191, v73, v46, v75, v76, v77);
        }

        ++v44;
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v196, v200, 16, v43);
    }

    while (v38);
  }

  return resultCopy;
}

- (void)_adjustResultsForConfusableCharacters:(id)characters
{
  charactersCopy = characters;
  if (objc_msgSend_count(charactersCopy, v3, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(charactersCopy, v8, 0, v9, v10, v11);
    v18 = objc_msgSend_string(v12, v13, v14, v15, v16, v17);
    v24 = objc_msgSend_length(v18, v19, v20, v21, v22, v23);

    if (v24)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(charactersCopy, v25, 0, v26, v27, v28);
      v35 = objc_msgSend_string(v29, v30, v31, v32, v33, v34);
      objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v35, v36, 0, v37, v38, v39);
      if (v44 == 1)
      {
        v45 = objc_msgSend_string(v29, 1, v40, v41, v42, v43);
        v50 = objc_msgSend_characterAtIndex_(v45, v46, 0, v47, v48, v49);

        if (v50 != 161)
        {
LABEL_16:

          goto LABEL_17;
        }

        v56 = objc_msgSend_string(v29, v51, v52, v53, v54, v55);
        v61 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57, @"%c", v58, v59, v60, 105);
        v35 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v56, v62, 0, 1, v61, v63);

        for (i = 0; i < objc_msgSend_count(charactersCopy, v64, v65, v66, v67, v68); ++i)
        {
          v74 = objc_msgSend_objectAtIndexedSubscript_(charactersCopy, v70, i, v71, v72, v73);
          v80 = objc_msgSend_string(v74, v75, v76, v77, v78, v79);
          v84 = objc_msgSend_compare_options_(v35, v81, v80, 129, v82, v83);

          if (!v84)
          {
            if (i != 0x7FFFFFFFFFFFFFFFLL)
            {
              v85 = objc_msgSend_objectAtIndexedSubscript_(charactersCopy, v64, i, v66, v67, v68);
              RootCursor = LXLexiconCreateRootCursor();
              v92 = objc_msgSend_string(v85, v87, v88, v89, v90, v91);
              v93 = LXCursorCreateByAdvancing();

              if (v93)
              {
                objc_msgSend_score(v29, v94, v95, v96, v97, v98);
                objc_msgSend_setScore_(v85, v100, v101, v102, v103, v104, v99 + -0.0001);
                objc_msgSend_insertObject_atIndex_(charactersCopy, v105, v85, 0, v106, v107);
                objc_msgSend_removeObjectAtIndex_(charactersCopy, v108, i + 1, v109, v110, v111);
                CFRelease(v93);
              }

              if (RootCursor)
              {
                CFRelease(RootCursor);
              }
            }

            break;
          }
        }
      }

      goto LABEL_16;
    }
  }

LABEL_17:
}

- (id)_tokenFromLegacyResult:(id)result wordIndex:(unint64_t)index strokeSet:(id)set substrokeCount:(int64_t)count
{
  resultCopy = result;
  setCopy = set;
  v15 = objc_msgSend_wordRanges(resultCopy, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, index, v17, v18, v19);
  v26 = objc_msgSend_rangeValue(v20, v21, v22, v23, v24, v25);
  v28 = v27;

  v34 = objc_msgSend_wordIDs(resultCopy, v29, v30, v31, v32, v33);
  v39 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, index, v36, v37, v38);
  v185 = objc_msgSend_intValue(v39, v40, v41, v42, v43, v44);

  v50 = objc_msgSend_wordRecognitionScores(resultCopy, v45, v46, v47, v48, v49);
  v55 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, index, v52, v53, v54);
  objc_msgSend_doubleValue(v55, v56, v57, v58, v59, v60);
  v62 = v61;

  v68 = objc_msgSend_wordCombinedScores(resultCopy, v63, v64, v65, v66, v67);
  v73 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, index, v70, v71, v72);
  objc_msgSend_doubleValue(v73, v74, v75, v76, v77, v78);
  v80 = v79;

  if (setCopy)
  {
    v91 = setCopy;
  }

  else
  {
    v92 = objc_msgSend_wordStrokeSets(resultCopy, v81, v82, v83, v84, v85);
    v91 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, index, v94, v95, v96);
  }

  v97 = objc_msgSend_wordLexicalEntries(resultCopy, v86, v87, v88, v89, v90);
  v102 = objc_msgSend_objectAtIndexedSubscript_(v97, v98, index, v99, v100, v101);
  v108 = objc_msgSend_BOOLValue(v102, v103, v104, v105, v106, v107);

  if (v108)
  {
    v114 = 261;
  }

  else
  {
    v114 = 1;
  }

  v115 = objc_msgSend_wordPatternEntries(resultCopy, v109, v110, v111, v112, v113);
  v120 = objc_msgSend_objectAtIndexedSubscript_(v115, v116, index, v117, v118, v119);
  v126 = objc_msgSend_BOOLValue(v120, v121, v122, v123, v124, v125);

  if (v126)
  {
    v132 = v114 | 8;
  }

  else
  {
    v132 = v114;
  }

  v133 = objc_msgSend_inappropriateWordIndexes(resultCopy, v127, v128, v129, v130, v131);
  v138 = objc_msgSend_containsIndex_(v133, v134, index, v135, v136, v137);

  shouldUseTokenPrecedingSpaces = objc_msgSend_shouldUseTokenPrecedingSpaces(self->_configuration, v139, v140, v141, v142, v143);
  v150 = v132 | 0x10;
  if (!v138)
  {
    v150 = v132;
  }

  if (shouldUseTokenPrecedingSpaces)
  {
    v151 = v150 | 0x20;
  }

  else
  {
    v151 = v150;
  }

  v152 = objc_msgSend_rareWordIndexes(resultCopy, v145, v146, v147, v148, v149);
  v157 = objc_msgSend_containsIndex_(v152, v153, index, v154, v155, v156);

  if (v157)
  {
    v163 = v151 | 2;
  }

  else
  {
    v163 = v151;
  }

  if (objc_msgSend_isTextReplacement(resultCopy, v158, v159, v160, v161, v162))
  {
    v169 = 17;
  }

  else
  {
    v169 = 1;
  }

  v170 = objc_msgSend_string(resultCopy, v164, v165, v166, v167, v168);
  v174 = objc_msgSend_substringWithRange_(v170, v171, v26, v28, v172, v173);

  v175 = [CHMutableTokenizedTextResultToken alloc];
  v181 = objc_msgSend_locale(self->_configuration, v176, v177, v178, v179, v180);
  v183 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v175, v182, v174, v91, v185, v163, v181, v169, v62, v62, v80, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), count);

  return v183;
}

- (id)bestTranscriptionPathsForTokenizedResult:(id)result scores:(id *)scores history:(id)history
{
  resultCopy = result;
  historyCopy = history;
  v33 = 0;
  v15 = objc_msgSend__effectiveMaxRecognitionResultCount(self, v10, v11, v12, v13, v14);
  objc_msgSend__calculateBestTranscriptionPaths_scores_fromTokenizedResult_pathCount_history_skipLMRescoring_(self, v16, &v33, scores, resultCopy, v15, historyCopy, 0);
  v17 = v33;
  if (!objc_msgSend_count(v17, v18, v19, v20, v21, v22))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v28 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "There must be at least one valid path", buf, 2u);
    }
  }

  if (!objc_msgSend_count(v17, v23, v24, v25, v26, v27))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *v31 = 0;
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_FAULT, "There must be at least one valid path", v31, 2u);
    }
  }

  return v17;
}

- (void)_calculateBestTranscriptionPaths:(id *)paths scores:(id *)scores fromTokenizedResult:(id)result pathCount:(int64_t)count history:(id)history skipLMRescoring:(BOOL)rescoring
{
  v183 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  historyCopy = history;
  if (objc_msgSend_shouldApplyLMSorting(self->_configuration, v11, v12, v13, v14, v15))
  {
    v21 = !rescoring;
    if (!self->_wordLanguageModel.mCFObject)
    {
      v21 = 0;
    }

    v160 = v21;
  }

  else
  {
    v160 = 0;
  }

  v163 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20);
  v161 = objc_msgSend_array(MEMORY[0x1E695DF70], v22, v23, v24, v25, v26);
  if ((objc_msgSend_hasValidColumns(resultCopy, v27, v28, v29, v30, v31) & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v37 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_msgSend_descriptionWithSensitiveInformation_(resultCopy, v38, 0, v39, v40, v41);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v42;
      _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_ERROR, "Unexpected tokenized result with invalid columns passed to _calculateBestTranscriptionPaths, description = %@", &buf, 0xCu);
    }
  }

  if ((objc_msgSend_hasValidColumns(resultCopy, v32, v33, v34, v35, v36) & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v48 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      v53 = objc_msgSend_descriptionWithSensitiveInformation_(resultCopy, v49, 0, v50, v51, v52);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v53;
      _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_FAULT, "Unexpected tokenized result with invalid columns passed to _calculateBestTranscriptionPaths, description = %@", &buf, 0xCu);
    }
  }

  if (v160 || (objc_msgSend_tokenColumns(resultCopy, v43, v44, v45, v46, v47), v54 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend_count(v54, v55, v56, v57, v58, v59) == 1, v54, !v60))
  {
    v168 = 1;
    v169 = xmmword_1839CDAD0;
    operator new[]();
  }

  v66 = objc_msgSend_tokenColumns(resultCopy, v61, v62, v63, v64, v65);
  v165 = objc_msgSend_objectAtIndex_(v66, v67, 0, v68, v69, v70);

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = objc_msgSend_textTokenRows(v165, v71, v72, v73, v74, v75);
  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, &v174, v179, 16, v77);
  if (v78)
  {
    v79 = 0;
    v80 = *v175;
LABEL_22:
    v81 = 0;
    while (1)
    {
      if (*v175 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v82 = *(*(&v174 + 1) + 8 * v81);
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v83 = v82;
      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v170, v178, 16, v85);
      if (v91)
      {
        v92 = *v171;
        v93 = 0.0;
        do
        {
          for (i = 0; i != v91; ++i)
          {
            if (*v171 != v92)
            {
              objc_enumerationMutation(v83);
            }

            objc_msgSend_combinedScore(*(*(&v170 + 1) + 8 * i), v86, v87, v88, v89, v90);
            v93 = v93 + v95;
          }

          v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v86, &v170, v178, 16, v90);
        }

        while (v91);
      }

      else
      {
        v93 = 0.0;
      }

      v100 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v96, v79, v97, v98, v99);
      objc_msgSend_addObject_(v163, v101, v100, v102, v103, v104);

      v110 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v105, v106, v107, v108, v109, v93);
      objc_msgSend_addObject_(v161, v111, v110, v112, v113, v114);

      if (objc_msgSend_count(v163, v115, v116, v117, v118, v119) == count)
      {
        break;
      }

      ++v79;
      if (++v81 == v78)
      {
        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v120, &v174, v179, 16, v121);
        if (v78)
        {
          goto LABEL_22;
        }

        break;
      }
    }
  }

  v130 = objc_msgSend_rawTranscriptionPath(resultCopy, v122, v123, v124, v125, v126);
  if (!v130)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v153 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_18366B000, v153, OS_LOG_TYPE_ERROR, "Raw path not found in the given colmns.", &buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v154 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
      {
LABEL_52:

        goto LABEL_53;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v154 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_52;
      }
    }

    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v154, OS_LOG_TYPE_FAULT, "Raw path not found in the given colmns.", &buf, 2u);
    goto LABEL_52;
  }

  if ((objc_msgSend_doGivenPaths_coverAllTokensInPath_(resultCopy, v127, v163, v130, v128, v129) & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v131 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_18366B000, v131, OS_LOG_TYPE_DEFAULT, "Best transcription paths for the given columns don't cover all raw tokens. Adding extra explicit raw transcription path.", &buf, 2u);
    }

    objc_msgSend_addObject_(v163, v132, v130, v133, v134, v135);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v181 = 0x2020000000;
    v182 = 0;
    v141 = objc_msgSend_tokenColumnCount(resultCopy, v136, v137, v138, v139, v140);
    v167[0] = MEMORY[0x1E69E9820];
    v167[1] = 3221225472;
    v167[2] = sub_1836C8364;
    v167[3] = &unk_1E6DDC5D0;
    v167[4] = &buf;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(resultCopy, v142, v130, 0, v141, v167);
    v148 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v143, v144, v145, v146, v147, *(*(&buf + 1) + 24));
    objc_msgSend_addObject_(v161, v149, v148, v150, v151, v152);

    _Block_object_dispose(&buf, 8);
  }

LABEL_53:
  if (paths)
  {
    v155 = v163;
    *paths = v163;
  }

  if (scores)
  {
    v156 = v161;
    *scores = v161;
  }
}

- (id)_contextTokenIDsFromHistory:(id)history maxCharacterLength:(unint64_t)length maxTokenCount:(unint64_t)count
{
  historyCopy = history;
  v14 = historyCopy;
  if (historyCopy)
  {
    v19 = objc_msgSend_length(historyCopy, v9, v10, v11, v12, v13);
    if (v19 <= length)
    {
      objc_msgSend_substringWithRange_(v14, v15, 0, v19, v17, v18);
    }

    else
    {
      v20 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v14, v15, v19 - length, v16, v17, v18);
      objc_msgSend_substringWithRange_(v14, v21, v20, v19 - v20, v22, v23);
    }
    v25 = ;
    v26 = MEMORY[0x1E695DEC8];
    v27 = MEMORY[0x1E696B098];
    v33 = objc_msgSend_length(v25, v28, v29, v30, v31, v32);
    v37 = objc_msgSend_valueWithRange_(v27, v34, 0, v33, v35, v36);
    v42 = objc_msgSend_arrayWithObject_(v26, v38, v37, v39, v40, v41);

    v43 = MEMORY[0x1E695DEC8];
    v48 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v44, 0, v45, v46, v47);
    v53 = objc_msgSend_arrayWithObject_(v43, v49, v48, v50, v51, v52);

    v72 = 0;
    v55 = objc_msgSend__tokensUsingLMTokenizerForString_wordRanges_nonWordPatterns_outTokenIDs_(self, v54, v25, v42, v53, &v72);
    v24 = v72;
    if (objc_msgSend_count(v24, v56, v57, v58, v59, v60) > count)
    {
      v66 = objc_msgSend_count(v24, v61, v62, v63, v64, v65);
      v70 = objc_msgSend_subarrayWithRange_(v24, v67, v66 - count, count, v68, v69);

      v24 = v70;
    }
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

- (id)_tokenizedTextResultFromResults:(id)results segmentGroup:(id)group offsetSegment:(int64_t)segment decodedStrokeSets:(BOOL)sets spaceBehavior:(int64_t)behavior
{
  v194[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  groupCopy = group;
  v187 = objc_alloc_init(CHMutableTokenizedTextResult);
  v190 = objc_alloc_init(CHMutableTokenizedResultColumn);
  v11 = 0x1E695D000uLL;
  v191 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  v192 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20, v21);
  v22 = 0;
  v189 = resultsCopy;
  for (i = objc_msgSend_count(resultsCopy, v23, v24, v25, v26, v27); v22 < i; i = objc_msgSend_count(v189, v173, v174, v175, v176, v177))
  {
    v33 = objc_msgSend_objectAtIndex_(resultsCopy, v29, v22, v30, v31, v32);
    v44 = objc_msgSend_array(*(v11 + 3952), v34, v35, v36, v37, v38);
    if (sets)
    {
      for (j = 0; ; ++j)
      {
        v46 = objc_msgSend_wordRanges(v33, v39, v40, v41, v42, v43);
        v52 = objc_msgSend_count(v46, v47, v48, v49, v50, v51);

        if (j >= v52)
        {
          break;
        }

        v58 = objc_msgSend_totalSegmentCount(groupCopy, v53, v54, v55, v56, v57);
        v60 = objc_msgSend__tokenFromLegacyResult_wordIndex_strokeSet_substrokeCount_(self, v59, v33, j, 0, v58);
        v66 = objc_msgSend_properties(v60, v61, v62, v63, v64, v65);
        v76 = objc_msgSend_inputSources(v60, v67, v68, v69, v70, v71);
        v77 = v66 & 0xFFFFFFFFFFFFFFDFLL;
        if (behavior != 1)
        {
          v77 = v66;
        }

        if (behavior == 2)
        {
          objc_msgSend_setProperties_(v60, v72, v66 | 0x20, v73, v74, v75);
        }

        else
        {
          objc_msgSend_setProperties_(v60, v72, v77, v73, v74, v75);
        }

        if (v22)
        {
          objc_msgSend_setInputSources_(v60, v78, v76, v79, v80, v81);
        }

        else
        {
          objc_msgSend_setInputSources_(v60, v78, v76 | 4, v79, v80, v81);
        }

        objc_msgSend_addObject_(v44, v82, v60, v83, v84, v85);
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v87 = objc_msgSend_wordRanges(v33, v39, v40, v41, v42, v43);
        v93 = objc_msgSend_count(v87, v88, v89, v90, v91, v92);

        if (k >= v93)
        {
          break;
        }

        v95 = objc_msgSend_wordStrokeSets(v33, v53, v94, v55, v56, v57);
        v100 = objc_msgSend_objectAtIndexedSubscript_(v95, v96, k, v97, v98, v99);

        v106 = objc_msgSend_wordStrokeSets(v33, v101, v102, v103, v104, v105);
        v111 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, k, v108, v109, v110);
        v117 = objc_msgSend_count(v111, v112, v113, v114, v115, v116);

        v119 = objc_msgSend__tokenFromLegacyResult_wordIndex_strokeSet_substrokeCount_(self, v118, v33, k, v100, v117);
        v125 = objc_msgSend_properties(v119, v120, v121, v122, v123, v124);
        v131 = objc_msgSend_inputSources(v119, v126, v127, v128, v129, v130);
        v136 = v125 | 0x20;
        if (behavior != 2)
        {
          v136 = v125;
        }

        if (behavior == 1)
        {
          v137 = v125 & 0xFFFFFFFFFFFFFFDFLL;
        }

        else
        {
          v137 = v136;
        }

        v138 = v131;
        objc_msgSend_setProperties_(v119, v132, v137, v133, v134, v135);
        if (v22)
        {
          objc_msgSend_setInputSources_(v119, v139, v138, v140, v141, v142);
        }

        else
        {
          objc_msgSend_setInputSources_(v119, v139, v138 | 4, v140, v141, v142);
        }

        objc_msgSend_addObject_(v44, v143, v119, v144, v145, v146);
      }
    }

    v147 = objc_msgSend_addTokenRowWithTokens_(v190, v53, v44, v55, v56, v57);
    v152 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v148, v147, v149, v150, v151);
    objc_msgSend_addObject_(v191, v153, v152, v154, v155, v156);

    v157 = MEMORY[0x1E696AD98];
    objc_msgSend_score(v33, v158, v159, v160, v161, v162);
    v168 = objc_msgSend_numberWithDouble_(v157, v163, v164, v165, v166, v167);
    objc_msgSend_addObject_(v192, v169, v168, v170, v171, v172);

    ++v22;
    resultsCopy = v189;
    v11 = 0x1E695D000;
  }

  v194[0] = v190;
  v178 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, v194, 1, v31, v32);
  objc_msgSend_setTokenColumns_(v187, v179, v178, v180, v181, v182);

  objc_msgSend_setTranscriptionPaths_scores_(v187, v183, v191, v192, v184, v185);

  return v187;
}

- (id)_resultUsingNextGenerationPipelineWithDrawing:(id)drawing options:(id)options outPrincipalLinePoints:(id *)points
{
  v1092 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  optionsCopy = options;
  selfCopy = self;
  if (self->_recognitionModel)
  {
    goto LABEL_389;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "The recognition model must be loaded before inference can be called on it", buf, 2u);
  }

  if (self->_recognitionModel)
  {
LABEL_389:
    if (self->_legacyTextDecoder)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  if (qword_1EA84DC48 == -1)
  {
    v15 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v15 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
LABEL_21:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_FAULT, "The recognition model must be loaded before inference can be called on it", buf, 2u);
  }

LABEL_22:

  if (self->_legacyTextDecoder)
  {
    goto LABEL_23;
  }

LABEL_8:
  if (!self->_textDecoder.__engaged_)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The text decoder must be loaded before decoding can be executed", buf, 2u);
    }

    if (!self->_legacyTextDecoder && !self->_textDecoder.__engaged_)
    {
      if (qword_1EA84DC48 == -1)
      {
        v14 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v14 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_18;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "The text decoder must be loaded before decoding can be executed", buf, 2u);
      goto LABEL_18;
    }
  }

LABEL_23:
  if (!self->_recognitionModel || !self->_legacyTextDecoder && !self->_textDecoder.__engaged_)
  {
    v28 = 0;
    goto LABEL_370;
  }

  v1027 = objc_msgSend_inputLocalesFromRecognitionOptions_(CHRecognizer, v8, optionsCopy, v9, v10, v11);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC58;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v20 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v1027, v17, @", ", &unk_1EF1BBA40, v18, v19);
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_DEBUG, "Model input locales extracted from recognition options: %@", buf, 0xCu);
  }

  v1077 = 0;
  __src = 0;
  v1078 = 0;
  v1074 = 0;
  v1073 = 0;
  v1075 = 0;
  v21 = optionsCopy;
  v26 = 0;
  v1053 = v21;
  if (v21)
  {
    v27 = objc_msgSend_objectForKey_(v21, v22, CHRecognitionOptionInferenceCache, v23, v24, v25);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v27;
    }

    else
    {
      v26 = 0;
    }

    v21 = v1053;
  }

  v29 = v26;
  v1051 = drawingCopy;
  v1031 = v1027;
  v1032 = v29;
  if (!v29)
  {
    v1040 = 0;
    goto LABEL_98;
  }

  v35 = MEMORY[0x1E696AEC0];
  v36 = objc_msgSend_recognitionEngineCachingKey(self, v30, v31, v32, v33, v34);
  v42 = objc_msgSend_locale(self, v37, v38, v39, v40, v41);
  v46 = objc_msgSend_cachingKeyFromRelevantLocales_forLocale_(CHRecognizerConfiguration, v43, v1031, v42, v44, v45);
  v1046 = objc_msgSend_stringWithFormat_(v35, v47, @"%@_%@", v48, v49, v50, v36, v46);

  *buf = 0;
  *v1089 = 0;
  *&__p[0] = 0;
  v5 = objc_msgSend_retrieveActivationMatrixForDrawing_recognitionEngineCachingKey_outStrokeIndexMapping_outStrokeEndings_outPrincipalPoints_(v1032, v51, v1051, v1046, buf, v1089, __p);
  v52 = *buf;
  spid = *v1089;
  obj = *&__p[0];
  v1040 = v5;
  if (v5 && v52)
  {
    v1077 = __src;
    v58 = objc_msgSend_count(v52, v53, v54, v55, v56, v57);
    if (v58 > (v1078 - __src) >> 3)
    {
      if (!(v58 >> 61))
      {
        operator new();
      }

      sub_18368964C();
    }

    for (i = 0; ; ++i)
    {
      v5 = v1040;
      if (i >= objc_msgSend_count(v52, v59, v60, v61, v62, v63))
      {
        break;
      }

      v65 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, i, v55, v56, v57);
      v71 = objc_msgSend_integerValue(v65, v66, v67, v68, v69, v70);
      v72 = v1077;
      if (v1077 >= v1078)
      {
        v74 = __src;
        v75 = v1077 - __src;
        v76 = (v1077 - __src) >> 3;
        v77 = v76 + 1;
        if ((v76 + 1) >> 61)
        {
          sub_18368964C();
        }

        v78 = v1078 - __src;
        if ((v1078 - __src) >> 2 > v77)
        {
          v77 = v78 >> 2;
        }

        if (v78 >= 0x7FFFFFFFFFFFFFF8)
        {
          v79 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = v77;
        }

        if (v79)
        {
          if (!(v79 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        *(8 * v76) = v71;
        v73 = 8 * v76 + 8;
        memcpy(0, v74, v75);
        __src = 0;
        v1077 = v73;
        v1078 = 0;
      }

      else
      {
        *v1077 = v71;
        v73 = (v72 + 8);
      }

      v1077 = v73;
    }
  }

  if (v5 && spid)
  {
    v1074 = v1073;
    v80 = objc_msgSend_activations(v5, v53, v54, v55, v56, v57);
    v86 = objc_msgSend_timestepCount(v80, v81, v82, v83, v84, v85);
    if (v86 > (v1075 - v1073) >> 3)
    {
      if (!(v86 >> 61))
      {
        operator new();
      }

      sub_18368964C();
    }

    v87 = 0;
    objc_msgSend_activations(v1040, v88, v89, v90, v91, v92);
    while (1)
      v93 = {;
      v99 = v87 < objc_msgSend_timestepCount(v93, v94, v95, v96, v97, v98);

      v5 = v1040;
      if (!v99)
      {
        break;
      }

      v109 = v1074;
      if (objc_msgSend_containsIndex_(spid, v100, v87, v101, v102, v103))
      {
        if (v1074 < v1075)
        {
          *v1074 = 1;
          v110 = (v109 + 8);
          goto LABEL_64;
        }

        v111 = v1073;
        v112 = v1074 - v1073;
        v117 = (v1074 - v1073) >> 3;
        v118 = v117 + 1;
        if ((v117 + 1) >> 61)
        {
          sub_18368964C();
        }

        v119 = v1075 - v1073;
        if ((v1075 - v1073) >> 2 > v118)
        {
          v118 = v119 >> 2;
        }

        if (v119 >= 0x7FFFFFFFFFFFFFF8)
        {
          v120 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v120 = v118;
        }

        if (v120)
        {
          if (!(v120 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        *(8 * v117) = 1;
        v110 = 8 * v117 + 8;
      }

      else
      {
        if (v1074 < v1075)
        {
          *v1074 = 0;
          v110 = (v109 + 8);
          goto LABEL_64;
        }

        v111 = v1073;
        v112 = v1074 - v1073;
        v113 = (v1074 - v1073) >> 3;
        v114 = v113 + 1;
        if ((v113 + 1) >> 61)
        {
          sub_18368964C();
        }

        v115 = v1075 - v1073;
        if ((v1075 - v1073) >> 2 > v114)
        {
          v114 = v115 >> 2;
        }

        if (v115 >= 0x7FFFFFFFFFFFFFF8)
        {
          v116 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v116 = v114;
        }

        if (v116)
        {
          if (!(v116 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        *(8 * v113) = 0;
        v110 = 8 * v113 + 8;
      }

      memcpy(0, v111, v112);
      v1073 = 0;
      v1074 = v110;
      v1075 = 0;
      if (v111)
      {
        operator delete(v111);
      }

      v5 = v1040;
LABEL_64:
      v1074 = v110;
      ++v87;
      objc_msgSend_activations(v5, v104, v105, v106, v107, v108);
    }
  }

  v29 = 0;
  if (v5 && obj)
  {
    v121 = obj;
    v29 = obj;
  }

LABEL_98:
  v122 = v29;
  v1072 = 0.0;
  if (v1040)
  {
    v1028 = v122;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    p_super = qword_1EA84DC58;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      v129 = objc_msgSend_description(selfCopy->_configuration, v124, v125, v126, v127, v128);
      v135 = objc_msgSend_description(v1051, v130, v131, v132, v133, v134);
      *buf = 138412546;
      *&buf[4] = v129;
      *&buf[12] = 2112;
      *&buf[14] = v135;
      _os_log_impl(&dword_18366B000, p_super, OS_LOG_TYPE_DEBUG, "Activation matrix retrieved from inference cache for config %@ and drawing %@.", buf, 0x16u);
    }

    v1023 = 0;
    goto LABEL_150;
  }

  if (qword_1EA84DC48 != -1)
  {
    v1018 = v122;
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v122 = v1018;
  }

  v136 = v122;
  v137 = qword_1EA84DC58;
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
  {
    v143 = objc_msgSend_description(selfCopy->_configuration, v138, v139, v140, v141, v142);
    v149 = objc_msgSend_description(v1051, v144, v145, v146, v147, v148);
    *buf = 138412546;
    *&buf[4] = v143;
    *&buf[12] = 2112;
    *&buf[14] = v149;
    _os_log_impl(&dword_18366B000, v137, OS_LOG_TYPE_DEBUG, "Obtaining activation matrix by model inference for config %@ and drawing %@.", buf, 0x16u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v150 = qword_1EA84DC88;
  spid = os_signpost_id_generate(v150);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v151 = qword_1EA84DC88;
  v152 = v151;
  v153 = (spid - 1);
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v151))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v152, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHRecognizerActivationMatrix", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v154 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v154, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognizerActivationMatrix", buf, 2u);
  }

  v155 = v1053;
  v160 = v155;
  *buf = 0x4034000000000000;
  if (v1053)
  {
    v161 = objc_msgSend_objectForKey_(v155, v156, CHRecognitionOptionMinSizeForReliableRescaling, v157, v158, v159);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_getValue_(v161, v162, buf, v163, v164, v165);
    }

    v166 = *buf;
    v167 = v160;
    *buf = *MEMORY[0x1E695EFF8];
    v172 = objc_msgSend_objectForKey_(v167, v168, CHRecognitionOptionDrawingAnchorPoint, v169, v170, v171);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_getValue_(v172, v173, buf, v174, v175, v176);
    }

    v177 = *buf;
    v178 = *&buf[8];
    v179 = v136;
    v180 = selfCopy;
    v181 = selfCopy->_activeCharacterSet;
    if (!v181)
    {
      goto LABEL_130;
    }
  }

  else
  {

    v187 = v160;
    *buf = *MEMORY[0x1E695EFF8];
    v188 = *buf;
    v178 = *&buf[8];
    if (objc_msgSend_mode(selfCopy->_configuration, v189, v190, v191, v192, v193) == 1)
    {
      v178 = -20.0;
      v177 = 0.0;
    }

    else
    {
      v177 = v188;
    }

    v166 = 20.0;
    v179 = v136;
    v180 = selfCopy;
    v181 = selfCopy->_activeCharacterSet;
    if (!v181)
    {
LABEL_130:
      v181 = objc_msgSend_forcedActiveCharacterSet(v180->_configuration, v182, v183, v184, v185, v186);
    }
  }

  p_super = &v181->super;
  v194 = selfCopy->_recognitionModel;
  v1070 = v179;
  v1071 = 0;
  v1040 = objc_msgSend_recognizeDrawing_minimumDrawingSize_initialVectorAnchorPoint_activeCharacterSet_outStrokeIndexMapping_outStrokeEndings_outFallbackSymbol_outFallbackSymbolScore_outPrincipalLinePoints_locales_(v194, v195, v1051, p_super, &__src, &v1073, &v1071, &v1072, v166, v166, v177, v178, &v1070, v1031);
  v1023 = v1071;
  v5 = v1070;

  if (v1032)
  {
    v205 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v196, (v1077 - __src) >> 3, v197, v198, v199);
    v206 = __src;
    if (v1077 != __src)
    {
      v207 = 0;
      do
      {
        v208 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v200, v206[v207], v202, v203, v204);
        objc_msgSend_addObject_(v205, v209, v208, v210, v211, v212);

        ++v207;
        v206 = __src;
      }

      while (v207 < (v1077 - __src) >> 3);
    }

    v218 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v200, v201, v202, v203, v204);
    v219 = v1074;
    v220 = v1073;
    if (v1074 != v1073)
    {
      v221 = 0;
      do
      {
        if (v220[v221] >= 1)
        {
          objc_msgSend_addIndex_(v218, v213, v221, v215, v216, v217);
          v219 = v1074;
          v220 = v1073;
        }

        ++v221;
      }

      while (v221 < (v219 - v220) >> 3);
    }

    v222 = MEMORY[0x1E696AEC0];
    v223 = objc_msgSend_recognitionEngineCachingKey(selfCopy, v213, v214, v215, v216, v217);
    v229 = objc_msgSend_locale(selfCopy, v224, v225, v226, v227, v228);
    v233 = objc_msgSend_cachingKeyFromRelevantLocales_forLocale_(CHRecognizerConfiguration, v230, v1031, v229, v231, v232);
    v238 = objc_msgSend_stringWithFormat_(v222, v234, @"%@_%@", v235, v236, v237, v223, v233);

    objc_msgSend_cacheActivationMatrix_strokeIndexMapping_strokeEndings_principalPoints_drawing_recognitionEngineCachingKey_(v1032, v239, v1040, v205, v218, v5, v1051, v238);
  }

  if (qword_1EA84DC48 == -1)
  {
    v240 = qword_1EA84DC88;
    if (v153 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_143;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v240 = qword_1EA84DC88;
    if (v153 <= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_143:
      if (os_signpost_enabled(v240))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v240, OS_SIGNPOST_INTERVAL_END, spid, "CHRecognizerActivationMatrix", "", buf, 2u);
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v241 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v241, OS_LOG_TYPE_DEFAULT, "END CHRecognizerActivationMatrix", buf, 2u);
  }

  v1028 = v5;
LABEL_150:

  if (points && v1028)
  {
    spid = objc_msgSend_array(MEMORY[0x1E695DF70], v242, v243, v244, v245, v246);
    v1068 = 0u;
    v1069 = 0u;
    v1066 = 0u;
    v1067 = 0u;
    obja = v1028;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v247, &v1066, v1083, 16, v248);
    if (v5)
    {
      v254 = *v1067;
      do
      {
        for (j = 0; j != v5; j = j + 1)
        {
          if (*v1067 != v254)
          {
            objc_enumerationMutation(obja);
          }

          v256 = *(*(&v1066 + 1) + 8 * j);
          v257 = objc_msgSend_array(MEMORY[0x1E695DF70], v249, v250, v251, v252, v253);
          v1064 = 0u;
          v1065 = 0u;
          v1062 = 0u;
          v1063 = 0u;
          v258 = v256;
          v265 = objc_msgSend_countByEnumeratingWithState_objects_count_(v258, v259, &v1062, v1082, 16, v260);
          if (v265)
          {
            v266 = *v1063;
            do
            {
              for (k = 0; k != v265; ++k)
              {
                if (*v1063 != v266)
                {
                  objc_enumerationMutation(v258);
                }

                v268 = *(*(&v1062 + 1) + 8 * k);
                v269 = objc_msgSend_indexAtPosition_(v268, v261, 0, v262, v263, v264);
                *buf = *(__src + v269);
                *&buf[8] = objc_msgSend_indexAtPosition_(v268, v270, 1, v271, v272, v273);
                v277 = objc_msgSend_indexPathWithIndexes_length_(MEMORY[0x1E696AC88], v274, buf, 2, v275, v276);
                objc_msgSend_addObject_(v257, v278, v277, v279, v280, v281);
              }

              v265 = objc_msgSend_countByEnumeratingWithState_objects_count_(v258, v261, &v1062, v1082, 16, v264);
            }

            while (v265);
          }

          objc_msgSend_addObject_(spid, v282, v257, v283, v284, v285);
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v249, &v1066, v1083, 16, v253);
      }

      while (v5);
    }

    v286 = spid;
    *points = spid;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v287 = qword_1EA84DC88;
  v1024 = os_signpost_id_generate(v287);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v288 = qword_1EA84DC88;
  v289 = v288;
  if (v1024 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v288))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v289, OS_SIGNPOST_INTERVAL_BEGIN, v1024, "CHRecognizerDecoding", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v290 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v290, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognizerDecoding", buf, 2u);
  }

  v291 = sub_1836C38CC(selfCopy, v1053);
  v1030 = objc_msgSend_precomposedStringWithCanonicalMapping(v291, v292, v293, v294, v295, v296);

  if (v1030)
  {
    v302 = objc_msgSend_length(v1030, v297, v298, v299, v300, v301);
    v297 = v1053;
    if (v302)
    {
      if (sub_1836C398C(selfCopy, v1053) == 2)
      {
        v307 = objc_msgSend_stringByAppendingString_(v1030, v303, @" ", v304, v305, v306);
      }

      else
      {
        v307 = v1030;
      }

      v1030 = v307;
      v366 = sub_1837A4FC0(v307);
      v372 = objc_msgSend_length(v307, v367, v368, v369, v370, v371);
      v378 = objc_msgSend_length(v366, v373, v374, v375, v376, v377);
      spid = objc_msgSend_length(v366, v379, v380, v381, v382, v383);

      v308 = 0;
      v5 = (v372 - v378);
      if (!selfCopy->_textDecoder.__engaged_)
      {
        goto LABEL_188;
      }

LABEL_184:
      v309 = objc_msgSend_activations(v1040, v297, v298, v299, v300, v301);
      v315 = objc_msgSend_getActivationsMultiArray(v309, v310, v311, v312, v313, v314);

      v321 = objc_msgSend_activations(v1040, v316, v317, v318, v319, v320);
      v327 = objc_msgSend_getIndicesMultiArray(v321, v322, v323, v324, v325, v326);

      v333 = objc_msgSend_activations(v1040, v328, v329, v330, v331, v332);
      v339 = objc_msgSend_timestepCount(v333, v334, v335, v336, v337, v338);
      v345 = objc_msgSend_activations(v1040, v340, v341, v342, v343, v344);
      v351 = objc_msgSend_observationCount(v345, v346, v347, v348, v349, v350);
      v352 = v315;
      v358 = objc_msgSend_dataPointer(v315, v353, v354, v355, v356, v357);
      if (v327)
      {
        v359 = v327;
        v365 = objc_msgSend_dataPointer(v327, v360, v361, v362, v363, v364);
      }

      else
      {
        v365 = 0;
      }

      *buf = v339;
      *&buf[8] = v351;
      *&buf[16] = 0u;
      *v1085 = 0u;
      v1086 = 0u;
      v1087 = v358;
      v1088 = v365;

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v433 = qword_1EA84DC58;
      if (os_log_type_enabled(v433, OS_LOG_TYPE_DEBUG))
      {
        *v1089 = 134218240;
        *&v1089[4] = *buf;
        *&v1089[12] = 2048;
        *&v1089[14] = *&buf[8];
        _os_log_impl(&dword_18366B000, v433, OS_LOG_TYPE_DEBUG, "CTCMOD logActivations.shape=(%lu, %lu)", v1089, 0x16u);
      }

      if (v308)
      {
        memset(v1089, 0, 24);
      }

      else
      {
        sub_1836B4BA8(&cf, v1030);
        v434 = cf;
        if (cf)
        {
          CFRetain(cf);
          *v1089 = v434;
          *&v1089[8] = v5;
          *&v1089[16] = spid;
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          *v1089 = 0;
          *&v1089[8] = v5;
          *&v1089[16] = spid;
        }
      }

      (*(selfCopy->_textDecoder.var0.__val_._vptr$AbstractCTCDecoder + 2))(__p);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v435 = qword_1EA84DC58;
      if (os_log_type_enabled(v435, OS_LOG_TYPE_DEBUG))
      {
        *v1080 = 134217984;
        *&v1080[4] = 0xCCCCCCCCCCCCCCCDLL * ((*(&__p[0] + 1) - *&__p[0]) >> 3);
        _os_log_impl(&dword_18366B000, v435, OS_LOG_TYPE_DEBUG, "CTCMOD num paths %lu", v1080, 0xCu);
      }

      v1060 = v1040;
      v432 = convertToCVNLPTextDecodingResult();

      v436 = *&__p[0];
      if (*&__p[0])
      {
        v437 = *(&__p[0] + 1);
        v438 = *&__p[0];
        if (*(&__p[0] + 1) != *&__p[0])
        {
          v439 = *(&__p[0] + 1);
          do
          {
            v442 = *(v439 - 5);
            v439 -= 5;
            v441 = v442;
            if (v442)
            {
              v443 = *(v437 - 4);
              v440 = v441;
              if (v443 != v441)
              {
                v444 = *(v437 - 4);
                do
                {
                  v446 = *(v444 - 8);
                  v444 -= 64;
                  v445 = v446;
                  if (v446)
                  {
                    *(v443 - 7) = v445;
                    operator delete(v445);
                  }

                  v443 = v444;
                }

                while (v444 != v441);
                v440 = *v439;
              }

              *(v437 - 4) = v441;
              operator delete(v440);
            }

            v437 = v439;
          }

          while (v439 != v436);
          v438 = *&__p[0];
        }

        *(&__p[0] + 1) = v436;
        operator delete(v438);
      }

      if (*v1089)
      {
        CFRelease(*v1089);
      }

      if (v1085[1])
      {
        *&v1086 = v1085[1];
        operator delete(v1085[1]);
      }

      if (*&buf[16])
      {
        *&buf[24] = *&buf[16];
        operator delete(*&buf[16]);
      }

      goto LABEL_237;
    }
  }

  else
  {
    v1030 = 0;
  }

  v308 = 1;
  if (selfCopy->_textDecoder.__engaged_)
  {
    goto LABEL_184;
  }

LABEL_188:
  v384 = objc_msgSend_activations(v1040, v297, v298, v299, v300, v301);
  objc_msgSend_setActivationMatrix_(selfCopy->_legacyTextDecoder, v385, v384, v386, v387, v388);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v389 = qword_1EA84DC58;
  if (os_log_type_enabled(v389, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v389, OS_LOG_TYPE_DEBUG, "Using the CVNLP Text Decoder", buf, 2u);
  }

  v315 = objc_msgSend_decodingCommitActionBlock(selfCopy->_configuration, v390, v391, v392, v393, v394);
  configuration = selfCopy->_configuration;
  v401 = objc_msgSend_languageResourceBundle(selfCopy->_legacyTextDecoder, v396, v397, v398, v399, v400);
  v327 = objc_msgSend_pathScoringFunctionForLanguageResourceBundle_(configuration, v402, v401, v403, v404, v405);

  v411 = objc_msgSend__effectiveMaxRecognitionResultCount(selfCopy, v406, v407, v408, v409, v410);
  v417 = v411;
  if (2 * v411 <= 20)
  {
    v418 = 20;
  }

  else
  {
    v418 = 2 * v411;
  }

  v419 = objc_msgSend_mixedScriptPenalty(selfCopy->_configuration, v412, v413, v414, v415, v416);
  v420 = objc_alloc(MEMORY[0x1E6991FF8]);
  v422 = v419 == 1;
  if (v417 <= 3)
  {
    shouldOptimizeAlignment_pruneProblematicMixedScriptWordPaths = objc_msgSend_initWithCommitActionBehavior_scoringFunction_beamWidth_pathCount_shouldOptimizeAlignment_pruneProblematicMixedScriptWordPaths_(v420, v421, v315, v327, v418, 3, 1, v422);
  }

  else
  {
    shouldOptimizeAlignment_pruneProblematicMixedScriptWordPaths = objc_msgSend_initWithCommitActionBehavior_scoringFunction_beamWidth_pathCount_shouldOptimizeAlignment_pruneProblematicMixedScriptWordPaths_(v420, v421, v315, v327, v418, v417, 1, v422);
  }

  v427 = shouldOptimizeAlignment_pruneProblematicMixedScriptWordPaths;
  if (v308)
  {
    v428 = 0;
  }

  else
  {
    v429 = objc_alloc(MEMORY[0x1E6992008]);
    v428 = objc_msgSend_initWithHistory_activeRange_(v429, v430, v1030, v5, spid, v431);
  }

  v432 = objc_msgSend_decodingResultWithConfiguration_withContext_(selfCopy->_legacyTextDecoder, v424, v427, v428, v425, v426);

LABEL_237:
  v1025 = sub_1836C398C(selfCopy, v1053);
  v452 = objc_msgSend_mode(selfCopy->_configuration, v447, v448, v449, v450, v451);
  v1029 = v432;
  v1026 = v1053;
  v1044 = v1051;
  v458 = objc_msgSend_modelName(selfCopy->_recognitionModel, v453, v454, v455, v456, v457);
  v464 = objc_msgSend_modelNameChinese(CHRecognizerConfiguration, v459, v460, v461, v462, v463);
  isEqualToString = objc_msgSend_isEqualToString_(v458, v465, v464, v466, v467, v468);

  if (isEqualToString)
    v1043 = {;
  }

  else
  {
    v1043 = 0;
  }

  v474 = sub_1836C38CC(selfCopy, v1026);
  v1021 = objc_msgSend_precomposedStringWithCanonicalMapping(v474, v475, v476, v477, v478, v479);

  v480 = v1026;
  v485 = v480;
  if (v1053)
  {
    v487 = objc_msgSend_objectForKey_(v480, v481, CHRecognitionOptionTextAfter, v482, v483, v484);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v486 = v487;
    }

    else
    {
      v486 = 0;
    }
  }

  else
  {
    v486 = 0;
  }

  v1020 = v485;

  v1022 = objc_msgSend_precomposedStringWithCanonicalMapping(v486, v488, v489, v490, v491, v492);

  if (!v1029 || (objc_msgSend_candidates(v1029, v493, v494, v495, v496, v497), v498 = objc_claimAutoreleasedReturnValue(), v504 = objc_msgSend_count(v498, v499, v500, v501, v502, v503) == 0, v498, v504))
  {
    v929 = 0;
  }

  else
  {
    v1037 = objc_msgSend_array(MEMORY[0x1E695DF70], v505, v506, v507, v508, v509);
    v1036 = objc_msgSend_array(MEMORY[0x1E695DF70], v510, v511, v512, v513, v514);
    v1079 = v1025 == 2;
    v520 = objc_msgSend_candidates(v1029, v515, v516, v517, v518, v519);
    v526 = objc_msgSend_count(v520, v521, v522, v523, v524, v525) == 0;

    v1019 = @" ";
    if (!v526)
    {
      v532 = objc_msgSend_candidates(v1029, v527, v528, v529, v530, v531);
      v538 = objc_msgSend_firstObject(v532, v533, v534, v535, v536, v537);
      v544 = objc_msgSend_fullString(v538, v539, v540, v541, v542, v543);
      v548 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v544, v545, @"", &stru_1EF1C0318, v546, v547);

      if (v452 == 1)
      {
        if (objc_msgSend_length(v548, v549, v550, v551, v552, v553))
        {
          v554 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v548, v549, 0, v551, v552, v553);
          v556 = v555;
          if (v555 < objc_msgSend_length(v548, v555, v557, v558, v559, v560))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v561 = qword_1EA84DC58;
            if (os_log_type_enabled(v561, OS_LOG_TYPE_ERROR))
            {
              v567 = objc_msgSend_countCodepoints(v548, v562, v563, v564, v565, v566);
              *buf = 134217984;
              *&buf[4] = v567;
              _os_log_impl(&dword_18366B000, v561, OS_LOG_TYPE_ERROR, "Decoder predicted string with %ld code points in single character mode, truncating results to 1 character.", buf, 0xCu);
            }

            v571 = objc_msgSend_substringWithRange_(v548, v568, v554, v556, v569, v570);

            v548 = v571;
          }
        }
      }

      v572 = objc_msgSend_locale(selfCopy->_configuration, v549, v550, v551, v552, v553);
      *v1080 = @" ";
      objc_msgSend__updatePrecedingAndTrailingSeparatorsForTopCandidate_history_textAfter_locale_outTrailingSeparator_inFirstTokenHasPrecedingSpace_outFirstTokenHasPrecedingSpace_(CHRecognizer, v573, v548, v1021, v1022, v572, v1080, v1025 == 2, &v1079);
      v1019 = *v1080;
    }

    v1042 = objc_msgSend_rootCursorForPatternType_inNetwork_forFirstSegmentGroup_(CHPatternNetwork, v527, 1, selfCopy->_patternFST, 0, v531);
    v1090 = 0u;
    v1091 = 0u;
    memset(v1089, 0, sizeof(v1089));
    v1035 = objc_msgSend_candidates(v1029, v574, v575, v576, v577, v578);
    v1039 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1035, v579, v1089, buf, 16, v580);
    if (v1039)
    {
      v1038 = **&v1089[16];
      do
      {
        for (m = 0; m != v1039; ++m)
        {
          if (**&v1089[16] != v1038)
          {
            objc_enumerationMutation(v1035);
          }

          v1049 = *(*&v1089[8] + 8 * m);
          v1045 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v581, v582, v583, v584, v585);
          v1047 = objc_msgSend_array(MEMORY[0x1E695DF70], v586, v587, v588, v589, v590);
          v1052 = 0;
          v1054 = 0;
          v596 = 0;
          v597 = v1079;
          while (1)
          {
            v598 = objc_msgSend_tokens(v1049, v591, v592, v593, v594, v595);
            v604 = v1052 < objc_msgSend_count(v598, v599, v600, v601, v602, v603);

            if (!v604)
            {
              break;
            }

            v610 = objc_msgSend_tokens(v1049, v605, v606, v607, v608, v609);
            spida = objc_msgSend_objectAtIndexedSubscript_(v610, v611, v1052, v612, v613, v614);

            v620 = objc_msgSend_score(spida, v615, v616, v617, v618, v619);
            objc_msgSend_doubleValue(v620, v621, v622, v623, v624, v625);
            v627 = v626;

            v633 = objc_msgSend_string(spida, v628, v629, v630, v631, v632);
            v637 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v633, v634, @" ", &stru_1EF1C0318, v635, v636);

            objb = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v637, v638, @"", &stru_1EF1C0318, v639, v640);

            v646 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v641, v642, v643, v644, v645);
            v652 = objc_msgSend_activationRange(spida, v647, v648, v649, v650, v651);
            objc_msgSend_activationRange(spida, v653, v654, v655, v656, v657);
            v663 = &v658[v652];
            v664 = (v1074 - v1073) >> 3;
            if (&v658[v652] > v664)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v665 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v665, OS_LOG_TYPE_ERROR))
              {
                LOWORD(__p[0]) = 0;
                _os_log_impl(&dword_18366B000, v665, OS_LOG_TYPE_ERROR, "The token activation range is longer than the sequence in the activation matrix.", __p, 2u);
              }

              v664 = (v1074 - v1073) >> 3;
            }

            if (v663 > v664)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v666 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v666, OS_LOG_TYPE_FAULT))
              {
                LOWORD(__p[0]) = 0;
                _os_log_impl(&dword_18366B000, v666, OS_LOG_TYPE_FAULT, "The token activation range is longer than the sequence in the activation matrix.", __p, 2u);
              }
            }

            v672 = objc_msgSend_activationRange(spida, v658, v659, v660, v661, v662);
            if (v672 < v663)
            {
              v673 = v1073;
              do
              {
                if (v673[v672] >= 1)
                {
                  v674 = 0;
                  do
                  {
                    objc_msgSend_addIndex_(v646, v667, v596++, v669, v670, v671);
                    ++v674;
                    v673 = v1073;
                  }

                  while (v674 < *(v1073 + v672));
                }

                ++v672;
              }

              while (v672 != v663);
            }

            if (!objc_msgSend_count(v646, v667, v668, v669, v670, v671) && objc_msgSend_length(objb, v675, v676, v677, v678, v679))
            {
              if (objc_msgSend_count(v1054, v680, v681, v682, v683, v684))
              {
                Index = objc_msgSend_lastIndex(v1054, v685, v686, v687, v688, v689);
                objc_msgSend_addIndex_(v646, v691, Index, v692, v693, v694);
              }

              else
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v695 = qword_1EA84DC58;
                if (os_log_type_enabled(v695, OS_LOG_TYPE_ERROR))
                {
                  v701 = objc_msgSend_string(spida, v696, v697, v698, v699, v700);
                  LODWORD(__p[0]) = 138412290;
                  *(__p + 4) = v701;
                  _os_log_impl(&dword_18366B000, v695, OS_LOG_TYPE_ERROR, "Previous token stroke index set is empty, and current token %@ stroke index set is also empty", __p, 0xCu);
                }

                objc_msgSend_addIndex_(v646, v702, 0, v703, v704, v705);
              }
            }

            v706 = v646;

            v1054 = v706;
            if (objc_msgSend_length(objb, v707, v708, v709, v710, v711))
            {
              if (v1043)
              {
                objc_msgSend_activationRange(spida, v712, v713, v714, v715, v716);
                if (v712 <= 2)
                {
                  v717 = objc_msgSend_codepointAtIndex_outRange_(objb, v712, 0, __p, v715, v716);
                  v723 = objc_msgSend_length(objb, v718, v719, v720, v721, v722);
                  if (v723 > *(&__p[0] + 1) || (objc_msgSend_longCharacterIsMember_(v1043, v724, v717, v725, v726, v727) & 1) == 0)
                  {

                    objb = @".";
                  }
                }
              }

              objc_msgSend_addIndexes_(v1054, v712, v1045, v714, v715, v716);
              objc_msgSend_removeAllIndexes(v1045, v728, v729, v730, v731, v732);
              LOBYTE(__p[0]) = 0;
              mCFObject = selfCopy->_staticLexicon.mCFObject;
              if (mCFObject)
              {
                v738 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v733, objb, mCFObject, v735, v736);
                if ((objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v739, objb, selfCopy->_staticLexicon.mCFObject, __p, v740) & 1) == 0)
                {
                  v741 = selfCopy->_customLexicon.mCFObject;
                  if (!v741)
                  {
LABEL_312:
                    v815 = 8;
LABEL_317:
                    if (v597)
                    {
                      v817 = v815 | 0x20;
                    }

                    else
                    {
                      v817 = v815;
                    }

                    v818 = objc_msgSend_lastObject(v1047, v733, v734, v741, v735, v736);
                    v824 = objc_msgSend_string(v818, v819, v820, v821, v822, v823);
                    v830 = objc_msgSend_lastComposedCharacter(v824, v825, v826, v827, v828, v829);

                    v836 = objc_msgSend_firstComposedCharacter(objb, v831, v832, v833, v834, v835);
                    if (sub_1837A95F4(v830, v836))
                    {
                      v839 = v817 & 0xFFFFFFFFFFFFFFDFLL;
                    }

                    else
                    {
                      v839 = v817;
                    }

                    if (!v1052)
                    {
                      v840 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v837, objb, v1042, selfCopy->_patternFST, v838);
                      v846 = v840;
                      if (v840)
                      {
                        if (objc_msgSend_isCompletePattern(v840, v841, v842, v843, v844, v845))
                        {
                          v839 |= 0x80uLL;
                        }
                      }
                    }

                    v847 = sub_1837A7E0C(v1054, &__src);
                    objc_msgSend_boundsForStrokeIndexes_(v1044, v848, v847, v849, v850, v851);
                    v853 = v852;
                    v855 = v854;
                    v857 = v856;
                    v859 = v858;
                    v860 = [CHTokenizedTextResultToken alloc];
                    v866 = objc_msgSend_alignmentScore(spida, v861, v862, v863, v864, v865);
                    objc_msgSend_doubleValue(v866, v867, v868, v869, v870, v871);
                    v873 = v872;
                    v879 = objc_msgSend_locale(selfCopy->_configuration, v874, v875, v876, v877, v878);
                    v885 = objc_msgSend_count(v847, v880, v881, v882, v883, v884);
                    v887 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v860, v886, objb, v847, v738, v839, v879, 2, v627, v627, v627, v873, v853, v855, v857, v859, v885);

                    objc_msgSend_addObject_(v1047, v888, v887, v889, v890, v891);
                    v897 = objc_msgSend_terminatingCharacter(spida, v892, v893, v894, v895, v896);
                    v597 = objc_msgSend_isEqualToString_(v897, v898, @" ", v899, v900, v901);

                    goto LABEL_329;
                  }

LABEL_307:
                  v738 = objc_msgSend_tokenIDForString_withLexicon_(CHLanguageUtilities, v733, objb, v741, v735, v736);
                  if (!objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v813, objb, selfCopy->_customLexicon.mCFObject, __p, v814))
                  {
                    goto LABEL_312;
                  }
                }

                if (objc_msgSend_isInappropriateTokenID_(selfCopy->_ovsStringChecker, v733, v738, v741, v735, v736))
                {
                  v815 = 28;
                  if (LOBYTE(__p[0]))
                  {
                    v815 = 284;
                  }
                }

                else
                {
                  isInappropriateString = objc_msgSend_isInappropriateString_(selfCopy->_ovsStringChecker, v733, objb, v741, v735, v736);
                  v815 = 12;
                  if (LOBYTE(__p[0]))
                  {
                    v815 = 268;
                  }

                  if (isInappropriateString)
                  {
                    v815 |= 0x10uLL;
                  }
                }

                goto LABEL_317;
              }

              v738 = 0;
              v741 = selfCopy->_customLexicon.mCFObject;
              if (!v741)
              {
                goto LABEL_312;
              }

              goto LABEL_307;
            }

            v742 = objc_msgSend_terminatingCharacter(spida, v712, v713, v714, v715, v716);
            v747 = objc_msgSend_isEqualToString_(v742, v743, @" ", v744, v745, v746);

            v597 |= v747;
            if (objc_msgSend_count(v1054, v748, v749, v750, v751, v752))
            {
              if (objc_msgSend_count(v1047, v753, v754, v755, v756, v757))
              {
                v763 = objc_msgSend_lastObject(v1047, v758, v759, v760, v761, v762);
                v764 = sub_1837A7E0C(v1054, &__src);
                objc_msgSend_boundsForStrokeIndexes_(v1044, v765, v764, v766, v767, v768);
                v770 = v769;
                v772 = v771;
                v774 = v773;
                v776 = v775;
                objc_msgSend_bounds(v763, v777, v778, v779, v780, v781);
                v1095.origin.x = v770;
                v1095.origin.y = v772;
                v1095.size.width = v774;
                v1095.size.height = v776;
                CGRectUnion(v1094, v1095);
                v782 = objc_opt_class();
                v788 = objc_msgSend_alignmentScore(spida, v783, v784, v785, v786, v787);
                objc_msgSend_doubleValue(v788, v789, v790, v791, v792, v793);
                v797 = objc_msgSend_extendedToken_withStrokeIndexSet_alignmentScore_bounds_(v782, v794, v763, v764, v795, v796);

                v803 = objc_msgSend_lastIndex(v1054, v798, v799, v800, v801, v802);
                v809 = objc_msgSend_count(v1047, v804, v805, v806, v807, v808);
                objc_msgSend_setObject_atIndexedSubscript_(v1047, v810, v797, v809 - 1, v811, v812);

                v596 = v803 + 1;
              }

              else
              {
                objc_msgSend_addIndexes_(v1045, v758, v1054, v760, v761, v762);
              }
            }

LABEL_329:

            ++v1052;
          }

          if (objc_msgSend_count(v1047, v605, v606, v607, v608, v609))
          {
            objc_msgSend_addObject_(v1037, v902, v1047, v903, v904, v905);
            v906 = MEMORY[0x1E696AD98];
            objc_msgSend_score(v1049, v907, v908, v909, v910, v911);
            v917 = objc_msgSend_numberWithDouble_(v906, v912, v913, v914, v915, v916);
            objc_msgSend_addObject_(v1036, v918, v917, v919, v920, v921);
          }
        }

        v1039 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1035, v581, v1089, buf, 16, v585);
      }

      while (v1039);
    }

    if (objc_msgSend_count(v1037, v922, v923, v924, v925, v926))
    {
      v927 = [CHTokenizedTextResult alloc];
      v929 = objc_msgSend_initWithBestPathTokens_pathProbabilities_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v927, v928, v1037, v1036, v1019, 2, 0);
    }

    else
    {
      v929 = 0;
    }
  }

  if (!v929)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v930 = qword_1EA84DC58;
    if (os_log_type_enabled(v930, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v930, OS_LOG_TYPE_ERROR, "Text decoding unexpectedly leads to empty result - falling back on single-character result from the activation matrix.", buf, 2u);
    }

    v931 = v1072;
    v932 = v1044;
    v938 = v1023;
    if (v1025 == 2)
    {
      v939 = 40;
    }

    else
    {
      v939 = 8;
    }

    v940 = MEMORY[0x1E696AC90];
    v941 = objc_msgSend_strokeCount(v932, v933, v934, v935, v936, v937);
    v945 = objc_msgSend_indexSetWithIndexesInRange_(v940, v942, 0, v941, v943, v944);
    if (v938)
    {
      v946 = [CHTokenizedTextResultToken alloc];
      v952 = objc_msgSend_locale(selfCopy->_configuration, v947, v948, v949, v950, v951);
      v958 = objc_msgSend_strokeCount(v932, v953, v954, v955, v956, v957);
      objc_msgSend_bounds(v932, v959, v960, v961, v962, v963);
      v969 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v946, v964, v938, v945, 0, v939, v952, 4, v931, v931, v931, v931, v965, v966, v967, v968, v958);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v970 = qword_1EA84DC58;
      if (os_log_type_enabled(v970, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v970, OS_LOG_TYPE_ERROR, "No fallback symbol could be retrieved from the activation matrix. Creating fallback token with empty string.", buf, 2u);
      }

      v971 = [CHTokenizedTextResultToken alloc];
      v952 = objc_msgSend_locale(selfCopy->_configuration, v972, v973, v974, v975, v976);
      v982 = objc_msgSend_strokeCount(v932, v977, v978, v979, v980, v981);
      objc_msgSend_bounds(v932, v983, v984, v985, v986, v987);
      v969 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v971, v988, &stru_1EF1C0318, v945, 0, v939, v952, 4, 0.0, 0.0, 0.0, 0.0, v989, v990, v991, v992, v982);
    }

    v993 = v969;

    v994 = [CHTokenizedTextResult alloc];
    *v1089 = v993;
    v998 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v995, v1089, 1, v996, v997);
    *buf = v998;
    v1002 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v999, buf, 1, v1000, v1001);
    v1008 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v1003, v1004, v1005, v1006, v1007, v931);
    *&__p[0] = v1008;
    v1012 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1009, __p, 1, v1010, v1011);
    v929 = objc_msgSend_initWithBestPathTokens_pathProbabilities_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v994, v1013, v1002, v1012, &stru_1EF1C0318, 2, 0);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v1014 = qword_1EA84DC88;
  v1015 = v1014;
  if (v1024 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1014))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v1015, OS_SIGNPOST_INTERVAL_END, v1024, "CHRecognizerDecoding", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v1016 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v1016, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v1016, OS_LOG_TYPE_DEFAULT, "END CHRecognizerDecoding", buf, 2u);
  }

  v28 = v929;
  if (v1073)
  {
    v1074 = v1073;
    operator delete(v1073);
  }

  if (__src)
  {
    v1077 = __src;
    operator delete(__src);
  }

LABEL_370:

  return v28;
}

- (id)recognitionEngineCachingKey
{
  recognitionModel = self->_recognitionModel;
  if (recognitionModel)
  {
    recognitionModel = objc_msgSend_modelName(recognitionModel, a2, v2, v3, v4, v5);
    v6 = vars8;
  }

  return recognitionModel;
}

+ (void)_updatePrecedingAndTrailingSeparatorsForTopCandidate:(id)candidate history:(id)history textAfter:(id)after locale:(id)locale outTrailingSeparator:(id *)separator inFirstTokenHasPrecedingSpace:(BOOL)space outFirstTokenHasPrecedingSpace:(BOOL *)precedingSpace
{
  candidateCopy = candidate;
  historyCopy = history;
  afterCopy = after;
  localeCopy = locale;
  v129 = localeCopy;
  v130 = historyCopy;
  v128 = afterCopy;
  v20 = objc_msgSend_lastComposedCharacter(historyCopy, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_firstComposedCharacter(afterCopy, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_firstComposedCharacter(candidateCopy, v27, v28, v29, v30, v31);
  v133 = v32;
  v38 = objc_msgSend_lastComposedCharacter(candidateCopy, v33, v34, v35, v36, v37);
  v132 = v38;
  v44 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v39, v40, v41, v42, v43);
  v131 = sub_1837A4F0C(v20, v44);

  v50 = objc_msgSend_ch_sentenceEndPunctuationCharacterSet(MEMORY[0x1E696AB08], v45, v46, v47, v48, v49);
  v125 = sub_1837A4F0C(v20, v50);

  v135 = objc_msgSend_length(historyCopy, v51, v52, v53, v54, v55);
  v134 = objc_msgSend_length(afterCopy, v56, v57, v58, v59, v60);
  v66 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v61, v62, v63, v64, v65);
  v124 = sub_1837A4F0C(v26, v66);

  v72 = objc_msgSend_ch_sentenceEndPunctuationCharacterSet(MEMORY[0x1E696AB08], v67, v68, v69, v70, v71);
  v123 = sub_1837A4F0C(v26, v72);

  if (v135 && objc_msgSend_length(v20, v73, v74, v75, v76, v77) == 1)
  {
    v78 = objc_msgSend_firstCodepointInString(v20, v73, v74, v75, v76, v77) == 65532;
    if (!v134)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v78 = 0;
    if (!v134)
    {
      goto LABEL_8;
    }
  }

  if (objc_msgSend_length(v26, v73, v74, v75, v76, v77) == 1)
  {
    v122 = objc_msgSend_firstCodepointInString(v26, v73, v79, v75, v76, v77) == 65532;
    goto LABEL_9;
  }

LABEL_8:
  v122 = 0;
LABEL_9:
  shouldApplyThaiSpacingForLocale = objc_msgSend_shouldApplyThaiSpacingForLocale_(CHRecognizerConfiguration, v73, localeCopy, v75, v76, v77);
  if (sub_1837A93E8(v32))
  {
    v120 = sub_1837A954C(v32) ^ 1;
  }

  else
  {
    LOBYTE(v120) = 0;
  }

  if (sub_1837A93E8(v38))
  {
    v80 = sub_1837A954C(v38) ^ 1;
  }

  else
  {
    LOBYTE(v80) = 0;
  }

  v119 = v78;
  if (sub_1837A93E8(v26))
  {
    v86 = sub_1837A954C(v26) ^ 1;
  }

  else
  {
    LOBYTE(v86) = 0;
  }

  v87 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v81, v82, v83, v84, v85);
  v88 = sub_1837A4F0C(v26, v87);

  v94 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v89, v90, v91, v92, v93);
  v95 = sub_1837A4F0C(v20, v94);

  if (sub_1837A93E8(v20))
  {
    v96 = sub_1837A954C(v20) ^ 1;
  }

  else
  {
    LOBYTE(v96) = 0;
  }

  v118 = sub_1837A95F4(v20, v32);
  v97 = sub_1837A95F4(v132, v26);
  if (objc_msgSend_countCharacters(candidateCopy, v98, v99, v100, v101, v102) < 2)
  {
    v109 = 1;
  }

  else
  {
    v108 = objc_msgSend_ch_latinCharacterSet(MEMORY[0x1E696AB08], v103, v104, v105, v106, v107);
    v109 = sub_1837A4F0C(candidateCopy, v108);
  }

  v110 = ((v131 || v125 || v124 || v88 || v95 || v123 || v135 == 0) | (v134 == 0 || v119 || v122) | v120 ^ v96 | v80 ^ v86) ^ 1;
  v111 = v134 != 0 && !v88 || space;
  if (shouldApplyThaiSpacingForLocale)
  {
    v112 = v80 & v86;
    v111 &= v96 & v120;
    v113 = v110 & v109;
    v114 = v135 == 0;
    separatorCopy2 = separator;
    v116 = v128;
    if (!separator)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v112 = 1;
    v113 = v110 & v109;
    v114 = v135 == 0;
    separatorCopy2 = separator;
    v116 = v128;
    if (!separator)
    {
      goto LABEL_32;
    }
  }

  if (v112 & ~((v88 || v123 || v134 == 0) | v97 | v113))
  {
    v117 = @" ";
  }

  else
  {
    v117 = &stru_1EF1C0318;
  }

  *separatorCopy2 = v117;
LABEL_32:
  if (precedingSpace)
  {
    *precedingSpace = (((v114 || v131 || v95) | v118 | v113) ^ 1) & v111 & 1;
  }
}

- (id)_postprocessingMergedRecognitionResult:(id)result options:(id)options
{
  resultCopy = result;
  optionsCopy = options;
  if (self->_mergedResultPostProcessor)
  {
    v13 = 1;
    if (!resultCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_msgSend__initializeMergedResultPostProcessor(self, v7, v8, v9, v10, v11);
    v13 = self->_mergedResultPostProcessor != 0;
    if (!resultCopy)
    {
      goto LABEL_7;
    }
  }

  if (v13)
  {
    v14 = sub_1836C38CC(self, optionsCopy);
    v15 = [CHResultWithContext alloc];
    v21 = objc_msgSend_contentType(self->_configuration, v16, v17, v18, v19, v20);
    v24 = objc_msgSend_initWithResult_leftContext_contentType_(v15, v22, resultCopy, v14, v21, v23);
    v29 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v25, optionsCopy, v26, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v29, v30, MEMORY[0x1E695E110], qword_1EA84C950, v31, v32);
    v36 = objc_msgSend_process_options_(self->_mergedResultPostProcessor, v33, v24, v29, v34, v35);
    v42 = objc_msgSend_result(v36, v37, v38, v39, v40, v41);

    resultCopy = v42;
  }

LABEL_7:

  return resultCopy;
}

- (id)_changeableColumnCountUpdatedResult:(id)result options:(id)options
{
  resultCopy = result;
  optionsCopy = options;
  if (self->_phraseLexicon.mCFObject || self->_customPhraseLexicon.mCFObject) && (objc_msgSend_configuration(self, v7, v8, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), shouldUpdateChangeableColumnCountWithPhraseLexicon = objc_msgSend_shouldUpdateChangeableColumnCountWithPhraseLexicon(v13, v14, v15, v16, v17, v18), v13, (shouldUpdateChangeableColumnCountWithPhraseLexicon))
  {
    sub_1836C38CC(self, optionsCopy);
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_1836AF848;
    v20 = v48 = sub_1836AF858;
    v49 = v20;
    if (objc_msgSend_length(v20, v21, v22, v23, v24, v25))
    {
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x2020000000;
      v43[3] = 0;
      v31 = objc_msgSend_length(v20, v26, v27, v28, v29, v30);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1836CDC64;
      v39[3] = &unk_1E6DDC668;
      v41 = v43;
      v42 = &v44;
      v40 = v20;
      objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v40, v32, 0, v31, 259, v39);

      _Block_object_dispose(v43, 8);
    }

    mCFObject = self->_phraseLexicon.mCFObject;
    if (mCFObject)
    {
      v34 = objc_msgSend_changeableColumnCountUpdatedResultWithHistory_phraseLexicon_maxPhraseLength_(resultCopy, v26, v45[5], mCFObject, 3, v30);

      resultCopy = v34;
    }

    v35 = self->_customPhraseLexicon.mCFObject;
    if (v35)
    {
      v36 = objc_msgSend_changeableColumnCountUpdatedResultWithHistory_phraseLexicon_maxPhraseLength_(resultCopy, v26, v45[5], v35, 3, v30);

      resultCopy = v36;
    }

    v37 = resultCopy;
    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v37 = resultCopy;
  }

  return v37;
}

- (id)textRecognitionResultForDrawing:(id)drawing options:(id)options shouldCancel:(id)cancel
{
  v5 = objc_msgSend_textRecognitionResultForDrawing_options_writingStatistics_principalPoints_shouldCancel_(self, a2, drawing, options, 0, 0, cancel);

  return v5;
}

- (id)textRecognitionResultForDrawing:(id)drawing options:(id)options writingStatistics:(id)statistics principalPoints:(id *)points shouldCancel:(id)cancel
{
  drawingCopy = drawing;
  optionsCopy = options;
  statisticsCopy = statistics;
  cancelCopy = cancel;
  if (self)
  {
    activeRecognitionInsight = self->_activeRecognitionInsight;
    self->_activeRecognitionInsight = 0;

    if (self->_nextRecognitionInsightRequest)
    {
      v17 = objc_alloc_init(CHRecognitionInsight);
      v18 = self->_activeRecognitionInsight;
      self->_activeRecognitionInsight = v17;

      objc_msgSend_recordInsightRequest_(self->_activeRecognitionInsight, v19, self->_nextRecognitionInsightRequest, v20, v21, v22);
      nextRecognitionInsightRequest = self->_nextRecognitionInsightRequest;
      self->_nextRecognitionInsightRequest = 0;
    }
  }

  if (cancelCopy && (cancelCopy[2](cancelCopy) & 1) != 0)
  {
    v24 = 0;
  }

  else
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_1836AF848;
    v76 = sub_1836AF858;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_1836AF848;
    v70 = sub_1836AF858;
    v71 = 0;
    recognitionQueue = self->_recognitionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1836CE09C;
    block[3] = &unk_1E6DDC690;
    v59 = drawingCopy;
    selfCopy = self;
    v64 = &v72;
    v61 = statisticsCopy;
    v26 = optionsCopy;
    v62 = v26;
    v65 = &v66;
    v63 = cancelCopy;
    dispatch_sync(recognitionQueue, block);
    v27 = self->_activeRecognitionInsight;
    v33 = v27;
    if (v27)
    {
      objc_msgSend_recordConfigurationForRecognizer_options_(v27, v28, self, v26, v31, v32);
      objc_msgSend_recordTextResult_recognitionError_(v33, v34, v73[5], 0, v35, v36);
    }

    v37 = objc_msgSend_characterConverter(self, v28, v29, v30, v31, v32);

    if (v37)
    {
      v43 = objc_msgSend_mutableCopy(v73[5], v38, v39, v40, v41, v42);
      v44 = v73[5];
      v73[5] = v43;

      v45 = v73[5];
      v51 = objc_msgSend_characterConverter(self, v46, v47, v48, v49, v50);
      objc_msgSend_applyCharacterConverter_(v45, v52, v51, v53, v54, v55);
    }

    if (points)
    {
      v56 = v67[5];
      if (v56)
      {
        *points = v56;
      }
    }

    v24 = v73[5];

    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(&v72, 8);
  }

  return v24;
}

- (id)recognitionResultsForDrawing:(id)drawing options:(id)options shouldCancel:(id)cancel
{
  drawingCopy = drawing;
  optionsCopy = options;
  cancelCopy = cancel;
  v11 = cancelCopy;
  if (cancelCopy && ((*(cancelCopy + 2))(cancelCopy) & 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1836AF848;
    v25 = sub_1836AF858;
    v26 = 0;
    recognitionQueue = self->_recognitionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1836CE814;
    block[3] = &unk_1E6DDC6B8;
    v16 = drawingCopy;
    selfCopy = self;
    v20 = &v21;
    v18 = optionsCopy;
    v19 = v11;
    dispatch_sync(recognitionQueue, block);
    v12 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  return v12;
}

- (id)recognitionResultsForDrawing:(id)drawing options:(id)options
{
  v5 = objc_msgSend_recognitionResultsForDrawing_options_shouldCancel_(self, a2, drawing, options, 0, v4);

  return v5;
}

- (void)_adjustCandidatesForConfusableCharacters:(void *)characters
{
  if (objc_msgSend_characterIsMember_(self->_activeCharacterSet, a2, 161, v3, v4, v5))
  {
    v7 = *characters;
    v8 = *(characters + 1);
    if (v8 != *characters)
    {
      v9 = 0;
      v10 = &v8[-*characters] >> 3;
      v11 = v10 <= 1 ? 1 : &v8[-*characters] >> 3;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = *characters;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v16 = *v13;
        v13 += 8;
        v15 = v16;
        if (v16 == 161)
        {
          v17 = v9;
        }

        else
        {
          v17 = v14;
        }

        if (v15 == 105)
        {
          v12 = v9;
        }

        else
        {
          v14 = v17;
        }

        ++v9;
      }

      while (v11 != v9);
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = *&v7[8 * v12 + 4];
        v19 = v18 * 0.75;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = *characters;
          LODWORD(v26) = 161;
          *(&v26 + 1) = v18 * 0.75;
          if (v8 == v7)
          {
LABEL_32:
            sub_18367B094(characters, &v26);
            return;
          }
        }

        else
        {
          v21 = &v7[8 * v14];
          if (v19 <= *(v21 + 1))
          {
            return;
          }

          v22 = v8 - (v21 + 8);
          if (v8 != v21 + 8)
          {
            memmove(&v7[8 * v14], v21 + 8, v8 - (v21 + 8));
            v7 = *characters;
          }

          v20 = v7;
          *(characters + 1) = &v21[v22];
          v10 = (&v21[v22] - v7) >> 3;
          LODWORD(v26) = 161;
          *(&v26 + 1) = v19;
          if (&v21[v22] == v7)
          {
            goto LABEL_32;
          }
        }

        if (v10 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v10;
        }

        v24 = 0x7FFFFFFFFFFFFFFFLL;
        v25 = 4;
        while (v19 <= *&v20[v25])
        {
          v7 += 8;
          --v24;
          v25 += 8;
          if (!--v23)
          {
            goto LABEL_32;
          }
        }

        if (!v24)
        {
          goto LABEL_32;
        }

        sub_1836ADC98(characters, v7, &v26);
      }
    }
  }
}

- (id)_applySentenceTransliterationCandidates:(unsigned __int16 *)candidates codesLen:(int)len codesMax:(int)max
{
  if (len)
  {
    if ((len & 0x80000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  if (self->_icuTransliterator || (v7 = utrans_openU(), (self->_icuTransliterator = v7) != 0))
  {
    utrans_transUChars();
    v14 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v11, candidates, 0, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v8, 0, 0, v9, v10);
  }

  return v14;
}

- (void)_applyTransliterationAndSyntheticCandidates:(void *)candidates
{
  if (self->_transliterationVariantMap)
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v52[0] = 0;
    v52[1] = 0;
    v51 = v52;
    v7 = *(candidates + 1) - *candidates;
    if (v7)
    {
      v8 = 0;
      v9 = v7 >> 3;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      v44 = v9;
      do
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        sub_1837E49EC(self->_transliterationVariantMap, *(*candidates + 8 * v8), &__p);
        if (v47 == __p)
        {
          operator new();
        }

        v10 = *(*candidates + 8 * v8 + 4);
        if (v10 > 0.0)
        {
          operator new();
        }

        v11 = v57;
        if (v57 >= v58)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3) + 1;
          if (v13 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1836D58DC();
          }

          if (0x5555555555555556 * ((v58 - v56) >> 3) > v13)
          {
            v13 = 0x5555555555555556 * ((v58 - v56) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v58 - v56) >> 3) >= 0x555555555555555)
          {
            v14 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v14 = v13;
          }

          v63 = &v56;
          if (v14)
          {
            if (v14 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_183688F00();
          }

          v15 = (8 * ((v57 - v56) >> 3));
          v59 = 0;
          v60 = v15;
          v61 = v15;
          v62 = 0;
          v15[1] = 0;
          v15[2] = 0;
          *v15 = 0;
          v12 = (v15 + 3);
          v16 = v56;
          v17 = v15 - (v57 - v56);
          memcpy(v17, v56, v57 - v56);
          v56 = v17;
          v57 = (v15 + 3);
          v58 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v57 = 0;
          *(v11 + 1) = 0;
          *(v11 + 2) = 0;
          v12 = v11 + 24;
        }

        v57 = v12;
        v18 = v54;
        if (v54 >= v55)
        {
          v19 = sub_1836E2380(&v53, &v48);
        }

        else
        {
          *v54 = 0;
          v18[1] = 0;
          v18[2] = 0;
          if (v49 != v48)
          {
            if (((v49 - v48) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1836D58DC();
          }

          v19 = v18 + 3;
        }

        v54 = v19;
        if (__p)
        {
          v47 = __p;
          operator delete(__p);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        ++v8;
      }

      while (v8 != v44);
    }

    v20 = objc_msgSend__effectiveMaxRecognitionResultCount(self, a2, candidates, v3, v4, v5, v44);
    v21 = v57;
    if (v57 != v56 && v20)
    {
      v22 = 0;
      do
      {
        v24 = (v56 + 24 * v22);
        v25 = *v24;
        if (v24[1] != *v24)
        {
          v26 = 0;
          do
          {
            v28 = v52[0];
            if (!v52[0])
            {
LABEL_54:
              operator new();
            }

            v29 = *(v25 + 4 * v26);
            while (1)
            {
              while (1)
              {
                v30 = v28;
                v31 = *(v28 + 7);
                if (v29 >= v31)
                {
                  break;
                }

                v28 = *v30;
                if (!*v30)
                {
                  goto LABEL_54;
                }
              }

              if (v31 >= v29)
              {
                break;
              }

              v28 = v30[1];
              if (!v28)
              {
                goto LABEL_54;
              }
            }
          }

          while (++v26 < ((*(v56 + 3 * v22 + 1) - v25) >> 2) && v20 != 0);
          v21 = v57;
        }
      }

      while (++v22 < 0xAAAAAAAAAAAAAAABLL * ((v21 - v56) >> 3) && v20 != 0);
    }

    sub_1836E1928(v52[0]);
    v32 = v53;
    if (v53)
    {
      v33 = v54;
      v34 = v53;
      if (v54 != v53)
      {
        v35 = v54;
        do
        {
          v37 = *(v35 - 3);
          v35 -= 3;
          v36 = v37;
          if (v37)
          {
            *(v33 - 2) = v36;
            operator delete(v36);
          }

          v33 = v35;
        }

        while (v35 != v32);
        v34 = v53;
      }

      v54 = v32;
      operator delete(v34);
    }

    v38 = v56;
    if (v56)
    {
      v39 = v57;
      v40 = v56;
      if (v57 != v56)
      {
        v41 = v57;
        do
        {
          v43 = *(v41 - 3);
          v41 -= 24;
          v42 = v43;
          if (v43)
          {
            *(v39 - 2) = v42;
            operator delete(v42);
          }

          v39 = v41;
        }

        while (v41 != v38);
        v40 = v56;
      }

      v57 = v38;
      operator delete(v40);
    }
  }
}

+ (id)inputLocalesFromRecognitionOptions:(id)options
{
  v34 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7, v8);
  if (optionsCopy)
  {
    v15 = objc_msgSend_objectForKey_(optionsCopy, v9, CHRecognitionOptionModelInputLocales, v11, v12, v13);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v15;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v33, 16, v18);
      if (v19)
      {
        v20 = *v30;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v29 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_addObject_(v14, v23, v22, v24, v25, v26, v29);
            }
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v23, &v29, v33, 16, v26);
        }

        while (v19);
      }
    }
  }

  v27 = objc_msgSend_copy(v14, v9, v10, v11, v12, v13, v29);

  return v27;
}

- (void)_rescoreCandidatesWithLanguageModel:(void *)model history:(id)history
{
  historyCopy = history;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1836D14C8;
  v8[3] = &unk_1E6DDC730;
  v9 = historyCopy;
  modelCopy = model;
  v8[4] = self;
  v7 = historyCopy;
  sub_1836AF8AC(self, v8);
}

- (void)setMaxRecognitionResultCount:(unint64_t)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D2200;
  v3[3] = &unk_1E6DDC3A0;
  v3[4] = self;
  v3[5] = count;
  sub_1836AF8AC(self, v3);
}

- (unint64_t)_effectiveMaxRecognitionResultCount
{
  if (self->_maxRecognitionResultCount)
  {
    return self->_maxRecognitionResultCount;
  }

  else
  {
    return (MEMORY[0x1EEE66B58])(self->_configuration, sel_maxRecognitionResultDefaultCount);
  }
}

- (CGSize)minimumDrawingSize
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = sub_1836D2318;
  v11 = nullsub_7;
  v12 = &unk_183A5AC72;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1836D2328;
  v6[3] = &unk_1E6DDC7F0;
  v6[4] = self;
  v6[5] = &v7;
  sub_1836AF8AC(self, v6);
  v2 = v8[6];
  v3 = v8[7];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setMinimumDrawingSize:(CGSize)size
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D23B0;
  v3[3] = &unk_1E6DDC8E0;
  v3[4] = self;
  sizeCopy = size;
  sub_1836AF8AC(self, v3);
}

- (void)setRecognitionType:(int)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D2434;
  v3[3] = &unk_1E6DDC758;
  v3[4] = self;
  typeCopy = type;
  sub_1836AF8AC(self, v3);
}

- (int)recognitionMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D27C8;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setRecognitionMode:(int)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D2874;
  v3[3] = &unk_1E6DDC758;
  modeCopy = mode;
  v3[4] = self;
  sub_1836AF8AC(self, v3);
}

- (void)_setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((objc_msgSend_isEqualToRecognizerConfiguration_(self->_configuration, v6, configurationCopy, v7, v8, v9) & 1) == 0)
  {
    configuration = self->_configuration;
    if (configuration && objc_msgSend_hasSameResourcesAsConfiguration_(configuration, v10, configurationCopy, v11, v12, v13))
    {
      hasSamePostProcessingAsConfiguration = objc_msgSend_hasSamePostProcessingAsConfiguration_(self->_configuration, v15, configurationCopy, v16, v17, v18);
      objc_storeStrong(&self->_configuration, configuration);
      if ((hasSamePostProcessingAsConfiguration & 1) == 0)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_1836B0EFC;
        v25[3] = &unk_1E6DDBE10;
        v25[4] = self;
        sub_1836AF8AC(self, v25);
        if (self->_mergedResultPostProcessor)
        {
          objc_msgSend__initializeMergedResultPostProcessor(self, v20, v21, v22, v23, v24);
        }
      }
    }

    else
    {
      objc_storeStrong(&self->_configuration, configuration);
      sub_1836AF440(self);
    }
  }
}

- (NSLocale)locale
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1836AF848;
  v9 = sub_1836AF858;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D2DEC;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1836D2EE8;
  v6[3] = &unk_1E6DDC818;
  v6[4] = self;
  v7 = localeCopy;
  v5 = localeCopy;
  sub_1836AF8AC(self, v6);
}

- (void)setActiveCharacterSet:(id)set
{
  setCopy = set;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1836D328C;
  v6[3] = &unk_1E6DDC818;
  v6[4] = self;
  v7 = setCopy;
  v5 = setCopy;
  sub_1836AF8AC(self, v6);
}

- (int)contentType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D3368;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setContentType:(int)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D3414;
  v3[3] = &unk_1E6DDC758;
  v3[4] = self;
  typeCopy = type;
  sub_1836AF8AC(self, v3);
}

- (int)autoCapitalizationMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D365C;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setAutoCapitalizationMode:(int)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D3708;
  v3[3] = &unk_1E6DDC758;
  v3[4] = self;
  modeCopy = mode;
  sub_1836AF8AC(self, v3);
}

- (int)autoCorrectionMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D3950;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setAutoCorrectionMode:(int)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D39FC;
  v3[3] = &unk_1E6DDC758;
  v3[4] = self;
  modeCopy = mode;
  sub_1836AF8AC(self, v3);
}

- (int)baseWritingDirection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D3C44;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setBaseWritingDirection:(int)direction
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D3CEC;
  v3[3] = &unk_1E6DDC3A0;
  v3[4] = self;
  v3[5] = *&direction;
  sub_1836AF8AC(self, v3);
}

- (BOOL)enableCachingIfAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D3F30;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setEnableCachingIfAvailable:(BOOL)available
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D3FDC;
  v3[3] = &unk_1E6DDC780;
  v3[4] = self;
  availableCopy = available;
  sub_1836AF8AC(self, v3);
}

- (BOOL)enableGen2ModelIfAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D4224;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setEnableGen2ModelIfAvailable:(BOOL)available
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D42D0;
  v3[3] = &unk_1E6DDC780;
  v3[4] = self;
  availableCopy = available;
  sub_1836AF8AC(self, v3);
}

- (BOOL)enableGen2CharacterLMIfAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D4518;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setEnableGen2CharacterLMIfAvailable:(BOOL)available
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1836D45C4;
  v3[3] = &unk_1E6DDC780;
  v3[4] = self;
  availableCopy = available;
  sub_1836AF8AC(self, v3);
}

- (ObjectRef<const)staticLexicon
{
  v3 = v2;
  mCFObject = self->_staticLexicon.mCFObject;
  if (mCFObject)
  {
    self = CFRetain(self->_staticLexicon.mCFObject);
  }

  *v3 = mCFObject;
  return self;
}

- (void)setStaticLexicon:(ObjectRef<const _LXLexicon *>)lexicon
{
  mCFObject = self->_staticLexicon.mCFObject;
  v5 = *lexicon.mCFObject;
  self->_staticLexicon.mCFObject = *lexicon.mCFObject;
  if (v5)
  {
    CFRetain(v5);
  }

  if (mCFObject)
  {
    CFRelease(mCFObject);
  }
}

- (ObjectRef<void)wordLanguageModel
{
  v3 = v2;
  mCFObject = self->_wordLanguageModel.mCFObject;
  if (mCFObject)
  {
    self = CFRetain(self->_wordLanguageModel.mCFObject);
  }

  *v3 = mCFObject;
  return self;
}

- (void)setWordLanguageModel:(ObjectRef<void *>)model
{
  mCFObject = self->_wordLanguageModel.mCFObject;
  v5 = *model.mCFObject;
  self->_wordLanguageModel.mCFObject = *model.mCFObject;
  if (v5)
  {
    CFRetain(v5);
  }

  if (mCFObject)
  {
    CFRelease(mCFObject);
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 40) = 0;
  *(self + 208) = 0;
  *(self + 552) = 0u;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 472) = 0u;
  *(self + 32) = 0u;
  *(self + 33) = 0u;
  *(self + 68) = self + 552;
  *(self + 36) = 0u;
  *(self + 71) = self + 576;
  return self;
}

- (void)recordInsightWithRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1836D4D20;
  v6[3] = &unk_1E6DDC818;
  v7 = requestCopy;
  selfCopy = self;
  v5 = requestCopy;
  sub_1836AF8AC(self, v6);
}

- (CHRecognitionInsight)recordedInsightFromLastRequest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1836AF848;
  v9 = sub_1836AF858;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1836D4E40;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1836AF8AC(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end