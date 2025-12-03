@interface SFManageExtensionsViewController
+ (id)createManageExtensionsNavigationControllerFromPageFormatMenu:(id)menu activeDocument:(id)document;
- (BOOL)_isAppStoreLinkSection:(int64_t)section;
- (BOOL)_isInstalledExtensionsSection:(int64_t)section;
- (BOOL)_isOnOtherDevicesSection:(int64_t)section;
- (BOOL)_isRecommendationsSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_SFPageFormatMenuController)presentingPageFormatMenu;
- (id)_adamIDsForInstalledAndCloudExtensions;
- (id)_adamIDsForInstalledExtensions;
- (id)_tintIconForDarkModeIfNeeded:(id)needed;
- (id)initFromPageFormatMenu:(id)menu activeDocument:(id)document;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_enableExtensionWithWrapper:(id)wrapper;
- (void)_extensionEnabledStateDidChange:(id)change;
- (void)_extensionStateWasToggled:(id)toggled;
- (void)_extensionWasAdded:(id)added;
- (void)_filterExtensionAppLockupViews;
- (void)_filterExtensionsBasedOnUserTypedSearchQuery;
- (void)_managedConfigurationSettingsDidChange:(id)change;
- (void)_refreshExtensionDataAndUpdateLockupViews:(BOOL)views;
- (void)_reload;
- (void)_setPrivateBrowsingStateForExtension:(id)extension isOn:(BOOL)on;
- (void)_updateLastViewedDate;
- (void)_updateLockupViews;
- (void)_updateRecommendedLockupViews;
- (void)dealloc;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SFManageExtensionsViewController

+ (id)createManageExtensionsNavigationControllerFromPageFormatMenu:(id)menu activeDocument:(id)document
{
  menuCopy = menu;
  documentCopy = document;
  v7 = [[SFManageExtensionsViewController alloc] initFromPageFormatMenu:menuCopy activeDocument:documentCopy];
  objc_initWeak(&location, v7);
  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  _sf_popoverDoneButtonItem = [MEMORY[0x1E69DC708] _sf_popoverDoneButtonItem];
  v10 = MEMORY[0x1E69DC628];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __112__SFManageExtensionsViewController_createManageExtensionsNavigationControllerFromPageFormatMenu_activeDocument___block_invoke;
  v19 = &unk_1E721F278;
  objc_copyWeak(&v20, &location);
  v11 = [v10 actionWithTitle:&stru_1EFF36230 image:0 identifier:0 handler:&v16];
  v12 = [v8 initWithBarButtonSystemItem:_sf_popoverDoneButtonItem primaryAction:{v11, v16, v17, v18, v19}];
  navigationItem = [v7 navigationItem];
  [navigationItem sf_setPreferredDismissOrDoneButtonItem:v12];

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

- (id)initFromPageFormatMenu:(id)menu activeDocument:(id)document
{
  menuCopy = menu;
  documentCopy = document;
  v22.receiver = self;
  v22.super_class = SFManageExtensionsViewController;
  v8 = [(SFManageExtensionsViewController *)&v22 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingPageFormatMenu, menuCopy);
    v9->_presentedFromPrivateBrowsing = [documentCopy isPrivateBrowsingEnabled];
    webExtensionsController = [documentCopy webExtensionsController];
    webExtensionsController = v9->_webExtensionsController;
    v9->_webExtensionsController = webExtensionsController;

    contentBlockerManager = [documentCopy contentBlockerManager];
    contentBlockerManager = v9->_contentBlockerManager;
    v9->_contentBlockerManager = contentBlockerManager;

    v14 = v9->_webExtensionsController;
    [(SFManageExtensionsViewController *)v9 _refreshExtensionData];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__extensionWasAdded_ name:*MEMORY[0x1E69C92B8] object:0];
    [defaultCenter addObserver:v9 selector:sel__extensionEnabledStateDidChange_ name:*MEMORY[0x1E69C9220] object:0];
    [defaultCenter addObserver:v9 selector:sel__reload name:*MEMORY[0x1E69C9930] object:0];
    [defaultCenter addObserver:v9 selector:sel__reload name:*MEMORY[0x1E69C8C38] object:0];
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    [defaultCenter addObserver:v9 selector:sel__managedConfigurationSettingsDidChange_ name:*MEMORY[0x1E69ADD68] object:mEMORY[0x1E69ADFB8]];

    [(WBSExtensionsController *)v14 addObserver:v9];
    v17 = _WBSLocalizedString();
    [(SFManageExtensionsViewController *)v9 setTitle:v17];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    composedIdentifierToToggleMap = v9->_composedIdentifierToToggleMap;
    v9->_composedIdentifierToToggleMap = dictionary;

    v20 = v9;
  }

  return v9;
}

- (void)_refreshExtensionDataAndUpdateLockupViews:(BOOL)views
{
  viewsCopy = views;
  v5 = self->_webExtensionsController;
  extensions = [(WBSExtensionsController *)v5 extensions];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__SFManageExtensionsViewController__refreshExtensionDataAndUpdateLockupViews___block_invoke;
  v19[3] = &unk_1E721F2A0;
  v7 = v5;
  v20 = v7;
  v8 = [extensions safari_mapAndFilterObjectsUsingBlock:v19];
  extensions2 = [(SFContentBlockerManager *)self->_contentBlockerManager extensions];
  allObjects = [extensions2 allObjects];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__SFManageExtensionsViewController__refreshExtensionDataAndUpdateLockupViews___block_invoke_2;
  v16[3] = &unk_1E721F2C8;
  v11 = v7;
  v17 = v11;
  selfCopy = self;
  v12 = [allObjects safari_mapAndFilterObjectsUsingBlock:v16];
  v13 = [v8 arrayByAddingObjectsFromArray:v12];
  v14 = [v13 sortedArrayUsingSelector:sel_localizedCompare_];
  extensions = self->_extensions;
  self->_extensions = v14;

  [(SFManageExtensionsViewController *)self _filterExtensionsBasedOnUserTypedSearchQuery];
  if (viewsCopy)
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
  mEMORY[0x1E69C88D0] = [MEMORY[0x1E69C88D0] sharedInstance];
  shouldHideExtensionDiscovery = [mEMORY[0x1E69C88D0] shouldHideExtensionDiscovery];

  if (shouldHideExtensionDiscovery)
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
      tableView = [(SFManageExtensionsViewController *)self tableView];
      [tableView reloadData];
    }
  }

  else if (!self->_waitingForLockupViews)
  {
    self->_waitingForLockupViews = 1;
    mEMORY[0x1E69C9778] = [MEMORY[0x1E69C9778] sharedManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__SFManageExtensionsViewController__updateLockupViews__block_invoke;
    v12[3] = &unk_1E721F2F0;
    v12[4] = self;
    [mEMORY[0x1E69C9778] getLockupViewsForAppsOnOtherDevicesWithCompletionHandler:v12];
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
    tableView = [(SFManageExtensionsViewController *)self tableView];
    [tableView reloadData];
  }

  else
  {
    mEMORY[0x1E69C9740] = [MEMORY[0x1E69C9740] sharedGenerator];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__SFManageExtensionsViewController__updateRecommendedLockupViews__block_invoke;
    v5[3] = &unk_1E721F2F0;
    v5[4] = self;
    [mEMORY[0x1E69C9740] getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:v5];
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

        lockup = [*(*(&v14 + 1) + 8 * i) lockup];
        v9 = [lockup id];
        stringValue = [v9 stringValue];
        [v3 safari_addObjectUnlessNil:stringValue];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  _adamIDsForInstalledExtensions = [(SFManageExtensionsViewController *)self _adamIDsForInstalledExtensions];
  v12 = [_adamIDsForInstalledExtensions setByAddingObjectsFromSet:v3];

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

        extension = [*(*(&v12 + 1) + 8 * i) extension];
        safari_containingAppAdamID = [extension safari_containingAppAdamID];
        [v3 safari_addObjectUnlessNil:safari_containingAppAdamID];
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
  tableView = [(SFManageExtensionsViewController *)self tableView];
  [tableView layoutMargins];
  [(UISearchBar *)searchBar _setOverrideContentInsets:10 forRectEdges:?];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFManageExtensionsViewController;
  [(SFManageExtensionsViewController *)&v4 viewWillAppear:appear];
  [(SFContentBlockerManager *)self->_contentBlockerManager addObserver:self];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SFManageExtensionsViewController;
  [(SFManageExtensionsViewController *)&v10 viewDidLoad];
  view = [(SFManageExtensionsViewController *)self view];
  [view setAccessibilityIdentifier:@"ManageWebExtensionsView"];

  tableView = [(SFManageExtensionsViewController *)self tableView];
  [tableView setKeyboardDismissMode:2];

  v5 = MEMORY[0x1E69DCF08];
  tableView2 = [(SFManageExtensionsViewController *)self tableView];
  v7 = [v5 sf_installSearchBarInTableView:tableView2 includeSeparator:0];
  searchBar = self->_searchBar;
  self->_searchBar = v7;

  [(UISearchBar *)self->_searchBar setDelegate:self];
  v9 = _WBSLocalizedString();
  [(UISearchBar *)self->_searchBar setPlaceholder:v9];

  [(SFManageExtensionsViewController *)self _updateLastViewedDate];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SFManageExtensionsViewController;
  [(SFManageExtensionsViewController *)&v5 viewDidDisappear:disappear];
  [(SFContentBlockerManager *)self->_contentBlockerManager removeObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SFManageWebExtensionsViewDidDismissNotification" object:self];
}

- (void)_updateLastViewedDate
{
  if (!self->_presentedFromPrivateBrowsing)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [MEMORY[0x1E695DF00] now];
    [standardUserDefaults safari_setDate:v3 forKey:*MEMORY[0x1E69C9390]];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69C9A30] object:self];
}

- (void)_extensionWasAdded:(id)added
{
  v30 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  object = [addedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  safari_containingAppAdamID = [v6 safari_containingAppAdamID];
  if (safari_containingAppAdamID)
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
          safari_containingAppAdamID2 = [v6 safari_containingAppAdamID];
          lockup = [v10 lockup];
          v13 = [lockup id];
          stringValue = [v13 stringValue];
          v15 = [safari_containingAppAdamID2 isEqualToString:stringValue];

          if (v15)
          {
            [(SFManageExtensionsViewController *)self _reload];
            for (j = 0; j < [(NSArray *)self->_extensions count]; ++j)
            {
              v17 = [(NSArray *)self->_extensions objectAtIndexedSubscript:j];
              extension = [v17 extension];
              v19 = [extension isEqual:v6];

              if (v19)
              {
                [(SFManageExtensionsViewController *)self _enableExtensionWithWrapper:v17];
                v20 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:0];
                tableView = [(SFManageExtensionsViewController *)self tableView];
                [tableView scrollToRowAtIndexPath:v20 atScrollPosition:1 animated:1];

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

- (void)_extensionEnabledStateDidChange:(id)change
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
  tableView = [(SFManageExtensionsViewController *)self tableView];
  [tableView reloadData];

  [(SFManageExtensionsViewController *)self _updateLastViewedDate];
}

- (void)_managedConfigurationSettingsDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SFManageExtensionsViewController__managedConfigurationSettingsDidChange___block_invoke;
  block[3] = &unk_1E721D568;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_tintIconForDarkModeIfNeeded:(id)needed
{
  neededCopy = needed;
  [neededCopy safari_computeAverageLuminance];
  v5 = v4;
  safari_isGrayscale = [neededCopy safari_isGrayscale];
  if (((v5 < 0.1) & safari_isGrayscale & [neededCopy safari_transparencyAnalysisResultIsNotOpaque]) == 1)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v8 = [neededCopy imageWithTintColor:labelColor];

    neededCopy = v8;
  }

  return neededCopy;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v70[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (-[SFManageExtensionsViewController _isOnOtherDevicesSection:](self, "_isOnOtherDevicesSection:", [pathCopy section]))
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"availableAppCell"];
    if (!v8)
    {
      v8 = [[SFAvailableAppTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"availableAppCell"];
    }

    mEMORY[0x1E69C88D0] = -[NSArray objectAtIndexedSubscript:](self->_filteredFromOtherDevicesAppLockupViews, "objectAtIndexedSubscript:", [pathCopy row]);
    [(SFAvailableAppTableViewCell *)v8 setLockupView:mEMORY[0x1E69C88D0]];
LABEL_14:

    goto LABEL_15;
  }

  if (!-[SFManageExtensionsViewController _isRecommendationsSection:](self, "_isRecommendationsSection:", [pathCopy section]))
  {
    if (-[SFManageExtensionsViewController _isAppStoreLinkSection:](self, "_isAppStoreLinkSection:", [pathCopy section]))
    {
      v8 = [viewCopy dequeueReusableCellWithIdentifier:@"appStoreLinkCell"];
      if (!v8)
      {
        v8 = [[SFAppStoreLinkTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"appStoreLinkCell"];
      }

      mEMORY[0x1E69C88D0] = [MEMORY[0x1E69C88D0] sharedInstance];
      -[SFAvailableAppTableViewCell setHidden:](v8, "setHidden:", [mEMORY[0x1E69C88D0] shouldHideExtensionDiscovery]);
      goto LABEL_14;
    }

    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"toggleExtensionCell"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"toggleExtensionCell"];
    }

    v11 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [(SFAvailableAppTableViewCell *)v8 setAccessoryView:v11];
    [v11 addTarget:self action:sel__extensionStateWasToggled_ forControlEvents:4096];
    v67 = v11;
    v65 = self->_webExtensionsController;
    v12 = -[NSArray objectAtIndexedSubscript:](self->_filteredExtensions, "objectAtIndexedSubscript:", [pathCopy row]);
    v13 = v12;
    if (self->_presentedFromPrivateBrowsing)
    {
      if (![v12 isEnabled])
      {
        v25 = 0;
        goto LABEL_31;
      }

      allowedInPrivateBrowsing = [v13 allowedInPrivateBrowsing];
    }

    else
    {
      allowedInPrivateBrowsing = [v12 isEnabled];
    }

    v25 = allowedInPrivateBrowsing;
LABEL_31:
    [v11 setOn:v25];
    composedIdentifierToToggleMap = self->_composedIdentifierToToggleMap;
    composedIdentifier = [v13 composedIdentifier];
    [(NSMutableDictionary *)composedIdentifierToToggleMap setObject:v67 forKeyedSubscript:composedIdentifier];

    parentalControlsAreEnabledForExtensions = [(SFWebExtensionsController *)v65 parentalControlsAreEnabledForExtensions];
    if (self->_presentedFromPrivateBrowsing || parentalControlsAreEnabledForExtensions)
    {
      if (parentalControlsAreEnabledForExtensions)
      {
        v29 = 0;
      }

      else
      {
        mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
        composedIdentifier2 = [v13 composedIdentifier];
        v34 = [mEMORY[0x1E69C88C8] managedExtensionPrivateBrowsingStateForComposedIdentifier:composedIdentifier2];

        mEMORY[0x1E69C88C8]2 = [MEMORY[0x1E69C88C8] sharedController];
        composedIdentifier3 = [v13 composedIdentifier];
        v37 = [mEMORY[0x1E69C88C8]2 managedExtensionStateForComposedIdentifier:composedIdentifier3];

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
      mEMORY[0x1E69C88C8]3 = [MEMORY[0x1E69C88C8] sharedController];
      composedIdentifier4 = [v13 composedIdentifier];
      v29 = [mEMORY[0x1E69C88C8]3 managedExtensionStateForComposedIdentifier:composedIdentifier4] == 0;
    }

    [v67 setEnabled:v29];
    [v67 setTag:{objc_msgSend(pathCopy, "row")}];
    v39 = MEMORY[0x1E6963678];
    extension = [v13 extension];
    _plugIn = [extension _plugIn];
    uuid = [_plugIn uuid];
    v64 = [v39 pluginKitProxyForUUID:uuid];

    displayName = [v13 displayName];
    if ([v13 contentBlockerHasSameNameAsWebExtensionFromSameApp:self->_extensions])
    {
      v44 = MEMORY[0x1E696AEC0];
      v45 = _WBSLocalizedString();
      displayName2 = [v13 displayName];
      v47 = [v44 stringWithFormat:v45, displayName2];
    }

    else
    {
      v47 = displayName;
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

    imageView = [(SFAvailableAppTableViewCell *)v8 imageView];
    [imageView setImage:v56];

    textLabel = [(SFAvailableAppTableViewCell *)v8 textLabel];
    [textLabel setText:v47];

    goto LABEL_15;
  }

  if ([(NSArray *)self->_filteredRecommendedAppLockupViews count])
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"availableAppCell"];
    if (!v8)
    {
      v8 = [[SFAvailableAppTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"availableAppCell"];
    }

    mEMORY[0x1E69C88D0] = -[NSArray objectAtIndexedSubscript:](self->_filteredRecommendedAppLockupViews, "objectAtIndexedSubscript:", [pathCopy row]);
    [(SFAvailableAppTableViewCell *)v8 setLockupView:mEMORY[0x1E69C88D0]];
    goto LABEL_14;
  }

  if (!self->_spinner)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v15;

    [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"loadingIndicatorCell"];
  if (!v8)
  {
    v17 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"loadingIndicatorCell"];
    [(SFAvailableAppTableViewCell *)v17 setBackgroundView:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v62 = v17;
    [(SFAvailableAppTableViewCell *)v17 setBackgroundColor:clearColor];

    contentView = [(SFAvailableAppTableViewCell *)v17 contentView];
    [contentView addSubview:self->_spinner];
    v19 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v60 = [centerXAnchor constraintEqualToAnchor:?];
    v70[0] = v60;
    centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:?];
    v70[1] = v20;
    heightAnchor = [contentView heightAnchor];
    heightAnchor2 = [(UIActivityIndicatorView *)self->_spinner heightAnchor];
    v23 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0 constant:20.0];
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

- (void)_extensionStateWasToggled:(id)toggled
{
  toggledCopy = toggled;
  v5 = -[NSArray objectAtIndexedSubscript:](self->_filteredExtensions, "objectAtIndexedSubscript:", [toggledCopy tag]);
  v19 = 0;
  v6 = [v5 canLoadWithErrorString:&v19];
  v7 = v19;
  if (v6)
  {
    if ([toggledCopy isOn])
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
    displayName = [v5 displayName];
    v9 = MEMORY[0x1E69DC650];
    v10 = MEMORY[0x1E696AEC0];
    v11 = _WBSLocalizedString();
    v12 = [v10 stringWithFormat:v11, displayName];
    v13 = [v9 alertControllerWithTitle:v12 message:v7 preferredStyle:1];

    v14 = MEMORY[0x1E69DC648];
    v15 = _WBSLocalizedString();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__SFManageExtensionsViewController__extensionStateWasToggled___block_invoke;
    v17[3] = &unk_1E721F340;
    v18 = toggledCopy;
    v16 = [v14 actionWithTitle:v15 style:0 handler:v17];
    [v13 addAction:v16];

    [(SFManageExtensionsViewController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (void)_enableExtensionWithWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v5 = wrapperCopy;
  if (self->_presentedFromPrivateBrowsing)
  {
    if ([wrapperCopy isEnabled])
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
    [wrapperCopy enableWithPresentingViewController:self completionHandler:&__block_literal_global_63];
  }
}

- (void)_setPrivateBrowsingStateForExtension:(id)extension isOn:(BOOL)on
{
  onCopy = on;
  extensionCopy = extension;
  [extensionCopy setAllowedInPrivateBrowsing:onCopy];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69C9A58] object:0];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  changeCopy = change;
  userTypedQuery = self->_userTypedQuery;
  if (userTypedQuery != changeCopy && ![(NSString *)userTypedQuery isEqualToString:changeCopy])
  {
    v8 = [(NSString *)changeCopy copy];
    v9 = self->_userTypedQuery;
    self->_userTypedQuery = v8;

    [(SFManageExtensionsViewController *)self _filterExtensionsBasedOnUserTypedSearchQuery];
    [(SFManageExtensionsViewController *)self _filterExtensionAppLockupViews];
    tableView = [(SFManageExtensionsViewController *)self tableView];
    [tableView reloadData];
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
  _adamIDsForInstalledExtensions = [(SFManageExtensionsViewController *)self _adamIDsForInstalledExtensions];
  fromOtherDevicesAppLockupViews = self->_fromOtherDevicesAppLockupViews;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__SFManageExtensionsViewController__filterExtensionAppLockupViews__block_invoke;
  v15[3] = &unk_1E721F3B8;
  v15[4] = self;
  v5 = _adamIDsForInstalledExtensions;
  v16 = v5;
  v6 = [(NSArray *)fromOtherDevicesAppLockupViews safari_filterObjectsUsingBlock:v15];
  filteredFromOtherDevicesAppLockupViews = self->_filteredFromOtherDevicesAppLockupViews;
  self->_filteredFromOtherDevicesAppLockupViews = v6;

  _adamIDsForInstalledAndCloudExtensions = [(SFManageExtensionsViewController *)self _adamIDsForInstalledAndCloudExtensions];
  recommendedAppLockupViews = self->_recommendedAppLockupViews;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__SFManageExtensionsViewController__filterExtensionAppLockupViews__block_invoke_2;
  v13[3] = &unk_1E721F3B8;
  v13[4] = self;
  v14 = _adamIDsForInstalledAndCloudExtensions;
  v10 = _adamIDsForInstalledAndCloudExtensions;
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(SFManageExtensionsViewController *)self _isInstalledExtensionsSection:section])
  {
    v6 = &OBJC_IVAR___SFManageExtensionsViewController__filteredExtensions;
LABEL_5:
    p_filteredRecommendedAppLockupViews = (self + *v6);
    goto LABEL_6;
  }

  if ([(SFManageExtensionsViewController *)self _isOnOtherDevicesSection:section])
  {
    v6 = &OBJC_IVAR___SFManageExtensionsViewController__filteredFromOtherDevicesAppLockupViews;
    goto LABEL_5;
  }

  if (![(SFManageExtensionsViewController *)self _isRecommendationsSection:section])
  {
    return [(SFManageExtensionsViewController *)self _isAppStoreLinkSection:section];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[SFManageExtensionsViewController _isAppStoreLinkSection:](self, "_isAppStoreLinkSection:", [pathCopy section]))
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69C9A50]];
    [defaultWorkspace openURL:v8 withOptions:0];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  LOBYTE(self) = -[SFManageExtensionsViewController _isAppStoreLinkSection:](self, "_isAppStoreLinkSection:", [pathCopy section]);

  return self;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = [(NSArray *)self->_filteredExtensions count];
  v5 = [(NSArray *)self->_filteredFromOtherDevicesAppLockupViews count];
  _haveRecommendationsSection = [(SFManageExtensionsViewController *)self _haveRecommendationsSection];
  mEMORY[0x1E69C88D0] = [MEMORY[0x1E69C88D0] sharedInstance];
  shouldHideExtensionDiscovery = [mEMORY[0x1E69C88D0] shouldHideExtensionDiscovery];
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

  v11 = v9 + _haveRecommendationsSection;

  return v11 + (shouldHideExtensionDiscovery ^ 1u);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(SFManageExtensionsViewController *)self _isInstalledExtensionsSection:section])
  {
    if (self->_presentedFromPrivateBrowsing)
    {
      goto LABEL_14;
    }

    if ([(SFWebExtensionsController *)self->_webExtensionsController hasNamedProfiles])
    {
      profile = [(SFWebExtensionsController *)self->_webExtensionsController profile];
      title = [profile title];

      goto LABEL_18;
    }

    if (([(NSArray *)self->_filteredFromOtherDevicesAppLockupViews count]|| [(SFManageExtensionsViewController *)self _haveRecommendationsSection]) && [(NSArray *)self->_filteredExtensions count])
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([(SFManageExtensionsViewController *)self _isOnOtherDevicesSection:section])
  {
    goto LABEL_14;
  }

  if (![(SFManageExtensionsViewController *)self _isRecommendationsSection:section])
  {
    [(SFManageExtensionsViewController *)self _isAppStoreLinkSection:section];
LABEL_16:
    title = 0;
    goto LABEL_18;
  }

  if ([(NSArray *)self->_filteredRecommendedAppLockupViews count])
  {
LABEL_14:
    title = _WBSLocalizedString();
    goto LABEL_18;
  }

  title = &stru_1EFF36230;
LABEL_18:

  return title;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(SFManageExtensionsViewController *)self _isInstalledExtensionsSection:section])
  {
    mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
    hasAnyExtensionManagement = [mEMORY[0x1E69C88C8] hasAnyExtensionManagement];

    if (hasAnyExtensionManagement)
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

- (BOOL)_isInstalledExtensionsSection:(int64_t)section
{
  v4 = [(NSArray *)self->_filteredExtensions count];
  if (section)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  return !v5;
}

- (BOOL)_isOnOtherDevicesSection:(int64_t)section
{
  v5 = [(NSArray *)self->_filteredFromOtherDevicesAppLockupViews count];
  if (v5)
  {
    LOBYTE(v5) = ([(NSArray *)self->_filteredExtensions count]!= 0) == section;
  }

  return v5;
}

- (BOOL)_isRecommendationsSection:(int64_t)section
{
  _haveRecommendationsSection = [(SFManageExtensionsViewController *)self _haveRecommendationsSection];
  if (_haveRecommendationsSection)
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

    LOBYTE(_haveRecommendationsSection) = v8 == section;
  }

  return _haveRecommendationsSection;
}

- (BOOL)_isAppStoreLinkSection:(int64_t)section
{
  mEMORY[0x1E69C88D0] = [MEMORY[0x1E69C88D0] sharedInstance];
  shouldHideExtensionDiscovery = [mEMORY[0x1E69C88D0] shouldHideExtensionDiscovery];

  if (shouldHideExtensionDiscovery)
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

  return v11 + [(SFManageExtensionsViewController *)self _haveRecommendationsSection]== section;
}

- (_SFPageFormatMenuController)presentingPageFormatMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingPageFormatMenu);

  return WeakRetained;
}

@end