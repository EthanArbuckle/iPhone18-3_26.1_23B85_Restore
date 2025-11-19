@interface CCUIControlContainerApplicationContext
- (CCUIControlContainerApplicationContext)initWithApplicationBundleIdentifier:(id)a3;
- (NSArray)applicationShortcuts;
- (UIMenu)contextMenuForApplicationShortcuts;
- (id)_application;
- (id)_assetProvider;
- (id)_menuItemForShortcutItem:(id)a3;
- (id)_queue_fetchDynamicApplicationShortcutItems;
- (id)_queue_fetchStaticApplicationShortcutItems;
- (void)_activateApplicationForShortcutItem:(id)a3;
- (void)_fetchApplicationIfNeeded;
- (void)_queue_setFetchedDynamicMenuItems:(id)a3;
- (void)_queue_setFetchedStaticMenuItems:(id)a3;
- (void)_queue_updateDynamicApplicationShortcutsActions;
- (void)_queue_updateStaticApplicationShortcutsActions;
- (void)_updateApplicationShortcutsActionsIfNecessary;
@end

@implementation CCUIControlContainerApplicationContext

- (CCUIControlContainerApplicationContext)initWithApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CCUIControlContainerApplicationContext;
  v5 = [(CCUIControlContainerApplicationContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v6;

    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    menuItemsFetchQueue = v5->_menuItemsFetchQueue;
    v5->_menuItemsFetchQueue = SerialWithQoS;

    [(CCUIControlContainerApplicationContext *)v5 _updateApplicationShortcutsActionsIfNecessary];
  }

  return v5;
}

- (NSArray)applicationShortcuts
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_fetchedStaticMenuItems)
  {
    [v3 addObjectsFromArray:?];
  }

  if (self->_fetchedDynamicMenuItems)
  {
    [v4 addObjectsFromArray:?];
  }

  return v4;
}

- (UIMenu)contextMenuForApplicationShortcuts
{
  [(CCUIControlContainerApplicationContext *)self _updateApplicationShortcutsActionsIfNecessary];
  v3 = [(CCUIControlContainerApplicationContext *)self applicationShortcuts];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E69DCC60] menuWithChildren:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateApplicationShortcutsActionsIfNecessary
{
  if (!self->_fetchedStaticMenuItems)
  {
    menuItemsFetchQueue = self->_menuItemsFetchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__CCUIControlContainerApplicationContext__updateApplicationShortcutsActionsIfNecessary__block_invoke;
    block[3] = &unk_1E83EA478;
    block[4] = self;
    dispatch_async(menuItemsFetchQueue, block);
  }

  v4 = self->_menuItemsFetchQueue;
  if (self->_fetchedDynamicMenuItems)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __87__CCUIControlContainerApplicationContext__updateApplicationShortcutsActionsIfNecessary__block_invoke_3;
    v5[3] = &unk_1E83EA478;
    v5[4] = self;
    dispatch_sync(v4, v5);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __87__CCUIControlContainerApplicationContext__updateApplicationShortcutsActionsIfNecessary__block_invoke_2;
    v6[3] = &unk_1E83EA478;
    v6[4] = self;
    dispatch_async(v4, v6);
  }
}

- (id)_application
{
  [(CCUIControlContainerApplicationContext *)self _fetchApplicationIfNeeded];
  application = self->_application;

  return application;
}

- (void)_fetchApplicationIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_application)
  {
    v3 = objc_alloc(MEMORY[0x1E69D3FA8]);
    v4 = [(CCUIControlContainerApplicationContext *)obj applicationBundleIdentifier];
    v5 = [v3 initWithApplicationBundleIdentifier:v4];
    application = obj->_application;
    obj->_application = v5;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)_queue_updateStaticApplicationShortcutsActions
{
  BSDispatchQueueAssert();
  v3 = [(CCUIControlContainerApplicationContext *)self _queue_fetchStaticApplicationShortcutItems];
  [(CCUIControlContainerApplicationContext *)self _queue_setFetchedStaticMenuItems:v3];
}

- (id)_queue_fetchStaticApplicationShortcutItems
{
  v17 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CCUIControlContainerApplicationContext *)self _application];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 staticApplicationShortcutItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(CCUIControlContainerApplicationContext *)self _menuItemForShortcutItem:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_queue_updateDynamicApplicationShortcutsActions
{
  BSDispatchQueueAssert();
  v3 = [(CCUIControlContainerApplicationContext *)self _queue_fetchDynamicApplicationShortcutItems];
  [(CCUIControlContainerApplicationContext *)self _queue_setFetchedDynamicMenuItems:v3];
}

- (id)_queue_fetchDynamicApplicationShortcutItems
{
  v17 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CCUIControlContainerApplicationContext *)self _application];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 dynamicApplicationShortcutItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(CCUIControlContainerApplicationContext *)self _menuItemForShortcutItem:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)_menuItemForShortcutItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 icon];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;

    v13 = [v12 systemImageName];
    v14 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v13];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_opt_class();
      v10 = v5;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
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

      v12 = v11;

      v13 = [v12 systemImageName];
      v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:v13];
    }

    else
    {
      v12 = [v4 icon];
      v13 = [(CCUIControlContainerApplicationContext *)self _assetProvider];
      v14 = [v12 scui_iconImageWithAssetProvider:v13];
    }
  }

  v15 = v14;

  v16 = [CCUIApplicationShortcutMenuModuleItem alloc];
  v17 = [v4 localizedTitle];
  v18 = [MEMORY[0x1E696AFB0] UUID];
  v19 = [v18 UUIDString];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __67__CCUIControlContainerApplicationContext__menuItemForShortcutItem___block_invoke;
  v36[3] = &unk_1E83EA9F0;
  objc_copyWeak(&v38, &location);
  v20 = v4;
  v37 = v20;
  v21 = [(CCUIMenuModuleItem *)v16 initWithTitle:v17 identifier:v19 handler:v36];

  v22 = [v20 localizedSubtitle];
  [(CCUIMenuModuleItem *)v21 setSubtitle:v22];

  [(CCUIApplicationShortcutMenuModuleItem *)v21 setIcon:v15];
  v23 = MEMORY[0x1E69DC628];
  v24 = [(CCUIMenuModuleItem *)v21 title];
  v25 = [(CCUIApplicationShortcutMenuModuleItem *)v21 icon];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __67__CCUIControlContainerApplicationContext__menuItemForShortcutItem___block_invoke_2;
  v34 = &unk_1E83EA648;
  v26 = v21;
  v35 = v26;
  v27 = [v23 actionWithTitle:v24 image:v25 identifier:0 handler:&v31];

  v28 = [(CCUIMenuModuleItem *)v26 subtitle:v31];

  if (v28)
  {
    v29 = [(CCUIMenuModuleItem *)v26 subtitle];
    [v27 setSubtitle:v29];
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  return v27;
}

uint64_t __67__CCUIControlContainerApplicationContext__menuItemForShortcutItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _activateApplicationForShortcutItem:*(a1 + 32)];

  return 1;
}

- (id)_assetProvider
{
  assetProvider = self->_assetProvider;
  if (!assetProvider)
  {
    v4 = [(CCUIControlContainerApplicationContext *)self _application];
    v5 = objc_alloc(MEMORY[0x1E69CDFF0]);
    v6 = [v4 bundleURL];
    v7 = [v5 initWithBundleURL:v6];
    v8 = self->_assetProvider;
    self->_assetProvider = v7;

    assetProvider = self->_assetProvider;
  }

  return assetProvider;
}

- (void)_activateApplicationForShortcutItem:(id)a3
{
  v21[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bundleIdentifierToLaunch];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CCUIControlContainerApplicationContext *)self applicationBundleIdentifier];
  }

  v8 = v7;

  v9 = [v4 activationMode] == 1;
  v10 = [objc_alloc(MEMORY[0x1E69DCA98]) initWithSBSShortcutItem:v4];

  v20[0] = *MEMORY[0x1E699F8E8];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v21[0] = v11;
  v20[1] = *MEMORY[0x1E699F8D0];
  v19 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v13 = *MEMORY[0x1E699F970];
  v21[1] = v12;
  v21[2] = MEMORY[0x1E695E118];
  v14 = *MEMORY[0x1E699F990];
  v20[2] = v13;
  v20[3] = v14;
  v20[4] = *MEMORY[0x1E699F940];
  v21[3] = MEMORY[0x1E695E118];
  v21[4] = @"CCUIAppLaunchOriginControlCenterControl";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];

  v16 = [CCUIContentModuleContext alloc];
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = [(CCUIContentModuleContext *)v16 initWithModuleIdentifier:v8 uniqueIdentifier:v17];

  [(CCUIContentModuleContext *)v18 openApplication:v8 withOptions:v15 completionHandler:0];
}

- (void)_queue_setFetchedStaticMenuItems:(id)a3
{
  v6 = a3;
  BSDispatchQueueAssert();
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_fetchedStaticMenuItems != v6)
  {
    objc_storeStrong(&v5->_fetchedStaticMenuItems, a3);
  }

  objc_sync_exit(v5);
}

- (void)_queue_setFetchedDynamicMenuItems:(id)a3
{
  v6 = a3;
  BSDispatchQueueAssert();
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_fetchedDynamicMenuItems != v6)
  {
    objc_storeStrong(&v5->_fetchedDynamicMenuItems, a3);
  }

  objc_sync_exit(v5);
}

@end