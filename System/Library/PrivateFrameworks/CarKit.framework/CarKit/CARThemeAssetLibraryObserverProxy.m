@interface CARThemeAssetLibraryObserverProxy
- (CARThemeAssetLibrary)assetLibrary;
- (CARThemeAssetLibraryObserverProxy)init;
- (void)service_attemptingDownloadForAssetVersion:(id)a3 reply:(id)a4;
- (void)service_completedDownloadForAsset:(id)a3 reply:(id)a4;
- (void)service_didUpdateFromAsset:(id)a3 toAsset:(id)a4 forVehicleIdentifier:(id)a5 reply:(id)a6;
- (void)service_failedDownloadForAssetVersion:(id)a3 error:(id)a4 reply:(id)a5;
- (void)service_foundNoMatchingAssetForVehicleIdentifier:(id)a3 nextRequiredCompatibilityVersion:(id)a4 reply:(id)a5;
@end

@implementation CARThemeAssetLibraryObserverProxy

- (CARThemeAssetLibraryObserverProxy)init
{
  v6.receiver = self;
  v6.super_class = CARThemeAssetLibraryObserverProxy;
  v2 = [(CARThemeAssetLibraryObserverProxy *)&v6 init];
  if (v2)
  {
    v3 = [[CARObserverHashTable alloc] initWithProtocol:&unk_1F4803948];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)service_foundNoMatchingAssetForVehicleIdentifier:(id)a3 nextRequiredCompatibilityVersion:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  v12 = [v11 queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __125__CARThemeAssetLibraryObserverProxy_service_foundNoMatchingAssetForVehicleIdentifier_nextRequiredCompatibilityVersion_reply___block_invoke;
  v16[3] = &unk_1E82FC310;
  v17 = v9;
  v18 = v8;
  v19 = self;
  v20 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  dispatch_async(v12, v16);
}

uint64_t __125__CARThemeAssetLibraryObserverProxy_service_foundNoMatchingAssetForVehicleIdentifier_nextRequiredCompatibilityVersion_reply___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "received found no matching asset, next required compatibility version: %{public}@", &v10, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) assetLibrary];
  v6 = [v5 vehicleIdentifier];
  LODWORD(v4) = [v4 isEqual:v6];

  if (v4)
  {
    v7 = [*(a1 + 48) observers];
    v8 = [*(a1 + 48) assetLibrary];
    [v7 themeAssetLibrary:v8 foundNoMatchingAssetExceptWithNextRequiredCompatibilityVersion:*(a1 + 32)];
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)service_attemptingDownloadForAssetVersion:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__CARThemeAssetLibraryObserverProxy_service_attemptingDownloadForAssetVersion_reply___block_invoke;
  block[3] = &unk_1E82FC2C0;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

uint64_t __85__CARThemeAssetLibraryObserverProxy_service_attemptingDownloadForAssetVersion_reply___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v16 = 138543362;
    v17 = v3;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "received attempting download for theme asset: %{public}@", &v16, 0xCu);
  }

  v4 = [*(a1 + 32) identifier];
  v5 = [*(a1 + 40) assetLibrary];
  v6 = [v5 assetIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(a1 + 40) observers];
    v9 = [*(a1 + 40) assetLibrary];
    [v8 themeAssetLibrary:v9 attemptingDownloadOfAssetWithVersion:*(a1 + 32)];

    v10 = MEMORY[0x1E696AD98];
    v11 = [*(a1 + 32) iOSContentVersion];
    v12 = [v10 numberWithInteger:{objc_msgSend(v11, "integerValue")}];

    v13 = [*(a1 + 40) observers];
    v14 = [*(a1 + 40) assetLibrary];
    [v13 themeAssetLibrary:v14 attemptingDownloadForAssetVersion:v12];
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)service_failedDownloadForAssetVersion:(id)a3 error:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  v12 = [v11 queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CARThemeAssetLibraryObserverProxy_service_failedDownloadForAssetVersion_error_reply___block_invoke;
  v16[3] = &unk_1E82FC310;
  v17 = v8;
  v18 = v9;
  v19 = self;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);
}

uint64_t __87__CARThemeAssetLibraryObserverProxy_service_failedDownloadForAssetVersion_error_reply___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v17 = 138543618;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "received failed download for theme asset: %{public}@ error: %@", &v17, 0x16u);
  }

  v5 = [*(a1 + 32) identifier];
  v6 = [*(a1 + 48) assetLibrary];
  v7 = [v6 assetIdentifier];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = [*(a1 + 48) observers];
    v10 = [*(a1 + 48) assetLibrary];
    [v9 themeAssetLibrary:v10 failedDownloadOfAssetWithVersion:*(a1 + 32) error:*(a1 + 40)];

    v11 = MEMORY[0x1E696AD98];
    v12 = [*(a1 + 32) iOSContentVersion];
    v13 = [v11 numberWithInteger:{objc_msgSend(v12, "integerValue")}];

    v14 = [*(a1 + 48) observers];
    v15 = [*(a1 + 48) assetLibrary];
    [v14 themeAssetLibrary:v15 failedDownloadForAssetVersion:v13 error:*(a1 + 40)];
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)service_completedDownloadForAsset:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CARThemeAssetLibraryObserverProxy_service_completedDownloadForAsset_reply___block_invoke;
  block[3] = &unk_1E82FC2C0;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

uint64_t __77__CARThemeAssetLibraryObserverProxy_service_completedDownloadForAsset_reply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "received completed download for theme asset %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 32) identifier];
  v5 = [*(a1 + 40) assetLibrary];
  v6 = [v5 assetIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(a1 + 40) observers];
    v9 = [*(a1 + 40) assetLibrary];
    [v8 themeAssetLibrary:v9 completedDownloadOfAsset:*(a1 + 32)];
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)service_didUpdateFromAsset:(id)a3 toAsset:(id)a4 forVehicleIdentifier:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  v15 = [v14 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__CARThemeAssetLibraryObserverProxy_service_didUpdateFromAsset_toAsset_forVehicleIdentifier_reply___block_invoke;
  block[3] = &unk_1E82FC338;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = self;
  v25 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_async(v15, block);
}

uint64_t __99__CARThemeAssetLibraryObserverProxy_service_didUpdateFromAsset_toAsset_forVehicleIdentifier_reply___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12 = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "received didUpdateFromAsset: %@ toAsset: %@ forVehicleID: %@", &v12, 0x20u);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) assetLibrary];
  v8 = [v7 vehicleIdentifier];
  LODWORD(v6) = [v6 isEqual:v8];

  if (v6)
  {
    v9 = [*(a1 + 56) observers];
    v10 = [*(a1 + 56) assetLibrary];
    [v9 themeAssetLibrary:v10 didUpdateFromAsset:*(a1 + 32) toAsset:*(a1 + 40)];
  }

  return (*(*(a1 + 64) + 16))();
}

- (CARThemeAssetLibrary)assetLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_assetLibrary);

  return WeakRetained;
}

@end