@interface BLTTestService
+ (id)sharedTestService;
- (BLTTestService)init;
- (void)_connectIfNecessary;
- (void)clearSectionInfoSentCacheWithCompletion:(id)a3;
- (void)dealloc;
- (void)disableStandaloneTestModeWithCompletion:(id)a3;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6 completion:(id)a7;
- (void)getStandaloneTestModeEnabledWithCompletion:(id)a3;
- (void)logFaultWithCompletion:(id)a3;
- (void)originalSettingsWithCompletion:(id)a3;
- (void)overriddenSettingsWithCompletion:(id)a3;
- (void)removeSectionID:(id)a3 completion:(id)a4;
- (void)sendSectionInfoWithSectionID:(id)a3 completion:(id)a4;
- (void)settingOverridesWithCompletion:(id)a3;
- (void)simulateAnalytics:(id)a3 completion:(id)a4;
- (void)spoolSectionInfoWithCompletion:(id)a3;
- (void)willAlertForSectionID:(id)a3 subtype:(int64_t)a4 completion:(id)a5;
@end

@implementation BLTTestService

+ (id)sharedTestService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BLTTestService_sharedTestService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedTestService_onceToken != -1)
  {
    dispatch_once(&sharedTestService_onceToken, block);
  }

  v2 = sharedTestService_sharedService;

  return v2;
}

uint64_t __35__BLTTestService_sharedTestService__block_invoke(uint64_t a1)
{
  sharedTestService_sharedService = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BLTTestService)init
{
  v5.receiver = self;
  v5.super_class = BLTTestService;
  v2 = [(BLTTestService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BLTTestService *)v2 _connectIfNecessary];
  }

  return v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = BLTTestService;
  [(BLTTestService *)&v4 dealloc];
}

uint64_t __106__BLTTestService_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendSectionInfoWithSectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v8 = a3;
  v9 = [(NSXPCConnection *)connection remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__BLTTestService_sendSectionInfoWithSectionID_completion___block_invoke;
  v11[3] = &unk_278D314F0;
  v12 = v6;
  v10 = v6;
  [v9 sendSectionInfoWithSectionID:v8 completion:v11];
}

uint64_t __58__BLTTestService_sendSectionInfoWithSectionID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __57__BLTTestService_sendAllSectionInfoWithSpool_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)spoolSectionInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BLTTestService_spoolSectionInfoWithCompletion___block_invoke;
  v7[3] = &unk_278D314F0;
  v8 = v4;
  v6 = v4;
  [v5 spoolSectionInfoWithCompletion:v7];
}

uint64_t __49__BLTTestService_spoolSectionInfoWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearSectionInfoSentCacheWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BLTTestService_clearSectionInfoSentCacheWithCompletion___block_invoke;
  v7[3] = &unk_278D314F0;
  v8 = v4;
  v6 = v4;
  [v5 clearSectionInfoSentCacheWithCompletion:v7];
}

uint64_t __58__BLTTestService_clearSectionInfoSentCacheWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getStandaloneTestModeEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BLTTestService_getStandaloneTestModeEnabledWithCompletion___block_invoke;
  v7[3] = &unk_278D320A8;
  v8 = v4;
  v6 = v4;
  [v5 getStandaloneTestModeEnabledWithCompletion:v7];
}

uint64_t __61__BLTTestService_getStandaloneTestModeEnabledWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __133__BLTTestService_enableStandaloneTestModeWithMinimumSendDelay_maximumSendDelay_minimumResponseDelay_maximumResponseDelay_completion___block_invoke;
  v15[3] = &unk_278D314F0;
  v16 = v12;
  v14 = v12;
  [v13 enableStandaloneTestModeWithMinimumSendDelay:a3 maximumSendDelay:a4 minimumResponseDelay:a5 maximumResponseDelay:a6 completion:v15];
}

uint64_t __133__BLTTestService_enableStandaloneTestModeWithMinimumSendDelay_maximumSendDelay_minimumResponseDelay_maximumResponseDelay_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)disableStandaloneTestModeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BLTTestService_disableStandaloneTestModeWithCompletion___block_invoke;
  v7[3] = &unk_278D314F0;
  v8 = v4;
  v6 = v4;
  [v5 disableStandaloneTestModeWithCompletion:v7];
}

uint64_t __58__BLTTestService_disableStandaloneTestModeWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)willAlertForSectionID:(id)a3 subtype:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  connection = self->_connection;
  v10 = a3;
  v11 = [(NSXPCConnection *)connection remoteObjectProxy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__BLTTestService_willAlertForSectionID_subtype_completion___block_invoke;
  v13[3] = &unk_278D320A8;
  v14 = v8;
  v12 = v8;
  [v11 willAlertForSectionID:v10 subtype:a4 completion:v13];
}

uint64_t __59__BLTTestService_willAlertForSectionID_subtype_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)settingOverridesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BLTTestService_settingOverridesWithCompletion___block_invoke;
  v7[3] = &unk_278D320D0;
  v8 = v4;
  v6 = v4;
  [v5 settingOverridesWithCompletion:v7];
}

uint64_t __49__BLTTestService_settingOverridesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)originalSettingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BLTTestService_originalSettingsWithCompletion___block_invoke;
  v7[3] = &unk_278D320D0;
  v8 = v4;
  v6 = v4;
  [v5 originalSettingsWithCompletion:v7];
}

uint64_t __49__BLTTestService_originalSettingsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)overriddenSettingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__BLTTestService_overriddenSettingsWithCompletion___block_invoke;
  v7[3] = &unk_278D320D0;
  v8 = v4;
  v6 = v4;
  [v5 overriddenSettingsWithCompletion:v7];
}

uint64_t __51__BLTTestService_overriddenSettingsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeSectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v8 = a3;
  v9 = [(NSXPCConnection *)connection remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__BLTTestService_removeSectionID_completion___block_invoke;
  v11[3] = &unk_278D314F0;
  v12 = v6;
  v10 = v6;
  [v9 removeSectionID:v8 completion:v11];
}

uint64_t __45__BLTTestService_removeSectionID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)logFaultWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__BLTTestService_logFaultWithCompletion___block_invoke;
  v7[3] = &unk_278D314F0;
  v8 = v4;
  v6 = v4;
  [v5 logFaultWithCompletion:v7];
}

uint64_t __41__BLTTestService_logFaultWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)simulateAnalytics:(id)a3 completion:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v8 = a3;
  v9 = [(NSXPCConnection *)connection remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__BLTTestService_simulateAnalytics_completion___block_invoke;
  v11[3] = &unk_278D320F8;
  v12 = v6;
  v10 = v6;
  [v9 simulateAnalytics:v8 completion:v11];
}

uint64_t __47__BLTTestService_simulateAnalytics_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_connectIfNecessary
{
  v13[8] = *MEMORY[0x277D85DE8];
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.bulletindistributor.testservice" options:4096];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285458CA0];
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v13[3] = objc_opt_class();
    v13[4] = objc_opt_class();
    v13[5] = objc_opt_class();
    v13[6] = objc_opt_class();
    v13[7] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:8];
    v8 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
    v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
    [v8 setClasses:v9 forSelector:sel_overriddenSettingsWithCompletion_ argumentIndex:0 ofReply:1];

    v10 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v7];
    [v10 setClasses:v11 forSelector:sel_originalSettingsWithCompletion_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_8];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&__block_literal_global_93];
    [(NSXPCConnection *)self->_connection resume];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __37__BLTTestService__connectIfNecessary__block_invoke()
{
  v0 = blt_general_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_241FB3000, v0, OS_LOG_TYPE_DEFAULT, "BLTTestService connection interrupted!", v1, 2u);
  }
}

void __37__BLTTestService__connectIfNecessary__block_invoke_91()
{
  v0 = blt_general_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_241FB3000, v0, OS_LOG_TYPE_DEFAULT, "BLTTestService connection invalidated!", v1, 2u);
  }
}

@end