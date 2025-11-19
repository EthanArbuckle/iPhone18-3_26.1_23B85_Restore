@interface DMCEvents
- (DMCEvents)init;
- (id)_eventsPlistFilePath;
- (void)_injectTimestamps:(id)a3;
- (void)_logEvent:(id)a3 category:(id)a4 forTopic:(id)a5;
- (void)logErrorEventForTopic:(id)a3 reason:(id)a4 error:(id)a5 details:(id)a6;
- (void)logRegularEventForTopic:(id)a3 reason:(id)a4 details:(id)a5;
@end

@implementation DMCEvents

- (DMCEvents)init
{
  v7.receiver = self;
  v7.super_class = DMCEvents;
  v2 = [(DMCEvents *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __17__DMCEvents_init__block_invoke;
    block[3] = &unk_1E7ADC760;
    v6 = v2;
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, block);
    }
  }

  return v3;
}

void __17__DMCEvents_init__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [*(a1 + 32) _eventsFileFolder];
  v3 = [v5 fileExistsAtPath:v2 isDirectory:0];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) _eventsFileFolder];
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (void)logRegularEventForTopic:(id)a3 reason:(id)a4 details:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = @"Unknown";
  }

  v16 = @"Reason";
  v17[0] = v8;
  v9 = MEMORY[0x1E695DF20];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v14 = [v13 mutableCopy];
  [(DMCEvents *)self _injectTimestamps:v14];
  [v14 setObject:v10 forKeyedSubscript:@"Details"];

  [(DMCEvents *)self _logEvent:v14 category:@"Regular" forTopic:v12];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)logErrorEventForTopic:(id)a3 reason:(id)a4 error:(id)a5 details:(id)a6
{
  v39[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = @"Unknown";
  }

  v38 = @"Reason";
  v39[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v16 = [v15 mutableCopy];

  [(DMCEvents *)self _injectTimestamps:v16];
  [v16 setObject:v13 forKeyedSubscript:@"Details"];
  if (v12)
  {
    v17 = [v12 domain];
    [v16 setObject:v17 forKeyedSubscript:@"Error Domain"];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "code")}];
    [v16 setObject:v18 forKeyedSubscript:@"Error Code"];

    v19 = [v12 localizedDescription];
    [v16 setObject:v19 forKeyedSubscript:@"Error Description"];

    v20 = [v12 underlyingErrors];
    v21 = [v20 count];

    if (v21)
    {
      v31 = self;
      v32 = v10;
      v22 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v23 = [v12 underlyingErrors];
      v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v34;
        do
        {
          v27 = 0;
          do
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v33 + 1) + 8 * v27) description];
            [v22 addObject:v28];

            ++v27;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v25);
      }

      v29 = [v22 copy];
      [v16 setObject:v29 forKeyedSubscript:@"Error Underlying Errors"];

      self = v31;
      v10 = v32;
    }
  }

  [(DMCEvents *)self _logEvent:v16 category:@"Error" forTopic:v10, v31, v32];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_logEvent:(id)a3 category:(id)a4 forTopic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_logEvent_category_forTopic__onceToken != -1)
  {
    [DMCEvents _logEvent:category:forTopic:];
  }

  v11 = _logEvent_category_forTopic__serialQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__DMCEvents__logEvent_category_forTopic___block_invoke_2;
  v15[3] = &unk_1E7ADC7B0;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async_and_wait(v11, v15);
}

uint64_t __41__DMCEvents__logEvent_category_forTopic___block_invoke()
{
  _logEvent_category_forTopic__serialQueue = dispatch_queue_create("DMCEvents", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __41__DMCEvents__logEvent_category_forTopic___block_invoke_2(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v3 = [a1[4] _eventsPlistFilePath];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  v5 = objc_opt_new();
  v16 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__DMCEvents__logEvent_category_forTopic___block_invoke_3;
  v13[3] = &unk_1E7ADC788;
  v6 = a1[5];
  v7 = a1[6];
  *&v8 = a1[7];
  *(&v8 + 1) = *v2;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v14 = v9;
  v15 = v8;
  [v5 coordinateReadingItemAtURL:v4 options:0 writingItemAtURL:v4 options:0 error:&v16 byAccessor:v13];
  v10 = v16;

  if (v10)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "[NSFileCoordinator coordinateReadingItemAtURL] failed with error: %{public}@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __41__DMCEvents__logEvent_category_forTopic___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E696AC08];
  v7 = a3;
  v8 = [v6 defaultManager];
  v9 = [v5 absoluteString];
  v10 = [v8 fileExistsAtPath:v9];

  if (!v10)
  {
    goto LABEL_3;
  }

  v11 = MEMORY[0x1E695DF20];
  v12 = [v5 absoluteString];
  v13 = [v11 DMCDictionaryFromFile:v12];
  v14 = [v13 mutableCopy];

  if (!v14)
  {
LABEL_3:
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_INFO, "Failed to load event dictionary. Creating a new one", buf, 2u);
    }

    v14 = objc_opt_new();
  }

  v16 = [v14 objectForKeyedSubscript:*(a1 + 32)];
  if (v16)
  {
    v17 = v16;
    v18 = [v14 objectForKeyedSubscript:*(a1 + 32)];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v20 = *DMCLogObjects();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v36 = 0;
        _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_ERROR, "Event category is not a dictionary", v36, 2u);
      }

      [v14 setObject:0 forKeyedSubscript:*(a1 + 32)];
    }
  }

  v21 = MEMORY[0x1E695DF90];
  v22 = [v14 objectForKeyedSubscript:*(a1 + 32)];
  v23 = [v21 dictionaryWithDictionary:v22];

  v24 = [v23 objectForKeyedSubscript:*(a1 + 40)];
  if (v24)
  {
    v25 = v24;
    v26 = [v23 objectForKeyedSubscript:*(a1 + 40)];
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();

    if ((v27 & 1) == 0)
    {
      v28 = *DMCLogObjects();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v35 = 0;
        _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_ERROR, "Topic is not an array", v35, 2u);
      }

      [v23 setObject:0 forKeyedSubscript:*(a1 + 40)];
    }
  }

  v29 = MEMORY[0x1E695DF70];
  v30 = [v23 objectForKeyedSubscript:*(a1 + 40)];
  v31 = [v29 arrayWithArray:v30];

  [v31 insertObject:*(a1 + 48) atIndex:0];
  v32 = [*(a1 + 56) _maximumEventCount];
  if ([v31 count] > v32)
  {
    [v31 removeObjectsInRange:{v32, objc_msgSend(v31, "count") - v32}];
  }

  [v23 setObject:v31 forKeyedSubscript:*(a1 + 40)];
  [v14 setObject:v23 forKeyedSubscript:*(a1 + 32)];
  v33 = [v7 absoluteString];
  [v14 DMCWriteToBinaryFile:v33];

  v34 = [v7 absoluteString];

  DMCSetSkipBackupAttributeToItemAtPath(v34, 1);
}

- (void)_injectTimestamps:(id)a3
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v7 = [v3 date];
  v5 = +[DMCDateFormatterFactory isoLocalTimeZoneDateFormatter];
  v6 = [v5 stringFromDate:v7];

  [v4 setObject:v6 forKeyedSubscript:@"Timestamp (Localized)"];
  [v4 setObject:v7 forKeyedSubscript:@"Timestamp"];
}

- (id)_eventsPlistFilePath
{
  errorFilePath = self->_errorFilePath;
  if (!errorFilePath)
  {
    v4 = DMCEventsFilePath();
    v5 = self->_errorFilePath;
    self->_errorFilePath = v4;

    errorFilePath = self->_errorFilePath;
  }

  return errorFilePath;
}

@end