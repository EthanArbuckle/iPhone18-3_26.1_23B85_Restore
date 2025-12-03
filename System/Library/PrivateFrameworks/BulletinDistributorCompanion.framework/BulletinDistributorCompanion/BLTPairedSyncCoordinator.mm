@interface BLTPairedSyncCoordinator
+ (id)syncState;
- (BLTPairedSyncCoordinator)init;
- (void)_initInitialSyncStateComplete;
- (void)_reportProgress:(double)progress;
- (void)_syncDidComplete;
- (void)initialSyncStateObserver:(id)observer initialSyncDidCompleteForPairingIdentifier:(id)identifier;
- (void)initialSyncStateObserver:(id)observer syncDidCompleteForPairingIdentifier:(id)identifier;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)syncSessionObserver:(id)observer didReceiveUpdate:(id)update;
@end

@implementation BLTPairedSyncCoordinator

+ (id)syncState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__BLTPairedSyncCoordinator_syncState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (syncState_onceToken != -1)
  {
    dispatch_once(&syncState_onceToken, block);
  }

  v2 = +[BLTPairedSyncState sharedInstance];

  return v2;
}

uint64_t __37__BLTPairedSyncCoordinator_syncState__block_invoke(uint64_t a1)
{
  __sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BLTPairedSyncCoordinator)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = BLTPairedSyncCoordinator;
  v2 = [(BLTPairedSyncCoordinator *)&v16 init];
  if (v2)
  {
    v3 = +[BLTPairedSyncState sharedInstance];
    v4 = [MEMORY[0x277D37C40] syncCoordinatorWithServiceName:@"com.apple.pairedsync.bulletindistributor"];
    pairedSyncCoordinator = v2->_pairedSyncCoordinator;
    v2->_pairedSyncCoordinator = v4;

    v6 = v2->_pairedSyncCoordinator;
    v7 = BLTWorkQueue();
    [(PSYSyncCoordinator *)v6 setDelegate:v2 queue:v7];

    v8 = objc_alloc_init(MEMORY[0x277D37C30]);
    pairedInitialSyncObserver = v2->_pairedInitialSyncObserver;
    v2->_pairedInitialSyncObserver = v8;

    [(PSYInitialSyncStateObserver *)v2->_pairedInitialSyncObserver setDelegate:v2];
    syncRestriction = [(PSYSyncCoordinator *)v2->_pairedSyncCoordinator syncRestriction];
    v11 = blt_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = syncRestriction;
      _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "Paired sync coordinator says current sync restriction is %lu", buf, 0xCu);
    }

    [v3 setState:2 * (syncRestriction != 1)];
    if (syncRestriction == 1)
    {
      v12 = objc_alloc_init(MEMORY[0x277D37C48]);
      pairedSyncObserver = v2->_pairedSyncObserver;
      v2->_pairedSyncObserver = v12;

      [(PSYSyncSessionObserver *)v2->_pairedSyncObserver setDelegate:v2];
      [(PSYSyncSessionObserver *)v2->_pairedSyncObserver startObservingSyncSessionsWithCompletion:&__block_literal_global];
    }

    [(BLTPairedSyncCoordinator *)v2 _initInitialSyncStateComplete];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_initInitialSyncStateComplete
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__BLTPairedSyncCoordinator__initInitialSyncStateComplete__block_invoke;
  v4[3] = &unk_278D317C0;
  v4[4] = self;
  [mEMORY[0x277D2BCF8] waitForPairingStorePathPairingID:v4];
}

void __57__BLTPairedSyncCoordinator__initInitialSyncStateComplete__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = blt_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Requesting initial sync state for %@", &v7, 0xCu);
  }

  [*(*(a1 + 32) + 24) requestInitialSyncStateForPairingIdentifier:v4 completion:&__block_literal_global_10];
  v6 = *MEMORY[0x277D85DE8];
}

void __57__BLTPairedSyncCoordinator__initInitialSyncStateComplete__block_invoke_7(uint64_t a1, char a2)
{
  v3 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BLTPairedSyncCoordinator__initInitialSyncStateComplete__block_invoke_2;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a2;
  dispatch_async(v3, block);
}

void __57__BLTPairedSyncCoordinator__initInitialSyncStateComplete__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = "";
    }

    else
    {
      v3 = " NOT";
    }

    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "PSY says initial sync state is%s complete", &v6, 0xCu);
  }

  v4 = +[BLTPairedSyncState sharedInstance];
  [v4 setInitialSyncComplete:*(a1 + 32)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_syncDidComplete
{
  self->_clientSyncComplete = 1;
  activeSyncSession = [(PSYSyncCoordinator *)self->_pairedSyncCoordinator activeSyncSession];
  [activeSyncSession syncDidComplete];
}

- (void)_reportProgress:(double)progress
{
  activeSyncSession = [(PSYSyncCoordinator *)self->_pairedSyncCoordinator activeSyncSession];
  [activeSyncSession reportProgress:progress];
}

- (void)syncSessionObserver:(id)observer didReceiveUpdate:(id)update
{
  updateCopy = update;
  v6 = BLTWorkQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BLTPairedSyncCoordinator_syncSessionObserver_didReceiveUpdate___block_invoke;
  v8[3] = &unk_278D31400;
  v9 = updateCopy;
  selfCopy = self;
  v7 = updateCopy;
  dispatch_async(v6, v8);
}

uint64_t __65__BLTPairedSyncCoordinator_syncSessionObserver_didReceiveUpdate___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__BLTPairedSyncCoordinator_syncSessionObserver_didReceiveUpdate___block_invoke_2;
  v3[3] = &unk_278D317E8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateNewlyRunningActivitiesWithBlock:v3];
}

void __65__BLTPairedSyncCoordinator_syncSessionObserver_didReceiveUpdate___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 activityInfo];
  v5 = [v4 label];

  v6 = 4;
  v7 = BLTCanStartListeningDuringPairedSyncActivities;
  while (![v5 isEqualToString:*v7])
  {
    ++v7;
    if (!--v6)
    {
      goto LABEL_8;
    }
  }

  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_INFO, "PSY Observer says %@ is now running", &v13, 0xCu);
  }

  v9 = +[BLTPairedSyncState sharedInstance];
  [v9 leaveState:0];

  v10 = *(a1 + 32);
  v11 = *(v10 + 32);
  *(v10 + 32) = 0;

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  v5 = blt_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Received beginSyncSession.", v8, 2u);
  }

  v6 = +[BLTPairedSyncState sharedInstance];
  [v6 leaveState:1];

  if (self->_clientSyncComplete)
  {
    activeSyncSession = [(PSYSyncCoordinator *)self->_pairedSyncCoordinator activeSyncSession];
    [activeSyncSession syncDidComplete];
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  v9 = *MEMORY[0x277D85DE8];
  syncRestriction = [(PSYSyncCoordinator *)self->_pairedSyncCoordinator syncRestriction];
  v4 = blt_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = syncRestriction;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "Received syncCoordinatorDidChangeSyncRestriction. Coordinator says current sync restriction is %lu", &v7, 0xCu);
  }

  if (syncRestriction != 1)
  {
    v5 = +[BLTPairedSyncState sharedInstance];
    [v5 leaveState:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initialSyncStateObserver:(id)observer initialSyncDidCompleteForPairingIdentifier:(id)identifier
{
  v4 = BLTWorkQueue();
  dispatch_async(v4, &__block_literal_global_17);
}

void __96__BLTPairedSyncCoordinator_initialSyncStateObserver_initialSyncDidCompleteForPairingIdentifier___block_invoke()
{
  v0 = blt_general_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_241FB3000, v0, OS_LOG_TYPE_DEFAULT, "InitialSyncState observer says initial sync is entirely complete", v2, 2u);
  }

  v1 = +[BLTPairedSyncState sharedInstance];
  [v1 setInitialSyncComplete:1];
}

- (void)initialSyncStateObserver:(id)observer syncDidCompleteForPairingIdentifier:(id)identifier
{
  v4 = BLTWorkQueue();
  dispatch_async(v4, &__block_literal_global_19);
}

void __89__BLTPairedSyncCoordinator_initialSyncStateObserver_syncDidCompleteForPairingIdentifier___block_invoke()
{
  v0 = blt_general_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_241FB3000, v0, OS_LOG_TYPE_DEFAULT, "InitialSyncState observer says sync is entirely complete", v2, 2u);
  }

  v1 = +[BLTPairedSyncState sharedInstance];
  [v1 setInitialSyncComplete:1];
}

@end