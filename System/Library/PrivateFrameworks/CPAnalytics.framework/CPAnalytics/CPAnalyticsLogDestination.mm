@interface CPAnalyticsLogDestination
- (CPAnalyticsLogDestination)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4;
- (id)_descriptionComponentsForEvent:(id)a3 forProperties:(id)a4;
- (id)_logEventMatchersInConfiguration:(id)a3;
- (void)logEvent:(id)a3 withLabel:(id)a4 shouldLogEventName:(BOOL)a5 propertiesToLog:(id)a6 publicPropertiesToLog:(id)a7;
- (void)processEvent:(id)a3;
@end

@implementation CPAnalyticsLogDestination

- (id)_descriptionComponentsForEvent:(id)a3 forProperties:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v5 propertyForKey:v13];
        if (v14)
        {
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = [v14 description];
          v17 = [v15 initWithFormat:@"%@: %@", v13, v16, v20];
          [v7 addObject:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)logEvent:(id)a3 withLabel:(id)a4 shouldLogEventName:(BOOL)a5 propertiesToLog:(id)a6 publicPropertiesToLog:(id)a7
{
  v9 = a5;
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v32 = a4;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = [v12 name];
    v18 = [v16 initWithFormat:@"eventName: %@", v17];
    [v15 addObject:v18];
  }

  v19 = [(CPAnalyticsLogDestination *)self _descriptionComponentsForEvent:v12 forProperties:v13];
  [v15 addObjectsFromArray:v19];

  if ([v15 count])
  {
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [v15 componentsJoinedByString:{@", "}];
    v22 = [v20 initWithFormat:@" { %@ }", v21];
  }

  else
  {
    v22 = &stru_2854ED768;
  }

  v23 = [(CPAnalyticsLogDestination *)self _descriptionComponentsForEvent:v12 forProperties:v14];
  if ([v23 count])
  {
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v25 = [v23 componentsJoinedByString:{@", "}];
    v26 = [v24 initWithFormat:@" { %@ }", v25];
  }

  else
  {
    v26 = &stru_2854ED768;
  }

  if (logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__onceToken != -1)
  {
    dispatch_once(&logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__onceToken, &__block_literal_global_523);
  }

  v27 = [(CPAnalyticsLogDestination *)self log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__dateFormatter;
    v29 = [v12 timestamp];
    v30 = [v28 stringFromDate:v29];
    *buf = 138544130;
    v34 = v32;
    v35 = 2112;
    v36 = v22;
    v37 = 2114;
    v38 = v26;
    v39 = 2114;
    v40 = v30;
    _os_log_impl(&dword_24260A000, v27, OS_LOG_TYPE_INFO, "%{public}@:%@%{public}@, (@ %{public}@)", buf, 0x2Au);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __105__CPAnalyticsLogDestination_logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__dateFormatter;
  logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__dateFormatter = v0;

  v2 = logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZ"];
}

- (id)_logEventMatchersInConfiguration:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"logEvents"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = CPAnalyticsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_error_impl(&dword_24260A000, v6, OS_LOG_TYPE_ERROR, "Malformed logEvents in configuration %@", buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [CPAnalyticsLogEventMatcher alloc];
          v13 = [(CPAnalyticsLogEventMatcher *)v12 initWithConfig:v11, v16];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)processEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(CPAnalyticsLogDestination *)self logEventMatchers];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 doesMatch:v4])
        {
          v11 = [v10 eventTypeLabel];
          v12 = [v10 shouldLogEventName];
          v13 = [v10 eventPropertiesToLog];
          v14 = [v10 eventPublicPropertiesToLog];
          [(CPAnalyticsLogDestination *)self logEvent:v4 withLabel:v11 shouldLogEventName:v12 propertiesToLog:v13 publicPropertiesToLog:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsLogDestination)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CPAnalyticsLogDestination;
  v6 = [(CPAnalyticsLogDestination *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(CPAnalyticsLogDestination *)v6 _logEventMatchersInConfiguration:v5];
    logEventMatchers = v7->_logEventMatchers;
    v7->_logEventMatchers = v8;

    v10 = os_log_create("com.apple.photos.CPAnalytics", "CPAnalyticsLogs");
    log = v7->_log;
    v7->_log = v10;
  }

  return v7;
}

@end