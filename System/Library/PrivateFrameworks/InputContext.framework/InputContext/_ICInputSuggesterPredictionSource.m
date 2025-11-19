@interface _ICInputSuggesterPredictionSource
- (BOOL)_populateError:(id *)a3 withExplanations:(id)a4;
- (_ICInputSuggesterPredictionSource)init;
- (id)_getPredictedItemFromStructuredInfo:(id)a3;
- (id)_quickTypeQueryWithTrigger:(id)a3 searchContext:(id)a4 limit:(unint64_t)a5 timeoutInMilliseconds:(unint64_t)a6 errorWithExplanations:(id *)a7;
- (id)getPeopleSuggester;
- (id)requestFromTrigger:(id)a3 searchContext:(id)a4;
- (void)getPeopleSuggester;
- (void)hibernate;
- (void)init;
- (void)logEngagementForPredictedValues:(id)a3 position:(unint64_t)a4;
- (void)logImpressionForPredictedValues:(id)a3;
- (void)predictedItemsWithProactiveTrigger:(id)a3 searchContext:(id)a4 limit:(unint64_t)a5 timeoutInMilliseconds:(unint64_t)a6 handler:(id)a7;
- (void)propogateMetrics:(id)a3 data:(id)a4;
- (void)provideFeedbackForString:(id)a3 type:(unsigned __int8)a4 style:(unsigned __int8)a5;
- (void)warmUp;
@end

@implementation _ICInputSuggesterPredictionSource

- (void)warmUp
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(_ICInputSuggesterPredictionSource *)self getPeopleSuggester];
  v3 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412546;
    v6 = @"_ICPeopleSuggestorPredictionSource";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_INFO, "%@:  warming up %@", &v5, 0x16u);
  }

  [v2 warmUp];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)getPeopleSuggester
{
  *&v13[5] = *MEMORY[0x277D85DE8];
  v3 = [(_ICInputSuggesterPredictionSource *)self inputSuggester];

  if (v3)
  {
LABEL_2:
    v4 = [(_ICInputSuggesterPredictionSource *)self inputSuggester];
    goto LABEL_3;
  }

  if (![MEMORY[0x277CCACC8] isMainThread])
  {
    [(NSCondition *)self->_peopleSuggestorLoadedCondition lock];
    v8 = [(_ICInputSuggesterPredictionSource *)self inputSuggester];

    if (v8)
    {
      [(NSCondition *)self->_peopleSuggestorLoadedCondition unlock];
    }

    else
    {
      do
      {
        v9 = _ICProactiveQuickTypeOSLogFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(_ICInputSuggesterPredictionSource *)v12 getPeopleSuggester];
        }

        [(NSCondition *)self->_peopleSuggestorLoadedCondition wait];
        v10 = [(_ICInputSuggesterPredictionSource *)self inputSuggester];
      }

      while (!v10);
      [(NSCondition *)self->_peopleSuggestorLoadedCondition unlock];
      v11 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [_ICInputSuggesterPredictionSource getPeopleSuggester];
      }
    }

    goto LABEL_2;
  }

  v7 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ICInputSuggesterPredictionSource getPeopleSuggester];
  }

  v4 = 0;
LABEL_3:
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (_ICInputSuggesterPredictionSource)init
{
  v15.receiver = self;
  v15.super_class = _ICInputSuggesterPredictionSource;
  v2 = [(_ICInputSuggesterPredictionSource *)&v15 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = @"_ICInputSuggesterPredictionSource";

    v5 = objc_alloc_init(MEMORY[0x277CCA928]);
    peopleSuggestorLoadedCondition = v3->_peopleSuggestorLoadedCondition;
    v3->_peopleSuggestorLoadedCondition = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    offered = v3->_offered;
    v3->_offered = v7;

    v9 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_ICInputSuggesterPredictionSource init];
    }

    objc_initWeak(&location, v3);
    v10 = dispatch_get_global_queue(17, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41___ICInputSuggesterPredictionSource_init__block_invoke;
    v12[3] = &unk_2797ADC20;
    objc_copyWeak(&v13, &location);
    dispatch_async(v10, v12);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (BOOL)_populateError:(id *)a3 withExplanations:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *a3;
  if (!*a3)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = objc_opt_new();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69___ICInputSuggesterPredictionSource__populateError_withExplanations___block_invoke;
    v13[3] = &unk_2797ADD78;
    v13[4] = &v14;
    [v5 enumerateExplanationCodeWithBlock:v13];
    if ([v15[5] count])
    {
      v7 = [v15[5] componentsJoinedByString:@" "];
      v8 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *a3 = [v8 errorWithDomain:@"com.apple.inputcontext.errors" code:5 userInfo:v9];

      v10 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [_ICInputSuggesterPredictionSource _populateError:withExplanations:];
      }
    }

    else
    {
      v7 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [_ICInputSuggesterPredictionSource _populateError:withExplanations:];
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

- (id)_quickTypeQueryWithTrigger:(id)a3 searchContext:(id)a4 limit:(unint64_t)a5 timeoutInMilliseconds:(unint64_t)a6 errorWithExplanations:(id *)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v36 = 0;
  v34 = @"_ICPeopleSuggestorPredictionSource_quickTypeQueryWithQuery";
  v12 = mach_absolute_time();
  v35 = v12;
  v13 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = @"_ICPeopleSuggestorPredictionSource";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_254BD0000, v13, OS_LOG_TYPE_INFO, "%@: _quickTypeQueryWithQuery: %@", buf, 0x16u);
  }

  v14 = [(_ICInputSuggesterPredictionSource *)self getPeopleSuggester];
  if (v14)
  {
    v15 = [(_ICInputSuggesterPredictionSource *)self requestFromTrigger:v10 searchContext:v11];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__2;
    v43 = __Block_byref_object_dispose__2;
    v44 = 0;
    v31 = 0;
    v32[0] = &v31;
    v32[1] = 0x3032000000;
    v32[2] = __Block_byref_object_copy__2;
    v32[3] = __Block_byref_object_dispose__2;
    v33 = 0;
    inputSuggester = self->_inputSuggester;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __128___ICInputSuggesterPredictionSource__quickTypeQueryWithTrigger_searchContext_limit_timeoutInMilliseconds_errorWithExplanations___block_invoke;
    v30[3] = &unk_2797ADDA0;
    v30[4] = buf;
    v30[5] = &v31;
    [(PSGInputSuggester *)inputSuggester inputSuggestionsWithRequest:v15 completion:v30];
    if (*(v32[0] + 40))
    {
      v17 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_ICInputSuggesterPredictionSource _quickTypeQueryWithTrigger:v32 searchContext:v17 limit:? timeoutInMilliseconds:? errorWithExplanations:?];
      }

      *a7 = *(v32[0] + 40);
      v18 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v19 = [*(*&buf[8] + 40) explanationSet];
      if (v19)
      {
        v20 = [*(*&buf[8] + 40) responseItems];
        v21 = [v20 count] == 0;

        if (v21)
        {
          v22 = [*(*&buf[8] + 40) explanationSet];
          [(_ICInputSuggesterPredictionSource *)self _populateError:a7 withExplanations:v22];
        }
      }

      v23 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [*(*&buf[8] + 40) responseItems];
        v25 = [v24 count];
        *v37 = 138412546;
        v38 = @"_ICPeopleSuggestorPredictionSource";
        v39 = 2048;
        v40 = v25;
        _os_log_impl(&dword_254BD0000, v23, OS_LOG_TYPE_INFO, "%@: _quickTypeQueryWithTrigger got %lu items", v37, 0x16u);
      }

      v18 = [*(*&buf[8] + 40) responseItems];
    }

    _Block_object_dispose(&v31, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_ICInputSuggesterPredictionSource _quickTypeQueryWithTrigger:v15 searchContext:? limit:? timeoutInMilliseconds:? errorWithExplanations:?];
    }

    v18 = MEMORY[0x277CBEBF8];
  }

  v26 = mach_absolute_time();
  _ICMachTimeToNanoseconds(v26 - v12);
  v27 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [_ICInputSuggesterPredictionSource _quickTypeQueryWithTrigger:searchContext:limit:timeoutInMilliseconds:errorWithExplanations:];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)predictedItemsWithProactiveTrigger:(id)a3 searchContext:(id)a4 limit:(unint64_t)a5 timeoutInMilliseconds:(unint64_t)a6 handler:(id)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v41 = a4;
  v36 = a7;
  v48[3] = 0;
  v48[1] = @"_ICPeopleSuggestorPredictionSource_predictedItemsWithProactiveTrigger";
  v35 = mach_absolute_time();
  v48[2] = v35;
  v11 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_ICInputSuggesterPredictionSource predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:];
  }

  v48[0] = 0;
  v12 = [(_ICInputSuggesterPredictionSource *)self _quickTypeQueryWithTrigger:v38 searchContext:v41 limit:a5 timeoutInMilliseconds:a6 errorWithExplanations:v48];
  v37 = v48[0];
  v13 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  v42 = v13;
  if (v14)
  {
    v43 = *v45;
    do
    {
      v15 = 0;
      do
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        v17 = [v16 textualResponseSuggestion];

        if (v17)
        {
          v18 = [_ICProactiveTrigger alloc];
          v49 = @"type";
          v50 = @"SmartReply";
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v20 = [(_ICProactiveTrigger *)v18 initWithSource:0 attributes:v19];

          v21 = [MEMORY[0x277CBEAA8] date];
          v22 = [_ICPredictedItem alloc];
          v23 = [v16 textualResponseSuggestion];
          v24 = [v23 responseText];
          v25 = [v16 textualResponseSuggestion];
          v26 = [v25 responseCategory];
          v27 = [v41 applicationBundleIdentifier];
          LOWORD(v34) = 0;
          v28 = [(_ICPredictedItem *)v22 initWithIdentifier:@"SmartReply" itemType:0 score:v24 value:v26 label:0 name:v21 date:1.0 originatingBundleID:v27 originatingWebsiteURL:0 predictionAge:30 shouldAggregate:v34 flags:0 targetBundleID:0 operationData:v20 proactiveTrigger:?];

          [v42 addObject:v28];
LABEL_10:

          goto LABEL_11;
        }

        v29 = [v16 structuredInfoSuggestion];

        if (v29)
        {
          v20 = [v16 structuredInfoSuggestion];
          v21 = [(_ICInputSuggesterPredictionSource *)self _getPredictedItemFromStructuredInfo:v20];
          if (v21)
          {
            [v42 addObject:v21];
          }

          goto LABEL_10;
        }

LABEL_11:
        ++v15;
      }

      while (v14 != v15);
      v30 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      v14 = v30;
    }

    while (v30);
  }

  v36[2](v36, v42, v37);
  v31 = mach_absolute_time();
  _ICMachTimeToNanoseconds(v31 - v35);
  v32 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [_ICInputSuggesterPredictionSource predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_getPredictedItemFromStructuredInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 proactiveTrigger];
  v5 = [_ICProactiveTrigger alloc];
  v6 = [v4 triggerAttributes];
  v7 = [(_ICProactiveTrigger *)v5 initWithSource:0 attributes:v6];

  v8 = [v3 portraitItem];

  if (v8)
  {
    v9 = [v3 portraitItem];

    v10 = [_ICPredictedItem predictedItemFromQuickTypeItem:v9 trigger:v7];
  }

  else
  {
    v9 = [v3 operationalItem];

    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [_ICPredictedItem alloc];
    v13 = [v9 itemIdentifier];
    v14 = [v9 value];
    v15 = [v9 bundleIdentifier];
    v16 = [v9 operationData];
    LOWORD(v19) = 0;
    v10 = [(_ICPredictedItem *)v12 initWithIdentifier:v13 itemType:1 score:v14 value:0 label:0 name:v11 date:1.0 originatingBundleID:v15 originatingWebsiteURL:0 predictionAge:30 shouldAggregate:v19 flags:0 targetBundleID:v16 operationData:v7 proactiveTrigger:?];

    v17 = [(_ICPredictedItem *)v10 identifier];
    LODWORD(v14) = [v17 isEqualToString:@"surf"];

    if (v14)
    {
      [(_ICPredictedItem *)v10 setLayoutHint:1];
    }
  }

  return v10;
}

- (id)requestFromTrigger:(id)a3 searchContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = [MEMORY[0x277CBEB18] array];
  v7 = [v5 inputContextHistory];

  if (v7)
  {
    v8 = [v5 inputContextHistory];
    if ([v8 mostRecentTextEntryIsByMe])
    {
      v23 = 0;
    }

    else
    {
      v23 = [v8 mostRecentNonSenderTextEntry];
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70___ICInputSuggesterPredictionSource_requestFromTrigger_searchContext___block_invoke;
    v26[3] = &unk_2797ADDC8;
    v26[4] = &v27;
    [v8 enumerateAllEntries:v26];
  }

  else
  {
    v23 = 0;
  }

  v9 = objc_alloc(MEMORY[0x277D41EB0]);
  v21 = v28[5];
  v20 = [v6 shouldDisableAutoCaps];
  v19 = [v6 isResponseContextDenylisted];
  v25 = [v5 context];
  v24 = [v25 length];
  if (v24)
  {
    v22 = [v5 context];
  }

  else
  {
    v22 = 0;
  }

  v10 = [v6 locale];
  v11 = [v6 applicationBundleIdentifier];
  v12 = [v6 recipients];
  v13 = [v5 inputContextHistory];
  v14 = [v13 recipientNames];
  v15 = [v5 contentType];
  v16 = [v5 availableApps];
  v17 = [v9 initWithResponseContext:v23 conversationTurns:v21 adaptationContextID:0 shouldDisableAutoCaps:v20 isResponseContextBlacklisted:v19 contextBeforeInput:v22 markedText:0 selectedText:0 contextAfterInput:0 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL localeIdentifier:0 bundleIdentifier:v10 recipients:v11 recipientNames:v12 textContentType:v14 availableApps:v15 textualResponseLimit:v16 structuredInfoLimit:3 totalSuggestionsLimit:{2, 3}];

  if (v24)
  {
  }

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (void)hibernate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = @"_ICPeopleSuggestorPredictionSource";
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_INFO, "%@: hibernating", &v6, 0xCu);
  }

  v4 = [(_ICInputSuggesterPredictionSource *)self getPeopleSuggester];
  [v4 hibernate];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logImpressionForPredictedValues:(id)a3
{
  v3 = MEMORY[0x277D41EA0];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 logMetricForEventType:0 externalMetadata:0 predictedValues:v4];
}

- (void)logEngagementForPredictedValues:(id)a3 position:(unint64_t)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D41EA0];
  v6 = a3;
  v7 = [v5 sharedInstance];
  v11 = *MEMORY[0x277D41F18];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v7 logMetricForEventType:1 externalMetadata:v9 predictedValues:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)provideFeedbackForString:(id)a3 type:(unsigned __int8)a4 style:(unsigned __int8)a5
{
  v5 = a4;
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (v5 == 3)
  {
    v14 = [v7 length];
    offered = self->_offered;
    if (v14)
    {
      [(NSMutableArray *)offered addObject:v8];
    }

    else
    {
      if ([(NSMutableArray *)offered count])
      {
        [(PSGInputSuggester *)self->_inputSuggester logMetricForEventType:0 externalMetadata:0 predictedValues:self->_offered];
        v16 = _ICProactiveQuickTypeOSLogFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [_ICInputSuggesterPredictionSource provideFeedbackForString:? type:? style:?];
        }
      }

      v17 = [(NSMutableArray *)self->_offered copy];
      prevOffered = self->_prevOffered;
      self->_prevOffered = v17;

      [(NSMutableArray *)self->_offered removeAllObjects];
    }
  }

  else if (v5 == 1)
  {
    v9 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_ICInputSuggesterPredictionSource provideFeedbackForString:v8 type:? style:?];
    }

    v10 = [(NSArray *)self->_prevOffered indexOfObject:v8];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      inputSuggester = self->_inputSuggester;
      v20 = *MEMORY[0x277D41F18];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10 + 1];
      v21[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [(PSGInputSuggester *)inputSuggester logMetricForEventType:1 externalMetadata:v13 predictedValues:self->_prevOffered];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)propogateMetrics:(id)a3 data:(id)a4
{
  v10 = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [v6 stringWithUTF8String:"SpeedMetric"];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    [(PSGInputSuggester *)self->_inputSuggester logMetricForEventType:2 externalMetadata:v10 predictedValues:0];
  }
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getPeopleSuggester
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_populateError:withExplanations:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_populateError:withExplanations:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_quickTypeQueryWithTrigger:(uint64_t)a1 searchContext:(NSObject *)a2 limit:timeoutInMilliseconds:errorWithExplanations:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412546;
  v5 = @"_ICPeopleSuggestorPredictionSource";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_254BD0000, a2, OS_LOG_TYPE_ERROR, "%@: inputSuggestionsForRequest error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_quickTypeQueryWithTrigger:(os_log_t)log searchContext:limit:timeoutInMilliseconds:errorWithExplanations:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"_ICPeopleSuggestorPredictionSource";
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "%@: failed to get People Suggestor!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_quickTypeQueryWithTrigger:searchContext:limit:timeoutInMilliseconds:errorWithExplanations:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)provideFeedbackForString:(id *)a1 type:style:.cold.1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*a1 count];
  OUTLINED_FUNCTION_2_0(&dword_254BD0000, v1, v2, "Feedback Offered by _ICInputSuggesterPredictionSource with strings count = %lu", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)provideFeedbackForString:(void *)a1 type:style:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_2_0(&dword_254BD0000, v1, v2, "Feedback Accepted by _ICInputSuggesterPredictionSource with string length = %lu", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

@end