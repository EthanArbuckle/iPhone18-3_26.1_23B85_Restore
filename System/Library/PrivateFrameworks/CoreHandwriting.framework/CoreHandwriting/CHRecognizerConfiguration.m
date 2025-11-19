@interface CHRecognizerConfiguration
+ (BOOL)hasSupportForPrincipalPoints:(id)a3;
+ (BOOL)isGroupingWithLocales:(id)a3 differentFromGroupingWithLocales:(id)a4;
+ (BOOL)isLocaleReflowable:(id)a3;
+ (BOOL)isLocaleSupported:(id)a3 withMode:(int)a4;
+ (BOOL)isMatchingScriptAndLocale:(id)a3 scriptCode:(id)a4;
+ (BOOL)isSupportedCyrillicScriptLocale:(id)a3 withMode:(int)a4;
+ (BOOL)isSupportedLatinScriptLocale:(id)a3 withMode:(int)a4;
+ (BOOL)shouldAddSpaceToNeutralQuotationMarks:(id)a3;
+ (BOOL)shouldAdjustGroupingForLocale:(id)a3;
+ (BOOL)shouldAdjustGroupingHeuristicsForVeryComplexCharacters:(id)a3;
+ (BOOL)shouldAllowSpaceInsertionGestureForLocale:(id)a3;
+ (BOOL)shouldAllowSubTokenDeletionForLocale:(id)a3;
+ (BOOL)shouldApplyLatinSpacingForLocale:(id)a3;
+ (BOOL)shouldApplyThaiSpacingForLocale:(id)a3;
+ (BOOL)shouldDeformRenderedAscendersDescenders:(id)a3;
+ (BOOL)shouldForceNoAlternativeRecognitionCandidates:(id)a3;
+ (BOOL)shouldInsertSpaceBetweenPreviousChar:(id)a3 andNextChar:(id)a4 inLocale:(id)a5 inString:(id)a6 atRange:(_NSRange)a7 withQuoteCount:(id)a8;
+ (BOOL)shouldPerformStrictCandidateFiltering:(id)a3;
+ (BOOL)shouldRefinePrefixQueryMatchesForLocale:(id)a3;
+ (BOOL)shouldRemoveSpaceBetweenPreviousChar:(id)a3 andNextChar:(id)a4 inLocale:(id)a5;
+ (BOOL)shouldSwapCyrillicTopResult:(id)a3 topRange:(_NSRange)a4 englishResult:(id)a5 englishRange:(_NSRange)a6 prevousGroupTopString:(id)a7;
+ (BOOL)shouldTryAlternativeStringRender:(id)a3;
+ (BOOL)shouldUseFullWidthSpaceBasedOnContextForLocale:(id)a3;
+ (BOOL)shouldUseOriginalTokensForLocale:(id)a3;
+ (BOOL)shouldUseRefinablePathForReflowTokensForLocale:(id)a3;
+ (CGSize)defaultMinimumDrawingSize;
+ (double)skipLatinActivationThreshold;
+ (id)allNonLatinModelNames;
+ (id)cachingKeyFromRelevantLocales:(id)a3 forLocale:(id)a4;
+ (id)defaultActiveCharacterSetForLocale:(id)a3;
+ (id)defaultActiveCharacterSetForLocales:(id)a3;
+ (id)defaultLocaleForRecognitionType:(int)a3 withMode:(int)a4;
+ (id)effectiveRecognitionLocales:(id)a3 recognitionMode:(int)a4;
+ (id)forcedGen2ModelLocaleForLocale:(id)a3;
+ (id)localeForScriptClass:(id)a3;
+ (id)localesByLanguageGroup:(id)a3;
+ (id)recognitionEngineCachingKeyForRecognitionLocale:(id)a3;
+ (id)spellCheckingLocaleForRecognitionLocale:(id)a3 string:(id)a4;
+ (id)stringForAutoCapitalizationMode:(int)a3;
+ (id)stringForAutoCorrectionMode:(int)a3;
+ (id)stringForBaseWritingDirection:(int)a3;
+ (id)stringForRecognitionContentType:(int)a3;
+ (id)stringForRecognitionMode:(int)a3;
+ (id)swappableColumnIndexesFromResults:(id)a3 locales:(id)a4;
+ (id)swappableColumnIndexesFromResults:(id)a3 locales:(id)a4 topLocaleIndex:(int64_t)a5;
+ (int64_t)drawingStrokeLimitForLocale:(id)a3;
+ (int64_t)writingOrientationForLocale:(id)a3;
+ (void)setParametersOverride:(id)a3;
- (BOOL)hasSamePostProcessingAsConfiguration:(id)a3;
- (BOOL)hasSameResourcesAsConfiguration:(id)a3;
- (BOOL)isEqualToRecognizerConfiguration:(id)a3;
- (BOOL)shouldApplySemanticTokenization;
- (BOOL)shouldAutoCapitalize;
- (BOOL)shouldAutoCorrect;
- (BOOL)shouldMarkNoWhiteSpaceColumnsChangeable;
- (BOOL)shouldPerformGlobalBestSearchWithSmallLattice;
- (BOOL)shouldRefineChineseCharacterCandidates;
- (BOOL)shouldRelaxFinalCandidatesThresholding;
- (BOOL)shouldRunLexiconCorrectionPostProcessingStep;
- (BOOL)shouldRunNextGenRecognizer;
- (BOOL)shouldUseCaching;
- (CHNeuralNetwork)newFreeFormEngine;
- (CHNeuralNetwork)newRecognitionEngine;
- (CHRecognizerConfiguration)initWithMode:(int)a3 locale:(id)a4 contentType:(int)a5 autoCapitalizationMode:(int)a6 autoCorrectionMode:(int)a7 baseWritingDirection:(int)a8 enableCachingIfAvailable:(BOOL)a9 enableGen2ModelIfAvailable:(BOOL)a10 enableGen2CharacterLMIfAvailable:(BOOL)a11;
- (CHRecognizerConfiguration)initWithMode:(int)a3 locale:(id)a4 contentType:(int)a5 enableCachingIfAvailable:(BOOL)a6 enableGen2ModelIfAvailable:(BOOL)a7 enableGen2CharacterLMIfAvailable:(BOOL)a8;
- (VariantMap)newTransliterationVariantMap;
- (_LXLexicon)newPhraseLexicon:(id *)a3;
- (_LXLexicon)newSecondaryStaticLexicon:(id *)a3;
- (_LXLexicon)newStaticLexicon:(id *)a3;
- (_LXLexicon)postProcessorLexiconWithStaticLexicon:(_LXLexicon *)a3 secondaryLexicon:(_LXLexicon *)a4;
- (id)configurationKey;
- (id)decodingCommitActionBlock;
- (id)description;
- (id)forcedActiveCharacterSet;
- (id)languageResourceBundleWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4 wordLanguageModel:(void *)a5;
- (id)linguisticResourcesFallbackLocale;
- (id)newCTCRecognitionModel;
- (id)newCTCTextDecoderWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4 wordLanguageModel:(void *)a5;
- (id)newCornerDetector;
- (id)newMecabraWrapper;
- (id)newMergedResultPostProcessorWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4 stringChecker:(id)a5;
- (id)newOVSStringCheckerWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4;
- (id)newPatternFST;
- (id)newPostProcessorWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4 phraseLexicon:(_LXLexicon *)a5 customPhraseLexicon:(_LXLexicon *)a6 textReplacements:(id)a7 postProcessingFST:(id)a8 wordLM:(void *)a9 mecabraWrapper:(id)a10 ovsStringChecker:(id)a11 spellChecker:(id)a12 lmVocabulary:(void *)a13 maxResultCount:(int64_t)a14;
- (id)newSpellChecker;
- (id)pathScoringFunctionForLanguageResourceBundle:(id)a3;
- (id)sharedPostProcessingFST;
- (int)effectiveAutoCapitalizationMode;
- (int)mecabraInputMethodType;
- (int64_t)engineCandidateCount;
- (int64_t)maxRecognitionResultDefaultCount;
- (int64_t)precedingSpaceDefaultBehavior;
- (unint64_t)mixedScriptPenalty;
- (unsigned)requiredInappropriateFilteringFlags;
- (void)lexiconStringNormalizationFunction;
- (void)newCJKStaticLexicon;
- (void)newCharacterLanguageModelAndMap:(void *)a3 force:(BOOL)a4;
- (void)newGrammarFST;
- (void)newRadicalClusterFST;
- (void)newWordLanguageModelForRecognizer:(id)a3 async:(BOOL)a4 synchronizationQueue:(id)a5;
@end

@implementation CHRecognizerConfiguration

- (CHRecognizerConfiguration)initWithMode:(int)a3 locale:(id)a4 contentType:(int)a5 enableCachingIfAvailable:(BOOL)a6 enableGen2ModelIfAvailable:(BOOL)a7 enableGen2CharacterLMIfAvailable:(BOOL)a8
{
  v11 = *&a5;
  v12 = *&a3;
  v15 = a4;
  v16 = v12 == 2 || a8;
  if (v12 == 6)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  if (v12 == 6)
  {
    v18 = a8;
  }

  else
  {
    v18 = v16;
  }

  BYTE2(v21) = v18;
  BYTE1(v21) = a7;
  LOBYTE(v21) = a6;
  v19 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(self, v14, v12, v15, v11, v12 != 6, v17, 0x7FFFFFFFFFFFFFFFLL, v21);

  return v19;
}

- (CHRecognizerConfiguration)initWithMode:(int)a3 locale:(id)a4 contentType:(int)a5 autoCapitalizationMode:(int)a6 autoCorrectionMode:(int)a7 baseWritingDirection:(int)a8 enableCachingIfAvailable:(BOOL)a9 enableGen2ModelIfAvailable:(BOOL)a10 enableGen2CharacterLMIfAvailable:(BOOL)a11
{
  v11 = *&a8;
  v17 = a4;
  v31.receiver = self;
  v31.super_class = CHRecognizerConfiguration;
  v18 = [(CHRecognizerConfiguration *)&v31 init];
  v24 = v18;
  if (v18)
  {
    v18->_mode = a3;
    v25 = objc_msgSend_copy(v17, v19, v20, v21, v22, v23);
    locale = v24->_locale;
    v24->_locale = v25;

    v24->_contentType = a5;
    *&v24->_baseWritingDirection = v11;
    v29 = 0;
    v30 = 0;
    sub_1838F084C(CHRecognizerConfiguration, v17, &v30, &v29);
    v27 = v29;
    v24->_language = v30;
    v24->_script = v27;
    v24->_autoCapitalizationMode = a6;
    v24->_autoCorrectionMode = a7;
    v24->_enableCachingIfAvailable = a9;
    v24->_enableGen2ModelIfAvailable = a10;
    v24->_enableGen2CharacterLMIfAvailable = a11;
  }

  return v24;
}

+ (id)stringForRecognitionMode:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E6DDFA50[a3 - 1];
  }
}

+ (id)stringForRecognitionContentType:(int)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E6DDFA80[a3];
  }
}

+ (id)stringForAutoCapitalizationMode:(int)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E6DDFAC0[a3];
  }
}

+ (id)stringForAutoCorrectionMode:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E6DDFAF8[a3];
  }
}

+ (id)stringForBaseWritingDirection:(int)a3
{
  v3 = @"default-ltr";
  v4 = @"default-rtl";
  v5 = @"none";
  if (*&a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  if (*&a3 != 255)
  {
    v4 = v5;
  }

  if (*&a3 != 254)
  {
    v3 = v4;
  }

  v6 = @"ltr";
  v7 = @"rtl";
  if (*&a3 != 1)
  {
    v7 = 0;
  }

  if (*&a3)
  {
    v6 = v7;
  }

  if (*&a3 <= 253)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v6 = objc_msgSend_stringForRecognitionMode_(CHRecognizerConfiguration, a2, self->_mode, v2, v3, v4);
  v11 = objc_msgSend_stringForRecognitionContentType_(CHRecognizerConfiguration, v7, self->_contentType, v8, v9, v10);
  v16 = objc_msgSend_stringForAutoCapitalizationMode_(CHRecognizerConfiguration, v12, self->_autoCapitalizationMode, v13, v14, v15);
  v21 = objc_msgSend_stringForAutoCorrectionMode_(CHRecognizerConfiguration, v17, self->_autoCorrectionMode, v18, v19, v20);
  v26 = objc_msgSend_stringForBaseWritingDirection_(CHRecognizerConfiguration, v22, *&self->_baseWritingDirection, v23, v24, v25);
  language = self->_language;
  objc_opt_self();
  if (language > 0x1B)
  {
    v28 = 0;
  }

  else
  {
    v28 = off_1E6DDFB10[language];
  }

  script = self->_script;
  objc_opt_self();
  if (script > 8)
  {
    v30 = 0;
  }

  else
  {
    v30 = off_1E6DDFBF0[script];
  }

  v44.receiver = self;
  v44.super_class = CHRecognizerConfiguration;
  v31 = [(CHRecognizerConfiguration *)&v44 description];
  v37 = objc_msgSend_localeIdentifier(self->_locale, v32, v33, v34, v35, v36);
  v42 = objc_msgSend_stringByAppendingFormat_(v31, v38, @" Recognizer configuration with mode: %@, locale: %@, contentType: %@, autoCapitalizationMode: %@, autoCorrectionMode: %@, baseWritingDirection: %@, language: %@, script: %@", v39, v40, v41, v6, v37, v11, v16, v21, v26, v28, v30);

  return v42;
}

+ (id)defaultLocaleForRecognitionType:(int)a3 withMode:(int)a4
{
  v7 = 0;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v8 = @"zh_Hans";
        break;
      case 4:
        v8 = @"zh_Hant";
        break;
      case 8:
        v8 = @"ja";
        break;
      default:
        goto LABEL_8;
    }

LABEL_18:
    v7 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], a2, v8, *&a4, v4, v5);

    return v7;
  }

  if (a3)
  {
    if (a3 != 1)
    {
LABEL_8:

      return v7;
    }

    goto LABEL_17;
  }

  if (a4 != 3)
  {
LABEL_17:
    v8 = @"en";
    goto LABEL_18;
  }

  v7 = 0;

  return v7;
}

+ (BOOL)isLocaleSupported:(id)a3 withMode:(int)a4
{
  v6 = 0;
  v7 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v7, &v6);
  return sub_1838F1400(CHRecognizerConfiguration, v7, a4);
}

+ (BOOL)isSupportedLatinScriptLocale:(id)a3 withMode:(int)a4
{
  v5 = a3;
  v8 = 0;
  v9 = 0;
  sub_1838F084C(CHRecognizerConfiguration, v5, &v9, &v8);
  v6 = 0;
  if (v5 && v8 == 1)
  {
    v6 = sub_1838F1400(CHRecognizerConfiguration, v9, a4);
  }

  return v6;
}

+ (BOOL)isSupportedCyrillicScriptLocale:(id)a3 withMode:(int)a4
{
  v5 = a3;
  v8 = 0;
  v9 = 0;
  sub_1838F084C(CHRecognizerConfiguration, v5, &v9, &v8);
  if (v8 == 7)
  {
    v6 = sub_1838F1400(CHRecognizerConfiguration, v9, a4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isMatchingScriptAndLocale:(id)a3 scriptCode:(id)a4
{
  v5 = a4;
  v10 = 0;
  v11 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v11, &v10);
  v6 = sub_1838F11EC(CHRecognizerConfiguration, v5);
  if (v10)
  {
    v7 = v10 == v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

+ (id)forcedGen2ModelLocaleForLocale:(id)a3
{
  v9 = 0;
  v10 = 0;
  sub_1838F084C(a1, a3, &v9, &v10);
  if (v9 == 20 && v10 <= 8)
  {
    v7 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v3, off_1E6DDFC38[v10], v4, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)effectiveRecognitionLocales:(id)a3 recognitionMode:(int)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11, v6);
  v78 = objc_msgSend_set(MEMORY[0x1E695DFA8], v13, v14, v15, v16, v17);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v6;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v81, v85, 16, v19);
  if (!v20)
  {
    v76 = 0;
    goto LABEL_31;
  }

  v76 = 0;
  v21 = *v82;
  do
  {
    v22 = 0;
    do
    {
      if (*v82 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v81 + 1) + 8 * v22);
      v79 = 0;
      v80 = 0;
      sub_1838F084C(a1, v23, &v79, &v80);
      v28 = v80;
      if (v80 > 8)
      {
        v29 = 0;
      }

      else
      {
        if (((1 << v80) & 0x1F0) == 0)
        {
          if (((1 << v80) & 3) != 0)
          {
            v29 = 0;
            v76 |= v79 != 27;
            goto LABEL_12;
          }

          v28 = 2;
        }

        v30 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v28, v25, v26, v27);
        v29 = objc_msgSend_containsObject_(v78, v31, v30, v32, v33, v34);
      }

LABEL_12:
      v35 = objc_opt_class();
      v40 = objc_msgSend_forcedGen2ModelLocaleForLocale_(v35, v36, v23, v37, v38, v39);
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v23;
      }

      v48 = v42;
      if ((v29 & 1) == 0 && (objc_msgSend_containsObject_(v12, v43, v48, v45, v46, v47) & 1) == 0)
      {
        objc_msgSend_addObject_(v12, v43, v48, v45, v46, v47);
        v53 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v49, v28, v50, v51, v52);
        objc_msgSend_addObject_(v78, v54, v53, v55, v56, v57);
      }

      v58 = objc_msgSend_count(v12, v43, v44, v45, v46, v47);
      v60 = a4 == 6 || v58 < 2;

      if (!v60)
      {
        goto LABEL_31;
      }

      ++v22;
    }

    while (v20 != v22);
    v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, &v81, v85, 16, v62);
    v20 = v63;
  }

  while (v63);
LABEL_31:

  if (!((a4 == 6) | v76 & 1))
  {
    v69 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v64, @"en_US", v66, v67, v68);
    objc_msgSend_addObject_(v12, v70, v69, v71, v72, v73);
  }

  v74 = objc_msgSend_copy(v12, v64, v65, v66, v67, v68);

  return v74;
}

+ (id)localeForScriptClass:(id)a3
{
  v6 = objc_msgSend_integerValue(a3, a2, a3, v3, v4, v5);
  if (v6 > 0x10)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v7, off_1E6DDFC80[v6], v8, v9, v10);
  }

  return v11;
}

+ (id)recognitionEngineCachingKeyForRecognitionLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v4, 0);
  result = 0;
  if ((v4 - 1) <= 0x1A)
  {
    return off_1E6DDFD08[v4 - 1];
  }

  return result;
}

+ (id)cachingKeyFromRelevantLocales:(id)a3 forLocale:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10 = objc_msgSend_recognitionEngineCachingKeyForRecognitionLocale_(CHRecognizerConfiguration, v6, a4, v7, v8, v9);
  v16 = objc_msgSend_set(MEMORY[0x1E695DFA8], v11, v12, v13, v14, v15);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v17 = v5;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v60, v64, 16, v19);
  if (v25)
  {
    v26 = *v61;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v61 != v26)
        {
          objc_enumerationMutation(v17);
        }

        v28 = *(*(&v60 + 1) + 8 * i);
        v29 = objc_msgSend_languageCode(v28, v20, v21, v22, v23, v24, v60);
        v34 = objc_msgSend_recognitionEngineCachingKeyForRecognitionLocale_(CHRecognizerConfiguration, v30, v28, v31, v32, v33);
        if (objc_msgSend_isEqualToString_(v34, v35, v10, v36, v37, v38))
        {
          objc_msgSend_addObject_(v16, v39, v29, v40, v41, v42);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v60, v64, 16, v24);
    }

    while (v25);
  }

  v48 = objc_msgSend_allObjects(v16, v43, v44, v45, v46, v47);
  v53 = objc_msgSend_sortedArrayUsingSelector_(v48, v49, sel_localizedCaseInsensitiveCompare_, v50, v51, v52);

  v58 = objc_msgSend_componentsJoinedByString_(v53, v54, @",", v55, v56, v57);

  return v58;
}

+ (id)localesByLanguageGroup:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v71 = a3;
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v3, v4, v5, v6, v7);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v9 = v71;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v72, v78, 16, v11);
  if (v12)
  {
    v13 = *v73;
    do
    {
      v14 = 0;
      do
      {
        if (*v73 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v72 + 1) + 8 * v14);
        v16 = objc_opt_class();
        v25 = objc_msgSend_recognitionEngineCachingKeyForRecognitionLocale_(v16, v17, v15, v18, v19, v20);
        if (!v25)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v26 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_msgSend_localeIdentifier(v15, v27, v28, v29, v30, v31);
            v33 = v32;
            v39 = objc_msgSend_UTF8String(v32, v34, v35, v36, v37, v38);
            *buf = 136315138;
            v77 = v39;
            _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_ERROR, "Unexpected locale with identifer %s has no matching engine caching key.", buf, 0xCu);
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v40 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            v46 = objc_msgSend_localeIdentifier(v15, v41, v42, v43, v44, v45);
            v47 = v46;
            v53 = objc_msgSend_UTF8String(v46, v48, v49, v50, v51, v52);
            *buf = 136315138;
            v77 = v53;
            _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_FAULT, "Unexpected locale with identifer %s has no matching engine caching key.", buf, 0xCu);
          }
        }

        v54 = objc_msgSend_objectForKeyedSubscript_(v8, v21, v25, v22, v23, v24);
        v55 = v54 == 0;

        if (v55)
        {
          v60 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v56, v15, v57, v58, v59);
          objc_msgSend_setObject_forKeyedSubscript_(v8, v65, v60, v25, v66, v67);
        }

        else
        {
          v60 = objc_msgSend_objectForKeyedSubscript_(v8, v56, v25, v57, v58, v59);
          objc_msgSend_addObject_(v60, v61, v15, v62, v63, v64);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v68, &v72, v78, 16, v69);
    }

    while (v12);
  }

  return v8;
}

+ (id)defaultActiveCharacterSetForLocale:(id)a3
{
  v10 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v10, 0);
  v8 = 0;
  if ((v10 - 1) <= 0x11)
  {
    v8 = objc_msgSend_ch_latinCharacterSet(MEMORY[0x1E696AB08], v3, v4, v5, v6, v7);
  }

  return v8;
}

+ (id)defaultActiveCharacterSetForLocales:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v11 = objc_msgSend_count(v4, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_dictionaryWithCapacity_(v5, v12, v11, v13, v14, v15);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v4;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v33, v37, 16, v19);
  if (v24)
  {
    v25 = *v34;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v17);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        v31 = objc_msgSend_defaultActiveCharacterSetForLocale_(a1, v20, v27, v21, v22, v23, v33);
        if (v31)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v16, v28, v31, v27, v29, v30);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v33, v37, 16, v23);
    }

    while (v24);
  }

  return v16;
}

+ (BOOL)shouldForceNoAlternativeRecognitionCandidates:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v4, 0);
  return (v4 - 19) < 8;
}

+ (BOOL)isLocaleReflowable:(id)a3
{
  v5 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v5, 0);
  return (v5 < 0x1C) & (0xBFFFFFEu >> v5);
}

+ (BOOL)shouldUseRefinablePathForReflowTokensForLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v4, 0);
  return (v4 - 19) < 3;
}

+ (BOOL)shouldDeformRenderedAscendersDescenders:(id)a3
{
  v5 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v5, 0);
  return (v5 < 0x1C) & (0xB87FFFEu >> v5);
}

+ (BOOL)shouldTryAlternativeStringRender:(id)a3
{
  v5 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v5, 0);
  return (v5 < 0x1C) & (0xB07FFFEu >> v5);
}

+ (BOOL)shouldUseOriginalTokensForLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v4);
  return (v4 - 2) < 3;
}

+ (BOOL)shouldAllowSubTokenDeletionForLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v4);
  return (v4 - 2) < 3;
}

- (BOOL)isEqualToRecognizerConfiguration:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    if (self == v4)
    {
      LOBYTE(v105) = 1;
      goto LABEL_15;
    }

    v11 = objc_msgSend_mode(self, v5, v6, v7, v8, v9);
    if (v11 == objc_msgSend_mode(v10, v12, v13, v14, v15, v16))
    {
      v22 = objc_msgSend_contentType(self, v17, v18, v19, v20, v21);
      if (v22 == objc_msgSend_contentType(v10, v23, v24, v25, v26, v27))
      {
        v33 = objc_msgSend_autoCapitalizationMode(self, v28, v29, v30, v31, v32);
        if (v33 == objc_msgSend_autoCapitalizationMode(v10, v34, v35, v36, v37, v38))
        {
          v44 = objc_msgSend_autoCorrectionMode(self, v39, v40, v41, v42, v43);
          if (v44 == objc_msgSend_autoCorrectionMode(v10, v45, v46, v47, v48, v49))
          {
            v55 = objc_msgSend_baseWritingDirection(self, v50, v51, v52, v53, v54);
            if (v55 == objc_msgSend_baseWritingDirection(v10, v56, v57, v58, v59, v60) && self->_script == v10->_script && self->_language == v10->_language)
            {
              v66 = objc_msgSend_locale(self, v61, v62, v63, v64, v65);
              v72 = objc_msgSend_locale(v10, v67, v68, v69, v70, v71);
              isEqual = objc_msgSend_isEqual_(v66, v73, v72, v74, v75, v76);

              if (isEqual)
              {
                v83 = objc_msgSend_enableCachingIfAvailable(self, v78, v79, v80, v81, v82);
                if (v83 == objc_msgSend_enableCachingIfAvailable(v10, v84, v85, v86, v87, v88))
                {
                  v94 = objc_msgSend_enableGen2ModelIfAvailable(self, v89, v90, v91, v92, v93);
                  if (v94 == objc_msgSend_enableGen2ModelIfAvailable(v10, v95, v96, v97, v98, v99))
                  {
                    v107 = objc_msgSend_enableGen2CharacterLMIfAvailable(self, v100, v101, v102, v103, v104);
                    v105 = v107 ^ objc_msgSend_enableGen2CharacterLMIfAvailable(v10, v108, v109, v110, v111, v112) ^ 1;
                    goto LABEL_15;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  LOBYTE(v105) = 0;
LABEL_15:

  return v105;
}

- (id)configurationKey
{
  v7 = objc_msgSend_locale(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_localeIdentifier(v7, v8, v9, v10, v11, v12);

  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = @"none";
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = objc_msgSend_mode(self, v14, v15, v16, v17, v18);
  shouldRunNextGenRecognizer = objc_msgSend_shouldRunNextGenRecognizer(self, v22, v23, v24, v25, v26);
  if (!self || (v33 = objc_msgSend_enableGen2CharacterLMIfAvailable(self, v27, v28, v29, v30, v31), language = self->_language, language - 1 < 0x12) || language - 21 <= 6)
  {
    v35 = @"G2";
    if (!shouldRunNextGenRecognizer)
    {
      v35 = @"G1";
    }

    goto LABEL_9;
  }

  if (shouldRunNextGenRecognizer)
  {
    v35 = @"G2";
  }

  else
  {
    v35 = @"G1";
  }

  if ((v33 & 1) == 0)
  {
LABEL_9:
    objc_msgSend_stringWithFormat_(v20, v27, @"%@-%ld-%@-%@", v29, v30, v31, v19, v21, v35, @"G1");
    goto LABEL_10;
  }

  objc_msgSend_stringWithFormat_(v20, v27, @"%@-%ld-%@-%@", v29, v30, v31, v19, v21, v35, @"G2");
  v36 = LABEL_10:;

  return v36;
}

- (BOOL)hasSameResourcesAsConfiguration:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "Recognizer configuration needs to be defined", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "Recognizer configuration needs to be defined", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  if (objc_msgSend_mode(v9, v4, v5, v6, v7, v8) != self->_mode || self->_enableGen2ModelIfAvailable != objc_msgSend_enableGen2ModelIfAvailable(v9, v12, v13, v14, v15, v16) || self->_enableGen2CharacterLMIfAvailable != objc_msgSend_enableGen2CharacterLMIfAvailable(v9, v17, v18, v19, v20, v21))
  {
    v31 = 0;
    goto LABEL_23;
  }

  v33 = 0;
  *buf = 0;
  v27 = objc_msgSend_locale(v9, v22, v23, v24, v25, v26);
  sub_1838F084C(CHRecognizerConfiguration, v27, buf, &v33);

  language = self->_language;
  if (self->_contentType == 6)
  {
    v29 = 1;
  }

  else
  {
    v29 = self->_language;
  }

  if (!v9)
  {
    v30 = 0;
    v31 = 0;
    if (*buf != language)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v30 = v9[1];
  if (*(v9 + 8) == 6)
  {
    v30 = 1;
  }

  v31 = 0;
  if (*buf == language)
  {
LABEL_20:
    if (v29 == v30)
    {
      v31 = v33 == self->_script;
    }
  }

LABEL_23:

  return v31;
}

- (BOOL)hasSamePostProcessingAsConfiguration:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "Recognizer configuration needs to be defined", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *v86 = 0;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "Recognizer configuration needs to be defined", v86, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v12 = objc_msgSend_effectiveAutoCapitalizationMode(v9, v4, v5, v6, v7, v8);
  if (v12 == objc_msgSend_effectiveAutoCapitalizationMode(self, v13, v14, v15, v16, v17) && (v23 = objc_msgSend_autoCorrectionMode(v9, v18, v19, v20, v21, v22), v23 == objc_msgSend_autoCorrectionMode(self, v24, v25, v26, v27, v28)) && (v34 = objc_msgSend_baseWritingDirection(v9, v29, v30, v31, v32, v33), v34 == objc_msgSend_baseWritingDirection(self, v35, v36, v37, v38, v39)) && (shouldTransliterateHalfWidthPunctuations = objc_msgSend_shouldTransliterateHalfWidthPunctuations(v9, v40, v41, v42, v43, v44), shouldTransliterateHalfWidthPunctuations == objc_msgSend_shouldTransliterateHalfWidthPunctuations(self, v46, v47, v48, v49, v50)) && (shouldApplySemanticTokenization = objc_msgSend_shouldApplySemanticTokenization(v9, v51, v52, v53, v54, v55), shouldApplySemanticTokenization == objc_msgSend_shouldApplySemanticTokenization(self, v57, v58, v59, v60, v61)) && (shouldIdentifyChangeableColumns = objc_msgSend_shouldIdentifyChangeableColumns(v9, v62, v63, v64, v65, v66), shouldIdentifyChangeableColumns == objc_msgSend_shouldIdentifyChangeableColumns(self, v68, v69, v70, v71, v72)))
  {
    shouldMarkNoWhiteSpaceColumnsChangeable = objc_msgSend_shouldMarkNoWhiteSpaceColumnsChangeable(v9, v73, v74, v75, v76, v77);
    v78 = shouldMarkNoWhiteSpaceColumnsChangeable ^ objc_msgSend_shouldMarkNoWhiteSpaceColumnsChangeable(self, v81, v82, v83, v84, v85) ^ 1;
  }

  else
  {
    LOBYTE(v78) = 0;
  }

  return v78;
}

- (BOOL)shouldRefineChineseCharacterCandidates
{
  if (self->_script - 2 > 2)
  {
    return 0;
  }

  mode = self->_mode;
  v3 = mode > 6;
  v4 = 0x54u >> mode;
  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (BOOL)shouldRunNextGenRecognizer
{
  result = 0;
  mode = self->_mode;
  if (mode <= 3)
  {
    if (mode != 1 && mode != 2)
    {
      return result;
    }

    return 1;
  }

  if (mode == 6)
  {
    return 1;
  }

  if (mode == 4)
  {
    return self->_language < 0x1C;
  }

  return result;
}

+ (double)skipLatinActivationThreshold
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_objectForKey_(0, a2, @"SkipLatinProbabilityThreshold", v2, v3, v4);
  if (v5)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v6 = qword_1EA84DC58;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEFAULT, "shouldSkipLatinActivation from override weights: %@", &v15, 0xCu);
    }

    objc_msgSend_floatValue(v5, v7, v8, v9, v10, v11);
    v13 = v12;
  }

  else
  {
    v13 = 0.01;
  }

  return v13;
}

- (BOOL)shouldPerformGlobalBestSearchWithSmallLattice
{
  mode = self->_mode;
  if (mode == 5)
  {
    return 1;
  }

  if (mode == 4)
  {
    return self->_script == 1;
  }

  return 0;
}

- (BOOL)shouldRelaxFinalCandidatesThresholding
{
  if (self->_script - 2 > 2)
  {
    return 0;
  }

  mode = self->_mode;
  return mode == 4 || mode == 2;
}

- (BOOL)shouldAutoCapitalize
{
  v7 = objc_msgSend_effectiveAutoCapitalizationMode(self, a2, v2, v3, v4, v5);
  if (v7 > 2)
  {
    if (v7 != 6 && v7 != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    LOBYTE(v7) = (self->_contentType - 8) < 0xFFFFFFF9;
    return v7;
  }

  if (!v7)
  {
    return v7;
  }

  if (v7 == 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  LOBYTE(v7) = 1;
  return v7;
}

- (int)effectiveAutoCapitalizationMode
{
  if ((self->_autoCapitalizationMode & 0xFFFFFFFD) == 1 && self->_language == 27)
  {
    return 6;
  }

  else
  {
    return self->_autoCapitalizationMode;
  }
}

- (BOOL)shouldAutoCorrect
{
  script = self->_script;
  autoCorrectionMode = self->_autoCorrectionMode;
  if (autoCorrectionMode)
  {
    return autoCorrectionMode != 2 && script != 8;
  }

  return (self->_contentType - 8) < 0xFFFFFFF9 && script != 8;
}

- (BOOL)shouldRunLexiconCorrectionPostProcessingStep
{
  if (objc_msgSend_shouldAutoCapitalize(self, a2, v2, v3, v4, v5))
  {
    return 1;
  }

  return objc_msgSend_shouldAutoCorrect(self, v7, v8, v9, v10, v11);
}

- (BOOL)shouldUseCaching
{
  v7 = objc_msgSend_enableCachingIfAvailable(self, a2, v2, v3, v4, v5);
  if (v7)
  {
    LOBYTE(v7) = self->_script != 1 || self->_mode != 4;
  }

  return v7;
}

- (BOOL)shouldApplySemanticTokenization
{
  script = self->_script;
  v3 = script >= 6;
  v5 = script == 6;
  v4 = (1 << script) & 0x5C;
  v5 = !v5 && v3 || v4 == 0;
  return !v5 && self->_mode != 2;
}

- (BOOL)shouldMarkNoWhiteSpaceColumnsChangeable
{
  script = self->_script;
  v3 = script > 6;
  v4 = (1 << script) & 0x5C;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  mode = self->_mode;
  return mode == 4 || mode == 2;
}

- (unsigned)requiredInappropriateFilteringFlags
{
  result = 0;
  mode = self->_mode;
  if (mode <= 6)
  {
    v5 = 1 << mode;
    if ((v5 & 0x54) != 0)
    {
      v6 = self->_script == 5;
      v7 = 25165824;
      v8 = 25165826;
    }

    else
    {
      if ((v5 & 0x22) == 0)
      {
        return result;
      }

      v6 = self->_script == 5;
      v7 = 58720256;
      v8 = 58720258;
    }

    if (v6)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

- (int)mecabraInputMethodType
{
  script = self->_script;
  if (script > 3)
  {
    if (script == 5)
    {
      v4 = 17;
    }

    else
    {
      v4 = 0;
    }

    if (script == 4)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  else if (script == 2)
  {
    return 11;
  }

  else if (script == 3)
  {
    if (self->_language == 20)
    {
      return 14;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    return 0;
  }
}

- (int64_t)precedingSpaceDefaultBehavior
{
  v2 = self->_script - 2;
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1839DA0C0[v2];
  }
}

- (id)forcedActiveCharacterSet
{
  if (self->_script == 7 && self->_mode == 4)
  {
    if (self->_language == 25)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AD48]);
      v12 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v7, v8, v9, v10, v11);
      objc_msgSend_formUnionWithCharacterSet_(v6, v13, v12, v14, v15, v16);

      v22 = objc_msgSend_ch_russianOnlyCharacterSet(MEMORY[0x1E696AB08], v17, v18, v19, v20, v21);
      objc_msgSend_formUnionWithCharacterSet_(v6, v23, v22, v24, v25, v26);
    }

    else
    {
      v6 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], a2, v2, v3, v4, v5);
    }

    v34 = objc_msgSend_invertedSet(v6, v27, v28, v29, v30, v31);

    v32 = v34;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)linguisticResourcesFallbackLocale
{
  if (self->_language == 20)
  {
    v6 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], a2, @"zh_hant", v2, v3, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_LXLexicon)newStaticLexicon:(id *)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  mode = self->_mode;
  v7 = mode > 6;
  v8 = (1 << mode) & 0x76;
  if (v7 || v8 == 0)
  {
    return 0;
  }

  v11 = 0;
  script = self->_script;
  if (script <= 8)
  {
    if (((1 << script) & 0x1A2) != 0)
    {
      v23 = *MEMORY[0x1E69ABFE8];
      v13 = objc_msgSend_localeIdentifier(self->_locale, a2, a3, v3, v4, v5);
      v24[0] = v13;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v24, &v23, 1, v15);

      v17 = LXLexiconCreate();
    }

    else
    {
      if (((1 << script) & 0x1C) == 0)
      {
        goto LABEL_13;
      }

      if (!objc_msgSend_shouldRunNextGenRecognizer(self, a2, a3, v3, v4, v5))
      {
        v11 = 0;
        if (!a3)
        {
          return v11;
        }

        goto LABEL_14;
      }

      v21 = *MEMORY[0x1E69ABFE8];
      v22 = @"en_US";
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v22, &v21, 1, v19);
      v17 = LXLexiconCreate();
    }

    v11 = v17;
  }

LABEL_13:
  if (a3)
  {
LABEL_14:
    *a3 = 0;
  }

  return v11;
}

- (_LXLexicon)newSecondaryStaticLexicon:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  mode = self->_mode;
  v5 = mode > 6;
  v6 = (1 << mode) & 0x76;
  if (v5 || v6 == 0)
  {
    return 0;
  }

  v9 = 0;
  if (self->_script == 5)
  {
    v12 = *MEMORY[0x1E69ABFE8];
    v13[0] = @"en_US";
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, &v12, 1, v3);
    v9 = LXLexiconCreate();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return v9;
}

- (_LXLexicon)postProcessorLexiconWithStaticLexicon:(_LXLexicon *)a3 secondaryLexicon:(_LXLexicon *)a4
{
  if (self->_script == 5)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

- (_LXLexicon)newPhraseLexicon:(id *)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  mode = self->_mode;
  v8 = mode > 6;
  v9 = (1 << mode) & 0x76;
  v10 = v8 || v9 == 0;
  if (v10 || !objc_msgSend_shouldRunNextGenRecognizer(self, a2, a3, v3, v4, v5) || self->_mode == 5)
  {
    return 0;
  }

  v17 = 0;
  if (self->_script == 1)
  {
    v23[0] = *MEMORY[0x1E69ABFE8];
    v19 = objc_msgSend_localeIdentifier(self->_locale, v12, v13, v14, v15, v16);
    v23[1] = *MEMORY[0x1E69AC008];
    v24[0] = v19;
    v24[1] = *MEMORY[0x1E69AC010];
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v24, v23, 2, v21);

    v17 = LXLexiconCreate();
  }

  if (a3)
  {
    *a3 = 0;
  }

  return v17;
}

- (void)newCJKStaticLexicon
{
  v44[2] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  mode = self->_mode;
  v8 = mode > 6;
  v9 = (1 << mode) & 0x76;
  v10 = v8 || v9 == 0;
  if (v10 || !objc_msgSend_shouldLoadCJKLexicons(self, a2, v2, v3, v4, v5))
  {
    return 0;
  }

  v16 = MEMORY[0x1E69ABF90];
  v43[0] = *MEMORY[0x1E69ABF90];
  v17 = objc_msgSend_localeIdentifier(self->_locale, v11, v12, v13, v14, v15);
  v18 = MEMORY[0x1E69ABFA8];
  v43[1] = *MEMORY[0x1E69ABFA8];
  v19 = MEMORY[0x1E695E110];
  v44[0] = v17;
  v44[1] = MEMORY[0x1E695E110];
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v44, v43, 2, v21);

  v28 = LMLexiconCreate();
  if (!v28)
  {
    v29 = objc_msgSend_linguisticResourcesFallbackLocale(self, v23, v24, v25, v26, v27);
    v35 = v29;
    if (v29)
    {
      v41[0] = *v16;
      v36 = objc_msgSend_localeIdentifier(v29, v30, v31, v32, v33, v34);
      v41[1] = *v18;
      v42[0] = v36;
      v42[1] = v19;
      v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v42, v41, 2, v38);

      v28 = LMLexiconCreate();
      v22 = v39;
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (void)newWordLanguageModelForRecognizer:(id)a3 async:(BOOL)a4 synchronizationQueue:(id)a5
{
  v6 = a4;
  v102 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14 = a5;
  v15 = 0;
  mode = self->_mode;
  if (mode <= 3)
  {
    if (mode == 1)
    {
      if (!objc_msgSend_shouldApplyLMRescoring(self, v9, v10, v11, v12, v13))
      {
        v15 = 0;
        goto LABEL_48;
      }
    }

    else if (mode != 2)
    {
      goto LABEL_48;
    }

LABEL_10:
    v18 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10, v11, v12, v13);
    v24 = objc_msgSend_localeIdentifier(self->_locale, v19, v20, v21, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v25, v24, *MEMORY[0x1E69ABF90], v26, v27);

    objc_msgSend_setObject_forKeyedSubscript_(v18, v28, MEMORY[0x1E695E110], *MEMORY[0x1E69ABFA8], v29, v30);
    if (self->_script == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v31, MEMORY[0x1E695E110], *MEMORY[0x1E69ABF50], v32, v33);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v34, &unk_1EF1EDA38, *MEMORY[0x1E69ABF98], v35, v36);
    }

    v37 = objc_msgSend_pathForLanguageModelForLocale_modelType_resourceType_(MEMORY[0x1E6991FD8], v31, self->_locale, 2, 1, v33);
    v43 = v37;
    if (v37)
    {
      v44 = objc_msgSend_lastPathComponent(v37, v38, v39, v40, v41, v42);
      v50 = objc_msgSend_stringByDeletingPathExtension(v44, v45, v46, v47, v48, v49);

      v56 = objc_msgSend_stringByDeletingLastPathComponent(v43, v51, v52, v53, v54, v55);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v57, v56, *MEMORY[0x1E69ABF70], v58, v59);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v60, v50, *MEMORY[0x1E69ABF68], v61, v62);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v63, MEMORY[0x1E695E118], *MEMORY[0x1E69ABF58], v64, v65);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v66, MEMORY[0x1E695E118], *MEMORY[0x1E69ABF80], v67, v68);
      if (qword_1EA84DC48 == -1)
      {
        v69 = qword_1EA84DC58;
        if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
LABEL_16:

          goto LABEL_20;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v69 = qword_1EA84DC58;
        if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_16;
        }
      }

      *buf = 138412290;
      v101 = v43;
      _os_log_impl(&dword_18366B000, v69, OS_LOG_TYPE_DEBUG, "Attempting to load wordLM from %@", buf, 0xCu);
      goto LABEL_16;
    }

    if (qword_1EA84DC48 == -1)
    {
      v50 = qword_1EA84DC58;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v50 = qword_1EA84DC58;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
LABEL_20:

        if (v6)
        {
          v75 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v70, v18, v72, v73, v74);
          objc_msgSend_setObject_forKeyedSubscript_(v75, v76, MEMORY[0x1E695E118], *MEMORY[0x1E69ABFA0], v77, v78);
          v84 = objc_msgSend_linguisticResourcesFallbackLocale(self, v79, v80, v81, v82, v83);
          v15 = sub_1838F3F1C(CHRecognizerConfiguration, v75, v84);

          if (v14)
          {
            goto LABEL_30;
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v85 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v85, OS_LOG_TYPE_ERROR, "Synchronization queue can not be nil when async loading language models.", buf, 2u);
          }

          if (qword_1EA84DC48 == -1)
          {
            v86 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
            {
LABEL_29:

LABEL_30:
              if (v8)
              {
LABEL_39:
                if (qword_1EA84D1A0 != -1)
                {
                  dispatch_once(&qword_1EA84D1A0, &unk_1EF1BF270);
                }

                v89 = qword_1EA84D198;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = sub_1838F4874;
                block[3] = &unk_1E6DDD9E0;
                v95 = v18;
                v96 = self;
                v99 = v15;
                v97 = v14;
                v98 = v8;
                dispatch_async(v89, block);

                v90 = v95;
                goto LABEL_47;
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v87 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v87, OS_LOG_TYPE_ERROR, "Recognizer can not be nil when async loading language models.", buf, 2u);
              }

              if (qword_1EA84DC48 == -1)
              {
                v88 = qword_1EA84DC50[0];
                if (!os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
                {
LABEL_38:

                  goto LABEL_39;
                }
              }

              else
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                v88 = qword_1EA84DC50[0];
                if (!os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_38;
                }
              }

              *buf = 0;
              _os_log_impl(&dword_18366B000, v88, OS_LOG_TYPE_FAULT, "Recognizer can not be nil when async loading language models.", buf, 2u);
              goto LABEL_38;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v86 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_29;
            }
          }

          *buf = 0;
          _os_log_impl(&dword_18366B000, v86, OS_LOG_TYPE_FAULT, "Synchronization queue can not be nil when async loading language models.", buf, 2u);
          goto LABEL_29;
        }

        v91 = objc_msgSend_linguisticResourcesFallbackLocale(self, v70, v71, v72, v73, v74);
        v15 = sub_1838F3F1C(CHRecognizerConfiguration, v18, v91);

        if (qword_1EA84DC48 == -1)
        {
          v90 = qword_1EA84DC58;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
LABEL_44:
            v92 = "has";
            if (!v15)
            {
              v92 = "has not";
            }

            *buf = 136315138;
            v101 = v92;
            _os_log_impl(&dword_18366B000, v90, OS_LOG_TYPE_DEBUG, "wordLM %s been loaded", buf, 0xCu);
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v90 = qword_1EA84DC58;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_44;
          }
        }

LABEL_47:

        goto LABEL_48;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v50, OS_LOG_TYPE_DEBUG, "Attempting to load wordLM from default LanguageModeling search path", buf, 2u);
    goto LABEL_20;
  }

  if (mode == 4 || mode == 6)
  {
    goto LABEL_10;
  }

LABEL_48:

  return v15;
}

- (id)newSpellChecker
{
  if (!self)
  {
    return 0;
  }

  mode = self->_mode;
  v8 = mode > 6;
  v9 = (1 << mode) & 0x76;
  if (v8 || v9 == 0)
  {
    return 0;
  }

  if (objc_msgSend_unsafeForSpellCorrection(self, a2, v2, v3, v4, v5))
  {
    return 0;
  }

  if (!self->_enableGen2ModelIfAvailable)
  {
    return 0;
  }

  v11 = self->_mode;
  if (v11 > 6 || ((1 << v11) & 0x54) == 0)
  {
    return 0;
  }

  return objc_alloc_init(CHSpellChecker);
}

- (void)newCharacterLanguageModelAndMap:(void *)a3 force:(BOOL)a4
{
  v4 = MEMORY[0x1EEE9AC00](self);
  v167 = *MEMORY[0x1E69E9840];
  if (v4)
  {
    v7 = v4;
    v8 = *(v4 + 28);
    if (v8 <= 6 && ((1 << v8) & 0x76) != 0)
    {
      v10 = v5;
      if ((*(v4 + 25) & 1) == 0)
      {
        v11 = (v8 < 7) & (0x74u >> v8);
        if ((*(v4 + 8) - 19) < 2)
        {
          LOBYTE(v11) = 1;
        }

        if (v11)
        {
          goto LABEL_12;
        }
      }

      if (v6)
      {
LABEL_12:
        bzero(v166, 0x400uLL);
        v18 = sub_1837A3CB8(*(v7 + 48), &stru_1EF1C0318, @"lm", v166);
        if (v18)
        {
          v19 = MEMORY[0x1E695DFF8];
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v13, v166, v15, v16, v17);
          v25 = objc_msgSend_URLWithString_(v19, v21, v20, v22, v23, v24);
          goto LABEL_20;
        }

        v26 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14, v15, v16, v17);
        v156[1] = MEMORY[0x1E69E9820];
        v156[2] = 3221225472;
        v156[3] = sub_1838F5398;
        v156[4] = &unk_1E6DDF9C0;
        v20 = v26;
        v157 = v20;
        v158 = v7;
        LDEnumerateAssetDataItems();
        v32 = objc_msgSend_localeIdentifier(*(v7 + 48), v27, v28, v29, v30, v31);
        v37 = objc_msgSend_objectForKey_(v20, v33, v32, v34, v35, v36);
        v38 = v37 == 0;

        v44 = *(v7 + 48);
        if (v38)
        {
          v50 = objc_msgSend_languageCode(v44, v39, v40, v41, v42, v43);
          v55 = objc_msgSend_objectForKey_(v20, v51, v50, v52, v53, v54);
          v56 = v55 == 0;

          if (v56)
          {
            v18 = 0;
            v25 = 0;
            goto LABEL_19;
          }

          v18 = objc_msgSend_languageCode(*(v7 + 48), v57, v58, v59, v60, v61);
          v49 = objc_msgSend_objectForKey_(v20, v62, v18, v63, v64, v65);
        }

        else
        {
          v18 = objc_msgSend_localeIdentifier(v44, v39, v40, v41, v42, v43);
          v49 = objc_msgSend_objectForKey_(v20, v45, v18, v46, v47, v48);
        }

        v25 = v49;
LABEL_19:

LABEL_20:
        if (v25)
        {
          goto LABEL_21;
        }

        if (*(v7 + 8) == 6)
        {

          v25 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v111, @"/System/Library/PrivateFrameworks/TextRecognition.framework/pt_BR.lm", v112, v113, v114);
          v156[0] = 0;
          v119 = objc_msgSend_checkResourceIsReachableAndReturnError_(v25, v115, v156, v116, v117, v118);
          v120 = v156[0];
          v71 = v120;
          if ((v119 & 1) == 0)
          {

            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v83 = qword_1EA84DC58;
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v144 = objc_msgSend_absoluteString(0, v139, v140, v141, v142, v143);
              v150 = objc_msgSend_debugDescription(v71, v145, v146, v147, v148, v149);
              *__str = 138412546;
              v160 = v144;
              v161 = 2112;
              v162 = v150;
              _os_log_impl(&dword_18366B000, v83, OS_LOG_TYPE_ERROR, "Failed to load n-gram model from TextRecognition.framework at location %@ with error %@", __str, 0x16u);
            }

            v25 = 0;
            v12 = 0;
            v18 = @"pt_BR";
LABEL_47:

            goto LABEL_48;
          }

          v18 = @"pt_BR";
          if (v25)
          {
LABEL_21:
            v71 = objc_msgSend_path(v25, v66, v67, v68, v69, v70);
            v77 = objc_msgSend_lastPathComponent(v71, v72, v73, v74, v75, v76);
            v83 = objc_msgSend_stringByDeletingPathExtension(v77, v78, v79, v80, v81, v82);

            v89 = objc_msgSend_stringByDeletingLastPathComponent(v71, v84, v85, v86, v87, v88);
            v90 = *MEMORY[0x1E69ABF50];
            v164[0] = *MEMORY[0x1E69ABF90];
            v164[1] = v90;
            v165[0] = v18;
            v165[1] = MEMORY[0x1E695E110];
            v91 = *MEMORY[0x1E69ABF68];
            v164[2] = *MEMORY[0x1E69ABF70];
            v164[3] = v91;
            v165[2] = v89;
            v165[3] = v83;
            v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v92, v165, v164, 4, v93);
            v12 = LMLanguageModelCreate();
            if (v10)
            {
              bzero(v163, 0x400uLL);
              v154 = v94;
              v100 = objc_msgSend_lastPathComponent(v25, v95, v96, v97, v98, v99);
              v101 = v100;
              v107 = objc_msgSend_UTF8String(v100, v102, v103, v104, v105, v106);
              v108 = sub_1837A3290("corpus.wid", v107, v163);

              if (v108)
              {
                v109 = fopen(v163, "r");
                v110 = v109;
                if (v109)
                {
                  if (feof(v109))
                  {
                    v151 = v83;
                    v152 = v89;
                    v153 = v71;
                    do
                    {
                      if (ferror(v110) || !fgets(__str, 4096, v110))
                      {
                        break;
                      }

                      v121 = strtok(__str, " \t\n\r\b");
                      if (v121)
                      {
                        v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v122, v121, v123, v124, v125);
                        CodepointInString = objc_msgSend_firstCodepointInString(v126, v127, v128, v129, v130, v131);

                        v155 = 0;
                        v133 = strtok(0, " \t\n\r\b");
                        if (v133)
                        {
                          sscanf(v133, "%d", &v155);
                          v134 = (v10 + 8);
LABEL_36:
                          v135 = *v134;
                          if (!*v134)
                          {
LABEL_40:
                            operator new();
                          }

                          while (1)
                          {
                            v134 = v135;
                            v136 = *(v135 + 28);
                            if (CodepointInString < v136)
                            {
                              goto LABEL_36;
                            }

                            if (v136 >= CodepointInString)
                            {
                              break;
                            }

                            v135 = v134[1];
                            if (!v135)
                            {
                              goto LABEL_40;
                            }
                          }

                          v137 = v134;
                          v89 = v152;
                          v71 = v153;
                          *(v137 + 8) = v155;
                          v83 = v151;
                        }
                      }
                    }

                    while (feof(v110));
                  }

                  fclose(v110);
                }
              }

              v94 = v154;
            }

            goto LABEL_47;
          }
        }

        else
        {
          v25 = 0;
        }

        v12 = 0;
LABEL_48:

        return v12;
      }
    }
  }

  return 0;
}

- (id)newOVSStringCheckerWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = self;
    v7 = *(self + 7);
    v8 = v7 > 6;
    v9 = (1 << v7) & 0x76;
    if (v8 || v9 == 0)
    {
      return 0;
    }

    else
    {
      v13 = objc_msgSend_requiredInappropriateFilteringFlags(self, a2, a3, a4, v4, v5);
      v14 = *(v6 + 1);
      v8 = v14 > 0x17;
      v15 = (1 << v14) & 0xE80000;
      if (v8 || v15 == 0)
      {
        v23 = 0;
      }

      else
      {
        bzero(v33, 0x400uLL);
        v21 = sub_1837A3CB8(*(v6 + 6), &stru_1EF1C0318, @"odat", v33);
        if (v21)
        {
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v17, v33, v18, v19, v20);
          v23 = CFBurstTrieCreateFromFile();
        }

        else
        {
          v23 = 0;
        }
      }

      v24 = [CHStringOVSChecker alloc];
      v30 = objc_msgSend_lexiconStringNormalizationFunction(v6, v25, v26, v27, v28, v29);
      self = objc_msgSend_initWithTrie_staticLexicon_customLexicon_flags_stringNormalizationFunction_(v24, v31, v23, a3, a4, v13, v30);
      if (v23)
      {
        v32 = self;
        CFBurstTrieRelease();
        return v32;
      }
    }
  }

  return self;
}

- (id)newPatternFST
{
  if (!self)
  {
    return 0;
  }

  mode = self->_mode;
  v4 = mode > 6;
  v5 = (1 << mode) & 0x76;
  v6 = v4 || v5 == 0;
  if (v6 || self->_enableGen2ModelIfAvailable)
  {
    return 0;
  }

  v8 = [CHPatternNetwork alloc];

  return objc_msgSend_initWithFile_(v8, v9, @"P.bin", v10, v11, v12);
}

- (id)sharedPostProcessingFST
{
  if (!self)
  {
LABEL_10:

    return self;
  }

  mode = self->_mode;
  v4 = mode > 6;
  v5 = (1 << mode) & 0x76;
  v6 = v4 || v5 == 0;
  if (!v6 && self->_enableGen2ModelIfAvailable)
  {
    if (qword_1EA84D1B0 != -1)
    {
      dispatch_once(&qword_1EA84D1B0, &unk_1EF1BF290);
    }

    self = qword_1EA84D1A8;
    goto LABEL_10;
  }

  self = 0;

  return self;
}

- (void)newGrammarFST
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = *(self + 7);
    v7 = v6 > 6;
    v8 = (1 << v6) & 0x76;
    if (v7 || v8 == 0)
    {
      return 0;
    }

    else
    {
      if ((*(self + 1) - 19) <= 1 && (objc_msgSend_shouldRunNextGenRecognizer(self, a2, v2, v3, v4, v5) & 1) == 0 && sub_1837A3290("G.bin", 0, __s))
      {
        operator new();
      }

      return 0;
    }
  }

  return self;
}

- (void)newRadicalClusterFST
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = *(self + 7);
    v7 = v6 > 6;
    v8 = (1 << v6) & 0x76;
    if (v7 || v8 == 0)
    {
      return 0;
    }

    else
    {
      if ((*(self + 1) - 19) <= 1 && (objc_msgSend_shouldRunNextGenRecognizer(self, a2, v2, v3, v4, v5) & 1) == 0 && sub_1837A3290("R.bin", 0, __s))
      {
        operator new();
      }

      return 0;
    }
  }

  return self;
}

- (id)newMecabraWrapper
{
  if (self->_language - 19 > 2)
  {
    return 0;
  }

  else
  {
    return objc_alloc_init(CHMecabraWrapper);
  }
}

- (VariantMap)newTransliterationVariantMap
{
  v82 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  mode = self->_mode;
  v4 = mode > 6;
  v5 = (1 << mode) & 0x76;
  v6 = v4 || v5 == 0;
  if (v6 || self->_language - 1 > 0x1A)
  {
    return 0;
  }

  bzero(v81, 0x400uLL);
  sub_1837A3CB8(self->_locale, @"synthetics_", @"txt", v81);
  if (objc_claimAutoreleasedReturnValue())
  {
    goto LABEL_8;
  }

  script = self->_script;
  if (script > 2)
  {
    if (script == 3)
    {
      v50 = objc_msgSend_stringByAppendingString_(@"synthetics_", v7, @"zh-Hant", v8, v9, v10);
      v17 = objc_msgSend_stringByAppendingPathExtension_(v50, v51, @"txt", v52, v53, v54);

      v55 = v17;
      v61 = objc_msgSend_UTF8String(v17, v56, v57, v58, v59, v60);
      v25 = sub_1837A3290(v61, 0, v81);
    }

    else
    {
      if (script != 8)
      {
        goto LABEL_20;
      }

      v26 = objc_msgSend_stringByAppendingString_(@"synthetics_", v7, @"ar", v8, v9, v10);
      v17 = objc_msgSend_stringByAppendingPathExtension_(v26, v27, @"txt", v28, v29, v30);

      v31 = v17;
      v37 = objc_msgSend_UTF8String(v17, v32, v33, v34, v35, v36);
      v25 = sub_1837A3290(v37, 0, v81);
    }

LABEL_19:
    v62 = v25;

    if (v62)
    {
LABEL_8:
      operator new();
    }

    goto LABEL_20;
  }

  if (script == 1)
  {
    v38 = objc_msgSend_stringByAppendingString_(@"synthetics_", v7, @"en", v8, v9, v10);
    v17 = objc_msgSend_stringByAppendingPathExtension_(v38, v39, @"txt", v40, v41, v42);

    v43 = v17;
    v49 = objc_msgSend_UTF8String(v17, v44, v45, v46, v47, v48);
    v25 = sub_1837A3290(v49, 0, v81);
    goto LABEL_19;
  }

  if (script == 2)
  {
    v12 = objc_msgSend_stringByAppendingString_(@"synthetics_", v7, @"zh-Hans", v8, v9, v10);
    v17 = objc_msgSend_stringByAppendingPathExtension_(v12, v13, @"txt", v14, v15, v16);

    v18 = v17;
    v24 = objc_msgSend_UTF8String(v17, v19, v20, v21, v22, v23);
    v25 = sub_1837A3290(v24, 0, v81);
    goto LABEL_19;
  }

LABEL_20:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v63 = qword_1EA84DC58;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
  {
    v69 = objc_msgSend_debugDescription(self->_locale, v64, v65, v66, v67, v68);
    language = self->_language;
    v70 = self->_script;
    v73 = 138413058;
    v74 = v69;
    v75 = 2048;
    v76 = v70;
    v77 = 2048;
    v78 = language;
    v79 = 2080;
    v80 = v81;
    _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_FAULT, "Resource for transliteration map not found for locale %@ (script=%lu, language=%lu) with resource path %s", &v73, 0x2Au);
  }

  return 0;
}

- (CHNeuralNetwork)newRecognitionEngine
{
  v76 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_shouldRunNextGenRecognizer(self, a2, v2, v3, v4, v5) & 1) == 0)
  {
    v12 = 0;
    mode = self->_mode;
    if (mode > 6)
    {
      v11 = 0;
LABEL_50:

      return v11;
    }

    if (((1 << mode) & 0x76) == 0)
    {
      v11 = 0;
      if (mode == 3)
      {
        v46 = objc_msgSend_stringByAppendingPathExtension_(@"is", v7, @"bundle", v8, v9, v10);
        v47 = v46;
        v53 = objc_msgSend_UTF8String(v47, v48, v49, v50, v51, v52);
        sub_1837A3290(v53, 0, __s);

        v54 = strlen(__s);
        if (v54 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_183688FF0();
        }

        v58 = v54;
        if (v54 >= 0x17)
        {
          operator new();
        }

        v70 = v54;
        if (v54)
        {
          memcpy(&__p, __s, v54);
        }

        *(&__p + v58) = 0;
        v11 = sub_1836AAB60(&__p, 0, 1u, v55, v56, v57);
        if (v70 < 0)
        {
          operator delete(__p);
        }

        v12 = 0;
      }

      goto LABEL_50;
    }

    language = self->_language;
    if (language - 19 <= 1)
    {
      v12 = objc_msgSend_stringByAppendingPathExtension_(@"zh", v7, @"bundle", v8, v9, v10);
      v20 = objc_msgSend_UTF8String(v12, v15, v16, v17, v18, v19);
      if (!sub_1837A3290(v20, 0, __s))
      {
        v25 = objc_msgSend_stringByAppendingPathExtension_(@"zh_compact", v21, @"bundle", v22, v23, v24);

        v26 = v25;
        v32 = objc_msgSend_UTF8String(v25, v27, v28, v29, v30, v31);
        if (sub_1837A3290(v32, 0, __s))
        {
          v33 = 1;
          v12 = v25;
          v34 = strlen(__s);
          if (v34 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_9;
          }

LABEL_35:
          v65 = v34;
          if (v34 >= 0x17)
          {
            operator new();
          }

          v72 = v34;
          if (v34)
          {
            memcpy(&__dst, __s, v34);
          }

          *(&__dst + v65) = 0;
          v11 = sub_1836AAB60(&__dst, v33, 1u, v35, v36, v37);
          if (v72 < 0)
          {
            operator delete(__dst);
          }

          goto LABEL_50;
        }

        v12 = v25;
LABEL_38:
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v66 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v74 = v12;
          _os_log_impl(&dword_18366B000, v66, OS_LOG_TYPE_ERROR, "Error loading model resource from path=%@", buf, 0xCu);
        }

        if (qword_1EA84DC48 == -1)
        {
          v67 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
          {
LABEL_45:

            v11 = 0;
            goto LABEL_50;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v67 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_45;
          }
        }

        *buf = 138412290;
        v74 = v12;
        _os_log_impl(&dword_18366B000, v67, OS_LOG_TYPE_FAULT, "Error loading model resource from path=%@", buf, 0xCu);
        goto LABEL_45;
      }

LABEL_34:
      v33 = 0;
      v34 = strlen(__s);
      if (v34 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_9:
        sub_183688FF0();
      }

      goto LABEL_35;
    }

    if (self->_script == 1)
    {
      if (mode == 1)
      {
        v12 = objc_msgSend_stringByAppendingPathExtension_(@"vo_en_compact", v7, @"bundle", v8, v9, v10);
        v64 = objc_msgSend_UTF8String(v12, v59, v60, v61, v62, v63);
        v45 = sub_1837A3290(v64, 0, __s);
        goto LABEL_33;
      }

      if (mode == 5)
      {
        v38 = @"vo_other";
        if (language == 5)
        {
          v38 = @"vo_de";
        }

        if (language == 1)
        {
          objc_msgSend_stringByAppendingPathExtension_(@"vo_en_compact", v7, @"bundle", v8, v9, v10);
        }

        else
        {
          objc_msgSend_stringByAppendingPathExtension_(v38, v7, @"bundle", v8, v9, v10);
        }
        v12 = ;
        v44 = objc_msgSend_UTF8String(v12, v39, v40, v41, v42, v43);
        v45 = sub_1837A3290(v44, 0, __s);
LABEL_33:
        if (!v45)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }
    }

    v12 = 0;
    goto LABEL_38;
  }

  return 0;
}

+ (void)setParametersOverride:(id)a3
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC58;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_FAULT, "not supported", v4, 2u);
  }
}

- (id)newCTCRecognitionModel
{
  v287 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_shouldRunNextGenRecognizer(self, a2, v2, v3, v4, v5))
  {
    return 0;
  }

  v12 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v7, v8, v9, v10, v11);
  v17 = objc_msgSend_dictionaryForKey_(v12, v13, @"com.apple.corehandwriting", v14, v15, v16);

  v283[0] = MEMORY[0x1E69E9820];
  v283[1] = 3221225472;
  v283[2] = sub_1838F77A4;
  v283[3] = &unk_1E6DDF9E8;
  v18 = v17;
  v284 = v18;
  v23 = MEMORY[0x1865E6810](v283);
  v24 = 0;
  mode = self->_mode;
  if (mode <= 6 && ((1 << mode) & 0x56) != 0)
  {
    v24 = 0;
    if (self->_contentType == 6)
    {
      language = 1;
    }

    else
    {
      language = self->_language;
    }

    if (language > 18)
    {
      if (language <= 22)
      {
        if ((language - 19) < 2)
        {
          if (mode == 2)
          {
            v155 = -6.9078;
          }

          else
          {
            v155 = -3.912;
          }

          v27 = objc_msgSend_stringByAppendingPathExtension_(@"ctc_zh", v19, @"bundle", v20, v21, v22);
          v156 = [CHCTCRecognitionModel alloc];
          *&buf[8] = 0;
          *buf = 1;
          *&buf[12] = v155;
          *&buf[16] = 0xFFFFFFFFLL;
          v24 = objc_msgSend_initWithModelName_decodingPruningPolicy_(v156, v157, v27, buf, v158, v159);
          objc_msgSend_setNormalizeFeatures_(v24, v160, 0, v161, v162, v163);
          objc_msgSend_setInterpointDistance_(v24, v164, v165, v166, v167, v168, 0.1);
          objc_msgSend_setPadLastPoint_(v24, v169, 1, v170, v171, v172);
          v173 = (v23)[2](v23, @"ctc_zh");
          objc_msgSend_setShouldUseCPPFeatureExtraction_(v24, v174, v173, v175, v176, v177);
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v178 = qword_1EA84DC58;
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
            v184 = objc_msgSend_localeIdentifier(self->_locale, v179, v180, v181, v182, v183);
            v185 = sub_1838F0EC4(CHRecognizerConfiguration, language);
            *buf = 138412802;
            *&buf[4] = v184;
            *&buf[12] = 2112;
            *&buf[14] = v185;
            *&buf[22] = 2112;
            v286 = v27;
            _os_log_impl(&dword_18366B000, v178, OS_LOG_TYPE_DEFAULT, "configuration locale %@, effective language %@, recognition engine %@", buf, 0x20u);
          }

          if (v24)
          {
            goto LABEL_24;
          }

          v186 = sub_183761FE4(0);
          if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v27;
            _os_log_impl(&dword_18366B000, v186, OS_LOG_TYPE_ERROR, "An error occurred when loading the CTC model %@", buf, 0xCu);
          }

          v62 = sub_183761FE4(0);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_22;
          }

          *buf = 138412290;
          *&buf[4] = v27;
        }

        else if (language == 21)
        {
          if (mode == 2)
          {
            v252 = -6.9078;
          }

          else
          {
            v252 = -3.912;
          }

          v27 = objc_msgSend_stringByAppendingPathExtension_(@"ctc_ja", v19, @"bundle", v20, v21, v22);
          v253 = [CHCTCRecognitionModel alloc];
          *&buf[8] = 0;
          *buf = 1;
          *&buf[12] = v252;
          *&buf[16] = 0xFFFFFFFFLL;
          v24 = objc_msgSend_initWithModelName_decodingPruningPolicy_(v253, v254, v27, buf, v255, v256);
          objc_msgSend_setNormalizeFeatures_(v24, v257, 0, v258, v259, v260);
          objc_msgSend_setInterpointDistance_(v24, v261, v262, v263, v264, v265, 0.1);
          objc_msgSend_setPadLastPoint_(v24, v266, 1, v267, v268, v269);
          v270 = (v23)[2](v23, @"ctc_ja");
          objc_msgSend_setShouldUseCPPFeatureExtraction_(v24, v271, v270, v272, v273, v274);
          v275 = sub_183761FE4(1);
          if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
          {
            v281 = objc_msgSend_localeIdentifier(self->_locale, v276, v277, v278, v279, v280);
            objc_opt_self();
            *buf = 138412802;
            *&buf[4] = v281;
            *&buf[12] = 2112;
            *&buf[14] = @"Japanese";
            *&buf[22] = 2112;
            v286 = v27;
            _os_log_impl(&dword_18366B000, v275, OS_LOG_TYPE_DEFAULT, "configuration locale %@, effective language %@, recognition engine %@", buf, 0x20u);
          }

          if (v24)
          {
            goto LABEL_24;
          }

          v282 = sub_183761FE4(0);
          if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v27;
            _os_log_impl(&dword_18366B000, v282, OS_LOG_TYPE_ERROR, "An error occurred when loading the CTC model %@", buf, 0xCu);
          }

          v62 = sub_183761FE4(0);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_22;
          }

          *buf = 138412290;
          *&buf[4] = v27;
        }

        else
        {
          if (language != 22)
          {
            goto LABEL_25;
          }

          v27 = objc_msgSend_stringByAppendingPathExtension_(@"ctc_ko", v19, @"bundle", v20, v21, v22);
          v96 = [CHCTCRecognitionModel alloc];
          *buf = xmmword_1839D9FC8;
          *&buf[16] = 0xFFFFFFFFLL;
          v24 = objc_msgSend_initWithModelName_decodingPruningPolicy_(v96, v97, v27, buf, v98, v99);
          objc_msgSend_setNormalizeFeatures_(v24, v100, 0, v101, v102, v103);
          objc_msgSend_setInterpointDistance_(v24, v104, v105, v106, v107, v108, 0.1);
          objc_msgSend_setPadLastPoint_(v24, v109, 1, v110, v111, v112);
          v113 = (v23)[2](v23, @"ctc_ko");
          objc_msgSend_setShouldUseCPPFeatureExtraction_(v24, v114, v113, v115, v116, v117);
          v118 = sub_183761FE4(1);
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            v124 = objc_msgSend_localeIdentifier(self->_locale, v119, v120, v121, v122, v123);
            objc_opt_self();
            *buf = 138412802;
            *&buf[4] = v124;
            *&buf[12] = 2112;
            *&buf[14] = @"Korean";
            *&buf[22] = 2112;
            v286 = v27;
            _os_log_impl(&dword_18366B000, v118, OS_LOG_TYPE_DEFAULT, "configuration locale %@, effective language %@, recognition engine %@", buf, 0x20u);
          }

          if (v24)
          {
            goto LABEL_24;
          }

          v125 = sub_183761FE4(0);
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v27;
            _os_log_impl(&dword_18366B000, v125, OS_LOG_TYPE_ERROR, "An error occurred when loading the CTC model %@", buf, 0xCu);
          }

          v62 = sub_183761FE4(0);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_22;
          }

          *buf = 138412290;
          *&buf[4] = v27;
        }

        goto LABEL_21;
      }

      if (language <= 25)
      {
        if ((language - 24) >= 2)
        {
          if (language != 23)
          {
            goto LABEL_25;
          }

          v27 = objc_msgSend_stringByAppendingPathExtension_(@"ctc_th", v19, @"bundle", v20, v21, v22);
          v187 = [CHCTCRecognitionModel alloc];
          *buf = xmmword_1839D9FC8;
          *&buf[16] = 0xFFFFFFFFLL;
          v24 = objc_msgSend_initWithModelName_decodingPruningPolicy_(v187, v188, v27, buf, v189, v190);
          objc_msgSend_setNormalizeFeatures_(v24, v191, 0, v192, v193, v194);
          objc_msgSend_setInterpointDistance_(v24, v195, v196, v197, v198, v199, 0.1);
          objc_msgSend_setPadLastPoint_(v24, v200, 1, v201, v202, v203);
          v204 = (v23)[2](v23, @"ctc_th");
          objc_msgSend_setShouldUseCPPFeatureExtraction_(v24, v205, v204, v206, v207, v208);
          v209 = sub_183761FE4(1);
          if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
          {
            v215 = objc_msgSend_localeIdentifier(self->_locale, v210, v211, v212, v213, v214);
            objc_opt_self();
            *buf = 138412802;
            *&buf[4] = v215;
            *&buf[12] = 2112;
            *&buf[14] = @"Thai";
            *&buf[22] = 2112;
            v286 = v27;
            _os_log_impl(&dword_18366B000, v209, OS_LOG_TYPE_DEFAULT, "configuration locale %@, effective language %@, recognition engine %@", buf, 0x20u);
          }

          if (v24)
          {
            goto LABEL_24;
          }

          v216 = sub_183761FE4(0);
          if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v27;
            _os_log_impl(&dword_18366B000, v216, OS_LOG_TYPE_ERROR, "An error occurred when loading the CTC model %@", buf, 0xCu);
          }

          v62 = sub_183761FE4(0);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_22;
          }

          *buf = 138412290;
          *&buf[4] = v27;
        }

        else
        {
          v27 = objc_msgSend_stringByAppendingPathExtension_(@"ctc_cyrl", v19, @"bundle", v20, v21, v22);
          v65 = [CHCTCRecognitionModel alloc];
          *buf = xmmword_1839D9FC8;
          *&buf[16] = 0xFFFFFFFFLL;
          v24 = objc_msgSend_initWithModelName_decodingPruningPolicy_(v65, v66, v27, buf, v67, v68);
          objc_msgSend_setNormalizeFeatures_(v24, v69, 0, v70, v71, v72);
          objc_msgSend_setInterpointDistance_(v24, v73, v74, v75, v76, v77, 0.05);
          objc_msgSend_setPadLastPoint_(v24, v78, 1, v79, v80, v81);
          v82 = (v23)[2](v23, @"ctc_cyrl");
          objc_msgSend_setShouldUseCPPFeatureExtraction_(v24, v83, v82, v84, v85, v86);
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v87 = qword_1EA84DC58;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v93 = objc_msgSend_localeIdentifier(self->_locale, v88, v89, v90, v91, v92);
            v94 = sub_1838F0EC4(CHRecognizerConfiguration, language);
            *buf = 138412802;
            *&buf[4] = v93;
            *&buf[12] = 2112;
            *&buf[14] = v94;
            *&buf[22] = 2112;
            v286 = v27;
            _os_log_impl(&dword_18366B000, v87, OS_LOG_TYPE_DEFAULT, "configuration locale %@, effective language %@, recognition engine %@", buf, 0x20u);
          }

          if (v24)
          {
            goto LABEL_24;
          }

          v95 = sub_183761FE4(0);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v27;
            _os_log_impl(&dword_18366B000, v95, OS_LOG_TYPE_ERROR, "An error occurred when loading the CTC model %@", buf, 0xCu);
          }

          v62 = sub_183761FE4(0);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_22;
          }

          *buf = 138412290;
          *&buf[4] = v27;
        }

        goto LABEL_21;
      }

      if (language == 26)
      {
        v27 = objc_msgSend_stringByAppendingPathExtension_(@"ctc_ar", v19, @"bundle", v20, v21, v22);
        v217 = [CHCTCRecognitionModel alloc];
        *buf = xmmword_1839D9FC8;
        *&buf[16] = 0xFFFFFFFFLL;
        v24 = objc_msgSend_initWithModelName_decodingPruningPolicy_(v217, v218, v27, buf, v219, v220);
        objc_msgSend_setNormalizeFeatures_(v24, v221, 0, v222, v223, v224);
        objc_msgSend_setInterpointDistance_(v24, v225, v226, v227, v228, v229, 0.05);
        objc_msgSend_setPadLastPoint_(v24, v230, 1, v231, v232, v233);
        objc_msgSend_setShouldUseCPPFeatureExtraction_(v24, v234, 1, v235, v236, v237);
        objc_msgSend_setShouldUseStrokeDirectionFeature_(v24, v238, 1, v239, v240, v241);
        objc_msgSend_setShouldUseArabicVisualOrderFeatureExtraction_(v24, v242, 1, v243, v244, v245);
        v62 = sub_183761FE4(1);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v251 = objc_msgSend_localeIdentifier(self->_locale, v246, v247, v248, v249, v250);
          objc_opt_self();
          *buf = 138412802;
          *&buf[4] = v251;
          *&buf[12] = 2112;
          *&buf[14] = @"Arabic";
          *&buf[22] = 2112;
          v286 = v27;
          _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_DEFAULT, "configuration locale %@, effective language %@, recognition engine %@", buf, 0x20u);
        }

        goto LABEL_23;
      }

      if (language != 27)
      {
        goto LABEL_25;
      }

      v27 = objc_msgSend_stringByAppendingPathExtension_(@"ctc_vi", v19, @"bundle", v20, v21, v22);
      v126 = [CHCTCRecognitionModel alloc];
      *buf = xmmword_1839D9FB0;
      *&buf[16] = 20;
      v24 = objc_msgSend_initWithModelName_decodingPruningPolicy_(v126, v127, v27, buf, v128, v129);
      objc_msgSend_setNormalizeFeatures_(v24, v130, 0, v131, v132, v133);
      objc_msgSend_setInterpointDistance_(v24, v134, v135, v136, v137, v138, 0.1);
      objc_msgSend_setPadLastPoint_(v24, v139, 1, v140, v141, v142);
      objc_msgSend_setShouldUseCPPFeatureExtraction_(v24, v143, 1, v144, v145, v146);
      v147 = sub_183761FE4(1);
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        v153 = objc_msgSend_localeIdentifier(self->_locale, v148, v149, v150, v151, v152);
        objc_opt_self();
        *buf = 138412802;
        *&buf[4] = v153;
        *&buf[12] = 2112;
        *&buf[14] = @"Vietnamese";
        *&buf[22] = 2112;
        v286 = v27;
        _os_log_impl(&dword_18366B000, v147, OS_LOG_TYPE_DEFAULT, "configuration locale %@, effective language %@, recognition engine %@", buf, 0x20u);
      }

      if (v24)
      {
        goto LABEL_24;
      }

      v154 = sub_183761FE4(0);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v27;
        _os_log_impl(&dword_18366B000, v154, OS_LOG_TYPE_ERROR, "An error occurred when loading the CTC model %@", buf, 0xCu);
      }

      v62 = sub_183761FE4(0);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v27;
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if ((language - 1) < 0x12)
    {
      v27 = objc_msgSend_stringByAppendingPathExtension_(@"ctc_latn", v19, @"bundle", v20, v21, v22);
      v28 = [CHCTCRecognitionModel alloc];
      *buf = xmmword_1839D9FB0;
      *&buf[16] = 20;
      v24 = objc_msgSend_initWithModelName_modelPrecision_decodingPruningPolicy_(v28, v29, v27, 65568, buf, v30);
      objc_msgSend_setNormalizeFeatures_(v24, v31, 0, v32, v33, v34);
      objc_msgSend_setPadLastPoint_(v24, v35, 1, v36, v37, v38);
      objc_msgSend_setInterpointDistance_(v24, v39, v40, v41, v42, v43, 0.05);
      objc_msgSend_setStrokeOrdering_(v24, v44, 1, v45, v46, v47);
      v48 = (v23)[2](v23, @"ctc_latn");
      objc_msgSend_setShouldUseCPPFeatureExtraction_(v24, v49, v48, v50, v51, v52);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v53 = qword_1EA84DC58;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v59 = objc_msgSend_localeIdentifier(self->_locale, v54, v55, v56, v57, v58);
        objc_opt_self();
        v60 = off_1E6DDFDE0[language - 1];
        *buf = 138412802;
        *&buf[4] = v59;
        *&buf[12] = 2112;
        *&buf[14] = v60;
        *&buf[22] = 2112;
        v286 = v27;
        _os_log_impl(&dword_18366B000, v53, OS_LOG_TYPE_DEFAULT, "configuration locale %@, effective language %@, recognition engine %@", buf, 0x20u);
      }

      if (v24)
      {
        goto LABEL_24;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v61 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v27;
        _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_ERROR, "An error occurred when loading the CTC model %@", buf, 0xCu);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v62 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      v62 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
LABEL_20:
        *buf = 138412290;
        *&buf[4] = v27;
LABEL_21:
        _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_FAULT, "An error occurred when loading the CTC model %@", buf, 0xCu);
      }

LABEL_22:
      v24 = 0;
LABEL_23:

LABEL_24:
    }
  }

LABEL_25:
  v63 = v24;

  return v63;
}

- (id)newPostProcessorWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4 phraseLexicon:(_LXLexicon *)a5 customPhraseLexicon:(_LXLexicon *)a6 textReplacements:(id)a7 postProcessingFST:(id)a8 wordLM:(void *)a9 mecabraWrapper:(id)a10 ovsStringChecker:(id)a11 spellChecker:(id)a12 lmVocabulary:(void *)a13 maxResultCount:(int64_t)a14
{
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v21 = a11;
  v542 = a12;
  if (!self || ((mode = self->_mode, v28 = mode > 6, v29 = (1 << mode) & 0x76, !v28) ? (v30 = v29 == 0) : (v30 = 1), v30 || (objc_msgSend_shouldRunNextGenRecognizer(self, v22, v23, v24, v25, v26) & 1) == 0))
  {
    v513 = 0;
    goto LABEL_53;
  }

  v538 = v21;
  v539 = v19;
  v534 = v18;
  v535 = v20;
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v545 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v541 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v544 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v540 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v543 = objc_alloc_init(CHPreserveOriginalRecognitionStep);
  objc_msgSend_addObject_(v31, v32, v543, v33, v34, v35);
  objc_msgSend_addObject_(v545, v36, v543, v37, v38, v39);
  objc_msgSend_addObject_(v541, v40, v543, v41, v42, v43);
  objc_msgSend_addObject_(v544, v44, v543, v45, v46, v47);
  objc_msgSend_addObject_(v540, v48, v543, v49, v50, v51);
  if (objc_msgSend_shouldPerformArabicPostProcessing(self, v52, v53, v54, v55, v56))
  {
    v62 = objc_alloc_init(CHTransliterateConfusableCharactersArabicStep);
    objc_msgSend_addObject_(v31, v63, v62, v64, v65, v66);
    objc_msgSend_addObject_(v545, v67, v62, v68, v69, v70);
    v71 = [CHVisualToLogicalTransformStep alloc];
    v77 = objc_msgSend_baseWritingDirection(self, v72, v73, v74, v75, v76);
    v83 = objc_msgSend_mode(self, v78, v79, v80, v81, v82);
    v87 = objc_msgSend_initWithBaseDirection_mode_(v71, v84, v77, v83, v85, v86);
    objc_msgSend_addObject_(v31, v88, v87, v89, v90, v91);
    objc_msgSend_addObject_(v545, v92, v87, v93, v94, v95);
    objc_msgSend_addObject_(v541, v96, v87, v97, v98, v99);
    objc_msgSend_addObject_(v544, v100, v87, v101, v102, v103);
    objc_msgSend_addObject_(v540, v104, v87, v105, v106, v107);
  }

  v108 = self->_mode;
  if (v108 == 4 || v108 == 2)
  {
    v109 = [CHRemoveSpacesFromStrongURLsAndEmailsStep alloc];
    v114 = objc_msgSend_initWithPatternFst_(v109, v110, v539, v111, v112, v113);
    objc_msgSend_addObject_(v31, v115, v114, v116, v117, v118);
    objc_msgSend_addObject_(v545, v119, v114, v120, v121, v122);
  }

  if ((objc_msgSend_shouldRunLexiconCorrectionPostProcessingStep(self, v57, v58, v59, v60, v61) & 1) != 0 || objc_msgSend_shouldConvertKanaInPostProcessing(self, v123, v124, v125, v126, v127))
  {
    v133 = [CHCleanUpSpacesStep alloc];
    v139 = objc_msgSend_locale(self, v134, v135, v136, v137, v138);
    v144 = objc_msgSend_initWithLocale_(v133, v140, v139, v141, v142, v143);

    objc_msgSend_addObject_(v31, v145, v144, v146, v147, v148);
    objc_msgSend_addObject_(v545, v149, v144, v150, v151, v152);
  }

  if (objc_msgSend_shouldReorderSCTCConfusion(self, v128, v129, v130, v131, v132))
  {
    v158 = [CHReorderSCTCConfusionStep alloc];
    v163 = objc_msgSend_initWithMaxResultCount_(v158, v159, a14, v160, v161, v162);
    objc_msgSend_addObject_(v31, v164, v163, v165, v166, v167);
    objc_msgSend_addObject_(v545, v168, v163, v169, v170, v171);
  }

  if (objc_msgSend_shouldRemoveInvalidArabicDiacritics(self, v153, v154, v155, v156, v157))
  {
    v177 = objc_alloc_init(CHRemoveInvalidArabicDiacriticsStep);
    objc_msgSend_addObject_(v31, v178, v177, v179, v180, v181);
    objc_msgSend_addObject_(v545, v182, v177, v183, v184, v185);
  }

  if (objc_msgSend_shouldConvertKanaInPostProcessing(self, v172, v173, v174, v175, v176))
  {
    v191 = [CHJapaneseTokenizationAndConversionStep alloc];
    v193 = objc_msgSend_initWithMecabra_wordLanguageModel_ovsStringChecker_promoteKanaConversion_(v191, v192, v535, a9, v21, 0);
    objc_msgSend_addObject_(v31, v194, v193, v195, v196, v197);
    objc_msgSend_addObject_(v545, v198, v193, v199, v200, v201);
  }

  if (objc_msgSend_shouldApplySemanticTokenization(self, v186, v187, v188, v189, v190))
  {
    v207 = [CHSemanticTokenizerStep alloc];
    v211 = objc_msgSend_initWithWordLanguageModel_ovsStringChecker_(v207, v208, a9, v21, v209, v210);
    objc_msgSend_addObject_(v31, v212, v211, v213, v214, v215);
    objc_msgSend_addObject_(v545, v216, v211, v217, v218, v219);
  }

  language = self->_language;
  if (language - 4 >= 0xF && (language > 0x1A || ((1 << language) & 0x4800007) == 0))
  {
    v515 = [CHTransliterateConfusableCharactersStep alloc];
    v521 = objc_msgSend_locale(self, v516, v517, v518, v519, v520);
    v524 = objc_msgSend_initWithStaticLexicon_customLexicon_locale_(v515, v522, a3, a4, v521, v523);

    objc_msgSend_addObject_(v31, v525, v524, v526, v527, v528);
    if (self->_script != 5)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (self->_script == 5)
  {
LABEL_27:
    v221 = objc_alloc_init(CHRemoveSpacesFromEnglishAndKoreanParticlesStep);
    objc_msgSend_addObject_(v31, v222, v221, v223, v224, v225);
    objc_msgSend_addObject_(v545, v226, v221, v227, v228, v229);
  }

LABEL_28:
  if (objc_msgSend_shouldRunLexiconCorrectionPostProcessingStep(self, v202, v203, v204, v205, v206))
  {
    v235 = a3;
    PseudoTokens = objc_msgSend_shouldCreatePseudoTokens(self, v230, v231, v232, v233, v234);
    v237 = [CHLexiconCorrectionStep alloc];
    v243 = objc_msgSend_effectiveAutoCapitalizationMode(self, v238, v239, v240, v241, v242);
    shouldAutoCorrect = objc_msgSend_shouldAutoCorrect(self, v244, v245, v246, v247, v248);
    shouldAutoCapitalize = objc_msgSend_shouldAutoCapitalize(self, v250, v251, v252, v253, v254);
    v261 = objc_msgSend_locale(self, v256, v257, v258, v259, v260);
    v262 = shouldAutoCapitalize;
    a3 = v235;
    PseudoTokens_locale_staticLexicon_customLexicon_phraseLexicon_customPhraseLexicon_spellChecker_lmVocabulary_ovsStringChecker_textReplacements = objc_msgSend_initWithAutoCapitalizationMode_shouldAutoCorrect_shouldAutoCapitalize_shouldCreatePseudoTokens_locale_staticLexicon_customLexicon_phraseLexicon_customPhraseLexicon_spellChecker_lmVocabulary_ovsStringChecker_textReplacements_(v237, v263, v243, shouldAutoCorrect, v262, PseudoTokens, v261, v235, a4, a5, a6, v542, a13, v538, v534);

    objc_msgSend_addObject_(v31, v265, PseudoTokens_locale_staticLexicon_customLexicon_phraseLexicon_customPhraseLexicon_spellChecker_lmVocabulary_ovsStringChecker_textReplacements, v266, v267, v268);
    v269 = [CHSpellCorrectionCandidatesStep alloc];
    v275 = objc_msgSend_locale(self, v270, v271, v272, v273, v274);
    v277 = objc_msgSend_initWithLocale_spellChecker_staticLexicon_customLexicon_(v269, v276, v275, v542, v235, a4);

    objc_msgSend_addObject_(v31, v278, v277, v279, v280, v281);
  }

  if (objc_msgSend_shouldPromoteInLexiconCandidates(self, v230, v231, v232, v233, v234))
  {
    v287 = [CHPromoteInLexiconCandidatesStep alloc];
    v291 = objc_msgSend_initWithStaticLexicon_customLexicon_(v287, v288, a3, a4, v289, v290);
    objc_msgSend_addObject_(v31, v292, v291, v293, v294, v295);
  }

  if (objc_msgSend_shouldTransliterateHalfWidthPunctuations(self, v282, v283, v284, v285, v286))
  {
    shouldAddAlternativeWidthCandidates = objc_msgSend_shouldAddAlternativeWidthCandidates(self, v296, v297, v298, v299, v300);
    v302 = [CHTransliterateHalfWidthPunctuationStep alloc];
    ShouldAddAlternatives = objc_msgSend_initWithShouldAddAlternatives_(v302, v303, shouldAddAlternativeWidthCandidates, v304, v305, v306);
    objc_msgSend_addObject_(v31, v308, ShouldAddAlternatives, v309, v310, v311);
    v312 = objc_alloc_init(CHOpeningClosingCharacterMatchingStep);
    objc_msgSend_addObject_(v31, v313, v312, v314, v315, v316);
  }

  if (self->_script - 2 <= 2)
  {
    v317 = [CHTransliterateChineseJapaneseStep alloc];
    shouldTransliterateSentencesSCTC = objc_msgSend_shouldTransliterateSentencesSCTC(self, v318, v319, v320, v321, v322);
    v328 = objc_msgSend_initWithTransliterateSentences_(v317, v324, shouldTransliterateSentencesSCTC, v325, v326, v327);
    objc_msgSend_addObject_(v31, v329, v328, v330, v331, v332);
    objc_msgSend_addObject_(v545, v333, v328, v334, v335, v336);
  }

  if (objc_msgSend_shouldRefineCandidates(self, v296, v297, v298, v299, v300))
  {
    v342 = [CHCandidateRefinementStep alloc];
    shouldKeepOutOfPatternCandidates = objc_msgSend_shouldKeepOutOfPatternCandidates(self, v343, v344, v345, v346, v347);
    v354 = objc_msgSend_shouldTransliterateSentencesSCTC(self, v349, v350, v351, v352, v353);
    shouldKeepOriginalSpelling = objc_msgSend_initWithShouldKeepOutOfPatternCandidates_shouldKeepDuplicateTokenIDs_shouldKeepOutOfLexiconAlternatives_shouldKeepAlternativeLengths_shouldKeepSubstrings_shouldKeepOriginalSpelling_(v342, v355, shouldKeepOutOfPatternCandidates, v354, 0, 0, 0, 1);
    objc_msgSend_addObject_(v31, v357, shouldKeepOriginalSpelling, v358, v359, v360);
    objc_msgSend_addObject_(v545, v361, shouldKeepOriginalSpelling, v362, v363, v364);
  }

  v365 = self->_language;
  if (v365 - 4 >= 0xF && (v365 > 0x1A || ((1 << v365) & 0x4800007) == 0))
  {
    v529 = objc_alloc_init(CHTransliterateIsolatedConfusableCharactersStep);
    objc_msgSend_addObject_(v31, v530, v529, v531, v532, v533);
  }

  if (objc_msgSend_shouldMarkMultiWordOVS(self, v337, v338, v339, v340, v341))
  {
    v371 = [CHMultiWordOVSFilteringStep alloc];
    v376 = objc_msgSend_initWithOVSStringChecker_(v371, v372, v538, v373, v374, v375);
    objc_msgSend_addObject_(v31, v377, v376, v378, v379, v380);
    objc_msgSend_addObject_(v545, v381, v376, v382, v383, v384);
  }

  if (objc_msgSend_shouldIdentifyChangeableColumns(self, v366, v367, v368, v369, v370))
  {
    v390 = objc_alloc_init(CHIdentifyLowAlignmentConfidenceColumnsStep);
    objc_msgSend_addObject_(v31, v391, v390, v392, v393, v394);
    objc_msgSend_addObject_(v545, v395, v390, v396, v397, v398);
  }

  if (objc_msgSend_shouldMarkNoWhiteSpaceColumnsChangeable(self, v385, v386, v387, v388, v389))
  {
    v404 = objc_alloc_init(CHMarkNoWhiteSpaceColumnsChangeableStep);
    objc_msgSend_addObject_(v31, v405, v404, v406, v407, v408);
    objc_msgSend_addObject_(v545, v409, v404, v410, v411, v412);
  }

  if (objc_msgSend_shouldRemoveSpacesFromHashtagsAndMentions(self, v399, v400, v401, v402, v403))
  {
    v418 = objc_alloc_init(CHRemoveSpacesFromHashtagsAndMentionsStep);
    objc_msgSend_addObject_(v31, v419, v418, v420, v421, v422);
    objc_msgSend_addObject_(v545, v423, v418, v424, v425, v426);
  }

  if (objc_msgSend_shouldPerformTurkishPostProcessing(self, v413, v414, v415, v416, v417))
  {
    v427 = [CHTurkishOVSConfusableCharactersStep alloc];
    v430 = objc_msgSend_initWithOVSStringChecker_staticLexicon_customLexicon_(v427, v428, v538, a3, a4, v429);
    objc_msgSend_addObject_(v31, v431, v430, v432, v433, v434);
    objc_msgSend_addObject_(v545, v435, v430, v436, v437, v438);
  }

  v439 = [CHRemoveSpacesFromSpecialFieldsStep alloc];
  v441 = objc_msgSend_initWithPatternFst_patternType_capitalizationToSplit_convertToLowercase_(v439, v440, v539, 10, 1, 1);
  objc_msgSend_addObject_(v541, v442, v441, v443, v444, v445);

  v446 = [CHNumberFieldResultReorderingStep alloc];
  v452 = objc_msgSend_initForPhoneNumberFields(v446, v447, v448, v449, v450, v451);
  objc_msgSend_addObject_(v544, v453, v452, v454, v455, v456);

  v457 = [CHRemoveSpacesFromSpecialFieldsStep alloc];
  v459 = objc_msgSend_initWithPatternFst_patternType_capitalizationToSplit_convertToLowercase_(v457, v458, v539, 8, 0, 0);
  objc_msgSend_addObject_(v544, v460, v459, v461, v462, v463);

  v464 = [CHNumberFieldResultReorderingStep alloc];
  v470 = objc_msgSend_initForDigitFields(v464, v465, v466, v467, v468, v469);
  objc_msgSend_addObject_(v540, v471, v470, v472, v473, v474);

  v475 = [CHPostProcessingManager alloc];
  v480 = objc_msgSend_initWithSequence_(v475, v476, v31, v477, v478, v479);
  v481 = [CHPostProcessingManager alloc];
  v486 = objc_msgSend_initWithSequence_(v481, v482, v545, v483, v484, v485);
  v487 = [CHPostProcessingManager alloc];
  v492 = objc_msgSend_initWithSequence_(v487, v488, v541, v489, v490, v491);
  v493 = [CHPostProcessingManager alloc];
  v498 = objc_msgSend_initWithSequence_(v493, v494, v544, v495, v496, v497);
  v499 = [CHPostProcessingManager alloc];
  v504 = objc_msgSend_initWithSequence_(v499, v500, v540, v501, v502, v503);
  v505 = [CHTextFieldTypeSwitchStep alloc];
  inited = objc_msgSend_initProcessorDefault_processorDigits_processorPhone_processorUsername_processorEmail_processorURL_processorASCII_processorEquation_(v505, v506, v480, v504, v498, v492, v492, v486, v486, v486);
  v508 = [CHPostProcessingManager alloc];
  v513 = objc_msgSend_initWithStep_(v508, v509, inited, v510, v511, v512);

  v18 = v534;
  v20 = v535;
  v21 = v538;
  v19 = v539;
LABEL_53:

  return v513;
}

- (id)newMergedResultPostProcessorWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4 stringChecker:(id)a5
{
  v13 = a5;
  if (self && ((mode = self->_mode, v15 = mode > 6, v16 = (1 << mode) & 0x76, !v15) ? (v17 = v16 == 0) : (v17 = 1), !v17 && (objc_msgSend_shouldRunNextGenRecognizer(self, v8, v9, v10, v11, v12) & 1) != 0))
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (objc_msgSend_shouldRecoverCyrillicCandidates(self, v19, v20, v21, v22, v23))
    {
      v24 = [CHCyrillicAddAlternativeScriptCandidatesStep alloc];
      v28 = objc_msgSend_initWithStaticLexicon_customLexicon_(v24, v25, a3, a4, v26, v27);
      objc_msgSend_addObject_(v18, v29, v28, v30, v31, v32);
      v33 = objc_alloc_init(CHCyrillicRecoverConfusableWordsStep);
      objc_msgSend_addObject_(v18, v34, v33, v35, v36, v37);
    }

    v38 = [CHMultiWordOVSFilteringStep alloc];
    v43 = objc_msgSend_initWithOVSStringChecker_(v38, v39, v13, v40, v41, v42);
    objc_msgSend_addObject_(v18, v44, v43, v45, v46, v47);
    v48 = [CHCandidateRefinementStep alloc];
    shouldKeepOriginalSpelling = objc_msgSend_initWithShouldKeepOutOfPatternCandidates_shouldKeepDuplicateTokenIDs_shouldKeepOutOfLexiconAlternatives_shouldKeepAlternativeLengths_shouldKeepSubstrings_shouldKeepOriginalSpelling_(v48, v49, 1, 1, 1, 1, 1, 1);
    objc_msgSend_addObject_(v18, v51, shouldKeepOriginalSpelling, v52, v53, v54);
    v55 = [CHPostProcessingManager alloc];
    v60 = objc_msgSend_initWithSequence_(v55, v56, v18, v57, v58, v59);
  }

  else
  {
    v60 = 0;
  }

  return v60;
}

- (id)newCTCTextDecoderWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4 wordLanguageModel:(void *)a5
{
  if (!objc_msgSend_shouldRunNextGenRecognizer(self, a2, a3, a4, a5, v5))
  {
    return 0;
  }

  mode = self->_mode;
  v13 = mode > 6;
  v14 = (1 << mode) & 0x56;
  if (v13 || v14 == 0)
  {
    return 0;
  }

  v16 = objc_msgSend_languageResourceBundleWithStaticLexicon_customLexicon_wordLanguageModel_(self, v10, a3, a4, a5, v11);
  v17 = objc_alloc(MEMORY[0x1E6991FD0]);
  v22 = objc_msgSend_initWithLanguageResourceBundle_(v17, v18, v16, v19, v20, v21);

  return v22;
}

- (CHNeuralNetwork)newFreeFormEngine
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_mode != 3)
  {
    return 0;
  }

  v5 = objc_msgSend_stringByAppendingPathExtension_(@"gd", a2, @"bundle", v2, v3, v4);
  v6 = v5;
  v12 = objc_msgSend_UTF8String(v6, v7, v8, v9, v10, v11);
  sub_1837A3290(v12, 0, __s);

  v13 = strlen(__s);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v17 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  v21 = v13;
  if (v13)
  {
    memcpy(&__p, __s, v13);
  }

  *(&__p + v17) = 0;
  result = sub_1836AAB60(&__p, 0, 1u, v14, v15, v16);
  if (v21 < 0)
  {
    v19 = result;
    operator delete(__p);
    return v19;
  }

  return result;
}

- (id)newCornerDetector
{
  if (self->_mode != 3)
  {
    return 0;
  }

  result = objc_alloc_init(CHCornerDetector);
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

- (int64_t)maxRecognitionResultDefaultCount
{
  if (self->_language - 19 < 2 || self->_mode == 3)
  {
    return 15;
  }

  else
  {
    return 6;
  }
}

+ (CGSize)defaultMinimumDrawingSize
{
  v2 = 11.0;
  v3 = 11.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)engineCandidateCount
{
  v2 = 6;
  if (self->_mode == 5)
  {
    v2 = 4;
  }

  if (self->_language - 19 >= 2)
  {
    return v2;
  }

  else
  {
    return 15;
  }
}

- (id)decodingCommitActionBlock
{
  v6 = objc_msgSend_defaultCommitActionBehaviorForLocale_(MEMORY[0x1E6992000], a2, self->_locale, v2, v3, v4);
  v7 = v6;
  language = self->_language;
  v9 = language > 0x17;
  v10 = (1 << language) & 0xB80000;
  if (!v9 && v10 != 0)
  {

    v7 = &unk_1EF1BF2B0;
  }

  v12 = MEMORY[0x1865E6810](v7);

  return v12;
}

- (id)pathScoringFunctionForLanguageResourceBundle:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_defaultPathScoringFunctionForLanguageResourceBundle_(MEMORY[0x1E6992010], v5, v4, v6, v7, v8);
  v10 = v9;
  if (self->_mode == 1)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1838F8C58;
    v15[3] = &unk_1E6DDFA30;
    v16 = v9;
    v11 = MEMORY[0x1865E6810](v15);
    v12 = MEMORY[0x1865E6810]();
  }

  else
  {
    v12 = MEMORY[0x1865E6810](v9);
  }

  v13 = MEMORY[0x1865E6810](v12);

  return v13;
}

- (unint64_t)mixedScriptPenalty
{
  script = self->_script;
  if (script == 7)
  {
    return 1;
  }

  else
  {
    return 2 * (script == 8);
  }
}

- (id)languageResourceBundleWithStaticLexicon:(_LXLexicon *)a3 customLexicon:(_LXLexicon *)a4 wordLanguageModel:(void *)a5
{
  v221[2] = *MEMORY[0x1E69E9840];
  v217 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4, a5, v5);
  if (!self)
  {
LABEL_29:
    v76 = 0;
    if (qword_1EA84DC48 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v14 = objc_msgSend_objectForKey_(0, v10, @"DecodingLexiconWeight", v11, v12, v13);
  if (v14)
  {
    if (qword_1EA84DC48 == -1)
    {
      v15 = qword_1EA84DC58;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:

        objc_msgSend_floatValue(v14, v16, v17, v18, v19, v20);
        v22 = v21;
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v15 = qword_1EA84DC58;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_DEFAULT, "decodingLexiconWeight from override weights: %@", &buf, 0xCu);
    goto LABEL_6;
  }

  contentType = self->_contentType;
  if ((contentType - 4) < 2)
  {
    v22 = 0.1;
  }

  else if (contentType == 3 || (v22 = 0.0, !contentType))
  {
    script = self->_script;
    v22 = 0.0;
    if (script > 3)
    {
      v182 = 0.3;
      v183 = 0.3;
      if (script != 7)
      {
        v183 = 0.0;
      }

      if (script != 5)
      {
        v182 = v183;
      }

      if (script == 4)
      {
        v22 = 0.3;
      }

      else
      {
        v22 = v182;
      }
    }

    else if ((script - 2) >= 2 && script)
    {
      if (script == 1)
      {
        v22 = dbl_1839D9FA0[self->_language == 27];
      }
    }

    else
    {
      v22 = 0.3;
    }
  }

LABEL_7:

  v27 = objc_msgSend_objectForKey_(0, v23, @"DecodingLexiconLowerBoundLogProbability", v24, v25, v26);
  if (v27)
  {
    if (qword_1EA84DC48 == -1)
    {
      v28 = qword_1EA84DC58;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        objc_msgSend_floatValue(v27, v29, v30, v31, v32, v33);
        v35 = v34;
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v28 = qword_1EA84DC58;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v27;
    _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_DEFAULT, "decodingLexiconLowerBoundLogProbability from override weights: %@", &buf, 0xCu);
    goto LABEL_11;
  }

  v35 = -6.90775528;
LABEL_21:

  if (v22 <= 0.0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    v38 = objc_alloc(MEMORY[0x1E6991FE0]);
    v42 = objc_msgSend_initWithLexicon_priority_(v38, v39, a3, 1, v40, v41);
    objc_msgSend_addObject_(v217, v43, v42, v44, v45, v46);
  }

  if (a4)
  {
    v47 = objc_alloc(MEMORY[0x1E6991FE0]);
    v51 = objc_msgSend_initWithLexicon_priority_(v47, v48, a4, 0, v49, v50);
    objc_msgSend_addObject_(v217, v52, v51, v53, v54, v55);
  }

  v56 = objc_alloc(MEMORY[0x1E6991FE8]);
  v62 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v57, v58, v59, v60, v61, v22);
  v68 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v63, v64, v65, v66, v67, v35);
  v74 = objc_msgSend_lexiconStringNormalizationFunction(self, v69, v70, v71, v72, v73);
  v76 = objc_msgSend_initWithLexicons_decodingWeight_lowerBoundLogProbability_inputNormalizationFunction_(v56, v75, v217, v62, v68, v74);

  if (qword_1EA84DC48 != -1)
  {
LABEL_27:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v77 = qword_1EA84DC58;
    if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_30:
  v77 = qword_1EA84DC58;
  if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_35;
  }

LABEL_31:
  if (self)
  {
    v83 = objc_msgSend_enableGen2CharacterLMIfAvailable(self, v78, v79, v80, v81, v82);
    v84 = self->_language - 1;
    v85 = v84 > 0x1A;
    v86 = ((0x7F3FFFFu >> v84) ^ 1) & v83;
    if (v85)
    {
      LOBYTE(v86) = v83;
    }
  }

  else
  {
    LOBYTE(v86) = 0;
  }

  LODWORD(buf) = 67109120;
  DWORD1(buf) = v86 & 1;
  _os_log_impl(&dword_18366B000, v77, OS_LOG_TYPE_DEFAULT, "CHRecognizer is running rnn character language model: %d", &buf, 8u);
LABEL_35:

  if (!self)
  {
    v119 = 0;
    v160 = 0;
    goto LABEL_77;
  }

  v91 = objc_msgSend_objectForKey_(0, v87, @"DecodingCharacterLMWeight", v88, v89, v90);
  if (v91)
  {
    if (qword_1EA84DC48 == -1)
    {
      v92 = qword_1EA84DC58;
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:

        objc_msgSend_floatValue(v91, v93, v94, v95, v96, v97);
        v99 = v98;
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v92 = qword_1EA84DC58;
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v91;
    _os_log_impl(&dword_18366B000, v92, OS_LOG_TYPE_DEFAULT, "decodingCharacterLMWeight from override weights: %@", &buf, 0xCu);
    goto LABEL_40;
  }

  v113 = self->_script;
  v99 = 0.0;
  if (v113 > 4)
  {
    if (v113 <= 6)
    {
      if (v113 != 5)
      {
        v99 = 0.1;
        goto LABEL_41;
      }

      goto LABEL_97;
    }

    if (v113 == 7)
    {
      v99 = 0.4;
    }

    else if (v113 == 8)
    {
      v99 = 0.2;
    }
  }

  else
  {
    if (v113 > 1)
    {
      if ((v113 - 2) >= 2)
      {
        if (v113 == 4)
        {
          v99 = 0.15;
        }

        goto LABEL_41;
      }

LABEL_97:
      v99 = 0.3;
      goto LABEL_41;
    }

    if (!v113)
    {
      goto LABEL_97;
    }

    if (v113 == 1)
    {
      if (self->_language == 27)
      {
        v99 = 0.0;
      }

      else
      {
        v99 = 0.1203125;
      }
    }
  }

LABEL_41:

  v104 = objc_msgSend_objectForKey_(0, v100, @"DecodingCharacterLMLowerBoundLogProbability", v101, v102, v103);
  if (v104)
  {
    if (qword_1EA84DC48 == -1)
    {
      v105 = qword_1EA84DC58;
      if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
LABEL_45:

        objc_msgSend_floatValue(v104, v106, v107, v108, v109, v110);
        v112 = v111;
        goto LABEL_54;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v105 = qword_1EA84DC58;
      if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v104;
    _os_log_impl(&dword_18366B000, v105, OS_LOG_TYPE_DEFAULT, "characterLMLowerBoundLogProbability from override weights: %@", &buf, 0xCu);
    goto LABEL_45;
  }

  if (self->_script == 1)
  {
    v112 = -6.90775528;
  }

  else
  {
    v112 = -1.79769313e308;
  }

LABEL_54:

  if (v99 <= 0.0)
  {
LABEL_55:
    v119 = 0;
    goto LABEL_62;
  }

  v120 = objc_msgSend_enableGen2CharacterLMIfAvailable(self, v114, v115, v116, v117, v118);
  language = self->_language;
  if (language - 1 < 0x12 || language - 21 < 7)
  {
    goto LABEL_58;
  }

  if (!v120)
  {
    if (language <= 0x14 && ((1 << language) & 0x180001) != 0)
    {
      goto LABEL_55;
    }

LABEL_58:
    *(&buf + 1) = 0;
    v219 = 0;
    *&buf = &buf + 8;
    v122 = objc_msgSend_newCharacterLanguageModelAndMap_force_(self, v114, &buf, 1, v117, v118);
    if (v122)
    {
      v123 = objc_alloc(MEMORY[0x1E6991FD8]);
      locale = self->_locale;
      v130 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v125, v126, v127, v128, v129, v99);
      v136 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v131, v132, v133, v134, v135, v112);
      v119 = objc_msgSend_initWithLMLanguageModel_locale_decodingWeight_lowerBoundLogProbability_(v123, v137, v122, locale, v130, v136);

      CFRelease(v122);
    }

    else
    {
      v119 = 0;
    }

    sub_18368D56C(&buf, *(&buf + 1));
    goto LABEL_62;
  }

  v184 = objc_msgSend_forcedGen2ModelLocaleForLocale_(CHRecognizerConfiguration, v114, self->_locale, v116, v117, v118);
  v215 = v184;
  if (!v184)
  {
    v184 = self->_locale;
  }

  v185 = v184;
  v220[0] = *MEMORY[0x1E6992038];
  v216 = v185;
  v191 = objc_msgSend_localeIdentifier(v185, v186, v187, v188, v189, v190);
  v221[0] = v191;
  v220[1] = *MEMORY[0x1E6992040];
  v196 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v192, 1, v193, v194, v195);
  v221[1] = v196;
  v199 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v197, v221, v220, 2, v198);

  v200 = CVNLPLanguageModelCreate();
  *&buf = v200;
  if (v200)
  {
    v201 = objc_alloc(MEMORY[0x1E6991FD8]);
    v207 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v202, v203, v204, v205, v206, v99, v215);
    v213 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v208, v209, v210, v211, v212, v112);
    v119 = objc_msgSend_initWithCVNLPLanguageModel_locale_decodingWeight_lowerBoundLogProbability_(v201, v214, v200, v216, v207, v213);

    CFRelease(v200);
  }

  else
  {
    v119 = 0;
  }

LABEL_62:
  v138 = objc_msgSend_objectForKey_(0, v114, @"DecodingWordLMWeight", v116, v117, v118, v215);
  if (v138)
  {
    if (qword_1EA84DC48 == -1)
    {
      v139 = qword_1EA84DC58;
      if (!os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
LABEL_66:

        objc_msgSend_floatValue(v138, v140, v141, v142, v143, v144);
        v146 = v145;
        goto LABEL_68;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v139 = qword_1EA84DC58;
      if (!os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v138;
    _os_log_impl(&dword_18366B000, v139, OS_LOG_TYPE_DEFAULT, "decodingWordLMWeight from override weights: %@", &buf, 0xCu);
    goto LABEL_66;
  }

  v146 = 0.0;
  if (!self->_contentType)
  {
    v181 = self->_script;
    if (v181 == 7)
    {
      v146 = 0.0109375;
    }

    else if (v181 == 1)
    {
      if (self->_language == 27)
      {
        v146 = 0.1;
      }

      else
      {
        v146 = 0.0109375;
      }
    }
  }

LABEL_68:

  v151 = objc_msgSend_objectForKey_(0, v147, @"DecodingWordLMLowerBoundLogProbability", v148, v149, v150);
  if (!v151)
  {
    v159 = -6.90775528;
    goto LABEL_74;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v152 = qword_1EA84DC58;
    if (!os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v152 = qword_1EA84DC58;
  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
  {
LABEL_71:
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v151;
    _os_log_impl(&dword_18366B000, v152, OS_LOG_TYPE_DEFAULT, "decodingWordLMLowerBoundLogProbability from override weights: %@", &buf, 0xCu);
  }

LABEL_72:

  objc_msgSend_floatValue(v151, v153, v154, v155, v156, v157);
  v159 = v158;
LABEL_74:

  v160 = 0;
  if (a5 && v146 > 0.0)
  {
    v161 = objc_alloc(MEMORY[0x1E6991FD8]);
    v162 = self->_locale;
    v168 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v163, v164, v165, v166, v167, v146);
    v174 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v169, v170, v171, v172, v173, v159);
    v160 = objc_msgSend_initWithLMLanguageModel_locale_decodingWeight_lowerBoundLogProbability_(v161, v175, a5, v162, v168, v174);
  }

LABEL_77:
  v176 = objc_alloc(MEMORY[0x1E6991FF0]);
  v179 = objc_msgSend_initWithLexicons_characterLanguageModel_wordLanguageModel_(v176, v177, v76, v119, v160, v178);

  return v179;
}

- (void)lexiconStringNormalizationFunction
{
  if (self->_script == 5)
  {
    return sub_1837A9B30;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)shouldApplyLatinSpacingForLocale:(id)a3
{
  v5 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v5);
  return (v5 > 6) | (0x23u >> v5) & 1;
}

+ (BOOL)shouldUseFullWidthSpaceBasedOnContextForLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v4);
  return v4 == 4;
}

+ (id)swappableColumnIndexesFromResults:(id)a3 locales:(id)a4
{
  v5 = objc_msgSend_swappableColumnIndexesFromResults_locales_topLocaleIndex_(CHRecognizerConfiguration, a2, a3, a4, 0, v4);

  return v5;
}

+ (id)swappableColumnIndexesFromResults:(id)a3 locales:(id)a4 topLocaleIndex:(int64_t)a5
{
  v148[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, a5, v10, v11, v12);
  v147[0] = v13;
  v147[1] = &unk_1EF1EDA50;
  v14 = MEMORY[0x1E696AD98];
  v19 = objc_msgSend_objectAtIndexedSubscript_(v7, v15, a5, v16, v17, v18);
  v25 = objc_msgSend_tokenColumns(v19, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
  v36 = objc_msgSend_numberWithUnsignedInteger_(v14, v32, v31, v33, v34, v35);
  v147[2] = v36;
  v147[3] = &unk_1EF1EDA50;
  v147[4] = &unk_1EF1EDA50;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, v147, 5, v38, v39);
  v148[0] = v40;
  v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v41, v148, 1, v42, v43);

  if (objc_msgSend_count(v7, v45, v46, v47, v48, v49) >= 2 && objc_msgSend_count(v8, v50, v51, v52, v53, v54) > 1)
  {
    v145 = 0;
    v146 = 0;
    v61 = objc_msgSend_objectAtIndexedSubscript_(v8, v55, a5, v56, v57, v58);
    sub_1838F084C(CHRecognizerConfiguration, v61, &v146, &v145);

    v66 = objc_msgSend_indexOfObjectPassingTest_(v8, v62, &unk_1EF1BF2D0, v63, v64, v65);
    if (v146 == 27 || v145 != 1)
    {
      v73 = v66;
      if (v66 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v74 = objc_msgSend_count(v7, v67, v68, v69, v70, v71);
        if (v74 == objc_msgSend_count(v8, v75, v76, v77, v78, v79))
        {
          if (v145 == 8)
          {
            v144 = objc_msgSend_objectAtIndexedSubscript_(v7, v80, a5, v81, v82, v83);
            v88 = objc_msgSend_objectAtIndexedSubscript_(v7, v84, v73, v85, v86, v87);
            if (objc_msgSend_tokenColumnCount(v88, v89, v90, v91, v92, v93) < 2)
            {
              v138 = 0;
            }

            else
            {
              v141 = objc_msgSend_tokenColumns(v88, v94, v95, v96, v97, v98);
              v142 = objc_msgSend_lastObject(v141, v99, v100, v101, v102, v103);
              v143 = objc_msgSend_strokeIndexes(v142, v104, v105, v106, v107, v108);
              Index = objc_msgSend_firstIndex(v143, v109, v110, v111, v112, v113);
              v120 = objc_msgSend_tokenColumns(v144, v115, v116, v117, v118, v119);
              v126 = objc_msgSend_firstObject(v120, v121, v122, v123, v124, v125);
              v132 = objc_msgSend_strokeIndexes(v126, v127, v128, v129, v130, v131);
              v138 = Index == objc_msgSend_firstIndex(v132, v133, v134, v135, v136, v137);
            }

            objc_msgSend_swappableColumnIndexesInResults_locales_topLocaleIndex_swappableIndex_shouldReverseSwappableColumns_(CHTokenizedTextResult, v139, v7, v8, a5, v73, v138);
          }

          else
          {
            objc_msgSend_swappableColumnIndexesInResults_locales_topLocaleIndex_swappableIndex_shouldReverseSwappableColumns_(CHTokenizedTextResult, v80, v7, v8, a5, v73, 0);
          }
          v140 = ;

          v44 = v140;
        }
      }
    }
  }

  v59 = v44;

  return v59;
}

+ (BOOL)shouldPerformStrictCandidateFiltering:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v4, 0);
  return (v4 - 19) < 4;
}

+ (id)spellCheckingLocaleForRecognitionLocale:(id)a3 string:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v21 = 0;
  sub_1838F084C(CHRecognizerConfiguration, v7, 0, &v21);
  v13 = v7;
  if ((v21 - 2) < 4)
  {
    v14 = objc_msgSend_firstComposedCharacter(v6, v8, v9, v10, v11, v12);
    v15 = sub_1837A93E8(v14);

    v13 = v7;
    if (v15)
    {
      v13 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v16, @"en", v17, v18, v19);
    }
  }

  return v13;
}

+ (BOOL)shouldAdjustGroupingForLocale:(id)a3
{
  v5 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v5);
  return (v5 < 9) & (0x17Cu >> v5);
}

+ (BOOL)isGroupingWithLocales:(id)a3 differentFromGroupingWithLocales:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34 = a4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v5;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v39, v44, 16, v8);
  v14 = 0;
  v15 = 0;
  if (v13)
  {
    v16 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v6);
        }

        shouldAdjustGroupingForLocale = objc_msgSend_shouldAdjustGroupingForLocale_(CHRecognizerConfiguration, v9, *(*(&v39 + 1) + 8 * i), v10, v11, v12);
        v14 |= shouldAdjustGroupingForLocale ^ 1;
        v15 |= shouldAdjustGroupingForLocale;
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v39, v44, 16, v12);
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = v34;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v35, v43, 16, v21);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = *v36;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v19);
        }

        v31 = objc_msgSend_shouldAdjustGroupingForLocale_(CHRecognizerConfiguration, v22, *(*(&v35 + 1) + 8 * j), v23, v24, v25);
        v27 |= v31;
        v28 |= v31 ^ 1;
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v35, v43, 16, v25);
    }

    while (v26);

    if (((v15 ^ v27) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if ((v15 & 1) == 0)
    {
      v28 = 0;
LABEL_20:
      v32 = v14 ^ v28;
      goto LABEL_21;
    }
  }

  v32 = 1;
LABEL_21:

  return v32 & 1;
}

+ (BOOL)hasSupportForPrincipalPoints:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v4);
  return v4 < 8;
}

+ (int64_t)writingOrientationForLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v4);
  if (v4 == 8)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)shouldAdjustGroupingHeuristicsForVeryComplexCharacters:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v4);
  return (v4 - 3) < 3;
}

+ (id)allNonLatinModelNames
{
  v42[6] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_modelNameChinese(CHRecognizerConfiguration, a2, v2, v3, v4, v5);
  v42[0] = v6;
  v12 = objc_msgSend_modelNameJapanese(CHRecognizerConfiguration, v7, v8, v9, v10, v11);
  v42[1] = v12;
  v18 = objc_msgSend_modelNameKorean(CHRecognizerConfiguration, v13, v14, v15, v16, v17);
  v42[2] = v18;
  v24 = objc_msgSend_modelNameThai(CHRecognizerConfiguration, v19, v20, v21, v22, v23);
  v42[3] = v24;
  v30 = objc_msgSend_modelNameCyrillic(CHRecognizerConfiguration, v25, v26, v27, v28, v29);
  v42[4] = v30;
  v36 = objc_msgSend_modelNameArabic(CHRecognizerConfiguration, v31, v32, v33, v34, v35);
  v42[5] = v36;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, v42, 6, v38, v39);

  return v40;
}

+ (int64_t)drawingStrokeLimitForLocale:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v6 = 0;
    sub_1838F084C(CHRecognizerConfiguration, v3, 0, &v6);
    if ((v6 - 2) >= 4)
    {
      v4 = 1000;
    }

    else
    {
      v4 = 100;
    }

    return v4;
  }

  else
  {

    return 1000;
  }
}

+ (BOOL)shouldRemoveSpaceBetweenPreviousChar:(id)a3 andNextChar:(id)a4 inLocale:(id)a5
{
  v7 = a3;
  v8 = a4;
  v13 = a5;
  v14 = 0;
  if (v7 && v8)
  {
    v15 = objc_msgSend_characterTypeFromString_(CHCharacterSetRules, v9, v7, v10, v11, v12);
    v20 = objc_msgSend_characterTypeFromString_(CHCharacterSetRules, v16, v8, v17, v18, v19);
    v61 = 0;
    sub_1838F084C(CHRecognizerConfiguration, v13, &v61, 0);
    v26 = objc_msgSend_countryCode(v13, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_uppercaseString(v26, v27, v28, v29, v30, v31);

    v33 = objc_opt_class();
    isCharacterEmoji = objc_msgSend_isCharacterEmoji_(v33, v34, v7, v35, v36, v37);
    v39 = objc_opt_class();
    v44 = objc_msgSend_isCharacterEmoji_(v39, v40, v8, v41, v42, v43);
    LOBYTE(v49) = 0;
    if (v61 <= 2)
    {
      if (v61)
      {
        if (v61 != 1)
        {
          if (v61 == 2)
          {
            if (objc_msgSend_containsString_(v32, v45, @"CA", v46, v47, v48))
            {
              if ((v20 & 0x2000000) != 0)
              {
                LOBYTE(v49) = objc_msgSend_isEqualToString_(v8, v56, @":", v57, v58, v59) ^ 1;
              }

              else
              {
                LOBYTE(v49) = 0;
              }
            }

            else
            {
              LOBYTE(v49) = (v20 & 0x6000000) == 0x2000000;
            }
          }

          goto LABEL_25;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (v61 > 0x1B)
      {
        goto LABEL_27;
      }

      if (((1 << v61) & 0x707FF80) != 0)
      {
LABEL_6:
        v49 = (v20 >> 25) & 1;
        if ((objc_msgSend_containsString_(v32, v45, @"AU", v46, v47, v48) & 1) == 0 && (objc_msgSend_containsString_(v32, v50, @"CA", v51, v52, v53) & 1) == 0)
        {
          LODWORD(v49) = v49 | (v20 >> 2) & 1 & (v15 >> 27);
        }

        goto LABEL_25;
      }

      if (((1 << v61) & 0x8800070) == 0)
      {
        if (((1 << v61) & 0x780000) != 0)
        {
          v54 = (v20 >> 30) & 1;
          if ((v15 & 0x80000000) == 0)
          {
            LODWORD(v54) = 0;
          }

          v55 = (v15 >> 30) & 1;
          if ((v20 & 0x80000000) == 0)
          {
            LODWORD(v55) = 0;
          }

          LODWORD(v49) = v54 | (v20 >> 25) | v55 | (isCharacterEmoji | v44) & 1;
          if (v61 != 22)
          {
            if (sub_1837A93E8(v7))
            {
              LOBYTE(v49) = !sub_1837A93E8(v8) | v49;
            }

            else
            {
              LOBYTE(v49) = v49 | 1;
            }
          }

          goto LABEL_25;
        }

LABEL_27:
        if (v61 == 3)
        {
          LODWORD(v49) = (v20 >> 25) | (v15 >> 28);
        }

        goto LABEL_25;
      }
    }

    v49 = (v20 >> 25) & 1;
LABEL_25:
    v14 = (BYTE4(v15) | v49) & 1;
  }

  return v14;
}

+ (BOOL)shouldInsertSpaceBetweenPreviousChar:(id)a3 andNextChar:(id)a4 inLocale:(id)a5 inString:(id)a6 atRange:(_NSRange)a7 withQuoteCount:(id)a8
{
  length = a7.length;
  location = a7.location;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v21 = a8;
  LOBYTE(v22) = 0;
  if (!v13 || !v14)
  {
    goto LABEL_87;
  }

  v271 = objc_msgSend_characterTypeFromString_(CHCharacterSetRules, v17, v13, v18, v19, v20);
  v27 = objc_msgSend_characterTypeFromString_(CHCharacterSetRules, v23, v14, v24, v25, v26);
  v22 = sub_1837A51B0(location, v16, v27, 1);
  v273 = 0;
  sub_1838F084C(CHRecognizerConfiguration, v15, &v273, 0);
  v33 = objc_msgSend_countryCode(v15, v28, v29, v30, v31, v32);
  v272 = objc_msgSend_uppercaseString(v33, v34, v35, v36, v37, v38);

  switch(v273)
  {
    case 0:
    case 19:
    case 20:
    case 21:
    case 22:
      if ((v271 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      v43 = v272;
      if (sub_1837A954C(v13))
      {
        LOBYTE(v22) = 0;
      }

      else
      {
        v22 = !sub_1837A93E8(v14);
      }

      goto LABEL_86;
    case 1:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
      v43 = v272;
      if ((objc_msgSend_containsString_(v272, v39, @"AU", v40, v41, v42) & 1) != 0 || objc_msgSend_containsString_(v272, v44, @"CA", v45, v46, v47))
      {
        v22 |= (v27 >> 2) & 1 & (v271 >> 27);
      }

      goto LABEL_86;
    case 2:
      v43 = v272;
      if (objc_msgSend_containsString_(v272, v39, @"CA", v40, v41, v42))
      {
        LOBYTE(v99) = objc_msgSend_isEqualToString_(v14, v95, @":", v96, v97, v98);
      }

      else
      {
        v99 = (v27 >> 26) & 1;
      }

      if ((v271 & 0x2000000) != 0)
      {
        v102 = 0;
      }

      else
      {
        v102 = v99;
      }

      LOBYTE(v22) = v22 | v102 | ((v27 & 0x8000000) != 0) & (v271 >> 2);
      goto LABEL_86;
    case 3:
      v43 = v272;
      if (objc_msgSend_containsString_(v272, v39, @"ES", v40, v41, v42))
      {
        v52 = (v27 >> 27) & 1 & (v271 >> 2);
      }

      else
      {
        v52 = 0;
      }

      v100 = objc_msgSend_containsString_(v272, v48, @"MX", v49, v50, v51);
      v101 = (v27 >> 2) & 1 & (v271 >> 27) | v52;
      if (!v100)
      {
        v101 = v52;
      }

      v22 |= v101 | (v27 >> 28) & 1 & (v271 >> 25);
      goto LABEL_86;
    case 4:
    case 5:
    case 24:
    case 25:
    case 27:
      v22 |= (v27 >> 27) & 1 & (v271 >> 2);
      goto LABEL_85;
    case 6:
      v43 = v272;
      if (objc_msgSend_containsString_(v272, v39, @"PT", v40, v41, v42))
      {
        v57 = (v27 >> 27) & 1 & (v271 >> 2);
      }

      else
      {
        v57 = 0;
      }

      if (objc_msgSend_containsString_(v272, v53, @"BR", v54, v55, v56))
      {
        v57 |= (v27 >> 2) & 1 & (v271 >> 27);
      }

      LOBYTE(v22) = v22 | v57;
      goto LABEL_86;
    case 23:
      v58 = objc_opt_class();
      v269 = objc_msgSend_singleScriptCodeForString_(v58, v59, v13, v60, v61, v62);
      v63 = objc_opt_class();
      v68 = objc_msgSend_singleScriptCodeForString_(v63, v64, v14, v65, v66, v67);
      v270 = 0;
      v74 = (v271 >> 2) & 1;
      v75 = v68 != 38;
      if (!v68)
      {
        v75 = 0;
      }

      v268 = v27 & 4;
      if (v269 != 38)
      {
        LODWORD(v74) = 1;
        v75 = 0;
      }

      v267 = v75;
      if (v269)
      {
        v76 = v269 != 38;
      }

      else
      {
        v76 = 0;
      }

      v77 = v68 == 38 && v76;
      v78 = (v27 & 4) == 0 && v68 == 38;
      v265 = v78;
      v266 = v77;
      v79 = (v27 & 4) >> 2;
      if (v74)
      {
        LODWORD(v79) = 0;
      }

      v263 = v68;
      v264 = v79;
      if ((v27 & 0x2000000) == 0)
      {
        v80 = objc_msgSend_ch_basicClosingParenthesesSet(MEMORY[0x1E696AB08], v69, v70, v71, v72, v73);
        v85 = objc_msgSend_characterAtIndex_(v14, v81, 0, v82, v83, v84);
        if (objc_msgSend_characterIsMember_(v80, v86, v85, v87, v88, v89))
        {
          v270 = 0;
        }

        else
        {
          v103 = objc_msgSend_ch_thaiExtraSpaceAfterSymbolsSet(MEMORY[0x1E696AB08], v90, v91, v92, v93, v94);
          v262 = v80;
          v108 = objc_msgSend_characterAtIndex_(v14, v104, 0, v105, v106, v107);
          IsMember = objc_msgSend_characterIsMember_(v103, v109, v108, v110, v111, v112);

          v270 = IsMember ^ 1;
          v80 = v262;
        }
      }

      if ((v271 & 0x2000000) == 0)
      {
        v114 = objc_msgSend_ch_thaiExtraSpaceAfterSymbolsSet(MEMORY[0x1E696AB08], v69, v70, v71, v72, v73);
        v119 = objc_msgSend_characterAtIndex_(v13, v115, 0, v116, v117, v118);
        if (objc_msgSend_characterIsMember_(v114, v120, v119, v121, v122, v123))
        {

          if (((v268 == 0) & v270) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_58;
        }

LABEL_61:
        v130 = 0;
        goto LABEL_63;
      }

      if (((v268 == 0) & v270) != 1)
      {
        goto LABEL_61;
      }

LABEL_58:
      v124 = objc_msgSend_length(v16, v69, v70, v71, v72, v73);
      v70 = location + length;
      if (location + length >= v124)
      {
        v130 = 1;
      }

      else
      {
        v125 = objc_msgSend_substringFromIndex_(v16, v69, v70, v71, v72, v73);
        v130 = objc_msgSend_hasPrefix_(v125, v126, @".", v127, v128, v129) ^ 1;
      }

LABEL_63:
      v131 = objc_msgSend_ch_basicOpeningParenthesesSet(MEMORY[0x1E696AB08], v69, v70, v71, v72, v73);
      v136 = objc_msgSend_characterAtIndex_(v13, v132, 0, v133, v134, v135);
      v146 = v264 | v22 | (v266 || v265 && (v271 & 4) != 0) | v267 | v130;
      if ((objc_msgSend_characterIsMember_(v131, v137, v136, v138, v139, v140) & 1) == 0)
      {
        v147 = objc_msgSend_ch_basicOpeningParenthesesSet(MEMORY[0x1E696AB08], v141, v142, v143, v144, v145);
        v152 = objc_msgSend_characterAtIndex_(v14, v148, 0, v149, v150, v151);
        v146 |= objc_msgSend_characterIsMember_(v147, v153, v152, v154, v155, v156);
      }

      v162 = objc_msgSend_ch_basicClosingParenthesesSet(MEMORY[0x1E696AB08], v157, v158, v159, v160, v161);
      v167 = objc_msgSend_characterAtIndex_(v13, v163, 0, v164, v165, v166);
      v172 = objc_msgSend_characterIsMember_(v162, v168, v167, v169, v170, v171) & v270;
      if (v146)
      {
        v173 = 1;
      }

      else
      {
        v173 = v172;
      }

      v179 = objc_msgSend_ch_thaiMathSymbolsNeedingSpaceSet(MEMORY[0x1E696AB08], v174, v175, v176, v177, v178);
      v184 = objc_msgSend_characterAtIndex_(v13, v180, 0, v181, v182, v183);
      v189 = objc_msgSend_characterIsMember_(v179, v185, v184, v186, v187, v188);
      if (v268)
      {
        v190 = 0;
      }

      else
      {
        v190 = v189;
      }

      if (!v263)
      {
        v190 = 0;
      }

      v22 = v173 | v190;

      if ((v271 & 4) == 0 && v269)
      {
        v196 = objc_msgSend_ch_thaiMathSymbolsNeedingSpaceSet(MEMORY[0x1E696AB08], v191, v192, v193, v194, v195);
        v201 = objc_msgSend_characterAtIndex_(v14, v197, 0, v198, v199, v200);
        v22 |= objc_msgSend_characterIsMember_(v196, v202, v201, v203, v204, v205);
      }

      if (objc_msgSend_isEqualToString_(v13, v191, @"ฯ", v193, v194, v195))
      {
        v210 = objc_msgSend_substringFromIndex_(v16, v206, location, v207, v208, v209);
        v22 |= objc_msgSend_hasPrefix_(v210, v211, @"ลฯ", v212, v213, v214) ^ 1;
      }

      v215 = objc_msgSend_substringFromIndex_(v16, v206, location, v207, v208, v209);
      hasPrefix = objc_msgSend_hasPrefix_(v215, v216, @"ฯลฯ", v217, v218, v219);

      v226 = objc_msgSend_ch_neutralQuotationMarkSet(MEMORY[0x1E696AB08], v221, v222, v223, v224, v225);
      v231 = objc_msgSend_characterAtIndex_(v13, v227, 0, v228, v229, v230);
      if (objc_msgSend_characterIsMember_(v226, v232, v231, v233, v234, v235))
      {
        v240 = ((objc_msgSend_countForObject_(v21, v236, v13, v237, v238, v239) & 1) == 0) & v270;
      }

      else
      {
        v240 = 0;
      }

      v246 = objc_msgSend_ch_neutralQuotationMarkSet(MEMORY[0x1E696AB08], v241, v242, v243, v244, v245);
      v251 = objc_msgSend_characterAtIndex_(v14, v247, 0, v248, v249, v250);
      if (objc_msgSend_characterIsMember_(v246, v252, v251, v253, v254, v255))
      {
        v260 = (objc_msgSend_countForObject_(v21, v256, v14, v257, v258, v259) & 1) == 0;
      }

      else
      {
        v260 = 0;
      }

      LOBYTE(v22) = v240 | v22 | hasPrefix | v260;

LABEL_85:
      v43 = v272;
LABEL_86:

LABEL_87:
      return v22;
    case 26:
      goto LABEL_85;
    default:
LABEL_9:
      LOBYTE(v22) = 0;
      goto LABEL_85;
  }
}

+ (BOOL)shouldRefinePrefixQueryMatchesForLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(a1, a3, &v4, 0);
  return (v4 - 19) < 4;
}

+ (BOOL)shouldAllowSpaceInsertionGestureForLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v4);
  return v4 == 6;
}

+ (BOOL)shouldApplyThaiSpacingForLocale:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, 0, &v4);
  return v4 == 6;
}

+ (BOOL)shouldSwapCyrillicTopResult:(id)a3 topRange:(_NSRange)a4 englishResult:(id)a5 englishRange:(_NSRange)a6 prevousGroupTopString:(id)a7
{
  length = a6.length;
  location = a6.location;
  v10 = a4.length;
  v11 = a4.location;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  objc_msgSend_averageTokenRecognitionScoreForColumnRange_(v12, v15, v11, v10, v16, v17);
  v19 = v18;
  objc_msgSend_heuristicTextScoreForColumnRange_(v12, v20, v11, v10, v21, v22);
  v24 = v23;
  objc_msgSend_averageTokenRecognitionScoreForColumnRange_(v13, v25, location, length, v26, v27);
  v29 = v28;
  objc_msgSend_heuristicTextScoreForColumnRange_(v13, v30, location, length, v31, v32);
  v34 = v33;
  v40 = objc_msgSend_transcriptionPaths(v12, v35, v36, v37, v38, v39);
  v45 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 0, v42, v43, v44);
  v126 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v12, v46, v45, v11, v10, 0);

  v52 = objc_msgSend_transcriptionPaths(v13, v47, v48, v49, v50, v51);
  v57 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 0, v54, v55, v56);
  v59 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v13, v58, v57, location, length, 0);

  v65 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v60, v61, v62, v63, v64);
  v69 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v126, v66, v65, 0, v67, v68);

  v75 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v70, v71, v72, v73, v74);
  v79 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v59, v76, v75, 0, v77, v78);

  v85 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v80, v81, v82, v83, v84);
  v86 = v14;
  v90 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v14, v87, v85, 1, v88, v89);

  v96 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v91, v92, v93, v94, v95);
  v100 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v86, v97, v96, 1, v98, v99);

  v105 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v101, @"èéêëÈÉÊË", v102, v103, v104);
  v109 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v59, v106, v105, 1, v107, v108);
  v110 = v69 | v79;
  v112 = v69 == 1 && v79 == 1;
  v113 = v100 < 1 && v112;
  v114 = v90 > 0 && v113;
  v115 = v29 > v19 * 1.052664;
  if (v34 < v24 * 0.948053)
  {
    v115 = 0;
  }

  v116 = v34 > v24 * 1.478344;
  if (v29 < v19 * 0.943234)
  {
    v116 = 0;
  }

  v117 = v115 || v116;
  if (v34 > v24 * 2.858661)
  {
    v117 = 1;
  }

  if (v29 > v19 * 1.33896)
  {
    v118 = 1;
  }

  else
  {
    v118 = v117;
  }

  if (v100 <= 0)
  {
    v112 = 0;
  }

  v119 = v90 < 1 && v112;
  v120 = v109 < 1;

  v121 = v19 <= 0.98;
  if (v29 >= 0.98)
  {
    v121 = 1;
  }

  v122 = v24 <= v34 * 1.45;
  if (v19 < v29 * 0.55)
  {
    v122 = 1;
  }

  if (v110)
  {
    v123 = v114;
  }

  else
  {
    v123 = 1;
  }

  v124 = v120 & ~v123 & v121 & v122;

  return (v118 | v119) & v124;
}

+ (BOOL)shouldAddSpaceToNeutralQuotationMarks:(id)a3
{
  v4 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a3, &v4, 0);
  return v4 == 23;
}

@end