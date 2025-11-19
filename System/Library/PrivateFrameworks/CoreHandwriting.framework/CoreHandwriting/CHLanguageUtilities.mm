@interface CHLanguageUtilities
+ (BOOL)findPartialMatchInPhraseLexicon:(_LXLexicon *)a3 token:(id)a4 contextBeforeToken:(id)a5;
+ (BOOL)isMecabraConversionCandidateAllowed:(id)a3;
+ (BOOL)lexiconHasEntryForString:(id)a3 withLexicon:(_LXLexicon *)a4 outHasMatchingString:(BOOL *)a5;
+ (BOOL)shouldCapitalizeGivenHistory:(id)a3 shouldAutoCapitalizeSetting:(BOOL)a4 locale:(id)a5;
+ (double)characterLMLogProbabilityForString:(id)a3 characterLM:(id)a4;
+ (double)computeEditPenalizationFromString:(id)a3 toReferenceString:(id)a4 withSuffix:(id)a5 withCaseSensitivity:(BOOL)a6 withFirstLetterCaseSensitivity:(BOOL)a7 withDiacriticSensitivity:(BOOL)a8 withDiacriticsCharSet:(id)a9 withConsumableStrokesCharSet:(id)a10 outputSuffix:(id *)a11 lexiconExtraCharacters:(id *)a12 firstLetterCaseFlipped:(BOOL *)a13;
+ (id)lexiconCorrectionsForToken:(id)a3 locale:(id)a4 lexicon:(_LXLexicon *)a5 lmVocabulary:(void *)a6 ovsStringChecker:(id)a7 textReplacements:(id)a8 consumableStrokesSet:(id)a9 minimumTokenScore:(double)a10 activeHistoryRange:(_NSRange)a11 outBestTokenScore:(double *)a12 shouldCapitalizeWord:(BOOL)a13 shouldSkipEntryCorrection:(BOOL)a14 allowFullCapsCorrections:(BOOL)a15 minimalLengthForLowConfidenceCorrections:(int64_t)a16 lowConfidenceThreshold:(double)a17 minimalLengthForCustomCapitalizationCorrections:(int64_t)a18 outBestTokenIndex:(int64_t *)a19 outFoundTokenInLexicon:(BOOL *)a20 outFoundCaseMatchingTokenInLexicon:(BOOL *)a21 outCorrectionFromOutOfContextEntry:(BOOL *)a22;
+ (id)mecabraTokenizationAndKanaConversionForString:(id)a3 mecabraEngine:(__Mecabra *)a4 contextRef:(__MecabraContext *)a5 leftCandidateRef:(void *)a6 alternativeCandidateLimit:(int64_t)a7;
+ (id)performInverseBiDiForNumeric:(id)a3 isRTLContext:(BOOL)a4;
+ (id)rankedLatinLocalesForString:(id)a3 locales:(id)a4;
+ (id)splitStringIntoSubtokensForLexicon:(id)a3 minLength:(int64_t)a4;
+ (id)tokensRangesForString:(id)a3 outTokenIDs:(id *)a4 wordLanguageModel:(void *)a5;
+ (id)transformCyrillicToLatin:(id)a3;
+ (id)transformLatinToCyrillic:(id)a3;
+ (id)transformString:(id)a3 usingConfusions:(id)a4;
+ (id)transliterateStringUsingICUTransliterator:(id)a3 _icuTransliterator:(void *)a4;
+ (unsigned)normalizeLMTokenIDForWord:(id)a3 tokenID:(unsigned int)a4 isFromPattern:(BOOL)a5 score:(double *)a6 wordLanguageModel:(void *)a7;
+ (unsigned)tokenIDForString:(id)a3 withLexicon:(_LXLexicon *)a4;
@end

@implementation CHLanguageUtilities

+ (unsigned)normalizeLMTokenIDForWord:(id)a3 tokenID:(unsigned int)a4 isFromPattern:(BOOL)a5 score:(double *)a6 wordLanguageModel:(void *)a7
{
  v7 = a5;
  v9 = a3;
  if (v7)
  {
    TokenIDForString = 3;
  }

  else
  {
    TokenIDForString = a4;
  }

  if (!TokenIDForString)
  {
    TokenIDForString = LMLanguageModelGetTokenIDForString();
    if (!TokenIDForString)
    {
      v16 = objc_msgSend_lowercaseString(v9, v11, v12, v13, v14, v15);
      v17 = LMLanguageModelGetTokenIDForString();

      TokenIDForString = v17;
    }
  }

  if (TokenIDForString == 28)
  {
    v18 = 6;
  }

  else
  {
    v18 = TokenIDForString;
  }

  if ((v18 & 0xFFFFFFFE) == 0x82)
  {
    v18 = 3;
  }

  if (v18 == 46)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  return v19;
}

+ (id)tokensRangesForString:(id)a3 outTokenIDs:(id *)a4 wordLanguageModel:(void *)a5
{
  v6 = a3;
  v162 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v160 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  v165.length = objc_msgSend_length(v6, v17, v18, v19, v20, v21);
  v163 = v6;
  v165.location = 0;
  v26 = CFStringTokenizerCreate(0, v6, v165, 0, 0);
  if (v26)
  {
    v27 = 0;
    while (CFStringTokenizerAdvanceToNextToken(v26))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v26);
      length = CurrentTokenRange.length;
      if (CurrentTokenRange.location > v27)
      {
        v37 = objc_msgSend_substringWithRange_(v163, CurrentTokenRange.length, v27, CurrentTokenRange.location - v27, v34, v35);
        v43 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v38, v39, v40, v41, v42);
        v48 = objc_msgSend_stringByTrimmingCharactersInSet_(v37, v44, v43, v45, v46, v47);

        if (objc_msgSend_length(v48, v49, v50, v51, v52, v53))
        {
          v58 = objc_msgSend_rangeOfString_(v37, v54, v48, v55, v56, v57);
          v64 = objc_msgSend_length(v48, v59, v60, v61, v62, v63);
          v69 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v65, 0, v66, v67, v68);
          objc_msgSend_addObject_(v160, v70, v69, v71, v72, v73);

          v77 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v74, v58 + v27, v64, v75, v76);
          objc_msgSend_addObject_(v162, v78, v77, v79, v80, v81);
        }
      }

      v82 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], length, CurrentTokenRange.location, CurrentTokenRange.length, v34, v35);
      objc_msgSend_addObject_(v162, v83, v82, v84, v85, v86);

      if (a4)
      {
        v94 = objc_msgSend_substringWithRange_(v163, v87, CurrentTokenRange.location, CurrentTokenRange.length, v88, v89);
        if (a5)
        {
          TokenIDForString = LMLanguageModelGetTokenIDForString();
          v96 = objc_opt_class();
          v98 = objc_msgSend_normalizeLMTokenIDForWord_tokenID_isFromPattern_score_wordLanguageModel_(v96, v97, v94, TokenIDForString, 0, 0, a5);
          objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v99, v98, v100, v101, v102);
        }

        else
        {
          objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v90, 0, v91, v92, v93);
        }
        v103 = ;
        objc_msgSend_addObject_(v160, v104, v103, v105, v106, v107);
      }

      v27 = CurrentTokenRange.location + CurrentTokenRange.length;
    }

    if (objc_msgSend_length(v163, v28, v29, v30, v31, v32) > v27)
    {
      v109 = objc_msgSend_length(v163, v22, v108, v23, v24, v25);
      v113 = objc_msgSend_substringWithRange_(v163, v110, v27, v109 - v27, v111, v112);
      v119 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v114, v115, v116, v117, v118);
      v124 = objc_msgSend_stringByTrimmingCharactersInSet_(v113, v120, v119, v121, v122, v123);

      if (objc_msgSend_length(v124, v125, v126, v127, v128, v129))
      {
        v134 = objc_msgSend_rangeOfString_(v113, v130, v124, v131, v132, v133);
        v140 = objc_msgSend_length(v124, v135, v136, v137, v138, v139);
        v145 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v141, 0, v142, v143, v144);
        objc_msgSend_addObject_(v160, v146, v145, v147, v148, v149);

        v153 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v150, v134 + v27, v140, v151, v152);
        objc_msgSend_addObject_(v162, v154, v153, v155, v156, v157);
      }
    }
  }

  if (a4)
  {
    *a4 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v22, v160, v23, v24, v25);
  }

  v158 = v162;
  if (v26)
  {
    CFRelease(v26);
  }

  return v158;
}

+ (id)splitStringIntoSubtokensForLexicon:(id)a3 minLength:(int64_t)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (a4 <= 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "minLength has to be > 0", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_FAULT, "minLength has to be > 0", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  if (qword_1EA84CCA8 != -1)
  {
    dispatch_once(&qword_1EA84CCA8, &unk_1EF1BB4C8);
  }

  objc_msgSend_componentsSeparatedByCharactersInSet_(v10, v13, qword_1EA84CCA0, v14, v15, v16);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v18 = v38 = 0u;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v37, v42, 16, v20);
  if (v26)
  {
    v27 = *v38;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v18);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        if (objc_msgSend_length(v29, v21, v22, v23, v24, v25, v37) >= a4)
        {
          v30 = objc_msgSend_length(v29, v21, v22, v23, v24, v25);
          if (v30 != objc_msgSend_length(v10, v31, v32, v33, v34, v35))
          {
            objc_msgSend_addObject_(v17, v21, v29, v23, v24, v25);
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v37, v42, 16, v25);
    }

    while (v26);
  }

  return v17;
}

+ (BOOL)findPartialMatchInPhraseLexicon:(_LXLexicon *)a3 token:(id)a4 contextBeforeToken:(id)a5
{
  v99 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v91 = v7;
  v92 = a5;
  if (a3)
  {
    v13 = objc_msgSend_properties(v7, v8, v9, v10, v11, v12);
    v14 = @" ";
    if ((v13 & 0x20) == 0)
    {
      v14 = &stru_1EF1C0318;
    }

    v90 = v14;
    objc_msgSend_string(v7, v15, v16, v17, v18, v19);
    if (v92)
      v20 = {;
      v25 = objc_msgSend_stringByAppendingFormat_(v92, v21, @"%@%@", v22, v23, v24, v90, v20);
    }

    else
      v25 = {;
    }

    v32 = objc_msgSend_length(v92, v26, v27, v28, v29, v30);
    v38 = objc_msgSend_length(v90, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_string(v7, v39, v40, v41, v42, v43);
    v50 = objc_msgSend_length(v44, v45, v46, v47, v48, v49);

    v97 = 0x7FFFFFFFFFFFFFFFLL;
    v56 = objc_msgSend_length(v25, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_length(v25, v57, v58, v59, v60, v61);
    v89 = sub_1837A8900(v25, a3, 0x7FFFFFFFFFFFFFFFLL, 0, 0, v56, 3, v62, &v97);
    v63 = v38 + v32;
    if (v97 < v63 || v97 - v63 >= v50)
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v64 = v89;
      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v93, v98, 16, v66);
      if (v72)
      {
        v73 = *v94;
        while (2)
        {
          for (i = 0; i != v72; ++i)
          {
            if (*v94 != v73)
            {
              objc_enumerationMutation(v64);
            }

            v75 = *(*(&v93 + 1) + 8 * i);
            v76 = objc_msgSend_integerValue(v75, length, v68, v69, v70, v71);
            v81 = objc_msgSend_objectForKeyedSubscript_(v64, v77, v75, v78, v79, v80);
            v87 = objc_msgSend_length(v81, v82, v83, v84, v85, v86);

            v100.location = v63;
            v100.length = v50;
            v101.location = v76;
            v101.length = v87;
            length = NSIntersectionRange(v100, v101).length;
            if (length)
            {
              v31 = 1;
              goto LABEL_21;
            }
          }

          v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, 0, &v93, v98, 16, v71);
          if (v72)
          {
            continue;
          }

          break;
        }
      }

      v31 = 0;
LABEL_21:
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)transliterateStringUsingICUTransliterator:(id)a3 _icuTransliterator:(void *)a4
{
  v5 = a3;
  v11 = objc_msgSend_length(v5, v6, v7, v8, v9, v10);
  if (v11 != -1)
  {
    if (((v11 + 1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  objc_msgSend_getCharacters_(v5, v12, 0, v13, v14, v15);
  v21 = objc_msgSend_length(v5, v16, v17, v18, v19, v20);
  *(2 * v21) = 0;
  v27 = v5;
  if (a4)
  {
    v32 = objc_msgSend_length(v5, v22, v23, v24, v25, v26);
    utrans_transUChars();
    v27 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v28, 0, v32, v29, v30);
  }

  operator delete(0);

  return v27;
}

+ (id)transformString:(id)a3 usingConfusions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v18 = objc_msgSend_copy(v5, v13, v14, v15, v16, v17);
  objc_msgSend_addObject_(v12, v19, v18, v20, v21, v22);

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_18368FF14;
  v29[3] = &unk_1E6DDBFF8;
  v23 = v12;
  v30 = v23;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v24, v29, v25, v26, v27);

  return v23;
}

+ (id)transformLatinToCyrillic:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
  objc_msgSend_transformString_usingConfusions_(CHLanguageUtilities, v9, v31, &unk_1EF1EB900, v10, v11);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v12 = v33 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v32, v36, 16, v14);
  if (v20)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        v24 = objc_msgSend_ch_basicAlphabeticCharacterSet(MEMORY[0x1E696AB08], v15, v16, v17, v18, v19);
        v29 = objc_msgSend_rangeOfCharacterFromSet_(v23, v25, v24, v26, v27, v28);

        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_addObject_(v8, v15, v23, v17, v18, v19);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v32, v36, 16, v19);
    }

    while (v20);
  }

  return v8;
}

+ (id)transformCyrillicToLatin:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
  objc_msgSend_transformString_usingConfusions_(CHLanguageUtilities, v9, v31, &unk_1EF1EB928, v10, v11);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v12 = v33 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v32, v36, 16, v14);
  if (v20)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        v24 = objc_msgSend_ch_basicCyrillicCharacterSet(MEMORY[0x1E696AB08], v15, v16, v17, v18, v19);
        v29 = objc_msgSend_rangeOfCharacterFromSet_(v23, v25, v24, v26, v27, v28);

        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_addObject_(v8, v15, v23, v17, v18, v19);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v32, v36, 16, v19);
    }

    while (v20);
  }

  return v8;
}

+ (id)performInverseBiDiForNumeric:(id)a3 isRTLContext:(BOOL)a4
{
  v4 = a4;
  v233[1] = *MEMORY[0x1E69E9840];
  v218 = a3;
  if (v4)
  {
    objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v5, @"0123456789٠١٢٣٤٥٦٧٨٩/.", v6, v7, v8);
  }

  else
  {
    objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v5, @"٠١٢٣٤٥٦٧٨٩/.", v6, v7, v8);
  }
  v217 = ;
  v215 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v9, @"*+-^=", v10, v11, v12);
  v213 = objc_msgSend_mutableCopy(v217, v13, v14, v15, v16, v17);
  objc_msgSend_formUnionWithCharacterSet_(v213, v18, v215, v19, v20, v21);
  if (sub_1837A4F0C(v218, v213) && objc_msgSend_length(v218, v22, v23, v24, v25, v26) >= 2)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v27 = qword_1EA84DC58;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_DEBUG, "performInverseBiDiForNumeric is attempting to rearrange a numeric token", buf, 2u);
    }

    v33 = objc_msgSend_array(MEMORY[0x1E695DF70], v28, v29, v30, v31, v32);
    v216 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35, v36, v37, v38);
    v44 = 0;
    v45 = 1;
    while (v44 < objc_msgSend_length(v218, v39, v40, v41, v42, v43))
    {
      v51 = objc_msgSend_substringWithRange_(v218, v46, v44, 1, v49, v50);
      v56 = objc_msgSend_characterAtIndex_(v51, v52, 0, v53, v54, v55);
      if (objc_msgSend_characterIsMember_(v215, v57, v56, v58, v59, v60))
      {
        if (objc_msgSend_count(v216, v61, v62, v63, v64, v65))
        {
          v71 = objc_msgSend_mutableCopy(v216, v66, v67, v68, v69, v70);
          objc_msgSend_addObject_(v33, v72, v71, v73, v74, v75);
        }

        v233[0] = v51;
        v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v66, v233, 1, v69, v70);
        objc_msgSend_addObject_(v33, v77, v76, v78, v79, v80);

        objc_msgSend_removeAllObjects(v216, v81, v82, v83, v84, v85);
        v45 = 0;
      }

      else
      {
        v86 = objc_msgSend_characterAtIndex_(v51, v61, 0, v63, v64, v65);
        if (objc_msgSend_characterIsMember_(v217, v87, v86, v88, v89, v90))
        {
          if ((v45 & 1) != 0 || !objc_msgSend_count(v216, v91, v92, v93, v94, v95))
          {
            objc_msgSend_addObject_(v216, v91, v51, v93, v94, v95);
          }

          else if (objc_msgSend_count(v216, v91, v96, v93, v94, v95))
          {
            v102 = objc_msgSend_mutableCopy(v216, v97, v98, v99, v100, v101);
            objc_msgSend_addObject_(v33, v103, v102, v104, v105, v106);

            objc_msgSend_removeAllObjects(v216, v107, v108, v109, v110, v111);
          }

          v45 = 1;
        }
      }

      ++v44;
    }

    if (objc_msgSend_count(v216, v46, v47, v48, v49, v50))
    {
      v118 = objc_msgSend_mutableCopy(v216, v113, v114, v115, v116, v117);
      objc_msgSend_addObject_(v33, v119, v118, v120, v121, v122);
    }

    v123 = objc_msgSend_count(v33, v113, v114, v115, v116, v117);
    v214 = objc_msgSend_array(MEMORY[0x1E695DF70], v124, v125, v126, v127, v128);
    for (i = 0; i < objc_msgSend_count(v33, v129, v130, v131, v132, v133); ++i)
    {
      v135 = objc_msgSend_objectAtIndex_(v33, v129, i, v131, v132, v133);
      v140 = objc_msgSend_objectAtIndex_(v135, v136, 0, v137, v138, v139);
      v145 = objc_msgSend_characterAtIndex_(v140, v141, 0, v142, v143, v144);
      IsMember = objc_msgSend_characterIsMember_(v217, v146, v145, v147, v148, v149);

      if (IsMember)
      {
        break;
      }
    }

    v151 = v123 - 1;
    do
    {
      v152 = v151;
      if (v151 < i)
      {
        break;
      }

      v153 = objc_msgSend_objectAtIndex_(v33, v129, v151, v131, v132, v133);
      v158 = objc_msgSend_objectAtIndex_(v153, v154, 0, v155, v156, v157);
      v163 = objc_msgSend_characterAtIndex_(v158, v159, 0, v160, v161, v162);
      v168 = objc_msgSend_characterIsMember_(v217, v164, v163, v165, v166, v167);

      v151 = v152 - 1;
    }

    while ((v168 & 1) == 0);
    if (i == v152)
    {
      v112 = v218;
    }

    else
    {
      if (i)
      {
        for (j = 0; j != i; ++j)
        {
          v170 = objc_msgSend_objectAtIndex_(v33, v129, j, v131, v132, v133);
          objc_msgSend_addObject_(v214, v171, v170, v172, v173, v174);
        }
      }

      v175 = v152 + 1;
      if (v152 >= i)
      {
        v176 = v152 + 1;
        do
        {
          v177 = objc_msgSend_objectAtIndex_(v33, v129, --v176, v131, v132, v133);
          objc_msgSend_addObject_(v214, v178, v177, v179, v180, v181);
        }

        while (v176 > i);
      }

      while (v175 < objc_msgSend_count(v33, v129, v130, v131, v132, v133))
      {
        v182 = objc_msgSend_objectAtIndex_(v33, v187, v175, v189, v190, v191);
        objc_msgSend_addObject_(v214, v183, v182, v184, v185, v186);

        ++v175;
      }

      v112 = objc_msgSend_string(MEMORY[0x1E696AD60], v187, v188, v189, v190, v191);
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v192 = v214;
      v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v192, v193, &v223, v232, 16, v194);
      if (v195)
      {
        v196 = *v224;
        do
        {
          for (k = 0; k != v195; ++k)
          {
            if (*v224 != v196)
            {
              objc_enumerationMutation(v192);
            }

            v198 = *(*(&v223 + 1) + 8 * k);
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v222 = 0u;
            v199 = v198;
            v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v200, &v219, v231, 16, v201);
            if (v206)
            {
              v207 = *v220;
              do
              {
                for (m = 0; m != v206; ++m)
                {
                  if (*v220 != v207)
                  {
                    objc_enumerationMutation(v199);
                  }

                  objc_msgSend_appendString_(v112, v202, *(*(&v219 + 1) + 8 * m), v203, v204, v205);
                }

                v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v202, &v219, v231, 16, v205);
              }

              while (v206);
            }
          }

          v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v192, v209, &v223, v232, 16, v210);
        }

        while (v195);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v211 = qword_1EA84DC58;
      if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v228 = v218;
        v229 = 2112;
        v230 = v112;
        _os_log_impl(&dword_18366B000, v211, OS_LOG_TYPE_DEBUG, "performInverseBiDiForNumeric rearranged numeric string %@ to %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v112 = v218;
  }

  return v112;
}

+ (unsigned)tokenIDForString:(id)a3 withLexicon:(_LXLexicon *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0xFFEFFFFFFFFFFFFFLL;
  v7 = a3;
  v4 = v7;
  LXLexiconEnumerateEntriesForString();
  v5 = *(v10 + 6);

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

+ (BOOL)lexiconHasEntryForString:(id)a3 withLexicon:(_LXLexicon *)a4 outHasMatchingString:(BOOL *)a5
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = a3;
  LXLexiconEnumerateEntriesForString();
  if (a5)
  {
    *a5 = *(v10 + 24);
  }

  v7 = *(v14 + 24);

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (double)characterLMLogProbabilityForString:(id)a3 characterLM:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = v6;
  v13 = 0.0;
  if (v6 && objc_msgSend_lmSPIType(v6, v7, v8, v9, v10, v11) == 2)
  {
    objc_msgSend_languageModel(v12, v14, v15, v16, v17, v18);
    CVNLPLanguageModelLogJointProbability();
    v13 = v19;
  }

  return v13;
}

+ (BOOL)isMecabraConversionCandidateAllowed:(id)a3
{
  v3 = a3;
  if (qword_1EA84CCB0 != -1)
  {
    dispatch_once(&qword_1EA84CCB0, &unk_1EF1BB4E8);
  }

  v4 = sub_1837A4F0C(v3, qword_1EA84CCB8);

  return v4;
}

+ (id)mecabraTokenizationAndKanaConversionForString:(id)a3 mecabraEngine:(__Mecabra *)a4 contextRef:(__MecabraContext *)a5 leftCandidateRef:(void *)a6 alternativeCandidateLimit:(int64_t)a7
{
  v10 = a3;
  MecabraContextAddCandidate();
  if (MecabraAnalyzeStringWithContext() && (NextCandidate = MecabraGetNextCandidate(), (v12 = NextCandidate) != 0))
  {
    v13 = NextCandidate;
    v106 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16, v17, v18);
    WordCount = MecabraCandidateGetWordCount();
    v103 = a5;
    if (WordCount < 1)
    {
      v72 = 0;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v107 = 0;
      v104 = a7;
      v105 = WordCount;
      do
      {
        v110 = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22, v23, v24, v103);
        objc_msgSend_addObject_(v106, v27, v110, v28, v29, v30);
        NextPhraseBoundary = MecabraCandidateGetNextPhraseBoundary();
        v35 = NextPhraseBoundary;
        if (v26 <= NextPhraseBoundary)
        {
          v37 = 0;
          LOBYTE(v36) = 0;
          v109 = NextPhraseBoundary + 1;
          while (1)
          {
            WordReadingLengthAtIndex = MecabraCandidateGetWordReadingLengthAtIndex();
            v36 = (v36 & 1) != 0 ? 1 : MecabraCandidateHasAlternativeSurfaceFormForWordAtIndex();
            v37 += WordReadingLengthAtIndex;
            v49 = v37 + v25;
            if (v37 + v25 < objc_msgSend_length(v10, v38, v39, v40, v41, v42))
            {
              v108 = v37;
              v50 = v10;
              v51 = a4;
              v52 = objc_msgSend_ch_basicAlphanumericCharacterSet(MEMORY[0x1E696AB08], v44, v45, v46, v47, v48);
              v57 = objc_msgSend_characterAtIndex_(v50, v53, v49 - 1, v54, v55, v56);
              v62 = objc_msgSend_characterAtIndex_(v50, v58, v49, v59, v60, v61);
              LODWORD(v57) = objc_msgSend_characterIsMember_(v52, v63, v57, v64, v65, v66);
              LODWORD(v62) = objc_msgSend_characterIsMember_(v52, v67, v62, v68, v69, v70);

              v71 = v57 == v62;
              a4 = v51;
              v10 = v50;
              v37 = v108;
              if (!v71)
              {
                break;
              }
            }

            if (v109 == ++v26)
            {
              goto LABEL_17;
            }
          }

          v35 = v26;
LABEL_17:
          a7 = v104;
          objc_msgSend_substringWithRange_(v10, v44, v25, v37, v47, v48);
        }

        else
        {
          v36 = 0;
          v37 = 0;
          objc_msgSend_substringWithRange_(v10, v32, v25, 0, v33, v34);
        }
        v72 = ;
        objc_msgSend_addObject_(v110, v73, v72, v74, v75, v76);
        if (v36)
        {
          MecabraContextCreateMutable();
          if (v107)
          {
            CandidateFromContextString = MecabraCreateCandidateFromContextString();
            MecabraContextAddCandidate();
          }

          if (MecabraAnalyzeStringWithContext())
          {
            while (MecabraGetNextCandidate() && objc_msgSend_count(v110, v78, v79, v80, v81, v82) <= a7)
            {
              v83 = MecabraCandidateGetSurface();
              if (objc_msgSend_length(v83, v84, v85, v86, v87, v88))
              {
                if ((objc_msgSend_isEqualToString_(v83, v89, v72, v90, v91, v92) & 1) == 0)
                {
                  v93 = objc_opt_class();
                  if (objc_msgSend_isMecabraConversionCandidateAllowed_(v93, v94, v83, v95, v96, v97))
                  {
                    objc_msgSend_addObject_(v110, v98, v83, v99, v100, v101);
                  }
                }
              }
            }
          }

          MecabraContextRelease();
        }

        v26 = v35 + 1;
        v25 += v37;

        v107 = v72;
      }

      while (v35 + 1 < v105);
    }
  }

  else
  {
    v106 = 0;
  }

  MecabraContextGetCandidateCount();
  MecabraContextRemoveCandidatesInRange();

  return v106;
}

+ (BOOL)shouldCapitalizeGivenHistory:(id)a3 shouldAutoCapitalizeSetting:(BOOL)a4 locale:(id)a5
{
  v6 = a4;
  v81[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v13 = a5;
  if (v6)
  {
    v14 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v8, v9, v10, v11, v12);
    objc_msgSend_rangeOfCharacterFromSet_(v7, v15, v14, v16, v17, v18);
    v20 = v19;
    v25 = objc_msgSend_length(v7, v19, v21, v22, v23, v24);

    v36 = 1;
    if (objc_msgSend_length(v7, v26, v27, v28, v29, v30) && v20 != v25)
    {
      v76 = 0;
      v77 = &v76;
      v78 = 0x2020000000;
      v79 = 0;
      v37 = objc_msgSend_length(v7, v31, v32, v33, v34, v35);
      v38 = MEMORY[0x1E695DEC8];
      v44 = objc_msgSend_localeIdentifier(v13, v39, v40, v41, v42, v43);
      v49 = objc_msgSend_arrayWithObjects_(v38, v45, v44, v46, v47, v48, 0);

      if (qword_1EA84DAA8 != -1)
      {
        dispatch_once(&qword_1EA84DAA8, &unk_1EF1BB508);
      }

      v55 = objc_msgSend_localeIdentifier(v13, v50, v51, v52, v53, v54);
      v80 = v55;
      v81[0] = v49;
      v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v56, v81, &v80, 1, v57);

      if (v37)
      {
        v64 = MEMORY[0x1E696ADE0];
        v65 = objc_msgSend_localeIdentifier(v13, v59, v60, v61, v62, v63);
        v69 = objc_msgSend_orthographyWithDominantScript_languageMap_(v64, v66, v65, v58, v67, v68);
        v70 = *MEMORY[0x1E696A538];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = sub_183691EE8;
        v73[3] = &unk_1E6DDC070;
        v75 = &v76;
        v74 = v7;
        objc_msgSend_enumerateLinguisticTagsInRange_scheme_options_orthography_usingBlock_(v74, v71, 0, v37, v70, 0, v69, v73);
      }

      v36 = *(v77 + 24);

      _Block_object_dispose(&v76, 8);
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

+ (double)computeEditPenalizationFromString:(id)a3 toReferenceString:(id)a4 withSuffix:(id)a5 withCaseSensitivity:(BOOL)a6 withFirstLetterCaseSensitivity:(BOOL)a7 withDiacriticSensitivity:(BOOL)a8 withDiacriticsCharSet:(id)a9 withConsumableStrokesCharSet:(id)a10 outputSuffix:(id *)a11 lexiconExtraCharacters:(id *)a12 firstLetterCaseFlipped:(BOOL *)a13
{
  v213 = a8;
  v208 = a6;
  v209 = a7;
  v15 = a3;
  v16 = a4;
  v220 = a5;
  v215 = a9;
  v218 = v15;
  v219 = a10;
  v217 = v16;
  v20 = objc_msgSend_codepointAtIndex_outRange_(v16, v17, 0, &v224, v18, v19);
  v24 = objc_msgSend_codepointAtIndex_outRange_(v15, v21, 0, &v222, v22, v23);
  v216 = objc_msgSend_string(MEMORY[0x1E696AD60], v25, v26, v27, v28, v29);
  v214 = 0;
  v211 = 0;
  v210 = 0;
  v35 = 0;
  v36 = 0;
  v37 = v213;
  if (!v215)
  {
    v37 = 0;
  }

  v212 = v37;
  v207 = a13;
  *a13 = 0;
  while (1)
  {
    while (1)
    {
      if (!(v20 | v24))
      {
LABEL_151:
        if (v35)
        {
          v158 = v35 >> 2;
          v159 = MEMORY[0];
          v160 = a11;
          v161 = 0x1E6DDB000uLL;
          if (v35 >> 2 == 1)
          {
            v162 = 0;
          }

          else
          {
            v162 = MEMORY[4];
          }

          if (MEMORY[0] >= 0)
          {
            v169 = MEMORY[0];
          }

          else
          {
            v169 = -MEMORY[0];
          }

          v170 = v162 + MEMORY[0];
          if (v170 < 0)
          {
            v170 = -v170;
          }

          if (v169 >= v170)
          {
            v167 = v170;
          }

          else
          {
            v167 = v169;
          }

          if (v158 >= 2)
          {
            v200 = 8;
            v201 = 1;
            do
            {
              if (v158 - 1 > v201)
              {
                v202 = *v200;
              }

              else
              {
                v202 = 0;
              }

              v203 = *(v200 - 4);
              ++v201;
              if (v203 >= 0)
              {
                v204 = *(v200 - 4);
              }

              else
              {
                v204 = -v203;
              }

              v205 = v203 + v159;
              if (v205 < 0)
              {
                v205 = -v205;
              }

              v206 = v202 + v203;
              if (v206 < 0)
              {
                v206 = -v206;
              }

              if (v205 >= v206)
              {
                v205 = v206;
              }

              if (v204 >= v205)
              {
                v168 = v205;
              }

              else
              {
                v168 = v204;
              }

              v167 += v168;
              v200 += 4;
              v159 = v203;
            }

            while (v158 != v201);
          }

          else
          {
            v168 = v167;
          }
        }

        else
        {
          v167 = 0;
          v168 = 0;
          v160 = a11;
          v161 = 0x1E6DDB000;
        }

        v171 = *(v35 - 4);
        v173 = 0;
        if (objc_msgSend_length(v220, v30, v31, v32, v33, v34, v207) && v171 < 0 && v168)
        {
          v173 = 0;
          v174 = 0;
          do
          {
            v175 = objc_msgSend_codepointAtIndex_outRange_(v220, v30, v173, v221, v33, v34);
            if (objc_msgSend_characterIsMember_(v219, v176, v175, v177, v178, v179) && (v185 = objc_msgSend_expectedMinStrokeCount_(*(v161 + 896), v180, v175, v182, v183, v184), v168 >= v174 + v185))
            {
              v173 = v221[1] + v221[0];
              v186 = 1;
              v174 += v185;
            }

            else
            {
              v186 = 0;
            }

            if (v173 < objc_msgSend_length(v220, v180, v181, v182, v183, v184))
            {
              v187 = v186;
            }

            else
            {
              v187 = 0;
            }
          }

          while ((v187 & 1) != 0);
          if (v174 >= 1)
          {
            v188 = v174 + v171;
            if (v174 + v171 < 0)
            {
              v188 = -v188;
            }

            if (-v171 < v188)
            {
              v189 = -v171;
            }

            else
            {
              v189 = v188;
            }

            v167 = v167 - v168 + v189;
          }
        }

        if (v167 >= 0)
        {
          v190 = v167;
        }

        else
        {
          v190 = -v167;
        }

        v191 = v211;
        if (v211 < 0)
        {
          v191 = -v211;
        }

        v192 = v191 + v210;
        if (!v213)
        {
          v192 = 0;
        }

        v193 = v214;
        if (!v208)
        {
          v193 = 0;
        }

        v164 = (v192 + v193 + v190);
        if (!v160)
        {
          v163 = 0;
          v165 = v218;
          v166 = a12;
          if (a12)
          {
            goto LABEL_156;
          }

          goto LABEL_200;
        }

        v194 = objc_msgSend_length(v220, v30, v172, v32, v33, v34);
        v163 = objc_msgSend_substringWithRange_(v220, v195, v173, v194 - v173, v196, v197);
        v165 = v218;
        v166 = a12;
        goto LABEL_199;
      }

      if (v225)
      {
        if (!v223)
        {
          if (objc_msgSend_characterIsMember_(v219, v30, v20, v32, v33, v34))
          {
            v70 = -objc_msgSend_expectedMinStrokeCount_(CHCharacterSetRules, v65, v20, v67, v68, v69);
            if (v35 >= v36)
            {
              v86 = v35;
              v87 = v35 >> 2;
              v88 = v87 + 1;
              if ((v87 + 1) >> 62)
              {
                sub_18368964C();
              }

              if (v36 >> 1 > v88)
              {
                v88 = v36 >> 1;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v89 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v89 = v88;
              }

              if (v89)
              {
                if (!(v89 >> 62))
                {
                  operator new();
                }

                sub_183688F00();
              }

              v110 = (4 * v87);
              v36 = 0;
              *v110 = v70;
              v35 = (v110 + 1);
              memcpy(0, 0, v86);
            }

            else
            {
              *v35 = v70;
              v35 += 4;
            }
          }

          v49 = sub_1837A4260(v20, v65, v66, v67, v68, v69);
          objc_msgSend_appendString_(v216, v111, v49, v112, v113, v114);
          v64 = 0;
          v85 = 0;
LABEL_87:

          v115 = v224;
          v116 = v225;
          if (v116 + v115 >= objc_msgSend_length(v217, v117, v118, v119, v120, v121))
          {
            v224 = objc_msgSend_length(v217, v122, v123, v124, v125, v126);
            v225 = 0;
            if ((v85 & 1) == 0)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v20 = objc_msgSend_codepointAtIndex_outRange_(v217, v122, v225 + v224, &v224, v125, v126);
            if (!v85)
            {
              goto LABEL_108;
            }
          }

          goto LABEL_106;
        }

        v38 = objc_msgSend_expectedMinStrokeCount_(CHCharacterSetRules, v30, v24, v32, v33, v34);
        v43 = objc_msgSend_expectedMinStrokeCount_(CHCharacterSetRules, v39, v20, v40, v41, v42);
        v49 = sub_1837A4260(v24, v44, v45, v46, v47, v48);
        v58 = sub_1837A4260(v20, v50, v51, v52, v53, v54);
        if (v24 == v20)
        {
          if (v35 >= v36)
          {
            v59 = v35;
            v60 = v35 >> 2;
            v61 = v60 + 1;
            if ((v60 + 1) >> 62)
            {
              sub_18368964C();
            }

            if (v36 >> 1 > v61)
            {
              v61 = v36 >> 1;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v62 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v62 = v61;
            }

            if (v62)
            {
              if (!(v62 >> 62))
              {
                operator new();
              }

              sub_183688F00();
            }

LABEL_68:
            v96 = (4 * v60);
            v36 = 4 * v62;
            *v96 = 0;
            v35 = (v96 + 1);
            memcpy(0, 0, v59);
            v64 = 0;
            v85 = 1;
            goto LABEL_69;
          }
        }

        else
        {
          if (objc_msgSend_compare_options_(v49, v55, v58, 1, v56, v57))
          {
            if (!v212 || objc_msgSend_compare_options_(v49, v71, v58, 129, v73, v74))
            {
              if (objc_msgSend_characterIsMember_(v219, v71, v24, v72, v73, v74, v207))
              {
                if (v35 >= v36)
                {
                  v98 = v35;
                  v99 = v35 >> 2;
                  v100 = v99 + 1;
                  if ((v99 + 1) >> 62)
                  {
                    sub_18368964C();
                  }

                  if (v36 >> 1 > v100)
                  {
                    v100 = v36 >> 1;
                  }

                  if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v101 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v101 = v100;
                  }

                  if (v101)
                  {
                    if (!(v101 >> 62))
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v132 = (4 * v99);
                  v36 = 0;
                  *v132 = v38;
                  v35 = (v132 + 1);
                  memcpy(0, 0, v98);
                }

                else
                {
                  *v35 = v38;
                  v35 += 4;
                }

LABEL_105:
                v64 = 0;
                goto LABEL_106;
              }

              if (objc_msgSend_characterIsMember_(v219, v75, v20, v76, v77, v78))
              {
                objc_msgSend_appendString_(v216, v90, v58, v91, v92, v93);
                v94 = -v43;
                if (v35 >= v36)
                {
                  v127 = v35;
                  v128 = v35 >> 2;
                  v129 = v128 + 1;
                  if ((v128 + 1) >> 62)
                  {
                    sub_18368964C();
                  }

                  if (v36 >> 1 > v129)
                  {
                    v129 = v36 >> 1;
                  }

                  if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v130 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v130 = v129;
                  }

                  if (v130)
                  {
                    if (!(v130 >> 62))
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v145 = (4 * v128);
                  v36 = 0;
                  *v145 = v94;
                  v35 = (v145 + 1);
                  memcpy(0, 0, v127);
                  v85 = 0;
                  v64 = 0;
                }

                else
                {
                  v85 = 0;
                  v64 = 0;
                  *v35 = v94;
                  v35 += 4;
                }
              }

              else
              {
                v85 = 1;
                v64 = 1;
              }

              goto LABEL_69;
            }

            IsMember = objc_msgSend_characterIsMember_(v215, v71, v24, v72, v73, v74);
            v107 = objc_msgSend_characterIsMember_(v215, v103, v20, v104, v105, v106);
            if (v107 & 1 | ((IsMember & 1) == 0))
            {
              v108 = IsMember | ~v107;
              v109 = v38 - v43;
              if (v108)
              {
                if (v35 >= v36)
                {
                  v146 = v35;
                  v147 = v35 >> 2;
                  v148 = v147 + 1;
                  if ((v147 + 1) >> 62)
                  {
                    sub_18368964C();
                  }

                  if (v36 >> 1 > v148)
                  {
                    v148 = v36 >> 1;
                  }

                  if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v149 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v149 = v148;
                  }

                  if (v149)
                  {
                    if (!(v149 >> 62))
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v156 = (4 * v147);
                  v36 = 0;
                  *v156 = v109;
                  v35 = (v156 + 1);
                  memcpy(0, 0, v146);
                }

                else
                {
                  *v35 = v109;
                  v35 += 4;
                }

                v64 = 0;
                ++v210;
                v85 = 1;
                goto LABEL_69;
              }

              if (v35 >= v36)
              {
                v150 = v35;
                v151 = v35 >> 2;
                v152 = v151 + 1;
                if ((v151 + 1) >> 62)
                {
                  sub_18368964C();
                }

                if (v36 >> 1 > v152)
                {
                  v152 = v36 >> 1;
                }

                if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v153 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v153 = v152;
                }

                if (v153)
                {
                  if (!(v153 >> 62))
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                v157 = (4 * v151);
                v36 = 0;
                *v157 = v109;
                v35 = (v157 + 1);
                memcpy(0, 0, v150);
              }

              else
              {
                *v35 = v109;
                v35 += 4;
              }

              v64 = 0;
              v155 = v211 - 1;
            }

            else
            {
              v131 = v38 - v43;
              if (v35 >= v36)
              {
                v141 = v35;
                v142 = v35 >> 2;
                v143 = v142 + 1;
                if ((v142 + 1) >> 62)
                {
                  sub_18368964C();
                }

                if (v36 >> 1 > v143)
                {
                  v143 = v36 >> 1;
                }

                if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v144 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v144 = v143;
                }

                if (v144)
                {
                  if (!(v144 >> 62))
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                v154 = (4 * v142);
                v36 = 0;
                *v154 = v131;
                v35 = (v154 + 1);
                memcpy(0, 0, v141);
              }

              else
              {
                *v35 = v131;
                v35 += 4;
              }

              v64 = 0;
              v155 = v211 + 1;
            }

            v211 = v155;
            v85 = 1;
LABEL_69:

            goto LABEL_87;
          }

          v83 = v224;
          if (!v224)
          {
            *v207 = 1;
          }

          if (v83)
          {
            v84 = 1;
          }

          else
          {
            v84 = v209;
          }

          v214 += v84;
          if (v35 >= v36)
          {
            v59 = v35;
            v60 = v35 >> 2;
            v95 = v60 + 1;
            if ((v60 + 1) >> 62)
            {
              sub_18368964C();
            }

            if (v36 >> 1 > v95)
            {
              v95 = v36 >> 1;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v62 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v62 = v95;
            }

            if (v62)
            {
              if (!(v62 >> 62))
              {
                operator new();
              }

              sub_183688F00();
            }

            goto LABEL_68;
          }
        }

        v64 = 0;
        *v35 = 0;
        v35 += 4;
        v85 = 1;
        goto LABEL_69;
      }

      if (!objc_msgSend_characterIsMember_(v219, v30, v24, v32, v33, v34))
      {
        goto LABEL_105;
      }

      v63 = objc_msgSend_expectedMinStrokeCount_(CHCharacterSetRules, v30, v24, v32, v33, v34);
      if (v35 >= v36)
      {
        v79 = v35;
        v80 = v35 >> 2;
        v81 = v80 + 1;
        if ((v80 + 1) >> 62)
        {
          sub_18368964C();
        }

        if (v36 >> 1 > v81)
        {
          v81 = v36 >> 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v82 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v82 = v81;
        }

        if (v82)
        {
          if (!(v82 >> 62))
          {
            operator new();
          }

          sub_183688F00();
        }

        v97 = (4 * v80);
        v36 = 0;
        *v97 = v63;
        v35 = (v97 + 1);
        memcpy(0, 0, v79);
        v64 = 0;
      }

      else
      {
        v64 = 0;
        *v35 = v63;
        v35 += 4;
      }

LABEL_106:
      v133 = v222;
      v134 = v223;
      if (v134 + v133 >= objc_msgSend_length(v218, v30, v31, v32, v33, v34, v207))
      {
        break;
      }

      v24 = objc_msgSend_codepointAtIndex_outRange_(v218, v135, v223 + v222, &v222, v138, v139);
LABEL_108:
      if (v64)
      {
        goto LABEL_154;
      }

      v140 = v223 == 0;
      if (!v225)
      {
LABEL_4:
        if (v140)
        {
          goto LABEL_151;
        }
      }
    }

    v222 = objc_msgSend_length(v218, v135, v136, v137, v138, v139);
    v223 = 0;
    if (v64)
    {
      break;
    }

    v140 = 1;
    if (!v225)
    {
      goto LABEL_4;
    }
  }

LABEL_154:
  v163 = &stru_1EF1C0318;
  v164 = 100.0;
  v165 = v218;
  v166 = a12;
  v160 = a11;
  if (a11)
  {
LABEL_199:
    v198 = v163;
    *v160 = v163;
    if (v166)
    {
      goto LABEL_156;
    }

    goto LABEL_200;
  }

  if (a12)
  {
LABEL_156:
    *v166 = objc_msgSend_stringWithString_(MEMORY[0x1E696AEC0], v30, v216, v32, v33, v34, v207);

    goto LABEL_201;
  }

LABEL_200:

LABEL_201:
  return v164;
}

+ (id)lexiconCorrectionsForToken:(id)a3 locale:(id)a4 lexicon:(_LXLexicon *)a5 lmVocabulary:(void *)a6 ovsStringChecker:(id)a7 textReplacements:(id)a8 consumableStrokesSet:(id)a9 minimumTokenScore:(double)a10 activeHistoryRange:(_NSRange)a11 outBestTokenScore:(double *)a12 shouldCapitalizeWord:(BOOL)a13 shouldSkipEntryCorrection:(BOOL)a14 allowFullCapsCorrections:(BOOL)a15 minimalLengthForLowConfidenceCorrections:(int64_t)a16 lowConfidenceThreshold:(double)a17 minimalLengthForCustomCapitalizationCorrections:(int64_t)a18 outBestTokenIndex:(int64_t *)a19 outFoundTokenInLexicon:(BOOL *)a20 outFoundCaseMatchingTokenInLexicon:(BOOL *)a21 outCorrectionFromOutOfContextEntry:(BOOL *)a22
{
  v309 = a3;
  v27 = a4;
  v302 = a7;
  v301 = a8;
  v33 = a9;
  if (qword_1EA84CCE0 != -1)
  {
    dispatch_once(&qword_1EA84CCE0, &unk_1EF1BB528);
  }

  v303 = v27;
  v300 = v33;
  v34 = objc_msgSend_string(v309, v28, v29, v30, v31, v32);
  v40 = objc_msgSend_copy(v34, v35, v36, v37, v38, v39);

  if (!objc_msgSend_length(v40, v41, v42, v43, v44, v45))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v51 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v51, OS_LOG_TYPE_ERROR, "Lexicon correction requires non-empty token string.", buf, 2u);
    }
  }

  if (!objc_msgSend_length(v40, v46, v47, v48, v49, v50))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v56 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v56, OS_LOG_TYPE_FAULT, "Lexicon correction requires non-empty token string.", buf, 2u);
    }
  }

  v308 = objc_msgSend_uppercaseStringWithLocale_(v40, v52, v27, v53, v54, v55);
  v61 = objc_msgSend_lowercaseStringWithLocale_(v40, v57, v27, v58, v59, v60);
  v370 = 0;
  v371 = &v370;
  v372 = 0x2020000000;
  v373 = 0;
  v366 = 0;
  v367 = &v366;
  v368 = 0x2020000000;
  v369[0] = 0;
  v299 = v61;
  objc_msgSend_computeEditPenalizationFromString_toReferenceString_withSuffix_withCaseSensitivity_withFirstLetterCaseSensitivity_withDiacriticSensitivity_withDiacriticsCharSet_withConsumableStrokesCharSet_outputSuffix_lexiconExtraCharacters_firstLetterCaseFlipped_(CHLanguageUtilities, v62, v40, v61, &stru_1EF1C0318, 1, 1, 0, 0, v33, 0, 0, v369);
  v64 = v63;
  objc_msgSend_computeEditPenalizationFromString_toReferenceString_withSuffix_withCaseSensitivity_withFirstLetterCaseSensitivity_withDiacriticSensitivity_withDiacriticsCharSet_withConsumableStrokesCharSet_outputSuffix_lexiconExtraCharacters_firstLetterCaseFlipped_(CHLanguageUtilities, v65, v40, v308, &stru_1EF1C0318, 1, 1, 0, 0, v33, 0, 0, v367 + 3);
  v72 = v71;
  v73 = v64 + v71;
  v74 = v71 / v73 < 0.5 && a15;
  *(v371 + 24) = v74;
  if (objc_msgSend_length(v40, v66, v67, v68, v69, v70) <= a11.length)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v80 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_ERROR, "The prefix length should be smaller than the candidate string length", buf, 2u);
    }
  }

  if (objc_msgSend_length(v40, v75, v76, v77, v78, v79) <= a11.length)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v84 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v84, OS_LOG_TYPE_FAULT, "The prefix length should be smaller than the candidate string length", buf, 2u);
    }
  }

  v298 = objc_msgSend_substringWithRange_(v40, v81, 0, a11.length, v82, v83);
  v292 = objc_msgSend_array(MEMORY[0x1E695DF70], v85, v86, v87, v88, v89);
  v362 = 0;
  v363 = &v362;
  v364 = 0x2020000000;
  v365 = 0x7FEFFFFFFFFFFFFFLL;
  v361[0] = 0;
  v361[1] = v361;
  v361[2] = 0x2020000000;
  v361[3] = 0x7FEFFFFFFFFFFFFFLL;
  v359[0] = 0;
  v359[1] = v359;
  v359[2] = 0x2020000000;
  v360 = 0;
  v90 = v40;
  v100 = objc_msgSend_rangeOfString_(v90, v91, @"'", v92, v93, v94);
  v355 = 0;
  v356 = &v355;
  v357 = 0x2020000000;
  v358 = 0;
  v101 = v90;
  if (v100 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v101 = v90;
    if (v100 < objc_msgSend_length(v90, v95, v96, v97, v98, v99) - 1)
    {
      v101 = v90;
      if ((objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v95, v90, a5, 0, v99) & 1) == 0)
      {
        v102 = objc_msgSend_substringFromIndex_(v90, v95, v100 + 1, v97, v98, v99);
        v101 = v90;
        if (objc_msgSend_lexiconHasEntryForString_withLexicon_outHasMatchingString_(CHLanguageUtilities, v103, v102, a5, 0, v104))
        {
          v101 = v102;

          *(v356 + 24) = 1;
        }
      }
    }
  }

  v105 = objc_msgSend_stringByTrimmingCharactersInSet_(v101, v95, qword_1EA84CCD8, v97, v98, v99);
  v318 = MEMORY[0x1E69E9820];
  v319 = 3221225472;
  v320 = sub_183693C1C;
  v321 = &unk_1E6DDC098;
  v338 = a17;
  v106 = v101;
  v322 = v106;
  v339 = a16;
  v291 = v105;
  v323 = v291;
  v340 = a18;
  v290 = v298;
  v324 = v290;
  v341 = 0;
  length = a11.length;
  v343 = a20;
  v293 = v302;
  v325 = v293;
  v107 = v309;
  v344 = 0xBFF4D104D427DE80;
  v345 = a6;
  v346 = a21;
  v352 = a13;
  v326 = v107;
  v332 = &v355;
  v108 = v90;
  v327 = v108;
  v109 = v301;
  v353 = a14;
  v296 = v109;
  v328 = v109;
  v333 = &v370;
  v347 = v72;
  v348 = v73;
  v354 = a15;
  v110 = v303;
  v329 = v110;
  v111 = v300;
  v349 = a10;
  v330 = v111;
  v334 = &v362;
  v335 = v359;
  v336 = v361;
  v337 = &v366;
  v112 = v292;
  v331 = v112;
  v350 = a19;
  v351 = a22;
  LXLexiconEnumerateEntriesForString();
  if (a12)
  {
    *a12 = v363[3];
  }

  if (!objc_msgSend_count(v112, v113, v114, v115, v116, v117))
  {
    v294 = objc_msgSend_properties(v107, v118, v119, v120, v121, v122);
    if (a14)
    {
      v307 = v108;
    }

    else if (*(v371 + 24) == 1)
    {
      v133 = objc_msgSend_string(v107, v123, v124, v125, v126, v127);
      v307 = objc_msgSend_uppercaseStringWithLocale_(v133, v134, v110, v135, v136, v137);
    }

    else if (a13)
    {
      v138 = objc_msgSend_string(v107, v123, v124, v125, v126, v127);
      v143 = objc_msgSend_lowercaseStringWithLocale_(v138, v139, v110, v140, v141, v142);

      v144 = sub_1837A47B8(v143);

      v294 |= 0x200uLL;
      v307 = v144;
    }

    else
    {
      v145 = objc_msgSend_string(v107, v123, v124, v125, v126, v127);
      v151 = objc_msgSend_lowercaseString(v145, v146, v147, v148, v149, v150);

      v307 = v151;
      objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v151, v152, 0, v153, v154, v155);
      v157 = v156;
      if (objc_msgSend_length(v151, v156, v158, v159, v160, v161) > v156)
      {
        v162 = objc_msgSend_substringFromIndex_(v151, v128, v157, v130, v131, v132);
        v304 = objc_msgSend_string(v107, v163, v164, v165, v166, v167);
        v172 = objc_msgSend_substringFromIndex_(v304, v168, v157, v169, v170, v171);
        isEqualToString = objc_msgSend_isEqualToString_(v162, v173, v172, v174, v175, v176);

        v178 = v294;
        if ((isEqualToString & 1) == 0)
        {
          v178 = v294 | 0x200;
        }

        v294 = v178;
      }
    }

    v179 = objc_msgSend_string(v107, v128, v129, v130, v131, v132);
    v184 = objc_msgSend_isEqualToString_(v307, v180, v179, v181, v182, v183);

    if ((v184 & 1) == 0)
    {
      v289 = v111;
      v185 = [CHTokenizedTextResultToken alloc];
      v191 = objc_msgSend_strokeIndexes(v107, v186, v187, v188, v189, v190);
      v297 = objc_msgSend_wordID(v107, v192, v193, v194, v195, v196);
      objc_msgSend_modelScore(v107, v197, v198, v199, v200, v201);
      v288 = v202;
      objc_msgSend_recognitionScore(v107, v203, v204, v205, v206, v207);
      v287 = v208;
      objc_msgSend_combinedScore(v107, v209, v210, v211, v212, v213);
      v286 = v214;
      objc_msgSend_alignmentScore(v107, v215, v216, v217, v218, v219);
      v285 = v220;
      v305 = objc_msgSend_recognizerSourceLocale(v107, v221, v222, v223, v224, v225);
      v231 = objc_msgSend_inputSources(v107, v226, v227, v228, v229, v230);
      v284 = objc_msgSend_substrokeCount(v107, v232, v233, v234, v235, v236);
      objc_msgSend_bounds(v107, v237, v238, v239, v240, v241);
      v243 = v242;
      v245 = v244;
      v247 = v246;
      v249 = v248;
      objc_msgSend_originalBounds(v107, v250, v251, v252, v253, v254);
      v261 = v260;
      v263 = v262;
      v265 = v264;
      v267 = v266;
      if (v107)
      {
        objc_msgSend_principalLines(v107, v255, v256, v257, v258, v259);
      }

      else
      {
        v316 = 0u;
        v317 = 0u;
        v314 = 0u;
        v315 = 0u;
        v312 = 0u;
        v313 = 0u;
        *buf = 0u;
        v311 = 0u;
      }

      v268 = objc_msgSend_principalPoints(v107, v255, v256, v257, v258, v259);
      v270 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v185, v269, v307, v191, v297, v294, v305, v231 | 0x100, v288, v287, v286, v285, v243, v245, v247, v249, v284, v261, v263, v265, v267, buf, v268);

      objc_msgSend_addObject_(v112, v271, v270, v272, v273, v274);
      if (a12)
      {
        objc_msgSend_combinedScore(v107, v275, v276, v277, v278, v279);
        *a12 = v280;
      }

      if (a19)
      {
        *a19 = 0;
      }

      if (a22)
      {
        *a22 = 0;
      }

      v111 = v289;
    }
  }

  v281 = v331;
  v282 = v112;

  _Block_object_dispose(&v355, 8);
  _Block_object_dispose(v359, 8);
  _Block_object_dispose(v361, 8);
  _Block_object_dispose(&v362, 8);

  _Block_object_dispose(&v366, 8);
  _Block_object_dispose(&v370, 8);

  return v282;
}

+ (id)rankedLatinLocalesForString:(id)a3 locales:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1EA84DAB8 != -1)
  {
    dispatch_once(&qword_1EA84DAB8, &unk_1EF1BB548);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_18369562C;
  v14[3] = &unk_1E6DDC0C0;
  v15 = v5;
  v7 = v5;
  v12 = objc_msgSend_sortedArrayUsingComparator_(v6, v8, v14, v9, v10, v11);

  return v12;
}

@end