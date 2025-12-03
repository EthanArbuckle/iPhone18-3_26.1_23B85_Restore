@interface IPSentenceFeatureExtractor
- (id)eventIdentifierForLanguageID:(id)d;
- (id)featureSentencesFromText:(id)text dataDetectedFeatures:(id)features languageID:(id)d;
- (id)featuresForTextString:(id)string inMessageUnit:(id)unit context:(id)context;
- (id)queue;
- (unint64_t)responseKitAnnotationTypeForFeatureDataType:(unint64_t)type;
- (void)identifyAndStorePolarityInFeatureSentences:(id)sentences eventIdentifier:(id)identifier previousFeatureSentences:(id)featureSentences;
@end

@implementation IPSentenceFeatureExtractor

- (unint64_t)responseKitAnnotationTypeForFeatureDataType:(unint64_t)type
{
  if (type > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_24860E128[type];
  }
}

- (id)featureSentencesFromText:(id)text dataDetectedFeatures:(id)features languageID:(id)d
{
  v35[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  featuresCopy = features;
  dCopy = d;
  if (([dCopy hasPrefix:@"zh"] & 1) != 0 || objc_msgSend(dCopy, "hasPrefix:", @"ja"))
  {
    v11 = [textCopy stringByReplacingOccurrencesOfString:@"。" withString:@"\n"];

    textCopy = [v11 stringByReplacingOccurrencesOfString:@"." withString:@"\n"];
  }

  array = [MEMORY[0x277CBEB18] array];
  v13 = objc_alloc(MEMORY[0x277CCAAE8]);
  v35[0] = *MEMORY[0x277CCA3D8];
  v14 = v35[0];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v16 = [v13 initWithTagSchemes:v15 options:0];

  [v16 setString:textCopy];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3010000000;
  v34[4] = 0;
  v34[5] = 0;
  v34[3] = &unk_24864EF5A;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v17 = [textCopy length];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__IPSentenceFeatureExtractor_featureSentencesFromText_dataDetectedFeatures_languageID___block_invoke;
  v25[3] = &unk_278F232D0;
  v31 = v34;
  v18 = textCopy;
  v26 = v18;
  v19 = dCopy;
  v27 = v19;
  v20 = array;
  v28 = v20;
  v32 = v33;
  v21 = featuresCopy;
  v29 = v21;
  selfCopy = self;
  [v16 enumerateTagsInRange:0 scheme:v17 options:v14 usingBlock:{4, v25}];
  v22 = v20;

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v34, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __87__IPSentenceFeatureExtractor_featureSentencesFromText_dataDetectedFeatures_languageID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = *(*(a1 + 72) + 8);
  if (a5 == *(v10 + 32) && a6 == *(v10 + 40))
  {
    goto LABEL_18;
  }

  v24 = v9;
  *(v10 + 32) = a5;
  *(v10 + 40) = a6;
  v23 = [*(a1 + 32) substringWithRange:{a5, a6}];
  v12 = [objc_alloc(MEMORY[0x277D46BE0]) initWithString:v23 andLanguageIdentifier:*(a1 + 40)];
  v13 = [[IPFeatureSentence alloc] initWithLanguageID:*(a1 + 40) responseKitSentence:v12];
  [(IPFeature *)v13 setMatchRange:a5, a6];
  [(IPFeature *)v13 setTextUnit:*(a1 + 32)];
  [*(a1 + 48) addObject:v13];
  v14 = *(*(*(a1 + 80) + 8) + 24);
  if (v14 >= [*(a1 + 56) count])
  {
    goto LABEL_17;
  }

  while (1)
  {
    v15 = [*(a1 + 56) objectAtIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
    v16 = [v15 matchRange];
    if (v16 + v17 > a5)
    {
      break;
    }

LABEL_14:
    ++*(*(*(a1 + 80) + 8) + 24);

    v22 = *(*(*(a1 + 80) + 8) + 24);
    if (v22 >= [*(a1 + 56) count])
    {
      goto LABEL_17;
    }
  }

  if (v16 < a5 + a6)
  {
    v18 = v16 - a5;
    if (v16 >= a5)
    {
      v19 = v17;
      v20 = [*(a1 + 64) responseKitAnnotationTypeForFeatureDataType:{objc_msgSend(v15, "type")}];
      if (v20)
      {
        if (v19 >= a6 - v18)
        {
          v21 = a6 - v18;
        }

        else
        {
          v21 = v19;
        }

        [v12 annotateRange:v18 type:{v21, v20}];
      }
    }

    goto LABEL_14;
  }

LABEL_17:
  v9 = v24;
LABEL_18:
}

- (void)identifyAndStorePolarityInFeatureSentences:(id)sentences eventIdentifier:(id)identifier previousFeatureSentences:(id)featureSentences
{
  featureSentencesCopy = featureSentences;
  identifierCopy = identifier;
  sentencesCopy = sentences;
  v10 = [featureSentencesCopy count];
  array = [MEMORY[0x277CBEB18] array];
  [array addObjectsFromArray:featureSentencesCopy];

  [array addObjectsFromArray:sentencesCopy];
  v12 = NSStringFromSelector(sel_responseKitSentence);
  v13 = [array valueForKey:v12];

  v14 = [identifierCopy identifyText:v13];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__IPSentenceFeatureExtractor_identifyAndStorePolarityInFeatureSentences_eventIdentifier_previousFeatureSentences___block_invoke;
  v16[3] = &unk_278F232F8;
  v17 = array;
  v18 = v10;
  v15 = array;
  [v14 enumerateClassifiedTokens:v16];
}

void __114__IPSentenceFeatureExtractor_identifyAndStorePolarityInFeatureSentences_eventIdentifier_previousFeatureSentences___block_invoke(uint64_t a1, unint64_t *a2, float *a3)
{
  v6 = *a2;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:*a2];
  if (v6 >= *(a1 + 40))
  {
    v8 = a3[1];
    v9 = a3[3];
    v10 = a3[4];
    v11 = a3[2];
    if (fmax(v10, v11) <= 0.4)
    {
      v12 = 0;
    }

    else
    {
      v12 = 6;
    }

    v14 = v7;
    v13 = [IPFeatureSentenceFragment fragmentWithRange:a2[1] clusterType:a2[2], v12];
    [v13 setProbability_None:v8];
    [v13 setProbability_Rejection:v9];
    [v13 setProbability_Proposal:v10];
    [v13 setProbability_Confirmation:v11];
    [v14 addFragment:v13];

    v7 = v14;
  }
}

- (id)eventIdentifierForLanguageID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__IPSentenceFeatureExtractor_eventIdentifierForLanguageID___block_invoke;
  v22[3] = &unk_278F23370;
  v22[4] = self;
  if (eventIdentifierForLanguageID__onceToken == -1)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&eventIdentifierForLanguageID__onceToken, v22);
    if (dCopy)
    {
LABEL_3:
      v6 = [eventIdentifierForLanguageID__sResponseKitEventIdentifierPerLanguageID objectForKey:dCopy];
      if (v6)
      {
        null = [MEMORY[0x277CBEB68] null];
        v8 = v6 == null;

        if (!v8)
        {
          v9 = v6;
LABEL_15:

          goto LABEL_18;
        }
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x277D46BD0]) initWithLanguageID:dCopy];
        if (v9)
        {
          [eventIdentifierForLanguageID__sResponseKitEventIdentifierPerLanguageID setObject:v9 forKey:dCopy];
          goto LABEL_15;
        }

        v10 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:dCopy];
        v11 = [v10 objectForKey:*MEMORY[0x277CBE6C8]];
        v12 = [&unk_285B0FC90 containsObject:v11];

        if (v12)
        {
          v13 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v13 = _IPLogHandle;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v24 = dCopy;
            _os_log_impl(&dword_2485E4000, v13, OS_LOG_TYPE_ERROR, "%{public}@ is supposed to be a supported language but we have failed to load the corresponding ResponseKit model. This usually means that the corresponding LinguisticData assets have not been downloaded #Generic", buf, 0xCu);
          }
        }

        v14 = eventIdentifierForLanguageID__sResponseKitEventIdentifierPerLanguageID;
        null2 = [MEMORY[0x277CBEB68] null];
        [v14 setObject:null2 forKey:dCopy];

        v16 = dispatch_time(0, 43200000000000);
        v17 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __59__IPSentenceFeatureExtractor_eventIdentifierForLanguageID___block_invoke_60;
        block[3] = &unk_278F22D30;
        block[4] = self;
        v21 = dCopy;
        dispatch_after(v16, v17, block);
      }

      v9 = 0;
      goto LABEL_15;
    }
  }

  v9 = 0;
LABEL_18:
  objc_sync_exit(v5);

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

void __59__IPSentenceFeatureExtractor_eventIdentifierForLanguageID___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:3];
  v3 = eventIdentifierForLanguageID__sResponseKitEventIdentifierPerLanguageID;
  eventIdentifierForLanguageID__sResponseKitEventIdentifierPerLanguageID = v2;

  out_token = 0;
  v4 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__IPSentenceFeatureExtractor_eventIdentifierForLanguageID___block_invoke_2;
  handler[3] = &unk_278F23320;
  handler[4] = *(a1 + 32);
  notify_register_dispatch("com.apple.MobileAsset.LinguisticData.new-asset-installed", &out_token, v4, handler);

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__IPSentenceFeatureExtractor_eventIdentifierForLanguageID___block_invoke_36;
  v7[3] = &unk_278F23348;
  v7[4] = *(a1 + 32);
  v6 = [v5 addObserverForName:@"IPScannerResetSharedCachesAndModelsNotification" object:0 queue:0 usingBlock:v7];
}

void __59__IPSentenceFeatureExtractor_eventIdentifierForLanguageID___block_invoke_2(uint64_t a1)
{
  v2 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging();
    v2 = _IPLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_2485E4000, v2, OS_LOG_TYPE_INFO, "Received new asset installation notification #Generic", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  [eventIdentifierForLanguageID__sResponseKitEventIdentifierPerLanguageID removeAllObjects];
  objc_sync_exit(v4);
}

void __59__IPSentenceFeatureExtractor_eventIdentifierForLanguageID___block_invoke_36(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  [eventIdentifierForLanguageID__sResponseKitEventIdentifierPerLanguageID removeAllObjects];
  objc_sync_exit(v4);
}

void __59__IPSentenceFeatureExtractor_eventIdentifierForLanguageID___block_invoke_60(uint64_t a1)
{
  v2 = *(a1 + 32);
  obj = objc_opt_class();
  objc_sync_enter(obj);
  [eventIdentifierForLanguageID__sResponseKitEventIdentifierPerLanguageID removeObjectForKey:*(a1 + 40)];
  objc_sync_exit(obj);
}

- (id)featuresForTextString:(id)string inMessageUnit:(id)unit context:(id)context
{
  stringCopy = string;
  unitCopy = unit;
  contextCopy = context;
  v10 = objc_opt_class();
  objc_sync_enter(v10);
  bestLanguageID = [unitCopy bestLanguageID];
  v12 = [(IPSentenceFeatureExtractor *)self eventIdentifierForLanguageID:bestLanguageID];
  if (v12)
  {
    originalMessage = [unitCopy originalMessage];
    type = [originalMessage type];
    v15 = IPMessageTypeShortMessage;

    v16 = [contextCopy objectForKeyedSubscript:@"IPFeatureExtractorContextDataDetectorsFeatures"];
    if (type == v15)
    {
      v17 = [contextCopy objectForKeyedSubscript:@"IPFeatureExtractorPreviousFeatureSentences"];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    v18 = [(IPSentenceFeatureExtractor *)self featureSentencesFromText:stringCopy dataDetectedFeatures:v16 languageID:bestLanguageID];
    [(IPSentenceFeatureExtractor *)self identifyAndStorePolarityInFeatureSentences:v18 eventIdentifier:v12 previousFeatureSentences:v17];
  }

  else
  {
    v18 = 0;
  }

  objc_sync_exit(v10);
  if (v12)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

- (id)queue
{
  if (queue__onceToken_1 != -1)
  {
    [IPSentenceFeatureExtractor queue];
  }

  v3 = queue__ipExprOnceResult_1;

  return v3;
}

void __35__IPSentenceFeatureExtractor_queue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("IPSentenceFeatureExtractor", v1);
  v3 = queue__ipExprOnceResult_1;
  queue__ipExprOnceResult_1 = v2;

  objc_autoreleasePoolPop(v0);
}

@end