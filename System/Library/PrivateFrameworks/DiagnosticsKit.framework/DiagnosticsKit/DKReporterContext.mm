@interface DKReporterContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)completeWithReport:(id)a3 completion:(id)a4;
- (void)startRemoteReportWithComponentIdentity:(id)a3 completion:(id)a4;
@end

@implementation DKReporterContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_0 != -1)
  {
    +[DKReporterContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface_0;

  return v3;
}

void __54__DKReporterContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9D880];
  v1 = _extensionAuxiliaryVendorProtocol_interface_0;
  _extensionAuxiliaryVendorProtocol_interface_0 = v0;

  v2 = _extensionAuxiliaryVendorProtocol_interface_0;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_startRemoteReportWithComponentIdentity_completion_ argumentIndex:0 ofReply:0];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_0 != -1)
  {
    +[DKReporterContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface_0;

  return v3;
}

void __52__DKReporterContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9D080];
  v1 = _extensionAuxiliaryHostProtocol_interface_0;
  _extensionAuxiliaryHostProtocol_interface_0 = v0;

  v2 = _extensionAuxiliaryHostProtocol_interface_0;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_completeRemoteWithReport_completion_ argumentIndex:0 ofReply:0];
}

- (void)completeWithReport:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[DKReporterContext completeWithReport:completion:]";
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = [(DKReporterContext *)self _auxiliaryConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__DKReporterContext_completeWithReport_completion___block_invoke;
  v14[3] = &unk_278F6BFA8;
  v14[4] = self;
  v10 = [v9 remoteObjectProxyWithErrorHandler:v14];

  v11 = [(DKReporterContext *)self _auxiliaryConnection];
  [v11 setInterruptionHandler:&__block_literal_global_61_0];

  v12 = [(DKReporterContext *)self _auxiliaryConnection];
  [v12 setInvalidationHandler:&__block_literal_global_64_0];

  if (!v7)
  {
    v7 = &__block_literal_global_66;
  }

  if (v10)
  {
    [v10 completeRemoteWithReport:v6 completion:v7];
  }

  else
  {
    v7[2](v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__DKReporterContext_completeWithReport_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__DKReporterContext_completeWithReport_completion___block_invoke_cold_1(v3, v4);
  }

  [*(a1 + 32) cancelRequestWithError:v3];
  [DKAnalytics sendAnalyticsWithEvent:2 error:v3];
}

void __51__DKReporterContext_completeWithReport_completion___block_invoke_59()
{
  v0 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKReporterContextConnectionInterrupted" code:0 userInfo:0];
  [DKAnalytics sendAnalyticsWithEvent:0 error:v0];
}

void __51__DKReporterContext_completeWithReport_completion___block_invoke_2()
{
  v0 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKReporterContextConnectionInvalidated" code:0 userInfo:0];
  [DKAnalytics sendAnalyticsWithEvent:1 error:v0];
}

- (void)startRemoteReportWithComponentIdentity:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[DKReporterContext startRemoteReportWithComponentIdentity:completion:]";
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v6)
  {
    v6[2](v6, 1);
  }

  v9 = [(DKReporterContext *)self _principalObject];
  [v9 setComponentIdentity:v7];

  v10 = dispatch_get_global_queue(21, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__DKReporterContext_startRemoteReportWithComponentIdentity_completion___block_invoke;
  v13[3] = &unk_278F6C090;
  v14 = v9;
  v15 = self;
  v11 = v9;
  dispatch_async(v10, v13);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __71__DKReporterContext_startRemoteReportWithComponentIdentity_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setupWithContext:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 start];
}

void __51__DKReporterContext_completeWithReport_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[DKReporterContext completeWithReport:completion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "%s Failed to retrieve remote object proxy: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end