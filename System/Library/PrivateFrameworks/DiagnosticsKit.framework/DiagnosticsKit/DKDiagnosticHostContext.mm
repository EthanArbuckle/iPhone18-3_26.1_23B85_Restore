@interface DKDiagnosticHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (DKDiagnosticHostContext)initWithConnection:(id)connection;
- (DKExtensionHostAdapterDelegate)delegate;
- (id)_helperConnnection;
- (void)cancelWithCompletion:(id)completion;
- (void)checkShouldShowViewController:(id)controller;
- (void)remoteHostAllowSessionAccessoryDisconnectForDuration:(id)duration;
- (void)remoteHostClearAllowSessionAccessoryDisconnect;
- (void)remoteHostCompleteWithResult:(id)result completion:(id)completion;
- (void)remoteHostDismissViewControllerWithCompletion:(id)completion;
- (void)remoteHostDisplayAlertWithHeader:(id)header message:(id)message buttonStrings:(id)strings completion:(id)completion;
- (void)remoteHostDisplayInstructions:(id)instructions style:(int)style imageLocators:(id)locators title:(id)title subtitle:(id)subtitle iconLocator:(id)locator options:(id)options navigationBarActions:(id)self0 completion:(id)self1;
- (void)remoteHostGetAsset:(id)asset completion:(id)completion;
- (void)remoteHostHideStatusBar;
- (void)remoteHostRequestPluginReloadOnFinishWithCompletion:(id)completion;
- (void)remoteHostRequestSessionAccessoryIdentifierWithCompletion:(id)completion;
- (void)remoteHostSetStatusBarStyle:(int64_t)style;
- (void)remoteHostShowStatusBar;
- (void)remoteHostShowUI:(id)i completion:(id)completion;
- (void)remoteHostUnpairSessionAccessoryOnTestCompletion;
- (void)remoteHostUpdateProgress:(id)progress forTest:(id)test;
- (void)remoteHostUploadAssets:(id)assets completion:(id)completion;
- (void)setNeedsUpdateResponder;
- (void)setNotAllowListedWithContactMessage:(id)message;
- (void)startWithPayload:(id)payload completion:(id)completion;
@end

@implementation DKDiagnosticHostContext

- (DKDiagnosticHostContext)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = DKDiagnosticHostContext;
  v6 = [(DKDiagnosticHostContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, connection);
    v7->_isXPC = 1;
  }

  return v7;
}

- (id)_helperConnnection
{
  if ([(DKDiagnosticHostContext *)self isXPC]&& ([(DKDiagnosticHostContext *)self xpcConnection], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    xpcConnection = [(DKDiagnosticHostContext *)self xpcConnection];
  }

  else
  {
    xpcConnection = [(DKDiagnosticHostContext *)self _auxiliaryConnection];
  }

  return xpcConnection;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_2 != -1)
  {
    +[DKDiagnosticHostContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface_2;

  return v3;
}

void __60__DKDiagnosticHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9DDD0];
  v1 = _extensionAuxiliaryVendorProtocol_interface_2;
  _extensionAuxiliaryVendorProtocol_interface_2 = v0;

  v2 = _extensionAuxiliaryVendorProtocol_interface_2;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_startRemoteDiagnosticWithDiagnosticParameters_completion_ argumentIndex:0 ofReply:0];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_2 != -1)
  {
    +[DKDiagnosticHostContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface_2;

  return v3;
}

void __58__DKDiagnosticHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9E228];
  v1 = _extensionAuxiliaryHostProtocol_interface_2;
  _extensionAuxiliaryHostProtocol_interface_2 = v0;

  v2 = _extensionAuxiliaryHostProtocol_interface_2;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_remoteHostCompleteWithResult_completion_ argumentIndex:0 ofReply:0];
}

- (void)startWithPayload:(id)payload completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  completionCopy = completion;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::startWithCompletion:", buf, 2u);
  }

  _helperConnnection = [(DKDiagnosticHostContext *)self _helperConnnection];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __55__DKDiagnosticHostContext_startWithPayload_completion___block_invoke;
  v18 = &unk_278F6C3F8;
  selfCopy = self;
  v10 = completionCopy;
  v20 = v10;
  v11 = [_helperConnnection remoteObjectProxyWithErrorHandler:&v15];

  v12 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x24C1E6340](v10);
    *buf = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_248B9D000, v12, OS_LOG_TYPE_DEFAULT, "Got ROP: %@, completion: %@", buf, 0x16u);
  }

  if (!v10)
  {
    v10 = &__block_literal_global_105;
  }

  if (v11)
  {
    [v11 startRemoteDiagnosticWithDiagnosticParameters:payloadCopy completion:{v10, v15, v16, v17, v18, selfCopy}];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__DKDiagnosticHostContext_startWithPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__DKDiagnosticHostContext_startWithPayload_completion___block_invoke_cold_1();
  }

  if (([*(a1 + 32) isXPC] & 1) == 0)
  {
    [*(a1 + 32) cancelRequestWithError:v3];
  }

  (*(*(a1 + 40) + 16))();
  [DKAnalytics sendAnalyticsWithEvent:2 error:v3];
}

- (void)cancelWithCompletion:(id)completion
{
  completionCopy = completion;
  _helperConnnection = [(DKDiagnosticHostContext *)self _helperConnnection];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __48__DKDiagnosticHostContext_cancelWithCompletion___block_invoke;
  v11 = &unk_278F6C3F8;
  selfCopy = self;
  v6 = completionCopy;
  v13 = v6;
  v7 = [_helperConnnection remoteObjectProxyWithErrorHandler:&v8];

  if (!v6)
  {
    v6 = &__block_literal_global_108;
  }

  if (v7)
  {
    [v7 cancelRemoteDiagnosticWithCompletion:{v6, v8, v9, v10, v11, selfCopy}];
  }

  else
  {
    v6[2](v6);
  }
}

void __48__DKDiagnosticHostContext_cancelWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__DKDiagnosticHostContext_cancelWithCompletion___block_invoke_cold_1();
  }

  if (([*(a1 + 32) isXPC] & 1) == 0)
  {
    [*(a1 + 32) cancelRequestWithError:v3];
  }

  (*(*(a1 + 40) + 16))();
  [DKAnalytics sendAnalyticsWithEvent:2 error:v3];
}

- (void)setNotAllowListedWithContactMessage:(id)message
{
  v14 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::setNotAllowListedWithContactMessage", buf, 2u);
  }

  _helperConnnection = [(DKDiagnosticHostContext *)self _helperConnnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__DKDiagnosticHostContext_setNotAllowListedWithContactMessage___block_invoke;
  v11[3] = &unk_278F6BFA8;
  v11[4] = self;
  v7 = [_helperConnnection remoteObjectProxyWithErrorHandler:v11];

  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "Got ROP: %@", buf, 0xCu);
  }

  v9 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v9, OS_LOG_TYPE_DEFAULT, "About to call setRemoteDiagnosticNotAllowListed", buf, 2u);
  }

  [v7 setRemoteDiagnosticNotAllowListedWithContactMessage:messageCopy];
  v10 = *MEMORY[0x277D85DE8];
}

void __63__DKDiagnosticHostContext_setNotAllowListedWithContactMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__DKDiagnosticHostContext_setNotAllowListedWithContactMessage___block_invoke_cold_1();
  }

  if (([*(a1 + 32) isXPC] & 1) == 0)
  {
    [*(a1 + 32) cancelRequestWithError:v3];
  }

  [DKAnalytics sendAnalyticsWithEvent:2 error:v3];
}

- (void)checkShouldShowViewController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::checkShouldShowViewController", buf, 2u);
  }

  _helperConnnection = [(DKDiagnosticHostContext *)self _helperConnnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__DKDiagnosticHostContext_checkShouldShowViewController___block_invoke;
  v11[3] = &unk_278F6BFA8;
  v11[4] = self;
  v7 = [_helperConnnection remoteObjectProxyWithErrorHandler:v11];

  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "Got ROP: %@", buf, 0xCu);
  }

  v9 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v9, OS_LOG_TYPE_DEFAULT, "About to call checkShouldShowViewController", buf, 2u);
  }

  [v7 checkShouldShowRemoteDiagnosticViewController:controllerCopy];
  v10 = *MEMORY[0x277D85DE8];
}

void __57__DKDiagnosticHostContext_checkShouldShowViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__DKDiagnosticHostContext_checkShouldShowViewController___block_invoke_cold_1();
  }

  if (([*(a1 + 32) isXPC] & 1) == 0)
  {
    [*(a1 + 32) cancelRequestWithError:v3];
  }

  [DKAnalytics sendAnalyticsWithEvent:2 error:v3];
}

- (void)setNeedsUpdateResponder
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::setNeedsUpdateResponder", buf, 2u);
  }

  _helperConnnection = [(DKDiagnosticHostContext *)self _helperConnnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__DKDiagnosticHostContext_setNeedsUpdateResponder__block_invoke;
  v9[3] = &unk_278F6BFA8;
  v9[4] = self;
  v5 = [_helperConnnection remoteObjectProxyWithErrorHandler:v9];

  v6 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_248B9D000, v6, OS_LOG_TYPE_DEFAULT, "Got ROP: %@", buf, 0xCu);
  }

  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "About to call setNeedsUpdateResponder", buf, 2u);
  }

  [v5 setNeedsUpdateResponder];
  v8 = *MEMORY[0x277D85DE8];
}

void __50__DKDiagnosticHostContext_setNeedsUpdateResponder__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__DKDiagnosticHostContext_setNeedsUpdateResponder__block_invoke_cold_1();
  }

  if (([*(a1 + 32) isXPC] & 1) == 0)
  {
    [*(a1 + 32) cancelRequestWithError:v3];
  }

  [DKAnalytics sendAnalyticsWithEvent:2 error:v3];
}

- (void)remoteHostUpdateProgress:(id)progress forTest:(id)test
{
  progressCopy = progress;
  testCopy = test;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v9 = [hostServicesDelegate conformsToProtocol:&unk_285B9E2A8];

  if (v9)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 updateProgress:progressCopy forTest:testCopy];
  }
}

- (void)remoteHostGetAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::getAsset:completion:", v14, 2u);
  }

  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v11 = [hostServicesDelegate conformsToProtocol:&unk_285B9E350];

  if (v11)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 getAsset:assetCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)remoteHostUploadAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::uploadAssets:completion:", v15, 2u);
  }

  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v11 = [hostServicesDelegate conformsToProtocol:&unk_285B9E350];

  if (v11)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 uploadAssets:assetsCopy completion:completionCopy];
  }

  else
  {
    hostServicesDelegate2 = [MEMORY[0x277CBEA60] array];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKErrorDomain" code:-1008 userInfo:0];
    completionCopy[2](completionCopy, hostServicesDelegate2, v14);
  }
}

- (void)remoteHostCompleteWithResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  resultCopy = result;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  [delegate completeWithPayload:resultCopy completion:completionCopy];
}

- (void)remoteHostDismissViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    [delegate2 dismissViewControllerWithCompletion:completionCopy];
  }
}

- (void)remoteHostShowUI:(id)i completion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v9 = [hostServicesDelegate conformsToProtocol:&unk_285B9E3D0];

  if (v9)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 showUI:iCopy completion:completionCopy];
  }
}

- (void)remoteHostRequestPluginReloadOnFinishWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v6 = [hostServicesDelegate conformsToProtocol:&unk_285B9E878];

  if (v6)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 requestPluginReloadOnFinishWithCompletion:completionCopy];
  }
}

- (void)remoteHostRequestSessionAccessoryIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v6 = [hostServicesDelegate conformsToProtocol:&unk_285B9E508];

  if (v6)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 requestSessionAccessoryIdentifierWithCompletion:completionCopy];
  }
}

- (void)remoteHostUnpairSessionAccessoryOnTestCompletion
{
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v5 = [hostServicesDelegate conformsToProtocol:&unk_285B9E508];

  if (v5)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 unpairSessionAccessoryOnTestCompletion];
  }
}

- (void)remoteHostAllowSessionAccessoryDisconnectForDuration:(id)duration
{
  durationCopy = duration;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v6 = [hostServicesDelegate conformsToProtocol:&unk_285B9E508];

  if (v6)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 allowSessionAccessoryDisconnectForDuration:durationCopy];
  }
}

- (void)remoteHostClearAllowSessionAccessoryDisconnect
{
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v5 = [hostServicesDelegate conformsToProtocol:&unk_285B9E508];

  if (v5)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 clearAllowSessionAccessoryDisconnect];
  }
}

- (void)remoteHostDisplayAlertWithHeader:(id)header message:(id)message buttonStrings:(id)strings completion:(id)completion
{
  headerCopy = header;
  messageCopy = message;
  stringsCopy = strings;
  completionCopy = completion;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v15 = [hostServicesDelegate conformsToProtocol:&unk_285B9E628];

  if (v15)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 displayAlertWithHeader:headerCopy message:messageCopy buttonStrings:stringsCopy completion:completionCopy];
  }
}

- (void)remoteHostDisplayInstructions:(id)instructions style:(int)style imageLocators:(id)locators title:(id)title subtitle:(id)subtitle iconLocator:(id)locator options:(id)options navigationBarActions:(id)self0 completion:(id)self1
{
  instructionsCopy = instructions;
  locatorsCopy = locators;
  titleCopy = title;
  subtitleCopy = subtitle;
  locatorCopy = locator;
  optionsCopy = options;
  actionsCopy = actions;
  completionCopy = completion;
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  LODWORD(locators) = [hostServicesDelegate conformsToProtocol:&unk_285B9E628];

  if (locators)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 displayInstructions:instructionsCopy style:style imageLocators:locatorsCopy title:titleCopy subtitle:subtitleCopy iconLocator:locatorCopy options:optionsCopy navigationBarActions:actionsCopy completion:completionCopy];
  }
}

- (void)remoteHostShowStatusBar
{
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v5 = [hostServicesDelegate conformsToProtocol:&unk_285B9E7E0];

  if (v5)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 showStatusBar];
  }
}

- (void)remoteHostHideStatusBar
{
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v5 = [hostServicesDelegate conformsToProtocol:&unk_285B9E7E0];

  if (v5)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 hideStatusBar];
  }
}

- (void)remoteHostSetStatusBarStyle:(int64_t)style
{
  delegate = [(DKDiagnosticHostContext *)self delegate];
  hostServicesDelegate = [delegate hostServicesDelegate];
  v7 = [hostServicesDelegate conformsToProtocol:&unk_285B9E7E0];

  if (v7)
  {
    delegate2 = [(DKDiagnosticHostContext *)self delegate];
    hostServicesDelegate2 = [delegate2 hostServicesDelegate];

    [hostServicesDelegate2 setStatusBarStyle:style];
  }
}

- (DKExtensionHostAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__DKDiagnosticHostContext_startWithPayload_completion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_248B9D000, v0, v1, "%s Failed to retrieve remote object proxy: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__DKDiagnosticHostContext_cancelWithCompletion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_248B9D000, v0, v1, "%s Failed to retrieve remote object proxy: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__DKDiagnosticHostContext_setNotAllowListedWithContactMessage___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_248B9D000, v0, v1, "%s Failed to retrieve remote object proxy: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__DKDiagnosticHostContext_checkShouldShowViewController___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_248B9D000, v0, v1, "%s Failed to retrieve remote object proxy: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__DKDiagnosticHostContext_setNeedsUpdateResponder__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_248B9D000, v0, v1, "%s Failed to retrieve remote object proxy: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end