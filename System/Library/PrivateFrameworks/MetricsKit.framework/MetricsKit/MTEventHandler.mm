@interface MTEventHandler
+ (id)cachableWithKey:(id)key onBackgroundThread:(BOOL)thread block:(id)block;
+ (id)currentEventContextCache;
+ (void)clearEventContextCache;
+ (void)createEventContextCache;
- (BOOL)mtIncludeBaseFields;
- (id)eventType;
- (id)eventVersion:(id)version;
- (id)knownFields;
- (id)metricsDataWithCallerSuppliedFields:(id)fields;
- (id)metricsDataWithEventData:(id)data;
- (id)metricsDataWithFields:(id)fields;
- (void)addPostProcessingBlock:(id)block;
@end

@implementation MTEventHandler

- (id)metricsDataWithFields:(id)fields
{
  fieldsCopy = fields;
  array = [MEMORY[0x277CBEB18] array];
  v13 = &v15;
  v6 = fieldsCopy;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [array addObjectsFromArray:v8];
      }

      else
      {
        [array addObject:v8];
      }

      v9 = v13++;
      v10 = *v9;

      v8 = v10;
    }

    while (v10);
  }

  v11 = [(MTEventHandler *)self metricsDataWithEventData:array];

  return v11;
}

- (id)metricsDataWithEventData:(id)data
{
  dataCopy = data;
  v5 = [[MTCallerSuppliedFields alloc] initWithEventData:dataCopy];

  v6 = [(MTEventHandler *)self metricsDataWithCallerSuppliedFields:v5];

  return v6;
}

- (id)metricsDataWithCallerSuppliedFields:(id)fields
{
  fieldsCopy = fields;
  +[MTEventHandler createEventContextCache];
  v5 = [MTMetricsData alloc];
  metricsKit = [(MTObject *)self metricsKit];
  v7 = [(MTObject *)v5 initWithMetricsKit:metricsKit];

  metricsKit2 = [(MTObject *)self metricsKit];
  system = [metricsKit2 system];
  environment = [system environment];
  -[MTMetricsData setAnonymous:](v7, "setAnonymous:", [environment isAnonymous]);

  registeredEventData = [(MTEventHandler *)self registeredEventData];
  [(MTMetricsData *)v7 setRegisteredEventData:registeredEventData];

  [(MTMetricsData *)v7 setCallerSuppliedFields:fieldsCopy];
  metricsKit3 = [(MTObject *)self metricsKit];
  config = [metricsKit3 config];
  sources = [config sources];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __54__MTEventHandler_metricsDataWithCallerSuppliedFields___block_invoke;
  v30[3] = &unk_2798CD3E0;
  v30[4] = self;
  v15 = [sources thenWithBlock:v30];
  [(MTMetricsData *)v7 setConfigBaseFields:v15];

  if ([(MTEventHandler *)self mtIncludeBaseFields])
  {
    metricsKit4 = [(MTObject *)self metricsKit];
    eventHandlers = [metricsKit4 eventHandlers];
    base = [eventHandlers base];
    performanceData = [(MTMetricsData *)v7 performanceData];
    v20 = [base processMetricsData:fieldsCopy performanceData:performanceData];
    [(MTMetricsData *)v7 setBaseFields:v20];

    metricsKit5 = [(MTObject *)self metricsKit];
    eventHandlers2 = [metricsKit5 eventHandlers];
    base2 = [eventHandlers2 base];
    flattenAdditionalData = [base2 flattenAdditionalData];
    [(MTMetricsData *)v7 setAdditionalBaseData:flattenAdditionalData];
  }

  performanceData2 = [(MTMetricsData *)v7 performanceData];
  v26 = [(MTEventDataProvider *)self processMetricsData:fieldsCopy performanceData:performanceData2];
  [(MTMetricsData *)v7 setEventSpecificFields:v26];

  flattenAdditionalData2 = [(MTEventDataProvider *)self flattenAdditionalData];
  [(MTMetricsData *)v7 setAdditionalEventData:flattenAdditionalData2];

  postProcessingBlocks = [(MTEventHandler *)self postProcessingBlocks];
  if ([postProcessingBlocks count])
  {
    [(MTMetricsData *)v7 addPostProcessingBlocks:postProcessingBlocks];
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

- (void)addPostProcessingBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  postProcessingBlocks = [(MTEventHandler *)selfCopy postProcessingBlocks];
  array = [postProcessingBlocks mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v7 = MEMORY[0x259C9F5D0](blockCopy);
  [array addObject:v7];

  v8 = [array copy];
  [(MTEventHandler *)selfCopy setPostProcessingBlocks:v8];

  objc_sync_exit(selfCopy);
}

- (id)knownFields
{
  v9[3] = *MEMORY[0x277D85DE8];
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v9[0] = @"eventType";
    v9[1] = @"eventVersion";
    v9[2] = @"clientEventId";
    knownFields = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  }

  v7 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (BOOL)mtIncludeBaseFields
{
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(MTEventDataProvider *)self delegate];
  mtIncludeBaseFields = [delegate2 mtIncludeBaseFields];

  return mtIncludeBaseFields;
}

- (id)eventType
{
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    eventType = [delegate2 eventType];
  }

  else
  {
    eventType = 0;
  }

  return eventType;
}

- (id)eventVersion:(id)version
{
  versionCopy = version;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 eventVersion:versionCopy];
  }

  else
  {
    v8 = [versionCopy objectForKeyedSubscript:@"eventVersion"];
  }

  return v8;
}

+ (id)currentEventContextCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:@"MTMetricsKitEventContextCache"];

  return v4;
}

+ (void)createEventContextCache
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:dictionary forKeyedSubscript:@"MTMetricsKitEventContextCache"];
}

+ (void)clearEventContextCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:0 forKeyedSubscript:@"MTMetricsKitEventContextCache"];
}

+ (id)cachableWithKey:(id)key onBackgroundThread:(BOOL)thread block:(id)block
{
  threadCopy = thread;
  keyCopy = key;
  blockCopy = block;
  currentEventContextCache = [self currentEventContextCache];
  v11 = [currentEventContextCache objectForKeyedSubscript:keyCopy];
  if (!v11)
  {
    v12 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__MTEventHandler_cachableWithKey_onBackgroundThread_block___block_invoke;
    v18[3] = &unk_2798CD9F0;
    v21 = blockCopy;
    v11 = v12;
    v19 = v11;
    v13 = keyCopy;
    v20 = v13;
    v14 = MEMORY[0x259C9F5D0](v18);
    v15 = v14;
    if (threadCopy)
    {
      v16 = dispatch_get_global_queue(0, 0);
      dispatch_async(v16, v15);
    }

    else
    {
      (*(v14 + 16))(v14);
    }

    [currentEventContextCache setObject:v11 forKeyedSubscript:v13];
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