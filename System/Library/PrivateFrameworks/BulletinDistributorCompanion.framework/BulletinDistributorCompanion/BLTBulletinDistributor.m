@interface BLTBulletinDistributor
+ (id)sharedDistributor;
- (BLTBulletinDistributor)init;
- (BOOL)_enqueuBulletinUpdate:(unint64_t)a3 bulletin:(id)a4 feed:(unint64_t)a5;
- (BOOL)_notifyGizmoOfBulletin:(id)a3 forFeed:(unint64_t)a4 updateType:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 shouldSendReplyIfNeeded:(BOOL)a7 attachment:(id)a8 attachmentType:(int64_t)a9 replyToken:(id)a10;
- (BOOL)_willNanoPresent:(unint64_t)a3 forBulletin:(id)a4 feed:(unint64_t)a5;
- (BOOL)shouldSuppressLightsAndSirensNow;
- (id)_obsoletionDateRelativeToNow;
- (id)_replyTokenForSectionID:(id)a3 publisherMatchID:(id)a4;
- (id)_stateDescription;
- (unint64_t)_nanoPresentableFeedFromPhoneFeed:(unint64_t)a3;
- (void)_attachAttachment:(id)a3 attachmentType:(int64_t)a4 toBulletin:(id)a5;
- (void)_attachIconToBulletin:(id)a3;
- (void)_cleanupForAddedBulletin:(id)a3;
- (void)_handleAddBulletin:(id)a3 feed:(unint64_t)a4 shouldPlayLightsAndSirens:(BOOL)a5 performedWithSuccess:(BOOL)a6 sendAttemptTime:(id)a7 connectionStatus:(unint64_t)a8 isGizmoReady:(BOOL)a9 shouldSendReplyIfNeeded:(BOOL)a10 replyToken:(id)a11;
- (void)_handleAllSyncComplete;
- (void)_handleDidPlayLightsAndSirens:(BOOL)a3 forBulletin:(id)a4 inPhoneSection:(id)a5 transmissionDate:(id)a6 receptionDate:(id)a7 fromGizmo:(BOOL)a8 finalReply:(BOOL)a9 replyToken:(id)a10;
- (void)_handleInitialSyncStateCompleteChanged:(id)a3;
- (void)_handleSyncStateChanged:(id)a3;
- (void)_mapBulletin:(id)a3;
- (void)_notifyGizmoOfCancelBulletin:(id)a3 sectionID:(id)a4 universalSectionID:(id)a5 feed:(unint64_t)a6 withBulletinDate:(id)a7;
- (void)_performModifyBulletin:(id)a3 forFeed:(unint64_t)a4;
- (void)_performNextPendingBulletinUpdateForBulletinID:(id)a3;
- (void)_performRemoveBulletin:(id)a3 forFeed:(unint64_t)a4;
- (void)_performSync;
- (void)_pingSubscriberWithBulletin:(id)a3 ack:(id)a4;
- (void)_postWillSendBulletinToGizmoNotificationForBulletin:(id)a3;
- (void)_registerForPairedDeviceBuildChanges;
- (void)_reloadBulletins;
- (void)_removeTranscodedAttachmentIfNeededForBulletin:(id)a3;
- (void)_sendCurrentBulletinIdentifiers:(id)a3;
- (void)_sendPBBulletin:(id)a3 forBulletin:(id)a4 feed:(unint64_t)a5 updateType:(unint64_t)a6 playLightsAndSirens:(BOOL)a7 shouldSendReplyIfNeeded:(BOOL)a8;
- (void)_setupBBObserver;
- (void)_startBulletinListening;
- (void)_subscriberWillAllowBulletin:(id)a3 completion:(id)a4;
- (void)clearReplyBlockForReplyToken:(id)a3;
- (void)dealloc;
- (void)disableStandaloneTestMode;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6;
- (void)getWillNanoPresentNotificationForSectionID:(id)a3 subsectionIDs:(id)a4 subtype:(int64_t)a5 completion:(id)a6;
- (void)handleAction:(id)a3;
- (void)handleAction:(id)a3 bulletin:(id)a4;
- (void)handleDidPlayLightsAndSirens:(BOOL)a3 forBulletin:(id)a4 inPhoneSection:(id)a5 transmissionDate:(id)a6 receptionDate:(id)a7 replyToken:(id)a8;
- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 attachment:(id)a7 attachmentType:(int64_t)a8 alwaysSend:(BOOL)a9 withReply:(id)a10;
- (void)observer:(id)a3 modifyBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)observer:(id)a3 removeBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)observer:(id)a3 updateGlobalSettings:(id)a4;
- (void)removeBulletinWithPublisherBulletinID:(id)a3 recordID:(id)a4 sectionID:(id)a5;
- (void)sendSectionInfoWithSectionID:(id)a3 completion:(id)a4;
- (void)setReplyBlock:(id)a3 forSection:(id)a4 bulletin:(id)a5 publicationDate:(id)a6 replyToken:(id)a7;
- (void)spoolSectionInfoWithCompletion:(id)a3;
- (void)willSendLightsAndSirensWithPublisherBulletinID:(id)a3 recordID:(id)a4 inPhoneSection:(id)a5 systemApp:(BOOL)a6 completion:(id)a7;
- (void)willSendLightsAndSirensWithRecordID:(id)a3 inPhoneSection:(id)a4 systemApp:(BOOL)a5 completion:(id)a6;
@end

@implementation BLTBulletinDistributor

+ (id)sharedDistributor
{
  if (sharedDistributor___onceToken != -1)
  {
    +[BLTBulletinDistributor sharedDistributor];
  }

  v3 = sharedDistributor___sharedInstance;

  return v3;
}

uint64_t __43__BLTBulletinDistributor_sharedDistributor__block_invoke()
{
  v0 = objc_alloc_init(BLTBulletinDistributor);
  v1 = sharedDistributor___sharedInstance;
  sharedDistributor___sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BLTBulletinDistributor)init
{
  v56 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = BLTBulletinDistributor;
  v2 = [(BLTBulletinDistributor *)&v53 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    startupTime = v2->_startupTime;
    v2->_startupTime = v3;

    v2->_standaloneTestModeEnabled = 0;
    v5 = [MEMORY[0x277CBEB58] set];
    noticesFeed = v2->_noticesFeed;
    v2->_noticesFeed = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    lockScreenFeed = v2->_lockScreenFeed;
    v2->_lockScreenFeed = v7;

    v9 = objc_alloc_init(BLTHashCache);
    attachmentHashCache = v2->_attachmentHashCache;
    v2->_attachmentHashCache = v9;

    v11 = objc_alloc_init(BLTHashCache);
    iconHashCache = v2->_iconHashCache;
    v2->_iconHashCache = v11;

    v2->_pendingBulletinUpdatesLock._os_unfair_lock_opaque = 0;
    v13 = [MEMORY[0x277CBEB38] dictionary];
    pendingBulletinUpdates = v2->_pendingBulletinUpdates;
    v2->_pendingBulletinUpdates = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    bulletinIDsWaitingOnGizmoAdd = v2->_bulletinIDsWaitingOnGizmoAdd;
    v2->_bulletinIDsWaitingOnGizmoAdd = v15;

    v17 = objc_alloc_init(BLTWatchKitAppList);
    watchKitAppList = v2->_watchKitAppList;
    v2->_watchKitAppList = v17;

    v19 = [[BLTSectionConfiguration alloc] initWithWatchKitAppList:v2->_watchKitAppList];
    sectionConfiguration = v2->_sectionConfiguration;
    v2->_sectionConfiguration = v19;

    v21 = [BLTClientReplyTimeoutManager alloc];
    v22 = BLTWorkQueue();
    v23 = [(BLTClientReplyTimeoutManager *)v21 initWithQueue:v22];
    clientReplyTimeoutManager = v2->_clientReplyTimeoutManager;
    v2->_clientReplyTimeoutManager = v23;

    v25 = objc_alloc_init(BLTGizmoLegacyMap);
    gizmoLegacyMap = v2->_gizmoLegacyMap;
    v2->_gizmoLegacyMap = v25;

    v27 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    v28 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v27];
    layoutMonitor = v2->_layoutMonitor;
    v2->_layoutMonitor = v28;

    v30 = [[BLTSimpleCache alloc] initWithCapacity:10];
    mruCacheOfSectionIDs = v2->_mruCacheOfSectionIDs;
    v2->_mruCacheOfSectionIDs = v30;

    BLTCleanAttachmentsPath();
    CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
    v32 = objc_alloc_init(BLTRemoteGizmoClient);
    gizmoConnection = v2->_gizmoConnection;
    v2->_gizmoConnection = v32;

    [(BLTRemoteGizmoClient *)v2->_gizmoConnection setServer:v2];
    [(BLTRemoteGizmoClient *)v2->_gizmoConnection setGizmoLegacyMap:v2->_gizmoLegacyMap];
    v34 = [BLTSettingSync alloc];
    v35 = v2->_sectionConfiguration;
    v36 = BLTWorkQueue();
    v37 = [(BLTSettingSync *)v34 initWithSectionConfiguration:v35 queue:v36 watchKitAppList:v2->_watchKitAppList];
    settingSync = v2->_settingSync;
    v2->_settingSync = v37;

    v39 = blt_general_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241FB3000, v39, OS_LOG_TYPE_DEFAULT, "Getting summarization setting from gateway", buf, 2u);
    }

    v40 = [(BLTSettingSyncInternal *)v2->_settingSync settingsGateway];
    v2->_summarizationSetting = [v40 effectiveGlobalSummarizationSetting];

    v41 = blt_general_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [MEMORY[0x277CCABB0] numberWithInteger:v2->_summarizationSetting];
      *buf = 138412290;
      v55 = v42;
      _os_log_impl(&dword_241FB3000, v41, OS_LOG_TYPE_DEFAULT, "Gateway returned summarization setting %@", buf, 0xCu);
    }

    v43 = [[BLTPingSubscriberManager alloc] initWithDeviceDelegate:v2];
    pingSubscriberManager = v2->_pingSubscriberManager;
    v2->_pingSubscriberManager = v43;

    [BLTDebugObserverHolder startWithWKAppList:v2->_watchKitAppList];
    v45 = +[BLTPairedSyncCoordinator syncState];
    if ([v45 isSyncRestricted])
    {
      v46 = [MEMORY[0x277CCAB98] defaultCenter];
      [v46 addObserver:v2 selector:sel__handleSyncStateChanged_ name:@"BLTPairedSyncStateChanged" object:0];
    }

    else
    {
      [(BLTBulletinDistributor *)v2 _performSync];
    }

    if ([v45 isInitialSyncComplete])
    {
      [(BLTBulletinDistributor *)v2 _startBulletinListening];
      if (([v45 isSyncRestricted] & 1) == 0)
      {
        [(BLTBulletinDistributor *)v2 _handleAllSyncComplete];
      }
    }

    else
    {
      v47 = blt_general_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241FB3000, v47, OS_LOG_TYPE_DEFAULT, "Waiting for initial sync complete before listening for bulletins", buf, 2u);
      }

      v48 = [MEMORY[0x277CCAB98] defaultCenter];
      [v48 addObserver:v2 selector:sel__handleInitialSyncStateCompleteChanged_ name:@"BLTPairedSyncStateInitialSyncCompleteChanged" object:0];
    }

    objc_initWeak(buf, v2);
    v49 = BLTWorkQueue();
    objc_copyWeak(&v52, buf);
    v2->_stateHandler = os_state_add_handler();

    objc_destroyWeak(&v52);
    objc_destroyWeak(buf);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v2;
}

_DWORD *__30__BLTBulletinDistributor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [WeakRetained _stateDescription];
  v5 = BLTStateDataWithTitleAndDescription(v3, v4);

  return v5;
}

- (void)dealloc
{
  [(BBObserver *)self->_bbObserver invalidate];
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  stateHandler = self->_stateHandler;
  os_state_remove_handler();
  self->_stateHandler = 0;
  v5.receiver = self;
  v5.super_class = BLTBulletinDistributor;
  [(BLTBulletinDistributor *)&v5 dealloc];
}

- (void)getWillNanoPresentNotificationForSectionID:(id)a3 subsectionIDs:(id)a4 subtype:(int64_t)a5 completion:(id)a6
{
  if (a6)
  {
    settingSync = self->_settingSync;
    v11 = a6;
    v11[2](v11, [(BLTBulletinDistributor *)self _willNanoPresent:[(BLTSettingSyncInternal *)settingSync willNanoPresentNotificationForSectionID:a3 subsectionIDs:a4 subtype:a5]]);
  }
}

- (void)sendSectionInfoWithSectionID:(id)a3 completion:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  settingSync = self->_settingSync;
  v15[0] = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = [v8 arrayWithObjects:v15 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__BLTBulletinDistributor_sendSectionInfoWithSectionID_completion___block_invoke;
  v13[3] = &unk_278D314F0;
  v14 = v6;
  v11 = v6;
  [(BLTSettingSync *)settingSync sendSectionInfosWithSectionIDs:v10 completion:v13 spoolToFile:0];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __66__BLTBulletinDistributor_sendSectionInfoWithSectionID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __65__BLTBulletinDistributor_sendAllSectionInfoWithSpool_completion___block_invoke(uint64_t a1)
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
  settingSync = self->_settingSync;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BLTBulletinDistributor_spoolSectionInfoWithCompletion___block_invoke;
  v7[3] = &unk_278D314F0;
  v8 = v4;
  v6 = v4;
  [(BLTSettingSync *)settingSync spoolSectionInfoWithCompletion:v7];
}

uint64_t __57__BLTBulletinDistributor_spoolSectionInfoWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6
{
  self->_standaloneTestModeEnabled = 1;
  [BLTRemoteObject enableStandaloneTestModeWithMinimumSendDelay:"enableStandaloneTestModeWithMinimumSendDelay:maximumSendDelay:minimumResponseDelay:maximumResponseDelay:" maximumSendDelay:? minimumResponseDelay:? maximumResponseDelay:?];
  settingSync = self->_settingSync;

  [(BLTSettingSyncInternal *)settingSync enableStandaloneTestModeWithMinimumSendDelay:a3 maximumSendDelay:a4 minimumResponseDelay:a5 maximumResponseDelay:a6];
}

- (void)disableStandaloneTestMode
{
  self->_standaloneTestModeEnabled = 0;
  [(BLTRemoteObject *)self->_gizmoConnection disableStandaloneTestMode];
  settingSync = self->_settingSync;

  [(BLTSettingSyncInternal *)settingSync disableStandaloneTestMode];
}

- (void)_handleSyncStateChanged:(id)a3
{
  v4 = a3;
  v5 = BLTWorkQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BLTBulletinDistributor__handleSyncStateChanged___block_invoke;
  v7[3] = &unk_278D31400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__BLTBulletinDistributor__handleSyncStateChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [v2 becameSyncUnrestricted:*(a1 + 32)];

  if (v3)
  {
    v4 = *(a1 + 40);

    [v4 _performSync];
  }
}

- (void)_handleInitialSyncStateCompleteChanged:(id)a3
{
  v4 = a3;
  v5 = BLTWorkQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__BLTBulletinDistributor__handleInitialSyncStateCompleteChanged___block_invoke;
  v7[3] = &unk_278D31400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__BLTBulletinDistributor__handleInitialSyncStateCompleteChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if ([v2 isInitialSyncComplete])
  {
    [*(a1 + 40) _startBulletinListening];
    if (([v2 isSyncRestricted] & 1) == 0)
    {
      [*(a1 + 40) _handleAllSyncComplete];
    }
  }
}

- (void)_performSync
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BLTBulletinDistributor__performSync__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  if (_performSync_onceToken != -1)
  {
    dispatch_once(&_performSync_onceToken, block);
  }
}

uint64_t __38__BLTBulletinDistributor__performSync__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__BLTBulletinDistributor__performSync__block_invoke_3;
  v4[3] = &unk_278D31428;
  v4[4] = v1;
  return [v2 performInitialSyncWithProgress:&__block_literal_global_82 completion:v4];
}

uint64_t __38__BLTBulletinDistributor__performSync__block_invoke_3(uint64_t a1)
{
  +[BLTPairedSyncCoordinator syncDidComplete];
  v2 = +[BLTPairedSyncCoordinator syncState];
  v3 = [v2 isInitialSyncComplete];

  if (v3)
  {
    [*(a1 + 32) _handleAllSyncComplete];
  }

  v4 = *(a1 + 32);

  return [v4 _registerForPairedDeviceBuildChanges];
}

- (void)_startBulletinListening
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BLTBulletinDistributor__startBulletinListening__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  if (_startBulletinListening_onceToken != -1)
  {
    dispatch_once(&_startBulletinListening_onceToken, block);
  }
}

uint64_t __49__BLTBulletinDistributor__startBulletinListening__block_invoke(uint64_t a1)
{
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Start listening for bulletins", buf, 2u);
  }

  v3 = [*(*(a1 + 32) + 80) isLoaded];
  v4 = *(a1 + 32);
  if (v3)
  {
    return [v4 _setupBBObserver];
  }

  v6 = v4[10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BLTBulletinDistributor__startBulletinListening__block_invoke_83;
  v7[3] = &unk_278D31428;
  v7[4] = v4;
  return [v6 fetchWatchKitInfoWithCompletion:v7];
}

- (void)_handleAllSyncComplete
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BLTBulletinDistributor__handleAllSyncComplete__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  if (_handleAllSyncComplete_onceToken != -1)
  {
    dispatch_once(&_handleAllSyncComplete_onceToken, block);
  }
}

void __48__BLTBulletinDistributor__handleAllSyncComplete__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "Sync is not restricted and initial sync complete", buf, 2u);
  }

  v3 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BLTBulletinDistributor__handleAllSyncComplete__block_invoke_84;
  block[3] = &unk_278D31428;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);

  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:*(*(a1 + 32) + 96)];
  v6 = 60.0 - v5;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v7;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Waiting for %f seconds until we send bulletin metadata", buf, 0xCu);
  }

  v9 = dispatch_time(0, (v7 * 1000000000.0));
  v10 = BLTWorkQueue();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__BLTBulletinDistributor__handleAllSyncComplete__block_invoke_85;
  v12[3] = &unk_278D31428;
  v12[4] = *(a1 + 32);
  dispatch_after(v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForPairedDeviceBuildChanges
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v7[0] = *MEMORY[0x277D2BC08];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__BLTBulletinDistributor__registerForPairedDeviceBuildChanges__block_invoke;
  v6[3] = &unk_278D32610;
  v6[4] = self;
  [v3 registerForPropertyChanges:v4 withBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __62__BLTBulletinDistributor__registerForPairedDeviceBuildChanges__block_invoke(uint64_t a1)
{
  v2 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BLTBulletinDistributor__registerForPairedDeviceBuildChanges__block_invoke_2;
  block[3] = &unk_278D31428;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)_setupBBObserver
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = blt_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = self;
    _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_DEFAULT, "%@ _setupBBObserver", &v12, 0xCu);
  }

  v4 = BLTWorkQueue();
  v5 = BLTWorkQueue();
  v6 = [BLTBBObserver surrogateGatewayWithQueue:v4 calloutQueue:v5 name:@"GizmoGateway" priority:2];
  bbObserver = self->_bbObserver;
  self->_bbObserver = v6;

  [(BBObserver *)self->_bbObserver setDelegate:self];
  [(BBObserver *)self->_bbObserver setObserverFeed:33663];
  v8 = [(BLTBulletinDistributor *)self bbObserver];
  [v8 setObserverOptions:1];

  v9 = blt_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(BLTBulletinDistributor *)self bbObserver];
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "%@ _setupBBObserver: %@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_pingSubscriberWithBulletin:(id)a3 ack:(id)a4
{
  pingSubscriberManager = self->_pingSubscriberManager;
  v6 = a4;
  v7 = a3;
  v8 = [(BLTPingSubscriberManager *)pingSubscriberManager subscribers];
  [v8 pingWithBulletin:v7 ack:v6];
}

- (void)_notifyGizmoOfCancelBulletin:(id)a3 sectionID:(id)a4 universalSectionID:(id)a5 feed:(unint64_t)a6 withBulletinDate:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  [a7 timeIntervalSinceNow];
  v16 = v15 + 86400.0;
  v17 = blt_general_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = " not going to send";
    v31 = 2112;
    v29 = 138413314;
    v30 = v12;
    if (v16 > 0.0)
    {
      v18 = "";
    }

    v32 = v14;
    v33 = 2048;
    v34 = a6;
    v35 = 2048;
    v36 = v16;
    v37 = 2080;
    v38 = v18;
    _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _notifyGizmoOfCancelBulletin with publisherMatchID: %@ in universal section: %@ forFeed: %lu timeout: %f%s", &v29, 0x34u);
  }

  if (v16 > 0.0)
  {
    v19 = [BLTBBBulletinKey bulletinKeyWithSectionID:v13 publisherMatchID:v12];
    v20 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoPublisherBulletinIDForPhoneKey:v19];
    v21 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoSectionInfoForPhoneKey:v19];
    v22 = [v21 mappedSectionID];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v14;
    }

    v25 = v24;

    gizmoConnection = self->_gizmoConnection;
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    [(BLTRemoteGizmoClient *)gizmoConnection cancelBulletinWithPublisherMatchID:v20 universalSectionID:v25 feed:a6 withTimeout:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_mapBulletin:(id)a3
{
  v10 = a3;
  v4 = [MEMORY[0x277CE1F78] notificationForBulletin:v10];
  sectionConfiguration = self->_sectionConfiguration;
  v6 = [v10 sectionID];
  v7 = [(BLTSectionConfigurationInternal *)sectionConfiguration legacyMapLocationForSectionID:v6];

  if (v7 == 1)
  {
    gizmoLegacyMap = self->_gizmoLegacyMap;
    v9 = [v10 sectionID];
    [(BLTGizmoLegacyMap *)gizmoLegacyMap mapNotification:v4 sectionID:v9];
  }
}

- (void)_postWillSendBulletinToGizmoNotificationForBulletin:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9A0];
  v4 = a3;
  v5 = [v3 defaultCenter];
  v9 = @"sectionID";
  v6 = [v4 sectionID];

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [v5 postNotificationName:@"BLTWillSendBulletinToGizmoNotification" object:0 userInfo:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_attachAttachment:(id)a3 attachmentType:(int64_t)a4 toBulletin:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    [v9 setContainsUpdatedAttachment:1];
    [v10 setAttachment:v8];
    [v10 setAttachmentType:a4];
  }

  else
  {
    v33 = self;
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [MEMORY[0x277CBEB18] array];
    if (([v10 hasAttachment] & 1) != 0 || objc_msgSend(v10, "hasAttachmentURL"))
    {
      v13 = [v10 attachment];
      v14 = [v10 attachmentURLURL];
      v15 = [v10 attachmentID];
      v16 = [BLTHashCacheItem hashCacheItemWithData:v13 URL:v14 identifier:v15];

      [v11 addObject:v16];
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = v10;
    v17 = [v10 additionalAttachments];
    v18 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          v23 = [v22 uRL];

          if (v23)
          {
            v24 = [v22 attachmentURLURL];
            v25 = [v22 identifier];
            v26 = [BLTHashCacheItem hashCacheItemWithData:0 URL:v24 identifier:v25];

            [v11 addObject:v26];
            [v12 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v19);
    }

    v10 = v34;
    attachmentHashCache = v33->_attachmentHashCache;
    v28 = [v34 sectionID];
    v29 = [v34 publisherMatchID];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __70__BLTBulletinDistributor__attachAttachment_attachmentType_toBulletin___block_invoke;
    v35[3] = &unk_278D32638;
    v38 = v32;
    v36 = v34;
    v37 = v12;
    v30 = v12;
    [(BLTHashCache *)attachmentHashCache updateCacheWithItems:v11 forSectionID:v28 matchID:v29 result:v35];

    v8 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __70__BLTBulletinDistributor__attachAttachment_attachmentType_toBulletin___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 identifier];
    v15 = 134218498;
    v16 = a3;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Attachment hash cache updated item index %lu id %@ with result %lu", &v15, 0x20u);
  }

  if (a4 == 2)
  {
    if (a3 || !*(a1 + 48))
    {
      v11 = objc_alloc_init(BLTPBBulletinAttachment);
      [(BLTPBBulletinAttachment *)v11 setIsUpdated:1];
      v12 = [v7 identifier];
      [(BLTPBBulletinAttachment *)v11 setIdentifier:v12];

      [*(a1 + 32) setContainsUpdatedAttachment:1];
      [*(a1 + 32) addAdditionalAttachments:v11];
      goto LABEL_16;
    }

LABEL_14:
    [*(a1 + 32) setContainsUpdatedAttachment:1];
    goto LABEL_18;
  }

  v10 = a3 - *(a1 + 48);
  if (a4 == 1)
  {
    if (a3 || !*(a1 + 48))
    {
      v11 = [*(a1 + 40) objectAtIndexedSubscript:v10];
      [(BLTPBBulletinAttachment *)v11 setIsUpdated:1];
      [*(a1 + 32) setContainsUpdatedAttachment:1];
LABEL_16:

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    if (a3 || !*(a1 + 48))
    {
      v13 = [*(a1 + 40) objectAtIndexedSubscript:v10];
      [v13 setURL:0];
    }

    else
    {
      [*(a1 + 32) setAttachment:0];
      [*(a1 + 32) setAttachmentURL:0];
    }
  }

LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_attachIconToBulletin:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v6 = [v5 variantsCount];

  if (v6)
  {
    v7 = [v4 icon];
    v8 = [v7 variantAtIndex:0];

    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [v8 imageData];
    v11 = [BLTHashCacheItem hashCacheItemWithData:v10 URL:0 identifier:0];

    [v9 addObject:v11];
  }

  else
  {
    v9 = 0;
  }

  iconHashCache = self->_iconHashCache;
  v13 = [v4 sectionID];
  v14 = [v4 publisherMatchID];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__BLTBulletinDistributor__attachIconToBulletin___block_invoke;
  v16[3] = &unk_278D32660;
  v17 = v4;
  v15 = v4;
  [(BLTHashCache *)iconHashCache updateCacheWithItems:v9 forSectionID:v13 matchID:v14 result:v16];
}

void __48__BLTBulletinDistributor__attachIconToBulletin___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = blt_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = a3;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Icon hash cache updated item index %lu with result %lu", &v9, 0x16u);
  }

  if ((a4 - 1) >= 2)
  {
    if (!a4)
    {
      [*(a1 + 32) setIcon:0];
    }
  }

  else
  {
    [*(a1 + 32) setContainsUpdateIcon:1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddBulletin:(id)a3 feed:(unint64_t)a4 shouldPlayLightsAndSirens:(BOOL)a5 performedWithSuccess:(BOOL)a6 sendAttemptTime:(id)a7 connectionStatus:(unint64_t)a8 isGizmoReady:(BOOL)a9 shouldSendReplyIfNeeded:(BOOL)a10 replyToken:(id)a11
{
  v11 = a6;
  v12 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a11;
  v17 = blt_general_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v18 = "Successfully notified";
    }

    else
    {
      v18 = "Failed to notify";
    }

    v19 = [v15 publisherMatchID];
    v20 = v19;
    v21 = "NO";
    *v29 = 136315906;
    *&v29[4] = v18;
    *&v29[12] = 2112;
    if (v12)
    {
      v21 = "YES";
    }

    *&v29[14] = v19;
    v30 = 2048;
    v31 = a4;
    v32 = 2080;
    v33 = v21;
    _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_DEFAULT, "%s gizmo of bulletin with publisherMatchID: %@ forFeed: %lu playLightsAndSirens: %s", v29, 0x2Au);
  }

  if (!v11)
  {
    if (a10)
    {
      v22 = [v15 publisherMatchID];
      v23 = [v15 sectionID];
      [(BLTBulletinDistributor *)self _handleDidPlayLightsAndSirens:0 forBulletin:v22 inPhoneSection:v23 finalReply:1 replyToken:v16];
    }

    v24 = [v15 publisherMatchID];
    v25 = [v15 sectionID];
    v26 = [v15 sectionMatchID];
    v27 = [v15 dateOrRecencyDate];
    [(BLTBulletinDistributor *)self _notifyGizmoOfCancelBulletin:v24 sectionID:v25 universalSectionID:v26 feed:a4 withBulletinDate:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_sendPBBulletin:(id)a3 forBulletin:(id)a4 feed:(unint64_t)a5 updateType:(unint64_t)a6 playLightsAndSirens:(BOOL)a7 shouldSendReplyIfNeeded:(BOOL)a8
{
  v8 = a8;
  v28 = a7;
  v12 = a3;
  v13 = a4;
  v14 = [(BLTRemoteObject *)self->_gizmoConnection connectionStatus];
  if (v14 != 1)
  {
    v15 = blt_general_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_DEFAULT, "Not locally connected to gizmo. Replying to local bulletin board immediately.", buf, 2u);
    }

    if (v8)
    {
      v16 = [v13 publisherMatchID];
      v17 = [v13 sectionID];
      v18 = [v12 replyToken];
      [(BLTBulletinDistributor *)self _handleDidPlayLightsAndSirens:0 forBulletin:v16 inPhoneSection:v17 finalReply:0 replyToken:v18];
    }
  }

  v26 = [(BLTRemoteObject *)self->_gizmoConnection isPairedDeviceReady];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:BLTGetPlayLightsAndSirensTimeout(v14 == 1)];
  v20 = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(buf, self);
  v21 = [v12 replyToken];
  gizmoConnection = self->_gizmoConnection;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __114__BLTBulletinDistributor__sendPBBulletin_forBulletin_feed_updateType_playLightsAndSirens_shouldSendReplyIfNeeded___block_invoke;
  v29[3] = &unk_278D32688;
  objc_copyWeak(v33, buf);
  v23 = v13;
  v30 = v23;
  v33[1] = a5;
  v34 = v28;
  v24 = v20;
  v31 = v24;
  v33[2] = v14;
  v35 = v26;
  v36 = v8;
  v25 = v21;
  v32 = v25;
  [(BLTRemoteGizmoClient *)gizmoConnection addBulletin:v12 playLightsAndSirens:v28 updateType:a6 withTimeout:v19 completion:v29];

  objc_destroyWeak(v33);
  objc_destroyWeak(buf);
}

void __114__BLTBulletinDistributor__sendPBBulletin_forBulletin_feed_updateType_playLightsAndSirens_shouldSendReplyIfNeeded___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  LOWORD(v4) = *(a1 + 81);
  [WeakRetained _handleAddBulletin:*(a1 + 32) feed:*(a1 + 64) shouldPlayLightsAndSirens:*(a1 + 80) performedWithSuccess:a2 sendAttemptTime:*(a1 + 40) connectionStatus:*(a1 + 72) isGizmoReady:v4 shouldSendReplyIfNeeded:*(a1 + 48) replyToken:?];
}

- (BOOL)_notifyGizmoOfBulletin:(id)a3 forFeed:(unint64_t)a4 updateType:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 shouldSendReplyIfNeeded:(BOOL)a7 attachment:(id)a8 attachmentType:(int64_t)a9 replyToken:(id)a10
{
  v11 = a6;
  v91 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v70 = a8;
  v75 = a10;
  v15 = blt_general_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 publisherMatchID];
    v17 = "NO";
    *buf = 138412802;
    v86 = v16;
    if (v11)
    {
      v17 = "YES";
    }

    v87 = 2048;
    v88 = a4;
    v89 = 2080;
    v90 = v17;
    _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _notifyGizmoOfBulletin with publisherMatchID: %@ forFeed: %lu playLightsAndSirens: %s", buf, 0x20u);
  }

  v72 = v11;

  [(BLTBulletinDistributor *)self _postWillSendBulletinToGizmoNotificationForBulletin:v14];
  v68 = [v14 bulletinID];
  [(NSMutableSet *)self->_bulletinIDsWaitingOnGizmoAdd addObject:?];
  watchKitAppList = self->_watchKitAppList;
  v19 = [v14 sectionID];
  v20 = [(BLTWatchKitAppList *)watchKitAppList watchKitAppDefinitionWithBundleID:v19];

  v21 = MEMORY[0x277CC1E60];
  v22 = [v14 sectionID];
  v23 = [v21 applicationProxyForIdentifier:v22];

  v24 = [v14 sectionID];
  v25 = [v14 publisherMatchID];
  v26 = [BLTBBBulletinKey bulletinKeyWithSectionID:v24 publisherMatchID:v25];

  v27 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoSectionInfoForPhoneKey:v26];
  v28 = [v27 mappedSectionID];
  v29 = v28;
  v65 = a4;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = [v14 sectionID];
  }

  v31 = v30;

  v67 = [(BLTSettingSync *)self->_settingSync universalSectionIDForSectionID:v31];
  [(BLTRemoteGizmoClient *)self->_gizmoConnection queuePendingRequests];
  sectionConfiguration = self->_sectionConfiguration;
  v33 = [v14 sectionID];
  v34 = [(BLTSectionConfigurationInternal *)sectionConfiguration watchVersionThatUsesUserInfoForContextForSectionID:v33];

  v69 = v31;
  v66 = v34;
  if (v34)
  {
    v64 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportIsGreaterEqualVersion:{objc_msgSend(v34, "unsignedIntegerValue")}] ^ 1;
  }

  else
  {
    LOBYTE(v64) = 0;
  }

  v35 = self->_sectionConfiguration;
  v36 = [v14 sectionID];
  v37 = [(BLTSectionConfigurationInternal *)v35 hasSectionIDOptedOutOfSubtitleRemovalForOlderWatches:v36];

  v38 = self->_sectionConfiguration;
  v39 = [v14 sectionID];
  v63 = [(BLTSectionConfigurationInternal *)v38 shouldUsePhoneExpirationDateForSectionID:v39];

  v40 = self->_sectionConfiguration;
  v41 = [v14 sectionID];
  v42 = [(BLTSectionConfigurationInternal *)v40 watchVersionThatUsesAttachmentURLForSectionID:v41];

  v43 = self->_sectionConfiguration;
  v44 = [v14 sectionID];
  v45 = [(BLTSectionConfigurationInternal *)v43 hasSectionIDOptedOutOfAttachmentCoordination:v44];

  if (v42)
  {
    v46 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportIsGreaterEqualVersion:{objc_msgSend(v42, "unsignedIntegerValue")}] ^ 1;
  }

  else
  {
    v46 = 0;
  }

  if (v45)
  {
    v46 = 2;
  }

  v59 = v46;
  v58 = !v37;
  v47 = [v20 watchKitAppBundleID];
  bbObserver = self->_bbObserver;
  v48 = [v23 teamID];
  [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoPublisherBulletinIDForPhoneKey:v26];
  v49 = v62 = v23;
  v50 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap categoryIDForBulletinKey:v26];
  [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap sectionSubtypeForBulletinKey:v26];
  v51 = v61 = v26;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __149__BLTBulletinDistributor__notifyGizmoOfBulletin_forFeed_updateType_playLightsAndSirens_shouldSendReplyIfNeeded_attachment_attachmentType_replyToken___block_invoke;
  v76[3] = &unk_278D326B0;
  v76[4] = self;
  v77 = v70;
  v80 = a9;
  v81 = v65;
  v82 = a5;
  v83 = v72;
  v84 = a7;
  v78 = v14;
  v79 = v68;
  v74 = v68;
  v52 = v14;
  v53 = v70;
  BYTE1(v57) = v58;
  LOBYTE(v57) = v64;
  LOBYTE(v56) = v63;
  [BLTPBBulletin bulletinWithBBBulletin:v52 sockPuppetAppBundleID:v47 observer:bbObserver feed:v65 teamID:v48 universalSectionID:v67 shouldUseExpirationDate:v56 replyToken:v75 gizmoLegacyPublisherBulletinID:v49 gizmoLegacyCategoryID:v50 gizmoSectionID:v69 gizmoSectionSubtype:v51 useUserInfoForContext:v57 removeSubtitleForOlderWatches:v59 attachOption:v76 completion:?];

  v54 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __149__BLTBulletinDistributor__notifyGizmoOfBulletin_forFeed_updateType_playLightsAndSirens_shouldSendReplyIfNeeded_attachment_attachmentType_replyToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6 = a2;
  [v3 _attachAttachment:v4 attachmentType:v5 toBulletin:v6];
  [*(a1 + 32) _attachIconToBulletin:v6];
  [*(a1 + 32) _sendPBBulletin:v6 forBulletin:*(a1 + 48) feed:*(a1 + 72) updateType:*(a1 + 80) playLightsAndSirens:*(a1 + 88) shouldSendReplyIfNeeded:*(a1 + 89)];

  [*(a1 + 32) _performNextPendingBulletinUpdateForBulletinID:*(a1 + 56)];
  v7 = *(*(a1 + 32) + 112);
  v8 = *(a1 + 56);

  return [v7 removeObject:v8];
}

- (unint64_t)_nanoPresentableFeedFromPhoneFeed:(unint64_t)a3
{
  if ((a3 & 0x817E) == 0x10)
  {
    return a3 | 4;
  }

  else
  {
    return a3;
  }
}

- (BOOL)_willNanoPresent:(unint64_t)a3 forBulletin:(id)a4 feed:(unint64_t)a5
{
  v5 = a5;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = v8;
  if ((v5 & 0x817E) != 0x10)
  {
    goto LABEL_6;
  }

  v10 = [v8 message];
  v11 = [MEMORY[0x277CBEB68] null];
  if (v10 == v11)
  {
    v13 = [v9 isLoading];

    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = [v9 message];
    if ([v12 length])
    {

LABEL_6:
      v14 = 1;
      goto LABEL_7;
    }

    v18 = [v9 isLoading];

    if (v18)
    {
      goto LABEL_6;
    }
  }

  v19 = blt_general_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v9 bulletinID];
    v21 = 138412290;
    v22 = v20;
    _os_log_impl(&dword_241FB3000, v19, OS_LOG_TYPE_DEFAULT, "Bulletin with id: %@ has no message and was sent to sounds feed only. Should not coordinate", &v21, 0xCu);
  }

  v14 = 0;
LABEL_7:
  v15 = [(BLTBulletinDistributor *)self _willNanoPresent:a3];

  v16 = *MEMORY[0x277D85DE8];
  return v14 & v15;
}

- (void)_reloadBulletins
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(BLTBulletinDistributor *)self _obsoletionDateRelativeToNow];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = blt_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ _reloadBulletins: obsoletionDate: %@", buf, 0x16u);
  }

  v6 = [(BLTBulletinDistributor *)self bbObserver];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke;
  v10[3] = &unk_278D32750;
  v10[4] = self;
  v11 = v4;
  v12 = v3;
  v7 = v3;
  v8 = v4;
  [v6 getPublisherMatchIDsOfBulletinsPublishedAfterDate:v7 withCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __42__BLTBulletinDistributor__reloadBulletins__block_invoke(id *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke_2;
  v14[3] = &unk_278D32728;
  v4 = a1[5];
  v14[4] = a1[4];
  v15 = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke_5;
  v11[3] = &unk_278D316C8;
  v11[4] = a1[4];
  v12 = a1[6];
  v13 = a1[5];
  v5 = [BLTBulletinFetcher batchBulletinFetchForBulletinIDs:a2 fetcher:v14 completion:v11];
  [a1[4] setBulletinFetcher:v5];

  v6 = blt_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[6];
    v9 = [v7 bulletinFetcher];
    *buf = 138412802;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "%@ _reloadBulletins: obsoletionDate: %@ bulletinFetcher: %@", buf, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __42__BLTBulletinDistributor__reloadBulletins__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = a2;
  v11 = [v8 bbObserver];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke_3;
  v14[3] = &unk_278D32700;
  v12 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v12;
  v16 = v7;
  v13 = v7;
  [v11 getBulletinsForPublisherMatchIDs:v10 sectionID:v9 withCompletion:v14];
}

void __42__BLTBulletinDistributor__reloadBulletins__block_invoke_3(void *a1, void *a2)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke_4;
  v10[3] = &unk_278D326D8;
  v4 = a1[5];
  v10[4] = a1[4];
  v11 = v4;
  [a2 enumerateObjectsUsingBlock:v10];
  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6, v7, v8);
  }
}

void __42__BLTBulletinDistributor__reloadBulletins__block_invoke_4(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 sectionID];
  v4 = [v16 publisherMatchID];
  v5 = [BLTBBBulletinKey bulletinKeyWithSectionID:v3 publisherMatchID:v4];

  v6 = [*(a1 + 32) gizmoLegacyMap];
  v7 = [v6 gizmoSectionInfoForPhoneKey:v5];
  v8 = [v7 mappedSectionID];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v16 sectionID];
  }

  v11 = v10;

  v12 = [*(a1 + 40) objectForKeyedSubscript:v11];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v11];
  }

  v13 = objc_alloc_init(BLTPBBulletinIdentifier);
  v14 = [v16 recordID];
  [(BLTPBBulletinIdentifier *)v13 setRecordID:v14];

  v15 = [*(*(a1 + 32) + 152) gizmoPublisherBulletinIDForPhoneKey:v5];
  [(BLTPBBulletinIdentifier *)v13 setPublisherBulletinID:v15];

  [v12 addObject:v13];
}

uint64_t __42__BLTBulletinDistributor__reloadBulletins__block_invoke_5(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "%@ _reloadBulletins: obsoletionDate: %@ complete", &v7, 0x16u);
  }

  result = [*(a1 + 32) _sendCurrentBulletinIdentifiers:*(a1 + 48)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_obsoletionDateRelativeToNow
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [v2 dateByAddingTimeInterval:-86400.0];

  return v3;
}

- (void)_sendCurrentBulletinIdentifiers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = blt_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ _sendCurrentBulletinIdentifiers: bulletinIdentifiersBySectionID: %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(BLTPBFullBulletinList);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__BLTBulletinDistributor__sendCurrentBulletinIdentifiers___block_invoke;
  v10[3] = &unk_278D327A0;
  v7 = v6;
  v11 = v7;
  [(BLTPBFullBulletinList *)v4 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ _sendCurrentBulletinIdentifiers: fullList: %@", buf, 0x16u);
  }

  [(BLTRemoteGizmoClient *)self->_gizmoConnection updateBulletinList:v7];
  v9 = *MEMORY[0x277D85DE8];
}

void __58__BLTBulletinDistributor__sendCurrentBulletinIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(BLTPBSectionBulletinList);
  [(BLTPBSectionBulletinList *)v7 setSectionID:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__BLTBulletinDistributor__sendCurrentBulletinIdentifiers___block_invoke_2;
  v9[3] = &unk_278D32778;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(a1 + 32) addSectionBulletinList:v8];
}

- (void)_performNextPendingBulletinUpdateForBulletinID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_pendingBulletinUpdatesLock);
  v5 = [(NSMutableDictionary *)self->_pendingBulletinUpdates objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_pendingBulletinUpdatesLock);
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    [v5 removeObjectAtIndex:0];
    v7 = blt_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 updateType];
      v9 = @"remove";
      if (v8 != 1)
      {
        v9 = 0;
      }

      if (!v8)
      {
        v9 = @"modify";
      }

      v10 = v9;
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Performing pending update type %@ for %@", &v15, 0x16u);
    }

    v11 = [v6 updateType];
    if (v11 == 1)
    {
      v13 = [v6 bulletin];
      -[BLTBulletinDistributor _performRemoveBulletin:forFeed:](self, "_performRemoveBulletin:forFeed:", v13, [v6 feed]);

      [(BLTBulletinDistributor *)self _performNextPendingBulletinUpdateForBulletinID:v4];
    }

    else if (!v11)
    {
      v12 = [v6 bulletin];
      -[BLTBulletinDistributor _performModifyBulletin:forFeed:](self, "_performModifyBulletin:forFeed:", v12, [v6 feed]);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_enqueuBulletinUpdate:(unint64_t)a3 bulletin:(id)a4 feed:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [v8 bulletinID];
  v10 = [(NSMutableSet *)self->_bulletinIDsWaitingOnGizmoAdd containsObject:v9];
  if (v10)
  {
    os_unfair_lock_lock(&self->_pendingBulletinUpdatesLock);
    v11 = [(NSMutableDictionary *)self->_pendingBulletinUpdates objectForKeyedSubscript:v9];
    os_unfair_lock_unlock(&self->_pendingBulletinUpdatesLock);
    if (!v11)
    {
      v11 = [MEMORY[0x277CBEB18] array];
      os_unfair_lock_lock(&self->_pendingBulletinUpdatesLock);
      [(NSMutableDictionary *)self->_pendingBulletinUpdates setObject:v11 forKeyedSubscript:v9];
      os_unfair_lock_unlock(&self->_pendingBulletinUpdatesLock);
    }

    v12 = blt_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"remove";
      if (a3 != 1)
      {
        v13 = 0;
      }

      if (!a3)
      {
        v13 = @"modify";
      }

      v14 = v13;
      v18 = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      v22 = 2048;
      v23 = a5;
      _os_log_impl(&dword_241FB3000, v12, OS_LOG_TYPE_DEFAULT, "Enqueuing bulletin update: %@ for bulletin: %@ feed: %lu", &v18, 0x20u);
    }

    v15 = [BLTBulletinDistributorBulletinUpdate bulletinUpdateWithType:a3 bulletin:v8 feed:a5];
    [v11 addObject:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_removeTranscodedAttachmentIfNeededForBulletin:(id)a3
{
  v3 = a3;
  v4 = [v3 bulletinID];

  if (v4)
  {
    v5 = BLTBulletinAttachmentsURL(v3);
    if (v5)
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = 0;
      v7 = [v6 removeItemAtURL:v5 error:&v10];
      v8 = v10;

      if ((v7 & 1) == 0)
      {
        v9 = blt_general_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(BLTBulletinDistributor *)v5 _removeTranscodedAttachmentIfNeededForBulletin:v8, v9];
        }
      }
    }
  }
}

- (void)_cleanupForAddedBulletin:(id)a3
{
  v4 = a3;
  [(BLTBulletinDistributor *)self _removeTranscodedAttachmentIfNeededForBulletin:v4];
  v7 = [MEMORY[0x277CE1F78] notificationForBulletin:v4];
  gizmoLegacyMap = self->_gizmoLegacyMap;
  v6 = [v4 sectionID];

  [(BLTGizmoLegacyMap *)gizmoLegacyMap unmapNotification:v7 sectionID:v6];
}

- (void)setReplyBlock:(id)a3 forSection:(id)a4 bulletin:(id)a5 publicationDate:(id)a6 replyToken:(id)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = blt_general_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor setReplyBlock: forSection: %@ bulletin: %@", &v20, 0x16u);
  }

  v17 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
  [v17 cacheReply:v15 withSectionID:v11 bulletinID:v12 publicationDate:v14 replyToken:v13];

  v18 = blt_general_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor saved new reply", &v20, 2u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)clearReplyBlockForReplyToken:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = blt_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor clearReplyBlockForReplyToken: %@", &v9, 0xCu);
  }

  v5 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
  v6 = [v5 cacheDidPlayLightsAndSirens:0 withReplyToken:v3];

  v7 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
  [v7 purgeReplyInfo:v6 withReplyToken:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_replyTokenForSectionID:(id)a3 publisherMatchID:(id)a4
{
  v4 = [BLTBBBulletinKey bulletinKeyWithSectionID:a3 publisherMatchID:a4];
  v5 = [v4 keyString];

  return v5;
}

- (void)_subscriberWillAllowBulletin:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:8.0];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _subscriberWillAllowBulletin with timeout %@", &buf, 0xCu);
  }

  v10 = [(BLTBulletinDistributor *)self clientReplyTimeoutManager];
  v11 = [v6 publisherMatchID];
  v12 = [v6 sectionID];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke;
  v23[3] = &unk_278D327C8;
  v25 = v26;
  v13 = v7;
  v24 = v13;
  v14 = [v10 addClientReplyTimeoutForBulletin:v11 sectionID:v12 timeout:v23 handler:8.0];
  v15 = v29[5];
  v29[5] = v14;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x2020000000;
  v36 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke_126;
  v18[3] = &unk_278D32818;
  p_buf = &buf;
  v21 = v26;
  v18[4] = self;
  v22 = &v28;
  v16 = v13;
  v19 = v16;
  [(BLTBulletinDistributor *)self _pingSubscriberWithBulletin:v6 ack:v18];

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke(uint64_t a1)
{
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _subscriberWillAllowBulletin timed out waiting for subscriber, returning allow bulletin", v4, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return (*(*(a1 + 32) + 16))();
}

void __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke_126(uint64_t a1, uint64_t a2)
{
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke_2;
  block[3] = &unk_278D327F0;
  v10 = a2;
  block[4] = *(a1 + 32);
  v9 = *(a1 + 56);
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  dispatch_async(v4, block);
}

void __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _subscriberWillAllowBulletin received ack from subscriber", &v8, 2u);
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = blt_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_INFO, "BLTBulletinDistributor _subscriberWillAllowBulletin this is first ack", &v8, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v4 = blt_general_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _subscriberWillAllowBulletin not timed out, returning %@", &v8, 0xCu);
      }

      v6 = [*(a1 + 32) clientReplyTimeoutManager];
      [v6 invalidateClientReplyTimeout:*(*(*(a1 + 64) + 8) + 40)];

      (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 72) == 1);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 attachment:(id)a7 attachmentType:(int64_t)a8 alwaysSend:(BOOL)a9 withReply:(id)a10
{
  v73 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v16 = a4;
  v45 = a7;
  v17 = a10;
  v18 = [v16 sectionID];

  if (v18)
  {
    mruCacheOfSectionIDs = self->_mruCacheOfSectionIDs;
    v20 = [v16 sectionID];
    [(BLTSimpleCache *)mruCacheOfSectionIDs cacheObject:v20];

    kdebug_trace();
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke;
    v60[3] = &unk_278D32868;
    v66 = a9;
    v60[4] = self;
    v21 = v16;
    v61 = v21;
    v64 = a5;
    v67 = a6;
    v63 = v17;
    v62 = v45;
    v65 = a8;
    v22 = MEMORY[0x245D067A0](v60);
    [(BLTBulletinDistributor *)self _mapBulletin:v21];
    if (a9)
    {
      v22[2](v22);
    }

    else
    {
      v24 = [v21 sectionID];
      v25 = [v21 publisherMatchID];
      v43 = [BLTBBBulletinKey bulletinKeyWithSectionID:v24 publisherMatchID:v25];

      v26 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoSectionInfoForPhoneKey:v43];
      v27 = [v21 icon];
      [v26 setIcon:v27];

      v28 = [v21 sectionDisplayName];
      [v26 setDisplayName:v28];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__6;
      v71 = __Block_byref_object_dispose__6;
      v72 = 0;
      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v59 = 0;
      v29 = [(BLTBulletinDistributor *)self clientReplyTimeoutManager];
      v30 = [v21 publisherMatchID];
      v31 = [v21 sectionID];
      v32 = BLTGetSettingSyncForNotificationTimeout();
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2;
      v53[3] = &unk_278D327C8;
      v55 = &v56;
      v33 = v22;
      v54 = v33;
      v34 = [v29 addClientReplyTimeoutForBulletin:v30 sectionID:v31 timeout:v53 handler:v32];
      v35 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v34;

      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_142;
      v49[3] = &unk_278D32890;
      v51 = &v56;
      v49[4] = self;
      p_buf = &buf;
      v50 = v33;
      v36 = MEMORY[0x245D067A0](v49);
      settingSync = self->_settingSync;
      v38 = [v21 sectionID];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2_143;
      v46[3] = &unk_278D327C8;
      v48 = &v56;
      v39 = v36;
      v47 = v39;
      v40 = [(BLTSettingSync *)settingSync performSyncIfNeededForSectionID:v38 gizmoSectionInfo:v26 completion:v46];

      if (v40 == 2 && (v57[3] & 1) == 0)
      {
        v41 = blt_general_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [BLTBulletinDistributor observer:addBulletin:forFeed:playLightsAndSirens:attachment:attachmentType:alwaysSend:withReply:];
        }

        v39[2](v39);
      }

      _Block_object_dispose(&v56, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v23 = blt_general_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_241FB3000, v23, OS_LOG_TYPE_ERROR, "Serious error adding bulletin: bulletin has no section ID.  Dropping bulletin.\n%@", &buf, 0xCu);
    }

    _BLTCaptureBug(@"BBAddBulletinSectionNil");
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(*(a1 + 32) + 88);
    v4 = [*(a1 + 40) sectionID];
    v5 = [*(a1 + 40) subsectionIDs];
    v6 = [*(a1 + 40) sectionSubtype];
    v7 = [*(a1 + 40) categoryID];
    v2 = [v3 willNanoPresentNotificationForSectionID:v4 subsectionIDs:v5 subtype:v6 category:v7 ignoresDowntime:objc_msgSend(*(a1 + 40) isCritical:{"ignoresDowntime"), objc_msgSend(*(a1 + 40), "hasCriticalIcon")}];
  }

  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = [v9 publisherMatchID];
    v11 = *(a1 + 64);
    v12 = "YES";
    if (*(a1 + 81))
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    if (![*(a1 + 40) turnsOnDisplay])
    {
      v12 = "NO";
    }

    v14 = _stringForSettingsWillPresentBlockedBy(v2);
    *buf = 138413570;
    v42 = v9;
    v43 = 2112;
    v44 = v10;
    v45 = 2048;
    v46 = v11;
    v47 = 2080;
    v48 = v13;
    v49 = 2080;
    v50 = v12;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor addBulletin: %@ (publisherMatchID: %@) forFeed: %lu playLightsAndSirens: %s turnsOnDisplay: %s willPresentNotification: %@", buf, 0x3Eu);
  }

  if ([*(a1 + 32) _willNanoPresent:v2 forBulletin:*(a1 + 40) feed:*(a1 + 64)])
  {
    v15 = *(a1 + 64) & 0x817ELL;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_131;
    v33[3] = &unk_278D32840;
    v39 = v15 != 0;
    v36 = v2;
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v37 = *(a1 + 64);
    *&v18 = v16;
    *(&v18 + 1) = *(a1 + 32);
    v30 = v18;
    v19 = v17;
    v40 = *(a1 + 81);
    *&v20 = *(a1 + 48);
    *(&v20 + 1) = v19;
    v34 = v30;
    v35 = v20;
    v38 = *(a1 + 72);
    v21 = MEMORY[0x245D067A0](v33);
    v22 = [*(*(a1 + 32) + 144) subscribers];
    v23 = [*(a1 + 40) sectionID];
    v24 = [v22 hasSubscribersForSectionID:v23];

    v25 = blt_general_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = "NO";
      if (v24)
      {
        v26 = "YES";
      }

      *buf = 136315138;
      v42 = v26;
      _os_log_impl(&dword_241FB3000, v25, OS_LOG_TYPE_INFO, "BLTBulletinDistributor addBulletin hasSubscribers: %s", buf, 0xCu);
    }

    if (v24)
    {
      v28 = *(a1 + 32);
      v27 = *(a1 + 40);
      if (v15)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_141;
        v31[3] = &unk_278D320A8;
        v32 = v21;
        [v28 _subscriberWillAllowBulletin:v27 completion:v31];

LABEL_22:
        goto LABEL_23;
      }

      [v28 _pingSubscriberWithBulletin:v27 ack:0];
    }

    v21[2](v21, 1);
    goto LABEL_22;
  }

  [*(a1 + 32) _cleanupForAddedBulletin:*(a1 + 40)];
  (*(*(a1 + 56) + 16))();
LABEL_23:
  v29 = *MEMORY[0x277D85DE8];
}

void __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_131(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2 && *(a1 + 88) == 1)
  {
    v4 = *(a1 + 64);
    if ([*(a1 + 32) hasCriticalIcon])
    {
      v5 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsCriticalAndGroupingSettings] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v9 = [*(a1 + 32) blt_isVOIPCall];
    v10 = v9;
    v11 = 1;
    if (v4 != 128 && v4 != 256)
    {
      v11 = v5 | v9;
    }

    v12 = [*(a1 + 40) _nanoPresentableFeedFromPhoneFeed:*(a1 + 72)];
    v13 = [*(a1 + 32) sectionID];
    if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAddBulletinReplyToken])
    {
      v14 = [MEMORY[0x277CCAD78] UUID];
      [v14 UUIDString];
    }

    else
    {
      v15 = *(a1 + 40);
      v14 = [*(a1 + 32) publisherMatchID];
      [v15 _replyTokenForSectionID:v13 publisherMatchID:v14];
    }
    v16 = ;

    if (v11)
    {
      if (v4 == 128)
      {
        v17 = "Wrist detection disabled";
      }

      else if (v4 == 256)
      {
        v17 = "Forwarded only";
      }

      else
      {
        v22 = "Alerting everywhere";
        if (v10)
        {
          v22 = "Ringtone call";
        }

        if (v5)
        {
          v17 = "Critical icon";
        }

        else
        {
          v17 = v22;
        }
      }

      v23 = blt_general_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v30 = v17;
        _os_log_impl(&dword_241FB3000, v23, OS_LOG_TYPE_INFO, "BLTBulletinDistributor: %s so lie to Companion that Gizmo won't alert.", buf, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v18 = *(a1 + 56);
      v19 = *(a1 + 40);
      v20 = [*(a1 + 32) publisherMatchID];
      v21 = [*(a1 + 32) publishDate];
      [v19 setReplyBlock:v18 forSection:v13 bulletin:v20 publicationDate:v21 replyToken:v16];
    }

    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v26 = [v25 turnsOnDisplay];
    if (!(v11 & 1 | ((v26 & 1) == 0)))
    {
      v26 = *(a1 + 89);
    }

    if (([v24 _notifyGizmoOfBulletin:v25 forFeed:v12 updateType:0 playLightsAndSirens:v26 & 1 shouldSendReplyIfNeeded:(v11 ^ 1) & 1 attachment:*(a1 + 48) attachmentType:*(a1 + 80) replyToken:v16] & 1) == 0)
    {
      v27 = blt_general_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241FB3000, v27, OS_LOG_TYPE_DEFAULT, "Will not notify gizmo", buf, 2u);
      }

      [*(a1 + 40) _cleanupForAddedBulletin:*(a1 + 32)];
      if ((v11 & 1) == 0)
      {
        [*(a1 + 40) clearReplyBlockForReplyToken:v16];
        (*(*(a1 + 56) + 16))();
      }
    }
  }

  else
  {
    v6 = blt_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = "subscriber suppressed";
      if (a2)
      {
        v7 = "unknown reason";
      }

      if (*(a1 + 88))
      {
        v8 = v7;
      }

      else
      {
        v8 = "Not in interrupting feed";
      }

      *buf = 136315138;
      v30 = v8;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_INFO, "BLTBulletinDistributor: %s so not going to coordinate.", buf, 0xCu);
    }

    [*(a1 + 40) _cleanupForAddedBulletin:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = blt_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2_cold_1();
    }

    *(*(*(v1 + 40) + 8) + 24) = 1;
    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

uint64_t __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_142(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v2 = [*(a1 + 32) clientReplyTimeoutManager];
  [v2 invalidateClientReplyTimeout:*(*(*(a1 + 56) + 8) + 40)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2_143(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = blt_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Sync'ing section info completed. Performing add bulletin now", v3, 2u);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (void)observer:(id)a3 modifyBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BLTBulletinDistributor *)self bbObserver];
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v7;
    v19 = 2048;
    v20 = a5;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ modifyBulletin: %@ feed: %lu", &v13, 0x2Au);
  }

  v10 = [(BLTBulletinDistributor *)v7 sectionID];

  if (v10)
  {
    if (![(BLTBulletinDistributor *)self _enqueuBulletinUpdate:0 bulletin:v7 feed:a5])
    {
      [(BLTBulletinDistributor *)self _performModifyBulletin:v7 forFeed:a5];
    }
  }

  else
  {
    v11 = blt_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_ERROR, "Serious error modifying bulletin: bulletin has no section ID.  Dropping bulletin.\n%@", &v13, 0xCu);
    }

    _BLTCaptureBug(@"BBModifyBulletinSectionNil");
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_performModifyBulletin:(id)a3 forFeed:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = blt_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v10 = a4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Modifying bulletin for feed: %lu %@", buf, 0x16u);
  }

  [(BLTBulletinDistributor *)self _notifyGizmoOfBulletin:v6 forFeed:a4 updateType:1 playLightsAndSirens:0 shouldSendReplyIfNeeded:0 attachment:0 attachmentType:0 replyToken:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)a3 removeBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = blt_general_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (a5 == 8)
  {
    if (v11)
    {
      v12 = [(BLTBulletinDistributor *)self bbObserver];
      v17 = 138413058;
      v18 = self;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v9;
      v23 = 2048;
      v24 = 8;
      _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ removeBulletin: %@ feed: %lu - lock screen feed only - ignoring", &v17, 0x2Au);
    }
  }

  else
  {
    if (v11)
    {
      v13 = [(BLTBulletinDistributor *)self bbObserver];
      v17 = 138413058;
      v18 = self;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v9;
      v23 = 2048;
      v24 = a5;
      _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ removeBulletin: %@ feed: %lu", &v17, 0x2Au);
    }

    v14 = [(BLTBulletinDistributor *)v9 sectionID];

    if (v14)
    {
      if (![(BLTBulletinDistributor *)self _enqueuBulletinUpdate:1 bulletin:v9 feed:a5])
      {
        [(BLTBulletinDistributor *)self _performRemoveBulletin:v9 forFeed:a5];
      }
    }

    else
    {
      v15 = blt_general_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_ERROR, "Serious error removing bulletin: bulletin has no section ID.  Dropping bulletin.\n%@", &v17, 0xCu);
      }

      _BLTCaptureBug(@"BBRemoveBulletinSectionNil");
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performRemoveBulletin:(id)a3 forFeed:(unint64_t)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = blt_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 134218242;
    v40 = a4;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Removing bulletin for feed: %lu %@", &v39, 0x16u);
  }

  if ((a4 & 8) != 0)
  {
    lockScreenFeed = self->_lockScreenFeed;
    v9 = [v6 bulletinID];
    [(NSMutableSet *)lockScreenFeed removeObject:v9];
  }

  if (a4)
  {
    noticesFeed = self->_noticesFeed;
    v11 = [v6 bulletinID];
    [(NSMutableSet *)noticesFeed removeObject:v11];
  }

  v12 = self->_lockScreenFeed;
  v13 = [v6 bulletinID];
  if (([(NSMutableSet *)v12 containsObject:v13]& 1) != 0)
  {
    goto LABEL_16;
  }

  v14 = self->_noticesFeed;
  v15 = [v6 bulletinID];
  LOBYTE(v14) = [(NSMutableSet *)v14 containsObject:v15];

  if ((v14 & 1) == 0)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    v16 = [v6 dateOrRecencyDate];
    v17 = [v16 dateByAddingTimeInterval:86400.0];
    [v17 timeIntervalSinceDate:v13];
    v19 = v18;

    if (v19 <= 0.0)
    {
      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    }

    v21 = [v6 sectionID];
    v22 = [v6 publisherMatchID];
    v23 = [BLTBBBulletinKey bulletinKeyWithSectionID:v21 publisherMatchID:v22];

    v24 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoSectionInfoForPhoneKey:v23];
    v25 = [v24 mappedSectionID];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [v6 sectionID];
    }

    v28 = v27;

    gizmoConnection = self->_gizmoConnection;
    v30 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoPublisherBulletinIDForPhoneKey:v23];
    v31 = [v6 recordID];
    [(BLTRemoteGizmoClient *)gizmoConnection removeBulletinWithPublisherBulletinID:v30 recordID:v31 sectionID:v28 withTimeout:v20];

    [(BLTBulletinDistributor *)self _cleanupForAddedBulletin:v6];
    attachmentHashCache = self->_attachmentHashCache;
    v33 = [v6 sectionID];
    v34 = [v6 publisherMatchID];
    [(BLTHashCache *)attachmentHashCache updateCacheWithItems:0 forSectionID:v33 matchID:v34 result:0];

    iconHashCache = self->_iconHashCache;
    v36 = [v6 sectionID];
    v37 = [v6 publisherMatchID];
    [(BLTHashCache *)iconHashCache updateCacheWithItems:0 forSectionID:v36 matchID:v37 result:0];

LABEL_16:
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)a3 updateGlobalSettings:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  -[BLTBulletinDistributor setSummarizationSetting:](self, "setSummarizationSetting:", [a4 globalSummarizationSetting]);
  v5 = blt_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLTBulletinDistributor summarizationSetting](self, "summarizationSetting")}];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Updated summarization setting to %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleDidPlayLightsAndSirens:(BOOL)a3 forBulletin:(id)a4 inPhoneSection:(id)a5 transmissionDate:(id)a6 receptionDate:(id)a7 replyToken:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__BLTBulletinDistributor_handleDidPlayLightsAndSirens_forBulletin_inPhoneSection_transmissionDate_receptionDate_replyToken___block_invoke;
  block[3] = &unk_278D328B8;
  v31 = a3;
  block[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(v19, block);
}

- (void)_handleDidPlayLightsAndSirens:(BOOL)a3 forBulletin:(id)a4 inPhoneSection:(id)a5 transmissionDate:(id)a6 receptionDate:(id)a7 fromGizmo:(BOOL)a8 finalReply:(BOOL)a9 replyToken:(id)a10
{
  v10 = a8;
  v13 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a10;
  if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAddBulletinReplyToken] & 1) == 0)
  {
    v19 = [(BLTBulletinDistributor *)self _replyTokenForSectionID:v16 publisherMatchID:v15];

    v18 = v19;
  }

  if (v18)
  {
    if (v13)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    v21 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
    v22 = [v21 cacheDidPlayLightsAndSirens:v20 withReplyToken:v18];

    if (!v22)
    {
      v23 = blt_general_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BLTBulletinDistributor _handleDidPlayLightsAndSirens:forBulletin:inPhoneSection:transmissionDate:receptionDate:fromGizmo:finalReply:replyToken:];
      }

      goto LABEL_31;
    }

    v23 = [v22 publisherMatchID];
    v24 = [v22 sectionID];
    v25 = blt_general_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = "NO";
      *v38 = 136315906;
      if (v13)
      {
        v26 = "YES";
      }

      *&v38[4] = v26;
      v39 = 2112;
      v40 = v18;
      v41 = 2112;
      v42 = v23;
      v43 = 2112;
      v44 = v24;
      _os_log_impl(&dword_241FB3000, v25, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor handleDidPlayLightsAndSirens: %s forReplyToken: %@ bulletin: %@ inSection: %@", v38, 0x2Au);
    }

    if (v10)
    {
      v27 = blt_perf_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [MEMORY[0x277CBEAA8] date];
        [v28 timeIntervalSinceDate:v17];
        *v38 = 138412802;
        *&v38[4] = v24;
        v39 = 2112;
        v40 = v23;
        v41 = 2048;
        v42 = v29;
        _os_log_impl(&dword_241FB3000, v27, OS_LOG_TYPE_INFO, "%@.%@.GizmoToCompanionDelay: %f", v38, 0x20u);
      }

      v30 = blt_perf_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [MEMORY[0x277CBEAA8] date];
        v32 = [v22 bulletinPublicationDate];
        [v31 timeIntervalSinceDate:v32];
        *v38 = 138412802;
        *&v38[4] = v24;
        v39 = 2112;
        v40 = v23;
        v41 = 2048;
        v42 = v33;
        _os_log_impl(&dword_241FB3000, v30, OS_LOG_TYPE_INFO, "%@.%@.PublicationToReplayDelay: %f", v38, 0x20u);
      }
    }

    v34 = [v22 sendReply];
    v35 = blt_general_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (v36)
      {
        *v38 = 0;
        _os_log_impl(&dword_241FB3000, v35, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor sending reply", v38, 2u);
      }

      if (!a9)
      {
        goto LABEL_30;
      }

      v35 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
      [v35 purgeReplyInfo:v22 withReplyToken:v18];
    }

    else if (v36)
    {
      *v38 = 0;
      _os_log_impl(&dword_241FB3000, v35, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor saved didPlayLightsAndSirens state", v38, 2u);
    }

LABEL_30:
LABEL_31:

    goto LABEL_32;
  }

  v22 = blt_general_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [BLTBulletinDistributor _handleDidPlayLightsAndSirens:forBulletin:inPhoneSection:transmissionDate:receptionDate:fromGizmo:finalReply:replyToken:];
  }

LABEL_32:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)handleAction:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = blt_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ handleAction: %@", buf, 0x16u);
  }

  v6 = [(BLTBulletinDistributor *)self bbObserver];
  v7 = [v4 publisherBulletinID];
  v14 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v9 = [v4 sectionID];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__BLTBulletinDistributor_handleAction___block_invoke;
  v12[3] = &unk_278D325A0;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [v6 getBulletinsForPublisherMatchIDs:v8 sectionID:v9 withCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __39__BLTBulletinDistributor_handleAction___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = blt_general_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "%@ handleAction: %@ bulletins: %@", &v10, 0x20u);
    }

    [*(a1 + 32) handleAction:*(a1 + 40) bulletin:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__BLTBulletinDistributor_handleAction___block_invoke_cold_1(a1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAction:(id)a3 bulletin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke;
  block[3] = &unk_278D316C8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = BLTNameForActionType([*(a1 + 32) actionType]);
    v4 = [*(a1 + 32) publisherBulletinID];
    v5 = [*(a1 + 32) recordID];
    v6 = [*(a1 + 32) sectionID];
    *buf = 138413058;
    v60 = v3;
    v61 = 2112;
    v62 = v4;
    v63 = 2112;
    v64 = v5;
    v65 = 2112;
    v66 = v6;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Received %@ action for publisherBulletinD: %@, recordID: %@, sectionID: %@", buf, 0x2Au);
  }

  v7 = 0x277D2B000uLL;
  v8 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v9 = v8;
  if (v8 && [v8 bltVersion] <= 3)
  {
    v10 = [*(a1 + 40) sectionID];
    v11 = [v10 isEqualToString:@"com.apple.mobiletimer"];
  }

  else
  {
    v11 = 0;
  }

  v12 = (a1 + 32);
  v13 = [*(a1 + 32) actionType];
  if (v13 <= 6)
  {
    if (v13 != 3)
    {
      if (v13 != 6)
      {
        goto LABEL_33;
      }

      v15 = [*(a1 + 40) responseForSnoozeAction];
      if (!v15)
      {
        goto LABEL_54;
      }

      goto LABEL_49;
    }

    v31 = [*(a1 + 40) responseForAcknowledgeAction];
    if (v31)
    {
      v15 = v31;
      v11 = 0;
      goto LABEL_49;
    }

    v38 = blt_general_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241FB3000, v38, OS_LOG_TYPE_DEFAULT, "Did not find acknowledgeAction. Synthesizing action.", buf, 2u);
    }

    v14 = [MEMORY[0x277CF3500] actionWithIdentifier:@"BLTAcknowledgeActionIdentifier"];
    v15 = [*(a1 + 40) responseForAction:v14];
  }

  else
  {
    if (v13 != 7)
    {
      if (v13 != 8)
      {
        if (v13 == 11)
        {
          v14 = [*(a1 + 40) followActivityAction];
          if (v14)
          {
            v15 = [*(a1 + 40) responseForAction:v14];
            v16 = blt_general_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = *(a1 + 48);
              *buf = 138412802;
              v60 = v17;
              v61 = 2112;
              v62 = v14;
              v63 = 2112;
              v64 = v15;
              _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_INFO, "%@ handleAction: followActivityAction: %@ response: %@", buf, 0x20u);
            }
          }

          else
          {
            v16 = blt_general_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_1(a1);
            }

            v15 = 0;
          }

          goto LABEL_48;
        }

LABEL_33:
        v32 = blt_general_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_2(v12);
        }

        goto LABEL_54;
      }

      v29 = *(a1 + 40);
      v30 = [v29 dismissAction];
      v15 = [v29 responseForAction:v30];

      if (!v15)
      {
        goto LABEL_54;
      }

LABEL_49:
      v39 = [*v12 context];
      v40 = [v39 mutableCopy];

      if (!v40)
      {
        v40 = [MEMORY[0x277CBEB38] dictionary];
      }

      v41 = [*(v7 + 3320) blt_boundedWaitForActivePairedDevice];
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:NRWatchOSVersionForRemoteDevice()];
      [v40 setObject:v42 forKey:@"BLTNRWatchOSVersion"];

      [v15 setContext:v40];
      v43 = *(a1 + 48);
      v44 = *(v43 + 40);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_154;
      v51[3] = &unk_278D328E0;
      v51[4] = v43;
      v52 = *(a1 + 32);
      v45 = v15;
      v53 = v45;
      [v44 sendResponse:v45 withCompletion:v51];
      if (v11)
      {
        v46 = *(*(a1 + 48) + 40);
        v47 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
        v48 = [*(a1 + 40) sectionID];
        [v46 clearBulletins:v47 inSection:v48];
      }

      goto LABEL_56;
    }

    v50 = v9;
    v14 = *v12;
    v18 = blt_general_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v14 identifier];
      *buf = 138412290;
      v60 = v19;
      _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_INFO, "Looking for action with identifier: %@", buf, 0xCu);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v20 = [*(a1 + 40) supplementaryActions];
    v21 = [v20 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v55;
LABEL_22:
      v24 = 0;
      while (1)
      {
        if (*v55 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v54 + 1) + 8 * v24);
        v26 = [v25 identifier];
        v27 = [v14 identifier];
        v28 = [v26 isEqualToString:v27];

        if (v28)
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v54 objects:v58 count:16];
          if (v22)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }

      v15 = [*(a1 + 40) responseForAction:v25];

      v12 = (a1 + 32);
      v9 = v50;
      v7 = 0x277D2B000;
      if (v15)
      {
        goto LABEL_48;
      }
    }

    else
    {
LABEL_28:

      v12 = (a1 + 32);
      v9 = v50;
      v7 = 0x277D2B000;
    }

    v15 = [v14 identifier];

    if (v15)
    {
      v33 = blt_general_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v14 identifier];
        *buf = 138412290;
        v60 = v34;
        _os_log_impl(&dword_241FB3000, v33, OS_LOG_TYPE_DEFAULT, "Did not find action with identifier: %@. Synthesizing action.", buf, 0xCu);
      }

      v35 = MEMORY[0x277CF3500];
      v36 = [v14 identifier];
      v37 = [v35 actionWithIdentifier:v36];

      v15 = [*(a1 + 40) responseForAction:v37];
    }
  }

LABEL_48:

  v11 = 0;
  if (v15)
  {
    goto LABEL_49;
  }

LABEL_54:
  v45 = blt_general_log();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_3(v12);
  }

LABEL_56:

  v49 = *MEMORY[0x277D85DE8];
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_154(void *a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = blt_general_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[6];
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ handleAction: SUCCESS: actionInfo: %@ at sending response %@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_154_cold_1(a1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeBulletinWithPublisherBulletinID:(id)a3 recordID:(id)a4 sectionID:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = blt_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v24 = self;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "%@ removeBulletinWithPublisherBulletinID: %@ recordID: %@ sectionID: %@", buf, 0x2Au);
  }

  v12 = [(BLTBulletinDistributor *)self bbObserver];
  v22 = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__BLTBulletinDistributor_removeBulletinWithPublisherBulletinID_recordID_sectionID___block_invoke;
  v18[3] = &unk_278D32908;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [v12 getBulletinsForPublisherMatchIDs:v13 sectionID:v14 withCompletion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __83__BLTBulletinDistributor_removeBulletinWithPublisherBulletinID_recordID_sectionID___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = blt_general_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v13 = 138413314;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ removeBulletinWithPublisherBulletinID: %@ recordID: %@ sectionID: %@ bulletin: %@", &v13, 0x34u);
    }

    v5 = [*(a1 + 32) bbObserver];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v3];
    v11 = [v3 sectionID];
    [v5 clearBulletins:v10 inSection:v11];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__BLTBulletinDistributor_removeBulletinWithPublisherBulletinID_recordID_sectionID___block_invoke_cold_1(a1);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldSuppressLightsAndSirensNow
{
  v2 = [MEMORY[0x277CE64E8] currentCarPlayExternalDevice];
  v3 = v2 != 0;

  return v3;
}

- (void)willSendLightsAndSirensWithPublisherBulletinID:(id)a3 recordID:(id)a4 inPhoneSection:(id)a5 systemApp:(BOOL)a6 completion:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = blt_general_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v32 = self;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_DEFAULT, "%@ willSendLightsAndSirensWithPublisherBulletinID: %@ recordID: %@ phoneSectionID: %@", buf, 0x2Au);
  }

  v17 = [(BLTBulletinDistributor *)self bbObserver];
  v30 = v12;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __118__BLTBulletinDistributor_willSendLightsAndSirensWithPublisherBulletinID_recordID_inPhoneSection_systemApp_completion___block_invoke;
  v24[3] = &unk_278D32930;
  v24[4] = self;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v29 = a6;
  v28 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  [v17 getBulletinsForPublisherMatchIDs:v18 sectionID:v20 withCompletion:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __118__BLTBulletinDistributor_willSendLightsAndSirensWithPublisherBulletinID_recordID_inPhoneSection_systemApp_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = blt_general_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v15 = 138413314;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "%@ removeBulletinWithPublisherBulletinID: %@ recordID: %@ phoneSectionID: %@ bulletin: %@", &v15, 0x34u);
    }
  }

  else
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v15 = 138413058;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "%@ removeBulletinWithPublisherBulletinID: %@ recordID: %@ phoneSectionID: %@ - failed no bulletin found", &v15, 0x2Au);
    }

    [*(a1 + 32) willSendLightsAndSirensWithRecordID:*(a1 + 48) inPhoneSection:*(a1 + 56) systemApp:*(a1 + 72) completion:*(a1 + 64)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)willSendLightsAndSirensWithRecordID:(id)a3 inPhoneSection:(id)a4 systemApp:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__BLTBulletinDistributor_willSendLightsAndSirensWithRecordID_inPhoneSection_systemApp_completion___block_invoke;
  block[3] = &unk_278D32150;
  v21 = a5;
  block[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

uint64_t __98__BLTBulletinDistributor_willSendLightsAndSirensWithRecordID_inPhoneSection_systemApp_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) != 1)
  {
    v7 = [*(*(a1 + 32) + 160) currentLayout];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v7 elements];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = *v22;
      v12 = *MEMORY[0x277D0ABA0];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) identifier];
          v15 = [v14 isEqualToString:v12];

          if (v15)
          {
            LODWORD(v10) = 1;
            goto LABEL_18;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v16 = [v7 displayBacklightLevel];
    v17 = blt_general_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v26[0]) = v16 != 0;
      WORD2(v26[0]) = 1024;
      *(v26 + 6) = v10;
      _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_DEFAULT, "willSendLightsAndSirensWithPublisherBulletinID: no stored bulletin and not for a system app. willSend based on screenIsOn: %{BOOL}u isUILocked: %{BOOL}u", buf, 0xEu);
    }

    v5 = 0;
    if (v16)
    {
      v8 = v10 ^ 1;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_23;
  }

  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "willSendLightsAndSirensWithPublisherBulletinID: no stored bulletin but this is for a system app", buf, 2u);
  }

  v3 = [*(*(a1 + 32) + 144) subscribers];
  v4 = [v3 hasSubscribersForSectionID:*(a1 + 40)];

  if (v4)
  {
    v5 = 120;
    v6 = [*(*(a1 + 32) + 144) subscribers];
    [v6 pingWithRecordID:*(a1 + 48) forSectionID:*(a1 + 40)];

    v7 = blt_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26[0] = 120;
      _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "willSendLightsAndSirensWithPublisherBulletinID: found subscribers sending response with additional time: %lu", buf, 0xCu);
    }

    v8 = 1;
LABEL_23:

    goto LABEL_25;
  }

  v5 = 0;
  v8 = 1;
LABEL_25:
  v18 = blt_general_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    LODWORD(v26[0]) = v8;
    WORD2(v26[0]) = 2048;
    *(v26 + 6) = v5;
    _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_DEFAULT, "willSendLightsAndSirensWithPublisherBulletinID: sending back response willSend: %{BOOL}u additionalTime: %lu", buf, 0x12u);
  }

  result = (*(*(a1 + 56) + 16))();
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __115__BLTBulletinDistributor__addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_stateDescription
{
  v3 = [(BLTBulletinDistributor *)self settingSync];
  v4 = [(BLTSimpleCache *)self->_mruCacheOfSectionIDs objects];
  v5 = [v3 settingsDescriptionForSectionIDs:v4];

  return v5;
}

- (void)_removeTranscodedAttachmentIfNeededForBulletin:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "Unable to remove transcoded attachment file at %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidPlayLightsAndSirens:forBulletin:inPhoneSection:transmissionDate:receptionDate:fromGizmo:finalReply:replyToken:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__BLTBulletinDistributor_handleAction___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_4();
  v7 = v3;
  _os_log_error_impl(&dword_241FB3000, v4, OS_LOG_TYPE_ERROR, "%@ handleAction: %@ bulletins: %@", v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_2(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = BLTNameForActionType([*a1 actionType]);
  v3 = [*a1 publisherBulletinID];
  v4 = [*a1 recordID];
  v5 = [*a1 sectionID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3(&dword_241FB3000, v6, v7, "No handler for %@ for publisherBulletinD: %@, recordID: %@, sectionID: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_3(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = BLTNameForActionType([*a1 actionType]);
  v3 = [*a1 publisherBulletinID];
  v4 = [*a1 recordID];
  v5 = [*a1 sectionID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3(&dword_241FB3000, v6, v7, "Failed to find matching action for %@ for publisherBulletinD: %@, recordID: %@, sectionID: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_154_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

void __83__BLTBulletinDistributor_removeBulletinWithPublisherBulletinID_recordID_sectionID___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
  v10 = *MEMORY[0x277D85DE8];
}

@end