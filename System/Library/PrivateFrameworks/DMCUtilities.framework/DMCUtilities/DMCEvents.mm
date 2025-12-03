@interface DMCEvents
- (DMCEvents)init;
- (id)_eventsPlistFilePath;
- (void)_injectTimestamps:(id)timestamps;
- (void)_logEvent:(id)event category:(id)category forTopic:(id)topic;
- (void)logErrorEventForTopic:(id)topic reason:(id)reason error:(id)error details:(id)details;
- (void)logRegularEventForTopic:(id)topic reason:(id)reason details:(id)details;
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

- (void)logRegularEventForTopic:(id)topic reason:(id)reason details:(id)details
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (reason)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = @"Unknown";
  }

  v16 = @"Reason";
  v17[0] = reasonCopy;
  v9 = MEMORY[0x1E695DF20];
  detailsCopy = details;
  reasonCopy2 = reason;
  topicCopy = topic;
  v13 = [v9 dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v14 = [v13 mutableCopy];
  [(DMCEvents *)self _injectTimestamps:v14];
  [v14 setObject:detailsCopy forKeyedSubscript:@"Details"];

  [(DMCEvents *)self _logEvent:v14 category:@"Regular" forTopic:topicCopy];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)logErrorEventForTopic:(id)topic reason:(id)reason error:(id)error details:(id)details
{
  v39[1] = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  reasonCopy = reason;
  errorCopy = error;
  detailsCopy = details;
  if (reasonCopy)
  {
    v14 = reasonCopy;
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
  [v16 setObject:detailsCopy forKeyedSubscript:@"Details"];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    [v16 setObject:domain forKeyedSubscript:@"Error Domain"];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v16 setObject:v18 forKeyedSubscript:@"Error Code"];

    localizedDescription = [errorCopy localizedDescription];
    [v16 setObject:localizedDescription forKeyedSubscript:@"Error Description"];

    underlyingErrors = [errorCopy underlyingErrors];
    v21 = [underlyingErrors count];

    if (v21)
    {
      selfCopy = self;
      v32 = topicCopy;
      v22 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      underlyingErrors2 = [errorCopy underlyingErrors];
      v24 = [underlyingErrors2 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
              objc_enumerationMutation(underlyingErrors2);
            }

            v28 = [*(*(&v33 + 1) + 8 * v27) description];
            [v22 addObject:v28];

            ++v27;
          }

          while (v25 != v27);
          v25 = [underlyingErrors2 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v25);
      }

      v29 = [v22 copy];
      [v16 setObject:v29 forKeyedSubscript:@"Error Underlying Errors"];

      self = selfCopy;
      topicCopy = v32;
    }
  }

  [(DMCEvents *)self _logEvent:v16 category:@"Error" forTopic:topicCopy, selfCopy, v32];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_logEvent:(id)event category:(id)category forTopic:(id)topic
{
  eventCopy = event;
  categoryCopy = category;
  topicCopy = topic;
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
  v16 = categoryCopy;
  v17 = topicCopy;
  v18 = eventCopy;
  v12 = eventCopy;
  v13 = topicCopy;
  v14 = categoryCopy;
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

- (void)_injectTimestamps:(id)timestamps
{
  v3 = MEMORY[0x1E695DF00];
  timestampsCopy = timestamps;
  date = [v3 date];
  v5 = +[DMCDateFormatterFactory isoLocalTimeZoneDateFormatter];
  v6 = [v5 stringFromDate:date];

  [timestampsCopy setObject:v6 forKeyedSubscript:@"Timestamp (Localized)"];
  [timestampsCopy setObject:date forKeyedSubscript:@"Timestamp"];
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