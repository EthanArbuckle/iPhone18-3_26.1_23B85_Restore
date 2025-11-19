@interface GKLeaderboardListViewController
- (BOOL)hasData;
- (BOOL)isLoading;
- (GKLeaderboardListViewController)initWithGameRecord:(id)a3 leaderboardSet:(id)a4;
- (id)title;
- (int64_t)preferredLargeTitleDisplayMode;
- (void)clearSelection;
- (void)configureCloseButton;
- (void)dataUpdated:(BOOL)a3 withError:(id)a4;
- (void)dealloc;
- (void)didEnterLoadingState;
- (void)donePressed:(id)a3;
- (void)hideNoContentPlaceholder;
- (void)loadData;
- (void)setHorizontalLayout:(BOOL)a3;
- (void)setLeaderboardAssetNames:(id)a3;
- (void)setLeaderboardSetAssetNames:(id)a3;
- (void)setNeedsRefresh;
- (void)setupNoContentView:(id)a3 withError:(id)a4;
- (void)setupVisualEffect;
- (void)showNoContentPlaceholderForError:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLargeTitleInsets;
- (void)updateLayout;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GKLeaderboardListViewController

- (GKLeaderboardListViewController)initWithGameRecord:(id)a3 leaderboardSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _gkPlatformNibName];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16.receiver = self;
  v16.super_class = GKLeaderboardListViewController;
  v10 = [(GKLoadingViewController *)&v16 initWithNibName:v8 bundle:v9];

  if (v10)
  {
    if (v7 || ![v6 supportsLeaderboardSets])
    {
      [(GKLeaderboardListViewController *)v10 setShowingLeaderboardSets:0];
      v11 = [[GKLeaderboardListDataSource alloc] initWithGameRecord:v6 leaderboardSet:v7];
    }

    else
    {
      [(GKLeaderboardListViewController *)v10 setShowingLeaderboardSets:1];
      v11 = [(GKGameLayerCollectionDataSource *)[GKLeaderboardSetDataSource alloc] initWithGameRecord:v6];
    }

    v12 = v11;
    [(GKLeaderboardListViewController *)v10 setDataSource:v11];

    v13 = [(GKLeaderboardListViewController *)v10 title];
    v14 = [(GKLeaderboardListViewController *)v10 navigationItem];
    [v14 setTitle:v13];
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

- (void)setLeaderboardAssetNames:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_leaderboardAssetNames, a3);
  v5 = [(GKLeaderboardListViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(GKLeaderboardListViewController *)self dataSource];
  v8 = v7;
  if (isKindOfClass)
  {
    [v7 setLeaderboardAssetNames:v10];
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = [(GKLeaderboardListViewController *)self dataSource];
    [v8 setAssetNames:v10];
  }

LABEL_6:
}

- (void)setLeaderboardSetAssetNames:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_leaderboardSetAssetNames, a3);
  v5 = [(GKLeaderboardListViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(GKLeaderboardListViewController *)self dataSource];
    [v7 setLeaderboardSetAssetNames:v8];
  }
}

- (void)donePressed:(id)a3
{
  v3 = [(UIViewController *)self _gkExtensionViewController];
  [v3 finish];
}

- (void)viewDidLoad
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v19 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(GKLeaderboardListViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  [(GKLeaderboardListViewController *)self setupVisualEffect];
  v5 = objc_alloc_init(GKLeaderboardCollectionViewFlowLayout);
  v6 = [(GKLeaderboardListViewController *)self collectionView];
  [v6 setCollectionViewLayout:v5];

  [(GKLeaderboardListViewController *)self updateLayout];
  v7 = [(GKLeaderboardListViewController *)self collectionView];

  if (v7)
  {
    v8 = [(GKLeaderboardListViewController *)self collectionView];
    v20[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(GKLoadingViewController *)self setViewsToHideWhileLoading:v9];
  }

  v10 = [(GKLeaderboardListViewController *)self dataSource];
  v11 = [(GKLeaderboardListViewController *)self collectionView];
  [v10 setupCollectionView:v11];

  v12 = [(GKLeaderboardListViewController *)self dataSource];
  [v12 setPresentationViewController:self];

  v13 = [(GKLeaderboardListViewController *)self navigationItem];
  [v13 _setAutoScrollEdgeTransitionDistance:40.0];

  v14 = [(GKLeaderboardListViewController *)self navigationItem];
  [v14 _setManualScrollEdgeAppearanceEnabled:1];

  v15 = [(GKLeaderboardListViewController *)self preferredLargeTitleDisplayMode];
  v16 = [(GKLeaderboardListViewController *)self navigationItem];
  [v16 setLargeTitleDisplayMode:v15];

  [(GKLeaderboardListViewController *)self configureCloseButton];
  v17 = [(GKLeaderboardListViewController *)self collectionView];
  v18 = [v17 layer];
  [v18 setOpacity:0.0];
}

- (void)dealloc
{
  v3 = [(GKLeaderboardListViewController *)self collectionView];
  [v3 setDataSource:0];

  v4 = [(GKLeaderboardListViewController *)self collectionView];
  [v4 setDelegate:0];

  v5.receiver = self;
  v5.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v5 dealloc];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v4 viewIsAppearing:a3];
  [(GKLeaderboardListViewController *)self updateLargeTitleInsets];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v5 viewWillAppear:a3];
  v4 = [(GKLoadingViewController *)self loadingState];
  if (v4 == @"Initial")
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadingState"];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v3 viewWillDisappear:a3];
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
  v3 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v7 setBackgroundEffects:v3];

  [v7 _setGroupName:@"gameLayerGroup"];
  v4 = [(GKLeaderboardListViewController *)self view];
  [v4 insertSubview:v7 atIndex:0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(GKLeaderboardListViewController *)self view];
  [v5 _gkInstallEdgeConstraintsForView:v7 containedWithinParentView:v6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKLeaderboardListViewController;
  [(GKLeaderboardListViewController *)&v7 viewDidAppear:a3];
  [(GKLeaderboardListViewController *)self clearSelection];
  [(GKLeaderboardListViewController *)self setNeedsFocusUpdate];
  v4 = [(GKLeaderboardListViewController *)self showingLeaderboardSets];
  v5 = @"leaderboardGroups";
  if (v4)
  {
    v5 = @"leaderboardCollection";
  }

  v6 = v5;
  [_TtC12GameCenterUI15GKMetricsBridge recordLeaderboardPageEventWithPageId:v6 withReferrerData:[(GKLeaderboardListViewController *)self isDeeplinked]];
}

- (void)updateLayout
{
  v3 = [(GKLeaderboardListViewController *)self traitCollection];
  category = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(category))
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D75C80] currentTraitCollection];
    if ([v5 verticalSizeClass] == 1)
    {
      v6 = [MEMORY[0x277D75418] currentDevice];
      v7 = [v6 userInterfaceIdiom];

      v4 = v7 != 1;
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
  v3 = [(GKLeaderboardListViewController *)self navigationController];
  v19 = [v3 navigationBar];

  v4 = [(GKLeaderboardListViewController *)self navigationItem];
  v5 = [v4 largeTitleDisplayMode];

  if (v5 != 2 && v19)
  {
    v6 = [GameLayerPageGrid alloc];
    v7 = [(GKLeaderboardListViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v12 = [(GKLeaderboardListViewController *)self traitCollection];
    v13 = [(GameLayerPageGrid *)v6 initWithSize:v12 traitCollection:v9, v11];

    [(GameLayerPageGrid *)v13 centeringInsets];
    v15 = v14;
    [(GameLayerPageGrid *)v13 centeringInsets];
    v17 = v16;
    v18 = [(GKLeaderboardListViewController *)self navigationItem];
    [v18 setLargeTitleInsets:{0.0, v15, 0.0, v17}];

    [v19 setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = GKLeaderboardListViewController;
  v4 = a3;
  [(GKLeaderboardListViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(GKLeaderboardListViewController *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [v4 preferredContentSizeCategory];

  if (v7 != v6)
  {
    [(GKLeaderboardListViewController *)self updateLayout];
    v8 = [(GKLeaderboardListViewController *)self collectionView];
    [v8 reloadData];
  }
}

- (BOOL)isLoading
{
  v2 = [(GKLoadingViewController *)self loadingState];
  v3 = 1;
  if (v2)
  {
    if (v2 != @"Initial" && v2 != @"LoadingState")
    {
      v3 = v2 == @"RefreshingState";
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
  v3 = [(GKLeaderboardListViewController *)self dataSource];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__GKLeaderboardListViewController_loadData__block_invoke;
  v4[3] = &unk_27966B138;
  v4[4] = self;
  [v3 loadDataWithCompletionHandler:v4];
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
  v2 = [(GKLeaderboardListViewController *)self dataSource];
  v3 = [v2 itemCount] > 0;

  return v3;
}

- (void)dataUpdated:(BOOL)a3 withError:(id)a4
{
  v4 = a3;
  v9 = a4;
  if (![(GKLeaderboardListViewController *)self hasData])
  {
    [(GKLoadingViewController *)self setLoadingState:@"NoContentState"];
    [(GKLeaderboardListViewController *)self showNoContentPlaceholderForError:v9];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(GKLoadingViewController *)self setLoadingState:@"LoadedState"];
  [(GKLeaderboardListViewController *)self hideNoContentPlaceholder];
  if (v4)
  {
LABEL_5:
    v6 = [(GKLeaderboardListViewController *)self collectionView];
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [v6 reloadSections:v7];

    [(GKLeaderboardListViewController *)self setNeedsFocusUpdate];
    v8 = [(GKLeaderboardListViewController *)self navigationController];
    [v8 setNeedsFocusUpdate];
  }

LABEL_6:
}

- (void)showNoContentPlaceholderForError:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_collectionView)
  {
    v5 = [(GKLeaderboardListViewController *)self collectionView];
    [v5 setHidden:1];

    v6 = [(GKLeaderboardListViewController *)self noContentView];

    if (!v6)
    {
      v7 = [GKNoContentView alloc];
      [(UICollectionView *)self->_collectionView bounds];
      v8 = [(GKNoContentView *)v7 initWithFrame:?];
      [(GKLeaderboardListViewController *)self setNoContentView:v8];

      v9 = [(GKLeaderboardListViewController *)self noContentView];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v10 = [(GKLeaderboardListViewController *)self collectionView];
      v11 = [v10 superview];

      v12 = [(GKLeaderboardListViewController *)self noContentView];
      v13 = [(GKLeaderboardListViewController *)self collectionView];
      [v11 insertSubview:v12 aboveSubview:v13];

      v14 = MEMORY[0x277CCAAD0];
      v15 = [(GKLeaderboardListViewController *)self noContentView];
      v16 = [(GKLeaderboardListViewController *)self collectionView];
      v17 = [v14 _gkConstraintsForView:v15 withinView:v16 insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      [v11 addConstraints:v17];

      v18 = [(GKLeaderboardListViewController *)self collectionView];
      v22[0] = v18;
      v19 = [(GKLeaderboardListViewController *)self noContentView];
      v22[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      [(GKLoadingViewController *)self setViewsToHideWhileLoading:v20];
    }

    [(GKLeaderboardListViewController *)self setupNoContentView:self->_noContentView withError:v4];
    v21 = [(GKLeaderboardListViewController *)self noContentView];
    [v21 setHidden:0];
  }
}

- (void)hideNoContentPlaceholder
{
  v3 = [(GKLeaderboardListViewController *)self noContentView];
  [v3 setHidden:1];

  v4 = [(GKLeaderboardListViewController *)self collectionView];
  [v4 setHidden:0];
}

- (void)setupNoContentView:(id)a3 withError:(id)a4
{
  v9 = a3;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [v9 setTitle:v6];

  if (a4)
  {
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    [v9 setMessage:v8];
  }

  else
  {
    [v9 setMessage:0];
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
  v4 = [(GKLeaderboardListViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];
}

- (void)setHorizontalLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKLeaderboardListViewController *)self collectionView];
  v10 = [v5 collectionViewLayout];

  [v10 setScrollDirection:v3];
  v6 = [(GKLeaderboardListViewController *)self collectionView];
  [v6 setAlwaysBounceVertical:v3 ^ 1];

  v7 = [(GKLeaderboardListViewController *)self collectionView];
  [v7 setAlwaysBounceHorizontal:v3];

  v8 = [(GKLeaderboardListViewController *)self collectionView];
  [v8 setShowsVerticalScrollIndicator:v3 ^ 1];

  v9 = [(GKLeaderboardListViewController *)self collectionView];
  [v9 setShowsHorizontalScrollIndicator:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = GKLeaderboardListViewController;
  v7 = a4;
  [(GKLeaderboardListViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__GKLeaderboardListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27966A690;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&__block_literal_global_100];
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
  v3 = [(GKLeaderboardListViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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
        v11 = [(GKLeaderboardListViewController *)self collectionView];
        [v11 deselectItemAtIndexPath:v10 animated:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end