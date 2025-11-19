@interface CNAutocompleteQueryCacheHelper
+ (id)cache_os_log;
+ (id)stringByRemovingLastCharacterFromString:(id)a3;
- (CNAutocompleteQueryCacheHelper)initWithCache:(id)a3 searchString:(id)a4 serverSearchObservable:(id)a5;
- (CNAutocompleteQueryCacheHelper)initWithCache:(id)a3 searchString:(id)a4 serverSearchObservable:(id)a5 cacheMissAuditor:(id)a6 schedulerProvider:(id)a7;
- (id)cachedFutureForSearchString:(id)a3;
- (id)cachedResultsObservable;
- (id)observablesForSearchString:(id)a3 withCachedResults:(id)a4;
- (id)remoteResultsForSearchString:(id)a3;
- (id)remoteResultsForSearchString:(id)a3 andCompletePromise:(id)a4;
- (id)uncachedResultsObservable;
@end

@implementation CNAutocompleteQueryCacheHelper

+ (id)cache_os_log
{
  if (cache_os_log_cn_once_token_0 != -1)
  {
    +[CNAutocompleteQueryCacheHelper cache_os_log];
  }

  v3 = cache_os_log_cn_once_object_0;

  return v3;
}

uint64_t __46__CNAutocompleteQueryCacheHelper_cache_os_log__block_invoke()
{
  cache_os_log_cn_once_object_0 = os_log_create("com.apple.contacts.autocomplete", "cache");

  return MEMORY[0x2821F96F8]();
}

- (CNAutocompleteQueryCacheHelper)initWithCache:(id)a3 searchString:(id)a4 serverSearchObservable:(id)a5
{
  v8 = MEMORY[0x277CFBEB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 defaultProvider];
  v13 = objc_alloc_init(CNAutocompleteQueryCacheMissAuditor);
  v14 = [(CNAutocompleteQueryCacheHelper *)self initWithCache:v11 searchString:v10 serverSearchObservable:v9 cacheMissAuditor:v13 schedulerProvider:v12];

  return v14;
}

- (CNAutocompleteQueryCacheHelper)initWithCache:(id)a3 searchString:(id)a4 serverSearchObservable:(id)a5 cacheMissAuditor:(id)a6 schedulerProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = CNAutocompleteQueryCacheHelper;
  v18 = [(CNAutocompleteQueryCacheHelper *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cache, a3);
    v20 = [v14 copy];
    searchString = v19->_searchString;
    v19->_searchString = v20;

    objc_storeStrong(&v19->_serverSearchObservable, a5);
    objc_storeStrong(&v19->_cacheMissAuditor, a6);
    objc_storeStrong(&v19->_schedulerProvider, a7);
    v22 = v19;
  }

  return v19;
}

- (id)cachedResultsObservable
{
  v3 = [(CNAutocompleteQueryCacheHelper *)self searchString];
  v4 = [(CNAutocompleteQueryCacheHelper *)self cachedFutureForSearchString:v3];
  if (v4)
  {
    [MEMORY[0x277CFBE60] observableWithFuture:v4];
  }

  else
  {
    [MEMORY[0x277CFBE60] emptyObservable];
  }
  v5 = ;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__CNAutocompleteQueryCacheHelper_cachedResultsObservable__block_invoke;
  v16[3] = &unk_2781C48D8;
  v17 = v3;
  v6 = v3;
  v7 = [v5 map:v16];

  v8 = [v7 filter:&__block_literal_global_9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__CNAutocompleteQueryCacheHelper_cachedResultsObservable__block_invoke_3;
  v15[3] = &unk_2781C4418;
  v15[4] = self;
  v9 = [v8 doOnNext:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__CNAutocompleteQueryCacheHelper_cachedResultsObservable__block_invoke_11;
  v14[3] = &unk_2781C4440;
  v14[4] = self;
  v10 = [v9 doOnError:v14];

  v11 = [MEMORY[0x277CFBE60] emptyObservable];
  v12 = [v10 onError:v11];

  return v12;
}

id __57__CNAutocompleteQueryCacheHelper_cachedResultsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNAutocompleteResultTokenMatcher alloc] initWithSearchString:*(a1 + 32)];
  v5 = [(CNAutocompleteResultTokenMatcher *)v4 filterAdapter];
  v6 = [v3 _cn_filter:v5];

  return v6;
}

void __57__CNAutocompleteQueryCacheHelper_cachedResultsObservable__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cache_os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_DEFAULT, "Using %lu filtered results from the cache", &v8, 0xCu);
  }

  v6 = [*(a1 + 32) cacheMissAuditor];
  [v6 didReturnCachedResults:v3];

  v7 = *MEMORY[0x277D85DE8];
}

void __57__CNAutocompleteQueryCacheHelper_cachedResultsObservable__block_invoke_11(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cache_os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_DEFAULT, "Error filtering cached results: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)cachedFutureForSearchString:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_cache;
  v6 = v4;
  v7 = v5;
  objc_sync_enter(v7);
  v8 = 0;
  *&v9 = 138412290;
  v17 = v9;
  v10 = v6;
  while ([v10 length]&& !v8)
  {
    v8 = [(CNCache *)v7 objectForKeyedSubscript:v10];
    if (v8)
    {
      v11 = [objc_opt_class() cache_os_log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 length];
        v13 = [v6 length];
        *buf = 138412802;
        v19 = v10;
        v20 = 2048;
        v21 = v12;
        v22 = 2048;
        v23 = v13;
        _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Found entry in reuse cache (key “%@”, length %lu/%lu)", buf, 0x20u);
      }
    }

    else
    {
      v14 = [objc_opt_class() cache_os_log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v17;
        v19 = v10;
        _os_log_impl(&dword_2155FE000, v14, OS_LOG_TYPE_DEFAULT, "No cache entry for “%@”", buf, 0xCu);
      }

      [objc_opt_class() stringByRemovingLastCharacterFromString:v10];
      v10 = v11 = v10;
    }
  }

  objc_sync_exit(v7);

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)uncachedResultsObservable
{
  v3 = self->_cache;
  v4 = MEMORY[0x277CFBE60];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59__CNAutocompleteQueryCacheHelper_uncachedResultsObservable__block_invoke;
  v14 = &unk_2781C4928;
  v15 = self;
  v16 = v3;
  v5 = v3;
  v6 = [v4 observableWithBlock:&v11];
  v7 = *MEMORY[0x277CFBCF0];
  v8 = [(CNAutocompleteQueryCacheHelper *)self schedulerProvider:v11];
  v9 = [v6 flatMap:v7 schedulerProvider:v8];

  return v9;
}

id __59__CNAutocompleteQueryCacheHelper_uncachedResultsObservable__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) searchString];
  v5 = *(a1 + 40);
  objc_sync_enter(v5);
  v6 = [*(a1 + 40) objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CFBE90]);
    v8 = [v7 future];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v4];

    v9 = *(a1 + 32);
    v10 = [objc_opt_class() cache_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "No existing cache entry for “%@”", buf, 0xCu);
    }
  }

  objc_sync_exit(v5);

  v11 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  v12 = *(a1 + 32);
  v13 = [v12 searchString];
  if (v7)
  {
    v14 = [v12 remoteResultsForSearchString:v13 andCompletePromise:v7];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __59__CNAutocompleteQueryCacheHelper_uncachedResultsObservable__block_invoke_15;
    v24[3] = &unk_2781C4900;
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v25 = v15;
    v26 = v16;
    v27 = v4;
    v28 = v7;
    [v11 addCancelationBlock:v24];

    v13 = v25;
  }

  else
  {
    v14 = [v12 remoteResultsForSearchString:v13];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__CNAutocompleteQueryCacheHelper_uncachedResultsObservable__block_invoke_17;
  v21[3] = &unk_2781C3CF0;
  v22 = v3;
  v23 = v14;
  v17 = v14;
  v18 = v3;
  [v11 performBlock:v21];

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

void __59__CNAutocompleteQueryCacheHelper_uncachedResultsObservable__block_invoke_15(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 40);
  v4 = [objc_opt_class() cache_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Server search cancelled; removing cache entry for key “%@”", &v9, 0xCu);
  }

  v6 = *(a1 + 56);
  v7 = [MEMORY[0x277CFBE20] userCanceledError];
  [v6 finishWithError:v7];

  [*(a1 + 32) setObject:0 forKeyedSubscript:*(a1 + 48)];
  objc_sync_exit(v2);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __59__CNAutocompleteQueryCacheHelper_uncachedResultsObservable__block_invoke_17(uint64_t a1)
{
  [*(a1 + 32) observerDidReceiveResult:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 observerDidComplete];
}

+ (id)stringByRemovingLastCharacterFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 substringToIndex:{objc_msgSend(v3, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(v3, "length") - 1)}];

  return v4;
}

- (id)remoteResultsForSearchString:(id)a3
{
  v4 = [(CNAutocompleteQueryCacheHelper *)self serverSearchObservable];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString___block_invoke;
  v7[3] = &unk_2781C4418;
  v7[4] = self;
  v5 = [v4 doOnNext:v7];

  return v5;
}

void __63__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cacheMissAuditor];
  [v4 didReturnLiveResults:v3];
}

- (id)remoteResultsForSearchString:(id)a3 andCompletePromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_cache;
  v9 = [(CNAutocompleteQueryCacheHelper *)self serverSearchObservable];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke;
  v42[3] = &unk_2781C4950;
  v42[4] = self;
  v10 = v6;
  v43 = v10;
  v11 = v7;
  v44 = v11;
  v12 = v8;
  v45 = v12;
  v13 = [v9 doOnNext:v42];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke_21;
  v41[3] = &unk_2781C4418;
  v41[4] = self;
  v14 = [v13 doOnNext:v41];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke_2;
  v36[3] = &unk_2781C4978;
  v15 = v12;
  v37 = v15;
  v38 = self;
  v16 = v10;
  v39 = v16;
  v17 = v11;
  v40 = v17;
  v18 = [v14 doOnError:v36];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke_22;
  v32[3] = &unk_2781C4048;
  v19 = v15;
  v33 = v19;
  v34 = self;
  v20 = v17;
  v35 = v20;
  v21 = [v18 doOnCompletion:v32];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke_27;
  v27[3] = &unk_2781C4900;
  v28 = v19;
  v29 = self;
  v30 = v20;
  v31 = v16;
  v22 = v16;
  v23 = v20;
  v24 = v19;
  v25 = [v21 doOnSubscribe:v27];

  return v25;
}

void __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([CNAutocompleteQueryCacheHelper shouldCacheResults:v3])
  {
    v4 = [v3 _cn_flatten];
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() cache_os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      v8 = *(a1 + 40);
      v15 = 134218242;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_2155FE000, v6, OS_LOG_TYPE_DEFAULT, "Caching %lu results for key “%@”", &v15, 0x16u);
    }

    [*(a1 + 48) finishWithResult:v4];
  }

  else
  {
    v4 = *(a1 + 56);
    objc_sync_enter(v4);
    v9 = *(a1 + 32);
    v10 = [objc_opt_class() cache_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Result set is not a candidate for caching; removing cache entry for key “%@”", &v15, 0xCu);
    }

    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CNContactAutocompleteErrorDomain" code:101 userInfo:0];
    [v12 finishWithError:v13];

    [*(a1 + 56) setObject:0 forKeyedSubscript:*(a1 + 40)];
    objc_sync_exit(v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cacheMissAuditor];
  [v4 didReturnLiveResults:v3];
}

void __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(a1 + 40);
  v6 = [objc_opt_class() cache_os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v9 = 138543618;
    v10 = v3;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2155FE000, v6, OS_LOG_TYPE_DEFAULT, "Server search failed with error %{public}@; removing cache entry for key “%@”", &v9, 0x16u);
  }

  [*(a1 + 56) finishWithError:v3];
  [*(a1 + 32) setObject:0 forKeyedSubscript:*(a1 + 48)];
  objc_sync_exit(v4);

  v8 = *MEMORY[0x277D85DE8];
}

void __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke_22(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 40);
  v4 = [objc_opt_class() cache_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 48) future];
    v6 = [v5 isFinished];
    v7 = @"IS NOT";
    if (v6)
    {
      v7 = @"IS";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Server complete; promise %@ finished", &v9, 0xCu);
  }

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
}

void __82__CNAutocompleteQueryCacheHelper_remoteResultsForSearchString_andCompletePromise___block_invoke_27(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 40);
  v4 = [objc_opt_class() cache_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Caching the future of promise %@ for key “%@”", &v9, 0x16u);
  }

  v7 = [*(a1 + 48) future];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*(a1 + 56)];

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)observablesForSearchString:(id)a3 withCachedResults:(id)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CFBE60] observableWithFuture:a4];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__CNAutocompleteQueryCacheHelper_observablesForSearchString_withCachedResults___block_invoke;
  v22[3] = &unk_2781C48D8;
  v23 = v6;
  v8 = v6;
  v9 = [v7 map:v22];

  v10 = [v9 filter:&__block_literal_global_29];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__CNAutocompleteQueryCacheHelper_observablesForSearchString_withCachedResults___block_invoke_3;
  v21[3] = &unk_2781C4418;
  v21[4] = self;
  v11 = [v10 doOnNext:v21];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__CNAutocompleteQueryCacheHelper_observablesForSearchString_withCachedResults___block_invoke_30;
  v20[3] = &unk_2781C4440;
  v20[4] = self;
  v12 = [v11 doOnError:v20];

  v13 = [MEMORY[0x277CFBE60] emptyObservable];
  v14 = [v12 onError:v13];

  v15 = [(CNAutocompleteQueryCacheHelper *)self serverSearchObservable];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__CNAutocompleteQueryCacheHelper_observablesForSearchString_withCachedResults___block_invoke_31;
  v19[3] = &unk_2781C4418;
  v19[4] = self;
  v16 = [v15 doOnNext:v19];

  v17 = [MEMORY[0x277CFBE70] pairWithFirst:v14 second:v16];

  return v17;
}

id __79__CNAutocompleteQueryCacheHelper_observablesForSearchString_withCachedResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNAutocompleteResultTokenMatcher alloc] initWithSearchString:*(a1 + 32)];
  v5 = [(CNAutocompleteResultTokenMatcher *)v4 filterAdapter];
  v6 = [v3 _cn_filter:v5];

  return v6;
}

void __79__CNAutocompleteQueryCacheHelper_observablesForSearchString_withCachedResults___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cache_os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_DEFAULT, "Using %lu filtered results from the cache", &v8, 0xCu);
  }

  v6 = [*(a1 + 32) cacheMissAuditor];
  [v6 didReturnCachedResults:v3];

  v7 = *MEMORY[0x277D85DE8];
}

void __79__CNAutocompleteQueryCacheHelper_observablesForSearchString_withCachedResults___block_invoke_30(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cache_os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_DEFAULT, "Error filtering cached results: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __79__CNAutocompleteQueryCacheHelper_observablesForSearchString_withCachedResults___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cacheMissAuditor];
  [v4 didReturnLiveResults:v3];
}

@end