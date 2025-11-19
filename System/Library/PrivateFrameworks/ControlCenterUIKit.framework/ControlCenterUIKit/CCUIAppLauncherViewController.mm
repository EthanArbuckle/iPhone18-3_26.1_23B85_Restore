@interface CCUIAppLauncherViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldRequestAuthenticationForTransitionToExpandedContent;
- (CCUIAppLauncherModule)module;
- (id)_assetProvider;
- (id)_menuItemForShortcutItem:(id)a3;
- (id)leadingImageForMenuItem:(id)a3;
- (void)_activateApplicationForShortcutItem:(id)a3;
- (void)_queue_setFetchedMenuItems:(id)a3;
- (void)_queue_updateApplicationShortcutsActions;
- (void)_updateApplicationShortcutsActionsIfNecessary;
- (void)_updateWithFetchedMenuItemsIfNecessary;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)buttonTouchDown:(id)a3 forEvent:(id)a4;
- (void)didTransitionToExpandedContentMode:(BOOL)a3;
- (void)requestAuthenticationForTransitionToExpandedContentModuleWithCompletionHandler:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willResignActive;
@end

@implementation CCUIAppLauncherViewController

- (void)buttonTouchDown:(id)a3 forEvent:(id)a4
{
  v5 = [a4 allTouches];
  v6 = [v5 anyObject];
  v7 = [v6 type];

  WeakRetained = objc_loadWeakRetained(&self->_module);
  [WeakRetained handleTouchDownWithTouchType:v7];
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v5 = [a4 allTouches];
  v6 = [v5 anyObject];
  v7 = [v6 type];

  WeakRetained = objc_loadWeakRetained(&self->_module);
  [WeakRetained handleTapWithTouchType:v7];
}

- (id)leadingImageForMenuItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 icon];

  return v8;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CCUIAppLauncherViewController;
  [(CCUIMenuModuleViewController *)&v9 viewDidLoad];
  WeakRetained = objc_loadWeakRetained(&self->_module);
  v4 = [WeakRetained iconGlyph];
  [(CCUIMenuModuleViewController *)self setGlyphImage:v4];

  v5 = objc_loadWeakRetained(&self->_module);
  v6 = [v5 displayName];
  [(CCUIMenuModuleViewController *)self setTitle:v6];

  [(CCUIButtonModuleViewController *)self setValueText:0];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:0];
  [(CCUIMenuModuleViewController *)self setIndentation:3];
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  menuItemsFetchQueue = self->_menuItemsFetchQueue;
  self->_menuItemsFetchQueue = SerialWithQoS;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIAppLauncherViewController;
  [(CCUIMenuModuleViewController *)&v4 viewDidAppear:a3];
  [(CCUIAppLauncherViewController *)self _updateApplicationShortcutsActionsIfNecessary];
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_module);
  v4 = [WeakRetained supportsApplicationShortcuts];

  if (v4)
  {
    [(CCUIAppLauncherViewController *)self _updateApplicationShortcutsActionsIfNecessary];
    menuItemsFetchQueue = self->_menuItemsFetchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__CCUIAppLauncherViewController_shouldBeginTransitionToExpandedContentModule__block_invoke;
    v8[3] = &unk_1E83EA9C8;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(menuItemsFetchQueue, v8);
    [(CCUIAppLauncherViewController *)self _updateWithFetchedMenuItemsIfNecessary];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __77__CCUIAppLauncherViewController_shouldBeginTransitionToExpandedContentModule__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1296) count])
  {
    result = 1;
  }

  else
  {
    v3.receiver = *(a1 + 32);
    v3.super_class = CCUIAppLauncherViewController;
    result = objc_msgSendSuper2(&v3, sel_shouldBeginTransitionToExpandedContentModule);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)didTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CCUIAppLauncherViewController;
  [(CCUIMenuModuleViewController *)&v7 didTransitionToExpandedContentMode:?];
  if (v3)
  {
    menuItemsFetchQueue = self->_menuItemsFetchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__CCUIAppLauncherViewController_didTransitionToExpandedContentMode___block_invoke;
    block[3] = &unk_1E83EA478;
    block[4] = self;
    dispatch_async(menuItemsFetchQueue, block);
  }

  else
  {
    [(CCUIAppLauncherViewController *)self _updateApplicationShortcutsActionsIfNecessary];
  }
}

- (BOOL)shouldRequestAuthenticationForTransitionToExpandedContent
{
  WeakRetained = objc_loadWeakRetained(&self->_module);
  v3 = [WeakRetained requestAuthenticationForExpandedModule];

  return v3;
}

- (void)requestAuthenticationForTransitionToExpandedContentModuleWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_module);
    v6 = [WeakRetained requestAuthenticationForExpandedModule];

    if (v6)
    {
      v7 = [(CCUIMenuModuleViewController *)self contentModuleContext];
      [v7 requestAuthenticationWithCompletionHandler:v8];
    }

    else
    {
      v8[2](v8, 1);
    }

    v4 = v8;
  }
}

- (void)willResignActive
{
  menuItemsFetchQueue = self->_menuItemsFetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CCUIAppLauncherViewController_willResignActive__block_invoke;
  block[3] = &unk_1E83EA478;
  block[4] = self;
  dispatch_async(menuItemsFetchQueue, block);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__CCUIAppLauncherViewController_willResignActive__block_invoke_2;
  v4[3] = &unk_1E83EA478;
  v4[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
}

- (void)_updateApplicationShortcutsActionsIfNecessary
{
  if (!self->_fetchedMenuItems)
  {
    block[5] = v2;
    block[6] = v3;
    menuItemsFetchQueue = self->_menuItemsFetchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__CCUIAppLauncherViewController__updateApplicationShortcutsActionsIfNecessary__block_invoke;
    block[3] = &unk_1E83EA478;
    block[4] = self;
    dispatch_async(menuItemsFetchQueue, block);
  }
}

- (void)_queue_setFetchedMenuItems:(id)a3
{
  v6 = a3;
  BSDispatchQueueAssert();
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_fetchedMenuItems != v6)
  {
    objc_storeStrong(&v5->_fetchedMenuItems, a3);
  }

  objc_sync_exit(v5);
}

- (void)_updateWithFetchedMenuItemsIfNecessary
{
  BSDispatchQueueAssertMain();
  if (self->_fetchedMenuItems)
  {
    if (![(CCUIMenuModuleViewController *)self menuItemCount])
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __71__CCUIAppLauncherViewController__updateWithFetchedMenuItemsIfNecessary__block_invoke;
      v3[3] = &unk_1E83EA478;
      v3[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
    }
  }
}

- (void)_queue_updateApplicationShortcutsActions
{
  v29 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_module);
  v5 = [WeakRetained _application];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 staticApplicationShortcutItems];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CCUIAppLauncherViewController *)self _menuItemForShortcutItem:*(*(&v23 + 1) + 8 * v10)];
        [v3 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v5 dynamicApplicationShortcutItems];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(CCUIAppLauncherViewController *)self _menuItemForShortcutItem:*(*(&v19 + 1) + 8 * v16)];
        [v3 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(CCUIAppLauncherViewController *)self _queue_setFetchedMenuItems:v3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CCUIAppLauncherViewController__queue_updateApplicationShortcutsActions__block_invoke;
  block[3] = &unk_1E83EA478;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_assetProvider
{
  assetProvider = self->_assetProvider;
  if (!assetProvider)
  {
    WeakRetained = objc_loadWeakRetained(&self->_module);
    v5 = [WeakRetained _application];

    v6 = objc_alloc(MEMORY[0x1E69CDFF0]);
    v7 = [v5 bundleURL];
    v8 = [v6 initWithBundleURL:v7];
    v9 = self->_assetProvider;
    self->_assetProvider = v8;

    assetProvider = self->_assetProvider;
  }

  return assetProvider;
}

- (id)_menuItemForShortcutItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 icon];
  v6 = [(CCUIAppLauncherViewController *)self _assetProvider];
  v7 = [v5 scui_iconImageWithAssetProvider:v6];

  v8 = [CCUIAppShortcutMenuModuleItem alloc];
  v9 = [v4 localizedTitle];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__CCUIAppLauncherViewController__menuItemForShortcutItem___block_invoke;
  v16[3] = &unk_1E83EA9F0;
  objc_copyWeak(&v18, &location);
  v12 = v4;
  v17 = v12;
  v13 = [(CCUIMenuModuleItem *)v8 initWithTitle:v9 identifier:v11 handler:v16];

  v14 = [v12 localizedSubtitle];
  [(CCUIMenuModuleItem *)v13 setSubtitle:v14];

  [(CCUIAppShortcutMenuModuleItem *)v13 setIcon:v7];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);

  return v13;
}

uint64_t __58__CCUIAppLauncherViewController__menuItemForShortcutItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _activateApplicationForShortcutItem:*(a1 + 32)];

  return 1;
}

- (void)_activateApplicationForShortcutItem:(id)a3
{
  v20[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bundleIdentifierToLaunch];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_module);
    v7 = [WeakRetained applicationIdentifier];
  }

  v9 = [v4 activationMode] == 1;
  v10 = [objc_alloc(MEMORY[0x1E69DCA98]) initWithSBSShortcutItem:v4];

  v19[0] = *MEMORY[0x1E699F8E8];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v20[0] = v11;
  v19[1] = *MEMORY[0x1E699F8D0];
  v18 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v13 = *MEMORY[0x1E699F990];
  v19[2] = *MEMORY[0x1E699F970];
  v19[3] = v13;
  v19[4] = *MEMORY[0x1E699F940];
  v20[1] = v12;
  v20[2] = MEMORY[0x1E695E118];
  v20[3] = MEMORY[0x1E695E118];
  v20[4] = @"CCUIAppLaunchOriginControlCenter";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];

  v15 = objc_loadWeakRetained(&self->_module);
  v16 = [v15 contentModuleContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__CCUIAppLauncherViewController__activateApplicationForShortcutItem___block_invoke;
  v17[3] = &unk_1E83EA5D0;
  v17[4] = self;
  [v16 openApplication:v7 withOptions:v14 completionHandler:v17];
}

void __69__CCUIAppLauncherViewController__activateApplicationForShortcutItem___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1304));
    v2 = [WeakRetained contentModuleContext];
    [v2 dismissModule];
  }
}

- (CCUIAppLauncherModule)module
{
  WeakRetained = objc_loadWeakRetained(&self->_module);

  return WeakRetained;
}

@end