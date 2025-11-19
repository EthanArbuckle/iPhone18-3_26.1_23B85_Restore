@interface FCBundleSubscriptionManager
- (FCBundleSubscription)cachedSubscription;
- (FCBundleSubscription)validatedCachedSubscription;
- (FCBundleSubscriptionManager)init;
- (FCBundleSubscriptionManager)initWithPrivateDataDirectory:(id)a3 configurationManager:(id)a4 cloudContext:(id)a5 contentContext:(id)a6 appActivityMonitor:(id)a7 entitlementsProvider:(id)a8;
- (id)bundleSubscriptionLookupEntry;
- (uint64_t)hasRunEntitlementOnce;
- (uint64_t)updateHasRunEntitlementOnce:(uint64_t)result;
- (void)activityObservingApplicationDidEnterBackground;
- (void)addObserver:(id)a3;
- (void)bundleChannelProvider:(id)a3 bundleChannelIDsDidChangeWithChannelIDs:(id)a4 version:(id)a5;
- (void)clearBundleSubscription;
- (void)expireBundleSubscription;
- (void)forceExpireBundleSubscriptionBasedOnInternalSettings;
- (void)networkReachabilityDidChange:(id)a3;
- (void)notifyObserversForChangeStateWithNewSubscription:(void *)a3 previousBundleSubscription:;
- (void)notifyObserversForExpiredStateWithSubscription:(uint64_t)a1;
- (void)notifyObserversForSubscribedStateWithSubscription:(char)a3 hideBundleDetectionUI:;
- (void)prepareForUseWithCompletion:(id)a3;
- (void)prewarmBundleTagIDsWithPurchaseID:(id)a3;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 hideBundleDetectionUI:(BOOL)a4 completion:(id)a5;
- (void)removeObserver:(id)a3;
- (void)renewalNoticeShownWithPurchaseID:(id)a3;
- (void)setEntitlementsOverrideProvider:(id)a3;
- (void)silentExpireBundleSubscription;
- (void)updateCachedSubscriptionWithSubscription:(uint64_t)a1;
@end

@implementation FCBundleSubscriptionManager

- (FCBundleSubscription)cachedSubscription
{
  v2 = self;
  if (self)
  {
    self = self->_accessLock;
  }

  [(FCBundleSubscriptionManager *)self lock];
  v3 = v2->_cachedSubscription;
  [(NFMutexLock *)v2->_accessLock unlock];

  return v3;
}

void __54__FCBundleSubscriptionManager_setupCachedSubscription__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Cache bundle subscription is initialized as 'not subscribed' state", &v15, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[8];
  }

  v4 = v3;
  v5 = [v4 bundleChannelIDs];
  v6 = [FCBundleSubscription subscriptionWithSubscriptionState:3 bundleChannelIDs:v5];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 116];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-116 - v6];
  objc_setAssociatedObject(v6, (v6 + 1), v7, 1);
  objc_setAssociatedObject(v6, (-117 - v6), v8, 1);

  [(FCBundleSubscriptionManager *)*(a1 + 32) updateCachedSubscriptionWithSubscription:v6];
  v9 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 cachedSubscription];
    v13 = [v12 debugDescription];
    v15 = 138543362;
    v16 = v13;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Cache bundle subscription is set up: %{public}@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (uint64_t)hasRunEntitlementOnce
{
  if (a1)
  {
    [*(a1 + 56) lock];
    v2 = *(a1 + 8);
    [*(a1 + 56) unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (FCBundleSubscription)validatedCachedSubscription
{
  v2 = self;
  if (self)
  {
    self = self->_accessLock;
  }

  [(FCBundleSubscriptionManager *)self lock];
  if (v2->_hasRunEntitlementOnce)
  {
    cachedSubscription = v2->_cachedSubscription;
  }

  else
  {
    cachedSubscription = 0;
  }

  v4 = cachedSubscription;
  [(NFMutexLock *)v2->_accessLock unlock];

  return v4;
}

- (FCBundleSubscriptionManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCBundleSubscriptionManager init]";
    v10 = 2080;
    v11 = "FCBundleSubscriptionManager.m";
    v12 = 1024;
    v13 = 68;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCBundleSubscriptionManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCBundleSubscriptionManager)initWithPrivateDataDirectory:(id)a3 configurationManager:(id)a4 cloudContext:(id)a5 contentContext:(id)a6 appActivityMonitor:(id)a7 entitlementsProvider:(id)a8
{
  v68 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v63 = v19;
    v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataDirectory != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCBundleSubscriptionManager initWithPrivateDataDirectory:configurationManager:cloudContext:contentContext:appActivityMonitor:entitlementsProvider:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCBundleSubscriptionManager.m";
    *&buf[22] = 1024;
    LODWORD(v67) = 78;
    WORD2(v67) = 2114;
    *(&v67 + 6) = v57;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v19 = v63;
    if (v63)
    {
      goto LABEL_6;
    }
  }

  else if (v19)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v64 = v19;
    v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "entitlementsProvider != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCBundleSubscriptionManager initWithPrivateDataDirectory:configurationManager:cloudContext:contentContext:appActivityMonitor:entitlementsProvider:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCBundleSubscriptionManager.m";
    *&buf[22] = 1024;
    LODWORD(v67) = 79;
    WORD2(v67) = 2114;
    *(&v67 + 6) = v58;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v19 = v64;
  }

LABEL_6:
  v65.receiver = self;
  v65.super_class = FCBundleSubscriptionManager;
  v20 = [(FCBundleSubscriptionManager *)&v65 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_configurationManager, a4);
    objc_storeStrong(&v21->_bundleEntitlementsProvider, a8);
    objc_storeStrong(&v21->_contentContext, a6);
    v21->_hasRunEntitlementOnce = 0;
    v22 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v21->_observers;
    v21->_observers = v22;

    v24 = objc_alloc_init(MEMORY[0x1E69B68E8]);
    accessLock = v21->_accessLock;
    v21->_accessLock = v24;

    v26 = [[FCKeyValueStore alloc] initWithName:@"BundleSubscription" directory:v14 version:1 options:0 classRegistry:0];
    localStore = v21->_localStore;
    v21->_localStore = v26;

    v28 = [[FCBundleSubscriptionLookUpEntryManager alloc] initWithLocalStore:v21->_localStore];
    bundleSubscriptionLookupEntryManager = v21->_bundleSubscriptionLookupEntryManager;
    v21->_bundleSubscriptionLookupEntryManager = v28;

    v30 = [[FCBundleChannelProvider alloc] initWithLocalStore:v18 appActivityMonitor:v15 configurationManager:v17 contentContext:?];
    bundleChannelProvider = v21->_bundleChannelProvider;
    v21->_bundleChannelProvider = v30;

    [(FCBundleChannelProviderType *)v21->_bundleChannelProvider setDelegate:v21];
    v32 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
    refreshQueue = v21->_refreshQueue;
    v21->_refreshQueue = v32;

    v34 = [(FCBundleSubscriptionLookUpEntryManager *)v21->_bundleSubscriptionLookupEntryManager bundleSubscriptionLookUpEntry];
    v35 = v34;
    v62 = v19;
    if (!v34)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __54__FCBundleSubscriptionManager_setupCachedSubscription__block_invoke;
      *&v67 = &unk_1E7C36EA0;
      *(&v67 + 1) = v21;
      __54__FCBundleSubscriptionManager_setupCachedSubscription__block_invoke(buf);
LABEL_20:

      v54 = [v16 networkReachability];
      [v54 addObserver:v21];

      [v18 addObserver:v21];
      v19 = v62;
      goto LABEL_21;
    }

    if (![v34 purchaseValidationState])
    {
      v47 = [v35 bundleSubscription];
      [(FCBundleSubscriptionManager *)v21 updateCachedSubscriptionWithSubscription:v47];
      v48 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v48;
        v61 = [(FCBundleSubscriptionManager *)v21 cachedSubscription];
        v50 = [v61 debugDescription];
        *buf = 138543362;
        *&buf[4] = v50;
        _os_log_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_DEFAULT, "Cache bundle subscription state valid: %{public}@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v59 = v16;
    v60 = v15;
    v36 = [v35 purchaseValidationState];
    v37 = v21->_bundleChannelProvider;
    v38 = [(FCBundleChannelProviderType *)v37 bundleChannelIDs];
    if (v36 == 1)
    {
      v39 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:v38];
      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39 + 132];
      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-132 - v39];
      objc_setAssociatedObject(v39, (v39 + 1), v40, 1);
      objc_setAssociatedObject(v39, (-133 - v39), v41, 1);

      [(FCBundleSubscriptionManager *)v21 updateCachedSubscriptionWithSubscription:v39];
      v42 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        v44 = [(FCBundleSubscriptionManager *)v21 cachedSubscription];
        v45 = [v44 debugDescription];
        *buf = 138543362;
        *&buf[4] = v45;
        v46 = "Cache bundle subscription state expired: %{public}@";
LABEL_18:
        _os_log_impl(&dword_1B63EF000, v43, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);
      }
    }

    else
    {
      v39 = [FCBundleSubscription subscriptionWithSubscriptionState:3 bundleChannelIDs:v38];
      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39 + 139];
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-139 - v39];
      objc_setAssociatedObject(v39, (v39 + 1), v51, 1);
      objc_setAssociatedObject(v39, (-140 - v39), v52, 1);

      [(FCBundleSubscriptionManager *)v21 updateCachedSubscriptionWithSubscription:v39];
      v53 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v53;
        v44 = [(FCBundleSubscriptionManager *)v21 cachedSubscription];
        v45 = [v44 debugDescription];
        *buf = 138543362;
        *&buf[4] = v45;
        v46 = "Cache bundle subscription state not subscribed: %{public}@";
        goto LABEL_18;
      }
    }

    v16 = v59;
    v15 = v60;
    goto LABEL_20;
  }

LABEL_21:

  v55 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)updateCachedSubscriptionWithSubscription:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    [*(a1 + 56) lock];
    objc_storeStrong((a1 + 88), a2);
    v5 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 debugDescription];
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "updateCachedSubscriptionWithSubscription  bundleSubscription= %@", &v15, 0xCu);
    }

    [*(a1 + 56) unlock];
    v8 = NewsCoreUserDefaults();
    v9 = v4;
    v10 = objc_getAssociatedObject(v9, v4 + 1);
    v11 = [v10 unsignedIntegerValue];
    v12 = v11;
    v13 = objc_getAssociatedObject(v9, ~v11);

    LOBYTE(v9) = [v13 unsignedIntegerValue] ^ v12;
    [v8 setBool:v9 & 1 forKey:@"news_url_resolution_subscription_status"];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setEntitlementsOverrideProvider:(id)a3
{
  if (self)
  {
    self = self->_bundleEntitlementsProvider;
  }

  [(FCBundleSubscriptionManager *)self setEntitlementsOverrideProvider:a3];
}

- (void)activityObservingApplicationDidEnterBackground
{
  v2 = self;
  if (self)
  {
    self = self->_bundleSubscriptionLookupEntryManager;
  }

  [(FCBundleSubscriptionManager *)self cleanupStaleExpiredEntry];
  if (NFInternalBuild())
  {
    if (v2)
    {
      v3 = FCPersistenceQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke;
      block[3] = &unk_1E7C36EA0;
      block[4] = v2;
      dispatch_async(v3, block);
    }
  }
}

void __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke(uint64_t a1)
{
  v37[3] = *MEMORY[0x1E69E9840];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_2;
  v33[3] = &unk_1E7C371A8;
  v33[4] = *(a1 + 32);
  v2 = __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_2(v33);
  v37[0] = v2;
  v36[0] = @"state";
  v36[1] = @"bundleChannels";
  v3 = [*(a1 + 32) bundleSubscription];
  v4 = [v3 bundleChannelIDs];
  v5 = [v4 array];
  v37[1] = v5;
  v36[2] = @"lastUpdated";
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSince1970];
  v9 = [v6 stringWithFormat:@"%f", v8];
  v37[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];

  v32 = 0;
  v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:1 error:&v32];
  v12 = v32;
  v13 = v12;
  if (v11)
  {
    v14 = MEMORY[0x1E695DFF8];
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = *(v15 + 32);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 storeDirectory];
    v18 = [v14 fileURLWithPath:v17];
    v19 = [v18 URLByAppendingPathComponent:@"bundle"];
    v20 = [v19 URLByAppendingPathExtension:@"json"];

    if (v20)
    {
      v21 = [v20 path];
      v29 = v13;
      v22 = [v11 writeToFile:v21 options:1 error:&v29];
      v23 = v29;

      v24 = FCPersonalizationLog;
      if (v22)
      {
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
        {
          v25 = v24;
          v26 = [v20 path];
          *buf = 138412290;
          v35 = v26;
          _os_log_debug_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_DEBUG, "Successfully saved readable bundle data at %@.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v23;
        _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "Error when saving readable bundle data: %@", buf, 0xCu);
      }

      v13 = v23;
    }

    else
    {
      v27 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_ERROR, "Failed to construct file URL for saving readable bundle data", buf, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_3;
    v30[3] = &unk_1E7C36EA0;
    v13 = v12;
    v31 = v13;
    __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_3(v30);
    v20 = v31;
  }

  v28 = *MEMORY[0x1E69E9840];
}

__CFString *__54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleSubscription];
  v2 = [v1 unprotectedSubscriptionState];

  if (v2 > 2)
  {
    return @"unsubscribed";
  }

  else
  {
    return off_1E7C3A860[v2];
  }
}

void __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error when saving readable bundle data: %@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)bundleChannelProvider:(id)a3 bundleChannelIDsDidChangeWithChannelIDs:(id)a4 version:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(FCBundleSubscriptionManager *)self cachedSubscription];
    v12 = [v11 debugDescription];
    v20 = 138412290;
    v21 = v12;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "bundleChannelIDsDidChangeWithChannelIDs  bundleSubscription= %@", &v20, 0xCu);
  }

  v13 = [(FCBundleSubscriptionManager *)self cachedSubscription];
  v14 = [v13 copy];

  v15 = MEMORY[0x1E695DFB8];
  v16 = [v7 copy];
  v17 = [v15 orderedSetWithArray:v16];
  [v14 setBundleChannelIDs:v17];

  v18 = [v8 copy];
  [v14 setBundleChannelIDsVersion:v18];

  [(FCBundleSubscriptionManager *)self updateCachedSubscriptionWithSubscription:v14];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 hideBundleDetectionUI:(BOOL)a4 completion:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke;
  aBlock[3] = &unk_1E7C3A6D8;
  aBlock[4] = self;
  aBlock[5] = a3;
  v9 = _Block_copy(aBlock);
  if (v9[2]())
  {
    v11 = a3 == 3 || a3 == 0;
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v12 UUIDString];

    v14 = [MEMORY[0x1E695DF00] date];
    v15 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v13;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Will wait on serial queue for bundle subscription refresh opportunity, id=%{public}@", buf, 0xCu);
    }

    if (self)
    {
      refreshQueue = self->_refreshQueue;
    }

    else
    {
      refreshQueue = 0;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_78;
    v20[3] = &unk_1E7C3A778;
    v21 = v14;
    v22 = v13;
    v24 = v9;
    v26 = a3;
    v25 = v8;
    v23 = self;
    v27 = v11;
    v28 = a4;
    v17 = v13;
    v18 = v14;
    [(FCAsyncSerialQueue *)refreshQueue enqueueBlock:v20];
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_75;
    v29[3] = &unk_1E7C3A700;
    v31 = a3;
    v29[4] = self;
    v30 = v8;
    __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_75(v29);
    v18 = v30;
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (([v3 isEqualToString:@"com.apple.stocks"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.news") & 1) != 0 || NSClassFromString(&cfstr_Xctest.isa))
  {
    v7 = 1;
    if ((NFStoreDemoMode() & 1) == 0 && *(a1 + 40) <= 1uLL)
    {
      v4 = [*(a1 + 32) cachedSubscription];
      if (v4)
      {
        v5 = v4;
        v6 = [(FCBundleSubscriptionManager *)*(a1 + 32) hasRunEntitlementOnce];

        if (v6)
        {
          v7 = 0;
        }
      }
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_2;
    v9[3] = &unk_1E7C36F68;
    v9[4] = *(a1 + 32);
    v10 = v3;
    v7 = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_2(v9);
  }

  return v7;
}

uint64_t __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v9 = 138412546;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%@ ignoring bundle entitlement check for bundleID=%{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_75(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = FCStringFromBundleSubscriptionCachePolicy(v3);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Bundle subscription does not need refresh, policy=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_76;
  v8[3] = &unk_1E7C37778;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  FCPerformBlockOnMainThread(v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_76(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) cachedSubscription];
    (*(v1 + 16))(v1, v2);
  }
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_78(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 fc_millisecondTimeIntervalUntilNow];
    v8 = *(a1 + 40);
    *buf = 134218242;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Did wait on serial queue for bundle subscription refresh opportunity, time=%llums, id=%{public}@", buf, 0x16u);
  }

  if ((*(*(a1 + 56) + 16))())
  {
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 72);
      v12 = v10;
      v13 = FCStringFromBundleSubscriptionCachePolicy(v11);
      v14 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "Will refresh bundle subscription with cache policy=%{public}@, id=%{public}@", buf, 0x16u);
    }

    v15 = *(a1 + 80);
    v33 = *(a1 + 81);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_81;
    v35[3] = &unk_1E7C3A750;
    v36 = v9;
    v16 = *(a1 + 48);
    v37 = *(a1 + 40);
    v38 = v3;
    v39 = *(a1 + 64);
    v17 = v3;
    v18 = v9;
    v34 = v35;
    if (v16)
    {
      if (([(FCBundleSubscriptionManager *)v16 hasRunEntitlementOnce]& 1) == 0)
      {
        v19 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Fetching entitlements now because the entitlements check has not run at least once", buf, 2u);
        }
      }

      v20 = dispatch_group_create();
      v63[0] = 0;
      v63[1] = v63;
      v63[2] = 0x3032000000;
      v63[3] = __Block_byref_object_copy__18;
      v63[4] = __Block_byref_object_dispose__18;
      v64 = 0;
      v61[0] = 0;
      v61[1] = v61;
      v61[2] = 0x3032000000;
      v61[3] = __Block_byref_object_copy__18;
      v61[4] = __Block_byref_object_dispose__18;
      v62 = 0;
      v21 = [MEMORY[0x1E695DF00] date];
      dispatch_group_enter(v20);
      v22 = v16[8];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke;
      v56[3] = &unk_1E7C3A7A0;
      v59 = v63;
      v60 = v61;
      v56[4] = v16;
      v23 = v21;
      v57 = v23;
      v24 = v20;
      v58 = v24;
      [v22 loadInitialBundleChannelIDsWithCompletion:v56];

      v54[0] = 0;
      v54[1] = v54;
      v54[2] = 0x3032000000;
      v54[3] = __Block_byref_object_copy__18;
      v54[4] = __Block_byref_object_dispose__18;
      v55 = 0;
      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x3032000000;
      v52[3] = __Block_byref_object_copy__18;
      v52[4] = __Block_byref_object_dispose__18;
      v53 = 0;
      v25 = [MEMORY[0x1E695DF00] date];
      dispatch_group_enter(v24);
      v26 = v16[2];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_85;
      v47[3] = &unk_1E7C3A7C8;
      v50 = v54;
      v51 = v52;
      v27 = v25;
      v48 = v27;
      v28 = v24;
      v49 = v28;
      [v26 fetchEntitlementsWithIgnoreCache:v15 completion:v47];

      objc_initWeak(&location, v16);
      if (FCDispatchGroupIsEmpty(v28))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_87;
        v66 = &unk_1E7C3A818;
        objc_copyWeak(&v73, &location);
        v69 = v54;
        v67 = v16;
        v70 = v63;
        v71 = v61;
        v74 = v33;
        v72 = v52;
        v68 = v34;
        (*&buf[16])(buf);
      }

      else
      {
        v31 = dispatch_get_global_queue(25, 0);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_90;
        v66 = &unk_1E7C3A818;
        objc_copyWeak(&v73, &location);
        v69 = v54;
        v67 = v16;
        v70 = v63;
        v71 = v61;
        v74 = v33;
        v72 = v52;
        v68 = v34;
        dispatch_group_notify(v28, v31, buf);
      }

      objc_destroyWeak(&v73);
      objc_destroyWeak(&location);

      _Block_object_dispose(v52, 8);
      _Block_object_dispose(v54, 8);

      _Block_object_dispose(v61, 8);
      _Block_object_dispose(v63, 8);
    }
  }

  else
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_79;
    v40[3] = &unk_1E7C3A728;
    v45 = *(a1 + 72);
    v41 = *(a1 + 40);
    v43 = v3;
    v29 = *(a1 + 64);
    v30 = *(a1 + 48);
    v44 = v29;
    v42 = v30;
    v18 = v3;
    __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_79(v40);

    v17 = v41;
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_79(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = v2;
    v5 = FCStringFromBundleSubscriptionCachePolicy(v3);
    v6 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Bundle subscription does not need refresh, policy=%{public}@, id=%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_80;
  v9[3] = &unk_1E7C37778;
  v7 = *(a1 + 56);
  v9[4] = *(a1 + 40);
  v10 = v7;
  FCPerformBlockOnMainThread(v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_80(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) cachedSubscription];
    (*(v1 + 16))(v1, v2);
  }
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_81(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 fc_millisecondTimeIntervalUntilNow];
    v8 = *(a1 + 40);
    *buf = 134218242;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Did refresh bundle subscription with duration=%llums, id=%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_82;
  v12[3] = &unk_1E7C37778;
  v9 = *(a1 + 56);
  v13 = v3;
  v14 = v9;
  v10 = v3;
  FCPerformBlockOnMainThread(v12);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_82(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = v2;
  v4 = [v3 bundleChannelIDs];
  v5 = [v4 copy];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[8];
  }

  v9 = v8;
  v10 = [v9 bundleChannelIDsVersion];
  v11 = [v10 copy];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = v14;
    v18 = 134217984;
    v19 = [v15 fc_millisecondTimeIntervalUntilNow];
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Spent %llums fetching channel IDs for bundle subscription", &v18, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
  v17 = *MEMORY[0x1E69E9840];
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_85(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v8 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v12 = 134217984;
    v13 = [v9 fc_millisecondTimeIntervalUntilNow];
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Spent %llums fetching entitlements for bundle subscription", &v12, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x1E69E9840];
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_2;
  v5[3] = &unk_1E7C3A7F0;
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v9 = *(a1 + 88);
  v8 = *(a1 + 72);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  FCPerformIfNonNil(WeakRetained, v5);
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 cachedSubscription];
  v5 = [v4 copy];

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:FCEntitlementsNotFoundErrorDateDate];

    v7 = *(a1 + 32);
    v73 = v3;
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 configuration];
    v10 = [v9 paidBundleViaOfferConfig];
    v11 = [v10 vendorAdHocOfferIds];

    v12 = [*(*(*(a1 + 48) + 8) + 40) vendorAdHocOfferID];
    v71 = v11;
    v72 = v5;
    if (v12)
    {
      v13 = [*(*(*(a1 + 48) + 8) + 40) vendorAdHocOfferID];
      v14 = [v11 containsObject:v13];
    }

    else
    {
      v14 = 0;
    }

    v21 = [*(*(*(a1 + 48) + 8) + 40) bundlePurchaseID];
    v22 = *(*(*(a1 + 56) + 8) + 40);
    v23 = *(*(*(a1 + 64) + 8) + 40);
    v24 = [*(*(*(a1 + 48) + 8) + 40) inTrialPeriod];
    v25 = [*(*(*(a1 + 48) + 8) + 40) isPurchaser];
    v26 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
    v27 = [*(*(*(a1 + 48) + 8) + 40) isAmplifyUser];
    v28 = [*(*(*(a1 + 48) + 8) + 40) initialPurchaseTimestamp];
    v29 = FCBundleSubscriptionMakeInline(v21, v22, v23, v24, v25, v26, v27, v14, v28);

    v30 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v29 debugDescription];
      *buf = 138412290;
      v75 = v32;
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Refresh bundle subscription bundleSubscription= %@", buf, 0xCu);
    }

    v5 = v72;
    v33 = v72;
    v34 = objc_getAssociatedObject(v33, (v72 + 1));
    v35 = [v34 unsignedIntegerValue];
    v36 = v35;
    v37 = objc_getAssociatedObject(v33, ~v35);

    v38 = [v37 unsignedIntegerValue] ^ v36;
    if (v38)
    {
      if (([v33 isEqual:v29] & 1) == 0)
      {
        v50 = v14;
        v51 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
          v53 = [v33 debugDescription];
          v54 = [v29 debugDescription];
          *buf = 138543618;
          v75 = v53;
          v76 = 2114;
          v77 = v54;
          _os_log_impl(&dword_1B63EF000, v52, OS_LOG_TYPE_DEFAULT, "Checked cachedSubscription: %{public}@ is not equal to bundleSubscription: %{public}@", buf, 0x16u);
        }

        if (v73)
        {
          v55 = *(v73 + 40);
        }

        else
        {
          v55 = 0;
        }

        v56 = [v55 bundleSubscriptionLookUpEntry];
        v57 = [v56 mutableCopy];

        if (v57)
        {
          [v57 setBundleChannelIDs:*(*(*(a1 + 56) + 8) + 40)];
          [v57 setBundleChannelIDsVersion:*(*(*(a1 + 64) + 8) + 40)];
          v58 = [*(*(*(a1 + 48) + 8) + 40) bundlePurchaseID];
          [v57 setPurchaseID:v58];

          [v57 setInTrialPeriod:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "inTrialPeriod")}];
          [v57 setIsPurchaser:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isPurchaser")}];
          v59 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
          [v57 setServicesBundlePurchaseID:v59];

          [v57 setIsAmplifyUser:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isAmplifyUser")}];
          [v57 setIsPaidBundleViaOfferActivated:v50];
          if (v73)
          {
            v60 = *(v73 + 40);
          }

          else
          {
            v60 = 0;
          }

          [v60 updateEntry:v57];
        }

        v61 = [v29 copy];
        v62 = [v33 copy];
        [(FCBundleSubscriptionManager *)v73 updateCachedSubscriptionWithSubscription:v29];
        [(FCBundleSubscriptionManager *)v73 notifyObserversForChangeStateWithNewSubscription:v61 previousBundleSubscription:v62];
      }
    }

    else
    {
      v39 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v39, OS_LOG_TYPE_INFO, "Bundle subscription did subscribe", buf, 2u);
      }

      v70 = v29;
      v69 = v14;
      if (v73)
      {
        v40 = *(v73 + 40);
      }

      else
      {
        v40 = 0;
      }

      v68 = *(*(*(a1 + 56) + 8) + 40);
      v41 = *(*(*(a1 + 64) + 8) + 40);
      v42 = *(*(*(a1 + 48) + 8) + 40);
      v43 = v40;
      v44 = [v42 bundlePurchaseID];
      v45 = [*(*(*(a1 + 48) + 8) + 40) inTrialPeriod];
      v46 = [*(*(*(a1 + 48) + 8) + 40) isPurchaser];
      v47 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
      v48 = [*(*(*(a1 + 48) + 8) + 40) isAmplifyUser];
      v49 = [*(*(*(a1 + 48) + 8) + 40) initialPurchaseTimestamp];
      LOBYTE(v67) = v69;
      LOBYTE(v66) = v48;
      [v43 addBundleChannelIDs:v68 bundleChannelIDsVersion:v41 purchaseID:v44 inTrialPeriod:v45 isPurchaser:v46 servicesBundlePurchaseID:v47 isAmplifyUser:v66 initialPurchaseTimestamp:v49 isPaidBundleViaOfferActivated:v67];

      v29 = v70;
      [(FCBundleSubscriptionManager *)v73 updateCachedSubscriptionWithSubscription:v70];
      [(FCBundleSubscriptionManager *)v73 notifyObserversForSubscribedStateWithSubscription:v70 hideBundleDetectionUI:*(a1 + 80)];
      v5 = v72;
    }

    v3 = v73;
  }

  else
  {
    if ([*(*(*(a1 + 72) + 8) + 40) code] != 5002)
    {
      goto LABEL_41;
    }

    v15 = v5;
    v16 = objc_getAssociatedObject(v15, (v5 + 1));
    v17 = [v16 unsignedIntegerValue];
    v18 = v17;
    v19 = objc_getAssociatedObject(v15, ~v17);

    LOBYTE(v15) = [v19 unsignedIntegerValue] ^ v18;
    if (v15)
    {
      [(FCBundleSubscriptionManager *)v3 expireBundleSubscription];
    }

    else
    {
LABEL_41:
      if ([*(*(*(a1 + 72) + 8) + 40) code] == 3001)
      {
        v20 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "Refresh bundle subscription failed with timeout error. Maintaining the same state as before", buf, 2u);
        }
      }
    }
  }

  [FCBundleSubscriptionManager updateHasRunEntitlementOnce:v3];
  v63 = *(a1 + 40);
  if (v63)
  {
    v64 = [v3 cachedSubscription];
    (*(v63 + 16))(v63, v64);
  }

  v65 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserversForSubscribedStateWithSubscription:(char)a3 hideBundleDetectionUI:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __103__FCBundleSubscriptionManager_notifyObserversForSubscribedStateWithSubscription_hideBundleDetectionUI___block_invoke;
    v7[3] = &unk_1E7C37678;
    v7[4] = a1;
    v8 = v5;
    v9 = a3;
    FCPerformBlockOnMainThread(v7);
  }
}

- (void)notifyObserversForChangeStateWithNewSubscription:(void *)a3 previousBundleSubscription:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __107__FCBundleSubscriptionManager_notifyObserversForChangeStateWithNewSubscription_previousBundleSubscription___block_invoke;
    v7[3] = &unk_1E7C376A0;
    v7[4] = a1;
    v8 = v5;
    v9 = v6;
    FCPerformBlockOnMainThread(v7);
  }
}

- (void)expireBundleSubscription
{
  if (a1)
  {
    v2 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_INFO, "Bundle subscription did expire", v14, 2u);
    }

    v3 = [a1[5] bundleSubscriptionLookUpEntry];
    v4 = [v3 mutableCopy];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DF00] date];
      [v4 setDateOfExpiration:v5];

      [v4 setPurchaseValidationState:1];
      [a1[5] updateEntry:v4];
    }

    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:FCEntitlementsCacheExpiredErrorDateDate];

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v7 removeObjectForKey:FCEntitlementsNotFoundErrorDateDate];

    v8 = a1[8];
    v9 = [v8 bundleChannelIDs];
    v10 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:v9];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10 + 460];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-460 - v10];
    objc_setAssociatedObject(v10, (v10 + 1), v11, 1);
    objc_setAssociatedObject(v10, (-461 - v10), v12, 1);

    [(FCBundleSubscriptionManager *)a1 updateCachedSubscriptionWithSubscription:v10];
    v13 = [a1 cachedSubscription];
    [(FCBundleSubscriptionManager *)a1 notifyObserversForExpiredStateWithSubscription:v13];
  }
}

- (uint64_t)updateHasRunEntitlementOnce:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    [*(result + 56) lock];
    *(v1 + 8) = 1;
    v2 = *(v1 + 56);

    return [v2 unlock];
  }

  return result;
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_2_91;
  v5[3] = &unk_1E7C3A7F0;
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v9 = *(a1 + 88);
  v8 = *(a1 + 72);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  FCPerformIfNonNil(WeakRetained, v5);
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_2_91(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 cachedSubscription];
  v5 = [v4 copy];

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:FCEntitlementsNotFoundErrorDateDate];

    v7 = *(a1 + 32);
    v73 = v3;
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 configuration];
    v10 = [v9 paidBundleViaOfferConfig];
    v11 = [v10 vendorAdHocOfferIds];

    v12 = [*(*(*(a1 + 48) + 8) + 40) vendorAdHocOfferID];
    v71 = v11;
    v72 = v5;
    if (v12)
    {
      v13 = [*(*(*(a1 + 48) + 8) + 40) vendorAdHocOfferID];
      v14 = [v11 containsObject:v13];
    }

    else
    {
      v14 = 0;
    }

    v21 = [*(*(*(a1 + 48) + 8) + 40) bundlePurchaseID];
    v22 = *(*(*(a1 + 56) + 8) + 40);
    v23 = *(*(*(a1 + 64) + 8) + 40);
    v24 = [*(*(*(a1 + 48) + 8) + 40) inTrialPeriod];
    v25 = [*(*(*(a1 + 48) + 8) + 40) isPurchaser];
    v26 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
    v27 = [*(*(*(a1 + 48) + 8) + 40) isAmplifyUser];
    v28 = [*(*(*(a1 + 48) + 8) + 40) initialPurchaseTimestamp];
    v29 = FCBundleSubscriptionMakeInline(v21, v22, v23, v24, v25, v26, v27, v14, v28);

    v30 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v29 debugDescription];
      *buf = 138412290;
      v75 = v32;
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Refresh bundle subscription bundleSubscription= %@", buf, 0xCu);
    }

    v5 = v72;
    v33 = v72;
    v34 = objc_getAssociatedObject(v33, (v72 + 1));
    v35 = [v34 unsignedIntegerValue];
    v36 = v35;
    v37 = objc_getAssociatedObject(v33, ~v35);

    v38 = [v37 unsignedIntegerValue] ^ v36;
    if (v38)
    {
      if (([v33 isEqual:v29] & 1) == 0)
      {
        v50 = v14;
        v51 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
          v53 = [v33 debugDescription];
          v54 = [v29 debugDescription];
          *buf = 138543618;
          v75 = v53;
          v76 = 2114;
          v77 = v54;
          _os_log_impl(&dword_1B63EF000, v52, OS_LOG_TYPE_DEFAULT, "Checked cachedSubscription: %{public}@ is not equal to bundleSubscription: %{public}@", buf, 0x16u);
        }

        if (v73)
        {
          v55 = *(v73 + 40);
        }

        else
        {
          v55 = 0;
        }

        v56 = [v55 bundleSubscriptionLookUpEntry];
        v57 = [v56 mutableCopy];

        if (v57)
        {
          [v57 setBundleChannelIDs:*(*(*(a1 + 56) + 8) + 40)];
          [v57 setBundleChannelIDsVersion:*(*(*(a1 + 64) + 8) + 40)];
          v58 = [*(*(*(a1 + 48) + 8) + 40) bundlePurchaseID];
          [v57 setPurchaseID:v58];

          [v57 setInTrialPeriod:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "inTrialPeriod")}];
          [v57 setIsPurchaser:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isPurchaser")}];
          v59 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
          [v57 setServicesBundlePurchaseID:v59];

          [v57 setIsAmplifyUser:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isAmplifyUser")}];
          [v57 setIsPaidBundleViaOfferActivated:v50];
          if (v73)
          {
            v60 = *(v73 + 40);
          }

          else
          {
            v60 = 0;
          }

          [v60 updateEntry:v57];
        }

        v61 = [v29 copy];
        v62 = [v33 copy];
        [(FCBundleSubscriptionManager *)v73 updateCachedSubscriptionWithSubscription:v29];
        [(FCBundleSubscriptionManager *)v73 notifyObserversForChangeStateWithNewSubscription:v61 previousBundleSubscription:v62];
      }
    }

    else
    {
      v39 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v39, OS_LOG_TYPE_INFO, "Bundle subscription did subscribe", buf, 2u);
      }

      v70 = v29;
      v69 = v14;
      if (v73)
      {
        v40 = *(v73 + 40);
      }

      else
      {
        v40 = 0;
      }

      v68 = *(*(*(a1 + 56) + 8) + 40);
      v41 = *(*(*(a1 + 64) + 8) + 40);
      v42 = *(*(*(a1 + 48) + 8) + 40);
      v43 = v40;
      v44 = [v42 bundlePurchaseID];
      v45 = [*(*(*(a1 + 48) + 8) + 40) inTrialPeriod];
      v46 = [*(*(*(a1 + 48) + 8) + 40) isPurchaser];
      v47 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
      v48 = [*(*(*(a1 + 48) + 8) + 40) isAmplifyUser];
      v49 = [*(*(*(a1 + 48) + 8) + 40) initialPurchaseTimestamp];
      LOBYTE(v67) = v69;
      LOBYTE(v66) = v48;
      [v43 addBundleChannelIDs:v68 bundleChannelIDsVersion:v41 purchaseID:v44 inTrialPeriod:v45 isPurchaser:v46 servicesBundlePurchaseID:v47 isAmplifyUser:v66 initialPurchaseTimestamp:v49 isPaidBundleViaOfferActivated:v67];

      v29 = v70;
      [(FCBundleSubscriptionManager *)v73 updateCachedSubscriptionWithSubscription:v70];
      [(FCBundleSubscriptionManager *)v73 notifyObserversForSubscribedStateWithSubscription:v70 hideBundleDetectionUI:*(a1 + 80)];
      v5 = v72;
    }

    v3 = v73;
  }

  else
  {
    if ([*(*(*(a1 + 72) + 8) + 40) code] != 5002)
    {
      goto LABEL_41;
    }

    v15 = v5;
    v16 = objc_getAssociatedObject(v15, (v5 + 1));
    v17 = [v16 unsignedIntegerValue];
    v18 = v17;
    v19 = objc_getAssociatedObject(v15, ~v17);

    LOBYTE(v15) = [v19 unsignedIntegerValue] ^ v18;
    if (v15)
    {
      [(FCBundleSubscriptionManager *)v3 expireBundleSubscription];
    }

    else
    {
LABEL_41:
      if ([*(*(*(a1 + 72) + 8) + 40) code] == 3001)
      {
        v20 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "Refresh bundle subscription failed with timeout error. Maintaining the same state as before", buf, 2u);
        }
      }
    }
  }

  [FCBundleSubscriptionManager updateHasRunEntitlementOnce:v3];
  v63 = *(a1 + 40);
  if (v63)
  {
    v64 = [v3 cachedSubscription];
    (*(v63 + 16))(v63, v64);
  }

  v65 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserversForExpiredStateWithSubscription:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __78__FCBundleSubscriptionManager_notifyObserversForExpiredStateWithSubscription___block_invoke;
    v5[3] = &unk_1E7C36C58;
    v5[4] = a1;
    v6 = v3;
    FCPerformBlockOnMainThread(v5);
  }
}

- (void)clearBundleSubscription
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(FCBundleSubscriptionManager *)self cachedSubscription];
    v6 = [v5 debugDescription];
    v26 = 138412290;
    v27 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "clearBundleSubscription cachedSubscription=%@", &v26, 0xCu);
  }

  v7 = [(FCBundleSubscriptionManager *)self cachedSubscription];
  v8 = objc_getAssociatedObject(v7, (v7 + 1));
  v9 = [v8 unsignedIntegerValue];
  v10 = v9;
  v11 = objc_getAssociatedObject(v7, ~v9);
  v12 = [v11 unsignedIntegerValue] ^ v10;

  if (v12)
  {
    if (self)
    {
      bundleSubscriptionLookupEntryManager = self->_bundleSubscriptionLookupEntryManager;
    }

    else
    {
      bundleSubscriptionLookupEntryManager = 0;
    }

    v14 = [(FCBundleSubscriptionLookUpEntryManager *)bundleSubscriptionLookupEntryManager bundleSubscriptionLookUpEntry];
    v15 = [v14 mutableCopy];

    if (v15)
    {
      v16 = [MEMORY[0x1E695DF00] date];
      [v15 setDateOfExpiration:v16];

      [v15 setPurchaseValidationState:1];
      [v15 setHasShownRenewalNotice:1];
      if (self)
      {
        v17 = self->_bundleSubscriptionLookupEntryManager;
      }

      else
      {
        v17 = 0;
      }

      [(FCBundleSubscriptionLookUpEntryManager *)v17 updateEntry:v15];
    }

    if (self)
    {
      bundleChannelProvider = self->_bundleChannelProvider;
    }

    else
    {
      bundleChannelProvider = 0;
    }

    v19 = bundleChannelProvider;
    v20 = [(FCBundleChannelProviderType *)v19 bundleChannelIDs];
    v21 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:v20];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21 + 482];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-482 - v21];
    objc_setAssociatedObject(v21, (v21 + 1), v22, 1);
    objc_setAssociatedObject(v21, (-483 - v21), v23, 1);

    [(FCBundleSubscriptionManager *)self updateCachedSubscriptionWithSubscription:v21];
    v24 = [(FCBundleSubscriptionManager *)self cachedSubscription];
    [(FCBundleSubscriptionManager *)self notifyObserversForExpiredStateWithSubscription:v24];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)bundleSubscriptionLookupEntry
{
  if (self)
  {
    self = self->_bundleSubscriptionLookupEntryManager;
  }

  return [(FCBundleSubscriptionManager *)self bundleSubscriptionLookUpEntry];
}

- (void)renewalNoticeShownWithPurchaseID:(id)a3
{
  v3 = self;
  if (self)
  {
    self = self->_bundleSubscriptionLookupEntryManager;
  }

  v4 = [(FCBundleSubscriptionManager *)self bundleSubscriptionLookUpEntry];
  v7 = [v4 mutableCopy];

  v5 = v7;
  if (v7)
  {
    [v7 setHasShownRenewalNotice:1];
    if (v3)
    {
      bundleSubscriptionLookupEntryManager = v3->_bundleSubscriptionLookupEntryManager;
    }

    else
    {
      bundleSubscriptionLookupEntryManager = 0;
    }

    [(FCBundleSubscriptionLookUpEntryManager *)bundleSubscriptionLookupEntryManager updateEntry:v7];
    v5 = v7;
  }
}

- (void)prewarmBundleTagIDsWithPurchaseID:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [FCPurchaseLookupFetchOperation alloc];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  if (self)
  {
    contentContext = self->_contentContext;
  }

  else
  {
    contentContext = 0;
  }

  v8 = [(FCPurchaseLookupFetchOperation *)v5 initWithPurchaseIDs:v6 contentContext:contentContext];

  [(FCOperation *)v8 setQualityOfService:25];
  [(FCOperation *)v8 setRelativePriority:1];
  v9 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v9 addOperation:v8];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)forceExpireBundleSubscriptionBasedOnInternalSettings
{
  v24 = *MEMORY[0x1E69E9840];
  if (NFInternalBuild())
  {
    v3 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(FCBundleSubscriptionManager *)self cachedSubscription];
      v6 = [v5 debugDescription];
      v22 = 138412290;
      v23 = v6;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "forceExpireBundleSubscriptionBasedOnInternalSettings  cachedSubscription=%@", &v22, 0xCu);
    }

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v7 BOOLForKey:@"newssubscription.bundle_subscriptions.force_expire_bundle_subscriptions"];

    if (v8)
    {
      if (self)
      {
        bundleSubscriptionLookupEntryManager = self->_bundleSubscriptionLookupEntryManager;
      }

      else
      {
        bundleSubscriptionLookupEntryManager = 0;
      }

      v10 = [(FCBundleSubscriptionLookUpEntryManager *)bundleSubscriptionLookupEntryManager bundleSubscriptionLookUpEntry];
      v11 = [v10 mutableCopy];

      if (v11)
      {
        v12 = [MEMORY[0x1E695DF00] date];
        [v11 setDateOfExpiration:v12];

        [v11 setPurchaseValidationState:1];
        if (self)
        {
          v13 = self->_bundleSubscriptionLookupEntryManager;
        }

        else
        {
          v13 = 0;
        }

        [(FCBundleSubscriptionLookUpEntryManager *)v13 updateEntry:v11];
      }

      if (self)
      {
        bundleChannelProvider = self->_bundleChannelProvider;
      }

      else
      {
        bundleChannelProvider = 0;
      }

      v15 = bundleChannelProvider;
      v16 = [(FCBundleChannelProviderType *)v15 bundleChannelIDs];
      v17 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:v16];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17 + 577];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-577 - v17];
      objc_setAssociatedObject(v17, (v17 + 1), v18, 1);
      objc_setAssociatedObject(v17, (-578 - v17), v19, 1);

      [(FCBundleSubscriptionManager *)self updateCachedSubscriptionWithSubscription:v17];
      v20 = [(FCBundleSubscriptionManager *)self cachedSubscription];
      [(FCBundleSubscriptionManager *)self notifyObserversForExpiredStateWithSubscription:v20];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)silentExpireBundleSubscription
{
  v2 = self;
  if (self)
  {
    self = self->_bundleSubscriptionLookupEntryManager;
  }

  v3 = [(FCBundleSubscriptionManager *)self bundleSubscriptionLookUpEntry];
  v13 = [v3 mutableCopy];

  if (v13)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [v13 setDateOfExpiration:v4];

    [v13 setPurchaseValidationState:1];
    [v13 setHasShownRenewalNotice:1];
    if (v2)
    {
      bundleSubscriptionLookupEntryManager = v2->_bundleSubscriptionLookupEntryManager;
    }

    else
    {
      bundleSubscriptionLookupEntryManager = 0;
    }

    [(FCBundleSubscriptionLookUpEntryManager *)bundleSubscriptionLookupEntryManager updateEntry:v13];
  }

  if (v2)
  {
    bundleChannelProvider = v2->_bundleChannelProvider;
  }

  else
  {
    bundleChannelProvider = 0;
  }

  v7 = bundleChannelProvider;
  v8 = [(FCBundleChannelProviderType *)v7 bundleChannelIDs];
  v9 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:v8];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 + 594];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-594 - v9];
  objc_setAssociatedObject(v9, (v9 + 1), v10, 1);
  objc_setAssociatedObject(v9, (-595 - v9), v11, 1);

  [(FCBundleSubscriptionManager *)v2 updateCachedSubscriptionWithSubscription:v9];
  v12 = [(FCBundleSubscriptionManager *)v2 cachedSubscription];
  [(FCBundleSubscriptionManager *)v2 notifyObserversForExpiredStateWithSubscription:v12];
}

- (void)addObserver:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    if (self)
    {
      observers = self->_observers;
    }

    else
    {
      observers = 0;
    }

    if ([(NSHashTable *)observers containsObject:v4]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", v4];
      *buf = 136315906;
      v11 = "[FCBundleSubscriptionManager addObserver:]";
      v12 = 2080;
      v13 = "FCBundleSubscriptionManager.m";
      v14 = 1024;
      v15 = 614;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (self)
      {
        goto LABEL_7;
      }
    }

    else if (self)
    {
LABEL_7:
      v6 = self->_observers;
LABEL_8:
      [(NSHashTable *)v6 addObject:v4];
      goto LABEL_11;
    }

    v6 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v11 = "[FCBundleSubscriptionManager addObserver:]";
    v12 = 2080;
    v13 = "FCBundleSubscriptionManager.m";
    v14 = 1024;
    v15 = 610;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    if (self)
    {
      observers = self->_observers;
    }

    else
    {
      observers = 0;
    }

    [(NSHashTable *)observers removeObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v9 = "[FCBundleSubscriptionManager removeObserver:]";
    v10 = 2080;
    v11 = "FCBundleSubscriptionManager.m";
    v12 = 1024;
    v13 = 623;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __103__FCBundleSubscriptionManager_notifyObserversForSubscribedStateWithSubscription_hideBundleDetectionUI___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 bundleSubscriptionDidSubscribe:{*(a1 + 40), v11}];
        }

        if (objc_opt_respondsToSelector())
        {
          [v9 bundleSubscriptionDidSubscribe:*(a1 + 40) hideBundleDetectionUI:*(a1 + 48)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __78__FCBundleSubscriptionManager_notifyObserversForExpiredStateWithSubscription___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 bundleSubscriptionDidExpire:{*(a1 + 40), v11}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __107__FCBundleSubscriptionManager_notifyObserversForChangeStateWithNewSubscription_previousBundleSubscription___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 bundleSubscriptionDidChange:a1[5] previousBundleSubscription:{a1[6], v11}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)prepareForUseWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__FCBundleSubscriptionManager_prepareForUseWithCompletion___block_invoke;
  v6[3] = &unk_1E7C3A840;
  v7 = v4;
  v5 = v4;
  [(FCBundleSubscriptionManager *)self refreshBundleSubscriptionWithCachePolicy:1 completion:v6];
}

uint64_t __59__FCBundleSubscriptionManager_prepareForUseWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)networkReachabilityDidChange:(id)a3
{
  if ([a3 isNetworkReachable])
  {
    v4 = self ? self->_bundleChannelProvider : 0;
    v5 = [(FCBundleChannelProviderType *)v4 bundleChannelIDs];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "bundleChannelIDs list found empty.Initiating download for bundle channelIds list", v9, 2u);
      }

      if (self)
      {
        bundleChannelProvider = self->_bundleChannelProvider;
      }

      else
      {
        bundleChannelProvider = 0;
      }

      [(FCBundleChannelProviderType *)bundleChannelProvider loadInitialBundleChannelIDsWithCompletion:&__block_literal_global_115];
    }
  }
}

void __60__FCBundleSubscriptionManager_networkReachabilityDidChange___block_invoke()
{
  v0 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B63EF000, v0, OS_LOG_TYPE_DEFAULT, "Successfully downloaded bundleChannelIDs list", v1, 2u);
  }
}

@end