@interface SFExtensionsProfilesDataSource
- (NSDictionary)profileServerIDToContentBlockerManagers;
- (NSDictionary)profileServerIDToWebExtensionsControllers;
- (SFExtensionsProfilesDataSource)initWithTabGroupManager:(id)manager;
@end

@implementation SFExtensionsProfilesDataSource

- (SFExtensionsProfilesDataSource)initWithTabGroupManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = SFExtensionsProfilesDataSource;
  v6 = [(SFExtensionsProfilesDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabGroupManager, manager);
    v8 = v7;
  }

  return v7;
}

- (NSDictionary)profileServerIDToWebExtensionsControllers
{
  v51 = *MEMORY[0x1E69E9840];
  v37 = [SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers;
  if (![SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = [SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers;
    [SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers = dictionary;

    v5 = [SFWebExtensionsController alloc];
    v6 = *MEMORY[0x1E69C8B58];
    v7 = [(WBSExtensionsController *)v5 initWithProfileServerID:*MEMORY[0x1E69C8B58] userContentController:0 forceExtensionLoadingAfterDiscovery:1];
    sharedProfileDelegate = self->_sharedProfileDelegate;
    if (!sharedProfileDelegate)
    {
      v9 = [[SFSafariProfileDelegate alloc] initWithDataSource:self];
      v10 = self->_sharedProfileDelegate;
      self->_sharedProfileDelegate = v9;

      sharedProfileDelegate = self->_sharedProfileDelegate;
    }

    [(SFWebExtensionsController *)v7 setProfileDelegate:sharedProfileDelegate];
    [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers setObject:v7 forKeyedSubscript:v6];
    [(WBSExtensionsController *)v7 findExtensions];
    mEMORY[0x1E69C9778] = [MEMORY[0x1E69C9778] sharedManager];
    [mEMORY[0x1E69C9778] addProvider:v7];
  }

  profiles = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v13 = [profiles safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_11];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers copy];
  v14 = 0;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v15)
  {
    v16 = *v44;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * i);
        if (([v13 containsObject:v18] & 1) == 0)
        {
          v19 = [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers objectForKeyedSubscript:v18];
          if (v19)
          {
            v20 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v49 = v18;
              _os_log_impl(&dword_18B7AC000, v20, OS_LOG_TYPE_INFO, "Deleting web extension state for profile with server ID %{private}@", buf, 0xCu);
            }

            [v19 unloadAndDeleteStateForAllExtensions];
            mEMORY[0x1E69C9778]2 = [MEMORY[0x1E69C9778] sharedManager];
            [mEMORY[0x1E69C9778]2 removeProvider:v19];

            [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers removeObjectForKey:v18];
            v14 = 1;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v15);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = v13;
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v23)
  {
    v24 = *v40;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v39 + 1) + 8 * j);
        v27 = [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers objectForKeyedSubscript:v26];
        v28 = v27 == 0;

        if (v28)
        {
          v29 = [(WBSExtensionsController *)[SFWebExtensionsController alloc] initWithProfileServerID:v26 userContentController:0 forceExtensionLoadingAfterDiscovery:1];
          v30 = self->_sharedProfileDelegate;
          if (!v30)
          {
            v31 = [[SFSafariProfileDelegate alloc] initWithDataSource:self];
            v32 = self->_sharedProfileDelegate;
            self->_sharedProfileDelegate = v31;

            v30 = self->_sharedProfileDelegate;
          }

          [(SFWebExtensionsController *)v29 setProfileDelegate:v30];
          [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers setObject:v29 forKeyedSubscript:v26];
          [(WBSExtensionsController *)v29 findExtensions];
          mEMORY[0x1E69C9778]3 = [MEMORY[0x1E69C9778] sharedManager];
          [mEMORY[0x1E69C9778]3 addProvider:v29];

          v14 = 1;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v23);
  }

  if (((v37 != 0) & v14) == 1)
  {
    mEMORY[0x1E69C9778]4 = [MEMORY[0x1E69C9778] sharedManager];
    [mEMORY[0x1E69C9778]4 localExtensionStateDidChange];
  }

  v35 = [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers copy];

  return v35;
}

id __75__SFExtensionsProfilesDataSource_profileServerIDToWebExtensionsControllers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifierForExtensions];

  return v2;
}

- (NSDictionary)profileServerIDToContentBlockerManagers
{
  v56 = *MEMORY[0x1E69E9840];
  v41 = [SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers;
  if (![SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = [SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers;
    [SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers = dictionary;

    v5 = objc_alloc(getSFContentBlockerManagerClass());
    profileServerIDToWebExtensionsControllers = [(SFExtensionsProfilesDataSource *)self profileServerIDToWebExtensionsControllers];
    v7 = *MEMORY[0x1E69C8B58];
    v8 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:*MEMORY[0x1E69C8B58]];
    v9 = [v5 initWithUserContentController:0 webExtensionsController:v8];

    sharedProfileDelegate = self->_sharedProfileDelegate;
    if (!sharedProfileDelegate)
    {
      v11 = [[SFSafariProfileDelegate alloc] initWithDataSource:self];
      v12 = self->_sharedProfileDelegate;
      self->_sharedProfileDelegate = v11;

      sharedProfileDelegate = self->_sharedProfileDelegate;
    }

    [v9 setDelegate:sharedProfileDelegate];
    [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers setObject:v9 forKeyedSubscript:v7];
    mEMORY[0x1E69C9778] = [MEMORY[0x1E69C9778] sharedManager];
    [mEMORY[0x1E69C9778] addProvider:v9];
  }

  profiles = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v15 = [profiles safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_5_0];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers copy];
  v16 = 0;
  v17 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v17)
  {
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        if (([v15 containsObject:v20] & 1) == 0)
        {
          v21 = [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers objectForKeyedSubscript:v20];
          if (v21)
          {
            v22 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v54 = v20;
              _os_log_impl(&dword_18B7AC000, v22, OS_LOG_TYPE_INFO, "Deleting content blocker state for profile with server ID %{private}@", buf, 0xCu);
            }

            [v21 unloadAndDeleteStateForAllExtensions];
            mEMORY[0x1E69C9778]2 = [MEMORY[0x1E69C9778] sharedManager];
            [mEMORY[0x1E69C9778]2 removeProvider:v21];

            [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers removeObjectForKey:v20];
            v16 = 1;
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v17);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = v15;
  v24 = [v42 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v24)
  {
    v25 = *v45;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v42);
        }

        v27 = *(*(&v44 + 1) + 8 * j);
        v28 = [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers objectForKeyedSubscript:v27];
        v29 = v28 == 0;

        if (v29)
        {
          v30 = objc_alloc(getSFContentBlockerManagerClass());
          profileServerIDToWebExtensionsControllers2 = [(SFExtensionsProfilesDataSource *)self profileServerIDToWebExtensionsControllers];
          v32 = [profileServerIDToWebExtensionsControllers2 objectForKeyedSubscript:v27];
          v33 = [v30 initWithUserContentController:0 webExtensionsController:v32];

          v34 = self->_sharedProfileDelegate;
          if (!v34)
          {
            v35 = [[SFSafariProfileDelegate alloc] initWithDataSource:self];
            v36 = self->_sharedProfileDelegate;
            self->_sharedProfileDelegate = v35;

            v34 = self->_sharedProfileDelegate;
          }

          [v33 setDelegate:v34];
          [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers setObject:v33 forKeyedSubscript:v27];
          mEMORY[0x1E69C9778]3 = [MEMORY[0x1E69C9778] sharedManager];
          [mEMORY[0x1E69C9778]3 addProvider:v33];

          v16 = 1;
        }
      }

      v24 = [v42 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v24);
  }

  if (((v41 != 0) & v16) == 1)
  {
    mEMORY[0x1E69C9778]4 = [MEMORY[0x1E69C9778] sharedManager];
    [mEMORY[0x1E69C9778]4 localExtensionStateDidChange];
  }

  v39 = [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers copy];

  return v39;
}

id __73__SFExtensionsProfilesDataSource_profileServerIDToContentBlockerManagers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifierForExtensions];

  return v2;
}

@end