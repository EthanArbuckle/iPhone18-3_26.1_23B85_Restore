@interface FBSApplicationLibrary
- (BOOL)isUsingNetwork;
- (FBSApplicationLibrary)init;
- (FBSApplicationLibrary)initWithConfiguration:(id)a3;
- (NSString)description;
- (id)_identitiesForProxy:(void *)a3 outRecord:;
- (id)_initWithApplicationWorkspace:(id)a3 configuration:(id)a4;
- (id)_workQueue_addApplicationWithIdentity:(void *)a3 forProxy:;
- (id)_workQueue_addPlaceholderWithIdentity:(void *)a3 forProxy:;
- (id)_workQueue_applicationsForProxies:;
- (id)_workQueue_currentProcessProxyWithOutURL:(uint64_t)a1;
- (id)_workQueue_removeApplicationForIdentity:(id *)a1;
- (id)_workQueue_removePlaceholderForIdentity:(id *)a1;
- (id)allInstalledApplications;
- (id)allPlaceholders;
- (id)applicationInfoForAuditToken:(id)a3;
- (id)applicationInfoForBundleIdentifier:(id)a3;
- (id)installedApplicationForIdentity:(id)a3;
- (id)installedApplicationForIdentityString:(id)a3;
- (id)installedApplicationWithBundleIdentifier:(id)a3;
- (id)installedApplicationsForBundleIdentifier:(id)a3;
- (id)observeDidAddApplicationsWithBlock:(id)a3;
- (id)observeDidAddPlaceholdersWithBlock:(id)a3;
- (id)observeDidCancelPlaceholdersWithBlock:(id)a3;
- (id)observeDidChangeNetworkUsageWithBlock:(id)a3;
- (id)observeDidDemoteApplicationsWithBlock:(id)a3;
- (id)observeDidRemoveApplicationsWithBlock:(id)a3;
- (id)observeDidReplaceApplicationsWithBlock:(id)a3;
- (id)observeDidUpdateApplicationsWithBlock:(id)a3;
- (id)placeholderForIdentity:(id)a3;
- (id)placeholderForIdentityString:(id)a3;
- (id)placeholderWithBundleIdentifier:(id)a3;
- (id)placeholdersForBundleIdentifier:(id)a3;
- (uint64_t)_workQueue_applicationNeedsRegeneration:(void *)a3 fromProxy:;
- (uint64_t)_workQueue_applicationPassesFilter:(void *)a3 record:(void *)a4 identity:;
- (uint64_t)_workQueue_placeholderPassesFilter:(void *)a3 record:(void *)a4 identity:;
- (void)_executeOrPendInstallSynchronizationBlock:(uint64_t)a1;
- (void)_fixupAdded:(void *)a3 removed:(id *)a4 replaced:;
- (void)_handleApplicationStateDidChange:(int)a3 notifyForUpdateInsteadOfReplacement:;
- (void)_load;
- (void)_notifyDidChangeNetworkUsage:(uint64_t)a1;
- (void)_notifyDidDemoteApplications:(uint64_t)a3;
- (void)_notifyDidRemoveApplications:(uint64_t)a3;
- (void)_notifyForType:(int)a3 synchronously:(void *)a4 withCastingBlock:;
- (void)_observeType:(void *)a3 withBlock:;
- (void)_reloadPlaceholdersNotificationFired;
- (void)_workQueue_addApplication:(uint64_t)a1;
- (void)_workQueue_addApplicationProxy:(uint64_t)a1;
- (void)_workQueue_addPlaceholder:(uint64_t)a1;
- (void)_workQueue_applicationForIdentity:(void *)a1;
- (void)_workQueue_didAddBundleInfo:(uint64_t)a1;
- (void)_workQueue_didRemoveBundleInfo:(id *)a1;
- (void)_workQueue_executeInstallSynchronizationBlocksIfAppropriate;
- (void)_workQueue_placeholderForIdentity:(void *)a1;
- (void)addApplicationProxy:(id)a3 withOverrideURL:(id)a4;
- (void)addApplicationRecord:(id)a3;
- (void)applicationInstallsArePrioritized:(id)a3 arePaused:(id)a4;
- (void)applicationInstallsDidCancel:(id)a3;
- (void)applicationInstallsDidChange:(id)a3;
- (void)applicationInstallsDidPause:(id)a3;
- (void)applicationInstallsDidPrioritize:(id)a3;
- (void)applicationInstallsDidResume:(id)a3;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationInstallsDidUpdateIcon:(id)a3;
- (void)applicationStateDidChange:(id)a3;
- (void)applicationsDidChangePersonas:(id)a3;
- (void)applicationsDidFailToInstall:(id)a3;
- (void)applicationsDidFailToUninstall:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsWillInstall:(id)a3;
- (void)applicationsWillUninstall:(id)a3;
- (void)dealloc;
- (void)deviceManagementPolicyDidChange:(id)a3;
- (void)installedApplicationWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)invalidate;
- (void)networkUsageChanged:(BOOL)a3;
- (void)removeObserverForToken:(id)a3;
- (void)uninstallApplication:(id)a3 completion:(id)a4;
- (void)uninstallApplication:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)uninstallApplicationIdentity:(id)a3 withOptions:(id)a4 completion:(id)a5;
@end

@implementation FBSApplicationLibrary

- (void)_workQueue_executeInstallSynchronizationBlocksIfAppropriate
{
  if (a1)
  {
    OUTLINED_FUNCTION_13_1();
    v4 = 3221225472;
    v5 = __84__FBSApplicationLibrary__workQueue_executeInstallSynchronizationBlocksIfAppropriate__block_invoke;
    v6 = &unk_1E76BCDB0;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

void __84__FBSApplicationLibrary__workQueue_executeInstallSynchronizationBlocksIfAppropriate__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__FBSApplicationLibrary__workQueue_executeInstallSynchronizationBlocksIfAppropriate__block_invoke_2;
  block[3] = &unk_1E76BCD60;
  block[4] = v3;
  v5 = v2;
  v16 = v5;
  dispatch_sync(v4, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v8);
  }
}

uint64_t __84__FBSApplicationLibrary__workQueue_executeInstallSynchronizationBlocksIfAppropriate__block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 88))
  {
    v2 = result;
    result = [*(v1 + 96) count];
    if (result)
    {
      [*(v2 + 40) addObjectsFromArray:*(*(v2 + 32) + 96)];
      v3 = *(*(v2 + 32) + 96);

      return [v3 removeAllObjects];
    }
  }

  return result;
}

- (FBSApplicationLibrary)init
{
  v3 = objc_alloc_init(FBSApplicationLibraryConfiguration);
  v4 = [(FBSApplicationLibrary *)self initWithConfiguration:v3];

  return v4;
}

- (FBSApplicationLibrary)initWithConfiguration:(id)a3
{
  v4 = MEMORY[0x1E6963608];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(FBSApplicationLibrary *)self _initWithApplicationWorkspace:v6 configuration:v5];

  return v7;
}

- (id)_initWithApplicationWorkspace:(id)a3 configuration:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBSApplicationLibrary _initWithApplicationWorkspace:a2 configuration:?];
  }

  v9 = v8;
  if (!v8)
  {
    [FBSApplicationLibrary _initWithApplicationWorkspace:a2 configuration:?];
  }

  v21.receiver = self;
  v21.super_class = FBSApplicationLibrary;
  v10 = [(FBSApplicationLibrary *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v13 = [v9 copy];
    configuration = v11->_configuration;
    v11->_configuration = v13;

    if (([(objc_class *)[(FBSApplicationLibraryConfiguration *)v11->_configuration applicationInfoClass] isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      if (([(objc_class *)[(FBSApplicationLibraryConfiguration *)v11->_configuration applicationPlaceholderClass] isSubclassOfClass:objc_opt_class()]& 1) != 0)
      {
        v15 = FBSLogApplicationLibrary();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(FBSApplicationLibraryConfiguration *)v11->_configuration installedApplicationFilter];
          v17 = @"YES";
          if (!v16)
          {
            v17 = @"NO";
          }

          *buf = 134218242;
          v23 = v11;
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&dword_1A2DBB000, v15, OS_LOG_TYPE_DEFAULT, "FBSApplicationLibrary<%p> has custom app inclusion filter defined? %@", buf, 0x16u);
        }

        v18 = FBSLogApplicationLibrary();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(FBSApplicationLibraryConfiguration *)v11->_configuration placeholderFilter];
          v20 = @"YES";
          if (!v19)
          {
            v20 = @"NO";
          }

          *buf = 134218242;
          v23 = v11;
          v24 = 2112;
          v25 = v20;
          _os_log_impl(&dword_1A2DBB000, v18, OS_LOG_TYPE_DEFAULT, "FBSApplicationLibrary<%p> has custom placeholder inclusion filter defined? %@", buf, 0x16u);
        }

        [off_1E76BC9B8 serial];
        [objc_claimAutoreleasedReturnValue() serviceClass:33];
        objc_claimAutoreleasedReturnValue();
        BSDispatchQueueCreate();
      }

      [FBSApplicationLibrary _initWithApplicationWorkspace:a2 configuration:?];
    }

    [FBSApplicationLibrary _initWithApplicationWorkspace:a2 configuration:?];
  }

  return 0;
}

id __69__FBSApplicationLibrary__initWithApplicationWorkspace_configuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(FBSApplicationLibrary *)self invalidate];
  v3.receiver = self;
  v3.super_class = FBSApplicationLibrary;
  [(FBSApplicationLibrary *)&v3 dealloc];
}

- (BOOL)isUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__FBSApplicationLibrary_isUsingNetwork__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)allInstalledApplications
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__FBSApplicationLibrary_allInstalledApplications__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__FBSApplicationLibrary_allInstalledApplications__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)installedApplicationsForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__FBSApplicationLibrary_installedApplicationsForBundleIdentifier___block_invoke;
    block[3] = &unk_1E76BE100;
    block[4] = self;
    v12 = v4;
    v7 = v5;
    v13 = v7;
    dispatch_sync(workQueue, block);
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __66__FBSApplicationLibrary_installedApplicationsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 56) objectForKey:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_applicationForIdentity:?];
        if (v7)
        {
          [*(a1 + 48) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_workQueue_applicationForIdentity:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [FBSApplicationLibrary _workQueue_applicationForIdentity:?];
    }

    v5 = a1[8];
    v6 = [v3 identityString];
    a1 = [v5 objectForKey:v6];
  }

  return a1;
}

- (id)installedApplicationForIdentity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FBSApplicationLibrary_installedApplicationForIdentity___block_invoke;
  block[3] = &unk_1E76BDCD8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(workQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__FBSApplicationLibrary_installedApplicationForIdentity___block_invoke(uint64_t a1)
{
  v2 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_applicationForIdentity:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)installedApplicationForIdentityString:(id)a3
{
  v4 = MEMORY[0x1E69635D8];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentityString:v5];

  v7 = [(FBSApplicationLibrary *)self installedApplicationForIdentity:v6];

  return v7;
}

- (id)installedApplicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([(FBSApplicationLibraryConfiguration *)self->_configuration isPersonaAware])
  {
    v5 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationLibrary *)v5 installedApplicationWithBundleIdentifier:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [(FBSApplicationLibrary *)self installedApplicationsForBundleIdentifier:v4];
  v14 = [v13 firstObject];

  return v14;
}

- (void)installedApplicationWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(FBSApplicationLibraryConfiguration *)self->_configuration isPersonaAware])
  {
    v9 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationLibrary *)v9 installedApplicationWithBundleIdentifier:v10 completionHandler:v11, v12, v13, v14, v15, v16];
    }
  }

  if (!v8)
  {
    [FBSApplicationLibrary installedApplicationWithBundleIdentifier:a2 completionHandler:?];
  }

  completionQueue = self->_completionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__FBSApplicationLibrary_installedApplicationWithBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E76BD4E0;
  v21 = v7;
  v22 = v8;
  block[4] = self;
  v18 = v7;
  v19 = v8;
  dispatch_async(completionQueue, block);
}

void __84__FBSApplicationLibrary_installedApplicationWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) installedApplicationWithBundleIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)allPlaceholders
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__FBSApplicationLibrary_allPlaceholders__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__FBSApplicationLibrary_allPlaceholders__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)placeholderWithBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([(FBSApplicationLibraryConfiguration *)self->_configuration isPersonaAware])
  {
    v5 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationLibrary *)v5 placeholderWithBundleIdentifier:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [(FBSApplicationLibrary *)self placeholdersForBundleIdentifier:v4];
  v14 = [v13 firstObject];

  return v14;
}

- (id)placeholdersForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__FBSApplicationLibrary_placeholdersForBundleIdentifier___block_invoke;
    block[3] = &unk_1E76BE100;
    block[4] = self;
    v12 = v4;
    v7 = v5;
    v13 = v7;
    dispatch_sync(workQueue, block);
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __57__FBSApplicationLibrary_placeholdersForBundleIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 56) objectForKey:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_placeholderForIdentity:?];
        if (v7)
        {
          [*(a1 + 48) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_workQueue_placeholderForIdentity:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [FBSApplicationLibrary _workQueue_placeholderForIdentity:?];
    }

    v5 = a1[9];
    v6 = [v3 identityString];
    a1 = [v5 objectForKey:v6];
  }

  return a1;
}

- (id)placeholderForIdentity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FBSApplicationLibrary_placeholderForIdentity___block_invoke;
  block[3] = &unk_1E76BDCD8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(workQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __48__FBSApplicationLibrary_placeholderForIdentity___block_invoke(uint64_t a1)
{
  v2 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_placeholderForIdentity:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)placeholderForIdentityString:(id)a3
{
  v4 = MEMORY[0x1E69635D8];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentityString:v5];

  v7 = [(FBSApplicationLibrary *)self placeholderForIdentity:v6];

  return v7;
}

- (void)uninstallApplication:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__FBSApplicationLibrary_uninstallApplication_completion___block_invoke;
  v8[3] = &unk_1E76BDB58;
  v9 = v6;
  v7 = v6;
  [(FBSApplicationLibrary *)self uninstallApplication:a3 withOptions:0 completion:v8];
}

uint64_t __57__FBSApplicationLibrary_uninstallApplication_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

- (void)uninstallApplication:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(FBSApplicationLibraryConfiguration *)self->_configuration isPersonaAware])
  {
    v11 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationLibrary *)v11 uninstallApplication:v12 withOptions:v13 completion:v14, v15, v16, v17, v18];
    }
  }

  v19 = [(FBSApplicationLibrary *)self installedApplicationWithBundleIdentifier:v8];
  v20 = [v19 applicationIdentity];

  if (v20 || (-[FBSApplicationLibrary placeholderWithBundleIdentifier:](self, "placeholderWithBundleIdentifier:", v8), v21 = objc_claimAutoreleasedReturnValue(), [v21 applicationIdentity], v20 = objc_claimAutoreleasedReturnValue(), v21, v20))
  {
    [(FBSApplicationLibrary *)self uninstallApplicationIdentity:v20 withOptions:v9 completion:v10];
LABEL_8:

    goto LABEL_9;
  }

  v22 = FBSLogApplicationLibrary();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [FBSApplicationLibrary uninstallApplication:withOptions:completion:];
  }

  if (v10)
  {
    completionQueue = self->_completionQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__FBSApplicationLibrary_uninstallApplication_withOptions_completion___block_invoke;
    v24[3] = &unk_1E76BD750;
    v26 = v10;
    v25 = v8;
    dispatch_async(completionQueue, v24);

    v20 = v26;
    goto LABEL_8;
  }

LABEL_9:
}

void __69__FBSApplicationLibrary_uninstallApplication_withOptions_completion___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *off_1E76BC958;
  v6[0] = *MEMORY[0x1E696A588];
  v6[1] = v2;
  v7[0] = @"No application found.";
  v7[1] = @"Not Found";
  v6[2] = @"FBSALIdentity";
  v3 = *(a1 + 40);
  v7[2] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v5 = [v1 errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:2 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

- (void)uninstallApplicationIdentity:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = FBSLogApplicationLibrary();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 fbs_shortDescription];
    *buf = 138412290;
    *v67 = v13;
    _os_log_impl(&dword_1A2DBB000, v12, OS_LOG_TYPE_DEFAULT, "Uninstalling %@...", buf, 0xCu);
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke;
  v62[3] = &unk_1E76BF090;
  v14 = v9;
  v63 = v14;
  v15 = v11;
  v64 = self;
  v65 = v15;
  v16 = [off_1E76BC9A0 sentinelWithCompletion:v62];
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__8;
  v56 = __Block_byref_object_dispose__8;
  v57 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__8;
  v50[4] = __Block_byref_object_dispose__8;
  v51 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E76BF0B8;
  v47 = v50;
  block[4] = self;
  v18 = v14;
  v44 = v18;
  v48 = &v58;
  v19 = v10;
  v45 = v19;
  v49 = &v52;
  v20 = v16;
  v46 = v20;
  dispatch_sync(workQueue, block);
  if (*(v59 + 24) == 1)
  {
    v21 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v19 isUserInitiated];
      v23 = [v18 fbs_shortDescription];
      *buf = 67109378;
      *v67 = v22;
      *&v67[4] = 2114;
      *&v67[6] = v23;
      _os_log_impl(&dword_1A2DBB000, v21, OS_LOG_TYPE_DEFAULT, "Requesting uninstallation with prompt=%{BOOL}u of %{public}@ from install coordinator", buf, 0x12u);
    }

    if (FBSApplicationLibraryLogTransactionEnabled())
    {
      v24 = v53[5];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requesting uninstallation from install coordinator."];
      _FBSApplicationLibraryLogTransaction(0, 1, 1, v24, v25);
    }

    v26 = objc_alloc_init(getIXUninstallOptionsClass());
    [v26 setRequestUserConfirmation:{objc_msgSend(v19, "isUserInitiated")}];
    [v26 setShowArchiveOption:{objc_msgSend(v19, "showsArchiveOption")}];
    v27 = objc_alloc(getIXApplicationIdentityClass());
    v28 = [v27 initWithBundleIdentifier:v53[5]];
    IXAppInstallCoordinatorClass = getIXAppInstallCoordinatorClass();
    if (!IXAppInstallCoordinatorClass)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IXAppInstallCoordinator does not exist"];
      v31 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(a2);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138544642;
        *v67 = v33;
        *&v67[8] = 2114;
        *&v67[10] = v35;
        v68 = 2048;
        v69 = self;
        v70 = 2114;
        v71 = @"FBSApplicationLibrary.m";
        v72 = 1024;
        v73 = 384;
        v74 = 2114;
        v75 = v30;
        _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v36 = v30;
      [v30 UTF8String];
      _bs_set_crash_log_message();
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_109;
    v37[3] = &unk_1E76BF108;
    v37[4] = self;
    v38 = v18;
    v40 = &v52;
    v41 = v50;
    v42 = a2;
    v39 = v20;
    [IXAppInstallCoordinatorClass uninstallAppWithIdentity:v28 options:v26 completion:v37];
  }

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v58, 8);
}

void __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFailed])
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A588];
    v25[0] = @"InstallCoordination dropped uninstall completion block on the floor.";
    v24[0] = v5;
    v24[1] = @"FBSALIdentity";
    v6 = [*(a1 + 32) fbs_mediumDescription];
    v24[2] = *off_1E76BC958;
    v25[1] = v6;
    v25[2] = @"Failed";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v8 = [v4 errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:1 userInfo:v7];
  }

  else
  {
    v9 = [v3 context];
    v10 = objc_opt_class();
    v6 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v6;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v8 = v11;
  }

  if (v8)
  {
    v12 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) fbs_shortDescription];
      v14 = [v8 descriptionWithMultilinePrefix:0];
      *buf = 138412546;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_1A2DBB000, v12, OS_LOG_TYPE_DEFAULT, "Uninstallation of %@ completed with error: %{public}@", buf, 0x16u);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(*(a1 + 40) + 112);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_95;
    v17[3] = &unk_1E76BD750;
    v19 = v15;
    v18 = v8;
    dispatch_async(v16, v17);
  }
}

void __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_2(uint64_t a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_applicationForIdentity:?];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_placeholderForIdentity:?];
  v6 = *(*(*(a1 + 64) + 8) + 40);
  if (!(v6 | v5))
  {
    v7 = *(a1 + 56);
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v22[0] = @"No application or placeholder found.";
    v21[0] = v15;
    v21[1] = @"FBSALIdentity";
    v10 = [*(a1 + 40) fbs_mediumDescription];
    v21[2] = *off_1E76BC958;
    v22[1] = v10;
    v22[2] = @"Not Found";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v12 = v14;
    v13 = 2;
    goto LABEL_5;
  }

  if ([v6 _isPendingUninstall])
  {
    v7 = *(a1 + 56);
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A588];
    v24[0] = @"Uninstallation is already in progress.";
    v23[0] = v9;
    v23[1] = @"FBSALIdentity";
    v10 = [*(a1 + 40) fbs_mediumDescription];
    v23[2] = *off_1E76BC958;
    v24[1] = v10;
    v24[2] = @"In Progress";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v12 = v8;
    v13 = 3;
LABEL_5:
    v16 = [v12 errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:v13 userInfo:v11];
    [v7 signalWithContext:v16];

    goto LABEL_10;
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
  [*(*(*(a1 + 64) + 8) + 40) _setPendingUninstall:1];
  [*(*(*(a1 + 64) + 8) + 40) _setTentativeUninstall:{objc_msgSend(*(a1 + 48), "isUserInitiated")}];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v17 = *(*(*(a1 + 64) + 8) + 40);
  }

  else
  {
    v17 = v5;
  }

  v18 = [v17 bundleIdentifier];
  v19 = *(*(a1 + 80) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

LABEL_10:
}

void __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_109(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_2_110;
  block[3] = &unk_1E76BF0E0;
  v7 = v5;
  v16 = v7;
  v19 = a2;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  dispatch_sync(v6, block);
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = @"The user canceled uninstallation.";
      v8 = 5;
    }

    else
    {
      if (a2 != 2)
      {
        v14 = 0;
        goto LABEL_12;
      }

      v8 = 4;
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:4 userInfo:0];

      v10 = @"The application was instead archived.";
      v7 = v9;
    }
  }

  else
  {
    if (!v7)
    {
      __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_109_cold_1(a1, (a1 + 32));
    }

    v10 = @"InstallCoordination reurned an error.";
    v8 = 1;
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  [v11 setObject:v10 forKey:*MEMORY[0x1E696A588]];
  if (v7)
  {
    [v11 setObject:v7 forKey:*MEMORY[0x1E696AA08]];
  }

  v12 = [*(a1 + 40) fbs_mediumDescription];
  [v11 setObject:v12 forKey:@"FBSALIdentity"];

  v13 = FBSApplicationLibraryErrorCodeDescription(v8);
  [v11 setObject:v13 forKey:*off_1E76BC958];

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:v8 userInfo:v11];

LABEL_12:
  [*(a1 + 48) signalWithContext:v14];
}

uint64_t __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_2_110(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = FBSLogApplicationLibrary();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 40) fbs_shortDescription];
      v6 = [*(a1 + 32) succinctDescription];
      v13 = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "Install coordinator reported an error for uninstallation of %{public}@: %{public}@", &v13, 0x16u);
    }

    if (FBSApplicationLibraryLogTransactionEnabled())
    {
      v7 = @"IX uninstallation failed.";
LABEL_10:
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v7];
      _FBSApplicationLibraryLogTransaction(0, 2, v2 == 0, v10, v11);
    }
  }

  else
  {
    if (v4)
    {
      v8 = soft_IXStringForUninstallDisposition(*(a1 + 64));
      v9 = [*(a1 + 40) fbs_shortDescription];
      v13 = 138412546;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "Install coordinator reported success with disposition %@ for %{public}@", &v13, 0x16u);
    }

    if (FBSApplicationLibraryLogTransactionEnabled())
    {
      v7 = @"IX uninstallation succeeded.";
      goto LABEL_10;
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) _setPendingUninstall:0];
  return [*(*(*(a1 + 56) + 8) + 40) _setTentativeUninstall:0];
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__FBSApplicationLibrary_description__block_invoke;
  v5[3] = &unk_1E76BD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__FBSApplicationLibrary_description__block_invoke(uint64_t a1)
{
  v10 = [off_1E76BC9B0 builderWithObject:*(a1 + 32)];
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = [v10 appendObject:v2 withName:@"placeholders"];

  v4 = [*(*(a1 + 32) + 64) allValues];
  v5 = [v10 appendObject:v4 withName:@"applications"];

  v6 = [v10 appendBool:*(*(a1 + 32) + 48) withName:@"usingNetwork"];
  v7 = [v10 build];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)removeObserverForToken:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observerQueue = self->_observerQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__FBSApplicationLibrary_removeObserverForToken___block_invoke;
    v7[3] = &unk_1E76BCD60;
    v7[4] = self;
    v8 = v4;
    dispatch_async(observerQueue, v7);
  }
}

void __48__FBSApplicationLibrary_removeObserverForToken___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  if (![*(*(a1 + 32) + 32) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
  }
}

- (id)observeDidAddPlaceholdersWithBlock:(id)a3
{
  v4 = MEMORY[0x1A58E80F0](a3, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (void)_observeType:(void *)a3 withBlock:
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && v5)
  {
    v8 = [v5 copy];
    v9 = objc_opt_new();
    v9[1] = a2;
    v10 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__FBSApplicationLibrary__observeType_withBlock___block_invoke;
    block[3] = &unk_1E76BF150;
    block[4] = a1;
    v15 = v8;
    v7 = v9;
    v14 = v7;
    v11 = v8;
    dispatch_async(v10, block);
  }

  return v7;
}

- (id)observeDidCancelPlaceholdersWithBlock:(id)a3
{
  v4 = MEMORY[0x1A58E80F0](a3, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidAddApplicationsWithBlock:(id)a3
{
  v4 = MEMORY[0x1A58E80F0](a3, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidReplaceApplicationsWithBlock:(id)a3
{
  v4 = MEMORY[0x1A58E80F0](a3, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidUpdateApplicationsWithBlock:(id)a3
{
  v4 = MEMORY[0x1A58E80F0](a3, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidRemoveApplicationsWithBlock:(id)a3
{
  v4 = MEMORY[0x1A58E80F0](a3, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidDemoteApplicationsWithBlock:(id)a3
{
  v4 = MEMORY[0x1A58E80F0](a3, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidChangeNetworkUsageWithBlock:(id)a3
{
  v4 = MEMORY[0x1A58E80F0](a3, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (void)addApplicationRecord:(id)a3
{
  v4 = [a3 fbs_correspondingApplicationProxy];
  [(FBSApplicationLibrary *)self addApplicationProxy:v4 withOverrideURL:0];
}

- (void)addApplicationProxy:(id)a3 withOverrideURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBSApplicationLibrary addApplicationProxy:a2 withOverrideURL:?];
  }

  if (v8)
  {
    [FBSApplicationLibrary addApplicationProxy:a2 withOverrideURL:?];
  }

  workQueue = self->_workQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__FBSApplicationLibrary_addApplicationProxy_withOverrideURL___block_invoke;
  v11[3] = &unk_1E76BCD60;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(workQueue, v11);
}

- (void)_reloadPlaceholdersNotificationFired
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__FBSApplicationLibrary__reloadPlaceholdersNotificationFired__block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __61__FBSApplicationLibrary__reloadPlaceholdersNotificationFired__block_invoke(uint64_t a1)
{
  v2 = FBSLogApplicationLibrary();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2DBB000, v2, OS_LOG_TYPE_INFO, "Reloading all progress for placeholders...", v4, 2u);
  }

  return [*(*(a1 + 32) + 72) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_22];
}

- (void)_executeOrPendInstallSynchronizationBlock:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__FBSApplicationLibrary__executeOrPendInstallSynchronizationBlock___block_invoke;
    v6[3] = &unk_1E76BD750;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __67__FBSApplicationLibrary__executeOrPendInstallSynchronizationBlock___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 40) copy];
  v2 = *(*(a1 + 32) + 96);
  v3 = MEMORY[0x1A58E80F0]();
  [v2 addObject:v3];

  [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_executeInstallSynchronizationBlocksIfAppropriate];
}

void __48__FBSApplicationLibrary__observeType_withBlock___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:1];
    v4 = a1[4];
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1[4] + 32);
  }

  v6 = MEMORY[0x1A58E80F0](a1[6]);
  [v2 setObject:v6 forKey:a1[5]];
}

void __71__FBSApplicationLibrary__notifyForType_synchronously_withCastingBlock___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v3 = a1[4];
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__FBSApplicationLibrary__notifyForType_synchronously_withCastingBlock___block_invoke_2;
  block[3] = &unk_1E76BF178;
  v5 = a1[6];
  block[4] = v3;
  v18 = v5;
  v6 = v2;
  v17 = v6;
  dispatch_sync(v4, block);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(a1[5] + 16))(a1[5]);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v9);
  }
}

void __71__FBSApplicationLibrary__notifyForType_synchronously_withCastingBlock___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(*(&v11 + 1) + 8 * v6) + 8) == a1[6])
        {
          v7 = [*(a1[4] + 32) objectForKey:v11];
          v8 = v7;
          if (v7)
          {
            v9 = a1[5];
            v10 = MEMORY[0x1A58E80F0](v7);
            [v9 addObject:v10];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (id)_identitiesForProxy:(void *)a3 outRecord:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      [FBSApplicationLibrary _identitiesForProxy:? outRecord:?];
    }

    v7 = [v5 fbs_correspondingApplicationRecord];
    v8 = v7;
    if (a3)
    {
      v9 = v7;
      *a3 = v8;
    }

    if (v8)
    {
      v10 = [a1[1] isPersonaAware];
      v11 = [v8 identities];
      a1 = v11;
      if ((v10 & 1) == 0)
      {
        v12 = [v11 firstObject];
        v15[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

        a1 = v13;
      }
    }

    else
    {
      a1 = MEMORY[0x1E695E0F0];
    }
  }

  return a1;
}

void __30__FBSApplicationLibrary__load__block_invoke_183(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndex:a2];
  if (_proxyPassesInclusionFilter(v3, *(a1 + 64), *(a1 + 40)))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(a1 + 48);
    v14 = 0;
    v5 = [(FBSApplicationLibrary *)v4 _identitiesForProxy:v3 outRecord:&v14];
    v6 = v14;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (_proxyPassesIdentityFilter(v11, v6, *(a1 + 72), *(a1 + 40)))
          {
            v12 = [v6 fbs_processIdentityForApplicationIdentity:v11];
            v13 = [objc_alloc(*(a1 + 80)) _initWithApplicationProxy:v3 record:v6 appIdentity:v11 processIdentity:v12 overrideURL:0];
            os_unfair_lock_lock(&FBSApplicationLibraryErrorIdentityKey_block_invoke___ApplicationLock);
            [*(a1 + 56) addObject:v13];
            os_unfair_lock_unlock(&FBSApplicationLibraryErrorIdentityKey_block_invoke___ApplicationLock);
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

void __30__FBSApplicationLibrary__load__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndex:a2];
  if (_proxyPassesInclusionFilter(v3, *(a1 + 56), 0))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = *(a1 + 40);
    v13 = 0;
    v5 = [(FBSApplicationLibrary *)v4 _identitiesForProxy:v3 outRecord:&v13];
    v6 = v13;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (_proxyPassesIdentityFilter(v11, v6, *(a1 + 64), 0))
          {
            v12 = [objc_alloc(*(a1 + 72)) _initWithApplicationProxy:v3 identity:v11];
            os_unfair_lock_lock(&FBSApplicationLibraryErrorIdentityKey_block_invoke___PlaceholderLock);
            [*(a1 + 48) addObject:v12];
            os_unfair_lock_unlock(&FBSApplicationLibraryErrorIdentityKey_block_invoke___PlaceholderLock);
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

void __30__FBSApplicationLibrary__load__block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_addApplication:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_addPlaceholder:?];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_workQueue_addApplication:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Fbsapplication_18.isa);
    if (!v5)
    {
      [FBSApplicationLibrary _workQueue_addApplication:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSApplicationLibrary _workQueue_addApplication:?];
    }

    v6 = [v5 applicationIdentity];
    v7 = [v6 identityString];
    v8 = [*(a1 + 64) objectForKey:v7];

    if (v8)
    {
      [(FBSApplicationLibrary *)v7 _workQueue_addApplication:?];
    }

    [*(a1 + 64) setObject:v5 forKey:v7];
    [(FBSApplicationLibrary *)a1 _workQueue_didAddBundleInfo:v5];
    v9 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 succinctDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "Added application: %@", &v11, 0xCu);
    }
  }
}

- (void)_workQueue_addPlaceholder:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Fbsapplication_2.isa);
    if (!v5)
    {
      [FBSApplicationLibrary _workQueue_addPlaceholder:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSApplicationLibrary _workQueue_addPlaceholder:?];
    }

    v6 = [v5 applicationIdentity];
    v7 = [v6 identityString];
    v8 = [*(a1 + 72) objectForKey:v7];

    if (v8)
    {
      [(FBSApplicationLibrary *)v7 _workQueue_addPlaceholder:?];
    }

    [*(a1 + 72) setObject:v5 forKey:v7];
    [v5 setAppLibrary:a1];
    [(FBSApplicationLibrary *)a1 _workQueue_didAddBundleInfo:v5];
    v9 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 succinctDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "Added placeholder: %@", &v11, 0xCu);
    }
  }
}

- (void)applicationInstallsDidStart:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v4)
  {
    v6 = *v37;
    *&v5 = 136315394;
    v21 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v36 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = v21;
          *&buf[4] = "[FBSApplicationLibrary applicationInstallsDidStart:]";
          *&buf[12] = 2114;
          *&buf[14] = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v4);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__8;
  v42 = __Block_byref_object_dispose__8;
  v43 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  workQueue = self->_workQueue;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __53__FBSApplicationLibrary_applicationInstallsDidStart___block_invoke;
  v25 = &unk_1E76BF210;
  v12 = v3;
  v26 = v12;
  v27 = self;
  v28 = buf;
  v29 = &v30;
  dispatch_sync(workQueue, &block);
  if ([v31[5] count])
  {
    [(FBSApplicationLibrary *)self _notifyDidAddPlaceholders:?];
  }

  if ([*(*&buf[8] + 40) count])
  {
    [(FBSApplicationLibrary *)self _notifyDidDemoteApplications:v13, v14, v15, v16, v17, v18, v19, self, v21, *(&v21 + 1), block, v23, v24, v25];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);
}

void __53__FBSApplicationLibrary_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v17 = *v25;
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * v4);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [(FBSApplicationLibrary *)*(a1 + 40) _identitiesForProxy:v5 outRecord:0];
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            v10 = 0;
            do
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * v10);
              if (FBSInstallTypeIsCloudDemoted([v5 installType]))
              {
                __53__FBSApplicationLibrary_applicationInstallsDidStart___block_invoke_cold_1((a1 + 40), v11, a1 + 48, &v19);
              }

              v12 = [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_placeholderForIdentity:v11];
              if (v12)
              {
                v13 = v12;
                [v12 _setProxy:v5];
                [v13 _noteChangedSignificantly];
              }

              else
              {
                v13 = [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_addPlaceholderWithIdentity:v11 forProxy:v5];
                v14 = *(*(a1 + 56) + 8);
                v18 = *(v14 + 40);
                _addResultToArrayCreatingArrayIfNecessary(&v18, v13);
                objc_storeStrong((v14 + 40), v18);
              }

              ++v10;
            }

            while (v8 != v10);
            v15 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            v8 = v15;
          }

          while (v15);
        }

        ++v4;
      }

      while (v4 != v3);
      v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v3);
  }
}

- (void)applicationInstallsDidChange:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v22 = "[FBSApplicationLibrary applicationInstallsDidChange:]";
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_INFO, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FBSApplicationLibrary_applicationInstallsDidChange___block_invoke;
  block[3] = &unk_1E76BCD60;
  v15 = v3;
  v16 = self;
  v12 = v3;
  dispatch_async(workQueue, block);
}

void __54__FBSApplicationLibrary_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v16 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v16)
  {
    v15 = *v23;
    do
    {
      v2 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v2;
        v3 = *(*(&v22 + 1) + 8 * v2);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v4 = [(FBSApplicationLibrary *)*(a1 + 40) _identitiesForProxy:v3 outRecord:0];
        v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v19;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v19 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v18 + 1) + 8 * i);
              v10 = [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_placeholderForIdentity:v9];
              v11 = v10;
              if (v10)
              {
                [v10 _setProxy:v3];
              }

              else
              {
                v12 = FBSLogApplicationLibrary();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = [v9 fbs_shortDescription];
                  *buf = 138543362;
                  v27 = v13;
                  _os_log_impl(&dword_1A2DBB000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring install did change unknown placeholder %{public}@", buf, 0xCu);
                }
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
          }

          while (v6);
        }

        v2 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v16);
  }
}

- (void)applicationInstallsDidUpdateIcon:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v22 = "[FBSApplicationLibrary applicationInstallsDidUpdateIcon:]";
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FBSApplicationLibrary_applicationInstallsDidUpdateIcon___block_invoke;
  block[3] = &unk_1E76BCD60;
  v15 = v3;
  v16 = self;
  v12 = v3;
  dispatch_async(workQueue, block);
}

void __58__FBSApplicationLibrary_applicationInstallsDidUpdateIcon___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v7 = [(FBSApplicationLibrary *)*(a1 + 40) _identitiesForProxy:v6 outRecord:0];
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          do
          {
            v11 = 0;
            do
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_placeholderForIdentity:?];
              v13 = v12;
              if (v12)
              {
                [v12 _setProxy:v6];
                [v13 _noteChangedSignificantly];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v3);
  }
}

- (void)applicationsDidInstall:(id)a3
{
  v24 = a2;
  v26 = self;
  v67 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v4)
  {
    v6 = *v59;
    *&v5 = 136315394;
    v27 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v59 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = v27;
          *&buf[4] = "[FBSApplicationLibrary applicationsDidInstall:]";
          *&buf[12] = 2114;
          *&buf[14] = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        v11 = [v8 appState];
        v12 = [v11 isPlaceholder];

        if (v12)
        {
          [(FBSApplicationLibrary *)v8 applicationsDidInstall:v24];
        }

        v13 = [v8 appState];
        v14 = [v13 isInstalled];

        if ((v14 & 1) == 0)
        {
          [(FBSApplicationLibrary *)v8 applicationsDidInstall:v24];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v4);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v63 = __Block_byref_object_copy__8;
  v64 = __Block_byref_object_dispose__8;
  v65 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__8;
  v56 = __Block_byref_object_dispose__8;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__8;
  v50 = __Block_byref_object_dispose__8;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__8;
  v44 = __Block_byref_object_dispose__8;
  v45 = 0;
  workQueue = v26->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FBSApplicationLibrary_applicationsDidInstall___block_invoke;
  block[3] = &unk_1E76BF238;
  block[4] = v26;
  v16 = v3;
  v35 = v16;
  v36 = &v46;
  v37 = &v52;
  v38 = buf;
  v39 = &v40;
  dispatch_sync(workQueue, block);
  if ([v47[5] count])
  {
    [(FBSApplicationLibrary *)v26 _notifyDidCancelPlaceholders:?];
  }

  if ([v53[5] count])
  {
    [(FBSApplicationLibrary *)v26 _notifyDidRemoveApplications:v17, v18, v19, v20, v21, v22, v25, v26, v27, *(&v27 + 1), v28, v29, v30, v31];
  }

  if ([*(*&buf[8] + 40) count])
  {
    [(FBSApplicationLibrary *)v26 _notifyDidAddApplications:?];
  }

  if ([v41[5] count])
  {
    [(FBSApplicationLibrary *)v26 _notifyDidReplaceApplications:?];
  }

  v23 = v26->_workQueue;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __48__FBSApplicationLibrary_applicationsDidInstall___block_invoke_241;
  v32 = &unk_1E76BCDB0;
  v33 = v26;
  dispatch_sync(v23, &v29);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(buf, 8);
}

- (void)applicationsDidUninstall:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v4)
  {
    v6 = *v41;
    *&v5 = 136315394;
    v23 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = v23;
          *&buf[4] = "[FBSApplicationLibrary applicationsDidUninstall:]";
          *&buf[12] = 2114;
          *&buf[14] = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v4);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__8;
  v46 = __Block_byref_object_dispose__8;
  v47 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__8;
  v38 = __Block_byref_object_dispose__8;
  v39 = 0;
  v11 = self;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FBSApplicationLibrary_applicationsDidUninstall___block_invoke;
  block[3] = &unk_1E76BF210;
  block[4] = self;
  v13 = v3;
  v31 = v13;
  v32 = &v34;
  v33 = buf;
  dispatch_sync(workQueue, block);
  if ([*(*&buf[8] + 40) count])
  {
    [(FBSApplicationLibrary *)self _notifyDidCancelPlaceholders:?];
  }

  if ([v35[5] count])
  {
    [(FBSApplicationLibrary *)self _notifyDidRemoveApplications:v14, v15, v16, v17, v18, v19, v21, self, v23, *(&v23 + 1), v24, v25, v26, v27];
  }

  v20 = v11->_workQueue;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __50__FBSApplicationLibrary_applicationsDidUninstall___block_invoke_2;
  v28 = &unk_1E76BCDB0;
  v29 = v11;
  dispatch_sync(v20, &v25);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_handleApplicationStateDidChange:(int)a3 notifyForUpdateInsteadOfReplacement:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__8;
    v60 = __Block_byref_object_dispose__8;
    v61 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__8;
    v54 = __Block_byref_object_dispose__8;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__8;
    v48 = __Block_byref_object_dispose__8;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__8;
    v42 = __Block_byref_object_dispose__8;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__8;
    v36 = __Block_byref_object_dispose__8;
    v37 = 0;
    v7 = *(a1 + 40);
    block = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __94__FBSApplicationLibrary__handleApplicationStateDidChange_notifyForUpdateInsteadOfReplacement___block_invoke;
    v24 = &unk_1E76BF260;
    v25 = a1;
    v26 = v5;
    v27 = &v50;
    v28 = &v38;
    v29 = &v32;
    v30 = &v44;
    v31 = &v56;
    dispatch_sync(v7, &block);
    if ([v57[5] count])
    {
      [(FBSApplicationLibrary *)a1 _notifyDidAddPlaceholders:?];
    }

    if ([v51[5] count])
    {
      [(FBSApplicationLibrary *)a1 _notifyDidCancelPlaceholders:?];
    }

    if ([v45[5] count])
    {
      [(FBSApplicationLibrary *)a1 _notifyDidAddApplications:?];
    }

    if ([v39[5] count])
    {
      [(FBSApplicationLibrary *)a1 _notifyDidRemoveApplications:v8, v9, v10, v11, v12, v13, v16, v17, v18, v19, v20, block, v22, v23];
    }

    if ([v33[5] count])
    {
      v14 = v33[5];
      if (a3)
      {
        [(FBSApplicationLibrary *)a1 _notifyDidUpdateApplications:v14];
      }

      else
      {
        [(FBSApplicationLibrary *)a1 _notifyDidReplaceApplications:v14];
      }
    }

    v15 = *(a1 + 40);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __94__FBSApplicationLibrary__handleApplicationStateDidChange_notifyForUpdateInsteadOfReplacement___block_invoke_242;
    v19 = &unk_1E76BCDB0;
    v20 = a1;
    dispatch_sync(v15, &v16);

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v50, 8);

    _Block_object_dispose(&v56, 8);
  }
}

- (void)applicationStateDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v17 = "[FBSApplicationLibrary applicationStateDidChange:]";
          v18 = 2114;
          v19 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  [(FBSApplicationLibrary *)self _handleApplicationStateDidChange:v3 notifyForUpdateInsteadOfReplacement:0];
}

- (void)networkUsageChanged:(BOOL)a3
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__FBSApplicationLibrary_networkUsageChanged___block_invoke;
  v4[3] = &unk_1E76BF288;
  v4[4] = self;
  v5 = a3;
  dispatch_async(workQueue, v4);
}

- (void)deviceManagementPolicyDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v17 = "[FBSApplicationLibrary deviceManagementPolicyDidChange:]";
          v18 = 2114;
          v19 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  [(FBSApplicationLibrary *)self _handleApplicationStateDidChange:v3 notifyForUpdateInsteadOfReplacement:1];
}

- (void)applicationsDidChangePersonas:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v17 = "[FBSApplicationLibrary applicationsDidChangePersonas:]";
          v18 = 2114;
          v19 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  [(FBSApplicationLibrary *)self _handleApplicationStateDidChange:v3 notifyForUpdateInsteadOfReplacement:0];
}

- (void)applicationInstallsArePrioritized:(id)a3 arePaused:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 bundleIdentifier];
          *buf = 136315394;
          v33 = "[FBSApplicationLibrary applicationInstallsArePrioritized:arePaused:]";
          v34 = 2114;
          v35 = v12;
          _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@ (prioritized)", buf, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v7);
  }

  v22 = v5;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v21;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        v19 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v18 bundleIdentifier];
          *buf = 136315394;
          v33 = "[FBSApplicationLibrary applicationInstallsArePrioritized:arePaused:]";
          v34 = 2114;
          v35 = v20;
          _os_log_impl(&dword_1A2DBB000, v19, OS_LOG_TYPE_DEFAULT, "%s %{public}@ (paused)", buf, 0x16u);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }
}

- (void)applicationInstallsDidPause:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v16 = "[FBSApplicationLibrary applicationInstallsDidPause:]";
          v17 = 2114;
          v18 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)applicationInstallsDidResume:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v16 = "[FBSApplicationLibrary applicationInstallsDidResume:]";
          v17 = 2114;
          v18 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)applicationInstallsDidCancel:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v16 = "[FBSApplicationLibrary applicationInstallsDidCancel:]";
          v17 = 2114;
          v18 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)applicationInstallsDidPrioritize:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v16 = "[FBSApplicationLibrary applicationInstallsDidPrioritize:]";
          v17 = 2114;
          v18 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)applicationsWillInstall:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[FBSApplicationLibrary applicationsWillInstall:]";
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__FBSApplicationLibrary_applicationsWillInstall___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v15 = v3;
  v12 = v3;
  dispatch_sync(workQueue, block);
}

- (void)applicationsDidFailToInstall:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[FBSApplicationLibrary applicationsDidFailToInstall:]";
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FBSApplicationLibrary_applicationsDidFailToInstall___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v15 = v3;
  v12 = v3;
  dispatch_sync(workQueue, block);
}

- (void)applicationsWillUninstall:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[FBSApplicationLibrary applicationsWillUninstall:]";
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FBSApplicationLibrary_applicationsWillUninstall___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v15 = v3;
  v12 = v3;
  dispatch_sync(workQueue, block);
}

- (void)applicationsDidFailToUninstall:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = FBSLogApplicationLibraryObserver();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[FBSApplicationLibrary applicationsDidFailToUninstall:]";
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__FBSApplicationLibrary_applicationsDidFailToUninstall___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v15 = v3;
  v12 = v3;
  dispatch_sync(workQueue, block);
}

- (id)applicationInfoForBundleIdentifier:(id)a3
{
  v3 = [(FBSApplicationLibrary *)self installedApplicationsForBundleIdentifier:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)applicationInfoForAuditToken:(id)a3
{
  v4 = [a3 bundleID];
  v5 = [(FBSApplicationLibrary *)self applicationInfoForBundleIdentifier:v4];

  return v5;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    self->_lock_invalidated = 1;
    v3 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = self;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "FBSApplicationLibrary<%p> invalidated", &v6, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MISProvisioningProfileInstalled", 0);
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MISProvisioningProfileRemoved", 0);
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self];

    [(LSApplicationWorkspace *)self->_applicationWorkspace removeObserver:self];
    [(BSInvalidatable *)self->_stateCaptureAssertion invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_load
{
  if (a1)
  {
    OUTLINED_FUNCTION_13_1();
    v4 = 3221225472;
    v5 = __30__FBSApplicationLibrary__load__block_invoke;
    v6 = &unk_1E76BCDB0;
    v7 = v1;
    dispatch_sync(v2, block);
  }
}

- (void)_workQueue_addApplicationProxy:(uint64_t)a1
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    BSDispatchQueueAssert();
  }
}

- (id)_workQueue_currentProcessProxyWithOutURL:(uint64_t)a1
{
  if (a1)
  {
    BSDispatchQueueAssert();
  }

  return 0;
}

- (void)_notifyForType:(int)a3 synchronously:(void *)a4 withCastingBlock:
{
  v7 = a4;
  if (a1)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_16();
    v10 = __71__FBSApplicationLibrary__notifyForType_synchronously_withCastingBlock___block_invoke;
    v11 = &unk_1E76BEA50;
    v12 = a1;
    v14 = a2;
    v13 = v7;
    v8 = MEMORY[0x1A58E80F0](v9);
    if (a3)
    {
      BSDispatchQueueAssertNot();
    }

    dispatch_async(*(a1 + 104), v8);
  }
}

- (void)_notifyDidRemoveApplications:(uint64_t)a3
{
  OUTLINED_FUNCTION_15_0();
  v18 = v17;
  v20 = v19;
  if (v18)
  {
    v21 = FBSLogApplicationLibrary();
    if (OUTLINED_FUNCTION_32(v21))
    {
      OUTLINED_FUNCTION_37(5.8381e-34);
      OUTLINED_FUNCTION_11_2(&dword_1A2DBB000, v22, v23, "Notifying observers of applications removed: %{public}@");
    }

    OUTLINED_FUNCTION_5_6();
    v24 = v20;
    if (OUTLINED_FUNCTION_8_3(v24, v25, v26, v27, v28, v29, v30, v31))
    {
      OUTLINED_FUNCTION_3_4();
      do
      {
        OUTLINED_FUNCTION_7_1();
        if (!v32)
        {
          objc_enumerationMutation(v16);
        }

        v33 = *a16;
        if (FBSApplicationLibraryLogTransactionEnabled())
        {
          v34 = [v33 bundleIdentifier];
          v35 = [OUTLINED_FUNCTION_24() stringWithFormat:?];
          OUTLINED_FUNCTION_9_3(12);
        }

        OUTLINED_FUNCTION_21_0();
      }

      while (!v32 || OUTLINED_FUNCTION_10_2(v36, v37, v38, v39, v40, v41));
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_16();
    v42 = v16;
    v43 = OUTLINED_FUNCTION_6_1();
    [(FBSApplicationLibrary *)v43 _notifyForType:1 synchronously:v44 withCastingBlock:?];
  }

  OUTLINED_FUNCTION_18_0();
}

- (void)_notifyDidDemoteApplications:(uint64_t)a3
{
  OUTLINED_FUNCTION_15_0();
  v18 = v17;
  v20 = v19;
  if (v18)
  {
    v21 = FBSLogApplicationLibrary();
    if (OUTLINED_FUNCTION_32(v21))
    {
      OUTLINED_FUNCTION_37(5.8381e-34);
      OUTLINED_FUNCTION_11_2(&dword_1A2DBB000, v22, v23, "Notifying observers of applications demoted: %{public}@");
    }

    OUTLINED_FUNCTION_5_6();
    v24 = v20;
    if (OUTLINED_FUNCTION_8_3(v24, v25, v26, v27, v28, v29, v30, v31))
    {
      OUTLINED_FUNCTION_3_4();
      do
      {
        OUTLINED_FUNCTION_7_1();
        if (!v32)
        {
          objc_enumerationMutation(v16);
        }

        v33 = *a16;
        if (FBSApplicationLibraryLogTransactionEnabled())
        {
          v34 = [v33 bundleIdentifier];
          v35 = [OUTLINED_FUNCTION_24() stringWithFormat:?];
          OUTLINED_FUNCTION_9_3(13);
        }

        OUTLINED_FUNCTION_21_0();
      }

      while (!v32 || OUTLINED_FUNCTION_10_2(v36, v37, v38, v39, v40, v41));
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_16();
    v42 = v16;
    v43 = OUTLINED_FUNCTION_6_1();
    [(FBSApplicationLibrary *)v43 _notifyForType:1 synchronously:v44 withCastingBlock:?];
  }

  OUTLINED_FUNCTION_18_0();
}

- (void)_notifyDidChangeNetworkUsage:(uint64_t)a1
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = FBSLogApplicationLibrary();
    if (OUTLINED_FUNCTION_32(v5))
    {
      *buf = 67109120;
      v11 = a2;
      _os_log_impl(&dword_1A2DBB000, v2, OS_LOG_TYPE_INFO, "Notifying observers of network usage changed: usingNetwork=%d", buf, 8u);
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_16();
    v7 = __54__FBSApplicationLibrary__notifyDidChangeNetworkUsage___block_invoke;
    v8 = &__block_descriptor_33_e8_v16__0_8l;
    v9 = a2;
    [(FBSApplicationLibrary *)a1 _notifyForType:0 synchronously:v6 withCastingBlock:?];
  }
}

void __30__FBSApplicationLibrary__load__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = FBSLogApplicationLibrary();
  if (OUTLINED_FUNCTION_54(v3))
  {
    *buf = 0;
    OUTLINED_FUNCTION_43();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  [*(*(a1 + 32) + 16) addObserver:?];
  BSContinuousMachTimeNow();
}

- (id)_workQueue_addPlaceholderWithIdentity:(void *)a3 forProxy:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 appState];
    v9 = [v8 isPlaceholder];

    if (v9)
    {
      v10 = OUTLINED_FUNCTION_44();
      v13 = [(FBSApplicationLibrary *)v10 _identitiesForProxy:v11 outRecord:v12];
      v14 = 0;
      v15 = [v13 containsObject:v5];

      if (v15)
      {
        v17 = OUTLINED_FUNCTION_44();
        if ([(FBSApplicationLibrary *)v17 _workQueue_placeholderPassesFilter:v18 record:v14 identity:v5])
        {
          v19 = objc_autoreleasePoolPush();
          [objc_alloc(objc_msgSend(a1[1] "applicationPlaceholderClass"))];
          v20 = OUTLINED_FUNCTION_26();
          [(FBSApplicationLibrary *)v20 _workQueue_addPlaceholder:?];
          objc_autoreleasePoolPop(v19);
        }

        else
        {
          v21 = FBSLogApplicationLibrary();
          if (OUTLINED_FUNCTION_38(v21))
          {
            v22 = [v5 fbs_shortDescription];
            v25 = 138412290;
            v26 = v22;
            OUTLINED_FUNCTION_22(&dword_1A2DBB000, v23, v24, "Not creating placeholder because it is filtered: %@", &v25);
          }
        }
      }
    }
  }

  return 0;
}

- (id)_workQueue_addApplicationWithIdentity:(void *)a3 forProxy:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 appState];
    v9 = [v8 isInstalled];

    if (v9)
    {
      v10 = OUTLINED_FUNCTION_44();
      v13 = [(FBSApplicationLibrary *)v10 _identitiesForProxy:v11 outRecord:v12];
      v14 = 0;
      v15 = [v13 containsObject:v5];

      if (v15)
      {
        v17 = OUTLINED_FUNCTION_44();
        if ([(FBSApplicationLibrary *)v17 _workQueue_applicationPassesFilter:v18 record:v14 identity:v5])
        {
          v19 = objc_autoreleasePoolPush();
          v20 = [v14 fbs_processIdentityForApplicationIdentity:v5];
          [objc_alloc(objc_msgSend(a1[1] "applicationInfoClass"))];
          v21 = OUTLINED_FUNCTION_26();
          [(FBSApplicationLibrary *)v21 _workQueue_addApplication:?];

          objc_autoreleasePoolPop(v19);
        }

        else
        {
          v22 = FBSLogApplicationLibrary();
          if (OUTLINED_FUNCTION_38(v22))
          {
            v23 = [v5 fbs_shortDescription];
            v26 = 138412290;
            v27 = v23;
            OUTLINED_FUNCTION_22(&dword_1A2DBB000, v24, v25, "Not creating app because it is filtered: %@", &v26);
          }
        }
      }
    }
  }

  return 0;
}

- (uint64_t)_workQueue_applicationPassesFilter:(void *)a3 record:(void *)a4 identity:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = *(a1 + 8);
    v10 = a2;
    v11 = [v9 installedApplicationFilter];
    v12 = _proxyPassesInclusionFilter(v10, v11, *(a1 + 80));

    v13 = 0;
    if (v7 && v8)
    {
      v14 = [*(a1 + 8) applicationIdentityFilter];
      v13 = _proxyPassesIdentityFilter(v8, v7, v14, *(a1 + 80));
    }

    a1 = v12 & v13;
  }

  return a1;
}

- (void)_workQueue_didAddBundleInfo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = [v3 bundleIdentifier];
    v5 = [*(a1 + 56) objectForKey:v4];
    if (!v5)
    {
      v5 = objc_opt_new();
      [*(a1 + 56) setObject:v5 forKey:v4];
    }

    v6 = [v7 applicationIdentity];
    [v5 addObject:v6];

    v3 = v7;
  }
}

- (uint64_t)_workQueue_placeholderPassesFilter:(void *)a3 record:(void *)a4 identity:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = *(a1 + 8);
    v10 = a2;
    v11 = [v9 placeholderFilter];
    v12 = _proxyPassesInclusionFilter(v10, v11, 0);

    v13 = 0;
    if (v7 && v8)
    {
      v14 = [*(a1 + 8) placeholderIdentityFilter];
      v13 = _proxyPassesIdentityFilter(v8, v7, v14, 0);
    }

    a1 = v12 & v13;
  }

  return a1;
}

- (id)_workQueue_removeApplicationForIdentity:(id *)a1
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [(FBSApplicationLibrary *)a1 _workQueue_applicationForIdentity:v5];
    if (v6)
    {
      v8 = FBSLogApplicationLibrary();
      if (OUTLINED_FUNCTION_38(v8))
      {
        v3 = [v6 succinctDescription];
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_22(&dword_1A2DBB000, v9, v10, "Removed application: %@", v11);
      }

      [v5 identityString];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_26() removeObjectForKey:v3];

      [(FBSApplicationLibrary *)a1 _workQueue_didRemoveBundleInfo:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_workQueue_didRemoveBundleInfo:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v11 = v3;
    v4 = [v3 applicationIdentity];
    v5 = [v4 identityString];
    v6 = [a1[8] objectForKey:v5];

    v7 = [a1[9] objectForKey:v5];
    v8 = v6 | v7;

    if (!v8)
    {
      v9 = [v11 bundleIdentifier];
      v10 = [a1[7] objectForKey:v9];
      [v10 removeObject:v4];
      if (![v10 count])
      {
        [a1[7] removeObjectForKey:v9];
      }
    }

    v3 = v11;
  }
}

- (id)_workQueue_removePlaceholderForIdentity:(id *)a1
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [(FBSApplicationLibrary *)a1 _workQueue_placeholderForIdentity:v5];
    if (v6)
    {
      v8 = FBSLogApplicationLibrary();
      if (OUTLINED_FUNCTION_38(v8))
      {
        v3 = [v6 succinctDescription];
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_22(&dword_1A2DBB000, v9, v10, "Removed placeholder: %@", v11);
      }

      [v5 identityString];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_26() removeObjectForKey:v3];

      [v6 setAppLibrary:0];
      [(FBSApplicationLibrary *)a1 _workQueue_didRemoveBundleInfo:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_workQueue_applicationsForProxies:
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v39[16] = *MEMORY[0x1E69E9840];
  v3 = v2;
  v28 = v3;
  if (v1)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v4;
    v8 = OUTLINED_FUNCTION_55(v6, v7, &v34, v39);
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
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v13 = [(FBSApplicationLibrary *)v1 _identitiesForProxy:v12 outRecord:0];
          v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v31 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [(FBSApplicationLibrary *)v1 _workQueue_applicationForIdentity:?];
                if (v18)
                {
                  [v5 addObject:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v15);
          }
        }

        v9 = OUTLINED_FUNCTION_52(v19, v20, &v34, v39, v21, v22, v23, v24, v28, obj);
      }

      while (v9);
    }
  }

  OUTLINED_FUNCTION_47();

  return v25;
}

- (uint64_t)_workQueue_applicationNeedsRegeneration:(void *)a3 fromProxy:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      v8 = [v6 bundleURL];
      v9 = [v8 path];

      v10 = [v5 bundleURL];
      v11 = [v10 path];
      v12 = [v9 isEqual:v11];

      if (v12)
      {
        [v5 lastModifiedDate];
        BSModificationDateForPath();
      }

      v14 = FBSLogApplicationLibrary();
      if (OUTLINED_FUNCTION_38(v14))
      {
        v15 = [v5 applicationIdentity];
        v16 = [v15 fbs_shortDescription];
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_22(&dword_1A2DBB000, v17, v18, "Regenerating application %{public}@ due to bundle path mismatch", v20);
      }

      v13 = 1;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_fixupAdded:(void *)a3 removed:(id *)a4 replaced:
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  if (a1 && ([*(a1 + 8) isPersonaAware] & 1) == 0 && objc_msgSend(v9, "count") == 1 && objc_msgSend(v8, "count") == 1)
  {
    v10 = [v9 firstObject];
    [v8 firstObject];
    objc_claimAutoreleasedReturnValue();
    v11 = [OUTLINED_FUNCTION_26() bundleIdentifier];
    v12 = [v4 bundleIdentifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = FBSLogApplicationLibrary();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 bundleIdentifier];
        OUTLINED_FUNCTION_5_5();
        _os_log_impl(&dword_1A2DBB000, v14, OS_LOG_TYPE_DEFAULT, "[59555749] making persona change of %{public}@ a replacement instead of remove+add", v18, 0xCu);
      }

      [v8 removeObjectIdenticalTo:v4];
      [v9 removeObjectIdenticalTo:v10];
      v16 = *a4;
      if (!v16)
      {
        v17 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
        *a4 = v17;
        v16 = v17;
      }

      [v16 setObject:v4 forKey:v10];
    }
  }
}

void __48__FBSApplicationLibrary_applicationsDidInstall___block_invoke()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v120[16] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 32);
  if (v3)
  {
    OUTLINED_FUNCTION_31(v3);
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = objc_opt_new();
  memset(v116, 0, sizeof(v116));
  v100 = v2;
  v6 = *(v2 + 40);
  for (i = OUTLINED_FUNCTION_55(v6, v7, v116, v120); i; i = OUTLINED_FUNCTION_52(v18, v19, v116, v120, v20, v21, v22, v23, v95, obj))
  {
    for (j = 0; j != i; j = j + 1)
    {
      OUTLINED_FUNCTION_30();
      if (!v9)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v116[0] + 1) + 8 * j);
      v11 = [v10 bundleIdentifier];
      v12 = [*(*(v100 + 32) + 56) objectForKey:v11];
      [v4 unionSet:v12];

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v13 = [(FBSApplicationLibrary *)*(v100 + 32) _identitiesForProxy:v10 outRecord:0];
      v14 = [v13 countByEnumeratingWithState:&v112 objects:v119 count:16];
      if (v14)
      {
        v0 = v14;
        v15 = *v113;
        do
        {
          for (k = 0; k != v0; k = k + 1)
          {
            if (*v113 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v112 + 1) + 8 * k);
            [v5 setObject:v10 forKey:v17];
            [v4 removeObject:v17];
          }

          v0 = [v13 countByEnumeratingWithState:&v112 objects:v119 count:16];
        }

        while (v0);
      }
    }
  }

  memset(v111, 0, sizeof(v111));
  v24 = v4;
  v26 = OUTLINED_FUNCTION_56(v24, v25, v111, v118);
  if (v26)
  {
    v28 = v26;
    *&v27 = 138543362;
    v97 = v27;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        OUTLINED_FUNCTION_39();
        if (!v9)
        {
          objc_enumerationMutation(i);
        }

        v30 = *(*(&v111[0] + 1) + 8 * m);
        v31 = FBSLogApplicationLibrary();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v0 = [v30 fbs_shortDescription];
          OUTLINED_FUNCTION_33(v0, v32, v33, v34, v35, v36, v37, v38, v95, obj, v97);
          _os_log_error_impl(&dword_1A2DBB000, v31, OS_LOG_TYPE_ERROR, "Abandoned identity: %{public}@", v39, 0xCu);
        }

        v40 = [(FBSApplicationLibrary *)*(v100 + 32) _workQueue_removePlaceholderForIdentity:v30];
        if (v40)
        {
          OUTLINED_FUNCTION_29();
          v110 = v41;
          _addResultToArrayCreatingArrayIfNecessary(&v110, v40);
          objc_storeStrong(v0, v110);
        }

        v42 = [(FBSApplicationLibrary *)*(v100 + 32) _workQueue_removeApplicationForIdentity:v30];
        if (v42)
        {
          OUTLINED_FUNCTION_29();
          v109 = v43;
          _addResultToArrayCreatingArrayIfNecessary(&v109, v42);
          objc_storeStrong(v0, v109);
        }
      }

      v28 = OUTLINED_FUNCTION_53(v44, v45, v111, v118, v46, v47, v48, v49, v95, obj, v97, *(&v97 + 1), i);
    }

    while (v28);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v50 = v5;
  v51 = [v50 countByEnumeratingWithState:&v105 objects:v117 count:16];
  v53 = v100;
  if (v51)
  {
    v54 = v51;
    v55 = *v106;
    *&v52 = 138543362;
    v98 = v52;
    do
    {
      v56 = 0;
      do
      {
        if (*v106 != v55)
        {
          objc_enumerationMutation(v50);
        }

        v57 = *(*(&v105 + 1) + 8 * v56);
        v58 = [v50 objectForKey:v57];
        v59 = OUTLINED_FUNCTION_34();
        v61 = [(FBSApplicationLibrary *)v59 _workQueue_removePlaceholderForIdentity:v60];
        v62 = OUTLINED_FUNCTION_34();
        v64 = [(FBSApplicationLibrary *)v62 _workQueue_applicationForIdentity:v63];
        if (([(FBSApplicationLibrary *)v53[4] _workQueue_applicationNeedsRegeneration:v64 fromProxy:v58]& 1) == 0)
        {
          v65 = FBSLogApplicationLibrary();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = [v57 fbs_shortDescription];
            OUTLINED_FUNCTION_33(v66, v67, v68, v69, v70, v71, v72, v73, v95, obj, v98);
            _os_log_impl(&dword_1A2DBB000, v65, OS_LOG_TYPE_DEFAULT, "Not regenerating app for identity: %{public}@", v74, 0xCu);
          }

          [v64 _setInstalling:0];
          v75 = 0;
LABEL_38:

          goto LABEL_39;
        }

        v78 = OUTLINED_FUNCTION_34();
        v75 = [(FBSApplicationLibrary *)v78 _workQueue_removeApplicationForIdentity:v79];

        v80 = OUTLINED_FUNCTION_34();
        v82 = [(FBSApplicationLibrary *)v80 _workQueue_addApplicationWithIdentity:v81 forProxy:v58];
        v77 = v82;
        if (v82 && !v75)
        {
          v83 = *(v53[8] + 8);
          v104 = *(v83 + 40);
          _addResultToArrayCreatingArrayIfNecessary(&v104, v82);
          objc_storeStrong((v83 + 40), v104);
          goto LABEL_42;
        }

        if (!v82 || !v75 || v82 == v75)
        {
          if (v82)
          {
            goto LABEL_42;
          }

          if (v75)
          {
            v88 = *(v53[7] + 8);
            v103 = *(v88 + 40);
            _addResultToArrayCreatingArrayIfNecessary(&v103, v75);
            v89 = v103;
            v64 = *(v88 + 40);
            *(v88 + 40) = v89;
            v53 = v100;
            goto LABEL_38;
          }

LABEL_39:
          if (v61)
          {
            v76 = *(v53[6] + 8);
            v102 = *(v76 + 40);
            _addResultToArrayCreatingArrayIfNecessary(&v102, v61);
            objc_storeStrong((v76 + 40), v102);
          }

          v77 = 0;
          goto LABEL_42;
        }

        v84 = OUTLINED_FUNCTION_45(v53[9]);
        if (!v84)
        {
          v85 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
          v86 = *(v53[9] + 8);
          v87 = *(v86 + 40);
          *(v86 + 40) = v85;

          v84 = OUTLINED_FUNCTION_45(v53[9]);
        }

        [v84 setObject:v77 forKey:v75];
LABEL_42:

        ++v56;
      }

      while (v54 != v56);
      v90 = [v50 countByEnumeratingWithState:&v105 objects:v117 count:16];
      v54 = v90;
    }

    while (v90);
  }

  v91 = v53[4];
  v92 = *(*(v53[8] + 8) + 40);
  v93 = *(*(v53[7] + 8) + 40);
  v94 = *(v53[9] + 8);
  v101 = *(v94 + 40);
  [(FBSApplicationLibrary *)v91 _fixupAdded:v92 removed:v93 replaced:&v101];
  objc_storeStrong((v94 + 40), v101);

  OUTLINED_FUNCTION_47();
}

void __48__FBSApplicationLibrary_applicationsDidInstall___block_invoke_241(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      OUTLINED_FUNCTION_2_3(v1, v2);
    }
  }
}

void __50__FBSApplicationLibrary_applicationsDidUninstall___block_invoke()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v39[16] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 32);
  if (v3)
  {
    OUTLINED_FUNCTION_31(v3);
  }

  memset(v37, 0, sizeof(v37));
  v4 = *(v2 + 40);
  for (i = OUTLINED_FUNCTION_55(v4, v5, v37, v39); i; i = OUTLINED_FUNCTION_52(v24, v25, v37, v39, v26, v27, v28, v29, v30, obj))
  {
    for (j = 0; j != i; ++j)
    {
      OUTLINED_FUNCTION_30();
      if (!v7)
      {
        objc_enumerationMutation(obj);
      }

      v8 = [*(*(&v37[0] + 1) + 8 * j) bundleIdentifier];
      v9 = MEMORY[0x1E695DFA8];
      v10 = OUTLINED_FUNCTION_34();
      v12 = [(FBSApplicationLibrary *)v10 _identitiesForProxy:v11 outRecord:0];
      v13 = [v9 setWithArray:v12];

      v14 = [*(*(v2 + 32) + 56) objectForKey:v8];
      [v13 unionSet:v14];

      OUTLINED_FUNCTION_5_6();
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:v35 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        do
        {
          for (k = 0; k != v17; ++k)
          {
            OUTLINED_FUNCTION_39();
            if (!v7)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(v36 + 8 * k);
            v20 = [(FBSApplicationLibrary *)*(v2 + 32) _workQueue_removeApplicationForIdentity:v19];
            if (v20)
            {
              OUTLINED_FUNCTION_29();
              v34 = v21;
              _addResultToArrayCreatingArrayIfNecessary(&v34, v20);
              objc_storeStrong(v0, v34);
            }

            v22 = [(FBSApplicationLibrary *)*(v2 + 32) _workQueue_removePlaceholderForIdentity:v19];
            if (v22)
            {
              OUTLINED_FUNCTION_29();
              v33 = v23;
              _addResultToArrayCreatingArrayIfNecessary(&v33, v22);
              objc_storeStrong(v0, v33);
            }
          }

          v17 = [v15 countByEnumeratingWithState:v35 objects:v38 count:16];
        }

        while (v17);
      }
    }
  }

  OUTLINED_FUNCTION_47();
}

void __50__FBSApplicationLibrary_applicationsDidUninstall___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      OUTLINED_FUNCTION_2_3(v1, v2);
    }
  }
}

void __94__FBSApplicationLibrary__handleApplicationStateDidChange_notifyForUpdateInsteadOfReplacement___block_invoke()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v143[16] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 32);
  if (v3)
  {
    OUTLINED_FUNCTION_31(v3);
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v7 = *(v2 + 40);
  v106 = OUTLINED_FUNCTION_55(v7, v8, &v133, v143);
  v107 = v2;
  if (v106)
  {
    v104 = *v134;
    do
    {
      for (i = 0; i != v106; i = i + 1)
      {
        OUTLINED_FUNCTION_30();
        if (!v10)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v133 + 1) + 8 * i);
        v108 = [v11 bundleIdentifier];
        v12 = [*(*(v2 + 32) + 56) objectForKey:?];
        [v4 unionSet:v12];

        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v0 = [(FBSApplicationLibrary *)*(v2 + 32) _identitiesForProxy:v11 outRecord:0];
        v13 = [v0 countByEnumeratingWithState:&v129 objects:v142 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v130;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v130 != v15)
              {
                objc_enumerationMutation(v0);
              }

              v17 = *(*(&v129 + 1) + 8 * j);
              if ([v4 containsObject:v17])
              {
                v18 = v6;
              }

              else
              {
                v18 = v5;
              }

              [v18 setObject:v11 forKey:v17];
              [v4 removeObject:v17];
            }

            v14 = [v0 countByEnumeratingWithState:&v129 objects:v142 count:16];
          }

          while (v14);
        }

        v2 = v107;
      }

      v106 = OUTLINED_FUNCTION_52(v19, v20, &v133, v143, v21, v22, v23, v24, v102, obj);
    }

    while (v106);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v25 = v4;
  if (OUTLINED_FUNCTION_56(v25, v26, &v125, v141))
  {
    v27 = *v126;
    do
    {
      if (*v126 != v27)
      {
        objc_enumerationMutation(v106);
      }

      v28 = **(&v125 + 1);
      v29 = FBSLogApplicationLibrary();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v0 = [v28 fbs_shortDescription];
        OUTLINED_FUNCTION_14_0(v0, 5.7779e-34);
        OUTLINED_FUNCTION_49(&dword_1A2DBB000, v30, v31, v32, v33);
      }

      v34 = [(FBSApplicationLibrary *)*(v107 + 32) _workQueue_removePlaceholderForIdentity:v28];
      if (v34)
      {
        OUTLINED_FUNCTION_29();
        v124 = v35;
        _addResultToArrayCreatingArrayIfNecessary(&v124, v34);
        objc_storeStrong(v0, v124);
      }

      v4 = [(FBSApplicationLibrary *)*(v107 + 32) _workQueue_removeApplicationForIdentity:v28];
      if (v4)
      {
        OUTLINED_FUNCTION_29();
        v123 = v36;
        _addResultToArrayCreatingArrayIfNecessary(&v123, v4);
        objc_storeStrong(v0, v123);
      }

      OUTLINED_FUNCTION_21_0();
    }

    while (!v10 || OUTLINED_FUNCTION_53(v37, v38, &v125, v141, v39, v40, v41, v42, v102, obj, v104, v105, v106));
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v43 = v6;
  v44 = [v43 countByEnumeratingWithState:&v119 objects:v138 count:16];
  if (v44)
  {
    v45 = v44;
    v109 = *v120;
    do
    {
      v46 = 0;
      do
      {
        if (*v120 != v109)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(*(&v119 + 1) + 8 * v46);
        v48 = FBSLogApplicationLibrary();
        if (OUTLINED_FUNCTION_54(v48))
        {
          v49 = [v47 fbs_shortDescription];
          OUTLINED_FUNCTION_14_0(v49, 5.7779e-34);
          OUTLINED_FUNCTION_43();
          _os_log_impl(v50, v51, v52, "Updated identity: %@", v53, 0xCu);
        }

        v54 = [v43 objectForKey:v47];
        v55 = [(FBSApplicationLibrary *)*(v107 + 32) _workQueue_removeApplicationForIdentity:v47];
        if (v55)
        {
          v4 = [v54 appState];
          v56 = [v4 isInstalled];

          if (v56)
          {
            v4 = [(FBSApplicationLibrary *)*(v107 + 32) _workQueue_addApplicationWithIdentity:v47 forProxy:v54];
            if (v4)
            {
              v69 = OUTLINED_FUNCTION_45(*(v107 + 64));
              if (!v69)
              {
                v70 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
                v71 = *(*(v107 + 64) + 8);
                v72 = *(v71 + 40);
                *(v71 + 40) = v70;

                v69 = OUTLINED_FUNCTION_45(*(v107 + 64));
              }

              [v69 setObject:v4 forKey:v55];
            }

            else
            {
              v74 = *(*(v107 + 56) + 8);
              v118 = *(v74 + 40);
              _addResultToArrayCreatingArrayIfNecessary(&v118, v55);
              objc_storeStrong((v74 + 40), v118);
            }
          }

          else
          {
            v57 = FBSLogApplicationLibrary();
            if (OUTLINED_FUNCTION_54(v57))
            {
              *buf = 0;
              OUTLINED_FUNCTION_43();
              _os_log_impl(v58, v59, v60, "Found an app with updated identity, but proxy is not a app. Ignoring.", v61, 2u);
            }
          }
        }

        v62 = [(FBSApplicationLibrary *)*(v107 + 32) _workQueue_placeholderForIdentity:v47];
        if (v62)
        {
          v4 = [v54 appState];
          v63 = [v4 isPlaceholder];

          if (v63)
          {
            v4 = [v54 fbs_correspondingApplicationRecord];
            if (!v4)
            {
              v73 = FBSLogApplicationLibrary();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v140 = v54;
                _os_log_error_impl(&dword_1A2DBB000, v73, OS_LOG_TYPE_ERROR, "No corresponding record for placeholder: %@", buf, 0xCu);
              }
            }

            if ([(FBSApplicationLibrary *)*(v107 + 32) _workQueue_placeholderPassesFilter:v54 record:v4 identity:v47])
            {
              [v62 _setProxy:v54];
            }

            else
            {
              v75 = [(FBSApplicationLibrary *)*(v107 + 32) _workQueue_removePlaceholderForIdentity:v47];
              v76 = *(*(v107 + 48) + 8);
              v117 = *(v76 + 40);
              _addResultToArrayCreatingArrayIfNecessary(&v117, v55);
              objc_storeStrong((v76 + 40), v117);
            }
          }

          else
          {
            v64 = FBSLogApplicationLibrary();
            if (OUTLINED_FUNCTION_54(v64))
            {
              *buf = 0;
              OUTLINED_FUNCTION_43();
              _os_log_impl(v65, v66, v67, "Found a placeholder with updated identity, but proxy is not a placeholder. Ignoring.", v68, 2u);
            }
          }
        }

        ++v46;
      }

      while (v45 != v46);
      v77 = [v43 countByEnumeratingWithState:&v119 objects:v138 count:16];
      v45 = v77;
    }

    while (v77);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v78 = v5;
  v79 = [v78 countByEnumeratingWithState:&v113 objects:v137 count:16];
  v80 = v107;
  if (v79)
  {
    v81 = v79;
    v82 = *v114;
    do
    {
      for (k = 0; k != v81; ++k)
      {
        if (*v114 != v82)
        {
          objc_enumerationMutation(v78);
        }

        v84 = *(*(&v113 + 1) + 8 * k);
        v85 = FBSLogApplicationLibrary();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v86 = [v84 fbs_shortDescription];
          OUTLINED_FUNCTION_14_0(v86, 5.7779e-34);
          OUTLINED_FUNCTION_49(&dword_1A2DBB000, v87, v88, v89, v90);
        }

        v91 = [v78 objectForKey:v84];
        v92 = [(FBSApplicationLibrary *)*(v80 + 32) _workQueue_addApplicationWithIdentity:v84 forProxy:v91];
        if (v92)
        {
          v93 = *(*(v80 + 72) + 8);
          v112 = *(v93 + 40);
          _addResultToArrayCreatingArrayIfNecessary(&v112, v92);
          v94 = (v93 + 40);
          v80 = v107;
          objc_storeStrong(v94, v112);
        }

        v95 = [(FBSApplicationLibrary *)*(v80 + 32) _workQueue_addPlaceholderWithIdentity:v84 forProxy:v91];
        if (v95)
        {
          v96 = *(*(v80 + 80) + 8);
          v111 = *(v96 + 40);
          _addResultToArrayCreatingArrayIfNecessary(&v111, v95);
          v97 = (v96 + 40);
          v80 = v107;
          objc_storeStrong(v97, v111);
        }
      }

      v81 = [v78 countByEnumeratingWithState:&v113 objects:v137 count:16];
    }

    while (v81);
  }

  v98 = *(v80 + 32);
  v99 = *(*(*(v80 + 72) + 8) + 40);
  v100 = *(*(*(v80 + 56) + 8) + 40);
  v101 = *(*(v80 + 64) + 8);
  v110 = *(v101 + 40);
  [(FBSApplicationLibrary *)v98 _fixupAdded:v99 removed:v100 replaced:&v110];
  objc_storeStrong((v101 + 40), v110);

  OUTLINED_FUNCTION_47();
}

void __94__FBSApplicationLibrary__handleApplicationStateDidChange_notifyForUpdateInsteadOfReplacement___block_invoke_242(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      OUTLINED_FUNCTION_2_3(v1, v2);
    }
  }
}

void __49__FBSApplicationLibrary_applicationsWillInstall___block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [FBSApplicationLibrary _workQueue_applicationsForProxies:];
  v1 = FBSLogApplicationLibrary();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_36(buf, 5.8382e-34);
    _os_log_impl(&dword_1A2DBB000, v1, OS_LOG_TYPE_INFO, "Applications will install: %{public}@ (appInfos: %{public}@)", buf, 0x16u);
  }

  v13 = 0u;
  v2 = v0;
  OUTLINED_FUNCTION_41();
  if ([v3 countByEnumeratingWithState:? objects:? count:?])
  {
    OUTLINED_FUNCTION_17_0();
    while (1)
    {
      OUTLINED_FUNCTION_16_0();
      if (!v12)
      {
        objc_enumerationMutation(v2);
      }

      [OUTLINED_FUNCTION_42(v4 v5];
      OUTLINED_FUNCTION_40();
      if (v12)
      {
        OUTLINED_FUNCTION_41();
        if (![v2 countByEnumeratingWithState:? objects:? count:?])
        {
          break;
        }
      }
    }
  }
}

void __54__FBSApplicationLibrary_applicationsDidFailToInstall___block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [FBSApplicationLibrary _workQueue_applicationsForProxies:];
  v1 = FBSLogApplicationLibrary();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_36(buf, 5.8382e-34);
    _os_log_error_impl(&dword_1A2DBB000, v1, OS_LOG_TYPE_ERROR, "Applications did fail to install: %{public}@ (appInfos: %{public}@)", buf, 0x16u);
  }

  v13 = 0u;
  v2 = v0;
  OUTLINED_FUNCTION_41();
  if ([v3 countByEnumeratingWithState:? objects:? count:?])
  {
    OUTLINED_FUNCTION_17_0();
    while (1)
    {
      OUTLINED_FUNCTION_16_0();
      if (!v12)
      {
        objc_enumerationMutation(v2);
      }

      [OUTLINED_FUNCTION_42(v4 v5];
      OUTLINED_FUNCTION_40();
      if (v12)
      {
        OUTLINED_FUNCTION_41();
        if (![v2 countByEnumeratingWithState:? objects:? count:?])
        {
          break;
        }
      }
    }
  }
}

void __51__FBSApplicationLibrary_applicationsWillUninstall___block_invoke()
{
  v1 = [FBSApplicationLibrary _workQueue_applicationsForProxies:];
  if (OUTLINED_FUNCTION_28(v1, v2))
  {
    OUTLINED_FUNCTION_17_0();
    do
    {
      OUTLINED_FUNCTION_16_0();
      if (!v11)
      {
        objc_enumerationMutation(v0);
      }

      [OUTLINED_FUNCTION_42(v3 v4];
      OUTLINED_FUNCTION_40();
    }

    while (!v11 || OUTLINED_FUNCTION_21(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29));
  }
}

void __56__FBSApplicationLibrary_applicationsDidFailToUninstall___block_invoke()
{
  v1 = [FBSApplicationLibrary _workQueue_applicationsForProxies:];
  if (OUTLINED_FUNCTION_28(v1, v2))
  {
    OUTLINED_FUNCTION_17_0();
    do
    {
      OUTLINED_FUNCTION_16_0();
      if (!v11)
      {
        objc_enumerationMutation(v0);
      }

      [OUTLINED_FUNCTION_42(v3 v4];
      OUTLINED_FUNCTION_40();
    }

    while (!v11 || OUTLINED_FUNCTION_21(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29));
  }
}

- (void)_initWithApplicationWorkspace:(id *)a1 configuration:(const char *)a2 .cold.1(id *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v14 = [*a1 applicationInfoClass];
  v4 = [v3 stringWithFormat:@"Must specify a class that subclasses from FBSApplicationInfo : was passed %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15, v16);
  }

  v13 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithApplicationWorkspace:(id *)a1 configuration:(const char *)a2 .cold.2(id *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v14 = [*a1 applicationPlaceholderClass];
  v4 = [v3 stringWithFormat:@"Must specify a class that subclasses from FBSApplicationPlaceholder : was passed %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15, v16);
  }

  v13 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithApplicationWorkspace:(char *)a1 configuration:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"configuration", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithApplicationWorkspace:(char *)a1 configuration:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"workspace", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_applicationForIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)installedApplicationWithBundleIdentifier:(char *)a1 completionHandler:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completionHandler != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_placeholderForIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_109_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"recieved IXUninstallDispositionError but the provided error was nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 72));
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *a2;
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = @"FBSApplicationLibrary.m";
    v17 = 1024;
    v18 = 418;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addApplicationProxy:(char *)a1 withOverrideURL:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"url == ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addApplicationProxy:(char *)a1 withOverrideURL:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"proxy", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_identitiesForProxy:(char *)a1 outRecord:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"proxy", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addApplication:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSApplicationInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addApplication:(uint64_t)a1 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"existing app for %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addApplication:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addPlaceholder:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSApplicationPlaceholderClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addPlaceholder:(uint64_t)a1 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"existing placeholder for %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addPlaceholder:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __53__FBSApplicationLibrary_applicationInstallsDidStart___block_invoke_cold_1(id **a1, void *a2, uint64_t a3, id *a4)
{
  v6 = [(FBSApplicationLibrary *)*a1 _workQueue_removeApplicationForIdentity:a2];
  if (v6)
  {
    v7 = *(*a3 + 8);
    *a4 = *(v7 + 40);
    _addResultToArrayCreatingArrayIfNecessary(a4, v6);
    objc_storeStrong((v7 + 40), *a4);
  }
}

- (void)applicationsDidInstall:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"was handed a not-installed appProxy during applicationsDidInstall: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)applicationsDidInstall:(uint64_t)a1 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"was handed a placeholder appProxy during applicationsDidInstall: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
}

@end