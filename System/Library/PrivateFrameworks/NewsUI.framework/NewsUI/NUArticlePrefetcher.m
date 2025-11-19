@interface NUArticlePrefetcher
- (NUArticlePrefetcher)init;
- (NUArticlePrefetcher)initWithArticleFactory:(id)a3 articleDataProviderFactory:(id)a4;
- (id)_prefetchDataProviderWithArticleID:(id)a3 completion:(id)a4;
- (id)keyedOperationQueue:(id)a3 performAsyncOperationForKey:(id)a4 completion:(id)a5;
- (id)prefetchedArticleDataProviderForArticleID:(id)a3;
- (void)_didChangeInterestedArticleIDs;
- (void)_flushDataProviderIfNeededForHeadline:(id)a3;
- (void)_flushUnusedDataProvidersIfNeeded;
- (void)_reprocessInterestedArticleIDs;
- (void)addPrefetchInterestInArticleID:(id)a3 headline:(id)a4;
- (void)prefetchArticleID:(id)a3 headline:(id)a4 completion:(id)a5;
- (void)removePrefetchInterestInArticleID:(id)a3;
@end

@implementation NUArticlePrefetcher

void __45__NUArticlePrefetcher__revisitSuspendedState__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  if ([v3 isLowPowerModeEnabled])
  {
    [*(*(a1 + 32) + 24) setSuspended:1];
  }

  else
  {
    v2 = [MEMORY[0x277D31140] sharedNetworkReachability];
    [*(*(a1 + 32) + 24) setSuspended:{objc_msgSend(v2, "isLowDataModeEnabled")}];
  }
}

- (NUArticlePrefetcher)initWithArticleFactory:(id)a3 articleDataProviderFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = NUArticlePrefetcher;
  v9 = [(NUArticlePrefetcher *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_articleFactory, a3);
    objc_storeStrong(&v10->_articleDataProviderFactory, a4);
    v11 = [objc_alloc(MEMORY[0x277D310D0]) initWithDelegate:v10 maxConcurrentOperationCount:1];
    prefetchQueue = v10->_prefetchQueue;
    v10->_prefetchQueue = v11;

    [(FCKeyedOperationQueue *)v10->_prefetchQueue setExecutionQueue:MEMORY[0x277D85CD0]];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_create("NUArticlePrefetcher.work", v14);
    workQueue = v10->_workQueue;
    v10->_workQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    articleDataProviderCache = v10->_articleDataProviderCache;
    v10->_articleDataProviderCache = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    failedArticleIDs = v10->_failedArticleIDs;
    v10->_failedArticleIDs = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCA940]);
    interestedArticleIDs = v10->_interestedArticleIDs;
    v10->_interestedArticleIDs = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    headlinesForArticles = v10->_headlinesForArticles;
    v10->_headlinesForArticles = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    interestModificationDates = v10->_interestModificationDates;
    v10->_interestModificationDates = v25;

    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    [v27 addObserver:v10 selector:sel__revisitSuspendedState name:*MEMORY[0x277CCA5E8] object:0];

    [(NUArticlePrefetcher *)v10 _revisitSuspendedState];
  }

  return v10;
}

- (NUArticlePrefetcher)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NUArticlePrefetcher init]";
    v10 = 2080;
    v11 = "NUArticlePrefetcher.m";
    v12 = 1024;
    v13 = 89;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25C2D6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NUArticlePrefetcher init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)addPrefetchInterestInArticleID:(id)a3 headline:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CCACC8] isMainThread];
  v8 = [(NUArticlePrefetcher *)self interestedArticleIDs];
  v9 = [v8 countForObject:v6];

  v10 = [(NUArticlePrefetcher *)self interestedArticleIDs];
  [v10 addObject:v6];

  v11 = [(NUArticlePrefetcher *)self interestModificationDates];
  v12 = [MEMORY[0x277CBEAA8] date];
  [v11 setObject:v12 forKey:v6];

  if (v7)
  {
    [(NUArticlePrefetcher *)self _flushDataProviderIfNeededForHeadline:v7];
    v13 = [(NUArticlePrefetcher *)self headlinesForArticles];
    [v13 setObject:v7 forKey:v6];
  }

  if (!v9)
  {
    v14 = NUSharedLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&dword_25C2D6000, v14, OS_LOG_TYPE_DEFAULT, "added prefetch interest in article ID %{public}@", &v16, 0xCu);
    }

    [(NUArticlePrefetcher *)self _didChangeInterestedArticleIDs];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removePrefetchInterestInArticleID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [MEMORY[0x277CCACC8] isMainThread];
  v5 = [(NUArticlePrefetcher *)self interestedArticleIDs];
  v6 = [v5 countForObject:v4];

  v7 = [(NUArticlePrefetcher *)self interestedArticleIDs];
  [v7 removeObject:v4];

  v8 = [(NUArticlePrefetcher *)self interestModificationDates];
  v9 = [MEMORY[0x277CBEAA8] date];
  [v8 setObject:v9 forKey:v4];

  v10 = [(NUArticlePrefetcher *)self headlinesForArticles];
  [v10 removeObjectForKey:v4];

  if (v6 == 1)
  {
    v11 = NUSharedLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&dword_25C2D6000, v11, OS_LOG_TYPE_DEFAULT, "removed prefetch interest in article ID %{public}@", &v13, 0xCu);
    }

    [(NUArticlePrefetcher *)self _didChangeInterestedArticleIDs];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)prefetchArticleID:(id)a3 headline:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CCACC8];
  v11 = a4;
  [v10 isMainThread];
  [(NUArticlePrefetcher *)self addPrefetchInterestInArticleID:v8 headline:v11];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__NUArticlePrefetcher_prefetchArticleID_headline_completion___block_invoke;
  v15[3] = &unk_2799A4590;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [(NUArticlePrefetcher *)self _prefetchDataProviderWithArticleID:v13 completion:v15];
}

void __61__NUArticlePrefetcher_prefetchArticleID_headline_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  if (a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __61__NUArticlePrefetcher_prefetchArticleID_headline_completion___block_invoke_cold_1(a1);
  }

  objc_initWeak(&location, *(a1 + 40));
  v7 = objc_alloc(MEMORY[0x277D310A8]);
  v8 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85CD0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__NUArticlePrefetcher_prefetchArticleID_headline_completion___block_invoke_23;
  v11[3] = &unk_2799A3D48;
  objc_copyWeak(&v13, &location);
  v12 = *(a1 + 32);
  v10 = [v7 initWithCallbackQueue:v8 removeInterestBlock:v11];

  (*(*(a1 + 48) + 16))();
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __61__NUArticlePrefetcher_prefetchArticleID_headline_completion___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removePrefetchInterestInArticleID:*(a1 + 32)];
}

- (id)prefetchedArticleDataProviderForArticleID:(id)a3
{
  v4 = a3;
  [MEMORY[0x277CCACC8] isMainThread];
  v5 = [(NUArticlePrefetcher *)self failedArticleIDs];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NUArticlePrefetcher *)self articleDataProviderCache];
    v7 = [v8 objectForKey:v4];
  }

  return v7;
}

- (void)_didChangeInterestedArticleIDs
{
  [MEMORY[0x277CCACC8] isMainThread];
  v3 = [(NUArticlePrefetcher *)self reprocessTimer];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__reprocessInterestedArticleIDs selector:0 userInfo:0 repeats:0.01];
    [(NUArticlePrefetcher *)self setReprocessTimer:v4];
  }
}

- (void)_reprocessInterestedArticleIDs
{
  [MEMORY[0x277CCACC8] isMainThread];
  v3 = [(NUArticlePrefetcher *)self highWaterMark];
  v4 = [(NUArticlePrefetcher *)self interestedArticleIDs];
  v5 = [v4 count];

  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  [(NUArticlePrefetcher *)self setHighWaterMark:v6];
  v7 = MEMORY[0x277CBEB70];
  v8 = [(NUArticlePrefetcher *)self interestedArticleIDs];
  v9 = [v8 allObjects];
  v10 = [v7 orderedSetWithArray:v9];
  v11 = [(NUArticlePrefetcher *)self prefetchQueue];
  [v11 setKeyQueue:v10];

  v12 = [(NUArticlePrefetcher *)self reprocessTimer];
  [v12 invalidate];

  [(NUArticlePrefetcher *)self setReprocessTimer:0];
}

- (id)keyedOperationQueue:(id)a3 performAsyncOperationForKey:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CCACC8];
  v9 = a4;
  [v8 isMainThread];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__NUArticlePrefetcher_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke;
  v13[3] = &unk_2799A45B8;
  v14 = v7;
  v10 = v7;
  v11 = [(NUArticlePrefetcher *)self _prefetchDataProviderWithArticleID:v9 completion:v13];

  return v11;
}

- (id)_prefetchDataProviderWithArticleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CCACC8] isMainThread];
  v8 = [objc_alloc(MEMORY[0x277D311A0]) initWithOptions:1];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke;
  v34[3] = &unk_2799A4608;
  v9 = v6;
  v35 = v9;
  v10 = v8;
  v36 = v10;
  v11 = v7;
  v37 = self;
  v38 = v11;
  v12 = MEMORY[0x25F883F30](v34);
  v13 = [(NUArticlePrefetcher *)self articleDataProviderCache];
  v14 = [v13 objectForKey:v9];

  if (v14)
  {
    (v12)[2](v12, v14);
  }

  else
  {
    v15 = [(NUArticlePrefetcher *)self headlinesForArticles];
    v16 = [v15 objectForKeyedSubscript:v9];

    v17 = [(NUArticlePrefetcher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_3;
    block[3] = &unk_2799A4658;
    v29 = v16;
    v30 = self;
    v31 = v9;
    v33 = v39;
    v32 = v12;
    v18 = v16;
    dispatch_async(v17, block);
  }

  v19 = MEMORY[0x277D30EA8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_6;
  v24[3] = &unk_2799A3210;
  v27 = v39;
  v20 = v10;
  v25 = v20;
  v21 = v11;
  v26 = v21;
  v22 = [v19 cancelHandlerWithBlock:v24];

  _Block_object_dispose(v39, 8);

  return v22;
}

void __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NUSharedLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "will prefetch contents of article ID %{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_32;
  v10[3] = &unk_2799A45E0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  v13 = v3;
  v14 = v7;
  v15 = v6;
  v8 = v3;
  [v8 loadContextWithCompletionBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_32(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = NUSharedLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_32_cold_1(a1, v7);
    }

    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_34;
    v21 = &unk_2799A4468;
    v8 = v22;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v22[0] = v9;
    v22[1] = v10;
    v23 = *(a1 + 32);
    FCPerformBlockOnMainThread();
    v11 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_2;
    v15[3] = &unk_2799A4440;
    v17 = *(a1 + 64);
    v16 = v5;
    [v11 executeOnce:v15];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v27 = v12;
      _os_log_impl(&dword_25C2D6000, v7, OS_LOG_TYPE_DEFAULT, "did prefetch contents of article ID %{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 40);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_33;
    v24[3] = &unk_2799A3148;
    v8 = &v25;
    v25 = *(a1 + 64);
    [v13 executeOnce:v24];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) articleDataProviderCache];
  v4 = [v3 objectForKey:*(a1 + 48)];

  if (v2 == v4)
  {
    v5 = [*(a1 + 40) failedArticleIDs];
    [v5 addObject:*(a1 + 48)];
  }
}

void __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_3(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) articleFactory];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 createArticleForHeadline:*(a1 + 32)];
  }

  else
  {
    v14[0] = *(a1 + 48);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v7 = [v4 createArticlesForArticleIDs:v6];
    v5 = [v7 firstObject];
  }

  v13 = *(a1 + 64);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v8 = v5;
  FCPerformBlockOnMainThread();

  v9 = *MEMORY[0x277D85DE8];
}

void __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_4(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v3 = [*(a1 + 32) articleDataProviderFactory];
    v5 = [v3 createArticleDataProviderWithArticle:*(a1 + 40)];

    v4 = [*(a1 + 32) articleDataProviderCache];
    [v4 setObject:v5 forKey:*(a1 + 48)];

    [*(a1 + 32) _flushUnusedDataProvidersIfNeeded];
    (*(*(a1 + 56) + 16))();
  }
}

void __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_6(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_7;
  v2[3] = &unk_2799A3148;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 executeOnce:v2];
}

void __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D309C8] code:1 userInfo:0];
  (*(v1 + 16))(v1, 0, 1, v2);
}

- (void)_flushDataProviderIfNeededForHeadline:(id)a3
{
  v14 = a3;
  [MEMORY[0x277CCACC8] isMainThread];
  v4 = [(NUArticlePrefetcher *)self articleDataProviderCache];
  v5 = [v14 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
    if (([v14 isDisplayingAsNativeAd] & 1) == 0)
    {
      v8 = [v7 article];
      v9 = [v8 headline];

      if (v9 != v14)
      {
        v10 = [(NUArticlePrefetcher *)self articleDataProviderCache];
        v11 = [v14 identifier];
        [v10 removeObjectForKey:v11];

        v12 = [(NUArticlePrefetcher *)self failedArticleIDs];
        v13 = [v14 identifier];
        [v12 removeObject:v13];
      }
    }
  }
}

- (void)_flushUnusedDataProvidersIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCACC8] isMainThread];
  v3 = [(NUArticlePrefetcher *)self articleDataProviderCache];
  v4 = [v3 count];
  v5 = [(NUArticlePrefetcher *)self highWaterMark];

  if (v4 > v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [(NUArticlePrefetcher *)self articleDataProviderCache];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          v13 = [(NUArticlePrefetcher *)self interestedArticleIDs];
          v14 = [v13 countForObject:v12];

          if (!v14)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__NUArticlePrefetcher__flushUnusedDataProvidersIfNeeded__block_invoke;
    v22[3] = &unk_2799A4680;
    v22[4] = self;
    [v6 sortUsingComparator:v22];
    while ([v6 count])
    {
      v15 = [(NUArticlePrefetcher *)self articleDataProviderCache];
      v16 = [v15 count];
      v17 = [(NUArticlePrefetcher *)self highWaterMark];

      if (v16 <= v17)
      {
        break;
      }

      v18 = [v6 fc_popFirstObject];
      v19 = [(NUArticlePrefetcher *)self articleDataProviderCache];
      [v19 removeObjectForKey:v18];

      v20 = [(NUArticlePrefetcher *)self failedArticleIDs];
      [v20 removeObject:v18];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __56__NUArticlePrefetcher__flushUnusedDataProvidersIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 interestModificationDates];
  v9 = [v8 objectForKey:v7];

  v10 = [*(a1 + 32) interestModificationDates];
  v11 = [v10 objectForKey:v6];

  v12 = [v9 compare:v11];
  return v12;
}

void __61__NUArticlePrefetcher_prefetchArticleID_headline_completion___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"prefetch unexpectedly cancelled for article ID %@", *(a1 + 32)];
  *buf = 136315906;
  v4 = "[NUArticlePrefetcher prefetchArticleID:headline:completion:]_block_invoke";
  v5 = 2080;
  v6 = "NUArticlePrefetcher.m";
  v7 = 1024;
  v8 = 141;
  v9 = 2114;
  v10 = v1;
  _os_log_error_impl(&dword_25C2D6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v2 = *MEMORY[0x277D85DE8];
}

void __69__NUArticlePrefetcher__prefetchDataProviderWithArticleID_completion___block_invoke_32_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_25C2D6000, a2, OS_LOG_TYPE_ERROR, "failed to prefetch contents of article ID %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end