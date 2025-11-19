@interface GKTurnBasedMatchesViewController
- (BOOL)_gkShouldRefreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (BOOL)isInGame;
- (BOOL)isLoadingOrRemovingPreloadedMatch;
- (GKCollectionViewController)masterViewController;
- (GKTurnBasedMatchesViewController)init;
- (GKTurnBasedMatchesViewController)initWithMatchRequest:(id)a3;
- (GKTurnBasedMatchesViewControllerDelegate)delegate;
- (void)_gkRestorePopoverWithViewControllers:(id)a3 completion:(id)a4;
- (void)acceptInviteForMatch:(id)a3;
- (void)cancelButtonPressed;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)configureCollectionViewFocusGuide;
- (void)configureDataSource;
- (void)configureDetailButtonFocusGuide;
- (void)configureHeader:(id)a3 indexPath:(id)a4;
- (void)configureNavigationBarFocusGuide;
- (void)configureViewFactories;
- (void)dealloc;
- (void)didEnterNoContentState;
- (void)dismissDetailViewControllerAnimated:(BOOL)a3;
- (void)dismissDetailViewControllerInPopover:(BOOL)a3 completion:(id)a4;
- (void)handleTurnBasedEvent:(id)a3;
- (void)launchGameAndShowMatch:(id)a3;
- (void)loadDataWithCompletionHandlerAndError:(id)a3;
- (void)notifyGameWithMatch:(id)a3 orError:(id)a4;
- (void)presentNavigationControllerInPopover:(id)a3 fromCell:(id)a4 completion:(id)a5;
- (void)setGame:(id)a3;
- (void)showDetailForMatch:(id)a3;
- (void)showInviteControllerAnimated:(BOOL)a3;
- (void)showMatch:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)turnBasedInviteViewController:(id)a3 didCreateMatchID:(id)a4;
- (void)turnBasedInviteViewController:(id)a3 didFailWithError:(id)a4;
- (void)turnBasedInviteViewControllerWasCancelled:(id)a3;
- (void)turnBasedMatchDetailViewControllerDidAcceptInvitation:(id)a3;
- (void)turnBasedMatchDetailViewControllerDidChooseMatch:(id)a3;
- (void)turnBasedMatchDetailViewControllerDidDeclineInvitation:(id)a3;
- (void)turnBasedMatchDetailViewControllerDidQuitMatch:(id)a3;
- (void)turnBasedMatchDetailViewControllerDidRemoveMatch:(id)a3;
- (void)turnBasedMatchDetailViewControllerDidShowStore:(id)a3;
- (void)turnBasedMatchesDataSource:(id)a3 didQuitMatch:(id)a4;
- (void)updateUIBasedOnTraitCollection;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation GKTurnBasedMatchesViewController

- (GKTurnBasedMatchesViewController)init
{
  v3 = objc_alloc_init(GKGridLayout);
  v7.receiver = self;
  v7.super_class = GKTurnBasedMatchesViewController;
  v4 = [(GKCollectionViewController *)&v7 initWithCollectionViewLayout:v3];

  if (v4)
  {
    [(GKTurnBasedMatchesViewController *)v4 setRestorationClass:objc_opt_class()];
    [(GKTurnBasedMatchesViewController *)v4 setRestorationIdentifier:@"TurnBasedMatches"];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v4->_showPlay = 1;
    v4->_showQuit = 1;
  }

  return v4;
}

- (GKTurnBasedMatchesViewController)initWithMatchRequest:(id)a3
{
  v5 = a3;
  v6 = [(GKTurnBasedMatchesViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_matchRequest, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v5 dealloc];
}

- (void)setGame:(id)a3
{
  v5 = a3;
  if (self->_game != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_game, a3);
    v6 = [(GKGame *)v8 name];
    v7 = [(GKTurnBasedMatchesViewController *)self navigationItem];
    [v7 setTitle:v6];

    v5 = v8;
  }
}

- (BOOL)isInGame
{
  v2 = [(GKTurnBasedMatchesViewController *)self delegate];
  v3 = v2 != 0;

  return v3;
}

- (void)configureDataSource
{
  v3 = objc_alloc_init(GKTurnBasedMatchesDataSource);
  [(GKTurnBasedMatchesViewController *)self setMatchesDataSource:v3];

  [(GKTurnBasedMatchesDataSource *)self->_matchesDataSource configureDataSource];
  [(GKTurnBasedMatchesDataSource *)self->_matchesDataSource setGame:self->_game];
  v4 = +[(GKGridLayoutMetrics *)GKSectionMetrics];
  [v4 padding];
  [v4 setPadding:0.0];
  [v4 sectionHeaderHeight];
  self->_initialSectionHeaderHeight = v5;
  [(GKCollectionViewDataSource *)self->_matchesDataSource setDefaultSectionMetrics:v4];
  [(GKCollectionViewController *)self setDataSource:self->_matchesDataSource];
  v6.receiver = self;
  v6.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v6 configureDataSource];
}

- (void)configureViewFactories
{
  v3 = [(GKCollectionViewController *)self collectionView];
  [v3 _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"SectionHeader"];

  matchesDataSource = self->_matchesDataSource;
  v5 = objc_opt_class();

  [(GKCollectionViewDataSource *)matchesDataSource registerSupplementaryViewOfKind:@"SectionHeader" withClass:v5 target:self configurator:sel_configureHeader_indexPath_];
}

- (void)configureHeader:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKTurnBasedMatchesViewController *)self matchesDataSource];
  v9 = [v6 section];

  v10 = [v8 titleForSection:v9];
  v11 = [v10 localizedUppercaseString];
  [v7 setLeftText:v11];

  v12 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76968] symbolicTraits:2];
  v13 = [v7 leftLabel];
  [v13 setFont:v12];

  v14 = [v7 leftLabel];
  v15 = [v14 textColor];
  v16 = [v15 colorWithAlphaComponent:0.600000024];
  v17 = [v7 leftLabel];
  [v17 setTextColor:v16];

  v18 = *MEMORY[0x277CDA5E8];
  v19 = [v7 leftLabel];
  v20 = [v19 layer];
  [v20 setCompositingFilter:v18];

  v21 = [v7 underlineView];
  [v21 setHidden:1];

  v22 = [v7 backgroundView];

  [v22 setHidden:0];
}

- (void)viewDidLoad
{
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {
    v3 = [(GKTurnBasedMatchesViewController *)self navigationController];
    [v3 makeNavigationBarBackgroundTranslucent];

    v4 = [MEMORY[0x277D75348] labelColor];
    v5 = [(GKTurnBasedMatchesViewController *)self navigationController];
    v6 = [v5 navigationBar];
    [v6 setTintColor:v4];

    v7 = objc_opt_new();
    v8 = [(GKTurnBasedMatchesViewController *)self navigationController];
    v9 = [v8 navigationBar];
    [v9 setShadowImage:v7];
  }

  v12.receiver = self;
  v12.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v12 viewDidLoad];
  [(GKTurnBasedMatchesViewController *)self configureNavigationBarFocusGuide];
  [(GKTurnBasedMatchesViewController *)self configureCollectionViewFocusGuide];
  v10 = [(GKCollectionViewController *)self collectionView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(GKTurnBasedMatchesViewController *)self updateUIBasedOnTraitCollection];
  v11 = [(GKCollectionViewController *)self collectionView];
  [v11 setShowsVerticalScrollIndicator:0];
}

- (void)configureNavigationBarFocusGuide
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = [(GKTurnBasedMatchesViewController *)self navigationController];
  v4 = [v3 navigationBar];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75500]);
    v6 = [(GKTurnBasedMatchesViewController *)self navigationController];
    v7 = [v6 navigationBar];
    v33[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [v5 setPreferredFocusEnvironments:v8];

    v9 = [(GKTurnBasedMatchesViewController *)self view];
    [v9 addLayoutGuide:v5];

    v10 = [(GKTurnBasedMatchesViewController *)self navigationController];
    v11 = [v10 navigationBar];
    [v11 frame];
    v13 = v12;

    v24 = MEMORY[0x277CCAAD0];
    v30 = [v5 topAnchor];
    v31 = [(GKTurnBasedMatchesViewController *)self view];
    v29 = [v31 topAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v32[0] = v28;
    v26 = [v5 bottomAnchor];
    v27 = [(GKTurnBasedMatchesViewController *)self view];
    v25 = [v27 topAnchor];
    v23 = [v26 constraintEqualToAnchor:v25 constant:v13];
    v32[1] = v23;
    v14 = [v5 leadingAnchor];
    v15 = [(GKTurnBasedMatchesViewController *)self view];
    v16 = [v15 leadingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v32[2] = v17;
    v18 = [v5 trailingAnchor];
    v19 = [(GKTurnBasedMatchesViewController *)self view];
    v20 = [v19 trailingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v32[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
    [v24 activateConstraints:v22];
  }
}

- (void)configureCollectionViewFocusGuide
{
  v34[1] = *MEMORY[0x277D85DE8];
  v31 = [(GKTurnBasedMatchesViewController *)self navigationController];
  v3 = [v31 navigationBar];
  if (v3)
  {
    v4 = v3;
    v5 = [(GKCollectionViewController *)self collectionView];

    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75500]);
      v7 = [(GKCollectionViewController *)self collectionView];
      v34[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      [v6 setPreferredFocusEnvironments:v8];

      v9 = [(GKTurnBasedMatchesViewController *)self view];
      [v9 addLayoutGuide:v6];

      v10 = [(GKTurnBasedMatchesViewController *)self navigationController];
      v11 = [v10 navigationBar];
      [v11 frame];
      v13 = v12;

      v24 = MEMORY[0x277CCAAD0];
      v30 = [v6 topAnchor];
      v32 = [(GKTurnBasedMatchesViewController *)self view];
      v29 = [v32 topAnchor];
      v28 = [v30 constraintEqualToAnchor:v29 constant:v13];
      v33[0] = v28;
      v26 = [v6 bottomAnchor];
      v27 = [(GKTurnBasedMatchesViewController *)self view];
      v25 = [v27 bottomAnchor];
      v23 = [v26 constraintEqualToAnchor:v25];
      v33[1] = v23;
      v14 = [v6 leadingAnchor];
      v15 = [(GKTurnBasedMatchesViewController *)self view];
      v16 = [v15 leadingAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
      v33[2] = v17;
      v18 = [v6 trailingAnchor];
      v19 = [(GKTurnBasedMatchesViewController *)self view];
      v20 = [v19 trailingAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      v33[3] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
      [v24 activateConstraints:v22];
    }
  }

  else
  {
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {
    v5 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v5 addObserver:self selector:sel_handleTurnBasedEvent_ name:*MEMORY[0x277D0BB70] object:0];

    v6 = [(GKTurnBasedMatchesViewController *)self navigationItem];
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_cancelButtonPressed];
    [v6 setLeftBarButtonItem:v7];
    v8 = [MEMORY[0x277D0C1D8] shared];
    v9 = [v8 multiplayerAllowedPlayerType];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:4 target:self action:sel_addPressed];
      [v6 setRightBarButtonItem:v10];
    }

    [(GKTurnBasedMatchesDataSource *)self->_matchesDataSource setDetailPressedAction:sel_detailPressedForMatch_];
    if (![(GKTurnBasedMatchesViewController *)self showExistingMatches])
    {
      [(GKTurnBasedMatchesViewController *)self showInviteControllerAnimated:0];
    }

    v11 = [(GKTurnBasedMatchesViewController *)self navigationController];
    [v11 setNavigationBarHidden:0 animated:0];
  }

  v12.receiver = self;
  v12.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v12 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v12 viewDidAppear:a3];
  v4 = [(GKTurnBasedMatchesViewController *)self delegate];
  v5 = [(GKMatchRequest *)self->_matchRequest validateForTurnBased];
  if (v5)
  {
    [v4 turnBasedViewController:self didFailWithError:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D0C1D8] shared];
    v7 = [v6 multiplayerAllowedPlayerType];

    if (!v7)
    {
      v8 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
      [v4 turnBasedViewController:self didFailWithError:v8];
    }
  }

  v9 = [(GKTurnBasedMatchesViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 _rootSheetPresentationController];
  [v11 _setShouldScaleDownBehindDescendantSheets:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v6 viewWillDisappear:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v4 traitCollectionDidChange:a3];
  [(GKTurnBasedMatchesViewController *)self updateUIBasedOnTraitCollection];
}

- (void)updateUIBasedOnTraitCollection
{
  v3 = [(GKCollectionViewController *)self collectionView];
  [v3 _gkRemoveAllConstraints];

  v4 = [GameLayerPageGrid alloc];
  v5 = [(GKCollectionViewController *)self collectionView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v10 = [(GKTurnBasedMatchesViewController *)self view];
  v11 = [v10 traitCollection];
  v63 = [(GameLayerPageGrid *)v4 initWithSize:v11 traitCollection:v7, v9];

  v12 = [(GKTurnBasedMatchesViewController *)self view];
  v13 = [v12 traitCollection];
  v14 = [v13 userInterfaceIdiom];
  [(GameLayerPageGrid *)v63 columnWidth];
  v16 = v15;
  [(GameLayerPageGrid *)v63 interColumnSpacing];
  v18 = v17 + v17 + v16 * 3.0;
  v19 = v17 * 3.0 + v16 * 4.0;
  if (v14)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = [(GKCollectionViewController *)self collectionView];
  [v21 bounds];
  v23 = v22;
  [(GameLayerPageGrid *)v63 minimumInsets];
  v25 = v23 - v24;
  [(GameLayerPageGrid *)v63 minimumInsets];
  v27 = v25 - v26;

  v28 = [(GKCollectionViewController *)self collectionView];
  v29 = v28;
  if (v20 <= v27)
  {
    v35 = [v28 widthAnchor];
    v36 = [v35 constraintEqualToConstant:v20];
    [v36 setActive:1];
  }

  else
  {
    v30 = [v28 leftAnchor];
    v31 = [(GKTurnBasedMatchesViewController *)self view];
    v32 = [v31 leftAnchor];
    [(GameLayerPageGrid *)v63 minimumInsets];
    v34 = [v30 constraintEqualToAnchor:v32 constant:v33];
    [v34 setActive:1];

    v29 = [(GKCollectionViewController *)self collectionView];
    v35 = [v29 rightAnchor];
    v36 = [(GKTurnBasedMatchesViewController *)self view];
    v37 = [v36 rightAnchor];
    [(GameLayerPageGrid *)v63 minimumInsets];
    v39 = [v35 constraintEqualToAnchor:v37 constant:-v38];
    [v39 setActive:1];
  }

  v40 = [(GKCollectionViewController *)self collectionView];
  v41 = [v40 centerXAnchor];
  v42 = [(GKTurnBasedMatchesViewController *)self view];
  v43 = [v42 centerXAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [(GKCollectionViewController *)self collectionView];
  v46 = [v45 topAnchor];
  v47 = [(GKTurnBasedMatchesViewController *)self view];
  v48 = [v47 topAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [(GKCollectionViewController *)self collectionView];
  v51 = [v50 bottomAnchor];
  v52 = [(GKTurnBasedMatchesViewController *)self view];
  v53 = [v52 bottomAnchor];
  v54 = [v51 constraintEqualToAnchor:v53];
  [v54 setActive:1];

  v55 = [(GKCollectionViewController *)self collectionView];
  [v55 setNeedsLayout];

  [(GKTurnBasedMatchesViewController *)self configureDetailButtonFocusGuide];
  v56 = [(GKCollectionViewDataSource *)self->_matchesDataSource defaultSectionMetrics];
  +[GKTurnParticipantCell defaultRowHeight];
  v58 = v57;
  v59 = [(GKTurnBasedMatchesViewController *)self traitCollection];
  v60 = [v59 preferredContentSizeCategory];
  LODWORD(v53) = UIContentSizeCategoryIsAccessibilityCategory(v60);

  if (v53)
  {
    v58 = v58 * 1.7;
    [v56 setSectionHeadersShouldPin:0];
  }

  v61 = [MEMORY[0x277D75520] defaultMetrics];
  [v61 scaledValueForValue:v58];
  [v56 setDesiredItemHeight:?];

  [v56 setItemHeightList:0];
  v62 = [MEMORY[0x277D75520] defaultMetrics];
  [v62 scaledValueForValue:self->_initialSectionHeaderHeight];
  [v56 setSectionHeaderHeight:?];

  [(GKCollectionViewDataSource *)self->_matchesDataSource setDefaultSectionMetrics:v56];
  [(GKCollectionViewController *)self _gkSetContentsNeedUpdateWithHandler:0];
}

- (void)configureDetailButtonFocusGuide
{
  v37[4] = *MEMORY[0x277D85DE8];
  v3 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];

  if (v3)
  {
    v4 = [(GKTurnBasedMatchesViewController *)self view];
    v5 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    [v4 removeLayoutGuide:v5];
  }

  v6 = objc_alloc_init(MEMORY[0x277D75500]);
  [(GKTurnBasedMatchesViewController *)self setDetailButtonFocusGuide:v6];

  v7 = [(GKTurnBasedMatchesViewController *)self view];
  v8 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
  [v7 addLayoutGuide:v8];

  v9 = [(GKTurnBasedMatchesViewController *)self navigationController];
  v10 = [v9 navigationBar];

  if (v10)
  {
    v11 = [(GKTurnBasedMatchesViewController *)self navigationController];
    v12 = [v11 navigationBar];
    [v12 frame];
    v14 = v13;

    v27 = MEMORY[0x277CCAAD0];
    v36 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    v34 = [v36 topAnchor];
    v35 = [(GKTurnBasedMatchesViewController *)self view];
    v33 = [v35 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:v14];
    v37[0] = v32;
    v31 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    v29 = [v31 bottomAnchor];
    v30 = [(GKTurnBasedMatchesViewController *)self view];
    v28 = [v30 bottomAnchor];
    v26 = [v29 constraintEqualToAnchor:v28];
    v37[1] = v26;
    v25 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    v15 = [v25 leadingAnchor];
    v16 = [(GKCollectionViewController *)self collectionView];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v37[2] = v18;
    v19 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    v20 = [v19 trailingAnchor];
    v21 = [(GKCollectionViewController *)self collectionView];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:1.0];
    v37[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v24];
  }
}

- (BOOL)isLoadingOrRemovingPreloadedMatch
{
  v2 = [(GKTurnBasedMatchesViewController *)self inviteController];
  v3 = [v2 isLoadingOrRemovingPreloadedMatch];

  return v3;
}

- (void)loadDataWithCompletionHandlerAndError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatchesViewController_iOS.m", 322, "-[GKTurnBasedMatchesViewController loadDataWithCompletionHandlerAndError:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  if (![(GKTurnBasedMatchesViewController *)self isLoadingOrRemovingPreloadedMatch])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__GKTurnBasedMatchesViewController_loadDataWithCompletionHandlerAndError___block_invoke;
    v13[3] = &unk_279669A20;
    v14 = v7;
    v15 = self;
    [v14 perform:v13];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__GKTurnBasedMatchesViewController_loadDataWithCompletionHandlerAndError___block_invoke_3;
  v10[3] = &unk_27966A480;
  v11 = v7;
  v12 = v4;
  v8 = v7;
  v9 = v4;
  [v8 notifyOnMainQueueWithBlock:v10];
}

void __74__GKTurnBasedMatchesViewController_loadDataWithCompletionHandlerAndError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__GKTurnBasedMatchesViewController_loadDataWithCompletionHandlerAndError___block_invoke_2;
  v9[3] = &unk_27966CBC0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v8.receiver = v4;
  v8.super_class = GKTurnBasedMatchesViewController;
  v7 = v3;
  objc_msgSendSuper2(&v8, sel_loadDataWithCompletionHandlerAndError_, v9);
}

uint64_t __74__GKTurnBasedMatchesViewController_loadDataWithCompletionHandlerAndError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v4 = [*(a1 + 40) isInGame];
  if (!a2 && v4)
  {
    v5 = *(a1 + 40);
    v6 = v5[152];
    v7 = [v5 matchesDataSource];
    v8 = [v7 numberOfMatches];

    v9 = v6 <= v8 ? v8 : v6;
    *(*(a1 + 40) + 1216) = v9;
    v10 = *(a1 + 40);
    if (!v10[152])
    {
      [v10 showInviteControllerAnimated:0];
    }
  }

  v11 = *(*(a1 + 48) + 16);

  return v11();
}

void __74__GKTurnBasedMatchesViewController_loadDataWithCompletionHandlerAndError___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

- (BOOL)_gkShouldRefreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v4 == 14 && [(GKTurnBasedMatchesViewController *)self isLoadingOrRemovingPreloadedMatch])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GKTurnBasedMatchesViewController;
    v7 = [(GKCollectionViewController *)&v9 _gkShouldRefreshContentsForDataType:v4 userInfo:v6];
  }

  return v7;
}

- (void)didEnterNoContentState
{
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {

    [(GKTurnBasedMatchesViewController *)self showInviteControllerAnimated:0];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = [(GKSplittingDataSource *)self->_matchesDataSource itemAtIndexPath:a4];
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {
    if ([v6 state] == 1)
    {
      [(GKTurnBasedMatchesViewController *)self acceptInviteForMatch:v6];
    }

    else
    {
      v5 = [v6 internal];
      [(GKTurnBasedMatchesViewController *)self showMatch:v5];
    }
  }

  else
  {
    [(GKTurnBasedMatchesViewController *)self showDetailForMatch:v6];
  }
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 nextFocusedItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 nextFocusedItem];
    v10 = [v9 detailButton];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v12 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    [v12 setPreferredFocusEnvironments:v11];
  }
}

- (void)showInviteControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D0C1D8] shared];
  v6 = [v5 multiplayerAllowedPlayerType];

  if (v6)
  {
    v7 = [(GKTurnBasedMatchesViewController *)self navigationController];
    v8 = [v7 topViewController];

    if (v8 == self)
    {
      v9 = [GKTurnBasedInviteViewController alloc];
      v10 = [(GKTurnBasedMatchesViewController *)self matchRequest];
      v15 = [(GKMultiplayerViewController *)v9 initWithMatchRequest:v10];

      [(GKMultiplayerViewController *)v15 setGame:self->_game];
      [(GKTurnBasedInviteViewController *)v15 setDelegate:self];
      if ([(GKTurnBasedMatchesViewController *)self showExistingMatches]&& [(GKTurnBasedMatchesDataSource *)self->_matchesDataSource numberOfMatches])
      {
        [(GKMultiplayerViewController *)v15 setShowCancelButton:0];
        v11 = GKGameCenterUIFrameworkBundle();
        v12 = GKGetLocalizedStringFromTableInBundle();
        v13 = [(GKTurnBasedMatchesViewController *)self navigationItem];
        [v13 setBackButtonTitle:v12];
      }

      else
      {
        [(GKMultiplayerViewController *)v15 setShowCancelButton:1];
      }

      v14 = [(GKTurnBasedMatchesViewController *)self navigationController];
      [v14 pushViewController:v15 animated:v3];

      [(GKTurnBasedMatchesViewController *)self setInviteController:v15];
    }
  }
}

- (void)turnBasedInviteViewControllerWasCancelled:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__GKTurnBasedMatchesViewController_turnBasedInviteViewControllerWasCancelled___block_invoke;
  v4[3] = &unk_279669D38;
  v4[4] = self;
  v3.receiver = self;
  v3.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v3 loadDataWithCompletionHandlerAndError:v4];
}

void __78__GKTurnBasedMatchesViewController_turnBasedInviteViewControllerWasCancelled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) showExistingMatches] && (objc_msgSend(*(a1 + 32), "matchesDataSource"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "numberOfMatches"), v2, v3))
  {
    v5 = [*(a1 + 32) navigationController];
    v4 = [v5 popToViewController:*(a1 + 32) animated:1];
  }

  else
  {
    v5 = [*(a1 + 32) delegate];
    [v5 turnBasedViewControllerWasCancelled:*(a1 + 32)];
  }
}

- (void)turnBasedInviteViewController:(id)a3 didCreateMatchID:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__GKTurnBasedMatchesViewController_turnBasedInviteViewController_didCreateMatchID___block_invoke;
  v4[3] = &unk_27966B0B0;
  v4[4] = self;
  [MEMORY[0x277D0C238] loadMatchWithID:a4 withCompletionHandler:v4];
}

void __83__GKTurnBasedMatchesViewController_turnBasedInviteViewController_didCreateMatchID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 internal];
  [v2 showMatch:v3];
}

- (void)turnBasedInviteViewController:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(GKTurnBasedMatchesViewController *)self delegate];
  [v6 turnBasedViewController:self didFailWithError:v5];
}

- (void)cancelButtonPressed
{
  v3 = [(GKTurnBasedMatchesViewController *)self delegate];
  [v3 turnBasedViewControllerWasCancelled:self];
}

- (void)launchGameAndShowMatch:(id)a3
{
  v6 = a3;
  if ([(GKGame *)self->_game isInstalled])
  {
    v4 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    v5 = [v4 turnBasedServicePrivate];
    [v5 showMatch:v6];
  }
}

- (void)notifyGameWithMatch:(id)a3 orError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(GKTurnBasedMatchesViewController *)self isInGame])
  {
    v9 = [v6 internal];
    [(GKTurnBasedMatchesViewController *)self launchGameAndShowMatch:v9];
    goto LABEL_12;
  }

  if (v6 | v7)
  {
    v8 = [(GKTurnBasedMatchesViewController *)self delegate];
    v9 = v8;
    if (v6)
    {
      [v8 turnBasedViewController:self didFindMatch:v6];
      goto LABEL_12;
    }
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTurnBasedMatchesViewController_iOS.m"];
    v13 = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (match != ((void*)0) || error != ((void*)0))\n[%s (%s:%d)]", v11, "-[GKTurnBasedMatchesViewController notifyGameWithMatch:orError:]", objc_msgSend(v13, "UTF8String"), 477];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    v9 = [(GKTurnBasedMatchesViewController *)self delegate];
  }

  v15 = MEMORY[0x277D0C2A0];
  v16 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v17 = GKOSLoggers();
    v16 = *v15;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [GKTurnBasedMatchesViewController notifyGameWithMatch:v7 orError:v16];
  }

  [v9 turnBasedViewController:self didFailWithError:v7];
LABEL_12:
}

- (void)acceptInviteForMatch:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTurnBasedMatchesViewController_iOS.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (match)\n[%s (%s:%d)]", v6, "-[GKTurnBasedMatchesViewController acceptInviteForMatch:]", objc_msgSend(v8, "UTF8String"), 494];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__GKTurnBasedMatchesViewController_acceptInviteForMatch___block_invoke;
  v10[3] = &unk_27966B0B0;
  v10[4] = self;
  [v4 acceptInviteWithCompletionHandler:v10];
}

- (void)showMatch:(id)a3
{
  v6 = a3;
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {
    v4 = MEMORY[0x277D0C238];
    v5 = [v6 matchID];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__GKTurnBasedMatchesViewController_showMatch___block_invoke;
    v7[3] = &unk_27966B0B0;
    v7[4] = self;
    [v4 loadTurnBasedMatchWithDetailsForMatchID:v5 withCompletionHandler:v7];
  }

  else
  {
    [(GKTurnBasedMatchesViewController *)self launchGameAndShowMatch:v6];
  }
}

- (void)showDetailForMatch:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(GKTurnBasedMatchDetailViewController);
    [(GKTurnBasedMatchDetailViewController *)v5 setShouldShowPlay:[(GKTurnBasedMatchesViewController *)self showPlay]];
    [(GKTurnBasedMatchDetailViewController *)v5 setShouldShowQuit:[(GKTurnBasedMatchesViewController *)self showQuit]];
    [(GKTurnBasedMatchDetailViewController *)v5 setMatch:v4];
    v6 = [v4 game];

    [(GKTurnBasedMatchDetailViewController *)v5 setGame:v6];
    [(GKTurnBasedMatchDetailViewController *)v5 setDelegate:self];
    [(GKTurnBasedMatchDetailViewController *)v5 setIsInGame:[(GKTurnBasedMatchesViewController *)self isInGame]];
    v7 = objc_alloc_init(GKNavigationController);
    v11[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(GKNavigationController *)v7 setViewControllers:v8];

    [(GKNavigationController *)v7 setModalPresentationStyle:1];
    v9 = [MEMORY[0x277D75348] whiteColor];
    v10 = [(GKNavigationController *)v7 view];
    [v10 setTintColor:v9];

    [(GKTurnBasedMatchesViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)presentNavigationControllerInPopover:(id)a3 fromCell:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 setModalPresentationStyle:7];
  v11 = [v10 navigationBar];
  [v11 _setHidesShadow:1];

  v13 = [v10 popoverPresentationController];
  [v13 setPermittedArrowDirections:15];
  [v13 setSourceView:v9];
  v12 = [v9 popoverSourceView];

  [v12 frame];
  [v13 setSourceRect:?];

  [v13 setDelegate:self];
  [(GKTurnBasedMatchesViewController *)self presentViewController:v10 animated:1 completion:v8];
}

- (void)dismissDetailViewControllerInPopover:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__GKTurnBasedMatchesViewController_dismissDetailViewControllerInPopover_completion___block_invoke;
  v8[3] = &unk_27966A4A8;
  v9 = v6;
  v7 = v6;
  [(GKTurnBasedMatchesViewController *)self dismissViewControllerAnimated:v4 completion:v8];
}

uint64_t __84__GKTurnBasedMatchesViewController_dismissDetailViewControllerInPopover_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissDetailViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {

    [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerInPopover:v3 completion:0];
  }

  else
  {
    v7 = [(GKTurnBasedMatchesViewController *)self presentedViewController];
    [v7 dismissViewControllerAnimated:v3 completion:0];

    [(GKCollectionViewController *)self clearSelectionHighlight];
  }
}

- (void)_gkRestorePopoverWithViewControllers:(id)a3 completion:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [v23 firstObject];
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;

    v15 = 320.0;
    if (fmax(v12, v14) > 1024.0)
    {
      v15 = 375.0;
    }
  }

  else
  {
    v15 = 320.0;
  }

  [v7 setPreferredContentSize:{v15, 440.0}];
  v16 = [(GKCollectionViewController *)self gkDataSource];
  v17 = [v7 _gkRepresentedObject];
  v18 = [v16 indexPathsForItem:v17];
  v19 = [v18 firstObject];

  v20 = [(GKCollectionViewController *)self collectionView];
  v21 = [v20 cellForItemAtIndexPath:v19];

  if (v21)
  {
    v22 = objc_alloc_init(GKNavigationController);
    [(GKNavigationController *)v22 setViewControllers:v23];
    [(GKTurnBasedMatchesViewController *)self presentNavigationControllerInPopover:v22 fromCell:v21 completion:v6];
  }
}

- (void)turnBasedMatchDetailViewControllerDidAcceptInvitation:(id)a3
{
  v4 = [a3 match];
  [(GKTurnBasedMatchesViewController *)self acceptInviteForMatch:v4];
}

- (void)turnBasedMatchDetailViewControllerDidDeclineInvitation:(id)a3
{
  v4 = a3;
  [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerAnimated:1];
  v5 = [v4 match];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidDeclineInvitation___block_invoke;
  v6[3] = &unk_279669D38;
  v6[4] = self;
  [v5 declineInviteWithCompletionHandler:v6];
}

- (void)turnBasedMatchDetailViewControllerDidChooseMatch:(id)a3
{
  v5 = [a3 match];
  v4 = [v5 internal];
  [(GKTurnBasedMatchesViewController *)self showMatch:v4];
}

- (void)turnBasedMatchDetailViewControllerDidQuitMatch:(id)a3
{
  v4 = a3;
  v5 = [v4 match];
  v6 = [v5 localPlayerParticipant];
  v7 = [(GKTurnBasedMatchesViewController *)self delegate];
  v8 = [v4 match];
  v9 = [v8 isMyTurn];

  if (v9)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidQuitMatch___block_invoke;
    v14[3] = &unk_27966CBE8;
    v15 = v4;
    v16 = v5;
    v17 = self;
    v18 = v7;
    [v16 loadMatchDataWithCompletionHandler:v14];
  }

  else
  {
    [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerAnimated:1];
    if ([v6 status] == 4)
    {
      v10 = MEMORY[0x277D0C2A0];
      v11 = *MEMORY[0x277D0C2A0];
      if (!*MEMORY[0x277D0C2A0])
      {
        v12 = GKOSLoggers();
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [GKTurnBasedMatchesViewController turnBasedMatchDetailViewControllerDidQuitMatch:];
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidQuitMatch___block_invoke_144;
    v13[3] = &unk_279669D38;
    v13[4] = self;
    [v5 participantQuitOutOfTurnWithOutcome:1 withCompletionHandler:v13];
  }
}

void __83__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidQuitMatch___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [a1[7] turnBasedViewController:a1[6] didFailWithError:a3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidQuitMatch___block_invoke_2;
    block[3] = &unk_2796699A8;
    block[4] = a1[6];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [a1[4] setMatch:a1[5]];
    [a1[4] setNeedsReload];
    v4 = [a1[5] matchID];
    [a1[6] setMatchIDWaitingForTurnEvent:v4];

    v5 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v5 addObserver:a1[6] selector:sel_handleTurnBasedEvent_ name:*MEMORY[0x277D0BB70] object:0];

    v7 = a1[6];
    v6 = a1[7];
    v8 = a1[5];

    [v6 turnBasedViewController:v7 playerQuitForMatch:v8];
  }
}

- (void)turnBasedMatchesDataSource:(id)a3 didQuitMatch:(id)a4
{
  v5 = a4;
  v6 = [v5 localPlayerParticipant];
  v7 = [(GKTurnBasedMatchesViewController *)self delegate];
  if ([v5 isMyTurn])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__GKTurnBasedMatchesViewController_turnBasedMatchesDataSource_didQuitMatch___block_invoke;
    v12[3] = &unk_27966CC10;
    v12[4] = self;
    v13 = v5;
    v14 = v7;
    [v13 loadMatchDataWithCompletionHandler:v12];
  }

  else
  {
    if ([v6 status] == 4)
    {
      v8 = MEMORY[0x277D0C2A0];
      v9 = *MEMORY[0x277D0C2A0];
      if (!*MEMORY[0x277D0C2A0])
      {
        v10 = GKOSLoggers();
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GKTurnBasedMatchesViewController turnBasedMatchDetailViewControllerDidQuitMatch:];
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__GKTurnBasedMatchesViewController_turnBasedMatchesDataSource_didQuitMatch___block_invoke_145;
    v11[3] = &unk_279669D38;
    v11[4] = self;
    [v5 participantQuitOutOfTurnWithOutcome:1 withCompletionHandler:v11];
  }
}

uint64_t __76__GKTurnBasedMatchesViewController_turnBasedMatchesDataSource_didQuitMatch___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);

    return [v5 turnBasedViewController:v6 didFailWithError:a3];
  }

  else
  {
    v8 = [*(a1 + 40) matchID];
    [*(a1 + 32) setMatchIDWaitingForTurnEvent:v8];

    v9 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v9 addObserver:*(a1 + 32) selector:sel_handleTurnBasedEvent_ name:*MEMORY[0x277D0BB70] object:0];

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);

    return [v10 turnBasedViewController:v12 playerQuitForMatch:v11];
  }
}

- (void)turnBasedMatchDetailViewControllerDidRemoveMatch:(id)a3
{
  v4 = a3;
  [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerAnimated:1];
  v5 = [v4 match];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidRemoveMatch___block_invoke;
  v6[3] = &unk_279669D38;
  v6[4] = self;
  [v5 removeWithCompletionHandler:v6];
}

- (void)turnBasedMatchDetailViewControllerDidShowStore:(id)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerAnimated:1];
    v6 = [(GKTurnBasedMatchesViewController *)self game];
    [v6 openAppStorePage];
  }
}

- (void)handleTurnBasedEvent:(id)a3
{
  v4 = [a3 object];
  if (-[GKTurnBasedMatchesViewController isInGame](self, "isInGame") && [v4 isEqualToString:self->_matchIDWaitingForTurnEvent])
  {
    [(GKTurnBasedMatchesViewController *)self setMatchIDWaitingForTurnEvent:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__GKTurnBasedMatchesViewController_handleTurnBasedEvent___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (GKCollectionViewController)masterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_masterViewController);

  return WeakRetained;
}

- (GKTurnBasedMatchesViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notifyGameWithMatch:(uint64_t)a1 orError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "no match for notifyGameWithMatch: ->error loading TBG match details: %@", &v2, 0xCu);
}

@end