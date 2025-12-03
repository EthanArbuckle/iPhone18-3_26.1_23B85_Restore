@interface NTNewsTodayResultOperation
+ (void)initialize;
- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after;
- (BOOL)validateOperation;
- (NTNewsTodayResultOperation)init;
- (id)_firstRefreshDateDefaultsKey;
- (id)_supplementTodayData:(id)data forResults:(id)results;
- (id)dictionaryFromColorGradient:(id)gradient;
- (id)gradientBackgroundPairFromLightGradientDict:(id)dict darkGradientDict:(id)gradientDict;
- (id)todayBannerWithTodayConfig:(id)config todayData:(id)data;
- (unint64_t)convertBannerBackgroundMethodToNTBannerBackgroundType:(int)type;
- (unint64_t)convertBannerImageMethodToNTBannerImageType:(int)type;
- (void)_assembleQueueDescriptorsWithConfig:(id)config allowOnlyWatchEligibleSections:(BOOL)sections respectsWidgetVisibleSectionsLimit:(BOOL)limit personalizationTreatment:(id)treatment aggregateStore:(id)store appConfiguration:(id)configuration todayData:(id)data completion:(id)self0;
- (void)_fetchTodayResultsWithFetchHelper:(id)helper aggregator:(id)aggregator budgetInfo:(id)info appConfiguration:(id)configuration feedPersonalizer:(id)personalizer todayData:(id)data todayBanner:(id)banner completion:(id)self0;
- (void)_finalizeTodayResultsWithSectionDescriptors:(id)descriptors catchUpOperationResultsBySectionDescriptor:(id)descriptor appConfiguration:(id)configuration feedPersonalizer:(id)personalizer todayData:(id)data todayBanner:(id)banner debugInspection:(id)inspection completion:(id)self0;
- (void)_registerForYouFetchWithForYouFetchInfo:(id)info;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)validateOperation;
@end

@implementation NTNewsTodayResultOperation

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:@"tempID"];
  }
}

- (NTNewsTodayResultOperation)init
{
  v6.receiver = self;
  v6.super_class = NTNewsTodayResultOperation;
  v2 = [(NTTodayResultOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    articleIDsToExclude = v2->_articleIDsToExclude;
    v2->_articleIDsToExclude = v3;
  }

  return v2;
}

- (BOOL)validateOperation
{
  contentContext = [(NTTodayResultOperation *)self contentContext];

  if (!contentContext && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation validateOperation];
  }

  feedPersonalizerFactory = [(NTTodayResultOperation *)self feedPersonalizerFactory];

  if (!feedPersonalizerFactory && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation validateOperation];
  }

  if (contentContext)
  {
    v5 = feedPersonalizerFactory == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  operationInfo = [(NTTodayResultOperation *)self operationInfo];
  if (!operationInfo && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation validateOperation];
  }

  if (operationInfo)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  request = [operationInfo request];
  identifier = [request identifier];

  if (!identifier && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation validateOperation];
  }

  if (!identifier)
  {
    v8 = 0;
  }

  prefetchedContent = [(NTTodayResultOperation *)self prefetchedContent];
  if (!prefetchedContent && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation validateOperation];
  }

  if (prefetchedContent)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (identifier)
  {
    todayConfigsByRequestID = [prefetchedContent todayConfigsByRequestID];
    v14 = [todayConfigsByRequestID objectForKeyedSubscript:identifier];

    if (!v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [NTNewsTodayResultOperation validateOperation];
    }

    if (!v14)
    {
      v12 = 0;
    }
  }

  headlineResultCompletionHandler = [(NTTodayResultOperation *)self headlineResultCompletionHandler];

  if (!headlineResultCompletionHandler && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation validateOperation];
  }

  if (headlineResultCompletionHandler)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)prepareOperation
{
  operationInfo = [(NTTodayResultOperation *)self operationInfo];
  request = [operationInfo request];
  identifier = [request identifier];

  prefetchedContent = [(NTTodayResultOperation *)self prefetchedContent];
  todayConfigsByRequestID = [prefetchedContent todayConfigsByRequestID];
  v8 = [todayConfigsByRequestID objectForKeyedSubscript:identifier];
  [(NTNewsTodayResultOperation *)self setTodayConfig:v8];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _firstRefreshDateDefaultsKey = [(NTNewsTodayResultOperation *)self _firstRefreshDateDefaultsKey];
  v11 = [standardUserDefaults objectForKey:_firstRefreshDateDefaultsKey];

  if (!v11)
  {
    v12 = NTSharedLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_25BF21000, v12, OS_LOG_TYPE_INFO, "no existing date for first refresh. setting to current date", v15, 2u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    _firstRefreshDateDefaultsKey2 = [(NTNewsTodayResultOperation *)self _firstRefreshDateDefaultsKey];
    [standardUserDefaults setObject:date forKey:_firstRefreshDateDefaultsKey2];
  }
}

- (void)performOperation
{
  operationInfo = [(NTTodayResultOperation *)self operationInfo];
  [operationInfo slotsLimit];
  if (v4 == 0.0)
  {
    v5 = [NTTodayResults alloc];
    v6 = objc_opt_new();
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [(NTTodayResults *)v5 initWithSourceIdentifier:@"news" sections:v6 expirationDate:date headlineScale:1.0];
    [(NTNewsTodayResultOperation *)self setResultTodayResults:v8];

    [(FCOperation *)self finishedPerformingOperationWithError:0];
  }

  else
  {
    v9 = v4;
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy__0;
    v71 = __Block_byref_object_dispose__0;
    v72 = 0;
    v10 = objc_alloc(MEMORY[0x277D31068]);
    v11 = FCURLForTodayPersonalizationUpdateStore();
    v12 = [v10 initWithFileURL:v11];

    v13 = NTSharedLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_DEFAULT, "fetching personalization updates", buf, 2u);
    }

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __46__NTNewsTodayResultOperation_performOperation__block_invoke;
    v65[3] = &unk_2799830A0;
    v65[4] = &v67;
    [v12 readSyncWithAccessor:v65];
    v14 = NTSharedLog();
    v50 = operationInfo;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25BF21000, v14, OS_LOG_TYPE_DEFAULT, "proceeding, having fetched personalization updates", buf, 2u);
    }

    contentContext = [(NTTodayResultOperation *)self contentContext];
    appConfigurationManager = [contentContext appConfigurationManager];
    prefetchedContent = [(NTTodayResultOperation *)self prefetchedContent];
    todayConfig = [(NTNewsTodayResultOperation *)self todayConfig];
    appConfiguration = [prefetchedContent appConfiguration];
    privateData = [prefetchedContent privateData];
    personalizationTreatment = [appConfiguration personalizationTreatment];
    derivedPersonalizationData = [privateData derivedPersonalizationData];
    v21 = derivedPersonalizationData;
    if (derivedPersonalizationData)
    {
      v48 = derivedPersonalizationData;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277D30F40]);
      v48 = [v22 initWithAggregates:MEMORY[0x277CBEC10] scoringType:0 decayRate:0.0];
    }

    v23 = [objc_alloc(MEMORY[0x277D31298]) initWithGenerator:v48];
    [v23 processTodayPersonalizationUpdates:v68[5] withConfigurableValues:personalizationTreatment];
    v24 = [todayConfig copy];
    feldsparID = [appConfigurationManager feldsparID];
    currentTreatment = [appConfiguration currentTreatment];
    segmentSetIDs = [appConfigurationManager segmentSetIDs];
    v40 = v24;
    v41 = prefetchedContent;
    v42 = v12;
    treatmentIDs = [appConfigurationManager treatmentIDs];
    onboardingVersion = [privateData onboardingVersion];
    v26 = NTSharedLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25BF21000, v26, OS_LOG_TYPE_DEFAULT, "assembling queue descriptors", buf, 2u);
    }

    allowOnlyWatchEligibleSections = [v50 allowOnlyWatchEligibleSections];
    respectsWidgetVisibleSectionsPerQueueLimit = [v50 respectsWidgetVisibleSectionsPerQueueLimit];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __46__NTNewsTodayResultOperation_performOperation__block_invoke_36;
    v51[3] = &unk_279983118;
    v51[4] = self;
    v27 = v23;
    v52 = v27;
    v36 = appConfigurationManager;
    v53 = v36;
    v28 = privateData;
    v54 = v28;
    v29 = appConfiguration;
    v55 = v29;
    v30 = todayConfig;
    v56 = v30;
    v57 = v50;
    v64 = v9;
    v47 = contentContext;
    v58 = v47;
    v31 = feldsparID;
    v59 = v31;
    v32 = currentTreatment;
    v60 = v32;
    v33 = segmentSetIDs;
    v61 = v33;
    v34 = treatmentIDs;
    v62 = v34;
    v35 = onboardingVersion;
    v63 = v35;
    [(NTNewsTodayResultOperation *)self _assembleQueueDescriptorsWithConfig:v30 allowOnlyWatchEligibleSections:allowOnlyWatchEligibleSections respectsWidgetVisibleSectionsLimit:respectsWidgetVisibleSectionsPerQueueLimit personalizationTreatment:personalizationTreatment aggregateStore:v27 appConfiguration:v29 todayData:v28 completion:v51];

    _Block_object_dispose(&v67, 8);
    operationInfo = v50;
  }
}

void __46__NTNewsTodayResultOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = NTSharedLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25BF21000, v6, OS_LOG_TYPE_DEFAULT, "fetched personalization updates", v7, 2u);
  }
}

void __46__NTNewsTodayResultOperation_performOperation__block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NTSharedLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25BF21000, v7, OS_LOG_TYPE_DEFAULT, "assembled queue descriptors", buf, 2u);
  }

  if (v6)
  {
    [*(a1 + 32) finishedPerformingOperationWithError:v6];
  }

  else
  {
    v8 = [[NTNewsTodayResultsSourceFetchHelper alloc] initWithSectionQueueDescriptors:v5];
    v9 = [*(a1 + 32) feedPersonalizerFactory];
    v10 = [v9 newFeedPersonalizerWithAggregateStore:*(a1 + 40) appConfigurationManager:*(a1 + 48) todayPrivateData:*(a1 + 56)];

    v11 = [objc_alloc(MEMORY[0x277D311E0]) initWithAppConfiguration:*(a1 + 64)];
    v12 = [objc_alloc(MEMORY[0x277D310E0]) initWithFeedPersonalizer:v10 functionProvider:v11];
    v13 = NTSharedLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_DEFAULT, "preparing personalizer for use", buf, 2u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__NTNewsTodayResultOperation_performOperation__block_invoke_40;
    v16[3] = &unk_2799830F0;
    v16[4] = *(a1 + 32);
    v17 = *(a1 + 72);
    v18 = *(a1 + 56);
    v19 = *(a1 + 80);
    v29 = *(a1 + 136);
    v20 = *(a1 + 88);
    v21 = v12;
    v22 = v8;
    v23 = *(a1 + 64);
    v24 = *(a1 + 96);
    v25 = *(a1 + 104);
    v26 = *(a1 + 112);
    v27 = *(a1 + 120);
    v28 = *(a1 + 128);
    v14 = v8;
    v15 = v12;
    [v15 prepareForUseWithCompletionHandler:v16];
  }
}

void __46__NTNewsTodayResultOperation_performOperation__block_invoke_40(uint64_t a1)
{
  v2 = NTSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25BF21000, v2, OS_LOG_TYPE_DEFAULT, "prepared personalizer for use", buf, 2u);
  }

  v3 = [*(a1 + 32) todayBannerWithTodayConfig:*(a1 + 40) todayData:*(a1 + 48)];
  v4 = objc_opt_new();
  v5 = [*(a1 + 56) sectionSlotCostInfo];
  [v4 setSectionSlotCostInfo:v5];

  [v4 setRespectMinMaxLimit:{objc_msgSend(*(a1 + 56), "respectsWidgetSlotsLimit")}];
  [v4 setSlotsLimit:*(a1 + 136)];
  [v4 setAllowSectionTitles:{objc_msgSend(*(a1 + 56), "allowSectionTitles")}];
  v25 = v3;
  [v4 setHasBannerSlotCost:v3 != 0];
  v6 = [*(a1 + 32) operationInfo];
  [v6 bannerSlotCost];
  [v4 setBannerSlotCost:?];

  if ([v4 hasBannerSlotCost])
  {
    [v4 bannerSlotCost];
    v8 = v7;
    [v4 slotsLimit];
    [v4 setSlotsLimit:v9 - v8];
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [NTNewsTodayResultsExplicitAllocationAggregator alloc];
  v12 = [*(a1 + 64) configurationManager];
  v13 = [(NTNewsTodayResultsExplicitAllocationAggregator *)v11 initWithConfigurationManager:v12 feedPersonalizer:*(a1 + 72) filterDate:v10];

  v14 = [NTNewsTodayResultsContentFillAggregator alloc];
  [*(a1 + 56) minHeadlineScale];
  v16 = v15;
  [*(a1 + 56) maxHeadlineScale];
  v18 = [(NTNewsTodayResultsContentFillAggregator *)v14 initWithAggregator:v13 minHeadlineScale:v16 maxHeadlineScale:v17];
  v19 = NTSharedLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25BF21000, v19, OS_LOG_TYPE_DEFAULT, "fetching today results", buf, 2u);
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  v23 = *(a1 + 72);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46__NTNewsTodayResultOperation_performOperation__block_invoke_44;
  v26[3] = &unk_2799830C8;
  v26[4] = v20;
  v24 = *(a1 + 48);
  v27 = *(a1 + 56);
  v28 = *(a1 + 88);
  v29 = *(a1 + 40);
  v30 = *(a1 + 96);
  v31 = *(a1 + 104);
  v32 = *(a1 + 112);
  v33 = *(a1 + 120);
  v34 = *(a1 + 64);
  v35 = *(a1 + 128);
  v36 = *(a1 + 48);
  [v20 _fetchTodayResultsWithFetchHelper:v21 aggregator:v18 budgetInfo:v4 appConfiguration:v22 feedPersonalizer:v23 todayData:v24 todayBanner:v25 completion:v26];
}

void __46__NTNewsTodayResultOperation_performOperation__block_invoke_44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = NTSharedLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25BF21000, v10, OS_LOG_TYPE_DEFAULT, "fetched today results", buf, 2u);
  }

  [*(a1 + 32) setResultTodayResults:v9];
  [*(a1 + 32) setResultAssetHandlesByAssetID:v8];

  v11 = objc_opt_new();
  v12 = [v9 sections];

  v13 = [v12 firstObject];

  if ([*(a1 + 40) fetchWidgetConfig])
  {
    v14 = objc_opt_new();
    [v14 setMinimumArticleExposureDurationToBePreseen:{objc_msgSend(*(a1 + 48), "widgetMinimumArticleExposureDurationToBePreseenInMilliseconds")}];
    [v14 setMinimumNumberOfTimesPreseenToBeSeen:{objc_msgSend(*(a1 + 48), "widgetMinimumNumberOfTimesPreseenToBeSeen")}];
    [*(a1 + 48) prerollLoadingTimeout];
    [v14 setPrerollLoadingTimeout:?];
    v15 = [*(a1 + 48) externalAnalyticsConfigurations];
    [v14 setExternalAnalyticsConfigurations:v15];

    v16 = [v13 backgroundColorLight];
    [v14 setBackgroundColorLight:v16];

    v48 = v13;
    v17 = [v13 backgroundColorDark];
    [v14 setBackgroundColorDark:v17];

    v18 = [*(a1 + 56) audioIndicatorColor];
    [v14 setAudioIndicatorColor:v18];

    [v14 setContentPrefetchEnabled:{objc_msgSend(*(a1 + 48), "widgetContentPrefetchEnabled")}];
    [v14 setWidgetBackgroundInteractionEnabled:{objc_msgSend(*(a1 + 48), "widgetBackgroundInteractionEnabled")}];
    v19 = [*(a1 + 32) operationInfo];
    v20 = [v19 widgetSize];

    v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v22 = [*(a1 + 32) _firstRefreshDateDefaultsKey];
    v23 = [v21 objectForKey:v22];

    v24 = *(a1 + 48);
    v49 = v7;
    if (v20 == 1)
    {
      v25 = [v24 smallWidgetSystemHoneymoonDuration];
    }

    else
    {
      v25 = [v24 widgetSystemHoneymoonDuration];
    }

    v26 = v25;
    v27 = [v23 dateByAddingTimeInterval:v25];
    v28 = [MEMORY[0x277CBEAA8] date];
    v29 = [v28 fc_isEarlierThan:v27];
    v30 = NTSharedLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 67109890;
      v51 = v29;
      v52 = 2114;
      v53 = v23;
      v54 = 2048;
      v55 = v26;
      v56 = 2114;
      v57 = v27;
      _os_log_impl(&dword_25BF21000, v30, OS_LOG_TYPE_INFO, "in honeymoon: %d, determined from first refresh date of %{public}@, honeymoon duration of %lld, and honeymoon end of %{public}@", buf, 0x26u);
    }

    v31 = *(a1 + 48);
    if (v29)
    {
      if (v20 == 1)
      {
        [v14 setWidgetSystemReloadInterval:{objc_msgSend(v31, "smallWidgetSystemReloadIntervalHoneymoon")}];
        v32 = [*(a1 + 48) smallWidgetSystemReloadJitterMaxHoneymoon];
      }

      else
      {
        [v14 setWidgetSystemReloadInterval:{objc_msgSend(v31, "widgetSystemReloadIntervalHoneymoon")}];
        v32 = [*(a1 + 48) widgetSystemReloadJitterMaxHoneymoon];
      }
    }

    else if (v20 == 1)
    {
      [v14 setWidgetSystemReloadInterval:{objc_msgSend(v31, "smallWidgetSystemReloadInterval")}];
      v32 = [*(a1 + 48) smallWidgetSystemReloadJitterMax];
    }

    else
    {
      [v14 setWidgetSystemReloadInterval:{objc_msgSend(v31, "widgetSystemReloadInterval")}];
      v32 = [*(a1 + 48) widgetSystemReloadJitterMax];
    }

    v13 = v48;
    [v14 setWidgetSystemReloadJitterMax:v32];
    [v11 setWidgetConfig:v14];

    v7 = v49;
  }

  v33 = *(a1 + 64);
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v35 = NewsCoreSensitiveUserDefaults();
    v36 = *MEMORY[0x277D30D50];
    v37 = [v35 stringForKey:*MEMORY[0x277D30D50]];
    v38 = v37;
    if (v37)
    {
      v34 = v37;
    }

    else
    {
      v39 = [MEMORY[0x277CCAD78] UUID];
      v34 = [v39 UUIDString];

      [v35 setObject:v34 forKey:v36];
    }
  }

  [v11 setTodaySourceIdentifier:@"news"];
  [v11 setAppConfigTreatmentID:*(a1 + 72)];
  [v11 setUserSegmentationSegmentSetIDs:*(a1 + 80)];
  [v11 setUserSegmentationTreatmentIDs:*(a1 + 88)];
  v40 = [MEMORY[0x277CBEAF8] currentLocale];
  [v11 setLocale:v40];

  [v11 setUserID:v34];
  v41 = [*(a1 + 96) contentStoreFrontID];
  [v11 setContentStoreFrontID:v41];

  v42 = [*(a1 + 96) contentEnvironment];
  [v11 setContentEnvironment:v42];

  v43 = [MEMORY[0x277D31140] sharedNetworkReachability];
  [v11 setWifiReachable:{objc_msgSend(v43, "isNetworkReachableViaWiFi")}];
  [v11 setCellularRadioAccessTechnology:{objc_msgSend(v43, "cellularRadioAccessTechnology")}];
  [v11 setReachabilityStatus:{objc_msgSend(v43, "reachabilityStatus")}];
  [v11 setOnboardingVersion:{objc_msgSend(*(a1 + 104), "integerValue")}];
  v44 = [*(a1 + 112) bundleSubscription];
  [v11 setIsBundleSubscriber:{objc_msgSend(v44, "subscriptionState") < 2}];

  v45 = [*(a1 + 112) bundleSubscription];
  v46 = [v45 bundlePurchaseID];
  [v11 setBundleIap:v46];

  [*(a1 + 32) setResultFetchInfo:v11];
  [*(a1 + 32) finishedPerformingOperationWithError:v7];

  v47 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  headlineResultCompletionHandler = [(NTTodayResultOperation *)self headlineResultCompletionHandler];
  resultTodayResults = [(NTNewsTodayResultOperation *)self resultTodayResults];
  resultAssetHandlesByAssetID = [(NTNewsTodayResultOperation *)self resultAssetHandlesByAssetID];
  resultFetchInfo = [(NTNewsTodayResultOperation *)self resultFetchInfo];
  headlineResultCompletionHandler[2](headlineResultCompletionHandler, resultTodayResults, resultAssetHandlesByAssetID, resultFetchInfo, errorCopy);
}

- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277D309C8]])
  {
    goto LABEL_7;
  }

  code = [errorCopy code];

  if (code != 21)
  {
    v12 = 0;
    goto LABEL_10;
  }

  userInfo = [errorCopy userInfo];
  domain = [userInfo objectForKeyedSubscript:*MEMORY[0x277D309D0]];

  if (domain)
  {
    v10 = [domain fc_arrayOfObjectsPassingTest:&__block_literal_global_58];
    v11 = [v10 count];
    v12 = v11 != 0;
    if (v11)
    {
      articleIDsToExclude = [(NTNewsTodayResultOperation *)self articleIDsToExclude];
      v14 = [MEMORY[0x277CBEB98] setWithArray:v10];
      [articleIDsToExclude unionSet:v14];

      *after = objc_opt_new();
    }
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

LABEL_10:
  return v12;
}

- (void)_assembleQueueDescriptorsWithConfig:(id)config allowOnlyWatchEligibleSections:(BOOL)sections respectsWidgetVisibleSectionsLimit:(BOOL)limit personalizationTreatment:(id)treatment aggregateStore:(id)store appConfiguration:(id)configuration todayData:(id)data completion:(id)self0
{
  v69 = *MEMORY[0x277D85DE8];
  configCopy = config;
  treatmentCopy = treatment;
  storeCopy = store;
  configurationCopy = configuration;
  dataCopy = data;
  completionCopy = completion;
  if (!configCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:];
    if (treatmentCopy)
    {
      goto LABEL_6;
    }
  }

  else if (treatmentCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:];
  }

LABEL_6:
  if (!storeCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:];
  }

  v48 = treatmentCopy;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:];
  }

  v43 = configurationCopy;
  v46 = completionCopy;
  v47 = storeCopy;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:];
  }

  v18 = NewsCoreUserDefaults();
  v19 = [v18 BOOLForKey:*MEMORY[0x277D30C78]];

  v20 = MEMORY[0x277CBEA60];
  v49 = configCopy;
  todayQueueConfigs = [configCopy todayQueueConfigs];
  v22 = [v20 arrayWithArray:todayQueueConfigs];

  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v64 = 0u;
  obj = v22;
  v23 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v65;
    v26 = *MEMORY[0x277D30D70];
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v65 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v64 + 1) + 8 * i);
        todaySectionConfigs = [v28 todaySectionConfigs];
        v30 = [todaySectionConfigs sortedArrayUsingComparator:&__block_literal_global_77];
        v31 = [v30 mutableCopy];

        v32 = NewsCoreUserDefaults();
        v33 = [v32 integerForKey:v26];

        if (v33 == 2)
        {
          [v31 fc_removeObjectsPassingTest:&__block_literal_global_84];
        }

        else if (v33 == 1)
        {
          v34 = [v31 indexOfObjectPassingTest:&__block_literal_global_81];
          if (v34 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v35 = v34;
            v36 = [v31 objectAtIndexedSubscript:v34];
            [v31 removeObjectAtIndex:v35];
            [v31 insertObject:v36 atIndex:0];
          }
        }

        v37 = objc_opt_new();
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __210__NTNewsTodayResultOperation__assembleQueueDescriptorsWithConfig_allowOnlyWatchEligibleSections_respectsWidgetVisibleSectionsLimit_personalizationTreatment_aggregateStore_appConfiguration_todayData_completion___block_invoke_4;
        v59[3] = &unk_2799831C0;
        v62 = v19;
        sectionsCopy = sections;
        v60 = dataCopy;
        v61 = v37;
        v38 = v37;
        [v31 enumerateObjectsUsingBlock:v59];
        [v31 removeObjectsAtIndexes:v38];
        [v28 setTodaySectionConfigs:v31];
      }

      v24 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v24);
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __210__NTNewsTodayResultOperation__assembleQueueDescriptorsWithConfig_allowOnlyWatchEligibleSections_respectsWidgetVisibleSectionsLimit_personalizationTreatment_aggregateStore_appConfiguration_todayData_completion___block_invoke_5;
  v53[3] = &unk_2799831E8;
  v54 = v43;
  v55 = dataCopy;
  v57 = v19;
  limitCopy = limit;
  selfCopy = self;
  v39 = dataCopy;
  v40 = v43;
  v41 = [obj fc_arrayByTransformingWithBlock:v53];
  (v46)[2](v46, v41, 0);

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __210__NTNewsTodayResultOperation__assembleQueueDescriptorsWithConfig_allowOnlyWatchEligibleSections_respectsWidgetVisibleSectionsLimit_personalizationTreatment_aggregateStore_appConfiguration_todayData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(a2, "fallbackOrder")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 fallbackOrder];

  v9 = [v7 numberWithUnsignedLongLong:v8];
  v10 = [v6 compare:v9];

  return v10;
}

void __210__NTNewsTodayResultOperation__assembleQueueDescriptorsWithConfig_allowOnlyWatchEligibleSections_respectsWidgetVisibleSectionsLimit_personalizationTreatment_aggregateStore_appConfiguration_todayData_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 mutingTagID];
  if (*(a1 + 48) == 1 && ![v8 shownInFavoritesOnlyMode] || *(a1 + 49) == 1 && !objc_msgSend(v8, "glanceable") || v5 && (objc_msgSend(*(a1 + 32), "mutedTagIDs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v5), v6, v7))
  {
    [*(a1 + 40) addIndex:a3];
  }
}

NTQueueConfigSectionQueueDescriptor *__210__NTNewsTodayResultOperation__assembleQueueDescriptorsWithConfig_allowOnlyWatchEligibleSections_respectsWidgetVisibleSectionsLimit_personalizationTreatment_aggregateStore_appConfiguration_todayData_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NTQueueConfigSectionQueueDescriptor alloc];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v9 = [*(a1 + 48) groupingService];
  v10 = [(NTQueueConfigSectionQueueDescriptor *)v4 initWithQueueConfig:v3 appConfiguration:v5 todayData:v6 inFavoritesOnlyMode:v7 respectsWidgetVisibleSectionsLimit:v8 groupingService:v9];

  return v10;
}

- (void)_fetchTodayResultsWithFetchHelper:(id)helper aggregator:(id)aggregator budgetInfo:(id)info appConfiguration:(id)configuration feedPersonalizer:(id)personalizer todayData:(id)data todayBanner:(id)banner completion:(id)self0
{
  v63 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  aggregatorCopy = aggregator;
  infoCopy = info;
  configurationCopy = configuration;
  personalizerCopy = personalizer;
  dataCopy = data;
  bannerCopy = banner;
  completionCopy = completion;
  if (!helperCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _fetchTodayResultsWithFetchHelper:aggregator:budgetInfo:appConfiguration:feedPersonalizer:todayData:todayBanner:completion:];
  }

  v45 = dataCopy;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _fetchTodayResultsWithFetchHelper:aggregator:budgetInfo:appConfiguration:feedPersonalizer:todayData:todayBanner:completion:];
  }

  v43 = bannerCopy;
  v47 = aggregatorCopy;
  sectionDescriptorsAtHeadsOfQueues = [helperCopy sectionDescriptorsAtHeadsOfQueues];
  v24 = NTSharedLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    v26 = [sectionDescriptorsAtHeadsOfQueues fc_arrayByTransformingWithBlock:&__block_literal_global_92];
    *buf = 138543618;
    v60 = shortOperationDescription;
    v61 = 2114;
    v62 = v26;
    _os_log_impl(&dword_25BF21000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch today results with sections: %{public}@", buf, 0x16u);
  }

  v44 = helperCopy;

  if ([sectionDescriptorsAtHeadsOfQueues count])
  {
    prefetchedContent = [(NTTodayResultOperation *)self prefetchedContent];
    distantFuture = objc_opt_new();
    [distantFuture setAppConfiguration:configurationCopy];
    contentContext = [(NTTodayResultOperation *)self contentContext];
    [distantFuture setContentContext:contentContext];

    [distantFuture setFeedPersonalizer:personalizerCopy];
    v42 = prefetchedContent;
    prefetchedHeldRecordsByType = [prefetchedContent prefetchedHeldRecordsByType];
    [distantFuture setTodayConfigOperationHeldRecordsByType:prefetchedHeldRecordsByType];

    [sectionDescriptorsAtHeadsOfQueues makeObjectsPerformSelector:sel_configureCatchUpOperationWithFetchRequest_ withObject:distantFuture];
    articleIDsToExclude = [(NTNewsTodayResultOperation *)self articleIDsToExclude];
    [distantFuture addArticleIDsToExclude:articleIDsToExclude];

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __153__NTNewsTodayResultOperation__fetchTodayResultsWithFetchHelper_aggregator_budgetInfo_appConfiguration_feedPersonalizer_todayData_todayBanner_completion___block_invoke_96;
    v48[3] = &unk_2799832E8;
    v58 = completionCopy;
    v49 = sectionDescriptorsAtHeadsOfQueues;
    selfCopy = self;
    v32 = configurationCopy;
    v33 = v45;
    v51 = v45;
    v52 = v47;
    v34 = infoCopy;
    v53 = infoCopy;
    v54 = v32;
    v55 = personalizerCopy;
    v35 = v43;
    v56 = v43;
    v36 = completionCopy;
    v37 = v44;
    v57 = v44;
    [distantFuture setCatchUpCompletionHandler:v48];
    [(FCOperation *)self associateChildOperation:distantFuture];
    [distantFuture start];

    v38 = v58;
  }

  else
  {
    v39 = [NTTodayResults alloc];
    v40 = objc_opt_new();
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v42 = v40;
    v38 = [(NTTodayResults *)v39 initWithSourceIdentifier:@"news" sections:v40 expirationDate:distantFuture headlineScale:1.0];
    (*(completionCopy + 2))(completionCopy, v38, MEMORY[0x277CBEC10], 0);
    v32 = configurationCopy;
    v33 = v45;
    v34 = infoCopy;
    v36 = completionCopy;
    v35 = v43;
    v37 = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __153__NTNewsTodayResultOperation__fetchTodayResultsWithFetchHelper_aggregator_budgetInfo_appConfiguration_feedPersonalizer_todayData_todayBanner_completion___block_invoke_96(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 104) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __153__NTNewsTodayResultOperation__fetchTodayResultsWithFetchHelper_aggregator_budgetInfo_appConfiguration_feedPersonalizer_todayData_todayBanner_completion___block_invoke_2;
    v58[3] = &unk_279983230;
    v8 = v5;
    v9 = *(a1 + 40);
    v59 = v8;
    v60 = v9;
    v10 = [v7 fc_dictionaryWithValueBlock:v58];
    if ([v8 isForYouEnabled])
    {
      v11 = [v8 forYouFetchInfo];
      if (v11)
      {
        [*(a1 + 40) _registerForYouFetchWithForYouFetchInfo:v11];
      }
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = [v10 allValues];
    v15 = [v12 _supplementTodayData:v13 forResults:v14];

    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    v18 = [v10 fc_dictionaryByTransformingValuesWithBlock:&__block_literal_global_101];
    v19 = [v16 aggregateSections:v17 itemsBySectionDescriptor:v18 budgetInfo:*(a1 + 64) todayData:v15];

    v20 = [v19 aggregatedItemsBySectionDescriptor];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __153__NTNewsTodayResultOperation__fetchTodayResultsWithFetchHelper_aggregator_budgetInfo_appConfiguration_feedPersonalizer_todayData_todayBanner_completion___block_invoke_2_102;
    v56[3] = &unk_279983278;
    v21 = v10;
    v57 = v21;
    v53 = [v20 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:v56];

    v22 = [v19 unusedSectionDescriptors];
    v23 = [v22 count];
    v24 = NTSharedLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        [*(a1 + 40) shortOperationDescription];
        v26 = v51 = v15;
        v27 = v21;
        v28 = [v22 count];
        v29 = [v22 fc_arrayByTransformingWithBlock:&__block_literal_global_114];
        *buf = 138543874;
        v62 = v26;
        v63 = 2048;
        v64 = v28;
        v21 = v27;
        v65 = 2114;
        v66 = v29;
        _os_log_impl(&dword_25BF21000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ did fetch today results with %lu unused sections, will retry with sections removed: %{public}@", buf, 0x20u);

        v15 = v51;
      }

      [*(a1 + 96) removeSectionDescriptors:v22];
      v30 = *(a1 + 88);
      [*(a1 + 40) _fetchTodayResultsWithFetchHelper:*(a1 + 96) aggregator:*(a1 + 56) budgetInfo:*(a1 + 64) appConfiguration:*(a1 + 72) feedPersonalizer:*(a1 + 80) todayData:*(a1 + 48) todayBanner:v30 completion:*(a1 + 104)];
    }

    else
    {
      if (v25)
      {
        v31 = [*(a1 + 40) shortOperationDescription];
        *buf = 138543362;
        v62 = v31;
        _os_log_impl(&dword_25BF21000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ did fetch today results with no unused sections", buf, 0xCu);
      }

      v32 = [v53 allKeys];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __153__NTNewsTodayResultOperation__fetchTodayResultsWithFetchHelper_aggregator_budgetInfo_appConfiguration_feedPersonalizer_todayData_todayBanner_completion___block_invoke_104;
      v54[3] = &unk_2799832A0;
      v55 = *(a1 + 32);
      v33 = [v32 sortedArrayUsingComparator:v54];

      [v19 headlineScale];
      [*(a1 + 40) setResultHeadlineScaleFactor:?];
      if (FCIsWidgetDebugInspectionEnabled())
      {
        v34 = [*(a1 + 48) recentlyReadHistoryItems];
        v35 = [v34 allValues];
        v50 = [v35 fc_arrayByTransformingWithBlock:&__block_literal_global_109];

        v36 = [*(a1 + 48) recentlySeenHistoryItems];
        v47 = [v36 fc_arrayByTransformingWithBlock:&__block_literal_global_111];

        v37 = [NTWidgetDebugInspection alloc];
        v48 = [v19 debugInspectionsBySectionDescriptor];
        [v48 allValues];
        v46 = v52 = v15;
        [*(a1 + 48) mutedTagIDs];
        v38 = v49 = v21;
        v39 = [v38 allObjects];
        [*(a1 + 48) rankedAllSubscribedTagIDs];
        v41 = v40 = v33;
        v42 = [(NTWidgetDebugInspection *)v37 initWithSections:v46 mutedTagIDs:v39 previouslyReadArticleIDs:v50 previouslySeenArticleIDs:v47 rankedSubscribedTagIDs:v41];

        v33 = v40;
        v21 = v49;

        v15 = v52;
      }

      else
      {
        v42 = 0;
      }

      if (v33)
      {
        v43 = v33;
      }

      else
      {
        v43 = MEMORY[0x277CBEBF8];
      }

      if (v53)
      {
        v44 = v53;
      }

      else
      {
        v44 = MEMORY[0x277CBEC10];
      }

      [*(a1 + 40) _finalizeTodayResultsWithSectionDescriptors:v43 catchUpOperationResultsBySectionDescriptor:v44 appConfiguration:*(a1 + 72) feedPersonalizer:*(a1 + 80) todayData:*(a1 + 48) todayBanner:*(a1 + 88) debugInspection:v42 completion:*(a1 + 104)];
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

id __153__NTNewsTodayResultOperation__fetchTodayResultsWithFetchHelper_aggregator_budgetInfo_appConfiguration_feedPersonalizer_todayData_todayBanner_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 assembleResultsWithCatchUpOperation:*(a1 + 32)];
  v5 = NTSharedLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) shortOperationDescription];
    v7 = [v4 items];
    v8 = [v7 count];
    v9 = [v3 identifier];
    v12 = 138543874;
    v13 = v6;
    v14 = 2048;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_25BF21000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Unpacking %ld results from catchUpOperation for section with identifier %{public}@.", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

id __153__NTNewsTodayResultOperation__fetchTodayResultsWithFetchHelper_aggregator_budgetInfo_appConfiguration_feedPersonalizer_todayData_todayBanner_completion___block_invoke_2_102(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:a2];
  v7 = [v6 copyWithItems:v5];

  return v7;
}

uint64_t __153__NTNewsTodayResultOperation__fetchTodayResultsWithFetchHelper_aggregator_budgetInfo_appConfiguration_feedPersonalizer_todayData_todayBanner_completion___block_invoke_104(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
  }
}

- (void)_registerForYouFetchWithForYouFetchInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _registerForYouFetchWithForYouFetchInfo:];
  }

  forYouFetchInfo = [(NTNewsTodayResultOperation *)self forYouFetchInfo];
  v6 = forYouFetchInfo;
  if (forYouFetchInfo)
  {
    if ([forYouFetchInfo attemptedCachedOnly])
    {
      attemptedCachedOnly = [infoCopy attemptedCachedOnly];
    }

    else
    {
      attemptedCachedOnly = 0;
    }

    v9 = [NTCatchUpOperationForYouFetchInfo alloc];
    feedContextByFeedID = [infoCopy feedContextByFeedID];
    v8 = [(NTCatchUpOperationForYouFetchInfo *)v9 initWithAttemptedCachedOnly:attemptedCachedOnly feedContextByFeedID:feedContextByFeedID];
  }

  else
  {
    v8 = infoCopy;
  }

  [(NTNewsTodayResultOperation *)self setForYouFetchInfo:v8];
}

- (void)_finalizeTodayResultsWithSectionDescriptors:(id)descriptors catchUpOperationResultsBySectionDescriptor:(id)descriptor appConfiguration:(id)configuration feedPersonalizer:(id)personalizer todayData:(id)data todayBanner:(id)banner debugInspection:(id)inspection completion:(id)self0
{
  descriptorsCopy = descriptors;
  descriptorCopy = descriptor;
  configurationCopy = configuration;
  personalizerCopy = personalizer;
  dataCopy = data;
  bannerCopy = banner;
  inspectionCopy = inspection;
  completionCopy = completion;
  if (!descriptorsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:];
    if (descriptorCopy)
    {
      goto LABEL_6;
    }
  }

  else if (descriptorCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:];
  }

LABEL_6:
  v22 = [descriptorsCopy count];
  v23 = [descriptorCopy nf_objectsForKeysWithoutMarker:descriptorsCopy];
  v24 = [v23 count];

  if (v22 != v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:];
    if (configurationCopy)
    {
      goto LABEL_11;
    }
  }

  else if (configurationCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:];
  }

LABEL_11:
  if (!personalizerCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:];
    if (completionCopy)
    {
      goto LABEL_16;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultOperation _finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:];
  }

LABEL_16:
  operationInfo = [(NTTodayResultOperation *)self operationInfo];
  v26 = objc_opt_new();
  [v26 setCatchUpOperationResultsBySectionDescriptor:descriptorCopy];
  v35 = configurationCopy;
  [v26 setAppConfiguration:configurationCopy];
  contentContext = [(NTTodayResultOperation *)self contentContext];
  [v26 setContentContext:contentContext];

  [v26 setFeedPersonalizer:personalizerCopy];
  [v26 setTodayData:dataCopy];
  forYouFetchInfo = [(NTNewsTodayResultOperation *)self forYouFetchInfo];
  [v26 setForYouFetchInfo:forYouFetchInfo];

  [v26 setOperationInfo:operationInfo];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __200__NTNewsTodayResultOperation__finalizeTodayResultsWithSectionDescriptors_catchUpOperationResultsBySectionDescriptor_appConfiguration_feedPersonalizer_todayData_todayBanner_debugInspection_completion___block_invoke;
  v38[3] = &unk_279983338;
  v44 = inspectionCopy;
  v45 = completionCopy;
  v39 = descriptorsCopy;
  v40 = descriptorCopy;
  v41 = operationInfo;
  selfCopy = self;
  v43 = bannerCopy;
  v29 = inspectionCopy;
  v30 = bannerCopy;
  v31 = operationInfo;
  v32 = descriptorCopy;
  v33 = descriptorsCopy;
  v34 = completionCopy;
  [v26 setTodayItemCompletion:v38];
  [(FCOperation *)self associateChildOperation:v26];
  [v26 start];
}

void __200__NTNewsTodayResultOperation__finalizeTodayResultsWithSectionDescriptors_catchUpOperationResultsBySectionDescriptor_appConfiguration_feedPersonalizer_todayData_todayBanner_debugInspection_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v16 = objc_opt_new();
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__0;
    v34 = __Block_byref_object_dispose__0;
    v35 = [MEMORY[0x277CBEAA8] distantFuture];
    v17 = *(a1 + 32);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __200__NTNewsTodayResultOperation__finalizeTodayResultsWithSectionDescriptors_catchUpOperationResultsBySectionDescriptor_appConfiguration_feedPersonalizer_todayData_todayBanner_debugInspection_completion___block_invoke_2;
    v23[3] = &unk_279983310;
    v24 = v11;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v18 = v16;
    v27 = v18;
    v28 = &v30;
    v29 = &v36;
    [v17 enumerateObjectsUsingBlock:v23];
    v19 = [NTTodayResults alloc];
    v20 = *(v37 + 6);
    v21 = v31[5];
    [*(a1 + 56) resultHeadlineScaleFactor];
    v22 = [(NTTodayResults *)v19 initWithSourceIdentifier:@"news" sections:v18 promotionCriterion:v20 expirationDate:v21 headlineScale:v14 assetsHoldToken:v13 recordsHoldToken:*(a1 + 64) banner:*(a1 + 72) debugInspection:?];
    (*(*(a1 + 80) + 16))();

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }
}

void __200__NTNewsTodayResultOperation__finalizeTodayResultsWithSectionDescriptors_catchUpOperationResultsBySectionDescriptor_appConfiguration_feedPersonalizer_todayData_todayBanner_debugInspection_completion___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a1[4] objectForKeyedSubscript:v5];
  v7 = [a1[5] objectForKeyedSubscript:v5];
  if ([v6 count])
  {
    v55 = v6;
    v53 = a1;
    v51 = a3;
    if ([a1[6] allowSectionTitles])
    {
      v8 = [a1[6] preferCompactSectionName];
      v9 = v7;
      if (v8)
      {
        [v5 compactName];
      }

      else
      {
        [v5 name];
      }
      v10 = ;
    }

    else
    {
      v9 = v7;
      v10 = 0;
    }

    v11 = objc_opt_new();
    v52 = v10;
    [v11 setName:v10];
    v12 = [v5 nameColorLight];
    [v11 setNameColorLight:v12];

    v13 = [v5 nameColorDark];
    [v11 setNameColorDark:v13];

    v14 = [v5 actionTitle];
    [v11 setActionTitle:v14];

    v15 = [v5 actionURL];
    [v11 setActionURL:v15];

    v16 = [v5 nameActionURL];
    [v11 setNameActionURL:v16];

    v17 = [v5 backgroundColorLight];
    [v11 setBackgroundColorLight:v17];

    v18 = [v5 backgroundColorDark];
    [v11 setBackgroundColorDark:v18];

    v48 = [NTSection alloc];
    v19 = [v5 identifier];
    v20 = [v5 subidentifier];
    v21 = [v5 actionTitle];
    v22 = [v5 actionURL];
    v23 = [v5 personalizationFeatureID];
    v54 = v9;
    v24 = [v9 rankingFeedback];
    v25 = [v5 referralBarName];
    v26 = [v5 backingTagID];
    v50 = v11;
    v27 = [(NTSection *)v48 initWithIdentifier:v19 subidentifier:v20 actionTitle:v21 actionURL:v22 personalizationFeatureID:v23 items:v55 rankingFeedback:v24 displayDescriptor:v11 referralBarName:v25 backingTagID:v26];

    v49 = v27;
    [v53[7] addObject:v27];
    v28 = [MEMORY[0x277CBEAA8] distantFuture];
    v29 = [MEMORY[0x277CBEAA8] distantFuture];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v30 = [v54 items];
    v31 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v57;
      do
      {
        v34 = 0;
        v35 = v29;
        v36 = v28;
        do
        {
          if (*v57 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v56 + 1) + 8 * v34);
          v38 = [v37 cacheCutoffTimeRelativeDate];
          v28 = [v36 earlierDate:v38];

          v39 = [v37 cacheExpirationDate];
          v29 = [v35 earlierDate:v39];

          ++v34;
          v35 = v29;
          v36 = v28;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v32);
    }

    v40 = [v28 dateByAddingTimeInterval:{objc_msgSend(v5, "cachedResultCutoffTime")}];
    v41 = [v29 earlierDate:v40];
    v42 = [*(*(v53[8] + 1) + 40) earlierDate:v41];
    v43 = *(v53[8] + 1);
    v44 = *(v43 + 40);
    *(v43 + 40) = v42;

    if (!v51)
    {
      *(*(v53[9] + 1) + 24) = [v5 promotionCriterion];
      if (NFInternalBuild())
      {
        v45 = NewsCoreUserDefaults();
        v46 = [v45 integerForKey:@"widget_promotion_criterion"];

        if (v46)
        {
          *(*(v53[9] + 1) + 24) = v46;
        }
      }
    }

    v7 = v54;
    v6 = v55;
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)todayBannerWithTodayConfig:(id)config todayData:(id)data
{
  v56[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  operationInfo = [(NTTodayResultOperation *)self operationInfo];
  widgetSize = [operationInfo widgetSize];

  if (widgetSize != 4)
  {
    goto LABEL_8;
  }

  todayConfig = [(NTNewsTodayResultOperation *)self todayConfig];
  if (([todayConfig hasWidgetBannerConfig] & 1) == 0)
  {

    goto LABEL_8;
  }

  todayBannerValidator = [(NTTodayResultOperation *)self todayBannerValidator];
  todayConfig2 = [(NTNewsTodayResultOperation *)self todayConfig];
  widgetBannerConfig = [todayConfig2 widgetBannerConfig];
  v12 = [todayBannerValidator validateWith:dataCopy bannerConfig:widgetBannerConfig];

  if (!v12)
  {
LABEL_8:
    v21 = 0;
    goto LABEL_9;
  }

  todayConfig3 = [(NTNewsTodayResultOperation *)self todayConfig];
  widgetBannerConfig2 = [todayConfig3 widgetBannerConfig];

  if ([widgetBannerConfig2 hasGradientBackgroundPair])
  {
    gradientBackgroundPair = [widgetBannerConfig2 gradientBackgroundPair];
    light = [gradientBackgroundPair light];
    v17 = [(NTNewsTodayResultOperation *)self dictionaryFromColorGradient:light];

    gradientBackgroundPair2 = [widgetBannerConfig2 gradientBackgroundPair];
    dark = [gradientBackgroundPair2 dark];
    v20 = [(NTNewsTodayResultOperation *)self dictionaryFromColorGradient:dark];
  }

  else
  {
    v17 = [&unk_286D9EF88 objectForKeyedSubscript:*MEMORY[0x277D30690]];
    v20 = [&unk_286D9EF88 objectForKeyedSubscript:*MEMORY[0x277D30688]];
  }

  v51 = [(NTNewsTodayResultOperation *)self gradientBackgroundPairFromLightGradientDict:v17 darkGradientDict:v20];

  if ([widgetBannerConfig2 hasSolidBackgroundColorPair])
  {
    v24 = MEMORY[0x277D30EE8];
    solidBackgroundColorPair = [widgetBannerConfig2 solidBackgroundColorPair];
    light2 = [solidBackgroundColorPair light];
    v27 = [v24 colorWithHexString:light2];

    v28 = MEMORY[0x277D30EE8];
    solidBackgroundColorPair2 = [widgetBannerConfig2 solidBackgroundColorPair];
    dark2 = [solidBackgroundColorPair2 dark];
    v31 = [v28 colorWithHexString:dark2];

    v56[0] = v27;
    v56[1] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  }

  else
  {
    v32 = 0;
  }

  v47 = [NTTodayBanner alloc];
  identifier = [widgetBannerConfig2 identifier];
  hasTitle = [widgetBannerConfig2 hasTitle];
  if (hasTitle)
  {
    title = [widgetBannerConfig2 title];
  }

  else
  {
    title = @"Title";
  }

  hasBody = [widgetBannerConfig2 hasBody];
  if (hasBody)
  {
    body = [widgetBannerConfig2 body];
  }

  else
  {
    body = @"Body";
  }

  hasActionURL = [widgetBannerConfig2 hasActionURL];
  v34 = MEMORY[0x277CBEBC0];
  v46 = hasActionURL;
  if (hasActionURL)
  {
    actionURL = [widgetBannerConfig2 actionURL];
    v53 = [v34 URLWithString:?];
  }

  else
  {
    v53 = [MEMORY[0x277CBEBC0] URLWithString:@"http://news.apple.com"];
    actionURL = v53;
  }

  hasActionButtonText = [widgetBannerConfig2 hasActionButtonText];
  if (hasActionButtonText)
  {
    actionButtonText = [widgetBannerConfig2 actionButtonText];
  }

  else
  {
    actionButtonText = 0;
  }

  if ([widgetBannerConfig2 hasImageMethod])
  {
    v36 = -[NTNewsTodayResultOperation convertBannerImageMethodToNTBannerImageType:](self, "convertBannerImageMethodToNTBannerImageType:", [widgetBannerConfig2 imageMethod]);
  }

  else
  {
    v36 = 3;
  }

  hasImageURL = [widgetBannerConfig2 hasImageURL];
  if (hasImageURL)
  {
    v38 = MEMORY[0x277CBEBC0];
    imageURL = [widgetBannerConfig2 imageURL];
    v39 = [v38 URLWithString:?];
  }

  else
  {
    v39 = 0;
  }

  if ([widgetBannerConfig2 hasBackgroundMethod])
  {
    v40 = -[NTNewsTodayResultOperation convertBannerBackgroundMethodToNTBannerBackgroundType:](self, "convertBannerBackgroundMethodToNTBannerBackgroundType:", [widgetBannerConfig2 backgroundMethod]);
  }

  else
  {
    v40 = 2;
  }

  v41 = v32;
  if (![widgetBannerConfig2 hasSolidBackgroundColorPair])
  {
    v32 = 0;
  }

  numberOfAppearancesToHide = 0;
  if ([widgetBannerConfig2 hasNumberOfAppearancesToHide])
  {
    numberOfAppearancesToHide = [widgetBannerConfig2 numberOfAppearancesToHide];
  }

  if ([widgetBannerConfig2 hasNumberOfTapsToHide])
  {
    numberOfTapsToHide = [widgetBannerConfig2 numberOfTapsToHide];
  }

  else
  {
    numberOfTapsToHide = 0;
  }

  v21 = [(NTTodayBanner *)v47 initWithIdentifier:identifier title:title body:body actionURL:v53 actionButtonText:actionButtonText imageMethod:v36 imageURL:v39 backgroundMethod:v40 solidBackgroundColorPair:v32 gradientBackgroundPair:v51 numberOfAppearancesToHide:numberOfAppearancesToHide numberOfTapsToHide:numberOfTapsToHide];
  if (hasImageURL)
  {
  }

  if (hasActionButtonText)
  {
  }

  if (v46)
  {
  }

  if (hasBody)
  {
  }

  if (hasTitle)
  {
  }

LABEL_9:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (unint64_t)convertBannerImageMethodToNTBannerImageType:(int)type
{
  v3 = 1;
  if (type == 2)
  {
    v3 = 2;
  }

  if (type == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)convertBannerBackgroundMethodToNTBannerBackgroundType:(int)type
{
  if (type == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)gradientBackgroundPairFromLightGradientDict:(id)dict darkGradientDict:(id)gradientDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D30EF0];
  gradientDictCopy = gradientDict;
  v7 = [v5 colorGradientWithConfigDict:dict];
  v8 = [MEMORY[0x277D30EF0] colorGradientWithConfigDict:gradientDictCopy];

  v12[0] = v7;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)dictionaryFromColorGradient:(id)gradient
{
  v44[2] = *MEMORY[0x277D85DE8];
  gradientCopy = gradient;
  v43[0] = @"x";
  v4 = MEMORY[0x277CCABB0];
  startPoint = [gradientCopy startPoint];
  [startPoint x];
  v6 = [v4 numberWithDouble:?];
  v43[1] = @"y";
  v44[0] = v6;
  v7 = MEMORY[0x277CCABB0];
  startPoint2 = [gradientCopy startPoint];
  [startPoint2 y];
  v9 = [v7 numberWithDouble:?];
  v44[1] = v9;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

  v41[0] = @"x";
  v10 = MEMORY[0x277CCABB0];
  endPoint = [gradientCopy endPoint];
  [endPoint x];
  v12 = [v10 numberWithDouble:?];
  v41[1] = @"y";
  v42[0] = v12;
  v13 = MEMORY[0x277CCABB0];
  endPoint2 = [gradientCopy endPoint];
  [endPoint2 y];
  v15 = [v13 numberWithDouble:?];
  v42[1] = v15;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = gradientCopy;
  colorStops = [gradientCopy colorStops];
  v18 = [colorStops countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(colorStops);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        v38[0] = @"color";
        color = [v22 color];
        v38[1] = @"location";
        v39[0] = color;
        v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v22, "location")}];
        v39[1] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

        [array addObject:v25];
      }

      v19 = [colorStops countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  v36[0] = @"startPoint";
  v36[1] = @"endPoint";
  v37[0] = v30;
  v37[1] = v29;
  v36[2] = @"colorStops";
  v37[2] = array;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_firstRefreshDateDefaultsKey
{
  operationInfo = [(NTTodayResultOperation *)self operationInfo];
  widgetSize = [operationInfo widgetSize];

  v5 = @"first_widget_refresh_date";
  if (widgetSize == 1)
  {
    v6 = MEMORY[0x277CCACA8];
    operationInfo2 = [(NTTodayResultOperation *)self operationInfo];
    request = [operationInfo2 request];
    identifier = [request identifier];
    operationInfo3 = [(NTTodayResultOperation *)self operationInfo];
    v5 = [v6 stringWithFormat:@"%@_%@-%d", @"first_widget_refresh_date", identifier, objc_msgSend(operationInfo3, "widgetSize")];
  }

  return v5;
}

- (id)_supplementTodayData:(id)data forResults:(id)results
{
  v102 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  resultsCopy = results;
  articleExposureRegistry = [(NTTodayResultOperation *)self articleExposureRegistry];

  if (articleExposureRegistry)
  {
    selfCopy = self;
    v75 = dataCopy;
    v9 = [MEMORY[0x277CBEB58] set];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v68 = resultsCopy;
    v10 = resultsCopy;
    v11 = [v10 countByEnumeratingWithState:&v88 objects:v101 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v89;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v89 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v88 + 1) + 8 * i);
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          items = [v15 items];
          v17 = [items countByEnumeratingWithState:&v84 objects:v100 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v85;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v85 != v19)
                {
                  objc_enumerationMutation(items);
                }

                identifier = [*(*(&v84 + 1) + 8 * j) identifier];
                [v9 addObject:identifier];
              }

              v18 = [items countByEnumeratingWithState:&v84 objects:v100 count:16];
            }

            while (v18);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v12);
    }

    articleExposureRegistry2 = [(NTTodayResultOperation *)selfCopy articleExposureRegistry];
    allObjects = [v9 allObjects];
    v24 = [articleExposureRegistry2 exposuresForItemIDs:allObjects];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    recentlySeenHistoryItems = [v75 recentlySeenHistoryItems];
    v27 = [recentlySeenHistoryItems countByEnumeratingWithState:&v80 objects:v99 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v81;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v81 != v29)
          {
            objc_enumerationMutation(recentlySeenHistoryItems);
          }

          v31 = *(*(&v80 + 1) + 8 * k);
          articleID = [v31 articleID];
          [dictionary setObject:v31 forKeyedSubscript:articleID];
        }

        v28 = [recentlySeenHistoryItems countByEnumeratingWithState:&v80 objects:v99 count:16];
      }

      while (v28);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v33 = v24;
    v34 = [v33 countByEnumeratingWithState:&v76 objects:v98 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v77;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v77 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v76 + 1) + 8 * m);
          itemID = [v38 itemID];
          v40 = [dictionary objectForKey:itemID];

          if (!v40)
          {
            v41 = objc_alloc_init(MEMORY[0x277D354F0]);
            itemID2 = [v38 itemID];
            [v41 setArticleID:itemID2];

            firstExposedAt = [v38 firstExposedAt];
            pbDate = [firstExposedAt pbDate];
            [v41 setFirstSeenDate:pbDate];

            [v41 setMaxVersionSeen:{objc_msgSend(v38, "maxExposedVersion")}];
            maxExposedVersionFirstExposedAt = [v38 maxExposedVersionFirstExposedAt];
            pbDate2 = [maxExposedVersionFirstExposedAt pbDate];
            [v41 setFirstSeenDateOfMaxVersionSeen:pbDate2];

            itemID3 = [v38 itemID];
            [dictionary setObject:v41 forKey:itemID3];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v76 objects:v98 count:16];
      }

      while (v35);
    }

    v48 = [dictionary count];
    recentlySeenHistoryItems2 = [v75 recentlySeenHistoryItems];
    v50 = [recentlySeenHistoryItems2 count];

    if (v48 > v50)
    {
      v51 = NTSharedLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        shortOperationDescription = [(FCOperation *)selfCopy shortOperationDescription];
        v53 = [dictionary count];
        recentlySeenHistoryItems3 = [v75 recentlySeenHistoryItems];
        v55 = [recentlySeenHistoryItems3 count];
        *buf = 138543618;
        v95 = shortOperationDescription;
        v96 = 2048;
        v97 = v53 - v55;
        _os_log_impl(&dword_25BF21000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ supplemented seen items with %lu additions from the article exposure registry", buf, 0x16u);
      }
    }

    v73 = [NTTodayPrivateData alloc];
    derivedPersonalizationData = [v75 derivedPersonalizationData];
    localNewsTagID = [v75 localNewsTagID];
    mutedTagIDs = [v75 mutedTagIDs];
    autoFavoriteTagIDs = [v75 autoFavoriteTagIDs];
    purchasedTagIDs = [v75 purchasedTagIDs];
    groupableTagIDs = [v75 groupableTagIDs];
    rankedAllSubscribedTagIDs = [v75 rankedAllSubscribedTagIDs];
    rankedAllSubscriptionDates = [v75 rankedAllSubscriptionDates];
    allValues = [dictionary allValues];
    recentlyReadHistoryItems = [v75 recentlyReadHistoryItems];
    onboardingVersion = [v75 onboardingVersion];
    bundleSubscription = [v75 bundleSubscription];
    userEmbeddingData = [v75 userEmbeddingData];
    v74 = [(NTTodayPrivateData *)v73 initWithDerivedPersonalizationData:derivedPersonalizationData localNewsTagID:localNewsTagID mutedTagIDs:mutedTagIDs autoFavoriteTagIDs:autoFavoriteTagIDs purchasedTagIDs:purchasedTagIDs groupableTagIDs:groupableTagIDs rankedAllSubscribedTagIDs:rankedAllSubscribedTagIDs rankedAllSubscriptionDates:rankedAllSubscriptionDates recentlySeenHistoryItems:allValues recentlyReadHistoryItems:recentlyReadHistoryItems onboardingVersion:onboardingVersion bundleSubscription:bundleSubscription userEmbeddingData:userEmbeddingData];

    dataCopy = v75;
    resultsCopy = v68;
  }

  else
  {
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __62__NTNewsTodayResultOperation__supplementTodayData_forResults___block_invoke;
    v92[3] = &unk_279983388;
    v92[4] = self;
    v93 = dataCopy;
    v74 = __62__NTNewsTodayResultOperation__supplementTodayData_forResults___block_invoke(v92);
  }

  v60 = *MEMORY[0x277D85DE8];

  return v74;
}

id __62__NTNewsTodayResultOperation__supplementTodayData_forResults___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NTSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortOperationDescription];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25BF21000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ will not supplement seen items because we have no article exposure registry", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)validateOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"News today result operation must have a completion handler"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todayConfig", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "personalizationTreatment", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "aggregateStore", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appConfiguration", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_assembleQueueDescriptorsWithConfig:allowOnlyWatchEligibleSections:respectsWidgetVisibleSectionsLimit:personalizationTreatment:aggregateStore:appConfiguration:todayData:completion:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fetchTodayResultsWithFetchHelper:aggregator:budgetInfo:appConfiguration:feedPersonalizer:todayData:todayBanner:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fetchHelper", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fetchTodayResultsWithFetchHelper:aggregator:budgetInfo:appConfiguration:feedPersonalizer:todayData:todayBanner:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerForYouFetchWithForYouFetchInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "forYouFetchInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptors", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "catchUpOperationResultsBySectionDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptors.count == [catchUpOperationResultsBySectionDescriptor nf_objectsForKeysWithoutMarker:sectionDescriptors].count", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appConfiguration", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedPersonalizer", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeTodayResultsWithSectionDescriptors:catchUpOperationResultsBySectionDescriptor:appConfiguration:feedPersonalizer:todayData:todayBanner:debugInspection:completion:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end