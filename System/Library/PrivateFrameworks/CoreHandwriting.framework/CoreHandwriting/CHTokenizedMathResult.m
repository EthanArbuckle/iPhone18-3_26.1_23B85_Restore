@interface CHTokenizedMathResult
+ (BOOL)areTokenRowsEquivalent:(id)a3 otherRow:(id)a4;
+ (BOOL)doesLatexContainEvaluationTrigger:(id)a3;
+ (BOOL)hasPartialRangeDataDetectorEntries:(id)a3;
+ (BOOL)isMathUnitConversionPatternForTextTranscription:(id)a3 locales:(id)a4;
+ (BOOL)isNonTextCandidateTextTranscription:(id)a3;
+ (BOOL)isPartialMathUnitConversionPatternForTextTranscription:(id)a3 locales:(id)a4;
+ (BOOL)isPatternedTextForTextTranscription:(id)a3 locales:(id)a4;
+ (BOOL)isTextTranscriptionInMathAlphabet:(id)a3;
+ (BOOL)isTranscriptionValidExpression:(id)a3 limitToCurrentLocale:(BOOL)a4 declaredVariables:(id)a5;
+ (BOOL)isTranscriptionValidExpression:(id)a3 transcriptionPath:(id)a4 limitToCurrentLocale:(BOOL)a5 requireDeclaredVariables:(BOOL)a6;
+ (BOOL)isTrivialTextTranscriptionAvailableForLatex:(id)a3;
+ (BOOL)isVerticalMathEntryWithUnitForTextTranscription:(id)a3 locales:(id)a4;
+ (CHTokenizedMathResult)mathResultWithMergedColumns:(id)a3 columnRangesToMerge:(id)a4;
+ (CHTokenizedMathResult)mathResultWithReindexedTokens:(id)a3 originalStrokeIdentifiersOrdering:(id)a4 newStrokeIdentifiersOrdering:(id)a5;
+ (id)declaredVariableInLatexTranscription:(id)a3;
+ (id)simplifiedTextTranscriptionForLatex:(id)a3;
+ (id)textTranscriptionForLatex:(id)a3;
+ (id)updateStrokeIndexOffsetForSubResults:(id)a3 fromResult:(id)a4;
+ (int64_t)mergeTokenRow:(id)a3 intoUniqueRows:(id)a4;
- (BOOL)hasLowConfidence;
- (BOOL)hasValidColumns;
- (BOOL)hasValidPaths;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTokenizedMathResult:(id)a3;
- (BOOL)isEquivalentToTokenizedMathResult:(id)a3;
- (BOOL)isEvaluationExpected;
- (BOOL)isValid;
- (BOOL)transformNotationToInternal;
- (CGRect)bounds;
- (CHTokenizedMathResult)initWithBestPathTokens:(id)a3 isMinimalDrawingResult:(BOOL)a4;
- (CHTokenizedMathResult)initWithCoder:(id)a3;
- (CHTokenizedMathResult)initWithSegmentedBestPathTokens:(id)a3;
- (NSArray)symbolBounds;
- (NSArray)symbolStrokeIndexes;
- (double)absoluteProbability;
- (double)averageTokenScoreForColumnRange:(_NSRange)a3;
- (double)baseCharacterHeight;
- (double)geometricMeanTokenScoreForColumnRange:(_NSRange)a3 transcriptionPath:(id)a4;
- (double)score;
- (id)alternativeCandidatesLog;
- (id)debugDescription;
- (id)declaredVariable;
- (id)description;
- (id)evaluationWithVariables:(id)a3 caseSensitive:(BOOL)a4;
- (id)newResultWithScrubbedStrokes:(id)a3 scrubbedValueTokens:(id)a4 scrubbedValueStrokeIndexes:(id)a5 scrubbedValueDrawing:(id)a6;
- (id)parseTree;
- (id)preferredTranscription;
- (id)renderableLatexCandidatesForColumnIndex:(unint64_t)a3;
- (id)resultTransformedToOfficialNotationWithExplicitOperators:(BOOL)a3;
- (id)strokeIndexes;
- (id)strokeIndexesForColumnsInRange:(_NSRange)a3;
- (id)tokenAtLocation:(id *)a3;
- (id)tokenRowsAtColumnIndex:(int64_t)a3;
- (id)tokenizedMathResultByAppendingTokenizedMathResult:(id)a3;
- (id)tokensInTranscriptionPath:(id)a3 atColumnIndex:(int64_t)a4;
- (id)topTranscription;
- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateTokensInPreferredTranscriptionPathWithBlock:(id)a3;
- (void)enumerateTokensInTopTranscriptionPathWithBlock:(id)a3;
- (void)enumerateTokensInTranscriptionPath:(id)a3 columnRange:(_NSRange)a4 tokenProcessingBlock:(id)a5;
- (void)setDeclaredVariablesWhileRecognized:(id)a3;
- (void)setSelectedTranscriptionPathIndex:(id)a3;
@end

@implementation CHTokenizedMathResult

- (CHTokenizedMathResult)initWithBestPathTokens:(id)a3 isMinimalDrawingResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v34.receiver = self;
  v34.super_class = CHTokenizedMathResult;
  v7 = [(CHTokenizedResult *)&v34 initWithIsMinimalDrawingResult:v4];
  if (v7)
  {
    v32 = 0;
    v33 = 0;
    sub_1837C2000(CHTokenizedMathResult, v6, &v33, &v32);
    v8 = v33;
    v9 = v33;
    v10 = v32;
    v11 = v32;
    if (objc_msgSend_count(v9, v12, v13, v14, v15, v16))
    {
      objc_storeStrong(&v7->_tokenColumns, v8);
      objc_storeStrong(&v7->_transcriptionPaths, v10);
      v7->_baseCharacterHeight = -1.0;
      v22 = objc_msgSend_set(MEMORY[0x1E695DFD8], v17, v18, v19, v20, v21);
      declaredVariablesWhileRecognized = v7->_declaredVariablesWhileRecognized;
      v7->_declaredVariablesWhileRecognized = v22;

      sub_1837C1BBC(v7, v24, v25, v26, v27, v28);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v29 = qword_1EA84DC58;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31[0] = 0;
        _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_ERROR, "Trying to initialize tokenized math result with no columns. Returning nil instead.", v31, 2u);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (CHTokenizedMathResult)initWithSegmentedBestPathTokens:(id)a3
{
  v120 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v106 = self;
  v108 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v107 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  for (i = 0; i < objc_msgSend_count(v4, v15, v16, v17, v18, v19); ++i)
  {
    if (i)
    {
      v26 = objc_msgSend_array(MEMORY[0x1E695DF70], v21, v22, v23, v24, v25);
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      obj = v107;
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v114, v119, 16, v28);
      if (v33)
      {
        v34 = *v115;
        do
        {
          v35 = 0;
          do
          {
            if (*v115 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = 0;
            v37 = *(*(&v114 + 1) + 8 * v35);
            while (1)
            {
              v38 = objc_msgSend_objectAtIndexedSubscript_(v4, v29, i, v30, v31, v32);
              v44 = v36 < objc_msgSend_count(v38, v39, v40, v41, v42, v43);

              if (!v44)
              {
                break;
              }

              v45 = objc_msgSend_indexPathByAddingIndex_(v37, v29, v36, v30, v31, v32);
              objc_msgSend_addObject_(v26, v46, v45, v47, v48, v49);

              ++v36;
            }

            ++v35;
          }

          while (v35 != v33);
          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v114, v119, 16, v32);
        }

        while (v33);
      }

      v107 = v26;
    }

    else
    {
      for (j = 0; ; ++j)
      {
        v51 = objc_msgSend_objectAtIndexedSubscript_(v4, v21, 0, v23, v24, v25);
        v57 = j < objc_msgSend_count(v51, v52, v53, v54, v55, v56);

        if (!v57)
        {
          break;
        }

        v58 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v15, j, v17, v18, v19);
        objc_msgSend_addObject_(v107, v59, v58, v60, v61, v62);
      }
    }
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v63 = v107;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v110, v118, 16, v65);
  if (v71)
  {
    v72 = *v111;
    do
    {
      v73 = 0;
      do
      {
        if (*v111 != v72)
        {
          objc_enumerationMutation(v63);
        }

        v74 = *(*(&v110 + 1) + 8 * v73);
        v80 = objc_msgSend_array(MEMORY[0x1E695DF70], v66, v67, v68, v69, v70);
        for (k = 0; k < objc_msgSend_length(v74, v75, v76, v77, v78, v79); ++k)
        {
          v86 = objc_msgSend_indexAtPosition_(v74, v82, k, v83, v84, v85);
          v91 = objc_msgSend_objectAtIndexedSubscript_(v4, v87, k, v88, v89, v90);
          v96 = objc_msgSend_objectAtIndexedSubscript_(v91, v92, v86, v93, v94, v95);
          objc_msgSend_addObjectsFromArray_(v80, v97, v96, v98, v99, v100);
        }

        objc_msgSend_addObject_(v108, v82, v80, v83, v84, v85);

        ++v73;
      }

      while (v73 != v71);
      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v110, v118, 16, v70);
    }

    while (v71);
  }

  isMinimalDrawingResult = objc_msgSend_initWithBestPathTokens_isMinimalDrawingResult_(v106, v101, v108, 0, v102, v103);
  return isMinimalDrawingResult;
}

- (id)newResultWithScrubbedStrokes:(id)a3 scrubbedValueTokens:(id)a4 scrubbedValueStrokeIndexes:(id)a5 scrubbedValueDrawing:(id)a6
{
  v140 = *MEMORY[0x1E69E9840];
  v112 = a3;
  v9 = a4;
  v114 = a5;
  v113 = a6;
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);
  if (v15 != objc_msgSend_count(v114, v16, v17, v18, v19, v20))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v26 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v137 = objc_msgSend_count(v9, v27, v28, v29, v30, v31);
      v138 = 2048;
      v139 = objc_msgSend_count(v114, v32, v33, v34, v35, v36);
      _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_ERROR, "Number of strings (%lu) doesn't match number of segments (%lu) of the provided scrubbed value.", buf, 0x16u);
    }
  }

  v37 = objc_msgSend_count(v9, v21, v22, v23, v24, v25);
  if (v37 != objc_msgSend_count(v114, v38, v39, v40, v41, v42))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v43 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      v49 = objc_msgSend_count(v9, v44, v45, v46, v47, v48);
      v55 = objc_msgSend_count(v114, v50, v51, v52, v53, v54);
      *buf = 134218240;
      v137 = v49;
      v138 = 2048;
      v139 = v55;
      _os_log_impl(&dword_18366B000, v43, OS_LOG_TYPE_FAULT, "Number of strings (%lu) doesn't match number of segments (%lu) of the provided scrubbed value.", buf, 0x16u);
    }
  }

  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 1;
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x2020000000;
  v130 = 0;
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x2020000000;
  v128 = 0;
  sub_183686CCC(buf);
  Index = objc_msgSend_firstIndex(v112, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_strokeCount(v113, v62, v63, v64, v65, v66);
  v73 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v68, v69, v70, v71, v72);
  v79 = objc_msgSend_array(MEMORY[0x1E695DF70], v74, v75, v76, v77, v78);
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3321888768;
  v115[2] = sub_1837C46A0;
  v115[3] = &unk_1EF1BE148;
  v122 = &v131;
  v80 = v112;
  v116 = v80;
  v123 = v129;
  v81 = v9;
  v117 = v81;
  v82 = v114;
  v118 = v82;
  v125 = Index;
  v83 = v113;
  v119 = v83;
  sub_1837D2370(v126, buf);
  v84 = v79;
  v120 = v84;
  v85 = v73;
  v121 = v85;
  v124 = v127;
  v126[60] = v67;
  objc_msgSend_enumerateTokensInPreferredTranscriptionPathWithBlock_(self, v86, v115, v87, v88, v89);
  if (*(v132 + 24) == 1)
  {
    v90 = [CHTokenizedMathResult alloc];
    v135 = v84;
    v94 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, &v135, 1, v92, v93);
    v99 = objc_msgSend_initWithBestPathTokens_(v90, v95, v94, v96, v97, v98);

    v105 = objc_msgSend_declaredVariablesWhileRecognized(self, v100, v101, v102, v103, v104);
    objc_msgSend_setDeclaredVariablesWhileRecognized_(v99, v106, v105, v107, v108, v109);
  }

  else
  {
    v99 = 0;
  }

  sub_183686934(v126);
  sub_183686934(buf);
  _Block_object_dispose(v127, 8);
  _Block_object_dispose(v129, 8);
  _Block_object_dispose(&v131, 8);

  return v99;
}

+ (BOOL)areTokenRowsEquivalent:(id)a3 otherRow:(id)a4
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v84 = a4;
  v86 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7, v8, v9, v10, v5);
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v5;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v91, v96, 16, v12);
  if (v18)
  {
    v19 = *v92;
    v20 = &stru_1EF1C0318;
    do
    {
      v21 = 0;
      v22 = v20;
      do
      {
        if (*v92 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v91 + 1) + 8 * v21);
        v24 = objc_msgSend_string(v23, v13, v14, v15, v16, v17);
        v20 = objc_msgSend_stringByAppendingString_(v22, v25, v24, v26, v27, v28);

        v34 = objc_msgSend_strokeIndexes(v23, v29, v30, v31, v32, v33);
        objc_msgSend_addIndexes_(v86, v35, v34, v36, v37, v38);

        ++v21;
        v22 = v20;
      }

      while (v18 != v21);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v91, v96, 16, v17);
    }

    while (v18);
  }

  else
  {
    v20 = &stru_1EF1C0318;
  }

  v44 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v39, v40, v41, v42, v43);
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v45 = v84;
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v87, v95, 16, v47);
  if (v53)
  {
    v54 = *v88;
    v55 = &stru_1EF1C0318;
    do
    {
      v56 = 0;
      v57 = v55;
      do
      {
        if (*v88 != v54)
        {
          objc_enumerationMutation(v45);
        }

        v58 = *(*(&v87 + 1) + 8 * v56);
        v59 = objc_msgSend_string(v58, v48, v49, v50, v51, v52);
        v55 = objc_msgSend_stringByAppendingString_(v57, v60, v59, v61, v62, v63);

        v69 = objc_msgSend_strokeIndexes(v58, v64, v65, v66, v67, v68);
        objc_msgSend_addIndexes_(v44, v70, v69, v71, v72, v73);

        ++v56;
        v57 = v55;
      }

      while (v53 != v56);
      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v87, v95, 16, v52);
    }

    while (v53);
  }

  else
  {
    v55 = &stru_1EF1C0318;
  }

  if (objc_msgSend_isEqualToString_(v20, v74, v55, v75, v76, v77))
  {
    isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v86, v78, v44, v79, v80, v81);
  }

  else
  {
    isEqualToIndexSet = 0;
  }

  return isEqualToIndexSet;
}

+ (int64_t)mergeTokenRow:(id)a3 intoUniqueRows:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0;
  for (i = objc_msgSend_count(v6, v8, v9, v10, v11, v12); v7 < i; i = objc_msgSend_count(v6, v18, v19, v20, v21, v22))
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v6, v14, v7, v15, v16, v17);
    if (objc_msgSend_areTokenRowsEquivalent_otherRow_(CHTokenizedMathResult, v24, v5, v23, v25, v26))
    {
      v32 = objc_msgSend_count(v23, v27, v28, v29, v30, v31);
      if (v32 != objc_msgSend_count(v5, v33, v34, v35, v36, v37))
      {
        goto LABEL_16;
      }

      v48 = objc_msgSend_array(MEMORY[0x1E695DF70], v38, v39, v40, v41, v42);
      for (j = 0; j < objc_msgSend_count(v5, v43, v44, v45, v46, v47); ++j)
      {
        v54 = objc_msgSend_objectAtIndexedSubscript_(v5, v50, j, v51, v52, v53);
        v59 = objc_msgSend_objectAtIndexedSubscript_(v23, v55, j, v56, v57, v58);
        isEquivalentToToken = objc_msgSend_isEquivalentToToken_(v54, v60, v59, v61, v62, v63);

        if (!isEquivalentToToken)
        {

          goto LABEL_3;
        }

        v69 = objc_msgSend_objectAtIndexedSubscript_(v5, v65, j, v66, v67, v68);
        objc_msgSend_score(v69, v70, v71, v72, v73, v74);
        v76 = v75;
        v81 = objc_msgSend_objectAtIndexedSubscript_(v23, v77, j, v78, v79, v80);
        objc_msgSend_score(v81, v82, v83, v84, v85, v86);
        v88 = v87;

        if (v76 <= v88)
        {
          objc_msgSend_objectAtIndexedSubscript_(v23, v89, j, v90, v91, v92);
        }

        else
        {
          objc_msgSend_objectAtIndexedSubscript_(v5, v89, j, v90, v91, v92);
        }
        v93 = ;
        objc_msgSend_addObject_(v48, v94, v93, v95, v96, v97);
      }

      if (v48)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v6, v50, v48, v7, v52, v53);

LABEL_16:
        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_18;
        }

        break;
      }
    }

LABEL_3:

    ++v7;
  }

  objc_msgSend_addObject_(v6, v14, v5, v15, v16, v17);
  v7 = objc_msgSend_count(v6, v98, v99, v100, v101, v102) - 1;
LABEL_18:

  return v7;
}

- (CHTokenizedMathResult)initWithCoder:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v83.receiver = self;
  v83.super_class = CHTokenizedMathResult;
  v5 = [(CHTokenizedResult *)&v83 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v6, v9, v7, v10, v11, v12, v8, 0);
    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v14, v13, @"tokenColumns", v15, v16);
    tokenColumns = v5->_tokenColumns;
    v5->_tokenColumns = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v26 = objc_msgSend_setWithObjects_(v19, v22, v20, v23, v24, v25, v21, 0);
    v30 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v27, v26, @"transcriptionPaths", v28, v29);
    transcriptionPaths = v5->_transcriptionPaths;
    v5->_transcriptionPaths = v30;

    v32 = objc_opt_class();
    v36 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v33, v32, @"selectedTranscriptionPathIndex", v34, v35);
    selectedTranscriptionPathIndex = v5->_selectedTranscriptionPathIndex;
    v5->_selectedTranscriptionPathIndex = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v45 = objc_msgSend_setWithObjects_(v38, v41, v39, v42, v43, v44, v40, 0);
    v49 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v46, v45, @"declaredVariablesWhileRecognized", v47, v48);
    declaredVariablesWhileRecognized = v5->_declaredVariablesWhileRecognized;
    v5->_declaredVariablesWhileRecognized = v49;

    v5->_baseCharacterHeight = -1.0;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v51 = v5->_tokenColumns;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v79, v84, 16, v53);
    if (v59)
    {
      v60 = *v80;
      while (2)
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v80 != v60)
          {
            objc_enumerationMutation(v51);
          }

          v62 = objc_msgSend_tokenRows(*(*(&v79 + 1) + 8 * i), v54, v55, v56, v57, v58);
          v68 = objc_msgSend_count(v62, v63, v64, v65, v66, v67) == 0;

          if (v68)
          {
            v69 = 0;
            goto LABEL_12;
          }
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v54, &v79, v84, 16, v58);
        if (v59)
        {
          continue;
        }

        break;
      }
    }

    v69 = 1;
LABEL_12:

    if (!v5->_tokenColumns)
    {
      goto LABEL_17;
    }

    v75 = v69 ^ 1;
    if (!v5->_transcriptionPaths)
    {
      v75 = 1;
    }

    if (v75)
    {
LABEL_17:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v76 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v76, OS_LOG_TYPE_ERROR, "CHTokenizedMathResult decoding failed. Token columns and transcription paths are required to be nonnull when constructing a text result.", buf, 2u);
      }

      v5 = 0;
    }

    else
    {
      sub_1837C1BBC(v5, v70, v71, v72, v73, v74);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CHTokenizedMathResult;
  [(CHTokenizedResult *)&v17 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_tokenColumns, @"tokenColumns", v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v8, self->_transcriptionPaths, @"transcriptionPaths", v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v11, self->_selectedTranscriptionPathIndex, @"selectedTranscriptionPathIndex", v12, v13);
  objc_msgSend_encodeObject_forKey_(v4, v14, self->_declaredVariablesWhileRecognized, @"declaredVariablesWhileRecognized", v15, v16);
}

- (id)description
{
  v41.receiver = self;
  v41.super_class = CHTokenizedMathResult;
  v3 = [(CHTokenizedResult *)&v41 description];
  v9 = objc_msgSend_firstObject(self->_transcriptionPathScores, v4, v5, v6, v7, v8);
  objc_msgSend_floatValue(v9, v10, v11, v12, v13, v14);
  v16 = v15;
  v22 = objc_msgSend_strokeIndexes(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_debugDescription(v22, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_preferredTranscription(self, v29, v30, v31, v32, v33);
  v39 = objc_msgSend_stringByAppendingFormat_(v3, v35, @" Score = %.2f, Strokes: %@ \n Latex: %@", v36, v37, v38, v16, v28, v34);

  return v39;
}

- (id)debugDescription
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_description(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_stringByAppendingString_(v7, v8, @"\nTranscription candidates:\n", v9, v10, v11);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = objc_msgSend_transcriptionPaths(self, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v40, v44, 16, v20);
  if (v26)
  {
    v27 = *v41;
    do
    {
      v28 = 0;
      v29 = v12;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v18);
        }

        v30 = *(*(&v40 + 1) + 8 * v28);
        v31 = objc_msgSend_tokenColumnCount(self, v21, v22, v23, v24, v25);
        v34 = objc_msgSend_transcriptionWithPath_columnRange_(self, v32, v30, 0, v31, v33);
        v12 = objc_msgSend_stringByAppendingFormat_(v29, v35, @"\n%@", v36, v37, v38, v34);

        ++v28;
        v29 = v12;
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v40, v44, 16, v25);
    }

    while (v26);
  }

  return v12;
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
  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_mathTokenRows(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)tokensInTranscriptionPath:(id)a3 atColumnIndex:(int64_t)a4
{
  v8 = objc_msgSend_indexAtPosition_(a3, a2, a4, a4, v4, v5);
  v13 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v9, a4, v10, v11, v12);
  v19 = objc_msgSend_mathTokenRows(v13, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v8, v21, v22, v23);

  return v24;
}

- (id)tokenAtLocation:(id *)a3
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, a2, a3->var0, v3, v4, v5);
  v13 = objc_msgSend_mathTokenRows(v7, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, a3->var1, v15, v16, v17);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, a3->var2, v20, v21, v22);

  return v23;
}

- (NSArray)symbolStrokeIndexes
{
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1837C6334;
  v14[3] = &unk_1E6DDBDA0;
  v8 = v7;
  v15 = v8;
  objc_msgSend_enumerateTokensInPreferredTranscriptionPathWithBlock_(self, v9, v14, v10, v11, v12);

  return v8;
}

- (NSArray)symbolBounds
{
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1837C6468;
  v14[3] = &unk_1E6DDBDA0;
  v8 = v7;
  v15 = v8;
  objc_msgSend_enumerateTokensInPreferredTranscriptionPathWithBlock_(self, v9, v14, v10, v11, v12);

  return v8;
}

- (double)score
{
  v7 = objc_msgSend_tokenColumnCount(self, a2, v2, v3, v4, v5);

  MEMORY[0x1EEE66B58](self, sel_geometricMeanTokenScoreForColumnRange_, 0, v7, v8, v9);
  return result;
}

- (double)absoluteProbability
{
  v7 = objc_msgSend_tokenColumnCount(self, a2, v2, v3, v4, v5);

  MEMORY[0x1EEE66B58](self, sel_scoreForColumnRange_, 0, v7, v8, v9);
  return result;
}

- (BOOL)hasLowConfidence
{
  if (qword_1EA84C960 != -1)
  {
    v8 = self;
    dispatch_once(&qword_1EA84C960, &unk_1EF1BE178);
    self = v8;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x3FF0000000000000;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1837C6760;
  v9[3] = &unk_1E6DDE458;
  v9[4] = &v22;
  v9[5] = &v18;
  v9[6] = &v14;
  v9[7] = &v10;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(self, a2, v9, v2, v3, v4);
  v5 = exp(v19[3] / v23[3]);
  v6 = 1;
  if ((v11[3] & 1) == 0 && v5 >= 0.35)
  {
    v6 = v15[3] < 0.001;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v6;
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

- (double)averageTokenScoreForColumnRange:(_NSRange)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v42 = a3.location + a3.length;
  if (a3.location >= a3.location + a3.length)
  {
    result = NAN;
  }

  else
  {
    location = a3.location;
    v6 = 0;
    v7 = 0.0;
    do
    {
      v44 = v6;
      v8 = objc_msgSend_tokenRowsAtColumnIndex_(self, a2, location, a3.length, v3, v4);
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v9 = v8;
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v49, v54, 16, v11);
      if (v12)
      {
        v13 = *v50;
        v14 = 0.0;
        v15 = 1;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v50 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v49 + 1) + 8 * i);
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v18 = v17;
            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v45, v53, 16, v20);
            if (v26)
            {
              v27 = *v46;
              v28 = 0.0;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v46 != v27)
                  {
                    objc_enumerationMutation(v18);
                  }

                  objc_msgSend_score(*(*(&v45 + 1) + 8 * j), v21, v22, v23, v24, v25);
                  v28 = v28 + v30;
                }

                v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v45, v53, 16, v25);
              }

              while (v26);
            }

            else
            {
              v28 = 0.0;
            }

            if (v28 / objc_msgSend_count(v18, v31, v32, v33, v34, v35) > v14 / v15)
            {
              v15 = objc_msgSend_count(v18, v36, v37, v38, v39, v40);
              v14 = v28;
            }
          }

          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v36, &v49, v54, 16, v40);
        }

        while (v12);
      }

      else
      {
        v14 = 0.0;
        v15 = 1;
      }

      v7 = v7 + v14;
      v6 = v15 + v44;
      ++location;
    }

    while (location != v42);
    result = v7 / v6;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (double)geometricMeanTokenScoreForColumnRange:(_NSRange)a3 transcriptionPath:(id)a4
{
  length = a3.length;
  location = a3.location;
  v100 = *MEMORY[0x1E69E9840];
  v84 = a4;
  v80 = location + length;
  if (location >= location + length)
  {
    v76 = NAN;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v16 = objc_msgSend_tokenRowsAtColumnIndex_(self, v6, location, v7, v8, v9);
      v82 = v10;
      v83 = v16;
      if (v84 && (v17 = objc_msgSend_indexAtPosition_(v84, v12, location, v13, v14, v15), v17 < objc_msgSend_count(v16, v18, v19, v20, v21, v22)))
      {
        v27 = objc_msgSend_indexAtPosition_(v84, v23, location, v24, v25, v26);
        v32 = objc_msgSend_objectAtIndexedSubscript_(v16, v28, v27, v29, v30, v31);
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v33 = v32;
        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v93, v99, 16, v35);
        if (v41)
        {
          v42 = *v94;
          v43 = 0.0;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v94 != v42)
              {
                objc_enumerationMutation(v33);
              }

              objc_msgSend_score(*(*(&v93 + 1) + 8 * i), v36, v37, v38, v39, v40);
              v43 = v43 + log(v45);
            }

            v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v93, v99, 16, v40);
          }

          while (v41);
        }

        else
        {
          v43 = 0.0;
        }

        v50 = objc_msgSend_count(v33, v71, v72, v73, v74, v75);
      }

      else
      {
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v33 = v16;
        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v46, &v89, v98, 16, v47);
        if (v48)
        {
          v49 = *v90;
          v50 = 0x7FFFFFFFFFFFFFFFLL;
          v43 = -3.40282347e38;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v90 != v49)
              {
                objc_enumerationMutation(v33);
              }

              v52 = *(*(&v89 + 1) + 8 * j);
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v53 = v52;
              v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v85, v97, 16, v55);
              if (v61)
              {
                v62 = *v86;
                v63 = 0.0;
                do
                {
                  for (k = 0; k != v61; ++k)
                  {
                    if (*v86 != v62)
                    {
                      objc_enumerationMutation(v53);
                    }

                    objc_msgSend_score(*(*(&v85 + 1) + 8 * k), v56, v57, v58, v59, v60);
                    v63 = v63 + log(v65);
                  }

                  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v85, v97, 16, v60);
                }

                while (v61);
              }

              else
              {
                v63 = 0.0;
              }

              if (v63 > v43)
              {
                v50 = objc_msgSend_count(v53, v66, v67, v68, v69, v70);
                v43 = v63;
              }
            }

            v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v66, &v89, v98, 16, v70);
          }

          while (v48);
        }

        else
        {
          v50 = 0x7FFFFFFFFFFFFFFFLL;
          v43 = -3.40282347e38;
        }
      }

      v11 = v11 + v43;
      v10 = v50 + v82;
      ++location;
    }

    while (location != v80);
    v76 = v11 / v10;
  }

  v77 = exp(v76);
  if (v77 <= 1.0)
  {
    v78 = v77;
  }

  else
  {
    v78 = 1.0;
  }

  return v78;
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
    v25 = objc_msgSend_mathTokenRows(v19, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
    v8 = v31 != 0;

    v36 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v32, 0, v33, v34, v35);
    v42 = objc_msgSend_mathTokenRows(v36, v37, v38, v39, v40, v41);
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
      v61 = objc_msgSend_mathTokenRows(v55, v56, v57, v58, v59, v60);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, 0, v63, v64, v65);
      v8 = objc_msgSend_count(v66, v67, v68, v69, v70, v71) != 0;

      v76 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v72, 0, v73, v74, v75);
      v82 = objc_msgSend_mathTokenRows(v76, v77, v78, v79, v80, v81);
      objc_msgSend_count(v82, v83, v84, v85, v86, v87);
    }

    objc_msgSend_count(self->_tokenColumns, v49, v50, v51, v52, v53);
  }

  return v8;
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

- (void)setDeclaredVariablesWhileRecognized:(id)a3
{
  v4 = a3;
  if (self->_declaredVariablesWhileRecognized != v4)
  {
    v12 = v4;
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8, v9);
    declaredVariablesWhileRecognized = self->_declaredVariablesWhileRecognized;
    self->_declaredVariablesWhileRecognized = v10;

    v4 = v12;
  }
}

- (id)topTranscription
{
  v7 = objc_msgSend_firstObject(self->_transcriptionPaths, a2, v2, v3, v4, v5);
  v13 = v7;
  if (v7 && (v14 = objc_msgSend_length(v7, v8, v9, v10, v11, v12), objc_msgSend_transcriptionWithPath_columnRange_(self, v15, v13, 0, v14, v16), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    v18 = v17;
  }

  else
  {

    v18 = &stru_1EF1C0318;
  }

  return v18;
}

- (id)preferredTranscription
{
  v51 = *MEMORY[0x1E69E9840];
  v12 = objc_msgSend_selectedTranscriptionPathIndex(self, a2, v2, v3, v4, v5);
  if (v12 && (objc_msgSend_selectedTranscriptionPathIndex(self, v7, v8, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_integerValue(v13, v14, v15, v16, v17, v18), v13, v12, v19))
  {
    v20 = objc_msgSend_selectedTranscriptionPathIndex(self, v7, v8, v9, v10, v11);
    v26 = objc_msgSend_integerValue(v20, v21, v22, v23, v24, v25);

    if (v26 < 1 || v26 >= objc_msgSend_count(self->_transcriptionPaths, v27, v28, v29, v30, v31))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v48 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = 134217984;
        v50 = v26;
        _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_ERROR, "Invalid selected transcription path index %lu. Returning empty string.", &v49, 0xCu);
      }

      v46 = &stru_1EF1C0318;
    }

    else
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(self->_transcriptionPaths, v32, v26, v33, v34, v35);
      v42 = objc_msgSend_length(v36, v37, v38, v39, v40, v41);
      v45 = objc_msgSend_transcriptionWithPath_columnRange_(self, v43, v36, 0, v42, v44);

      v46 = v45;
    }
  }

  else
  {
    v46 = objc_msgSend_topTranscription(self, v7, v8, v9, v10, v11);
  }

  return v46;
}

- (id)transcriptionWithPath:(id)a3 columnRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1837C789C;
  v22[3] = &unk_1E6DDBDA0;
  v14 = v13;
  v23 = v14;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v15, v7, location, length, v22);
  v20 = objc_msgSend_componentsJoinedByString_(v14, v16, @" ", v17, v18, v19);

  return v20;
}

- (void)setSelectedTranscriptionPathIndex:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = v4;
  if (!v4)
  {
    selectedTranscriptionPathIndex = self->_selectedTranscriptionPathIndex;
    self->_selectedTranscriptionPathIndex = 0;

    goto LABEL_15;
  }

  v16 = objc_msgSend_integerValue(v4, v5, v6, v7, v8, v9);
  if ((v16 & 0x8000000000000000) == 0 && v16 < objc_msgSend_count(self->_transcriptionPaths, v11, v12, v13, v14, v15))
  {
    goto LABEL_8;
  }

  if (qword_1EA84DC48 == -1)
  {
    v22 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v22 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    v28 = objc_msgSend_count(self->_transcriptionPaths, v23, v24, v25, v26, v27);
    v43 = 134218240;
    v44 = v16;
    v45 = 2048;
    v46 = v28;
    _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_ERROR, "Invalid transcription path index %lu. Number of transcription path: %lu", &v43, 0x16u);
  }

LABEL_7:

  if (v16 < 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (v16 >= objc_msgSend_count(self->_transcriptionPaths, v17, v18, v19, v20, v21))
  {
LABEL_9:
    if (qword_1EA84DC48 == -1)
    {
      v33 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v33 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }
    }

    v39 = objc_msgSend_count(self->_transcriptionPaths, v34, v35, v36, v37, v38);
    v43 = 134218240;
    v44 = v16;
    v45 = 2048;
    v46 = v39;
    _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_FAULT, "Invalid transcription path index %lu. Number of transcription path: %lu", &v43, 0x16u);
    goto LABEL_12;
  }

LABEL_13:
  v40 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v29, v16, v30, v31, v32);
  v41 = self->_selectedTranscriptionPathIndex;
  self->_selectedTranscriptionPathIndex = v40;

LABEL_15:
}

- (id)renderableLatexCandidatesForColumnIndex:(unint64_t)a3
{
  v634 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_tokenColumnCount(self, a2, a3, v3, v4, v5) <= a3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_tokenColumnCount(self, v14, v15, v16, v17, v18);
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "Column index %lu out of range. There is %lu columns in the result.", buf, 0x16u);
    }
  }

  if (objc_msgSend_tokenColumnCount(self, v8, v9, v10, v11, v12) <= a3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v24 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v30 = objc_msgSend_tokenColumnCount(self, v25, v26, v27, v28, v29);
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = v30;
      _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_FAULT, "Column index %lu out of range. There is %lu columns in the result.", buf, 0x16u);
    }
  }

  if (qword_1EA84CA50 != -1)
  {
    dispatch_once(&qword_1EA84CA50, &unk_1EF1BE198);
  }

  v564 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  v628 = 0u;
  v629 = 0u;
  v626 = 0u;
  v627 = 0u;
  obj = objc_msgSend_tokenRowsAtColumnIndex_(self, v31, a3, v32, v33, v34);
  v565 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v626, v633, 16, v36);
  if (v565)
  {
    v563 = *v627;
    do
    {
      for (i = 0; i != v565; ++i)
      {
        if (*v627 != v563)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v626 + 1) + 8 * i);
        v603 = objc_msgSend_array(MEMORY[0x1E695DF70], v37, v38, v39, v40, v41);
        v632 = 0u;
        memset(buf, 0, sizeof(buf));
        v624 = 0u;
        v625 = 0u;
        v622 = 0u;
        *v623 = 0u;
        v619 = 0u;
        v620 = 0u;
        v621 = 0u;
        v567 = v42;
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v567, v43, &v619, v630, 16, v44);
        if (v45)
        {
          v51 = 0;
          v52 = 0;
          v601 = 0;
          v604 = 0;
          v607 = 0;
          v611 = 0;
          v568 = 0;
          v569 = 0;
          v53 = 0;
          v571 = 0;
          v572 = 0;
          v581 = 0;
          v583 = 0;
          v575 = 0;
          v576 = 0;
          v585 = 0;
          v587 = 0;
          v570 = 0;
          v573 = 0;
          v574 = 0;
          v54 = 0;
          v579 = 0;
          v580 = 0;
          v577 = 0;
          v55 = 0;
          v589 = *v620;
          v592 = 0;
          while (1)
          {
            v595 = v45;
            for (j = 0; j != v595; ++j)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    v598 = v54;
                    v609 = v51;
                    if (*v620 != v589)
                    {
                      objc_enumerationMutation(v567);
                    }

                    v57 = *(*(&v619 + 1) + 8 * j);
                    v58 = qword_1EA84CA10;
                    v59 = objc_msgSend_string(v57, v46, v47, v48, v49, v50);
                    if (!objc_msgSend_containsObject_(v58, v60, v59, v61, v62, v63))
                    {
                      break;
                    }

LABEL_29:
                    v85 = objc_msgSend_string(v57, v69, v70, v71, v72, v73);
                    v86 = v611;
                    if (v607 == v611)
                    {
                      v87 = 0;
                    }

                    else
                    {
                      v87 = ((v607 - v611) << 6) - 1;
                    }

                    v88 = v55 + v604;
                    if (v87 == v55 + v604)
                    {
                      sub_1837D2638(buf);
                      v86 = *&buf[8];
                      v55 = *(&v632 + 1);
                      v604 = v632;
                      v607 = *&buf[16];
                      v88 = *(&v632 + 1) + v632;
                    }

                    v611 = v86;
                    *(*(v86 + ((v88 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v88 & 0x1FF)) = v85;
                    *(&v632 + 1) = ++v55;
                    v89 = objc_msgSend_array(MEMORY[0x1E695DF70], v80, v81, v82, v83, v84);
                    v90 = v601;
                    if (v601 == v52)
                    {
                      v91 = 0;
                    }

                    else
                    {
                      v91 = ((v601 - v52) << 6) - 1;
                    }

                    v92 = v609;
                    v93 = v53 + v609;
                    if (v91 == v53 + v609)
                    {
                      sub_1837D2C78(v623);
                      v52 = v623[1];
                      v90 = v624;
                      v53 = *(&v625 + 1);
                      v92 = v625;
                      v93 = *(&v625 + 1) + v625;
                    }

                    *(*&v52[(v93 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v93 & 0x1FF)) = v89;
                    *(&v625 + 1) = ++v53;
                    v568 = v92;
                    v569 = v52;
                    v571 = v92;
                    v572 = v52;
                    v581 = v53;
                    v583 = v52;
                    v575 = v92;
                    v576 = v52;
                    v585 = v92;
                    v587 = v52;
                    v601 = v90;
                    v570 = v90;
                    v54 = v607;
                    v573 = v611;
                    v574 = v604;
                    v579 = v92;
                    v580 = v611;
                    v592 = v53;
                    v577 = v604;
                    v51 = v92;
                    if (v595 == ++j)
                    {
                      goto LABEL_67;
                    }
                  }

                  v74 = qword_1EA84CA20;
                  v75 = objc_msgSend_string(v57, v64, v65, v66, v67, v68);
                  LODWORD(v74) = objc_msgSend_containsObject_(v74, v76, v75, v77, v78, v79);

                  if (v74)
                  {
                    goto LABEL_29;
                  }

                  v94 = qword_1EA84CA30;
                  v95 = objc_msgSend_string(v57, v69, v70, v71, v72, v73);
                  v100 = objc_msgSend_objectForKeyedSubscript_(v94, v96, v95, v97, v98, v99);
                  v101 = v100 == 0;

                  if (v101)
                  {
                    break;
                  }

                  if (!v55 || (v107 = v55 - 1 + v577, v108 = v107 >> 9, v109 = v107 & 0x1FF, v110 = *(*(v580 + 8 * (v107 >> 9)) + 8 * v109), v111 = qword_1EA84CA30, objc_msgSend_string(v57, v102, v103, v104, v105, v106), v112 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v111, v113, v112, v114, v115, v116), v117 = objc_claimAutoreleasedReturnValue(), LODWORD(v110) = objc_msgSend_isEqualToString_(v110, v118, v117, v119, v120, v121), v117, v112, !v110))
                  {
                    v129 = qword_1EA84CA18;
                    v130 = objc_msgSend_string(v57, v102, v103, v104, v105, v106);
                    LODWORD(v129) = objc_msgSend_containsObject_(v129, v131, v130, v132, v133, v134);

                    if (v129)
                    {
                      objc_msgSend_addObject_(v603, v46, @"\\left.", v48, v49, v50);
                      v140 = objc_msgSend_string(v57, v135, v136, v137, v138, v139);
                      objc_msgSend_addObject_(v603, v141, v140, v142, v143, v144);
                    }

                    goto LABEL_62;
                  }

                  v578 = *(*(v580 + 8 * v108) + 8 * v109);
                  v53 = v592 - 1;
                  v122 = v592 - 1 + v579;
                  v123 = v122 >> 9;
                  v124 = v122 & 0x1FF;
                  v582 = *(*&v587[8 * (v122 >> 9)] + 8 * v124);

                  v125 = ((v598 - v573) << 6) - 1;
                  *(&v632 + 1) = v55 - 1;
                  if (v598 == v573)
                  {
                    v125 = 0;
                  }

                  if ((v125 - (v55 + v574) + 1) >= 0x400)
                  {
                    operator delete(*(v598 - 8));
                    v598 -= 8;
                    *&buf[16] = v598;
                    v607 = v598;
                  }

                  v126 = ((v570 - v583) << 6) - 1;
                  *(&v625 + 1) = v592 - 1;
                  if (v570 == v583)
                  {
                    v126 = 0;
                  }

                  if ((v126 - (v592 + v585) + 1) < 0x400)
                  {
                    v128 = v601;
                    v127 = v603;
                    if (v592 == 1)
                    {
                      goto LABEL_66;
                    }

LABEL_65:
                    v127 = *(*&v576[((v592 + v575 - 2) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v592 + v575 - 2) & 0x1FF));
                    v583 = v576;
                    v585 = v575;
                    goto LABEL_66;
                  }

                  v128 = v570 - 8;
                  operator delete(*(v570 - 1));
                  *&v624 = v570 - 8;
                  v570 -= 8;
                  v127 = v603;
                  if (v592 != 1)
                  {
                    goto LABEL_65;
                  }

LABEL_66:
                  v168 = v127;
                  objc_msgSend_addObject_(v168, v169, v578, v170, v171, v172);
                  objc_msgSend_addObjectsFromArray_(v168, v173, v582, v174, v175, v176);
                  v182 = objc_msgSend_string(v57, v177, v178, v179, v180, v181);
                  objc_msgSend_addObject_(v168, v183, v182, v184, v185, v186);
                  v601 = v128;

                  v587 = v583;
                  --v592;
                  v580 = v573;
                  v581 = v53;
                  v577 = v574;
                  v579 = v585;
                  --v55;
                  v51 = v609;
                  v54 = v598;
                  if (v595 == ++j)
                  {
                    goto LABEL_67;
                  }
                }

                if (objc_msgSend_count(v603, v102, v103, v104, v105, v106))
                {
                  break;
                }

                if (v581)
                {
                  v575 = v571;
                  v576 = v572;
                  v583 = v572;
                  v585 = v571;
                  v587 = v572;
                  v579 = v571;
                  if (objc_msgSend_count(*(*&v572[((v581 + v571 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v581 + v571 - 1) & 0x1FF)), v145, v146, v147, v148, v149))
                  {
                    break;
                  }
                }

                v162 = qword_1EA84CA38;
                v163 = objc_msgSend_string(v57, v145, v146, v147, v148, v149);
                LOBYTE(v162) = objc_msgSend_containsObject_(v162, v164, v163, v165, v166, v167);

                if ((v162 & 1) == 0)
                {
                  break;
                }

                v592 = v581;
LABEL_62:
                v51 = v609;
                v54 = v598;
                if (v595 == ++j)
                {
                  goto LABEL_67;
                }
              }

              v150 = v603;
              if (v53)
              {
                v150 = *(*&v569[((v53 + v568 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v53 + v568 - 1) & 0x1FF));
                v571 = v568;
                v572 = v569;
                v575 = v568;
                v576 = v569;
                v583 = v569;
                v585 = v568;
                v587 = v569;
                v579 = v568;
              }

              v151 = v150;
              v157 = objc_msgSend_string(v57, v152, v153, v154, v155, v156);
              objc_msgSend_addObject_(v151, v158, v157, v159, v160, v161);

              v581 = v53;
              v592 = v53;
              v51 = v609;
              v54 = v598;
            }

LABEL_67:
            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v567, v46, &v619, v630, 16, v50);
            if (!v45)
            {

              if (v55)
              {
                v192 = 0;
                v193 = 1 - v53;
                v194 = 1 - (v604 + v55);
                v590 = v604 + v55 - 1;
                do
                {
                  v593 = v194;
                  v596 = v193;
                  v195 = ((v590 + v192) >> 6) & 0x3FFFFFFFFFFFFF8;
                  v196 = (v590 + v192) & 0x1FF;
                  v599 = *(*(v611 + v195) + 8 * v196);
                  v197 = v53 + v192 - 1;
                  v198 = (v197 + v51) >> 9;
                  v199 = (v197 + v51) & 0x1FF;
                  v605 = *(*&v52[8 * v198] + 8 * v199);

                  *(&v632 + 1) = v55 + v192 - 1;
                  v200 = ((v607 - v611) << 6) - 1;
                  if (v607 == v611)
                  {
                    v200 = 0;
                  }

                  if ((v200 + v593) >= 0x400)
                  {
                    operator delete(*(v607 - 8));
                    v607 -= 8;
                    *&buf[16] = v607;
                  }

                  v201 = ((v601 - v52) << 6) - 1;
                  *(&v625 + 1) = v53 + v192 - 1;
                  if (v601 == v52)
                  {
                    v201 = 0;
                  }

                  if ((v596 + v201 - v51) >= 0x400)
                  {
                    operator delete(*(v601 - 1));
                    v601 -= 8;
                    *&v624 = v601;
                  }

                  v202 = v603;
                  if (v53 + v192 != 1)
                  {
                    v202 = *(*&v52[((v51 + v53 - 2 + v192) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v51 + v53 - 2 + v192) & 0x1FF));
                  }

                  v203 = v202;
                  if (objc_msgSend_containsObject_(qword_1EA84CA10, v204, v599, v205, v206, v207))
                  {
                    objc_msgSend_addObject_(v203, v208, v599, v209, v210, v211);
                    objc_msgSend_addObjectsFromArray_(v203, v212, v605, v213, v214, v215);
                    objc_msgSend_addObject_(v203, v216, @"\\right.", v217, v218, v219);
                  }

                  if (objc_msgSend_isEqualToString_(v599, v208, @"{", v209, v210, v211))
                  {
                    objc_msgSend_addObject_(v203, v220, v599, v221, v222, v223);
                    objc_msgSend_addObjectsFromArray_(v203, v224, v605, v225, v226, v227);
                    objc_msgSend_addObject_(v203, v228, @"}", v229, v230, v231);
                  }

                  else
                  {
                    objc_msgSend_addObjectsFromArray_(v203, v220, v605, v221, v222, v223);
                  }

                  --v192;
                  v193 = v596 + 1;
                  v194 = v593 + 1;
                }

                while (v55 + v192);
              }

              goto LABEL_88;
            }
          }
        }

LABEL_88:
        v584 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v187, v188, v189, v190, v191);
        v237 = 0;
        v238 = 0;
        while (v237 < objc_msgSend_count(v603, v232, v233, v234, v235, v236))
        {
          if (!v238)
          {
            v244 = objc_msgSend_objectAtIndexedSubscript_(v603, v240, v237, v241, v242, v243);
            isEqualToString = objc_msgSend_isEqualToString_(v244, v245, @"&", v246, v247, v248);

            if (isEqualToString)
            {
              objc_msgSend_addIndex_(v584, v250, v237, v251, v252, v253);
            }

            v254 = objc_msgSend_objectAtIndexedSubscript_(v603, v250, v237, v251, v252, v253);
            v259 = objc_msgSend_isEqualToString_(v254, v255, @"\\hline", v256, v257, v258);

            if (v259)
            {
              objc_msgSend_setObject_atIndexedSubscript_(v603, v240, @"-", v237, v242, v243);
            }
          }

          v260 = objc_msgSend_objectAtIndexedSubscript_(v603, v240, v237, v241, v242, v243);
          v265 = objc_msgSend_isEqualToString_(v260, v261, @"\\begin{array}{lr}", v262, v263, v264);

          if (v265)
          {
            v239 = 1;
          }

          else
          {
            v266 = objc_msgSend_objectAtIndexedSubscript_(v603, v232, v237, v234, v235, v236);
            v271 = objc_msgSend_isEqualToString_(v266, v267, @"\\end{array}", v268, v269, v270);

            v239 = v271 << 63 >> 63;
          }

          v238 += v239;
          ++v237;
        }

        objc_msgSend_removeObjectsAtIndexes_(v603, v240, v584, v241, v242, v243);
        v277 = 0;
        v278 = 0;
        v279 = -1;
        while (1)
        {
          v280 = v278;
          v281 = v277;
          if (v278 >= objc_msgSend_count(v603, v272, v273, v274, v275, v276))
          {
            goto LABEL_108;
          }

          v282 = objc_msgSend_count(v603, v272, v273, v274, v275, v276);
          v287 = objc_msgSend_objectAtIndexedSubscript_(v603, v283, v280, v284, v285, v286);
          v292 = objc_msgSend_isEqualToString_(v287, v288, @"{", v289, v290, v291);
          v297 = v279 + v282 >= 0 ? v292 : 0;
          if ((v297 & 1) == 0)
          {
            break;
          }

          v298 = objc_msgSend_objectAtIndexedSubscript_(v603, v293, v279 + v282, v294, v295, v296);
          v303 = objc_msgSend_isEqualToString_(v298, v299, @"}", v300, v301, v302);

          v278 = v280 + 1;
          v277 = v281 + 2;
          --v279;
          if ((v303 & 1) == 0)
          {
            goto LABEL_108;
          }
        }

LABEL_108:
        if (v280)
        {
          v304 = objc_msgSend_count(v603, v272, v273, v274, v275, v276);
          v308 = objc_msgSend_subarrayWithRange_(v603, v305, v280, v304 - v281, v306, v307);
          v314 = objc_msgSend_mutableCopy(v308, v309, v310, v311, v312, v313);

          v603 = v314;
        }

        v315 = 0;
        v316 = 1;
        while (v315 < objc_msgSend_count(v603, v272, v273, v274, v275, v276))
        {
          v322 = objc_msgSend_objectAtIndexedSubscript_(v603, v317, v315, v319, v320, v321);
          v332 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84CA48, v323, v322, v324, v325, v326);
          if (v332)
          {
            if (v315 == objc_msgSend_count(v603, v327, v328, v329, v330, v331) - 1)
            {

LABEL_120:
              v361 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84CA48, v327, v322, v329, v330, v331);
              v362 = MEMORY[0x1E696AC90];
              v367 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84CA48, v363, v322, v364, v365, v366);
              v373 = objc_msgSend_count(v367, v368, v369, v370, v371, v372);
              v377 = objc_msgSend_indexSetWithIndexesInRange_(v362, v374, v315 + 1, v373, v375, v376);
              objc_msgSend_insertObjects_atIndexes_(v603, v378, v361, v377, v379, v380);

              goto LABEL_125;
            }

            v337 = objc_msgSend_objectAtIndexedSubscript_(v603, v333, v315 + 1, v334, v335, v336);
            v342 = objc_msgSend_isEqualToString_(v337, v338, @"{", v339, v340, v341);

            if ((v342 & 1) == 0)
            {
              goto LABEL_120;
            }
          }

          if (objc_msgSend_isEqualToString_(v322, v327, @"\\frac", v329, v330, v331))
          {
            v348 = 0;
            for (k = v316; k < objc_msgSend_count(v603, v343, v344, v345, v346, v347); ++k)
            {
              v355 = objc_msgSend_objectAtIndexedSubscript_(v603, v350, k, v352, v353, v354);
              v360 = objc_msgSend_isEqualToString_(v355, v356, @"}", v357, v358, v359);

              v348 += v360;
            }

            if (v348 < 2)
            {
              v381 = objc_msgSend_count(v603, v350, v351, v352, v353, v354);
              v386 = objc_msgSend_objectAtIndexedSubscript_(v603, v382, v381 - 1, v383, v384, v385);
              v391 = objc_msgSend_isEqualToString_(v386, v387, @"}", v388, v389, v390);

              if (v391)
              {
                objc_msgSend_addObject_(v603, v392, @"{", v393, v394, v395);
              }

              objc_msgSend_addObject_(v603, v392, @"\\phantom{m}", v393, v394, v395);
              objc_msgSend_addObject_(v603, v396, @"}", v397, v398, v399);
            }
          }

LABEL_125:

          ++v315;
          ++v316;
        }

        v588 = objc_msgSend_array(MEMORY[0x1E695DF70], v317, v318, v319, v320, v321);
        v606 = 0;
        v608 = 0;
        v405 = 0;
        v610 = 0;
        v612 = 0;
        v600 = 0;
        v602 = 0;
        v594 = 0;
        v597 = 0;
        v406 = 0;
        v407 = 0;
        v408 = 0;
        v409 = 0;
        v410 = 0;
        v411 = 0;
        v617 = 0u;
        v618 = 0u;
        v615 = 0u;
        *v616 = 0u;
        *__p = 0u;
        v614 = 0u;
        while (v411 < objc_msgSend_count(v603, v400, v401, v402, v403, v404))
        {
          v416 = objc_msgSend_objectAtIndexedSubscript_(v603, v412, v411, v413, v414, v415);
          if (objc_msgSend_isEqualToString_(v416, v417, @"{", v418, v419, v420))
          {
            if (v411 && (v426 = qword_1EA84CA40, objc_msgSend_objectAtIndexedSubscript_(v603, v421, v411 - 1, v423, v424, v425), v427 = objc_claimAutoreleasedReturnValue(), v432 = objc_msgSend_containsObject_(v426, v428, v427, v429, v430, v431), v427, ((v410 | v432) & 1) != 0))
            {
              v433 = objc_msgSend_objectAtIndexedSubscript_(v603, v421, v411 - 1, v423, v424, v425);
              if (v597 == v612)
              {
                v434 = 0;
              }

              else
              {
                v434 = ((v597 - v612) << 6) - 1;
              }

              v435 = v407 + v602;
              if (v434 == v407 + v602)
              {
                sub_1837D2638(v616);
                v436 = v616[1];
                v597 = v617;
                v407 = *(&v618 + 1);
                v602 = v618;
                v435 = *(&v618 + 1) + v618;
LABEL_160:
                v612 = v436;
                (*(v436 + ((v435 >> 6) & 0x3FFFFFFFFFFFFF8)))[v435 & 0x1FF] = v433;
                *(&v618 + 1) = ++v407;
                v466 = objc_msgSend_array(MEMORY[0x1E695DF70], v421, v422, v423, v424, v425);
                if (v610 == v405)
                {
                  v467 = 0;
                }

                else
                {
                  v467 = ((v610 - v405) << 6) - 1;
                }

                v468 = v408 + v606;
                if (v467 == v408 + v606)
                {
                  sub_1837D2C78(__p);
                  v405 = __p[1];
                  v610 = v614;
                  v408 = *(&v615 + 1);
                  v606 = v615;
                  v468 = *(&v615 + 1) + v615;
                }

                v410 = 0;
                (*(v405 + ((v468 >> 6) & 0x3FFFFFFFFFFFFF8)))[v468 & 0x1FF] = v466;
                *(&v615 + 1) = ++v408;
                v594 = v602;
                v406 = v612;
                v600 = v407;
                v409 = v407;
LABEL_166:
                v608 = v408;
                goto LABEL_167;
              }
            }

            else
            {
              if (v597 == v612)
              {
                v459 = 0;
              }

              else
              {
                v459 = ((v597 - v612) << 6) - 1;
              }

              v435 = v407 + v602;
              if (v459 == v407 + v602)
              {
                sub_1837D2638(v616);
                v436 = v616[1];
                v597 = v617;
                v407 = *(&v618 + 1);
                v602 = v618;
                v435 = *(&v618 + 1) + v618;
                v433 = @"*MISSING*";
                goto LABEL_160;
              }

              v433 = @"*MISSING*";
            }

            v436 = v612;
            goto LABEL_160;
          }

          if (!objc_msgSend_isEqualToString_(v416, v421, @"}", v423, v424, v425))
          {
            v460 = v588;
            if (v408)
            {
              v460 = (*(v405 + (((v408 + v606 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v408 + v606 - 1) & 0x1FF];
            }

            v461 = v460;
            objc_msgSend_addObject_(v461, v462, v416, v463, v464, v465);

            v410 = 0;
            goto LABEL_166;
          }

          if (v600)
          {
            v437 = v600 + v594 - 1;
            v438 = (v437 >> 6) & 0x3FFFFFFFFFFFFF8;
            v439 = v437 & 0x1FF;
            v591 = (*(v406 + v438))[v439];
            v608 = v408 - 1;
            v440 = v408 - 1 + v606;
            v441 = v440 >> 9;
            v442 = v440 & 0x1FF;
            v586 = *(v405[v440 >> 9] + v442);

            v443 = ((v597 - v406) << 6) - 1;
            if (v597 == v406)
            {
              v443 = 0;
            }

            v600 = v407 - 1;
            *(&v618 + 1) = v407 - 1;
            if (v443 - (v407 + v594) + 1 >= 0x400)
            {
              operator delete(*--v597);
              *&v617 = v597;
            }

            v444 = ((v610 - v405) << 6) - 1;
            *(&v615 + 1) = v408 - 1;
            if (v610 == v405)
            {
              v444 = 0;
            }

            if (v444 - (v408 + v606) + 1 >= 0x400)
            {
              operator delete(*--v610);
              *&v614 = v610;
            }

            v445 = v588;
            if (v408 != 1)
            {
              v445 = (*(v405 + (((v408 + v606 - 2) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v408 + v606 - 2) & 0x1FF];
            }

            v446 = v445;
            if (objc_msgSend_isEqualToString_(v591, v447, @"*MISSING*", v448, v449, v450))
            {
              objc_msgSend_addObjectsFromArray_(v446, v451, v586, v452, v453, v454);
            }

            else
            {
              objc_msgSend_addObject_(v446, v451, @"{", v452, v453, v454);
              objc_msgSend_addObjectsFromArray_(v446, v469, v586, v470, v471, v472);
              objc_msgSend_addObject_(v446, v473, @"}", v474, v475, v476);
            }

            if (objc_msgSend_isEqualToString_(v591, v455, @"\\frac", v456, v457, v458))
            {
              if (v411 != objc_msgSend_count(v603, v477, v478, v479, v480, v481) - 1)
              {
                v486 = v411 + 1;
                v487 = objc_msgSend_objectAtIndexedSubscript_(v603, v482, v411 + 1, v483, v484, v485);
                v492 = objc_msgSend_isEqualToString_(v487, v488, @"{", v489, v490, v491);

                if ((v492 & 1) == 0)
                {
                  objc_msgSend_addObject_(v446, v493, @"{", v494, v495, v496);
                  v501 = objc_msgSend_objectAtIndexedSubscript_(v603, v497, v411 + 1, v498, v499, v500);
                  objc_msgSend_addObject_(v446, v502, v501, v503, v504, v505);

                  objc_msgSend_addObject_(v446, v506, @"}", v507, v508, v509);
                  v411 = v486;
                }
              }

              v410 = 1;
            }

            else
            {

              v410 = 0;
            }

            v409 = --v407;
            v408 = v608;
          }

          else
          {
            v600 = 0;
            v409 = 0;
            v410 = 0;
          }

LABEL_167:

          ++v411;
        }

        v510 = v588;

        v515 = objc_msgSend_componentsJoinedByString_(v510, v511, @" ", v512, v513, v514);
        objc_msgSend_addObject_(v564, v516, v515, v517, v518, v519);

        v520 = v610;
        v521 = v610 - v405;
        if (v610 != v405)
        {
          v522 = &v405[v606 >> 9];
          v523 = (*v522 + 8 * (v606 & 0x1FF));
          v524 = *(v405 + (((v608 + v606) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v608 + v606) & 0x1FF);
          while (v523 != v524)
          {

            if (v523 - *v522 == 4096)
            {
              v525 = v522[1];
              ++v522;
              v523 = v525;
            }

            v520 = v610;
          }
        }

        if (v521 >= 0x11)
        {
          do
          {
            v526 = *v405++;
            operator delete(v526);
            __p[1] = v405;
            v521 -= 8;
          }

          while (v521 > 0x10);
        }

        while (v405 != v520)
        {
          v527 = *v405++;
          operator delete(v527);
        }

        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v528 = v597 - v406;
        if (v597 != v406)
        {
          v529 = &v406[v594 >> 9];
          v530 = (*v529 + 8 * (v594 & 0x1FF));
          v531 = *(v406 + (((v409 + v594) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v409 + v594) & 0x1FF);
          while (v530 != v531)
          {

            if (v530 - *v529 == 4096)
            {
              v532 = v529[1];
              ++v529;
              v530 = v532;
            }
          }
        }

        if (v528 >= 0x11)
        {
          do
          {
            v533 = *v406++;
            operator delete(v533);
            v616[1] = v406;
            v528 -= 8;
          }

          while (v528 > 0x10);
        }

        while (v406 != v597)
        {
          v534 = *v406++;
          operator delete(v534);
        }

        if (v616[0])
        {
          operator delete(v616[0]);
        }

        v535 = v623[1];
        v536 = v624;
        v537 = v623[1];
        v538 = v624 - v623[1];
        if (v624 == v623[1] || (v539 = v623[1] + 8 * (v625 >> 9), v540 = (*v539 + 8 * (v625 & 0x1FF)), v541 = *(v623[1] + (((*(&v625 + 1) + v625) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v625 + 1) + v625) & 0x1FF), v537 = v624, v540 == v541))
        {
          if ((v537 - v623[1]) < 0x11)
          {
            goto LABEL_211;
          }

          do
          {
LABEL_209:
            v543 = *v535++;
            operator delete(v543);
            v538 -= 8;
          }

          while (v538 > 0x10);
        }

        else
        {
          do
          {

            if ((v540 - *v539) == 4096)
            {
              v542 = v539[1];
              ++v539;
              v540 = v542;
            }
          }

          while (v540 != v541);
          v537 = v536;
          if ((v536 - v535) >= 0x11)
          {
            goto LABEL_209;
          }

LABEL_211:
          v536 = v537;
        }

        while (v535 != v536)
        {
          v544 = *v535++;
          operator delete(v544);
        }

        if (v623[0])
        {
          operator delete(v623[0]);
        }

        v545 = *&buf[8];
        v546 = *&buf[16];
        v547 = *&buf[8];
        v548 = *&buf[16] - *&buf[8];
        if (*&buf[16] == *&buf[8] || (v549 = (*&buf[8] + 8 * (v632 >> 9)), v550 = (*v549 + 8 * (v632 & 0x1FF)), v551 = *(*&buf[8] + (((*(&v632 + 1) + v632) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v632 + 1) + v632) & 0x1FF), v547 = *&buf[16], v550 == v551))
        {
          if (v547 - *&buf[8] < 0x11)
          {
            goto LABEL_226;
          }

          do
          {
LABEL_224:
            v553 = *v545++;
            operator delete(v553);
            v548 -= 8;
          }

          while (v548 > 0x10);
        }

        else
        {
          do
          {

            if ((v550 - *v549) == 4096)
            {
              v552 = v549[1];
              ++v549;
              v550 = v552;
            }
          }

          while (v550 != v551);
          v547 = v546;
          if ((v546 - v545) >= 0x11)
          {
            goto LABEL_224;
          }

LABEL_226:
          v546 = v547;
        }

        while (v545 != v546)
        {
          v554 = *v545++;
          operator delete(v554);
        }

        if (*buf)
        {
          operator delete(*buf);
        }
      }

      v565 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v626, v633, 16, v41);
    }

    while (v565);
  }

  v560 = objc_msgSend_copy(v564, v555, v556, v557, v558, v559);

  return v560;
}

+ (id)textTranscriptionForLatex:(id)a3
{
  v297 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (qword_1EA84CA58 != -1)
  {
    dispatch_once(&qword_1EA84CA58, &unk_1EF1BE1B8);
  }

  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v4 = qword_1EA84CA68;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v291, v296, 16, v6);
  if (v11)
  {
    v12 = *v292;
    do
    {
      v13 = 0;
      v14 = v3;
      do
      {
        if (*v292 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v15 = *(*(&v291 + 1) + 8 * v13);
        v16 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84CA68, v7, v15, v8, v9, v10);
        v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v17, v15, v16, v18, v19);

        ++v13;
        v14 = v3;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v291, v296, 16, v10);
    }

    while (v11);
  }

  v25 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v20, v21, v22, v23, v24);
  v276 = objc_msgSend_componentsSeparatedByCharactersInSet_(v3, v26, v25, v27, v28, v29);

  v279 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31, v32, v33, v34);
  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v281 = 0u;
  v282 = 0u;
  v283 = 0u;
  v284 = 0u;
  obj = v276;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v281, v295, 16, v36);
  if (v41)
  {
    v42 = *v282;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v282 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v281 + 1) + 8 * i);
        if (objc_msgSend_containsObject_(qword_1EA84CA60, v37, v44, v38, v39, v40, v276))
        {
          v50 = *(&v288 + 1);
          v51 = v289;
          v52 = ((v289 - *(&v288 + 1)) << 6) - 1;
          if (v289 == *(&v288 + 1))
          {
            v52 = 0;
          }

          if (v52 == *(&v290 + 1) + v290)
          {
            sub_1837D2638(&v288);
            v50 = *(&v288 + 1);
            v51 = v289;
          }

          if (v51 == v50)
          {
            v53 = 0;
          }

          else
          {
            v53 = (*(v50 + (((*(&v290 + 1) + v290) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v290 + 1) + v290) & 0x1FF));
          }

          *v53 = v44;
          ++*(&v290 + 1);
          v106 = objc_msgSend_array(MEMORY[0x1E695DF70], v101, v102, v103, v104, v105);
          v107 = *(&v285 + 1);
          v108 = ((v286 - *(&v285 + 1)) << 6) - 1;
          if (v286 == *(&v285 + 1))
          {
            v108 = 0;
          }

          v109 = *(&v287 + 1) + v287;
          if (v108 == *(&v287 + 1) + v287)
          {
            sub_1837D2C78(&v285);
            v107 = *(&v285 + 1);
            v109 = *(&v287 + 1) + v287;
          }

          *(*(v107 + ((v109 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v109 & 0x1FF)) = v106;
          ++*(&v287 + 1);
        }

        else
        {
          if (*(&v290 + 1))
          {
            if ((objc_msgSend_isEqualToString_(v44, v45, @"}", v47, v48, v49) & 1) == 0 && !objc_msgSend_isEqualToString_(v44, v54, @"]", v55, v56, v57))
            {
              v132 = *(*(*(&v285 + 1) + (((*(&v287 + 1) + v287 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v287 + 1) + v287 - 1) & 0x1FF));
              v133 = sub_1837C1898(v44);
              objc_msgSend_addObject_(v132, v134, v133, v135, v136, v137);

              continue;
            }

            v58 = *(&v288 + 1);
            v59 = *(&v290 + 1) + v290 - 1;
            v60 = (v59 >> 6) & 0x3FFFFFFFFFFFFF8;
            v61 = v59 & 0x1FF;
            v62 = *(*(*(&v288 + 1) + v60) + 8 * v61);

            v63 = v290;
            --*(&v290 + 1);
            v64 = ((v289 - *(&v288 + 1)) << 6) - 1;
            if (v289 == *(&v288 + 1))
            {
              v64 = 0;
            }

            if ((v64 - (*(&v63 + 1) + v63) + 1) >= 0x400)
            {
              operator delete(*(v289 - 8));
              *&v289 = v289 - 8;
            }

            v65 = *(&v285 + 1);
            v66 = *(&v287 + 1) + v287 - 1;
            v67 = (v66 >> 6) & 0x3FFFFFFFFFFFFF8;
            v68 = v66 & 0x1FF;
            v69 = *(*(*(&v285 + 1) + v67) + 8 * v68);

            v70 = ((v286 - *(&v285 + 1)) << 6) - 1;
            if (v286 == *(&v285 + 1))
            {
              v70 = 0;
            }

            v71 = *(&v287 + 1);
            v72 = --*(&v287 + 1);
            if ((v70 - (v71 + v287) + 1) >= 0x400)
            {
              operator delete(*(v286 - 8));
              v72 = *(&v287 + 1);
              *&v286 = v286 - 8;
            }

            v73 = v279;
            if (v72)
            {
              v73 = *(*(*(&v285 + 1) + (((v72 + v287 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v72 + v287 - 1) & 0x1FF));
            }

            v74 = v73;
            v79 = v62;
            if (qword_1EA84C9C8 != -1)
            {
              dispatch_once(&qword_1EA84C9C8, &unk_1EF1BE100);
            }

            v80 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84C9D0, v75, v79, v76, v77, v78);
            v85 = v80;
            if (v80)
            {
              v86 = v80;
            }

            else if (objc_msgSend_hasPrefix_(v79, v81, @"\\text{", v82, v83, v84) && objc_msgSend_hasSuffix_(v79, v122, @"}", v123, v124, v125))
            {
              v128 = objc_msgSend_length(v79, v122, v126, v127, v124, v125);
              v86 = objc_msgSend_substringWithRange_(v79, v129, 6, v128 - 7, v130, v131);
            }

            else
            {
              v86 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v79, v122, @"\\"", &stru_1EF1C0318, v124, v125);
            }

            v148 = v86;

            objc_msgSend_addObject_(v74, v149, v148, v150, v151, v152);
            v161 = @"");
            if (objc_msgSend_isEqualToString_(v44, v153, @"]", v154, v155, v156))
            {
              if (objc_msgSend_isEqualToString_(v79, v157, @"\\sqrt", v158, v159, v160))
              {
                v161 = @"");
              }

              else
              {
                v161 = &stru_1EF1C0318;
              }
            }

            if (objc_msgSend_isEqualToString_(v79, v157, @",", v158, v159, v160))
            {
              v162 = &stru_1EF1C0318;
            }

            else
            {
              v162 = CFSTR("(");
            }

            if (sub_1837C9850(a1, v69))
            {
              objc_msgSend_addObject_(v74, v163, v162, v164, v165, v166);
              goto LABEL_71;
            }

            if (objc_msgSend_isEqualToString_(v79, v163, @"\\sqrt", v164, v165, v166) && objc_msgSend_isEqualToString_(v44, v179, @"]", v180, v181, v182))
            {
              objc_msgSend_addObject_(v74, v179, v162, v180, v181, v182);
              goto LABEL_77;
            }

            if (objc_msgSend_isEqualToString_(v79, v179, @",", v180, v181, v182) && objc_msgSend_isEqualToString_(v44, v167, @"}", v168, v169, v170))
            {
LABEL_71:
              objc_msgSend_addObjectsFromArray_(v74, v167, v69, v168, v169, v170);
              objc_msgSend_addObject_(v74, v171, v161, v172, v173, v174);
            }

            else
            {
LABEL_77:
              objc_msgSend_addObjectsFromArray_(v74, v167, v69, v168, v169, v170);
            }

            if (objc_msgSend_isEqualToString_(v79, v175, @"\\frac", v176, v177, v178))
            {
              v188 = *(&v288 + 1);
              v189 = ((v289 - *(&v288 + 1)) << 6) - 1;
              if (v289 == *(&v288 + 1))
              {
                v189 = 0;
              }

              v190 = *(&v290 + 1) + v290;
              if (v189 == *(&v290 + 1) + v290)
              {
                sub_1837D2638(&v288);
                v188 = *(&v288 + 1);
                v190 = *(&v290 + 1) + v290;
              }

              *(*(v188 + ((v190 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v190 & 0x1FF)) = @"/";
              ++*(&v290 + 1);
              v191 = objc_msgSend_array(MEMORY[0x1E695DF70], v183, v184, v185, v186, v187);
              v192 = *(&v285 + 1);
              v193 = ((v286 - *(&v285 + 1)) << 6) - 1;
              if (v286 == *(&v285 + 1))
              {
                v193 = 0;
              }

              v194 = *(&v287 + 1) + v287;
              if (v193 == *(&v287 + 1) + v287)
              {
                goto LABEL_86;
              }

              goto LABEL_87;
            }

            if (objc_msgSend_isEqualToString_(v79, v183, @"\\sqrt", v185, v186, v187) && objc_msgSend_isEqualToString_(v44, v195, @"]", v196, v197, v198))
            {
              v204 = *(&v288 + 1);
              v205 = ((v289 - *(&v288 + 1)) << 6) - 1;
              if (v289 == *(&v288 + 1))
              {
                v205 = 0;
              }

              v206 = *(&v290 + 1) + v290;
              if (v205 == *(&v290 + 1) + v290)
              {
                sub_1837D2638(&v288);
                v204 = *(&v288 + 1);
                v206 = *(&v290 + 1) + v290;
              }

              *(*(v204 + ((v206 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v206 & 0x1FF)) = @",";
              ++*(&v290 + 1);
              v191 = objc_msgSend_array(MEMORY[0x1E695DF70], v199, v200, v201, v202, v203);
              v192 = *(&v285 + 1);
              v207 = ((v286 - *(&v285 + 1)) << 6) - 1;
              if (v286 == *(&v285 + 1))
              {
                v207 = 0;
              }

              v194 = *(&v287 + 1) + v287;
              if (v207 == *(&v287 + 1) + v287)
              {
LABEL_86:
                sub_1837D2C78(&v285);
                v192 = *(&v285 + 1);
                v194 = *(&v287 + 1) + v287;
              }

LABEL_87:
              *(*(v192 + ((v194 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v194 & 0x1FF)) = v191;
              ++*(&v287 + 1);
            }

            continue;
          }

          v87 = objc_msgSend_lastObject(v279, v45, v46, v47, v48, v49);
          if (objc_msgSend_isEqualToString_(v87, v88, @"hline", v89, v90, v91))
          {
            isEqualToString = objc_msgSend_isEqualToString_(v44, v92, @"&", v93, v94, v95);

            if (isEqualToString)
            {
              objc_msgSend_addObject_(v279, v97, @"\n", v98, v99, v100);
            }
          }

          else
          {
          }

          v114 = v44;
          if (qword_1EA84C9C8 != -1)
          {
            dispatch_once(&qword_1EA84C9C8, &unk_1EF1BE100);
          }

          v115 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84C9D0, v110, v114, v111, v112, v113);
          v120 = v115;
          if (v115)
          {
            v121 = v115;
          }

          else if (objc_msgSend_hasPrefix_(v114, v116, @"\\text{", v117, v118, v119) && objc_msgSend_hasSuffix_(v114, v138, @"}", v139, v140, v141))
          {
            v144 = objc_msgSend_length(v114, v138, v142, v143, v140, v141);
            v121 = objc_msgSend_substringWithRange_(v114, v145, 6, v144 - 7, v146, v147);
          }

          else
          {
            v121 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v114, v138, @"\\"", &stru_1EF1C0318, v140, v141);
          }

          v208 = v121;

          objc_msgSend_addObject_(v279, v209, v208, v210, v211, v212);
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v281, v295, 16, v40);
    }

    while (v41);
  }

  if (!(*(&v290 + 1) | *(&v287 + 1)))
  {
    goto LABEL_139;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v217 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v217, OS_LOG_TYPE_ERROR, "Invalid latex encountered during text transliteration.", buf, 2u);
  }

  for (j = *(&v290 + 1); *(&v290 + 1); j = *(&v290 + 1))
  {
    v219 = *(&v288 + 1);
    v220 = v290 + j - 1;
    v221 = (v220 >> 6) & 0x3FFFFFFFFFFFFF8;
    v222 = v220 & 0x1FF;
    v223 = *(*(*(&v288 + 1) + v221) + 8 * v222);

    v224 = *(&v290 + 1);
    if (v289 == *(&v288 + 1))
    {
      v225 = 0;
    }

    else
    {
      v225 = ((v289 - *(&v288 + 1)) << 6) - 1;
    }

    --*(&v290 + 1);
    if ((v225 - (v224 + v290) + 1) >= 0x400)
    {
      operator delete(*(v289 - 8));
      *&v289 = v289 - 8;
    }

    v226 = *(&v285 + 1);
    v227 = *(&v287 + 1) + v287 - 1;
    v228 = (v227 >> 6) & 0x3FFFFFFFFFFFFF8;
    v229 = v227 & 0x1FF;
    v230 = *(*(*(&v285 + 1) + v228) + 8 * v229);

    v231 = v287;
    --*(&v287 + 1);
    v232 = ((v286 - *(&v285 + 1)) << 6) - 1;
    if (v286 == *(&v285 + 1))
    {
      v232 = 0;
    }

    if ((v232 - (*(&v231 + 1) + v231) + 1) >= 0x400)
    {
      operator delete(*(v286 - 8));
      *&v286 = v286 - 8;
    }

    v233 = sub_1837C1898(v223);
    objc_msgSend_addObject_(v279, v234, v233, v235, v236, v237);

    if (sub_1837C9850(a1, v230))
    {
      objc_msgSend_addObject_(v279, v238, @"("), v239, v240, v241;
      objc_msgSend_addObjectsFromArray_(v279, v242, v230, v243, v244, v245);
      objc_msgSend_addObject_(v279, v246, @""), v247, v248, v249);
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(v279, v238, v230, v239, v240, v241);
    }

    if (*(&v290 + 1))
    {
      v260 = objc_msgSend_copy(v279, v250, v251, v252, v253, v254);
      v261 = *(&v285 + 1);
      v262 = ((v286 - *(&v285 + 1)) << 6) - 1;
      if (v286 == *(&v285 + 1))
      {
        v262 = 0;
      }

      v263 = *(&v287 + 1) + v287;
      if (v262 == *(&v287 + 1) + v287)
      {
        sub_1837D2C78(&v285);
        v261 = *(&v285 + 1);
        v263 = *(&v287 + 1) + v287;
      }

      *(*(v261 + ((v263 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v263 & 0x1FF)) = v260;
      ++*(&v287 + 1);
      objc_msgSend_removeAllObjects(v279, v255, v256, v257, v258, v259, v276);
    }

    else if (*(&v287 + 1))
    {
      objc_msgSend_addObjectsFromArray_(v279, v250, *(*(*(&v285 + 1) + (((*(&v287 + 1) + v287 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v287 + 1) + v287 - 1) & 0x1FF)), v252, v253, v254);

      v264 = v287;
      --*(&v287 + 1);
      v265 = ((v286 - *(&v285 + 1)) << 6) - 1;
      if (v286 == *(&v285 + 1))
      {
        v265 = 0;
      }

      if ((v265 - (*(&v264 + 1) + v264) + 1) >= 0x400)
      {
        operator delete(*(v286 - 8));
        *&v286 = v286 - 8;
      }
    }
  }

  if (*(&v287 + 1))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v266 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v266, OS_LOG_TYPE_ERROR, "Latex transcription is corrupted and can't be transliterated into text.", buf, 2u);
    }

    v267 = &stru_1EF1C0318;
  }

  else
  {
LABEL_139:
    v268 = objc_msgSend_componentsJoinedByString_(v279, v213, &stru_1EF1C0318, v214, v215, v216, v276);
    v266 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v268, v269, @"\n", &stru_1EF1C0318, v270, v271);

    v267 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v266, v272, @"hline", @"=", v273, v274);
  }

  sub_18367BBC0(&v285);
  sub_18367BBC0(&v288);

  return v267;
}

+ (id)simplifiedTextTranscriptionForLatex:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (qword_1EA84CA70 != -1)
  {
    dispatch_once(&qword_1EA84CA70, &unk_1EF1BE1D8);
  }

  v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v4, @"\\color{orange}{+}", @"+", v5, v6);

  v13 = objc_msgSend_textTranscriptionForLatex_(a1, v9, v8, v10, v11, v12);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = qword_1EA84CA78;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v32, v36, 16, v16);
  v22 = v13;
  if (v21)
  {
    v23 = *v33;
    v22 = v13;
    do
    {
      v24 = 0;
      v25 = v22;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v14);
        }

        v26 = *(*(&v32 + 1) + 8 * v24);
        v27 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84CA78, v17, v26, v18, v19, v20, v32);
        v22 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v25, v28, v26, v27, v29, v30);

        ++v24;
        v25 = v22;
      }

      while (v21 != v24);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v32, v36, 16, v20);
    }

    while (v21);
  }

  return v22;
}

+ (BOOL)isTrivialTextTranscriptionAvailableForLatex:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (qword_1EA84CA80 != -1)
  {
    dispatch_once(&qword_1EA84CA80, &unk_1EF1BE1F8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = qword_1EA84CA90;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v31, v35, 16, v6);
  if (v11)
  {
    v12 = *v32;
    do
    {
      v13 = 0;
      v14 = v3;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v15 = *(*(&v31 + 1) + 8 * v13);
        v16 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84CA90, v7, v15, v8, v9, v10, v31);
        v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v17, v15, v16, v18, v19);

        ++v13;
        v14 = v3;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v31, v35, 16, v10);
    }

    while (v11);
  }

  v24 = objc_msgSend_componentsSeparatedByString_(v3, v20, @" ", v21, v22, v23);
  v29 = objc_msgSend_indexOfObjectPassingTest_(v24, v25, &unk_1EF1BE218, v26, v27, v28) == 0x7FFFFFFFFFFFFFFFLL;

  return v29;
}

+ (BOOL)isTextTranscriptionInMathAlphabet:(id)a3
{
  v7 = a3;
  if (qword_1EA84CA98 != -1)
  {
    dispatch_once(&qword_1EA84CA98, &unk_1EF1BE238);
  }

  v8 = objc_msgSend_stringByTrimmingCharactersInSet_(v7, v3, qword_1EA84CAA0, v4, v5, v6);
  v14 = objc_msgSend_length(v8, v9, v10, v11, v12, v13) == 0;

  return v14;
}

+ (BOOL)isPartialMathUnitConversionPatternForTextTranscription:(id)a3 locales:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_hasSuffix_(v5, v7, @"=", v8, v9, v10))
  {
    v14 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v11, @"=", &stru_1EF1C0318, v12, v13);

    v19 = objc_msgSend_componentsSeparatedByString_(v14, v15, @" ", v16, v17, v18);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1837CBCE4;
    block[3] = &unk_1E6DDBE10;
    v45 = v6;
    if (qword_1EA84CAA8 != -1)
    {
      dispatch_once(&qword_1EA84CAA8, block);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = v19;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v40, v46, 16, v22);
    if (v28)
    {
      v29 = *v41;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v20);
          }

          v31 = *(*(&v40 + 1) + 8 * i);
          v32 = objc_msgSend_root(qword_1EA84CAB0, v23, v24, v25, v26, v27, v40);
          v37 = objc_msgSend_objectForKeyedSubscript_(v32, v33, v31, v34, v35, v36);

          if (v37)
          {
            isMatch = objc_msgSend_isMatch(v37, v23, v24, v25, v26, v27);

            if (isMatch)
            {
              LOBYTE(v28) = 1;
              goto LABEL_16;
            }
          }
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v40, v46, 16, v27);
      }

      while (v28);
    }

LABEL_16:

    v5 = v14;
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  return v28;
}

+ (BOOL)isMathUnitConversionPatternForTextTranscription:(id)a3 locales:(id)a4
{
  v5 = a3;
  if (objc_msgSend_isPartialMathUnitConversionPatternForTextTranscription_locales_(CHTokenizedMathResult, v6, v5, a4, v7, v8))
  {
    v18 = objc_msgSend_ch_currencyCharSet(MEMORY[0x1E696AB08], v9, v10, v11, v12, v13);
    if (qword_1EA84CAB8 != -1)
    {
      dispatch_once(&qword_1EA84CAB8, &unk_1EF1BE258);
    }

    v19 = objc_msgSend_componentsSeparatedByString_(v5, v14, @" ", v15, v16, v17);
    v24 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, 0, v21, v22, v23);
    if (sub_1837A4F0C(v24, v18) && objc_msgSend_count(v19, v25, v26, v27, v28, v29) >= 2)
    {
      v30 = objc_msgSend_objectAtIndexedSubscript_(v19, v25, 1, v27, v28, v29);

      v24 = v30;
    }

    v31 = qword_1EA84CAC0;
    v32 = objc_msgSend_length(v24, v25, v26, v27, v28, v29);
    v34 = objc_msgSend_firstMatchInString_options_range_(v31, v33, v24, 0, 0, v32);
    v40 = v34;
    v51 = 0;
    if (v34)
    {
      if (!objc_msgSend_range(v34, v35, v36, v37, v38, v39))
      {
        objc_msgSend_range(v40, v41, v42, v43, v44, v45);
        if (v50 <= objc_msgSend_length(v24, v50, v46, v47, v48, v49))
        {
          v51 = 1;
        }
      }
    }
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

+ (BOOL)hasPartialRangeDataDetectorEntries:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7, v8))
  {
    v14 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v9, v10, v11, v12, v13);
    v19 = objc_msgSend_stringByTrimmingCharactersInSet_(v3, v15, v14, v16, v17, v18);
    v24 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v20, v19, v21, v22, v23);

    v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
    v60 = v30;
    v31 = sub_1837A576C(v24, &v60);
    v32 = v60;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v33 = v32;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v56, v61, 16, v35);
    if (v41)
    {
      v42 = *v57;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v33);
          }

          v44 = objc_msgSend_rangeValue(*(*(&v56 + 1) + 8 * i), v36, v37, v38, v39, v40, v56);
          v46 = v45;
          v51 = objc_msgSend_length(v24, v45, v47, v48, v49, v50);
          if (v44)
          {
            v52 = 0;
          }

          else
          {
            v52 = v46 == v51;
          }

          if (v52)
          {
            v53 = 0;
            goto LABEL_15;
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v56, v61, 16, v40);
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v53 = 1;
LABEL_15:

    v54 = v31 & v53;
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

+ (BOOL)isPatternedTextForTextTranscription:(id)a3 locales:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_isVerticalMathEntryWithUnitForTextTranscription_locales_(CHTokenizedMathResult, v7, v5, v6, v8, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1837A5F98(v5);
  }

  return v10;
}

+ (BOOL)isVerticalMathEntryWithUnitForTextTranscription:(id)a3 locales:(id)a4
{
  v126 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1837CC648;
  block[3] = &unk_1E6DDBE10;
  v12 = v6;
  v124 = v12;
  if (qword_1EA84CAD8 != -1)
  {
    dispatch_once(&qword_1EA84CAD8, block);
  }

  v13 = qword_1EA84CAD0;
  v14 = objc_msgSend_length(v5, v7, v8, v9, v10, v11);
  v16 = objc_msgSend_matchesInString_options_range_(v13, v15, v5, 0, 0, v14);
  if (objc_msgSend_count(v16, v17, v18, v19, v20, v21) && (objc_msgSend_firstObject(v16, v22, v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend_range(v27, v28, v29, v30, v31, v32) == 0, v27, v33))
  {
    v40 = objc_msgSend_firstObject(v16, v34, v35, v36, v37, v38);
    objc_msgSend_range(v40, v41, v42, v43, v44, v45);
    v47 = v46;

    v52 = objc_msgSend_substringFromIndex_(v5, v48, v47, v49, v50, v51);
    v58 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v53, v54, v55, v56, v57);
    v118 = objc_msgSend_stringByTrimmingCharactersInSet_(v52, v59, v58, v60, v61, v62);

    v68 = objc_msgSend_root(qword_1EA84CAC8, v63, v64, v65, v66, v67);
    v73 = objc_msgSend_objectForKeyedSubscript_(v68, v69, v118, v70, v71, v72);

    if (!objc_msgSend_length(v118, v74, v75, v76, v77, v78) || v73 && (objc_msgSend_isMatch(v73, v79, v80, v81, v82, v83) & 1) != 0 || (objc_msgSend_containsString_(@"$€£¥¢₺₴₽₩", v79, v118, v81, v82, v83) & 1) != 0)
    {
      v39 = 1;
    }

    else
    {
      v116 = objc_msgSend_componentsSeparatedByString_(v118, v84, @"/", v85, v86, v87);
      if (objc_msgSend_count(v116, v88, v89, v90, v91, v92) == 2)
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        obj = v116;
        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, &v119, v125, 16, v94);
        if (v100)
        {
          v101 = *v120;
          while (2)
          {
            for (i = 0; i != v100; ++i)
            {
              if (*v120 != v101)
              {
                objc_enumerationMutation(obj);
              }

              v103 = *(*(&v119 + 1) + 8 * i);
              v104 = objc_msgSend_root(qword_1EA84CAC8, v95, v96, v97, v98, v99);
              v109 = objc_msgSend_objectForKeyedSubscript_(v104, v105, v103, v106, v107, v108);

              v73 = v109;
              if (objc_msgSend_length(v103, v110, v111, v112, v113, v114) && (!v109 || (objc_msgSend_isMatch(v109, v95, v96, v97, v98, v99) & 1) == 0))
              {
                v39 = 0;
                goto LABEL_26;
              }
            }

            v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v95, &v119, v125, 16, v99);
            if (v100)
            {
              continue;
            }

            break;
          }
        }

        v39 = 1;
LABEL_26:
      }

      else
      {
        v39 = 0;
      }
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

+ (BOOL)doesLatexContainEvaluationTrigger:(id)a3
{
  v3 = a3;
  if (objc_msgSend_containsString_(v3, v4, @"=", v5, v6, v7) & 1) != 0 || (objc_msgSend_containsString_(v3, v8, @"\\hline", v9, v10, v11))
  {

    return 1;
  }

  else
  {
    v15 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v12, @"\\\\frac \\{ .+ \\} \\{ \\}", 0, 0, v13);
    v21 = objc_msgSend_length(v3, v16, v17, v18, v19, v20);
    v23 = objc_msgSend_matchesInString_options_range_(v15, v22, v3, 0, 0, v21);
    v29 = objc_msgSend_count(v23, v24, v25, v26, v27, v28) != 0;

    return v29;
  }
}

+ (id)declaredVariableInLatexTranscription:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (qword_1EA84CAE0 != -1)
  {
    dispatch_once(&qword_1EA84CAE0, &unk_1EF1BE278);
  }

  v9 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v3, v4, v5, v6, v7);
  v14 = objc_msgSend_componentsSeparatedByCharactersInSet_(v8, v10, v9, v11, v12, v13);

  v20 = objc_msgSend_string(MEMORY[0x1E696AD60], v15, v16, v17, v18, v19);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = v14;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v56, v60, 16, v23);
  if (v29)
  {
    v30 = *v57;
LABEL_5:
    v31 = 0;
    while (1)
    {
      if (*v57 != v30)
      {
        objc_enumerationMutation(v21);
      }

      v32 = *(*(&v56 + 1) + 8 * v31);
      if (objc_msgSend_length(v32, v24, v25, v26, v27, v28, v56) != 1)
      {
        break;
      }

      v38 = qword_1EA84CAE8;
      v39 = objc_msgSend_characterAtIndex_(v32, v33, 0, v35, v36, v37);
      if (!objc_msgSend_characterIsMember_(v38, v40, v39, v41, v42, v43))
      {
        break;
      }

      objc_msgSend_appendString_(v20, v33, v32, v35, v36, v37);
      if (v29 == ++v31)
      {
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v56, v60, 16, v28);
        if (v29)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    if (!objc_msgSend_length(v20, v33, v34, v35, v36, v37))
    {
      goto LABEL_16;
    }

    isEqualToString = objc_msgSend_isEqualToString_(v32, v44, @"=", v45, v46, v47);

    if (isEqualToString)
    {
      v54 = objc_msgSend_copy(v20, v49, v50, v51, v52, v53);
      goto LABEL_18;
    }
  }

  else
  {
LABEL_16:
  }

  v54 = 0;
LABEL_18:

  return v54;
}

+ (BOOL)isNonTextCandidateTextTranscription:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v4, @" ", &stru_1EF1C0318, v5, v6);
  v13 = objc_msgSend_length(v7, v8, v9, v10, v11, v12);

  if (v13 <= 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v72 = 138739971;
      v73 = v3;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "CHTokenizedMathResult is nontext candidate due to single character transcription: %{sensitive}@", &v72, 0xCu);
    }

    goto LABEL_27;
  }

  if (!sub_1837A576C(v3, 0))
  {
    v21 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v15, v16, v17, v18, v19);
    v14 = objc_msgSend_stringByTrimmingCharactersInSet_(v3, v22, v21, v23, v24, v25);

    v29 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v26, @" ", &stru_1EF1C0318, v27, v28);
    v35 = objc_msgSend_length(v29, v30, v31, v32, v33, v34);

    v36 = sub_1837A5BBC(v3);
    v47 = sub_1837A5B20(v3, v37, v38, v39, v40, v41) || sub_1837A5B20(v14, v42, v43, v44, v45, v46);
    v53 = sub_1837A5EA4(v3) || sub_1837A5EA4(v14);
    v59 = sub_1837A5CD0(v3, v48, v49, v50, v51, v52) || sub_1837A5CD0(v14, v54, v55, v56, v57, v58);
    if (objc_msgSend_length(v3, v54, v55, v56, v57, v58) >= 3 && objc_msgSend_length(v14, v60, v61, v62, v63, v64) > 2)
    {
      v69 = 0;
    }

    else
    {
      v65 = objc_msgSend_ch_mathDigitsCharSet(MEMORY[0x1E696AB08], v60, v61, v62, v63, v64);
      v69 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v3, v66, v65, 0, v67, v68) == 1;
    }

    if (!v36 && !v47 && !v53 && !v69 && !v59 && v35 >= 2)
    {
      v20 = 0;
      goto LABEL_28;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v70 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      v72 = 138739971;
      v73 = v3;
      _os_log_impl(&dword_18366B000, v70, OS_LOG_TYPE_DEBUG, "CHTokenizedMathResult is nontext candidate due to invalid patterns in transcription: %{sensitive}@", &v72, 0xCu);
    }

LABEL_27:
    v20 = 1;
LABEL_28:

    goto LABEL_29;
  }

  v20 = 0;
LABEL_29:

  return v20;
}

- (void)enumerateTokensInTopTranscriptionPathWithBlock:(id)a3
{
  v17 = a3;
  v9 = objc_msgSend_firstObject(self->_transcriptionPaths, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_tokenColumnCount(self, v10, v11, v12, v13, v14);
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v16, v9, 0, v15, v17);
}

- (void)enumerateTokensInPreferredTranscriptionPathWithBlock:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = objc_msgSend_firstObject(self->_transcriptionPaths, v5, v6, v7, v8, v9);
  selectedTranscriptionPathIndex = self->_selectedTranscriptionPathIndex;
  if (selectedTranscriptionPathIndex && objc_msgSend_integerValue(selectedTranscriptionPathIndex, v10, v11, v12, v13, v14))
  {
    v22 = objc_msgSend_integerValue(self->_selectedTranscriptionPathIndex, v10, v11, v12, v13, v14);
    if (v22 < 1 || v22 >= objc_msgSend_count(self->_transcriptionPaths, v17, v18, v19, v20, v21))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v28 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = 134217984;
        v32 = v22;
        _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "Invalid selected transcription path idnex %lu. Using top transcription path.", &v31, 0xCu);
      }
    }

    else
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(self->_transcriptionPaths, v23, v22, v24, v25, v26);

      v15 = v27;
    }
  }

  v29 = objc_msgSend_tokenColumnCount(self, v10, v11, v12, v13, v14);
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v30, v15, 0, v29, v4);
}

- (void)enumerateTokensInTranscriptionPath:(id)a3 columnRange:(_NSRange)a4 tokenProcessingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v133 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v14 = a5;
  v15 = location + length;
  v125 = v9;
  if (location < v15)
  {
    v16 = 0;
    v123 = v15;
    v124 = self;
    do
    {
      v126 = objc_msgSend_objectAtIndexedSubscript_(self->_tokenColumns, v10, location, v11, v12, v13, v123, v124);
      if (location >= objc_msgSend_length(v9, v17, v18, v19, v20, v21))
      {
        if (location >= objc_msgSend_length(v9, v22, v23, v24, v25, v26))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v66 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v72 = objc_msgSend_length(v9, v67, v68, v69, v70, v71);
            *buf = 134218240;
            *&buf[4] = location;
            *&buf[12] = 2048;
            *&buf[14] = v72;
            _os_log_impl(&dword_18366B000, v66, OS_LOG_TYPE_ERROR, "Trying to access index %ld outside of path of length %ld. Skipping.", buf, 0x16u);
          }

          v9 = v125;
        }

        if (location < objc_msgSend_length(v9, v61, v62, v63, v64, v65))
        {
          goto LABEL_36;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v51 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          v78 = objc_msgSend_length(v9, v73, v74, v75, v76, v77);
          *buf = 134218240;
          *&buf[4] = location;
          *&buf[12] = 2048;
          *&buf[14] = v78;
          _os_log_impl(&dword_18366B000, v51, OS_LOG_TYPE_FAULT, "Trying to access index %ld outside of path of length %ld. Skipping.", buf, 0x16u);
        }
      }

      else
      {
        v27 = objc_msgSend_indexAtPosition_(v9, v22, location, v24, v25, v26);
        v33 = objc_msgSend_mathTokenRows(v126, v28, v29, v30, v31, v32);
        v39 = v27 < objc_msgSend_count(v33, v34, v35, v36, v37, v38);

        if (v39)
        {
          v45 = objc_msgSend_mathTokenRows(v126, v40, v41, v42, v43, v44);
          v50 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, v27, v47, v48, v49);

          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v51 = v50;
          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v127, v132, 16, v53);
          if (v54)
          {
            v55 = 0;
            v56 = *v128;
            do
            {
              for (i = 0; i != v54; ++i)
              {
                if (*v128 != v56)
                {
                  objc_enumerationMutation(v51);
                }

                v58 = *(*(&v127 + 1) + 8 * i);
                *buf = location;
                *&buf[8] = v27;
                *&buf[16] = v55;
                v14[2](v14, v58, v16, buf);
                ++v55;
                ++v16;
              }

              v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v59, &v127, v132, 16, v60);
            }

            while (v54);
          }

          v15 = v123;
          self = v124;
        }

        else
        {
          v79 = objc_msgSend_mathTokenRows(v126, v40, v41, v42, v43, v44);
          v85 = v27 < objc_msgSend_count(v79, v80, v81, v82, v83, v84);

          if (!v85)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v91 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              v97 = objc_msgSend_mathTokenRows(v126, v92, v93, v94, v95, v96);
              v103 = objc_msgSend_count(v97, v98, v99, v100, v101, v102);
              *buf = 134218240;
              *&buf[4] = v27;
              *&buf[12] = 2048;
              *&buf[14] = v103;
              _os_log_impl(&dword_18366B000, v91, OS_LOG_TYPE_ERROR, "Trying to access index %ld outside of available tokenRows of length %ld. Skipping.", buf, 0x16u);
            }
          }

          v104 = objc_msgSend_mathTokenRows(v126, v86, v87, v88, v89, v90);
          v110 = v27 < objc_msgSend_count(v104, v105, v106, v107, v108, v109);

          if (v110)
          {
            goto LABEL_36;
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v51 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            v116 = objc_msgSend_mathTokenRows(v126, v111, v112, v113, v114, v115);
            v122 = objc_msgSend_count(v116, v117, v118, v119, v120, v121);
            *buf = 134218240;
            *&buf[4] = v27;
            *&buf[12] = 2048;
            *&buf[14] = v122;
            _os_log_impl(&dword_18366B000, v51, OS_LOG_TYPE_FAULT, "Trying to access index %ld outside of available tokenRows of length %ld. Skipping.", buf, 0x16u);
          }
        }
      }

LABEL_36:
      ++location;
      v9 = v125;
    }

    while (location != v15);
  }
}

- (BOOL)isEquivalentToTokenizedMathResult:(id)a3
{
  v9 = a3;
  if (self == v9)
  {
    v40 = 1;
    goto LABEL_11;
  }

  v10 = objc_msgSend_tokenColumns(self, v4, v5, v6, v7, v8);
  v16 = objc_msgSend_tokenColumns(v9, v11, v12, v13, v14, v15);
  v22 = v16;
  if (v10 == v16)
  {
  }

  else
  {
    v23 = objc_msgSend_tokenColumns(self, v17, v18, v19, v20, v21);
    v29 = objc_msgSend_tokenColumns(v9, v24, v25, v26, v27, v28);
    isEqual = objc_msgSend_isEqual_(v23, v30, v29, v31, v32, v33);

    if (!isEqual)
    {
      v40 = 0;
      goto LABEL_11;
    }
  }

  v41 = objc_msgSend_transcriptionPaths(self, v35, v36, v37, v38, v39);
  v52 = objc_msgSend_transcriptionPaths(v9, v42, v43, v44, v45, v46);
  if (v41 == v52)
  {
    v40 = 1;
  }

  else
  {
    v53 = objc_msgSend_transcriptionPaths(self, v47, v48, v49, v50, v51);
    v59 = objc_msgSend_transcriptionPaths(v9, v54, v55, v56, v57, v58);
    v40 = objc_msgSend_isEqual_(v53, v60, v59, v61, v62, v63);
  }

LABEL_11:
  return v40;
}

- (BOOL)isEqualToTokenizedMathResult:(id)a3
{
  v9 = a3;
  if (self == v9)
  {
    v40 = 1;
  }

  else
  {
    v10 = objc_msgSend_topTranscription(self, v4, v5, v6, v7, v8);
    v16 = objc_msgSend_topTranscription(v9, v11, v12, v13, v14, v15);
    v22 = v16;
    if (v10 == v16)
    {
    }

    else
    {
      v23 = objc_msgSend_topTranscription(self, v17, v18, v19, v20, v21);
      v29 = objc_msgSend_topTranscription(v9, v24, v25, v26, v27, v28);
      isEqualToString = objc_msgSend_isEqualToString_(v23, v30, v29, v31, v32, v33);

      if (!isEqualToString)
      {
        goto LABEL_13;
      }
    }

    v41 = objc_msgSend_strokeIndexes(self, v35, v36, v37, v38, v39);
    v47 = objc_msgSend_strokeIndexes(v9, v42, v43, v44, v45, v46);
    v53 = v47;
    if (v41 == v47)
    {
    }

    else
    {
      v54 = objc_msgSend_strokeIndexes(self, v48, v49, v50, v51, v52);
      v60 = objc_msgSend_strokeIndexes(v9, v55, v56, v57, v58, v59);
      isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v54, v61, v60, v62, v63, v64);

      if (!isEqualToIndexSet)
      {
LABEL_13:
        v40 = 0;
        goto LABEL_19;
      }
    }

    v71 = objc_msgSend_tokenColumns(self, v66, v67, v68, v69, v70);
    v77 = objc_msgSend_tokenColumns(v9, v72, v73, v74, v75, v76);
    v83 = v77;
    if (v71 == v77)
    {
    }

    else
    {
      v84 = objc_msgSend_tokenColumns(self, v78, v79, v80, v81, v82);
      v90 = objc_msgSend_tokenColumns(v9, v85, v86, v87, v88, v89);
      isEqual = objc_msgSend_isEqual_(v84, v91, v90, v92, v93, v94);

      if (!isEqual)
      {
        goto LABEL_13;
      }
    }

    v101 = objc_msgSend_selectedTranscriptionPathIndex(self, v96, v97, v98, v99, v100);
    v112 = objc_msgSend_selectedTranscriptionPathIndex(v9, v102, v103, v104, v105, v106);
    if (v101 == v112)
    {
      v40 = 1;
    }

    else
    {
      v113 = objc_msgSend_selectedTranscriptionPathIndex(self, v107, v108, v109, v110, v111);
      v119 = objc_msgSend_selectedTranscriptionPathIndex(v9, v114, v115, v116, v117, v118);
      v40 = objc_msgSend_isEqual_(v113, v120, v119, v121, v122, v123);
    }
  }

LABEL_19:

  return v40;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTokenizedMathResult = objc_msgSend_isEqualToTokenizedMathResult_(self, v5, v4, v6, v7, v8);

    return isEqualToTokenizedMathResult;
  }

  else
  {

    return 0;
  }
}

- (id)parseTree
{
  v42 = *MEMORY[0x1E69E9840];
  if (!self->_didAttemptParsing)
  {
    self->_didAttemptParsing = 1;
    sub_1837A3290("latex_grammar.txt", 0, v41);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, v41, v4, v5, v6);
    v8 = [CHGrammar alloc];
    v13 = objc_msgSend_initWithFile_(v8, v9, v7, v10, v11, v12);
    v14 = [CHLatexParser alloc];
    v18 = objc_msgSend_initWithGrammar_parseNormalizedLatex_(v14, v15, v13, 1, v16, v17);
    v24 = objc_msgSend_preferredTranscription(self, v19, v20, v21, v22, v23);
    v40 = 0;
    v28 = objc_msgSend_parseLatex_outCorrectedLatex_(v18, v25, v24, &v40, v26, v27);
    v29 = v40;
    v35 = objc_msgSend_firstObject(v28, v30, v31, v32, v33, v34);
    parseTree = self->_parseTree;
    self->_parseTree = v35;

    correctedLatex = self->_correctedLatex;
    self->_correctedLatex = v29;
  }

  v38 = self->_parseTree;

  return v38;
}

- (id)evaluationWithVariables:(id)a3 caseSensitive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12 = objc_msgSend_parseTree(self, v7, v8, v9, v10, v11);
  objc_msgSend_inputRange(v12, v13, v14, v15, v16, v17);
  v19 = v18;
  v24 = objc_msgSend_length(self->_correctedLatex, v18, v20, v21, v22, v23);

  if (v19 == v24)
  {
    v30 = objc_msgSend_parseTree(self, v25, v26, v27, v28, v29);
    v34 = objc_msgSend_evaluationWithVariables_caseSensitive_(v30, v31, v6, v4, v32, v33);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)declaredVariable
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = sub_1837CE1A4;
  v63[3] = &unk_1E6DDBDA0;
  v8 = v7;
  v64 = v8;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(self, v9, v63, v10, v11, v12);
  v18 = objc_msgSend_string(MEMORY[0x1E696AD60], v13, v14, v15, v16, v17);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v19 = v8;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v59, v65, 16, v21);
  if (v27)
  {
    v28 = *v60;
LABEL_3:
    v29 = 0;
    while (1)
    {
      if (*v60 != v28)
      {
        objc_enumerationMutation(v19);
      }

      v30 = *(*(&v59 + 1) + 8 * v29);
      if ((objc_msgSend_properties(v30, v22, v23, v24, v25, v26, v59) & 0x10) == 0)
      {
        break;
      }

      v36 = objc_msgSend_string(v30, v31, v32, v33, v34, v35);
      objc_msgSend_appendString_(v18, v37, v36, v38, v39, v40);

      if (v27 == ++v29)
      {
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v59, v65, 16, v26);
        if (v27)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if (!objc_msgSend_length(v18, v31, v32, v33, v34, v35))
    {
      goto LABEL_13;
    }

    v46 = objc_msgSend_string(v30, v41, v42, v43, v44, v45);
    isEqualToString = objc_msgSend_isEqualToString_(v46, v47, @"=", v48, v49, v50);

    if (isEqualToString)
    {
      v57 = objc_msgSend_copy(v18, v52, v53, v54, v55, v56);
      goto LABEL_15;
    }
  }

  else
  {
LABEL_13:
  }

  v57 = 0;
LABEL_15:

  return v57;
}

- (BOOL)isEvaluationExpected
{
  v6 = objc_msgSend_preferredTranscription(self, a2, v2, v3, v4, v5);
  if (objc_msgSend_hasSuffix_(v6, v7, @"=", v8, v9, v10) & 1) != 0 || (objc_msgSend_hasSuffix_(v6, v11, @"\\hline", v12, v13, v14))
  {

    return 1;
  }

  else
  {
    hasSuffix = objc_msgSend_hasSuffix_(v6, v16, @"\\hline \\end{array}", v17, v18, v19);

    return hasSuffix;
  }
}

- (id)alternativeCandidatesLog
{
  v113 = *MEMORY[0x1E69E9840];
  v93 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = self->_tokenColumns;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v106, v112, 16, v7);
  if (v13)
  {
    v96 = *v107;
    do
    {
      v97 = 0;
      v95 = v13;
      do
      {
        if (*v107 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v106 + 1) + 8 * v97);
        v15 = objc_msgSend_tokenRows(v14, v8, v9, v10, v11, v12);
        v21 = objc_msgSend_count(v15, v16, v17, v18, v19, v20) > 1;

        if (v21)
        {
          v22 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v28 = objc_msgSend_mathTokenRows(v14, v23, v24, v25, v26, v27);
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v102, v111, 16, v30);
          if (v31)
          {
            v32 = *v103;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v103 != v32)
                {
                  objc_enumerationMutation(v28);
                }

                v34 = *(*(&v102 + 1) + 8 * i);
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                v101 = 0u;
                v35 = v34;
                v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v98, v110, 16, v37);
                if (v43)
                {
                  v44 = *v99;
                  v45 = 1.0;
                  do
                  {
                    for (j = 0; j != v43; ++j)
                    {
                      if (*v99 != v44)
                      {
                        objc_enumerationMutation(v35);
                      }

                      objc_msgSend_score(*(*(&v98 + 1) + 8 * j), v38, v39, v40, v41, v42);
                      v45 = v45 * v47;
                    }

                    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v98, v110, 16, v42);
                  }

                  while (v43);
                }

                else
                {
                  v45 = 1.0;
                }

                v52 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v48, @"%.3f", v49, v50, v51, *&v45);
                objc_msgSend_addObject_(v22, v53, v52, v54, v55, v56);
              }

              v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v57, &v102, v111, 16, v58);
            }

            while (v31);
          }

          v59 = MEMORY[0x1E696AEC0];
          v64 = objc_msgSend_componentsJoinedByString_(v22, v60, @", ", v61, v62, v63);
          v69 = objc_msgSend_stringWithFormat_(v59, v65, @"[%@]", v66, v67, v68, v64);
          objc_msgSend_addObject_(v93, v70, v69, v71, v72, v73);
        }

        ++v97;
      }

      while (v97 != v95);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v106, v112, 16, v12);
    }

    while (v13);
  }

  v74 = MEMORY[0x1E696AEC0];
  v80 = objc_msgSend_count(v93, v75, v76, v77, v78, v79);
  v85 = objc_msgSend_componentsJoinedByString_(v93, v81, @",", v82, v83, v84);
  v90 = objc_msgSend_stringWithFormat_(v74, v86, @"Math result %p has %lu subexpressions with alternative candidates having these scores: %@", v87, v88, v89, self, v80, v85);

  return v90;
}

- (double)baseCharacterHeight
{
  result = self->_baseCharacterHeight;
  if (result >= 0.0)
  {
    return result;
  }

  objc_msgSend_bounds(self, a2, v2, v3, v4, v5);
  v9 = v8;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x6012000000;
  v35[3] = sub_1837CE994;
  v35[4] = sub_1837CE9D0;
  v35[5] = &unk_183A5AC72;
  memset(v36, 0, sizeof(v36));
  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = sub_1837CE9D8;
  v30 = sub_1837CE9FC;
  v31 = &unk_183A5AC72;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_1837CEA14;
  v24[4] = sub_1837CEA24;
  v25 = &stru_1EF1C0318;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1837CEA2C;
  v23[3] = &unk_1E6DDE458;
  v23[4] = v24;
  v23[5] = v37;
  v23[6] = v35;
  v23[7] = &v26;
  objc_msgSend_enumerateTokensInPreferredTranscriptionPathWithBlock_(self, v10, v23, v11, v12, v13);
  v15 = v27[6];
  v14 = v27[7];
  if (v14 != v15)
  {
    v16 = v14 - v15;
    if (v14 - 1 == v15)
    {
      v17 = 0.0;
      v18 = v27[6];
    }

    else
    {
      v19 = (((v14 - 1) - v15) >> 3) + 1;
      v18 = &v15[v19 & 0x3FFFFFFFFFFFFFFELL];
      v20 = v15 + 1;
      v17 = 0.0;
      v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v17 = v17 + *(v20 - 1) + *v20;
        v20 += 2;
        v21 -= 2;
      }

      while (v21);
      if (v19 == (v19 & 0x3FFFFFFFFFFFFFFELL))
      {
        goto LABEL_9;
      }
    }

    do
    {
      v22 = *v18++;
      v17 = v17 + v22;
    }

    while (v18 != v14);
LABEL_9:
    v9 = v17 / v16;
  }

  self->_baseCharacterHeight = v9;
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(&v26, 8);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v35, 8);
  sub_18367BBC0(v36);
  _Block_object_dispose(v37, 8);
  return self->_baseCharacterHeight;
}

- (BOOL)transformNotationToInternal
{
  v70 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v54 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v52 = 88;
  obj = self->_transcriptionPaths;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v61, v69, 16, v8);
  if (v14)
  {
    v15 = *v62;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v61 + 1) + 8 * i);
        v18 = objc_msgSend_length(v17, v9, v10, v11, v12, v13, v52);
        v21 = objc_msgSend_transcriptionWithPath_columnRange_(self, v19, v17, 0, v18, v20);
        v26 = objc_msgSend_containsString_(v21, v22, @"\\begin{array}{lr}", v23, v24, v25);
        v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v27, v28, v29, v30, v31);
        v38 = objc_msgSend_length(v17, v33, v34, v35, v36, v37);
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = sub_1837CF398;
        v57[3] = &unk_1E6DDE480;
        v60 = v26;
        v59 = &v65;
        v39 = v32;
        v58 = v39;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v40, v17, 0, v38, v57);
        objc_msgSend_addObject_(v54, v41, v39, v42, v43, v44);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v61, v69, 16, v13);
    }

    while (v14);
  }

  if (*(v66 + 24) == 1)
  {
    v55 = 0;
    v56 = 0;
    sub_1837C2000(CHTokenizedMathResult, v54, &v56, &v55);
    v45 = v56;
    v46 = v55;
    tokenColumns = self->_tokenColumns;
    self->_tokenColumns = v45;
    v48 = v45;

    v49 = *(&self->super.super.isa + v52);
    *(&self->super.super.isa + v52) = v46;

    v50 = *(v66 + 24);
  }

  else
  {
    v50 = 0;
  }

  _Block_object_dispose(&v65, 8);
  return v50 & 1;
}

- (id)resultTransformedToOfficialNotationWithExplicitOperators:(BOOL)a3
{
  v98 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, v3, v4, v5);
  v12 = 0;
  v13 = 0;
  v96 = v102;
  while (v12 < objc_msgSend_count(self->_transcriptionPaths, v7, v8, v9, v10, v11, v96))
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(self->_transcriptionPaths, v14, v12, v15, v16, v17);
    v24 = objc_msgSend_length(v18, v19, v20, v21, v22, v23);
    v27 = objc_msgSend_transcriptionWithPath_columnRange_(self, v25, v18, 0, v24, v26);
    v32 = objc_msgSend_containsString_(v27, v28, @"\\hline", v29, v30, v31);
    v38 = v32;
    if (v12 && ((v13 ^ v32) & 1) != 0)
    {

      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_11:
      v79 = [CHTokenizedMathResult alloc];
      v84 = objc_msgSend_initWithBestPathTokens_(v79, v80, v98, v81, v82, v83);
      v90 = objc_msgSend_declaredVariablesWhileRecognized(self, v85, v86, v87, v88, v89);
      objc_msgSend_setDeclaredVariablesWhileRecognized_(v84, v91, v90, v92, v93, v94);

      goto LABEL_14;
    }

    v100 = objc_msgSend_array(MEMORY[0x1E695DF70], v33, v34, v35, v36, v37);
    v99 = v13;
    if (v38)
    {
      v44 = [CHTokenizedMathResultToken alloc];
      v50 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v45, v46, v47, v48, v49);
      v53 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v44, v51, @"\\begin{array}{lr}", v50, 1, v52, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
      objc_msgSend_addObject_(v100, v54, v53, v55, v56, v57);
    }

    v113[0] = 0;
    v113[1] = v113;
    v113[2] = 0x2020000000;
    v114 = 1;
    v111[0] = 0;
    v111[1] = v111;
    v111[2] = 0x2020000000;
    v112 = 1;
    v109[0] = 0;
    v109[1] = v109;
    v109[2] = 0x2020000000;
    v110 = 0;
    v58 = objc_msgSend_length(v18, v39, v40, v41, v42, v43);
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v102[0] = sub_1837CF99C;
    v102[1] = &unk_1E6DDE4A8;
    v107 = v38;
    v59 = v100;
    v103 = v59;
    v104 = v109;
    v105 = v113;
    v106 = v111;
    v108 = a3;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v60, v18, 0, v58, v101);
    if (v38)
    {
      v65 = [CHTokenizedMathResultToken alloc];
      v71 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v66, v67, v68, v69, v70);
      v74 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v65, v72, @"\\end{array}", v71, 1, v73, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
      objc_msgSend_addObject_(v59, v75, v74, v76, v77, v78);
    }

    objc_msgSend_addObject_(v98, v61, v59, v62, v63, v64);
    v13 = v99 | v38;

    _Block_object_dispose(v109, 8);
    _Block_object_dispose(v111, 8);
    _Block_object_dispose(v113, 8);

    ++v12;
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_13:
  v84 = 0;
LABEL_14:

  return v84;
}

+ (CHTokenizedMathResult)mathResultWithReindexedTokens:(id)a3 originalStrokeIdentifiersOrdering:(id)a4 newStrokeIdentifiersOrdering:(id)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v60 = a4;
  v61 = a5;
  v62 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = objc_msgSend_transcriptionPaths(v7, v13, v14, v15, v16, v17);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v67, v71, 16, v19);
  if (v25)
  {
    v26 = *v68;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v68 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v67 + 1) + 8 * i);
        v29 = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22, v23, v24);
        v35 = objc_msgSend_tokenColumnCount(v7, v30, v31, v32, v33, v34);
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = sub_1837D0180;
        v63[3] = &unk_1E6DDE4F8;
        v64 = v60;
        v65 = v61;
        v36 = v29;
        v66 = v36;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v7, v37, v28, 0, v35, v63);
        objc_msgSend_addObject_(v62, v38, v36, v39, v40, v41);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v67, v71, 16, v24);
    }

    while (v25);
  }

  v42 = [CHTokenizedMathResult alloc];
  v47 = objc_msgSend_initWithBestPathTokens_(v42, v43, v62, v44, v45, v46);
  v53 = objc_msgSend_declaredVariablesWhileRecognized(v7, v48, v49, v50, v51, v52);
  objc_msgSend_setDeclaredVariablesWhileRecognized_(v47, v54, v53, v55, v56, v57);

  return v47;
}

+ (CHTokenizedMathResult)mathResultWithMergedColumns:(id)a3 columnRangesToMerge:(id)a4
{
  v311 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v297 = a4;
  v302 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  for (i = 0; ; ++i)
  {
    v23 = objc_msgSend_transcriptionPaths(v5, v16, v17, v18, v19, v20);
    v29 = objc_msgSend_count(v23, v24, v25, v26, v27, v28);

    if (i >= v29)
    {
      break;
    }

    v30 = objc_alloc_init(MEMORY[0x1E696AC88]);
    objc_msgSend_addObject_(v21, v31, v30, v32, v33, v34);
  }

  v307 = 0u;
  v308 = 0u;
  v305 = 0u;
  v306 = 0u;
  obj = v297;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v305, v310, 16, v36);
  if (v37)
  {
    v43 = 0;
    v299 = *v306;
    v300 = v37;
    do
    {
      for (j = 0; j != v300; ++j)
      {
        if (*v306 != v299)
        {
          objc_enumerationMutation(obj);
        }

        v44 = objc_msgSend_rangeValue(*(*(&v305 + 1) + 8 * j), v38, v39, v40, v41, v42);
        v50 = v45;
        for (k = v44; v43 < k; ++v43)
        {
          v113 = objc_msgSend_tokenColumns(v5, v45, v46, v47, v48, v49);
          v118 = objc_msgSend_objectAtIndexedSubscript_(v113, v114, v43, v115, v116, v117);
          objc_msgSend_addObject_(v302, v119, v118, v120, v121, v122);

          for (m = 0; ; ++m)
          {
            v129 = objc_msgSend_transcriptionPaths(v5, v123, v124, v125, v126, v127);
            v135 = m < objc_msgSend_count(v129, v130, v131, v132, v133, v134);

            if (!v135)
            {
              break;
            }

            v136 = objc_msgSend_transcriptionPaths(v5, v45, v46, v47, v48, v49);
            v141 = objc_msgSend_objectAtIndexedSubscript_(v136, v137, m, v138, v139, v140);
            v146 = objc_msgSend_indexAtPosition_(v141, v142, v43, v143, v144, v145);

            v151 = objc_msgSend_objectAtIndexedSubscript_(v21, v147, m, v148, v149, v150);
            v156 = objc_msgSend_indexPathByAddingIndex_(v151, v152, v146, v153, v154, v155);
            objc_msgSend_setObject_atIndexedSubscript_(v21, v157, v156, m, v158, v159);
          }
        }

        v304 = objc_msgSend_array(MEMORY[0x1E695DF70], v45, v46, v47, v48, v49);
        v56 = 0;
        v43 += v50;
        while (1)
        {
          v57 = objc_msgSend_transcriptionPaths(v5, v51, v52, v53, v54, v55);
          v63 = v56 < objc_msgSend_count(v57, v58, v59, v60, v61, v62);

          if (!v63)
          {
            break;
          }

          v74 = objc_msgSend_array(MEMORY[0x1E695DF70], v64, v65, v66, v67, v68);
          v75 = k;
          if (k < v43)
          {
            do
            {
              v76 = objc_msgSend_transcriptionPaths(v5, v69, v70, v71, v72, v73);
              v81 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, v56, v78, v79, v80);
              v86 = objc_msgSend_indexAtPosition_(v81, v82, v75, v83, v84, v85);

              v92 = objc_msgSend_tokenColumns(v5, v87, v88, v89, v90, v91);
              v97 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, v75, v94, v95, v96);
              v103 = objc_msgSend_mathTokenRows(v97, v98, v99, v100, v101, v102);
              v108 = objc_msgSend_objectAtIndexedSubscript_(v103, v104, v86, v105, v106, v107);
              objc_msgSend_addObjectsFromArray_(v74, v109, v108, v110, v111, v112);

              ++v75;
            }

            while (v43 != v75);
          }

          objc_msgSend_addObject_(v304, v69, v74, v71, v72, v73);

          ++v56;
        }

        v165 = objc_msgSend_array(MEMORY[0x1E695DF70], v64, v65, v66, v67, v68);
        for (n = 0; n < objc_msgSend_count(v304, v160, v161, v162, v163, v164); ++n)
        {
          v171 = objc_msgSend_objectAtIndexedSubscript_(v304, v167, n, v168, v169, v170);
          v175 = objc_msgSend_mergeTokenRow_intoUniqueRows_(CHTokenizedMathResult, v172, v171, v165, v173, v174);
          v180 = objc_msgSend_objectAtIndexedSubscript_(v21, v176, n, v177, v178, v179);
          v185 = objc_msgSend_indexPathByAddingIndex_(v180, v181, v175, v182, v183, v184);
          objc_msgSend_setObject_atIndexedSubscript_(v21, v186, v185, n, v187, v188);
        }

        v189 = [CHTokenizedResultColumn alloc];
        v194 = objc_msgSend_initWithTokenRows_(v189, v190, v165, v191, v192, v193);
        objc_msgSend_addObject_(v302, v195, v194, v196, v197, v198);
      }

      v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v305, v310, 16, v42);
    }

    while (v300);
  }

  else
  {
    v43 = 0;
  }

  while (v43 < objc_msgSend_tokenColumnCount(v5, v199, v200, v201, v202, v203))
  {
    v209 = objc_msgSend_tokenColumns(v5, v204, v205, v206, v207, v208);
    v214 = objc_msgSend_objectAtIndexedSubscript_(v209, v210, v43, v211, v212, v213);
    objc_msgSend_addObject_(v302, v215, v214, v216, v217, v218);

    for (ii = 0; ; ++ii)
    {
      v225 = objc_msgSend_transcriptionPaths(v5, v219, v220, v221, v222, v223);
      v231 = ii < objc_msgSend_count(v225, v226, v227, v228, v229, v230);

      if (!v231)
      {
        break;
      }

      v232 = objc_msgSend_transcriptionPaths(v5, v199, v200, v201, v202, v203);
      v237 = objc_msgSend_objectAtIndexedSubscript_(v232, v233, ii, v234, v235, v236);
      v242 = objc_msgSend_indexAtPosition_(v237, v238, v43, v239, v240, v241);

      v247 = objc_msgSend_objectAtIndexedSubscript_(v21, v243, ii, v244, v245, v246);
      v252 = objc_msgSend_indexPathByAddingIndex_(v247, v248, v242, v249, v250, v251);
      objc_msgSend_setObject_atIndexedSubscript_(v21, v253, v252, ii, v254, v255);
    }

    ++v43;
  }

  v256 = [CHTokenizedMathResult alloc];
  v257 = v302;
  v258 = v21;
  if (v256)
  {
    v309.receiver = v256;
    v309.super_class = CHTokenizedMathResult;
    v264 = objc_msgSendSuper2(&v309, sel_initWithIsMinimalDrawingResult_, 0);
    if (v264)
    {
      v265 = objc_msgSend_copy(v257, v259, v260, v261, v262, v263);
      v266 = v264[4];
      v264[4] = v265;

      v272 = objc_msgSend_copy(v258, v267, v268, v269, v270, v271);
      v273 = v264[11];
      v264[11] = v272;

      v264[5] = 0xBFF0000000000000;
      v279 = objc_msgSend_set(MEMORY[0x1E695DFD8], v274, v275, v276, v277, v278);
      v280 = v264[10];
      v264[10] = v279;

      sub_1837C1BBC(v264, v281, v282, v283, v284, v285);
    }
  }

  else
  {
    v264 = 0;
  }

  v291 = objc_msgSend_declaredVariablesWhileRecognized(v5, v286, v287, v288, v289, v290);
  objc_msgSend_setDeclaredVariablesWhileRecognized_(v264, v292, v291, v293, v294, v295);

  return v264;
}

+ (id)updateStrokeIndexOffsetForSubResults:(id)a3 fromResult:(id)a4
{
  v112 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v94 = a4;
  v92 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10, v5);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v5;
  v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v106, v111, 16, v12);
  if (v93)
  {
    v91 = *v107;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v107 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v106 + 1) + 8 * i);
        v95 = objc_msgSend_strokeIndexes(v18, v13, v14, v15, v16, v17);
        v24 = objc_msgSend_strokeIndexes(v94, v19, v20, v21, v22, v23);
        v98 = objc_msgSend_mutableCopy(v24, v25, v26, v27, v28, v29);

        objc_msgSend_removeIndexes_(v98, v30, v95, v31, v32, v33);
        v97 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35, v36, v37, v38);
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v44 = objc_msgSend_transcriptionPaths(v18, v39, v40, v41, v42, v43);
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v102, v110, 16, v46);
        if (v52)
        {
          v53 = *v103;
          do
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v103 != v53)
              {
                objc_enumerationMutation(v44);
              }

              v55 = *(*(&v102 + 1) + 8 * j);
              v56 = objc_msgSend_array(MEMORY[0x1E695DF70], v47, v48, v49, v50, v51);
              v62 = objc_msgSend_tokenColumnCount(v18, v57, v58, v59, v60, v61);
              v99[0] = MEMORY[0x1E69E9820];
              v99[1] = 3221225472;
              v99[2] = sub_1837D10FC;
              v99[3] = &unk_1E6DDBE88;
              v100 = v98;
              v63 = v56;
              v101 = v63;
              objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v18, v64, v55, 0, v62, v99);
              objc_msgSend_addObject_(v97, v65, v63, v66, v67, v68);
            }

            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v47, &v102, v110, 16, v51);
          }

          while (v52);
        }

        v69 = [CHTokenizedMathResult alloc];
        v74 = objc_msgSend_initWithBestPathTokens_(v69, v70, v97, v71, v72, v73);
        v80 = objc_msgSend_declaredVariablesWhileRecognized(v94, v75, v76, v77, v78, v79);
        objc_msgSend_setDeclaredVariablesWhileRecognized_(v74, v81, v80, v82, v83, v84);

        objc_msgSend_addObject_(v92, v85, v74, v86, v87, v88);
      }

      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v106, v111, 16, v17);
    }

    while (v93);
  }

  return v92;
}

+ (BOOL)isTranscriptionValidExpression:(id)a3 limitToCurrentLocale:(BOOL)a4 declaredVariables:(id)a5
{
  v133 = a4;
  v143 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v132 = a5;
  v137 = objc_msgSend_string(MEMORY[0x1E696AD60], v7, v8, v9, v10, v11);
  v135 = objc_msgSend_string(MEMORY[0x1E696AD60], v12, v13, v14, v15, v16);
  v136 = objc_msgSend_string(MEMORY[0x1E696AD60], v17, v18, v19, v20, v21);
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = v6;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v138, v142, 16, v23);
  if (!v29)
  {
    v131 = 1;
    v32 = 1;
    goto LABEL_40;
  }

  v30 = 0;
  v131 = 1;
  v31 = *v139;
  v32 = 1;
  while (2)
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v139 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v138 + 1) + 8 * i);
      v35 = objc_msgSend_properties(v34, v24, v25, v26, v27, v28);
      v41 = objc_msgSend_properties(v34, v36, v37, v38, v39, v40);
      v47 = objc_msgSend_properties(v34, v42, v43, v44, v45, v46);
      if ((objc_msgSend_properties(v34, v48, v49, v50, v51, v52) & 0x10) != 0)
      {
        v58 = 1;
        if ((v47 & 6) != 0)
        {
          goto LABEL_19;
        }

LABEL_8:
        if ((v35 & 0x2000) != 0)
        {
          v59 = v30;
        }

        else
        {
          v59 = 0;
        }

        if ((v41 & 0xC0) != 0)
        {
          v30 = 2 * ((v30 - 1) < 2);
        }

        else
        {
          v30 = v59;
        }

        if (!objc_msgSend_length(v137, v53, v54, v55, v56, v57))
        {
LABEL_25:
          if (v58)
          {
            v66 = objc_msgSend_string(v34, v60, v61, v62, v63, v64);
            objc_msgSend_appendString_(v135, v75, v66, v76, v77, v78);
          }

          else
          {
            if (objc_msgSend_length(v135, v60, v61, v62, v63, v64))
            {
              if (objc_msgSend_length(v136, v79, v80, v81, v82, v83) || (objc_msgSend_string(v34, v84, v85, v86, v87, v88), v89 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v89, v90, @"=", v91, v92, v93), v89, !isEqualToString))
              {
                objc_msgSend_appendString_(v136, v84, @" 1", v86, v87, v88);
                if (v132)
                {
                  v131 &= objc_msgSend_containsObject_(v132, v95, v135, v96, v97, v98);
                }
              }

              else
              {
                objc_msgSend_appendString_(v136, v84, @"y", v86, v87, v88);
              }

              objc_msgSend_setString_(v135, v95, &stru_1EF1C0318, v96, v97, v98);
            }

            v66 = objc_msgSend_string(v34, v79, v80, v81, v82, v83);
            objc_msgSend_appendFormat_(v136, v99, @" %@", v100, v101, v102, v66);
          }

          goto LABEL_35;
        }

        if (v133)
        {
          if (v32)
          {
            v65 = objc_msgSend_currentLocale(MEMORY[0x1E695DF58], v60, v61, v62, v63, v64);
            v32 = sub_1837A56A0(v137, v65);

LABEL_24:
            objc_msgSend_setString_(v137, v60, &stru_1EF1C0318, v62, v63, v64);
            objc_msgSend_appendString_(v136, v71, @" 1", v72, v73, v74);
            goto LABEL_25;
          }
        }

        else if (v32)
        {
          v32 = sub_1837A536C(v137);
          goto LABEL_24;
        }

        v32 = 0;
        goto LABEL_24;
      }

      v58 = objc_msgSend_properties(v34, v53, v54, v55, v56, v57) == 0;
      if ((v47 & 6) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      if (v30 == 2)
      {
        isLatexTranscriptionValidExpression = 0;
        v104 = obj;
        goto LABEL_53;
      }

      v66 = objc_msgSend_string(v34, v53, v54, v55, v56, v57);
      objc_msgSend_appendString_(v137, v67, v66, v68, v69, v70);
      v30 = 1;
LABEL_35:
    }

    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v138, v142, 16, v28);
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_40:

  if (objc_msgSend_length(v137, v105, v106, v107, v108, v109))
  {
    objc_msgSend_appendString_(v136, v110, @" 1", v112, v113, v114);
    if (v133)
    {
      if (v32)
      {
        v115 = objc_msgSend_currentLocale(MEMORY[0x1E695DF58], v110, v111, v112, v113, v114);
        v32 = sub_1837A56A0(v137, v115);

        goto LABEL_47;
      }
    }

    else if (v32)
    {
      v32 = sub_1837A536C(v137);
      goto LABEL_47;
    }

    v32 = 0;
  }

LABEL_47:
  if (objc_msgSend_length(v135, v110, v111, v112, v113, v114) && (objc_msgSend_appendString_(v136, v116, @" 1", v118, v119, v120), v132))
  {
    if ((v32 & objc_msgSend_containsObject_(v132, v116, v135, v118, v119, v120) & v131 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_52:
    v104 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v116, v117, v118, v119, v120);
    v125 = objc_msgSend_stringByTrimmingCharactersInSet_(v136, v121, v104, v122, v123, v124);
    isLatexTranscriptionValidExpression = objc_msgSend_isLatexTranscriptionValidExpression_(CHCalculateWrapper, v126, v125, v127, v128, v129);

LABEL_53:
  }

  else
  {
    if (v32 & v131)
    {
      goto LABEL_52;
    }

LABEL_50:
    isLatexTranscriptionValidExpression = 0;
  }

  return isLatexTranscriptionValidExpression;
}

+ (BOOL)isTranscriptionValidExpression:(id)a3 transcriptionPath:(id)a4 limitToCurrentLocale:(BOOL)a5 requireDeclaredVariables:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v68 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v22 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20, v21);
  v28 = objc_msgSend_tokenColumnCount(v9, v23, v24, v25, v26, v27);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = sub_1837D1BC0;
  v64[3] = &unk_1E6DDBE88;
  v29 = v16;
  v65 = v29;
  v30 = v22;
  v66 = v30;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v9, v31, v10, 0, v28, v64);
  v37 = objc_msgSend_copy(v30, v32, v33, v34, v35, v36);
  objc_msgSend_addObject_(v29, v38, v37, v39, v40, v41);

  if (v6)
  {
    v47 = objc_msgSend_declaredVariablesWhileRecognized(v9, v42, v43, v44, v45, v46);
  }

  else
  {
    v47 = 0;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v48 = v29;
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v60, v67, 16, v50);
  if (v53)
  {
    v58 = v22;
    v59 = v16;
    v54 = *v61;
    while (2)
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(v48);
        }

        if ((objc_msgSend_isTranscriptionValidExpression_limitToCurrentLocale_declaredVariables_(CHTokenizedMathResult, v51, *(*(&v60 + 1) + 8 * i), v7, v47, v52, v58, v59, v60) & 1) == 0)
        {
          v56 = 0;
          goto LABEL_14;
        }
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v60, v67, 16, v52);
      if (v53)
      {
        continue;
      }

      break;
    }
  }

  v56 = 1;
LABEL_14:

  return v56;
}

- (id)tokenizedMathResultByAppendingTokenizedMathResult:(id)a3
{
  v4 = a3;
  v133 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v15 = objc_msgSend_strokeIndexes(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_count(v15, v16, v17, v18, v19, v20);

  v22 = 0;
  objc_msgSend_transcriptionPaths(self, v23, v24, v25, v26, v27, v138);
  while (1)
    v33 = {;
    v39 = objc_msgSend_count(v33, v34, v35, v36, v37, v38);

    if (v22 >= v39)
    {
      break;
    }

    v45 = objc_msgSend_transcriptionPaths(self, v40, v41, v42, v43, v44);
    v132 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, v22, v47, v48, v49);

    v131 = objc_msgSend_array(MEMORY[0x1E695DF70], v50, v51, v52, v53, v54);
    v130 = v22;
    v60 = objc_msgSend_tokenColumnCount(self, v55, v56, v57, v58, v59);
    v137[0] = MEMORY[0x1E69E9820];
    v137[1] = 3221225472;
    v138[0] = sub_1837D20C4;
    v138[1] = &unk_1E6DDBDA0;
    v61 = v131;
    v139 = v61;
    v62 = self;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(self, v63, v132, 0, v60, v137);
    for (i = 0; ; ++i)
    {
      v70 = objc_msgSend_transcriptionPaths(v4, v64, v65, v66, v67, v68);
      v76 = objc_msgSend_count(v70, v71, v72, v73, v74, v75);

      if (i >= v76)
      {
        break;
      }

      v82 = objc_msgSend_transcriptionPaths(v4, v77, v78, v79, v80, v81);
      v87 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, i, v84, v85, v86);

      v93 = objc_msgSend_mutableCopy(v61, v88, v89, v90, v91, v92);
      v99 = objc_msgSend_tokenColumnCount(v4, v94, v95, v96, v97, v98);
      v134[0] = MEMORY[0x1E69E9820];
      v134[1] = 3221225472;
      v134[2] = sub_1837D20D0;
      v134[3] = &unk_1E6DDE548;
      v136 = v21;
      v100 = v93;
      v135 = v100;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v4, v101, v87, 0, v99, v134);
      v107 = objc_msgSend_copy(v100, v102, v103, v104, v105, v106);
      objc_msgSend_addObject_(v133, v108, v107, v109, v110, v111);
    }

    v22 = v130 + 1;
    self = v62;
    objc_msgSend_transcriptionPaths(v62, v28, v29, v30, v31, v32, v129);
  }

  v112 = [CHTokenizedMathResult alloc];
  v117 = objc_msgSend_initWithBestPathTokens_(v112, v113, v133, v114, v115, v116);
  v123 = objc_msgSend_declaredVariablesWhileRecognized(self, v118, v119, v120, v121, v122);
  objc_msgSend_setDeclaredVariablesWhileRecognized_(v117, v124, v123, v125, v126, v127);

  return v117;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end