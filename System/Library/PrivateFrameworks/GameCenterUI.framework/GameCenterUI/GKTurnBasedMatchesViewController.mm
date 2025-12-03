@interface GKTurnBasedMatchesViewController
- (BOOL)_gkShouldRefreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (BOOL)isInGame;
- (BOOL)isLoadingOrRemovingPreloadedMatch;
- (GKCollectionViewController)masterViewController;
- (GKTurnBasedMatchesViewController)init;
- (GKTurnBasedMatchesViewController)initWithMatchRequest:(id)request;
- (GKTurnBasedMatchesViewControllerDelegate)delegate;
- (void)_gkRestorePopoverWithViewControllers:(id)controllers completion:(id)completion;
- (void)acceptInviteForMatch:(id)match;
- (void)cancelButtonPressed;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)configureCollectionViewFocusGuide;
- (void)configureDataSource;
- (void)configureDetailButtonFocusGuide;
- (void)configureHeader:(id)header indexPath:(id)path;
- (void)configureNavigationBarFocusGuide;
- (void)configureViewFactories;
- (void)dealloc;
- (void)didEnterNoContentState;
- (void)dismissDetailViewControllerAnimated:(BOOL)animated;
- (void)dismissDetailViewControllerInPopover:(BOOL)popover completion:(id)completion;
- (void)handleTurnBasedEvent:(id)event;
- (void)launchGameAndShowMatch:(id)match;
- (void)loadDataWithCompletionHandlerAndError:(id)error;
- (void)notifyGameWithMatch:(id)match orError:(id)error;
- (void)presentNavigationControllerInPopover:(id)popover fromCell:(id)cell completion:(id)completion;
- (void)setGame:(id)game;
- (void)showDetailForMatch:(id)match;
- (void)showInviteControllerAnimated:(BOOL)animated;
- (void)showMatch:(id)match;
- (void)traitCollectionDidChange:(id)change;
- (void)turnBasedInviteViewController:(id)controller didCreateMatchID:(id)d;
- (void)turnBasedInviteViewController:(id)controller didFailWithError:(id)error;
- (void)turnBasedInviteViewControllerWasCancelled:(id)cancelled;
- (void)turnBasedMatchDetailViewControllerDidAcceptInvitation:(id)invitation;
- (void)turnBasedMatchDetailViewControllerDidChooseMatch:(id)match;
- (void)turnBasedMatchDetailViewControllerDidDeclineInvitation:(id)invitation;
- (void)turnBasedMatchDetailViewControllerDidQuitMatch:(id)match;
- (void)turnBasedMatchDetailViewControllerDidRemoveMatch:(id)match;
- (void)turnBasedMatchDetailViewControllerDidShowStore:(id)store;
- (void)turnBasedMatchesDataSource:(id)source didQuitMatch:(id)match;
- (void)updateUIBasedOnTraitCollection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v4->_showPlay = 1;
    v4->_showQuit = 1;
  }

  return v4;
}

- (GKTurnBasedMatchesViewController)initWithMatchRequest:(id)request
{
  requestCopy = request;
  v6 = [(GKTurnBasedMatchesViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_matchRequest, request);
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v5.receiver = self;
  v5.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v5 dealloc];
}

- (void)setGame:(id)game
{
  gameCopy = game;
  if (self->_game != gameCopy)
  {
    v8 = gameCopy;
    objc_storeStrong(&self->_game, game);
    name = [(GKGame *)v8 name];
    navigationItem = [(GKTurnBasedMatchesViewController *)self navigationItem];
    [navigationItem setTitle:name];

    gameCopy = v8;
  }
}

- (BOOL)isInGame
{
  delegate = [(GKTurnBasedMatchesViewController *)self delegate];
  v3 = delegate != 0;

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
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"SectionHeader"];

  matchesDataSource = self->_matchesDataSource;
  v5 = objc_opt_class();

  [(GKCollectionViewDataSource *)matchesDataSource registerSupplementaryViewOfKind:@"SectionHeader" withClass:v5 target:self configurator:sel_configureHeader_indexPath_];
}

- (void)configureHeader:(id)header indexPath:(id)path
{
  pathCopy = path;
  headerCopy = header;
  matchesDataSource = [(GKTurnBasedMatchesViewController *)self matchesDataSource];
  section = [pathCopy section];

  v10 = [matchesDataSource titleForSection:section];
  localizedUppercaseString = [v10 localizedUppercaseString];
  [headerCopy setLeftText:localizedUppercaseString];

  v12 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76968] symbolicTraits:2];
  leftLabel = [headerCopy leftLabel];
  [leftLabel setFont:v12];

  leftLabel2 = [headerCopy leftLabel];
  textColor = [leftLabel2 textColor];
  v16 = [textColor colorWithAlphaComponent:0.600000024];
  leftLabel3 = [headerCopy leftLabel];
  [leftLabel3 setTextColor:v16];

  v18 = *MEMORY[0x277CDA5E8];
  leftLabel4 = [headerCopy leftLabel];
  layer = [leftLabel4 layer];
  [layer setCompositingFilter:v18];

  underlineView = [headerCopy underlineView];
  [underlineView setHidden:1];

  backgroundView = [headerCopy backgroundView];

  [backgroundView setHidden:0];
}

- (void)viewDidLoad
{
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {
    navigationController = [(GKTurnBasedMatchesViewController *)self navigationController];
    [navigationController makeNavigationBarBackgroundTranslucent];

    labelColor = [MEMORY[0x277D75348] labelColor];
    navigationController2 = [(GKTurnBasedMatchesViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar setTintColor:labelColor];

    v7 = objc_opt_new();
    navigationController3 = [(GKTurnBasedMatchesViewController *)self navigationController];
    navigationBar2 = [navigationController3 navigationBar];
    [navigationBar2 setShadowImage:v7];
  }

  v12.receiver = self;
  v12.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v12 viewDidLoad];
  [(GKTurnBasedMatchesViewController *)self configureNavigationBarFocusGuide];
  [(GKTurnBasedMatchesViewController *)self configureCollectionViewFocusGuide];
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(GKTurnBasedMatchesViewController *)self updateUIBasedOnTraitCollection];
  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 setShowsVerticalScrollIndicator:0];
}

- (void)configureNavigationBarFocusGuide
{
  v33[1] = *MEMORY[0x277D85DE8];
  navigationController = [(GKTurnBasedMatchesViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  if (navigationBar)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75500]);
    navigationController2 = [(GKTurnBasedMatchesViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    v33[0] = navigationBar2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [v5 setPreferredFocusEnvironments:v8];

    view = [(GKTurnBasedMatchesViewController *)self view];
    [view addLayoutGuide:v5];

    navigationController3 = [(GKTurnBasedMatchesViewController *)self navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 frame];
    v13 = v12;

    v24 = MEMORY[0x277CCAAD0];
    topAnchor = [v5 topAnchor];
    view2 = [(GKTurnBasedMatchesViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[0] = v28;
    bottomAnchor = [v5 bottomAnchor];
    view3 = [(GKTurnBasedMatchesViewController *)self view];
    topAnchor3 = [view3 topAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v13];
    v32[1] = v23;
    leadingAnchor = [v5 leadingAnchor];
    view4 = [(GKTurnBasedMatchesViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[2] = v17;
    trailingAnchor = [v5 trailingAnchor];
    view5 = [(GKTurnBasedMatchesViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
    [v24 activateConstraints:v22];
  }
}

- (void)configureCollectionViewFocusGuide
{
  v34[1] = *MEMORY[0x277D85DE8];
  navigationController = [(GKTurnBasedMatchesViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  if (navigationBar)
  {
    v4 = navigationBar;
    collectionView = [(GKCollectionViewController *)self collectionView];

    if (collectionView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75500]);
      collectionView2 = [(GKCollectionViewController *)self collectionView];
      v34[0] = collectionView2;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      [v6 setPreferredFocusEnvironments:v8];

      view = [(GKTurnBasedMatchesViewController *)self view];
      [view addLayoutGuide:v6];

      navigationController2 = [(GKTurnBasedMatchesViewController *)self navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      [navigationBar2 frame];
      v13 = v12;

      v24 = MEMORY[0x277CCAAD0];
      topAnchor = [v6 topAnchor];
      view2 = [(GKTurnBasedMatchesViewController *)self view];
      topAnchor2 = [view2 topAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v13];
      v33[0] = v28;
      bottomAnchor = [v6 bottomAnchor];
      view3 = [(GKTurnBasedMatchesViewController *)self view];
      bottomAnchor2 = [view3 bottomAnchor];
      v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v33[1] = v23;
      leadingAnchor = [v6 leadingAnchor];
      view4 = [(GKTurnBasedMatchesViewController *)self view];
      leadingAnchor2 = [view4 leadingAnchor];
      v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v33[2] = v17;
      trailingAnchor = [v6 trailingAnchor];
      view5 = [(GKTurnBasedMatchesViewController *)self view];
      trailingAnchor2 = [view5 trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v33[3] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
      [v24 activateConstraints:v22];
    }
  }

  else
  {
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleTurnBasedEvent_ name:*MEMORY[0x277D0BB70] object:0];

    navigationItem = [(GKTurnBasedMatchesViewController *)self navigationItem];
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_cancelButtonPressed];
    [navigationItem setLeftBarButtonItem:v7];
    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    multiplayerAllowedPlayerType = [mEMORY[0x277D0C1D8] multiplayerAllowedPlayerType];

    if (multiplayerAllowedPlayerType)
    {
      v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:4 target:self action:sel_addPressed];
      [navigationItem setRightBarButtonItem:v10];
    }

    [(GKTurnBasedMatchesDataSource *)self->_matchesDataSource setDetailPressedAction:sel_detailPressedForMatch_];
    if (![(GKTurnBasedMatchesViewController *)self showExistingMatches])
    {
      [(GKTurnBasedMatchesViewController *)self showInviteControllerAnimated:0];
    }

    navigationController = [(GKTurnBasedMatchesViewController *)self navigationController];
    [navigationController setNavigationBarHidden:0 animated:0];
  }

  v12.receiver = self;
  v12.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v12 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v12 viewDidAppear:appear];
  delegate = [(GKTurnBasedMatchesViewController *)self delegate];
  validateForTurnBased = [(GKMatchRequest *)self->_matchRequest validateForTurnBased];
  if (validateForTurnBased)
  {
    [delegate turnBasedViewController:self didFailWithError:validateForTurnBased];
  }

  else
  {
    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    multiplayerAllowedPlayerType = [mEMORY[0x277D0C1D8] multiplayerAllowedPlayerType];

    if (!multiplayerAllowedPlayerType)
    {
      v8 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
      [delegate turnBasedViewController:self didFailWithError:v8];
    }
  }

  view = [(GKTurnBasedMatchesViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchesViewController;
  [(GKCollectionViewController *)&v4 traitCollectionDidChange:change];
  [(GKTurnBasedMatchesViewController *)self updateUIBasedOnTraitCollection];
}

- (void)updateUIBasedOnTraitCollection
{
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView _gkRemoveAllConstraints];

  v4 = [GameLayerPageGrid alloc];
  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 bounds];
  v7 = v6;
  v9 = v8;
  view = [(GKTurnBasedMatchesViewController *)self view];
  traitCollection = [view traitCollection];
  v63 = [(GameLayerPageGrid *)v4 initWithSize:traitCollection traitCollection:v7, v9];

  view2 = [(GKTurnBasedMatchesViewController *)self view];
  traitCollection2 = [view2 traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
  [(GameLayerPageGrid *)v63 columnWidth];
  v16 = v15;
  [(GameLayerPageGrid *)v63 interColumnSpacing];
  v18 = v17 + v17 + v16 * 3.0;
  v19 = v17 * 3.0 + v16 * 4.0;
  if (userInterfaceIdiom)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  collectionView3 = [(GKCollectionViewController *)self collectionView];
  [collectionView3 bounds];
  v23 = v22;
  [(GameLayerPageGrid *)v63 minimumInsets];
  v25 = v23 - v24;
  [(GameLayerPageGrid *)v63 minimumInsets];
  v27 = v25 - v26;

  collectionView4 = [(GKCollectionViewController *)self collectionView];
  collectionView5 = collectionView4;
  if (v20 <= v27)
  {
    widthAnchor = [collectionView4 widthAnchor];
    view4 = [widthAnchor constraintEqualToConstant:v20];
    [view4 setActive:1];
  }

  else
  {
    leftAnchor = [collectionView4 leftAnchor];
    view3 = [(GKTurnBasedMatchesViewController *)self view];
    leftAnchor2 = [view3 leftAnchor];
    [(GameLayerPageGrid *)v63 minimumInsets];
    v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v33];
    [v34 setActive:1];

    collectionView5 = [(GKCollectionViewController *)self collectionView];
    widthAnchor = [collectionView5 rightAnchor];
    view4 = [(GKTurnBasedMatchesViewController *)self view];
    rightAnchor = [view4 rightAnchor];
    [(GameLayerPageGrid *)v63 minimumInsets];
    v39 = [widthAnchor constraintEqualToAnchor:rightAnchor constant:-v38];
    [v39 setActive:1];
  }

  collectionView6 = [(GKCollectionViewController *)self collectionView];
  centerXAnchor = [collectionView6 centerXAnchor];
  view5 = [(GKTurnBasedMatchesViewController *)self view];
  centerXAnchor2 = [view5 centerXAnchor];
  v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v44 setActive:1];

  collectionView7 = [(GKCollectionViewController *)self collectionView];
  topAnchor = [collectionView7 topAnchor];
  view6 = [(GKTurnBasedMatchesViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v49 setActive:1];

  collectionView8 = [(GKCollectionViewController *)self collectionView];
  bottomAnchor = [collectionView8 bottomAnchor];
  view7 = [(GKTurnBasedMatchesViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v54 setActive:1];

  collectionView9 = [(GKCollectionViewController *)self collectionView];
  [collectionView9 setNeedsLayout];

  [(GKTurnBasedMatchesViewController *)self configureDetailButtonFocusGuide];
  defaultSectionMetrics = [(GKCollectionViewDataSource *)self->_matchesDataSource defaultSectionMetrics];
  +[GKTurnParticipantCell defaultRowHeight];
  v58 = v57;
  traitCollection3 = [(GKTurnBasedMatchesViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
  LODWORD(bottomAnchor2) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (bottomAnchor2)
  {
    v58 = v58 * 1.7;
    [defaultSectionMetrics setSectionHeadersShouldPin:0];
  }

  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:v58];
  [defaultSectionMetrics setDesiredItemHeight:?];

  [defaultSectionMetrics setItemHeightList:0];
  defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics2 scaledValueForValue:self->_initialSectionHeaderHeight];
  [defaultSectionMetrics setSectionHeaderHeight:?];

  [(GKCollectionViewDataSource *)self->_matchesDataSource setDefaultSectionMetrics:defaultSectionMetrics];
  [(GKCollectionViewController *)self _gkSetContentsNeedUpdateWithHandler:0];
}

- (void)configureDetailButtonFocusGuide
{
  v37[4] = *MEMORY[0x277D85DE8];
  detailButtonFocusGuide = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];

  if (detailButtonFocusGuide)
  {
    view = [(GKTurnBasedMatchesViewController *)self view];
    detailButtonFocusGuide2 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    [view removeLayoutGuide:detailButtonFocusGuide2];
  }

  v6 = objc_alloc_init(MEMORY[0x277D75500]);
  [(GKTurnBasedMatchesViewController *)self setDetailButtonFocusGuide:v6];

  view2 = [(GKTurnBasedMatchesViewController *)self view];
  detailButtonFocusGuide3 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
  [view2 addLayoutGuide:detailButtonFocusGuide3];

  navigationController = [(GKTurnBasedMatchesViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  if (navigationBar)
  {
    navigationController2 = [(GKTurnBasedMatchesViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 frame];
    v14 = v13;

    v27 = MEMORY[0x277CCAAD0];
    detailButtonFocusGuide4 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    topAnchor = [detailButtonFocusGuide4 topAnchor];
    view3 = [(GKTurnBasedMatchesViewController *)self view];
    topAnchor2 = [view3 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v14];
    v37[0] = v32;
    detailButtonFocusGuide5 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    bottomAnchor = [detailButtonFocusGuide5 bottomAnchor];
    view4 = [(GKTurnBasedMatchesViewController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[1] = v26;
    detailButtonFocusGuide6 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    leadingAnchor = [detailButtonFocusGuide6 leadingAnchor];
    collectionView = [(GKCollectionViewController *)self collectionView];
    trailingAnchor = [collectionView trailingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
    v37[2] = v18;
    detailButtonFocusGuide7 = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    trailingAnchor2 = [detailButtonFocusGuide7 trailingAnchor];
    collectionView2 = [(GKCollectionViewController *)self collectionView];
    trailingAnchor3 = [collectionView2 trailingAnchor];
    v23 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:1.0];
    v37[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v24];
  }
}

- (BOOL)isLoadingOrRemovingPreloadedMatch
{
  inviteController = [(GKTurnBasedMatchesViewController *)self inviteController];
  isLoadingOrRemovingPreloadedMatch = [inviteController isLoadingOrRemovingPreloadedMatch];

  return isLoadingOrRemovingPreloadedMatch;
}

- (void)loadDataWithCompletionHandlerAndError:(id)error
{
  errorCopy = error;
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
    selfCopy = self;
    [v14 perform:v13];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__GKTurnBasedMatchesViewController_loadDataWithCompletionHandlerAndError___block_invoke_3;
  v10[3] = &unk_27966A480;
  v11 = v7;
  v12 = errorCopy;
  v8 = v7;
  v9 = errorCopy;
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

- (BOOL)_gkShouldRefreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  infoCopy = info;
  if (v4 == 14 && [(GKTurnBasedMatchesViewController *)self isLoadingOrRemovingPreloadedMatch])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GKTurnBasedMatchesViewController;
    v7 = [(GKCollectionViewController *)&v9 _gkShouldRefreshContentsForDataType:v4 userInfo:infoCopy];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = [(GKSplittingDataSource *)self->_matchesDataSource itemAtIndexPath:path];
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {
    if ([v6 state] == 1)
    {
      [(GKTurnBasedMatchesViewController *)self acceptInviteForMatch:v6];
    }

    else
    {
      internal = [v6 internal];
      [(GKTurnBasedMatchesViewController *)self showMatch:internal];
    }
  }

  else
  {
    [(GKTurnBasedMatchesViewController *)self showDetailForMatch:v6];
  }
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v13[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    nextFocusedItem2 = [contextCopy nextFocusedItem];
    detailButton = [nextFocusedItem2 detailButton];
    v13[0] = detailButton;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    detailButtonFocusGuide = [(GKTurnBasedMatchesViewController *)self detailButtonFocusGuide];
    [detailButtonFocusGuide setPreferredFocusEnvironments:v11];
  }
}

- (void)showInviteControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  multiplayerAllowedPlayerType = [mEMORY[0x277D0C1D8] multiplayerAllowedPlayerType];

  if (multiplayerAllowedPlayerType)
  {
    navigationController = [(GKTurnBasedMatchesViewController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == self)
    {
      v9 = [GKTurnBasedInviteViewController alloc];
      matchRequest = [(GKTurnBasedMatchesViewController *)self matchRequest];
      v15 = [(GKMultiplayerViewController *)v9 initWithMatchRequest:matchRequest];

      [(GKMultiplayerViewController *)v15 setGame:self->_game];
      [(GKTurnBasedInviteViewController *)v15 setDelegate:self];
      if ([(GKTurnBasedMatchesViewController *)self showExistingMatches]&& [(GKTurnBasedMatchesDataSource *)self->_matchesDataSource numberOfMatches])
      {
        [(GKMultiplayerViewController *)v15 setShowCancelButton:0];
        v11 = GKGameCenterUIFrameworkBundle();
        v12 = GKGetLocalizedStringFromTableInBundle();
        navigationItem = [(GKTurnBasedMatchesViewController *)self navigationItem];
        [navigationItem setBackButtonTitle:v12];
      }

      else
      {
        [(GKMultiplayerViewController *)v15 setShowCancelButton:1];
      }

      navigationController2 = [(GKTurnBasedMatchesViewController *)self navigationController];
      [navigationController2 pushViewController:v15 animated:animatedCopy];

      [(GKTurnBasedMatchesViewController *)self setInviteController:v15];
    }
  }
}

- (void)turnBasedInviteViewControllerWasCancelled:(id)cancelled
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

- (void)turnBasedInviteViewController:(id)controller didCreateMatchID:(id)d
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__GKTurnBasedMatchesViewController_turnBasedInviteViewController_didCreateMatchID___block_invoke;
  v4[3] = &unk_27966B0B0;
  v4[4] = self;
  [MEMORY[0x277D0C238] loadMatchWithID:d withCompletionHandler:v4];
}

void __83__GKTurnBasedMatchesViewController_turnBasedInviteViewController_didCreateMatchID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 internal];
  [v2 showMatch:v3];
}

- (void)turnBasedInviteViewController:(id)controller didFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(GKTurnBasedMatchesViewController *)self delegate];
  [delegate turnBasedViewController:self didFailWithError:errorCopy];
}

- (void)cancelButtonPressed
{
  delegate = [(GKTurnBasedMatchesViewController *)self delegate];
  [delegate turnBasedViewControllerWasCancelled:self];
}

- (void)launchGameAndShowMatch:(id)match
{
  matchCopy = match;
  if ([(GKGame *)self->_game isInstalled])
  {
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    turnBasedServicePrivate = [proxyForLocalPlayer turnBasedServicePrivate];
    [turnBasedServicePrivate showMatch:matchCopy];
  }
}

- (void)notifyGameWithMatch:(id)match orError:(id)error
{
  matchCopy = match;
  errorCopy = error;
  if (![(GKTurnBasedMatchesViewController *)self isInGame])
  {
    internal = [matchCopy internal];
    [(GKTurnBasedMatchesViewController *)self launchGameAndShowMatch:internal];
    goto LABEL_12;
  }

  if (matchCopy | errorCopy)
  {
    delegate = [(GKTurnBasedMatchesViewController *)self delegate];
    internal = delegate;
    if (matchCopy)
    {
      [delegate turnBasedViewController:self didFindMatch:matchCopy];
      goto LABEL_12;
    }
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTurnBasedMatchesViewController_iOS.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (match != ((void*)0) || error != ((void*)0))\n[%s (%s:%d)]", v11, "-[GKTurnBasedMatchesViewController notifyGameWithMatch:orError:]", objc_msgSend(lastPathComponent, "UTF8String"), 477];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    internal = [(GKTurnBasedMatchesViewController *)self delegate];
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
    [GKTurnBasedMatchesViewController notifyGameWithMatch:errorCopy orError:v16];
  }

  [internal turnBasedViewController:self didFailWithError:errorCopy];
LABEL_12:
}

- (void)acceptInviteForMatch:(id)match
{
  matchCopy = match;
  if (!matchCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTurnBasedMatchesViewController_iOS.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (match)\n[%s (%s:%d)]", v6, "-[GKTurnBasedMatchesViewController acceptInviteForMatch:]", objc_msgSend(lastPathComponent, "UTF8String"), 494];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__GKTurnBasedMatchesViewController_acceptInviteForMatch___block_invoke;
  v10[3] = &unk_27966B0B0;
  v10[4] = self;
  [matchCopy acceptInviteWithCompletionHandler:v10];
}

- (void)showMatch:(id)match
{
  matchCopy = match;
  if ([(GKTurnBasedMatchesViewController *)self isInGame])
  {
    v4 = MEMORY[0x277D0C238];
    matchID = [matchCopy matchID];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__GKTurnBasedMatchesViewController_showMatch___block_invoke;
    v7[3] = &unk_27966B0B0;
    v7[4] = self;
    [v4 loadTurnBasedMatchWithDetailsForMatchID:matchID withCompletionHandler:v7];
  }

  else
  {
    [(GKTurnBasedMatchesViewController *)self launchGameAndShowMatch:matchCopy];
  }
}

- (void)showDetailForMatch:(id)match
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (match)
  {
    matchCopy = match;
    v5 = objc_alloc_init(GKTurnBasedMatchDetailViewController);
    [(GKTurnBasedMatchDetailViewController *)v5 setShouldShowPlay:[(GKTurnBasedMatchesViewController *)self showPlay]];
    [(GKTurnBasedMatchDetailViewController *)v5 setShouldShowQuit:[(GKTurnBasedMatchesViewController *)self showQuit]];
    [(GKTurnBasedMatchDetailViewController *)v5 setMatch:matchCopy];
    game = [matchCopy game];

    [(GKTurnBasedMatchDetailViewController *)v5 setGame:game];
    [(GKTurnBasedMatchDetailViewController *)v5 setDelegate:self];
    [(GKTurnBasedMatchDetailViewController *)v5 setIsInGame:[(GKTurnBasedMatchesViewController *)self isInGame]];
    v7 = objc_alloc_init(GKNavigationController);
    v11[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(GKNavigationController *)v7 setViewControllers:v8];

    [(GKNavigationController *)v7 setModalPresentationStyle:1];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    view = [(GKNavigationController *)v7 view];
    [view setTintColor:whiteColor];

    [(GKTurnBasedMatchesViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)presentNavigationControllerInPopover:(id)popover fromCell:(id)cell completion:(id)completion
{
  completionCopy = completion;
  cellCopy = cell;
  popoverCopy = popover;
  [popoverCopy setModalPresentationStyle:7];
  navigationBar = [popoverCopy navigationBar];
  [navigationBar _setHidesShadow:1];

  popoverPresentationController = [popoverCopy popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:15];
  [popoverPresentationController setSourceView:cellCopy];
  popoverSourceView = [cellCopy popoverSourceView];

  [popoverSourceView frame];
  [popoverPresentationController setSourceRect:?];

  [popoverPresentationController setDelegate:self];
  [(GKTurnBasedMatchesViewController *)self presentViewController:popoverCopy animated:1 completion:completionCopy];
}

- (void)dismissDetailViewControllerInPopover:(BOOL)popover completion:(id)completion
{
  popoverCopy = popover;
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__GKTurnBasedMatchesViewController_dismissDetailViewControllerInPopover_completion___block_invoke;
  v8[3] = &unk_27966A4A8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(GKTurnBasedMatchesViewController *)self dismissViewControllerAnimated:popoverCopy completion:v8];
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

- (void)dismissDetailViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {

    [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerInPopover:animatedCopy completion:0];
  }

  else
  {
    presentedViewController = [(GKTurnBasedMatchesViewController *)self presentedViewController];
    [presentedViewController dismissViewControllerAnimated:animatedCopy completion:0];

    [(GKCollectionViewController *)self clearSelectionHighlight];
  }
}

- (void)_gkRestorePopoverWithViewControllers:(id)controllers completion:(id)completion
{
  controllersCopy = controllers;
  completionCopy = completion;
  firstObject = [controllersCopy firstObject];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
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

  [firstObject setPreferredContentSize:{v15, 440.0}];
  gkDataSource = [(GKCollectionViewController *)self gkDataSource];
  _gkRepresentedObject = [firstObject _gkRepresentedObject];
  v18 = [gkDataSource indexPathsForItem:_gkRepresentedObject];
  firstObject2 = [v18 firstObject];

  collectionView = [(GKCollectionViewController *)self collectionView];
  v21 = [collectionView cellForItemAtIndexPath:firstObject2];

  if (v21)
  {
    v22 = objc_alloc_init(GKNavigationController);
    [(GKNavigationController *)v22 setViewControllers:controllersCopy];
    [(GKTurnBasedMatchesViewController *)self presentNavigationControllerInPopover:v22 fromCell:v21 completion:completionCopy];
  }
}

- (void)turnBasedMatchDetailViewControllerDidAcceptInvitation:(id)invitation
{
  match = [invitation match];
  [(GKTurnBasedMatchesViewController *)self acceptInviteForMatch:match];
}

- (void)turnBasedMatchDetailViewControllerDidDeclineInvitation:(id)invitation
{
  invitationCopy = invitation;
  [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerAnimated:1];
  match = [invitationCopy match];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidDeclineInvitation___block_invoke;
  v6[3] = &unk_279669D38;
  v6[4] = self;
  [match declineInviteWithCompletionHandler:v6];
}

- (void)turnBasedMatchDetailViewControllerDidChooseMatch:(id)match
{
  match = [match match];
  internal = [match internal];
  [(GKTurnBasedMatchesViewController *)self showMatch:internal];
}

- (void)turnBasedMatchDetailViewControllerDidQuitMatch:(id)match
{
  matchCopy = match;
  match = [matchCopy match];
  localPlayerParticipant = [match localPlayerParticipant];
  delegate = [(GKTurnBasedMatchesViewController *)self delegate];
  match2 = [matchCopy match];
  isMyTurn = [match2 isMyTurn];

  if (isMyTurn)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidQuitMatch___block_invoke;
    v14[3] = &unk_27966CBE8;
    v15 = matchCopy;
    v16 = match;
    selfCopy = self;
    v18 = delegate;
    [v16 loadMatchDataWithCompletionHandler:v14];
  }

  else
  {
    [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerAnimated:1];
    if ([localPlayerParticipant status] == 4)
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
    [match participantQuitOutOfTurnWithOutcome:1 withCompletionHandler:v13];
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

- (void)turnBasedMatchesDataSource:(id)source didQuitMatch:(id)match
{
  matchCopy = match;
  localPlayerParticipant = [matchCopy localPlayerParticipant];
  delegate = [(GKTurnBasedMatchesViewController *)self delegate];
  if ([matchCopy isMyTurn])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__GKTurnBasedMatchesViewController_turnBasedMatchesDataSource_didQuitMatch___block_invoke;
    v12[3] = &unk_27966CC10;
    v12[4] = self;
    v13 = matchCopy;
    v14 = delegate;
    [v13 loadMatchDataWithCompletionHandler:v12];
  }

  else
  {
    if ([localPlayerParticipant status] == 4)
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
    [matchCopy participantQuitOutOfTurnWithOutcome:1 withCompletionHandler:v11];
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

- (void)turnBasedMatchDetailViewControllerDidRemoveMatch:(id)match
{
  matchCopy = match;
  [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerAnimated:1];
  match = [matchCopy match];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__GKTurnBasedMatchesViewController_turnBasedMatchDetailViewControllerDidRemoveMatch___block_invoke;
  v6[3] = &unk_279669D38;
  v6[4] = self;
  [match removeWithCompletionHandler:v6];
}

- (void)turnBasedMatchDetailViewControllerDidShowStore:(id)store
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    [(GKTurnBasedMatchesViewController *)self dismissDetailViewControllerAnimated:1];
    game = [(GKTurnBasedMatchesViewController *)self game];
    [game openAppStorePage];
  }
}

- (void)handleTurnBasedEvent:(id)event
{
  object = [event object];
  if (-[GKTurnBasedMatchesViewController isInGame](self, "isInGame") && [object isEqualToString:self->_matchIDWaitingForTurnEvent])
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