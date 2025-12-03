@interface BLPurchaseManager
- (BLDatabaseManager)databaseManager;
- (BLDownloadPolicyManager)downloadPolicyManager;
- (BLOSTransactionCoordinating)transactionCoordinator;
- (BLPurchaseManager)initWithDatabaseManager:(id)manager downloadPolicyManager:(id)policyManager transactionCoordinator:(id)coordinator progressSender:(id)sender;
- (BLPurchaseManagerDelegate)delegate;
- (id)_accountIdentifierFromDownloadMetadata:(id)metadata;
- (id)_distinctDownloadsArrayForDownloads:(id)downloads;
- (id)_newCheckQueueOperationForQueueRequest:(id)request;
- (id)_newLoadQueueOperationForQueueRequest:(id)request;
- (id)_newQueueRequestsForPurchaseStoreIdentifier:(id)identifier suppressNetworkEvaluatorDialogs:(BOOL)dialogs;
- (id)dq_writeArtworkWithURL:(id)l downloadID:(id)d;
- (id)dq_writeMetadata:(id)metadata clientIdentifier:(id)identifier downloadID:(id)d;
- (id)dq_writeSinf:(id)sinf downloadID:(id)d downloadKind:(id)kind;
- (void)_addQueueOperationsForRequests:(id)requests reason:(id)reason;
- (void)_checkStoreDownloadQueuesForPurchaseWithStoreIdentifier:(id)identifier suppressNetworkEvaluatorDialogs:(BOOL)dialogs;
- (void)_handleTriggerDownloadforRequest:(id)request withDownloadID:(id)d;
- (void)_purchaseWithRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion;
- (void)_requestDownloadWithDownloadMetadata:(id)metadata isRestore:(BOOL)restore completion:(id)completion;
- (void)_requestDownloadsWithRestoreDownloadItems:(id)items completion:(id)completion;
- (void)_requestDownloadsWithStoreDownloadItems:(id)items isRestore:(BOOL)restore completion:(id)completion;
- (void)_updateNetworkPolicyForQueueDownloads:(id)downloads suppressDialogs:(BOOL)dialogs;
- (void)dealloc;
- (void)downloadWithPermlink:(id)permlink title:(id)title completion:(id)completion;
- (void)dq_performDownloadDownloadMetadata:(id)metadata downloadID:(id)d clientIdentifier:(id)identifier isRestoreItem:(BOOL)item;
- (void)dq_performDownloadWithPermlink:(id)permlink title:(id)title clientIdentifier:(id)identifier downloadID:(id)d completion:(id)completion;
- (void)dq_performPurchaseWithRequest:(id)request downloadID:(id)d uiHostProxy:(id)proxy completion:(id)completion;
- (void)dq_triggerDownloadForDownloadID:(id)d urlToAsset:(id)asset;
- (void)dq_triggerRestartDownloadForDownloadID:(id)d;
- (void)p_downloadIDForPermlink:(id)permlink completion:(id)completion;
- (void)p_downloadIDForRequest:(id)request completion:(id)completion;
- (void)processAutomaticDownloadsWithCompletion:(id)completion;
- (void)purchaseWithRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion;
- (void)reloadFromServerWithCompletion:(id)completion;
- (void)requestDownloadWithMetadata:(id)metadata isRestore:(BOOL)restore completion:(id)completion;
- (void)requestDownloadsWithManifestRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion;
- (void)requestDownloadsWithRestoreContentRequestItems:(id)items completion:(id)completion;
@end

@implementation BLPurchaseManager

- (BLPurchaseManager)initWithDatabaseManager:(id)manager downloadPolicyManager:(id)policyManager transactionCoordinator:(id)coordinator progressSender:(id)sender
{
  managerCopy = manager;
  policyManagerCopy = policyManager;
  coordinatorCopy = coordinator;
  senderCopy = sender;
  v35.receiver = self;
  v35.super_class = BLPurchaseManager;
  v14 = [(BLPurchaseManager *)&v35 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_databaseManager, managerCopy);
    objc_storeWeak(&v15->_downloadPolicyManager, policyManagerCopy);
    objc_storeStrong(&v15->_progressSender, sender);
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

    [coordinatorCopy addKeepAliveOperationQueue:v15->_storeRequestOperationQueue];
    objc_storeWeak(&v15->_transactionCoordinator, coordinatorCopy);
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
  transactionCoordinator = [(BLPurchaseManager *)self transactionCoordinator];
  storeRequestOperationQueue = [(BLPurchaseManager *)self storeRequestOperationQueue];
  [transactionCoordinator removeKeepAliveOperationQueue:storeRequestOperationQueue];

  v5.receiver = self;
  v5.super_class = BLPurchaseManager;
  [(BLPurchaseManager *)&v5 dealloc];
}

- (void)purchaseWithRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion
{
  requestCopy = request;
  proxyCopy = proxy;
  completionCopy = completion;
  v11 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: Attempting purchaseWithRequest:", buf, 2u);
  }

  ongoingPurchaseRequests = [(BLPurchaseManager *)self ongoingPurchaseRequests];
  v13 = [ongoingPurchaseRequests checkAndAddStoreIDForRequest:requestCopy];

  if (v13)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B567C;
    v19[3] = &unk_10011E9E8;
    v19[4] = self;
    v20 = requestCopy;
    v21 = completionCopy;
    [(BLPurchaseManager *)self _purchaseWithRequest:v20 uiHostProxy:proxyCopy completion:v19];
  }

  else
  {
    v14 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      storeIdentifier = [requestCopy storeIdentifier];
      buyParameters = [requestCopy buyParameters];
      *buf = 138412546;
      v23 = storeIdentifier;
      v24 = 2112;
      v25 = buyParameters;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: Skipping because there is ongoing purchase request for storeIdentifier=%@, buyParameters=%@", buf, 0x16u);
    }

    v17 = objc_retainBlock(completionCopy);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0, 0);
    }
  }
}

- (void)_purchaseWithRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion
{
  requestCopy = request;
  proxyCopy = proxy;
  completionCopy = completion;
  v11 = +[NSXPCConnection currentConnection];
  objc_opt_class();
  v12 = [v11 valueForEntitlement:@"com.apple.application-identifier"];
  v13 = BUDynamicCast();

  if ([requestCopy isRestore])
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
  if ([requestCopy isAudiobook])
  {
    (v16[2])(v16, requestCopy, 0, 0, proxyCopy, completionCopy);
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B5C70;
    v17[3] = &unk_10011EA88;
    objc_copyWeak(&v24, buf);
    v18 = requestCopy;
    selfCopy = self;
    v22 = completionCopy;
    v23 = v16;
    v20 = proxyCopy;
    v21 = v13;
    [(BLPurchaseManager *)self p_downloadIDForRequest:v18 completion:v17];

    objc_destroyWeak(&v24);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

- (void)downloadWithPermlink:(id)permlink title:(id)title completion:(id)completion
{
  permlinkCopy = permlink;
  titleCopy = title;
  completionCopy = completion;
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
  absoluteString = [permlinkCopy absoluteString];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B650C;
  v20[3] = &unk_10011EB00;
  v16 = completionCopy;
  v24 = v16;
  v20[4] = self;
  v17 = permlinkCopy;
  v21 = v17;
  v18 = v13;
  v22 = v18;
  objc_copyWeak(&v25, buf);
  v19 = titleCopy;
  v23 = v19;
  [(BLPurchaseManager *)self p_downloadIDForPermlink:absoluteString completion:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (void)_requestDownloadWithDownloadMetadata:(id)metadata isRestore:(BOOL)restore completion:(id)completion
{
  restoreCopy = restore;
  metadataCopy = metadata;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  objc_opt_class();
  v11 = [v10 valueForEntitlement:@"com.apple.application-identifier"];
  v12 = BUDynamicCast();

  v13 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (restoreCopy)
    {
      v14 = @"YES";
    }

    *buf = 138412290;
    v33 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: starting requestDownloadWithMetadata:isRestore:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  redownloadActionParameters = [metadataCopy redownloadActionParameters];
  v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [metadataCopy itemIdentifier]);
  v17 = [BLPurchaseRequest requestWithBuyParameters:redownloadActionParameters storeIdentifier:v16];
  [v17 setRestore:restoreCopy];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B6C58;
  v23[3] = &unk_10011EB50;
  objc_copyWeak(&v30, buf);
  v18 = metadataCopy;
  v24 = v18;
  selfCopy = self;
  v19 = completionCopy;
  v29 = v19;
  v20 = v12;
  v26 = v20;
  v31 = restoreCopy;
  v21 = redownloadActionParameters;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  [(BLPurchaseManager *)self p_downloadIDForRequest:v17 completion:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)requestDownloadWithMetadata:(id)metadata isRestore:(BOOL)restore completion:(id)completion
{
  restoreCopy = restore;
  completionCopy = completion;
  metadataCopy = metadata;
  v10 = [BLDownloadMetadata alloc];
  v11 = [metadataCopy copy];

  v12 = [v10 initWithDictionary:v11];
  [(BLPurchaseManager *)self _requestDownloadWithDownloadMetadata:v12 isRestore:restoreCopy completion:completionCopy];
}

- (void)_requestDownloadsWithStoreDownloadItems:(id)items isRestore:(BOOL)restore completion:(id)completion
{
  restoreCopy = restore;
  itemsCopy = items;
  completionCopy = completion;
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
  obj = itemsCopy;
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
        [(BLPurchaseManager *)self _requestDownloadWithDownloadMetadata:v13 isRestore:restoreCopy completion:v20];

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
  v18 = completionCopy;
  v19 = v30;
  v14 = completionCopy;
  dispatch_group_notify(v9, &_dispatch_main_q, block);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)requestDownloadsWithRestoreContentRequestItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = [itemsCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ContentRestore] Request restores for %lu item(s)", buf, 0xCu);
  }

  v9 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = itemsCopy;
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

  [(BLPurchaseManager *)self _requestDownloadsWithRestoreDownloadItems:v9 completion:completionCopy];
}

- (void)_requestDownloadsWithRestoreDownloadItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
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
  if ([itemsCopy count])
  {
    v14 = [BLRestoreDownloadsOperation alloc];
    restoreAuthenticationQueue = [(BLPurchaseManager *)self restoreAuthenticationQueue];
    v16 = [(BLRestoreDownloadsOperation *)v14 initWithRestoreDownloadItems:itemsCopy authenticationQueue:restoreAuthenticationQueue responseItemBlock:v13];

    [(BLRestoreDownloadsOperation *)v16 start];
    error = [(BLOperation *)v16 error];

    if (error)
    {
      v18 = BLServiceLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        error2 = [(BLOperation *)v16 error];
        *buf = 138412290;
        v48 = error2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[ContentRestore] Operation encountered error:  %@", buf, 0xCu);
      }
    }

    error3 = [(BLOperation *)v16 error];
    v21 = error3;
    if (!error3)
    {
      v21 = v41[5];
    }

    v22 = v21;

    dispatchQueue = [(BLPurchaseManager *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B8604;
    block[3] = &unk_10011DAB0;
    v29 = itemsCopy;
    v30 = v10;
    v31 = v22;
    v32 = v12;
    v33 = completionCopy;
    v24 = v22;
    dispatch_group_notify(v11, dispatchQueue, block);
  }

  else
  {
    v25 = BLServiceLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[ContentRestore] Restore request items array is empty", buf, 2u);
    }

    v26 = objc_retainBlock(completionCopy);
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

- (void)requestDownloadsWithManifestRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion
{
  requestCopy = request;
  proxyCopy = proxy;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_1000B8B60;
  v24[4] = sub_1000B8B8C;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B8B94;
  v22[3] = &unk_10011D530;
  completionCopy = completion;
  v23 = completionCopy;
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
  v13 = [(BLLoadExternalDownloadManifestOperation *)v12 initWithRequest:requestCopy uiHostProxy:proxyCopy downloadBlock:v11, v15, v16, v17, v18];
  storeRequestOperationQueue = [(BLPurchaseManager *)self storeRequestOperationQueue];
  [storeRequestOperationQueue addOperation:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);
}

- (id)_distinctDownloadsArrayForDownloads:(id)downloads
{
  downloadsCopy = downloads;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = downloadsCopy;
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

  allValues = [v4 allValues];
  [v5 addObjectsFromArray:allValues];

  return v5;
}

- (void)_updateNetworkPolicyForQueueDownloads:(id)downloads suppressDialogs:(BOOL)dialogs
{
  dialogsCopy = dialogs;
  downloadsCopy = downloads;
  v7 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating download policy for automatic downloads", buf, 2u);
  }

  v27 = downloadsCopy;
  [(BLPurchaseManager *)self _distinctDownloadsArrayForDownloads:downloadsCopy];
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
    v29 = dialogsCopy;
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
        firstObject = [v12 firstObject];
        transactionIdentifier = [firstObject transactionIdentifier];

        v32 = [&v9[60] copyEvaluatorDownloadForDownloadMetadataArray:v12 logKey:transactionIdentifier];
        v15 = [objc_alloc(&v10[10]) initWithDownload:v32];
        [v15 setSuppressDialogs:dialogsCopy];
        [v15 start];
        error = [v15 error];

        v34 = v15;
        if (error)
        {
          v17 = BLServiceDownloadPipelineLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            error2 = [v15 error];
            *buf = 138543618;
            v45 = transactionIdentifier;
            v46 = 2112;
            v47 = error2;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: [%{public}@] Cellular evaluation for automatic download failed due to  %@", buf, 0x16u);
          }
        }

        else
        {
          cellularResult = [v15 cellularResult];
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
                  v45 = transactionIdentifier;
                  v46 = 2048;
                  v47 = cellularResult;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: [%{public}@] Set cellular evaluation result for automatic download to %ld", buf, 0x16u);
                }

                v26 = [NSNumber numberWithInteger:cellularResult];
                [v24 bl_setDownloadPolicyCellularResult:v26];
              }

              v21 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v21);
            dialogsCopy = v29;
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

- (void)processAutomaticDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
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
    downloads = [v6 downloads];
    array = [downloads array];

    v9 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      downloads2 = [v6 downloads];
      *buf = 138412290;
      v15 = downloads2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Downloads found in automatic download queue: %@", buf, 0xCu);
    }

    [(BLPurchaseManager *)self _updateNetworkPolicyForQueueDownloads:array suppressDialogs:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B94CC;
    v12[3] = &unk_10011D530;
    v13 = completionCopy;
    [(BLPurchaseManager *)self _requestDownloadsWithStoreDownloadItems:array isRestore:0 completion:v12];
    error = v13;
    goto LABEL_9;
  }

  array = objc_retainBlock(completionCopy);
  if (array)
  {
    error = [v6 error];
    (array)[2](array, &__NSArray0__struct, error);
LABEL_9:
  }
}

- (void)reloadFromServerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking download queues at client request", v9, 2u);
  }

  _newQueueRequests = [(BLPurchaseManager *)self _newQueueRequests];
  if ([_newQueueRequests count])
  {
    [(BLPurchaseManager *)self _addQueueOperationsForRequests:_newQueueRequests reason:@"other"];
  }

  v7 = objc_retainBlock(completionCopy);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)_checkStoreDownloadQueuesForPurchaseWithStoreIdentifier:(id)identifier suppressNetworkEvaluatorDialogs:(BOOL)dialogs
{
  v5 = [(BLPurchaseManager *)self _newQueueRequestsForPurchaseStoreIdentifier:identifier suppressNetworkEvaluatorDialogs:dialogs];
  if ([v5 count])
  {
    [(BLPurchaseManager *)self _addQueueOperationsForRequests:v5 reason:@"trigger-download"];
  }
}

- (id)_newQueueRequestsForPurchaseStoreIdentifier:(id)identifier suppressNetworkEvaluatorDialogs:(BOOL)dialogs
{
  dialogsCopy = dialogs;
  identifierCopy = identifier;
  v6 = objc_alloc_init(NSMutableSet);
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v8 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];

  if (ams_DSID)
  {
    v11 = [v7 objectForKeyedSubscript:ams_DSID];
    if (!v11)
    {
      v11 = objc_alloc_init(NSMutableSet);
      [v7 setObject:v11 forKeyedSubscript:ams_DSID];
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
                [(BLStoreDownloadQueueRequest *)v21 setPurchaseStoreIdentifier:identifierCopy];
                [(BLStoreDownloadQueueRequest *)v21 setPurchaseSuppressNetworkEvaluatorDialogs:dialogsCopy];
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

- (void)_addQueueOperationsForRequests:(id)requests reason:(id)reason
{
  requestsCopy = requests;
  reasonCopy = reason;
  v8 = [reasonCopy isEqualToString:@"trigger-download"];
  v9 = BLServiceLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 134218242;
      v36 = [requestsCopy count];
      v37 = 2112;
      v38 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Load Queue: Loading %lu queues with reason: %@", buf, 0x16u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = requestsCopy;
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
          storeRequestOperationQueue = [(BLPurchaseManager *)self storeRequestOperationQueue];
          [storeRequestOperationQueue addOperation:v16];
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
      v36 = [requestsCopy count];
      v37 = 2112;
      v38 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Load Queue: Checking %lu queues with reason: %@", buf, 0x16u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = requestsCopy;
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
          storeRequestOperationQueue2 = [(BLPurchaseManager *)self storeRequestOperationQueue];
          [storeRequestOperationQueue2 addOperation:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }
  }
}

- (id)_newCheckQueueOperationForQueueRequest:(id)request
{
  requestCopy = request;
  v5 = [[BLCheckDownloadQueueOperation alloc] initWithDownloadQueueRequest:requestCopy];
  objc_initWeak(&location, v5);
  objc_initWeak(&from, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B9D54;
  v8[3] = &unk_10011EC18;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  v6 = requestCopy;
  v9 = v6;
  [(BLCheckDownloadQueueOperation *)v5 setCompletionBlock:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_newLoadQueueOperationForQueueRequest:(id)request
{
  requestCopy = request;
  v5 = +[BUBag defaultBag];
  queueContentsURLBagKey = [requestCopy queueContentsURLBagKey];
  v7 = [v5 URLForKey:queueContentsURLBagKey];

  accountIdentifier = [requestCopy accountIdentifier];
  v9 = [ACAccount bu_storeAccountWithDSID:accountIdentifier];

  v10 = [[BLLoadStoreDownloadQueueOperation alloc] initWithBagURL:v7 account:v9];
  objc_initWeak(&location, v10);
  objc_initWeak(&from, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B9FAC;
  v13[3] = &unk_10011EC18;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  v11 = requestCopy;
  v14 = v11;
  [(BLLoadStoreDownloadQueueOperation *)v10 setCompletionBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v10;
}

- (void)dq_performDownloadWithPermlink:(id)permlink title:(id)title clientIdentifier:(id)identifier downloadID:(id)d completion:(id)completion
{
  permlinkCopy = permlink;
  titleCopy = title;
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  databaseManager = [(BLPurchaseManager *)self databaseManager];
  if (permlinkCopy && [dCopy length])
  {
    v16 = [BLDownloadManager downloadDirectoryForDownloadID:dCopy];
    path = [v16 path];

    v49 = [path stringByAppendingPathComponent:@"asset"];
    pathExtension = [permlinkCopy pathExtension];
    if ([pathExtension length])
    {
      v17 = [v49 stringByAppendingPathExtension:pathExtension];

      v49 = v17;
    }

    v18 = +[NSFileManager defaultManager];
    v74 = 0;
    v19 = [v18 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v74];
    v20 = v74;

    if (v19)
    {
      v21 = [BLDownloadMetadata alloc];
      v78 = @"metadata";
      v22 = objc_opt_new();
      v79 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v24 = [v21 initWithDictionary:v23];

      [v24 setSortTitle:titleCopy];
      [v24 setTitle:titleCopy];
      absoluteString = [permlinkCopy absoluteString];
      [v24 setDownloadPermalink:absoluteString];

      [v24 setSample:0];
      artistName = [v24 artistName];
      title = [v24 title];
      title2 = [v24 title];
      genre = [v24 genre];
      kind = [v24 kind];
      thumbnailImageURL = [v24 thumbnailImageURL];
      absoluteString2 = [thumbnailImageURL absoluteString];

      v28 = [(BLPurchaseManager *)self dq_writeMetadata:v24 clientIdentifier:identifierCopy downloadID:dCopy];
      transactionCoordinator = [(BLPurchaseManager *)self transactionCoordinator];
      [transactionCoordinator willStartTransactionWithIdentifier:dCopy];

      objc_initWeak(location, self);
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1000BAB94;
      v64[3] = &unk_10011EC80;
      v39 = v28;
      v65 = v39;
      v66 = v49;
      v67 = pathExtension;
      v37 = artistName;
      v68 = v37;
      v38 = title;
      v69 = v38;
      v44 = title2;
      v70 = v44;
      v46 = genre;
      v71 = v46;
      v30 = kind;
      v72 = v30;
      v31 = absoluteString2;
      v73 = v31;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000BACE0;
      v59[3] = &unk_10011ECD0;
      objc_copyWeak(&v63, location);
      v60 = dCopy;
      v61 = permlinkCopy;
      v62 = completionCopy;
      [databaseManager updateDownloadWithID:v60 updateBlock:v64 completion:v59];

      objc_destroyWeak(&v63);
      objc_destroyWeak(location);
    }

    else
    {
      v36 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *location = 138543618;
        *&location[4] = dCopy;
        v76 = 2112;
        v77 = v20;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to create target path for download, moving download failed. Error:  %@", location, 0x16u);
      }

      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000BAF3C;
      v55[3] = &unk_10011E858;
      v58 = completionCopy;
      v56 = dCopy;
      v57 = v20;
      [databaseManager saveDownloadStateWithId:v56 state:6 completion:v55];

      v24 = v58;
    }
  }

  else
  {
    v32 = [dCopy length] == 0;
    v33 = BLServicePurchaseManagerLog();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        *location = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Unknown download.", location, 2u);
      }

      v20 = objc_retainBlock(completionCopy);
      if (v20)
      {
        v35 = sub_1000A8F44(23, 0, 0);
        (*(v20 + 2))(v20, dCopy, v35);
      }
    }

    else
    {
      if (v34)
      {
        *location = 138543362;
        *&location[4] = dCopy;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: No permlink available to download", location, 0xCu);
      }

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000BAF98;
      v52[3] = &unk_10011ECF8;
      v54 = completionCopy;
      v53 = dCopy;
      [databaseManager saveDownloadStateWithId:v53 state:6 completion:v52];

      v20 = v54;
    }
  }
}

- (void)dq_performPurchaseWithRequest:(id)request downloadID:(id)d uiHostProxy:(id)proxy completion:(id)completion
{
  requestCopy = request;
  dCopy = d;
  proxyCopy = proxy;
  completionCopy = completion;
  selfCopy = self;
  dispatchQueue = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v15 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(__CFString *)dCopy length];
    v17 = @"<Audiobook>";
    if (v16)
    {
      v17 = dCopy;
    }

    *buf = 138543362;
    v182 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Processing purchase request on dispatchQueue", buf, 0xCu);
  }

  databaseManager = [(BLPurchaseManager *)self databaseManager];
  v19 = [BLDownloadManager downloadDirectoryForDownloadID:dCopy];
  path = [v19 path];

  if (![(__CFString *)dCopy length])
  {
    v143 = path;
    v147 = completionCopy;
    v23 = 0;
    goto LABEL_9;
  }

  v21 = +[NSFileManager defaultManager];
  v180 = 0;
  v22 = [v21 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v180];
  v23 = v180;

  if (v22)
  {
    v143 = path;
    v147 = completionCopy;
LABEL_9:
    buyParameters = [requestCopy buyParameters];
    v141 = [NSURL bu_dictionaryForQueryString:buyParameters unescapedValues:0];
    v25 = [v141 mutableCopy];
    [v25 setObject:@"true" forKeyedSubscript:@"wasWarnedOverLimitBuyOnCellular"];
    v140 = v25;
    v26 = [v25 copy];
    v27 = [NSURL bu_queryStringForDictionary:v26 escapedValues:1];

    v139 = v27;
    v28 = [[AMSBuyParams alloc] initWithString:v27];
    accountIdentifier = [requestCopy accountIdentifier];
    v30 = +[BUAccountsProvider sharedProvider];
    activeStoreAccount = [v30 activeStoreAccount];

    v146 = activeStoreAccount;
    ams_DSID = [activeStoreAccount ams_DSID];
    v33 = ams_DSID;
    if (accountIdentifier && ams_DSID && ([ams_DSID isEqualToNumber:accountIdentifier] & 1) == 0)
    {
      accountIdentifier2 = [requestCopy accountIdentifier];
      [v28 setParameter:accountIdentifier2 forKey:AMSBuyParamPropertyOwnerDsid];
    }

    v136 = v33;
    v35 = [[AMSPurchase alloc] initWithPurchaseType:0 buyParams:v28];
    [v35 setUserInitiated:{objc_msgSend(requestCopy, "isUserInitiated")}];
    [v35 setCallerBundleId:@"com.apple.iBooks"];
    [v35 setClientId:@"com.apple.iBooks"];
    [v35 setOwnerAccountId:accountIdentifier];
    [v35 setAccount:v146];
    logUUID = [requestCopy logUUID];
    [v35 setLogUUID:logUUID];

    v149 = v35;
    [v35 setRequiresAccount:1];
    v37 = BLServicePurchaseManagerLog();
    v137 = accountIdentifier;
    v38 = proxyCopy;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      presentingSceneIdentifier = [requestCopy presentingSceneIdentifier];
      *buf = 138543618;
      v182 = dCopy;
      v183 = 2112;
      v184 = presentingSceneIdentifier;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: presentingSceneIdentifier: %@", buf, 0x16u);
    }

    presentingSceneIdentifier2 = [requestCopy presentingSceneIdentifier];
    [v35 setPresentingSceneIdentifier:presentingSceneIdentifier2];

    if (proxyCopy)
    {
      purchaseUIHelper = [(BLPurchaseManager *)selfCopy purchaseUIHelper];
      [purchaseUIHelper setUiHostProxy:proxyCopy];
    }

    v42 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v182 = dCopy;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: About to enqueue AMS purchase request", buf, 0xCu);
    }

    purchaseQueue = [(BLPurchaseManager *)selfCopy purchaseQueue];
    v188 = v35;
    v44 = [NSArray arrayWithObjects:&v188 count:1];
    v45 = [purchaseQueue enquePurchases:v44];

    v179 = 0;
    v135 = v45;
    v46 = [v45 resultWithError:&v179];
    v145 = v179;
    v47 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v182 = dCopy;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: AMS purchase promise fulfilled.", buf, 0xCu);
    }

    firstObject = [v46 firstObject];
    if (dCopy)
    {
      [databaseManager syncTouchDownloadWithId:dCopy];
    }

    if (firstObject)
    {
      v48 = [[BLPurchaseResponse alloc] initWithAMSPurchaseResult:firstObject];
      error = [firstObject error];
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
      error = v145;
    }

    v53 = error;
LABEL_31:
    v134 = v46;
    [v48 item];
    v55 = v54 = v48;

    v142 = v23;
    v138 = v28;
    if (v55)
    {
      v56 = [BLDownloadMetadata alloc];
      item = [v54 item];
      v58 = [v56 initWithDictionary:item];

      LODWORD(item) = [v58 bl_isPurchaseRedownload];
      v59 = item ^ 1;
    }

    else
    {
      v59 = 1;
    }

    v60 = objc_opt_new();
    storeID = [v54 storeID];
    [v60 setObject:storeID forKeyedSubscript:BLDownloadQueuePropertyStoreItemIdentifier];

    downloadID = [v54 downloadID];
    [v60 setObject:downloadID forKeyedSubscript:BLDownloadQueuePropertyDownloadIdentifier];

    purchaseParameters = [v54 purchaseParameters];
    [v60 setObject:purchaseParameters forKeyedSubscript:BLDownloadQueuePropertyPurchaseParameters];

    currency = [v54 currency];
    [v60 setObject:currency forKeyedSubscript:BLDownloadQueuePropertyPurchaseCurrency];

    price = [v54 price];
    [v60 setObject:price forKeyedSubscript:BLDownloadQueuePropertyPurchasePrice];

    userInfo = [v53 userInfo];
    v67 = [userInfo description];
    [v60 setObject:v67 forKeyedSubscript:BLDownloadQueuePropertyPurchaseErrorInfo];

    v68 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v53 code]);
    [v60 setObject:v68 forKeyedSubscript:BLDownloadQueuePropertyPurchaseErrorCode];

    domain = [v53 domain];
    [v60 setObject:domain forKeyedSubscript:BLDownloadQueuePropertyPurchaseErrorDomain];

    localizedDescription = [v53 localizedDescription];
    [v60 setObject:localizedDescription forKeyedSubscript:BLDownloadQueuePropertyPurchaseErrorDescription];

    v154 = v54;
    logUUID2 = [v54 logUUID];
    [v60 setObject:logUUID2 forKeyedSubscript:BLDownloadQueuePropertyPurchaseLogUUID];

    v72 = [NSNumber numberWithInt:v59];
    [v60 setObject:v72 forKeyedSubscript:BLDownloadQueuePropertyIsPurchase];

    v73 = BLServiceDownloadPipelineLog();
    v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
    if (v53)
    {
      v75 = firstObject;
      if (v74)
      {
        *buf = 138543362;
        v182 = dCopy;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Posting BLDownloadQueuePurchaseFailedNotification.", buf, 0xCu);
      }

      progressSender = [(BLPurchaseManager *)selfCopy progressSender];
      [progressSender sendPurchaseFailedWithUserInfo:v60];
    }

    else
    {
      v75 = firstObject;
      if (v74)
      {
        *buf = 138543362;
        v182 = dCopy;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Posting BLDownloadQueuePurchaseSucceededNotification.", buf, 0xCu);
      }

      progressSender = [(BLPurchaseManager *)selfCopy progressSender];
      [progressSender sendPurchaseSucceededWithUserInfo:v60];
    }

    responseDictionary = [v75 responseDictionary];

    v150 = dCopy;
    v133 = v60;
    if (responseDictionary)
    {
      v78 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v182 = dCopy;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: AMS purchase response is non-empty", buf, 0xCu);
      }

      responseDictionary2 = [v75 responseDictionary];
      v132 = [responseDictionary2 objectForKeyedSubscript:@"trigger-download"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v132 BOOLValue])
      {
        v79 = BLServicePurchaseManagerLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v182 = dCopy;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Got trigger-download in purchase response", buf, 0xCu);
        }

        [(BLPurchaseManager *)selfCopy _handleTriggerDownloadforRequest:requestCopy withDownloadID:dCopy];
      }

      v129 = databaseManager;
      storeIdentifiersToDownload = [requestCopy storeIdentifiersToDownload];
      purchaseResponseItems = [v54 purchaseResponseItems];
      v130 = v38;
      v131 = requestCopy;
      v128 = v53;
      if ([purchaseResponseItems count])
      {
        v82 = [BLEvaluatorDownload copyEvaluatorDownloadForPurchaseResponse:v54 storeIdentifiersToDownload:storeIdentifiersToDownload];
        v153 = [[BLReviewNetworkPolicyOperation alloc] initWithDownload:v82];
        if ([requestCopy shouldSuppressNetworkEvaluatorDialogs])
        {
          v83 = 1;
        }

        else
        {
          v83 = [requestCopy isUserInitiated] ^ 1;
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
      obj = purchaseResponseItems;
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
            item2 = [v102 item];
            metadata = [v102 metadata];
            v105 = [metadata objectForKeyedSubscript:@"itemId"];
            v106 = BLGetNSNumberFromValue();

            if (storeIdentifiersToDownload && ([storeIdentifiersToDownload containsObject:v106] & 1) == 0)
            {
              v111 = [[BLDownloadMetadata alloc] initWithDictionary:item2];
              v112 = [(BLPurchaseManager *)selfCopy _accountIdentifierFromDownloadMetadata:v111];
              stringValue = [v106 stringValue];
              transactionIdentifier = [v111 transactionIdentifier];
              v115 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v182 = stringValue;
                _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Skipping download", buf, 0xCu);
              }

              v173[0] = _NSConcreteStackBlock;
              v173[1] = 3221225472;
              v173[2] = sub_1000BC568;
              v173[3] = &unk_10011E080;
              v174 = stringValue;
              v116 = stringValue;
              [BLServerDownloadDoneRequest notifyDownloadDoneWithAccountID:v112 downloadID:v116 storeID:v106 transactionID:transactionIdentifier completion:v173];
              dispatch_group_leave(v100);
            }

            else
            {
              error2 = [(BLOperation *)v153 error];

              if (error2)
              {
                v108 = BLServiceDownloadPipelineLog();
                if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                {
                  logUUID3 = [v154 logUUID];
                  error3 = [(BLOperation *)v153 error];
                  *buf = 138543874;
                  v182 = v150;
                  v183 = 2114;
                  v184 = logUUID3;
                  v185 = 2112;
                  v186 = error3;
                  _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "(dID=%{public}@) {logUUID=%{public}@} [Purchase-Mgr]: Cellular evaluation for download failed due to  %@", buf, 0x20u);
                }
              }

              else
              {
                cellularResult = [(BLReviewNetworkPolicyOperation *)v153 cellularResult];
                v118 = BLServiceDownloadPipelineLog();
                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  logUUID4 = [v154 logUUID];
                  *buf = 138543874;
                  v182 = v150;
                  v183 = 2114;
                  v184 = logUUID4;
                  v185 = 2048;
                  v186 = cellularResult;
                  _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) {logUUID=%{public}@} [Purchase-Mgr]: Set cellular evaluation result for download to %ld", buf, 0x20u);
                }

                v108 = [item2 mutableCopy];
                v120 = [NSNumber numberWithInteger:cellularResult];
                [BLDownloadMetadata bl_setDownloadPolicyCellularResult:v120 toDictionary:v108];

                v121 = [v108 copy];
                item2 = v121;
              }

              objc_opt_class();
              metadata2 = [v102 metadata];
              v123 = [metadata2 objectForKeyedSubscript:@"kind"];
              v111 = BUDynamicCast();

              v112 = BLDownloadSupportedDownloadKinds();
              if ([v112 containsObject:v111])
              {
                v169[0] = _NSConcreteStackBlock;
                v169[1] = 3221225472;
                v169[2] = sub_1000BC638;
                v169[3] = &unk_10011ED20;
                v169[4] = selfCopy;
                v169[5] = v102;
                v170 = v154;
                v111 = v111;
                v171 = v111;
                v172 = v100;
                [(BLPurchaseManager *)selfCopy requestDownloadWithMetadata:item2 isRestore:0 completion:v169];
              }

              else
              {
                v124 = BLServiceDownloadPipelineLog();
                if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                {
                  logUUID5 = [v154 logUUID];
                  *buf = 138543874;
                  v182 = v150;
                  v183 = 2114;
                  v184 = logUUID5;
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

      dispatchQueue2 = [(BLPurchaseManager *)selfCopy dispatchQueue];
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
      dispatch_group_notify(v100, dispatchQueue2, block);

      proxyCopy = v130;
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
      userInfo2 = [v53 userInfo];
      v85 = [userInfo2 objectForKeyedSubscript:AMSErrorUserInfoKeyServerPayload];
      v86 = [v85 objectForKeyedSubscript:@"trigger-download"];

      responseDictionary2 = v86;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v86 BOOLValue])
      {
        v87 = BLServicePurchaseManagerLog();
        v89 = v140;
        v88 = v141;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v182 = dCopy;
          v183 = 2112;
          v184 = v53;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Got trigger-download in error of purchase response, error:  %@", buf, 0x16u);
        }

        v90 = v53;

        v91 = dCopy;
        v92 = requestCopy;
        [(BLPurchaseManager *)selfCopy _handleTriggerDownloadforRequest:requestCopy withDownloadID:v91];
      }

      else
      {
        v93 = BLServicePurchaseManagerLog();
        v89 = v140;
        v88 = v141;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v182 = dCopy;
          v183 = 2112;
          v184 = v53;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: AMS purchase response is empty, error:  %@", buf, 0x16u);
        }

        v92 = requestCopy;
        v90 = v53;
      }

      v94 = databaseManager;
      proxyCopy = v38;
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
    completionCopy = v147;
    v51 = v142;
    path = v143;
    databaseManager = v94;
    requestCopy = v92;
    dCopy = v150;
    goto LABEL_95;
  }

  v50 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v182 = dCopy;
    v183 = 2112;
    v184 = v23;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to create target path for download, moving download to failed. Error:  %@", buf, 0x16u);
  }

  v157[0] = _NSConcreteStackBlock;
  v157[1] = 3221225472;
  v157[2] = sub_1000BC930;
  v157[3] = &unk_10011ED70;
  v158 = requestCopy;
  v159 = dCopy;
  v160 = selfCopy;
  v162 = completionCopy;
  v51 = v23;
  v161 = v51;
  [databaseManager saveDownloadStateWithId:v159 state:6 completion:v157];

  v52 = v158;
LABEL_95:
}

- (void)_handleTriggerDownloadforRequest:(id)request withDownloadID:(id)d
{
  requestCopy = request;
  dCopy = d;
  storeIdentifier = [requestCopy storeIdentifier];
  if ([requestCopy shouldSuppressNetworkEvaluatorDialogs])
  {
    v9 = 1;
  }

  else
  {
    v9 = [requestCopy isUserInitiated] ^ 1;
  }

  [(BLPurchaseManager *)self _checkStoreDownloadQueuesForPurchaseWithStoreIdentifier:storeIdentifier suppressNetworkEvaluatorDialogs:v9];

  v10 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Handling for trigger-download completed", &v11, 0xCu);
  }
}

- (void)dq_performDownloadDownloadMetadata:(id)metadata downloadID:(id)d clientIdentifier:(id)identifier isRestoreItem:(BOOL)item
{
  metadataCopy = metadata;
  dCopy = d;
  identifierCopy = identifier;
  dispatchQueue = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v13 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v174 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Preparing the download asset on dispatchQueue based on the downloadsMetadata.", buf, 0xCu);
  }

  v14 = [BLDownloadManager downloadDirectoryForDownloadID:dCopy];
  path = [v14 path];

  v119 = [path stringByAppendingPathComponent:@"asset"];
  fileExtension = [metadataCopy fileExtension];
  if ([fileExtension length])
  {
    v15 = [v119 stringByAppendingPathExtension:fileExtension];

    v119 = v15;
  }

  databaseManager = [(BLPurchaseManager *)self databaseManager];
  v16 = +[NSFileManager defaultManager];
  v170 = 0;
  v17 = [v16 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v170];
  v114 = v170;

  if (v17)
  {
    bl_assetFileSize = [metadataCopy bl_assetFileSize];
    primaryAssetURL = [metadataCopy primaryAssetURL];
    sinfs = [metadataCopy sinfs];
    epubRightsData = [metadataCopy epubRightsData];
    objc_opt_class();
    firstObject = [sinfs firstObject];
    v104 = BUDynamicCast();

    objc_opt_class();
    v19 = [v104 objectForKeyedSubscript:@"dpInfo"];
    v98 = BUDynamicCast();

    v169 = 0;
    v105 = [NSPropertyListSerialization dataWithPropertyList:sinfs format:200 options:0 error:&v169];
    v70 = v169;
    if (sinfs && !v105)
    {
      v20 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v174 = dCopy;
        v175 = 2112;
        v176 = v70;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Error serializing sinfInfo:  %@", buf, 0x16u);
      }
    }

    fullSizeImageURL = [metadataCopy fullSizeImageURL];
    publicationVersion = [metadataCopy publicationVersion];
    v93 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isAutomaticDownload]);
    if (item)
    {
      v109 = &__kCFBooleanTrue;
    }

    else
    {
      v109 = [metadataCopy valueForFirstAvailableKey:{BLSSDownloadPropertyIsRestore, 0}];
    }

    downloadKey = [metadataCopy downloadKey];
    v94 = [metadataCopy valueForFirstAvailableKey:{BLDownloadMetadataKeyIsZipStreamable, 0}];
    v92 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [metadataCopy itemIdentifier]);
    artistName = [metadataCopy artistName];
    title = [metadataCopy title];
    title2 = [metadataCopy title];
    collectionArtistName = [metadataCopy collectionArtistName];
    collectionName = [metadataCopy collectionName];
    genre = [metadataCopy genre];
    kind = [metadataCopy kind];
    thumbnailImageURL = [metadataCopy thumbnailImageURL];
    absoluteString = [thumbnailImageURL absoluteString];

    v84 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isSample]);
    v83 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [metadataCopy bl_isPurchaseRedownload] ^ 1);
    purchaseDate = [metadataCopy purchaseDate];
    transactionIdentifier = [metadataCopy transactionIdentifier];
    cancelDownloadURL = [metadataCopy cancelDownloadURL];
    absoluteString2 = [cancelDownloadURL absoluteString];

    v103 = [metadataCopy valueForMetadataKey:BLDownloadMetadataKeyAdditionalInfo];
    objc_opt_class();
    v24 = [metadataCopy valueForMetadataKey:@"local-server-info"];
    v79 = BUDynamicCast();

    v108 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [metadataCopy collectionIdentifier]);
    racGUID = [metadataCopy racGUID];
    v77 = [metadataCopy valueForMetadataKey:@"encryptionKey"];
    v76 = [metadataCopy valueForMetadataKey:@"salt"];
    if (v103)
    {
      v75 = [v103 objectForKey:BLDownloadMetadataKeyRequestPersistentID];
    }

    else
    {
      v75 = 0;
    }

    bl_downloadPolicyCellularResult = [metadataCopy bl_downloadPolicyCellularResult];
    v102 = bl_downloadPolicyCellularResult;
    if (bl_downloadPolicyCellularResult)
    {
      integerValue = [bl_downloadPolicyCellularResult integerValue];
      v27 = BLServiceDownloadPipelineLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v174 = dCopy;
        v175 = 2048;
        v176 = integerValue;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Cellular evaluation result for download was %ld", buf, 0x16u);
      }

      v100 = [BLDownloadPolicy policyInfoWithCellularResult:integerValue];
    }

    else
    {
      v100 = 0;
    }

    downloadPolicyManager = [(BLPurchaseManager *)self downloadPolicyManager];
    [downloadPolicyManager addOrUpdateDownloadPolicyWithInfo:v100 withPolicyID:dCopy storePlaylistIdentifier:v108];
    bOOLValue = [v109 BOOLValue];
    v29 = BLServicePurchaseManagerLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (bOOLValue)
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

    v111 = [(BLPurchaseManager *)self _accountIdentifierFromDownloadMetadata:metadataCopy];
    bl_purchaserAccountIdentifier = [metadataCopy bl_purchaserAccountIdentifier];
    v33 = [BLDownloadKindAudiobook isEqualToString:kind];
    v106 = 0;
    if (v111)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    if (v34 != 1 || !bl_purchaserAccountIdentifier)
    {
      goto LABEL_59;
    }

    if ([v111 isEqualToNumber:bl_purchaserAccountIdentifier])
    {
      v106 = 0;
LABEL_59:
      if (bl_assetFileSize)
      {
        v49 = bl_assetFileSize;
      }

      v50 = [metadataCopy valueForFirstAvailableKey:{BLDownloadMetadataKeyHashChunks, 0}];
      objc_opt_class();
      v51 = BUDynamicCast();
      if (v51)
      {
        v74 = [v50 objectForKey:BLDownloadMetadataKeyHashChunkHashes];
        objc_opt_class();
        v52 = [v51 objectForKeyedSubscript:BLDownloadMetadataKeyHashChunkSize];
        v53 = BUDynamicCast();

        v54 = v53;
        v55 = bl_assetFileSize;
        v72 = v54;
      }

      else
      {
        objc_opt_class();
        v56 = [metadataCopy valueForFirstAvailableKey:{BLDownloadMetadataKeyMD5, 0}];
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

        v72 = bl_assetFileSize;
      }

      if (primaryAssetURL && [dCopy length])
      {
        transactionCoordinator = [(BLPurchaseManager *)self transactionCoordinator];
        [transactionCoordinator willStartTransactionWithIdentifier:dCopy];

        v69 = [BLAssetContainerFactory assetContainerForDownloadKind:kind isPermlink:0];
        [v69 purchasedAssetWithMetadata:metadataCopy familyAccountID:v106];
        v58 = [(BLPurchaseManager *)self dq_writeMetadata:metadataCopy clientIdentifier:identifierCopy downloadID:dCopy];
        kind2 = [metadataCopy kind];
        v60 = [(BLPurchaseManager *)self dq_writeSinf:epubRightsData downloadID:dCopy downloadKind:kind2];

        v61 = [(BLPurchaseManager *)self dq_writeArtworkWithURL:fullSizeImageURL downloadID:dCopy];
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
        v131 = fileExtension;
        v132 = publicationVersion;
        v133 = v93;
        v63 = primaryAssetURL;
        v134 = v63;
        v135 = v109;
        v136 = v84;
        v137 = v83;
        v138 = v79;
        v139 = purchaseDate;
        v140 = downloadKey;
        v141 = bl_assetFileSize;
        v142 = v111;
        v143 = v106;
        v144 = v92;
        v145 = v75;
        v146 = transactionIdentifier;
        v147 = absoluteString2;
        v148 = v94;
        v149 = v74;
        v150 = v72;
        v151 = v54;
        v152 = artistName;
        v153 = title;
        v154 = title2;
        v155 = collectionArtistName;
        v156 = collectionName;
        v157 = genre;
        v158 = kind;
        v159 = absoluteString;
        v160 = v108;
        v161 = racGUID;
        v162 = v77;
        v163 = v76;
        v120[0] = _NSConcreteStackBlock;
        v120[1] = 3221225472;
        v120[2] = sub_1000BE264;
        v120[3] = &unk_10011DEA8;
        objc_copyWeak(&v123, buf);
        v121 = dCopy;
        v122 = v63;
        [databaseManager updateDownloadWithID:v121 updateBlock:v124 completion:v120];

        objc_destroyWeak(&v123);
        objc_destroyWeak(buf);
      }

      else if ([dCopy length])
      {
        v64 = BLServicePurchaseManagerLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v174 = dCopy;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: No url available to download", buf, 0xCu);
        }

        [databaseManager saveDownloadStateWithId:dCopy state:6 completion:0];
      }

      goto LABEL_75;
    }

    v35 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v174 = dCopy;
      v175 = 2112;
      v176 = bl_purchaserAccountIdentifier;
      v177 = 2112;
      v178 = v111;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: purchaserAccountID (%@) different from accountID (%@), retrieving family info to verify whether purchaser is a family member", buf, 0x20u);
    }

    v36 = [AMSFamilyInfoLookupTask alloc];
    v37 = +[BUAccountsProvider sharedProvider];
    activeStoreAccount = [v37 activeStoreAccount];
    v39 = +[BUBag defaultBag];
    v73 = [v36 initWithAccount:activeStoreAccount bag:v39];

    performFamilyInfoLookup = [v73 performFamilyInfoLookup];
    v168 = 0;
    v68 = [performFamilyInfoLookup resultWithTimeout:&v168 error:15.0];
    v66 = v168;
    if (v66)
    {
      familyMembers = BLServicePurchaseManagerLog();
      if (!os_log_type_enabled(familyMembers, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *buf = 138543618;
      v174 = dCopy;
      v175 = 2112;
      v176 = bl_purchaserAccountIdentifier;
      v41 = "(dID=%{public}@) [Purchase-Mgr]: failed to retrieve family information to identify purchaserID (%@)";
    }

    else
    {
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      familyMembers = [v68 familyMembers];
      v42 = [familyMembers countByEnumeratingWithState:&v164 objects:v172 count:16];
      if (v42)
      {
        v43 = *v165;
        while (2)
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v165 != v43)
            {
              objc_enumerationMutation(familyMembers);
            }

            v45 = *(*(&v164 + 1) + 8 * i);
            iTunesDSID = [v45 iTunesDSID];
            if ([iTunesDSID isEqualToNumber:bl_purchaserAccountIdentifier])
            {
              v106 = iTunesDSID;
              v47 = BLServicePurchaseManagerLog();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                iTunesUsername = [v45 iTunesUsername];
                *buf = 138543874;
                v174 = dCopy;
                v175 = 2112;
                v176 = bl_purchaserAccountIdentifier;
                v177 = 2112;
                v178 = iTunesUsername;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Verified purchaserAccountID (%@) belongs to a family member (%@)", buf, 0x20u);
              }

              goto LABEL_58;
            }
          }

          v42 = [familyMembers countByEnumeratingWithState:&v164 objects:v172 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      familyMembers = BLServicePurchaseManagerLog();
      if (!os_log_type_enabled(familyMembers, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *buf = 138543618;
      v174 = dCopy;
      v175 = 2112;
      v176 = bl_purchaserAccountIdentifier;
      v41 = "(dID=%{public}@) [Purchase-Mgr]: purchaserAccountID (%@) does not belong to a family member; ignoring";
    }

    _os_log_impl(&_mh_execute_header, familyMembers, OS_LOG_TYPE_DEFAULT, v41, buf, 0x16u);
LABEL_44:
    v106 = 0;
LABEL_58:

    goto LABEL_59;
  }

  v21 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v174 = dCopy;
    v175 = 2112;
    v176 = v114;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to create target path for download, moving it to failed. Error:  %@", buf, 0x16u);
  }

  [databaseManager saveDownloadStateWithId:dCopy state:6 completion:0];
LABEL_75:
}

- (void)dq_triggerDownloadForDownloadID:(id)d urlToAsset:(id)asset
{
  assetCopy = asset;
  dCopy = d;
  dispatchQueue = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(BLPurchaseManager *)self delegate];
  v15[0] = @"downloadID";
  v15[1] = @"url";
  v16[0] = dCopy;
  absoluteString = [assetCopy absoluteString];
  v16[1] = absoluteString;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BE5A8;
  v13[3] = &unk_10011EDC0;
  v14 = assetCopy;
  v12 = assetCopy;
  [delegate purchaseManager:self requestDownloadWithParameters:v11 completion:v13];
}

- (void)dq_triggerRestartDownloadForDownloadID:(id)d
{
  dCopy = d;
  dispatchQueue = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(BLPurchaseManager *)self delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BE840;
  v8[3] = &unk_10011D4B8;
  v9 = dCopy;
  v7 = dCopy;
  [delegate purchaseManager:self restartDownloadWithID:v7 withCompletion:v8];
}

- (id)dq_writeMetadata:(id)metadata clientIdentifier:(id)identifier downloadID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  metadataCopy = metadata;
  dispatchQueue = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v12 = [[BLITunesMetadataHelper alloc] initWithClientIdentifier:identifierCopy downloadMetadata:metadataCopy];
  v17 = 0;
  v13 = [(BLITunesMetadataHelper *)v12 writePlistWithDownloadID:dCopy error:&v17];
  v14 = v17;
  if (![v13 length])
  {
    v15 = BLBookInstallLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = dCopy;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to write iTunesMetadata.plist for download. Error:  %@", buf, 0x16u);
    }
  }

  return v13;
}

- (id)dq_writeSinf:(id)sinf downloadID:(id)d downloadKind:(id)kind
{
  sinfCopy = sinf;
  dCopy = d;
  kindCopy = kind;
  dispatchQueue = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  LODWORD(dispatchQueue) = [kindCopy isEqualToString:BLDownloadKindPDF];
  if (dispatchQueue)
  {
    v12 = BLBookInstallLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Skip writing sinf.xml for PDF download.", buf, 0xCu);
    }

    path = 0;
  }

  else
  {
    v17 = 0;
    v14 = [BLSinfHelper writeSinfForDownloadID:dCopy epubRightsData:sinfCopy error:&v17];
    v12 = v17;
    if (!v14)
    {
      v15 = BLBookInstallLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v19 = dCopy;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to write sinf.xml for download.  Error: %@", buf, 0x16u);
      }
    }

    path = [v14 path];
  }

  return path;
}

- (id)dq_writeArtworkWithURL:(id)l downloadID:(id)d
{
  dCopy = d;
  lCopy = l;
  dispatchQueue = [(BLPurchaseManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v13 = 0;
  v9 = [BLArtworkHelper writeArtworkDownloadID:dCopy artworkURL:lCopy error:&v13];

  v10 = v13;
  if (![v9 length])
  {
    v11 = BLBookInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = dCopy;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to write iTunesArtwork for download.  Error:  %@", buf, 0x16u);
    }
  }

  return v9;
}

- (void)p_downloadIDForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  objc_initWeak(&location, self);
  buyParameters = [requestCopy buyParameters];
  storeIdentifier = [requestCopy storeIdentifier];
  longLongValue = [storeIdentifier longLongValue];

  if (longLongValue < 1)
  {
    if (![buyParameters length])
    {
      goto LABEL_7;
    }

    storeIdentifier2 = [BLUtilities storeIDFromBuyParameters:buyParameters];
  }

  else
  {
    storeIdentifier2 = [requestCopy storeIdentifier];
  }

  v12 = storeIdentifier2;
  if (storeIdentifier2)
  {
    v13 = [NSPredicate predicateWithFormat:@"%K = %@", @"storeIdentifier", storeIdentifier2];
    goto LABEL_10;
  }

LABEL_7:
  if ([buyParameters length])
  {
    v13 = [NSPredicate predicateWithFormat:@"%K CONTAINS %@", @"buyParameters", buyParameters];
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

LABEL_10:
  if ([requestCopy isRestore])
  {
    v14 = objc_retainBlock(completionCopy);
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
    v15 = objc_retainBlock(completionCopy);
    if (v15)
    {
      v17 = sub_1000A8F44(0, 0, @"We have neither a storeID nor purchase parameters for this request");
      (*(v15 + 2))(v15, 0, 0, 0, v17);
    }

    goto LABEL_17;
  }

  databaseManager = [(BLPurchaseManager *)self databaseManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000BF088;
  v18[3] = &unk_10011EE10;
  objc_copyWeak(&v20, &location);
  v19 = completionCopy;
  [databaseManager fetchModifiableDownloadsMatchingPredicate:v13 results:v18 completion:0];

  objc_destroyWeak(&v20);
LABEL_18:

  objc_destroyWeak(&location);
}

- (void)p_downloadIDForPermlink:(id)permlink completion:(id)completion
{
  permlinkCopy = permlink;
  completionCopy = completion;
  if ([permlinkCopy length])
  {
    objc_initWeak(&location, self);
    permlinkCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"permlink", permlinkCopy];
    databaseManager = [(BLPurchaseManager *)self databaseManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BF698;
    v12[3] = &unk_10011EE10;
    objc_copyWeak(&v14, &location);
    v13 = completionCopy;
    [databaseManager fetchDownloadListWithPredicate:permlinkCopy completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    if (v10)
    {
      v11 = sub_1000A8F44(13, 0, @"Missing buy parameters.");
      v10[2](v10, 0, v11);
    }
  }
}

- (id)_accountIdentifierFromDownloadMetadata:(id)metadata
{
  metadataCopy = metadata;
  downloaderAccountIdentifier = [metadataCopy downloaderAccountIdentifier];
  if (downloaderAccountIdentifier || ([metadataCopy valueForFirstAvailableKey:{BLSSDownloadPropertyStoreAccountIdentifier, 0}], (downloaderAccountIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ams_DSID = downloaderAccountIdentifier;
  }

  else
  {
    v7 = +[BUAccountsProvider sharedProvider];
    activeStoreAccount = [v7 activeStoreAccount];
    ams_DSID = [activeStoreAccount ams_DSID];
  }

  return ams_DSID;
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