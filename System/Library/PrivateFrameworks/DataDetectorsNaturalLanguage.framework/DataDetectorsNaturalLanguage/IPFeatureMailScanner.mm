@interface IPFeatureMailScanner
- (BOOL)isBannedSender:(id)a3;
- (double)confidenceForEvent:(id)a3 baseConfidence:(double)a4;
- (id)emailParticipantNames;
- (id)featuresForTextString:(id)a3 inMessageUnit:(id)a4;
- (void)doSynchronousScanWithCompletionHandler:(id)a3;
- (void)enrichEvents:(id)a3 messageUnits:(id)a4 dateInSubject:(id)a5 dataFeatures:(id)a6;
- (void)processScanOfMessageUnit:(id)a3;
- (void)resetScanState;
- (void)scanEventsInMessageUnits:(id)a3 synchronously:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation IPFeatureMailScanner

- (id)featuresForTextString:(id)a3 inMessageUnit:(id)a4
{
  v75[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 originalMessage];
  v7 = [v6 subject];

  v8 = [objc_opt_class() dataDetectorsFeatureExtractor];
  v75[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
  v10 = [(IPFeatureScanner *)self featuresForTextString:v7 inMessageUnit:v5 extractors:v9 context:0];
  [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:v10];

  v73 = @"IPFeatureExtractorContextDataDetectorsFeatures";
  v11 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
  v74 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];

  v13 = [objc_opt_class() sentenceFeatureExtractor];
  v72 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
  v55 = v7;
  v53 = v12;
  v54 = [(IPFeatureScanner *)self featuresForTextString:v7 inMessageUnit:v5 extractors:v14 context:v12];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v15 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
  v16 = [v15 countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v61;
    v19 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v61 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = [*(*(&v60 + 1) + 8 * i) contextDictionary];
        [v21 setObject:v19 forKeyedSubscript:@"extractedInSubject"];
      }

      v17 = [v15 countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v17);
  }

  v22 = [v5 text];
  v23 = [objc_opt_class() dataDetectorsFeatureExtractor];
  v70 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v25 = [(IPFeatureScanner *)self featuresForTextString:v22 inMessageUnit:v5 extractors:v24 context:0];

  v68[1] = @"IPFeatureExtractorContextDataDetectorsFeatures";
  v69[0] = v54;
  v68[0] = @"IPFeatureExtractorPreviousFeatureSentences";
  v26 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v25];
  v69[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];

  v28 = [v5 text];
  v29 = [objc_opt_class() sentenceFeatureExtractor];
  v67 = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
  v51 = v27;
  v31 = [(IPFeatureScanner *)self featuresForTextString:v28 inMessageUnit:v5 extractors:v30 context:v27];

  v49 = v31;
  v32 = [v31 mutableCopy];
  v33 = v32;
  if (v25)
  {
    [v32 addObjectsFromArray:v25];
  }

  v50 = v33;
  v52 = v25;
  v34 = [objc_opt_class() keywordFeatureExtractor];
  v66 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
  v36 = [(IPFeatureScanner *)self featuresForTextString:v55 inMessageUnit:v5 extractors:v35 context:0];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v57;
    v41 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v43 = [*(*(&v56 + 1) + 8 * j) contextDictionary];
        [v43 setObject:v41 forKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
      }

      v39 = [v37 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v39);
  }

  v44 = [v5 lowercaseTextTruncated];
  v64 = v34;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v46 = [(IPFeatureScanner *)self featuresForTextString:v44 inMessageUnit:v5 extractors:v45 context:0];

  if (v37)
  {
    [v50 addObjectsFromArray:v37];
  }

  if (v46)
  {
    [v50 addObjectsFromArray:v46];
  }

  v47 = *MEMORY[0x277D85DE8];

  return v50;
}

- (void)scanEventsInMessageUnits:(id)a3 synchronously:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  [(IPFeatureMailScanner *)v10 resetScanState];
  objc_sync_exit(v10);

  [(IPFeatureScanner *)v10 setBodyMessageUnits:v8];
  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v11 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v11 = _IPLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_2485E4000, v11, OS_LOG_TYPE_INFO, "Start with message units: %@ #FeatureManager", &buf, 0xCu);
    }
  }

  if ([v8 count])
  {
    if ([objc_opt_class() isNaturalLanguageEventDetectionEnabled])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy_;
      v24 = __Block_byref_object_dispose_;
      v12 = [v8 firstObject];
      v25 = [v12 originalMessage];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __81__IPFeatureMailScanner_scanEventsInMessageUnits_synchronously_completionHandler___block_invoke;
      v18[3] = &unk_278F22DD0;
      v18[4] = v10;
      v19 = v9;
      p_buf = &buf;
      v13 = MEMORY[0x24C1D4200](v18);
      v14 = v13;
      if (v6)
      {
        (*(v13 + 16))(v13);
      }

      else
      {
        v16 = dispatch_get_global_queue(17, 0);
        dispatch_async(v16, v14);
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      [(IPFeatureScanner *)v10 setResultType:-1];
      (*(v9 + 2))(v9, 0, [(IPFeatureScanner *)v10 resultType]);
    }
  }

  else
  {
    [(IPFeatureScanner *)v10 setResultType:0];
    v15 = [(IPFeatureScanner *)v10 resultType];
    (*(v9 + 2))(v9, MEMORY[0x277CBEBF8], v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __81__IPFeatureMailScanner_scanEventsInMessageUnits_synchronously_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) doSynchronousScanWithCompletionHandler:*(a1 + 40)];
  objc_sync_exit(v2);

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)doSynchronousScanWithCompletionHandler:(id)a3
{
  v172[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() dataDetectorsFeatureExtractor];
  v172[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:1];

  v7 = [(IPFeatureScanner *)self bodyMessageUnits];
  v8 = [v7 firstObject];

  v9 = [v8 originalMessage];
  v10 = [v9 subject];

  v11 = [v8 originalMessage];
  v12 = [v11 sender];

  v13 = [v8 originalMessage];
  v14 = [v13 dateSent];

  v15 = [(IPFeatureScanner *)self subjectEventVocabularyRejectionKeyword:v10];
  if (!v15)
  {
    if ([(IPFeatureMailScanner *)self isBannedSender:v12])
    {
      [(IPFeatureScanner *)self setResultType:-40];
      v18 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v18 = _IPLogHandle;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v18, OS_LOG_TYPE_INFO, "Skipping message unit because sender is banned #FeatureManager", buf, 2u);
      }

      if (IPDebuggingModeEnabled_once != -1)
      {
        [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
      }

      if (IPDebuggingModeEnabled_sEnabled == 1)
      {
        v19 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging();
          v19 = _IPLogHandle;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = v19;
          v21 = [v12 email];
          *buf = 138412290;
          v171 = v21;
          _os_log_impl(&dword_2485E4000, v20, OS_LOG_TYPE_INFO, "Banned sender: %@ #FeatureManager", buf, 0xCu);

          v15 = 0;
        }
      }

      goto LABEL_25;
    }

    v142 = v4;
    [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:MEMORY[0x277CBEBF8]];
    v136 = [(IPFeatureScanner *)self subjectEventVocabularyIgnoreDateKeyword:v10];
    if (!v136)
    {
      v24 = [(IPFeatureScanner *)self featuresForTextString:v10 inMessageUnit:v8 extractors:v6 context:0];
      [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:v24];
    }

    v141 = v6;
    [(IPFeatureMailScanner *)self setDateInSubjectFeatureData:0];
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v25 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
    v26 = [v25 reverseObjectEnumerator];

    v27 = [v26 countByEnumeratingWithState:&v161 objects:v169 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v162;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v162 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v161 + 1) + 8 * i);
          if (![v31 type] || objc_msgSend(v31, "type") == 1)
          {
            [(IPFeatureMailScanner *)self setDateInSubjectFeatureData:v31];
            [(IPFeatureMailScanner *)self setSubjectContainsDate:1];
            goto LABEL_40;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v161 objects:v169 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:
    v140 = v8;

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v32 = [(IPFeatureScanner *)self bodyMessageUnits];
    v33 = [v32 countByEnumeratingWithState:&v157 objects:v168 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v158;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v158 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v157 + 1) + 8 * j);
          v38 = objc_autoreleasePoolPush();
          [(IPFeatureMailScanner *)self processScanOfMessageUnit:v37];
          objc_autoreleasePoolPop(v38);
        }

        v34 = [v32 countByEnumeratingWithState:&v157 objects:v168 count:16];
      }

      while (v34);
    }

    v39 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v39 = _IPLogHandle;
    }

    v40 = v39;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = [(IPFeatureScanner *)self detectedEvents];
      v42 = [v41 count];
      *buf = 134217984;
      v171 = v42;
      _os_log_impl(&dword_2485E4000, v40, OS_LOG_TYPE_INFO, "%lu detected events #FeatureManager", buf, 0xCu);
    }

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v43 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v43 = _IPLogHandle;
      }

      v44 = v43;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = [(IPFeatureScanner *)self detectedEvents];
        v46 = [v45 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v171 = v46;
        _os_log_impl(&dword_2485E4000, v44, OS_LOG_TYPE_INFO, "Detected Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    v47 = [(IPFeatureScanner *)self detectedEvents];
    v48 = [v47 count];

    if (v48 >= 0xA)
    {
      v49 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v49 = _IPLogHandle;
      }

      v50 = v49;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = [(IPFeatureScanner *)self detectedEvents];
        v52 = [v51 count];
        *buf = 134217984;
        v171 = v52;
        _os_log_impl(&dword_2485E4000, v50, OS_LOG_TYPE_INFO, "Too many UNSTITCHED dates. (%lu)  Skipping. #FeatureManager", buf, 0xCu);
      }

      [(IPFeatureScanner *)self setResultType:-12];
      v53 = [(IPFeatureScanner *)self detectedEvents];
      [v53 removeAllObjects];
    }

    v54 = [(IPFeatureScanner *)self detectedEvents];
    v55 = [(IPFeatureScanner *)self stitchedEventsFromEvents:v54];
    [(IPFeatureScanner *)self setStitchedEvents:v55];

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v56 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v56 = _IPLogHandle;
      }

      v57 = v56;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = [(IPFeatureScanner *)self stitchedEvents];
        v59 = [v58 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v171 = v59;
        _os_log_impl(&dword_2485E4000, v57, OS_LOG_TYPE_INFO, "Stitched Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    v60 = [(IPFeatureScanner *)self stitchedEvents];
    v61 = [v60 count];

    if (v61 >= 3)
    {
      v62 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v62 = _IPLogHandle;
      }

      v63 = v62;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = [(IPFeatureScanner *)self stitchedEvents];
        v65 = [v64 count];
        *buf = 134217984;
        v171 = v65;
        _os_log_impl(&dword_2485E4000, v63, OS_LOG_TYPE_INFO, "Too many STITCHED dates. (%lu)  Skipping. #FeatureManager", buf, 0xCu);
      }

      [(IPFeatureScanner *)self setResultType:-12];
      [(IPFeatureScanner *)self setStitchedEvents:MEMORY[0x277CBEBF8]];
    }

    if ([(IPFeatureMailScanner *)self subjectContainsDate])
    {
      v66 = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];
      v67 = [v66 value];
    }

    else
    {
      v67 = 0;
    }

    v68 = [(IPFeatureScanner *)self stitchedEvents];
    v69 = [(IPFeatureScanner *)self bodyMessageUnits];
    v70 = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
    [(IPFeatureMailScanner *)self enrichEvents:v68 messageUnits:v69 dateInSubject:v67 dataFeatures:v70];

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v71 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v71 = _IPLogHandle;
      }

      v72 = v71;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = [(IPFeatureScanner *)self stitchedEvents];
        v74 = [v73 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v171 = v74;
        _os_log_impl(&dword_2485E4000, v72, OS_LOG_TYPE_INFO, "Enriched Events based on Event Type: %@ #FeatureManager", buf, 0xCu);
      }
    }

    v135 = v67;
    v137 = v14;
    v138 = v12;
    v139 = v10;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v144 = self;
    v75 = [(IPFeatureScanner *)self stitchedEvents];
    v76 = [v75 countByEnumeratingWithState:&v153 objects:v167 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = 0;
      v79 = *v154;
      v80 = 1;
      v143 = v75;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v154 != v79)
          {
            objc_enumerationMutation(v75);
          }

          v82 = *(*(&v153 + 1) + 8 * k);
          v83 = [v82 location];

          if (!v83)
          {
            if (v80)
            {
              v151 = 0u;
              v152 = 0u;
              v149 = 0u;
              v150 = 0u;
              v84 = [(IPFeatureMailScanner *)v144 subjectDataDetectorsFeatures];
              v85 = [v84 reverseObjectEnumerator];

              v86 = [v85 countByEnumeratingWithState:&v149 objects:v166 count:16];
              if (v86)
              {
                v87 = v86;
                v88 = *v150;
                while (2)
                {
                  for (m = 0; m != v87; ++m)
                  {
                    if (*v150 != v88)
                    {
                      objc_enumerationMutation(v85);
                    }

                    v90 = *(*(&v149 + 1) + 8 * m);
                    if ([v90 type] == 3 || objc_msgSend(v90, "type") == 7 || objc_msgSend(v90, "type") == 12 || objc_msgSend(v90, "type") == 13)
                    {
                      v91 = [(IPFeatureScanner *)v144 cleanedStringForFeatureData:v90];

                      v78 = v91;
                      goto LABEL_110;
                    }
                  }

                  v87 = [v85 countByEnumeratingWithState:&v149 objects:v166 count:16];
                  if (v87)
                  {
                    continue;
                  }

                  break;
                }

LABEL_110:
                v75 = v143;
              }
            }

            [v82 setLocation:v78];
            v80 = 0;
          }
        }

        v77 = [v75 countByEnumeratingWithState:&v153 objects:v167 count:16];
      }

      while (v77);
    }

    else
    {
      v78 = 0;
    }

    v133 = v78;

    v92 = [(IPFeatureScanner *)v144 stitchedEvents];
    [(IPFeatureScanner *)v144 adjustTimeForEvents:v92];

    v93 = [(IPFeatureScanner *)v144 stitchedEvents];
    [(IPFeatureScanner *)v144 confidenceForEvents:v93];

    v94 = [(IPFeatureScanner *)v144 stitchedEvents];
    v14 = v137;
    v95 = [(IPFeatureScanner *)v144 filteredEventsForDetectedEvents:v94 referenceDate:v137];
    [(IPFeatureScanner *)v144 setFilteredDetectedEvents:v95];

    v96 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v96 = _IPLogHandle;
    }

    v97 = v96;
    v12 = v138;
    v10 = v139;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      v98 = [(IPFeatureScanner *)v144 filteredDetectedEvents];
      v99 = [v98 count];
      *buf = 134217984;
      v171 = v99;
      _os_log_impl(&dword_2485E4000, v97, OS_LOG_TYPE_INFO, "%lu detected events after filtering #FeatureManager", buf, 0xCu);
    }

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v100 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v100 = _IPLogHandle;
      }

      v101 = v100;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v102 = [(IPFeatureScanner *)v144 filteredDetectedEvents];
        v103 = [v102 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v171 = v103;
        _os_log_impl(&dword_2485E4000, v101, OS_LOG_TYPE_INFO, "Filtered Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    v104 = [(IPFeatureScanner *)v144 filteredDetectedEvents];
    [(IPFeatureScanner *)v144 normalizedEvents:v104];

    v105 = [(IPFeatureScanner *)v144 extractedNotesStrings];
    v106 = [(IPFeatureMailScanner *)v144 subjectDataDetectorsFeatures];
    v107 = [(IPFeatureScanner *)v144 notesStringsFromDataFeatures:v106];
    [v105 addObjectsFromArray:v107];

    v108 = [(IPFeatureScanner *)v144 extractedNotesStrings];
    v109 = [v108 count];

    if (v109)
    {
      v110 = [(IPFeatureScanner *)v144 extractedNotesStrings];
      v111 = [v110 allObjects];
      v112 = [v111 _pas_componentsJoinedByString:@"\n"];

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v113 = [(IPFeatureScanner *)v144 filteredDetectedEvents];
      v114 = [v113 countByEnumeratingWithState:&v145 objects:v165 count:16];
      if (v114)
      {
        v115 = v114;
        v116 = *v146;
        do
        {
          for (n = 0; n != v115; ++n)
          {
            if (*v146 != v116)
            {
              objc_enumerationMutation(v113);
            }

            [*(*(&v145 + 1) + 8 * n) setNotes:v112];
          }

          v115 = [v113 countByEnumeratingWithState:&v145 objects:v165 count:16];
        }

        while (v115);
      }
    }

    v118 = [(IPFeatureScanner *)v144 filteredDetectedEvents];
    v119 = [v118 count];

    if (v119 == 1)
    {
      [(IPFeatureScanner *)v144 setResultType:1];
      v120 = [(IPFeatureScanner *)v144 filteredDetectedEvents];
      v4 = v142;
      (v142)[2](v142, v120, [(IPFeatureScanner *)v144 resultType]);

      v8 = v140;
      v6 = v141;
LABEL_140:
      v15 = 0;
LABEL_154:

      goto LABEL_26;
    }

    v121 = [(IPFeatureScanner *)v144 filteredDetectedEvents];
    v122 = [v121 count];

    v6 = v141;
    v4 = v142;
    v8 = v140;
    if (v122 < 3)
    {
      v127 = [(IPFeatureScanner *)v144 filteredDetectedEvents];
      v128 = [v127 count];

      if (v128 < 2)
      {
        v132 = [(IPFeatureScanner *)v144 resultType];
        v142[2](v142, MEMORY[0x277CBEBF8], v132);
        goto LABEL_140;
      }

      v129 = _IPLogHandle;
      v15 = 0;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v129 = _IPLogHandle;
      }

      v130 = v129;
      if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v130, OS_LOG_TYPE_INFO, "Bailing out because more than 1 EVENT are detected #FeatureManager", buf, 2u);
      }

      v125 = v144;
      v126 = -68;
    }

    else
    {
      v123 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v123 = _IPLogHandle;
      }

      v124 = v123;
      v15 = 0;
      if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v124, OS_LOG_TYPE_INFO, "Bailing out because more than 3 EVENTS are detected #FeatureManager", buf, 2u);
      }

      v125 = v144;
      v126 = 2;
    }

    [(IPFeatureScanner *)v125 setResultType:v126];
    v131 = [(IPFeatureScanner *)v144 resultType];
    v142[2](v142, MEMORY[0x277CBEBF8], v131);
    goto LABEL_154;
  }

  [(IPFeatureScanner *)self setResultType:-50];
  v16 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging();
    v16 = _IPLogHandle;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2485E4000, v16, OS_LOG_TYPE_INFO, "Found REJECTION keyword in SUBJECT #FeatureManager", buf, 2u);
  }

  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v17 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v17 = _IPLogHandle;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v171 = v15;
      _os_log_impl(&dword_2485E4000, v17, OS_LOG_TYPE_INFO, "Subject rejection keyword: %@ #FeatureManager", buf, 0xCu);
    }
  }

LABEL_25:
  v22 = [(IPFeatureScanner *)self resultType];
  v4[2](v4, MEMORY[0x277CBEBF8], v22);
LABEL_26:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)processScanOfMessageUnit:(id)a3
{
  v130[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() dataDetectorsFeatureExtractor];
  v130[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:1];

  v7 = [v4 originalMessage];
  v8 = [v7 lowercaseSubject];

  v9 = [v4 originalMessage];
  v10 = [v9 dateSent];

  if ([(IPFeatureScanner *)self shouldReplaceSendDateWithCurrentDate])
  {
    v11 = [MEMORY[0x277CBEAA8] date];

    v10 = v11;
  }

  v12 = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];

  if (v12)
  {
    v128 = @"IPFeatureExtractorDetectedDateInSubjectFeatureData";
    v13 = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];
    v129 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 text];
  v100 = v6;
  v16 = [(IPFeatureScanner *)self featuresForTextString:v15 inMessageUnit:v4 extractors:v6 context:v14];

  if (-[IPFeatureScanner countOfFeaturesContainDateInTheFuture:messageUnitSentDate:](self, "countOfFeaturesContainDateInTheFuture:messageUnitSentDate:", v16, v10) || (-[IPFeatureMailScanner subjectDataDetectorsFeatures](self, "subjectDataDetectorsFeatures"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, !v19))
  {
    v17 = [v16 copy];
  }

  else
  {
    v20 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
    v17 = [v20 mutableCopy];

    [v17 addObjectsFromArray:v16];
  }

  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v21 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v21 = _IPLogHandle;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v127 = v17;
      _os_log_impl(&dword_2485E4000, v21, OS_LOG_TYPE_INFO, "Data Detectors Features:\n%@ #FeatureManager", buf, 0xCu);
    }
  }

  v22 = [(IPFeatureScanner *)self countOfFeaturesContainDateInTheFuture:v17 messageUnitSentDate:v10];
  if (!v22)
  {
    v25 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v25 = _IPLogHandle;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v25, OS_LOG_TYPE_INFO, "No date in the future detected. Skipping. #FeatureManager", buf, 2u);
    }

    [(IPFeatureScanner *)self setResultType:-10];
    goto LABEL_29;
  }

  v23 = v22;
  if (v22 < 0xA)
  {
    v99 = v16;
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v10 sinceDate:-10800.0];
    if ([(IPFeatureScanner *)self dataFeatures:v17 containDateOlderThan:v27 preciseTimeOnly:1])
    {
      v28 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v28 = _IPLogHandle;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v28, OS_LOG_TYPE_INFO, "Contains a date in the past with precise time. Skipping. #FeatureManager", buf, 2u);
      }

      [(IPFeatureScanner *)self setResultType:-110];
    }

    else
    {
      v29 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v10 sinceDate:-31536000.0];

      if (![(IPFeatureScanner *)self dataFeatures:v17 containDateOlderThan:v29 preciseTimeOnly:0])
      {
        v93 = v29;
        v94 = v14;
        v96 = v17;
        v124 = @"IPFeatureExtractorContextDataDetectorsFeatures";
        v31 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
        v125 = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];

        v33 = [(IPFeatureScanner *)self bodyMessageUnits];
        v34 = [v33 firstObject];
        v35 = [objc_opt_class() sentenceFeatureExtractor];
        v123 = v35;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
        v97 = v8;
        v92 = v32;
        v98 = [(IPFeatureScanner *)self featuresForTextString:v8 inMessageUnit:v34 extractors:v36 context:v32];

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v37 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
        v38 = [v37 countByEnumeratingWithState:&v109 objects:v122 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v110;
          v41 = MEMORY[0x277CBEC38];
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v110 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v43 = [*(*(&v109 + 1) + 8 * i) contextDictionary];
              [v43 setObject:v41 forKeyedSubscript:@"extractedInSubject"];
            }

            v39 = [v37 countByEnumeratingWithState:&v109 objects:v122 count:16];
          }

          while (v39);
        }

        v121[0] = v98;
        v120[0] = @"IPFeatureExtractorPreviousFeatureSentences";
        v120[1] = @"IPFeatureExtractorContextDataDetectorsFeatures";
        v44 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v99];
        v121[1] = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];

        v46 = [v4 text];
        v47 = [objc_opt_class() sentenceFeatureExtractor];
        v119 = v47;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
        v91 = v45;
        v49 = [(IPFeatureScanner *)self featuresForTextString:v46 inMessageUnit:v4 extractors:v48 context:v45];

        v95 = v49;
        if ([v49 count])
        {
          v50 = MEMORY[0x277CBEC38];
          v90 = [objc_opt_class() keywordFeatureExtractor];
          v118 = v90;
          v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
          v116 = @"IPFeatureExtractorContextSubject";
          v117 = v50;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v53 = [(IPFeatureScanner *)self featuresForTextString:v97 inMessageUnit:v4 extractors:v51 context:v52];

          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v54 = v53;
          v55 = [v54 countByEnumeratingWithState:&v105 objects:v115 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v106;
            v58 = MEMORY[0x277CBEC38];
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v106 != v57)
                {
                  objc_enumerationMutation(v54);
                }

                v60 = [*(*(&v105 + 1) + 8 * j) contextDictionary];
                [v60 setObject:v58 forKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
              }

              v56 = [v54 countByEnumeratingWithState:&v105 objects:v115 count:16];
            }

            while (v56);
          }

          v61 = [v4 lowercaseTextTruncated];
          v114 = v90;
          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
          v63 = [(IPFeatureScanner *)self featuresForTextString:v61 inMessageUnit:v4 extractors:v62 context:0];

          v64 = [v95 mutableCopy];
          if (v96)
          {
            v65 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v96];
            [v64 addObjectsFromArray:v65];
          }

          if (v54)
          {
            [v64 addObjectsFromArray:v54];
          }

          if (v63)
          {
            [v64 addObjectsFromArray:v63];
          }

          [v4 setFeatures:v64];
          v8 = v97;
          if (v96)
          {
            v66 = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
            [v66 addObjectsFromArray:v96];
          }

          if (v54)
          {
            v67 = [(IPFeatureMailScanner *)self subjectKeywordFeatures];
            [v67 addObjectsFromArray:v54];
          }

          if (v63)
          {
            v68 = [(IPFeatureScanner *)self bodyKeywordFeatures];
            [v68 addObjectsFromArray:v63];
          }

          [(IPFeatureScanner *)self augmentDetectedDatesWithEndDates:v96];
          v69 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v64];
          v70 = [(IPFeatureScanner *)self bodyAllFeatures];
          [v70 addObjectsFromArray:v69];

          v89 = v63;
          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v71 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v71 = _IPLogHandle;
            }

            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v127 = v69;
              _os_log_impl(&dword_2485E4000, v71, OS_LOG_TYPE_INFO, "Feature detection result:\n--> Unit Features:\n%@ #FeatureManager", buf, 0xCu);
            }
          }

          v88 = v64;
          v72 = [(IPFeatureScanner *)self analyzeFeatures:v69 messageUnit:v4, v69];
          [(IPFeatureScanner *)self setDetectedEvents:v72];

          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v73 = [(IPFeatureScanner *)self detectedEvents];
          v74 = [v73 countByEnumeratingWithState:&v101 objects:v113 count:16];
          if (v74)
          {
            v75 = v74;
            v76 = *v102;
            do
            {
              for (k = 0; k != v75; ++k)
              {
                if (*v102 != v76)
                {
                  objc_enumerationMutation(v73);
                }

                [*(*(&v101 + 1) + 8 * k) setIpsos_eventAttributes:{objc_msgSend(*(*(&v101 + 1) + 8 * k), "ipsos_eventAttributes") | 2}];
              }

              v75 = [v73 countByEnumeratingWithState:&v101 objects:v113 count:16];
            }

            while (v75);
          }

          v78 = [(IPFeatureScanner *)self extractedNotesStrings];
          v79 = [v78 count];

          if (!v79)
          {
            v80 = [(IPFeatureScanner *)self extractedNotesStrings];
            v81 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
            v82 = [(IPFeatureScanner *)self notesStringsFromDataFeatures:v81];
            [v80 addObjectsFromArray:v82];
          }

          v26 = v100;
          v27 = v93;
          v14 = v94;
          v17 = v96;
        }

        else
        {
          v83 = _IPLogHandle;
          v26 = v100;
          v8 = v97;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v83 = _IPLogHandle;
          }

          v27 = v93;
          v14 = v94;
          v17 = v96;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            v84 = v83;
            v85 = [v4 bestLanguageID];
            *buf = 138412290;
            v127 = v85;
            _os_log_impl(&dword_2485E4000, v84, OS_LOG_TYPE_INFO, "No sentence polarity extracted. No sentence or no LSTM assets available for language identifier %@ #FeatureManager", buf, 0xCu);
          }

          [(IPFeatureScanner *)self setResultType:-13];
        }

        goto LABEL_93;
      }

      v30 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v30 = _IPLogHandle;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v30, OS_LOG_TYPE_INFO, "Contains a date in the far past. Skipping. #FeatureManager", buf, 2u);
      }

      [(IPFeatureScanner *)self setResultType:-11];
      v27 = v29;
    }

    v26 = v100;
LABEL_93:

    v16 = v99;
    goto LABEL_94;
  }

  v24 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging();
    v24 = _IPLogHandle;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v127 = v23;
    _os_log_impl(&dword_2485E4000, v24, OS_LOG_TYPE_INFO, "Too many DETECTED dates in the future detected. (%lu)  Skipping. #FeatureManager", buf, 0xCu);
  }

  [(IPFeatureScanner *)self setResultType:-12];
LABEL_29:
  v26 = v100;
LABEL_94:

  v86 = *MEMORY[0x277D85DE8];
}

- (void)enrichEvents:(id)a3 messageUnits:(id)a4 dateInSubject:(id)a5 dataFeatures:(id)a6
{
  v108 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v94 = a4;
  v89 = a5;
  v11 = a6;
  if ([v10 count])
  {
    v91 = [(IPFeatureScanner *)self movieTitlesFromDataFeatures:v11];
    v87 = [(IPFeatureScanner *)self sportTeamNamesFromDataFeatures:v11];
    v86 = [(IPFeatureScanner *)self artisNamesFromDataFeatures:v11];
    v85 = [(IPFeatureScanner *)self restaurantAndBarPOINamesFromDataFeatures:v11];
    v99 = self;
    v83 = v11;
    v12 = [(IPFeatureScanner *)self entertainmentPOINamesFromDataFeatures:v11];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v84 = v10;
    obj = v10;
    v93 = [obj countByEnumeratingWithState:&v103 objects:v107 count:16];
    if (!v93)
    {
      goto LABEL_83;
    }

    v92 = *v104;
    v13 = 0x278F22000uLL;
    v90 = v12;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v104 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v103 + 1) + 8 * v14);
        v16 = *(v13 + 2472);
        v17 = [v15 ipsos_messageUnit];
        v18 = [v15 ipsos_messageUnit];
        v19 = [v18 keywordFeatures];
        v20 = [v15 ipsos_dataFeatures];
        v21 = [v16 eventClassificationTypeFromMessageUnit:v17 keywordFeatures:v19 datafeatures:v20];
        [v15 setIpsos_eventClassificationType:v21];

        v22 = [v15 ipsos_eventClassificationType];
        v23 = v22;
        if (v22 && ![v22 isFairlyGeneric])
        {
          goto LABEL_21;
        }

        v24 = [v94 firstObject];
        v25 = [v24 bestLanguageID];

        if ([v91 count])
        {
          v26 = [*(v13 + 2472) eventTypeForMoviesAndLanguageID:v25];
        }

        else if ([v87 count])
        {
          v26 = [*(v13 + 2472) eventTypeForSportAndLanguageID:v25];
        }

        else if ([v86 count])
        {
          v26 = [*(v13 + 2472) eventTypeForCultureAndLanguageID:v25];
        }

        else if ([v85 count])
        {
          v26 = [*(v13 + 2472) eventTypeForMealsAndLanguageID:v25];
        }

        else
        {
          if (![v12 count])
          {
            goto LABEL_20;
          }

          v26 = [*(v13 + 2472) eventTypeForEntertainmentAndLanguageID:v25];
        }

        v27 = v26;

        v23 = v27;
LABEL_20:
        [v15 setIpsos_eventClassificationType:v23];

        if (!v23)
        {
          goto LABEL_67;
        }

LABEL_21:
        v28 = [v15 isAllDay];
        v29 = [v15 ipsos_allDayPreferred];
        v97 = [v15 ipsos_disableTimeAdjustment];
        v100 = [v15 ipsos_isTimeApproximate];
        v30 = [v15 ipsos_isEndTimeApproximate];
        v31 = [v15 startDate];
        v32 = [v15 endDate];
        v33 = v32;
        if (v28)
        {
          [v32 timeIntervalSinceDate:v31];
          v35 = fabs(v34) > 86400.0;
        }

        else
        {
          v36 = [v23 adjustedEventClassificationTypeWithStartDate:v31];

          [v15 setIpsos_eventClassificationType:v36];
          v35 = 0;
          v23 = v36;
        }

        if (([v23 defaultStartingTimeHour] & 0x80000000) != 0)
        {
          v44 = 0;
          v48 = v99;
        }

        else
        {
          v95 = v29;
          v37 = v30;
          v38 = v33;
          v39 = MEMORY[0x277CBEAA8];
          v40 = v28;
          v41 = 3600 * [v23 defaultStartingTimeHour];
          v42 = (v41 + 60 * [v23 defaultStartingTimeMinutes]);
          v43 = [(IPFeatureScanner *)v99 normalizedAllDayDateFromDate:v31];
          v44 = [v39 dateWithTimeInterval:v43 sinceDate:v42];

          v28 = v40;
          v45 = 0;
          if (!((v44 == 0) | v40 & 1) && ((v100 ^ 1) & 1) == 0)
          {
            [v44 timeIntervalSinceDate:v31];
            v45 = fabs(v46) <= 5400.0;
          }

          v47 = v97;
          if (!v44)
          {
            v47 = 1;
          }

          v33 = v38;
          if (v47)
          {
            v48 = v99;
            v30 = v37;
          }

          else
          {
            v49 = v45 | ~(v95 | ~v28 | v35);
            v48 = v99;
            v30 = v37;
            if (v49)
            {
              v50 = v44;

              v100 = 1;
              [v15 setIpsos_usesDefaultClassificationTypeStartTime:1];
              v44 = v50;

              v28 = 0;
              v33 = v44;
              v31 = v44;
            }
          }
        }

        if (v33 == v31)
        {
          v51 = 1;
        }

        else
        {
          v51 = v30;
        }

        v98 = v28;
        v96 = v44;
        if (!v28 && v51)
        {
          [v23 defaultDuration];
          if (v52 <= 0.0)
          {
            if ([(IPFeatureScanner *)v48 isDateAroundNoon:v31])
            {
              v55 = v31;
              v56 = 3600.0;
            }

            else
            {
              v55 = v31;
              v56 = 7200.0;
            }

            v54 = [v55 dateByAddingTimeInterval:v56];
          }

          else
          {
            v53 = MEMORY[0x277CBEAA8];
            [v23 defaultDuration];
            v54 = [v53 dateWithTimeInterval:v31 sinceDate:?];
          }

          v57 = v54;

          v33 = v57;
        }

        v102 = 0;
        v58 = [v94 objectAtIndexedSubscript:0];
        v59 = [v58 originalMessage];

        v60 = [(IPFeatureScanner *)v48 bodyMessageUnits];
        v61 = [v59 subject];
        v62 = [v23 adjustedEventTitleForMessageUnits:v60 subject:v61 dateInSubject:v89 eventStartDate:v31 isGeneratedFromSubject:&v102];

        v63 = [v23 defaultTitle];
        LODWORD(v61) = [v63 isEqualToString:v62];

        v101 = 0;
        if (v61)
        {
          if ([v23 isSportRelated])
          {
            v64 = v99;
            v65 = v62;
            v66 = v87;
LABEL_57:
            v68 = [(IPFeatureScanner *)v64 decoratedTitle:v65 withSubtitles:v66];

LABEL_58:
            v67 = 0;
            v62 = v68;
            goto LABEL_59;
          }

          if ([v23 isMovieRelated] && v91)
          {
            v64 = v99;
            v65 = v62;
            v66 = v91;
            goto LABEL_57;
          }

          if ([v23 isCultureRelated] && objc_msgSend(v86, "count"))
          {
            v64 = v99;
            v65 = v62;
            v66 = v86;
            goto LABEL_57;
          }

          if ([v23 isMealRelated] && objc_msgSend(v85, "count"))
          {
            v74 = v99;
            v75 = v62;
            v76 = v85;
LABEL_78:
            v80 = [(IPFeatureScanner *)v74 decoratedTitle:v75 withSubtitles:v76];

            if ([v76 count] == 1)
            {
              v67 = [v76 firstObject];
            }

            else
            {
              v67 = 0;
            }

            v62 = v80;
            goto LABEL_59;
          }

          if (![v62 length] && objc_msgSend(v90, "count"))
          {
            v74 = v99;
            v75 = v62;
            v76 = v90;
            goto LABEL_78;
          }

          v77 = [v59 isGroupConversation];
          v67 = 0;
          if ([v23 prefersTitleSenderDecoration] && (v77 & 1) == 0)
          {
            v78 = [v59 sender];
            v79 = [v59 recipients];
            v68 = -[IPFeatureScanner decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:](v99, "decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:", v23, v62, v78, v79, [v59 isSent], &v101);

            goto LABEL_58;
          }
        }

        else
        {
          v67 = 0;
        }

LABEL_59:
        [v15 setAllDay:v98];
        [v15 setStartDate:v31];
        [v15 setEndDate:v33];
        [v15 setIpsos_isTimeApproximate:v100];
        [v15 setTitle:v62];
        if ([v62 length])
        {
          v69 = v102;
          v70 = [v15 ipsos_eventAttributes];
          v71 = 2048;
          if (v69)
          {
            v71 = 1024;
          }

          [v15 setIpsos_eventAttributes:v70 | v71];
          if (v101 == 1)
          {
            [v15 setIpsos_eventAttributes:{objc_msgSend(v15, "ipsos_eventAttributes") | 0x1000}];
          }
        }

        v72 = [v15 location];
        v73 = [v72 length];

        if (!v73)
        {
          [v15 setLocation:v67];
        }

        v12 = v90;
        v13 = 0x278F22000;
LABEL_67:
        ++v14;
      }

      while (v93 != v14);
      v81 = [obj countByEnumeratingWithState:&v103 objects:v107 count:16];
      v93 = v81;
      if (!v81)
      {
LABEL_83:

        v11 = v83;
        v10 = v84;
        break;
      }
    }
  }

  v82 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBannedSender:(id)a3
{
  v3 = [a3 email];
  if ([v3 length])
  {
    if ([v3 hasPrefix:@"receipts."])
    {
      goto LABEL_10;
    }

    if ([v3 hasPrefix:@"receipts@"])
    {
      goto LABEL_10;
    }

    if ([v3 hasPrefix:@"info@"])
    {
      goto LABEL_10;
    }

    if ([v3 hasPrefix:@"news@"])
    {
      goto LABEL_10;
    }

    if ([v3 containsString:@"_news@"])
    {
      goto LABEL_10;
    }

    if ([v3 hasPrefix:@"noreply@"])
    {
      goto LABEL_10;
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", @"radar", @"apple.com"];
    v5 = [v3 hasPrefix:v4];

    if (v5 & 1) != 0 || ([MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@@%@", @"travel", @"res", @"apple.com"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v3, "hasPrefix:", v6), v6, (v7))
    {
LABEL_10:
      v8 = 1;
    }

    else
    {
      v8 = [v3 containsString:@"newsletter"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)resetScanState
{
  [(IPFeatureMailScanner *)self setSubjectContainsDate:0];
  v3 = MEMORY[0x277CBEBF8];
  [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:MEMORY[0x277CBEBF8]];
  [(IPFeatureMailScanner *)self setDateInSubjectFeatureData:0];
  [(IPFeatureMailScanner *)self setSubjectSentenceFeatures:v3];
  v4 = objc_opt_new();
  [(IPFeatureMailScanner *)self setSubjectKeywordFeatures:v4];

  v5 = objc_opt_new();
  [(IPFeatureMailScanner *)self setSubjectAndBodyDataDetectorsFeatures:v5];

  v6.receiver = self;
  v6.super_class = IPFeatureMailScanner;
  [(IPFeatureScanner *)&v6 resetScanState];
}

- (double)confidenceForEvent:(id)a3 baseConfidence:(double)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(IPFeatureScanner *)self bodyMessageUnits];
  v7 = [v6 firstObject];
  v8 = [v7 originalMessage];

  if ([v5 isAllDay])
  {
    v9 = 0.95;
  }

  else if ([v5 ipsos_usesDefaultClassificationTypeStartTime])
  {
    v9 = 0.8;
  }

  else if ([v5 ipsos_isTimeApproximate])
  {
    v9 = 0.8;
  }

  else
  {
    v9 = 1.0;
  }

  if ([v5 ipsos_isDateTimeTenseDependent])
  {
    v10 = v9 * 0.8;
  }

  else
  {
    v10 = v9;
  }

  if ([v5 ipsos_timeNeedsMeridianGuess])
  {
    v10 = v10 * 0.9;
  }

  if ([v5 ipsos_isEventTimeOnlyAndReferrengingToSentDate])
  {
    v10 = v10 * 0.75;
  }

  v11 = [(IPFeatureScanner *)self detectedEvents];
  v12 = [v11 count];

  if (v12 < 5)
  {
    v13 = [(IPFeatureScanner *)self detectedEvents];
    v14 = [v13 count];

    if (v14 < 4)
    {
      v15 = [(IPFeatureScanner *)self detectedEvents];
      v16 = [v15 count];

      if (v16 > 2)
      {
        v10 = v10 * 0.95;
      }
    }

    else
    {
      v10 = v10 * 0.9;
    }
  }

  else
  {
    v10 = v10 * 0.7;
  }

  v17 = [(IPFeatureScanner *)self stitchedEvents];
  v18 = [v17 count];

  if (v18 < 4)
  {
    v20 = [(IPFeatureScanner *)self stitchedEvents];
    v21 = [v20 count];

    if (v21 < 3)
    {
      v22 = [(IPFeatureScanner *)self stitchedEvents];
      v23 = [v22 count];

      if (v23 <= 1)
      {
        v19 = v10;
      }

      else
      {
        v19 = v10 * 0.9;
      }
    }

    else
    {
      v19 = v10 * 0.8;
    }
  }

  else
  {
    v19 = v10 * 0.7;
  }

  v24 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v25 = [v24 count];

  if (v25 <= 5)
  {
    v26 = v19;
  }

  else
  {
    v26 = v19 * 0.9;
  }

  v27 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v28 = [v27 count];

  if (v28 >= 4)
  {
    v29 = 1.15;
LABEL_35:
    v26 = v26 * v29;
    goto LABEL_38;
  }

  v30 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v31 = [v30 count];

  if (v31 >= 3)
  {
    v29 = 1.1;
    goto LABEL_35;
  }

  v32 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v33 = [v32 count];

  if (v33 > 1)
  {
    v26 = v26 * 1.05;
  }

LABEL_38:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v34 = [v5 ipsos_dataFeatures];
  v35 = [v34 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v54;
    v38 = 0.0;
    v39 = 0.0;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v41 = [*(*(&v53 + 1) + 8 * i) contextDictionary];
        v42 = [v41 objectForKeyedSubscript:@"polarityProbability"];

        if (v42)
        {
          [v42 doubleValue];
          if (v43 > 0.001)
          {
            v38 = v38 + 1.0;
            v39 = v39 + v43;
          }
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v36);

    if (v38 > 0.0)
    {
      v26 = v26 * ((1.0 - v39 / v38) * -0.5 + 1.0);
    }
  }

  else
  {
  }

  v44 = [v8 type];
  v45 = IPMessageTypeEmail;

  if (v44 == v45)
  {
    v46 = [v5 ipsos_messageUnit];
    v47 = [v46 originalMessage];
    v48 = [v47 isReply];

    if (v48)
    {
      v26 = v26 * 0.85;
    }

    if ([v8 messageUnitsTextLength] > 0xFA0)
    {
      v26 = v26 * 0.5;
    }
  }

  v49 = [v5 title];
  v50 = [v49 length];

  if (!v50)
  {
    v26 = v26 * 0.85;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)emailParticipantNames
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v4 = [(IPFeatureScanner *)self messageSenderName];
  if ([v4 length])
  {
    [v3 addObject:v4];
  }

  v5 = [(IPFeatureScanner *)self bodyMessageUnits];
  v6 = [v5 firstObject];
  v7 = [v6 originalMessage];

  v8 = [v7 recipients];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) displayableName];
        if ([v13 length])
        {
          [v3 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end