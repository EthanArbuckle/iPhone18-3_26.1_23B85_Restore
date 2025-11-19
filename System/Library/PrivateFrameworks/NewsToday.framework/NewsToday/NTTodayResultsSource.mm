@interface NTTodayResultsSource
+ (id)placeholderResultsWithFetchDescriptor:(id)a3 contentContext:(id)a4 operationInfo:(id)a5;
- (NTTodayResultsSource)init;
- (NTTodayResultsSource)initWithFetchDescriptor:(id)a3 feedPersonalizerFactory:(id)a4 groupingService:(id)a5 todayBannerValidator:(id)a6 articleExposureRegistry:(id)a7 privateDataStorage:(id)a8 contentContext:(id)a9 fetchQueue:(id)a10;
- (id)placeholderResultsWithOperationInfo:(id)a3;
- (void)_fetchLatestResultsWithOperationInfo:(id)a3 prefetchedContent:(id)a4 completion:(id)a5;
- (void)fetchLatestResultsWithOperationInfo:(id)a3 completion:(id)a4;
- (void)fetchModuleDescriptorsWithCompletion:(id)a3;
@end

@implementation NTTodayResultsSource

- (NTTodayResultsSource)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTTodayResultsSource init]";
    v10 = 2080;
    v11 = "NTTodayResultsSource.m";
    v12 = 1024;
    v13 = 62;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTTodayResultsSource init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTTodayResultsSource)initWithFetchDescriptor:(id)a3 feedPersonalizerFactory:(id)a4 groupingService:(id)a5 todayBannerValidator:(id)a6 articleExposureRegistry:(id)a7 privateDataStorage:(id)a8 contentContext:(id)a9 fetchQueue:(id)a10
{
  v16 = a3;
  v17 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  obj = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if (!v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResultsSource initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:];
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
    [NTTodayResultsSource initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:];
  }

LABEL_6:
  if (!v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResultsSource initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:];
    if (v19)
    {
      goto LABEL_11;
    }
  }

  else if (v19)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResultsSource initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:];
  }

LABEL_11:
  if (!v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResultsSource initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:];
  }

  v30.receiver = self;
  v30.super_class = NTTodayResultsSource;
  v21 = [(NTTodayResultsSource *)&v30 init];
  if (v21)
  {
    v22 = [v16 copy];
    fetchDescriptor = v21->_fetchDescriptor;
    v21->_fetchDescriptor = v22;

    objc_storeStrong(&v21->_feedPersonalizerFactory, a4);
    objc_storeStrong(&v21->_groupingService, a5);
    objc_storeStrong(&v21->_todayBannerValidator, a6);
    objc_storeStrong(&v21->_articleExposureRegistry, a7);
    objc_storeStrong(&v21->_privateDataStorage, obj);
    objc_storeStrong(&v21->_contentContext, v25);
    objc_storeStrong(&v21->_serialQueue, a10);
  }

  return v21;
}

- (void)fetchModuleDescriptorsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D30E28];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__NTTodayResultsSource_fetchModuleDescriptorsWithCompletion___block_invoke;
  v9[3] = &unk_2799829F8;
  v10 = v4;
  v11 = 25;
  v9[4] = self;
  v6 = v4;
  v7 = [v5 asyncBlockOperationWithBlock:v9];
  [v7 setQualityOfService:25];
  v8 = [(NTTodayResultsSource *)self serialQueue];
  [v8 enqueueOperation:v7];
}

void __61__NTTodayResultsSource_fetchModuleDescriptorsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__NTTodayResultsSource_fetchModuleDescriptorsWithCompletion___block_invoke_2;
  v7[3] = &unk_2799829D0;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v5 _fetchTodayModuleDescriptorsWithContentRequest:0 requireRefreshedAppConfig:0 qualityOfService:v4 completion:v7];
}

uint64_t __61__NTTodayResultsSource_fetchModuleDescriptorsWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)fetchLatestResultsWithOperationInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 copy];
  v9 = [v8 request];

  if (!v9)
  {
    v10 = [MEMORY[0x277D35548] nt_defaultModule];
    v11 = [v10 availableContents];
    v12 = [v11 fc_onlyObject];
    v13 = [v12 request];
    [v8 setRequest:v13];
  }

  v14 = MEMORY[0x277D30E28];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke;
  v23 = &unk_279982A98;
  v24 = self;
  v25 = v8;
  v26 = v6;
  v27 = v7;
  v15 = v7;
  v16 = v6;
  v17 = v8;
  v18 = [v14 asyncBlockOperationWithBlock:&v20];
  [v18 setQualityOfService:{objc_msgSend(v16, "qualityOfService", v20, v21, v22, v23, v24)}];
  v19 = [(NTTodayResultsSource *)self serialQueue];
  [v19 enqueueOperation:v18];
}

void __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"marker"];
  [v4 setBool:1 forKey:@"marker"];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) request];
  v8 = [*(a1 + 48) qualityOfService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke_2;
  v11[3] = &unk_279982A70;
  v11[4] = *(a1 + 32);
  v14 = *(a1 + 56);
  v15 = v3;
  v12 = *(a1 + 40);
  v13 = v4;
  v9 = v4;
  v10 = v3;
  [v6 _fetchTodayModuleDescriptorsWithContentRequest:v7 requireRefreshedAppConfig:v5 qualityOfService:v8 completion:v11];
}

void __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke_3;
    v17[3] = &unk_279982A20;
    v17[4] = *(a1 + 32);
    v19 = *(a1 + 56);
    v18 = v6;
    v20 = *(a1 + 64);
    __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke_3(v17);

    v7 = v19;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke_4;
    v12[3] = &unk_279982A48;
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    [v8 _fetchLatestResultsWithOperationInfo:v9 prefetchedContent:a3 completion:v12];

    v7 = v13;
  }
}

void __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke_3(uint64_t a1)
{
  v5 = objc_opt_new();
  v2 = [*(a1 + 32) fetchDescriptor];
  v3 = [v2 sourceIdentifier];
  [v5 setTodaySourceIdentifier:v3];

  v4 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
}

void __71__NTTodayResultsSource_fetchLatestResultsWithOperationInfo_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [*(a1 + 32) setBool:0 forKey:@"marker"];
  v12 = v10;
  v13 = v12;
  if (!v12)
  {
    v13 = objc_opt_new();
    v14 = [*(a1 + 40) fetchDescriptor];
    v15 = [v14 sourceIdentifier];
    [v13 setTodaySourceIdentifier:v15];
  }

  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
}

- (id)placeholderResultsWithOperationInfo:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResultsSource placeholderResultsWithOperationInfo:];
  }

  v5 = objc_opt_class();
  v6 = [(NTTodayResultsSource *)self fetchDescriptor];
  v7 = [(NTTodayResultsSource *)self contentContext];
  v8 = [v5 placeholderResultsWithFetchDescriptor:v6 contentContext:v7 operationInfo:v4];

  return v8;
}

+ (id)placeholderResultsWithFetchDescriptor:(id)a3 contentContext:(id)a4 operationInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NTTodayResultsSource placeholderResultsWithFetchDescriptor:contentContext:operationInfo:];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NTTodayResultsSource placeholderResultsWithFetchDescriptor:contentContext:operationInfo:];
  }

LABEL_6:
  if (!v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NTTodayResultsSource placeholderResultsWithFetchDescriptor:contentContext:operationInfo:];
  }

  v10 = [v9 request];
  v11 = v7;
  v12 = [v7 placeholderSectionDescriptorsWithContentRequest:v10];

  v13 = [v12 fc_dictionaryWithValueBlock:&__block_literal_global_1];
  v14 = objc_opt_new();
  v15 = [v9 sectionSlotCostInfo];
  [v14 setSectionSlotCostInfo:v15];

  [v14 setRespectMinMaxLimit:{objc_msgSend(v9, "respectsWidgetSlotsLimit")}];
  [v9 slotsLimit];
  [v14 setSlotsLimit:?];
  [v14 setAllowSectionTitles:{objc_msgSend(v9, "allowSectionTitles")}];
  [v9 bannerSlotCost];
  [v14 setBannerSlotCost:?];
  if ([v14 hasBannerSlotCost])
  {
    [v14 bannerSlotCost];
    v17 = v16;
    [v14 slotsLimit];
    [v14 setSlotsLimit:v18 - v17];
  }

  v19 = [NTNewsTodayResultsExplicitAllocationAggregator alloc];
  v20 = [v8 news_core_ConfigurationManager];
  v21 = [MEMORY[0x277CBEAA8] date];
  v39 = [(NTNewsTodayResultsExplicitAllocationAggregator *)v19 initWithConfigurationManager:v20 feedPersonalizer:0 filterDate:v21];

  v22 = [NTNewsTodayResultsContentFillAggregator alloc];
  [v9 minHeadlineScale];
  v24 = v23;
  [v9 maxHeadlineScale];
  v26 = [(NTNewsTodayResultsContentFillAggregator *)v22 initWithAggregator:v39 minHeadlineScale:v24 maxHeadlineScale:v25];
  v27 = [(NTNewsTodayResultsContentFillAggregator *)v26 aggregateSections:v12 itemsBySectionDescriptor:v13 budgetInfo:v14 todayData:0];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __91__NTTodayResultsSource_placeholderResultsWithFetchDescriptor_contentContext_operationInfo___block_invoke_3;
  v40[3] = &unk_279982B00;
  v41 = v27;
  v42 = v9;
  v28 = v9;
  v29 = v27;
  [v12 fc_orderedSetByTransformingWithBlock:v40];
  v30 = v38 = v13;
  v37 = v12;
  v31 = [NTTodayResults alloc];
  [v7 sourceIdentifier];
  v33 = v32 = v8;
  v34 = [MEMORY[0x277CBEAA8] distantFuture];
  [v29 headlineScale];
  v35 = [(NTTodayResults *)v31 initWithSourceIdentifier:v33 sections:v30 expirationDate:v34 headlineScale:?];

  return v35;
}

void __91__NTTodayResultsSource_placeholderResultsWithFetchDescriptor_contentContext_operationInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = 10;
  do
  {
    v3 = [NTHeadline alloc];
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    v6 = [(NTHeadline *)v3 initWithIdentifier:v5];

    v7 = [@"—" fc_stringByMultiplyingStringByCount:500];
    [(NTHeadline *)v6 setTitle:v7];

    v8 = [@"—" fc_stringByMultiplyingStringByCount:8];
    [(NTHeadline *)v6 setSourceName:v8];

    [(NTHeadline *)v6 setNeedsPlaceholderThumbnail:1];
    [v9 addObject:v6];

    --v2;
  }

  while (v2);
}

NTSection *__91__NTTodayResultsSource_placeholderResultsWithFetchDescriptor_contentContext_operationInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) aggregatedItemsBySectionDescriptor];
  v5 = [v4 objectForKeyedSubscript:v3];

  if ([v5 count])
  {
    if ([*(a1 + 40) allowSectionTitles])
    {
      if ([*(a1 + 40) preferCompactSectionName])
      {
        [v3 compactName];
      }

      else
      {
        [v3 name];
      }
      v7 = ;
    }

    else
    {
      v7 = 0;
    }

    v24 = v7;
    v8 = objc_opt_new();
    [v8 setName:v7];
    v9 = [v3 nameColorLight];
    [v8 setNameColorLight:v9];

    v10 = [v3 nameColorDark];
    [v8 setNameColorDark:v10];

    v11 = [v3 actionTitle];
    [v8 setActionTitle:v11];

    v12 = [v3 actionURL];
    [v8 setActionURL:v12];

    v22 = [NTSection alloc];
    v21 = [v3 identifier];
    v13 = [v3 subidentifier];
    v14 = [v3 actionTitle];
    v15 = [v3 actionURL];
    v16 = [v3 personalizationFeatureID];
    v17 = [MEMORY[0x277CBEB70] orderedSetWithArray:v5];
    [v3 referralBarName];
    v18 = v23 = v5;
    v19 = [v3 backingTagID];
    v6 = [(NTSection *)v22 initWithIdentifier:v21 subidentifier:v13 actionTitle:v14 actionURL:v15 personalizationFeatureID:v16 items:v17 rankingFeedback:0 displayDescriptor:v8 referralBarName:v18 backingTagID:v19];

    v5 = v23;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_fetchLatestResultsWithOperationInfo:(id)a3 prefetchedContent:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = NTSharedLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    [v8 slotsLimit];
    *buf = 134217984;
    v27 = v12;
    _os_log_impl(&dword_25BF21000, v11, OS_LOG_TYPE_INFO, "Requesting %f slots from headline results source", buf, 0xCu);
  }

  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResultsSource _fetchLatestResultsWithOperationInfo:prefetchedContent:completion:];
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else if (v9)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResultsSource _fetchLatestResultsWithOperationInfo:prefetchedContent:completion:];
  }

LABEL_8:
  v13 = [(NTTodayResultsSource *)self fetchDescriptor];
  v14 = [(NTTodayResultsSource *)self contentContext];
  [v13 fetchOperationClass];
  v15 = objc_opt_new();
  [v15 setContentContext:v14];
  v16 = [(NTTodayResultsSource *)self feedPersonalizerFactory];
  [v15 setFeedPersonalizerFactory:v16];

  v17 = [(NTTodayResultsSource *)self articleExposureRegistry];
  [v15 setArticleExposureRegistry:v17];

  v18 = [(NTTodayResultsSource *)self groupingService];
  [v15 setGroupingService:v18];

  v19 = [(NTTodayResultsSource *)self todayBannerValidator];
  [v15 setTodayBannerValidator:v19];

  [v15 setPrefetchedContent:v10];
  [v15 setOperationInfo:v8];
  [v15 setQualityOfService:{objc_msgSend(v8, "qualityOfService")}];
  [v15 setRelativePriority:FCInferRelativePriorityFromQualityOfService()];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__NTTodayResultsSource__fetchLatestResultsWithOperationInfo_prefetchedContent_completion___block_invoke;
  v23[3] = &unk_279982B50;
  v23[4] = self;
  v24 = v14;
  v25 = v9;
  v20 = v9;
  v21 = v14;
  [v15 setHeadlineResultCompletionHandler:v23];
  [v15 start];

  v22 = *MEMORY[0x277D85DE8];
}

void __90__NTTodayResultsSource__fetchLatestResultsWithOperationInfo_prefetchedContent_completion___block_invoke(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = NTSharedLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v36 = v9;
    _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_INFO, "Fetched %{public}@", buf, 0xCu);
  }

  if (v12)
  {
    v14 = NTSharedLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v12;
      _os_log_impl(&dword_25BF21000, v14, OS_LOG_TYPE_ERROR, "Attempt to fetch completed with error %@", buf, 0xCu);
    }
  }

  if (([a1[4] hasFlushingBeenEnabled] & 1) == 0)
  {
    v15 = NTSharedLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25BF21000, v15, OS_LOG_TYPE_INFO, "Enabling flushing with zero interest threshold", buf, 2u);
    }

    v16 = [a1[5] assetManager];
    [v16 enableFlushingWithFlushingThreshold:1];
    [a1[5] enableFlushingWithFlushingThreshold:0 exceptForFlusher:v16];
    [a1[4] setFlushingHasBeenEnabled:1];
  }

  v17 = [v9 assetsHoldToken];
  v18 = [v9 recordsHoldToken];
  [a1[4] setLatestResultRecordsHoldToken:v18];

  v19 = dispatch_time(0, 20000000);
  v20 = FCDispatchQueueForQualityOfService();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __90__NTTodayResultsSource__fetchLatestResultsWithOperationInfo_prefetchedContent_completion___block_invoke_57;
  v28[3] = &unk_279982B28;
  v21 = a1[6];
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v17;
  v34 = v21;
  v22 = v17;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  v26 = v9;
  dispatch_after(v19, v20, v28);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fetchDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedPersonalizerFactory", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "privateDataStorage", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithFetchDescriptor:feedPersonalizerFactory:groupingService:todayBannerValidator:articleExposureRegistry:privateDataStorage:contentContext:fetchQueue:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fetchQueue", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)placeholderResultsWithOperationInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)placeholderResultsWithFetchDescriptor:contentContext:operationInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fetchDescriptor != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)placeholderResultsWithFetchDescriptor:contentContext:operationInfo:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)placeholderResultsWithFetchDescriptor:contentContext:operationInfo:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fetchLatestResultsWithOperationInfo:prefetchedContent:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fetchLatestResultsWithOperationInfo:prefetchedContent:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end