@interface CNAutocompleteStore
+ (double)defaultFetchCoalescingInterval;
- (CNAutocompleteSearchProvider)searchProvider;
- (CNAutocompleteStore)initWithDelegate:(id)a3;
- (CNAutocompleteStore)initWithDelegate:(id)a3 searchProvider:(id)a4 probeProvider:(id)a5 scheduler:(id)a6;
- (CNCancelationToken)currentFetchToken;
- (id)executeFetchRequest:(id)a3 afterDelay:(double)a4 delegate:(id)a5;
- (id)executeFetchRequest:(id)a3 delegate:(id)a4;
- (id)scheduleFetchRequest:(id)a3 delegate:(id)a4;
- (void)ignoreResult:(id)a3 completionHandler:(id)a4;
- (void)userSelectedResult:(id)a3 atSortedIndex:(unint64_t)a4;
@end

@implementation CNAutocompleteStore

+ (double)defaultFetchCoalescingInterval
{
  v2 = [MEMORY[0x277CFBEE8] standardPreferences];
  v3 = [v2 objectForKey:@"CNAutocompleteKeystrokeCoalescingInterval"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.2;
  }

  return v5;
}

- (CNCancelationToken)currentFetchToken
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFetchToken);

  return WeakRetained;
}

- (CNAutocompleteStore)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[CNAutocompleteSearchProviderFactory cachingProvider];
  v6 = [MEMORY[0x277CFBE10] currentEnvironment];
  v7 = [v6 schedulerProvider];
  v8 = [v7 backgroundScheduler];

  v9 = +[CNAutocompleteProbeProviderFactory defaultProbeProvider];
  v10 = [(CNAutocompleteStore *)self initWithDelegate:v4 searchProvider:v5 probeProvider:v9 scheduler:v8];

  return v10;
}

- (CNAutocompleteStore)initWithDelegate:(id)a3 searchProvider:(id)a4 probeProvider:(id)a5 scheduler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = CNAutocompleteStore;
  v14 = [(CNAutocompleteStore *)&v24 init];
  if (v14)
  {
    v15 = [[CNAutocompleteUserSession alloc] initWithProbeProvider:v12];
    userSession = v14->_userSession;
    v14->_userSession = v15;

    v17 = [[CNAutocompleteStoreQueryHelper alloc] initWithSearchProvider:v11 delegate:v10 probeProvider:v12 scheduler:v13 userSession:v14->_userSession];
    queryHelper = v14->_queryHelper;
    v14->_queryHelper = v17;

    objc_storeStrong(&v14->_scheduler, a6);
    objc_storeStrong(&v14->_probeProvider, a5);
    [objc_opt_class() defaultFetchCoalescingInterval];
    v14->_fetchCoalescingInterval = v19;
    v20 = [[CNAutocompleteStoreReproStringRecorder alloc] initWithTimeProvider:v13];
    reproStringRecorder = v14->_reproStringRecorder;
    v14->_reproStringRecorder = v20;

    v22 = v14;
  }

  return v14;
}

- (CNAutocompleteSearchProvider)searchProvider
{
  v2 = [(CNAutocompleteStore *)self queryHelper];
  v3 = [v2 searchProvider];

  return v3;
}

- (id)scheduleFetchRequest:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CNAutocompleteStore *)self fetchCoalescingInterval];
  if (v8 == 0.0)
  {
    [(CNAutocompleteStore *)self executeFetchRequest:v6 delegate:v7];
  }

  else
  {
    [(CNAutocompleteStore *)self fetchCoalescingInterval];
    [(CNAutocompleteStore *)self executeFetchRequest:v6 afterDelay:v7 delegate:?];
  }
  v9 = ;

  return v9;
}

- (id)executeFetchRequest:(id)a3 afterDelay:(double)a4 delegate:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = CNALoggingContextDebug();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v44 = v8;
    v45 = 2048;
    v46 = a4;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling request %{private}@ after delay (%.3fs)", buf, 0x16u);
  }

  v11 = [v8 searchNames];
  v12 = [v11 count] == 1;

  if (v12)
  {
    v13 = [(CNAutocompleteStore *)self reproStringRecorder];
    v14 = [v8 searchString];
    [v13 recordString:v14];

    v15 = CNALoggingContextDebug();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(CNAutocompleteStore *)self reproStringRecorder];
      v17 = [v16 reproString];
      *buf = 138412290;
      v44 = v17;
      _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "Repro string: %@", buf, 0xCu);
    }
  }

  v18 = CNALoggingContextDebug();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(CNAutocompleteStore *)self currentFetchToken];
    *buf = 134217984;
    v44 = v19;
    _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Cancelling current fetch token (%p)", buf, 0xCu);
  }

  v20 = [(CNAutocompleteStore *)self currentFetchToken];
  [v20 cancel];

  v21 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  [(CNAutocompleteStore *)self setCurrentFetchToken:v21];
  v42 = 0;
  v22 = [v8 isValid:&v42];
  v23 = v42;
  if (v22)
  {
    v24 = [(CNAutocompleteStore *)self userSession];
    [v24 willStartExecutingRequest:v8];

    objc_initWeak(buf, self);
    v25 = [(CNAutocompleteStore *)self currentFetchToken];
    v26 = [(CNAutocompleteStore *)self scheduler];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__CNAutocompleteStore_executeFetchRequest_afterDelay_delegate___block_invoke_2;
    v34[3] = &unk_2781C4070;
    objc_copyWeak(&v37, buf);
    v35 = v8;
    v36 = v9;
    v27 = [v26 afterDelay:v34 performBlock:a4];
    [v25 addCancelable:v27];

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }

  else
  {
    v28 = CNALoggingContextDebug();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = v8;
      v45 = 2112;
      v46 = *&v23;
      _os_log_impl(&dword_2155FE000, v28, OS_LOG_TYPE_DEFAULT, "Fetch request is not valid: %@, error:%@, stopping.", buf, 0x16u);
    }

    v29 = [(CNAutocompleteStore *)self scheduler];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __63__CNAutocompleteStore_executeFetchRequest_afterDelay_delegate___block_invoke;
    v38[3] = &unk_2781C4048;
    v39 = v9;
    v40 = v21;
    v41 = v23;
    v30 = [v29 afterDelay:v38 performBlock:0.0];
  }

  v31 = [(CNAutocompleteStore *)self currentFetchToken];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void __63__CNAutocompleteStore_executeFetchRequest_afterDelay_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained queryHelper];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v10 currentFetchToken];
    v7 = [v3 executeFetchRequest:v5 delegate:v4 delegateToken:v6];

    v8 = [v10 currentFetchToken];
    if (v7 == v8)
    {
      __63__CNAutocompleteStore_executeFetchRequest_afterDelay_delegate___block_invoke_2_cold_1();
    }

    v9 = [v10 currentFetchToken];
    [v9 addCancelable:v7];

    WeakRetained = v10;
  }
}

- (id)executeFetchRequest:(id)a3 delegate:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CNALoggingContextDebug();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Executing request %@", buf, 0xCu);
  }

  v9 = [(CNAutocompleteStore *)self currentFetchToken];
  [v9 cancel];

  v10 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  [(CNAutocompleteStore *)self setCurrentFetchToken:v10];
  v28 = 0;
  v11 = [v6 isValid:&v28];
  v12 = v28;
  if (v11)
  {
    v13 = [(CNAutocompleteStore *)self userSession];
    [v13 willStartExecutingRequest:v6];

    v14 = [(CNAutocompleteStore *)self queryHelper];
    v15 = [(CNAutocompleteStore *)self currentFetchToken];
    v16 = [v14 executeFetchRequest:v6 delegate:v7 delegateToken:v15];

    v17 = [(CNAutocompleteStore *)self currentFetchToken];
    [v17 addCancelable:v16];
  }

  else
  {
    v18 = CNALoggingContextDebug();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Fetch request is not valid: %@, error:%@, stopping.", buf, 0x16u);
    }

    v19 = [(CNAutocompleteStore *)self scheduler];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __52__CNAutocompleteStore_executeFetchRequest_delegate___block_invoke;
    v24[3] = &unk_2781C4048;
    v25 = v7;
    v26 = v10;
    v27 = v12;
    v20 = [v19 afterDelay:v24 performBlock:0.0];

    v16 = v25;
  }

  v21 = [(CNAutocompleteStore *)self currentFetchToken];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)userSelectedResult:(id)a3 atSortedIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNAutocompleteStore *)self userSession];
  [v7 didSelectResult:v6 atSortedIndex:a4];

  v8 = [(CNAutocompleteStore *)self reproStringRecorder];
  [v8 clear];
}

- (void)ignoreResult:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 ignoreResultBlock];

  if (v8)
  {
    v9 = [(CNAutocompleteStore *)self scheduler];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__CNAutocompleteStore_ignoreResult_completionHandler___block_invoke;
    v10[3] = &unk_2781C40C0;
    v11 = v6;
    v12 = v7;
    [v9 performBlock:v10];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 1, 0);
  }
}

void __54__CNAutocompleteStore_ignoreResult_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ignoreResultBlock];
  v6 = 0;
  v3 = (v2)[2](v2, &v6);
  v4 = v6;

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

@end