@interface HFAppleMusicHomeAccountManager
+ (id)sharedInstance;
- (HFAppleMusicHomeAccountManager)init;
- (id)_fetchMediaAccountForHome:(id)a3;
- (id)_futureForQueryLimitForHome:(id)a3;
- (id)mediaAccountForHomeIdentifier:(id)a3;
- (void)_finishPendingPromisesWithMediaAccountInfo:(id)a3 forHome:(id)a4;
- (void)executeHomeMediaAccountFetchForAllHomes;
- (void)getHomeMediaAccountForHome:(id)a3 withCompletion:(id)a4;
- (void)setAMSiTunesAccount:(id)a3 forHome:(id)a4 completion:(id)a5;
@end

@implementation HFAppleMusicHomeAccountManager

+ (id)sharedInstance
{
  if (qword_280E02D58 != -1)
  {
    dispatch_once(&qword_280E02D58, &__block_literal_global_41);
  }

  v3 = _MergedGlobals_231;

  return v3;
}

void __48__HFAppleMusicHomeAccountManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HFAppleMusicHomeAccountManager);
  v1 = _MergedGlobals_231;
  _MergedGlobals_231 = v0;
}

- (HFAppleMusicHomeAccountManager)init
{
  v11.receiver = self;
  v11.super_class = HFAppleMusicHomeAccountManager;
  v2 = [(HFAppleMusicHomeAccountManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create(kHomeMediaAccountsDataModelUpdateQueue, 0);
    dataModelUpdateQueue = v2->_dataModelUpdateQueue;
    v2->_dataModelUpdateQueue = v3;

    v5 = dispatch_queue_create(kHomeMediaAccountsQueriesQueue, 0);
    concurrentQueryQueue = v2->_concurrentQueryQueue;
    v2->_concurrentQueryQueue = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

    v8 = objc_opt_new();
    homeIdentifierToMediaAccountMapping = v2->_homeIdentifierToMediaAccountMapping;
    v2->_homeIdentifierToMediaAccountMapping = v8;
  }

  return v2;
}

- (void)executeHomeMediaAccountFetchForAllHomes
{
  v18 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v4 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Fetching Media Accounts for All Homes", buf, 0xCu);
  }

  v6 = [(HFAppleMusicHomeAccountManager *)self homeIdentifierToMediaAccountMapping];
  v7 = v6 == 0;

  if (v7)
  {
    v8 = objc_opt_new();
    [(HFAppleMusicHomeAccountManager *)self setHomeIdentifierToMediaAccountMapping:v8];
  }

  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  v10 = [v9 homeManager];
  v11 = [v10 homes];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HFAppleMusicHomeAccountManager_executeHomeMediaAccountFetchForAllHomes__block_invoke;
  v13[3] = &unk_277DF5A80;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  [v11 na_each:v13];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
  v12 = *MEMORY[0x277D85DE8];
}

void __73__HFAppleMusicHomeAccountManager_executeHomeMediaAccountFetchForAllHomes__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Fetching ams_iTunesAccount for Home  %@", &v9, 0x16u);
  }

  v7 = [WeakRetained executeHomeMediaAccountFetchForHome:v3];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)mediaAccountForHomeIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v5 = [(HFAppleMusicHomeAccountManager *)self dataModelUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HFAppleMusicHomeAccountManager_mediaAccountForHomeIdentifier___block_invoke;
  block[3] = &unk_277DF5AA8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_barrier_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __64__HFAppleMusicHomeAccountManager_mediaAccountForHomeIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) homeIdentifierToMediaAccountMapping];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setAMSiTunesAccount:(id)a3 forHome:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v13 = [v10 uniqueIdentifier];
  v14 = [v12 ams_setiTunesAccount:v9 forHomeWithIdentifier:v13];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__HFAppleMusicHomeAccountManager_setAMSiTunesAccount_forHome_completion___block_invoke;
  v18[3] = &unk_277DF5AF8;
  v22 = v11;
  v23 = a2;
  v19 = v10;
  v20 = self;
  v21 = v9;
  v15 = v9;
  v16 = v11;
  v17 = v10;
  [v14 addFinishBlock:v18];
}

void __73__HFAppleMusicHomeAccountManager_setAMSiTunesAccount_forHome_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(*(a1 + 64));
      v13 = *(a1 + 32);
      *buf = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@ Error setting amsMediaAccount for home %@", buf, 0x16u);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, v4);
    }
  }

  else
  {
    v7 = MEMORY[0x277D2C900];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__HFAppleMusicHomeAccountManager_setAMSiTunesAccount_forHome_completion___block_invoke_11;
    v14[3] = &unk_277DF5AD0;
    v8 = *(a1 + 48);
    v14[4] = *(a1 + 40);
    v15 = v8;
    v16 = *(a1 + 32);
    v9 = *(a1 + 56);
    v17 = 0;
    v18 = v9;
    v10 = [v7 futureWithBlock:v14];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __73__HFAppleMusicHomeAccountManager_setAMSiTunesAccount_forHome_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) homeIdentifierToMediaAccountMapping];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) uniqueIdentifier];
  v6 = [v5 UUIDString];
  [v3 setObject:v4 forKey:v6];

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 56));
  }

  [v8 finishWithNoResult];
}

- (id)_fetchMediaAccountForHome:(id)a3
{
  v5 = a3;
  if (![v5 isMultiUserEnabled] || (-[HFAppleMusicHomeAccountManager _futureForQueryLimitForHome:](self, "_futureForQueryLimitForHome:", v5), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D2C900];
    v10 = MEMORY[0x277D85DD0];
    objc_copyWeak(v12, &location);
    v11 = v5;
    v12[1] = a2;
    v8 = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v6 = [v7 futureWithBlock:&v10 scheduler:v8];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __60__HFAppleMusicHomeAccountManager__fetchMediaAccountForHome___block_invoke(uint64_t a1, void *a2)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 isMultiUserEnabled];
    v8 = HFLogForCategory(5uLL);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = NSStringFromSelector(*(a1 + 48));
        v11 = *(a1 + 32);
        *buf = 138412802;
        v54 = v10;
        v55 = 2112;
        v56 = v11;
        v57 = 1024;
        LODWORD(v58) = [v11 isMultiUserEnabled];
        _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@ Now Fetching ams_iTunesAccount for Home [%@] MU enabled = %d", buf, 0x1Cu);
      }

      v12 = [*(a1 + 32) uniqueIdentifier];
      v13 = [v5 ams_mediaAccountForHomeWithIdentifier:v12];

      v50 = 0;
      v14 = [v13 resultWithTimeout:&v50 error:2.0];
      v15 = v50;
      v16 = v15;
      if (!v14 || v15)
      {
        if (v15)
        {
          if ([v15 code] == 13)
          {
            v33 = [WeakRetained concurrentQueryQueue];
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __60__HFAppleMusicHomeAccountManager__fetchMediaAccountForHome___block_invoke_2;
            v45[3] = &unk_277DF32A8;
            v45[4] = WeakRetained;
            v46 = *(a1 + 32);
            v47 = v3;
            dispatch_sync(v33, v45);

            v34 = HFLogForCategory(5uLL);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = NSStringFromSelector(*(a1 + 48));
              v36 = *(a1 + 32);
              *buf = 138412546;
              v54 = v35;
              v55 = 2112;
              v56 = v36;
              _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "%@ams_iTunesAccount migration is in flight for Home [%@]. We will finish the promise later when the information is available. Right now, returning...", buf, 0x16u);
            }

            v24 = 0;
            goto LABEL_26;
          }

          v44 = v13;
          v37 = [*(a1 + 32) uniqueIdentifier];
          v38 = [v37 UUIDString];
          v51 = v38;
          v39 = [MEMORY[0x277CBEB68] null];
          v52 = v39;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

          v40 = HFLogForCategory(5uLL);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = NSStringFromSelector(*(a1 + 48));
            v42 = *(a1 + 32);
            *buf = 138412802;
            v54 = v41;
            v55 = 2112;
            v56 = v42;
            v57 = 2112;
            v58 = v16;
            _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "%@ Failed to fetch ams_iTunesAccount for Home [%@] - [%@]", buf, 0x20u);
          }

          [v3 finishWithResult:v24];
          v13 = v44;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v17 = [*(a1 + 32) uniqueIdentifier];
        v18 = [v17 UUIDString];
        v59 = v18;
        v60 = v14;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];

        v20 = HFLogForCategory(5uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = NSStringFromSelector(*(a1 + 48));
          v22 = *(a1 + 32);
          *buf = 138412802;
          v54 = v21;
          v55 = 2112;
          v56 = v19;
          v57 = 2112;
          v58 = v22;
          _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "%@ Successfully fetched ams_iTunesAccount [%@] for Home [%@]", buf, 0x20u);
        }

        v23 = [WeakRetained dataModelUpdateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__HFAppleMusicHomeAccountManager__fetchMediaAccountForHome___block_invoke_17;
        block[3] = &unk_277DF3370;
        block[4] = WeakRetained;
        v24 = v19;
        v49 = v24;
        dispatch_barrier_sync(v23, block);

        [v3 finishWithResult:v24];
      }

      [WeakRetained _finishPendingPromisesWithMediaAccountInfo:v24 forHome:*(a1 + 32)];
LABEL_26:

      goto LABEL_27;
    }

    if (v9)
    {
      v27 = NSStringFromSelector(*(a1 + 48));
      v28 = *(a1 + 32);
      *buf = 138412546;
      v54 = v27;
      v55 = 2112;
      v56 = v28;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@ This Home [%@] does NOT have Multi-User enabled, returning", buf, 0x16u);
    }

    v29 = [MEMORY[0x277CCA9B8] hf_errorWithCode:57];
    [v3 finishWithError:v29];

    v30 = [*(a1 + 32) uniqueIdentifier];
    v31 = [v30 UUIDString];
    v61 = v31;
    v32 = [MEMORY[0x277CBEB68] null];
    v62[0] = v32;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];

    [v3 finishWithResult:v24];
  }

  else
  {
    v25 = HFLogForCategory(5uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412290;
      v54 = v26;
      _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "%@ This Home no longer exists, returning", buf, 0xCu);
    }

    v24 = [MEMORY[0x277CCA9B8] hf_errorWithCode:59];
    [v3 finishWithError:v24];
  }

LABEL_27:

  v43 = *MEMORY[0x277D85DE8];
}

void __60__HFAppleMusicHomeAccountManager__fetchMediaAccountForHome___block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) homeIdentifierToMediaAccountMapping];
  [v2 addEntriesFromDictionary:*(a1 + 40)];
}

void __60__HFAppleMusicHomeAccountManager__fetchMediaAccountForHome___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) homeIdentifierToFuturePromiseMapping];

  if (!v2)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) setHomeIdentifierToFuturePromiseMapping:v3];
  }

  v4 = [*(a1 + 32) homeIdentifierToFuturePromiseMapping];
  v5 = [*(a1 + 40) uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = [v4 objectForKey:v6];

  objc_opt_class();
  v18 = v7;
  if (objc_opt_isKindOfClass())
  {
    v8 = v18;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  [v13 addObject:*(a1 + 48)];
  v14 = [*(a1 + 32) homeIdentifierToFuturePromiseMapping];
  v15 = [v13 copy];
  v16 = [*(a1 + 40) uniqueIdentifier];
  v17 = [v16 UUIDString];
  [v14 setObject:v15 forKey:v17];
}

- (id)_futureForQueryLimitForHome:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  objc_initWeak(&location, self);
  v6 = [(HFAppleMusicHomeAccountManager *)self concurrentQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HFAppleMusicHomeAccountManager__futureForQueryLimitForHome___block_invoke;
  block[3] = &unk_277DF5B48;
  objc_copyWeak(&v22, &location);
  v7 = v5;
  v20 = v7;
  v21 = &v24;
  dispatch_sync(v6, block);

  if (*(v25 + 24) == 1)
  {
    v8 = [(HFAppleMusicHomeAccountManager *)self homeIdentifierToFuturePromiseMapping];
    v9 = v8 == 0;

    if (v9)
    {
      v10 = objc_opt_new();
      [(HFAppleMusicHomeAccountManager *)self setHomeIdentifierToFuturePromiseMapping:v10];
    }

    v11 = HFLogForCategory(5uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      v29 = v12;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Unable to query Home Media Account for Home [%@] query limit reached.\nWe will callback the request later when the information is available.", buf, 0x16u);
    }

    v13 = MEMORY[0x277D2C900];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HFAppleMusicHomeAccountManager__futureForQueryLimitForHome___block_invoke_22;
    v17[3] = &unk_277DF28D8;
    v17[4] = self;
    v18 = v7;
    v14 = [v13 futureWithBlock:v17];
  }

  else
  {
    v14 = 0;
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v24, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __62__HFAppleMusicHomeAccountManager__futureForQueryLimitForHome___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained homeIdentifierToActiveAMSQueriesMapping];

  if (!v2)
  {
    v3 = objc_opt_new();
    [WeakRetained setHomeIdentifierToActiveAMSQueriesMapping:v3];
  }

  v4 = [WeakRetained homeIdentifierToActiveAMSQueriesMapping];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = [v4 objectForKey:v6];

  if ([v7 unsignedIntegerValue] > 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v8 = [WeakRetained homeIdentifierToActiveAMSQueriesMapping];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "unsignedIntegerValue") + 1}];
    v10 = [*(a1 + 32) uniqueIdentifier];
    v11 = [v10 UUIDString];
    [v8 setObject:v9 forKey:v11];
  }
}

void __62__HFAppleMusicHomeAccountManager__futureForQueryLimitForHome___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) concurrentQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HFAppleMusicHomeAccountManager__futureForQueryLimitForHome___block_invoke_2;
  block[3] = &unk_277DF32A8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_sync(v4, block);
}

void __62__HFAppleMusicHomeAccountManager__futureForQueryLimitForHome___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) homeIdentifierToFuturePromiseMapping];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v2 objectForKey:v4];

  objc_opt_class();
  v16 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  [v11 addObject:*(a1 + 48)];
  v12 = [*(a1 + 32) homeIdentifierToFuturePromiseMapping];
  v13 = [v11 copy];
  v14 = [*(a1 + 40) uniqueIdentifier];
  v15 = [v14 UUIDString];
  [v12 setObject:v13 forKey:v15];
}

- (void)_finishPendingPromisesWithMediaAccountInfo:(id)a3 forHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFAppleMusicHomeAccountManager *)self concurrentQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HFAppleMusicHomeAccountManager__finishPendingPromisesWithMediaAccountInfo_forHome___block_invoke;
  block[3] = &unk_277DF32A8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __85__HFAppleMusicHomeAccountManager__finishPendingPromisesWithMediaAccountInfo_forHome___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] homeIdentifierToActiveAMSQueriesMapping];
  v3 = [a1[5] uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v2 objectForKey:v4];

  v6 = [v5 unsignedIntegerValue];
  v7 = [a1[4] homeIdentifierToActiveAMSQueriesMapping];
  if (v6 == 1)
  {
    v8 = [a1[5] uniqueIdentifier];
    v9 = [v8 UUIDString];
    [v7 removeObjectForKey:v9];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "unsignedIntegerValue", v5) - 1}];
    v9 = [a1[5] uniqueIdentifier];
    v10 = [v9 UUIDString];
    [v7 setObject:v8 forKey:v10];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [a1[4] homeIdentifierToFuturePromiseMapping];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [a1[4] homeIdentifierToFuturePromiseMapping];
        v18 = [v17 objectForKeyedSubscript:v16];

        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __85__HFAppleMusicHomeAccountManager__finishPendingPromisesWithMediaAccountInfo_forHome___block_invoke_2;
        v22[3] = &unk_277DF29A0;
        v23 = a1[6];
        [v18 na_each:v22];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v19 = [a1[4] homeIdentifierToFuturePromiseMapping];
  [v19 removeAllObjects];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __85__HFAppleMusicHomeAccountManager__finishPendingPromisesWithMediaAccountInfo_forHome___block_invoke_2(uint64_t result, void *a2)
{
  if (a2)
  {
    return [a2 finishWithResult:*(result + 32)];
  }

  return result;
}

- (void)getHomeMediaAccountForHome:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 uniqueIdentifier];
  v10 = [v9 UUIDString];
  v11 = [(HFAppleMusicHomeAccountManager *)self mediaAccountForHomeIdentifier:v10];

  if (v11)
  {
    v8[2](v8, v11);
  }

  else
  {
    v12 = [(HFAppleMusicHomeAccountManager *)self executeHomeMediaAccountFetchForHome:v7];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__HFAppleMusicHomeAccountManager_getHomeMediaAccountForHome_withCompletion___block_invoke;
    v14[3] = &unk_277DF5B70;
    v17 = a2;
    v14[4] = self;
    v15 = v7;
    v16 = v8;
    v13 = [v12 addCompletionBlock:v14];
  }
}

void __76__HFAppleMusicHomeAccountManager_getHomeMediaAccountForHome_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(5uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(*(a1 + 56));
      v19 = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v6;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@ Error fetching mediaAccount [%@]", &v19, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 56));
    v11 = [*(a1 + 40) uniqueIdentifier];
    v12 = [v11 UUIDString];
    v13 = [v5 objectForKeyedSubscript:v12];
    v19 = 138412802;
    v20 = v10;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Fetched Home Media Account [%@]", &v19, 0x20u);

    goto LABEL_6;
  }

  v14 = *(a1 + 48);
  v15 = [*(a1 + 40) uniqueIdentifier];
  v16 = [v15 UUIDString];
  v17 = [v5 objectForKeyedSubscript:v16];
  (*(v14 + 16))(v14, v17);

  v18 = *MEMORY[0x277D85DE8];
}

@end