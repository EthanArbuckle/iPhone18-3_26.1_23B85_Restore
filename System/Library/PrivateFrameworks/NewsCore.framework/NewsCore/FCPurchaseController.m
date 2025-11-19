@interface FCPurchaseController
- (BOOL)hasPurchaseTypeAppStore;
- (BOOL)hasRenewalNoticeShownForTagID:(id)a3;
- (BOOL)isPaidSubscriber;
- (BOOL)isPaidSubscriberFromAppStore;
- (BOOL)isPaidSubscriberFromNews;
- (BOOL)isPaidSubscriberFromWeb;
- (BOOL)isTagIDPurchased:(id)a3;
- (BOOL)isTagPurchased:(id)a3;
- (FCPurchaseController)init;
- (FCPurchaseController)initWithCloudContext:(id)a3 entitlementService:(id)a4;
- (NSDictionary)purchaseLookUpEntriesByTagID;
- (NSSet)allPurchaseIDs;
- (NSSet)allTagIDs;
- (NSString)lastSignedInItunesAccountName;
- (id)_allPurchasedTagIDs;
- (id)expiredPurchaseChannelIDs;
- (id)lastSignedInItunesAccountDSID;
- (id)purchaseLookUpEntryForTagID:(id)a3;
- (id)subscriptionNotSupportedChannelIDs;
- (id)webAccessEntryForTagID:(void *)a1;
- (id)webAccessOptedInTagIDs;
- (uint64_t)_removeFromPurchasedChannelsListWithTagIDs:(uint64_t)result;
- (uint64_t)atleastOneValidAppStorePurchase;
- (void)_enumerateValidPurchasesUsingBlock:(void *)a1;
- (void)activityObservingApplicationDidEnterBackground;
- (void)addToPurchasedChannelsListWithTagID:(uint64_t)a1 purchaseID:(void *)a2 purchaseType:(void *)a3 purchaseValidationState:(uint64_t)a4 isNewsAppPurchase:(char)a5 lastVerificationTime:(void *)a6;
- (void)addToWebAccessOptedInListWithTagID:(id)a3;
- (void)clearAllAppStorePurchases;
- (void)dealloc;
- (void)forceExpireAllSubscriptionsIfNeeded;
- (void)handleAccessTokenChangeWithTagID:(uint64_t)a1 userInitiated:(void *)a2;
- (void)notifyPurchaseAddedWithTagIDs:(uint64_t)a1;
- (void)notifyPurchaseListChanged;
- (void)notifyPurchaseRemovedWithTagIDs:(uint64_t)a1;
- (void)notifyPurchasesDiscoveredWithTagIDs:(uint64_t)a1;
- (void)performEntitlementCheckWithIgnoreCache:(BOOL)a3 callbackQueue:(id)a4 completion:(id)a5;
- (void)removeFromPurchasedChannelsListWithTagIDs:(id)a3;
- (void)removeFromPurchasesDiscoveredList:(id)a3 completion:(id)a4;
- (void)renewalNoticeShownForPurchasedChannelsListWithTagIDs:(id)a3;
- (void)setPurchasesDiscoveredTagIDs:(uint64_t)a1;
- (void)shouldShowSignedInWithDifferentiTunesAccountAlertWithiTunesAccountName:(id)a3 iTunesAccountDSID:(id)a4 isUserSignedIntoiTunes:(BOOL)a5 isBundleSubscriber:(BOOL)a6 completion:(id)a7;
- (void)shouldShowiTunesSignedOutAlertWithiTunesAccountName:(id)a3 iTunesAccountDSID:(id)a4 isUserSignedIntoiTunes:(BOOL)a5 isBundleSubscriber:(BOOL)a6 completion:(id)a7;
- (void)silentExpireInAppSubscriptions;
- (void)submitWebAccessWithTagID:(id)a3 purchaseID:(id)a4 emailAddress:(id)a5 purchaseReceipt:(id)a6 serialCompletion:(id)a7 completion:(id)a8;
- (void)updatePurchaseEntryToExpired:(id)a3;
- (void)updatePurchaseEntryToExpiredForTagIDs:(id)a3;
- (void)verifyAccessTokenWithTagID:(id)a3 accessToken:(id)a4 consumedArticleCount:(unint64_t)a5 serialCompletion:(id)a6 callbackQueue:(id)a7 completion:(id)a8;
@end

@implementation FCPurchaseController

- (id)_allPurchasedTagIDs
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__FCPurchaseController__allPurchasedTagIDs__block_invoke;
    v5[3] = &unk_1E7C38FA0;
    v6 = v2;
    v3 = v2;
    [(FCPurchaseController *)v1 _enumerateValidPurchasesUsingBlock:v5];
    v1 = [v3 copy];
  }

  return v1;
}

- (BOOL)isPaidSubscriber
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  v4 = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__FCPurchaseController_isPaidSubscriber__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)isPaidSubscriberFromWeb
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  v4 = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FCPurchaseController_isPaidSubscriberFromWeb__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)isPaidSubscriberFromNews
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  v4 = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__FCPurchaseController_isPaidSubscriberFromNews__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)isPaidSubscriberFromAppStore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  v4 = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__FCPurchaseController_isPaidSubscriberFromAppStore__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)webAccessOptedInTagIDs
{
  if (self)
  {
    self = self->_cloudContext;
  }

  v2 = [(FCPurchaseController *)self tagSettings];
  v3 = [v2 webAccessOptedInTagIDs];

  return v3;
}

- (FCPurchaseController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPurchaseController init]";
    v10 = 2080;
    v11 = "FCPurchaseController.m";
    v12 = 1024;
    v13 = 162;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPurchaseController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPurchaseController)initWithCloudContext:(id)a3 entitlementService:(id)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    if (!self)
    {
LABEL_51:
      v13 = 0;
      goto LABEL_50;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cloudContext != nil"];
      *v95 = 136315906;
      v96 = "[FCPurchaseController initWithCloudContext:entitlementService:]";
      v97 = 2080;
      v98 = "FCPurchaseController.m";
      v99 = 1024;
      v100 = 168;
      v101 = 2114;
      v102 = v77;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v95, 0x26u);
    }

    v11 = v8;
    if (!self)
    {
      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cloudContext != nil"];
      *v95 = 136315906;
      v96 = "[FCPurchaseController initWithCloudContext:entitlementService:keyValueStoreOption:]";
      v97 = 2080;
      v98 = "FCPurchaseController.m";
      v99 = 1024;
      v100 = 178;
      v101 = 2114;
      v102 = v78;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v95, 0x26u);
    }
  }

  v88.receiver = self;
  v88.super_class = FCPurchaseController;
  v12 = [(FCPurchaseController *)&v88 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_50;
  }

  v81 = v8;
  objc_storeStrong(&v12->_cloudContext, a3);
  objc_storeStrong(&v13->_entitlementService, a4);
  v14 = [v7 userInfo];
  [v14 addObserver:v13];

  v93[0] = @"newssubscription.subscriptions.metered_count_duration";
  v93[1] = @"newssubscription.a_la_carte_subscriptions.metered_count_maximum_limit";
  v94[0] = &unk_1F2E6FDC8;
  v94[1] = &unk_1F2E6FDC8;
  v93[2] = @"newssubscription.bundle_subscriptions.metered_count_maximum_limit";
  v94[2] = &unk_1F2E6FDC8;
  v15 = 0x1E695D000uLL;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:3];
  v17 = [MEMORY[0x1E695E000] standardUserDefaults];
  v80 = v16;
  [v17 registerDefaults:v16];

  v79 = [v7 privateDataDirectory];
  v18 = [[FCKeyValueStore alloc] initWithName:@"PurchasedChannelList" directory:v79 version:1 options:0 classRegistry:0];
  localStore = v13->_localStore;
  v13->_localStore = v18;

  v20 = [[FCPurchaseLookUpEntriesManager alloc] initWithLocalStore:?];
  purchaseLookupEntriesManager = v13->_purchaseLookupEntriesManager;
  v13->_purchaseLookupEntriesManager = v20;

  v82 = v7;
  v22 = [v7 appActivityMonitor];
  [v22 addObserver:v13];

  v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_BACKGROUND, 0);
  v25 = dispatch_queue_create("FCPurchaseLookUpData.purchasedChannelsAccessQueue", v24);
  accessQueue = v13->_accessQueue;
  v13->_accessQueue = v25;

  v27 = objc_opt_new();
  entitlementQueue = v13->_entitlementQueue;
  v13->_entitlementQueue = v27;

  v29 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_14];
  session = v13->_session;
  v13->_session = v29;

  objc_setProperty_atomic_copy(v13, v31, MEMORY[0x1E695E0F8], 64);
  v32 = [MEMORY[0x1E695DF90] dictionary];
  webAccessEntriesByTagID = v13->_webAccessEntriesByTagID;
  v13->_webAccessEntriesByTagID = v32;

  v34 = [MEMORY[0x1E695DFA8] set];
  purchasesDiscoveredTagIDs = v13->_purchasesDiscoveredTagIDs;
  v13->_purchasesDiscoveredTagIDs = v34;

  v36 = v13->_localStore;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = [(FCKeyValueStore *)v36 allKeys];
  v37 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (!v37)
  {
    goto LABEL_43;
  }

  v38 = v37;
  v39 = *v90;
  v84 = v36;
  v85 = v13;
  v83 = *v90;
  do
  {
    v40 = 0;
    v86 = v38;
    do
    {
      if (*v90 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v89 + 1) + 8 * v40);
      v42 = *(v15 + 3872);
      objc_opt_class();
      v43 = [(FCKeyValueStore *)v36 objectForKey:v41];
      if (v43)
      {
        if (objc_opt_isKindOfClass())
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = v44;

      if (v45)
      {
        if (![v41 hasPrefix:@"wa-"])
        {
          goto LABEL_39;
        }

        v46 = [FCWebAccessEntry alloc];
        v47 = v41;
        v48 = v45;
        v49 = v48;
        if (v46)
        {
          if (!v47 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"web access entry must have an identifier"];
            *buf = 136315906;
            v104 = "[FCWebAccessEntry initWithEntryID:dictionaryRepresentation:]";
            v105 = 2080;
            v106 = "FCPurchaseController.m";
            v107 = 1024;
            v108 = 1829;
            v109 = 2114;
            v110 = v60;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v50 = [v49 objectForKeyedSubscript:@"WebAccessEntryLastRetryAttemptTime"];
          v51 = [v49 objectForKeyedSubscript:@"WebAccessEntryEmail"];
          v52 = [v49 objectForKeyedSubscript:@"WebAccessEntryPurchaseReceipt"];
          v53 = [v49 objectForKeyedSubscript:@"WebAccessEntryTagID"];
          v54 = [v49 objectForKeyedSubscript:@"WebAccessEntryPurchaseID"];
          v46 = [(FCWebAccessEntry *)v46 initWithEntryID:v47 tagID:v53 purchaseID:v54 lastRetryAttemptTime:v50 email:v51 purchaseReceipt:v52];

          if (!v46)
          {
            v36 = v84;
            v13 = v85;
            v15 = 0x1E695D000;
            v38 = v86;
            v39 = v83;
            goto LABEL_38;
          }

          v13 = v85;
          v47 = [(FCPurchaseController *)v85 webAccessEntriesByTagID];
          [v47 setObject:v46 forKey:v46->_tagID];
          v15 = 0x1E695D000;
          v39 = v83;
          v36 = v84;
          v38 = v86;
        }

        else
        {
        }
      }

      else
      {
        objc_opt_class();
        v55 = [(FCKeyValueStore *)v36 objectForKey:v41];
        if (v55)
        {
          if (objc_opt_isKindOfClass())
          {
            v56 = v55;
          }

          else
          {
            v56 = 0;
          }
        }

        else
        {
          v56 = 0;
        }

        v46 = v56;

        if (!v46 || ![v41 isEqualToString:@"SubscriptionsDiscoveredList"])
        {
          goto LABEL_38;
        }

        v57 = MEMORY[0x1E695DFD8];
        v47 = [(FCWebAccessEntry *)v46 copy];
        v58 = [v57 setWithArray:v47];
        v59 = v13->_purchasesDiscoveredTagIDs;
        v13->_purchasesDiscoveredTagIDs = v58;
      }

LABEL_38:
LABEL_39:

      ++v40;
    }

    while (v38 != v40);
    v61 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
    v38 = v61;
  }

  while (v61);
LABEL_43:

  v62 = [(FCPurchaseLookUpEntriesManager *)&v13->_purchaseLookupEntriesManager->super.isa lookupEntriesByTagID];
  v63 = [v62 copy];
  objc_setProperty_atomic_copy(v13, v64, v63, 64);

  v8 = v81;
  if (NFInternalBuild())
  {
    v65 = [MEMORY[0x1E695E000] standardUserDefaults];
    v66 = [v65 BOOLForKey:@"simulate_subscription_detection_enabled"];

    if (v66)
    {
      v67 = arc4random_uniform(5u);
      v68 = [MEMORY[0x1E695DF70] array];
      if (v67 <= 0x7FFFFFFE)
      {
        v69 = 0;
        do
        {
          v70 = [&unk_1F2E6F720 objectAtIndexedSubscript:v69];
          [v68 addObject:v70];

          ++v69;
        }

        while (v67 + 1 != v69);
      }

      v71 = MEMORY[0x1E695DFD8];
      v72 = [v68 copy];
      v73 = [v71 setWithArray:v72];
      v74 = v13->_purchasesDiscoveredTagIDs;
      v13->_purchasesDiscoveredTagIDs = v73;
    }
  }

  v7 = v82;
LABEL_50:

  v75 = *MEMORY[0x1E69E9840];
  return v13;
}

id __84__FCPurchaseController_initWithCloudContext_entitlementService_keyValueStoreOption___block_invoke()
{
  v0 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  [v0 setNetworkServiceType:0];
  v1 = [MEMORY[0x1E696AE30] processInfo];
  [v0 setHTTPMaximumConnectionsPerHost:{2 * objc_msgSend(v1, "processorCount")}];

  [v0 setTimeoutIntervalForRequest:15.0];
  v2 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v0];

  return v2;
}

- (void)dealloc
{
  if (!NSClassFromString(&cfstr_Xctest.isa))
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __31__FCPurchaseController_dealloc__block_invoke_2;
    v4[3] = &unk_1E7C36EA0;
    v4[4] = self;
    FCPerformBlockOnMainThread(v4);
  }

  v3.receiver = self;
  v3.super_class = FCPurchaseController;
  [(FCPurchaseController *)&v3 dealloc];
}

void __31__FCPurchaseController_dealloc__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = v2;
  v4 = [v3 userInfo];
  [v4 removeObserver:*(a1 + 32)];
}

- (void)setPurchasesDiscoveredTagIDs:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)notifyPurchaseAddedWithTagIDs:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__FCPurchaseController_notifyPurchaseAddedWithTagIDs___block_invoke_2;
    v5[3] = &unk_1E7C36C58;
    v6 = v4;
    v7 = a1;
    FCPerformBlockOnMainThread(v5);
  }
}

void __54__FCPurchaseController_notifyPurchaseAddedWithTagIDs___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6 = FCPurchaseAddedTagIDsKey;
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:FCPurchaseAddedNotificationName object:0 userInfo:v3];

  [(FCPurchaseController *)*(a1 + 40) notifyPurchaseListChanged];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)notifyPurchaseListChanged
{
  if (a1)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __49__FCPurchaseController_notifyPurchaseListChanged__block_invoke;
    v1[3] = &unk_1E7C36EA0;
    v1[4] = a1;
    FCPerformBlockOnMainThread(v1);
  }
}

- (void)notifyPurchaseRemovedWithTagIDs:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__FCPurchaseController_notifyPurchaseRemovedWithTagIDs___block_invoke_2;
    v5[3] = &unk_1E7C36C58;
    v6 = v4;
    v7 = a1;
    FCPerformBlockOnMainThread(v5);
  }
}

void __56__FCPurchaseController_notifyPurchaseRemovedWithTagIDs___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6 = FCPurchaseRemovedTagIDsKey;
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:FCPurchaseRemovedNotificationName object:0 userInfo:v3];

  [(FCPurchaseController *)*(a1 + 40) notifyPurchaseListChanged];
  v5 = *MEMORY[0x1E69E9840];
}

void __49__FCPurchaseController_notifyPurchaseListChanged__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [(FCPurchaseController *)*(a1 + 32) _allPurchasedTagIDs];
  v5 = FCPurchasedTagIDsKey;
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:FCPurchaseListChangedNotificationName object:0 userInfo:v2];

  v4 = *MEMORY[0x1E69E9840];
}

void __57__FCPurchaseController_notifyWebAccessOptedInListChanged__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:FCWebAccessOptedInListChangedNotificationName object:0];
}

- (void)notifyPurchasesDiscoveredWithTagIDs:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__FCPurchaseController_notifyPurchasesDiscoveredWithTagIDs___block_invoke;
    v5[3] = &unk_1E7C36EA0;
    v6 = v3;
    FCPerformBlockOnMainThread(v5);
  }
}

void __60__FCPurchaseController_notifyPurchasesDiscoveredWithTagIDs___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = FCPurchasedTagIDsKey;
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:FCPurchasesDiscoveredNotificationName object:0 userInfo:v2];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addToWebAccessOptedInListWithTagID:(id)a3
{
  if (self)
  {
    cloudContext = self->_cloudContext;
    v4 = a3;
    v5 = [(FCCloudContext *)cloudContext tagSettings];
    [v5 setWebAccessOptInForTagID:v4 webAccessOptIn:1];

    FCPerformBlockOnMainThread(&__block_literal_global_177);
  }

  else
  {
    v6 = a3;
    v7 = [0 tagSettings];
    [v7 setWebAccessOptInForTagID:v6 webAccessOptIn:1];
  }
}

- (void)shouldShowSignedInWithDifferentiTunesAccountAlertWithiTunesAccountName:(id)a3 iTunesAccountDSID:(id)a4 isUserSignedIntoiTunes:(BOOL)a5 isBundleSubscriber:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(FCPurchaseController *)self lastSignedInItunesAccountName];
  v22 = v12;
  v16 = v13;
  v17 = [(FCPurchaseController *)&self->super.isa lastSignedInItunesAccountDSID];
  v18 = v17;
  if (v17 && a5)
  {
    v19 = [(FCPurchaseController *)&self->super.isa lastSignedInItunesAccountDSID];
    v20 = [v19 isEqualToString:v16];

    if ((v20 & 1) == 0 && (([(FCPurchaseController *)self atleastOneValidAppStorePurchase]& 1) != 0 || v8))
    {
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:v16 forKey:@"LastSignedInITunesAccountDSID"];
        localStore = self->_localStore;
      }

      else
      {
        [0 setObject:v16 forKey:@"LastSignedInITunesAccountDSID"];
        localStore = 0;
      }

      [(FCKeyValueStore *)localStore setObject:v22 forKey:@"LastSignedInITunesAccountName"];
      if (v14)
      {
        v14[2](v14, 1, v15, v22);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (v14)
  {
    v14[2](v14, 0, 0, 0);
  }

LABEL_13:
}

- (id)lastSignedInItunesAccountDSID
{
  if (a1)
  {
    a1 = [a1[6] objectForKey:@"LastSignedInITunesAccountDSID"];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)atleastOneValidAppStorePurchase
{
  if (a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v1 = *(a1 + 56);
    v2 = [(FCPurchaseLookUpEntriesManager *)v1 lookupEntriesByTagID];
    v3 = [v2 copy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__FCPurchaseController_atleastOneValidAppStorePurchase__block_invoke;
    v6[3] = &unk_1E7C38F78;
    v6[4] = &v7;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];

    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)shouldShowiTunesSignedOutAlertWithiTunesAccountName:(id)a3 iTunesAccountDSID:(id)a4 isUserSignedIntoiTunes:(BOOL)a5 isBundleSubscriber:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(FCPurchaseController *)self lastSignedInItunesAccountName];
  v18 = v12;
  v16 = v13;
  if (!v15 || a5)
  {
    if (self)
    {
      [(FCKeyValueStore *)self->_localStore setObject:v16 forKey:@"LastSignedInITunesAccountDSID"];
      localStore = self->_localStore;
    }

    else
    {
      [0 setObject:v16 forKey:@"LastSignedInITunesAccountDSID"];
      localStore = 0;
    }

    [(FCKeyValueStore *)localStore setObject:v18 forKey:@"LastSignedInITunesAccountName"];
  }

  else if (([(FCPurchaseController *)self atleastOneValidAppStorePurchase]& 1) != 0 || v8)
  {
    if (v14)
    {
      v14[2](v14, 1, v15);
    }

    goto LABEL_12;
  }

  if (v14)
  {
    v14[2](v14, 0, 0);
  }

LABEL_12:
}

- (void)clearAllAppStorePurchases
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v5 = purchaseLookupEntriesManager;
  v6 = [(FCPurchaseLookUpEntriesManager *)v5 lookupEntriesByTagID];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __49__FCPurchaseController_clearAllAppStorePurchases__block_invoke;
  v18 = &unk_1E7C38F50;
  v7 = v3;

  v19 = v7;
  v20 = self;
  [v6 enumerateKeysAndObjectsUsingBlock:&v15];

  [(FCPurchaseController *)self notifyPurchaseRemovedWithTagIDs:v7];
  v8 = [(FCPurchaseController *)self purchasesDiscoveredTagIDs:v15];
  v9 = [v8 fc_setByMinusingSet:v7];
  [(FCPurchaseController *)self setPurchasesDiscoveredTagIDs:v9];

  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v11 = localStore;
  v12 = [(FCPurchaseController *)self purchasesDiscoveredTagIDs];
  v13 = [v12 allObjects];
  [(FCKeyValueStore *)v11 setObject:v13 forKey:@"SubscriptionsDiscoveredList"];

  v14 = [(FCPurchaseController *)self purchasesDiscoveredTagIDs];
  [(FCPurchaseController *)self notifyPurchasesDiscoveredWithTagIDs:v14];
}

void __49__FCPurchaseController_clearAllAppStorePurchases__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([v5 purchaseType] == 1)
  {
    [*(a1 + 32) addObject:v14];
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    [(FCPurchaseLookUpEntriesManager *)v7 removeEntry:v5];
    v8 = *(a1 + 40);
    if (v8)
    {
      v8 = v8[7];
    }

    v9 = v8;
    v10 = [(FCPurchaseLookUpEntriesManager *)v9 lookupEntriesByTagID];
    v12 = [v10 copy];
    v13 = *(a1 + 40);
    if (v13)
    {
      objc_setProperty_atomic_copy(v13, v11, v12, 64);
    }
  }
}

- (NSString)lastSignedInItunesAccountName
{
  if (self)
  {
    self = self->_localStore;
  }

  return [(FCPurchaseController *)self objectForKey:@"LastSignedInITunesAccountName"];
}

- (void)addToPurchasedChannelsListWithTagID:(uint64_t)a1 purchaseID:(void *)a2 purchaseType:(void *)a3 purchaseValidationState:(uint64_t)a4 isNewsAppPurchase:(char)a5 lastVerificationTime:(void *)a6
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (a1)
  {
    v14 = *(a1 + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __147__FCPurchaseController_addToPurchasedChannelsListWithTagID_purchaseID_purchaseType_purchaseValidationState_isNewsAppPurchase_lastVerificationTime___block_invoke;
    block[3] = &unk_1E7C393A8;
    block[4] = a1;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = a4;
    v20 = 1;
    v21 = a5;
    dispatch_sync(v14, block);
  }
}

void __40__FCPurchaseController_isPaidSubscriber__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 purchaseValidationState] == 1 || objc_msgSend(v6, "purchaseValidationState") == 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __48__FCPurchaseController_isPaidSubscriberFromNews__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isNewsAppPurchase] && objc_msgSend(v6, "purchaseValidationState") == 1 && objc_msgSend(v6, "purchaseType") == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __52__FCPurchaseController_isPaidSubscriberFromAppStore__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 isNewsAppPurchase] & 1) == 0 && objc_msgSend(v6, "purchaseValidationState") == 1 && objc_msgSend(v6, "purchaseType") == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __47__FCPurchaseController_isPaidSubscriberFromWeb__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 purchaseValidationState] == 1 || objc_msgSend(v6, "purchaseValidationState") == 3) && objc_msgSend(v6, "purchaseType") == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)hasPurchaseTypeAppStore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  v4 = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FCPurchaseController_hasPurchaseTypeAppStore__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __47__FCPurchaseController_hasPurchaseTypeAppStore__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 purchaseValidationState] == 1 && objc_msgSend(v6, "purchaseType") == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)hasRenewalNoticeShownForTagID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FCPurchaseController_hasRenewalNoticeShownForTagID___block_invoke;
  block[3] = &unk_1E7C37138;
  v12 = &v13;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_sync(accessQueue, block);
  v7 = v14[5];
  if (v7)
  {
    v8 = [v7 hasShownRenewalNotice];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __54__FCPurchaseController_hasRenewalNoticeShownForTagID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = v2;
  v7 = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v4 = [v7 objectForKey:a1[5]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)forceExpireAllSubscriptionsIfNeeded
{
  if (NFInternalBuild())
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"force_expire_subscriptions"];

    if (v4)
    {
      if (self)
      {
        purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
      }

      else
      {
        purchaseLookupEntriesManager = 0;
      }

      v6 = [(FCPurchaseLookUpEntriesManager *)&purchaseLookupEntriesManager->super.isa lookupEntriesByTagID];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __59__FCPurchaseController_forceExpireAllSubscriptionsIfNeeded__block_invoke_2;
      v12[3] = &unk_1E7C38FA0;
      v12[4] = self;
      [v6 enumerateKeysAndObjectsUsingBlock:v12];

      if (self)
      {
        v7 = self->_purchaseLookupEntriesManager;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      v9 = [(FCPurchaseLookUpEntriesManager *)v8 lookupEntriesByTagID];
      v11 = [v9 copy];
      if (self)
      {
        objc_setProperty_atomic_copy(self, v10, v11, 64);
      }
    }
  }
}

void __59__FCPurchaseController_forceExpireAllSubscriptionsIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 mutableCopy];
  [v7 setPurchaseValidationState:2];
  [v7 setHasShownRenewalNotice:0];
  v4 = [MEMORY[0x1E695DF00] date];
  [v7 setDateOfExpiration:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
  }

  [(FCPurchaseLookUpEntriesManager *)v6 updateEntry:v7];
}

- (void)silentExpireInAppSubscriptions
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v4 = purchaseLookupEntriesManager;
  v5 = [(FCPurchaseLookUpEntriesManager *)v4 lookupEntriesByTagID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__FCPurchaseController_silentExpireInAppSubscriptions__block_invoke;
  v11[3] = &unk_1E7C38FC8;
  v11[4] = self;
  v11[5] = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];

  if (self)
  {
    v6 = self->_purchaseLookupEntriesManager;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(FCPurchaseLookUpEntriesManager *)v7 lookupEntriesByTagID];
  v10 = [v8 copy];
  if (self)
  {
    objc_setProperty_atomic_copy(self, v9, v10, 64);
  }

  [(FCPurchaseController *)self notifyPurchaseRemovedWithTagIDs:?];
  _Block_object_dispose(&v12, 8);
}

void __54__FCPurchaseController_silentExpireInAppSubscriptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 purchaseType] == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
    v6 = [v5 mutableCopy];
    [v6 setPurchaseValidationState:2];
    [v6 setHasShownRenewalNotice:1];
    v7 = [MEMORY[0x1E695DF00] date];
    [v6 setDateOfExpiration:v7];

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
    }

    [(FCPurchaseLookUpEntriesManager *)v9 updateEntry:v6];
  }
}

- (id)expiredPurchaseChannelIDs
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v5 = purchaseLookupEntriesManager;
  v6 = [(FCPurchaseLookUpEntriesManager *)v5 lookupEntriesByTagID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__FCPurchaseController_expiredPurchaseChannelIDs__block_invoke;
  v10[3] = &unk_1E7C38FA0;

  v11 = v3;
  v7 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

void __49__FCPurchaseController_expiredPurchaseChannelIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 purchaseValidationState] == 2 && (objc_msgSend(v6, "hasShownRenewalNotice") & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v6 tagID];
    [v4 addObject:v5];
  }
}

- (id)subscriptionNotSupportedChannelIDs
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v5 = purchaseLookupEntriesManager;
  v6 = [(FCPurchaseLookUpEntriesManager *)v5 lookupEntriesByTagID];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__FCPurchaseController_subscriptionNotSupportedChannelIDs__block_invoke;
  v13 = &unk_1E7C38F50;
  v14 = self;

  v15 = v3;
  v7 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __58__FCPurchaseController_subscriptionNotSupportedChannelIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 purchaseValidationState] == 4)
  {
    v5 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = objc_opt_class();
      v9 = [v4 tagID];
      v13 = 138412546;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%@ found a purchaseLookupEntry with not supported validation state for tagID %{public}@", &v13, 0x16u);
    }

    v10 = *(a1 + 40);
    v11 = [v4 tagID];
    [v10 addObject:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)performEntitlementCheckWithIgnoreCache:(BOOL)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [v10 bundleIdentifier];

  if (([v11 isEqualToString:@"com.apple.stocks"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"com.apple.news") & 1) != 0 || NSClassFromString(&cfstr_Xctest.isa))
  {
    objc_initWeak(&location, self);
    if (self)
    {
      cloudContext = self->_cloudContext;
    }

    else
    {
      cloudContext = 0;
    }

    v13 = cloudContext;
    v14 = [(FCCloudContext *)v13 configurationManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_189;
    v15[3] = &unk_1E7C39068;
    objc_copyWeak(&v18, &location);
    v15[4] = self;
    v19 = a3;
    v16 = v8;
    v17 = v9;
    [v14 fetchConfigurationIfNeededWithCompletion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke;
    v21[3] = &unk_1E7C38FF0;
    v21[4] = self;
    v22 = v11;
    v23 = v9;
    __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke(v21);
  }
}

uint64_t __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = a1[5];
    v9 = 138412546;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%@ ignoring alacarte entitlement check for bundleID=%{public}@", &v9, 0x16u);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, 0, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_189(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_2;
  v7[3] = &unk_1E7C39040;
  v11 = *(a1 + 64);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  FCPerformIfNonNil(WeakRetained, v7);
}

void __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_3;
  v7[3] = &unk_1E7C39018;
  v7[4] = a2;
  v11 = *(a1 + 64);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v6 = a2;
  [v5 enqueueBlock:v7];
}

void __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v15 = [v4 paidBundleConfig];
  v7 = [v15 restorableBundlePurchaseIDs];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = v6;
  if (v5)
  {
    objc_initWeak(&location, v5);
    v14 = v5[12];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke;
    v16[3] = &unk_1E7C392E0;
    v16[4] = v5;
    v17 = v11;
    v19 = v12;
    v20 = v13;
    objc_copyWeak(&v21, &location);
    v18 = v10;
    [v14 performEntitlementWithIgnoreCache:v3 completion:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke(id *a1, void *a2, uint64_t a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = v8;
    *buf = 138412802;
    v44 = objc_opt_class();
    v45 = 2114;
    v46 = v6;
    v47 = 2114;
    v48 = v7;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%@ Entitlements response received with entitlements:%{public}@ error:%{public}@", buf, 0x20u);
  }

  v11 = NewsCoreUserDefaults();
  if ([v11 BOOLForKey:@"running_ui_automation"])
  {
    v12 = NFInternalBuild();

    if (v12)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_193;
      v39[3] = &unk_1E7C390B8;
      v40 = a1[5];
      v41 = a1[7];
      v42 = a1[8];
      __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_193(v39);

      v13 = v40;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v13 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_196];
  v14 = [a1[4] entitlementsOverrideProvider];

  if (v14)
  {
    v15 = [a1[4] entitlementsOverrideProvider];
    v16 = [v15 entitlementsOverrideWithDefaultEntitlements:v13];

    if (v16)
    {
      v17 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v16 entitlements];
        *buf = 138543618;
        v44 = v19;
        v45 = 2114;
        v46 = v7;
        _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "Overriding entitlements response with entitlements:%{public}@ error:%{public}@", buf, 0x16u);
      }

      v20 = [v16 entitlements];

      v21 = [v16 error];

      v13 = v20;
      v7 = v21;
    }
  }

  if (v13 && (!v7 || [v13 count]))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 9);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_199;
    v29[3] = &unk_1E7C392B8;
    v23 = &v30;
    v30 = a1[6];
    v24 = &v31;
    v31 = v13;
    v25 = a1[5];
    v26 = a1[4];
    v32 = v25;
    v33 = v26;
    v34 = a1[7];
    v35 = a1[8];
    FCPerformIfNonNil(WeakRetained, v29);
  }

  else
  {
    v27 = a1[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_198;
    block[3] = &unk_1E7C39090;
    v23 = &v37;
    v37 = a1[7];
    v24 = &v38;
    v38 = a1[8];
    dispatch_async(v27, block);
  }

LABEL_19:
  v28 = *MEMORY[0x1E69E9840];
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_193(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2;
  v3[3] = &unk_1E7C39090;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);
}

uint64_t __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

FCSubscriptionEntitlement *__120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCSubscriptionEntitlement alloc] initWithASDEntitlement:v2];

  return v3;
}

uint64_t __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_198(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_199(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = [v3 allPurchasedTagIDs];
  v6 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "allPurchasedTagIDs:%@", &buf, 0xCu);
    v6 = FCPurchaseLog;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "restorableBundleIAPs:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__10;
  v65 = __Block_byref_object_dispose__10;
  v66 = [MEMORY[0x1E695DF90] dictionary];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_200;
  v52[3] = &unk_1E7C39100;
  v8 = *(a1 + 40);
  v53 = *(a1 + 32);
  p_buf = &buf;
  v9 = [v8 fc_arrayByTransformingWithBlock:v52];
  v10 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v57) = 138412290;
    *(&v57 + 4) = v9;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "entitled PurchaseIDs:%@", &v57, 0xCu);
  }

  *&v57 = 0;
  *(&v57 + 1) = &v57;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__10;
  v60 = __Block_byref_object_dispose__10;
  v61 = [MEMORY[0x1E695DFA8] set];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__10;
  v50[4] = __Block_byref_object_dispose__10;
  v51 = [MEMORY[0x1E695DFA8] set];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__10;
  v48[4] = __Block_byref_object_dispose__10;
  v49 = [MEMORY[0x1E695DFA8] set];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__10;
  v46[4] = __Block_byref_object_dispose__10;
  v47 = [MEMORY[0x1E695DF90] dictionary];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__10;
  v44[4] = __Block_byref_object_dispose__10;
  v45 = [MEMORY[0x1E695DF70] array];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_202;
  v33[3] = &unk_1E7C39240;
  v11 = *(a1 + 48);
  v33[4] = *(a1 + 56);
  v38 = &v57;
  v39 = v46;
  v12 = v9;
  v34 = v12;
  v40 = v48;
  v13 = v5;
  v35 = v13;
  v36 = v3;
  v41 = &buf;
  v42 = v44;
  v43 = v50;
  v14 = v4;
  v37 = v14;
  v15 = v33;
  if (v3)
  {
    v16 = v11;
    v17 = v12;
    v18 = [[FCPurchaseLookupFetchOperation alloc] initWithPurchaseIDs:v17 contentContext:v3[4]];

    [(FCOperation *)v18 setQualityOfService:25];
    [(FCOperation *)v18 setRelativePriority:1];
    [(FCFetchOperation *)v18 setFetchCompletionQueue:v16];

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __79__FCPurchaseController_fetchChannelIDsForPurchaseIDs_callbackQueue_completion___block_invoke;
    v55[3] = &unk_1E7C37A38;
    v56 = v15;
    [(FCFetchOperation *)v18 setFetchCompletionBlock:v55];
    v19 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v19 addOperation:v18];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_217;
  v22[3] = &unk_1E7C39290;
  v29 = &v57;
  v30 = v50;
  v23 = v13;
  v24 = v3;
  v31 = v48;
  v25 = *(a1 + 48);
  v27 = *(a1 + 64);
  v26 = *(a1 + 40);
  v32 = v44;
  v28 = *(a1 + 72);
  v20 = v13;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v22);

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&buf, 8);

  v21 = *MEMORY[0x1E69E9840];
}

id __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_200(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 inAppAdamID];
  v5 = [v4 stringValue];

  if (v5 && ([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKey:v5];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_202(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    Property = objc_getProperty(v4, v6, 64, 1);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __62__FCPurchaseController_allAppStorePurchasedTagIDsByPurchaseID__block_invoke;
    v56 = &unk_1E7C38FA0;
    v57 = v5;
    v8 = v5;
    [Property enumerateKeysAndObjectsUsingBlock:buf];
    v4 = [v8 copy];
  }

  v9 = [v3 error];

  if (!v9)
  {
    v17 = [v3 channelIDsByPurchaseID];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_203;
    v53[3] = &unk_1E7C39150;
    v54 = *(a1 + 72);
    [v17 enumerateKeysAndObjectsUsingBlock:v53];

    v18 = *(a1 + 40);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_4;
    v49[3] = &unk_1E7C391A0;
    v19 = v4;
    v20 = *(a1 + 72);
    v50 = v19;
    v51 = v20;
    v52 = *(a1 + 88);
    [v18 enumerateObjectsUsingBlock:v49];
    v16 = v50;
LABEL_10:

    goto LABEL_11;
  }

  v10 = [v3 error];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 error];
    v13 = [v12 fc_isOfflineError];

    if (v13)
    {
      v14 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
      {
        v37 = *(a1 + 32);
        v38 = v14;
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = *(a1 + 32);
        v42 = [v3 error];
        *buf = 138543874;
        *&buf[4] = v40;
        *&buf[12] = 2048;
        *&buf[14] = v41;
        *&buf[22] = 2114;
        v56 = v42;
        _os_log_error_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_ERROR, "<%{public}@ %p> fetchChannelIDsForPurchaseIDs failed with error: %{public}@", buf, 0x20u);
      }

      v15 = *(*(*(a1 + 72) + 8) + 40);
      v16 = [*(a1 + 48) allObjects];
      [v15 addObjectsFromArray:v16];
      goto LABEL_10;
    }
  }

LABEL_11:
  v21 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(*(*(a1 + 88) + 8) + 40);
    *buf = 138412290;
    *&buf[4] = v22;
    _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "subscriptionNotSupportedTagIDs:%@", buf, 0xCu);
    v21 = FCPurchaseLog;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412290;
    *&buf[4] = v23;
    _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "entitledTagIDs:%@", buf, 0xCu);
  }

  v24 = MEMORY[0x1E695DF70];
  v25 = [*(*(*(a1 + 72) + 8) + 40) allObjects];
  v26 = [v24 arrayWithArray:v25];

  v27 = [*(*(*(a1 + 88) + 8) + 40) allObjects];
  [v26 addObjectsFromArray:v27];

  v28 = *(a1 + 56);
  if (v28)
  {
    v28 = v28[4];
  }

  v29 = v28;
  v30 = [v29 tagController];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_207;
  v43[3] = &unk_1E7C39218;
  v31 = *(a1 + 72);
  v32 = *(a1 + 64);
  v43[4] = *(a1 + 56);
  v33 = *(a1 + 96);
  v45 = v31;
  v46 = v33;
  v34 = *(a1 + 112);
  v47 = *(a1 + 88);
  v48 = v34;
  v35 = v32;

  v44 = v35;
  [v30 fetchTagsForTagIDs:v26 maximumCachedAge:9 qualityOfService:v43 completionHandler:0.0];

  v36 = *MEMORY[0x1E69E9840];
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_203(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3_204;
  v7[3] = &unk_1E7C39128;
  v9 = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3_204(void *a1, void *a2)
{
  v3 = *(*(a1[5] + 8) + 40);
  v4 = a2;
  [v3 addObject:v4];
  [*(*(a1[6] + 8) + 40) setObject:a1[4] forKey:v4];
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_5;
    v5[3] = &unk_1E7C39178;
    v6 = *(a1 + 40);
    [v3 enumerateObjectsUsingBlock:v5];
  }
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(*(a1 + 32) + 8) + 40) containsObject:?] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_208;
  v9[3] = &unk_1E7C391F0;
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v5 = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = v5;
  v15 = *(a1 + 88);
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  FCPerformBlockOnMainThread(v9);
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_208(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3_209;
  v11[3] = &unk_1E7C391C8;
  v3 = *(a1 + 56);
  v11[4] = *(a1 + 40);
  v4 = *(a1 + 72);
  v12 = v3;
  v13 = v4;
  v14 = *(a1 + 88);
  [v2 enumerateKeysAndObjectsUsingBlock:v11];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_213;
  v9[3] = &unk_1E7C38B40;
  v10 = *(a1 + 32);
  v6 = [v5 fc_setOfObjectsPassingTest:v9];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_group_leave(*(a1 + 48));
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3_209(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  if (![*(*(*(a1 + 40) + 8) + 40) containsObject:v5])
  {
    if (![*(*(*(a1 + 72) + 8) + 40) containsObject:v5])
    {
      goto LABEL_20;
    }

    v6 = [v4 replacementID];
    v7 = [v4 identifier];
    if (v6 && [*(*(*(a1 + 40) + 8) + 40) containsObject:v6])
    {
      [*(*(*(a1 + 80) + 8) + 40) addObject:v6];
      [*(*(*(a1 + 72) + 8) + 40) removeObject:v7];
      v8 = *(a1 + 32);
      v20 = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      v10 = v9;
      if (v8)
      {
        v11 = v8[10];
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = __72__FCPurchaseController_silentRemoveFromPurchasedChannelsListWithTagIDs___block_invoke;
        v22 = &unk_1E7C36C58;
        v23 = v8;
        v24 = v9;
        dispatch_sync(v11, block);
      }

      goto LABEL_15;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (+[FCTagController isTagAllowedInContentStoreFront:](FCTagController, "isTagAllowedInContentStoreFront:", v4) && ([v4 isDeprecated] & 1) == 0)
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:v5];
    v12 = [*(a1 + 32) purchaseLookUpEntryForTagID:v5];
    v7 = v12;
    if (!v12)
    {
      v16 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        *block = 138412546;
        *&block[4] = v5;
        *&block[12] = 2112;
        *&block[14] = v6;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Adding tagID:%@ and purchaseID:%@ to purchased channels list", block, 0x16u);
      }

      v17 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:v6];
      -[FCPurchaseController addToPurchasedChannelsListWithTagID:purchaseID:purchaseType:purchaseValidationState:isNewsAppPurchase:lastVerificationTime:](*(a1 + 32), v5, v6, 1, [v17 isNewsAppPurchase], 0);
      v18 = -[FCRestorePaidSubscriptionItem initWithChannelID:isNewsAppPurchase:]([FCRestorePaidSubscriptionItem alloc], "initWithChannelID:isNewsAppPurchase:", v5, [v17 isNewsAppPurchase]);
      [*(*(*(a1 + 64) + 8) + 40) addObject:v18];

      goto LABEL_19;
    }

    if ([v12 purchaseValidationState] != 1)
    {
      v13 = *(a1 + 32);
      v14 = v7;
      v10 = v14;
      if (v13)
      {
        v15 = v13[10];
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = __64__FCPurchaseController_updatePurchaseEntryToValid_purchaseType___block_invoke;
        v22 = &unk_1E7C393F8;
        v24 = v13;
        v25 = 1;
        v23 = v14;
        dispatch_sync(v15, block);
      }

LABEL_15:

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  [*(*(*(a1 + 40) + 8) + 40) removeObject:v5];
LABEL_20:

  v19 = *MEMORY[0x1E69E9840];
}

BOOL __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_213(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_217(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 80) + 8) + 40) allObjects];
  v3 = [*(a1 + 32) allObjects];
  v4 = [v2 fc_arrayByRemovingObjectsInArray:v3];

  v5 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "restoredChannelIDs:%@", &buf, 0xCu);
  }

  v6 = [*(*(*(a1 + 88) + 8) + 40) allObjects];
  v7 = [v4 fc_arrayByRemovingObjectsInArray:v6];

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = v8[4];
    v10 = v7;
    v11 = [v9 tagController];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v53 = __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke;
    v54 = &unk_1E7C39358;
    v55 = v8;
    [v11 fetchTagsForTagIDs:v10 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:&buf];
  }

  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [*(a1 + 40) purchasesDiscoveredTagIDs];
  v14 = [v13 allObjects];
  [v12 addObjectsFromArray:v14];

  [v12 addObjectsFromArray:v7];
  [(FCPurchaseController *)*(a1 + 40) setPurchasesDiscoveredTagIDs:v12];
  v15 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = v15;
    v18 = [v16 purchasesDiscoveredTagIDs];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "purchasesDiscoveredTagIDs:%@", &buf, 0xCu);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = v19[6];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = [v19 purchasesDiscoveredTagIDs];
  v23 = [v22 allObjects];
  [v21 setObject:v23 forKey:@"SubscriptionsDiscoveredList"];

  v24 = [*(a1 + 40) purchasesDiscoveredTagIDs];
  v25 = [v24 count];

  if (v25)
  {
    v26 = *(a1 + 40);
    v27 = [v26 purchasesDiscoveredTagIDs];
    [(FCPurchaseController *)v26 notifyPurchasesDiscoveredWithTagIDs:v27];
  }

  v28 = [*(*(*(a1 + 96) + 8) + 40) allObjects];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_218;
  v51[3] = &unk_1E7C389E0;
  v51[4] = *(a1 + 40);
  [v28 enumerateObjectsUsingBlock:v51];

  v29 = *(a1 + 40);
  if (v29)
  {
    v30 = [MEMORY[0x1E695DFA8] set];
    v31 = *(v29 + 56);
    v32 = [(FCPurchaseLookUpEntriesManager *)v31 lookupEntriesByTagID];
    v33 = [v32 copy];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v53 = __50__FCPurchaseController_allAppStorePurchasedTagIDs__block_invoke;
    v54 = &unk_1E7C38FA0;
    v34 = v30;

    v55 = v34;
    [v33 enumerateKeysAndObjectsUsingBlock:&buf];
  }

  else
  {
    v34 = 0;
  }

  v35 = [v34 allObjects];
  v36 = [*(*(*(a1 + 80) + 8) + 40) allObjects];
  v37 = [v35 fc_arrayByRemovingObjectsInArray:v36];

  v38 = [*(*(*(a1 + 96) + 8) + 40) allObjects];
  v39 = [v37 fc_arrayByRemovingObjectsInArray:v38];

  v40 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v39;
    _os_log_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEFAULT, "expiredPurchaseIDs:%@", &buf, 0xCu);
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_219;
  v50[3] = &unk_1E7C389E0;
  v50[4] = *(a1 + 40);
  [v39 enumerateObjectsUsingBlock:v50];
  v41 = *(a1 + 48);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_220;
  v45[3] = &unk_1E7C39268;
  v47 = *(a1 + 64);
  v42 = *(a1 + 56);
  v43 = *(a1 + 104);
  v46 = v42;
  v49 = v43;
  v48 = *(a1 + 72);
  dispatch_async(v41, v45);

  v44 = *MEMORY[0x1E69E9840];
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_218(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  v6 = [(FCPurchaseLookUpEntriesManager *)v4 lookupEntriesByTagID];
  v7 = [v6 objectForKey:v5];

  v8 = *(a1 + 32);
  v10 = v7;
  if (v8)
  {
    v9 = *(v8 + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__FCPurchaseController_updatePurchaseEntryToSubscriptionNotSupported___block_invoke;
    block[3] = &unk_1E7C36C58;
    v12 = v10;
    v13 = v8;
    dispatch_sync(v9, block);
  }
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_219(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  v6 = [(FCPurchaseLookUpEntriesManager *)v4 lookupEntriesByTagID];
  v11 = [v6 objectForKey:v5];

  [*(a1 + 32) updatePurchaseEntryToExpired:v11];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 32);
    v9 = v5;
    v10 = [v8 tagSettings];
    [v10 setWebAccessOptInForTagID:v9 webAccessOptIn:0];

    FCPerformBlockOnMainThread(&__block_literal_global_177);
  }
}

uint64_t __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_220(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], *(*(a1[7] + 8) + 40));
  }

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Couldn't add the subscriptions detected channels to favorites"];
      *buf = 136315906;
      v11 = "[FCPurchaseController addAppStoreDiscoveredChannelsToFavorites:]_block_invoke";
      v12 = 2080;
      v13 = "FCPurchaseController.m";
      v14 = 1024;
      v15 = 1035;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke_225;
    v9[3] = &unk_1E7C39330;
    v9[4] = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke_225(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[4];
  }

  v6 = v5;
  v7 = [v6 subscriptionController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke_2;
  v9[3] = &unk_1E7C39308;
  v9[4] = *(a1 + 32);

  v10 = v4;
  v8 = v4;
  [v7 subscriptionsWithCompletion:v9];
}

void __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = v2;
  v4 = [v3 subscriptionController];
  v5 = [v4 hasSubscriptionToTag:*(a1 + 40)];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = v6[4];
    }

    v7 = v6;
    v8 = [v7 subscriptionController];
    v9 = *(a1 + 40);
    v11 = 0;
    [v8 addSubscriptionToTag:v9 error:&v11];
    v10 = v11;
  }
}

void __79__FCPurchaseController_fetchChannelIDsForPurchaseIDs_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 fetchedObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (NSDictionary)purchaseLookUpEntriesByTagID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v2 = [(FCPurchaseController *)self copy];

  return v2;
}

- (id)purchaseLookUpEntryForTagID:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property objectForKey:v5];

  return v7;
}

void __62__FCPurchaseController_allAppStorePurchasedTagIDsByPurchaseID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([v5 purchaseType] == 1 && objc_msgSend(v5, "purchaseValidationState") == 1)
  {
    v6 = [v5 purchaseID];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
      v8 = *(a1 + 32);
      v9 = [v5 purchaseID];
      v10 = [v8 objectForKey:v9];

      if (v10)
      {
        [v7 addObjectsFromArray:v10];
      }

      v11 = *(a1 + 32);
      v12 = [v7 copy];
      v13 = [v5 purchaseID];
      [v11 setObject:v12 forKey:v13];
    }
  }
}

- (NSSet)allTagIDs
{
  v2 = MEMORY[0x1E695DFD8];
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v3 = [(FCPurchaseController *)self allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)_enumerateValidPurchasesUsingBlock:(void *)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
      *buf = 136315906;
      v12 = "[FCPurchaseController _enumerateValidPurchasesUsingBlock:]";
      v13 = 2080;
      v14 = "FCPurchaseController.m";
      v15 = 1024;
      v16 = 1150;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    Property = objc_getProperty(a1, v4, 64, 1);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__FCPurchaseController__enumerateValidPurchasesUsingBlock___block_invoke;
    v9[3] = &unk_1E7C39380;
    v10 = v5;
    [Property enumerateKeysAndObjectsUsingBlock:v9];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (NSSet)allPurchaseIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__FCPurchaseController_allPurchaseIDs__block_invoke;
  v6[3] = &unk_1E7C38FA0;
  v4 = v3;
  v7 = v4;
  [(FCPurchaseController *)self _enumerateValidPurchasesUsingBlock:v6];

  return v4;
}

void __38__FCPurchaseController_allPurchaseIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 purchaseType] == 1 && objc_msgSend(v6, "purchaseValidationState") == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v6 purchaseID];
    [v4 addObject:v5];
  }
}

void __59__FCPurchaseController__enumerateValidPurchasesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 purchaseValidationState] == 1 || objc_msgSend(v5, "purchaseValidationState") == 3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __50__FCPurchaseController_allAppStorePurchasedTagIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 purchaseValidationState] == 1 && objc_msgSend(v5, "purchaseType") == 1)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (BOOL)isTagIDPurchased:(id)a3
{
  v3 = [(FCPurchaseController *)self purchaseLookUpEntryForTagID:a3];
  v4 = [v3 purchaseValidationState] == 1 || objc_msgSend(v3, "purchaseValidationState") == 3;

  return v4;
}

- (BOOL)isTagPurchased:(id)a3
{
  v4 = a3;
  if ([v4 tagType] == 3)
  {
    v5 = [v4 asSection];

    v6 = [v5 parentID];
    v4 = v5;
  }

  else
  {
    v6 = [v4 identifier];
  }

  v7 = [(FCPurchaseController *)self isTagIDPurchased:v6];
  return v7;
}

void __55__FCPurchaseController_atleastOneValidAppStorePurchase__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = v7;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  else if ([v7 purchaseType] == 1 && objc_msgSend(v8, "purchaseValidationState") == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __147__FCPurchaseController_addToPurchasedChannelsListWithTagID_purchaseID_purchaseType_purchaseValidationState_isNewsAppPurchase_lastVerificationTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  [(FCPurchaseLookUpEntriesManager *)v3 addEntryWithTagID:*(a1 + 48) purchaseID:*(a1 + 56) lastVerificationTime:0 lastVerificationFailureTime:*(a1 + 64) purchaseType:*(a1 + 72) purchaseValidationState:*(a1 + 80) isNewsAppPurchase:0 dateOfExpiration:0 hasShownRenewalNotice:?];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[7];
  }

  v5 = v4;
  v6 = [(FCPurchaseLookUpEntriesManager *)v5 lookupEntriesByTagID];
  v8 = [v6 copy];
  v9 = *(a1 + 32);
  if (v9)
  {
    objc_setProperty_atomic_copy(v9, v7, v8, 64);
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{*(a1 + 40), 0}];
  [(FCPurchaseController *)v10 notifyPurchaseAddedWithTagIDs:v11];
}

- (void)renewalNoticeShownForPurchasedChannelsListWithTagIDs:(id)a3
{
  v4 = a3;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__FCPurchaseController_renewalNoticeShownForPurchasedChannelsListWithTagIDs___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

uint64_t __77__FCPurchaseController_renewalNoticeShownForPurchasedChannelsListWithTagIDs___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__FCPurchaseController_renewalNoticeShownForPurchasedChannelsListWithTagIDs___block_invoke_2;
  v3[3] = &unk_1E7C393D0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __77__FCPurchaseController_renewalNoticeShownForPurchasedChannelsListWithTagIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  v6 = [(FCPurchaseLookUpEntriesManager *)v4 lookupEntriesByTagID];
  v7 = [v6 objectForKey:v5];

  v11 = [v7 mutableCopy];
  v8 = v11;
  if (v11)
  {
    [v11 setHasShownRenewalNotice:1];
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 56);
    }

    else
    {
      v10 = 0;
    }

    [(FCPurchaseLookUpEntriesManager *)v10 updateEntry:v11];
    v8 = v11;
  }
}

- (void)updatePurchaseEntryToExpiredForTagIDs:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__FCPurchaseController_updatePurchaseEntryToExpiredForTagIDs___block_invoke;
  v3[3] = &unk_1E7C393D0;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __62__FCPurchaseController_updatePurchaseEntryToExpiredForTagIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) purchaseLookUpEntryForTagID:a2];
  [*(a1 + 32) updatePurchaseEntryToExpired:v3];
}

- (void)updatePurchaseEntryToExpired:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__FCPurchaseController_updatePurchaseEntryToExpired_hasShownRenewalNotice___block_invoke;
    block[3] = &unk_1E7C37678;
    v10 = 0;
    v8 = v4;
    v9 = self;
    dispatch_sync(accessQueue, block);
  }
}

void __75__FCPurchaseController_updatePurchaseEntryToExpired_hasShownRenewalNotice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v16 = [v2 mutableCopy];
    [v16 setPurchaseValidationState:2];
    v3 = [MEMORY[0x1E695DF00] date];
    [v16 setDateOfExpiration:v3];

    [v16 setHasShownRenewalNotice:*(a1 + 48)];
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 56);
    }

    else
    {
      v5 = 0;
    }

    [(FCPurchaseLookUpEntriesManager *)v5 updateEntry:v16];
    v6 = *(a1 + 40);
    if (v6)
    {
      v6 = v6[7];
    }

    v7 = v6;
    v8 = [(FCPurchaseLookUpEntriesManager *)v7 lookupEntriesByTagID];
    v10 = [v8 copy];
    v11 = *(a1 + 40);
    if (v11)
    {
      objc_setProperty_atomic_copy(v11, v9, v10, 64);
    }

    v12 = MEMORY[0x1E695DFD8];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) tagID];
    v15 = [v12 setWithObjects:{v14, 0}];
    [(FCPurchaseController *)v13 notifyPurchaseRemovedWithTagIDs:v15];
  }
}

void __70__FCPurchaseController_updatePurchaseEntryToSubscriptionNotSupported___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPurchaseValidationState:4];
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = *(a1 + 32);
  v4 = v2;
  v6 = [v3 dictionaryRepresentation];
  v5 = [*(a1 + 32) identifier];
  [v4 setObject:v6 forKey:v5];
}

void __64__FCPurchaseController_updatePurchaseEntryToValid_purchaseType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPurchaseValidationState:1];
  [*(a1 + 32) setPurchaseType:*(a1 + 48)];
  [*(a1 + 32) setHasShownRenewalNotice:0];
  [*(a1 + 32) setDateOfExpiration:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = *(a1 + 32);
  v4 = v2;
  v5 = [v3 dictionaryRepresentation];
  v6 = [*(a1 + 32) identifier];
  [v4 setObject:v5 forKey:v6];

  v7 = MEMORY[0x1E695DFD8];
  v8 = *(a1 + 40);
  v10 = [*(a1 + 32) tagID];
  v9 = [v7 setWithObjects:{v10, 0}];
  [(FCPurchaseController *)v8 notifyPurchaseAddedWithTagIDs:v9];
}

- (void)removeFromPurchasedChannelsListWithTagIDs:(id)a3
{
  v4 = a3;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__FCPurchaseController_removeFromPurchasedChannelsListWithTagIDs___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

- (uint64_t)_removeFromPurchasedChannelsListWithTagIDs:(uint64_t)result
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __67__FCPurchaseController__removeFromPurchasedChannelsListWithTagIDs___block_invoke;
    v2[3] = &unk_1E7C393D0;
    v2[4] = result;
    return [a2 enumerateObjectsUsingBlock:v2];
  }

  return result;
}

void __67__FCPurchaseController__removeFromPurchasedChannelsListWithTagIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  [(FCPurchaseLookUpEntriesManager *)v4 removeEntryForTagID:v5];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[7];
  }

  v7 = v6;
  v8 = [(FCPurchaseLookUpEntriesManager *)v7 lookupEntriesByTagID];
  v10 = [v8 copy];
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_setProperty_atomic_copy(v11, v9, v10, 64);
  }

  v12 = *(a1 + 32);
  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{v5, 0}];

  [(FCPurchaseController *)v12 notifyPurchaseRemovedWithTagIDs:v13];
}

- (void)removeFromPurchasesDiscoveredList:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__FCPurchaseController_removeFromPurchasesDiscoveredList_completion___block_invoke;
  block[3] = &unk_1E7C38FF0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

uint64_t __69__FCPurchaseController_removeFromPurchasesDiscoveredList_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) purchasesDiscoveredTagIDs];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  v4 = [v2 fc_setByMinusingSet:v3];
  [(FCPurchaseController *)*(a1 + 32) setPurchasesDiscoveredTagIDs:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5[6];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 purchasesDiscoveredTagIDs];
  v9 = [v8 allObjects];
  [v7 setObject:v9 forKey:@"SubscriptionsDiscoveredList"];

  result = *(a1 + 48);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

void __67__FCPurchaseController_cleanupExpiredPurchaseLookupEntriesIfNeeded__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 64, 1);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__FCPurchaseController_cleanupExpiredPurchaseLookupEntriesIfNeeded__block_invoke_2;
  v11[3] = &unk_1E7C38FA0;
  v11[4] = v4;
  [Property enumerateKeysAndObjectsUsingBlock:v11];
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[7];
  }

  v6 = v5;
  v7 = [(FCPurchaseLookUpEntriesManager *)v6 lookupEntriesByTagID];
  v9 = [v7 copy];
  v10 = *(a1 + 32);
  if (v10)
  {
    objc_setProperty_atomic_copy(v10, v8, v9, 64);
  }
}

void __67__FCPurchaseController_cleanupExpiredPurchaseLookupEntriesIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 purchaseValidationState] == 2)
  {
    v6 = [v5 dateOfExpiration];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [v6 fc_isWithinTimeInterval:v7 ofDate:864000.0];

    if ((v8 & 1) == 0)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = *(v9 + 56);
      }

      else
      {
        v10 = 0;
      }

      [(FCPurchaseLookUpEntriesManager *)v10 removeEntryForTagID:v11];
    }
  }
}

- (void)activityObservingApplicationDidEnterBackground
{
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__FCPurchaseController_cleanupExpiredPurchaseLookupEntriesIfNeeded__block_invoke;
    block[3] = &unk_1E7C36EA0;
    block[4] = self;
    dispatch_sync(accessQueue, block);
    localStore = self->_localStore;

    [(FCKeyValueStore *)localStore saveWithCompletionHandler:0];
  }
}

- (void)handleAccessTokenChangeWithTagID:(uint64_t)a1 userInitiated:(void *)a2
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 32);
    v5 = [v4 tagSettings];
    v6 = [v5 accessTokenForTagID:v3];

    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10;
    v36 = __Block_byref_object_dispose__10;
    v37 = [a1 purchaseLookUpEntryForTagID:v3];
    if (v6)
    {
      objc_initWeak(&location, a1);
      v7 = *(a1 + 32);
      v8 = [v7 tagController];
      v9 = MEMORY[0x1E69E96A0];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke;
      v26[3] = &unk_1E7C39448;
      objc_copyWeak(&v30, &location);
      v28 = a1;
      v29 = &v32;
      v27 = v3;
      [v8 fetchTagForTagID:v27 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      v11 = v33[5];
      if (v11)
      {
        if ([v11 purchaseType] == 2)
        {
          v38[0] = v3;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
          [a1 removeFromPurchasedChannelsListWithTagIDs:v12];

          v13 = [a1 purchasesDiscoveredTagIDs];
          v14 = [v13 containsObject:v3];

          if (v14)
          {
            v15 = [a1 purchasesDiscoveredTagIDs];
            v16 = [v15 allObjects];
            v17 = [v16 mutableCopy];

            [v17 removeObject:v3];
            v18 = MEMORY[0x1E695DFD8];
            v19 = [v17 copy];
            v20 = [v18 setWithArray:v19];
            v21 = *(a1 + 8);
            *(a1 + 8) = v20;

            v22 = *(a1 + 48);
            v23 = [a1 purchasesDiscoveredTagIDs];
            v24 = [v23 allObjects];
            [v22 setObject:v24 forKey:@"SubscriptionsDiscoveredList"];

            v25 = [a1 purchasesDiscoveredTagIDs];
            [(FCPurchaseController *)a1 notifyPurchasesDiscoveredWithTagIDs:v25];
          }
        }
      }
    }

    _Block_object_dispose(&v32, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_2;
  v6[3] = &unk_1E7C39420;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v3;
  FCPerformIfNonNil(WeakRetained, v6);
}

void __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    if (+[FCTagController isTagAllowedInContentStoreFront:](FCTagController, "isTagAllowedInContentStoreFront:") && ([*(a1 + 32) isDeprecated] & 1) == 0)
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v4 = *(a1 + 40);
        v5 = [MEMORY[0x1E695DF00] date];
        [FCPurchaseController addToPurchasedChannelsListWithTagID:v3 purchaseID:v4 purchaseType:0 purchaseValidationState:2 isNewsAppPurchase:1 lastVerificationTime:v5];

        if (v3)
        {
          v6 = v3[4];
        }

        else
        {
          v6 = 0;
        }

        v7 = v6;
        v8 = [v7 subscriptionController];
        [v8 addSubscriptionToTag:*(a1 + 32) error:0];

        v9 = [*(a1 + 48) purchasesDiscoveredTagIDs];
        v10 = [v9 allObjects];
        v11 = [v10 mutableCopy];

        [v11 addObject:*(a1 + 40)];
        v12 = MEMORY[0x1E695DFD8];
        v13 = [v11 copy];
        v14 = [v12 setWithArray:v13];
        [(FCPurchaseController *)v3 setPurchasesDiscoveredTagIDs:v14];

        if (v3)
        {
          v15 = v3[6];
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        v17 = [v3 purchasesDiscoveredTagIDs];
        v18 = [v17 allObjects];
        [v16 setObject:v18 forKey:@"SubscriptionsDiscoveredList"];

        v19 = [v3 purchasesDiscoveredTagIDs];
        [(FCPurchaseController *)v3 notifyPurchasesDiscoveredWithTagIDs:v19];
      }
    }

    else
    {
      [v3 removeWebPurchaseForTagID:*(a1 + 40) userInitiated:0];
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_3;
    v20[3] = &unk_1E7C36C58;
    v21 = *(a1 + 40);
    v22 = v3;
    __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_3(v20);
  }
}

uint64_t __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Nil tag returned in handleAccessTokenChange for tagID:%@", &v6, 0xCu);
  }

  result = [*(a1 + 40) removeWebPurchaseForTagID:*(a1 + 32) userInitiated:0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_2;
  v6[3] = &unk_1E7C39498;
  v7 = v3;
  v8 = *(a1 + 32);
  v10 = *(a1 + 56);
  v9 = *(a1 + 40);
  v5 = v3;
  FCPerformIfNonNil(WeakRetained, v6);
}

void __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 purchaseLookUpEntryForTagID:*(a1 + 40)];
    if (v5)
    {
      if (v4)
      {
        v6 = v4[10];
      }

      else
      {
        v6 = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_235;
      block[3] = &unk_1E7C39470;
      v7 = v5;
      v22 = *(a1 + 56);
      v17 = v7;
      v18 = v4;
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      dispatch_sync(v6, block);
    }

    else
    {
      if (*(a1 + 56) == 1)
      {
        if (v4)
        {
          v8 = v4[4];
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;
        v10 = [v9 tagSettings];
        [v10 setAccessTokenForTagID:*(a1 + 40) accessToken:*(a1 + 48) userInitiated:0];

        v11 = *(a1 + 40);
        v12 = [MEMORY[0x1E695DF00] date];
        [FCPurchaseController addToPurchasedChannelsListWithTagID:v4 purchaseID:v11 purchaseType:0 purchaseValidationState:2 isNewsAppPurchase:1 lastVerificationTime:v12];

        if (v4)
        {
          v13 = v4[4];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [v14 subscriptionController];
        [v15 addSubscriptionToTag:*(a1 + 32) error:0];
      }

      v7 = 0;
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_3;
    v23[3] = &unk_1E7C36EA0;
    v24 = *(a1 + 40);
    __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_3(v23);
    v7 = v24;
  }
}

void __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Nil tag returned in handleAccessTokenVerification for tagID:%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_235(uint64_t a1)
{
  v2 = [*(a1 + 32) purchaseValidationState];
  [*(a1 + 32) setPurchaseType:2];
  v3 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setLastVerificationTime:v3];

  [*(a1 + 32) setLastVerificationFailureTime:0];
  if (*(a1 + 72))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [*(a1 + 32) setPurchaseValidationState:v4];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) setDateOfExpiration:0];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 32) setDateOfExpiration:v5];
  }

  if ((*(a1 + 72) & 1) != 0 || v2 != 2)
  {
    [*(a1 + 32) setHasShownRenewalNotice:0];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = v6[6];
  }

  v7 = *(a1 + 32);
  v8 = v6;
  v9 = [v7 dictionaryRepresentation];
  v10 = [*(a1 + 32) identifier];
  [v8 setObject:v9 forKey:v10];

  if (*(a1 + 72) == 1 && v2 != 1)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v11 = v11[4];
    }

    v12 = v11;
    v13 = [v12 tagSettings];
    [v13 setAccessTokenForTagID:*(a1 + 48) accessToken:*(a1 + 56) userInitiated:0];

    v14 = MEMORY[0x1E695DFD8];
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) tagID];
    v17 = [v14 setWithObjects:{v16, 0}];
    [(FCPurchaseController *)v15 notifyPurchaseAddedWithTagIDs:v17];

    v18 = *(a1 + 40);
    if (v18)
    {
      v18 = v18[4];
    }

    v19 = v18;
    v20 = [v19 subscriptionController];
    [v20 addSubscriptionToTag:*(a1 + 64) error:0];
  }
}

void __70__FCPurchaseController_handleAccessTokenVerificationFailureWithTagID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setLastVerificationTime:v2];

  v3 = [*(a1 + 32) lastVerificationFailureTime];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 32) setLastVerificationFailureTime:v4];
  }

  [*(a1 + 32) setPurchaseValidationState:3];
  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[6];
  }

  v6 = *(a1 + 32);
  v7 = v5;
  v9 = [v6 dictionaryRepresentation];
  v8 = [*(a1 + 32) identifier];
  [v7 setObject:v9 forKey:v8];
}

- (void)verifyAccessTokenWithTagID:(id)a3 accessToken:(id)a4 consumedArticleCount:(unint64_t)a5 serialCompletion:(id)a6 callbackQueue:(id)a7 completion:(id)a8
{
  v49 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (self)
  {
    cloudContext = self->_cloudContext;
  }

  else
  {
    cloudContext = 0;
  }

  v20 = [(FCCloudContext *)cloudContext networkReachability];
  v21 = [v20 isNetworkReachable];

  if (v21)
  {
    if (self)
    {
      v22 = self->_cloudContext;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = [(FCCloudContext *)v23 tagController];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke;
    v38[3] = &unk_1E7C39588;
    v38[4] = self;
    v39 = v14;
    v40 = v17;
    v42 = v18;
    v43 = v16;
    v41 = v15;
    v44 = a5;
    v25 = v16;
    v26 = v18;
    [v24 fetchTagForTagID:v39 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v38];

    v27 = v39;
  }

  else
  {
    v28 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138543618;
      v46 = v31;
      v47 = 2048;
      v48 = self;
      _os_log_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID failed because the network is not reachable", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_254;
    block[3] = &unk_1E7C39090;
    v36 = v18;
    v37 = v16;
    v32 = v16;
    v33 = v18;
    dispatch_async(v17, block);

    v27 = v36;
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v86[1] = *MEMORY[0x1E69E9840];
  v68 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2114;
      *v84 = v12;
      *&v84[8] = 2114;
      *&v84[10] = v5;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID failed to fetch tagID: %{public}@ error: %{public}@", buf, 0x2Au);
    }

    v13 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_236;
    block[3] = &unk_1E7C39090;
    v81 = *(a1 + 64);
    v82 = *(a1 + 72);
    dispatch_async(v13, block);

    v14 = v81;
  }

  else
  {
    v15 = NewsCoreUserDefaults();
    v16 = [v15 stringForKey:@"web_authentication_local_server_ip_address"];

    if (NFInternalBuild() && v16)
    {
      v17 = NewsCoreUserDefaults();
      v18 = [v17 stringForKey:@"web_authentication_local_server_ip_address"];

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"http://", v18, @":3000/verify_authorization"];
    }

    else
    {
      v19 = [v68 publisherPaidVerificationURL];
    }

    v20 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      *&buf[22] = 2114;
      *v84 = v19;
      _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID will use verificationURL: %{public}@", buf, 0x20u);
    }

    if (v19)
    {
      objc_initWeak(&location, *(a1 + 32));
      v26 = *(a1 + 32);
      v27 = *(a1 + 56);
      v28 = *(a1 + 80);
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_2;
      v69[3] = &unk_1E7C39560;
      objc_copyWeak(&v75, &location);
      v66 = *(a1 + 32);
      v29 = *(a1 + 40);
      v30 = *(a1 + 56);
      v31 = *(a1 + 48);
      *&v32 = v30;
      *(&v32 + 1) = v31;
      v70 = v66;
      v71 = v32;
      v73 = *(a1 + 64);
      v72 = v68;
      v74 = *(a1 + 72);
      v14 = v19;
      v67 = v27;
      v65 = v69;
      if (v26)
      {
        if (!v67 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "accessToken"];
          *buf = 136315906;
          *&buf[4] = "[FCPurchaseController performHTTPRequestForVerifyAccessTokenWithURL:accessToken:consumedArticleCount:completion:]";
          *&buf[12] = 2080;
          *&buf[14] = "FCPurchaseController.m";
          *&buf[22] = 1024;
          *v84 = 1624;
          *&v84[4] = 2114;
          *&v84[6] = v64;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v33 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEBUG))
        {
          v58 = v33;
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          *buf = 138543874;
          *&buf[4] = v60;
          *&buf[12] = 2048;
          *&buf[14] = v26;
          *&buf[22] = 2114;
          *v84 = v14;
          _os_log_debug_impl(&dword_1B63EF000, v58, OS_LOG_TYPE_DEBUG, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL: %{public}@", buf, 0x20u);
        }

        v34 = [MEMORY[0x1E696AF20] componentsWithString:v14];
        v35 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v36 = [v35 mutableCopy];

        [v36 removeCharactersInString:@"?=&+/"];
        v37 = [v67 stringByAddingPercentEncodingWithAllowedCharacters:v36];
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@&%@=%lu", @"access_token", v37, @"read_article_count", v28];
        [v34 setPercentEncodedQuery:v38];

        v39 = MEMORY[0x1E695AC18];
        v40 = [v34 URL];
        v41 = [v39 requestWithURL:v40];

        v85 = @"Accept";
        v86[0] = @"application/json";
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
        [v41 setAllHTTPHeaderFields:v42];
        [v41 setHTTPMethod:@"GET"];
        v43 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v43;
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *buf = 138543874;
          *&buf[4] = v46;
          *&buf[12] = 2048;
          *&buf[14] = v26;
          *&buf[22] = 2114;
          *v84 = v41;
          _os_log_impl(&dword_1B63EF000, v44, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL request: %{public}@", buf, 0x20u);
        }

        v47 = *(v26 + 40);
        v48 = [v47 value];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __114__FCPurchaseController_performHTTPRequestForVerifyAccessTokenWithURL_accessToken_consumedArticleCount_completion___block_invoke;
        *v84 = &unk_1E7C395B0;
        *&v84[8] = v26;
        *&v84[16] = v65;
        v49 = [v48 dataTaskWithRequest:v41 completionHandler:buf];

        [v49 resume];
      }

      objc_destroyWeak(&v75);
      objc_destroyWeak(&location);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v61 = objc_alloc(MEMORY[0x1E696AEC0]);
        v62 = [v68 identifier];
        v63 = [v61 initWithFormat:@"Verification URL is nil for publisher : %@", v62];
        *buf = 136315906;
        *&buf[4] = "[FCPurchaseController verifyAccessTokenWithTagID:accessToken:consumedArticleCount:serialCompletion:callbackQueue:completion:]_block_invoke";
        *&buf[12] = 2080;
        *&buf[14] = "FCPurchaseController.m";
        *&buf[22] = 1024;
        *v84 = 1570;
        *&v84[4] = 2114;
        *&v84[6] = v63;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v50 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v51 = *(a1 + 32);
        v52 = v50;
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v55 = *(a1 + 32);
        *buf = 138543618;
        *&buf[4] = v54;
        *&buf[12] = 2048;
        *&buf[14] = v55;
        _os_log_impl(&dword_1B63EF000, v52, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID failed to get a verificationURL", buf, 0x16u);
      }

      v56 = *(a1 + 48);
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_250;
      v77[3] = &unk_1E7C39090;
      v78 = *(a1 + 64);
      v79 = *(a1 + 72);
      dispatch_async(v56, v77);

      v14 = 0;
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

uint64_t __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_236(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v8 = @"error_message";
    v9[0] = @"CloudKit error while fetching channel information";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = [v3 errorWithDomain:@"FCTokenVerificationErrorDomain" code:5002 userInfo:v4];
    (*(v2 + 16))(v2, 0, 0, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_250(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v8 = @"error_message";
    v9[0] = @"URL not found";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = [v3 errorWithDomain:@"FCTokenVerificationErrorDomain" code:5001 userInfo:v4];
    (*(v2 + 16))(v2, 0, 0, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_3;
  v15[3] = &unk_1E7C39538;
  v21 = a2;
  v7 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v5;
  v8 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v19 = *(a1 + 72);
  v11 = *(a1 + 64);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v17 = v13;
  v18 = v12;
  v20 = *(a1 + 80);
  v14 = v5;
  FCPerformIfNonNil(WeakRetained, v15);
}

void __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 96);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    *buf = 138544130;
    v28 = v8;
    v29 = 2048;
    v30 = v10;
    v31 = 1024;
    v32 = v9;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID isSubscribed: %d verificationError: %{public}@", buf, 0x26u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_251;
  v19[3] = &unk_1E7C39510;
  v20 = *(a1 + 40);
  v21 = v3;
  v12 = *(a1 + 48);
  v26 = *(a1 + 96);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v24 = *(a1 + 80);
  v15 = *(a1 + 72);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v22 = v17;
  v23 = v16;
  v25 = *(a1 + 88);
  FCPerformBlockOnMainThread(v19);

  v18 = *MEMORY[0x1E69E9840];
}

void __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_251(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (!*(a1 + 32))
  {
    v7 = *(a1 + 96);
    v8 = *(a1 + 56);
    v5 = v3;
    v9 = v8;
    if (v2)
    {
      objc_initWeak(&location, v2);
      v10 = *(v2 + 32);
      v11 = [v10 tagController];
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
      block = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke;
      v24 = &unk_1E7C394C0;
      objc_copyWeak(&v27, &location);
      v25 = v5;
      v28 = v7;
      v26 = v9;
      [v11 fetchTagForTagID:v25 qualityOfService:9 callbackQueue:v12 completionHandler:&block];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    goto LABEL_8;
  }

  if (v2)
  {
    v4 = [*(a1 + 40) purchaseLookUpEntryForTagID:v3];
    v5 = v4;
    if (v4)
    {
      v6 = *(v2 + 80);
      block = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __70__FCPurchaseController_handleAccessTokenVerificationFailureWithTagID___block_invoke;
      v24 = &unk_1E7C36C58;
      v25 = v4;
      v26 = v2;
      dispatch_async(v6, &block);
    }

LABEL_8:
  }

  v14 = *(a1 + 64);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_2_252;
  v15[3] = &unk_1E7C394E8;
  v18 = *(a1 + 80);
  v20 = *(a1 + 96);
  v16 = *(a1 + 72);
  v17 = *(a1 + 32);
  v19 = *(a1 + 88);
  dispatch_async(v14, v15);
}

uint64_t __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_2_252(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 64), *(a1 + 32), *(a1 + 40));
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_254(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v8 = @"error_message";
    v9[0] = @"Device in offline";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = [v3 errorWithDomain:@"FCTokenVerificationErrorDomain" code:5000 userInfo:v4];
    (*(v2 + 16))(v2, 0, 0, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __114__FCPurchaseController_performHTTPRequestForVerifyAccessTokenWithURL_accessToken_consumedArticleCount_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = *(a1 + 32);
    *buf = 138544130;
    v101 = v15;
    v102 = 2048;
    v103 = v16;
    v104 = 2114;
    v105 = v10;
    v106 = 2114;
    v107 = v9;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL response: %{public}@ error: %{public}@", buf, 0x2Au);
  }

  if (!v9)
  {
    v87 = 0;
    v21 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v87];
    v20 = v87;
    if (v20)
    {
      v23 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
      {
        v78 = *(a1 + 32);
        v79 = v23;
        v80 = objc_opt_class();
        v81 = NSStringFromClass(v80);
        v82 = *(a1 + 32);
        *buf = 138543874;
        v101 = v81;
        v102 = 2048;
        v103 = v82;
        v104 = 2114;
        v105 = v20;
        _os_log_error_impl(&dword_1B63EF000, v79, OS_LOG_TYPE_ERROR, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL failed to parse with error: %{public}@", buf, 0x20u);
      }

      v24 = *(a1 + 40);
      v25 = MEMORY[0x1E696ABC0];
      v26 = [v10 statusCode];
      v96 = @"error_message";
      v97 = @"JSON parsing error";
      v27 = MEMORY[0x1E695DF20];
      v28 = &v97;
      v29 = &v96;
LABEL_20:
      v22 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
      v45 = [v25 errorWithDomain:@"FCTokenVerificationErrorDomain" code:v26 userInfo:v22];
      (*(v24 + 16))(v24, 0, v45);
LABEL_21:

      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v39 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 32);
        v41 = v39;
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v44 = *(a1 + 32);
        *buf = 138543618;
        v101 = v43;
        v102 = 2048;
        v103 = v44;
        _os_log_impl(&dword_1B63EF000, v41, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL invalid JSON response format", buf, 0x16u);
      }

      v24 = *(a1 + 40);
      v25 = MEMORY[0x1E696ABC0];
      v26 = [v10 statusCode];
      v88 = @"error_message";
      v89 = @"Invalid JSON format found";
      v27 = MEMORY[0x1E695DF20];
      v28 = &v89;
      v29 = &v88;
      goto LABEL_20;
    }

    v22 = v21;
    v30 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      v32 = v30;
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = *(a1 + 32);
      *buf = 138543874;
      v101 = v34;
      v102 = 2048;
      v103 = v35;
      v104 = 2114;
      v105 = v22;
      _os_log_impl(&dword_1B63EF000, v32, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL validResponseJSON: %{public}@", buf, 0x20u);
    }

    v36 = [v22 objectForKey:@"status"];

    if (v36)
    {
      objc_opt_class();
      v37 = [v22 objectForKey:@"status"];
      if (v37)
      {
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      v45 = v38;

      v69 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v70 = *(a1 + 32);
        v71 = v69;
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        v74 = *(a1 + 32);
        *buf = 138543874;
        v101 = v73;
        v102 = 2048;
        v103 = v74;
        v104 = 2114;
        v105 = v45;
        _os_log_impl(&dword_1B63EF000, v71, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL status: %{public}@", buf, 0x20u);
      }

      if (![v45 caseInsensitiveCompare:@"subscribed"])
      {
        (*(*(a1 + 40) + 16))(*(a1 + 40), 1, 0);
        goto LABEL_21;
      }

      v75 = [v45 caseInsensitiveCompare:@"not_subscribed"];
      v76 = *(a1 + 40);
      if (!v75)
      {
        (*(v76 + 16))(v76, 0, 0);
        goto LABEL_21;
      }

      v83 = MEMORY[0x1E696ABC0];
      v77 = [v10 statusCode];
      v94 = @"error_message";
      v95 = @"Invalid response.Response structure did not meet agreement";
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v59 = [v83 errorWithDomain:@"FCTokenVerificationErrorDomain" code:v77 userInfo:v58];
      (*(v76 + 16))(v76, 0, v59);
    }

    else
    {
      v47 = [v22 objectForKey:@"error"];
      if (!v47 || (v48 = v47, [v22 objectForKey:@"error"], v49 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), log = objc_opt_isKindOfClass(), v49, v48, (log & 1) == 0))
      {
        v60 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v61 = *(a1 + 32);
          v62 = v60;
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          v65 = *(a1 + 32);
          *buf = 138543618;
          v101 = v64;
          v102 = 2048;
          v103 = v65;
          _os_log_impl(&dword_1B63EF000, v62, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL missing status and error", buf, 0x16u);
        }

        v66 = *(a1 + 40);
        v67 = MEMORY[0x1E696ABC0];
        v68 = [v10 statusCode];
        v90 = @"error_message";
        v91 = @"Invalid response.Response structure did not meet agreement";
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v58 = [v67 errorWithDomain:@"FCTokenVerificationErrorDomain" code:v68 userInfo:v45];
        (*(v66 + 16))(v66, 0, v58);
        goto LABEL_38;
      }

      v50 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v51 = *(a1 + 32);
        loga = v50;
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = *(a1 + 32);
        v55 = [v22 objectForKey:@"error"];
        *buf = 138543874;
        v101 = v53;
        v102 = 2048;
        v103 = v54;
        v104 = 2114;
        v105 = v55;
        _os_log_impl(&dword_1B63EF000, loga, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL error: %{public}@", buf, 0x20u);
      }

      v56 = *(a1 + 40);
      logb = MEMORY[0x1E696ABC0];
      v57 = [v10 statusCode];
      v92 = @"error_message";
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v22];
      v93 = v45;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v59 = [logb errorWithDomain:@"FCTokenVerificationErrorDomain" code:v57 userInfo:v58];
      (*(v56 + 16))(v56, 0, v59);
    }

LABEL_38:
    goto LABEL_21;
  }

  v17 = *(a1 + 40);
  v18 = MEMORY[0x1E696ABC0];
  v19 = [v9 code];
  v98 = @"error_message";
  v20 = [v9 localizedDescription];
  v99 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
  v22 = [v18 errorWithDomain:@"FCTokenVerificationErrorDomain" code:v19 userInfo:v21];
  (*(v17 + 16))(v17, 0, v22);
LABEL_22:

  v46 = *MEMORY[0x1E69E9840];
}

- (id)webAccessEntryForTagID:(void *)a1
{
  v3 = a2;
  v4 = [a1 webAccessEntriesByTagID];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (void)submitWebAccessWithTagID:(id)a3 purchaseID:(id)a4 emailAddress:(id)a5 purchaseReceipt:(id)a6 serialCompletion:(id)a7 completion:(id)a8
{
  v47[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v15 = a7;
  v16 = a8;
  if (self)
  {
    cloudContext = self->_cloudContext;
  }

  else
  {
    cloudContext = 0;
  }

  v18 = [(FCCloudContext *)cloudContext networkReachability];
  v19 = [v18 isNetworkReachable];

  if (v19)
  {
    objc_initWeak(&location, self);
    v20 = [MEMORY[0x1E695DF58] currentLocale];
    v21 = [v20 objectForKey:*MEMORY[0x1E695D9B0]];

    v22 = [MEMORY[0x1E695DF58] currentLocale];
    v33 = [v22 objectForKey:*MEMORY[0x1E695D978]];

    v23 = [v36 dataUsingEncoding:4];
    v32 = [v23 base64EncodedStringWithOptions:0];
    if (self)
    {
      v24 = self->_cloudContext;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = [(FCCloudContext *)v25 endpointConnection];
    v27 = MEMORY[0x1E69E96A0];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __117__FCPurchaseController_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_serialCompletion_completion___block_invoke;
    v37[3] = &unk_1E7C39600;
    objc_copyWeak(&v44, &location);
    v38 = v14;
    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = v16;
    v43 = v15;
    [v26 submitWebAccessWithTagID:v38 purchaseID:v39 emailAddress:v40 purchaseReceipt:v32 countryCode:v33 languageCode:v21 callbackQueue:MEMORY[0x1E69E96A0] completion:v37];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  else
  {
    if (v16)
    {
      v28 = MEMORY[0x1E696ABC0];
      v46 = @"error_message";
      v47[0] = @"Device in offline";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v30 = [v28 errorWithDomain:@"FCWebAccessErrorDomain" code:5000 userInfo:v29];
      (*(v16 + 2))(v16, 0, v30);
    }

    if (v15)
    {
      v15[2](v15);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __117__FCPurchaseController_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_serialCompletion_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__FCPurchaseController_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_serialCompletion_completion___block_invoke_2;
  v15[3] = &unk_1E7C395D8;
  v21 = a2;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v13 = a1[8];
  v18 = v5;
  v19 = v13;
  v20 = a1[9];
  v14 = v5;
  FCPerformIfNonNil(WeakRetained, v15);
}

void __117__FCPurchaseController_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_serialCompletion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v36 = v3;
  if (*(a1 + 88) != 1)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v5 = v4;
    v8 = v9;
    v12 = v10;
    v13 = v11;
    if (v36)
    {
      v14 = [(FCPurchaseController *)v36 webAccessEntryForTagID:v5];
      if (v14)
      {
        v15 = v14;
        v16 = [v36 webAccessEntriesByTagID];
        [v16 removeObjectForKey:v15[6]];

        v17 = v15[5];
        v18 = v36[6];
        [v18 removeObjectForKey:v17];
      }

      else
      {
        v19 = [FCWebAccessEntry alloc];
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"wa-", v5];
        v21 = [MEMORY[0x1E695DF00] date];
        v22 = [(FCWebAccessEntry *)v19 initWithEntryID:v20 tagID:v5 purchaseID:v8 lastRetryAttemptTime:v21 email:v12 purchaseReceipt:v13];

        v18 = v22;
        v23 = [v36 webAccessEntriesByTagID];
        v24 = v23;
        if (v18)
        {
          v25 = v18[6];
        }

        else
        {
          v25 = 0;
        }

        [v23 setObject:v18 forKey:v25];

        v26 = v36[6];
        if (v18)
        {
          v27 = [MEMORY[0x1E695DF90] dictionary];
          [v27 fc_safelySetObjectAllowingNil:v18[6] forKey:@"WebAccessEntryTagID"];
          v28 = [v18 purchaseID];
          [v27 fc_safelySetObjectAllowingNil:v28 forKey:@"WebAccessEntryPurchaseID"];

          v29 = [v18 lastRetryAttemptTime];
          [v27 fc_safelySetObjectAllowingNil:v29 forKey:@"WebAccessEntryLastRetryAttemptTime"];

          v30 = [v18 email];
          [v27 fc_safelySetObjectAllowingNil:v30 forKey:@"WebAccessEntryEmail"];

          v31 = [v18 purchaseReceipt];
          [v27 fc_safelySetObjectAllowingNil:v31 forKey:@"WebAccessEntryPurchaseReceipt"];

          v32 = [v27 copy];
          v33 = v18[5];
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

        [v26 setObject:v32 forKey:v33];

        v15 = v18;
      }
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = [(FCPurchaseController *)v3 webAccessEntryForTagID:v4];
  if (v5)
  {
    v6 = [v36 webAccessEntriesByTagID];
    [v6 removeObjectForKey:v5[6]];

    v7 = v5[5];
    v8 = v36[6];
    [v8 removeObjectForKey:v7];
LABEL_15:
  }

LABEL_17:
  v34 = *(a1 + 72);
  if (v34)
  {
    (*(v34 + 16))(v34, *(a1 + 88), *(a1 + 64));
  }

  v35 = *(a1 + 80);
  if (v35)
  {
    (*(v35 + 16))(v35, v4);
  }
}

@end