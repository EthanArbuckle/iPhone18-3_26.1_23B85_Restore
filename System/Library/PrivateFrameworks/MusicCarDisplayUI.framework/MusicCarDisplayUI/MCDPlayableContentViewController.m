@interface MCDPlayableContentViewController
- (MCDPlayableContentViewController)initWithBundleID:(id)a3 stack:(id)a4;
- (id)_createRootViewController;
- (id)_createSectionedRootViewController;
- (id)currentStack;
- (void)_modelDidInvalidate:(id)a3;
- (void)_nowPlayingIdentifiersChanged:(id)a3;
- (void)_populateStack;
- (void)_setupView;
- (void)refreshNavigationStackForLaunch;
@end

@implementation MCDPlayableContentViewController

- (MCDPlayableContentViewController)initWithBundleID:(id)a3 stack:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = MCDPlayableContentViewController;
  v8 = [(MCDPlayableContentViewController *)&v19 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    v11 = MCDGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_25AD8E000, v11, OS_LOG_TYPE_DEFAULT, "Initializing a new view for bundle: %@", buf, 0xCu);
    }

    v12 = [[MCDPCModel alloc] initWithBundleID:v8->_bundleID];
    model = v8->_model;
    v8->_model = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    modelInvalidationQueue = v8->_modelInvalidationQueue;
    v8->_modelInvalidationQueue = v14;

    [(NSOperationQueue *)v8->_modelInvalidationQueue setQualityOfService:25];
    [(NSOperationQueue *)v8->_modelInvalidationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v8->_modelInvalidationQueue setName:@"com.apple.MusicCarDisplayUI.playableContent.invalidate"];
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v8 selector:sel__modelDidInvalidate_ name:@"didInvalidate" object:0];
    [v16 addObserver:v8 selector:sel__nowPlayingIdentifiersChanged_ name:*MEMORY[0x277D27A78] object:0];
    objc_storeStrong(&v8->_stackToRebuild, a4);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_nowPlayingIdentifiersChanged:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MCDPlayableContentViewController__nowPlayingIdentifiersChanged___block_invoke;
  block[3] = &unk_279923B08;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__MCDPlayableContentViewController__nowPlayingIdentifiersChanged___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) userInfo];
  v2 = [v1 valueForKey:*MEMORY[0x277D27E70]];

  v3 = MCDGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AD8E000, v3, OS_LOG_TYPE_DEFAULT, "Received kMRMediaRemoteBrowsableContentNowPlayingIdentifiersUpdatedNotification", v5, 2u);
  }

  v4 = +[MCDBrowsableContentUtilities sharedInstance];
  [v4 setNowPlayingIdentifiers:v2];
}

- (id)_createSectionedRootViewController
{
  if (!self->_rootContainer)
  {
    v3 = [(MCDPCModel *)self->_model containerForRoot];
    rootContainer = self->_rootContainer;
    self->_rootContainer = v3;
  }

  [(MCDPlayableContentViewController *)self setNavigationBarHidden:1];
  v5 = [[MCDBrowsableContentNavigationController alloc] initWithBundleID:self->_bundleID model:self->_model];

  return v5;
}

- (id)_createRootViewController
{
  if (!self->_rootContainer)
  {
    v3 = [(MCDPCModel *)self->_model containerForRoot];
    rootContainer = self->_rootContainer;
    self->_rootContainer = v3;
  }

  v5 = [[MCDBrowsableContentTableViewController alloc] initWithContainer:self->_rootContainer tabbedBrowsing:0];

  return v5;
}

- (void)_setupView
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (!self->_hasLoaded)
  {
    if (self->_bundleID)
    {
      v3 = MRMediaRemoteApplicationSupportsBrowsableContent() != 0;
    }

    else
    {
      v3 = 0;
    }

    self->_hasBrowsableContent = v3;
    v4 = +[MCDBrowsableContentUtilities sharedInstance];
    [v4 setNowPlayingIdentifiers:0];

    if (self->_hasBrowsableContent)
    {
      if (self->_stackToRebuild)
      {
        v5 = MCDGeneralLogging();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Rebuilding stack for app launch", buf, 2u);
        }

        v6 = dispatch_get_global_queue(2, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__MCDPlayableContentViewController__setupView__block_invoke;
        block[3] = &unk_279923B08;
        block[4] = self;
        dispatch_async(v6, block);
        goto LABEL_14;
      }

      if (self->_hasLoaded)
      {
        goto LABEL_15;
      }

      hasSectionedContent = self->_hasSectionedContent;
      v16 = MCDGeneralLogging();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (hasSectionedContent)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "Creating view controller for sectioned browsing", buf, 2u);
        }

        v18 = [(MCDPlayableContentViewController *)self _createSectionedRootViewController];
      }

      else
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "Creating view controller for table view browsing", buf, 2u);
        }

        v18 = [(MCDPlayableContentViewController *)self _createRootViewController];
      }

      v6 = v18;
      v22[0] = v18;
      v11 = MEMORY[0x277CBEA60];
      v12 = v22;
    }

    else
    {
      v7 = MCDGeneralLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "App does not use browsable content API, pushing to now playing", buf, 2u);
      }

      v8 = [MCDNowPlayingViewController alloc];
      v9 = [(MCDPCModel *)self->_model bundleID];
      v10 = [(MCDPCModel *)self->_model appTitle];
      v6 = [(MCDNowPlayingViewController *)v8 initWithPlayableBundleID:v9 appName:v10];

      v21 = v6;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v21;
    }

    v13 = [v11 arrayWithObjects:v12 count:1];
    [(MCDPlayableContentViewController *)self setViewControllers:v13 animated:0];

    self->_hasLoaded = 1;
LABEL_14:
  }

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
}

_BYTE *__46__MCDPlayableContentViewController__setupView__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[1498] & 1) == 0)
  {
    [result _populateStack];
    result = *(a1 + 32);
  }

  result[1498] = 1;
  return result;
}

- (void)refreshNavigationStackForLaunch
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(MCDPCModel *)self->_model playableContentPlaybackManager];
  v4 = [v3 currentPlayingSong];
  if (v4)
  {
    v5 = [(MCDPCModel *)self->_model isCurrentPlayingApp];
  }

  else
  {
    v5 = 0;
  }

  [(MCDPCModel *)self->_model bundleID];
  v6 = MRMediaRemoteApplicationSupportsImmediatePlayback();
  v7 = [(MCDPlayableContentViewController *)self visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && v5)
  {
    v9 = MCDGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Now Playing view already frontmost when Now Playing app tapped", buf, 2u);
    }

LABEL_29:

    goto LABEL_30;
  }

  v24 = v6;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(MCDPlayableContentViewController *)self viewControllers];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v25 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v9 = v15;

    if (!v9)
    {
      goto LABEL_21;
    }

    v16 = MCDGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "popping from view controller to Now Playing view", buf, 2u);
    }

    v17 = [(MCDPlayableContentViewController *)self popToViewController:v9 animated:0];
    goto LABEL_29;
  }

LABEL_16:

LABEL_21:
  if (v24 != 0 || v5)
  {
    if (v24)
    {
      v18 = MCDGeneralLogging();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v18, OS_LOG_TYPE_DEFAULT, "Sending play command since the app supports immediate playback", buf, 2u);
      }

      MRMediaRemoteSendCommandToApp();
    }

    v19 = MCDGeneralLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v19, OS_LOG_TYPE_DEFAULT, "Show Now Playing view on app foreground", buf, 2u);
    }

    v20 = [MCDNowPlayingViewController alloc];
    v21 = [(MCDPCModel *)self->_model bundleID];
    v22 = [(MCDPCModel *)self->_model appTitle];
    v9 = [(MCDNowPlayingViewController *)v20 initWithPlayableBundleID:v21 appName:v22];

    [v9 setShowNavigationBar:self->_hasSectionedContent];
    [(MCDPlayableContentViewController *)self pushViewController:v9 animated:0];
    goto LABEL_29;
  }

LABEL_30:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_modelDidInvalidate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(MCDPlayableContentViewController *)self modelInvalidationQueue];
  v5 = [v4 operationCount];

  if (v5 < 4)
  {
    v6 = [(MCDPlayableContentViewController *)self modelInvalidationQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke;
    v9[3] = &unk_279923B08;
    v9[4] = self;
    [v6 addOperationWithBlock:v9];
  }

  else
  {
    v6 = MCDGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MCDPlayableContentViewController *)self bundleID];
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling extra model invalidation for %{public}@.", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleID];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Playable content invalidated, refreshing all index paths for %{public}@", &buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB18] array];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy_;
  v64 = __Block_byref_object_dispose_;
  v65 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy_;
  v53 = __Block_byref_object_dispose_;
  v54 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_41;
  block[3] = &unk_279923D30;
  block[4] = *(a1 + 32);
  block[5] = &v49;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v47 = [v50[5] firstObject];
  while (v43[5])
  {
    v5 = dispatch_semaphore_create(0);
    v6 = v43[5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v43[5];
      v8 = MCDGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 0;
        _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Adding MCDBrowsableContentTableViewController after model invalidate", v59, 2u);
      }

      [v4 addObject:v7];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_42;
      v35[3] = &unk_279923D58;
      p_buf = &buf;
      v9 = v7;
      v36 = v9;
      v39 = &v55;
      v40 = &v49;
      v41 = &v42;
      v10 = v5;
      v37 = v10;
      [v9 reloadWithCompletion:v35];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v43[5];
        v12 = MCDGeneralLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = a1;
          v14 = [*(a1 + 32) bundleID];
          *v59 = 138543362;
          v60 = v14;
          _os_log_impl(&dword_25AD8E000, v12, OS_LOG_TYPE_DEFAULT, "Adding MCDBrowsableNavigationController to view controllers after model invalidate for %{public}@", v59, 0xCu);

          a1 = v13;
        }

        [v4 addObject:v11];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_43;
        v28[3] = &unk_279923D58;
        v31 = &buf;
        v9 = v11;
        v29 = v9;
        v32 = &v55;
        v33 = &v49;
        v34 = &v42;
        v15 = v5;
        v30 = v15;
        [v9 invalidateAndReloadTabsWithCompletion:v28];
        dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = MCDGeneralLogging();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(a1 + 32) bundleID];
            *v59 = 138543362;
            v60 = v17;
            _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "Adding now playing view controller for model invalidate for %{public}@", v59, 0xCu);
          }

          [v4 addObject:v43[5]];
          v18 = v56[3];
          if (v18 + 1 >= [v50[5] count])
          {
            v20 = 0;
          }

          else
          {
            v19 = v50[5];
            ++v56[3];
            v20 = [v19 objectAtIndexedSubscript:?];
          }

          v22 = v43[5];
          v43[5] = v20;

          v21 = *(&buf + 1);
        }

        else
        {
          v21 = v43;
        }

        v9 = v21[5];
        v21[5] = 0;
      }
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_44;
  v26[3] = &unk_279923AB8;
  v26[4] = *(a1 + 32);
  v27 = v4;
  v23 = v4;
  v24 = MEMORY[0x277D85CD0];
  dispatch_sync(MEMORY[0x277D85CD0], v26);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&buf, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_41(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) viewControllers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = MCDGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) bundleID];
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Fetched current view controllers to reload after playable content invalidated for %{public}@: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

intptr_t __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_42(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) container];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 56) + 8) + 24) + 1;
  if (v5 < [*(*(*(a1 + 64) + 8) + 40) count])
  {
    v6 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24) + 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 container];
      v8 = [v7 isValidForRefreshedParent:*(*(*(a1 + 48) + 8) + 40)];

      v9 = MCDGeneralLogging();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Container is valid for table view", &v23, 2u);
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);
        ++*(*(*(a1 + 56) + 8) + 24);
        goto LABEL_17;
      }

      if (!v10)
      {
        goto LABEL_15;
      }

      LOWORD(v23) = 0;
      v17 = "Container isn't valid for refreshed parent for table views";
      v18 = v9;
      v19 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = *(*(*(a1 + 64) + 8) + 40);
        ++*(*(*(a1 + 56) + 8) + 24);
        v14 = [v13 objectAtIndexedSubscript:?];
        v15 = *(*(a1 + 72) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v9 = MCDGeneralLogging();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        v20 = *(*(a1 + 72) + 8);
        v16 = *(v20 + 40);
        *(v20 + 40) = 0;
        goto LABEL_16;
      }

      v23 = 138543362;
      v24 = v6;
      v17 = "Next view controller is neither a table view nor now playing view when current VC is a table view, which shouldn't be here: %{public}@";
      v18 = v9;
      v19 = 12;
    }

    _os_log_impl(&dword_25AD8E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v23, v19);
    goto LABEL_15;
  }

  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

LABEL_18:
  result = dispatch_semaphore_signal(*(a1 + 40));
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_43(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) container];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 56) + 8) + 24) + 1;
  if (v5 < [*(*(*(a1 + 64) + 8) + 40) count])
  {
    v6 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24) + 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 32) selectedViewController];
      v8 = [v7 container];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [v6 container];
      v12 = [v11 isValidForRefreshedParent:*(*(*(a1 + 48) + 8) + 40)];

      v13 = MCDGeneralLogging();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_25AD8E000, v13, OS_LOG_TYPE_DEFAULT, "Container is valid for tab bar", &v27, 2u);
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);
        ++*(*(*(a1 + 56) + 8) + 24);
        goto LABEL_17;
      }

      if (!v14)
      {
        goto LABEL_15;
      }

      LOWORD(v27) = 0;
      v21 = "Container isn't valid for tab bar";
      v22 = v13;
      v23 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = *(*(*(a1 + 64) + 8) + 40);
        ++*(*(*(a1 + 56) + 8) + 24);
        v18 = [v17 objectAtIndexedSubscript:?];
        v19 = *(*(a1 + 72) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v13 = MCDGeneralLogging();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        v24 = *(*(a1 + 72) + 8);
        v20 = *(v24 + 40);
        *(v24 + 40) = 0;
        goto LABEL_16;
      }

      v27 = 138543362;
      v28 = v6;
      v21 = "Next view controller is neither a table view nor a now playing view when current VC is a tab bar, which shouldn't be here: %{public}@";
      v22 = v13;
      v23 = 12;
    }

    _os_log_impl(&dword_25AD8E000, v22, OS_LOG_TYPE_DEFAULT, v21, &v27, v23);
    goto LABEL_15;
  }

  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

LABEL_18:
  result = dispatch_semaphore_signal(*(a1 + 40));
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_44(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleID];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Setting view controllers after model invalidate for %{public}@", &v6, 0xCu);
  }

  result = [*(a1 + 32) setViewControllers:*(a1 + 40) animated:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_populateStack
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v3 = [(NSArray *)self->_stackToRebuild objectEnumerator];
  v4 = [v3 nextObject];
  v5 = [MEMORY[0x277CBEB18] array];
  if (v4)
  {
    do
    {
      v6 = [v4 indexPath];
      v7 = [v6 length];

      if (!v7)
      {
        rootContainer = self->_rootContainer;
        if (!rootContainer)
        {
          v9 = [(MCDPCModel *)self->_model containerForRoot];
          v10 = self->_rootContainer;
          self->_rootContainer = v9;

          rootContainer = self->_rootContainer;
        }

        objc_storeStrong(v33 + 5, rootContainer);
      }

      if (v33[5])
      {
        [v5 addObject:?];
      }

      v11 = [v3 nextObject];
      v12 = v39[5];
      v39[5] = v11;

      v13 = dispatch_semaphore_create(0);
      v14 = v33[5];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __50__MCDPlayableContentViewController__populateStack__block_invoke;
      v21[3] = &unk_279923D80;
      v23 = &v38;
      v24 = &v26;
      v25 = &v32;
      v15 = v13;
      v22 = v15;
      [v14 refreshWithCompletion:v21];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v16 = v39[5];

      objc_storeStrong(v33 + 5, v27[5]);
      v4 = v16;
    }

    while (v16);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MCDPlayableContentViewController__populateStack__block_invoke_2;
  block[3] = &unk_279923AB8;
  v19 = v5;
  v20 = self;
  v17 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
}

intptr_t __50__MCDPlayableContentViewController__populateStack__block_invoke(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    v3 = [v2 indexPath];
    v4 = [*(*(a1[7] + 8) + 40) containerAtIndex:{objc_msgSend(v3, "indexAtPosition:", objc_msgSend(v3, "length") - 1)}];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (([*(*(a1[6] + 8) + 40) isValidForRefreshedParent:*(*(a1[7] + 8) + 40)] & 1) == 0)
    {
      v7 = *(a1[5] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }
  }

  v9 = a1[4];

  return dispatch_semaphore_signal(v9);
}

void __50__MCDPlayableContentViewController__populateStack__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [MCDBrowsableContentTableViewController alloc];
        v10 = [(MCDBrowsableContentTableViewController *)v9 initWithContainer:v8, v12];
        [(MCDBrowsableContentTableViewController *)v10 reloadWithCompletion:0];
        [v2 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) setViewControllers:v2 animated:0];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)currentStack
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MCDGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MCDPlayableContentViewController *)self viewControllers];
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_25AD8E000, v3, OS_LOG_TYPE_DEFAULT, "current stack: %@", buf, 0xCu);
  }

  if (self->_hasSectionedContent)
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(MCDPlayableContentViewController *)self viewControllers];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v13 = [v12 container];
            v14 = [_MCDStackItem stackItemWithContainer:v13];

            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if ([v6 count] == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

@end