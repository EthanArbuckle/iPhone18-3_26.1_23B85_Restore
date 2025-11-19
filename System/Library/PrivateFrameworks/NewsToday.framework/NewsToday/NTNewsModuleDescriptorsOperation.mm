@interface NTNewsModuleDescriptorsOperation
- (BOOL)validateOperation;
- (void)_continueOperationWithTodayData:(id)a3;
- (void)_donateTodayConfigDataToNewsd:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTNewsModuleDescriptorsOperation

- (BOOL)validateOperation
{
  v3 = [(NTTodayModuleDescriptorsOperation *)self contentContext];

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsModuleDescriptorsOperation validateOperation];
  }

  v4 = [(NTTodayModuleDescriptorsOperation *)self privateDataStorage];

  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsModuleDescriptorsOperation validateOperation];
  }

  v5 = [(NTTodayModuleDescriptorsOperation *)self descriptorsCompletion];

  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsModuleDescriptorsOperation validateOperation];
  }

  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6 && v5 != 0;
}

- (void)performOperation
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(FCOperation *)self shortOperationDescription];
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_25BF21000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch private data", buf, 0xCu);
  }

  v6 = [(NTTodayModuleDescriptorsOperation *)self privateDataStorage];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__NTNewsModuleDescriptorsOperation_performOperation__block_invoke;
  v8[3] = &unk_279983A10;
  v8[4] = self;
  [v6 readPrivateDataSyncWithAccessor:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __52__NTNewsModuleDescriptorsOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    v8 = [v3 bundleSubscription];
    if ([v8 isSubscribed])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [v3 rankedAllSubscribedTagIDs];
    v11 = [v10 count];
    v12 = [v3 localNewsTagID];
    v13 = v12;
    v14 = @"<nil>";
    *v16 = 138544130;
    *&v16[4] = v7;
    if (v12)
    {
      v14 = v12;
    }

    *&v16[12] = 2114;
    *&v16[14] = v9;
    v17 = 2048;
    v18 = v11;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_25BF21000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did fetch private data, isBundleSubscribed=%{public}@, followedTagIDs=%lu, localNewsTagID=%{public}@", v16, 0x2Au);
  }

  [*(a1 + 32) _continueOperationWithTodayData:{v3, *v16}];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_continueOperationWithTodayData:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v4 = [(NTTodayModuleDescriptorsOperation *)self contentRequest];
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x3032000000;
  v79[3] = __Block_byref_object_copy__1;
  v79[4] = __Block_byref_object_dispose__1;
  v80 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x3032000000;
  v77[3] = __Block_byref_object_copy__1;
  v77[4] = __Block_byref_object_dispose__1;
  v78 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3032000000;
  v75[3] = __Block_byref_object_copy__1;
  v75[4] = __Block_byref_object_dispose__1;
  v76 = 0;
  v5 = [(NTTodayModuleDescriptorsOperation *)self contentContext];
  v6 = [v5 appConfigurationManager];
  v7 = [v6 possiblyUnfetchedAppConfiguration];
  v8 = [v7 userSegmentationInWidgetAllowed];

  v9 = NewsCoreUserDefaults();
  v10 = [v9 BOOLForKey:*MEMORY[0x277D30D18]];

  LODWORD(v9) = v10 & v8;
  v11 = dispatch_group_create();
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    dispatch_group_enter(v11);
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = [v49 bundleSubscription];
    v14 = [v13 isSubscribed];
    v15 = @"free";
    if (v14)
    {
      v15 = @"premium";
    }

    v48 = v15;

    [v12 setObject:v48 forKeyedSubscript:@"configType"];
    v16 = [v6 possiblyUnfetchedAppConfiguration];
    v17 = [v16 articleEmbeddingsEnabled];

    if (v17)
    {
      [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"articleEmbeddingsEnabled"];
    }

    v18 = [v6 possiblyUnfetchedAppConfiguration];
    v19 = [v18 widgetFetchOfTodayFeedLiteConfigEnabled];

    if (v19 && ![v4 moduleDescriptorType])
    {
      v43 = [v49 bundleSubscription];
      v44 = [v43 unprotectedSubscriptionState] < 2;

      v20 = v44;
    }

    else
    {
      v20 = 0;
    }

    v21 = *MEMORY[0x277D30B40];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v20;
      v46 = [(FCOperation *)self shortOperationDescription];
      v22 = @" not";
      if (v20)
      {
        v22 = &stru_286D90198;
      }

      v45 = v22;
      v23 = @"NO";
      if (v19)
      {
        v23 = @"YES";
      }

      v24 = v23;
      v25 = [v4 moduleDescriptorType];
      v26 = [v49 bundleSubscription];
      v27 = [v26 unprotectedSubscriptionState];
      *buf = 138544386;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = v45;
      *&buf[22] = 2114;
      v83 = v24;
      LOWORD(v84) = 1024;
      *(&v84 + 2) = v25;
      HIWORD(v84) = 2048;
      v85 = v27;
      _os_log_impl(&dword_25BF21000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ will%{public}@ fetch todayLiteConfig, enabledInConfig=%{public}@, descriptorType=%d, subscriptionState=%lu", buf, 0x30u);

      v20 = v47;
    }

    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke;
    v69[3] = &unk_279983A60;
    v69[4] = self;
    v72 = v75;
    v73 = v79;
    v74 = v77;
    v70 = v11;
    v71 = v6;
    [v71 fetchAppWidgetConfigurationWithTodayLiteConfig:v20 additionalFields:v12 completion:v69];
  }

  else
  {
    dispatch_group_enter(v11);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2;
    aBlock[3] = &unk_279983A38;
    v67 = v75;
    v68 = v79;
    v66 = v11;
    v28 = _Block_copy(aBlock);
    if ([(NTTodayModuleDescriptorsOperation *)self requireRefreshedAppConfig])
    {
      [(NTNewsModuleDescriptorsOperation *)self qualityOfService];
      v29 = FCDispatchQueueForQualityOfService();
      [v6 refreshAppConfigurationIfNeededWithCompletionQueue:v29 refreshCompletion:v28];
    }

    else
    {
      [v6 fetchAppConfigurationIfNeededWithCompletion:v28];
    }

    v12 = v66;
  }

  v30 = [v4 tagID];
  if (v30)
  {
    v31 = [v4 tagID];
    v81 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v83 = __Block_byref_object_copy__1;
  v84 = __Block_byref_object_dispose__1;
  v85 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__1;
  v63[4] = __Block_byref_object_dispose__1;
  v64 = 0;
  v33 = [(NTTodayModuleDescriptorsOperation *)self contentContext];
  v34 = [v33 tagController];

  dispatch_group_enter(v11);
  v35 = [(NTNewsModuleDescriptorsOperation *)self qualityOfService];
  [(NTNewsModuleDescriptorsOperation *)self qualityOfService];
  v36 = FCDispatchQueueForQualityOfService();
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_3;
  v59[3] = &unk_279983A88;
  v61 = buf;
  v62 = v63;
  v37 = v11;
  v60 = v37;
  [v34 fetchTagsForTagIDs:v32 qualityOfService:v35 callbackQueue:v36 completionHandler:v59];

  [(NTNewsModuleDescriptorsOperation *)self qualityOfService];
  v38 = FCDispatchQueueForQualityOfService();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_4;
  block[3] = &unk_279983B78;
  block[4] = self;
  v51 = v49;
  v52 = v5;
  v53 = v4;
  v54 = v75;
  v55 = buf;
  v56 = v63;
  v57 = v79;
  v58 = v77;
  v39 = v4;
  v40 = v5;
  v41 = v49;
  dispatch_group_notify(v37, v38, block);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v77, 8);

  _Block_object_dispose(v79, 8);
  v42 = *MEMORY[0x277D85DE8];
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = v13;
    v16 = [v14 shortOperationDescription];
    *buf = 138543618;
    v29 = v16;
    v30 = 2048;
    v31 = [v11 length];
    _os_log_impl(&dword_25BF21000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched todayLiteConfig of length %lu", buf, 0x16u);
  }

  [*(a1 + 32) _donateTodayConfigDataToNewsd:v11];
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v12;
  v19 = v12;

  if (v19)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_84;
    v25[3] = &unk_279983A38;
    v27 = *(a1 + 56);
    v20 = *(a1 + 48);
    v26 = *(a1 + 40);
    [v20 fetchAppConfigurationIfNeededWithCompletion:v25];
  }

  else
  {
    v21 = [v9 copy];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 40));
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = a1[4];

  dispatch_group_leave(v12);
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_4(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    [v2 finishedPerformingOperationWithError:?];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [MEMORY[0x277CBEB18] array];
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = __Block_byref_object_copy__1;
    v55[4] = __Block_byref_object_dispose__1;
    v56 = 0;
    v7 = NTSharedLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [*(a1 + 40) purchasedTagIDs];
      v12 = [*(a1 + 40) bundleSubscription];
      *buf = 138543874;
      v58 = v10;
      v59 = 2114;
      v60 = v11;
      v61 = 2114;
      v62 = v12;
      _os_log_impl(&dword_25BF21000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ created access checker with %{public}@ and %{public}@", buf, 0x20u);
    }

    v13 = objc_alloc(MEMORY[0x277D311B8]);
    v14 = *(a1 + 40);
    v15 = [*(a1 + 48) configurationManager];
    v16 = [v13 initWithPurchaseProvider:v14 bundleSubscriptionProvider:v14 configurationManager:v15];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_91;
    aBlock[3] = &unk_279983AB0;
    aBlock[4] = *(a1 + 32);
    v17 = v16;
    v51 = v17;
    v18 = v6;
    v52 = v18;
    v19 = v4;
    v53 = v19;
    v20 = v5;
    v54 = v20;
    v21 = _Block_copy(aBlock);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_95;
    v43[3] = &unk_279983B28;
    v43[4] = *(a1 + 32);
    v44 = *(a1 + 56);
    v48 = *(a1 + 72);
    v22 = v20;
    v45 = v22;
    v23 = v19;
    v46 = v23;
    v24 = v18;
    v47 = v24;
    v49 = v55;
    v25 = _Block_copy(v43);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_3_100;
    v34[3] = &unk_279983B50;
    v41 = *(a1 + 88);
    v35 = *(a1 + 40);
    v26 = v23;
    v42 = v55;
    v27 = *(a1 + 32);
    v36 = v26;
    v37 = v27;
    v28 = v24;
    v38 = v28;
    v29 = v22;
    v39 = v29;
    v40 = *(a1 + 56);
    v30 = _Block_copy(v34);
    if (*(*(*(a1 + 96) + 8) + 40))
    {
      v31 = objc_opt_new();
      [v31 setPurpose:*MEMORY[0x277D30BD8]];
      [v31 setConfiguration:*(*(*(a1 + 88) + 8) + 40)];
      [v31 setWidgetConfiguration:*(*(*(a1 + 96) + 8) + 40)];
      [v31 setContext:*(a1 + 48)];
    }

    else
    {
      v31 = objc_opt_new();
      [v31 setPurpose:*MEMORY[0x277D30BD8]];
      [v31 setConfiguration:*(*(*(a1 + 88) + 8) + 40)];
      [v31 setContext:*(a1 + 48)];
      v32 = [*(*(*(a1 + 88) + 8) + 40) widgetConfigID];
      [v31 setWidgetConfigID:v32];
    }

    [v31 setDefaultConfigCompletionHandler:v21];
    [v31 setSingleTagConfigCompletionHandler:v25];
    [v31 setCompletionBlock:v30];
    [*(a1 + 32) associateChildOperation:v31];
    [v31 start];

    _Block_object_dispose(v55, 8);
    v33 = *MEMORY[0x277D85DE8];
  }
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_91(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NTSharedLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v22 = 138543874;
    v23 = v13;
    v24 = 2114;
    v25 = v7;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_25BF21000, v10, OS_LOG_TYPE_INFO, "%{public}@ fetched default config %{public}@ heldRecordsByType %p", &v22, 0x20u);
  }

  v14 = *(a1 + 40);
  v15 = [v8 objectForKeyedSubscript:&unk_286D9EDE0];
  [v7 nt_resolveFallbacksWithPaidAccessChecker:v14 heldArticleRecords:v15];

  v16 = [MEMORY[0x277D35548] nt_defaultModule];
  [*(a1 + 48) addObject:v16];
  v17 = [v16 availableContents];
  v18 = [v17 fc_onlyObject];
  v19 = [v18 request];
  v20 = [v19 identifier];

  [*(a1 + 56) fc_safelySetObject:v7 forKey:v20];
  [*(a1 + 64) fc_safelySetObjectAllowingNil:v9 forKey:v20];

  v21 = *MEMORY[0x277D85DE8];
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_95(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NTSharedLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543874;
    v37 = v13;
    v38 = 2114;
    v39 = v7;
    v40 = 2048;
    v41 = v8;
    _os_log_impl(&dword_25BF21000, v10, OS_LOG_TYPE_INFO, "%{public}@ fetched single tag config %{public}@ heldRecordsByType %p", buf, 0x20u);
  }

  v14 = *(a1 + 40);
  if (!v14 || [v14 moduleDescriptorType] != 1)
  {
    goto LABEL_11;
  }

  v15 = [*(a1 + 40) identifier];
  v16 = [*(a1 + 40) tagID];
  v17 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v16];
  if (!v17)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_96;
    v32[3] = &unk_279983AD8;
    v35 = *(a1 + 80);
    v33 = *(a1 + 48);
    v34 = v15;
    v21 = v15;
    __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_96(v32);

LABEL_12:
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v7 configByResolvingWithTag:v17];
  if (v19)
  {
    v20 = [MEMORY[0x277D35548] nt_moduleWithTagID:v16];
    [*(a1 + 56) setObject:v19 forKeyedSubscript:v15];
    [*(a1 + 64) addObject:v20];
  }

  else
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2_99;
    v28 = &unk_279983B00;
    v29 = *(a1 + 48);
    v30 = v15;
    v31 = v9;
    __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2_99(&v25);

    v20 = v29;
  }

  if (v19)
  {
LABEL_11:
    v22 = [v8 copy];
    v23 = *(*(a1 + 88) + 8);
    v16 = *(v23 + 40);
    *(v23 + 40) = v22;
    goto LABEL_12;
  }

LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_96(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NewsToday" code:1 userInfo:0];
  }

  v4 = v3;
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2_99(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NewsToday" code:2 userInfo:0];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];
  }
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_3_100(uint64_t a1)
{
  v5 = [[NTNewsModuleDescriptorsOperationPrefetchedContent alloc] initWithAppConfiguration:*(*(*(a1 + 80) + 8) + 40) privateData:*(a1 + 32) todayConfigsByRequestID:*(a1 + 40) prefetchedHeldRecordsByType:*(*(*(a1 + 88) + 8) + 40)];
  [*(a1 + 48) setResultTodayModuleDescriptors:*(a1 + 56)];
  [*(a1 + 48) setPrefetchedContent:v5];
  v2 = *(a1 + 64);
  v3 = [*(a1 + 72) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  [*(a1 + 48) finishedPerformingOperationWithError:v4];
}

- (void)_donateTodayConfigDataToNewsd:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    ++_donateTodayConfigDataToNewsd__connectionIdentifier;
    v5 = *MEMORY[0x277D30B40];
    if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(FCOperation *)self shortOperationDescription];
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_25BF21000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will donate Today Feed config data to newsd", buf, 0xCu);
    }

    v8 = [MEMORY[0x277D31418] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__NTNewsModuleDescriptorsOperation__donateTodayConfigDataToNewsd___block_invoke_105;
    v10[3] = &unk_279983BA0;
    v11 = v4;
    v12 = self;
    [v8 withTodayFeedService:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __66__NTNewsModuleDescriptorsOperation__donateTodayConfigDataToNewsd___block_invoke_105(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a2 adoptFeedConfigData:*(a1 + 32)];
  v3 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = [v4 shortOperationDescription];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_25BF21000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ finished donating Today Feed config data to newsd", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v7 = [(NTTodayModuleDescriptorsOperation *)self descriptorsCompletion];
  v5 = [(NTNewsModuleDescriptorsOperation *)self resultTodayModuleDescriptors];
  v6 = [(NTNewsModuleDescriptorsOperation *)self prefetchedContent];
  v7[2](v7, v5, v6, v4);
}

- (void)validateOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"module descriptors operation requires completion"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end