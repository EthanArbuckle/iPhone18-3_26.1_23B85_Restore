@interface GKDashboardLeaderboardScoreViewController
- (BOOL)shouldUseTwoColumnLayoutForSize:(CGSize)a3;
- (GKDashboardLeaderboardScoreViewController)initWithGameRecord:(id)a3 leaderboard:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)dataUpdated:(BOOL)a3 withError:(id)a4;
- (void)setTimeScope:(int64_t)a3;
- (void)setupNoContentView:(id)a3 withError:(id)a4;
- (void)timeScopePressed:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateColumnLayoutForSize:(CGSize)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GKDashboardLeaderboardScoreViewController

- (GKDashboardLeaderboardScoreViewController)initWithGameRecord:(id)a3 leaderboard:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _gkPlatformNibName];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25.receiver = self;
  v25.super_class = GKDashboardLeaderboardScoreViewController;
  v10 = [(GKDashboardCollectionViewController *)&v25 initWithNibName:v8 bundle:v9];

  if (v10)
  {
    [(GKDashboardLeaderboardScoreViewController *)v10 setLeaderboard:v7];
    v11 = [v7 title];
    [(GKDashboardLeaderboardScoreViewController *)v10 setTitle:v11];

    v10->_timeScope = sInitialTimeScope_0;
    v12 = objc_alloc(MEMORY[0x277D0C0A0]);
    v13 = [v7 internal];
    v14 = [v12 initWithInternalRepresentation:v13];

    [v14 setPlayerScope:1];
    [v14 setTimeScope:v10->_timeScope];
    v15 = [[GKDashboardLeaderboardScoreDataSource alloc] initWithGameRecord:v6 leaderboard:v14];
    friendDataSource = v10->_friendDataSource;
    v10->_friendDataSource = v15;

    [(GKDashboardLeaderboardScoreDataSource *)v10->_friendDataSource setTimeScopeTarget:v10];
    [(GKDashboardLeaderboardScoreDataSource *)v10->_friendDataSource setTimeScopeAction:sel_timeScopePressed_];
    v17 = objc_alloc(MEMORY[0x277D0C0A0]);
    v18 = [v7 internal];
    v19 = [v17 initWithInternalRepresentation:v18];

    [v19 setPlayerScope:0];
    [v19 setTimeScope:v10->_timeScope];
    v20 = [[GKDashboardLeaderboardScoreDataSource alloc] initWithGameRecord:v6 leaderboard:v19];
    globalDataSource = v10->_globalDataSource;
    v10->_globalDataSource = v20;

    [(GKDashboardLeaderboardScoreDataSource *)v10->_globalDataSource setTimeScopeTarget:v10];
    [(GKDashboardLeaderboardScoreDataSource *)v10->_globalDataSource setTimeScopeAction:sel_timeScopePressed_];
    v22 = objc_alloc_init(GKCollectionMultiDataSource);
    v26[0] = v10->_friendDataSource;
    v26[1] = v10->_globalDataSource;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [(GKCollectionMultiDataSource *)v22 setDataSources:v23];

    [(GKDashboardCollectionViewController *)v10 setDataSource:v22];
    [(GKLoadingViewController *)v10 setLoadingIndicatorDelay:0.0];
  }

  return v10;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = GKDashboardLeaderboardScoreViewController;
  [(GKDashboardCollectionViewController *)&v15 viewDidLoad];
  v3 = [(UIViewController *)self _gkExtensionViewController];
  v4 = [(GKDashboardLeaderboardScoreViewController *)self leaderboard];
  v5 = [v4 identifier];
  [v3 dashboardDidChangeToLeaderboardIdentifier:v5];

  v6 = [(GKDashboardCollectionViewController *)self collectionView];
  v7 = [(GKDashboardLeaderboardScoreViewController *)self view];
  [v7 bounds];
  LODWORD(v5) = [(GKDashboardLeaderboardScoreViewController *)self shouldUseTwoColumnLayoutForSize:v8, v9];

  v10 = off_279666C78;
  if (!v5)
  {
    v10 = off_279666C88;
  }

  v11 = objc_alloc_init(*v10);
  [v11 setTopHeaderHeight:0.0];
  [v6 setCollectionViewLayout:v11];
  v12 = [(GKDashboardCollectionViewController *)self dataSource];
  [v12 setupCollectionView:v6];

  [v11 topHeaderHeight];
  if (v13 > 0.0)
  {
    v14 = +[GKDashboardLeaderboardScoreHeaderView];
    [v6 registerNib:v14 forSupplementaryViewOfKind:@"GKCollectionLayoutTopHeaderKind" withReuseIdentifier:@"topHeader"];
    [v6 setDataSource:self];
  }
}

- (void)dataUpdated:(BOOL)a3 withError:(id)a4
{
  v14.receiver = self;
  v14.super_class = GKDashboardLeaderboardScoreViewController;
  [(GKDashboardCollectionViewController *)&v14 dataUpdated:a3 withError:a4];
  v5 = [(GKDashboardLeaderboardScoreDataSource *)self->_friendDataSource itemCount];
  v6 = [MEMORY[0x277D0C1F8] reporter];
  v7 = *MEMORY[0x277D0BE28];
  [v6 reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA58]];

  v8 = [MEMORY[0x277D0C1F8] reporter];
  v9 = *MEMORY[0x277D0BA18];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  [v8 reportEvent:v7 type:v9 friendsPlayedThisGame:v10];

  v11 = [(GKDashboardLeaderboardScoreViewController *)self title];

  if (!v11)
  {
    v12 = [(GKDashboardLeaderboardScoreDataSource *)self->_globalDataSource leaderboard];
    v13 = [v12 title];
    [(GKDashboardLeaderboardScoreViewController *)self setTitle:v13];
  }
}

- (void)setupNoContentView:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __74__GKDashboardLeaderboardScoreViewController_setupNoContentView_withError___block_invoke;
  v19 = &unk_27966D090;
  objc_copyWeak(&v20, &location);
  [v6 setButtonAction:&v16];
  timeScope = self->_timeScope;
  if (timeScope < 2)
  {
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    [v6 setTitle:{v12, v16, v17, v18, v19}];

    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    [v6 setMessage:v14];

    v15 = [MEMORY[0x277D0C0A0] localizedStringForTimeScope:self->_timeScope];
    [v6 setButtonTitle:v15];
  }

  else if (timeScope == 2)
  {
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    [v6 setTitle:{v10, v16, v17, v18, v19}];

    [v6 setMessage:0];
    [v6 setButtonTitle:0];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __74__GKDashboardLeaderboardScoreViewController_setupNoContentView_withError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained timeScopePressed:v5];
  }
}

- (BOOL)shouldUseTwoColumnLayoutForSize:(CGSize)a3
{
  width = a3.width;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1 && width > 400.0)
  {
    return 1;
  }

  v8 = [(GKDashboardLeaderboardScoreViewController *)self traitCollection];
  v9 = [v8 verticalSizeClass] == 1;

  return v9;
}

- (void)updateColumnLayoutForSize:(CGSize)a3
{
  [(GKDashboardLeaderboardScoreViewController *)self shouldUseTwoColumnLayoutForSize:a3.width, a3.height];
  v4 = objc_opt_class();
  v5 = [(GKDashboardCollectionViewController *)self collectionView];
  v6 = [v5 collectionViewLayout];
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = objc_alloc_init(v4);
    [v9 setTopHeaderHeight:0.0];
    v8 = [(GKDashboardCollectionViewController *)self collectionView];
    [v8 setCollectionViewLayout:v9];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = GKDashboardLeaderboardScoreViewController;
  v7 = a4;
  [(GKDashboardLeaderboardScoreViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(GKDashboardLeaderboardScoreViewController *)self traitCollection];
  v9 = [v8 horizontalSizeClass];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__GKDashboardLeaderboardScoreViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_27966D880;
  v10[4] = self;
  v10[5] = v9;
  *&v10[6] = width;
  *&v10[7] = height;
  [v7 animateAlongsideTransition:v10 completion:0];
}

void __96__GKDashboardLeaderboardScoreViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v2 == v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    [v5 updateColumnLayoutForSize:{v6, v7}];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v6 = [(GKDashboardLeaderboardScoreViewController *)self view];
  [v6 frame];
  [(GKDashboardLeaderboardScoreViewController *)self updateColumnLayoutForSize:v4, v5];
}

- (void)timeScopePressed:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v6 = MEMORY[0x277D750F8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __62__GKDashboardLeaderboardScoreViewController_timeScopePressed___block_invoke;
  v38[3] = &unk_27966D8A8;
  v38[4] = self;
  v9 = [v6 _actionWithTitle:v8 image:0 style:0 handler:0 shouldDismissHandler:v38];
  [v5 addAction:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __62__GKDashboardLeaderboardScoreViewController_timeScopePressed___block_invoke_2;
  v37[3] = &unk_27966D8A8;
  v37[4] = self;
  v13 = [v10 _actionWithTitle:v12 image:0 style:0 handler:0 shouldDismissHandler:v37];
  [v5 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__GKDashboardLeaderboardScoreViewController_timeScopePressed___block_invoke_3;
  v36[3] = &unk_27966D8A8;
  v36[4] = self;
  v17 = [v14 _actionWithTitle:v16 image:0 style:0 handler:0 shouldDismissHandler:v36];
  [v5 addAction:v17];

  v18 = [v5 actions];
  v19 = [v18 objectAtIndexedSubscript:self->_timeScope];
  [v5 setPreferredAction:v19];

  v20 = [v5 preferredAction];
  [v20 _setChecked:1];

  v21 = [v4 superview];
  v22 = [v5 popoverPresentationController];
  [v22 setSourceView:v21];

  v23 = [(GKDashboardCollectionViewController *)self dataSource];
  v24 = [v23 itemCount];

  [v4 frame];
  x = v25;
  v28 = v27;
  width = v29;
  v32 = v31;
  if (v24 <= 0)
  {
    [v4 frame];
    v34 = v33 * 0.25;
    v39.origin.x = x;
    v39.origin.y = v28;
    v39.size.width = width;
    v39.size.height = v32;
    v40 = CGRectInset(v39, v34, 0.0);
    x = v40.origin.x;
    width = v40.size.width;
    v32 = v40.size.height * 0.5;
    v28 = v40.origin.y + 70.0;
  }

  v35 = [v5 popoverPresentationController];
  [v35 setSourceRect:{x, v28, width, v32}];

  [(GKDashboardLeaderboardScoreViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)setTimeScope:(int64_t)a3
{
  if (self->_timeScope != a3)
  {
    self->_timeScope = a3;
    [(GKDashboardLeaderboardScoreHeaderView *)self->_headerView setTimeScope:?];
    [(GKDashboardLeaderboardScoreDataSource *)self->_friendDataSource setTimeScope:a3];
    [(GKDashboardLeaderboardScoreDataSource *)self->_globalDataSource setTimeScope:a3];
    [objc_opt_class() setInitialTimeScope:a3];
    v6 = [(UIViewController *)self _gkExtensionViewController];
    [v6 dashboardDidChangeToLeaderboardTimeScope:a3];

    [(GKDashboardCollectionViewController *)self setNeedsRefresh];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v9 isEqualToString:@"GKCollectionLayoutTopHeaderKind"])
  {
    v11 = [v10 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"topHeader" forIndexPath:v8];

    [v11 setTimeScope:self->_timeScope];
    v12 = [(GKLeaderboard *)self->_leaderboard title];
    [v11 setTitle:v12];

    [v11 setTimeScopeTarget:self];
    [v11 setTimeScopeAction:sel_timeScopePressed_];
    [(GKDashboardLeaderboardScoreViewController *)self setHeaderView:v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = GKDashboardLeaderboardScoreViewController;
    v11 = [(GKDashboardCollectionViewController *)&v14 collectionView:v10 viewForSupplementaryElementOfKind:v9 atIndexPath:v8];
  }

  return v11;
}

@end