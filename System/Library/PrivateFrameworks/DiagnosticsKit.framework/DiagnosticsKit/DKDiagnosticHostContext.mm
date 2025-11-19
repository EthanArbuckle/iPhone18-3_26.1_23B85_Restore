@interface DKDiagnosticHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (DKDiagnosticHostContext)initWithConnection:(id)a3;
- (DKExtensionHostAdapterDelegate)delegate;
- (id)_helperConnnection;
- (void)cancelWithCompletion:(id)a3;
- (void)checkShouldShowViewController:(id)a3;
- (void)remoteHostAllowSessionAccessoryDisconnectForDuration:(id)a3;
- (void)remoteHostClearAllowSessionAccessoryDisconnect;
- (void)remoteHostCompleteWithResult:(id)a3 completion:(id)a4;
- (void)remoteHostDismissViewControllerWithCompletion:(id)a3;
- (void)remoteHostDisplayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6;
- (void)remoteHostDisplayInstructions:(id)a3 style:(int)a4 imageLocators:(id)a5 title:(id)a6 subtitle:(id)a7 iconLocator:(id)a8 options:(id)a9 navigationBarActions:(id)a10 completion:(id)a11;
- (void)remoteHostGetAsset:(id)a3 completion:(id)a4;
- (void)remoteHostHideStatusBar;
- (void)remoteHostRequestPluginReloadOnFinishWithCompletion:(id)a3;
- (void)remoteHostRequestSessionAccessoryIdentifierWithCompletion:(id)a3;
- (void)remoteHostSetStatusBarStyle:(int64_t)a3;
- (void)remoteHostShowStatusBar;
- (void)remoteHostShowUI:(id)a3 completion:(id)a4;
- (void)remoteHostUnpairSessionAccessoryOnTestCompletion;
- (void)remoteHostUpdateProgress:(id)a3 forTest:(id)a4;
- (void)remoteHostUploadAssets:(id)a3 completion:(id)a4;
- (void)setNeedsUpdateResponder;
- (void)setNotAllowListedWithContactMessage:(id)a3;
- (void)startWithPayload:(id)a3 completion:(id)a4;
@end

@implementation DKDiagnosticHostContext

- (DKDiagnosticHostContext)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DKDiagnosticHostContext;
  v6 = [(DKDiagnosticHostContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, a3);
    v7->_isXPC = 1;
  }

  return v7;
}

- (id)_helperConnnection
{
  if ([(DKDiagnosticHostContext *)self isXPC]&& ([(DKDiagnosticHostContext *)self xpcConnection], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(DKDiagnosticHostContext *)self xpcConnection];
  }

  else
  {
    v4 = [(DKDiagnosticHostContext *)self _auxiliaryConnection];
  }

  return v4;
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

- (void)startWithPayload:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::startWithCompletion:", buf, 2u);
  }

  v9 = [(DKDiagnosticHostContext *)self _helperConnnection];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __55__DKDiagnosticHostContext_startWithPayload_completion___block_invoke;
  v18 = &unk_278F6C3F8;
  v19 = self;
  v10 = v7;
  v20 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:&v15];

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
    [v11 startRemoteDiagnosticWithDiagnosticParameters:v6 completion:{v10, v15, v16, v17, v18, v19}];
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

- (void)cancelWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticHostContext *)self _helperConnnection];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __48__DKDiagnosticHostContext_cancelWithCompletion___block_invoke;
  v11 = &unk_278F6C3F8;
  v12 = self;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:&v8];

  if (!v6)
  {
    v6 = &__block_literal_global_108;
  }

  if (v7)
  {
    [v7 cancelRemoteDiagnosticWithCompletion:{v6, v8, v9, v10, v11, v12}];
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

- (void)setNotAllowListedWithContactMessage:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::setNotAllowListedWithContactMessage", buf, 2u);
  }

  v6 = [(DKDiagnosticHostContext *)self _helperConnnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__DKDiagnosticHostContext_setNotAllowListedWithContactMessage___block_invoke;
  v11[3] = &unk_278F6BFA8;
  v11[4] = self;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v11];

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

  [v7 setRemoteDiagnosticNotAllowListedWithContactMessage:v4];
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

- (void)checkShouldShowViewController:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::checkShouldShowViewController", buf, 2u);
  }

  v6 = [(DKDiagnosticHostContext *)self _helperConnnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__DKDiagnosticHostContext_checkShouldShowViewController___block_invoke;
  v11[3] = &unk_278F6BFA8;
  v11[4] = self;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v11];

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

  [v7 checkShouldShowRemoteDiagnosticViewController:v4];
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

  v4 = [(DKDiagnosticHostContext *)self _helperConnnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__DKDiagnosticHostContext_setNeedsUpdateResponder__block_invoke;
  v9[3] = &unk_278F6BFA8;
  v9[4] = self;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v9];

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

- (void)remoteHostUpdateProgress:(id)a3 forTest:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(DKDiagnosticHostContext *)self delegate];
  v8 = [v7 hostServicesDelegate];
  v9 = [v8 conformsToProtocol:&unk_285B9E2A8];

  if (v9)
  {
    v10 = [(DKDiagnosticHostContext *)self delegate];
    v11 = [v10 hostServicesDelegate];

    [v11 updateProgress:v12 forTest:v6];
  }
}

- (void)remoteHostGetAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::getAsset:completion:", v14, 2u);
  }

  v9 = [(DKDiagnosticHostContext *)self delegate];
  v10 = [v9 hostServicesDelegate];
  v11 = [v10 conformsToProtocol:&unk_285B9E350];

  if (v11)
  {
    v12 = [(DKDiagnosticHostContext *)self delegate];
    v13 = [v12 hostServicesDelegate];

    [v13 getAsset:v6 completion:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)remoteHostUploadAssets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "DKDiagnosticHostContext::uploadAssets:completion:", v15, 2u);
  }

  v9 = [(DKDiagnosticHostContext *)self delegate];
  v10 = [v9 hostServicesDelegate];
  v11 = [v10 conformsToProtocol:&unk_285B9E350];

  if (v11)
  {
    v12 = [(DKDiagnosticHostContext *)self delegate];
    v13 = [v12 hostServicesDelegate];

    [v13 uploadAssets:v6 completion:v7];
  }

  else
  {
    v13 = [MEMORY[0x277CBEA60] array];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKErrorDomain" code:-1008 userInfo:0];
    v7[2](v7, v13, v14);
  }
}

- (void)remoteHostCompleteWithResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DKDiagnosticHostContext *)self delegate];
  [v8 completeWithPayload:v7 completion:v6];
}

- (void)remoteHostDismissViewControllerWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(DKDiagnosticHostContext *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DKDiagnosticHostContext *)self delegate];
    [v6 dismissViewControllerWithCompletion:v7];
  }
}

- (void)remoteHostShowUI:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(DKDiagnosticHostContext *)self delegate];
  v8 = [v7 hostServicesDelegate];
  v9 = [v8 conformsToProtocol:&unk_285B9E3D0];

  if (v9)
  {
    v10 = [(DKDiagnosticHostContext *)self delegate];
    v11 = [v10 hostServicesDelegate];

    [v11 showUI:v12 completion:v6];
  }
}

- (void)remoteHostRequestPluginReloadOnFinishWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(DKDiagnosticHostContext *)self delegate];
  v5 = [v4 hostServicesDelegate];
  v6 = [v5 conformsToProtocol:&unk_285B9E878];

  if (v6)
  {
    v7 = [(DKDiagnosticHostContext *)self delegate];
    v8 = [v7 hostServicesDelegate];

    [v8 requestPluginReloadOnFinishWithCompletion:v9];
  }
}

- (void)remoteHostRequestSessionAccessoryIdentifierWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(DKDiagnosticHostContext *)self delegate];
  v5 = [v4 hostServicesDelegate];
  v6 = [v5 conformsToProtocol:&unk_285B9E508];

  if (v6)
  {
    v7 = [(DKDiagnosticHostContext *)self delegate];
    v8 = [v7 hostServicesDelegate];

    [v8 requestSessionAccessoryIdentifierWithCompletion:v9];
  }
}

- (void)remoteHostUnpairSessionAccessoryOnTestCompletion
{
  v3 = [(DKDiagnosticHostContext *)self delegate];
  v4 = [v3 hostServicesDelegate];
  v5 = [v4 conformsToProtocol:&unk_285B9E508];

  if (v5)
  {
    v6 = [(DKDiagnosticHostContext *)self delegate];
    v7 = [v6 hostServicesDelegate];

    [v7 unpairSessionAccessoryOnTestCompletion];
  }
}

- (void)remoteHostAllowSessionAccessoryDisconnectForDuration:(id)a3
{
  v9 = a3;
  v4 = [(DKDiagnosticHostContext *)self delegate];
  v5 = [v4 hostServicesDelegate];
  v6 = [v5 conformsToProtocol:&unk_285B9E508];

  if (v6)
  {
    v7 = [(DKDiagnosticHostContext *)self delegate];
    v8 = [v7 hostServicesDelegate];

    [v8 allowSessionAccessoryDisconnectForDuration:v9];
  }
}

- (void)remoteHostClearAllowSessionAccessoryDisconnect
{
  v3 = [(DKDiagnosticHostContext *)self delegate];
  v4 = [v3 hostServicesDelegate];
  v5 = [v4 conformsToProtocol:&unk_285B9E508];

  if (v5)
  {
    v6 = [(DKDiagnosticHostContext *)self delegate];
    v7 = [v6 hostServicesDelegate];

    [v7 clearAllowSessionAccessoryDisconnect];
  }
}

- (void)remoteHostDisplayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(DKDiagnosticHostContext *)self delegate];
  v14 = [v13 hostServicesDelegate];
  v15 = [v14 conformsToProtocol:&unk_285B9E628];

  if (v15)
  {
    v16 = [(DKDiagnosticHostContext *)self delegate];
    v17 = [v16 hostServicesDelegate];

    [v17 displayAlertWithHeader:v18 message:v10 buttonStrings:v11 completion:v12];
  }
}

- (void)remoteHostDisplayInstructions:(id)a3 style:(int)a4 imageLocators:(id)a5 title:(id)a6 subtitle:(id)a7 iconLocator:(id)a8 options:(id)a9 navigationBarActions:(id)a10 completion:(id)a11
{
  v28 = a3;
  v27 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = [(DKDiagnosticHostContext *)self delegate];
  v23 = [v22 hostServicesDelegate];
  LODWORD(a5) = [v23 conformsToProtocol:&unk_285B9E628];

  if (a5)
  {
    v24 = [(DKDiagnosticHostContext *)self delegate];
    v25 = [v24 hostServicesDelegate];

    [v25 displayInstructions:v28 style:a4 imageLocators:v27 title:v16 subtitle:v17 iconLocator:v18 options:v19 navigationBarActions:v20 completion:v21];
  }
}

- (void)remoteHostShowStatusBar
{
  v3 = [(DKDiagnosticHostContext *)self delegate];
  v4 = [v3 hostServicesDelegate];
  v5 = [v4 conformsToProtocol:&unk_285B9E7E0];

  if (v5)
  {
    v6 = [(DKDiagnosticHostContext *)self delegate];
    v7 = [v6 hostServicesDelegate];

    [v7 showStatusBar];
  }
}

- (void)remoteHostHideStatusBar
{
  v3 = [(DKDiagnosticHostContext *)self delegate];
  v4 = [v3 hostServicesDelegate];
  v5 = [v4 conformsToProtocol:&unk_285B9E7E0];

  if (v5)
  {
    v6 = [(DKDiagnosticHostContext *)self delegate];
    v7 = [v6 hostServicesDelegate];

    [v7 hideStatusBar];
  }
}

- (void)remoteHostSetStatusBarStyle:(int64_t)a3
{
  v5 = [(DKDiagnosticHostContext *)self delegate];
  v6 = [v5 hostServicesDelegate];
  v7 = [v6 conformsToProtocol:&unk_285B9E7E0];

  if (v7)
  {
    v8 = [(DKDiagnosticHostContext *)self delegate];
    v9 = [v8 hostServicesDelegate];

    [v9 setStatusBarStyle:a3];
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