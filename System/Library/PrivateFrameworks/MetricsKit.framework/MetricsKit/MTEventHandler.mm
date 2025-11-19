@interface MTEventHandler
+ (id)cachableWithKey:(id)a3 onBackgroundThread:(BOOL)a4 block:(id)a5;
+ (id)currentEventContextCache;
+ (void)clearEventContextCache;
+ (void)createEventContextCache;
- (BOOL)mtIncludeBaseFields;
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)knownFields;
- (id)metricsDataWithCallerSuppliedFields:(id)a3;
- (id)metricsDataWithEventData:(id)a3;
- (id)metricsDataWithFields:(id)a3;
- (void)addPostProcessingBlock:(id)a3;
@end

@implementation MTEventHandler

- (id)metricsDataWithFields:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = &v15;
  v6 = v4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 addObjectsFromArray:v8];
      }

      else
      {
        [v5 addObject:v8];
      }

      v9 = v13++;
      v10 = *v9;

      v8 = v10;
    }

    while (v10);
  }

  v11 = [(MTEventHandler *)self metricsDataWithEventData:v5];

  return v11;
}

- (id)metricsDataWithEventData:(id)a3
{
  v4 = a3;
  v5 = [[MTCallerSuppliedFields alloc] initWithEventData:v4];

  v6 = [(MTEventHandler *)self metricsDataWithCallerSuppliedFields:v5];

  return v6;
}

- (id)metricsDataWithCallerSuppliedFields:(id)a3
{
  v4 = a3;
  +[MTEventHandler createEventContextCache];
  v5 = [MTMetricsData alloc];
  v6 = [(MTObject *)self metricsKit];
  v7 = [(MTObject *)v5 initWithMetricsKit:v6];

  v8 = [(MTObject *)self metricsKit];
  v9 = [v8 system];
  v10 = [v9 environment];
  -[MTMetricsData setAnonymous:](v7, "setAnonymous:", [v10 isAnonymous]);

  v11 = [(MTEventHandler *)self registeredEventData];
  [(MTMetricsData *)v7 setRegisteredEventData:v11];

  [(MTMetricsData *)v7 setCallerSuppliedFields:v4];
  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 config];
  v14 = [v13 sources];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __54__MTEventHandler_metricsDataWithCallerSuppliedFields___block_invoke;
  v30[3] = &unk_2798CD3E0;
  v30[4] = self;
  v15 = [v14 thenWithBlock:v30];
  [(MTMetricsData *)v7 setConfigBaseFields:v15];

  if ([(MTEventHandler *)self mtIncludeBaseFields])
  {
    v16 = [(MTObject *)self metricsKit];
    v17 = [v16 eventHandlers];
    v18 = [v17 base];
    v19 = [(MTMetricsData *)v7 performanceData];
    v20 = [v18 processMetricsData:v4 performanceData:v19];
    [(MTMetricsData *)v7 setBaseFields:v20];

    v21 = [(MTObject *)self metricsKit];
    v22 = [v21 eventHandlers];
    v23 = [v22 base];
    v24 = [v23 flattenAdditionalData];
    [(MTMetricsData *)v7 setAdditionalBaseData:v24];
  }

  v25 = [(MTMetricsData *)v7 performanceData];
  v26 = [(MTEventDataProvider *)self processMetricsData:v4 performanceData:v25];
  [(MTMetricsData *)v7 setEventSpecificFields:v26];

  v27 = [(MTEventDataProvider *)self flattenAdditionalData];
  [(MTMetricsData *)v7 setAdditionalEventData:v27];

  v28 = [(MTEventHandler *)self postProcessingBlocks];
  if ([v28 count])
  {
    [(MTMetricsData *)v7 addPostProcessingBlocks:v28];
  }

  +[MTEventHandler clearEventContextCache];
  [(MTEventHandler *)self didCreateMetricsData:v7];

  return v7;
}

id __54__MTEventHandler_metricsDataWithCallerSuppliedFields___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"metricsBase" sources:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = [MTPromise promiseWithResult:v7];

  return v8;
}

- (void)addPostProcessingBlock:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTEventHandler *)v4 postProcessingBlocks];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB18] array];
  }

  v7 = MEMORY[0x259C9F5D0](v9);
  [v6 addObject:v7];

  v8 = [v6 copy];
  [(MTEventHandler *)v4 setPostProcessingBlocks:v8];

  objc_sync_exit(v4);
}

- (id)knownFields
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v9[0] = @"eventType";
    v9[1] = @"eventVersion";
    v9[2] = @"clientEventId";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)mtIncludeBaseFields
{
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(MTEventDataProvider *)self delegate];
  v6 = [v5 mtIncludeBaseFields];

  return v6;
}

- (id)eventType
{
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 eventType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)eventVersion:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 eventVersion:v4];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"eventVersion"];
  }

  return v8;
}

+ (id)currentEventContextCache
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:@"MTMetricsKitEventContextCache"];

  return v4;
}

+ (void)createEventContextCache
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  [v3 setObject:v4 forKeyedSubscript:@"MTMetricsKitEventContextCache"];
}

+ (void)clearEventContextCache
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v2 = [v3 threadDictionary];
  [v2 setObject:0 forKeyedSubscript:@"MTMetricsKitEventContextCache"];
}

+ (id)cachableWithKey:(id)a3 onBackgroundThread:(BOOL)a4 block:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [a1 currentEventContextCache];
  v11 = [v10 objectForKeyedSubscript:v8];
  if (!v11)
  {
    v12 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__MTEventHandler_cachableWithKey_onBackgroundThread_block___block_invoke;
    v18[3] = &unk_2798CD9F0;
    v21 = v9;
    v11 = v12;
    v19 = v11;
    v13 = v8;
    v20 = v13;
    v14 = MEMORY[0x259C9F5D0](v18);
    v15 = v14;
    if (v6)
    {
      v16 = dispatch_get_global_queue(0, 0);
      dispatch_async(v16, v15);
    }

    else
    {
      (*(v14 + 16))(v14);
    }

    [v10 setObject:v11 forKeyedSubscript:v13];
  }

  return v11;
}

void __59__MTEventHandler_cachableWithKey_onBackgroundThread_block___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  v3 = 0;
  v10 = v3;
  if (v2)
  {
    [*(a1 + 32) finishWithResult:v2];
  }

  else
  {
    if (!v3)
    {
      v10 = MTError(108, @"Failed to retrieve cachable value for %@", v4, v5, v6, v7, v8, v9, *(a1 + 40));
    }

    [*(a1 + 32) finishWithError:v10];
  }
}

@end