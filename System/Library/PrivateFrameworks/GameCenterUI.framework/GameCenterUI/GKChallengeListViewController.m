@interface GKChallengeListViewController
- (GKChallengeListViewController)initWithGameRecord:(id)a3;
- (int64_t)preferredLargeTitleDisplayMode;
- (void)configureCloseButton;
- (void)configureCollectionView;
- (void)donePressed:(id)a3;
- (void)setShouldShowPlayForChallenge:(BOOL)a3;
- (void)setupNoContentView:(id)a3 withError:(id)a4;
- (void)showNoContentPlaceholderForError:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLargeTitleInsets;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation GKChallengeListViewController

- (GKChallengeListViewController)initWithGameRecord:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKChallengeListViewController;
  v5 = [(GKDashboardCollectionViewController *)&v8 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [(GKDashboardChallengeDataSource *)[GKChallengeDataSource alloc] initWithGameRecord:v4];
    [(GKDashboardCollectionViewController *)v5 setDataSource:v6];
  }

  return v5;
}

- (void)showNoContentPlaceholderForError:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKDashboardCollectionViewController *)self collectionView];

  if (v5)
  {
    v6 = [(GKDashboardCollectionViewController *)self collectionView];
    [v6 setHidden:1];

    v7 = [(GKDashboardCollectionViewController *)self noContentView];

    if (!v7)
    {
      v8 = [GKNoContentView alloc];
      v9 = [(GKDashboardCollectionViewController *)self collectionView];
      [v9 bounds];
      v10 = [(GKNoContentView *)v8 initWithFrame:?];
      [(GKDashboardCollectionViewController *)self setNoContentView:v10];

      v11 = [(GKDashboardCollectionViewController *)self noContentView];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

      v12 = [(GKDashboardCollectionViewController *)self collectionView];
      v13 = [v12 superview];

      v14 = [(GKDashboardCollectionViewController *)self noContentView];
      v15 = [(GKDashboardCollectionViewController *)self collectionView];
      [v13 insertSubview:v14 aboveSubview:v15];

      v16 = MEMORY[0x277CCAAD0];
      v17 = [(GKDashboardCollectionViewController *)self noContentView];
      [v16 _gkInstallEdgeConstraintsForView:v17 containedWithinParentView:v13];

      v18 = [(GKDashboardCollectionViewController *)self collectionView];
      v23[0] = v18;
      v19 = [(GKDashboardCollectionViewController *)self noContentView];
      v23[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      [(GKLoadingViewController *)self setViewsToHideWhileLoading:v20];
    }

    v21 = [(GKDashboardCollectionViewController *)self noContentView];
    [(GKChallengeListViewController *)self setupNoContentView:v21 withError:v4];

    v22 = [(GKDashboardCollectionViewController *)self noContentView];
    [v22 setHidden:0];
  }
}

- (void)setupNoContentView:(id)a3 withError:(id)a4
{
  v4 = a3;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [v4 setTitle:v6];

  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  [v4 setMessage:v8];

  v9 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v9];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = GKChallengeListViewController;
  [(GKDashboardCollectionViewController *)&v11 viewDidLoad];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  [(GKChallengeListViewController *)self setTitle:v4];

  v5 = [(GKChallengeListViewController *)self navigationItem];
  [v5 _setAutoScrollEdgeTransitionDistance:40.0];

  v6 = [(GKChallengeListViewController *)self navigationItem];
  [v6 _setManualScrollEdgeAppearanceEnabled:1];

  v7 = [(GKChallengeListViewController *)self title];
  v8 = [(GKChallengeListViewController *)self navigationItem];
  [v8 setTitle:v7];

  v9 = [(GKChallengeListViewController *)self preferredLargeTitleDisplayMode];
  v10 = [(GKChallengeListViewController *)self navigationItem];
  [v10 setLargeTitleDisplayMode:v9];

  [(GKChallengeListViewController *)self configureCloseButton];
  [(GKChallengeListViewController *)self configureCollectionView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GKChallengeListViewController;
  [(GKDashboardCollectionViewController *)&v4 viewWillAppear:a3];
  [(GKDashboardCollectionViewController *)self setNeedsRefresh];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GKChallengeListViewController;
  [(GKDashboardCollectionViewController *)&v4 viewDidAppear:a3];
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [_TtC12GameCenterUI15GKMetricsBridge recordChallengePageEventWithReferrerData:[(GKChallengeListViewController *)self isDeeplinked]];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKChallengeListViewController;
  [(GKChallengeListViewController *)&v6 viewWillDisappear:a3];
  v4 = [MEMORY[0x277D0C1F8] reporter];
  v5 = *MEMORY[0x277D0BB30];
  [(GKChallengeListViewController *)self startTime];
  [v4 reportScreenTimeEventForType:v5 withStartTimestamp:?];
}

- (void)configureCloseButton
{
  v5 = [MEMORY[0x277D75220] _gkXmarkedCloseButtonWithTarget:self action:sel_donePressed_];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  v4 = [(GKChallengeListViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];
}

- (void)viewWillLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = GKChallengeListViewController;
  [(GKChallengeListViewController *)&v18 viewWillLayoutSubviews];
  v3 = [(GKChallengeListViewController *)self view];
  v4 = [v3 readableContentGuide];
  [v4 layoutFrame];
  v6 = v5;
  v7 = [(GKDashboardCollectionViewController *)self collectionView];
  [v7 frame];
  v9 = v6 - v8;

  v10 = [(GKDashboardCollectionViewController *)self collectionView];
  [v10 contentInset];
  v12 = v11;
  v13 = fmax(v9, 16.0);
  v14 = [(GKDashboardCollectionViewController *)self collectionView];
  [v14 contentInset];
  v16 = v15;
  v17 = [(GKDashboardCollectionViewController *)self collectionView];
  [v17 setContentInset:{v12, v13, v16, v13}];
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
  v3 = [(GKDashboardCollectionViewController *)self collectionView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(GKDashboardCollectionViewController *)self collectionView];
  [v4 setShowsVerticalScrollIndicator:0];

  v5 = [(GKDashboardCollectionViewController *)self collectionView];
  [v5 _gkRemoveAllConstraints];

  v6 = MEMORY[0x277CCAAD0];
  v7 = [(GKDashboardCollectionViewController *)self collectionView];
  v8 = [(GKChallengeListViewController *)self view];
  [v6 _gkInstallEdgeConstraintsForView:v7 containedWithinParentView:v8];

  v9 = [(GKDashboardCollectionViewController *)self collectionView];
  v10 = [v9 collectionViewLayout];

  [v10 setSectionInsetRelativeWithContentInset:1];
}

- (void)donePressed:(id)a3
{
  v3 = [(UIViewController *)self _gkExtensionViewController];
  [v3 finish];
}

- (void)setShouldShowPlayForChallenge:(BOOL)a3
{
  v3 = a3;
  self->_shouldShowPlayForChallenge = a3;
  v4 = [(GKDashboardCollectionViewController *)self dataSource];
  [v4 setShouldShowPlay:v3];

  if (!v3)
  {
    v5 = [MEMORY[0x277D0C048] currentGame];
    v6 = [v5 internal];
    v7 = [v6 supportsChallenges];

    if (v7)
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GKChallengeListViewController;
  [(GKDashboardCollectionViewController *)&v13 traitCollectionDidChange:v4];
  v5 = [(GKChallengeListViewController *)self traitCollection];
  v6 = [v5 horizontalSizeClass];
  if (v6 == [v4 horizontalSizeClass])
  {
    v7 = [(GKChallengeListViewController *)self traitCollection];
    v8 = [v7 layoutDirection];
    if (v8 == [v4 layoutDirection])
    {
      v9 = [(GKChallengeListViewController *)self traitCollection];
      v10 = [v9 preferredContentSizeCategory];
      v11 = [v4 preferredContentSizeCategory];

      if (v10 == v11)
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
  v3 = [(GKChallengeListViewController *)self navigationController];
  v13 = [v3 navigationBar];

  v4 = [(GKChallengeListViewController *)self navigationItem];
  v5 = [v4 largeTitleDisplayMode];

  if (v5 != 2 && v13)
  {
    v6 = [(GKDashboardCollectionViewController *)self collectionView];
    [v6 contentInset];
    v8 = v7;
    v9 = [(GKDashboardCollectionViewController *)self collectionView];
    [v9 frame];
    v11 = v8 + v10;

    v12 = [(GKChallengeListViewController *)self navigationItem];
    [v12 setLargeTitleInsets:{0.0, v11, 0.0, v11}];

    [v13 setNeedsLayout];
  }
}

@end