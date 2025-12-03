@interface GKMultiplayerViewController
- (BOOL)allowAutoMatch;
- (BOOL)allowPlayerCountSelection;
- (BOOL)isButtonHeaderViewInNavigationTitleView;
- (BOOL)isLoading;
- (BOOL)isParticipantInvitedByLocalPlayer:(id)player;
- (BOOL)setupInvitesForSource:(unint64_t)source completion:(id)completion;
- (GKDashboardNearbyBrowserDelegate)nearbyDelegate;
- (GKMultiplayerViewController)init;
- (GKMultiplayerViewController)initWithMatchRequest:(id)request;
- (UIEdgeInsets)collectionViewContentInset;
- (id)makeButtonHeaderView;
- (id)makeDoubleHeaderView;
- (id)pageId;
- (id)preferredFocusEnvironments;
- (int64_t)maxAvailablePlayers;
- (int64_t)multiplayerCellLayoutMode;
- (void)addAutomatchPlayer;
- (void)cancelButtonPressed;
- (void)configureAutoBounce;
- (void)configureDataSourceWithCompletionHandler:(id)handler;
- (void)configureMatchRequest;
- (void)dataSource:(id)source didRefreshSections:(id)sections;
- (void)dealloc;
- (void)determineInvitationType;
- (void)didPickPlayers:(id)players messageGroups:(id)groups source:(unint64_t)source completion:(id)completion;
- (void)didTapRemoveParticipant:(id)participant;
- (void)didUpdateParticipants;
- (void)dismissPickerViewController;
- (void)handleNewParticipantCount:(int64_t)count;
- (void)handleServiceUnavailable:(id)unavailable;
- (void)inviteContactPlayers:(id)players source:(unint64_t)source completion:(id)completion;
- (void)inviteFriendsButtonPressed;
- (void)layoutSubviews;
- (void)loadShareURLWithContactPlayers:(id)players completion:(id)completion;
- (void)localPlayerAcceptedGameInvite:(id)invite;
- (void)multiplayerPicker:(id)picker didPickPlayers:(id)players messageGroups:(id)groups customMessage:(id)message;
- (void)multiplayerPickerDidCancel:(id)cancel;
- (void)performActionsForButtonStartGame;
- (void)playersToInvite:(id)invite;
- (void)preparePlayerPicker;
- (void)presentPlayerPicker;
- (void)refreshHeaderAndFooterMaterials;
- (void)removeAutomatchPlayer;
- (void)removePlayer:(id)player;
- (void)sendInvitesToPlayersInOriginalMatchRequest;
- (void)setCanStartGroupActivities:(BOOL)activities;
- (void)setInvitationType:(int64_t)type;
- (void)setShareURL:(id)l;
- (void)setShowCancelButton:(BOOL)button;
- (void)setViewNeedsLayout;
- (void)setupCancelButton;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCollectionViewContentInset;
- (void)updateDataSourceInvitationEnabled;
- (void)updateFooterButtonStates;
- (void)updateHeaderFooterLayoutMargins;
- (void)updateTitle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKMultiplayerViewController

- (GKMultiplayerViewController)init
{
  v3 = objc_alloc_init(_TtC12GameCenterUI33GKMultiplayerViewControllerLayout);
  v11.receiver = self;
  v11.super_class = GKMultiplayerViewController;
  v4 = [(GKCollectionViewController *)&v11 initWithCollectionViewLayout:v3];

  if (v4)
  {
    v4->_showCancelButton = 1;
    v4->_addButtonEnabled = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D0B970];
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    [defaultCenter addObserver:v4 selector:sel_localPlayerAcceptedGameInvite_ name:v6 object:localPlayer];

    v8 = *MEMORY[0x277D0BD60];
    localPlayer2 = [MEMORY[0x277D0C138] localPlayer];
    [defaultCenter addObserver:v4 selector:sel_playersToInvite_ name:v8 object:localPlayer2];

    [(GKMultiplayerViewController *)v4 setInvitationType:0];
  }

  return v4;
}

- (GKMultiplayerViewController)initWithMatchRequest:(id)request
{
  requestCopy = request;
  v5 = [(GKMultiplayerViewController *)self init];
  if (v5)
  {
    v6 = [requestCopy copy];
    matchRequest = v5->_matchRequest;
    v5->_matchRequest = v6;

    v8 = [requestCopy copy];
    originalMatchRequest = v5->_originalMatchRequest;
    v5->_originalMatchRequest = v8;

    [(GKMultiplayerViewController *)v5 configureMatchRequest];
    inviteMessage = [(GKMatchRequest *)v5->_matchRequest inviteMessage];
    v11 = [inviteMessage copy];
    defaultInvitationMessage = v5->_defaultInvitationMessage;
    v5->_defaultInvitationMessage = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    participantsInvitedByLocalPlayer = v5->_participantsInvitedByLocalPlayer;
    v5->_participantsInvitedByLocalPlayer = v13;

    if (requestCopy)
    {
      objc_initWeak(&location, v5);
      v15 = [GKBoopHandler alloc];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke;
      v19[3] = &unk_27966B660;
      objc_copyWeak(&v21, &location);
      v16 = v5;
      v20 = v16;
      v17 = [(GKBoopHandler *)v15 initWithUrlProvider:v19];
      [(GKMultiplayerViewController *)v16 setBoopHandler:v17];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return v5;
}

id __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_alloc_init(GKContactDataSource);
  v6 = [(GKContactDataSource *)v5 fetchContactWithID:v3];
  if (!v6)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
    {
      __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_cold_2();
    }

    goto LABEL_11;
  }

  v7 = [*(a1 + 32) participantsInvitedByLocalPlayer];
  v8 = [v7 containsObject:v3];

  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
    {
      __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_cold_1();
    }

LABEL_11:
    v11 = 0;
    goto LABEL_13;
  }

  v12 = [objc_alloc(MEMORY[0x277D0C170]) initWithContact:v6];
  v13 = MEMORY[0x277D0C020];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerViewController.m", 138, "-[GKMultiplayerViewController initWithMatchRequest:]_block_invoke"];
  v15 = [v13 dispatchGroupWithName:v14];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_2;
  v22[3] = &unk_279669A20;
  v16 = WeakRetained;
  v23 = v16;
  v24 = v12;
  v17 = v12;
  [v15 perform:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_4;
  v20[3] = &unk_2796699A8;
  v18 = v16;
  v21 = v18;
  [v15 notifyOnMainQueueWithBlock:v20];
  [v15 waitWithTimeout:60.0];
  v11 = [v18 shareURL];

LABEL_13:

  return v11;
}

void __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_3;
  v7[3] = &unk_27966A4A8;
  v8 = v3;
  v6 = v3;
  [v4 didPickPlayers:v5 messageGroups:0 source:0 completion:v7];
}

void __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D0C1F8] reporter];
  [v2 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BB78]];

  v3 = [*(a1 + 32) playerPickerViewController];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 dismissPickerViewController];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKMultiplayerViewController;
  [(GKCollectionViewController *)&v4 dealloc];
}

- (void)configureMatchRequest
{
  matchRequest = self->_matchRequest;
  if (matchRequest)
  {
    [(GKMatchRequest *)matchRequest removeLocalPlayerFromPlayersToInvite];
    if ([(GKMatchRequest *)self->_matchRequest defaultNumberOfPlayers])
    {
      defaultNumberOfPlayers = [(GKMatchRequest *)self->_matchRequest defaultNumberOfPlayers];
      minPlayers = [(GKMatchRequest *)self->_matchRequest minPlayers];
      v6 = self->_matchRequest;
      if (defaultNumberOfPlayers >= minPlayers)
      {
        defaultNumberOfPlayers2 = [(GKMatchRequest *)v6 defaultNumberOfPlayers];
        if (defaultNumberOfPlayers2 <= [(GKMatchRequest *)self->_matchRequest maxPlayers])
        {
          return;
        }

        maxPlayers = [(GKMatchRequest *)self->_matchRequest maxPlayers];
      }

      else
      {
        maxPlayers = [(GKMatchRequest *)v6 minPlayers];
      }

      v9 = maxPlayers;
      v10 = self->_matchRequest;

      [(GKMatchRequest *)v10 setDefaultNumberOfPlayers:v9];
    }
  }
}

- (void)sendInvitesToPlayersInOriginalMatchRequest
{
  originalMatchRequest = [(GKMultiplayerViewController *)self originalMatchRequest];
  recipients = [originalMatchRequest recipients];
  v5 = [recipients count];

  if (v5)
  {
    objc_initWeak(&location, self);
    originalMatchRequest2 = [(GKMultiplayerViewController *)self originalMatchRequest];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__GKMultiplayerViewController_sendInvitesToPlayersInOriginalMatchRequest__block_invoke;
    v7[3] = &unk_279669FB8;
    objc_copyWeak(&v8, &location);
    [originalMatchRequest2 loadRecipientsWithCompletionHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __73__GKMultiplayerViewController_sendInvitesToPlayersInOriginalMatchRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 count])
  {
    v5 = [WeakRetained defaultInvitationMessage];
    v6 = [WeakRetained matchRequest];
    [v6 setInviteMessage:v5];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__GKMultiplayerViewController_sendInvitesToPlayersInOriginalMatchRequest__block_invoke_117;
    v9[3] = &unk_2796699A8;
    v10 = v3;
    [WeakRetained didPickPlayers:v10 messageGroups:0 source:1 completion:v9];
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __73__GKMultiplayerViewController_sendInvitesToPlayersInOriginalMatchRequest__block_invoke_cold_1(v8, WeakRetained);
    }
  }
}

void __73__GKMultiplayerViewController_sendInvitesToPlayersInOriginalMatchRequest__block_invoke_117(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_24DE53000, v3, OS_LOG_TYPE_INFO, "Invitation sent to recipients in the match request: %@", &v5, 0xCu);
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = GKMultiplayerViewController;
  [(GKCollectionViewController *)&v13 viewDidLoad];
  [(GKMultiplayerViewController *)self updateTitle];
  [(GKCollectionViewController *)self setShouldSlideInContents:0];
  v3 = objc_alloc_init(_TtC12GameCenterUI23GKMultiplayerFooterView);
  [(GKMultiplayerFooterView *)v3 setFooterStatusString:0];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__GKMultiplayerViewController_viewDidLoad__block_invoke;
  v10[3] = &unk_279669FE0;
  objc_copyWeak(&v11, &location);
  [(GKMultiplayerFooterView *)v3 setStartGameHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__GKMultiplayerViewController_viewDidLoad__block_invoke_2;
  v8[3] = &unk_279669FE0;
  objc_copyWeak(&v9, &location);
  [(GKMultiplayerFooterView *)v3 setInviteFriendsHandler:v8];
  matchRequest = [(GKMultiplayerViewController *)self matchRequest];

  if (matchRequest)
  {
    matchRequest2 = [(GKMultiplayerViewController *)self matchRequest];
    [(GKMultiplayerFooterView *)v3 configureUsing:matchRequest2];
  }

  matchRequest3 = [(GKMultiplayerViewController *)self matchRequest];

  if (matchRequest3)
  {
    view = [(GKMultiplayerViewController *)self view];
    [view addSubview:v3];
  }

  [(GKMultiplayerViewController *)self setFooterView:v3];
  [(GKMultiplayerViewController *)self sendInvitesToPlayersInOriginalMatchRequest];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __42__GKMultiplayerViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startGameButtonPressed];
}

void __42__GKMultiplayerViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained inviteFriendsButtonPressed];
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = GKMultiplayerViewController;
  [(GKCollectionViewController *)&v17 viewWillAppear:appear];
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:0];
  [collectionView setOpaque:0];
  canStartGroupActivities = 1;
  [collectionView setDirectionalLockEnabled:1];
  [collectionView setAlwaysBounceVertical:0];
  [collectionView setShowsHorizontalScrollIndicator:0];
  [collectionView setShowsVerticalScrollIndicator:0];
  navigationController = [(GKMultiplayerViewController *)self navigationController];
  [navigationController setNavigationBarHidden:-[GKMultiplayerViewController showNavigationBar](self animated:{"showNavigationBar") ^ 1, 0}];

  navigationController2 = [(GKMultiplayerViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [navigationBar setTintColor:whiteColor];

  [(GKMultiplayerViewController *)self setViewNeedsLayout];
  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 reloadData];

  collectionView3 = [(GKCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView3 collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  if ([(GKMultiplayerViewController *)self matchmakingMode]!= 2)
  {
    canStartGroupActivities = [(GKMultiplayerViewController *)self canStartGroupActivities];
  }

  footerView = [(GKMultiplayerViewController *)self footerView];
  [footerView setInviteFriendsButtonHidden:canStartGroupActivities];

  buttonHeaderView = [(GKMultiplayerViewController *)self buttonHeaderView];
  [buttonHeaderView setBackgroundColor:0];

  footerView2 = [(GKMultiplayerViewController *)self footerView];
  [footerView2 setBackgroundColor:0];

  [(GKMultiplayerViewController *)self configureAutoBounce];
  boopHandler = [(GKMultiplayerViewController *)self boopHandler];
  [boopHandler startNearbyDiscoveryWithCompletionHandler:&__block_literal_global_22];
}

void __46__GKMultiplayerViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x277D0C2A0];
  if (v2)
  {
    if (!v3)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
    {
      __46__GKMultiplayerViewController_viewWillAppear___block_invoke_cold_1();
    }
  }

  else
  {
    if (!v3)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
    {
      __46__GKMultiplayerViewController_viewWillAppear___block_invoke_cold_2();
    }
  }
}

- (void)refreshHeaderAndFooterMaterials
{
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;

  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 contentInset];
  v8 = v7;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_buttonHeaderView wantsMaterialBackgroundWithScrollOffset:v5 + v8];
  }

  collectionView3 = [(GKCollectionViewController *)self collectionView];
  [collectionView3 contentSize];
  v11 = v10;

  footerView = self->_footerView;
  [(GKMultiplayerFooterView *)footerView frame];

  [(GKMultiplayerFooterView *)footerView wantsMaterialBackgroundWithScrollOffset:v11 - v5 - v13];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = GKMultiplayerViewController;
  [(GKMultiplayerViewController *)&v3 viewDidLayoutSubviews];
  [(GKMultiplayerViewController *)self layoutSubviews];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = GKMultiplayerViewController;
  [(GKMultiplayerViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(GKMultiplayerViewController *)self updateCollectionViewContentInset];
  [(GKMultiplayerViewController *)self updateHeaderFooterLayoutMargins];
}

- (void)layoutSubviews
{
  view = [(GKMultiplayerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_buttonHeaderView sizeThatFits:v9, v11];
  v13 = v12;
  v15 = v14;
  [(GKMultiplayerFooterView *)self->_footerView sizeThatFits:v9, v11];
  v33 = v16;
  v18 = v17;
  if ([(GKMultiplayerViewController *)self isButtonHeaderViewInNavigationTitleView])
  {
    [(UIView *)self->_buttonHeaderView frame];
    v20 = v19;
    v22 = v21;
    v13 = v23;
    v25 = v24;
  }

  else
  {
    [(UIView *)self->_buttonHeaderView layoutMargins];
    v27 = v15 + v26;
    [(UIView *)self->_buttonHeaderView layoutMargins];
    v25 = v27 + v28;
    v20 = v5;
    v22 = v7;
  }

  [(GKMultiplayerFooterView *)self->_footerView layoutMargins];
  v30 = v18 + v29;
  [(GKMultiplayerFooterView *)self->_footerView layoutMargins];
  v32 = v30 + v31;
  [(UIView *)self->_buttonHeaderView setFrame:v20, v22, v13, v25];
  [(GKMultiplayerFooterView *)self->_footerView setFrame:v5, v7 + v11 - v32, v33, v32];
  [(GKMultiplayerViewController *)self updateCollectionViewContentInset];
  [(GKMultiplayerViewController *)self refreshHeaderAndFooterMaterials];

  [(GKMultiplayerViewController *)self updateHeaderFooterLayoutMargins];
}

- (void)updateCollectionViewContentInset
{
  [(GKMultiplayerViewController *)self collectionViewContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView contentInset];
  if (v6 == v15 && v4 == v12 && v10 == v14)
  {
    v18 = v13;

    if (v8 == v18)
    {
      return;
    }
  }

  else
  {
  }

  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 setContentInset:{v4, v6, v8, v10}];

  collectionView3 = [(GKCollectionViewController *)self collectionView];
  [collectionView3 setContentOffset:{-v6, -v4}];

  collectionView4 = [(GKCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView4 collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)updateHeaderFooterLayoutMargins
{
  view = [(GKMultiplayerViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionView = [(GKCollectionViewController *)self collectionView];
  [_TtC12GameCenterUI33GKMultiplayerViewControllerLayout minimumContentInsetIn:collectionView];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(UIView *)self->_buttonHeaderView setInsetsLayoutMarginsFromSafeArea:0];
  if (v5 >= v14)
  {
    v21 = v5;
  }

  else
  {
    v21 = v14;
  }

  if (v7 >= v16)
  {
    v22 = v7;
  }

  else
  {
    v22 = v16;
  }

  if (v11 >= v20)
  {
    v23 = v11;
  }

  else
  {
    v23 = v20;
  }

  [(UIView *)self->_buttonHeaderView setLayoutMargins:v21, v22, 0.0, v23];
  [(GKMultiplayerFooterView *)self->_footerView setInsetsLayoutMarginsFromSafeArea:0];
  footerView = self->_footerView;
  if (v9 >= v18)
  {
    v25 = v9;
  }

  else
  {
    v25 = v18;
  }

  [(GKMultiplayerFooterView *)footerView setLayoutMargins:0.0, v22, v25, v23];
}

- (BOOL)isButtonHeaderViewInNavigationTitleView
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  navigationItem = [(GKMultiplayerViewController *)self navigationItem];
  titleView = [navigationItem titleView];
  v5 = titleView == self->_buttonHeaderView;

  return v5;
}

- (UIEdgeInsets)collectionViewContentInset
{
  view = [(GKMultiplayerViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;

  collectionView = [(GKCollectionViewController *)self collectionView];
  [_TtC12GameCenterUI33GKMultiplayerViewControllerLayout minimumContentInsetIn:collectionView];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(UIView *)self->_buttonHeaderView frame];
  v18 = v17;
  [(GKMultiplayerFooterView *)self->_footerView frame];
  v20 = v19;
  if ([(GKMultiplayerViewController *)self isButtonHeaderViewInNavigationTitleView])
  {
    navigationController = [(GKMultiplayerViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    [navigationBar frame];
    v24 = v23;
    [navigationBar frame];
    v18 = v24 + v25;
  }

  if (v7 <= 0.0)
  {
    v26 = v16;
  }

  else
  {
    v26 = v7;
  }

  v27 = v14 + v20;
  if (v5 <= 0.0)
  {
    v28 = v12;
  }

  else
  {
    v28 = v5;
  }

  v29 = v10 + v18;
  result.right = v26;
  result.bottom = v27;
  result.left = v28;
  result.top = v29;
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = GKMultiplayerViewController;
  [(GKCollectionViewController *)&v4 viewDidAppear:appear];
  [(GKMultiplayerViewController *)self setPlayerPickerViewController:0];
  if ([(GKMultiplayerViewController *)self invitationType]== 2)
  {
    if ([(GKMultiplayerViewController *)self canStartForcedAutomatch])
    {
      [(GKMultiplayerViewController *)self setDidStartForcedAutomatch:1];
      [(GKMultiplayerViewController *)self startGameButtonPressed];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = GKMultiplayerViewController;
  [(GKCollectionViewController *)&v5 viewDidDisappear:disappear];
  boopHandler = [(GKMultiplayerViewController *)self boopHandler];
  [boopHandler stopWithCompletionHandler:&__block_literal_global_137];
}

void __48__GKMultiplayerViewController_viewDidDisappear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x277D0C2A0];
  if (v2)
  {
    if (!v3)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
    {
      __48__GKMultiplayerViewController_viewDidDisappear___block_invoke_cold_1();
    }
  }

  else
  {
    if (!v3)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
    {
      __48__GKMultiplayerViewController_viewDidDisappear___block_invoke_cold_2();
    }
  }
}

- (id)pageId
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subclasses must provide a valid pageId"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKMultiplayerViewController.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKMultiplayerViewController pageId]", objc_msgSend(lastPathComponent, "UTF8String"), 500];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return @"lobby";
}

- (void)configureDataSourceWithCompletionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [GKMultiplayerDataSource alloc];
  pageId = [(GKMultiplayerViewController *)self pageId];
  v7 = [(GKMultiplayerDataSource *)v5 initWithMetricsPageId:pageId];

  collectionView = [(GKCollectionViewController *)self collectionView];
  [(GKMultiplayerDataSource *)v7 configureCollectionView:collectionView];

  [(GKMultiplayerDataSource *)v7 setDelegate:self];
  originalMatchRequest = [(GKMultiplayerViewController *)self originalMatchRequest];

  if (originalMatchRequest)
  {
    originalMatchRequest2 = [(GKMultiplayerViewController *)self originalMatchRequest];
    v11 = [originalMatchRequest2 copy];
    matchRequest = self->_matchRequest;
    self->_matchRequest = v11;

    [(GKMultiplayerViewController *)self configureMatchRequest];
  }

  matchRequest = [(GKMultiplayerViewController *)self matchRequest];

  if (matchRequest)
  {
    recipients = [(GKMatchRequest *)self->_matchRequest recipients];
    _gkGuestPlayersFromPlayers = [recipients _gkGuestPlayersFromPlayers];

    [(GKMultiplayerDataSource *)v7 addPlayers:_gkGuestPlayersFromPlayers withStatus:7 replaceAutomatches:1 complete:0];
    matchRequest2 = [(GKMultiplayerViewController *)self matchRequest];
    -[GKMultiplayerDataSource setMinPlayers:](v7, "setMinPlayers:", [matchRequest2 minPlayers]);

    matchRequest3 = [(GKMultiplayerViewController *)self matchRequest];
    -[GKMultiplayerDataSource setMaxPlayers:](v7, "setMaxPlayers:", [matchRequest3 maxPlayers]);

    matchRequest4 = [(GKMultiplayerViewController *)self matchRequest];
    if ([matchRequest4 defaultNumberOfPlayersIsValid])
    {
      matchRequest5 = [(GKMultiplayerViewController *)self matchRequest];
      defaultNumberOfPlayers = [matchRequest5 defaultNumberOfPlayers];

      if (defaultNumberOfPlayers)
      {
        if (!*MEMORY[0x277D0C2A0])
        {
          v21 = GKOSLoggers();
        }

        v22 = *MEMORY[0x277D0C2B0];
        if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
        {
          v23 = v22;
          matchRequest6 = [(GKMultiplayerViewController *)self matchRequest];
          *buf = 134217984;
          defaultNumberOfPlayers2 = [matchRequest6 defaultNumberOfPlayers];
          _os_log_impl(&dword_24DE53000, v23, OS_LOG_TYPE_INFO, "set automatchPlayers by _matchRequest.defaultNumberOfPlayers  %lu. This is to respect what developers set.", buf, 0xCu);
        }

        matchRequest7 = [(GKMultiplayerViewController *)self matchRequest];
        defaultNumberOfPlayers3 = [matchRequest7 defaultNumberOfPlayers];
        goto LABEL_23;
      }
    }

    else
    {
    }

    matchRequest8 = [(GKMultiplayerViewController *)self matchRequest];
    defaultNumberOfPlayers4 = [matchRequest8 defaultNumberOfPlayers];

    if (!defaultNumberOfPlayers4)
    {
      matchRequest9 = [(GKMultiplayerViewController *)self matchRequest];
      maxPlayers = [matchRequest9 maxPlayers];
      matchRequest10 = [(GKMultiplayerViewController *)self matchRequest];
      [matchRequest10 setDefaultNumberOfPlayers:maxPlayers];
    }

    matchRequest11 = [(GKMultiplayerViewController *)self matchRequest];
    defaultNumberOfPlayers5 = [matchRequest11 defaultNumberOfPlayers];

    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    game = [(GKMultiplayerViewController *)self game];
    bundleIdentifier = [game bundleIdentifier];
    v37 = [mEMORY[0x277D0C1D8] recentNumberOfPlayersForBundleID:bundleIdentifier];

    if (v37 <= 1)
    {
      v38 = defaultNumberOfPlayers5;
    }

    else
    {
      v38 = v37;
    }

    matchRequest12 = [(GKMultiplayerViewController *)self matchRequest];
    minPlayers = [matchRequest12 minPlayers];

    matchRequest13 = [(GKMultiplayerViewController *)self matchRequest];
    matchRequest7 = matchRequest13;
    if (v38 >= minPlayers)
    {
      maxPlayers2 = [matchRequest13 maxPlayers];

      if (v38 <= maxPlayers2)
      {
LABEL_24:
        -[GKMultiplayerDataSource setAutomatchPlayerCount:](v7, "setAutomatchPlayerCount:", v38 + ~[_gkGuestPlayersFromPlayers count]);
        [(GKMultiplayerDataSource *)v7 setImplicitAutomatchPlayerCount:[(GKMultiplayerDataSource *)v7 automatchPlayerCount]];
        game2 = [(GKMultiplayerViewController *)self game];
        [(GKMultiplayerDataSource *)v7 setGame:game2];

        matchRequest14 = [(GKMultiplayerViewController *)self matchRequest];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __72__GKMultiplayerViewController_configureDataSourceWithCompletionHandler___block_invoke;
        v45[3] = &unk_27966B6B0;
        v46 = v7;
        selfCopy = self;
        v48 = handlerCopy;
        [matchRequest14 loadRecipientsWithCompletionHandler:v45];

        goto LABEL_25;
      }

      matchRequest7 = [(GKMultiplayerViewController *)self matchRequest];
      defaultNumberOfPlayers3 = [matchRequest7 maxPlayers];
    }

    else
    {
      defaultNumberOfPlayers3 = [matchRequest13 minPlayers];
    }

LABEL_23:
    v38 = defaultNumberOfPlayers3;

    goto LABEL_24;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_25:
  [(GKCollectionViewController *)self setDataSource:v7];
  [(GKMultiplayerViewController *)self updateDataSourceInvitationEnabled];
}

void __72__GKMultiplayerViewController_configureDataSourceWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__GKMultiplayerViewController_configureDataSourceWithCompletionHandler___block_invoke_2;
  block[3] = &unk_27966B688;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = v5;
  v7 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__GKMultiplayerViewController_configureDataSourceWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) code] == 10)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(v2 + 16))();
    }
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __72__GKMultiplayerViewController_configureDataSourceWithCompletionHandler___block_invoke_3;
    v11 = &unk_27966A958;
    v5 = *(a1 + 64);
    v12 = *(a1 + 56);
    v13 = v5;
    [v3 addPlayers:v4 withStatus:11 replaceAutomatches:1 complete:&v8];
  }

  v6 = [*(a1 + 56) matchRequest];
  [v6 setRecipients:0];

  v7 = [*(a1 + 56) matchRequest];
  [v7 setPlayersToInvite:0];
}

uint64_t __72__GKMultiplayerViewController_configureDataSourceWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) updateStartGameButtonTitle];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)updateTitle
{
  allowPlayerCountSelection = [(GKMultiplayerViewController *)self allowPlayerCountSelection];
  buttonHeaderView = [(GKMultiplayerViewController *)self buttonHeaderView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (allowPlayerCountSelection)
  {
    if (isKindOfClass)
    {
      v6 = MEMORY[0x277CCACA8];
      buttonHeaderView4 = GKGameCenterUIFrameworkBundle();
      matchRequest3 = GKGetLocalizedStringFromTableInBundle();
      matchRequest = [(GKMultiplayerViewController *)self matchRequest];
      minPlayers = [matchRequest minPlayers];
      matchRequest2 = [(GKMultiplayerViewController *)self matchRequest];
      v12 = [v6 stringWithFormat:matchRequest3, minPlayers, objc_msgSend(matchRequest2, "maxPlayers")];
      buttonHeaderView2 = [(GKMultiplayerViewController *)self buttonHeaderView];
      [buttonHeaderView2 setSubtitleText:v12];
    }

    else
    {
      buttonHeaderView3 = [(GKMultiplayerViewController *)self buttonHeaderView];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        goto LABEL_10;
      }

      buttonHeaderView4 = [(GKMultiplayerViewController *)self buttonHeaderView];
      matchRequest3 = [(GKMultiplayerViewController *)self matchRequest];
      minPlayers2 = [matchRequest3 minPlayers];
      matchRequest = [(GKMultiplayerViewController *)self matchRequest];
      [buttonHeaderView4 updateCountWithMinPlayers:minPlayers2 maxPlayers:{objc_msgSend(matchRequest, "maxPlayers")}];
    }

    goto LABEL_8;
  }

  if (isKindOfClass)
  {
    v14 = MEMORY[0x277CCACA8];
    buttonHeaderView4 = GKGameCenterUIFrameworkBundle();
    matchRequest3 = GKGetLocalizedStringFromTableInBundle();
    matchRequest = [(GKMultiplayerViewController *)self matchRequest];
    v15 = [v14 stringWithFormat:matchRequest3, objc_msgSend(matchRequest, "minPlayers")];
    buttonHeaderView5 = [(GKMultiplayerViewController *)self buttonHeaderView];
    [buttonHeaderView5 setSubtitleText:v15];

LABEL_8:
LABEL_9:

    goto LABEL_10;
  }

  buttonHeaderView6 = [(GKMultiplayerViewController *)self buttonHeaderView];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    buttonHeaderView4 = [(GKMultiplayerViewController *)self buttonHeaderView];
    matchRequest4 = [(GKMultiplayerViewController *)self matchRequest];
    minPlayers3 = [matchRequest4 minPlayers];

    multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
    players = [multiplayerDataSource players];
    v26 = [players count];

    if (minPlayers3 <= v26)
    {
      minPlayers3 = v26;
    }

    matchRequest3 = [(GKMultiplayerViewController *)self matchRequest];
    [buttonHeaderView4 updateCountWithMinPlayers:minPlayers3 maxPlayers:{objc_msgSend(matchRequest3, "maxPlayers")}];
    goto LABEL_9;
  }

LABEL_10:

  [(GKMultiplayerViewController *)self updateStartGameButtonTitle];
}

- (void)setCanStartGroupActivities:(BOOL)activities
{
  if (self->_canStartGroupActivities != activities)
  {
    self->_canStartGroupActivities = activities;
    [(GKMultiplayerViewController *)self updateTitle];
  }
}

- (void)setShowCancelButton:(BOOL)button
{
  if (self->_showCancelButton != button)
  {
    self->_showCancelButton = button;
    [(GKMultiplayerViewController *)self setupCancelButton];
  }
}

- (void)setupCancelButton
{
  navigationItem = [(GKMultiplayerViewController *)self navigationItem];
  if (self->_showCancelButton)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed];
    [navigationItem setLeftBarButtonItem:v3];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:0];
  }
}

- (void)addAutomatchPlayer
{
  if (self->_addButtonEnabled)
  {
    multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
    multiplayerDataSource2 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    [multiplayerDataSource setAutomatchPlayerCount:objc_msgSend(multiplayerDataSource2 complete:{"automatchPlayerCount") + 1, 0}];
  }
}

- (void)removeAutomatchPlayer
{
  if (self->_addButtonEnabled)
  {
    multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
    multiplayerDataSource2 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    [multiplayerDataSource setAutomatchPlayerCount:objc_msgSend(multiplayerDataSource2 complete:{"automatchPlayerCount") - 1, 0}];
  }
}

- (void)removePlayer:(id)player
{
  v10[1] = *MEMORY[0x277D85DE8];
  playerCopy = player;
  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v10[0] = playerCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__GKMultiplayerViewController_removePlayer___block_invoke;
  v8[3] = &unk_279669E48;
  v8[4] = self;
  v9 = playerCopy;
  v7 = playerCopy;
  [multiplayerDataSource removePlayers:v6 complete:v8];
}

void __44__GKMultiplayerViewController_removePlayer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateStartGameButtonTitle];
  [*(a1 + 32) removedPlayer:*(a1 + 40)];
  v4 = [*(a1 + 32) participantsInvitedByLocalPlayer];
  v2 = [*(a1 + 40) internal];
  v3 = [v2 playerID];
  [v4 removeObject:v3];
}

- (int64_t)maxAvailablePlayers
{
  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  maxAvailablePlayers = [multiplayerDataSource maxAvailablePlayers];

  return maxAvailablePlayers;
}

- (void)loadShareURLWithContactPlayers:(id)players completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)presentPlayerPicker
{
  [(GKMultiplayerViewController *)self preparePlayerPicker];
  playerPickerViewController = [(GKMultiplayerViewController *)self playerPickerViewController];
  [(GKMultiplayerViewController *)self willPresentPlayerPicker:playerPickerViewController];

  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "Will present player picker view controller", buf, 2u);
  }

  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BBC8]];

  v7 = objc_alloc(MEMORY[0x277D757A0]);
  playerPickerViewController2 = [(GKMultiplayerViewController *)self playerPickerViewController];
  v9 = [v7 initWithRootViewController:playerPickerViewController2];

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v10 = 16;
  }

  else
  {
    v10 = 2;
  }

  [v9 setModalPresentationStyle:v10];
  [v9 setOverrideUserInterfaceStyle:2];
  presentationController = [v9 presentationController];
  [presentationController setDelegate:self];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__GKMultiplayerViewController_presentPlayerPicker__block_invoke;
  v12[3] = &unk_2796699A8;
  v12[4] = self;
  [(GKMultiplayerViewController *)self presentViewController:v9 animated:1 completion:v12];
}

- (void)preparePlayerPicker
{
  maxAvailablePlayers = [(GKMultiplayerViewController *)self maxAvailablePlayers];
  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  currentPlayers = [multiplayerDataSource currentPlayers];

  v5 = [[GKDashboardMultiplayerPickerViewController alloc] initWithMaxSelectable:maxAvailablePlayers hiddenPlayers:currentPlayers nearbyOnly:[(GKMultiplayerViewController *)self matchmakingMode]== 1 pickerOrigin:1];
  [(GKDashboardMultiplayerPickerViewController *)v5 setMultiplayerPickerDelegate:self];
  [(GKMultiplayerViewController *)self setPlayerPickerViewController:v5];
}

- (void)multiplayerPicker:(id)picker didPickPlayers:(id)players messageGroups:(id)groups customMessage:(id)message
{
  v9 = MEMORY[0x277D0C1F8];
  messageCopy = message;
  groupsCopy = groups;
  playersCopy = players;
  reporter = [v9 reporter];
  v14 = *MEMORY[0x277D0BE78];
  [reporter reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BBB0]];

  reporter2 = [MEMORY[0x277D0C1F8] reporter];
  [reporter2 reportEvent:v14 type:*MEMORY[0x277D0BB98]];

  matchRequest = [(GKMultiplayerViewController *)self matchRequest];
  [matchRequest setInviteMessage:messageCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__GKMultiplayerViewController_multiplayerPicker_didPickPlayers_messageGroups_customMessage___block_invoke;
  v17[3] = &unk_2796699A8;
  v17[4] = self;
  [(GKMultiplayerViewController *)self didPickPlayers:playersCopy messageGroups:groupsCopy source:1 completion:v17];
}

- (void)didPickPlayers:(id)players messageGroups:(id)groups source:(unint64_t)source completion:(id)completion
{
  playersCopy = players;
  completionCopy = completion;
  groupsCopy = groups;
  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [multiplayerDataSource setSelectedMessageGroups:groupsCopy];

  v14 = MEMORY[0x277D0C020];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerViewController.m", 761, "-[GKMultiplayerViewController didPickPlayers:messageGroups:source:completion:]"];
  v16 = [v14 dispatchGroupWithName:v15];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__GKMultiplayerViewController_didPickPlayers_messageGroups_source_completion___block_invoke;
  v22[3] = &unk_279669A20;
  v22[4] = self;
  v23 = playersCopy;
  v17 = playersCopy;
  [v16 perform:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__GKMultiplayerViewController_didPickPlayers_messageGroups_source_completion___block_invoke_4;
  v19[3] = &unk_27966B700;
  v20 = completionCopy;
  sourceCopy = source;
  v19[4] = self;
  v18 = completionCopy;
  [v16 notifyOnMainQueueWithBlock:v19];
}

void __78__GKMultiplayerViewController_didPickPlayers_messageGroups_source_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) multiplayerDataSource];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__GKMultiplayerViewController_didPickPlayers_messageGroups_source_completion___block_invoke_2;
  v7[3] = &unk_27966B6D8;
  objc_copyWeak(&v10, &location);
  v8 = *(a1 + 40);
  v6 = v3;
  v9 = v6;
  [v4 addPlayers:v5 withStatus:11 replaceAutomatches:1 complete:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __78__GKMultiplayerViewController_didPickPlayers_messageGroups_source_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained participantsInvitedByLocalPlayer];
  v3 = MEMORY[0x277CBEB98];
  v4 = [*(a1 + 32) _gkMapWithBlock:&__block_literal_global_171];
  v5 = [v3 setWithArray:v4];
  [v2 unionSet:v5];

  (*(*(a1 + 40) + 16))();
}

id __78__GKMultiplayerViewController_didPickPlayers_messageGroups_source_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 internal];
  v3 = [v2 playerID];

  return v3;
}

void __78__GKMultiplayerViewController_didPickPlayers_messageGroups_source_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) updateStartGameButtonTitle];
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__GKMultiplayerViewController_didPickPlayers_messageGroups_source_completion___block_invoke_5;
  v4[3] = &unk_27966A4A8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 setupInvitesForSource:v2 completion:v4];
}

- (void)multiplayerPickerDidCancel:(id)cancel
{
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BB88]];

  playerPickerViewController = [(GKMultiplayerViewController *)self playerPickerViewController];
  presentingViewController = [playerPickerViewController presentingViewController];

  if (presentingViewController)
  {

    [(GKMultiplayerViewController *)self dismissPickerViewController];
  }
}

- (void)dismissPickerViewController
{
  playerPickerViewController = [(GKMultiplayerViewController *)self playerPickerViewController];
  [playerPickerViewController setSupportsNearby:0];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__GKMultiplayerViewController_dismissPickerViewController__block_invoke;
  v4[3] = &unk_2796699A8;
  v4[4] = self;
  [(GKMultiplayerViewController *)self dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __58__GKMultiplayerViewController_dismissPickerViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playerPickerViewController];
  v3 = [v2 navigationController];
  [v3 setViewControllers:MEMORY[0x277CBEBF8]];

  v4 = [*(a1 + 32) playerPickerViewController];
  v5 = [v4 navigationController];
  [v5 removeFromParentViewController];

  v6 = *(a1 + 32);

  return [v6 setPlayerPickerViewController:0];
}

- (BOOL)allowPlayerCountSelection
{
  matchRequest = [(GKMultiplayerViewController *)self matchRequest];
  if (matchRequest)
  {
    matchRequest2 = [(GKMultiplayerViewController *)self matchRequest];
    maxPlayers = [matchRequest2 maxPlayers];
    matchRequest3 = [(GKMultiplayerViewController *)self matchRequest];
    v7 = maxPlayers > [matchRequest3 minPlayers];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setInvitationType:(int64_t)type
{
  if (self->_invitationType != type)
  {
    self->_invitationType = type;
    [(GKMultiplayerViewController *)self updateDataSourceInvitationEnabled];
  }
}

- (void)updateDataSourceInvitationEnabled
{
  invitationType = [(GKMultiplayerViewController *)self invitationType];
  if ((invitationType - 1) >= 2)
  {
    if (invitationType)
    {
      return;
    }

    isInSetupMode = [(GKMultiplayerViewController *)self isInSetupMode];
  }

  else
  {
    isInSetupMode = 0;
  }

  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [multiplayerDataSource setInvitingEnabled:isInSetupMode];
}

- (void)determineInvitationType
{
  [(GKMultiplayerViewController *)self setInvitationType:0];
  if ([(GKMultiplayerViewController *)self matchmakingMode]== 2)
  {
    footerView = [(GKMultiplayerViewController *)self footerView];
    [footerView setInviteFriendsButtonHidden:1];

    if ([(GKMultiplayerViewController *)self allowPlayerCountSelection])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    [(GKMultiplayerViewController *)self setInvitationType:v4];
  }
}

- (void)inviteFriendsButtonPressed
{
  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [multiplayerDataSource revertFailedPlayers];

  footerView = [(GKMultiplayerViewController *)self footerView];
  [footerView setStartGameButtonEnabled:0];

  footerView2 = [(GKMultiplayerViewController *)self footerView];
  [footerView2 setInviteFriendsButtonEnabled:0];

  [(GKMultiplayerViewController *)self presentPlayerPicker];
}

- (id)preferredFocusEnvironments
{
  v7[2] = *MEMORY[0x277D85DE8];
  footerView = [(GKMultiplayerViewController *)self footerView];
  v7[0] = footerView;
  collectionView = [(GKCollectionViewController *)self collectionView];
  v7[1] = collectionView;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (BOOL)setupInvitesForSource:(unint64_t)source completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [multiplayerDataSource revertFailedPlayers];

  multiplayerDataSource2 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  playersToBeInvited = [multiplayerDataSource2 playersToBeInvited];

  v33 = [playersToBeInvited count];
  if (v33)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = playersToBeInvited;
      _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "Multiplayer - sendInvites, playersToInvite = %@", buf, 0xCu);
    }

    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    utilityService = [proxyForLocalPlayer utilityService];
    v12 = MEMORY[0x277CCABB0];
    matchRequest = [(GKMultiplayerViewController *)self matchRequest];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(matchRequest, "minPlayers")}];
    v15 = MEMORY[0x277CCABB0];
    matchRequest2 = [(GKMultiplayerViewController *)self matchRequest];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(matchRequest2, "maxPlayers")}];
    [utilityService recordMatchStart:@"unknown" minPlayers:v14 maxPlayers:v17];

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(playersToBeInvited, "count")}];
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(playersToBeInvited, "count")}];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = playersToBeInvited;
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v21)
    {
      v22 = *v41;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v40 + 1) + 8 * i);
          contact = [v24 contact];

          if (contact)
          {
            v26 = v19;
          }

          else
          {
            v26 = v18;
          }

          [v26 addObject:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v21);
    }

    objc_initWeak(buf, self);
    multiplayerDataSource3 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __64__GKMultiplayerViewController_setupInvitesForSource_completion___block_invoke;
    v35[3] = &unk_27966B728;
    objc_copyWeak(v39, buf);
    v28 = v19;
    v36 = v28;
    v29 = v18;
    v37 = v29;
    v39[1] = v32;
    v38 = completionCopy;
    [multiplayerDataSource3 setStatus:1 forPlayers:v20 complete:v35];

    objc_destroyWeak(v39);
    objc_destroyWeak(buf);
  }

  return v33 != 0;
}

void __64__GKMultiplayerViewController_setupInvitesForSource_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__GKMultiplayerViewController_setupInvitesForSource_completion___block_invoke_2;
  block[3] = &unk_27966A3E0;
  block[4] = WeakRetained;
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v7 = v3;
  v9 = v4;
  v8 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)performActionsForButtonStartGame
{
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BBD8]];

  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "Multiplayer Game - performActionsForButtonStartGame - Starting game", v6, 2u);
  }

  [(GKMultiplayerViewController *)self playNow];
}

- (void)cancelButtonPressed
{
  if (self->_matchRequest)
  {
    isUserInteractionEnabled = [(GKMultiplayerFooterView *)self->_footerView isUserInteractionEnabled];
    reporter = [MEMORY[0x277D0C1F8] reporter];
    v5 = reporter;
    v6 = MEMORY[0x277D0BB90];
    if (isUserInteractionEnabled)
    {
      v6 = MEMORY[0x277D0BBC0];
    }

    [reporter reportEvent:*MEMORY[0x277D0BE78] type:*v6];
  }

  reporter2 = [MEMORY[0x277D0BFA8] reporter];
  pageId = [(GKMultiplayerViewController *)self pageId];
  [reporter2 recordClickWithAction:@"dismiss" targetId:@"close" targetType:@"button" pageId:pageId pageType:@"multiplayer"];

  footerView = [(GKMultiplayerViewController *)self footerView];
  [footerView setStartGameButtonEnabled:0];

  footerView2 = [(GKMultiplayerViewController *)self footerView];
  [footerView2 setInviteFriendsButtonEnabled:0];

  [(GKMultiplayerViewController *)self cancel];
}

- (void)inviteContactPlayers:(id)players source:(unint64_t)source completion:(id)completion
{
  playersCopy = players;
  completionCopy = completion;
  v10 = MEMORY[0x277D0C020];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerViewController.m", 1001, "-[GKMultiplayerViewController inviteContactPlayers:source:completion:]"];
  v12 = [v10 dispatchGroupWithName:v11];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke;
  v22[3] = &unk_27966B778;
  v22[4] = v23;
  [v12 perform:v22];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_192;
  v16[3] = &unk_27966B890;
  v16[4] = self;
  v20 = v23;
  v13 = completionCopy;
  v19 = v13;
  v14 = v12;
  v17 = v14;
  v15 = playersCopy;
  v18 = v15;
  sourceCopy = source;
  [v14 notifyOnMainQueueWithBlock:v16];

  _Block_object_dispose(v23, 8);
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v5 = [v4 multiplayerService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2;
  v8[3] = &unk_27966B750;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 hasExistingInviteSessionWithHandler:v8];
}

uint64_t __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithBool:a2];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "current invite session existence: %@", &v10, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_192(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matchRequest];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  v4 = [*(a1 + 32) invitationType];

  if (v4)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = [*(a1 + 32) shareURL];
  if (v9)
  {
    v10 = *(*(*(a1 + 64) + 8) + 24) | isKindOfClass;

    if (v10)
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v11 = GKOSLoggers();
      }

      v12 = *MEMORY[0x277D0C2B0];
      if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = v12;
        v15 = [v13 shareURL];
        *buf = 138412290;
        v29 = v15;
        _os_log_impl(&dword_24DE53000, v14, OS_LOG_TYPE_INFO, "we have previously got the share URL: %@, trying to setShareInvitees", buf, 0xCu);
      }

      [*(a1 + 32) setShareInvitees];
      goto LABEL_3;
    }
  }

  if (!*MEMORY[0x277D0C2A0])
  {
    v16 = GKOSLoggers();
  }

  v17 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v17, OS_LOG_TYPE_INFO, "loading share URL for Messages invites", buf, 2u);
  }

  [*(a1 + 32) setMessagesInviteStatus:0];
  if ([MEMORY[0x277CD6888] canSendText])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_195;
    v25[3] = &unk_279669B00;
    v18 = *(a1 + 40);
    v25[4] = *(a1 + 32);
    v26 = v18;
    v27 = *(a1 + 48);
    [v26 perform:v25];

LABEL_3:
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_201;
    v21[3] = &unk_27966B868;
    v20 = *(a1 + 32);
    v5 = *(&v20 + 1);
    v6 = *(a1 + 56);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v6;
    v22 = v20;
    v23 = v7;
    v24 = *(a1 + 72);
    [v5 notifyOnMainQueueWithBlock:v21];

    return;
  }

  [*(a1 + 32) setMessagesInviteStatus:1];
  v19 = *(a1 + 56);
  if (v19)
  {
    (*(v19 + 16))();
  }
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_195(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C010] daemonProxy];
  v5 = [v4 accountServicePrivate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_196;
  v8[3] = &unk_27966B7C8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v11 = v3;
  v10 = *(a1 + 48);
  v7 = v3;
  [v5 isICloudAvailableWithHandler:v8];
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_196(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) messagesInviteStatus];
  }

  else
  {
    v6 = 2;
  }

  [*(a1 + 32) setMessagesInviteStatus:v6];
  if (v5 || (a2 & 1) == 0)
  {
    [*(a1 + 40) setError:v5];
    if (!*MEMORY[0x277D0C2A0])
    {
      v12 = GKOSLoggers();
    }

    v13 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_196_cold_1(v13, a2, v5);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24DE53000, v8, OS_LOG_TYPE_INFO, "CloudKit is available.", buf, 2u);
    }

    v9 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_197;
    v14[3] = &unk_27966B7A0;
    v10 = *(a1 + 32);
    v15 = *(a1 + 40);
    v11 = *(a1 + 56);
    v16 = *(a1 + 32);
    v17 = v11;
    [v10 loadShareURLWithContactPlayers:v9 completion:v14];
  }
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_197(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277D0C2A0];
  if (v6)
  {
    if (!v7)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_197_cold_1();
    }

    [*(a1 + 32) setError:v6];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (!v7)
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_24DE53000, v10, OS_LOG_TYPE_INFO, "Received shareURL for Messages invites: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_198;
    block[3] = &unk_27966B380;
    block[4] = *(a1 + 40);
    v12 = v5;
    v13 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_198(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  [v2 setMessagesInviteStatus:v4];
  [*(a1 + 32) setShareURL:*(a1 + 40)];
  [*(a1 + 32) setShareInvitees];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_201(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) shareURL];
  if (v3 && (v4 = v3, [*(a1 + 40) error], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v15 = [MEMORY[0x277D0C1F8] reporter];
    [v15 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BC00]];

    v16 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    v17 = [v16 utilityService];
    v18 = MEMORY[0x277CCABB0];
    v19 = [*(a1 + 32) matchRequest];
    v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "minPlayers")}];
    v21 = MEMORY[0x277CCABB0];
    v22 = [*(a1 + 32) matchRequest];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "maxPlayers")}];
    [v17 recordMatchStart:@"contact" minPlayers:v20 maxPlayers:v23];

    v24 = [*(a1 + 32) matchRequest];
    v25 = [v24 minPlayers];
    v26 = [*(a1 + 32) matchRequest];
    v27 = [v26 maxPlayers];
    v28 = [*(a1 + 32) matchRequest];
    v29 = v27 - [v28 minPlayers];

    v30 = [*(a1 + 32) shareURL];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_206;
    v34[3] = &unk_27966B840;
    v34[4] = *(a1 + 32);
    v31 = *(a1 + 48);
    v33 = *(a1 + 56);
    v32 = *(a1 + 64);
    v35 = v31;
    v37 = v32;
    v36 = v33;
    [GKMessageUtilities linkMetadataWithPlayerRange:v25 shareURL:v29 completionHandler:v30, v34];
  }

  else
  {
    v6 = MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = MEMORY[0x277D0C2B0];
    v9 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_201_cold_1(v2, v9, a1);
    }

    v10 = [*(a1 + 40) error];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) error];
      [v11 handleServiceUnavailable:v12];

      [*(a1 + 32) performActionsForButtonCancelCurrentMatching];
    }

    else
    {
      if (!*v6)
      {
        v13 = GKOSLoggers();
      }

      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_201_cold_2();
      }
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      (*(v14 + 16))();
    }
  }
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_206(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CD46D8]);
  v4 = v3;
  if (v3)
  {
    [v3 setMetadata:v34];
    v59 = 0;
    v33 = v4;
    v5 = [v4 dataRepresentationWithOutOfLineAttachments:&v59];
    v6 = v59;
    v7 = [MEMORY[0x277CBEB58] set];
    v8 = [*(a1 + 32) multiplayerDataSource];
    v9 = [v8 selectedMessageGroups];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_208;
    v53[3] = &unk_27966B7F0;
    v10 = v7;
    v11 = *(a1 + 32);
    v40 = v10;
    v54 = v10;
    v55 = v11;
    v35 = v34;
    v56 = v35;
    v36 = v5;
    v57 = v36;
    v37 = v6;
    v58 = v37;
    [v9 enumerateObjectsUsingBlock:v53];

    v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v52 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    obj = *(a1 + 40);
    v12 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v12)
    {
      v13 = *v50;
      do
      {
        v14 = 0;
        do
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v49 + 1) + 8 * v14);
          v45 = 0;
          v46 = &v45;
          v47 = 0x2020000000;
          v48 = 0;
          v16 = [*(a1 + 32) multiplayerDataSource];
          v17 = [v16 selectedMessageGroups];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_214;
          v41[3] = &unk_27966B818;
          v42 = v40;
          v43 = v15;
          v44 = &v45;
          [v17 enumerateObjectsUsingBlock:v41];

          if (*(v46 + 24) == 1)
          {
            if (!*MEMORY[0x277D0C2A0])
            {
              v18 = GKOSLoggers();
            }

            v19 = *MEMORY[0x277D0C2B0];
            if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v61 = v15;
              _os_log_debug_impl(&dword_24DE53000, v19, OS_LOG_TYPE_DEBUG, "Skipping individual contact already included in group invite: %@", buf, 0xCu);
            }
          }

          else
          {
            v20 = [v15 contact];

            if (v20)
            {
              v21 = [v15 contact];
              v22 = [GKMessageUtilities messagesRecipientHandleForContact:v21];

              if (v22 && *(a1 + 56))
              {
                v23 = [*(a1 + 32) matchRequest];
                v24 = [v23 inviteMessage];
                v25 = [v24 length];

                if (v25)
                {
                  v26 = [*(a1 + 32) matchRequest];
                  [v26 inviteMessage];
                }

                else
                {
                  v26 = GKGameCenterUIFrameworkBundle();
                  GKGetLocalizedStringFromTableInBundle();
                }
                v27 = ;
                IMSPISendMessageWithAttachments();

                v29 = [v35 originalURL];
                IMSPISendRichLink();

                if (!*MEMORY[0x277D0C2A0])
                {
                  v30 = GKOSLoggers();
                }

                v31 = *MEMORY[0x277D0C2B0];
                if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v61 = v22;
                  _os_log_debug_impl(&dword_24DE53000, v31, OS_LOG_TYPE_DEBUG, "Sent message invitation via IMSPISendRichLink, to: %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v28 = [v15 displayNameWithOptions:0];
              [v38 setObject:v15 forKeyedSubscript:v28];
            }
          }

          _Block_object_dispose(&v45, 8);
          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v12);
    }

    [*(a1 + 32) didInviteContactPlayers];
    v4 = v33;
  }

  v32 = *(a1 + 48);
  if (v32)
  {
    (*(v32 + 16))();
  }
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_208(id *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 conversationIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v27 = [v3 conversationIdentifier];
    v6 = MEMORY[0x277CBEB18];
    v7 = [v3 players];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [v3 players];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v28 + 1) + 8 * v13) contact];
          v15 = [GKMessageUtilities messagesRecipientHandleForContact:v14];

          if (v15)
          {
            [v8 addObject:v15];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v16 = [v3 players];
    v17 = [v16 count];
    v18 = [v8 count];

    if (v17 == v18)
    {
      v19 = [a1[5] matchRequest];
      v20 = [v19 inviteMessage];
      if ([v20 length])
      {
        v21 = [a1[5] matchRequest];
        [v21 inviteMessage];
      }

      else
      {
        v21 = GKGameCenterUIFrameworkBundle();
        GKGetLocalizedStringFromTableInBundle();
      }
      v24 = ;
      v23 = v27;

      IMSPISendMessageWithAttachmentsToMany();
      v25 = [a1[6] originalURL];
      IMSPISendRichLinkToMany();

      if (!*MEMORY[0x277D0C2A0])
      {
        v26 = GKOSLoggers();
      }

      if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
      {
        __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_208_cold_2();
      }
    }

    else
    {
      [a1[4] addObject:v3];
      if (!*MEMORY[0x277D0C2A0])
      {
        v22 = GKOSLoggers();
      }

      v23 = v27;
      if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
      {
        __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_208_cold_1();
      }
    }
  }
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_214(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v5 = [v8 conversationIdentifier];
    if ([v5 length])
    {
      v6 = [v8 players];
      v7 = [v6 containsObject:*(a1 + 40)];

      if (v7)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a3 = 1;
      }
    }

    else
    {
    }
  }
}

- (void)setShareURL:(id)l
{
  objc_storeStrong(&self->_shareURL, l);
  v4 = 3;
  if (self->_shareURL)
  {
    v4 = 4;
  }

  self->_messagesInviteStatus = v4;
}

- (void)handleServiceUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__GKMultiplayerViewController_handleServiceUnavailable___block_invoke;
  v6[3] = &unk_279669E48;
  v7 = unavailableCopy;
  selfCopy = self;
  v5 = unavailableCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__GKMultiplayerViewController_handleServiceUnavailable___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = [v2 alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__GKMultiplayerViewController_handleServiceUnavailable___block_invoke_2;
  v14[3] = &unk_279669C68;
  v14[4] = *(a1 + 40);
  v9 = [v6 actionWithTitle:v8 style:1 handler:v14];

  v10 = MEMORY[0x277D750F8];
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v13 = [v10 actionWithTitle:v12 style:0 handler:&__block_literal_global_232];

  [v5 addAction:v9];
  [v5 addAction:v13];
  [*(a1 + 40) presentViewController:v5 animated:1 completion:0];
}

void __56__GKMultiplayerViewController_handleServiceUnavailable___block_invoke_3()
{
  v1 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v0 = [v1 utilityService];
  [v0 openICloudSettings];
}

- (void)localPlayerAcceptedGameInvite:(id)invite
{
  [(GKMultiplayerViewController *)self setDidAcceptGameInvite:1];

  [(GKMultiplayerViewController *)self cancel];
}

- (void)playersToInvite:(id)invite
{
  [(GKMultiplayerViewController *)self setDidAcceptGameInvite:1];

  [(GKMultiplayerViewController *)self cancel];
}

- (void)handleNewParticipantCount:(int64_t)count
{
  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  participants = [multiplayerDataSource participants];
  v6 = [participants count];

  if (v6 != count)
  {
    players = [multiplayerDataSource players];
    v8 = [players count];

    v9 = count - v8;
    if (count - v8 >= 0)
    {
      [multiplayerDataSource setAutomatchPlayerCount:v9 complete:0];
    }

    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    [mEMORY[0x277D0C1D8] setRecentNumberOfPlayers:count];

    mEMORY[0x277D0C1D8]2 = [MEMORY[0x277D0C1D8] shared];
    game = [(GKMultiplayerViewController *)self game];
    bundleIdentifier = [game bundleIdentifier];
    [mEMORY[0x277D0C1D8]2 setRecentNumberOfPlayers:count forBundleID:bundleIdentifier];
  }
}

- (void)didTapRemoveParticipant:(id)participant
{
  player = [participant player];
  [(GKMultiplayerViewController *)self removePlayer:player];
}

- (void)dataSource:(id)source didRefreshSections:(id)sections
{
  sourceCopy = source;
  sectionsCopy = sections;
  if ([(GKMultiplayerViewController *)self isViewLoaded])
  {
    view = [(GKMultiplayerViewController *)self view];
    window = [view window];

    if (window)
    {
      buttonHeaderView = [(GKMultiplayerViewController *)self buttonHeaderView];

      if (buttonHeaderView)
      {
        if ([(GKMultiplayerViewController *)self isLoading])
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __61__GKMultiplayerViewController_dataSource_didRefreshSections___block_invoke;
          block[3] = &unk_27966A9A8;
          v13 = sourceCopy;
          v14 = sectionsCopy;
          selfCopy = self;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }

        else
        {
          v11.receiver = self;
          v11.super_class = GKMultiplayerViewController;
          [(GKCollectionViewController *)&v11 dataSource:sourceCopy didRefreshSections:sectionsCopy];
        }
      }
    }
  }
}

id __61__GKMultiplayerViewController_dataSource_didRefreshSections___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = GKMultiplayerViewController;
  return objc_msgSendSuper2(&v4, sel_dataSource_didRefreshSections_, v2, v1);
}

- (BOOL)isLoading
{
  loadingState = [(GKCollectionViewController *)self loadingState];
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

- (int64_t)multiplayerCellLayoutMode
{
  viewControllerLayout = [(GKMultiplayerViewController *)self viewControllerLayout];
  cellLayoutMode = [viewControllerLayout cellLayoutMode];

  return cellLayoutMode;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v17.receiver = self;
  v17.super_class = GKMultiplayerViewController;
  [(GKCollectionViewController *)&v17 traitCollectionDidChange:changeCopy];
  traitCollection = [(GKMultiplayerViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass == [changeCopy horizontalSizeClass])
  {
    traitCollection2 = [(GKMultiplayerViewController *)self traitCollection];
    verticalSizeClass = [traitCollection2 verticalSizeClass];
    if (verticalSizeClass == [changeCopy verticalSizeClass])
    {
      traitCollection3 = [(GKMultiplayerViewController *)self traitCollection];
      layoutDirection = [traitCollection3 layoutDirection];
      if (layoutDirection == [changeCopy layoutDirection])
      {
        traitCollection4 = [(GKMultiplayerViewController *)self traitCollection];
        preferredContentSizeCategory = [traitCollection4 preferredContentSizeCategory];
        preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

        if (preferredContentSizeCategory == preferredContentSizeCategory2)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  [(GKMultiplayerViewController *)self setViewNeedsLayout];
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView reloadData];

  collectionView2 = [(GKCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];
  [collectionViewLayout invalidateLayout];

LABEL_10:
  [(GKMultiplayerViewController *)self configureAutoBounce];
}

- (void)configureAutoBounce
{
  traitCollection = [(GKMultiplayerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    collectionView = [(GKCollectionViewController *)self collectionView];
    v6 = collectionView;
  }

  else
  {
    traitCollection2 = [(GKMultiplayerViewController *)self traitCollection];
    verticalSizeClass = [traitCollection2 verticalSizeClass];

    collectionView = [(GKCollectionViewController *)self collectionView];
    v6 = collectionView;
    if (verticalSizeClass == 1)
    {
      [collectionView setAlwaysBounceVertical:0];
      goto LABEL_6;
    }
  }

  [collectionView setAlwaysBounceVertical:1];
  verticalSizeClass = 0;
LABEL_6:

  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 setAlwaysBounceHorizontal:verticalSizeClass];
}

- (void)didUpdateParticipants
{
  v9[1] = *MEMORY[0x277D85DE8];
  [(GKMultiplayerViewController *)self updateFooterButtonStates];
  buttonHeaderView = [(GKMultiplayerViewController *)self buttonHeaderView];

  if (!buttonHeaderView)
  {
    if ([(GKMultiplayerViewController *)self showNavigationBar])
    {
      makeDoubleHeaderView = [(GKMultiplayerViewController *)self makeDoubleHeaderView];
    }

    else
    {
      makeDoubleHeaderView = [(GKMultiplayerViewController *)self makeButtonHeaderView];
      [makeDoubleHeaderView applyGame:self->_game];
      view = [(GKMultiplayerViewController *)self view];
      [view addSubview:makeDoubleHeaderView];

      if (makeDoubleHeaderView)
      {
        v6 = objc_alloc_init(MEMORY[0x277D75500]);
        v9[0] = makeDoubleHeaderView;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
        [v6 setPreferredFocusEnvironments:v7];

        view2 = [(GKMultiplayerViewController *)self view];
        [view2 addLayoutGuide:v6];

        [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForLayoutGuide:v6 containedWithinParentView:makeDoubleHeaderView];
      }
    }

    [(GKMultiplayerViewController *)self setButtonHeaderView:makeDoubleHeaderView];
  }

  [(GKMultiplayerViewController *)self updateTitle];
  [(GKMultiplayerViewController *)self setViewNeedsLayout];
}

- (void)updateFooterButtonStates
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(GKMultiplayerViewController *)self maxAvailablePlayers]> 0;
  footerView = [(GKMultiplayerViewController *)self footerView];
  [footerView setInviteFriendsButtonEnabled:v3];

  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  participants = [multiplayerDataSource participants];
  v7 = [participants count];
  v8 = v7 >= [multiplayerDataSource minPlayers];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  participants2 = [multiplayerDataSource participants];
  v10 = [participants2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(participants2);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        player = [v14 player];
        isLocalPlayer = [player isLocalPlayer];

        if ((isLocalPlayer & 1) == 0 && (-[GKMultiplayerViewController matchmakingMode](self, "matchmakingMode") == 3 || -[GKMultiplayerViewController matchmakingMode](self, "matchmakingMode") == 1 || [v14 type] != 1) && objc_msgSend(v14, "status") != 7 && objc_msgSend(v14, "status") != 21 && objc_msgSend(v14, "status") != 20)
        {
          v8 = 0;
          goto LABEL_17;
        }
      }

      v11 = [participants2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if ([(GKMultiplayerViewController *)self canStartWithMinimumPlayers])
  {
    multiplayerDataSource2 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    readyPlayers = [multiplayerDataSource2 readyPlayers];
    v19 = [readyPlayers count];
    matchRequest = [(GKMultiplayerViewController *)self matchRequest];
    LODWORD(v19) = v19 >= [matchRequest minPlayers];

    v8 |= v19;
  }

  matchRequest2 = [(GKMultiplayerViewController *)self matchRequest];
  v22 = [matchRequest2 hasFutureRecipientProperties] ^ 1;
  footerView2 = [(GKMultiplayerViewController *)self footerView];
  [footerView2 setStartGameButtonEnabled:v22 & v8];
}

- (id)makeButtonHeaderView
{
  objc_initWeak(&location, self);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __51__GKMultiplayerViewController_makeButtonHeaderView__block_invoke;
  v20 = &unk_279669FE0;
  objc_copyWeak(&v21, &location);
  v3 = _Block_copy(&v17);
  v4 = [_TtC12GameCenterUI29GKMultiplayerButtonHeaderView alloc];
  v5 = [(GKMultiplayerViewController *)self matchRequest:v17];
  minPlayers = [v5 minPlayers];

  multiplayerDataSource = [(GKMultiplayerViewController *)self multiplayerDataSource];
  players = [multiplayerDataSource players];
  v9 = [players count];

  if (minPlayers <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = minPlayers;
  }

  matchRequest = [(GKMultiplayerViewController *)self matchRequest];
  maxPlayers = [matchRequest maxPlayers];
  multiplayerDataSource2 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  participants = [multiplayerDataSource2 participants];
  v15 = -[GKMultiplayerButtonHeaderView initWithMinimumValue:maximumValue:initialValue:cancelButtonHandler:](v4, "initWithMinimumValue:maximumValue:initialValue:cancelButtonHandler:", v10, maxPlayers, [participants count], v3);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v15;
}

void __51__GKMultiplayerViewController_makeButtonHeaderView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelButtonPressed];
}

- (id)makeDoubleHeaderView
{
  v3 = [_TtC12GameCenterUI26NavigationDoubleHeaderView alloc];
  v4 = [(NavigationDoubleHeaderView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  name = [(GKGame *)self->_game name];
  [(NavigationDoubleHeaderView *)v4 setTitleText:name];

  [(GKMultiplayerViewController *)self updateTitle];
  navigationItem = [(GKMultiplayerViewController *)self navigationItem];
  [navigationItem setTitleView:v4];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed];
  navigationItem2 = [(GKMultiplayerViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v7];

  return v4;
}

- (BOOL)allowAutoMatch
{
  if ([(GKMultiplayerViewController *)self matchmakingMode]== 3 || [(GKMultiplayerViewController *)self matchmakingMode]== 1)
  {
    return 0;
  }

  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  v3 = [mEMORY[0x277D0C1D8] multiplayerAllowedPlayerType] == 2;

  return v3;
}

- (BOOL)isParticipantInvitedByLocalPlayer:(id)player
{
  playerCopy = player;
  participantsInvitedByLocalPlayer = [(GKMultiplayerViewController *)self participantsInvitedByLocalPlayer];
  player = [playerCopy player];

  internal = [player internal];
  playerID = [internal playerID];
  v9 = [participantsInvitedByLocalPlayer containsObject:playerID];

  return v9;
}

- (void)setViewNeedsLayout
{
  view = [(GKMultiplayerViewController *)self view];
  [view setNeedsLayout];
}

- (GKDashboardNearbyBrowserDelegate)nearbyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_nearbyDelegate);

  return WeakRetained;
}

void __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__GKMultiplayerViewController_initWithMatchRequest___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__GKMultiplayerViewController_sendInvitesToPlayersInOriginalMatchRequest__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 originalMatchRequest];
  v5 = [v4 recipients];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_24DE53000, v3, OS_LOG_TYPE_ERROR, "Failed to load recipients from: %@", v6, 0xCu);
}

void __46__GKMultiplayerViewController_viewWillAppear___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__GKMultiplayerViewController_viewWillAppear___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__GKMultiplayerViewController_viewDidDisappear___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__GKMultiplayerViewController_viewDidDisappear___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_196_cold_1(void *a1, char a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithBool:a2 & 1];
  OUTLINED_FUNCTION_2_0();
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_24DE53000, v6, OS_LOG_TYPE_ERROR, "CloudKit is not available. availibility: %@ error: %@", v8, 0x16u);
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_197_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_24DE53000, v1, OS_LOG_TYPE_ERROR, "Error encountered for loadShareURLWithContactPlayers:completion:, in Messages invites: %@ error: %@", v2, 0x16u);
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_201_cold_1(id *a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = *a1;
  v7 = a2;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "messagesInviteStatus")}];
  v9 = [*a1 shareURL];
  v10 = [*(a3 + 40) error];
  v11 = 138412802;
  v12 = v8;
  v13 = 2112;
  v14 = v9;
  v15 = 2112;
  v16 = v10;
  _os_log_error_impl(&dword_24DE53000, v7, OS_LOG_TYPE_ERROR, "Cannot invite contact players - no shareURL or encountered error. Message Invite Status: %@, shareURL: %@, error: %@", &v11, 0x20u);
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_208_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __70__GKMultiplayerViewController_inviteContactPlayers_source_completion___block_invoke_2_208_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end