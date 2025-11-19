@interface CARThemeAssetLibraryAgent
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CARThemeAssetLibraryAgent)init;
- (CARThemeAssetLibraryAgentDelegate)delegate;
- (void)_addConnection:(id)a3;
- (void)_performObserverAction:(id)a3;
- (void)_removeConnection:(id)a3;
- (void)invalidate;
- (void)notifyAttemptingDownloadForAssetVersion:(id)a3;
- (void)notifyCompletedDownloadOfAsset:(id)a3;
- (void)notifyDidUpdateFromAsset:(id)a3 toAsset:(id)a4 forVehicleIdentifier:(id)a5;
- (void)notifyFailedDownloadForAssetVersion:(id)a3 error:(id)a4;
- (void)notifyFoundNoMatchingAssetForVehicleIdentifier:(id)a3 nextRequiredCompatibilityVersion:(id)a4 requestDescription:(id)a5;
- (void)service_currentAssetsForVehicleIdentifier:(id)a3 reply:(id)a4;
- (void)service_startObservingWithReply:(id)a3;
- (void)service_stopObservingWithReply:(id)a3;
@end

@implementation CARThemeAssetLibraryAgent

- (CARThemeAssetLibraryAgent)init
{
  v5.receiver = self;
  v5.super_class = CARThemeAssetLibraryAgent;
  v2 = [(CARThemeAssetLibraryAgent *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    [(CARThemeAssetLibraryAgent *)v2 setConnections:v3];
  }

  return v2;
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CARThemeAssetLibraryAgent *)self connections];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CARThemeAssetLibraryAgent *)self _removeConnection:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.private.carkit.themeAssetLibrary"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47F3C40];
    [v7 setExportedInterface:v10];
    [v7 setExportedObject:self];
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47F4F88];
    [v7 setRemoteObjectInterface:v11];
    objc_initWeak(&location, v7);
    objc_initWeak(&from, self);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __64__CARThemeAssetLibraryAgent_listener_shouldAcceptNewConnection___block_invoke;
    v20 = &unk_1E82FBE10;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    v12 = MEMORY[0x1CCA72270](&v17);
    [v7 setInterruptionHandler:{v12, v17, v18, v19, v20}];
    [v7 setInvalidationHandler:v12];
    v13 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 serviceName];
      v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "processIdentifier")}];
      *buf = 138412802;
      v26 = v7;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_1C81FC000, v13, OS_LOG_TYPE_DEFAULT, "receiving a service connection %@ to service %@ from %@", buf, 0x20u);
    }

    [v7 resume];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CARThemeAssetLibraryAgent listener:v7 shouldAcceptNewConnection:v10];
    }
  }

  return v9;
}

void __64__CARThemeAssetLibraryAgent_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_DEFAULT, "theme asset library connection interrupted or invalidated; removing connection.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v4 && WeakRetained)
  {
    v6 = [v4 connections];
    objc_sync_enter(v6);
    [v5 _removeConnection:WeakRetained];
    objc_sync_exit(v6);
  }
}

- (void)service_currentAssetsForVehicleIdentifier:(id)a3 reply:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "requesting current asset for vehicleID: %@", &v12, 0xCu);
  }

  v9 = [(CARThemeAssetLibraryAgent *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CARThemeAssetLibraryAgent *)self delegate];
    [v11 libraryAgent:self requestsCurrentAssetsForVehicleIdentifier:v6 completion:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)service_startObservingWithReply:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "start observing theme library for connection: %{public}@", &v6, 0xCu);
  }

  [(CARThemeAssetLibraryAgent *)self _addConnection:v4];
}

- (void)service_stopObservingWithReply:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "stop observing theme library for connection: %{public}@", &v6, 0xCu);
  }

  [(CARThemeAssetLibraryAgent *)self _removeConnection:v4];
}

- (void)notifyFoundNoMatchingAssetForVehicleIdentifier:(id)a3 nextRequiredCompatibilityVersion:(id)a4 requestDescription:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "notifying theme asset observers of found no matching asset for %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __128__CARThemeAssetLibraryAgent_notifyFoundNoMatchingAssetForVehicleIdentifier_nextRequiredCompatibilityVersion_requestDescription___block_invoke;
  v12[3] = &unk_1E82FBE60;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(CARThemeAssetLibraryAgent *)self _performObserverAction:v12];
}

void __128__CARThemeAssetLibraryAgent_notifyFoundNoMatchingAssetForVehicleIdentifier_nextRequiredCompatibilityVersion_requestDescription___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __128__CARThemeAssetLibraryAgent_notifyFoundNoMatchingAssetForVehicleIdentifier_nextRequiredCompatibilityVersion_requestDescription___block_invoke_2;
  v8[3] = &unk_1E82FBE38;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  [v7 service_foundNoMatchingAssetForVehicleIdentifier:v4 nextRequiredCompatibilityVersion:v5 reply:v8];
}

void __128__CARThemeAssetLibraryAgent_notifyFoundNoMatchingAssetForVehicleIdentifier_nextRequiredCompatibilityVersion_requestDescription___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "did notify theme asset observer %@ of found no matching asset for %{public}@", &v5, 0x16u);
  }
}

- (void)notifyAttemptingDownloadForAssetVersion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "notifying theme asset observers of attempting download for asset: %{public}@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CARThemeAssetLibraryAgent_notifyAttemptingDownloadForAssetVersion___block_invoke;
  v7[3] = &unk_1E82FBE88;
  v8 = v4;
  v6 = v4;
  [(CARThemeAssetLibraryAgent *)self _performObserverAction:v7];
}

void __69__CARThemeAssetLibraryAgent_notifyAttemptingDownloadForAssetVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CARThemeAssetLibraryAgent_notifyAttemptingDownloadForAssetVersion___block_invoke_2;
  v6[3] = &unk_1E82FBE38;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = v4;
  v5 = v3;
  [v5 service_attemptingDownloadForAssetVersion:v4 reply:v6];
}

void __69__CARThemeAssetLibraryAgent_notifyAttemptingDownloadForAssetVersion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "did notify theme asset observer %@ of attempting download for %{public}@", &v5, 0x16u);
  }
}

- (void)notifyFailedDownloadForAssetVersion:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "notifying theme asset observers of failed download for asset: %{public}@ error: %@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CARThemeAssetLibraryAgent_notifyFailedDownloadForAssetVersion_error___block_invoke;
  v11[3] = &unk_1E82FBE60;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(CARThemeAssetLibraryAgent *)self _performObserverAction:v11];
}

void __71__CARThemeAssetLibraryAgent_notifyFailedDownloadForAssetVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CARThemeAssetLibraryAgent_notifyFailedDownloadForAssetVersion_error___block_invoke_2;
  v7[3] = &unk_1E82FBEB0;
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = v3;
  [v6 service_failedDownloadForAssetVersion:v5 error:v4 reply:v7];
}

void __71__CARThemeAssetLibraryAgent_notifyFailedDownloadForAssetVersion_error___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = 138412802;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "did notify theme asset observer %@ of failed download for asset: %{public}@ error: %@", &v6, 0x20u);
  }
}

- (void)notifyCompletedDownloadOfAsset:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "notifying theme asset observers of completed download for asset: %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CARThemeAssetLibraryAgent_notifyCompletedDownloadOfAsset___block_invoke;
  v7[3] = &unk_1E82FBE88;
  v8 = v4;
  v6 = v4;
  [(CARThemeAssetLibraryAgent *)self _performObserverAction:v7];
}

void __60__CARThemeAssetLibraryAgent_notifyCompletedDownloadOfAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CARThemeAssetLibraryAgent_notifyCompletedDownloadOfAsset___block_invoke_2;
  v6[3] = &unk_1E82FBE38;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = v4;
  v5 = v3;
  [v5 service_completedDownloadForAsset:v4 reply:v6];
}

void __60__CARThemeAssetLibraryAgent_notifyCompletedDownloadOfAsset___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "did notify theme asset observer %@ of completed download for asset: %{public}@", &v5, 0x16u);
  }
}

- (void)notifyDidUpdateFromAsset:(id)a3 toAsset:(id)a4 forVehicleIdentifier:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_INFO, "notifiying theme asset observers of update from asset %{public}@ to asset: %{public}@ for vehicleID: %@", buf, 0x20u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__CARThemeAssetLibraryAgent_notifyDidUpdateFromAsset_toAsset_forVehicleIdentifier___block_invoke;
  v15[3] = &unk_1E82FBF00;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(CARThemeAssetLibraryAgent *)self _performObserverAction:v15];
}

void __83__CARThemeAssetLibraryAgent_notifyDidUpdateFromAsset_toAsset_forVehicleIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__CARThemeAssetLibraryAgent_notifyDidUpdateFromAsset_toAsset_forVehicleIdentifier___block_invoke_2;
  v8[3] = &unk_1E82FBED8;
  v9 = v3;
  v6 = a1[4];
  v10 = v6;
  v11 = a1[5];
  v12 = a1[6];
  v7 = v3;
  [v7 service_didUpdateFromAsset:v6 toAsset:v4 forVehicleIdentifier:v5 reply:v8];
}

void __83__CARThemeAssetLibraryAgent_notifyDidUpdateFromAsset_toAsset_forVehicleIdentifier___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = 138413058;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "did notify theme asset observer %@ of update from asset %{public}@ to asset %{public}@ for vehicleID: %@", &v7, 0x2Au);
  }
}

- (void)_addConnection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CARThemeAssetLibraryAgent *)self connections];
  objc_sync_enter(v5);
  v6 = [v4 userInfo];

  if (!v6)
  {
    v7 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "holding a theme library observing transaction for %@", &v10, 0xCu);
    }

    v8 = os_transaction_create();
    [v4 setUserInfo:v8];
  }

  v9 = [(CARThemeAssetLibraryAgent *)self connections];
  [v9 addObject:v4];

  objc_sync_exit(v5);
}

- (void)_removeConnection:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CARThemeAssetLibraryAgent *)self connections];
  objc_sync_enter(v5);
  v6 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "releasing a theme library observing transaction for %@", &v11, 0xCu);
  }

  [v4 setUserInfo:0];
  v7 = [(CARThemeAssetLibraryAgent *)self connections];
  v8 = [v7 containsObject:v4];

  if (v8)
  {
    v9 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Removing theme library connection %@", &v11, 0xCu);
    }

    v10 = [(CARThemeAssetLibraryAgent *)self connections];
    [v10 removeObject:v4];
  }

  else
  {
    v10 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_DEFAULT, "Connection %@ was not observing theme library", &v11, 0xCu);
    }
  }

  objc_sync_exit(v5);
}

- (void)_performObserverAction:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CARThemeAssetLibraryAgent *)self connections];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&__block_literal_global_0];
        if (v4)
        {
          v4[2](v4, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void __52__CARThemeAssetLibraryAgent__performObserverAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __52__CARThemeAssetLibraryAgent__performObserverAction___block_invoke_cold_1(v2, v3);
  }
}

- (CARThemeAssetLibraryAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = [a1 processIdentifier];
  v4 = 2112;
  v5 = @"com.apple.private.carkit.themeAssetLibrary";
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "Process %i does not have the %@ entitlement", v3, 0x12u);
}

void __52__CARThemeAssetLibraryAgent__performObserverAction___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "failed to connect to theme library observer service %@", &v2, 0xCu);
}

@end