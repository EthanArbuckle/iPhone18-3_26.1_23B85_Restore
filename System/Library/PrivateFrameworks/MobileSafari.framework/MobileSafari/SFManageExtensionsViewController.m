@interface SFManageExtensionsViewController
+ (id)createManageExtensionsNavigationControllerFromPageFormatMenu:(id)a3 activeDocument:(id)a4;
- (BOOL)_isAppStoreLinkSection:(int64_t)a3;
- (BOOL)_isInstalledExtensionsSection:(int64_t)a3;
- (BOOL)_isOnOtherDevicesSection:(int64_t)a3;
- (BOOL)_isRecommendationsSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_SFPageFormatMenuController)presentingPageFormatMenu;
- (id)_adamIDsForInstalledAndCloudExtensions;
- (id)_adamIDsForInstalledExtensions;
- (id)_tintIconForDarkModeIfNeeded:(id)a3;
- (id)initFromPageFormatMenu:(id)a3 activeDocument:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_enableExtensionWithWrapper:(id)a3;
- (void)_extensionEnabledStateDidChange:(id)a3;
- (void)_extensionStateWasToggled:(id)a3;
- (void)_extensionWasAdded:(id)a3;
- (void)_filterExtensionAppLockupViews;
- (void)_filterExtensionsBasedOnUserTypedSearchQuery;
- (void)_managedConfigurationSettingsDidChange:(id)a3;
- (void)_refreshExtensionDataAndUpdateLockupViews:(BOOL)a3;
- (void)_reload;
- (void)_setPrivateBrowsingStateForExtension:(id)a3 isOn:(BOOL)a4;
- (void)_updateLastViewedDate;
- (void)_updateLockupViews;
- (void)_updateRecommendedLockupViews;
- (void)dealloc;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SFManageExtensionsViewController

+ (id)createManageExtensionsNavigationControllerFromPageFormatMenu:(id)a3 activeDocument:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[SFManageExtensionsViewController alloc] initFromPageFormatMenu:v5 activeDocument:v6];
  objc_initWeak(&location, v7);
  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  v9 = [MEMORY[0x1E69DC708] _sf_popoverDoneButtonItem];
  v10 = MEMORY[0x1E69DC628];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __112__SFManageExtensionsViewController_createManageExtensionsNavigationControllerFromPageFormatMenu_activeDocument___block_invoke;
  v19 = &unk_1E721F278;
  objc_copyWeak(&v20, &location);
  v11 = [v10 actionWithTitle:&stru_1EFF36230 image:0 identifier:0 handler:&v16];
  v12 = [v8 initWithBarButtonSystemItem:v9 primaryAction:{v11, v16, v17, v18, v19}];
  v13 = [v7 navigationItem];
  [v13 sf_setPreferredDismissOrDoneButtonItem:v12];

  v14 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

void __112__SFManageExtensionsViewController_createManageExtensionsNavigationControllerFromPageFormatMenu_activeDocument___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (id)initFromPageFormatMenu:(id)a3 activeDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = SFManageExtensionsViewController;
  v8 = [(SFManageExtensionsViewController *)&v22 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingPageFormatMenu, v6);
    v9->_presentedFromPrivateBrowsing = [v7 isPrivateBrowsingEnabled];
    v10 = [v7 webExtensionsController];
    webExtensionsController = v9->_webExtensionsController;
    v9->_webExtensionsController = v10;

    v12 = [v7 contentBlockerManager];
    contentBlockerManager = v9->_contentBlockerManager;
    v9->_contentBlockerManager = v12;

    v14 = v9->_webExtensionsController;
    [(SFManageExtensionsViewController *)v9 _refreshExtensionData];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v9 selector:sel__extensionWasAdded_ name:*MEMORY[0x1E69C92B8] object:0];
    [v15 addObserver:v9 selector:sel__extensionEnabledStateDidChange_ name:*MEMORY[0x1E69C9220] object:0];
    [v15 addObserver:v9 selector:sel__reload name:*MEMORY[0x1E69C9930] object:0];
    [v15 addObserver:v9 selector:sel__reload name:*MEMORY[0x1E69C8C38] object:0];
    v16 = [MEMORY[0x1E69ADFB8] sharedConnection];
    [v15 addObserver:v9 selector:sel__managedConfigurationSettingsDidChange_ name:*MEMORY[0x1E69ADD68] object:v16];

    [(WBSExtensionsController *)v14 addObserver:v9];
    v17 = _WBSLocalizedString();
    [(SFManageExtensionsViewController *)v9 setTitle:v17];

    v18 = [MEMORY[0x1E695DF90] dictionary];
    composedIdentifierToToggleMap = v9->_composedIdentifierToToggleMap;
    v9->_composedIdentifierToToggleMap = v18;

    v20 = v9;
  }

  return v9;
}

- (void)_refreshExtensionDataAndUpdateLockupViews:(BOOL)a3
{
  v3 = a3;
  v5 = self->_webExtensionsController;
  v6 = [(WBSExtensionsController *)v5 extensions];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__SFManageExtensionsViewController__refreshExtensionDataAndUpdateLockupViews___block_invoke;
  v19[3] = &unk_1E721F2A0;
  v7 = v5;
  v20 = v7;
  v8 = [v6 safari_mapAndFilterObjectsUsingBlock:v19];
  v9 = [(SFContentBlockerManager *)self->_contentBlockerManager extensions];
  v10 = [v9 allObjects];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__SFManageExtensionsViewController__refreshExtensionDataAndUpdateLockupViews___block_invoke_2;
  v16[3] = &unk_1E721F2C8;
  v11 = v7;
  v17 = v11;
  v18 = self;
  v12 = [v10 safari_mapAndFilterObjectsUsingBlock:v16];
  v13 = [v8 arrayByAddingObjectsFromArray:v12];
  v14 = [v13 sortedArrayUsingSelector:sel_localizedCompare_];
  extensions = self->_extensions;
  self->_extensions = v14;

  [(SFManageExtensionsViewController *)self _filterExtensionsBasedOnUserTypedSearchQuery];
  if (v3)
  {
    [(SFManageExtensionsViewController *)self _updateLockupViews];
  }
}

id __78__SFManageExtensionsViewController__refreshExtensionDataAndUpdateLockupViews___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForExtension:a2];
  v4 = [v3 composedIdentifier];
  v5 = [SFExtensionWrapper extensionWrapperForWebExtensionWithComposedIdentifier:v4 webExtensionsController:*(a1 + 32)];

  return v5;
}

id __78__SFManageExtensionsViewController__refreshExtensionDataAndUpdateLockupViews___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:a2];
  v4 = [SFExtensionWrapper extensionWrapperForContentBlockerWithComposedIdentifier:v3 contentBlockerManager:*(*(a1 + 40) + 1048)];

  return v4;
}

- (void)_updateLockupViews
{
  v3 = [MEMORY[0x1E69C88D0] sharedInstance];
  v4 = [v3 shouldHideExtensionDiscovery];

  if (v4)
  {
    if ([(NSArray *)self->_fromOtherDevicesAppLockupViews count])
    {
      v5 = 1;
    }

    else
    {
      v5 = [(NSArray *)self->_recommendedAppLockupViews count]!= 0;
    }

    fromOtherDevicesAppLockupViews = self->_fromOtherDevicesAppLockupViews;
    self->_fromOtherDevicesAppLockupViews = 0;

    filteredFromOtherDevicesAppLockupViews = self->_filteredFromOtherDevicesAppLockupViews;
    self->_filteredFromOtherDevicesAppLockupViews = 0;

    recommendedAppLockupViews = self->_recommendedAppLockupViews;
    self->_recommendedAppLockupViews = 0;

    filteredRecommendedAppLockupViews = self->_filteredRecommendedAppLockupViews;
    self->_filteredRecommendedAppLockupViews = 0;

    if (v5)
    {
      v11 = [(SFManageExtensionsViewController *)self tableView];
      [v11 reloadData];
    }
  }

  else if (!self->_waitingForLockupViews)
  {
    self->_waitingForLockupViews = 1;
    v6 = [MEMORY[0x1E69C9778] sharedManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__SFManageExtensionsViewController__updateLockupViews__block_invoke;
    v12[3] = &unk_1E721F2F0;
    v12[4] = self;
    [v6 getLockupViewsForAppsOnOtherDevicesWithCompletionHandler:v12];
  }
}

void __54__SFManageExtensionsViewController__updateLockupViews__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(*(a1 + 32) + 1088) isEqual:?] & 1) == 0)
  {
    v3 = [v7 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1088);
    *(v4 + 1088) = v3;

    [*(a1 + 32) _filterExtensionAppLockupViews];
    v6 = [*(a1 + 32) tableView];
    [v6 reloadData];

    [*(a1 + 32) _updateRecommendedLockupViews];
  }
}

- (void)_updateRecommendedLockupViews
{
  if ([(NSArray *)self->_recommendedAppLockupViews count])
  {
    self->_waitingForLockupViews = 0;
    [(SFManageExtensionsViewController *)self _filterExtensionAppLockupViews];
    v4 = [(SFManageExtensionsViewController *)self tableView];
    [v4 reloadData];
  }

  else
  {
    v3 = [MEMORY[0x1E69C9740] sharedGenerator];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__SFManageExtensionsViewController__updateRecommendedLockupViews__block_invoke;
    v5[3] = &unk_1E721F2F0;
    v5[4] = self;
    [v3 getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:v5];
  }
}

void __65__SFManageExtensionsViewController__updateRecommendedLockupViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69C9740] sharedGenerator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__SFManageExtensionsViewController__updateRecommendedLockupViews__block_invoke_2;
  v5[3] = &unk_1E721F2F0;
  v5[4] = *(a1 + 32);
  [v4 generateLockupViewsForAvailableApps:v3 lockupViewType:2 maintainRequestedOrderOfApps:1 completionHandler:v5];
}

void __65__SFManageExtensionsViewController__updateRecommendedLockupViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 1104) = 0;
  v8 = v3;
  if (([*(*(a1 + 32) + 1112) isEqual:?] & 1) == 0)
  {
    v4 = [v8 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1112);
    *(v5 + 1112) = v4;

    [*(a1 + 32) _filterExtensionAppLockupViews];
    v7 = [*(a1 + 32) tableView];
    [v7 reloadData];
  }
}

- (id)_adamIDsForInstalledAndCloudExtensions
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_fromOtherDevicesAppLockupViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) lockup];
        v9 = [v8 id];
        v10 = [v9 stringValue];
        [v3 safari_addObjectUnlessNil:v10];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [(SFManageExtensionsViewController *)self _adamIDsForInstalledExtensions];
  v12 = [v11 setByAddingObjectsFromSet:v3];

  return v12;
}

- (id)_adamIDsForInstalledExtensions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_extensions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) extension];
        v9 = [v8 safari_containingAppAdamID];
        [v3 safari_addObjectUnlessNil:v9];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)dealloc
{
  [(WBSExtensionsController *)self->_webExtensionsController removeObserver:self];
  v3.receiver = self;
  v3.super_class = SFManageExtensionsViewController;
  [(SFManageExtensionsViewController *)&v3 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SFManageExtensionsViewController;
  [(SFManageExtensionsViewController *)&v5 viewDidLayoutSubviews];
  searchBar = self->_searchBar;
  v4 = [(SFManageExtensionsViewController *)self tableView];
  [v4 layoutMargins];
  [(UISearchBar *)searchBar _setOverrideContentInsets:10 forRectEdges:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFManageExtensionsViewController;
  [(SFManageExtensionsViewController *)&v4 viewWillAppear:a3];
  [(SFContentBlockerManager *)self->_contentBlockerManager addObserver:self];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SFManageExtensionsViewController;
  [(SFManageExtensionsViewController *)&v10 viewDidLoad];
  v3 = [(SFManageExtensionsViewController *)self view];
  [v3 setAccessibilityIdentifier:@"ManageWebExtensionsView"];

  v4 = [(SFManageExtensionsViewController *)self tableView];
  [v4 setKeyboardDismissMode:2];

  v5 = MEMORY[0x1E69DCF08];
  v6 = [(SFManageExtensionsViewController *)self tableView];
  v7 = [v5 sf_installSearchBarInTableView:v6 includeSeparator:0];
  searchBar = self->_searchBar;
  self->_searchBar = v7;

  [(UISearchBar *)self->_searchBar setDelegate:self];
  v9 = _WBSLocalizedString();
  [(UISearchBar *)self->_searchBar setPlaceholder:v9];

  [(SFManageExtensionsViewController *)self _updateLastViewedDate];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFManageExtensionsViewController;
  [(SFManageExtensionsViewController *)&v5 viewDidDisappear:a3];
  [(SFContentBlockerManager *)self->_contentBlockerManager removeObserver:self];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"SFManageWebExtensionsViewDidDismissNotification" object:self];
}

- (void)_updateLastViewedDate
{
  if (!self->_presentedFromPrivateBrowsing)
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [MEMORY[0x1E695DF00] now];
    [v4 safari_setDate:v3 forKey:*MEMORY[0x1E69C9390]];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:*MEMORY[0x1E69C9A30] object:self];
}

- (void)_extensionWasAdded:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v4 = [v22 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v23 = [v6 safari_containingAppAdamID];
  if (v23)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = self->_filteredRecommendedAppLockupViews;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v6 safari_containingAppAdamID];
          v12 = [v10 lockup];
          v13 = [v12 id];
          v14 = [v13 stringValue];
          v15 = [v11 isEqualToString:v14];

          if (v15)
          {
            [(SFManageExtensionsViewController *)self _reload];
            for (j = 0; j < [(NSArray *)self->_extensions count]; ++j)
            {
              v17 = [(NSArray *)self->_extensions objectAtIndexedSubscript:j];
              v18 = [v17 extension];
              v19 = [v18 isEqual:v6];

              if (v19)
              {
                [(SFManageExtensionsViewController *)self _enableExtensionWithWrapper:v17];
                v20 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:0];
                v21 = [(SFManageExtensionsViewController *)self tableView];
                [v21 scrollToRowAtIndexPath:v20 atScrollPosition:1 animated:1];

                goto LABEL_19;
              }
            }
          }
        }

        v7 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

LABEL_19:
  }
}

- (void)_extensionEnabledStateDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFManageExtensionsViewController__extensionEnabledStateDidChange___block_invoke;
  block[3] = &unk_1E721D568;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__SFManageExtensionsViewController__extensionEnabledStateDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _refreshExtensionDataAndUpdateLockupViews:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 1056);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = *(*(a1 + 32) + 1144);
        v8 = [v6 composedIdentifier];
        v9 = [v7 objectForKeyedSubscript:v8];

        if (v9)
        {
          v10 = [v6 isEnabled];
          if (v10 != [v9 isOn])
          {
            [v9 setOn:{objc_msgSend(v6, "isEnabled")}];
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

- (void)_reload
{
  [(SFManageExtensionsViewController *)self _refreshExtensionData];
  v3 = [(SFManageExtensionsViewController *)self tableView];
  [v3 reloadData];

  [(SFManageExtensionsViewController *)self _updateLastViewedDate];
}

- (void)_managedConfigurationSettingsDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SFManageExtensionsViewController__managedConfigurationSettingsDidChange___block_invoke;
  block[3] = &unk_1E721D568;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_tintIconForDarkModeIfNeeded:(id)a3
{
  v3 = a3;
  [v3 safari_computeAverageLuminance];
  v5 = v4;
  v6 = [v3 safari_isGrayscale];
  if (((v5 < 0.1) & v6 & [v3 safari_transparencyAnalysisResultIsNotOpaque]) == 1)
  {
    v7 = [MEMORY[0x1E69DC888] labelColor];
    v8 = [v3 imageWithTintColor:v7];

    v3 = v8;
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v70[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (-[SFManageExtensionsViewController _isOnOtherDevicesSection:](self, "_isOnOtherDevicesSection:", [v7 section]))
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"availableAppCell"];
    if (!v8)
    {
      v8 = [[SFAvailableAppTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"availableAppCell"];
    }

    v9 = -[NSArray objectAtIndexedSubscript:](self->_filteredFromOtherDevicesAppLockupViews, "objectAtIndexedSubscript:", [v7 row]);
    [(SFAvailableAppTableViewCell *)v8 setLockupView:v9];
LABEL_14:

    goto LABEL_15;
  }

  if (!-[SFManageExtensionsViewController _isRecommendationsSection:](self, "_isRecommendationsSection:", [v7 section]))
  {
    if (-[SFManageExtensionsViewController _isAppStoreLinkSection:](self, "_isAppStoreLinkSection:", [v7 section]))
    {
      v8 = [v6 dequeueReusableCellWithIdentifier:@"appStoreLinkCell"];
      if (!v8)
      {
        v8 = [[SFAppStoreLinkTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"appStoreLinkCell"];
      }

      v9 = [MEMORY[0x1E69C88D0] sharedInstance];
      -[SFAvailableAppTableViewCell setHidden:](v8, "setHidden:", [v9 shouldHideExtensionDiscovery]);
      goto LABEL_14;
    }

    v8 = [v6 dequeueReusableCellWithIdentifier:@"toggleExtensionCell"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"toggleExtensionCell"];
    }

    v11 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [(SFAvailableAppTableViewCell *)v8 setAccessoryView:v11];
    [v11 addTarget:self action:sel__extensionStateWasToggled_ forControlEvents:4096];
    v67 = v11;
    v65 = self->_webExtensionsController;
    v12 = -[NSArray objectAtIndexedSubscript:](self->_filteredExtensions, "objectAtIndexedSubscript:", [v7 row]);
    v13 = v12;
    if (self->_presentedFromPrivateBrowsing)
    {
      if (![v12 isEnabled])
      {
        v25 = 0;
        goto LABEL_31;
      }

      v14 = [v13 allowedInPrivateBrowsing];
    }

    else
    {
      v14 = [v12 isEnabled];
    }

    v25 = v14;
LABEL_31:
    [v11 setOn:v25];
    composedIdentifierToToggleMap = self->_composedIdentifierToToggleMap;
    v27 = [v13 composedIdentifier];
    [(NSMutableDictionary *)composedIdentifierToToggleMap setObject:v67 forKeyedSubscript:v27];

    v28 = [(SFWebExtensionsController *)v65 parentalControlsAreEnabledForExtensions];
    if (self->_presentedFromPrivateBrowsing || v28)
    {
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v32 = [MEMORY[0x1E69C88C8] sharedController];
        v33 = [v13 composedIdentifier];
        v34 = [v32 managedExtensionPrivateBrowsingStateForComposedIdentifier:v33];

        v35 = [MEMORY[0x1E69C88C8] sharedController];
        v36 = [v13 composedIdentifier];
        v37 = [v35 managedExtensionStateForComposedIdentifier:v36];

        if (v34)
        {
          v38 = 1;
        }

        else
        {
          v38 = v37 == 2;
        }

        v29 = !v38;
      }
    }

    else
    {
      v30 = [MEMORY[0x1E69C88C8] sharedController];
      v31 = [v13 composedIdentifier];
      v29 = [v30 managedExtensionStateForComposedIdentifier:v31] == 0;
    }

    [v67 setEnabled:v29];
    [v67 setTag:{objc_msgSend(v7, "row")}];
    v39 = MEMORY[0x1E6963678];
    v40 = [v13 extension];
    v41 = [v40 _plugIn];
    v42 = [v41 uuid];
    v64 = [v39 pluginKitProxyForUUID:v42];

    v43 = [v13 displayName];
    if ([v13 contentBlockerHasSameNameAsWebExtensionFromSameApp:self->_extensions])
    {
      v44 = MEMORY[0x1E696AEC0];
      v45 = _WBSLocalizedString();
      v46 = [v13 displayName];
      v47 = [v44 stringWithFormat:v45, v46];
    }

    else
    {
      v47 = v43;
    }

    if (([v13 isContentBlocker] & 1) != 0 || (objc_msgSend(v13, "extension"), v48 = objc_claimAutoreleasedReturnValue(), -[WBSWebExtensionsController webExtensionForExtension:](v65, "webExtensionForExtension:", v48), v49 = objc_claimAutoreleasedReturnValue(), v48, !v49) || (objc_msgSend(v49, "preferencesIcon"), v50 = objc_claimAutoreleasedReturnValue(), v49, !v50))
    {
      v50 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v64 format:0];
    }

    v51 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
    [v51 size];
    v53 = v52;
    v55 = v54;

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __68__SFManageExtensionsViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v69[3] = &unk_1E721F318;
    v69[4] = self;
    v56 = [v50 safari_dynamicImageWithSize:v69 generator:{v53, v55}];

    v57 = [(SFAvailableAppTableViewCell *)v8 imageView];
    [v57 setImage:v56];

    v58 = [(SFAvailableAppTableViewCell *)v8 textLabel];
    [v58 setText:v47];

    goto LABEL_15;
  }

  if ([(NSArray *)self->_filteredRecommendedAppLockupViews count])
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"availableAppCell"];
    if (!v8)
    {
      v8 = [[SFAvailableAppTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"availableAppCell"];
    }

    v9 = -[NSArray objectAtIndexedSubscript:](self->_filteredRecommendedAppLockupViews, "objectAtIndexedSubscript:", [v7 row]);
    [(SFAvailableAppTableViewCell *)v8 setLockupView:v9];
    goto LABEL_14;
  }

  if (!self->_spinner)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v15;

    [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:@"loadingIndicatorCell"];
  if (!v8)
  {
    v17 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"loadingIndicatorCell"];
    [(SFAvailableAppTableViewCell *)v17 setBackgroundView:0];
    v18 = [MEMORY[0x1E69DC888] clearColor];
    v62 = v17;
    [(SFAvailableAppTableViewCell *)v17 setBackgroundColor:v18];

    v68 = [(SFAvailableAppTableViewCell *)v17 contentView];
    [v68 addSubview:self->_spinner];
    v19 = MEMORY[0x1E696ACD8];
    v66 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
    v61 = [v68 centerXAnchor];
    v60 = [v66 constraintEqualToAnchor:?];
    v70[0] = v60;
    v63 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
    v59 = [v68 centerYAnchor];
    v20 = [v63 constraintEqualToAnchor:?];
    v70[1] = v20;
    v21 = [v68 heightAnchor];
    v22 = [(UIActivityIndicatorView *)self->_spinner heightAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 multiplier:1.0 constant:20.0];
    v70[2] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
    [v19 activateConstraints:v24];

    v8 = v62;
  }

  [(UIActivityIndicatorView *)self->_spinner setHidden:0];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
LABEL_15:

  return v8;
}

id __68__SFManageExtensionsViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _tintIconForDarkModeIfNeeded:a2];

  return v2;
}

- (void)_extensionStateWasToggled:(id)a3
{
  v4 = a3;
  v5 = -[NSArray objectAtIndexedSubscript:](self->_filteredExtensions, "objectAtIndexedSubscript:", [v4 tag]);
  v19 = 0;
  v6 = [v5 canLoadWithErrorString:&v19];
  v7 = v19;
  if (v6)
  {
    if ([v4 isOn])
    {
      [(SFManageExtensionsViewController *)self _enableExtensionWithWrapper:v5];
    }

    else if (self->_presentedFromPrivateBrowsing)
    {
      [(SFManageExtensionsViewController *)self _setPrivateBrowsingStateForExtension:v5 isOn:0];
    }

    else
    {
      [v5 disable];
    }
  }

  else
  {
    v8 = [v5 displayName];
    v9 = MEMORY[0x1E69DC650];
    v10 = MEMORY[0x1E696AEC0];
    v11 = _WBSLocalizedString();
    v12 = [v10 stringWithFormat:v11, v8];
    v13 = [v9 alertControllerWithTitle:v12 message:v7 preferredStyle:1];

    v14 = MEMORY[0x1E69DC648];
    v15 = _WBSLocalizedString();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__SFManageExtensionsViewController__extensionStateWasToggled___block_invoke;
    v17[3] = &unk_1E721F340;
    v18 = v4;
    v16 = [v14 actionWithTitle:v15 style:0 handler:v17];
    [v13 addAction:v16];

    [(SFManageExtensionsViewController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (void)_enableExtensionWithWrapper:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_presentedFromPrivateBrowsing)
  {
    if ([v4 isEnabled])
    {
      [(SFManageExtensionsViewController *)self _setPrivateBrowsingStateForExtension:v5 isOn:1];
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __64__SFManageExtensionsViewController__enableExtensionWithWrapper___block_invoke;
      v6[3] = &unk_1E721F368;
      v6[4] = self;
      v7 = v5;
      [v7 enableWithPresentingViewController:self completionHandler:v6];
    }
  }

  else
  {
    [v4 enableWithPresentingViewController:self completionHandler:&__block_literal_global_63];
  }
}

- (void)_setPrivateBrowsingStateForExtension:(id)a3 isOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 setAllowedInPrivateBrowsing:v4];
  v5 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v5 postNotificationName:*MEMORY[0x1E69C9A58] object:0];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v11 = a3;
  v6 = a4;
  userTypedQuery = self->_userTypedQuery;
  if (userTypedQuery != v6 && ![(NSString *)userTypedQuery isEqualToString:v6])
  {
    v8 = [(NSString *)v6 copy];
    v9 = self->_userTypedQuery;
    self->_userTypedQuery = v8;

    [(SFManageExtensionsViewController *)self _filterExtensionsBasedOnUserTypedSearchQuery];
    [(SFManageExtensionsViewController *)self _filterExtensionAppLockupViews];
    v10 = [(SFManageExtensionsViewController *)self tableView];
    [v10 reloadData];
  }
}

- (void)_filterExtensionsBasedOnUserTypedSearchQuery
{
  v3 = [(NSString *)self->_userTypedQuery length];
  extensions = self->_extensions;
  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__SFManageExtensionsViewController__filterExtensionsBasedOnUserTypedSearchQuery__block_invoke;
    v9[3] = &unk_1E721F390;
    v9[4] = self;
    v5 = [(NSArray *)extensions safari_filterObjectsUsingBlock:v9];
    filteredExtensions = self->_filteredExtensions;
    self->_filteredExtensions = v5;
  }

  else
  {
    v7 = [(NSArray *)extensions copy];
    v8 = self->_filteredExtensions;
    self->_filteredExtensions = v7;
  }
}

uint64_t __80__SFManageExtensionsViewController__filterExtensionsBasedOnUserTypedSearchQuery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayName];
  if ([v4 localizedCaseInsensitiveContainsString:*(*(a1 + 32) + 1080)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 shortName];
    v5 = [v6 localizedCaseInsensitiveContainsString:*(*(a1 + 32) + 1080)];
  }

  return v5;
}

- (void)_filterExtensionAppLockupViews
{
  v3 = [(SFManageExtensionsViewController *)self _adamIDsForInstalledExtensions];
  fromOtherDevicesAppLockupViews = self->_fromOtherDevicesAppLockupViews;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__SFManageExtensionsViewController__filterExtensionAppLockupViews__block_invoke;
  v15[3] = &unk_1E721F3B8;
  v15[4] = self;
  v5 = v3;
  v16 = v5;
  v6 = [(NSArray *)fromOtherDevicesAppLockupViews safari_filterObjectsUsingBlock:v15];
  filteredFromOtherDevicesAppLockupViews = self->_filteredFromOtherDevicesAppLockupViews;
  self->_filteredFromOtherDevicesAppLockupViews = v6;

  v8 = [(SFManageExtensionsViewController *)self _adamIDsForInstalledAndCloudExtensions];
  recommendedAppLockupViews = self->_recommendedAppLockupViews;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__SFManageExtensionsViewController__filterExtensionAppLockupViews__block_invoke_2;
  v13[3] = &unk_1E721F3B8;
  v13[4] = self;
  v14 = v8;
  v10 = v8;
  v11 = [(NSArray *)recommendedAppLockupViews safari_filterObjectsUsingBlock:v13];
  filteredRecommendedAppLockupViews = self->_filteredRecommendedAppLockupViews;
  self->_filteredRecommendedAppLockupViews = v11;
}

uint64_t __66__SFManageExtensionsViewController__filterExtensionAppLockupViews__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = [*(*(a1 + 32) + 1080) length];
  if (v6)
  {
    v2 = [v5 lockup];
    v3 = [v2 title];
    if (![v3 localizedCaseInsensitiveContainsString:*(*(a1 + 32) + 1080)])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v8 = *(a1 + 40);
  v9 = [v5 lockup];
  v10 = [v9 id];
  v11 = [v10 stringValue];
  v7 = [v8 containsObject:v11] ^ 1;

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

uint64_t __66__SFManageExtensionsViewController__filterExtensionAppLockupViews__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = [*(*(a1 + 32) + 1080) length];
  if (v6)
  {
    v2 = [v5 lockup];
    v3 = [v2 title];
    if (![v3 localizedCaseInsensitiveContainsString:*(*(a1 + 32) + 1080)])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v8 = *(a1 + 40);
  v9 = [v5 lockup];
  v10 = [v9 id];
  v11 = [v10 stringValue];
  v7 = [v8 containsObject:v11] ^ 1;

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(SFManageExtensionsViewController *)self _isInstalledExtensionsSection:a4])
  {
    v6 = &OBJC_IVAR___SFManageExtensionsViewController__filteredExtensions;
LABEL_5:
    p_filteredRecommendedAppLockupViews = (self + *v6);
    goto LABEL_6;
  }

  if ([(SFManageExtensionsViewController *)self _isOnOtherDevicesSection:a4])
  {
    v6 = &OBJC_IVAR___SFManageExtensionsViewController__filteredFromOtherDevicesAppLockupViews;
    goto LABEL_5;
  }

  if (![(SFManageExtensionsViewController *)self _isRecommendationsSection:a4])
  {
    return [(SFManageExtensionsViewController *)self _isAppStoreLinkSection:a4];
  }

  p_filteredRecommendedAppLockupViews = &self->_filteredRecommendedAppLockupViews;
  if (![(NSArray *)*p_filteredRecommendedAppLockupViews count])
  {
    return 1;
  }

LABEL_6:
  v8 = *p_filteredRecommendedAppLockupViews;

  return [(NSArray *)v8 count];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (-[SFManageExtensionsViewController _isAppStoreLinkSection:](self, "_isAppStoreLinkSection:", [v6 section]))
  {
    [v9 deselectRowAtIndexPath:v6 animated:1];
    v7 = [MEMORY[0x1E6963608] defaultWorkspace];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69C9A50]];
    [v7 openURL:v8 withOptions:0];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  LOBYTE(self) = -[SFManageExtensionsViewController _isAppStoreLinkSection:](self, "_isAppStoreLinkSection:", [v5 section]);

  return self;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(NSArray *)self->_filteredExtensions count];
  v5 = [(NSArray *)self->_filteredFromOtherDevicesAppLockupViews count];
  v6 = [(SFManageExtensionsViewController *)self _haveRecommendationsSection];
  v7 = [MEMORY[0x1E69C88D0] sharedInstance];
  v8 = [v7 shouldHideExtensionDiscovery];
  v9 = v4 != 0;
  v10 = 1;
  if (v4)
  {
    v10 = 2;
  }

  if (v5)
  {
    v9 = v10;
  }

  v11 = v9 + v6;

  return v11 + (v8 ^ 1u);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(SFManageExtensionsViewController *)self _isInstalledExtensionsSection:a4])
  {
    if (self->_presentedFromPrivateBrowsing)
    {
      goto LABEL_14;
    }

    if ([(SFWebExtensionsController *)self->_webExtensionsController hasNamedProfiles])
    {
      v6 = [(SFWebExtensionsController *)self->_webExtensionsController profile];
      v7 = [v6 title];

      goto LABEL_18;
    }

    if (([(NSArray *)self->_filteredFromOtherDevicesAppLockupViews count]|| [(SFManageExtensionsViewController *)self _haveRecommendationsSection]) && [(NSArray *)self->_filteredExtensions count])
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([(SFManageExtensionsViewController *)self _isOnOtherDevicesSection:a4])
  {
    goto LABEL_14;
  }

  if (![(SFManageExtensionsViewController *)self _isRecommendationsSection:a4])
  {
    [(SFManageExtensionsViewController *)self _isAppStoreLinkSection:a4];
LABEL_16:
    v7 = 0;
    goto LABEL_18;
  }

  if ([(NSArray *)self->_filteredRecommendedAppLockupViews count])
  {
LABEL_14:
    v7 = _WBSLocalizedString();
    goto LABEL_18;
  }

  v7 = &stru_1EFF36230;
LABEL_18:

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(SFManageExtensionsViewController *)self _isInstalledExtensionsSection:a4])
  {
    v5 = [MEMORY[0x1E69C88C8] sharedController];
    v6 = [v5 hasAnyExtensionManagement];

    if (v6)
    {
      extensions = self->_extensions;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__SFManageExtensionsViewController_tableView_titleForFooterInSection___block_invoke;
      v10[3] = &unk_1E721F390;
      v10[4] = self;
      [(NSArray *)extensions safari_containsObjectPassingTest:v10];
      v8 = _WBSLocalizedString();
    }

    else
    {
      v8 = _WBSLocalizedString();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __70__SFManageExtensionsViewController_tableView_titleForFooterInSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 1136) == 1)
  {
    v4 = [MEMORY[0x1E69C88C8] sharedController];
    v5 = [v3 composedIdentifier];
    v6 = [v4 managedExtensionPrivateBrowsingStateForComposedIdentifier:v5];
  }

  else
  {
    v4 = [MEMORY[0x1E69C88C8] sharedController];
    v5 = [v3 composedIdentifier];
    v6 = [v4 managedExtensionStateForComposedIdentifier:v5];
  }

  v7 = v6;

  return v7 == 0;
}

- (BOOL)_isInstalledExtensionsSection:(int64_t)a3
{
  v4 = [(NSArray *)self->_filteredExtensions count];
  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  return !v5;
}

- (BOOL)_isOnOtherDevicesSection:(int64_t)a3
{
  v5 = [(NSArray *)self->_filteredFromOtherDevicesAppLockupViews count];
  if (v5)
  {
    LOBYTE(v5) = ([(NSArray *)self->_filteredExtensions count]!= 0) == a3;
  }

  return v5;
}

- (BOOL)_isRecommendationsSection:(int64_t)a3
{
  v5 = [(SFManageExtensionsViewController *)self _haveRecommendationsSection];
  if (v5)
  {
    v6 = [(NSArray *)self->_filteredExtensions count];
    v7 = [(NSArray *)self->_filteredFromOtherDevicesAppLockupViews count];
    v8 = v6 != 0;
    v9 = 1;
    if (v6)
    {
      v9 = 2;
    }

    if (v7)
    {
      v8 = v9;
    }

    LOBYTE(v5) = v8 == a3;
  }

  return v5;
}

- (BOOL)_isAppStoreLinkSection:(int64_t)a3
{
  v5 = [MEMORY[0x1E69C88D0] sharedInstance];
  v6 = [v5 shouldHideExtensionDiscovery];

  if (v6)
  {
    return 0;
  }

  v8 = [(NSArray *)self->_filteredExtensions count];
  v9 = [(NSArray *)self->_filteredFromOtherDevicesAppLockupViews count];
  v10 = 1;
  if (v8)
  {
    v10 = 2;
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8 != 0;
  }

  return v11 + [(SFManageExtensionsViewController *)self _haveRecommendationsSection]== a3;
}

- (_SFPageFormatMenuController)presentingPageFormatMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingPageFormatMenu);

  return WeakRetained;
}

@end