@interface DKReportHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (DKExtensionHostAdapterDelegate)delegate;
- (void)cancelWithCompletion:(id)a3;
- (void)completeRemoteWithReport:(id)a3 completion:(id)a4;
- (void)startWithPayload:(id)a3 completion:(id)a4;
@end

@implementation DKReportHostContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[DKReportHostContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface;

  return v3;
}

void __56__DKReportHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9D880];
  v1 = _extensionAuxiliaryVendorProtocol_interface;
  _extensionAuxiliaryVendorProtocol_interface = v0;

  v2 = _extensionAuxiliaryVendorProtocol_interface;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_startRemoteReportWithComponentIdentity_completion_ argumentIndex:0 ofReply:0];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[DKReportHostContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface;

  return v3;
}

void __54__DKReportHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9D080];
  v1 = _extensionAuxiliaryHostProtocol_interface;
  _extensionAuxiliaryHostProtocol_interface = v0;

  v2 = _extensionAuxiliaryHostProtocol_interface;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_completeRemoteWithReport_completion_ argumentIndex:0 ofReply:0];
}

- (void)startWithPayload:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[DKReportHostContext startWithPayload:completion:]";
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = [(DKReportHostContext *)self _auxiliaryConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__DKReportHostContext_startWithPayload_completion___block_invoke;
  v14[3] = &unk_278F6BFA8;
  v14[4] = self;
  v10 = [v9 remoteObjectProxyWithErrorHandler:v14];

  v11 = [(DKReportHostContext *)self _auxiliaryConnection];
  [v11 setInterruptionHandler:&__block_literal_global_61];

  v12 = [(DKReportHostContext *)self _auxiliaryConnection];
  [v12 setInvalidationHandler:&__block_literal_global_64];

  if (!v7)
  {
    v7 = &__block_literal_global_67;
  }

  if (v10)
  {
    [v10 startRemoteReportWithComponentIdentity:v6 completion:v7];
  }

  else
  {
    v7[2](v7, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__DKReportHostContext_startWithPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__DKReportHostContext_startWithPayload_completion___block_invoke_cold_1(v3, v4);
  }

  [*(a1 + 32) cancelRequestWithError:v3];
  [DKAnalytics sendAnalyticsWithEvent:2 error:v3];
}

void __51__DKReportHostContext_startWithPayload_completion___block_invoke_59()
{
  v0 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKReportHostContextConnectionInterrupted" code:0 userInfo:0];
  [DKAnalytics sendAnalyticsWithEvent:0 error:v0];
}

void __51__DKReportHostContext_startWithPayload_completion___block_invoke_2()
{
  v0 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKReportHostContextConnectionInvalidated" code:0 userInfo:0];
  [DKAnalytics sendAnalyticsWithEvent:1 error:v0];
}

- (void)cancelWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(DKReportHostContext *)self delegate];
  [v4 cancelExtensionRequest];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (void)completeRemoteWithReport:(id)a3 completion:(id)a4
{
  v6 = *(a4 + 2);
  v7 = a3;
  v6(a4);
  v8 = [(DKReportHostContext *)self delegate];
  [v8 completeWithPayload:v7 completion:&__block_literal_global_69];
}

- (DKExtensionHostAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__DKReportHostContext_startWithPayload_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[DKReportHostContext startWithPayload:completion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "%s Failed to retrieve remote object proxy: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end