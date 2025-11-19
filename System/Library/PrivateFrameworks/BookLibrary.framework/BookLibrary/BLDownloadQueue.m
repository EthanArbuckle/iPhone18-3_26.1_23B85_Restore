@interface BLDownloadQueue
+ (BLDownloadQueue)sharedInstance;
- (void)addDownloadsWithManifestRequest:(id)a3 uiManager:(id)a4 completion:(id)a5;
- (void)purchaseWithRequest:(id)a3 uiManager:(id)a4 completion:(id)a5;
- (void)setAutomaticDownloadEnabled:(BOOL)a3 uiManager:(id)a4 withCompletion:(id)a5;
@end

@implementation BLDownloadQueue

+ (BLDownloadQueue)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D0E208;
  block[3] = &unk_278D15938;
  block[4] = a1;
  if (qword_280C4FA98 != -1)
  {
    dispatch_once(&qword_280C4FA98, block);
  }

  v2 = qword_280C4FA88;

  return v2;
}

- (void)purchaseWithRequest:(id)a3 uiManager:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_presentingSceneIdentifier(v8, v11, v12, v13);

  if (!v14)
  {
    v18 = objc_msgSend_presentingSceneIdentifier(v9, v15, v16, v17);
    objc_msgSend_setPresentingSceneIdentifier_(v8, v19, v18, v20);
  }

  v21 = BLDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_msgSend_storeIdentifier(v8, v22, v23, v24);
    v29 = objc_msgSend_presentingSceneIdentifier(v8, v26, v27, v28);
    v35 = 141558530;
    v36 = 1752392040;
    v37 = 2112;
    v38 = v25;
    v39 = 2112;
    v40 = v29;
    _os_log_impl(&dword_241D0D000, v21, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: purchaseWithRequest:uiManager:completion: for asset %{mask.hash}@ with additional presentingSceneIdentifier: %@", &v35, 0x20u);
  }

  v30 = [BLUIHostServiceProxy alloc];
  v32 = objc_msgSend_initWithUIManager_forRequest_inDownloadQueue_(v30, v31, v9, v8, self);
  objc_msgSend__purchaseWithRequest_uiHostProxy_completion_(self, v33, v8, v32, v10);

  v34 = *MEMORY[0x277D85DE8];
}

- (void)addDownloadsWithManifestRequest:(id)a3 uiManager:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadsWithManifestRequest:uiManager:completion: for manifestRequest: %@", buf, 0xCu);
  }

  v12 = _os_activity_create(&dword_241D0D000, "addDownloadsWithManifestRequest:uiManager:completion:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241D1301C;
  v17[3] = &unk_278D159C8;
  v18 = v9;
  v19 = v8;
  v20 = self;
  v21 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  os_activity_apply(v12, v17);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setAutomaticDownloadEnabled:(BOOL)a3 uiManager:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = BLDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v10, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: setAutomaticDownloadEnabled", buf, 2u);
  }

  v11 = _os_activity_create(&dword_241D0D000, "setAutomaticDownloadEnabled:uiManager:completion:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D13204;
  v14[3] = &unk_278D15A10;
  v16 = self;
  v17 = v9;
  v15 = v8;
  v18 = a3;
  v12 = v8;
  v13 = v9;
  os_activity_apply(v11, v14);
}

@end