@interface CHStrokeGroupRecognitionResult
+ (id)filteredResultsByLocale:(id)a3 orderedLocales:(id)a4 usingLanguageFitness:(id)a5 outSortedLocales:(id *)a6;
+ (id)sortedLanguageGroups:(id)a3 usingLanguageFitness:(id)a4;
+ (id)sortedLocales:(id)a3 usingLanguageFitness:(id)a4 useCombinedScore:(BOOL)a5;
+ (id)textTranscriptionsForSortedGroupCluster:(id)a3 recognizedResultsByGroupID:(id)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)languageFitnessForLocale:(id)a3;
- (BOOL)hasPrincipalLines;
- (BOOL)isCandidateMathGroup;
- (BOOL)isEqual:(id)a3;
- (CHStrokeGroupRecognitionResult)init;
- (CHStrokeGroupRecognitionResult)initWithCoder:(id)a3;
- (CHStrokeGroupRecognitionResult)initWithOrderedLocales:(id)a3 resultsByLocale:(id)a4 errorsByLocale:(id)a5 languageFitnessByLocale:(id)a6 mathResult:(id)a7 inputStrokeIdentifiers:(id)a8 processing:(unint64_t)a9 inputDrawing:(id)a10 inputDrawingCutPoints:(id)a11;
- (CHTokenizedResult)preferredTokenizedResult;
- (NSString)preferredTranscription;
- (id)description;
- (id)highConfidenceTextForSessionResult:(id)a3 averageTokenScore:(double *)a4 rejectionRate:(double *)a5 doesContainUnfilteredMultiLocaleResults:(BOOL *)a6 isNonTextCandidateResult:(BOOL *)a7;
- (id)localesSortedByCombinedLanguageFitness:(id)a3;
- (id)localesSortedByRawLanguageFitness:(id)a3;
- (id)mathStrokeGroupRecognitionResultByAppendingStrokeGroupRecognitionResult:(id)a3 wrapTextResult:(BOOL)a4;
- (id)preferredLocale;
- (id)textStrokeGroupRecognitionResultByAppendingStrokeGroupRecognitionResult:(id)a3 shouldForceSpace:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setInputDrawing:(id)a3;
@end

@implementation CHStrokeGroupRecognitionResult

- (CHStrokeGroupRecognitionResult)init
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_ERROR, "Use the designated initializer instead", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v6 = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_FAULT, "Use the designated initializer instead", v6, 2u);
  }

LABEL_8:

  return 0;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = CHStrokeGroupRecognitionResult;
  v3 = [(CHStrokeGroupRecognitionResult *)&v16 description];
  v9 = objc_msgSend_recognitionResultsByLocale(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_stringByAppendingFormat_(v3, v10, @" %@", v11, v12, v13, v9);

  return v14;
}

- (id)localesSortedByRawLanguageFitness:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v11 = objc_msgSend_languageFitnessByLocale(self, v6, v7, v8, v9, v10);
  v14 = objc_msgSend_sortedLocales_usingLanguageFitness_useCombinedScore_(v5, v12, v4, v11, 0, v13);

  return v14;
}

- (id)localesSortedByCombinedLanguageFitness:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v11 = objc_msgSend_languageFitnessByLocale(self, v6, v7, v8, v9, v10);
  v14 = objc_msgSend_sortedLocales_usingLanguageFitness_useCombinedScore_(v5, v12, v4, v11, 1, v13);

  return v14;
}

- (id)highConfidenceTextForSessionResult:(id)a3 averageTokenScore:(double *)a4 rejectionRate:(double *)a5 doesContainUnfilteredMultiLocaleResults:(BOOL *)a6 isNonTextCandidateResult:(BOOL *)a7
{
  v237 = *MEMORY[0x1E69E9840];
  v220 = a3;
  v21 = objc_msgSend_mathResult(self, v11, v12, v13, v14, v15);
  if (!v21)
  {
    goto LABEL_4;
  }

  if (objc_msgSend_hasTextResult(self, v16, v17, v18, v19, v20))
  {
    v27 = objc_msgSend_mathResult(self, v22, v23, v24, v25, v26);
    isEvaluationExpected = objc_msgSend_isEvaluationExpected(v27, v28, v29, v30, v31, v32);

    if (!isEvaluationExpected)
    {
LABEL_4:
      v217 = a6;
      v218 = a4;
      v216 = a7;
      if (!v220)
      {
        goto LABEL_48;
      }

      v39 = v220;
      objc_sync_enter(v39);
      if (!v39[5])
      {
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        obj = objc_msgSend_preferredLocales(v39, v40, v41, v42, v43, v44);
        v211 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v230, v236, 16, v46);
        if (v211)
        {
          v212 = *v231;
          v215 = 2;
          do
          {
            for (i = 0; i != v211; ++i)
            {
              if (*v231 != v212)
              {
                objc_enumerationMutation(obj);
              }

              v52 = *(*(&v230 + 1) + 8 * i);
              v226 = 0u;
              v227 = 0u;
              v228 = 0u;
              v229 = 0u;
              v53 = objc_msgSend_locales(v39, v47, v48, v49, v50, v51);
              v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v226, v235, 16, v55);
              if (v61)
              {
                v62 = *v227;
                while (2)
                {
                  for (j = 0; j != v61; ++j)
                  {
                    if (*v227 != v62)
                    {
                      objc_enumerationMutation(v53);
                    }

                    v64 = *(*(&v226 + 1) + 8 * j);
                    v65 = objc_msgSend_languageCode(v52, v56, v57, v58, v59, v60);
                    v71 = objc_msgSend_languageCode(v64, v66, v67, v68, v69, v70);
                    v76 = objc_msgSend_caseInsensitiveCompare_(v65, v72, v71, v73, v74, v75) == 0;

                    if (v76)
                    {

                      v112 = 1;
                      goto LABEL_33;
                    }
                  }

                  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v226, v235, 16, v60);
                  if (v61)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v211 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v230, v236, 16, v51);
          }

          while (v211);
        }

        else
        {
          v112 = 2;
LABEL_33:
          v215 = v112;
        }

        v39[5] = v215;
      }

      objc_sync_exit(v39);

      if (v39[5] != 1)
      {
LABEL_48:
        v88 = 0;
        goto LABEL_62;
      }

      v113 = objc_opt_class();
      v119 = objc_msgSend_recognitionResultsByLocale(self, v114, v115, v116, v117, v118);
      orderedLocales = self->_orderedLocales;
      v126 = objc_msgSend_languageFitnessByLocale(self, v121, v122, v123, v124, v125);
      v225 = 0;
      v128 = objc_msgSend_filteredResultsByLocale_orderedLocales_usingLanguageFitness_outSortedLocales_(v113, v127, v119, orderedLocales, v126, &v225);
      v129 = v225;

      v130 = v129;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v136 = objc_msgSend_allValues(v128, v131, v132, v133, v134, v135);
      v139 = 0;
      v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v136, v137, &v221, v234, 16, v138);
      if (v145)
      {
        v146 = *v222;
        do
        {
          for (k = 0; k != v145; ++k)
          {
            if (*v222 != v146)
            {
              objc_enumerationMutation(v136);
            }

            v148 = *(*(&v221 + 1) + 8 * k);
            if (v139)
            {
              v149 = objc_msgSend_topTranscription(v148, v140, v141, v142, v143, v144);
              v153 = objc_msgSend_compare_options_(v139, v150, v149, 1, v151, v152) == 0;

              if (!v153)
              {
                v163 = 0;
                goto LABEL_49;
              }
            }

            else
            {
              v139 = objc_msgSend_topTranscription(v148, v140, v141, v142, v143, v144);
            }
          }

          v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v136, v140, &v221, v234, 16, v144);
        }

        while (v145);
      }

      v136 = objc_msgSend_firstObject(v130, v154, v155, v156, v157, v158);
      v163 = objc_msgSend_objectForKeyedSubscript_(v128, v159, v136, v160, v161, v162);
LABEL_49:

      v169 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v164, v165, v166, v167, v168);
      v174 = objc_msgSend_BOOLForKey_(v169, v170, @"CHSkipConfidenceFiltering", v171, v172, v173);

      v180 = objc_msgSend_transcriptionPaths(v163, v175, v176, v177, v178, v179);
      v186 = objc_msgSend_firstObject(v180, v181, v182, v183, v184, v185);

      if (v186)
      {
        v192 = objc_msgSend_length(v186, v187, v188, v189, v190, v191);
        v88 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_excludeGibberish_rejectionRate_tokenProcessingBlock_(v163, v193, v186, 0, v192, v174 ^ 1u, v174 ^ 1u, a5, 0);
        v199 = objc_msgSend_length(v88, v194, v195, v196, v197, v198);
      }

      else
      {
        v88 = 0;
        v199 = objc_msgSend_length(0, v187, v188, v189, v190, v191);
      }

      if (v199)
      {
        if (v218)
        {
          goto LABEL_54;
        }
      }

      else
      {

        v88 = 0;
        if (v218)
        {
LABEL_54:
          v205 = objc_msgSend_length(v186, v200, v201, v202, v203, v204);
          objc_msgSend_averageTokenRecognitionScoreForColumnRange_(v163, v206, 0, v205, v207, v208);
          *v218 = v209;
          if (!v217)
          {
            goto LABEL_55;
          }

          goto LABEL_59;
        }
      }

      if (!v217)
      {
LABEL_55:
        if (!v216)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

LABEL_59:
      *v217 = objc_msgSend_count(v128, v200, v201, v202, v203, v204) > 1;
      if (!v216)
      {
LABEL_61:

        goto LABEL_62;
      }

LABEL_60:
      *v216 = objc_msgSend_isNonTextCandidateTranscriptionWithStrictFiltering_(v163, v200, 1, v202, v203, v204);
      goto LABEL_61;
    }
  }

  else
  {
  }

  v77 = objc_msgSend_mathResult(self, v34, v35, v36, v37, v38);
  v83 = objc_msgSend_preferredTranscription(v77, v78, v79, v80, v81, v82);
  v88 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v84, v83, v85, v86, v87);

  v94 = objc_msgSend_mathResult(self, v89, v90, v91, v92, v93);
  v100 = objc_msgSend_mathResult(self, v95, v96, v97, v98, v99);
  v106 = objc_msgSend_tokenColumnCount(v100, v101, v102, v103, v104, v105);
  objc_msgSend_averageTokenScoreForColumnRange_(v94, v107, 0, v106, v108, v109);
  v111 = v110;

  if (a4)
  {
    *a4 = v111;
  }

  if (a5)
  {
    *a5 = 0.0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

LABEL_62:

  return v88;
}

- (BOOL)isCandidateMathGroup
{
  if (self->_mathResult)
  {
    return 1;
  }

  v12 = objc_msgSend_preferredLocale(self, a2, v2, v3, v4, v5);
  if (v12)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(self->_recognitionResultsByLocale, v8, v12, v9, v10, v11);
    v19 = objc_msgSend_topTranscription(v13, v14, v15, v16, v17, v18);

    v23 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v19, v20, @" ", &stru_1EF1C0318, v21, v22);

    v29 = objc_msgSend_ch_mathCharSet(MEMORY[0x1E696AB08], v24, v25, v26, v27, v28);
    LOBYTE(v19) = sub_1837A4F0C(v23, v29);

    return v19;
  }

  else
  {

    return 0;
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)languageFitnessForLocale:(id)a3
{
  v4 = a3;
  v22 = vdupq_n_s64(0xC7EFFFFFE0000000);
  v10 = objc_msgSend_languageFitnessByLocale(self, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v4, v12, v13, v14);

  if (v15)
  {
    objc_msgSend_getValue_(v15, v16, &v22, v17, v18, v19);
  }

  v21 = *&v22.i64[1];
  v20 = *v22.i64;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (id)preferredLocale
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  recognitionResultsByLocale = self->_recognitionResultsByLocale;
  languageFitnessByLocale = self->_languageFitnessByLocale;
  orderedLocales = self->_orderedLocales;
  v82 = 0;
  v8 = objc_msgSend_filteredResultsByLocale_orderedLocales_usingLanguageFitness_outSortedLocales_(v3, v7, recognitionResultsByLocale, orderedLocales, languageFitnessByLocale, &v82);
  v9 = v82;
  if (!objc_msgSend_count(v8, v10, v11, v12, v13, v14))
  {
    v32 = objc_msgSend_allKeys(self->_recognitionResultsByLocale, v15, v16, v17, v18, v19);
    v25 = objc_msgSend_localesSortedByRawLanguageFitness_(self, v33, v32, v34, v35, v36);

    v31 = objc_msgSend_firstObject(v25, v37, v38, v39, v40, v41);
    goto LABEL_5;
  }

  if (objc_msgSend_count(v8, v15, v16, v17, v18, v19) == 1)
  {
    v25 = objc_msgSend_allKeys(v8, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_firstObject(v25, v26, v27, v28, v29, v30);
LABEL_5:
    v42 = v31;
    goto LABEL_6;
  }

  v25 = objc_msgSend_allKeys(v8, v20, v21, v22, v23, v24);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v45 = self->_orderedLocales;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v78, v89, 16, v47);
  if (v52)
  {
    v53 = *v79;
LABEL_9:
    v54 = 0;
    while (1)
    {
      if (*v79 != v53)
      {
        objc_enumerationMutation(v45);
      }

      v55 = *(*(&v78 + 1) + 8 * v54);
      if (objc_msgSend_containsObject_(v25, v48, v55, v49, v50, v51, v78))
      {
        break;
      }

      if (v52 == ++v54)
      {
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v78, v89, 16, v51);
        if (v52)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    v42 = v55;

    if (v42)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_15:
  }

  v42 = objc_msgSend_firstObject(v9, v56, v57, v58, v59, v60, v78);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v61 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v65 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v25, v62, @", ", &unk_1EF1BC8D0, v63, v64);
    v69 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(self->_orderedLocales, v66, @", ", &unk_1EF1BC8F0, v67, v68);
    v75 = objc_msgSend_localeIdentifier(v42, v70, v71, v72, v73, v74);
    *buf = 138412802;
    v84 = v65;
    v85 = 2112;
    v86 = v69;
    v87 = 2112;
    v88 = v75;
    _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_ERROR, "Error: unexpected missing preferredLocale with competing locales %@, ordered locales %@, falling back on %@", buf, 0x20u);
  }

  if (!v42)
  {
    if (qword_1EA84DC48 == -1)
    {
      v76 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v76 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
LABEL_25:

        if (qword_1EA84DC48 == -1)
        {
          v77 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
          {
LABEL_28:

            v42 = 0;
            goto LABEL_6;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v77 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_28;
          }
        }

        *buf = 0;
        _os_log_impl(&dword_18366B000, v77, OS_LOG_TYPE_FAULT, "There must be a preferred locale for the filtered results if there exists at least one result.", buf, 2u);
        goto LABEL_28;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v76, OS_LOG_TYPE_ERROR, "There must be a preferred locale for the filtered results if there exists at least one result.", buf, 2u);
    goto LABEL_25;
  }

LABEL_6:

  v43 = v42;
  return v42;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  objc_msgSend_encodeObject_forKey_(v4, v6, self->_orderedLocales, @"orderedLocales", v7, v8);
  objc_msgSend_encodeObject_forKey_(v4, v9, self->_recognitionResultsByLocale, @"recognitionResultsByLocale", v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v12, self->_mathResult, @"mathResult", v13, v14);
  objc_msgSend_encodeObject_forKey_(v4, v15, self->_errorsByLocale, @"errorsByLocale", v16, v17);
  objc_msgSend_encodeObject_forKey_(v4, v18, self->_inputStrokeIdentifiers, @"inputStrokeIdentifiers", v19, v20);
  objc_msgSend_encodeInteger_forKey_(v4, v21, self->_processing, @"processing", v22, v23);
  v24 = MEMORY[0x1E695DF90];
  v30 = objc_msgSend_count(self->_languageFitnessByLocale, v25, v26, v27, v28, v29);
  v35 = objc_msgSend_dictionaryWithCapacity_(v24, v31, v30, v32, v33, v34);
  languageFitnessByLocale = self->_languageFitnessByLocale;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_18375BA1C;
  v45[3] = &unk_1E6DDD598;
  v37 = v35;
  v46 = v37;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(languageFitnessByLocale, v38, v45, v39, v40, v41);
  objc_msgSend_encodeObject_forKey_(v4, v42, v37, @"languageFitnessDictByLocale", v43, v44);

  objc_autoreleasePoolPop(v5);
}

- (CHStrokeGroupRecognitionResult)initWithCoder:(id)a3
{
  v177[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E695DFD8];
  v162 = self;
  v177[0] = objc_opt_class();
  v177[1] = objc_opt_class();
  v177[2] = objc_opt_class();
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v177, 3, v8, v9);
  v15 = objc_msgSend_setWithArray_(v6, v11, v10, v12, v13, v14);
  context = v5;
  v164 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v16, v15, @"recognitionResultsByLocale", v17, v18);

  v19 = objc_opt_class();
  v163 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"mathResult", v21, v22);
  v23 = MEMORY[0x1E695DFD8];
  v176[0] = objc_opt_class();
  v176[1] = objc_opt_class();
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v176, 2, v25, v26);
  v32 = objc_msgSend_setWithArray_(v23, v28, v27, v29, v30, v31);
  v161 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v33, v32, @"orderedLocales", v34, v35);

  v36 = MEMORY[0x1E695DFD8];
  v175[0] = objc_opt_class();
  v175[1] = objc_opt_class();
  v175[2] = objc_opt_class();
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, v175, 3, v38, v39);
  v45 = objc_msgSend_setWithArray_(v36, v41, v40, v42, v43, v44);
  v160 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v46, v45, @"errorsByLocale", v47, v48);

  v49 = MEMORY[0x1E695DFD8];
  v174[0] = objc_opt_class();
  v174[1] = objc_opt_class();
  v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v50, v174, 2, v51, v52);
  v58 = objc_msgSend_setWithArray_(v49, v54, v53, v55, v56, v57);
  v159 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v59, v58, @"inputStrokeIdentifiers", v60, v61);

  v70 = objc_msgSend_decodeIntegerForKey_(v4, v62, @"processing", v63, v64, v65);
  if (!v70)
  {
    if ((objc_msgSend_containsValueForKey_(v4, v66, @"processing", v67, v68, v69) & 1) == 0 && (v163 || objc_msgSend_count(v164, v66, v71, v67, v68, v69)))
    {
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v72 = v164;
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v167, v173, 16, v74);
      if (v79)
      {
        v80 = *v168;
        v70 = 3;
LABEL_8:
        v81 = 0;
        while (1)
        {
          if (*v168 != v80)
          {
            objc_enumerationMutation(v72);
          }

          v82 = objc_msgSend_objectForKeyedSubscript_(v72, v75, *(*(&v167 + 1) + 8 * v81), v76, v77, v78);
          v88 = objc_msgSend_topModelTranscriptionPath(v82, v83, v84, v85, v86, v87);
          hasValidPrincipalLinesForPath = objc_msgSend_hasValidPrincipalLinesForPath_(v82, v89, v88, v90, v91, v92);

          if (hasValidPrincipalLinesForPath)
          {
            break;
          }

          if (v79 == ++v81)
          {
            v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v75, &v167, v173, 16, v78);
            if (v79)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        v70 = 1;
      }
    }

    else
    {
      v70 = 0;
    }
  }

  v94 = objc_msgSend_containsValueForKey_(v4, v66, @"languageFitnessDictByLocale", v67, v68, v69);
  v95 = MEMORY[0x1E695DFD8];
  if (v94)
  {
    v172[0] = objc_opt_class();
    v172[1] = objc_opt_class();
    v172[2] = objc_opt_class();
    v172[3] = objc_opt_class();
    v99 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v96, v172, 4, v97, v98);
    v104 = objc_msgSend_setWithArray_(v95, v100, v99, v101, v102, v103);
    v108 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v105, v104, @"languageFitnessDictByLocale", v106, v107);

    v109 = MEMORY[0x1E695DF90];
    v115 = objc_msgSend_count(v108, v110, v111, v112, v113, v114);
    v120 = objc_msgSend_dictionaryWithCapacity_(v109, v116, v115, v117, v118, v119);
    v121 = v166;
    v166[0] = MEMORY[0x1E69E9820];
    v166[1] = 3221225472;
    v166[2] = sub_18375C354;
    v166[3] = &unk_1E6DDD5C0;
    v122 = v120;
    v166[4] = v122;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v108, v123, v166, v124, v125, v126);
  }

  else
  {
    v171[0] = objc_opt_class();
    v171[1] = objc_opt_class();
    v171[2] = objc_opt_class();
    v130 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v127, v171, 3, v128, v129);
    v135 = objc_msgSend_setWithArray_(v95, v131, v130, v132, v133, v134);
    v108 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v136, v135, @"languageFitnessByLocale", v137, v138);

    v139 = MEMORY[0x1E695DF90];
    v145 = objc_msgSend_count(v108, v140, v141, v142, v143, v144);
    v150 = objc_msgSend_dictionaryWithCapacity_(v139, v146, v145, v147, v148, v149);
    v121 = v165;
    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 3221225472;
    v165[2] = sub_18375C480;
    v165[3] = &unk_1E6DDD5E8;
    v122 = v150;
    v165[4] = v122;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v108, v151, v165, v152, v153, v154);
  }

  v156 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_(v162, v155, v161, v164, v160, v122, v163, v159, v70);
  objc_autoreleasePoolPop(context);

  return v156;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v11 = v5;
    if (self)
    {
      if (self != v5)
      {
        recognitionResultsByLocale = self->_recognitionResultsByLocale;
        v13 = objc_msgSend_recognitionResultsByLocale(v5, v6, v7, v8, v9, v10);
        v19 = v13;
        if (recognitionResultsByLocale == v13)
        {
        }

        else
        {
          v20 = objc_msgSend_recognitionResultsByLocale(v11, v14, v15, v16, v17, v18);
          isEqual = objc_msgSend_isEqual_(v20, v21, self->_recognitionResultsByLocale, v22, v23, v24);

          if (!isEqual)
          {
            goto LABEL_26;
          }
        }

        errorsByLocale = self->_errorsByLocale;
        v32 = objc_msgSend_errorsByLocale(v11, v26, v27, v28, v29, v30);
        v38 = v32;
        if (errorsByLocale == v32)
        {
        }

        else
        {
          if (!self->_errorsByLocale)
          {

LABEL_26:
            LOBYTE(self) = 0;
            goto LABEL_27;
          }

          v39 = objc_msgSend_errorsByLocale(v11, v33, v34, v35, v36, v37);
          v44 = objc_msgSend_isEqual_(v39, v40, self->_errorsByLocale, v41, v42, v43);

          if ((v44 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        languageFitnessByLocale = self->_languageFitnessByLocale;
        v51 = objc_msgSend_languageFitnessByLocale(v11, v45, v46, v47, v48, v49);
        v57 = v51;
        if (languageFitnessByLocale == v51)
        {
        }

        else
        {
          v58 = objc_msgSend_languageFitnessByLocale(v11, v52, v53, v54, v55, v56);
          v63 = objc_msgSend_isEqual_(v58, v59, self->_languageFitnessByLocale, v60, v61, v62);

          if (!v63)
          {
            goto LABEL_26;
          }
        }

        inputStrokeIdentifiers = self->_inputStrokeIdentifiers;
        v70 = objc_msgSend_inputStrokeIdentifiers(v11, v64, v65, v66, v67, v68);
        v76 = v70;
        if (inputStrokeIdentifiers == v70)
        {
        }

        else
        {
          v77 = objc_msgSend_inputStrokeIdentifiers(v11, v71, v72, v73, v74, v75);
          v82 = objc_msgSend_isEqual_(v77, v78, self->_inputStrokeIdentifiers, v79, v80, v81);

          if (!v82)
          {
            goto LABEL_26;
          }
        }

        mathResult = self->_mathResult;
        v89 = objc_msgSend_mathResult(v11, v83, v84, v85, v86, v87);
        v95 = v89;
        if (mathResult == v89)
        {
        }

        else
        {
          v96 = objc_msgSend_mathResult(v11, v90, v91, v92, v93, v94);
          v101 = objc_msgSend_isEqual_(v96, v97, self->_mathResult, v98, v99, v100);

          if (!v101)
          {
            goto LABEL_26;
          }
        }

        self = self->_processing;
        LOBYTE(self) = self == objc_msgSend_processing(v11, v102, v103, v104, v105, v106);
        goto LABEL_27;
      }

      LOBYTE(self) = 1;
    }

LABEL_27:

    goto LABEL_28;
  }

  LOBYTE(self) = 0;
LABEL_28:

  return self;
}

- (CHStrokeGroupRecognitionResult)initWithOrderedLocales:(id)a3 resultsByLocale:(id)a4 errorsByLocale:(id)a5 languageFitnessByLocale:(id)a6 mathResult:(id)a7 inputStrokeIdentifiers:(id)a8 processing:(unint64_t)a9 inputDrawing:(id)a10 inputDrawingCutPoints:(id)a11
{
  v75 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = a11;
  v76.receiver = self;
  v76.super_class = CHStrokeGroupRecognitionResult;
  v29 = [(CHStrokeGroupRecognitionResult *)&v76 init];
  if (v29)
  {
    v30 = objc_msgSend_copy(v75, v24, v25, v26, v27, v28);
    orderedLocales = v29->_orderedLocales;
    v29->_orderedLocales = v30;

    v37 = objc_msgSend_copy(v17, v32, v33, v34, v35, v36);
    recognitionResultsByLocale = v29->_recognitionResultsByLocale;
    v29->_recognitionResultsByLocale = v37;

    v44 = objc_msgSend_copy(v19, v39, v40, v41, v42, v43);
    languageFitnessByLocale = v29->_languageFitnessByLocale;
    v29->_languageFitnessByLocale = v44;

    v51 = objc_msgSend_copy(v21, v46, v47, v48, v49, v50);
    inputStrokeIdentifiers = v29->_inputStrokeIdentifiers;
    v29->_inputStrokeIdentifiers = v51;

    objc_storeStrong(&v29->_inputDrawing, a10);
    v58 = objc_msgSend_copy(v23, v53, v54, v55, v56, v57);
    inputDrawingCutPoints = v29->_inputDrawingCutPoints;
    v29->_inputDrawingCutPoints = v58;

    v65 = objc_msgSend_copy(v18, v60, v61, v62, v63, v64);
    errorsByLocale = v29->_errorsByLocale;
    v29->_errorsByLocale = v65;

    v72 = objc_msgSend_copy(v20, v67, v68, v69, v70, v71);
    mathResult = v29->_mathResult;
    v29->_mathResult = v72;

    v29->_processing = a9;
  }

  return v29;
}

- (void)setInputDrawing:(id)a3
{
  v11 = a3;
  v9 = objc_msgSend_copy(v11, v4, v5, v6, v7, v8);
  inputDrawing = self->_inputDrawing;
  self->_inputDrawing = v9;
}

+ (id)sortedLanguageGroups:(id)a3 usingLanguageFitness:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = objc_msgSend_allKeys(v5, v13, v14, v15, v16, v17);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v45, v49, 16, v20);
  if (v25)
  {
    v26 = *v46;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v18);
        }

        v28 = *(*(&v45 + 1) + 8 * i);
        v29 = objc_msgSend_objectForKeyedSubscript_(v5, v21, v28, v22, v23, v24);
        v35 = objc_msgSend_count(v29, v30, v31, v32, v33, v34) == 0;

        if (!v35)
        {
          objc_msgSend_addObject_(v12, v21, v28, v22, v23, v24);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v45, v49, 16, v24);
    }

    while (v25);
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_18375CDB4;
  v42[3] = &unk_1E6DDD610;
  v36 = v6;
  v43 = v36;
  v37 = v5;
  v44 = v37;
  objc_msgSend_sortWithOptions_usingComparator_(v12, v38, 16, v42, v39, v40);

  return v12;
}

+ (id)sortedLocales:(id)a3 usingLanguageFitness:(id)a4 useCombinedScore:(BOOL)a5
{
  v5 = a5;
  v58 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = sub_18375D2A0;
  v55[3] = &unk_1E6DDC0C0;
  v8 = v7;
  v56 = v8;
  v47 = objc_msgSend_sortedArrayWithOptions_usingComparator_(a3, v9, 16, v55, v10, v11);
  if (v5)
  {
    v16 = objc_msgSend_localesByLanguageGroup_(CHRecognizerConfiguration, v12, v47, v13, v14, v15);
    v17 = objc_opt_class();
    v46 = objc_msgSend_sortedLanguageGroups_usingLanguageFitness_(v17, v18, v16, v8, v19, v20);
    v26 = objc_msgSend_array(MEMORY[0x1E695DF70], v21, v22, v23, v24, v25);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v46;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v51, v57, 16, v28);
    if (v33)
    {
      v34 = *v52;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v52 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = objc_msgSend_objectForKeyedSubscript_(v16, v29, *(*(&v51 + 1) + 8 * i), v30, v31, v32);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = sub_18375D3A8;
          v49[3] = &unk_1E6DDC0C0;
          v50 = v8;
          v40 = objc_msgSend_sortedArrayWithOptions_usingComparator_(v36, v37, 16, v49, v38, v39);

          objc_msgSend_addObjectsFromArray_(v26, v41, v40, v42, v43, v44);
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v51, v57, 16, v32);
      }

      while (v33);
    }
  }

  else
  {
    v26 = v47;
  }

  return v26;
}

+ (id)textTranscriptionsForSortedGroupCluster:(id)a3 recognizedResultsByGroupID:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = v5;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v53, v57, 16, v15);
  if (v21)
  {
    v22 = *v54;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = MEMORY[0x1E696AD98];
        v25 = objc_msgSend_uniqueIdentifier(*(*(&v53 + 1) + 8 * i), v16, v17, v18, v19, v20);
        v30 = objc_msgSend_numberWithInteger_(v24, v26, v25, v27, v28, v29);
        v35 = objc_msgSend_objectForKeyedSubscript_(v6, v31, v30, v32, v33, v34);

        if (v35)
        {
          v41 = objc_msgSend_preferredTranscription(v35, v36, v37, v38, v39, v40);
          objc_msgSend_addObject_(v12, v42, v41, v43, v44, v45);
        }

        else
        {
          v41 = &stru_1EF1C0318;
          objc_msgSend_addObject_(v12, v36, &stru_1EF1C0318, v38, v39, v40);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v53, v57, 16, v20);
    }

    while (v21);
  }

  v51 = objc_msgSend_copy(v12, v46, v47, v48, v49, v50);

  return v51;
}

+ (id)filteredResultsByLocale:(id)a3 orderedLocales:(id)a4 usingLanguageFitness:(id)a5 outSortedLocales:(id *)a6
{
  v297 = *MEMORY[0x1E69E9840];
  v257 = a3;
  v246 = a4;
  v258 = a5;
  v254 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10, v11, v12, v13);
  v255 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16, v17, v18);
  v24 = objc_msgSend_allKeys(v257, v19, v20, v21, v22, v23);
  v27 = objc_msgSend_sortedLocales_usingLanguageFitness_useCombinedScore_(a1, v25, v24, v258, 0, v26);

  v243 = v27;
  v253 = objc_msgSend_localesByLanguageGroup_(CHRecognizerConfiguration, v28, v27, v29, v30, v31);
  v37 = objc_msgSend_modelNameLatin(CHRecognizerConfiguration, v32, v33, v34, v35, v36);
  v42 = objc_msgSend_objectForKeyedSubscript_(v253, v38, v37, v39, v40, v41);
  v48 = objc_msgSend_count(v42, v43, v44, v45, v46, v47);

  v245 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v49, &unk_1EF1EC4A8, v50, v51, v52);
  if (v48)
  {
    v283[0] = MEMORY[0x1E69E9820];
    v283[1] = 3221225472;
    v283[2] = sub_18375E52C;
    v283[3] = &unk_1E6DDD660;
    v284 = v245;
    v53 = MEMORY[0x1865E6810](v283);
    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v59 = objc_msgSend_allNonLatinModelNames(CHRecognizerConfiguration, v54, v55, v56, v57, v58);
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v279, v296, 16, v61);
    if (v66)
    {
      v67 = *v280;
      do
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v280 != v67)
          {
            objc_enumerationMutation(v59);
          }

          v69 = *(*(&v279 + 1) + 8 * i);
          v70 = objc_msgSend_objectForKeyedSubscript_(v253, v62, v69, v63, v64, v65);
          v71 = sub_18375E59C(CHStrokeGroupRecognitionResult, v70, v257, v53);

          objc_msgSend_setObject_forKeyedSubscript_(v253, v72, v71, v69, v73, v74);
        }

        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v279, v296, 16, v65);
      }

      while (v66);
    }
  }

  v75 = sub_18375D704(CHStrokeGroupRecognitionResult, @"zh", v246);
  if (v75 >= sub_18375D704(CHStrokeGroupRecognitionResult, @"yue", v246))
  {
    v76 = @"yue";
  }

  else
  {
    v76 = @"zh";
  }

  v77 = sub_18375D704(CHStrokeGroupRecognitionResult, v76, v246);
  v78 = sub_18375D704(CHStrokeGroupRecognitionResult, @"ja", v246);
  if (v77 != 0x7FFFFFFFFFFFFFFFLL && v78 != 0x7FFFFFFFFFFFFFFFLL && v77 < v78)
  {
    v84 = objc_msgSend_modelNameJapanese(CHRecognizerConfiguration, v79, v80, v81, v82, v83);
    v89 = objc_msgSend_objectForKeyedSubscript_(v253, v85, v84, v86, v87, v88);
    v90 = sub_18375E59C(CHStrokeGroupRecognitionResult, v89, v257, &unk_1EF1BC910);

    v96 = objc_msgSend_modelNameJapanese(CHRecognizerConfiguration, v91, v92, v93, v94, v95);
    objc_msgSend_setObject_forKeyedSubscript_(v253, v97, v90, v96, v98, v99);
  }

  v100 = objc_opt_class();
  v104 = objc_msgSend_sortedLanguageGroups_usingLanguageFitness_(v100, v101, v253, v258, v102, v103);
  v110 = objc_msgSend_count(v257, v105, v106, v107, v108, v109, v104) > 1;
  v251 = objc_msgSend_array(MEMORY[0x1E695DF70], v111, v112, v113, v114, v115);
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  obj = v104;
  v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v116, &v275, v295, 16, v117);
  v123 = dbl_1839CE960[v110];
  if (v122)
  {
    v124 = *v276;
    v125 = 0.0;
    do
    {
      for (j = 0; j != v122; ++j)
      {
        if (*v276 != v124)
        {
          objc_enumerationMutation(obj);
        }

        v127 = *(*(&v275 + 1) + 8 * j);
        v128 = objc_msgSend_objectForKeyedSubscript_(v253, v118, v127, v119, v120, v121);
        v134 = objc_msgSend_firstObject(v128, v129, v130, v131, v132, v133);
        v139 = objc_msgSend_objectForKeyedSubscript_(v258, v135, v134, v136, v137, v138);
        objc_msgSend_getValue_(v139, v140, buf, v141, v142, v143);

        v144 = *buf;
        if (*buf >= v123 && v125 <= 0.9)
        {
          v144 = v125 - *buf;
          if (v125 - *buf <= 0.01)
          {
            objc_msgSend_addObject_(v251, v118, v127, v119, v120, v121, v144);
            v144 = *buf;
            if (*buf > v125)
            {
              v125 = *buf;
            }
          }
        }
      }

      v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v118, &v275, v295, 16, v121, v144);
    }

    while (v122);
  }

  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  v247 = v251;
  v249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v145, &v271, v294, 16, v146);
  if (v249)
  {
    v248 = *v272;
    do
    {
      for (k = 0; k != v249; ++k)
      {
        if (*v272 != v248)
        {
          objc_enumerationMutation(v247);
        }

        v152 = *(*(&v271 + 1) + 8 * k);
        v256 = objc_msgSend_array(MEMORY[0x1E695DF70], v147, v148, v149, v150, v151);
        v269 = 0u;
        v270 = 0u;
        v267 = 0u;
        v268 = 0u;
        v157 = objc_msgSend_objectForKeyedSubscript_(v253, v153, v152, v154, v155, v156);
        v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v157, v158, &v267, v293, 16, v159);
        if (v164)
        {
          v165 = *v268;
          v166 = 0.0;
          do
          {
            for (m = 0; m != v164; ++m)
            {
              if (*v268 != v165)
              {
                objc_enumerationMutation(v157);
              }

              v169 = *(*(&v267 + 1) + 8 * m);
              v170 = objc_msgSend_objectForKeyedSubscript_(v258, v160, v169, v161, v162, v163);
              objc_msgSend_getValue_(v170, v171, &v265, v172, v173, v174);

              if (v265 < v123 || v166 - v265 > 0.1)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v179 = qword_1EA84DC60;
                if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
                {
                  v185 = objc_msgSend_localeIdentifier(v169, v180, v181, v182, v183, v184);
                  v186 = v185;
                  v192 = objc_msgSend_UTF8String(v185, v187, v188, v189, v190, v191);
                  *buf = 136315906;
                  *&buf[4] = v192;
                  v287 = 2048;
                  v288 = v265;
                  v289 = 2048;
                  v290 = v166;
                  v291 = 2048;
                  v292 = *&v123;
                  _os_log_impl(&dword_18366B000, v179, OS_LOG_TYPE_DEBUG, "Filtering results for locale %s based on raw fitness score %.3f. (best score: %.3f, threshold: %.3f)\n", buf, 0x2Au);
                }
              }

              else
              {
                objc_msgSend_addObject_(v256, v175, v169, v176, v177, v178, v166 - v265);
                v168 = v265;
                if (v265 > v166)
                {
                  v166 = v265;
                }
              }
            }

            v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v157, v160, &v267, v293, 16, v163, v168);
          }

          while (v164);
        }

        v263[0] = MEMORY[0x1E69E9820];
        v263[1] = 3221225472;
        v263[2] = sub_18375E8CC;
        v263[3] = &unk_1E6DDC0C0;
        v193 = v258;
        v264 = v193;
        objc_msgSend_sortUsingComparator_(v256, v194, v263, v195, v196, v197);
        v261 = 0u;
        v262 = 0u;
        v259 = 0u;
        v260 = 0u;
        v198 = v256;
        v205 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v199, &v259, v285, 16, v200);
        if (v205)
        {
          v206 = *v260;
          v207 = 0.0;
          do
          {
            v208 = 0;
            do
            {
              if (*v260 != v206)
              {
                objc_enumerationMutation(v198);
              }

              v209 = *(*(&v259 + 1) + 8 * v208);
              v210 = objc_msgSend_objectForKeyedSubscript_(v193, v201, v209, v202, v203, v204);
              objc_msgSend_getValue_(v210, v211, &v265, v212, v213, v214);

              v222 = objc_msgSend_objectForKey_(v257, v215, v209, v216, v217, v218);
              if (v222)
              {
                if (v207 - v266 <= 0.01)
                {
                  objc_msgSend_setObject_forKey_(v254, v219, v222, v209, v220, v221, v207 - v266);
                  objc_msgSend_addObject_(v255, v237, v209, v238, v239, v240);
                  if (v266 > v207)
                  {
                    v207 = v266;
                  }
                }

                else
                {
                  if (qword_1EA84DC48 != -1)
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  }

                  v223 = qword_1EA84DC60;
                  if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
                  {
                    v229 = objc_msgSend_localeIdentifier(v209, v224, v225, v226, v227, v228);
                    v230 = v229;
                    v236 = objc_msgSend_UTF8String(v229, v231, v232, v233, v234, v235);
                    *buf = 136315906;
                    *&buf[4] = v236;
                    v287 = 2048;
                    v288 = v266;
                    v289 = 2048;
                    v290 = v207;
                    v291 = 2048;
                    v292 = 0x3F847AE147AE147BLL;
                    _os_log_impl(&dword_18366B000, v223, OS_LOG_TYPE_DEBUG, "Filtering results for locale %s based on combined fitness score %.3f. (best score: %.3f, gap threshold: %.3f)\n", buf, 0x2Au);
                  }
                }
              }

              ++v208;
            }

            while (v205 != v208);
            v205 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v201, &v259, v285, 16, v204);
          }

          while (v205);
        }
      }

      v249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v147, &v271, v294, 16, v151);
    }

    while (v249);
  }

  if (a6)
  {
    v241 = v255;
    *a6 = v255;
  }

  return v254;
}

- (BOOL)hasPrincipalLines
{
  v7 = objc_msgSend_preferredLocale(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_objectForKeyedSubscript_(self->_recognitionResultsByLocale, v8, v7, v9, v10, v11);
  v18 = objc_msgSend_topModelTranscriptionPath(v12, v13, v14, v15, v16, v17);
  hasValidPrincipalLinesForPath = objc_msgSend_hasValidPrincipalLinesForPath_(v12, v19, v18, v20, v21, v22);

  return hasValidPrincipalLinesForPath;
}

- (id)textStrokeGroupRecognitionResultByAppendingStrokeGroupRecognitionResult:(id)a3 shouldForceSpace:(BOOL)a4
{
  v476 = a4;
  v496[1] = *MEMORY[0x1E69E9840];
  v475 = a3;
  v478 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v4, v5, v6, v7, v8);
  v477 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10, v11, v12, v13);
  v24 = objc_msgSend_mathResult(self, v14, v15, v16, v17, v18);
  if (v24)
  {
    v25 = objc_msgSend_mathResult(v475, v19, v20, v21, v22, v23);

    if (v25)
    {
      v26 = objc_msgSend_orderedLocales(self, v19, v20, v21, v22, v23);
      v32 = objc_msgSend_orderedLocales(self, v27, v28, v29, v30, v31);
      v38 = objc_msgSend_count(v32, v33, v34, v35, v36, v37);

      if (!v38)
      {
        v44 = objc_msgSend_orderedLocales(v475, v39, v40, v41, v42, v43);
        v50 = objc_msgSend_count(v44, v45, v46, v47, v48, v49);

        if (v50)
        {
          v56 = objc_msgSend_orderedLocales(v475, v51, v52, v53, v54, v55);

          v26 = v56;
        }

        else
        {
          v325 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v51, @"en_US", v53, v54, v55);
          v496[0] = v325;
          v329 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v326, v496, 1, v327, v328);

          v26 = v329;
        }
      }

      if (objc_msgSend_hasTextResult(self, v39, v40, v41, v42, v43))
      {
        v335 = objc_msgSend_recognitionResultsByLocale(self, v330, v331, v332, v333, v334);
        v341 = objc_msgSend_preferredLocale(self, v336, v337, v338, v339, v340);
        v346 = objc_msgSend_objectForKeyedSubscript_(v335, v342, v341, v343, v344, v345);
      }

      else
      {
        v347 = objc_msgSend_mathResult(self, v330, v331, v332, v333, v334);
        v353 = objc_msgSend_firstObject(v26, v348, v349, v350, v351, v352);
        v346 = objc_msgSend_tokenizedTextResultFromTokenizedMathResult_locale_(CHMathPostProcessingManager, v354, v347, v353, v355, v356);

        v335 = objc_msgSend_inputStrokeIdentifiers(self, v357, v358, v359, v360, v361);
        objc_msgSend_setInputStrokeIdentifiers_(v346, v362, v335, v363, v364, v365);
      }

      if (objc_msgSend_hasTextResult(v475, v366, v367, v368, v369, v370))
      {
        v376 = objc_msgSend_recognitionResultsByLocale(v475, v371, v372, v373, v374, v375);
        v382 = objc_msgSend_preferredLocale(v475, v377, v378, v379, v380, v381);
        v387 = objc_msgSend_objectForKeyedSubscript_(v376, v383, v382, v384, v385, v386);
      }

      else
      {
        v388 = objc_msgSend_mathResult(v475, v371, v372, v373, v374, v375);
        v394 = objc_msgSend_firstObject(v26, v389, v390, v391, v392, v393);
        v387 = objc_msgSend_tokenizedTextResultFromTokenizedMathResult_locale_(CHMathPostProcessingManager, v395, v388, v394, v396, v397);

        v376 = objc_msgSend_inputStrokeIdentifiers(v475, v398, v399, v400, v401, v402);
        objc_msgSend_setInputStrokeIdentifiers_(v387, v403, v376, v404, v405, v406);
      }

      v410 = objc_msgSend_tokenizedTextResultByAppendingTokenizedTextResult_shouldForceSpace_(v346, v407, v387, v476, v408, v409);
      v416 = objc_msgSend_firstObject(v26, v411, v412, v413, v414, v415);
      objc_msgSend_languageFitnessForLocale_recognitionMode_(v410, v417, v416, 6, v418, v419);
      *buf = v420;
      v492 = v421;

      v427 = objc_msgSend_firstObject(v26, v422, v423, v424, v425, v426);
      objc_msgSend_setObject_forKeyedSubscript_(v478, v428, v410, v427, v429, v430);

      v434 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v431, buf, "{?=dd}", v432, v433);
      v440 = objc_msgSend_firstObject(v26, v435, v436, v437, v438, v439);
      objc_msgSend_setObject_forKeyedSubscript_(v477, v441, v434, v440, v442, v443);

      v164 = v346;
      goto LABEL_48;
    }
  }

  v57 = objc_msgSend_mathResult(self, v19, v20, v21, v22, v23);

  if (v57)
  {
    if (objc_msgSend_hasTextResult(self, v58, v59, v60, v61, v62))
    {
      v68 = objc_msgSend_recognitionResultsByLocale(self, v63, v64, v65, v66, v67);
      v74 = objc_msgSend_preferredLocale(self, v69, v70, v71, v72, v73);
      v79 = objc_msgSend_objectForKeyedSubscript_(v68, v75, v74, v76, v77, v78);
    }

    else
    {
      v103 = objc_msgSend_mathResult(self, v63, v64, v65, v66, v67);
      v109 = objc_msgSend_preferredLocale(v475, v104, v105, v106, v107, v108);
      v79 = objc_msgSend_tokenizedTextResultFromTokenizedMathResult_locale_(CHMathPostProcessingManager, v110, v103, v109, v111, v112);

      v68 = objc_msgSend_inputStrokeIdentifiers(self, v113, v114, v115, v116, v117);
      objc_msgSend_setInputStrokeIdentifiers_(v79, v118, v68, v119, v120, v121);
    }

    v489 = 0u;
    v490 = 0u;
    v487 = 0u;
    v488 = 0u;
    obj = objc_msgSend_recognitionResultsByLocale(v475, v122, v123, v124, v125, v126);
    v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v127, &v487, v495, 16, v128);
    v135 = v79;
    if (v134)
    {
      v136 = *v488;
      do
      {
        for (i = 0; i != v134; ++i)
        {
          if (*v488 != v136)
          {
            objc_enumerationMutation(obj);
          }

          v138 = *(*(&v487 + 1) + 8 * i);
          v139 = objc_msgSend_recognitionResultsByLocale(v475, v129, v130, v131, v132, v133);
          v144 = objc_msgSend_objectForKeyedSubscript_(v139, v140, v138, v141, v142, v143);

          v148 = objc_msgSend_tokenizedTextResultByAppendingTokenizedTextResult_shouldForceSpace_(v135, v145, v144, v476, v146, v147);
          *buf = 0;
          v492 = 0;
          objc_msgSend_languageFitnessForLocale_recognitionMode_(v148, v149, v138, 6, v150, v151);
          *buf = v152;
          v492 = v153;
          objc_msgSend_setObject_forKeyedSubscript_(v478, v154, v148, v138, v155, v156);
          v160 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v157, buf, "{?=dd}", v158, v159);
          objc_msgSend_setObject_forKeyedSubscript_(v477, v161, v160, v138, v162, v163);
        }

        v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v129, &v487, v495, 16, v133);
      }

      while (v134);
    }

    v164 = v135;
    v170 = objc_msgSend_orderedLocales(v475, v165, v166, v167, v168, v169);
LABEL_39:
    v26 = v170;
LABEL_48:

LABEL_49:
    v444 = objc_msgSend_inputStrokeIdentifiers(self, v253, v254, v255, v256, v257);
    v450 = objc_msgSend_inputStrokeIdentifiers(v475, v445, v446, v447, v448, v449);
    v455 = objc_msgSend_arrayByAddingObjectsFromArray_(v444, v451, v450, v452, v453, v454);

    v461 = objc_msgSend_processing(self, v456, v457, v458, v459, v460);
    v467 = objc_msgSend_processing(v475, v462, v463, v464, v465, v466);
    v468 = [CHStrokeGroupRecognitionResult alloc];
    v470 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_(v468, v469, v26, v478, MEMORY[0x1E695E0F8], v477, 0, v455, v467 & v461);

    goto LABEL_50;
  }

  v80 = objc_msgSend_mathResult(v475, v58, v59, v60, v61, v62);

  if (v80)
  {
    if (objc_msgSend_hasTextResult(v475, v81, v82, v83, v84, v85))
    {
      v91 = objc_msgSend_recognitionResultsByLocale(v475, v86, v87, v88, v89, v90);
      v97 = objc_msgSend_preferredLocale(v475, v92, v93, v94, v95, v96);
      v102 = objc_msgSend_objectForKeyedSubscript_(v91, v98, v97, v99, v100, v101);
    }

    else
    {
      v258 = objc_msgSend_mathResult(v475, v86, v87, v88, v89, v90);
      v264 = objc_msgSend_preferredLocale(self, v259, v260, v261, v262, v263);
      v102 = objc_msgSend_tokenizedTextResultFromTokenizedMathResult_locale_(CHMathPostProcessingManager, v265, v258, v264, v266, v267);

      v91 = objc_msgSend_inputStrokeIdentifiers(v475, v268, v269, v270, v271, v272);
      objc_msgSend_setInputStrokeIdentifiers_(v102, v273, v91, v274, v275, v276);
    }

    v485 = 0u;
    v486 = 0u;
    v483 = 0u;
    v484 = 0u;
    v282 = objc_msgSend_recognitionResultsByLocale(self, v277, v278, v279, v280, v281);
    obja = v282;
    v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v282, v283, &v483, v494, 16, v284);
    v291 = v102;
    if (v290)
    {
      v292 = *v484;
      do
      {
        for (j = 0; j != v290; ++j)
        {
          if (*v484 != v292)
          {
            objc_enumerationMutation(obja);
          }

          v294 = *(*(&v483 + 1) + 8 * j);
          v295 = objc_msgSend_recognitionResultsByLocale(self, v285, v286, v287, v288, v289);
          v300 = objc_msgSend_objectForKeyedSubscript_(v295, v296, v294, v297, v298, v299);

          v304 = objc_msgSend_tokenizedTextResultByAppendingTokenizedTextResult_shouldForceSpace_(v300, v301, v291, v476, v302, v303);
          *buf = 0;
          v492 = 0;
          objc_msgSend_languageFitnessForLocale_recognitionMode_(v304, v305, v294, 6, v306, v307);
          *buf = v308;
          v492 = v309;
          objc_msgSend_setObject_forKeyedSubscript_(v478, v310, v304, v294, v311, v312);
          v316 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v313, buf, "{?=dd}", v314, v315);
          objc_msgSend_setObject_forKeyedSubscript_(v477, v317, v316, v294, v318, v319);
        }

        v282 = obja;
        v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v285, &v483, v494, 16, v289);
      }

      while (v290);
    }

    v164 = v291;
    v170 = objc_msgSend_orderedLocales(self, v320, v321, v322, v323, v324);
    goto LABEL_39;
  }

  v171 = objc_msgSend_recognitionResultsByLocale(self, v81, v82, v83, v84, v85);
  v177 = objc_msgSend_allKeys(v171, v172, v173, v174, v175, v176);
  v183 = objc_msgSend_recognitionResultsByLocale(v475, v178, v179, v180, v181, v182);
  v189 = objc_msgSend_allKeys(v183, v184, v185, v186, v187, v188);
  isEqualToArray = objc_msgSend_isEqualToArray_(v177, v190, v189, v191, v192, v193);

  if (isEqualToArray)
  {
    v481 = 0u;
    v482 = 0u;
    v479 = 0u;
    v480 = 0u;
    v200 = objc_msgSend_recognitionResultsByLocale(self, v195, v196, v197, v198, v199);
    v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(v200, v201, &v479, v493, 16, v202);
    if (v208)
    {
      v209 = *v480;
      do
      {
        for (k = 0; k != v208; ++k)
        {
          if (*v480 != v209)
          {
            objc_enumerationMutation(v200);
          }

          v211 = *(*(&v479 + 1) + 8 * k);
          v212 = objc_msgSend_recognitionResultsByLocale(self, v203, v204, v205, v206, v207);
          v217 = objc_msgSend_objectForKeyedSubscript_(v212, v213, v211, v214, v215, v216);

          v223 = objc_msgSend_recognitionResultsByLocale(v475, v218, v219, v220, v221, v222);
          v228 = objc_msgSend_objectForKeyedSubscript_(v223, v224, v211, v225, v226, v227);

          v232 = objc_msgSend_tokenizedTextResultByAppendingTokenizedTextResult_shouldForceSpace_(v217, v229, v228, v476, v230, v231);
          *buf = 0;
          v492 = 0;
          objc_msgSend_languageFitnessForLocale_recognitionMode_(v232, v233, v211, 6, v234, v235);
          *buf = v236;
          v492 = v237;
          objc_msgSend_setObject_forKeyedSubscript_(v478, v238, v232, v211, v239, v240);
          v244 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v241, buf, "{?=dd}", v242, v243);
          objc_msgSend_setObject_forKeyedSubscript_(v477, v245, v244, v211, v246, v247);
        }

        v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(v200, v203, &v479, v493, 16, v207);
      }

      while (v208);
    }

    v26 = objc_msgSend_orderedLocales(self, v248, v249, v250, v251, v252);
    goto LABEL_49;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v26 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_ERROR, "Can't append recognitionResults of CHStrokeGroupRecognitionResult with different locales.", buf, 2u);
  }

  v470 = 0;
LABEL_50:

  return v470;
}

- (id)mathStrokeGroupRecognitionResultByAppendingStrokeGroupRecognitionResult:(id)a3 wrapTextResult:(BOOL)a4
{
  v6 = a3;
  v17 = objc_msgSend_mathResult(self, v7, v8, v9, v10, v11);
  v238 = v6;
  if (v17)
  {
    v18 = objc_msgSend_mathResult(v6, v12, v13, v14, v15, v16);

    if (v18)
    {
      v19 = objc_msgSend_mathResult(self, v12, v13, v14, v15, v16);
      v25 = objc_msgSend_mathResult(v6, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_topTranscription(v19, v26, v27, v28, v29, v30);
      v37 = objc_msgSend_length(v31, v32, v33, v34, v35, v36);

      v43 = v25;
      if (v37 && (objc_msgSend_topTranscription(v25, v38, v39, v40, v41, v42), v44 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend_length(v44, v45, v46, v47, v48, v49), v44, v43 = v19, v50))
      {
        v55 = objc_msgSend_tokenizedMathResultByAppendingTokenizedMathResult_(v19, v51, v25, v52, v53, v54);
      }

      else
      {
        v55 = v43;
      }

      v72 = v55;
      v73 = objc_msgSend_inputStrokeIdentifiers(self, v56, v57, v58, v59, v60);
      v79 = objc_msgSend_inputStrokeIdentifiers(v6, v74, v75, v76, v77, v78);
      v84 = objc_msgSend_arrayByAddingObjectsFromArray_(v73, v80, v79, v81, v82, v83);

      v90 = objc_msgSend_processing(self, v85, v86, v87, v88, v89);
      v96 = objc_msgSend_processing(v6, v91, v92, v93, v94, v95);
      v97 = [CHStrokeGroupRecognitionResult alloc];
      v99 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_(v97, v98, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], v72, v84, v96 & v90);

      goto LABEL_28;
    }
  }

  v61 = objc_msgSend_mathResult(self, v12, v13, v14, v15, v16);
  if (v61)
  {

    goto LABEL_11;
  }

  v100 = objc_msgSend_mathResult(v6, v62, v63, v64, v65, v66);

  if (v100)
  {
LABEL_11:
    v106 = objc_msgSend_mathResult(self, v67, v68, v69, v70, v71);
    if (v106)
    {
      v107 = objc_msgSend_recognitionResultsByLocale(v6, v101, v102, v103, v104, v105);
      objc_msgSend_preferredLocale(v6, v108, v109, v110, v111, v112);
    }

    else
    {
      v107 = objc_msgSend_recognitionResultsByLocale(self, v101, v102, v103, v104, v105);
      objc_msgSend_preferredLocale(self, v118, v119, v120, v121, v122);
    }
    v113 = ;
    v19 = objc_msgSend_objectForKeyedSubscript_(v107, v114, v113, v115, v116, v117);

    v239 = objc_msgSend_array(MEMORY[0x1E695DF70], v123, v124, v125, v126, v127);
    for (i = 0; ; ++i)
    {
      v134 = objc_msgSend_transcriptionPaths(v19, v128, v129, v130, v131, v132);
      v140 = objc_msgSend_count(v134, v135, v136, v137, v138, v139);

      if (i >= v140)
      {
        break;
      }

      v146 = objc_msgSend_transcriptionPaths(v19, v141, v142, v143, v144, v145);
      v151 = objc_msgSend_objectAtIndexedSubscript_(v146, v147, i, v148, v149, v150);

      v157 = objc_msgSend_array(MEMORY[0x1E695DF70], v152, v153, v154, v155, v156);
      v163 = objc_msgSend_tokenColumnCount(v19, v158, v159, v160, v161, v162);
      v241[0] = MEMORY[0x1E69E9820];
      v241[1] = 3221225472;
      v241[2] = sub_183760130;
      v241[3] = &unk_1E6DDD6D0;
      v243 = a4;
      v164 = v157;
      v242 = v164;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v19, v165, v151, 0, v163, v241);
      v171 = objc_msgSend_copy(v164, v166, v167, v168, v169, v170);
      objc_msgSend_addObject_(v239, v172, v171, v173, v174, v175);

      v6 = v238;
    }

    if (objc_msgSend_count(v239, v141, v142, v143, v144, v145))
    {
      v181 = [CHTokenizedMathResult alloc];
      v186 = objc_msgSend_initWithBestPathTokens_(v181, v182, v239, v183, v184, v185);
    }

    else
    {
      v186 = 0;
    }

    v187 = objc_msgSend_mathResult(self, v176, v177, v178, v179, v180);

    if (v187)
    {
      v193 = self;
      if (v186)
      {
        v194 = objc_msgSend_mathResult(self, v188, v189, v190, v191, v192);
        v199 = objc_msgSend_tokenizedMathResultByAppendingTokenizedMathResult_(v194, v195, v186, v196, v197, v198);
LABEL_25:
        v204 = v199;

LABEL_27:
        v210 = objc_msgSend_inputStrokeIdentifiers(self, v205, v206, v207, v208, v209);
        v216 = objc_msgSend_inputStrokeIdentifiers(v6, v211, v212, v213, v214, v215);
        v221 = objc_msgSend_arrayByAddingObjectsFromArray_(v210, v217, v216, v218, v219, v220);

        v6 = v238;
        v227 = objc_msgSend_processing(self, v222, v223, v224, v225, v226);
        v233 = objc_msgSend_processing(v238, v228, v229, v230, v231, v232);
        v234 = [CHStrokeGroupRecognitionResult alloc];
        v99 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_(v234, v235, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], v204, v221, v233 & v227);

LABEL_28:
        goto LABEL_29;
      }
    }

    else
    {
      v193 = v6;
      if (v186)
      {
        v194 = objc_msgSend_mathResult(v6, v188, v189, v190, v191, v192);
        v199 = objc_msgSend_tokenizedMathResultByAppendingTokenizedMathResult_(v186, v200, v194, v201, v202, v203);
        goto LABEL_25;
      }
    }

    v204 = objc_msgSend_mathResult(v193, v188, v189, v190, v191, v192);
    goto LABEL_27;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v237 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v237, OS_LOG_TYPE_ERROR, "Can't append two text CHStrokeGroupRecognitionResult with into math StrokeGroupRecognitionResult.", buf, 2u);
  }

  v99 = 0;
LABEL_29:

  return v99;
}

- (CHTokenizedResult)preferredTokenizedResult
{
  v12 = objc_msgSend_preferredLocale(self, a2, v2, v3, v4, v5);
  mathResult = self->_mathResult;
  if (mathResult)
  {
    if (!v12)
    {
LABEL_5:
      v14 = mathResult;
      goto LABEL_7;
    }

    if (objc_msgSend_isEvaluationExpected(mathResult, v7, v8, v9, v10, v11))
    {
      mathResult = self->_mathResult;
      goto LABEL_5;
    }
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(self->_recognitionResultsByLocale, v7, v12, v9, v10, v11);
LABEL_7:
  v15 = v14;

  return v15;
}

- (NSString)preferredTranscription
{
  v6 = objc_msgSend_preferredTokenizedResult(self, a2, v2, v3, v4, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_topTranscription(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = objc_msgSend_preferredTranscription(v6, v13, v14, v15, v16, v17);
      v12 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v19, v18, v20, v21, v22);
    }

    else
    {
      v12 = &stru_1EF1C0318;
    }
  }

  return v12;
}

@end