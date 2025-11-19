@interface CAMSmartStyleSettingsResourceLoadingManager
- (BOOL)isWaitingOnLoadingForAssetIdentifiers:(id)a3;
- (CAMSmartStyleSettingsResourceLoadingManager)init;
- (CAMSmartStyleSettingsResourceLoadingManagerDelegate)delegate;
- (id)logIdentifierForAssetIdentifier:(id)a3;
- (id)logIdentifierForAssetIdentifiers:(id)a3;
- (id)resourceLoaderForAssetIdentifier:(id)a3;
- (void)_loadNextResourceIfPossible;
- (void)_unloadResourcesForAssetIdentifier:(id)a3 allowLoadingNextResource:(BOOL)a4;
- (void)loadResourcesForAssetIdentifier:(id)a3;
- (void)loadResourcesForAssetIdentifiers:(id)a3 unloadAllOthers:(BOOL)a4;
- (void)smartStyleSettingsResourceLoaderDidFinishLoading:(id)a3;
@end

@implementation CAMSmartStyleSettingsResourceLoadingManager

- (CAMSmartStyleSettingsResourceLoadingManager)init
{
  v14.receiver = self;
  v14.super_class = CAMSmartStyleSettingsResourceLoadingManager;
  v2 = [(CAMSmartStyleSettingsResourceLoadingManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.camera.style-settings-resource-loading-manager.loading-queue", v3);
    loadingQueue = v2->__loadingQueue;
    v2->__loadingQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    allResourceLoaders = v2->__allResourceLoaders;
    v2->__allResourceLoaders = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingResourceLoaders = v2->__pendingResourceLoaders;
    v2->__pendingResourceLoaders = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    logIdentifiers = v2->__logIdentifiers;
    v2->__logIdentifiers = v10;

    v12 = v2;
  }

  return v2;
}

- (void)loadResourcesForAssetIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _allResourceLoaders];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(CAMSmartStyleSettingsResourceLoadingManager *)self logIdentifierForAssetIdentifier:v4];
    v8 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CAMSmartStyleSettingsResourceLoadingManager loadResourcesForAssetIdentifier:];
    }

    v9 = [CAMSmartStyleSettingsResourceLoader alloc];
    v10 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _loadingQueue];
    v11 = [(CAMSmartStyleSettingsResourceLoader *)v9 initWithDelegate:self loadingQueue:v10 assetIdentifier:v4 logIdentifier:v7];

    v12 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _pendingResourceLoaders];
    [v12 addObject:v11];

    v13 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _allResourceLoaders];
    [v13 setObject:v11 forKeyedSubscript:v4];

    [(CAMSmartStyleSettingsResourceLoadingManager *)self _loadNextResourceIfPossible];
  }
}

- (void)loadResourcesForAssetIdentifiers:(id)a3 unloadAllOthers:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    v9 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _allResourceLoaders];
    v10 = [v9 allKeys];
    v11 = [v8 initWithArray:v10];

    [v11 minusSet:v7];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        v16 = 0;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(CAMSmartStyleSettingsResourceLoadingManager *)self _unloadResourcesForAssetIdentifier:*(*(&v26 + 1) + 8 * v16++) allowLoadingNextResource:0];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v14);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(CAMSmartStyleSettingsResourceLoadingManager *)self loadResourcesForAssetIdentifier:*(*(&v22 + 1) + 8 * v21++), v22];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }

  [(CAMSmartStyleSettingsResourceLoadingManager *)self _loadNextResourceIfPossible];
}

- (void)_unloadResourcesForAssetIdentifier:(id)a3 allowLoadingNextResource:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CAMSmartStyleSettingsResourceLoadingManager *)self logIdentifierForAssetIdentifier:v6];
  v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _allResourceLoaders];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    [v9 setDelegate:0];
    v10 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _pendingResourceLoaders];
    [v10 removeObject:v9];

    v11 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _allResourceLoaders];
    [v11 setObject:0 forKeyedSubscript:v6];

    v12 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _activeResourceLoader];

    v13 = os_log_create("com.apple.camera", "SmartStyleSettings");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v12 == v9)
    {
      if (v14)
      {
        [CAMSmartStyleSettingsResourceLoadingManager _unloadResourcesForAssetIdentifier:allowLoadingNextResource:];
      }

      [(CAMSmartStyleSettingsResourceLoadingManager *)self set_activeResourceLoader:0];
      if (v4)
      {
        [(CAMSmartStyleSettingsResourceLoadingManager *)self _loadNextResourceIfPossible];
      }
    }

    else
    {
      if (v14)
      {
        [CAMSmartStyleSettingsResourceLoadingManager _unloadResourcesForAssetIdentifier:allowLoadingNextResource:];
      }
    }
  }

  else
  {
    v15 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "ResourceLoadingManager (%{public}@): could not cancel untracked asset identifier", &v16, 0xCu);
    }
  }
}

- (void)_loadNextResourceIfPossible
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 logIdentifier];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "ResourceLoadingManager (%{public}@): starting load", v4, 0xCu);
}

- (id)resourceLoaderForAssetIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _allResourceLoaders];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)isWaitingOnLoadingForAssetIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _allResourceLoaders];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (([v11 status] | 2) == 2)
        {

          v12 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (id)logIdentifierForAssetIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _logIdentifiers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _logIdentifiers];
    v6 = [v7 stringWithFormat:@"Asset:%ld", objc_msgSend(v8, "count")];

    v9 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CAMSmartStyleSettingsResourceLoadingManager logIdentifierForAssetIdentifier:];
    }

    v10 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _logIdentifiers];
    [v10 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (id)logIdentifierForAssetIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CAMSmartStyleSettingsResourceLoadingManager *)self logIdentifierForAssetIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 componentsJoinedByString:{@", "}];

  return v12;
}

- (void)smartStyleSettingsResourceLoaderDidFinishLoading:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _allResourceLoaders];
  v6 = [v4 assetIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _activeResourceLoader];

  v9 = os_log_create("com.apple.camera", "SmartStyleSettings");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 != v4)
  {
    if (v7 != v4)
    {
      if (!v10)
      {
LABEL_14:

        goto LABEL_15;
      }

      v11 = [v4 logIdentifier];
      v12 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _activeResourceLoader];
      v13 = [v12 logIdentifier];
      v18 = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResourceLoadingManager (%{public}@): Did finish loading for asset that was not activeResourceLoader %{public}@. Will not notify delegate.", &v18, 0x16u);

LABEL_13:
      goto LABEL_14;
    }

    if (v10)
    {
      v15 = [v4 logIdentifier];
      v16 = [(CAMSmartStyleSettingsResourceLoadingManager *)self _activeResourceLoader];
      v17 = [v16 logIdentifier];
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v17;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResourceLoadingManager (%{public}@): Did finish loading for asset that was not activeResourceLoader %{public}@", &v18, 0x16u);
    }

LABEL_12:
    v9 = [(CAMSmartStyleSettingsResourceLoadingManager *)self delegate];
    v11 = [v4 assetIdentifier];
    [v9 smartStyleSettingsResourceLoadingManager:self didFinishLoadingForAssetIdentifier:v11];
    goto LABEL_13;
  }

  if (v10)
  {
    v14 = [v4 logIdentifier];
    v18 = 138543362;
    v19 = v14;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResourceLoadingManager (%{public}@): Did finish loading", &v18, 0xCu);
  }

  [(CAMSmartStyleSettingsResourceLoadingManager *)self set_activeResourceLoader:0];
  if (v7 == v4)
  {
    goto LABEL_12;
  }

LABEL_15:
  [(CAMSmartStyleSettingsResourceLoadingManager *)self _loadNextResourceIfPossible];
}

- (CAMSmartStyleSettingsResourceLoadingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)logIdentifierForAssetIdentifier:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_1A3640000, v1, OS_LOG_TYPE_DEBUG, "ResourceLoadingManager: mapping %{public}@ as %{public}@", v2, 0x16u);
}

@end