@interface CHTokenizedTextResult
+ (BOOL)areTokenRowsEquivalent:(id)a3 otherRow:(id)a4;
+ (BOOL)isTextTranscriptionUnitConversion:(id)a3 locales:(id)a4;
+ (BOOL)isTextTranscriptionVariableAssignment:(id)a3 outVariable:(id *)a4;
+ (CGPath)newBaselinePathForTokens:(id)a3 strokeIdentifiers:(id)a4 strokeProvider:(id)a5;
+ (CHTokenizedTextResult)tokenizedTextResultWithString:(id)a3 strokeIndexes:(id)a4 bounds:(CGRect)a5 trailingSeparator:(id)a6 recognizerGenerationIdentifier:(int64_t)a7 defaultTokenScores:(double)a8;
+ (CHTokenizedTextResult)tokenizedTextResultWithString:(id)a3 strokeIndexes:(id)a4 bounds:(CGRect)a5 trailingSeparator:(id)a6 recognizerGenerationIdentifier:(int64_t)a7 defaultTokenScores:(double)a8 originalBounds:(CGRect)a9 principalLines:(id *)a10 principalPoints:(id)a11;
+ (CHTokenizedTextResult)tokenizedTextResultWithToken:(id)a3 trailingSeparator:(id)a4 recognizerGenerationIdentifier:(int64_t)a5;
+ (id)compressResult:(id)a3 atColumnIndexes:(id)a4;
+ (id)extendedToken:(id)a3 withStrokeIndexSet:(id)a4 alignmentScore:(double)a5 bounds:(CGRect)a6;
+ (id)loadFromFile:(id)a3;
+ (id)resultRestoringRawPathInResult:(id)a3;
+ (id)resultsBySwapping:(id)a3 swappableColumns:(id)a4 locales:(id)a5 topLocaleIndex:(int64_t)a6 topLocale:(id)a7;
+ (id)swappableColumnIndexesInResults:(id)a3 locales:(id)a4 topLocaleIndex:(int64_t)a5 swappableIndex:(int64_t)a6 shouldReverseSwappableColumns:(BOOL)a7;
+ (id)tokenizedTextResultFromResults:(id)a3 shouldPerformStrictFiltering:(BOOL)a4 doesTopLocaleRequireSpecialHandling:(BOOL)a5 hasSwap:(BOOL)a6;
+ (int64_t)mergeTokenRow:(id)a3 intoUniqueRows:(id)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)languageFitnessForLocale:(id)a3 recognitionMode:(int)a4;
- (BOOL)doGivenPaths:(id)a3 coverAllTokensInPath:(id)a4;
- (BOOL)hasTextReplacementsInColumnRange:(_NSRange)a3;
- (BOOL)hasTokenAtLocation:(id *)a3;
- (BOOL)hasValidColumns;
- (BOOL)hasValidPaths;
- (BOOL)hasValidPrincipalLinesForPath:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTokenizedTextResult:(id)a3;
- (BOOL)isNonTextCandidateTranscriptionWithStrictFiltering:(BOOL)a3;
- (BOOL)isPathOriginal:(id)a3;
- (BOOL)isSingleTokenResult;
- (BOOL)isValid;
- (BOOL)shouldFilterOutStringForToken:(id)a3 isGibberish:(BOOL *)a4 shouldPerformStrictFiltering:(BOOL)a5;
- (BOOL)shouldFilterSingleCharacterResult;
- (BOOL)shouldFilterSingleTokenResult;
- (BOOL)transcriptionPathsHaveSameSegmentation:(id)a3 otherPath:(id)a4;
- (CHTokenizedTextResult)initWithBestPathTokens:(id)a3 pathProbabilities:(id)a4 trailingSeparator:(id)a5 recognizerGenerationIdentifier:(int64_t)a6 changeableColumnCount:(int64_t)a7 originalTokens:(id)a8;
- (CHTokenizedTextResult)initWithCoder:(id)a3;
- (CHTokenizedTextResult)initWithTokenColumns:(id)a3 transcriptionPaths:(id)a4 scores:(id)a5 recognizerGenerationIdentifier:(int64_t)a6 isMinimalDrawingResult:(BOOL)a7 baseWritingDirection:(int)a8 originalTokens:(id)a9;
- (CHTokenizedTextResult)initWithTokenColumns:(id)a3 transcriptionPaths:(id)a4 scores:(id)a5 trailingSeparator:(id)a6 recognizerGenerationIdentifier:(int64_t)a7 changeableColumnCount:(int64_t)a8 isMinimalDrawingResult:(BOOL)a9 baseWritingDirection:(int)a10 originalTokens:(id)a11;
- (CHTokenizedTextResult)initWithTokenColumns:(id)a3 transcriptionPaths:(id)a4 scores:(id)a5 trailingSeparator:(id)a6 recognizerGenerationIdentifier:(int64_t)a7 originalTokens:(id)a8;
- (NSString)rawTranscription;
- (NSString)recognizerDebugDescription;
- (NSString)topModelTranscription;
- (NSString)topTranscription;
- (double)averageTokenRecognitionScoreForColumnRange:(_NSRange)a3;
- (double)heuristicTextScoreForColumnRange:(_NSRange)a3;
- (double)score;
- (id)changeableColumnCountUpdatedResultWithHistory:(id)a3 phraseLexicon:(_LXLexicon *)a4 maxPhraseLength:(int64_t)a5;
- (id)commonTopStrokeSetsWithResult:(id)a3 shouldReverseOtherColumns:(BOOL)a4;
- (id)descriptionWithSensitiveInformation:(BOOL)a3;
- (id)lastTokenStrokeIndexes;
- (id)modifiedResultWithBestPathTokens:(id)a3 pathProbabilities:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)originalTranscription;
- (id)phraseCaseCorrectedResultWithHistory:(id)a3 phraseLexicon:(_LXLexicon *)a4 maxPhraseLength:(int64_t)a5;
- (id)precedingSeparatorForRawTranscriptionPath;
- (id)precedingSeparatorForToken:(id)a3;
- (id)precedingSeparatorForTopModelTranscriptionPath;
- (id)precedingSeparatorForTopTranscriptionPath;
- (id)rawTranscriptionPath;
- (id)strokeIndexSetsInPath:(id)a3 columnRange:(_NSRange)a4;
- (id)strokeIndexes;
- (id)strokeIndexesForColumnsInRange:(_NSRange)a3;
- (id)subResultWithColumnRange:(_NSRange)a3;
- (id)textRecognitionResultArrayGivenHistory:(id)a3;
- (id)tokenAtLocation:(id *)a3;
- (id)tokenRowsAtColumnIndex:(int64_t)a3;
- (id)tokenizedResultWithFilteredPaths:(double)a3;
- (id)tokenizedTextResultByAppendingTokenizedTextResult:(id)a3 shouldForceSpace:(BOOL)a4;
- (id)tokensAlignedWithStrokes:(id)a3 transcriptionPath:(id)a4 strokeProvider:(id)a5;
- (id)tokensFromTranscriptionPath:(id)a3;
- (id)tokensFromTranscriptionPath:(id)a3 characterRange:(_NSRange)a4;
- (id)tokensInTranscriptionPath:(id)a3 atColumnIndex:(int64_t)a4;
- (id)topModelTranscriptionPath;
- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4 filterLowConfidence:(BOOL)a5;
- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4 filterLowConfidence:(BOOL)a5 allowPrecedingSeparator:(BOOL)a6;
- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4 filterLowConfidence:(BOOL)a5 excludeGibberish:(BOOL)a6 allowPrecedingSeparator:(BOOL)a7 rejectionRate:(double *)a8 tokenProcessingBlock:(id)a9;
- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4 filterLowConfidence:(BOOL)a5 excludeGibberish:(BOOL)a6 rejectionRate:(double *)a7 tokenProcessingBlock:(id)a8;
- (int64_t)inLexiconTokenCountInTranscriptionPath:(id)a3;
- (int64_t)tokenColumnCount;
- (int64_t)tokenCountInTranscriptionPath:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateOriginalTokensWithBlock:(id)a3;
- (void)enumerateTokensInTopTranscriptionPathWithBlock:(id)a3;
- (void)enumerateTokensInTranscriptionPath:(id)a3 columnRange:(_NSRange)a4 tokenProcessingBlock:(id)a5;
@end

@implementation CHTokenizedTextResult

- (CHTokenizedTextResult)initWithTokenColumns:(id)a3 transcriptionPaths:(id)a4 scores:(id)a5 trailingSeparator:(id)a6 recognizerGenerationIdentifier:(int64_t)a7 changeableColumnCount:(int64_t)a8 isMinimalDrawingResult:(BOOL)a9 baseWritingDirection:(int)a10 originalTokens:(id)a11
{
  v129 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = v130;
  v27 = objc_msgSend_count(v18, v22, v23, v24, v25, v26);
  if (v27 != objc_msgSend_count(v19, v28, v29, v30, v31, v32))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v38 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v126 = objc_msgSend_count(v18, v39, v40, v41, v42, v43);
      v127 = 2048;
      v128 = objc_msgSend_count(v19, v44, v45, v46, v47, v48);
      _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_ERROR, "transcriptionPaths count (%ld) != scores count (%ld)", buf, 0x16u);
    }
  }

  v49 = objc_msgSend_count(v18, v33, v34, v35, v36, v37);
  if (v49 != objc_msgSend_count(v19, v50, v51, v52, v53, v54))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v55 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      v61 = objc_msgSend_count(v18, v56, v57, v58, v59, v60);
      v67 = objc_msgSend_count(v19, v62, v63, v64, v65, v66);
      *buf = 134218240;
      v126 = v61;
      v127 = 2048;
      v128 = v67;
      _os_log_impl(&dword_18366B000, v55, OS_LOG_TYPE_FAULT, "transcriptionPaths count (%ld) != scores count (%ld)", buf, 0x16u);
    }
  }

  v124.receiver = self;
  v124.super_class = CHTokenizedTextResult;
  v73 = [(CHTokenizedResult *)&v124 initWithIsMinimalDrawingResult:a9];
  if (v73)
  {
    v74 = objc_msgSend_copy(v17, v68, v69, v70, v71, v72);
    tokenColumns = v73->_tokenColumns;
    v73->_tokenColumns = v74;

    v81 = objc_msgSend_copy(v18, v76, v77, v78, v79, v80);
    transcriptionPaths = v73->_transcriptionPaths;
    v73->_transcriptionPaths = v81;

    v88 = objc_msgSend_copy(v19, v83, v84, v85, v86, v87);
    transcriptionPathScores = v73->_transcriptionPathScores;
    v73->_transcriptionPathScores = v88;

    v73->_recognizerGenerationIdentifier = a7;
    v73->_changeableCount = a8;
    v95 = objc_msgSend_copy(v20, v90, v91, v92, v93, v94);
    trailingSeparator = v73->_trailingSeparator;
    v73->_trailingSeparator = v95;

    *&v73->_baseWritingDirection = a11;
    if (v21)
    {
      v102 = objc_msgSend_copy(v21, v97, v98, v99, v100, v101);
      originalTokens = v73->_originalTokens;
      v73->_originalTokens = v102;
LABEL_18:

      goto LABEL_19;
    }

    if (objc_msgSend_count(v18, v97, v98, v99, v100, v101))
    {
      v109 = objc_msgSend_array(MEMORY[0x1E695DF70], v104, v105, v106, v107, v108);
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = sub_1837EE4EC;
      v122[3] = &unk_1E6DDE720;
      originalTokens = v109;
      v123 = originalTokens;
      objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v73, v110, v122, v111, v112, v113);
      v119 = objc_msgSend_copy(originalTokens, v114, v115, v116, v117, v118);
      v120 = v73->_originalTokens;
      v73->_originalTokens = v119;

      goto LABEL_18;
    }
  }

LABEL_19:

  return v73;
}

- (CHTokenizedTextResult)initWithTokenColumns:(id)a3 transcriptionPaths:(id)a4 scores:(id)a5 trailingSeparator:(id)a6 recognizerGenerationIdentifier:(int64_t)a7 originalTokens:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v24 = objc_msgSend_count(v14, v19, v20, v21, v22, v23) != 0;
  v26 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_originalTokens_(self, v25, v14, v15, v16, v17, a7, v24, v18);

  return v26;
}

- (CHTokenizedTextResult)initWithTokenColumns:(id)a3 transcriptionPaths:(id)a4 scores:(id)a5 recognizerGenerationIdentifier:(int64_t)a6 isMinimalDrawingResult:(BOOL)a7 baseWritingDirection:(int)a8 originalTokens:(id)a9
{
  v9 = *&a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v24 = objc_msgSend_count(v15, v19, v20, v21, v22, v23) != 0;
  v28 = a7;
  isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_isMinimalDrawingResult_baseWritingDirection_originalTokens_(self, v25, v15, v16, v17, @" ", a6, v24, v28, v9, v18);

  return isMinimalDrawingResult_baseWritingDirection_originalTokens;
}

- (CHTokenizedTextResult)initWithBestPathTokens:(id)a3 pathProbabilities:(id)a4 trailingSeparator:(id)a5 recognizerGenerationIdentifier:(int64_t)a6 changeableColumnCount:(int64_t)a7 originalTokens:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  sub_1837EE9C8(CHTokenizedTextResult, v14, v15, &v43, &v42, &v41);
  v18 = v43;
  v19 = v42;
  v20 = v41;
  if (objc_msgSend_count(v18, v21, v22, v23, v24, v25))
  {
    if (a7 < 1)
    {
      v36 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(self, v26, v18, v19, v20, v16, a6, v17);
    }

    else
    {
      if (objc_msgSend_count(v18, v26, v27, v28, v29, v30) <= a7)
      {
        a7 = objc_msgSend_count(v18, v31, v32, v33, v34, v35);
      }

      v36 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_originalTokens_(self, v31, v18, v19, v20, v16, a6, a7, v17);
    }

    v38 = v36;
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v37 = qword_1EA84DC58;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_ERROR, "Trying to initialize tokenized text result with no columns. Returning nil instead.", buf, 2u);
    }

    v38 = 0;
  }

  return v38;
}

- (id)modifiedResultWithBestPathTokens:(id)a3 pathProbabilities:(id)a4
{
  v76 = 0;
  v77 = 0;
  v75 = 0;
  sub_1837EE9C8(CHTokenizedTextResult, a3, a4, &v77, &v76, &v75);
  v5 = v77;
  v6 = v76;
  v7 = v75;
  if (objc_msgSend_count(v5, v8, v9, v10, v11, v12))
  {
    v74 = v6;
    v18 = objc_msgSend_changeableTokenColumnCount(self, v13, v14, v15, v16, v17);
    if (v18 >= objc_msgSend_count(v5, v19, v20, v21, v22, v23))
    {
      v29 = objc_msgSend_count(v5, v24, v25, v26, v27, v28);
    }

    else
    {
      v29 = objc_msgSend_changeableTokenColumnCount(self, v24, v25, v26, v27, v28);
    }

    v31 = v29;
    v32 = objc_alloc(objc_opt_class());
    v38 = objc_msgSend_trailingSeparator(self, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_recognizerGenerationIdentifier(self, v39, v40, v41, v42, v43);
    isMinimalDrawingResult = objc_msgSend_isMinimalDrawingResult(self, v45, v46, v47, v48, v49);
    v56 = objc_msgSend_baseWritingDirection(self, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_originalTokens(self, v57, v58, v59, v60, v61);
    v73 = isMinimalDrawingResult;
    v6 = v74;
    isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v32, v63, v5, v74, v7, v38, v44, v31, v73, v56, v62);

    objc_msgSend_setInputStrokeIdentifiers_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v64, self->_inputStrokeIdentifiers, v65, v66, v67);
    objc_msgSend_setLocale_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v68, self->_locale, v69, v70, v71);
  }

  else
  {
    isMinimalDrawingResult_baseWritingDirection_originalTokens = 0;
  }

  return isMinimalDrawingResult_baseWritingDirection_originalTokens;
}

- (CHTokenizedTextResult)initWithCoder:(id)a3
{
  v150[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v147.receiver = self;
  v147.super_class = CHTokenizedTextResult;
  v5 = [(CHTokenizedResult *)&v147 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = objc_opt_class();
    objc_msgSend_setClass_forClassName_(v6, v8, v7, @"CHTokenizedTextResultColumn", v9, v10);
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v18 = objc_msgSend_setWithObjects_(v11, v14, v12, v15, v16, v17, v13, 0);
    v22 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v19, v18, @"tokenColumns", v20, v21);
    tokenColumns = v5->_tokenColumns;
    v5->_tokenColumns = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v31 = objc_msgSend_setWithObjects_(v24, v27, v25, v28, v29, v30, v26, 0);
    v35 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v32, v31, @"transcriptionPaths", v33, v34);
    transcriptionPaths = v5->_transcriptionPaths;
    v5->_transcriptionPaths = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v44 = objc_msgSend_setWithObjects_(v37, v40, v38, v41, v42, v43, v39, 0);
    v48 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v45, v44, @"transcriptionPathScores", v46, v47);
    transcriptionPathScores = v5->_transcriptionPathScores;
    v5->_transcriptionPathScores = v48;

    v5->_recognizerGenerationIdentifier = objc_msgSend_decodeIntegerForKey_(v4, v50, @"recognizerGenerationIdentifier", v51, v52, v53);
    v5->_changeableCount = objc_msgSend_decodeIntegerForKey_(v4, v54, @"changeableTokenColumns", v55, v56, v57);
    v58 = objc_opt_class();
    v62 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v59, v58, @"trailingSeparator", v60, v61);
    trailingSeparator = v5->_trailingSeparator;
    v5->_trailingSeparator = v62;

    *&v5->_baseWritingDirection = objc_msgSend_decodeIntegerForKey_(v4, v64, @"baseWritingDirection", v65, v66, v67);
    v5->_precedingLineBreaks = objc_msgSend_decodeIntegerForKey_(v4, v68, @"precedingLineBreaks", v69, v70, v71);
    v72 = MEMORY[0x1E695DFD8];
    v150[0] = objc_opt_class();
    v150[1] = objc_opt_class();
    v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v73, v150, 2, v74, v75);
    v81 = objc_msgSend_setWithArray_(v72, v77, v76, v78, v79, v80);
    v85 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v82, v81, @"inputStrokeIdentifiers", v83, v84);
    inputStrokeIdentifiers = v5->_inputStrokeIdentifiers;
    v5->_inputStrokeIdentifiers = v85;

    v87 = objc_opt_class();
    v91 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v88, v87, @"locale", v89, v90);
    locale = v5->_locale;
    v5->_locale = v91;

    v93 = MEMORY[0x1E695DFD8];
    v149[0] = objc_opt_class();
    v149[1] = objc_opt_class();
    v97 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v94, v149, 2, v95, v96);
    v102 = objc_msgSend_setWithArray_(v93, v98, v97, v99, v100, v101);
    v106 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v103, v102, @"originalTokens", v104, v105);
    originalTokens = v5->_originalTokens;
    v5->_originalTokens = v106;

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v108 = v5->_tokenColumns;
    v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v143, v148, 16, v110);
    if (v116)
    {
      v117 = *v144;
      while (2)
      {
        for (i = 0; i != v116; ++i)
        {
          if (*v144 != v117)
          {
            objc_enumerationMutation(v108);
          }

          v119 = objc_msgSend_tokenRows(*(*(&v143 + 1) + 8 * i), v111, v112, v113, v114, v115);
          v125 = objc_msgSend_count(v119, v120, v121, v122, v123, v124) == 0;

          if (v125)
          {
            v126 = 0;
            goto LABEL_12;
          }
        }

        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v111, &v143, v148, 16, v115);
        if (v116)
        {
          continue;
        }

        break;
      }
    }

    v126 = 1;
LABEL_12:

    if (!v5->_tokenColumns || (v132 = v5->_transcriptionPaths) == 0 || !v5->_transcriptionPathScores || ((v133 = objc_msgSend_count(v132, v127, v128, v129, v130, v131), v133 == objc_msgSend_count(v5->_transcriptionPathScores, v134, v135, v136, v137, v138)) ? (v139 = v126) : (v139 = 0), (v139 & 1) == 0))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v140 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v140, OS_LOG_TYPE_ERROR, "CHTokenizedTextResult decoding failed. Token columns, transcription paths, and scores are required to be nonnull and equal in size when constructing a text result", buf, 2u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = CHTokenizedTextResult;
  [(CHTokenizedResult *)&v38 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_tokenColumns, @"tokenColumns", v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v8, self->_transcriptionPaths, @"transcriptionPaths", v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v11, self->_transcriptionPathScores, @"transcriptionPathScores", v12, v13);
  objc_msgSend_encodeObject_forKey_(v4, v14, self->_trailingSeparator, @"trailingSeparator", v15, v16);
  objc_msgSend_encodeInteger_forKey_(v4, v17, self->_recognizerGenerationIdentifier, @"recognizerGenerationIdentifier", v18, v19);
  objc_msgSend_encodeInteger_forKey_(v4, v20, self->_precedingLineBreaks, @"precedingLineBreaks", v21, v22);
  objc_msgSend_encodeInteger_forKey_(v4, v23, self->_changeableCount, @"changeableTokenColumns", v24, v25);
  objc_msgSend_encodeInteger_forKey_(v4, v26, *&self->_baseWritingDirection, @"baseWritingDirection", v27, v28);
  objc_msgSend_encodeObject_forKey_(v4, v29, self->_inputStrokeIdentifiers, @"inputStrokeIdentifiers", v30, v31);
  objc_msgSend_encodeObject_forKey_(v4, v32, self->_locale, @"locale", v33, v34);
  objc_msgSend_encodeObject_forKey_(v4, v35, self->_originalTokens, @"originalTokens", v36, v37);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHMutableTokenizedTextResult alloc];
  tokenColumns = self->_tokenColumns;
  transcriptionPaths = self->_transcriptionPaths;
  transcriptionPathScores = self->_transcriptionPathScores;
  trailingSeparator = self->_trailingSeparator;
  recognizerGenerationIdentifier = self->_recognizerGenerationIdentifier;
  changeableCount = self->_changeableCount;
  isMinimalDrawingResult = objc_msgSend_isMinimalDrawingResult(self, v11, v12, v13, v14, v15);
  isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v4, v16, tokenColumns, transcriptionPaths, transcriptionPathScores, trailingSeparator, recognizerGenerationIdentifier, changeableCount, isMinimalDrawingResult, *&self->_baseWritingDirection, self->_originalTokens);
  objc_msgSend_setPrecedingLineBreaks_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v18, self->_precedingLineBreaks, v19, v20, v21);
  objc_msgSend_setInputStrokeIdentifiers_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v22, self->_inputStrokeIdentifiers, v23, v24, v25);
  objc_msgSend_setLocale_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v26, self->_locale, v27, v28, v29);
  return isMinimalDrawingResult_baseWritingDirection_originalTokens;
}

- (id)descriptionWithSensitiveInformation:(BOOL)a3
{
  v6 = a3;
  v8 = objc_msgSend_tokenColumns(self, a2, a3, v3, v4, v5);
  v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);

  if (v14 == 1)
  {
    v20 = @"column";
  }

  else
  {
    v20 = @"columns";
  }

  v21 = objc_msgSend_tokenColumns(self, v15, v16, v17, v18, v19);
  v127 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v21, v22, @", ", &unk_1EF1BE668, v23, v24);

  v30 = objc_msgSend_transcriptionPaths(self, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_count(v30, v31, v32, v33, v34, v35);

  if (v36 == 1)
  {
    v42 = @"transcriptionPath";
  }

  else
  {
    v42 = @"transcriptionPaths";
  }

  v43 = objc_msgSend_transcriptionPaths(self, v37, v38, v39, v40, v41);
  v47 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v43, v44, @",\n", &unk_1EF1BE688, v45, v46);

  if (v6)
  {
    v53 = objc_msgSend_tokenColumns(self, v48, v49, v50, v51, v52);
    v57 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v53, v54, @",\n", &unk_1EF1BE6A8, v55, v56);

    v129.receiver = self;
    v129.super_class = CHTokenizedTextResult;
    v58 = [(CHTokenizedResult *)&v129 description];
    v64 = objc_msgSend_tokenColumns(self, v59, v60, v61, v62, v63);
    v70 = objc_msgSend_count(v64, v65, v66, v67, v68, v69);
    v76 = objc_msgSend_changeableTokenColumnCount(self, v71, v72, v73, v74, v75);
    v82 = objc_msgSend_transcriptionPaths(self, v77, v78, v79, v80, v81);
    v88 = objc_msgSend_count(v82, v83, v84, v85, v86, v87);
    v93 = objc_msgSend_stringByAppendingFormat_(v58, v89, @" %ld (%ld changeable) %@ [%@], %ld %@ \n%@ \n%@", v90, v91, v92, v70, v76, v20, v127, v88, v42, v47, v57);
  }

  else
  {
    v128.receiver = self;
    v128.super_class = CHTokenizedTextResult;
    v57 = [(CHTokenizedResult *)&v128 description];
    v58 = objc_msgSend_tokenColumns(self, v94, v95, v96, v97, v98);
    v104 = objc_msgSend_count(v58, v99, v100, v101, v102, v103);
    v110 = objc_msgSend_changeableTokenColumnCount(self, v105, v106, v107, v108, v109);
    v64 = objc_msgSend_transcriptionPaths(self, v111, v112, v113, v114, v115);
    v121 = objc_msgSend_count(v64, v116, v117, v118, v119, v120);
    v93 = objc_msgSend_stringByAppendingFormat_(v57, v122, @" %ld (%ld changeable) %@ [%@], %ld %@ \n%@", v123, v124, v125, v104, v110, v20, v127, v121, v42, v47);
  }

  return v93;
}

- (int64_t)tokenColumnCount
{
  v6 = objc_msgSend_tokenColumns(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_count(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)isSingleTokenResult
{
  if (objc_msgSend_tokenColumnCount(self, a2, v2, v3, v4, v5) > 1)
  {
    return 0;
  }

  v13 = objc_msgSend_firstObject(self->_transcriptionPaths, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_tokenCountInTranscriptionPath_(self, v14, v13, v15, v16, v17);

  return v18 == 1;
}

- (BOOL)shouldFilterSingleCharacterResult
{
  if (qword_1EA84DB18 != -1)
  {
    dispatch_once(&qword_1EA84DB18, &unk_1EF1BE6C8);
    v12 = objc_msgSend_locale(self, v20, v21, v22, v23, v24);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = &stru_1EF1C0318;
    goto LABEL_6;
  }

  v12 = objc_msgSend_locale(self, a2, v2, v3, v4, v5);
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = objc_msgSend_locale(self, v7, v8, v9, v10, v11);
  v19 = objc_msgSend_languageCode(v13, v14, v15, v16, v17, v18);

LABEL_6:
  if (objc_msgSend_isSingleTokenResult(self, v25, v26, v27, v28, v29) && (objc_msgSend_containsObject_(qword_1EA84DB20, v30, v19, v31, v32, v33) & 1) == 0)
  {
    v40 = objc_msgSend_topTranscription(self, v34, v35, v36, v37, v38);
    v46 = objc_msgSend_length(v40, v41, v42, v43, v44, v45) < 2;

    return v46;
  }

  else
  {

    return 0;
  }
}

- (BOOL)shouldFilterSingleTokenResult
{
  if (!objc_msgSend_isSingleTokenResult(self, a2, v2, v3, v4, v5))
  {
    return 0;
  }

  v12 = objc_msgSend_topTranscription(self, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_length(v12, v13, v14, v15, v16, v17);

  if (v18 > 4)
  {
    return 0;
  }

  v24 = objc_msgSend_topTranscription(self, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v25, v26, v27, v28, v29);
  if (objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v24, v31, v30, 0, v32, v33) == 1)
  {
    v39 = 1;
  }

  else
  {
    v40 = objc_msgSend_topTranscription(self, v34, v35, v36, v37, v38);
    v46 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v41, v42, v43, v44, v45);
    v39 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v40, v47, v46, 0, v48, v49) == 1;
  }

  v55 = objc_msgSend_tokenColumnCount(self, v50, v51, v52, v53, v54);
  objc_msgSend_averageTokenRecognitionScoreForColumnRange_(self, v56, 0, v55, v57, v58);
  v60 = v59;
  v66 = objc_msgSend_firstObject(self->_transcriptionPaths, v61, v62, v63, v64, v65);
  v71 = objc_msgSend_inLexiconTokenCountInTranscriptionPath_(self, v67, v66, v68, v69, v70);

  v72 = v60 >= 0.85 || v71 == 1;
  v73 = !v72;
  return v73 || v39;
}

- (int64_t)tokenCountInTranscriptionPath:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10 = objc_msgSend_tokenColumnCount(self, v5, v6, v7, v8, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1837F1924;
  v14[3] = &unk_1E6DDC5D0;
  v14[4] = &v15;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v11, v4, 0, v10, v14);
  v12 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (double)score
{
  v6 = objc_msgSend_firstObject(self->_transcriptionPathScores, a2, v2, v3, v4, v5);
  objc_msgSend_floatValue(v6, v7, v8, v9, v10, v11);
  v13 = v12;

  return v13;
}

- (id)strokeIndexes
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], a2, v2, v3, v4, v5);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_tokenColumns;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16, v10);
  if (v16)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = objc_msgSend_strokeIndexes(*(*(&v25 + 1) + 8 * i), v11, v12, v13, v14, v15, v25);
        objc_msgSend_addIndexes_(v7, v20, v19, v21, v22, v23);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v25, v29, 16, v15);
    }

    while (v16);
  }

  return v7;
}

- (id)tokenRowsAtColumnIndex:(int64_t)a3
{
  v7 = objc_msgSend_tokenColumns(self, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, a3, v9, v10, v11);

  v18 = objc_msgSend_textTokenRows(v12, v13, v14, v15, v16, v17);

  return v18;
}

- (id)tokensInTranscriptionPath:(id)a3 atColumnIndex:(int64_t)a4
{
  v6 = a3;
  if (objc_msgSend_compare_(v6, v7, qword_1ED6A08E0, v8, v9, v10))
  {
    v16 = objc_msgSend_indexAtPosition_(v6, v11, a4, v13, v14, v15);
    v22 = objc_msgSend_tokenColumns(self, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, a4, v24, v25, v26);

    v33 = objc_msgSend_textTokenRows(v27, v28, v29, v30, v31, v32);
    v38 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, v16, v35, v36, v37);
  }

  else
  {
    v39 = MEMORY[0x1E695DF70];
    v40 = objc_msgSend_count(self->_originalTokens, v11, v12, v13, v14, v15);
    v45 = objc_msgSend_arrayWithCapacity_(v39, v41, v40, v42, v43, v44);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1837F1DAC;
    v47[3] = &unk_1E6DDE720;
    v38 = v45;
    v48 = v38;
    sub_1837F1DB8(self, a4, 1, v47);
  }

  return v38;
}

- (BOOL)hasTokenAtLocation:(id *)a3
{
  var0 = a3->var0;
  if (var0 >= objc_msgSend_count(self->_tokenColumns, a2, a3, v3, v4, v5))
  {
    return 0;
  }

  v13 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v9, a3->var0, v10, v11, v12);
  var1 = a3->var1;
  v20 = objc_msgSend_textTokenRows(v13, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25);

  if (var1 >= v26)
  {
    v44 = 0;
  }

  else
  {
    v32 = objc_msgSend_textTokenRows(v13, v27, v28, v29, v30, v31);
    v37 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, a3->var1, v34, v35, v36);

    var2 = a3->var2;
    v44 = var2 < objc_msgSend_count(v37, v39, v40, v41, v42, v43);
  }

  return v44;
}

- (id)tokenAtLocation:(id *)a3
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, a2, a3->var0, v3, v4, v5);
  v13 = objc_msgSend_textTokenRows(v7, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, a3->var1, v15, v16, v17);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, a3->var2, v20, v21, v22);

  return v23;
}

- (NSString)recognizerDebugDescription
{
  v6 = objc_msgSend_recognizerGenerationIdentifier(self, a2, v2, v3, v4, v5);
  if (v6 > 2)
  {
    return &stru_1EF1C0318;
  }

  else
  {
    return &off_1E6DDEBF0[v6]->isa;
  }
}

- (double)heuristicTextScoreForColumnRange:(_NSRange)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1837F2298;
  v7[3] = &unk_1E6DDE768;
  v8 = a3;
  v7[4] = &v9;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(self, a2, v7, a3.length, v3, v4);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (double)averageTokenRecognitionScoreForColumnRange:(_NSRange)a3
{
  v75 = *MEMORY[0x1E69E9840];
  if (a3.location >= a3.location + a3.length)
  {
    result = NAN;
  }

  else
  {
    v5 = 0;
    v6 = 0.0;
    v58 = a3.location + a3.length;
    v59 = self;
    do
    {
      v60 = v5;
      location = a3.location;
      v7 = objc_msgSend_tokenRowsAtColumnIndex_(self, a2, a3.location, a3.length, v3, v4);
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v7;
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v69, v74, 16, v9);
      if (v10)
      {
        v63 = *v70;
        v11 = 0.0;
        v12 = 1;
        do
        {
          v13 = 0;
          v64 = v10;
          do
          {
            if (*v70 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v69 + 1) + 8 * v13);
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v15 = v14;
            v18 = 0;
            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v65, v73, 16, v17);
            if (v24)
            {
              v25 = *v66;
              v26 = 0.0;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v66 != v25)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v28 = *(*(&v65 + 1) + 8 * i);
                  objc_msgSend_recognitionScore(v28, v19, v20, v21, v22, v23);
                  v30 = v29;
                  v36 = objc_msgSend_string(v28, v31, v32, v33, v34, v35);
                  v42 = objc_msgSend_length(v36, v37, v38, v39, v40, v41);

                  v48 = objc_msgSend_string(v28, v43, v44, v45, v46, v47);
                  v54 = objc_msgSend_length(v48, v49, v50, v51, v52, v53);

                  v26 = v26 + v30 * v42;
                  v18 += v54;
                }

                v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v19, &v65, v73, 16, v23);
              }

              while (v24);
            }

            else
            {
              v26 = 0.0;
            }

            if (v26 / v18 > v11 / v12)
            {
              v11 = v26;
              v12 = v18;
            }

            ++v13;
          }

          while (v13 != v64);
          v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v69, v74, 16, v56);
        }

        while (v10);
      }

      else
      {
        v11 = 0.0;
        v12 = 1;
      }

      v6 = v6 + v11;
      v5 = v12 + v60;
      a3.location = location + 1;
      self = v59;
    }

    while (location + 1 != v58);
    result = v6 / v5;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)hasTextReplacementsInColumnRange:(_NSRange)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1837F26C8;
  v7[3] = &unk_1E6DDE768;
  v8 = a3;
  v7[4] = &v9;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(self, a2, v7, a3.length, v3, v4);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (NSString)topTranscription
{
  v7 = objc_msgSend_transcriptionPaths(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_firstObject(v7, v8, v9, v10, v11, v12);

  if (!v13 || (v19 = objc_msgSend_length(v13, v14, v15, v16, v17, v18), objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(self, v20, v13, 0, v19, 0), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v21 = &stru_1EF1C0318;
  }

  return v21;
}

- (id)rawTranscriptionPath
{
  v68 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v57 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v6 = 0;
    *&v7 = 134217984;
    v56 = v7;
    while (v6 < objc_msgSend_count(*(a1 + 32), v1, v2, v3, v4, v5, v56))
    {
      v60 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v8, v6, v9, v10, v11);
      v17 = 0;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = -1;
      v59 = v6;
      while (1)
      {
        v20 = objc_msgSend_textTokenRows(v60, v12, v13, v14, v15, v16);
        v26 = v17 < objc_msgSend_count(v20, v21, v22, v23, v24, v25);

        if (!v26)
        {
          break;
        }

        v32 = objc_msgSend_textTokenRows(v60, v27, v28, v29, v30, v31);
        v37 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, v17, v34, v35, v36);

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v38 = v37;
        v41 = 0;
        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v61, v67, 16, v40);
        if (v47)
        {
          v48 = *v62;
          isTopOriginal = 1;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v62 != v48)
              {
                objc_enumerationMutation(v38);
              }

              v51 = *(*(&v61 + 1) + 8 * i);
              if (isTopOriginal)
              {
                isTopOriginal = objc_msgSend_isTopOriginal(*(*(&v61 + 1) + 8 * i), v42, v43, v44, v45, v46);
              }

              else
              {
                isTopOriginal = 0;
              }

              v41 += objc_msgSend_inputSourceModifiersCount(v51, v42, v43, v44, v45, v46);
            }

            v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v42, &v61, v67, 16, v46);
          }

          while (v47);
        }

        else
        {
          isTopOriginal = 1;
        }

        v6 = v59;
        if ((isTopOriginal & (v41 < v19)) != 0)
        {
          v19 = v41;
          v18 = v17;
        }

        ++v17;
      }

      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v52 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = v56;
          v66 = v6;
          _os_log_impl(&dword_18366B000, v52, OS_LOG_TYPE_ERROR, "Original token not found in column %ld", buf, 0xCu);
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v53 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          *buf = v56;
          v66 = v6;
          _os_log_impl(&dword_18366B000, v53, OS_LOG_TYPE_FAULT, "Original token not found in column %ld", buf, 0xCu);
        }
      }

      v54 = objc_msgSend_indexPathByAddingIndex_(v57, v27, v18, v29, v30, v31);

      ++v6;
      v57 = v54;
    }
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

- (NSString)rawTranscription
{
  v7 = objc_msgSend_count(self->_tokenColumns, a2, v2, v3, v4, v5);
  v8 = [CHTokenizedTextResult rawTranscriptionPath]_0(self);
  v10 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(self, v9, v8, 0, v7, 0);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_1EF1C0318;
  }

  return v11;
}

- (id)topModelTranscriptionPath
{
  v115 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v7 = 0;
    *&v8 = 134219008;
    v96 = v8;
    while (1)
    {
      v97 = v6;
      if (v7 >= objc_msgSend_count(*(a1 + 32), v1, v2, v3, v4, v5, v96))
      {
        break;
      }

      v99 = v7;
      v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v9, v7, v10, v11, v12);
      v19 = 0;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      v21 = 0.0;
      v22 = 64;
      while (1)
      {
        v23 = objc_msgSend_textTokenRows(v18, v13, v14, v15, v16, v17);
        v29 = v19 < objc_msgSend_count(v23, v24, v25, v26, v27, v28);

        if (!v29)
        {
          break;
        }

        v35 = objc_msgSend_textTokenRows(v18, v30, v31, v32, v33, v34);
        v40 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, v19, v37, v38, v39);

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v41 = v40;
        v44 = 0;
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v100, v114, 16, v43);
        if (v50)
        {
          v51 = *v101;
          v52 = 0.0;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v101 != v51)
              {
                objc_enumerationMutation(v41);
              }

              v54 = *(*(&v100 + 1) + 8 * i);
              objc_msgSend_modelScore(v54, v45, v46, v47, v48, v49);
              v52 = v52 + v60;
              v44 += objc_msgSend_inputSourceModifiersCount(v54, v55, v56, v57, v58, v59);
            }

            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v45, &v100, v114, 16, v49);
          }

          while (v50);
        }

        else
        {
          v52 = 0.0;
        }

        v66 = objc_msgSend_count(v41, v61, v62, v63, v64, v65);
        v67 = v52 / v66;
        if (!v19 || v67 > v21 || (v67 == v21 ? (v68 = v44 >= v22) : (v68 = 1), !v68))
        {
          v22 = v44;
          v21 = v52 / v66;
          v20 = v19;
        }

        ++v19;
      }

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v69 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v75 = objc_msgSend_textTokenRows(v18, v70, v71, v72, v73, v74);
          v81 = objc_msgSend_count(v75, v76, v77, v78, v79, v80);
          *buf = v96;
          v105 = v99;
          v106 = 2048;
          v107 = v81;
          v108 = 2048;
          v109 = v21;
          v110 = 2048;
          v111 = 0x7FFFFFFFFFFFFFFFLL;
          v112 = 2048;
          v113 = v22;
          _os_log_impl(&dword_18366B000, v69, OS_LOG_TYPE_ERROR, "Best token not found in column %ld, rows in column = %ld, bestRowModelScore = %.2f, bestRowIndex = %ld, bestInputSourcesCount = %ld", buf, 0x34u);
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v82 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          v88 = objc_msgSend_textTokenRows(v18, v83, v84, v85, v86, v87);
          v94 = objc_msgSend_count(v88, v89, v90, v91, v92, v93);
          *buf = v96;
          v105 = v99;
          v106 = 2048;
          v107 = v94;
          v108 = 2048;
          v109 = v21;
          v110 = 2048;
          v111 = 0x7FFFFFFFFFFFFFFFLL;
          v112 = 2048;
          v113 = v22;
          _os_log_impl(&dword_18366B000, v82, OS_LOG_TYPE_FAULT, "Best token not found in column %ld, rows in column = %ld, bestRowModelScore = %.2f, bestRowIndex = %ld, bestInputSourcesCount = %ld", buf, 0x34u);
        }
      }

      v6 = objc_msgSend_indexPathByAddingIndex_(v97, v30, v20, v32, v33, v34);

      v7 = v99 + 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)topModelTranscription
{
  v7 = objc_msgSend_count(self->_tokenColumns, a2, v2, v3, v4, v5);
  v8 = [CHTokenizedTextResult topModelTranscriptionPath]_0(self);
  v10 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(self, v9, v8, 0, v7, 0);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_1EF1C0318;
  }

  return v11;
}

- (id)originalTranscription
{
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1837F3264;
  v16[3] = &unk_1E6DDE790;
  v16[4] = self;
  v8 = v7;
  v17 = v8;
  objc_msgSend_enumerateOriginalTokensWithBlock_(self, v9, v16, v10, v11, v12);
  v13 = v17;
  v14 = v8;

  return v8;
}

- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4 filterLowConfidence:(BOOL)a5
{
  v5 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_excludeGibberish_allowPrecedingSeparator_rejectionRate_tokenProcessingBlock_(self, a2, a3, a4.location, a4.length, a5, a5, 0, 0, 0);

  return v5;
}

- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4 filterLowConfidence:(BOOL)a5 allowPrecedingSeparator:(BOOL)a6
{
  v6 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_excludeGibberish_allowPrecedingSeparator_rejectionRate_tokenProcessingBlock_(self, a2, a3, a4.location, a4.length, a5, a5, a6, 0, 0);

  return v6;
}

- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4 filterLowConfidence:(BOOL)a5 excludeGibberish:(BOOL)a6 rejectionRate:(double *)a7 tokenProcessingBlock:(id)a8
{
  v8 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_excludeGibberish_allowPrecedingSeparator_rejectionRate_tokenProcessingBlock_(self, a2, a3, a4.location, a4.length, a5, a6, 0, a7, a8);

  return v8;
}

- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4 filterLowConfidence:(BOOL)a5 excludeGibberish:(BOOL)a6 allowPrecedingSeparator:(BOOL)a7 rejectionRate:(double *)a8 tokenProcessingBlock:(id)a9
{
  length = a4.length;
  location = a4.location;
  v15 = a3;
  v16 = a9;
  v22 = objc_msgSend_string(MEMORY[0x1E696AD60], v17, v18, v19, v20, v21);
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x4012000000;
  v58 = sub_1837F36EC;
  v59 = nullsub_52;
  v60 = &unk_183A5AC72;
  v61 = xmmword_1839D0630;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 0;
  v39 = MEMORY[0x1E69E9820];
  v40 = 3221225472;
  v41 = sub_1837F36FC;
  v42 = &unk_1E6DDE7B8;
  v50 = a5;
  v51 = a6;
  v46 = &v62;
  v47 = v53;
  v43 = self;
  v52 = a7;
  v23 = v22;
  v44 = v23;
  v48 = &v66;
  v24 = v16;
  v45 = v24;
  v49 = &v55;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v25, v15, location, length, &v39);
  v30 = v56 + 6;
  v29 = v56[6];
  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *v30 = 0;
    v30[1] = 0;
    objc_msgSend_substringWithRange_(v23, v26, 0, 0, v27, v28, a8, v39, v40, v41, v42, v43);
  }

  else
  {
    objc_msgSend_substringWithRange_(v23, v26, v29, v56[7], v27, v28, a8, v39, v40, v41, v42, v43);
  }
  v36 = ;
  if (a8)
  {
    if (objc_msgSend_length(v23, v31, v32, v33, v34, v35))
    {
      v37 = v67[3] / v63[3];
    }

    else
    {
      v37 = 0.0;
    }

    *a8 = v37;
  }

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);

  return v36;
}

- (BOOL)shouldFilterOutStringForToken:(id)a3 isGibberish:(BOOL *)a4 shouldPerformStrictFiltering:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v14 = v8;
  if (self->_recognizerGenerationIdentifier != 1)
  {
    if ((objc_msgSend_properties(v8, v9, v10, v11, v12, v13) & 0x10) != 0)
    {
      LOBYTE(v80) = 1;
    }

    else
    {
      objc_msgSend_combinedScore(v14, v74, v75, v76, v77, v78);
      LOBYTE(v80) = v79 < 0.4;
    }

    v71 = (objc_msgSend_properties(v14, v74, v75, v76, v77, v78) & 4) == 0 && sub_1837F3E18(self, v14, v5);
    goto LABEL_29;
  }

  if (qword_1EA84DB30 != -1)
  {
    dispatch_once(&qword_1EA84DB30, &unk_1EF1BE6E8);
  }

  v15 = objc_msgSend_properties(v14, v9, v10, v11, v12, v13);
  v21 = objc_msgSend_string(v14, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_length(v21, v22, v23, v24, v25, v26);

  v33 = 1.0;
  if (v27 <= 2)
  {
    v34 = objc_msgSend_string(v14, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_rangeOfCharacterFromSet_(v34, v35, qword_1EA84DB38, v36, v37, v38);

    if (v39 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 1.5;
    }

    else
    {
      v33 = 2.0;
    }
  }

  objc_msgSend_recognitionScore(v14, v28, v29, v30, v31, v32);
  v41 = v40;
  if ((objc_msgSend_properties(v14, v42, v43, v44, v45, v46) & 4) == 0)
  {
    v52 = objc_msgSend_string(v14, v47, v48, v49, v50, v51);
    v58 = objc_msgSend_properties(v14, v53, v54, v55, v56, v57);
    v63 = objc_msgSend_stringByTrimmingCharactersInSet_(v52, v59, qword_1EA84DB28, v60, v61, v62);
    v69 = objc_msgSend_length(v63, v64, v65, v66, v67, v68);

    v70 = sub_1837F3E18(self, v14, v5);
    v71 = v70;
    if ((v58 & 8) == 0 || v69)
    {
      v73 = 0;
      v72 = 0;
      if ((v58 & 8) != 0 && v69)
      {
        v73 = 0;
        v72 = v41 > v33 * 0.8;
      }
    }

    else
    {
      v72 = 0;
      v73 = v41 > v33 * 0.4;
    }

    if ((v58 & 8) == 0 || v70)
    {
      v82 = v41 > v33 * 0.1;
      if (!v73)
      {
LABEL_24:
        v81 = v72 || v82;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v82 = 0;
      if (!v73)
      {
        goto LABEL_24;
      }
    }

    v81 = 1;
    goto LABEL_27;
  }

  v71 = 0;
  v81 = v41 > v33 * 0.8;
LABEL_28:
  v80 = v81 | (v15 >> 4) & 1;
LABEL_29:
  if (a4)
  {
    *a4 = v71;
  }

  return v80 & 1;
}

- (int64_t)inLexiconTokenCountInTranscriptionPath:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10 = objc_msgSend_tokenColumnCount(self, v5, v6, v7, v8, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1837F41EC;
  v14[3] = &unk_1E6DDC5D0;
  v14[4] = &v15;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v11, v4, 0, v10, v14);
  v12 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)isNonTextCandidateTranscriptionWithStrictFiltering:(BOOL)a3
{
  v103 = a3;
  v127 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_topTranscription(self, a2, a3, v3, v4, v5);
  v13 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v8, v9, v10, v11, v12);
  v18 = objc_msgSend_stringByTrimmingCharactersInSet_(v7, v14, v13, v15, v16, v17);

  v19 = sub_1837A5BBC(v7) || sub_1837A5BBC(v18);
  v25 = sub_1837A5EA4(v7) || sub_1837A5EA4(v18);
  v31 = sub_1837A5B20(v7, v20, v21, v22, v23, v24) || sub_1837A5B20(v18, v26, v27, v28, v29, v30);
  v37 = sub_1837A5CD0(v7, v26, v27, v28, v29, v30) || sub_1837A5CD0(v18, v32, v33, v34, v35, v36);
  if (objc_msgSend_shouldFilterSingleCharacterResult(self, v32, v33, v34, v35, v36))
  {
    shouldFilterSingleTokenResult = 1;
    if (!v103)
    {
      goto LABEL_21;
    }
  }

  else
  {
    shouldFilterSingleTokenResult = objc_msgSend_shouldFilterSingleTokenResult(self, v38, v39, v40, v41, v42);
    if (!v103)
    {
      goto LABEL_21;
    }
  }

  if (objc_msgSend_length(v18, v38, v39, v40, v41, v42) > 4)
  {
LABEL_21:
    v53 = 0;
    if ((shouldFilterSingleTokenResult & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v44 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v38, v39, v40, v41, v42);
  v102 = v18;
  if (objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v18, v45, v44, 0, v46, v47) != 1)
  {
    v62 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v48, v49, v50, v51, v52);
    v53 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v102, v63, v62, 0, v64, v65) == 1;

    v18 = v102;
    if (shouldFilterSingleTokenResult)
    {
      goto LABEL_23;
    }

LABEL_22:
    if ((v31 || v25 || v19 || v53 || v37) | (objc_msgSend_length(v18, v38, v39, v40, v41, v42) == 1))
    {
      goto LABEL_23;
    }

    if (sub_1837A576C(v7, 0))
    {
      v55 = 0;
      goto LABEL_28;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v125 = 0x2020000000;
    v126 = 0;
    v118 = 0;
    v119 = &v118;
    v120 = 0x2020000000;
    v121 = 0;
    v114 = 0;
    v115 = &v114;
    v116 = 0x2020000000;
    v117 = 0;
    v110 = 0;
    v111 = &v110;
    v112 = 0x2020000000;
    v113 = 0;
    v106 = 0;
    v107 = &v106;
    v108 = 0x2020000000;
    v109 = 0;
    v66 = objc_msgSend_transcriptionPaths(self, v57, v58, v59, v60, v61);
    v72 = objc_msgSend_firstObject(v66, v67, v68, v69, v70, v71);

    v78 = objc_msgSend_tokenColumnCount(self, v73, v74, v75, v76, v77);
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = sub_1837F48BC;
    v104[3] = &unk_1E6DDE7E0;
    v104[4] = self;
    v104[5] = &v106;
    v105 = v103;
    v104[6] = &buf;
    v104[7] = &v118;
    v104[8] = &v114;
    v104[9] = &v110;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v79, v72, 0, v78, v104);
    v85 = v107[3];
    v86 = v85 >= 1 && v119[3] / v85 > 0.6;
    v87 = v115[3];
    v88 = objc_msgSend_tokenColumnCount(self, v80, v81, v82, v83, v84);
    objc_msgSend_averageTokenRecognitionScoreForColumnRange_(self, v89, 0, v88, v90, v91);
    v98 = v107[3];
    if (v98 < 1)
    {
      v99 = 0;
    }

    else
    {
      v99 = v97 < 0.85 && v111[3] / v98 >= 0.5;
      if (v98 == 1 && v97 < 0.85)
      {
        if (objc_msgSend_length(v7, v92, v93, v94, v95, v96) < 3)
        {
          goto LABEL_53;
        }

        v100 = v115[3];
        if (v100 == 1 || !v103)
        {
          if (v100 != 1)
          {
            goto LABEL_52;
          }

LABEL_53:
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v101 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
          {
            *v122 = 138739971;
            v123 = v7;
            _os_log_impl(&dword_18366B000, v101, OS_LOG_TYPE_DEBUG, "CHTokenizedTextResult is nontext candidate due to invalid or out of lexicon tokens in transcription: %{sensitive}@.", v122, 0xCu);
          }

          v55 = 1;
          goto LABEL_58;
        }

LABEL_49:
        if (((*(*(&buf + 1) + 24) | v86) & 1) == 0 && v85 != v87 && !v99)
        {
          goto LABEL_52;
        }

        goto LABEL_53;
      }
    }

    if (!v103)
    {
LABEL_52:
      v55 = 0;
LABEL_58:

      _Block_object_dispose(&v106, 8);
      _Block_object_dispose(&v110, 8);
      _Block_object_dispose(&v114, 8);
      _Block_object_dispose(&v118, 8);
      _Block_object_dispose(&buf, 8);
      goto LABEL_28;
    }

    goto LABEL_49;
  }

  v53 = 1;

  if ((shouldFilterSingleTokenResult & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v54 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138739971;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_18366B000, v54, OS_LOG_TYPE_DEBUG, "CHTokenizedTextResult is nontext candidate due to invalid patterns in topTranscription: %{sensitive}@.", &buf, 0xCu);
  }

  v55 = 1;
LABEL_28:

  return v55;
}

- (BOOL)isPathOriginal:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10 = objc_msgSend_tokenColumnCount(self, v5, v6, v7, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1837F4C10;
  v13[3] = &unk_1E6DDC5D0;
  v13[4] = &v14;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v11, v4, 0, v10, v13);
  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return self;
}

- (BOOL)hasValidPrincipalLinesForPath:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10 = objc_msgSend_tokenColumnCount(self, v5, v6, v7, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1837F4D74;
  v13[3] = &unk_1E6DDC5D0;
  v13[4] = &v14;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v11, v4, 0, v10, v13);
  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return self;
}

- (BOOL)doGivenPaths:(id)a3 coverAllTokensInPath:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v11 = a4;
  v12 = 0;
LABEL_2:
  v17 = objc_msgSend_count(self->_tokenColumns, v6, v7, v8, v9, v10);
  if (v12 < v17)
  {
    v18 = objc_msgSend_indexAtPosition_(v11, v13, v12, v14, v15, v16);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v30;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v31, v35, 16, v21);
    if (v26)
    {
      v27 = *v32;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v19);
          }

          if (objc_msgSend_indexAtPosition_(*(*(&v31 + 1) + 8 * i), v22, v12, v23, v24, v25) == v18)
          {

            ++v12;
            goto LABEL_2;
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v31, v35, 16, v25);
        if (v26)
        {
          continue;
        }

        break;
      }
    }
  }

  return v12 >= v17;
}

- (BOOL)transcriptionPathsHaveSameSegmentation:(id)a3 otherPath:(id)a4
{
  v166 = a3;
  v167 = a4;
  if (objc_msgSend_compare_(v166, v6, qword_1ED6A08E0, v7, v8, v9) && objc_msgSend_compare_(v167, v10, qword_1ED6A08E0, v11, v12, v13))
  {
    v15 = objc_msgSend_length(v166, v10, v14, v11, v12, v13);
    if (v15 == objc_msgSend_length(v167, v16, v17, v18, v19, v20))
    {
      for (i = 0; i < objc_msgSend_length(v166, v21, v22, v23, v24, v25); ++i)
      {
        v31 = objc_msgSend_tokenRowsAtColumnIndex_(self, v27, i, v28, v29, v30);
        v36 = objc_msgSend_indexAtPosition_(v166, v32, i, v33, v34, v35);
        v41 = objc_msgSend_indexAtPosition_(v167, v37, i, v38, v39, v40);
        v46 = objc_msgSend_objectAtIndexedSubscript_(v31, v42, v36, v43, v44, v45);
        v52 = objc_msgSend_count(v46, v47, v48, v49, v50, v51);
        v57 = objc_msgSend_objectAtIndexedSubscript_(v31, v53, v41, v54, v55, v56);
        v63 = objc_msgSend_count(v57, v58, v59, v60, v61, v62);

        if (v52 != v63)
        {
LABEL_20:
          v141 = 0;
          goto LABEL_21;
        }

        v68 = 0;
        while (1)
        {
          v69 = objc_msgSend_objectAtIndexedSubscript_(v31, v64, v36, v65, v66, v67);
          v75 = objc_msgSend_count(v69, v70, v71, v72, v73, v74);

          if (v68 >= v75)
          {
            break;
          }

          v80 = objc_msgSend_objectAtIndexedSubscript_(v31, v76, v36, v77, v78, v79);
          v85 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, v68, v82, v83, v84);
          v91 = objc_msgSend_strokeIndexes(v85, v86, v87, v88, v89, v90);

          v96 = objc_msgSend_objectAtIndexedSubscript_(v31, v92, v41, v93, v94, v95);
          v101 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, v68, v98, v99, v100);
          v107 = objc_msgSend_strokeIndexes(v101, v102, v103, v104, v105, v106);

          LOBYTE(v101) = objc_msgSend_isEqualToIndexSet_(v91, v108, v107, v109, v110, v111);
          ++v68;
          if ((v101 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      v141 = 1;
    }

    else
    {
      v141 = 0;
    }
  }

  else
  {
    v112 = objc_msgSend_tokensFromTranscriptionPath_(self, v10, v166, v11, v12, v13);
    v117 = objc_msgSend_tokensFromTranscriptionPath_(self, v113, v167, v114, v115, v116);
    v31 = v112;
    v118 = v117;
    objc_opt_self();
    v124 = objc_msgSend_count(v31, v119, v120, v121, v122, v123);
    if (v124 == objc_msgSend_count(v118, v125, v126, v127, v128, v129))
    {
      v135 = 0;
      do
      {
        v136 = objc_msgSend_count(v31, v130, v131, v132, v133, v134);
        v141 = v135 >= v136;
        if (v135 >= v136)
        {
          break;
        }

        v142 = objc_msgSend_objectAtIndexedSubscript_(v31, v137, v135, v138, v139, v140);
        v148 = objc_msgSend_strokeIndexes(v142, v143, v144, v145, v146, v147);

        v153 = objc_msgSend_objectAtIndexedSubscript_(v118, v149, v135, v150, v151, v152);
        v159 = objc_msgSend_strokeIndexes(v153, v154, v155, v156, v157, v158);

        isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v148, v160, v159, v161, v162, v163);
        ++v135;
      }

      while ((isEqualToIndexSet & 1) != 0);
    }

    else
    {
      v141 = 0;
    }

LABEL_21:
  }

  return v141;
}

- (id)precedingSeparatorForTopTranscriptionPath
{
  v7 = objc_msgSend_transcriptionPaths(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_firstObject(v7, v8, v9, v10, v11, v12);
  v14 = sub_1837F53E4(self, v13);

  return v14;
}

- (id)precedingSeparatorForTopModelTranscriptionPath
{
  v3 = [CHTokenizedTextResult topModelTranscriptionPath]_0(self);
  v4 = sub_1837F53E4(self, v3);

  return v4;
}

- (id)precedingSeparatorForRawTranscriptionPath
{
  v3 = [CHTokenizedTextResult rawTranscriptionPath]_0(self);
  v4 = sub_1837F53E4(self, v3);

  return v4;
}

- (id)precedingSeparatorForToken:(id)a3
{
  v4 = a3;
  if (objc_msgSend_precedingLineBreaks(self, v5, v6, v7, v8, v9) >= 1)
  {
    v15 = objc_msgSend_tokenColumns(self, v10, v11, v12, v13, v14);
    v21 = objc_msgSend_firstObject(v15, v16, v17, v18, v19, v20);

    if (objc_msgSend_containsStartingTokenEquivalentToToken_(v21, v22, v4, v23, v24, v25))
    {
      v31 = objc_msgSend_precedingLineBreaks(self, v26, v27, v28, v29, v30);
      v34 = objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_1EF1C0318, v32, v31, @"\n", 0, v33);

      if (v34)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  if ((objc_msgSend_properties(v4, v10, v11, v12, v13, v14) & 0x20) != 0)
  {
    v34 = @" ";
  }

  else
  {
    v34 = &stru_1EF1C0318;
  }

LABEL_9:

  return v34;
}

- (id)strokeIndexesForColumnsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v12 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], a2, a3.location, a3.length, v3, v4);
  if (location < location + length)
  {
    do
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v8, location, v9, v10, v11);
      v19 = objc_msgSend_strokeIndexes(v13, v14, v15, v16, v17, v18);
      objc_msgSend_addIndexes_(v12, v20, v19, v21, v22, v23);

      ++location;
      --length;
    }

    while (length);
  }

  return v12;
}

- (id)strokeIndexSetsInPath:(id)a3 columnRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  if (location < location + length)
  {
    do
    {
      v17 = objc_msgSend_tokensInTranscriptionPath_atColumnIndex_(self, v13, v7, location, v14, v15);
      v18 = sub_1837F5954(CHTokenizedTextResult, v17);
      objc_msgSend_addObjectsFromArray_(v16, v19, v18, v20, v21, v22);

      ++location;
      --length;
    }

    while (length);
  }

  return v16;
}

- (BOOL)hasValidColumns
{
  v7 = objc_msgSend_count(self->_tokenColumns, a2, v2, v3, v4, v5);
  v8 = v7 != 0;
  if (objc_msgSend_count(self->_tokenColumns, v9, v10, v11, v12, v13))
  {
    v18 = v7 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v14, 0, v15, v16, v17);
    v25 = objc_msgSend_textTokenRows(v19, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
    v8 = v31 != 0;

    v36 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v32, 0, v33, v34, v35);
    v42 = objc_msgSend_textTokenRows(v36, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_count(v42, v43, v44, v45, v46, v47);

    if (v48)
    {
      v54 = v31 == 0;
    }

    else
    {
      v54 = 1;
    }

    if (!v54)
    {
      v55 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v49, 0, v51, v52, v53);
      v61 = objc_msgSend_textTokenRows(v55, v56, v57, v58, v59, v60);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, 0, v63, v64, v65);
      v8 = objc_msgSend_count(v66, v67, v68, v69, v70, v71) != 0;

      v76 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v72, 0, v73, v74, v75);
      v82 = objc_msgSend_textTokenRows(v76, v77, v78, v79, v80, v81);
      objc_msgSend_count(v82, v83, v84, v85, v86, v87);
    }

    objc_msgSend_count(self->_tokenColumns, v49, v50, v51, v52, v53);
  }

  return v8;
}

- (BOOL)hasValidPaths
{
  if (objc_msgSend_count(self->_transcriptionPaths, a2, v2, v3, v4, v5))
  {
    v12 = objc_msgSend_count(self->_transcriptionPaths, v7, v8, v9, v10, v11);
    v18 = v12 == objc_msgSend_count(self->_transcriptionPathScores, v13, v14, v15, v16, v17);
    if (!objc_msgSend_count(self->_transcriptionPaths, v19, v20, v21, v22, v23))
    {
      return v18;
    }
  }

  else
  {
    v18 = 0;
    if (!objc_msgSend_count(self->_transcriptionPaths, v7, v8, v9, v10, v11))
    {
      return v18;
    }
  }

  if (!v18)
  {
    return v18;
  }

  v29 = objc_msgSend_objectAtIndexedSubscript_(self->_transcriptionPaths, v24, 0, v25, v26, v27);
  v35 = objc_msgSend_length(v29, v30, v31, v32, v33, v34);
  v41 = objc_msgSend_count(self->_tokenColumns, v36, v37, v38, v39, v40);

  objc_msgSend_count(self->_transcriptionPaths, v42, v43, v44, v45, v46);
  return v35 == v41;
}

- (BOOL)isValid
{
  hasValidColumns = objc_msgSend_hasValidColumns(self, a2, v2, v3, v4, v5);
  if (hasValidColumns)
  {

    LOBYTE(hasValidColumns) = MEMORY[0x1EEE66B58](self, sel_hasValidPaths, v8, v9, v10, v11);
  }

  return hasValidColumns;
}

- (id)tokensFromTranscriptionPath:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v16 = objc_msgSend_tokenColumnCount(self, v11, v12, v13, v14, v15);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1837F6174;
  v20[3] = &unk_1E6DDE720;
  v17 = v10;
  v21 = v17;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v18, v4, 0, v16, v20);

  return v17;
}

- (id)tokensFromTranscriptionPath:(id)a3 characterRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v19 = objc_msgSend_tokenColumnCount(self, v14, v15, v16, v17, v18);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1837F62EC;
  v23[3] = &unk_1E6DDE808;
  v25 = v28;
  v26 = location;
  v27 = length;
  v20 = v13;
  v24 = v20;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v21, v7, 0, v19, v23);

  _Block_object_dispose(v28, 8);

  return v20;
}

- (id)tokensAlignedWithStrokes:(id)a3 transcriptionPath:(id)a4 strokeProvider:(id)a5
{
  v149 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v131 = a5;
  v14 = objc_msgSend_tokensFromTranscriptionPath_(self, v10, v9, v11, v12, v13);
  v20 = objc_msgSend_mutableCopy(v14, v15, v16, v17, v18, v19);

  if (v8)
  {
    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_msgSend_inputStrokeIdentifiers(self, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_setWithArray_(v26, v28, v27, v29, v30, v31);

    v37 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], v33, v8, v34, v35, v36);
    objc_msgSend_intersectSet_(v37, v38, v32, v39, v40, v41);
    if (objc_msgSend_count(v37, v42, v43, v44, v45, v46))
    {
      v130 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v47, v48, v49, v50, v51);
      v57 = objc_msgSend_inputStrokeIdentifiers(self, v52, v53, v54, v55, v56);
      v142[0] = MEMORY[0x1E69E9820];
      v142[1] = 3221225472;
      v142[2] = sub_1837F6C7C;
      v142[3] = &unk_1E6DDE858;
      v143 = v37;
      v58 = v130;
      v144 = v58;
      objc_msgSend_enumerateObjectsUsingBlock_(v57, v59, v142, v60, v61, v62);

      v68 = objc_msgSend_originalTokens(self, v63, v64, v65, v66, v67);
      LOBYTE(v57) = sub_1837F642C(CHTokenizedTextResult, v58, v68);

      if (!sub_1837F642C(CHTokenizedTextResult, v58, v20) && (v57 & 1) != 0)
      {
        v141[0] = 0;
        v141[1] = v141;
        v141[2] = 0x2020000000;
        v141[3] = 0;
        v74 = objc_msgSend_array(MEMORY[0x1E695DF70], v69, v70, v71, v72, v73);
        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = sub_1837F6D24;
        v138[3] = &unk_1E6DDE880;
        v140 = v141;
        v138[4] = self;
        v75 = v74;
        v139 = v75;
        objc_msgSend_enumerateObjectsUsingBlock_(v20, v76, v138, v77, v78, v79);
        v85 = objc_msgSend_count(v75, v80, v81, v82, v83, v84);
        if (v85 == objc_msgSend_count(v20, v86, v87, v88, v89, v90))
        {
          v96 = objc_msgSend_array(MEMORY[0x1E695DF70], v91, v92, v93, v94, v95);
          v132[0] = MEMORY[0x1E69E9820];
          v132[1] = 3221225472;
          v132[2] = sub_1837F70D4;
          v132[3] = &unk_1E6DDE8D0;
          v133 = v58;
          v97 = v96;
          v134 = v97;
          v135 = v75;
          v136 = self;
          v137 = v131;
          objc_msgSend_enumerateObjectsUsingBlock_(v20, v98, v132, v99, v100, v101);
          v102 = v97;

          v20 = v102;
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v103 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            v109 = objc_msgSend_count(v75, v104, v105, v106, v107, v108);
            v115 = objc_msgSend_count(v20, v110, v111, v112, v113, v114);
            *buf = 134218240;
            v146 = v109;
            v147 = 2048;
            v148 = v115;
            _os_log_impl(&dword_18366B000, v103, OS_LOG_TYPE_ERROR, "The number of elements between tokensToOriginalTokenIndexes (%ld) and mutableTokensArray (%ld) is not matching", buf, 0x16u);
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v102 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
          {
            v121 = objc_msgSend_count(v75, v116, v117, v118, v119, v120);
            v127 = objc_msgSend_count(v20, v122, v123, v124, v125, v126);
            *buf = 134218240;
            v146 = v121;
            v147 = 2048;
            v148 = v127;
            _os_log_impl(&dword_18366B000, v102, OS_LOG_TYPE_FAULT, "The number of elements between tokensToOriginalTokenIndexes (%ld) and mutableTokensArray (%ld) is not matching", buf, 0x16u);
          }
        }

        _Block_object_dispose(v141, 8);
      }
    }
  }

  v128 = objc_msgSend_copy(v20, v21, v22, v23, v24, v25);

  return v128;
}

- (id)tokenizedResultWithFilteredPaths:(double)a3
{
  v9 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_firstObject(self->_transcriptionPaths, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_arrayWithObject_(v9, v11, v10, v12, v13, v14);

  v16 = MEMORY[0x1E695DF70];
  v22 = objc_msgSend_firstObject(self->_transcriptionPathScores, v17, v18, v19, v20, v21);
  v27 = objc_msgSend_arrayWithObject_(v16, v23, v22, v24, v25, v26);

  v33 = objc_msgSend_firstObject(self->_transcriptionPathScores, v28, v29, v30, v31, v32);
  objc_msgSend_doubleValue(v33, v34, v35, v36, v37, v38);
  v40 = v39;

  v46 = v40 * a3;
  for (i = 1; i < objc_msgSend_count(self->_transcriptionPathScores, v41, v42, v43, v44, v45); ++i)
  {
    v52 = objc_msgSend_objectAtIndexedSubscript_(self->_transcriptionPathScores, v48, i, v49, v50, v51);
    objc_msgSend_doubleValue(v52, v53, v54, v55, v56, v57);
    v59 = v58;

    if (v59 <= v46)
    {
      break;
    }

    v64 = objc_msgSend_objectAtIndexedSubscript_(self->_transcriptionPaths, v60, i, v61, v62, v63);
    objc_msgSend_addObject_(v15, v65, v64, v66, v67, v68);

    v73 = objc_msgSend_objectAtIndexedSubscript_(self->_transcriptionPathScores, v69, i, v70, v71, v72);
    objc_msgSend_addObject_(v27, v74, v73, v75, v76, v77);
  }

  v78 = [CHMutableTokenizedTextResult alloc];
  tokenColumns = self->_tokenColumns;
  trailingSeparator = self->_trailingSeparator;
  recognizerGenerationIdentifier = self->_recognizerGenerationIdentifier;
  changeableCount = self->_changeableCount;
  isMinimalDrawingResult = objc_msgSend_isMinimalDrawingResult(self, v83, v84, v85, v86, v87);
  isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v78, v88, tokenColumns, v15, v27, trailingSeparator, recognizerGenerationIdentifier, changeableCount, isMinimalDrawingResult, *&self->_baseWritingDirection, self->_originalTokens);
  v95 = objc_msgSend_count(v27, v90, v91, v92, v93, v94);
  objc_msgSend_trimTokensToTranscriptionPathCount_(isMinimalDrawingResult_baseWritingDirection_originalTokens, v96, v95, v97, v98, v99);

  return isMinimalDrawingResult_baseWritingDirection_originalTokens;
}

+ (id)resultRestoringRawPathInResult:(id)a3
{
  v167 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = objc_msgSend_tokenColumns(v3, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_indexesOfObjectsPassingTest_(v9, v10, &unk_1EF1BE708, v11, v12, v13);

  v153 = v14;
  if (objc_msgSend_count(v14, v15, v16, v17, v18, v19))
  {
    v25 = objc_msgSend_mutableCopy(v3, v20, v21, v22, v23, v24);
    v26 = MEMORY[0x1E695DF70];
    v32 = objc_msgSend_tokenColumns(v25, v27, v28, v29, v30, v31);
    v37 = objc_msgSend_arrayWithArray_(v26, v33, v32, v34, v35, v36);

    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = sub_1837F8170;
    v163[3] = &unk_1E6DDE028;
    v164 = v3;
    v38 = v37;
    v165 = v38;
    objc_msgSend_enumerateIndexesUsingBlock_(v14, v39, v163, v40, v41, v42);
    objc_msgSend_setTokenColumns_(v25, v43, v38, v44, v45, v46);
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    v47 = v25;
  }

  else
  {
    v47 = v3;
  }

  v48 = v47;

  v49 = [CHTokenizedTextResult rawTranscriptionPath]_0(v48);
  v55 = objc_msgSend_transcriptionPaths(v48, v50, v51, v52, v53, v54);
  v60 = objc_msgSend_indexOfObjectIdenticalTo_(v55, v56, v49, v57, v58, v59);

  if (v60 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v66 = 0;
LABEL_9:
    if (v66 < objc_msgSend_tokenColumnCount(v48, v61, v62, v63, v64, v65))
    {
      v67 = objc_msgSend_indexAtPosition_(v49, v61, v66, v63, v64, v65);
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v73 = objc_msgSend_transcriptionPaths(v48, v68, v69, v70, v71, v72);
      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v159, v166, 16, v75);
      if (v80)
      {
        v81 = *v160;
        while (2)
        {
          for (i = 0; i != v80; ++i)
          {
            if (*v160 != v81)
            {
              objc_enumerationMutation(v73);
            }

            if (objc_msgSend_indexAtPosition_(*(*(&v159 + 1) + 8 * i), v76, v66, v77, v78, v79) == v67)
            {

              ++v66;
              goto LABEL_9;
            }
          }

          v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v159, v166, 16, v79);
          if (v80)
          {
            continue;
          }

          break;
        }
      }

      if (!v25)
      {
        v25 = objc_msgSend_mutableCopy(v3, v83, v84, v85, v86, v87);
      }

      v88 = objc_msgSend_transcriptionPaths(v25, v83, v84, v85, v86, v87);
      v94 = objc_msgSend_mutableCopy(v88, v89, v90, v91, v92, v93);

      v100 = objc_msgSend_transcriptionPathScores(v25, v95, v96, v97, v98, v99);
      v106 = objc_msgSend_mutableCopy(v100, v101, v102, v103, v104, v105);

      objc_msgSend_addObject_(v94, v107, v49, v108, v109, v110);
      v155 = 0;
      v156 = &v155;
      v157 = 0x2020000000;
      v158 = 0x3FF0000000000000;
      v116 = objc_msgSend_tokenColumnCount(v25, v111, v112, v113, v114, v115);
      v154[0] = MEMORY[0x1E69E9820];
      v154[1] = 3221225472;
      v154[2] = sub_1837F8714;
      v154[3] = &unk_1E6DDC5D0;
      v154[4] = &v155;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v25, v117, v49, 0, v116, v154);
      v123 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v118, v119, v120, v121, v122, v156[3]);
      objc_msgSend_addObject_(v106, v124, v123, v125, v126, v127);

      objc_msgSend_setTranscriptionPaths_scores_(v25, v128, v94, v106, v129, v130);
      _Block_object_dispose(&v155, 8);
    }
  }

  if (v25)
  {
    v131 = objc_msgSend_copy(v25, v61, v62, v63, v64, v65);

    v137 = objc_msgSend_inputStrokeIdentifiers(v48, v132, v133, v134, v135, v136);
    objc_msgSend_setInputStrokeIdentifiers_(v131, v138, v137, v139, v140, v141);

    v147 = objc_msgSend_locale(v48, v142, v143, v144, v145, v146);
    objc_msgSend_setLocale_(v131, v148, v147, v149, v150, v151);
  }

  else
  {
    v131 = v3;
  }

  return v131;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)languageFitnessForLocale:(id)a3 recognitionMode:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v12 = objc_msgSend_transcriptionPaths(self, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_firstObject(v12, v13, v14, v15, v16, v17);

  if (!v18)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_ERROR, "Error: Tokenized text result without any transcription path encountered when computing language fitness.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v20 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v20 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_FAULT, "Error: Tokenized text result without any transcription path encountered when computing language fitness.", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v21 = v18;
  v22 = v6;
  if (!self)
  {
    v32 = 0.0;
    goto LABEL_24;
  }

  v23 = objc_opt_class();
  v32 = -10.0;
  if (objc_msgSend_isLocaleSupported_withMode_(v23, v24, v22, v4, v25, v26))
  {
    if (self->_recognizerGenerationIdentifier != 1)
    {
      v32 = sub_1837F97A8(self, v21);
      goto LABEL_24;
    }

    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    v126 = 0;
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    v33 = objc_msgSend_languageCode(v22, v27, v28, v29, v30, v31);
    if (objc_msgSend_hasPrefix_(v33, v34, @"zh", v35, v36, v37))
    {
    }

    else
    {
      v47 = objc_msgSend_languageCode(v22, v38, v39, v40, v41, v42);
      hasPrefix = objc_msgSend_hasPrefix_(v47, v48, @"yue", v49, v50, v51);

      if (!hasPrefix)
      {
        v61 = 0;
        v60 = 0;
        goto LABEL_19;
      }
    }

    v54 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v43, @"en_US", v44, v45, v46);
    v60 = objc_msgSend_exemplarCharacterSet(v54, v55, v56, v57, v58, v59);

    v61 = 1;
LABEL_19:
    v115 = 0;
    v116 = &v115;
    v117 = 0x2020000000;
    v118 = 0;
    v111 = 0;
    v112 = &v111;
    v113 = 0x2020000000;
    v114 = 0;
    v109[0] = 0;
    v109[1] = v109;
    v109[2] = 0x2020000000;
    v110 = 0;
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v108 = 0;
    v62 = objc_msgSend_length(v21, v43, v53, v44, v45, v46);
    *buf = MEMORY[0x1E69E9820];
    v93 = 3221225472;
    v94 = sub_1837F9978;
    v95 = &unk_1E6DDE988;
    v96 = v22;
    v63 = v60;
    v97 = v63;
    v98 = &v123;
    v104 = v61;
    v99 = &v115;
    v100 = v109;
    v101 = &v111;
    v102 = &v105;
    v103 = &v119;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v64, v21, 0, v62, buf);
    v65 = v124;
    v66 = v124[3] / v120[3];
    v124[3] = v66;
    v67 = v112[3];
    if (v67 >= 1)
    {
      v66 = v66 - v116[3] / v67;
      v65[3] = v66;
    }

    v68 = v106[3];
    v69 = v68 <= 1;
    v70 = v68 - 1;
    if (!v69)
    {
      v66 = v66 + pow(v70, 1.6) * -0.25;
      v65[3] = v66;
    }

    v32 = 1.0 / (exp((v66 + 3.0) * -0.5) + 1.0);

    _Block_object_dispose(&v105, 8);
    _Block_object_dispose(v109, 8);
    _Block_object_dispose(&v111, 8);
    _Block_object_dispose(&v115, 8);

    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(&v123, 8);
  }

LABEL_24:

  v76 = objc_msgSend_transcriptionPathScores(self, v71, v72, v73, v74, v75);
  v82 = objc_msgSend_firstObject(v76, v77, v78, v79, v80, v81);
  objc_msgSend_doubleValue(v82, v83, v84, v85, v86, v87);
  v89 = v88;

  v90 = v32;
  v91 = v89;
  result.var1 = v91;
  result.var0 = v90;
  return result;
}

- (id)lastTokenStrokeIndexes
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1837FA378;
  v42 = sub_1837FA388;
  v43 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v8 = objc_msgSend_transcriptionPaths(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_firstObject(v8, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_tokenColumnCount(self, v15, v16, v17, v18, v19);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1837FA390;
  v37[3] = &unk_1E6DDE9B0;
  v37[4] = self;
  v37[5] = &v38;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v21, v14, v20 - 1, 1, v37);

  if (!objc_msgSend_count(v39[5], v22, v23, v24, v25, v26))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v32 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_ERROR, "Found empty stroke index set for the last character segment.", v36, 2u);
    }
  }

  if (!objc_msgSend_count(v39[5], v27, v28, v29, v30, v31))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *v36 = 0;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_FAULT, "Found empty stroke index set for the last character segment.", v36, 2u);
    }
  }

  v34 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v34;
}

+ (BOOL)isTextTranscriptionUnitConversion:(id)a3 locales:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_hasSuffix_(v5, v7, @"=", v8, v9, v10))
  {
    isTextTranscriptionUnitConversion_locales = objc_msgSend_isTextTranscriptionUnitConversion_locales_(CHCalculateWrapper, v11, v5, v6, v12, v13);
  }

  else
  {
    isTextTranscriptionUnitConversion_locales = 0;
  }

  return isTextTranscriptionUnitConversion_locales;
}

+ (BOOL)isTextTranscriptionVariableAssignment:(id)a3 outVariable:(id *)a4
{
  v210 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v11 = 0x1E696A000uLL;
  v12 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v5, v6, v7, v8, v9);
  v17 = objc_msgSend_stringByTrimmingCharactersInSet_(v10, v13, v12, v14, v15, v16);

  if (!objc_msgSend_length(v17, v18, v19, v20, v21, v22) || (objc_msgSend_hasSuffix_(v10, v23, @"=", v24, v25, v26) & 1) != 0 || (v34 = objc_msgSend_rangeOfString_(v17, v27, @"=", v28, v29, v30), v34 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v35 = 0;
  }

  else
  {
    v37 = v31;
    v38 = objc_msgSend_substringWithRange_(v17, v31, 0, v34, v32, v33);
    v44 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v39, v40, v41, v42, v43);
    v190 = objc_msgSend_stringByTrimmingCharactersInSet_(v38, v45, v44, v46, v47, v48);

    v54 = objc_msgSend_length(v17, v49, v50, v51, v52, v53);
    v58 = objc_msgSend_substringWithRange_(v17, v55, &v37[v34], v54 - &v37[v34], v56, v57);
    v64 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v59, v60, v61, v62, v63);
    v189 = objc_msgSend_stringByTrimmingCharactersInSet_(v58, v65, v64, v66, v67, v68);

    if (objc_msgSend_length(v190, v69, v70, v71, v72, v73) && objc_msgSend_length(v189, v74, v75, v76, v77, v78))
    {
      v191 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v79, v80, v81, v82, v83);
      v89 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v84, v85, v86, v87, v88);
      v94 = objc_msgSend_componentsSeparatedByCharactersInSet_(v190, v90, v89, v91, v92, v93);

      v186 = v94;
      if (objc_msgSend_count(v94, v95, v96, v97, v98, v99) <= 1)
      {
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        obj = v94;
        v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v100, &v203, v209, 16, v101);
        if (v105)
        {
          v106 = *v204;
          while (2)
          {
            for (i = 0; i != v105; ++i)
            {
              if (*v204 != v106)
              {
                objc_enumerationMutation(obj);
              }

              v108 = *(*(&v203 + 1) + 8 * i);
              v109 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v108, v102, v191, 0, v103, v104);
              if (v109 != objc_msgSend_length(v108, v110, v111, v112, v113, v114))
              {
                v35 = 0;
                goto LABEL_51;
              }
            }

            v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v102, &v203, v209, 16, v104);
            if (v105)
            {
              continue;
            }

            break;
          }
        }

        v120 = objc_msgSend_ch_mathOperatorSet(MEMORY[0x1E696AB08], v115, v116, v117, v118, v119);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1837FACFC;
        block[3] = &unk_1E6DDC818;
        v187 = v191;
        v201 = v187;
        obj = v120;
        v202 = obj;
        if (qword_1EA84DB88 != -1)
        {
          dispatch_once(&qword_1EA84DB88, block);
        }

        objc_msgSend_componentsSeparatedByCharactersInSet_(v189, v121, obj, v122, v123, v124);
        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v184 = v197 = 0u;
        v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v125, &v196, v208, 16, v126);
        if (v132)
        {
          v133 = *v197;
          v181 = *v197;
          do
          {
            for (j = 0; j != v132; ++j)
            {
              if (*v197 != v133)
              {
                objc_enumerationMutation(v184);
              }

              v135 = *(*(&v196 + 1) + 8 * j);
              v136 = objc_msgSend_whitespaceCharacterSet(*(v11 + 2824), v127, v128, v129, v130, v131);
              v185 = objc_msgSend_stringByTrimmingCharactersInSet_(v135, v137, v136, v138, v139, v140);

              if (objc_msgSend_length(v185, v141, v142, v143, v144, v145))
              {
                v151 = objc_msgSend_whitespaceCharacterSet(*(v11 + 2824), v146, v147, v148, v149, v150);
                v156 = objc_msgSend_componentsSeparatedByCharactersInSet_(v185, v152, v151, v153, v154, v155);

                v183 = j;
                v194 = 0u;
                v195 = 0u;
                v192 = 0u;
                v193 = 0u;
                v157 = v156;
                v158 = v157;
                v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v157, v159, &v192, v207, 16, v160);
                if (v164)
                {
                  v182 = v132;
                  v165 = 0;
                  v166 = *v193;
                  while (2)
                  {
                    for (k = 0; k != v164; ++k)
                    {
                      if (*v193 != v166)
                      {
                        objc_enumerationMutation(v157);
                      }

                      v168 = *(*(&v192 + 1) + 8 * k);
                      v169 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v168, v161, qword_1EA84DB80, 0, v162, v163);
                      if (v169 != objc_msgSend_length(v168, v170, v171, v172, v173, v174))
                      {

LABEL_49:
                        v35 = 0;
                        goto LABEL_50;
                      }

                      v157 = v158;
                      if (objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v168, v175, v187, 0, v176, v177))
                      {
                        ++v165;
                      }
                    }

                    v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v161, &v192, v207, 16, v163);
                    if (v164)
                    {
                      continue;
                    }

                    break;
                  }

                  v178 = v158;
                  v179 = v165 < 2;

                  v133 = v181;
                  v132 = v182;
                  j = v183;
                  v11 = 0x1E696A000;

                  if (!v179)
                  {
                    goto LABEL_49;
                  }
                }

                else
                {

                  j = v183;
                  v11 = 0x1E696A000;
                }
              }
            }

            v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v127, &v196, v208, 16, v131);
          }

          while (v132);
        }

        if (a4)
        {
          v180 = v190;
          *a4 = v190;
        }

        v35 = 1;
LABEL_50:

LABEL_51:
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  return v35;
}

- (id)textRecognitionResultArrayGivenHistory:(id)a3
{
  v304 = a3;
  v4 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_transcriptionPaths(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_count(v10, v11, v12, v13, v14, v15);
  v303 = objc_msgSend_arrayWithCapacity_(v4, v17, v16, v18, v19, v20);

  v26 = 0;
  v302 = v319;
  v27 = 0x1E696A000;
  v317 = self;
  while (1)
  {
    v28 = objc_msgSend_transcriptionPaths(self, v21, v22, v23, v24, v25);
    v34 = objc_msgSend_count(v28, v29, v30, v31, v32, v33);

    if (v26 >= v34)
    {
      break;
    }

    v312 = v26;
    if (self)
    {
      v40 = objc_msgSend_transcriptionPaths(self, v35, v36, v37, v38, v39);
      v45 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, v26, v42, v43, v44);

      v51 = objc_msgSend_length(v45, v46, v47, v48, v49, v50);
      v56 = objc_msgSend_objectAtIndexedSubscript_(self->_transcriptionPathScores, v52, v26, v53, v54, v55);
      objc_msgSend_doubleValue(v56, v57, v58, v59, v60, v61);
      v63 = v62;
      v51 *= 2;

      v68 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v64, v51, v65, v66, v67);
      v73 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v69, v51, v70, v71, v72);
      v78 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v74, v51, v75, v76, v77);
      v83 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v79, v51, v80, v81, v82);
      v310 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v84, v51, v85, v86, v87);
      v308 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v88, v51, v89, v90, v91);
      v96 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v92, v51, v93, v94, v95);
      v306 = objc_msgSend_indexSet(*(v27 + 3408), v97, v98, v99, v100, v101);
      v305 = objc_msgSend_indexSet(*(v27 + 3408), v102, v103, v104, v105, v106);
      v315 = v45;
      v112 = objc_msgSend_tokenColumns(v317, v107, v108, v109, v110, v111);
      v118 = objc_msgSend_count(v112, v113, v114, v115, v116, v117);

      v332 = MEMORY[0x1E69E9820];
      v333 = 3221225472;
      v334 = sub_1837FBA8C;
      v335 = &unk_1E6DDEA00;
      v119 = v73;
      v336 = v119;
      v120 = v68;
      v337 = v120;
      v121 = v78;
      v338 = v121;
      v122 = v83;
      v339 = v122;
      v123 = v310;
      v340 = v123;
      v124 = v308;
      v341 = v124;
      v125 = v96;
      v342 = v125;
      v126 = v306;
      v343 = v126;
      v127 = v305;
      v344 = v127;
      v129 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_excludeGibberish_rejectionRate_tokenProcessingBlock_(v317, v128, v315, 0, v118, 0, 0, 0, &v332);
      v130 = [CHTextRecognitionResult alloc];
      v313 = v120;
      LOBYTE(v301) = 0;
      isTextReplacement = objc_msgSend_initWithString_score_wordRanges_wordIDs_wordRecognitionScores_wordCombinedScores_wordStrokeSets_wordLexicalEntries_wordPatternEntries_rareWordIndexes_inappropriateWordIndexes_isTextReplacement_(v130, v131, v129, v120, v119, v121, v122, v123, v63, v124, v125, v126, v127, v301, v302);
    }

    else
    {
      isTextReplacement = 0;
    }

    self = v317;
    if (objc_msgSend_length(v304, v35, v36, v37, v38, v39))
    {
      v138 = objc_msgSend_transcriptionPaths(v317, v133, v134, v135, v136, v137);
      v143 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, v312, v140, v141, v142);

      v316 = v143;
      v149 = objc_msgSend_length(v143, v144, v145, v146, v147, v148);
      v332 = 0;
      v333 = &v332;
      v334 = 0x3032000000;
      v335 = sub_1837FA378;
      v336 = sub_1837FA388;
      v337 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v150, 2 * v149, v151, v152, v153);
      v326 = 0;
      v327 = &v326;
      v328 = 0x3032000000;
      v329 = sub_1837FA378;
      v330 = sub_1837FA388;
      v331 = &stru_1EF1C0318;
      v320 = 0;
      v321 = &v320;
      v322 = 0x3032000000;
      v323 = sub_1837FA378;
      v324 = sub_1837FA388;
      v154 = MEMORY[0x1E695DF70];
      v160 = objc_msgSend_wordRanges(isTextReplacement, v155, v156, v157, v158, v159);
      v166 = objc_msgSend_count(v160, v161, v162, v163, v164, v165);
      v325 = objc_msgSend_arrayWithCapacity_(v154, v167, v166, v168, v169, v170);

      v176 = objc_msgSend_tokenColumns(v317, v171, v172, v173, v174, v175);
      v182 = objc_msgSend_count(v176, v177, v178, v179, v180, v181);
      v318[0] = MEMORY[0x1E69E9820];
      v318[1] = 3221225472;
      v319[0] = sub_1837FB940;
      v319[1] = &unk_1E6DDE9D8;
      v319[2] = v317;
      v319[3] = &v332;
      v319[4] = &v326;
      v319[5] = &v320;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v317, v183, v316, 0, v182, v318);

      v184 = v327[5];
      v190 = objc_msgSend_string(isTextReplacement, v185, v186, v187, v188, v189);
      v314 = objc_msgSend_stringByAppendingString_(v184, v191, v190, v192, v193, v194);

      v200 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v201 = 0;
      for (i = 0; ; ++i)
      {
        v203 = objc_msgSend_wordRanges(isTextReplacement, v195, v196, v197, v198, v199);
        v209 = objc_msgSend_count(v203, v204, v205, v206, v207, v208);

        if (i >= v209)
        {
          break;
        }

        v215 = objc_msgSend_wordRanges(isTextReplacement, v210, v211, v212, v213, v214);
        v220 = objc_msgSend_objectAtIndex_(v215, v216, i, v217, v218, v219);

        v225 = objc_msgSend_objectAtIndex_(v321[5], v221, i, v222, v223, v224);
        objc_msgSend_rangeValue(v220, v226, v227, v228, v229, v230);
        v236 = &v231[objc_msgSend_length(v225, v231, v232, v233, v234, v235)];
        v240 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v237, v201, v236, v238, v239);
        objc_msgSend_addObject_(v200, v241, v240, v242, v243, v244);
        v201 += v236;
      }

      v245 = [CHTextRecognitionResult alloc];
      objc_msgSend_score(isTextReplacement, v246, v247, v248, v249, v250);
      v252 = v251;
      v311 = objc_msgSend_wordIDs(isTextReplacement, v253, v254, v255, v256, v257);
      v263 = objc_msgSend_wordRecognitionScores(isTextReplacement, v258, v259, v260, v261, v262);
      v264 = *(v333 + 40);
      v309 = objc_msgSend_wordStrokeSets(isTextReplacement, v265, v266, v267, v268, v269);
      v307 = v263;
      v275 = objc_msgSend_wordLexicalEntries(isTextReplacement, v270, v271, v272, v273, v274);
      v281 = objc_msgSend_wordPatternEntries(isTextReplacement, v276, v277, v278, v279, v280);
      v287 = objc_msgSend_rareWordIndexes(isTextReplacement, v282, v283, v284, v285, v286);
      v293 = objc_msgSend_inappropriateWordIndexes(isTextReplacement, v288, v289, v290, v291, v292);
      LOBYTE(v301) = 0;
      v295 = objc_msgSend_initWithString_score_wordRanges_wordIDs_wordRecognitionScores_wordCombinedScores_wordStrokeSets_wordLexicalEntries_wordPatternEntries_rareWordIndexes_inappropriateWordIndexes_isTextReplacement_(v245, v294, v314, v200, v311, v307, v264, v309, v252, v275, v281, v287, v293, v301);

      objc_msgSend_addObject_(v303, v296, v295, v297, v298, v299);
      _Block_object_dispose(&v320, 8);

      _Block_object_dispose(&v326, 8);
      _Block_object_dispose(&v332, 8);

      self = v317;
    }

    else
    {
      objc_msgSend_addObject_(v303, v133, isTextReplacement, v135, v136, v137);
      v295 = isTextReplacement;
    }

    v26 = v312 + 1;
    v27 = 0x1E696A000uLL;
  }

  return v303;
}

- (void)enumerateTokensInTopTranscriptionPathWithBlock:(id)a3
{
  v17 = a3;
  v9 = objc_msgSend_firstObject(self->_transcriptionPaths, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_tokenColumnCount(self, v10, v11, v12, v13, v14);
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v16, v9, 0, v15, v17);
}

- (void)enumerateTokensInTranscriptionPath:(id)a3 columnRange:(_NSRange)a4 tokenProcessingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v143 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v135 = v9;
  if (objc_msgSend_compare_(v9, v11, qword_1ED6A08E0, v12, v13, v14))
  {
    v20 = location + length;
    if (location < v20)
    {
      v21 = 0;
      v133 = v20;
      v134 = self;
      do
      {
        v22 = objc_msgSend_tokenColumns(self, v15, v16, v17, v18, v19, v133, v134);
        v136 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, location, v24, v25, v26);

        if (location >= objc_msgSend_length(v135, v27, v28, v29, v30, v31))
        {
          if (location >= objc_msgSend_length(v135, v32, v33, v34, v35, v36))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v76 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v82 = objc_msgSend_length(v135, v77, v78, v79, v80, v81);
              *buf = 134218240;
              *&buf[4] = location;
              *&buf[12] = 2048;
              *&buf[14] = v82;
              _os_log_impl(&dword_18366B000, v76, OS_LOG_TYPE_ERROR, "Trying to access index %ld outside of path of length %ld. Skipping.", buf, 0x16u);
            }
          }

          if (location < objc_msgSend_length(v135, v71, v72, v73, v74, v75))
          {
            goto LABEL_37;
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v61 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
          {
            v88 = objc_msgSend_length(v135, v83, v84, v85, v86, v87);
            *buf = 134218240;
            *&buf[4] = location;
            *&buf[12] = 2048;
            *&buf[14] = v88;
            _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_FAULT, "Trying to access index %ld outside of path of length %ld. Skipping.", buf, 0x16u);
          }
        }

        else
        {
          v37 = objc_msgSend_indexAtPosition_(v135, v32, location, v34, v35, v36);
          v43 = objc_msgSend_textTokenRows(v136, v38, v39, v40, v41, v42);
          v49 = v37 < objc_msgSend_count(v43, v44, v45, v46, v47, v48);

          if (v49)
          {
            v55 = objc_msgSend_textTokenRows(v136, v50, v51, v52, v53, v54);
            v60 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, v37, v57, v58, v59);

            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v61 = v60;
            v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v137, v142, 16, v63);
            if (v64)
            {
              v65 = 0;
              v66 = *v138;
              do
              {
                for (i = 0; i != v64; ++i)
                {
                  if (*v138 != v66)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v68 = *(*(&v137 + 1) + 8 * i);
                  *buf = location;
                  *&buf[8] = v37;
                  *&buf[16] = v65;
                  v10[2](v10, v68, v21, buf);
                  ++v65;
                  ++v21;
                }

                v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v69, &v137, v142, 16, v70);
              }

              while (v64);
            }

            v20 = v133;
            self = v134;
          }

          else
          {
            v89 = objc_msgSend_textTokenRows(v136, v50, v51, v52, v53, v54);
            v95 = v37 < objc_msgSend_count(v89, v90, v91, v92, v93, v94);

            if (!v95)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v101 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
              {
                v107 = objc_msgSend_textTokenRows(v136, v102, v103, v104, v105, v106);
                v113 = objc_msgSend_count(v107, v108, v109, v110, v111, v112);
                *buf = 134218240;
                *&buf[4] = v37;
                *&buf[12] = 2048;
                *&buf[14] = v113;
                _os_log_impl(&dword_18366B000, v101, OS_LOG_TYPE_ERROR, "Trying to access index %ld outside of available tokenRows of length %ld. Skipping.", buf, 0x16u);
              }
            }

            v114 = objc_msgSend_textTokenRows(v136, v96, v97, v98, v99, v100);
            v120 = v37 < objc_msgSend_count(v114, v115, v116, v117, v118, v119);

            if (v120)
            {
              goto LABEL_37;
            }

            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v61 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
            {
              v126 = objc_msgSend_textTokenRows(v136, v121, v122, v123, v124, v125);
              v132 = objc_msgSend_count(v126, v127, v128, v129, v130, v131);
              *buf = 134218240;
              *&buf[4] = v37;
              *&buf[12] = 2048;
              *&buf[14] = v132;
              _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_FAULT, "Trying to access index %ld outside of available tokenRows of length %ld. Skipping.", buf, 0x16u);
            }
          }
        }

LABEL_37:
        ++location;
      }

      while (location != v20);
    }
  }

  else
  {
    sub_1837F1DB8(self, location, length, v10);
  }
}

- (void)enumerateOriginalTokensWithBlock:(id)a3
{
  v4 = a3;
  originalTokens = self->_originalTokens;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1837FC4FC;
  v11[3] = &unk_1E6DDEA50;
  v12 = v4;
  v6 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(originalTokens, v7, v11, v8, v9, v10);
}

- (BOOL)isEqualToTokenizedTextResult:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self == v4)
  {
    isEqualToArray = 1;
    goto LABEL_14;
  }

  transcriptionPaths = self->_transcriptionPaths;
  v12 = objc_msgSend_transcriptionPaths(v4, v5, v6, v7, v8, v9);
  v18 = v12;
  if (transcriptionPaths != v12)
  {
    v19 = self->_transcriptionPaths;
    v20 = objc_msgSend_transcriptionPaths(v10, v13, v14, v15, v16, v17);
    LODWORD(v19) = objc_msgSend_isEqualToArray_(v19, v21, v20, v22, v23, v24);

    if (!v19)
    {
      goto LABEL_11;
    }

    transcriptionPathScores = self->_transcriptionPathScores;
    v30 = v10->_transcriptionPathScores;
    if (transcriptionPathScores == v30)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (objc_msgSend_isEqualToArray_(transcriptionPathScores, v25, v30, v26, v27, v28))
    {
      goto LABEL_9;
    }

LABEL_11:
    isEqualToArray = 0;
    goto LABEL_14;
  }

  transcriptionPathScores = self->_transcriptionPathScores;
  v30 = v10->_transcriptionPathScores;
  if (transcriptionPathScores != v30)
  {
    goto LABEL_8;
  }

LABEL_9:
  tokenColumns = self->_tokenColumns;
  v38 = objc_msgSend_tokenColumns(v10, v25, v30, v26, v27, v28);
  if (tokenColumns == v38)
  {
    isEqualToArray = 1;
  }

  else
  {
    v39 = self->_tokenColumns;
    v40 = objc_msgSend_tokenColumns(v10, v33, v34, v35, v36, v37);
    isEqualToArray = objc_msgSend_isEqualToArray_(v39, v41, v40, v42, v43, v44);
  }

LABEL_14:
  return isEqualToArray;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTokenizedTextResult = objc_msgSend_isEqualToTokenizedTextResult_(self, v5, v4, v6, v7, v8);

    return isEqualToTokenizedTextResult;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v7 = objc_msgSend_hash(self->_tokenColumns, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_hash(self->_transcriptionPaths, v8, v9, v10, v11, v12);
  return v13 ^ v7 ^ objc_msgSend_hash(self->_transcriptionPathScores, v14, v15, v16, v17, v18);
}

+ (id)loadFromFile:(id)a3
{
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, a3, v3, v4, v5);
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0, v10);

  return v11;
}

+ (CHTokenizedTextResult)tokenizedTextResultWithString:(id)a3 strokeIndexes:(id)a4 bounds:(CGRect)a5 trailingSeparator:(id)a6 recognizerGenerationIdentifier:(int64_t)a7 defaultTokenScores:(double)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = objc_opt_class();
  v20 = *MEMORY[0x1E695F050];
  v21 = *(MEMORY[0x1E695F050] + 8);
  v22 = *(MEMORY[0x1E695F050] + 24);
  v26[0] = *MEMORY[0x1E695EFF8];
  v26[1] = v26[0];
  v26[2] = v26[0];
  v26[3] = v26[0];
  v26[4] = v26[0];
  v26[5] = v26[0];
  v26[6] = v26[0];
  v26[7] = v26[0];
  v24 = objc_msgSend_tokenizedTextResultWithString_strokeIndexes_bounds_trailingSeparator_recognizerGenerationIdentifier_defaultTokenScores_originalBounds_principalLines_principalPoints_(v19, v23, v16, v17, v18, a7, v26, MEMORY[0x1E695E0F0], x, y, width, height, a8, v20, v21, v22);

  return v24;
}

+ (CHTokenizedTextResult)tokenizedTextResultWithString:(id)a3 strokeIndexes:(id)a4 bounds:(CGRect)a5 trailingSeparator:(id)a6 recognizerGenerationIdentifier:(int64_t)a7 defaultTokenScores:(double)a8 originalBounds:(CGRect)a9 principalLines:(id *)a10 principalPoints:(id)a11
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v90[1] = *MEMORY[0x1E69E9840];
  v86 = a3;
  v20 = a4;
  v85 = a6;
  v87 = a11;
  v21 = [CHTokenizedTextResultToken alloc];
  v26 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v22, &stru_1EF1C0318, v23, v24, v25);
  v32 = objc_msgSend_count(v20, v27, v28, v29, v30, v31);
  var1 = a10->var2.var1;
  v88[4] = a10->var2.var0;
  v88[5] = var1;
  v34 = a10->var3.var1;
  v88[6] = a10->var3.var0;
  v88[7] = v34;
  v35 = a10->var0.var1;
  v88[0] = a10->var0.var0;
  v88[1] = v35;
  v36 = a10->var1.var1;
  v88[2] = a10->var1.var0;
  v88[3] = v36;
  v38 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v21, v37, v86, v20, 0, 4, v26, 4, a8, a8, a8, a8, x, y, width, height, v32, *&a9.origin.x, *&a9.origin.y, *&a9.size.width, *&a9.size.height, v88, v87);

  v39 = MEMORY[0x1E695DEC8];
  v44 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v40, v38, v41, v42, v43, 0);
  v49 = objc_msgSend_arrayWithObjects_(v39, v45, v44, v46, v47, v48, 0);

  v50 = [CHTokenizedResultColumn alloc];
  v55 = objc_msgSend_initWithTokenRows_(v50, v51, v49, v52, v53, v54);
  v60 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v56, v55, v57, v58, v59, 0);
  v65 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v61, 0, v62, v63, v64);
  v90[0] = v65;
  v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v66, v90, 1, v67, v68);

  v75 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v70, v71, v72, v73, v74, a8);
  v89 = v75;
  v79 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v76, &v89, 1, v77, v78);

  v80 = [CHTokenizedTextResult alloc];
  v82 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v80, v81, v60, v69, v79, v85, a7, 0);

  return v82;
}

+ (CHTokenizedTextResult)tokenizedTextResultWithToken:(id)a3 trailingSeparator:(id)a4 recognizerGenerationIdentifier:(int64_t)a5
{
  v61[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E695DEC8];
  v14 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v10, v7, v11, v12, v13, 0);
  v19 = objc_msgSend_arrayWithObjects_(v9, v15, v14, v16, v17, v18, 0);

  v20 = [CHTokenizedResultColumn alloc];
  v25 = objc_msgSend_initWithTokenRows_(v20, v21, v19, v22, v23, v24);
  v30 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v26, v25, v27, v28, v29, 0);
  v35 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v31, 0, v32, v33, v34);
  v61[0] = v35;
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v36, v61, 1, v37, v38);

  v40 = MEMORY[0x1E696AD98];
  objc_msgSend_recognitionScore(v7, v41, v42, v43, v44, v45);
  v51 = objc_msgSend_numberWithDouble_(v40, v46, v47, v48, v49, v50);
  v60 = v51;
  v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v52, &v60, 1, v53, v54);

  v56 = [CHTokenizedTextResult alloc];
  v58 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v56, v57, v30, v39, v55, v8, a5, 0);

  return v58;
}

+ (BOOL)areTokenRowsEquivalent:(id)a3 otherRow:(id)a4
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v96 = a4;
  v98 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7, v8, v9, v10, v5);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v5;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v103, v108, 16, v12);
  if (v18)
  {
    v19 = *v104;
    v20 = &stru_1EF1C0318;
    do
    {
      v21 = 0;
      v22 = v20;
      do
      {
        if (*v104 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v103 + 1) + 8 * v21);
        if ((objc_msgSend_properties(v23, v13, v14, v15, v16, v17) & 0x20) != 0)
        {
          v29 = objc_msgSend_stringByAppendingString_(v22, v24, @" ", v26, v27, v28);

          v22 = v29;
        }

        v30 = objc_msgSend_string(v23, v24, v25, v26, v27, v28);
        v20 = objc_msgSend_stringByAppendingString_(v22, v31, v30, v32, v33, v34);

        v40 = objc_msgSend_strokeIndexes(v23, v35, v36, v37, v38, v39);
        objc_msgSend_addIndexes_(v98, v41, v40, v42, v43, v44);

        ++v21;
        v22 = v20;
      }

      while (v18 != v21);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v103, v108, 16, v17);
    }

    while (v18);
  }

  else
  {
    v20 = &stru_1EF1C0318;
  }

  v50 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v45, v46, v47, v48, v49);
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v51 = v96;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v99, v107, 16, v53);
  if (v59)
  {
    v60 = *v100;
    v61 = &stru_1EF1C0318;
    do
    {
      v62 = 0;
      v63 = v61;
      do
      {
        if (*v100 != v60)
        {
          objc_enumerationMutation(v51);
        }

        v64 = *(*(&v99 + 1) + 8 * v62);
        if ((objc_msgSend_properties(v64, v54, v55, v56, v57, v58) & 0x20) != 0)
        {
          v70 = objc_msgSend_stringByAppendingString_(v63, v65, @" ", v67, v68, v69);

          v63 = v70;
        }

        v71 = objc_msgSend_string(v64, v65, v66, v67, v68, v69);
        v61 = objc_msgSend_stringByAppendingString_(v63, v72, v71, v73, v74, v75);

        v81 = objc_msgSend_strokeIndexes(v64, v76, v77, v78, v79, v80);
        objc_msgSend_addIndexes_(v50, v82, v81, v83, v84, v85);

        ++v62;
        v63 = v61;
      }

      while (v59 != v62);
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v54, &v99, v107, 16, v58);
    }

    while (v59);
  }

  else
  {
    v61 = &stru_1EF1C0318;
  }

  if (objc_msgSend_isEqualToString_(v20, v86, v61, v87, v88, v89))
  {
    isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v98, v90, v50, v91, v92, v93);
  }

  else
  {
    isEqualToIndexSet = 0;
  }

  return isEqualToIndexSet;
}

+ (int64_t)mergeTokenRow:(id)a3 intoUniqueRows:(id)a4
{
  v308 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v292 = a4;
  obj = v5;
  if (objc_msgSend_count(v5, v6, v7, v8, v9, v10))
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(v5, v11, 0, v13, v14, v15);
    isTopOriginal = objc_msgSend_isTopOriginal(v16, v17, v18, v19, v20, v21);

    v27 = 1;
    while (v27 < objc_msgSend_count(obj, v22, v23, v24, v25, v26))
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(obj, v11, v27, v13, v14, v15);
      v34 = objc_msgSend_isTopOriginal(v28, v29, v30, v31, v32, v33);
      v35 = isTopOriginal & 1;
      isTopOriginal &= v34;

      ++v27;
      if (v35 != v34)
      {
        v298 = objc_msgSend_array(MEMORY[0x1E695DF70], v22, v23, v24, v25, v26);
        v305 = 0u;
        v306 = 0u;
        v303 = 0u;
        v304 = 0u;
        obja = obj;
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v36, &v303, v307, 16, v37);
        if (v38)
        {
          v297 = *v304;
          do
          {
            v299 = v38;
            for (i = 0; i != v299; ++i)
            {
              if (*v304 != v297)
              {
                objc_enumerationMutation(obja);
              }

              v45 = *(*(&v303 + 1) + 8 * i);
              if (objc_msgSend_isTopOriginal(v45, v39, v40, v41, v42, v43))
              {
                v51 = objc_msgSend_string(v45, v46, v47, v48, v49, v50);
                v57 = objc_msgSend_strokeIndexes(v45, v52, v53, v54, v55, v56);
                v63 = objc_msgSend_wordID(v45, v58, v59, v60, v61, v62);
                objc_msgSend_modelScore(v45, v64, v65, v66, v67, v68);
                v70 = v69;
                objc_msgSend_recognitionScore(v45, v71, v72, v73, v74, v75);
                v77 = v76;
                objc_msgSend_combinedScore(v45, v78, v79, v80, v81, v82);
                v84 = v83;
                objc_msgSend_alignmentScore(v45, v85, v86, v87, v88, v89);
                v91 = v90;
                v97 = objc_msgSend_properties(v45, v92, v93, v94, v95, v96);
                v103 = objc_msgSend_recognizerSourceLocale(v45, v98, v99, v100, v101, v102);
                v293 = v91;
                v294 = v84;
                v295 = v77;
                v296 = v70;
                v109 = objc_msgSend_inputSources(v45, v104, v105, v106, v107, v108);
                v115 = objc_msgSend_substrokeCount(v45, v110, v111, v112, v113, v114);
                objc_msgSend_bounds(v45, v116, v117, v118, v119, v120);
                v122 = v121;
                v124 = v123;
                v126 = v125;
                v128 = v127;
                objc_msgSend_originalBounds(v45, v129, v130, v131, v132, v133);
                v140 = v139;
                v142 = v141;
                v144 = v143;
                v146 = v145;
                if (v45)
                {
                  objc_msgSend_principalLines(v45, v134, v135, v136, v137, v138);
                }

                else
                {
                  memset(v302, 0, sizeof(v302));
                }

                v147 = objc_msgSend_principalPoints(v45, v134, v135, v136, v137, v138);
                v149 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v148, v51, v57, v63, v97, v103, v109, v296, v295, v294, v293, v122, v124, v126, v128, v115, v140, v142, v144, v146, v302, v147);

                objc_msgSend_addObject_(v298, v150, v149, v151, v152, v153);
              }

              else
              {
                objc_msgSend_addObject_(v298, v46, v45, v48, v49, v50);
              }
            }

            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v39, &v303, v307, 16, v43);
          }

          while (v38);
        }

        obj = v298;
        break;
      }
    }
  }

  else
  {
    isTopOriginal = 1;
  }

  for (j = 0; ; ++j)
  {
    if (j >= objc_msgSend_count(v292, v11, v12, v13, v14, v15))
    {
      goto LABEL_51;
    }

    v159 = objc_msgSend_objectAtIndexedSubscript_(v292, v155, j, v156, v157, v158);
    if (!objc_msgSend_areTokenRowsEquivalent_otherRow_(CHTokenizedTextResult, v160, obj, v159, v161, v162))
    {
      goto LABEL_22;
    }

    v168 = objc_msgSend_count(v159, v163, v164, v165, v166, v167);
    if (v168 == objc_msgSend_count(obj, v169, v170, v171, v172, v173))
    {
      break;
    }

    if ((isTopOriginal & 1) == 0)
    {
      if (j != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_50;
      }

LABEL_22:

      continue;
    }

    v184 = sub_1837FD338(CHTokenizedTextResult, v159);
    objc_msgSend_setObject_atIndexedSubscript_(v292, v277, v184, j, v278, v279);
LABEL_43:

LABEL_45:
    if (((j != 0x7FFFFFFFFFFFFFFFLL) & isTopOriginal) == 1)
    {
      v280 = objc_msgSend_objectAtIndexedSubscript_(v292, v186, j, v187, v188, v189);
      v281 = sub_1837FD338(CHTokenizedTextResult, v280);
      objc_msgSend_setObject_atIndexedSubscript_(v292, v282, v281, j, v283, v284);

      goto LABEL_52;
    }

    if (j != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_52;
    }
  }

  v184 = objc_msgSend_array(MEMORY[0x1E695DF70], v174, v175, v176, v177, v178);
  for (k = 0; k < objc_msgSend_count(obj, v179, v180, v181, v182, v183); ++k)
  {
    v190 = objc_msgSend_objectAtIndexedSubscript_(obj, v186, k, v187, v188, v189);
    v195 = objc_msgSend_objectAtIndexedSubscript_(v159, v191, k, v192, v193, v194);
    isEquivalentToToken = objc_msgSend_isEquivalentToToken_(v190, v196, v195, v197, v198, v199);

    if (!isEquivalentToToken)
    {
      goto LABEL_43;
    }

    v205 = objc_msgSend_objectAtIndexedSubscript_(obj, v201, k, v202, v203, v204);
    v211 = objc_msgSend_isTopOriginal(v205, v206, v207, v208, v209, v210);

    v216 = objc_msgSend_objectAtIndexedSubscript_(obj, v212, k, v213, v214, v215);
    hasValidPrincipalLines = objc_msgSend_hasValidPrincipalLines(v216, v217, v218, v219, v220, v221);

    v227 = objc_msgSend_objectAtIndexedSubscript_(v159, v223, k, v224, v225, v226);
    LODWORD(v216) = objc_msgSend_isTopOriginal(v227, v228, v229, v230, v231, v232);

    v237 = objc_msgSend_objectAtIndexedSubscript_(v159, v233, k, v234, v235, v236);
    v243 = objc_msgSend_hasValidPrincipalLines(v237, v238, v239, v240, v241, v242);

    if (v211 != v216)
    {
      if (v211)
      {
        goto LABEL_32;
      }

LABEL_38:
      objc_msgSend_objectAtIndexedSubscript_(v159, v244, k, v245, v246, v247);
      goto LABEL_33;
    }

    v253 = objc_msgSend_objectAtIndexedSubscript_(obj, v244, k, v245, v246, v247);
    objc_msgSend_combinedScore(v253, v254, v255, v256, v257, v258);
    v260 = v259;
    v265 = objc_msgSend_objectAtIndexedSubscript_(v159, v261, k, v262, v263, v264);
    objc_msgSend_combinedScore(v265, v266, v267, v268, v269, v270);
    v272 = v260 > v271;

    if (!v272)
    {
      if (v243 & 1 | ((hasValidPrincipalLines & 1) == 0))
      {
        goto LABEL_38;
      }

LABEL_32:
      objc_msgSend_objectAtIndexedSubscript_(obj, v244, k, v245, v246, v247);
      v248 = LABEL_33:;
      objc_msgSend_addObject_(v184, v249, v248, v250, v251, v252);
      goto LABEL_40;
    }

    v248 = objc_msgSend_objectAtIndexedSubscript_(obj, v244, k, v245, v246, v247);
    objc_msgSend_addObject_(v184, v273, v248, v274, v275, v276);
LABEL_40:
  }

  if (!v184)
  {
    goto LABEL_45;
  }

  objc_msgSend_setObject_atIndexedSubscript_(v292, v186, v184, j, v188, v189);

LABEL_50:
  if (j == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_51:
    objc_msgSend_addObject_(v292, v155, obj, v156, v157, v158);
    j = objc_msgSend_count(v292, v285, v286, v287, v288, v289) - 1;
  }

LABEL_52:

  return j;
}

+ (id)extendedToken:(id)a3 withStrokeIndexSet:(id)a4 alignmentScore:(double)a5 bounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a3;
  v13 = a4;
  v14 = objc_alloc(MEMORY[0x1E696AD50]);
  v20 = objc_msgSend_strokeIndexes(v12, v15, v16, v17, v18, v19);
  v25 = objc_msgSend_initWithIndexSet_(v14, v21, v20, v22, v23, v24);

  objc_msgSend_addIndexes_(v25, v26, v13, v27, v28, v29);
  v30 = [CHTokenizedTextResultToken alloc];
  v36 = objc_msgSend_string(v12, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_wordID(v12, v37, v38, v39, v40, v41);
  objc_msgSend_modelScore(v12, v43, v44, v45, v46, v47);
  v49 = v48;
  objc_msgSend_recognitionScore(v12, v50, v51, v52, v53, v54);
  v56 = v55;
  objc_msgSend_combinedScore(v12, v57, v58, v59, v60, v61);
  v63 = v62;
  v69 = objc_msgSend_properties(v12, v64, v65, v66, v67, v68);
  v75 = objc_msgSend_recognizerSourceLocale(v12, v70, v71, v72, v73, v74);
  v81 = objc_msgSend_inputSources(v12, v76, v77, v78, v79, v80);
  v87 = objc_msgSend_count(v25, v82, v83, v84, v85, v86);
  v89 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v30, v88, v36, v25, v42, v69, v75, v81, v49, v56, v63, a5, x, y, width, height, v87);

  return v89;
}

- (id)phraseCaseCorrectedResultWithHistory:(id)a3 phraseLexicon:(_LXLexicon *)a4 maxPhraseLength:(int64_t)a5
{
  v387 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (objc_msgSend_tokenColumnCount(self, v9, v10, v11, v12, v13) && self->_transcriptionPaths)
  {
    if (!v8)
    {
      v8 = &stru_1EF1C0318;
    }

    v19 = objc_msgSend_precedingSeparatorForTopTranscriptionPath(self, v14, v15, v16, v17, v18);
    v339 = objc_msgSend_stringByAppendingString_(v8, v20, v19, v21, v22, v23);

    v29 = objc_msgSend_topTranscription(self, v24, v25, v26, v27, v28);
    v338 = objc_msgSend_stringByAppendingString_(v339, v30, v29, v31, v32, v33);

    v39 = objc_msgSend_length(v8, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_length(v8, v40, v41, v42, v43, v44);
    v51 = objc_msgSend_length(v338, v46, v47, v48, v49, v50);
    v57 = objc_msgSend_length(v8, v52, v53, v54, v55, v56);
    v385 = 0x7FFFFFFFFFFFFFFFLL;
    v63 = objc_msgSend_firstObject(self->_transcriptionPaths, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_tokenColumnCount(self, v64, v65, v66, v67, v68);
    v332 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(self, v70, v63, 0, v69 - 1, 0);

    v76 = objc_msgSend_length(v339, v71, v72, v73, v74, v75);
    v82 = objc_msgSend_length(v332, v77, v78, v79, v80, v81);
    if (a4)
    {
      v88 = sub_1837A8900(v338, a4, 0, v39, v45, v51 - v57, a5, v82 + v76, &v385);
    }

    else
    {
      v88 = 0;
    }

    v334 = v88;
    v90 = objc_msgSend_count(v88, v83, v84, v85, v86, v87);
    v91 = v90;
    v329 = v90 != 0;
    if (v385 != 0x7FFFFFFFFFFFFFFFLL || v90)
    {
      v331 = [CHTokenizedTextResult rawTranscriptionPath]_0(self);
      v97 = objc_msgSend_transcriptionPaths(self, v92, v93, v94, v95, v96);
      v327 = objc_msgSend_indexOfObjectIdenticalTo_(v97, v98, v331, v99, v100, v101);

      v376 = 0;
      v377 = &v376;
      v378 = 0x4812000000;
      v379 = sub_1837FEF5C;
      v380 = sub_1837FEF80;
      v381 = &unk_183A5AC72;
      v107 = objc_msgSend_length(v331, v102, v103, v104, v105, v106);
      __p = 0;
      v383 = 0;
      v384 = 0;
      if (v107)
      {
        if (!(v107 >> 61))
        {
          operator new();
        }

        sub_1836D58DC();
      }

      objc_msgSend_getIndexes_(v331, v108, v377[6], v109, v110, v111);
      v372 = 0;
      v373 = &v372;
      v374 = 0x2020000000;
      v375 = 0;
      v368 = 0;
      v369 = &v368;
      v370 = 0x2020000000;
      v371 = -1;
      v362 = 0;
      v363 = &v362;
      v364 = 0x3032000000;
      v365 = sub_1837FA378;
      v366 = sub_1837FA388;
      v367 = 0;
      v358 = 0;
      v359 = &v358;
      v360 = 0x2020000000;
      v361 = 0x7FFFFFFFFFFFFFFFLL;
      if (v91)
      {
        v117 = objc_msgSend_mutableCopy(self->_transcriptionPaths, v112, v113, v114, v115, v116);
        v337 = objc_msgSend_mutableCopy(self->_transcriptionPathScores, v118, v119, v120, v121, v122);
        v123 = MEMORY[0x1E695DF70];
        v129 = objc_msgSend_count(self->_tokenColumns, v124, v125, v126, v127, v128);
        objc_msgSend_arrayWithCapacity_(v123, v130, v129, v131, v132, v133);
        v333 = v117;
        v140 = v134 = 0;
        while (v134 < objc_msgSend_count(self->_tokenColumns, v135, v136, v137, v138, v139))
        {
          v146 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v141, v134, v143, v144, v145);
          v152 = objc_msgSend_mutableCopy(v146, v147, v148, v149, v150, v151);
          objc_msgSend_addObject_(v140, v153, v152, v154, v155, v156);

          ++v134;
        }

        v157 = objc_msgSend_allKeys(v334, v141, v142, v143, v144, v145);
        v335 = objc_msgSend_sortedArrayUsingSelector_(v157, v158, sel_compare_, v159, v160, v161);

        v166 = objc_msgSend_objectAtIndexedSubscript_(v335, v162, v373[3], v163, v164, v165);
        v172 = objc_msgSend_integerValue(v166, v167, v168, v169, v170, v171);
        v369[3] = v172;

        v177 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v173, v369[3], v174, v175, v176);
        v182 = objc_msgSend_objectForKey_(v334, v178, v177, v179, v180, v181);
        v183 = v363[5];
        v363[5] = v182;

        if (objc_msgSend_hasPrefix_(v363[5], v184, @" ", v185, v186, v187))
        {
          v192 = objc_msgSend_substringFromIndex_(v363[5], v188, 1, v189, v190, v191);
          v193 = v363[5];
          v363[5] = v192;

          ++v369[3];
        }

        v194 = v335;
      }

      else
      {
        v333 = 0;
        v337 = 0;
        v140 = 0;
        v194 = 0;
      }

      v357[0] = 0;
      v357[1] = v357;
      v357[2] = 0x2020000000;
      v357[3] = 0;
      v344[0] = MEMORY[0x1E69E9820];
      v344[1] = 3221225472;
      v344[2] = sub_1837FEF98;
      v344[3] = &unk_1E6DDEA78;
      v349 = v357;
      v195 = v8;
      v355 = v385;
      v345 = v195;
      v350 = &v358;
      v351 = &v368;
      v356 = v329;
      v352 = &v362;
      v196 = v140;
      v346 = v196;
      v353 = &v376;
      v354 = &v372;
      v336 = v194;
      v347 = v336;
      v348 = v334;
      objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(self, v197, v344, v198, v199, v200);
      if (v91)
      {
        v209 = objc_msgSend_indexPathWithIndexes_length_(MEMORY[0x1E696AC88], v201, v377[6], (v377[7] - v377[6]) >> 3, v204, v205);
        if (v327 && v327 != 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_setObject_atIndexedSubscript_(v333, v206, v209, v327, v207, v208);
        }

        else
        {
          if (v327 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v210 = 1;
            objc_msgSend_insertObject_atIndex_(v333, v206, v209, 1, v207, v208);
          }

          else
          {
            v210 = v327 + 1;
            objc_msgSend_insertObject_atIndex_(v333, v206, v209, v327 + 1, v207, v208);
          }

          v216 = objc_msgSend_transcriptionPathScores(self, v211, v212, v213, v214, v215);
          v222 = objc_msgSend_firstObject(v216, v217, v218, v219, v220, v221);
          objc_msgSend_insertObject_atIndex_(v337, v223, v222, v210, v224, v225);
        }

        v330 = v196;
        v326 = v333;
        v328 = v337;
      }

      else
      {
        v226 = objc_msgSend_tokenColumns(self, v201, v202, v203, v204, v205);
        v232 = objc_msgSend_transcriptionPaths(self, v227, v228, v229, v230, v231);
        v328 = objc_msgSend_transcriptionPathScores(self, v233, v234, v235, v236, v237);
        v326 = v232;
        v330 = v226;
      }

      if (v359[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v243 = 1;
      }

      else
      {
        v244 = objc_msgSend_count(v330, v238, v239, v240, v241, v242);
        v243 = v244 - v359[3];
      }

      if (v243 <= self->_changeableCount)
      {
        changeableCount = self->_changeableCount;
      }

      else
      {
        changeableCount = v243;
      }

      v246 = [CHTokenizedTextResult alloc];
      v252 = objc_msgSend_trailingSeparator(self, v247, v248, v249, v250, v251);
      v258 = objc_msgSend_recognizerGenerationIdentifier(self, v253, v254, v255, v256, v257);
      v264 = objc_msgSend_originalTokens(self, v259, v260, v261, v262, v263);
      v89 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_originalTokens_(v246, v265, v330, v326, v328, v252, v258, changeableCount, v264);

      if (v91)
      {
        v271 = objc_msgSend_array(MEMORY[0x1E695DF70], v266, v267, v268, v269, v270);
        v342 = 0u;
        v343 = 0u;
        v340 = 0u;
        v341 = 0u;
        v277 = objc_msgSend_transcriptionPaths(v89, v272, v273, v274, v275, v276);
        v284 = objc_msgSend_countByEnumeratingWithState_objects_count_(v277, v278, &v340, v386, 16, v279);
        if (v284)
        {
          v285 = *v341;
          do
          {
            for (i = 0; i != v284; ++i)
            {
              if (*v341 != v285)
              {
                objc_enumerationMutation(v277);
              }

              v287 = objc_msgSend_tokensFromTranscriptionPath_(v89, v280, *(*(&v340 + 1) + 8 * i), v281, v282, v283);
              objc_msgSend_addObject_(v271, v288, v287, v289, v290, v291);
            }

            v284 = objc_msgSend_countByEnumeratingWithState_objects_count_(v277, v280, &v340, v386, 16, v283);
          }

          while (v284);
        }

        v292 = [CHMutableTokenizedTextResult alloc];
        v298 = objc_msgSend_transcriptionPathScores(v89, v293, v294, v295, v296, v297);
        v304 = objc_msgSend_trailingSeparator(v89, v299, v300, v301, v302, v303);
        v310 = objc_msgSend_recognizerGenerationIdentifier(v89, v305, v306, v307, v308, v309);
        v316 = objc_msgSend_changeableTokenColumnCount(v89, v311, v312, v313, v314, v315);
        v322 = objc_msgSend_originalTokens(self, v317, v318, v319, v320, v321);
        v324 = objc_msgSend_initWithBestPathTokens_pathProbabilities_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_originalTokens_(v292, v323, v271, v298, v304, v310, v316, v322);

        v89 = v324;
      }

      _Block_object_dispose(v357, 8);
      _Block_object_dispose(&v358, 8);
      _Block_object_dispose(&v362, 8);

      _Block_object_dispose(&v368, 8);
      _Block_object_dispose(&v372, 8);

      _Block_object_dispose(&v376, 8);
      if (__p)
      {
        v383 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v89 = self;
    }
  }

  else
  {
    v89 = self;
  }

  return v89;
}

- (id)changeableColumnCountUpdatedResultWithHistory:(id)a3 phraseLexicon:(_LXLexicon *)a4 maxPhraseLength:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  if (objc_msgSend_tokenColumnCount(v9, v10, v11, v12, v13, v14) && a4 && a5 && v9->_transcriptionPaths)
  {
    if (!v8)
    {
      v8 = &stru_1EF1C0318;
    }

    v20 = objc_msgSend_precedingSeparatorForTopTranscriptionPath(v9, v15, v16, v17, v18, v19);
    v25 = objc_msgSend_stringByAppendingString_(v8, v21, v20, v22, v23, v24);

    v124 = v25;
    v31 = objc_msgSend_topTranscription(v9, v26, v27, v28, v29, v30);
    v125 = objc_msgSend_stringByAppendingString_(v25, v32, v31, v33, v34, v35);

    v41 = objc_msgSend_length(v8, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_length(v8, v42, v43, v44, v45, v46);
    v53 = objc_msgSend_length(v125, v48, v49, v50, v51, v52);
    v59 = objc_msgSend_length(v8, v54, v55, v56, v57, v58);
    v136 = 0x7FFFFFFFFFFFFFFFLL;
    v65 = objc_msgSend_firstObject(v9->_transcriptionPaths, v60, v61, v62, v63, v64);
    v71 = objc_msgSend_tokenColumnCount(v9, v66, v67, v68, v69, v70);
    v73 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v9, v72, v65, 0, v71 - 1, 0);

    v79 = objc_msgSend_length(v124, v74, v75, v76, v77, v78);
    v85 = objc_msgSend_length(v73, v80, v81, v82, v83, v84);
    v86 = sub_1837A8900(v125, a4, 0, v41, v47, v53 - v59, a5, v85 + v79, &v136);
    if (v136 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v132 = 0;
      v133 = &v132;
      v134 = 0x2020000000;
      v135 = 0x7FFFFFFFFFFFFFFFLL;
      v131[0] = 0;
      v131[1] = v131;
      v131[2] = 0x2020000000;
      v131[3] = 0;
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = sub_1837FFC34;
      v126[3] = &unk_1E6DDEAA0;
      v128 = v131;
      v129 = &v132;
      v130 = v136;
      v127 = v8;
      objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v9, v87, v126, v88, v89, v90);
      if (v133[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v96 = 1;
      }

      else
      {
        v98 = objc_msgSend_tokenColumnCount(v9, v91, v92, v93, v94, v95);
        v96 = v98 - v133[3];
      }

      if (objc_msgSend_changeableTokenColumnCount(v9, v91, v92, v93, v94, v95) > v96)
      {
        v96 = objc_msgSend_changeableTokenColumnCount(v9, v99, v100, v101, v102, v103);
      }

      if (v96 != objc_msgSend_changeableTokenColumnCount(v9, v99, v100, v101, v102, v103))
      {
        v109 = objc_msgSend_mutableCopy(v9, v104, v105, v106, v107, v108);
        objc_msgSend_setChangeableTokenColumnCount_(v109, v110, v96, v111, v112, v113);
        v114 = v109;

        objc_msgSend_setInputStrokeIdentifiers_(v114, v115, v9->_inputStrokeIdentifiers, v116, v117, v118);
        objc_msgSend_setLocale_(v114, v119, v9->_locale, v120, v121, v122);

        v9 = v114;
      }

      _Block_object_dispose(v131, 8);
      _Block_object_dispose(&v132, 8);
    }

    v97 = v9;
  }

  else
  {
    v97 = v9;
  }

  return v97;
}

+ (id)tokenizedTextResultFromResults:(id)a3 shouldPerformStrictFiltering:(BOOL)a4 doesTopLocaleRequireSpecialHandling:(BOOL)a5 hasSwap:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v361[4] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (objc_msgSend_count(v9, v10, v11, v12, v13, v14))
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(v9, v15, 0, v16, v17, v18);
    v25 = objc_msgSend_strokeIndexes(v19, v20, v21, v22, v23, v24);

    v357[0] = MEMORY[0x1E69E9820];
    v357[1] = 3221225472;
    v357[2] = sub_1838008B4;
    v357[3] = &unk_1E6DDEAC8;
    v338 = v25;
    v358 = v338;
    v30 = objc_msgSend_indexesOfObjectsPassingTest_(v9, v26, v357, v27, v28, v29);
    v339 = objc_msgSend_objectsAtIndexes_(v9, v31, v30, v32, v33, v34);

    if (objc_msgSend_count(v339, v35, v36, v37, v38, v39) == 1 || v8)
    {
      v342 = objc_msgSend_firstObject(v339, v40, v41, v42, v43, v44);
      v61 = objc_msgSend_copy(v342, v62, v63, v64, v65, v66);
    }

    else
    {
      v342 = objc_msgSend_array(MEMORY[0x1E695DF70], v40, v41, v42, v43, v44);
      v341 = objc_msgSend_array(MEMORY[0x1E695DF70], v45, v46, v47, v48, v49);
      if (v6)
      {
        v340 = 0;
        if (objc_msgSend_count(v339, v50, v51, v52, v53, v54) >= 2 && v7)
        {
          v55 = objc_msgSend_objectAtIndexedSubscript_(v339, v50, 1, v52, v53, v54);
          v340 = objc_msgSend_rawTranscription(v55, v56, v57, v58, v59, v60);
        }
      }

      else
      {
        v340 = 0;
      }

      v68 = 0;
      v343 = v7 && v6;
      v69 = 1.0;
      while (v68 < objc_msgSend_count(v339, v50, v51, v52, v53, v54))
      {
        v348 = objc_msgSend_objectAtIndexedSubscript_(v339, v70, v68, v71, v72, v73);
        v79 = objc_msgSend_transcriptionPaths(v348, v74, v75, v76, v77, v78);
        v85 = objc_msgSend_firstObject(v79, v80, v81, v82, v83, v84);
        v86 = sub_1837F97A8(v348, v85);

        if (objc_msgSend_count(v342, v87, v88, v89, v90, v91))
        {
          if (v86 < fmax(v69 * 0.8, 0.5))
          {

            break;
          }
        }

        else
        {
          v69 = v86;
        }

        v97 = objc_msgSend_transcriptionPaths(v348, v92, v93, v94, v95, v96);
        v345 = objc_msgSend_firstObject(v97, v98, v99, v100, v101, v102);

        for (i = 0; ; ++i)
        {
          v108 = objc_msgSend_transcriptionPaths(v348, v103, v104, v105, v106, v107);
          v114 = i < objc_msgSend_count(v108, v109, v110, v111, v112, v113);

          if (!v114)
          {
            break;
          }

          v120 = objc_msgSend_transcriptionPaths(v348, v115, v116, v117, v118, v119);
          v125 = objc_msgSend_objectAtIndexedSubscript_(v120, v121, i, v122, v123, v124);

          v347 = objc_msgSend_array(MEMORY[0x1E695DF70], v126, v127, v128, v129, v130);
          v136 = objc_msgSend_transcriptionPaths(v348, v131, v132, v133, v134, v135);
          v141 = objc_msgSend_objectAtIndexedSubscript_(v136, v137, i, v138, v139, v140);
          v147 = objc_msgSend_length(v141, v142, v143, v144, v145, v146);
          v344 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v348, v148, v125, 0, v147, 0);

          if (!v343)
          {
            goto LABEL_40;
          }

          isEqualToString = 0;
          if (!v68 && i == 1)
          {
            isEqualToString = objc_msgSend_isEqualToString_(v340, v149, v344, v151, v152, v153);
          }

          if (((v68 | i) == 0) | isEqualToString & 1)
          {
            goto LABEL_40;
          }

          v155 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v149, v150, v151, v152, v153);
          v361[0] = v155;
          v161 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v156, v157, v158, v159, v160);
          v361[1] = v161;
          v167 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v162, v163, v164, v165, v166);
          v361[2] = v167;
          v173 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v168, v169, v170, v171, v172);
          v361[3] = v173;
          v177 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v174, v361, 4, v175, v176);
          v182 = objc_msgSend_ch_hasCharactersFromSets_(v344, v178, v177, v179, v180, v181);

          v355 = 0u;
          v356 = 0u;
          v353 = 0u;
          v354 = 0u;
          v183 = v182;
          v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v184, &v353, v360, 16, v185);
          if (!v191)
          {

LABEL_40:
            v195 = 0;
            if (v68)
            {
              v196 = i == 0;
            }

            else
            {
              v196 = 1;
            }

            v197 = v196;
            while (2)
            {
              if (v195 >= objc_msgSend_length(v125, v149, v150, v151, v152, v153))
              {
                objc_msgSend_addObject_(v342, v198, v347, v199, v200, v201);
                v277 = objc_msgSend_transcriptionPathScores(v348, v272, v273, v274, v275, v276);
                v282 = objc_msgSend_objectAtIndexedSubscript_(v277, v278, i, v279, v280, v281);
                objc_msgSend_addObject_(v341, v283, v282, v284, v285, v286);

                goto LABEL_64;
              }

              v202 = objc_msgSend_indexAtPosition_(v125, v198, v195, v199, v200, v201);
              v208 = objc_msgSend_tokenColumns(v348, v203, v204, v205, v206, v207);
              v213 = objc_msgSend_objectAtIndexedSubscript_(v208, v209, v195, v210, v211, v212);
              v219 = objc_msgSend_textTokenRows(v213, v214, v215, v216, v217, v218);
              v224 = objc_msgSend_objectAtIndexedSubscript_(v219, v220, v202, v221, v222, v223);

              if (v197)
              {
                objc_msgSend_addObjectsFromArray_(v347, v225, v224, v226, v227, v228);
LABEL_62:

                ++v195;
                continue;
              }

              break;
            }

            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v229 = v224;
            v237 = objc_msgSend_countByEnumeratingWithState_objects_count_(v229, v230, &v349, v359, 16, v231);
            if (v237)
            {
              v238 = *v350;
              isTopOriginal = 1;
              do
              {
                for (j = 0; j != v237; ++j)
                {
                  while (1)
                  {
                    if (*v350 != v238)
                    {
                      objc_enumerationMutation(v229);
                    }

                    if (isTopOriginal)
                    {
                      break;
                    }

                    isTopOriginal = 0;
                    if (v237 == ++j)
                    {
                      goto LABEL_57;
                    }
                  }

                  isTopOriginal = objc_msgSend_isTopOriginal(*(*(&v349 + 1) + 8 * j), v232, v233, v234, v235, v236);
                }

LABEL_57:
                v237 = objc_msgSend_countByEnumeratingWithState_objects_count_(v229, v232, &v349, v359, 16, v236);
              }

              while (v237);

              if ((isTopOriginal & 1) == 0)
              {
                v246 = objc_msgSend_tokenColumns(v348, v241, v242, v243, v244, v245);
                v251 = objc_msgSend_objectAtIndexedSubscript_(v246, v247, v195, v248, v249, v250);
                v257 = objc_msgSend_textTokenRows(v251, v252, v253, v254, v255, v256);
                v262 = objc_msgSend_indexAtPosition_(v345, v258, v195, v259, v260, v261);
                v267 = objc_msgSend_objectAtIndexedSubscript_(v257, v263, v262, v264, v265, v266);
                objc_msgSend_addObjectsFromArray_(v347, v268, v267, v269, v270, v271);

                goto LABEL_62;
              }
            }

            else
            {
            }

            objc_msgSend_addObjectsFromArray_(v347, v241, v229, v243, v244, v245);
            goto LABEL_62;
          }

          v192 = 0;
          v193 = *v354;
          do
          {
            for (k = 0; k != v191; ++k)
            {
              if (*v354 != v193)
              {
                objc_enumerationMutation(v183);
              }

              if (objc_msgSend_intValue(*(*(&v353 + 1) + 8 * k), v186, v187, v188, v189, v190) > 0)
              {
                ++v192;
              }
            }

            v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v186, &v353, v360, 16, v190);
          }

          while (v191);

          if (v192 < 2)
          {
            goto LABEL_40;
          }

LABEL_64:
        }

        ++v68;
      }

      v287 = [CHTokenizedTextResult alloc];
      v292 = objc_msgSend_objectAtIndexedSubscript_(v339, v288, 0, v289, v290, v291);
      v298 = objc_msgSend_trailingSeparator(v292, v293, v294, v295, v296, v297);
      v303 = objc_msgSend_objectAtIndexedSubscript_(v339, v299, 0, v300, v301, v302);
      v309 = objc_msgSend_recognizerGenerationIdentifier(v303, v304, v305, v306, v307, v308);
      v314 = objc_msgSend_objectAtIndexedSubscript_(v339, v310, 0, v311, v312, v313);
      v320 = objc_msgSend_changeableTokenColumnCount(v314, v315, v316, v317, v318, v319);
      v325 = objc_msgSend_objectAtIndexedSubscript_(v339, v321, 0, v322, v323, v324);
      v331 = objc_msgSend_originalTokens(v325, v326, v327, v328, v329, v330);
      v333 = objc_msgSend_initWithBestPathTokens_pathProbabilities_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_originalTokens_(v287, v332, v342, v341, v298, v309, v320, v331);

      v61 = objc_msgSend_resultRestoringRawPathInResult_(CHTokenizedTextResult, v334, v333, v335, v336, v337);
    }

    v9 = v339;
  }

  else
  {
    v61 = 0;
  }

  return v61;
}

+ (id)swappableColumnIndexesInResults:(id)a3 locales:(id)a4 topLocaleIndex:(int64_t)a5 swappableIndex:(int64_t)a6 shouldReverseSwappableColumns:(BOOL)a7
{
  v7 = a7;
  v733[1] = *MEMORY[0x1E69E9840];
  v708 = a3;
  v709 = a4;
  v712 = a5;
  v721 = objc_msgSend_objectAtIndexedSubscript_(v708, v11, a5, v12, v13, v14);
  v723 = objc_msgSend_objectAtIndexedSubscript_(v708, v15, a6, v16, v17, v18);
  v713 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  v29 = objc_msgSend_transcriptionPaths(v721, v24, v25, v26, v27, v28);
  if (objc_msgSend_count(v29, v30, v31, v32, v33, v34))
  {
    v40 = objc_msgSend_transcriptionPaths(v723, v35, v36, v37, v38, v39);
    v46 = objc_msgSend_count(v40, v41, v42, v43, v44, v45);

    if (v46)
    {
      v52 = objc_msgSend_objectAtIndexedSubscript_(v709, v47, v712, v49, v50, v51);
      isSupportedCyrillicScriptLocale_withMode = objc_msgSend_isSupportedCyrillicScriptLocale_withMode_(CHRecognizerConfiguration, v53, v52, 4, v54, v55);

      v60 = objc_msgSend_objectAtIndexedSubscript_(v709, v56, v712, v57, v58, v59);
      isSupportedLatinScriptLocale_withMode = objc_msgSend_isSupportedLatinScriptLocale_withMode_(CHRecognizerConfiguration, v61, v60, 4, v62, v63);

      if (qword_1EA84DBA0 != -1)
      {
        dispatch_once(&qword_1EA84DBA0, &unk_1EF1BE788);
      }

      v722 = objc_msgSend_commonTopStrokeSetsWithResult_shouldReverseOtherColumns_(v721, v64, v723, v7, v65, v66);
      v720 = objc_msgSend_tokenColumns(v723, v67, v68, v69, v70, v71);
      v707 = a6;
      if (v7)
      {
        v77 = objc_msgSend_tokenColumns(v723, v72, v73, v74, v75, v76);
        v83 = objc_msgSend_reverseObjectEnumerator(v77, v78, v79, v80, v81, v82);
        v89 = objc_msgSend_allObjects(v83, v84, v85, v86, v87, v88);

        v720 = v89;
      }

      v717 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v72, v73, v74, v75, v76);
      v718 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v90, &unk_1EF1ED258, v91, v92, v93);
      v714 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v94, &unk_1EF1ED258, v95, v96, v97);
      v719 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v98, &unk_1EF1ED258, v99, v100, v101);
      v715 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v102, &unk_1EF1ED258, v103, v104, v105);
      if (v722)
      {
        v111 = 0;
        v112 = 0;
        while (1)
        {
          v114 = objc_msgSend_tokenColumns(v721, v106, v107, v108, v109, v110);
          v120 = objc_msgSend_count(v114, v115, v116, v117, v118, v119);

          if (v111 >= v120)
          {
            break;
          }

          v126 = objc_msgSend_tokenColumns(v721, v121, v122, v123, v124, v125);
          v131 = objc_msgSend_objectAtIndexedSubscript_(v126, v127, v111, v128, v129, v130);
          v137 = objc_msgSend_strokeIndexes(v131, v132, v133, v134, v135, v136);
          objc_msgSend_addIndexes_(v717, v138, v137, v139, v140, v141);

          v146 = objc_msgSend_objectAtIndexedSubscript_(v722, v142, v112, v143, v144, v145);
          LODWORD(v131) = objc_msgSend_isEqualToIndexSet_(v717, v147, v146, v148, v149, v150);

          if (v131)
          {
            v151 = objc_msgSend_lastObject(v719, v106, v107, v108, v109, v110);
            v157 = objc_msgSend_intValue(v151, v152, v153, v154, v155, v156);

            v168 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v158, v159, v160, v161, v162);
            for (i = v157; ; ++i)
            {
              if (i >= objc_msgSend_tokenColumnCount(v723, v163, v164, v165, v166, v167))
              {
                v113 = v717;
                goto LABEL_10;
              }

              v174 = objc_msgSend_objectAtIndexedSubscript_(v720, v170, i, v171, v172, v173);
              v180 = objc_msgSend_strokeIndexes(v174, v175, v176, v177, v178, v179);
              objc_msgSend_addIndexes_(v168, v181, v180, v182, v183, v184);

              v189 = objc_msgSend_objectAtIndexedSubscript_(v722, v185, v112, v186, v187, v188);
              LODWORD(v180) = objc_msgSend_isEqualToIndexSet_(v168, v190, v189, v191, v192, v193);

              if (v180)
              {
                break;
              }
            }

            v194 = MEMORY[0x1E696AD98];
            v195 = objc_msgSend_objectAtIndexedSubscript_(v718, v163, v112, v165, v166, v167);
            v201 = objc_msgSend_intValue(v195, v196, v197, v198, v199, v200);
            v206 = objc_msgSend_numberWithInteger_(v194, v202, v111 + 1 - v201, v203, v204, v205);
            objc_msgSend_setObject_atIndexedSubscript_(v714, v207, v206, v112, v208, v209);

            v210 = MEMORY[0x1E696AD98];
            v215 = objc_msgSend_objectAtIndexedSubscript_(v719, v211, v112, v212, v213, v214);
            v221 = objc_msgSend_intValue(v215, v216, v217, v218, v219, v220);
            v226 = objc_msgSend_numberWithInteger_(v210, v222, i - v221 + 1, v223, v224, v225);
            objc_msgSend_setObject_atIndexedSubscript_(v715, v227, v226, v112, v228, v229);

            v113 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v230, v231, v232, v233, v234);

            if (v112 < objc_msgSend_count(v722, v235, v236, v237, v238, v239) - 1)
            {
              v245 = MEMORY[0x1E696AD98];
              v246 = objc_msgSend_lastObject(v718, v240, v241, v242, v243, v244);
              v252 = objc_msgSend_intValue(v246, v247, v248, v249, v250, v251);
              v258 = objc_msgSend_lastObject(v714, v253, v254, v255, v256, v257);
              v264 = objc_msgSend_intValue(v258, v259, v260, v261, v262, v263);
              v269 = objc_msgSend_numberWithInt_(v245, v265, (v264 + v252), v266, v267, v268);
              objc_msgSend_addObject_(v718, v270, v269, v271, v272, v273);

              objc_msgSend_addObject_(v714, v274, &unk_1EF1ED258, v275, v276, v277);
              v278 = MEMORY[0x1E696AD98];
              v284 = objc_msgSend_lastObject(v719, v279, v280, v281, v282, v283);
              LODWORD(v269) = objc_msgSend_intValue(v284, v285, v286, v287, v288, v289);
              v295 = objc_msgSend_lastObject(v715, v290, v291, v292, v293, v294);
              v301 = objc_msgSend_intValue(v295, v296, v297, v298, v299, v300);
              v306 = objc_msgSend_numberWithInt_(v278, v302, (v301 + v269), v303, v304, v305);
              objc_msgSend_addObject_(v719, v307, v306, v308, v309, v310);

              objc_msgSend_addObject_(v715, v311, &unk_1EF1ED258, v312, v313, v314);
              ++v112;
            }

LABEL_10:

            v717 = v113;
          }

          ++v111;
        }
      }

      else
      {
        v463 = MEMORY[0x1E696AD98];
        v464 = objc_msgSend_tokenColumnCount(v721, v106, v107, v108, v109, v110);
        v469 = objc_msgSend_numberWithInteger_(v463, v465, v464, v466, v467, v468);
        objc_msgSend_setObject_atIndexedSubscript_(v714, v470, v469, 0, v471, v472);

        v473 = MEMORY[0x1E696AD98];
        v479 = objc_msgSend_tokenColumnCount(v723, v474, v475, v476, v477, v478);
        v484 = objc_msgSend_numberWithInteger_(v473, v480, v479, v481, v482, v483);
        objc_msgSend_setObject_atIndexedSubscript_(v715, v485, v484, 0, v486, v487);
      }

      if (v7)
      {
        for (j = 0; j < objc_msgSend_count(v719, v121, v122, v123, v124, v125); ++j)
        {
          v489 = MEMORY[0x1E696AD98];
          v490 = objc_msgSend_tokenColumnCount(v723, v121, v122, v123, v124, v125);
          v495 = objc_msgSend_objectAtIndexedSubscript_(v719, v491, j, v492, v493, v494);
          v501 = objc_msgSend_integerValue(v495, v496, v497, v498, v499, v500);
          v506 = objc_msgSend_objectAtIndexedSubscript_(v715, v502, j, v503, v504, v505);
          v512 = objc_msgSend_integerValue(v506, v507, v508, v509, v510, v511);
          v517 = objc_msgSend_numberWithInteger_(v489, v513, v490 - (v501 + v512), v514, v515, v516);
          objc_msgSend_setObject_atIndexedSubscript_(v719, v518, v517, j, v519, v520);
        }
      }

      v521 = 0;
      v705 = v725;
      v706 = v727;
      for (k = &stru_1EF1C0318; ; k = v703)
      {
        if (v521 >= objc_msgSend_count(v718, v121, v122, v123, v124, v125))
        {
          v462 = v713;

          goto LABEL_87;
        }

        v526 = objc_msgSend_objectAtIndexedSubscript_(v718, v522, v521, v523, v524, v525);
        v532 = objc_msgSend_intValue(v526, v527, v528, v529, v530, v531);
        v537 = objc_msgSend_objectAtIndexedSubscript_(v714, v533, v521, v534, v535, v536);
        v543 = objc_msgSend_intValue(v537, v538, v539, v540, v541, v542);

        v548 = objc_msgSend_objectAtIndexedSubscript_(v719, v544, v521, v545, v546, v547);
        v554 = objc_msgSend_intValue(v548, v549, v550, v551, v552, v553);
        v559 = objc_msgSend_objectAtIndexedSubscript_(v715, v555, v521, v556, v557, v558);
        v565 = objc_msgSend_intValue(v559, v560, v561, v562, v563, v564);

        v571 = objc_msgSend_transcriptionPaths(v721, v566, v567, v568, v569, v570);
        v576 = objc_msgSend_objectAtIndexedSubscript_(v571, v572, 0, v573, v574, v575);
        v577 = v532;
        v579 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v721, v578, v576, v532, v543, 0);

        v585 = objc_msgSend_transcriptionPaths(v723, v580, v581, v582, v583, v584);
        v590 = objc_msgSend_objectAtIndexedSubscript_(v585, v586, 0, v587, v588, v589);
        v591 = v565;
        v593 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v723, v592, v590, v554, v565, 0);

        LODWORD(v590) = objc_msgSend_isEqualToString_(v579, v594, v593, v595, v596, v597);
        LODWORD(v585) = objc_msgSend_hasTextReplacementsInColumnRange_(v721, v598, v577, v543, v599, v600);
        if ((v590 | v585 | objc_msgSend_hasTextReplacementsInColumnRange_(v723, v601, v554, v565, v602, v603)))
        {
          goto LABEL_83;
        }

        if (isSupportedLatinScriptLocale_withMode)
        {
          if (v721)
          {
            v608 = [CHTokenizedTextResult rawTranscriptionPath]_0(v721);
            v610 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v721, v609, v608, v577, v543, 0);
            if (v610)
            {
              v611 = v610;
            }

            else
            {
              v611 = &stru_1EF1C0318;
            }

            v616 = objc_msgSend_caseInsensitiveCompare_(v611, v612, v579, v613, v614, v615);
          }

          else
          {
            v611 = 0;
            v616 = objc_msgSend_caseInsensitiveCompare_(0, v604, v579, v605, v606, v607);
          }

          v621 = v616;
          v622 = objc_msgSend_caseInsensitiveCompare_(v611, v617, v593, v618, v619, v620);
          if (v621)
          {
            if (!v622)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v731 = 1;
              v628 = objc_msgSend_transcriptionPaths(v723, v623, v624, v625, v626, v627);
              v633 = objc_msgSend_objectAtIndexedSubscript_(v628, v629, 0, v630, v631, v632);
              v726[0] = MEMORY[0x1E69E9820];
              v726[1] = 3221225472;
              v727[0] = sub_1838021E8;
              v727[1] = &unk_1E6DDC5D0;
              v727[2] = buf;
              objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v723, v634, v633, v554, v591, v726);

              LODWORD(v633) = *(*&buf[8] + 24);
              _Block_object_dispose(buf, 8);
              if (v633 == 1)
              {

LABEL_76:
                v653 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v604, v707, v605, v606, v607);
                v729[0] = v653;
                v658 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v654, v577, v655, v656, v657);
                v729[1] = v658;
                v663 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v659, v543, v660, v661, v662);
                v729[2] = v663;
                v668 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v664, v554, v665, v666, v667);
                v729[3] = v668;
                v673 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v669, v591, v670, v671, v672);
                v729[4] = v673;
                v677 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v674, v729, 5, v675, v676);
                objc_msgSend_addObject_(v713, v678, v677, v679, v680, v681);

                v682 = v593;
                goto LABEL_84;
              }
            }
          }

          if (!sub_1837A4F0C(v611, qword_1EA84DB90))
          {
            goto LABEL_70;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v731 = 1;
          v635 = [CHTokenizedTextResult rawTranscriptionPath]_0(v721);
          v724[0] = MEMORY[0x1E69E9820];
          v724[1] = 3221225472;
          v725[0] = sub_183802258;
          v725[1] = &unk_1E6DDC5D0;
          v725[2] = buf;
          objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v721, v636, v635, v577, v543, v724);

          if (*(*&buf[8] + 24) == 1)
          {
            _Block_object_dispose(buf, 8);
LABEL_70:

            goto LABEL_83;
          }

          v683 = v723;
          if (v723)
          {
            v684 = [CHTokenizedTextResult rawTranscriptionPath]_0(v723);
            v686 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v723, v685, v684, v554, v591, 0);
            if (v686)
            {
              v683 = v686;
            }

            else
            {
              v683 = &stru_1EF1C0318;
            }
          }

          v687 = objc_msgSend_compare_options_(v611, v637, v683, 129, v638, v639) == 0;

          _Block_object_dispose(buf, 8);
          if (v687)
          {
            goto LABEL_76;
          }
        }

        else if (isSupportedCyrillicScriptLocale_withMode)
        {
          if (objc_msgSend_shouldSwapCyrillicTopResult_topRange_englishResult_englishRange_prevousGroupTopString_(CHRecognizerConfiguration, v604, v721, v577, v543, v723, v554, v565, k, v705, v706))
          {
            goto LABEL_76;
          }
        }

        else
        {
          v640 = sub_1837A4F0C(v579, qword_1EA84DB98);
          if (objc_msgSend_length(v579, v641, v642, v643, v644, v645) >= 2)
          {
            v647 = objc_msgSend_length(v579, v604, v646, v605, v606, v607);
            objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v579, v648, 0, v649, v650, v651);
            if (v647 > v604 && v640)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_83:
        v653 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v604, v712, v605, v606, v607);
        v728[0] = v653;
        v658 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v688, v577, v689, v690, v691);
        v728[1] = v658;
        v663 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v692, v543, v693, v694, v695);
        v728[2] = v663;
        v728[3] = &unk_1EF1ED258;
        v728[4] = &unk_1EF1ED258;
        v668 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v696, v728, 5, v697, v698);
        objc_msgSend_addObject_(v713, v699, v668, v700, v701, v702);
        v682 = v579;
LABEL_84:

        v703 = v682;
        ++v521;
      }
    }
  }

  else
  {
  }

  v315 = objc_msgSend_transcriptionPaths(v721, v47, v48, v49, v50, v51);
  v321 = objc_msgSend_count(v315, v316, v317, v318, v319, v320);

  if (!v321)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v327 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
    {
      v333 = objc_msgSend_strokeIndexes(v721, v328, v329, v330, v331, v332);
      *buf = 134218240;
      *&buf[4] = objc_msgSend_count(v333, v334, v335, v336, v337, v338);
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_tokenColumnCount(v721, v339, v340, v341, v342, v343);
      _os_log_impl(&dword_18366B000, v327, OS_LOG_TYPE_ERROR, "rdar://114127212 topResult has no transcription path. Stroke Count = %lu Column Count = %lu", buf, 0x16u);
    }
  }

  v344 = objc_msgSend_transcriptionPaths(v721, v322, v323, v324, v325, v326);
  v350 = objc_msgSend_count(v344, v345, v346, v347, v348, v349) == 0;

  if (v350)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v356 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v356, OS_LOG_TYPE_FAULT))
    {
      v362 = objc_msgSend_strokeIndexes(v721, v357, v358, v359, v360, v361);
      v368 = objc_msgSend_count(v362, v363, v364, v365, v366, v367);
      v374 = objc_msgSend_tokenColumnCount(v721, v369, v370, v371, v372, v373);
      *buf = 134218240;
      *&buf[4] = v368;
      *&buf[12] = 2048;
      *&buf[14] = v374;
      _os_log_impl(&dword_18366B000, v356, OS_LOG_TYPE_FAULT, "rdar://114127212 topResult has no transcription path. Stroke Count = %lu Column Count = %lu", buf, 0x16u);
    }
  }

  v375 = objc_msgSend_transcriptionPaths(v723, v351, v352, v353, v354, v355);
  v381 = objc_msgSend_count(v375, v376, v377, v378, v379, v380) == 0;

  if (v381)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v387 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
    {
      v393 = objc_msgSend_strokeIndexes(v723, v388, v389, v390, v391, v392);
      v399 = objc_msgSend_count(v393, v394, v395, v396, v397, v398);
      v405 = objc_msgSend_tokenColumnCount(v723, v400, v401, v402, v403, v404);
      *buf = 134218240;
      *&buf[4] = v399;
      *&buf[12] = 2048;
      *&buf[14] = v405;
      _os_log_impl(&dword_18366B000, v387, OS_LOG_TYPE_ERROR, "rdar://114127212 englishResult has no transcription path. Stroke Count = %lu Column Count = %lu", buf, 0x16u);
    }
  }

  v406 = objc_msgSend_transcriptionPaths(v723, v382, v383, v384, v385, v386);
  v412 = objc_msgSend_count(v406, v407, v408, v409, v410, v411) == 0;

  if (v412)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v417 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v417, OS_LOG_TYPE_FAULT))
    {
      v423 = objc_msgSend_strokeIndexes(v723, v418, v419, v420, v421, v422);
      v429 = objc_msgSend_count(v423, v424, v425, v426, v427, v428);
      v435 = objc_msgSend_tokenColumnCount(v723, v430, v431, v432, v433, v434);
      *buf = 134218240;
      *&buf[4] = v429;
      *&buf[12] = 2048;
      *&buf[14] = v435;
      _os_log_impl(&dword_18366B000, v417, OS_LOG_TYPE_FAULT, "rdar://114127212 englishResult has no transcription path. Stroke Count = %lu Column Count = %lu", buf, 0x16u);
    }
  }

  v722 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v413, v712, v414, v415, v416);
  v732[0] = v722;
  v732[1] = &unk_1EF1ED258;
  v436 = MEMORY[0x1E696AD98];
  v720 = objc_msgSend_objectAtIndexedSubscript_(v708, v437, v712, v438, v439, v440);
  v717 = objc_msgSend_tokenColumns(v720, v441, v442, v443, v444, v445);
  v451 = objc_msgSend_count(v717, v446, v447, v448, v449, v450);
  v718 = objc_msgSend_numberWithUnsignedInteger_(v436, v452, v451, v453, v454, v455);
  v732[2] = v718;
  v732[3] = &unk_1EF1ED258;
  v732[4] = &unk_1EF1ED258;
  v714 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v456, v732, 5, v457, v458);
  v733[0] = v714;
  v462 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v459, v733, 1, v460, v461);
LABEL_87:

  return v462;
}

+ (id)compressResult:(id)a3 atColumnIndexes:(id)a4
{
  v349 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v338 = a4;
  v341 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v22 = objc_msgSend_tokenColumns(v5, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_firstObject(v22, v23, v24, v25, v26, v27);
  objc_msgSend_addObject_(v341, v29, v28, v30, v31, v32);

  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v38 = objc_msgSend_transcriptionPaths(v5, v33, v34, v35, v36, v37);
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v344, v348, 16, v40);
  if (v45)
  {
    v46 = *v345;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v345 != v46)
        {
          objc_enumerationMutation(v38);
        }

        v48 = MEMORY[0x1E696AC88];
        v49 = objc_msgSend_indexAtPosition_(*(*(&v344 + 1) + 8 * i), v41, 0, v42, v43, v44);
        v54 = objc_msgSend_indexPathWithIndex_(v48, v50, v49, v51, v52, v53);
        objc_msgSend_addObject_(v16, v55, v54, v56, v57, v58);
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v344, v348, 16, v44);
    }

    while (v45);
  }

  v339 = objc_msgSend_changeableTokenColumnCount(v5, v59, v60, v61, v62, v63);
  v337 = objc_msgSend_tokenColumnCount(v5, v64, v65, v66, v67, v68) - v339;
  for (j = 1; j < objc_msgSend_tokenColumnCount(v5, v69, v70, v71, v72, v73); ++j)
  {
    v80 = objc_msgSend_tokenColumns(v5, v75, v76, v77, v78, v79);
    v340 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, j, v82, v83, v84);

    v89 = objc_msgSend_objectAtIndexedSubscript_(v338, v85, j, v86, v87, v88);
    v95 = objc_msgSend_BOOLValue(v89, v90, v91, v92, v93, v94);

    if (v95)
    {
      v342 = objc_msgSend_array(MEMORY[0x1E695DF70], v96, v97, v98, v99, v100);
      for (k = 0; k < objc_msgSend_count(v16, v101, v102, v103, v104, v105); ++k)
      {
        v111 = objc_msgSend_objectAtIndexedSubscript_(v16, v107, k, v108, v109, v110);
        v117 = objc_msgSend_length(v111, v112, v113, v114, v115, v116);

        v122 = objc_msgSend_objectAtIndexedSubscript_(v16, v118, k, v119, v120, v121);
        v127 = objc_msgSend_indexAtPosition_(v122, v123, v117 - 1, v124, v125, v126);

        v133 = objc_msgSend_transcriptionPaths(v5, v128, v129, v130, v131, v132);
        v138 = objc_msgSend_objectAtIndexedSubscript_(v133, v134, k, v135, v136, v137);
        v143 = objc_msgSend_indexAtPosition_(v138, v139, j, v140, v141, v142);

        v149 = objc_msgSend_array(MEMORY[0x1E695DF70], v144, v145, v146, v147, v148);
        v155 = objc_msgSend_lastObject(v341, v150, v151, v152, v153, v154);
        v161 = objc_msgSend_textTokenRows(v155, v156, v157, v158, v159, v160);
        v166 = objc_msgSend_objectAtIndexedSubscript_(v161, v162, v127, v163, v164, v165);
        objc_msgSend_addObjectsFromArray_(v149, v167, v166, v168, v169, v170);

        v176 = objc_msgSend_tokenColumns(v5, v171, v172, v173, v174, v175);
        v181 = objc_msgSend_objectAtIndexedSubscript_(v176, v177, j, v178, v179, v180);
        v187 = objc_msgSend_textTokenRows(v181, v182, v183, v184, v185, v186);
        v192 = objc_msgSend_objectAtIndexedSubscript_(v187, v188, v143, v189, v190, v191);
        objc_msgSend_addObjectsFromArray_(v149, v193, v192, v194, v195, v196);

        v197 = objc_opt_class();
        v205 = objc_msgSend_mergeTokenRow_intoUniqueRows_(v197, v198, v149, v342, v199, v200);
        if (v205 != v127)
        {
          v206 = objc_msgSend_objectAtIndexedSubscript_(v16, v201, k, v202, v203, v204);
          v212 = objc_msgSend_indexPathByRemovingLastIndex(v206, v207, v208, v209, v210, v211);

          v217 = objc_msgSend_indexPathByAddingIndex_(v212, v213, v205, v214, v215, v216);
          objc_msgSend_setObject_atIndexedSubscript_(v16, v218, v217, k, v219, v220);
        }
      }

      v256 = [CHTokenizedResultColumn alloc];
      v261 = objc_msgSend_initWithTokenRows_(v256, v257, v342, v258, v259, v260);
      v267 = objc_msgSend_count(v341, v262, v263, v264, v265, v266);
      objc_msgSend_setObject_atIndexedSubscript_(v341, v268, v261, v267 - 1, v269, v270);

      v339 -= j > v337;
    }

    else
    {
      objc_msgSend_addObject_(v341, v96, v340, v98, v99, v100);
      for (m = 0; m < objc_msgSend_count(v16, v221, v222, v223, v224, v225); ++m)
      {
        v232 = objc_msgSend_transcriptionPaths(v5, v227, v228, v229, v230, v231);
        v237 = objc_msgSend_objectAtIndexedSubscript_(v232, v233, m, v234, v235, v236);
        v242 = objc_msgSend_indexAtPosition_(v237, v238, j, v239, v240, v241);

        v247 = objc_msgSend_objectAtIndexedSubscript_(v16, v243, m, v244, v245, v246);
        v252 = objc_msgSend_indexPathByAddingIndex_(v247, v248, v242, v249, v250, v251);
        objc_msgSend_setObject_atIndexedSubscript_(v16, v253, v252, m, v254, v255);
      }
    }
  }

  v271 = objc_msgSend_count(v341, v75, v76, v77, v78, v79);
  if (v271 >= objc_msgSend_tokenColumnCount(v5, v272, v273, v274, v275, v276))
  {
    v315 = 0;
  }

  else
  {
    if (!objc_msgSend_count(v341, v277, v278, v279, v280, v281))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v287 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v287, OS_LOG_TYPE_ERROR, "compressResult removed all columns.", buf, 2u);
      }
    }

    if (!objc_msgSend_count(v341, v282, v283, v284, v285, v286))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v288 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v288, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v288, OS_LOG_TYPE_FAULT, "compressResult removed all columns.", buf, 2u);
      }
    }

    v289 = [CHMutableTokenizedTextResult alloc];
    v295 = objc_msgSend_transcriptionPathScores(v5, v290, v291, v292, v293, v294);
    v301 = objc_msgSend_trailingSeparator(v5, v296, v297, v298, v299, v300);
    v307 = objc_msgSend_recognizerGenerationIdentifier(v5, v302, v303, v304, v305, v306);
    v313 = objc_msgSend_originalTokens(v5, v308, v309, v310, v311, v312);
    v315 = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_originalTokens_(v289, v314, v341, v16, v295, v301, v307, v339, v313);

    v321 = objc_msgSend_inputStrokeIdentifiers(v5, v316, v317, v318, v319, v320);
    objc_msgSend_setInputStrokeIdentifiers_(v315, v322, v321, v323, v324, v325);

    v331 = objc_msgSend_locale(v5, v326, v327, v328, v329, v330);
    objc_msgSend_setLocale_(v315, v332, v331, v333, v334, v335);
  }

  return v315;
}

- (id)subResultWithColumnRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v8 = objc_msgSend_transcriptionPaths(self, a2, a3.location, a3.length, v3, v4);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = sub_183802E50;
  v48[3] = &unk_1E6DDEAE8;
  v48[4] = location;
  v48[5] = length;
  v13 = objc_msgSend_ch_mappedArrayWithBlock_(v8, v9, v48, v10, v11, v12);

  v14 = MEMORY[0x1E695DF70];
  v20 = objc_msgSend_count(self->_originalTokens, v15, v16, v17, v18, v19);
  v25 = objc_msgSend_arrayWithCapacity_(v14, v21, v20, v22, v23, v24);
  v43 = MEMORY[0x1E69E9820];
  v44 = 3221225472;
  v45 = sub_183802E88;
  v46 = &unk_1E6DDE720;
  v26 = v25;
  v47 = v26;
  sub_1837F1DB8(self, location, length, &v43);
  v27 = [CHMutableTokenizedTextResult alloc];
  v31 = objc_msgSend_subarrayWithRange_(self->_tokenColumns, v28, location, length, v29, v30);
  transcriptionPathScores = self->_transcriptionPathScores;
  recognizerGenerationIdentifier = self->_recognizerGenerationIdentifier;
  isMinimalDrawingResult = objc_msgSend_isMinimalDrawingResult(self, v34, v35, v36, v37, v38);
  isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_recognizerGenerationIdentifier_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v27, v40, v31, v13, transcriptionPathScores, recognizerGenerationIdentifier, isMinimalDrawingResult, *&self->_baseWritingDirection, v26, v43, v44, v45, v46);

  return isMinimalDrawingResult_baseWritingDirection_originalTokens;
}

+ (CGPath)newBaselinePathForTokens:(id)a3 strokeIdentifiers:(id)a4 strokeProvider:(id)a5
{
  v182 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v166 = a5;
  v167 = v8;
  v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);
  if (v14 != objc_msgSend_count(v7, v15, v16, v17, v18, v19))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "There needs to be an array of stroke identifiers for each token.", buf, 2u);
    }
  }

  v26 = objc_msgSend_count(v8, v20, v21, v22, v23, v24);
  if (v26 != objc_msgSend_count(v7, v27, v28, v29, v30, v31))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v37 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_FAULT, "There needs to be an array of stroke identifiers for each token.", buf, 2u);
    }
  }

  v38 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v165 = 0.2;
  while (v38 < objc_msgSend_count(v7, v32, v33, v34, v35, v36, *&v165))
  {
    v43 = objc_msgSend_objectAtIndexedSubscript_(v167, v39, v38, v40, v41, v42);
    v47 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v44, v43, v166, v45, v46);

    objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v48, v47, v49, v50, v51);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v64 = objc_msgSend_objectAtIndexedSubscript_(v7, v60, v38, v61, v62, v63);
    v70 = v64;
    if (v64)
    {
      objc_msgSend_principalLines(v64, v65, v66, v67, v68, v69);
      v71 = *(&v176 + 1);
      v72 = *&v176;
      v168 = v177;
    }

    else
    {
      v180 = 0u;
      v181 = 0u;
      v179 = 0u;
      v177 = 0u;
      v178 = 0u;
      v176 = 0u;
      v168 = 0uLL;
      v71 = 0.0;
      v72 = 0.0;
      memset(buf, 0, sizeof(buf));
    }

    if (v57 == 0.0)
    {
      v57 = 1.0;
    }

    if (v59 == 0.0)
    {
      v59 = 1.0;
    }

    v77 = objc_msgSend_objectAtIndexedSubscript_(v7, v73, v38, v74, v75, v76);
    v83 = v77;
    if (v77)
    {
      objc_msgSend_principalLines(v77, v78, v79, v80, v81, v82);
      v84 = *(&v178 + 1);
      v85 = *&v178;
    }

    else
    {
      v180 = 0u;
      v181 = 0u;
      v179 = 0u;
      v177 = 0u;
      v178 = 0u;
      v176 = 0u;
      v84 = 0.0;
      v85 = 0.0;
      memset(buf, 0, sizeof(buf));
    }

    v86 = v53 + v72 * v57;
    v87 = v55 + v71 * v59;
    v88 = vabdd_f64(v86, v53 + v85 * v57) * v165;
    v89 = vabdd_f64(v87, v55 + v84 * v59) * v165;
    v90 = v86 + v88;
    v91 = v87 + v89;
    v92 = v173;
    v93 = v174;
    if (v173 >= v174)
    {
      v95 = v172;
      v96 = v173 - v172;
      v97 = (v173 - v172) >> 4;
      v98 = v97 + 1;
      if ((v97 + 1) >> 60)
      {
        sub_18369761C();
      }

      if ((v174 - v172) >> 3 > v98)
      {
        v98 = (v174 - v172) >> 3;
      }

      if (v174 - v172 >= 0x7FFFFFFFFFFFFFF0)
      {
        v99 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v99 = v98;
      }

      if (v99)
      {
        if (!(v99 >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      v100 = (16 * v97);
      v93 = 0;
      *v100 = v90;
      v100[1] = v91;
      v94 = (16 * v97 + 16);
      memcpy(0, v95, v96);
      v172 = 0;
      v173 = v94;
      v174 = 0;
      if (v95)
      {
        operator delete(v95);
        v93 = v174;
      }
    }

    else
    {
      *v173 = v90;
      v92[1] = v91;
      v94 = v92 + 2;
    }

    v101 = v55 + *(&v168 + 1) * v59;
    v173 = v94;
    v102 = v53 + *&v168 * v57 + v88;
    v103 = v101 + v89;
    if (v94 >= v93)
    {
      v105 = v172;
      v106 = v94 - v172;
      v107 = (v94 - v172) >> 4;
      v108 = v107 + 1;
      if ((v107 + 1) >> 60)
      {
        sub_18369761C();
      }

      if ((v93 - v172) >> 3 > v108)
      {
        v108 = (v93 - v172) >> 3;
      }

      if (v93 - v172 >= 0x7FFFFFFFFFFFFFF0)
      {
        v109 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v109 = v108;
      }

      if (v109)
      {
        if (!(v109 >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      v110 = (v94 - v172) >> 4;
      v111 = (16 * v107);
      *v111 = v102;
      v111[1] = v103;
      v104 = 16 * v107 + 16;
      v112 = (16 * v107 - 16 * v110);
      memcpy(&v111[-2 * v110], v105, v106);
      v172 = v112;
      v173 = v104;
      v174 = 0;
    }

    else
    {
      *v94 = v102;
      v94[1] = v103;
      v104 = (v94 + 2);
    }

    v173 = v104;

    ++v38;
  }

  if (v173 == v172)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v113 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v113, OS_LOG_TYPE_ERROR, "The number of points in the raw baseline estimate must be > 0 at this point.", buf, 2u);
    }

    if (v173 == v172)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v114 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v114, OS_LOG_TYPE_FAULT, "The number of points in the raw baseline estimate must be > 0 at this point.", buf, 2u);
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v115 = qword_1EA84DC58;
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
  {
    v117 = *v172;
    v116 = *(v172 + 1);
    *buf = 134218240;
    *&buf[4] = v117;
    *&buf[12] = 2048;
    *&buf[14] = v116;
    _os_log_impl(&dword_18366B000, v115, OS_LOG_TYPE_DEBUG, "Raw points[0] = %.2f, %.2f\n", buf, 0x16u);
  }

  v171 = 0;
  v118 = objc_opt_class();
  if (v118)
  {
    objc_msgSend_regularizedPathFromPoints_delta_gamma_outError_(v118, v119, &v172, &v171, v120, v121, 1.0, 0.9);
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_68;
    }
  }

  else
  {
    __p = 0;
    v170 = 0;
    if (qword_1EA84DC48 == -1)
    {
LABEL_68:
      v122 = qword_1EA84DC58;
      if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v122 = qword_1EA84DC58;
  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
  {
LABEL_69:
    v129 = v172;
    v128 = v173;
    v130 = v171;
    v131 = objc_msgSend_count(v7, v123, v124, v125, v126, v127);
    *buf = 134218496;
    *&buf[4] = (v128 - v129) >> 4;
    *&buf[12] = 2048;
    *&buf[14] = v130;
    *&buf[22] = 2048;
    *&buf[24] = v131;
    _os_log_impl(&dword_18366B000, v122, OS_LOG_TYPE_DEFAULT, "Baseline Data detectors baseline approximation with %lu points, correction error = %.2f, number of tokens %lu", buf, 0x20u);
  }

LABEL_70:

  v132 = [CHQuadCurvePointFIFO alloc];
  v137 = objc_msgSend_initWithFIFO_(v132, v133, 0, v134, v135, v136);
  v138 = [CHBoxcarFilterPointFIFO alloc];
  LODWORD(v139) = 2.0;
  v143 = objc_msgSend_initWithFIFO_width_spacing_(v138, v140, v137, 2, v141, v142, v139);
  v144 = [CHPointFIFO alloc];
  v154 = objc_msgSend_initWithFIFO_(v144, v145, v143, v146, v147, v148);
  v155 = __p;
  if (v170 != __p)
  {
    v156 = 0;
    do
    {
      objc_msgSend_addPoint_(v154, v149, v150, v151, v152, v153, COERCE_DOUBLE(vcvt_f32_f64(v155[v156++])));
      v155 = __p;
    }

    while (v156 < v170 - __p);
  }

  objc_msgSend_flush(v154, v149, v150, v151, v152, v153);
  v162 = objc_msgSend_path(v137, v157, v158, v159, v160, v161);
  v163 = CGPathRetain(v162);

  if (__p)
  {
    operator delete(__p);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  return v163;
}

+ (id)resultsBySwapping:(id)a3 swappableColumns:(id)a4 locales:(id)a5 topLocaleIndex:(int64_t)a6 topLocale:(id)a7
{
  v838 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v772 = a4;
  v783 = a5;
  v784 = a7;
  v778 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v826 = 0u;
  v827 = 0u;
  v824 = 0u;
  v825 = 0u;
  obj = v10;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v824, v836, 16, v17);
  if (v22)
  {
    v23 = *v825;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v825 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = objc_msgSend_resultRestoringRawPathInResult_(CHTokenizedTextResult, v18, *(*(&v824 + 1) + 8 * i), v19, v20, v21);
        objc_msgSend_addObject_(v778, v26, v25, v27, v28, v29);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v824, v836, 16, v21);
    }

    while (v22);
  }

  v762 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31, v32, v33, v34);
  v39 = objc_msgSend_objectAtIndexedSubscript_(v778, v35, a6, v36, v37, v38);
  v40 = MEMORY[0x1E695DF70];
  v761 = v39;
  v46 = objc_msgSend_tokenColumnCount(v39, v41, v42, v43, v44, v45);
  v51 = objc_msgSend_arrayWithCapacity_(v40, v47, v46, v48, v49, v50);
  v57 = 0;
  v795 = 0;
  v58 = MEMORY[0x1E695E110];
  v59 = MEMORY[0x1E695E118];
  v771 = v51;
  while (v57 < objc_msgSend_count(v772, v52, v53, v54, v55, v56))
  {
    v65 = objc_msgSend_objectAtIndexedSubscript_(v772, v60, v57, v62, v63, v64);
    v70 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, 1, v67, v68, v69);
    v76 = objc_msgSend_intValue(v70, v71, v72, v73, v74, v75);
    v81 = objc_msgSend_objectAtIndexedSubscript_(v772, v77, v57, v78, v79, v80);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, 2, v83, v84, v85);
    v92 = objc_msgSend_intValue(v86, v87, v88, v89, v90, v91);

    objc_msgSend_addObject_(v771, v93, v58, v94, v95, v96);
    if (v76 + 1 < (v92 + v76))
    {
      v97 = v92 - 1;
      do
      {
        objc_msgSend_addObject_(v771, v52, v59, v54, v55, v56);
        --v97;
      }

      while (v97);
      v795 = 1;
    }

    ++v57;
  }

  if (v795)
  {
    v770 = objc_msgSend_compressResult_atColumnIndexes_(CHTokenizedTextResult, v60, v761, v771, v63, v64);
  }

  else
  {
    v770 = objc_msgSend_mutableCopy(v761, v60, v61, v62, v63, v64);
  }

  v759 = objc_msgSend_array(MEMORY[0x1E695DF70], v98, v99, v100, v101, v102);
  v103 = MEMORY[0x1E695DF70];
  v109 = objc_msgSend_transcriptionPaths(v770, v104, v105, v106, v107, v108);
  v765 = objc_msgSend_arrayWithArray_(v103, v110, v109, v111, v112, v113);

  v114 = MEMORY[0x1E695DF70];
  v120 = objc_msgSend_transcriptionPathScores(v770, v115, v116, v117, v118, v119);
  v760 = objc_msgSend_arrayWithArray_(v114, v121, v120, v122, v123, v124);

  v125 = MEMORY[0x1E695DF70];
  v131 = objc_msgSend_transcriptionPaths(v770, v126, v127, v128, v129, v130);
  v137 = objc_msgSend_firstObject(v131, v132, v133, v134, v135, v136);
  v143 = objc_msgSend_transcriptionPaths(v770, v138, v139, v140, v141, v142);
  v149 = objc_msgSend_firstObject(v143, v144, v145, v146, v147, v148);
  v764 = objc_msgSend_arrayWithObjects_(v125, v150, v137, v151, v152, v153, v149, 0);

  v768 = 0;
  v818 = 0;
  v819 = &v818;
  v820 = 0x3032000000;
  v821 = sub_1837FA378;
  v822 = sub_1837FA388;
  v823 = 0;
  v782 = *MEMORY[0x1E695D9B0];
  while (v768 < objc_msgSend_count(v772, v154, v155, v156, v157, v158))
  {
    v789 = objc_msgSend_array(MEMORY[0x1E695DF70], v159, v160, v161, v162, v163);
    v758 = objc_msgSend_objectAtIndexedSubscript_(v772, v164, v768, v165, v166, v167);
    v172 = objc_msgSend_objectAtIndexedSubscript_(v758, v168, 0, v169, v170, v171);
    v178 = objc_msgSend_intValue(v172, v173, v174, v175, v176, v177);

    v184 = objc_msgSend_transcriptionPaths(v770, v179, v180, v181, v182, v183);
    v189 = objc_msgSend_objectAtIndexedSubscript_(v184, v185, 0, v186, v187, v188);
    v767 = objc_msgSend_indexAtPosition_(v189, v190, v768, v191, v192, v193);

    v199 = objc_msgSend_tokenColumns(v770, v194, v195, v196, v197, v198);
    v204 = objc_msgSend_objectAtIndexedSubscript_(v199, v200, v768, v201, v202, v203);
    v210 = objc_msgSend_textTokenRows(v204, v205, v206, v207, v208, v209);
    v763 = objc_msgSend_objectAtIndexedSubscript_(v210, v211, v767, v212, v213, v214);

    v220 = objc_msgSend_firstObject(v763, v215, v216, v217, v218, v219);
    v226 = objc_msgSend_properties(v220, v221, v222, v223, v224, v225);

    v769 = 0;
    v766 = v178;
    v785 = (v226 >> 5) & 1;
    while (1)
    {
      v232 = objc_msgSend_tokenColumns(v770, v227, v228, v229, v230, v231);
      v237 = objc_msgSend_objectAtIndexedSubscript_(v232, v233, v768, v234, v235, v236);
      v243 = objc_msgSend_textTokenRows(v237, v238, v239, v240, v241, v242);
      v249 = v769 < objc_msgSend_count(v243, v244, v245, v246, v247, v248);

      if (!v249)
      {
        break;
      }

      if (v769 == v767 && v766 != a6)
      {
        v791 = objc_msgSend_objectAtIndexedSubscript_(v778, v250, v766, v252, v253, v254);
        v259 = objc_msgSend_objectAtIndexedSubscript_(v772, v255, v768, v256, v257, v258);
        v264 = objc_msgSend_objectAtIndexedSubscript_(v259, v260, 3, v261, v262, v263);
        v270 = objc_msgSend_intValue(v264, v265, v266, v267, v268, v269);
        v275 = objc_msgSend_objectAtIndexedSubscript_(v772, v271, v768, v272, v273, v274);
        v280 = objc_msgSend_objectAtIndexedSubscript_(v275, v276, 4, v277, v278, v279);
        v286 = objc_msgSend_intValue(v280, v281, v282, v283, v284, v285);

        v816 = 0u;
        v817 = 0u;
        v814 = 0u;
        v815 = 0u;
        v292 = objc_msgSend_transcriptionPaths(v791, v287, v288, v289, v290, v291);
        v297 = objc_msgSend_objectAtIndexedSubscript_(v292, v293, 0, v294, v295, v296);
        v834[0] = v297;
        v298 = [CHTokenizedTextResult rawTranscriptionPath]_0(v791);
        v834[1] = v298;
        v779 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v299, v834, 2, v300, v301);

        v304 = 0x1E695D000uLL;
        v792 = objc_msgSend_countByEnumeratingWithState_objects_count_(v779, v302, &v814, v835, 16, v303);
        if (!v792)
        {
          goto LABEL_76;
        }

        v786 = v286;
        v787 = v270;
        v788 = *v815;
        while (1)
        {
          v796 = 0;
          do
          {
            if (*v815 != v788)
            {
              objc_enumerationMutation(v779);
            }

            v310 = *(*(&v814 + 1) + 8 * v796);
            v311 = objc_msgSend_array(*(v304 + 3952), v305, v306, v307, v308, v309);
            v807[0] = MEMORY[0x1E69E9820];
            v807[1] = 3221225472;
            v807[2] = sub_1838052C8;
            v807[3] = &unk_1E6DDEB10;
            v812 = v786;
            v813 = v785;
            v811 = v787;
            v810 = &v818;
            v808 = v784;
            v312 = v311;
            v809 = v312;
            objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v791, v313, v310, v787, v786, v807);
            v793 = objc_msgSend_objectAtIndex_(v783, v314, a6, v315, v316, v317);
            v322 = objc_msgSend_objectForKey_(v793, v318, v782, v319, v320, v321);
            if (objc_msgSend_characterDirectionForLanguage_(MEMORY[0x1E695DF58], v323, v322, v324, v325, v326) == 2)
            {
              v331 = objc_msgSend_objectAtIndexedSubscript_(obj, v327, 0, v328, v329, v330);
              v781 = v322;
              v337 = objc_msgSend_baseWritingDirection(v331, v332, v333, v334, v335, v336);

              if (v337 == 1)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v338 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v338, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18366B000, v338, OS_LOG_TYPE_DEBUG, "BiDi Swapping : visual->logical transform might be needed in secondary recognizer. First locale is RTL and base direction of first result is also RTL.", buf, 2u);
                }

                v805 = 0u;
                v806 = 0u;
                v803 = 0u;
                v804 = 0u;
                v339 = v312;
                v342 = 0;
                v347 = objc_msgSend_countByEnumeratingWithState_objects_count_(v339, v340, &v803, v833, 16, v341);
                if (v347)
                {
                  v348 = *v804;
                  do
                  {
                    for (j = 0; j != v347; ++j)
                    {
                      while (1)
                      {
                        if (*v804 != v348)
                        {
                          objc_enumerationMutation(v339);
                        }

                        v350 = *(*(&v803 + 1) + 8 * j);
                        if (!v342)
                        {
                          break;
                        }

                        sub_1836AA78C(v342, v350);
                        if (v347 == ++j)
                        {
                          goto LABEL_43;
                        }
                      }

                      v342 = objc_msgSend_mutableCopy(*(*(&v803 + 1) + 8 * j), v350, v343, v344, v345, v346);
                    }

LABEL_43:
                    v347 = objc_msgSend_countByEnumeratingWithState_objects_count_(v339, v351, &v803, v833, 16, v346);
                  }

                  while (v347);
                }

                if (qword_1EA84DBB0 == -1)
                {
                  if (v342)
                  {
                    goto LABEL_46;
                  }

LABEL_48:
                  if (qword_1EA84DC48 != -1)
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  }

                  v383 = qword_1EA84DC50[0];
                  if (os_log_type_enabled(v383, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_18366B000, v383, OS_LOG_TYPE_DEBUG, "BiDi Swapping : visual->logical transform was not needed since the secondary recognizer results were all strong LTR.", buf, 2u);
                  }

                  v312 = v339;
                }

                else
                {
                  dispatch_once(&qword_1EA84DBB0, &unk_1EF1BE7A8);
                  if (!v342)
                  {
                    goto LABEL_48;
                  }

LABEL_46:
                  v357 = objc_msgSend_string(v342, v352, v353, v354, v355, v356);
                  v358 = qword_1EA84DBA8;
                  v359 = v357;
                  v360 = v358;
                  if (objc_msgSend_length(v359, v361, v362, v363, v364, v365))
                  {
                    v370 = objc_msgSend_indexesOfCharacters_(v359, v366, v360, v367, v368, v369);
                    v376 = objc_msgSend_count(v370, v371, v372, v373, v374, v375);
                    v382 = v376 == objc_msgSend_length(v359, v377, v378, v379, v380, v381);

                    if (v382)
                    {
                      goto LABEL_48;
                    }
                  }

                  else
                  {
                  }

                  v384 = v342;
                  objc_opt_self();
                  v390 = objc_msgSend_string(v384, v385, v386, v387, v388, v389);
                  v777 = v384;
                  v391 = objc_alloc_init(MEMORY[0x1E69D9D38]);
                  v773 = v390;
                  v398 = objc_msgSend_transformVisualToLogical_visualDirectionality_logicalBaseDirectionality_baseDirectionalityPredictionMode_outTokenizedLogicalOrderIndexes_outReorderingPermutation_outMirroredVisualString_outLogicalBaseDirection_(v391, v392, v390, 1, 2, 0, 0, 0, 0, 0);
                  if (!v398)
                  {
                    v398 = objc_msgSend_copy(v390, v393, v394, v395, v396, v397);
                  }

                  v774 = v391;
                  v776 = objc_msgSend_componentsSeparatedByString_(v398, v393, @" ", v395, v396, v397);
                  v775 = v398;
                  v404 = objc_msgSend_string(MEMORY[0x1E696AD60], v399, v400, v401, v402, v403);
                  v830 = 0u;
                  v831 = 0u;
                  v828 = 0u;
                  v829 = 0u;
                  v405 = v776;
                  v413 = objc_msgSend_countByEnumeratingWithState_objects_count_(v405, v406, &v828, buf, 16, v407);
                  if (v413)
                  {
                    v414 = *v829;
                    do
                    {
                      for (k = 0; k != v413; ++k)
                      {
                        if (*v829 != v414)
                        {
                          objc_enumerationMutation(v405);
                        }

                        v416 = *(*(&v828 + 1) + 8 * k);
                        if (objc_msgSend_length(v404, v408, v409, v410, v411, v412))
                        {
                          objc_msgSend_appendString_(v404, v417, @" ", v418, v419, v420);
                        }

                        v421 = objc_opt_class();
                        v425 = objc_msgSend_performInverseBiDiForNumeric_isRTLContext_(v421, v422, v416, 1, v423, v424);
                        objc_msgSend_appendString_(v404, v426, v425, v427, v428, v429);
                      }

                      v413 = objc_msgSend_countByEnumeratingWithState_objects_count_(v405, v408, &v828, buf, 16, v412);
                    }

                    while (v413);
                  }

                  v430 = v404;
                  objc_msgSend_setString_(v777, v431, v430, v432, v433, v434);

                  v312 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v435, v777, v436, v437, v438);

                  if (qword_1EA84DC48 != -1)
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  }

                  v383 = qword_1EA84DC50[0];
                  if (os_log_type_enabled(v383, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_18366B000, v383, OS_LOG_TYPE_DEBUG, "BiDi Swapping : visual->logical transform performed since the secondary recognizer results contained some weak characters.", buf, 2u);
                  }
                }
              }

              v322 = v781;
            }

            objc_msgSend_addObject_(v789, v327, v312, v328, v329, v330);

            ++v796;
            v304 = 0x1E695D000;
          }

          while (v796 != v792);
          v439 = objc_msgSend_countByEnumeratingWithState_objects_count_(v779, v305, &v814, v835, 16, v309);
          v792 = v439;
          if (!v439)
          {
LABEL_76:

            v795 = 1;
            break;
          }
        }
      }

      v440 = objc_msgSend_tokenColumns(v770, v250, v251, v252, v253, v254);
      v445 = objc_msgSend_objectAtIndexedSubscript_(v440, v441, v768, v442, v443, v444);
      v451 = objc_msgSend_textTokenRows(v445, v446, v447, v448, v449, v450);
      v456 = objc_msgSend_objectAtIndexedSubscript_(v451, v452, v769, v453, v454, v455);
      objc_msgSend_addObject_(v789, v457, v456, v458, v459, v460);

      ++v769;
    }

    if (v766 != a6)
    {
      for (m = 0; ; ++m)
      {
        v462 = objc_msgSend_transcriptionPaths(v770, v250, v251, v252, v253, v254);
        v468 = m < objc_msgSend_count(v462, v463, v464, v465, v466, v467);

        if (!v468)
        {
          break;
        }

        v474 = objc_msgSend_transcriptionPaths(v770, v469, v470, v471, v472, v473);
        v479 = objc_msgSend_objectAtIndexedSubscript_(v474, v475, m, v476, v477, v478);
        v484 = objc_msgSend_indexAtPosition_(v479, v480, v768, v481, v482, v483);

        if (v484 >= v767)
        {
          v485 = objc_msgSend_objectAtIndexedSubscript_(v765, v250, m, v252, v253, v254);
          v486 = sub_1837A3654(v485, v768, v484 + 2);
          objc_msgSend_setObject_atIndexedSubscript_(v765, v487, v486, m, v488, v489);
        }
      }

      v490 = objc_msgSend_objectAtIndexedSubscript_(v764, v469, 1, v471, v472, v473);
      v495 = objc_msgSend_indexAtPosition_(v490, v491, v768, v492, v493, v494);

      if (v495 >= v767)
      {
        v496 = objc_msgSend_objectAtIndexedSubscript_(v764, v250, 1, v252, v253, v254);
        v497 = sub_1837A3654(v496, v768, v495 + 1);
        objc_msgSend_setObject_atIndexedSubscript_(v764, v498, v497, 1, v499, v500);
      }
    }

    v501 = objc_msgSend_transcriptionPaths(v770, v250, v251, v252, v253, v254);
    v507 = objc_msgSend_firstObject(v501, v502, v503, v504, v505, v506);
    v513 = objc_msgSend_count(v759, v508, v509, v510, v511, v512);
    v518 = objc_msgSend_indexAtPosition_(v507, v514, v513, v515, v516, v517);

    v523 = objc_msgSend_objectAtIndexedSubscript_(v789, v519, v518, v520, v521, v522);
    v529 = objc_msgSend_lastObject(v523, v524, v525, v526, v527, v528);

    v535 = objc_msgSend_string(v529, v530, v531, v532, v533, v534);
    v541 = objc_msgSend_lastComposedCharacter(v535, v536, v537, v538, v539, v540);
    v542 = v819[5];
    v819[5] = v541;

    v543 = [CHMutableTokenizedResultColumn alloc];
    v548 = objc_msgSend_initWithTokenRows_(v543, v544, v789, v545, v546, v547);
    objc_msgSend_addObject_(v759, v549, v548, v550, v551, v552);

    ++v768;
  }

  v553 = objc_msgSend_firstObject(v765, v159, v160, v161, v162, v163);
  v559 = objc_msgSend_transcriptionPaths(v770, v554, v555, v556, v557, v558);
  v565 = objc_msgSend_firstObject(v559, v560, v561, v562, v563, v564);
  v570 = objc_msgSend_compare_(v553, v566, v565, v567, v568, v569) == 0;

  v576 = 0x1E695D000uLL;
  if (!v570)
  {
    for (n = 0; n < objc_msgSend_count(v764, v571, v572, v573, v574, v575); ++n)
    {
      v578 = objc_msgSend_objectAtIndexedSubscript_(v764, v571, n, v573, v574, v575);
      objc_msgSend_insertObject_atIndex_(v765, v579, v578, n, v580, v581);

      v587 = objc_msgSend_transcriptionPathScores(v770, v582, v583, v584, v585, v586);
      v593 = objc_msgSend_firstObject(v587, v588, v589, v590, v591, v592);
      objc_msgSend_insertObject_atIndex_(v760, v594, v593, 0, v595, v596);

      v576 = 0x1E695D000;
    }
  }

  objc_msgSend_setTokenColumns_(v770, v571, v759, v573, v574, v575);
  objc_msgSend_setTranscriptionPaths_scores_(v770, v597, v765, v760, v598, v599);
  v794 = objc_msgSend_array(*(v576 + 3952), v600, v601, v602, v603, v604);
  for (ii = 0; ii < objc_msgSend_count(v772, v605, v606, v607, v608, v609); ++ii)
  {
    v615 = objc_msgSend_objectAtIndexedSubscript_(v772, v611, ii, v612, v613, v614);
    v620 = objc_msgSend_objectAtIndexedSubscript_(v615, v616, 1, v617, v618, v619);
    v626 = objc_msgSend_intValue(v620, v621, v622, v623, v624, v625);
    v631 = objc_msgSend_objectAtIndexedSubscript_(v615, v627, 2, v628, v629, v630);
    v637 = objc_msgSend_intValue(v631, v632, v633, v634, v635, v636);

    v642 = objc_msgSend_objectAtIndexedSubscript_(v615, v638, 4, v639, v640, v641);
    LODWORD(v631) = objc_msgSend_intValue(v642, v643, v644, v645, v646, v647) > 0;

    if (v631)
    {
      v652 = objc_msgSend_objectAtIndexedSubscript_(v615, v648, 0, v649, v650, v651);
      v658 = objc_msgSend_intValue(v652, v653, v654, v655, v656, v657);

      v663 = objc_msgSend_objectAtIndexedSubscript_(v615, v659, 3, v660, v661, v662);
      v626 = objc_msgSend_intValue(v663, v664, v665, v666, v667, v668);
      v673 = objc_msgSend_objectAtIndexedSubscript_(v615, v669, 4, v670, v671, v672);
      v637 = objc_msgSend_intValue(v673, v674, v675, v676, v677, v678);

      objc_msgSend_objectAtIndexedSubscript_(obj, v679, v658, v680, v681, v682);
    }

    else
    {
      objc_msgSend_objectAtIndexedSubscript_(obj, v648, a6, v649, v650, v651);
    }
    v683 = ;
    v801[0] = MEMORY[0x1E69E9820];
    v801[1] = 3221225472;
    v801[2] = sub_183805558;
    v801[3] = &unk_1E6DDE720;
    v802 = v794;
    sub_1837F1DB8(v683, v626, v637, v801);

    v576 = 0x1E695D000;
  }

  objc_msgSend_setOriginalTokens_(v770, v611, v794, v612, v613, v614);
  if (v795)
  {
    v689 = objc_msgSend_array(*(v576 + 3952), v684, v685, v686, v687, v688);
    v799 = 0u;
    v800 = 0u;
    v797 = 0u;
    v798 = 0u;
    v695 = objc_msgSend_transcriptionPaths(v770, v690, v691, v692, v693, v694);
    v702 = objc_msgSend_countByEnumeratingWithState_objects_count_(v695, v696, &v797, v832, 16, v697);
    if (v702)
    {
      v703 = *v798;
      do
      {
        for (jj = 0; jj != v702; ++jj)
        {
          if (*v798 != v703)
          {
            objc_enumerationMutation(v695);
          }

          v705 = objc_msgSend_tokensFromTranscriptionPath_(v770, v698, *(*(&v797 + 1) + 8 * jj), v699, v700, v701);
          objc_msgSend_addObject_(v689, v706, v705, v707, v708, v709);
        }

        v702 = objc_msgSend_countByEnumeratingWithState_objects_count_(v695, v698, &v797, v832, 16, v701);
      }

      while (v702);
    }

    v715 = objc_msgSend_inputStrokeIdentifiers(v770, v710, v711, v712, v713, v714);
    v716 = [CHMutableTokenizedTextResult alloc];
    v722 = objc_msgSend_transcriptionPathScores(v770, v717, v718, v719, v720, v721);
    v728 = objc_msgSend_trailingSeparator(v770, v723, v724, v725, v726, v727);
    v734 = objc_msgSend_recognizerGenerationIdentifier(v770, v729, v730, v731, v732, v733);
    v740 = objc_msgSend_originalTokens(v770, v735, v736, v737, v738, v739);
    v742 = objc_msgSend_initWithBestPathTokens_pathProbabilities_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v716, v741, v689, v722, v728, v734, v740);

    objc_msgSend_setInputStrokeIdentifiers_(v742, v743, v715, v744, v745, v746);
    v770 = v742;
  }

  for (kk = 0; kk < objc_msgSend_count(v778, v684, v685, v686, v687, v688); ++kk)
  {
    if (a6 == kk)
    {
      objc_msgSend_addObject_(v762, v748, v770, v749, v750, v751);
    }

    else
    {
      v752 = objc_msgSend_objectAtIndexedSubscript_(v778, v748, kk, v749, v750, v751);
      objc_msgSend_addObject_(v762, v753, v752, v754, v755, v756);
    }
  }

  _Block_object_dispose(&v818, 8);

  return v762;
}

- (id)commonTopStrokeSetsWithResult:(id)a3 shouldReverseOtherColumns:(BOOL)a4
{
  v4 = a4;
  v96 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v18 = objc_msgSend_tokenColumns(self, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v86, v95, 16, v20);
  if (v26)
  {
    v27 = *v87;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v87 != v27)
        {
          objc_enumerationMutation(v18);
        }

        v29 = objc_msgSend_strokeIndexes(*(*(&v86 + 1) + 8 * i), v21, v22, v23, v24, v25);
        objc_msgSend_addObject_(v12, v30, v29, v31, v32, v33);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v86, v95, 16, v25);
    }

    while (v26);
  }

  v39 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35, v36, v37, v38);
  objc_msgSend_tokenColumns(v6, v40, v41, v42, v43, v44);
  if (v4)
    v45 = {;
    objc_msgSend_reverseObjectEnumerator(v45, v46, v47, v48, v49, v50);
  }

  else
    v45 = {;
    objc_msgSend_objectEnumerator(v45, v51, v52, v53, v54, v55);
  }
  v56 = ;

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v57 = v56;
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v82, v94, 16, v59);
  if (v65)
  {
    v66 = *v83;
    do
    {
      for (j = 0; j != v65; ++j)
      {
        if (*v83 != v66)
        {
          objc_enumerationMutation(v57);
        }

        v68 = objc_msgSend_strokeIndexes(*(*(&v82 + 1) + 8 * j), v60, v61, v62, v63, v64, v82);
        objc_msgSend_addObject_(v39, v69, v68, v70, v71, v72);
      }

      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v60, &v82, v94, 16, v64);
    }

    while (v65);
  }

  v73 = sub_1837A7B08(v12, v39);
  if (objc_msgSend_count(v73, v74, v75, v76, v77, v78))
  {
    v79 = v73;
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v80 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v91 = v12;
      v92 = 2112;
      v93 = v39;
      _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_ERROR, "Unexpected failure to find common stroke sets between top stroke sets %@ and other stroke sets %@.", buf, 0x16u);
    }

    v79 = 0;
  }

  return v79;
}

- (id)tokenizedTextResultByAppendingTokenizedTextResult:(id)a3 shouldForceSpace:(BOOL)a4
{
  v5 = a3;
  v214 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v213 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v21 = objc_msgSend_strokeIndexes(self, v16, v17, v18, v19, v20);
  v211 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);

  v210 = 0;
  for (i = self; ; self = i)
  {
    v32 = objc_msgSend_transcriptionPaths(self, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_count(v32, v33, v34, v35, v36, v37);

    if (v210 >= v38)
    {
      break;
    }

    v44 = objc_msgSend_transcriptionPaths(self, v39, v40, v41, v42, v43);
    v49 = objc_msgSend_objectAtIndexedSubscript_(v44, v45, v210, v46, v47, v48);

    v209 = v49;
    v55 = objc_msgSend_transcriptionPathScores(self, v50, v51, v52, v53, v54);
    v60 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, v210, v57, v58, v59);
    objc_msgSend_floatValue(v60, v61, v62, v63, v64, v65);
    v67 = v66;

    v73 = objc_msgSend_tokenColumnCount(self, v68, v69, v70, v71, v72);
    v75 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(self, v74, v209, 0, v73, 0);
    v215 = objc_msgSend_tokensFromTranscriptionPath_(self, v76, v209, v77, v78, v79);
    v85 = 0;
    v86 = v67;
    while (1)
    {
      v87 = objc_msgSend_transcriptionPaths(v5, v80, v81, v82, v83, v84);
      v93 = objc_msgSend_count(v87, v88, v89, v90, v91, v92);

      if (v85 >= v93)
      {
        break;
      }

      v99 = objc_msgSend_transcriptionPaths(v5, v94, v95, v96, v97, v98);
      v104 = objc_msgSend_objectAtIndexedSubscript_(v99, v100, v85, v101, v102, v103);

      v110 = objc_msgSend_transcriptionPathScores(v5, v105, v106, v107, v108, v109);
      v115 = objc_msgSend_objectAtIndexedSubscript_(v110, v111, v85, v112, v113, v114);
      objc_msgSend_floatValue(v115, v116, v117, v118, v119, v120);
      v122 = v121;

      v128 = objc_msgSend_tokenColumnCount(v5, v123, v124, v125, v126, v127);
      v130 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v5, v129, v104, 0, v128, 0);
      v135 = objc_msgSend_stringByAppendingString_(v75, v131, v130, v132, v133, v134);
      v141 = objc_msgSend_mutableCopy(v215, v136, v137, v138, v139, v140);
      v147 = objc_msgSend_tokenColumnCount(v5, v142, v143, v144, v145, v146);
      v216[0] = MEMORY[0x1E69E9820];
      v216[1] = 3221225472;
      v216[2] = sub_183805F28;
      v216[3] = &unk_1E6DDEB38;
      v220 = v211;
      v221 = a4;
      v217 = v75;
      v148 = v135;
      v218 = v148;
      v149 = v141;
      v219 = v149;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v5, v150, v104, 0, v147, v216);
      v156 = objc_msgSend_copy(v149, v151, v152, v153, v154, v155);
      objc_msgSend_addObject_(v214, v157, v156, v158, v159, v160);

      v166 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v161, v162, v163, v164, v165, v86 * v122);
      objc_msgSend_addObject_(v213, v167, v166, v168, v169, v170);

      ++v85;
    }

    ++v210;
  }

  v171 = objc_msgSend_inputStrokeIdentifiers(self, v39, v40, v41, v42, v43);
  v177 = objc_msgSend_inputStrokeIdentifiers(v5, v172, v173, v174, v175, v176);
  v182 = objc_msgSend_arrayByAddingObjectsFromArray_(v171, v178, v177, v179, v180, v181);

  v188 = objc_msgSend_originalTokens(self, v183, v184, v185, v186, v187);
  v194 = objc_msgSend_originalTokens(v5, v189, v190, v191, v192, v193);
  v199 = objc_msgSend_arrayByAddingObjectsFromArray_(v188, v195, v194, v196, v197, v198);

  v200 = [CHTokenizedTextResult alloc];
  v202 = objc_msgSend_initWithBestPathTokens_pathProbabilities_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v200, v201, v214, v213, &stru_1EF1C0318, 2, v199);
  objc_msgSend_setInputStrokeIdentifiers_(v202, v203, v182, v204, v205, v206);

  return v202;
}

@end