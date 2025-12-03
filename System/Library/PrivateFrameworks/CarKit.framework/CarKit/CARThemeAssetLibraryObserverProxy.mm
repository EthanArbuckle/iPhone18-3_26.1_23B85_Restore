@interface CARThemeAssetLibraryObserverProxy
- (CARThemeAssetLibrary)assetLibrary;
- (CARThemeAssetLibraryObserverProxy)init;
- (void)service_attemptingDownloadForAssetVersion:(id)version reply:(id)reply;
- (void)service_completedDownloadForAsset:(id)asset reply:(id)reply;
- (void)service_didUpdateFromAsset:(id)asset toAsset:(id)toAsset forVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)service_failedDownloadForAssetVersion:(id)version error:(id)error reply:(id)reply;
- (void)service_foundNoMatchingAssetForVehicleIdentifier:(id)identifier nextRequiredCompatibilityVersion:(id)version reply:(id)reply;
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

- (void)service_foundNoMatchingAssetForVehicleIdentifier:(id)identifier nextRequiredCompatibilityVersion:(id)version reply:(id)reply
{
  identifierCopy = identifier;
  versionCopy = version;
  replyCopy = reply;
  assetLibrary = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  queue = [assetLibrary queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __125__CARThemeAssetLibraryObserverProxy_service_foundNoMatchingAssetForVehicleIdentifier_nextRequiredCompatibilityVersion_reply___block_invoke;
  v16[3] = &unk_1E82FC310;
  v17 = versionCopy;
  v18 = identifierCopy;
  selfCopy = self;
  v20 = replyCopy;
  v13 = replyCopy;
  v14 = identifierCopy;
  v15 = versionCopy;
  dispatch_async(queue, v16);
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

- (void)service_attemptingDownloadForAssetVersion:(id)version reply:(id)reply
{
  versionCopy = version;
  replyCopy = reply;
  assetLibrary = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  queue = [assetLibrary queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__CARThemeAssetLibraryObserverProxy_service_attemptingDownloadForAssetVersion_reply___block_invoke;
  block[3] = &unk_1E82FC2C0;
  v13 = versionCopy;
  selfCopy = self;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = versionCopy;
  dispatch_async(queue, block);
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

- (void)service_failedDownloadForAssetVersion:(id)version error:(id)error reply:(id)reply
{
  versionCopy = version;
  errorCopy = error;
  replyCopy = reply;
  assetLibrary = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  queue = [assetLibrary queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CARThemeAssetLibraryObserverProxy_service_failedDownloadForAssetVersion_error_reply___block_invoke;
  v16[3] = &unk_1E82FC310;
  v17 = versionCopy;
  v18 = errorCopy;
  selfCopy = self;
  v20 = replyCopy;
  v13 = replyCopy;
  v14 = errorCopy;
  v15 = versionCopy;
  dispatch_async(queue, v16);
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

- (void)service_completedDownloadForAsset:(id)asset reply:(id)reply
{
  assetCopy = asset;
  replyCopy = reply;
  assetLibrary = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  queue = [assetLibrary queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CARThemeAssetLibraryObserverProxy_service_completedDownloadForAsset_reply___block_invoke;
  block[3] = &unk_1E82FC2C0;
  v13 = assetCopy;
  selfCopy = self;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = assetCopy;
  dispatch_async(queue, block);
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

- (void)service_didUpdateFromAsset:(id)asset toAsset:(id)toAsset forVehicleIdentifier:(id)identifier reply:(id)reply
{
  assetCopy = asset;
  toAssetCopy = toAsset;
  identifierCopy = identifier;
  replyCopy = reply;
  assetLibrary = [(CARThemeAssetLibraryObserverProxy *)self assetLibrary];
  queue = [assetLibrary queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__CARThemeAssetLibraryObserverProxy_service_didUpdateFromAsset_toAsset_forVehicleIdentifier_reply___block_invoke;
  block[3] = &unk_1E82FC338;
  v21 = assetCopy;
  v22 = toAssetCopy;
  v23 = identifierCopy;
  selfCopy = self;
  v25 = replyCopy;
  v16 = replyCopy;
  v17 = identifierCopy;
  v18 = toAssetCopy;
  v19 = assetCopy;
  dispatch_async(queue, block);
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