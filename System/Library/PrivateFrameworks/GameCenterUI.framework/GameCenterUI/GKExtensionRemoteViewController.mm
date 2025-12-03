@interface GKExtensionRemoteViewController
+ (id)initialItemsForExtension;
+ (void)setupCallbackBlocksForExtension:(id)extension withParentViewController:(id)controller;
+ (void)viewControllerForExtension:(id)extension inputItems:(id)items completionHandler:(id)handler;
- (GKExtensionRemoteViewController)init;
- (id)extensionObjectProxy;
- (void)cancelExtension;
- (void)dealloc;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)hostApp:(id)app grantingAccessExtensionSandbox:(id)sandbox replyWithEndpoint:(id)endpoint;
- (void)messageFromClient:(id)client;
- (void)messageFromExtension:(id)extension;
- (void)sendMessageToExtension:(id)extension;
- (void)setInitialState:(id)state withReply:(id)reply;
- (void)tearDownExtensionWithReply:(id)reply;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKExtensionRemoteViewController

- (GKExtensionRemoteViewController)init
{
  v7.receiver = self;
  v7.super_class = GKExtensionRemoteViewController;
  v2 = [(GKExtensionRemoteViewController *)&v7 init];
  if (v2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
    {
      [(GKExtensionRemoteViewController *)v2 setModalPresentationStyle:16];
      mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
      [mEMORY[0x277D0C8C8] formSheetSize];
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
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  [mEMORY[0x277D0C8C8] clearResourceCache];

  v4.receiver = self;
  v4.super_class = GKExtensionRemoteViewController;
  [(GKExtensionRemoteViewController *)&v4 dealloc];
}

+ (void)setupCallbackBlocksForExtension:(id)extension withParentViewController:(id)controller
{
  extensionCopy = extension;
  controllerCopy = controller;
  objc_initWeak(&location, controllerCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__GKExtensionRemoteViewController_setupCallbackBlocksForExtension_withParentViewController___block_invoke;
  v7[3] = &unk_27966C308;
  objc_copyWeak(&v8, &location);
  [extensionCopy setRequestInterruptionBlock:v7];
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

+ (void)viewControllerForExtension:(id)extension inputItems:(id)items completionHandler:(id)handler
{
  extensionCopy = extension;
  itemsCopy = items;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (extensionCopy)
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
    v12 = extensionCopy;
    v13 = v10;
    [v12 instantiateViewControllerWithInputItems:itemsCopy connectionHandler:v11];

    _Block_object_dispose(v15, 8);
  }

  else if (handlerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__GKExtensionRemoteViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke;
    block[3] = &unk_27966A4A8;
    v17 = handlerCopy;
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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] statusBarHeight];
  v4 = [v2 numberWithDouble:?];
  v14[0] = v4;
  v13[1] = @"HostPIDKey";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  v14[1] = v5;
  v13[2] = @"currentGame";
  currentGame = [MEMORY[0x277D0C048] currentGame];
  v14[2] = currentGame;
  v13[3] = @"localPlayer";
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  v14[3] = localPlayer;
  v13[4] = @"RTLKey";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:GKShouldLayoutRTL()];
  v14[4] = v8;
  v13[5] = @"LocalizationsKey";
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  v14[5] = preferredLocalizations;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = GKExtensionRemoteViewController;
  [(GKExtensionRemoteViewController *)&v5 viewDidLoad];
  view = [(GKExtensionRemoteViewController *)self view];
  [view setBackgroundColor:0];

  view2 = [(GKExtensionRemoteViewController *)self view];
  [view2 setOpaque:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  local = [MEMORY[0x277D0C138] local];
  [local hideAccessPoint];

  v9.receiver = self;
  v9.super_class = GKExtensionRemoteViewController;
  [(_UIRemoteViewController *)&v9 viewWillAppear:appearCopy];
  mEMORY[0x277D0C8D0] = [MEMORY[0x277D0C8D0] shared];
  [mEMORY[0x277D0C8D0] setIsShowingRemoteUI:1];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || *MEMORY[0x277D0C258] == 1 && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    [(UIViewController *)self _gkSaveStatusBarStyleAnimated:appearCopy setToStyle:[(GKExtensionRemoteViewController *)self _desiredStatusBarStyle]];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = GKExtensionRemoteViewController;
  [(_UIRemoteViewController *)&v7 viewDidDisappear:?];
  mEMORY[0x277D0C8D0] = [MEMORY[0x277D0C8D0] shared];
  [mEMORY[0x277D0C8D0] setIsShowingRemoteUI:0];

  [(UIViewController *)self _gkRestoreStatusBarStyle:disappearCopy];
  local = [MEMORY[0x277D0C138] local];
  [local showAccessPoint];
}

- (void)cancelExtension
{
  extension = [(GKExtensionRemoteViewController *)self extension];
  requestIdentifier = [(GKExtensionRemoteViewController *)self requestIdentifier];
  [extension cancelExtensionRequestWithIdentifier:requestIdentifier];
}

- (void)sendMessageToExtension:(id)extension
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:extension requiringSecureCoding:1 error:0];
  extensionObjectProxy = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  [extensionObjectProxy messageFromClient:v5];
}

- (void)extensionIsCanceling
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() dismissAutomaticallyAfterExtensionCompletion])
  {
    presentingViewController = [(GKExtensionRemoteViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
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
    presentingViewController = [(GKExtensionRemoteViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  v5 = @"MessageCommandKey";
  v6[0] = &unk_286189090;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];
}

- (id)extensionObjectProxy
{
  extension = [(GKExtensionRemoteViewController *)self extension];
  requestIdentifier = [(GKExtensionRemoteViewController *)self requestIdentifier];
  v5 = [extension _extensionContextForUUID:requestIdentifier];

  _auxiliaryConnection = [v5 _auxiliaryConnection];
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_30];

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

- (void)messageFromClient:(id)client
{
  clientCopy = client;
  extensionObjectProxy = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  [extensionObjectProxy messageFromClient:clientCopy];
}

- (void)setInitialState:(id)state withReply:(id)reply
{
  replyCopy = reply;
  v11 = [state mutableCopy];
  v7 = MEMORY[0x277CCABB0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v9 = [v7 numberWithInteger:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];
  [v11 setObject:v9 forKeyedSubscript:@"HostUserInterfaceIdiom"];

  extensionObjectProxy = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  [extensionObjectProxy setInitialState:v11 withReply:replyCopy];
}

- (void)hostApp:(id)app grantingAccessExtensionSandbox:(id)sandbox replyWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  sandboxCopy = sandbox;
  appCopy = app;
  extensionObjectProxy = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  [extensionObjectProxy hostApp:appCopy grantingAccessExtensionSandbox:sandboxCopy replyWithEndpoint:endpointCopy];
}

- (void)tearDownExtensionWithReply:(id)reply
{
  replyCopy = reply;
  extensionObjectProxy = [(GKExtensionRemoteViewController *)self extensionObjectProxy];
  if (objc_opt_respondsToSelector())
  {
    [extensionObjectProxy tearDownExtensionWithReply:replyCopy];
  }
}

- (void)messageFromExtension:(id)extension
{
  v4 = MEMORY[0x277CCAAC8];
  extensionCopy = extension;
  v6 = GKExtensionProtocolSecureCodedClasses();
  v14 = 0;
  v7 = [v4 unarchivedObjectOfClasses:v6 fromData:extensionCopy error:&v14];

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
  integerValue = [v11 integerValue];

  if (integerValue == 2)
  {
    [(GKExtensionRemoteViewController *)self extensionIsFinishing];
  }

  else if (integerValue == 1)
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    [localPlayer reportAuthenticationLoginCanceled];

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