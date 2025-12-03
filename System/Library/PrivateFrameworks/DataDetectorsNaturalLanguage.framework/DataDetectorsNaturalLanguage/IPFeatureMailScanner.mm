@interface IPFeatureMailScanner
- (BOOL)isBannedSender:(id)sender;
- (double)confidenceForEvent:(id)event baseConfidence:(double)confidence;
- (id)emailParticipantNames;
- (id)featuresForTextString:(id)string inMessageUnit:(id)unit;
- (void)doSynchronousScanWithCompletionHandler:(id)handler;
- (void)enrichEvents:(id)events messageUnits:(id)units dateInSubject:(id)subject dataFeatures:(id)features;
- (void)processScanOfMessageUnit:(id)unit;
- (void)resetScanState;
- (void)scanEventsInMessageUnits:(id)units synchronously:(BOOL)synchronously completionHandler:(id)handler;
@end

@implementation IPFeatureMailScanner

- (id)featuresForTextString:(id)string inMessageUnit:(id)unit
{
  v75[1] = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  originalMessage = [unitCopy originalMessage];
  subject = [originalMessage subject];

  dataDetectorsFeatureExtractor = [objc_opt_class() dataDetectorsFeatureExtractor];
  v75[0] = dataDetectorsFeatureExtractor;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
  v10 = [(IPFeatureScanner *)self featuresForTextString:subject inMessageUnit:unitCopy extractors:v9 context:0];
  [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:v10];

  v73 = @"IPFeatureExtractorContextDataDetectorsFeatures";
  subjectDataDetectorsFeatures = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
  v74 = subjectDataDetectorsFeatures;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];

  sentenceFeatureExtractor = [objc_opt_class() sentenceFeatureExtractor];
  v72 = sentenceFeatureExtractor;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
  v55 = subject;
  v53 = v12;
  v54 = [(IPFeatureScanner *)self featuresForTextString:subject inMessageUnit:unitCopy extractors:v14 context:v12];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  subjectDataDetectorsFeatures2 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
  v16 = [subjectDataDetectorsFeatures2 countByEnumeratingWithState:&v60 objects:v71 count:16];
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
          objc_enumerationMutation(subjectDataDetectorsFeatures2);
        }

        contextDictionary = [*(*(&v60 + 1) + 8 * i) contextDictionary];
        [contextDictionary setObject:v19 forKeyedSubscript:@"extractedInSubject"];
      }

      v17 = [subjectDataDetectorsFeatures2 countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v17);
  }

  text = [unitCopy text];
  dataDetectorsFeatureExtractor2 = [objc_opt_class() dataDetectorsFeatureExtractor];
  v70 = dataDetectorsFeatureExtractor2;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v25 = [(IPFeatureScanner *)self featuresForTextString:text inMessageUnit:unitCopy extractors:v24 context:0];

  v68[1] = @"IPFeatureExtractorContextDataDetectorsFeatures";
  v69[0] = v54;
  v68[0] = @"IPFeatureExtractorPreviousFeatureSentences";
  v26 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v25];
  v69[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];

  text2 = [unitCopy text];
  sentenceFeatureExtractor2 = [objc_opt_class() sentenceFeatureExtractor];
  v67 = sentenceFeatureExtractor2;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
  v51 = v27;
  v31 = [(IPFeatureScanner *)self featuresForTextString:text2 inMessageUnit:unitCopy extractors:v30 context:v27];

  v49 = v31;
  v32 = [v31 mutableCopy];
  v33 = v32;
  if (v25)
  {
    [v32 addObjectsFromArray:v25];
  }

  v50 = v33;
  v52 = v25;
  keywordFeatureExtractor = [objc_opt_class() keywordFeatureExtractor];
  v66 = keywordFeatureExtractor;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
  v36 = [(IPFeatureScanner *)self featuresForTextString:v55 inMessageUnit:unitCopy extractors:v35 context:0];

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

        contextDictionary2 = [*(*(&v56 + 1) + 8 * j) contextDictionary];
        [contextDictionary2 setObject:v41 forKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
      }

      v39 = [v37 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v39);
  }

  lowercaseTextTruncated = [unitCopy lowercaseTextTruncated];
  v64 = keywordFeatureExtractor;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v46 = [(IPFeatureScanner *)self featuresForTextString:lowercaseTextTruncated inMessageUnit:unitCopy extractors:v45 context:0];

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

- (void)scanEventsInMessageUnits:(id)units synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  v26 = *MEMORY[0x277D85DE8];
  unitsCopy = units;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IPFeatureMailScanner *)selfCopy resetScanState];
  objc_sync_exit(selfCopy);

  [(IPFeatureScanner *)selfCopy setBodyMessageUnits:unitsCopy];
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
      *(&buf + 4) = unitsCopy;
      _os_log_impl(&dword_2485E4000, v11, OS_LOG_TYPE_INFO, "Start with message units: %@ #FeatureManager", &buf, 0xCu);
    }
  }

  if ([unitsCopy count])
  {
    if ([objc_opt_class() isNaturalLanguageEventDetectionEnabled])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy_;
      v24 = __Block_byref_object_dispose_;
      firstObject = [unitsCopy firstObject];
      originalMessage = [firstObject originalMessage];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __81__IPFeatureMailScanner_scanEventsInMessageUnits_synchronously_completionHandler___block_invoke;
      v18[3] = &unk_278F22DD0;
      v18[4] = selfCopy;
      v19 = handlerCopy;
      p_buf = &buf;
      v13 = MEMORY[0x24C1D4200](v18);
      v14 = v13;
      if (synchronouslyCopy)
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
      [(IPFeatureScanner *)selfCopy setResultType:-1];
      (*(handlerCopy + 2))(handlerCopy, 0, [(IPFeatureScanner *)selfCopy resultType]);
    }
  }

  else
  {
    [(IPFeatureScanner *)selfCopy setResultType:0];
    resultType = [(IPFeatureScanner *)selfCopy resultType];
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], resultType);
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

- (void)doSynchronousScanWithCompletionHandler:(id)handler
{
  v172[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dataDetectorsFeatureExtractor = [objc_opt_class() dataDetectorsFeatureExtractor];
  v172[0] = dataDetectorsFeatureExtractor;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:1];

  bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
  firstObject = [bodyMessageUnits firstObject];

  originalMessage = [firstObject originalMessage];
  subject = [originalMessage subject];

  originalMessage2 = [firstObject originalMessage];
  sender = [originalMessage2 sender];

  originalMessage3 = [firstObject originalMessage];
  dateSent = [originalMessage3 dateSent];

  v15 = [(IPFeatureScanner *)self subjectEventVocabularyRejectionKeyword:subject];
  if (!v15)
  {
    if ([(IPFeatureMailScanner *)self isBannedSender:sender])
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
          email = [sender email];
          *buf = 138412290;
          v171 = email;
          _os_log_impl(&dword_2485E4000, v20, OS_LOG_TYPE_INFO, "Banned sender: %@ #FeatureManager", buf, 0xCu);

          v15 = 0;
        }
      }

      goto LABEL_25;
    }

    v142 = handlerCopy;
    [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:MEMORY[0x277CBEBF8]];
    v136 = [(IPFeatureScanner *)self subjectEventVocabularyIgnoreDateKeyword:subject];
    if (!v136)
    {
      v24 = [(IPFeatureScanner *)self featuresForTextString:subject inMessageUnit:firstObject extractors:v6 context:0];
      [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:v24];
    }

    v141 = v6;
    [(IPFeatureMailScanner *)self setDateInSubjectFeatureData:0];
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    subjectDataDetectorsFeatures = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
    reverseObjectEnumerator = [subjectDataDetectorsFeatures reverseObjectEnumerator];

    v27 = [reverseObjectEnumerator countByEnumeratingWithState:&v161 objects:v169 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v31 = *(*(&v161 + 1) + 8 * i);
          if (![v31 type] || objc_msgSend(v31, "type") == 1)
          {
            [(IPFeatureMailScanner *)self setDateInSubjectFeatureData:v31];
            [(IPFeatureMailScanner *)self setSubjectContainsDate:1];
            goto LABEL_40;
          }
        }

        v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v161 objects:v169 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:
    v140 = firstObject;

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    bodyMessageUnits2 = [(IPFeatureScanner *)self bodyMessageUnits];
    v33 = [bodyMessageUnits2 countByEnumeratingWithState:&v157 objects:v168 count:16];
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
            objc_enumerationMutation(bodyMessageUnits2);
          }

          v37 = *(*(&v157 + 1) + 8 * j);
          v38 = objc_autoreleasePoolPush();
          [(IPFeatureMailScanner *)self processScanOfMessageUnit:v37];
          objc_autoreleasePoolPop(v38);
        }

        v34 = [bodyMessageUnits2 countByEnumeratingWithState:&v157 objects:v168 count:16];
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
      detectedEvents = [(IPFeatureScanner *)self detectedEvents];
      v42 = [detectedEvents count];
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
        detectedEvents2 = [(IPFeatureScanner *)self detectedEvents];
        v46 = [detectedEvents2 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v171 = v46;
        _os_log_impl(&dword_2485E4000, v44, OS_LOG_TYPE_INFO, "Detected Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    detectedEvents3 = [(IPFeatureScanner *)self detectedEvents];
    v48 = [detectedEvents3 count];

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
        detectedEvents4 = [(IPFeatureScanner *)self detectedEvents];
        v52 = [detectedEvents4 count];
        *buf = 134217984;
        v171 = v52;
        _os_log_impl(&dword_2485E4000, v50, OS_LOG_TYPE_INFO, "Too many UNSTITCHED dates. (%lu)  Skipping. #FeatureManager", buf, 0xCu);
      }

      [(IPFeatureScanner *)self setResultType:-12];
      detectedEvents5 = [(IPFeatureScanner *)self detectedEvents];
      [detectedEvents5 removeAllObjects];
    }

    detectedEvents6 = [(IPFeatureScanner *)self detectedEvents];
    v55 = [(IPFeatureScanner *)self stitchedEventsFromEvents:detectedEvents6];
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
        stitchedEvents = [(IPFeatureScanner *)self stitchedEvents];
        v59 = [stitchedEvents valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v171 = v59;
        _os_log_impl(&dword_2485E4000, v57, OS_LOG_TYPE_INFO, "Stitched Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    stitchedEvents2 = [(IPFeatureScanner *)self stitchedEvents];
    v61 = [stitchedEvents2 count];

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
        stitchedEvents3 = [(IPFeatureScanner *)self stitchedEvents];
        v65 = [stitchedEvents3 count];
        *buf = 134217984;
        v171 = v65;
        _os_log_impl(&dword_2485E4000, v63, OS_LOG_TYPE_INFO, "Too many STITCHED dates. (%lu)  Skipping. #FeatureManager", buf, 0xCu);
      }

      [(IPFeatureScanner *)self setResultType:-12];
      [(IPFeatureScanner *)self setStitchedEvents:MEMORY[0x277CBEBF8]];
    }

    if ([(IPFeatureMailScanner *)self subjectContainsDate])
    {
      dateInSubjectFeatureData = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];
      value = [dateInSubjectFeatureData value];
    }

    else
    {
      value = 0;
    }

    stitchedEvents4 = [(IPFeatureScanner *)self stitchedEvents];
    bodyMessageUnits3 = [(IPFeatureScanner *)self bodyMessageUnits];
    bodyDataDetectorsFeatures = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
    [(IPFeatureMailScanner *)self enrichEvents:stitchedEvents4 messageUnits:bodyMessageUnits3 dateInSubject:value dataFeatures:bodyDataDetectorsFeatures];

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
        stitchedEvents5 = [(IPFeatureScanner *)self stitchedEvents];
        v74 = [stitchedEvents5 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v171 = v74;
        _os_log_impl(&dword_2485E4000, v72, OS_LOG_TYPE_INFO, "Enriched Events based on Event Type: %@ #FeatureManager", buf, 0xCu);
      }
    }

    v135 = value;
    v137 = dateSent;
    v138 = sender;
    v139 = subject;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    selfCopy = self;
    stitchedEvents6 = [(IPFeatureScanner *)self stitchedEvents];
    v76 = [stitchedEvents6 countByEnumeratingWithState:&v153 objects:v167 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = 0;
      v79 = *v154;
      v80 = 1;
      v143 = stitchedEvents6;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v154 != v79)
          {
            objc_enumerationMutation(stitchedEvents6);
          }

          v82 = *(*(&v153 + 1) + 8 * k);
          location = [v82 location];

          if (!location)
          {
            if (v80)
            {
              v151 = 0u;
              v152 = 0u;
              v149 = 0u;
              v150 = 0u;
              subjectDataDetectorsFeatures2 = [(IPFeatureMailScanner *)selfCopy subjectDataDetectorsFeatures];
              reverseObjectEnumerator2 = [subjectDataDetectorsFeatures2 reverseObjectEnumerator];

              v86 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v149 objects:v166 count:16];
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
                      objc_enumerationMutation(reverseObjectEnumerator2);
                    }

                    v90 = *(*(&v149 + 1) + 8 * m);
                    if ([v90 type] == 3 || objc_msgSend(v90, "type") == 7 || objc_msgSend(v90, "type") == 12 || objc_msgSend(v90, "type") == 13)
                    {
                      v91 = [(IPFeatureScanner *)selfCopy cleanedStringForFeatureData:v90];

                      v78 = v91;
                      goto LABEL_110;
                    }
                  }

                  v87 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v149 objects:v166 count:16];
                  if (v87)
                  {
                    continue;
                  }

                  break;
                }

LABEL_110:
                stitchedEvents6 = v143;
              }
            }

            [v82 setLocation:v78];
            v80 = 0;
          }
        }

        v77 = [stitchedEvents6 countByEnumeratingWithState:&v153 objects:v167 count:16];
      }

      while (v77);
    }

    else
    {
      v78 = 0;
    }

    v133 = v78;

    stitchedEvents7 = [(IPFeatureScanner *)selfCopy stitchedEvents];
    [(IPFeatureScanner *)selfCopy adjustTimeForEvents:stitchedEvents7];

    stitchedEvents8 = [(IPFeatureScanner *)selfCopy stitchedEvents];
    [(IPFeatureScanner *)selfCopy confidenceForEvents:stitchedEvents8];

    stitchedEvents9 = [(IPFeatureScanner *)selfCopy stitchedEvents];
    dateSent = v137;
    v95 = [(IPFeatureScanner *)selfCopy filteredEventsForDetectedEvents:stitchedEvents9 referenceDate:v137];
    [(IPFeatureScanner *)selfCopy setFilteredDetectedEvents:v95];

    v96 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v96 = _IPLogHandle;
    }

    v97 = v96;
    sender = v138;
    subject = v139;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      filteredDetectedEvents = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
      v99 = [filteredDetectedEvents count];
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
        filteredDetectedEvents2 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
        v103 = [filteredDetectedEvents2 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v171 = v103;
        _os_log_impl(&dword_2485E4000, v101, OS_LOG_TYPE_INFO, "Filtered Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    filteredDetectedEvents3 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
    [(IPFeatureScanner *)selfCopy normalizedEvents:filteredDetectedEvents3];

    extractedNotesStrings = [(IPFeatureScanner *)selfCopy extractedNotesStrings];
    subjectDataDetectorsFeatures3 = [(IPFeatureMailScanner *)selfCopy subjectDataDetectorsFeatures];
    v107 = [(IPFeatureScanner *)selfCopy notesStringsFromDataFeatures:subjectDataDetectorsFeatures3];
    [extractedNotesStrings addObjectsFromArray:v107];

    extractedNotesStrings2 = [(IPFeatureScanner *)selfCopy extractedNotesStrings];
    v109 = [extractedNotesStrings2 count];

    if (v109)
    {
      extractedNotesStrings3 = [(IPFeatureScanner *)selfCopy extractedNotesStrings];
      allObjects = [extractedNotesStrings3 allObjects];
      v112 = [allObjects _pas_componentsJoinedByString:@"\n"];

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      filteredDetectedEvents4 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
      v114 = [filteredDetectedEvents4 countByEnumeratingWithState:&v145 objects:v165 count:16];
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
              objc_enumerationMutation(filteredDetectedEvents4);
            }

            [*(*(&v145 + 1) + 8 * n) setNotes:v112];
          }

          v115 = [filteredDetectedEvents4 countByEnumeratingWithState:&v145 objects:v165 count:16];
        }

        while (v115);
      }
    }

    filteredDetectedEvents5 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
    v119 = [filteredDetectedEvents5 count];

    if (v119 == 1)
    {
      [(IPFeatureScanner *)selfCopy setResultType:1];
      filteredDetectedEvents6 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
      handlerCopy = v142;
      (v142)[2](v142, filteredDetectedEvents6, [(IPFeatureScanner *)selfCopy resultType]);

      firstObject = v140;
      v6 = v141;
LABEL_140:
      v15 = 0;
LABEL_154:

      goto LABEL_26;
    }

    filteredDetectedEvents7 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
    v122 = [filteredDetectedEvents7 count];

    v6 = v141;
    handlerCopy = v142;
    firstObject = v140;
    if (v122 < 3)
    {
      filteredDetectedEvents8 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
      v128 = [filteredDetectedEvents8 count];

      if (v128 < 2)
      {
        resultType = [(IPFeatureScanner *)selfCopy resultType];
        v142[2](v142, MEMORY[0x277CBEBF8], resultType);
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

      v125 = selfCopy;
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

      v125 = selfCopy;
      v126 = 2;
    }

    [(IPFeatureScanner *)v125 setResultType:v126];
    resultType2 = [(IPFeatureScanner *)selfCopy resultType];
    v142[2](v142, MEMORY[0x277CBEBF8], resultType2);
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
  resultType3 = [(IPFeatureScanner *)self resultType];
  handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], resultType3);
LABEL_26:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)processScanOfMessageUnit:(id)unit
{
  v130[1] = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  dataDetectorsFeatureExtractor = [objc_opt_class() dataDetectorsFeatureExtractor];
  v130[0] = dataDetectorsFeatureExtractor;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:1];

  originalMessage = [unitCopy originalMessage];
  lowercaseSubject = [originalMessage lowercaseSubject];

  originalMessage2 = [unitCopy originalMessage];
  dateSent = [originalMessage2 dateSent];

  if ([(IPFeatureScanner *)self shouldReplaceSendDateWithCurrentDate])
  {
    date = [MEMORY[0x277CBEAA8] date];

    dateSent = date;
  }

  dateInSubjectFeatureData = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];

  if (dateInSubjectFeatureData)
  {
    v128 = @"IPFeatureExtractorDetectedDateInSubjectFeatureData";
    dateInSubjectFeatureData2 = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];
    v129 = dateInSubjectFeatureData2;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
  }

  else
  {
    v14 = 0;
  }

  text = [unitCopy text];
  v100 = v6;
  v16 = [(IPFeatureScanner *)self featuresForTextString:text inMessageUnit:unitCopy extractors:v6 context:v14];

  if (-[IPFeatureScanner countOfFeaturesContainDateInTheFuture:messageUnitSentDate:](self, "countOfFeaturesContainDateInTheFuture:messageUnitSentDate:", v16, dateSent) || (-[IPFeatureMailScanner subjectDataDetectorsFeatures](self, "subjectDataDetectorsFeatures"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, !v19))
  {
    v17 = [v16 copy];
  }

  else
  {
    subjectDataDetectorsFeatures = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
    v17 = [subjectDataDetectorsFeatures mutableCopy];

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

  v22 = [(IPFeatureScanner *)self countOfFeaturesContainDateInTheFuture:v17 messageUnitSentDate:dateSent];
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
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateSent sinceDate:-10800.0];
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
      v29 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateSent sinceDate:-31536000.0];

      if (![(IPFeatureScanner *)self dataFeatures:v17 containDateOlderThan:v29 preciseTimeOnly:0])
      {
        v93 = v29;
        v94 = v14;
        v96 = v17;
        v124 = @"IPFeatureExtractorContextDataDetectorsFeatures";
        subjectDataDetectorsFeatures2 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
        v125 = subjectDataDetectorsFeatures2;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];

        bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
        firstObject = [bodyMessageUnits firstObject];
        sentenceFeatureExtractor = [objc_opt_class() sentenceFeatureExtractor];
        v123 = sentenceFeatureExtractor;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
        v97 = lowercaseSubject;
        v92 = v32;
        v98 = [(IPFeatureScanner *)self featuresForTextString:lowercaseSubject inMessageUnit:firstObject extractors:v36 context:v32];

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        subjectDataDetectorsFeatures3 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
        v38 = [subjectDataDetectorsFeatures3 countByEnumeratingWithState:&v109 objects:v122 count:16];
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
                objc_enumerationMutation(subjectDataDetectorsFeatures3);
              }

              contextDictionary = [*(*(&v109 + 1) + 8 * i) contextDictionary];
              [contextDictionary setObject:v41 forKeyedSubscript:@"extractedInSubject"];
            }

            v39 = [subjectDataDetectorsFeatures3 countByEnumeratingWithState:&v109 objects:v122 count:16];
          }

          while (v39);
        }

        v121[0] = v98;
        v120[0] = @"IPFeatureExtractorPreviousFeatureSentences";
        v120[1] = @"IPFeatureExtractorContextDataDetectorsFeatures";
        v44 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v99];
        v121[1] = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];

        text2 = [unitCopy text];
        sentenceFeatureExtractor2 = [objc_opt_class() sentenceFeatureExtractor];
        v119 = sentenceFeatureExtractor2;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
        v91 = v45;
        v49 = [(IPFeatureScanner *)self featuresForTextString:text2 inMessageUnit:unitCopy extractors:v48 context:v45];

        v95 = v49;
        if ([v49 count])
        {
          v50 = MEMORY[0x277CBEC38];
          keywordFeatureExtractor = [objc_opt_class() keywordFeatureExtractor];
          v118 = keywordFeatureExtractor;
          v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
          v116 = @"IPFeatureExtractorContextSubject";
          v117 = v50;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v53 = [(IPFeatureScanner *)self featuresForTextString:v97 inMessageUnit:unitCopy extractors:v51 context:v52];

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

                contextDictionary2 = [*(*(&v105 + 1) + 8 * j) contextDictionary];
                [contextDictionary2 setObject:v58 forKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
              }

              v56 = [v54 countByEnumeratingWithState:&v105 objects:v115 count:16];
            }

            while (v56);
          }

          lowercaseTextTruncated = [unitCopy lowercaseTextTruncated];
          v114 = keywordFeatureExtractor;
          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
          v63 = [(IPFeatureScanner *)self featuresForTextString:lowercaseTextTruncated inMessageUnit:unitCopy extractors:v62 context:0];

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

          [unitCopy setFeatures:v64];
          lowercaseSubject = v97;
          if (v96)
          {
            bodyDataDetectorsFeatures = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
            [bodyDataDetectorsFeatures addObjectsFromArray:v96];
          }

          if (v54)
          {
            subjectKeywordFeatures = [(IPFeatureMailScanner *)self subjectKeywordFeatures];
            [subjectKeywordFeatures addObjectsFromArray:v54];
          }

          if (v63)
          {
            bodyKeywordFeatures = [(IPFeatureScanner *)self bodyKeywordFeatures];
            [bodyKeywordFeatures addObjectsFromArray:v63];
          }

          [(IPFeatureScanner *)self augmentDetectedDatesWithEndDates:v96];
          v69 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v64];
          bodyAllFeatures = [(IPFeatureScanner *)self bodyAllFeatures];
          [bodyAllFeatures addObjectsFromArray:v69];

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
          v72 = [(IPFeatureScanner *)self analyzeFeatures:v69 messageUnit:unitCopy, v69];
          [(IPFeatureScanner *)self setDetectedEvents:v72];

          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          detectedEvents = [(IPFeatureScanner *)self detectedEvents];
          v74 = [detectedEvents countByEnumeratingWithState:&v101 objects:v113 count:16];
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
                  objc_enumerationMutation(detectedEvents);
                }

                [*(*(&v101 + 1) + 8 * k) setIpsos_eventAttributes:{objc_msgSend(*(*(&v101 + 1) + 8 * k), "ipsos_eventAttributes") | 2}];
              }

              v75 = [detectedEvents countByEnumeratingWithState:&v101 objects:v113 count:16];
            }

            while (v75);
          }

          extractedNotesStrings = [(IPFeatureScanner *)self extractedNotesStrings];
          v79 = [extractedNotesStrings count];

          if (!v79)
          {
            extractedNotesStrings2 = [(IPFeatureScanner *)self extractedNotesStrings];
            subjectDataDetectorsFeatures4 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
            v82 = [(IPFeatureScanner *)self notesStringsFromDataFeatures:subjectDataDetectorsFeatures4];
            [extractedNotesStrings2 addObjectsFromArray:v82];
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
          lowercaseSubject = v97;
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
            bestLanguageID = [unitCopy bestLanguageID];
            *buf = 138412290;
            v127 = bestLanguageID;
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

- (void)enrichEvents:(id)events messageUnits:(id)units dateInSubject:(id)subject dataFeatures:(id)features
{
  v108 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  unitsCopy = units;
  subjectCopy = subject;
  featuresCopy = features;
  if ([eventsCopy count])
  {
    v91 = [(IPFeatureScanner *)self movieTitlesFromDataFeatures:featuresCopy];
    v87 = [(IPFeatureScanner *)self sportTeamNamesFromDataFeatures:featuresCopy];
    v86 = [(IPFeatureScanner *)self artisNamesFromDataFeatures:featuresCopy];
    v85 = [(IPFeatureScanner *)self restaurantAndBarPOINamesFromDataFeatures:featuresCopy];
    selfCopy = self;
    v83 = featuresCopy;
    v12 = [(IPFeatureScanner *)self entertainmentPOINamesFromDataFeatures:featuresCopy];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v84 = eventsCopy;
    obj = eventsCopy;
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
        ipsos_messageUnit = [v15 ipsos_messageUnit];
        ipsos_messageUnit2 = [v15 ipsos_messageUnit];
        keywordFeatures = [ipsos_messageUnit2 keywordFeatures];
        ipsos_dataFeatures = [v15 ipsos_dataFeatures];
        v21 = [v16 eventClassificationTypeFromMessageUnit:ipsos_messageUnit keywordFeatures:keywordFeatures datafeatures:ipsos_dataFeatures];
        [v15 setIpsos_eventClassificationType:v21];

        ipsos_eventClassificationType = [v15 ipsos_eventClassificationType];
        v23 = ipsos_eventClassificationType;
        if (ipsos_eventClassificationType && ![ipsos_eventClassificationType isFairlyGeneric])
        {
          goto LABEL_21;
        }

        firstObject = [unitsCopy firstObject];
        bestLanguageID = [firstObject bestLanguageID];

        if ([v91 count])
        {
          v26 = [*(v13 + 2472) eventTypeForMoviesAndLanguageID:bestLanguageID];
        }

        else if ([v87 count])
        {
          v26 = [*(v13 + 2472) eventTypeForSportAndLanguageID:bestLanguageID];
        }

        else if ([v86 count])
        {
          v26 = [*(v13 + 2472) eventTypeForCultureAndLanguageID:bestLanguageID];
        }

        else if ([v85 count])
        {
          v26 = [*(v13 + 2472) eventTypeForMealsAndLanguageID:bestLanguageID];
        }

        else
        {
          if (![v12 count])
          {
            goto LABEL_20;
          }

          v26 = [*(v13 + 2472) eventTypeForEntertainmentAndLanguageID:bestLanguageID];
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
        isAllDay = [v15 isAllDay];
        ipsos_allDayPreferred = [v15 ipsos_allDayPreferred];
        ipsos_disableTimeAdjustment = [v15 ipsos_disableTimeAdjustment];
        ipsos_isTimeApproximate = [v15 ipsos_isTimeApproximate];
        ipsos_isEndTimeApproximate = [v15 ipsos_isEndTimeApproximate];
        startDate = [v15 startDate];
        endDate = [v15 endDate];
        v33 = endDate;
        if (isAllDay)
        {
          [endDate timeIntervalSinceDate:startDate];
          v35 = fabs(v34) > 86400.0;
        }

        else
        {
          v36 = [v23 adjustedEventClassificationTypeWithStartDate:startDate];

          [v15 setIpsos_eventClassificationType:v36];
          v35 = 0;
          v23 = v36;
        }

        if (([v23 defaultStartingTimeHour] & 0x80000000) != 0)
        {
          v44 = 0;
          v48 = selfCopy;
        }

        else
        {
          v95 = ipsos_allDayPreferred;
          v37 = ipsos_isEndTimeApproximate;
          v38 = v33;
          v39 = MEMORY[0x277CBEAA8];
          v40 = isAllDay;
          v41 = 3600 * [v23 defaultStartingTimeHour];
          v42 = (v41 + 60 * [v23 defaultStartingTimeMinutes]);
          v43 = [(IPFeatureScanner *)selfCopy normalizedAllDayDateFromDate:startDate];
          v44 = [v39 dateWithTimeInterval:v43 sinceDate:v42];

          isAllDay = v40;
          v45 = 0;
          if (!((v44 == 0) | v40 & 1) && ((ipsos_isTimeApproximate ^ 1) & 1) == 0)
          {
            [v44 timeIntervalSinceDate:startDate];
            v45 = fabs(v46) <= 5400.0;
          }

          v47 = ipsos_disableTimeAdjustment;
          if (!v44)
          {
            v47 = 1;
          }

          v33 = v38;
          if (v47)
          {
            v48 = selfCopy;
            ipsos_isEndTimeApproximate = v37;
          }

          else
          {
            v49 = v45 | ~(v95 | ~isAllDay | v35);
            v48 = selfCopy;
            ipsos_isEndTimeApproximate = v37;
            if (v49)
            {
              v50 = v44;

              ipsos_isTimeApproximate = 1;
              [v15 setIpsos_usesDefaultClassificationTypeStartTime:1];
              v44 = v50;

              isAllDay = 0;
              v33 = v44;
              startDate = v44;
            }
          }
        }

        if (v33 == startDate)
        {
          v51 = 1;
        }

        else
        {
          v51 = ipsos_isEndTimeApproximate;
        }

        v98 = isAllDay;
        v96 = v44;
        if (!isAllDay && v51)
        {
          [v23 defaultDuration];
          if (v52 <= 0.0)
          {
            if ([(IPFeatureScanner *)v48 isDateAroundNoon:startDate])
            {
              v55 = startDate;
              v56 = 3600.0;
            }

            else
            {
              v55 = startDate;
              v56 = 7200.0;
            }

            v54 = [v55 dateByAddingTimeInterval:v56];
          }

          else
          {
            v53 = MEMORY[0x277CBEAA8];
            [v23 defaultDuration];
            v54 = [v53 dateWithTimeInterval:startDate sinceDate:?];
          }

          v57 = v54;

          v33 = v57;
        }

        v102 = 0;
        v58 = [unitsCopy objectAtIndexedSubscript:0];
        originalMessage = [v58 originalMessage];

        bodyMessageUnits = [(IPFeatureScanner *)v48 bodyMessageUnits];
        subject = [originalMessage subject];
        v62 = [v23 adjustedEventTitleForMessageUnits:bodyMessageUnits subject:subject dateInSubject:subjectCopy eventStartDate:startDate isGeneratedFromSubject:&v102];

        defaultTitle = [v23 defaultTitle];
        LODWORD(subject) = [defaultTitle isEqualToString:v62];

        v101 = 0;
        if (subject)
        {
          if ([v23 isSportRelated])
          {
            v64 = selfCopy;
            v65 = v62;
            v66 = v87;
LABEL_57:
            v68 = [(IPFeatureScanner *)v64 decoratedTitle:v65 withSubtitles:v66];

LABEL_58:
            firstObject2 = 0;
            v62 = v68;
            goto LABEL_59;
          }

          if ([v23 isMovieRelated] && v91)
          {
            v64 = selfCopy;
            v65 = v62;
            v66 = v91;
            goto LABEL_57;
          }

          if ([v23 isCultureRelated] && objc_msgSend(v86, "count"))
          {
            v64 = selfCopy;
            v65 = v62;
            v66 = v86;
            goto LABEL_57;
          }

          if ([v23 isMealRelated] && objc_msgSend(v85, "count"))
          {
            v74 = selfCopy;
            v75 = v62;
            v76 = v85;
LABEL_78:
            v80 = [(IPFeatureScanner *)v74 decoratedTitle:v75 withSubtitles:v76];

            if ([v76 count] == 1)
            {
              firstObject2 = [v76 firstObject];
            }

            else
            {
              firstObject2 = 0;
            }

            v62 = v80;
            goto LABEL_59;
          }

          if (![v62 length] && objc_msgSend(v90, "count"))
          {
            v74 = selfCopy;
            v75 = v62;
            v76 = v90;
            goto LABEL_78;
          }

          isGroupConversation = [originalMessage isGroupConversation];
          firstObject2 = 0;
          if ([v23 prefersTitleSenderDecoration] && (isGroupConversation & 1) == 0)
          {
            sender = [originalMessage sender];
            recipients = [originalMessage recipients];
            v68 = -[IPFeatureScanner decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:](selfCopy, "decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:", v23, v62, sender, recipients, [originalMessage isSent], &v101);

            goto LABEL_58;
          }
        }

        else
        {
          firstObject2 = 0;
        }

LABEL_59:
        [v15 setAllDay:v98];
        [v15 setStartDate:startDate];
        [v15 setEndDate:v33];
        [v15 setIpsos_isTimeApproximate:ipsos_isTimeApproximate];
        [v15 setTitle:v62];
        if ([v62 length])
        {
          v69 = v102;
          ipsos_eventAttributes = [v15 ipsos_eventAttributes];
          v71 = 2048;
          if (v69)
          {
            v71 = 1024;
          }

          [v15 setIpsos_eventAttributes:ipsos_eventAttributes | v71];
          if (v101 == 1)
          {
            [v15 setIpsos_eventAttributes:{objc_msgSend(v15, "ipsos_eventAttributes") | 0x1000}];
          }
        }

        location = [v15 location];
        v73 = [location length];

        if (!v73)
        {
          [v15 setLocation:firstObject2];
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

        featuresCopy = v83;
        eventsCopy = v84;
        break;
      }
    }
  }

  v82 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBannedSender:(id)sender
{
  email = [sender email];
  if ([email length])
  {
    if ([email hasPrefix:@"receipts."])
    {
      goto LABEL_10;
    }

    if ([email hasPrefix:@"receipts@"])
    {
      goto LABEL_10;
    }

    if ([email hasPrefix:@"info@"])
    {
      goto LABEL_10;
    }

    if ([email hasPrefix:@"news@"])
    {
      goto LABEL_10;
    }

    if ([email containsString:@"_news@"])
    {
      goto LABEL_10;
    }

    if ([email hasPrefix:@"noreply@"])
    {
      goto LABEL_10;
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", @"radar", @"apple.com"];
    v5 = [email hasPrefix:v4];

    if (v5 & 1) != 0 || ([MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@@%@", @"travel", @"res", @"apple.com"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(email, "hasPrefix:", v6), v6, (v7))
    {
LABEL_10:
      v8 = 1;
    }

    else
    {
      v8 = [email containsString:@"newsletter"];
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

- (double)confidenceForEvent:(id)event baseConfidence:(double)confidence
{
  v58 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
  firstObject = [bodyMessageUnits firstObject];
  originalMessage = [firstObject originalMessage];

  if ([eventCopy isAllDay])
  {
    v9 = 0.95;
  }

  else if ([eventCopy ipsos_usesDefaultClassificationTypeStartTime])
  {
    v9 = 0.8;
  }

  else if ([eventCopy ipsos_isTimeApproximate])
  {
    v9 = 0.8;
  }

  else
  {
    v9 = 1.0;
  }

  if ([eventCopy ipsos_isDateTimeTenseDependent])
  {
    v10 = v9 * 0.8;
  }

  else
  {
    v10 = v9;
  }

  if ([eventCopy ipsos_timeNeedsMeridianGuess])
  {
    v10 = v10 * 0.9;
  }

  if ([eventCopy ipsos_isEventTimeOnlyAndReferrengingToSentDate])
  {
    v10 = v10 * 0.75;
  }

  detectedEvents = [(IPFeatureScanner *)self detectedEvents];
  v12 = [detectedEvents count];

  if (v12 < 5)
  {
    detectedEvents2 = [(IPFeatureScanner *)self detectedEvents];
    v14 = [detectedEvents2 count];

    if (v14 < 4)
    {
      detectedEvents3 = [(IPFeatureScanner *)self detectedEvents];
      v16 = [detectedEvents3 count];

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

  stitchedEvents = [(IPFeatureScanner *)self stitchedEvents];
  v18 = [stitchedEvents count];

  if (v18 < 4)
  {
    stitchedEvents2 = [(IPFeatureScanner *)self stitchedEvents];
    v21 = [stitchedEvents2 count];

    if (v21 < 3)
    {
      stitchedEvents3 = [(IPFeatureScanner *)self stitchedEvents];
      v23 = [stitchedEvents3 count];

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

  bodyKeywordFeatures = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v25 = [bodyKeywordFeatures count];

  if (v25 <= 5)
  {
    v26 = v19;
  }

  else
  {
    v26 = v19 * 0.9;
  }

  bodyKeywordFeatures2 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v28 = [bodyKeywordFeatures2 count];

  if (v28 >= 4)
  {
    v29 = 1.15;
LABEL_35:
    v26 = v26 * v29;
    goto LABEL_38;
  }

  bodyKeywordFeatures3 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v31 = [bodyKeywordFeatures3 count];

  if (v31 >= 3)
  {
    v29 = 1.1;
    goto LABEL_35;
  }

  bodyKeywordFeatures4 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v33 = [bodyKeywordFeatures4 count];

  if (v33 > 1)
  {
    v26 = v26 * 1.05;
  }

LABEL_38:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  ipsos_dataFeatures = [eventCopy ipsos_dataFeatures];
  v35 = [ipsos_dataFeatures countByEnumeratingWithState:&v53 objects:v57 count:16];
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
          objc_enumerationMutation(ipsos_dataFeatures);
        }

        contextDictionary = [*(*(&v53 + 1) + 8 * i) contextDictionary];
        v42 = [contextDictionary objectForKeyedSubscript:@"polarityProbability"];

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

      v36 = [ipsos_dataFeatures countByEnumeratingWithState:&v53 objects:v57 count:16];
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

  type = [originalMessage type];
  v45 = IPMessageTypeEmail;

  if (type == v45)
  {
    ipsos_messageUnit = [eventCopy ipsos_messageUnit];
    originalMessage2 = [ipsos_messageUnit originalMessage];
    isReply = [originalMessage2 isReply];

    if (isReply)
    {
      v26 = v26 * 0.85;
    }

    if ([originalMessage messageUnitsTextLength] > 0xFA0)
    {
      v26 = v26 * 0.5;
    }
  }

  title = [eventCopy title];
  v50 = [title length];

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
  messageSenderName = [(IPFeatureScanner *)self messageSenderName];
  if ([messageSenderName length])
  {
    [v3 addObject:messageSenderName];
  }

  bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
  firstObject = [bodyMessageUnits firstObject];
  originalMessage = [firstObject originalMessage];

  recipients = [originalMessage recipients];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [recipients countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(recipients);
        }

        displayableName = [*(*(&v16 + 1) + 8 * i) displayableName];
        if ([displayableName length])
        {
          [v3 addObject:displayableName];
        }
      }

      v10 = [recipients countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end