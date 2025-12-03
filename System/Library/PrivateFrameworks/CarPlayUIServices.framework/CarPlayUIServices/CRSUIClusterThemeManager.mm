@interface CRSUIClusterThemeManager
- (CRSUIClusterThemeManager)init;
- (CRSUIClusterThemeManagerDelegate)delegate;
- (CRSUIWallpaperDataProvidingDelegate)dataProviderDelegate;
- (NSArray)displays;
- (NSSecurityScopedURLWrapper)extraAssetsURL;
- (id)defaultWallpapers;
- (id)dynamicAppearanceWallpapersForVehicle:(id)vehicle;
- (id)loadWallpaperFromData:(id)data;
- (id)resolveWallpaper:(id)wallpaper;
- (id)wallpapers;
- (void)_getURLForAssetWithIdentifier:(id)identifier displayID:(id)d completion:(id)completion;
- (void)_handleConnectionActivated;
- (void)_processThemeLayoutData:(id)data error:(id)error;
- (void)_setThemeData:(id)data completion:(id)completion;
- (void)getURLForAssetWithIdentifier:(id)identifier displayID:(id)d completion:(id)completion;
- (void)invalidate;
- (void)setThemeData:(id)data completion:(id)completion;
- (void)updateExtraAssetsURL:(id)l;
@end

@implementation CRSUIClusterThemeManager

- (CRSUIClusterThemeManager)init
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = CRSUIClusterThemeManager;
  v2 = [(CRSUIClusterThemeManager *)&v24 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v3->_identifier;
    v3->_identifier = uUID;

    serial = [MEMORY[0x277CF0C18] serial];
    v7 = BSDispatchQueueCreate();
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v7;

    v9 = MEMORY[0x277CF3288];
    v10 = +[CRSUIClusterThemeSpecification identifier];
    uUIDString = [(NSUUID *)v3->_identifier UUIDString];
    v12 = [v9 endpointForMachName:@"com.apple.CarPlayApp.cluster-theme-service" service:v10 instance:uUIDString];

    v13 = [MEMORY[0x277CF3280] connectionWithEndpoint:v12];
    connection = v3->_connection;
    v3->_connection = v13;

    objc_initWeak(&location, v3);
    v15 = v3->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __32__CRSUIClusterThemeManager_init__block_invoke;
    v20[3] = &unk_278DA0B58;
    v21 = v3;
    objc_copyWeak(&v22, &location);
    [(BSServiceConnection *)v15 configureConnection:v20];
    v16 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v3->_connection;
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&dword_243218000, v16, OS_LOG_TYPE_DEFAULT, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v3->_connection activate];
    objc_destroyWeak(&v22);

    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

void __32__CRSUIClusterThemeManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIClusterThemeSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIClusterThemeSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__CRSUIClusterThemeManager_init__block_invoke_2;
  v8[3] = &unk_278DA0B30;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setActivationHandler:v8];
  [v3 setInterruptionHandler:&__block_literal_global_7];
  [v3 setInvalidationHandler:&__block_literal_global_33];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained connectionQueue];
  [v3 setTargetQueue:v7];

  objc_destroyWeak(&v9);
}

void __32__CRSUIClusterThemeManager_init__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Connection activated! %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionActivated];

  v6 = *MEMORY[0x277D85DE8];
}

void __32__CRSUIClusterThemeManager_init__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __32__CRSUIClusterThemeManager_init__block_invoke_30_cold_1();
  }
}

void __32__CRSUIClusterThemeManager_init__block_invoke_31(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __32__CRSUIClusterThemeManager_init__block_invoke_31_cold_1();
  }
}

- (NSArray)displays
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displays;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSecurityScopedURLWrapper)extraAssetsURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_extraAssetsURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setThemeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_connectionActivated && !self->_lock_invalidated)
  {
    [(CRSUIClusterThemeManager *)self _setThemeData:dataCopy completion:completionCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__CRSUIClusterThemeManager_setThemeData_completion___block_invoke;
    block[3] = &unk_278DA0DD0;
    v9 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)getURLForAssetWithIdentifier:(id)identifier displayID:(id)d completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_connectionActivated && !self->_lock_invalidated)
  {
    [(CRSUIClusterThemeManager *)self _getURLForAssetWithIdentifier:identifierCopy displayID:dCopy completion:completionCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__CRSUIClusterThemeManager_getURLForAssetWithIdentifier_displayID_completion___block_invoke;
    block[3] = &unk_278DA0DD0;
    v12 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v3 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      connection = [(CRSUIClusterThemeManager *)self connection];
      v10 = 138412290;
      v11 = connection;
      _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection! %@", &v10, 0xCu);
    }

    connection2 = [(CRSUIClusterThemeManager *)self connection];
    [connection2 invalidate];

    *&self->_lock_connectionActivated = 256;
    assetBaseURL = [(CRSUIClusterThemeManager *)self assetBaseURL];
    v7 = [assetBaseURL url];

    v8 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_243218000, v8, OS_LOG_TYPE_DEFAULT, "Stopping secure access to %{public}@", &v10, 0xCu);
    }

    [v7 stopAccessingSecurityScopedResource];
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateExtraAssetsURL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = lCopy;
    _os_log_impl(&dword_243218000, v6, OS_LOG_TYPE_DEFAULT, "manager extraAssetsURL=%@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_extraAssetsURL, l);
  os_unfair_lock_unlock(&self->_lock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CRSUIClusterThemeManager_updateExtraAssetsURL___block_invoke;
  v9[3] = &unk_278DA0D18;
  v9[4] = self;
  v10 = lCopy;
  v7 = lCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __49__CRSUIClusterThemeManager_updateExtraAssetsURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 clusterThemeManager:*(a1 + 32) didUpdateExtraAssetsURL:*(a1 + 40)];
  }
}

- (void)_handleConnectionActivated
{
  connectionQueue = self->_connectionQueue;
  BSDispatchQueueAssert();
  os_unfair_lock_lock(&self->_lock);
  self->_lock_connectionActivated = 1;
  v4 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Requesting cluster layouts", buf, 2u);
  }

  objc_initWeak(buf, self);
  connection = [(CRSUIClusterThemeManager *)self connection];
  remoteTarget = [connection remoteTarget];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CRSUIClusterThemeManager__handleConnectionActivated__block_invoke;
  v7[3] = &unk_278DA0DF8;
  objc_copyWeak(&v8, buf);
  [remoteTarget getClusterThemeLayoutData:v7];
  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v8);

  objc_destroyWeak(buf);
}

void __54__CRSUIClusterThemeManager__handleConnectionActivated__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processThemeLayoutData:v6 error:v5];
}

- (void)_processThemeLayoutData:(id)data error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  connectionQueue = self->_connectionQueue;
  BSDispatchQueueAssert();
  displays = self->_displays;
  v23 = errorCopy;
  if (dataCopy)
  {
    themeData = [dataCopy themeData];
    displays = [dataCopy displays];
    assetBaseURL = [dataCopy assetBaseURL];
    extraAssetsURL = [dataCopy extraAssetsURL];
    assetVersion = [dataCopy assetVersion];
    v15 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v29 = [displays count];
      _os_log_impl(&dword_243218000, v15, OS_LOG_TYPE_INFO, "Received %d displays", buf, 8u);
    }
  }

  else
  {
    v15 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CRSUIClusterThemeManager _processThemeLayoutData:error:];
    }

    assetVersion = 0;
    extraAssetsURL = 0;
    assetBaseURL = 0;
    themeData = MEMORY[0x277CBEC10];
    displays = MEMORY[0x277CBEBF8];
  }

  os_unfair_lock_lock(&self->_lock);
  themeData = self->_themeData;
  self->_themeData = themeData;
  v17 = themeData;

  objc_storeStrong(&self->_displays, displays);
  assetBaseURL = self->_assetBaseURL;
  self->_assetBaseURL = assetBaseURL;
  v19 = assetBaseURL;

  objc_storeStrong(&self->_extraAssetsURL, extraAssetsURL);
  self->_assetVersion = assetVersion;
  os_unfair_lock_unlock(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CRSUIClusterThemeManager__processThemeLayoutData_error___block_invoke;
  block[3] = &unk_278DA0E20;
  block[4] = self;
  v25 = extraAssetsURL;
  v27 = displays != 0;
  v26 = displays;
  v20 = displays;
  v21 = extraAssetsURL;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v22 = *MEMORY[0x277D85DE8];
}

void __58__CRSUIClusterThemeManager__processThemeLayoutData_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) assetBaseURL];
  v3 = [v2 url];

  v4 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v3;
    _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Starting secure access to %{public}@", &v15, 0xCu);
  }

  [v3 startAccessingSecurityScopedResource];
  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 clusterThemeManagerDidFinishLoading:*(a1 + 32)];
  }

  v8 = [*(a1 + 32) delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [*(a1 + 32) delegate];
    [v10 clusterThemeManager:*(a1 + 32) didUpdateExtraAssetsURL:*(a1 + 40)];
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v11 = [*(a1 + 32) dataProviderDelegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [*(a1 + 32) dataProviderDelegate];
        [v13 dataProviderIsReady:*(a1 + 32)];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setThemeData:(id)data completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = dataCopy;
    _os_log_impl(&dword_243218000, v8, OS_LOG_TYPE_DEFAULT, "Setting theme data: %@", buf, 0xCu);
  }

  v9 = [[_CRSUIClusterThemeData alloc] initWithThemeData:dataCopy];
  connection = [(CRSUIClusterThemeManager *)self connection];
  remoteTarget = [connection remoteTarget];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__CRSUIClusterThemeManager__setThemeData_completion___block_invoke;
  v14[3] = &unk_278DA0E70;
  v15 = completionCopy;
  v12 = completionCopy;
  [remoteTarget setThemeData:v9 reply:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __53__CRSUIClusterThemeManager__setThemeData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CRSUILogForCategory(6uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__CRSUIClusterThemeManager__setThemeData_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243218000, v5, OS_LOG_TYPE_DEFAULT, "Successfully set theme data", buf, 2u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CRSUIClusterThemeManager__setThemeData_completion___block_invoke_44;
  v6[3] = &unk_278DA0E48;
  v7 = *(a1 + 32);
  v8 = v3 == 0;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_getURLForAssetWithIdentifier:(id)identifier displayID:(id)d completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  connection = [(CRSUIClusterThemeManager *)self connection];
  remoteTarget = [connection remoteTarget];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__CRSUIClusterThemeManager__getURLForAssetWithIdentifier_displayID_completion___block_invoke;
  v16[3] = &unk_278DA0EC0;
  v17 = dCopy;
  v18 = identifierCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  v15 = dCopy;
  [remoteTarget getURLForAssetWithIdentifier:v14 displayID:v15 reply:v16];
}

void __79__CRSUIClusterThemeManager__getURLForAssetWithIdentifier_displayID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__CRSUIClusterThemeManager__getURLForAssetWithIdentifier_displayID_completion___block_invoke_cold_1(a1, v6, v7);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__CRSUIClusterThemeManager__getURLForAssetWithIdentifier_displayID_completion___block_invoke_46;
  v10[3] = &unk_278DA0E98;
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

- (id)wallpapers
{
  v48 = *MEMORY[0x277D85DE8];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(CRSUIClusterThemeManager *)self displays];
  v24 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v24)
  {
    v23 = *v42;
    do
    {
      v3 = 0;
      do
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v3;
        v4 = *(*(&v41 + 1) + 8 * v3);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v32 = v4;
        layouts = [v4 layouts];
        v28 = [layouts countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v28)
        {
          v27 = *v38;
          do
          {
            v5 = 0;
            do
            {
              if (*v38 != v27)
              {
                objc_enumerationMutation(layouts);
              }

              v29 = v5;
              v6 = *(*(&v37 + 1) + 8 * v5);
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              wallpapers = [v6 wallpapers];
              v7 = [wallpapers countByEnumeratingWithState:&v33 objects:v45 count:16];
              if (v7)
              {
                v8 = v7;
                v9 = *v34;
                do
                {
                  for (i = 0; i != v8; ++i)
                  {
                    if (*v34 != v9)
                    {
                      objc_enumerationMutation(wallpapers);
                    }

                    v11 = *(*(&v33 + 1) + 8 * i);
                    v12 = [CRSUIAssetWallpaper alloc];
                    identifier = [v11 identifier];
                    identifier2 = [v32 identifier];
                    identifier3 = [v6 identifier];
                    cacheID = [v11 cacheID];
                    traits = [v11 traits];
                    v18 = [(CRSUIAssetWallpaper *)v12 initWithIdentifier:identifier displayID:identifier2 layoutID:identifier3 cacheID:cacheID traits:traits];
                    [v31 addObject:v18];
                  }

                  v8 = [wallpapers countByEnumeratingWithState:&v33 objects:v45 count:16];
                }

                while (v8);
              }

              v5 = v29 + 1;
            }

            while (v29 + 1 != v28);
            v28 = [layouts countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v28);
        }

        v3 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v24);
  }

  v19 = [v31 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)defaultWallpapers
{
  v49 = *MEMORY[0x277D85DE8];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(CRSUIClusterThemeManager *)self displays];
  v25 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v25)
  {
    v24 = *v43;
    do
    {
      v3 = 0;
      do
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v3;
        v4 = *(*(&v42 + 1) + 8 * v3);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v32 = v4;
        layouts = [v4 layouts];
        v29 = [layouts countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v29)
        {
          v28 = *v39;
          do
          {
            v5 = 0;
            do
            {
              if (*v39 != v28)
              {
                objc_enumerationMutation(layouts);
              }

              v30 = v5;
              v6 = *(*(&v38 + 1) + 8 * v5);
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v33 = v6;
              wallpapers = [v6 wallpapers];
              v8 = [wallpapers countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v8)
              {
                v9 = v8;
                v10 = *v35;
                do
                {
                  for (i = 0; i != v9; ++i)
                  {
                    if (*v35 != v10)
                    {
                      objc_enumerationMutation(wallpapers);
                    }

                    v12 = *(*(&v34 + 1) + 8 * i);
                    if ([v12 isDefault])
                    {
                      v13 = [CRSUIAssetWallpaper alloc];
                      identifier = [v12 identifier];
                      identifier2 = [v32 identifier];
                      identifier3 = [v33 identifier];
                      cacheID = [v12 cacheID];
                      traits = [v12 traits];
                      v19 = [(CRSUIAssetWallpaper *)v13 initWithIdentifier:identifier displayID:identifier2 layoutID:identifier3 cacheID:cacheID traits:traits];
                      [v31 addObject:v19];
                    }
                  }

                  v9 = [wallpapers countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v9);
              }

              v5 = v30 + 1;
            }

            while (v30 + 1 != v29);
            v29 = [layouts countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v29);
        }

        v3 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v25);
  }

  v20 = [v31 copy];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)dynamicAppearanceWallpapersForVehicle:(id)vehicle
{
  v40 = *MEMORY[0x277D85DE8];
  displayThemeData = [vehicle displayThemeData];
  if (displayThemeData)
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(CRSUIClusterThemeManager *)self displays];
    v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v32;
      *&v6 = 138412546;
      v26 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * v9);
          identifier = [v10 identifier];
          v12 = [displayThemeData objectForKey:identifier];

          if (v12)
          {
            layouts = [v10 layouts];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __66__CRSUIClusterThemeManager_dynamicAppearanceWallpapersForVehicle___block_invoke;
            v29[3] = &unk_278DA0EE8;
            v30 = v12;
            v14 = [layouts bs_firstObjectPassingTest:v29];

            if (v14)
            {
              wallpapers = [v14 wallpapers];
              v16 = [wallpapers bs_firstObjectPassingTest:&__block_literal_global_53];

              if (v16 || ([v14 wallpapers], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "bs_firstObjectPassingTest:", &__block_literal_global_55), v16 = objc_claimAutoreleasedReturnValue(), v17, v16))
              {
                data = [v16 data];
                v19 = [(CRSUIClusterThemeManager *)self loadWallpaperFromData:data];

                if (v19)
                {
                  [v27 addObject:v19];
                }
              }

              else
              {
                v16 = CRSUILogForCategory(6uLL);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  identifier2 = [v10 identifier];
                  displayName = [v14 displayName];
                  *buf = v26;
                  v36 = identifier2;
                  v37 = 2112;
                  v38 = displayName;
                  _os_log_impl(&dword_243218000, v16, OS_LOG_TYPE_DEFAULT, "No wallpaper supports dynamic appearance for %@:%@", buf, 0x16u);
                }
              }
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v22 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
        v7 = v22;
      }

      while (v22);
    }

    v23 = [v27 copy];
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __66__CRSUIClusterThemeManager_dynamicAppearanceWallpapersForVehicle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) currentLayoutID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __66__CRSUIClusterThemeManager_dynamicAppearanceWallpapersForVehicle___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDefault])
  {
    v3 = [v2 traits];
    v4 = [v3 supportsDynamicAppearance];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __66__CRSUIClusterThemeManager_dynamicAppearanceWallpapersForVehicle___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 traits];
  v3 = [v2 supportsDynamicAppearance];

  return v3;
}

- (id)loadWallpaperFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = dataCopy;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    displays = [(CRSUIClusterThemeManager *)self displays];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __50__CRSUIClusterThemeManager_loadWallpaperFromData___block_invoke;
    v26[3] = &unk_278DA0F30;
    v7 = v5;
    v27 = v7;
    v8 = [displays bs_firstObjectPassingTest:v26];

    if (v8)
    {
      layouts = [v8 layouts];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__CRSUIClusterThemeManager_loadWallpaperFromData___block_invoke_2;
      v24[3] = &unk_278DA0EE8;
      v10 = v7;
      v25 = v10;
      v11 = [layouts bs_firstObjectPassingTest:v24];

      if (v11)
      {
        wallpapers = [v11 wallpapers];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __50__CRSUIClusterThemeManager_loadWallpaperFromData___block_invoke_3;
        v22[3] = &unk_278DA0F58;
        v23 = v10;
        v13 = [wallpapers bs_firstObjectPassingTest:v22];

        if (v13)
        {
          v21 = [CRSUIAssetWallpaper alloc];
          identifier = [v13 identifier];
          identifier2 = [v8 identifier];
          identifier3 = [v11 identifier];
          cacheID = [v13 cacheID];
          traits = [v13 traits];
          v18 = [(CRSUIAssetWallpaper *)v21 initWithIdentifier:identifier displayID:identifier2 layoutID:identifier3 cacheID:cacheID traits:traits];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {

    v7 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(CRSUIClusterThemeManager *)v5 loadWallpaperFromData:v7];
    }

    v18 = 0;
  }

  return v18;
}

uint64_t __50__CRSUIClusterThemeManager_loadWallpaperFromData___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) displayID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __50__CRSUIClusterThemeManager_loadWallpaperFromData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) layoutID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __50__CRSUIClusterThemeManager_loadWallpaperFromData___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) wallpaperID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)resolveWallpaper:(id)wallpaper
{
  v86 = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  objc_opt_class();
  data = [wallpaperCopy data];
  if (data && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = data;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    displays = [(CRSUIClusterThemeManager *)self displays];
    v58 = [displays countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v58)
    {
      v8 = *v80;
      v61 = wallpaperCopy;
      v62 = displays;
      v57 = *v80;
      do
      {
        v9 = 0;
        do
        {
          if (*v80 != v8)
          {
            objc_enumerationMutation(displays);
          }

          v10 = *(*(&v79 + 1) + 8 * v9);
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v59 = v9;
          v60 = v10;
          obj = [v10 layouts];
          v11 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v76;
            v64 = *v76;
            do
            {
              v14 = 0;
              v65 = v12;
              do
              {
                if (*v76 != v13)
                {
                  objc_enumerationMutation(obj);
                }

                v15 = *(*(&v75 + 1) + 8 * v14);
                identifier = [v15 identifier];
                layoutID = [v6 layoutID];
                v18 = [identifier isEqualToString:layoutID];

                if (!v18)
                {
                  goto LABEL_27;
                }

                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                wallpapers = [v15 wallpapers];
                v20 = [wallpapers countByEnumeratingWithState:&v71 objects:v83 count:16];
                if (!v20)
                {
                  goto LABEL_25;
                }

                v21 = v20;
                v22 = *v72;
                while (2)
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v72 != v22)
                    {
                      objc_enumerationMutation(wallpapers);
                    }

                    v24 = *(*(&v71 + 1) + 8 * i);
                    identifier2 = [v24 identifier];
                    wallpaperID = [v6 wallpaperID];
                    v27 = [identifier2 isEqualToString:wallpaperID];

                    if (v27)
                    {
                      v28 = v24;

                      v13 = v64;
                      v12 = v65;
                      if (!v28)
                      {
                        goto LABEL_27;
                      }

                      v29 = v60;
                      if (!v29)
                      {
                        goto LABEL_42;
                      }

                      color = [v28 color];

                      if (color)
                      {
                        v32 = [CRSUIResolvedWallpaper alloc];
                        displays = [v28 color];
                        v33 = v32;
                        wallpaperCopy = v61;
                        v30 = [(CRSUIResolvedWallpaper *)v33 initWithWallpaperInformation:v61 color:displays];
                        goto LABEL_49;
                      }

                      image = [v28 image];

                      if (image)
                      {
                        v35 = [CRSUIResolvedWallpaper alloc];
                        v69[0] = MEMORY[0x277D85DD0];
                        v69[1] = 3221225472;
                        v69[2] = __45__CRSUIClusterThemeManager_resolveWallpaper___block_invoke;
                        v69[3] = &unk_278DA0F80;
                        v28 = v28;
                        v70 = v28;
                        v36 = v35;
                        wallpaperCopy = v61;
                        v30 = [(CRSUIResolvedWallpaper *)v36 initWithWallpaperInformation:v61 imageResolver:v69];
                        displays = v70;
                        goto LABEL_49;
                      }

                      package = [v28 package];

                      if (!package)
                      {
LABEL_42:
                        v30 = 0;
                        wallpaperCopy = v61;
                        goto LABEL_50;
                      }

                      v38 = MEMORY[0x277CD9F28];
                      obja = [v28 package];
                      asset = [obja asset];
                      v40 = [asset url];
                      v40Url = [v40 url];
                      package2 = [v28 package];
                      asset2 = [package2 asset];
                      packageType = [asset2 packageType];
                      v68 = 0;
                      v45 = [v38 packageWithContentsOfURL:v40Url type:packageType options:0 error:&v68];
                      v63 = v68;

                      if (v45)
                      {
                        traits = [v28 traits];
                        supportsDynamicAppearance = [traits supportsDynamicAppearance];

                        v48 = [CRSUIStatefulCAPackage alloc];
                        package3 = [v28 package];
                        v50 = package3;
                        if (supportsDynamicAppearance)
                        {
                          v51 = [package3 stateForInterfaceStyle:1];
                          package4 = [v28 package];
                          v53 = [package4 stateForInterfaceStyle:2];
                          v54 = [(CRSUIStatefulCAPackage *)v48 initWithPackage:v45 lightModeState:v51 darkModeState:v53];
                        }

                        else
                        {
                          v51 = [package3 stateForInterfaceStyle:0];
                          v54 = [(CRSUIStatefulCAPackage *)v48 initWithPackage:v45 state:v51];
                        }

                        v30 = [[CRSUIResolvedWallpaper alloc] initWithWallpaperInformation:v61 statefulPackage:v54];
LABEL_47:
                        displays = v63;
                      }

                      else
                      {
                        v54 = CRSUILogForCategory(6uLL);
                        if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                        {
                          v30 = 0;
                          goto LABEL_47;
                        }

                        displays = v63;
                        [(CRSUIClusterThemeManager *)v28 resolveWallpaper:v63, v54];
                        v30 = 0;
                      }

                      wallpaperCopy = v61;
                      goto LABEL_49;
                    }
                  }

                  v21 = [wallpapers countByEnumeratingWithState:&v71 objects:v83 count:16];
                  if (v21)
                  {
                    continue;
                  }

                  break;
                }

LABEL_25:

                v13 = v64;
                v12 = v65;
LABEL_27:
                ++v14;
              }

              while (v14 != v12);
              v12 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
            }

            while (v12);
          }

          v9 = v59 + 1;
          wallpaperCopy = v61;
          displays = v62;
          v8 = v57;
        }

        while (v59 + 1 != v58);
        v58 = [v62 countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v58);
    }

    v29 = 0;
    v28 = 0;
    v30 = 0;
LABEL_49:

LABEL_50:
  }

  else
  {
    v30 = 0;
  }

  v55 = *MEMORY[0x277D85DE8];

  return v30;
}

id __45__CRSUIClusterThemeManager_resolveWallpaper___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 image];
  v5 = [v3 userInterfaceStyle];

  v6 = [v4 assetForInterfaceStyle:v5];

  v7 = MEMORY[0x277CBEA90];
  v8 = [v6 url];
  v9 = [v8 url];
  v10 = [v7 dataWithContentsOfURL:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277D755B8] imageWithData:v10];
  }

  else
  {
    v12 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __45__CRSUIClusterThemeManager_resolveWallpaper___block_invoke_cold_1(v6, v12);
    }

    v11 = 0;
  }

  return v11;
}

- (CRSUIWallpaperDataProvidingDelegate)dataProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProviderDelegate);

  return WeakRetained;
}

- (CRSUIClusterThemeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __32__CRSUIClusterThemeManager_init__block_invoke_30_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_243218000, v0, v1, "Connection interrupted! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__CRSUIClusterThemeManager_init__block_invoke_31_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_243218000, v0, v1, "Connection invalidated! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_processThemeLayoutData:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_243218000, v0, v1, "Error retrieving cluster layouts: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__CRSUIClusterThemeManager__setThemeData_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_243218000, v0, v1, "Error setting theme data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__CRSUIClusterThemeManager__getURLForAssetWithIdentifier_displayID_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 138412802;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_243218000, log, OS_LOG_TYPE_ERROR, "Error getting url of %@:%@: %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadWallpaperFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_243218000, a2, OS_LOG_TYPE_FAULT, "Unsupported wallpaper type: %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)resolveWallpaper:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 package];
  v6 = [v5 asset];
  v7 = [v6 url];
  v8 = [v7 url];
  OUTLINED_FUNCTION_0_0();
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_243218000, a3, OS_LOG_TYPE_ERROR, "Error loading CAPackage from %@: %@", v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __45__CRSUIClusterThemeManager_resolveWallpaper___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 url];
  v4 = [v3 url];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Error loading image from %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end