@interface GKDashboardLeaderboardScoreViewController
- (BOOL)shouldUseTwoColumnLayoutForSize:(CGSize)size;
- (GKDashboardLeaderboardScoreViewController)initWithGameRecord:(id)record leaderboard:(id)leaderboard;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)dataUpdated:(BOOL)updated withError:(id)error;
- (void)setTimeScope:(int64_t)scope;
- (void)setupNoContentView:(id)view withError:(id)error;
- (void)timeScopePressed:(id)pressed;
- (void)traitCollectionDidChange:(id)change;
- (void)updateColumnLayoutForSize:(CGSize)size;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation GKDashboardLeaderboardScoreViewController

- (GKDashboardLeaderboardScoreViewController)initWithGameRecord:(id)record leaderboard:(id)leaderboard
{
  v26[2] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  leaderboardCopy = leaderboard;
  _gkPlatformNibName = [objc_opt_class() _gkPlatformNibName];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25.receiver = self;
  v25.super_class = GKDashboardLeaderboardScoreViewController;
  v10 = [(GKDashboardCollectionViewController *)&v25 initWithNibName:_gkPlatformNibName bundle:v9];

  if (v10)
  {
    [(GKDashboardLeaderboardScoreViewController *)v10 setLeaderboard:leaderboardCopy];
    title = [leaderboardCopy title];
    [(GKDashboardLeaderboardScoreViewController *)v10 setTitle:title];

    v10->_timeScope = sInitialTimeScope_0;
    v12 = objc_alloc(MEMORY[0x277D0C0A0]);
    internal = [leaderboardCopy internal];
    v14 = [v12 initWithInternalRepresentation:internal];

    [v14 setPlayerScope:1];
    [v14 setTimeScope:v10->_timeScope];
    v15 = [[GKDashboardLeaderboardScoreDataSource alloc] initWithGameRecord:recordCopy leaderboard:v14];
    friendDataSource = v10->_friendDataSource;
    v10->_friendDataSource = v15;

    [(GKDashboardLeaderboardScoreDataSource *)v10->_friendDataSource setTimeScopeTarget:v10];
    [(GKDashboardLeaderboardScoreDataSource *)v10->_friendDataSource setTimeScopeAction:sel_timeScopePressed_];
    v17 = objc_alloc(MEMORY[0x277D0C0A0]);
    internal2 = [leaderboardCopy internal];
    v19 = [v17 initWithInternalRepresentation:internal2];

    [v19 setPlayerScope:0];
    [v19 setTimeScope:v10->_timeScope];
    v20 = [[GKDashboardLeaderboardScoreDataSource alloc] initWithGameRecord:recordCopy leaderboard:v19];
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
  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  leaderboard = [(GKDashboardLeaderboardScoreViewController *)self leaderboard];
  identifier = [leaderboard identifier];
  [_gkExtensionViewController dashboardDidChangeToLeaderboardIdentifier:identifier];

  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  view = [(GKDashboardLeaderboardScoreViewController *)self view];
  [view bounds];
  LODWORD(identifier) = [(GKDashboardLeaderboardScoreViewController *)self shouldUseTwoColumnLayoutForSize:v8, v9];

  v10 = off_279666C78;
  if (!identifier)
  {
    v10 = off_279666C88;
  }

  v11 = objc_alloc_init(*v10);
  [v11 setTopHeaderHeight:0.0];
  [collectionView setCollectionViewLayout:v11];
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  [dataSource setupCollectionView:collectionView];

  [v11 topHeaderHeight];
  if (v13 > 0.0)
  {
    v14 = +[GKDashboardLeaderboardScoreHeaderView];
    [collectionView registerNib:v14 forSupplementaryViewOfKind:@"GKCollectionLayoutTopHeaderKind" withReuseIdentifier:@"topHeader"];
    [collectionView setDataSource:self];
  }
}

- (void)dataUpdated:(BOOL)updated withError:(id)error
{
  v14.receiver = self;
  v14.super_class = GKDashboardLeaderboardScoreViewController;
  [(GKDashboardCollectionViewController *)&v14 dataUpdated:updated withError:error];
  itemCount = [(GKDashboardLeaderboardScoreDataSource *)self->_friendDataSource itemCount];
  reporter = [MEMORY[0x277D0C1F8] reporter];
  v7 = *MEMORY[0x277D0BE28];
  [reporter reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA58]];

  reporter2 = [MEMORY[0x277D0C1F8] reporter];
  v9 = *MEMORY[0x277D0BA18];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:itemCount];
  [reporter2 reportEvent:v7 type:v9 friendsPlayedThisGame:v10];

  title = [(GKDashboardLeaderboardScoreViewController *)self title];

  if (!title)
  {
    leaderboard = [(GKDashboardLeaderboardScoreDataSource *)self->_globalDataSource leaderboard];
    title2 = [leaderboard title];
    [(GKDashboardLeaderboardScoreViewController *)self setTitle:title2];
  }
}

- (void)setupNoContentView:(id)view withError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __74__GKDashboardLeaderboardScoreViewController_setupNoContentView_withError___block_invoke;
  v19 = &unk_27966D090;
  objc_copyWeak(&v20, &location);
  [viewCopy setButtonAction:&v16];
  timeScope = self->_timeScope;
  if (timeScope < 2)
  {
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setTitle:{v12, v16, v17, v18, v19}];

    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setMessage:v14];

    v15 = [MEMORY[0x277D0C0A0] localizedStringForTimeScope:self->_timeScope];
    [viewCopy setButtonTitle:v15];
  }

  else if (timeScope == 2)
  {
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setTitle:{v10, v16, v17, v18, v19}];

    [viewCopy setMessage:0];
    [viewCopy setButtonTitle:0];
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

- (BOOL)shouldUseTwoColumnLayoutForSize:(CGSize)size
{
  width = size.width;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && width > 400.0)
  {
    return 1;
  }

  traitCollection = [(GKDashboardLeaderboardScoreViewController *)self traitCollection];
  v9 = [traitCollection verticalSizeClass] == 1;

  return v9;
}

- (void)updateColumnLayoutForSize:(CGSize)size
{
  [(GKDashboardLeaderboardScoreViewController *)self shouldUseTwoColumnLayoutForSize:size.width, size.height];
  v4 = objc_opt_class();
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = objc_alloc_init(v4);
    [v9 setTopHeaderHeight:0.0];
    collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
    [collectionView2 setCollectionViewLayout:v9];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = GKDashboardLeaderboardScoreViewController;
  coordinatorCopy = coordinator;
  [(GKDashboardLeaderboardScoreViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  traitCollection = [(GKDashboardLeaderboardScoreViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__GKDashboardLeaderboardScoreViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_27966D880;
  v10[4] = self;
  v10[5] = horizontalSizeClass;
  *&v10[6] = width;
  *&v10[7] = height;
  [coordinatorCopy animateAlongsideTransition:v10 completion:0];
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

- (void)traitCollectionDidChange:(id)change
{
  view = [(GKDashboardLeaderboardScoreViewController *)self view];
  [view frame];
  [(GKDashboardLeaderboardScoreViewController *)self updateColumnLayoutForSize:v4, v5];
}

- (void)timeScopePressed:(id)pressed
{
  pressedCopy = pressed;
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

  actions = [v5 actions];
  v19 = [actions objectAtIndexedSubscript:self->_timeScope];
  [v5 setPreferredAction:v19];

  preferredAction = [v5 preferredAction];
  [preferredAction _setChecked:1];

  superview = [pressedCopy superview];
  popoverPresentationController = [v5 popoverPresentationController];
  [popoverPresentationController setSourceView:superview];

  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  itemCount = [dataSource itemCount];

  [pressedCopy frame];
  x = v25;
  v28 = v27;
  width = v29;
  v32 = v31;
  if (itemCount <= 0)
  {
    [pressedCopy frame];
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

  popoverPresentationController2 = [v5 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{x, v28, width, v32}];

  [(GKDashboardLeaderboardScoreViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)setTimeScope:(int64_t)scope
{
  if (self->_timeScope != scope)
  {
    self->_timeScope = scope;
    [(GKDashboardLeaderboardScoreHeaderView *)self->_headerView setTimeScope:?];
    [(GKDashboardLeaderboardScoreDataSource *)self->_friendDataSource setTimeScope:scope];
    [(GKDashboardLeaderboardScoreDataSource *)self->_globalDataSource setTimeScope:scope];
    [objc_opt_class() setInitialTimeScope:scope];
    _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
    [_gkExtensionViewController dashboardDidChangeToLeaderboardTimeScope:scope];

    [(GKDashboardCollectionViewController *)self setNeedsRefresh];
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  viewCopy = view;
  if ([kindCopy isEqualToString:@"GKCollectionLayoutTopHeaderKind"])
  {
    v11 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"topHeader" forIndexPath:pathCopy];

    [v11 setTimeScope:self->_timeScope];
    title = [(GKLeaderboard *)self->_leaderboard title];
    [v11 setTitle:title];

    [v11 setTimeScopeTarget:self];
    [v11 setTimeScopeAction:sel_timeScopePressed_];
    [(GKDashboardLeaderboardScoreViewController *)self setHeaderView:v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = GKDashboardLeaderboardScoreViewController;
    v11 = [(GKDashboardCollectionViewController *)&v14 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  }

  return v11;
}

@end