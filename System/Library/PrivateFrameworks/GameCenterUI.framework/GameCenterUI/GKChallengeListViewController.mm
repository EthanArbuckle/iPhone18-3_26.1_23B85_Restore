@interface GKChallengeListViewController
- (GKChallengeListViewController)initWithGameRecord:(id)record;
- (int64_t)preferredLargeTitleDisplayMode;
- (void)configureCloseButton;
- (void)configureCollectionView;
- (void)donePressed:(id)pressed;
- (void)setShouldShowPlayForChallenge:(BOOL)challenge;
- (void)setupNoContentView:(id)view withError:(id)error;
- (void)showNoContentPlaceholderForError:(id)error;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLargeTitleInsets;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation GKChallengeListViewController

- (GKChallengeListViewController)initWithGameRecord:(id)record
{
  recordCopy = record;
  v8.receiver = self;
  v8.super_class = GKChallengeListViewController;
  v5 = [(GKDashboardCollectionViewController *)&v8 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [(GKDashboardChallengeDataSource *)[GKChallengeDataSource alloc] initWithGameRecord:recordCopy];
    [(GKDashboardCollectionViewController *)v5 setDataSource:v6];
  }

  return v5;
}

- (void)showNoContentPlaceholderForError:(id)error
{
  v23[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
    [collectionView2 setHidden:1];

    noContentView = [(GKDashboardCollectionViewController *)self noContentView];

    if (!noContentView)
    {
      v8 = [GKNoContentView alloc];
      collectionView3 = [(GKDashboardCollectionViewController *)self collectionView];
      [collectionView3 bounds];
      v10 = [(GKNoContentView *)v8 initWithFrame:?];
      [(GKDashboardCollectionViewController *)self setNoContentView:v10];

      noContentView2 = [(GKDashboardCollectionViewController *)self noContentView];
      [noContentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      collectionView4 = [(GKDashboardCollectionViewController *)self collectionView];
      superview = [collectionView4 superview];

      noContentView3 = [(GKDashboardCollectionViewController *)self noContentView];
      collectionView5 = [(GKDashboardCollectionViewController *)self collectionView];
      [superview insertSubview:noContentView3 aboveSubview:collectionView5];

      v16 = MEMORY[0x277CCAAD0];
      noContentView4 = [(GKDashboardCollectionViewController *)self noContentView];
      [v16 _gkInstallEdgeConstraintsForView:noContentView4 containedWithinParentView:superview];

      collectionView6 = [(GKDashboardCollectionViewController *)self collectionView];
      v23[0] = collectionView6;
      noContentView5 = [(GKDashboardCollectionViewController *)self noContentView];
      v23[1] = noContentView5;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      [(GKLoadingViewController *)self setViewsToHideWhileLoading:v20];
    }

    noContentView6 = [(GKDashboardCollectionViewController *)self noContentView];
    [(GKChallengeListViewController *)self setupNoContentView:noContentView6 withError:errorCopy];

    noContentView7 = [(GKDashboardCollectionViewController *)self noContentView];
    [noContentView7 setHidden:0];
  }
}

- (void)setupNoContentView:(id)view withError:(id)error
{
  viewCopy = view;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [viewCopy setTitle:v6];

  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  [viewCopy setMessage:v8];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [viewCopy setBackgroundColor:clearColor];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = GKChallengeListViewController;
  [(GKDashboardCollectionViewController *)&v11 viewDidLoad];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  [(GKChallengeListViewController *)self setTitle:v4];

  navigationItem = [(GKChallengeListViewController *)self navigationItem];
  [navigationItem _setAutoScrollEdgeTransitionDistance:40.0];

  navigationItem2 = [(GKChallengeListViewController *)self navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  title = [(GKChallengeListViewController *)self title];
  navigationItem3 = [(GKChallengeListViewController *)self navigationItem];
  [navigationItem3 setTitle:title];

  preferredLargeTitleDisplayMode = [(GKChallengeListViewController *)self preferredLargeTitleDisplayMode];
  navigationItem4 = [(GKChallengeListViewController *)self navigationItem];
  [navigationItem4 setLargeTitleDisplayMode:preferredLargeTitleDisplayMode];

  [(GKChallengeListViewController *)self configureCloseButton];
  [(GKChallengeListViewController *)self configureCollectionView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = GKChallengeListViewController;
  [(GKDashboardCollectionViewController *)&v4 viewWillAppear:appear];
  [(GKDashboardCollectionViewController *)self setNeedsRefresh];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = GKChallengeListViewController;
  [(GKDashboardCollectionViewController *)&v4 viewDidAppear:appear];
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [_TtC12GameCenterUI15GKMetricsBridge recordChallengePageEventWithReferrerData:[(GKChallengeListViewController *)self isDeeplinked]];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = GKChallengeListViewController;
  [(GKChallengeListViewController *)&v6 viewWillDisappear:disappear];
  reporter = [MEMORY[0x277D0C1F8] reporter];
  v5 = *MEMORY[0x277D0BB30];
  [(GKChallengeListViewController *)self startTime];
  [reporter reportScreenTimeEventForType:v5 withStartTimestamp:?];
}

- (void)configureCloseButton
{
  v5 = [MEMORY[0x277D75220] _gkXmarkedCloseButtonWithTarget:self action:sel_donePressed_];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(GKChallengeListViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];
}

- (void)viewWillLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = GKChallengeListViewController;
  [(GKChallengeListViewController *)&v18 viewWillLayoutSubviews];
  view = [(GKChallengeListViewController *)self view];
  readableContentGuide = [view readableContentGuide];
  [readableContentGuide layoutFrame];
  v6 = v5;
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView frame];
  v9 = v6 - v8;

  collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView2 contentInset];
  v12 = v11;
  v13 = fmax(v9, 16.0);
  collectionView3 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView3 contentInset];
  v16 = v15;
  collectionView4 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView4 setContentInset:{v12, v13, v16, v13}];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = GKChallengeListViewController;
  [(GKChallengeListViewController *)&v3 viewDidLayoutSubviews];
  [(GKChallengeListViewController *)self updateLargeTitleInsets];
}

- (void)configureCollectionView
{
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView2 setShowsVerticalScrollIndicator:0];

  collectionView3 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView3 _gkRemoveAllConstraints];

  v6 = MEMORY[0x277CCAAD0];
  collectionView4 = [(GKDashboardCollectionViewController *)self collectionView];
  view = [(GKChallengeListViewController *)self view];
  [v6 _gkInstallEdgeConstraintsForView:collectionView4 containedWithinParentView:view];

  collectionView5 = [(GKDashboardCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView5 collectionViewLayout];

  [collectionViewLayout setSectionInsetRelativeWithContentInset:1];
}

- (void)donePressed:(id)pressed
{
  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  [_gkExtensionViewController finish];
}

- (void)setShouldShowPlayForChallenge:(BOOL)challenge
{
  challengeCopy = challenge;
  self->_shouldShowPlayForChallenge = challenge;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  [dataSource setShouldShowPlay:challengeCopy];

  if (!challengeCopy)
  {
    currentGame = [MEMORY[0x277D0C048] currentGame];
    internal = [currentGame internal];
    supportsChallenges = [internal supportsChallenges];

    if (supportsChallenges)
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v8 = GKOSLoggers();
      }

      v9 = *MEMORY[0x277D0C288];
      if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
      {
        [GKChallengeListViewController setShouldShowPlayForChallenge:v9];
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = GKChallengeListViewController;
  [(GKDashboardCollectionViewController *)&v13 traitCollectionDidChange:changeCopy];
  traitCollection = [(GKChallengeListViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass == [changeCopy horizontalSizeClass])
  {
    traitCollection2 = [(GKChallengeListViewController *)self traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];
    if (layoutDirection == [changeCopy layoutDirection])
    {
      traitCollection3 = [(GKChallengeListViewController *)self traitCollection];
      preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
      preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

      if (preferredContentSizeCategory == preferredContentSizeCategory2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__GKChallengeListViewController_traitCollectionDidChange___block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_8:
}

void __58__GKChallengeListViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

- (int64_t)preferredLargeTitleDisplayMode
{
  if (self->_preferredLargeTitleDisplayMode)
  {
    return self->_preferredLargeTitleDisplayMode;
  }

  else
  {
    return 2;
  }
}

- (void)updateLargeTitleInsets
{
  navigationController = [(GKChallengeListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  navigationItem = [(GKChallengeListViewController *)self navigationItem];
  largeTitleDisplayMode = [navigationItem largeTitleDisplayMode];

  if (largeTitleDisplayMode != 2 && navigationBar)
  {
    collectionView = [(GKDashboardCollectionViewController *)self collectionView];
    [collectionView contentInset];
    v8 = v7;
    collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
    [collectionView2 frame];
    v11 = v8 + v10;

    navigationItem2 = [(GKChallengeListViewController *)self navigationItem];
    [navigationItem2 setLargeTitleInsets:{0.0, v11, 0.0, v11}];

    [navigationBar setNeedsLayout];
  }
}

@end