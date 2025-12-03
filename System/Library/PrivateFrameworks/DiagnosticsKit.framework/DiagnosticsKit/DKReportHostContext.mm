@interface DKReportHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (DKExtensionHostAdapterDelegate)delegate;
- (void)cancelWithCompletion:(id)completion;
- (void)completeRemoteWithReport:(id)report completion:(id)completion;
- (void)startWithPayload:(id)payload completion:(id)completion;
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

- (void)startWithPayload:(id)payload completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  completionCopy = completion;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[DKReportHostContext startWithPayload:completion:]";
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  _auxiliaryConnection = [(DKReportHostContext *)self _auxiliaryConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__DKReportHostContext_startWithPayload_completion___block_invoke;
  v14[3] = &unk_278F6BFA8;
  v14[4] = self;
  v10 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:v14];

  _auxiliaryConnection2 = [(DKReportHostContext *)self _auxiliaryConnection];
  [_auxiliaryConnection2 setInterruptionHandler:&__block_literal_global_61];

  _auxiliaryConnection3 = [(DKReportHostContext *)self _auxiliaryConnection];
  [_auxiliaryConnection3 setInvalidationHandler:&__block_literal_global_64];

  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_67;
  }

  if (v10)
  {
    [v10 startRemoteReportWithComponentIdentity:payloadCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
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

- (void)cancelWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(DKReportHostContext *)self delegate];
  [delegate cancelExtensionRequest];

  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v5 = completionCopy;
  }
}

- (void)completeRemoteWithReport:(id)report completion:(id)completion
{
  v6 = *(completion + 2);
  reportCopy = report;
  v6(completion);
  delegate = [(DKReportHostContext *)self delegate];
  [delegate completeWithPayload:reportCopy completion:&__block_literal_global_69];
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