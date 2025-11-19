@interface GKTurnBasedInviteViewController
- (BOOL)canStartForcedAutomatch;
- (GKTurnBasedInviteViewControllerDelegate)delegate;
- (int64_t)automatchParticipantStatus;
- (void)cancel;
- (void)cleanupStateForCancelOrErrorWithHandler:(id)a3;
- (void)createGameWithPlayersToInvite:(id)a3 forSharing:(BOOL)a4 handler:(id)a5;
- (void)didClickCancelForServiceUnavailableAlert;
- (void)didInviteContactPlayers;
- (void)finishWithError:(id)a3;
- (void)finishWithMatchID:(id)a3;
- (void)handleNewParticipantCount:(int64_t)a3;
- (void)inviteFriendsButtonPressed;
- (void)invitePlayers:(id)a3;
- (void)playNow;
- (void)removeCurrentMatchAndSetFlagIfNotLoaded:(BOOL)a3 withHandler:(id)a4;
- (void)sendInvitesToContactPlayers:(id)a3 legacyPlayers:(id)a4 source:(unint64_t)a5 completion:(id)a6;
- (void)setInvitesFailedWithError:(id)a3;
- (void)setMode:(int64_t)a3;
- (void)startGameButtonPressed;
- (void)updateStartGameButtonTitle;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation GKTurnBasedInviteViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedInviteViewController;
  [(GKMultiplayerViewController *)&v4 viewDidLoad];
  v3 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [v3 setAutomatchAddedToMinInHeader:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKTurnBasedInviteViewController;
  [(GKMultiplayerViewController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x277D0BFA8] reporter];
  v5 = [(GKTurnBasedInviteViewController *)self pageId];
  [v4 recordPageWithID:v5 pageContext:@"turnBasedGame" pageType:@"multiplayer"];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKTurnBasedInviteViewController;
  [(GKMultiplayerViewController *)&v6 viewDidAppear:a3];
  v4 = [(GKMultiplayerViewController *)self originalMatchRequest];
  v5 = [v4 validateForTurnBased];

  if (v5)
  {
    [(GKTurnBasedInviteViewController *)self finishWithError:v5];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKTurnBasedInviteViewController;
  [(GKCollectionViewController *)&v7 viewWillDisappear:a3];
  if (![(GKTurnBasedInviteViewController *)self mode])
  {
    v4 = [(GKTurnBasedInviteViewController *)self navigationController];
    v5 = [v4 viewControllers];
    v6 = [v5 containsObject:self];

    if ((v6 & 1) == 0)
    {
      [(GKTurnBasedInviteViewController *)self removeCurrentMatchAndSetFlagIfNotLoaded:1 withHandler:0];
    }
  }
}

- (void)cleanupStateForCancelOrErrorWithHandler:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v6 = a3;
  v5 = [v4 defaultCenter];
  [v5 removeObserver:self];

  [(GKTurnBasedInviteViewController *)self removeCurrentMatchAndSetFlagIfNotLoaded:1 withHandler:v6];
}

- (void)cancel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__GKTurnBasedInviteViewController_cancel__block_invoke;
  v2[3] = &unk_2796699A8;
  v2[4] = self;
  [(GKTurnBasedInviteViewController *)self cleanupStateForCancelOrErrorWithHandler:v2];
}

void __41__GKTurnBasedInviteViewController_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 turnBasedInviteViewControllerWasCancelled:*(a1 + 32)];
}

- (void)finishWithMatchID:(id)a3
{
  v4 = a3;
  v5 = [(GKTurnBasedInviteViewController *)self delegate];
  [v5 turnBasedInviteViewController:self didCreateMatchID:v4];
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__GKTurnBasedInviteViewController_finishWithError___block_invoke;
  v6[3] = &unk_279669E48;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(GKTurnBasedInviteViewController *)self cleanupStateForCancelOrErrorWithHandler:v6];
}

void __51__GKTurnBasedInviteViewController_finishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 turnBasedInviteViewController:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)didClickCancelForServiceUnavailableAlert
{
  v3 = [(GKTurnBasedInviteViewController *)self delegate];

  if (v3)
  {
    v4 = [(GKTurnBasedInviteViewController *)self delegate];
    [v4 turnBasedInviteViewControllerWasCancelled:self];
  }
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    if (a3 == 1 || a3 == 2)
    {
      [(GKMultiplayerViewController *)self setAddButtonEnabled:0];
      v5 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      [v5 setRemovingEnabled:0];

      v6 = GKGameCenterUIFrameworkBundle();
      v13 = GKGetLocalizedStringFromTableInBundle();
      v7 = 0;
    }

    else
    {
      v7 = 1;
      [(GKMultiplayerViewController *)self setAddButtonEnabled:1];
      v6 = [(GKMultiplayerViewController *)self multiplayerDataSource];
      [v6 setRemovingEnabled:1];
      v13 = 0;
    }

    v8 = [(GKTurnBasedInviteViewController *)self navigationItem];
    v9 = [v8 leftBarButtonItem];
    [v9 setEnabled:v7];

    v10 = [(GKMultiplayerViewController *)self footerView];
    [v10 setFooterStatusString:v13];

    v11 = [(GKMultiplayerViewController *)self footerView];
    [v11 setStartGameButtonEnabled:v7];

    [(GKTurnBasedInviteViewController *)self updateStartGameButtonTitle];
    v12 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    [v12 didChangeMode];
  }
}

- (void)handleNewParticipantCount:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = GKTurnBasedInviteViewController;
  [(GKMultiplayerViewController *)&v9 handleNewParticipantCount:?];
  v5 = [(GKMultiplayerViewController *)self matchRequest];
  [v5 setMaxPlayers:a3];

  v6 = [(GKMultiplayerViewController *)self matchRequest];
  v7 = [v6 maxPlayers];
  v8 = [(GKMultiplayerViewController *)self matchRequest];
  [v8 setDefaultNumberOfPlayers:v7];
}

- (int64_t)automatchParticipantStatus
{
  if ([(GKTurnBasedInviteViewController *)self mode]== 1)
  {
    return 13;
  }

  else
  {
    return 0;
  }
}

- (void)updateStartGameButtonTitle
{
  if ([(GKTurnBasedInviteViewController *)self mode]<= 1)
  {
    v3 = GKGameCenterUIFrameworkBundle();
    v5 = GKGetLocalizedStringFromTableInBundle();

    if (v5)
    {
      v4 = [(GKMultiplayerViewController *)self footerView];
      [v4 setPrimaryButtonTitle:v5];
    }
  }
}

- (void)startGameButtonPressed
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = v4;
    v7 = [v5 numberWithInteger:{-[GKTurnBasedInviteViewController mode](self, "mode")}];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "TBGame - startGameButtonPressed, self.mode = %@", &v11, 0xCu);
  }

  v8 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  [v8 recordButtonClickAction:@"play" targetId:@"startGame"];

  v9 = [(GKTurnBasedInviteViewController *)self mode];
  if (v9 == 1)
  {
    [(GKTurnBasedInviteViewController *)self performActionsForButtonCancelCurrentMatching];
  }

  else if (!v9)
  {
    [(GKMultiplayerViewController *)self performActionsForButtonStartGame];
    v10 = [(GKMultiplayerViewController *)self footerView];
    [v10 setStartGameButtonEnabled:0];
  }
}

- (void)inviteFriendsButtonPressed
{
  v3 = [MEMORY[0x277D0BFA8] reporter];
  v4 = [(GKTurnBasedInviteViewController *)self pageId];
  [v3 recordClickWithAction:@"navigate" targetId:@"inviteFriends" targetType:@"button" pageId:v4 pageType:@"multiplayer"];

  v5.receiver = self;
  v5.super_class = GKTurnBasedInviteViewController;
  [(GKMultiplayerViewController *)&v5 inviteFriendsButtonPressed];
}

- (void)createGameWithPlayersToInvite:(id)a3 forSharing:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __84__GKTurnBasedInviteViewController_createGameWithPlayersToInvite_forSharing_handler___block_invoke;
  v34[3] = &unk_2796699A8;
  v34[4] = self;
  [MEMORY[0x277D0BFD0] named:@"TBGame - createGameWithPlayersToInvite" execute:v34];
  v10 = [(GKMultiplayerViewController *)self matchRequest];
  v11 = [v10 copy];

  if (a4)
  {
    v12 = [v11 internal];
    [v12 setPreloadedMatch:1];
  }

  else
  {
    [(GKTurnBasedInviteViewController *)self setMode:2];
    v12 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v13 = [(GKMultiplayerViewController *)self multiplayerDataSource];
    v14 = [v13 currentPlayers];
    [v12 setStatus:7 forPlayers:v14 complete:0];
  }

  v15 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v16 = [v15 guestPlayers];

  if ([v16 count])
  {
    v17 = [v16 arrayByAddingObjectsFromArray:v8];
    [v11 setRecipients:v17];
  }

  else
  {
    [v11 setRecipients:v8];
  }

  v18 = [(GKMultiplayerViewController *)self multiplayerDataSource];
  v19 = [v18 playerRange];
  v21 = v20;

  [v11 setMinPlayers:v19 + v21];
  if (!a4)
  {
    [v11 setMaxPlayers:{objc_msgSend(v11, "minPlayers")}];
  }

  v22 = [MEMORY[0x277D0C1D8] shared];
  [v22 setRecentNumberOfPlayers:{objc_msgSend(v11, "maxPlayers")}];

  v23 = [MEMORY[0x277D0C1D8] shared];
  v24 = [v11 maxPlayers];
  v25 = [(GKMultiplayerViewController *)self game];
  v26 = [v25 bundleIdentifier];
  [v23 setRecentNumberOfPlayers:v24 forBundleID:v26];

  [v11 setDefaultNumberOfPlayers:0];
  v27 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v28 = [v27 turnBasedService];
  v29 = [v11 internal];
  inviteMessageDictionary = self->_inviteMessageDictionary;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __84__GKTurnBasedInviteViewController_createGameWithPlayersToInvite_forSharing_handler___block_invoke_86;
  v32[3] = &unk_27966CCC0;
  v32[4] = self;
  v33 = v9;
  v31 = v9;
  [v28 createTurnBasedGameForMatchRequest:v29 individualMessages:inviteMessageDictionary handler:v32];
}

void __84__GKTurnBasedInviteViewController_createGameWithPlayersToInvite_forSharing_handler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 matchRequest];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "TBGame - createGameWithPlayersToInvite, self.matchRequest = %@", &v7, 0xCu);
  }
}

void __84__GKTurnBasedInviteViewController_createGameWithPlayersToInvite_forSharing_handler___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__GKTurnBasedInviteViewController_createGameWithPlayersToInvite_forSharing_handler___block_invoke_2;
  v10[3] = &unk_27966CC98;
  v11 = v5;
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v12 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __84__GKTurnBasedInviteViewController_createGameWithPlayersToInvite_forSharing_handler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x277D0C238]) initWithInternalRepresentation:*(a1 + 32)];
    v8 = v2;
    if (!*(a1 + 56))
    {
      v3 = *(a1 + 40);
      v4 = [v2 matchID];
      [v3 performSelector:sel_finishWithMatchID_ withObject:v4 afterDelay:1.0];
    }
  }

  else
  {
    [*(a1 + 40) setInvitesFailedWithError:*(a1 + 48)];
    v8 = 0;
  }

  [*(a1 + 40) setDidStartForcedAutomatch:0];
  v5 = *(a1 + 56);
  v6 = v8;
  if (v5)
  {
    v5 = (*(v5 + 16))();
    v6 = v8;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)setInvitesFailedWithError:(id)a3
{
  v4 = a3;
  [(GKTurnBasedInviteViewController *)self setMode:0];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D0BF98]];

  if ([v6 intValue] == 5068)
  {
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();

    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __61__GKTurnBasedInviteViewController_setInvitesFailedWithError___block_invoke;
    v24[3] = &unk_2796699A8;
    v24[4] = self;
    v11 = v24;
  }

  else
  {
    v12 = [v6 intValue];
    v13 = GKGameCenterUIFrameworkBundle();
    if (v12 != 5094)
    {
      v8 = GKGetLocalizedStringFromTableInBundle();

      v16 = GKGameCenterUIFrameworkBundle();
      v10 = GKGetLocalizedStringFromTableInBundle();

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __61__GKTurnBasedInviteViewController_setInvitesFailedWithError___block_invoke_3;
      v20[3] = &unk_279669E48;
      v21 = v4;
      v22 = self;
      v15 = _Block_copy(v20);

      goto LABEL_7;
    }

    v8 = GKGetLocalizedStringFromTableInBundle();

    v14 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__GKTurnBasedInviteViewController_setInvitesFailedWithError___block_invoke_2;
    aBlock[3] = &unk_2796699A8;
    aBlock[4] = self;
    v11 = aBlock;
  }

  v15 = _Block_copy(v11);
LABEL_7:
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();
  v19 = [(GKTurnBasedInviteViewController *)self _gkPresentAlertWithTitle:v8 message:v10 buttonTitle:v18 dismissHandler:v15];
}

void __61__GKTurnBasedInviteViewController_setInvitesFailedWithError___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 delegate];
    [v4 turnBasedInviteViewController:*(a1 + 40) didFailWithError:*(a1 + 32)];
  }

  else
  {

    [v2 cancel];
  }
}

- (BOOL)canStartForcedAutomatch
{
  if ([(GKTurnBasedInviteViewController *)self mode])
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
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "TBGame - playNow", v5, 2u);
  }

  [(GKTurnBasedInviteViewController *)self removeCurrentMatchAndSetFlagIfNotLoaded:1 withHandler:0];
  [(GKTurnBasedInviteViewController *)self createGameWithPlayersToInvite:0 forSharing:0 handler:0];
}

- (void)sendInvitesToContactPlayers:(id)a3 legacyPlayers:(id)a4 source:(unint64_t)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!*MEMORY[0x277D0C2A0])
  {
    v13 = GKOSLoggers();
  }

  v14 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_24DE53000, v14, OS_LOG_TYPE_INFO, "TBGame - sendInvitesToContactPlayers, contactPlayers = %@, legacyPlayers = %@", buf, 0x16u);
  }

  v15 = [MEMORY[0x277D0C020] dispatchGroupWithName:@"loadShareURLWithCompletion"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke;
  v27[3] = &unk_279669A20;
  v27[4] = self;
  v16 = v15;
  v28 = v16;
  [v16 perform:v27];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_5;
  v21[3] = &unk_27966CD60;
  v21[4] = self;
  v22 = v16;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a5;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v20 = v16;
  [v20 notifyOnMainQueueWithBlock:v21];
}

void __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) removeCurrentMatchAndSetFlagIfNotLoaded:objc_msgSend(*(a1 + 32) withHandler:{"deletePreloadedMatch"), 0}];
  v4 = *(a1 + 32);
  v5 = [v4 multiplayerDataSource];
  v6 = [v5 playersToBeInvited];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_2;
  v10[3] = &unk_27966CD10;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v9 = v3;
  [v4 createGameWithPlayersToInvite:v6 forSharing:1 handler:v10];
}

void __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (v5)
  {
    [*(a1 + 40) setMatch:v5];
    if ([*(a1 + 40) deletePreloadedMatch])
    {
      [*(a1 + 40) removeCurrentMatchAndSetFlagIfNotLoaded:0 withHandler:0];
    }

    else
    {
      v6 = *(a1 + 32);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_3;
      v9[3] = &unk_279669B00;
      v10 = v5;
      v8 = *(a1 + 32);
      v7 = v8.i64[0];
      v11 = vextq_s8(v8, v8, 8uLL);
      [v6 perform:v9];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) matchRequest];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_4;
  v7[3] = &unk_27966CCE8;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 loadURLWithMatchRequest:v5 completionHandler:v7];
}

uint64_t __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_5(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) result];
  [*(a1 + 32) setShareURL:v2];

  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shareURL];
    *buf = 138412290;
    v40 = v7;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "TBGame - setting self.shareURL = %@", buf, 0xCu);
  }

  if ([*(a1 + 48) count] || objc_msgSend(*(a1 + 56), "count"))
  {
    v8 = [*(a1 + 40) error];
    v9 = v8;
    if (v8 && ([v8 domain], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CBBF50]), v10, (v11 & 1) == 0))
    {
      [*(a1 + 32) setMode:0];
    }

    else
    {
      [*(a1 + 32) setMode:2];
      v12 = [*(a1 + 32) multiplayerDataSource];
      v13 = [*(a1 + 32) multiplayerDataSource];
      v14 = [v13 currentPlayersNotInvitedViaMessages];
      [v12 setStatus:7 forPlayers:v14 complete:0];

      v15 = [*(a1 + 32) multiplayerDataSource];
      v16 = [v15 playerRange];
      v18 = v17;

      v19 = v16 + v18;
      v20 = [*(a1 + 32) matchRequest];
      v21 = [v20 minPlayers];

      if (v19 < v21)
      {
        v22 = [*(a1 + 32) matchRequest];
        v19 = [v22 minPlayers];
      }

      v23 = [*(a1 + 32) matchRequest];
      v24 = [v23 maxPlayers];

      if (v19 > v24)
      {
        v25 = [*(a1 + 32) matchRequest];
        v19 = [v25 maxPlayers];
      }

      v26 = [*(a1 + 56) valueForKeyPath:@"internal.playerID"];
      v27 = [*(a1 + 32) match];
      v28 = [*(a1 + 48) count];
      v29 = [*(a1 + 32) matchRequest];
      v30 = [v29 inviteMessage];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_122;
      v34[3] = &unk_27966CD38;
      v31 = *(a1 + 48);
      v32 = *(a1 + 32);
      v35 = v31;
      v36 = v32;
      v33 = *(a1 + 64);
      v38 = *(a1 + 72);
      v37 = v33;
      [v27 reserveShareParticipantSlots:v28 minPlayerCount:v19 maxPlayerCount:v19 andInvitePlayers:v26 withMessage:v30 handler:v34];
    }
  }

  else
  {
    [*(a1 + 32) setMode:0];
    (*(*(a1 + 64) + 16))();
  }
}

void __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_122(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "TBGame - reserveShareParticipantSlots result, error = %@, contactPlayers = %@", &v13, 0x16u);
  }

  if (v3)
  {
    if (!*v4)
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_122_cold_1(v3, v9);
    }
  }

  else if ([*(a1 + 32) count])
  {
    [*(a1 + 40) inviteContactPlayers:*(a1 + 32) source:*(a1 + 56) completion:*(a1 + 48)];
    goto LABEL_13;
  }

  v10 = *(a1 + 40);
  v11 = [v10 match];
  v12 = [v11 matchID];
  [v10 finishWithMatchID:v12];

  (*(*(a1 + 48) + 16))();
LABEL_13:
}

- (void)didInviteContactPlayers
{
  v4 = [(GKTurnBasedInviteViewController *)self match];
  v3 = [v4 matchID];
  [(GKTurnBasedInviteViewController *)self finishWithMatchID:v3];
}

- (void)removeCurrentMatchAndSetFlagIfNotLoaded:(BOOL)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277D0C020] dispatchGroupWithName:@"removeCurrentMatchGroup"];
  v8 = [(GKTurnBasedInviteViewController *)self match];
  v9 = v8;
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__GKTurnBasedInviteViewController_removeCurrentMatchAndSetFlagIfNotLoaded_withHandler___block_invoke;
    v13[3] = &unk_279669A20;
    v14 = v8;
    v15 = self;
    [v7 perform:v13];
  }

  else
  {
    self->_deletePreloadedMatch = a3;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__GKTurnBasedInviteViewController_removeCurrentMatchAndSetFlagIfNotLoaded_withHandler___block_invoke_4;
  v11[3] = &unk_27966A4A8;
  v12 = v6;
  v10 = v6;
  [v7 notifyOnMainQueueWithBlock:v11];
}

void __87__GKTurnBasedInviteViewController_removeCurrentMatchAndSetFlagIfNotLoaded_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) currentParticipant];
  [v4 setMatchOutcome:1];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA90] data];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__GKTurnBasedInviteViewController_removeCurrentMatchAndSetFlagIfNotLoaded_withHandler___block_invoke_2;
  v10[3] = &unk_27966CBC0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v9 = v3;
  [v5 endMatchInTurnWithMatchData:v6 completionHandler:v10];

  [*(a1 + 40) setMatch:0];
  [*(a1 + 40) setShareURL:0];
}

void __87__GKTurnBasedInviteViewController_removeCurrentMatchAndSetFlagIfNotLoaded_withHandler___block_invoke_2(void *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__GKTurnBasedInviteViewController_removeCurrentMatchAndSetFlagIfNotLoaded_withHandler___block_invoke_3;
  v3[3] = &unk_27966A430;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 removeWithCompletionHandler:v3];
}

uint64_t __87__GKTurnBasedInviteViewController_removeCurrentMatchAndSetFlagIfNotLoaded_withHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setDeletePreloadedMatch:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __87__GKTurnBasedInviteViewController_removeCurrentMatchAndSetFlagIfNotLoaded_withHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invitePlayers:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "TBGame - invitePlayers, players = %@", &v7, 0xCu);
  }

  if ([v4 count])
  {
    [(GKTurnBasedInviteViewController *)self removeCurrentMatchAndSetFlagIfNotLoaded:1 withHandler:0];
    [(GKTurnBasedInviteViewController *)self createGameWithPlayersToInvite:v4 forSharing:0 handler:0];
  }

  else
  {
    [(GKTurnBasedInviteViewController *)self setMode:0];
  }
}

- (GKTurnBasedInviteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __95__GKTurnBasedInviteViewController_sendInvitesToContactPlayers_legacyPlayers_source_completion___block_invoke_122_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Error reserving turn-based slots: %@", &v2, 0xCu);
}

@end