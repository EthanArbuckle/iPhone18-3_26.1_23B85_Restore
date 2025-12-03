@interface GKLeaderboardListViewController
- (BOOL)hasData;
- (BOOL)isLoading;
- (GKLeaderboardListViewController)initWithGameRecord:(id)record leaderboardSet:(id)set;
- (id)title;
- (int64_t)preferredLargeTitleDisplayMode;
- (void)clearSelection;
- (void)configureCloseButton;
- (void)dataUpdated:(BOOL)updated withError:(id)error;
- (void)dealloc;
- (void)didEnterLoadingState;
- (void)donePressed:(id)pressed;
- (void)hideNoContentPlaceholder;
- (void)loadData;
- (void)setHorizontalLayout:(BOOL)layout;
- (void)setLeaderboardAssetNames:(id)names;
- (void)setLeaderboardSetAssetNames:(id)names;
- (void)setNeedsRefresh;
- (void)setupNoContentView:(id)view withError:(id)error;
- (void)setupVisualEffect;
- (void)showNoContentPlaceholderForError:(id)error;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLargeTitleInsets;
- (void)updateLayout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation GKLeaderboardListViewController

- (GKLeaderboardListViewController)initWithGameRecord:(id)record leaderboardSet:(id)set
{
  recordCopy = record;
  setCopy = set;
  _gkPlatformNibName = [objc_opt_class() _gkPlatformNibName];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16.receiver = self;
  v16.super_class = GKLeaderboardListViewController;
  v10 = [(GKLoadingViewController *)&v16 initWithNibName:_gkPlatformNibName bundle:v9];

  if (v10)
  {
    if (setCopy || ![recordCopy supportsLeaderboardSets])
    {
      [(GKLeaderboardListViewController *)v10 setShowingLeaderboardSets:0];
      v11 = [[GKLeaderboardListDataSource alloc] initWithGameRecord:recordCopy leaderboardSet:setCopy];
    }

    else
    {
      [(GKLeaderboardListViewController *)v10 setShowingLeaderboardSets:1];
      v11 = [(GKGameLayerCollectionDataSource *)[GKLeaderboardSetDataSource alloc] initWithGameRecord:recordCopy];
    }

    v12 = v11;
    [(GKLeaderboardListViewController *)v10 setDataSource:v11];

    title = [(GKLeaderboardListViewController *)v10 title];
    navigationItem = [(GKLeaderboardListViewController *)v10 navigationItem];
    [navigationItem setTitle:title];
  }

  return v10;
}

- (id)title
{
  [(GKLeaderboardListViewController *)self showingLeaderboardSets];
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  return v3;
}

- (void)setLeaderboardAssetNames:(id)names
{
  namesCopy = names;
  objc_storeStrong(&self->_leaderboardAssetNames, names);
  dataSource = [(GKLeaderboardListViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  dataSource2 = [(GKLeaderboardListViewController *)self dataSource];
  dataSource3 = dataSource2;
  if (isKindOfClass)
  {
    [dataSource2 setLeaderboardAssetNames:namesCopy];
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    dataSource3 = [(GKLeaderboardListViewController *)self dataSource];
    [dataSource3 setAssetNames:namesCopy];
  }

LABEL_6:
}

- (void)setLeaderboardSetAssetNames:(id)names
{
  namesCopy = names;
  objc_storeStrong(&self->_leaderboardSetAssetNames, names);
  dataSource = [(GKLeaderboardListViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dataSource2 = [(GKLeaderboardListViewController *)self dataSource];
    [dataSource2 setLeaderboardSetAssetNames:namesCopy];
  }
}

- (void)donePressed:(id)pressed
{
  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  [_gkExtensionViewController finish];
}

- (void)viewDidLoad
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v19 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView setBackgroundColor:clearColor];

  [(GKLeaderboardListViewController *)self setupVisualEffect];
  v5 = objc_alloc_init(GKLeaderboardCollectionViewFlowLayout);
  collectionView2 = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView2 setCollectionViewLayout:v5];

  [(GKLeaderboardListViewController *)self updateLayout];
  collectionView3 = [(GKLeaderboardListViewController *)self collectionView];

  if (collectionView3)
  {
    collectionView4 = [(GKLeaderboardListViewController *)self collectionView];
    v20[0] = collectionView4;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(GKLoadingViewController *)self setViewsToHideWhileLoading:v9];
  }

  dataSource = [(GKLeaderboardListViewController *)self dataSource];
  collectionView5 = [(GKLeaderboardListViewController *)self collectionView];
  [dataSource setupCollectionView:collectionView5];

  dataSource2 = [(GKLeaderboardListViewController *)self dataSource];
  [dataSource2 setPresentationViewController:self];

  navigationItem = [(GKLeaderboardListViewController *)self navigationItem];
  [navigationItem _setAutoScrollEdgeTransitionDistance:40.0];

  navigationItem2 = [(GKLeaderboardListViewController *)self navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  preferredLargeTitleDisplayMode = [(GKLeaderboardListViewController *)self preferredLargeTitleDisplayMode];
  navigationItem3 = [(GKLeaderboardListViewController *)self navigationItem];
  [navigationItem3 setLargeTitleDisplayMode:preferredLargeTitleDisplayMode];

  [(GKLeaderboardListViewController *)self configureCloseButton];
  collectionView6 = [(GKLeaderboardListViewController *)self collectionView];
  layer = [collectionView6 layer];
  [layer setOpacity:0.0];
}

- (void)dealloc
{
  collectionView = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView setDataSource:0];

  collectionView2 = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView2 setDelegate:0];

  v5.receiver = self;
  v5.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v5 dealloc];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v4 viewIsAppearing:appearing];
  [(GKLeaderboardListViewController *)self updateLargeTitleInsets];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v5 viewWillAppear:appear];
  loadingState = [(GKLoadingViewController *)self loadingState];
  if (loadingState == @"Initial")
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadingState"];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v3 viewDidLayoutSubviews];
  [(GKLeaderboardListViewController *)self updateLargeTitleInsets];
}

- (void)setupVisualEffect
{
  v7 = objc_opt_new();
  _gkGameLayerBackgroundVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v7 setBackgroundEffects:_gkGameLayerBackgroundVisualEffect];

  [v7 _setGroupName:@"gameLayerGroup"];
  view = [(GKLeaderboardListViewController *)self view];
  [view insertSubview:v7 atIndex:0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277CCAAD0];
  view2 = [(GKLeaderboardListViewController *)self view];
  [v5 _gkInstallEdgeConstraintsForView:v7 containedWithinParentView:view2];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v7 viewDidAppear:appear];
  [(GKLeaderboardListViewController *)self clearSelection];
  [(GKLeaderboardListViewController *)self setNeedsFocusUpdate];
  showingLeaderboardSets = [(GKLeaderboardListViewController *)self showingLeaderboardSets];
  v5 = @"leaderboardGroups";
  if (showingLeaderboardSets)
  {
    v5 = @"leaderboardCollection";
  }

  v6 = v5;
  [_TtC12GameCenterUI15GKMetricsBridge recordLeaderboardPageEventWithPageId:v6 withReferrerData:[(GKLeaderboardListViewController *)self isDeeplinked]];
}

- (void)updateLayout
{
  traitCollection = [(GKLeaderboardListViewController *)self traitCollection];
  category = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(category))
  {
    v4 = 0;
  }

  else
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    if ([currentTraitCollection verticalSizeClass] == 1)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v4 = userInterfaceIdiom != 1;
    }

    else
    {
      v4 = 0;
    }
  }

  [(GKLeaderboardListViewController *)self setHorizontalLayout:v4];
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
  navigationController = [(GKLeaderboardListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  navigationItem = [(GKLeaderboardListViewController *)self navigationItem];
  largeTitleDisplayMode = [navigationItem largeTitleDisplayMode];

  if (largeTitleDisplayMode != 2 && navigationBar)
  {
    v6 = [GameLayerPageGrid alloc];
    view = [(GKLeaderboardListViewController *)self view];
    [view bounds];
    v9 = v8;
    v11 = v10;
    traitCollection = [(GKLeaderboardListViewController *)self traitCollection];
    v13 = [(GameLayerPageGrid *)v6 initWithSize:traitCollection traitCollection:v9, v11];

    [(GameLayerPageGrid *)v13 centeringInsets];
    v15 = v14;
    [(GameLayerPageGrid *)v13 centeringInsets];
    v17 = v16;
    navigationItem2 = [(GKLeaderboardListViewController *)self navigationItem];
    [navigationItem2 setLargeTitleInsets:{0.0, v15, 0.0, v17}];

    [navigationBar setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = GKLeaderboardListViewController;
  changeCopy = change;
  [(GKLeaderboardListViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(GKLeaderboardListViewController *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];

  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory2 != preferredContentSizeCategory)
  {
    [(GKLeaderboardListViewController *)self updateLayout];
    collectionView = [(GKLeaderboardListViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (BOOL)isLoading
{
  loadingState = [(GKLoadingViewController *)self loadingState];
  v3 = 1;
  if (loadingState)
  {
    if (loadingState != @"Initial" && loadingState != @"LoadingState")
    {
      v3 = loadingState == @"RefreshingState";
    }
  }

  return v3;
}

- (void)didEnterLoadingState
{
  v3.receiver = self;
  v3.super_class = GKLeaderboardListViewController;
  [(GKLoadingViewController *)&v3 didEnterLoadingState];
  [(GKLeaderboardListViewController *)self loadData];
}

- (void)loadData
{
  dataSource = [(GKLeaderboardListViewController *)self dataSource];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__GKLeaderboardListViewController_loadData__block_invoke;
  v4[3] = &unk_27966B138;
  v4[4] = self;
  [dataSource loadDataWithCompletionHandler:v4];
}

void __43__GKLeaderboardListViewController_loadData__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) dataUpdated:a2 withError:a3];
  [MEMORY[0x277CD9FF0] begin];
  v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v4 setRemovedOnCompletion:0];
  [v4 setFromValue:&unk_286189240];
  [v4 setToValue:&unk_286189258];
  [v4 setDuration:0.33];
  [v4 setRepeatCount:0.0];
  [v4 setAutoreverses:0];
  [v4 setFillMode:*MEMORY[0x277CDA230]];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__GKLeaderboardListViewController_loadData__block_invoke_81;
  v7[3] = &unk_2796699A8;
  v7[4] = *(a1 + 32);
  [MEMORY[0x277CD9FF0] setCompletionBlock:v7];
  v5 = [*(a1 + 32) collectionView];
  v6 = [v5 layer];
  [v6 addAnimation:v4 forKey:@"opacity"];

  [MEMORY[0x277CD9FF0] commit];
}

void __43__GKLeaderboardListViewController_loadData__block_invoke_81(uint64_t a1)
{
  v3 = [*(a1 + 32) collectionView];
  v1 = [v3 layer];
  LODWORD(v2) = 1.0;
  [v1 setOpacity:v2];
}

- (BOOL)hasData
{
  dataSource = [(GKLeaderboardListViewController *)self dataSource];
  v3 = [dataSource itemCount] > 0;

  return v3;
}

- (void)dataUpdated:(BOOL)updated withError:(id)error
{
  updatedCopy = updated;
  errorCopy = error;
  if (![(GKLeaderboardListViewController *)self hasData])
  {
    [(GKLoadingViewController *)self setLoadingState:@"NoContentState"];
    [(GKLeaderboardListViewController *)self showNoContentPlaceholderForError:errorCopy];
    if (!updatedCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(GKLoadingViewController *)self setLoadingState:@"LoadedState"];
  [(GKLeaderboardListViewController *)self hideNoContentPlaceholder];
  if (updatedCopy)
  {
LABEL_5:
    collectionView = [(GKLeaderboardListViewController *)self collectionView];
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [collectionView reloadSections:v7];

    [(GKLeaderboardListViewController *)self setNeedsFocusUpdate];
    navigationController = [(GKLeaderboardListViewController *)self navigationController];
    [navigationController setNeedsFocusUpdate];
  }

LABEL_6:
}

- (void)showNoContentPlaceholderForError:(id)error
{
  v22[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_collectionView)
  {
    collectionView = [(GKLeaderboardListViewController *)self collectionView];
    [collectionView setHidden:1];

    noContentView = [(GKLeaderboardListViewController *)self noContentView];

    if (!noContentView)
    {
      v7 = [GKNoContentView alloc];
      [(UICollectionView *)self->_collectionView bounds];
      v8 = [(GKNoContentView *)v7 initWithFrame:?];
      [(GKLeaderboardListViewController *)self setNoContentView:v8];

      noContentView2 = [(GKLeaderboardListViewController *)self noContentView];
      [noContentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      collectionView2 = [(GKLeaderboardListViewController *)self collectionView];
      superview = [collectionView2 superview];

      noContentView3 = [(GKLeaderboardListViewController *)self noContentView];
      collectionView3 = [(GKLeaderboardListViewController *)self collectionView];
      [superview insertSubview:noContentView3 aboveSubview:collectionView3];

      v14 = MEMORY[0x277CCAAD0];
      noContentView4 = [(GKLeaderboardListViewController *)self noContentView];
      collectionView4 = [(GKLeaderboardListViewController *)self collectionView];
      v17 = [v14 _gkConstraintsForView:noContentView4 withinView:collectionView4 insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      [superview addConstraints:v17];

      collectionView5 = [(GKLeaderboardListViewController *)self collectionView];
      v22[0] = collectionView5;
      noContentView5 = [(GKLeaderboardListViewController *)self noContentView];
      v22[1] = noContentView5;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      [(GKLoadingViewController *)self setViewsToHideWhileLoading:v20];
    }

    [(GKLeaderboardListViewController *)self setupNoContentView:self->_noContentView withError:errorCopy];
    noContentView6 = [(GKLeaderboardListViewController *)self noContentView];
    [noContentView6 setHidden:0];
  }
}

- (void)hideNoContentPlaceholder
{
  noContentView = [(GKLeaderboardListViewController *)self noContentView];
  [noContentView setHidden:1];

  collectionView = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView setHidden:0];
}

- (void)setupNoContentView:(id)view withError:(id)error
{
  viewCopy = view;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [viewCopy setTitle:v6];

  if (error)
  {
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setMessage:v8];
  }

  else
  {
    [viewCopy setMessage:0];
  }
}

- (void)setNeedsRefresh
{
  if (![(GKLeaderboardListViewController *)self isLoading])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__GKLeaderboardListViewController_setNeedsRefresh__block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __50__GKLeaderboardListViewController_setNeedsRefresh__block_invoke()
{
  gk_dispatch_debounce();
  v0 = dispatch_time(0, 1000000000);
  dispatch_after(v0, MEMORY[0x277D85CD0], &__block_literal_global_37);
}

uint64_t __50__GKLeaderboardListViewController_setNeedsRefresh__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isLoading];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setLoadingState:@"RefreshingState"];
  }

  return result;
}

- (void)configureCloseButton
{
  v5 = [MEMORY[0x277D75220] _gkXmarkedCloseButtonWithTarget:self action:sel_donePressed_];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(GKLeaderboardListViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];
}

- (void)setHorizontalLayout:(BOOL)layout
{
  layoutCopy = layout;
  collectionView = [(GKLeaderboardListViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  [collectionViewLayout setScrollDirection:layoutCopy];
  collectionView2 = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView2 setAlwaysBounceVertical:layoutCopy ^ 1];

  collectionView3 = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView3 setAlwaysBounceHorizontal:layoutCopy];

  collectionView4 = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView4 setShowsVerticalScrollIndicator:layoutCopy ^ 1];

  collectionView5 = [(GKLeaderboardListViewController *)self collectionView];
  [collectionView5 setShowsHorizontalScrollIndicator:layoutCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = GKLeaderboardListViewController;
  coordinatorCopy = coordinator;
  [(GKLeaderboardListViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__GKLeaderboardListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27966A690;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&__block_literal_global_100];
}

void __86__GKLeaderboardListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateLayout];
  v3 = [*(a1 + 32) collectionView];
  v2 = [v3 collectionViewLayout];
  [v2 invalidateLayout];
}

- (void)clearSelection
{
  v17 = *MEMORY[0x277D85DE8];
  collectionView = [(GKLeaderboardListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = indexPathsForSelectedItems;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        collectionView2 = [(GKLeaderboardListViewController *)self collectionView];
        [collectionView2 deselectItemAtIndexPath:v10 animated:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end