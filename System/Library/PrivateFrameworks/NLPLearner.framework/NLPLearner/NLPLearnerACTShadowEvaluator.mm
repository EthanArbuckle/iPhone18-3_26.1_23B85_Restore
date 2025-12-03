@interface NLPLearnerACTShadowEvaluator
+ (id)actParamFilesAtPath:(id)path;
+ (id)actParametersFromConfig:(id)config;
+ (id)processACTResults:(id)results metric:(id)metric;
+ (void)initialize;
- (NLPLearnerACTShadowEvaluator)initWithLocale:(id)locale andMetricParameters:(id)parameters;
- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error;
- (id)runACTWithParams:(id)params modelPath:(id)path data:(id)data;
@end

@implementation NLPLearnerACTShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog_7 = os_log_create("com.apple.NLPLearner", "NLPLearnerACTShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerACTShadowEvaluator)initWithLocale:(id)locale andMetricParameters:(id)parameters
{
  parametersCopy = parameters;
  localeCopy = locale;
  v9 = os_log_create("com.apple.NLPLearner", "NLPLearnerACTShadowEvaluator");
  v10 = sLog_7;
  sLog_7 = v9;

  v13.receiver = self;
  v13.super_class = NLPLearnerACTShadowEvaluator;
  v11 = [(NLPLearnerShadowEvaluator *)&v13 initWithLocale:localeCopy andTask:7];

  if (v11)
  {
    objc_storeStrong(&v11->_metricParameters, parameters);
  }

  return v11;
}

+ (id)actParamFilesAtPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v24];
  v6 = v24;

  if (v6)
  {
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
    {
      +[NLPLearnerACTShadowEvaluator actParamFilesAtPath:];
    }

    v7 = 0;
  }

  else
  {
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"pathExtension MATCHES 'json'"];
    [v5 filteredArrayUsingPredicate:?];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          stringByDeletingPathExtension = [*(*(&v20 + 1) + 8 * i) stringByDeletingPathExtension];
          v14 = supportedMetrics();
          v15 = [v14 containsObject:stringByDeletingPathExtension];

          if ((v15 & 1) == 0)
          {
            v16 = sLog_7;
            if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
            {
              [(NLPLearnerACTShadowEvaluator *)stringByDeletingPathExtension actParamFilesAtPath:v16];
            }

            v7 = 0;
            goto LABEL_17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = v8;
LABEL_17:
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  recordsCopy = records;
  v12 = [options objectForKeyedSubscript:@"skip_if_ondevice_autocorrection_disabled"];
  if (!v12)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = sLog_7;
  if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    bOOLValue = [v12 BOOLValue];
    v16 = @"NO";
    if (bOOLValue)
    {
      v16 = @"YES";
    }

    *buf = 138412290;
    v75 = v16;
    _os_log_impl(&dword_25AE22000, v14, OS_LOG_TYPE_INFO, "skip_if_ondevice_autocorrection_disabled is set to %@", buf, 0xCu);
  }

  if (![v12 BOOLValue] || (objc_msgSend(MEMORY[0x277D262A0], "sharedConnection"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isAutoCorrectionAllowed"), v17, (v18 & 1) != 0))
  {
LABEL_9:
    v58 = [(NLPLearnerShadowEvaluator *)self prepareDataFromRecords:recordsCopy];
    if (![v58 numSamples])
    {
      if (!error)
      {
        v31 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v32 = MEMORY[0x277CCA9B8];
      v72 = *MEMORY[0x277CCA450];
      v73 = @"missing evaluation data for ACT";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      [v32 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:9 userInfo:v19];
      *error = v31 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v19 = objc_opt_new();
    metricParameters = [(NLPLearnerACTShadowEvaluator *)self metricParameters];

    if (metricParameters)
    {
      v52 = v12;
      v54 = recordsCopy;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      metricParameters2 = [(NLPLearnerACTShadowEvaluator *)self metricParameters];
      v22 = [metricParameters2 countByEnumeratingWithState:&v64 objects:v71 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v65;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v65 != v24)
            {
              objc_enumerationMutation(metricParameters2);
            }

            v26 = *(*(&v64 + 1) + 8 * i);
            metricParameters3 = [(NLPLearnerACTShadowEvaluator *)self metricParameters];
            v28 = [metricParameters3 objectForKeyedSubscript:v26];

            v29 = [(NLPLearnerACTShadowEvaluator *)self runACTWithParams:v28 modelPath:modelCopy data:v58];
            v30 = [NLPLearnerACTShadowEvaluator processACTResults:v29 metric:v26];
            [v19 addEntriesFromDictionary:v30];
          }

          v23 = [metricParameters2 countByEnumeratingWithState:&v64 objects:v71 count:16];
        }

        while (v23);
      }

      v19 = v19;
      v31 = v19;
      v12 = v52;
      recordsCopy = v54;
      goto LABEL_38;
    }

    path = [modelCopy path];
    v34 = [NLPLearnerACTShadowEvaluator actParamFilesAtPath:path];

    if ([v34 count])
    {
      v53 = v12;
      v55 = recordsCopy;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v51 = v34;
      obj = v34;
      v35 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v35)
      {
        v36 = v35;
        v57 = *v61;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v61 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v60 + 1) + 8 * j);
            v39 = [modelCopy URLByAppendingPathComponent:v38];
            v40 = [NLPLearnerACTShadowEvaluator actParametersFromConfig:v39];
            v41 = sLog_7;
            if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v75 = v40;
              _os_log_impl(&dword_25AE22000, v41, OS_LOG_TYPE_INFO, "Run ACT with params : %@", buf, 0xCu);
            }

            v42 = [(NLPLearnerACTShadowEvaluator *)self runACTWithParams:v40 modelPath:modelCopy data:v58];
            stringByDeletingPathExtension = [v38 stringByDeletingPathExtension];
            v44 = [NLPLearnerACTShadowEvaluator processACTResults:v42 metric:stringByDeletingPathExtension];
            [v19 addEntriesFromDictionary:v44];
          }

          v36 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
        }

        while (v36);
      }

      v31 = v19;
      v34 = v51;
      v12 = v53;
      recordsCopy = v55;
      goto LABEL_37;
    }

    v45 = sLog_7;
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
    {
      [NLPLearnerACTShadowEvaluator evaluateModel:v45 onRecords:modelCopy options:? completion:? error:?];
      if (!error)
      {
        goto LABEL_36;
      }
    }

    else if (!error)
    {
LABEL_36:
      v31 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v46 = MEMORY[0x277CCA9B8];
    v69 = *MEMORY[0x277CCA450];
    v70 = @"Cannot load params file for ACT evaluation";
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    *error = [v46 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:6 userInfo:v47];

    goto LABEL_36;
  }

  v50 = sLog_7;
  if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
  {
    [NLPLearnerACTShadowEvaluator evaluateModel:v50 onRecords:self options:? completion:? error:?];
    if (error)
    {
      goto LABEL_45;
    }
  }

  else if (error)
  {
LABEL_45:
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:10 userInfo:&unk_286C3AB80];
    *error = v31 = 0;
    goto LABEL_40;
  }

  v31 = 0;
LABEL_40:

  v48 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)processACTResults:(id)results metric:(id)metric
{
  v41 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  metricCopy = metric;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = resultsCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"WordErrorCount";
    v12 = *v29;
    v27 = v7;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        if (![v14 isEqualToString:v11])
        {
          if ([v14 isEqualToString:@"InsertedCharacterCount"])
          {
            if (![metricCopy isEqualToString:@"KSR"])
            {
              goto LABEL_22;
            }

            v15 = [v8 objectForKeyedSubscript:v14];
            [v7 setObject:v15 forKey:v14];
          }

          else
          {
            v15 = [v7 objectForKey:v14];
            v16 = [v8 objectForKeyedSubscript:v14];
            if (v15)
            {
              v20 = v11;
              v21 = [v15 isEqual:v16];

              if ((v21 & 1) == 0)
              {
                v22 = sLog_7;
                if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
                {
                  v23 = v22;
                  v24 = [v8 objectForKeyedSubscript:v14];
                  *buf = 138413058;
                  v33 = metricCopy;
                  v34 = 2112;
                  v35 = v14;
                  v36 = 2112;
                  v37 = v15;
                  v38 = 2112;
                  v39 = v24;
                  _os_log_error_impl(&dword_25AE22000, v23, OS_LOG_TYPE_ERROR, "In the ACT result for metric: %@, Key: %@, expected Value: %@ where as actual Value: %@", buf, 0x2Au);
                }
              }

              v11 = v20;
              v7 = v27;
            }

            else
            {
              v17 = v7;
              v18 = v16;
              v19 = v14;
LABEL_20:
              [v17 setObject:v18 forKey:v19];
            }
          }

          goto LABEL_22;
        }

        if (overrideWordErrorCountForMetrics_onceToken != -1)
        {
          +[NLPLearnerACTShadowEvaluator processACTResults:metric:];
        }

        if ([overrideWordErrorCountForMetrics_overrideWordErrorCountForMetrics containsObject:metricCopy])
        {
          v15 = [v8 objectForKeyedSubscript:v14];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", metricCopy, v14];
          v17 = v7;
          v18 = v15;
          v19 = v16;
          goto LABEL_20;
        }

LABEL_22:
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v10);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)actParametersFromConfig:(id)config
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  configCopy = config;
  v5 = [v3 alloc];
  path = [configCopy path];

  v19 = 0;
  v7 = [v5 initWithContentsOfFile:path options:1 error:&v19];
  v8 = v19;

  v18 = v8;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v18];
  v10 = v18;

  v11 = [v9 mutableCopy];
  v12 = sLog_7;
  if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v11 description];
    *buf = 138412290;
    v21 = v14;
    _os_log_impl(&dword_25AE22000, v13, OS_LOG_TYPE_INFO, "Loaded ACT params from config: %@", buf, 0xCu);
  }

  if (!v11 || v10)
  {
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
    {
      +[NLPLearnerACTShadowEvaluator actParametersFromConfig:];
    }

    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)runACTWithParams:(id)params modelPath:(id)path data:(id)data
{
  v49 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  pathCopy = path;
  dataCopy = data;
  path = [pathCopy path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];

  v13 = [paramsCopy objectForKeyedSubscript:@"CUSTOM_LANGUAGE_MODEL_PATH"];
  if (v13)
  {
    [paramsCopy setObject:stringByDeletingPathExtension forKeyedSubscript:@"CUSTOM_LANGUAGE_MODEL_PATH"];
    v14 = sLog_7;
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [paramsCopy objectForKeyedSubscript:@"CUSTOM_LANGUAGE_MODEL_PATH"];
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_25AE22000, v15, OS_LOG_TYPE_INFO, "Updated CUSTOM_LANGUAGE_MODEL_PATH from '%@' to '%@'", buf, 0x16u);
    }
  }

  v17 = [paramsCopy objectForKeyedSubscript:@"CUSTOM_STATIC_DICTIONARY_PATH"];
  if (v17)
  {
    v18 = [stringByDeletingPathExtension stringByAppendingPathComponent:v17];
    [paramsCopy setObject:v18 forKeyedSubscript:@"CUSTOM_STATIC_DICTIONARY_PATH"];

    v19 = sLog_7;
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      v21 = [paramsCopy objectForKeyedSubscript:@"CUSTOM_STATIC_DICTIONARY_PATH"];
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_impl(&dword_25AE22000, v20, OS_LOG_TYPE_INFO, "Updated CUSTOM_STATIC_DICTIONARY_PATH from '%@' to '%@'", buf, 0x16u);
    }
  }

  locale = [(NLPLearnerShadowEvaluator *)self locale];
  localeIdentifier = [locale localeIdentifier];
  [paramsCopy setValue:localeIdentifier forKey:@"KEYBOARD_LANGUAGE"];

  getSamples = [dataCopy getSamples];
  [paramsCopy setObject:getSamples forKey:@"INPUT_SAMPLES"];

  [paramsCopy setValue:@"0" forKey:@"WORD_LEARNING_ENABLED"];
  v25 = objc_alloc_init(MEMORY[0x277D6FF58]);
  [v25 resetOptions:paramsCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "numSamples")}];
  [*(*&buf[8] + 40) setObject:v26 forKeyedSubscript:@"Samples"];

  v27 = dispatch_semaphore_create(0);
  dispatch_get_global_queue(0, 0);
  v28 = paramsCopy;
  v29 = v17;
  v30 = dataCopy;
  v31 = v13;
  v32 = stringByDeletingPathExtension;
  v34 = v33 = pathCopy;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke;
  block[3] = &unk_279928D08;
  v43 = v27;
  v44 = buf;
  v42 = v25;
  v35 = v27;
  v36 = v25;
  dispatch_async(v34, block);

  v37 = dispatch_time(0, 600000000000);
  dispatch_semaphore_wait(v35, v37);
  v38 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

void __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke_2;
  v4[3] = &unk_279928CE0;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 runWithObserver:v4];
}

void __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (reporterKeysToKeep_onceToken != -1)
  {
    __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke_2_cold_1();
  }

  v4 = reporterKeysToKeep_keysForCASchema;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:{v9, v12}];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v11 = *MEMORY[0x277D85DE8];
}

+ (void)actParamFilesAtPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_25AE22000, v1, OS_LOG_TYPE_ERROR, "Cannot get list of act param files in : %@ with error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)actParamFilesAtPath:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v9 = supportedMetrics();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)evaluateModel:(void *)a1 onRecords:(void *)a2 options:completion:error:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 locale];
  v5 = [v4 localeIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)evaluateModel:(void *)a1 onRecords:(void *)a2 options:completion:error:.cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)actParametersFromConfig:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25AE22000, v0, OS_LOG_TYPE_ERROR, "Failed to load parameter config for ACT evaluation: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end