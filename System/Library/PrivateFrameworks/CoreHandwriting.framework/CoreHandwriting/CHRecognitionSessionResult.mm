@interface CHRecognitionSessionResult
+ (id)loadFromFile:(id)a3;
- ($29727DC6989B69F22950FCD998EA20D4)generationDuration;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSerializableRecognitionSessionResult:(id)a3;
- (BOOL)isValidForStrokes:(id)a3;
- (CHRecognitionSessionResult)init;
- (CHRecognitionSessionResult)initWithCoder:(id)a3;
- (CHRecognitionSessionResult)initWithStrokeProviderVersion:(id)a3 encodedStrokeProviderVersion:(id)a4 orderedStrokeIdentifiers:(id)a5 sessionMode:(int64_t)a6 locales:(id)a7 preferredLocales:(id)a8 declaredVariables:(id)a9 clutterFilter:(id)a10 strokeClassificationResult:(id)a11 strokeGroupingResult:(id)a12 unprocessedStrokeGroupingResult:(id)a13 tilingResult:(id)a14 documentLayoutAnalysisResult:(id)a15 recognitionResults:(id)a16 rawRecognitionResults:(id)a17 inlineContinuousModeResults:(id)a18 autoRefineResults:(id)a19 lastAutoRefineResult:(id)a20 generationDuration:(id *)a21 recognitionEnvironment:(int64_t)a22;
- (NSArray)allResultsDebugDescriptionByGroup;
- (NSString)highConfidenceDebugDescription;
- (id)allMathResultsDebugDescriptionWithGroupHeaderBlock:(id)a3;
- (id)allResultsDebugDescriptionWithGroupHeaderBlock:(id)a3;
- (id)contextualResultsWithFullyCoveredStrokeGroups:(id)a3 partiallyCoveredStrokeGroups:(id)a4 drawingCanvasSize:(CGSize)a5;
- (id)debugDescription;
- (id)description;
- (id)forcedCachedContextualResultCoveringStrokes:(id)a3;
- (id)fullyCoveredStrokeGroupsForContextStrokes:(id)a3 partiallyCoveredStrokeGroups:(id *)a4;
- (id)rawRecognitionResultForStrokeGroupIdentifier:(int64_t)a3;
- (id)recognitionResultForStrokeGroupIdentifier:(int64_t)a3;
- (id)textCorrectionResultForStrokeGroupIdentifier:(int64_t)a3;
- (id)writeToFile;
- (id)writeToFileInFolder:(id)a3 basename:(id)a4;
- (int64_t)completeness;
- (void)encodeWithCoder:(id)a3;
- (void)setCachedRecognitionResultsFromPostProcessing:(id)a3;
@end

@implementation CHRecognitionSessionResult

- (CHRecognitionSessionResult)init
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

- (CHRecognitionSessionResult)initWithStrokeProviderVersion:(id)a3 encodedStrokeProviderVersion:(id)a4 orderedStrokeIdentifiers:(id)a5 sessionMode:(int64_t)a6 locales:(id)a7 preferredLocales:(id)a8 declaredVariables:(id)a9 clutterFilter:(id)a10 strokeClassificationResult:(id)a11 strokeGroupingResult:(id)a12 unprocessedStrokeGroupingResult:(id)a13 tilingResult:(id)a14 documentLayoutAnalysisResult:(id)a15 recognitionResults:(id)a16 rawRecognitionResults:(id)a17 inlineContinuousModeResults:(id)a18 autoRefineResults:(id)a19 lastAutoRefineResult:(id)a20 generationDuration:(id *)a21 recognitionEnvironment:(int64_t)a22
{
  v100 = a3;
  v87 = a4;
  v99 = a4;
  v88 = a5;
  v98 = a5;
  v102 = a7;
  v25 = a8;
  v26 = a9;
  v97 = a10;
  v95 = a11;
  v94 = a12;
  v93 = a13;
  v27 = a14;
  v92 = a15;
  v28 = a16;
  v101 = a17;
  v29 = a18;
  v30 = a19;
  v91 = a20;
  v103.receiver = self;
  v103.super_class = CHRecognitionSessionResult;
  v31 = [(CHRecognitionSessionResult *)&v103 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_strokeProviderVersion, a3);
    objc_storeStrong(&v32->_encodedStrokeProviderVersion, v87);
    objc_storeStrong(&v32->_orderedStrokeIdentifiers, v88);
    v32->_sessionMode = a6;
    v38 = objc_msgSend_copy(v102, v33, v34, v35, v36, v37);
    locales = v32->_locales;
    v32->_locales = v38;

    v45 = objc_msgSend_copy(v25, v40, v41, v42, v43, v44);
    preferredLocales = v32->_preferredLocales;
    v32->_preferredLocales = v45;

    v52 = objc_msgSend_copy(v26, v47, v48, v49, v50, v51);
    declaredVariables = v32->_declaredVariables;
    v32->_declaredVariables = v52;

    objc_storeStrong(&v32->_strokeClassificationResult, a11);
    objc_storeStrong(&v32->_strokeGroupingResult, a12);
    objc_storeStrong(&v32->_unprocessedStrokeGroupingResult, a13);
    objc_storeStrong(&v32->_tilingResult, a14);
    objc_storeStrong(&v32->_documentLayoutAnalysisResult, a15);
    v59 = objc_msgSend_copy(v28, v54, v55, v56, v57, v58);
    recognitionResultsByGroupID = v32->_recognitionResultsByGroupID;
    v32->_recognitionResultsByGroupID = v59;

    v66 = objc_msgSend_copy(v101, v61, v62, v63, v64, v65);
    rawRecognitionResultsByGroupID = v32->_rawRecognitionResultsByGroupID;
    v32->_rawRecognitionResultsByGroupID = v66;

    v73 = objc_msgSend_copy(v29, v68, v69, v70, v71, v72);
    textCorrectionResultsByGroupID = v32->_textCorrectionResultsByGroupID;
    v32->_textCorrectionResultsByGroupID = v73;

    v80 = objc_msgSend_copy(v30, v75, v76, v77, v78, v79);
    autoRefineResults = v32->_autoRefineResults;
    v32->_autoRefineResults = v80;

    objc_storeStrong(&v32->_lastAutoRefineResult, a20);
    v82 = *&a21->var0;
    v83 = *&a21->var2;
    v84 = *&a21->var4;
    v32->_generationDuration.totalDuration = a21->var6;
    *&v32->_generationDuration.groupingDuration = v83;
    *&v32->_generationDuration.recognitionDuration = v84;
    *&v32->_generationDuration.strokeClutterFilteringDuration = v82;
    v32->_recognitionEnvironment = a22;
    objc_storeStrong(&v32->_clutterFilter, a10);
    v32->__shouldUseCachedCompleteness = 0;
    v32->_completeness = 0;
  }

  return v32;
}

- (id)description
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = objc_msgSend_locales(self, v8, v9, v10, v11, v12);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v65, v69, 16, v15);
  if (v21)
  {
    v22 = *v66;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v66 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = objc_msgSend_localeIdentifier(*(*(&v65 + 1) + 8 * i), v16, v17, v18, v19, v20);
        objc_msgSend_addObject_(v7, v25, v24, v26, v27, v28);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v65, v69, 16, v20);
    }

    while (v21);
  }

  v33 = objc_msgSend_componentsJoinedByString_(v7, v29, @", ", v30, v31, v32);
  v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34, @"%@", v35, v36, v37, v33);

  v64.receiver = self;
  v64.super_class = CHRecognitionSessionResult;
  v39 = [(CHRecognitionSessionResult *)&v64 description];
  v45 = objc_msgSend_strokeProviderVersion(self, v40, v41, v42, v43, v44);
  v51 = objc_msgSend_strokeClassificationResult(self, v46, v47, v48, v49, v50);
  v57 = objc_msgSend_strokeGroupingResult(self, v52, v53, v54, v55, v56);
  v62 = objc_msgSend_stringByAppendingFormat_(v39, v58, @" strokeProviderVersion: %@, locales: %@, strokeClassificationResult: %@, strokeGroupingResult: %@", v59, v60, v61, v45, v38, v51, v57);

  return v62;
}

- (id)debugDescription
{
  v102 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v13 = objc_msgSend_strokeGroupingResult(self, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v13, v14, 0, 0, v15, v16);

  obj = v17;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v97, v101, 16, v19);
  if (v25)
  {
    v26 = *v98;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v98 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v97 + 1) + 8 * i);
        v29 = objc_msgSend_recognitionResultsByGroupID(self, v20, v21, v22, v23, v24);
        v30 = MEMORY[0x1E696AD98];
        v36 = objc_msgSend_uniqueIdentifier(v28, v31, v32, v33, v34, v35);
        v41 = objc_msgSend_numberWithInteger_(v30, v37, v36, v38, v39, v40);
        v46 = objc_msgSend_objectForKeyedSubscript_(v29, v42, v41, v43, v44, v45);

        v52 = objc_msgSend_textCorrectionResultsByGroupID(self, v47, v48, v49, v50, v51);
        v53 = MEMORY[0x1E696AD98];
        v59 = objc_msgSend_uniqueIdentifier(v28, v54, v55, v56, v57, v58);
        v64 = objc_msgSend_numberWithInteger_(v53, v60, v59, v61, v62, v63);
        v69 = objc_msgSend_objectForKeyedSubscript_(v52, v65, v64, v66, v67, v68);

        v75 = objc_msgSend_uniqueIdentifier(v28, v70, v71, v72, v73, v74);
        objc_msgSend_appendFormat_(v7, v76, @"  Group %ld: ", v77, v78, v79, v75);
        if (v46)
        {
          objc_msgSend_appendFormat_(v7, v80, @"recognition: %@", v81, v82, v83, v46);
          if (!v69)
          {
            goto LABEL_11;
          }

          objc_msgSend_appendString_(v7, v80, @" ", v81, v82, v83);
        }

        else if (!v69)
        {
          goto LABEL_11;
        }

        objc_msgSend_appendFormat_(v7, v80, @"textCorrection: %@", v81, v82, v83, v69);
LABEL_11:
        objc_msgSend_appendString_(v7, v80, @"\n", v81, v82, v83);
      }

      v17 = obj;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v97, v101, 16, v24);
    }

    while (v25);
  }

  v89 = objc_msgSend_description(self, v84, v85, v86, v87, v88);
  v94 = objc_msgSend_stringByAppendingFormat_(v89, v90, @"Group Results: \n%@", v91, v92, v93, v7);

  return v94;
}

- (NSString)highConfidenceDebugDescription
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = objc_msgSend_strokeGroupingResult(self, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v13, v14, 0, 1, v15, v16);

  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v46, v50, 16, v19);
  if (v25)
  {
    v26 = *v47;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v17);
        }

        v28 = objc_msgSend_uniqueIdentifier(*(*(&v46 + 1) + 8 * i), v20, v21, v22, v23, v24);
        v33 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(self, v29, v28, v30, v31, v32);
        v35 = objc_msgSend_highConfidenceTextForSessionResult_averageTokenScore_rejectionRate_doesContainUnfilteredMultiLocaleResults_isNonTextCandidateResult_(v33, v34, self, 0, 0, 0, 0);
        if (objc_msgSend_length(v35, v36, v37, v38, v39, v40))
        {
          objc_msgSend_appendFormat_(v7, v41, @"%@\n", v42, v43, v44, v35);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v46, v50, 16, v24);
    }

    while (v25);
  }

  return v7;
}

- (NSArray)allResultsDebugDescriptionByGroup
{
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v8 = sub_18374E1D8(self, v7, &unk_1EF1BC7D0);

  return v7;
}

- (id)allResultsDebugDescriptionWithGroupHeaderBlock:(id)a3
{
  v3 = sub_18374E1D8(self, 0, a3);

  return v3;
}

- (id)allMathResultsDebugDescriptionWithGroupHeaderBlock:(id)a3
{
  v290 = *MEMORY[0x1E69E9840];
  v264 = a3;
  v262 = objc_msgSend_string(MEMORY[0x1E696AD60], v4, v5, v6, v7, v8);
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  v261 = self;
  v14 = objc_msgSend_strokeGroupingResult(self, v9, v10, v11, v12, v13);
  v18 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v14, v15, 0, 1, v16, v17);

  obj = v18;
  v263 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v284, v289, 16, v20);
  if (v263)
  {
    v259 = 0;
    v260 = *v285;
    do
    {
      for (i = 0; i != v263; ++i)
      {
        if (*v285 != v260)
        {
          objc_enumerationMutation(obj);
        }

        v267 = *(*(&v284 + 1) + 8 * i);
        v26 = objc_msgSend_uniqueIdentifier(v267, v21, v22, v23, v24, v25);
        v31 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v261, v27, v26, v28, v29, v30);
        v42 = objc_msgSend_string(MEMORY[0x1E696AD60], v32, v33, v34, v35, v36);
        if (!v264 || (v264[2](v264, v267), (v43 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v44 = MEMORY[0x1E696AEC0];
          v45 = objc_msgSend_uniqueIdentifier(v267, v37, v38, v39, v40, v41);
          v43 = objc_msgSend_stringWithFormat_(v44, v46, @"GroupID %ld", v47, v48, v49, v45);
        }

        objc_msgSend_appendFormat_(v42, v37, @"%@: {\n  ", v39, v40, v41, v43);
        v265 = v43;
        v60 = objc_msgSend_mathResult(v31, v50, v51, v52, v53, v54);
        if (!v60 || (objc_msgSend_mathResult(v31, v55, v56, v57, v58, v59), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend_transcriptionPaths(v61, v62, v63, v64, v65, v66), v67 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend_count(v67, v68, v69, v70, v71, v72) == 0, v67, v61, v60, v73))
        {
          objc_msgSend_appendFormat_(v42, v55, @"%@", v57, v58, v59, @"<NO RESULT>\n");
        }

        else
        {
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          v280 = 0u;
          v75 = objc_msgSend_mathResult(v31, v55, v74, v57, v58, v59);
          v81 = objc_msgSend_transcriptionPaths(v75, v76, v77, v78, v79, v80);

          v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v280, v288, 16, v83);
          if (v89)
          {
            v90 = *v281;
            do
            {
              for (j = 0; j != v89; ++j)
              {
                if (*v281 != v90)
                {
                  objc_enumerationMutation(v81);
                }

                v92 = *(*(&v280 + 1) + 8 * j);
                v93 = objc_msgSend_mathResult(v31, v84, v85, v86, v87, v88);
                v99 = objc_msgSend_transcriptionPaths(v93, v94, v95, v96, v97, v98);
                v105 = objc_msgSend_lastObject(v99, v100, v101, v102, v103, v104);

                v111 = objc_msgSend_mathResult(v31, v106, v107, v108, v109, v110);
                v117 = objc_msgSend_length(v92, v112, v113, v114, v115, v116);
                v120 = objc_msgSend_transcriptionWithPath_columnRange_(v111, v118, v92, 0, v117, v119);

                v125 = @"\n";
                if (v92 != v105)
                {
                  v125 = @", ";
                }

                objc_msgSend_appendFormat_(v42, v121, @"%@%@", v122, v123, v124, v120, v125);
              }

              v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v84, &v280, v288, 16, v88);
            }

            while (v89);
          }

          ++v259;
        }

        objc_msgSend_appendFormat_(v42, v126, @"},\n", v127, v128, v129);
        v135 = objc_msgSend_mathResult(v31, v130, v131, v132, v133, v134);
        v136 = v135 == 0;

        if (!v136)
        {
          v142 = objc_msgSend_mathResult(v31, v137, v138, v139, v140, v141);
          v143 = MEMORY[0x1E696AEC0];
          objc_msgSend_absoluteProbability(v142, v144, v145, v146, v147, v148);
          v150 = v149;
          objc_msgSend_score(v142, v151, v152, v153, v154, v155);
          v161 = objc_msgSend_stringWithFormat_(v143, v156, @"(%.3f, %.3f)", v157, v158, v159, v150, v160);
          objc_msgSend_appendFormat_(v42, v162, @"Result score: %@\n", v163, v164, v165, v161);
          v171 = objc_msgSend_mathResult(v31, v166, v167, v168, v169, v170);
          v177 = objc_msgSend_selectedTranscriptionPathIndex(v171, v172, v173, v174, v175, v176);
          v178 = v177 == 0;

          if (!v178)
          {
            v184 = objc_msgSend_mathResult(v31, v179, v180, v181, v182, v183);
            v190 = objc_msgSend_selectedTranscriptionPathIndex(v184, v185, v186, v187, v188, v189);
            objc_msgSend_appendFormat_(v42, v191, @"Selected transcription index: %@\n", v192, v193, v194, v190);
          }

          v276 = 0;
          v277 = &v276;
          v278 = 0x2020000000;
          v279 = 0;
          v272 = 0;
          v273 = &v272;
          v274 = 0x2020000000;
          v275 = 0;
          v195 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v179, v180, v181, v182, v183);
          v201 = objc_msgSend_mathResult(v31, v196, v197, v198, v199, v200);
          v268[0] = MEMORY[0x1E69E9820];
          v268[1] = 3221225472;
          v268[2] = sub_18374F480;
          v268[3] = &unk_1E6DDD478;
          v202 = v195;
          v269 = v202;
          v270 = &v276;
          v271 = &v272;
          objc_msgSend_enumerateTokensInPreferredTranscriptionPathWithBlock_(v201, v203, v268, v204, v205, v206);

          v207 = MEMORY[0x1E696AC90];
          v213 = objc_msgSend_strokeIdentifiers(v267, v208, v209, v210, v211, v212);
          v219 = objc_msgSend_count(v213, v214, v215, v216, v217, v218);
          v223 = objc_msgSend_indexSetWithIndexesInRange_(v207, v220, 0, v219, v221, v222);
          isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v202, v224, v223, v225, v226, v227);

          if ((isEqualToIndexSet & 1) == 0)
          {
            v234 = objc_msgSend_strokeIdentifiers(v267, v229, v230, v231, v232, v233);
            v240 = objc_msgSend_count(v234, v235, v236, v237, v238, v239);
            v246 = objc_msgSend_description(v202, v241, v242, v243, v244, v245);
            objc_msgSend_appendFormat_(v42, v247, @"ERROR: Not all %lu strokes covered in the result. Coverage: %@\n", v248, v249, v250, v240, v246);
          }

          v251 = @"ERROR: Evaluation trigger ('=' or '\\hline') has no strokes assigned.\n";
          if ((v277[3] & 1) != 0 || (v251 = @"WARNING: Some ink elements have no strokes assigned.\n", *(v273 + 24) == 1))
          {
            objc_msgSend_appendString_(v42, v229, v251, v231, v232, v233);
          }

          _Block_object_dispose(&v272, 8);
          _Block_object_dispose(&v276, 8);
        }

        objc_msgSend_appendString_(v42, v137, @"\n", v139, v140, v141);
        objc_msgSend_appendString_(v262, v252, v42, v253, v254, v255);
      }

      v263 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v284, v289, 16, v25);
    }

    while (v263);

    if (v259)
    {
      v256 = v262;
      goto LABEL_37;
    }
  }

  else
  {
  }

  v256 = &stru_1EF1C0318;
LABEL_37:

  return v256;
}

- (id)recognitionResultForStrokeGroupIdentifier:(int64_t)a3
{
  v7 = objc_msgSend_recognitionResultsByGroupID(self, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, a3, v9, v10, v11);
  v17 = objc_msgSend_objectForKeyedSubscript_(v7, v13, v12, v14, v15, v16);

  return v17;
}

- (id)rawRecognitionResultForStrokeGroupIdentifier:(int64_t)a3
{
  v7 = objc_msgSend_rawRecognitionResultsByGroupID(self, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, a3, v9, v10, v11);
  v17 = objc_msgSend_objectForKeyedSubscript_(v7, v13, v12, v14, v15, v16);

  return v17;
}

- (id)textCorrectionResultForStrokeGroupIdentifier:(int64_t)a3
{
  v7 = objc_msgSend_textCorrectionResultsByGroupID(self, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, a3, v9, v10, v11);
  v17 = objc_msgSend_objectForKeyedSubscript_(v7, v13, v12, v14, v15, v16);

  return v17;
}

- (BOOL)isValidForStrokes:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = objc_msgSend_strokeGroupingResult(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_strokeGroups(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_allObjects(v16, v17, v18, v19, v20, v21);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = v4;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v39, v43, 16, v25);
  if (v26)
  {
    v27 = *v40;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v39 + 1) + 8 * i);
        v38 = 0x7FFFFFFFFFFFFFFFLL;
        v30 = objc_opt_class();
        v33 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_foundStrokeGroupIndex_(v30, v31, v29, v22, &v38, v32);
        if (v38 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v36 = 0;
          goto LABEL_11;
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v34, &v39, v43, 16, v35);
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v36 = 1;
LABEL_11:

  return v36;
}

- (id)fullyCoveredStrokeGroupsForContextStrokes:(id)a3 partiallyCoveredStrokeGroups:(id *)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v87 = a3;
  v85 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(self->_strokeGroupingResult, v5, 0, 0, v6, v7);
  v13 = objc_msgSend_set(MEMORY[0x1E695DFA8], v8, v9, v10, v11, v12);
  objc_msgSend_addObjectsFromArray_(v13, v14, v87, v15, v16, v17);
  v88 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20, v21, v22);
  v28 = objc_msgSend_array(MEMORY[0x1E695DF70], v23, v24, v25, v26, v27);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v29 = v85;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v89, v93, 16, v31);
  if (v37)
  {
    v38 = *v90;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v90 != v38)
        {
          objc_enumerationMutation(v29);
        }

        v40 = *(*(&v89 + 1) + 8 * i);
        v41 = objc_msgSend_strokeIdentifiers(v40, v32, v33, v34, v35, v36);
        v46 = objc_msgSend_intersectsSet_(v41, v42, v13, v43, v44, v45);

        if (v46)
        {
          v47 = objc_msgSend_strokeIdentifiers(v40, v32, v33, v34, v35, v36);
          v53 = objc_msgSend_mutableCopy(v47, v48, v49, v50, v51, v52);

          objc_msgSend_intersectSet_(v53, v54, v13, v55, v56, v57);
          objc_msgSend_minusSet_(v13, v58, v53, v59, v60, v61);
          v67 = objc_msgSend_count(v53, v62, v63, v64, v65, v66);
          v73 = objc_msgSend_strokeIdentifiers(v40, v68, v69, v70, v71, v72);
          LODWORD(v67) = v67 == objc_msgSend_count(v73, v74, v75, v76, v77, v78);

          if (v67)
          {
            objc_msgSend_addObject_(v88, v79, v40, v80, v81, v82);
          }

          else
          {
            objc_msgSend_addObject_(v28, v79, v40, v80, v81, v82);
          }
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v89, v93, 16, v36);
    }

    while (v37);
  }

  if (a4)
  {
    v83 = v28;
    *a4 = v28;
  }

  return v88;
}

- (id)forcedCachedContextualResultCoveringStrokes:(id)a3
{
  v402 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v385 = v4;
  v387 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(self->_strokeGroupingResult, v5, 0, 0, v6, v7);
  v8 = objc_opt_class();
  v12 = objc_msgSend_strokeIdentifierToGroupIndexMappingForStrokeIdentifiers_orderedStrokeGroups_(v8, v9, v4, v387, v10, v11);
  if (!objc_msgSend_count(v12, v13, v14, v15, v16, v17))
  {
    v321 = 0;
    goto LABEL_70;
  }

  v394 = 0u;
  v395 = 0u;
  v392 = 0u;
  v393 = 0u;
  v18 = v4;
  v21 = 0;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v392, v401, 16, v20);
  if (v26)
  {
    v27 = *v393;
    do
    {
      v28 = 0;
      v29 = v21;
      do
      {
        if (*v393 != v27)
        {
          objc_enumerationMutation(v18);
        }

        v30 = v12;
        v31 = objc_msgSend_objectForKey_(v12, v22, *(*(&v392 + 1) + 8 * v28), v23, v24, v25);
        v37 = objc_msgSend_integerValue(v31, v32, v33, v34, v35, v36);

        if (v29)
        {
          v42 = objc_msgSend_objectAtIndexedSubscript_(v387, v38, v37, v39, v40, v41);
          v43 = v29 == v42;

          if (!v43)
          {
            v321 = 0;
            goto LABEL_69;
          }
        }

        v21 = objc_msgSend_objectAtIndexedSubscript_(v387, v38, v37, v39, v40, v41);

        ++v28;
        v29 = v21;
        v12 = v30;
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v22, &v392, v401, 16, v25);
    }

    while (v26);
  }

  v30 = v12;

  recognitionResultsByGroupID = self->_recognitionResultsByGroupID;
  v45 = MEMORY[0x1E696AD98];
  v51 = objc_msgSend_uniqueIdentifier(v21, v46, v47, v48, v49, v50);
  v56 = objc_msgSend_numberWithInteger_(v45, v52, v51, v53, v54, v55);
  v383 = objc_msgSend_objectForKey_(recognitionResultsByGroupID, v57, v56, v58, v59, v60);

  v382 = objc_msgSend_preferredLocale(v383, v61, v62, v63, v64, v65);
  if (!v382)
  {
    v321 = 0;
    goto LABEL_68;
  }

  v71 = objc_msgSend_recognitionResultsByLocale(v383, v66, v67, v68, v69, v70);
  v386 = objc_msgSend_objectForKeyedSubscript_(v71, v72, v382, v73, v74, v75);

  v81 = objc_msgSend_inputStrokeIdentifiers(v386, v76, v77, v78, v79, v80);
  v87 = objc_msgSend_count(v81, v82, v83, v84, v85, v86);
  v93 = objc_msgSend_strokeIndexes(v386, v88, v89, v90, v91, v92);
  v99 = v87 == objc_msgSend_count(v93, v94, v95, v96, v97, v98);

  if (!v99)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v105 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      v111 = objc_msgSend_strokeIndexes(v386, v106, v107, v108, v109, v110);
      v117 = objc_msgSend_count(v111, v112, v113, v114, v115, v116);
      v123 = objc_msgSend_inputStrokeIdentifiers(v383, v118, v119, v120, v121, v122);
      v129 = objc_msgSend_count(v123, v124, v125, v126, v127, v128);
      *buf = 134218240;
      v398 = v117;
      v399 = 2048;
      v400 = v129;
      _os_log_impl(&dword_18366B000, v105, OS_LOG_TYPE_ERROR, "Mismatch between the strokes covered by a text result (%ld) vs its stroke group (%ld).", buf, 0x16u);
    }
  }

  v130 = objc_msgSend_inputStrokeIdentifiers(v386, v100, v101, v102, v103, v104);
  v136 = objc_msgSend_count(v130, v131, v132, v133, v134, v135);
  v142 = objc_msgSend_strokeIndexes(v386, v137, v138, v139, v140, v141);
  v148 = v136 == objc_msgSend_count(v142, v143, v144, v145, v146, v147);

  if (!v148)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v154 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
    {
      v160 = objc_msgSend_strokeIndexes(v386, v155, v156, v157, v158, v159);
      v166 = objc_msgSend_count(v160, v161, v162, v163, v164, v165);
      v172 = objc_msgSend_inputStrokeIdentifiers(v383, v167, v168, v169, v170, v171);
      v178 = objc_msgSend_count(v172, v173, v174, v175, v176, v177);
      *buf = 134218240;
      v398 = v166;
      v399 = 2048;
      v400 = v178;
      _os_log_impl(&dword_18366B000, v154, OS_LOG_TYPE_FAULT, "Mismatch between the strokes covered by a text result (%ld) vs its stroke group (%ld).", buf, 0x16u);
    }
  }

  v179 = objc_msgSend_inputStrokeIdentifiers(v383, v149, v150, v151, v152, v153);
  objc_msgSend_setInputStrokeIdentifiers_(v386, v180, v179, v181, v182, v183);

  v189 = objc_msgSend_inputStrokeIdentifiers(v386, v184, v185, v186, v187, v188);
  v195 = objc_msgSend_count(v189, v190, v191, v192, v193, v194);
  v201 = v195 < objc_msgSend_count(v18, v196, v197, v198, v199, v200);

  if (v201)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v207 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
    {
      v213 = objc_msgSend_inputStrokeIdentifiers(v386, v208, v209, v210, v211, v212);
      v219 = objc_msgSend_count(v213, v214, v215, v216, v217, v218);
      v225 = objc_msgSend_count(v18, v220, v221, v222, v223, v224);
      *buf = 134218240;
      v398 = v219;
      v399 = 2048;
      v400 = v225;
      _os_log_impl(&dword_18366B000, v207, OS_LOG_TYPE_ERROR, "The group has %ld strokes, but should contain at least as many strokes as the %ld strokes to cover", buf, 0x16u);
    }
  }

  v226 = objc_msgSend_inputStrokeIdentifiers(v386, v202, v203, v204, v205, v206);
  v232 = objc_msgSend_count(v226, v227, v228, v229, v230, v231);
  v238 = v232 < objc_msgSend_count(v18, v233, v234, v235, v236, v237);

  if (v238)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v244 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v244, OS_LOG_TYPE_FAULT))
    {
      v250 = objc_msgSend_inputStrokeIdentifiers(v386, v245, v246, v247, v248, v249);
      v256 = objc_msgSend_count(v250, v251, v252, v253, v254, v255);
      v262 = objc_msgSend_count(v18, v257, v258, v259, v260, v261);
      *buf = 134218240;
      v398 = v256;
      v399 = 2048;
      v400 = v262;
      _os_log_impl(&dword_18366B000, v244, OS_LOG_TYPE_FAULT, "The group has %ld strokes, but should contain at least as many strokes as the %ld strokes to cover", buf, 0x16u);
    }
  }

  v263 = objc_msgSend_inputStrokeIdentifiers(v386, v239, v240, v241, v242, v243);
  v269 = objc_msgSend_count(v263, v264, v265, v266, v267, v268);
  v275 = v269 > objc_msgSend_count(v18, v270, v271, v272, v273, v274);

  if (!v275)
  {
    goto LABEL_67;
  }

  v384 = objc_msgSend_array(MEMORY[0x1E695DF70], v276, v277, v278, v279, v280);
  v286 = 0;
  v287 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    if (v286 >= objc_msgSend_tokenColumnCount(v386, v281, v282, v283, v284, v285))
    {
      goto LABEL_56;
    }

    v291 = objc_msgSend_strokeIndexesForColumnsInRange_(v386, v288, v286, 1, v289, v290);
    v297 = objc_msgSend_inputStrokeIdentifiers(v386, v292, v293, v294, v295, v296);
    v302 = objc_msgSend_objectsAtIndexes_(v297, v298, v291, v299, v300, v301);

    if (v287 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v390 = 0u;
    v391 = 0u;
    v388 = 0u;
    v389 = 0u;
    v307 = v302;
    v314 = objc_msgSend_countByEnumeratingWithState_objects_count_(v307, v308, &v388, v396, 16, v309);
    if (v314)
    {
      v315 = *v389;
      while (2)
      {
        for (i = 0; i != v314; ++i)
        {
          if (*v389 != v315)
          {
            objc_enumerationMutation(v307);
          }

          if (objc_msgSend_containsObject_(v18, v310, *(*(&v388 + 1) + 8 * i), v311, v312, v313))
          {

            v287 = v286;
            goto LABEL_50;
          }
        }

        v314 = objc_msgSend_countByEnumeratingWithState_objects_count_(v307, v310, &v388, v396, 16, v313);
        if (v314)
        {
          continue;
        }

        break;
      }
    }

    v287 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_51:

    ++v286;
  }

LABEL_50:
  objc_msgSend_addObjectsFromArray_(v384, v303, v302, v304, v305, v306);
  if ((objc_msgSend_isEqualToArray_(v384, v317, v18, v318, v319, v320) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (v286 + 1 == v287)
  {
LABEL_56:
    v325 = v386;
    goto LABEL_66;
  }

  v325 = objc_msgSend_subResultWithColumnRange_(v386, v322, v287, v286 + 1 - v287, v323, v324);
  v331 = objc_msgSend_tokenColumns(v325, v326, v327, v328, v329, v330);
  v336 = objc_msgSend_objectAtIndexedSubscript_(v331, v332, 0, v333, v334, v335);
  v342 = objc_msgSend_strokeIndexes(v336, v337, v338, v339, v340, v341);
  Index = objc_msgSend_firstIndex(v342, v343, v344, v345, v346, v347);

  for (j = 1; j < objc_msgSend_tokenColumnCount(v325, v349, v350, v351, v352, v353) && Index > 0; ++j)
  {
    v360 = objc_msgSend_tokenColumns(v325, v355, v356, v357, v358, v359);
    v365 = objc_msgSend_objectAtIndexedSubscript_(v360, v361, j, v362, v363, v364);
    v371 = objc_msgSend_strokeIndexes(v365, v366, v367, v368, v369, v370);
    v377 = objc_msgSend_firstIndex(v371, v372, v373, v374, v375, v376);

    if (v377 < Index)
    {
      Index = v377;
    }
  }

  if (Index > 0)
  {
    objc_msgSend_offsetAllStrokeIndexesBy_(v325, v355, -Index, v357, v358, v359);
  }

  objc_msgSend_setInputStrokeIdentifiers_(v325, v355, v384, v357, v358, v359);

LABEL_66:
  v386 = v325;
LABEL_67:
  v378 = [CHContextualTextResult alloc];
  v321 = objc_msgSend_initWithTextResult_terminatingSpecialCharacter_strokeGroup_(v378, v379, v386, 0, v21, v380);

LABEL_68:
  v18 = v383;
  v29 = v21;
LABEL_69:

  v12 = v30;
LABEL_70:

  return v321;
}

- (id)contextualResultsWithFullyCoveredStrokeGroups:(id)a3 partiallyCoveredStrokeGroups:(id)a4 drawingCanvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v422 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v417 = a4;
  v414 = objc_msgSend_textStrokeGroupClusters(self->_strokeGroupingResult, v10, v11, v12, v13, v14);
  v18 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(self->_strokeGroupingResult, v15, 0, 1, v16, v17);
  if (!objc_msgSend_count(v18, v19, v20, v21, v22, v23))
  {
    v409 = MEMORY[0x1E695E0F0];
    goto LABEL_46;
  }

  v415 = self;
  v29 = objc_msgSend_count(v9, v24, v25, v26, v27, v28);
  v411 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v406 = 0;
  v38 = 0;
  v401 = objc_msgSend_count(v417, v30, v31, v32, v33, v34) + v29;
  if (v9)
  {
    v44 = v417 == 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = !v44;
  v416 = v45;
  while (2)
  {
    if (v35)
    {
      v413 = v35;
      if (!v411)
      {
        v411 = 0;
        v46 = v36;
        v174 = v35;
        if (qword_1EA84DC48 == -1)
        {
          goto LABEL_42;
        }

        goto LABEL_50;
      }

      v409 = objc_msgSend_array(MEMORY[0x1E695DF70], v39, v40, v41, v42, v43);
      v402 = 0;
      while (1)
      {
        if (v38 >= objc_msgSend_count(v18, v177, v178, v179, v180, v181))
        {
          v46 = v36;
          goto LABEL_45;
        }

        if (v38 >= objc_msgSend_count(v18, v182, v183, v184, v185, v186) - 1)
        {
          v233 = 0;
          v410 = 0;
          v405 = 0;
          if (!v9)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v192 = v38 + 1;
          v410 = objc_msgSend_objectAtIndexedSubscript_(v18, v187, v38 + 1, v189, v190, v191);
          if (v416 && (objc_msgSend_containsObject_(v9, v193, v410, v195, v196, v197) & 1) == 0 && (objc_msgSend_containsObject_(v417, v193, v410, v195, v196, v197) & 1) == 0)
          {
            goto LABEL_85;
          }

          recognitionResultsByGroupID = v415->_recognitionResultsByGroupID;
          v199 = MEMORY[0x1E696AD98];
          v200 = objc_msgSend_uniqueIdentifier(v410, v193, v194, v195, v196, v197);
          v205 = objc_msgSend_numberWithInteger_(v199, v201, v200, v202, v203, v204);
          v403 = objc_msgSend_objectForKey_(recognitionResultsByGroupID, v206, v205, v207, v208, v209);

          hasTextResult = objc_msgSend_hasTextResult(v403, v210, v211, v212, v213, v214);
          if (hasTextResult)
          {
            v221 = objc_msgSend_preferredLocale(v403, v215, v216, v217, v218, v219);
            v227 = objc_msgSend_recognitionResultsByLocale(v403, v222, v223, v224, v225, v226);
            v405 = objc_msgSend_objectForKeyedSubscript_(v227, v228, v221, v229, v230, v231);
            v232 = v221;
          }

          else
          {
            v240 = objc_msgSend_mathResult(v403, v215, v216, v217, v218, v219);
            v241 = v240 == 0;

            if (v241)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v338 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v338, OS_LOG_TYPE_ERROR))
              {
                v344 = objc_msgSend_inputStrokeIdentifiers(v403, v339, v340, v341, v342, v343);
                v350 = objc_msgSend_count(v344, v345, v346, v347, v348, v349);
                *buf = 134217984;
                v421 = v350;
                _os_log_impl(&dword_18366B000, v338, OS_LOG_TYPE_ERROR, "Unexpected group recognition result (%ld strokes) found with no math result and no preferred locale. Skipping.", buf, 0xCu);
              }

LABEL_85:
              v351 = 0;
              v352 = v410;
              goto LABEL_102;
            }

            v247 = objc_msgSend_orderedLocales(v403, v242, v243, v244, v245, v246);
            v232 = objc_msgSend_firstObject(v247, v248, v249, v250, v251, v252);

            v227 = objc_msgSend_mathResult(v403, v253, v254, v255, v256, v257);
            v405 = objc_msgSend_tokenizedTextResultFromTokenizedMathResult_locale_(CHMathPostProcessingManager, v258, v227, v411, v259, v260);
          }

          v266 = objc_msgSend_inputStrokeIdentifiers(v403, v261, v262, v263, v264, v265);
          objc_msgSend_setInputStrokeIdentifiers_(v405, v267, v266, v268, v269, v270);

          objc_msgSend_setLocale_(v405, v271, v232, v272, v273, v274);
          v233 = hasTextResult ^ 1;
          if (!v9)
          {
LABEL_65:
            v239 = 1;
            goto LABEL_66;
          }
        }

        v418[0] = MEMORY[0x1E69E9820];
        v418[1] = 3221225472;
        v418[2] = sub_1837516FC;
        v418[3] = &unk_1E6DDD4A0;
        v419 = v37;
        v238 = objc_msgSend_indexOfObjectPassingTest_(v9, v234, v418, v235, v236, v237);

        v239 = v238 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_66:
        v404 = v239;
        ++v402;
        if (!v410 || ((v406 ^ 1) & 1) != 0 || v233 != 1)
        {
          if (v410 && ((v406 ^ v233) & 1) != 0)
          {
            v276 = objc_opt_class();
            if (objc_msgSend_isStrokeGroup_inlineWithNextGroup_(v276, v277, v37, v410, v278, v279))
            {
              v275 = @" ";
            }

            else
            {
              v275 = @"\n";
            }

            goto LABEL_101;
          }

          if (!v405)
          {
            goto LABEL_87;
          }

          v280 = objc_msgSend_tokenColumns(v405, v187, v188, v189, v190, v191);
          if (!objc_msgSend_count(v280, v281, v282, v283, v284, v285))
          {

LABEL_87:
            if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
            {
              goto LABEL_95;
            }

            objc_msgSend_bounds(v37, v187, v188, v189, v190, v191);
            if (v354 / width >= 0.5)
            {
              goto LABEL_95;
            }

            v355 = @"\n";
            if (v402 == v401)
            {
              v355 = 0;
            }

            v356 = v355;
            if (v402 == v401)
            {
LABEL_95:
              if (v38 == objc_msgSend_count(v18, v187, v188, v189, v190, v191) - 1)
              {
                v275 = 0;
                isEqualToString = objc_msgSend_isEqualToString_(0, v357, @"\n", v358, v359, v360);
              }

              else
              {
                v367 = objc_msgSend_defaultWordTerminationCharacterForLocale_(CHContextualTextResult, v357, v411, v358, v359, v360);
                if (v404)
                {

                  v275 = @"\n";
                  isEqualToString = objc_msgSend_isEqualToString_(@"\n", v372, @"\n", v373, v374, v375);
                }

                else
                {
                  v275 = v367;
                  isEqualToString = objc_msgSend_isEqualToString_(v367, v368, @"\n", v369, v370, v371);
                }
              }

              if ((isEqualToString & 1) == 0)
              {
                for (i = 0; i < objc_msgSend_count(v414, v362, v363, v364, v365, v366) - 1; ++i)
                {
                  v389 = objc_msgSend_objectAtIndexedSubscript_(v414, v385, i, v386, v387, v388);
                  v399 = objc_msgSend_indexOfObject_(v389, v390, v37, v391, v392, v393);
                  if (v399 != 0x7FFFFFFFFFFFFFFFLL && v399 == objc_msgSend_count(v389, v394, v395, v396, v397, v398) - 1)
                  {

                    v275 = @"\n";
                  }
                }
              }

              goto LABEL_101;
            }

            goto LABEL_69;
          }

          v407 = objc_msgSend_tokenColumns(v405, v286, v287, v288, v289, v290);
          v296 = objc_msgSend_firstObject(v407, v291, v292, v293, v294, v295);
          v302 = objc_msgSend_textTokenRows(v296, v297, v298, v299, v300, v301);
          v308 = objc_msgSend_count(v302, v303, v304, v305, v306, v307) == 0;

          if (v308)
          {
            goto LABEL_87;
          }

          v408 = objc_msgSend_tokenColumns(v405, v187, v188, v189, v190, v191);
          v400 = objc_msgSend_firstObject(v408, v309, v310, v311, v312, v313);
          v319 = objc_msgSend_textTokenRows(v400, v314, v315, v316, v317, v318);
          v325 = objc_msgSend_firstObject(v319, v320, v321, v322, v323, v324);
          v331 = objc_msgSend_firstObject(v325, v326, v327, v328, v329, v330);
          v337 = (objc_msgSend_properties(v331, v332, v333, v334, v335, v336) & 0x80) == 0;

          if (v337)
          {
            goto LABEL_87;
          }
        }

LABEL_69:
        v275 = @"\n";
LABEL_101:
        v376 = [CHContextualTextResult alloc];
        v379 = objc_msgSend_initWithTextResult_terminatingSpecialCharacter_strokeGroup_(v376, v377, v413, v275, v37, v378);
        objc_msgSend_addObject_(v409, v380, v379, v381, v382, v383);
        v351 = v405;

        v352 = v410;
        v192 = v38 + 1;
        v413 = v351;
        v37 = v352;
        v406 = v233;
LABEL_102:

        v38 = v192;
      }
    }

    v46 = v36;
    if (!v416)
    {
      while (1)
      {
        if (v38 >= objc_msgSend_count(v18, v39, v40, v41, v42, v43))
        {
          goto LABEL_49;
        }

        v51 = objc_msgSend_objectAtIndexedSubscript_(v18, v71, v38, v72, v73, v74);

LABEL_21:
        v37 = v51;
LABEL_22:
        v75 = self->_recognitionResultsByGroupID;
        v76 = MEMORY[0x1E696AD98];
        v77 = objc_msgSend_uniqueIdentifier(v37, v56, v57, v58, v59, v60);
        v82 = objc_msgSend_numberWithInteger_(v76, v78, v77, v79, v80, v81);
        v36 = objc_msgSend_objectForKey_(v75, v83, v82, v84, v85, v86);

        if (objc_msgSend_hasTextResult(v36, v87, v88, v89, v90, v91))
        {
          break;
        }

        v97 = objc_msgSend_mathResult(v36, v92, v93, v94, v95, v96);
        v98 = v97 == 0;

        if (!v98)
        {
          v128 = objc_msgSend_orderedLocales(v36, v99, v100, v101, v102, v103);
          v134 = objc_msgSend_count(v128, v129, v130, v131, v132, v133) == 0;

          if (v134)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v147 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v147, OS_LOG_TYPE_ERROR, "No orderedLocales for group recognition math result, falling back to en_US", buf, 2u);
            }

            objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v148, @"en_US", v149, v150, v151);
            v411 = v140 = v411;
          }

          else
          {
            v140 = objc_msgSend_orderedLocales(v36, v135, v136, v137, v138, v139);
            v146 = objc_msgSend_firstObject(v140, v141, v142, v143, v144, v145);

            v411 = v146;
          }

          v123 = objc_msgSend_mathResult(v36, v152, v153, v154, v155, v156);
          v412 = objc_msgSend_tokenizedTextResultFromTokenizedMathResult_locale_(CHMathPostProcessingManager, v157, v123, v411, v158, v159);
          v406 = 1;
          goto LABEL_39;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v104 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v110 = objc_msgSend_inputStrokeIdentifiers(v36, v105, v106, v107, v108, v109);
          v116 = objc_msgSend_count(v110, v111, v112, v113, v114, v115);
          *buf = 134217984;
          v421 = v116;
          _os_log_impl(&dword_18366B000, v104, OS_LOG_TYPE_ERROR, "Unexpected group recognition result (%ld strokes) found with no math result and no preferred locale. Skipping.", buf, 0xCu);
        }

        ++v38;
        v46 = v36;
        if (v416)
        {
          goto LABEL_11;
        }
      }

      v117 = objc_msgSend_preferredLocale(v36, v92, v93, v94, v95, v96);

      v123 = objc_msgSend_recognitionResultsByLocale(v36, v118, v119, v120, v121, v122);
      v412 = objc_msgSend_objectForKeyedSubscript_(v123, v124, v117, v125, v126, v127);
      v411 = v117;
LABEL_39:

      v165 = objc_msgSend_inputStrokeIdentifiers(v36, v160, v161, v162, v163, v164);
      objc_msgSend_setInputStrokeIdentifiers_(v412, v166, v165, v167, v168, v169);

      v35 = v412;
      objc_msgSend_setLocale_(v412, v170, v411, v171, v172, v173);
      continue;
    }

    break;
  }

LABEL_11:
  if (v38 >= objc_msgSend_count(v18, v39, v40, v41, v42, v43))
  {
LABEL_49:
    v174 = 0;
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_50;
  }

  v51 = objc_msgSend_objectAtIndexedSubscript_(v18, v47, v38, v48, v49, v50);

  if (objc_msgSend_containsObject_(v9, v52, v51, v53, v54, v55) & 1) != 0 || (objc_msgSend_containsObject_(v417, v56, v51, v58, v59, v60))
  {
    goto LABEL_21;
  }

  v61 = v38 + 1;
  while (1)
  {
    v38 = v61;
    if (v61 >= objc_msgSend_count(v18, v56, v57, v58, v59, v60))
    {
      break;
    }

    v37 = objc_msgSend_objectAtIndexedSubscript_(v18, v62, v38, v63, v64, v65);

    if ((objc_msgSend_containsObject_(v9, v66, v37, v67, v68, v69) & 1) == 0)
    {
      v70 = objc_msgSend_containsObject_(v417, v56, v37, v58, v59, v60);
      v61 = v38 + 1;
      v51 = v37;
      if ((v70 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  v174 = 0;
  v37 = v51;
  if (qword_1EA84DC48 != -1)
  {
LABEL_50:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

LABEL_42:
  v413 = v174;
  v175 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v175, OS_LOG_TYPE_ERROR, "Found no valid group recognition results found with math result or preferred locale. Skipping.", buf, 2u);
  }

  v409 = MEMORY[0x1E695E0F0];
LABEL_45:

LABEL_46:

  return v409;
}

- (void)setCachedRecognitionResultsFromPostProcessing:(id)a3
{
  v4 = a3;
  if (self->_cachedRecognitionResultsFromPostProcessing != v4)
  {
    v12 = v4;
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8, v9);
    cachedRecognitionResultsFromPostProcessing = self->_cachedRecognitionResultsFromPostProcessing;
    self->_cachedRecognitionResultsFromPostProcessing = v10;

    v4 = v12;
  }
}

- (id)writeToFile
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = NSTemporaryDirectory();
  v9 = objc_msgSend_fileURLWithPath_(v3, v5, v4, v6, v7, v8);

  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v10, v11, @"dd-MM-yyyy-HH-mm-ss-SSS", v12, v13, v14);
  v20 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v15, v16, v17, v18, v19);
  v26 = objc_msgSend_UUIDString(v20, v21, v22, v23, v24, v25);
  v31 = objc_msgSend_substringToIndex_(v26, v27, 4, v28, v29, v30);

  v37 = objc_msgSend_now(MEMORY[0x1E695DF00], v32, v33, v34, v35, v36);
  v42 = objc_msgSend_stringFromDate_(v10, v38, v37, v39, v40, v41);

  v47 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"/session_result_%@-%@.dat", v44, v45, v46, v42, v31);
  v51 = objc_msgSend_writeToFileInFolder_basename_(self, v48, v9, v47, v49, v50);

  return v51;
}

- (id)writeToFileInFolder:(id)a3 basename:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v14 = objc_msgSend_absoluteString(v6, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_fileExistsAtPath_(v8, v15, v14, v16, v17, v18);

  if (v19)
  {
    v24 = 0;
LABEL_5:
    v28 = objc_msgSend_URLByAppendingPathComponent_(v6, v20, v7, v21, v22, v23);
    v31 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v29, self, 1, 0, v30);
    v54 = v24;
    objc_msgSend_writeToURL_options_error_(v31, v32, v28, 1, &v54, v33);
    v27 = v54;

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v34 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_msgSend_absoluteString(v28, v35, v36, v37, v38, v39);
      v46 = objc_msgSend_description(v27, v41, v42, v43, v44, v45);
      *buf = 138412546;
      v57 = v40;
      v58 = 2112;
      v59 = v46;
      _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_DEFAULT, "SessionResult writeToFile saving result at URL %@, error = %@", buf, 0x16u);
    }

    if (v27)
    {
      v52 = 0;
    }

    else
    {
      v52 = objc_msgSend_absoluteString(v28, v47, v48, v49, v50, v51);
    }

    goto LABEL_18;
  }

  v55 = 0;
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v8, v20, v6, 1, 0, &v55);
  v26 = v55;
  v27 = v26;
  if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
  {
    v24 = v26;
    goto LABEL_5;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v28 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v57 = v6;
    v58 = 2112;
    v59 = v27;
    _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "Session result unable to create folder at URL %@: Error %@", buf, 0x16u);
  }

  v52 = 0;
LABEL_18:

  return v52;
}

+ (id)loadFromFile:(id)a3
{
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, a3, v3, v4, v5);
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0, v10);

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v156 = a3;
  v4 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_encodedStrokeProviderVersion(self, v5, v6, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(v156, v11, v10, @"strokeProviderVersion", v12, v13);

  v19 = objc_msgSend_orderedStrokeIdentifiers(self, v14, v15, v16, v17, v18);
  objc_msgSend_encodeObject_forKey_(v156, v20, v19, @"orderedStrokeIdentifiers", v21, v22);

  v28 = objc_msgSend_sessionMode(self, v23, v24, v25, v26, v27);
  objc_msgSend_encodeInteger_forKey_(v156, v29, v28, @"sessionMode", v30, v31);
  v37 = objc_msgSend_locales(self, v32, v33, v34, v35, v36);
  objc_msgSend_encodeObject_forKey_(v156, v38, v37, @"locales", v39, v40);

  v46 = objc_msgSend_preferredLocales(self, v41, v42, v43, v44, v45);
  objc_msgSend_encodeObject_forKey_(v156, v47, v46, @"preferredLocales", v48, v49);

  v55 = objc_msgSend_declaredVariables(self, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(v156, v56, v55, @"declaredVariables", v57, v58);

  v64 = objc_msgSend_strokeClassificationResult(self, v59, v60, v61, v62, v63);
  objc_msgSend_encodeObject_forKey_(v156, v65, v64, @"strokeClassificationResult", v66, v67);

  v73 = objc_msgSend_strokeGroupingResult(self, v68, v69, v70, v71, v72);
  objc_msgSend_encodeObject_forKey_(v156, v74, v73, @"strokeGroupingResult", v75, v76);

  v82 = objc_msgSend_unprocessedStrokeGroupingResult(self, v77, v78, v79, v80, v81);
  objc_msgSend_encodeObject_forKey_(v156, v83, v82, @"unprocessedStrokeGroupingResult", v84, v85);

  v91 = objc_msgSend_tilingResult(self, v86, v87, v88, v89, v90);
  objc_msgSend_encodeObject_forKey_(v156, v92, v91, @"tilingResult", v93, v94);

  v100 = objc_msgSend_documentLayoutAnalysisResult(self, v95, v96, v97, v98, v99);
  objc_msgSend_encodeObject_forKey_(v156, v101, v100, @"documentLayoutAnalysisResult", v102, v103);

  v109 = objc_msgSend_recognitionResultsByGroupID(self, v104, v105, v106, v107, v108);
  objc_msgSend_encodeObject_forKey_(v156, v110, v109, @"recognitionResults", v111, v112);

  v118 = objc_msgSend_rawRecognitionResultsByGroupID(self, v113, v114, v115, v116, v117);
  objc_msgSend_encodeObject_forKey_(v156, v119, v118, @"rawRecognitionResults", v120, v121);

  v127 = objc_msgSend_textCorrectionResultsByGroupID(self, v122, v123, v124, v125, v126);
  objc_msgSend_encodeObject_forKey_(v156, v128, v127, @"inlineContinuousModeResults", v129, v130);

  v136 = objc_msgSend_cachedRecognitionResultsFromPostProcessing(self, v131, v132, v133, v134, v135);
  objc_msgSend_encodeObject_forKey_(v156, v137, v136, @"cachedRecognitionResultsFromPostProcessing", v138, v139);

  v143 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v140, &self->_generationDuration, 56, v141, v142);
  objc_msgSend_encodeObject_forKey_(v156, v144, v143, @"generationDuration", v145, v146);
  v152 = objc_msgSend_recognitionEnvironment(self, v147, v148, v149, v150, v151);
  objc_msgSend_encodeInteger_forKey_(v156, v153, v152, @"recognitionEnvironment", v154, v155);

  objc_autoreleasePoolPop(v4);
}

- (CHRecognitionSessionResult)initWithCoder:(id)a3
{
  v215[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v4 = objc_opt_class();
  v200 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v5, v4, @"strokeProviderVersion", v6, v7);
  v8 = MEMORY[0x1E695DFD8];
  v215[0] = objc_opt_class();
  v215[1] = objc_opt_class();
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v215, 2, v10, v11);
  v17 = objc_msgSend_setWithArray_(v8, v13, v12, v14, v15, v16);
  v199 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v18, v17, @"orderedStrokeIdentifiers", v19, v20);

  v190 = objc_msgSend_decodeIntegerForKey_(v3, v21, @"sessionMode", v22, v23, v24);
  v25 = MEMORY[0x1E695DFD8];
  v214[0] = objc_opt_class();
  v214[1] = objc_opt_class();
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v214, 2, v27, v28);
  v34 = objc_msgSend_setWithArray_(v25, v30, v29, v31, v32, v33);
  v38 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v35, v34, @"locales", v36, v37);

  v198 = objc_msgSend_effectiveLocalesFromLocales_(CHRecognitionSession, v39, v38, v40, v41, v42);

  v43 = MEMORY[0x1E695DFD8];
  v213[0] = objc_opt_class();
  v213[1] = objc_opt_class();
  v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v44, v213, 2, v45, v46);
  v52 = objc_msgSend_setWithArray_(v43, v48, v47, v49, v50, v51);
  v56 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v53, v52, @"preferredLocales", v54, v55);

  v197 = objc_msgSend_effectiveLocalesFromLocales_(CHRecognitionSession, v57, v56, v58, v59, v60);

  v61 = MEMORY[0x1E695DFD8];
  v212[0] = objc_opt_class();
  v212[1] = objc_opt_class();
  v65 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v62, v212, 2, v63, v64);
  v70 = objc_msgSend_setWithArray_(v61, v66, v65, v67, v68, v69);
  v194 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v71, v70, @"declaredVariables", v72, v73);

  v195 = objc_alloc_init(CHStrokeClutterFilter);
  v74 = objc_opt_class();
  v196 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v75, v74, @"strokeClassificationResult", v76, v77);
  v78 = MEMORY[0x1E695DFD8];
  v211[0] = objc_opt_class();
  v211[1] = objc_opt_class();
  v211[2] = objc_opt_class();
  v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v79, v211, 3, v80, v81);
  v87 = objc_msgSend_setWithArray_(v78, v83, v82, v84, v85, v86);
  v193 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v88, v87, @"strokeGroupingResult", v89, v90);

  v91 = MEMORY[0x1E695DFD8];
  v210[0] = objc_opt_class();
  v210[1] = objc_opt_class();
  v210[2] = objc_opt_class();
  v95 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v92, v210, 3, v93, v94);
  v100 = objc_msgSend_setWithArray_(v91, v96, v95, v97, v98, v99);
  v192 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v101, v100, @"unprocessedStrokeGroupingResult", v102, v103);

  v104 = objc_opt_class();
  v191 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v105, v104, @"tilingResult", v106, v107);
  v108 = objc_opt_class();
  v112 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v109, v108, @"documentLayoutAnalysisResult", v110, v111);
  v113 = MEMORY[0x1E695DFD8];
  v209[0] = objc_opt_class();
  v209[1] = objc_opt_class();
  v209[2] = objc_opt_class();
  v117 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v114, v209, 3, v115, v116);
  v122 = objc_msgSend_setWithArray_(v113, v118, v117, v119, v120, v121);
  v126 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v123, v122, @"recognitionResults", v124, v125);

  v127 = MEMORY[0x1E695DFD8];
  v208[0] = objc_opt_class();
  v208[1] = objc_opt_class();
  v208[2] = objc_opt_class();
  v131 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v128, v208, 3, v129, v130);
  v136 = objc_msgSend_setWithArray_(v127, v132, v131, v133, v134, v135);
  v140 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v137, v136, @"rawRecognitionResults", v138, v139);

  v141 = MEMORY[0x1E695DFD8];
  v207[0] = objc_opt_class();
  v207[1] = objc_opt_class();
  v207[2] = objc_opt_class();
  v207[3] = objc_opt_class();
  v145 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v142, v207, 4, v143, v144);
  v150 = objc_msgSend_setWithArray_(v141, v146, v145, v147, v148, v149);
  v154 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v151, v150, @"inlineContinuousModeResults", v152, v153);

  v155 = MEMORY[0x1E695DFD8];
  v206[0] = objc_opt_class();
  v206[1] = objc_opt_class();
  v206[2] = objc_opt_class();
  v159 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v156, v206, 3, v157, v158);
  v164 = objc_msgSend_setWithArray_(v155, v160, v159, v161, v162, v163);
  v168 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v165, v164, @"inlineContinuousModeResults", v166, v167);

  v169 = objc_opt_class();
  v173 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v170, v169, @"generationDuration", v171, v172);
  objc_msgSend_getBytes_length_(v173, v174, v204, 56, v175, v176);
  v181 = objc_msgSend_decodeIntegerForKey_(v3, v177, @"recognitionEnvironment", v178, v179, v180);
  v202[0] = v204[0];
  v202[1] = v204[1];
  v202[2] = v204[2];
  v203 = v205;
  AutoRefineResult_generationDuration_recognitionEnvironment = objc_msgSend_initWithStrokeProviderVersion_encodedStrokeProviderVersion_orderedStrokeIdentifiers_sessionMode_locales_preferredLocales_declaredVariables_clutterFilter_strokeClassificationResult_strokeGroupingResult_unprocessedStrokeGroupingResult_tilingResult_documentLayoutAnalysisResult_recognitionResults_rawRecognitionResults_inlineContinuousModeResults_autoRefineResults_lastAutoRefineResult_generationDuration_recognitionEnvironment_(self, v182, 0, v200, v199, v190, v198, v197, v194, v195, v196, v193, v192, v191, v112, v126, v140, v168, 0, 0, v202, v181);
  objc_msgSend_setCachedRecognitionResultsFromPostProcessing_(AutoRefineResult_generationDuration_recognitionEnvironment, v184, v154, v185, v186, v187);

  objc_autoreleasePoolPop(context);
  return AutoRefineResult_generationDuration_recognitionEnvironment;
}

- (BOOL)isEqualToSerializableRecognitionSessionResult:(id)a3
{
  v4 = a3;
  encodedStrokeProviderVersion = self->_encodedStrokeProviderVersion;
  v11 = objc_msgSend_encodedStrokeProviderVersion(v4, v6, v7, v8, v9, v10);
  v17 = v11;
  if (encodedStrokeProviderVersion == v11)
  {
  }

  else
  {
    v18 = objc_msgSend_encodedStrokeProviderVersion(v4, v12, v13, v14, v15, v16);
    isEqual = objc_msgSend_isEqual_(v18, v19, self->_encodedStrokeProviderVersion, v20, v21, v22);

    if (!isEqual)
    {
      goto LABEL_64;
    }
  }

  orderedStrokeIdentifiers = self->_orderedStrokeIdentifiers;
  v30 = objc_msgSend_orderedStrokeIdentifiers(v4, v24, v25, v26, v27, v28);
  v36 = v30;
  if (orderedStrokeIdentifiers == v30)
  {
  }

  else
  {
    v37 = objc_msgSend_orderedStrokeIdentifiers(v4, v31, v32, v33, v34, v35);
    v42 = objc_msgSend_isEqual_(v37, v38, self->_orderedStrokeIdentifiers, v39, v40, v41);

    if (!v42)
    {
      goto LABEL_64;
    }
  }

  locales = self->_locales;
  v49 = objc_msgSend_locales(v4, v43, v44, v45, v46, v47);
  v55 = v49;
  if (locales == v49)
  {
  }

  else
  {
    v56 = objc_msgSend_locales(v4, v50, v51, v52, v53, v54);
    v61 = objc_msgSend_isEqual_(v56, v57, self->_locales, v58, v59, v60);

    if (!v61)
    {
      goto LABEL_64;
    }
  }

  preferredLocales = self->_preferredLocales;
  v68 = objc_msgSend_preferredLocales(v4, v62, v63, v64, v65, v66);
  v74 = v68;
  if (preferredLocales == v68)
  {
  }

  else
  {
    v75 = objc_msgSend_preferredLocales(v4, v69, v70, v71, v72, v73);
    v80 = objc_msgSend_isEqual_(v75, v76, self->_preferredLocales, v77, v78, v79);

    if (!v80)
    {
      goto LABEL_64;
    }
  }

  strokeClassificationResult = self->_strokeClassificationResult;
  v87 = objc_msgSend_strokeClassificationResult(v4, v81, v82, v83, v84, v85);
  v93 = v87;
  if (strokeClassificationResult == v87)
  {
  }

  else
  {
    v94 = objc_msgSend_strokeClassificationResult(v4, v88, v89, v90, v91, v92);
    isEquivalentToStrokeClassificationResult = objc_msgSend_isEquivalentToStrokeClassificationResult_(v94, v95, self->_strokeClassificationResult, v96, v97, v98);

    if (!isEquivalentToStrokeClassificationResult)
    {
      goto LABEL_64;
    }
  }

  strokeGroupingResult = self->_strokeGroupingResult;
  v106 = objc_msgSend_strokeGroupingResult(v4, v100, v101, v102, v103, v104);
  v112 = v106;
  if (strokeGroupingResult == v106)
  {
  }

  else
  {
    v113 = objc_msgSend_strokeGroupingResult(v4, v107, v108, v109, v110, v111);
    v118 = objc_msgSend_isEqual_(v113, v114, self->_strokeGroupingResult, v115, v116, v117);

    if (!v118)
    {
      goto LABEL_64;
    }
  }

  unprocessedStrokeGroupingResult = self->_unprocessedStrokeGroupingResult;
  v125 = objc_msgSend_unprocessedStrokeGroupingResult(v4, v119, v120, v121, v122, v123);
  v131 = v125;
  if (unprocessedStrokeGroupingResult == v125)
  {
  }

  else
  {
    v132 = objc_msgSend_unprocessedStrokeGroupingResult(v4, v126, v127, v128, v129, v130);
    v137 = objc_msgSend_isEqual_(v132, v133, self->_unprocessedStrokeGroupingResult, v134, v135, v136);

    if (!v137)
    {
      goto LABEL_64;
    }
  }

  tilingResult = self->_tilingResult;
  v144 = objc_msgSend_tilingResult(v4, v138, v139, v140, v141, v142);
  v150 = v144;
  if (tilingResult == v144)
  {
  }

  else
  {
    v151 = objc_msgSend_tilingResult(v4, v145, v146, v147, v148, v149);
    v156 = objc_msgSend_isEqual_(v151, v152, self->_tilingResult, v153, v154, v155);

    if (!v156)
    {
      goto LABEL_64;
    }
  }

  documentLayoutAnalysisResult = self->_documentLayoutAnalysisResult;
  v163 = objc_msgSend_documentLayoutAnalysisResult(v4, v157, v158, v159, v160, v161);
  v169 = v163;
  if (documentLayoutAnalysisResult == v163)
  {
  }

  else
  {
    v170 = objc_msgSend_documentLayoutAnalysisResult(v4, v164, v165, v166, v167, v168);
    v175 = objc_msgSend_isEqual_(v170, v171, self->_documentLayoutAnalysisResult, v172, v173, v174);

    if (!v175)
    {
      goto LABEL_64;
    }
  }

  recognitionResultsByGroupID = self->_recognitionResultsByGroupID;
  v182 = objc_msgSend_recognitionResultsByGroupID(v4, v176, v177, v178, v179, v180);
  v188 = v182;
  if (recognitionResultsByGroupID == v182)
  {
  }

  else
  {
    v189 = objc_msgSend_recognitionResultsByGroupID(v4, v183, v184, v185, v186, v187);
    v194 = objc_msgSend_isEqual_(v189, v190, self->_recognitionResultsByGroupID, v191, v192, v193);

    if (!v194)
    {
      goto LABEL_64;
    }
  }

  rawRecognitionResultsByGroupID = self->_rawRecognitionResultsByGroupID;
  v201 = objc_msgSend_rawRecognitionResultsByGroupID(v4, v195, v196, v197, v198, v199);
  v207 = v201;
  if (rawRecognitionResultsByGroupID == v201)
  {
  }

  else
  {
    v208 = objc_msgSend_rawRecognitionResultsByGroupID(v4, v202, v203, v204, v205, v206);
    v213 = objc_msgSend_isEqual_(v208, v209, self->_rawRecognitionResultsByGroupID, v210, v211, v212);

    if (!v213)
    {
      goto LABEL_64;
    }
  }

  textCorrectionResultsByGroupID = self->_textCorrectionResultsByGroupID;
  v220 = objc_msgSend_textCorrectionResultsByGroupID(v4, v214, v215, v216, v217, v218);
  v226 = v220;
  if (textCorrectionResultsByGroupID == v220)
  {
  }

  else
  {
    v227 = objc_msgSend_textCorrectionResultsByGroupID(v4, v221, v222, v223, v224, v225);
    v232 = objc_msgSend_isEqual_(v227, v228, self->_textCorrectionResultsByGroupID, v229, v230, v231);

    if (!v232)
    {
      goto LABEL_64;
    }
  }

  groupingDuration = self->_generationDuration.groupingDuration;
  if (v4)
  {
    objc_msgSend_generationDuration(v4, v233, v234, v235, v236, v237);
    if (groupingDuration != v278)
    {
      goto LABEL_64;
    }

    recognitionDuration = self->_generationDuration.recognitionDuration;
    objc_msgSend_generationDuration(v4, v239, v240, v241, v242, v243);
    if (recognitionDuration != v277)
    {
      goto LABEL_64;
    }

    strokeClassificationDuration = self->_generationDuration.strokeClassificationDuration;
    objc_msgSend_generationDuration(v4, v245, v246, v247, v248, v249);
    if (strokeClassificationDuration != v276)
    {
      goto LABEL_64;
    }

    strokeClutterFilteringDuration = self->_generationDuration.strokeClutterFilteringDuration;
    objc_msgSend_generationDuration(v4, v251, v252, v253, v254, v255);
    if (strokeClutterFilteringDuration != v275)
    {
      goto LABEL_64;
    }

    totalDuration = self->_generationDuration.totalDuration;
    objc_msgSend_generationDuration(v4, v257, v258, v259, v260, v261);
    if (totalDuration != v274)
    {
      goto LABEL_64;
    }

    principalLinesDuration = self->_generationDuration.principalLinesDuration;
    objc_msgSend_generationDuration(v4, v263, v264, v265, v266, v267);
    v269 = v273;
  }

  else
  {
    if (groupingDuration != 0.0 || self->_generationDuration.recognitionDuration != 0.0 || self->_generationDuration.strokeClassificationDuration != 0.0 || self->_generationDuration.strokeClutterFilteringDuration != 0.0 || self->_generationDuration.totalDuration != 0.0)
    {
      goto LABEL_64;
    }

    principalLinesDuration = self->_generationDuration.principalLinesDuration;
    v269 = 0.0;
  }

  if (principalLinesDuration != v269)
  {
LABEL_64:
    v271 = 0;
    goto LABEL_65;
  }

  recognitionEnvironment = self->_recognitionEnvironment;
  v271 = recognitionEnvironment == objc_msgSend_recognitionEnvironment(v4, v233, v234, v235, v236, v237);
LABEL_65:

  return v271;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v10 = v5;
    if (self)
    {
      if (self == v5)
      {
        LOBYTE(self) = 1;
      }

      else if (objc_msgSend_isEqualToSerializableRecognitionSessionResult_(self, v6, v5, v7, v8, v9))
      {
        clutterFilter = self->_clutterFilter;
        v22 = objc_msgSend_clutterFilter(v10, v11, v12, v13, v14, v15);
        if (clutterFilter == v22)
        {
          LOBYTE(self) = 1;
        }

        else if (self->_clutterFilter)
        {
          v23 = objc_msgSend_clutterFilter(v10, v17, v18, v19, v20, v21);
          LOBYTE(self) = objc_msgSend_isEqual_(v23, v24, self->_clutterFilter, v25, v26, v27);
        }

        else
        {
          LOBYTE(self) = 0;
        }
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (int64_t)completeness
{
  v78 = *MEMORY[0x1E69E9840];
  if (!self->__shouldUseCachedCompleteness)
  {
    v7 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self->_strokeClassificationResult, a2, v2, v3, v4, v5);
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = objc_msgSend_allKeys(self->_recognitionResultsByGroupID, v8, v9, v10, v11, v12);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v73, v77, 16, v14);
    if (v19)
    {
      v20 = *v74;
      while (2)
      {
        v21 = 0;
        do
        {
          if (*v74 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = objc_msgSend_objectForKey_(self->_recognitionResultsByGroupID, v15, *(*(&v73 + 1) + 8 * v21), v16, v17, v18);
          v28 = objc_msgSend_inputStrokeIdentifiers(v22, v23, v24, v25, v26, v27);
          v34 = objc_msgSend_firstObject(v28, v29, v30, v31, v32, v33);
          v39 = objc_msgSend_objectForKey_(v7, v35, v34, v36, v37, v38);
          v45 = objc_msgSend_integerValue(v39, v40, v41, v42, v43, v44);

          v46 = objc_opt_class();
          if (objc_msgSend_isStrokeClassificationTextOrMath_(v46, v47, v45, v48, v49, v50))
          {
            v56 = objc_msgSend_processing(v22, v51, v52, v53, v54, v55);
            if ((objc_msgSend_processing(v22, v57, v58, v59, v60, v61) & 2) != 0)
            {
              hasPrincipalLines = 1;
            }

            else
            {
              hasPrincipalLines = objc_msgSend_hasPrincipalLines(v22, v62, v63, v64, v65, v66);
            }

            v68 = objc_msgSend_preferredLocale(v22, v62, v63, v64, v65, v66);
            if ((v56 & 1) == 0)
            {

              goto LABEL_22;
            }

            v69 = v68 ? hasPrincipalLines : 1;

            if (!v69)
            {

              v70 = 1;
              goto LABEL_21;
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v73, v77, 16, v18);
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v70 = 2;
LABEL_21:
    self->_completeness = v70;
LABEL_22:
    self->__shouldUseCachedCompleteness = 1;
  }

  return self->_completeness;
}

- ($29727DC6989B69F22950FCD998EA20D4)generationDuration
{
  v3 = *&self[3].var5;
  *&retstr->var0 = *&self[3].var3;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[4].var0;
  retstr->var6 = self[4].var2;
  return self;
}

@end