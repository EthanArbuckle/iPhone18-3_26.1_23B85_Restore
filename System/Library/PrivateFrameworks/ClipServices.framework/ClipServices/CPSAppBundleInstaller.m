@interface CPSAppBundleInstaller
- (BOOL)stopStallingCurrentInstallation;
- (CPSAppBundleInstaller)initWithBundleIdentifier:(id)a3 extractedBundleURL:(id)a4;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4;
- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4;
- (void)installWithCompletionHandler:(id)a3;
@end

@implementation CPSAppBundleInstaller

- (CPSAppBundleInstaller)initWithBundleIdentifier:(id)a3 extractedBundleURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CPSAppBundleInstaller;
  v9 = [(CPSAppBundleInstaller *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, a3);
    objc_storeStrong(&v10->_extractedBundleURL, a4);
    v11 = v10;
  }

  return v10;
}

- (void)installWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x245D3D5F0](a3, a2);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  v32 = 0;
  extractedBundleURL = self->_extractedBundleURL;
  v31 = 0;
  v7 = [MEMORY[0x277D1C180] placeholderForInstallable:extractedBundleURL client:18 installType:1 metadata:0 error:&v31];
  v8 = v31;
  placeholder = self->_placeholder;
  self->_placeholder = v7;

  if (!v7)
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller installWithCompletionHandler:v10];
    }
  }

  v11 = MEMORY[0x277D1C170];
  v12 = [(IXPlaceholder *)self->_placeholder bundleID];
  bundleIdentifier = v12;
  if (!v12)
  {
    bundleIdentifier = self->_bundleIdentifier;
  }

  v30 = v8;
  v14 = [v11 coordinatorForAppWithBundleID:bundleIdentifier withClientID:18 createIfNotExisting:1 created:&v32 error:&v30];
  v15 = v30;

  installCoordinator = self->_installCoordinator;
  self->_installCoordinator = v14;

  if (!v14)
  {
    v17 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller installWithCompletionHandler:v17];
    }
  }

  [(IXInitiatingAppInstallCoordinator *)self->_installCoordinator setObserver:self];
  v18 = objc_opt_new();
  [v18 setLsInstallType:1];
  v19 = self->_installCoordinator;
  v29 = v15;
  v20 = [(IXInitiatingAppInstallCoordinator *)v19 setInstallOptions:v18 error:&v29];
  v21 = v29;

  if ((v20 & 1) == 0)
  {
    v22 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller installWithCompletionHandler:v22];
    }
  }

  v24 = self->_placeholder;
  v23 = self->_installCoordinator;
  v28 = v21;
  v25 = [(IXInitiatingAppInstallCoordinator *)v23 setPlaceholderPromise:v24 error:&v28];
  v26 = v28;

  if ((v25 & 1) == 0)
  {
    v27 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller installWithCompletionHandler:v27];
    }
  }
}

- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v28 = v5;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_INFO, "Coordinator %{private}@ successfully installed placeholder", buf, 0xCu);
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
    v8 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  v9 = v5;
  v10 = objc_alloc(MEMORY[0x277D1C1A8]);
  v11 = MEMORY[0x277CCACA8];
  v12 = [(IXPlaceholder *)self->_placeholder bundleID];
  v13 = [v11 stringWithFormat:@"App Asset: %@", v12];
  v14 = [v10 initWithName:v13 client:18 transferPath:self->_extractedBundleURL diskSpaceNeeded:0];
  appAssetPromise = self->_appAssetPromise;
  self->_appAssetPromise = v14;

  v16 = self->_appAssetPromise;
  if (!v16)
  {
    v17 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller coordinatorDidInstallPlaceholder:v17 forApplicationRecord:?];
    }

    v16 = self->_appAssetPromise;
  }

  v26 = 0;
  v18 = [v9 setAppAssetPromise:v16 error:&v26];
  v19 = v26;
  if ((v18 & 1) == 0)
  {
    v20 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller coordinatorDidInstallPlaceholder:v20 forApplicationRecord:?];
    }
  }

  if (+[CPSClipURL shouldStallProgress](CPSClipURL, "shouldStallProgress") || +[CPSClipURL usesDemoMetadata])
  {
    [(IXPromisedTransferToPath *)self->_appAssetPromise setPercentComplete:0.5];
  }

  else
  {
    [(IXPromisedTransferToPath *)self->_appAssetPromise setComplete:1];
  }

  v25 = v19;
  v21 = [v9 setInitialODRAssetPromises:MEMORY[0x277CBEBF8] error:&v25];
  v22 = v25;

  if ((v21 & 1) == 0)
  {
    v23 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller coordinatorDidInstallPlaceholder:v23 forApplicationRecord:?];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_INFO, "Coordinator %{private}@ completed successfully", &v8, 0xCu);
  }

  self->_inactive = 1;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v6 = a4;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CPSAppBundleInstaller coordinator:v6 canceledWithReason:v7 client:?];
  }

  self->_inactive = 1;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, v6);
  }
}

- (BOOL)stopStallingCurrentInstallation
{
  appAssetPromise = self->_appAssetPromise;
  if (appAssetPromise)
  {
    [(IXPromisedTransferToPath *)self->_appAssetPromise setPercentComplete:1.0];
    [(IXPromisedTransferToPath *)self->_appAssetPromise setComplete:1];
  }

  else
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_INFO, "Unable to stop stalling installation because there's no app asset promise", v6, 2u);
    }
  }

  return appAssetPromise != 0;
}

- (void)installWithCompletionHandler:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to create IXPlaceholder with error %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)installWithCompletionHandler:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to create IXInitiatingAppInstallCoordinator with error %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)installWithCompletionHandler:(void *)a1 .cold.3(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to set install options with error %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)installWithCompletionHandler:(void *)a1 .cold.4(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to set placeholder promise with error %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)coordinatorDidInstallPlaceholder:(void *)a1 forApplicationRecord:.cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Failed to set app asset promise %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)coordinatorDidInstallPlaceholder:(void *)a1 forApplicationRecord:.cold.3(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Failed to set ODR promises %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(uint64_t)a1 canceledWithReason:(void *)a2 client:.cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IXStringForClientID();
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_2436ED000, v3, OS_LOG_TYPE_ERROR, "Failed for reason %@ client %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end