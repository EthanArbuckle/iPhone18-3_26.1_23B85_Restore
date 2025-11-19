@interface CRUIAnalytics
- (CRUIAnalytics)init;
- (void)sendAsyncAnalyticsForEvent:(id)a3 moduleName:(id)a4;
- (void)sendAsyncAnalyticsForEventIfNeeded:(id)a3 moduleName:(id)a4;
@end

@implementation CRUIAnalytics

- (CRUIAnalytics)init
{
  v6.receiver = self;
  v6.super_class = CRUIAnalytics;
  v2 = [(CRUIAnalytics *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("async", 0);
    serialAsyncQueue = v2->serialAsyncQueue;
    v2->serialAsyncQueue = v3;
  }

  return v2;
}

void *__54__CRUIAnalytics_sendAnalyticsForRepairHistoryMismatch__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = handleForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[CRUIAnalytics sendAnalyticsForRepairHistoryMismatch]_block_invoke";
    v5 = 2112;
    v6 = &unk_28597F170;
    _os_log_impl(&dword_247875000, v0, OS_LOG_TYPE_DEFAULT, "[%s] send event: %@", &v3, 0x16u);
  }

  v1 = *MEMORY[0x277D85DE8];
  return &unk_28597F170;
}

- (void)sendAsyncAnalyticsForEventIfNeeded:(id)a3 moduleName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 length];
    if (v7)
    {
      if (v8 && [v7 length])
      {
        serialAsyncQueue = self->serialAsyncQueue;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __63__CRUIAnalytics_sendAsyncAnalyticsForEventIfNeeded_moduleName___block_invoke;
        v10[3] = &unk_278EB1D00;
        v11 = v7;
        v12 = v6;
        dispatch_async(serialAsyncQueue, v10);
      }
    }
  }
}

void __63__CRUIAnalytics_sendAsyncAnalyticsForEventIfNeeded_moduleName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [v2 appendString:*(a1 + 40)];
  v3 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
  if (([v3 BOOLForKey:v2] & 1) == 0)
  {
    v4 = MEMORY[0x277D85DD0];
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    AnalyticsSendEventLazy();
    [v3 setBool:1 forKey:{v2, v4, 3221225472, __63__CRUIAnalytics_sendAsyncAnalyticsForEventIfNeeded_moduleName___block_invoke_2, &unk_278EB1F70}];
    [v3 synchronize];
  }
}

id __63__CRUIAnalytics_sendAsyncAnalyticsForEventIfNeeded_moduleName___block_invoke_2(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"EventType";
  v10[1] = @"ModuleType";
  v1 = *(a1 + 40);
  v11[0] = *(a1 + 32);
  v11[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CRUIAnalytics sendAsyncAnalyticsForEventIfNeeded:moduleName:]_block_invoke_2";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_247875000, v3, OS_LOG_TYPE_DEFAULT, "[%s] send event: %@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)sendAsyncAnalyticsForEvent:(id)a3 moduleName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 length];
    if (v7)
    {
      if (v8 && [v7 length])
      {
        serialAsyncQueue = self->serialAsyncQueue;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __55__CRUIAnalytics_sendAsyncAnalyticsForEvent_moduleName___block_invoke;
        v10[3] = &unk_278EB1D00;
        v11 = v6;
        v12 = v7;
        dispatch_async(serialAsyncQueue, v10);
      }
    }
  }
}

void __55__CRUIAnalytics_sendAsyncAnalyticsForEvent_moduleName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id __55__CRUIAnalytics_sendAsyncAnalyticsForEvent_moduleName___block_invoke_2(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"EventType";
  v10[1] = @"ModuleType";
  v1 = *(a1 + 40);
  v11[0] = *(a1 + 32);
  v11[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CRUIAnalytics sendAsyncAnalyticsForEvent:moduleName:]_block_invoke_2";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_247875000, v3, OS_LOG_TYPE_DEFAULT, "[%s] send event: %@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

@end