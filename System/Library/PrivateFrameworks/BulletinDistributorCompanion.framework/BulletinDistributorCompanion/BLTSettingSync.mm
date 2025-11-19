@interface BLTSettingSync
- (BLTSettingSync)initWithSectionConfiguration:(id)a3 queue:(id)a4;
- (BLTSettingSync)initWithSectionConfiguration:(id)a3 queue:(id)a4 watchKitAppList:(id)a5;
- (BOOL)isSectionInfoSentCacheEmpty;
- (BOOL)sectionInfoList:(id)a3 override:(id)a4 shouldApplyToSectionInfoForSectionID:(id)a5;
- (BOOL)sectionInfoListSectionIDHadDisplayedCriticalBulletins:(id)a3;
- (id)_filteredAlertingSectionIDs:(id)a3;
- (unint64_t)_fetchSettingSyncMaxCountOverride;
- (unint64_t)_fetchSyncState;
- (unint64_t)performSyncIfNeededForSectionID:(id)a3 gizmoSectionInfo:(id)a4 completion:(id)a5;
- (void)_addReloadBBCompletion:(id)a3 sectionID:(id)a4;
- (void)_callAndRemoveReloadBBCompletion:(id)a3 sectionID:(id)a4;
- (void)_callReloadBBCompletionsForSectionID:(id)a3;
- (void)_initSettingSyncSendQueueMaxConcurrentSendCount;
- (void)_sendSpooledSyncWithCompletion:(id)a3 withProgress:(id)a4;
- (void)_sendSyncSupportedAppListWithInstalled:(id)a3 removed:(id)a4;
- (void)_setupSectionInfoListWithCompletion:(id)a3;
- (void)_spoolInitialSync;
- (void)_storeSyncState:(unint64_t)a3;
- (void)clearSectionInfoSentCache;
- (void)dealloc;
- (void)handleAllSyncComplete;
- (void)makeAuthorizationPermanentForSectionID:(id)a3;
- (void)observer:(id)a3 noteSectionParametersChanged:(id)a4 forSectionID:(id)a5;
- (void)performInitialSyncWithProgress:(id)a3 completion:(id)a4;
- (void)sectionConfiguration:(id)a3 addedSectionIDs:(id)a4 removedSectionIDs:(id)a5;
- (void)sectionInfoList:(id)a3 receivedRemoveSectionWithSectionID:(id)a4 transaction:(id)a5;
- (void)sectionInfoList:(id)a3 receivedUpdatedSectionInfoForSectionID:(id)a4 transaction:(id)a5;
- (void)sendAllSectionInfoWithSpool:(BOOL)a3 completion:(id)a4;
- (void)sendRemoveSectionWithSectionID:(id)a3 sent:(id)a4;
- (void)sendSectionInfosWithSectionIDs:(id)a3 completion:(id)a4 spoolToFile:(BOOL)a5;
- (void)setNotificationsLevel:(unint64_t)a3 sectionID:(id)a4 mirror:(BOOL)a5 fromRemote:(BOOL)a6;
- (void)setSectionInfo:(id)a3 keypaths:(id)a4 completion:(id)a5;
- (void)spoolSectionInfoWithCompletion:(id)a3;
- (void)syncSupportedAppListUpdated:(id)a3;
@end

@implementation BLTSettingSync

- (BLTSettingSync)initWithSectionConfiguration:(id)a3 queue:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[BLTSettingSync initWithSectionConfiguration:queue:]", "BLTSettingSync.m", 89, "0");
}

- (BLTSettingSync)initWithSectionConfiguration:(id)a3 queue:(id)a4 watchKitAppList:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38.receiver = self;
  v38.super_class = BLTSettingSync;
  v11 = [(BLTSettingSyncInternal *)&v38 initWithSectionConfiguration:v8 queue:v9];
  v12 = v11;
  if (v11)
  {
    [(BLTSettingSyncInternal *)v11 connect];
    if (initWithSectionConfiguration_queue_watchKitAppList__onceToken != -1)
    {
      [BLTSettingSync initWithSectionConfiguration:queue:watchKitAppList:];
    }

    v13 = [MEMORY[0x277CBEB38] dictionary];
    reloadBBCompletions = v12->_reloadBBCompletions;
    v12->_reloadBBCompletions = v13;

    objc_storeStrong(&v12->_watchKitAppList, a5);
    v15 = objc_alloc_init(BLTMuteSync);
    [(BLTSettingSyncInternal *)v12 setMuteSync:v15];
    [v8 setDelegate:v12];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.bulletindistributor.sectionInfoSyncCoordinator", v16);
    sectionInfoSyncCoordinatorQueue = v12->_sectionInfoSyncCoordinatorQueue;
    v12->_sectionInfoSyncCoordinatorQueue = v17;

    [(BLTSettingSync *)v12 _initSettingSyncSendQueueMaxConcurrentSendCount];
    v19 = [[BLTSettingSyncSendQueue alloc] initWithMaxConcurrentSendCount:v12->_settingSyncSendQueueMaxConcurrentSendCount];
    settingSendQueue = v12->_settingSendQueue;
    v12->_settingSendQueue = v19;

    [(BLTSettingSyncSendQueue *)v12->_settingSendQueue setIconAllowList:sectionParameterSubtypeIconSectionIDAllowList];
    objc_initWeak(&location, v12);
    v21 = v12->_settingSendQueue;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_2;
    v35[3] = &unk_278D329D0;
    objc_copyWeak(&v36, &location);
    [(BLTSettingSyncSendQueue *)v21 setSectionParametersProvider:v35];
    v22 = v12->_settingSendQueue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_4;
    v33[3] = &unk_278D32A98;
    objc_copyWeak(&v34, &location);
    [(BLTSettingSyncSendQueue *)v22 setSectionInfoSender:v33];
    v23 = v12->_settingSendQueue;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_5;
    v31[3] = &unk_278D32AE8;
    objc_copyWeak(&v32, &location);
    [(BLTSettingSyncSendQueue *)v23 setSectionIconSender:v31];
    v24 = v12->_settingSendQueue;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_2_22;
    v29 = &unk_278D32B10;
    objc_copyWeak(&v30, &location);
    [(BLTSettingSyncSendQueue *)v24 setSectionRemoveSender:&v26];
    [(BLTSettingSync *)v12 _spoolInitialSync:v26];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke()
{
  v0 = sectionParameterSubtypeIconSectionIDAllowList;
  sectionParameterSubtypeIconSectionIDAllowList = &unk_28544B880;
}

void __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained observer];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_3;
  v10[3] = &unk_278D329A8;
  v11 = v5;
  v9 = v5;
  [v8 getParametersForSectionID:v6 withCompletion:v10];
}

uint64_t __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_4(uint64_t a1, void *a2, void *a3, char a4, void *a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = objc_autoreleasePoolPush();
  v15 = blt_settings_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_INFO, "Sending info %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x2020000000;
  v31 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = [WeakRetained connection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_13;
  v26[3] = &unk_278D32A20;
  v27 = v12;
  p_buf = &buf;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_3_16;
  v21[3] = &unk_278D32A70;
  v18 = v27;
  v22 = v18;
  v19 = v13;
  v25 = a4;
  v23 = v19;
  v24 = &buf;
  [v17 setSectionInfo:v11 withSent:v26 withAcknowledgement:v21 keypaths:0 spoolToFile:a6];

  if (v19 && (a4 & 1) == 0)
  {
    (*(v19 + 2))(v19, 1, 1);
  }

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(v14);

  v20 = *MEMORY[0x277D85DE8];
}

void __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_13(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_2_14;
  v3[3] = &unk_278D329F8;
  v2 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = a2;
  dispatch_async(v2, v3);
}

void __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_3_16(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_4_17;
  block[3] = &unk_278D32A48;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = *(a1 + 56);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v11 = a2;
  dispatch_async(v4, block);
}

uint64_t __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_4_17(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (*(a1 + 48) == 1)
    {
      return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24), *(a1 + 49));
    }
  }

  return result;
}

void __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_5(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, void *a7, char a8)
{
  v33 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = objc_autoreleasePoolPush();
  v20 = blt_settings_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v16;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&dword_241FB3000, v20, OS_LOG_TYPE_INFO, "Sending section icon for section %@, subtype %ld", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v22 = [WeakRetained connection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_20;
  v26[3] = &unk_278D32AC0;
  v23 = v18;
  v27 = v23;
  v28 = a6;
  LOBYTE(v25) = a8;
  [v22 setSectionSubtypeParametersIcon:v15 forSectionID:v16 forSubtypeID:a4 withQueue:v17 withSent:0 withAcknowledgement:v26 spoolToFile:v25];

  if (v23 && (a6 & 1) == 0)
  {
    (*(v23 + 2))(v23, 1);
  }

  objc_autoreleasePoolPop(v19);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_20(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (*(a1 + 40) == 1)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void __69__BLTSettingSync_initWithSectionConfiguration_queue_watchKitAppList___block_invoke_2_22(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = blt_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_INFO, "Sending remove section %@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained connection];
  [v9 removeSectionWithSectionID:v5 sent:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_storeSyncState:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = blt_settings_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "Storing send sync state";
      v6 = &v8;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!a3)
  {
    v4 = blt_settings_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "Storing idle sync state";
      v6 = &v9;
LABEL_7:
      _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a3, v8}];
  CFPreferencesSetAppValue(@"BLTSettingSyncState", v7, @"com.apple.bulletindistributor");
  CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
}

- (unint64_t)_fetchSyncState
{
  CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");

  return CFPreferencesGetAppIntegerValue(@"BLTSettingSyncState", @"com.apple.bulletindistributor", 0);
}

- (unint64_t)_fetchSettingSyncMaxCountOverride
{
  v21 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BLTSettingSyncSendQueueMaxConcurrentSendCount", @"com.apple.bulletindistributor", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    goto LABEL_6;
  }

  v3 = AppIntegerValue;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = CFPreferencesCopyAppValue(@"BLTSettingSyncSendQueueMaxConcurrentSendCountTimestamp", @"com.apple.bulletindistributor");
  [v7 doubleValue];
  v9 = v8;

  v10 = blt_settings_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v16 = v3;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_INFO, "Found override value: %ld timestamp: %f now: %f", buf, 0x20u);
  }

  if (v6 > v9 + 86400.0)
  {
    CFPreferencesSetAppValue(@"BLTSettingSyncSendQueueMaxConcurrentSendCount", 0, @"com.apple.bulletindistributor");
LABEL_6:
    result = 2;
    goto LABEL_12;
  }

  v12 = 4;
  if (v3 < 4)
  {
    v12 = v3;
  }

  if (v12 <= 1)
  {
    result = 1;
  }

  else
  {
    result = v12;
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_initSettingSyncSendQueueMaxConcurrentSendCount
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = blt_settings_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_INFO, "Initializing sync send queue max concurrent send count", &v11, 2u);
  }

  self->_settingSyncSendQueueMaxConcurrentSendCount = 2;
  if ([(BLTSettingSync *)self _fetchSyncState]== 1)
  {
    v4 = blt_settings_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_INFO, "Detected in section info send", &v11, 2u);
    }

    CFPreferencesSetAppValue(@"BLTSettingSyncSendQueueMaxConcurrentSendCount", &unk_28544B5B0, @"com.apple.bulletindistributor");
    v5 = MEMORY[0x277CCABB0];
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];

    CFPreferencesSetAppValue(@"BLTSettingSyncSendQueueMaxConcurrentSendCountTimestamp", v7, @"com.apple.bulletindistributor");
    CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
    self->_settingSyncSendQueueMaxConcurrentSendCount = 1;
    [(BLTSettingSync *)self _storeSyncState:0];
  }

  else
  {
    self->_settingSyncSendQueueMaxConcurrentSendCount = [(BLTSettingSync *)self _fetchSettingSyncMaxCountOverride];
  }

  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    settingSyncSendQueueMaxConcurrentSendCount = self->_settingSyncSendQueueMaxConcurrentSendCount;
    v11 = 134217984;
    v12 = settingSyncSendQueueMaxConcurrentSendCount;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_INFO, "Sync send queue max concurrent send count set to %lu", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setupSectionInfoListWithCompletion:(id)a3
{
  v15 = a3;
  sectionInfoList = self->_sectionInfoList;
  if (!sectionInfoList)
  {
    v5 = objc_alloc_init(BLTSectionInfoList);
    v6 = self->_sectionInfoList;
    self->_sectionInfoList = v5;

    v7 = [BLTSectionInfoListBBProvider alloc];
    v8 = [(BLTSettingSyncInternal *)self settingsGateway];
    v9 = [(BLTSectionInfoListBBProvider *)v7 initWithSettingsGateway:v8];

    [(BLTSectionInfoList *)self->_sectionInfoList setSectionInfoProvider:v9];
    v10 = [BLTSectionInfoListBridgeProvider alloc];
    v11 = [(BLTSettingSyncInternal *)self sectionConfiguration];
    v12 = [(BLTSectionInfoListBridgeProvider *)v10 initWithSectionConfiguration:v11];
    bridgeProvider = self->_bridgeProvider;
    self->_bridgeProvider = v12;

    [(BLTSectionInfoList *)self->_sectionInfoList setOverrideProvider:self->_bridgeProvider];
    [(BLTSectionInfoList *)self->_sectionInfoList setDelegate:self];

    sectionInfoList = self->_sectionInfoList;
  }

  if ([(BLTSectionInfoList *)sectionInfoList hasLoaded])
  {
    v14 = v15;
    if (!v15)
    {
      goto LABEL_8;
    }

    (*(v15 + 2))(v15);
  }

  else
  {
    [(BLTSectionInfoList *)self->_sectionInfoList reloadWithCompletion:v15];
  }

  v14 = v15;
LABEL_8:
}

- (void)performInitialSyncWithProgress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "PSY says sync! sectionInfo push!", buf, 2u);
  }

  self->_initialSyncPerformed = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke;
  v11[3] = &unk_278D32B60;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(BLTSettingSync *)self _setupSectionInfoListWithCompletion:v11];
}

void __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke(uint64_t a1)
{
  v2 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke_2;
  block[3] = &unk_278D32B60;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke_2(uint64_t a1)
{
  v2 = blt_settings_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "Section info list reloaded due to PSY sync; syncing", buf, 2u);
  }

  v3 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsFileSettingSync];
  v4 = *(a1 + 32);
  if (v3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke_3;
    v9[3] = &unk_278D314F0;
    v5 = &v10;
    v10 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke_4;
    v7[3] = &unk_278D32B38;
    v6 = &v8;
    v8 = *(a1 + 48);
    [v4 _sendSpooledSyncWithCompletion:v9 withProgress:v7];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke_40;
    v13[3] = &unk_278D314F0;
    v5 = &v14;
    v14 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke_2_41;
    v11[3] = &unk_278D32B38;
    v6 = &v12;
    v12 = *(a1 + 48);
    [v4 _updateAllBBSectionsWithCompletion:v13 withProgress:v11 spoolToFile:0];
  }
}

uint64_t __60__BLTSettingSync_performInitialSyncWithProgress_completion___block_invoke_4(uint64_t a1, double a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = blt_settings_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "Setting sync completion: %f", &v7, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))(a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)performSyncIfNeededForSectionID:(id)a3 gizmoSectionInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__BLTSettingSync_performSyncIfNeededForSectionID_gizmoSectionInfo_completion___block_invoke;
  v16[3] = &unk_278D32BD8;
  v11 = v9;
  v17 = v11;
  v18 = self;
  v12 = v8;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v21 = &v22;
  [(BLTSettingSync *)self _setupSectionInfoListWithCompletion:v16];
  v14 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __78__BLTSettingSync_performSyncIfNeededForSectionID_gizmoSectionInfo_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v2 = [*(a1 + 32) mappedSectionID];
  v3 = v2 == 0;

  if (v3)
  {
    v19 = *(a1 + 40);
    v4 = *(v19 + 104);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__BLTSettingSync_performSyncIfNeededForSectionID_gizmoSectionInfo_completion___block_invoke_2;
    block[3] = &unk_278D32B88;
    v5 = *(&v19 + 1);
    *&v6 = *(a1 + 56);
    *(&v6 + 1) = *(a1 + 64);
    v24 = v19;
    v25 = v6;
    v26 = &v27;
    dispatch_sync(v4, block);
  }

  if ((v28[3] & 1) == 0)
  {
    [*(*(a1 + 40) + 72) mapSection:*(a1 + 48) map:*(a1 + 32)];
    v7 = [*(a1 + 32) mappedSectionID];
    v8 = v7;
    if (!v7)
    {
      v8 = *(a1 + 48);
    }

    v9 = v8;
    v10 = [*(*(a1 + 40) + 72) bbSectionInfoForSectionID:v9];
    if (v10)
    {
      v11 = *(a1 + 40);
      if (!v7 && (v11[112] & 1) != 0)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        v12 = *(a1 + 56);
        if (v12)
        {
          (*(v12 + 16))();
        }

        goto LABEL_18;
      }

      v31 = v9;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:{1, v19}];
      [v11 sendSectionInfosWithSectionIDs:v17 completion:*(a1 + 56) spoolToFile:0];
    }

    else
    {
      v13 = blt_settings_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        *buf = 138412290;
        v33 = v9;
        _os_log_impl(&dword_241FB3000, v13, 0x90u, "Section needs sync but doesn't exist in BB: %@", buf, 0xCu);
      }

      _BLTCaptureBug(@"SectionInfoDoesNotExist");
      v14 = [*(a1 + 56) copy];
      if (v14)
      {
        [*(a1 + 40) _addReloadBBCompletion:v14 sectionID:v9];
      }

      v15 = *(a1 + 40);
      v16 = *(v15 + 72);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __78__BLTSettingSync_performSyncIfNeededForSectionID_gizmoSectionInfo_completion___block_invoke_46;
      v20[3] = &unk_278D32BB0;
      v20[4] = v15;
      v17 = v14;
      v22 = v17;
      v21 = v9;
      [v16 reloadBBSection:v21 completion:v20];
    }

LABEL_18:
  }

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x277D85DE8];
}

void __78__BLTSettingSync_performSyncIfNeededForSectionID_gizmoSectionInfo_completion___block_invoke_2(void *a1)
{
  v1 = *(a1[4] + 96);
  if (v1)
  {
    v3 = a1[5];
    v4 = BLTWorkQueue();
    v5 = [v1 performSyncForSectionID:v3 queue:v4 completion:a1[6]];

    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      if (v5 != 3)
      {
LABEL_7:
        *(*(a1[8] + 8) + 24) = 1;
        return;
      }

      v6 = 0;
    }

    *(*(a1[7] + 8) + 24) = v6;
    goto LABEL_7;
  }
}

uint64_t __78__BLTSettingSync_performSyncIfNeededForSectionID_gizmoSectionInfo_completion___block_invoke_46(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _callAndRemoveReloadBBCompletion:*(result + 48) sectionID:*(result + 40)];
  }

  return result;
}

- (void)_spoolInitialSync
{
  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsFileSettingSync])
  {
    v3 = [BLTTransaction transactionWithDescription:@"BLTSettingsSync _spoolInitialSync"];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __35__BLTSettingSync__spoolInitialSync__block_invoke;
    v5[3] = &unk_278D31400;
    v5[4] = self;
    v6 = v3;
    v4 = v3;
    [(BLTSettingSync *)self _setupSectionInfoListWithCompletion:v5];
  }
}

void __35__BLTSettingSync__spoolInitialSync__block_invoke(uint64_t a1)
{
  v2 = BLTWorkQueue();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__BLTSettingSync__spoolInitialSync__block_invoke_2;
  v4[3] = &unk_278D31400;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __35__BLTSettingSync__spoolInitialSync__block_invoke_2(uint64_t a1)
{
  v2 = blt_settings_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Section info list reloaded due to spooling section infos to file", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__BLTSettingSync__spoolInitialSync__block_invoke_52;
  v4[3] = &unk_278D31428;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _updateAllBBSectionsWithCompletion:v4 withProgress:0 spoolToFile:1];
}

- (void)_sendSpooledSyncWithCompletion:(id)a3 withProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Sending spooled settings", buf, 2u);
  }

  settingSendQueue = self->_settingSendQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke;
  v16[3] = &unk_278D32C00;
  v16[4] = self;
  v13 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke_4;
  v14[3] = &unk_278D314F0;
  v15 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke_5;
  v12[3] = &unk_278D32B38;
  v10 = v7;
  v11 = v6;
  [(BLTSettingSyncSendQueue *)settingSendQueue sendSpooledRequestsNowWithSender:v16 completion:v14 progress:v12];
}

void __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke_2;
  v12[3] = &unk_278D31A20;
  v13 = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke_3;
  v10[3] = &unk_278D32B38;
  v11 = v6;
  v8 = v6;
  v9 = v5;
  [v7 sendSpooledRequestsNowWithSent:v12 withAcknowledgement:v10];
}

uint64_t __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __62__BLTSettingSync__sendSpooledSyncWithCompletion_withProgress___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_sendSyncSupportedAppListWithInstalled:(id)a3 removed:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = BLTWorkQueue();
  dispatch_assert_queue_V2(v8);

  v9 = [v6 allKeys];
  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v12 = [MEMORY[0x277CBEB58] set];
    settingSendQueue = self->_settingSendQueue;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke;
    v49[3] = &unk_278D32C28;
    v50 = v9;
    v51 = self;
    v52 = v6;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke_57;
    v46[3] = &unk_278D32C50;
    v47 = v50;
    v48 = v12;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke_2;
    v44[3] = &unk_278D31400;
    v44[4] = self;
    v45 = v48;
    v14 = v48;
    [(BLTSettingSyncSendQueue *)settingSendQueue sendEffectiveSectionInfosUsingProvider:v49 count:v11 sectionInfoSendCompleted:v46 completion:v44 progress:&__block_literal_global_61 spoolToFile:0];
  }

  if ([v7 count])
  {
    v32 = v9;
    v34 = v6;
    v15 = dispatch_group_create();
    v16 = [v7 mutableCopy];
    v33 = v7;
    v17 = [v7 allObjects];
    v18 = self;
    v19 = [(BLTSettingSync *)self _filteredAlertingSectionIDs:v17];

    [v16 minusSet:v19];
    v20 = blt_general_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v19;
      _os_log_impl(&dword_241FB3000, v20, OS_LOG_TYPE_DEFAULT, "Sync supported apps removed but because bundle IDs still alert for notifications, not sending setting/icon removals for %@", buf, 0xCu);
    }

    v31 = v19;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v16;
    v21 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          dispatch_group_enter(v15);
          v26 = blt_general_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v55 = v25;
            _os_log_impl(&dword_241FB3000, v26, OS_LOG_TYPE_DEFAULT, "Removing sync supported app %@", buf, 0xCu);
          }

          v27 = v18->_settingSendQueue;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke_62;
          v38[3] = &unk_278D32C78;
          v39 = v15;
          [(BLTSettingSyncSendQueue *)v27 sendRemoveSectionWithSectionID:v25 sent:v38, v31];
        }

        v22 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v22);
    }

    v28 = BLTWorkQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke_2_63;
    block[3] = &unk_278D31400;
    block[4] = v18;
    v37 = obj;
    v29 = obj;
    dispatch_group_notify(v15, v28, block);

    v7 = v33;
    v6 = v34;
    v9 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
}

BLTPBSectionInfo *__65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [*(*(a1 + 40) + 72) effectiveSectionInfoForSectionID:v3];
  v5 = blt_general_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_INFO, "Sending bb section info for sync supported app %@", &v14, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_INFO, "Sending fake section info for sync supported app %@", &v14, 0xCu);
    }

    v4 = objc_alloc_init(BLTPBSectionInfo);
    [(BLTPBSectionInfo *)v4 setExcludeFromBulletinBoard:1];
    [(BLTPBSectionInfo *)v4 setSectionID:v3];
    v7 = [*(a1 + 48) objectForKeyedSubscript:v3];
    [(BLTPBSectionInfo *)v4 setDisplayName:v7];

    [(BLTPBSectionInfo *)v4 setAuthorizationStatus:0];
    v5 = BLTPBSectionIconFromBBSectionIcon(0, v3);
    [(BLTPBSectionInfo *)v4 setIcon:v5];
  }

  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(BLTPBSectionInfo *)v4 icon];
    v10 = [v9 variants];
    v11 = [v10 count];
    v14 = 134217984;
    v15 = v11;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_INFO, "Section info contains %lu icons", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

void __65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke_57(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    [*(a1 + 40) addObject:v4];
  }
}

void __65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 136);
  v3 = [MEMORY[0x277CBEB98] set];
  [v2 updateStoreWithInstalled:v1 removed:v3];
}

void __65__BLTSettingSync__sendSyncSupportedAppListWithInstalled_removed___block_invoke_2_63(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  v3 = [MEMORY[0x277CBEB98] set];
  [v2 updateStoreWithInstalled:v3 removed:*(a1 + 40)];
}

- (void)handleAllSyncComplete
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = BLTWorkQueue();
  dispatch_assert_queue_V2(v3);

  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsSiriActionAppList])
  {
    v4 = objc_alloc_init(BLTSyncSupportedAppList);
    syncSupportedAppList = self->_syncSupportedAppList;
    self->_syncSupportedAppList = v4;

    [(BLTSyncSupportedAppList *)self->_syncSupportedAppList setDelegate:self];
    v6 = [(BLTSyncSupportedAppList *)self->_syncSupportedAppList installed];
    v7 = [(BLTSyncSupportedAppList *)self->_syncSupportedAppList removed];
    v8 = blt_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = [v6 count];
      v12 = 2048;
      v13 = [v7 count];
      _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Sending sync supported app action list of %lu apps and removed %lu apps", &v10, 0x16u);
    }

    [(BLTSettingSync *)self _sendSyncSupportedAppListWithInstalled:v6 removed:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncSupportedAppListUpdated:(id)a3
{
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__BLTSettingSync_syncSupportedAppListUpdated___block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_async(v4, block);
}

void __46__BLTSettingSync_syncSupportedAppListUpdated___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 136) installed];
  v3 = [*(*(a1 + 32) + 136) removed];
  if ([v2 count] || objc_msgSend(v3, "count"))
  {
    v4 = blt_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = [v2 count];
      v8 = 2048;
      v9 = [v3 count];
      _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "Sending updated sync supported app action list of %lu apps and removed %lu apps", &v6, 0x16u);
    }

    [*(a1 + 32) _sendSyncSupportedAppListWithInstalled:v2 removed:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(BLTSettingSyncInternal *)self observer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = BLTSettingSync;
  [(BLTSettingSyncInternal *)&v4 dealloc];
}

- (BOOL)isSectionInfoSentCacheEmpty
{
  v2 = [(BLTSettingSyncInternal *)self connection];
  v3 = [v2 isSectionInfoSentCacheEmpty];

  return v3;
}

- (void)clearSectionInfoSentCache
{
  v2 = [(BLTSettingSyncInternal *)self connection];
  [v2 clearSectionInfoSentCache];
}

- (id)_filteredAlertingSectionIDs:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__BLTSettingSync__filteredAlertingSectionIDs___block_invoke;
  v11[3] = &unk_278D32CA0;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __46__BLTSettingSync__filteredAlertingSectionIDs___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (([*(a1 + 32) willNanoPresentNotificationForSectionID:? subsectionIDs:? subtype:?] & 0xFFFFFFFFFFFFFC7FLL) == 0 || (objc_msgSend(*(a1 + 32), "sectionConfiguration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "shouldSectionIDSettingsAlwaysSync:", v12), v3, v4) || (objc_msgSend(*(*(a1 + 32) + 72), "universalSectionIDForSectionID:", v12), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [*(a1 + 40) addObject:v12];
  }

  else
  {
    v6 = [*(a1 + 32) _overriddenSectionInfoForSectionID:v12];
    v7 = [v6 factorySectionID];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 32) sectionConfiguration];
      v10 = [v6 factorySectionID];
      v11 = [v9 shouldSectionIDSettingsAlwaysSync:v10];

      if (v11)
      {
        [*(a1 + 40) addObject:v12];
      }
    }
  }
}

void __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 96))
  {
    v1 = blt_settings_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_cold_1(v1);
    }
  }

  else
  {
    v3 = [BLTSectionInfoSyncCoordinator alloc];
    v4 = [*(a1 + 40) allObjects];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_69;
    v8[3] = &unk_278D32CC8;
    v8[4] = *(a1 + 32);
    v5 = [(BLTSectionInfoSyncCoordinator *)v3 initWithAlertingSectionIDs:v4 infoProvider:v8];
    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    *(v6 + 96) = v5;
  }
}

id __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_71;
  block[3] = &unk_278D32CF0;
  block[4] = v2;
  block[5] = &v7;
  block[6] = a2;
  dispatch_sync(v3, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_71(void *a1)
{
  v2 = [*(a1[4] + 96) effectiveSectionInfoForSectionIDIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_2_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_3;
  v4[3] = &unk_278D31928;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_sync(v3, v4);
}

void __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(*(a1 + 32) + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_5;
  block[3] = &unk_278D31428;
  v4 = WeakRetained;
  v7 = v4;
  dispatch_sync(v3, block);
  [v4 _storeSyncState:0];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __78__BLTSettingSync__updateAllBBSectionsWithCompletion_withProgress_spoolToFile___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  *(v1 + 96) = 0;
}

- (void)sendSectionInfosWithSectionIDs:(id)a3 completion:(id)a4 spoolToFile:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = BLTWorkQueue();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__BLTSettingSync_sendSectionInfosWithSectionIDs_completion_spoolToFile___block_invoke;
  v13[3] = &unk_278D32DE0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __72__BLTSettingSync_sendSectionInfosWithSectionIDs_completion_spoolToFile___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _filteredAlertingSectionIDs:*(a1 + 40)];
  v3 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 40)];
  [v3 minusSet:v2];
  v4 = [v2 count];
  v41 = v3;
  v42 = v2;
  v40 = v4;
  if (v4)
  {
    v5 = [v2 allObjects];
    v6 = blt_settings_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v5;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "Sending single section infos %@", buf, 0xCu);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v50;
      v11 = 0x27EC7C000uLL;
      v12 = 0x27EC7C000uLL;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v49 + 1) + 8 * i);
          v15 = [*(*(a1 + 32) + *(v11 + 3196)) watchKitAppDefinitionWithBundleID:v14];
          v16 = v15;
          if (v15)
          {
            if ([v15 runsIndependently])
            {
              if ([v16 isInstalled])
              {
                v17 = *(v12 + 3212);
                if (([*(*(a1 + 32) + v17) hasCustomSettingsSetForSectionID:v14] & 1) == 0)
                {
                  v18 = [*(*(a1 + 32) + v17) bbSectionInfoForSectionID:v14];
                  v19 = [v18 copy];

                  v20 = *(*(a1 + 32) + 120);
                  [v16 watchKitAppBundleID];
                  v21 = v7;
                  v23 = v22 = v12;
                  [v20 setCustomSettingsWithSectionInfo:v19 watchSectionID:v23];

                  v12 = v22;
                  v7 = v21;
                  v11 = 0x27EC7C000;
                }
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v9);
    }

    v24 = *(a1 + 32);
    v25 = *(v24 + 80);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __72__BLTSettingSync_sendSectionInfosWithSectionIDs_completion_spoolToFile___block_invoke_74;
    v47[3] = &unk_278D32DB8;
    v47[4] = v24;
    v48 = v7;
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v28 = v7;
    v4 = v40;
    [v25 sendEffectiveSectionInfosUsingProvider:v47 count:v40 sectionInfoSendCompleted:0 completion:v26 progress:0 spoolToFile:v27];

    v3 = v41;
    v2 = v42;
  }

  if ([v3 count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = v3;
    v30 = [v29 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v44;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v43 + 1) + 8 * j);
          v35 = [*(*(a1 + 32) + 72) sectionOverrideOnlyForSectionID:v34];
          v36 = blt_settings_log();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          if (v35)
          {
            if (v37)
            {
              *buf = 138412290;
              v56 = v34;
              _os_log_impl(&dword_241FB3000, v36, OS_LOG_TYPE_DEFAULT, "Sending single section settings override for %@", buf, 0xCu);
            }

            [*(a1 + 32) sendOverrideOnly:v35 sectionID:v34 spoolToFile:*(a1 + 56)];
          }

          else
          {
            if (v37)
            {
              *buf = 138412290;
              v56 = v34;
              _os_log_impl(&dword_241FB3000, v36, OS_LOG_TYPE_DEFAULT, "Not sending settings for %@ as it has no override and is not alerting", buf, 0xCu);
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v31);
    }

    v3 = v41;
    v2 = v42;
    v4 = v40;
  }

  if (!v4)
  {
    v38 = *(a1 + 48);
    if (v38)
    {
      (*(v38 + 16))();
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

id __72__BLTSettingSync_sendSectionInfosWithSectionIDs_completion_spoolToFile___block_invoke_74(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v4 = [v2 effectiveSectionInfoForSectionID:v3];

  return v4;
}

- (void)sendRemoveSectionWithSectionID:(id)a3 sent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BLTSettingSync_sendRemoveSectionWithSectionID_sent___block_invoke;
  block[3] = &unk_278D316A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__BLTSettingSync_sendRemoveSectionWithSectionID_sent___block_invoke(void *a1)
{
  v4 = [*(a1[4] + 144) watchKitAppDefinitionWithBundleID:a1[5]];
  if (v4 && [v4 runsIndependently] && objc_msgSend(v4, "isInstalled") && (objc_msgSend(*(a1[4] + 72), "hasCustomSettingsSetForSectionID:", a1[5]) & 1) == 0)
  {
    v2 = *(a1[4] + 120);
    v3 = [v4 watchKitAppBundleID];
    [v2 enableCustomSettingsForWatchSectionID:v3];
  }

  [*(a1[4] + 80) sendRemoveSectionWithSectionID:a1[5] sent:a1[6]];
}

- (void)sendAllSectionInfoWithSpool:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4 && ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsFileSettingSync] & 1) != 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__BLTSettingSync_sendAllSectionInfoWithSpool_completion___block_invoke_3;
    v10[3] = &unk_278D314F0;
    v7 = &v11;
    v11 = v6;
    v8 = v6;
    [(BLTSettingSync *)self _sendSpooledSyncWithCompletion:v10 withProgress:&__block_literal_global_78_0];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__BLTSettingSync_sendAllSectionInfoWithSpool_completion___block_invoke;
    v12[3] = &unk_278D314F0;
    v7 = &v13;
    v13 = v6;
    v9 = v6;
    [(BLTSettingSync *)self _updateAllBBSectionsWithCompletion:v12 withProgress:&__block_literal_global_76 spoolToFile:0];
  }
}

uint64_t __57__BLTSettingSync_sendAllSectionInfoWithSpool_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __57__BLTSettingSync_sendAllSectionInfoWithSpool_completion___block_invoke_3(uint64_t a1)
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
  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsFileSettingSync])
  {
    [(BLTSettingSync *)self _updateAllBBSectionsWithCompletion:v4 withProgress:0 spoolToFile:1];
  }
}

- (void)setSectionInfo:(id)a3 keypaths:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = blt_settings_log();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v8;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_241FB3000, v12, OS_LOG_TYPE_DEFAULT, "setSectionInfo: %@ keypaths: %@", buf, 0x16u);
    }

    v13 = BBSectionInfoFromBLTPBSectionInfo(v8);
    v14 = [(BLTSettingSyncInternal *)self settingsGateway];
    v15 = [v8 sectionID];
    v16 = [v14 sectionInfoForSectionID:v15];

    if ([v9 count])
    {
      [v16 applyKeypaths:v9 from:v13];
      v17 = v16;

      v13 = v17;
    }

    v18 = objc_alloc(MEMORY[0x277CC1E70]);
    v19 = [v13 sectionID];
    v36 = 0;
    v20 = [v18 initWithBundleIdentifier:v19 allowPlaceholder:0 error:&v36];
    v21 = v36;

    if (v21)
    {
      v22 = blt_settings_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [BLTSettingSync setSectionInfo:v8 keypaths:v21 completion:v22];
      }
    }

    if (v20)
    {
      v23 = blt_settings_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v38 = v8;
        v39 = 2112;
        v40 = v20;
        _os_log_impl(&dword_241FB3000, v23, OS_LOG_TYPE_DEFAULT, "setSectionInfo: %@ record: %@", buf, 0x16u);
      }

      v24 = [v13 copy];
      v25 = [v16 displayName];

      if (v25)
      {
        v26 = [v16 displayName];
        [v24 setDisplayName:v26];
      }

      v27 = [(BLTSettingSyncInternal *)self settingsGateway];
      v28 = [v24 sectionID];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __53__BLTSettingSync_setSectionInfo_keypaths_completion___block_invoke;
      v34[3] = &unk_278D314F0;
      v35 = v10;
      [v27 setSectionInfo:v24 forSectionID:v28 withCompletion:v34];
    }

    else
    {
      v29 = [v8 watchSectionID];

      if (v29)
      {
        v30 = [v8 watchSectionID];
        [v13 setSectionID:v30];

        v31 = blt_settings_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v8 watchSectionID];
          *buf = 138412290;
          v38 = v32;
          _os_log_impl(&dword_241FB3000, v31, OS_LOG_TYPE_INFO, "Setting custom settings for watch app %@", buf, 0xCu);
        }

        [(BLTSectionInfoListBridgeProvider *)self->_bridgeProvider setCustomSettingsWithSectionInfo:v13];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BLTSettingSync setSectionInfo:v12 keypaths:? completion:?];
    }

    if (v10)
    {
      v10[2](v10);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __53__BLTSettingSync_setSectionInfo_keypaths_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setNotificationsLevel:(unint64_t)a3 sectionID:(id)a4 mirror:(BOOL)a5 fromRemote:(BOOL)a6
{
  v6 = a5;
  v23 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a3 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = blt_settings_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_INFO, "Removing section info cache info for %@", &v19, 0xCu);
    }

    v11 = [(BLTSettingSyncInternal *)self connection];
    [v11 removeSectionInfoSentCacheForSectionID:v9];
  }

  if (v6)
  {
    v12 = [(BLTSectionInfoList *)self->_sectionInfoList bbSectionInfoForSectionID:v9];
    v13 = [v12 copy];

    v14 = v13 == 0;
    v15 = blt_settings_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v16)
      {
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
        v19 = 138412546;
        v20 = v9;
        v21 = 2112;
        v22 = v17;
        _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_INFO, "Setting notification level for %@ to %@", &v19, 0x16u);
      }

      [v13 bltApplyNotificationLevel:a3];
      v15 = [(BLTSettingSyncInternal *)self settingsGateway];
      [v15 setSectionInfo:v13 forSectionID:v9];
    }

    else if (v16)
    {
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_INFO, "Phone section not found: %@. Must be watch section only", &v19, 0xCu);
    }
  }

  else
  {
    v14 = 0;
  }

  if (a3 != 3)
  {
    [(BLTSectionInfoListBridgeProvider *)self->_bridgeProvider setNotificationsLevel:BLTSettingSyncingNotificationsLevelToBLTPBSetNotificationsAlertLevel(a3) sectionID:v9 forceCustom:v14 || !v6];
  }

  [(BLTSettingSync *)self makeAuthorizationPermanentForSectionID:v9];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)makeAuthorizationPermanentForSectionID:(id)a3
{
  v4 = a3;
  v5 = [(BLTSettingSyncInternal *)self settingsGateway];
  v6 = [v5 sectionInfoForSectionID:v4];
  v7 = [v6 copy];

  if (v7 && [v7 authorizationStatus] == 4)
  {
    [v7 makeAuthorizationPermanent];
    objc_initWeak(&location, self);
    v8 = [(BLTSettingSyncInternal *)self settingsGateway];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__BLTSettingSync_makeAuthorizationPermanentForSectionID___block_invoke;
    v9[3] = &unk_278D32E08;
    v10 = v4;
    objc_copyWeak(&v11, &location);
    [v8 setSectionInfo:v7 forSectionID:v10 withCompletion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __57__BLTSettingSync_makeAuthorizationPermanentForSectionID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = blt_settings_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "makeAuthorizationPermanentForSectionID settingsGateway saved %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BLTSettingSync_makeAuthorizationPermanentForSectionID___block_invoke_81;
  v7[3] = &unk_278D31428;
  v8 = *(a1 + 32);
  [WeakRetained sendSectionInfosWithSectionIDs:v5 completion:v7 spoolToFile:0];

  v6 = *MEMORY[0x277D85DE8];
}

void __57__BLTSettingSync_makeAuthorizationPermanentForSectionID___block_invoke_81(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = blt_settings_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "makeAuthorizationPermanentForSectionID sendSectionInfosWithSectionIDs complete %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)a3 noteSectionParametersChanged:(id)a4 forSectionID:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v10 = [(BLTSettingSync *)self _filteredAlertingSectionIDs:v9];

  if ([v10 count])
  {
    v11 = [sectionParameterSubtypeIconSectionIDAllowList objectForKey:v8];
    if ([v11 BOOLValue])
    {
      v12 = blt_settings_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_241FB3000, v12, OS_LOG_TYPE_INFO, "Sending sectionSubtypeParameters icons for %@", &v14, 0xCu);
      }

      [(BLTSettingSync *)self _sendSectionSubtypeParameterIcons:v7 sectionID:v8 waitForAcknowledgement:0 spoolToFile:!self->_initialSyncPerformed andCompletion:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sectionInfoList:(id)a3 receivedUpdatedSectionInfoForSectionID:(id)a4 transaction:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v16[0] = a4;
  v8 = MEMORY[0x277CBEA60];
  v9 = a4;
  v10 = [v8 arrayWithObjects:v16 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__BLTSettingSync_sectionInfoList_receivedUpdatedSectionInfoForSectionID_transaction___block_invoke;
  v14[3] = &unk_278D31428;
  v15 = v7;
  initialSyncPerformed = self->_initialSyncPerformed;
  v12 = v7;
  [(BLTSettingSync *)self sendSectionInfosWithSectionIDs:v10 completion:v14 spoolToFile:!initialSyncPerformed];

  [(BLTSettingSync *)self _callReloadBBCompletionsForSectionID:v9];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)sectionInfoList:(id)a3 receivedRemoveSectionWithSectionID:(id)a4 transaction:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__BLTSettingSync_sectionInfoList_receivedRemoveSectionWithSectionID_transaction___block_invoke;
  v9[3] = &unk_278D32C78;
  v10 = v7;
  v8 = v7;
  [(BLTSettingSync *)self sendRemoveSectionWithSectionID:a4 sent:v9];
}

- (BOOL)sectionInfoListSectionIDHadDisplayedCriticalBulletins:(id)a3
{
  v4 = a3;
  v5 = [(BLTSettingSyncInternal *)self sectionConfiguration];
  v6 = [v5 hasSectionIDDisplayedCriticalBulletins:v4];

  return v6;
}

- (BOOL)sectionInfoList:(id)a3 override:(id)a4 shouldApplyToSectionInfoForSectionID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(BLTSettingSyncInternal *)self sectionConfiguration];
  v10 = [v9 override:v8 appliesToConfigurationForSectionID:v7];

  return v10 ^ 1;
}

- (void)sectionConfiguration:(id)a3 addedSectionIDs:(id)a4 removedSectionIDs:(id)a5
{
  v6 = a4;
  if ([v6 count])
  {
    v7 = [BLTTransaction transactionWithDescription:@"BLTSettingsSync sectionConfiguration:addedSectionIDs:removedSectionIDs:"];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__BLTSettingSync_sectionConfiguration_addedSectionIDs_removedSectionIDs___block_invoke;
    v9[3] = &unk_278D31428;
    v10 = v7;
    v8 = v7;
    [(BLTSettingSync *)self sendSectionInfosWithSectionIDs:v6 completion:v9 spoolToFile:0];
  }
}

- (void)_callReloadBBCompletionsForSectionID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__BLTSettingSync__callReloadBBCompletionsForSectionID___block_invoke;
  v6[3] = &unk_278D31400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  BLTDispatchWorkQueue(v6);
}

void __55__BLTSettingSync__callReloadBBCompletionsForSectionID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:*(a1 + 40)];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 128) removeObjectForKey:*(a1 + 40)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addReloadBBCompletion:(id)a3 sectionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BLTSettingSync__addReloadBBCompletion_sectionID___block_invoke;
  v10[3] = &unk_278D316A0;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  BLTDispatchWorkQueue(v10);
}

void __51__BLTSettingSync__addReloadBBCompletion_sectionID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  if (!v5)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = a1[5];
    v5 = v2;
    [*(a1[4] + 128) setObject:? forKeyedSubscript:?];
  }

  v4 = MEMORY[0x245D067A0](a1[6]);
  [v5 addObject:v4];
}

- (void)_callAndRemoveReloadBBCompletion:(id)a3 sectionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__BLTSettingSync__callAndRemoveReloadBBCompletion_sectionID___block_invoke;
  v10[3] = &unk_278D316A0;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  BLTDispatchWorkQueue(v10);
}

void __61__BLTSettingSync__callAndRemoveReloadBBCompletion_sectionID___block_invoke(void *a1)
{
  v4 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  if (v4)
  {
    v2 = MEMORY[0x245D067A0](a1[6]);
    v3 = [v4 indexOfObject:v2];

    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 removeObjectAtIndex:v3];
      (*(a1[6] + 16))();
    }
  }
}

- (void)setSectionInfo:(uint64_t)a1 keypaths:(uint64_t)a2 completion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "setSectionInfo: %@ error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setSectionInfo:(NSObject *)a1 keypaths:completion:.cold.2(NSObject *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_241FB3000, a1, OS_LOG_TYPE_ERROR, "**** sectionInfo is nil!\n%@", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

@end