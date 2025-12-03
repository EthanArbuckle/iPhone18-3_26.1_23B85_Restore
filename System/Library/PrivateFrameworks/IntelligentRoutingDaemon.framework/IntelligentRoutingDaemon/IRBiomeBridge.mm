@interface IRBiomeBridge
+ (void)_logCompletion:(id)completion;
- (IRBiomeBridge)initWithBiomeProvider:(id)provider targetQueue:(id)queue;
- (id)fetchLatestEventsOfEventType:(int64_t)type numEvents:(unint64_t)events;
- (void)dealloc;
- (void)subscribeEvent:(int64_t)event;
- (void)unsubscribeEvent:(int64_t)event;
@end

@implementation IRBiomeBridge

- (IRBiomeBridge)initWithBiomeProvider:(id)provider targetQueue:(id)queue
{
  obj = provider;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = IRBiomeBridge;
  v7 = [(IRBiomeBridge *)&v23 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_biomeProvider, obj);
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    eventTypeToSinkMap = v8->_eventTypeToSinkMap;
    v8->_eventTypeToSinkMap = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    eventTypeToSchedulerMap = v8->_eventTypeToSchedulerMap;
    v8->_eventTypeToSchedulerMap = v11;

    for (i = 1; i != 4; ++i)
    {
      v14 = objc_alloc(MEMORY[0x277CF1918]);
      v15 = MEMORY[0x277CCACA8];
      v16 = IRBiomeEventTypeToString(i);
      v17 = [v15 stringWithFormat:@"com.apple.%@", v16];
      v18 = [v14 initWithIdentifier:v17 targetQueue:queueCopy waking:0];

      v19 = v8->_eventTypeToSchedulerMap;
      v20 = [MEMORY[0x277CCABB0] numberWithInt:i];
      [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];
    }
  }

  return v8;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_eventTypeToSinkMap;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_eventTypeToSinkMap objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
        [v8 cancel];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = IRBiomeBridge;
  [(IRBiomeBridge *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)subscribeEvent:(int64_t)event
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D21308];
  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = MEMORY[0x277D21260];
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = IRBiomeEventTypeToString(event);
    *buf = 136315650;
    v27 = "#biome-bridge, ";
    v28 = 2112;
    v29 = v6;
    v30 = 2080;
    uTF8String = [v10 UTF8String];
    _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_INFO, "%s[%@], IRBiomeBridge, subscribing a context notification of event type, %s", buf, 0x20u);
  }

  v11 = [[IRBiomeParameters alloc] initWithBiomeEventType:event];
  contextPublisher = [(IRBiomeParameters *)v11 contextPublisher];
  eventTypeToSchedulerMap = self->_eventTypeToSchedulerMap;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  v15 = [(NSMutableDictionary *)eventTypeToSchedulerMap objectForKeyedSubscript:v14];

  v16 = [contextPublisher subscribeOn:v15];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __32__IRBiomeBridge_subscribeEvent___block_invoke_27;
  v25[3] = &unk_2797E0E40;
  v25[4] = self;
  v25[5] = event;
  v17 = [v16 sinkWithCompletion:&__block_literal_global_3 receiveInput:v25];

  if (v17)
  {
    eventTypeToSinkMap = self->_eventTypeToSinkMap;
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:event];
    [(NSMutableDictionary *)eventTypeToSinkMap setObject:v17 forKeyedSubscript:v19];
  }

  else
  {
    v19 = dispatch_get_specific(*v5);
    v20 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = IRBiomeEventTypeToString(event);
      uTF8String2 = [v22 UTF8String];
      *buf = 136315650;
      v27 = "#biome-bridge, ";
      v28 = 2112;
      v29 = v19;
      v30 = 2080;
      uTF8String = uTF8String2;
      _os_log_impl(&dword_25543D000, v21, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Biome subscribe error] Failed at subscribing a biome stream of event type: %s", buf, 0x20u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __32__IRBiomeBridge_subscribeEvent___block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v1 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "#biome-bridge, ";
    v5 = 2112;
    v6 = v0;
    _os_log_impl(&dword_25543D000, v1, OS_LOG_TYPE_INFO, "%s[%@], IRBiomeBridge, context stream comletion block called, possibly sink is cancelled", &v3, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __32__IRBiomeBridge_subscribeEvent___block_invoke_27(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "#biome-bridge, ";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEBUG, "%s[%@], IRBiomeBridge, received a context biome event", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained notifyObserversOfEvent:*(a1 + 40) withValue:v3];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeEvent:(int64_t)event
{
  eventTypeToSinkMap = self->_eventTypeToSinkMap;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v9 = [(NSMutableDictionary *)eventTypeToSinkMap objectForKeyedSubscript:v6];

  [v9 cancel];
  v7 = self->_eventTypeToSinkMap;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  [(NSMutableDictionary *)v7 removeObjectForKey:v8];
}

- (id)fetchLatestEventsOfEventType:(int64_t)type numEvents:(unint64_t)events
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:events lastN:events reversed:0];
  v7 = [[IRBiomeParameters alloc] initWithBiomeEventType:type];
  v8 = [(IRBiomeParameters *)v7 queryPublisherWithOptions:v6];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__IRBiomeBridge_fetchLatestEventsOfEventType_numEvents___block_invoke;
  v16[3] = &unk_2797E0E68;
  v16[5] = events;
  v16[6] = type;
  v16[4] = &v17;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__IRBiomeBridge_fetchLatestEventsOfEventType_numEvents___block_invoke_32;
  v13[3] = &unk_2797E0E90;
  v9 = v7;
  v14 = v9;
  v15 = &v17;
  v10 = [v8 sinkWithCompletion:v16 receiveInput:v13];
  v11 = [v18[5] copy];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __56__IRBiomeBridge_fetchLatestEventsOfEventType_numEvents___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = [v6 numberWithUnsignedInteger:v7];
    v10 = IRBiomeEventTypeToString(*(a1 + 48));
    v11 = [v10 UTF8String];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "count")}];
    v14 = 136316162;
    v15 = "#biome-bridge, ";
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v9;
    v20 = 2080;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], Fetching latest %@ events of eventType %s completed. Fetch returned %@ events", &v14, 0x34u);
  }

  [IRBiomeBridge _logCompletion:v3];
  v13 = *MEMORY[0x277D85DE8];
}

void __56__IRBiomeBridge_fetchLatestEventsOfEventType_numEvents___block_invoke_32(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 eventBody];
  [*(a1 + 32) biomeEventClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

+ (void)_logCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  state = [completionCopy state];
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  v7 = *MEMORY[0x277D21260];
  if (state)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      error = [completionCopy error];
      v10 = [error description];
      v12 = 136315650;
      v13 = "#biome-bridge, ";
      v14 = 2112;
      v15 = v5;
      v16 = 2080;
      uTF8String = [v10 UTF8String];
      _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Biome stream complete error] Stream operation completed with error, %s\n", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "#biome-bridge, ";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_DEBUG, "%s[%@], Stream operation completed succesfully.", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end