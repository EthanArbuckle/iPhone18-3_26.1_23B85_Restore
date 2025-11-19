@interface BBSettingsGateway
+ (id)clientInterface;
+ (id)serverInterface;
- (BBSettingsGateway)initWithQueue:(id)a3;
- (id)_ensureBBServerSettingsConnection;
- (id)activeSectionInfo;
- (id)allActiveSectionIDs;
- (id)allEffectiveSectionInfo;
- (id)allSectionIDs;
- (id)allSectionInfo;
- (id)effectiveGlobalScheduledDeliveryTimes;
- (id)effectiveSectionInfoForSectionID:(id)a3;
- (id)effectiveSectionInfoForSectionIDs:(id)a3;
- (id)sectionInfoForSectionID:(id)a3;
- (id)sectionInfoForSectionIDs:(id)a3;
- (int64_t)effectiveGlobalAnnounceCarPlaySetting;
- (int64_t)effectiveGlobalAnnounceHeadphonesSetting;
- (int64_t)effectiveGlobalAnnounceSetting;
- (int64_t)effectiveGlobalContentPreviewsSetting;
- (int64_t)effectiveGlobalHighlightsSetting;
- (int64_t)effectiveGlobalNotificationListDisplayStyleSetting;
- (int64_t)effectiveGlobalScheduledDeliverySetting;
- (int64_t)effectiveGlobalScheduledDeliveryShowNextSummarySetting;
- (int64_t)effectiveGlobalSpokenNotificationSetting;
- (int64_t)effectiveGlobalSummarizationSetting;
- (void)_resetBBServerSettingsConnection;
- (void)dealloc;
- (void)getEffectiveGlobalAnnounceCarPlaySettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalAnnounceHeadphonesSettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalAnnounceSettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalContentPreviewsSettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalHighlightsSettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalNotificationListDisplayStyleSettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalScheduledDeliverySettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalScheduledDeliveryTimesWithCompletion:(id)a3;
- (void)getEffectiveGlobalSpokenNotificationSettingWithCompletion:(id)a3;
- (void)getEffectiveGlobalSummarizationSettingWithCompletion:(id)a3;
- (void)getEffectiveSectionInfoForSectionID:(id)a3 withCompletion:(id)a4;
- (void)getEffectiveSectionInfoForSectionIDs:(id)a3 withCompletion:(id)a4;
- (void)getSectionInfoForActiveSectionsWithCompletion:(id)a3;
- (void)getSectionInfoForSectionID:(id)a3 withCompletion:(id)a4;
- (void)getSectionInfoForSectionIDs:(id)a3 withCompletion:(id)a4;
- (void)getSectionInfoWithCompletion:(id)a3;
- (void)invalidate;
- (void)refreshAnnounceSettings;
- (void)refreshGlobalSettings;
- (void)refreshSectionInfo;
- (void)setEffectiveGlobalAnnounceCarPlaySetting:(int64_t)a3;
- (void)setEffectiveGlobalAnnounceHeadphonesSetting:(int64_t)a3;
- (void)setEffectiveGlobalAnnounceSetting:(int64_t)a3;
- (void)setEffectiveGlobalContentPreviewsSetting:(int64_t)a3;
- (void)setEffectiveGlobalHighlightsSetting:(int64_t)a3;
- (void)setEffectiveGlobalNotificationListDisplayStyleSetting:(int64_t)a3;
- (void)setEffectiveGlobalScheduledDeliverySetting:(int64_t)a3;
- (void)setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)a3;
- (void)setEffectiveGlobalScheduledDeliveryTimes:(id)a3;
- (void)setEffectiveGlobalSpokenNotificationSetting:(int64_t)a3;
- (void)setEffectiveGlobalSummarizationSetting:(int64_t)a3;
- (void)setSectionInfo:(id)a3 forSectionID:(id)a4 withCompletion:(id)a5;
- (void)updateSectionInfoForSectionID:(id)a3 withHandler:(id)a4;
@end

@implementation BBSettingsGateway

- (id)_ensureBBServerSettingsConnection
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BBSettingsGateway__ensureBBServerSettingsConnection__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_sync(connectionQueue, block);
  return self->_connectionQueue_bbServerConnection;
}

void __54__BBSettingsGateway__ensureBBServerSettingsConnection__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 8))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.bulletinboard.settingsconnection" options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;

    v5 = *(*(a1 + 32) + 8);
    v6 = [objc_opt_class() serverInterface];
    [v5 setRemoteObjectInterface:v6];

    v7 = *(*(a1 + 32) + 8);
    v8 = [objc_opt_class() clientInterface];
    [v7 setExportedInterface:v8];

    [*(*(a1 + 32) + 8) setExportedObject:?];
    [*(*(a1 + 32) + 8) setInterruptionHandler:&__block_literal_global_119];
    objc_initWeak(&location, *(a1 + 32));
    v9 = *(*(a1 + 32) + 8);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __54__BBSettingsGateway__ensureBBServerSettingsConnection__block_invoke_120;
    v16 = &unk_278D2B250;
    objc_copyWeak(&v17, &location);
    [v9 setInvalidationHandler:&v13];
    [*(*(a1 + 32) + 8) resume];
    v10 = BBLogPersistence;
    if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 8);
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "BBSettingsGateway: Created BBServer connection %@", buf, 0xCu);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)effectiveGlobalAnnounceSetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_171];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__BBSettingsGateway_effectiveGlobalAnnounceSetting__block_invoke_172;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalAnnounceSettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)effectiveGlobalAnnounceHeadphonesSetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_179];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__BBSettingsGateway_effectiveGlobalAnnounceHeadphonesSetting__block_invoke_180;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalAnnounceHeadphonesSettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)effectiveGlobalAnnounceCarPlaySetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_187];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__BBSettingsGateway_effectiveGlobalAnnounceCarPlaySetting__block_invoke_188;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalAnnounceCarPlaySettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)effectiveGlobalScheduledDeliverySetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_195];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__BBSettingsGateway_effectiveGlobalScheduledDeliverySetting__block_invoke_196;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalScheduledDeliverySettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)effectiveGlobalScheduledDeliveryTimes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = [MEMORY[0x277CBEA60] array];
  v3 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_203];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BBSettingsGateway_effectiveGlobalScheduledDeliveryTimes__block_invoke_204;
  v7[3] = &unk_278D2B0F0;
  v7[4] = &v8;
  [v4 getEffectiveGlobalScheduledDeliveryTimesWithHandler:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int64_t)effectiveGlobalScheduledDeliveryShowNextSummarySetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_211];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__BBSettingsGateway_effectiveGlobalScheduledDeliveryShowNextSummarySetting__block_invoke_212;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)effectiveGlobalNotificationListDisplayStyleSetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_219];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__BBSettingsGateway_effectiveGlobalNotificationListDisplayStyleSetting__block_invoke_220;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)effectiveGlobalSummarizationSetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_227];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__BBSettingsGateway_effectiveGlobalSummarizationSetting__block_invoke_228;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalSummarizationSettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)effectiveGlobalContentPreviewsSetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_161];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__BBSettingsGateway_effectiveGlobalContentPreviewsSetting__block_invoke_162;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalContentPreviewsSettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)effectiveGlobalHighlightsSetting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(BBSettingsGateway *)self _settingsConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_235];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__BBSettingsGateway_effectiveGlobalHighlightsSetting__block_invoke_236;
  v6[3] = &unk_278D2B400;
  v6[4] = &v7;
  [v3 getEffectiveGlobalHighlightsSettingWithHandler:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[BBSettingsGateway clientInterface];
  }

  v3 = clientInterface___interface;

  return v3;
}

uint64_t __36__BBSettingsGateway_clientInterface__block_invoke()
{
  clientInterface___interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285438F90];

  return MEMORY[0x2821F96F8]();
}

+ (id)serverInterface
{
  if (serverInterface_onceToken != -1)
  {
    +[BBSettingsGateway serverInterface];
  }

  v3 = serverInterface___interface;

  return v3;
}

void __36__BBSettingsGateway_serverInterface__block_invoke()
{
  v62[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285434768];
  v1 = serverInterface___interface;
  serverInterface___interface = v0;

  v2 = serverInterface___interface;
  v3 = MEMORY[0x277CBEB98];
  v62[0] = objc_opt_class();
  v62[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_getSectionInfoWithHandler_ argumentIndex:0 ofReply:1];

  v6 = serverInterface___interface;
  v7 = MEMORY[0x277CBEB98];
  v61[0] = objc_opt_class();
  v61[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_getEffectiveSectionInfoWithHandler_ argumentIndex:0 ofReply:1];

  v10 = serverInterface___interface;
  v11 = MEMORY[0x277CBEB98];
  v60 = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_getSectionInfoForSectionID_withHandler_ argumentIndex:0 ofReply:1];

  v14 = serverInterface___interface;
  v15 = MEMORY[0x277CBEB98];
  v59 = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
  v17 = [v15 setWithArray:v16];
  [v14 setClasses:v17 forSelector:sel_getEffectiveSectionInfoForSectionID_withHandler_ argumentIndex:0 ofReply:1];

  v18 = serverInterface___interface;
  v19 = MEMORY[0x277CBEB98];
  v58[0] = objc_opt_class();
  v58[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v21 = [v19 setWithArray:v20];
  [v18 setClasses:v21 forSelector:sel_getSectionInfoForSectionIDs_withHandler_ argumentIndex:0 ofReply:0];

  v22 = serverInterface___interface;
  v23 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v25 = [v23 setWithArray:v24];
  [v22 setClasses:v25 forSelector:sel_getSectionInfoForSectionIDs_withHandler_ argumentIndex:0 ofReply:1];

  v26 = serverInterface___interface;
  v27 = MEMORY[0x277CBEB98];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v29 = [v27 setWithArray:v28];
  [v26 setClasses:v29 forSelector:sel_getEffectiveSectionInfoForSectionIDs_withHandler_ argumentIndex:0 ofReply:1];

  v30 = serverInterface___interface;
  v31 = MEMORY[0x277CBEB98];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v33 = [v31 setWithArray:v32];
  [v30 setClasses:v33 forSelector:sel_getSectionInfoForActiveSectionsWithHandler_ argumentIndex:0 ofReply:1];

  v34 = serverInterface___interface;
  v35 = MEMORY[0x277CBEB98];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v37 = [v35 setWithArray:v36];
  [v34 setClasses:v37 forSelector:sel_getActiveSectionIDsWithHandler_ argumentIndex:0 ofReply:1];

  v38 = serverInterface___interface;
  v39 = MEMORY[0x277CBEB98];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v41 = [v39 setWithArray:v40];
  [v38 setClasses:v41 forSelector:sel_getSectionIDsWithHandler_ argumentIndex:0 ofReply:1];

  v42 = serverInterface___interface;
  v43 = MEMORY[0x277CBEB98];
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v45 = [v43 setWithArray:v44];
  [v42 setClasses:v45 forSelector:sel_getEffectiveGlobalScheduledDeliveryTimesWithHandler_ argumentIndex:0 ofReply:1];

  v46 = serverInterface___interface;
  v47 = MEMORY[0x277CBEB98];
  v51[0] = objc_opt_class();
  v51[1] = objc_opt_class();
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v49 = [v47 setWithArray:v48];
  [v46 setClasses:v49 forSelector:sel_setEffectiveGlobalScheduledDeliveryTimes_withHandler_ argumentIndex:0 ofReply:0];

  v50 = *MEMORY[0x277D85DE8];
}

- (BBSettingsGateway)initWithQueue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BBSettingsGateway;
  v5 = [(BBSettingsGateway *)&v10 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = MEMORY[0x277D85CD0];
      v6 = MEMORY[0x277D85CD0];
    }

    objc_storeStrong(&v5->_queue, v4);
    v7 = dispatch_queue_create("com.apple.bulletinboard.BBSettingsGateway.connectionQueue", 0);
    connectionQueue = v5->_connectionQueue;
    v5->_connectionQueue = v7;
  }

  return v5;
}

- (void)dealloc
{
  [(BBSettingsGateway *)self invalidate];
  v3.receiver = self;
  v3.super_class = BBSettingsGateway;
  [(BBSettingsGateway *)&v3 dealloc];
}

- (void)invalidate
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__BBSettingsGateway_invalidate__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_sync(connectionQueue, block);
}

void __54__BBSettingsGateway__ensureBBServerSettingsConnection__block_invoke_2()
{
  v0 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_241EFF000, v0, OS_LOG_TYPE_DEFAULT, "BBServer connection interrupted", v1, 2u);
  }
}

void __54__BBSettingsGateway__ensureBBServerSettingsConnection__block_invoke_120(uint64_t a1)
{
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBServer connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetBBServerSettingsConnection];
}

- (void)_resetBBServerSettingsConnection
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__BBSettingsGateway__resetBBServerSettingsConnection__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_sync(connectionQueue, block);
}

void __53__BBSettingsGateway__resetBBServerSettingsConnection__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  [*(*(a1 + 32) + 8) setInterruptionHandler:0];
  [*(*(a1 + 32) + 8) setInvalidationHandler:0];
  [*(*(a1 + 32) + 8) setExportedObject:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (id)allEffectiveSectionInfo
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  v3 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Getting all effective section infos (sync)", buf, 2u);
  }

  v4 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_123];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__BBSettingsGateway_allEffectiveSectionInfo__block_invoke_124;
  v8[3] = &unk_278D2B0F0;
  v8[4] = &v10;
  [v5 getEffectiveSectionInfoWithHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __44__BBSettingsGateway_allEffectiveSectionInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __44__BBSettingsGateway_allEffectiveSectionInfo__block_invoke_cold_1();
  }
}

void __44__BBSettingsGateway_allEffectiveSectionInfo__block_invoke_124(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v12 = 134218242;
    v13 = [v5 count];
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Got %ld effective section infos [ error: %{public}@ ]", &v12, 0x16u);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)allSectionInfo
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  v3 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Getting all section infos (sync)", buf, 2u);
  }

  v4 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_127];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__BBSettingsGateway_allSectionInfo__block_invoke_128;
  v8[3] = &unk_278D2B0F0;
  v8[4] = &v10;
  [v5 getSectionInfoWithHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __35__BBSettingsGateway_allSectionInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __35__BBSettingsGateway_allSectionInfo__block_invoke_cold_1();
  }
}

void __35__BBSettingsGateway_allSectionInfo__block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v12 = 134218242;
    v13 = [v5 count];
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Got %ld section infos [ error: %{public}@ ]", &v12, 0x16u);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getSectionInfoWithCompletion:(id)a3
{
  v4 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__BBSettingsGateway_getSectionInfoWithCompletion___block_invoke;
  v17[3] = &unk_278D2B298;
  v17[4] = self;
  v5 = v4;
  v18 = v5;
  v6 = MEMORY[0x245D05D40](v17);
  v7 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Getting all section infos (async)", buf, 2u);
  }

  v8 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__BBSettingsGateway_getSectionInfoWithCompletion___block_invoke_130;
  v14[3] = &unk_278D2B2C0;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__BBSettingsGateway_getSectionInfoWithCompletion___block_invoke_131;
  v12[3] = &unk_278D2A838;
  v13 = v9;
  v11 = v9;
  [v10 getSectionInfoWithHandler:v12];
}

void __50__BBSettingsGateway_getSectionInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BBSettingsGateway_getSectionInfoWithCompletion___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __50__BBSettingsGateway_getSectionInfoWithCompletion___block_invoke_130(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __35__BBSettingsGateway_allSectionInfo__block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __50__BBSettingsGateway_getSectionInfoWithCompletion___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v10 = 134218242;
    v11 = [v5 count];
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Got %ld section infos [ error: %{public}@ ]", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (id)sectionInfoForSectionIDs:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Getting requested section infos (sync)", buf, 2u);
  }

  v6 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_133];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__BBSettingsGateway_sectionInfoForSectionIDs___block_invoke_134;
  v10[3] = &unk_278D2B2E8;
  v10[4] = &v12;
  [v7 getSectionInfoForSectionIDs:v4 withHandler:v10];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __46__BBSettingsGateway_sectionInfoForSectionIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __46__BBSettingsGateway_sectionInfoForSectionIDs___block_invoke_cold_1();
  }
}

void __46__BBSettingsGateway_sectionInfoForSectionIDs___block_invoke_134(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v9 = 134217984;
    v10 = [v3 count];
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Got %ld section infos", &v9, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getSectionInfoForSectionIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__BBSettingsGateway_getSectionInfoForSectionIDs_withCompletion___block_invoke;
  v15[3] = &unk_278D2B298;
  v15[4] = self;
  v16 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x245D05D40](v15);
  v10 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v11 = [v10 remoteObjectProxy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__BBSettingsGateway_getSectionInfoForSectionIDs_withCompletion___block_invoke_3;
  v13[3] = &unk_278D2B310;
  v14 = v9;
  v12 = v9;
  [v11 getSectionInfoForSectionIDs:v8 withHandler:v13];
}

void __64__BBSettingsGateway_getSectionInfoForSectionIDs_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BBSettingsGateway_getSectionInfoForSectionIDs_withCompletion___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)effectiveSectionInfoForSectionID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Getting requested effective section info (sync)", buf, 2u);
  }

  v6 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_136];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__BBSettingsGateway_effectiveSectionInfoForSectionID___block_invoke_137;
  v10[3] = &unk_278D2B338;
  v10[4] = &v12;
  [v7 getEffectiveSectionInfoForSectionID:v4 withHandler:v10];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __54__BBSettingsGateway_effectiveSectionInfoForSectionID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __54__BBSettingsGateway_effectiveSectionInfoForSectionID___block_invoke_cold_1();
  }
}

void __54__BBSettingsGateway_effectiveSectionInfoForSectionID___block_invoke_137(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40) != 0;
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got effective section info [ result: %ld ]", &v9, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)effectiveSectionInfoForSectionIDs:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Getting requested effective section infos (sync)", buf, 2u);
  }

  v6 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_140];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__BBSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke_141;
  v10[3] = &unk_278D2B2E8;
  v10[4] = &v12;
  [v7 getEffectiveSectionInfoForSectionIDs:v4 withHandler:v10];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __55__BBSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __55__BBSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke_cold_1();
  }
}

void __55__BBSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke_141(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v9 = 134217984;
    v10 = [v3 count];
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Got %ld effective section infos", &v9, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveSectionInfoForSectionIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v9 = [v8 remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__BBSettingsGateway_getEffectiveSectionInfoForSectionIDs_withCompletion___block_invoke;
  v11[3] = &unk_278D2B298;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 getEffectiveSectionInfoForSectionIDs:v7 withHandler:v11];
}

void __73__BBSettingsGateway_getEffectiveSectionInfoForSectionIDs_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__BBSettingsGateway_getEffectiveSectionInfoForSectionIDs_withCompletion___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)sectionInfoForSectionID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Getting requested section info (sync)", buf, 2u);
  }

  v6 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_143];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__BBSettingsGateway_sectionInfoForSectionID___block_invoke_144;
  v10[3] = &unk_278D2B338;
  v10[4] = &v12;
  [v7 getSectionInfoForSectionID:v4 withHandler:v10];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __45__BBSettingsGateway_sectionInfoForSectionID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __46__BBSettingsGateway_sectionInfoForSectionIDs___block_invoke_cold_1();
  }
}

void __45__BBSettingsGateway_sectionInfoForSectionID___block_invoke_144(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40) != 0;
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got section infos [ result: %ld ]", &v9, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getSectionInfoForSectionID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v9 = [v8 remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__BBSettingsGateway_getSectionInfoForSectionID_withCompletion___block_invoke;
  v11[3] = &unk_278D2B360;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 getSectionInfoForSectionID:v7 withHandler:v11];
}

void __63__BBSettingsGateway_getSectionInfoForSectionID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BBSettingsGateway_getSectionInfoForSectionID_withCompletion___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)getEffectiveSectionInfoForSectionID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v9 = [v8 remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__BBSettingsGateway_getEffectiveSectionInfoForSectionID_withCompletion___block_invoke;
  v11[3] = &unk_278D2B360;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 getEffectiveSectionInfoForSectionID:v7 withHandler:v11];
}

void __72__BBSettingsGateway_getEffectiveSectionInfoForSectionID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__BBSettingsGateway_getEffectiveSectionInfoForSectionID_withCompletion___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)activeSectionInfo
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  v3 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Getting active section infos (sync)", buf, 2u);
  }

  v4 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_146];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__BBSettingsGateway_activeSectionInfo__block_invoke_147;
  v8[3] = &unk_278D2B0F0;
  v8[4] = &v10;
  [v5 getSectionInfoForActiveSectionsWithHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __38__BBSettingsGateway_activeSectionInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __46__BBSettingsGateway_sectionInfoForSectionIDs___block_invoke_cold_1();
  }
}

void __38__BBSettingsGateway_activeSectionInfo__block_invoke_147(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v9 = 134217984;
    v10 = [v3 count];
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Got %ld section infos", &v9, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)allActiveSectionIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = [MEMORY[0x277CBEB98] set];
  v3 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_149];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__BBSettingsGateway_allActiveSectionIDs__block_invoke_150;
  v7[3] = &unk_278D2B388;
  v7[4] = &v8;
  [v4 getActiveSectionIDsWithHandler:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__BBSettingsGateway_allActiveSectionIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __40__BBSettingsGateway_allActiveSectionIDs__block_invoke_cold_1();
  }
}

void __40__BBSettingsGateway_allActiveSectionIDs__block_invoke_150(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7 && os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __40__BBSettingsGateway_allActiveSectionIDs__block_invoke_150_cold_1();
  }
}

- (id)allSectionIDs
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  v3 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Getting all section IDs (sync)", buf, 2u);
  }

  v4 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_153];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__BBSettingsGateway_allSectionIDs__block_invoke_154;
  v8[3] = &unk_278D2B0F0;
  v8[4] = &v10;
  [v5 getSectionIDsWithHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __34__BBSettingsGateway_allSectionIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __34__BBSettingsGateway_allSectionIDs__block_invoke_cold_1();
  }
}

void __34__BBSettingsGateway_allSectionIDs__block_invoke_154(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v12 = 134218242;
    v13 = [v5 count];
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Got %ld section IDs [ error: %{public}@ ]", &v12, 0x16u);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getSectionInfoForActiveSectionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__BBSettingsGateway_getSectionInfoForActiveSectionsWithCompletion___block_invoke;
  v8[3] = &unk_278D2B3B0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getSectionInfoForActiveSectionsWithHandler:v8];
}

void __67__BBSettingsGateway_getSectionInfoForActiveSectionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__BBSettingsGateway_getSectionInfoForActiveSectionsWithCompletion___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)setSectionInfo:(id)a3 forSectionID:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v12 = [v11 remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__BBSettingsGateway_setSectionInfo_forSectionID_withCompletion___block_invoke;
  v14[3] = &unk_278D2A9C8;
  v15 = v8;
  v13 = v8;
  [v12 setSectionInfo:v10 forSectionID:v9 withHandler:v14];
}

uint64_t __64__BBSettingsGateway_setSectionInfo_forSectionID_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateSectionInfoForSectionID:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v9 = [v8 remoteObjectProxy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__BBSettingsGateway_updateSectionInfoForSectionID_withHandler___block_invoke;
  v13[3] = &unk_278D2B3D8;
  v15 = v6;
  v16 = v7;
  v14 = v9;
  v10 = v6;
  v11 = v9;
  v12 = v7;
  [v11 getSectionInfoForSectionID:v10 withHandler:v13];
}

void __63__BBSettingsGateway_updateSectionInfoForSectionID_withHandler___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  [*(a1 + 32) setSectionInfo:v2 forSectionID:*(a1 + 40)];
}

- (void)setEffectiveGlobalContentPreviewsSetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_156];
  [v4 setEffectiveGlobalContentPreviewsSetting:a3 withHandler:&__block_literal_global_159];
}

void __62__BBSettingsGateway_setEffectiveGlobalContentPreviewsSetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __62__BBSettingsGateway_setEffectiveGlobalContentPreviewsSetting___block_invoke_cold_1();
  }
}

void __58__BBSettingsGateway_effectiveGlobalContentPreviewsSetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __58__BBSettingsGateway_effectiveGlobalContentPreviewsSetting__block_invoke_cold_1();
  }
}

void __58__BBSettingsGateway_effectiveGlobalContentPreviewsSetting__block_invoke_162(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBContentPreviewSetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalContentPreviewSetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalContentPreviewsSettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__BBSettingsGateway_getEffectiveGlobalContentPreviewsSettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalContentPreviewsSettingWithHandler:v8];
}

void __76__BBSettingsGateway_getEffectiveGlobalContentPreviewsSettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__BBSettingsGateway_getEffectiveGlobalContentPreviewsSettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)setEffectiveGlobalSpokenNotificationSetting:(int64_t)a3
{
  v4 = BBAnnounceSettingForSpokenNotificationSetting(a3);

  [(BBSettingsGateway *)self setEffectiveGlobalAnnounceSetting:v4];
}

- (int64_t)effectiveGlobalSpokenNotificationSetting
{
  v2 = [(BBSettingsGateway *)self effectiveGlobalAnnounceSetting];

  return BBSpokenNotificationSettingForAnnounceSetting(v2);
}

- (void)getEffectiveGlobalSpokenNotificationSettingWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__BBSettingsGateway_getEffectiveGlobalSpokenNotificationSettingWithCompletion___block_invoke;
  v6[3] = &unk_278D2B478;
  v7 = v4;
  v5 = v4;
  [(BBSettingsGateway *)self getEffectiveGlobalAnnounceSettingWithCompletion:v6];
}

uint64_t __79__BBSettingsGateway_getEffectiveGlobalSpokenNotificationSettingWithCompletion___block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = BBSpokenNotificationSettingForAnnounceSetting(a2);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)setEffectiveGlobalAnnounceSetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_166];
  [v4 setEffectiveGlobalAnnounceSetting:a3 withHandler:&__block_literal_global_169];
}

void __55__BBSettingsGateway_setEffectiveGlobalAnnounceSetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __55__BBSettingsGateway_setEffectiveGlobalAnnounceSetting___block_invoke_cold_1();
  }
}

void __51__BBSettingsGateway_effectiveGlobalAnnounceSetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __51__BBSettingsGateway_effectiveGlobalAnnounceSetting__block_invoke_cold_1();
  }
}

void __51__BBSettingsGateway_effectiveGlobalAnnounceSetting__block_invoke_172(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBAnnounceSetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalAnnounceSetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalAnnounceSettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__BBSettingsGateway_getEffectiveGlobalAnnounceSettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalAnnounceSettingWithHandler:v8];
}

void __69__BBSettingsGateway_getEffectiveGlobalAnnounceSettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__BBSettingsGateway_getEffectiveGlobalAnnounceSettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)setEffectiveGlobalAnnounceHeadphonesSetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_174];
  [v4 setEffectiveGlobalAnnounceHeadphonesSetting:a3 withHandler:&__block_literal_global_177];
}

void __65__BBSettingsGateway_setEffectiveGlobalAnnounceHeadphonesSetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __65__BBSettingsGateway_setEffectiveGlobalAnnounceHeadphonesSetting___block_invoke_cold_1();
  }
}

void __61__BBSettingsGateway_effectiveGlobalAnnounceHeadphonesSetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __61__BBSettingsGateway_effectiveGlobalAnnounceHeadphonesSetting__block_invoke_cold_1();
  }
}

void __61__BBSettingsGateway_effectiveGlobalAnnounceHeadphonesSetting__block_invoke_180(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBAnnounceSetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalAnnounceHeadphonesSetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalAnnounceHeadphonesSettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__BBSettingsGateway_getEffectiveGlobalAnnounceHeadphonesSettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalAnnounceHeadphonesSettingWithHandler:v8];
}

void __79__BBSettingsGateway_getEffectiveGlobalAnnounceHeadphonesSettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__BBSettingsGateway_getEffectiveGlobalAnnounceHeadphonesSettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)setEffectiveGlobalAnnounceCarPlaySetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_182];
  [v4 setEffectiveGlobalAnnounceCarPlaySetting:a3 withHandler:&__block_literal_global_185];
}

void __62__BBSettingsGateway_setEffectiveGlobalAnnounceCarPlaySetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __62__BBSettingsGateway_setEffectiveGlobalAnnounceCarPlaySetting___block_invoke_cold_1();
  }
}

void __58__BBSettingsGateway_effectiveGlobalAnnounceCarPlaySetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __58__BBSettingsGateway_effectiveGlobalAnnounceCarPlaySetting__block_invoke_cold_1();
  }
}

void __58__BBSettingsGateway_effectiveGlobalAnnounceCarPlaySetting__block_invoke_188(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBAnnounceCarPlaySetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalAnnounceCarPlaySetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalAnnounceCarPlaySettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__BBSettingsGateway_getEffectiveGlobalAnnounceCarPlaySettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalAnnounceCarPlaySettingWithHandler:v8];
}

void __76__BBSettingsGateway_getEffectiveGlobalAnnounceCarPlaySettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__BBSettingsGateway_getEffectiveGlobalAnnounceCarPlaySettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)setEffectiveGlobalScheduledDeliverySetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_190];
  [v4 setEffectiveGlobalScheduledDeliverySetting:a3 withHandler:&__block_literal_global_193];
}

void __64__BBSettingsGateway_setEffectiveGlobalScheduledDeliverySetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __64__BBSettingsGateway_setEffectiveGlobalScheduledDeliverySetting___block_invoke_cold_1();
  }
}

void __60__BBSettingsGateway_effectiveGlobalScheduledDeliverySetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __60__BBSettingsGateway_effectiveGlobalScheduledDeliverySetting__block_invoke_cold_1();
  }
}

void __60__BBSettingsGateway_effectiveGlobalScheduledDeliverySetting__block_invoke_196(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBScheduledDeliverySetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalScheduledDeliverySetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalScheduledDeliverySettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__BBSettingsGateway_getEffectiveGlobalScheduledDeliverySettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalScheduledDeliverySettingWithHandler:v8];
}

void __78__BBSettingsGateway_getEffectiveGlobalScheduledDeliverySettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__BBSettingsGateway_getEffectiveGlobalScheduledDeliverySettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)setEffectiveGlobalScheduledDeliveryTimes:(id)a3
{
  v4 = a3;
  v6 = [(BBSettingsGateway *)self _settingsConnection];
  v5 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_198];
  [v5 setEffectiveGlobalScheduledDeliveryTimes:v4 withHandler:&__block_literal_global_201];
}

void __62__BBSettingsGateway_setEffectiveGlobalScheduledDeliveryTimes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __62__BBSettingsGateway_setEffectiveGlobalScheduledDeliveryTimes___block_invoke_cold_1();
  }
}

void __58__BBSettingsGateway_effectiveGlobalScheduledDeliveryTimes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __58__BBSettingsGateway_effectiveGlobalScheduledDeliveryTimes__block_invoke_cold_1();
  }
}

void __58__BBSettingsGateway_effectiveGlobalScheduledDeliveryTimes__block_invoke_204(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalScheduledDeliveryTimes (sync) [ error: %{public}@ ]", &v11, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalScheduledDeliveryTimesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__BBSettingsGateway_getEffectiveGlobalScheduledDeliveryTimesWithCompletion___block_invoke;
  v8[3] = &unk_278D2B3B0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalScheduledDeliveryTimesWithHandler:v8];
}

void __76__BBSettingsGateway_getEffectiveGlobalScheduledDeliveryTimesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__BBSettingsGateway_getEffectiveGlobalScheduledDeliveryTimesWithCompletion___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_206];
  [v4 setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:a3 withHandler:&__block_literal_global_209];
}

void __79__BBSettingsGateway_setEffectiveGlobalScheduledDeliveryShowNextSummarySetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __79__BBSettingsGateway_setEffectiveGlobalScheduledDeliveryShowNextSummarySetting___block_invoke_cold_1();
  }
}

void __75__BBSettingsGateway_effectiveGlobalScheduledDeliveryShowNextSummarySetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __75__BBSettingsGateway_effectiveGlobalScheduledDeliveryShowNextSummarySetting__block_invoke_cold_1();
  }
}

void __75__BBSettingsGateway_effectiveGlobalScheduledDeliveryShowNextSummarySetting__block_invoke_212(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBSystemSetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalScheduledDeliveryShowNextSummarySetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__BBSettingsGateway_getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler:v8];
}

void __93__BBSettingsGateway_getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __93__BBSettingsGateway_getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)setEffectiveGlobalNotificationListDisplayStyleSetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_214];
  [v4 setEffectiveGlobalNotificationListDisplayStyleSetting:a3 withHandler:&__block_literal_global_217];
}

void __75__BBSettingsGateway_setEffectiveGlobalNotificationListDisplayStyleSetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __75__BBSettingsGateway_setEffectiveGlobalNotificationListDisplayStyleSetting___block_invoke_cold_1();
  }
}

void __71__BBSettingsGateway_effectiveGlobalNotificationListDisplayStyleSetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __71__BBSettingsGateway_effectiveGlobalNotificationListDisplayStyleSetting__block_invoke_cold_1();
  }
}

void __71__BBSettingsGateway_effectiveGlobalNotificationListDisplayStyleSetting__block_invoke_220(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBNotificationListDisplayStyleSetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalNotificationListDisplayStyleSetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalNotificationListDisplayStyleSettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__BBSettingsGateway_getEffectiveGlobalNotificationListDisplayStyleSettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler:v8];
}

void __89__BBSettingsGateway_getEffectiveGlobalNotificationListDisplayStyleSettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__BBSettingsGateway_getEffectiveGlobalNotificationListDisplayStyleSettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)setEffectiveGlobalSummarizationSetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_222];
  [v4 setEffectiveGlobalSummarizationSetting:a3 withHandler:&__block_literal_global_225];
}

void __60__BBSettingsGateway_setEffectiveGlobalSummarizationSetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __60__BBSettingsGateway_setEffectiveGlobalSummarizationSetting___block_invoke_cold_1();
  }
}

void __56__BBSettingsGateway_effectiveGlobalSummarizationSetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __56__BBSettingsGateway_effectiveGlobalSummarizationSetting__block_invoke_cold_1();
  }
}

void __56__BBSettingsGateway_effectiveGlobalSummarizationSetting__block_invoke_228(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBSystemSetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalSummarizationSetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalSummarizationSettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__BBSettingsGateway_getEffectiveGlobalSummarizationSettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalSummarizationSettingWithHandler:v8];
}

void __74__BBSettingsGateway_getEffectiveGlobalSummarizationSettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__BBSettingsGateway_getEffectiveGlobalSummarizationSettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)setEffectiveGlobalHighlightsSetting:(int64_t)a3
{
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_230];
  [v4 setEffectiveGlobalHighlightsSetting:a3 withHandler:&__block_literal_global_233];
}

void __57__BBSettingsGateway_setEffectiveGlobalHighlightsSetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __57__BBSettingsGateway_setEffectiveGlobalHighlightsSetting___block_invoke_cold_1();
  }
}

void __53__BBSettingsGateway_effectiveGlobalHighlightsSetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __53__BBSettingsGateway_effectiveGlobalHighlightsSetting__block_invoke_cold_1();
  }
}

void __53__BBSettingsGateway_effectiveGlobalHighlightsSetting__block_invoke_236(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BBStringFromBBSystemSetting(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalHighlightsSetting (sync) [ result: %@, error: %{public}@ ]", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEffectiveGlobalHighlightsSettingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BBSettingsGateway *)self _settingsConnection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__BBSettingsGateway_getEffectiveGlobalHighlightsSettingWithCompletion___block_invoke;
  v8[3] = &unk_278D2B450;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getEffectiveGlobalHighlightsSettingWithHandler:v8];
}

void __71__BBSettingsGateway_getEffectiveGlobalHighlightsSettingWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__BBSettingsGateway_getEffectiveGlobalHighlightsSettingWithCompletion___block_invoke_2;
  v4[3] = &unk_278D2B428;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)refreshAnnounceSettings
{
  v3 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 refreshAnnounceSettings];
}

- (void)refreshGlobalSettings
{
  v3 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 refreshGlobalSettings];
}

- (void)refreshSectionInfo
{
  v3 = [(BBSettingsGateway *)self _ensureBBServerSettingsConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 refreshSectionInfo];
}

void __44__BBSettingsGateway_allEffectiveSectionInfo__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting all effective section infos failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__BBSettingsGateway_allSectionInfo__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting all section infos failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__BBSettingsGateway_sectionInfoForSectionIDs___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting requested section infos failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__BBSettingsGateway_effectiveSectionInfoForSectionID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting requested effective section info failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__BBSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting requested effective section infos failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__BBSettingsGateway_allActiveSectionIDs__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting all active section IDs failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__BBSettingsGateway_allActiveSectionIDs__block_invoke_150_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Error getting active section IDs: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __34__BBSettingsGateway_allSectionIDs__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting requested all section IDs failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__BBSettingsGateway_setEffectiveGlobalContentPreviewsSetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Setting effectiveGlobalContentPreviewSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__BBSettingsGateway_effectiveGlobalContentPreviewsSetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalContentPreviewSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__BBSettingsGateway_setEffectiveGlobalAnnounceSetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set setEffectiveGlobalAnnounceSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__BBSettingsGateway_effectiveGlobalAnnounceSetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalAnnounceSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__BBSettingsGateway_setEffectiveGlobalAnnounceHeadphonesSetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set effectiveGlobalAnnounceHeadphonesSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__BBSettingsGateway_effectiveGlobalAnnounceHeadphonesSetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalAnnounceHeadphonesSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__BBSettingsGateway_setEffectiveGlobalAnnounceCarPlaySetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set effectiveGlobalAnnounceCarPlaySetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__BBSettingsGateway_effectiveGlobalAnnounceCarPlaySetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalAnnounceCarPlaySetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__BBSettingsGateway_setEffectiveGlobalScheduledDeliverySetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set effectiveGlobalScheduledDeliverySetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__BBSettingsGateway_effectiveGlobalScheduledDeliverySetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalScheduledDeliverySetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__BBSettingsGateway_setEffectiveGlobalScheduledDeliveryTimes___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set effectiveGlobalScheduledDeliveryTimes (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__BBSettingsGateway_effectiveGlobalScheduledDeliveryTimes__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalScheduledDeliveryTimes (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__BBSettingsGateway_setEffectiveGlobalScheduledDeliveryShowNextSummarySetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set effectiveGlobalScheduledDeliveryShowNextSummarySetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__BBSettingsGateway_effectiveGlobalScheduledDeliveryShowNextSummarySetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalScheduledDeliveryShowNextSummarySetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__BBSettingsGateway_setEffectiveGlobalNotificationListDisplayStyleSetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set effectiveGlobalNotificationListDisplayStyleSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__BBSettingsGateway_effectiveGlobalNotificationListDisplayStyleSetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalNotificationListDisplayStyleSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__BBSettingsGateway_setEffectiveGlobalSummarizationSetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set setEffectiveGlobalSummarizationSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__BBSettingsGateway_effectiveGlobalSummarizationSetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalSummarizationSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__BBSettingsGateway_setEffectiveGlobalHighlightsSetting___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Set setEffectiveGlobalHighlightsSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__BBSettingsGateway_effectiveGlobalHighlightsSetting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241EFF000, v0, v1, "Getting effectiveGlobalHighlightsSetting (sync) failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end