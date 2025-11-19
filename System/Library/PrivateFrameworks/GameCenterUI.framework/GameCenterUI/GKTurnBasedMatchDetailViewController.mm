@interface GKTurnBasedMatchDetailViewController
- (GKTurnBasedMatchDetailViewController)init;
- (GKTurnBasedMatchDetailViewControllerDelegate)delegate;
- (id)preferredFocusEnvironments;
- (void)acceptInvitation:(id)a3;
- (void)addBackgroundVisualEffect;
- (void)buyButtonPressed:(id)a3;
- (void)chooseMatch:(id)a3;
- (void)configureDataSource;
- (void)configureHeader:(id)a3 indexPath:(id)a4;
- (void)configureMatchDetailHeader:(id)a3;
- (void)configureViewFactories;
- (void)dealloc;
- (void)declineInvitation:(id)a3;
- (void)didUpdateModel;
- (void)handleTurnBasedEvent:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)quitMatch:(id)a3;
- (void)removeMatch:(id)a3;
- (void)setActionButtonEnabled:(BOOL)a3;
- (void)setMatch:(id)a3;
- (void)setupActionButton;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateUIBasedOnTraitCollection;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v4 dealloc];
}

- (void)setMatch:(id)a3
{
  v5 = a3;
  if (self->_match != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_match, a3);
    [(GKTurnBasedMatchDetailViewController *)self didUpdateModel];
    v5 = v6;
  }
}

- (void)configureDataSource
{
  v3 = [(GKCollectionViewController *)self dataSource];

  if (!v3)
  {
    v4 = objc_alloc_init(GKTurnBasedParticipantsDataSource);
    participantsDataSource = self->_participantsDataSource;
    self->_participantsDataSource = v4;

    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = +[GKSectionMetrics metricsForIdiom:](GKSectionMetrics, "metricsForIdiom:", [v6 userInterfaceIdiom]);

    [v7 sectionHeaderHeight];
    self->_initialSectionHeaderHeight = v8;
    [(GKCollectionViewDataSource *)self->_participantsDataSource setDefaultSectionMetrics:v7];
    v9 = +[GKSupplementaryViewMetrics supplementaryMetrics];
    [v9 setKind:@"GKTurnBasedMatchDetailHeaderKind"];
    [v9 setShouldPin:0];
    v10 = [(GKCollectionViewDataSource *)self->_participantsDataSource dataSourceMetrics];
    [v10 insertSupplementaryMetrics:v9 forKey:@"detailHeader" atLocation:0];

    v11 = [(GKTurnBasedMatchDetailViewController *)self participantsDataSource];
    [v11 addObserver:self forKeyPath:@"match" options:1 context:0];

    v12 = [(GKTurnBasedMatchDetailViewController *)self match];
    [(GKTurnBasedParticipantsDataSource *)self->_participantsDataSource setMatch:v12];

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
  v3 = [(GKCollectionViewController *)self collectionView];
  [v3 _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"GKTurnBasedMatchDetailHeaderKind"];

  [(GKCollectionViewDataSource *)self->_participantsDataSource registerSupplementaryViewOfKind:@"GKTurnBasedMatchDetailHeaderKind" withClass:objc_opt_class() target:self configurator:sel_configureMatchDetailHeader_];
  v4 = [(GKCollectionViewController *)self collectionView];
  [v4 _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"SectionHeader"];

  [(GKCollectionViewDataSource *)self->_participantsDataSource registerSupplementaryViewOfKind:@"SectionHeader" withClass:objc_opt_class() target:self configurator:sel_configureHeader_indexPath_];
}

- (void)configureMatchDetailHeader:(id)a3
{
  v4 = a3;
  [(GKTurnBasedMatchDetailViewController *)self setHeaderView:v4];
  [v4 setActionTarget:self];

  [(GKTurnBasedMatchDetailViewController *)self updateUIBasedOnTraitCollection];

  [(GKTurnBasedMatchDetailViewController *)self didUpdateModel];
}

- (void)configureHeader:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(GKTurnBasedMatchDetailViewController *)self participantsDataSource];
  v7 = [v6 sectionTitle];
  v8 = [v7 localizedUppercaseString];
  [v5 setLeftText:v8];

  v9 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76968] symbolicTraits:2];
  v10 = [v5 leftLabel];
  [v10 setFont:v9];

  v11 = [v5 leftLabel];
  v12 = [v11 textColor];
  v13 = [v12 colorWithAlphaComponent:0.600000024];
  v14 = [v5 leftLabel];
  [v14 setTextColor:v13];

  v15 = *MEMORY[0x277CDA5E8];
  v16 = [v5 leftLabel];
  v17 = [v16 layer];
  [v17 setCompositingFilter:v15];

  v18 = [v5 underlineView];

  [v18 setHidden:1];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqual:{@"match", a4, a5, a6}])
  {
    v8 = [(GKTurnBasedMatchDetailViewController *)self participantsDataSource];
    v7 = [v8 match];
    [(GKTurnBasedMatchDetailViewController *)self setMatch:v7];
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v13 viewDidLoad];
  v3 = [(GKTurnBasedMatchDetailViewController *)self navigationController];
  [v3 makeNavigationBarBackgroundTranslucent];

  v4 = [(GKCollectionViewController *)self collectionView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(GKCollectionViewController *)self collectionView];
  [v5 setShowsVerticalScrollIndicator:0];

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  v7 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  v8 = [(GKTurnBasedMatchDetailViewController *)self match];
  v9 = [v8 matchTitle];
  v10 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  [v10 setTitle:v9];

  v11 = [(GKTurnBasedMatchDetailViewController *)self match];
  v12 = [v11 matchTitle];
  [(GKTurnBasedMatchDetailViewController *)self setTitle:v12];

  [(GKTurnBasedMatchDetailViewController *)self addBackgroundVisualEffect];
}

- (void)addBackgroundVisualEffect
{
  v22 = objc_alloc_init(MEMORY[0x277D75D68]);
  v3 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v22 setBackgroundEffects:v3];

  v4 = [(GKTurnBasedMatchDetailViewController *)self view];
  [v4 bounds];
  [v22 setFrame:?];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(GKTurnBasedMatchDetailViewController *)self view];
  [v5 insertSubview:v22 atIndex:0];

  v6 = [v22 topAnchor];
  v7 = [(GKTurnBasedMatchDetailViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v22 bottomAnchor];
  v11 = [(GKTurnBasedMatchDetailViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v22 leadingAnchor];
  v15 = [(GKTurnBasedMatchDetailViewController *)self view];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v22 trailingAnchor];
  v19 = [(GKTurnBasedMatchDetailViewController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v4 viewWillAppear:a3];
  [(GKTurnBasedMatchDetailViewController *)self didUpdateModel];
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:1];
  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setLabelAlpha:1.0];
  [(GKTurnBasedMatchDetailViewController *)self updateUIBasedOnTraitCollection];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKTurnBasedMatchDetailViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [(GKTurnBasedMatchDetailViewController *)self _gkConfigureFocusGuidesForNavigationBar:v6];

  v7 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v7 addObserver:self selector:sel_handleTurnBasedEvent_ name:*MEMORY[0x277D0BB70] object:0];

  v8.receiver = self;
  v8.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v8 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v6 viewWillDisappear:v3];
}

- (void)updateUIBasedOnTraitCollection
{
  v3 = [(GKTurnBasedMatchDetailViewController *)self traitCollection];
  v4 = [v3 verticalSizeClass];

  v5 = [(GKCollectionViewController *)self collectionView];
  [v5 _gkRemoveAllConstraints];

  v6 = [(GKCollectionViewController *)self collectionView];
  v7 = v6;
  if (v4 == 1)
  {
    v8 = [v6 widthAnchor];
    v9 = [v8 constraintEqualToConstant:500.0];
    [v9 setActive:1];
  }

  else
  {
    v10 = [v6 leftAnchor];
    v11 = [(GKTurnBasedMatchDetailViewController *)self view];
    v12 = [v11 leftAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:16.0];
    [v13 setActive:1];

    v7 = [(GKCollectionViewController *)self collectionView];
    v8 = [v7 rightAnchor];
    v9 = [(GKTurnBasedMatchDetailViewController *)self view];
    v14 = [v9 rightAnchor];
    v15 = [v8 constraintEqualToAnchor:v14 constant:-16.0];
    [v15 setActive:1];
  }

  v16 = [(GKCollectionViewController *)self collectionView];
  v17 = [v16 centerXAnchor];
  v18 = [(GKTurnBasedMatchDetailViewController *)self view];
  v19 = [v18 centerXAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(GKCollectionViewController *)self collectionView];
  v22 = [v21 topAnchor];
  v23 = [(GKTurnBasedMatchDetailViewController *)self view];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [(GKCollectionViewController *)self collectionView];
  v27 = [v26 bottomAnchor];
  v28 = [(GKTurnBasedMatchDetailViewController *)self view];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(GKCollectionViewController *)self collectionView];
  [v31 setNeedsLayout];

  v42 = [(GKCollectionViewDataSource *)self->_participantsDataSource defaultSectionMetrics];
  +[GKTurnParticipantCell defaultRowHeight];
  v33 = v32;
  v34 = [(GKTurnBasedMatchDetailViewController *)self traitCollection];
  v35 = [v34 preferredContentSizeCategory];
  LODWORD(v28) = UIContentSizeCategoryIsAccessibilityCategory(v35);

  if (v28)
  {
    v33 = v33 * 1.7;
    [v42 setSectionHeadersShouldPin:0];
  }

  v36 = [MEMORY[0x277D75520] defaultMetrics];
  [v36 scaledValueForValue:v33];
  [v42 setDesiredItemHeight:?];

  [v42 setItemHeightList:0];
  v37 = [MEMORY[0x277D75520] defaultMetrics];
  [v37 scaledValueForValue:self->_initialSectionHeaderHeight];
  [v42 setSectionHeaderHeight:?];

  v38 = [(GKCollectionViewDataSource *)self->_participantsDataSource dataSourceMetrics];
  v39 = [v38 supplementaryMetricsForKey:@"detailHeader"];

  v40 = [MEMORY[0x277D75520] defaultMetrics];
  [v40 scaledValueForValue:255.0];
  [v39 setDesiredHeight:?];

  v41 = [(GKCollectionViewDataSource *)self->_participantsDataSource dataSourceMetrics];
  [v41 replaceSupplementaryMetrics:v39 forKey:@"detailHeader"];

  [(GKCollectionViewController *)self _gkSetContentsNeedUpdateWithHandler:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchDetailViewController;
  [(GKCollectionViewController *)&v4 traitCollectionDidChange:a3];
  [(GKTurnBasedMatchDetailViewController *)self updateUIBasedOnTraitCollection];
}

- (void)didUpdateModel
{
  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setMatch:self->_match];
  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setActionSelector:0];
  [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setInfoText:0];
  if (![(GKGame *)self->_game isInstalled])
  {
    v4 = [MEMORY[0x277D0C1D8] shared];
    v5 = [v4 isAppInstallationRestricted];

    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = GKGameCenterUIFrameworkBundle();
      v8 = GKGetLocalizedStringFromTableInBundle();
      v9 = [(GKTurnBasedMatchDetailViewController *)self game];
      v10 = [v9 name];
      v11 = [v6 stringWithFormat:v8, v10];
      [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setInfoText:v11];

      goto LABEL_12;
    }

    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    [(GKTurnBasedMatchDetailHeaderView *)self->_headerView setActionText:v13];

    v14 = sel_buyButtonPressed_;
    goto LABEL_11;
  }

  v3 = [(GKTurnBasedMatch *)self->_match state];
  if (v3 > 3)
  {
    if (v3 == 4 || v3 == 5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if ((v3 - 2) < 2)
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

    if (v3 == 1)
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
    v19 = [(GKTurnBasedMatchDetailHeaderView *)self->_headerView actionButton];
    [v19 setHidden:1];
  }
}

- (void)setupActionButton
{
  v3 = [(GKTurnBasedMatch *)self->_match state];
  if (v3 > 3)
  {
    if (v3 == 4)
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

    if (v3 == 5)
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

  if ((v3 - 2) >= 2)
  {
    if (v3 == 1)
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
    v9 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
    [v9 setRightBarButtonItem:0];
    goto LABEL_18;
  }

LABEL_16:
  v11 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  v13 = [v12 title];
  v14 = [v13 isEqualToString:v16];

  if (v14)
  {
    goto LABEL_19;
  }

  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v16 style:0 target:self action:v5];
  v15 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  [v15 setRightBarButtonItem:v9];

LABEL_18:
LABEL_19:
}

- (void)setActionButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKTurnBasedMatchDetailViewController *)self navigationItem];
  v4 = [v5 rightBarButtonItem];
  [v4 setEnabled:v3];
}

- (void)acceptInvitation:(id)a3
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  v4 = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [v4 turnBasedMatchDetailViewControllerDidAcceptInvitation:self];
}

- (void)declineInvitation:(id)a3
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  v4 = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [v4 turnBasedMatchDetailViewControllerDidDeclineInvitation:self];
}

- (void)chooseMatch:(id)a3
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  v4 = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [v4 turnBasedMatchDetailViewControllerDidChooseMatch:self];
}

- (void)quitMatch:(id)a3
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  v4 = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [v4 turnBasedMatchDetailViewControllerDidQuitMatch:self];
}

- (void)removeMatch:(id)a3
{
  [(GKTurnBasedMatchDetailViewController *)self setActionButtonEnabled:0];
  v4 = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [v4 turnBasedMatchDetailViewControllerDidRemoveMatch:self];
}

- (void)handleTurnBasedEvent:(id)a3
{
  v6 = [a3 object];
  v4 = [(GKTurnBasedMatch *)self->_match matchID];
  v5 = [v6 isEqual:v4];

  if (v5)
  {
    [(GKCollectionViewController *)self setNeedsReload];
  }
}

- (void)buyButtonPressed:(id)a3
{
  v4 = [(GKTurnBasedMatchDetailViewController *)self delegate];
  [v4 turnBasedMatchDetailViewControllerDidShowStore:self];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(GKTurnBasedMatchDetailViewController *)self headerView];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (GKTurnBasedMatchDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateWeak);

  return WeakRetained;
}

@end