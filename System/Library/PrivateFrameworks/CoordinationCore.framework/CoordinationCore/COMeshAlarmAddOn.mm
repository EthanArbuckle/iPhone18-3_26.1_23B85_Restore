@interface COMeshAlarmAddOn
- (BOOL)_isAlarm:(id)a3 targetingAccessory:(id)a4;
- (BOOL)_isAlarm:(id)a3 targetingAccessoryIdentifiers:(id)a4;
- (BOOL)performsLocalActions;
- (COMTActionDirector)actionDirector;
- (COMeshAlarmAddOn)init;
- (COMeshAlarmAddOn)initWithAlarmManager:(id)a3;
- (COMeshAlarmAddOn)initWithAlarmManager:(id)a3 homekitAdapter:(id)a4 hubAdapter:(id)a5;
- (COMeshAlarmAddOnDelegate)delegate;
- (id)_alarmsForAccessory:(id)a3 allowLocalStorage:(BOOL)a4 usingLeader:(BOOL)a5 member:(id)a6 client:(id)a7;
- (id)_commandsForReconciling:(id)a3 toTruth:(id)a4 forNode:(id)a5;
- (id)_currentAccessoryForConnection:(id)a3;
- (id)_filteredAlarmsList:(id)a3 forAccessory:(id)a4;
- (id)_sendRequest:(id)a3 client:(id)a4;
- (id)addAlarm:(id)a3 member:(id)a4 client:(id)a5;
- (id)alarmsForAccessory:(id)a3;
- (id)dismissAlarmWithIdentifier:(id)a3 client:(id)a4;
- (id)removeAlarm:(id)a3 member:(id)a4 client:(id)a5;
- (id)secondaryClusterMemberForAccessory:(id)a3;
- (id)secondaryClusterMemberIfRequiredForAccessory:(id)a3;
- (id)snoozeAlarmWithIdentifier:(id)a3 client:(id)a4;
- (id)updateAlarm:(id)a3 member:(id)a4 client:(id)a5;
- (void)_abandonMerge;
- (void)_accessorySettingValueUpdated:(id)a3;
- (void)_addAlarmDeleteEvent:(id)a3;
- (void)_addCompletionsToFuture:(id)a3 withXPCCallback:(id)a4 transactionDescription:(const char *)a5;
- (void)_alarmManagerAlarmFired:(id)a3;
- (void)_alarmManagerAlarmsAdded:(id)a3;
- (void)_alarmManagerAlarmsChanged:(id)a3;
- (void)_alarmManagerAlarmsRemoved:(id)a3;
- (void)_alarmManagerAlarmsUpdated:(id)a3;
- (void)_alarmManagerFiringAlarmChanged:(id)a3;
- (void)_alarmManagerFiringAlarmDismissed:(id)a3;
- (void)_alarmManagerStateReset:(id)a3;
- (void)_broadcastMerge:(id)a3 withTruth:(id)a4;
- (void)_continueMerge:(id)a3 withResponse:(id)a4 fromNode:(id)a5;
- (void)_finishMerge:(id)a3;
- (void)_primeMerge:(id)a3 withNodes:(id)a4;
- (void)_processQueuedCommands;
- (void)_reaperFired;
- (void)_reloadIndexWithCompletion:(id)a3;
- (void)_replicateToMobileTimerFromHomeKit;
- (void)_sendNotification:(id)a3;
- (void)_startMerge;
- (void)_withLock:(id)a3;
- (void)addAlarm:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6;
- (void)alarmsAsAccessory:(id)a3 fromClient:(id)a4 withCallback:(id)a5;
- (void)alarmsForAccessories:(id)a3 fromClient:(id)a4 callback:(id)a5;
- (void)canDispatchAsAccessory:(id)a3 asInstance:(id)a4 reply:(id)a5;
- (void)dealloc;
- (void)didAddToMeshController:(id)a3;
- (void)didChangeNodesForMeshController:(id)a3;
- (void)didStopMeshController:(id)a3;
- (void)director:(id)a3 membersChanged:(id)a4;
- (void)director:(id)a3 performAction:(id)a4 from:(id)a5 callback:(id)a6;
- (void)dismissAlarmWithIdentifier:(id)a3 fromClient:(id)a4 withCallback:(id)a5;
- (void)establishSecondaryClusterForAccessory:(id)a3;
- (void)handleAlarmCreateRequest:(id)a3 callback:(id)a4;
- (void)handleAlarmDeleteRequest:(id)a3 callback:(id)a4;
- (void)handleAlarmDismissRequest:(id)a3 callback:(id)a4;
- (void)handleAlarmFiredNotification:(id)a3;
- (void)handleAlarmFiringAlarmDismissedNotification:(id)a3;
- (void)handleAlarmManagerStateResetNotification:(id)a3;
- (void)handleAlarmReadRequest:(id)a3 callback:(id)a4;
- (void)handleAlarmSnoozeNotification:(id)a3;
- (void)handleAlarmSnoozeRequest:(id)a3 callback:(id)a4;
- (void)handleAlarmUpdateRequest:(id)a3 callback:(id)a4;
- (void)handleAlarmsAddedNotification:(id)a3;
- (void)handleAlarmsRemovedNotification:(id)a3;
- (void)handleAlarmsUpdatedNotification:(id)a3;
- (void)interestTracker:(id)a3 setInterests:(id)a4 forMember:(id)a5 callback:(id)a6;
- (void)interestTrackerTriggerReset:(id)a3;
- (void)mediaSystemCompanionTransitionedFrom:(id)a3 to:(id)a4;
- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)reapNonRepeatingAlarmsOlderThanDate:(id)a3 accessory:(id)a4 home:(id)a5;
- (void)removeAlarm:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6;
- (void)setDelegate:(id)a3;
- (void)setInterests:(id)a3 asAccessory:(id)a4 withCallback:(id)a5;
- (void)snoozeAlarmWithIdentifier:(id)a3 fromClient:(id)a4 withCallback:(id)a5;
- (void)updateAlarm:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6;
- (void)willRemoveFromMeshController:(id)a3;
- (void)willStartMeshController:(id)a3;
@end

@implementation COMeshAlarmAddOn

- (COMeshAlarmAddOn)initWithAlarmManager:(id)a3 homekitAdapter:(id)a4 hubAdapter:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v49.receiver = self;
  v49.super_class = COMeshAlarmAddOn;
  v12 = [(COMeshAddOn *)&v49 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x277D296D8]);
    observedAlarmManager = v13->_observedAlarmManager;
    v13->_observedAlarmManager = v14;

    [(MTAlarmManager *)v13->_observedAlarmManager checkIn];
    objc_storeStrong(&v13->_homekit, a4);
    objc_storeStrong(&v13->_homehub, a5);
    objc_initWeak(&location, v13);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __67__COMeshAlarmAddOn_initWithAlarmManager_homekitAdapter_hubAdapter___block_invoke;
    v46[3] = &unk_278E18590;
    objc_copyWeak(&v47, &location);
    v16 = [v10 registerMediaSystemUpdateHandler:v46];
    mediaSystemUpdateRegistration = v13->_mediaSystemUpdateRegistration;
    v13->_mediaSystemUpdateRegistration = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEA60]);
    deletes = v13->_deletes;
    v13->_deletes = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEA60]);
    mergingNodes = v13->_mergingNodes;
    v13->_mergingNodes = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    mergeResponses = v13->_mergeResponses;
    v13->_mergeResponses = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEA60]);
    queuedCommands = v13->_queuedCommands;
    v13->_queuedCommands = v24;

    objc_storeStrong(&v13->_alarmManager, a3);
    recorder = v13->_recorder;
    v13->_recorder = &__block_literal_global_10;

    v27 = objc_alloc_init(MEMORY[0x277CBEB98]);
    members = v13->_members;
    v13->_members = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    interests = v13->_interests;
    v13->_interests = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    ourInterests = v13->_ourInterests;
    v13->_ourInterests = v31;

    v33 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = v13;
      _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_DEFAULT, "%p mesh add-on created", buf, 0xCu);
    }

    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:v13 selector:sel__accessorySettingValueUpdated_ name:*MEMORY[0x277CCEDB0] object:0];
    [v34 addObserver:v13 selector:sel__alarmManagerAlarmsAdded_ name:*MEMORY[0x277D29590] object:v13->_observedAlarmManager];
    [v34 addObserver:v13 selector:sel__alarmManagerAlarmsRemoved_ name:*MEMORY[0x277D295A8] object:v13->_observedAlarmManager];
    [v34 addObserver:v13 selector:sel__alarmManagerAlarmsUpdated_ name:*MEMORY[0x277D295B0] object:v13->_observedAlarmManager];
    [v34 addObserver:v13 selector:sel__alarmManagerFiringAlarmDismissed_ name:*MEMORY[0x277D295C0] object:v13->_observedAlarmManager];
    v35 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v35 doubleForKey:@"ReapCadence"];
    if (v36 <= 0.0)
    {
      v37 = 6.048e14;
    }

    else
    {
      v37 = v36 * 1000000000.0;
    }

    v38 = dispatch_walltime(0, v37);
    v39 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    reaper = v13->_reaper;
    v13->_reaper = v39;

    dispatch_source_set_timer(v13->_reaper, v38, v37, 0x3B9ACA00uLL);
    v41 = v13->_reaper;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __67__COMeshAlarmAddOn_initWithAlarmManager_homekitAdapter_hubAdapter___block_invoke_54;
    handler[3] = &unk_278E15B10;
    objc_copyWeak(&v45, &location);
    dispatch_source_set_event_handler(v41, handler);
    dispatch_activate(v13->_reaper);
    objc_destroyWeak(&v45);

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v13;
}

void __67__COMeshAlarmAddOn_initWithAlarmManager_homekitAdapter_hubAdapter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained mediaSystemCompanionTransitionedFrom:v8 to:v5];
  }
}

void __67__COMeshAlarmAddOn_initWithAlarmManager_homekitAdapter_hubAdapter___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reaperFired];
    WeakRetained = v2;
  }
}

- (COMeshAlarmAddOn)initWithAlarmManager:(id)a3
{
  v4 = a3;
  v5 = +[COHomeKitAdapter sharedInstance];
  v6 = +[COHomeHubAdapter sharedInstance];
  v7 = [(COMeshAlarmAddOn *)self initWithAlarmManager:v4 homekitAdapter:v5 hubAdapter:v6];

  return v7;
}

- (COMeshAlarmAddOn)init
{
  v3 = objc_alloc_init(MEMORY[0x277D296D8]);
  v4 = [(COMeshAlarmAddOn *)self initWithAlarmManager:v3];

  return v4;
}

- (void)dealloc
{
  v3 = [(COMeshAlarmAddOn *)self homekit];
  v4 = [(COMeshAlarmAddOn *)self mediaSystemUpdateRegistration];
  [v3 unregisterMediaSystemUpdateHandler:v4];

  v5.receiver = self;
  v5.super_class = COMeshAlarmAddOn;
  [(COMeshAlarmAddOn *)&v5 dealloc];
}

- (void)didAddToMeshController:(id)a3
{
  v4 = a3;
  v56.receiver = self;
  v56.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v56 didAddToMeshController:v4];
  objc_initWeak(&location, self);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke;
  v53[3] = &unk_278E16B48;
  objc_copyWeak(&v54, &location);
  v5 = MEMORY[0x245D5FF10](v53);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_4;
  v51[3] = &unk_278E16B98;
  objc_copyWeak(&v52, &location);
  v6 = MEMORY[0x245D5FF10](v51);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_7;
  v49[3] = &unk_278E15FA8;
  objc_copyWeak(&v50, &location);
  v7 = (v5)[2](v5, v49);
  [v4 registerHandler:v7 forRequestClass:objc_opt_class()];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_8;
  v47[3] = &unk_278E15FA8;
  objc_copyWeak(&v48, &location);
  v8 = (v5)[2](v5, v47);
  [v4 registerHandler:v8 forRequestClass:objc_opt_class()];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_9;
  v45[3] = &unk_278E15FA8;
  objc_copyWeak(&v46, &location);
  v9 = (v5)[2](v5, v45);
  [v4 registerHandler:v9 forRequestClass:objc_opt_class()];

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_10;
  v43[3] = &unk_278E15FA8;
  objc_copyWeak(&v44, &location);
  v10 = (v5)[2](v5, v43);
  [v4 registerHandler:v10 forRequestClass:objc_opt_class()];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_11;
  v41[3] = &unk_278E15FA8;
  objc_copyWeak(&v42, &location);
  v11 = (v5)[2](v5, v41);
  [v4 registerHandler:v11 forRequestClass:objc_opt_class()];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_12;
  v39[3] = &unk_278E15FA8;
  objc_copyWeak(&v40, &location);
  v12 = (v5)[2](v5, v39);
  [v4 registerHandler:v12 forRequestClass:objc_opt_class()];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_13;
  v37[3] = &unk_278E15FF8;
  objc_copyWeak(&v38, &location);
  v13 = (v6)[2](v6, v37);
  [v4 registerHandler:v13 forNotificationClass:objc_opt_class()];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_14;
  v35[3] = &unk_278E15FF8;
  objc_copyWeak(&v36, &location);
  v14 = (v6)[2](v6, v35);
  [v4 registerHandler:v14 forNotificationClass:objc_opt_class()];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_15;
  v33[3] = &unk_278E15FF8;
  objc_copyWeak(&v34, &location);
  v15 = (v6)[2](v6, v33);
  [v4 registerHandler:v15 forNotificationClass:objc_opt_class()];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_16;
  v31[3] = &unk_278E15FF8;
  objc_copyWeak(&v32, &location);
  [v4 registerHandler:v31 forNotificationClass:objc_opt_class()];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_17;
  v29[3] = &unk_278E15FF8;
  objc_copyWeak(&v30, &location);
  v16 = (v6)[2](v6, v29);
  [v4 registerHandler:v16 forNotificationClass:objc_opt_class()];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_18;
  v27[3] = &unk_278E15FF8;
  objc_copyWeak(&v28, &location);
  v17 = (v6)[2](v6, v27);
  [v4 registerHandler:v17 forNotificationClass:objc_opt_class()];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_19;
  v25[3] = &unk_278E15FF8;
  objc_copyWeak(&v26, &location);
  v18 = (v6)[2](v6, v25);
  [v4 registerHandler:v18 forNotificationClass:objc_opt_class()];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_20;
  v23 = &unk_278E15FF8;
  objc_copyWeak(&v24, &location);
  v19 = (v6)[2](v6, &v20);
  [v4 registerHandler:v19 forNotificationClass:{objc_opt_class(), v20, v21, v22, v23}];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

id __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_2;
  v11[3] = &unk_278E16B20;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D5FF10](v11);
  v9 = MEMORY[0x245D5FF10](v5, v6, v7, v8);

  objc_destroyWeak(&v13);

  return v9;
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
      v13[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_3;
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

id __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_5;
  v11[3] = &unk_278E16B70;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D5FF10](v11);
  v9 = MEMORY[0x245D5FF10](v5, v6, v7, v8);

  objc_destroyWeak(&v13);

  return v9;
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_5(uint64_t a1, void *a2)
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
      v12 = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_6;
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

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmCreateRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmReadRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmUpdateRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmDeleteRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmSnoozeRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmDismissRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_13(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmsAddedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_14(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmsRemovedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_15(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmFiringAlarmDismissedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_16(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmFiredNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_17(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmsChangedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_18(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmsUpdatedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_19(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmManagerStateResetNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_20(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmSnoozeNotification:v5];
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
  v11[4] = objc_opt_class();
  v6 = 0;
  v11[5] = objc_opt_class();
  do
  {
    [v4 deregisterHandlerForRequestClass:v11[v6++]];
  }

  while (v6 != 6);
  v7 = [(COMeshAlarmAddOn *)self actionDirector];
  [v7 removeHandler:self];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__COMeshAlarmAddOn_willRemoveFromMeshController___block_invoke;
  v10[3] = &unk_278E15AB8;
  v10[4] = self;
  [(COMeshAlarmAddOn *)self _withLock:v10];
  v9.receiver = self;
  v9.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v9 willRemoveFromMeshController:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)willStartMeshController:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAlarmAddOn *)self observedAlarmManager];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__alarmManagerAlarmFired_ name:*MEMORY[0x277D29588] object:v5];
  [v6 addObserver:self selector:sel__alarmManagerStateReset_ name:*MEMORY[0x277D295D8] object:v5];
  [v6 addObserver:self selector:sel__alarmManagerAlarmsChanged_ name:*MEMORY[0x277D29598] object:v5];
  [v6 addObserver:self selector:sel__alarmManagerFiringAlarmChanged_ name:*MEMORY[0x277D295B8] object:v5];
  [(COMeshAlarmAddOn *)self _reloadIndexWithCompletion:0];
  v7.receiver = self;
  v7.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v7 willStartMeshController:v4];
}

- (void)didStopMeshController:(id)a3
{
  v6.receiver = self;
  v6.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v6 didStopMeshController:a3];
  v4 = [(COMeshAlarmAddOn *)self observedAlarmManager];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D295B8] object:v4];
  [v5 removeObserver:self name:*MEMORY[0x277D29598] object:v4];
  [v5 removeObserver:self name:*MEMORY[0x277D295D8] object:v4];
  [v5 removeObserver:self name:*MEMORY[0x277D29588] object:v4];
}

- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v16 meshController:v6 didTransitionToState:a4];
  v7 = [v6 nodes];
  if (a4 == 3)
  {
    v8 = [(COMeshAlarmAddOn *)self ourInterests];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__COMeshAlarmAddOn_meshController_didTransitionToState___block_invoke;
    v14[3] = &unk_278E16BC0;
    v15 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
  }

  v9 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 didChangeCompositionForAlarmAddOn:self];
  }

  if (a4 == 3)
  {
    v10 = [v6 me];
    v11 = [v6 leader];
    if ([v10 isEqual:v11])
    {
      v12 = [(COMeshAlarmAddOn *)self homekit];
      if ([v12 hasOptedToHH2])
      {
        v13 = [MEMORY[0x277CFD0B8] isDistributedTimersEnabled];

        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      [(COMeshAlarmAddOn *)self _startMerge];
    }

    else
    {
    }
  }

  else if (a4 == 2)
  {
    [(COMeshAlarmAddOn *)self _abandonMerge];
  }

LABEL_15:
}

void __56__COMeshAlarmAddOn_meshController_didTransitionToState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = COMeshNodeForIDSIdentifier(v4, a2);
  [v5 setPrimaryAvailable:v6 != 0];
}

- (void)didChangeNodesForMeshController:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v24 didChangeNodesForMeshController:v4];
  v5 = [v4 nodes];
  v6 = [(COMeshAddOn *)self meshController];
  v7 = [v6 state] == 3;

  v8 = [(COMeshAlarmAddOn *)self ourInterests];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __52__COMeshAlarmAddOn_didChangeNodesForMeshController___block_invoke;
  v21 = &unk_278E16BE8;
  v9 = v5;
  v22 = v9;
  v23 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:&v18];

  v10 = [(COMeshAlarmAddOn *)self delegate:v18];
  if (objc_opt_respondsToSelector())
  {
    [v10 didChangeCompositionForAlarmAddOn:self];
  }

  v11 = [(COMeshAlarmAddOn *)self mergingNodes];
  v12 = [MEMORY[0x277CBEB58] setWithArray:v11];
  v13 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [v12 minusSet:v13];
  if ([v12 count])
  {
    v14 = [v11 mutableCopy];
    v15 = [v12 allObjects];
    [v14 removeObjectsInArray:v15];

    [(COMeshAlarmAddOn *)self setMergingNodes:v14];
    if (![v14 count])
    {
      v16 = [(COMeshAlarmAddOn *)self mergeRequest];
      v17 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [COMeshAlarmAddOn didChangeNodesForMeshController:];
      }

      [(COMeshAlarmAddOn *)self _finishMerge:v16];
    }
  }
}

void __52__COMeshAlarmAddOn_didChangeNodesForMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = COMeshNodeForIDSIdentifier(*(a1 + 32), a2);
  v6 = v5;
  if (!v5 || *(a1 + 40) == 1)
  {
    [v7 setPrimaryAvailable:v5 != 0];
  }
}

- (COMeshAlarmAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__COMeshAlarmAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshAlarmAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__COMeshAlarmAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__COMeshAlarmAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(COMeshAlarmAddOn *)self _withLock:v6];
}

void __32__COMeshAlarmAddOn_setDelegate___block_invoke(uint64_t a1)
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
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__COMeshAlarmAddOn_actionDirector__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshAlarmAddOn *)self _withLock:v4];
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
  v18[2] = __40__COMeshAlarmAddOn__sendRequest_client___block_invoke;
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

void __40__COMeshAlarmAddOn__sendRequest_client___block_invoke(id *a1)
{
  v2 = [a1[4] clientLifetimeActivity];
  v3 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v2];

  if (v3)
  {
    [a1[5] setActivity:v3];
    nw_activity_activate();
  }

  v4 = a1[5];
  v5 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__COMeshAlarmAddOn__sendRequest_client___block_invoke_2;
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

void __40__COMeshAlarmAddOn__sendRequest_client___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
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
    v22 = COCoreLogForCategory(2);
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
  v18[3] = __Block_byref_object_copy__24;
  v18[4] = __Block_byref_object_dispose__24;
  v19 = os_transaction_create();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__COMeshAlarmAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke;
  v15[3] = &unk_278E16C38;
  v8 = v7;
  v16 = v8;
  v17 = v18;
  v9 = [v6 addFailureBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__COMeshAlarmAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke_2;
  v12[3] = &unk_278E16C60;
  v10 = v8;
  v13 = v10;
  v14 = v18;
  v11 = [v6 addSuccessBlock:v12];

  _Block_object_dispose(v18, 8);
}

void __83__COMeshAlarmAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __83__COMeshAlarmAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)_sendNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x277D295A0]];

  v8 = [(COMeshAlarmAddOn *)self interests];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__COMeshAlarmAddOn__sendNotification___block_invoke;
  v11[3] = &unk_278E185D8;
  v12 = v7;
  v13 = self;
  v14 = v4;
  v9 = v4;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

void __38__COMeshAlarmAddOn__sendNotification___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __38__COMeshAlarmAddOn__sendNotification___block_invoke_2;
  v19 = &unk_278E17E70;
  v7 = a1[4];
  v20 = a1[5];
  v8 = v6;
  v21 = v8;
  v9 = [v7 indexesOfObjectsPassingTest:&v16];
  if ([v9 count])
  {
    v10 = [COMTAlarmNotificationAction alloc];
    v11 = [a1[6] name];
    v12 = [a1[4] objectsAtIndexes:v9];
    v13 = [(COMTAlarmNotificationAction *)v10 initWithReason:v11 alarms:v12];

    v14 = [a1[5] actionDirector];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v5];
    [v14 requestAction:v13 members:v15 withCompletion:&__block_literal_global_120];
  }
}

- (void)_alarmManagerAlarmsAdded:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D295A0]];

  v7 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COMeshAlarmAddOn__alarmManagerAlarmsAdded___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  dispatch_async(v7, block);

  v10 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 alarmAddOn:self didAddAlarms:v8];
  }
}

uint64_t __45__COMeshAlarmAddOn__alarmManagerAlarmsAdded___block_invoke(uint64_t a1)
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
        v8 = [v7 lastModifiedDate];
        if (!v8)
        {
          v8 = [MEMORY[0x277CBEAA8] distantPast];
        }

        v9 = [*(a1 + 40) alarmIndex];
        v10 = [v7 alarmID];
        [v9 setObject:v8 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _sendNotification:*(a1 + 48)];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_alarmManagerAlarmsRemoved:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D295A0]];

  v7 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshAlarmAddOn__alarmManagerAlarmsRemoved___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  dispatch_async(v7, block);

  v10 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 alarmAddOn:self didRemoveAlarms:v8];
  }
}

uint64_t __47__COMeshAlarmAddOn__alarmManagerAlarmsRemoved___block_invoke(uint64_t a1)
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
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) alarmIndex];
        v9 = [v7 alarmID];
        [v8 removeObjectForKey:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _sendNotification:*(a1 + 48)];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_alarmManagerAlarmsUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D295A0]];

  v7 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshAlarmAddOn__alarmManagerAlarmsUpdated___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  dispatch_async(v7, block);

  v10 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 alarmAddOn:self didUpdateAlarms:v8];
  }
}

uint64_t __47__COMeshAlarmAddOn__alarmManagerAlarmsUpdated___block_invoke(uint64_t a1)
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
        v8 = [v7 lastModifiedDate];
        if (!v8)
        {
          v8 = [MEMORY[0x277CBEAA8] distantPast];
        }

        v9 = [*(a1 + 40) alarmIndex];
        v10 = [v7 alarmID];
        [v9 setObject:v8 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _sendNotification:*(a1 + 48)];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_alarmManagerFiringAlarmDismissed:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x277D295A0]];

  v5 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 alarmAddOn:self didDismissAlarms:v6];
  }
}

- (void)_startMerge
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(COMeshAddOn *)self meshController];
  v4 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v4);
  v5 = [[COAlarmReadRequest alloc] initForMerge];
  [(COMeshAlarmAddOn *)self setMergeRequest:v5];
  v6 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = v3;
    v19 = 2048;
    v20 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p starting merge for %p...", buf, 0x16u);
  }

  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v7 = [(COMeshAlarmAddOn *)self alarmManager];
    v8 = [v7 alarms];
  }

  else
  {
    v8 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__COMeshAlarmAddOn__startMerge__block_invoke;
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

void __31__COMeshAlarmAddOn__startMerge__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__COMeshAlarmAddOn__startMerge__block_invoke_2;
  block[3] = &unk_278E16ED8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __31__COMeshAlarmAddOn__startMerge__block_invoke_2(uint64_t a1)
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
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(COMeshAlarmAddOn *)self mergeRequest];

  if (v10 == v6)
  {
    v11 = eTagForAlarms(v7);
    [v6 setETag:v11];
    v12 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v30 = v8;
      v31 = 2048;
      v32 = v6;
      v33 = 2114;
      v34 = v11;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p broadcasting merge %p with eTag %{public}@", buf, 0x20u);
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(COMeshAlarmAddOn *)self setMergingNodes:v13];

    v14 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(COMeshAlarmAddOn *)self setMergeResponses:v14];

    [(COMeshAlarmAddOn *)self setMergeAlarms:v7];
    objc_initWeak(buf, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46__COMeshAlarmAddOn__broadcastMerge_withTruth___block_invoke;
    v26[3] = &unk_278E16F28;
    objc_copyWeak(&v28, buf);
    v15 = v6;
    v27 = v15;
    v16 = MEMORY[0x245D5FF10](v26);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __46__COMeshAlarmAddOn__broadcastMerge_withTruth___block_invoke_2;
    v23 = &unk_278E16F50;
    objc_copyWeak(&v25, buf);
    v17 = v15;
    v24 = v17;
    v18 = MEMORY[0x245D5FF10](&v20);
    [v8 broadcastRequest:v17 includingSelf:0 recipientsCallback:v16 completionHandler:{v18, v20, v21, v22, v23}];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v30 = v8;
      v31 = 2048;
      v32 = v6;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p ignoring broadcast for merge %p", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __46__COMeshAlarmAddOn__broadcastMerge_withTruth___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _primeMerge:*(a1 + 32) withNodes:v5];
  }
}

void __46__COMeshAlarmAddOn__broadcastMerge_withTruth___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
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
        v14 = COCoreLogForCategory(2);
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
  v9 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(COMeshAlarmAddOn *)self mergeRequest];

  if (v10 == v6)
  {
    [(COMeshAlarmAddOn *)self setMergingNodes:v7];
    v12 = [v7 count];
    v13 = COCoreLogForCategory(2);
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

      [(COMeshAlarmAddOn *)self _finishMerge:v6];
    }
  }

  else
  {
    v11 = COCoreLogForCategory(2);
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
  v12 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(COMeshAlarmAddOn *)self mergeRequest];

  if (v13 == v8)
  {
    v15 = [(COMeshAlarmAddOn *)self mergingNodes];
    v14 = [v15 mutableCopy];

    [v14 removeObject:v10];
    [(COMeshAlarmAddOn *)self setMergingNodes:v14];
    if ([v9 skipInMerge])
    {
      v16 = COCoreLogForCategory(2);
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
      v17 = [(COMeshAlarmAddOn *)self mergeResponses];
      v18 = [v17 mutableCopy];

      [v18 setObject:v9 forKey:v10];
      [(COMeshAlarmAddOn *)self setMergeResponses:v18];
    }

    v19 = [v14 count];
    v20 = COCoreLogForCategory(2);
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
        [COMeshAlarmAddOn _continueMerge:withResponse:fromNode:];
      }

      [(COMeshAlarmAddOn *)self _finishMerge:v8];
    }
  }

  else
  {
    v14 = COCoreLogForCategory(2);
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
  v4 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(COMeshAlarmAddOn *)self mergeRequest];
  v6 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    v11 = v3;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p abandoning merge %p", &v10, 0x16u);
  }

  [(COMeshAlarmAddOn *)self setMergeRequest:0];
  v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(COMeshAlarmAddOn *)self setMergeResponses:v7];

  v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(COMeshAlarmAddOn *)self setMergingNodes:v8];

  [(COMeshAlarmAddOn *)self _processQueuedCommands];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_commandsForReconciling:(id)a3 toTruth:(id)a4 forNode:(id)a5
{
  v47 = self;
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEA60] array];
  v55 = v8;
  v11 = [v8 mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v12 = v7;
  v13 = [(COAlarmsRemovedNotification *)v12 countByEnumeratingWithState:&v56 objects:v67 count:16];
  v54 = v11;
  if (!v13)
  {
    v15 = 0;
    v52 = 0;
    v30 = v12;
LABEL_30:

    goto LABEL_31;
  }

  v14 = v13;
  v49 = v10;
  v50 = v9;
  v15 = 0;
  v52 = 0;
  obj = v12;
  v16 = *v57;
  v51 = *v57;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v57 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v56 + 1) + 8 * i);
      v19 = [v18 alarmID];
      v20 = [v55 objectForKey:v19];
      v21 = v20;
      if (v20)
      {
        v22 = MEMORY[0x277D296D0];
        v66[0] = v20;
        v66[1] = v18;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
        v24 = [v22 mostRecentlyUpdatedAlarmForAlarms:v23];

        if (v18 == v24)
        {
          v11 = v54;
        }

        else
        {
          v11 = v54;
          if (([v18 isEqualIgnoringLastModifiedDate:v24] & 1) == 0)
          {
            if (v52)
            {
              v25 = [v52 arrayByAddingObject:v24];

              v52 = v25;
              v11 = v54;
            }

            else
            {
              v52 = [MEMORY[0x277CBEA60] arrayWithObject:v24];
            }

            v16 = v51;
          }
        }
      }

      else if (v15)
      {
        v26 = [v15 arrayByAddingObject:v18];

        v15 = v26;
      }

      else
      {
        v15 = [MEMORY[0x277CBEA60] arrayWithObject:v18];
      }

      v27 = [v18 alarmID];
      [v11 removeObjectForKey:v27];
    }

    v12 = obj;
    v14 = [(COAlarmsRemovedNotification *)obj countByEnumeratingWithState:&v56 objects:v67 count:16];
  }

  while (v14);

  if (!v52)
  {
    v10 = v49;
    v9 = v50;
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v28 = [(COAlarmNotification *)[COAlarmsUpdatedNotification alloc] initWithAlarms:v52];
  v29 = COCoreLogForCategory(2);
  v9 = v50;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v43 = [(COMeshAddOn *)v47 meshController];
    v44 = [(COAlarmNotification *)v28 alarms];
    *buf = 134218498;
    v61 = v43;
    v62 = 2112;
    v63 = v50;
    v64 = 2112;
    v65 = v44;
    _os_log_debug_impl(&dword_244378000, v29, OS_LOG_TYPE_DEBUG, "%p %@ updating %@", buf, 0x20u);

    v11 = v54;
  }

  v10 = [v49 arrayByAddingObject:v28];

  v12 = obj;
  if (v15)
  {
LABEL_27:
    v30 = [(COAlarmNotification *)[COAlarmsRemovedNotification alloc] initWithAlarms:v15];
    v31 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v45 = [(COMeshAddOn *)v47 meshController];
      v46 = [(COAlarmNotification *)v30 alarms];
      *buf = 134218498;
      v61 = v45;
      v62 = 2112;
      v63 = v9;
      v64 = 2112;
      v65 = v46;
      _os_log_debug_impl(&dword_244378000, v31, OS_LOG_TYPE_DEBUG, "%p %@ removing %@", buf, 0x20u);

      v11 = v54;
    }

    v32 = [v10 arrayByAddingObject:v30];

    v10 = v32;
    goto LABEL_30;
  }

LABEL_31:
  if ([v11 count])
  {
    v33 = [COAlarmsAddedNotification alloc];
    v34 = [v11 allValues];
    v35 = [(COAlarmNotification *)v33 initWithAlarms:v34];

    v36 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v41 = [v48 meshController];
      v42 = [(COAlarmNotification *)v35 alarms];
      *buf = 134218498;
      v61 = v41;
      v62 = 2112;
      v63 = v9;
      v64 = 2112;
      v65 = v42;
      _os_log_debug_impl(&dword_244378000, v36, OS_LOG_TYPE_DEBUG, "%p %@ requires %@", buf, 0x20u);

      v11 = v54;
    }

    v37 = [v10 arrayByAddingObject:v35];

    v10 = v37;
  }

  v38 = v10;

  v39 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_finishMerge:(id)a3
{
  v150 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v81 = [(COMeshAddOn *)self meshController];
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COMeshAlarmAddOn *)self mergeRequest];

  if (v6 != v4)
  {
    v7 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v147 = v81;
      v148 = 2048;
      v149 = v4;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p ignoring conclusion of merge %p", buf, 0x16u);
    }

    goto LABEL_87;
  }

  v80 = v4;
  v8 = [(COMeshAlarmAddOn *)self mergeAlarms];
  v95 = self;
  v9 = [(COMeshAlarmAddOn *)self mergeResponses];
  v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v133 objects:v145 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v134;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v134 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v133 + 1) + 8 * i);
        v16 = [v15 alarmID];
        [v96 setObject:v15 forKey:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v133 objects:v145 count:16];
    }

    while (v12);
  }

  v98 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v17 = [(COMeshAlarmAddOn *)self deletes];
  v18 = [v17 countByEnumeratingWithState:&v129 objects:v144 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v130;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v130 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v129 + 1) + 8 * j);
        v23 = [v22 identifier];
        [v98 setObject:v22 forKey:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v129 objects:v144 count:16];
    }

    while (v19);
  }

  v82 = v10;

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v9;
  v24 = 0x277CBE000uLL;
  v87 = [obj countByEnumeratingWithState:&v125 objects:v143 count:16];
  if (v87)
  {
    v85 = *v126;
    do
    {
      v25 = 0;
      do
      {
        if (*v126 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v91 = v25;
        v26 = [obj objectForKey:*(*(&v125 + 1) + 8 * v25)];
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v93 = v26;
        v27 = [v26 alarms];
        v28 = [v27 countByEnumeratingWithState:&v121 objects:v142 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v122;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v122 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v121 + 1) + 8 * k);
              v33 = [v32 alarmID];
              v34 = [v96 objectForKey:v33];
              v35 = v34;
              if (!v34)
              {
                goto LABEL_30;
              }

              v36 = MEMORY[0x277D296D0];
              v141[0] = v34;
              v141[1] = v32;
              v37 = [*(v24 + 2656) arrayWithObjects:v141 count:2];
              v38 = [v36 mostRecentlyUpdatedAlarmForAlarms:v37];

              if (v32 == v38)
              {
LABEL_30:
                [v96 setObject:v32 forKey:v33];
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v121 objects:v142 count:16];
          }

          while (v29);
        }

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v39 = [v93 deletes];
        v40 = [v39 countByEnumeratingWithState:&v117 objects:v140 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v118;
          do
          {
            for (m = 0; m != v41; ++m)
            {
              if (*v118 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v117 + 1) + 8 * m);
              v45 = [v44 identifier];
              v46 = [v98 objectForKey:v45];
              if (!v46 || ([v44 date], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "date"), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v47, "compare:", v48), v48, v47, v49 == -1))
              {
                [v98 setObject:v44 forKey:v45];
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v117 objects:v140 count:16];
          }

          while (v41);
        }

        v25 = v91 + 1;
        v24 = 0x277CBE000;
      }

      while ((v91 + 1) != v87);
      v87 = [obj countByEnumeratingWithState:&v125 objects:v143 count:16];
    }

    while (v87);
  }

  v50 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _finishMerge:];
  }

  v115[0] = MEMORY[0x277D85DD0];
  v115[1] = 3221225472;
  v115[2] = __33__COMeshAlarmAddOn__finishMerge___block_invoke;
  v115[3] = &unk_278E18600;
  v51 = v96;
  v116 = v51;
  [v98 enumerateKeysAndObjectsUsingBlock:v115];
  v52 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _finishMerge:];
  }

  v97 = [MEMORY[0x277CBEB18] array];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v84 = v51;
  v53 = [(COMeshAlarmAddOn *)v95 _commandsForReconciling:v82 toTruth:v51 forNode:0];
  v54 = [v53 countByEnumeratingWithState:&v111 objects:v139 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v112;
    do
    {
      for (n = 0; n != v55; ++n)
      {
        if (*v112 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v111 + 1) + 8 * n);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v59 = v110;
          v110[0] = MEMORY[0x277D85DD0];
          v110[1] = 3221225472;
          v60 = __33__COMeshAlarmAddOn__finishMerge___block_invoke_137;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v59 = v109;
            v109[0] = MEMORY[0x277D85DD0];
            v109[1] = 3221225472;
            v60 = __33__COMeshAlarmAddOn__finishMerge___block_invoke_2;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v59 = v108;
            v108[0] = MEMORY[0x277D85DD0];
            v108[1] = 3221225472;
            v60 = __33__COMeshAlarmAddOn__finishMerge___block_invoke_3;
          }
        }

        v59[2] = v60;
        v59[3] = &unk_278E156B0;
        v59[4] = v95;
        v59[5] = v58;
        v61 = MEMORY[0x245D5FF10]();
        [v97 addObject:v61];
      }

      v55 = [v53 countByEnumeratingWithState:&v111 objects:v139 count:16];
    }

    while (v55);
  }

  v106 = 0u;
  v107 = 0u;
  v105 = 0u;
  v104 = 0u;
  v88 = obj;
  v62 = 0x277CBE000;
  v86 = [v88 countByEnumeratingWithState:&v104 objects:v138 count:16];
  if (v86)
  {
    v83 = *v105;
    do
    {
      v63 = 0;
      do
      {
        if (*v105 != v83)
        {
          objc_enumerationMutation(v88);
        }

        v64 = *(*(&v104 + 1) + 8 * v63);
        v65 = [v88 objectForKey:v64];
        v92 = v65;
        v94 = v63;
        if ([v65 notModified])
        {
          v66 = v82;
          v67 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v147 = v81;
            v148 = 2112;
            v149 = v64;
            _os_log_debug_impl(&dword_244378000, v67, OS_LOG_TYPE_DEBUG, "%p response is not-modified for %@", buf, 0x16u);
          }
        }

        else
        {
          v66 = [v65 alarms];
        }

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        obja = v66;
        v68 = [(COMeshAlarmAddOn *)v95 _commandsForReconciling:v66 toTruth:v84 forNode:v64];
        v69 = [v68 countByEnumeratingWithState:&v100 objects:v137 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v101;
          do
          {
            for (ii = 0; ii != v70; ++ii)
            {
              if (*v101 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v100 + 1) + 8 * ii);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v99[0] = MEMORY[0x277D85DD0];
                v99[1] = 3221225472;
                v99[2] = __33__COMeshAlarmAddOn__finishMerge___block_invoke_139;
                v99[3] = &unk_278E15728;
                v99[4] = v95;
                v99[5] = v73;
                v99[6] = v64;
                v74 = MEMORY[0x245D5FF10](v99);
                [v97 addObject:v74];
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v100 objects:v137 count:16];
          }

          while (v70);
        }

        v63 = v94 + 1;
        v62 = 0x277CBE000uLL;
      }

      while (v94 + 1 != v86);
      v86 = [v88 countByEnumeratingWithState:&v104 objects:v138 count:16];
    }

    while (v86);
  }

  [(COMeshAlarmAddOn *)v95 setMergeRequest:0];
  [(COMeshAlarmAddOn *)v95 setMergeAlarms:0];
  v75 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(COMeshAlarmAddOn *)v95 setMergeResponses:v75];

  v76 = objc_alloc_init(*(v62 + 2656));
  [(COMeshAlarmAddOn *)v95 setMergingNodes:v76];

  v77 = [(COMeshAlarmAddOn *)v95 queuedCommands];
  [v97 addObjectsFromArray:v77];

  [(COMeshAlarmAddOn *)v95 setQueuedCommands:v97];
  v78 = COCoreLogForCategory(2);
  v4 = v80;
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v147 = v81;
    v148 = 2048;
    v149 = v80;
    _os_log_impl(&dword_244378000, v78, OS_LOG_TYPE_DEFAULT, "%p concluded merge %p", buf, 0x16u);
  }

  [(COMeshAlarmAddOn *)v95 _processQueuedCommands];
  v7 = v82;
LABEL_87:

  v79 = *MEMORY[0x277D85DE8];
}

void __33__COMeshAlarmAddOn__finishMerge___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 32) removeObjectForKey:v4];
  }
}

void __33__COMeshAlarmAddOn__finishMerge___block_invoke_139(uint64_t a1)
{
  v2 = [*(a1 + 32) meshController];
  [v2 sendCommand:*(a1 + 40) toPeer:*(a1 + 48)];
}

- (void)_reloadIndexWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAlarmAddOn *)self observedAlarmManager];
  v6 = [v5 alarms];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke;
  v14[3] = &unk_278E15C10;
  objc_copyWeak(&v16, &location);
  v7 = v4;
  v15 = v7;
  v8 = [v6 addFailureBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_2;
  v11[3] = &unk_278E16FA0;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  v10 = [v6 addSuccessBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_cold_1();
    }

    v6 = [WeakRetained meshControllerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_140;
    v7[3] = &unk_278E16240;
    v7[4] = WeakRetained;
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

uint64_t __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_140(uint64_t a1)
{
  [*(a1 + 32) setAlarmIndex:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_2(uint64_t a1, void *a2)
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
          v13 = [v12 alarmID];
          v14 = [v12 lastModifiedDate];
          if (!v14)
          {
            v14 = [MEMORY[0x277CBEAA8] distantPast];
          }

          [v6 setObject:v14 forKey:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v15 = [WeakRetained meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_3;
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

uint64_t __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) alarmIndex];
  v3 = [v2 isEqualToDictionary:*(a1 + 40)];

  [*(a1 + 32) setAlarmIndex:*(a1 + 40)];
  v4 = COCoreLogForCategory(2);
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
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p alarm index reloaded; updated: %s", &v9, 0x16u);
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
  v3 = [(COMeshAlarmAddOn *)self queuedCommands];
  [(COMeshAlarmAddOn *)self setQueuedCommands:MEMORY[0x277CBEBF8]];
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

- (void)_addAlarmDeleteEvent:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAlarmAddOn *)self deletes];
  v6 = [v5 arrayByAddingObject:v4];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [v7 dateByAddingUnit:16 value:-7 toDate:v8 options:1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__COMeshAlarmAddOn__addAlarmDeleteEvent___block_invoke;
  v14[3] = &unk_278E18628;
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
  [(COMeshAlarmAddOn *)self setDeletes:v13];
}

BOOL __41__COMeshAlarmAddOn__addAlarmDeleteEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 date];
  v4 = [v3 compare:*(a1 + 32)] == -1;

  return v4;
}

- (void)_alarmManagerAlarmFired:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D295A0]];

  v6 = [(COMeshAlarmAddOn *)self homekit];
  v7 = [v6 currentAccessory];
  if (([v6 hasOptedToHH2] & 1) != 0 || !v7)
  {
    goto LABEL_45;
  }

  v8 = [v6 homeForAccessory:v7];
  v58 = v6;
  v59 = v5;
  v64 = v7;
  if (!v8)
  {
    v9 = 0;
    goto LABEL_18;
  }

  v9 = [v6 mediaSystemForAccessory:v7 inHome:v8];
  if (!v9 || ([v6 accessoriesInMediaSystem:v9 inHome:v8], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_18:
    v11 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn _alarmManagerAlarmFired:];
    }

    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v10 firstObject];
  v61 = v8;
  v60 = v9;
  if ([v12 isEqual:v7])
  {
    v13 = [v11 objectAtIndex:1];

    v12 = v13;
  }

  v57 = v12;
  v14 = [v12 device];
  v15 = [v14 idsIdentifier];
  v16 = [v15 UUIDString];

  [(COMeshAddOn *)self meshController];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v62 = v79 = 0u;
  v17 = [v62 nodes];
  v18 = [v17 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (!v18)
  {
LABEL_56:

    v5 = v59;
    v9 = v60;
    v7 = v64;
    v8 = v61;
LABEL_20:

    v25 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn _alarmManagerAlarmFired:];
    }

    v26 = [MEMORY[0x277CBEB18] array];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v27 = v5;
    v28 = [v27 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v73;
      v63 = v27;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v73 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v72 + 1) + 8 * i);
          if (([v32 isEnabled] & 1) == 0 && -[COMeshAlarmAddOn _isAlarm:targetingAccessory:](self, "_isAlarm:targetingAccessory:", v32, v7))
          {
            v33 = v26;
            v34 = COCoreLogForCategory(2);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v41 = [v32 alarmID];
              *buf = 134218242;
              v81 = self;
              v82 = 2112;
              v83 = v41;
              _os_log_debug_impl(&dword_244378000, v34, OS_LOG_TYPE_DEBUG, "%p %@ is not enabled, so will update.", buf, 0x16u);
            }

            v35 = [v32 mutableCopy];
            [v35 setFiredDate:0];
            [v35 setSnoozeFireDate:0];
            [v35 setEnabled:0];
            v36 = objc_alloc_init(MEMORY[0x277D2C900]);
            v37 = [(COAlarmRequest *)[COAlarmUpdateRequest alloc] initWithAlarm:v35];
            v38 = [(COMeshAddOn *)self meshControllerQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke;
            block[3] = &unk_278E18678;
            block[4] = self;
            v68 = v37;
            v70 = v32;
            v71 = self;
            v69 = v36;
            v39 = v36;
            v40 = v37;
            dispatch_async(v38, block);

            v26 = v33;
            [v33 addObject:v39];

            v27 = v63;
            v7 = v64;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v29);
    }

    if ([v26 count])
    {
      v42 = MEMORY[0x277D2C938];
      v43 = [(COMeshAddOn *)self meshControllerQueue];
      v44 = [v42 schedulerWithDispatchQueue:v43];

      v45 = [MEMORY[0x277D2C900] combineAllFutures:v26 ignoringErrors:1 scheduler:v44];

      v6 = v58;
      v5 = v59;
    }

    else
    {
      v46 = COCoreLogForCategory(2);
      v6 = v58;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [COMeshAlarmAddOn _alarmManagerAlarmFired:];
      }

      v45 = [MEMORY[0x277D2C900] futureWithNoResult];
      v5 = v59;
    }

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_152;
    v65[3] = &unk_278E186A0;
    v65[4] = self;
    v66 = v27;
    v47 = [v45 addCompletionBlock:v65];

LABEL_53:
    goto LABEL_54;
  }

  v19 = v18;
  v20 = *v77;
LABEL_10:
  v21 = 0;
  while (1)
  {
    if (*v77 != v20)
    {
      objc_enumerationMutation(v17);
    }

    v22 = *(*(&v76 + 1) + 8 * v21);
    v23 = [v22 IDSIdentifier];
    v24 = [v16 isEqual:v23];

    if (v24)
    {
      break;
    }

    if (v19 == ++v21)
    {
      v19 = [v17 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v19)
      {
        goto LABEL_10;
      }

      goto LABEL_56;
    }
  }

  v48 = [v62 me];
  v49 = [v22 remote];
  if ([v49 compare:v48] != -1)
  {
    v50 = [v49 software];
    v51 = [v50 hasPrefix:@"14."];

    if (!v51)
    {

      goto LABEL_56;
    }
  }

  v52 = COCoreLogForCategory(2);
  v6 = v58;
  v5 = v59;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _alarmManagerAlarmFired:];
  }

  v7 = v64;
LABEL_45:
  v53 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v81 = self;
    _os_log_impl(&dword_244378000, v53, OS_LOG_TYPE_DEFAULT, "%p posting fired notification.", buf, 0xCu);
  }

  v26 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v26 alarmAddOn:self didFireAlarms:v5];
  }

  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v45 = [(COMeshAddOn *)self meshController];
    v54 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _timerManagerTimerFired:];
    }

    v55 = [(COAlarmNotification *)[COAlarmFiredNotification alloc] initWithAlarms:v5];
    [v45 sendNotification:v55];

    goto LABEL_53;
  }

LABEL_54:

  v56 = *MEMORY[0x277D85DE8];
}

void __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_2;
  v4[3] = &unk_278E18650;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmUpdateRequest:v3 callback:v4];
}

void __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_152(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 134217984;
    v10 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p done synchronizing, so posting notification.", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alarmAddOn:*(a1 + 32) didFireAlarms:*(a1 + 40)];
  }

  if ([*(a1 + 32) performsLocalActions])
  {
    v5 = [*(a1 + 32) meshController];
    v6 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _timerManagerTimerFired:];
    }

    v7 = [(COAlarmNotification *)[COAlarmFiredNotification alloc] initWithAlarms:*(a1 + 40)];
    [v5 sendNotification:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_alarmManagerStateReset:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__COMeshAlarmAddOn__alarmManagerStateReset___block_invoke;
  v5[3] = &unk_278E16A10;
  objc_copyWeak(&v6, &location);
  [(COMeshAlarmAddOn *)self _reloadIndexWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__COMeshAlarmAddOn__alarmManagerStateReset___block_invoke(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained meshController];
    if (a2)
    {
      v6 = objc_alloc_init(COAlarmManagerStateResetNotification);
      v7 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke_cold_1();
      }

      [v5 sendNotification:v6];
      v8 = [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 didResetAlarmAddOn:v4];
      }
    }

    else
    {
      v6 = COCoreLogForCategory(2);
      if (os_log_type_enabled(&v6->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v5;
        _os_log_impl(&dword_244378000, &v6->super.super.super, OS_LOG_TYPE_DEFAULT, "%p not emitting state reset, alarms not updated", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_alarmManagerAlarmsChanged:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x277D295A0]];

  v5 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 alarmAddOn:self didChangeAlarms:v6];
  }
}

- (void)_alarmManagerFiringAlarmChanged:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x277D295A0]];

  v5 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 alarmAddOn:self didChangeFiringAlarms:v6];
  }
}

- (void)_accessorySettingValueUpdated:(id)a3
{
  v9 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v9 keyPath];
    v5 = [v4 isEqualToString:@"root.mobileTimer.alarms"];

    if (v5)
    {
      v6 = [(COMeshAlarmAddOn *)self homekit];
      v7 = [v6 currentAccessory];
      if (v7)
      {
        v8 = [v6 homeForAccessory:v7];
        if (v8 && [v6 isAlarmsCollectionSetting:v9 forAccessory:v7 inHome:v8])
        {
          [(COMeshAlarmAddOn *)self _replicateToMobileTimerFromHomeKit];
        }
      }

      else
      {
        v8 = [(COMeshAlarmAddOn *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v8 didResetAlarmAddOn:self];
        }
      }
    }
  }
}

- (id)_currentAccessoryForConnection:(id)a3
{
  v4 = [a3 co_PeerInstance];
  if (v4)
  {
    v5 = [(COMeshAlarmAddOn *)self homehub];
    v6 = [(COMeshAlarmAddOn *)self homekit];
    v7 = [v5 accessoryForPeerInstance:v4 usingHomeKitAdapter:v6];
  }

  else
  {
    v5 = [(COMeshAlarmAddOn *)self homekit];
    v7 = [v5 currentAccessory];
  }

  return v7;
}

- (void)_replicateToMobileTimerFromHomeKit
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v3 = [(COMeshAlarmAddOn *)self homekit];
    v4 = [v3 hasOptedToHH2];

    if ((v4 & 1) == 0)
    {
      v5 = [(COMeshAddOn *)self meshController];
      v6 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = v5;
        _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p starting replication of alarms...", buf, 0xCu);
      }

      v7 = [(COMeshAlarmAddOn *)self homekit];
      v8 = [v7 currentAccessory];
      if (v8)
      {
        v9 = [v7 homeForAccessory:v8];
        if (v9)
        {
          v10 = [v7 alarmsForAccessory:v8 inHome:v9];
          if (v10)
          {
            v11 = [(COMeshAlarmAddOn *)self alarmManager];
            v12 = [v11 alarms];
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __54__COMeshAlarmAddOn__replicateToMobileTimerFromHomeKit__block_invoke;
            v16[3] = &unk_278E186C8;
            v16[4] = self;
            v17 = v8;
            v18 = v10;
            v19 = v5;
            v20 = v11;
            v21 = v7;
            v22 = v9;
            v13 = v11;
            v14 = [v12 addSuccessBlock:v16];
          }
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn__replicateToMobileTimerFromHomeKit__block_invoke(uint64_t a1, void *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v81 objects:v94 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v82;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v82 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v81 + 1) + 8 * i);
        if ([*(a1 + 32) _isAlarm:v11 targetingAccessory:*(a1 + 40)])
        {
          [v4 addObject:v11];
          v12 = [v11 alarmID];
          [v5 setObject:v11 forKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v81 objects:v94 count:16];
    }

    while (v8);
  }

  v63 = v4;

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v14 = *(a1 + 48);
  v15 = [v14 countByEnumeratingWithState:&v77 objects:v93 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v78;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v78 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v77 + 1) + 8 * j);
        v20 = [v19 alarmID];
        [v13 setObject:v19 forKey:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v77 objects:v93 count:16];
    }

    while (v16);
  }

  v62 = v6;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v21 = v13;
  v22 = [v21 countByEnumeratingWithState:&v73 objects:v92 count:16];
  if (v22)
  {
    v23 = v22;
    v68 = *v74;
    do
    {
      v24 = 0;
      do
      {
        if (*v74 != v68)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v73 + 1) + 8 * v24);
        v26 = [v21 objectForKey:{v25, v62, v63}];
        v27 = [v5 objectForKey:v25];
        if (v27)
        {
          v28 = [v26 COPreferredAlarm:v27];
          v29 = v28;
          if (v27 == v28)
          {
          }

          else
          {
            v30 = [v26 isEqualIgnoringLastModifiedDate:v27];

            if ((v30 & 1) == 0)
            {
              if ([v27 co_isMediaSystemOriginating] && !objc_msgSend(v26, "co_isMediaSystemOriginating"))
              {
                v39 = [v26 co_HomeKitAlarmCopy];
                v40 = COCoreLogForCategory(2);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v64 = *(a1 + 56);
                  v65 = [v39 alarmID];
                  v66 = v39;
                  v41 = [v26 alarmID];
                  *buf = 134218498;
                  v87 = v64;
                  v88 = 2112;
                  v89 = v65;
                  v90 = 2112;
                  v91 = v41;
                  v42 = v41;
                  _os_log_impl(&dword_244378000, v40, OS_LOG_TYPE_DEFAULT, "%p swapping %@ for %@", buf, 0x20u);

                  v39 = v66;
                }

                v43 = [*(a1 + 72) removeAlarm:v26 fromAccessory:*(a1 + 40) inHome:*(a1 + 80)];
                v44 = [*(a1 + 72) addAlarm:v39 toAccessory:*(a1 + 40) inHome:*(a1 + 80)];
              }

              else
              {
                v31 = COCoreLogForCategory(2);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  v67 = *(a1 + 56);
                  v47 = [v26 alarmID];
                  *buf = 134218242;
                  v87 = v67;
                  v88 = 2112;
                  v89 = v47;
                  _os_log_debug_impl(&dword_244378000, v31, OS_LOG_TYPE_DEBUG, "%p updating alarm %@", buf, 0x16u);
                }

                v32 = [*(a1 + 64) updateAlarm:v26];
              }

LABEL_41:
              [v5 removeObjectForKey:v25];
              goto LABEL_42;
            }
          }

          if (([v27 isFiring] & 1) != 0 || objc_msgSend(v27, "isSnoozed"))
          {
            v35 = [v27 co_alarmUpdatedWithHomeKitAlarm:v26];
            if (v35)
            {
              v36 = COCoreLogForCategory(2);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = *(a1 + 56);
                *buf = 134218242;
                v87 = v37;
                v88 = 2112;
                v89 = v35;
                _os_log_impl(&dword_244378000, v36, OS_LOG_TYPE_DEFAULT, "%p targeted updating alarm %@", buf, 0x16u);
              }

              v38 = [*(a1 + 64) updateAlarm:v35];
            }
          }

          goto LABEL_41;
        }

        v33 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a1 + 56);
          v46 = [v26 alarmID];
          *buf = 134218242;
          v87 = v45;
          v88 = 2112;
          v89 = v46;
          _os_log_debug_impl(&dword_244378000, v33, OS_LOG_TYPE_DEBUG, "%p adding alarm %@", buf, 0x16u);
        }

        v34 = [*(a1 + 64) addAlarm:v26];
LABEL_42:

        ++v24;
      }

      while (v23 != v24);
      v48 = [v21 countByEnumeratingWithState:&v73 objects:v92 count:16];
      v23 = v48;
    }

    while (v48);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v49 = v5;
  v50 = [v49 countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v70;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v70 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [v49 objectForKey:{*(*(&v69 + 1) + 8 * k), v62}];
        if ([*(a1 + 32) _isAlarm:v54 targetingAccessory:*(a1 + 40)])
        {
          v55 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            v57 = *(a1 + 56);
            v58 = [v54 alarmID];
            *buf = 134218242;
            v87 = v57;
            v88 = 2112;
            v89 = v58;
            _os_log_debug_impl(&dword_244378000, v55, OS_LOG_TYPE_DEBUG, "%p removing alarm %@", buf, 0x16u);
          }

          v56 = [*(a1 + 64) removeAlarm:v54];
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v69 objects:v85 count:16];
    }

    while (v51);
  }

  v59 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = *(a1 + 56);
    *buf = 134217984;
    v87 = v60;
    _os_log_impl(&dword_244378000, v59, OS_LOG_TYPE_DEFAULT, "... %p finished replication of alarms.", buf, 0xCu);
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (id)_filteredAlarmsList:(id)a3 forAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _filteredAlarmsList:forAccessory:];
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __53__COMeshAlarmAddOn__filteredAlarmsList_forAccessory___block_invoke;
  v17 = &unk_278E17E70;
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

uint64_t __53__COMeshAlarmAddOn__filteredAlarmsList_forAccessory___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isAlarm:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFCEC8]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

- (id)_alarmsForAccessory:(id)a3 allowLocalStorage:(BOOL)a4 usingLeader:(BOOL)a5 member:(id)a6 client:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(COMeshAddOn *)self meshController];
  v16 = objc_alloc_init(MEMORY[0x277D2C900]);
  v17 = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke;
  block[3] = &unk_278E18790;
  v27 = v13;
  v28 = v15;
  v29 = v12;
  v30 = v14;
  v31 = self;
  v18 = v16;
  v32 = v18;
  v33 = a4;
  v34 = a5;
  v19 = v14;
  v20 = v12;
  v21 = v15;
  v22 = v13;
  dispatch_async(v17, block);

  v23 = v32;
  v24 = v18;

  return v18;
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      *buf = 134218242;
      v70 = v3;
      v71 = 2114;
      v72 = v4;
      _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster alarms for %{public}@", buf, 0x16u);
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [COMTReadAction actionWithTargetType:v6 targetMemento:*(a1 + 48)];

    v8 = [*(a1 + 56) clientLifetimeActivity];
    v9 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v8];

    if (v9)
    {
      nw_activity_activate();
    }

    v10 = [*(a1 + 64) meshControllerQueue];
    objc_initWeak(buf, *(a1 + 64));
    v11 = [*(a1 + 64) actionDirector];
    v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_167;
    v62[3] = &unk_278E18718;
    v13 = v10;
    v63 = v13;
    objc_copyWeak(&v68, buf);
    v14 = v9;
    v64 = v14;
    v15 = v7;
    v65 = v15;
    v66 = *(a1 + 56);
    v67 = *(a1 + 72);
    [v11 requestAction:v15 members:v12 activity:v14 withCompletion:v62];

    v16 = [*(a1 + 64) recorder];
    (v16)[2](v16, 0x2857B5848, &__block_literal_global_170);

    objc_destroyWeak(&v68);
    objc_destroyWeak(buf);
  }

  else if (*(a1 + 80) == 1 && [*(a1 + 64) performsLocalActions] && (objc_msgSend(*(a1 + 40), "leader"), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v35 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 40);
      v37 = *(a1 + 48);
      *buf = 134218242;
      v70 = v36;
      v71 = 2112;
      v72 = v37;
      _os_log_impl(&dword_244378000, v35, OS_LOG_TYPE_DEFAULT, "%p using local list of alarms for %@", buf, 0x16u);
    }

    v38 = [*(a1 + 64) alarmManager];
    v39 = [v38 alarms];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171;
    v57[3] = &unk_278E16CB0;
    v40 = *(a1 + 48);
    v41 = *(a1 + 64);
    v58 = v40;
    v59 = v41;
    v60 = *(a1 + 40);
    v61 = *(a1 + 72);
    v42 = [v39 addCompletionBlock:v57];

    v43 = [*(a1 + 64) recorder];
    (v43)[2](v43, 0x2857B5848, &__block_literal_global_175);

    v15 = v58;
  }

  else
  {
    v18 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      *buf = 134218242;
      v70 = v19;
      v71 = 2112;
      v72 = v20;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p requesting list of alarms for %@ from the leader", buf, 0x16u);
    }

    v21 = [COAlarmReadRequest alloc];
    v22 = [*(a1 + 48) uniqueIdentifier];
    v23 = [(COAlarmReadRequest *)v21 initWithAccessoryUniqueIdentifier:v22 requiresFilter:1];

    if (*(a1 + 81) == 1)
    {
      v24 = [*(a1 + 56) clientLifetimeActivity];
      v25 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v24];

      if (v25)
      {
        [(COMeshRequest *)v23 setActivity:v25];
        nw_activity_activate();
      }
    }

    else
    {
      v25 = 0;
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176;
    v49[3] = &unk_278E18740;
    v26 = v25;
    v50 = v26;
    v51 = *(a1 + 56);
    v52 = *(a1 + 48);
    v15 = v23;
    v53 = v15;
    v27 = *(a1 + 40);
    v28 = *(a1 + 64);
    v29 = *(a1 + 72);
    v54 = v27;
    v55 = v28;
    v56 = v29;
    v30 = MEMORY[0x245D5FF10](v49);
    v31 = v30;
    if (*(a1 + 81))
    {
      [*(a1 + 40) sendRequest:v15 withCompletionHandler:v30];
    }

    else
    {
      v32 = *(a1 + 64);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_180;
      v46[3] = &unk_278E18768;
      v48 = v30;
      v47 = v15;
      [v32 handleAlarmReadRequest:v47 callback:v46];
    }

    v33 = [*(a1 + 64) recorder];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_2_181;
    v44[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
    v45 = *(a1 + 81);
    (v33)[2](v33, 0x2857B5848, v44);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_2;
  block[3] = &unk_278E186F0;
  objc_copyWeak(&v17, (a1 + 72));
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = v6;
  v15 = v5;
  v16 = *(a1 + 64);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v17);
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v19 = WeakRetained;
    if (*(a1 + 32))
    {
      v4 = xpc_dictionary_create(0, 0, 0);
      if (v4)
      {
        v5 = *(a1 + 40);
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        xpc_dictionary_set_string(v4, "command", [v7 UTF8String]);

        v8 = [*(a1 + 48) clientBundleIdentifier];
        v9 = v8;
        if (!v8)
        {
          v1 = [MEMORY[0x277CCA8D8] mainBundle];
          v9 = [v1 bundleIdentifier];
        }

        xpc_dictionary_set_string(v4, "client", [v9 UTF8String]);
        if (!v8)
        {
        }

        v10 = *(a1 + 32);
        nw_activity_submit_metrics();
      }
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    if (v11)
    {
      if (v12)
      {
        nw_activity_complete_with_reason();
        v11 = *(a1 + 56);
      }

      [*(a1 + 72) finishWithError:v11];
    }

    else
    {
      if (v12)
      {
        nw_activity_complete_with_reason();
      }

      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v15 = v13;
      v16 = [v15 alarms];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = MEMORY[0x277CBEBF8];
      }

      [v14 finishWithResult:v18];
    }

    WeakRetained = v19;
  }
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171_cold_1(a1);
    }

    [*(a1 + 56) finishWithError:v7];
    goto LABEL_14;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_8;
  }

  v9 = [*(a1 + 40) homekit];
  v10 = [*(a1 + 32) uniqueIdentifier];
  v11 = [v9 accessoryWithUniqueIdentifier:v10];

  if (v11)
  {
    v12 = [*(a1 + 40) _filteredAlarmsList:v5 forAccessory:v11];

    v5 = v12;
LABEL_8:
    v13 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v18 = 134218242;
      v19 = v14;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p local alarms list: %@", &v18, 0x16u);
    }

    [*(a1 + 56) finishWithResult:v5];
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v16 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171_cold_2(a1, (a1 + 32));
  }

  [*(a1 + 56) finishWithError:v15];
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v14)
  {
    v14 = [v13 error];
    if (!v14)
    {
      if (*(a1 + 32))
      {
        v25 = xpc_dictionary_create(0, 0, 0);
        if (v25)
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          xpc_dictionary_set_string(v25, "command", [v27 UTF8String]);

          v28 = [*(a1 + 40) clientBundleIdentifier];
          v29 = v28;
          if (!v28)
          {
            v5 = [MEMORY[0x277CCA8D8] mainBundle];
            v29 = [v5 bundleIdentifier];
          }

          xpc_dictionary_set_string(v25, "client", [v29 UTF8String]);
          if (!v28)
          {
          }

          v30 = *(a1 + 32);
          nw_activity_submit_metrics();
        }

        v31 = *(a1 + 32);
        nw_activity_complete_with_reason();
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v13 alarms];
        if (*(a1 + 48) && [*(a1 + 56) requiresFilter] && (objc_msgSend(v13, "isFiltered") & 1) == 0)
        {
          v33 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = *(a1 + 64);
            *buf = 134217984;
            v58 = v34;
            _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_INFO, "%p alarm results from leader not filtered!", buf, 0xCu);
          }

          v35 = [*(a1 + 72) homekit];
          v36 = [*(a1 + 48) uniqueIdentifier];
          v37 = [v35 accessoryWithUniqueIdentifier:v36];

          if (!v37)
          {
            v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
            v48 = COCoreLogForCategory(2);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176_cold_2(a1);
            }

            [*(a1 + 80) finishWithError:v15];
            goto LABEL_38;
          }

          v38 = [*(a1 + 72) _filteredAlarmsList:v32 forAccessory:v37];

          v32 = v38;
        }
      }

      else
      {
        v32 = [MEMORY[0x277CBEA60] array];
      }

      v39 = [*(a1 + 72) homekit];
      v40 = [v39 hasOptedToHH2];

      if (v40)
      {
        v41 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(a1 + 64);
          *buf = 134218242;
          v58 = v42;
          v59 = 2112;
          v60 = v32;
          _os_log_impl(&dword_244378000, v41, OS_LOG_TYPE_DEFAULT, "%p alarms list from leader: %@", buf, 0x16u);
        }

        [*(a1 + 80) finishWithResult:v32];
      }

      else
      {
        v43 = [*(a1 + 72) alarmManager];
        v44 = [v43 alarms];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_178;
        v53[3] = &unk_278E17268;
        v45 = v32;
        v54 = v45;
        v55 = *(a1 + 64);
        v56 = *(a1 + 80);
        v46 = [v44 addSuccessBlock:v53];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_179;
        v49[3] = &unk_278E17E48;
        v50 = *(a1 + 64);
        v32 = v45;
        v51 = v32;
        v52 = *(a1 + 80);
        v47 = [v44 addFailureBlock:v49];
      }

      v15 = 0;
LABEL_38:

      goto LABEL_14;
    }
  }

  v15 = v14;
  if (*(a1 + 32))
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    if (v16)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      xpc_dictionary_set_string(v16, "command", [v18 UTF8String]);

      v19 = [*(a1 + 40) clientBundleIdentifier];
      v20 = v19;
      if (!v19)
      {
        v6 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [v6 bundleIdentifier];
      }

      xpc_dictionary_set_string(v16, "client", [v20 UTF8String]);
      if (!v19)
      {
      }

      v21 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v22 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  v23 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176_cold_1(a1);
  }

  [*(a1 + 80) finishWithError:v15];
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_178(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [v11 alarmID];
          [v5 setObject:v11 forKey:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v8);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = *(a1 + 32);
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * j);
          v19 = [v18 alarmID];
          v20 = [v5 objectForKey:v19];

          v21 = [v18 COPreferredAlarm:v20];
          [v4 addObject:v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v41 count:16];
      }

      while (v15);
    }

    v3 = v26;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v22 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    *buf = 134218498;
    v36 = v23;
    v37 = 2112;
    v38 = v4;
    v39 = 2112;
    v40 = v24;
    _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "%p alarms list after local merge: %@ [list from leader: %@]", buf, 0x20u);
  }

  [*(a1 + 48) finishWithResult:v4];
  v25 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_179(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_179_cold_1(a1);
  }

  [*(a1 + 48) finishWithResult:*(a1 + 40)];
}

- (BOOL)_isAlarm:(id)a3 targetingAccessoryIdentifiers:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 siriContext];
  v8 = [v7 objectForKey:*MEMORY[0x277CFCEC8]];
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
        v15 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v5 alarmID];
          v29 = [v11 query];
          *buf = 138412802;
          v40 = v28;
          v41 = 2112;
          v42 = v29;
          v43 = 2112;
          v44 = v6;
          _os_log_debug_impl(&dword_244378000, v15, OS_LOG_TYPE_DEBUG, "checking if alarm (%@) target (%@) contains %@", buf, 0x20u);
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

    v16 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _isTimer:targetingAccessoryIdentifiers:];
    }

    goto LABEL_26;
  }

  v11 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _isAlarm:v5 targetingAccessoryIdentifiers:?];
  }

LABEL_28:

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)alarmsForAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:v4];
    if (v5)
    {
      v6 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v5];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = [(COMeshAlarmAddOn *)self _alarmsForAccessory:v5 allowLocalStorage:[(COMeshAlarmAddOn *)self performsLocalActions] usingLeader:1 member:v6 client:0];

  return v7;
}

- (id)addAlarm:(id)a3 member:(id)a4 client:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COAlarmRequest *)[COAlarmCreateRequest alloc] initWithAlarm:v8];
  v12 = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([v12 leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v30 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(COMeshAddOn *)self meshController];
      v32 = [v8 alarmID];
      *buf = 134218242;
      v52 = v31;
      v53 = 2112;
      v54 = v32;
      _os_log_impl(&dword_244378000, v30, OS_LOG_TYPE_DEFAULT, "%p directly add an alarm %@", buf, 0x16u);
    }

    v33 = objc_alloc_init(MEMORY[0x277D2C900]);
    v34 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    v26 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v48 = v11;
    v23 = v33;
    v49 = v23;
    v50 = v12;
    dispatch_async(v34, block);

    v27 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v38 = v11;
      if (v15)
      {
        v16 = [v8 alarmID];
        *buf = 134218242;
        v52 = v12;
        v53 = 2112;
        v54 = v16;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to add %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = [[COMTAlarmCreateAction alloc] initWithAlarm:v8];
      v19 = [v10 clientLifetimeActivity];
      v20 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v19];

      if (v20)
      {
        nw_activity_activate();
      }

      v21 = [(COMeshAlarmAddOn *)self actionDirector];
      v22 = [MEMORY[0x277CBEB98] setWithObject:v9];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_192;
      v41[3] = &unk_278E15778;
      v42 = v20;
      v43 = v18;
      v44 = v10;
      v23 = v17;
      v45 = v23;
      v46 = v12;
      v24 = v18;
      v25 = v20;
      [v21 requestAction:v24 members:v22 activity:v25 withCompletion:v41];

      v26 = &off_244448000;
      v27 = 0;
      v11 = v38;
    }

    else
    {
      if (v15)
      {
        v28 = [(COMeshAddOn *)self meshController];
        v29 = [v8 alarmID];
        *buf = 134218242;
        v52 = v28;
        v53 = 2112;
        v54 = v29;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to add an alarm %@", buf, 0x16u);
      }

      v23 = [(COMeshAlarmAddOn *)self _sendRequest:v11 client:v10];
      v27 = 0;
      v26 = &off_244448000;
    }
  }

  v35 = [(COMeshAlarmAddOn *)self recorder];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = *(v26 + 186);
  v39[2] = __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_193;
  v39[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v40 = v27;
  (v35)[2](v35, 0x2857B5848, v39);

  v36 = *MEMORY[0x277D85DE8];

  return v23;
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmCreateRequest:v3 callback:v4];
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_192(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (*(a1 + 32))
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      xpc_dictionary_set_string(v8, "command", [v11 UTF8String]);

      v12 = [*(a1 + 48) clientBundleIdentifier];
      v13 = v12;
      if (!v12)
      {
        v3 = [MEMORY[0x277CCA8D8] mainBundle];
        v13 = [v3 bundleIdentifier];
      }

      xpc_dictionary_set_string(v8, "client", [v13 UTF8String]);
      if (!v12)
      {
      }

      v14 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v15 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  if (v7)
  {
    v16 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_192_cold_1(a1);
    }

    [*(a1 + 56) finishWithError:v7];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)updateAlarm:(id)a3 member:(id)a4 client:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COAlarmRequest *)[COAlarmUpdateRequest alloc] initWithAlarm:v8];
  v12 = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([v12 leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v30 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(COMeshAddOn *)self meshController];
      v32 = [v8 alarmID];
      *buf = 134218242;
      v52 = v31;
      v53 = 2112;
      v54 = v32;
      _os_log_impl(&dword_244378000, v30, OS_LOG_TYPE_DEFAULT, "%p directly update an alarm %@", buf, 0x16u);
    }

    v33 = objc_alloc_init(MEMORY[0x277D2C900]);
    v34 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    v26 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v48 = v11;
    v23 = v33;
    v49 = v23;
    v50 = v12;
    dispatch_async(v34, block);

    v27 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v38 = v11;
      if (v15)
      {
        v16 = [v8 alarmID];
        *buf = 134218242;
        v52 = v12;
        v53 = 2112;
        v54 = v16;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to update %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = [[COMTAlarmUpdateAction alloc] initWithAlarm:v8];
      v19 = [v10 clientLifetimeActivity];
      v20 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v19];

      if (v20)
      {
        nw_activity_activate();
      }

      v21 = [(COMeshAlarmAddOn *)self actionDirector];
      v22 = [MEMORY[0x277CBEB98] setWithObject:v9];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_195;
      v41[3] = &unk_278E15778;
      v42 = v20;
      v43 = v18;
      v44 = v10;
      v23 = v17;
      v45 = v23;
      v46 = v12;
      v24 = v18;
      v25 = v20;
      [v21 requestAction:v24 members:v22 activity:v25 withCompletion:v41];

      v26 = &off_244448000;
      v27 = 0;
      v11 = v38;
    }

    else
    {
      if (v15)
      {
        v28 = [(COMeshAddOn *)self meshController];
        v29 = [v8 alarmID];
        *buf = 134218242;
        v52 = v28;
        v53 = 2112;
        v54 = v29;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to update an alarm %@", buf, 0x16u);
      }

      v23 = [(COMeshAlarmAddOn *)self _sendRequest:v11 client:v10];
      v27 = 0;
      v26 = &off_244448000;
    }
  }

  v35 = [(COMeshAlarmAddOn *)self recorder];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = *(v26 + 186);
  v39[2] = __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_196;
  v39[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v40 = v27;
  (v35)[2](v35, 0x2857B5848, v39);

  v36 = *MEMORY[0x277D85DE8];

  return v23;
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmUpdateRequest:v3 callback:v4];
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_195(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (*(a1 + 32))
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      xpc_dictionary_set_string(v8, "command", [v11 UTF8String]);

      v12 = [*(a1 + 48) clientBundleIdentifier];
      v13 = v12;
      if (!v12)
      {
        v3 = [MEMORY[0x277CCA8D8] mainBundle];
        v13 = [v3 bundleIdentifier];
      }

      xpc_dictionary_set_string(v8, "client", [v13 UTF8String]);
      if (!v12)
      {
      }

      v14 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v15 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  if (v7)
  {
    v16 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_195_cold_1(a1);
    }

    [*(a1 + 56) finishWithError:v7];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)removeAlarm:(id)a3 member:(id)a4 client:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COAlarmRequest *)[COAlarmDeleteRequest alloc] initWithAlarm:v8];
  v12 = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([v12 leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v33 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(COMeshAddOn *)self meshController];
      v35 = [v8 alarmID];
      *buf = 134218242;
      v55 = v34;
      v56 = 2112;
      v57 = v35;
      _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_DEFAULT, "%p directly remove an alarm %@", buf, 0x16u);
    }

    v36 = objc_alloc_init(MEMORY[0x277D2C900]);
    v37 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    v29 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v51 = v11;
    v26 = v36;
    v52 = v26;
    v53 = v12;
    dispatch_async(v37, block);

    v30 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v41 = v11;
      if (v15)
      {
        v16 = [v8 alarmID];
        *buf = 134218242;
        v55 = v12;
        v56 = 2112;
        v57 = v16;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to remove %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v8 alarmID];
      v21 = [COMTDeleteAction actionWithTargetType:v19 targetIdentifier:v20];

      v22 = [v10 clientLifetimeActivity];
      v23 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v22];

      if (v23)
      {
        nw_activity_activate();
      }

      v24 = [(COMeshAlarmAddOn *)self actionDirector];
      v25 = [MEMORY[0x277CBEB98] setWithObject:v9];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_198;
      v44[3] = &unk_278E15778;
      v45 = v23;
      v46 = v21;
      v47 = v10;
      v26 = v17;
      v48 = v26;
      v49 = v12;
      v27 = v21;
      v28 = v23;
      [v24 requestAction:v27 members:v25 activity:v28 withCompletion:v44];

      v29 = &off_244448000;
      v30 = 0;
      v11 = v41;
    }

    else
    {
      if (v15)
      {
        v31 = [(COMeshAddOn *)self meshController];
        v32 = [v8 alarmID];
        *buf = 134218242;
        v55 = v31;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to remove an alarm %@", buf, 0x16u);
      }

      v26 = [(COMeshAlarmAddOn *)self _sendRequest:v11 client:v10];
      v30 = 0;
      v29 = &off_244448000;
    }
  }

  v38 = [(COMeshAlarmAddOn *)self recorder];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = *(v29 + 186);
  v42[2] = __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_199;
  v42[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v43 = v30;
  (v38)[2](v38, 0x2857B5848, v42);

  v39 = *MEMORY[0x277D85DE8];

  return v26;
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmDeleteRequest:v3 callback:v4];
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_198(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (*(a1 + 32))
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      xpc_dictionary_set_string(v8, "command", [v11 UTF8String]);

      v12 = [*(a1 + 48) clientBundleIdentifier];
      v13 = v12;
      if (!v12)
      {
        v3 = [MEMORY[0x277CCA8D8] mainBundle];
        v13 = [v3 bundleIdentifier];
      }

      xpc_dictionary_set_string(v8, "client", [v13 UTF8String]);
      if (!v12)
      {
      }

      v14 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v15 = *(a1 + 32);
    nw_activity_complete_with_reason();
  }

  if (v7)
  {
    v16 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_198_cold_1(a1);
    }

    [*(a1 + 56) finishWithError:v7];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)snoozeAlarmWithIdentifier:(id)a3 client:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[COAlarmSnoozeRequest alloc] initWithAlarmIdentifier:v6];
  v9 = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([v9 leader], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v18 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v29 = v19;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p directly snooze an alarm %@", buf, 0x16u);
    }

    v20 = objc_alloc_init(MEMORY[0x277D2C900]);
    v21 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v25 = v8;
    v13 = v20;
    v26 = v13;
    v27 = v9;
    dispatch_async(v21, block);

    v14 = 1;
  }

  else
  {
    v11 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v29 = v12;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p requesting leader to snooze an alarm %@", buf, 0x16u);
    }

    v13 = [(COMeshAlarmAddOn *)self _sendRequest:v8 client:v7];
    v14 = 0;
  }

  v15 = [(COMeshAlarmAddOn *)self recorder];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_200;
  v22[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v23 = v14;
  (v15)[2](v15, 0x2857B5848, v22);

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

void __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmSnoozeRequest:v3 callback:v4];
}

void __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

- (id)dismissAlarmWithIdentifier:(id)a3 client:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[COAlarmDismissRequest alloc] initWithAlarmIdentifier:v6];
  v9 = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([v9 leader], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v23 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v36 = v24;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%p directly dismiss an alarm %@", buf, 0x16u);
    }

    v25 = objc_alloc_init(MEMORY[0x277D2C900]);
    v26 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke;
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
    v11 = [(COMeshAlarmAddOn *)self alarmManager];
    v12 = [v11 dismissAlarmWithIdentifier:v6];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_201;
    v29[3] = &unk_278E17010;
    v29[4] = self;
    v13 = &v30;
    v14 = v6;
    v30 = v14;
    v15 = [v12 addCompletionBlock:v29];

    v16 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v36 = v17;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p requesting leader to dismiss an alarm %@", buf, 0x16u);
    }

    v18 = [(COMeshAlarmAddOn *)self _sendRequest:v8 client:v7];
    v19 = 0;
  }

  v20 = [(COMeshAlarmAddOn *)self recorder];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_203;
  v27[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v28 = v19;
  (v20)[2](v20, 0x2857B5848, v27);

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmDismissRequest:v3 callback:v4];
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_201(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(2);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_201_cold_1();
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

- (BOOL)_isAlarm:(id)a3 targetingAccessory:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    v8 = [(COMeshAlarmAddOn *)self homekit];
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

    v11 = [(COMeshAlarmAddOn *)self _isAlarm:v7 targetingAccessoryIdentifiers:v10];
  }

  else
  {
    v11 = [(COMeshAlarmAddOn *)self _isAlarm:v7 targetingAccessoryIdentifiers:0];
    v8 = v7;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)handleAlarmReadRequest:(id)a3 callback:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 accessoryUniqueIdentifier];
  v10 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(COMeshAddOn *)self meshController];
    *buf = 134218242;
    v57 = v11;
    v58 = 2112;
    *v59 = v9;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p retrieving alarms for %@...", buf, 0x16u);
  }

  v12 = [v6 requiresFilter];
  v13 = [(COMeshAlarmAddOn *)self homekit];
  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v38 = [(COMeshAddOn *)self meshController];
    v39 = [v6 isForMerge];
    [v6 eTag];
    v40 = v41 = v7;
    *buf = 134218754;
    v57 = v38;
    v58 = 1024;
    *v59 = v12;
    *&v59[4] = 1024;
    *&v59[6] = v39;
    v60 = 2112;
    v61 = v40;
    _os_log_debug_impl(&dword_244378000, v14, OS_LOG_TYPE_DEBUG, "%p request info: filter: %d, merge: %d, eTag: %@", buf, 0x22u);

    v7 = v41;
  }

  v15 = 0;
  v16 = 0;
  if (!v12 || !v9)
  {
    goto LABEL_19;
  }

  v17 = [v13 accessoryWithUniqueIdentifier:v9];
  if (v17)
  {
    v16 = v17;
    if ([v13 hasOptedToHH2])
    {
      v15 = 0;
    }

    else
    {
      v19 = [v13 homeForAccessory:v16];
      v15 = MEMORY[0x277CBEBF8];
      if (v19)
      {
        v20 = [v13 alarmsForAccessory:v16 inHome:v19];
        v21 = v7;
        v22 = v20;
        if (v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v15;
        }

        v15 = v23;

        v7 = v21;
      }
    }

LABEL_19:
    if ([(COMeshAlarmAddOn *)self performsLocalActions])
    {
      [(COMeshAlarmAddOn *)self alarmManager];
      v25 = v24 = v7;
      v26 = [v25 alarms];

      v7 = v24;
    }

    else
    {
      v26 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
    }

    if ([v13 hasOptedToHH2])
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke;
      v54[3] = &unk_278E17038;
      v27 = v13;
      v28 = v9;
      v29 = v7;
      v30 = v7;
      v55 = v30;
      v31 = [v26 addFailureBlock:v54];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_205;
      v48[3] = &unk_278E17060;
      v53 = v12;
      v49 = v16;
      v50 = self;
      v51 = v6;
      v32 = v30;
      v7 = v29;
      v9 = v28;
      v13 = v27;
      v33 = &v55;
      v52 = v32;
      v34 = [v26 addSuccessBlock:v48];

      v35 = v49;
    }

    else
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_206;
      v42[3] = &unk_278E187B8;
      v33 = v43;
      v43[0] = v15;
      v43[1] = self;
      v44 = v16;
      v47 = v12;
      v45 = v6;
      v46 = v7;
      v36 = [v26 addCompletionBlock:v42];

      v35 = v44;
    }

    goto LABEL_26;
  }

  v18 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [COMeshAlarmAddOn handleAlarmReadRequest:callback:];
  }

  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v15 = [[COMeshResponse alloc] initWithError:v16];
  (*(v7 + 2))(v7, v15, 0);
LABEL_26:

  v37 = *MEMORY[0x277D85DE8];
}

void __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_205(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 64) == 1)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_2;
    v28 = &unk_278E17E70;
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

    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v3;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "... returning filtered alarms list\n%@", buf, 0xCu);
    }

    v9 = [[COAlarmReadResponse alloc] initWithFilteredAlarms:v3];
    goto LABEL_17;
  }

  if (([*(a1 + 48) isForMerge] & 1) == 0)
  {
    v12 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v3;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "... returning alarms list\n%@", buf, 0xCu);
    }

    v11 = [[COAlarmReadResponse alloc] initWithAlarms:v3];
    goto LABEL_16;
  }

  if (![*(a1 + 40) performsLocalActions] || objc_msgSend(MEMORY[0x277CFD0B8], "isDistributedTimersEnabled"))
  {
    v10 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "... returning skip-in-merge", buf, 2u);
    }

    v11 = [[COAlarmReadResponse alloc] initWithSkipInMerge];
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
  v17 = eTagForAlarms(v3);
  v18 = [v16 isEqualToString:v17];

  if (v18)
  {
    v19 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "... returning not-modified", buf, 2u);
    }

    v20 = [COAlarmReadResponse alloc];
    v21 = [*(a1 + 40) deletes];
    v22 = [(COAlarmReadResponse *)v20 initNotModifiedWithDeletes:v21];
  }

  else
  {
LABEL_23:
    v23 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v3;
      _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "... returning alarms list and deletes\n%@", buf, 0xCu);
    }

    v24 = [COAlarmReadResponse alloc];
    v21 = [*(a1 + 40) deletes];
    v22 = [(COAlarmReadResponse *)v24 initWithAlarms:v3 deletes:v21];
  }

  v9 = v22;

LABEL_17:
  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isAlarm:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFCEC8]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

void __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_206(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32))
  {

    v8 = *(a1 + 32);
    if (v5)
    {
      v9 = [v5 arrayByAddingObjectsFromArray:v8];
    }

    else
    {
      v9 = v8;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          v20 = [v19 alarmID];
          v21 = [v13 objectForKey:v20];
          v22 = [*(a1 + 40) _isAlarm:v19 targetingAccessory:*(a1 + 48)];
          if (v21)
          {
            v23 = [*(a1 + 40) _isAlarm:v21 targetingAccessory:*(a1 + 48)];
          }

          else
          {
            v23 = 0;
          }

          if (v23 == v22)
          {
            v24 = [v19 COPreferredAlarm:v21];
          }

          else
          {
            if (v22)
            {
              v25 = v19;
            }

            else
            {
              v25 = v21;
            }

            v24 = v25;
          }

          v26 = v24;
          [v13 setObject:v24 forKey:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v16);
    }

    v27 = [v13 allValues];
    v5 = [v27 sortedArrayUsingSelector:sel_compare_];

LABEL_26:
    if (*(a1 + 72) == 1)
    {
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_2_207;
      v41 = &unk_278E17E70;
      v28 = *(a1 + 48);
      v29 = *(a1 + 40);
      v42 = v28;
      v43 = v29;
      v30 = [v5 indexesOfObjectsPassingTest:&v38];
      if ([v30 count])
      {
        v31 = [v5 mutableCopy];
        [v31 removeObjectsAtIndexes:v30];

        v5 = v31;
      }

      v32 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v5;
        _os_log_impl(&dword_244378000, v32, OS_LOG_TYPE_DEFAULT, "... returning filtered alarms list\n%@", buf, 0xCu);
      }

      v7 = [[COAlarmReadResponse alloc] initWithFilteredAlarms:v5];
    }

    else
    {
      v33 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v5;
        _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_DEFAULT, "... returning alarms list\n%@", buf, 0xCu);
      }

      v34 = [*(a1 + 56) isForMerge];
      v35 = [COAlarmReadResponse alloc];
      v36 = v35;
      if ((v34 & 1) == 0)
      {
        v7 = [(COAlarmReadResponse *)v35 initWithAlarms:v5];
        goto LABEL_38;
      }

      v30 = [*(a1 + 40) deletes];
      v7 = [(COAlarmReadResponse *)v36 initWithAlarms:v5 deletes:v30];
    }

LABEL_38:
    (*(*(a1 + 64) + 16))();
    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_26;
  }

  v10 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_cold_1();
  }

  v11 = *(a1 + 64);
  v12 = [[COMeshResponse alloc] initWithError:v7];
  (*(v11 + 16))(v11, v12, 0);

LABEL_39:
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_2_207(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isAlarm:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFCEC8]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

- (void)handleAlarmCreateRequest:(id)a3 callback:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v38 = a4;
  val = self;
  v40 = [(COMeshAddOn *)self meshController];
  v6 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v6);

  v44 = [v39 alarm];
  v7 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(COMeshAddOn *)self meshController];
    v9 = [v44 alarmID];
    *buf = 134218242;
    v62 = v8;
    v63 = 2112;
    v64 = v9;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p adding alarm %@...", buf, 0x16u);
  }

  v45 = [(COMeshAlarmAddOn *)val homekit];
  v10 = [v44 siriContext];
  v41 = [v10 objectForKey:*MEMORY[0x277CFCEC8]];

  v11 = [v41 length];
  if (v11)
  {
    v36 = [v45 allAccessoriesForSiriContextTargetReference:v41];
  }

  else
  {
    v36 = 0;
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = [(COMeshAlarmAddOn *)val performsLocalActions];
  if (!v11 || [v45 hasOptedToHH2])
  {
    if (v37)
    {
      v12 = [(COMeshAlarmAddOn *)val alarmManager];
      [v12 addAlarm:v44];
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      [MEMORY[0x277D2C900] futureWithError:v12];
    }
    v13 = ;
    [v43 addObject:{v13, v36}];
LABEL_12:

    if ([v43 count] == 1)
    {
      v14 = [v43 firstObject];
    }

    else
    {
      v15 = MEMORY[0x277D2C938];
      v16 = [v40 dispatchQueue];
      v17 = [v15 schedulerWithDispatchQueue:v16];

      v14 = [MEMORY[0x277D2C900] combineAllFutures:v43 ignoringErrors:1 scheduler:v17];
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke;
    v53[3] = &unk_278E17088;
    v18 = v44;
    v54 = v18;
    v19 = v38;
    v55 = v19;
    v20 = [v14 addFailureBlock:v53];
    objc_initWeak(buf, val);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_208;
    v46[3] = &unk_278E187E0;
    v47 = v18;
    v50 = v19;
    v48 = v40;
    objc_copyWeak(&v51, buf);
    v52 = v37;
    v49 = val;
    v21 = [v14 addSuccessBlock:v46];
    objc_destroyWeak(&v51);

    objc_destroyWeak(buf);
    v22 = v54;
    goto LABEL_16;
  }

  if (v36)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v13 = v36;
    v12 = 0;
    v24 = [v13 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v24)
    {
      v25 = *v57;
      v26 = *MEMORY[0x277CCE8B0];
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v13);
          }

          v28 = *(*(&v56 + 1) + 8 * i);
          v29 = [v28 category];
          v30 = [v29 categoryType];
          v31 = [v26 isEqualToString:v30];

          if (v31)
          {
            v32 = [v45 homeForAccessory:v28];
            if (v32)
            {
              v33 = [v45 addAlarm:v44 toAccessory:v28 inHome:v32];
              [v43 addObject:v33];
            }
          }

          else if (!v12)
          {
            v34 = [(COMeshAlarmAddOn *)val alarmManager];
            v12 = [v34 addAlarm:v44];

            [v43 addObject:v12];
          }
        }

        v24 = [v13 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v24);
    }

    goto LABEL_12;
  }

  v35 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    [COMeshAlarmAddOn handleAlarmCreateRequest:callback:];
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v22 = [[COMeshResponse alloc] initWithError:v14];
  (*(v38 + 2))(v38, v22, 0);
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_208(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) alarmID];
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... alarm (%@) create completed", buf, 0xCu);
  }

  v4 = *(a1 + 56);
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  v6 = [COAlarmsAddedNotification alloc];
  v16 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v8 = [(COAlarmNotification *)v6 initWithAlarms:v7];

  v9 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_208_cold_1(a1, (a1 + 32));
  }

  [*(a1 + 40) sendNotification:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained && (*(a1 + 72) & 1) == 0)
  {
    v12 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 48);
      v14 = [(COAlarmNotification *)v8 alarms];
      [v12 alarmAddOn:v13 didAddAlarms:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmUpdateRequest:(id)a3 callback:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v38 = a4;
  val = self;
  v40 = [(COMeshAddOn *)self meshController];
  v6 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v6);

  v44 = [v39 alarm];
  v7 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(COMeshAddOn *)self meshController];
    v9 = [v44 alarmID];
    *buf = 134218242;
    v62 = v8;
    v63 = 2112;
    v64 = v9;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p updating alarm %@...", buf, 0x16u);
  }

  v45 = [(COMeshAlarmAddOn *)val homekit];
  v10 = [v44 siriContext];
  v41 = [v10 objectForKey:*MEMORY[0x277CFCEC8]];

  v11 = [v41 length];
  if (v11)
  {
    v36 = [v45 allAccessoriesForSiriContextTargetReference:v41];
  }

  else
  {
    v36 = 0;
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = [(COMeshAlarmAddOn *)val performsLocalActions];
  if (!v11 || [v45 hasOptedToHH2])
  {
    if (v37)
    {
      v12 = [(COMeshAlarmAddOn *)val alarmManager];
      [v12 updateAlarm:v44];
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      [MEMORY[0x277D2C900] futureWithError:v12];
    }
    v13 = ;
    [v43 addObject:{v13, v36}];
LABEL_12:

    if ([v43 count] == 1)
    {
      v14 = [v43 firstObject];
    }

    else
    {
      v15 = MEMORY[0x277D2C938];
      v16 = [v40 dispatchQueue];
      v17 = [v15 schedulerWithDispatchQueue:v16];

      v14 = [MEMORY[0x277D2C900] combineAllFutures:v43 ignoringErrors:1 scheduler:v17];
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke;
    v53[3] = &unk_278E17088;
    v18 = v44;
    v54 = v18;
    v19 = v38;
    v55 = v19;
    v20 = [v14 addFailureBlock:v53];
    objc_initWeak(buf, val);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_210;
    v46[3] = &unk_278E187E0;
    v47 = v18;
    v50 = v19;
    v48 = v40;
    objc_copyWeak(&v51, buf);
    v52 = v37;
    v49 = val;
    v21 = [v14 addSuccessBlock:v46];
    objc_destroyWeak(&v51);

    objc_destroyWeak(buf);
    v22 = v54;
    goto LABEL_16;
  }

  if (v36)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v13 = v36;
    v12 = 0;
    v24 = [v13 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v24)
    {
      v25 = *v57;
      v26 = *MEMORY[0x277CCE8B0];
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v13);
          }

          v28 = *(*(&v56 + 1) + 8 * i);
          v29 = [v28 category];
          v30 = [v29 categoryType];
          v31 = [v26 isEqualToString:v30];

          if (v31)
          {
            v32 = [v45 homeForAccessory:v28];
            if (v32)
            {
              v33 = [v45 updateAlarm:v44 onAccessory:v28 inHome:v32];
              [v43 addObject:v33];
            }
          }

          else if (!v12)
          {
            v34 = [(COMeshAlarmAddOn *)val alarmManager];
            v12 = [v34 updateAlarm:v44];

            [v43 addObject:v12];
          }
        }

        v24 = [v13 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v24);
    }

    goto LABEL_12;
  }

  v35 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    [COMeshAlarmAddOn handleAlarmUpdateRequest:callback:];
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v22 = [[COMeshResponse alloc] initWithError:v14];
  (*(v38 + 2))(v38, v22, 0);
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_210(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) alarmID];
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... alarm (%@) update completed", buf, 0xCu);
  }

  v4 = *(a1 + 56);
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  v6 = [COAlarmsUpdatedNotification alloc];
  v16 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v8 = [(COAlarmNotification *)v6 initWithAlarms:v7];

  v9 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_210_cold_1(a1, (a1 + 32));
  }

  [*(a1 + 40) sendNotification:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained && (*(a1 + 72) & 1) == 0)
  {
    v12 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 48);
      v14 = [(COAlarmNotification *)v8 alarms];
      [v12 alarmAddOn:v13 didUpdateAlarms:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmDeleteRequest:(id)a3 callback:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v38 = a4;
  val = self;
  v39 = [(COMeshAddOn *)self meshController];
  v6 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v6);

  v43 = [v40 alarm];
  v7 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(COMeshAddOn *)self meshController];
    v9 = [v43 alarmID];
    *buf = 134218242;
    v60 = v8;
    v61 = 2112;
    v62 = v9;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p deleting alarm %@...", buf, 0x16u);
  }

  v10 = [(COMeshAlarmAddOn *)self homekit];
  v11 = [v43 siriContext];
  v41 = [v11 objectForKey:*MEMORY[0x277CFCEC8]];

  if ([v41 length])
  {
    v12 = [v10 accessoriesForSiriContextTargetReference:v41];
  }

  else
  {
    v12 = 0;
  }

  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [(COMeshAlarmAddOn *)self alarmManager];
  v14 = [v13 removeAlarm:v43];
  [v44 addObject:v14];

  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v54 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v16)
  {
    v17 = *v55;
    v18 = *MEMORY[0x277CCE8B0];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v54 + 1) + 8 * i);
        if (([v10 hasOptedToHH2] & 1) == 0)
        {
          v21 = [v20 category];
          v22 = [v21 categoryType];
          v23 = [v18 isEqualToString:v22];

          if (v23)
          {
            v24 = [v10 homeForAccessory:v20];
            if (v24)
            {
              v25 = [v10 removeAlarm:v43 fromAccessory:v20 inHome:v24];
              [v44 addObject:v25];
            }
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v16);
  }

  if ([v44 count] == 1)
  {
    v26 = [v44 firstObject];
  }

  else
  {
    v27 = MEMORY[0x277D2C938];
    v28 = [v39 dispatchQueue];
    v29 = [v27 schedulerWithDispatchQueue:v28];

    v26 = [MEMORY[0x277D2C900] combineAllFutures:v44 ignoringErrors:1 scheduler:v29];
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke;
  v51[3] = &unk_278E17088;
  v30 = v43;
  v52 = v30;
  v31 = v38;
  v53 = v31;
  v32 = [v26 addFailureBlock:v51];
  objc_initWeak(buf, val);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_211;
  v45[3] = &unk_278E18808;
  v33 = v30;
  v46 = v33;
  v47 = val;
  v34 = v31;
  v49 = v34;
  v35 = v39;
  v48 = v35;
  objc_copyWeak(&v50, buf);
  v36 = [v26 addSuccessBlock:v45];
  objc_destroyWeak(&v50);

  objc_destroyWeak(buf);
  v37 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_211(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) alarmID];
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "... alarm (%@) delete completed", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [COAlarmDeleteEvent alloc];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(COAlarmDeleteEvent *)v6 initWithIdentifier:v3 date:v7];
  [v5 _addAlarmDeleteEvent:v8];

  v9 = *(a1 + 56);
  v10 = objc_alloc_init(COMeshResponse);
  (*(v9 + 16))(v9, v10, 0);

  v11 = [COAlarmsRemovedNotification alloc];
  v21 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v13 = [(COAlarmNotification *)v11 initWithAlarms:v12];

  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_211_cold_1(a1, v2);
  }

  [*(a1 + 48) sendNotification:v13];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v16 = WeakRetained;
  if (WeakRetained && ([WeakRetained performsLocalActions] & 1) == 0)
  {
    v17 = [v16 delegate];
    if (objc_opt_respondsToSelector())
    {
      v18 = *(a1 + 40);
      v19 = [(COAlarmNotification *)v13 alarms];
      [v17 alarmAddOn:v18 didRemoveAlarms:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmSnoozeRequest:(id)a3 callback:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 identifier];

  v11 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v24 = v8;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p snoozing alarm %@...", buf, 0x16u);
  }

  v12 = [(COMeshAlarmAddOn *)self alarmManager];
  v13 = [v12 snoozeAlarmWithIdentifier:v10];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke;
  v19[3] = &unk_278E18830;
  v21 = v8;
  v22 = v6;
  v20 = v10;
  v14 = v8;
  v15 = v6;
  v16 = v10;
  v17 = [v13 addCompletionBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = COCoreLogForCategory(2);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "... alarm (%@) snooze completed", &v15, 0xCu);
  }

  v10 = *(a1 + 48);
  v11 = objc_alloc_init(COMeshResponse);
  (*(v10 + 16))(v10, v11, 0);

  v12 = [[COAlarmSnoozeNotification alloc] initWithAlarmIdentifier:*(a1 + 32)];
  v13 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke_cold_2(a1);
  }

  [*(a1 + 40) sendNotification:v12];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmDismissRequest:(id)a3 callback:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshController];
  v9 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v6 identifier];
  v11 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p dismissing alarm %@...", buf, 0x16u);
  }

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v50 = __Block_byref_object_copy__24;
  v51 = __Block_byref_object_dispose__24;
  v52 = 0;
  v12 = [(COMeshAlarmAddOn *)self alarmManager];
  v13 = [v12 dismissAlarmWithIdentifier:v10];
  v14 = [v12 alarms];
  objc_initWeak(&location, self);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke;
  v40[3] = &unk_278E18858;
  v43 = v47;
  v44 = buf;
  v15 = v8;
  v41 = v15;
  objc_copyWeak(&v45, &location);
  v42 = self;
  v16 = MEMORY[0x245D5FF10](v40);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_213;
  v37[3] = &unk_278E17088;
  v17 = v10;
  v38 = v17;
  v18 = v7;
  v39 = v18;
  v19 = [v13 addFailureBlock:v37];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_214;
  v32[3] = &unk_278E17128;
  v20 = v17;
  v33 = v20;
  v21 = v18;
  v34 = v21;
  v36 = v47;
  v22 = v16;
  v35 = v22;
  v23 = [v13 addSuccessBlock:v32];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_215;
  v28[3] = &unk_278E17178;
  v24 = v20;
  v29 = v24;
  v31 = buf;
  v25 = v22;
  v30 = v25;
  v26 = [v14 addSuccessBlock:v28];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v47, 8);

  v27 = *MEMORY[0x277D85DE8];
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = a1 + 56;
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v3 = [COAlarmFiringAlarmDismissedNotification alloc];
      v14[0] = *(*(*v2 + 8) + 40);
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v5 = [(COAlarmNotification *)v3 initWithAlarms:v4];

      v6 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_cold_1(a1, v2);
      }

      [*(a1 + 32) sendNotification:v5];
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v8 = WeakRetained;
      if (WeakRetained)
      {
        v9 = [WeakRetained delegate];
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 40);
          v13 = *(*(*(a1 + 56) + 8) + 40);
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
          [v9 alarmAddOn:v10 didDismissAlarms:v11];
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_213_cold_1(a1);
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

uint64_t __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_214(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... alarm (%@) dismiss completed", &v8, 0xCu);
  }

  v4 = a1[5];
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  *(*(a1[7] + 8) + 24) = 1;
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_215(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_2;
  v6[3] = &unk_278E18880;
  v7 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = v5;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 alarmIDString];
  v8 = [v7 isEqualToString:a1[4]];
  *a4 = v8;

  if (v8)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    (*(a1[5] + 16))();
  }
}

- (void)handleAlarmsAddedNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [v4 alarms];

  if ([v6 count])
  {
    if ([(COMeshAlarmAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v5];
      v9 = [(COMeshAlarmAddOn *)self alarmManager];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__COMeshAlarmAddOn_handleAlarmsAddedNotification___block_invoke;
      v16[3] = &unk_278E188A8;
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
    v14[2] = __50__COMeshAlarmAddOn_handleAlarmsAddedNotification___block_invoke_217;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = v6;
    v13 = [v12 addSuccessBlock:v14];
  }

  else
  {
    v12 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn handleAlarmsAddedNotification:];
    }
  }
}

void __50__COMeshAlarmAddOn_handleAlarmsAddedNotification___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 alarmID];
    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p adding local alarm %@", &v10, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) addAlarm:v3];
  [v7 addObject:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __50__COMeshAlarmAddOn_handleAlarmsAddedNotification___block_invoke_217(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished adding local alarms", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alarmAddOn:*(a1 + 32) didAddAlarms:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmsRemovedNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [v4 alarms];

  if ([v6 count])
  {
    if ([(COMeshAlarmAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v5];
      v9 = [MEMORY[0x277CBEAA8] now];
      v10 = [(COMeshAlarmAddOn *)self alarmManager];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__COMeshAlarmAddOn_handleAlarmsRemovedNotification___block_invoke;
      v18[3] = &unk_278E188D0;
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
    v16[2] = __52__COMeshAlarmAddOn_handleAlarmsRemovedNotification___block_invoke_218;
    v16[3] = &unk_278E171C8;
    v16[4] = self;
    v17 = v6;
    v15 = [v14 addSuccessBlock:v16];
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn handleAlarmsRemovedNotification:];
    }
  }
}

void __52__COMeshAlarmAddOn_handleAlarmsRemovedNotification___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 alarmID];
  v5 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v12 = 134218242;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p removing local alarm %@", &v12, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [[COAlarmDeleteEvent alloc] initWithIdentifier:v4 date:*(a1 + 40)];
  [v7 _addAlarmDeleteEvent:v8];

  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) removeAlarm:v3];

  [v9 addObject:v10];
  v11 = *MEMORY[0x277D85DE8];
}

void __52__COMeshAlarmAddOn_handleAlarmsRemovedNotification___block_invoke_218(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished removing local alarms", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alarmAddOn:*(a1 + 32) didRemoveAlarms:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmsUpdatedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [v4 alarms];

  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v7 = [(COMeshAlarmAddOn *)self alarmManager];
    v8 = [v7 alarms];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__COMeshAlarmAddOn_handleAlarmsUpdatedNotification___block_invoke;
    v13[3] = &unk_278E16CB0;
    v14 = v5;
    v15 = v6;
    v16 = self;
    v17 = v7;
    v9 = v7;
    v10 = [v8 addCompletionBlock:v13];
  }

  else
  {
    v11 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = self;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p not performing local updates.", buf, 0xCu);
    }

    v9 = [(COMeshAlarmAddOn *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 alarmAddOn:self didUpdateAlarms:v6];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__COMeshAlarmAddOn_handleAlarmsUpdatedNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v28 = a3;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:*(a1 + 32)];
  v29 = v5;
  v32 = [v5 na_dictionaryWithKeyGenerator:&__block_literal_global_221];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v11 alarmID];
        v13 = [v32 objectForKey:v12];
        if ((([v13 isFiring] & 1) != 0 || objc_msgSend(v13, "isSnoozed")) && (objc_msgSend(*(a1 + 48), "homekit"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "hasOptedToHH2"), v14, !v15))
        {
          v19 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 48);
            *buf = 134218242;
            v41 = v20;
            v42 = 2112;
            v43 = v12;
            _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%p not updating busy alarm %@", buf, 0x16u);
          }

          if (!v8)
          {
            v8 = [*(a1 + 40) mutableCopy];
          }

          [v8 replaceObjectAtIndex:objc_msgSend(v8 withObject:{"indexOfObject:", v11), v13}];
        }

        else
        {
          v16 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a1 + 48);
            *buf = 134218242;
            v41 = v17;
            v42 = 2112;
            v43 = v12;
            _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p updating local alarm %@", buf, 0x16u);
          }

          v18 = [*(a1 + 56) updateAlarm:v11];
          [v31 addObject:v18];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v31 count])
  {
    v21 = v27;
    v22 = [MEMORY[0x277D2C900] combineAllFutures:v31 ignoringErrors:1 scheduler:v27];
  }

  else
  {
    v22 = [MEMORY[0x277D2C900] futureWithNoResult];
    v21 = v27;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __52__COMeshAlarmAddOn_handleAlarmsUpdatedNotification___block_invoke_222;
  v33[3] = &unk_278E18918;
  v23 = *(a1 + 40);
  v33[4] = *(a1 + 48);
  v34 = v8;
  v35 = v23;
  v24 = v8;
  v25 = [v22 addSuccessBlock:v33];

  v26 = *MEMORY[0x277D85DE8];
}

void __52__COMeshAlarmAddOn_handleAlarmsUpdatedNotification___block_invoke_222(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished updating local alarms", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = *(a1 + 48);
    }

    [v4 alarmAddOn:*(a1 + 32) didUpdateAlarms:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmFiredNotification:(id)a3
{
  v6 = a3;
  if (![(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v4 = [(COMeshAlarmAddOn *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 alarms];
      [v4 alarmAddOn:self didUpdateAlarms:v5];
    }
  }
}

- (void)handleAlarmFiringAlarmDismissedNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);
  v6 = [v4 alarms];

  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v5];
    v9 = [(COMeshAlarmAddOn *)self alarmManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__COMeshAlarmAddOn_handleAlarmFiringAlarmDismissedNotification___block_invoke;
    v16[3] = &unk_278E188A8;
    v16[4] = self;
    v17 = v7;
    v18 = v9;
    v10 = v9;
    v11 = v7;
    [v6 enumerateObjectsUsingBlock:v16];
    v12 = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__COMeshAlarmAddOn_handleAlarmFiringAlarmDismissedNotification___block_invoke_223;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = v6;
    v13 = [v12 addSuccessBlock:v14];
  }

  else
  {
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn handleAlarmFiringAlarmDismissedNotification:];
    }
  }
}

void __64__COMeshAlarmAddOn_handleAlarmFiringAlarmDismissedNotification___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 alarmID];
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v11 = 134218242;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p dismissing local alarm %@", &v11, 0x16u);
  }

  v7 = a1[5];
  v6 = a1[6];
  v8 = [v3 UUIDString];
  v9 = [v6 dismissAlarmWithIdentifier:v8];
  [v7 addObject:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __64__COMeshAlarmAddOn_handleAlarmFiringAlarmDismissedNotification___block_invoke_223(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished dismissing local alarms", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alarmAddOn:*(a1 + 32) didDismissAlarms:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmSnoozeNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshController];
  v6 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v6);
  v7 = [v4 identifier];
  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v21 = v5;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p locally snoozing alarm %@...", buf, 0x16u);
    }

    v9 = [(COMeshAlarmAddOn *)self alarmManager];
    v10 = [v9 snoozeAlarmWithIdentifier:v7];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke;
    v18[3] = &unk_278E18940;
    v19 = v7;
    v11 = [v10 addCompletionBlock:v18];
  }

  else
  {
    objc_initWeak(buf, self);
    v12 = objc_alloc_init(COAlarmReadRequest);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_224;
    v14[3] = &unk_278E18990;
    objc_copyWeak(&v17, buf);
    v15 = v7;
    v16 = self;
    [v5 sendRequest:v12 withCompletionHandler:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(2);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "... local snooze of alarm (%@) complete", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 alarms];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_2;
      v10[3] = &unk_278E18968;
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v8;
      v12 = v9;
      [v7 enumerateObjectsUsingBlock:v10];
    }
  }
}

void __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 alarmIDString];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    *a4 = 1;
    v9 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = *(a1 + 40);
      v13[0] = v6;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v9 alarmAddOn:v10 didUpdateAlarms:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmManagerStateResetNotification:(id)a3
{
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn handleAlarmManagerStateResetNotification:?];
  }

  v5 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 didResetAlarmAddOn:self];
  }
}

- (void)alarmsAsAccessory:(id)a3 fromClient:(id)a4 withCallback:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn alarmsAsAccessory:? fromClient:? withCallback:?];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__24;
  v43 = __Block_byref_object_dispose__24;
  v44 = 0;
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(COMeshAlarmAddOn *)self performsLocalActions];
    v13 = [v9 connection];
    v14 = [(COMeshAlarmAddOn *)self _currentAccessoryForConnection:v13];

    if (v14)
    {
      v8 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:v14];
    }

    else
    {
      v8 = 0;
    }
  }

  v15 = [v8 categoryType];
  if (v8)
  {
    v16 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v8];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(COMeshAlarmAddOn *)self homekit];
  v18 = [v17 hasOptedToHH2];
  if (v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {

LABEL_21:
    v26 = os_transaction_create();
    v23 = v40[5];
    v40[5] = v26;
    v25 = 1;
    goto LABEL_22;
  }

  v20 = [*MEMORY[0x277CCE8B0] isEqualToString:v15];

  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = os_transaction_create();
  v22 = v40[5];
  v40[5] = v21;

  v23 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(COMeshAddOn *)self meshController];
    *buf = 134217984;
    v46 = v24;
    _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%p locally reading alarms", buf, 0xCu);
  }

  v25 = 0;
LABEL_22:

  v27 = [(COMeshAlarmAddOn *)self _alarmsForAccessory:v8 allowLocalStorage:v12 usingLeader:v25 member:v16 client:v9];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__COMeshAlarmAddOn_alarmsAsAccessory_fromClient_withCallback___block_invoke;
  v36[3] = &unk_278E16C38;
  v28 = v10;
  v37 = v28;
  v38 = &v39;
  v29 = [v27 addFailureBlock:v36];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __62__COMeshAlarmAddOn_alarmsAsAccessory_fromClient_withCallback___block_invoke_2;
  v33[3] = &unk_278E17218;
  v30 = v28;
  v34 = v30;
  v35 = &v39;
  v31 = [v27 addSuccessBlock:v33];

  _Block_object_dispose(&v39, 8);
  v32 = *MEMORY[0x277D85DE8];
}

void __62__COMeshAlarmAddOn_alarmsAsAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __62__COMeshAlarmAddOn_alarmsAsAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)alarmsForAccessories:(id)a3 fromClient:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshController];
  v12 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn alarmsForAccessories:fromClient:callback:];
  }

  if ([v8 count])
  {
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__24;
    v41[4] = __Block_byref_object_dispose__24;
    v42 = MEMORY[0x277CBEBF8];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__24;
    v39[4] = __Block_byref_object_dispose__24;
    v40 = MEMORY[0x277CBEBF8];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__24;
    v37[4] = __Block_byref_object_dispose__24;
    v38 = MEMORY[0x277CBEBF8];
    v13 = [(COMeshAlarmAddOn *)self homekit];
    v14 = [v13 hasOptedToHH2];

    if (v14)
    {
      v15 = [(COMeshAddOn *)self meshController];
      v16 = [v15 nodeManager];
      v17 = [v16 activeNodesWithSelfNode:1];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_2;
      v30[3] = &unk_278E189E0;
      v18 = v17;
      v31 = v18;
      v32 = self;
      v34 = v39;
      v35 = v37;
      v33 = v11;
      [v8 enumerateObjectsUsingBlock:v30];
    }

    else
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke;
      v36[3] = &unk_278E189B8;
      v36[4] = v41;
      v36[5] = v39;
      [v8 enumerateObjectsUsingBlock:v36];
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__24;
    v28[4] = __Block_byref_object_dispose__24;
    v29 = os_transaction_create();
    v19 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_229;
    block[3] = &unk_278E18AF8;
    v24 = v41;
    block[4] = self;
    v25 = v39;
    v21 = v11;
    v22 = v9;
    v26 = v37;
    v23 = v10;
    v27 = v28;
    dispatch_async(v19, block);

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v37, 8);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);
  }

  else
  {
    (*(v10 + 2))(v10, MEMORY[0x277CBEC10], 0);
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277CCE8B0];
  v4 = a2;
  v5 = [v4 categoryType];
  LODWORD(v3) = [v3 isEqualToString:v5];

  if (v3)
  {
    v6 = 32;
  }

  else
  {
    v6 = 40;
  }

  v7 = [*(*(*(a1 + v6) + 8) + 40) arrayByAddingObject:v4];

  v8 = *(*(a1 + v6) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 categoryType];
  v5 = [v3 IDSIdentifier];
  if (![v4 isEqualToString:*MEMORY[0x277CCE8B0]] || (COMeshNodeForIDSIdentifier(*(a1 + 32), v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) arrayByAddingObject:v3];
    v8 = *(a1 + 56);
LABEL_4:
    v9 = *(v8 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    goto LABEL_5;
  }

  v12 = [*(a1 + 40) secondaryClusterMemberForAccessory:v3];

  if (v12)
  {
    v7 = [*(*(*(a1 + 64) + 8) + 40) arrayByAddingObject:v3];
    v8 = *(a1 + 64);
    goto LABEL_4;
  }

  v13 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 48);
    v15 = 134218242;
    v16 = v14;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p not getting alarms for %@, accessory unavailable", &v15, 0x16u);
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_229(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v3 = [*(a1 + 32) homekit];
    v4 = *(*(*(a1 + 64) + 8) + 40);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_2_230;
    v59[3] = &unk_278E18A08;
    v60 = v3;
    v61 = v2;
    v5 = v3;
    [v4 enumerateObjectsUsingBlock:v59];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([*(*(*(a1 + 72) + 8) + 40) count])
  {
    v7 = objc_alloc_init(MEMORY[0x277D2C900]);
    [v6 addObject:v7];
    if ([*(a1 + 32) performsLocalActions] && (objc_msgSend(*(a1 + 40), "leader"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      v32 = [*(a1 + 32) alarmManager];
      v17 = [v32 alarms];

      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_3;
      v55[3] = &unk_278E18A58;
      v33 = *(a1 + 32);
      v58 = *(a1 + 72);
      v55[4] = v33;
      v56 = v2;
      v57 = v7;
      v16 = v7;
      v34 = [v17 addCompletionBlock:v55];
    }

    else
    {
      v9 = objc_alloc_init(COAlarmReadRequest);
      v10 = [*(a1 + 48) clientLifetimeActivity];
      v11 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v10];

      if (v11)
      {
        [(COMeshRequest *)v9 setActivity:v11];
        nw_activity_activate();
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_6;
      v47[3] = &unk_278E18A80;
      v48 = v11;
      v49 = v9;
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v54 = *(a1 + 72);
      v14 = *(a1 + 32);
      v50 = v13;
      v51 = v14;
      v52 = v2;
      v53 = v7;
      v15 = v7;
      v16 = v9;
      v17 = v11;
      [v12 sendRequest:v16 withCompletionHandler:v47];
    }
  }

  v18 = *(*(*(a1 + 80) + 8) + 40);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_9;
  v42[3] = &unk_278E18AD0;
  v19 = *(a1 + 32);
  v43 = v6;
  v44 = v19;
  v45 = *(a1 + 48);
  v20 = v2;
  v46 = v20;
  v21 = v6;
  [v18 enumerateObjectsUsingBlock:v42];
  v22 = MEMORY[0x277D2C938];
  v23 = [*(a1 + 40) dispatchQueue];
  v24 = [v22 schedulerWithDispatchQueue:v23];

  v25 = [MEMORY[0x277D2C900] combineAllFutures:v21 ignoringErrors:1 scheduler:v24];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_11;
  v38[3] = &unk_278E17290;
  v26 = *(a1 + 56);
  v39 = v20;
  v40 = v26;
  v41 = *(a1 + 88);
  v27 = v20;
  v28 = [v25 addSuccessBlock:v38];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_12;
  v35[3] = &unk_278E16C38;
  v29 = *(a1 + 56);
  v30 = *(a1 + 88);
  v36 = v29;
  v37 = v30;
  v31 = [v25 addFailureBlock:v35];
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_2_230(uint64_t a1, void *a2)
{
  v11 = [a2 uniqueIdentifier];
  v3 = [*(a1 + 32) accessoryWithUniqueIdentifier:?];
  v4 = [*(a1 + 32) homeForAccessory:v3];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) alarmsForAccessory:v3 inHome:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    [v7 setObject:v10 forKey:v11];
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 48) finishWithError:a3];
  }

  else
  {
    v7 = *(*(*(a1 + 56) + 8) + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_4;
    v11[3] = &unk_278E16E38;
    v8 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [v7 enumerateObjectsUsingBlock:v11];
    [*(a1 + 48) finishWithNoResult];
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_5;
  v10 = &unk_278E18A30;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v5 = v3;
  v6 = [v4 na_filter:&v7];
  [*(a1 + 48) setObject:v6 forKey:{v5, v7, v8, v9, v10, v11}];
}

uint64_t __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_5(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v2 _isAlarm:v4 targetingAccessoryIdentifiers:{v5, v9, v10}];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
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
    [*(a1 + 72) finishWithError:v13];
  }

  else
  {
    v22 = *(*(*(a1 + 80) + 8) + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_7;
    v26[3] = &unk_278E16E38;
    v23 = v12;
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    [v22 enumerateObjectsUsingBlock:v26];
    [*(a1 + 72) finishWithNoResult];
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) alarms];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_8;
  v10 = &unk_278E18A30;
  v11 = *(a1 + 40);
  v12 = v3;
  v5 = v3;
  v6 = [v4 na_filter:&v7];

  [*(a1 + 48) setObject:v6 forKey:{v5, v7, v8, v9, v10, v11}];
}

uint64_t __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v2 _isAlarm:v4 targetingAccessoryIdentifiers:{v5, v9, v10}];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  [*(a1 + 32) addObject:v4];
  v5 = *(a1 + 40);
  v6 = [v5 secondaryClusterMemberForAccessory:v3];
  v7 = [v5 _alarmsForAccessory:v3 allowLocalStorage:0 usingLeader:0 member:v6 client:*(a1 + 48)];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_10;
  v11[3] = &unk_278E18AA8;
  v12 = *(a1 + 56);
  v13 = v3;
  v14 = v4;
  v8 = v4;
  v9 = v3;
  v10 = [v7 addCompletionBlock:v11];
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (a3)
  {
    [*(a1 + 48) finishWithError:a3];
  }

  else
  {
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) uniqueIdentifier];
    [v7 setObject:v6 forKey:v8];

    [*(a1 + 48) finishWithNoResult];
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_11(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_12(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)addAlarm:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v29 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = [v11 categoryType];
  }

  else
  {
    v13 = 0;
  }

  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn addAlarm:v10 asAccessory:v14 fromClient:? withCallback:?];
  }

  v15 = [v10 siriContext];
  v28 = [v15 objectForKey:*MEMORY[0x277CFCEC8]];
  v16 = [(COMeshAlarmAddOn *)self homekit];
  v17 = [v16 hasOptedToHH2];
  if (v13)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) != 0 || ![*MEMORY[0x277CCE8B0] isEqualToString:v13])
  {
    if (v11)
    {
      v24 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v11];
    }

    else
    {
      v24 = 0;
    }

    v25 = [(COMeshAlarmAddOn *)self addAlarm:v10 member:v24 client:v29];
    [(COMeshAlarmAddOn *)self _addCompletionsToFuture:v25 withXPCCallback:v12 transactionDescription:"com.apple.CoordinationCore.alarms.create"];

    if (v11)
    {
    }
  }

  else
  {
    v27 = [(COAlarmRequest *)[COAlarmCreateRequest alloc] initWithAlarm:v10];
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__24;
    v34[4] = __Block_byref_object_dispose__24;
    v35 = os_transaction_create();
    v19 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(COMeshAddOn *)self meshController];
      v21 = [v10 alarmID];
      *buf = 134218242;
      v37 = v20;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%p locally adding %@", buf, 0x16u);
    }

    v22 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__COMeshAlarmAddOn_addAlarm_asAccessory_fromClient_withCallback___block_invoke;
    block[3] = &unk_278E18B48;
    block[4] = self;
    v31 = v27;
    v32 = v12;
    v33 = v34;
    v23 = v27;
    dispatch_async(v22, block);

    _Block_object_dispose(v34, 8);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __65__COMeshAlarmAddOn_addAlarm_asAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__COMeshAlarmAddOn_addAlarm_asAccessory_fromClient_withCallback___block_invoke_2;
  v6[3] = &unk_278E18B20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 handleAlarmCreateRequest:v3 callback:v6];
}

void __65__COMeshAlarmAddOn_addAlarm_asAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    (*(v4 + 16))(*(a1 + 32), a3);
  }

  else
  {
    v5 = [a2 error];
    (*(v4 + 16))(v4, v5);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)updateAlarm:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v37 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = [v11 uniqueIdentifier];
    v14 = [v11 categoryType];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn updateAlarm:v10 asAccessory:v15 fromClient:? withCallback:?];
  }

  v16 = [(COMeshAlarmAddOn *)self homekit];
  if (!v14)
  {
    if (v13)
    {
      v14 = 0;
      goto LABEL_22;
    }

    v17 = [v37 connection];
    v35 = [v17 co_PeerInstance];

    if (v35 && (-[COMeshAlarmAddOn homehub](self, "homehub"), v18 = objc_claimAutoreleasedReturnValue(), [v18 accessoryIdentifierForPeerInstance:v35 usingHomeKitAdapter:v16], v13 = objc_claimAutoreleasedReturnValue(), v18, v13))
    {
      v19 = [v16 accessoryWithUniqueIdentifier:v13];
      if (!v19)
      {
LABEL_12:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v19 = [v16 currentAccessory];
      v13 = 0;
      if (!v19)
      {
        goto LABEL_12;
      }
    }

    v20 = [v10 siriContext];
    v21 = [v20 objectForKey:*MEMORY[0x277CFCEC8]];

    if (!v21 || (COAlarmSiriContextTargetReferenceForAccessory(), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 compare:v22 options:1] == 0, v22, v23))
    {
      v24 = [v19 category];
      v14 = [v24 categoryType];
    }

    else
    {
      v14 = 0;
    }

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:v19];
    }

    goto LABEL_21;
  }

LABEL_22:
  v25 = [v16 hasOptedToHH2];
  if (v14)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) != 0 || ![*MEMORY[0x277CCE8B0] isEqualToString:v14])
  {
    if (v11)
    {
      v32 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v11];
    }

    else
    {
      v32 = 0;
    }

    v33 = [(COMeshAlarmAddOn *)self updateAlarm:v10 member:v32 client:v37];
    [(COMeshAlarmAddOn *)self _addCompletionsToFuture:v33 withXPCCallback:v12 transactionDescription:"com.apple.CoordinationCore.alarms.update"];

    if (v11)
    {
    }
  }

  else
  {
    v36 = [(COAlarmRequest *)[COAlarmUpdateRequest alloc] initWithAlarm:v10];
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy__24;
    v42[4] = __Block_byref_object_dispose__24;
    v43 = os_transaction_create();
    v27 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(COMeshAddOn *)self meshController];
      v29 = [v10 alarmID];
      *buf = 134218242;
      v45 = v28;
      v46 = 2112;
      v47 = v29;
      _os_log_impl(&dword_244378000, v27, OS_LOG_TYPE_DEFAULT, "%p locally updating %@", buf, 0x16u);
    }

    v30 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__COMeshAlarmAddOn_updateAlarm_asAccessory_fromClient_withCallback___block_invoke;
    block[3] = &unk_278E18B48;
    block[4] = self;
    v39 = v36;
    v40 = v12;
    v41 = v42;
    v31 = v36;
    dispatch_async(v30, block);

    _Block_object_dispose(v42, 8);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __68__COMeshAlarmAddOn_updateAlarm_asAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__COMeshAlarmAddOn_updateAlarm_asAccessory_fromClient_withCallback___block_invoke_2;
  v6[3] = &unk_278E18B20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 handleAlarmUpdateRequest:v3 callback:v6];
}

void __68__COMeshAlarmAddOn_updateAlarm_asAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    (*(v4 + 16))(*(a1 + 32), a3);
  }

  else
  {
    v5 = [a2 error];
    (*(v4 + 16))(v4, v5);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)removeAlarm:(id)a3 asAccessory:(id)a4 fromClient:(id)a5 withCallback:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v37 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = [v11 uniqueIdentifier];
    v14 = [v11 categoryType];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn removeAlarm:v10 asAccessory:v15 fromClient:? withCallback:?];
  }

  v16 = [(COMeshAlarmAddOn *)self homekit];
  if (!v14)
  {
    if (v13)
    {
      v14 = 0;
      goto LABEL_22;
    }

    v17 = [v37 connection];
    v35 = [v17 co_PeerInstance];

    if (v35 && (-[COMeshAlarmAddOn homehub](self, "homehub"), v18 = objc_claimAutoreleasedReturnValue(), [v18 accessoryIdentifierForPeerInstance:v35 usingHomeKitAdapter:v16], v13 = objc_claimAutoreleasedReturnValue(), v18, v13))
    {
      v19 = [v16 accessoryWithUniqueIdentifier:v13];
      if (!v19)
      {
LABEL_12:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v19 = [v16 currentAccessory];
      v13 = 0;
      if (!v19)
      {
        goto LABEL_12;
      }
    }

    v20 = [v10 siriContext];
    v21 = [v20 objectForKey:*MEMORY[0x277CFCEC8]];

    if (!v21 || (COAlarmSiriContextTargetReferenceForAccessory(), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 compare:v22 options:1] == 0, v22, v23))
    {
      v24 = [v19 category];
      v14 = [v24 categoryType];
    }

    else
    {
      v14 = 0;
    }

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:v19];
    }

    goto LABEL_21;
  }

LABEL_22:
  v25 = [v16 hasOptedToHH2];
  if (v14)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) != 0 || ![*MEMORY[0x277CCE8B0] isEqualToString:v14])
  {
    if (v11)
    {
      v32 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v11];
    }

    else
    {
      v32 = 0;
    }

    v33 = [(COMeshAlarmAddOn *)self removeAlarm:v10 member:v32 client:v37];
    [(COMeshAlarmAddOn *)self _addCompletionsToFuture:v33 withXPCCallback:v12 transactionDescription:"com.apple.CoordinationCore.alarms.delete"];

    if (v11)
    {
    }
  }

  else
  {
    v36 = [(COAlarmRequest *)[COAlarmDeleteRequest alloc] initWithAlarm:v10];
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy__24;
    v42[4] = __Block_byref_object_dispose__24;
    v43 = os_transaction_create();
    v27 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(COMeshAddOn *)self meshController];
      v29 = [v10 alarmID];
      *buf = 134218242;
      v45 = v28;
      v46 = 2112;
      v47 = v29;
      _os_log_impl(&dword_244378000, v27, OS_LOG_TYPE_DEFAULT, "%p locally removing %@", buf, 0x16u);
    }

    v30 = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__COMeshAlarmAddOn_removeAlarm_asAccessory_fromClient_withCallback___block_invoke;
    block[3] = &unk_278E18B48;
    block[4] = self;
    v39 = v36;
    v40 = v12;
    v41 = v42;
    v31 = v36;
    dispatch_async(v30, block);

    _Block_object_dispose(v42, 8);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __68__COMeshAlarmAddOn_removeAlarm_asAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__COMeshAlarmAddOn_removeAlarm_asAccessory_fromClient_withCallback___block_invoke_2;
  v6[3] = &unk_278E18B20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 handleAlarmDeleteRequest:v3 callback:v6];
}

void __68__COMeshAlarmAddOn_removeAlarm_asAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    (*(v4 + 16))(*(a1 + 32), a3);
  }

  else
  {
    v5 = [a2 error];
    (*(v4 + 16))(v4, v5);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)snoozeAlarmWithIdentifier:(id)a3 fromClient:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshController];
  v12 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn snoozeAlarmWithIdentifier:fromClient:withCallback:];
  }

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__24;
  v38[4] = __Block_byref_object_dispose__24;
  v39 = os_transaction_create();
  v13 = [(COMeshAlarmAddOn *)self snoozeAlarmWithIdentifier:v8 client:v9];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke;
  v33[3] = &unk_278E18B70;
  v14 = v11;
  v34 = v14;
  v15 = v8;
  v35 = v15;
  v16 = v10;
  v36 = v16;
  v37 = v38;
  v17 = [v13 addFailureBlock:v33];
  v18 = [(COMeshAlarmAddOn *)self alarmManager];
  v19 = [(COMeshAlarmAddOn *)self homekit];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_239;
  v26[3] = &unk_278E18C10;
  v20 = v14;
  v27 = v20;
  v21 = v15;
  v28 = v21;
  v22 = v16;
  v31 = v22;
  v23 = v19;
  v29 = v23;
  v24 = v18;
  v30 = v24;
  v32 = v38;
  v25 = [v13 addSuccessBlock:v26];

  _Block_object_dispose(v38, 8);
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_239(uint64_t a1)
{
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_239_cold_1(a1);
  }

  (*(*(a1 + 64) + 16))();
  v3 = [*(a1 + 48) currentAccessory];
  v4 = [*(a1 + 48) homeForAccessory:v3];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [*(a1 + 56) alarms];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_240;
    v12[3] = &unk_278E18BE8;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = v3;
    v16 = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 72);
    v17 = v7;
    v18 = v8;
    v9 = [v6 addCompletionBlock:v12];

    v10 = v13;
  }

  else
  {
    v11 = *(*(a1 + 72) + 8);
    v10 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_240(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 32)];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v32 + 1) + 8 * v9);
      if (([*(a1 + 40) hasOptedToHH2] & 1) == 0)
      {
        v11 = [v10 alarmID];
        v12 = [v4 isEqual:v11];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = [*(a1 + 40) alarmsForAccessory:*(a1 + 48) inHome:*(a1 + 56)];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_2;
    v30[3] = &unk_278E18B98;
    v31 = v4;
    v16 = [v15 na_firstObjectPassingTest:v30];

    if (v16 && ([v16 isEnabled] & 1) == 0)
    {
      v18 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 64);
        v20 = *(a1 + 32);
        *buf = 134218242;
        v37 = v19;
        v38 = 2112;
        v39 = v20;
        _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p updating the state of the snoozed alarm %@", buf, 0x16u);
      }

      v21 = [v10 mutableCopy];
      [v21 setEnabled:1];
      v17 = [*(a1 + 40) updateAlarm:v21 onAccessory:*(a1 + 48) inHome:*(a1 + 56)];
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_10:
  }

  v17 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_22:
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_241;
  v26[3] = &unk_278E18BC0;
  v27 = *(a1 + 64);
  v22 = *(a1 + 32);
  v23 = *(a1 + 72);
  v28 = v22;
  v29 = v23;
  v24 = [v17 addCompletionBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_241(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 134218242;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p done updating the state of the snoozed alarm %@", &v8, 0x16u);
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dismissAlarmWithIdentifier:(id)a3 fromClient:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshController];
  v12 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn dismissAlarmWithIdentifier:fromClient:withCallback:];
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__24;
  v33[4] = __Block_byref_object_dispose__24;
  v34 = os_transaction_create();
  v13 = [(COMeshAlarmAddOn *)self dismissAlarmWithIdentifier:v8 client:v9];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke;
  v27[3] = &unk_278E18C88;
  v14 = v11;
  v28 = v14;
  v15 = v8;
  v29 = v15;
  v30 = self;
  v16 = v10;
  v31 = v16;
  v32 = v33;
  v17 = [v13 addFailureBlock:v27];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_245;
  v22[3] = &unk_278E18CB0;
  v18 = v14;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  v20 = v16;
  v25 = v20;
  v26 = v33;
  v21 = [v13 addSuccessBlock:v22];

  _Block_object_dispose(v33, 8);
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 48) alarmManager];
  v4 = [v3 dismissAlarmWithIdentifier:*(a1 + 40)];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_243;
  v20[3] = &unk_278E18B70;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = *(a1 + 64);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v21 = v8;
  v22 = v7;
  v9 = [v4 addFailureBlock:v20];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_244;
  v14[3] = &unk_278E18C60;
  v15 = v3;
  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v18 = v10;
  v19 = v11;
  v12 = v3;
  v13 = [v4 addSuccessBlock:v14];
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_243(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_243_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_244(uint64_t a1)
{
  v2 = [*(a1 + 32) alarms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_2;
  v9[3] = &unk_278E18C38;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v3 = [v2 addSuccessBlock:v9];

  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_244_cold_1((a1 + 48));
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v5, v6);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 32)];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 alarmID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v13 = [COAlarmFiringAlarmDismissedNotification alloc];
          v22 = v10;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
          v15 = [(COAlarmNotification *)v13 initWithAlarms:v14];

          v16 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_2_cold_1(a1, v10);
          }

          [*(a1 + 40) sendNotification:v15];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_245(uint64_t a1)
{
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_245_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)canDispatchAsAccessory:(id)a3 asInstance:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshControllerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke;
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

void __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [*(a1 + 32) categoryType];
  v4 = [*(a1 + 32) IDSIdentifier];
  v5 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 134218754;
    v53 = v6;
    v54 = 2112;
    v55 = v7;
    v56 = 2112;
    v57 = v2;
    v58 = 2112;
    v59 = v3;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p as %@ checking dispatch for %@ of %@...", buf, 0x2Au);
  }

  if (!(*(a1 + 48) | v2))
  {
    LODWORD(v8) = 1;
    goto LABEL_43;
  }

  v9 = [v3 isEqualToString:*MEMORY[0x277CCE8B0]];
  v11 = (a1 + 40);
  v10 = *(a1 + 40);
  if (v9)
  {
    v12 = [v10 homekit];
    v13 = [v12 hasOptedToHH2];

    if (v13)
    {
      v14 = [*v11 meshController];
      v15 = [v14 state];

      v16 = [*v11 ourInterests];
      v17 = [v16 objectForKey:v4];

      if (v17)
      {
        v8 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(a1 + 32);
          v41 = *(a1 + 40);
          *buf = 134218498;
          v53 = v41;
          v54 = 2048;
          v55 = v17;
          v56 = 2112;
          v57 = v42;
          _os_log_debug_impl(&dword_244378000, v8, OS_LOG_TYPE_DEBUG, "%p using interest tracker %p for can dispatch of %@", buf, 0x20u);
        }

        LODWORD(v8) = [v17 canDispatchWithPrimary:v15 == 3];
      }

      else
      {
        if (v15 == 3)
        {
          v26 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_3((a1 + 40));
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v27 = [*v11 meshController];
          v28 = [v27 nodes];

          obj = v28;
          v29 = [v28 countByEnumeratingWithState:&v48 objects:v63 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v49;
            while (2)
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v49 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = [*(*(&v48 + 1) + 8 * i) IDSIdentifier];
                v34 = [v33 isEqual:v4];

                if (v34)
                {

                  goto LABEL_41;
                }
              }

              v30 = [obj countByEnumeratingWithState:&v48 objects:v63 count:16];
              if (v30)
              {
                continue;
              }

              break;
            }
          }
        }

        v35 = [*(a1 + 40) secondaryClusterMemberForAccessory:*(a1 + 32)];
        LODWORD(v8) = v35 != 0;
      }
    }

    else
    {
      v17 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_2((a1 + 40));
      }

      LODWORD(v8) = 1;
    }
  }

  else
  {
    v18 = [v10 meshController];
    v19 = [v18 state];

    if (v19 != 3)
    {
      LODWORD(v8) = 0;
      goto LABEL_43;
    }

    v20 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_1((a1 + 40));
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = [*v11 meshController];
    v17 = [v21 nodes];

    v8 = [v17 countByEnumeratingWithState:&v44 objects:v62 count:16];
    if (v8)
    {
      v22 = *v45;
      while (2)
      {
        for (j = 0; j != v8; j = (j + 1))
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = [*(*(&v44 + 1) + 8 * j) remote];
          v25 = [v24 type];

          if (v25 != -1)
          {
LABEL_41:
            LODWORD(v8) = 1;
            goto LABEL_42;
          }
        }

        v8 = [v17 countByEnumeratingWithState:&v44 objects:v62 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_42:

LABEL_43:
  v36 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    v39 = " not";
    if (v8)
    {
      v39 = "";
    }

    *buf = 134219010;
    v53 = v37;
    v54 = 2112;
    v55 = v38;
    v56 = 2080;
    v57 = v39;
    v58 = 2112;
    v59 = v2;
    v60 = 2112;
    v61 = v3;
    _os_log_impl(&dword_244378000, v36, OS_LOG_TYPE_DEFAULT, "%p as %@ can%s dispatch for %@ of %@", buf, 0x34u);
  }

  (*(*(a1 + 56) + 16))();
  v40 = *MEMORY[0x277D85DE8];
}

- (void)mediaSystemCompanionTransitionedFrom:(id)a3 to:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAlarmAddOn *)self homekit];
  if ([v8 hasOptedToHH2])
  {
    v9 = [v6 isEqual:v7];
    if (v7 != v6 && (v9 & 1) == 0)
    {
      v10 = [v8 currentAccessory];
      v11 = v10;
      if (!v10)
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = [v10 uniqueIdentifier];
      v13 = v12;
      if (v7)
      {
        v14 = [v12 co_compare:v7];
        v15 = COCoreLogForCategory(2);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14 == 1)
        {
          if (v16)
          {
            *buf = 134218498;
            v33 = self;
            v34 = 2112;
            v35 = v13;
            v36 = 2112;
            v37 = v7;
            _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%p system pair alarms deferred by %@ to %@", buf, 0x20u);
          }

          goto LABEL_16;
        }

        if (v16)
        {
          *buf = 134218498;
          v33 = self;
          v34 = 2112;
          v35 = v13;
          v36 = 2112;
          v37 = v7;
          _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%p system pair alarms being coalesced for %@ and %@", buf, 0x20u);
        }

        v15 = [(COMeshAlarmAddOn *)self alarmManager];
        v18 = [v15 alarms];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke;
        v28[3] = &unk_278E17268;
        v29 = v13;
        v30 = v7;
        v31 = self;
        v21 = [v18 addSuccessBlock:v28];

        v20 = v29;
      }

      else
      {
        v17 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v33 = self;
          v34 = 2112;
          v35 = v13;
          v36 = 2112;
          v37 = v6;
          _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%p system pair alarms splitting %@ from %@", buf, 0x20u);
        }

        v15 = [(COMeshAlarmAddOn *)self alarmManager];
        v18 = [v15 alarms];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_248;
        v23[3] = &unk_278E16E60;
        v24 = v13;
        v25 = v6;
        v26 = self;
        v27 = v11;
        v19 = [v18 addSuccessBlock:v23];

        v20 = v24;
      }

LABEL_16:
      goto LABEL_17;
    }
  }

LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
}

void __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke(void *a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v19[0] = a1[4];
  v19[1] = v3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v19 count:2];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_2;
  v17[3] = &unk_278E17E70;
  v17[4] = a1[6];
  v18 = v6;
  v7 = v6;
  v8 = [v5 indexesOfObjectsPassingTest:v17];
  v9 = [v5 objectsAtIndexes:v8];

  v10 = UniqueAlarms(v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_3;
  v14[3] = &unk_278E18968;
  v11 = a1[6];
  v15 = v10;
  v16 = v11;
  v12 = v10;
  [v9 enumerateObjectsUsingBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [*(a1 + 40) removeAlarm:v4];
  }
}

void __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_248(void *a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v23[0] = a1[4];
  v23[1] = v3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v23 count:2];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_2_249;
  v20[3] = &unk_278E17E70;
  v20[4] = a1[6];
  v21 = v6;
  v7 = v6;
  v8 = [v5 indexesOfObjectsPassingTest:v20];
  v9 = [v5 objectsAtIndexes:v8];

  v10 = UniqueAlarms(v9);

  v22 = a1[4];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v12 = a1[7];
  v13 = COAlarmSiriContextTargetReferenceForAccessory();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_3_250;
  v17[3] = &unk_278E188A8;
  v17[4] = a1[6];
  v18 = v11;
  v19 = v13;
  v14 = v13;
  v15 = v11;
  [v10 enumerateObjectsUsingBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_2_249(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 co_targetReference];
  if (v4)
  {
    v5 = [*(a1 + 32) _isAlarm:v3 targetingAccessoryIdentifiers:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_3_250(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D296F0]);
  v5 = [*(a1 + 32) _isAlarm:v3 targetingAccessoryIdentifiers:*(a1 + 40)];
  v6 = COCoreLogForCategory(2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v3 alarmID];
      v10 = [v4 alarmID];
      v19 = 134218498;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v11 = "%p replacing %@ with %@";
LABEL_6:
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, v11, &v19, 0x20u);
    }
  }

  else if (v7)
  {
    v12 = *(a1 + 32);
    v9 = [v3 alarmID];
    v10 = [v4 alarmID];
    v19 = 134218498;
    v20 = v12;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v11 = "%p duplicating %@ to %@";
    goto LABEL_6;
  }

  if (v4)
  {
    [v4 setHour:{objc_msgSend(v3, "hour")}];
    [v4 setMinute:{objc_msgSend(v3, "minute")}];
    [v4 setEnabled:{objc_msgSend(v3, "isEnabled")}];
    [v4 setRepeatSchedule:{objc_msgSend(v3, "repeatSchedule")}];
    v13 = [v3 title];
    [v4 setTitle:v13];

    v14 = [v3 sound];
    [v4 setSound:v14];

    v15 = [v3 siriContext];
    [v4 setSiriContext:v15];

    [v4 co_setTargetReference:*(a1 + 48)];
    v16 = [*(a1 + 32) addAlarm:v4];
    if (v5)
    {
      v17 = [*(a1 + 32) removeAlarm:v3];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)establishSecondaryClusterForAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CFD0B8] isHomeKitUsingAlarmsAndTimersIDSService])
  {
    v5 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = @"com.apple.private.alloy.alarms-timers";
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p HomeKit is making use of IDS Service %@ for alarms", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v5 = [(COMeshAlarmAddOn *)self homekit];
    if (([v5 hasOptedToHH2]& 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    actionDirector = self->_actionDirector;

    if (!actionDirector)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __58__COMeshAlarmAddOn_establishSecondaryClusterForAccessory___block_invoke;
      v8[3] = &unk_278E156B0;
      v8[4] = self;
      v9 = v4;
      [(COMeshAlarmAddOn *)self _withLock:v8];
    }
  }

LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
}

void __58__COMeshAlarmAddOn_establishSecondaryClusterForAccessory___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 80))
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
    obj = [(COMeshAlarmAddOn *)self members];
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
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    goto LABEL_14;
  }

  v5 = [(COMeshAlarmAddOn *)self homekit];
  v6 = [v5 hasOptedToHH2];

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = [v4 categoryType];
  if (([v7 isEqualToString:*MEMORY[0x277CCE8B0]] & 1) == 0)
  {

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = [v4 IDSIdentifier];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(COMeshAddOn *)self meshController];
  v10 = [v9 nodes];

  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) IDSIdentifier];
        v16 = [v15 isEqual:v8];

        if (v16)
        {

          v17 = 0;
          goto LABEL_19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = [(COMeshAlarmAddOn *)self secondaryClusterMemberForAccessory:v4];
LABEL_19:

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)setInterests:(id)a3 asAccessory:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshControllerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__COMeshAlarmAddOn_setInterests_asAccessory_withCallback___block_invoke;
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

void __58__COMeshAlarmAddOn_setInterests_asAccessory_withCallback___block_invoke(uint64_t a1)
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
      v11 = COCoreLogForCategory(2);
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
      v14 = COCoreLogForCategory(2);
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
    v19 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __58__COMeshAlarmAddOn_setInterests_asAccessory_withCallback___block_invoke_cold_1(a1);
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

  v19 = COCoreLogForCategory(2);
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
  v33[2] = __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke;
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
  v25 = [(COMeshAlarmAddOn *)self actionDirector];
  v26 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke_263;
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

void __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(2);
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
      [v11 didChangeCompositionForAlarmAddOn:WeakRetained];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke_263(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke_2;
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

  v6 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn handleAlarmManagerStateResetNotification:?];
  }

  v7 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 accessory];
    v9 = [v8 uniqueIdentifier];

    [v7 alarmAddOn:self resetAccesory:v9];
  }
}

- (void)_reaperFired
{
  v3 = [(COMeshAlarmAddOn *)self homekit];
  v4 = [v3 currentAccessory];
  if (v4)
  {
    v5 = [v3 homeForAccessory:v4];
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v7 doubleForKey:@"ReapExpirationInterval"];
      v9 = v8;
      v10 = [(COMeshAddOn *)self meshControllerQueue];
      if (v10)
      {
        v12[1] = 3221225472;
        v11 = 5184000.0;
        v12[0] = MEMORY[0x277D85DD0];
        v12[2] = __32__COMeshAlarmAddOn__reaperFired__block_invoke;
        v12[3] = &unk_278E18000;
        if (v9 > 0.0)
        {
          v11 = v9;
        }

        v12[4] = self;
        v15 = v11;
        v13 = v4;
        v14 = v6;
        dispatch_async(v10, v12);
      }
    }
  }
}

void __32__COMeshAlarmAddOn__reaperFired__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*(a1 + 56)];
  [v2 reapNonRepeatingAlarmsOlderThanDate:v3 accessory:*(a1 + 40) home:*(a1 + 48)];
}

- (void)reapNonRepeatingAlarmsOlderThanDate:(id)a3 accessory:(id)a4 home:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v11 = arc4random();
    v12 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v45 = v11;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "(%u) Alarm reap started.", buf, 8u);
    }

    v13 = [(COMeshAlarmAddOn *)self homekit];
    v14 = &off_244448000;
    if ([v13 hasOptedToHH2])
    {
      goto LABEL_8;
    }

    v15 = *MEMORY[0x277CCE8B0];
    v16 = [v9 category];
    v17 = [v16 categoryType];
    LOBYTE(v15) = [v15 isEqual:v17];

    if ((v15 & 1) == 0)
    {
LABEL_8:
      v19 = objc_alloc_init(MEMORY[0x277D2C900]);
      v20 = [(COMeshAlarmAddOn *)self alarmManager];
      v21 = [v20 alarms];

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke;
      v40[3] = &unk_278E18AA8;
      v22 = v19;
      v41 = v22;
      v42 = self;
      v43 = v9;
      v23 = [v21 addCompletionBlock:v40];

      v18 = v41;
    }

    else
    {
      v18 = [v13 mediaSystemForAccessory:v9 inHome:v10];
      if (v18)
      {
        [v13 settingsForKeyPath:@"root.mobileTimer.alarms" onMediaObject:v18];
      }

      else
      {
        [v13 settingsForKeyPath:@"root.mobileTimer.alarms" onAccessory:v9];
      }
      v26 = ;
      v21 = [v26 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = COAlarmSiriContextTargetReferenceForAccessory();
        v31 = MEMORY[0x277D2C900];
        [v21 co_rawAlarms];
        v28 = v32 = v11;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2;
        v37[3] = &unk_278E18CD8;
        v38 = v27;
        v18 = v18;
        v39 = v18;
        v30 = v27;
        v29 = [v28 na_map:v37];
        v22 = [v31 futureWithResult:v29];

        v14 = &off_244448000;
        v11 = v32;
      }

      else
      {
        v22 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
      }
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = *(v14 + 186);
    v33[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_3;
    v33[3] = &unk_278E18D98;
    v36 = v11;
    v34 = v8;
    v35 = self;
    v24 = [v22 addSuccessBlock:v33];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [*(a1 + 40) _filteredAlarmsList:v4 forAccessory:*(a1 + 48)];
  [v3 finishWithResult:v5];
}

id __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 co_setTargetReference:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v3 co_setIsMediaSystemOriginating];
  }

  return v3;
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_4;
  v19[3] = &unk_278E18D00;
  v20 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 indexesOfObjectsPassingTest:v19];
  v6 = [v4 objectsAtIndexes:v5];

  if ([v6 count])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_267;
    v17[3] = &unk_278E18D50;
    v17[4] = *(a1 + 40);
    v18 = *(a1 + 48);
    v7 = [v6 na_map:v17];
    v8 = MEMORY[0x277D2C938];
    v9 = [*(a1 + 40) meshControllerQueue];
    v10 = [v8 schedulerWithDispatchQueue:v9];

    v11 = [MEMORY[0x277D2C900] combineAllFutures:v7 ignoringErrors:1 scheduler:v10];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_269;
    v15[3] = &__block_descriptor_36_e20_v24__0_8__NSError_16l;
    v16 = *(a1 + 48);
    v12 = [v11 addCompletionBlock:v15];
  }

  else
  {
    v7 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      *buf = 67109120;
      v22 = v13;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "(%u) Alarm reap complete with no alarms.", buf, 8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastModifiedDate];
  if ([v3 isEnabled])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (([v3 repeats] & 1) == 0 && v4)
    {
      v6 = [v4 earlierDate:*(a1 + 32)];
      v5 = v4 == v6;
    }
  }

  return v5;
}

id __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_267(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) removeAlarm:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2_268;
  v8[3] = &unk_278E18D28;
  v10 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  v6 = [v4 addCompletionBlock:v8];

  return v4;
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2_268(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(2);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2_268_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) alarmID];
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "(%u) Reaped alarm: %@", v10, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_269(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "(%u) Alarm reap complete.", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)director:(id)a3 membersChanged:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(COMeshAlarmAddOn *)self members];
  v7 = [v6 mutableCopy];

  [v7 minusSet:v5];
  [(COMeshAlarmAddOn *)self setMembers:v5];
  v8 = [(COMeshAlarmAddOn *)self interests];
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
    v17 = [(COMeshAlarmAddOn *)self interests];
    v18 = [v17 mutableCopy];

    [v18 removeObjectsForKeys:v10];
    [(COMeshAlarmAddOn *)self setInterests:v18];
    v19 = COCoreLogForCategory(2);
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

        v27 = [(COMeshAlarmAddOn *)self ourInterests];
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
        v36 = [(COMeshAlarmAddOn *)self ourInterests];
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

  v38 = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v38 didChangeCompositionForAlarmAddOn:self];
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
      v17 = v11;
      v19 = [(COAlarmUpdateRequest *)v17 memento];
      v20 = [v19 uniqueIdentifier];

      if (!v20)
      {
        v21 = [(COMeshAlarmAddOn *)self homekit];
        v22 = [v21 currentAccessory];
        v20 = [v22 uniqueIdentifier];
      }

      v23 = [[COAlarmReadRequest alloc] initWithAccessoryUniqueIdentifier:v20];
      objc_initWeak(&location, self);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_2;
      v35[3] = &unk_278E17380;
      v37 = v13;
      objc_copyWeak(&v38, &location);
      v36 = v14;
      [(COMeshAlarmAddOn *)self handleAlarmReadRequest:v23 callback:v35];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [COAlarmUpdateRequest alloc];
        v25 = [v11 alarm];
        v17 = [(COAlarmRequest *)v24 initWithAlarm:v25];

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_3;
        v32[3] = &unk_278E17358;
        v33 = v14;
        v34 = v13;
        [(COMeshAlarmAddOn *)self handleAlarmUpdateRequest:v17 callback:v32];

        v18 = v33;
        goto LABEL_3;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v11 targetIdentifier];
        v20 = [objc_alloc(MEMORY[0x277D296D0]) initWithIdentifier:v17];
        v23 = [(COAlarmRequest *)[COAlarmDeleteRequest alloc] initWithAlarm:v20];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_4;
        v29[3] = &unk_278E17358;
        v30 = v14;
        v31 = v13;
        [(COMeshAlarmAddOn *)self handleAlarmDeleteRequest:v23 callback:v29];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [(COMeshAlarmAddOn *)self interests];
          v17 = [v26 mutableCopy];

          v20 = [v11 targetIdentifiers];
          if ([v20 count])
          {
            [(COAlarmUpdateRequest *)v17 setObject:v20 forKey:v12];
          }

          else
          {
            [(COAlarmUpdateRequest *)v17 removeObjectForKey:v12];
          }

          [(COMeshAlarmAddOn *)self setInterests:v17];
          v27 = [[COMTResult alloc] initWithActionIdentifier:v14];
          (*(v13 + 2))(v13, v27, 0);

          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_15;
        }

        v17 = [(COMeshAlarmAddOn *)self delegate];
        v20 = [v11 reason];
        v23 = [v11 alarms];
        if ([v20 isEqual:*MEMORY[0x277D29590]] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(COAlarmUpdateRequest *)v17 alarmAddOn:self didAddAlarms:v23];
        }

        else if ([v20 isEqual:*MEMORY[0x277D295A8]] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(COAlarmUpdateRequest *)v17 alarmAddOn:self didRemoveAlarms:v23];
        }

        else if ([v20 isEqual:*MEMORY[0x277D295B0]] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(COAlarmUpdateRequest *)v17 alarmAddOn:self didUpdateAlarms:v23];
        }

        v28 = [[COMTResult alloc] initWithActionIdentifier:v14];
        (*(v13 + 2))(v13, v28, 0);
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  v15 = [COAlarmCreateRequest alloc];
  v16 = [v11 alarm];
  v17 = [(COAlarmRequest *)v15 initWithAlarm:v16];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke;
  v40[3] = &unk_278E17358;
  v41 = v14;
  v42 = v13;
  [(COMeshAlarmAddOn *)self handleAlarmCreateRequest:v17 callback:v40];

  v18 = v41;
LABEL_3:

LABEL_14:
LABEL_15:
}

void __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
      v6 = [v9 alarms];
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v8 = [[COMTAlarmReadResult alloc] initWithAlarms:v6 actionIdentifier:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

void __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_4(uint64_t a1, void *a2, void *a3)
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

- (void)didChangeNodesForMeshController:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p merge %p lost final nodes", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_continueMerge:withResponse:fromNode:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p merge %p received last response", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_finishMerge:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_finishMerge:.cold.2()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_alarmManagerAlarmFired:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p will not write because %@ is lower");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_alarmManagerAlarmFired:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p is solo, so it will write.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_alarmManagerAlarmFired:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p alarm firing, but need to synchronize...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_alarmManagerAlarmFired:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p has no updates for synchronization.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = [*(v0 + 40) alarmID];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_filteredAlarmsList:forAccessory:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171_cold_2(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *a2;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_179_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isAlarm:(void *)a1 targetingAccessoryIdentifiers:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 alarmID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_192_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_195_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_198_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_201_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(v0 + 32) meshController];
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmReadRequest:callback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v0, v1, "... alarms list failed (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmCreateRequest:callback:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) alarmID];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_208_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*a2 alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmUpdateRequest:callback:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) alarmID];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_210_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*a2 alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) alarmID];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_211_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = [*a2 alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v3, v4, "%p forwarding snooze of %@ to the mesh");
  v5 = *MEMORY[0x277D85DE8];
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(*(*a2 + 8) + 40) alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_213_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmsAddedNotification:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p added alarms without a list of alarms", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmsRemovedNotification:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p removed alarms without a list of alarms", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmFiringAlarmDismissedNotification:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p dismissed alarms without a list of alarms", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmManagerStateResetNotification:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)alarmsAsAccessory:(void *)a1 fromClient:withCallback:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)alarmsForAccessories:fromClient:callback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  [v0 count];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addAlarm:(NSObject *)a3 asAccessory:fromClient:withCallback:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 meshController];
  v6 = [a2 alarmID];
  v9 = 134218242;
  v10 = v5;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_13(&dword_244378000, a3, v7, "%p serving request to add alarm %@", &v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateAlarm:(NSObject *)a3 asAccessory:fromClient:withCallback:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 meshController];
  v6 = [a2 alarmID];
  v9 = 134218242;
  v10 = v5;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_13(&dword_244378000, a3, v7, "%p serving request to update alarm %@", &v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeAlarm:(NSObject *)a3 asAccessory:fromClient:withCallback:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 meshController];
  v6 = [a2 alarmID];
  v9 = 134218242;
  v10 = v5;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_13(&dword_244378000, a3, v7, "%p serving request to delete alarm %@", &v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)snoozeAlarmWithIdentifier:fromClient:withCallback:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p serving request to snooze alarm %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_239_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  v6 = v1;
  OUTLINED_FUNCTION_13(&dword_244378000, v2, v3, "%p snoozed alarm %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)dismissAlarmWithIdentifier:fromClient:withCallback:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p serving request to dismiss alarm %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  v5 = v1;
  _os_log_error_impl(&dword_244378000, v2, OS_LOG_TYPE_ERROR, "%p trying locally to dismiss alarm %@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_243_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_244_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v3, v4, "%p locally dismissed alarm %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [a2 alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_245_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  v6 = v1;
  OUTLINED_FUNCTION_13(&dword_244378000, v2, v3, "%p dismissed alarm %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v1, v2, "%p looking for non-ephemeral node...", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v1, v2, "%p is HomePod.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v1, v2, "%p looking for HomePod...", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __58__COMeshAlarmAddOn_setInterests_asAccessory_withCallback___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v1, v2, "%p cannot set interests, IDS identifier missing", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2_268_cold_1()
{
  OUTLINED_FUNCTION_9();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  v8 = [*(v0 + 32) alarmID];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

@end