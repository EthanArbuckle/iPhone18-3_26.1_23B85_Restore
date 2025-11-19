@interface NMSMusicRecommendationManager
+ (BOOL)_shouldComputeLibraryRecommendations;
+ (id)sharedManager;
- (BOOL)_isLibraryRecommendationExpired;
- (BOOL)_updateRecommendationsSelections;
- (BOOL)_updateWithRecommendations:(id)a3;
- (BOOL)hasSelectedRecommendationWithIdentifier:(id)a3;
- (NMSMusicRecommendationManager)init;
- (id)_expirationDateForUpdateDate:(id)a3 withOffsetDays:(int64_t)a4;
- (id)_fetchAddedDateForContainer:(id)a3;
- (id)_sortedContainersBasedOnRecency;
- (void)_finishLoadingContentsWithResponse:(id)a3;
- (void)_handleActiveAccountDidChangeNotification:(id)a3;
- (void)_handleCloudControllerIsCloudEnabledDidChangeNotification:(id)a3;
- (void)_handleMediaLibraryDidChangeNotification:(id)a3;
- (void)_handleMediaLibraryDynamicPropertiesDidChangeNotification:(id)a3;
- (void)_handleMusicLibraryContentsDidChangeNotification:(id)a3;
- (void)_handlePairedDeviceDidBecomeActiveNotification:(id)a3;
- (void)_handlePairingFinishedNotification:(id)a3;
- (void)_handleRecommendationSelectionsDidChangeNotification:(id)a3;
- (void)_handleRecommendationStoreContentsDidChangeNotification:(id)a3;
- (void)_handleSubscriptionStatusDidChangeNotification:(id)a3;
- (void)_invalidateLibraryRecommendationExpirationTimer;
- (void)_notifyMusicRecommendationsDidUpdateNotification;
- (void)_persistUpdatedRecommendationsWithResponse:(id)a3;
- (void)_registerForPairingFinishedNotification;
- (void)_reloadLibraryRecommendations;
- (void)_reloadRecommendationContentsIfNecessary;
- (void)_reloadRecommendationsFromDefaultsWithCompletion:(id)a3;
- (void)_removePreviousCachedRecommendationsResponses;
- (void)_removePreviousRecommendationDefaults;
- (void)_scheduleNextLibraryRecommendationReloadIfNecessary;
- (void)_unregisterForPairingFinishedNotification;
- (void)dealloc;
- (void)fetchRecommendationsWithQueue:(id)a3 completion:(id)a4;
- (void)persistRecommendationsSelections:(id)a3;
- (void)setWantsContentsUpdate:(BOOL)a3;
@end

@implementation NMSMusicRecommendationManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[NMSMusicRecommendationManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __46__NMSMusicRecommendationManager_sharedManager__block_invoke()
{
  sharedManager___sharedManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NMSMusicRecommendationManager)init
{
  v13.receiver = self;
  v13.super_class = NMSMusicRecommendationManager;
  v2 = [(NMSMusicRecommendationManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoMusicSync.NMSMusicRecommendationManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__handleRecommendationStoreContentsDidChangeNotification_ name:@"com.apple.nanomusicsync.reco-store" object:0];
    [v6 addObserver:v2 selector:sel__handleRecommendationSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.reco-selections" object:0];
    [v6 addObserver:v2 selector:sel__handleMediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D8] object:0];
    [v6 addObserver:v2 selector:sel__handleMediaLibraryDynamicPropertiesDidChangeNotification_ name:*MEMORY[0x277CD58E8] object:0];
    [v6 addObserver:v2 selector:sel__handleCloudControllerIsCloudEnabledDidChangeNotification_ name:*MEMORY[0x277CD5670] object:0];
    v7 = *MEMORY[0x277D2B518];
    v8 = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
    [v6 addObserver:v2 selector:sel__handleMusicLibraryContentsDidChangeNotification_ name:v7 object:v8];

    [v6 addObserver:v2 selector:sel__handlePairedDeviceDidBecomeActiveNotification_ name:*MEMORY[0x277D2BC48] object:0];
    v9 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [v9 beginGeneratingLibraryChangeNotifications];

    v10 = objc_alloc_init(NMSInitialCloudLibraryImportObserver);
    initialCloudLibraryImportObserver = v2->_initialCloudLibraryImportObserver;
    v2->_initialCloudLibraryImportObserver = v10;

    [(NMSMusicRecommendationManager *)v2 fetchRecommendationsWithQueue:0 completion:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [v3 endGeneratingLibraryChangeNotifications];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = NMSMusicRecommendationManager;
  [(NMSMusicRecommendationManager *)&v6 dealloc];
}

- (void)setWantsContentsUpdate:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__NMSMusicRecommendationManager_setWantsContentsUpdate___block_invoke;
  v4[3] = &unk_27993E610;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

uint64_t __56__NMSMusicRecommendationManager_setWantsContentsUpdate___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 56) != *(result + 40))
  {
    v1 = result;
    v2 = NMLogForCategory(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 40))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] set wantsContentsUpdate: %@", &v6, 0xCu);
    }

    *(*(v1 + 32) + 56) = *(v1 + 40);
    [*(v1 + 32) _removeLegacyRecommendationsDefaultsIfNecessary];
    v4 = *(v1 + 32);
    if (v4[56] == 1)
    {
      [v4 _registerForPairingFinishedNotification];
    }

    else
    {
      [v4 _unregisterForPairingFinishedNotification];
    }

    result = [*(v1 + 32) _reloadRecommendationContentsIfNecessary];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_registerForPairingFinishedNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handlePairingFinishedNotification_ name:*MEMORY[0x277D2BC68] object:0];

  v4 = [MEMORY[0x277D2BCF8] sharedInstance];
}

- (void)_unregisterForPairingFinishedNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D2BC68] object:0];
}

- (void)fetchRecommendationsWithQueue:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = NMLogForCategory(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x25F865990](v7);
    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[Recommendation] Will fetch recommendations for request: %@, queue: %@, completion: %@", buf, 0x20u);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke;
  v16[3] = &unk_27993E978;
  v17 = v6;
  v18 = self;
  v19 = v8;
  v20 = v7;
  v12 = v7;
  v13 = v8;
  v14 = v6;
  dispatch_async(queue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = dispatch_get_global_queue(21, 0);
  }

  v4 = v3;
  v5 = *(a1 + 40);
  if (*(v5 + 40) == 1)
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[Recommendation] Will return existing recommendations for request: %@", buf, 0xCu);
    }

    if (*(a1 + 56))
    {
      v8 = [*(*(a1 + 40) + 8) copy];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_79;
      block[3] = &unk_27993E8A8;
      v35 = *(a1 + 48);
      v9 = *(a1 + 56);
      v36 = v8;
      v37 = v9;
      v10 = v8;
      dispatch_async(v4, block);
    }
  }

  else
  {
    v11 = *(v5 + 32) == 0;
    v12 = NMLogForCategory(5);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v15 = *(a1 + 48);
        *buf = 138412290;
        v39 = v15;
        _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEFAULT, "[Recommendation] Initial fetch started for request: %@", buf, 0xCu);
      }

      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      objc_initWeak(buf, *(a1 + 40));
      v17 = *(a1 + 40);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_80;
      v30[3] = &unk_27993E950;
      v31 = *(a1 + 48);
      objc_copyWeak(&v33, buf);
      v18 = v16;
      v32 = v18;
      [v17 _reloadRecommendationsFromDefaultsWithCompletion:v30];
      v19 = *(a1 + 40);
      v20 = *(v19 + 32);
      *(v19 + 32) = v18;
      v21 = v18;

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v13)
      {
        v14 = *(a1 + 48);
        *buf = 138412290;
        v39 = v14;
        _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEFAULT, "[Recommendation] Will wait for initial fetch to complete for request: %@", buf, 0xCu);
      }
    }

    if (*(a1 + 56))
    {
      v22 = *(a1 + 40);
      v23 = *(v22 + 32);
      v24 = *(v22 + 16);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_82;
      v26[3] = &unk_27993E978;
      v26[4] = v22;
      v27 = v4;
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      dispatch_group_notify(v23, v24, v26);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_79(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Calling completion handler with existing recommendations for request: %@", &v7, 0xCu);
  }

  v4 = a1[5];
  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_80(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Initial fetch complete for request: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 40) = 1;
  }

  dispatch_group_leave(*(a1 + 40));

  v6 = *MEMORY[0x277D85DE8];
}

void __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_82(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_2;
  block[3] = &unk_27993E8A8;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = v2;
  v9 = v4;
  v5 = v2;
  dispatch_async(v3, block);
}

uint64_t __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Calling completion handler with newly fetched recommendations for request: %@", &v7, 0xCu);
  }

  v4 = a1[5];
  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)hasSelectedRecommendationWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NMSyncDefaults sharedDefaults];
  v5 = [v4 musicRecommendationDict];
  v6 = [v5 objectForKeyedSubscript:v3];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)persistRecommendationsSelections:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] Persisting recommendation selections for: %@", buf, 0xCu);
  }

  v5 = +[NMSyncDefaults sharedDefaults];
  v6 = [v5 musicRecommendationDict];
  v7 = [v6 mutableCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isSelected", v18)}];
        v15 = [v13 identifier];
        [v7 setObject:v14 forKeyedSubscript:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  [v5 setMusicRecommendationDict:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleSubscriptionStatusDidChangeNotification:(id)a3
{
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_INFO, "[Recommendation] _handleSubscriptionStatusDidChangeNotification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NMSMusicRecommendationManager__handleSubscriptionStatusDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

void __80__NMSMusicRecommendationManager__handleSubscriptionStatusDidChangeNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[NMSSubscriptionManager sharedManager];
  v3 = [v2 hasCapability:1];

  if ((v3 & 1) == 0)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = +[NMSSubscriptionManager sharedManager];
      *buf = 134217984;
      v10 = [v5 subscriptionCapabilities];
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] Subscription capabilities changed to %lu. Removing recommendations defaults.", buf, 0xCu);
    }

    [*(a1 + 32) _removePreviousRecommendationDefaults];
    [*(a1 + 32) _removePreviousCachedRecommendationsResponses];
    v6 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__NMSMusicRecommendationManager__handleSubscriptionStatusDidChangeNotification___block_invoke_86;
    v8[3] = &unk_27993E9A0;
    v8[4] = v6;
    [v6 _reloadRecommendationsFromDefaultsWithCompletion:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __80__NMSMusicRecommendationManager__handleSubscriptionStatusDidChangeNotification___block_invoke_86(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleActiveAccountDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__NMSMusicRecommendationManager__handleActiveAccountDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __75__NMSMusicRecommendationManager__handleActiveAccountDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Active account is changed. Removing recommendations defaults of previous account.", buf, 2u);
  }

  [*(a1 + 32) _removePreviousRecommendationDefaults];
  [*(a1 + 32) _removePreviousCachedRecommendationsResponses];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__NMSMusicRecommendationManager__handleActiveAccountDidChangeNotification___block_invoke_87;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

uint64_t __75__NMSMusicRecommendationManager__handleActiveAccountDidChangeNotification___block_invoke_87(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handlePairingFinishedNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NMSMusicRecommendationManager__handlePairingFinishedNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __68__NMSMusicRecommendationManager__handlePairingFinishedNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Pairing finished. Reloading recommendations.", v4, 2u);
  }

  return [*(a1 + 32) _reloadRecommendationContentsIfNecessary];
}

- (void)_handleRecommendationStoreContentsDidChangeNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__NMSMusicRecommendationManager__handleRecommendationStoreContentsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __89__NMSMusicRecommendationManager__handleRecommendationStoreContentsDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[Recommendation] Recommendation store contents did change. Reloading recommendations.", buf, 2u);
    }

    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__NMSMusicRecommendationManager__handleRecommendationStoreContentsDidChangeNotification___block_invoke_88;
    v7[3] = &unk_27993E9A0;
    v7[4] = v6;
    [v6 _reloadRecommendationsFromDefaultsWithCompletion:v7];
  }
}

uint64_t __89__NMSMusicRecommendationManager__handleRecommendationStoreContentsDidChangeNotification___block_invoke_88(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleRecommendationSelectionsDidChangeNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__NMSMusicRecommendationManager__handleRecommendationSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __86__NMSMusicRecommendationManager__handleRecommendationSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Recommendation selections did change.", buf, 2u);
  }

  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"IsInProcessNotification"];
  v5 = [v4 BOOLValue];

  result = [*(a1 + 40) _updateRecommendationsSelections];
  if ((v5 & 1) != 0 || result)
  {
    v7 = +[NMSyncDefaults sharedDefaults];
    [v7 setLastUserPinningChangeDateForBundleID:@"com.apple.NanoMusic"];

    v8 = NMLogForCategory(12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "Music: Set last user pinning change date, due to change in recommendation selections.", v9, 2u);
    }

    return [*(a1 + 40) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleMediaLibraryDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NMSMusicRecommendationManager__handleMediaLibraryDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __74__NMSMusicRecommendationManager__handleMediaLibraryDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Media Library did change. Reloading recommendations.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__NMSMusicRecommendationManager__handleMediaLibraryDidChangeNotification___block_invoke_89;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

uint64_t __74__NMSMusicRecommendationManager__handleMediaLibraryDidChangeNotification___block_invoke_89(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleMediaLibraryDynamicPropertiesDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NMSMusicRecommendationManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __91__NMSMusicRecommendationManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Media Library dynamic properties did change. Reloading recommendations.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __91__NMSMusicRecommendationManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke_90;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

uint64_t __91__NMSMusicRecommendationManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke_90(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleCloudControllerIsCloudEnabledDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NMSMusicRecommendationManager__handleCloudControllerIsCloudEnabledDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __91__NMSMusicRecommendationManager__handleCloudControllerIsCloudEnabledDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Is Cloud Enabled did change. Reloading recommendations.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __91__NMSMusicRecommendationManager__handleCloudControllerIsCloudEnabledDidChangeNotification___block_invoke_91;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

uint64_t __91__NMSMusicRecommendationManager__handleCloudControllerIsCloudEnabledDidChangeNotification___block_invoke_91(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleMusicLibraryContentsDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMusicRecommendationManager__handleMusicLibraryContentsDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __82__NMSMusicRecommendationManager__handleMusicLibraryContentsDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Media library updated. Reloading recommendations.", v4, 2u);
  }

  return [*(a1 + 32) _reloadRecommendationContentsIfNecessary];
}

- (void)_handlePairedDeviceDidBecomeActiveNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NMSMusicRecommendationManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __80__NMSMusicRecommendationManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Paired device became active. Reloading recommendations.", buf, 2u);
  }

  [*(a1 + 32) _reloadRecommendationContentsIfNecessary];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__NMSMusicRecommendationManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke_92;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

uint64_t __80__NMSMusicRecommendationManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke_92(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_reloadRecommendationContentsIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_wantsContentsUpdate)
  {
    if ([objc_opt_class() _shouldComputeLibraryRecommendations])
    {
      initialCloudLibraryImportObserver = self->_initialCloudLibraryImportObserver;
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __73__NMSMusicRecommendationManager__reloadRecommendationContentsIfNecessary__block_invoke;
      v4[3] = &unk_27993DD20;
      v4[4] = self;
      [(NMSInitialCloudLibraryImportObserver *)initialCloudLibraryImportObserver performBlockWhenLibraryIsReady:v4];
    }
  }
}

void __73__NMSMusicRecommendationManager__reloadRecommendationContentsIfNecessary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NMSMusicRecommendationManager__reloadRecommendationContentsIfNecessary__block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = v1;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v2, v3);
}

- (void)_reloadRecommendationsFromDefaultsWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v5 = self->_queue;
  v6 = [MEMORY[0x277D7FCA0] activeAccount];
  v7 = [v6 accountDSID];

  if ([v7 length])
  {
    v8 = +[NMSyncDefaults sharedDefaults];
    v9 = [v8 cachedRecommendationsData];
  }

  else
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] Not using cached store recommendations since we no longer have an active account.", buf, 2u);
    }

    v9 = 0;
  }

  v10 = objc_alloc_init(NMSMusicRecommendationsRequest);
  [(NMSMusicRecommendationsRequest *)v10 setUseCachedDataOnly:1];
  [(NMSMusicRecommendationsRequest *)v10 setCachedData:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__NMSMusicRecommendationManager__reloadRecommendationsFromDefaultsWithCompletion___block_invoke;
  v13[3] = &unk_27993E9F0;
  v11 = v5;
  v14 = v11;
  objc_copyWeak(&v16, &location);
  v12 = v4;
  v15 = v12;
  [(NMSMusicRecommendationsRequest *)v10 performWithResponseHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __82__NMSMusicRecommendationManager__reloadRecommendationsFromDefaultsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMusicRecommendationManager__reloadRecommendationsFromDefaultsWithCompletion___block_invoke_2;
  block[3] = &unk_27993E9C8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __82__NMSMusicRecommendationManager__reloadRecommendationsFromDefaultsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) recommendations];
    v3 = [v2 array];
    v4 = [WeakRetained _updateWithRecommendations:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)_notifyMusicRecommendationsDidUpdateNotification
{
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[Recommendation] Notifying clients about updated recommendations.", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"NMSMusicRecommendationsDidUpdateNotification" object:self];
}

- (void)_reloadLibraryRecommendations
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NMSMusicRecommendationManager *)self _isLibraryRecommendationExpired];
  v4 = NMLogForCategory(5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] evaluating library music recommendations.", buf, 2u);
    }

    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [(NMSMusicRecommendationManager *)self _sortedContainersBasedOnRecency];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [v13 type];
          v15 = v6;
          if (v14)
          {
            if (v14 != 1)
            {
              continue;
            }

            v15 = v7;
          }

          v16 = [v13 persistentID];
          [v15 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v17 = [v6 count];
    if (v17 + [v7 count])
    {
      v18 = +[NMSyncDefaults sharedDefaults];
      [v18 beginBatchUpdates];
      v21 = [v6 copy];
      [v18 setLibraryRecommendationPlaylists:v21];

      v22 = [v7 copy];
      [v18 setLibraryRecommendationAlbums:v22];

      v23 = [MEMORY[0x277CBEAA8] date];
      v24 = [(NMSMusicRecommendationManager *)self _expirationDateForUpdateDate:v23 withOffsetDays:3];
      [v18 setLibraryRecommendationExpirationDate:v24];

      [v18 endBatchUpdates];
      [(NMSMusicRecommendationManager *)self _scheduleNextLibraryRecommendationReloadIfNecessary];
    }

    else
    {
      v18 = NMLogForCategory(5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "[Recommendation] Library music recommendations are empty, skipping persisting.", buf, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v19 = +[NMSyncDefaults sharedDefaults];
      v20 = [v19 libraryRecommendationExpirationDate];
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] NOT evaluating library music recommendations; expiration date is: %{public}@.", buf, 0xCu);
    }

    [(NMSMusicRecommendationManager *)self _scheduleNextLibraryRecommendationReloadIfNecessary];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_sortedContainersBasedOnRecency
{
  v78[5] = *MEMORY[0x277D85DE8];
  v55 = [MEMORY[0x277CBEB18] array];
  v50 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  v4 = MEMORY[0x277D2B5A8];
  v5 = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4C0] equalToValue:MEMORY[0x277CBEC28]];
  v78[0] = v6;
  v7 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4B0] equalToValue:MEMORY[0x277CBEC38]];
  v78[1] = v7;
  v8 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4F0] equalToValue:v5];
  v78[2] = v8;
  v9 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4E8] equalToValue:v5];
  v78[3] = v9;
  v10 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4B8] equalToValue:v5];
  v78[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:5];
  v12 = [v4 predicateMatchingPredicates:v11];

  v57 = v12;
  v13 = [MEMORY[0x277D2B5C8] unrestrictedQueryWithLibrary:v3 predicate:v12 orderingTerms:0];
  v14 = *MEMORY[0x277D2B4A8];
  v77[0] = *MEMORY[0x277D2B4D8];
  v77[1] = v14;
  v15 = *MEMORY[0x277D2B4E0];
  v77[2] = *MEMORY[0x277D2B4A0];
  v77[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke;
  v70[3] = &unk_27993EA18;
  v17 = v3;
  v71 = v17;
  v18 = v55;
  v72 = v18;
  v56 = v13;
  [v13 enumeratePersistentIDsAndProperties:v16 usingBlock:v70];

  v19 = [MEMORY[0x277CBEB58] set];
  v54 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B580] equalToValue:&unk_286C8D718];
  v20 = [MEMORY[0x277D2B620] unrestrictedQueryWithLibrary:v17 predicate:? orderingTerms:?];
  v76 = *MEMORY[0x277D2B530];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke_107;
  v68[3] = &unk_27993EA40;
  v22 = v19;
  v69 = v22;
  v53 = v20;
  [v20 enumeratePersistentIDsAndProperties:v21 usingBlock:v68];

  v52 = [MEMORY[0x277D2B5D0] predicateWithProperty:*MEMORY[0x277D2B490] values:v22];
  v23 = [MEMORY[0x277D2B5A0] unrestrictedAllItemsQueryWithlibrary:v17 predicate:? orderingTerms:?];
  v24 = *MEMORY[0x277D2B478];
  v75[0] = *MEMORY[0x277D2B480];
  v75[1] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke_2;
  v66[3] = &unk_27993EA40;
  v26 = v50;
  v67 = v26;
  v51 = v23;
  [v23 enumeratePersistentIDsAndProperties:v25 usingBlock:v66];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v27 = v18;
  v28 = [v27 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v63;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v63 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v62 + 1) + 8 * i);
        v33 = [(NMSMusicRecommendationManager *)self _fetchAddedDateForContainer:v32];
        [v32 setAddedDate:v33];
      }

      v29 = [v27 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v29);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v34 = v26;
  v35 = [v34 countByEnumeratingWithState:&v58 objects:v73 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v59;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v58 + 1) + 8 * j);
        v40 = [(NMSMusicRecommendationManager *)self _fetchAddedDateForContainer:v39];
        [v39 setAddedDate:v40];
      }

      v36 = [v34 countByEnumeratingWithState:&v58 objects:v73 count:16];
    }

    while (v36);
  }

  v41 = [MEMORY[0x277CBEB18] arrayWithArray:v27];
  [v41 addObjectsFromArray:v34];
  [v41 sortUsingComparator:&__block_literal_global_112];
  v42 = [v41 count];
  v43 = +[NMSyncDefaults sharedDefaults];
  v44 = [v43 minimumNumberOfRecentMusicModelObjects];
  v45 = [v44 unsignedIntegerValue];

  if (v42 >= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = v42;
  }

  v47 = [v41 subarrayWithRange:{0, v46}];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

void __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[3] || (v6 = [objc_alloc(MEMORY[0x277D2B5C8]) initWithPersistentID:a2 inLibrary:*(a1 + 32)], objc_msgSend(MEMORY[0x277D2B620], "containerQueryWithContainer:", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasEntities"), v7, v6, v8))
  {
    v9 = [NMSContainer alloc];
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v11 = [(NMSContainer *)v9 initWithPersistentID:v10 name:*a3 type:0];

    [(NMSContainer *)v11 setPlayedDate:a3[1]];
    [(NMSContainer *)v11 setAddedDate:a3[2]];
    [*(a1 + 40) addObject:v11];
  }
}

void __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [NMSContainer alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v8 = [(NMSContainer *)v6 initWithPersistentID:v7 name:*a3 type:1];

  [(NMSContainer *)v8 setPlayedDate:a3[1]];
  [*(a1 + 32) addObject:v8];
}

uint64_t __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 addedDate];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v5 playedDate];

  [v9 doubleValue];
  v11 = v10;

  if (v8 >= v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v4 addedDate];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v4 playedDate];

  [v16 doubleValue];
  v18 = v17;

  if (v15 >= v18)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  if (v12 < v19)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)_fetchAddedDateForContainer:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 type];
  v5 = MEMORY[0x277D2B538];
  if (v4)
  {
    v5 = MEMORY[0x277D2B530];
  }

  v6 = *v5;
  v7 = MEMORY[0x277D2B5C0];
  v8 = [v3 persistentID];
  v9 = [v7 predicateWithProperty:v6 value:v8 comparison:1];

  v10 = MEMORY[0x277D2B620];
  v11 = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  v12 = [v10 unrestrictedAllItemsQueryWithlibrary:v11 predicate:v9 orderingTerms:0];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v13 = [v3 addedDate];
  v14 = v13;
  v15 = &unk_286C8D730;
  if (v13)
  {
    v15 = v13;
  }

  v26 = v15;

  v27[0] = *MEMORY[0x277D2B540];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__NMSMusicRecommendationManager__fetchAddedDateForContainer___block_invoke;
  v20[3] = &unk_27993EA88;
  v20[4] = &v21;
  [v12 enumeratePersistentIDsAndProperties:v16 usingBlock:v20];

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __61__NMSMusicRecommendationManager__fetchAddedDateForContainer___block_invoke(uint64_t a1, uint64_t a2, id *a3)
{
  [*(*(*(a1 + 32) + 8) + 40) doubleValue];
  v6 = v5;
  [*a3 doubleValue];
  if (v6 < v7)
  {
    v8 = *a3;
    v9 = (*(*(a1 + 32) + 8) + 40);

    objc_storeStrong(v9, v8);
  }
}

+ (BOOL)_shouldComputeLibraryRecommendations
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 isPaired];

  return v3;
}

- (void)_finishLoadingContentsWithResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 recommendations];
  v6 = [v5 array];
  v7 = [(NMSMusicRecommendationManager *)self _updateWithRecommendations:v6];

  [(NMSMusicRecommendationManager *)self _persistUpdatedRecommendationsWithResponse:v4];
  if (v7)
  {

    [(NMSMusicRecommendationManager *)self _notifyMusicRecommendationsDidUpdateNotification];
  }
}

- (BOOL)_updateWithRecommendations:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[NMSyncDefaults sharedDefaults];
  v6 = [v5 musicRecommendationDict];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v6 objectForKeyedSubscript:v13];

        if (v14)
        {
          [v12 setSelected:{objc_msgSend(v14, "BOOLValue")}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  v15 = [(NSArray *)self->_recommendations isEqualToArray:v7];
  if (!v15)
  {
    v16 = [v7 copy];
    recommendations = self->_recommendations;
    self->_recommendations = v16;

    v18 = NMLogForCategory(5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_recommendations;
      *buf = 138412290;
      v27 = v19;
      _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "[Recommendation] Recommendations contents updated: %@", buf, 0xCu);
    }

    [(NMSMusicRecommendationManager *)self persistRecommendationsSelections:self->_recommendations];
  }

  v20 = *MEMORY[0x277D85DE8];
  return !v15;
}

- (BOOL)_updateRecommendationsSelections
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[NMSyncDefaults sharedDefaults];
  v4 = [v3 musicRecommendationDict];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_recommendations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    v19 = v6 != 0;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v4 objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = [v14 BOOLValue];
        }

        else
        {
          v15 = 1;
        }

        v9 |= v15 ^ [v12 isSelected];
        [v12 setSelected:v15];
      }

      v8 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);

    if ((v9 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      recommendations = self->_recommendations;
      *buf = 138412290;
      v25 = recommendations;
      _os_log_impl(&dword_25B27B000, &v5->super, OS_LOG_TYPE_DEFAULT, "[Recommendation] Recommendations selections updated: %@", buf, 0xCu);
    }

    v7 = v19;
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_persistUpdatedRecommendationsWithResponse:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_recommendations;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "isSelected", v21)}];
        v13 = [v11 identifier];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v14 = [v4 cachedData];
  if ([v14 length] >= 0x55731)
  {
    v15 = NMLogForCategory(5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(NMSMusicRecommendationManager *)v14 _persistUpdatedRecommendationsWithResponse:v15];
    }

    v16 = [MEMORY[0x277CBEA90] data];

    v14 = v16;
  }

  v17 = +[NMSyncDefaults sharedDefaults];
  [v17 beginBatchUpdates];
  v18 = [v5 copy];
  [v17 setMusicRecommendationDict:v18];

  [v17 setCachedRecommendationsData:v14];
  v19 = [MEMORY[0x277CBEAA8] date];
  [v17 setCatalogRecommendationsLastUpdateDate:v19];

  [v17 endBatchUpdates];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removePreviousRecommendationDefaults
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_wantsContentsUpdate)
  {
    v17 = +[NMSyncDefaults sharedDefaults];
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_recommendations;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:NMSRecommendationRecentMusicIdentifier];

          if (v11)
          {
            v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isSelected")}];
            v13 = [v9 identifier];
            [v3 setObject:v12 forKeyedSubscript:v13];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    [v17 beginBatchUpdates];
    v14 = [v3 copy];
    [v17 setMusicRecommendationDict:v14];

    [v17 setCachedRecommendationsData:0];
    [v17 setCatalogRecommendationsLastUpdateDate:0];
    [v17 setLibraryRecommendationExpirationDate:0];
    [v17 endBatchUpdates];
    v15 = [[NMSMutableMediaSyncInfo alloc] initWithTarget:3];
    [(NMSMutableMediaSyncInfo *)v15 synchronize];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removePreviousCachedRecommendationsResponses
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25B27B000, log, OS_LOG_TYPE_ERROR, "[Recommendation] Failed to remove data from disk at url: %@ due to read error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleNextLibraryRecommendationReloadIfNecessary
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_wantsContentsUpdate)
  {
    [(NMSMusicRecommendationManager *)self _invalidateLibraryRecommendationExpirationTimer];
    v3 = +[NMSyncDefaults sharedDefaults];
    v4 = [v3 libraryRecommendationExpirationDate];

    v5 = [MEMORY[0x277CBEAA8] date];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;

    v8 = NMLogForCategory(5);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 <= 0.0)
    {
      if (v9)
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Reload) Skipped scheduling library reload with expiration date: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 138412546;
        v19 = v4;
        v20 = 2048;
        v21 = v7;
        _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Reload) Scheduling library expiration timer with date: %@ (in %f seconds)", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
      libraryRecommendationExpirationTimer = self->_libraryRecommendationExpirationTimer;
      self->_libraryRecommendationExpirationTimer = v10;

      v12 = self->_libraryRecommendationExpirationTimer;
      v13 = dispatch_walltime(0, (v7 * 1000000000.0));
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0xDF8475800uLL);
      v14 = self->_libraryRecommendationExpirationTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __84__NMSMusicRecommendationManager__scheduleNextLibraryRecommendationReloadIfNecessary__block_invoke;
      handler[3] = &unk_27993DC58;
      objc_copyWeak(&v17, buf);
      dispatch_source_set_event_handler(v14, handler);
      dispatch_resume(self->_libraryRecommendationExpirationTimer);
      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __84__NMSMusicRecommendationManager__scheduleNextLibraryRecommendationReloadIfNecessary__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Reload) Expiration timer fired.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _invalidateLibraryRecommendationExpirationTimer];
    [v4 _reloadRecommendationContentsIfNecessary];
  }
}

- (void)_invalidateLibraryRecommendationExpirationTimer
{
  dispatch_assert_queue_V2(self->_queue);
  libraryRecommendationExpirationTimer = self->_libraryRecommendationExpirationTimer;
  if (libraryRecommendationExpirationTimer)
  {
    dispatch_source_cancel(libraryRecommendationExpirationTimer);
    v4 = self->_libraryRecommendationExpirationTimer;
    self->_libraryRecommendationExpirationTimer = 0;
  }
}

- (BOOL)_isLibraryRecommendationExpired
{
  v2 = +[NMSyncDefaults sharedDefaults];
  v3 = [v2 libraryRecommendationExpirationDate];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 compare:v4] == -1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_expirationDateForUpdateDate:(id)a3 withOffsetDays:(int64_t)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = [v5 currentCalendar];
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:a4];
  v9 = [v7 dateByAddingComponents:v8 toDate:v6 options:2];

  return v9;
}

- (void)_persistUpdatedRecommendationsWithResponse:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 length];
  v4 = [MEMORY[0x277D7FB30] sharedAccountStore];
  v5 = [v4 activeStoreAccountWithError:0];
  v6 = [v5 ic_storefront];
  v8 = 134218242;
  v9 = v3;
  v10 = 2112;
  v11 = v6;
  _os_log_fault_impl(&dword_25B27B000, a2, OS_LOG_TYPE_FAULT, "[Recommendation] Response exceeds expected size - response data length: %lu, storefront: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end