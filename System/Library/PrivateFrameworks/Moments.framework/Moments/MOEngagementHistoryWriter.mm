@interface MOEngagementHistoryWriter
+ (id)sharedInstance;
- (BOOL)isOkToMergeSuggestionViewedContext:(id)context;
- (MOEngagementHistoryWriter)init;
- (id)makeNewConnectionWithInterfaceFor:(id)for;
- (void)_logEngagementEvent:(id)event withContext:(id)context;
- (void)logPerformanceEvent:(id)event withContext:(id)context;
- (void)logSuggestionEngagementEvent:(id)event clientIdentifier:(id)identifier forBundles:(id)bundles uiContainer:(id)container containerVisibleTime:(id)time otherContext:(id)context;
- (void)logUsageEvent:(id)event withContext:(id)context;
@end

@implementation MOEngagementHistoryWriter

- (MOEngagementHistoryWriter)init
{
  v13.receiver = self;
  v13.super_class = MOEngagementHistoryWriter;
  v2 = [(MOEngagementHistoryWriter *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MOEngagementHistoryWriter", v3);
    queue = v2->queue;
    v2->queue = v4;

    cachedViewedContext = v2->cachedViewedContext;
    v2->cachedViewedContext = 0;

    v7 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MOEngagementHistoryWriter init];
    }

    v8 = [[MOConnectionManager alloc] initWithName:@"MOEngagementHistoryWritter" usingDelegate:v2];
    connectionManager = v2->connectionManager;
    v2->connectionManager = v8;

    v10 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [MOEngagementHistoryWriter init];
    }

    v11 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MOEngagementHistoryWriter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_shared;

  return v2;
}

uint64_t __43__MOEngagementHistoryWriter_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)_logEngagementEvent:(id)event withContext:(id)context
{
  eventCopy = event;
  contextCopy = context;
  connectionManager = self->connectionManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__MOEngagementHistoryWriter__logEngagementEvent_withContext___block_invoke;
  v14[3] = &unk_278773360;
  v15 = eventCopy;
  v16 = contextCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__MOEngagementHistoryWriter__logEngagementEvent_withContext___block_invoke_5;
  v11[3] = &unk_278773388;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(MOConnectionManager *)connectionManager postAsyncProxyUsingBlock:v14 onError:v11];
}

void __61__MOEngagementHistoryWriter__logEngagementEvent_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __61__MOEngagementHistoryWriter__logEngagementEvent_withContext___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEAA8] now];
  [v3 logEngagementEvent:v5 timestamp:v6 withContext:*(a1 + 40)];
}

void __61__MOEngagementHistoryWriter__logEngagementEvent_withContext___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__MOEngagementHistoryWriter__logEngagementEvent_withContext___block_invoke_5_cold_1(v3, a1);
  }
}

- (void)logPerformanceEvent:(id)event withContext:(id)context
{
  eventCopy = event;
  contextCopy = context;
  connectionManager = self->connectionManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__MOEngagementHistoryWriter_logPerformanceEvent_withContext___block_invoke;
  v14[3] = &unk_278773360;
  v15 = eventCopy;
  v16 = contextCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__MOEngagementHistoryWriter_logPerformanceEvent_withContext___block_invoke_7;
  v11[3] = &unk_278773388;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(MOConnectionManager *)connectionManager postAsyncProxyUsingBlock:v14 onError:v11];
}

void __61__MOEngagementHistoryWriter_logPerformanceEvent_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __61__MOEngagementHistoryWriter_logPerformanceEvent_withContext___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEAA8] now];
  [v3 logPerformanceEvent:v5 timestamp:v6 withContext:*(a1 + 40)];
}

void __61__MOEngagementHistoryWriter_logPerformanceEvent_withContext___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__MOEngagementHistoryWriter_logPerformanceEvent_withContext___block_invoke_7_cold_1(v3, a1);
  }
}

- (void)logUsageEvent:(id)event withContext:(id)context
{
  eventCopy = event;
  contextCopy = context;
  connectionManager = self->connectionManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__MOEngagementHistoryWriter_logUsageEvent_withContext___block_invoke;
  v14[3] = &unk_278773360;
  v15 = eventCopy;
  v16 = contextCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__MOEngagementHistoryWriter_logUsageEvent_withContext___block_invoke_8;
  v11[3] = &unk_278773388;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(MOConnectionManager *)connectionManager postAsyncProxyUsingBlock:v14 onError:v11];
}

void __55__MOEngagementHistoryWriter_logUsageEvent_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __55__MOEngagementHistoryWriter_logUsageEvent_withContext___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEAA8] now];
  [v3 logUsageEvent:v5 timestamp:v6 withContext:*(a1 + 40)];
}

void __55__MOEngagementHistoryWriter_logUsageEvent_withContext___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__MOEngagementHistoryWriter_logUsageEvent_withContext___block_invoke_8_cold_1(v3, a1);
  }
}

- (BOOL)isOkToMergeSuggestionViewedContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (!self->cachedViewedContext)
  {
    goto LABEL_6;
  }

  v6 = [contextCopy objectForKeyedSubscript:@"clientIdentifier"];
  v7 = [(NSMutableDictionary *)self->cachedViewedContext objectForKeyedSubscript:@"clientIdentifier"];
  v8 = v7;
  if (v6 == v7)
  {
    v9 = [v5 objectForKeyedSubscript:@"viewContainerName"];
    v10 = [(NSMutableDictionary *)self->cachedViewedContext objectForKeyedSubscript:@"viewContainerName"];

    if (v9 != v10)
    {
      goto LABEL_5;
    }

LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

LABEL_5:
  v11 = 0;
LABEL_7:

  return v11;
}

- (void)logSuggestionEngagementEvent:(id)event clientIdentifier:(id)identifier forBundles:(id)bundles uiContainer:(id)container containerVisibleTime:(id)time otherContext:(id)context
{
  eventCopy = event;
  bundlesCopy = bundles;
  timeCopy = time;
  v17 = MEMORY[0x277CBEB38];
  containerCopy = container;
  identifierCopy = identifier;
  v20 = [v17 dictionaryWithDictionary:context];
  [v20 setObject:identifierCopy forKeyedSubscript:@"clientIdentifier"];

  [v20 setObject:containerCopy forKeyedSubscript:@"viewContainerName"];
  if ([eventCopy isEqual:@"suggestionsViewed"])
  {
    objc_initWeak(&location, self);
    queue = self->queue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __132__MOEngagementHistoryWriter_logSuggestionEngagementEvent_clientIdentifier_forBundles_uiContainer_containerVisibleTime_otherContext___block_invoke;
    v22[3] = &unk_2787733D8;
    objc_copyWeak(&v27, &location);
    v23 = v20;
    v24 = bundlesCopy;
    v25 = eventCopy;
    v26 = timeCopy;
    dispatch_async(queue, v22);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    [v20 setObject:bundlesCopy forKeyedSubscript:@"eventBundles"];
    [v20 setObject:timeCopy forKeyedSubscript:@"viewVisibleTime"];
    [(MOEngagementHistoryWriter *)self _logEngagementEvent:eventCopy withContext:v20];
  }
}

void __132__MOEngagementHistoryWriter_logSuggestionEngagementEvent_clientIdentifier_forBundles_uiContainer_containerVisibleTime_otherContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained + 3;
    if (!WeakRetained[3])
    {
      goto LABEL_7;
    }

    if ([WeakRetained isOkToMergeSuggestionViewedContext:*(a1 + 32)])
    {
      v5 = [*v4 objectForKeyedSubscript:@"eventBundles"];
      [v5 addObjectsFromArray:*(a1 + 40)];
    }

    else
    {
      [v3 _logEngagementEvent:*(a1 + 48) withContext:v3[3]];
      v5 = v3[3];
      v3[3] = 0;
    }

    if (!*v4)
    {
LABEL_7:
      objc_storeStrong(v3 + 3, *(a1 + 32));
      v6 = [MEMORY[0x277CBEB18] arrayWithArray:*(a1 + 40)];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:@"eventBundles"];

      [*(a1 + 32) setObject:*(a1 + 56) forKeyedSubscript:@"viewVisibleTime"];
      v7 = dispatch_time(0, 3000000000);
      v8 = v3[2];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __132__MOEngagementHistoryWriter_logSuggestionEngagementEvent_clientIdentifier_forBundles_uiContainer_containerVisibleTime_otherContext___block_invoke_2;
      v9[3] = &unk_2787733B0;
      objc_copyWeak(&v11, (a1 + 64));
      v10 = *(a1 + 48);
      dispatch_after(v7, v8, v9);

      objc_destroyWeak(&v11);
    }
  }
}

void __132__MOEngagementHistoryWriter_logSuggestionEngagementEvent_clientIdentifier_forBundles_uiContainer_containerVisibleTime_otherContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[3])
  {
    v4 = WeakRetained;
    [WeakRetained _logEngagementEvent:*(a1 + 32) withContext:?];
    v3 = v4[3];
    v4[3] = 0;

    WeakRetained = v4;
  }
}

- (id)makeNewConnectionWithInterfaceFor:(id)for
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.momentsd" options:0];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841103C0];
  [v3 setRemoteObjectInterface:v4];

  return v3;
}

void __61__MOEngagementHistoryWriter__logEngagementEvent_withContext___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__MOEngagementHistoryWriter__logEngagementEvent_withContext___block_invoke_5_cold_1(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1(&dword_22D8C5000, v6, v7, "Error: %@, engagement event: %@, context: %{private}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __61__MOEngagementHistoryWriter_logPerformanceEvent_withContext___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__MOEngagementHistoryWriter_logPerformanceEvent_withContext___block_invoke_7_cold_1(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1(&dword_22D8C5000, v6, v7, "Error: %@, performance event: %@, context: %{private}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __55__MOEngagementHistoryWriter_logUsageEvent_withContext___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __55__MOEngagementHistoryWriter_logUsageEvent_withContext___block_invoke_8_cold_1(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1(&dword_22D8C5000, v6, v7, "Error: %@, Usage event: %@, context: %{private}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end