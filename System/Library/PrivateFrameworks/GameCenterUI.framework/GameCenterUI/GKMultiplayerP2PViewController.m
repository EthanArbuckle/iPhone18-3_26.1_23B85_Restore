@interface GKMultiplayerP2PViewController
+ (void)addContactCheckTaskForMessageID:(id)a3 respondingPlayer:(id)a4 dataSource:(id)a5 toGroup:(id)a6;
- (BOOL)canStartForcedAutomatch;
- (BOOL)haveInvitedPlayers;
- (BOOL)havePendingPlayers;
- (BOOL)needRecipientPropertiesForPlayer:(id)a3;
- (BOOL)shouldChangeModeFromOldMode:(int64_t)a3 toNewMode:(int64_t)a4;
- (GKMultiplayerP2PViewController)initWithAcceptedInvite:(id)a3;
- (GKMultiplayerP2PViewController)initWithMatchRequest:(id)a3;
- (GKMultiplayerP2PViewControllerDelegate)delegate;
- (id)pageId;
- (int64_t)automatchParticipantStatus;
- (void)addExistingRemoteReadyPlayers:(id)a3 withCompletionHandler:(id)a4;
- (void)applicationWillEnterForeground;
- (void)cancel;
- (void)cancelAlertWithoutDelegateCallback;
- (void)cancelPendingInvites;
- (void)configureDataSourceWithCompletionHandler:(id)a3;
- (void)configureWhenEnteringTheLobby;
- (void)configureWhenLeavingTheLobby;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)dealloc;
- (void)displayCancelConfirmationDialog;
- (void)finishWithError:(id)a3;
- (void)groupActivityJoiningPlayer:(id)a3 devicePushToken:(id)a4 participantServerIdentifier:(id)a5;
- (void)incrementOneAutoMatchPlayerCountIfPossible;
- (void)inviteFriendsButtonPressed;
- (void)invitePlayers:(id)a3;
- (void)loadShareURLWithContactPlayers:(id)a3 completion:(id)a4;
- (void)performActionsForButtonCancelCurrentMatching:(BOOL)a3;
- (void)playNow;
- (void)playerConnected:(id)a3;
- (void)playerDisconnected:(id)a3;
- (void)prepopulateSharePlayActiveParticipants;
- (void)presentSharePlaySharingController;
- (void)processStatusUpdateMessageFromPlayer:(id)a3 bytes:(const char *)a4 withLength:(unsigned int)a5;
- (void)removedPlayer:(id)a3;
- (void)resetInviteesStatus;
- (void)sendInvitesToContactPlayers:(id)a3 legacyPlayers:(id)a4 source:(unint64_t)a5 completion:(id)a6;
- (void)sendInvitesToSharePlayPlayer:(id)a3 devicePushToken:(id)a4;
- (void)sendStatusUpdate;
- (void)setAutomatchFailedWithError:(id)a3;
- (void)setAutomatchPlayerCount:(int64_t)a3;
- (void)setConnectingStateForPlayer:(id)a3;
- (void)setExistingPlayers:(id)a3;
- (void)setInvitesFailedWithError:(id)a3;
- (void)setMode:(int64_t)a3;
- (void)setPlayer:(id)a3 connected:(BOOL)a4;
- (void)setPlayer:(id)a3 responded:(int64_t)a4;
- (void)setPlayer:(id)a3 sentData:(id)a4;
- (void)setShareInvitees;
- (void)setUpVisualEffect;
- (void)sharePlayFetchFirstActiveConversationWithHandler:(id)a3;
- (void)showAutomatchingErrorAlert;
- (void)showInviterDisconnectedAlert;
- (void)showMatchDisconnectedAlertForPlayer:(id)a3;
- (void)showNoInternetAlert;
- (void)showParentalControlsRestrictionAlert;
- (void)startGame;
- (void)startGameButtonPressed;
- (void)updateFooterButtonStates;
- (void)updateForNewMode;
- (void)updateMode;
- (void)updateRecipientProperties:(id)a3 forPlayer:(id)a4;
- (void)updateStartGameButtonTitle;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willPresentPlayerPicker:(id)a3;
@end

@implementation GKMultiplayerP2PViewController

- (GKMultiplayerP2PViewController)initWithAcceptedInvite:(id)a3
{
  v4 = a3;
  v5 = [(GKMultiplayerP2PViewController *)self initWithMatchRequest:0];
  v6 = v5;
  if (v5)
  {
    [(GKMultiplayerP2PViewController *)v5 setAcceptedInvite:v4];
    -[GKMultiplayerP2PViewController setHosted:](v6, "setHosted:", [v4 isHosted]);
    [(GKMultiplayerP2PViewController *)v6 setOrigin:3];
  }

  return v6;
}

- (GKMultiplayerP2PViewController)initWithMatchRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKMultiplayerP2PViewController;
  return [(GKMultiplayerViewController *)&v4 initWithMatchRequest:a3];
}

- (void)configureDataSourceWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 100, "-[GKMultiplayerP2PViewController configureDataSourceWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  v8 = [(GKCollectionViewController *)self dataSource];

  if (!v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__GKMultiplayerP2PViewController_configureDataSourceWithCompletionHandler___block_invoke;
    v14[3] = &unk_27966A148;
    v14[4] = self;
    [v7 perform:v14];
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__GKMultiplayerP2PViewController_configureDataSourceWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_27966B248;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [v7 notifyOnMainQueueWithBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __75__GKMultiplayerP2PViewController_configureDataSourceWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__GKMultiplayerP2PViewController_configureDataSourceWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_27966A4A8;
  v8 = v3;
  v6.receiver = v4;
  v6.super_class = GKMultiplayerP2PViewController;
  v5 = v3;
  objc_msgSendSuper2(&v6, sel_configureDataSourceWithCompletionHandler_, v7);
}

void __75__GKMultiplayerP2PViewController_configureDataSourceWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained acceptedInvite];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v3)
  {
    v6 = [v4 dataSource];

    [v6 setMinPlayers:2];
    [v6 setMaxPlayers:2];
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 acceptedInvite];
    v9 = [v8 sender];
    v20[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__GKMultiplayerP2PViewController_configureDataSourceWithCompletionHandler___block_invoke_4;
    v17[3] = &unk_27966B248;
    objc_copyWeak(&v19, (a1 + 40));
    v18 = *(a1 + 32);
    [v6 addPlayers:v10 withStatus:6 complete:v17];

    objc_destroyWeak(&v19);
  }

  else
  {
    [v4 setDatasourceConfigured:1];

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 sharePlayEnabled];
    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 multiplayerDataSource];
    [v14 setSharePlayEnabled:v12];

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = *(v15 + 16);

      v16();
    }
  }
}

uint64_t __75__GKMultiplayerP2PViewController_configureDataSourceWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDatasourceConfigured:1];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)pageId
{
  v2 = [(GKMultiplayerP2PViewController *)self origin];
  if (v2 - 1 > 2)
  {
    return @"sharePlay";
  }

  else
  {
    return off_27966B490[v2 - 1];
  }
}

- (void)dealloc
{
  [(GKMultiplayerP2PViewController *)self cancelAlertWithoutDelegateCallback];
  v3.receiver = self;
  v3.super_class = GKMultiplayerP2PViewController;
  [(GKMultiplayerViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = GKMultiplayerP2PViewController;
  [(GKMultiplayerViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKMultiplayerP2PViewController;
  [(GKMultiplayerViewController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x277D0BFA8] reporter];
  v5 = [(GKMultiplayerP2PViewController *)self pageId];
  [v4 recordPageWithID:v5 pageContext:@"realTimeGame" pageType:@"multiplayer"];

  if ([(GKMultiplayerP2PViewController *)self isMovingToParentViewController])
  {
    [(GKMultiplayerP2PViewController *)self configureWhenEnteringTheLobby];
  }

  [(GKMultiplayerP2PViewController *)self setUpVisualEffect];
}

- (void)setUpVisualEffect
{
  v3 = objc_alloc(MEMORY[0x277D75D68]);
  v4 = [MEMORY[0x277D75210] effectWithStyle:2];
  v8 = [v3 initWithEffect:v4];

  v5 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v8 setBackgroundEffects:v5];

  [v8 _setGroupName:@"gameLayerGroup"];
  v6 = [(GKMultiplayerP2PViewController *)self view];
  [v6 bounds];
  [v8 setFrame:?];

  [v8 setAutoresizingMask:18];
  v7 = [(GKMultiplayerP2PViewController *)self view];
  [v7 insertSubview:v8 atIndex:0];
}

- (void)configureWhenEnteringTheLobby
{
  if (self->_acceptedInvite)
  {
    [(GKMultiplayerP2PViewController *)self setMode:4];
  }

  else
  {
    if ([(GKMultiplayerViewController *)self canStartGroupActivities])
    {
      if ([(GKMultiplayerP2PViewController *)self startStagedActivity])
      {
        v3 = 9;
      }

      else
      {
        v3 = 8;
      }

      [(GKMultiplayerP2PViewController *)self setMode:v3];
      v4 = self;
      v5 = 1;
    }

    else
    {
      [(GKMultiplayerP2PViewController *)self setMode:0];
      v4 = self;
      v5 = 0;
    }

    [(GKMultiplayerP2PViewController *)v4 setSharePlayEnabled:v5];
  }

  if (![(GKMultiplayerP2PViewController *)self datasourceConfigured])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__GKMultiplayerP2PViewController_configureWhenEnteringTheLobby__block_invoke;
    v6[3] = &unk_2796699A8;
    v6[4] = self;
    [(GKMultiplayerP2PViewController *)self configureDataSourceWithCompletionHandler:v6];
  }
}

void __63__GKMultiplayerP2PViewController_configureWhenEnteringTheLobby__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) existingRemoteReadyPlayers];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 existingRemoteReadyPlayers];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__GKMultiplayerP2PViewController_configureWhenEnteringTheLobby__block_invoke_2;
    v6[3] = &unk_279669FE0;
    objc_copyWeak(&v7, &location);
    [v4 addExistingRemoteReadyPlayers:v5 withCompletionHandler:v6];

    objc_destroyWeak(&v7);
  }

  else
  {
    [v4 prepopulateSharePlayActiveParticipants];
  }

  objc_destroyWeak(&location);
}

void __63__GKMultiplayerP2PViewController_configureWhenEnteringTheLobby__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained prepopulateSharePlayActiveParticipants];
    WeakRetained = v2;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = GKMultiplayerP2PViewController;
  [(GKMultiplayerViewController *)&v11 viewDidAppear:a3];
  v4 = [MEMORY[0x277D0C1D8] shared];
  v5 = [v4 multiplayerAllowedPlayerType];

  if (v5)
  {
    if ([MEMORY[0x277D0C1F0] _gkIsOnline])
    {
      v6 = [(GKMultiplayerViewController *)self originalMatchRequest];
      v7 = [v6 validateForHosted:self->_hosted];

      if (v7)
      {
        [(GKMultiplayerP2PViewController *)self finishWithError:v7];
      }

      v8 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
      v9 = [v8 accountServicePrivate];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __48__GKMultiplayerP2PViewController_viewDidAppear___block_invoke;
      v10[3] = &unk_27966B138;
      v10[4] = self;
      [v9 isICloudAvailableWithHandler:v10];
    }

    else
    {
      [(GKMultiplayerP2PViewController *)self showNoInternetAlert];
    }
  }

  else
  {
    [(GKMultiplayerP2PViewController *)self showParentalControlsRestrictionAlert];
  }
}

void __48__GKMultiplayerP2PViewController_viewDidAppear___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA9B8] userErrorForCode:35 underlyingError:v5];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__GKMultiplayerP2PViewController_viewDidAppear___block_invoke_2;
    block[3] = &unk_27966A9A8;
    block[4] = *(a1 + 32);
    v10 = v6;
    v11 = v5;
    v7 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v8 = [MEMORY[0x277D0BFA8] reporter];
    [v8 recordMultiplayerErrorID:@"iCloudUnavailable"];
  }
}

void __48__GKMultiplayerP2PViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__GKMultiplayerP2PViewController_viewDidAppear___block_invoke_3;
  v13[3] = &unk_279669E48;
  v9 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__GKMultiplayerP2PViewController_viewDidAppear___block_invoke_4;
  v11[3] = &unk_279669E48;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = [v2 _gkPresentConfirmationAlertWithTitle:v4 message:v6 buttonTitle:v8 block:v13 cancelAction:v11];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKMultiplayerP2PViewController;
  [(GKMultiplayerViewController *)&v5 viewDidDisappear:a3];
  if ([(GKMultiplayerP2PViewController *)self isMovingFromParentViewController])
  {
    [(GKMultiplayerP2PViewController *)self configureWhenLeavingTheLobby];
    v4 = [(GKMultiplayerP2PViewController *)self delegate];
    [v4 endGroupActivitiesForMultiplayerP2PViewController:self];
  }
}

- (void)configureWhenLeavingTheLobby
{
  [(GKMultiplayerP2PViewController *)self performActionsForButtonCancelCurrentMatching:1];
  [(GKMultiplayerP2PViewController *)self cancelAlertWithoutDelegateCallback];
  [(GKMultiplayerP2PViewController *)self cancelPendingInvites];
  v3 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [v3 clearDataSource];
  [(GKCollectionViewController *)self setDataSource:0];
  [(GKMultiplayerP2PViewController *)self setDatasourceConfigured:0];
  [(GKMultiplayerViewController *)self setDidStartForcedAutomatch:0];
  [(GKMultiplayerP2PViewController *)self setSharePlayEnabled:0];
}

- (void)cancel
{
  [(GKMultiplayerP2PViewController *)self cancelAlertWithoutDelegateCallback];
  [(GKMultiplayerP2PViewController *)self cancelPendingInvites];
  if (![(GKMultiplayerViewController *)self didAcceptGameInvite])
  {
    if ([(GKMultiplayerP2PViewController *)self sharePlayEnabled])
    {
      v3 = [(GKMultiplayerP2PViewController *)self delegate];
      [v3 endGroupActivitiesForMultiplayerP2PViewController:self];
    }

    v4 = [(GKMultiplayerP2PViewController *)self delegate];
    [v4 multiplayerP2PViewControllerWasCancelled:self];
  }
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  [(GKMultiplayerP2PViewController *)self cancelAlertWithoutDelegateCallback];
  v5 = [(GKMultiplayerP2PViewController *)self delegate];
  [v5 multiplayerP2PViewController:self didFinishWithError:v4];
}

- (BOOL)shouldChangeModeFromOldMode:(int64_t)a3 toNewMode:(int64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  if ((a3 - 2) < 2)
  {
    if (a4 == 1)
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v6 = GKOSLoggers();
      }

      v7 = *MEMORY[0x277D0C2B0];
      v8 = os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO);
      if (v8)
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = v7;
        v11 = [v9 numberWithInteger:a3];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        v13 = [MEMORY[0x277CCACC8] callStackSymbols];
        v23 = 138412802;
        v24 = v11;
        v25 = 2112;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_24DE53000, v10, OS_LOG_TYPE_INFO, "should not change mode from: %@, to: %@, call stack: %@", &v23, 0x20u);

LABEL_15:
        LOBYTE(v8) = 0;
        return v8;
      }

      return v8;
    }

LABEL_16:
    LOBYTE(v8) = 1;
    return v8;
  }

  if (a3 != 7)
  {
    goto LABEL_16;
  }

  if (!a4 || (v14 = [(GKMultiplayerViewController *)self canStartWithMinimumPlayers], LOBYTE(v8) = 1, a4 == 1) && v14)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v15 = GKOSLoggers();
    }

    v16 = *MEMORY[0x277D0C2B0];
    v8 = os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO);
    if (v8)
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = v16;
      v19 = [v17 numberWithInteger:7];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v21 = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = 138412802;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_24DE53000, v18, OS_LOG_TYPE_INFO, "should not change mode from: %@, to: %@, call stack: %@", &v23, 0x20u);

      goto LABEL_15;
    }
  }

  return v8;
}

- (void)setMode:(int64_t)a3
{
  v3 = a3;
  if (((a3 == 0) & [(GKMultiplayerP2PViewController *)self sharePlayEnabled]) != 0)
  {
    v3 = 8;
  }

  mode = self->_mode;
  if (mode != v3 && [(GKMultiplayerP2PViewController *)self shouldChangeModeFromOldMode:mode toNewMode:v3])
  {
    self->_mode = v3;

    [(GKMultiplayerP2PViewController *)self updateForNewMode];
  }
}

- (void)updateForNewMode
{
  v3 = [(GKMultiplayerP2PViewController *)self mode];
  v4 = 0;
  v5 = 1;
  if (v3 <= 4)
  {
    if (v3 > 1)
    {
      if (v3 != 2)
      {
        v33 = GKGameCenterUIFrameworkBundle();
        v4 = GKGetLocalizedStringFromTableInBundle();

        [(GKMultiplayerViewController *)self setAddButtonEnabled:0];
        v34 = [(GKMultiplayerViewController *)self multiplayerDataSource];
        [v34 setRemovingEnabled:0];

LABEL_21:
        v5 = 0;
        goto LABEL_33;
      }

LABEL_17:
      v20 = GKGameCenterUIFrameworkBundle();
      v4 = GKGetLocalizedStringFromTableInBundle();

      [(GKMultiplayerViewController *)self setAddButtonEnabled:0];
      v21 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      v6 = v21;
      v22 = 0;
LABEL_31:
      [v21 setRemovingEnabled:v22];
LABEL_32:

      goto LABEL_33;
    }

    if (!v3)
    {
      [(GKMultiplayerViewController *)self setAddButtonEnabled:1];
      v19 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      [v19 setRemovingEnabled:1];

      v4 = 0;
      goto LABEL_33;
    }

    if (v3 != 1)
    {
      goto LABEL_33;
    }

    v7 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();

    v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v9 = [v8 players];
    v10 = [v9 count];
    v11 = [(GKMultiplayerViewController *)self matchRequest];
    v12 = [v11 maxPlayers];

    if (v10 == v12 || (-[GKMultiplayerViewController multiplayerDataSource](self, "multiplayerDataSource"), v41 = objc_claimAutoreleasedReturnValue(), [v41 items], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "count"), -[GKMultiplayerViewController matchRequest](self, "matchRequest"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "maxPlayers"), v44, v42, v41, v43 == v45) && !-[GKMultiplayerP2PViewController havePendingPlayers](self, "havePendingPlayers"))
    {
      v13 = GKGameCenterUIFrameworkBundle();
      v14 = GKGetLocalizedStringFromTableInBundle();

      v4 = v14;
    }

LABEL_30:
    v5 = 1;
    [(GKMultiplayerViewController *)self setAddButtonEnabled:1];
    v21 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v6 = v21;
    v22 = 1;
    goto LABEL_31;
  }

  if (v3 <= 6)
  {
    if (v3 != 5)
    {
      [(GKMultiplayerP2PViewController *)self setUserCancelledMatching:1];
      v15 = GKGameCenterUIFrameworkBundle();
      v4 = GKGetLocalizedStringFromTableInBundle();

      [(GKMultiplayerViewController *)self setAddButtonEnabled:0];
      v16 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      [v16 setRemovingEnabled:0];

      v17 = [(GKMultiplayerViewController *)self footerView];
      [v17 setInviteFriendsButtonEnabled:0];

      v18 = dispatch_time(0, (*MEMORY[0x277D0BC68] * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__GKMultiplayerP2PViewController_updateForNewMode__block_invoke;
      block[3] = &unk_2796699A8;
      block[4] = self;
      dispatch_after(v18, MEMORY[0x277D85CD0], block);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (v3 == 7)
  {
    [(GKMultiplayerViewController *)self canStartWithMinimumPlayers];
    v23 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();

    v24 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v25 = [v24 items];
    v26 = [v25 count];
    v27 = [(GKMultiplayerViewController *)self matchRequest];
    if (v26 == [v27 maxPlayers])
    {
      v28 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      v29 = [v28 players];
      v30 = [v29 count];
      v31 = [(GKMultiplayerViewController *)self matchRequest];
      v32 = [v31 maxPlayers];

      if (v30 == v32)
      {
        goto LABEL_30;
      }

      v24 = GKGameCenterUIFrameworkBundle();
      GKGetLocalizedStringFromTableInBundle();
      v4 = v25 = v4;
    }

    else
    {
    }

    goto LABEL_30;
  }

  if (v3 != 8)
  {
    if (v3 != 9)
    {
      goto LABEL_33;
    }

    v6 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
    goto LABEL_32;
  }

  v35 = [(GKMultiplayerP2PViewController *)self activeRemoteParticipants];
  v36 = [v35 count];
  v37 = [(GKMultiplayerViewController *)self matchRequest];
  v38 = [v37 maxPlayers];

  if (v36 < v38 && (-[GKMultiplayerViewController multiplayerDataSource](self, "multiplayerDataSource"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 automatchPlayerCount], v39, v40 < 1))
  {
    v4 = &stru_28612D290;
  }

  else
  {
    v54 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
  }

  v5 = 1;
LABEL_33:
  [(GKMultiplayerViewController *)self updateDataSourceInvitationEnabled];
  v46 = [(GKMultiplayerViewController *)self footerView];
  [v46 setFooterStatusString:v4];

  [(GKMultiplayerP2PViewController *)self updateStartGameButtonTitle];
  v47 = [(GKMultiplayerViewController *)self matchRequest];
  v48 = [v47 hasFutureRecipientProperties] ^ 1;
  v49 = [(GKMultiplayerViewController *)self footerView];
  [v49 setStartGameButtonEnabled:v5 & v48];

  v50 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [v50 didChangeMode];

  if ([(GKMultiplayerP2PViewController *)self datasourceConfigured])
  {
    v51 = [(GKCollectionViewController *)self collectionView];
    v52 = [(GKCollectionViewController *)self collectionView];
    v53 = [v52 indexPathsForVisibleItems];
    [v51 reloadItemsAtIndexPaths:v53];
  }
}

uint64_t __50__GKMultiplayerP2PViewController_updateForNewMode__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserCancelledMatching:0];
  result = [*(a1 + 32) mode];
  if (result == 6)
  {
    v3 = *(a1 + 32);

    return [v3 setMode:7];
  }

  return result;
}

- (void)updateFooterButtonStates
{
  v12.receiver = self;
  v12.super_class = GKMultiplayerP2PViewController;
  [(GKMultiplayerViewController *)&v12 updateFooterButtonStates];
  mode = self->_mode;
  if (mode == 2)
  {
    v4 = [(GKMultiplayerViewController *)self footerView];
    [v4 setInviteFriendsButtonEnabled:0];

    mode = self->_mode;
  }

  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v5 = [(GKMultiplayerViewController *)self matchRequest];
    v6 = [v5 hasFutureRecipientProperties];
    v7 = [(GKMultiplayerViewController *)self footerView];
    [v7 setStartGameButtonEnabled:v6 ^ 1u];

    if ([(GKMultiplayerP2PViewController *)self mode]== 9 && ![(GKMultiplayerP2PViewController *)self havePendingPlayers]&& ![(GKMultiplayerP2PViewController *)self haveInvitedPlayers])
    {
      v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      v9 = [v8 readyPlayers];
      v10 = [v9 count];

      if (v10)
      {
        v11 = 7;
      }

      else
      {
        v11 = 8;
      }

      [(GKMultiplayerP2PViewController *)self setMode:v11];
    }
  }
}

- (int64_t)automatchParticipantStatus
{
  v3 = [(GKMultiplayerP2PViewController *)self mode];
  if (v3 <= 5)
  {
    if ((v3 - 2) < 3)
    {
      return 9;
    }

    if (v3 == 1)
    {
      return 13;
    }

    return 0;
  }

  if ((v3 - 8) < 2)
  {
    return 20;
  }

  if (v3 == 6)
  {
    return 14;
  }

  if (v3 != 7)
  {
    return 0;
  }

  if ([(GKMultiplayerP2PViewController *)self sharePlayEnabled])
  {
    return 20;
  }

  else
  {
    return 13;
  }
}

- (void)updateStartGameButtonTitle
{
  v3 = [(GKMultiplayerP2PViewController *)self mode];
  if (v3 <= 9 && ((0x3E7u >> v3) & 1) != 0)
  {
    v4 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();

    if (v6)
    {
      v5 = [(GKMultiplayerViewController *)self footerView];
      [v5 setPrimaryButtonTitle:v6];
    }
  }
}

- (BOOL)haveInvitedPlayers
{
  v2 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v3 = [v2 playersInvited];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)havePendingPlayers
{
  v2 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v3 = [v2 havePendingPlayers];

  return v3;
}

- (void)addExistingRemoteReadyPlayers:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    objc_initWeak(&location, self);
    v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__GKMultiplayerP2PViewController_addExistingRemoteReadyPlayers_withCompletionHandler___block_invoke;
    v9[3] = &unk_27966B248;
    objc_copyWeak(&v11, &location);
    v10 = v7;
    [v8 addPlayers:v6 withStatus:7 complete:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(GKMultiplayerP2PViewController *)self incrementOneAutoMatchPlayerCountIfPossible];
    v7[2](v7);
  }
}

void __86__GKMultiplayerP2PViewController_addExistingRemoteReadyPlayers_withCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateMode];
  v2 = objc_loadWeakRetained((a1 + 40));
  [v2 incrementOneAutoMatchPlayerCountIfPossible];

  (*(*(a1 + 32) + 16))();
}

- (void)setExistingPlayers:(id)a3
{
  v4 = a3;
  v5 = [(GKMultiplayerP2PViewController *)self view];
  v6 = [MEMORY[0x277D0C138] localPlayer];
  v7 = [v6 internal];
  v8 = [v7 playerID];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__GKMultiplayerP2PViewController_setExistingPlayers___block_invoke;
  v11[3] = &unk_27966B270;
  v9 = v8;
  v12 = v9;
  v10 = [v4 _gkFilterWithBlock:v11];

  if ([v10 count])
  {
    objc_storeStrong(&self->_existingRemoteReadyPlayers, v10);
    [(GKMultiplayerP2PViewController *)self addExistingRemoteReadyPlayers:v10 withCompletionHandler:&__block_literal_global_19];
  }
}

id __53__GKMultiplayerP2PViewController_setExistingPlayers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 playerID];
  LOBYTE(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D0C170] canonicalizedPlayerForInternal:v3];
  }

  return v5;
}

- (void)incrementOneAutoMatchPlayerCountIfPossible
{
  v3 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v4 = [v3 players];
  v5 = [v4 count];

  v6 = [(GKMultiplayerViewController *)self matchRequest];
  v7 = v5 + 1 <= [v6 maxPlayers];

  v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [v8 setAutomatchPlayerCount:v7 complete:0];
}

- (void)setAutomatchPlayerCount:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__GKMultiplayerP2PViewController_setAutomatchPlayerCount___block_invoke;
  v6[3] = &unk_27966B298;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  [v5 setAutomatchPlayerCount:a3 complete:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __58__GKMultiplayerP2PViewController_setAutomatchPlayerCount___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) mode] == 2 && (objc_msgSend(*(a1 + 32), "havePendingPlayers") & 1) == 0)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v2 = GKOSLoggers();
    }

    v3 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_24DE53000, v3, OS_LOG_TYPE_INFO, "In GKMultiplayerP2PModeMatching mode, and need no pending players. Start game!", v5, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained startGame];
  }
}

- (void)groupActivityJoiningPlayer:(id)a3 devicePushToken:(id)a4 participantServerIdentifier:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v12 = GKOSLoggers();
  }

  v13 = MEMORY[0x277D0C2B0];
  v14 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v8 debugDescription];
    *buf = 138412546;
    v33 = v16;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_24DE53000, v15, OS_LOG_TYPE_INFO, "Player joining from Shareplay = %@, pushToken: %@", buf, 0x16u);
  }

  v17 = [MEMORY[0x277D0C170] canonicalizedPlayerForInternal:v8];
  if (v17)
  {
    v18 = MEMORY[0x277D0C020];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 644, "-[GKMultiplayerP2PViewController groupActivityJoiningPlayer:devicePushToken:participantServerIdentifier:]"];
    v20 = [v18 dispatchGroupWithName:v19];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __105__GKMultiplayerP2PViewController_groupActivityJoiningPlayer_devicePushToken_participantServerIdentifier___block_invoke;
    v29[3] = &unk_279669B00;
    v29[4] = self;
    v21 = v17;
    v30 = v21;
    v31 = v10;
    [v20 perform:v29];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __105__GKMultiplayerP2PViewController_groupActivityJoiningPlayer_devicePushToken_participantServerIdentifier___block_invoke_3;
    v26[3] = &unk_27966A9A8;
    v26[4] = self;
    v27 = v21;
    v28 = v9;
    [v20 notifyOnMainQueueWithBlock:v26];
  }

  else
  {
    if (!*v11)
    {
      v22 = GKOSLoggers();
    }

    v23 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      v25 = [v8 debugDescription];
      *buf = 138412290;
      v33 = v25;
      _os_log_impl(&dword_24DE53000, v24, OS_LOG_TYPE_INFO, "No responding player found for player: %@", buf, 0xCu);
    }
  }
}

void __105__GKMultiplayerP2PViewController_groupActivityJoiningPlayer_devicePushToken_participantServerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) multiplayerDataSource];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __105__GKMultiplayerP2PViewController_groupActivityJoiningPlayer_devicePushToken_participantServerIdentifier___block_invoke_2;
  v8[3] = &unk_27966A4A8;
  v9 = v3;
  v7 = v3;
  [v4 replacePrepopulatedPlayerWithNormalPlayer:v6 participantServerIdentifier:v5 completionHandler:v8];
}

uint64_t __105__GKMultiplayerP2PViewController_groupActivityJoiningPlayer_devicePushToken_participantServerIdentifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) sendInvitesToSharePlayPlayer:*(a1 + 40) devicePushToken:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 updateStartGameButtonTitle];
}

- (void)sendInvitesToSharePlayPlayer:(id)a3 devicePushToken:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(GKMultiplayerViewController *)self matchRequest];
  v11[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [v8 setRecipients:v9];
  v10 = [(GKMultiplayerP2PViewController *)self delegate];
  [v10 multiplayerP2PViewController:self startMatchingWithRequest:v8 devicePushToken:v6];

  [(GKMultiplayerP2PViewController *)self sendStatusUpdate];
  if (![(GKMultiplayerP2PViewController *)self mode])
  {
    [(GKMultiplayerP2PViewController *)self setMode:1];
  }
}

+ (void)addContactCheckTaskForMessageID:(id)a3 respondingPlayer:(id)a4 dataSource:(id)a5 toGroup:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9)
  {
    if (v10)
    {
      v13 = [v11 players];
      v14 = [v13 containsObject:v10];

      if ((v14 & 1) == 0)
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [v11 players];
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          v27 = v11;
          v28 = v10;
          v26 = v12;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              v21 = [v20 contact];
              if (v21)
              {
                v22 = v21;
                v23 = [v20 internal];
                v24 = [v23 messagesID];
                v25 = [v24 isEqualToString:v9];

                if (v25)
                {
                  v29[0] = MEMORY[0x277D85DD0];
                  v29[1] = 3221225472;
                  v29[2] = __102__GKMultiplayerP2PViewController_addContactCheckTaskForMessageID_respondingPlayer_dataSource_toGroup___block_invoke;
                  v29[3] = &unk_279669B00;
                  v11 = v27;
                  v30 = v27;
                  v31 = v20;
                  v10 = v28;
                  v32 = v28;
                  v12 = v26;
                  [v26 perform:v29];

                  goto LABEL_15;
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
            v11 = v27;
            v10 = v28;
            v12 = v26;
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:
      }
    }
  }
}

void __102__GKMultiplayerP2PViewController_addContactCheckTaskForMessageID_respondingPlayer_dataSource_toGroup___block_invoke(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v11[0] = a1[5];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = a1[6];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__GKMultiplayerP2PViewController_addContactCheckTaskForMessageID_respondingPlayer_dataSource_toGroup___block_invoke_2;
  v8[3] = &unk_27966A4A8;
  v9 = v3;
  v7 = v3;
  [v4 replacePlayers:v5 withGKPlayers:v6 completionHandler:v8];
}

- (void)setPlayer:(id)a3 responded:(int64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = MEMORY[0x277D0C2B0];
  v10 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v6 debugDescription];
    *buf = 138412290;
    v31 = v12;
    _os_log_impl(&dword_24DE53000, v11, OS_LOG_TYPE_INFO, "Player responded = %@", buf, 0xCu);
  }

  v13 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v14 = [MEMORY[0x277D0C170] canonicalizedPlayerForInternal:v6];
  if (v14)
  {
    if (!a4 && [(GKMultiplayerP2PViewController *)self needRecipientPropertiesForPlayer:v6])
    {
      v15 = [(UIViewController *)self _gkExtensionViewController];
      [v15 requestRecipientProperties:v6];
    }

    v16 = MEMORY[0x277D0C020];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 719, "-[GKMultiplayerP2PViewController setPlayer:responded:]"];
    v18 = [v16 dispatchGroupWithName:v17];

    v19 = objc_opt_class();
    v20 = [v6 messagesID];
    [v19 addContactCheckTaskForMessageID:v20 respondingPlayer:v14 dataSource:v13 toGroup:v18];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke;
    v25[3] = &unk_27966B2E8;
    v26 = v13;
    v28 = self;
    v29 = a4;
    v27 = v14;
    [v18 notifyOnMainQueueWithBlock:v25];
  }

  else
  {
    if (!*v7)
    {
      v21 = GKOSLoggers();
    }

    v22 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      v24 = [v6 debugDescription];
      *buf = 138412290;
      v31 = v24;
      _os_log_impl(&dword_24DE53000, v23, OS_LOG_TYPE_INFO, "No responding player found for player: %@", buf, 0xCu);
    }
  }
}

void __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D0C020];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 728, "-[GKMultiplayerP2PViewController setPlayer:responded:]_block_invoke"];
  v4 = [v2 dispatchGroupWithName:v3];

  v5 = [*(a1 + 32) statusForPlayer:*(a1 + 40)];
  if (v5 == 1)
  {
    v9 = *(a1 + 56);
    if ((v9 - 2) >= 4)
    {
      if (!v9)
      {
        v12 = [MEMORY[0x277CBEAA8] date];
        [v12 timeIntervalSince1970];
        [*(a1 + 48) setInviteeConnectionTimeStamp:?];

        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_4;
        v18[3] = &unk_279669A20;
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        [v4 perform:v18];

        v8 = v19;
        goto LABEL_11;
      }

      v11 = 2;
    }

    else
    {
      v10 = [MEMORY[0x277D0C1F8] reporter];
      [v10 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BBE0]];

      v11 = 4;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_6;
    v14[3] = &unk_27966B2C0;
    v15 = *(a1 + 32);
    v17 = v11;
    v16 = *(a1 + 40);
    [v4 perform:v14];
    [*(a1 + 48) updateMode];

    v8 = v15;
    goto LABEL_11;
  }

  if (!v5)
  {
    v6 = [*(a1 + 32) firstInvitedContactPlayer];
    if (v6)
    {
      v7 = v6;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_2;
      v21[3] = &unk_279669B00;
      v22 = *(a1 + 32);
      v23 = v7;
      v24 = *(a1 + 40);
      v8 = v7;
      [v4 perform:v21];

LABEL_11:
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_8;
      v13[3] = &unk_2796699A8;
      v13[4] = *(a1 + 48);
      [v4 notifyOnMainQueueWithBlock:v13];
    }
  }
}

void __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_2(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v11[0] = a1[5];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = a1[6];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_3;
  v8[3] = &unk_27966A4A8;
  v9 = v3;
  v7 = v3;
  [v4 replacePlayers:v5 withGKPlayers:v6 completionHandler:v8];
}

void __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_4(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_5;
  v7[3] = &unk_27966A4A8;
  v8 = v3;
  v6 = v3;
  [v4 setStatus:12 forPlayers:v5 complete:v7];
}

void __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_6(void *a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[6];
  v5 = a1[4];
  v10[0] = a1[5];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__GKMultiplayerP2PViewController_setPlayer_responded___block_invoke_7;
  v8[3] = &unk_27966A4A8;
  v9 = v3;
  v7 = v3;
  [v5 setStatus:v4 forPlayers:v6 complete:v8];
}

- (void)setConnectingStateForPlayer:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v4 debugDescription];
    *buf = 138412290;
    v24 = v8;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "Player: %@ is connecting", buf, 0xCu);
  }

  v9 = [MEMORY[0x277D0C170] canonicalizedPlayerForInternal:v4];
  v10 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v11 = MEMORY[0x277D0C020];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 793, "-[GKMultiplayerP2PViewController setConnectingStateForPlayer:]"];
  v13 = [v11 dispatchGroupWithName:v12];

  v14 = [v10 currentPlayers];
  v15 = [v14 containsObject:v9];

  if (v15)
  {
    v16 = v22;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v17 = __62__GKMultiplayerP2PViewController_setConnectingStateForPlayer___block_invoke;
  }

  else
  {
    v16 = v21;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v17 = __62__GKMultiplayerP2PViewController_setConnectingStateForPlayer___block_invoke_3;
  }

  v16[2] = v17;
  v16[3] = &unk_279669A20;
  v18 = v10;
  v16[4] = v18;
  v19 = v9;
  v16[5] = v19;
  [v13 perform:v16];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__GKMultiplayerP2PViewController_setConnectingStateForPlayer___block_invoke_5;
  v20[3] = &unk_2796699A8;
  v20[4] = self;
  [v13 notifyOnMainQueueWithBlock:v20];
}

void __62__GKMultiplayerP2PViewController_setConnectingStateForPlayer___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__GKMultiplayerP2PViewController_setConnectingStateForPlayer___block_invoke_2;
  v7[3] = &unk_27966A4A8;
  v8 = v3;
  v6 = v3;
  [v4 setStatus:6 forPlayers:v5 complete:v7];
}

void __62__GKMultiplayerP2PViewController_setConnectingStateForPlayer___block_invoke_3(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__GKMultiplayerP2PViewController_setConnectingStateForPlayer___block_invoke_4;
  v7[3] = &unk_27966A4A8;
  v8 = v3;
  v6 = v3;
  [v4 addPlayers:v5 withStatus:6 replaceAutomatches:1 complete:v7];
}

- (void)setPlayer:(id)a3 connected:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  v8 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 debugDescription];
    v11 = v10;
    v12 = @"is not";
    if (v4)
    {
      v12 = @"is";
    }

    *buf = 138412546;
    v26 = v10;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "Player: %@ %@ connected", buf, 0x16u);
  }

  v13 = [MEMORY[0x277D0C170] canonicalizedPlayerForInternal:v6];
  v14 = MEMORY[0x277D0C020];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 820, "-[GKMultiplayerP2PViewController setPlayer:connected:]"];
  v16 = [v14 dispatchGroupWithName:v15];

  if ([(GKMultiplayerP2PViewController *)self isHosted])
  {
    v17 = objc_opt_class();
    v18 = [v6 messagesID];
    v19 = [MEMORY[0x277D0C170] canonicalizedPlayerForInternal:v6];
    v20 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    [v17 addContactCheckTaskForMessageID:v18 respondingPlayer:v19 dataSource:v20 toGroup:v16];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__GKMultiplayerP2PViewController_setPlayer_connected___block_invoke;
  v22[3] = &unk_27966B310;
  v24 = v4;
  v22[4] = self;
  v23 = v13;
  v21 = v13;
  [v16 notifyOnMainQueueWithBlock:v22];
}

uint64_t __54__GKMultiplayerP2PViewController_setPlayer_connected___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 playerConnected:v4];
  }

  else
  {
    return [v3 playerDisconnected:v4];
  }
}

- (void)setPlayer:(id)a3 sentData:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 length];
  if ((v8 & 0xFFFFFFFC) != 0)
  {
    v9 = v8;
    v10 = [MEMORY[0x277D0C170] canonicalizedPlayerForInternal:v6];
    if (v10)
    {
      acceptedInvite = self->_acceptedInvite;
      if (acceptedInvite)
      {
        v12 = [(GKInvite *)acceptedInvite sender];
        v13 = [v10 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v7 bytes];
      v15 = v14 + 1;
      v16 = *v14;
      if (!*MEMORY[0x277D0C2A0])
      {
        v17 = GKOSLoggers();
      }

      v30 = v9 - 4;
      v18 = MEMORY[0x277D0C2B0];
      v19 = *MEMORY[0x277D0C2B0];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v29 = v13;
        v20 = [&unk_286189778 count];
        if (v20 <= v16)
        {
          v21 = @"unknown";
        }

        else
        {
          v21 = [&unk_286189778 objectAtIndex:v16];
        }

        v22 = [v6 conciseDescription];
        *buf = 67109890;
        v33 = v16;
        v34 = 2112;
        v35 = v21;
        v36 = 1024;
        v37 = v30;
        v38 = 2112;
        v39 = v22;
        _os_log_impl(&dword_24DE53000, v19, OS_LOG_TYPE_INFO, "header = %d (%@) length = %d from playerID: %@", buf, 0x22u);
        if (v20 > v16)
        {
        }

        v13 = v29;
        v18 = MEMORY[0x277D0C2B0];
      }

      if (v16 <= 3)
      {
        if ((v16 - 2) < 2 || !v16)
        {
          goto LABEL_38;
        }

        if (v16 == 1)
        {
          [(GKMultiplayerP2PViewController *)self processStatusUpdateMessageFromPlayer:v10 bytes:v15 withLength:v30];
          goto LABEL_38;
        }

LABEL_23:
        if (!*MEMORY[0x277D0C2A0])
        {
          v23 = GKOSLoggers();
        }

        v24 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24DE53000, v24, OS_LOG_TYPE_INFO, "unknown header", buf, 2u);
        }

        goto LABEL_38;
      }

      if (v16 == 4)
      {
        if (v13)
        {
          if (!*MEMORY[0x277D0C2A0])
          {
            v25 = GKOSLoggers();
          }

          v26 = *v18;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_24DE53000, v26, OS_LOG_TYPE_INFO, "Invitee got start game message", buf, 2u);
          }

          [(GKMultiplayerP2PViewController *)self playNow];
        }

        goto LABEL_38;
      }

      if (v16 == 5)
      {
        if ([(GKMultiplayerP2PViewController *)self mode]!= 5 && [(GKMultiplayerP2PViewController *)self mode])
        {
          v27 = [(GKMultiplayerViewController *)self multiplayerDataSource];
          v31 = v10;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          [v27 setStatus:3 forPlayers:v28 complete:0];
        }

        if (v13)
        {
          [(GKMultiplayerP2PViewController *)self showInviterDisconnectedAlert];
        }

        goto LABEL_38;
      }

      if (v16 != 6)
      {
        goto LABEL_23;
      }
    }

LABEL_38:
  }
}

- (void)setInvitesFailedWithError:(id)a3
{
  v7 = a3;
  if ([v7 code] != 2)
  {
    v4 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v5 = [v7 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"FailedPlayers"];
    [v4 failedToInvitePlayers:v6];
  }

  if (![(GKMultiplayerP2PViewController *)self userCancelledMatching])
  {
    [(GKMultiplayerP2PViewController *)self setMode:0];
  }
}

- (void)setAutomatchFailedWithError:(id)a3
{
  if ([a3 code] == 2)
  {
    if (![(GKMultiplayerP2PViewController *)self userCancelledMatching])
    {
      [(GKMultiplayerP2PViewController *)self setMode:0];
    }
  }

  else
  {
    [(GKMultiplayerP2PViewController *)self showAutomatchingErrorAlert];
  }

  [(GKMultiplayerViewController *)self setDidStartForcedAutomatch:0];
}

- (void)applicationWillEnterForeground
{
  if (![(GKMultiplayerP2PViewController *)self isHosted])
  {
    v3 = [(GKMultiplayerP2PViewController *)self navigationController];
    v4 = [v3 topViewController];

    if (v4 != self)
    {
      v5 = [(GKMultiplayerP2PViewController *)self navigationController];
      v9 = [v5 viewControllers];

      v6 = [v9 indexOfObject:self] + 1;
      if (v6 >= [v9 count])
      {
        v7 = 0;
      }

      else
      {
        v7 = [v9 objectAtIndex:v6];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [MEMORY[0x277D0C1D8] shared];
        [v7 setSupportsNearby:{objc_msgSend(v8, "shouldAllowNearbyMultiplayer")}];
      }
    }
  }
}

- (void)presentSharePlaySharingController
{
  v3 = [(GKMultiplayerP2PViewController *)self delegate];
  [v3 multiplayerP2PViewControllerPresentSharePlaySharingController:self];
}

- (BOOL)needRecipientPropertiesForPlayer:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKMultiplayerViewController *)self matchRequest];
  v6 = [v5 queueName];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(GKMultiplayerViewController *)self matchRequest];
    v11[0] = v4;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v8 expectFutureRecipientPropertiesForPlayers:v9];

    [(GKMultiplayerP2PViewController *)self updateFooterButtonStates];
  }

  return v7 != 0;
}

- (void)updateRecipientProperties:(id)a3 forPlayer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMultiplayerViewController *)self matchRequest];
  [v8 updateRecipientProperties:v7 forPlayer:v6];

  [(GKMultiplayerP2PViewController *)self updateFooterButtonStates];
}

- (BOOL)canStartForcedAutomatch
{
  if ([(GKMultiplayerP2PViewController *)self mode])
  {
    return 0;
  }

  else
  {
    return ![(GKMultiplayerViewController *)self didStartForcedAutomatch];
  }
}

- (void)playNow
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = [(GKMultiplayerViewController *)self matchRequest];

  if (v3)
  {
    if (![(GKMultiplayerP2PViewController *)self haveInvitedPlayers]|| [(GKMultiplayerP2PViewController *)self mode]== 7)
    {
      v4 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      if ([v4 automatchPlayerCount] <= 0)
      {
        v5 = [v4 guestPlayers];
        v6 = [v5 count];

        if (!v6)
        {
          [(GKMultiplayerP2PViewController *)self startGame];
          goto LABEL_30;
        }
      }

      v7 = [(GKMultiplayerViewController *)self matchRequest];
      v8 = [v7 copy];

      v9 = [v4 playerRange];
      v11 = v10;
      [v8 setMinPlayers:v9];
      [v8 setMaxPlayers:v9 + v11];
      [v8 setDefaultNumberOfPlayers:0];
      v12 = [v4 currentPlayers];
      v13 = [v12 _gkGuestPlayersFromPlayers];
      [v8 setRecipients:v13];

      v14 = [(GKMultiplayerP2PViewController *)self delegate];
      [v14 multiplayerP2PViewController:self startMatchingWithRequest:v8];

      LOBYTE(v14) = [v4 havePendingPlayers];
      v15 = [(GKMultiplayerViewController *)self matchRequest];
      v16 = [v15 hasFutureRecipientProperties];

      if (v14)
      {
        v17 = v16 | ~[(GKMultiplayerViewController *)self canStartWithMinimumPlayers];
        [(GKMultiplayerP2PViewController *)self setMode:2];
        if (v17)
        {
          if (!*MEMORY[0x277D0C2A0])
          {
            v18 = GKOSLoggers();
          }

          v19 = *MEMORY[0x277D0C2B0];
          if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
          {
            v20 = MEMORY[0x277CCABB0];
            log = v19;
            v21 = [v20 numberWithInteger:{objc_msgSend(v4, "automatchPlayerCount")}];
            v22 = MEMORY[0x277CCABB0];
            v23 = [v4 readyPlayers];
            v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
            v25 = MEMORY[0x277CCABB0];
            v26 = [(GKMultiplayerViewController *)self matchRequest];
            v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "minPlayers")}];
            v28 = [MEMORY[0x277CCABB0] numberWithBool:v16];
            *buf = 138413058;
            v62 = v21;
            v63 = 2112;
            v64 = v24;
            v65 = 2112;
            v66 = v27;
            v67 = 2112;
            v68 = v28;
            _os_log_impl(&dword_24DE53000, log, OS_LOG_TYPE_INFO, "In GKMultiplayerP2PModeMatching mode. automatchPlayerCount: %@, fast start: disabled, readyPlayersCount: %@, minPlayers required: %@, hasFutureRecipientProperties: %@. Start matching.", buf, 0x2Au);
          }

LABEL_28:
          [(GKMultiplayerP2PViewController *)self sendStatusUpdate];
          goto LABEL_29;
        }

        v31 = [v4 readyPlayers];
        v32 = [v31 count];
        v33 = [(GKMultiplayerViewController *)self matchRequest];
        v34 = [v33 minPlayers];

        v35 = *MEMORY[0x277D0C2A0];
        if (v32 < v34)
        {
          if (!v35)
          {
            v36 = GKOSLoggers();
          }

          v37 = *MEMORY[0x277D0C2B0];
          if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
          {
            v38 = MEMORY[0x277CCABB0];
            v39 = v37;
            v40 = [v38 numberWithInteger:{objc_msgSend(v4, "automatchPlayerCount")}];
            v41 = MEMORY[0x277CCABB0];
            v42 = [v4 readyPlayers];
            v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(v42, "count")}];
            v44 = MEMORY[0x277CCABB0];
            v45 = [(GKMultiplayerViewController *)self matchRequest];
            v46 = [v44 numberWithUnsignedInteger:{objc_msgSend(v45, "minPlayers")}];
            v47 = [MEMORY[0x277CCABB0] numberWithBool:0];
            *buf = 138413058;
            v62 = v40;
            v63 = 2112;
            v64 = v43;
            v65 = 2112;
            v66 = v46;
            v67 = 2112;
            v68 = v47;
            _os_log_impl(&dword_24DE53000, v39, OS_LOG_TYPE_INFO, "In GKMultiplayerP2PModeMatching mode, automatchPlayerCount: %@, fast start: enabled, readyPlayersCount: %@, minPlayers required: %@, hasFutureRecipientProperties: %@. Start matching.", buf, 0x2Au);
          }

          goto LABEL_28;
        }

        if (!v35)
        {
          v48 = GKOSLoggers();
        }

        v49 = *MEMORY[0x277D0C2B0];
        if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
        {
          v50 = MEMORY[0x277CCABB0];
          v51 = v49;
          v52 = [v50 numberWithInteger:{objc_msgSend(v4, "automatchPlayerCount")}];
          v53 = MEMORY[0x277CCABB0];
          v54 = [v4 readyPlayers];
          v55 = [v53 numberWithUnsignedInteger:{objc_msgSend(v54, "count")}];
          v56 = MEMORY[0x277CCABB0];
          v57 = [(GKMultiplayerViewController *)self matchRequest];
          v58 = [v56 numberWithUnsignedInteger:{objc_msgSend(v57, "minPlayers")}];
          v59 = [MEMORY[0x277CCABB0] numberWithBool:0];
          *buf = 138413058;
          v62 = v52;
          v63 = 2112;
          v64 = v55;
          v65 = 2112;
          v66 = v58;
          v67 = 2112;
          v68 = v59;
          _os_log_impl(&dword_24DE53000, v51, OS_LOG_TYPE_INFO, "In GKMultiplayerP2PModeMatching mode, automatchPlayerCount: %@, fast start: enabled, readyPlayersCount: %@, minPlayers required: %@, hasFutureRecipientProperties: %@. Start game while matching is in the background.", buf, 0x2Au);
        }
      }

      else
      {
        [(GKMultiplayerP2PViewController *)self setMode:3];
        if (!*MEMORY[0x277D0C2A0])
        {
          v29 = GKOSLoggers();
        }

        v30 = *MEMORY[0x277D0C2B0];
        if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24DE53000, v30, OS_LOG_TYPE_INFO, "In GKMultiplayerP2PModeStartingGame mode, which is an all guest game. Start game!", buf, 2u);
        }
      }

      [(GKMultiplayerP2PViewController *)self startGame];
LABEL_29:

LABEL_30:
      return;
    }

    [(GKMultiplayerP2PViewController *)self setMode:1];
  }

  else
  {

    [(GKMultiplayerP2PViewController *)self startGame];
  }
}

- (void)startGameButtonPressed
{
  v3 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [v3 recordButtonClickAction:@"play" targetId:@"startGame"];

  v4 = [(GKMultiplayerP2PViewController *)self mode];
  if (v4 > 6)
  {
    if (v4 != 9)
    {
      if (v4 == 8)
      {
        v11 = [(GKMultiplayerP2PViewController *)self delegate];
        [v11 activateGroupActivitiesForMultiplayerP2PViewController:self];

        v12 = [MEMORY[0x277D0BFA8] reporter];
        v13 = [(GKMultiplayerP2PViewController *)self pageId];
        [v12 recordClickWithAction:@"navigate" targetId:@"startGame" targetType:@"button" pageId:v13 pageType:@"multiplayer"];

        [(GKMultiplayerP2PViewController *)self setMode:9];
        v15 = [(GKMultiplayerViewController *)self multiplayerDataSource];
        v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
        v14 = [v8 shareplayPrepopulatedPlayers];
        [v15 setStatus:21 forPlayers:v14 complete:0];

        goto LABEL_23;
      }

      if (v4 != 7)
      {
        return;
      }

LABEL_12:
      [(GKMultiplayerViewController *)self performActionsForButtonStartGame];
      v15 = [MEMORY[0x277D0C1F8] reporter];
      v6 = *MEMORY[0x277D0BE78];
      v7 = *MEMORY[0x277D0BBF0];
      v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      v9 = [v8 currentRemotePlayers];
      [v15 reportEvent:v6 type:v7 count:{objc_msgSend(v9, "count")}];

LABEL_23:

      return;
    }

    [(GKMultiplayerP2PViewController *)self performActionsForButtonCancelCurrentMatching:1];
    [(GKMultiplayerP2PViewController *)self configureWhenLeavingTheLobby];
    v10 = [(GKMultiplayerP2PViewController *)self delegate];
    [v10 endGroupActivitiesForMultiplayerP2PViewController:self];

    if ([(GKMultiplayerP2PViewController *)self startStagedActivity])
    {
      [(GKMultiplayerP2PViewController *)self setStartStagedActivity:0];
    }

    [(GKMultiplayerP2PViewController *)self configureWhenEnteringTheLobby];
  }

  else
  {
    if ((v4 - 1) >= 2)
    {
      if (v4)
      {
        if (v4 == 5)
        {
          v5 = [(GKMultiplayerP2PViewController *)self acceptedInvite];

          if (!v5)
          {
            [(GKMultiplayerP2PViewController *)self resetInviteesStatus];

            [(GKMultiplayerP2PViewController *)self setMode:0];
          }
        }

        return;
      }

      goto LABEL_12;
    }

    [(GKMultiplayerP2PViewController *)self performActionsForButtonCancelCurrentMatching:0];
  }
}

- (void)inviteFriendsButtonPressed
{
  v3 = [MEMORY[0x277D0BFA8] reporter];
  v4 = [(GKMultiplayerP2PViewController *)self pageId];
  [v3 recordClickWithAction:@"navigate" targetId:@"inviteFriends" targetType:@"button" pageId:v4 pageType:@"multiplayer"];

  v5.receiver = self;
  v5.super_class = GKMultiplayerP2PViewController;
  [(GKMultiplayerViewController *)&v5 inviteFriendsButtonPressed];
}

- (void)displayCancelConfirmationDialog
{
  v3 = MEMORY[0x277D75110];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();
  v12 = [v9 actionWithTitle:v11 style:1 handler:0];

  v13 = MEMORY[0x277D750F8];
  v14 = GKGameCenterUIFrameworkBundle();
  v15 = GKGetLocalizedStringFromTableInBundle();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__GKMultiplayerP2PViewController_displayCancelConfirmationDialog__block_invoke;
  v17[3] = &unk_279669C68;
  v17[4] = self;
  v16 = [v13 actionWithTitle:v15 style:0 handler:v17];

  [v8 addAction:v12];
  [v8 addAction:v16];
  [v8 setPreferredAction:v16];
  [(GKMultiplayerP2PViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)startGame
{
  v3 = [(GKMultiplayerViewController *)self canStartWithMinimumPlayers];
  v4 = MEMORY[0x277D0BE78];
  if (v3)
  {
    v5 = [MEMORY[0x277D0C1F8] reporter];
    v6 = *v4;
    [v5 reportEvent:*v4 type:*MEMORY[0x277D0BBB8]];

    v7 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v8 = [v7 readyPlayers];
    v9 = [v8 count];
    v10 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v11 = [v10 participants];
    v12 = [v11 count];

    v13 = [MEMORY[0x277D0C1F8] reporter];
    v14 = v13;
    v15 = MEMORY[0x277D0BBA8];
    if (v9 >= v12)
    {
      v15 = MEMORY[0x277D0BBA0];
    }

    [v13 reportEvent:v6 type:*v15];
  }

  [(GKMultiplayerP2PViewController *)self inviteeConnectionTimeStamp];
  if (v16 > 0.0)
  {
    v17 = [MEMORY[0x277D0C1F8] reporter];
    v18 = *v4;
    v19 = *MEMORY[0x277D0BBE8];
    v20 = MEMORY[0x277CBEAA8];
    [(GKMultiplayerP2PViewController *)self inviteeConnectionTimeStamp];
    v21 = [v20 dateWithTimeIntervalSince1970:?];
    [v17 reportEvent:v18 type:v19 startTime:v21];
  }

  [(GKMultiplayerP2PViewController *)self setMode:3];

  [(GKMultiplayerP2PViewController *)self finishWithError:0];
}

- (void)willPresentPlayerPicker:(id)a3
{
  v4 = a3;
  if ([(GKMultiplayerP2PViewController *)self isHosted])
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277D0C1D8] shared];
    v5 = [v6 shouldAllowNearbyMultiplayer];
  }

  [v4 setSupportsNearby:v5];
  v7 = [(GKMultiplayerViewController *)self nearbyDelegate];
  [v4 setNearbyDelegate:v7];
}

- (void)loadShareURLWithContactPlayers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 _gkInternalsFromUncheckedPlayers];
  v8 = [(GKMultiplayerViewController *)self matchRequest];
  v9 = [v8 internal];
  [v9 setMessagesBasedRecipients:v7];

  v11 = [(GKMultiplayerP2PViewController *)self delegate];
  v10 = [(GKMultiplayerViewController *)self matchRequest];
  [v11 multiplayerP2PViewController:self shareMatchWithRequest:v10 handler:v6];
}

- (void)prepopulateSharePlayActiveParticipants
{
  if ([(GKMultiplayerP2PViewController *)self sharePlayEnabled])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __72__GKMultiplayerP2PViewController_prepopulateSharePlayActiveParticipants__block_invoke;
    v3[3] = &unk_27966B338;
    v3[4] = self;
    [(GKMultiplayerP2PViewController *)self sharePlayFetchFirstActiveConversationWithHandler:v3];
  }
}

void __72__GKMultiplayerP2PViewController_prepopulateSharePlayActiveParticipants__block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 activeRemoteParticipants];
  [*(a1 + 32) setActiveRemoteParticipants:v4];

  [*(a1 + 32) setFirstActiveConversation:v3];
  v5 = [*(a1 + 32) activeRemoteParticipants];
  v6 = [v5 count];
  v7 = [*(a1 + 32) matchRequest];
  v8 = [v7 maxPlayers];

  v9 = MEMORY[0x277D0C2A0];
  v10 = *MEMORY[0x277D0C2A0];
  if (v6 >= v8)
  {
    if (!v10)
    {
      v21 = GKOSLoggers();
    }

    v22 = MEMORY[0x277D0C2B0];
    v23 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      v25 = v23;
      v26 = [v24 activeRemoteParticipants];
      v27 = [v26 count];
      v28 = [*(a1 + 32) matchRequest];
      *buf = 134218240;
      v39 = v27;
      v40 = 2048;
      v41 = [v28 maxPlayers];
      _os_log_impl(&dword_24DE53000, v25, OS_LOG_TYPE_INFO, "Do not pre-populate remote participants from the call to the game. Active remote participant count=%lu, maxPlayers of matchRequest=%lu", buf, 0x16u);
    }

    v18 = [*(a1 + 32) multiplayerDataSource];
    v29 = [*(a1 + 32) activeRemoteParticipants];
    v30 = [v29 count];
    v31 = [v18 players];
    v32 = [v31 count];

    if (((v30 + 1 - v32) & 0x8000000000000000) == 0)
    {
      objc_initWeak(buf, *(a1 + 32));
      if (!*v9)
      {
        v33 = GKOSLoggers();
      }

      v34 = *v22;
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
      {
        *v37 = 0;
        _os_log_impl(&dword_24DE53000, v34, OS_LOG_TYPE_INFO, "Setting reserved automatch spot for share play players.", v37, 2u);
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __72__GKMultiplayerP2PViewController_prepopulateSharePlayActiveParticipants__block_invoke_228;
      v35[3] = &unk_279669FE0;
      objc_copyWeak(&v36, buf);
      [v18 setAutomatchPlayerCount:v30 + 1 - v32 complete:v35];
      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (!v10)
    {
      v11 = GKOSLoggers();
    }

    v12 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 activeRemoteParticipants];
      v16 = [v15 count];
      v17 = [*(a1 + 32) matchRequest];
      *buf = 134218240;
      v39 = v16;
      v40 = 2048;
      v41 = [v17 maxPlayers];
      _os_log_impl(&dword_24DE53000, v14, OS_LOG_TYPE_INFO, "Pre-populating remote participants from the call to the game. Active remote participant count=%lu, maxPlayers of matchRequest=%lu", buf, 0x16u);
    }

    v18 = [*(a1 + 32) multiplayerDataSource];
    v19 = [*(a1 + 32) activeRemoteParticipants];
    v20 = [v19 allObjects];
    [v18 prepopulateConversationParticipants:v20 complete:0];
  }
}

void __72__GKMultiplayerP2PViewController_prepopulateSharePlayActiveParticipants__block_invoke_228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateAutoMatchPlayerCount];
}

- (void)sharePlayFetchFirstActiveConversationWithHandler:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "fetching first active TUConversation.", &v31, 2u);
  }

  v8 = [MEMORY[0x277D6EDF8] sharedInstance];
  v9 = [v8 conversationManager];

  v10 = dispatch_queue_create("com.apple.gamed.multiplayerService.conversationManager", 0);
  conversationManagerQueue = self->_conversationManagerQueue;
  self->_conversationManagerQueue = v10;

  v12 = [(GKMultiplayerP2PViewController *)self conversationManagerQueue];
  [v9 addDelegate:self queue:v12];

  v13 = MEMORY[0x277D0C2B0];
  if (!v9)
  {
    if (!*v5)
    {
      v19 = GKOSLoggers();
    }

    v20 = *v13;
    if (!os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    LOWORD(v31) = 0;
    v21 = "conversation manager is nil from TUCallCenter";
    goto LABEL_16;
  }

  v14 = [v9 activeConversations];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v9 activeConversations];
    v17 = [v16 allObjects];
    v18 = [v17 _gkFilterWithBlock:&__block_literal_global_234];

    goto LABEL_18;
  }

  if (!*v5)
  {
    v22 = GKOSLoggers();
  }

  v20 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v31) = 0;
    v21 = "no active conversations found from conversation manager.";
LABEL_16:
    _os_log_impl(&dword_24DE53000, v20, OS_LOG_TYPE_INFO, v21, &v31, 2u);
  }

LABEL_17:
  v18 = 0;
LABEL_18:
  if (!*v5)
  {
    v23 = GKOSLoggers();
  }

  v24 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
  {
    v25 = MEMORY[0x277CCABB0];
    v26 = v24;
    v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    v31 = 138412290;
    v32 = v27;
    _os_log_impl(&dword_24DE53000, v26, OS_LOG_TYPE_INFO, "found %@ active conversations that the local player is joined.", &v31, 0xCu);
  }

  if (v4)
  {
    v28 = [v18 firstObject];
    v4[2](v4, v28);
  }

  else
  {
    if (!*v5)
    {
      v29 = GKOSLoggers();
    }

    v30 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKMultiplayerP2PViewController sharePlayFetchFirstActiveConversationWithHandler:v30];
    }
  }
}

void *__83__GKMultiplayerP2PViewController_sharePlayFetchFirstActiveConversationWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 3)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)sendInvitesToContactPlayers:(id)a3 legacyPlayers:(id)a4 source:(unint64_t)a5 completion:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [(GKMultiplayerP2PViewController *)self setMode:1];
  if (!*MEMORY[0x277D0C2A0])
  {
    v13 = GKOSLoggers();
  }

  v14 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&dword_24DE53000, v14, OS_LOG_TYPE_INFO, "GK-InviteMessage:Sender side:contactPlayers: %@", buf, 0xCu);
  }

  if ([v10 count] || objc_msgSend(v11, "count"))
  {
    v15 = MEMORY[0x277D0C020];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 1223, "-[GKMultiplayerP2PViewController sendInvitesToContactPlayers:legacyPlayers:source:completion:]"];
    v17 = [v15 dispatchGroupWithName:v16];

    if ([v10 count])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __94__GKMultiplayerP2PViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke;
      v22[3] = &unk_27966B2C0;
      v22[4] = self;
      v23 = v10;
      v24 = a5;
      [v17 perform:v22];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __94__GKMultiplayerP2PViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_3;
    v18[3] = &unk_27966B380;
    v19 = v11;
    v20 = self;
    v21 = v12;
    [v17 notifyOnMainQueueWithBlock:v18];
  }

  else
  {
    [(GKMultiplayerP2PViewController *)self setMode:0];
  }
}

void __94__GKMultiplayerP2PViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__GKMultiplayerP2PViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_2;
  v8[3] = &unk_27966A4A8;
  v9 = v3;
  v7 = v3;
  [v4 inviteContactPlayers:v5 source:v6 completion:v8];
}

uint64_t __94__GKMultiplayerP2PViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) invitePlayers:*(a1 + 32)];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)setShareInvitees
{
  v41 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = MEMORY[0x277D0C2B0];
  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v9 = [v8 playersInvited];
    *buf = 138412290;
    v40 = v9;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "GK-InviteMessage:Sender side:listOfInvitedPlayers: %@", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v11 = [v10 playersInvited];

  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        if (!*v3)
        {
          v17 = GKOSLoggers();
        }

        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          v20 = [v16 internal];
          v21 = [v20 messagesID];
          *buf = 138412290;
          v40 = v21;
          _os_log_impl(&dword_24DE53000, v19, OS_LOG_TYPE_INFO, "GK-InviteMessage:Sender side:going to add a player (not formatted): %@", buf, 0xCu);
        }

        v22 = [v16 internal];
        v23 = [v22 messagesID];

        if (v23)
        {
          if (!*v3)
          {
            v24 = GKOSLoggers();
          }

          v25 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
          {
            v26 = v25;
            v27 = [v16 internal];
            v28 = [v27 messagesID];
            *buf = 138412290;
            v40 = v28;
            _os_log_impl(&dword_24DE53000, v26, OS_LOG_TYPE_INFO, "GK-InviteMessage:Sender side:going to add a player (formatted): %@", buf, 0xCu);
          }

          v29 = [v16 internal];
          v30 = [v29 messagesID];
          [v33 addObject:v30];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  v31 = [v32 delegate];
  [v31 multiplayerP2PViewController:v32 setShareInvitees:v33];
}

- (void)invitePlayers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "invitePlayers - players: %@", &v14, 0xCu);
  }

  v7 = [(GKMultiplayerViewController *)self matchRequest];
  v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v9 = [v8 guestPlayers];
  v10 = [v4 arrayByAddingObjectsFromArray:v9];
  [v7 setRecipients:v10];

  v11 = [v7 recipients];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(GKMultiplayerP2PViewController *)self delegate];
    [v13 multiplayerP2PViewController:self startMatchingWithRequest:v7];

    [(GKMultiplayerP2PViewController *)self sendStatusUpdate];
  }

  else
  {
    [(GKMultiplayerP2PViewController *)self setMode:0];
  }
}

- (void)cancelPendingInvites
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v4 = [v3 playersInvited];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(GKMultiplayerP2PViewController *)self delegate];
        v12 = [v10 internal];
        [v11 multiplayerP2PViewController:self cancelInviteToPlayer:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v13 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    [v13 removePlayers:v5 complete:0];
  }
}

- (void)resetInviteesStatus
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v4 = [v3 currentRemotePlayers];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(GKMultiplayerP2PViewController *)self delegate];
        v12 = [v10 internal];
        [v11 multiplayerP2PViewController:self cancelInviteToPlayer:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v13 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    [v13 setStatus:11 forPlayers:v5 complete:0];
  }
}

- (void)performActionsForButtonCancelCurrentMatching:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v6 = [v5 canCancelCurrentMatchmaking];

  if ((v6 & 1) != 0 || v3)
  {
    [(GKMultiplayerViewController *)self setShareURL:0];
    v9 = [(GKMultiplayerP2PViewController *)self delegate];
    [v9 multiplayerP2PViewControllerCancelMatching:self];

    v10 = [(GKMultiplayerP2PViewController *)self delegate];
    [v10 disconnectMatchForMultiplayerP2PViewController:self];

    [(GKMultiplayerP2PViewController *)self setMode:6];
    v11 = [(GKMultiplayerViewController *)self footerView];
    [v11 setStartGameButtonEnabled:0];

    v12 = [MEMORY[0x277D0C1F8] reporter];
    [v12 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BB80]];

    v13 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    [v13 recordButtonClickAction:@"cancel" targetId:@"cancelGame"];
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      [(GKMultiplayerP2PViewController *)v8 performActionsForButtonCancelCurrentMatching:?];
    }
  }
}

- (void)removedPlayer:(id)a3
{
  v4 = a3;
  v5 = [(GKMultiplayerP2PViewController *)self delegate];
  v6 = [v4 internal];

  [v5 multiplayerP2PViewController:self cancelInviteToPlayer:v6];
  [(GKMultiplayerP2PViewController *)self updateMode];
  [(GKMultiplayerP2PViewController *)self sendStatusUpdate];
  if ([(GKMultiplayerP2PViewController *)self mode]== 9)
  {
    v20 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v7 = [v20 readyPlayers];
    v8 = [v7 count];
    v9 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v10 = [v9 connectingPlayers];
    v11 = v8 + [v10 count];
    v12 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v13 = [v12 shareplayInvitedPlayers];
    v14 = v11 + [v13 count] - 1;
    v15 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v16 = [v15 shareplayPrepopulatedPlayers];
    v17 = [v16 count];

    if (!(v14 + v17))
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v18 = GKOSLoggers();
      }

      v19 = *MEMORY[0x277D0C2B0];
      if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24DE53000, v19, OS_LOG_TYPE_INFO, "in GKMultiplayerP2PModeSharePlayStarted and each shareplay pre-populated or invited player has been removed.", buf, 2u);
      }

      [(GKMultiplayerP2PViewController *)self startGameButtonPressed];
    }
  }
}

- (void)updateMode
{
  if ([(GKMultiplayerP2PViewController *)self mode]== 1 && ![(GKMultiplayerP2PViewController *)self haveInvitedPlayers])
  {
    v6 = self;
    v7 = 0;
  }

  else
  {
    if (![(GKMultiplayerViewController *)self canStartWithMinimumPlayers])
    {
      return;
    }

    v9 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v3 = [v9 readyPlayers];
    v4 = [v3 count];
    v5 = [(GKMultiplayerViewController *)self matchRequest];
    if (v4 < [v5 minPlayers])
    {

      return;
    }

    v8 = [(GKMultiplayerP2PViewController *)self mode];

    if (v8 == 7)
    {
      return;
    }

    v6 = self;
    v7 = 7;
  }

  [(GKMultiplayerP2PViewController *)v6 setMode:v7];
}

- (void)playerConnected:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v4 internal];
    v9 = [v8 debugDescription];
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "Player connected = %@", buf, 0xCu);
  }

  v10 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v11 = MEMORY[0x277D0C020];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 1350, "-[GKMultiplayerP2PViewController playerConnected:]"];
  v13 = [v11 dispatchGroupWithName:v12];

  v14 = [v10 currentPlayers];
  v15 = [v14 containsObject:v4];

  if (v15)
  {
    v16 = v22;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v17 = __50__GKMultiplayerP2PViewController_playerConnected___block_invoke;
  }

  else
  {
    v16 = v21;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v17 = __50__GKMultiplayerP2PViewController_playerConnected___block_invoke_3;
  }

  v16[2] = v17;
  v16[3] = &unk_279669A20;
  v18 = v10;
  v16[4] = v18;
  v19 = v4;
  v16[5] = v19;
  [v13 perform:v16];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__GKMultiplayerP2PViewController_playerConnected___block_invoke_5;
  v20[3] = &unk_2796699A8;
  v20[4] = self;
  [v13 notifyOnMainQueueWithBlock:v20];
}

void __50__GKMultiplayerP2PViewController_playerConnected___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__GKMultiplayerP2PViewController_playerConnected___block_invoke_2;
  v7[3] = &unk_27966A4A8;
  v8 = v3;
  v6 = v3;
  [v4 setStatus:7 forPlayers:v5 complete:v7];
}

void __50__GKMultiplayerP2PViewController_playerConnected___block_invoke_3(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__GKMultiplayerP2PViewController_playerConnected___block_invoke_4;
  v7[3] = &unk_27966A4A8;
  v8 = v3;
  v6 = v3;
  [v4 addPlayers:v5 withStatus:7 replaceAutomatches:1 complete:v7];
}

void __50__GKMultiplayerP2PViewController_playerConnected___block_invoke_5(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) sendStatusUpdate];
  v2 = [*(a1 + 32) matchRequest];

  if (v2)
  {
    v3 = [*(a1 + 32) havePendingPlayers];
    v4 = [*(a1 + 32) haveInvitedPlayers];
    v5 = [*(a1 + 32) matchRequest];
    v6 = [v5 maxPlayers];
    v7 = [*(a1 + 32) multiplayerDataSource];
    v8 = [v7 players];
    v61 = [v8 count];

    v9 = [*(a1 + 32) multiplayerDataSource];
    v10 = [v9 readyPlayers];
    v11 = [v10 count];

    v12 = MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v13 = GKOSLoggers();
    }

    v14 = MEMORY[0x277D0C2B0];
    v15 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = *(a1 + 32);
      v18 = v15;
      v19 = [v16 numberWithInteger:{objc_msgSend(v17, "mode")}];
      v20 = [*(a1 + 32) multiplayerDataSource];
      [v20 playersInvited];
      v22 = v21 = v4;
      v23 = [*(a1 + 32) multiplayerDataSource];
      v24 = [v23 havePendingPlayers];
      v25 = @"No";
      *buf = 138412802;
      v63 = v19;
      v64 = 2112;
      if (v24)
      {
        v25 = @"Has";
      }

      v65 = v22;
      v66 = 2112;
      v67 = v25;
      _os_log_impl(&dword_24DE53000, v18, OS_LOG_TYPE_INFO, "mode = %@ - invited players = %@ - %@ pending players", buf, 0x20u);

      v4 = v21;
      v14 = MEMORY[0x277D0C2B0];
      v12 = MEMORY[0x277D0C2A0];
    }

    if (([*(a1 + 32) mode] != 2) | v3 & 1)
    {
      v26 = [*(a1 + 32) matchRequest];
      v27 = [v26 maxPlayers];

      if (v27 == v11)
      {
        if (!*v12)
        {
          v28 = GKOSLoggers();
        }

        v29 = *v14;
        if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v30 = MEMORY[0x277CCABB0];
        v31 = *(a1 + 32);
        v32 = v29;
        v33 = [v30 numberWithInteger:{objc_msgSend(v31, "mode")}];
        *buf = 138412290;
        v63 = v33;
        v34 = "In GKMultiplayerP2PMode %@, have enough players. Start game!";
        goto LABEL_14;
      }

      if ([*(a1 + 32) mode] == 9)
      {
        v38 = [*(a1 + 32) multiplayerDataSource];
        v39 = [v38 players];
        v40 = [v39 count];

        if (v11 >= v40)
        {
          if (!*v12)
          {
            v51 = GKOSLoggers();
          }

          v52 = *v14;
          if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          *buf = 0;
          v53 = "In GKMultiplayerP2PModeSharePlayStarted and no pending players. Change to GKMultiplayerP2PModeInviteOrStart";
LABEL_45:
          _os_log_impl(&dword_24DE53000, v52, OS_LOG_TYPE_INFO, v53, buf, 2u);
          goto LABEL_46;
        }
      }

      if (![*(a1 + 32) canStartWithMinimumPlayers] || (objc_msgSend(*(a1 + 32), "matchRequest"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "minPlayers"), v41, v11 < v42))
      {
        if ([*(a1 + 32) mode] == 1)
        {
          if (v4)
          {
            goto LABEL_21;
          }
        }

        else if (([*(a1 + 32) mode] != 7) | v4 & 1)
        {
          goto LABEL_21;
        }

        v43 = [*(a1 + 32) matchRequest];
        v44 = [v43 maxPlayers];

        if (v11 >= v44)
        {
          if (v3)
          {
            goto LABEL_21;
          }

          if (!*v12)
          {
            v55 = GKOSLoggers();
          }

          v56 = *v14;
          if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
          {
            goto LABEL_20;
          }

          v57 = MEMORY[0x277CCABB0];
          v58 = *(a1 + 32);
          v32 = v56;
          v33 = [v57 numberWithInteger:{objc_msgSend(v58, "mode")}];
          *buf = 138412290;
          v63 = v33;
          v34 = "In GKMultiplayerP2PMode:%@ , and no pending players. Start game!";
LABEL_14:
          _os_log_impl(&dword_24DE53000, v32, OS_LOG_TYPE_INFO, v34, buf, 0xCu);

LABEL_20:
          [*(a1 + 32) startGame];
LABEL_21:
          [*(a1 + 32) updateFooterButtonStates];
          return;
        }

        if (!*v12)
        {
          v45 = GKOSLoggers();
        }

        v46 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
        {
          v47 = MEMORY[0x277CCABB0];
          v48 = *(a1 + 32);
          v49 = v46;
          v50 = [v47 numberWithInteger:{objc_msgSend(v48, "mode")}];
          *buf = 138412290;
          v63 = v50;
          _os_log_impl(&dword_24DE53000, v49, OS_LOG_TYPE_INFO, "In GKMultiplayerP2PMode: %@, all invited players connected but there are less players than maxPlayers. Set mode to GKMultiplayerP2PModeInviteOrStart.", buf, 0xCu);
        }

LABEL_46:
        [*(a1 + 32) setMode:7];
        goto LABEL_21;
      }

      if ([*(a1 + 32) mode] == 1)
      {
        if (!*v12)
        {
          v54 = GKOSLoggers();
        }

        v52 = *v14;
        if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
        {
          goto LABEL_46;
        }

        *buf = 0;
        v53 = "In GKMultiplayerP2PModeInviting mode, have enough players for fast start but players can invite more.";
        goto LABEL_45;
      }

      if ([*(a1 + 32) mode] == 2 || objc_msgSend(*(a1 + 32), "mode") == 3)
      {
        if (!*v12)
        {
          v59 = GKOSLoggers();
        }

        v36 = *v14;
        if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        *buf = 0;
        v37 = "In GKMultiplayerP2PModeMatching / GKMultiplayerP2PModeStartingGame mode, have enough players for fast start. Start game!";
      }

      else
      {
        if (([*(a1 + 32) mode] != 7) | v3 & 1 || v6 != v61)
        {
          goto LABEL_21;
        }

        if (!*v12)
        {
          v60 = GKOSLoggers();
        }

        v36 = *v14;
        if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        *buf = 0;
        v37 = "In GKMultiplayerP2PModeInviteOrStart mode with fast start enabled, and all invited players are ready.. Start game!";
      }
    }

    else
    {
      if (!*v12)
      {
        v35 = GKOSLoggers();
      }

      v36 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v37 = "In GKMultiplayerP2PModeMatching mode, and no pending players. Start game!";
    }

    _os_log_impl(&dword_24DE53000, v36, OS_LOG_TYPE_INFO, v37, buf, 2u);
    goto LABEL_20;
  }
}

- (void)playerDisconnected:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = MEMORY[0x277D0C2B0];
  v8 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v4 internal];
    v11 = [v10 debugDescription];
    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "Player disconnected: %@", buf, 0xCu);
  }

  if ([(GKMultiplayerP2PViewController *)self mode]== 5 || ![(GKMultiplayerP2PViewController *)self mode])
  {
    if (!*v5)
    {
      v19 = GKOSLoggers();
    }

    v20 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24DE53000, v20, OS_LOG_TYPE_INFO, "Some player disconnected but we should do nothing because the local player is in either GKMultiplayerP2PModeFailed or GKMultiplayerP2PModeSetup mode", buf, 2u);
    }
  }

  else
  {
    v12 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v21 = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v12 setStatus:3 forPlayers:v13 complete:0];

    acceptedInvite = self->_acceptedInvite;
    if (!acceptedInvite || (-[GKInvite sender](acceptedInvite, "sender"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v4 isEqual:v15], v15, v16))
    {
      if (!*v5)
      {
        v17 = GKOSLoggers();
      }

      v18 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        [(GKMultiplayerP2PViewController *)v18 playerDisconnected:v4, self];
      }

      [(GKMultiplayerP2PViewController *)self showMatchDisconnectedAlertForPlayer:v4];
    }
  }
}

- (void)sendStatusUpdate
{
  v46 = *MEMORY[0x277D85DE8];
  if (!self->_acceptedInvite && !self->_hosted)
  {
    v2 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v31 = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v2 currentPlayers];
    v33 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v33)
    {
      v32 = *v36;
      v30 = *MEMORY[0x277D0BCE8];
      v29 = *MEMORY[0x277D0B9C8];
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v35 + 1) + 8 * i);
          v5 = v2;
          v6 = [v2 statusForPlayer:v4];
          v7 = [v4 internal];
          v8 = [v7 playerID];

          if (v8)
          {
            v44[0] = v8;
            v43[0] = v30;
            v43[1] = v29;
            v9 = [v4 alias];
            v10 = v9;
            if (v9)
            {
              v11 = v9;
            }

            else
            {
              v11 = &stru_28612D290;
            }

            v44[1] = v11;
            v43[2] = @"GKInviteStatusKey";
            v12 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
            v44[2] = v12;
            v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];

            [v31 addObject:v13];
          }

          else
          {
            if (!*MEMORY[0x277D0C2A0])
            {
              v14 = GKOSLoggers();
            }

            v15 = *MEMORY[0x277D0C2B0];
            if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v42 = v4;
              _os_log_error_impl(&dword_24DE53000, v15, OS_LOG_TYPE_ERROR, "we don't have a playerID for player: %@", buf, 0xCu);
            }
          }

          v2 = v5;
        }

        v33 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v33);
    }

    if ([v2 automatchPlayerCount] >= 1)
    {
      v16 = 0;
      v17 = *MEMORY[0x277D0BCE8];
      v18 = *MEMORY[0x277D0B9C8];
      v19 = MEMORY[0x277CBEC38];
      do
      {
        v39[0] = v17;
        v39[1] = v18;
        v40[0] = &stru_28612D290;
        v40[1] = &stru_28612D290;
        v39[2] = @"automatchParticipant";
        v39[3] = @"GKInviteStatusKey";
        v40[2] = v19;
        v40[3] = &unk_286188FB8;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
        [v31 addObject:v20];

        ++v16;
      }

      while (v16 < [v2 automatchPlayerCount]);
    }

    v34 = 1;
    v21 = [MEMORY[0x277CBEB38] dictionaryWithObject:v31 forKey:@"involvedPlayers"];
    if (!*MEMORY[0x277D0C2A0])
    {
      v22 = GKOSLoggers();
    }

    v23 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v21;
      _os_log_impl(&dword_24DE53000, v23, OS_LOG_TYPE_INFO, "sending status message: %@", buf, 0xCu);
    }

    v24 = [MEMORY[0x277CCAC58] dataWithPropertyList:v21 format:200 options:0 error:0];
    v25 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v24, "length") + 4}];
    [v25 appendBytes:&v34 length:4];
    [v25 appendData:v24];
    v26 = [(GKMultiplayerP2PViewController *)self delegate];
    [v26 multiplayerP2PViewController:self sendData:v25];
  }
}

- (void)processStatusUpdateMessageFromPlayer:(id)a3 bytes:(const char *)a4 withLength:(unsigned int)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v11 = GKOSLoggers();
  }

  v12 = MEMORY[0x277D0C2B0];
  v13 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v78 = v9;
    _os_log_impl(&dword_24DE53000, v13, OS_LOG_TYPE_INFO, "Process status update - %@ - start", buf, 0xCu);
  }

  v54 = v9;
  [MEMORY[0x277CBEA90] dataWithBytes:a4 length:a5];
  v53 = v75 = 0;
  v14 = [MEMORY[0x277CCAC58] propertyListWithData:? options:? format:? error:?];
  v51 = 0;
  v52 = v14;
  v50 = [v14 objectForKey:@"involvedPlayers"];
  v15 = [v8 internal];
  v16 = [v15 playerID];
  v49 = self;
  v17 = [(GKMultiplayerP2PViewController *)self acceptedInvite];
  v18 = [v17 sender];
  v19 = [v18 internal];
  v20 = [v19 playerID];
  v48 = [v16 isEqualToString:v20];

  if (!*v10)
  {
    v21 = GKOSLoggers();
  }

  v22 = *v12;
  v23 = v54;
  v24 = v50;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v78 = v54;
    v79 = 2112;
    v80 = v50;
    _os_log_impl(&dword_24DE53000, v22, OS_LOG_TYPE_INFO, "Process status update - %@ - playerInfos = %@", buf, 0x16u);
  }

  v26 = v52;
  v25 = v53;
  v27 = v51;
  if (v53 && !v51 && v52 && v50 && [v50 count])
  {
    v47 = v8;
    v56 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v50, "count")}];
    v55 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v50, "count")}];
    v46 = [MEMORY[0x277CBEB18] array];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v50;
    v28 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (!v28)
    {
      v30 = 0;
      goto LABEL_31;
    }

    v29 = v28;
    v30 = 0;
    v31 = *v72;
    v32 = *MEMORY[0x277D0BCE8];
    while (1)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v72 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v71 + 1) + 8 * i);
        v35 = [v34 objectForKey:v32];
        v36 = v35;
        if (v35)
        {
          if (![v35 length])
          {
            v37 = 1;
            goto LABEL_24;
          }

          [v56 addObject:v36];
        }

        v37 = 0;
LABEL_24:
        v38 = [v34 objectForKey:@"automatchParticipant"];
        v39 = [v38 BOOLValue];

        v40 = [v34 objectForKey:@"GKInviteStatusKey"];
        if (v40 && [v36 length])
        {
          [v55 setObject:v40 forKey:v36];
        }

        v30 += v37 | v39;
      }

      v29 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (!v29)
      {
LABEL_31:

        v41 = MEMORY[0x277D0C020];
        v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 1538, "-[GKMultiplayerP2PViewController processStatusUpdateMessageFromPlayer:bytes:withLength:]"];
        v43 = [v41 dispatchGroupWithName:v42];

        if ([v56 count])
        {
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke;
          v65[3] = &unk_27966B3D0;
          v66 = v56;
          v70 = v48;
          v67 = v43;
          v68 = v49;
          v69 = v46;
          [v67 perform:v65];
        }

        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_3;
        v58[3] = &unk_27966B420;
        v23 = v54;
        v59 = v54;
        v60 = v43;
        v61 = v49;
        v62 = v55;
        v64 = v48;
        v63 = v30;
        v44 = v55;
        v45 = v43;
        [v45 notifyOnMainQueueWithBlock:v58];

        v8 = v47;
        v26 = v52;
        v25 = v53;
        v24 = v50;
        v27 = 0;
        break;
      }
    }
  }
}

void __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C170];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_2;
  v13[3] = &unk_27966B3A8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v17 = *(a1 + 64);
  *&v7 = v6;
  *(&v7 + 1) = *(a1 + 48);
  v12 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v14 = v12;
  v15 = v10;
  v16 = v3;
  v11 = v3;
  [v4 loadPlayersForIdentifiersPrivate:v5 withCompletionHandler:v13];
}

void __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([MEMORY[0x277D0C158] canPlayMultiplayerGameWithPlayers:v3] & 1) == 0)
  {
    v4 = [MEMORY[0x277CCA9B8] userErrorForCode:10 userInfo:0];
    [*(a1 + 32) setError:v4];
  }

  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"players"];
  if (*(a1 + 72) == 1)
  {
    v18 = v3;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [*(a1 + 40) multiplayerDataSource];
    v6 = [v5 players];

    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 internal];
          v13 = [v12 playerID];
          if (v13)
          {
            v14 = v13;
            v15 = *(a1 + 48);
            v16 = [v11 internal];
            v17 = [v16 playerID];
            LOBYTE(v15) = [v15 containsObject:v17];

            if ((v15 & 1) == 0)
            {
              [*(a1 + 56) addObject:v11];
            }
          }

          else
          {
          }
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) setObject:*(a1 + 56) forKeyedSubscript:@"playersToRemove"];
    v3 = v18;
  }

  (*(*(a1 + 64) + 16))();
}

void __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = MEMORY[0x277D0C2B0];
  v5 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "Process status update - %@ - mainQueue", buf, 0xCu);
  }

  v7 = [*(a1 + 40) error];
  v8 = [v7 code];

  if (v8 == 10)
  {
    if (!*v2)
    {
      v9 = GKOSLoggers();
    }

    v10 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_3_cold_1(v10);
    }

    [*(a1 + 48) showParentalControlsRestrictionAlert];
  }

  else
  {
    v11 = MEMORY[0x277D0C020];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerP2PViewController.m", 1571, "-[GKMultiplayerP2PViewController processStatusUpdateMessageFromPlayer:bytes:withLength:]_block_invoke"];
    v13 = [v11 dispatchGroupWithName:v12];

    v14 = [*(a1 + 40) objectForKeyedSubscript:@"playersToRemove"];
    if ([v14 count])
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_2_269;
      v26[3] = &unk_279669A20;
      v15 = v14;
      v16 = *(a1 + 48);
      v27 = v15;
      v28 = v16;
      [v13 perform:v26];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_2_271;
    v21[3] = &unk_27966B420;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    *&v19 = *(a1 + 32);
    *(&v19 + 1) = *(a1 + 48);
    *&v20 = v17;
    *(&v20 + 1) = v18;
    v22 = v20;
    v23 = v19;
    v25 = *(a1 + 72);
    v24 = *(a1 + 64);
    [v13 notifyOnMainQueueWithBlock:v21];
  }
}

void __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_2_269(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "according to the status update from sender, remove players: %@", buf, 0xCu);
  }

  v7 = [*(a1 + 40) multiplayerDataSource];
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_270;
  v10[3] = &unk_27966A4A8;
  v11 = v3;
  v9 = v3;
  [v7 removePlayers:v8 complete:v10];
}

void __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_2_271(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"players"];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_3_272;
  v16[3] = &unk_27966B3F8;
  v17 = *(a1 + 40);
  v4 = v3;
  v18 = v4;
  [v2 enumerateObjectsUsingBlock:v16];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8 = MEMORY[0x277CCABB0];
    v9 = v6;
    v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
    *buf = 138412802;
    v20 = v7;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v2;
    _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "Process status update - %@ - %@ players = %@", buf, 0x20u);
  }

  objc_initWeak(buf, *(a1 + 56));
  if (*(a1 + 72) == 1)
  {
    v11 = [*(a1 + 56) multiplayerDataSource];
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_274;
    v14[3] = &unk_279669FE0;
    objc_copyWeak(&v15, buf);
    [v11 setParticipantsWithPlayers:v2 automatchPlayerCount:v12 shouldUpdateAutomatchPlayerCount:v13 & 1 andStatuses:v4 complete:v14];

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(buf);
}

void __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_3_272(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 internal];
  v6 = [v5 playerID];
  v7 = [v4 objectForKey:v6];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v10 referenceKey];
    [v8 setObject:v7 forKey:v9];
  }
}

void __88__GKMultiplayerP2PViewController_processStatusUpdateMessageFromPlayer_bytes_withLength___block_invoke_274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained havePendingPlayers];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 mode];

  if (v5 == 2 && (v3 & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 startGame];
  }
}

- (void)showParentalControlsRestrictionAlert
{
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__GKMultiplayerP2PViewController_showParentalControlsRestrictionAlert__block_invoke;
  v10[3] = &unk_2796699A8;
  v10[4] = self;
  v9 = [(GKMultiplayerP2PViewController *)self _gkPresentAlertWithTitle:v4 message:v6 buttonTitle:v8 dismissHandler:v10];
}

void __70__GKMultiplayerP2PViewController_showParentalControlsRestrictionAlert__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
  [v1 finishWithError:v2];
}

- (void)showInviterDisconnectedAlert
{
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = MEMORY[0x277CCACA8];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  v8 = [(GKInvite *)self->_acceptedInvite sender];
  v9 = [v8 displayNameWithOptions:0];
  v10 = [v5 stringWithFormat:v7, v9];
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__GKMultiplayerP2PViewController_showInviterDisconnectedAlert__block_invoke;
  v14[3] = &unk_2796699A8;
  v14[4] = self;
  v13 = [(GKMultiplayerP2PViewController *)self _gkPresentAlertWithTitle:v4 message:v10 buttonTitle:v12 dismissHandler:v14];
}

- (void)showAutomatchingErrorAlert
{
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__GKMultiplayerP2PViewController_showAutomatchingErrorAlert__block_invoke;
  v10[3] = &unk_2796699A8;
  v10[4] = self;
  v9 = [(GKMultiplayerP2PViewController *)self _gkPresentAlertWithTitle:v4 message:v6 buttonTitle:v8 dismissHandler:v10];
}

- (void)showNoInternetAlert
{
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__GKMultiplayerP2PViewController_showNoInternetAlert__block_invoke;
  v10[3] = &unk_2796699A8;
  v10[4] = self;
  v9 = [(GKMultiplayerP2PViewController *)self _gkPresentAlertWithTitle:v4 message:v6 buttonTitle:v8 dismissHandler:v10];
}

void __53__GKMultiplayerP2PViewController_showNoInternetAlert__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userErrorForCode:3 underlyingError:0];
  [v1 finishWithError:v2];
}

- (void)showMatchDisconnectedAlertForPlayer:(id)a3
{
  v4 = a3;
  if (self->_acceptedInvite)
  {
    [(GKMultiplayerP2PViewController *)self setMode:5];
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();
    v7 = MEMORY[0x277CCACA8];
    v8 = GKGameCenterUIFrameworkBundle();
    v9 = GKGetLocalizedStringFromTableInBundle();
    v10 = [v4 displayNameWithOptions:0];
    v11 = [v7 stringWithFormat:v9, v10];
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __70__GKMultiplayerP2PViewController_showMatchDisconnectedAlertForPlayer___block_invoke;
    v27[3] = &unk_2796699A8;
    v27[4] = self;
    v14 = [(GKMultiplayerP2PViewController *)self _gkPresentAlertWithTitle:v6 message:v11 buttonTitle:v13 dismissHandler:v27];
  }

  else
  {
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();
    v17 = MEMORY[0x277CCACA8];
    v18 = GKGameCenterUIFrameworkBundle();
    v19 = GKGetLocalizedStringFromTableInBundle();
    v20 = [v4 displayNameWithOptions:0];
    v21 = [v17 stringWithFormat:v19, v20];
    v22 = GKGameCenterUIFrameworkBundle();
    v23 = GKGetLocalizedStringFromTableInBundle();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__GKMultiplayerP2PViewController_showMatchDisconnectedAlertForPlayer___block_invoke_2;
    v25[3] = &unk_279669E48;
    v25[4] = self;
    v26 = v4;
    v24 = [(GKMultiplayerP2PViewController *)self _gkPresentAlertWithTitle:v16 message:v21 buttonTitle:v23 dismissHandler:v25];

    v5 = v26;
  }
}

void __70__GKMultiplayerP2PViewController_showMatchDisconnectedAlertForPlayer___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) multiplayerDataSource];
  v7[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__GKMultiplayerP2PViewController_showMatchDisconnectedAlertForPlayer___block_invoke_3;
  v5[3] = &unk_279669E48;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 removePlayers:v3 complete:v5];
}

void __70__GKMultiplayerP2PViewController_showMatchDisconnectedAlertForPlayer___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) mode] == 7 || objc_msgSend(*(a1 + 32), "mode") == 1 || objc_msgSend(*(a1 + 32), "mode") == 9)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v2 = GKOSLoggers();
    }

    v3 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = [v4 internal];
      v7 = [v6 debugDescription];
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "after disconnection, player removed: %@.", &v14, 0xCu);
    }
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v10 internal];
      v13 = [v12 debugDescription];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_24DE53000, v11, OS_LOG_TYPE_INFO, "after disconnection, player removed: %@. and matching has started so we need to cancel this game.", &v14, 0xCu);
    }

    [*(a1 + 32) setMode:5];
    [*(a1 + 32) performActionsForButtonCancelCurrentMatching:0];
  }
}

- (void)cancelAlertWithoutDelegateCallback
{
  v3 = [(GKMultiplayerP2PViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(GKMultiplayerP2PViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(GKMultiplayerP2PViewController *)self firstActiveConversation];
  if (!v6 || (v7 = v6, [v5 UUID], v8 = objc_claimAutoreleasedReturnValue(), -[GKMultiplayerP2PViewController firstActiveConversation](self, "firstActiveConversation"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "UUID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqual:", v10), v10, v9, v8, v7, v11))
  {
    if ([v5 state] == 3 || objc_msgSend(v5, "state") == 4)
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v12 = GKOSLoggers();
      }

      v13 = *MEMORY[0x277D0C2B0];
      if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
      {
        v14 = MEMORY[0x277CCABB0];
        v15 = v13;
        v16 = [v14 numberWithInteger:{objc_msgSend(v5, "state")}];
        *buf = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_24DE53000, v15, OS_LOG_TYPE_INFO, "State of conversation(%@) changed to: %@", buf, 0x16u);
      }

      if ([v5 state] == 4)
      {
        [(GKMultiplayerViewController *)self setCanStartGroupActivities:0];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__GKMultiplayerP2PViewController_conversationManager_stateChangedForConversation___block_invoke;
        block[3] = &unk_2796699A8;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      else if ([v5 state] == 3)
      {
        [(GKMultiplayerViewController *)self setCanStartGroupActivities:1];
        [(GKMultiplayerP2PViewController *)self setFirstActiveConversation:v5];
      }
    }
  }
}

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB58];
  v6 = a4;
  v7 = [v5 set];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 activeRemoteParticipants];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __101__GKMultiplayerP2PViewController_conversationManager_activeRemoteParticipantsChangedForConversation___block_invoke;
  v27[3] = &unk_27966B448;
  v10 = v8;
  v28 = v10;
  [v9 enumerateObjectsUsingBlock:v27];

  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [(GKMultiplayerP2PViewController *)self activeRemoteParticipants];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__GKMultiplayerP2PViewController_conversationManager_activeRemoteParticipantsChangedForConversation___block_invoke_2;
  v22[3] = &unk_27966B470;
  v13 = v10;
  v23 = v13;
  v24 = self;
  v14 = v11;
  v25 = v14;
  v15 = v7;
  v26 = v15;
  [v12 enumerateObjectsUsingBlock:v22];

  if ([v14 count])
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v16 = GKOSLoggers();
    }

    v17 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v14;
      _os_log_impl(&dword_24DE53000, v17, OS_LOG_TYPE_INFO, "remote members changed and someone has left: %@", buf, 0xCu);
    }

    v18 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v19 = [v14 allObjects];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __101__GKMultiplayerP2PViewController_conversationManager_activeRemoteParticipantsChangedForConversation___block_invoke_310;
    v20[3] = &unk_279669E48;
    v20[4] = self;
    v21 = v15;
    [v18 removePrepopulatedPlayersIfExisted:v19 completionHandler:v20];
  }
}

void __101__GKMultiplayerP2PViewController_conversationManager_activeRemoteParticipantsChangedForConversation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a2, "identifier")}];
  [v2 addObject:v3];
}

void __101__GKMultiplayerP2PViewController_conversationManager_activeRemoteParticipantsChangedForConversation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCABB0];
  v13 = a2;
  v5 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v13, "identifier")}];
  LOBYTE(v3) = [v3 containsObject:v5];

  if (v3)
  {
    v6 = *(a1 + 56);
    v7 = v13;
  }

  else
  {
    [v13 identifier];

    v8 = [*(a1 + 40) game];
    v9 = [v8 bundleIdentifier];
    v10 = [v9 dataUsingEncoding:4];
    v11 = IDSIDAliasHashUInt64();

    v12 = *(a1 + 48);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v11];
    v6 = v12;
    v13 = v7;
  }

  [v6 addObject:v7];
}

- (GKMultiplayerP2PViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performActionsForButtonCancelCurrentMatching:(void *)a1 .cold.1(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [a2 multiplayerDataSource];
  v6 = [v5 players];
  v7 = [v3 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [a2 multiplayerDataSource];
  v10 = [v9 readyPlayers];
  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  v12 = MEMORY[0x277CCABB0];
  v13 = [a2 multiplayerDataSource];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "automatchPlayerCount")}];
  v15 = 138412802;
  v16 = v7;
  v17 = 2112;
  v18 = v11;
  v19 = 2112;
  v20 = v14;
  _os_log_error_impl(&dword_24DE53000, v4, OS_LOG_TYPE_ERROR, "cannot cancel current matching. players count = %@, ready players count = %@, automatch player count = %@", &v15, 0x20u);
}

- (void)playerDisconnected:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 internal];
  v7 = [v6 debugDescription];
  v8 = [a3 acceptedInvite];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "mode")}];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_24DE53000, v5, OS_LOG_TYPE_ERROR, "Player: %@ disconnected while making match. Accepted invite: %@, Matchmaker mode %@", &v10, 0x20u);
}

@end