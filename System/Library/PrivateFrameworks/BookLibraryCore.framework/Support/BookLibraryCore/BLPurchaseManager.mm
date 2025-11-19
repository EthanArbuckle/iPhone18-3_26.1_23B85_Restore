@interface BLPurchaseManager
- (BLDatabaseManager)databaseManager;
- (BLDownloadPolicyManager)downloadPolicyManager;
- (BLOSTransactionCoordinating)transactionCoordinator;
- (BLPurchaseManager)initWithDatabaseManager:(id)a3 downloadPolicyManager:(id)a4 transactionCoordinator:(id)a5 progressSender:(id)a6;
- (BLPurchaseManagerDelegate)delegate;
- (id)_accountIdentifierFromDownloadMetadata:(id)a3;
- (id)_distinctDownloadsArrayForDownloads:(id)a3;
- (id)_newCheckQueueOperationForQueueRequest:(id)a3;
- (id)_newLoadQueueOperationForQueueRequest:(id)a3;
- (id)_newQueueRequestsForPurchaseStoreIdentifier:(id)a3 suppressNetworkEvaluatorDialogs:(BOOL)a4;
- (id)dq_writeArtworkWithURL:(id)a3 downloadID:(id)a4;
- (id)dq_writeMetadata:(id)a3 clientIdentifier:(id)a4 downloadID:(id)a5;
- (id)dq_writeSinf:(id)a3 downloadID:(id)a4 downloadKind:(id)a5;
- (void)_addQueueOperationsForRequests:(id)a3 reason:(id)a4;
- (void)_checkStoreDownloadQueuesForPurchaseWithStoreIdentifier:(id)a3 suppressNetworkEvaluatorDialogs:(BOOL)a4;
- (void)_handleTriggerDownloadforRequest:(id)a3 withDownloadID:(id)a4;
- (void)_purchaseWithRequest:(id)a3 uiHostProxy:(id)a4 completion:(id)a5;
- (void)_requestDownloadWithDownloadMetadata:(id)a3 isRestore:(BOOL)a4 completion:(id)a5;
- (void)_requestDownloadsWithRestoreDownloadItems:(id)a3 completion:(id)a4;
- (void)_requestDownloadsWithStoreDownloadItems:(id)a3 isRestore:(BOOL)a4 completion:(id)a5;
- (void)_updateNetworkPolicyForQueueDownloads:(id)a3 suppressDialogs:(BOOL)a4;
- (void)dealloc;
- (void)downloadWithPermlink:(id)a3 title:(id)a4 completion:(id)a5;
- (void)dq_performDownloadDownloadMetadata:(id)a3 downloadID:(id)a4 clientIdentifier:(id)a5 isRestoreItem:(BOOL)a6;
- (void)dq_performDownloadWithPermlink:(id)a3 title:(id)a4 clientIdentifier:(id)a5 downloadID:(id)a6 completion:(id)a7;
- (void)dq_performPurchaseWithRequest:(id)a3 downloadID:(id)a4 uiHostProxy:(id)a5 completion:(id)a6;
- (void)dq_triggerDownloadForDownloadID:(id)a3 urlToAsset:(id)a4;
- (void)dq_triggerRestartDownloadForDownloadID:(id)a3;
- (void)p_downloadIDForPermlink:(id)a3 completion:(id)a4;
- (void)p_downloadIDForRequest:(id)a3 completion:(id)a4;
- (void)processAutomaticDownloadsWithCompletion:(id)a3;
- (void)purchaseWithRequest:(id)a3 uiHostProxy:(id)a4 completion:(id)a5;
- (void)reloadFromServerWithCompletion:(id)a3;
- (void)requestDownloadWithMetadata:(id)a3 isRestore:(BOOL)a4 completion:(id)a5;
- (void)requestDownloadsWithManifestRequest:(id)a3 uiHostProxy:(id)a4 completion:(id)a5;
- (void)requestDownloadsWithRestoreContentRequestItems:(id)a3 completion:(id)a4;
@end

@implementation BLPurchaseManager

- (BLPurchaseManager)initWithDatabaseManager:(id)a3 downloadPolicyManager:(id)a4 transactionCoordinator:(id)a5 progressSender:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35.receiver = self;
  v35.super_class = BLPurchaseManager;
  v14 = [(BLPurchaseManager *)&v35 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_databaseManager, v10);
    objc_storeWeak(&v15->_downloadPolicyManager, v11);
    objc_storeStrong(&v15->_progressSender, a6);
    v16 = [AMSPurchaseQueueConfiguration alloc];
    v17 = +[BUBag defaultBag];
    v18 = [v16 initWithBag:v17];
    purchaseQueueConfiguration = v15->_purchaseQueueConfiguration;
    v15->_purchaseQueueConfiguration = v18;

    v20 = objc_alloc_init(BLPurchaseUIHelper);
    purchaseUIHelper = v15->_purchaseUIHelper;
    v15->_purchaseUIHelper = v20;

    [(AMSPurchaseQueueConfiguration *)v15->_purchaseQueueConfiguration setDelegate:v15->_purchaseUIHelper];
    v22 = [[AMSPurchaseQueue alloc] initWithConfiguration:v15->_purchaseQueueConfiguration];
    purchaseQueue = v15->_purchaseQueue;
    v15->_purchaseQueue = v22;

    v24 = objc_alloc_init(_BLOngoingPurchaseRequests);
    ongoingPurchaseRequests = v15->_ongoingPurchaseRequests;
    v15->_ongoingPurchaseRequests = v24;

    v26 = objc_alloc_init(BLOperationQueue);
    storeRequestOperationQueue = v15->_storeRequestOperationQueue;
    v15->_storeRequestOperationQueue = v26;

    [v12 addKeepAliveOperationQueue:v15->_storeRequestOperationQueue];
    objc_storeWeak(&v15->_transactionCoordinator, v12);
    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.ibooks.BLService.PurchaseManager", v28);
    dispatchQueue = v15->_dispatchQueue;
    v15->_dispatchQueue = v29;

    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create("com.apple.ibooks.BLService.PurchaseManager.restoreAuthenticationQueue", v31);
    restoreAuthenticationQueue = v15->_restoreAuthenticationQueue;
    v15->_restoreAuthenticationQueue = v32;
  }

  return v15;
}

- (void)dealloc
{
  v3 = [(BLPurchaseManager *)self transactionCoordinator];
  v4 = [(BLPurchaseManager *)self storeRequestOperationQueue];
  [v3 removeKeepAliveOperationQueue:v4];

  v5.receiver = self;
  v5.super_class = BLPurchaseManager;
  [(BLPurchaseManager *)&v5 dealloc];
}

- (void)purchaseWithRequest:(id)a3 uiHostProxy:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: Attempting purchaseWithRequest:", buf, 2u);
  }

  v12 = [(BLPurchaseManager *)self ongoingPurchaseRequests];
  v13 = [v12 checkAndAddStoreIDForRequest:v8];

  if (v13)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B567C;
    v19[3] = &unk_10011E9E8;
    v19[4] = self;
    v20 = v8;
    v21 = v10;
    [(BLPurchaseManager *)self _purchaseWithRequest:v20 uiHostProxy:v9 completion:v19];
  }

  else
  {
    v14 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 storeIdentifier];
      v16 = [v8 buyParameters];
      *buf = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: Skipping because there is ongoing purchase request for storeIdentifier=%@, buyParameters=%@", buf, 0x16u);
    }

    v17 = objc_retainBlock(v10);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0, 0);
    }
  }
}

- (void)_purchaseWithRequest:(id)a3 uiHostProxy:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  objc_opt_class();
  v12 = [v11 valueForEntitlement:@"com.apple.application-identifier"];
  v13 = BUDynamicCast();

  if ([v8 isRestore])
  {
    v14 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Unexpected restore path.", buf, 2u);
    }
  }

  v15 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: starting _purchaseWithRequest:", buf, 2u);
  }

  objc_initWeak(buf, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B5A30;
  v25[3] = &unk_10011EA38;
  objc_copyWeak(&v26, buf);
  v16 = objc_retainBlock(v25);
  if ([v8 isAudiobook])
  {
    (v16[2])(v16, v8, 0, 0, v9, v10);
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B5C70;
    v17[3] = &unk_10011EA88;
    objc_copyWeak(&v24, buf);
    v18 = v8;
    v19 = self;
    v22 = v10;
    v23 = v16;
    v20 = v9;
    v21 = v13;
    [(BLPurchaseManager *)self p_downloadIDForRequest:v18 completion:v17];

    objc_destroyWeak(&v24);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

- (void)downloadWithPermlink:(id)a3 title:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  objc_opt_class();
  v12 = [v11 valueForEntitlement:@"com.apple.application-identifier"];
  v13 = BUDynamicCast();

  v14 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: starting downloadWithPermlink:", buf, 2u);
  }

  objc_initWeak(buf, self);
  v15 = [v8 absoluteString];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B650C;
  v20[3] = &unk_10011EB00;
  v16 = v10;
  v24 = v16;
  v20[4] = self;
  v17 = v8;
  v21 = v17;
  v18 = v13;
  v22 = v18;
  objc_copyWeak(&v25, buf);
  v19 = v9;
  v23 = v19;
  [(BLPurchaseManager *)self p_downloadIDForPermlink:v15 completion:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (void)_requestDownloadWithDownloadMetadata:(id)a3 isRestore:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  objc_opt_class();
  v11 = [v10 valueForEntitlement:@"com.apple.application-identifier"];
  v12 = BUDynamicCast();

  v13 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (v6)
    {
      v14 = @"YES";
    }

    *buf = 138412290;
    v33 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: starting requestDownloadWithMetadata:isRestore:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15 = [v8 redownloadActionParameters];
  v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 itemIdentifier]);
  v17 = [BLPurchaseRequest requestWithBuyParameters:v15 storeIdentifier:v16];
  [v17 setRestore:v6];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B6C58;
  v23[3] = &unk_10011EB50;
  objc_copyWeak(&v30, buf);
  v18 = v8;
  v24 = v18;
  v25 = self;
  v19 = v9;
  v29 = v19;
  v20 = v12;
  v26 = v20;
  v31 = v6;
  v21 = v15;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  [(BLPurchaseManager *)self p_downloadIDForRequest:v17 completion:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)requestDownloadWithMetadata:(id)a3 isRestore:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [BLDownloadMetadata alloc];
  v11 = [v9 copy];

  v12 = [v10 initWithDictionary:v11];
  [(BLPurchaseManager *)self _requestDownloadWithDownloadMetadata:v12 isRestore:v5 completion:v8];
}

- (void)_requestDownloadsWithStoreDownloadItems:(id)a3 isRestore:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v15 = a5;
  v9 = dispatch_group_create();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1000B7AD8;
  v30[4] = sub_1000B7AE8;
  v31 = objc_alloc_init(NSMutableArray);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2810000000;
  v28[3] = &unk_1000F0DB6;
  v29 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        dispatch_group_enter(v9);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000B7AF0;
        v20[3] = &unk_10011EB78;
        v20[4] = v13;
        v22 = v28;
        v23 = v30;
        v21 = v9;
        [(BLPurchaseManager *)self _requestDownloadWithDownloadMetadata:v13 isRestore:v6 completion:v20];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B7C0C;
  block[3] = &unk_10011E0D0;
  v18 = v15;
  v19 = v30;
  v14 = v15;
  dispatch_group_notify(v9, &_dispatch_main_q, block);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)requestDownloadsWithRestoreContentRequestItems:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = [v6 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ContentRestore] Request restores for %lu item(s)", buf, 0xCu);
  }

  v9 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = [BLRestoreDownloadItem alloc];
        v17 = [(BLRestoreContentItem *)v16 initWithRestoreRequestItem:v15, v18];
        [v9 addObject:v17];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [(BLPurchaseManager *)self _requestDownloadsWithRestoreDownloadItems:v9 completion:v7];
}

- (void)_requestDownloadsWithRestoreDownloadItems:(id)a3 completion:(id)a4
{
  v6 = a3;
  v27 = a4;
  objc_initWeak(&location, self);
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = objc_alloc_init(NSMutableArray);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1000B7AD8;
  v44 = sub_1000B7AE8;
  v45 = 0;
  v9 = dispatch_group_create();
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000B8298;
  v34[3] = &unk_10011EBC8;
  v10 = v7;
  v35 = v10;
  objc_copyWeak(&v39, &location);
  v11 = v9;
  v36 = v11;
  v12 = v8;
  v37 = v12;
  v38 = &v40;
  v13 = objc_retainBlock(v34);
  if ([v6 count])
  {
    v14 = [BLRestoreDownloadsOperation alloc];
    v15 = [(BLPurchaseManager *)self restoreAuthenticationQueue];
    v16 = [(BLRestoreDownloadsOperation *)v14 initWithRestoreDownloadItems:v6 authenticationQueue:v15 responseItemBlock:v13];

    [(BLRestoreDownloadsOperation *)v16 start];
    v17 = [(BLOperation *)v16 error];

    if (v17)
    {
      v18 = BLServiceLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [(BLOperation *)v16 error];
        *buf = 138412290;
        v48 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[ContentRestore] Operation encountered error:  %@", buf, 0xCu);
      }
    }

    v20 = [(BLOperation *)v16 error];
    v21 = v20;
    if (!v20)
    {
      v21 = v41[5];
    }

    v22 = v21;

    v23 = [(BLPurchaseManager *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B8604;
    block[3] = &unk_10011DAB0;
    v29 = v6;
    v30 = v10;
    v31 = v22;
    v32 = v12;
    v33 = v27;
    v24 = v22;
    dispatch_group_notify(v11, v23, block);
  }

  else
  {
    v25 = BLServiceLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[ContentRestore] Restore request items array is empty", buf, 2u);
    }

    v26 = objc_retainBlock(v27);
    v24 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, &__NSArray0__struct, 0);
    }
  }

  objc_destroyWeak(&v39);
  _Block_object_dispose(&v40, 8);

  objc_destroyWeak(&location);
}

- (void)requestDownloadsWithManifestRequest:(id)a3 uiHostProxy:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_1000B8B60;
  v24[4] = sub_1000B8B8C;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B8B94;
  v22[3] = &unk_10011D530;
  v10 = a5;
  v23 = v10;
  v25 = objc_retainBlock(v22);
  objc_initWeak(&location, self);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000B8C3C;
  v18 = &unk_10011EBF0;
  objc_copyWeak(&v20, &location);
  v19 = v24;
  v11 = objc_retainBlock(&v15);
  v12 = [BLLoadExternalDownloadManifestOperation alloc];
  v13 = [(BLLoadExternalDownloadManifestOperation *)v12 initWithRequest:v8 uiHostProxy:v9 downloadBlock:v11, v15, v16, v17, v18];
  v14 = [(BLPurchaseManager *)self storeRequestOperationQueue];
  [v14 addOperation:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);
}

- (id)_distinctDownloadsArrayForDownloads:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 collectionIdentifier])
        {
          v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 collectionIdentifier]);
          v13 = [v4 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_alloc_init(NSMutableArray);
            [v4 setObject:v13 forKeyedSubscript:v12];
          }

          [v13 addObject:v11];
        }

        else
        {
          v20 = v11;
          v12 = [NSArray arrayWithObjects:&v20 count:1];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v4 allValues];
  [v5 addObjectsFromArray:v14];

  return v5;
}

- (void)_updateNetworkPolicyForQueueDownloads:(id)a3 suppressDialogs:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating download policy for automatic downloads", buf, 2u);
  }

  v27 = v6;
  [(BLPurchaseManager *)self _distinctDownloadsArrayForDownloads:v6];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v31 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v31)
  {
    v8 = *v40;
    v9 = BLMLImporterItem;
    v10 = BLMLImporterItem;
    v29 = v4;
    v28 = *v40;
    do
    {
      v11 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v11;
        v12 = *(*(&v39 + 1) + 8 * v11);
        v13 = [v12 firstObject];
        v14 = [v13 transactionIdentifier];

        v32 = [&v9[60] copyEvaluatorDownloadForDownloadMetadataArray:v12 logKey:v14];
        v15 = [objc_alloc(&v10[10]) initWithDownload:v32];
        [v15 setSuppressDialogs:v4];
        [v15 start];
        v16 = [v15 error];

        v34 = v15;
        if (v16)
        {
          v17 = BLServiceDownloadPipelineLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v15 error];
            *buf = 138543618;
            v45 = v14;
            v46 = 2112;
            v47 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: [%{public}@] Cellular evaluation for automatic download failed due to  %@", buf, 0x16u);
          }
        }

        else
        {
          v19 = [v15 cellularResult];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v17 = v12;
          v20 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v36;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v36 != v22)
                {
                  objc_enumerationMutation(v17);
                }

                v24 = *(*(&v35 + 1) + 8 * i);
                v25 = BLServiceDownloadPipelineLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v45 = v14;
                  v46 = 2048;
                  v47 = v19;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: [%{public}@] Set cellular evaluation result for automatic download to %ld", buf, 0x16u);
                }

                v26 = [NSNumber numberWithInteger:v19];
                [v24 bl_setDownloadPolicyCellularResult:v26];
              }

              v21 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v21);
            v4 = v29;
            v8 = v28;
          }

          v9 = BLMLImporterItem;
          v10 = BLMLImporterItem;
        }

        v11 = v33 + 1;
      }

      while ((v33 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v31);
  }
}

- (void)processAutomaticDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing automatic downloads", buf, 2u);
  }

  v6 = +[BLLoadStoreDownloadQueueOperation operationForAutomaticDownloadQueue];
  [v6 run];
  if ([v6 success])
  {
    v7 = [v6 downloads];
    v8 = [v7 array];

    v9 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 downloads];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Downloads found in automatic download queue: %@", buf, 0xCu);
    }

    [(BLPurchaseManager *)self _updateNetworkPolicyForQueueDownloads:v8 suppressDialogs:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B94CC;
    v12[3] = &unk_10011D530;
    v13 = v4;
    [(BLPurchaseManager *)self _requestDownloadsWithStoreDownloadItems:v8 isRestore:0 completion:v12];
    v11 = v13;
    goto LABEL_9;
  }

  v8 = objc_retainBlock(v4);
  if (v8)
  {
    v11 = [v6 error];
    (v8)[2](v8, &__NSArray0__struct, v11);
LABEL_9:
  }
}

- (void)reloadFromServerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking download queues at client request", v9, 2u);
  }

  v6 = [(BLPurchaseManager *)self _newQueueRequests];
  if ([v6 count])
  {
    [(BLPurchaseManager *)self _addQueueOperationsForRequests:v6 reason:@"other"];
  }

  v7 = objc_retainBlock(v4);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)_checkStoreDownloadQueuesForPurchaseWithStoreIdentifier:(id)a3 suppressNetworkEvaluatorDialogs:(BOOL)a4
{
  v5 = [(BLPurchaseManager *)self _newQueueRequestsForPurchaseStoreIdentifier:a3 suppressNetworkEvaluatorDialogs:a4];
  if ([v5 count])
  {
    [(BLPurchaseManager *)self _addQueueOperationsForRequests:v5 reason:@"trigger-download"];
  }
}

- (id)_newQueueRequestsForPurchaseStoreIdentifier:(id)a3 suppressNetworkEvaluatorDialogs:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(NSMutableSet);
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = +[BUAccountsProvider sharedProvider];
  v9 = [v8 activeStoreAccount];
  v10 = [v9 ams_DSID];

  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:v10];
    if (!v11)
    {
      v11 = objc_alloc_init(NSMutableSet);
      [v7 setObject:v11 forKeyedSubscript:v10];
    }

    v12 = BLDownloadSupportedDownloadKinds();
    [v11 addObjectsFromArray:v12];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v7 allKeys];
  v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v27)
  {
    v25 = *v34;
    v26 = v7;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v13;
        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = [v7 objectForKeyedSubscript:v14];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = sub_1000B46C4(*(*(&v29 + 1) + 8 * i));
              if (v20)
              {
                v21 = objc_alloc_init(BLStoreDownloadQueueRequest);
                [(BLStoreDownloadQueueRequest *)v21 setAccountIdentifier:v14];
                [(BLStoreDownloadQueueRequest *)v21 setPurchaseStoreIdentifier:v5];
                [(BLStoreDownloadQueueRequest *)v21 setPurchaseSuppressNetworkEvaluatorDialogs:v4];
                [(BLStoreDownloadQueueRequest *)v21 setQueueIdentifier:v20];
                [v6 addObject:v21];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v17);
        }

        v13 = v28 + 1;
        v7 = v26;
      }

      while ((v28 + 1) != v27);
      v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v27);
  }

  return v6;
}

- (void)_addQueueOperationsForRequests:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isEqualToString:@"trigger-download"];
  v9 = BLServiceLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 134218242;
      v36 = [v6 count];
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Load Queue: Loading %lu queues with reason: %@", buf, 0x16u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(BLPurchaseManager *)self _newLoadQueueOperationForQueueRequest:*(*(&v29 + 1) + 8 * i)];
          v17 = [(BLPurchaseManager *)self storeRequestOperationQueue];
          [v17 addOperation:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v13);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 134218242;
      v36 = [v6 count];
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Load Queue: Checking %lu queues with reason: %@", buf, 0x16u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(BLPurchaseManager *)self _newCheckQueueOperationForQueueRequest:*(*(&v25 + 1) + 8 * j), v25];
          v24 = [(BLPurchaseManager *)self storeRequestOperationQueue];
          [v24 addOperation:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }
  }
}

- (id)_newCheckQueueOperationForQueueRequest:(id)a3
{
  v4 = a3;
  v5 = [[BLCheckDownloadQueueOperation alloc] initWithDownloadQueueRequest:v4];
  objc_initWeak(&location, v5);
  objc_initWeak(&from, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B9D54;
  v8[3] = &unk_10011EC18;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  v6 = v4;
  v9 = v6;
  [(BLCheckDownloadQueueOperation *)v5 setCompletionBlock:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_newLoadQueueOperationForQueueRequest:(id)a3
{
  v4 = a3;
  v5 = +[BUBag defaultBag];
  v6 = [v4 queueContentsURLBagKey];
  v7 = [v5 URLForKey:v6];

  v8 = [v4 accountIdentifier];
  v9 = [ACAccount bu_storeAccountWithDSID:v8];

  v10 = [[BLLoadStoreDownloadQueueOperation alloc] initWithBagURL:v7 account:v9];
  objc_initWeak(&location, v10);
  objc_initWeak(&from, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B9FAC;
  v13[3] = &unk_10011EC18;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  v11 = v4;
  v14 = v11;
  [(BLLoadStoreDownloadQueueOperation *)v10 setCompletionBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v10;
}

- (void)dq_performDownloadWithPermlink:(id)a3 title:(id)a4 clientIdentifier:(id)a5 downloadID:(id)a6 completion:(id)a7
{
  v12 = a3;
  v51 = a4;
  v50 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(BLPurchaseManager *)self databaseManager];
  if (v12 && [v13 length])
  {
    v16 = [BLDownloadManager downloadDirectoryForDownloadID:v13];
    v48 = [v16 path];

    v49 = [v48 stringByAppendingPathComponent:@"asset"];
    v47 = [v12 pathExtension];
    if ([v47 length])
    {
      v17 = [v49 stringByAppendingPathExtension:v47];

      v49 = v17;
    }

    v18 = +[NSFileManager defaultManager];
    v74 = 0;
    v19 = [v18 createDirectoryAtPath:v48 withIntermediateDirectories:1 attributes:0 error:&v74];
    v20 = v74;

    if (v19)
    {
      v21 = [BLDownloadMetadata alloc];
      v78 = @"metadata";
      v22 = objc_opt_new();
      v79 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v24 = [v21 initWithDictionary:v23];

      [v24 setSortTitle:v51];
      [v24 setTitle:v51];
      v25 = [v12 absoluteString];
      [v24 setDownloadPermalink:v25];

      [v24 setSample:0];
      v45 = [v24 artistName];
      v43 = [v24 title];
      v42 = [v24 title];
      v41 = [v24 genre];
      v40 = [v24 kind];
      v26 = [v24 thumbnailImageURL];
      v27 = [v26 absoluteString];

      v28 = [(BLPurchaseManager *)self dq_writeMetadata:v24 clientIdentifier:v50 downloadID:v13];
      v29 = [(BLPurchaseManager *)self transactionCoordinator];
      [v29 willStartTransactionWithIdentifier:v13];

      objc_initWeak(location, self);
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1000BAB94;
      v64[3] = &unk_10011EC80;
      v39 = v28;
      v65 = v39;
      v66 = v49;
      v67 = v47;
      v37 = v45;
      v68 = v37;
      v38 = v43;
      v69 = v38;
      v44 = v42;
      v70 = v44;
      v46 = v41;
      v71 = v46;
      v30 = v40;
      v72 = v30;
      v31 = v27;
      v73 = v31;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000BACE0;
      v59[3] = &unk_10011ECD0;
      objc_copyWeak(&v63, location);
      v60 = v13;
      v61 = v12;
      v62 = v14;
      [v15 updateDownloadWithID:v60 updateBlock:v64 completion:v59];

      objc_destroyWeak(&v63);
      objc_destroyWeak(location);
    }

    else
    {
      v36 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *location = 138543618;
        *&location[4] = v13;
        v76 = 2112;
        v77 = v20;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to create target path for download, moving download failed. Error:  %@", location, 0x16u);
      }

      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000BAF3C;
      v55[3] = &unk_10011E858;
      v58 = v14;
      v56 = v13;
      v57 = v20;
      [v15 saveDownloadStateWithId:v56 state:6 completion:v55];

      v24 = v58;
    }
  }

  else
  {
    v32 = [v13 length] == 0;
    v33 = BLServicePurchaseManagerLog();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        *location = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Unknown download.", location, 2u);
      }

      v20 = objc_retainBlock(v14);
      if (v20)
      {
        v35 = sub_1000A8F44(23, 0, 0);
        (*(v20 + 2))(v20, v13, v35);
      }
    }

    else
    {
      if (v34)
      {
        *location = 138543362;
        *&location[4] = v13;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: No permlink available to download", location, 0xCu);
      }

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000BAF98;
      v52[3] = &unk_10011ECF8;
      v54 = v14;
      v53 = v13;
      [v15 saveDownloadStateWithId:v53 state:6 completion:v52];

      v20 = v54;
    }
  }
}

- (void)dq_performPurchaseWithRequest:(id)a3 downloadID:(id)a4 uiHostProxy:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v152 = self;
  v14 = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v14);

  v15 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(__CFString *)v11 length];
    v17 = @"<Audiobook>";
    if (v16)
    {
      v17 = v11;
    }

    *buf = 138543362;
    v182 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Processing purchase request on dispatchQueue", buf, 0xCu);
  }

  v18 = [(BLPurchaseManager *)self databaseManager];
  v19 = [BLDownloadManager downloadDirectoryForDownloadID:v11];
  v20 = [v19 path];

  if (![(__CFString *)v11 length])
  {
    v143 = v20;
    v147 = v13;
    v23 = 0;
    goto LABEL_9;
  }

  v21 = +[NSFileManager defaultManager];
  v180 = 0;
  v22 = [v21 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v180];
  v23 = v180;

  if (v22)
  {
    v143 = v20;
    v147 = v13;
LABEL_9:
    v24 = [v10 buyParameters];
    v141 = [NSURL bu_dictionaryForQueryString:v24 unescapedValues:0];
    v25 = [v141 mutableCopy];
    [v25 setObject:@"true" forKeyedSubscript:@"wasWarnedOverLimitBuyOnCellular"];
    v140 = v25;
    v26 = [v25 copy];
    v27 = [NSURL bu_queryStringForDictionary:v26 escapedValues:1];

    v139 = v27;
    v28 = [[AMSBuyParams alloc] initWithString:v27];
    v29 = [v10 accountIdentifier];
    v30 = +[BUAccountsProvider sharedProvider];
    v31 = [v30 activeStoreAccount];

    v146 = v31;
    v32 = [v31 ams_DSID];
    v33 = v32;
    if (v29 && v32 && ([v32 isEqualToNumber:v29] & 1) == 0)
    {
      v34 = [v10 accountIdentifier];
      [v28 setParameter:v34 forKey:AMSBuyParamPropertyOwnerDsid];
    }

    v136 = v33;
    v35 = [[AMSPurchase alloc] initWithPurchaseType:0 buyParams:v28];
    [v35 setUserInitiated:{objc_msgSend(v10, "isUserInitiated")}];
    [v35 setCallerBundleId:@"com.apple.iBooks"];
    [v35 setClientId:@"com.apple.iBooks"];
    [v35 setOwnerAccountId:v29];
    [v35 setAccount:v146];
    v36 = [v10 logUUID];
    [v35 setLogUUID:v36];

    v149 = v35;
    [v35 setRequiresAccount:1];
    v37 = BLServicePurchaseManagerLog();
    v137 = v29;
    v38 = v12;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v10 presentingSceneIdentifier];
      *buf = 138543618;
      v182 = v11;
      v183 = 2112;
      v184 = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: presentingSceneIdentifier: %@", buf, 0x16u);
    }

    v40 = [v10 presentingSceneIdentifier];
    [v35 setPresentingSceneIdentifier:v40];

    if (v12)
    {
      v41 = [(BLPurchaseManager *)v152 purchaseUIHelper];
      [v41 setUiHostProxy:v12];
    }

    v42 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v182 = v11;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: About to enqueue AMS purchase request", buf, 0xCu);
    }

    v43 = [(BLPurchaseManager *)v152 purchaseQueue];
    v188 = v35;
    v44 = [NSArray arrayWithObjects:&v188 count:1];
    v45 = [v43 enquePurchases:v44];

    v179 = 0;
    v135 = v45;
    v46 = [v45 resultWithError:&v179];
    v145 = v179;
    v47 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v182 = v11;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: AMS purchase promise fulfilled.", buf, 0xCu);
    }

    v148 = [v46 firstObject];
    if (v11)
    {
      [v18 syncTouchDownloadWithId:v11];
    }

    if (v148)
    {
      v48 = [[BLPurchaseResponse alloc] initWithAMSPurchaseResult:v148];
      v49 = [v148 error];
    }

    else
    {
      if (!v145)
      {
        v53 = sub_1000A8F44(13, @"No Purchase Result", @"Purchase results was empty with no error.");
        v48 = 0;
        goto LABEL_31;
      }

      v48 = [[BLPurchaseResponse alloc] initWithPurchase:v149 error:v145];
      v49 = v145;
    }

    v53 = v49;
LABEL_31:
    v134 = v46;
    [v48 item];
    v55 = v54 = v48;

    v142 = v23;
    v138 = v28;
    if (v55)
    {
      v56 = [BLDownloadMetadata alloc];
      v57 = [v54 item];
      v58 = [v56 initWithDictionary:v57];

      LODWORD(v57) = [v58 bl_isPurchaseRedownload];
      v59 = v57 ^ 1;
    }

    else
    {
      v59 = 1;
    }

    v60 = objc_opt_new();
    v61 = [v54 storeID];
    [v60 setObject:v61 forKeyedSubscript:BLDownloadQueuePropertyStoreItemIdentifier];

    v62 = [v54 downloadID];
    [v60 setObject:v62 forKeyedSubscript:BLDownloadQueuePropertyDownloadIdentifier];

    v63 = [v54 purchaseParameters];
    [v60 setObject:v63 forKeyedSubscript:BLDownloadQueuePropertyPurchaseParameters];

    v64 = [v54 currency];
    [v60 setObject:v64 forKeyedSubscript:BLDownloadQueuePropertyPurchaseCurrency];

    v65 = [v54 price];
    [v60 setObject:v65 forKeyedSubscript:BLDownloadQueuePropertyPurchasePrice];

    v66 = [v53 userInfo];
    v67 = [v66 description];
    [v60 setObject:v67 forKeyedSubscript:BLDownloadQueuePropertyPurchaseErrorInfo];

    v68 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v53 code]);
    [v60 setObject:v68 forKeyedSubscript:BLDownloadQueuePropertyPurchaseErrorCode];

    v69 = [v53 domain];
    [v60 setObject:v69 forKeyedSubscript:BLDownloadQueuePropertyPurchaseErrorDomain];

    v70 = [v53 localizedDescription];
    [v60 setObject:v70 forKeyedSubscript:BLDownloadQueuePropertyPurchaseErrorDescription];

    v154 = v54;
    v71 = [v54 logUUID];
    [v60 setObject:v71 forKeyedSubscript:BLDownloadQueuePropertyPurchaseLogUUID];

    v72 = [NSNumber numberWithInt:v59];
    [v60 setObject:v72 forKeyedSubscript:BLDownloadQueuePropertyIsPurchase];

    v73 = BLServiceDownloadPipelineLog();
    v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
    if (v53)
    {
      v75 = v148;
      if (v74)
      {
        *buf = 138543362;
        v182 = v11;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Posting BLDownloadQueuePurchaseFailedNotification.", buf, 0xCu);
      }

      v76 = [(BLPurchaseManager *)v152 progressSender];
      [v76 sendPurchaseFailedWithUserInfo:v60];
    }

    else
    {
      v75 = v148;
      if (v74)
      {
        *buf = 138543362;
        v182 = v11;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Posting BLDownloadQueuePurchaseSucceededNotification.", buf, 0xCu);
      }

      v76 = [(BLPurchaseManager *)v152 progressSender];
      [v76 sendPurchaseSucceededWithUserInfo:v60];
    }

    v77 = [v75 responseDictionary];

    v150 = v11;
    v133 = v60;
    if (v77)
    {
      v78 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v182 = v11;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: AMS purchase response is non-empty", buf, 0xCu);
      }

      v144 = [v75 responseDictionary];
      v132 = [v144 objectForKeyedSubscript:@"trigger-download"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v132 BOOLValue])
      {
        v79 = BLServicePurchaseManagerLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v182 = v11;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Got trigger-download in purchase response", buf, 0xCu);
        }

        [(BLPurchaseManager *)v152 _handleTriggerDownloadforRequest:v10 withDownloadID:v11];
      }

      v129 = v18;
      v80 = [v10 storeIdentifiersToDownload];
      v81 = [v54 purchaseResponseItems];
      v130 = v38;
      v131 = v10;
      v128 = v53;
      if ([v81 count])
      {
        v82 = [BLEvaluatorDownload copyEvaluatorDownloadForPurchaseResponse:v54 storeIdentifiersToDownload:v80];
        v153 = [[BLReviewNetworkPolicyOperation alloc] initWithDownload:v82];
        if ([v10 shouldSuppressNetworkEvaluatorDialogs])
        {
          v83 = 1;
        }

        else
        {
          v83 = [v10 isUserInitiated] ^ 1;
        }

        [(BLReviewNetworkPolicyOperation *)v153 setSuppressDialogs:v83, v53];
        [(BLReviewNetworkPolicyOperation *)v153 start];
        [(BLReviewNetworkPolicyOperation *)v153 waitUntilFinished];
      }

      else
      {
        v82 = BLServicePurchaseManagerLog();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: Purchase response items is empty", buf, 2u);
        }

        v153 = 0;
      }

      v100 = dispatch_group_create();
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      obj = v81;
      v156 = [obj countByEnumeratingWithState:&v175 objects:v187 count:16];
      if (v156)
      {
        v155 = *v176;
        do
        {
          for (i = 0; i != v156; i = i + 1)
          {
            if (*v176 != v155)
            {
              objc_enumerationMutation(obj);
            }

            v102 = *(*(&v175 + 1) + 8 * i);
            dispatch_group_enter(v100);
            v103 = [v102 item];
            v104 = [v102 metadata];
            v105 = [v104 objectForKeyedSubscript:@"itemId"];
            v106 = BLGetNSNumberFromValue();

            if (v80 && ([v80 containsObject:v106] & 1) == 0)
            {
              v111 = [[BLDownloadMetadata alloc] initWithDictionary:v103];
              v112 = [(BLPurchaseManager *)v152 _accountIdentifierFromDownloadMetadata:v111];
              v113 = [v106 stringValue];
              v114 = [v111 transactionIdentifier];
              v115 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v182 = v113;
                _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Skipping download", buf, 0xCu);
              }

              v173[0] = _NSConcreteStackBlock;
              v173[1] = 3221225472;
              v173[2] = sub_1000BC568;
              v173[3] = &unk_10011E080;
              v174 = v113;
              v116 = v113;
              [BLServerDownloadDoneRequest notifyDownloadDoneWithAccountID:v112 downloadID:v116 storeID:v106 transactionID:v114 completion:v173];
              dispatch_group_leave(v100);
            }

            else
            {
              v107 = [(BLOperation *)v153 error];

              if (v107)
              {
                v108 = BLServiceDownloadPipelineLog();
                if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                {
                  v109 = [v154 logUUID];
                  v110 = [(BLOperation *)v153 error];
                  *buf = 138543874;
                  v182 = v150;
                  v183 = 2114;
                  v184 = v109;
                  v185 = 2112;
                  v186 = v110;
                  _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "(dID=%{public}@) {logUUID=%{public}@} [Purchase-Mgr]: Cellular evaluation for download failed due to  %@", buf, 0x20u);
                }
              }

              else
              {
                v117 = [(BLReviewNetworkPolicyOperation *)v153 cellularResult];
                v118 = BLServiceDownloadPipelineLog();
                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  v119 = [v154 logUUID];
                  *buf = 138543874;
                  v182 = v150;
                  v183 = 2114;
                  v184 = v119;
                  v185 = 2048;
                  v186 = v117;
                  _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) {logUUID=%{public}@} [Purchase-Mgr]: Set cellular evaluation result for download to %ld", buf, 0x20u);
                }

                v108 = [v103 mutableCopy];
                v120 = [NSNumber numberWithInteger:v117];
                [BLDownloadMetadata bl_setDownloadPolicyCellularResult:v120 toDictionary:v108];

                v121 = [v108 copy];
                v103 = v121;
              }

              objc_opt_class();
              v122 = [v102 metadata];
              v123 = [v122 objectForKeyedSubscript:@"kind"];
              v111 = BUDynamicCast();

              v112 = BLDownloadSupportedDownloadKinds();
              if ([v112 containsObject:v111])
              {
                v169[0] = _NSConcreteStackBlock;
                v169[1] = 3221225472;
                v169[2] = sub_1000BC638;
                v169[3] = &unk_10011ED20;
                v169[4] = v152;
                v169[5] = v102;
                v170 = v154;
                v111 = v111;
                v171 = v111;
                v172 = v100;
                [(BLPurchaseManager *)v152 requestDownloadWithMetadata:v103 isRestore:0 completion:v169];
              }

              else
              {
                v124 = BLServiceDownloadPipelineLog();
                if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                {
                  v125 = [v154 logUUID];
                  *buf = 138543874;
                  v182 = v150;
                  v183 = 2114;
                  v184 = v125;
                  v185 = 2114;
                  v186 = v111;
                  _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "(dID=%{public}@) {logUUID=%{public}@}[Purchase-Mgr]: Skipping download due to unrecognized kind '%{public}@'", buf, 0x20u);
                }

                dispatch_group_leave(v100);
              }
            }
          }

          v156 = [obj countByEnumeratingWithState:&v175 objects:v187 count:16];
        }

        while (v156);
      }

      v126 = [(BLPurchaseManager *)v152 dispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BC7DC;
      block[3] = &unk_10011ED48;
      v90 = v128;
      v164 = v128;
      v99 = v149;
      v165 = v149;
      v168 = v147;
      v166 = v150;
      v98 = v154;
      v167 = v154;
      dispatch_group_notify(v100, v126, block);

      v12 = v130;
      v92 = v131;
      v94 = v129;
      v89 = v140;
      v88 = v141;
      v127 = v136;
      v96 = v145;
      v95 = v132;
    }

    else
    {
      v84 = [v53 userInfo];
      v85 = [v84 objectForKeyedSubscript:AMSErrorUserInfoKeyServerPayload];
      v86 = [v85 objectForKeyedSubscript:@"trigger-download"];

      v144 = v86;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v86 BOOLValue])
      {
        v87 = BLServicePurchaseManagerLog();
        v89 = v140;
        v88 = v141;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v182 = v11;
          v183 = 2112;
          v184 = v53;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Got trigger-download in error of purchase response, error:  %@", buf, 0x16u);
        }

        v90 = v53;

        v91 = v11;
        v92 = v10;
        [(BLPurchaseManager *)v152 _handleTriggerDownloadforRequest:v10 withDownloadID:v91];
      }

      else
      {
        v93 = BLServicePurchaseManagerLog();
        v89 = v140;
        v88 = v141;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v182 = v11;
          v183 = 2112;
          v184 = v53;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: AMS purchase response is empty, error:  %@", buf, 0x16u);
        }

        v92 = v10;
        v90 = v53;
      }

      v94 = v18;
      v12 = v38;
      v95 = objc_retainBlock(v147);
      v96 = v145;
      if (v95)
      {
        v97 = v95;
        v98 = v154;
        v95[2](v95, v150, v154, v90);
        v95 = v97;
        v99 = v149;
      }

      else
      {
        v99 = v149;
        v98 = v154;
      }

      v127 = v136;
    }

    v52 = v139;
    v13 = v147;
    v51 = v142;
    v20 = v143;
    v18 = v94;
    v10 = v92;
    v11 = v150;
    goto LABEL_95;
  }

  v50 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v182 = v11;
    v183 = 2112;
    v184 = v23;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to create target path for download, moving download to failed. Error:  %@", buf, 0x16u);
  }

  v157[0] = _NSConcreteStackBlock;
  v157[1] = 3221225472;
  v157[2] = sub_1000BC930;
  v157[3] = &unk_10011ED70;
  v158 = v10;
  v159 = v11;
  v160 = v152;
  v162 = v13;
  v51 = v23;
  v161 = v51;
  [v18 saveDownloadStateWithId:v159 state:6 completion:v157];

  v52 = v158;
LABEL_95:
}

- (void)_handleTriggerDownloadforRequest:(id)a3 withDownloadID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 storeIdentifier];
  if ([v6 shouldSuppressNetworkEvaluatorDialogs])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 isUserInitiated] ^ 1;
  }

  [(BLPurchaseManager *)self _checkStoreDownloadQueuesForPurchaseWithStoreIdentifier:v8 suppressNetworkEvaluatorDialogs:v9];

  v10 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Handling for trigger-download completed", &v11, 0xCu);
  }
}

- (void)dq_performDownloadDownloadMetadata:(id)a3 downloadID:(id)a4 clientIdentifier:(id)a5 isRestoreItem:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v113 = a5;
  v12 = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v12);

  v13 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v174 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Preparing the download asset on dispatchQueue based on the downloadsMetadata.", buf, 0xCu);
  }

  v14 = [BLDownloadManager downloadDirectoryForDownloadID:v11];
  v118 = [v14 path];

  v119 = [v118 stringByAppendingPathComponent:@"asset"];
  v117 = [v10 fileExtension];
  if ([v117 length])
  {
    v15 = [v119 stringByAppendingPathExtension:v117];

    v119 = v15;
  }

  v116 = [(BLPurchaseManager *)self databaseManager];
  v16 = +[NSFileManager defaultManager];
  v170 = 0;
  v17 = [v16 createDirectoryAtPath:v118 withIntermediateDirectories:1 attributes:0 error:&v170];
  v114 = v170;

  if (v17)
  {
    v112 = [v10 bl_assetFileSize];
    v107 = [v10 primaryAssetURL];
    v115 = [v10 sinfs];
    v99 = [v10 epubRightsData];
    objc_opt_class();
    v18 = [v115 firstObject];
    v104 = BUDynamicCast();

    objc_opt_class();
    v19 = [v104 objectForKeyedSubscript:@"dpInfo"];
    v98 = BUDynamicCast();

    v169 = 0;
    v105 = [NSPropertyListSerialization dataWithPropertyList:v115 format:200 options:0 error:&v169];
    v70 = v169;
    if (v115 && !v105)
    {
      v20 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v174 = v11;
        v175 = 2112;
        v176 = v70;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Error serializing sinfInfo:  %@", buf, 0x16u);
      }
    }

    v97 = [v10 fullSizeImageURL];
    v96 = [v10 publicationVersion];
    v93 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isAutomaticDownload]);
    if (a6)
    {
      v109 = &__kCFBooleanTrue;
    }

    else
    {
      v109 = [v10 valueForFirstAvailableKey:{BLSSDownloadPropertyIsRestore, 0}];
    }

    v95 = [v10 downloadKey];
    v94 = [v10 valueForFirstAvailableKey:{BLDownloadMetadataKeyIsZipStreamable, 0}];
    v92 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 itemIdentifier]);
    v91 = [v10 artistName];
    v90 = [v10 title];
    v89 = [v10 title];
    v88 = [v10 collectionArtistName];
    v87 = [v10 collectionName];
    v86 = [v10 genre];
    v110 = [v10 kind];
    v22 = [v10 thumbnailImageURL];
    v85 = [v22 absoluteString];

    v84 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isSample]);
    v83 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 bl_isPurchaseRedownload] ^ 1);
    v82 = [v10 purchaseDate];
    v81 = [v10 transactionIdentifier];
    v23 = [v10 cancelDownloadURL];
    v80 = [v23 absoluteString];

    v103 = [v10 valueForMetadataKey:BLDownloadMetadataKeyAdditionalInfo];
    objc_opt_class();
    v24 = [v10 valueForMetadataKey:@"local-server-info"];
    v79 = BUDynamicCast();

    v108 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 collectionIdentifier]);
    v78 = [v10 racGUID];
    v77 = [v10 valueForMetadataKey:@"encryptionKey"];
    v76 = [v10 valueForMetadataKey:@"salt"];
    if (v103)
    {
      v75 = [v103 objectForKey:BLDownloadMetadataKeyRequestPersistentID];
    }

    else
    {
      v75 = 0;
    }

    v25 = [v10 bl_downloadPolicyCellularResult];
    v102 = v25;
    if (v25)
    {
      v26 = [v25 integerValue];
      v27 = BLServiceDownloadPipelineLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v174 = v11;
        v175 = 2048;
        v176 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Cellular evaluation result for download was %ld", buf, 0x16u);
      }

      v100 = [BLDownloadPolicy policyInfoWithCellularResult:v26];
    }

    else
    {
      v100 = 0;
    }

    v101 = [(BLPurchaseManager *)self downloadPolicyManager];
    [v101 addOrUpdateDownloadPolicyWithInfo:v100 withPolicyID:v11 storePlaylistIdentifier:v108];
    v28 = [v109 BOOLValue];
    v29 = BLServicePurchaseManagerLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (!v30)
      {
        goto LABEL_31;
      }

      *buf = 0;
      v31 = "[Purchase-Mgr]: isRestore is TRUE";
    }

    else
    {
      if (!v30)
      {
        goto LABEL_31;
      }

      *buf = 0;
      v31 = "[Purchase-Mgr]: isRestore is FALSE";
    }

    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
LABEL_31:

    v111 = [(BLPurchaseManager *)self _accountIdentifierFromDownloadMetadata:v10];
    v32 = [v10 bl_purchaserAccountIdentifier];
    v33 = [BLDownloadKindAudiobook isEqualToString:v110];
    v106 = 0;
    if (v111)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    if (v34 != 1 || !v32)
    {
      goto LABEL_59;
    }

    if ([v111 isEqualToNumber:v32])
    {
      v106 = 0;
LABEL_59:
      if (v112)
      {
        v49 = v112;
      }

      v50 = [v10 valueForFirstAvailableKey:{BLDownloadMetadataKeyHashChunks, 0}];
      objc_opt_class();
      v51 = BUDynamicCast();
      if (v51)
      {
        v74 = [v50 objectForKey:BLDownloadMetadataKeyHashChunkHashes];
        objc_opt_class();
        v52 = [v51 objectForKeyedSubscript:BLDownloadMetadataKeyHashChunkSize];
        v53 = BUDynamicCast();

        v54 = v53;
        v55 = v112;
        v72 = v54;
      }

      else
      {
        objc_opt_class();
        v56 = [v10 valueForFirstAvailableKey:{BLDownloadMetadataKeyMD5, 0}];
        v55 = BUDynamicCast();

        if (v55)
        {
          v171 = v55;
          v74 = [NSArray arrayWithObjects:&v171 count:1];
          v54 = 0;
        }

        else
        {
          v54 = 0;
          v74 = 0;
        }

        v72 = v112;
      }

      if (v107 && [v11 length])
      {
        v57 = [(BLPurchaseManager *)self transactionCoordinator];
        [v57 willStartTransactionWithIdentifier:v11];

        v69 = [BLAssetContainerFactory assetContainerForDownloadKind:v110 isPermlink:0];
        [v69 purchasedAssetWithMetadata:v10 familyAccountID:v106];
        v58 = [(BLPurchaseManager *)self dq_writeMetadata:v10 clientIdentifier:v113 downloadID:v11];
        v59 = [v10 kind];
        v60 = [(BLPurchaseManager *)self dq_writeSinf:v99 downloadID:v11 downloadKind:v59];

        v61 = [(BLPurchaseManager *)self dq_writeArtworkWithURL:v97 downloadID:v11];
        objc_initWeak(buf, self);
        v124[0] = _NSConcreteStackBlock;
        v124[1] = 3221225472;
        v124[2] = sub_1000BDF54;
        v124[3] = &unk_10011ED98;
        v62 = v58;
        v125 = v62;
        v126 = v119;
        v65 = v60;
        v127 = v65;
        v67 = v61;
        v128 = v67;
        v129 = v98;
        v130 = v105;
        v131 = v117;
        v132 = v96;
        v133 = v93;
        v63 = v107;
        v134 = v63;
        v135 = v109;
        v136 = v84;
        v137 = v83;
        v138 = v79;
        v139 = v82;
        v140 = v95;
        v141 = v112;
        v142 = v111;
        v143 = v106;
        v144 = v92;
        v145 = v75;
        v146 = v81;
        v147 = v80;
        v148 = v94;
        v149 = v74;
        v150 = v72;
        v151 = v54;
        v152 = v91;
        v153 = v90;
        v154 = v89;
        v155 = v88;
        v156 = v87;
        v157 = v86;
        v158 = v110;
        v159 = v85;
        v160 = v108;
        v161 = v78;
        v162 = v77;
        v163 = v76;
        v120[0] = _NSConcreteStackBlock;
        v120[1] = 3221225472;
        v120[2] = sub_1000BE264;
        v120[3] = &unk_10011DEA8;
        objc_copyWeak(&v123, buf);
        v121 = v11;
        v122 = v63;
        [v116 updateDownloadWithID:v121 updateBlock:v124 completion:v120];

        objc_destroyWeak(&v123);
        objc_destroyWeak(buf);
      }

      else if ([v11 length])
      {
        v64 = BLServicePurchaseManagerLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v174 = v11;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: No url available to download", buf, 0xCu);
        }

        [v116 saveDownloadStateWithId:v11 state:6 completion:0];
      }

      goto LABEL_75;
    }

    v35 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v174 = v11;
      v175 = 2112;
      v176 = v32;
      v177 = 2112;
      v178 = v111;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: purchaserAccountID (%@) different from accountID (%@), retrieving family info to verify whether purchaser is a family member", buf, 0x20u);
    }

    v36 = [AMSFamilyInfoLookupTask alloc];
    v37 = +[BUAccountsProvider sharedProvider];
    v38 = [v37 activeStoreAccount];
    v39 = +[BUBag defaultBag];
    v73 = [v36 initWithAccount:v38 bag:v39];

    v71 = [v73 performFamilyInfoLookup];
    v168 = 0;
    v68 = [v71 resultWithTimeout:&v168 error:15.0];
    v66 = v168;
    if (v66)
    {
      v40 = BLServicePurchaseManagerLog();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *buf = 138543618;
      v174 = v11;
      v175 = 2112;
      v176 = v32;
      v41 = "(dID=%{public}@) [Purchase-Mgr]: failed to retrieve family information to identify purchaserID (%@)";
    }

    else
    {
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v40 = [v68 familyMembers];
      v42 = [v40 countByEnumeratingWithState:&v164 objects:v172 count:16];
      if (v42)
      {
        v43 = *v165;
        while (2)
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v165 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v164 + 1) + 8 * i);
            v46 = [v45 iTunesDSID];
            if ([v46 isEqualToNumber:v32])
            {
              v106 = v46;
              v47 = BLServicePurchaseManagerLog();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v48 = [v45 iTunesUsername];
                *buf = 138543874;
                v174 = v11;
                v175 = 2112;
                v176 = v32;
                v177 = 2112;
                v178 = v48;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Verified purchaserAccountID (%@) belongs to a family member (%@)", buf, 0x20u);
              }

              goto LABEL_58;
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v164 objects:v172 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      v40 = BLServicePurchaseManagerLog();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *buf = 138543618;
      v174 = v11;
      v175 = 2112;
      v176 = v32;
      v41 = "(dID=%{public}@) [Purchase-Mgr]: purchaserAccountID (%@) does not belong to a family member; ignoring";
    }

    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0x16u);
LABEL_44:
    v106 = 0;
LABEL_58:

    goto LABEL_59;
  }

  v21 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v174 = v11;
    v175 = 2112;
    v176 = v114;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to create target path for download, moving it to failed. Error:  %@", buf, 0x16u);
  }

  [v116 saveDownloadStateWithId:v11 state:6 completion:0];
LABEL_75:
}

- (void)dq_triggerDownloadForDownloadID:(id)a3 urlToAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(BLPurchaseManager *)self delegate];
  v15[0] = @"downloadID";
  v15[1] = @"url";
  v16[0] = v7;
  v10 = [v6 absoluteString];
  v16[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BE5A8;
  v13[3] = &unk_10011EDC0;
  v14 = v6;
  v12 = v6;
  [v9 purchaseManager:self requestDownloadWithParameters:v11 completion:v13];
}

- (void)dq_triggerRestartDownloadForDownloadID:(id)a3
{
  v4 = a3;
  v5 = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BLPurchaseManager *)self delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BE840;
  v8[3] = &unk_10011D4B8;
  v9 = v4;
  v7 = v4;
  [v6 purchaseManager:self restartDownloadWithID:v7 withCompletion:v8];
}

- (id)dq_writeMetadata:(id)a3 clientIdentifier:(id)a4 downloadID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [[BLITunesMetadataHelper alloc] initWithClientIdentifier:v9 downloadMetadata:v10];
  v17 = 0;
  v13 = [(BLITunesMetadataHelper *)v12 writePlistWithDownloadID:v8 error:&v17];
  v14 = v17;
  if (![v13 length])
  {
    v15 = BLBookInstallLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to write iTunesMetadata.plist for download. Error:  %@", buf, 0x16u);
    }
  }

  return v13;
}

- (id)dq_writeSinf:(id)a3 downloadID:(id)a4 downloadKind:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v11);

  LODWORD(v11) = [v10 isEqualToString:BLDownloadKindPDF];
  if (v11)
  {
    v12 = BLBookInstallLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Skip writing sinf.xml for PDF download.", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v17 = 0;
    v14 = [BLSinfHelper writeSinfForDownloadID:v9 epubRightsData:v8 error:&v17];
    v12 = v17;
    if (!v14)
    {
      v15 = BLBookInstallLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v19 = v9;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to write sinf.xml for download.  Error: %@", buf, 0x16u);
      }
    }

    v13 = [v14 path];
  }

  return v13;
}

- (id)dq_writeArtworkWithURL:(id)a3 downloadID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v13 = 0;
  v9 = [BLArtworkHelper writeArtworkDownloadID:v6 artworkURL:v7 error:&v13];

  v10 = v13;
  if (![v9 length])
  {
    v11 = BLBookInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to write iTunesArtwork for download.  Error:  %@", buf, 0x16u);
    }
  }

  return v9;
}

- (void)p_downloadIDForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 buyParameters];
  v9 = [v6 storeIdentifier];
  v10 = [v9 longLongValue];

  if (v10 < 1)
  {
    if (![v8 length])
    {
      goto LABEL_7;
    }

    v11 = [BLUtilities storeIDFromBuyParameters:v8];
  }

  else
  {
    v11 = [v6 storeIdentifier];
  }

  v12 = v11;
  if (v11)
  {
    v13 = [NSPredicate predicateWithFormat:@"%K = %@", @"storeIdentifier", v11];
    goto LABEL_10;
  }

LABEL_7:
  if ([v8 length])
  {
    v13 = [NSPredicate predicateWithFormat:@"%K CONTAINS %@", @"buyParameters", v8];
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

LABEL_10:
  if ([v6 isRestore])
  {
    v14 = objc_retainBlock(v7);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0, 0, 0);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!v13)
  {
    v15 = objc_retainBlock(v7);
    if (v15)
    {
      v17 = sub_1000A8F44(0, 0, @"We have neither a storeID nor purchase parameters for this request");
      (*(v15 + 2))(v15, 0, 0, 0, v17);
    }

    goto LABEL_17;
  }

  v16 = [(BLPurchaseManager *)self databaseManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000BF088;
  v18[3] = &unk_10011EE10;
  objc_copyWeak(&v20, &location);
  v19 = v7;
  [v16 fetchModifiableDownloadsMatchingPredicate:v13 results:v18 completion:0];

  objc_destroyWeak(&v20);
LABEL_18:

  objc_destroyWeak(&location);
}

- (void)p_downloadIDForPermlink:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    objc_initWeak(&location, self);
    v8 = [NSPredicate predicateWithFormat:@"%K = %@", @"permlink", v6];
    v9 = [(BLPurchaseManager *)self databaseManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BF698;
    v12[3] = &unk_10011EE10;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [v9 fetchDownloadListWithPredicate:v8 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = objc_retainBlock(v7);
    if (v10)
    {
      v11 = sub_1000A8F44(13, 0, @"Missing buy parameters.");
      v10[2](v10, 0, v11);
    }
  }
}

- (id)_accountIdentifierFromDownloadMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 downloaderAccountIdentifier];
  if (v4 || ([v3 valueForFirstAvailableKey:{BLSSDownloadPropertyStoreAccountIdentifier, 0}], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v7 = +[BUAccountsProvider sharedProvider];
    v8 = [v7 activeStoreAccount];
    v5 = [v8 ams_DSID];
  }

  return v5;
}

- (BLPurchaseManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BLDatabaseManager)databaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);

  return WeakRetained;
}

- (BLDownloadPolicyManager)downloadPolicyManager
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadPolicyManager);

  return WeakRetained;
}

- (BLOSTransactionCoordinating)transactionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionCoordinator);

  return WeakRetained;
}

@end