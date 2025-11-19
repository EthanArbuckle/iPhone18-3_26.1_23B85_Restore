@interface NMSSubscriptionManager
+ (NMSSubscriptionManager)sharedManager;
- (NMSSubscriptionManager)init;
- (int64_t)subscriptionType;
- (unint64_t)subscriptionCapabilities;
- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3;
- (void)_handleSubscriptionStatusDidChangeNotification:(id)a3;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_retrySubscriptionStatusRequest;
- (void)_updateActiveAccount;
- (void)_updateSubscriptionStatus;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
@end

@implementation NMSSubscriptionManager

+ (NMSSubscriptionManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NMSSubscriptionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_1 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1, block);
  }

  v2 = sharedManager_instance;

  return v2;
}

uint64_t __39__NMSSubscriptionManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = sharedManager_instance;
  sharedManager_instance = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (NMSSubscriptionManager)init
{
  v10.receiver = self;
  v10.super_class = NMSSubscriptionManager;
  v2 = [(NMSSubscriptionManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoMusicSync.NMSSubscriptionManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__NMSSubscriptionManager_init__block_invoke;
    block[3] = &unk_27993DD20;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

void __30__NMSSubscriptionManager_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D7FB30] sharedAccountStore];
  v24 = 0;
  v3 = [v2 activeStoreAccountWithError:&v24];
  v4 = v24;
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v3;

  if (*(*(a1 + 32) + 16))
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (!v7)
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __30__NMSSubscriptionManager_init__block_invoke_cold_1(v4, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [v15 objectForKey:@"CachedICSubscriptionStatusType"];

  if (v16)
  {
    v17 = [v16 integerValue];
  }

  else
  {
    v17 = 0;
  }

  *(*(a1 + 32) + 24) = v17;
  v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v19 = [v18 objectForKey:@"CachedSubscriptionCapabilitiesKey"];

  if (v19)
  {
    v20 = [v19 unsignedIntegerValue];
  }

  else
  {
    v20 = 0;
  }

  *(*(a1 + 32) + 32) = v20;
  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 addObserver:*(a1 + 32) selector:sel__handleSubscriptionStatusDidChangeNotification_ name:*MEMORY[0x277D7F940] object:0];

  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  [v22 addObserver:*(a1 + 32) selector:sel__handleUserIdentityStoreDidChangeNotification_ name:*MEMORY[0x277D7FA08] object:0];

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:*(a1 + 32) selector:sel__handleActiveUserIdentityDidChangeNotification_ name:*MEMORY[0x277D7F8C8] object:0];

  [*(a1 + 32) _updateSubscriptionStatus];
}

- (int64_t)subscriptionType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__NMSSubscriptionManager_subscriptionType__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)subscriptionCapabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__NMSSubscriptionManager_subscriptionCapabilities__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  if ([v4 isRemoteServerLikelyReachable] && objc_msgSend(v4, "isCurrentNetworkLinkHighQuality"))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__NMSSubscriptionManager_environmentMonitorDidChangeNetworkReachability___block_invoke;
    block[3] = &unk_27993DD20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __73__NMSSubscriptionManager_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (!*(v2 + 24) || *(v2 + 40))
  {
    v3 = NMLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[Subscription] Retrying get subscription status after remote server likely becoming reachable.", v4, 2u);
    }

    return [*(v1 + 32) _updateSubscriptionStatus];
  }

  return result;
}

- (void)_handleSubscriptionStatusDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NMSSubscriptionManager__handleSubscriptionStatusDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __73__NMSSubscriptionManager__handleSubscriptionStatusDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Subscription] Received subscription status did change notification.", v4, 2u);
  }

  return [*(a1 + 32) _updateSubscriptionStatus];
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NMSSubscriptionManager__handleUserIdentityStoreDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __72__NMSSubscriptionManager__handleUserIdentityStoreDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Subscription] Received user identity store did change notification.", v4, 2u);
  }

  return [*(a1 + 32) _updateActiveAccount];
}

- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NMSSubscriptionManager__handleActiveUserIdentityDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __73__NMSSubscriptionManager__handleActiveUserIdentityDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Subscription] Received active user identity did change notification.", v4, 2u);
  }

  return [*(a1 + 32) _updateActiveAccount];
}

- (void)_updateActiveAccount
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4(&dword_25B27B000, a2, a3, "[Subscription] Failed to fetch new active store account with error: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __46__NMSSubscriptionManager__updateActiveAccount__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSActiveAccountDidChangeNotification" object:*(a1 + 32)];
}

- (void)_updateSubscriptionStatus
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[Subscription] Will get subscription status now", buf, 2u);
  }

  v4 = [MEMORY[0x277D7FB78] sharedStatusController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke;
  v5[3] = &unk_27993EC90;
  v5[4] = self;
  [v4 getSubscriptionStatusWithCompletionHandler:v5];
}

void __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 8);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke_21;
    v23[3] = &unk_27993DD20;
    v23[4] = v14;
    v16 = v23;
  }

  else
  {
    v17 = [v5 statusType];
    v18 = [v5 capabilities];
    v19 = NMLogForCategory(5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "[Subscription] Got subscription status with type: %ld, capabilities: %ld", buf, 0x16u);
    }

    v20 = *(a1 + 32);
    v15 = *(v20 + 8);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke_22;
    v22[3] = &unk_27993EC68;
    v22[4] = v20;
    v22[5] = v17;
    v22[6] = v18;
    v16 = v22;
  }

  dispatch_async(v15, v16);

  v21 = *MEMORY[0x277D85DE8];
}

void __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke_22(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (*(v2 + 40))
  {
    v3 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v3 unregisterObserver:a1[4]];

    v2 = a1[4];
  }

  *(v2 + 40) = 0;
  v4 = a1[4];
  if (a1[5] == *(v4 + 24))
  {
    if (a1[6] == *(v4 + 32))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[5];
      v7 = *(a1[4] + 24);
      *buf = 134218240;
      v20 = v7;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[Subscription] Subscription status is updated from %ld to %ld", buf, 0x16u);
    }

    *(a1[4] + 24) = a1[5];
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a1[5]];
    [v8 setValue:v9 forKey:@"CachedICSubscriptionStatusType"];

    v10 = a1[4];
    if (a1[6] == *(v10 + 32))
    {
      goto LABEL_12;
    }
  }

  v11 = NMLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1[4] + 32);
    v13 = a1[6];
    *buf = 134218240;
    v20 = v12;
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "[Subscription] Subscription capabilities is updated from %ld to %ld", buf, 0x16u);
  }

  *(a1[4] + 32) = a1[6];
  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  [v14 setValue:v15 forKey:@"CachedSubscriptionCapabilitiesKey"];

  v10 = a1[4];
LABEL_12:
  v16 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke_25;
  block[3] = &unk_27993DD20;
  block[4] = v10;
  dispatch_async(v16, block);

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
}

void __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke_25(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSSubscriptionStatusDidChangeNotification" object:*(a1 + 32)];
}

- (void)_retrySubscriptionStatusRequest
{
  v16 = *MEMORY[0x277D85DE8];
  failedGetSubscriptionStatusAttempts = self->_failedGetSubscriptionStatusAttempts;
  if (!failedGetSubscriptionStatusAttempts)
  {
    v4 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v4 registerObserver:self];

    failedGetSubscriptionStatusAttempts = self->_failedGetSubscriptionStatusAttempts;
  }

  v5 = (failedGetSubscriptionStatusAttempts + 1);
  self->_failedGetSubscriptionStatusAttempts = failedGetSubscriptionStatusAttempts + 1;
  if (failedGetSubscriptionStatusAttempts + 1 < 6)
  {
    v6 = failedGetSubscriptionStatusAttempts + 1;
  }

  else
  {
    v6 = 6;
  }

  v7 = pow(5.0, v6);
  v8 = NMLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v7;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Subscription] Will retry get subscription status after %f seconds", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = dispatch_time(0, (v7 * 1000000000.0));
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__NMSSubscriptionManager__retrySubscriptionStatusRequest__block_invoke;
  v12[3] = &unk_27993ECB8;
  objc_copyWeak(v13, buf);
  v13[1] = v5;
  dispatch_after(v9, queue, v12);
  objc_destroyWeak(v13);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x277D85DE8];
}

void __57__NMSSubscriptionManager__retrySubscriptionStatusRequest__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 5))
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Subscription] Retrying get subscription status (attempt #%lu).", &v7, 0xCu);
    }

    [v3 _updateSubscriptionStatus];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __30__NMSSubscriptionManager_init__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4(&dword_25B27B000, a2, a3, "[Subscription] Failed to fetch active store account with error: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__NMSSubscriptionManager__updateSubscriptionStatus__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4(&dword_25B27B000, a2, a3, "[Subscription] Failed to get IC subscription status with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end