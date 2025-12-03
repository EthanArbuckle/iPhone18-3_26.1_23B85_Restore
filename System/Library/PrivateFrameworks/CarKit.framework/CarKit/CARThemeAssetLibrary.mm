@interface CARThemeAssetLibrary
- (CARThemeAssetLibrary)initWithVehicle:(id)vehicle;
- (id)_setupServiceConnection;
- (void)_queue_findCurrentAssetWithCompletion:(id)completion;
- (void)_queue_startObserving;
- (void)_queue_stopObserving;
- (void)addObserver:(id)observer;
- (void)findCurrentAssetWithCompletion:(id)completion;
- (void)invalidate;
- (void)removeObserver:(id)observer;
@end

@implementation CARThemeAssetLibrary

- (CARThemeAssetLibrary)initWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v22.receiver = self;
  v22.super_class = CARThemeAssetLibrary;
  v5 = [(CARThemeAssetLibrary *)&v22 init];
  if (v5)
  {
    identifier = [vehicleCopy identifier];
    vehicleIdentifier = v5->_vehicleIdentifier;
    v5->_vehicleIdentifier = identifier;

    clusterAssetIdentifier = [vehicleCopy clusterAssetIdentifier];
    assetIdentifier = v5->_assetIdentifier;
    v5->_assetIdentifier = clusterAssetIdentifier;

    if (!v5->_assetIdentifier)
    {
      v10 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CARThemeAssetLibrary initWithVehicle:];
      }
    }

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v12 = dispatch_queue_create("com.apple.carkit.theme_asset_library", v11);
    queue = v5->_queue;
    v5->_queue = v12;

    v14 = objc_alloc_init(CARThemeAssetLibraryObserverProxy);
    observerProxy = v5->_observerProxy;
    v5->_observerProxy = v14;

    [(CARThemeAssetLibraryObserverProxy *)v5->_observerProxy setAssetLibrary:v5];
    _setupServiceConnection = [(CARThemeAssetLibrary *)v5 _setupServiceConnection];
    serviceConnection = v5->_serviceConnection;
    v5->_serviceConnection = _setupServiceConnection;

    queue = [(CARThemeAssetLibrary *)v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__CARThemeAssetLibrary_initWithVehicle___block_invoke;
    block[3] = &unk_1E82FBF70;
    v21 = v5;
    dispatch_async(queue, block);
  }

  return v5;
}

- (void)invalidate
{
  queue = [(CARThemeAssetLibrary *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CARThemeAssetLibrary_invalidate__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__CARThemeAssetLibrary_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_stopObserving];
  v2 = [*(a1 + 32) serviceConnection];
  [v2 invalidate];
}

- (id)_setupServiceConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.theme-asset-library" options:4096];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47F3C40];
  [v3 setRemoteObjectInterface:v4];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47F4F88];
  [v3 setExportedInterface:v5];
  observerProxy = [(CARThemeAssetLibrary *)self observerProxy];
  [v3 setExportedObject:observerProxy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CARThemeAssetLibrary__setupServiceConnection__block_invoke;
  v10[3] = &unk_1E82FBF70;
  v10[4] = self;
  [v3 setInterruptionHandler:v10];
  [v3 setInvalidationHandler:&__block_literal_global_7];
  v7 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit theme asset library service", v9, 2u);
  }

  [v3 resume];

  return v3;
}

void __47__CARThemeAssetLibrary__setupServiceConnection__block_invoke(uint64_t a1)
{
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __47__CARThemeAssetLibrary__setupServiceConnection__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CARThemeAssetLibrary__setupServiceConnection__block_invoke_87;
  block[3] = &unk_1E82FBF70;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void __47__CARThemeAssetLibrary__setupServiceConnection__block_invoke_87(uint64_t a1)
{
  v2 = [*(a1 + 32) observerProxy];
  v3 = [v2 observers];
  v4 = [v3 hasObservers];

  if (v4)
  {
    v5 = *(a1 + 32);

    [v5 _queue_startObserving];
  }
}

void __47__CARThemeAssetLibrary__setupServiceConnection__block_invoke_2()
{
  v0 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __47__CARThemeAssetLibrary__setupServiceConnection__block_invoke_2_cold_1();
  }
}

- (void)findCurrentAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(CARThemeAssetLibrary *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CARThemeAssetLibrary_findCurrentAssetWithCompletion___block_invoke;
  v7[3] = &unk_1E82FC270;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(CARThemeAssetLibrary *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CARThemeAssetLibrary_addObserver___block_invoke;
  v7[3] = &unk_1E82FBE38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __36__CARThemeAssetLibrary_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observerProxy];
  v3 = [v2 observers];
  v4 = [v3 hasObservers];

  v5 = [*(a1 + 32) observerProxy];
  v6 = [v5 observers];
  [v6 registerObserver:*(a1 + 40)];

  if ((v4 & 1) == 0)
  {
    v7 = *(a1 + 32);

    [v7 _queue_startObserving];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(CARThemeAssetLibrary *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CARThemeAssetLibrary_removeObserver___block_invoke;
  v7[3] = &unk_1E82FBE38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __39__CARThemeAssetLibrary_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observerProxy];
  v3 = [v2 observers];
  v4 = [v3 hasObservers];

  v5 = [*(a1 + 32) observerProxy];
  v6 = [v5 observers];
  [v6 unregisterObserver:*(a1 + 40)];

  if (v4)
  {
    v7 = *(a1 + 32);

    [v7 _queue_stopObserving];
  }
}

- (void)_queue_findCurrentAssetWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  queue = [(CARThemeAssetLibrary *)self queue];
  dispatch_assert_queue_V2(queue);

  vehicleIdentifier = [(CARThemeAssetLibrary *)self vehicleIdentifier];
  assetIdentifier = [(CARThemeAssetLibrary *)self assetIdentifier];
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = vehicleIdentifier;
    v18 = 2112;
    v19 = assetIdentifier;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "findCurrentAsset vehicleID: %@ assetID: %@", buf, 0x16u);
  }

  if (vehicleIdentifier && assetIdentifier)
  {
    serviceConnection = [(CARThemeAssetLibrary *)self serviceConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke;
    v14[3] = &unk_1E82FC298;
    v14[4] = self;
    v10 = completionCopy;
    v15 = v10;
    v11 = [serviceConnection remoteObjectProxyWithErrorHandler:v14];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke_89;
    v12[3] = &unk_1E82FC2E8;
    v12[4] = self;
    v13 = v10;
    [v11 service_currentAssetsForVehicleIdentifier:vehicleIdentifier reply:v12];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke_2;
  v6[3] = &unk_1E82FC270;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke_2_cold_1();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke_2_90;
  block[3] = &unk_1E82FC2C0;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __62__CARThemeAssetLibrary__queue_findCurrentAssetWithCompletion___block_invoke_2_90(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "_currentAssetForVehicleIdentifier active asset: %{public}@, stagedAsset: %{public}@", &v9, 0x16u);
  }

  v5 = a1[4];
  if (!v5)
  {
    v5 = a1[5];
  }

  v6 = v5;
  v7 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_INFO, "_currentAssetForVehicleIdentifier using asset %@", &v9, 0xCu);
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

- (void)_queue_startObserving
{
  queue = [(CARThemeAssetLibrary *)self queue];
  dispatch_assert_queue_V2(queue);

  serviceConnection = [(CARThemeAssetLibrary *)self serviceConnection];
  v4 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_93];
  [v4 service_startObservingWithReply:&__block_literal_global_96];
}

void __45__CARThemeAssetLibrary__queue_startObserving__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__CARThemeAssetLibrary__queue_startObserving__block_invoke_cold_1();
  }
}

void __45__CARThemeAssetLibrary__queue_startObserving__block_invoke_94()
{
  v0 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C81FC000, v0, OS_LOG_TYPE_DEFAULT, "started observing theme asset library", v1, 2u);
  }
}

- (void)_queue_stopObserving
{
  queue = [(CARThemeAssetLibrary *)self queue];
  dispatch_assert_queue_V2(queue);

  serviceConnection = [(CARThemeAssetLibrary *)self serviceConnection];
  v4 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_98];
  [v4 service_stopObservingWithReply:&__block_literal_global_101];
}

void __44__CARThemeAssetLibrary__queue_stopObserving__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__CARThemeAssetLibrary__queue_startObserving__block_invoke_cold_1();
  }
}

void __44__CARThemeAssetLibrary__queue_stopObserving__block_invoke_99()
{
  v0 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C81FC000, v0, OS_LOG_TYPE_DEFAULT, "stopped observing theme asset library", v1, 2u);
  }
}

@end