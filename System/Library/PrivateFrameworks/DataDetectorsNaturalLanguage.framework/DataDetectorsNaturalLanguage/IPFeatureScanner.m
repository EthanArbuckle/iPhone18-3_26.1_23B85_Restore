@interface IPFeatureScanner
+ (id)dataDetectorsFeatureExtractor;
+ (id)descriptionForScanResultType:(int64_t)a3;
+ (id)eventStore;
+ (id)keywordFeatureExtractor;
+ (id)sentenceFeatureExtractor;
+ (void)resetSharedCachesAndModels;
- (BOOL)dataFeatures:(id)a3 containDateOlderThan:(id)a4 preciseTimeOnly:(BOOL)a5;
- (BOOL)isDateAroundNoon:(id)a3;
- (BOOL)isDateRoundedTo5Minutes:(id)a3;
- (BOOL)isEventProposalOrConfirmationFromFeatures:(id)a3 fromFeatureAtIndex:(unint64_t)a4 messageUnit:(id)a5 eventIsTenseDependent:(BOOL)a6 extractedFromSubject:(BOOL)a7 extractedPolarity:(unint64_t *)a8 polarityInfluencedByIpsosPlistRef:(BOOL *)a9;
- (BOOL)shouldReplaceSendDateWithCurrentDate;
- (id)_featureDataInFeatures:(id)a3 atIndex:(unint64_t)a4;
- (id)_featureSentenceInFeatures:(id)a3 atIndex:(unint64_t)a4;
- (id)_featureWithClass:(Class)a3 inFeatures:(id)a4 atIndex:(unint64_t)a5;
- (id)_nearbyFeatureDatas:(id)a3 fromFeatureAtIndex:(unint64_t)a4 messageUnit:(id)a5;
- (id)_nearbyFeatureSentences:(id)a3 fromFeatureAtIndex:(unint64_t)a4 messageUnit:(id)a5;
- (id)_regroupEventsWithSpreadTimeAsAllDayEvents:(id)a3;
- (id)_sortedFeaturesByDistance:(id)a3 aroundRange:(_NSRange)a4;
- (id)_sortedFeaturesByRange:(id)a3;
- (id)_stitchedEventsFromEvents:(id)a3;
- (id)analyzeFeatures:(id)a3 messageUnit:(id)a4 checkPolarity:(BOOL)a5 polarity:(unint64_t)a6;
- (id)bestEventsFromEvents:(id)a3;
- (id)cleanedStringForFeatureData:(id)a3;
- (id)dataFeaturesInTheFutureFromDataFeatures:(id)a3 messageUnitSentDate:(id)a4;
- (id)decoratedTitle:(id)a3 withSubtitles:(id)a4;
- (id)decoratedTitleFromEventType:(id)a3 title:(id)a4 sender:(id)a5 recipients:(id)a6 isSent:(BOOL)a7 isTitleSenderDecorated:(BOOL *)a8;
- (id)featuresForTextString:(id)a3 inMessageUnit:(id)a4 extractors:(id)a5 context:(id)a6;
- (id)filteredEventsForDetectedEvents:(id)a3 referenceDate:(id)a4;
- (id)messageSenderName;
- (id)normalizedAllDayDateFromDate:(id)a3;
- (id)shortNameForPerson:(id)a3;
- (id)stitchedEventsFromEvents:(id)a3;
- (id)stringsFromDataFeatures:(id)a3 matchingTypes:(id)a4;
- (unint64_t)_distanceBetweenFeature:(id)a3 andFeature:(id)a4;
- (unint64_t)countOfFeaturesContainDateInTheFuture:(id)a3 messageUnitSentDate:(id)a4;
- (unint64_t)eventStatusFromPolarity:(unint64_t)a3;
- (unint64_t)featureSentencePolarityForFeatureAtIndex:(unint64_t)a3 inFeatures:(id)a4;
- (void)adjustTimeForEvent:(id)a3;
- (void)adjustTimeForEvents:(id)a3;
- (void)augmentDetectedDatesWithEndDates:(id)a3;
- (void)confidenceForEvents:(id)a3;
- (void)enrichEvents:(id)a3 messageUnits:(id)a4 dateInSubject:(id)a5 dataFeatures:(id)a6;
- (void)normalizedEvents:(id)a3;
- (void)resetScanState;
@end

@implementation IPFeatureScanner

+ (void)resetSharedCachesAndModels
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"IPScannerResetSharedCachesAndModelsNotification" object:0];
}

+ (id)eventStore
{
  if (_sharedEventStore)
  {
    v2 = _sharedEventStore;
  }

  else
  {
    if (eventStore__pasOnceToken2 != -1)
    {
      +[IPFeatureScanner eventStore];
    }

    v2 = [eventStore__pasExprOnceResult result];
  }

  return v2;
}

void __30__IPFeatureScanner_eventStore__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_16 idleTimeout:5.0];
  v2 = eventStore__pasExprOnceResult;
  eventStore__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __30__IPFeatureScanner_eventStore__block_invoke_2()
{
  v0 = objc_opt_new();

  return v0;
}

- (void)resetScanState
{
  [(IPFeatureScanner *)self setBodyMessageUnits:0];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  [(IPFeatureScanner *)self setDetectedEvents:v3];

  v4 = MEMORY[0x277CBEBF8];
  [(IPFeatureScanner *)self setStitchedEvents:MEMORY[0x277CBEBF8]];
  [(IPFeatureScanner *)self setFilteredDetectedEvents:v4];
  [(IPFeatureScanner *)self setResultType:0];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  [(IPFeatureScanner *)self setBodyAllFeatures:v5];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  [(IPFeatureScanner *)self setBodyDataDetectorsFeatures:v6];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  [(IPFeatureScanner *)self setBodyKeywordFeatures:v7];

  v8 = [MEMORY[0x277CBEB58] setWithCapacity:5];
  [(IPFeatureScanner *)self setExtractedNotesStrings:v8];

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  [(IPFeatureScanner *)self setBodySentenceFeatures:v9];
}

+ (id)dataDetectorsFeatureExtractor
{
  if (dataDetectorsFeatureExtractor_onceToken != -1)
  {
    +[IPFeatureScanner dataDetectorsFeatureExtractor];
  }

  v3 = dataDetectorsFeatureExtractor_sExtractor;

  return v3;
}

uint64_t __49__IPFeatureScanner_dataDetectorsFeatureExtractor__block_invoke()
{
  dataDetectorsFeatureExtractor_sExtractor = +[(IPFeatureExtractor *)IPDataDetectorsFeatureExtractor];

  return MEMORY[0x2821F96F8]();
}

+ (id)keywordFeatureExtractor
{
  if (keywordFeatureExtractor_onceToken != -1)
  {
    +[IPFeatureScanner keywordFeatureExtractor];
  }

  v3 = keywordFeatureExtractor_kFeatureExtractor;

  return v3;
}

uint64_t __43__IPFeatureScanner_keywordFeatureExtractor__block_invoke()
{
  keywordFeatureExtractor_kFeatureExtractor = +[(IPFeatureExtractor *)IPKeywordFeatureExtractor];

  return MEMORY[0x2821F96F8]();
}

+ (id)sentenceFeatureExtractor
{
  if (sentenceFeatureExtractor_onceToken != -1)
  {
    +[IPFeatureScanner sentenceFeatureExtractor];
  }

  v3 = sentenceFeatureExtractor_sFeatureExtractor;

  return v3;
}

uint64_t __44__IPFeatureScanner_sentenceFeatureExtractor__block_invoke()
{
  sentenceFeatureExtractor_sFeatureExtractor = +[(IPFeatureExtractor *)IPSentenceFeatureExtractor];

  return MEMORY[0x2821F96F8]();
}

- (id)_sortedFeaturesByRange:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 sortUsingComparator:&__block_literal_global_36];

  return v3;
}

uint64_t __43__IPFeatureScanner__sortedFeaturesByRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 matchRange];
  v6 = [v4 matchRange];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (unint64_t)_distanceBetweenFeature:(id)a3 andFeature:(id)a4
{
  v5 = a4;
  v6 = [a3 matchRange];
  v8 = v7;
  v9 = [v5 matchRange];
  v11 = v10;

  v12 = v6 - (v11 + v9);
  if (v12 >= v9 - (v6 + v8))
  {
    v12 = v9 - (v6 + v8);
  }

  if (v12 >= 0)
  {
    return v12;
  }

  else
  {
    return -v12;
  }
}

- (id)_sortedFeaturesByDistance:(id)a3 aroundRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = [a3 mutableCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__IPFeatureScanner__sortedFeaturesByDistance_aroundRange___block_invoke;
  v8[3] = &__block_descriptor_48_e33_q24__0__IPFeature_8__IPFeature_16l;
  v8[4] = location;
  v8[5] = location + length;
  [v6 sortUsingComparator:v8];

  return v6;
}

uint64_t __58__IPFeatureScanner__sortedFeaturesByDistance_aroundRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 matchRange];
  v8 = v7;
  v9 = [v5 matchRange];
  v11 = v10;

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v12 - (v6 + v8);
  if (v14 >= v6 - v13)
  {
    v14 = v6 - v13;
  }

  v15 = v12 - (v9 + v11);
  v16 = v9 - v13;
  if (v15 >= v16)
  {
    v15 = v16;
  }

  v17 = v14 == v15;
  v18 = v14 < v15;
  v19 = -1;
  if (!v18)
  {
    v19 = 1;
  }

  if (v17)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

- (id)_featureWithClass:(Class)a3 inFeatures:(id)a4 atIndex:(unint64_t)a5
{
  v6 = a4;
  if ([v6 count] > a5)
  {
    v7 = [v6 objectAtIndexedSubscript:a5];
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)featuresForTextString:(id)a3 inMessageUnit:(id)a4 extractors:(id)a5 context:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v33 = a4;
  v10 = a5;
  v34 = a6;
  v29 = v9;
  v30 = v10;
  if (v9)
  {
    v11 = v9;
    if ([v11 length] >= 0x2711)
    {
      v12 = v11;
      v11 = [v11 substringToIndex:10000];
    }

    v32 = v11;
    if ([v10 count] == 1)
    {
      v13 = [v10 firstObject];
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy_;
      v57 = __Block_byref_object_dispose_;
      v58 = 0;
      v14 = [v13 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke;
      block[3] = &unk_278F22D08;
      v52 = &v53;
      v48 = v13;
      v49 = v32;
      v50 = v33;
      v51 = v34;
      v15 = v13;
      dispatch_sync(v14, block);

      v16 = v54[5];
      _Block_object_dispose(&v53, 8);
    }

    else
    {
      v17 = dispatch_group_create();
      v18 = [MEMORY[0x277CBEB18] array];
      if (featuresForTextString_inMessageUnit_extractors_context__onceToken != -1)
      {
        [IPFeatureScanner featuresForTextString:inMessageUnit:extractors:context:];
      }

      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v43 = 0u;
      obj = v10;
      v19 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
      if (v19)
      {
        v20 = *v44;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v43 + 1) + 8 * i);
            v23 = [v22 queue];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_3;
            v38[3] = &unk_278F22D58;
            v38[4] = v22;
            v39 = v32;
            v40 = v33;
            v41 = v34;
            v42 = v18;
            dispatch_group_async(v17, v23, v38);
          }

          v19 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
        }

        while (v19);
      }

      v24 = dispatch_time(0, 60000000000);
      dispatch_group_wait(v17, v24);
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy_;
      v57 = __Block_byref_object_dispose_;
      v58 = 0;
      v25 = featuresForTextString_inMessageUnit_extractors_context__sResponseQueue;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_5;
      v35[3] = &unk_278F22D80;
      v36 = v18;
      v37 = &v53;
      v26 = v18;
      dispatch_sync(v25, v35);
      v16 = v54[5];

      _Block_object_dispose(&v53, 8);
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) featuresForTextString:*(a1 + 40) inMessageUnit:*(a1 + 48) context:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Ipsos.IPFeatureManager.response", v2);
  v1 = featuresForTextString_inMessageUnit_extractors_context__sResponseQueue;
  featuresForTextString_inMessageUnit_extractors_context__sResponseQueue = v0;
}

void __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) featuresForTextString:*(a1 + 40) inMessageUnit:*(a1 + 48) context:*(a1 + 56)];
  if ([v2 count])
  {
    v3 = featuresForTextString_inMessageUnit_extractors_context__sResponseQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_4;
    v4[3] = &unk_278F22D30;
    v5 = v2;
    v6 = *(a1 + 64);
    dispatch_sync(v3, v4);
  }
}

uint64_t __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_4(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) addObjectsFromArray:?];
  }

  return result;
}

uint64_t __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_featureDataInFeatures:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(IPFeatureScanner *)self _featureWithClass:objc_opt_class() inFeatures:v6 atIndex:a4];

  return v7;
}

- (id)_featureSentenceInFeatures:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(IPFeatureScanner *)self _featureWithClass:objc_opt_class() inFeatures:v6 atIndex:a4];

  return v7;
}

- (id)_nearbyFeatureDatas:(id)a3 fromFeatureAtIndex:(unint64_t)a4 messageUnit:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a5 originalMessage];
  v37 = [v9 dateSent];

  v39 = [(IPFeatureScanner *)self _featureWithClass:objc_opt_class() inFeatures:v8 atIndex:a4];
  v10 = [v39 matchRange];
  v12 = v11;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v34 = v8;
  [(IPFeatureScanner *)self _sortedFeaturesByDistance:v8 aroundRange:v10, v12];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = v43 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v41;
    v19 = 0x278F22000uLL;
    v20 = 0x278F22000uLL;
    do
    {
      v21 = 0;
      v36 = v16;
      do
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v40 + 1) + 8 * v21);
        v23 = *(v19 + 2496);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (++v17 > 6 || [(IPFeatureScanner *)self _distanceBetweenFeature:v39 andFeature:v22]> 0x7D0)
          {
            goto LABEL_21;
          }

          v24 = *(v20 + 2488);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v39 != v22)
          {
            v25 = v22;
            v26 = [v13 lastObject];
            if ([v26 type] && objc_msgSend(v26, "type") != 1)
            {
              goto LABEL_17;
            }

            v27 = v20;
            v28 = v19;
            v29 = v14;
            v30 = v13;
            v31 = [v26 value];
            if ([v31 compare:v37] != -1)
            {

              v13 = v30;
              v14 = v29;
              v19 = v28;
              v20 = v27;
              v16 = v36;
              goto LABEL_17;
            }

            v35 = [v25 type];

            v13 = v30;
            v14 = v29;
            v19 = v28;
            v20 = v27;
            v16 = v36;
            if (v35 == 5)
            {
              [v13 removeLastObject];
            }

            else
            {
LABEL_17:
              [v13 addObject:v25];
            }
          }
        }

        ++v21;
      }

      while (v16 != v21);
      v16 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v16);
  }

LABEL_21:

  v32 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_nearbyFeatureSentences:(id)a3 fromFeatureAtIndex:(unint64_t)a4 messageUnit:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(IPFeatureScanner *)self _featureWithClass:objc_opt_class() inFeatures:v7 atIndex:a4];
  v9 = [v8 matchRange];
  v11 = v10;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v22 = v7;
  [(IPFeatureScanner *)self _sortedFeaturesByDistance:v7 aroundRange:v9, v11];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v26 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v24;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v24 != v17)
      {
        objc_enumerationMutation(v13);
      }

      if (v16 > 5)
      {
        break;
      }

      v19 = *(*(&v23 + 1) + 8 * v18);
      if ([(IPFeatureScanner *)self _distanceBetweenFeature:v8 andFeature:v19]> 0x3E8)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v8 != v19)
      {
        [v12 addObject:v19];
        ++v16;
      }

      if (v15 == ++v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)shouldReplaceSendDateWithCurrentDate
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"IPFeatureManagersReplaceSendDateWithCurrentDate"];

  return v3;
}

- (void)augmentDetectedDatesWithEndDates:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v28;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 type];
        if (v10 < 2)
        {
          v11 = [v9 contextDictionary];
          v12 = [v11 objectForKeyedSubscript:@"endDate"];

          if (v12)
          {
            v13 = v6;
            v6 = 0;
          }

          else
          {
            v25 = v9;
            v13 = v6;
            v6 = v25;
          }

LABEL_18:

          continue;
        }

        if (v10 == 2)
        {
          v14 = [v9 matchRange];
          v15 = [v6 matchRange];
          v17 = v14 - (v16 + v15);
          if (v17 < 0)
          {
            v17 = v16 + v15 - v14;
          }

          if (v17 <= 0x31)
          {
            v18 = [v9 contextDictionary];
            v13 = [v18 objectForKeyedSubscript:@"endDate"];

            v19 = [v6 value];
            [v13 timeIntervalSinceReferenceDate];
            v21 = v20;
            [v19 timeIntervalSinceReferenceDate];
            v23 = v21 - v22;
            if (v23 >= 1800.0 && v23 < 43200.0)
            {
              v24 = [v6 contextDictionary];
              [v24 setObject:v13 forKeyedSubscript:@"endDate"];
            }

            goto LABEL_18;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v5)
      {
        goto LABEL_23;
      }
    }
  }

  v6 = 0;
LABEL_23:

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)featureSentencePolarityForFeatureAtIndex:(unint64_t)a3 inFeatures:(id)a4
{
  v6 = a4;
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 matchRange];
  v9 = 0;
  while (1)
  {
    v10 = [(IPFeatureScanner *)self _featureSentenceInFeatures:v6 atIndex:a3];
    if (v10)
    {
      v11 = [v7 matchRange];
      if (v8 >= v11 && v8 - v11 < v12)
      {
        break;
      }
    }

    if (++v9 >= 5)
    {
      v13 = 0;
      goto LABEL_8;
    }
  }

  v13 = [v10 polarity];

LABEL_8:
  return v13;
}

- (BOOL)isDateAroundNoon:(id)a3
{
  v3 = a3;
  if (IPGregorianCalendar_once != -1)
  {
    [IPFeatureScanner isDateAroundNoon:];
  }

  v4 = [IPGregorianCalendar_calendar components:32 fromDate:v3];
  v5 = [v4 hour] >= 11 && objc_msgSend(v4, "hour") < 14;

  return v5;
}

- (BOOL)isDateRoundedTo5Minutes:(id)a3
{
  v3 = a3;
  if (IPGregorianCalendar_once != -1)
  {
    [IPFeatureScanner isDateAroundNoon:];
  }

  v4 = [IPGregorianCalendar_calendar components:192 fromDate:v3];
  if ([v4 second])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * [v4 minute] + 0x1999999999999999 < 0x3333333333333333;
  }

  return v5;
}

- (id)dataFeaturesInTheFutureFromDataFeatures:(id)a3 messageUnitSentDate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v6 dateByAddingTimeInterval:600.0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (![v14 type] || objc_msgSend(v14, "type") == 1)
        {
          v15 = [v14 value];
          if ([v15 compare:v8] != -1)
          {
            [v7 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)countOfFeaturesContainDateInTheFuture:(id)a3 messageUnitSentDate:(id)a4
{
  v4 = [(IPFeatureScanner *)self dataFeaturesInTheFutureFromDataFeatures:a3 messageUnitSentDate:a4];
  v5 = [v4 count];

  return v5;
}

- (BOOL)dataFeatures:(id)a3 containDateOlderThan:(id)a4 preciseTimeOnly:(BOOL)a5
{
  v29 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        if (![v13 type] || objc_msgSend(v13, "type") == 1)
        {
          v14 = [v13 value];
          if ([v14 compare:v7] == -1)
          {
            if (!v29)
            {
              goto LABEL_17;
            }

            v15 = [v13 contextDictionary];
            [v15 objectForKeyedSubscript:@"timeIsApproximate"];
            v17 = v16 = v8;
            v30 = [v17 BOOLValue];

            v18 = [v13 contextDictionary];
            v19 = [v18 objectForKeyedSubscript:@"allDay"];
            v20 = [v19 BOOLValue];

            v21 = [v13 contextDictionary];
            v22 = [v21 objectForKeyedSubscript:@"dateTimeIsTenseDependent"];
            v23 = [v22 BOOLValue];

            v8 = v16;
            v24 = [(IPFeatureScanner *)self isDateRoundedTo5Minutes:v14];
            if ((v20 & 1) == 0 && (v23 & 1) == 0 && (v30 & v24) == 0)
            {
LABEL_17:

              v25 = 1;
              goto LABEL_18;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)isEventProposalOrConfirmationFromFeatures:(id)a3 fromFeatureAtIndex:(unint64_t)a4 messageUnit:(id)a5 eventIsTenseDependent:(BOOL)a6 extractedFromSubject:(BOOL)a7 extractedPolarity:(unint64_t *)a8 polarityInfluencedByIpsosPlistRef:(BOOL *)a9
{
  v10 = a7;
  v11 = a6;
  v113 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = v16;
  *a8 = 1;
  if (v10)
  {
    v18 = [v16 originalMessage];
    v19 = [v18 type];
    v20 = IPMessageTypeShortMessage;

    if (v19 == v20)
    {
      v35 = 0;
      goto LABEL_165;
    }
  }

  v21 = [v15 objectAtIndexedSubscript:a4];
  v22 = [v21 matchRange];
  v24 = v23;
  v25 = [(IPFeatureScanner *)self _nearbyFeatureSentences:v15 fromFeatureAtIndex:a4 messageUnit:v17];
  if (![v25 count])
  {
    v35 = 0;
    v28 = v25;
    goto LABEL_164;
  }

  v96 = v24;
  v26 = [v25 count];
  if (v26 >= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v25 subarrayWithRange:{0, v27}];

  v29 = [v28 firstObject];
  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  v97 = v29;
  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v30 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v30 = _IPLogHandle;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = v30;
      [v21 matchString];
      v33 = v32 = v21;
      *buf = 138412546;
      v110 = v33;
      v111 = 2112;
      v112 = v97;
      _os_log_impl(&dword_2485E4000, v31, OS_LOG_TYPE_INFO, "Evaluating main feature sentence containing date [%@]: %@ #FeatureManager", buf, 0x16u);

      v21 = v32;
      v29 = v97;
    }
  }

  if ([v29 isQuoteAttributionLine])
  {
    v34 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v34 = _IPLogHandle;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v34, OS_LOG_TYPE_INFO, "Skip main feature because it is a QUOTE ATTRIBUTION LINE #FeatureManager", buf, 2u);
    }

    v35 = 0;
    v29 = v97;
    goto LABEL_163;
  }

  v36 = [v29 eventVocabularyIgnoreDateKeyword];

  if (v36)
  {
    v37 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v37 = _IPLogHandle;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v37, OS_LOG_TYPE_INFO, "Skip main feature because it contains IGNORE vocabulary #FeatureManager", buf, 2u);
    }

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v38 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v38 = _IPLogHandle;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = v38;
        v40 = [v29 eventVocabularyIgnoreDateKeyword];
        *buf = 138412290;
        v110 = v40;
        _os_log_impl(&dword_2485E4000, v39, OS_LOG_TYPE_INFO, "Keyword: [%@] #FeatureManager", buf, 0xCu);
      }
    }

    v35 = 0;
    *a9 = 1;
    goto LABEL_163;
  }

  v94 = v21;
  if (v11 && ([v29 matchString], v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "languageID"), v42 = objc_claimAutoreleasedReturnValue(), v43 = +[IPTenseDetector tenseOfString:languageID:](IPTenseDetector, "tenseOfString:languageID:", v41, v42), v42, v41, !v43))
  {
    v64 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v64 = _IPLogHandle;
    }

    v44 = 1;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v64, OS_LOG_TYPE_INFO, "Event SEEMS to be in the PAST. Let's check the fragment polarity. #FeatureManager", buf, 2u);
    }
  }

  else
  {
    v44 = 0;
  }

  obj = v44;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v92 = v28;
  v45 = v28;
  v46 = [v45 countByEnumeratingWithState:&v103 objects:v108 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v104;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v104 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v103 + 1) + 8 * i) eventVocabularyRejectionKeyword];
        if (v50)
        {
          v57 = v50;
          v58 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v58 = _IPLogHandle;
          }

          v28 = v92;
          v29 = v97;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v58, OS_LOG_TYPE_INFO, "Skip because a REJECTION keyword was found nearby #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v59 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v59 = _IPLogHandle;
            }

            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v110 = v57;
              _os_log_impl(&dword_2485E4000, v59, OS_LOG_TYPE_INFO, "Keyword: %@ #FeatureManager", buf, 0xCu);
            }
          }

          *a9 = 1;

          v35 = 0;
          v21 = v94;
          goto LABEL_163;
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v103 objects:v108 count:16];
    }

    while (v47);
  }

  v29 = v97;
  v102 = 0.0;
  v51 = [v97 polarityForRange:v22 - objc_msgSend(v97 confidence:{"matchRange"), v96, &v102}];
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:v102];
  v53 = [v94 contextDictionary];
  [v53 setObject:v52 forKeyedSubscript:@"polarityProbability"];

  if (v51 == 4)
  {
    v54 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v54 = _IPLogHandle;
    }

    v21 = v94;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v54, OS_LOG_TYPE_INFO, "Skip because focused fragment polarity is REJECTION #FeatureManager", buf, 2u);
    }

    v28 = v92;
    v29 = v97;
    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v55 = IPSOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = [v94 matchString];
        *buf = 138412290;
        v110 = v56;
        _os_log_impl(&dword_2485E4000, v55, OS_LOG_TYPE_INFO, "Focused fragment: [%@] #FeatureManager", buf, 0xCu);
      }

      goto LABEL_161;
    }

    goto LABEL_162;
  }

  if (!v10 && v51 == 2)
  {
    v60 = IPSOSLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v60, OS_LOG_TYPE_INFO, "Found EVENT because focused fragment polarity is PROPOSAL #FeatureManager", buf, 2u);
    }

    v28 = v92;
    v21 = v94;
    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v61 = IPSOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = [v94 matchString];
        *buf = 138412290;
        v110 = v62;
        _os_log_impl(&dword_2485E4000, v61, OS_LOG_TYPE_INFO, "Focused fragment: [%@] #FeatureManager", buf, 0xCu);
      }
    }

    v63 = 2;
LABEL_94:
    *a8 = v63;
LABEL_95:
    v35 = 1;
    goto LABEL_163;
  }

  v65 = IPSOSLogHandle();
  v66 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);
  if (!v10 && v51 == 3)
  {
    if (v66)
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v65, OS_LOG_TYPE_INFO, "Found EVENT because focused fragment polarity is CONFIRMATION #FeatureManager", buf, 2u);
    }

    v28 = v92;
    v21 = v94;
    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v67 = IPSOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = [v94 matchString];
        *buf = 138412290;
        v110 = v68;
        _os_log_impl(&dword_2485E4000, v67, OS_LOG_TYPE_INFO, "Focused fragment: [%@] #FeatureManager", buf, 0xCu);
      }
    }

    v63 = 3;
    goto LABEL_94;
  }

  if (v10)
  {
    v28 = v92;
    v21 = v94;
    if (v66)
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v65, OS_LOG_TYPE_INFO, "Extracted from SUBJECT #FeatureManager", buf, 2u);
    }
  }

  else
  {
    v21 = v94;
    if (v66)
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v65, OS_LOG_TYPE_INFO, "No CLEAR POLARITY for focused fragment #FeatureManager", buf, 2u);
    }

    v28 = v92;
    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled != 1)
    {
      goto LABEL_107;
    }

    v65 = IPSOSLogHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v69 = [v94 matchString];
      *buf = 138412290;
      v110 = v69;
      _os_log_impl(&dword_2485E4000, v65, OS_LOG_TYPE_INFO, "Focused fragment: [%@] #FeatureManager", buf, 0xCu);
    }
  }

LABEL_107:
  if ([v97 polarity] == 4)
  {
    v55 = IPSOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v70 = "Skip because main feature polarity is a rejection #FeatureManager";
      goto LABEL_160;
    }

    goto LABEL_161;
  }

  if (obj)
  {
    v55 = IPSOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v70 = "Skip main feature because TENSE is in the PAST and event is tense dependent. #FeatureManager";
      goto LABEL_160;
    }

    goto LABEL_161;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v71 = v45;
  v95 = [v71 countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (!v95)
  {

    goto LABEL_155;
  }

  obja = v71;
  v72 = 0;
  v93 = *v99;
  while (2)
  {
    v73 = 0;
    do
    {
      if (*v99 != v93)
      {
        objc_enumerationMutation(obja);
      }

      v74 = *(*(&v98 + 1) + 8 * v73);
      if ([v74 polarity] == 2)
      {
        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v75 = IPSOSLogHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v110 = v74;
            _os_log_impl(&dword_2485E4000, v75, OS_LOG_TYPE_INFO, "Nearby feature: %@ #FeatureManager", buf, 0xCu);
          }
        }

        v76 = IPSOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v76, OS_LOG_TYPE_INFO, "Found PROPOSAL in nearby feature #FeatureManager", buf, 2u);
        }

        v77 = 2;
      }

      else
      {
        if ([v74 polarity] != 3)
        {
          goto LABEL_139;
        }

        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v78 = IPSOSLogHandle();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v110 = v74;
            _os_log_impl(&dword_2485E4000, v78, OS_LOG_TYPE_INFO, "Nearby feature: %@ #FeatureManager", buf, 0xCu);
          }
        }

        v76 = IPSOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v76, OS_LOG_TYPE_INFO, "Found CONFIRMATION in nearby feature #FeatureManager", buf, 2u);
        }

        v77 = 3;
      }

      *a8 = v77;
      v72 = 1;
      v21 = v94;
      v29 = v97;
LABEL_139:
      if ([v74 polarity] == 4)
      {
        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v79 = IPSOSLogHandle();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v110 = v74;
            _os_log_impl(&dword_2485E4000, v79, OS_LOG_TYPE_INFO, "Nearby feature: %@ #FeatureManager", buf, 0xCu);
          }
        }

        v80 = IPSOSLogHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v80, OS_LOG_TYPE_INFO, "Found REJECTION in nearby feature #FeatureManager", buf, 2u);
        }

        v55 = IPSOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v70 = "Skip feature because rejection found nearby #FeatureManager";
          goto LABEL_160;
        }

        goto LABEL_161;
      }

      ++v73;
    }

    while (v95 != v73);
    v95 = [obja countByEnumeratingWithState:&v98 objects:v107 count:16];
    if (v95)
    {
      continue;
    }

    break;
  }

  if (v72)
  {
    goto LABEL_95;
  }

LABEL_155:
  if (!v10)
  {
    [v29 matchRange];
    v82 = v81 - v96;
    v83 = [v97 matchString];
    v84 = [v83 localizedCaseInsensitiveContainsString:@": "];

    v85 = v82 < 10;
    v29 = v97;
    if (v85 || v84)
    {
      v88 = [v21 contextDictionary];
      [v88 setObject:&unk_285B08898 forKeyedSubscript:@"polarityProbability"];

      v89 = IPSOSLogHandle();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v89, OS_LOG_TYPE_INFO, "Sentence containing DATE is very short. Detecting as a proposal. #FeatureManager", buf, 2u);
      }

      goto LABEL_95;
    }
  }

  v55 = IPSOSLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v70 = "Skip feature because no acceptation or proposal found nearby #FeatureManager";
LABEL_160:
    _os_log_impl(&dword_2485E4000, v55, OS_LOG_TYPE_INFO, v70, buf, 2u);
  }

LABEL_161:

LABEL_162:
  v35 = 0;
LABEL_163:

LABEL_164:
LABEL_165:

  v86 = *MEMORY[0x277D85DE8];
  return v35;
}

- (id)stitchedEventsFromEvents:(id)a3
{
  v4 = a3;
  if ([v4 count] > 1)
  {
    v6 = [(IPFeatureScanner *)self _stitchedEventsFromEvents:v4];

    v5 = [(IPFeatureScanner *)self _regroupEventsWithSpreadTimeAsAllDayEvents:v6];
    v4 = v6;
  }

  else
  {
    v5 = [v4 copy];
  }

  return v5;
}

- (id)_stitchedEventsFromEvents:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v65 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v3;
  v66 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v66)
  {
    v64 = *v78;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v78 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v77 + 1) + 8 * i);
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v6 = v65;
        v7 = [v6 countByEnumeratingWithState:&v73 objects:v81 count:16];
        v71 = v5;
        if (v7)
        {
          v8 = v7;
          v9 = *v74;
          v67 = i;
          v68 = *v74;
          v69 = v6;
          while (2)
          {
            v10 = 0;
            v70 = v8;
            do
            {
              if (*v74 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v73 + 1) + 8 * v10);
              if ([v11 isAllDay] && objc_msgSend(v5, "isAllDay"))
              {
                v12 = [v11 startDate];
                v13 = [v5 startDate];
                [v12 timeIntervalSinceDate:v13];
                v15 = v14 == 0.0;
              }

              else
              {
                v15 = 0;
              }

              if (([v11 isAllDay] & 1) == 0 && (objc_msgSend(v5, "isAllDay") & 1) == 0)
              {
                v16 = [v11 startDate];
                v17 = [v5 endDate];
                [v16 timeIntervalSinceDate:v17];
                if (fabs(v18) <= 3600.0)
                {
                  goto LABEL_33;
                }

                v19 = [v11 endDate];
                v20 = [v5 startDate];
                [v19 timeIntervalSinceDate:v20];
                if (fabs(v21) <= 3600.0)
                {
                  goto LABEL_32;
                }

                v72 = v16;
                v22 = [v11 startDate];
                v23 = [v5 startDate];
                [v22 timeIntervalSinceDate:v23];
                if (fabs(v24) <= 3600.0)
                {

                  v16 = v72;
LABEL_32:

                  v6 = v69;
LABEL_33:

LABEL_34:
                  v35 = v11;

                  i = v67;
                  if (!v35)
                  {
                    goto LABEL_41;
                  }

                  if ([v35 isAllDay])
                  {
LABEL_36:
                    v36 = [v35 location];
                    if (v36)
                    {
                      v37 = v36;
                      v38 = [v71 location];

                      if (!v38)
                      {
                        v39 = [v35 location];
                        [v71 setLocation:v39];
                      }
                    }

                    if ([v71 ipsos_isDateTimeTenseDependent])
                    {
                      v40 = [v35 ipsos_isDateTimeTenseDependent];
                    }

                    else
                    {
                      v40 = 0;
                    }

                    [v71 setIpsos_isDateTimeTenseDependent:v40];
                    [v6 removeObject:v35];
                    v55 = [v71 ipsos_dataFeatures];
                    v56 = [v35 ipsos_dataFeatures];
                    v57 = [v55 arrayByAddingObjectsFromArray:v56];
                    [v71 setIpsos_dataFeatures:v57];

                    [v6 addObject:v71];
                    goto LABEL_65;
                  }

                  if ([v35 isAllDay] & 1) == 0 && (objc_msgSend(v71, "isAllDay") & 1) != 0 || (objc_msgSend(v35, "ipsos_isTimeApproximate") & 1) == 0 && (objc_msgSend(v71, "ipsos_isTimeApproximate"))
                  {
                    goto LABEL_65;
                  }

                  if ([v35 ipsos_isTimeApproximate] && (objc_msgSend(v71, "ipsos_isTimeApproximate") & 1) == 0)
                  {
                    goto LABEL_36;
                  }

                  v41 = [v35 startDate];
                  v42 = [v71 startDate];
                  [v41 timeIntervalSinceDate:v42];
                  v44 = v43;

                  if (v44 > 0.0)
                  {
                    v45 = [v71 startDate];
                    [v35 setStartDate:v45];
                  }

                  v46 = [v71 ipsos_isEndTimeApproximate];
                  if (v46 == [v35 ipsos_isEndTimeApproximate])
                  {
                    v47 = [v35 endDate];
                    v48 = [v71 endDate];
                    [v47 timeIntervalSinceDate:v48];
                    v50 = v49;

                    if (v50 < 0.0)
                    {
                      goto LABEL_54;
                    }
                  }

                  if (![v71 ipsos_isEndTimeApproximate] || objc_msgSend(v35, "ipsos_isEndTimeApproximate"))
                  {
LABEL_54:
                    v51 = [v71 endDate];
                    [v35 setEndDate:v51];

                    [v35 setIpsos_isEndTimeApproximate:{objc_msgSend(v71, "ipsos_isEndTimeApproximate")}];
                  }

                  v52 = [v35 location];
                  if (v52)
                  {
LABEL_58:
                  }

                  else
                  {
                    v53 = [v71 location];

                    if (v53)
                    {
                      v52 = [v71 location];
                      [v35 setLocation:v52];
                      goto LABEL_58;
                    }
                  }

                  if ([v71 ipsos_isDateTimeTenseDependent])
                  {
                    v54 = [v35 ipsos_isDateTimeTenseDependent];
                  }

                  else
                  {
                    v54 = 0;
                  }

                  [v35 setIpsos_isDateTimeTenseDependent:v54];
                  v58 = [v35 ipsos_dataFeatures];
                  v59 = [v71 ipsos_dataFeatures];
                  v60 = [v58 arrayByAddingObjectsFromArray:v59];
                  [v35 setIpsos_dataFeatures:v60];

                  goto LABEL_65;
                }

                v25 = [v11 ipsos_isTimeApproximate];
                if (v25 == [v5 ipsos_isTimeApproximate])
                {

                  v9 = v68;
                  v6 = v69;
                  v8 = v70;
                }

                else
                {
                  v26 = [v11 startDate];
                  v27 = [v5 startDate];
                  [v26 timeIntervalSinceDate:v27];
                  v29 = fabs(v28);

                  v5 = v71;
                  v9 = v68;
                  v6 = v69;
                  v8 = v70;
                  if (v29 <= 18000.0)
                  {
                    goto LABEL_34;
                  }
                }
              }

              v30 = [v11 isAllDay];
              if (v30 == [v5 isAllDay])
              {
                v34 = 0;
              }

              else
              {
                v31 = [v11 startDate];
                v32 = [v5 startDate];
                [v31 timeIntervalSinceDate:v32];
                v34 = fabs(v33) < 86399.0;
              }

              if (v15 || v34)
              {
                goto LABEL_34;
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v73 objects:v81 count:16];
            i = v67;
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_41:
        [v6 addObject:v71];
        v35 = 0;
LABEL_65:
      }

      v66 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v66);
  }

  v61 = *MEMORY[0x277D85DE8];

  return v65;
}

- (id)_regroupEventsWithSpreadTimeAsAllDayEvents:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] <= 1)
  {
    v4 = v3;
    goto LABEL_30;
  }

  if (_regroupEventsWithSpreadTimeAsAllDayEvents__onceToken != -1)
  {
    [IPFeatureScanner _regroupEventsWithSpreadTimeAsAllDayEvents:];
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = v3;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = _regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter;
        v13 = [v11 startDate];
        v14 = [v12 stringFromDate:v13];

        v15 = [v5 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
          [v5 setObject:v15 forKeyedSubscript:v14];
        }

        if ([v11 isAllDay])
        {
          [v15 insertObject:v11 atIndex:0];
        }

        else
        {
          [v15 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v16 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * j)];
        if ([v21 count] == 1)
        {
          v22 = [v21 firstObject];
        }

        else
        {
          if ([v21 count] < 2)
          {
            goto LABEL_27;
          }

          v22 = [v21 firstObject];
          [v22 setAllDay:1];
          [v22 setIpsos_disableTimeAdjustment:1];
        }

        [v4 addObject:v22];

LABEL_27:
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v3 = v25;
LABEL_30:

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __63__IPFeatureScanner__regroupEventsWithSpreadTimeAsAllDayEvents___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter;
  _regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter = v0;

  [_regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter setTimeStyle:0];
  v2 = _regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter;

  return [v2 setDateStyle:1];
}

- (void)adjustTimeForEvents:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(IPFeatureScanner *)self adjustTimeForEvent:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)adjustTimeForEvent:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 ipsos_timeNeedsMeridianGuess])
  {
    v4 = [v3 startDate];
    v5 = [v3 ipsos_eventClassificationType];
    v6 = [v5 preferedMeridian];
    if (!v6)
    {
LABEL_29:

      goto LABEL_30;
    }

    v7 = v6;
    if (IPGregorianCalendar_once != -1)
    {
      [IPFeatureScanner isDateAroundNoon:];
    }

    v8 = IPGregorianCalendar_calendar;
    v9 = [v8 components:32 fromDate:v4];
    v10 = [v9 hour];
    v11 = 12 - v10;
    if (12 - v10 < 0)
    {
      v11 = v10 - 12;
    }

    if (v11 < 2)
    {
LABEL_28:

      goto LABEL_29;
    }

    if (v7 == 2 && v10 <= 11)
    {
      if (IPDebuggingModeEnabled_once != -1)
      {
        [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
      }

      if (IPDebuggingModeEnabled_sEnabled == 1)
      {
        v12 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging();
          v12 = _IPLogHandle;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = v12;
          v14 = [v3 valueForKey:@"ipsos_betterDescription"];
          v21 = 138412290;
          v22 = v14;
          _os_log_impl(&dword_2485E4000, v13, OS_LOG_TYPE_INFO, "Adjusting time as PM for event: %@ #FeatureManager", &v21, 0xCu);
        }
      }

      v15 = [v3 startDate];
      v16 = [v15 dateByAddingTimeInterval:43200.0];
      [v3 setStartDate:v16];

      v17 = [v3 endDate];

      if (!v17)
      {
        goto LABEL_28;
      }

      v18 = [v3 endDate];
      v19 = [v18 dateByAddingTimeInterval:43200.0];
      [v3 setEndDate:v19];
    }

    else
    {
      if (v7 != 1 || v10 < 12)
      {
        goto LABEL_28;
      }

      if (IPDebuggingModeEnabled_once != -1)
      {
        [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
      }

      if (IPDebuggingModeEnabled_sEnabled != 1)
      {
        goto LABEL_28;
      }

      v18 = IPSOSLogHandle();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v19 = [v3 valueForKey:@"ipsos_betterDescription"];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&dword_2485E4000, v18, OS_LOG_TYPE_INFO, "Adjusting time as AM for event: %@ #FeatureManager", &v21, 0xCu);
    }

LABEL_20:
    goto LABEL_28;
  }

LABEL_30:

  v20 = *MEMORY[0x277D85DE8];
}

- (id)filteredEventsForDetectedEvents:(id)a3 referenceDate:(id)a4
{
  v137 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v115 = a4;
  if (![v6 count])
  {
    v104 = MEMORY[0x277CBEBF8];
    goto LABEL_200;
  }

  v113 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v112 = v6;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v126 objects:v136 count:16];
  if (!v8)
  {
    goto LABEL_174;
  }

  v9 = v8;
  v117 = *v127;
  v114 = v7;
  do
  {
    v10 = 0;
    v116 = v9;
    do
    {
      if (*v127 != v117)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v126 + 1) + 8 * v10);
      v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v13 = [v12 BOOLForKey:@"IPFeatureManagersSkipConfidenceFiltering"];

      if ((v13 & 1) == 0)
      {
        [v11 ipsos_confidence];
        if (v14 < 0.45)
        {
          v15 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v15 = _IPLogHandle;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = v15;
            [v11 ipsos_confidence];
            *buf = 134217984;
            v133 = v17;
            _os_log_impl(&dword_2485E4000, v16, OS_LOG_TYPE_INFO, "Skipped event because it's confidence score is too low (confidence: %0.4f) #FeatureManager", buf, 0xCu);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v18 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v18 = _IPLogHandle;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = v18;
              v20 = [v11 startDate];
              *buf = 138412290;
              v133 = v20;
              _os_log_impl(&dword_2485E4000, v19, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@) #FeatureManager", buf, 0xCu);
            }
          }

          v21 = self;
          v22 = -80;
          goto LABEL_171;
        }
      }

      v23 = [v11 ipsos_eventClassificationType];

      if (!v23)
      {
        v34 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging();
          v34 = _IPLogHandle;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v34, OS_LOG_TYPE_INFO, "Skipped event because it doesn't has any clear classification type #FeatureManager", buf, 2u);
        }

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
LABEL_60:
            v40 = v35;
            v41 = [v11 startDate];
            *buf = 138412290;
            v133 = v41;
            _os_log_impl(&dword_2485E4000, v40, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@) #FeatureManager", buf, 0xCu);
          }
        }

LABEL_61:
        v21 = self;
        v22 = -65;
        goto LABEL_171;
      }

      if ([v11 isAllDay])
      {
        v24 = [v11 ipsos_eventClassificationType];

        if (!v24)
        {
          v39 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v39 = _IPLogHandle;
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v39, OS_LOG_TYPE_INFO, "Skipped event because it doesn't has any clear classification type and is all day #FeatureManager", buf, 2u);
          }

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
              goto LABEL_60;
            }
          }

          goto LABEL_61;
        }
      }

      if ([v11 isAllDay])
      {
        if (([v11 ipsos_allDayPreferred] & 1) == 0)
        {
          v25 = [v11 ipsos_eventClassificationType];
          v26 = [v25 isAllDayAllowed];

          if ((v26 & 1) == 0)
          {
            v47 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v47 = _IPLogHandle;
            }

            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2485E4000, v47, OS_LOG_TYPE_INFO, "Skipped event because it is all day #FeatureManager", buf, 2u);
            }

            if (IPDebuggingModeEnabled_once != -1)
            {
              [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
            }

            if (IPDebuggingModeEnabled_sEnabled == 1)
            {
              v48 = _IPLogHandle;
              if (!_IPLogHandle)
              {
                IPInitLogging();
                v48 = _IPLogHandle;
              }

              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                v49 = v48;
                v50 = [v11 startDate];
                *buf = 138412290;
                v133 = v50;
                _os_log_impl(&dword_2485E4000, v49, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@) #FeatureManager", buf, 0xCu);
              }
            }

            goto LABEL_169;
          }
        }
      }

      if (([v11 isAllDay] & 1) == 0)
      {
        v36 = [v11 startDate];
        if (![(IPFeatureScanner *)self isDateRoundedTo5Minutes:v36])
        {

LABEL_63:
          v42 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v42 = _IPLogHandle;
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v42, OS_LOG_TYPE_INFO, "Skipped event because time is not rounded #FeatureManager", buf, 2u);
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

            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = v43;
              v45 = [v11 startDate];
              v46 = [v11 endDate];
              *buf = 138412546;
              v133 = v45;
              v134 = 2112;
              v135 = v46;
              _os_log_impl(&dword_2485E4000, v44, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@, End date: %@) #FeatureManager", buf, 0x16u);
            }
          }

          v21 = self;
          v22 = -67;
          goto LABEL_171;
        }

        v37 = [v11 endDate];
        v38 = [(IPFeatureScanner *)self isDateRoundedTo5Minutes:v37];

        if (!v38)
        {
          goto LABEL_63;
        }
      }

      if ([v11 isAllDay])
      {
        v27 = [v11 title];
        v28 = [v27 length];

        if (!v28)
        {
          v57 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v57 = _IPLogHandle;
          }

          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v57, OS_LOG_TYPE_INFO, "Skipped event because all-day event has no title #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v58 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v58 = _IPLogHandle;
            }

            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = v58;
              v60 = [v11 startDate];
              v61 = [v11 endDate];
              *buf = 138412546;
              v133 = v60;
              v134 = 2112;
              v135 = v61;
              _os_log_impl(&dword_2485E4000, v59, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@, End date: %@) #FeatureManager", buf, 0x16u);
            }
          }

          v21 = self;
          v22 = -70;
          goto LABEL_171;
        }
      }

      if (([v11 isAllDay] & 1) == 0)
      {
        v29 = [v11 ipsos_eventClassificationType];
        v30 = [v11 startDate];
        v31 = [v29 isDateWithinRange:v30];

        if ((v31 & 1) == 0)
        {
          v51 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v51 = _IPLogHandle;
          }

          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v51, OS_LOG_TYPE_INFO, "Skipped event because it's not within an acceptable time range #FeatureManager", buf, 2u);
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
              v54 = [v11 ipsos_eventClassificationType];
              v55 = [v54 identifier];
              v56 = [v11 startDate];
              *buf = 138412546;
              v133 = v55;
              v134 = 2112;
              v135 = v56;
              _os_log_impl(&dword_2485E4000, v53, OS_LOG_TYPE_INFO, "Filtered event (Type: %@, Start date: %@) #FeatureManager", buf, 0x16u);

              v9 = v116;
            }
          }

          v21 = self;
          v22 = -69;
          goto LABEL_171;
        }
      }

      v32 = [v11 ipsos_eventClassificationType];
      if (![v32 isFairlyGeneric])
      {
        goto LABEL_111;
      }

      v33 = [v11 ipsos_eventClassificationType];
      if (([v33 isAppointment] & 1) == 0)
      {

LABEL_111:
        goto LABEL_112;
      }

      if ([v11 isAllDay])
      {

LABEL_157:
        v89 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging();
          v89 = _IPLogHandle;
        }

        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v89, OS_LOG_TYPE_INFO, "Skipped event because it's an appointment with a vague / all day date #FeatureManager", buf, 2u);
        }

        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v90 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v90 = _IPLogHandle;
          }

          if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
          {
            v91 = v90;
            v92 = [v11 ipsos_eventClassificationType];
            v93 = [v92 identifier];
            v94 = [v11 startDate];
            *buf = 138412546;
            v133 = v93;
            v134 = 2112;
            v135 = v94;
            _os_log_impl(&dword_2485E4000, v91, OS_LOG_TYPE_INFO, "Filtered event (Type: %@, Start date: %@) #FeatureManager", buf, 0x16u);

            v9 = v116;
          }
        }

        if ([v11 isAllDay])
        {
LABEL_169:
          v21 = self;
          v22 = -66;
        }

        else
        {
LABEL_170:
          v21 = self;
          v22 = -60;
        }

LABEL_171:
        [(IPFeatureScanner *)v21 setResultType:v22];
        goto LABEL_172;
      }

      v88 = [v11 ipsos_isTimeApproximate];

      if (v88)
      {
        goto LABEL_157;
      }

LABEL_112:
      v62 = [v11 ipsos_eventClassificationType];
      if ([v62 isFairlyGeneric])
      {
        v63 = [v11 isAllDay];

        if (v63)
        {
          v64 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v64 = _IPLogHandle;
          }

          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v64, OS_LOG_TYPE_INFO, "Skipped all-day event with a fairy generic event type #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v65 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v65 = _IPLogHandle;
            }

            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              v66 = v65;
              v67 = [v11 ipsos_eventClassificationType];
              v68 = [v67 identifier];
              v69 = [v11 startDate];
              *buf = 138412546;
              v133 = v68;
              v134 = 2112;
              v135 = v69;
              _os_log_impl(&dword_2485E4000, v66, OS_LOG_TYPE_INFO, "Filtered event (Type: %@, Start date: %@) #FeatureManager", buf, 0x16u);

              v9 = v116;
            }
          }

          goto LABEL_169;
        }
      }

      else
      {
      }

      v70 = [v11 startDate];
      [v70 timeIntervalSinceDate:v115];
      v72 = v71;

      v73 = [v11 ipsos_isTimeOffset];
      v74 = [v11 ipsos_isEventTimeOnlyAndReferrengingToSentDate];
      v75 = 0;
      if ([v11 isAllDay] && v72 < 86400.0)
      {
        v75 = [v11 ipsos_allDayPreferred] ^ 1;
      }

      v76 = 0;
      if (([v11 isAllDay] & 1) == 0 && v72 < 21600.0)
      {
        v76 = [v11 ipsos_isTimeApproximate];
      }

      v77 = 1;
      if (([v11 isAllDay] & 1) == 0 && v72 < 43200.0)
      {
        v77 = [v11 ipsos_isTimeApproximate] ^ 1;
      }

      [v11 ipsos_duration];
      v79 = v78;
      v80 = [v11 ipsos_eventClassificationType];
      v81 = [v80 isMealRelated];

      if (((v74 & ~v73 | v75 | v76) & 1) != 0 || ((v77 | v81) & 1) == 0 || v72 > 31536000.0 || v79 > 172800.0)
      {
        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        v7 = v114;
        v9 = v116;
        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v83 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v83 = _IPLogHandle;
          }

          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            v84 = v83;
            v85 = [v11 ipsos_eventClassificationType];
            v86 = [v85 identifier];
            v87 = [v11 startDate];
            *buf = 138412546;
            v133 = v86;
            v134 = 2112;
            v135 = v87;
            _os_log_impl(&dword_2485E4000, v84, OS_LOG_TYPE_INFO, "Filtered event (Type: %@, Start date: %@) #FeatureManager", buf, 0x16u);
          }
        }

        goto LABEL_170;
      }

      if (v72 < 86400.0)
      {
        [v11 setIpsos_eventAttributes:{objc_msgSend(v11, "ipsos_eventAttributes") | 0x10}];
      }

      v7 = v114;
      v9 = v116;
      if ([v11 ipsos_eventStatus] == 2)
      {
        [v11 setIpsos_eventAttributes:{objc_msgSend(v11, "ipsos_eventAttributes") | 0x20}];
      }

      if (([v11 ipsos_usesDefaultClassificationTypeStartTime] & 1) != 0 || objc_msgSend(v11, "ipsos_isTimeApproximate"))
      {
        [v11 setIpsos_eventAttributes:{objc_msgSend(v11, "ipsos_eventAttributes") | 0x80}];
      }

      [v11 ipsos_confidence];
      if (v82 > 0.95)
      {
        [v11 setIpsos_eventAttributes:{objc_msgSend(v11, "ipsos_eventAttributes") | 0x200}];
      }

      [v113 addObject:v11];
LABEL_172:
      ++v10;
    }

    while (v9 != v10);
    v9 = [v7 countByEnumeratingWithState:&v126 objects:v136 count:16];
  }

  while (v9);
LABEL_174:

  v95 = v113;
  if ([v113 count] < 2)
  {
    v104 = v113;
  }

  else
  {
    v96 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v113, "count")}];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v97 = v113;
    v98 = [v97 countByEnumeratingWithState:&v122 objects:v131 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v123;
      do
      {
        for (i = 0; i != v99; ++i)
        {
          if (*v123 != v100)
          {
            objc_enumerationMutation(v97);
          }

          v102 = *(*(&v122 + 1) + 8 * i);
          if (([v102 isAllDay] & 1) == 0)
          {
            [v96 addObject:v102];
          }
        }

        v99 = [v97 countByEnumeratingWithState:&v122 objects:v131 count:16];
      }

      while (v99);
    }

    if ([v96 count])
    {
      v103 = v96;
    }

    else
    {
      v103 = v97;
    }

    v104 = v103;

    v95 = v113;
  }

  if ([v104 count] >= 2)
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v105 = v104;
    v106 = [v105 countByEnumeratingWithState:&v118 objects:v130 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = *v119;
      do
      {
        for (j = 0; j != v107; ++j)
        {
          if (*v119 != v108)
          {
            objc_enumerationMutation(v105);
          }

          [*(*(&v118 + 1) + 8 * j) setIpsos_eventAttributes:{objc_msgSend(*(*(&v118 + 1) + 8 * j), "ipsos_eventAttributes") | 0x40}];
        }

        v107 = [v105 countByEnumeratingWithState:&v118 objects:v130 count:16];
      }

      while (v107);
    }

    v95 = v113;
  }

  v6 = v112;
LABEL_200:

  v110 = *MEMORY[0x277D85DE8];

  return v104;
}

- (id)normalizedAllDayDateFromDate:(id)a3
{
  v3 = IPGregorianCalendar_once;
  v4 = a3;
  if (v3 != -1)
  {
    [IPFeatureScanner isDateAroundNoon:];
  }

  v5 = IPGregorianCalendar_calendar;
  v6 = [v5 components:254 fromDate:v4];

  v7 = [v6 copy];
  [v7 setHour:0];
  [v7 setMinute:0];
  [v7 setSecond:0];
  [v7 setTimeZone:0];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

- (void)normalizedEvents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 isAllDay])
        {
          v10 = [v9 startDate];
          v11 = [(IPFeatureScanner *)self normalizedAllDayDateFromDate:v10];
          [v9 setStartDate:v11];

          v12 = [v9 endDate];
          v13 = [(IPFeatureScanner *)self normalizedAllDayDateFromDate:v12];
          [v9 setEndDate:v13];

          [v9 setTimeZone:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)bestEventsFromEvents:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] > 1)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          [v10 ipsos_confidence];
          if (v11 > 0.7)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = v3;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)stringsFromDataFeatures:(id)a3 matchingTypes:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "type", v19)}];
        v15 = [v6 containsObject:v14];

        if (v15)
        {
          v16 = [v13 matchString];
          if (v16)
          {
            [v7 addObject:v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)cleanedStringForFeatureData:(id)a3
{
  v3 = IPLocalizedString_once;
  v4 = a3;
  if (v3 != -1)
  {
    [IPFeatureScanner cleanedStringForFeatureData:];
  }

  v5 = [IPLocalizedString_bundle localizedStringForKey:@" value:" table:{&stru_285AD0E88, @"DataDetectorsNaturalLanguage"}];
  v6 = [v4 matchString];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v5];
  v8 = [v6 stringByReplacingOccurrencesOfString:v7 withString:@"\n"];

  v9 = [v8 stringByReplacingOccurrencesOfString:@" withString:{\n", @"\n"}];

  v10 = [v9 stringByReplacingOccurrencesOfString:@" withString:{\n", @"\n"}];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n"];

  v12 = [v11 stringByReplacingOccurrencesOfString:@"\n" withString:v5];

  return v12;
}

+ (id)descriptionForScanResultType:(int64_t)a3
{
  v3 = @"IPFeatureScanResultTypeEventNotFound";
  if (a3 <= -51)
  {
    v4 = @"IPFeatureScanResultTypeEventFilteredOutAllDayEvent";
    v8 = @"IPFeatureScanResultTypeEventNoClassificationType";
    v9 = @"IPFeatureScanResultTypeEventFilteredOut";
    if (a3 != -60)
    {
      v9 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (a3 != -65)
    {
      v8 = v9;
    }

    if (a3 != -66)
    {
      v4 = v8;
    }

    v10 = @"IPFeatureScanResultTypeEventFilteredOutSeveralDetectedEvents";
    v11 = @"IPFeatureScanResultTypeEventFilteredOutNotRoundedTime";
    if (a3 != -67)
    {
      v11 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (a3 != -68)
    {
      v10 = v11;
    }

    if (a3 <= -67)
    {
      v4 = v10;
    }

    v12 = @"IPFeatureScanResultTypeEventFilteredOutLowConfidenceScore";
    v13 = @"IPFeatureScanResultTypeEventFilteredOutAllDayWithNoTitle";
    v14 = @"IPFeatureScanResultTypeEventFilteredOutNotAcceptableTimeRangeForEventType";
    if (a3 != -69)
    {
      v14 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (a3 != -70)
    {
      v13 = v14;
    }

    if (a3 != -80)
    {
      v12 = v13;
    }

    if (a3 == -90)
    {
      v3 = @"IPFeatureScanResultTypeGroupMessageConversation";
    }

    if (a3 == -110)
    {
      v3 = @"IPFeatureScanResultTypeContainsDateInThePastWithPreciseTime";
    }

    if (a3 > -81)
    {
      v3 = v12;
    }

    v7 = a3 <= -69;
  }

  else if (a3 <= -13)
  {
    v4 = @"IPFeatureScanResultTypeIgnoreOrRejectionKeywordFound";
    v15 = @"IPFeatureScanResultTypeNoPolarityProposalOrAcceptation";
    v16 = @"IPFeatureScanResultTypeNoSentencePolarityExtractedOrAssetMissing";
    if (a3 != -13)
    {
      v16 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (a3 != -20)
    {
      v15 = v16;
    }

    if (a3 != -21)
    {
      v4 = v15;
    }

    if (a3 == -40)
    {
      v3 = @"IPFeatureScanResultTypeBlacklistedSender";
    }

    if (a3 == -50)
    {
      v3 = @"IPFeatureScanResultTypeSubjectContainsRejection";
    }

    v7 = a3 <= -22;
  }

  else
  {
    v4 = @"IPFeatureScanResultTypeDisabled";
    v5 = @"IPFeatureScanResultTypeMultipleEventsFound";
    v6 = @"IPFeatureScanResultTypeEventFound";
    if (a3 != 1)
    {
      v6 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (a3 != 2)
    {
      v5 = v6;
    }

    if (a3 != -1)
    {
      v4 = v5;
    }

    if (a3 == -10)
    {
      v3 = @"IPFeatureScanResultTypeNoDateInTheFuture";
    }

    if (a3 == -11)
    {
      v3 = @"IPFeatureScanResultTypeContainsDateInTheFarPast";
    }

    if (a3 == -12)
    {
      v3 = @"IPFeatureScanResultTypeContainsTooManyDatesInTheFuture";
    }

    v7 = a3 <= -2;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (void)enrichEvents:(id)a3 messageUnits:(id)a4 dateInSubject:(id)a5 dataFeatures:(id)a6
{
  v97 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v83 = a4;
  v79 = a5;
  v11 = a6;
  if ([v10 count])
  {
    v82 = [(IPFeatureScanner *)self movieTitlesFromDataFeatures:v11];
    v78 = [(IPFeatureScanner *)self sportTeamNamesFromDataFeatures:v11];
    v76 = [(IPFeatureScanner *)self artisNamesFromDataFeatures:v11];
    v75 = [(IPFeatureScanner *)self restaurantAndBarPOINamesFromDataFeatures:v11];
    v72 = v11;
    [(IPFeatureScanner *)self entertainmentPOINamesFromDataFeatures:v11];
    v74 = v73 = v10;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v10;
    v81 = [obj countByEnumeratingWithState:&v92 objects:v96 count:16];
    if (!v81)
    {
      goto LABEL_77;
    }

    v80 = *v93;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v93 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v92 + 1) + 8 * v12);
        v14 = [v13 ipsos_eventClassificationType];

        if (!v14)
        {
          v15 = [v13 ipsos_messageUnit];
          v16 = [v13 ipsos_messageUnit];
          v17 = [v16 keywordFeatures];
          v18 = [v13 ipsos_dataFeatures];
          v19 = [IPEventClassificationType eventClassificationTypeFromMessageUnit:v15 keywordFeatures:v17 datafeatures:v18];
          [v13 setIpsos_eventClassificationType:v19];
        }

        v20 = [v13 ipsos_eventClassificationType];
        v21 = v20;
        if (v20 && ![v20 isFairlyGeneric])
        {
          goto LABEL_23;
        }

        v22 = [v83 firstObject];
        v23 = [v22 bestLanguageID];

        if ([v82 count])
        {
          v24 = [IPEventClassificationType eventTypeForMoviesAndLanguageID:v23];
        }

        else if ([v78 count])
        {
          v24 = [IPEventClassificationType eventTypeForSportAndLanguageID:v23];
        }

        else if ([v76 count])
        {
          v24 = [IPEventClassificationType eventTypeForCultureAndLanguageID:v23];
        }

        else if ([v75 count])
        {
          v24 = [IPEventClassificationType eventTypeForMealsAndLanguageID:v23];
        }

        else
        {
          if (![v74 count])
          {
            goto LABEL_22;
          }

          v24 = [IPEventClassificationType eventTypeForEntertainmentAndLanguageID:v23];
        }

        v25 = v24;

        v21 = v25;
LABEL_22:
        [v13 setIpsos_eventClassificationType:v21];

        if (!v21)
        {
          goto LABEL_73;
        }

LABEL_23:
        v26 = [v13 isAllDay];
        v27 = [v13 ipsos_allDayPreferred];
        v89 = [v13 ipsos_isTimeApproximate];
        v28 = [v13 ipsos_isEndTimeApproximate];
        v29 = [v13 startDate];
        v30 = [v13 endDate];
        v31 = v30;
        v86 = v12;
        if (v26)
        {
          [v30 timeIntervalSinceDate:v29];
          v33 = fabs(v32) > 86400.0;
        }

        else
        {
          v34 = [v21 adjustedEventClassificationTypeWithStartDate:v29];

          [v13 setIpsos_eventClassificationType:v34];
          v33 = 0;
          v21 = v34;
        }

        if (([v21 defaultStartingTimeHour] & 0x80000000) != 0)
        {
          v40 = 0;
        }

        else
        {
          v84 = v27;
          v87 = v28;
          v35 = v31;
          v36 = MEMORY[0x277CBEAA8];
          v37 = 3600 * [v21 defaultStartingTimeHour];
          v38 = (v37 + 60 * [v21 defaultStartingTimeMinutes]);
          v39 = [(IPFeatureScanner *)self normalizedAllDayDateFromDate:v29];
          v40 = [v36 dateWithTimeInterval:v39 sinceDate:v38];

          if (v40 == 0) | v26 & 1 || ((v89 ^ 1))
          {
            v31 = v35;
            if (!v40)
            {
              goto LABEL_36;
            }

            v42 = 0;
          }

          else
          {
            [v40 timeIntervalSinceDate:v29];
            v42 = fabs(v41) <= 5400.0;
            v31 = v35;
          }

          if (!(v84 & 1 | ((v26 & 1) == 0) | v33) || v42)
          {
            v43 = v40;

            v89 = 1;
            [v13 setIpsos_usesDefaultClassificationTypeStartTime:1];
            v40 = v43;

            v26 = 0;
            v31 = v40;
            v29 = v40;
            v28 = v87;
          }
        }

LABEL_36:
        v85 = v40;
        if (v26 & 1) != 0 || ((v28 ^ 1))
        {
          v88 = v31;
        }

        else
        {
          [v21 defaultDuration];
          if (v44 <= 0.0)
          {
            if ([(IPFeatureScanner *)self isDateAroundNoon:v29])
            {
              v47 = v29;
              v48 = 3600.0;
            }

            else
            {
              v47 = v29;
              v48 = 7200.0;
            }

            v46 = [v47 dateByAddingTimeInterval:v48];
          }

          else
          {
            v45 = MEMORY[0x277CBEAA8];
            [v21 defaultDuration];
            v46 = [v45 dateWithTimeInterval:v29 sinceDate:?];
          }

          v49 = v46;

          v88 = v49;
        }

        v91 = 0;
        v50 = [(IPFeatureScanner *)self bodyMessageUnits];
        v51 = [v83 objectAtIndexedSubscript:0];
        [v51 originalMessage];
        v53 = v52 = self;
        v54 = [v53 subject];
        v55 = [v21 adjustedEventTitleForMessageUnits:v50 subject:v54 dateInSubject:v79 eventStartDate:v29 isGeneratedFromSubject:&v91];

        v90 = 0;
        if ([v21 isSportRelated])
        {
          v56 = [(IPFeatureScanner *)v52 decoratedTitle:v55 withSubtitles:v78];
          self = v52;
          v12 = v86;
        }

        else
        {
          self = v52;
          v57 = v88;
          if ([v21 isMovieRelated] && v82)
          {
            v56 = [(IPFeatureScanner *)v52 decoratedTitle:v55 withSubtitles:v82];
            v12 = v86;
            goto LABEL_66;
          }

          v12 = v86;
          if ([v21 isCultureRelated] && objc_msgSend(v76, "count"))
          {
            v58 = self;
            v59 = v55;
            v60 = v76;
LABEL_65:
            v56 = [(IPFeatureScanner *)v58 decoratedTitle:v59 withSubtitles:v60];
            goto LABEL_66;
          }

          if ([v21 isMealRelated] && objc_msgSend(v75, "count"))
          {
            v58 = self;
            v59 = v55;
            v60 = v75;
            goto LABEL_65;
          }

          if (![v55 length] && objc_msgSend(v74, "count"))
          {
            v58 = self;
            v59 = v55;
            v60 = v74;
            goto LABEL_65;
          }

          if (![v21 prefersTitleSenderDecoration])
          {
            goto LABEL_67;
          }

          v61 = [v21 defaultTitle];
          v62 = [v61 isEqualToString:v55];

          if (!v62)
          {
            v57 = v88;
            goto LABEL_67;
          }

          v63 = [v83 firstObject];
          v64 = [v63 originalMessage];

          v65 = [v64 sender];
          v66 = [v64 recipients];
          v56 = -[IPFeatureScanner decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:](self, "decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:", v21, v55, v65, v66, [v64 isSent], &v90);

          v12 = v86;
          v55 = v64;
        }

        v57 = v88;
LABEL_66:

        v55 = v56;
LABEL_67:
        [v13 setAllDay:v26];
        [v13 setStartDate:v29];
        [v13 setEndDate:v57];
        [v13 setIpsos_isTimeApproximate:v89];
        [v13 setTitle:v55];
        if ([v55 length])
        {
          v67 = v91;
          v68 = [v13 ipsos_eventAttributes];
          v69 = 2048;
          if (v67)
          {
            v69 = 1024;
          }

          [v13 setIpsos_eventAttributes:v68 | v69];
          if (v90 == 1)
          {
            [v13 setIpsos_eventAttributes:{objc_msgSend(v13, "ipsos_eventAttributes") | 0x1000}];
          }
        }

LABEL_73:
        ++v12;
      }

      while (v81 != v12);
      v70 = [obj countByEnumeratingWithState:&v92 objects:v96 count:16];
      v81 = v70;
      if (!v70)
      {
LABEL_77:

        v11 = v72;
        v10 = v73;
        break;
      }
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (id)messageSenderName
{
  v2 = [(IPFeatureScanner *)self bodyMessageUnits];
  v3 = [v2 firstObject];
  v4 = [v3 originalMessage];

  v5 = [v4 sender];
  v6 = [v5 displayableName];

  return v6;
}

- (id)shortNameForPerson:(id)a3
{
  v3 = [a3 displayableName];
  if ([v3 containsString:@"@"])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [v5 personNameComponentsFromString:v3];

    if (v6)
    {
      v7 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v6 style:1 options:0];
    }

    else
    {
      v7 = v3;
    }

    v4 = v7;
  }

  return v4;
}

- (id)decoratedTitle:(id)a3 withSubtitles:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IPLocalizedString_once != -1)
  {
    [IPFeatureScanner cleanedStringForFeatureData:];
  }

  v7 = [IPLocalizedString_bundle localizedStringForKey:@"%@: %@" value:&stru_285AD0E88 table:@"DataDetectorsNaturalLanguage"];
  if (IPLocalizedString_once != -1)
  {
    [IPFeatureScanner cleanedStringForFeatureData:];
  }

  v8 = [IPLocalizedString_bundle localizedStringForKey:@" / " value:&stru_285AD0E88 table:@"DataDetectorsNaturalLanguage"];
  if ([v6 count] && objc_msgSend(v6, "count") <= 3)
  {
    v9 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
    v10 = [v9 array];

    v11 = [v10 _pas_componentsJoinedByString:v8];
    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v11 lowercaseStringWithLocale:v12];
    if ([v13 isEqualToString:v11])
    {
    }

    else
    {
      v14 = [v11 uppercaseStringWithLocale:v12];
      v15 = [v14 isEqualToString:v11];

      if (!v15)
      {
LABEL_11:
        if ([v5 length])
        {
          v25 = _PASValidatedFormat(v7, v18, v19, v20, v21, v22, v23, v24, v5);
        }

        else
        {
          v25 = v11;
        }

        v26 = v25;

        v6 = v10;
        v5 = v26;
        goto LABEL_15;
      }
    }

    v16 = [MEMORY[0x277CBEAF8] currentLocale];
    v17 = [v11 capitalizedStringWithLocale:v16];

    v11 = v17;
    goto LABEL_11;
  }

LABEL_15:

  return v5;
}

- (void)confidenceForEvents:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [(IPFeatureScanner *)self confidenceForEvent:v9 baseConfidence:1.0];
        v11 = fmin(v10, 1.0);
        if (v11 < 0.0)
        {
          v11 = 0.0;
        }

        [v9 setIpsos_confidence:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)analyzeFeatures:(id)a3 messageUnit:(id)a4 checkPolarity:(BOOL)a5 polarity:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = objc_opt_new();
  v12 = [v11 originalMessage];
  v13 = [v12 dateSent];

  v14 = [(IPFeatureScanner *)self bodyMessageUnits];
  v15 = [v14 firstObject];
  v16 = v15 == v11;

  v17 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_203];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__IPFeatureScanner_analyzeFeatures_messageUnit_checkPolarity_polarity___block_invoke_2;
  v24[3] = &unk_278F22DA8;
  v30 = v35;
  v18 = v13;
  v33 = a5;
  v34 = v16;
  v25 = v18;
  v26 = self;
  v19 = v10;
  v27 = v19;
  v20 = v11;
  v28 = v20;
  v32 = a6;
  v21 = v17;
  v29 = v21;
  v31 = &v37;
  [v19 enumerateObjectsUsingBlock:v24];
  v22 = v38[5];

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);

  return v22;
}

void __71__IPFeatureScanner_analyzeFeatures_messageUnit_checkPolarity_polarity___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v96 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    if ([v9 type] && objc_msgSend(v9, "type") != 1 || (objc_msgSend(v9, "isMatchStringInsideQuotationMarks") & 1) != 0)
    {
      goto LABEL_56;
    }

    v82 = a4;
    v84 = [v9 value];
    v10 = [v9 contextDictionary];
    v11 = [v10 objectForKeyedSubscript:@"endDate"];

    v12 = [v9 contextDictionary];
    v13 = [v12 objectForKeyedSubscript:@"endDateTimeZone"];

    if (!v13)
    {
      v13 = [MEMORY[0x277CBEBB0] systemTimeZone];
    }

    v83 = v13;
    v14 = [v9 contextDictionary];
    v15 = [v14 objectForKeyedSubscript:@"allDay"];
    obj = [v15 BOOLValue];

    v16 = [v9 contextDictionary];
    v17 = [v16 objectForKeyedSubscript:@"prefersAllDay"];
    v74 = [v17 BOOLValue];

    v18 = [v9 contextDictionary];
    v19 = [v18 objectForKeyedSubscript:@"timeIsApproximate"];
    v77 = [v19 BOOLValue];

    v20 = [v9 contextDictionary];
    v21 = [v20 objectForKeyedSubscript:@"timeNeedsMeridianGuess"];
    v73 = [v21 BOOLValue];

    v22 = [v9 contextDictionary];
    v23 = [v22 objectForKeyedSubscript:@"dateTimeIsTenseDependent"];
    v75 = [v23 BOOLValue];

    v24 = [v9 contextDictionary];
    v25 = [v24 objectForKeyedSubscript:@"dateIsTimeOnlyAndReferrengingToSentDate"];
    v72 = [v25 BOOLValue];

    v26 = [v9 contextDictionary];
    v27 = [v26 objectForKeyedSubscript:@"isTimeOffset"];
    v71 = [v27 BOOLValue];

    v28 = [v9 contextDictionary];
    v29 = [v28 objectForKeyedSubscript:@"dateOnlyContainsTimeInformation"];
    LOBYTE(v27) = [v29 BOOLValue];

    v30 = [v9 contextDictionary];
    v31 = [v30 objectForKeyedSubscript:@"isDateRange"];
    v81 = [v31 BOOLValue];

    v32 = [v9 contextDictionary];
    v33 = [v32 objectForKeyedSubscript:@"extractedInSubject"];
    v34 = [v33 BOOLValue];

    v85 = v11;
    v35 = v11 == 0;
    v36 = *(*(*(a1 + 72) + 8) + 24) & v27;
    v37 = [v84 compare:*(a1 + 32)];
    v38 = v84;
    if ((v36 & 1) != 0 || v37 == -1)
    {
      if (IPDebuggingModeEnabled_once != -1)
      {
        [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
      }

      a4 = v82;
      v39 = v85;
      if (IPDebuggingModeEnabled_sEnabled == 1)
      {
        v42 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging();
          v42 = _IPLogHandle;
        }

        v39 = v85;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = v42;
          v44 = [v9 matchString];
          *buf = 138412290;
          *&buf[4] = v44;
          _os_log_impl(&dword_2485E4000, v43, OS_LOG_TYPE_INFO, "Skip date:%@ #FeatureManager", buf, 0xCu);
        }
      }

      goto LABEL_55;
    }

    v91 = 0;
    *buf = 1;
    if (*(a1 + 96) == 1)
    {
      v39 = v85;
      if ((*(a1 + 97) & 1) == 0 && v34 == 1)
      {
        goto LABEL_30;
      }

      if (([*(a1 + 40) isEventProposalOrConfirmationFromFeatures:*(a1 + 48) fromFeatureAtIndex:a3 messageUnit:*(a1 + 56) eventIsTenseDependent:v75 extractedFromSubject:v34 extractedPolarity:buf polarityInfluencedByIpsosPlistRef:&v91] & 1) == 0)
      {
        if (v91)
        {
          v40 = *(a1 + 40);
          v41 = -21;
LABEL_31:
          [v40 setResultType:v41];
LABEL_54:
          a4 = v82;
LABEL_55:
          *(*(*(a1 + 72) + 8) + 24) = v81;

LABEL_56:
          goto LABEL_57;
        }

LABEL_30:
        v40 = *(a1 + 40);
        v41 = -20;
        goto LABEL_31;
      }
    }

    else
    {
      *buf = *(a1 + 88);
      v39 = v85;
      if ((*buf & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        goto LABEL_30;
      }
    }

    v45 = MEMORY[0x277CC5A28];
    v46 = [*(a1 + 64) result];
    v47 = [v45 eventWithEventStore:v46];

    [v47 setIpsos_eventAttributes:0];
    v48 = [*(a1 + 56) originalMessage];
    LODWORD(v46) = [v48 isGroupConversation];

    if (v46)
    {
      [v47 setIpsos_eventAttributes:{objc_msgSend(v47, "ipsos_eventAttributes") | 8}];
    }

    v49 = [*(a1 + 56) originalMessage];
    v50 = [v49 isSenderSignificant];

    if (v50)
    {
      [v47 setIpsos_eventAttributes:{objc_msgSend(v47, "ipsos_eventAttributes") | 0x100}];
    }

    v51 = v35 | v77 | obj;
    v94 = v9;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
    [v47 setIpsos_dataFeatures:v52];

    [v47 setIpsos_messageUnit:*(a1 + 56)];
    [v47 setIpsos_eventStatus:{objc_msgSend(*(a1 + 40), "eventStatusFromPolarity:", *buf)}];
    v39 = v85;
    if (v85)
    {
      if ((obj & 1) == 0)
      {
LABEL_39:
        v54 = v83;
        goto LABEL_40;
      }
    }

    else
    {
      if ((obj & 1) == 0)
      {
        if ([*(a1 + 40) isDateAroundNoon:v84])
        {
          v55 = 3600.0;
        }

        else
        {
          v55 = 7200.0;
        }

        v39 = [v84 dateByAddingTimeInterval:v55];
        goto LABEL_39;
      }

      v39 = [v84 dateByAddingTimeInterval:1.0];
    }

    v53 = [v39 dateByAddingTimeInterval:-1.0];

    v54 = 0;
    v39 = v53;
LABEL_40:
    [v47 setStartTimeZone:v54];
    v83 = v54;
    [v47 setEndTimeZone:v54];
    [v47 setAllDay:obj & 1];
    [v47 setStartDate:v84];
    [v47 setEndDate:v39];
    [v47 setIpsos_isTimeApproximate:v77 & 1];
    [v47 setIpsos_isEndTimeApproximate:v51 & 1];
    [v47 setIpsos_timeNeedsMeridianGuess:v73];
    [v47 setIpsos_isDateTimeTenseDependent:v75];
    [v47 setIpsos_isEventTimeOnlyAndReferrengingToSentDate:v72];
    [v47 setIpsos_isTimeOffset:v71];
    [v47 setIpsos_eventClassificationType:0];
    [v47 setIpsos_allDayPreferred:v74];
    v93 = v9;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
    [v47 setIpsos_dataFeatures:v56];

    [v47 setIpsos_messageUnit:*(a1 + 56)];
    v57 = MEMORY[0x277CC59B0];
    v58 = [*(a1 + 64) result];
    v59 = [v57 calendarForEntityType:0 eventStore:v58];
    [v47 setCalendar:v59];

    [*(*(*(a1 + 80) + 8) + 40) addObject:v47];
    v60 = [*(a1 + 40) _nearbyFeatureDatas:*(a1 + 48) fromFeatureAtIndex:a3 messageUnit:*(a1 + 56)];
    v61 = [*(a1 + 40) extractedNotesStrings];
    v62 = [*(a1 + 40) notesStringsFromDataFeatures:v60];
    [v61 addObjectsFromArray:v62];

    v63 = [MEMORY[0x277CBEB18] array];
    v78 = v60;
    [v63 addObjectsFromArray:v60];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obja = [v63 reverseObjectEnumerator];
    v64 = [obja countByEnumeratingWithState:&v87 objects:v92 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v88;
      v86 = v39;
      v76 = v63;
      while (2)
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v88 != v66)
          {
            objc_enumerationMutation(obja);
          }

          v68 = *(*(&v87 + 1) + 8 * i);
          if ([v68 type] == 3 || objc_msgSend(v68, "type") == 7 || objc_msgSend(v68, "type") == 12 || objc_msgSend(v68, "type") == 13)
          {
            v69 = [*(a1 + 40) cleanedStringForFeatureData:v68];
            [v47 setLocation:v69];

            v39 = v86;
            v63 = v76;
            goto LABEL_53;
          }
        }

        v65 = [obja countByEnumeratingWithState:&v87 objects:v92 count:16];
        v39 = v86;
        v63 = v76;
        if (v65)
        {
          continue;
        }

        break;
      }
    }

LABEL_53:

    v38 = v84;
    goto LABEL_54;
  }

LABEL_57:
  objc_autoreleasePoolPop(v8);
  if (a3 == 100)
  {
    *a4 = 1;
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (unint64_t)eventStatusFromPolarity:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    return 0;
  }

  else
  {
    return a3 - 1;
  }
}

- (id)decoratedTitleFromEventType:(id)a3 title:(id)a4 sender:(id)a5 recipients:(id)a6 isSent:(BOOL)a7 isTitleSenderDecorated:(BOOL *)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if ([v17 count] < 2)
  {
    if (v9)
    {
      v19 = [v17 firstObject];
    }

    else
    {
      v19 = v16;
    }

    v20 = v19;
    if (v19)
    {
      v21 = [(IPFeatureScanner *)self shortNameForPerson:v19];
      if (([v21 containsString:@"+"] & 1) == 0 && objc_msgSend(v21, "integerValue") <= 0)
      {
        v22 = [v14 decoratedTitleFromTitle:v15 participantName:v21 isTitleSenderDecorated:a8];

        v15 = v22;
      }
    }

    v18 = v15;
  }

  else
  {
    v18 = v15;
  }

  return v18;
}

@end