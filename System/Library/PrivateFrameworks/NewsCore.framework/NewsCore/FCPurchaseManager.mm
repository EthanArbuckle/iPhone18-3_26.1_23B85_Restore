@interface FCPurchaseManager
- (BOOL)anyOngoingPurchases;
- (BOOL)isPurchaseOngoingForTagID:(id)a3;
- (BOOL)isPurchaseTimeElapsedWithEntry:(_BOOL8)result;
- (FCPurchaseManager)init;
- (FCPurchaseManager)initWithCloudContext:(id)a3 purchaseIntegrityChecker:(id)a4 purchaseReceiptProvider:(id)a5 paymentTransactionManager:(id)a6 bundleSubscriptionManager:(id)a7 keyValueStoreOption:(unint64_t)a8;
- (FCPurchaseManagerDelegate)delegate;
- (id)fetchPurchaseMetadataForPurchaseID:(id)a3 restorePurchase:(BOOL)a4;
- (void)_purchaseFailedWithProductID:(uint64_t)a3 transactionState:(void *)a4 transactionError:(void *)a5 ongoingPurchaseEntry:;
- (void)activityObservingApplicationDidEnterBackground;
- (void)activityObservingApplicationWillEnterForeground;
- (void)cleanupStaleOngoingPurchaseEntries;
- (void)finishPurchaseTransactionWithProductID:(uint64_t)a1;
- (void)performEntitlementWithTagID:(void *)a3 completion:;
- (void)simulateFailurePurchaseWithProductID:(id)a3 transactionState:(int64_t)a4 error:(id)a5;
- (void)simulateSuccessfulPurchaseWithProductID:(id)a3 tagID:(id)a4 purchaseID:(id)a5;
- (void)startBundlePurchaseWithPurchase:(id)a3 error:(id *)a4;
- (void)startPurchaseWithTagID:(id)a3 purchase:(id)a4 webAccessOptIn:(BOOL)a5 error:(id *)a6;
- (void)startPurchaseWithTagID:(void *)a3 productID:(void *)a4 purchaseID:(void *)a5 bundleID:(void *)a6 appAdamID:(void *)a7 storeExternalVersion:(void *)a8 price:(unsigned __int8)a9 webAccessOptIn:(void *)a10 payment:(void *)a11 error:;
- (void)transactionFailedWithProductID:(id)a3 transactionState:(int64_t)a4 transactionError:(id)a5;
- (void)transactionPurchased:(id)a3;
@end

@implementation FCPurchaseManager

- (void)activityObservingApplicationWillEnterForeground
{
  if (self)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v3 objectForKey:FCPurchaseModelCacheDate];

    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSinceDate:v7];
    v6 = v5;

    if (v6 > kPurchaseModelMaxAllowedCacheTime)
    {
      [(NFMutexLock *)self->_accessLock lock];
      [(NSMutableDictionary *)self->_cachedPurchaseModels removeAllObjects];
      [(NFMutexLock *)self->_accessLock unlock];
    }
  }
}

- (FCPurchaseManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPurchaseManager init]";
    v10 = 2080;
    v11 = "FCPurchaseManager.m";
    v12 = 1024;
    v13 = 93;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPurchaseManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPurchaseManager)initWithCloudContext:(id)a3 purchaseIntegrityChecker:(id)a4 purchaseReceiptProvider:(id)a5 paymentTransactionManager:(id)a6 bundleSubscriptionManager:(id)a7 keyValueStoreOption:(unint64_t)a8
{
  v81 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v64 = a6;
  v63 = a7;
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v52 = v16;
    v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cloudContext != nil"];
    *buf = 136315906;
    v74 = "[FCPurchaseManager initWithCloudContext:purchaseIntegrityChecker:purchaseReceiptProvider:paymentTransactionManager:bundleSubscriptionManager:keyValueStoreOption:]";
    v75 = 2080;
    v76 = "FCPurchaseManager.m";
    v77 = 1024;
    v78 = 103;
    v79 = 2114;
    v80 = v53;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v16 = v52;
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v54 = v16;
    v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "purchaseIntegrityChecker != nil"];
    *buf = 136315906;
    v74 = "[FCPurchaseManager initWithCloudContext:purchaseIntegrityChecker:purchaseReceiptProvider:paymentTransactionManager:bundleSubscriptionManager:keyValueStoreOption:]";
    v75 = 2080;
    v76 = "FCPurchaseManager.m";
    v77 = 1024;
    v78 = 104;
    v79 = 2114;
    v80 = v55;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v16 = v54;
  }

LABEL_6:
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "purchaseReceiptProvider != nil"];
    *buf = 136315906;
    v74 = "[FCPurchaseManager initWithCloudContext:purchaseIntegrityChecker:purchaseReceiptProvider:paymentTransactionManager:bundleSubscriptionManager:keyValueStoreOption:]";
    v75 = 2080;
    v76 = "FCPurchaseManager.m";
    v77 = 1024;
    v78 = 105;
    v79 = 2114;
    v80 = v56;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v16 = 0;
  }

  if (!v64 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v57 = v16;
    v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "paymentTransactionManager != nil"];
    *buf = 136315906;
    v74 = "[FCPurchaseManager initWithCloudContext:purchaseIntegrityChecker:purchaseReceiptProvider:paymentTransactionManager:bundleSubscriptionManager:keyValueStoreOption:]";
    v75 = 2080;
    v76 = "FCPurchaseManager.m";
    v77 = 1024;
    v78 = 106;
    v79 = 2114;
    v80 = v58;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v16 = v57;
  }

  v68.receiver = self;
  v68.super_class = FCPurchaseManager;
  v67 = [(FCPurchaseManager *)&v68 init];
  if (v67)
  {
    v60 = v16;
    v61 = v15;
    v17 = [v14 purchaseController];
    purchaseController = v67->_purchaseController;
    v67->_purchaseController = v17;

    objc_storeStrong(&v67->_purchaseIntegrityChecker, a4);
    objc_storeStrong(&v67->_purchaseReceiptProvider, a5);
    objc_storeStrong(&v67->_paymentTransactionManager, a6);
    objc_storeStrong(&v67->_bundleSubscriptionManager, a7);
    v19 = objc_alloc_init(FCReceiptRefresher);
    receiptRefresher = v67->_receiptRefresher;
    v67->_receiptRefresher = v19;

    [(FCPaymentTransactionManager *)v67->_paymentTransactionManager setDelegate:v67];
    v21 = [MEMORY[0x1E695DF90] dictionary];
    cachedPurchaseModels = v67->_cachedPurchaseModels;
    v67->_cachedPurchaseModels = v21;

    v23 = objc_alloc_init(MEMORY[0x1E69B68E8]);
    accessLock = v67->_accessLock;
    v67->_accessLock = v23;

    v25 = [v14 privateDataDirectory];
    v26 = [FCKeyValueStore alloc];
    v59 = v25;
    v27 = [(FCKeyValueStore *)v26 initWithName:FCPurchaseManagementFileName directory:v25 version:2 options:a8 classRegistry:0];
    localStore = v67->_localStore;
    v67->_localStore = v27;

    v62 = v14;
    v29 = [v14 appActivityMonitor];
    [v29 addObserver:v67];

    v30 = [MEMORY[0x1E695DF90] dictionary];
    ongoingPurchaseEntriesByProductID = v67->_ongoingPurchaseEntriesByProductID;
    v67->_ongoingPurchaseEntriesByProductID = v30;

    v32 = v67->_localStore;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v33 = [(FCKeyValueStore *)v32 allKeys];
    v34 = [v33 countByEnumeratingWithState:&v69 objects:buf count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v70;
      v37 = 0x1E695D000uLL;
      v65 = v32;
      v66 = *v70;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v70 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v69 + 1) + 8 * i);
          v40 = *(v37 + 3872);
          objc_opt_class();
          v41 = [(FCKeyValueStore *)v32 objectForKey:v39];
          if (v41)
          {
            if (objc_opt_isKindOfClass())
            {
              v42 = v41;
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = 0;
          }

          v43 = v42;

          if (v43 && [v39 hasPrefix:@"onpc-"])
          {
            v44 = [[FCOngoingPurchaseEntry alloc] initWithEntryID:v39 dictionaryRepresentation:v43];
            if (v44)
            {
              v45 = v67->_ongoingPurchaseEntriesByProductID;
              [(FCOngoingPurchaseEntry *)v44 productID];
              v46 = v37;
              v47 = v35;
              v49 = v48 = v33;
              [(NSMutableDictionary *)v45 setObject:v44 forKey:v49];

              v33 = v48;
              v35 = v47;
              v37 = v46;
              v32 = v65;
              v36 = v66;
              [(FCPaymentTransactionManager *)v67->_paymentTransactionManager registerOngoingPurchaseTransactionsWithEntry:v44];
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v69 objects:buf count:16];
      }

      while (v35);
    }

    v15 = v61;
    v14 = v62;
    v16 = v60;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v67;
}

- (void)activityObservingApplicationDidEnterBackground
{
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [MEMORY[0x1E695DF00] date];
  [v3 setObject:v4 forKey:FCPurchaseModelCacheDate];

  [(FCPurchaseManager *)self cleanupStaleOngoingPurchaseEntries];
  if (self)
  {
    localStore = self->_localStore;

    [(FCKeyValueStore *)localStore saveWithCompletionHandler:0];
  }
}

- (void)cleanupStaleOngoingPurchaseEntries
{
  if (a1)
  {
    v2 = [*(a1 + 80) copy];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __55__FCPurchaseManager_cleanupStaleOngoingPurchaseEntries__block_invoke;
    v3[3] = &unk_1E7C3AE58;
    v3[4] = a1;
    [v2 enumerateKeysAndObjectsUsingBlock:v3];
  }
}

- (id)fetchPurchaseMetadataForPurchaseID:(id)a3 restorePurchase:(BOOL)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E69B68F8]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__FCPurchaseManager_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke;
  v11[3] = &unk_1E7C3AD90;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 initWithResolver:v11];

  return v9;
}

void __72__FCPurchaseManager_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 104);
  }

  else
  {
    v8 = 0;
  }

  [v8 lock];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 88);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 objectForKeyedSubscript:*(a1 + 40)];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 104);
  }

  else
  {
    v13 = 0;
  }

  [v13 unlock];
  if (v11)
  {
    v5[2](v5, v11);
  }

  else
  {
    v14 = MEMORY[0x1E69B68F8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__FCPurchaseManager_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_2;
    v24[3] = &unk_1E7C3AD40;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v15 = [v14 firstly:v24];
    v16 = zalgo();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__FCPurchaseManager_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_3;
    v22[3] = &unk_1E7C3AD68;
    v22[4] = *(a1 + 32);
    v23 = v5;
    v17 = [v15 thenOn:v16 then:v22];
    v18 = zalgo();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__FCPurchaseManager_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_4;
    v20[3] = &unk_1E7C39F48;
    v21 = v6;
    v19 = [v17 errorOn:v18 error:v20];
  }
}

id __72__FCPurchaseManager_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(FCPurchaseMetadataFetcher);
  v3 = [(FCPurchaseMetadataFetcher *)v2 fetchPurchaseMetadataForPurchaseID:*(a1 + 32) restorePurchase:*(a1 + 40)];

  return v3;
}

uint64_t __72__FCPurchaseManager_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v5 = 0;
  }

  [v5 lock];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[11];
  }

  v7 = v6;
  v8 = [v3 purchaseID];
  [v7 setObject:v3 forKeyedSubscript:v8];

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 104);
  }

  else
  {
    v10 = 0;
  }

  [v10 unlock];
  (*(*(a1 + 40) + 16))();

  return 0;
}

- (void)startBundlePurchaseWithPurchase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = [v6 offerName];
  v7 = [v6 purchaseID];
  v8 = [v6 bundleID];
  v9 = [v6 appAdamID];
  v10 = [v6 storeExternalVersion];
  v11 = [v6 price];
  v12 = [v6 payment];

  [(FCPurchaseManager *)&self->super.isa startPurchaseWithTagID:v13 productID:v7 purchaseID:v8 bundleID:v9 appAdamID:v10 storeExternalVersion:v11 price:0 webAccessOptIn:v12 payment:a4 error:?];
}

- (void)startPurchaseWithTagID:(void *)a3 productID:(void *)a4 purchaseID:(void *)a5 bundleID:(void *)a6 appAdamID:(void *)a7 storeExternalVersion:(void *)a8 price:(unsigned __int8)a9 webAccessOptIn:(void *)a10 payment:(void *)a11 error:
{
  v75[1] = *MEMORY[0x1E69E9840];
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v61 = a6;
  v60 = a7;
  v59 = a8;
  v22 = a10;
  if (!a1)
  {
    goto LABEL_29;
  }

  if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "productID"];
    *buf = 136315906;
    v69 = "[FCPurchaseManager startPurchaseWithTagID:productID:purchaseID:bundleID:appAdamID:storeExternalVersion:price:webAccessOptIn:payment:error:]";
    v70 = 2080;
    v71 = "FCPurchaseManager.m";
    v72 = 1024;
    *v73 = 250;
    *&v73[4] = 2114;
    *&v73[6] = v54;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v20)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "purchaseID"];
        *buf = 136315906;
        v69 = "[FCPurchaseManager startPurchaseWithTagID:productID:purchaseID:bundleID:appAdamID:storeExternalVersion:price:webAccessOptIn:payment:error:]";
        v70 = 2080;
        v71 = "FCPurchaseManager.m";
        v72 = 1024;
        *v73 = 251;
        *&v73[4] = 2114;
        *&v73[6] = v55;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v20)
  {
    goto LABEL_5;
  }

  if (!v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "payment"];
    *buf = 136315906;
    v69 = "[FCPurchaseManager startPurchaseWithTagID:productID:purchaseID:bundleID:appAdamID:storeExternalVersion:price:webAccessOptIn:payment:error:]";
    v70 = 2080;
    v71 = "FCPurchaseManager.m";
    v72 = 1024;
    *v73 = 252;
    *&v73[4] = 2114;
    *&v73[6] = v56;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ([a1 anyOngoingPurchases])
  {
    [(FCPurchaseManager *)a1 cleanupStaleOngoingPurchaseEntries];
  }

  v23 = +[FCAppleAccount sharedAccount];
  v24 = [v23 iTunesAccountDSID];
  objc_setProperty_nonatomic_copy(a1, v25, v24, 96);

  v26 = [a1 purchaseFlowOverrideProvider];
  if (v26)
  {
    v27 = v26;
    v28 = [a1 purchaseFlowOverrideProvider];
    v29 = [v28 shouldOverridePurchaseFlow];

    if (v29)
    {
      v30 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __140__FCPurchaseManager_startPurchaseWithTagID_productID_purchaseID_bundleID_appAdamID_storeExternalVersion_price_webAccessOptIn_payment_error___block_invoke;
      block[3] = &unk_1E7C376A0;
      v63 = v19;
      v64 = a1;
      v65 = v18;
      dispatch_after(v30, MEMORY[0x1E69E96A0], block);

      v31 = v63;
LABEL_28:

      goto LABEL_29;
    }
  }

  if ([a1[4] canMakePayments])
  {
    v31 = [a1[10] objectForKey:v19];
    v32 = FCPurchaseLog;
    v33 = os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *buf = 138412802;
        v69 = v18;
        v70 = 2112;
        v71 = v20;
        v72 = 2112;
        *v73 = v19;
        _os_log_impl(&dword_1B63EF000, v32, OS_LOG_TYPE_DEFAULT, "ongoingPurchaseEntry already exists for tagID:%@ purchaseID:%@ productIdentifier:%@", buf, 0x20u);
      }

      if (a11)
      {
        v34 = v18;
        v35 = v21;
        v36 = MEMORY[0x1E696ABC0];
        v37 = FCOngoingPurchaseErrorCode;
        v66 = *MEMORY[0x1E696A578];
        v67 = @"There is a ongoing purchase transaction for the given product identifier";
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v39 = v36;
        v21 = v35;
        v18 = v34;
        *a11 = [v39 errorWithDomain:@"com.apple.news.purchase" code:v37 userInfo:v38];
      }
    }

    else
    {
      if (v33)
      {
        *buf = 138544130;
        v69 = v18;
        v70 = 2114;
        v71 = v20;
        v72 = 2114;
        *v73 = v19;
        *&v73[8] = 2114;
        *&v73[10] = v21;
        _os_log_impl(&dword_1B63EF000, v32, OS_LOG_TYPE_DEFAULT, "Starting purchase for tagID: %{public}@ purchaseID: %{public}@ productIdentifier: %{public}@, bundleID: %{public}@", buf, 0x2Au);
      }

      v43 = [FCOngoingPurchaseEntry alloc];
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"onpc-", v19];
      FCDeviceIdentifierForVendor();
      v58 = v18;
      v46 = v45 = v21;
      v47 = [MEMORY[0x1E695DF00] date];
      v31 = [(FCOngoingPurchaseEntry *)v43 initWithEntryID:v44 tagID:v58 purchaseID:v20 productID:v19 bundleID:v45 webAccessOptIn:a9 appAdamID:v61 storeExternalVersion:v60 vendorIdentifier:v46 purchaseInitiatedTime:v47 price:v59];

      v48 = a1[10];
      v49 = [(FCOngoingPurchaseEntry *)v31 productID];
      [v48 setObject:v31 forKey:v49];

      v50 = a1[3];
      v51 = [(FCOngoingPurchaseEntry *)v31 dictionaryRepresentation];
      v52 = [(FCOngoingPurchaseEntry *)v31 identifier];
      [v50 setObject:v51 forKey:v52];

      v21 = v45;
      v18 = v58;

      LOBYTE(v57) = a9;
      [a1[4] startPurchaseWithTagID:v58 productID:v19 purchaseID:v20 bundleID:v21 appAdamID:v61 storeExternalVersion:v60 price:v59 webAccessOptIn:v57 payment:v22];
    }

    goto LABEL_28;
  }

  v40 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEFAULT, "In-App purchase is disabled in this device.", buf, 2u);
  }

  if (a11)
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = FCPaymentRestrictedErrorCode;
    v74 = *MEMORY[0x1E696A578];
    v75[0] = @"This device is not able or allowed to make payments";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    *a11 = [v41 errorWithDomain:@"com.apple.news.purchase" code:v42 userInfo:v31];
    goto LABEL_28;
  }

LABEL_29:

  v53 = *MEMORY[0x1E69E9840];
}

- (void)startPurchaseWithTagID:(id)a3 purchase:(id)a4 webAccessOptIn:(BOOL)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a3;
  v18 = [v9 offerName];
  v11 = [v9 purchaseID];
  v12 = [v9 bundleID];
  v13 = [v9 appAdamID];
  v14 = [v9 storeExternalVersion];
  v15 = [v9 price];
  v16 = [v9 payment];

  [(FCPurchaseManager *)&self->super.isa startPurchaseWithTagID:v10 productID:v18 purchaseID:v11 bundleID:v12 appAdamID:v13 storeExternalVersion:v14 price:v15 webAccessOptIn:a5 payment:v16 error:a6];
}

void __140__FCPurchaseManager_startPurchaseWithTagID_productID_purchaseID_bundleID_appAdamID_storeExternalVersion_price_webAccessOptIn_payment_error___block_invoke(uint64_t a1)
{
  v7 = [[FCCompletedPaymentTransaction alloc] initWithProductID:*(a1 + 32) receipt:@"receipt" appleIDAccountDetails:0];
  v2 = [*(a1 + 40) delegate];
  v3 = *(a1 + 32);
  v4 = [FCOngoingPurchaseEntry dummyOngoingPurchaseEntryWithTagID:*(a1 + 48)];
  [v2 purchaseSuccessWithProductID:v3 transaction:v7 chargeCurrencyCode:@"USD" ongoingPurchaseEntry:v4];

  [(FCPurchaseManager *)*(a1 + 40) finishPurchaseTransactionWithProductID:?];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
  }

  [v6 refreshBundleSubscriptionWithCachePolicy:2 completion:0];
}

- (void)finishPurchaseTransactionWithProductID:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 80);
    v4 = a2;
    [v3 removeObjectForKey:v4];
    v5 = *(a1 + 24);
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = [v6 stringWithFormat:@"%@%@", @"onpc-", v4];

    [v7 removeObjectForKey:v8];
  }
}

- (void)transactionFailedWithProductID:(id)a3 transactionState:(int64_t)a4 transactionError:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self)
  {
    ongoingPurchaseEntriesByProductID = self->_ongoingPurchaseEntriesByProductID;
  }

  else
  {
    ongoingPurchaseEntriesByProductID = 0;
  }

  v11 = ongoingPurchaseEntriesByProductID;
  v12 = [(NSMutableDictionary *)v11 objectForKey:v8];

  if (!v12)
  {
    v18 = self;
    v19 = v8;
    v20 = a4;
    v21 = v9;
    v22 = 0;
LABEL_10:
    [(FCPurchaseManager *)v18 _purchaseFailedWithProductID:v19 transactionState:v20 transactionError:v21 ongoingPurchaseEntry:v22];
    goto LABEL_11;
  }

  if (!self || (+[FCAppleAccount sharedAccount](FCAppleAccount, "sharedAccount"), v13 = objc_claimAutoreleasedReturnValue(), [v13 iTunesAccountDSID], v14 = objc_claimAutoreleasedReturnValue(), lastSignedInItunesAccountDSID = self->_lastSignedInItunesAccountDSID, v14, v13, lastSignedInItunesAccountDSID) || !v14)
  {
    v18 = self;
    v19 = v8;
    v20 = a4;
    v21 = v9;
    v22 = v12;
    goto LABEL_10;
  }

  v16 = [v12 purchaseID];
  purchaseIntegrityChecker = self->_purchaseIntegrityChecker;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__FCPurchaseManager_transactionFailedWithProductID_transactionState_transactionError___block_invoke;
  v23[3] = &unk_1E7C3ADB8;
  v23[4] = self;
  v24 = v8;
  v27 = a4;
  v25 = v12;
  v26 = v9;
  [(FCPurchaseIntegrityChecker *)purchaseIntegrityChecker isUserEntitledToSubscriptionForPurchaseID:v16 completion:v23];

LABEL_11:
}

void __86__FCPurchaseManager_transactionFailedWithProductID_transactionState_transactionError___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = FCAlreadyPurchasedErrorCode;
    v14 = *MEMORY[0x1E696A578];
    v15[0] = @"Subscription already purchased by this itunes account";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v6 = [v3 errorWithDomain:@"com.apple.news.purchase" code:v4 userInfo:v5];

    [(FCPurchaseManager *)*(a1 + 32) _purchaseFailedWithProductID:*(a1 + 64) transactionState:v6 transactionError:*(a1 + 48) ongoingPurchaseEntry:?];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = *MEMORY[0x1E69E9840];

    [(FCPurchaseManager *)v8 _purchaseFailedWithProductID:v9 transactionState:v10 transactionError:v11 ongoingPurchaseEntry:v12];
  }
}

- (void)_purchaseFailedWithProductID:(uint64_t)a3 transactionState:(void *)a4 transactionError:(void *)a5 ongoingPurchaseEntry:
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __105__FCPurchaseManager__purchaseFailedWithProductID_transactionState_transactionError_ongoingPurchaseEntry___block_invoke;
    v12[3] = &unk_1E7C38CC0;
    v12[4] = a1;
    v13 = v9;
    v16 = a3;
    v14 = v10;
    v15 = v11;
    FCPerformBlockOnMainThread(v12);
  }
}

void __105__FCPurchaseManager__purchaseFailedWithProductID_transactionState_transactionError_ongoingPurchaseEntry___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 purchaseFailedWithProductID:*(a1 + 40) transactionState:*(a1 + 64) transactionError:*(a1 + 48) ongoingPurchaseEntry:*(a1 + 56)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  [(FCPurchaseManager *)v3 finishPurchaseTransactionWithProductID:v4];
}

- (void)transactionPurchased:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self)
  {
    ongoingPurchaseEntriesByProductID = self->_ongoingPurchaseEntriesByProductID;
  }

  else
  {
    ongoingPurchaseEntriesByProductID = 0;
  }

  v6 = ongoingPurchaseEntriesByProductID;
  v7 = [v4 productID];
  v8 = [(NSMutableDictionary *)v6 objectForKey:v7];

  if (v8)
  {
    v9 = [v8 tagID];
    v10 = [v8 purchaseID];
    v11 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v8 bundleID];
      *buf = 138543874;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "transaction purchase callback with ongoingPurchaseEntry tagID: %{public}@ purchaseID: %{public}@ bundleID: %{public}@", buf, 0x20u);
    }

    if (self)
    {
      purchaseIntegrityChecker = self->_purchaseIntegrityChecker;
    }

    else
    {
      purchaseIntegrityChecker = 0;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__FCPurchaseManager_transactionPurchased___block_invoke;
    v20[3] = &unk_1E7C3ADE0;
    v20[4] = self;
    v21 = v9;
    v22 = v8;
    v23 = v4;
    v15 = v9;
    [(FCPurchaseIntegrityChecker *)purchaseIntegrityChecker isUserEntitledToSubscriptionForPurchaseID:v10 completion:v20];
  }

  else
  {
    v16 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
    {
      v18 = v16;
      v19 = [v4 productID];
      *buf = 138543362;
      v25 = v19;
      _os_log_error_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_ERROR, "ongoingPurchaseEntry not found for productID: %{public}@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __42__FCPurchaseManager_transactionPurchased___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCPurchaseLog;
  if (v3)
  {
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Purchase is found in entitlements response.", buf, 2u);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__FCPurchaseManager_transactionPurchased___block_invoke_63;
    v12[3] = &unk_1E7C38C98;
    v12[4] = v5;
    v7 = &v13;
    v13 = *(a1 + 48);
    v8 = &v14;
    v14 = *(a1 + 56);
    v15 = v3;
    [(FCPurchaseManager *)v5 performEntitlementWithTagID:v6 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "Purchase is not found in entitlements response. Could be an illegal purchase attempt.", buf, 2u);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__FCPurchaseManager_transactionPurchased___block_invoke_64;
    v9[3] = &unk_1E7C376A0;
    v9[4] = *(a1 + 32);
    v7 = &v10;
    v10 = *(a1 + 56);
    v8 = &v11;
    v11 = *(a1 + 48);
    FCPerformBlockOnMainThread(v9);
  }
}

void __42__FCPurchaseManager_transactionPurchased___block_invoke_63(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__FCPurchaseManager_transactionPurchased___block_invoke_2;
  v7[3] = &unk_1E7C38C98;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  FCPerformBlockOnMainThread(v7);
}

void __42__FCPurchaseManager_transactionPurchased___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = [v3 bundleID];
  v6 = [v4 purchaseReceiptWithBundleID:v5];

  v7 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "PurchaseReceipt:  %@", &v18, 0xCu);
  }

  v8 = [FCCompletedPaymentTransaction alloc];
  v9 = [*(a1 + 48) productID];
  v10 = [*(a1 + 48) appleIDAccountDetails];
  v11 = [(FCCompletedPaymentTransaction *)v8 initWithProductID:v9 receipt:v6 appleIDAccountDetails:v10];

  v12 = [*(a1 + 32) delegate];
  v13 = [(FCCompletedPaymentTransaction *)v11 productID];
  v14 = [*(a1 + 56) chargeCurrencyCode];
  [v12 purchaseSuccessWithProductID:v13 transaction:v11 chargeCurrencyCode:v14 ongoingPurchaseEntry:*(a1 + 40)];

  v15 = *(a1 + 32);
  v16 = [*(a1 + 48) productID];
  [(FCPurchaseManager *)v15 finishPurchaseTransactionWithProductID:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)performEntitlementWithTagID:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 isEqualToString:@"bundleSubscriptionTagID"])
    {
      v7 = *(a1 + 56);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__FCPurchaseManager_performEntitlementWithTagID_completion___block_invoke;
      v8[3] = &unk_1E7C3A840;
      v9 = v6;
      [v7 refreshBundleSubscriptionWithCachePolicy:2 completion:v8];
    }

    else
    {
      v6[2](v6);
    }
  }
}

void __42__FCPurchaseManager_transactionPurchased___block_invoke_64(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 40) productID];
  [v2 purchaseFailedForInvalidPurchaseReceiptWithProductID:v3 ongoingPurchaseEntry:*(a1 + 48)];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) productID];
  [(FCPurchaseManager *)v4 finishPurchaseTransactionWithProductID:v5];
}

uint64_t __60__FCPurchaseManager_performEntitlementWithTagID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isPurchaseOngoingForTagID:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (self)
  {
    ongoingPurchaseEntriesByProductID = self->_ongoingPurchaseEntriesByProductID;
  }

  else
  {
    ongoingPurchaseEntriesByProductID = 0;
  }

  v6 = ongoingPurchaseEntriesByProductID;
  v7 = [(NSMutableDictionary *)v6 copy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__FCPurchaseManager_isPurchaseOngoingForTagID___block_invoke;
  v11[3] = &unk_1E7C3AE30;
  v8 = v4;
  v12 = v8;
  v13 = self;
  v14 = &v15;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __47__FCPurchaseManager_isPurchaseOngoingForTagID___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  v6 = [v13 tagID];
  v7 = [v6 isEqualToString:a1[4]];

  v9 = v13;
  if (v7)
  {
    v8 = [(FCPurchaseManager *)a1[5] isPurchaseTimeElapsedWithEntry:v13];
    if (v8)
    {
      v10 = a1[5];
      v11 = [v13 productID];
      [(FCPurchaseManager *)v10 finishPurchaseTransactionWithProductID:v11];
    }

    else
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    *a4 = 1;
    v9 = v13;
  }

  return MEMORY[0x1EEE66BB8](v8, v9);
}

- (BOOL)isPurchaseTimeElapsedWithEntry:(_BOOL8)result
{
  if (result)
  {
    v2 = MEMORY[0x1E695DF00];
    v3 = a2;
    v4 = [v2 date];
    v5 = [v3 purchaseInitiatedTime];

    [v4 timeIntervalSinceDate:v5];
    v7 = v6;

    return v7 > kOngoingPurchaseMaxAllowedPurchaseTime;
  }

  return result;
}

- (BOOL)anyOngoingPurchases
{
  if (self)
  {
    self = self->_ongoingPurchaseEntriesByProductID;
  }

  return [(FCPurchaseManager *)self count]!= 0;
}

void __55__FCPurchaseManager_cleanupStaleOngoingPurchaseEntries__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([(FCPurchaseManager *)*(a1 + 32) isPurchaseTimeElapsedWithEntry:v6])
  {
    v4 = *(a1 + 32);
    v5 = [v6 productID];
    [(FCPurchaseManager *)v4 finishPurchaseTransactionWithProductID:v5];
  }
}

void __67__FCPurchaseManager_simulateSuccessfulPurchaseWithProductID_tagID___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__FCPurchaseManager_simulateSuccessfulPurchaseWithProductID_tagID___block_invoke_2;
  v5[3] = &unk_1E7C376A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  FCPerformBlockOnMainThread(v5);
}

void __67__FCPurchaseManager_simulateSuccessfulPurchaseWithProductID_tagID___block_invoke_2(uint64_t a1)
{
  v5 = [[FCCompletedPaymentTransaction alloc] initWithProductID:*(a1 + 32) receipt:@"purchaseReceipt" appleIDAccountDetails:0];
  v2 = [*(a1 + 40) delegate];
  v3 = *(a1 + 32);
  v4 = [FCOngoingPurchaseEntry dummyOngoingPurchaseEntryWithTagID:*(a1 + 48)];
  [v2 purchaseSuccessWithProductID:v3 transaction:v5 chargeCurrencyCode:@"currencyCode" ongoingPurchaseEntry:v4];
}

- (void)simulateSuccessfulPurchaseWithProductID:(id)a3 tagID:(id)a4 purchaseID:(id)a5
{
  if (self)
  {
    purchaseController = self->_purchaseController;
    v9 = a3;
    [(FCPurchaseController *)purchaseController addAppStorePurchaseWithTagID:a4 purchaseID:a5];
    v10 = v9;
    v11 = @"tagID";
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__FCPurchaseManager_simulateSuccessfulPurchaseWithProductID_tagID___block_invoke;
    v17[3] = &unk_1E7C376A0;
    v18 = v10;
    v19 = self;
    v12 = @"tagID";
    v20 = @"tagID";
    [(FCPurchaseManager *)self performEntitlementWithTagID:v17 completion:?];
  }

  else
  {
    v13 = a3;
    [0 addAppStorePurchaseWithTagID:a4 purchaseID:a5];
    v14 = v13;
    v15 = @"tagID";
  }
}

- (void)simulateFailurePurchaseWithProductID:(id)a3 transactionState:(int64_t)a4 error:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [(FCPurchaseManager *)self delegate];
  v10 = [FCOngoingPurchaseEntry dummyOngoingPurchaseEntryWithTagID:@"tagID"];
  [v11 purchaseFailedWithProductID:v9 transactionState:a4 transactionError:v8 ongoingPurchaseEntry:v10];
}

- (FCPurchaseManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end