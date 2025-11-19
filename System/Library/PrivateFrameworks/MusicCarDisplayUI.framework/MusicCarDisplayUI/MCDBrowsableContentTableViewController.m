@interface MCDBrowsableContentTableViewController
- (BOOL)_shouldLimitLists;
- (MCDBrowsableContentTableViewController)initWithContainer:(id)a3;
- (MCDBrowsableContentTableViewController)initWithContainer:(id)a3 tabbedBrowsing:(BOOL)a4;
- (NSString)description;
- (id)contentScrollView;
- (id)preferredFocusEnvironments;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_appRegisteredForContent:(id)a3;
- (void)_clearLoadingActivity;
- (void)_configureCell:(id)a3 forIndexPath:(id)a4;
- (void)_displayErrorAlertController:(id)a3;
- (void)_displayLoadingActivity;
- (void)_limitedUIChanged:(id)a3;
- (void)_nowPlayingButtonTapped:(id)a3;
- (void)_playbackStateChanged:(id)a3;
- (void)_pushToNowPlaying:(BOOL)a3;
- (void)_replacePlaceholderViewWithView:(id)a3;
- (void)_showLoadingScreen;
- (void)_showTimeoutScreen;
- (void)_updateNowPlayingButtonVisibility;
- (void)container:(id)a3 didInvalidateIndicies:(id)a4;
- (void)containerDidChangeCount:(id)a3;
- (void)dealloc;
- (void)errorViewDidTapButton:(id)a3;
- (void)reloadTable;
- (void)reloadWithCompletion:(id)a3;
- (void)tableView:(id)a3 didFocusRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MCDBrowsableContentTableViewController

- (MCDBrowsableContentTableViewController)initWithContainer:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = MCDBrowsableContentTableViewController;
  v6 = [(MCDBrowsableContentTableViewController *)&v23 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
    [(MCDPCContainer *)v7->_container setDelegate:v7];
    v8 = [(MCDPCContainer *)v7->_container title];
    [(MCDBrowsableContentTableViewController *)v7 setTitle:v8];

    v9 = objc_alloc_init(MEMORY[0x277D75F60]);
    dataSource = v7->_dataSource;
    v7->_dataSource = v9;

    [(_UIFilteredDataSource *)v7->_dataSource setTableDataSource:v7];
    [(_UIFilteredDataSource *)v7->_dataSource setFilterType:0];
    v11 = [v5 model];
    [v11 setImageSize:{48.0, 48.0}];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = objc_alloc_init(MEMORY[0x277CF89F8]);
    carSessionStatus = v7->_carSessionStatus;
    v7->_carSessionStatus = v13;

    [(CARSessionStatus *)v7->_carSessionStatus addSessionObserver:v7];
    [v12 addObserver:v7 selector:sel__limitedUIChanged_ name:*MEMORY[0x277CF8928] object:0];
    [v12 addObserver:v7 selector:sel__nowPlayingDidChange_ name:@"MCDContentItemsChangedNotification" object:0];
    v15 = [v5 indexPath];
    v16 = [v15 length];

    if (v16)
    {
      v7->_didFinishInitialLoad = 1;
    }

    else
    {
      [v12 addObserver:v7 selector:sel__appRegisteredForContent_ name:@"appReadyToFetch" object:0];
    }

    v17 = [v5 indexPath];
    v18 = [v17 length];

    if (v18)
    {
      v7->_didFinishInitialLoad = 1;
    }

    else
    {
      [v12 addObserver:v7 selector:sel__appRegisteredForContent_ name:@"appReadyToFetch" object:0];
    }

    v19 = dispatch_queue_create("MCDBrowsableContentViewControllerQueue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v19;

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v7 selector:sel__playbackStateChanged_ name:@"MCDPlaybackStateChangedNotification" object:0];
  }

  return v7;
}

- (MCDBrowsableContentTableViewController)initWithContainer:(id)a3 tabbedBrowsing:(BOOL)a4
{
  result = [(MCDBrowsableContentTableViewController *)self initWithContainer:a3];
  result->_hasTabbedBrowsing = a4;
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
  [v3 removeObserver:self name:*MEMORY[0x277CF8928] object:0];
  [(UITableView *)self->_tableView setDataSource:0];
  [(UITableView *)self->_tableView setDelegate:0];
  nowPlayingButton = self->_nowPlayingButton;
  self->_nowPlayingButton = 0;

  serialQueue = self->_serialQueue;
  self->_serialQueue = 0;

  container = self->_container;
  self->_container = 0;

  v7.receiver = self;
  v7.super_class = MCDBrowsableContentTableViewController;
  [(MCDBrowsableContentTableViewController *)&v7 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MCDBrowsableContentTableViewController *)self container];
  v7 = [v6 indexPath];
  v8 = _MCDStringFromIndexPath(v7);
  v9 = [v3 stringWithFormat:@"<%@: %p [%@]>", v5, self, v8];

  return v9;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = MCDBrowsableContentTableViewController;
  [(MCDBrowsableContentTableViewController *)&v15 viewDidLoad];
  v3 = [(MCDBrowsableContentTableViewController *)self navigationController];
  v4 = [v3 viewControllers];
  self->_isRootTableViewController = [v4 count] < 2;

  v5 = [(MCDBrowsableContentTableViewController *)self view];
  MCD_tableView = self->_MCD_tableView;
  self->_MCD_tableView = v5;
  v7 = v5;

  [(UIView *)v7 bounds];
  v12 = [[_MCDBrowsableTableView alloc] initWithFrame:v8, v9, v10, v11];
  tableView = self->_tableView;
  self->_tableView = &v12->super;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UIView *)v7 addSubview:self->_tableView];
  [(UITableView *)self->_tableView setDataSource:self->_dataSource];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setRemembersLastFocusedIndexPath:1];
  v14 = *MEMORY[0x277D76F30];
  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x277D76F30]];
  [(UITableView *)self->_tableView setEstimatedRowHeight:v14];
}

void __56__MCDBrowsableContentTableViewController_viewDidAppear___block_invoke(uint64_t a1, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1082) = (a3 | a2) == 0;
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 1082) ^ 1;
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Playable Content API implemented? %d", v7, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MCDBrowsableContentTableViewController;
  [(MCDBrowsableContentTableViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(MCDBrowsableContentTableViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  MCD_tableView = self->_MCD_tableView;
  if (MCD_tableView)
  {
    [(UIView *)MCD_tableView setFrame:v5, v7, v9, v11];
  }
}

- (void)_showLoadingScreen
{
  [(MPWeakTimer *)self->_delayTimer invalidate];
  delayTimer = self->_delayTimer;
  self->_delayTimer = 0;

  if ([(MCDBrowsableContentTableViewController *)self isVisible])
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277CD6118];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__MCDBrowsableContentTableViewController__showLoadingScreen__block_invoke;
    v11[3] = &unk_279923A90;
    objc_copyWeak(&v12, &location);
    v5 = [v4 timerWithInterval:0 repeats:v11 block:10.0];
    loadingTimer = self->_loadingTimer;
    self->_loadingTimer = v5;

    v7 = MCDGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Showing loading screen", v10, 2u);
    }

    v8 = [MCDLoadingContentView alloc];
    [(UITableView *)self->_tableView frame];
    v9 = [(MCDLoadingContentView *)v8 initWithFrame:?];
    [(MCDBrowsableContentTableViewController *)self _replacePlaceholderViewWithView:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __60__MCDBrowsableContentTableViewController__showLoadingScreen__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showTimeoutScreen];
    WeakRetained = v2;
  }
}

- (void)_showTimeoutScreen
{
  [(MPWeakTimer *)self->_loadingTimer invalidate];
  loadingTimer = self->_loadingTimer;
  self->_loadingTimer = 0;

  if ([(MCDBrowsableContentTableViewController *)self isVisible])
  {
    v4 = MCDGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Showing timeout screen", buf, 2u);
    }

    v5 = MEMORY[0x277CCACA8];
    v6 = MCDCarDisplayBundle();
    v7 = [v6 localizedStringForKey:@"Unable to connect to “%@.”" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v8 = [(MCDBrowsableContentTableViewController *)self container];
    v9 = [v8 appTitle];
    v10 = [v5 localizedStringWithFormat:v7, v9];

    v11 = [[MCDErrorLoadingView alloc] initWithTitle:v10 buttonText:0];
    v12 = [(MCDBrowsableContentTableViewController *)self view];
    [v12 frame];
    [(MCDErrorLoadingView *)v11 setFrame:?];

    [(MCDErrorLoadingView *)v11 setDelegate:self];
    [(MCDBrowsableContentTableViewController *)self _replacePlaceholderViewWithView:v11];
  }
}

- (void)_replacePlaceholderViewWithView:(id)a3
{
  v28 = a3;
  v4 = [(MCDBrowsableContentTableViewController *)self placeholderView];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [(MCDBrowsableContentTableViewController *)self placeholderView];
    [v6 removeFromSuperview];
  }

  [(MCDBrowsableContentTableViewController *)self setPlaceholderView:v28];
  v7 = [(MCDBrowsableContentTableViewController *)self placeholderView];
  [(UITableView *)self->_tableView setScrollEnabled:v7 == 0];

  v8 = [(MCDBrowsableContentTableViewController *)self placeholderView];

  if (v8)
  {
    [(UITableView *)self->_tableView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(UITableView *)self->_tableView safeAreaInsets];
    v18 = v10 + v17;
    v20 = v12 + v19;
    v22 = v14 - (v17 + v21);
    v24 = v16 - (v19 + v23);
    v25 = [(MCDBrowsableContentTableViewController *)self placeholderView];
    [v25 setFrame:{v18, v20, v22, v24}];

    v26 = [(UITableView *)self->_tableView superview];
    v27 = [(MCDBrowsableContentTableViewController *)self placeholderView];
    [v26 addSubview:v27];
  }
}

- (void)errorViewDidTapButton:(id)a3
{
  container = self->_container;
  v5 = MCDGeneralLogging();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (container)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Retrying container reload, showing loading screen", buf, 2u);
    }

    [(MCDBrowsableContentTableViewController *)self reloadWithCompletion:0];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Retrying full refresh, showing loading screen", v8, 2u);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"didInvalidate" object:0];
  }

  [(MCDBrowsableContentTableViewController *)self _showLoadingScreen];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = MCDBrowsableContentTableViewController;
  [(MCDBrowsableContentTableViewController *)&v9 traitCollectionDidChange:a3];
  v4 = [(MCDBrowsableContentTableViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom] == 3;

  if (self->_hasCarScreen != v5)
  {
    self->_hasCarScreen = v5;
    v6 = [(MCDBrowsableContentTableViewController *)self view];
    [v6 layoutIfNeeded];

    v7 = [(MCDBrowsableContentTableViewController *)self navigationItem];
    [v7 setRightBarButtonItem:0];

    nowPlayingButton = self->_nowPlayingButton;
    self->_nowPlayingButton = 0;

    [(MCDBrowsableContentTableViewController *)self _updateNowPlayingButtonVisibility];
  }
}

- (id)contentScrollView
{
  if (self->_hasCarScreen)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_tableView;
  }

  return v3;
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (self->_tableView)
  {
    v6[0] = self->_tableView;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MCDBrowsableContentTableViewController;
    v2 = [(MCDBrowsableContentTableViewController *)&v5 preferredFocusEnvironments];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_configureCell:(id)a3 forIndexPath:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [(MCDBrowsableContentTableViewController *)self container];
  v10 = [v9 cachedItemForIndex:v8];

  [v6 setAccessoryView:0];
  v11 = [(UITableView *)self->_tableView indexPathForSelectedRow];
  v12 = v11;
  v45 = v11;
  if (v11)
  {
    if ([v11 compare:v7])
    {
      v13 = [(MCDBrowsableContentTableViewController *)self selectedIndexPath];
      LODWORD(v12) = [v12 isEqual:v13];
    }

    else
    {
      LODWORD(v12) = 1;
    }
  }

  v14 = [(MCDPCContainer *)self->_container showCurrentlyPlayingIndex];
  if (![(MCDBrowsableContentTableViewController *)self currentlyPlayingApp])
  {
    v47 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_12:
    [v6 setSelected:0];
    goto LABEL_13;
  }

  v15 = [v10 currentlyPlaying];
  if (v14 == v8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v47 = v16;
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  v48 = v6;
  v46 = v7;
  v44 = v12;
  if ([v10 isCloudItem] && objc_msgSend(v10, "isPlayable"))
  {
    v17 = [MEMORY[0x277CF9190] accessoryWithCloudIcon];
LABEL_18:
    v18 = v17;
    goto LABEL_20;
  }

  if ([v10 isContainer])
  {
    v17 = [MEMORY[0x277CF9190] accessoryWithDisclosureIndicator];
    goto LABEL_18;
  }

  v18 = 0;
LABEL_20:
  v19 = [(MCDBrowsableContentTableViewController *)self container];
  v20 = [v19 model];
  v21 = [v20 playableContentPlaybackManager];
  v22 = [v21 playerState];

  v23 = MEMORY[0x277CF9198];
  v24 = [v10 title];
  v25 = [v10 subtitle];
  v26 = [v10 artworkImage];
  v27 = [v10 isExplicitItem];
  v28 = [(MCDPCContainer *)self->_container showPlaybackProgress];
  [v10 playbackProgress];
  v30 = v29;
  if (v22 == 2)
  {
    v31 = v47;
  }

  else
  {
    v31 = 0;
  }

  *(&v43 + 3) = 257;
  BYTE2(v43) = v47;
  BYTE1(v43) = v31;
  LOBYTE(v43) = v28;
  v32 = [v23 configurationWithText:v24 detailText:v25 image:v26 showExplicit:v27 accessory:v18 showActivityIndicator:v44 showPlaybackProgress:v30 playbackProgress:v43 activePlayback:? isPlaying:? playingIndicatorLeadingSide:? isEnabled:?];

  v33 = v48;
  [v48 applyConfiguration:v32];
  v34 = MCDGeneralLogging();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v10 title];
    v36 = [v10 subtitle];
    v37 = [v10 isExplicitItem];
    if ([v10 isCloudItem])
    {
      v38 = [v10 isPlayable];
    }

    else
    {
      v38 = 0;
    }

    v39 = [(MCDPCContainer *)self->_container showPlaybackProgress];
    [v10 playbackProgress];
    *buf = 138545154;
    v50 = v35;
    v51 = 2114;
    v52 = v36;
    v53 = 1026;
    v54 = v37;
    v55 = 1026;
    v56 = v38;
    v57 = 1026;
    v58 = v39;
    v59 = 2050;
    v60 = v40;
    v61 = 1026;
    v62 = v47;
    v63 = 1026;
    v64 = [v10 isContainer];
    _os_log_impl(&dword_25AD8E000, v34, OS_LOG_TYPE_DEFAULT, "Cell displayed: title: %{public}@, subtitle: %{public}@, showExplicit: %{public}d, showCloud: %{public}d, shouldShowPlaybackProgress: %{public}d, playbackProgress: %{public}f, currentlyPlaying: %{public}d, isContainer: %{public}d", buf, 0x3Eu);

    v33 = v48;
  }

  if ([v10 isContainer])
  {
    v41 = [(MCDBrowsableContentTableViewController *)self container];
    [v41 beginLoadingItem:v10 completion:0];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  count = 12;
  if (self->_count < 12)
  {
    count = self->_count;
  }

  if (self->_limited)
  {
    return count;
  }

  else
  {
    return self->_count;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = MEMORY[0x277CF9188];
  v7 = a4;
  v8 = [v6 cellForTableView:a3];
  [(MCDBrowsableContentTableViewController *)self _configureCell:v8 forIndexPath:v7];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[MCDPCContainer cachedItemForIndex:](self->_container, "cachedItemForIndex:", [v7 row]);
  if (([v8 isContainer] & 1) == 0 && !objc_msgSend(v8, "isPlayable"))
  {
    v13 = v7;
    goto LABEL_14;
  }

  objc_initWeak(&location, self);
  v9 = MEMORY[0x277CD6118];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v24[3] = &unk_279923A90;
  objc_copyWeak(&v25, &location);
  v10 = [v9 timerWithInterval:0 repeats:v24 block:20.0];
  [(MCDBrowsableContentTableViewController *)self setLoadingTimer:v10];

  [(MCDBrowsableContentTableViewController *)self setSelectedIndexPath:v7];
  v11 = [(MCDBrowsableContentTableViewController *)self container];
  v12 = [v11 indexPath];
  v13 = [v12 indexPathByAddingIndex:{objc_msgSend(v7, "row")}];

  if ([v8 isPlayable])
  {
    v14 = MCDGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v14, OS_LOG_TYPE_DEFAULT, "Selected playable content, preparing to play back", buf, 2u);
    }

    v15 = [(MCDBrowsableContentTableViewController *)self container];
    v16 = [v15 model];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_77;
    v22[3] = &unk_279923AE0;
    v22[4] = self;
    [(MCDBrowsableContentTableViewController *)v16 initiatePlaybackAtIndexPath:v13 completion:v22];
  }

  else
  {
    if (![v8 isContainer])
    {
      v15 = MCDGeneralLogging();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v15, OS_LOG_TYPE_DEFAULT, "Selected neither a container nor a playable cell", buf, 2u);
      }

      goto LABEL_12;
    }

    v17 = MCDGeneralLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "Selected container, preparing to push to container", buf, 2u);
    }

    v18 = [(MCDBrowsableContentTableViewController *)self container];
    v15 = [v18 containerAtIndex:{objc_msgSend(v13, "indexAtPosition:", objc_msgSend(v13, "length") - 1)}];

    v19 = [[MCDBrowsableContentTableViewController alloc] initWithContainer:v15 tabbedBrowsing:self->_hasTabbedBrowsing];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_80;
    v20[3] = &unk_279923AB8;
    v20[4] = self;
    v16 = v19;
    v21 = v16;
    [(MCDBrowsableContentTableViewController *)v16 reloadWithCompletion:v20];
  }

LABEL_12:
  [(MCDBrowsableContentTableViewController *)self performSelector:sel__displayLoadingActivity withObject:0 afterDelay:0.25];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
LABEL_14:
}

void __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v3 = MCDCarDisplayBundle();
    v4 = [v3 localizedStringForKey:@"ERROR_LOADING_ITEM" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v11[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v2 errorWithDomain:@"MCDError" code:1 userInfo:v5];

    v7 = MCDGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1(v6, v7);
    }

    [WeakRetained _displayErrorAlertController:v6];
    v8 = [WeakRetained loadingTimer];
    [v8 invalidate];

    [WeakRetained setLoadingTimer:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_77(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) loadingTimer];
  [v4 invalidate];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v6[3] = &unk_279923AB8;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _clearLoadingActivity];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 domain];
    v4 = [v3 isEqualToString:*MEMORY[0x277CD5680]];

    if (v4)
    {
      v5 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v6 = MCDCarDisplayBundle();
      v7 = [v6 localizedStringForKey:@"ERROR_LOADING_ITEM" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
      v16[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v9 = [v5 errorWithDomain:@"MCDError" code:1 userInfo:v8];

      v10 = MCDGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_cold_2(v10);
      }
    }

    else
    {
      v12 = MCDGeneralLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_cold_1((a1 + 40), v12);
      }

      v9 = *(a1 + 40);
    }

    [*(a1 + 32) _displayErrorAlertController:v9];
  }

  else
  {
    v11 = MCDGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_25AD8E000, v11, OS_LOG_TYPE_DEFAULT, "Initiating playback complete, preparing to push to now playing", v14, 2u);
    }

    [*(a1 + 32) setPushToNowPlaying:1];
    [*(a1 + 32) _updateNowPlayingButtonVisibility];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_80(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_81;
  v2[3] = &unk_279923AB8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_81(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingTimer];
  [v2 invalidate];

  [*(a1 + 32) _clearLoadingActivity];
  v3 = MCDGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AD8E000, v3, OS_LOG_TYPE_DEFAULT, "Container preparation complete, pushing to container", v5, 2u);
  }

  return [*(a1 + 32) showViewController:*(a1 + 40) sender:*(a1 + 32)];
}

- (void)tableView:(id)a3 didFocusRowAtIndexPath:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 indexPathForSelectedRow];
  v7 = [v6 compare:v5];

  if (v7)
  {
    v8 = [v9 cellForRowAtIndexPath:v6];
    [v8 setSelected:0];
  }
}

- (void)_displayErrorAlertController:(id)a3
{
  v4 = a3;
  v5 = [(MCDBrowsableContentTableViewController *)self alertController];

  if (!v5)
  {
    v6 = MEMORY[0x277D75110];
    v7 = [v4 localizedDescription];
    v8 = [v6 alertControllerWithTitle:0 message:v7 preferredStyle:1];
    [(MCDBrowsableContentTableViewController *)self setAlertController:v8];

    v9 = MEMORY[0x277D750F8];
    v10 = MCDCarDisplayBundle();
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v12 = [v9 actionWithTitle:v11 style:1 handler:0];

    v13 = [(MCDBrowsableContentTableViewController *)self alertController];
    [v13 addAction:v12];

    v14 = [(MCDBrowsableContentTableViewController *)self alertController];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__MCDBrowsableContentTableViewController__displayErrorAlertController___block_invoke;
    v15[3] = &unk_279923B08;
    v15[4] = self;
    [(MCDBrowsableContentTableViewController *)self presentViewController:v14 animated:1 completion:v15];
  }
}

uint64_t __71__MCDBrowsableContentTableViewController__displayErrorAlertController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearLoadingActivity];
  v2 = *(a1 + 32);

  return [v2 setAlertController:0];
}

- (void)container:(id)a3 didInvalidateIndicies:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MCDGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Some content have invalidated, preparing to reload table view: %{public}@, indicies: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = +[MCDMediaRemoteSerialQueueManager sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__MCDBrowsableContentTableViewController_container_didInvalidateIndicies___block_invoke;
  v14[3] = &unk_279923B58;
  objc_copyWeak(&v17, buf);
  v14[4] = self;
  v11 = v7;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  [v10 addOperation:v14 cancelAllOperations:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __74__MCDBrowsableContentTableViewController_container_didInvalidateIndicies___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__MCDBrowsableContentTableViewController_container_didInvalidateIndicies___block_invoke_2;
  v3[3] = &unk_279923B58;
  objc_copyWeak(&v6, (a1 + 56));
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_sync(MEMORY[0x277D85CD0], v3);

  objc_destroyWeak(&v6);
}

void __74__MCDBrowsableContentTableViewController_container_didInvalidateIndicies___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [*(*(a1 + 32) + 992) indexPathsForVisibleRows];
  v5 = [v4 copy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__MCDBrowsableContentTableViewController_container_didInvalidateIndicies___block_invoke_3;
  v10[3] = &unk_279923B30;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v3;
  v13 = WeakRetained;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v7 = WeakRetained;
  v8 = v3;
  v9 = v5;
  [v6 enumerateIndexesUsingBlock:v10];
}

void __74__MCDBrowsableContentTableViewController_container_didInvalidateIndicies___block_invoke_3(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 < 0xB || (*(*(a1 + 32) + 1080) & 1) == 0)
  {
    v3 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
    if ([*(a1 + 40) containsObject:v3])
    {
      [*(a1 + 48) addObject:v3];
    }
  }

  if ([*(a1 + 48) count])
  {
    v4 = [*(a1 + 56) didFinishInitialLoad];
    v5 = MCDGeneralLogging();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = [*(a1 + 64) identifier];
        v8 = *(a1 + 72);
        v13 = 138543618;
        v14 = v7;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Content that has been been invalidated is visible, reloading those index paths in table view: %{public}@, indicies: %{public}@", &v13, 0x16u);
      }

      [*(*(a1 + 32) + 992) reloadRowsAtIndexPaths:*(a1 + 48) withRowAnimation:5];
    }

    else
    {
      if (v6)
      {
        v10 = [*(a1 + 64) identifier];
        v11 = *(a1 + 72);
        v13 = 138543618;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Content has been invalidated, but view isn't finished loading yet. Container: %{public}@, indicies: %{public}@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v9 = MCDGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Content was invalidated, but there are no indexes to reload.", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)containerDidChangeCount:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MCDBrowsableContentTableViewController_containerDidChangeCount___block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __66__MCDBrowsableContentTableViewController_containerDidChangeCount___block_invoke(uint64_t a1)
{
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "The container changed count, preparing to reload", v11, 2u);
  }

  if (MCDIndexPathIsRootForContainer(*(*(a1 + 32) + 1096)))
  {
    v3 = [*(*(a1 + 32) + 1096) indexPath];
    if ([v3 length] || objc_msgSend(*(*(a1 + 32) + 1096), "cachedCount") < 1)
    {
      v4 = [*(*(a1 + 32) + 1096) indexPath];
      v5 = [v4 length];

      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    [*(*(a1 + 32) + 1048) invalidate];
    v6 = *(a1 + 32);
    v7 = *(v6 + 1048);
    *(v6 + 1048) = 0;

    [*(*(a1 + 32) + 1040) invalidate];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1040);
    *(v8 + 1040) = 0;

    [*(a1 + 32) _replacePlaceholderViewWithView:0];
  }

LABEL_10:
  *(*(a1 + 32) + 1080) = [*(a1 + 32) _shouldLimitLists];
  return [*(a1 + 32) reloadTable];
}

- (void)_displayLoadingActivity
{
  v6[1] = *MEMORY[0x277D85DE8];
  tableView = self->_tableView;
  v3 = [(MCDBrowsableContentTableViewController *)self selectedIndexPath];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(UITableView *)tableView reloadRowsAtIndexPaths:v4 withRowAnimation:5];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clearLoadingActivity
{
  v9[1] = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__displayLoadingActivity object:0];
  tableView = self->_tableView;
  v4 = [(MCDBrowsableContentTableViewController *)self selectedIndexPath];
  [(UITableView *)tableView deselectRowAtIndexPath:v4 animated:1];

  v5 = self->_tableView;
  v6 = [(MCDBrowsableContentTableViewController *)self selectedIndexPath];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(UITableView *)v5 reloadRowsAtIndexPaths:v7 withRowAnimation:5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_playbackStateChanged:(id)a3
{
  v4 = [(MCDBrowsableContentTableViewController *)self container];
  v5 = [v4 model];
  v6 = [v5 playableContentPlaybackManager];
  v7 = [v6 playerState] == 2;

  v8 = [(UITableView *)self->_tableView visibleCells];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__MCDBrowsableContentTableViewController__playbackStateChanged___block_invoke;
  v9[3] = &unk_279923B80;
  v9[4] = self;
  v10 = v7;
  [v8 enumerateObjectsUsingBlock:v9];
}

void __64__MCDBrowsableContentTableViewController__playbackStateChanged___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(a1 + 32) + 992) indexPathForCell:?];
  v4 = [*(a1 + 32) container];
  v5 = [v4 cachedItemForIndex:{objc_msgSend(v3, "row")}];

  if ([*(a1 + 32) currentlyPlayingApp])
  {
    if ([v5 currentlyPlaying])
    {
      v6 = [*(*(a1 + 32) + 1096) showCurrentlyPlayingIndex];
      if (v6 == [v3 row])
      {
        [v7 setActivePlayback:*(a1 + 40)];
      }
    }
  }
}

- (void)reloadWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  if (MCDIndexPathIsRootForContainer(self->_container))
  {
    v5 = MEMORY[0x277CD6118];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__MCDBrowsableContentTableViewController_reloadWithCompletion___block_invoke;
    v17[3] = &unk_279923A90;
    objc_copyWeak(&v18, &location);
    v6 = [v5 timerWithInterval:0 repeats:v17 block:2.0];
    delayTimer = self->_delayTimer;
    self->_delayTimer = v6;

    v8 = MCDGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Fetching content for root container", buf, 2u);
    }

    objc_destroyWeak(&v18);
  }

  else
  {
    v9 = MCDGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MCDPCContainer *)self->_container identifier];
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Fetching content for non-root container: %{public}@", buf, 0xCu);
    }
  }

  container = self->_container;
  if (container)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__MCDBrowsableContentTableViewController_reloadWithCompletion___block_invoke_95;
    v14[3] = &unk_279923BA8;
    objc_copyWeak(&v16, &location);
    v14[4] = self;
    v15 = v4;
    [(MCDPCContainer *)container refreshWithCompletion:v14];

    objc_destroyWeak(&v16);
  }

  else
  {
    v12 = MCDGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v12, OS_LOG_TYPE_DEFAULT, "No container available to refresh.", buf, 2u);
    }

    if (v4)
    {
      dispatch_async(MEMORY[0x277D85CD0], v4);
    }
  }

  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __63__MCDBrowsableContentTableViewController_reloadWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showLoadingScreen];
    WeakRetained = v2;
  }
}

void __63__MCDBrowsableContentTableViewController_reloadWithCompletion___block_invoke_95(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MCDBrowsableContentTableViewController_reloadWithCompletion___block_invoke_2;
  block[3] = &unk_279923BA8;
  objc_copyWeak(&v5, (a1 + 48));
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __63__MCDBrowsableContentTableViewController_reloadWithCompletion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained[137];
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 32) + 1096) identifier];
    v21 = 138543362;
    v22 = v5;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Refreshing content complete for container: %{public}@", &v21, 0xCu);
  }

  if (MCDIndexPathIsRootForContainer(v3))
  {
    v6 = [v3 model];
    v7 = [v6 bundleID];
    v8 = MRMediaRemoteApplicationSupportsSectionedBrowsing();

    if (v8)
    {
LABEL_5:
      v9 = MCDGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Root container has content", &v21, 2u);
      }

      [*(*(a1 + 32) + 1048) invalidate];
      v10 = *(a1 + 32);
      v11 = *(v10 + 1048);
      *(v10 + 1048) = 0;

      [*(*(a1 + 32) + 1040) invalidate];
      v12 = *(a1 + 32);
      v13 = *(v12 + 1040);
      *(v12 + 1040) = 0;

      [*(a1 + 32) _replacePlaceholderViewWithView:0];
      goto LABEL_13;
    }

    v14 = [v3 indexPath];
    if ([v14 length])
    {
    }

    else
    {
      v20 = [v3 cachedCount];

      if (v20 >= 1)
      {
        goto LABEL_5;
      }
    }

    v15 = MCDGeneralLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_25AD8E000, v15, OS_LOG_TYPE_DEFAULT, "Root container does not have content", &v21, 2u);
    }
  }

LABEL_13:
  *(*(a1 + 32) + 1080) = [*(a1 + 32) _shouldLimitLists];
  [*(a1 + 32) reloadTable];
  v16 = MCDGeneralLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(*(a1 + 32) + 1096) identifier];
    v21 = 138543362;
    v22 = v17;
    _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "Completed refresh for container %{public}@", &v21, 0xCu);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)reloadTable
{
  self->_count = [(MCDPCContainer *)self->_container cachedCount];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_updateNowPlayingButtonVisibility
{
  v3 = [(MCDPCContainer *)self->_container model];
  v4 = [v3 playableContentPlaybackManager];
  v5 = [v4 currentPlayingSong];
  if (v5)
  {
    v6 = v5;
    v7 = [(MCDPCContainer *)self->_container model];
    v8 = [v7 isCurrentPlayingApp];

    [(MCDBrowsableContentTableViewController *)self setCurrentlyPlayingApp:v8];
    [(MCDBrowsableContentTableViewController *)self reloadTable];
    if (v8 && self->_hasCarScreen)
    {
      if (!self->_nowPlayingButton)
      {
        v9 = MCDGetNowPlayingBarButtonItem(self, sel__nowPlayingButtonTapped_);
        nowPlayingButton = self->_nowPlayingButton;
        self->_nowPlayingButton = v9;

        v11 = self->_nowPlayingButton;
        v12 = [(MCDBrowsableContentTableViewController *)self navigationItem];
        [v12 setRightBarButtonItem:v11];
      }

      if (self->_hasNoBrowsableContent && !self->_didPushToNowPlayingAtLaunch)
      {
        [(MCDBrowsableContentTableViewController *)self _pushToNowPlaying:1];
        self->_didPushToNowPlayingAtLaunch = 1;
      }

      else if ([(MCDBrowsableContentTableViewController *)self pushToNowPlaying])
      {
        [(MCDBrowsableContentTableViewController *)self _pushToNowPlaying:1];

        [(MCDBrowsableContentTableViewController *)self setPushToNowPlaying:0];
      }

      return;
    }
  }

  else
  {

    [(MCDBrowsableContentTableViewController *)self setCurrentlyPlayingApp:0];
    [(MCDBrowsableContentTableViewController *)self reloadTable];
  }

  v13 = self->_nowPlayingButton;
  self->_nowPlayingButton = 0;

  v14 = [(MCDBrowsableContentTableViewController *)self navigationItem];
  [v14 setRightBarButtonItem:0];
}

- (void)_nowPlayingButtonTapped:(id)a3
{
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Now Playing button tapped in table view, pushing to Now Playing", v5, 2u);
  }

  [(MCDBrowsableContentTableViewController *)self _pushToNowPlaying:1];
}

- (void)_pushToNowPlaying:(BOOL)a3
{
  v4 = [MCDNowPlayingViewController alloc];
  v5 = [(MCDPCContainer *)self->_container model];
  v6 = [v5 bundleID];
  v7 = [(MCDPCContainer *)self->_container model];
  v8 = [v7 appTitle];
  v9 = [(MCDNowPlayingViewController *)v4 initWithPlayableBundleID:v6 appName:v8];

  [(MCDNowPlayingViewController *)v9 setShowNavigationBar:self->_isRootTableViewController];
  v10 = MCDGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "Pushing to Now Playing view", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__MCDBrowsableContentTableViewController__pushToNowPlaying___block_invoke;
  v12[3] = &unk_279923AB8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

- (void)_appRegisteredForContent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[MCDMediaRemoteSerialQueueManager sharedInstance];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __67__MCDBrowsableContentTableViewController__appRegisteredForContent___block_invoke;
  v10 = &unk_279923A90;
  objc_copyWeak(&v11, &location);
  [v5 addOperation:&v7 cancelAllOperations:1];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:@"appReadyToFetch" object:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __67__MCDBrowsableContentTableViewController__appRegisteredForContent___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MCDBrowsableContentTableViewController__appRegisteredForContent___block_invoke_2;
  block[3] = &unk_279923A90;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_sync(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __67__MCDBrowsableContentTableViewController__appRegisteredForContent___block_invoke_2(uint64_t a1)
{
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Loading content in table controller for the first time since app registered", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__MCDBrowsableContentTableViewController__appRegisteredForContent___block_invoke_99;
  v5[3] = &unk_279923B08;
  v6 = WeakRetained;
  v4 = WeakRetained;
  [v4 reloadWithCompletion:v5];
}

uint64_t __67__MCDBrowsableContentTableViewController__appRegisteredForContent___block_invoke_99(uint64_t a1)
{
  [*(a1 + 32) setDidFinishInitialLoad:1];
  [*(a1 + 32) setDidFinishInitialViewAppear:1];
  v2 = *(a1 + 32);

  return [v2 _updateNowPlayingButtonVisibility];
}

- (BOOL)_shouldLimitLists
{
  v2 = [(CARSessionStatus *)self->_carSessionStatus currentSession];
  v3 = [v2 limitUserInterfaces];
  if ([v3 BOOLValue])
  {
    v4 = [v2 configuration];
    v5 = ([v4 limitableUserInterfaces] >> 3) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_limitedUIChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MCDBrowsableContentTableViewController__limitedUIChanged___block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__MCDBrowsableContentTableViewController__limitedUIChanged___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _shouldLimitLists];
  if (*(*(a1 + 32) + 1080) != v2)
  {
    v3 = v2;
    v4 = MCDGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 1080)];
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
      *buf = 138543618;
      v20 = v5;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Limited UI changed from %{public}@ to %{public}@", buf, 0x16u);
    }

    *(*(a1 + 32) + 1080) = v3;
    v7 = [*(a1 + 32) isVisible];
    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v8[124] superview];
      v10 = [v9 snapshotViewAfterScreenUpdates:1];

      v11 = [*(*(a1 + 32) + 992) superview];
      [v11 addSubview:v10];

      [*(a1 + 32) reloadTable];
      if (v10)
      {
        v12 = MEMORY[0x277D75D18];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __60__MCDBrowsableContentTableViewController__limitedUIChanged___block_invoke_102;
        v17[3] = &unk_279923B08;
        v18 = v10;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __60__MCDBrowsableContentTableViewController__limitedUIChanged___block_invoke_2;
        v15[3] = &unk_279923BD0;
        v16 = v18;
        v13 = v18;
        [v12 animateWithDuration:v17 animations:v15 completion:0.4];
      }
    }

    else
    {
      [v8 reloadTable];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25AD8E000, a2, OS_LOG_TYPE_ERROR, "Loading content timed out, displaying error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __76__MCDBrowsableContentTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_25AD8E000, a2, OS_LOG_TYPE_ERROR, "Initiating playback failed, displaying error: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end