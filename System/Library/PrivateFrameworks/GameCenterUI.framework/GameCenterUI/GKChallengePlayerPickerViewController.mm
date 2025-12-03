@interface GKChallengePlayerPickerViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (GKChallengePlayerPickerViewController)initWithChallenge:(id)challenge initiallySelectedPlayers:(id)players;
- (id)preferredFocusEnvironments;
- (void)addMessage:(id)message;
- (void)applyInitialContentOffset;
- (void)cancel:(id)cancel;
- (void)clearSelection;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureButtonsFocusEffect;
- (void)configureCollectionView;
- (void)configureFocusGuides;
- (void)dataUpdated:(BOOL)updated withError:(id)error;
- (void)dealloc;
- (void)loadData;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)scrollViewDidScroll:(id)scroll;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)selectPlayersAtIndexPaths:(id)paths;
- (void)send:(id)send;
- (void)setMessage:(id)message;
- (void)setSearchText:(id)text;
- (void)setupNoContentView:(id)view withError:(id)error;
- (void)traitCollectionDidChange:(id)change;
- (void)updateButtonEnableState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation GKChallengePlayerPickerViewController

- (GKChallengePlayerPickerViewController)initWithChallenge:(id)challenge initiallySelectedPlayers:(id)players
{
  challengeCopy = challenge;
  playersCopy = players;
  _gkPlatformNibName = [objc_opt_class() _gkPlatformNibName];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15.receiver = self;
  v15.super_class = GKChallengePlayerPickerViewController;
  v10 = [(GKDashboardCollectionViewController *)&v15 initWithNibName:_gkPlatformNibName bundle:v9];

  if (v10)
  {
    [(GKChallengePlayerPickerViewController *)v10 setChallenge:challengeCopy];
    [(GKChallengePlayerPickerViewController *)v10 setInitiallySelectedPlayers:playersCopy];
    v11 = [[GKDashboardChallengePlayerPickerDataSource alloc] initWithChallenge:challengeCopy];
    [(GKDashboardChallengePlayerPickerDataSource *)v11 setShowingFriendSuggestions:1];
    [(GKDashboardCollectionViewController *)v10 setDataSource:v11];
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    [(GKChallengePlayerPickerViewController *)v10 setTitle:v13];

    [(GKLoadingViewController *)v10 setLoadingIndicatorDelay:0.0];
  }

  return v10;
}

- (void)dealloc
{
  daemonProxy = [MEMORY[0x277D0C010] daemonProxy];
  [daemonProxy removeDataUpdateDelegate:self];

  v4.receiver = self;
  v4.super_class = GKChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = GKChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v47 viewDidLoad];
  daemonProxy = [MEMORY[0x277D0C010] daemonProxy];
  [daemonProxy addDataUpdateDelegate:self];

  objc_initWeak(&location, self);
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __52__GKChallengePlayerPickerViewController_viewDidLoad__block_invoke;
  v44 = &unk_27966A1C0;
  objc_copyWeak(&v45, &location);
  [dataSource setInviteFriendHandler:&v41];

  v5 = [(GKChallengePlayerPickerViewController *)self searchBar:v41];
  [v5 setShowsCancelButton:0];

  navigationItem = [(GKChallengePlayerPickerViewController *)self navigationItem];
  [navigationItem _setAutoScrollEdgeTransitionDistance:40.0];

  navigationItem2 = [(GKChallengePlayerPickerViewController *)self navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  title = [(GKChallengePlayerPickerViewController *)self title];
  navigationItem3 = [(GKChallengePlayerPickerViewController *)self navigationItem];
  [navigationItem3 setTitle:title];

  [(GKChallengePlayerPickerViewController *)self setOverrideUserInterfaceStyle:2];
  navigationController = [(GKChallengePlayerPickerViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  detailGoalText = [(GKChallenge *)self->_challenge detailGoalText];
  [(UILabel *)self->_descriptionLabel setText:detailGoalText];

  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [(GKDashboardCollectionViewController *)self setToHorizontalLayout:0];
  [(GKDashboardCollectionViewController *)self setAutoWidthUsesTwoColumnsWhenSpace:0];
  collectionViewLayout = [collectionView collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [collectionViewLayout setCentersItemsInExcessSpace:1];
    [collectionViewLayout setFocusScaleFactor:1.0];
  }

  [collectionView setDelegate:self];
  [collectionView setClipsToBounds:1];
  if (self->_scrollingHeaderTopConstraint)
  {
    [(GKChallengePlayerPickerViewController *)self setShouldApplyInitialOffset:1];
    [collectionView contentInset];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(UIView *)self->_scrollingHeader bounds];
    [collectionView setContentInset:{v20, v15, v17, v19}];
  }

  if (!self->_sendButton)
  {
    v21 = objc_alloc(MEMORY[0x277D751E0]);
    v22 = GKGameCenterUIFrameworkBundle();
    v23 = GKGetLocalizedStringFromTableInBundle();
    v24 = [v21 initWithTitle:v23 style:2 target:self action:sel_send_];
    navigationItem4 = [(GKChallengePlayerPickerViewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:v24];
  }

  [(GKChallengePlayerPickerViewController *)self configureCollectionView];
  title2 = [(GKChallengePlayerPickerViewController *)self title];
  titleLabel = [(GKChallengePlayerPickerViewController *)self titleLabel];
  [titleLabel setText:title2];

  v28 = GKGameCenterUIFrameworkBundle();
  v29 = GKGetLocalizedStringFromTableInBundle();
  searchBar = [(GKChallengePlayerPickerViewController *)self searchBar];
  [searchBar setPlaceholder:v29];

  searchBar2 = [(GKChallengePlayerPickerViewController *)self searchBar];
  cancelButton = [searchBar2 cancelButton];
  v33 = GKGameCenterUIFrameworkBundle();
  v34 = GKGetLocalizedStringFromTableInBundle();
  [cancelButton setTitle:v34 forState:0];

  sendButton = [(GKChallengePlayerPickerViewController *)self sendButton];
  v36 = GKGameCenterUIFrameworkBundle();
  v37 = GKGetLocalizedStringFromTableInBundle();
  [sendButton setTitle:v37 forState:0];

  cancelButton2 = [(GKChallengePlayerPickerViewController *)self cancelButton];
  v39 = GKGameCenterUIFrameworkBundle();
  v40 = GKGetLocalizedStringFromTableInBundle();
  [cancelButton2 setTitle:v40 forState:0];

  [(GKChallengePlayerPickerViewController *)self updateButtonEnableState];
  [(GKChallengePlayerPickerViewController *)self configureButtonsFocusEffect];
  [(GKChallengePlayerPickerViewController *)self configureFocusGuides];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);
}

void __52__GKChallengePlayerPickerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained inviteFriendHandler];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 inviteFriendHandler];
    (v6)[2](v6, v7);
  }
}

- (void)configureButtonsFocusEffect
{
  sendButton = [(GKChallengePlayerPickerViewController *)self sendButton];
  [sendButton bounds];
  v22 = CGRectInset(v21, -8.0, -4.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;

  v8 = *MEMORY[0x277CDA138];
  v9 = [MEMORY[0x277D75508] effectWithRoundedRect:*MEMORY[0x277CDA138] cornerRadius:x curve:{y, width, height, 8.0}];
  sendButton2 = [(GKChallengePlayerPickerViewController *)self sendButton];
  [sendButton2 setFocusEffect:v9];

  cancelButton = [(GKChallengePlayerPickerViewController *)self cancelButton];
  [cancelButton bounds];
  v24 = CGRectInset(v23, -8.0, -4.0);
  v12 = v24.origin.x;
  v13 = v24.origin.y;
  v14 = v24.size.width;
  v15 = v24.size.height;

  v16 = [MEMORY[0x277D75508] effectWithRoundedRect:v8 cornerRadius:v12 curve:{v13, v14, v15, 8.0}];
  cancelButton2 = [(GKChallengePlayerPickerViewController *)self cancelButton];
  [cancelButton2 setFocusEffect:v16];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  view = [(GKChallengePlayerPickerViewController *)self view];
  [view setTintColor:whiteColor];
}

- (void)configureFocusGuides
{
  v52[1] = *MEMORY[0x277D85DE8];
  cancelButton = [(GKChallengePlayerPickerViewController *)self cancelButton];

  if (cancelButton)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75500]);
    cancelButton2 = [(GKChallengePlayerPickerViewController *)self cancelButton];
    v52[0] = cancelButton2;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    [v4 setPreferredFocusEnvironments:v6];

    view = [(GKChallengePlayerPickerViewController *)self view];
    [view addLayoutGuide:v4];

    v33 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v4 leadingAnchor];
    view2 = [(GKChallengePlayerPickerViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v41;
    trailingAnchor = [v4 trailingAnchor];
    view3 = [(GKChallengePlayerPickerViewController *)self view];
    centerXAnchor = [view3 centerXAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:centerXAnchor];
    v51[1] = v31;
    topAnchor = [v4 topAnchor];
    view4 = [(GKChallengePlayerPickerViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[2] = v9;
    bottomAnchor = [v4 bottomAnchor];
    view5 = [(GKChallengePlayerPickerViewController *)self view];
    topAnchor3 = [view5 topAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:1.0];
    v51[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    [v33 activateConstraints:v14];
  }

  sendButton = [(GKChallengePlayerPickerViewController *)self sendButton];

  if (sendButton)
  {
    v16 = objc_alloc_init(MEMORY[0x277D75500]);
    sendButton2 = [(GKChallengePlayerPickerViewController *)self sendButton];
    v50 = sendButton2;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    [v16 setPreferredFocusEnvironments:v18];

    view6 = [(GKChallengePlayerPickerViewController *)self view];
    [view6 addLayoutGuide:v16];

    v34 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [v16 leadingAnchor];
    view7 = [(GKChallengePlayerPickerViewController *)self view];
    centerXAnchor2 = [view7 centerXAnchor];
    v42 = [leadingAnchor3 constraintEqualToAnchor:centerXAnchor2];
    v49[0] = v42;
    trailingAnchor2 = [v16 trailingAnchor];
    view8 = [(GKChallengePlayerPickerViewController *)self view];
    trailingAnchor3 = [view8 trailingAnchor];
    v32 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v49[1] = v32;
    topAnchor4 = [v16 topAnchor];
    view9 = [(GKChallengePlayerPickerViewController *)self view];
    topAnchor5 = [view9 topAnchor];
    v23 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v49[2] = v23;
    bottomAnchor2 = [v16 bottomAnchor];
    view10 = [(GKChallengePlayerPickerViewController *)self view];
    topAnchor6 = [view10 topAnchor];
    v27 = [bottomAnchor2 constraintEqualToAnchor:topAnchor6 constant:1.0];
    v49[3] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [v34 activateConstraints:v28];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = GKChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v14 viewWillAppear:appear];
  [(GKChallengePlayerPickerViewController *)self applyInitialContentOffset];
  [(GKChallengePlayerPickerViewController *)self setShouldApplyInitialOffset:0];
  navigationController = [(GKChallengePlayerPickerViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v6 = [viewControllers count];

  if (v6 == 1)
  {
    navigationItem = [(GKChallengePlayerPickerViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];

    if (!leftBarButtonItem)
    {
      v9 = objc_alloc(MEMORY[0x277D751E0]);
      v10 = GKGameCenterUIFrameworkBundle();
      v11 = GKGetLocalizedStringFromTableInBundle();
      v12 = [v9 initWithTitle:v11 style:0 target:self action:sel_cancel_];
      navigationItem2 = [(GKChallengePlayerPickerViewController *)self navigationItem];
      [navigationItem2 setLeftBarButtonItem:v12];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(GKChallengePlayerPickerViewController *)self setShouldIgnoreClearSelection:1];
  v8.receiver = self;
  v8.super_class = GKChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v8 viewDidAppear:appearCopy];
  [(GKChallengePlayerPickerViewController *)self setShouldIgnoreClearSelection:0];
  v5 = objc_alloc_init(MEMORY[0x277D75B80]);
  [v5 addTarget:self action:sel_cancel_];
  [v5 setAllowedPressTypes:&unk_286189790];
  view = [(GKChallengePlayerPickerViewController *)self view];
  [view addGestureRecognizer:v5];

  reporter = [MEMORY[0x277D0BFA8] reporter];
  [reporter recordPageWithID:@"friendSelect" pageContext:@"dashboard" pageType:@"challenge"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  view = [(GKChallengePlayerPickerViewController *)self view];
  [view removeAllGestureRecognizers];

  v6.receiver = self;
  v6.super_class = GKChallengePlayerPickerViewController;
  [(GKChallengePlayerPickerViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = GKChallengePlayerPickerViewController;
  [(GKChallengePlayerPickerViewController *)&v3 viewWillLayoutSubviews];
  [(GKChallengePlayerPickerViewController *)self configureCollectionView];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = GKChallengePlayerPickerViewController;
  [(GKChallengePlayerPickerViewController *)&v2 viewDidLayoutSubviews];
}

- (void)configureCollectionView
{
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = collectionViewLayout;
    [v4 setMinimumLineSpacing:0.0];
    [v4 setMinimumInteritemSpacing:0.0];
    [v4 sectionInset];
    [v4 setSectionInset:?];
  }

  collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView3 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView3 setShowsVerticalScrollIndicator:1];

  collectionView4 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView4 _gkRemoveAllConstraints];

  traitCollection = [(GKChallengePlayerPickerViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  collectionView5 = [(GKDashboardCollectionViewController *)self collectionView];
  collectionView6 = collectionView5;
  if (userInterfaceIdiom == 1 || verticalSizeClass != 1)
  {
    leftAnchor = [collectionView5 leftAnchor];
    view = [(GKChallengePlayerPickerViewController *)self view];
    leftAnchor2 = [view leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
    [v19 setActive:1];

    collectionView6 = [(GKDashboardCollectionViewController *)self collectionView];
    rightAnchor = [collectionView6 rightAnchor];
    view2 = [(GKChallengePlayerPickerViewController *)self view];
    rightAnchor2 = [view2 rightAnchor];
    v21 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
    [v21 setActive:1];
  }

  else
  {
    rightAnchor = [collectionView5 widthAnchor];
    view2 = [rightAnchor constraintEqualToConstant:500.0];
    [view2 setActive:1];
  }

  collectionView7 = [(GKDashboardCollectionViewController *)self collectionView];
  centerXAnchor = [collectionView7 centerXAnchor];
  view3 = [(GKChallengePlayerPickerViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v26 setActive:1];

  collectionView8 = [(GKDashboardCollectionViewController *)self collectionView];
  topAnchor = [collectionView8 topAnchor];
  titleView = [(GKChallengePlayerPickerViewController *)self titleView];
  bottomAnchor = [titleView bottomAnchor];
  v31 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [v31 setActive:1];

  collectionView9 = [(GKDashboardCollectionViewController *)self collectionView];
  bottomAnchor2 = [collectionView9 bottomAnchor];
  view4 = [(GKChallengePlayerPickerViewController *)self view];
  bottomAnchor3 = [view4 bottomAnchor];
  v36 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v36 setActive:1];

  collectionView10 = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView10 setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = GKChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v13 traitCollectionDidChange:changeCopy];
  traitCollection = [(GKChallengePlayerPickerViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass == [changeCopy horizontalSizeClass])
  {
    traitCollection2 = [(GKChallengePlayerPickerViewController *)self traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];
    if (layoutDirection == [changeCopy layoutDirection])
    {
      traitCollection3 = [(GKChallengePlayerPickerViewController *)self traitCollection];
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
  block[2] = __66__GKChallengePlayerPickerViewController_traitCollectionDidChange___block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_8:
}

void __66__GKChallengePlayerPickerViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

- (void)applyInitialContentOffset
{
  if (self->_shouldApplyInitialOffset)
  {
    v12 = v2;
    v13 = v3;
    dataSource = [(GKDashboardCollectionViewController *)self dataSource];
    selectedPlayers = [dataSource selectedPlayers];
    v7 = [selectedPlayers count];

    if (!v7)
    {
      collectionView = [(GKDashboardCollectionViewController *)self collectionView];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__GKChallengePlayerPickerViewController_applyInitialContentOffset__block_invoke;
      block[3] = &unk_2796699A8;
      v11 = collectionView;
      v9 = collectionView;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    v4 = [messageCopy copy];
    message = self->_message;
    self->_message = v4;

    [(UITextField *)self->_messageField setText:messageCopy];
  }
}

- (void)loadData
{
  if (([(GKChallenge *)self->_challenge detailsLoaded]& 1) != 0)
  {
    v4.receiver = self;
    v4.super_class = GKChallengePlayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v4 loadData];
  }

  else
  {
    challenge = self->_challenge;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__GKChallengePlayerPickerViewController_loadData__block_invoke;
    v5[3] = &unk_2796699A8;
    v5[4] = self;
    [(GKChallenge *)challenge loadDetailsWithCompletionHandler:v5];
  }
}

id __49__GKChallengePlayerPickerViewController_loadData__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = GKChallengePlayerPickerViewController;
  return objc_msgSendSuper2(&v2, sel_loadData);
}

- (void)dataUpdated:(BOOL)updated withError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = GKChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v23 dataUpdated:updated withError:error];
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  v6 = MEMORY[0x277CBEB18];
  v7 = [(NSArray *)self->_initiallySelectedPlayers count];
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 arrayWithCapacity:v8];
  if ([(NSArray *)self->_initiallySelectedPlayers count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_initiallySelectedPlayers;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [dataSource indexPathForPlayer:{*(*(&v19 + 1) + 8 * v14), v19}];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [(GKChallengePlayerPickerViewController *)self setInitiallySelectedPlayers:0];
  }

  else if ([dataSource itemCount] == 1)
  {
    searchText = [dataSource searchText];
    v17 = [searchText length];

    if (!v17)
    {
      v18 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      [v9 addObject:v18];
    }
  }

  if ([v9 count])
  {
    [(GKChallengePlayerPickerViewController *)self selectPlayersAtIndexPaths:v9];
  }

  [(GKChallengePlayerPickerViewController *)self updateButtonEnableState];
}

- (void)selectPlayersAtIndexPaths:(id)paths
{
  v19 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = pathsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([dataSource collectionView:collectionView shouldSelectItemAtIndexPath:{v13, v14}])
        {
          [collectionView selectItemAtIndexPath:v13 animated:0 scrollPosition:18];
          [(GKChallengePlayerPickerViewController *)self collectionView:collectionView didSelectItemAtIndexPath:v13];
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);

    if (v10)
    {
      [(GKChallengePlayerPickerViewController *)self setNeedsFocusUpdate];
    }
  }

  else
  {
  }
}

- (void)setupNoContentView:(id)view withError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  searchText = [dataSource searchText];
  v10 = [searchText length];

  if (v10)
  {
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setMessage:v12];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GKChallengePlayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v13 setupNoContentView:viewCopy withError:errorCopy];
  }
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x277D85DE8];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  if (collectionView)
  {
    collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
    v8[0] = collectionView2;
    preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = GKChallengePlayerPickerViewController;
    preferredFocusEnvironments = [(GKDashboardCollectionViewController *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (void)clearSelection
{
  if (!self->_shouldIgnoreClearSelection)
  {
    v4.receiver = self;
    v4.super_class = GKChallengePlayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v4 clearSelection];
    dataSource = [(GKDashboardCollectionViewController *)self dataSource];
    [dataSource clearSelection];

    [(GKChallengePlayerPickerViewController *)self updateButtonEnableState];
  }
}

- (void)send:(id)send
{
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  selectedPlayers = [dataSource selectedPlayers];
  if ([selectedPlayers count] < 0xB)
  {
    if ([selectedPlayers count])
    {
      [(GKChallenge *)self->_challenge issueToPlayers:selectedPlayers message:self->_message];
      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, selectedPlayers, self->_message);
      }

      [(UIViewController *)self _gkRemoveViewController:self animated:1];
    }
  }

  else
  {
    tooManyPlayersAlertController = [MEMORY[0x277D0BFF0] tooManyPlayersAlertController];
    [(GKChallengePlayerPickerViewController *)self presentViewController:tooManyPlayersAlertController animated:1 completion:0];
  }
}

- (void)addMessage:(id)message
{
  messageCopy = message;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  v6 = [GKChallengeComposeController alloc];
  challenge = self->_challenge;
  message = self->_message;
  selectedPlayers = [dataSource selectedPlayers];
  v10 = [(GKChallengeComposeController *)v6 initWithChallenge:challenge defaultMessage:message players:selectedPlayers];

  objc_initWeak(&location, v10);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__GKChallengePlayerPickerViewController_addMessage___block_invoke;
  v11[3] = &unk_27966A6D8;
  v11[4] = self;
  objc_copyWeak(&v12, &location);
  [(GKSimpleComposeController *)v10 setDoneHandler:v11];
  [(UIViewController *)self _gkShowViewController:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __52__GKChallengePlayerPickerViewController_addMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__GKChallengePlayerPickerViewController_addMessage___block_invoke_2;
    v10[3] = &unk_279669E48;
    v10[4] = *(a1 + 32);
    v11 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  v7 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v7 _gkRemoveViewController:WeakRetained animated:1];

  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 setDoneHandler:0];
}

uint64_t __52__GKChallengePlayerPickerViewController_addMessage___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMessage:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 send:v2];
}

- (void)cancel:(id)cancel
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
  }

  [(UIViewController *)self _gkRemoveViewController:self animated:1];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  messageField = self->_messageField;
  if (messageField == return)
  {
    text = [(UITextField *)self->_messageField text];
    [(GKChallengePlayerPickerViewController *)self setMessage:text];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__GKChallengePlayerPickerViewController_textFieldShouldReturn___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return messageField != return;
}

- (void)updateButtonEnableState
{
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  selectedPlayers = [dataSource selectedPlayers];
  v4 = [selectedPlayers count];

  [(UIButton *)self->_sendButton setEnabled:v4 != 0];
  if (!self->_sendButton)
  {
    navigationItem = [(GKChallengePlayerPickerViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v4 != 0];
  }
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  infoCopy = info;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__GKChallengePlayerPickerViewController_refreshContentsForDataType_userInfo___block_invoke;
  block[3] = &unk_27966BE50;
  typeCopy = type;
  v9 = infoCopy;
  selfCopy = self;
  v7 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __77__GKChallengePlayerPickerViewController_refreshContentsForDataType_userInfo___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 4)
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B9E8]];
    v3 = [*(a1 + 40) dataSource];
    v4 = [v3 addInvitedFriendContactIdentifier:v2];

    if (v4)
    {
      v5 = [*(a1 + 40) collectionView];
      v7[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
      [v5 reloadItemsAtIndexPaths:v6];
    }
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy setText:0];
  [clickedCopy resignFirstResponder];

  [(GKChallengePlayerPickerViewController *)self setSearchText:0];
}

- (void)setSearchText:(id)text
{
  v18 = *MEMORY[0x277D85DE8];
  textCopy = text;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  [dataSource setSearchText:textCopy];
  [(GKChallengePlayerPickerViewController *)self dataUpdated:1 withError:0];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  selectedPlayers = [dataSource selectedPlayers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [selectedPlayers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selectedPlayers);
        }

        v12 = [dataSource indexPathForPlayer:*(*(&v13 + 1) + 8 * v11)];
        [collectionView selectItemAtIndexPath:v12 animated:0 scrollPosition:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [selectedPlayers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = GKChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 collectionView:view didSelectItemAtIndexPath:path];
  [(GKChallengePlayerPickerViewController *)self updateButtonEnableState];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = GKChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 collectionView:view didDeselectItemAtIndexPath:path];
  [(GKChallengePlayerPickerViewController *)self updateButtonEnableState];
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (self->_scrollingHeaderTopConstraint)
  {
    [scroll contentOffset];
    v5 = -v4;
    collectionView = [(GKDashboardCollectionViewController *)self collectionView];
    [collectionView contentInset];
    [(NSLayoutConstraint *)self->_scrollingHeaderTopConstraint setConstant:v5 - v7];
  }

  searchBar = [(GKChallengePlayerPickerViewController *)self searchBar];
  [searchBar resignFirstResponder];
}

@end