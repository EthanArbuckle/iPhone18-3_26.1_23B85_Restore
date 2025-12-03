@interface BLDownloadQueueNonUI
+ (id)innerSharedInstance;
+ (void)cancelAllActiveDownloads;
+ (void)overrideSharedInstance:(id)instance;
+ (void)prepareForRemoveApp;
- (BLDownloadQueueNonUI)init;
- (BLDownloadQueueServerProgressObserver)serverProgressObserver;
- (BLServiceProxy)serviceProxy;
- (NSArray)downloads;
- (id)_dateFromObject:(id)object;
- (id)_numberFromObject:(id)object;
- (id)_stringFromObject:(id)object;
- (void)_cancelAllPausedDownloads;
- (void)_purchaseWithRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)addDownloadWithMetadata:(id)metadata completion:(id)completion;
- (void)addDownloadWithPermlink:(id)permlink title:(id)title completion:(id)completion;
- (void)addDownloadWithPurchaseParameters:(id)parameters completion:(id)completion;
- (void)addDownloadWithPurchaseParameters:(id)parameters storeID:(id)d completion:(id)completion;
- (void)addDownloadsWithManifestRequest:(id)request completion:(id)completion;
- (void)addDownloadsWithMetadata:(id)metadata completion:(id)completion;
- (void)addDownloadsWithRestoreContentRequestItems:(id)items completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)addRestoreDownloadWithMetadata:(id)metadata completion:(id)completion;
- (void)addRestoreDownloadsWithMetadata:(id)metadata completion:(id)completion;
- (void)cancelDownloadWithID:(id)d withCompletion:(id)completion;
- (void)dealloc;
- (void)pauseDownloadWithID:(id)d withCompletion:(id)completion;
- (void)processAutomaticDownloadsWithReply:(id)reply;
- (void)purchaseWithBuyParameters:(id)parameters storeID:(id)d completion:(id)completion;
- (void)purchaseWithRequest:(id)request completion:(id)completion;
- (void)reloadFromServerWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)restartDownloadWithID:(id)d withCompletion:(id)completion;
- (void)resumeDownloadWithID:(id)d withCompletion:(id)completion;
@end

@implementation BLDownloadQueueNonUI

- (BLDownloadQueueNonUI)init
{
  v5.receiver = self;
  v5.super_class = BLDownloadQueueNonUI;
  v2 = [(BLDownloadQueueNonUI *)&v5 init];
  if (v2)
  {
    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    [mEMORY[0x277CF32F0] addObserver:v2 accountTypes:1];
  }

  return v2;
}

+ (id)innerSharedInstance
{
  if (qword_280BC5950 != -1)
  {
    sub_241D204AC();
  }

  v3 = qword_280BC5948;

  return v3;
}

- (BLDownloadQueueServerProgressObserver)serverProgressObserver
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D2066C;
  block[3] = &unk_278D173A8;
  block[4] = self;
  if (qword_280BC58B8 != -1)
  {
    dispatch_once(&qword_280BC58B8, block);
  }

  return qword_280BC58C0;
}

- (NSArray)downloads
{
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  downloads = [serverProgressObserver downloads];

  return downloads;
}

+ (void)overrideSharedInstance:(id)instance
{
  instanceCopy = instance;
  if (qword_280BC58C8)
  {
    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "Attempting to set an overrideInstance when one is already set.", buf, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:@"BLDownloadQueueTooManyInstances" format:@"Attempting to set an overrideInstance when one is already set."];
  }

  objc_storeStrong(&qword_280BC58C8, instance);
  innerSharedInstance = [self innerSharedInstance];

  if (innerSharedInstance != instanceCopy)
  {
    v8 = BLDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "You must use the BLDownloadQueue singleton before trying to use the BLDownloadQueueNonUI singleton.", v9, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:@"BLDownloadQueueTooManyInstances" format:@"You must use the BLDownloadQueue singleton before trying to use the BLDownloadQueueNonUI singleton."];
  }
}

- (void)dealloc
{
  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy shutdown];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  [mEMORY[0x277CF32F0] removeObserver:self accountTypes:1];

  v6.receiver = self;
  v6.super_class = BLDownloadQueueNonUI;
  [(BLDownloadQueueNonUI *)&v6 dealloc];
}

- (BLServiceProxy)serviceProxy
{
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  serviceProxy = [serverProgressObserver serviceProxy];

  return serviceProxy;
}

- (void)_cancelAllPausedDownloads
{
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [serverProgressObserver cancelAllPausedDownloads];
}

- (void)purchaseWithBuyParameters:(id)parameters storeID:(id)d completion:(id)completion
{
  v8 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  parametersCopy = parameters;
  v11 = [v8 numberWithLongLong:{objc_msgSend(d, "longLongValue")}];
  v12 = [BLPurchaseRequest requestWithBuyParameters:parametersCopy storeIdentifier:v11];

  [(BLDownloadQueueNonUI *)self purchaseWithRequest:v12 completion:completionCopy];
}

- (void)_purchaseWithRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion
{
  requestCopy = request;
  proxyCopy = proxy;
  completionCopy = completion;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: purchaseWithBuyParameters:uiManager:", buf, 2u);
  }

  v12 = _os_activity_create(&dword_241D1F000, "purchaseWithBuyParameters:uiManager:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D73C40;
  v16[3] = &unk_278D18B80;
  v16[4] = self;
  v17 = requestCopy;
  v18 = proxyCopy;
  v19 = completionCopy;
  v13 = proxyCopy;
  v14 = requestCopy;
  v15 = completionCopy;
  os_activity_apply(v12, v16);
}

- (void)purchaseWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = objc_alloc_init(BLUIHostServiceNonUI);
  [(BLDownloadQueueNonUI *)self _purchaseWithRequest:requestCopy uiHostProxy:v8 completion:completionCopy];
}

- (void)addDownloadWithPurchaseParameters:(id)parameters storeID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  parametersCopy = parameters;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadWithPurchaseParameters", buf, 2u);
  }

  v12 = MEMORY[0x277CCABB0];
  longLongValue = [dCopy longLongValue];

  v14 = [v12 numberWithLongLong:longLongValue];
  v15 = [BLPurchaseRequest requestWithBuyParameters:parametersCopy storeIdentifier:v14];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241D746CC;
  v17[3] = &unk_278D18BA8;
  v18 = completionCopy;
  v16 = completionCopy;
  [(BLDownloadQueueNonUI *)self purchaseWithRequest:v15 completion:v17];
}

- (void)addDownloadWithPermlink:(id)permlink title:(id)title completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  permlinkCopy = permlink;
  titleCopy = title;
  completionCopy = completion;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadWithPermlink", buf, 2u);
  }

  if (completionCopy)
  {
    v12 = completionCopy;
  }

  else
  {
    v12 = &unk_2853E2B48;
  }

  v13 = MEMORY[0x245CFF560](v12);

  v14 = +[BLLibrary defaultBookLibrary];
  v28 = 0;
  v15 = [v14 _bookItemFromPermlink:permlinkCopy error:&v28];
  v16 = v28;

  if (!v15)
  {
    serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_241D749E0;
    v24[3] = &unk_278D18BF0;
    v27 = v13;
    v24[4] = self;
    v25 = permlinkCopy;
    v26 = titleCopy;
    [serviceProxy downloadWithPermlink:v25 title:v26 reply:v24];

    v19 = v27;
LABEL_12:

    goto LABEL_13;
  }

  v17 = +[BLLibrary defaultBookLibrary];
  v23 = v16;
  [v17 _addBookItemToEduContainer:v15 error:&v23];
  v18 = v23;

  if (v18)
  {
    v19 = BLDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      permlink = [v15 permlink];
      *buf = 138412546;
      v30 = permlink;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadWithPermlink: could not add permlink to container %@.  It may already exist. Recevied error:  %@", buf, 0x16u);
    }

    v16 = v18;
    goto LABEL_12;
  }

LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addDownloadWithMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadWithMetadata", v9, 2u);
  }

  [(BLDownloadQueueNonUI *)self _addDownloadWithMetadata:metadataCopy isRestore:0 completion:completionCopy];
}

- (void)addRestoreDownloadWithMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addRestoreDownloadWithMetadata", v9, 2u);
  }

  [(BLDownloadQueueNonUI *)self _addDownloadWithMetadata:metadataCopy isRestore:1 completion:completionCopy];
}

- (void)pauseDownloadWithID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: pauseDownloadWithID", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2B68;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy pauseDownloadWithID:dCopy withReply:v10];
}

- (void)resumeDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: resumeDownloadWithID", buf, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2B88;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D750F8;
  v14[3] = &unk_278D18C40;
  v15 = dCopy;
  v16 = v10;
  v14[4] = self;
  v12 = dCopy;
  v13 = v10;
  [serviceProxy resumeDownloadWithID:v12 withReply:v14];
}

- (void)cancelDownloadWithID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: cancelDownloadWithID", v13, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2BA8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy cancelDownloadWithID:dCopy withReply:v10];

  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [serverProgressObserver notifyDidCompleteForDownloadID:dCopy];
}

+ (void)cancelAllActiveDownloads
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = BLDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Cancelling all active book downloads.", buf, 2u);
  }

  v11 = 0;
  v3 = [[BLServiceProxy alloc] initWithError:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "[DownloadQueue]: Error encountered creating service proxy: %@", buf, 0xCu);
    }
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D7581C;
  v9[3] = &unk_278D18B30;
  v10 = v6;
  v7 = v6;
  [(BLServiceProxy *)v3 cancelAllActiveDownloadsWithReply:v9];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)prepareForRemoveApp
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = BLDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: prepareForRemoveApp", buf, 2u);
  }

  v10 = 0;
  v3 = [[BLServiceProxy alloc] initWithError:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "[DownloadQueue]: Error encountered creating service proxy: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_241D75AB4;
    v8[3] = &unk_278D18B30;
    v9 = v6;
    v5 = v6;
    [(BLServiceProxy *)v3 prepareForRemoveAppWithReply:v8];
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addDownloadsWithMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadsWithMetadata:", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2BC8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy requestDownloadsWithMetadata:metadataCopy areRestore:0 reply:v10];
}

- (void)addRestoreDownloadsWithMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addRestoreDownloadsWithMetadata:", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2BE8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy requestDownloadsWithMetadata:metadataCopy areRestore:1 reply:v10];
}

- (void)addDownloadsWithRestoreContentRequestItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadsWithRestoreContentRequestItems:", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2C08;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy requestDownloadsWithRestoreContentRequestItems:itemsCopy reply:v10];
}

- (void)addDownloadsWithManifestRequest:(id)request completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = requestCopy;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadsWithManifestRequest:completion: for manifestRequest: %@", buf, 0xCu);
  }

  v9 = _os_activity_create(&dword_241D1F000, "addDownloadsWithManifestRequest:completion:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D75F58;
  block[3] = &unk_278D18CA8;
  v14 = requestCopy;
  v15 = completionCopy;
  block[4] = self;
  v10 = requestCopy;
  v11 = completionCopy;
  os_activity_apply(v9, block);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [serverProgressObserver registerObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [serverProgressObserver unregisterObserver:observerCopy];
}

- (void)addDownloadWithPurchaseParameters:(id)parameters completion:(id)completion
{
  v4 = BLDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "This method is not implemented. Please file a radar.", v5, 2u);
  }
}

- (void)processAutomaticDownloadsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: processAutomaticDownloadsWithReply", v9, 2u);
  }

  if (replyCopy)
  {
    v6 = replyCopy;
  }

  else
  {
    v6 = &unk_2853E2C48;
  }

  v7 = MEMORY[0x245CFF560](v6);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy processAutomaticDownloadsWithReply:v7];
}

- (void)restartDownloadWithID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: restartDownloadWithID", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2C68;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy restartDownloadWithID:dCopy withReply:v10];
}

- (void)reloadFromServerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Request reload server download queue", v9, 2u);
  }

  if (completionCopy)
  {
    v6 = completionCopy;
  }

  else
  {
    v6 = &unk_2853E2C88;
  }

  v7 = MEMORY[0x245CFF560](v6);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy reloadFromServerWithReply:v7];
}

- (id)_stringFromObject:(id)object
{
  v14 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      stringValue = BUDynamicCast();
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v5 = BUDynamicCast();
      stringValue = [v5 stringValue];

      goto LABEL_10;
    }

    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = objectCopy;
      v12 = 2112;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to neither an NSString nor an NSNumber", &v10, 0x16u);
    }
  }

  stringValue = 0;
LABEL_10:

  v8 = *MEMORY[0x277D85DE8];

  return stringValue;
}

- (id)_numberFromObject:(id)object
{
  v13 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = BUDynamicCast();
      goto LABEL_8;
    }

    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = objectCopy;
      v11 = 2112;
      v12 = objc_opt_class();
      v6 = v12;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to an NSNumber", &v9, 0x16u);
    }
  }

  v4 = 0;
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_dateFromObject:(id)object
{
  v13 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = BUDynamicCast();
      goto LABEL_8;
    }

    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = objectCopy;
      v11 = 2112;
      v12 = objc_opt_class();
      v6 = v12;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to an NSDate", &v9, 0x16u);
    }
  }

  v4 = 0;
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  if (reason - 101 <= 1)
  {
    v9 = v4;
    v10 = v5;
    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Account Changed.  Cancelling paused downloads", v8, 2u);
    }

    [(BLDownloadQueueNonUI *)self _cancelAllPausedDownloads];
  }
}

@end