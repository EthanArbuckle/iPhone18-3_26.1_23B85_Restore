@interface GKExtensionRemoteViewController
+ (id)initialItemsForExtension;
+ (void)setupCallbackBlocksForExtension:(id)a3 withParentViewController:(id)a4;
+ (void)viewControllerForExtension:(id)a3 inputItems:(id)a4 completionHandler:(id)a5;
- (GKExtensionRemoteViewController)init;
- (id)extensionObjectProxy;
- (void)cancelExtension;
- (void)dealloc;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)hostApp:(id)a3 grantingAccessExtensionSandbox:(id)a4 replyWithEndpoint:(id)a5;
- (void)messageFromClient:(id)a3;
- (void)messageFromExtension:(id)a3;
- (void)sendMessageToExtension:(id)a3;
- (void)setInitialState:(id)a3 withReply:(id)a4;
- (void)tearDownExtensionWithReply:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKExtensionRemoteViewController

- (GKExtensionRemoteViewController)init
{
  v7.receiver = self;
  v7.super_class = GKExtensionRemoteViewController;
  v2 = [(GKExtensionRemoteViewController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
    {
      [(GKExtensionRemoteViewController *)v2 setModalPresentationStyle:16];
      v5 = [MEMORY[0x277D0C8C8] sharedTheme];
      [v5 formSheetSize];
      [(GKExtensionRemoteViewController *)v2 setPreferredContentSize:?];
    }

    else
    {
      [(GKExtensionRemoteViewController *)v2 setModalPresentationStyle:17];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D0C8C8] sharedTheme];
  [v3 clearResourceCache];

  v4.receiver = self;
  v4.super_class = GKExtensionRemoteViewController;
  [(GKExtensionRemoteViewController *)&v4 dealloc];
}

+ (void)setupCallbackBlocksForExtension:(id)a3 withParentViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_initWeak(&location, v6);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__GKExtensionRemoteViewController_setupCallbackBlocksForExtension_withParentViewController___block_invoke;
  v7[3] = &unk_27966C308;
  objc_copyWeak(&v8, &location);
  [v5 setRequestInterruptionBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __92__GKExtensionRemoteViewController_setupCallbackBlocksForExtension_withParentViewController___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ExtensionErrorDomain" code:-5900 userInfo:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__GKExtensionRemoteViewController_setupCallbackBlocksForExtension_withParentViewController___block_invoke_2;
  v4[3] = &unk_27966B298;
  v5 = v2;
  v3 = v2;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v6);
}

void __92__GKExtensionRemoteViewController_setupCallbackBlocksForExtension_withParentViewController___block_invoke_2(uint64_t a1)
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    __92__GKExtensionRemoteViewController_setupCallbackBlocksForExtension_withParentViewController___block_invoke_2_cold_1(a1, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained extensionDidFinishWithError:*(a1 + 32)];
  }
}

+ (void)viewControllerForExtension:(id)a3 inputItems:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_2;
    v11[3] = &unk_27966C358;
    v14 = v15;
    v12 = v7;
    v13 = v10;
    [v12 instantiateViewControllerWithInputItems:v8 connectionHandler:v11];

    _Block_object_dispose(v15, 8);
  }

  else if (v9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke;
    block[3] = &unk_27966A4A8;
    v17 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ++*(*(*(a1 + 48) + 8) + 24);
  v10 = MEMORY[0x277D0C020];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKExtensionRemoteViewController.m", 104, "+[GKExtensionRemoteViewController viewControllerForExtension:inputItems:completionHandler:]_block_invoke_2"];
  v12 = [v10 dispatchGroupWithName:v11];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_3;
  v24[3] = &unk_27966C330;
  v25 = v9;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v26 = v13;
  v30 = v14;
  v15 = v12;
  v27 = v15;
  v28 = v8;
  v29 = v7;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  [v15 perform:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_20;
  v21[3] = &unk_27966A480;
  v19 = *(a1 + 40);
  v22 = v15;
  v23 = v19;
  v20 = v15;
  [v20 notifyOnMainQueueWithBlock:v21];
}

void __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277D0C2A0];
  if (*(a1 + 32))
  {
    if (!v4)
    {
      v5 = GKOSLoggers();
    }

    v6 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_3_cold_1(a1, v6);
    }

    [*(a1 + 48) setObject:*(a1 + 32) forKeyedSubscript:@"error"];
    v3[2](v3);
  }

  else
  {
    if (!v4)
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C2A8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_3_cold_2(a1, v8);
    }

    v9 = [*(a1 + 40) _extensionContextForUUID:*(a1 + 64)];
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    [v11 setExtension:v10];
    [v11 setRequestIdentifier:*(a1 + 64)];
    [v9 setRemoteViewController:v11];
    [*(a1 + 48) setObject:v11 forKeyedSubscript:@"remoteViewController"];

    v3[2](v3);
  }
}

void __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_20(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"remoteViewController"];
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"error"];
    (*(v1 + 16))(v1, v4, v3);
  }
}

+ (id)initialItemsForExtension
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = @"StatusBarHeightKey";
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 statusBarHeight];
  v4 = [v2 numberWithDouble:?];
  v14[0] = v4;
  v13[1] = @"HostPIDKey";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  v14[1] = v5;
  v13[2] = @"currentGame";
  v6 = [MEMORY[0x277D0C048] currentGame];
  v14[2] = v6;
  v13[3] = @"localPlayer";
  v7 = [MEMORY[0x277D0C138] localPlayer];
  v14[3] = v7;
  v13[4] = @"RTLKey";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:GKShouldLayoutRTL()];
  v14[4] = v8;
  v13[5] = @"LocalizationsKey";
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 preferredLocalizations];
  v14[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = GKExtensionRemoteViewController;
  [(GKExtensionRemoteViewController *)&v5 viewDidLoad];
  v3 = [(GKExtensionRemoteViewController *)self view];
  [v3 setBackgroundColor:0];

  v4 = [(GKExtensionRemoteViewController *)self view];
  [v4 setOpaque:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D0C138] local];
  [v5 hideAccessPoint];

  v9.receiver = self;
  v9.super_class = GKExtensionRemoteViewController;
  [(_UIRemoteViewController *)&v9 viewWillAppear:v3];
  v6 = [MEMORY[0x277D0C8D0] shared];
  [v6 setIsShowingRemoteUI:1];

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 1 || *MEMORY[0x277D0C258] == 1 && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    [(UIViewController *)self _gkSaveStatusBarStyleAnimated:v3 setToStyle:[(GKExtensionRemoteViewController *)self _desiredStatusBarStyle]];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = GKExtensionRemoteViewController;
  [(_UIRemoteViewController *)&v7 viewDidDisappear:?];
  v5 = [MEMORY[0x277D0C8D0] shared];
  [v5 setIsShowingRemoteUI:0];

  [(UIViewController *)self _gkRestoreStatusBarStyle:v3];
  v6 = [MEMORY[0x277D0C138] local];
  [v6 showAccessPoint];
}

- (void)cancelExtension
{
  v4 = [(GKExtensionRemoteViewController *)self extension];
  v3 = [(GKExtensionRemoteViewController *)self requestIdentifier];
  [v4 cancelExtensionRequestWithIdentifier:v3];
}

- (void)sendMessageToExtension:(id)a3
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v4 = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  [v4 messageFromClient:v5];
}

- (void)extensionIsCanceling
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() dismissAutomaticallyAfterExtensionCompletion])
  {
    v3 = [(GKExtensionRemoteViewController *)self presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  v5 = @"MessageCommandKey";
  v6[0] = &unk_286189078;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];
}

- (void)extensionIsFinishing
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() dismissAutomaticallyAfterExtensionCompletion])
  {
    v3 = [(GKExtensionRemoteViewController *)self presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  v5 = @"MessageCommandKey";
  v6[0] = &unk_286189090;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];
}

- (id)extensionObjectProxy
{
  v3 = [(GKExtensionRemoteViewController *)self extension];
  v4 = [(GKExtensionRemoteViewController *)self requestIdentifier];
  v5 = [v3 _extensionContextForUUID:v4];

  v6 = [v5 _auxiliaryConnection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_30];

  return v7;
}

void __55__GKExtensionRemoteViewController_extensionObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    __58__GKChallengeIssueHostViewController_extensionObjectProxy__block_invoke_cold_1(v4, v2);
  }
}

- (void)messageFromClient:(id)a3
{
  v4 = a3;
  v5 = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  [v5 messageFromClient:v4];
}

- (void)setInitialState:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v11 = [a3 mutableCopy];
  v7 = MEMORY[0x277CCABB0];
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "userInterfaceIdiom")}];
  [v11 setObject:v9 forKeyedSubscript:@"HostUserInterfaceIdiom"];

  v10 = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  [v10 setInitialState:v11 withReply:v6];
}

- (void)hostApp:(id)a3 grantingAccessExtensionSandbox:(id)a4 replyWithEndpoint:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  [v11 hostApp:v10 grantingAccessExtensionSandbox:v9 replyWithEndpoint:v8];
}

- (void)tearDownExtensionWithReply:(id)a3
{
  v5 = a3;
  v4 = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  if (objc_opt_respondsToSelector())
  {
    [v4 tearDownExtensionWithReply:v5];
  }
}

- (void)messageFromExtension:(id)a3
{
  v4 = MEMORY[0x277CCAAC8];
  v5 = a3;
  v6 = GKExtensionProtocolSecureCodedClasses();
  v14 = 0;
  v7 = [v4 unarchivedObjectOfClasses:v6 fromData:v5 error:&v14];

  v8 = v14;
  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKExtensionRemoteViewController *)v8 messageFromExtension:v10];
    }
  }

  v11 = [v7 objectForKeyedSubscript:@"MessageCommandKey"];
  v12 = [v11 integerValue];

  if (v12 == 2)
  {
    [(GKExtensionRemoteViewController *)self extensionIsFinishing];
  }

  else if (v12 == 1)
  {
    v13 = [MEMORY[0x277D0C138] localPlayer];
    [v13 reportAuthenticationLoginCanceled];

    [(GKExtensionRemoteViewController *)self extensionIsCanceling];
  }
}

void __92__GKExtensionRemoteViewController_setupCallbackBlocksForExtension_withParentViewController___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Extension request interrupted with error: %@", &v3, 0xCu);
}

void __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(*(*(a1 + 72) + 8) + 24);
  v4 = a2;
  v5 = [v2 numberWithInteger:v3];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_24DE53000, v4, OS_LOG_TYPE_ERROR, "Error instantiating remote view controller for extension: %@, connectionHandler call count: %@, error: %@", v6, 0x20u);
}

void __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_3_cold_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(*(*(a1 + 72) + 8) + 24);
  v4 = a2;
  v5 = [v2 numberWithInteger:v3];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_24DE53000, v4, OS_LOG_TYPE_DEBUG, "Received _UIRemoteViewController for Game Center extension: %@, connectionHandler call count: %@, remoteViewController: %@", v6, 0x20u);
}

- (void)messageFromExtension:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "error while decoding messageFromExtension archive in UIRemoteViewController:%@", &v2, 0xCu);
}

@end