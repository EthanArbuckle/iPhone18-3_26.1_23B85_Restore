@interface BLTTestServiceServer
+ (id)sharedTestServer;
- (BLTTestServiceServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)addBulletin:(id)a3 forFeed:(unint64_t)a4 playLightsAndSirens:(BOOL)a5 attachment:(id)a6 attachmentType:(int64_t)a7 alwaysSend:(BOOL)a8 completion:(id)a9;
- (void)clearSectionInfoSentCacheWithCompletion:(id)a3;
- (void)disableStandaloneTestModeWithCompletion:(id)a3;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6 completion:(id)a7;
- (void)getStandaloneTestModeEnabledWithCompletion:(id)a3;
- (void)logFaultWithCompletion:(id)a3;
- (void)originalSettingsWithCompletion:(id)a3;
- (void)overriddenSettingsWithCompletion:(id)a3;
- (void)removeSectionID:(id)a3 completion:(id)a4;
- (void)resume;
- (void)sendAllSectionInfoWithSpool:(BOOL)a3 completion:(id)a4;
- (void)sendSectionInfoWithSectionID:(id)a3 completion:(id)a4;
- (void)settingOverridesWithCompletion:(id)a3;
- (void)simulateAnalytics:(id)a3 completion:(id)a4;
- (void)spoolSectionInfoWithCompletion:(id)a3;
- (void)willAlertForSectionID:(id)a3 subtype:(int64_t)a4 completion:(id)a5;
@end

@implementation BLTTestServiceServer

+ (id)sharedTestServer
{
  if (sharedTestServer___onceToken != -1)
  {
    +[BLTTestServiceServer sharedTestServer];
  }

  v3 = sharedTestServer___sharedInstance;

  return v3;
}

uint64_t __40__BLTTestServiceServer_sharedTestServer__block_invoke()
{
  sharedTestServer___sharedInstance = objc_alloc_init(BLTTestServiceServer);

  return MEMORY[0x2821F96F8]();
}

- (BLTTestServiceServer)init
{
  v3.receiver = self;
  v3.super_class = BLTTestServiceServer;
  return [(BLTTestServiceServer *)&v3 init];
}

- (void)resume
{
  v3 = [MEMORY[0x277CBEB18] array];
  clientConnections = self->_clientConnections;
  self->_clientConnections = v3;

  [(NSXPCListener *)self->_listener invalidate];
  v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.bulletindistributor.testservice"];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  v7 = self->_listener;

  [(NSXPCListener *)v7 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285458CA0];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__BLTTestServiceServer_listener_shouldAcceptNewConnection___block_invoke;
  v16[3] = &unk_278D32218;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  [v7 setInvalidationHandler:v16];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__BLTTestServiceServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v13 = &unk_278D32218;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  [v7 setInterruptionHandler:&v10];
  [(NSMutableArray *)self->_clientConnections addObject:v7, v10, v11, v12, v13];
  [v7 resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __59__BLTTestServiceServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeClientConnection:v2];
}

void __59__BLTTestServiceServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeClientConnection:v2];
}

- (void)addBulletin:(id)a3 forFeed:(unint64_t)a4 playLightsAndSirens:(BOOL)a5 attachment:(id)a6 attachmentType:(int64_t)a7 alwaysSend:(BOOL)a8 completion:(id)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a9;
  v17 = BLTWorkQueue();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__BLTTestServiceServer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_completion___block_invoke;
  v21[3] = &unk_278D32240;
  v27 = a5;
  v22 = v14;
  v23 = v15;
  v25 = a4;
  v26 = a7;
  v28 = a8;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  dispatch_async(v17, v21);
}

void __112__BLTTestServiceServer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_completion___block_invoke(uint64_t a1)
{
  v2 = +[BLTBulletinDistributor sharedDistributor];
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 73);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__BLTTestServiceServer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_completion___block_invoke_2;
  v9[3] = &unk_278D320A8;
  v10 = *(a1 + 48);
  [v2 _addBulletin:v4 forFeed:v6 playLightsAndSirens:v3 attachment:v5 attachmentType:v7 alwaysSend:v8 completion:v9];
}

uint64_t __112__BLTTestServiceServer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_completion___block_invoke_2(uint64_t a1)
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
  v5 = a3;
  v6 = a4;
  v7 = BLTWorkQueue();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__BLTTestServiceServer_sendSectionInfoWithSectionID_completion___block_invoke;
  v10[3] = &unk_278D31980;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __64__BLTTestServiceServer_sendSectionInfoWithSectionID_completion___block_invoke(uint64_t a1)
{
  v2 = +[BLTBulletinDistributor sharedDistributor];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__BLTTestServiceServer_sendSectionInfoWithSectionID_completion___block_invoke_2;
  v4[3] = &unk_278D314F0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 sendSectionInfoWithSectionID:v3 completion:v4];
}

uint64_t __64__BLTTestServiceServer_sendSectionInfoWithSectionID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendAllSectionInfoWithSpool:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = BLTWorkQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__BLTTestServiceServer_sendAllSectionInfoWithSpool_completion___block_invoke;
  v8[3] = &unk_278D32268;
  v10 = a3;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __63__BLTTestServiceServer_sendAllSectionInfoWithSpool_completion___block_invoke(uint64_t a1)
{
  v2 = +[BLTBulletinDistributor sharedDistributor];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__BLTTestServiceServer_sendAllSectionInfoWithSpool_completion___block_invoke_2;
  v4[3] = &unk_278D314F0;
  v5 = *(a1 + 32);
  [v2 sendAllSectionInfoWithSpool:v3 completion:v4];
}

uint64_t __63__BLTTestServiceServer_sendAllSectionInfoWithSpool_completion___block_invoke_2(uint64_t a1)
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
  v3 = a3;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BLTTestServiceServer_spoolSectionInfoWithCompletion___block_invoke;
  block[3] = &unk_278D314F0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __55__BLTTestServiceServer_spoolSectionInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[BLTBulletinDistributor sharedDistributor];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__BLTTestServiceServer_spoolSectionInfoWithCompletion___block_invoke_2;
  v3[3] = &unk_278D314F0;
  v4 = *(a1 + 32);
  [v2 spoolSectionInfoWithCompletion:v3];
}

uint64_t __55__BLTTestServiceServer_spoolSectionInfoWithCompletion___block_invoke_2(uint64_t a1)
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
  v3 = a3;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__BLTTestServiceServer_clearSectionInfoSentCacheWithCompletion___block_invoke;
  block[3] = &unk_278D314F0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __64__BLTTestServiceServer_clearSectionInfoSentCacheWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[BLTBulletinDistributor sharedDistributor];
  [v2 clearSectionInfoSentCache];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)getStandaloneTestModeEnabledWithCompletion:(id)a3
{
  v3 = a3;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BLTTestServiceServer_getStandaloneTestModeEnabledWithCompletion___block_invoke;
  block[3] = &unk_278D314F0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __67__BLTTestServiceServer_getStandaloneTestModeEnabledWithCompletion___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = +[BLTBulletinDistributor sharedDistributor];
    [v2 isStandaloneTestModeEnabled];

    v3 = *(*(v1 + 32) + 16);

    return v3();
  }

  return result;
}

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6 completion:(id)a7
{
  v11 = a7;
  v12 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __139__BLTTestServiceServer_enableStandaloneTestModeWithMinimumSendDelay_maximumSendDelay_minimumResponseDelay_maximumResponseDelay_completion___block_invoke;
  block[3] = &unk_278D32290;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v15 = v11;
  v16 = a3;
  v13 = v11;
  dispatch_async(v12, block);
}

uint64_t __139__BLTTestServiceServer_enableStandaloneTestModeWithMinimumSendDelay_maximumSendDelay_minimumResponseDelay_maximumResponseDelay_completion___block_invoke(void *a1)
{
  v2 = +[BLTBulletinDistributor sharedDistributor];
  [v2 enableStandaloneTestModeWithMinimumSendDelay:a1[5] maximumSendDelay:a1[6] minimumResponseDelay:a1[7] maximumResponseDelay:a1[8]];

  result = a1[4];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)disableStandaloneTestModeWithCompletion:(id)a3
{
  v3 = a3;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__BLTTestServiceServer_disableStandaloneTestModeWithCompletion___block_invoke;
  block[3] = &unk_278D314F0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __64__BLTTestServiceServer_disableStandaloneTestModeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[BLTBulletinDistributor sharedDistributor];
  [v2 disableStandaloneTestMode];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)willAlertForSectionID:(id)a3 subtype:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BLTTestServiceServer_willAlertForSectionID_subtype_completion___block_invoke;
  block[3] = &unk_278D322B8;
  v14 = v8;
  v15 = a4;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __65__BLTTestServiceServer_willAlertForSectionID_subtype_completion___block_invoke(uint64_t a1)
{
  v2 = +[BLTBulletinDistributor sharedDistributor];
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__BLTTestServiceServer_willAlertForSectionID_subtype_completion___block_invoke_2;
  v5[3] = &unk_278D320A8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v2 getWillNanoPresentNotificationForSectionID:v4 subsectionIDs:0 subtype:v3 completion:v5];
}

uint64_t __65__BLTTestServiceServer_willAlertForSectionID_subtype_completion___block_invoke_2(uint64_t a1)
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
  v3 = a3;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BLTTestServiceServer_settingOverridesWithCompletion___block_invoke;
  block[3] = &unk_278D314F0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __55__BLTTestServiceServer_settingOverridesWithCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[BLTBulletinDistributor sharedDistributor];
    v3 = [v2 settingOverrides];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)originalSettingsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BLTTestServiceServer_originalSettingsWithCompletion___block_invoke;
  block[3] = &unk_278D314F0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __55__BLTTestServiceServer_originalSettingsWithCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[BLTBulletinDistributor sharedDistributor];
    v3 = [v2 originalSettings];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)overriddenSettingsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BLTTestServiceServer_overriddenSettingsWithCompletion___block_invoke;
  block[3] = &unk_278D314F0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __57__BLTTestServiceServer_overriddenSettingsWithCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[BLTBulletinDistributor sharedDistributor];
    v3 = [v2 overriddenSettings];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)removeSectionID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BLTWorkQueue();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BLTTestServiceServer_removeSectionID_completion___block_invoke;
  v10[3] = &unk_278D31478;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __51__BLTTestServiceServer_removeSectionID_completion___block_invoke(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = +[BLTBulletinDistributor sharedDistributor];
    [v2 removeSectionID:*(v1 + 32)];

    v3 = *(*(v1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)logFaultWithCompletion:(id)a3
{
  v3 = a3;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BLTTestServiceServer_logFaultWithCompletion___block_invoke;
  block[3] = &unk_278D314F0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __47__BLTTestServiceServer_logFaultWithCompletion___block_invoke(uint64_t a1)
{
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __47__BLTTestServiceServer_logFaultWithCompletion___block_invoke_cold_1(v2);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)simulateAnalytics:(id)a3 completion:(id)a4
{
  v9 = a3;
  v5 = a4;
  if ([v9 isEqualToString:@"BLTAnalyticsLogCompanionToGizmoDelay"])
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-50.0];
    v7 = [MEMORY[0x277CBEAA8] date];
    BLTAnalyticsLogCompanionToGizmoDelay(@"com.apple.test_section_id", @"publisher_match_id", v6, v7, 1);

LABEL_7:
    v5[2](v5, 0);
    goto LABEL_8;
  }

  if ([v9 isEqualToString:@"BLTAnalyticsLogBulletinSize"])
  {
    BLTAnalyticsLogBulletinSize(@"com.apple.test_section_id", 5000000, @"publisher_match_id");
    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"BLTAnalyticsLogOutOfOrderMessage"])
  {
    BLTAnalyticsLogOutOfOrderMessage();
    goto LABEL_7;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.bulletindistributor.invalid.analytics.type" code:-1 userInfo:0];
  (v5)[2](v5, v8);

LABEL_8:
}

@end