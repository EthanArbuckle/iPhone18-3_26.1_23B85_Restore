@interface DKDiagnosticContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (DKDiagnosticContext)initWithConnection:(id)a3;
- (id)_extensionAttributes;
- (id)_getRemoteProxyAndSetUpHandlers;
- (id)_helperConnnection;
- (id)_helperPrincipalObject;
- (id)_testName;
- (id)testID;
- (void)allowSessionAccessoryDisconnectForDuration:(id)a3;
- (void)cancelRemoteDiagnosticWithCompletion:(id)a3;
- (void)checkShouldShowRemoteDiagnosticViewController:(id)a3;
- (void)clearAllowSessionAccessoryDisconnect;
- (void)completeWithDiagnosticResult:(id)a3 completion:(id)a4;
- (void)dismissRemoteDiagnosticViewControllerWithCompletion:(id)a3;
- (void)displayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6;
- (void)getAsset:(id)a3 completion:(id)a4;
- (void)hideStatusBar;
- (void)requestPluginReloadOnFinishWithCompletion:(id)a3;
- (void)requestSessionAccessoryIdentifierWithCompletion:(id)a3;
- (void)setNeedsUpdateResponder;
- (void)setRemoteDiagnosticNotAllowListedWithContactMessage:(id)a3;
- (void)setStatusBarStyle:(int64_t)a3;
- (void)showStatusBar;
- (void)showUI:(id)a3 completion:(id)a4;
- (void)startRemoteDiagnosticWithDiagnosticParameters:(id)a3 completion:(id)a4;
- (void)unpairSessionAccessoryOnTestCompletion;
- (void)updateProgress:(id)a3 forTest:(id)a4;
- (void)uploadAssets:(id)a3 completion:(id)a4;
@end

@implementation DKDiagnosticContext

- (DKDiagnosticContext)initWithConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = DKDiagnosticContext;
  v6 = [(DKDiagnosticContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, a3);
    v7->_isXPC = 1;
    xpcPrincipalObject = v7->_xpcPrincipalObject;
    v7->_xpcPrincipalObject = 0;

    v7->_isPresentingView = 0;
  }

  return v7;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = [(DKDiagnosticContext *)self _helperConnnection];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (id)_helperConnnection
{
  if ([(DKDiagnosticContext *)self isXPC]&& ([(DKDiagnosticContext *)self xpcConnection], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(DKDiagnosticContext *)self xpcConnection];
  }

  else
  {
    v4 = [(DKDiagnosticContext *)self _auxiliaryConnection];
  }

  return v4;
}

- (id)_helperPrincipalObject
{
  if ([(DKDiagnosticContext *)self isXPC]&& ([(DKDiagnosticContext *)self xpcPrincipalObject], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(DKDiagnosticContext *)self xpcPrincipalObject];
  }

  else
  {
    v4 = [(DKDiagnosticContext *)self _principalObject];
  }

  return v4;
}

- (id)testID
{
  v2 = [(DKDiagnosticContext *)self _extensionAttributes];
  v3 = [v2 objectForKeyedSubscript:@"DKDiagnosticIdentifier"];

  return v3;
}

- (id)_testName
{
  v2 = [(DKDiagnosticContext *)self _extensionAttributes];
  v3 = [v2 objectForKeyedSubscript:@"DKDiagnosticName"];

  return v3;
}

- (id)_extensionAttributes
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"NSExtension"];

  v4 = [v3 objectForKeyedSubscript:@"NSExtensionAttributes"];

  return v4;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_1 != -1)
  {
    +[DKDiagnosticContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface_1;

  return v3;
}

void __56__DKDiagnosticContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9DDD0];
  v1 = _extensionAuxiliaryVendorProtocol_interface_1;
  _extensionAuxiliaryVendorProtocol_interface_1 = v0;

  v2 = _extensionAuxiliaryVendorProtocol_interface_1;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_startRemoteDiagnosticWithDiagnosticParameters_completion_ argumentIndex:0 ofReply:0];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_1 != -1)
  {
    +[DKDiagnosticContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface_1;

  return v3;
}

void __54__DKDiagnosticContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9E228];
  v1 = _extensionAuxiliaryHostProtocol_interface_1;
  _extensionAuxiliaryHostProtocol_interface_1 = v0;

  v2 = _extensionAuxiliaryHostProtocol_interface_1;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_remoteHostCompleteWithResult_completion_ argumentIndex:0 ofReply:0];
}

- (void)updateProgress:(id)a3 forTest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v8 remoteHostUpdateProgress:v7 forTest:v6];
}

- (void)getAsset:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[DKDiagnosticContext getAsset:completion:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", &v11, 0x16u);
  }

  v9 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v9 remoteHostGetAsset:v6 completion:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)uploadAssets:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[DKDiagnosticContext uploadAssets:completion:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", &v11, 0x16u);
  }

  v9 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v9 remoteHostUploadAssets:v6 completion:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)showUI:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[DKDiagnosticContext showUI:completion:]";
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v9 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v9 remoteHostShowUI:v7 completion:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestSessionAccessoryIdentifierWithCompletion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DKDiagnosticContext requestSessionAccessoryIdentifierWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v6 remoteHostRequestSessionAccessoryIdentifierWithCompletion:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unpairSessionAccessoryOnTestCompletion
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticContext unpairSessionAccessoryOnTestCompletion]";
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v4 remoteHostUnpairSessionAccessoryOnTestCompletion];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DKDiagnosticContext allowSessionAccessoryDisconnectForDuration:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v6 remoteHostAllowSessionAccessoryDisconnectForDuration:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearAllowSessionAccessoryDisconnect
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticContext clearAllowSessionAccessoryDisconnect]";
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v4 remoteHostClearAllowSessionAccessoryDisconnect];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestPluginReloadOnFinishWithCompletion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DKDiagnosticContext requestPluginReloadOnFinishWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v6 remoteHostRequestPluginReloadOnFinishWithCompletion:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)displayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[DKDiagnosticContext displayAlertWithHeader:message:buttonStrings:completion:]";
    _os_log_impl(&dword_248B9D000, v14, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([(DKDiagnosticContext *)self isPresentingView])
  {
    v15 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248B9D000, v15, OS_LOG_TYPE_DEFAULT, "Not calling displayAlertWithHeader: because DK is currently presenting a view controller", buf, 2u);
    }

    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v20 = *MEMORY[0x277CCA450];
    v21 = @"This DiagnosticsKit extension is already presenting a view controller";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [v16 initWithDomain:@"com.apple.DiagnosticsKit" code:-1 userInfo:v17];

    v13[2](v13, &unk_285B928A0, v18);
  }

  else
  {
    v18 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
    [v18 remoteHostDisplayAlertWithHeader:v10 message:v11 buttonStrings:v12 completion:v13];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)showStatusBar
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticContext showStatusBar]";
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v4 remoteHostShowStatusBar];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)hideStatusBar
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticContext hideStatusBar]";
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v4 remoteHostHideStatusBar];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setStatusBarStyle:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DKDiagnosticContext setStatusBarStyle:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v6 remoteHostSetStatusBarStyle:a3];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startRemoteDiagnosticWithDiagnosticParameters:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[DKDiagnosticContext startRemoteDiagnosticWithDiagnosticParameters:completion:]";
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = [(DKDiagnosticContext *)self _helperPrincipalObject];
  v10 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v9;
    _os_log_impl(&dword_248B9D000, v10, OS_LOG_TYPE_DEFAULT, "Diagnostic: %@", buf, 0xCu);
  }

  v11 = [(DKDiagnosticContext *)self isXPC];
  v12 = MEMORY[0x277D85CD0];
  if (v11)
  {
    v13 = dispatch_get_global_queue(21, 0);
  }

  else
  {
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__DKDiagnosticContext_startRemoteDiagnosticWithDiagnosticParameters_completion___block_invoke;
  v20[3] = &unk_278F6C0E0;
  v21 = v9;
  v22 = v6;
  v23 = self;
  v24 = v7;
  v15 = v7;
  v16 = v6;
  v17 = v9;
  dispatch_async(v13, v20);
  if (v11)
  {
    v18 = v13;
  }

  else
  {
    v18 = v12;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __80__DKDiagnosticContext_startRemoteDiagnosticWithDiagnosticParameters_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) predicates];
  v4 = [*(a1 + 40) specifications];
  v5 = [*(a1 + 40) parameters];
  v6 = [DKUtilities inputsForDiagnostic:v2 predicates:v3 specifications:v4 parameters:v5];

  if ([*(a1 + 32) isFinished])
  {
    goto LABEL_5;
  }

  [*(a1 + 32) setSetup:1];
  v7 = [*(a1 + 32) result];
  [v7 setStatusCode:&unk_285B928B8];

  v8 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) setupWithInputs:v6 responder:*(a1 + 48)];
  }

  if ([*(a1 + 32) isFinished])
  {
LABEL_5:
    v9 = 0;
  }

  else if ([*(a1 + 48) isXPC])
  {
    v11 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__DKDiagnosticContext_startRemoteDiagnosticWithDiagnosticParameters_completion___block_invoke_131;
    block[3] = &unk_278F6C050;
    v13 = *(a1 + 32);
    dispatch_async(v11, block);

    v9 = 1;
  }

  else
  {
    [*(a1 + 32) start];
    v9 = [*(a1 + 32) isFinished] ^ 1;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v9);
  }
}

- (void)cancelRemoteDiagnosticWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[DKDiagnosticContext cancelRemoteDiagnosticWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(DKDiagnosticContext *)self _helperPrincipalObject];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 stringByAppendingString:@".cancelQueue"];

  v10 = dispatch_queue_create([v9 UTF8String], 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__DKDiagnosticContext_cancelRemoteDiagnosticWithCompletion___block_invoke;
  v14[3] = &unk_278F6C108;
  v15 = v6;
  v16 = v4;
  v11 = v4;
  v12 = v6;
  dispatch_async(v10, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __60__DKDiagnosticContext_cancelRemoteDiagnosticWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  [v2 setStatusCode:&unk_285B928D0];

  [*(a1 + 32) setCancelled:1];
  v3 = [*(a1 + 32) progress];
  [v3 cancel];

  v4 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) cancel];
  }

  [*(a1 + 32) setFinished:1];
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)completeWithDiagnosticResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__DKDiagnosticContext_completeWithDiagnosticResult_completion___block_invoke;
  v10[3] = &unk_278F6C130;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 remoteHostCompleteWithResult:v7 completion:v10];
}

uint64_t __63__DKDiagnosticContext_completeWithDiagnosticResult_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = [*(a1 + 32) isXPC];
  if (result)
  {
    v4 = [*(a1 + 32) xpcConnection];
    [v4 invalidate];

    [*(a1 + 32) setXpcConnection:0];
    v5 = *(a1 + 32);

    return [v5 setXpcPrincipalObject:0];
  }

  return result;
}

- (void)checkShouldShowRemoteDiagnosticViewController:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticContext *)self _helperPrincipalObject];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v7 stringByAppendingString:@".checkShowViewControllerQueue"];

  v9 = dispatch_queue_create([v8 UTF8String], 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__DKDiagnosticContext_checkShouldShowRemoteDiagnosticViewController___block_invoke;
  v12[3] = &unk_278F6C108;
  v13 = v5;
  v14 = v4;
  v10 = v4;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t __69__DKDiagnosticContext_checkShouldShowRemoteDiagnosticViewController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 shouldShowViewControllerInHostApp:v4];
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v6 = *(result + 16);

      return v6();
    }
  }

  return result;
}

- (void)setNeedsUpdateResponder
{
  v2 = [(DKDiagnosticContext *)self _helperPrincipalObject];
  if (objc_opt_respondsToSelector())
  {
    [v2 setNeedsUpdateResponder];
  }
}

- (void)dismissRemoteDiagnosticViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticContext *)self _getRemoteProxyAndSetUpHandlers];
  [v5 remoteHostDismissViewControllerWithCompletion:v4];
}

- (void)setRemoteDiagnosticNotAllowListedWithContactMessage:(id)a3
{
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(DKDiagnosticContext *)self setRemoteDiagnosticNotAllowListedWithContactMessage:v4, v5];
  }
}

- (id)_getRemoteProxyAndSetUpHandlers
{
  v3 = [(DKDiagnosticContext *)self _helperConnnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_147];

  v5 = [(DKDiagnosticContext *)self _helperConnnection];
  [v5 setInterruptionHandler:&__block_literal_global_151];

  v6 = [(DKDiagnosticContext *)self _helperConnnection];
  [v6 setInvalidationHandler:&__block_literal_global_153];

  return v4;
}

void __54__DKDiagnosticContext__getRemoteProxyAndSetUpHandlers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__DKDiagnosticContext__getRemoteProxyAndSetUpHandlers__block_invoke_cold_1(v2, v3);
  }

  [DKAnalytics sendAnalyticsWithEvent:2 error:v2];
}

void __54__DKDiagnosticContext__getRemoteProxyAndSetUpHandlers__block_invoke_149()
{
  v0 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKDiagnosticsContextConnectionInterrupted" code:0 userInfo:0];
  [DKAnalytics sendAnalyticsWithEvent:0 error:v0];
}

void __54__DKDiagnosticContext__getRemoteProxyAndSetUpHandlers__block_invoke_2()
{
  v0 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKDiagnosticsContextConnectionInvalidated" code:0 userInfo:0];
  [DKAnalytics sendAnalyticsWithEvent:1 error:v0];
}

- (void)setRemoteDiagnosticNotAllowListedWithContactMessage:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 testID];
  v7 = [a1 _testName];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = a2;
  _os_log_fault_impl(&dword_248B9D000, a3, OS_LOG_TYPE_FAULT, "This DiagnosticsKit extension (%@ - %@) is not allow listed with the DK host application. %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __54__DKDiagnosticContext__getRemoteProxyAndSetUpHandlers__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve remote object proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end