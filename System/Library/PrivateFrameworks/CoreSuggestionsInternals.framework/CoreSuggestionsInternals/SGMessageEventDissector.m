@interface SGMessageEventDissector
+ (id)dateFromString:(id)a3;
+ (id)describeCategory:(unsigned __int8)a3;
+ (id)enrichmentsFromSchema:(id)a3 forMessage:(id)a4 forEntity:(id)a5 category:(id)a6;
+ (id)fallbackSchemaForGenericEventWithTitle:(id)a3 startDate:(id)a4 endDate:(id)a5;
+ (id)getFlightInformationForFlightEventData:(id)a3;
+ (id)loadEventClassifierModelFromPath:(id)a3;
+ (id)loadLazyPlistWithBasename:(id)a3;
+ (id)nilEntities:(id)a3;
+ (id)schemaOrgAndMissingEntitiesForExtractedEvent:(id)a3;
+ (id)sharedInstance;
+ (id)tupleWithEntity:(id)a3 label:(id)a4;
+ (unsigned)messageEventCategoryForCategoryString:(id)a3;
+ (void)logMLMessageEventExtractionInteractions:(id)a3 context:(id)a4;
- (BOOL)isDissectorProcessingWithinRateLimit;
- (BOOL)isMessageOfTypeEvent:(id)a3;
- (BOOL)shouldProcessTextMessage:(id)a3 entity:(id)a4;
- (id)_init;
- (id)eventClassifierMobileAssetsPath;
- (id)eventExtractionMobileAssetsPath;
- (id)eventsFromMessage:(id)a3 eventExtractionAssetsPath:(id)a4;
- (id)loadEventClassifierModel;
- (id)schemaOrgAndMissingEntitiesForMessage:(id)a3 withMLModelParameters:(id)a4;
- (void)addEnrichmentForEvents:(id)a3 toEntity:(id)a4 message:(id)a5 context:(id)a6 timingProcessingInMs:(unint64_t)a7;
- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5;
- (void)logFailedEventExtractionForMessage:(id)a3 category:(id)a4 missingEntities:(id)a5 timingProcessingInMs:(unint64_t)a6;
- (void)logFailedEventExtractionForMessage:(id)a3 failureCode:(int64_t)a4;
- (void)logMLMessageEventExtractionForSchema:(id)a3 message:(id)a4 category:(id)a5 timingProcessingInMs:(unint64_t)a6;
@end

@implementation SGMessageEventDissector

- (id)schemaOrgAndMissingEntitiesForMessage:(id)a3 withMLModelParameters:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() featureEnabled])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_opt_new();
    v10 = objc_autoreleasePoolPush();
    v11 = objc_opt_class();
    v12 = [v7 objectForKeyedSubscript:@"eventClassifierPath"];
    v13 = [v11 loadEventClassifierModelFromPath:v12];

    objc_autoreleasePoolPop(v10);
    if (v13)
    {
      v14 = [v6 textContent];
      v15 = [v13 predictedLabelHypothesesForString:v14 maximumCount:1];

      v16 = sgEventsLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v15 allKeys];
        v17 = [v28 objectAtIndexedSubscript:0];
        v27 = [v15 allKeys];
        [v27 objectAtIndexedSubscript:0];
        v18 = v29 = v8;
        v19 = [v15 objectForKeyedSubscript:v18];
        [v19 doubleValue];
        *buf = 138412546;
        v32 = v17;
        v33 = 2048;
        v34 = v20;
        _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Message classification by Event-Classifier: %@ (Score: %.02f)", buf, 0x16u);

        v8 = v29;
      }

      if (v15)
      {
        [v9 addObject:v15];
      }
    }

    v21 = [v7 objectForKeyedSubscript:@"assetFolderPath"];
    v22 = [(SGMessageEventDissector *)self eventsFromMessage:v6 eventExtractionAssetsPath:v21];

    if (v22 && [v22 count])
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __87__SGMessageEventDissector_schemaOrgAndMissingEntitiesForMessage_withMLModelParameters___block_invoke;
      v30[3] = &unk_27894F0A8;
      v30[4] = self;
      v23 = [v22 _pas_mappedArrayWithTransform:v30];
      [v9 addObjectsFromArray:v23];
    }

    v24 = [v9 copy];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id __87__SGMessageEventDissector_schemaOrgAndMissingEntitiesForMessage_withMLModelParameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() schemaOrgAndMissingEntitiesForExtractedEvent:v3];

  return v4;
}

- (void)logFailedEventExtractionForMessage:(id)a3 failureCode:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v8 localeIdentifier];
  [v7 setObject:v9 forKeyedSubscript:@"deviceLocale"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v7 setObject:v10 forKeyedSubscript:@"failureReasonCode"];

  v11 = [objc_opt_class() mobileAssetsEnabled];
  v12 = MEMORY[0x277CCABB0];
  if (v11)
  {
    v13 = [(NSDictionary *)self->_dissectorConfig objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
    v14 = [v13 intValue];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__21654;
    v31 = __Block_byref_object_dispose__21655;
    v32 = 0;
    lock = self->_lock;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__SGMessageEventDissector_logFailedEventExtractionForMessage_failureCode___block_invoke;
    v26[3] = &unk_27894F080;
    v26[4] = &v27;
    [(_PASLock *)lock runWithLockAcquired:v26];
    v16 = v28[5];
    _Block_object_dispose(&v27, 8);

    v17 = [v16 intValue];
    v18 = [v12 numberWithInt:(v14 - v17)];
    [v7 setObject:v18 forKeyedSubscript:@"messageProcessingRate"];
  }

  else
  {
    v13 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v18 = [v13 messageProcessingLimit];
    v19 = [v18 intValue];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__21654;
    v31 = __Block_byref_object_dispose__21655;
    v32 = 0;
    v20 = self->_lock;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__SGMessageEventDissector_logFailedEventExtractionForMessage_failureCode___block_invoke_2;
    v25[3] = &unk_27894F080;
    v25[4] = &v27;
    [(_PASLock *)v20 runWithLockAcquired:v25];
    v21 = v28[5];
    _Block_object_dispose(&v27, 8);

    v22 = [v21 intValue];
    v23 = [v12 numberWithInt:(v19 - v22)];
    [v7 setObject:v23 forKeyedSubscript:@"messageProcessingRate"];
  }

  v24 = +[SGRTCLogging defaultLogger];
  [v24 logMLMessageEventExtractionForTemplateName:@"ML_EventMessage" extractionStatus:1 outputInfo:v7 outputExceptions:MEMORY[0x277CBEBF8] timingProcessing:0];
}

- (void)logFailedEventExtractionForMessage:(id)a3 category:(id)a4 missingEntities:(id)a5 timingProcessingInMs:(unint64_t)a6
{
  v29 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [v13 localeIdentifier];
  [v12 setObject:v14 forKeyedSubscript:@"deviceLocale"];

  [v12 setObject:v10 forKeyedSubscript:@"outputCategory"];
  v15 = [objc_opt_class() mobileAssetsEnabled];
  v16 = MEMORY[0x277CCABB0];
  if (v15)
  {
    v17 = [(NSDictionary *)self->_dissectorConfig objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
    v18 = [v17 intValue];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21654;
    v36 = __Block_byref_object_dispose__21655;
    v37 = 0;
    lock = self->_lock;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __108__SGMessageEventDissector_logFailedEventExtractionForMessage_category_missingEntities_timingProcessingInMs___block_invoke;
    v31[3] = &unk_27894F080;
    v31[4] = &v32;
    [(_PASLock *)lock runWithLockAcquired:v31];
    v20 = v33[5];
    _Block_object_dispose(&v32, 8);

    v21 = [v20 intValue];
    v22 = [v16 numberWithInt:(v18 - v21)];
    [v12 setObject:v22 forKeyedSubscript:@"messageProcessingRate"];
  }

  else
  {
    v17 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v22 = [v17 messageProcessingLimit];
    v23 = [v22 intValue];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21654;
    v36 = __Block_byref_object_dispose__21655;
    v37 = 0;
    v24 = self->_lock;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __108__SGMessageEventDissector_logFailedEventExtractionForMessage_category_missingEntities_timingProcessingInMs___block_invoke_2;
    v30[3] = &unk_27894F080;
    v30[4] = &v32;
    [(_PASLock *)v24 runWithLockAcquired:v30];
    v25 = v33[5];
    _Block_object_dispose(&v32, 8);

    v26 = [v25 intValue];
    v27 = [v16 numberWithInt:(v23 - v26)];
    [v12 setObject:v27 forKeyedSubscript:@"messageProcessingRate"];
  }

  v28 = +[SGRTCLogging defaultLogger];
  [v28 logMLMessageEventExtractionForTemplateName:@"ML_EventMessage" extractionStatus:1 outputInfo:v12 outputExceptions:v11 timingProcessing:a6];
}

- (void)logMLMessageEventExtractionForSchema:(id)a3 message:(id)a4 category:(id)a5 timingProcessingInMs:(unint64_t)a6
{
  v29 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [v13 localeIdentifier];
  [v12 setObject:v14 forKeyedSubscript:@"deviceLocale"];

  [v12 setObject:v11 forKeyedSubscript:@"outputCategory"];
  v15 = [objc_opt_class() mobileAssetsEnabled];
  v16 = MEMORY[0x277CCABB0];
  if (v15)
  {
    v17 = [(NSDictionary *)self->_dissectorConfig objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
    v18 = [v17 intValue];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21654;
    v36 = __Block_byref_object_dispose__21655;
    v37 = 0;
    lock = self->_lock;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __102__SGMessageEventDissector_logMLMessageEventExtractionForSchema_message_category_timingProcessingInMs___block_invoke;
    v31[3] = &unk_27894F080;
    v31[4] = &v32;
    [(_PASLock *)lock runWithLockAcquired:v31];
    v20 = v33[5];
    _Block_object_dispose(&v32, 8);

    v21 = [v20 intValue];
    v22 = [v16 numberWithInt:(v18 - v21)];
    [v12 setObject:v22 forKeyedSubscript:@"messageProcessingRate"];
  }

  else
  {
    v17 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v22 = [v17 messageProcessingLimit];
    v23 = [v22 intValue];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21654;
    v36 = __Block_byref_object_dispose__21655;
    v37 = 0;
    v24 = self->_lock;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __102__SGMessageEventDissector_logMLMessageEventExtractionForSchema_message_category_timingProcessingInMs___block_invoke_2;
    v30[3] = &unk_27894F080;
    v30[4] = &v32;
    [(_PASLock *)v24 runWithLockAcquired:v30];
    v25 = v33[5];
    _Block_object_dispose(&v32, 8);

    v26 = [v25 intValue];
    v27 = [v16 numberWithInt:(v23 - v26)];
    [v12 setObject:v27 forKeyedSubscript:@"messageProcessingRate"];
  }

  v28 = +[SGRTCLogging defaultLogger];
  [v28 logMLMessageEventExtractionForTemplateName:@"ML_EventMessage" extractionStatus:0 outputInfo:v12 outputExceptions:MEMORY[0x277CBEBF8] timingProcessing:a6];
}

- (BOOL)isMessageOfTypeEvent:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__21654;
  v21 = __Block_byref_object_dispose__21655;
  v22 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SGMessageEventDissector_isMessageOfTypeEvent___block_invoke;
  v14[3] = &unk_27894F058;
  v14[4] = self;
  v16 = &v17;
  v6 = v4;
  v15 = v6;
  [(_PASLock *)lock runWithLockAcquired:v14];
  if ([objc_opt_class() mobileAssetsEnabled])
  {
    v7 = [(NSDictionary *)self->_dissectorConfig objectForKeyedSubscript:@"EventClassifierThreshold"];
  }

  else
  {
    v8 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v7 = [v8 eventClassifierThreshold];
  }

  v9 = v18[5];
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"Event"];
    if (v10)
    {
      v11 = [v18[5] objectForKeyedSubscript:@"Event"];
      v12 = [v11 compare:v7] == 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v12;
}

void __48__SGMessageEventDissector_isMessageOfTypeEvent___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[3] result];
  if (v4 || ([*(a1 + 32) loadEventClassifierModel], v5 = objc_claimAutoreleasedReturnValue(), v6 = v3[3], v3[3] = v5, v6, objc_msgSend(v3[3], "result"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    v8 = [v4 predictedLabelHypothesesForString:*(a1 + 40) maximumCount:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = sgEventsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(*(*(a1 + 48) + 8) + 40) allKeys];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = [v14 allKeys];
      v16 = [v15 objectAtIndexedSubscript:0];
      v17 = [v14 objectForKeyedSubscript:v16];
      [v17 doubleValue];
      v20 = 138412546;
      v21 = v13;
      v22 = 2048;
      v23 = v18;
      _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Message classification by Event-Classifier: %@ (Score: %.02f)", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)loadEventClassifierModel
{
  v3 = objc_alloc(MEMORY[0x277D425E8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SGMessageEventDissector_loadEventClassifierModel__block_invoke;
  v6[3] = &unk_278951C48;
  v6[4] = self;
  v4 = [v3 initWithBlock:v6 idleTimeout:300.0];

  return v4;
}

NSObject *__51__SGMessageEventDissector_loadEventClassifierModel__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ([objc_opt_class() mobileAssetsEnabled])
  {
    v3 = [*(a1 + 32) eventClassifierMobileAssetsPath];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v3 = [v10 eventClassifierModelPath];

    if (v3)
    {
LABEL_3:
      v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v3];
      v5 = objc_opt_new();
      [v5 setComputeUnits:0];
      v16 = 0;
      v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v4 configuration:v5 error:&v16];
      v7 = v16;
      if (v7)
      {
        v8 = v7;
        v9 = sgEventsLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to load Event Classifier Model: %@", buf, 0xCu);
        }
      }

      else
      {
        v15 = 0;
        v9 = [objc_alloc(MEMORY[0x277CD89D0]) initWithMLModel:v6 error:&v15];
        v8 = v15;
        if (!v8)
        {
          v9 = v9;
          v11 = v9;
          goto LABEL_15;
        }

        v12 = sgEventsLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to convert ML Model to NL Model: %@", buf, 0xCu);
        }
      }

      v11 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  v8 = sgEventsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to load Event Classifier Model. Model Path does not exist", buf, 2u);
  }

  v11 = 0;
LABEL_16:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)eventsFromMessage:(id)a3 eventExtractionAssetsPath:(id)a4
{
  v76[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgEventsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Fetching events from ML Runtime Plugin com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin eventExtractionAssetsPath: %{private}@", &buf, 0xCu);
  }

  v9 = [v6 textContent];
  v10 = v9;
  if (v9)
  {
    v75[0] = @"TaskName";
    v75[1] = @"InputMessage";
    v76[0] = @"EventSuggestionsFromMessage";
    v76[1] = v9;
    v75[2] = @"AssetFolderPath";
    v76[2] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
    v12 = [objc_alloc(MEMORY[0x277D253F0]) initWithParametersDict:v11];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__21654;
    v73 = __Block_byref_object_dispose__21655;
    v74 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    if (serialQueue__pasOnceToken4 != -1)
    {
      dispatch_once(&serialQueue__pasOnceToken4, &__block_literal_global_467);
    }

    v13 = serialQueue__pasExprOnceResult;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SGMessageEventDissector_eventsFromMessage_eventExtractionAssetsPath___block_invoke;
    block[3] = &unk_278956180;
    v14 = v12;
    v62 = v14;
    v63 = @"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin";
    p_buf = &buf;
    v65 = &v66;
    dispatch_async_and_wait(v13, block);
    v15 = *(*(&buf + 1) + 40);
    if (!v15)
    {
      if (*(v67 + 24))
      {
        v50 = 102;
      }

      else
      {
        v50 = 103;
      }

      [(SGMessageEventDissector *)self logFailedEventExtractionForMessage:v6 failureCode:v50];
      v19 = 0;
      goto LABEL_33;
    }

    v16 = [v15 objectForKeyedSubscript:@"events"];
    if (!v16 || ([*(*(&buf + 1) + 40) objectForKeyedSubscript:@"events"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count") == 0, v17, v16, v18))
    {
      v49 = sgEventsLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v60 = 0;
        _os_log_error_impl(&dword_231E60000, v49, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: ML Runtime failed to return events information, bailing", v60, 2u);
      }

      v23 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:@"errorCode"];
      -[SGMessageEventDissector logFailedEventExtractionForMessage:failureCode:](self, "logFailedEventExtractionForMessage:failureCode:", v6, [v23 intValue]);
      v19 = 0;
    }

    else
    {
      v19 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:@"events"];
      v20 = [v19 objectAtIndexedSubscript:0];
      v21 = [v20 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__CATEGORY"];
      v22 = [v21 isEqualToString:@"Flight"];

      if (!v22)
      {
LABEL_33:

        _Block_object_dispose(&v66, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_34;
      }

      v23 = objc_opt_new();
      v59 = [v23 getFlightReferencesAndReservationId:v6];
      v24 = [v59 objectForKeyedSubscript:@"flightReferences"];
      if (v24)
      {
        v25 = [v59 objectForKeyedSubscript:@"flightReferences"];
        v26 = [v25 count] == 0;

        if (!v26)
        {
          v55 = [v59 objectForKeyedSubscript:@"flightReferences"];
          v53 = [v55 objectAtIndexedSubscript:0];
          v27 = [v53 objectForKeyedSubscript:@"airline"];
          v28 = [v27 objectForKeyedSubscript:@"IATA"];
          v29 = [v19 objectAtIndexedSubscript:0];
          [v29 setObject:v28 forKeyedSubscript:@"carrierCode"];

          v56 = [v59 objectForKeyedSubscript:@"flightReferences"];
          v30 = [v56 objectAtIndexedSubscript:0];
          v31 = [v30 objectForKeyedSubscript:@"flightNumber"];
          v32 = [v19 objectAtIndexedSubscript:0];
          [v32 setObject:v31 forKeyedSubscript:@"flightNumber"];

          v33 = [v59 objectForKeyedSubscript:@"reservationId"];
          v34 = [v19 objectAtIndexedSubscript:0];
          v35 = v34;
          v36 = v33 ? v33 : &stru_284703F00;
          [v34 setObject:v36 forKeyedSubscript:@"reservationId"];

          if ([v19 count] == 2)
          {
            v37 = [v59 objectForKeyedSubscript:@"flightReferences"];
            v38 = [v37 count] == 2;

            if (v38)
            {
              v57 = [v59 objectForKeyedSubscript:@"flightReferences"];
              v54 = [v57 objectAtIndexedSubscript:1];
              v39 = [v54 objectForKeyedSubscript:@"airline"];
              v40 = [v39 objectForKeyedSubscript:@"IATA"];
              v41 = [v19 objectAtIndexedSubscript:1];
              [v41 setObject:v40 forKeyedSubscript:@"carrierCode"];

              v58 = [v59 objectForKeyedSubscript:@"flightReferences"];
              v42 = [v58 objectAtIndexedSubscript:1];
              v43 = [v42 objectForKeyedSubscript:@"flightNumber"];
              v44 = [v19 objectAtIndexedSubscript:1];
              [v44 setObject:v43 forKeyedSubscript:@"flightNumber"];

              v45 = [v59 objectForKeyedSubscript:@"reservationId"];
              v46 = [v19 objectAtIndexedSubscript:1];
              v47 = v46;
              if (v45)
              {
                v48 = v45;
              }

              else
              {
                v48 = &stru_284703F00;
              }

              [v46 setObject:v48 forKeyedSubscript:@"reservationId"];
            }
          }
        }
      }
    }

    goto LABEL_33;
  }

  v11 = sgEventsLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Nil MessageBody Found. Bailing.", &buf, 2u);
  }

  v19 = 0;
LABEL_34:

  v51 = *MEMORY[0x277D85DE8];

  return v19;
}

void __71__SGMessageEventDissector_eventsFromMessage_eventExtractionAssetsPath___block_invoke(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D253E8];
  v4 = a1[4];
  v5 = a1[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SGMessageEventDissector_eventsFromMessage_eventExtractionAssetsPath___block_invoke_2;
  v9[3] = &unk_27894F030;
  v11 = a1[6];
  v6 = v2;
  v10 = v6;
  [v3 performTask:v4 forPluginID:v5 completionHandler:v9];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v6 timeoutSeconds:8.0] == 1)
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 0;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: MLRuntime Plugin task timeout", v8, 2u);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }
}

void __71__SGMessageEventDissector_eventsFromMessage_eventExtractionAssetsPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 JSONResult];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: MLRuntime Plugin Task failed with error:  %@", &v11, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addEnrichmentForEvents:(id)a3 toEntity:(id)a4 message:(id)a5 context:(id)a6 timingProcessingInMs:(unint64_t)a7
{
  v68 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v47 = a5;
  v42 = a6;
  context = objc_autoreleasePoolPush();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v11;
  v48 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v48)
  {
    v45 = *v59;
    v40 = self;
    do
    {
      v13 = 0;
      do
      {
        if (*v59 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v13;
        v14 = *(*(&v58 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [objc_opt_class() schemaOrgAndMissingEntitiesForExtractedEvent:{v14, context}];
        v17 = v15;
        v18 = v16;
        objc_autoreleasePoolPop(v17);
        v19 = [v18 objectForKeyedSubscript:@"schema"];
        v20 = [v18 objectForKeyedSubscript:@"category"];
        v21 = objc_autoreleasePoolPush();
        v22 = v21;
        if (v19)
        {
          [(SGMessageEventDissector *)self logMLMessageEventExtractionForSchema:v19 message:v47 category:v20 timingProcessingInMs:a7];
          v23 = objc_autoreleasePoolPush();
          v24 = [objc_opt_class() enrichmentsFromSchema:v19 forMessage:v47 forEntity:v12 category:v20];
          objc_autoreleasePoolPop(v23);
          log = v24;
          if (v24)
          {
            v49 = v22;
            v51 = v19;
            v43 = v20;
            v44 = v18;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v54 objects:v66 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v55;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v55 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v54 + 1) + 8 * i);
                  v31 = objc_autoreleasePoolPush();
                  v32 = [MEMORY[0x277D01FA0] extractedFromTemplateWithName:@"ML_EventMessage"];
                  [v30 addTag:v32];

                  v33 = [MEMORY[0x277D01FA0] extractedFromTemplateWithShortName:@"ML_EventMessage"];
                  [v30 addTag:v33];

                  v34 = sgEventsLogHandle();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v63 = v30;
                    v64 = 2112;
                    v65 = v12;
                    _os_log_impl(&dword_231E60000, v34, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Adding Enrichment: %@ to entity:%@", buf, 0x16u);
                  }

                  [v12 addEnrichment:v30];
                  objc_autoreleasePoolPop(v31);
                }

                v27 = [v25 countByEnumeratingWithState:&v54 objects:v66 count:16];
              }

              while (v27);
            }

            self = v40;
            v20 = v43;
            v18 = v44;
            v22 = v49;
            v19 = v51;
          }

          [objc_opt_class() logMLMessageEventExtractionInteractions:v12 context:v42];
          v35 = v52;
        }

        else
        {
          v50 = v21;
          v36 = v18;
          v37 = [v18 objectForKeyedSubscript:@"missingEntities"];
          [(SGMessageEventDissector *)self logFailedEventExtractionForMessage:v47 category:v20 missingEntities:v37 timingProcessingInMs:a7];

          log = sgEventsLogHandle();
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v63 = v14;
            v64 = 2112;
            v65 = v12;
            _os_log_error_impl(&dword_231E60000, log, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Could not extract event deatils from event dictionary: %@ for entity: %@", buf, 0x16u);
          }

          v18 = v36;
          v19 = 0;
          v35 = v52;
          v22 = v50;
        }

        objc_autoreleasePoolPop(v22);
        v13 = v35 + 1;
      }

      while (v13 != v48);
      v48 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v48);
  }

  objc_autoreleasePoolPop(context);
  v38 = *MEMORY[0x277D85DE8];
}

- (id)eventExtractionMobileAssetsPath
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[SGAsset regionAsset];
  v3 = [v2 filesystemPathForAssetDataRelativePath:@"MLEventExtractionModel.assets"];

  if (_os_feature_enabled_impl())
  {
    v4 = +[SGAsset localeAsset];
    v5 = [v4 filesystemPathForAssetDataRelativePath:@"MLEventExtractionModel.assets"];

    v3 = v5;
  }

  v6 = sgEventsLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138477827;
      v12 = v3;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: MLEventExtractionAssets Path: %{private}@", &v11, 0xCu);
    }

    v8 = v3;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to find MA path for MLEventExtractionAssets", &v11, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)eventClassifierMobileAssetsPath
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[SGAsset regionAsset];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", @"EventClassifier", @"mlmodelc"];
  v4 = [v2 filesystemPathForAssetDataRelativePath:v3];

  if (_os_feature_enabled_impl())
  {
    v5 = +[SGAsset localeAsset];
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", @"EventClassifier", @"mlmodelc"];
    v7 = [v5 filesystemPathForAssetDataRelativePath:v6];

    v4 = v7;
  }

  v8 = sgEventsLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v14 = v4;
      _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: EventClassifier Model Path: %{private}@", buf, 0xCu);
    }

    v10 = v4;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to find MA path for EventClassifier model", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([objc_opt_class() featureEnabled])
  {
    v11 = mach_absolute_time();
    v12 = objc_autoreleasePoolPush();
    if ([(SGMessageEventDissector *)self shouldProcessTextMessage:v8 entity:v9])
    {
      v13 = [v9 hasEventEnrichment];
      objc_autoreleasePoolPop(v12);
      if ((v13 & 1) == 0)
      {
        v14 = sgEventsLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Message is potential event message, dissecting to extract events", buf, 2u);
        }

        if ([objc_opt_class() mobileAssetsEnabled])
        {
          v15 = [(SGMessageEventDissector *)self eventExtractionMobileAssetsPath];
          if (v15)
          {
LABEL_8:
            v16 = [(SGMessageEventDissector *)self eventsFromMessage:v8 eventExtractionAssetsPath:v15];
            v17 = v16;
            if (v16 && [v16 count])
            {
              v18 = mach_absolute_time() - v11;
              if (SGMachTimeToNanoseconds_onceToken != -1)
              {
                dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
              }

              v19 = v18 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734 / 0xF4240;
              v20 = [v17 count];
              v24[0] = MEMORY[0x277D85DD0];
              v24[1] = 3221225472;
              v24[2] = __61__SGMessageEventDissector_dissectTextMessage_entity_context___block_invoke;
              v24[3] = &unk_27894F008;
              v24[4] = self;
              v21 = v19 / v20;
              v17 = v17;
              v25 = v17;
              v26 = v9;
              v27 = v8;
              v28 = v10;
              v29 = v21;
              [v26 runWithDissectorLock:v24];
            }

            else
            {
              v23 = sgEventsLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to fetch events from MLRuntime, bailing", buf, 2u);
              }
            }

LABEL_20:

            goto LABEL_21;
          }
        }

        else
        {
          v22 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
          v15 = [v22 eventExtractionAssetsPath];

          if (v15)
          {
            goto LABEL_8;
          }
        }

        v17 = sgEventsLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to fetch Event Extraction Assets from TRIAL, bailing", buf, 2u);
        }

        goto LABEL_20;
      }
    }

    else
    {
      objc_autoreleasePoolPop(v12);
    }
  }

LABEL_21:
}

- (BOOL)shouldProcessTextMessage:(id)a3 entity:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!+[SGMessageEventDissector allowMessageEventDissector])
  {
    v11 = sgEventsLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    LOWORD(v18) = 0;
    v12 = "SGMessageEventDissector: Skipping Message Event dissector: allowMessageEventDissector is OFF";
    v13 = v11;
    v14 = 2;
LABEL_10:
    _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
    goto LABEL_11;
  }

  v6 = [v5 textContent];
  v7 = [v6 length];

  if (!v7 || (_os_feature_enabled_impl() & 1) == 0 && ![v5 isPotentialEventMessage])
  {
    goto LABEL_12;
  }

  v8 = [v5 textContent];
  v9 = [(SGMessageEventDissector *)self isMessageOfTypeEvent:v8];

  if (!v9)
  {
    v11 = sgEventsLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v18 = 138412290;
    v19 = @"Event";
    v12 = "SGMessageEventDissector: Skipping Message: Message is not classified as %@ type by the Event-Classifier.";
    v13 = v11;
    v14 = 12;
    goto LABEL_10;
  }

  if (![(SGMessageEventDissector *)self isDissectorProcessingWithinRateLimit])
  {
    v17 = sgEventsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Skipping Message: Exceeded Rate Limit", &v18, 2u);
    }

    [(SGMessageEventDissector *)self logFailedEventExtractionForMessage:v5 failureCode:101];
    goto LABEL_12;
  }

  v10 = 1;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isDissectorProcessingWithinRateLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SGMessageEventDissector_isDissectorProcessingWithinRateLimit__block_invoke;
  v5[3] = &unk_27894EFE0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__SGMessageEventDissector_isDissectorProcessingWithinRateLimit__block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = *(a1 + 32);
  if ([objc_opt_class() mobileAssetsEnabled])
  {
    v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
    v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"EventExtractionRateLimitInterval"];
  }

  else
  {
    v6 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v4 = [v6 messageProcessingLimit];

    v7 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v5 = [v7 rateLimitInterval];
  }

  v8 = v21[1];
  v9 = v21[2];
  v10 = objc_opt_new();
  [v10 timeIntervalSinceDate:v8];
  v12 = v11;
  [v5 doubleValue];
  if (v12 >= v13)
  {
    v14 = v10;

    v15 = v4;
    v8 = v14;
    v9 = v15;
  }

  if ([v9 intValue] >= 1)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "intValue") - 1}];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v9 = v16;
  }

  v17 = v21[1];
  v21[1] = v8;
  v18 = v8;

  v19 = v21[2];
  v21[2] = v9;
  v20 = v9;
}

- (id)_init
{
  v23[3] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = SGMessageEventDissector;
  v2 = [(SGMessageEventDissector *)&v21 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    v5 = v3[1];
    v3[1] = v4;

    if ([objc_opt_class() mobileAssetsEnabled])
    {
      v6 = [objc_opt_class() loadLazyPlistWithBasename:@"SGMessageEventDissectorConfig"];
      dissectorConfig = v2->_dissectorConfig;
      v2->_dissectorConfig = v6;

      v8 = v2->_dissectorConfig;
      if (!v8)
      {
        v22[0] = @"EventExtractionMessageProcessingLimit";
        v22[1] = @"EventExtractionRateLimitInterval";
        v23[0] = &unk_284749A88;
        v23[1] = &unk_284749AA0;
        v22[2] = @"EventClassifierThreshold";
        v23[2] = &unk_28474A3A8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
        v10 = v2->_dissectorConfig;
        v2->_dissectorConfig = v9;

        v8 = v2->_dissectorConfig;
      }

      v11 = [(NSDictionary *)v8 objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
      v12 = v3[2];
      v3[2] = v11;
    }

    else
    {
      v12 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
      v13 = [v12 messageProcessingLimit];
      v14 = v3[2];
      v3[2] = v13;
    }

    v15 = [(SGMessageEventDissector *)v2 loadEventClassifierModel];
    v16 = v3[3];
    v3[3] = v15;

    v17 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    lock = v2->_lock;
    v2->_lock = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)loadEventClassifierModelFromPath:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v3];
    v5 = objc_opt_new();
    [v5 setComputeUnits:0];
    v16 = 0;
    v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v4 configuration:v5 error:&v16];
    v7 = v16;
    if (v6)
    {
      v15 = v7;
      v8 = [objc_alloc(MEMORY[0x277CD89D0]) initWithMLModel:v6 error:&v15];
      v9 = v15;

      if (v8)
      {
        v10 = v8;
        v11 = v10;
      }

      else
      {
        v12 = sgEventsLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v9;
          _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to convert ML Model to NL Model: %@", buf, 0xCu);
        }

        v10 = 0;
        v11 = 0;
      }
    }

    else
    {
      v10 = sgEventsLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to load Event Classifier Model: %@", buf, 0xCu);
      }

      v11 = 0;
      v9 = v7;
    }
  }

  else
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to load Event Classifier Model. Model Path does not exist", buf, 2u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)logMLMessageEventExtractionInteractions:(id)a3 context:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = v5;
  v7 = [v5 enrichments];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 duplicateKey];
        [v14 entityType];
        if (SGEntityTypeIsEvent())
        {
          v15 = [v12 isNaturalLanguageEvent];

          if (v15)
          {
            goto LABEL_16;
          }

          v16 = [v6 backpressureHazard];
          if (v16 == 1)
          {
            v17 = 12;
          }

          else
          {
            v17 = 0;
          }

          if (v16)
          {
            v18 = v17;
          }

          else
          {
            v18 = 13;
          }

          v14 = +[SGRTCLogging defaultLogger];
          [v14 logMLMessageEventInteractionForEntity:v12 interface:0 actionType:v18];
        }

LABEL_16:
        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)getFlightInformationForFlightEventData:(id)a3
{
  v130 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__DEPARTURE_LOCATION"];
  v107 = [v3 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__ARRIVAL_LOCATION"];
  v98 = [v3 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
  v6 = [v3 objectForKeyedSubscript:@"carrierCode"];
  v99 = [v3 objectForKeyedSubscript:@"flightNumber"];
  v95 = [v3 objectForKeyedSubscript:@"reservationId"];
  v96 = v6;
  if (!v6 || !v99 || !v98)
  {
    log = sgEventsLogHandle();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, log, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: airlineCode or flightNumber or departureDateTime not found, bailing", buf, 2u);
    }

    v20 = 0;
    goto LABEL_89;
  }

  v94 = v3;
  v7 = objc_opt_new();
  [v7 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v8 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v7 setTimeZone:v8];

  v9 = [a1 dateFromString:v98];
  log = v7;
  v10 = [v7 stringFromDate:v9];

  v93 = objc_opt_new();
  v108 = v10;
  v11 = [v93 flightInformationWithAirlineCode:v96 flightNumber:v99 flightDate:v10];
  if (![v11 count])
  {
    v15 = sgEventsLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: No flight information found, bailing", buf, 2u);
    }

    v20 = 0;
    goto LABEL_88;
  }

  if ([v11 count] == 1)
  {
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 objectForKeyedSubscript:@"legs"];
    v14 = [v13 count];

    if (v14 == 1)
    {
      v15 = [v11 objectAtIndexedSubscript:0];
      v16 = [v11 objectAtIndexedSubscript:0];
      v17 = [v16 objectForKeyedSubscript:@"legs"];
      v18 = [v17 objectAtIndexedSubscript:0];

      v19 = 0;
      v109 = 0;
      goto LABEL_51;
    }
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v21 = v11;
  v103 = [v21 countByEnumeratingWithState:&v120 objects:v129 count:16];
  if (!v103)
  {

    v15 = 0;
    v109 = 0;
    v19 = 0;
LABEL_83:
    v18 = 0;
    goto LABEL_84;
  }

  obj = v21;
  v19 = 0;
  v109 = 0;
  v15 = 0;
  v101 = v4;
  v102 = *v121;
  v111 = v5;
  v100 = v11;
  do
  {
    v22 = 0;
    do
    {
      if (*v121 != v102)
      {
        objc_enumerationMutation(obj);
      }

      v110 = v15;
      v104 = v22;
      v23 = *(*(&v120 + 1) + 8 * v22);

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v105 = v23;
      v106 = [v23 objectForKeyedSubscript:@"legs"];
      v24 = [v106 countByEnumeratingWithState:&v116 objects:v128 count:16];
      if (!v24)
      {
        v19 = 0;
        goto LABEL_39;
      }

      v25 = v24;
      v19 = 0;
      v114 = *v117;
      do
      {
        v26 = 0;
        do
        {
          v27 = v19;
          if (*v117 != v114)
          {
            objc_enumerationMutation(v106);
          }

          v28 = *(*(&v116 + 1) + 8 * v26);
          v29 = [v28 objectForKeyedSubscript:@"departureAirport"];
          v30 = [v28 objectForKeyedSubscript:@"arrivalAirport"];
          v31 = [v28 objectForKeyedSubscript:@"departureActualTime"];
          v32 = [a1 dateFromString:v31];
          v33 = [log stringFromDate:v32];

          v34 = [v29 objectForKeyedSubscript:@"code"];
          if ([v5 isEqualToString:v34])
          {
            v35 = [v33 isEqualToString:v108];

            if (v35)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v36 = [v29 objectForKeyedSubscript:@"city"];
            if ([v5 isEqualToString:v36])
            {
              v37 = [v33 isEqualToString:v108];

              if (v37)
              {
LABEL_26:
                v38 = v109;
                v39 = v110;
                v109 = v28;
                v110 = v105;
                v40 = v27;
LABEL_30:

                v19 = v38;
LABEL_31:
                v41 = v28;

                v19 = v40;
                goto LABEL_32;
              }
            }

            else
            {
            }
          }

          v39 = [v30 objectForKeyedSubscript:@"code"];
          if ([v107 isEqualToString:v39])
          {
            v38 = v27;
            v40 = v28;
            goto LABEL_30;
          }

          v42 = [v30 objectForKeyedSubscript:@"city"];
          v43 = [v107 isEqualToString:v42];

          v40 = v28;
          v19 = v27;
          if (v43)
          {
            goto LABEL_31;
          }

LABEL_32:

          ++v26;
          v5 = v111;
        }

        while (v25 != v26);
        v44 = [v106 countByEnumeratingWithState:&v116 objects:v128 count:16];
        v25 = v44;
      }

      while (v44);
LABEL_39:

      v15 = v110;
      if (v110 && v109)
      {

        v11 = v100;
        v4 = v101;
        goto LABEL_49;
      }

      v22 = v104 + 1;
      v11 = v100;
      v4 = v101;
    }

    while (v104 + 1 != v103);
    v103 = [obj countByEnumeratingWithState:&v120 objects:v129 count:16];
  }

  while (v103);

  if (!v109)
  {
    v109 = 0;
    goto LABEL_83;
  }

LABEL_49:
  v18 = [v109 mutableCopy];
  if (v19)
  {
    v45 = [v19 objectForKeyedSubscript:@"arrivalAirport"];
    [v18 setObject:v45 forKeyedSubscript:@"arrivalAirport"];

    v46 = [v19 objectForKeyedSubscript:@"arrivalActualTime"];
    [v18 setObject:v46 forKeyedSubscript:@"arrivalActualTime"];

    v47 = [v19 objectForKeyedSubscript:@"arrivalGate"];
    [v18 setObject:v47 forKeyedSubscript:@"arrivalGate"];

    v48 = [v19 objectForKeyedSubscript:@"arrivalTerminal"];
    [v18 setObject:v48 forKeyedSubscript:@"arrivalTerminal"];
  }

LABEL_51:
  if (v15 && v18)
  {
    v49 = [v15 objectForKeyedSubscript:@"carrierCode"];
    v50 = [MEMORY[0x277CBEB68] null];

    if (v49 != v50)
    {
      v51 = [v15 objectForKeyedSubscript:@"carrierCode"];
      [v4 setObject:v51 forKeyedSubscript:@"carrierCode"];
    }

    v52 = [v15 objectForKeyedSubscript:@"carrierName"];
    v53 = [MEMORY[0x277CBEB68] null];

    if (v52 != v53)
    {
      v54 = [v15 objectForKeyedSubscript:@"carrierName"];
      [v4 setObject:v54 forKeyedSubscript:@"carrierName"];
    }

    v55 = [v15 objectForKeyedSubscript:@"flightNumber"];
    v56 = [MEMORY[0x277CBEB68] null];

    if (v55 != v56)
    {
      v57 = [v15 objectForKeyedSubscript:@"flightNumber"];
      [v4 setObject:v57 forKeyedSubscript:@"flightNumber"];
    }

    if (v95)
    {
      [v4 setObject:v95 forKeyedSubscript:@"reservationId"];
    }

    v58 = [v18 objectForKeyedSubscript:@"departureActualTime"];
    v59 = [MEMORY[0x277CBEB68] null];

    if (v58 != v59)
    {
      v60 = [v18 objectForKeyedSubscript:@"departureActualTime"];
      [v4 setObject:v60 forKeyedSubscript:@"departureActualTime"];
    }

    v61 = [v18 objectForKeyedSubscript:@"arrivalActualTime"];
    v62 = [MEMORY[0x277CBEB68] null];

    if (v61 != v62)
    {
      v63 = [v18 objectForKeyedSubscript:@"arrivalActualTime"];
      [v4 setObject:v63 forKeyedSubscript:@"arrivalActualTime"];
    }

    v64 = [v18 objectForKeyedSubscript:@"departureGate"];
    v65 = [MEMORY[0x277CBEB68] null];

    if (v64 != v65)
    {
      v66 = [v18 objectForKeyedSubscript:@"departureGate"];
      [v4 setObject:v66 forKeyedSubscript:@"departureGate"];
    }

    v67 = [v18 objectForKeyedSubscript:@"arrivalGate"];
    v68 = [MEMORY[0x277CBEB68] null];

    if (v67 != v68)
    {
      v69 = [v18 objectForKeyedSubscript:@"arrivalGate"];
      [v4 setObject:v69 forKeyedSubscript:@"arrivalGate"];
    }

    v115 = v19;
    v70 = [v18 objectForKeyedSubscript:@"departureTerminal"];
    v71 = [MEMORY[0x277CBEB68] null];

    if (v70 != v71)
    {
      v72 = [v18 objectForKeyedSubscript:@"departureTerminal"];
      [v4 setObject:v72 forKeyedSubscript:@"departureTerminal"];
    }

    v73 = v15;
    v74 = [v18 objectForKeyedSubscript:@"arrivalTerminal"];
    v75 = [MEMORY[0x277CBEB68] null];

    if (v74 != v75)
    {
      v76 = [v18 objectForKeyedSubscript:@"arrivalTerminal"];
      [v4 setObject:v76 forKeyedSubscript:@"arrivalTerminal"];
    }

    v77 = [v18 objectForKeyedSubscript:@"departureAirport"];
    v78 = [v18 objectForKeyedSubscript:@"arrivalAirport"];
    v79 = [v77 objectForKeyedSubscript:@"name"];
    v80 = [MEMORY[0x277CBEB68] null];

    if (v79 != v80)
    {
      v81 = [v77 objectForKeyedSubscript:@"name"];
      [v4 setObject:v81 forKeyedSubscript:@"departureAirportName"];
    }

    v82 = [v78 objectForKeyedSubscript:@"name"];
    v83 = [MEMORY[0x277CBEB68] null];

    if (v82 != v83)
    {
      v84 = [v78 objectForKeyedSubscript:@"name"];
      [v4 setObject:v84 forKeyedSubscript:@"arrivalAirportName"];
    }

    v85 = [v77 objectForKeyedSubscript:@"code"];
    v86 = [MEMORY[0x277CBEB68] null];

    if (v85 != v86)
    {
      v87 = [v77 objectForKeyedSubscript:@"code"];
      [v4 setObject:v87 forKeyedSubscript:@"departureAirportCode"];
    }

    v88 = [v78 objectForKeyedSubscript:@"code"];
    v89 = [MEMORY[0x277CBEB68] null];

    if (v88 != v89)
    {
      v90 = [v78 objectForKeyedSubscript:@"code"];
      [v4 setObject:v90 forKeyedSubscript:@"arrivalAirportCode"];
    }

    v20 = v4;

    v15 = v73;
    v19 = v115;
    goto LABEL_87;
  }

LABEL_84:
  v77 = sgEventsLogHandle();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478083;
    v125 = v108;
    v126 = 2113;
    v127 = v5;
    _os_log_error_impl(&dword_231E60000, v77, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: No flight information for departure date:%{private}@ & departureLocation:%{private}@ found, bailing", buf, 0x16u);
  }

  v20 = 0;
LABEL_87:

LABEL_88:
  v3 = v94;

LABEL_89:
  v91 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)describeCategory:(unsigned __int8)a3
{
  if (a3 > 6u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27894F0C8[a3];
  }
}

+ (unsigned)messageEventCategoryForCategoryString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Flight"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Bus"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Train"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Hotel"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Movie"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GenericEvent"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)nilEntities:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 first];

        if (!v11)
        {
          v12 = [v10 second];

          if (v12)
          {
            v13 = [v10 second];
            [v4 addObject:v13];
          }

          else
          {
            v13 = sgEventsLogHandle();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *v16 = 0;
              _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: No name for missing entity", v16, 2u);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)tupleWithEntity:(id)a3 label:(id)a4
{
  v5 = MEMORY[0x277D42648];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFirst:v7 second:v6];

  return v8;
}

+ (id)dateFromString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 dateFromString:v3];

  return v5;
}

+ (id)enrichmentsFromSchema:(id)a3 forMessage:(id)a4 forEntity:(id)a5 category:(id)a6
{
  v40[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_opt_class() messageEventCategoryForCategoryString:v12];

  if ((v13 - 1) < 5)
  {
    v14 = objc_opt_new();
    v40[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v16 = [v14 enrichmentsFromSchemas:v15 inTextMessage:v10 parentEntity:v11];

LABEL_3:
    v16 = v16;
    v17 = v16;
    goto LABEL_4;
  }

  if (v13 != 6)
  {
    v16 = 0;
    goto LABEL_3;
  }

  v20 = [v9 objectForKeyedSubscript:@"reservationFor"];
  v21 = [v20 objectForKeyedSubscript:@"name"];
  v22 = objc_opt_class();
  v23 = [v20 objectForKeyedSubscript:@"startDate"];
  v24 = [v22 dateFromString:v23];

  v25 = objc_opt_class();
  v26 = [v20 objectForKeyedSubscript:@"endDate"];
  v27 = [v25 dateFromString:v26];

  v16 = 0;
  v28 = 0;
  if (v24 && v27)
  {
    if ([v24 compare:v27] == 1)
    {
      v28 = 0;
      v16 = 0;
    }

    else
    {
      v29 = objc_alloc(MEMORY[0x277CCACA8]);
      v30 = [v20 objectForKeyedSubscript:@"startDate"];
      v31 = [v20 objectForKeyedSubscript:@"endDate"];
      v37 = [v29 initWithFormat:@"GenericEvent|%@|%@|%@", v21, v30, v31];
      v38 = v21;

      v32 = [v11 duplicateKey];
      v36 = [SGDuplicateKey duplicateKeyForPseudoEventWithGroupId:v37 parentKey:v32];

      v33 = [[SGPipelineEnrichment alloc] initWithDuplicateKey:v36 title:v21 parent:v11];
      v28 = 1;
      [(SGEntity *)v33 setState:1];
      v34 = [MEMORY[0x277D020E8] floatingRangeWithLocalStartDate:v24 endDate:v27];
      [(SGEntity *)v33 setTimeRange:v34];
      [(SGEntity *)v33 setTitle:v38];
      [v11 creationTimestamp];
      [(SGPipelineEnrichment *)v33 setCreationTimestamp:?];
      [v11 lastModifiedTimestamp];
      [(SGPipelineEnrichment *)v33 setLastModifiedTimestamp:?];
      v35 = [MEMORY[0x277D01FA0] extractedEvent];
      [(SGEntity *)v33 addTag:v35];

      v39 = v33;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];

      v21 = v38;
    }
  }

  if (v28)
  {
    goto LABEL_3;
  }

  v17 = 0;
LABEL_4:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)fallbackSchemaForGenericEventWithTitle:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"@context";
  v17[1] = @"@type";
  v18[0] = @"http://schema.org";
  v18[1] = @"http://schema.org/EventReservation";
  v18[2] = @"http://schema.org/ReservationConfirmed";
  v17[2] = @"reservationStatus";
  v17[3] = @"reservationFor";
  v15[0] = @"@type";
  v15[1] = @"name";
  v16[0] = @"http://schema.org/Event";
  v16[1] = a3;
  v15[2] = @"startDate";
  v15[3] = @"endDate";
  v16[2] = a4;
  v16[3] = a5;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 dictionaryWithObjects:v16 forKeys:v15 count:4];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)schemaOrgAndMissingEntitiesForExtractedEvent:(id)a3
{
  v178[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__CATEGORY"];
  v8 = [v6 messageEventCategoryForCategoryString:v7];

  v9 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__CATEGORY"];
  [v5 setObject:v9 forKeyedSubscript:@"category"];

  v10 = 0;
  if (v8 > 2)
  {
    if (v8 <= 4)
    {
      if (v8 != 3)
      {
        v11 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__NAME"];
        v134 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
        v12 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
        v13 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT"];
        v14 = [v13 BOOLValue];

        v15 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
        v16 = v15;
        if (v11 && v134 && v12 && v14)
        {
          v165[0] = @"http://schema.org";
          v165[1] = @"http://schema.org/LodgingReservation";
          v164[0] = @"@context";
          v164[1] = @"@type";
          v164[2] = @"checkinTime";
          v164[3] = @"checkoutTime";
          v165[2] = v134;
          v165[3] = v12;
          v165[4] = @"http://schema.org/ReservationConfirmed";
          v164[4] = @"reservationStatus";
          v164[5] = @"reservationFor";
          v162[0] = @"@type";
          v162[1] = @"name";
          v163[0] = @"http://schema.org/LodgingBusiness";
          v163[1] = v11;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:2];
          v165[5] = v17;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:6];
        }

        else
        {
          if (!v15 || !v134 || !v12)
          {
            v94 = objc_opt_class();
            v95 = [objc_opt_class() tupleWithEntity:v11 label:@"name"];
            v161[0] = v95;
            v96 = [objc_opt_class() tupleWithEntity:v134 label:@"startDate"];
            v161[1] = v96;
            v97 = [objc_opt_class() tupleWithEntity:v12 label:@"endDate"];
            v161[2] = v97;
            v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:3];
            v30 = [v94 nilEntities:v98];

            v17 = sgEventsLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v109 = [v30 _pas_componentsJoinedByString:{@", "}];
              *buf = 138412290;
              v167 = v109;
              _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Missing entities for message event extraction: %@", buf, 0xCu);
            }

            v10 = 0;
            goto LABEL_120;
          }

          v72 = sgEventsLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            v110 = [objc_opt_class() describeCategory:4];
            *buf = 138412290;
            v167 = v110;
            _os_log_debug_impl(&dword_231E60000, v72, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: Using fallback schema for generic event for category: %@", buf, 0xCu);
          }

          v10 = [objc_opt_class() fallbackSchemaForGenericEventWithTitle:v16 startDate:v134 endDate:v12];
          v17 = [objc_opt_class() describeCategory:6];
          [v5 setObject:v17 forKeyedSubscript:@"category"];
        }

        v30 = 0;
LABEL_120:

        goto LABEL_124;
      }

      v11 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__DEPARTURE_LOCATION"];
      v134 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__ARRIVAL_LOCATION"];
      v12 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
      v18 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
      v34 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT"];
      v35 = [v34 BOOLValue];

      v36 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
      v22 = v36;
      if (v11 && v134 && v12 && v18 && v35)
      {
        v150[0] = @"@context";
        v150[1] = @"@type";
        v151[0] = @"http://schema.org";
        v151[1] = @"http://schema.org/TrainReservation";
        v151[2] = @"http://schema.org/ReservationConfirmed";
        v150[2] = @"reservationStatus";
        v150[3] = @"reservationFor";
        v149[0] = @"http://schema.org/TrainTrip";
        v148[0] = @"@type";
        v148[1] = @"departureStation";
        v131 = v5;
        v37 = v36;
        v38 = v12;
        v39 = v18;
        v146[0] = @"@type";
        v146[1] = @"name";
        v147[0] = @"http://schema.org/TrainStation";
        v147[1] = v11;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
        v149[1] = v25;
        v149[2] = v38;
        v148[2] = @"departureTime";
        v148[3] = @"arrivalStation";
        v144[0] = @"@type";
        v144[1] = @"name";
        v145[0] = @"http://schema.org/TrainStation";
        v145[1] = v134;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];
        v148[4] = @"arrivalTime";
        v149[3] = v26;
        v149[4] = v18;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:5];
        v151[3] = v40;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:4];

        v18 = v39;
        v12 = v38;
        v22 = v37;
        v5 = v131;
        goto LABEL_31;
      }

      if (v36 && v12 && v18)
      {
        v69 = sgEventsLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v70 = [objc_opt_class() describeCategory:3];
          *buf = 138412290;
          v167 = v70;
LABEL_135:
          _os_log_debug_impl(&dword_231E60000, v69, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: Using fallback schema for generic event for category: %@", buf, 0xCu);

          goto LABEL_96;
        }

        goto LABEL_96;
      }

      v85 = objc_opt_class();
      v128 = [objc_opt_class() tupleWithEntity:v11 label:@"departureStation"];
      v143[0] = v128;
      v125 = [objc_opt_class() tupleWithEntity:v134 label:@"arrivalStation"];
      v143[1] = v125;
      v86 = [objc_opt_class() tupleWithEntity:v12 label:@"startDate"];
      v143[2] = v86;
      v133 = v18;
      v87 = [objc_opt_class() tupleWithEntity:v18 label:@"endDate"];
      v143[3] = v87;
      v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:4];
      v30 = [v85 nilEntities:v88];

      v25 = sgEventsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v89 = [v30 _pas_componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v167 = v89;
LABEL_133:
        _os_log_error_impl(&dword_231E60000, v25, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Missing entities for message event extraction: %@", buf, 0xCu);

        goto LABEL_122;
      }

      goto LABEL_122;
    }

    if (v8 != 5)
    {
      if (v8 != 6)
      {
        goto LABEL_129;
      }

      v11 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
      v134 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
      v12 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
      v28 = objc_opt_class();
      v29 = v28;
      if (v11 && v134 && v12)
      {
        v10 = [v28 fallbackSchemaForGenericEventWithTitle:v11 startDate:v134 endDate:v12];
        v30 = 0;
      }

      else
      {
        v73 = [objc_opt_class() tupleWithEntity:v11 label:@"name"];
        v137[0] = v73;
        v74 = [objc_opt_class() tupleWithEntity:v134 label:@"startDate"];
        v137[1] = v74;
        v75 = [objc_opt_class() tupleWithEntity:v12 label:@"endDate"];
        v137[2] = v75;
        v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:3];
        v30 = [v29 nilEntities:v76];

        v77 = sgEventsLogHandle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v105 = [v30 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v167 = v105;
          _os_log_error_impl(&dword_231E60000, v77, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Missing entities for message event extraction: %@", buf, 0xCu);
        }

        v10 = 0;
      }

      goto LABEL_124;
    }

    v11 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__NAME"];
    v134 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
    v12 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
    v41 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
    v42 = v41;
    if (v11 && v134)
    {
      v141[0] = @"@context";
      v141[1] = @"@type";
      v142[0] = @"http://schema.org";
      v142[1] = @"http://schema.org/EventReservation";
      v142[2] = @"http://schema.org/ReservationConfirmed";
      v141[2] = @"reservationStatus";
      v141[3] = @"reservationFor";
      v139[0] = @"@type";
      v139[1] = @"name";
      v140[0] = @"http://schema.org/ScreeningEvent";
      v140[1] = v11;
      v139[2] = @"startDate";
      v140[2] = v134;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:3];
      v142[3] = v43;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:4];
    }

    else
    {
      if (!v41 || !v134 || !v12)
      {
        v90 = objc_opt_class();
        v91 = [objc_opt_class() tupleWithEntity:v11 label:@"name"];
        v138[0] = v91;
        v92 = [objc_opt_class() tupleWithEntity:v134 label:@"startDate"];
        v138[1] = v92;
        v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:2];
        v30 = [v90 nilEntities:v93];

        v43 = sgEventsLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v107 = [v30 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v167 = v107;
          _os_log_error_impl(&dword_231E60000, v43, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Missing entities for message event extraction: %@", buf, 0xCu);
        }

        v10 = 0;
        goto LABEL_115;
      }

      v71 = sgEventsLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v108 = [objc_opt_class() describeCategory:5];
        *buf = 138412290;
        v167 = v108;
        _os_log_debug_impl(&dword_231E60000, v71, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: Using fallback schema for generic event for category: %@", buf, 0xCu);
      }

      v10 = [objc_opt_class() fallbackSchemaForGenericEventWithTitle:v42 startDate:v134 endDate:v12];
      v43 = [objc_opt_class() describeCategory:6];
      [v5 setObject:v43 forKeyedSubscript:@"category"];
    }

    v30 = 0;
LABEL_115:

    goto LABEL_116;
  }

  if (v8)
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_129;
      }

      v11 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__DEPARTURE_LOCATION"];
      v134 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__ARRIVAL_LOCATION"];
      v12 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
      v18 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
      v19 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT"];
      v20 = [v19 BOOLValue];

      v21 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
      v22 = v21;
      if (v11 && v134 && v12 && v18 && v20)
      {
        v159[0] = @"@context";
        v159[1] = @"@type";
        v160[0] = @"http://schema.org";
        v160[1] = @"http://schema.org/BusReservation";
        v160[2] = @"http://schema.org/ReservationConfirmed";
        v159[2] = @"reservationStatus";
        v159[3] = @"reservationFor";
        v158[0] = @"http://schema.org/BusTrip";
        v157[0] = @"@type";
        v157[1] = @"departureBusStop";
        v130 = v21;
        v23 = v11;
        v24 = v18;
        v155[0] = @"@type";
        v155[1] = @"name";
        v156[0] = @"http://schema.org/BusStop";
        v156[1] = v23;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:2];
        v158[1] = v25;
        v158[2] = v12;
        v157[2] = @"departureTime";
        v157[3] = @"arrivalBusStop";
        v153[0] = @"@type";
        v153[1] = @"name";
        v154[0] = @"http://schema.org/BusStop";
        v154[1] = v134;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:2];
        v157[4] = @"arrivalTime";
        v158[3] = v26;
        v158[4] = v18;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:5];
        v160[3] = v27;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:4];

        v18 = v24;
        v11 = v23;
        v22 = v130;
LABEL_31:

LABEL_97:
        v30 = 0;
LABEL_123:

        goto LABEL_124;
      }

      if (v21 && v12 && v18)
      {
        v69 = sgEventsLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v70 = [objc_opt_class() describeCategory:2];
          *buf = 138412290;
          v167 = v70;
          goto LABEL_135;
        }

LABEL_96:

        v10 = [objc_opt_class() fallbackSchemaForGenericEventWithTitle:v22 startDate:v12 endDate:v18];
        v25 = [objc_opt_class() describeCategory:6];
        [v5 setObject:v25 forKeyedSubscript:@"category"];
        goto LABEL_97;
      }

      v99 = objc_opt_class();
      v129 = [objc_opt_class() tupleWithEntity:v11 label:@"departureBusStop"];
      v152[0] = v129;
      v126 = [objc_opt_class() tupleWithEntity:v134 label:@"arrivalBusStop"];
      v152[1] = v126;
      v100 = [objc_opt_class() tupleWithEntity:v12 label:@"startDate"];
      v152[2] = v100;
      v133 = v18;
      v101 = [objc_opt_class() tupleWithEntity:v18 label:@"endDate"];
      v152[3] = v101;
      v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:4];
      v30 = [v99 nilEntities:v102];

      v25 = sgEventsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v89 = [v30 _pas_componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v167 = v89;
        goto LABEL_133;
      }

LABEL_122:
      v10 = 0;
      v18 = v133;
      goto LABEL_123;
    }

    v44 = objc_autoreleasePoolPush();
    v11 = [a1 getFlightInformationForFlightEventData:v4];
    objc_autoreleasePoolPop(v44);
    if (v11)
    {
      v45 = [v11 objectForKeyedSubscript:@"carrierCode"];
      v116 = [v11 objectForKeyedSubscript:@"carrierName"];
      v46 = [v11 objectForKeyedSubscript:@"flightNumber"];
      v114 = [v11 objectForKeyedSubscript:@"reservationId"];
      v47 = [v11 objectForKeyedSubscript:@"departureActualTime"];
      v48 = [v11 objectForKeyedSubscript:@"arrivalActualTime"];
      v122 = [v11 objectForKeyedSubscript:@"departureAirportName"];
      v121 = [v11 objectForKeyedSubscript:@"arrivalAirportName"];
      v49 = [v11 objectForKeyedSubscript:@"departureAirportCode"];
      v50 = [v11 objectForKeyedSubscript:@"arrivalAirportCode"];
      v120 = [v11 objectForKeyedSubscript:@"departureGate"];
      v119 = [v11 objectForKeyedSubscript:@"arrivalGate"];
      v118 = [v11 objectForKeyedSubscript:@"departureTerminal"];
      v117 = [v11 objectForKeyedSubscript:@"arrivalTerminal"];
      v132 = v47;
      v135 = v46;
      if (v45)
      {
        v51 = v46 == 0;
      }

      else
      {
        v51 = 1;
      }

      v52 = v51 || v47 == 0;
      v124 = v49;
      v127 = v48;
      v54 = v52 || v48 == 0 || v49 == 0;
      v123 = v50;
      v55 = v54 || v50 == 0;
      v56 = !v55;
      v113 = v56;
      v115 = v45;
      if (v55)
      {
        v78 = objc_opt_class();
        v112 = [objc_opt_class() tupleWithEntity:v45 label:@"carrierCode"];
        v168[0] = v112;
        v111 = [objc_opt_class() tupleWithEntity:v135 label:@"flightNumber"];
        v168[1] = v111;
        v62 = [objc_opt_class() tupleWithEntity:v47 label:@"departureTime"];
        v168[2] = v62;
        v66 = [objc_opt_class() tupleWithEntity:v48 label:@"arrivalTime"];
        v168[3] = v66;
        v79 = [objc_opt_class() tupleWithEntity:v49 label:@"departureAirportCode"];
        v168[4] = v79;
        v80 = [objc_opt_class() tupleWithEntity:v50 label:@"arrivalAirportCode"];
        v168[5] = v80;
        v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:6];
        v30 = [v78 nilEntities:v81];

        v10 = 0;
        v67 = v114;
      }

      else
      {
        v177[0] = @"@context";
        v177[1] = @"@type";
        v178[0] = @"http://schema.org";
        v178[1] = @"http://schema.org/FlightReservation";
        v177[2] = @"reservationFor";
        v176[0] = @"http://schema.org/Flight";
        v175[0] = @"@type";
        v175[1] = @"airline";
        v173[0] = @"@type";
        v173[1] = @"iataCode";
        v174[0] = @"http://schema.org/Airline";
        v174[1] = v45;
        v173[2] = @"name";
        v57 = v116;
        if (!v116)
        {
          v57 = &stru_284703F00;
        }

        v174[2] = v57;
        v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:3];
        v176[1] = v112;
        v175[2] = @"arrivalAirport";
        v171[0] = @"@type";
        v171[1] = @"iataCode";
        v172[0] = @"http://schema.org/Airport";
        v172[1] = v50;
        v171[2] = @"name";
        v58 = v121;
        if (!v121)
        {
          v58 = &stru_284703F00;
        }

        v172[2] = v58;
        v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:3];
        v176[2] = v111;
        v176[3] = v48;
        v175[3] = @"arrivalTime";
        v175[4] = @"arrivalGate";
        v59 = v119;
        if (!v119)
        {
          v59 = &stru_284703F00;
        }

        v60 = v117;
        if (!v117)
        {
          v60 = &stru_284703F00;
        }

        v176[4] = v59;
        v176[5] = v60;
        v175[5] = @"arrivalTerminal";
        v175[6] = @"departureAirport";
        v169[0] = @"@type";
        v169[1] = @"iataCode";
        v170[0] = @"http://schema.org/Airport";
        v170[1] = v49;
        v169[2] = @"name";
        v61 = v122;
        if (!v122)
        {
          v61 = &stru_284703F00;
        }

        v170[2] = v61;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:3];
        v176[6] = v62;
        v176[7] = v47;
        v175[7] = @"departureTime";
        v175[8] = @"departureGate";
        v63 = v120;
        if (!v120)
        {
          v63 = &stru_284703F00;
        }

        v64 = v118;
        if (!v118)
        {
          v64 = &stru_284703F00;
        }

        v176[8] = v63;
        v176[9] = v64;
        v175[9] = @"departureTerminal";
        v175[10] = @"flightNumber";
        v176[10] = v46;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:11];
        v66 = v65;
        v67 = v114;
        if (v114)
        {
          v68 = v114;
        }

        else
        {
          v68 = &stru_284703F00;
        }

        v178[2] = v65;
        v178[3] = v68;
        v177[3] = @"reservationId";
        v177[4] = @"reservationStatus";
        v178[4] = @"http://schema.org/ReservationConfirmed";
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:5];
        v30 = 0;
      }

      if (v113)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v10 = 0;
      v30 = 0;
    }

    v134 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
    v12 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
    v42 = [v4 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
    if (v42 && v134 && v12)
    {
      v82 = sgEventsLogHandle();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        v106 = [objc_opt_class() describeCategory:1];
        *buf = 138412290;
        v167 = v106;
        _os_log_debug_impl(&dword_231E60000, v82, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: Using fallback schema for generic event for category: %@", buf, 0xCu);
      }

      v83 = [objc_opt_class() fallbackSchemaForGenericEventWithTitle:v42 startDate:v134 endDate:v12];

      v84 = [objc_opt_class() describeCategory:6];
      [v5 setObject:v84 forKeyedSubscript:@"category"];

      v10 = v83;
    }

LABEL_116:

LABEL_124:
LABEL_125:

    if (v10)
    {
      [v5 setObject:v10 forKeyedSubscript:@"schema"];
    }

    goto LABEL_127;
  }

  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  v32 = [objc_opt_class() describeCategory:0];
  v33 = [v31 initWithFormat:@"Unsupported category: %@", v32];
  v136 = v33;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];

  v10 = 0;
LABEL_127:
  if (v30)
  {
    [v5 setObject:v30 forKeyedSubscript:@"missingEntities"];
  }

LABEL_129:

  v103 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)loadLazyPlistWithBasename:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a3 stringByAppendingPathExtension:@"plplist"];
  if (!v3)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v4 = +[SGAsset regionAsset];
  v5 = [v4 filesystemPathForAssetDataRelativePath:v3];

  if (_os_feature_enabled_impl())
  {
    v6 = +[SGAsset localeAsset];
    v7 = [v6 filesystemPathForAssetDataRelativePath:v3];

    v5 = v7;
  }

  if (!v5)
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "Unable to resolve path: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v14 = 0;
  v8 = [MEMORY[0x277D425D8] dictionaryWithPath:v5 error:&v14];
  v9 = v14;
  if (!v8)
  {
    v10 = sgEventsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "Unable to load plplist content for %@: %@", buf, 0x16u);
    }

LABEL_12:
    v8 = 0;
  }

  v11 = v8;
LABEL_14:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken3_21944 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3_21944, &__block_literal_global_21945);
  }

  v3 = sharedInstance__pasExprOnceResult_21946;

  return v3;
}

void __41__SGMessageEventDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[SGMessageEventDissector alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_21946;
  sharedInstance__pasExprOnceResult_21946 = v1;

  objc_autoreleasePoolPop(v0);
}

@end