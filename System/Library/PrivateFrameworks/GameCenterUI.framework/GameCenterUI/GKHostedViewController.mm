@interface GKHostedViewController
- (BOOL)shouldPresentRemoteViewController;
- (GKHostedViewController)init;
- (void)didReceiveMemoryWarning;
- (void)dismissModalViewControllerAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)donePressed:(id)pressed;
- (void)presentRemoteViewControllerIfNeeded;
- (void)requestRemoteViewControllerIfNeeded;
- (void)resetRemoteViewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation GKHostedViewController

- (GKHostedViewController)init
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKHostedViewController init];
  }

  v8.receiver = self;
  v8.super_class = GKHostedViewController;
  v4 = [(GKHostedViewController *)&v8 init];
  if (v4)
  {
    currentGame = [MEMORY[0x277D0C048] currentGame];
    game = v4->_game;
    v4->_game = currentGame;

    [(GKHostedViewController *)v4 requestRemoteViewControllerIfNeeded];
  }

  return v4;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = GKHostedViewController;
  [(GKHostedViewController *)&v2 didReceiveMemoryWarning];
}

- (void)donePressed:(id)pressed
{
  [(GKHostedViewController *)self setPresentingRemoteViewController:0];
  presentingViewController = [(GKHostedViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:&__block_literal_global_50];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = GKHostedViewController;
  [(GKHostedViewController *)&v5 viewDidLoad];
  view = [(GKHostedViewController *)self view];
  [view setBackgroundColor:0];

  view2 = [(GKHostedViewController *)self view];
  [view2 setOpaque:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(GKHostedViewController *)self requestRemoteViewControllerIfNeeded];
  v6.receiver = self;
  v6.super_class = GKHostedViewController;
  [(GKHostedViewController *)&v6 viewWillAppear:appearCopy];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewWillAppear:];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = GKHostedViewController;
  [(GKHostedViewController *)&v5 viewDidAppear:appear];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKHostedViewController viewDidAppear:];
  }

  [(GKHostedViewController *)self presentRemoteViewControllerIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(GKHostedViewController *)self setGkIsDisappearing:1];
  v6.receiver = self;
  v6.super_class = GKHostedViewController;
  [(GKHostedViewController *)&v6 viewWillDisappear:disappearCopy];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewWillDisappear:];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = GKHostedViewController;
  [(GKHostedViewController *)&v5 viewDidDisappear:disappear];
  [(GKHostedViewController *)self setGkIsDisappearing:0];
  [(GKHostedViewController *)self requestRemoteViewControllerIfNeeded];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewDidDisappear:];
  }
}

- (void)requestRemoteViewControllerIfNeeded
{
  if (!self->_isRequestingRemoteViewController)
  {
    remoteViewController = self->_remoteViewController;
    if (remoteViewController)
    {
      [(GKRemoteViewServiceController *)remoteViewController setManagingViewController:self];
      v4 = self->_remoteViewController;

      [(GKRemoteViewServiceController *)v4 nudge];
    }

    else
    {
      _presentingViewController = [(GKHostedViewController *)self _presentingViewController];
      self->_isRequestingRemoteViewController = 1;
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
      {
        [(GKHostedViewController *)self setModalPresentationStyle:16];
        mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
        [mEMORY[0x277D0C8C8] formSheetSize];
        [(GKHostedViewController *)self setFormSheetSize:?];

        view = [(GKHostedViewController *)self view];
      }

      else
      {
        [(GKHostedViewController *)self setModalPresentationStyle:17];
      }

      [(GKHostedViewController *)self setWantsFullScreenLayout:1];
      serviceSideViewControllerClassName = [(GKHostedViewController *)self serviceSideViewControllerClassName];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __61__GKHostedViewController_requestRemoteViewControllerIfNeeded__block_invoke;
      v16 = &unk_27966AFE0;
      selfCopy = self;
      v18 = _presentingViewController;
      v11 = _presentingViewController;
      v12 = [GKRemoteViewServiceController requestViewController:serviceSideViewControllerClassName fromServiceWithBundleIdentifier:@"com.apple.gamecenter.GameCenterUIService" connectionHandler:&v13];

      [v11 _beginDelayingPresentation:&__block_literal_global_70 cancellationHandler:{5.0, v13, v14, v15, v16, selfCopy}];
    }
  }
}

void __61__GKHostedViewController_requestRemoteViewControllerIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 994) = 0;
  if (v6)
  {
    v7 = MEMORY[0x277D0C2A0];
    v8 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __61__GKHostedViewController_requestRemoteViewControllerIfNeeded__block_invoke_cold_1(v6, v8);
    }

LABEL_6:
    [*(a1 + 40) _endDelayingPresentation];
    goto LABEL_7;
  }

  if (!v5)
  {
    v12 = MEMORY[0x277D0C2A0];
    v13 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v14 = GKOSLoggers();
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __61__GKHostedViewController_requestRemoteViewControllerIfNeeded__block_invoke_cold_2(v13);
    }

    goto LABEL_6;
  }

  [*(a1 + 32) setRemoteViewController:v5];
  [*(*(a1 + 32) + 1008) setManagingViewController:?];
  [*(a1 + 32) didGetRemoteViewController];
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    [*(*(a1 + 32) + 1008) setModalPresentationStyle:16];
    v15 = [MEMORY[0x277D0C8C8] sharedTheme];
    [v15 formSheetSize];
    [*(*(a1 + 32) + 1008) setFormSheetSize:?];

    v16 = [*(*(a1 + 32) + 1008) view];
  }

  else
  {
    [*(*(a1 + 32) + 1008) setModalPresentationStyle:17];
  }

  v17 = [*(a1 + 32) view];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [*(*(a1 + 32) + 1008) view];
  [v26 setFrame:{v19, v21, v23, v25}];

  [*(a1 + 32) addChildViewController:*(*(a1 + 32) + 1008)];
  v27 = [*(a1 + 32) view];
  v28 = [*(*(a1 + 32) + 1008) view];
  [v27 addSubview:v28];

  [*(*(a1 + 32) + 1008) setupRemoteView];
  [*(*(a1 + 32) + 1008) didMoveToParentViewController:?];
  [*(a1 + 40) _endDelayingPresentation];
  v29 = *(*(a1 + 32) + 1016);
  if (v29)
  {
    (*(v29 + 16))();
  }

LABEL_7:
}

uint64_t __61__GKHostedViewController_requestRemoteViewControllerIfNeeded__block_invoke_67(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __61__GKHostedViewController_requestRemoteViewControllerIfNeeded__block_invoke_67_cold_1();
    }
  }

  return a2 ^ 1u;
}

- (void)resetRemoteViewController
{
  [(GKRemoteViewServiceController *)self->_remoteViewController willMoveToParentViewController:0];
  [(GKHostedViewController *)self removeChildViewController:self->_remoteViewController];
  view = [(GKRemoteViewServiceController *)self->_remoteViewController view];
  [view removeFromSuperview];

  [(GKHostedViewController *)self setRemoteViewController:0];
  [(GKHostedViewController *)self setRemoteViewReadyHandler:0];
  if (![(GKHostedViewController *)self gkIsDisappearing])
  {

    [(GKHostedViewController *)self requestRemoteViewControllerIfNeeded];
  }
}

- (BOOL)shouldPresentRemoteViewController
{
  if (![(GKHostedViewController *)self isViewLoaded])
  {
    return 0;
  }

  remoteViewController = [(GKHostedViewController *)self remoteViewController];
  if (remoteViewController)
  {
    remoteViewController2 = [(GKHostedViewController *)self remoteViewController];
    didSetRemoteGame = [remoteViewController2 didSetRemoteGame];
  }

  else
  {
    didSetRemoteGame = 0;
  }

  return didSetRemoteGame;
}

- (void)presentRemoteViewControllerIfNeeded
{
  if ([(GKHostedViewController *)self shouldPresentRemoteViewController]&& ![(GKHostedViewController *)self presentingRemoteViewController])
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKHostedViewController presentRemoteViewControllerIfNeeded];
    }

    [(GKHostedViewController *)self setPresentingRemoteViewController:1];
  }
}

- (void)dismissModalViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKHostedViewController dismissModalViewControllerAnimated:];
  }

  [(GKHostedViewController *)self setPresentingRemoteViewController:0];
  v6.receiver = self;
  v6.super_class = GKHostedViewController;
  [(GKHostedViewController *)&v6 dismissModalViewControllerAnimated:animatedCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  v8 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKHostedViewController dismissViewControllerAnimated:v8 completion:completionCopy];
  }

  [(GKHostedViewController *)self setPresentingRemoteViewController:0];
  v9.receiver = self;
  v9.super_class = GKHostedViewController;
  [(GKHostedViewController *)&v9 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

void __61__GKHostedViewController_requestRemoteViewControllerIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "Error getting a remote view controller: %@", &v2, 0xCu);
}

void __61__GKHostedViewController_requestRemoteViewControllerIfNeeded__block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = 0;
  _os_log_debug_impl(&dword_24DE53000, log, OS_LOG_TYPE_DEBUG, "Didn't get a remote view controller: %@", &v1, 0xCu);
}

- (void)dismissViewControllerAnimated:(void *)a1 completion:(const void *)a2 .cold.1(void *a1, const void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = _Block_copy(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_24DE53000, v3, OS_LOG_TYPE_DEBUG, "DISMISSED (w completion handler %@)", &v5, 0xCu);
}

@end