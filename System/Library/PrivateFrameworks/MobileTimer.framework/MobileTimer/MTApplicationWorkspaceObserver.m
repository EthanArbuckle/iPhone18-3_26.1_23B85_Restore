@interface MTApplicationWorkspaceObserver
+ (MTApplicationWorkspaceObserver)sharedWorkspaceObserver;
- (MTApplicationWorkspaceObserver)init;
- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation MTApplicationWorkspaceObserver

+ (MTApplicationWorkspaceObserver)sharedWorkspaceObserver
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MTApplicationWorkspaceObserver_sharedWorkspaceObserver__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedWorkspaceObserver_onceToken != -1)
  {
    dispatch_once(&sharedWorkspaceObserver_onceToken, block);
  }

  v2 = sharedWorkspaceObserver_instance;

  return v2;
}

uint64_t __57__MTApplicationWorkspaceObserver_sharedWorkspaceObserver__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedWorkspaceObserver_instance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (MTApplicationWorkspaceObserver)init
{
  v10.receiver = self;
  v10.super_class = MTApplicationWorkspaceObserver;
  v2 = [(MTApplicationWorkspaceObserver *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MobileTimer.MTApplicationWorkspaceObserverQueue", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersForBundleID = v2->_observersForBundleID;
    v2->_observersForBundleID = v5;

    v7 = [MEMORY[0x1E6963608] defaultWorkspace];
    applicationWorkspace = v2->_applicationWorkspace;
    v2->_applicationWorkspace = v7;
  }

  return v2;
}

- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTApplicationWorkspaceObserver *)self observerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MTApplicationWorkspaceObserver_addObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

void __66__MTApplicationWorkspaceObserver_addObserver_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersForBundleID];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = [*(a1 + 32) observersForBundleID];
    [v4 setObject:v6 forKeyedSubscript:*(a1 + 40)];

    v3 = v6;
  }

  v7 = v3;
  [v3 addObject:*(a1 + 48)];
  if (([*(a1 + 32) isObserving] & 1) == 0)
  {
    [*(*(a1 + 32) + 24) addObserver:?];
    [*(a1 + 32) setObserving:1];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(MTApplicationWorkspaceObserver *)self observerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MTApplicationWorkspaceObserver_removeObserver___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __49__MTApplicationWorkspaceObserver_removeObserver___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) observersForBundleID];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__MTApplicationWorkspaceObserver_removeObserver___block_invoke_2;
  v19[3] = &unk_1E7B0FAB0;
  v20 = *(a1 + 40);
  v4 = v2;
  v21 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v19];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [*(a1 + 32) observersForBundleID];
        [v11 removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [*(a1 + 32) observersForBundleID];
  v13 = [v12 count];

  if (!v13)
  {
    [*(*(a1 + 32) + 24) removeObserver:?];
    [*(a1 + 32) setObserving:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __49__MTApplicationWorkspaceObserver_removeObserver___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v6 removeObject:v5];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v5 = [(MTApplicationWorkspaceObserver *)self observerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MTApplicationWorkspaceObserver_applicationsDidInstall___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__MTApplicationWorkspaceObserver_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v15)
  {
    v13 = *v21;
    do
    {
      v1 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v2 = [*(*(&v20 + 1) + 8 * v1) bundleIdentifier];
        v3 = [*(a1 + 40) observersForBundleID];
        v4 = [v3 objectForKeyedSubscript:v2];

        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v5 = [v4 objectEnumerator];
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            v9 = 0;
            do
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v16 + 1) + 8 * v9);
              if (objc_opt_respondsToSelector())
              {
                [v10 observedApplicationDidInstallForBundleIdentifier:v2];
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v7);
        }

        ++v1;
      }

      while (v1 != v15);
      v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  v5 = [(MTApplicationWorkspaceObserver *)self observerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MTApplicationWorkspaceObserver_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__MTApplicationWorkspaceObserver_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v15)
  {
    v13 = *v21;
    do
    {
      v1 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v2 = [*(*(&v20 + 1) + 8 * v1) bundleIdentifier];
        v3 = [*(a1 + 40) observersForBundleID];
        v4 = [v3 objectForKeyedSubscript:v2];

        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v5 = [v4 objectEnumerator];
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            v9 = 0;
            do
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v16 + 1) + 8 * v9);
              if (objc_opt_respondsToSelector())
              {
                [v10 observedApplicationDidUninstallForBundleIdentifier:v2];
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v7);
        }

        ++v1;
      }

      while (v1 != v15);
      v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end