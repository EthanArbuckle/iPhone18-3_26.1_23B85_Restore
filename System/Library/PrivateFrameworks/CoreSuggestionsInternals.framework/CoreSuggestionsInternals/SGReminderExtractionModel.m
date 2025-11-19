@interface SGReminderExtractionModel
+ (id)enrichTaggedCharacterRangesWithModelOutput:(id)a3 usingInputCharacterRanges:(id)a4;
+ (id)inputFromTaggedCharacterRanges:(id)a3 usingTokenMapping:(id)a4 forModel:(id)a5;
+ (id)sharedInstance;
- (_NSRange)_whitelistedVerbRangeInContent:(id)a3;
- (id)_init;
- (id)enrichments;
- (id)inputTokenMapping;
- (id)loadModel;
- (id)modelDescription;
- (id)modelInferences:(id)a3;
- (id)outputConfig;
- (id)reminderOverrides;
- (id)whitelistedRangesInContent:(id)a3;
- (id)whitelistedVerbInContent:(id)a3;
- (void)dealloc;
- (void)updateAll;
@end

@implementation SGReminderExtractionModel

- (id)modelDescription
{
  v2 = [(SGReminderExtractionModel *)self loadModel];
  v3 = [v2 modelDescription];
  v4 = [v3 metadata];

  if (v4)
  {
    v5 = [v2 modelDescription];
    v6 = [v5 metadata];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBFE98]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)whitelistedRangesInContent:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13522;
  v24 = __Block_byref_object_dispose__13523;
  v25 = objc_opt_new();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13522;
  v18 = __Block_byref_object_dispose__13523;
  v19 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SGReminderExtractionModel_whitelistedRangesInContent___block_invoke;
  v13[3] = &unk_27894D6B8;
  v13[4] = &v14;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v6 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (v6 && [v4 length])
  {
    v7 = [v4 length];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__SGReminderExtractionModel_whitelistedRangesInContent___block_invoke_2;
    v10[3] = &unk_27894E480;
    v11 = v4;
    v12 = &v20;
    [v6 enumerateMatchesInString:v11 options:0 range:0 usingBlock:{v7, v10}];
  }

  v8 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v8;
}

uint64_t __56__SGReminderExtractionModel_whitelistedRangesInContent___block_invoke_2(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    v4 = [v3 range];
    v5 = 50;
    if (v4 > 0x32)
    {
      v5 = v4;
    }

    v6 = v5 - 50;
    v7 = [*(v2 + 32) length];
    v8 = [v3 range];
    v10 = v9;

    v11 = v10 + v8 + 50;
    if (v7 < v11)
    {
      v11 = v7;
    }

    v12 = *(*(*(v2 + 40) + 8) + 40);

    return [v12 addIndexesInRange:{v6, v11 - v6}];
  }

  return result;
}

- (_NSRange)_whitelistedVerbRangeInContent:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__13522;
  v17 = __Block_byref_object_dispose__13523;
  v18 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SGReminderExtractionModel__whitelistedVerbRangeInContent___block_invoke;
  v12[3] = &unk_27894D6B8;
  v12[4] = &v13;
  [(_PASLock *)lock runWithLockAcquired:v12];
  v6 = v14[5];
  _Block_object_dispose(&v13, 8);

  if (v6)
  {
    v7 = [v6 rangeOfFirstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
    v9 = v8;
  }

  else
  {
    v9 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)whitelistedVerbInContent:(id)a3
{
  v4 = a3;
  v5 = [(SGReminderExtractionModel *)self _whitelistedVerbRangeInContent:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL && v6 == 0)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v4 substringWithRange:{v5, v6}];
    v9 = [v8 lowercaseString];
  }

  return v9;
}

- (id)outputConfig
{
  v3 = +[SGReminderTrialClientWrapper sharedInstance];
  v4 = [v3 reminderOutputMapping];

  outputConfig = v4;
  if (!v4)
  {
    outputConfig = self->_outputConfig;
  }

  v6 = outputConfig;

  return v6;
}

- (id)inputTokenMapping
{
  v3 = +[SGReminderTrialClientWrapper sharedInstance];
  v4 = [v3 reminderInputMapping];

  inputTokenMapping = v4;
  if (!v4)
  {
    inputTokenMapping = self->_inputTokenMapping;
  }

  v6 = inputTokenMapping;

  return v6;
}

- (id)reminderOverrides
{
  v3 = +[SGReminderTrialClientWrapper sharedInstance];
  v4 = [v3 reminderOverrides];

  reminderOverrides = v4;
  if (!v4)
  {
    reminderOverrides = self->_reminderOverrides;
  }

  v6 = reminderOverrides;

  return v6;
}

- (id)enrichments
{
  v3 = +[SGReminderTrialClientWrapper sharedInstance];
  v4 = [v3 reminderEnrichments];

  enrichments = v4;
  if (!v4)
  {
    enrichments = self->_enrichments;
  }

  v6 = enrichments;

  return v6;
}

- (id)modelInferences:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  if (!self->_inputTokenMapping)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "No inputTokenMapping found", v28, 2u);
    }

    goto LABEL_14;
  }

  if (!self->_outputConfig)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "No output configuration found.", v28, 2u);
    }

LABEL_14:

    v13 = v5;
    goto LABEL_37;
  }

  v30 = 0;
  *v28 = @"ReminderDissector model inference";
  v6 = mach_absolute_time();
  v29 = v6;
  v7 = sgRemindersLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "Preparing model inference", buf, 2u);
  }

  v8 = [(SGReminderExtractionModel *)self loadModel];
  if (v8)
  {
    v9 = [objc_opt_class() inputFromTaggedCharacterRanges:v4 usingTokenMapping:self->_inputTokenMapping forModel:v8];
    if (v9)
    {
      v27 = 0;
      v10 = [v8 predictionFromFeatures:v9 error:&v27];
      v26 = v27;
      if (v10)
      {
        v11 = [[SGExtractionModelCoreMLFeatureWrapper alloc] initWithFeatureProvider:v10];
      }

      else
      {
        v16 = sgRemindersLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = *&v26;
          _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "Model inference failed: %@", buf, 0xCu);
        }

        v11 = 0;
      }

      v17 = sgRemindersLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v24 = mach_absolute_time();
        v25 = SGMachTimeToNanoseconds(v24 - v6);
        *buf = 134217984;
        v32 = v25 * 0.000000001;
        _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "Model inference done in %f", buf, 0xCu);
      }

      if (v11)
      {
        v18 = [objc_opt_class() modelOutputFromOutputMapping:self->_outputConfig modelOutput:v11 modelInput:v9];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v5;
        }

        v13 = v20;
      }

      else
      {
        v21 = sgRemindersLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "Unable to convert to instantiate SGExtractionModelCoreMLFeatureWrapper", buf, 2u);
        }

        v13 = v5;
      }
    }

    else
    {
      v15 = sgRemindersLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, "Unable to load model features.", buf, 2u);
      }

      v13 = v5;
    }
  }

  else
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v14, OS_LOG_TYPE_ERROR, "Model initialization failed", buf, 2u);
    }

    v13 = v5;
  }

  SGRecordMeasurementState(v28);
LABEL_37:

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)loadModel
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setComputeUnits:0];
  v4 = +[SGReminderTrialClientWrapper sharedInstance];
  v5 = [v4 modelPath];
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = sgRemindersLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "SGReminderExtractionModel: Loading model from trial override at path: %@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6];
  }

  else
  {
    v8 = [(SGExtractionModel *)self currentModelURLForModelName:@"ReminderModel"];
  }

  v9 = v8;
  if (v8)
  {
    v16 = 0;
    v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 configuration:v3 error:&v16];
    v11 = v16;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = sgRemindersLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "Unable to load model from URL: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)updateAll
{
  v3 = [objc_opt_class() loadLazyPlistWithBasename:@"ReminderPreprocessor"];
  enrichments = self->_enrichments;
  self->_enrichments = v3;

  v5 = [objc_opt_class() loadLazyPlistWithBasename:@"ReminderInputMapping"];
  inputTokenMapping = self->_inputTokenMapping;
  self->_inputTokenMapping = v5;

  v7 = [objc_opt_class() loadLazyPlistWithBasename:@"ReminderOutputMapping"];
  outputConfig = self->_outputConfig;
  self->_outputConfig = v7;

  v9 = [objc_opt_class() loadLazyPlistWithBasename:@"ReminderOverrides"];
  reminderOverrides = self->_reminderOverrides;
  self->_reminderOverrides = v9;

  v11 = self->_enrichments;
  if (v11)
  {
    v12 = [(NSDictionary *)v11 objectForKeyedSubscript:@"config"];

    if (v12)
    {
      v13 = [(NSDictionary *)self->_enrichments objectForKeyedSubscript:@"config"];
      v12 = [v13 objectForKeyedSubscript:@"wordBoundary"];
    }

    lock = self->_lock;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__SGReminderExtractionModel_updateAll__block_invoke;
    v16[3] = &unk_27894D688;
    v16[4] = self;
    v17 = v12;
    v15 = v12;
    [(_PASLock *)lock runWithLockAcquired:v16];
  }
}

void __38__SGReminderExtractionModel_updateAll__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"verbsMapping"];
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  objc_autoreleasePoolPop(v3);
  v7 = [SGReminderMessage regexFromJoinedArray:v6 wordBoundary:*(a1 + 40)];
  v8 = v9[1];
  v9[1] = v7;
}

- (void)dealloc
{
  v3 = +[SGAsset localeAsset];
  [v3 deregisterUpdateHandlerWithToken:self->_assetUpdateToken];

  v4.receiver = self;
  v4.super_class = SGReminderExtractionModel;
  [(SGReminderExtractionModel *)&v4 dealloc];
}

- (id)_init
{
  v15.receiver = self;
  v15.super_class = SGReminderExtractionModel;
  v2 = [(SGReminderExtractionModel *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    [(SGReminderExtractionModel *)v2 updateAll];
    v7 = +[SGAsset localeAsset];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__SGReminderExtractionModel__init__block_invoke;
    v13[3] = &unk_27894D660;
    v8 = v2;
    v14 = v8;
    v9 = [v7 registerUpdateHandler:v13];
    assetUpdateToken = v8->_assetUpdateToken;
    v8->_assetUpdateToken = v9;
  }

  v12.receiver = v2;
  v12.super_class = SGReminderExtractionModel;
  return [(SGReminderExtractionModel *)&v12 init];
}

+ (id)enrichTaggedCharacterRangesWithModelOutput:(id)a3 usingInputCharacterRanges:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v32 = objc_opt_new();
  v7 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v8 = off_278949000;
  v9 = v6;
  v37 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v37)
  {
    v35 = *v41;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [obj objectForKeyedSubscript:*(*(&v40 + 1) + 8 * i)];
        if ([v11 count])
        {
          v12 = 0;
          do
          {
            if ([v7 count] <= v12)
            {
              v13 = objc_opt_new();
              [v7 addObject:v13];
            }

            v14 = [v11 objectAtIndexedSubscript:v12];
            v15 = [v14 isEqualToString:@"NONE"];

            if ((v15 & 1) == 0)
            {
              v16 = [v7 objectAtIndexedSubscript:v12];
              v17 = objc_alloc(MEMORY[0x277CCACA8]);
              v18 = [SGTaggedCharacterRange annotationTypeUniqueIdentifier:10];
              v19 = [v11 objectAtIndexedSubscript:v12];
              v20 = [v17 initWithFormat:@"%@_%@", v18, v19];
              [v16 addObject:v20];

              v8 = off_278949000;
              v6 = v9;
            }

            ++v12;
          }

          while ([v11 count] > v12);
        }
      }

      v37 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v37);
  }

  if ([v7 count])
  {
    v21 = 0;
    do
    {
      v33 = objc_alloc(v8[59]);
      v38 = [v6 objectAtIndexedSubscript:v21];
      v36 = [v38 tags];
      v34 = [v7 objectAtIndexedSubscript:v21];
      v22 = [v36 arrayByAddingObjectsFromArray:v34];
      v23 = [v6 objectAtIndexedSubscript:v21];
      v24 = [v23 range];
      v26 = v25;
      v27 = [v9 objectAtIndexedSubscript:v21];
      v28 = [v27 text];
      v29 = [v33 initWithAnnotationType:4 tags:v22 range:v24 text:{v26, v28}];
      [v32 addObject:v29];

      v8 = off_278949000;
      v6 = v9;

      ++v21;
    }

    while ([v7 count] > v21);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)inputFromTaggedCharacterRanges:(id)a3 usingTokenMapping:(id)a4 forModel:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() inputDictFromTaggedCharacterRanges:v9 usingTokenMapping:v8 forModel:v7];

  if (v10)
  {
    v11 = [[SGExtractionModelCoreMLFeatureWrapper alloc] initWithFeatureDict:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_13588 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_13588, &__block_literal_global_13589);
  }

  v3 = sharedInstance__pasExprOnceResult_13590;

  return v3;
}

void __43__SGReminderExtractionModel_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[SGReminderExtractionModel alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_13590;
  sharedInstance__pasExprOnceResult_13590 = v1;

  objc_autoreleasePoolPop(v0);
}

@end