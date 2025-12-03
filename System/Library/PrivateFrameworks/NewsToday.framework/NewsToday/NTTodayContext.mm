@interface NTTodayContext
- (NTTodayContext)init;
- (NTTodayContext)initWithContentContext:(id)context feedPersonalizerFactory:(id)factory groupingService:(id)service todayBannerValidator:(id)validator articleExposureRegistry:(id)registry processVariant:(unint64_t)variant accessQueue:(id)queue fetchQueue:(id)self0;
- (id)placeholderResultsWithOperationInfo:(id)info;
- (void)_setupTodayResultsSource;
- (void)fetchLatestResultsWithOperationInfo:(id)info completion:(id)completion;
- (void)fetchModuleDescriptorsWithCompletion:(id)completion;
- (void)networkReachabilityDidChange:(id)change;
- (void)writeUserDidReadHeadlineWithAnalyticsElement:(id)element atDate:(id)date;
- (void)writeUserDidSeeHeadlinesWithAnalyticsElements:(id)elements atDate:(id)date;
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

- (NTTodayContext)initWithContentContext:(id)context feedPersonalizerFactory:(id)factory groupingService:(id)service todayBannerValidator:(id)validator articleExposureRegistry:(id)registry processVariant:(unint64_t)variant accessQueue:(id)queue fetchQueue:(id)self0
{
  v54[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  factoryCopy = factory;
  serviceCopy = service;
  obj = validator;
  validatorCopy = validator;
  registryCopy = registry;
  registryCopy2 = registry;
  queueCopy = queue;
  fetchQueueCopy = fetchQueue;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:];
    if (factoryCopy)
    {
      goto LABEL_6;
    }
  }

  else if (factoryCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:];
  }

LABEL_6:
  if (!queueCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:];
  }

  if (!fetchQueueCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext initWithContentContext:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:processVariant:accessQueue:fetchQueue:];
  }

  v52.receiver = self;
  v52.super_class = NTTodayContext;
  v21 = [(NTTodayContext *)&v52 init];
  if (v21)
  {
    NewsCoreUserDefaults();
    v44 = queueCopy;
    v22 = registryCopy2;
    v24 = v23 = contextCopy;
    v53 = *MEMORY[0x277D30D18];
    v54[0] = MEMORY[0x277CBEC38];
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v41 = validatorCopy;
    v26 = v25 = factoryCopy;
    [v24 registerDefaults:v26];

    factoryCopy = v25;
    contextCopy = v23;
    registryCopy2 = v22;
    objc_storeStrong(&v21->_contentContext, context);
    objc_storeStrong(&v21->_feedPersonalizerFactory, factory);
    objc_storeStrong(&v21->_groupingService, service);
    objc_storeStrong(&v21->_todayBannerValidator, obj);
    objc_storeStrong(&v21->_articleExposureRegistry, registryCopy);
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

    objc_storeStrong(&v21->_accessQueue, queue);
    objc_storeStrong(&v21->_fetchQueue, fetchQueue);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke;
    block[3] = &unk_279983648;
    v50 = v44;
    v37 = v21;
    v51 = v37;
    validatorCopy = v41;
    dispatch_sync(v50, block);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __164__NTTodayContext_initWithContentContext_feedPersonalizerFactory_groupingService_todayBannerValidator_articleExposureRegistry_processVariant_accessQueue_fetchQueue___block_invoke_4;
    v47[3] = &unk_279982740;
    v38 = v37;
    queueCopy = v44;
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

- (void)networkReachabilityDidChange:(id)change
{
  if ([change isNetworkReachable])
  {
    accessQueue = [(NTTodayContext *)self accessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__NTTodayContext_networkReachabilityDidChange___block_invoke;
    block[3] = &unk_279982740;
    block[4] = self;
    dispatch_async(accessQueue, block);
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

- (void)fetchModuleDescriptorsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext fetchModuleDescriptorsWithCompletion:];
  }

  accessQueue = [(NTTodayContext *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NTTodayContext_fetchModuleDescriptorsWithCompletion___block_invoke;
  v7[3] = &unk_279983698;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
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

- (void)fetchLatestResultsWithOperationInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext fetchLatestResultsWithOperationInfo:completion:];
    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext fetchLatestResultsWithOperationInfo:completion:];
  }

LABEL_6:
  accessQueue = [(NTTodayContext *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NTTodayContext_fetchLatestResultsWithOperationInfo_completion___block_invoke;
  block[3] = &unk_2799836E8;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(accessQueue, block);
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

- (id)placeholderResultsWithOperationInfo:(id)info
{
  infoCopy = info;
  sourceAvailabilityManager = [(NTTodayContext *)self sourceAvailabilityManager];
  [sourceAvailabilityManager preferredSourceFetchDescriptorClass];
  v6 = objc_opt_new();

  contentContext = [(NTTodayContext *)self contentContext];
  v8 = [NTTodayResultsSource placeholderResultsWithFetchDescriptor:v6 contentContext:contentContext operationInfo:infoCopy];

  return v8;
}

- (void)writeUserDidSeeHeadlinesWithAnalyticsElements:(id)elements atDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  dateCopy = date;
  if (!elementsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext writeUserDidSeeHeadlinesWithAnalyticsElements:atDate:];
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
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
  v8 = dateCopy;
  v15 = v8;
  v9 = [elementsCopy fc_arrayByTransformingWithBlock:v14];
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

  writablePrivateDataStorage = [(NTTodayContext *)self writablePrivateDataStorage];
  [writablePrivateDataStorage writeSeenHistoryItems:v9];

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

- (void)writeUserDidReadHeadlineWithAnalyticsElement:(id)element atDate:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  dateCopy = date;
  if (!elementCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext writeUserDidReadHeadlineWithAnalyticsElement:atDate:];
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayContext writeUserDidReadHeadlineWithAnalyticsElement:atDate:];
  }

LABEL_6:
  v8 = objc_opt_new();
  articleID = [elementCopy articleID];
  [v8 setArticleID:articleID];

  [v8 setMaxVersionRead:{objc_msgSend(elementCopy, "articleVersion")}];
  [v8 setLastVisitedAt:dateCopy];
  v10 = v8;
  v11 = NTSharedLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    articleID2 = [v10 articleID];
    v15 = 138543618;
    v16 = articleID2;
    v17 = 2114;
    v18 = dateCopy;
    _os_log_impl(&dword_25BF21000, v11, OS_LOG_TYPE_DEFAULT, "user did read headline, articleID=%{public}@, date=%{public}@", &v15, 0x16u);
  }

  writablePrivateDataStorage = [(NTTodayContext *)self writablePrivateDataStorage];
  [writablePrivateDataStorage writeReadHistoryItem:v10];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setupTodayResultsSource
{
  sourceAvailabilityManager = [(NTTodayContext *)self sourceAvailabilityManager];
  [sourceAvailabilityManager preferredSourceFetchDescriptorClass];
  v14 = objc_opt_new();

  v4 = [NTTodayResultsSource alloc];
  feedPersonalizerFactory = [(NTTodayContext *)self feedPersonalizerFactory];
  groupingService = [(NTTodayContext *)self groupingService];
  todayBannerValidator = [(NTTodayContext *)self todayBannerValidator];
  articleExposureRegistry = [(NTTodayContext *)self articleExposureRegistry];
  readablePrivateDataStorage = [(NTTodayContext *)self readablePrivateDataStorage];
  contentContext = [(NTTodayContext *)self contentContext];
  fetchQueue = [(NTTodayContext *)self fetchQueue];
  v12 = [(NTTodayResultsSource *)v4 initWithFetchDescriptor:v14 feedPersonalizerFactory:feedPersonalizerFactory groupingService:groupingService todayBannerValidator:todayBannerValidator articleExposureRegistry:articleExposureRegistry privateDataStorage:readablePrivateDataStorage contentContext:contentContext fetchQueue:fetchQueue];
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