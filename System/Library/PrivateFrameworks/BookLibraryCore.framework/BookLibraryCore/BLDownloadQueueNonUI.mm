@interface BLDownloadQueueNonUI
+ (id)innerSharedInstance;
+ (void)cancelAllActiveDownloads;
+ (void)overrideSharedInstance:(id)a3;
+ (void)prepareForRemoveApp;
- (BLDownloadQueueNonUI)init;
- (BLDownloadQueueServerProgressObserver)serverProgressObserver;
- (BLServiceProxy)serviceProxy;
- (NSArray)downloads;
- (id)_dateFromObject:(id)a3;
- (id)_numberFromObject:(id)a3;
- (id)_stringFromObject:(id)a3;
- (void)_cancelAllPausedDownloads;
- (void)_purchaseWithRequest:(id)a3 uiHostProxy:(id)a4 completion:(id)a5;
- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4;
- (void)addDownloadWithMetadata:(id)a3 completion:(id)a4;
- (void)addDownloadWithPermlink:(id)a3 title:(id)a4 completion:(id)a5;
- (void)addDownloadWithPurchaseParameters:(id)a3 completion:(id)a4;
- (void)addDownloadWithPurchaseParameters:(id)a3 storeID:(id)a4 completion:(id)a5;
- (void)addDownloadsWithManifestRequest:(id)a3 completion:(id)a4;
- (void)addDownloadsWithMetadata:(id)a3 completion:(id)a4;
- (void)addDownloadsWithRestoreContentRequestItems:(id)a3 completion:(id)a4;
- (void)addObserver:(id)a3;
- (void)addRestoreDownloadWithMetadata:(id)a3 completion:(id)a4;
- (void)addRestoreDownloadsWithMetadata:(id)a3 completion:(id)a4;
- (void)cancelDownloadWithID:(id)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)pauseDownloadWithID:(id)a3 withCompletion:(id)a4;
- (void)processAutomaticDownloadsWithReply:(id)a3;
- (void)purchaseWithBuyParameters:(id)a3 storeID:(id)a4 completion:(id)a5;
- (void)purchaseWithRequest:(id)a3 completion:(id)a4;
- (void)reloadFromServerWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)restartDownloadWithID:(id)a3 withCompletion:(id)a4;
- (void)resumeDownloadWithID:(id)a3 withCompletion:(id)a4;
@end

@implementation BLDownloadQueueNonUI

- (BLDownloadQueueNonUI)init
{
  v5.receiver = self;
  v5.super_class = BLDownloadQueueNonUI;
  v2 = [(BLDownloadQueueNonUI *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CF32F0] sharedProvider];
    [v3 addObserver:v2 accountTypes:1];
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
  v2 = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  v3 = [v2 downloads];

  return v3;
}

+ (void)overrideSharedInstance:(id)a3
{
  v5 = a3;
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

  objc_storeStrong(&qword_280BC58C8, a3);
  v7 = [a1 innerSharedInstance];

  if (v7 != v5)
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
  v3 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v3 shutdown];

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self];

  v5 = [MEMORY[0x277CF32F0] sharedProvider];
  [v5 removeObserver:self accountTypes:1];

  v6.receiver = self;
  v6.super_class = BLDownloadQueueNonUI;
  [(BLDownloadQueueNonUI *)&v6 dealloc];
}

- (BLServiceProxy)serviceProxy
{
  v2 = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  v3 = [v2 serviceProxy];

  return v3;
}

- (void)_cancelAllPausedDownloads
{
  v2 = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [v2 cancelAllPausedDownloads];
}

- (void)purchaseWithBuyParameters:(id)a3 storeID:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 numberWithLongLong:{objc_msgSend(a4, "longLongValue")}];
  v12 = [BLPurchaseRequest requestWithBuyParameters:v10 storeIdentifier:v11];

  [(BLDownloadQueueNonUI *)self purchaseWithRequest:v12 completion:v9];
}

- (void)_purchaseWithRequest:(id)a3 uiHostProxy:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  os_activity_apply(v12, v16);
}

- (void)purchaseWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(BLUIHostServiceNonUI);
  [(BLDownloadQueueNonUI *)self _purchaseWithRequest:v7 uiHostProxy:v8 completion:v6];
}

- (void)addDownloadWithPurchaseParameters:(id)a3 storeID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadWithPurchaseParameters", buf, 2u);
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [v9 longLongValue];

  v14 = [v12 numberWithLongLong:v13];
  v15 = [BLPurchaseRequest requestWithBuyParameters:v10 storeIdentifier:v14];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241D746CC;
  v17[3] = &unk_278D18BA8;
  v18 = v8;
  v16 = v8;
  [(BLDownloadQueueNonUI *)self purchaseWithRequest:v15 completion:v17];
}

- (void)addDownloadWithPermlink:(id)a3 title:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadWithPermlink", buf, 2u);
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &unk_2853E2B48;
  }

  v13 = MEMORY[0x245CFF560](v12);

  v14 = +[BLLibrary defaultBookLibrary];
  v28 = 0;
  v15 = [v14 _bookItemFromPermlink:v8 error:&v28];
  v16 = v28;

  if (!v15)
  {
    v21 = [(BLDownloadQueueNonUI *)self serviceProxy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_241D749E0;
    v24[3] = &unk_278D18BF0;
    v27 = v13;
    v24[4] = self;
    v25 = v8;
    v26 = v9;
    [v21 downloadWithPermlink:v25 title:v26 reply:v24];

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
      v20 = [v15 permlink];
      *buf = 138412546;
      v30 = v20;
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

- (void)addDownloadWithMetadata:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadWithMetadata", v9, 2u);
  }

  [(BLDownloadQueueNonUI *)self _addDownloadWithMetadata:v7 isRestore:0 completion:v6];
}

- (void)addRestoreDownloadWithMetadata:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addRestoreDownloadWithMetadata", v9, 2u);
  }

  [(BLDownloadQueueNonUI *)self _addDownloadWithMetadata:v7 isRestore:1 completion:v6];
}

- (void)pauseDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: pauseDownloadWithID", v12, 2u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &unk_2853E2B68;
  }

  v10 = MEMORY[0x245CFF560](v9);

  v11 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v11 pauseDownloadWithID:v7 withReply:v10];
}

- (void)resumeDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: resumeDownloadWithID", buf, 2u);
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_2853E2B88;
  }

  v10 = MEMORY[0x245CFF560](v9);

  v11 = [(BLDownloadQueueNonUI *)self serviceProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D750F8;
  v14[3] = &unk_278D18C40;
  v15 = v6;
  v16 = v10;
  v14[4] = self;
  v12 = v6;
  v13 = v10;
  [v11 resumeDownloadWithID:v12 withReply:v14];
}

- (void)cancelDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: cancelDownloadWithID", v13, 2u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &unk_2853E2BA8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  v11 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v11 cancelDownloadWithID:v7 withReply:v10];

  v12 = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [v12 notifyDidCompleteForDownloadID:v7];
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

- (void)addDownloadsWithMetadata:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadsWithMetadata:", v12, 2u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &unk_2853E2BC8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  v11 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v11 requestDownloadsWithMetadata:v7 areRestore:0 reply:v10];
}

- (void)addRestoreDownloadsWithMetadata:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addRestoreDownloadsWithMetadata:", v12, 2u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &unk_2853E2BE8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  v11 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v11 requestDownloadsWithMetadata:v7 areRestore:1 reply:v10];
}

- (void)addDownloadsWithRestoreContentRequestItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadsWithRestoreContentRequestItems:", v12, 2u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &unk_2853E2C08;
  }

  v10 = MEMORY[0x245CFF560](v9);

  v11 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v11 requestDownloadsWithRestoreContentRequestItems:v7 reply:v10];
}

- (void)addDownloadsWithManifestRequest:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadsWithManifestRequest:completion: for manifestRequest: %@", buf, 0xCu);
  }

  v9 = _os_activity_create(&dword_241D1F000, "addDownloadsWithManifestRequest:completion:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D75F58;
  block[3] = &unk_278D18CA8;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  os_activity_apply(v9, block);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [v5 registerObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [v5 unregisterObserver:v4];
}

- (void)addDownloadWithPurchaseParameters:(id)a3 completion:(id)a4
{
  v4 = BLDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "This method is not implemented. Please file a radar.", v5, 2u);
  }
}

- (void)processAutomaticDownloadsWithReply:(id)a3
{
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: processAutomaticDownloadsWithReply", v9, 2u);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_2853E2C48;
  }

  v7 = MEMORY[0x245CFF560](v6);

  v8 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v8 processAutomaticDownloadsWithReply:v7];
}

- (void)restartDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: restartDownloadWithID", v12, 2u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &unk_2853E2C68;
  }

  v10 = MEMORY[0x245CFF560](v9);

  v11 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v11 restartDownloadWithID:v7 withReply:v10];
}

- (void)reloadFromServerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Request reload server download queue", v9, 2u);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_2853E2C88;
  }

  v7 = MEMORY[0x245CFF560](v6);

  v8 = [(BLDownloadQueueNonUI *)self serviceProxy];
  [v8 reloadFromServerWithReply:v7];
}

- (id)_stringFromObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = BUDynamicCast();
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v5 = BUDynamicCast();
      v4 = [v5 stringValue];

      goto LABEL_10;
    }

    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to neither an NSString nor an NSNumber", &v10, 0x16u);
    }
  }

  v4 = 0;
LABEL_10:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_numberFromObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
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
      v10 = v3;
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

- (id)_dateFromObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
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
      v10 = v3;
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

- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4
{
  if (a4 - 101 <= 1)
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