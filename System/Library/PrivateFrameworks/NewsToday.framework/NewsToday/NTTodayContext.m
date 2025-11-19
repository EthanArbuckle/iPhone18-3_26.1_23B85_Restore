@interface NTTodayContext
- (NTTodayContext)init;
- (NTTodayContext)initWithContentContext:(id)a3 feedPersonalizerFactory:(id)a4 groupingService:(id)a5 todayBannerValidator:(id)a6 articleExposureRegistry:(id)a7 processVariant:(unint64_t)a8 accessQueue:(id)a9 fetchQueue:(id)a10;
- (id)placeholderResultsWithOperationInfo:(id)a3;
- (void)_setupTodayResultsSource;
- (void)fetchLatestResultsWithOperationInfo:(id)a3 completion:(id)a4;
- (void)fetchModuleDescriptorsWithCompletion:(id)a3;
- (void)networkReachabilityDidChange:(id)a3;
- (void)writeUserDidReadHeadlineWithAnalyticsElement:(id)a3 atDate:(id)a4;
- (void)writeUserDidSeeHeadlinesWithAnalyticsElements:(id)a3 atDate:(id)a4;
@end

@implementation NTTodayContext

- (NTTodayContext)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTTodayContext init]";
    v10 = 2080;
    v11 = "NTTodayContext.m";
    v12 = 1024;
    v13 = 97;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTTodayContext init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTTodayContext)initWithContentContext:(id)a3 feedPersonalizerFactory:(id)a4 groupingService:(id)a5 todayBannerValidator:(id)a6 articleExposureRegistry:(id)a7 processVariant:(unint64_t)a8 accessQueue:(id)a9 fetchQueue:(id)a10
{
  v54[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v45 = a5;
  obj = a6;
  v18 = a6;
  v43 = a7;
  v19 = a7;
  v20 = a9;
  v46 = a10;
  if (!v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:];
    if (v17)
    {
      goto LABEL_6;
    }
  }

  else if (v17)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:];
  }

LABEL_6:
  if (!v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:];
  }

  if (!v46 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:];
  }

  v52.receiver = self;
  v52.super_class = NTTodayContext;
  v21 = [(NTTodayContext *)&v52 init];
  if (v21)
  {
    NewsCoreUserDefaults();
    v44 = v20;
    v22 = v19;
    v24 = v23 = v16;
    v53 = *MEMORY[0x277D30D18];
    v54[0] = MEMORY[0x277CBEC38];
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v41 = v18;
    v26 = v25 = v17;
    [v24 registerDefaults:v26];

    v17 = v25;
    v16 = v23;
    v19 = v22;
    objc_storeStrong(&v21->_contentContext, a3);
    objc_storeStrong(&v21->_feedPersonalizerFactory, a4);
    objc_storeStrong(&v21->_groupingService, a5);
    objc_storeStrong(&v21->_todayBannerValidator, obj);
    objc_storeStrong(&v21->_articleExposureRegistry, v43);
    v27 = objc_alloc(MEMORY[0x277D31070]);
    v28 = FCURLForTodayPrivateDataTransactionQueue();
    v29 = [v27 initWithFileURL:v28];

    v30 = objc_alloc(MEMORY[0x277D31060]);
    v31 = FCURLForTodayDropbox();
    v32 = [v30 initWithFileURL:v31];

    v33 = [objc_alloc(MEMORY[0x277D313A0]) initWithDropbox:v32 transactionQueue:v29];
    writablePrivateDataStorage = v21->_writablePrivateDataStorage;
    v21->_writablePrivateDataStorage = v33;

    v35 = [objc_alloc(MEMORY[0x277D31270]) initWithDropbox:v32 transactionQueue:v29];
    readablePrivateDataStorage = v21->_readablePrivateDataStorage;
    v21->_readablePrivateDataStorage = v35;

    objc_storeStrong(&v21->_accessQueue, a9);
    objc_storeStrong(&v21->_fetchQueue, a10);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke;
    block[3] = &unk_279983648;
    v50 = v44;
    v37 = v21;
    v51 = v37;
    v18 = v41;
    dispatch_sync(v50, block);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke_4;
    v47[3] = &unk_279982740;
    v38 = v37;
    v20 = v44;
    v48 = v38;
    dispatch_async(MEMORY[0x277D85CD0], v47);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v21;
}

void __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D31140] sharedNetworkReachability];
  v3 = [[NTNewsSourceAvailabilityEntry alloc] initWithNetworkReachability:v2 queue:*(a1 + 32)];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{v3, v4, 0}];
  objc_initWeak(&location, *(a1 + 40));
  v6 = [[NTSourceAvailabilityManager alloc] initWithAvailabilityEntriesInPreferredOrder:v5 queue:*(a1 + 32)];
  objc_storeStrong((*(a1 + 40) + 72), v6);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke_2;
  v7[3] = &unk_2799835B8;
  v8 = *(a1 + 32);
  objc_copyWeak(&v9, &location);
  [(NTSourceAvailabilityManager *)v6 setPreferredSourceChangedNotificationBlock:v7];
  [*(a1 + 40) _setupTodayResultsSource];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  FCPerformIfNonNil();
}

void __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 _setupTodayResultsSource];
  v2 = [v4 newResultsHandler];

  if (v2)
  {
    v3 = [v4 newResultsHandler];
    v3[2]();
  }
}

void __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 addObserver:*(a1 + 32)];
}

- (void)networkReachabilityDidChange:(id)a3
{
  if ([a3 isNetworkReachable])
  {
    v4 = [(NTTodayContext *)self accessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__NTTodayContext_networkReachabilityDidChange___block_invoke;
    block[3] = &unk_279982740;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __47__NTTodayContext_networkReachabilityDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newResultsHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) newResultsHandler];
    v3[2]();
  }
}

- (void)fetchModuleDescriptorsWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext fetchModuleDescriptorsWithCompletion:];
  }

  v5 = [(NTTodayContext *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NTTodayContext_fetchModuleDescriptorsWithCompletion___block_invoke;
  v7[3] = &unk_279983698;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__NTTodayContext_fetchModuleDescriptorsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) todayResultsSource];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__NTTodayContext_fetchModuleDescriptorsWithCompletion___block_invoke_2;
  v3[3] = &unk_279983670;
  v4 = *(a1 + 40);
  [v2 fetchModuleDescriptorsWithCompletion:v3];
}

void __55__NTTodayContext_fetchModuleDescriptorsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    NTPossiblySimulateCrashWithError(v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchLatestResultsWithOperationInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext fetchLatestResultsWithOperationInfo:completion:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext fetchLatestResultsWithOperationInfo:completion:];
  }

LABEL_6:
  v8 = [(NTTodayContext *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NTTodayContext_fetchLatestResultsWithOperationInfo_completion___block_invoke;
  block[3] = &unk_2799836E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __65__NTTodayContext_fetchLatestResultsWithOperationInfo_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) todayResultsSource];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__NTTodayContext_fetchLatestResultsWithOperationInfo_completion___block_invoke_2;
  v4[3] = &unk_2799836C0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 fetchLatestResultsWithOperationInfo:v3 completion:v4];
}

void __65__NTTodayContext_fetchLatestResultsWithOperationInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    NTPossiblySimulateCrashWithError(v11);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)placeholderResultsWithOperationInfo:(id)a3
{
  v4 = a3;
  v5 = [(NTTodayContext *)self sourceAvailabilityManager];
  [v5 preferredSourceFetchDescriptorClass];
  v6 = objc_opt_new();

  v7 = [(NTTodayContext *)self contentContext];
  v8 = [NTTodayResultsSource placeholderResultsWithFetchDescriptor:v6 contentContext:v7 operationInfo:v4];

  return v8;
}

- (void)writeUserDidSeeHeadlinesWithAnalyticsElements:(id)a3 atDate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext writeUserDidSeeHeadlinesWithAnalyticsElements:atDate:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext writeUserDidSeeHeadlinesWithAnalyticsElements:atDate:];
  }

LABEL_6:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__NTTodayContext_writeUserDidSeeHeadlinesWithAnalyticsElements_atDate___block_invoke;
  v14[3] = &unk_279983710;
  v8 = v7;
  v15 = v8;
  v9 = [v6 fc_arrayByTransformingWithBlock:v14];
  if ([v9 count])
  {
    v10 = [v9 fc_arrayByTransformingWithBlock:&__block_literal_global_40];
    v11 = NTSharedLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_25BF21000, v11, OS_LOG_TYPE_DEFAULT, "user did see headlines, articleIDs=%{public}@, date=%{public}@", buf, 0x16u);
    }
  }

  v12 = [(NTTodayContext *)self writablePrivateDataStorage];
  [v12 writeSeenHistoryItems:v9];

  v13 = *MEMORY[0x277D85DE8];
}

id __71__NTTodayContext_writeUserDidSeeHeadlinesWithAnalyticsElements_atDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 needsSeenStateTracking])
  {
    objc_opt_class();
    v4 = FCCheckedDynamicCast();
    v5 = objc_opt_new();
    v6 = [v4 articleID];
    [v5 setArticleID:v6];

    [v5 setMaxVersionSeen:{objc_msgSend(v4, "articleVersion")}];
    [v5 setFirstSeenAt:*(a1 + 32)];
    [v5 setFirstSeenAtOfMaxVersionSeen:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)writeUserDidReadHeadlineWithAnalyticsElement:(id)a3 atDate:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext writeUserDidReadHeadlineWithAnalyticsElement:atDate:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext writeUserDidReadHeadlineWithAnalyticsElement:atDate:];
  }

LABEL_6:
  v8 = objc_opt_new();
  v9 = [v6 articleID];
  [v8 setArticleID:v9];

  [v8 setMaxVersionRead:{objc_msgSend(v6, "articleVersion")}];
  [v8 setLastVisitedAt:v7];
  v10 = v8;
  v11 = NTSharedLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 articleID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_25BF21000, v11, OS_LOG_TYPE_DEFAULT, "user did read headline, articleID=%{public}@, date=%{public}@", &v15, 0x16u);
  }

  v13 = [(NTTodayContext *)self writablePrivateDataStorage];
  [v13 writeReadHistoryItem:v10];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setupTodayResultsSource
{
  v3 = [(NTTodayContext *)self sourceAvailabilityManager];
  [v3 preferredSourceFetchDescriptorClass];
  v14 = objc_opt_new();

  v4 = [NTTodayResultsSource alloc];
  v5 = [(NTTodayContext *)self feedPersonalizerFactory];
  v6 = [(NTTodayContext *)self groupingService];
  v7 = [(NTTodayContext *)self todayBannerValidator];
  v8 = [(NTTodayContext *)self articleExposureRegistry];
  v9 = [(NTTodayContext *)self readablePrivateDataStorage];
  v10 = [(NTTodayContext *)self contentContext];
  v11 = [(NTTodayContext *)self fetchQueue];
  v12 = [(NTTodayResultsSource *)v4 initWithFetchDescriptor:v14 feedPersonalizerFactory:v5 groupingService:v6 todayBannerValidator:v7 articleExposureRegistry:v8 privateDataStorage:v9 contentContext:v10 fetchQueue:v11];
  todayResultsSource = self->_todayResultsSource;
  self->_todayResultsSource = v12;
}

- (void)initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedPersonalizerFactory", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "accessQueue", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fetchQueue", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchModuleDescriptorsWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchLatestResultsWithOperationInfo:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchLatestResultsWithOperationInfo:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeUserDidSeeHeadlinesWithAnalyticsElements:atDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "analyticsElements", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeUserDidSeeHeadlinesWithAnalyticsElements:atDate:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeUserDidReadHeadlineWithAnalyticsElement:atDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "analyticsElement", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeUserDidReadHeadlineWithAnalyticsElement:atDate:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end