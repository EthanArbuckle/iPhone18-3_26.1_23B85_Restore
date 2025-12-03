@interface GKTurnBasedMatchDetailViewController
- (GKTurnBasedMatchDetailViewController)init;
- (GKTurnBasedMatchDetailViewControllerDelegate)delegate;
- (id)preferredFocusEnvironments;
- (void)acceptInvitation:(id)invitation;
- (void)addBackgroundVisualEffect;
- (void)buyButtonPressed:(id)pressed;
- (void)chooseMatch:(id)match;
- (void)configureDataSource;
- (void)configureHeader:(id)header indexPath:(id)path;
- (void)configureMatchDetailHeader:(id)header;
- (void)configureViewFactories;
- (void)dealloc;
- (void)declineInvitation:(id)invitation;
- (void)didUpdateModel;
- (void)handleTurnBasedEvent:(id)event;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)quitMatch:(id)match;
- (void)removeMatch:(id)match;
- (void)setActionButtonEnabled:(BOOL)enabled;
- (void)setMatch:(id)match;
- (void)setupActionButton;
- (void)traitCollectionDidChange:(id)change;
- (void)updateUIBasedOnTraitCollection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation GKTurnBasedMatchDetailViewController

- (GKTurnBasedMatchDetailViewController)init
{
  v3 = objc_alloc_init(GKGridLayout);
  v6.receiver = self;
  v6.super_class = GKTurnBasedMatchDetailViewController;
  v4 = [(GKCollectionViewController *)&v6 initWithCollectionViewLayout:v3];

  if (v4)
  {
    [(GKTurnBasedMatchDetailViewController *)v4 setRestorationClass:objc_opt_class()];
    [(GKTurnBasedMatchDetailViewController *)v4 setRestorationIdentifier:@"TurnBasedMatchDetail"];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v4 dealloc];
}

- (void)setMatch:(id)match
{
  matchCopy = match;
  if (self->_match != matchCopy)
  {
    v6 = matchCopy;
    objc_storeStrong(&self->_match, match);
    [(GKTurnBasedMatchDetailViewController *)self didUpdateModel];
    matchCopy = v6;
  }
}

- (void)configureDataSource
{
  dataSource = [(GKCollectionViewController *)self dataSource];

  if (!dataSource)
  {
    v4 = objc_alloc_init(GKTurnBasedParticipantsDataSource);
    participantsDataSource = self->_participantsDataSource;
    self->_participantsDataSource = v4;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v7 = +[GKSectionMetrics metricsForIdiom:](GKSectionMetrics, "metricsForIdiom:", [currentDevice userInterfaceIdiom]);

    [v7 sectionHeaderHeight];
    self->_initialSectionHeaderHeight = v8;
    [(GKCollectionViewDataSource *)self->_participantsDataSource setDefaultSectionMetrics:v7];
    v9 = +[GKSupplementaryViewMetrics supplementaryMetrics];
    [v9 setKind:@"GKTurnBasedMatchDetailHeaderKind"];
    [v9 setShouldPin:0];
    dataSourceMetrics = [(GKCollectionViewDataSource *)self->_participantsDataSource dataSourceMetrics];
    [dataSourceMetrics insertSupplementaryMetrics:v9 forKey:@"detailHeader" atLocation:0];

    participantsDataSource = [(GKTurnBasedMatchDetailViewController *)self participantsDataSource];
    [participantsDataSource addObserver:self forKeyPath:@"match" options:1 context:0];

    match = [(GKTurnBasedMatchDetailViewController *)self match];
    [(GKTurnBasedParticipantsDataSource *)self->_participantsDataSource setMatch:match];

    [(GKBasicCollectionViewController *)self setDataSource:self->_participantsDataSource];
    v13.receiver = self;
    v13.super_class = GKTurnBasedMatchDetailViewController;
    [(GKBasicCollectionViewController *)&v13 configureDataSource];
  }
}

- (void)configureViewFactories
{
  v5.receiver = self;
  v5.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v5 configureViewFactories];
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"GKTurnBasedMatchDetailHeaderKind"];

  [(GKCollectionViewDataSource *)self->_participantsDataSource registerSupplementaryViewOfKind:@"GKTurnBasedMatchDetailHeaderKind" withClass:objc_opt_class() target:self configurator:sel_configureMatchDetailHeader_];
  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"SectionHeader"];

  [(GKCollectionViewDataSource *)self->_participantsDataSource registerSupplementaryViewOfKind:@"SectionHeader" withClass:objc_opt_class() target:self configurator:sel_configureHeader_indexPath_];
}

- (void)configureMatchDetailHeader:(id)header
{
  headerCopy = header;
  [(GKTurnBasedMatchDetailViewController *)self setHeaderView:headerCopy];
  [headerCopy setActionTarget:self];

  [(GKTurnBasedMatchDetailViewController *)self updateUIBasedOnTraitCollection];

  [(GKTurnBasedMatchDetailViewController *)self didUpdateModel];
}

- (void)configureHeader:(id)header indexPath:(id)path
{
  headerCopy = header;
  participantsDataSource = [(GKTurnBasedMatchDetailViewController *)self participantsDataSource];
  sectionTitle = [participantsDataSource sectionTitle];
  localizedUppercaseString = [sectionTitle localizedUppercaseString];
  [headerCopy setLeftText:localizedUppercaseString];

  v9 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76968] symbolicTraits:2];
  leftLabel = [headerCopy leftLabel];
  [leftLabel setFont:v9];

  leftLabel2 = [headerCopy leftLabel];
  textColor = [leftLabel2 textColor];
  v13 = [textColor colorWithAlphaComponent:0.600000024];
  leftLabel3 = [headerCopy leftLabel];
  [leftLabel3 setTextColor:v13];

  v15 = *MEMORY[0x277CDA5E8];
  leftLabel4 = [headerCopy leftLabel];
  layer = [leftLabel4 layer];
  [layer setCompositingFilter:v15];

  underlineView = [headerCopy underlineView];

  [underlineView setHidden:1];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqual:{@"match", object, change, context}])
  {
    participantsDataSource = [(GKTurnBasedMatchDetailViewController *)self participantsDataSource];
    match = [participantsDataSource match];
    [(GKTurnBasedMatchDetailViewController *)self setMatch:match];
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v13 viewDidLoad];
  navigationController = [(GKTurnBasedMatchDetailViewController *)self navigationController];
  [navigationController makeNavigationBarBackgroundTranslucent];

  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 setShowsVerticalScrollIndicator:0];

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  navigationItem = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  match = [(GKTurnBasedMatchDetailViewController *)self match];
  matchTitle = [match matchTitle];
  navigationItem2 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  [navigationItem2 setTitle:matchTitle];

  match2 = [(GKTurnBasedMatchDetailViewController *)self match];
  matchTitle2 = [match2 matchTitle];
  [(GKTurnBasedMatchDetailViewController *)self setTitle:matchTitle2];

  [(GKTurnBasedMatchDetailViewController *)self addBackgroundVisualEffect];
}

- (void)addBackgroundVisualEffect
{
  v22 = objc_alloc_init(MEMORY[0x277D75D68]);
  _gkGameLayerBackgroundVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v22 setBackgroundEffects:_gkGameLayerBackgroundVisualEffect];

  view = [(GKTurnBasedMatchDetailViewController *)self view];
  [view bounds];
  [v22 setFrame:?];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(GKTurnBasedMatchDetailViewController *)self view];
  [view2 insertSubview:v22 atIndex:0];

  topAnchor = [v22 topAnchor];
  view3 = [(GKTurnBasedMatchDetailViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  bottomAnchor = [v22 bottomAnchor];
  view4 = [(GKTurnBasedMatchDetailViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v13 setActive:1];

  leadingAnchor = [v22 leadingAnchor];
  view5 = [(GKTurnBasedMatchDetailViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v17 setActive:1];

  trailingAnchor = [v22 trailingAnchor];
  view6 = [(GKTurnBasedMatchDetailViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v21 setActive:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v4 viewWillAppear:appear];
  [(GKTurnBasedMatchDetailViewController *)self didUpdateModel];
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:1];
  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setLabelAlpha:1.0];
  [(GKTurnBasedMatchDetailViewController *)self updateUIBasedOnTraitCollection];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationController = [(GKTurnBasedMatchDetailViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [(GKTurnBasedMatchDetailViewController *)self _gkConfigureFocusGuidesForNavigationBar:navigationBar];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleTurnBasedEvent_ name:*MEMORY[0x277D0BB70] object:0];

  v8.receiver = self;
  v8.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v8 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)updateUIBasedOnTraitCollection
{
  traitCollection = [(GKTurnBasedMatchDetailViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView _gkRemoveAllConstraints];

  collectionView2 = [(GKCollectionViewController *)self collectionView];
  collectionView3 = collectionView2;
  if (verticalSizeClass == 1)
  {
    widthAnchor = [collectionView2 widthAnchor];
    view2 = [widthAnchor constraintEqualToConstant:500.0];
    [view2 setActive:1];
  }

  else
  {
    leftAnchor = [collectionView2 leftAnchor];
    view = [(GKTurnBasedMatchDetailViewController *)self view];
    leftAnchor2 = [view leftAnchor];
    v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:16.0];
    [v13 setActive:1];

    collectionView3 = [(GKCollectionViewController *)self collectionView];
    widthAnchor = [collectionView3 rightAnchor];
    view2 = [(GKTurnBasedMatchDetailViewController *)self view];
    rightAnchor = [view2 rightAnchor];
    v15 = [widthAnchor constraintEqualToAnchor:rightAnchor constant:-16.0];
    [v15 setActive:1];
  }

  collectionView4 = [(GKCollectionViewController *)self collectionView];
  centerXAnchor = [collectionView4 centerXAnchor];
  view3 = [(GKTurnBasedMatchDetailViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v20 setActive:1];

  collectionView5 = [(GKCollectionViewController *)self collectionView];
  topAnchor = [collectionView5 topAnchor];
  view4 = [(GKTurnBasedMatchDetailViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v25 setActive:1];

  collectionView6 = [(GKCollectionViewController *)self collectionView];
  bottomAnchor = [collectionView6 bottomAnchor];
  view5 = [(GKTurnBasedMatchDetailViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v30 setActive:1];

  collectionView7 = [(GKCollectionViewController *)self collectionView];
  [collectionView7 setNeedsLayout];

  defaultSectionMetrics = [(GKCollectionViewDataSource *)self->_participantsDataSource defaultSectionMetrics];
  +[GKTurnParticipantCell defaultRowHeight];
  v33 = v32;
  traitCollection2 = [(GKTurnBasedMatchDetailViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  LODWORD(view5) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (view5)
  {
    v33 = v33 * 1.7;
    [defaultSectionMetrics setSectionHeadersShouldPin:0];
  }

  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:v33];
  [defaultSectionMetrics setDesiredItemHeight:?];

  [defaultSectionMetrics setItemHeightList:0];
  defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics2 scaledValueForValue:self->_initialSectionHeaderHeight];
  [defaultSectionMetrics setSectionHeaderHeight:?];

  dataSourceMetrics = [(GKCollectionViewDataSource *)self->_participantsDataSource dataSourceMetrics];
  v39 = [dataSourceMetrics supplementaryMetricsForKey:@"detailHeader"];

  defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics3 scaledValueForValue:255.0];
  [v39 setDesiredHeight:?];

  dataSourceMetrics2 = [(GKCollectionViewDataSource *)self->_participantsDataSource dataSourceMetrics];
  [dataSourceMetrics2 replaceSupplementaryMetrics:v39 forKey:@"detailHeader"];

  [(GKCollectionViewController *)self _gkSetContentsNeedUpdateWithHandler:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v4 traitCollectionDidChange:change];
  [(GKTurnBasedMatchDetailViewController *)self updateUIBasedOnTraitCollection];
}

- (void)didUpdateModel
{
  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setMatch:self->_match];
  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setActionSelector:0];
  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setInfoText:0];
  if (![(GKGame *)self->_game isInstalled])
  {
    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    isAppInstallationRestricted = [mEMORY[0x277D0C1D8] isAppInstallationRestricted];

    if (isAppInstallationRestricted)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = GKGameCenterUIFrameworkBundle();
      v8 = GKGetLocalizedStringFromTableInBundle();
      game = [(GKTurnBasedMatchDetailViewController *)self game];
      name = [game name];
      v11 = [v6 stringWithFormat:v8, name];
      [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setInfoText:v11];

      goto LABEL_12;
    }

    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setActionText:v13];

    v14 = sel_buyButtonPressed_;
    goto LABEL_11;
  }

  state = [(GKTurnBasedMatch *)self->_match state];
  if (state > 3)
  {
    if (state == 4 || state == 5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if ((state - 2) < 2)
    {
LABEL_10:
      v15 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();
      [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setActionText:v16];

      v14 = sel_chooseMatch_;
LABEL_11:
      [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setActionSelector:v14];
      goto LABEL_12;
    }

    if (state == 1)
    {
      v17 = GKGameCenterUIFrameworkBundle();
      v18 = GKGetLocalizedStringFromTableInBundle();
      [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setActionText:v18];

      v14 = sel_acceptInvitation_;
      goto LABEL_11;
    }
  }

  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setActionText:&stru_28612D290];
LABEL_12:
  [(GKTurnBasedMatchDetailViewController *)self setupActionButton];
  if (!self->_shouldShowPlay)
  {
    actionButton = [(GKTurnBasedMatchDetailHeaderView *)self->_headerView actionButton];
    [actionButton setHidden:1];
  }
}

- (void)setupActionButton
{
  state = [(GKTurnBasedMatch *)self->_match state];
  if (state > 3)
  {
    if (state == 4)
    {
      v8 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();

      v5 = sel_quitMatch_;
      if (!self->_isInGame)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (state == 5)
    {
      v6 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();

      goto LABEL_8;
    }

LABEL_15:
    v10 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();

    v5 = 0;
    goto LABEL_16;
  }

  if ((state - 2) >= 2)
  {
    if (state == 1)
    {
      v7 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();

      v5 = sel_declineInvitation_;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v4 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();

  if (!self->_isInGame)
  {
LABEL_8:
    v5 = sel_removeMatch_;
    goto LABEL_16;
  }

  v5 = sel_quitMatch_;
LABEL_12:
  if (!self->_shouldShowQuit && ([(GKTurnBasedMatch *)self->_match isMyTurn]& 1) != 0)
  {
    navigationItem = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
    goto LABEL_18;
  }

LABEL_16:
  navigationItem2 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  title = [rightBarButtonItem title];
  v14 = [title isEqualToString:v16];

  if (v14)
  {
    goto LABEL_19;
  }

  navigationItem = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v16 style:0 target:self action:v5];
  navigationItem3 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:navigationItem];

LABEL_18:
LABEL_19:
}

- (void)setActionButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (void)acceptInvitation:(id)invitation
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  delegate = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [delegate turnBasedMatchDetailViewControllerDidAcceptInvitation:self];
}

- (void)declineInvitation:(id)invitation
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  delegate = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [delegate turnBasedMatchDetailViewControllerDidDeclineInvitation:self];
}

- (void)chooseMatch:(id)match
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  delegate = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [delegate turnBasedMatchDetailViewControllerDidChooseMatch:self];
}

- (void)quitMatch:(id)match
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  delegate = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [delegate turnBasedMatchDetailViewControllerDidQuitMatch:self];
}

- (void)removeMatch:(id)match
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  delegate = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [delegate turnBasedMatchDetailViewControllerDidRemoveMatch:self];
}

- (void)handleTurnBasedEvent:(id)event
{
  object = [event object];
  matchID = [(GKTurnBasedMatch *)self->_match matchID];
  v5 = [object isEqual:matchID];

  if (v5)
  {
    [(GKCollectionViewController *)self setNeedsReload];
  }
}

- (void)buyButtonPressed:(id)pressed
{
  delegate = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [delegate turnBasedMatchDetailViewControllerDidShowStore:self];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  headerView = [(GKTurnBasedMatchDetailViewController *)self headerView];
  v5[0] = headerView;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (GKTurnBasedMatchDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateWeak);

  return WeakRetained;
}

@end