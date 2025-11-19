@interface COMeshTimerAddOn
- (BOOL)_isTimer:(id)a3 targetingAccessory:(id)a4;
- (BOOL)_isTimer:(id)a3 targetingAccessoryIdentifiers:(id)a4;
- (BOOL)performsLocalActions;
- (COMTActionDirector)actionDirector;
- (COMeshTimerAddOn)init;
- (COMeshTimerAddOn)initWithTimerManager:(id)a3;
- (COMeshTimerAddOn)initWithTimerManager:(id)a3 homekitAdapter:(id)a4 hubAdapter:(id)a5;
- (COMeshTimerAddOnDelegate)delegate;
- (id)_commandsForReconciling:(id)a3 toTruth:(id)a4 forNode:(id)a5;
- (id)_currentAccessoryForClient:(id)a3;
- (id)_filteredTimersList:(id)a3 forAccessory:(id)a4;
- (id)_sendRequest:(id)a3 client:(id)a4;
- (id)_timersForAccessories:(id)a3 fromClient:(id)a4 results:(id)a5;
- (id)_timersForAccessory:(id)a3 member:(id)a4;
- (id)_timersForAccessoryIdentifier:(id)a3 allowLocalStorage:(BOOL)a4;
- (id)addTimer:(id)a3 client:(id)a4 member:(id)a5;
- (id)dismissTimerWithIdentifier:(id)a3 client:(id)a4;
- (id)removeTimer:(id)a3 client:(id)a4 member:(id)a5;
- (id)secondaryClusterMemberForAccessory:(id)a3;
- (id)secondaryClusterMemberIfRequiredForAccessory:(id)a3;
- (id)timers;
- (id)updateTimer:(id)a3 client:(id)a4 member:(id)a5;
- (void)_abandonMerge;
- (void)_addCompletionsToFuture:(id)a3 withXPCCallback:(id)a4 transactionDescription:(const char *)a5;
- (void)_addTimerDeleteEvent:(id)a3;
- (void)_broadcastMerge:(id)a3 withTruth:(id)a4;
- (void)_continueMerge:(id)a3 withResponse:(id)a4 fromNode:(id)a5;
- (void)_finishMerge:(id)a3;
- (void)_primeMerge:(id)a3 withNodes:(id)a4;
- (void)_processQueuedCommands;
- (void)_reloadIndexWithCompletion:(id)a3;
- (void)_sendNotification:(id)a3;
- (void)_startMerge;
- (void)_timerManagerStateReset:(id)a3;
- (void)_timerManagerTimerFired:(id)a3;
- (void)_timerManagerTimersAdded:(id)a3;
- (void)_timerManagerTimersChanged:(id)a3;
- (void)_timerManagerTimersRemoved:(id)a3;
- (void)_timerManagerTimersUpdated:(id)a3;
- (void)_withLock:(id)a3;
- (void)addTimer:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6;
- (void)canDispatchAsAccessory:(id)a3 asInstance:(id)a4 reply:(id)a5;
- (void)didAddToMeshController:(id)a3;
- (void)didChangeNodesForMeshController:(id)a3;
- (void)didStopMeshController:(id)a3;
- (void)director:(id)a3 membersChanged:(id)a4;
- (void)director:(id)a3 performAction:(id)a4 from:(id)a5 callback:(id)a6;
- (void)dismissTimerWithIdentifier:(id)a3 fromClient:(id)a4 withCallback:(id)a5;
- (void)establishSecondaryClusterForAccessory:(id)a3;
- (void)handleTimerCreateRequest:(id)a3 callback:(id)a4;
- (void)handleTimerDeleteRequest:(id)a3 callback:(id)a4;
- (void)handleTimerDismissRequest:(id)a3 callback:(id)a4;
- (void)handleTimerFiredNotification:(id)a3;
- (void)handleTimerFiringTimerDismissedNotification:(id)a3;
- (void)handleTimerManagerStateResetNotification:(id)a3;
- (void)handleTimerReadRequest:(id)a3 callback:(id)a4;
- (void)handleTimerUpdateRequest:(id)a3 callback:(id)a4;
- (void)handleTimersAddedNotification:(id)a3;
- (void)handleTimersRemovedNotification:(id)a3;
- (void)handleTimersUpdatedNotification:(id)a3;
- (void)interestTracker:(id)a3 setInterests:(id)a4 forMember:(id)a5 callback:(id)a6;
- (void)interestTrackerTriggerReset:(id)a3;
- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)removeTimer:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6;
- (void)setDelegate:(id)a3;
- (void)setInterests:(id)a3 asAccessory:(id)a4 withCallback:(id)a5;
- (void)timersAsAccessory:(id)a3 fromClient:(id)a4 withCallback:(id)a5;
- (void)timersForAccessories:(id)a3 fromClient:(id)a4 callback:(id)a5;
- (void)updateTimer:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6;
- (void)willRemoveFromMeshController:(id)a3;
- (void)willStartMeshController:(id)a3;
@end

@implementation COMeshTimerAddOn

- (COMeshTimerAddOn)initWithTimerManager:(id)a3 homekitAdapter:(id)a4 hubAdapter:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v34.receiver = self;
  v34.super_class = COMeshTimerAddOn;
  v12 = [(COMeshAddOn *)&v34 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x277D29740]);
    observedTimerManager = v13->_observedTimerManager;
    v13->_observedTimerManager = v14;

    [(MTTimerManager *)v13->_observedTimerManager checkIn];
    objc_storeStrong(&v13->_homekit, a4);
    objc_storeStrong(&v13->_homehub, a5);
    v16 = objc_alloc_init(MEMORY[0x277CBEA60]);
    deletes = v13->_deletes;
    v13->_deletes = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEA60]);
    mergingNodes = v13->_mergingNodes;
    v13->_mergingNodes = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    mergeResponses = v13->_mergeResponses;
    v13->_mergeResponses = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEA60]);
    queuedCommands = v13->_queuedCommands;
    v13->_queuedCommands = v22;

    objc_storeStrong(&v13->_timerManager, a3);
    recorder = v13->_recorder;
    v13->_recorder = &__block_literal_global_3;

    v25 = objc_alloc_init(MEMORY[0x277CBEB98]);
    members = v13->_members;
    v13->_members = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    interests = v13->_interests;
    v13->_interests = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    ourInterests = v13->_ourInterests;
    v13->_ourInterests = v29;

    v31 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = v13;
      _os_log_impl(&dword_244378000, v31, OS_LOG_TYPE_DEFAULT, "%p mesh add-on created", buf, 0xCu);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v13;
}

- (COMeshTimerAddOn)initWithTimerManager:(id)a3
{
  v4 = a3;
  v5 = +[COHomeKitAdapter sharedInstance];
  v6 = +[COHomeHubAdapter sharedInstance];
  v7 = [(COMeshTimerAddOn *)self initWithTimerManager:v4 homekitAdapter:v5 hubAdapter:v6];

  return v7;
}

- (COMeshTimerAddOn)init
{
  v3 = objc_alloc_init(MEMORY[0x277D29740]);
  v4 = [(COMeshTimerAddOn *)self initWithTimerManager:v3];

  return v4;
}

- (void)didAddToMeshController:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v51 didAddToMeshController:v4];
  objc_initWeak(&location, self);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke;
  v48[3] = &unk_278E16B48;
  objc_copyWeak(&v49, &location);
  v5 = MEMORY[0x245D5FF10](v48);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_4;
  v46[3] = &unk_278E16B98;
  objc_copyWeak(&v47, &location);
  v6 = MEMORY[0x245D5FF10](v46);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_7;
  v44[3] = &unk_278E15FA8;
  objc_copyWeak(&v45, &location);
  v7 = (v5)[2](v5, v44);
  [v4 registerHandler:v7 forRequestClass:objc_opt_class()];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_8;
  v42[3] = &unk_278E15FA8;
  objc_copyWeak(&v43, &location);
  v8 = (v5)[2](v5, v42);
  [v4 registerHandler:v8 forRequestClass:objc_opt_class()];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_9;
  v40[3] = &unk_278E15FA8;
  objc_copyWeak(&v41, &location);
  v9 = (v5)[2](v5, v40);
  [v4 registerHandler:v9 forRequestClass:objc_opt_class()];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_10;
  v38[3] = &unk_278E15FA8;
  objc_copyWeak(&v39, &location);
  v10 = (v5)[2](v5, v38);
  [v4 registerHandler:v10 forRequestClass:objc_opt_class()];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_11;
  v36[3] = &unk_278E15FA8;
  objc_copyWeak(&v37, &location);
  v11 = (v5)[2](v5, v36);
  [v4 registerHandler:v11 forRequestClass:objc_opt_class()];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_12;
  v34[3] = &unk_278E15FF8;
  objc_copyWeak(&v35, &location);
  v12 = (v6)[2](v6, v34);
  [v4 registerHandler:v12 forNotificationClass:objc_opt_class()];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_13;
  v32[3] = &unk_278E15FF8;
  objc_copyWeak(&v33, &location);
  v13 = (v6)[2](v6, v32);
  [v4 registerHandler:v13 forNotificationClass:objc_opt_class()];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_14;
  v30[3] = &unk_278E15FF8;
  objc_copyWeak(&v31, &location);
  v14 = (v6)[2](v6, v30);
  [v4 registerHandler:v14 forNotificationClass:objc_opt_class()];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_15;
  v28[3] = &unk_278E15FF8;
  objc_copyWeak(&v29, &location);
  v15 = (v6)[2](v6, v28);
  [v4 registerHandler:v15 forNotificationClass:objc_opt_class()];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_16;
  v26[3] = &unk_278E15FF8;
  objc_copyWeak(&v27, &location);
  v16 = (v6)[2](v6, v26);
  [v4 registerHandler:v16 forNotificationClass:objc_opt_class()];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_17;
  v24[3] = &unk_278E15FF8;
  objc_copyWeak(&v25, &location);
  v17 = (v6)[2](v6, v24);
  [v4 registerHandler:v17 forNotificationClass:objc_opt_class()];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_18;
  v22 = &unk_278E15FF8;
  objc_copyWeak(&v23, &location);
  v18 = (v6)[2](v6, &v19);
  [v4 registerHandler:v18 forNotificationClass:{objc_opt_class(), v19, v20, v21, v22}];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

id __43__COMeshTimerAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_2;
  v11[3] = &unk_278E16B20;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D5FF10](v11);
  v9 = MEMORY[0x245D5FF10](v5, v6, v7, v8);

  objc_destroyWeak(&v13);

  return v9;
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained mergeRequest];

    if (v9)
    {
      v10 = [v8 queuedCommands];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_3;
      v13[3] = &unk_278E16AF8;
      v15 = *(a1 + 32);
      v14 = v5;
      v16 = v6;
      v11 = MEMORY[0x245D5FF10](v13);
      v12 = [v10 arrayByAddingObject:v11];
      [v8 setQueuedCommands:v12];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

id __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_5;
  v11[3] = &unk_278E16B70;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D5FF10](v11);
  v9 = MEMORY[0x245D5FF10](v5, v6, v7, v8);

  objc_destroyWeak(&v13);

  return v9;
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained mergeRequest];

    if (v6)
    {
      v7 = [v5 queuedCommands];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_6;
      v13 = &unk_278E159A0;
      v15 = *(a1 + 32);
      v14 = v3;
      v8 = MEMORY[0x245D5FF10](&v10);
      v9 = [v7 arrayByAddingObject:{v8, v10, v11, v12, v13}];
      [v5 setQueuedCommands:v9];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerCreateRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerReadRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerUpdateRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerDeleteRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerDismissRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_12(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimersAddedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_13(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimersRemovedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_14(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerFiringTimerDismissedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_15(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerFiredNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_16(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimersChangedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_17(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimersUpdatedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_18(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerManagerStateResetNotification:v5];
  }
}

- (void)willRemoveFromMeshController:(id)a3
{
  v12[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v12[4] = objc_opt_class();
  v12[5] = objc_opt_class();
  v5 = 0;
  v12[6] = objc_opt_class();
  do
  {
    [v4 deregisterHandlerForNotificationClass:v12[v5++]];
  }

  while (v5 != 7);
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v6 = 0;
  v11[4] = objc_opt_class();
  do
  {
    [v4 deregisterHandlerForRequestClass:v11[v6++]];
  }

  while (v6 != 5);
  v7 = [(COMeshTimerAddOn *)self actionDirector];
  [v7 removeHandler:self];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__COMeshTimerAddOn_willRemoveFromMeshController___block_invoke;
  v10[3] = &unk_278E15AB8;
  v10[4] = self;
  [(COMeshTimerAddOn *)self _withLock:v10];
  v9.receiver = self;
  v9.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v9 willRemoveFromMeshController:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)willStartMeshController:(id)a3
{
  v4 = a3;
  v5 = [(COMeshTimerAddOn *)self observedTimerManager];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__timerManagerTimersAdded_ name:*MEMORY[0x277D296A0] object:v5];
  [v6 addObserver:self selector:sel__timerManagerTimersRemoved_ name:*MEMORY[0x277D296B8] object:v5];
  [v6 addObserver:self selector:sel__timerManagerTimersUpdated_ name:*MEMORY[0x277D296C0] object:v5];
  [v6 addObserver:self selector:sel__timerManagerTimerFired_ name:*MEMORY[0x277D29698] object:v5];
  [v6 addObserver:self selector:sel__timerManagerStateReset_ name:*MEMORY[0x277D29690] object:v5];
  [v6 addObserver:self selector:sel__timerManagerTimersChanged_ name:*MEMORY[0x277D296A8] object:v5];
  [(COMeshTimerAddOn *)self _reloadIndexWithCompletion:0];
  v7.receiver = self;
  v7.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v7 willStartMeshController:v4];
}

- (void)didStopMeshController:(id)a3
{
  v6.receiver = self;
  v6.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v6 didStopMeshController:a3];
  v4 = [(COMeshTimerAddOn *)self observedTimerManager];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D296A8] object:v4];
  [v5 removeObserver:self name:*MEMORY[0x277D29690] object:v4];
  [v5 removeObserver:self name:*MEMORY[0x277D29698] object:v4];
  [v5 removeObserver:self name:*MEMORY[0x277D296C0] object:v4];
  [v5 removeObserver:self name:*MEMORY[0x277D296B8] object:v4];
  [v5 removeObserver:self name:*MEMORY[0x277D296A0] object:v4];
}

- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 didChangeCompositionForTimerAddOn:self];
  }

  v16.receiver = self;
  v16.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v16 meshController:v6 didTransitionToState:a4];
  v8 = [v6 nodes];
  if (a4 == 2)
  {
    [(COMeshTimerAddOn *)self _abandonMerge];
  }

  else if (a4 == 3)
  {
    v9 = [(COMeshTimerAddOn *)self ourInterests];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__COMeshTimerAddOn_meshController_didTransitionToState___block_invoke;
    v14[3] = &unk_278E16BC0;
    v15 = v8;
    [v9 enumerateKeysAndObjectsUsingBlock:v14];

    v10 = [v6 me];
    v11 = [v6 leader];
    if ([v10 isEqual:v11])
    {
      v12 = [(COMeshTimerAddOn *)self homekit];
      if ([v12 hasOptedToHH2])
      {
        v13 = [MEMORY[0x277CFD0B8] isDistributedTimersEnabled];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      [(COMeshTimerAddOn *)self _startMerge];
    }

    else
    {
    }
  }

LABEL_13:
}

void __56__COMeshTimerAddOn_meshController_didTransitionToState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = COMeshNodeForIDSIdentifier(v4, a2);
  [v5 setPrimaryAvailable:v6 != 0];
}

- (void)didChangeNodesForMeshController:(id)a3
{
  v4 = a3;
  v5 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 didChangeCompositionForTimerAddOn:self];
  }

  v26.receiver = self;
  v26.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v26 didChangeNodesForMeshController:v4];
  v6 = [v4 nodes];
  v7 = [(COMeshAddOn *)self meshController];
  v8 = [v7 state] == 3;

  v9 = [(COMeshTimerAddOn *)self ourInterests];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __52__COMeshTimerAddOn_didChangeNodesForMeshController___block_invoke;
  v23 = &unk_278E16BE8;
  v10 = v6;
  v24 = v10;
  v25 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:&v20];

  v11 = [(COMeshTimerAddOn *)self mergingNodes:v20];
  v12 = [MEMORY[0x277CBEB58] setWithArray:v11];
  v13 = MEMORY[0x277CBEB98];
  v14 = [v4 nodes];
  v15 = [v13 setWithArray:v14];

  [v12 minusSet:v15];
  if ([v12 count])
  {
    v16 = [v11 mutableCopy];
    v17 = [v12 allObjects];
    [v16 removeObjectsInArray:v17];

    [(COMeshTimerAddOn *)self setMergingNodes:v16];
    if (![v16 count])
    {
      v18 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(COMeshTimerAddOn *)v4 didChangeNodesForMeshController:?];
      }

      v19 = [(COMeshTimerAddOn *)self mergeRequest];
      [(COMeshTimerAddOn *)self _finishMerge:v19];
    }
  }
}

void __52__COMeshTimerAddOn_didChangeNodesForMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = COMeshNodeForIDSIdentifier(*(a1 + 32), a2);
  v6 = v5;
  if (!v5 || *(a1 + 40) == 1)
  {
    [v7 setPrimaryAvailable:v5 != 0];
  }
}

- (COMeshTimerAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__11;
  v9 = __Block_byref_object_dispose__11;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__COMeshTimerAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshTimerAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__COMeshTimerAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__COMeshTimerAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(COMeshTimerAddOn *)self _withLock:v6];
}

void __32__COMeshTimerAddOn_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));

  if (v2 != WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 32);

    objc_storeWeak(v5, v4);
  }
}

- (COMTActionDirector)actionDirector
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__11;
  v9 = __Block_byref_object_dispose__11;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__COMeshTimerAddOn_actionDirector__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshTimerAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)performsLocalActions
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];
  v4 = [v3 isEqualToString:@"xctest"];

  return v4;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_sendRequest:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = objc_alloc_init(MEMORY[0x277D2C900]);
  v10 = [(COMeshAddOn *)self meshControllerQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__COMeshTimerAddOn__sendRequest_client___block_invoke;
  v18[3] = &unk_278E15C88;
  v19 = v7;
  v20 = v6;
  v21 = v8;
  v11 = v9;
  v22 = v11;
  v12 = v8;
  v13 = v6;
  v14 = v7;
  dispatch_async(v10, v18);

  v15 = v22;
  v16 = v11;

  return v11;
}

void __40__COMeshTimerAddOn__sendRequest_client___block_invoke(id *a1)
{
  v2 = [a1[4] clientLifetimeActivity];
  v3 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:v2];

  if (v3)
  {
    [a1[5] setActivity:v3];
    nw_activity_activate();
  }

  v4 = a1[5];
  v5 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__COMeshTimerAddOn__sendRequest_client___block_invoke_2;
  v13[3] = &unk_278E16C10;
  v14 = v3;
  v6 = v4;
  v7 = a1[4];
  v8 = a1[7];
  v9 = a1[6];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v12 = v3;
  [v5 sendRequest:v4 withCompletionHandler:v13];
}

void __40__COMeshTimerAddOn__sendRequest_client___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    v13 = [v12 error];
  }

  if (*(a1 + 32))
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      xpc_dictionary_set_string(v14, "command", [v17 UTF8String]);

      v18 = [*(a1 + 48) clientBundleIdentifier];
      v19 = v18;
      if (!v18)
      {
        v5 = [MEMORY[0x277CCA8D8] mainBundle];
        v19 = [v5 bundleIdentifier];
      }

      xpc_dictionary_set_string(v14, "client", [v19 UTF8String]);
      if (!v18)
      {
      }

      v20 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v21 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  if (v13)
  {
    v22 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 64);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = 134218498;
      v28 = v24;
      v29 = 2112;
      v30 = v26;
      v31 = 2112;
      v32 = v13;
      _os_log_error_impl(&dword_244378000, v22, OS_LOG_TYPE_ERROR, "%p %@ from leader failed (%@)", &v27, 0x20u);
    }

    [*(a1 + 56) finishWithError:v13];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_addCompletionsToFuture:(id)a3 withXPCCallback:(id)a4 transactionDescription:(const char *)a5
{
  v6 = a3;
  v7 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__11;
  v18[4] = __Block_byref_object_dispose__11;
  v19 = os_transaction_create();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__COMeshTimerAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke;
  v15[3] = &unk_278E16C38;
  v8 = v7;
  v16 = v8;
  v17 = v18;
  v9 = [v6 addFailureBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__COMeshTimerAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke_2;
  v12[3] = &unk_278E16C60;
  v10 = v8;
  v13 = v10;
  v14 = v18;
  v11 = [v6 addSuccessBlock:v12];

  _Block_object_dispose(v18, 8);
}

void __83__COMeshTimerAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __83__COMeshTimerAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (id)_filteredTimersList:(id)a3 forAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn _filteredTimersList:forAccessory:];
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __53__COMeshTimerAddOn__filteredTimersList_forAccessory___block_invoke;
  v17 = &unk_278E16C88;
  v9 = v7;
  v18 = v9;
  v19 = self;
  v10 = [v6 indexesOfObjectsPassingTest:&v14];
  if ([v10 count])
  {
    v11 = [v6 mutableCopy];
    [v11 removeObjectsAtIndexes:v10];

    v6 = v11;
  }

  v12 = v6;

  return v6;
}

uint64_t __53__COMeshTimerAddOn__filteredTimersList_forAccessory___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isTimer:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFD068]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

- (id)_timersForAccessoryIdentifier:(id)a3 allowLocalStorage:(BOOL)a4
{
  v6 = a3;
  v7 = [(COMeshAddOn *)self meshController];
  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  v9 = [(COMeshTimerAddOn *)self timerManager];
  v10 = [MEMORY[0x277CCAE80] currentConnection];
  v11 = [v10 co_ClientBundleIdentifier];

  if (![v11 length])
  {
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 bundleIdentifier];

    v11 = v13;
  }

  v14 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke;
  block[3] = &unk_278E16D70;
  v29 = a4;
  block[4] = self;
  v24 = v7;
  v25 = v6;
  v26 = v9;
  v15 = v8;
  v27 = v15;
  v28 = v11;
  v16 = v11;
  v17 = v9;
  v18 = v6;
  v19 = v7;
  dispatch_async(v14, block);

  v20 = v28;
  v21 = v15;

  return v15;
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1 && [*(a1 + 32) performsLocalActions] && (objc_msgSend(*(a1 + 40), "leader"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v15 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 134218242;
      v42 = v16;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%p using local list of timers for %@", buf, 0x16u);
    }

    v18 = [*(a1 + 56) timers];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96;
    v36[3] = &unk_278E16CB0;
    v19 = *(a1 + 48);
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v37 = v19;
    v38 = v20;
    v39 = v21;
    v40 = *(a1 + 64);
    v22 = [v18 addCompletionBlock:v36];

    v23 = [*(a1 + 32) recorder];
    (v23)[2](v23, 0x2857B5848, &__block_literal_global_102);

    v12 = v37;
  }

  else
  {
    v3 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 134218242;
      v42 = v4;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p requesting list of timers for %@ from the leader ", buf, 0x16u);
    }

    v6 = [[COTimerReadRequest alloc] initWithAccessoryUniqueIdentifier:*(a1 + 48) requiresFilter:1];
    v7 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:0];
    if (v7)
    {
      [(COMeshRequest *)v6 setActivity:v7];
      nw_activity_activate();
    }

    v8 = *(a1 + 40);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103;
    v27 = &unk_278E16D48;
    v28 = v7;
    v29 = v6;
    v30 = *(a1 + 72);
    v31 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v32 = v9;
    v33 = v10;
    v34 = *(a1 + 64);
    v35 = *(a1 + 56);
    v11 = v6;
    v12 = v7;
    [v8 sendRequest:v11 withCompletionHandler:&v24];
    v13 = [*(a1 + 32) recorder];
    (v13)[2](v13, 0x2857B5848, &__block_literal_global_108);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96_cold_1(a1);
    }

    [*(a1 + 56) finishWithError:v7];
    goto LABEL_14;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_8;
  }

  v9 = [*(a1 + 40) homekit];
  v10 = [v9 accessoryWithUniqueIdentifier:*(a1 + 32)];
  if (v10)
  {
    v11 = v10;
    v12 = [*(a1 + 40) _filteredTimersList:v5 forAccessory:v10];

    v5 = v12;
LABEL_8:
    v13 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v18 = 134218242;
      v19 = v14;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p local timers list: %@", &v18, 0x16u);
    }

    [*(a1 + 56) finishWithResult:v5];
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v16 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96_cold_2(a1, (a1 + 32));
  }

  [*(a1 + 56) finishWithError:v15];
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    v12 = [v11 error];
    if (!v12)
    {
      if (*(a1 + 32))
      {
        v21 = xpc_dictionary_create(0, 0, 0);
        if (v21)
        {
          v22 = *(a1 + 40);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          xpc_dictionary_set_string(v21, "command", [v24 UTF8String]);

          xpc_dictionary_set_string(v21, "client", [*(a1 + 48) UTF8String]);
          v25 = *(a1 + 32);
          nw_activity_submit_metrics();
        }

        v26 = *(a1 + 32);
        nw_activity_complete_with_reason();
      }

      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = __Block_byref_object_copy__11;
      v50 = __Block_byref_object_dispose__11;
      v51 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v11 timers];
        v28 = v47[5];
        v47[5] = v27;

        if (!*(a1 + 56) || ![*(a1 + 40) requiresFilter] || (objc_msgSend(v11, "isFiltered") & 1) != 0)
        {
          goto LABEL_25;
        }

        v29 = COCoreLogForCategory(3);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = *(a1 + 64);
          *buf = 134217984;
          v53 = v30;
          _os_log_impl(&dword_244378000, v29, OS_LOG_TYPE_INFO, "%p timer results from leader not filtered!", buf, 0xCu);
        }

        v31 = [*(a1 + 72) homekit];
        v32 = [v31 accessoryWithUniqueIdentifier:*(a1 + 56)];
        if (!v32)
        {
          v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
          v41 = COCoreLogForCategory(3);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103_cold_2(a1);
          }

          [*(a1 + 80) finishWithError:v12];
          goto LABEL_28;
        }

        v33 = [*(a1 + 72) _filteredTimersList:v47[5] forAccessory:v32];
        v34 = v47[5];
        v47[5] = v33;
      }

      else
      {
        v35 = [MEMORY[0x277CBEA60] array];
        v31 = v47[5];
        v47[5] = v35;
      }

LABEL_25:
      v36 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(a1 + 64);
        v38 = v47[5];
        *buf = 134218242;
        v53 = v37;
        v54 = 2112;
        v55 = v38;
        _os_log_impl(&dword_244378000, v36, OS_LOG_TYPE_DEFAULT, "%p timers list from leader: %@", buf, 0x16u);
      }

      v39 = [*(a1 + 88) timers];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_105;
      v42[3] = &unk_278E16D20;
      v45 = &v46;
      v43 = *(a1 + 64);
      v44 = *(a1 + 80);
      v40 = [v39 addCompletionBlock:v42];

      v12 = 0;
      v31 = v43;
LABEL_28:

      _Block_object_dispose(&v46, 8);
      goto LABEL_10;
    }
  }

  if (*(a1 + 32))
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      xpc_dictionary_set_string(v13, "command", [v16 UTF8String]);

      xpc_dictionary_set_string(v13, "client", [*(a1 + 48) UTF8String]);
      v17 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v18 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  v19 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103_cold_1(a1);
  }

  [*(a1 + 80) finishWithError:v12];
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_105(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if ([v8 isFiring])
        {
          v9 = [v8 timerID];
          v10 = *(*(*(a1 + 48) + 8) + 40);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_2;
          v21[3] = &unk_278E16CF8;
          v11 = v9;
          v22 = v11;
          v12 = [v10 indexOfObjectPassingTest:v21];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v12;
            v14 = [*(*(*(a1 + 48) + 8) + 40) mutableCopy];
            [v14 replaceObjectAtIndex:v13 withObject:v8];
            v15 = *(*(a1 + 48) + 8);
            v16 = *(v15 + 40);
            *(v15 + 40) = v14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 134218242;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%p timers list after merge: %@", buf, 0x16u);
  }

  [*(a1 + 40) finishWithResult:*(*(*(a1 + 48) + 8) + 40)];
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 timerID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_timersForAccessory:(id)a3 member:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = objc_alloc_init(MEMORY[0x277D2C900]);
  v10 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke;
  block[3] = &unk_278E15868;
  v19 = v8;
  v20 = v6;
  v21 = self;
  v11 = v9;
  v22 = v11;
  v23 = v7;
  v12 = v7;
  v13 = v6;
  v14 = v8;
  dispatch_async(v10, block);

  v15 = v23;
  v16 = v11;

  return v11;
}

void __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v23 = v3;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster timers for %{public}@", buf, 0x16u);
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [COMTReadAction actionWithTargetType:v6 targetMemento:*(a1 + 40)];

  v8 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:0];
  if (v8)
  {
    nw_activity_activate();
  }

  objc_initWeak(buf, *(a1 + 48));
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke_111;
  v17 = &unk_278E16DC0;
  v18 = *(a1 + 32);
  objc_copyWeak(&v21, buf);
  v9 = v8;
  v19 = v9;
  v20 = *(a1 + 56);
  v10 = MEMORY[0x245D5FF10](&v14);
  v11 = [*(a1 + 48) actionDirector];
  v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 64)];
  [v11 requestAction:v7 members:v12 activity:v9 withCompletion:v10];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke_111(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke_2;
  block[3] = &unk_278E16D98;
  objc_copyWeak(&v15, a1 + 7);
  v11 = v6;
  v12 = a1[5];
  v13 = a1[6];
  v14 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v15);
}

void __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = *(a1 + 32);
    if (v3)
    {
      if (*(a1 + 40))
      {
        nw_activity_complete_with_reason();
        v3 = *(a1 + 32);
      }

      [*(a1 + 48) finishWithError:v3];
    }

    else
    {
      v5 = a1 + 48;
      v4 = *(a1 + 48);
      v6 = *(v5 + 8);
      v7 = [v6 timers];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = MEMORY[0x277CBEBF8];
      }

      [v4 finishWithResult:v9];
    }

    WeakRetained = v10;
  }
}

- (id)_timersForAccessories:(id)a3 fromClient:(id)a4 results:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshController];
  v12 = &off_244448000;
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([v11 leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v41 = [(COMeshTimerAddOn *)self timerManager];
    v24 = [v41 timers];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    v15 = objc_alloc_init(COTimerReadRequest);
    v16 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:0];
    if (v16)
    {
      [(COMeshRequest *)v15 setActivity:v16];
      nw_activity_activate();
    }

    v17 = [v9 clientBundleIdentifier];
    if (![v17 length])
    {
      [MEMORY[0x277CCA8D8] mainBundle];
      v42 = v14;
      v18 = v10;
      v19 = v8;
      v20 = v11;
      v22 = v21 = v9;
      v23 = [v22 bundleIdentifier];

      v9 = v21;
      v11 = v20;
      v8 = v19;
      v10 = v18;
      v14 = v42;
      v17 = v23;
      v12 = &off_244448000;
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = *(v12 + 186);
    v53[2] = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke;
    v53[3] = &unk_278E16DE8;
    v54 = v16;
    v55 = v15;
    v56 = v17;
    v24 = v14;
    v57 = v24;
    v25 = v17;
    v26 = v12;
    v27 = v25;
    v28 = v15;
    v29 = v16;
    [v11 sendRequest:v28 withCompletionHandler:v53];

    v12 = v26;
  }

  v30 = objc_alloc_init(MEMORY[0x277D2C900]);
  v45 = MEMORY[0x277D85DD0];
  v46 = *(v12 + 186);
  v31 = v46;
  v47 = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_2;
  v48 = &unk_278E16E60;
  v49 = v8;
  v50 = self;
  v51 = v10;
  v32 = v30;
  v52 = v32;
  v33 = v10;
  v34 = v8;
  v35 = [v24 addSuccessBlock:&v45];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = v31;
  v43[2] = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_5;
  v43[3] = &unk_278E15B38;
  v36 = v32;
  v44 = v36;
  v37 = [v24 addFailureBlock:v43];
  v38 = v44;
  v39 = v36;

  return v36;
}

void __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v21 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v11 = [v10 error];
  }

  if (*(a1 + 32))
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    if (v12)
    {
      v13 = *(a1 + 40);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      xpc_dictionary_set_string(v12, "command", [v15 UTF8String]);

      xpc_dictionary_set_string(v12, "client", [*(a1 + 48) UTF8String]);
      v16 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v17 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  if (v11)
  {
    [*(a1 + 56) finishWithError:v11];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = *(a1 + 56);
    if (isKindOfClass)
    {
      v20 = [v10 timers];
      [v19 finishWithResult:v20];
    }

    else
    {
      [v19 finishWithResult:MEMORY[0x277CBEBF8]];
    }
  }
}

void __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_3;
  v8[3] = &unk_278E16E38;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
  [*(a1 + 56) finishWithNoResult];
}

void __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_4;
  v10 = &unk_278E16E10;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v5 = v3;
  v6 = [v4 na_filter:&v7];
  [*(a1 + 48) setObject:v6 forKey:{v5, v7, v8, v9, v10, v11}];
}

uint64_t __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v2 _isTimer:v4 targetingAccessoryIdentifiers:{v5, v9, v10}];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_isTimer:(id)a3 targetingAccessoryIdentifiers:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 siriContext];
  v8 = [v7 objectForKey:*MEMORY[0x277CFD068]];
  v9 = v8;
  v10 = v8 == 0;
  if (v6 && v8)
  {
    v11 = [MEMORY[0x277CCACE0] componentsWithString:v8];
    v12 = [v11 scheme];
    if ([v12 isEqualToString:@"siri-hk-target"])
    {
      v13 = [v11 path];
      v14 = [v13 isEqualToString:@"accessory"];

      if (v14)
      {
        v15 = COCoreLogForCategory(3);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v5 timerID];
          v29 = [v11 query];
          *buf = 138412802;
          v40 = v28;
          v41 = 2112;
          v42 = v29;
          v43 = 2112;
          v44 = v6;
          _os_log_debug_impl(&dword_244378000, v15, OS_LOG_TYPE_DEBUG, "checking if timer (%@) target (%@) contains %@", buf, 0x20u);
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v16 = [v11 queryItems];
        v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v17)
        {
          v18 = v17;
          v30 = v11;
          v31 = v9;
          v32 = v7;
          v33 = v5;
          v19 = *v35;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v35 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v34 + 1) + 8 * i);
              v22 = [v21 name];
              v23 = [@"identifier" isEqualToString:v22];

              if (v23)
              {
                v24 = [v21 value];
                if (v24)
                {
                  v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
                  if (v25 && ([v6 containsObject:v25] & 1) != 0)
                  {

                    v10 = 1;
                    goto LABEL_30;
                  }
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }

          v10 = 0;
LABEL_30:
          v7 = v32;
          v5 = v33;
          v11 = v30;
          v9 = v31;
          goto LABEL_27;
        }

LABEL_26:
        v10 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
    }

    v16 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _isTimer:targetingAccessoryIdentifiers:];
    }

    goto LABEL_26;
  }

  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn _isTimer:v5 targetingAccessoryIdentifiers:?];
  }

LABEL_28:

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_currentAccessoryForClient:(id)a3
{
  v4 = [a3 connection];
  v5 = [v4 co_PeerInstance];

  if (v5)
  {
    v6 = [(COMeshTimerAddOn *)self homehub];
    v7 = [(COMeshTimerAddOn *)self homekit];
    v8 = [v6 accessoryForPeerInstance:v5 usingHomeKitAdapter:v7];
  }

  else
  {
    v6 = [(COMeshTimerAddOn *)self homekit];
    v8 = [v6 currentAccessory];
  }

  return v8;
}

- (void)_sendNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x277D296B0]];

  v8 = [v4 name];

  v9 = [(COMeshAddOn *)self meshController];
  v10 = [(COMeshTimerAddOn *)self interests];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__COMeshTimerAddOn__sendNotification___block_invoke;
  v14[3] = &unk_278E16EB0;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];
}

void __38__COMeshTimerAddOn__sendNotification___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__COMeshTimerAddOn__sendNotification___block_invoke_2;
  v20[3] = &unk_278E16C88;
  v7 = a1[4];
  v20[4] = a1[5];
  v8 = v6;
  v21 = v8;
  v9 = [v7 indexesOfObjectsPassingTest:v20];
  if ([v9 count])
  {
    v10 = [COMTTimerNotificationAction alloc];
    v11 = a1[6];
    v12 = [a1[4] objectsAtIndexes:v9];
    v13 = [(COMTTimerNotificationAction *)v10 initWithReason:v11 timers:v12];

    v14 = [a1[5] actionDirector];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v5];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__COMeshTimerAddOn__sendNotification___block_invoke_3;
    v16[3] = &unk_278E16E88;
    v17 = a1[7];
    v18 = a1[6];
    v19 = v5;
    [v14 requestAction:v13 members:v15 withCompletion:v16];
  }
}

void __38__COMeshTimerAddOn__sendNotification___block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__COMeshTimerAddOn__sendNotification___block_invoke_3_cold_1(a1);
    }
  }
}

- (void)_timerManagerTimersAdded:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D296B0]];

  v7 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COMeshTimerAddOn__timerManagerTimersAdded___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  dispatch_async(v7, block);

  v10 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 timerAddOn:self didAddTimers:v8];
  }
}

uint64_t __45__COMeshTimerAddOn__timerManagerTimersAdded___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (([v7 isCurrentTimer] & 1) == 0)
        {
          v8 = [v7 lastModifiedDate];
          if (!v8)
          {
            v8 = [MEMORY[0x277CBEAA8] distantPast];
          }

          v9 = [*(a1 + 40) timerIndex];
          v10 = [v7 timerID];
          [v9 setObject:v8 forKey:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _sendNotification:*(a1 + 48)];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_timerManagerTimersRemoved:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D296B0]];

  v7 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshTimerAddOn__timerManagerTimersRemoved___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  dispatch_async(v7, block);

  v10 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 timerAddOn:self didRemoveTimers:v8];
  }
}

uint64_t __47__COMeshTimerAddOn__timerManagerTimersRemoved___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 isCurrentTimer] & 1) == 0)
        {
          v8 = [*(a1 + 40) timerIndex];
          v9 = [v7 timerID];
          [v8 removeObjectForKey:v9];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _sendNotification:*(a1 + 48)];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_timerManagerTimersUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D296B0]];

  v7 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshTimerAddOn__timerManagerTimersUpdated___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  dispatch_async(v7, block);

  v10 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 timerAddOn:self didUpdateTimers:v8];
  }
}

uint64_t __47__COMeshTimerAddOn__timerManagerTimersUpdated___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (([v7 isCurrentTimer] & 1) == 0)
        {
          v8 = [v7 lastModifiedDate];
          if (!v8)
          {
            v8 = [MEMORY[0x277CBEAA8] distantPast];
          }

          v9 = [*(a1 + 40) timerIndex];
          v10 = [v7 timerID];
          [v9 setObject:v8 forKey:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _sendNotification:*(a1 + 48)];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_timerManagerTimerFired:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D296B0]];

  v6 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 timerAddOn:self didFireTimers:v5];
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    v7 = [(COMeshAddOn *)self meshController];
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _timerManagerTimerFired:];
    }

    v9 = [(COTimerNotification *)[COTimerFiredNotification alloc] initWithTimers:v5];
    [v7 sendNotification:v9];
  }
}

- (void)_timerManagerStateReset:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke;
  v5[3] = &unk_278E16A10;
  objc_copyWeak(&v6, &location);
  [(COMeshTimerAddOn *)self _reloadIndexWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained meshController];
    if (a2)
    {
      v6 = objc_alloc_init(COTimerManagerStateResetNotification);
      v7 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke_cold_1();
      }

      [v5 sendNotification:v6];
      v8 = [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 didResetTimerAddOn:v4];
      }
    }

    else
    {
      v6 = COCoreLogForCategory(3);
      if (os_log_type_enabled(&v6->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v5;
        _os_log_impl(&dword_244378000, &v6->super.super.super, OS_LOG_TYPE_DEFAULT, "%p not emitting state reset, timers not updated", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_timerManagerTimersChanged:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x277D296B0]];

  v5 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 timerAddOn:self didChangeTimers:v6];
  }
}

- (void)_startMerge
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(COMeshAddOn *)self meshController];
  v4 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v4);
  v5 = [[COTimerReadRequest alloc] initForMerge];
  [(COMeshTimerAddOn *)self setMergeRequest:v5];
  v6 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = v3;
    v19 = 2048;
    v20 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p starting merge for %p...", buf, 0x16u);
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    v7 = [(COMeshTimerAddOn *)self timerManager];
    v8 = [v7 timers];
  }

  else
  {
    v8 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__COMeshTimerAddOn__startMerge__block_invoke;
  v13[3] = &unk_278E16F00;
  v9 = v4;
  v14 = v9;
  objc_copyWeak(&v16, buf);
  v10 = v5;
  v15 = v10;
  v11 = [v8 addCompletionBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __31__COMeshTimerAddOn__startMerge__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__COMeshTimerAddOn__startMerge__block_invoke_2;
  block[3] = &unk_278E16ED8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __31__COMeshTimerAddOn__startMerge__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  [WeakRetained _broadcastMerge:*(a1 + 32) withTruth:v3];
}

- (void)_broadcastMerge:(id)a3 withTruth:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(COMeshTimerAddOn *)self mergeRequest];

  if (v10 == v6)
  {
    v11 = eTagForTimers(v7);
    [v6 setETag:v11];
    v12 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v32 = v8;
      v33 = 2048;
      v34 = v6;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p broadcasting merge %p with eTag %{public}@", buf, 0x20u);
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(COMeshTimerAddOn *)self setMergingNodes:v13];

    v14 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(COMeshTimerAddOn *)self setMergeResponses:v14];

    [(COMeshTimerAddOn *)self setMergeTimers:v7];
    objc_initWeak(buf, self);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke;
    v28[3] = &unk_278E16F28;
    objc_copyWeak(&v30, buf);
    v15 = v6;
    v29 = v15;
    v16 = MEMORY[0x245D5FF10](v28);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke_2;
    v25 = &unk_278E16F50;
    objc_copyWeak(&v27, buf);
    v17 = v15;
    v26 = v17;
    v18 = MEMORY[0x245D5FF10](&v22);
    v19 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(COMeshTimerAddOn *)self setMergingNodes:v19, v22, v23, v24, v25];

    v20 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(COMeshTimerAddOn *)self setMergeResponses:v20];

    [v8 broadcastRequest:v17 includingSelf:0 recipientsCallback:v16 completionHandler:v18];
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v32 = v8;
      v33 = 2048;
      v34 = v6;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p ignoring broadcast for merge %p", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _primeMerge:*(a1 + 32) withNodes:v5];
  }
}

void __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v9)
    {
      [WeakRetained _continueMerge:v7 withResponse:v9 fromNode:v8];
    }

    else
    {
      v12 = [WeakRetained mergingNodes];
      v13 = [v12 mutableCopy];

      [v13 removeObject:v8];
      [v11 setMergingNodes:v13];
      if (![v13 count])
      {
        v14 = COCoreLogForCategory(3);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke_2_cold_1();
        }

        [v11 _finishMerge:*(a1 + 32)];
      }
    }
  }
}

- (void)_primeMerge:(id)a3 withNodes:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [v8 dispatchQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(COMeshTimerAddOn *)self mergeRequest];

  if (v10 == v6)
  {
    [(COMeshTimerAddOn *)self setMergingNodes:v7];
    v12 = [v7 count];
    v13 = COCoreLogForCategory(3);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v16 = 134218496;
        v17 = v8;
        v18 = 2048;
        v19 = v6;
        v20 = 2048;
        v21 = v12;
        _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p merge %p with %ld others.", &v16, 0x20u);
      }
    }

    else
    {
      if (v14)
      {
        v16 = 134218240;
        v17 = v8;
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p is solo, so %p is finished.", &v16, 0x16u);
      }

      [(COMeshTimerAddOn *)self _finishMerge:v6];
    }
  }

  else
  {
    v11 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = v8;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p ignoring prime of merge %p", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_continueMerge:(id)a3 withResponse:(id)a4 fromNode:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshController];
  v12 = [v11 dispatchQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(COMeshTimerAddOn *)self mergeRequest];

  if (v13 == v8)
  {
    v15 = [(COMeshTimerAddOn *)self mergingNodes];
    v14 = [v15 mutableCopy];

    [v14 removeObject:v10];
    [(COMeshTimerAddOn *)self setMergingNodes:v14];
    if ([v9 skipInMerge])
    {
      v16 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v23 = 134218496;
        v24 = v11;
        v25 = 2048;
        v26 = v10;
        v27 = 2048;
        v28 = v8;
        _os_log_debug_impl(&dword_244378000, v16, OS_LOG_TYPE_DEBUG, "%p skipping node %p in merge %p", &v23, 0x20u);
      }
    }

    else
    {
      v17 = [(COMeshTimerAddOn *)self mergeResponses];
      v18 = [v17 mutableCopy];

      [v18 setObject:v9 forKey:v10];
      [(COMeshTimerAddOn *)self setMergeResponses:v18];
    }

    v19 = [v14 count];
    v20 = COCoreLogForCategory(3);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
    if (v19)
    {
      if (v21)
      {
        v23 = 134218496;
        v24 = v11;
        v25 = 2048;
        v26 = v8;
        v27 = 2048;
        v28 = v19;
        _os_log_debug_impl(&dword_244378000, v20, OS_LOG_TYPE_DEBUG, "%p merge %p still waiting on %ld others.", &v23, 0x20u);
      }
    }

    else
    {
      if (v21)
      {
        [COMeshTimerAddOn _continueMerge:withResponse:fromNode:];
      }

      [(COMeshTimerAddOn *)self _finishMerge:v8];
    }
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218240;
      v24 = v11;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p ignoring continuation of merge %p", &v23, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_abandonMerge
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(COMeshAddOn *)self meshController];
  v4 = [v3 dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(COMeshTimerAddOn *)self mergeRequest];
  v6 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    v11 = v3;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p abandoning merge %p", &v10, 0x16u);
  }

  [(COMeshTimerAddOn *)self setMergeRequest:0];
  v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(COMeshTimerAddOn *)self setMergeResponses:v7];

  v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(COMeshTimerAddOn *)self setMergingNodes:v8];

  [(COMeshTimerAddOn *)self _processQueuedCommands];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_commandsForReconciling:(id)a3 toTruth:(id)a4 forNode:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEA60] array];
  v50 = [v8 mutableCopy];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = v7;
  v12 = [(COTimersRemovedNotification *)v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
  v48 = v8;
  if (!v12)
  {
    v14 = 0;
    v49 = 0;
    v28 = v11;
    v26 = v50;
LABEL_30:

    goto LABEL_31;
  }

  v13 = v12;
  v46 = v10;
  v47 = v9;
  v14 = 0;
  v49 = 0;
  v15 = *v52;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v52 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v51 + 1) + 8 * i);
      if (([v17 isCurrentTimer] & 1) == 0)
      {
        v18 = [v17 timerID];
        v19 = [v8 objectForKey:v18];
        if (v19)
        {
          v20 = [v17 co_preferredTimer:v19];
          if (v17 != v20 && ([v17 isEqualIgnoringLastModifiedDate:v20] & 1) == 0)
          {
            if (v49)
            {
              v21 = [v49 arrayByAddingObject:v20];

              v49 = v21;
              v8 = v48;
            }

            else
            {
              v49 = [MEMORY[0x277CBEA60] arrayWithObject:v20];
            }
          }
        }

        else if (v14)
        {
          v22 = [v14 arrayByAddingObject:v17];

          v14 = v22;
        }

        else
        {
          v14 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
        }

        v23 = [v17 timerID];
        [v50 removeObjectForKey:v23];
      }
    }

    v13 = [(COTimersRemovedNotification *)v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
  }

  while (v13);

  if (!v49)
  {
    v10 = v46;
    v9 = v47;
    v26 = v50;
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v24 = [(COTimerNotification *)[COTimersUpdatedNotification alloc] initWithTimers:v49];
  v25 = COCoreLogForCategory(3);
  v9 = v47;
  v26 = v50;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v41 = [(COMeshAddOn *)self meshController];
    v42 = [(COTimerNotification *)v24 timers];
    *buf = 134218498;
    v56 = v41;
    v57 = 2112;
    v58 = v47;
    v59 = 2112;
    v60 = v42;
    _os_log_debug_impl(&dword_244378000, v25, OS_LOG_TYPE_DEBUG, "%p %@ updating %@", buf, 0x20u);

    v8 = v48;
  }

  v27 = [v46 arrayByAddingObject:v24];

  v10 = v27;
  if (v14)
  {
LABEL_27:
    v28 = [(COTimerNotification *)[COTimersRemovedNotification alloc] initWithTimers:v14];
    v29 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v43 = [(COMeshAddOn *)self meshController];
      v44 = [(COTimerNotification *)v28 timers];
      *buf = 134218498;
      v56 = v43;
      v57 = 2112;
      v58 = v9;
      v59 = 2112;
      v60 = v44;
      _os_log_debug_impl(&dword_244378000, v29, OS_LOG_TYPE_DEBUG, "%p %@ removing %@", buf, 0x20u);

      v8 = v48;
    }

    v30 = [v10 arrayByAddingObject:v28];

    v10 = v30;
    goto LABEL_30;
  }

LABEL_31:
  if ([v26 count])
  {
    v31 = [COTimersAddedNotification alloc];
    v32 = [v26 allValues];
    v33 = [(COTimerNotification *)v31 initWithTimers:v32];

    v34 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v39 = [(COMeshAddOn *)self meshController];
      v40 = [(COTimerNotification *)v33 timers];
      *buf = 134218498;
      v56 = v39;
      v57 = 2112;
      v58 = v9;
      v59 = 2112;
      v60 = v40;
      _os_log_debug_impl(&dword_244378000, v34, OS_LOG_TYPE_DEBUG, "%p %@ requires %@", buf, 0x20u);

      v8 = v48;
    }

    v35 = [v10 arrayByAddingObject:v33];

    v10 = v35;
  }

  v36 = v10;

  v37 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_finishMerge:(id)a3
{
  v147 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v79 = [(COMeshAddOn *)self meshController];
  v5 = [v79 dispatchQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [(COMeshTimerAddOn *)self mergeRequest];

  log = COCoreLogForCategory(3);
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v6 != v4)
  {
    if (v7)
    {
      *buf = 134218240;
      v144 = v79;
      v145 = 2048;
      v146 = v4;
      _os_log_impl(&dword_244378000, log, OS_LOG_TYPE_DEFAULT, "%p ignoring conclusion of merge %p", buf, 0x16u);
    }

    goto LABEL_92;
  }

  v77 = v5;
  if (v7)
  {
    *buf = 134218240;
    v144 = v79;
    v145 = 2048;
    v146 = v4;
    _os_log_impl(&dword_244378000, log, OS_LOG_TYPE_DEFAULT, "%p completing merge %p...", buf, 0x16u);
  }

  v78 = v4;

  v8 = [(COMeshTimerAddOn *)self mergeTimers];
  v93 = self;
  v9 = [(COMeshTimerAddOn *)self mergeResponses];
  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  log = v8;
  v10 = [log countByEnumeratingWithState:&v131 objects:v142 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v132;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v132 != v12)
        {
          objc_enumerationMutation(log);
        }

        v14 = *(*(&v131 + 1) + 8 * i);
        if (([v14 isCurrentTimer] & 1) == 0)
        {
          v15 = [v14 timerID];
          [v95 setObject:v14 forKey:v15];
        }
      }

      v11 = [log countByEnumeratingWithState:&v131 objects:v142 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v17 = [(COMeshTimerAddOn *)self deletes];
  v18 = [v17 countByEnumeratingWithState:&v127 objects:v141 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v128;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v128 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v127 + 1) + 8 * j);
        v23 = [v22 identifier];
        [v16 setObject:v22 forKey:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v127 objects:v141 count:16];
    }

    while (v19);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v9;
  v94 = v16;
  v85 = [obj countByEnumeratingWithState:&v123 objects:v140 count:16];
  if (v85)
  {
    v82 = *v124;
    do
    {
      v24 = 0;
      do
      {
        if (*v124 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v89 = v24;
        v25 = [obj objectForKey:{*(*(&v123 + 1) + 8 * v24), v77}];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v91 = v25;
        v26 = [v25 timers];
        v27 = [v26 countByEnumeratingWithState:&v119 objects:v139 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v120;
          do
          {
            for (k = 0; k != v28; ++k)
            {
              if (*v120 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v119 + 1) + 8 * k);
              if (([v31 isCurrentTimer] & 1) == 0)
              {
                v32 = [v31 timerID];
                v33 = [v95 objectForKey:v32];
                v34 = [v31 co_preferredTimer:v33];

                if (v31 == v34)
                {
                  [v95 setObject:v31 forKey:v32];
                }
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v119 objects:v139 count:16];
          }

          while (v28);
        }

        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v35 = [v91 deletes];
        v36 = [v35 countByEnumeratingWithState:&v115 objects:v138 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v116;
          do
          {
            for (m = 0; m != v37; ++m)
            {
              if (*v116 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v115 + 1) + 8 * m);
              v41 = [v40 identifier];
              v42 = [v16 objectForKey:v41];
              if (!v42)
              {
                goto LABEL_45;
              }

              v43 = [v40 date];
              v44 = [v42 date];
              v45 = [v43 compare:v44];

              v16 = v94;
              if (v45 == -1)
              {
LABEL_45:
                [v16 setObject:v40 forKey:v41];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v115 objects:v138 count:16];
          }

          while (v37);
        }

        v24 = v89 + 1;
      }

      while ((v89 + 1) != v85);
      v85 = [obj countByEnumeratingWithState:&v123 objects:v140 count:16];
    }

    while (v85);
  }

  v46 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn _finishMerge:];
  }

  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __33__COMeshTimerAddOn__finishMerge___block_invoke;
  v113[3] = &unk_278E16F78;
  v47 = v95;
  v114 = v47;
  [v16 enumerateKeysAndObjectsUsingBlock:v113];
  v48 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn _finishMerge:];
  }

  v96 = [MEMORY[0x277CBEB18] array];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v81 = v47;
  v49 = [(COMeshTimerAddOn *)v93 _commandsForReconciling:log toTruth:v47 forNode:0];
  v50 = [v49 countByEnumeratingWithState:&v109 objects:v137 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v110;
    do
    {
      for (n = 0; n != v51; ++n)
      {
        if (*v110 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v109 + 1) + 8 * n);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = v108;
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v56 = __33__COMeshTimerAddOn__finishMerge___block_invoke_143;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = v107;
            v107[0] = MEMORY[0x277D85DD0];
            v107[1] = 3221225472;
            v56 = __33__COMeshTimerAddOn__finishMerge___block_invoke_2;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v55 = v106;
            v106[0] = MEMORY[0x277D85DD0];
            v106[1] = 3221225472;
            v56 = __33__COMeshTimerAddOn__finishMerge___block_invoke_3;
          }
        }

        v55[2] = v56;
        v55[3] = &unk_278E156B0;
        v55[4] = v93;
        v55[5] = v54;
        v57 = MEMORY[0x245D5FF10]();
        [v96 addObject:v57];
      }

      v51 = [v49 countByEnumeratingWithState:&v109 objects:v137 count:16];
    }

    while (v51);
  }

  v104 = 0u;
  v105 = 0u;
  v103 = 0u;
  v102 = 0u;
  v86 = obj;
  v59 = v93;
  v58 = v94;
  v83 = [v86 countByEnumeratingWithState:&v102 objects:v136 count:16];
  if (v83)
  {
    v80 = *v103;
    do
    {
      v60 = 0;
      do
      {
        if (*v103 != v80)
        {
          objc_enumerationMutation(v86);
        }

        v61 = *(*(&v102 + 1) + 8 * v60);
        v62 = [v86 objectForKey:{v61, v77}];
        v90 = v62;
        v92 = v60;
        if ([v62 notModified])
        {
          v63 = log;
          v64 = COCoreLogForCategory(3);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v144 = v79;
            v145 = 2112;
            v146 = v61;
            _os_log_debug_impl(&dword_244378000, v64, OS_LOG_TYPE_DEBUG, "%p response is not-modified for %@", buf, 0x16u);
          }
        }

        else
        {
          v63 = [v62 timers];
        }

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        obja = v63;
        v65 = [(COMeshTimerAddOn *)v59 _commandsForReconciling:v63 toTruth:v81 forNode:v61];
        v66 = [v65 countByEnumeratingWithState:&v98 objects:v135 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v99;
          do
          {
            for (ii = 0; ii != v67; ++ii)
            {
              if (*v99 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = *(*(&v98 + 1) + 8 * ii);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v97[0] = MEMORY[0x277D85DD0];
                v97[1] = 3221225472;
                v97[2] = __33__COMeshTimerAddOn__finishMerge___block_invoke_145;
                v97[3] = &unk_278E15728;
                v97[4] = v59;
                v97[5] = v70;
                v97[6] = v61;
                v71 = MEMORY[0x245D5FF10](v97);
                [v96 addObject:v71];

                v59 = v93;
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v98 objects:v135 count:16];
          }

          while (v67);
        }

        v60 = v92 + 1;
        v58 = v94;
      }

      while (v92 + 1 != v83);
      v83 = [v86 countByEnumeratingWithState:&v102 objects:v136 count:16];
    }

    while (v83);
  }

  [(COMeshTimerAddOn *)v59 setMergeRequest:0];
  [(COMeshTimerAddOn *)v59 setMergeTimers:0];
  v72 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(COMeshTimerAddOn *)v59 setMergeResponses:v72];

  v73 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(COMeshTimerAddOn *)v59 setMergingNodes:v73];

  v74 = [(COMeshTimerAddOn *)v59 queuedCommands];
  [v96 addObjectsFromArray:v74];

  [(COMeshTimerAddOn *)v59 setQueuedCommands:v96];
  v75 = COCoreLogForCategory(3);
  v4 = v78;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v144 = v79;
    v145 = 2048;
    v146 = v78;
    _os_log_impl(&dword_244378000, v75, OS_LOG_TYPE_DEFAULT, "%p concluded merge %p", buf, 0x16u);
  }

  [(COMeshTimerAddOn *)v59 _processQueuedCommands];
  v5 = v77;
LABEL_92:

  v76 = *MEMORY[0x277D85DE8];
}

void __33__COMeshTimerAddOn__finishMerge___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 32) removeObjectForKey:v4];
  }
}

void __33__COMeshTimerAddOn__finishMerge___block_invoke_145(uint64_t a1)
{
  v2 = [*(a1 + 32) meshController];
  [v2 sendCommand:*(a1 + 40) toPeer:*(a1 + 48)];
}

- (void)_reloadIndexWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(COMeshTimerAddOn *)self observedTimerManager];
  v6 = [v5 timers];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke;
  v14[3] = &unk_278E15C10;
  objc_copyWeak(&v16, &location);
  v7 = v4;
  v15 = v7;
  v8 = [v6 addFailureBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_2;
  v11[3] = &unk_278E16FA0;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  v10 = [v6 addSuccessBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_cold_1();
    }

    v6 = [WeakRetained meshControllerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_146;
    v7[3] = &unk_278E16240;
    v7[4] = WeakRetained;
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

uint64_t __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_146(uint64_t a1)
{
  [*(a1 + 32) setTimerIndex:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v18 = v3;
    v5 = v3;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if (([v12 isCurrentTimer] & 1) == 0)
          {
            v13 = [v12 timerID];
            v14 = [v12 lastModifiedDate];
            if (!v14)
            {
              v14 = [MEMORY[0x277CBEAA8] distantPast];
            }

            [v6 setObject:v14 forKey:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v15 = [WeakRetained meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_3;
    block[3] = &unk_278E15B60;
    block[4] = WeakRetained;
    v20 = v6;
    v21 = *(a1 + 32);
    v16 = v6;
    dispatch_async(v15, block);

    v3 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) timerIndex];
  v3 = [v2 isEqualToDictionary:*(a1 + 40)];

  [*(a1 + 32) setTimerIndex:*(a1 + 40)];
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "yes";
    v6 = *(a1 + 32);
    if (v3)
    {
      v5 = "no";
    }

    v9 = 134218242;
    v10 = v6;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p timer index reloaded; updated: %s", &v9, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, v3 ^ 1u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_processQueuedCommands
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(COMeshTimerAddOn *)self queuedCommands];
  [(COMeshTimerAddOn *)self setQueuedCommands:MEMORY[0x277CBEBF8]];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addTimerDeleteEvent:(id)a3
{
  v4 = a3;
  v5 = [(COMeshTimerAddOn *)self deletes];
  v6 = [v5 arrayByAddingObject:v4];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [v7 dateByAddingUnit:16 value:-2 toDate:v8 options:1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__COMeshTimerAddOn__addTimerDeleteEvent___block_invoke;
  v14[3] = &unk_278E16FC8;
  v15 = v9;
  v10 = v9;
  v11 = [v6 indexesOfObjectsPassingTest:v14];
  if ([v11 count])
  {
    v12 = [v6 mutableCopy];
    [v12 removeObjectsAtIndexes:v11];

    v6 = v12;
  }

  v13 = [v6 sortedArrayUsingSelector:sel_compare_];
  [(COMeshTimerAddOn *)self setDeletes:v13];
}

BOOL __41__COMeshTimerAddOn__addTimerDeleteEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 date];
  v4 = [v3 compare:*(a1 + 32)] == -1;

  return v4;
}

- (id)timers
{
  v3 = [(COMeshTimerAddOn *)self performsLocalActions];

  return [(COMeshTimerAddOn *)self _timersForAccessoryIdentifier:0 allowLocalStorage:v3];
}

- (id)addTimer:(id)a3 client:(id)a4 member:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COTimerRequest *)[COTimerCreateRequest alloc] initWithTimer:v8];
  v12 = [(COMeshAddOn *)self meshController];
  v45 = v8;
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([v12 leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v26 = v10;
    v35 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(COMeshAddOn *)self meshController];
      v37 = [v45 timerID];
      *buf = 134218242;
      v59 = v36;
      v60 = 2112;
      v61 = v37;
      _os_log_impl(&dword_244378000, v35, OS_LOG_TYPE_DEFAULT, "%p directly add a timer %@", buf, 0x16u);
    }

    v38 = objc_alloc_init(MEMORY[0x277D2C900]);
    v39 = [v12 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    v27 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __43__COMeshTimerAddOn_addTimer_client_member___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v55 = v11;
    v28 = v38;
    v56 = v28;
    v57 = v12;
    dispatch_async(v39, block);

    v32 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v43 = v11;
      if (v15)
      {
        v16 = [v8 timerID];
        *buf = 134218242;
        v59 = v12;
        v60 = 2112;
        v61 = v16;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to add %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = [[COMTTimerCreateAction alloc] initWithTimer:v8];
      v19 = [v9 clientLifetimeActivity];
      v20 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:v19];

      if (v20)
      {
        nw_activity_activate();
      }

      v44 = v9;
      v21 = [v9 clientBundleIdentifier];
      if (![v21 length])
      {
        v22 = [MEMORY[0x277CCA8D8] mainBundle];
        v23 = [v22 bundleIdentifier];

        v21 = v23;
      }

      v24 = [(COMeshTimerAddOn *)self actionDirector];
      v25 = [MEMORY[0x277CBEB98] setWithObject:v10];
      v48[0] = MEMORY[0x277D85DD0];
      v26 = v10;
      v27 = &off_244448000;
      v48[1] = 3221225472;
      v48[2] = __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_155;
      v48[3] = &unk_278E15778;
      v49 = v20;
      v50 = v18;
      v51 = v21;
      v28 = v17;
      v52 = v28;
      v53 = v12;
      v29 = v21;
      v30 = v18;
      v31 = v20;
      [v24 requestAction:v30 members:v25 activity:v31 withCompletion:v48];

      v32 = 0;
      v11 = v43;
      v9 = v44;
    }

    else
    {
      v26 = 0;
      if (v15)
      {
        v33 = [(COMeshAddOn *)self meshController];
        v34 = [v45 timerID];
        *buf = 134218242;
        v59 = v33;
        v60 = 2112;
        v61 = v34;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to add a timer %@", buf, 0x16u);
      }

      v28 = [(COMeshTimerAddOn *)self _sendRequest:v11 client:v9];
      v32 = 0;
      v27 = &off_244448000;
    }
  }

  v40 = [(COMeshTimerAddOn *)self recorder];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = *(v27 + 186);
  v46[2] = __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_156;
  v46[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v47 = v32;
  (v40)[2](v40, 0x2857B5848, v46);

  v41 = *MEMORY[0x277D85DE8];

  return v28;
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleTimerCreateRequest:v3 callback:v4];
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_155(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      xpc_dictionary_set_string(v7, "command", [v10 UTF8String]);

      xpc_dictionary_set_string(v7, "client", [*(a1 + 48) UTF8String]);
      v11 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v12 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  if (v6)
  {
    v13 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_155_cold_1(a1);
    }

    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)updateTimer:(id)a3 client:(id)a4 member:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COTimerRequest *)[COTimerUpdateRequest alloc] initWithTimer:v8];
  v12 = [(COMeshAddOn *)self meshController];
  v45 = v8;
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([v12 leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v26 = v10;
    v35 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(COMeshAddOn *)self meshController];
      v37 = [v45 timerID];
      *buf = 134218242;
      v59 = v36;
      v60 = 2112;
      v61 = v37;
      _os_log_impl(&dword_244378000, v35, OS_LOG_TYPE_DEFAULT, "%p directly update a timer %@", buf, 0x16u);
    }

    v38 = objc_alloc_init(MEMORY[0x277D2C900]);
    v39 = [v12 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    v27 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v55 = v11;
    v28 = v38;
    v56 = v28;
    v57 = v12;
    dispatch_async(v39, block);

    v32 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v43 = v11;
      if (v15)
      {
        v16 = [v8 timerID];
        *buf = 134218242;
        v59 = v12;
        v60 = 2112;
        v61 = v16;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to update %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = [[COMTTimerUpdateAction alloc] initWithTimer:v8];
      v19 = [v9 clientLifetimeActivity];
      v20 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:v19];

      if (v20)
      {
        nw_activity_activate();
      }

      v44 = v9;
      v21 = [v9 clientBundleIdentifier];
      if (![v21 length])
      {
        v22 = [MEMORY[0x277CCA8D8] mainBundle];
        v23 = [v22 bundleIdentifier];

        v21 = v23;
      }

      v24 = [(COMeshTimerAddOn *)self actionDirector];
      v25 = [MEMORY[0x277CBEB98] setWithObject:v10];
      v48[0] = MEMORY[0x277D85DD0];
      v26 = v10;
      v27 = &off_244448000;
      v48[1] = 3221225472;
      v48[2] = __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_158;
      v48[3] = &unk_278E15778;
      v49 = v20;
      v50 = v18;
      v51 = v21;
      v28 = v17;
      v52 = v28;
      v53 = v12;
      v29 = v21;
      v30 = v18;
      v31 = v20;
      [v24 requestAction:v30 members:v25 activity:v31 withCompletion:v48];

      v32 = 0;
      v11 = v43;
      v9 = v44;
    }

    else
    {
      v26 = 0;
      if (v15)
      {
        v33 = [(COMeshAddOn *)self meshController];
        v34 = [v45 timerID];
        *buf = 134218242;
        v59 = v33;
        v60 = 2112;
        v61 = v34;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to update a timer %@", buf, 0x16u);
      }

      v28 = [(COMeshTimerAddOn *)self _sendRequest:v11 client:v9];
      v32 = 0;
      v27 = &off_244448000;
    }
  }

  v40 = [(COMeshTimerAddOn *)self recorder];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = *(v27 + 186);
  v46[2] = __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_159;
  v46[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v47 = v32;
  (v40)[2](v40, 0x2857B5848, v46);

  v41 = *MEMORY[0x277D85DE8];

  return v28;
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleTimerUpdateRequest:v3 callback:v4];
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      xpc_dictionary_set_string(v7, "command", [v10 UTF8String]);

      xpc_dictionary_set_string(v7, "client", [*(a1 + 48) UTF8String]);
      v11 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v12 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  if (v6)
  {
    v13 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_158_cold_1(a1);
    }

    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)removeTimer:(id)a3 client:(id)a4 member:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COTimerRequest *)[COTimerDeleteRequest alloc] initWithTimer:v8];
  v12 = [(COMeshAddOn *)self meshController];
  v48 = v8;
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([v12 leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v38 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(COMeshAddOn *)self meshController];
      v40 = [v8 timerID];
      *buf = 134218242;
      v62 = v39;
      v63 = 2112;
      v64 = v40;
      _os_log_impl(&dword_244378000, v38, OS_LOG_TYPE_DEFAULT, "%p directly remove a timer %@", buf, 0x16u);
    }

    v41 = objc_alloc_init(MEMORY[0x277D2C900]);
    v42 = [v12 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    v25 = v12;
    v30 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v58 = v11;
    v31 = v41;
    v59 = v31;
    v60 = v25;
    dispatch_async(v42, block);

    v35 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v46 = v11;
      if (v15)
      {
        v16 = [v8 timerID];
        *buf = 134218242;
        v62 = v12;
        v63 = 2112;
        v64 = v16;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to remove %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v8 timerID];
      v21 = [COMTDeleteAction actionWithTargetType:v19 targetIdentifier:v20];

      v22 = [v9 clientLifetimeActivity];
      v23 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:v22];

      if (v23)
      {
        nw_activity_activate();
      }

      v47 = v9;
      v24 = [v9 clientBundleIdentifier];
      v25 = v12;
      if (![v24 length])
      {
        v26 = [MEMORY[0x277CCA8D8] mainBundle];
        v27 = [v26 bundleIdentifier];

        v24 = v27;
      }

      v28 = [(COMeshTimerAddOn *)self actionDirector];
      v29 = [MEMORY[0x277CBEB98] setWithObject:v10];
      v51[0] = MEMORY[0x277D85DD0];
      v30 = &off_244448000;
      v51[1] = 3221225472;
      v51[2] = __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_161;
      v51[3] = &unk_278E15778;
      v52 = v23;
      v53 = v21;
      v54 = v24;
      v31 = v17;
      v55 = v31;
      v56 = v25;
      v32 = v24;
      v33 = v21;
      v34 = v23;
      [v28 requestAction:v33 members:v29 activity:v34 withCompletion:v51];

      v35 = 0;
      v11 = v46;
      v9 = v47;
    }

    else
    {
      v25 = v12;
      if (v15)
      {
        v36 = [(COMeshAddOn *)self meshController];
        v37 = [v48 timerID];
        *buf = 134218242;
        v62 = v36;
        v63 = 2112;
        v64 = v37;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to remove a timer %@", buf, 0x16u);
      }

      v31 = [(COMeshTimerAddOn *)self _sendRequest:v11 client:v9];
      v35 = 0;
      v30 = &off_244448000;
    }
  }

  v43 = [(COMeshTimerAddOn *)self recorder];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = *(v30 + 186);
  v49[2] = __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_162;
  v49[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v50 = v35;
  (v43)[2](v43, 0x2857B5848, v49);

  v44 = *MEMORY[0x277D85DE8];

  return v31;
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleTimerDeleteRequest:v3 callback:v4];
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_161(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      xpc_dictionary_set_string(v7, "command", [v10 UTF8String]);

      xpc_dictionary_set_string(v7, "client", [*(a1 + 48) UTF8String]);
      v11 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v12 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  if (v6)
  {
    v13 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_161_cold_1(a1);
    }

    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)dismissTimerWithIdentifier:(id)a3 client:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[COTimerDismissRequest alloc] initWithTimerIdentifier:v6];
  v9 = [(COMeshAddOn *)self meshController];
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([v9 leader], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v23 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v36 = v24;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%p directly dismiss a timer %@", buf, 0x16u);
    }

    v25 = objc_alloc_init(MEMORY[0x277D2C900]);
    v26 = [v9 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v13 = &v32;
    v32 = v8;
    v18 = v25;
    v33 = v18;
    v34 = v9;
    dispatch_async(v26, block);

    v19 = 1;
  }

  else
  {
    v11 = [(COMeshTimerAddOn *)self timerManager];
    v12 = [v11 dismissTimerWithIdentifier:v6];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_163;
    v29[3] = &unk_278E17010;
    v29[4] = self;
    v13 = &v30;
    v14 = v6;
    v30 = v14;
    v15 = [v12 addCompletionBlock:v29];

    v16 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v36 = v17;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p requesting leader to dismiss a timer %@", buf, 0x16u);
    }

    v18 = [(COMeshTimerAddOn *)self _sendRequest:v8 client:v7];
    v19 = 0;
  }

  v20 = [(COMeshTimerAddOn *)self recorder];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_165;
  v27[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v28 = v19;
  (v20)[2](v20, 0x2857B5848, v27);

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleTimerDismissRequest:v3 callback:v4];
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_163(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(3);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_163_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) meshController];
    v8 = *(a1 + 40);
    v10 = 134218242;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p early dismissed %@.", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isTimer:(id)a3 targetingAccessory:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    v8 = [(COMeshTimerAddOn *)self homekit];
    v9 = [v8 homeForAccessory:v6];
    if (v9)
    {
      v10 = [v8 identifiersForAccessoriesAssociatedWithAccessory:v6 inHome:v9];
    }

    else
    {
      v12 = [v6 uniqueIdentifier];
      v15[0] = v12;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    }

    v11 = [(COMeshTimerAddOn *)self _isTimer:v7 targetingAccessoryIdentifiers:v10];
  }

  else
  {
    v11 = [(COMeshTimerAddOn *)self _isTimer:v7 targetingAccessoryIdentifiers:0];
    v8 = v7;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)handleTimerReadRequest:(id)a3 callback:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 accessoryUniqueIdentifier];
  v10 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(COMeshAddOn *)self meshController];
    *buf = 134218242;
    v33 = v11;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p retrieving timers for %@...", buf, 0x16u);
  }

  v12 = [v6 requiresFilter];
  v13 = v12;
  v14 = 0;
  if (v12 && v9)
  {
    v15 = [(COMeshTimerAddOn *)self homekit];
    v16 = [v15 accessoryWithUniqueIdentifier:v9];
    if (!v16)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
      v22 = [[COMeshResponse alloc] initWithError:v18];
      v7[2](v7, v22, 0);
      goto LABEL_11;
    }

    v14 = v16;
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    v17 = [(COMeshTimerAddOn *)self timerManager];
    v18 = [v17 timers];
  }

  else
  {
    v18 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke;
  v30[3] = &unk_278E17038;
  v19 = v7;
  v31 = v19;
  v20 = [v18 addFailureBlock:v30];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_167;
  v24[3] = &unk_278E17060;
  v29 = v13;
  v25 = v14;
  v26 = self;
  v27 = v6;
  v28 = v19;
  v15 = v14;
  v21 = [v18 addSuccessBlock:v24];

  v22 = v31;
LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
}

void __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_167(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 64) == 1)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_2;
    v28 = &unk_278E16C88;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v29 = v4;
    v30 = v5;
    v6 = [v3 indexesOfObjectsPassingTest:&v25];
    if ([v6 count])
    {
      v7 = [v3 mutableCopy];
      [v7 removeObjectsAtIndexes:v6];

      v3 = v7;
    }

    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v3;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "... returning filtered timers list\n%@", buf, 0xCu);
    }

    v9 = [[COTimerReadResponse alloc] initWithFilteredTimers:v3];
    goto LABEL_17;
  }

  if (([*(a1 + 48) isForMerge] & 1) == 0)
  {
    v12 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v3;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "... returning timers list\n%@", buf, 0xCu);
    }

    v11 = [[COTimerReadResponse alloc] initWithTimers:v3];
    goto LABEL_16;
  }

  if (![*(a1 + 40) performsLocalActions] || objc_msgSend(MEMORY[0x277CFD0B8], "isDistributedTimersEnabled"))
  {
    v10 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "... returning skip-in-merge", buf, 2u);
    }

    v11 = [[COTimerReadResponse alloc] initWithSkipInMerge];
LABEL_16:
    v9 = v11;
    goto LABEL_17;
  }

  v14 = [*(a1 + 48) eTag];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = [*(a1 + 48) eTag];
  v17 = eTagForTimers(v3);
  v18 = [v16 isEqualToString:v17];

  if (v18)
  {
    v19 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "... returning not-modified", buf, 2u);
    }

    v20 = [COTimerReadResponse alloc];
    v21 = [*(a1 + 40) deletes];
    v22 = [(COTimerReadResponse *)v20 initNotModifiedWithDeletes:v21];
  }

  else
  {
LABEL_23:
    v23 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v3;
      _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "... returning alarms list and deletes\n%@", buf, 0xCu);
    }

    v24 = [COTimerReadResponse alloc];
    v21 = [*(a1 + 40) deletes];
    v22 = [(COTimerReadResponse *)v24 initWithTimers:v3 deletes:v21];
  }

  v9 = v22;

LABEL_17:
  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isTimer:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFD068]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

- (void)handleTimerCreateRequest:(id)a3 callback:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [v8 dispatchQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 timer];

  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 timerID];
    *buf = 134218242;
    v32 = v8;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p adding timer %@...", buf, 0x16u);
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    v13 = [(COMeshTimerAddOn *)self timerManager];
    [v13 addTimer:v10];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    [v14 futureWithError:v13];
  }
  v15 = ;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke;
  v28[3] = &unk_278E17088;
  v16 = v10;
  v29 = v16;
  v17 = v6;
  v30 = v17;
  v18 = [v15 addFailureBlock:v28];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_168;
  v24[3] = &unk_278E170B0;
  v26 = v8;
  v27 = v17;
  v25 = v16;
  v19 = v8;
  v20 = v17;
  v21 = v16;
  v22 = [v15 addSuccessBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_168(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) timerID];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... timer (%@) create completed", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  v6 = [COTimersAddedNotification alloc];
  v11 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [(COTimerNotification *)v6 initWithTimers:v7];

  v9 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_168_cold_1(a1, (a1 + 32));
  }

  [*(a1 + 40) sendNotification:v8];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerUpdateRequest:(id)a3 callback:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [v8 dispatchQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 timer];

  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 timerID];
    *buf = 134218242;
    v32 = v8;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p updating timer %@...", buf, 0x16u);
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    v13 = [(COMeshTimerAddOn *)self timerManager];
    [v13 updateTimer:v10];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    [v14 futureWithError:v13];
  }
  v15 = ;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke;
  v28[3] = &unk_278E17088;
  v16 = v10;
  v29 = v16;
  v17 = v6;
  v30 = v17;
  v18 = [v15 addFailureBlock:v28];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_169;
  v24[3] = &unk_278E170B0;
  v26 = v8;
  v27 = v17;
  v25 = v16;
  v19 = v8;
  v20 = v17;
  v21 = v16;
  v22 = [v15 addSuccessBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_169(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) timerID];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... timer (%@) update completed", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  v6 = [COTimersUpdatedNotification alloc];
  v11 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [(COTimerNotification *)v6 initWithTimers:v7];

  v9 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_169_cold_1(a1, (a1 + 32));
  }

  [*(a1 + 40) sendNotification:v8];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerDeleteRequest:(id)a3 callback:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [v8 dispatchQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 timer];

  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 timerID];
    *buf = 134218242;
    v33 = v8;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p delete timer %@...", buf, 0x16u);
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    v13 = [(COMeshTimerAddOn *)self timerManager];
    [v13 removeTimer:v10];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    [v14 futureWithError:v13];
  }
  v15 = ;

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke;
  v29[3] = &unk_278E17088;
  v16 = v10;
  v30 = v16;
  v17 = v6;
  v31 = v17;
  v18 = [v15 addFailureBlock:v29];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_170;
  v24[3] = &unk_278E170D8;
  v25 = v16;
  v26 = self;
  v27 = v8;
  v28 = v17;
  v19 = v8;
  v20 = v17;
  v21 = v16;
  v22 = [v15 addSuccessBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_170(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) timerID];
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "... timer (%@) delete completed", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [COTimerDeleteEvent alloc];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(COTimerDeleteEvent *)v6 initWithIdentifier:v3 date:v7];
  [v5 _addTimerDeleteEvent:v8];

  v9 = *(a1 + 56);
  v10 = objc_alloc_init(COMeshResponse);
  (*(v9 + 16))(v9, v10, 0);

  v11 = [COTimersRemovedNotification alloc];
  v16 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v13 = [(COTimerNotification *)v11 initWithTimers:v12];

  v14 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_170_cold_1(a1, v2);
  }

  [*(a1 + 48) sendNotification:v13];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerDismissRequest:(id)a3 callback:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [v8 dispatchQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v6 identifier];
  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p dismiss timer %@...", buf, 0x16u);
  }

  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__11;
  v49 = __Block_byref_object_dispose__11;
  v50 = 0;
  v12 = [(COMeshTimerAddOn *)self timerManager];
  v13 = [v12 dismissTimerWithIdentifier:v10];
  v14 = [v12 timers];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke;
  v40[3] = &unk_278E17100;
  v43 = v45;
  v44 = buf;
  v15 = v8;
  v41 = v15;
  v42 = self;
  v16 = MEMORY[0x245D5FF10](v40);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_174;
  v37[3] = &unk_278E17088;
  v17 = v10;
  v38 = v17;
  v18 = v7;
  v39 = v18;
  v19 = [v13 addFailureBlock:v37];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_175;
  v32[3] = &unk_278E17128;
  v20 = v17;
  v33 = v20;
  v21 = v18;
  v34 = v21;
  v36 = v45;
  v22 = v16;
  v35 = v22;
  v23 = [v13 addSuccessBlock:v32];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_176;
  v28[3] = &unk_278E17178;
  v24 = v20;
  v29 = v24;
  v31 = buf;
  v25 = v22;
  v30 = v25;
  v26 = [v14 addSuccessBlock:v28];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v45, 8);

  v27 = *MEMORY[0x277D85DE8];
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = a1 + 56;
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v3 = [COTimerFiringTimerDismissedNotification alloc];
      v12[0] = *(*(*v2 + 8) + 40);
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v5 = [(COTimerNotification *)v3 initWithTimers:v4];

      v6 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_cold_1(a1, v2);
      }

      [*(a1 + 32) sendNotification:v5];
      v7 = [*(a1 + 40) delegate];
      if (objc_opt_respondsToSelector())
      {
        v8 = *(a1 + 40);
        v11 = *(*(*(a1 + 56) + 8) + 40);
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
        [v7 timerAddOn:v8 didDismissTimers:v9];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_174(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_174_cold_1(a1);
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

uint64_t __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_175(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... timer (%@) dismiss completed", &v8, 0xCu);
  }

  v4 = a1[5];
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  *(*(a1[7] + 8) + 24) = 1;
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_176(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_2;
  v6[3] = &unk_278E17150;
  v7 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = v5;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 timerIDString];
  v8 = [v7 isEqualToString:a1[4]];
  *a4 = v8;

  if (v8)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    (*(a1[5] + 16))();
  }
}

- (void)handleTimersAddedNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [v4 timers];

  if ([v6 count])
  {
    if ([(COMeshTimerAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v5];
      v9 = [(COMeshTimerAddOn *)self timerManager];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__COMeshTimerAddOn_handleTimersAddedNotification___block_invoke;
      v16[3] = &unk_278E171A0;
      v16[4] = self;
      v17 = v7;
      v18 = v9;
      v10 = v9;
      v11 = v7;
      [v6 enumerateObjectsUsingBlock:v16];
      v12 = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    }

    else
    {
      v12 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__COMeshTimerAddOn_handleTimersAddedNotification___block_invoke_179;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = v6;
    v13 = [v12 addSuccessBlock:v14];
  }

  else
  {
    v12 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn handleTimersAddedNotification:];
    }
  }
}

void __50__COMeshTimerAddOn_handleTimersAddedNotification___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 timerID];
    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p adding local timer %@", &v10, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) addTimer:v3];
  [v7 addObject:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __50__COMeshTimerAddOn_handleTimersAddedNotification___block_invoke_179(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished adding local timers", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 timerAddOn:*(a1 + 32) didAddTimers:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleTimersRemovedNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [v4 timers];

  if ([v6 count])
  {
    if ([(COMeshTimerAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v5];
      v9 = [MEMORY[0x277CBEAA8] now];
      v10 = [(COMeshTimerAddOn *)self timerManager];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__COMeshTimerAddOn_handleTimersRemovedNotification___block_invoke;
      v18[3] = &unk_278E171F0;
      v18[4] = self;
      v19 = v9;
      v20 = v7;
      v21 = v10;
      v11 = v10;
      v12 = v7;
      v13 = v9;
      [v6 enumerateObjectsUsingBlock:v18];
      v14 = [MEMORY[0x277D2C900] combineAllFutures:v12 ignoringErrors:1 scheduler:v8];
    }

    else
    {
      v14 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__COMeshTimerAddOn_handleTimersRemovedNotification___block_invoke_181;
    v16[3] = &unk_278E171C8;
    v16[4] = self;
    v17 = v6;
    v15 = [v14 addSuccessBlock:v16];
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn handleTimersRemovedNotification:];
    }
  }
}

void __52__COMeshTimerAddOn_handleTimersRemovedNotification___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 timerID];
  v5 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v12 = 134218242;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p removing local timer %@", &v12, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [[COTimerDeleteEvent alloc] initWithIdentifier:v4 date:*(a1 + 40)];
  [v7 _addTimerDeleteEvent:v8];

  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) removeTimer:v3];

  [v9 addObject:v10];
  v11 = *MEMORY[0x277D85DE8];
}

void __52__COMeshTimerAddOn_handleTimersRemovedNotification___block_invoke_181(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished removing local timers", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 timerAddOn:*(a1 + 32) didRemoveTimers:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleTimersUpdatedNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [v4 timers];

  if ([v6 count])
  {
    if ([(COMeshTimerAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v5];
      v9 = [(COMeshTimerAddOn *)self timerManager];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __52__COMeshTimerAddOn_handleTimersUpdatedNotification___block_invoke;
      v16[3] = &unk_278E171A0;
      v16[4] = self;
      v17 = v7;
      v18 = v9;
      v10 = v9;
      v11 = v7;
      [v6 enumerateObjectsUsingBlock:v16];
      v12 = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    }

    else
    {
      v12 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__COMeshTimerAddOn_handleTimersUpdatedNotification___block_invoke_182;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = v6;
    v13 = [v12 addSuccessBlock:v14];
  }

  else
  {
    v12 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn handleTimersUpdatedNotification:];
    }
  }
}

void __52__COMeshTimerAddOn_handleTimersUpdatedNotification___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 timerID];
    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p updating local timer %@", &v10, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) updateTimer:v3];
  [v7 addObject:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __52__COMeshTimerAddOn_handleTimersUpdatedNotification___block_invoke_182(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished updating local timers", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 timerAddOn:*(a1 + 32) didUpdateTimers:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerFiredNotification:(id)a3
{
  v6 = a3;
  if (![(COMeshTimerAddOn *)self performsLocalActions])
  {
    v4 = [(COMeshTimerAddOn *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 timers];
      [v4 timerAddOn:self didUpdateTimers:v5];
    }
  }
}

- (void)handleTimerFiringTimerDismissedNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [v4 timers];

  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v5];
    v9 = [(COMeshTimerAddOn *)self timerManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__COMeshTimerAddOn_handleTimerFiringTimerDismissedNotification___block_invoke;
    v16[3] = &unk_278E171A0;
    v16[4] = self;
    v17 = v7;
    v18 = v9;
    v10 = v9;
    v11 = v7;
    [v6 enumerateObjectsUsingBlock:v16];
    v12 = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__COMeshTimerAddOn_handleTimerFiringTimerDismissedNotification___block_invoke_183;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = v6;
    v13 = [v12 addSuccessBlock:v14];
  }

  else
  {
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn handleTimerFiringTimerDismissedNotification:];
    }
  }
}

void __64__COMeshTimerAddOn_handleTimerFiringTimerDismissedNotification___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 timerID];
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v11 = 134218242;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p dismissing local timer %@", &v11, 0x16u);
  }

  v7 = a1[5];
  v6 = a1[6];
  v8 = [v3 UUIDString];
  v9 = [v6 dismissTimerWithIdentifier:v8];
  [v7 addObject:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __64__COMeshTimerAddOn_handleTimerFiringTimerDismissedNotification___block_invoke_183(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished dismissing local timers", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 timerAddOn:*(a1 + 32) didDismissTimers:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerManagerStateResetNotification:(id)a3
{
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn handleTimerManagerStateResetNotification:?];
  }

  v5 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 didResetTimerAddOn:self];
  }
}

- (void)timersAsAccessory:(id)a3 fromClient:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn timersAsAccessory:? fromClient:? withCallback:?];
  }

  if (v8)
  {
    v12 = 0;
LABEL_5:
    v13 = [(COMeshTimerAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v8];
    goto LABEL_6;
  }

  v12 = [(COMeshTimerAddOn *)self performsLocalActions];
  v13 = [(COMeshTimerAddOn *)self _currentAccessoryForClient:v9];
  if (v13)
  {
    v8 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:v13];

    if (v8)
    {
      goto LABEL_5;
    }

    v13 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_6:
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__11;
  v26[4] = __Block_byref_object_dispose__11;
  v27 = os_transaction_create();
  if (v13)
  {
    v14 = [(COMeshTimerAddOn *)self _timersForAccessory:v8 member:v13];
  }

  else
  {
    v15 = [v8 uniqueIdentifier];
    v14 = [(COMeshTimerAddOn *)self _timersForAccessoryIdentifier:v15 allowLocalStorage:v12];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke;
  v23[3] = &unk_278E16C38;
  v16 = v10;
  v24 = v16;
  v25 = v26;
  v17 = [v14 addFailureBlock:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2;
  v20[3] = &unk_278E17218;
  v18 = v16;
  v21 = v18;
  v22 = v26;
  v19 = [v14 addSuccessBlock:v20];

  _Block_object_dispose(v26, 8);
}

void __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)timersForAccessories:(id)a3 fromClient:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshController];
  v12 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn timersForAccessories:fromClient:callback:];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [(COMeshAddOn *)self meshController];
  v16 = [v15 nodeManager];
  v17 = [v16 activeNodesWithSelfNode:1];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke;
  v38[3] = &unk_278E17240;
  v18 = v17;
  v39 = v18;
  v19 = v13;
  v40 = v19;
  v41 = self;
  v20 = v14;
  v42 = v20;
  v21 = v11;
  v43 = v21;
  [v8 enumerateObjectsUsingBlock:v38];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__11;
  v36[4] = __Block_byref_object_dispose__11;
  v37 = os_transaction_create();
  v22 = [v21 dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_187;
  block[3] = &unk_278E172B8;
  v29 = v19;
  v30 = self;
  v31 = v9;
  v32 = v20;
  v33 = v21;
  v34 = v10;
  v35 = v36;
  v23 = v10;
  v24 = v21;
  v25 = v20;
  v26 = v9;
  v27 = v19;
  dispatch_async(v22, block);

  _Block_object_dispose(v36, 8);
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 categoryType];
  v5 = [v3 IDSIdentifier];
  if (![v4 isEqualToString:*MEMORY[0x277CCE8B0]] || (COMeshNodeForIDSIdentifier(*(a1 + 32), v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = *(a1 + 40);
LABEL_4:
    [v7 addObject:v3];
    goto LABEL_5;
  }

  v9 = [*(a1 + 48) secondaryClusterMemberForAccessory:v3];

  if (v9)
  {
    v7 = *(a1 + 56);
    goto LABEL_4;
  }

  v10 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 64);
    v12 = 134218242;
    v13 = v11;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p not getting timers for %@, accessory unavailable", &v12, 0x16u);
  }

LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_187(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CBEB18] array];
  if ([*(a1 + 32) count])
  {
    v4 = [*(a1 + 40) _timersForAccessories:*(a1 + 32) fromClient:*(a1 + 48) results:v2];
    [v3 addObject:v4];
  }

  if ([*(a1 + 56) count])
  {
    v5 = *(a1 + 56);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_2;
    v25[3] = &unk_278E16E38;
    v6 = v3;
    v7 = *(a1 + 40);
    v26 = v6;
    v27 = v7;
    v28 = v2;
    [v5 enumerateObjectsUsingBlock:v25];
  }

  v8 = MEMORY[0x277D2C938];
  v9 = [*(a1 + 64) dispatchQueue];
  v10 = [v8 schedulerWithDispatchQueue:v9];

  v11 = [MEMORY[0x277D2C900] combineAllFutures:v3 ignoringErrors:1 scheduler:v10];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_5;
  v21[3] = &unk_278E17290;
  v12 = *(a1 + 72);
  v22 = v2;
  v23 = v12;
  v24 = *(a1 + 80);
  v13 = v2;
  v14 = [v11 addSuccessBlock:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_6;
  v18[3] = &unk_278E16C38;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v19 = v15;
  v20 = v16;
  v17 = [v11 addFailureBlock:v18];
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  [a1[4] addObject:v4];
  v5 = [a1[5] secondaryClusterMemberForAccessory:v3];
  v6 = [a1[5] _timersForAccessory:v3 member:v5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_3;
  v14[3] = &unk_278E17268;
  v15 = a1[6];
  v16 = v3;
  v7 = v4;
  v17 = v7;
  v8 = v3;
  v9 = [v6 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_4;
  v12[3] = &unk_278E15B38;
  v13 = v7;
  v10 = v7;
  v11 = [v6 addFailureBlock:v12];
}

uint64_t __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_3(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v5 uniqueIdentifier];
  [v4 setObject:v3 forKey:v7];

  v8 = a1[6];

  return [v8 finishWithNoResult];
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_5(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)addTimer:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn addTimer:asAccessory:fromClient:withCallback:];
  }

  v15 = [v10 siriContext];
  v16 = [v15 objectForKey:*MEMORY[0x277CFD068]];
  if (v11)
  {
    v17 = [(COMeshTimerAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v11];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(COMeshTimerAddOn *)self addTimer:v10 client:v12 member:v17];
  [(COMeshTimerAddOn *)self _addCompletionsToFuture:v18 withXPCCallback:v13 transactionDescription:"com.apple.CoordinationCore.timers.create"];
}

- (void)updateTimer:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn updateTimer:asAccessory:fromClient:withCallback:];
  }

  if (v11)
  {
    v15 = [(COMeshTimerAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v11];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(COMeshTimerAddOn *)self updateTimer:v10 client:v12 member:v15];
  [(COMeshTimerAddOn *)self _addCompletionsToFuture:v16 withXPCCallback:v13 transactionDescription:"com.apple.CoordinationCore.timers.update"];
}

- (void)removeTimer:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn removeTimer:asAccessory:fromClient:withCallback:];
  }

  if (v11)
  {
    v15 = [(COMeshTimerAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v11];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(COMeshTimerAddOn *)self removeTimer:v10 client:v12 member:v15];
  [(COMeshTimerAddOn *)self _addCompletionsToFuture:v16 withXPCCallback:v13 transactionDescription:"com.apple.CoordinationCore.timers.delete"];
}

- (void)dismissTimerWithIdentifier:(id)a3 fromClient:(id)a4 withCallback:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn dismissTimerWithIdentifier:fromClient:withCallback:];
  }

  v10 = [(COMeshTimerAddOn *)self dismissTimerWithIdentifier:v7];
  [(COMeshTimerAddOn *)self _addCompletionsToFuture:v10 withXPCCallback:v8 transactionDescription:"com.apple.CoordinationCore.timers.dismiss"];
}

- (void)canDispatchAsAccessory:(id)a3 asInstance:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshControllerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke;
  v15[3] = &unk_278E15D00;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [*(a1 + 32) IDSIdentifier];
  v4 = [*(a1 + 32) categoryType];
  v5 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 134218754;
    v51 = v6;
    v52 = 2112;
    v53 = v7;
    v54 = 2112;
    v55 = v2;
    v56 = 2112;
    v57 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p as %@ checking dispatch for %@ of %@...", buf, 0x2Au);
  }

  if (*(a1 + 48) | v2)
  {
    if ([v4 isEqualToString:*MEMORY[0x277CCE8B0]])
    {
      v9 = [*(a1 + 40) meshController];
      v8 = [v9 state];

      v10 = [*(a1 + 40) ourInterests];
      v11 = [v10 objectForKey:v3];

      if (v11)
      {
        v12 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v40 = *(a1 + 32);
          v39 = *(a1 + 40);
          *buf = 134218498;
          v51 = v39;
          v52 = 2048;
          v53 = v11;
          v54 = 2112;
          v55 = v40;
          _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p using interest tracker %p for can dispatch of %@", buf, 0x20u);
        }

        LODWORD(v8) = [v11 canDispatchWithPrimary:v8 == 3];
      }

      else if (v8 == 3)
      {
        v41 = v3;
        v19 = COCoreLogForCategory(3);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_2((a1 + 40), v19, v20, v21, v22, v23, v24, v25);
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v26 = [*(a1 + 40) meshController];
        v8 = [v26 nodes];

        v27 = [v8 countByEnumeratingWithState:&v46 objects:v61 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v47;
          while (2)
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v47 != v29)
              {
                objc_enumerationMutation(v8);
              }

              v31 = [*(*(&v46 + 1) + 8 * i) IDSIdentifier];
              v32 = [v31 isEqual:v41];

              if (v32)
              {

                LODWORD(v8) = 1;
                goto LABEL_36;
              }
            }

            v28 = [v8 countByEnumeratingWithState:&v46 objects:v61 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v33 = [*(a1 + 40) secondaryClusterMemberForAccessory:*(a1 + 32)];
        LODWORD(v8) = v33 != 0;

LABEL_36:
        v3 = v41;
      }

      else
      {
        LODWORD(v8) = 0;
      }
    }

    else
    {
      v13 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_1(a1);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v14 = [*(a1 + 40) meshController];
      v11 = [v14 nodes];

      v8 = [v11 countByEnumeratingWithState:&v42 objects:v60 count:16];
      if (v8)
      {
        v15 = *v43;
        while (2)
        {
          for (j = 0; j != v8; j = j + 1)
          {
            if (*v43 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = [*(*(&v42 + 1) + 8 * j) remote];
            v18 = [v17 type];

            if (v18 != -1)
            {
              LODWORD(v8) = 1;
              goto LABEL_37;
            }
          }

          v8 = [v11 countByEnumeratingWithState:&v42 objects:v60 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_37:
  }

  else
  {
    LODWORD(v8) = 1;
  }

  v34 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(a1 + 40);
    v36 = *(a1 + 48);
    v37 = " not";
    if (v8)
    {
      v37 = "";
    }

    *buf = 134219010;
    v51 = v35;
    v52 = 2112;
    v53 = v36;
    v54 = 2080;
    v55 = v37;
    v56 = 2112;
    v57 = v2;
    v58 = 2112;
    v59 = v4;
    _os_log_impl(&dword_244378000, v34, OS_LOG_TYPE_DEFAULT, "%p as %@ can%s dispatch for %@ of %@", buf, 0x34u);
  }

  (*(*(a1 + 56) + 16))();
  v38 = *MEMORY[0x277D85DE8];
}

- (void)establishSecondaryClusterForAccessory:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CFD0B8] isHomeKitUsingAlarmsAndTimersIDSService])
  {
    v5 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = @"com.apple.private.alloy.alarms-timers";
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p HomeKit is making use of IDS Service %@ for timers", buf, 0x16u);
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__COMeshTimerAddOn_establishSecondaryClusterForAccessory___block_invoke;
    v7[3] = &unk_278E156B0;
    v7[4] = self;
    v8 = v4;
    [(COMeshTimerAddOn *)self _withLock:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__COMeshTimerAddOn_establishSecondaryClusterForAccessory___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CFD0B8] isGlobalTimersEnabled] && !*(*(a1 + 32) + 80))
  {
    v2 = NSClassFromString(&cfstr_Coclusterrealm.isa);
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = [v3 homeUniqueIdentifier];
      v5 = [(objc_class *)v2 realmWithHomeKitHomeIdentifier:v4];
    }

    else
    {
      v5 = [(objc_class *)v2 realmForCurrent];
    }

    v6 = [MEMORY[0x277CFD080] configurationWithDomain:@"com.apple.alarms-timers" requiredServices:12 options:0 realm:v5 globalServiceName:@"com.apple.private.alloy.alarms-timers"];
    v7 = [MEMORY[0x277CFD078] clusterWithConfiguration:v6];
    v8 = [COMTActionDirector directorForCluster:v7];
    v9 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:3];
    v11 = [v9 setWithArray:{v10, v19, v20}];

    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [*(a1 + 32) meshControllerQueue];
    [v8 registerHandler:v12 forType:v14 actions:v11 queue:v15];

    v16 = *(a1 + 32);
    v17 = *(v16 + 80);
    *(v16 + 80) = v8;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)secondaryClusterMemberForAccessory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [a3 IDSIdentifier];
  if ([v4 length] && objc_msgSend(MEMORY[0x277CFD0B8], "isGlobalMessagingEnabled"))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [(COMeshTimerAddOn *)self members];
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 member];
          v11 = [v10 deviceMetadata];
          v12 = [v11 objectForKey:@"IDS"];
          v13 = [v12 isEqual:v4];

          if (v13)
          {
            v14 = [v9 member];
            goto LABEL_14;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_14:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)secondaryClusterMemberIfRequiredForAccessory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 categoryType];
  if ([v5 isEqualToString:*MEMORY[0x277CCE8B0]])
  {
    v6 = [v4 IDSIdentifier];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(COMeshAddOn *)self meshController];
    v8 = [v7 nodes];

    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) IDSIdentifier];
          v14 = [v13 isEqual:v6];

          if (v14)
          {

            v15 = 0;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = [(COMeshTimerAddOn *)self secondaryClusterMemberForAccessory:v4];
LABEL_13:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)setInterests:(id)a3 asAccessory:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshControllerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__COMeshTimerAddOn_setInterests_asAccessory_withCallback___block_invoke;
  v15[3] = &unk_278E172E0;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __58__COMeshTimerAddOn_setInterests_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) IDSIdentifier];
  if (v2)
  {
    v3 = [*(a1 + 40) ourInterests];
    v4 = [v3 objectForKey:v2];

    if (!v4)
    {
      v5 = [*(a1 + 40) meshController];
      v6 = [v5 nodes];

      v7 = COMeshNodeForIDSIdentifier(v6, v2);
      v8 = [*(a1 + 40) secondaryClusterMemberForAccessory:*(a1 + 32)];
      v4 = [[COInterestTracker alloc] initWithAccessory:*(a1 + 32) delegate:*(a1 + 40) primaryAvailable:v7 != 0 secondary:v8];
      v9 = [*(a1 + 40) ourInterests];
      v10 = [v9 mutableCopy];

      [v10 setObject:v4 forKey:v2];
      [*(a1 + 40) setOurInterests:v10];
      v11 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v21 = 134218498;
        v22 = v12;
        v23 = 2048;
        v24 = v4;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p using %p to track our interests for accessory %@", &v21, 0x20u);
      }
    }

    [(COInterestTracker *)v4 setInterests:*(a1 + 48)];
    if (![*(a1 + 48) count])
    {
      v14 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v15 = *(a1 + 40);
        v21 = 134218498;
        v22 = v15;
        v23 = 2048;
        v24 = v4;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p removing tracker %p for accessory %@", &v21, 0x20u);
      }

      v17 = [*(a1 + 40) ourInterests];
      v18 = [v17 mutableCopy];

      [v18 removeObjectForKey:v2];
      [*(a1 + 40) setOurInterests:v18];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v19 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __58__COMeshTimerAddOn_setInterests_asAccessory_withCallback___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)interestTracker:(id)a3 setInterests:(id)a4 forMember:(id)a5 callback:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v11 allObjects];
  v18 = [COMTUpdateInterestAction actionWithTargetType:v16 targetIdentifiers:v17];

  v19 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v39 = self;
    v40 = 2048;
    v41 = v10;
    v42 = 2114;
    v43 = v18;
    v44 = 2114;
    v45 = v11;
    _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%p setting interests for tracker %p via %{public}@ to %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke;
  v33[3] = &unk_278E17308;
  objc_copyWeak(&v37, buf);
  v20 = v10;
  v34 = v20;
  v21 = v18;
  v35 = v21;
  v22 = v13;
  v36 = v22;
  v23 = MEMORY[0x245D5FF10](v33);
  v24 = [(COMeshAddOn *)self meshControllerQueue];
  v25 = [(COMeshTimerAddOn *)self actionDirector];
  v26 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke_205;
  v30[3] = &unk_278E17330;
  v27 = v24;
  v31 = v27;
  v28 = v23;
  v32 = v28;
  [v25 requestAction:v21 members:v26 activity:0 withCompletion:v30];

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);

  v29 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(3);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v13 = 134218754;
        v14 = WeakRetained;
        v15 = 2048;
        v16 = v7;
        v17 = 2048;
        v18 = v8;
        v19 = 2112;
        v20 = v3;
        _os_log_error_impl(&dword_244378000, v6, OS_LOG_TYPE_ERROR, "%p failed to set interests for tracker %p via %p: %@", &v13, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v13 = 134218496;
      v14 = WeakRetained;
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p successfully set interests for tracker %p via %p", &v13, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
    v11 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 didChangeCompositionForTimerAddOn:WeakRetained];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke_205(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke_2;
  v8[3] = &unk_278E159A0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

- (void)interestTrackerTriggerReset:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn handleTimerManagerStateResetNotification:?];
  }

  v7 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 accessory];
    v9 = [v8 uniqueIdentifier];

    [v7 timerAddOn:self resetAccesory:v9];
  }
}

- (void)director:(id)a3 membersChanged:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(COMeshTimerAddOn *)self members];
  v7 = [v6 mutableCopy];

  [v7 minusSet:v5];
  [(COMeshTimerAddOn *)self setMembers:v5];
  v8 = [(COMeshTimerAddOn *)self interests];
  v9 = [v8 allKeys];
  v10 = [v9 mutableCopy];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      v15 = 0;
      do
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v49 + 1) + 8 * v15) member];
        [v10 removeObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v17 = [(COMeshTimerAddOn *)self interests];
    v18 = [v17 mutableCopy];

    [v18 removeObjectsForKeys:v10];
    [(COMeshTimerAddOn *)self setInterests:v18];
    v19 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v56 = self;
      v57 = 2112;
      v58 = v10;
      _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%p removing interests for %@", buf, 0x16u);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = v7;
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    do
    {
      v24 = 0;
      do
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v45 + 1) + 8 * v24) member];
        v26 = [v25 IDSIdentifier];

        v27 = [(COMeshTimerAddOn *)self ourInterests];
        v28 = [v27 objectForKey:v26];

        if (v28)
        {
          [v28 setSecondary:0];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v22);
  }

  v40 = v20;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = v11;
  v30 = [v29 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v42;
    do
    {
      v33 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v41 + 1) + 8 * v33) member];
        v35 = [v34 IDSIdentifier];
        v36 = [(COMeshTimerAddOn *)self ourInterests];
        v37 = [v36 objectForKey:v35];

        if (v37)
        {
          [v37 setSecondary:v34];
        }

        ++v33;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v31);
  }

  v38 = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v38 didChangeCompositionForTimerAddOn:self];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)director:(id)a3 performAction:(id)a4 from:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 actionIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v11;
      v20 = [(COTimerUpdateRequest *)v18 memento];
      v21 = [v20 uniqueIdentifier];

      if (!v21)
      {
        v22 = [(COMeshTimerAddOn *)self homekit];
        v23 = [v22 currentAccessory];
        v21 = [v23 uniqueIdentifier];
      }

      v24 = [[COTimerReadRequest alloc] initWithAccessoryUniqueIdentifier:v21];
      objc_initWeak(&location, self);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_2;
      v38[3] = &unk_278E17380;
      v40 = v13;
      objc_copyWeak(&v41, &location);
      v39 = v14;
      [(COMeshTimerAddOn *)self handleTimerReadRequest:v24 callback:v38];

      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v11;
        v26 = [COTimerUpdateRequest alloc];
        v27 = [v25 timer];

        v18 = [(COTimerRequest *)v26 initWithTimer:v27];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_3;
        v35[3] = &unk_278E17358;
        v36 = v14;
        v37 = v13;
        [(COMeshTimerAddOn *)self handleTimerUpdateRequest:v18 callback:v35];

        v19 = v36;
        goto LABEL_3;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v11 targetIdentifier];
        v21 = [objc_alloc(MEMORY[0x277D29730]) initWithIdentifier:v18];
        v24 = [(COTimerRequest *)[COTimerDeleteRequest alloc] initWithTimer:v21];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_4;
        v32[3] = &unk_278E17358;
        v33 = v14;
        v34 = v13;
        [(COMeshTimerAddOn *)self handleTimerDeleteRequest:v24 callback:v32];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v11 targetIdentifiers];
          v28 = [(COMeshTimerAddOn *)self interests];
          v21 = [v28 mutableCopy];

          if ([(COTimerUpdateRequest *)v18 count])
          {
            [v21 setObject:v18 forKey:v12];
          }

          else
          {
            [v21 removeObjectForKey:v12];
          }

          [(COMeshTimerAddOn *)self setInterests:v21];
          v30 = [[COMTResult alloc] initWithActionIdentifier:v14];
          (*(v13 + 2))(v13, v30, 0);

          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_15;
        }

        v18 = v11;
        v21 = [(COMeshTimerAddOn *)self delegate];
        v24 = [(COTimerUpdateRequest *)v18 reason];
        v29 = [(COTimerUpdateRequest *)v18 timers];
        if ([(COTimerReadRequest *)v24 isEqual:*MEMORY[0x277D296A0]]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v21 timerAddOn:self didAddTimers:v29];
        }

        else if ([(COTimerReadRequest *)v24 isEqual:*MEMORY[0x277D296B8]]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v21 timerAddOn:self didRemoveTimers:v29];
        }

        else if ([(COTimerReadRequest *)v24 isEqual:*MEMORY[0x277D296C0]]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v21 timerAddOn:self didUpdateTimers:v29];
        }

        v31 = [[COMTResult alloc] initWithActionIdentifier:v14];
        (*(v13 + 2))(v13, v31, 0);
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  v15 = v11;
  v16 = [COTimerCreateRequest alloc];
  v17 = [v15 timer];

  v18 = [(COTimerRequest *)v16 initWithTimer:v17];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke;
  v43[3] = &unk_278E17358;
  v44 = v14;
  v45 = v13;
  [(COMeshTimerAddOn *)self handleTimerCreateRequest:v18 callback:v43];

  v19 = v44;
LABEL_3:

LABEL_14:
LABEL_15:
}

void __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5 || ([a2 error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = [[COMTResult alloc] initWithActionIdentifier:*(a1 + 32)];
    v6 = 0;
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

void __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5 || ([v9 error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v9 timers];
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v8 = [[COMTTimerReadResult alloc] initWithTimers:v6 actionIdentifier:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5 || ([a2 error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = [[COMTResult alloc] initWithActionIdentifier:*(a1 + 32)];
    v6 = 0;
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

void __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5 || ([a2 error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = [[COMTResult alloc] initWithActionIdentifier:*(a1 + 32)];
    v6 = 0;
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

- (void)didChangeNodesForMeshController:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 mergeRequest];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_filteredTimersList:forAccessory:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v2, v3, "%p local timers list failed (%@)");
  v4 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96_cold_2(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *a2;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_244378000, v4, v5, "%p specified accessory (%@) was not found in order to filter local timers!");
  v6 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v1, v2, "%p timers list from leader failed (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_244378000, v3, v4, "%p specified accessory (%@) was not found in order to filter timers!");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isTimer:targetingAccessoryIdentifiers:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "Unknown targeting of %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isTimer:(void *)a1 targetingAccessoryIdentifiers:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 timerID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __38__COMeshTimerAddOn__sendNotification___block_invoke_3_cold_1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_1_4();
  v10 = v4;
  v11 = v5;
  v12 = v6;
  _os_log_error_impl(&dword_244378000, v7, OS_LOG_TYPE_ERROR, "%p failed to send notifiction '%@' to member %@", v9, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_timerManagerTimerFired:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p forwarding local update to the mesh", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p forwarding reset to the mesh", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_continueMerge:withResponse:fromNode:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  v4 = v0;
  _os_log_debug_impl(&dword_244378000, v1, OS_LOG_TYPE_DEBUG, "%p merge %p received last response", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_finishMerge:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_finishMerge:.cold.2()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p failed to fetch timers for index: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v1, v2, "%p direct add failed (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_155_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v1, v2, "%p add failed via secondary cluster (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v1, v2, "%p direct update failed (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_158_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v1, v2, "%p update failed via secondary cluster (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v1, v2, "%p direct remove failed (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_161_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v1, v2, "%p remove failed via secondary cluster (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v1, v2, "%p direct dismiss failed (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_163_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(v0 + 32) meshController];
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "... timers list failed (%@)", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) timerID];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_168_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*a2 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) timerID];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_169_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*a2 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) timerID];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_170_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = [*a2 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(*(*a2 + 8) + 40) timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_174_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v2, v3, "... timer (%@) dismiss failed (%@)");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleTimersAddedNotification:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p added timers without a list of timers", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleTimersRemovedNotification:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p removed timers without a list of timers", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleTimersUpdatedNotification:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p updated timers without a list of timers", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerFiringTimerDismissedNotification:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p dismissed timers without a list of timers", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerManagerStateResetNotification:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)timersAsAccessory:(void *)a1 fromClient:withCallback:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "... returning %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)timersForAccessories:fromClient:callback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  [v0 count];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addTimer:asAccessory:fromClient:withCallback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 meshController];
  v3 = [v0 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateTimer:asAccessory:fromClient:withCallback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 meshController];
  v3 = [v0 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeTimer:asAccessory:fromClient:withCallback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 meshController];
  v3 = [v0 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dismissTimerWithIdentifier:fromClient:withCallback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2(&dword_244378000, v1, v2, "%p looking for non-ephemeral node...", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_2(&dword_244378000, a2, a3, "%p looking for HomePod...", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__COMeshTimerAddOn_setInterests_asAccessory_withCallback___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  v4 = 134217984;
  v5 = v1;
  _os_log_error_impl(&dword_244378000, v2, OS_LOG_TYPE_ERROR, "%p cannot set interests, IDS identifier missing", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end