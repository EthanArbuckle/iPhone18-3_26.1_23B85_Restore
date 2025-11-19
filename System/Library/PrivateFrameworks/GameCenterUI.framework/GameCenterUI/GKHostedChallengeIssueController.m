@interface GKHostedChallengeIssueController
+ (id)hostedIssueControllerWithChallenge:(id)a3 players:(id)a4 defaultMessage:(id)a5 completionHandler:(id)a6;
+ (id)presentationQueue;
- (GKHostedChallengeIssueController)initWithChallenge:(id)a3 players:(id)a4 defaultMessage:(id)a5 completionHandler:(id)a6;
- (void)_setupChildViewController;
- (void)_setupRemoteViewController;
- (void)dealloc;
- (void)doneWithPlayers:(id)a3 message:(id)a4;
- (void)extensionDidFinishWithError:(id)a3;
- (void)setRemoteViewController:(id)a3;
@end

@implementation GKHostedChallengeIssueController

+ (id)hostedIssueControllerWithChallenge:(id)a3 players:(id)a4 defaultMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v13 = [GKHostedChallengeIssueController alloc];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __112__GKHostedChallengeIssueController_hostedIssueControllerWithChallenge_players_defaultMessage_completionHandler___block_invoke;
  v22 = &unk_27966CC70;
  v14 = v12;
  v23 = v14;
  v24 = &v25;
  v15 = [(GKHostedChallengeIssueController *)v13 initWithChallenge:v9 players:v10 defaultMessage:v11 completionHandler:&v19];
  objc_storeStrong(v26 + 5, v15);
  [(GKHostedChallengeIssueController *)v15 setForcePicker:1, v19, v20, v21, v22];
  v16 = v23;
  v17 = v15;

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __112__GKHostedChallengeIssueController_hostedIssueControllerWithChallenge_players_defaultMessage_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 count];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(*(a1 + 40) + 8) + 40), v3 != 0, v5);
  }
}

- (GKHostedChallengeIssueController)initWithChallenge:(id)a3 players:(id)a4 defaultMessage:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = GKHostedChallengeIssueController;
  v14 = [(GKHostedChallengeIssueController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(GKHostedChallengeIssueController *)v14 setPlayers:v11];
    [(GKHostedChallengeIssueController *)v15 setChallenge:v10];
    [(GKHostedChallengeIssueController *)v15 setDefaultMessage:v12];
    [(GKHostedChallengeIssueController *)v15 setCompletionHandler:v13];
    [(GKHostedChallengeIssueController *)v15 _setupChildViewController];
  }

  return v15;
}

- (void)dealloc
{
  [(GKExtensionRemoteViewController *)self->_remoteViewController cancelExtension];
  [(GKHostedChallengeIssueController *)self setDismissCompletionHandler:0];
  v3.receiver = self;
  v3.super_class = GKHostedChallengeIssueController;
  [(GKHostedChallengeIssueController *)&v3 dealloc];
}

- (void)_setupChildViewController
{
  v3 = [(GKHostedChallengeIssueController *)self view];
  [v3 setAlpha:1.0];

  [(GKHostedChallengeIssueController *)self setWantsFullScreenLayout:1];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    [(GKHostedChallengeIssueController *)self setModalPresentationStyle:16];
    v6 = [MEMORY[0x277D0C8C8] sharedTheme];
    [v6 formSheetSize];
    [(GKHostedChallengeIssueController *)self setPreferredContentSize:?];
  }

  else
  {
    [(GKHostedChallengeIssueController *)self setModalPresentationStyle:17];
  }

  if (!self->_remoteViewController)
  {

    [(GKHostedChallengeIssueController *)self _setupRemoteViewController];
  }
}

+ (id)presentationQueue
{
  if (presentationQueue_onceToken != -1)
  {
    +[GKHostedChallengeIssueController presentationQueue];
  }

  v3 = presentationQueue_sResult;

  return v3;
}

void __53__GKHostedChallengeIssueController_presentationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.gamecenter.gkmodalchallangeissueviewcontroller", v2);
  v1 = presentationQueue_sResult;
  presentationQueue_sResult = v0;
}

- (void)doneWithPlayers:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_completionHandler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__GKHostedChallengeIssueController_doneWithPlayers_message___block_invoke;
    block[3] = &unk_27966A9A8;
    block[4] = self;
    v9 = v6;
    v10 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __60__GKHostedChallengeIssueController_doneWithPlayers_message___block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 1032) + 16))();
  v2 = *(a1 + 32);

  return [v2 setCompletionHandler:0];
}

- (void)_setupRemoteViewController
{
  v3 = +[GKChallengeIssueHostViewController challengeExtension];
  if (v3)
  {
    [GKExtensionRemoteViewController setupCallbackBlocksForExtension:v3 withParentViewController:self];
    [(GKHostedChallengeIssueController *)self _beginDelayingPresentation:&__block_literal_global_10 cancellationHandler:5.0];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __62__GKHostedChallengeIssueController__setupRemoteViewController__block_invoke_11;
    v4[3] = &unk_27966AE58;
    objc_copyWeak(&v5, &location);
    v4[4] = self;
    [GKExtensionRemoteViewController viewControllerForExtension:v3 inputItems:0 completionHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

uint64_t __62__GKHostedChallengeIssueController__setupRemoteViewController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __62__GKHostedChallengeIssueController__setupRemoteViewController__block_invoke_cold_1(v4);
    }
  }

  return a2 ^ 1u;
}

void __62__GKHostedChallengeIssueController__setupRemoteViewController__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v25)
  {
    v7 = v25;
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setRemoteViewController:v7];

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 remoteViewController];
    [v10 setDelegate:WeakRetained];

    [WeakRetained addChildViewController:v7];
    v11 = [WeakRetained view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v7 view];
    [v20 setFrame:{v13, v15, v17, v19}];

    v21 = [WeakRetained view];
    v22 = [v7 view];
    [v21 addSubview:v22];

    [v7 didMoveToParentViewController:WeakRetained];
    v23 = [WeakRetained receivedRemoteHandler];

    if (v23)
    {
      v24 = [WeakRetained receivedRemoteHandler];
      (v24)[2](v24, v7);
    }
  }

  else
  {
    [*(a1 + 32) extensionDidFinishWithError:v5];
  }
}

- (void)setRemoteViewController:(id)a3
{
  v5 = a3;
  if (self->_remoteViewController != v5)
  {
    objc_storeStrong(&self->_remoteViewController, a3);
    v6 = MEMORY[0x277CBEB38];
    v7 = +[GKExtensionRemoteViewController initialItemsForExtension];
    v8 = [v6 dictionaryWithDictionary:v7];

    v9 = [(GKHostedChallengeIssueController *)self players];
    v10 = [v9 _gkMapWithBlock:&__block_literal_global_16];

    [v8 setObject:v10 forKeyedSubscript:@"PlayerInternalsKey"];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_forcePicker];
    [v8 setObject:v11 forKeyedSubscript:@"ForcePickerKey"];

    defaultMessage = self->_defaultMessage;
    if (defaultMessage)
    {
      [v8 setObject:defaultMessage forKeyedSubscript:@"MessageKey"];
    }

    challenge = self->_challenge;
    if (challenge)
    {
      v14 = [(GKChallenge *)challenge internal];
      [v8 setObject:v14 forKeyedSubscript:@"ChallengeKey"];
    }

    objc_initWeak(&location, self);
    remoteViewController = self->_remoteViewController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__GKHostedChallengeIssueController_setRemoteViewController___block_invoke_2;
    v16[3] = &unk_27966AE80;
    objc_copyWeak(&v17, &location);
    [(GKExtensionRemoteViewController *)remoteViewController setInitialState:v8 withReply:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __60__GKHostedChallengeIssueController_setRemoteViewController___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__GKHostedChallengeIssueController_setRemoteViewController___block_invoke_3;
  block[3] = &unk_279669FE0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __60__GKHostedChallengeIssueController_setRemoteViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _endDelayingPresentation];
    WeakRetained = v2;
  }
}

- (void)extensionDidFinishWithError:(id)a3
{
  v4 = [(GKHostedChallengeIssueController *)self completionHandler];

  if (v4)
  {
    v5 = [(GKHostedChallengeIssueController *)self completionHandler];
    v5[2](v5, 0, 0);

    [(GKHostedChallengeIssueController *)self setCompletionHandler:0];
  }

  [(GKChallengeIssueHostViewController *)self->_remoteViewController willMoveToParentViewController:0];
  v6 = [(GKChallengeIssueHostViewController *)self->_remoteViewController view];
  [v6 removeFromSuperview];

  [(GKChallengeIssueHostViewController *)self->_remoteViewController removeFromParentViewController];

  [(GKHostedChallengeIssueController *)self setRemoteViewController:0];
}

@end