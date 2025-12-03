@interface MCDNowPlayingViewController
- (MCDNowPlayingViewController)initWithBundleID:(id)d appName:(id)name;
- (MCDNowPlayingViewController)initWithPlayableBundleID:(id)d appName:(id)name;
- (void)_adjustRightTitleLabelToFit;
- (void)_handleWillAppear;
- (void)_invalidateActivityTimer;
- (void)_popViewControllerAnimated;
- (void)_setupActivityTimer;
- (void)_updateBackButton;
- (void)contentManager:(id)manager displayItemIndex:(int64_t)index totalItemCount:(int64_t)count;
- (void)contentManager:(id)manager presentViewController:(id)controller;
- (void)contentManager:(id)manager processResponse:(id)response error:(id)error;
- (void)contentManager:(id)manager pushViewController:(id)controller;
- (void)contentManager:(id)manager sectionName:(id)name;
- (void)contentManager:(id)manager setAdditionalBarButtonItems:(id)items;
- (void)contentManagerCompletedAllPlayback:(id)playback;
- (void)contentManagerInitiatedPlaybackFromPlaybackQueue:(id)queue;
- (void)contentManagerReloadData:(id)data;
- (void)dealloc;
- (void)setContentManager:(id)manager;
- (void)setRightTitle:(id)title;
- (void)upNextButtonTapped:(id)tapped;
- (void)updateBarButtonItems;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation MCDNowPlayingViewController

- (MCDNowPlayingViewController)initWithBundleID:(id)d appName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MCDNowPlayingViewController;
  v8 = [(CPUINowPlayingViewController *)&v11 initWithBundleIdentifier:d dataSource:0 delegate:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appName, name);
  }

  return v9;
}

- (MCDNowPlayingViewController)initWithPlayableBundleID:(id)d appName:(id)name
{
  dCopy = d;
  v7 = [(MCDNowPlayingViewController *)self initWithBundleID:dCopy appName:name];
  if (v7)
  {
    v8 = [MCDPlayableContentPlaybackManager alloc];
    v9 = objc_opt_new();
    v10 = [(_MCDNowPlayingContentManager *)v8 initWithDelegate:v7 dataSource:v9 bundleID:dCopy];
    [(MCDNowPlayingViewController *)v7 setContentManager:v10];

    v11 = [MCDPlayableContentQueueTableViewController alloc];
    contentManager = [(MCDNowPlayingViewController *)v7 contentManager];
    v13 = [(MCDPlayableContentQueueTableViewController *)v11 initWithContentManager:contentManager];
    [(MCDNowPlayingViewController *)v7 setPlaybackQueueViewController:v13];
  }

  return v7;
}

- (void)setContentManager:(id)manager
{
  managerCopy = manager;
  if (self->_contentManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_contentManager, manager);
    [(CPUINowPlayingViewController *)self setDataSource:v6];
    managerCopy = [(CPUINowPlayingViewController *)self setDelegate:v6];
  }

  MEMORY[0x2821F9730](managerCopy);
}

- (void)willMoveToParentViewController:(id)controller
{
  contentManager = [(MCDNowPlayingViewController *)self contentManager];
  v5 = contentManager;
  if (controller)
  {
    [contentManager beginRequestObservation];
  }

  else
  {
    [contentManager endRequestObservation];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCDNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v47[2] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = MCDNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v46 viewDidLoad];
  navigationItem = [(MCDNowPlayingViewController *)self navigationItem];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  [navigationItem setTitleView:v9];

  bundleIdentifier = [(CPUINowPlayingViewController *)self bundleIdentifier];
  v11 = MRMediaRemoteApplicationSupportsBrowsableContent();

  if (v11)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__updateBackButton name:*MEMORY[0x277D27A50] object:0];
  }

  [(MCDNowPlayingViewController *)self _updateBackButton];
  v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  [(MCDNowPlayingViewController *)self setRightTitleLabel:v13];

  v14 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  rightTitleLabel = [(MCDNowPlayingViewController *)self rightTitleLabel];
  [rightTitleLabel setFont:v14];

  rightTitleLabel2 = [(MCDNowPlayingViewController *)self rightTitleLabel];
  [rightTitleLabel2 setLineBreakMode:4];

  _labelColor = [MEMORY[0x277D75348] _labelColor];
  v18 = [_labelColor colorWithAlphaComponent:0.5];
  rightTitleLabel3 = [(MCDNowPlayingViewController *)self rightTitleLabel];
  [rightTitleLabel3 setTextColor:v18];

  rightTitleLabel4 = [(MCDNowPlayingViewController *)self rightTitleLabel];
  [rightTitleLabel4 setTextAlignment:2];

  [(MCDNowPlayingViewController *)self _adjustRightTitleLabelToFit];
  v21 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(MCDNowPlayingViewController *)self setActivityIndicator:v21];

  v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:self->_activityIndicator];
  [(MCDNowPlayingViewController *)self setActivityIndicatorBarButtonItem:v22];

  activityIndicatorBarButtonItem = [(MCDNowPlayingViewController *)self activityIndicatorBarButtonItem];
  [activityIndicatorBarButtonItem plastify];

  [(MCDNowPlayingViewController *)self _setupActivityTimer];
  v24 = objc_alloc(MEMORY[0x277D751E0]);
  rightTitleLabel5 = [(MCDNowPlayingViewController *)self rightTitleLabel];
  v26 = [v24 initWithCustomView:rightTitleLabel5];
  [(MCDNowPlayingViewController *)self setRightTitleLabelBarButtonItem:v26];

  rightTitleLabelBarButtonItem = [(MCDNowPlayingViewController *)self rightTitleLabelBarButtonItem];
  [rightTitleLabelBarButtonItem plastify];

  if (_os_feature_enabled_impl())
  {
    v28 = objc_alloc(MEMORY[0x277D751E0]);
    v29 = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
    v30 = [v28 initWithImage:v29 style:0 target:self action:sel_upNextButtonTapped_];
    [(MCDNowPlayingViewController *)self setQueueBarButtonItem:v30];

    v31 = MCDCarDisplayBundle();
    v32 = [v31 localizedStringForKey:@"ACCESSIBILITY_QUEUE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v47[0] = v32;
    v33 = MCDCarDisplayBundle();
    v34 = [v33 localizedStringForKey:@"ACCESSIBILITY_LIST" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v47[1] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    queueBarButtonItem = [(MCDNowPlayingViewController *)self queueBarButtonItem];
    [queueBarButtonItem setAccessibilityUserInputLabels:v35];
  }

  else
  {
    v31 = objc_opt_new();
    v37 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    titleLabel = [v31 titleLabel];
    [titleLabel setFont:v37];

    v39 = MCDCarDisplayBundle();
    v40 = [v39 localizedStringForKey:@"PLAYBACK_QUEUE_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    [v31 setTitle:v40 forState:0];

    [v31 addTarget:self action:sel_upNextButtonTapped_ forControlEvents:64];
    [v31 sizeToFit];
    [v31 frame];
    [v31 setFrame:{v48.origin.x, v48.origin.y, CGRectGetWidth(v48) + 16.0, v48.size.height + 6.0}];
    v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v31];
    [(MCDNowPlayingViewController *)self setQueueBarButtonItem:v32];
  }

  [(MCDNowPlayingViewController *)self setRightTitle:0];
  delegate = [(CPUINowPlayingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(CPUINowPlayingViewController *)self delegate];
    v43 = [delegate2 nowPlayingViewControllerCanShowUpNext:self];
  }

  else
  {
    v43 = 0;
  }

  contentManager = [(MCDNowPlayingViewController *)self contentManager];
  [(MCDNowPlayingViewController *)self contentManager:contentManager shouldShowPlaybackQueue:v43];

  v45 = *MEMORY[0x277D85DE8];
}

- (void)upNextButtonTapped:(id)tapped
{
  navigationController = [(MCDNowPlayingViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  playbackQueueViewController = [(MCDNowPlayingViewController *)self playbackQueueViewController];
  v7 = [viewControllers containsObject:playbackQueueViewController];

  navigationController2 = [(MCDNowPlayingViewController *)self navigationController];
  playbackQueueViewController2 = [(MCDNowPlayingViewController *)self playbackQueueViewController];
  if (v7)
  {
    v9 = [navigationController2 popToViewController:playbackQueueViewController2 animated:1];
  }

  else
  {
    [navigationController2 pushViewController:playbackQueueViewController2 animated:1];
  }
}

- (void)_handleWillAppear
{
  if (self->_showNavigationBar)
  {
    navigationController = [(MCDNowPlayingViewController *)self navigationController];
    [navigationController setNavigationBarHidden:0 animated:1];
  }

  [(MCDNowPlayingViewController *)self setHandledWillAppear:1];
}

- (void)viewSafeAreaInsetsDidChange
{
  v6.receiver = self;
  v6.super_class = MCDNowPlayingViewController;
  [(MCDNowPlayingViewController *)&v6 viewSafeAreaInsetsDidChange];
  contentManager = [(MCDNowPlayingViewController *)self contentManager];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    contentManager2 = [(MCDNowPlayingViewController *)self contentManager];
    [contentManager2 updateNoContentViewFrameIfNeeded];
  }
}

- (void)_updateBackButton
{
  bundleIdentifier = [(CPUINowPlayingViewController *)self bundleIdentifier];
  MRMediaRemoteGetSupportedBrowsableContentAPIs();
}

void __48__MCDNowPlayingViewController__updateBackButton__block_invoke(uint64_t a1, int a2, int a3)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__MCDNowPlayingViewController__updateBackButton__block_invoke_2;
  v3[3] = &unk_279923DA8;
  v4 = a3;
  v5 = a2;
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __48__MCDNowPlayingViewController__updateBackButton__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 44) == 0;
  }

  v3 = [*(a1 + 32) contentManager];
  [v3 setShouldHideBackButton:v2];

  v4 = *(a1 + 32);

  return [v4 reloadData];
}

- (void)setRightTitle:(id)title
{
  titleCopy = title;
  appName = [(MCDNowPlayingViewController *)self appName];

  if (appName)
  {
    v5 = +[MCDBrowsableContentUtilities sharedInstance];
    firstPartyAppBundleIDs = [v5 firstPartyAppBundleIDs];
    bundleIdentifier = [(CPUINowPlayingViewController *)self bundleIdentifier];
    v8 = [firstPartyAppBundleIDs containsObject:bundleIdentifier];

    if (v8)
    {
      appName3 = titleCopy;
    }

    else
    {
      if (titleCopy)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = MCDCarDisplayBundle();
        v12 = [v11 localizedStringForKey:@"AppName_PlaybackQueue" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
        appName2 = [(MCDNowPlayingViewController *)self appName];
        appName = [v10 localizedStringWithFormat:v12, appName2, titleCopy];

        goto LABEL_8;
      }

      appName3 = [(MCDNowPlayingViewController *)self appName];
    }

    appName = appName3;
  }

LABEL_8:
  rightTitleLabel = [(MCDNowPlayingViewController *)self rightTitleLabel];
  text = [rightTitleLabel text];
  v16 = [appName isEqualToString:text];

  rightTitleLabel2 = [(MCDNowPlayingViewController *)self rightTitleLabel];
  [rightTitleLabel2 setText:appName];

  if ((v16 & 1) == 0)
  {
    [(MCDNowPlayingViewController *)self _adjustRightTitleLabelToFit];
    [(MCDNowPlayingViewController *)self updateBarButtonItems];
  }
}

- (void)_adjustRightTitleLabelToFit
{
  rightTitleLabel = [(MCDNowPlayingViewController *)self rightTitleLabel];
  [rightTitleLabel sizeToFit];

  rightTitleLabel2 = [(MCDNowPlayingViewController *)self rightTitleLabel];
  [rightTitleLabel2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  Width = CGRectGetWidth(v24);
  view = [(MCDNowPlayingViewController *)self view];
  [view frame];
  v15 = CGRectGetWidth(v25) * 0.6;

  if (Width > v15)
  {
    Width = v15;
  }

  rightTitleLabel3 = [(MCDNowPlayingViewController *)self rightTitleLabel];
  [rightTitleLabel3 frame];
  v27.origin.x = v17;
  v27.origin.y = v18;
  v27.size.width = v19;
  v27.size.height = v20;
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = Width;
  v26.size.height = v12;
  v21 = CGRectEqualToRect(v26, v27);

  if (!v21)
  {
    rightTitleLabel4 = [(MCDNowPlayingViewController *)self rightTitleLabel];
    [rightTitleLabel4 setFrame:{v6, v8, Width, v12}];
  }
}

- (void)updateBarButtonItems
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(MCDNowPlayingViewController *)self shouldShowPlaybackQueue])
  {
    v3 = &OBJC_IVAR___MCDNowPlayingViewController__queueBarButtonItem;
  }

  else
  {
    text = [(UILabel *)self->_rightTitleLabel text];
    v5 = [text length];

    if (!v5)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v3 = &OBJC_IVAR___MCDNowPlayingViewController__rightTitleLabelBarButtonItem;
  }

  v6 = *(&self->super.super.super.super.isa + *v3);
  if (v6)
  {
    [array addObject:v6];
  }

LABEL_8:
  if (self->_additionalBarButtonItems)
  {
    [array addObjectsFromArray:?];
  }

  if (self->_activityIndicatorBarButtonItem)
  {
    [array addObject:?];
  }

  navigationItem = [(MCDNowPlayingViewController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  v9 = [rightBarButtonItems isEqualToArray:array];

  if ((v9 & 1) == 0)
  {
    navigationItem2 = [(MCDNowPlayingViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItems:array];
  }
}

- (void)contentManager:(id)manager processResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  objc_storeStrong(&self->_playerResponse, response);
  playbackQueueViewController = self->_playbackQueueViewController;
  if (objc_opt_respondsToSelector())
  {
    [(PlaybackQueueViewControllerProtocol *)self->_playbackQueueViewController _processResponse:responseCopy error:errorCopy];
  }
}

void __60__MCDNowPlayingViewController_contentManager_bufferingItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trackBuffering];
  v3 = [*(a1 + 32) activityIndicatorBarButtonItem];
  v4 = v3;
  if (v2)
  {
    [v3 setHidden:0];

    v5 = [*(a1 + 32) activityIndicator];
    [v5 startAnimating];
  }

  else
  {
    [v3 setHidden:1];

    v5 = [*(a1 + 32) activityIndicator];
    [v5 stopAnimating];
  }
}

- (void)contentManagerReloadData:(id)data
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MCDNowPlayingViewController_contentManagerReloadData___block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)contentManager:(id)manager presentViewController:(id)controller
{
  controllerCopy = controller;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__MCDNowPlayingViewController_contentManager_presentViewController___block_invoke;
  v7[3] = &unk_279923AB8;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)contentManager:(id)manager pushViewController:(id)controller
{
  controllerCopy = controller;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__MCDNowPlayingViewController_contentManager_pushViewController___block_invoke;
  v7[3] = &unk_279923AB8;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __65__MCDNowPlayingViewController_contentManager_pushViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:*(a1 + 40) animated:1];
}

- (void)contentManager:(id)manager sectionName:(id)name
{
  nameCopy = name;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__MCDNowPlayingViewController_contentManager_sectionName___block_invoke;
  v7[3] = &unk_279923AB8;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)contentManager:(id)manager displayItemIndex:(int64_t)index totalItemCount:(int64_t)count
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MCDNowPlayingViewController_contentManager_displayItemIndex_totalItemCount___block_invoke;
  block[3] = &unk_279923DD0;
  block[4] = self;
  block[5] = index;
  block[6] = count;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__MCDNowPlayingViewController_contentManager_displayItemIndex_totalItemCount___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = MEMORY[0x277CCACA8];
  v10 = MCDCarDisplayBundle();
  v4 = [v10 localizedStringForKey:@"POSITION_IN_PLAYLIST_FORMAT" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1[5] + 1];
  v6 = MCDFormattedNumberString(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v8 = MCDFormattedNumberString(v7);
  v9 = [v3 localizedStringWithFormat:v4, v6, v8];
  [v2 setRightTitle:v9];
}

- (void)contentManagerInitiatedPlaybackFromPlaybackQueue:(id)queue
{
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Row selected in Playback Queue, dismissing Playback Queue screen", v5, 2u);
  }

  [(MCDNowPlayingViewController *)self _popViewControllerAnimated];
}

- (void)contentManagerCompletedAllPlayback:(id)playback
{
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "All playback completed, dismissing Now Playing screen", v5, 2u);
  }

  [(MCDNowPlayingViewController *)self _popViewControllerAnimated];
}

- (void)contentManager:(id)manager setAdditionalBarButtonItems:(id)items
{
  [(MCDNowPlayingViewController *)self setAdditionalBarButtonItems:items];

  [(MCDNowPlayingViewController *)self updateBarButtonItems];
}

- (void)_popViewControllerAnimated
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MCDNowPlayingViewController__popViewControllerAnimated__block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__MCDNowPlayingViewController__popViewControllerAnimated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 containsObject:*(a1 + 32)];

  if (v4)
  {
    v6 = [*(a1 + 32) navigationController];
    v5 = [v6 popViewControllerAnimated:1];
  }
}

- (void)_setupActivityTimer
{
  [(MCDNowPlayingViewController *)self _invalidateActivityTimer];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CD6118];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__MCDNowPlayingViewController__setupActivityTimer__block_invoke;
  v5[3] = &unk_279923DF8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v4 = [v3 timerWithInterval:0 repeats:v5 block:2.0];
  [(MCDNowPlayingViewController *)self setActivityTimer:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__MCDNowPlayingViewController__setupActivityTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (([WeakRetained[161] isAnimating] & 1) == 0 && objc_msgSend(*(a1 + 32), "trackBuffering"))
    {
      [v3[161] startAnimating];
    }

    [v3 _invalidateActivityTimer];
    WeakRetained = v3;
  }
}

- (void)_invalidateActivityTimer
{
  activityTimer = [(MCDNowPlayingViewController *)self activityTimer];

  if (activityTimer)
  {
    activityTimer2 = [(MCDNowPlayingViewController *)self activityTimer];
    [activityTimer2 invalidate];

    [(MCDNowPlayingViewController *)self setActivityTimer:0];
  }
}

@end