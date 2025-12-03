@interface MCDBrowsableContentNavigationController
- (MCDBrowsableContentNavigationController)initWithBundleID:(id)d model:(id)model;
- (id)_hostTabAtIndex:(unint64_t)index dummyTab:(BOOL)tab;
- (id)_tabBarItemForViewController:(id)controller fromItem:(id)item;
- (void)_appRegisteredForContent:(id)content;
- (void)_loadAllHostTabs;
- (void)_nowPlayingButtonTapped:(id)tapped;
- (void)_nowPlayingDidChange:(id)change;
- (void)_updateNowPlayingButtonVisibility;
- (void)container:(id)container didInvalidateIndicies:(id)indicies;
- (void)invalidateAndReloadTabsWithCompletion:(id)completion;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTitleAndTabBarItemsAtIndexes:(id)indexes;
@end

@implementation MCDBrowsableContentNavigationController

- (MCDBrowsableContentNavigationController)initWithBundleID:(id)d model:(id)model
{
  dCopy = d;
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = MCDBrowsableContentNavigationController;
  v8 = [(MCDBrowsableContentNavigationController *)&v17 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [dCopy copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    objc_storeStrong(&v8->_model, model);
    v11 = dispatch_queue_create("com.apple.MusicCarDisplayUI.playableContent.navigationController", 0);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v11;

    containerForRoot = [(MCDPCModel *)v8->_model containerForRoot];
    container = v8->_container;
    v8->_container = containerForRoot;

    [(MCDPCContainer *)v8->_container setDelegate:v8];
    [(MCDBrowsableContentNavigationController *)v8 setDelegate:v8];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__appRegisteredForContent_ name:@"appReadyToFetch" object:0];
    [defaultCenter addObserver:v8 selector:sel__nowPlayingDidChange_ name:@"nowPlayingChange" object:0];
    [defaultCenter addObserver:v8 selector:sel__nowPlayingDidChange_ name:@"MCDContentItemsChangedNotification" object:0];
  }

  return v8;
}

- (void)_appRegisteredForContent:(id)content
{
  contentCopy = content;
  objc_initWeak(&location, self);
  v5 = +[MCDMediaRemoteSerialQueueManager sharedInstance];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke;
  v10 = &unk_279923A90;
  objc_copyWeak(&v11, &location);
  [v5 addOperation:&v7 cancelAllOperations:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"appReadyToFetch" object:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_2;
  block[3] = &unk_279923A90;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_sync(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Loading content in tab controller for the first time since app registered", buf, 2u);
  }

  v3 = [WeakRetained container];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_25;
  v5[3] = &unk_279923B08;
  v6 = WeakRetained;
  v4 = WeakRetained;
  [v3 refreshWithCompletion:v5];
}

void __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_25(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_2_26;
  block[3] = &unk_279923B08;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_2_26(uint64_t a1)
{
  [*(a1 + 32) setDidFinishInitialLoad:1];
  result = [*(a1 + 32) visible];
  if (result)
  {
    v3 = MCDGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25AD8E000, v3, OS_LOG_TYPE_DEFAULT, "finished loading content after the view appeared, setting tabs", v4, 2u);
    }

    [*(a1 + 32) _updateNowPlayingButtonVisibility];
    [*(a1 + 32) _loadAllHostTabs];
    return [*(a1 + 32) setDidFinishInitialViewAppear:1];
  }

  return result;
}

- (void)_nowPlayingDidChange:(id)change
{
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Received MCDPCNowPlayingDidChangeNotificationName", v5, 2u);
  }

  [(MCDBrowsableContentNavigationController *)self _updateNowPlayingButtonVisibility];
}

- (void)_updateNowPlayingButtonVisibility
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MCDBrowsableContentNavigationController__updateNowPlayingButtonVisibility__block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__MCDBrowsableContentNavigationController__updateNowPlayingButtonVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1296) playableContentPlaybackManager];
  v3 = [v2 currentPlayingSong];
  if (v3 && [*(*(a1 + 32) + 1296) isCurrentPlayingApp])
  {
    v4 = *(*(a1 + 32) + 1272);

    if (v4 == 1)
    {
      v5 = MCDGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Showing Now Playing button in tab bar", buf, 2u);
      }

      v6 = [*(a1 + 32) _accessoryView];

      v7 = MCDGeneralLogging();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v21 = 0;
          v9 = "Accessory view already set.";
          v10 = &v21;
LABEL_17:
          _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if (v8)
      {
        *v20 = 0;
        _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Showing Now Playing button in tab bar", v20, 2u);
      }

      v13 = *(a1 + 32);
      v14 = v13[164];
      if (!v14)
      {
        v15 = objc_alloc_init(MEMORY[0x277CF9150]);
        v16 = *(a1 + 32);
        v17 = *(v16 + 1312);
        *(v16 + 1312) = v15;

        [*(*(a1 + 32) + 1312) addTarget:*(a1 + 32) action:sel__nowPlayingButtonTapped_ forControlEvents:64];
        v13 = *(a1 + 32);
        v14 = v13[164];
      }

LABEL_14:
      [v13 _setAccessoryView:v14];
      return;
    }
  }

  else
  {
  }

  v11 = [*(a1 + 32) _accessoryView];

  v7 = MCDGeneralLogging();
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v12)
    {
      *v19 = 0;
      _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Hiding Now Playing button in tab bar", v19, 2u);
    }

    v13 = *(a1 + 32);
    v14 = 0;
    goto LABEL_14;
  }

  if (v12)
  {
    v18 = 0;
    v9 = "No Now Playing button hide needed.";
    v10 = &v18;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_nowPlayingButtonTapped:(id)tapped
{
  v4 = [MCDNowPlayingViewController alloc];
  bundleID = [(MCDPCModel *)self->_model bundleID];
  appTitle = [(MCDPCModel *)self->_model appTitle];
  v7 = [(MCDNowPlayingViewController *)v4 initWithPlayableBundleID:bundleID appName:appTitle];

  v8 = MCDGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Now playing button tapped in tab bar, pushing to Now Playing screen", v11, 2u);
  }

  navigationController = [(MCDBrowsableContentNavigationController *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  navigationController2 = [(MCDBrowsableContentNavigationController *)self navigationController];
  [navigationController2 pushViewController:v7 animated:1];
}

- (void)container:(id)container didInvalidateIndicies:(id)indicies
{
  v22 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  indiciesCopy = indicies;
  v8 = MCDGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [containerCopy identifier];
    *buf = 138543618;
    v19 = identifier;
    v20 = 2114;
    v21 = indiciesCopy;
    _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Some content has invalidated, preparing to reload tab views for container: %{public}@, indicies: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = +[MCDMediaRemoteSerialQueueManager sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__MCDBrowsableContentNavigationController_container_didInvalidateIndicies___block_invoke;
  v14[3] = &unk_279924218;
  objc_copyWeak(&v17, buf);
  v11 = containerCopy;
  v15 = v11;
  v12 = indiciesCopy;
  v16 = v12;
  [v10 addOperation:v14 cancelAllOperations:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __75__MCDBrowsableContentNavigationController_container_didInvalidateIndicies___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__MCDBrowsableContentNavigationController_container_didInvalidateIndicies___block_invoke_2;
  block[3] = &unk_279924218;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __75__MCDBrowsableContentNavigationController_container_didInvalidateIndicies___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained visible])
  {
    v3 = [WeakRetained viewControllers];

    if (v3)
    {
      v4 = MCDGeneralLogging();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) identifier];
        v6 = *(a1 + 40);
        v14 = 138543618;
        v15 = v5;
        v16 = 2114;
        v17 = v6;
        _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Reloading specific tabs since they are invalid for container: %{public}@, indicies: %{public}@", &v14, 0x16u);
      }

      [WeakRetained updateTitleAndTabBarItemsAtIndexes:*(a1 + 40)];
    }

    else if ([WeakRetained didFinishInitialLoad])
    {
      v11 = MCDGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) identifier];
        v13 = *(a1 + 40);
        v14 = 138543618;
        v15 = v12;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&dword_25AD8E000, v11, OS_LOG_TYPE_DEFAULT, "Reloading all host tabs since table views are nil for container: %{public}@, indicies: %{public}@", &v14, 0x16u);
      }

      [WeakRetained _loadAllHostTabs];
    }
  }

  else
  {
    v7 = MCDGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      v9 = *(a1 + 40);
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Tab view not visible for container indicies reload: %{public}@, indicies: %{public}@", &v14, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_loadAllHostTabs
{
  v34 = *MEMORY[0x277D85DE8];
  container = [(MCDBrowsableContentNavigationController *)self container];
  cachedCount = [container cachedCount];

  v5 = MCDGeneralLogging();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (cachedCount)
  {
    if (v6)
    {
      bundleID = [(MCDBrowsableContentNavigationController *)self bundleID];
      *buf = 138543618;
      v31 = bundleID;
      v32 = 2050;
      v33 = cachedCount;
      _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Number of tabs returned from client %{public}@: %{public}ld", buf, 0x16u);
    }

    v8 = cachedCount;
  }

  else
  {
    if (v6)
    {
      bundleID2 = [(MCDBrowsableContentNavigationController *)self bundleID];
      *buf = 138543362;
      v31 = bundleID2;
      _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "No tabs available from host, loading default tabs for %{public}@", buf, 0xCu);
    }

    if (![(MCDBrowsableContentNavigationController *)self hasInvalidatedDummyTabs])
    {
      v10 = MCDGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        bundleID3 = [(MCDBrowsableContentNavigationController *)self bundleID];
        *buf = 138543362;
        v31 = bundleID3;
        _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling dummy tab reload for %{public}@", buf, 0xCu);
      }

      [(MCDBrowsableContentNavigationController *)self setHasInvalidatedDummyTabs:1];
      v12 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__MCDBrowsableContentNavigationController__loadAllHostTabs__block_invoke;
      block[3] = &unk_279923B08;
      block[4] = self;
      dispatch_after(v12, MEMORY[0x277D85CD0], block);
    }

    v8 = 3;
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([(MCDBrowsableContentNavigationController *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    selectedIndex = 0;
  }

  else
  {
    selectedIndex = [(MCDBrowsableContentNavigationController *)self selectedIndex];
  }

  v16 = 0;
  *&v14 = 138543618;
  v28 = v14;
  do
  {
    v17 = [(MCDBrowsableContentNavigationController *)self _hostTabAtIndex:v16 dummyTab:cachedCount == 0];
    if (v17)
    {
      if (cachedCount)
      {
        v18 = MCDGeneralLogging();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (selectedIndex == v16)
        {
          if (v19)
          {
            container2 = [v17 container];
            identifier = [container2 identifier];
            *buf = v28;
            v31 = identifier;
            v32 = 2050;
            v33 = selectedIndex;
            _os_log_impl(&dword_25AD8E000, v18, OS_LOG_TYPE_DEFAULT, "Refreshing view controller %{public}@ because it is the selected index: %{public}ld", buf, 0x16u);
          }

          [v17 reloadWithCompletion:0];
        }

        else
        {
          if (v19)
          {
            container3 = [v17 container];
            identifier2 = [container3 identifier];
            *buf = 138543362;
            v31 = identifier2;
            _os_log_impl(&dword_25AD8E000, v18, OS_LOG_TYPE_DEFAULT, "View controller %{public}@ is not selected but is reloaded, begin loading item", buf, 0xCu);
          }

          container4 = [v17 container];
          [container4 beginLoadingItemWithCompletion:0];
        }
      }

      else
      {
        v22 = MCDGeneralLogging();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          bundleID4 = [(MCDBrowsableContentNavigationController *)self bundleID];
          *buf = 138543362;
          v31 = bundleID4;
          _os_log_impl(&dword_25AD8E000, v22, OS_LOG_TYPE_DEFAULT, "Dummy tab, no need to refresh in %{public}@", buf, 0xCu);
        }
      }

      [array addObject:{v17, v28}];
    }

    ++v16;
  }

  while (v8 != v16);
  [(MCDBrowsableContentNavigationController *)self setViewControllers:array];

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __59__MCDBrowsableContentNavigationController__loadAllHostTabs__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleID];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Performing dummy tab reload for %{public}@", &v6, 0xCu);
  }

  result = [*(a1 + 32) invalidateAndReloadTabsWithCompletion:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)invalidateAndReloadTabsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = +[MCDMediaRemoteSerialQueueManager sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke;
  v7[3] = &unk_279923F78;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [v5 addOperation:v7 cancelAllOperations:0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Reloading tabs after invalidate", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained container];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke_33;
  v6[3] = &unk_279923EC8;
  v7 = WeakRetained;
  v8 = *(a1 + 32);
  v5 = WeakRetained;
  [v4 refreshWithCompletion:v6];
}

void __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke_33(uint64_t a1)
{
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Finished reloading tabs after invalidate", buf, 2u);
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke_34;
  v3[3] = &unk_279923EC8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke_34(uint64_t a1)
{
  [*(a1 + 32) _loadAllHostTabs];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  v10 = *MEMORY[0x277D85DE8];
  viewControllerCopy = viewController;
  v5 = MCDGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    title = [viewControllerCopy title];
    v8 = 138543362;
    v9 = title;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Tab selected, reloading content for %{public}@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [viewControllerCopy reloadWithCompletion:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_tabBarItemForViewController:(id)controller fromItem:(id)item
{
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  itemCopy = item;
  artworkImage = [itemCopy artworkImage];
  v8 = [artworkImage imageWithRenderingMode:2];

  tabBarItem = [controllerCopy tabBarItem];

  if (!tabBarItem)
  {
    tabBarItem2 = MCDGeneralLogging();
    if (!os_log_type_enabled(tabBarItem2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      v20 = MCDGeneralLogging();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        title = [itemCopy title];
        artworkImage2 = [itemCopy artworkImage];
        v23 = @"NO";
        if (!artworkImage2)
        {
          v23 = @"YES";
        }

        v28 = 138412546;
        v29 = title;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_25AD8E000, v20, OS_LOG_TYPE_DEFAULT, "Creating tab bar item for item: %@, artwork is nil? %@", &v28, 0x16u);
      }

      v24 = objc_alloc(MEMORY[0x277D75B28]);
      title2 = [itemCopy title];
      tabBarItem2 = [v24 initWithTitle:title2 image:v8 selectedImage:v8];
      goto LABEL_19;
    }

    title2 = [itemCopy title];
    v28 = 138412290;
    v29 = title2;
    _os_log_impl(&dword_25AD8E000, tabBarItem2, OS_LOG_TYPE_DEFAULT, "No existing tab bar item and artwork for item: %@", &v28, 0xCu);
    goto LABEL_13;
  }

  tabBarItem2 = [controllerCopy tabBarItem];
  v11 = MCDGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    title3 = [itemCopy title];
    v28 = 138412290;
    v29 = title3;
    _os_log_impl(&dword_25AD8E000, v11, OS_LOG_TYPE_DEFAULT, "Examining existing tab bar item and artwork for item: %@", &v28, 0xCu);
  }

  title4 = [tabBarItem2 title];
  title5 = [itemCopy title];
  v15 = [title4 isEqualToString:title5];

  if ((v15 & 1) == 0)
  {
    title2 = MCDGeneralLogging();
    if (os_log_type_enabled(title2, OS_LOG_TYPE_DEFAULT))
    {
      title6 = [itemCopy title];
      v28 = 138412290;
      v29 = title6;
      v19 = "Titles differ; invalidating tab bar item: %@";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  title2 = MCDGeneralLogging();
  v17 = os_log_type_enabled(title2, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v17)
    {
      title6 = [itemCopy title];
      v28 = 138412290;
      v29 = title6;
      v19 = "New image provided; invalidating tab bar item: %@";
LABEL_12:
      _os_log_impl(&dword_25AD8E000, title2, OS_LOG_TYPE_DEFAULT, v19, &v28, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v17)
  {
    title7 = [itemCopy title];
    v28 = 138412290;
    v29 = title7;
    _os_log_impl(&dword_25AD8E000, title2, OS_LOG_TYPE_DEFAULT, "Repurposing tab bar item and artwork for tab bar item: %@", &v28, 0xCu);
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];

  return tabBarItem2;
}

- (id)_hostTabAtIndex:(unint64_t)index dummyTab:(BOOL)tab
{
  v33 = *MEMORY[0x277D85DE8];
  if (tab)
  {
    v4 = [[MCDBrowsableContentTableViewController alloc] initWithContainer:0 tabbedBrowsing:1];
  }

  else
  {
    container = [(MCDBrowsableContentNavigationController *)self container];
    v8 = [container containerAtIndex:index];

    container2 = [(MCDBrowsableContentNavigationController *)self container];
    v10 = [container2 cachedItemForIndex:index];

    if ([v10 isContainer] && (objc_msgSend(v10, "isPlayable") & 1) == 0)
    {
      title = [v10 title];
      viewControllers = [(MCDBrowsableContentNavigationController *)self viewControllers];
      v13 = [viewControllers count];

      if (v13 <= index)
      {
        v4 = 0;
      }

      else
      {
        viewControllers2 = [(MCDBrowsableContentNavigationController *)self viewControllers];
        v4 = [viewControllers2 objectAtIndexedSubscript:index];
      }

      container3 = [(MCDBrowsableContentTableViewController *)v4 container];
      identifier = [container3 identifier];
      identifier2 = [v8 identifier];
      v18 = [identifier isEqualToString:identifier2];

      if ((v18 & 1) == 0)
      {
        v19 = [[MCDBrowsableContentTableViewController alloc] initWithContainer:v8 tabbedBrowsing:1];

        v4 = v19;
      }

      v20 = MCDGeneralLogging();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        title2 = [v10 title];
        artworkImage = [v10 artworkImage];
        v23 = @"NO";
        if (!artworkImage)
        {
          v23 = @"YES";
        }

        v29 = 138412546;
        v30 = title2;
        v31 = 2112;
        v32 = v23;
        _os_log_impl(&dword_25AD8E000, v20, OS_LOG_TYPE_DEFAULT, "Adding view controller for tab: %@, artwork is nil? %@", &v29, 0x16u);
      }

      [(MCDBrowsableContentTableViewController *)v4 setTitle:title];
      v24 = [(MCDBrowsableContentNavigationController *)self _tabBarItemForViewController:v4 fromItem:v10];
      tabBarItem = [(MCDBrowsableContentTableViewController *)v4 tabBarItem];
      v26 = [v24 isEqual:tabBarItem];

      if ((v26 & 1) == 0)
      {
        [(MCDBrowsableContentTableViewController *)v4 setTabBarItem:v24];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)updateTitleAndTabBarItemsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  viewControllers = [(MCDBrowsableContentNavigationController *)self viewControllers];
  v6 = [viewControllers mutableCopy];

  v7 = [v6 count];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__MCDBrowsableContentNavigationController_updateTitleAndTabBarItemsAtIndexes___block_invoke;
  v9[3] = &unk_279924290;
  v10 = v6;
  v11 = v7;
  v9[4] = self;
  v8 = v6;
  [indexesCopy enumerateIndexesUsingBlock:v9];

  [(MCDBrowsableContentNavigationController *)self setViewControllers:v8];
}

void __78__MCDBrowsableContentNavigationController_updateTitleAndTabBarItemsAtIndexes___block_invoke(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) > a2)
  {
    v4 = [*(*(a1 + 32) + 1280) cachedItemForIndex:a2];
    if ([v4 isContainer] && (objc_msgSend(v4, "isPlayable") & 1) == 0)
    {
      v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
      v6 = MCDGeneralLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v4 title];
        v8 = [v4 artworkImage];
        v9 = @"NO";
        if (!v8)
        {
          v9 = @"YES";
        }

        v15 = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Adding title for tab: %@, artwork is nil? %@", &v15, 0x16u);
      }

      v10 = [v4 title];
      [v5 setTitle:v10];

      v11 = [*(a1 + 32) _tabBarItemForViewController:v5 fromItem:v4];
      v12 = [v5 tabBarItem];
      v13 = [v11 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        [v5 setTabBarItem:v11];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = MCDBrowsableContentNavigationController;
  [(MCDBrowsableContentNavigationController *)&v7 traitCollectionDidChange:change];
  traitCollection = [(MCDBrowsableContentNavigationController *)self traitCollection];
  -[MCDBrowsableContentNavigationController setHasCarScreen:](self, "setHasCarScreen:", [traitCollection userInterfaceIdiom] == 3);

  v5 = MCDGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "traitCollectionDidChange is called", v6, 2u);
  }
}

@end