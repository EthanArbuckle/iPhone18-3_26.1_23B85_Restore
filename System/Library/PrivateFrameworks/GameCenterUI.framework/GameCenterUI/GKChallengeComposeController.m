@interface GKChallengeComposeController
+ (id)composeFlowForChallenge:(id)a3 players:(id)a4 defaultMessage:(id)a5 completionHandler:(id)a6;
+ (id)friendPickerFlowForChallenge:(id)a3 selectPlayers:(id)a4 defaultMessage:(id)a5 completionHandler:(id)a6;
+ (void)composeAndSendFlowForChallenge:(id)a3 selectPlayers:(id)a4 defaultMessage:(id)a5 forcePicker:(BOOL)a6 readyHandler:(id)a7 completionHandler:(id)a8;
- (GKChallengeComposeController)init;
- (GKChallengeComposeController)initWithChallenge:(id)a3 defaultMessage:(id)a4 players:(id)a5;
- (void)cancel;
- (void)donePressed;
- (void)loadView;
- (void)updateChallengeText;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKChallengeComposeController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = GKChallengeComposeController;
  [(GKChallengeComposeController *)&v8 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D75D68]);
  [v3 _setGroupName:@"gameLayerGroup"];
  v4 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v3 setBackgroundEffects:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(GKChallengeComposeController *)self view];
  [v5 insertSubview:v3 atIndex:0];

  v6 = MEMORY[0x277CCAAD0];
  v7 = [(GKChallengeComposeController *)self view];
  [v6 _gkInstallEdgeConstraintsForView:v3 containedWithinParentView:v7];
}

+ (void)composeAndSendFlowForChallenge:(id)a3 selectPlayers:(id)a4 defaultMessage:(id)a5 forcePicker:(BOOL)a6 readyHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = v18;
  if (!v17)
  {
    v37 = a6;
    v26 = a1;
    v27 = MEMORY[0x277CCACA8];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/Compose/GKChallengeComposeController.m"];
    v30 = [v29 lastPathComponent];
    v31 = [v27 stringWithFormat:@"%@ (readyHandler != ((void*)0))\n[%s (%s:%d)]", v28, "+[GKChallengeComposeController composeAndSendFlowForChallenge:selectPlayers:defaultMessage:forcePicker:readyHandler:completionHandler:]", objc_msgSend(v30, "UTF8String"), 66];

    a1 = v26;
    a6 = v37;

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v31}];
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_5:
    v38 = a1;
    v32 = MEMORY[0x277CCACA8];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/Compose/GKChallengeComposeController.m"];
    v35 = [v34 lastPathComponent];
    v36 = [v32 stringWithFormat:@"%@ (handler != ((void*)0))\n[%s (%s:%d)]", v33, "+[GKChallengeComposeController composeAndSendFlowForChallenge:selectPlayers:defaultMessage:forcePicker:readyHandler:completionHandler:]", objc_msgSend(v35, "UTF8String"), 67];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v36}];
    a1 = v38;
    goto LABEL_3;
  }

  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = [MEMORY[0x277D0C138] localPlayer];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __135__GKChallengeComposeController_composeAndSendFlowForChallenge_selectPlayers_defaultMessage_forcePicker_readyHandler_completionHandler___block_invoke;
  v39[3] = &unk_27966B500;
  v46 = a6;
  v40 = v15;
  v41 = v14;
  v42 = v16;
  v43 = v19;
  v44 = v17;
  v45 = a1;
  v21 = v17;
  v22 = v19;
  v23 = v16;
  v24 = v14;
  v25 = v15;
  [v20 loadRecentPlayersWithCompletionHandler:v39];
}

void __135__GKChallengeComposeController_composeAndSendFlowForChallenge_selectPlayers_defaultMessage_forcePicker_readyHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v10 count];
  v6 = [*(a1 + 32) count];
  if ((*(a1 + 80) & 1) == 0 && (v6 || v5 < 2))
  {
    if (!v6)
    {
      v8 = v10;

      v4 = v8;
    }

    v7 = [*(a1 + 72) composeFlowForChallenge:*(a1 + 40) players:v4 defaultMessage:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    v7 = [*(a1 + 72) friendPickerFlowForChallenge:*(a1 + 40) selectPlayers:*(a1 + 32) defaultMessage:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  v9 = v7;
  (*(*(a1 + 64) + 16))();
}

+ (id)composeFlowForChallenge:(id)a3 players:(id)a4 defaultMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 count])
  {
    v13 = [[GKChallengeComposeController alloc] initWithChallenge:v9 defaultMessage:v11 players:0];
    objc_initWeak(&location, v13);
    [(GKChallengeComposeController *)v13 setPlayersToLoad:v10];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__GKChallengeComposeController_composeFlowForChallenge_players_defaultMessage_completionHandler___block_invoke;
    v15[3] = &unk_27966B550;
    objc_copyWeak(&v18, &location);
    v16 = v9;
    v17 = v12;
    [(GKSimpleComposeController *)v13 setDoneHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __97__GKChallengeComposeController_composeFlowForChallenge_players_defaultMessage_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__GKChallengeComposeController_composeFlowForChallenge_players_defaultMessage_completionHandler___block_invoke_2;
  block[3] = &unk_27966B528;
  objc_copyWeak(&v14, a1 + 6);
  v10 = v6;
  v11 = a1[4];
  v12 = v5;
  v13 = a1[5];
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v14);
}

void __97__GKChallengeComposeController_composeFlowForChallenge_players_defaultMessage_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = [WeakRetained players];
    [*(a1 + 40) issueToPlayers:v3 message:*(a1 + 48)];
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, *(a1 + 48));
  }

  [v5 setDoneHandler:0];
}

+ (id)friendPickerFlowForChallenge:(id)a3 selectPlayers:(id)a4 defaultMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[GKChallengePlayerPickerViewController alloc] initWithChallenge:v9 initiallySelectedPlayers:v10];
  [(GKChallengePlayerPickerViewController *)v13 setMessage:v11];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke;
  v19[3] = &unk_27966B578;
  v14 = v12;
  v20 = v14;
  [(GKChallengePlayerPickerViewController *)v13 setCompletionHandler:v19];
  objc_initWeak(&location, v13);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_3;
  v16[3] = &unk_27966A1C0;
  objc_copyWeak(&v17, &location);
  [(GKChallengePlayerPickerViewController *)v13 setInviteFriendHandler:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_2;
  block[3] = &unk_279669D60;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _os_feature_enabled_impl();
  if (v3 || !v4 || (WeakRetained = objc_loadWeakRetained((a1 + 32)), WeakRetained, !WeakRetained))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_4;
    aBlock[3] = &unk_27966B298;
    v18 = v3;
    v30 = v18;
    objc_copyWeak(&v31, (a1 + 32));
    v19 = _Block_copy(aBlock);
    if (v3)
    {
      if ([v18 supportsFriendingViaPush])
      {
        v20 = [v18 contactAssociationID];

        if (v20)
        {
          [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:0 pageType:@"challenge" pageId:@"friendSelect"];
          v21 = [v18 contact];
          v22 = [v21 identifier];
          v23 = [v18 contactAssociationID];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_7;
          v27[3] = &unk_27966A3B8;
          v28 = v19;
          [_TtC12GameCenterUI20GameCenterObjcHelper sendFriendInvitationViaPushWithContactID:v22 contactAssociationID:v23 completionHandler:v27];

LABEL_13:
          objc_destroyWeak(&v31);

          goto LABEL_16;
        }
      }

      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:v24 pageType:@"challenge" pageId:@"friendSelect"];
    v19[2](v19);
    goto LABEL_13;
  }

  [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:2 pageType:@"challenge" pageId:@"friendSelect"];
  v6 = [MEMORY[0x277D0C1D8] shared];
  v7 = [v6 isAddingFriendsRestricted];

  if (v7)
  {
    v8 = MEMORY[0x277D75110];
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    v13 = [v8 alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v14 = MEMORY[0x277D750F8];
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();
    v17 = [v14 actionWithTitle:v16 style:0 handler:0];
    [v13 addAction:v17];
  }

  else
  {
    v25 = objc_loadWeakRetained((a1 + 32));
    v13 = [GKFriendingViewControllers inviteFriendsWithContainerViewController:v25];
  }

  v26 = objc_loadWeakRetained((a1 + 32));
  [v26 presentViewController:v13 animated:1 completion:0];

LABEL_16:
}

void __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_4(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 contact];
    v10[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  if (*MEMORY[0x277D0C258] == 1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_5;
    v8[3] = &unk_27966B5A0;
    v5 = &v9;
    objc_copyWeak(&v9, (a1 + 40));
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerWithRecipients:v4 chatGUID:0 completionHandler:v8];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_6;
    v6[3] = &unk_27966B5C8;
    v5 = &v7;
    objc_copyWeak(&v7, (a1 + 40));
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerForRemoteInviteWithRecipients:v4 chatGUID:0 resultHandler:v6];
  }

  objc_destroyWeak(v5);
}

void __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v3 animated:1 completion:0];
}

void __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = v9;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained presentViewController:v7 animated:1 completion:0];
  }
}

void __108__GKChallengeComposeController_friendPickerFlowForChallenge_selectPlayers_defaultMessage_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    v5 = *MEMORY[0x277D0C298];
    if (os_log_type_enabled(*MEMORY[0x277D0C298], OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "Unable to send friend invitation via push, falling back to Messages flow. %@", &v6, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (GKChallengeComposeController)init
{
  v9.receiver = self;
  v9.super_class = GKChallengeComposeController;
  v2 = [(GKBaseComposeController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(GKBaseComposeController *)v2 setShowHeaderFieldContainer:0];
    v4 = GKGameCenterUIFrameworkBundle();
    v5 = GKGetLocalizedStringFromTableInBundle();
    v6 = [(GKBaseComposeController *)v3 messageField];
    [v6 setPlaceholderText:v5];

    v7 = [(GKBaseComposeController *)v3 messageField];
    [v7 setTextContainerInset:{5.0, 0.0, 0.0, 0.0}];
  }

  return v3;
}

- (GKChallengeComposeController)initWithChallenge:(id)a3 defaultMessage:(id)a4 players:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GKChallengeComposeController *)self init];
  v12 = v11;
  if (v11)
  {
    [(GKChallengeComposeController *)v11 setChallenge:v8];
    [(GKSimpleComposeController *)v12 setDefaultMessage:v9];
    [(GKSimpleComposeController *)v12 setPlayers:v10];
  }

  return v12;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(GKChallengeComposeController *)self updateChallengeText];
  v5.receiver = self;
  v5.super_class = GKChallengeComposeController;
  [(GKSimpleComposeController *)&v5 viewWillAppear:v3];
}

- (void)updateChallengeText
{
  v3 = [(GKChallenge *)self->_challenge composeGoalText];
  [(GKComposeHeaderField *)self->_challengeField setValueText:v3];
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = GKChallengeComposeController;
  [(GKSimpleComposeController *)&v12 loadView];
  v3 = [(GKChallengeComposeController *)self navigationItem];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  [v3 setTitle:v5];

  if ([(NSArray *)self->_playersToLoad count]|| ([(GKChallenge *)self->_challenge detailsLoaded]& 1) == 0)
  {
    v6 = MEMORY[0x277D0C020];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKChallengeComposeController.m", 275, "-[GKChallengeComposeController loadView]"];
    v8 = [v6 dispatchGroupWithName:v7];

    [(GKLoadableContentViewController *)self setLoadingState:@"LoadingState"];
    if ([(NSArray *)self->_playersToLoad count])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __40__GKChallengeComposeController_loadView__block_invoke;
      v11[3] = &unk_27966A148;
      v11[4] = self;
      [v8 perform:v11];
    }

    if (([(GKChallenge *)self->_challenge detailsLoaded]& 1) == 0)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__GKChallengeComposeController_loadView__block_invoke_4;
      v10[3] = &unk_27966A148;
      v10[4] = self;
      [v8 perform:v10];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__GKChallengeComposeController_loadView__block_invoke_6;
    v9[3] = &unk_2796699A8;
    v9[4] = self;
    [v8 notifyOnMainQueueWithBlock:v9];
  }
}

void __40__GKChallengeComposeController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C170];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1216);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__GKChallengeComposeController_loadView__block_invoke_2;
  v8[3] = &unk_279669DF8;
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 loadCompletePlayersForPlayers:v6 completionHandler:v8];
}

uint64_t __40__GKChallengeComposeController_loadView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setPlayers:v4];
  v5 = [v4 _gkMapWithBlock:&__block_literal_global_20];

  v6 = [*(a1 + 32) toField];
  [v6 setRecipientNameStrings:v5];

  [*(a1 + 32) setPlayersToLoad:0];
  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __40__GKChallengeComposeController_loadView__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1208);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__GKChallengeComposeController_loadView__block_invoke_5;
  v7[3] = &unk_27966A958;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 loadDetailsWithCompletionHandler:v7];
}

uint64_t __40__GKChallengeComposeController_loadView__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) updateChallengeText];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)cancel
{
  v3 = [(GKBaseComposeController *)self intendedFirstResponder];
  [v3 resignFirstResponder];

  v4 = [(GKSimpleComposeController *)self doneHandler];

  if (v4)
  {
    v5 = [(GKSimpleComposeController *)self doneHandler];
    v6 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
    (v5)[2](v5, 0, v6);

    [(GKSimpleComposeController *)self setDoneHandler:0];
  }
}

- (void)donePressed
{
  v3 = [(GKBaseComposeController *)self intendedFirstResponder];
  [v3 resignFirstResponder];

  v4.receiver = self;
  v4.super_class = GKChallengeComposeController;
  [(GKSimpleComposeController *)&v4 donePressed];
}

@end