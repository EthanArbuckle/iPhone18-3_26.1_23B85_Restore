@interface IPFeatureTextMessageScanner
- (double)confidenceForEvent:(id)a3 baseConfidence:(double)a4;
- (double)experimentalConfidenceForEvent:(id)a3 experimentalBaseConfidence:(double)a4;
- (id)commonComponentsForConfidence;
- (id)dataDetectorsFeaturesForMessageUnit:(id)a3 context:(id)a4;
- (id)eventSpecificComponentsForConfidence:(id)a3;
- (id)keywordFeaturesForMessageUnit:(id)a3;
- (id)processScanOfMainMessageUnit:(id)a3 contextMessageUnits:(id)a4;
- (id)sentenceFeaturesForMessageUnit:(id)a3;
- (unint64_t)mainSentencePolarityFrom:(id)a3;
- (unint64_t)mainSentencePolarityFromMessageUnit:(id)a3 index:(unint64_t)a4;
- (void)confidenceForEvents:(id)a3;
- (void)doSynchronousScanWithCompletionHandler:(id)a3;
- (void)experimentalConfidenceForEvents:(id)a3;
- (void)resetScanState;
- (void)scanEventsInMessageUnits:(id)a3 contextMessageUnits:(id)a4 synchronously:(BOOL)a5 completionHandler:(id)a6;
@end

@implementation IPFeatureTextMessageScanner

- (void)scanEventsInMessageUnits:(id)a3 contextMessageUnits:(id)a4 synchronously:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  objc_sync_enter(v13);
  [(IPFeatureTextMessageScanner *)v13 resetScanState];
  objc_sync_exit(v13);

  [(IPFeatureScanner *)v13 setBodyMessageUnits:v10];
  [(IPFeatureTextMessageScanner *)v13 setContextMessageUnits:v11];
  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v14 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v14 = _IPLogHandle;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [v10 firstObject];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_2485E4000, v15, OS_LOG_TYPE_INFO, "Start with message units: %@ #FeatureManager", &buf, 0xCu);
    }

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }
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
      v18 = v17;
      v19 = [(IPFeatureTextMessageScanner *)v13 contextMessageUnits];
      v20 = [v19 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_2485E4000, v18, OS_LOG_TYPE_INFO, "Context: %lu message units #FeatureManager", &buf, 0xCu);
    }
  }

  v21 = [v10 firstObject];
  v22 = [v21 text];
  v23 = [v22 length] == 0;

  if (v23)
  {
    [(IPFeatureScanner *)v13 setResultType:0];
    v27 = [(IPFeatureScanner *)v13 resultType];
    v12[2](v12, MEMORY[0x277CBEBF8], v27);
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy_;
    v36 = __Block_byref_object_dispose_;
    v24 = [v10 firstObject];
    v37 = [v24 originalMessage];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __108__IPFeatureTextMessageScanner_scanEventsInMessageUnits_contextMessageUnits_synchronously_completionHandler___block_invoke;
    v30[3] = &unk_278F22DD0;
    v30[4] = v13;
    v31 = v12;
    p_buf = &buf;
    v25 = MEMORY[0x24C1D4200](v30);
    v26 = v25;
    if (v7)
    {
      (*(v25 + 16))(v25);
    }

    else
    {
      v28 = dispatch_get_global_queue(17, 0);
      dispatch_async(v28, v26);
    }

    _Block_object_dispose(&buf, 8);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __108__IPFeatureTextMessageScanner_scanEventsInMessageUnits_contextMessageUnits_synchronously_completionHandler___block_invoke(uint64_t a1)
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
  v69 = *MEMORY[0x277D85DE8];
  v66 = a3;
  v4 = [(IPFeatureTextMessageScanner *)self contextMessageUnits];
  v5 = [v4 count];

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 & 0x7FFFFFFF;
    do
    {
      v8 = [(IPFeatureTextMessageScanner *)self contextMessageUnits];
      v9 = [v8 objectAtIndexedSubscript:v6];

      v10 = [(IPFeatureTextMessageScanner *)self contextMessageUnits];
      v11 = [v10 subarrayWithRange:{0, v6}];

      v12 = [(IPFeatureTextMessageScanner *)self processScanOfMainMessageUnit:v9 contextMessageUnits:v11];
      if ([v12 count])
      {
        v13 = [(IPFeatureTextMessageScanner *)self detectedEventsInContext];
        [v13 addObject:v12];
      }

      ++v6;
    }

    while (v7 != v6);
  }

  v14 = [(IPFeatureScanner *)self bodyMessageUnits];
  v15 = [v14 firstObject];
  v16 = [(IPFeatureTextMessageScanner *)self contextMessageUnits];
  v17 = [(IPFeatureTextMessageScanner *)self processScanOfMainMessageUnit:v15 contextMessageUnits:v16];
  v18 = [v17 mutableCopy];
  [(IPFeatureScanner *)self setDetectedEvents:v18];

  v19 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging();
    v19 = _IPLogHandle;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = [(IPFeatureScanner *)self detectedEvents];
    *buf = 134217984;
    v68 = [v21 count];
    _os_log_impl(&dword_2485E4000, v20, OS_LOG_TYPE_INFO, "%lu detected events #FeatureManager", buf, 0xCu);
  }

  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v22 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v22 = _IPLogHandle;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      v24 = [(IPFeatureScanner *)self detectedEvents];
      v25 = [v24 valueForKey:@"ipsos_betterDescription"];
      *buf = 138412290;
      v68 = v25;
      _os_log_impl(&dword_2485E4000, v23, OS_LOG_TYPE_INFO, "Detected Events: %@ #FeatureManager", buf, 0xCu);
    }
  }

  v26 = [(IPFeatureScanner *)self detectedEvents];
  v27 = [(IPFeatureScanner *)self stitchedEventsFromEvents:v26];
  [(IPFeatureScanner *)self setStitchedEvents:v27];

  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v28 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v28 = _IPLogHandle;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      v30 = [(IPFeatureScanner *)self stitchedEvents];
      v31 = [v30 valueForKey:@"ipsos_betterDescription"];
      *buf = 138412290;
      v68 = v31;
      _os_log_impl(&dword_2485E4000, v29, OS_LOG_TYPE_INFO, "Stitched Events: %@ #FeatureManager", buf, 0xCu);
    }
  }

  v32 = [(IPFeatureScanner *)self stitchedEvents];
  v33 = [(IPFeatureScanner *)self bodyMessageUnits];
  v34 = [(IPFeatureTextMessageScanner *)self dataFeaturesExtractedInContextAndMain];
  [(IPFeatureScanner *)self enrichEvents:v32 messageUnits:v33 dateInSubject:0 dataFeatures:v34];

  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v35 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v35 = _IPLogHandle;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = v35;
      v37 = [(IPFeatureScanner *)self stitchedEvents];
      v38 = [v37 valueForKey:@"ipsos_betterDescription"];
      *buf = 138412290;
      v68 = v38;
      _os_log_impl(&dword_2485E4000, v36, OS_LOG_TYPE_INFO, "Enriched Events based on Event Type: %@ #FeatureManager", buf, 0xCu);
    }
  }

  v39 = [(IPFeatureScanner *)self stitchedEvents];
  [(IPFeatureScanner *)self adjustTimeForEvents:v39];

  v40 = [(IPFeatureScanner *)self stitchedEvents];
  [(IPFeatureTextMessageScanner *)self confidenceForEvents:v40];

  v41 = [(IPFeatureScanner *)self stitchedEvents];
  [(IPFeatureTextMessageScanner *)self experimentalConfidenceForEvents:v41];

  v42 = [(IPFeatureScanner *)self stitchedEvents];
  v43 = [(IPFeatureScanner *)self bodyMessageUnits];
  v44 = [v43 firstObject];
  v45 = [v44 originalMessage];
  v46 = [v45 dateSent];
  v47 = [(IPFeatureScanner *)self filteredEventsForDetectedEvents:v42 referenceDate:v46];
  [(IPFeatureScanner *)self setFilteredDetectedEvents:v47];

  v48 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging();
    v48 = _IPLogHandle;
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = v48;
    v50 = [(IPFeatureScanner *)self filteredDetectedEvents];
    v51 = [v50 count];
    *buf = 134217984;
    v68 = v51;
    _os_log_impl(&dword_2485E4000, v49, OS_LOG_TYPE_INFO, "%lu detected events after filtering #FeatureManager", buf, 0xCu);
  }

  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v52 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v52 = _IPLogHandle;
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = v52;
      v54 = [(IPFeatureScanner *)self filteredDetectedEvents];
      v55 = [v54 valueForKey:@"ipsos_betterDescription"];
      *buf = 138412290;
      v68 = v55;
      _os_log_impl(&dword_2485E4000, v53, OS_LOG_TYPE_INFO, "Filtered Events: %@ #FeatureManager", buf, 0xCu);
    }
  }

  v56 = [(IPFeatureScanner *)self filteredDetectedEvents];
  v57 = [v56 count];

  if (v57 < 2)
  {
    v61 = [(IPFeatureScanner *)self filteredDetectedEvents];
    [(IPFeatureScanner *)self normalizedEvents:v61];

    v62 = [(IPFeatureScanner *)self filteredDetectedEvents];
    v63 = [v62 count];

    v64 = [(IPFeatureScanner *)self filteredDetectedEvents];
    v60 = v66;
    (*(v66 + 2))(v66, v64, v63 != 0);
  }

  else
  {
    v58 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v58 = _IPLogHandle;
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v58, OS_LOG_TYPE_INFO, "Bailing out because more than 1 EVENT are detected #FeatureManager", buf, 2u);
    }

    [(IPFeatureScanner *)self setResultType:-68];
    v59 = [(IPFeatureScanner *)self resultType];
    v60 = v66;
    (*(v66 + 2))(v66, MEMORY[0x277CBEBF8], v59);
  }

  v65 = *MEMORY[0x277D85DE8];
}

- (unint64_t)mainSentencePolarityFrom:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = 0.0;
    v8 = 1;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v11 fragments];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v20 + 1) + 8 * j) mainPolarity];
              switch(v17)
              {
                case 2:
                  v7 = v7 + 1.0;
                  break;
                case 3:
                  v9 = v9 + 1.0;
                  break;
                case 4:
                  v8 = 4;
                  goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }

LABEL_19:
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
    if (v7 <= 0.0)
    {
      if (v9 > 0.0)
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)processScanOfMainMessageUnit:(id)a3 contextMessageUnits:(id)a4
{
  v115 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 count];
  v9 = [v7 count];
  v10 = [(IPFeatureTextMessageScanner *)self mainSentencePolarityFromMessageUnit:v6 index:v8];
  if (v10 != 4)
  {
    v86 = v10;
    v14 = objc_opt_new();
    v20 = objc_opt_new();
    v92 = v9;
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v22 = [v7 objectAtIndexedSubscript:i];
        if (([(IPFeatureTextMessageScanner *)self mainSentencePolarityFromMessageUnit:v22 index:i]& 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [v22 text];
          v24 = v23 = self;
          [v20 appendString:v24];

          [v20 appendString:@"\n"];
          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
          [v14 addObject:v25];

          self = v23;
          v9 = v92;
        }
      }
    }

    v26 = [(IPFeatureTextMessageScanner *)self keywordFeaturesForMessageUnit:v6];
    v27 = [v26 mutableCopy];
    [(IPFeatureScanner *)self setBodyKeywordFeatures:v27];

    if ([v20 length])
    {
      v112 = @"IPFeatureExtractorContextText";
      v113 = v20;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
    }

    else
    {
      v28 = 0;
    }

    v82 = v28;
    v29 = [(IPFeatureTextMessageScanner *)self dataDetectorsFeaturesForMessageUnit:v6 context:?];
    v30 = [v29 mutableCopy];
    [(IPFeatureScanner *)self setBodyDataDetectorsFeatures:v30];

    v31 = [(IPFeatureTextMessageScanner *)self dataFeaturesExtractedInContextAndMain];
    v32 = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
    [v31 addObjectsFromArray:v32];

    v33 = objc_alloc(MEMORY[0x277CBEB18]);
    v34 = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
    v35 = [v33 initWithArray:v34];

    v36 = [(IPFeatureScanner *)self bodySentenceFeatures];
    [v35 addObjectsFromArray:v36];

    v37 = [(IPFeatureScanner *)self bodyKeywordFeatures];
    [v35 addObjectsFromArray:v37];

    v85 = v35;
    [(IPFeatureScanner *)self setBodyAllFeatures:v35];
    v38 = v92;
    v84 = v6;
    if ((v86 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v39 = [(IPFeatureScanner *)self bodyKeywordFeatures];
      if ([v39 count])
      {
      }

      else
      {
        v40 = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
        v41 = [v40 count];

        if (!v41)
        {
          v74 = [(IPFeatureTextMessageScanner *)self detectedEventsInContext];
          v75 = [v74 count];

          if (!v75)
          {
            v19 = MEMORY[0x277CBEBF8];
            v71 = v82;
            goto LABEL_46;
          }

          v76 = [(IPFeatureTextMessageScanner *)self detectedEventsInContext];
          v77 = [v76 lastObject];

          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v61 = v77;
          v78 = [v61 countByEnumeratingWithState:&v101 objects:v111 count:16];
          if (v78)
          {
            v79 = v78;
            v80 = *v102;
            do
            {
              for (j = 0; j != v79; ++j)
              {
                if (*v102 != v80)
                {
                  objc_enumerationMutation(v61);
                }

                [*(*(&v101 + 1) + 8 * j) setIpsos_eventStatus:{-[IPFeatureScanner eventStatusFromPolarity:](self, "eventStatusFromPolarity:", v86)}];
              }

              v79 = [v61 countByEnumeratingWithState:&v101 objects:v111 count:16];
            }

            while (v79);
            v19 = v61;
            v71 = v82;
            goto LABEL_45;
          }

          v19 = v61;
LABEL_44:
          v71 = v82;
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }
      }
    }

    v89 = self;
    v83 = v20;
    v90 = objc_opt_new();
    if (v92)
    {
      v42 = 0;
      v43 = 0;
      v44 = MEMORY[0x277CBEC38];
      v87 = v14;
      v88 = v7;
      do
      {
        v45 = v7;
        v46 = [v7 objectAtIndexedSubscript:v43];
        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v43];
        v48 = [v14 containsObject:v47];

        if (v48)
        {
          v91 = v46;
          v49 = [(IPFeatureTextMessageScanner *)v89 keywordFeaturesForMessageUnit:v46];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v50 = [v49 countByEnumeratingWithState:&v97 objects:v110 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v98;
            do
            {
              for (k = 0; k != v51; ++k)
              {
                if (*v98 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                v54 = *(*(&v97 + 1) + 8 * k);
                v55 = [v54 matchRange];
                [v54 matchRange];
                [v54 setMatchRange:{v55 + v42, v56}];
                v57 = [v54 contextDictionary];
                [v57 setObject:v44 forKeyedSubscript:@"extractedInSubject"];
              }

              v51 = [v49 countByEnumeratingWithState:&v97 objects:v110 count:16];
            }

            while (v51);
          }

          [v90 addObjectsFromArray:v49];

          v14 = v87;
          v45 = v88;
          v46 = v91;
          v38 = v92;
        }

        v58 = [v46 text];
        v42 += [v58 length];

        ++v43;
        v7 = v45;
      }

      while (v43 != v38);
    }

    v59 = [(IPFeatureScanner *)v89 bodyKeywordFeatures];
    v60 = [v59 mutableCopy];

    v61 = v90;
    [v60 addObjectsFromArray:v90];
    v19 = [(IPFeatureScanner *)v89 analyzeFeatures:v85 messageUnit:v6 checkPolarity:0 polarity:v86];
    if ([v19 count])
    {
      v62 = [v6 originalMessage];
      [v62 setSubject:v83];

      v63 = [(IPFeatureScanner *)v89 bodyDataDetectorsFeatures];
      v64 = [IPEventClassificationType eventClassificationTypeFromMessageUnit:v6 keywordFeatures:v60 datafeatures:v63];

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v65 = v19;
      v66 = [v65 countByEnumeratingWithState:&v93 objects:v109 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v94;
        do
        {
          for (m = 0; m != v67; ++m)
          {
            if (*v94 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v93 + 1) + 8 * m);
            [v70 setIpsos_eventClassificationType:v64];
            [v70 setIpsos_eventAttributes:{objc_msgSend(v70, "ipsos_eventAttributes") | 4}];
          }

          v67 = [v65 countByEnumeratingWithState:&v93 objects:v109 count:16];
        }

        while (v67);
      }

      v6 = v84;
      v61 = v90;
    }

    v20 = v83;
    goto LABEL_44;
  }

  v11 = [(IPFeatureTextMessageScanner *)self detectedEventsInContext];
  v12 = [v11 lastObject];
  v13 = [v12 copy];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v105 objects:v114 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v106;
    do
    {
      for (n = 0; n != v16; ++n)
      {
        if (*v106 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v105 + 1) + 8 * n) setIpsos_eventStatus:3];
      }

      v16 = [v14 countByEnumeratingWithState:&v105 objects:v114 count:16];
    }

    while (v16);
  }

  v19 = v14;
LABEL_47:

  v72 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)dataDetectorsFeaturesForMessageUnit:(id)a3 context:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataFeatures];

  if (!v8)
  {
    v9 = [objc_opt_class() dataDetectorsFeatureExtractor];
    v16[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

    v11 = [v6 text];
    v12 = [(IPFeatureScanner *)self featuresForTextString:v11 inMessageUnit:v6 extractors:v10 context:v7];
    [v6 setDataFeatures:v12];
  }

  v13 = [v6 dataFeatures];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)sentenceFeaturesForMessageUnit:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sentenceFeatures];

  if (!v5)
  {
    v6 = [objc_opt_class() sentenceFeatureExtractor];
    v7 = [v4 text];
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [(IPFeatureScanner *)self featuresForTextString:v7 inMessageUnit:v4 extractors:v8 context:0];

    [v4 setSentenceFeatures:v9];
  }

  v10 = [v4 sentenceFeatures];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)keywordFeaturesForMessageUnit:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 keywordFeatures];

  if (!v5)
  {
    v6 = [objc_opt_class() keywordFeatureExtractor];
    v7 = [v4 lowercaseTextTruncated];
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [(IPFeatureScanner *)self featuresForTextString:v7 inMessageUnit:v4 extractors:v8 context:0];

    [v4 setKeywordFeatures:v9];
  }

  v10 = [v4 keywordFeatures];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (unint64_t)mainSentencePolarityFromMessageUnit:(id)a3 index:(unint64_t)a4
{
  v5 = [(IPFeatureTextMessageScanner *)self sentenceFeaturesForMessageUnit:a3, a4];
  v6 = [(IPFeatureTextMessageScanner *)self mainSentencePolarityFrom:v5];

  return v6;
}

- (void)resetScanState
{
  [(IPFeatureTextMessageScanner *)self setContextMessageUnits:MEMORY[0x277CBEBF8]];
  v3 = objc_opt_new();
  [(IPFeatureTextMessageScanner *)self setDetectedEventsInContext:v3];

  v4 = objc_opt_new();
  [(IPFeatureTextMessageScanner *)self setDataFeaturesExtractedInContextAndMain:v4];

  [(IPFeatureTextMessageScanner *)self setFollowProposal:0];
  v5.receiver = self;
  v5.super_class = IPFeatureTextMessageScanner;
  [(IPFeatureScanner *)&v5 resetScanState];
}

- (void)confidenceForEvents:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IPFeatureScanner *)self detectedEvents];
  v6 = [v5 count];

  if (v6 <= 4)
  {
    v8 = [(IPFeatureScanner *)self detectedEvents];
    v9 = [v8 count];

    if (v9 <= 3)
    {
      v10 = [(IPFeatureScanner *)self detectedEvents];
      v11 = [v10 count];

      if (v11 <= 2)
      {
        v7 = 1.0;
      }

      else
      {
        v7 = 0.95;
      }
    }

    else
    {
      v7 = 0.9;
    }
  }

  else
  {
    v7 = 0.7;
  }

  v12 = [(IPFeatureScanner *)self stitchedEvents];
  v13 = [v12 count];

  if (v13 >= 4)
  {
    v14 = 0.75;
LABEL_12:
    v7 = v7 * v14;
    goto LABEL_15;
  }

  v15 = [(IPFeatureScanner *)self stitchedEvents];
  v16 = [v15 count];

  if (v16 >= 3)
  {
    v14 = 0.85;
    goto LABEL_12;
  }

  v17 = [(IPFeatureScanner *)self stitchedEvents];
  v18 = [v17 count];

  if (v18 > 1)
  {
    v7 = v7 * 0.95;
  }

LABEL_15:
  v19 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v20 = [v19 count];

  if (v20 > 5)
  {
    v7 = v7 * 0.9;
  }

  v21 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v22 = [v21 count];

  if (v22 >= 4)
  {
    v23 = 1.15;
LABEL_21:
    v7 = v7 * v23;
    goto LABEL_24;
  }

  v24 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v25 = [v24 count];

  if (v25 >= 3)
  {
    v23 = 1.1;
    goto LABEL_21;
  }

  v26 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v27 = [v26 count];

  if (v27 > 1)
  {
    v7 = v7 * 1.05;
  }

LABEL_24:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = v4;
  v29 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v38;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v37 + 1) + 8 * i);
        [(IPFeatureTextMessageScanner *)self confidenceForEvent:v33 baseConfidence:v7, v37];
        v7 = v34;
        v35 = fmin(v34, 1.0);
        if (v35 < 0.0)
        {
          v35 = 0.0;
        }

        [v33 setIpsos_confidence:v35];
      }

      v30 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v30);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (double)confidenceForEvent:(id)a3 baseConfidence:(double)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 isAllDay])
  {
    v6 = 0.95;
LABEL_5:
    a4 = a4 * v6;
    goto LABEL_8;
  }

  if ([v5 ipsos_usesDefaultClassificationTypeStartTime])
  {
    v6 = 0.8;
    goto LABEL_5;
  }

  if ([v5 ipsos_isTimeApproximate])
  {
    a4 = a4 * 0.8;
  }

LABEL_8:
  if ([v5 ipsos_isDateTimeTenseDependent])
  {
    a4 = a4 * 0.8;
  }

  if ([v5 ipsos_timeNeedsMeridianGuess])
  {
    a4 = a4 * 0.9;
  }

  v21 = 0u;
  v22 = 0u;
  if ([v5 ipsos_isEventTimeOnlyAndReferrengingToSentDate])
  {
    a4 = a4 * 0.75;
  }

  v23 = 0uLL;
  v24 = 0uLL;
  v7 = [v5 ipsos_dataFeatures];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v21 + 1) + 8 * i) contextDictionary];
        v15 = [v14 objectForKeyedSubscript:@"polarityProbability"];

        if (v15)
        {
          [v15 doubleValue];
          if (v16 > 0.001)
          {
            v11 = v11 + 1.0;
            v12 = v12 + v16;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);

    if (v11 > 0.0)
    {
      a4 = a4 * ((1.0 - v12 / v11) * -0.5 + 1.0);
    }
  }

  else
  {
  }

  v17 = [v5 title];
  v18 = [v17 length];

  if (!v18)
  {
    a4 = a4 * 0.85;
  }

  v19 = *MEMORY[0x277D85DE8];
  return a4;
}

- (void)experimentalConfidenceForEvents:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IPFeatureTextMessageScanner *)self commonComponentsForConfidence];
  v6 = [v5 objectForKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceNormTextLength"];
  [v6 doubleValue];
  v8 = v7 < 27.5;

  v9 = [v5 objectForKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceNumberOfEventTypes"];
  v10 = [v9 intValue];

  if (v10 >= 2)
  {
    if (v10 >= 4)
    {
      v11 = dbl_24860E030[v10 < 6];
    }

    else
    {
      v11 = 0.05;
    }
  }

  else
  {
    v11 = -0.05;
  }

  v12 = [(IPFeatureScanner *)self stitchedEvents];
  v13 = [v12 count];

  v14 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v15 = [v14 count];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = dbl_24860E020[v8] + v11;
    if (v13 > 1)
    {
      v19 = v19 + -0.02;
    }

    v20 = dbl_24860E040[v15 == 1];
    if (!v15)
    {
      v20 = -0.04;
    }

    v21 = v19 + v20;
    v22 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v27 + 1) + 8 * i);
        [(IPFeatureTextMessageScanner *)self experimentalConfidenceForEvent:v24 experimentalBaseConfidence:v21, v27];
        v21 = v25;
        [v24 setIpsos_experimentalConfidence:?];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (double)experimentalConfidenceForEvent:(id)a3 experimentalBaseConfidence:(double)a4
{
  v6 = a3;
  v7 = [(IPFeatureTextMessageScanner *)self eventSpecificComponentsForConfidence:v6];
  v8 = [v7 objectForKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceMatchedRatio"];
  [v8 doubleValue];
  v10 = v9;

  if (v10 >= 0.02)
  {
    if (v10 >= 0.04)
    {
      if (v10 >= 0.06)
      {
        if (v10 >= 0.11)
        {
          v11 = dbl_24860E050[v10 < 0.15];
        }

        else
        {
          v11 = 0.03;
        }
      }

      else
      {
        v11 = -0.01;
      }
    }

    else
    {
      v11 = -0.02;
    }
  }

  else
  {
    v11 = -0.13;
  }

  v12 = v11 + a4;
  v13 = [v6 ipsos_isTimeApproximate];
  v14 = 0.03;
  if (v13)
  {
    v14 = -0.08;
  }

  v15 = v12 + v14;
  v16 = [v7 objectForKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceDistanceToDates"];
  [v16 doubleValue];
  v18 = v17;

  if (v18 >= 0.97)
  {
    v19 = v15 + 0.1;
  }

  else
  {
    v19 = v15;
  }

  if ([v6 ipsos_usesDefaultClassificationTypeStartTime])
  {
    v19 = v19 + 0.01;
  }

  v20 = [v6 isAllDay];
  v21 = -0.24;
  if (!v20)
  {
    v21 = 0.01;
  }

  v22 = v19 + v21;
  v23 = [v6 title];

  v24 = [v23 length] == 0;
  v25 = v22 + dbl_24860E060[v24];

  return v25;
}

- (id)eventSpecificComponentsForConfidence:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v37 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CBEB58];
  v5 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v6 = [v4 setWithArray:v5];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = [(IPFeatureTextMessageScanner *)self contextMessageUnits];
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v43 + 1) + 8 * i) keywordFeatures];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v9);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = v13;
    v17 = 0;
    v18 = *v40;
    v19 = 0.0;
    v20 = 0.0;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v39 + 1) + 8 * j);
        v23 = [v22 eventTypes];
        v24 = [v38 ipsos_eventClassificationType];
        v25 = [v23 containsObject:v24];

        if (v25)
        {
          v26 = [v22 contextDictionary];
          v27 = [v26 objectForKeyedSubscript:@"IPFeatureKeywordContextDistanceToDate"];
          [v27 doubleValue];
          v20 = v20 + v28;

          v29 = [v22 contextDictionary];
          v30 = [v29 objectForKeyedSubscript:@"IPFeatureKeywordContextMatchedRatio"];
          [v30 doubleValue];
          v19 = v19 + v31;

          ++v17;
        }
      }

      v15 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v15);
    v13 = v16;

    v32 = v37;
    if (v17 >= 1)
    {
      v20 = v20 / v17;
    }
  }

  else
  {

    v19 = 0.0;
    v20 = 0.0;
    v32 = v37;
  }

  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
  [v32 setObject:v33 forKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceDistanceToDates"];

  v34 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  [v32 setObject:v34 forKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceMatchedRatio"];

  v35 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)commonComponentsForConfidence
{
  v133 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CBEB58];
  v5 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v6 = [v4 setWithArray:v5];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v89 = self;
  v7 = [(IPFeatureTextMessageScanner *)self contextMessageUnits];
  v8 = [v7 countByEnumeratingWithState:&v121 objects:v132 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v122;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v122 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v121 + 1) + 8 * i) keywordFeatures];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v121 objects:v132 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x277CBEB58] set];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v117 objects:v131 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v118;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v118 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v117 + 1) + 8 * j) eventTypes];
        [v13 addObjectsFromArray:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v117 objects:v131 count:16];
    }

    while (v16);
  }

  v87 = v13;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
  v88 = v3;
  [v3 setObject:v20 forKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceNumberOfEventTypes"];

  v21 = [MEMORY[0x277CBEB38] dictionary];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = v14;
  v92 = [obj countByEnumeratingWithState:&v113 objects:v130 count:16];
  if (v92)
  {
    v91 = *v114;
    do
    {
      v22 = 0;
      do
      {
        if (*v114 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v94 = v22;
        v23 = *(*(&v113 + 1) + 8 * v22);
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v24 = [v23 eventTypes];
        v25 = [v24 countByEnumeratingWithState:&v109 objects:v129 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v110;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v110 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v109 + 1) + 8 * k);
              v30 = [v29 identifier];
              v31 = [v21 objectForKeyedSubscript:v30];

              if (!v31)
              {
                v32 = [v29 identifier];
                [v21 setObject:&unk_285B089E8 forKeyedSubscript:v32];
              }

              v33 = MEMORY[0x277CCABB0];
              v34 = [v29 identifier];
              v35 = [v21 objectForKeyedSubscript:v34];
              v36 = [v33 numberWithInt:{objc_msgSend(v35, "intValue") + 1}];
              v37 = [v29 identifier];
              [v21 setObject:v36 forKeyedSubscript:v37];
            }

            v26 = [v24 countByEnumeratingWithState:&v109 objects:v129 count:16];
          }

          while (v26);
        }

        v22 = v94 + 1;
      }

      while (v94 + 1 != v92);
      v92 = [obj countByEnumeratingWithState:&v113 objects:v130 count:16];
    }

    while (v92);
  }

  v38 = [v21 allValues];
  v93 = v38;
  if ([v38 count])
  {
    v39 = MEMORY[0x277CCA9C0];
    v40 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v38];
    v128 = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
    v42 = [v39 expressionForFunction:@"stddev:" arguments:v41];

    v43 = [v42 expressionValueWithObject:0 context:0];
    [v43 doubleValue];
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
  [v88 setObject:v46 forKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceEventVariance"];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v47 = [(IPFeatureTextMessageScanner *)v89 contextMessageUnits];
  v48 = [(IPFeatureScanner *)v89 bodyMessageUnits];
  v49 = [v47 arrayByAddingObjectsFromArray:v48];

  v95 = v49;
  v50 = [v49 countByEnumeratingWithState:&v105 objects:v127 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = 0;
    v53 = 0;
    v54 = *v106;
    do
    {
      for (m = 0; m != v51; ++m)
      {
        if (*v106 != v54)
        {
          objc_enumerationMutation(v95);
        }

        v56 = *(*(&v105 + 1) + 8 * m);
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v57 = [v56 sentenceFeatures];
        v58 = [v57 countByEnumeratingWithState:&v101 objects:v126 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v102;
          do
          {
            for (n = 0; n != v59; ++n)
            {
              if (*v102 != v60)
              {
                objc_enumerationMutation(v57);
              }

              v62 = [*(*(&v101 + 1) + 8 * n) polarity];
              if (v62 == 4)
              {
                if ((v52 & 0xFFFFFFFFFFFFFFFELL) == 2)
                {
                  v53 = (v53 + 1);
                }

                else
                {
                  v53 = v53;
                }

                v52 = 4;
              }

              else if ((v62 & 0xFFFFFFFFFFFFFFFELL) == 2)
              {
                if (v52 == 4)
                {
                  v53 = (v53 + 1);
                }

                else
                {
                  v53 = v53;
                }

                v52 = v62;
              }
            }

            v59 = [v57 countByEnumeratingWithState:&v101 objects:v126 count:16];
          }

          while (v59);
        }
      }

      v51 = [v95 countByEnumeratingWithState:&v105 objects:v127 count:16];
    }

    while (v51);
  }

  else
  {
    v53 = 0;
  }

  v63 = [MEMORY[0x277CCABB0] numberWithInt:v53];
  [v88 setObject:v63 forKeyedSubscript:@"IPFeatureTextMessageScannerConfidencePolarityFlips"];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v64 = [(IPFeatureScanner *)v89 bodyMessageUnits];
  v65 = [v64 countByEnumeratingWithState:&v97 objects:v125 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v98;
    v68 = 0.0;
    do
    {
      for (ii = 0; ii != v66; ++ii)
      {
        if (*v98 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v70 = *(*(&v97 + 1) + 8 * ii);
        v71 = [v70 text];
        v72 = [v71 length];
        v73 = [v70 originalMessage];
        v74 = [v73 subject];
        v68 = v68 + ([v74 length] + v72);
      }

      v66 = [v64 countByEnumeratingWithState:&v97 objects:v125 count:16];
    }

    while (v66);
  }

  else
  {
    v68 = 0.0;
  }

  v75 = [(IPFeatureScanner *)v89 bodyMessageUnits];
  v76 = [v75 firstObject];
  v77 = [v76 bestLanguageID];

  v78 = [&unk_285B0FCF0 objectForKeyedSubscript:v77];

  if (v78)
  {
    v79 = [&unk_285B0FCF0 objectForKeyedSubscript:v77];
    [v79 doubleValue];
    v68 = v68 * v80;

    v81 = v87;
    v82 = v93;
  }

  else
  {
    v83 = _IPLogHandle;
    v81 = v87;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v83 = _IPLogHandle;
    }

    v82 = v93;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v83, OS_LOG_TYPE_INFO, "No average sentence length information found for this locale #FeatureManager", buf, 2u);
    }
  }

  v84 = [MEMORY[0x277CCABB0] numberWithDouble:v68];
  [v88 setObject:v84 forKeyedSubscript:@"IPFeatureTextMessageScannerConfidenceNormTextLength"];

  v85 = *MEMORY[0x277D85DE8];

  return v88;
}

@end