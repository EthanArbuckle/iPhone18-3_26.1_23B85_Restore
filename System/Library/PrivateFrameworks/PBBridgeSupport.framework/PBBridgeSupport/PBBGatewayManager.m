@interface PBBGatewayManager
+ (id)dateComponentsFromDNDScheduleTime:(id)a3;
+ (id)sharedManager;
- (BOOL)pairSyncEnabled;
- (BOOL)pairSyncStateEditable;
- (PBBGatewayManager)init;
- (PBBGatewayManagerDelegate)delegate;
- (void)dealloc;
- (void)globalConfigurationService:(id)a3 didReceiveUpdatedPairSyncState:(unint64_t)a4;
- (void)loadBBSections;
- (void)loadDNDState;
@end

@implementation PBBGatewayManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PBBGatewayManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __34__PBBGatewayManager_sharedManager__block_invoke()
{
  sharedManager___sharedManager = objc_alloc_init(PBBGatewayManager);

  return MEMORY[0x2821F96F8]();
}

- (PBBGatewayManager)init
{
  v12.receiver = self;
  v12.super_class = PBBGatewayManager;
  v2 = [(PBBGatewayManager *)&v12 init];
  if (v2)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v3 = getBBSettingsGatewayClass_softClass;
    v17 = getBBSettingsGatewayClass_softClass;
    if (!getBBSettingsGatewayClass_softClass)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __getBBSettingsGatewayClass_block_invoke;
      v13[3] = &unk_2799F3EB8;
      v13[4] = &v14;
      __getBBSettingsGatewayClass_block_invoke(v13);
      v3 = v15[3];
    }

    v4 = v3;
    _Block_object_dispose(&v14, 8);
    v5 = [v3 alloc];
    v6 = dispatch_queue_create("com.apple.Bridge.BBSettingsGateway", 0);
    v7 = [v5 initWithQueue:v6];
    settingsGateway = v2->_settingsGateway;
    v2->_settingsGateway = v7;

    v9 = [MEMORY[0x277D05910] serviceForClientIdentifier:@"com.apple.Bridge-PBBridgeGateway"];
    [(PBBGatewayManager *)v2 setGlobalConfigurationService:v9];

    v10 = [(PBBGatewayManager *)v2 globalConfigurationService];
    [v10 addListener:v2 withCompletionHandler:0];
  }

  return v2;
}

- (void)dealloc
{
  [(BBSettingsGateway *)self->_settingsGateway invalidate];
  v3 = [(PBBGatewayManager *)self globalConfigurationService];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = PBBGatewayManager;
  [(PBBGatewayManager *)&v4 dealloc];
}

- (void)loadBBSections
{
  v3 = dispatch_semaphore_create(0);
  settingsGateway = self->_settingsGateway;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__PBBGatewayManager_loadBBSections__block_invoke;
  v6[3] = &unk_2799F4908;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(BBSettingsGateway *)settingsGateway getSectionInfoForActiveSectionsWithCompletion:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __35__PBBGatewayManager_loadBBSections__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)dateComponentsFromDNDScheduleTime:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEAB8];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    [v5 setHour:{objc_msgSend(v4, "hour")}];
    v6 = [v4 minute];

    [v5 setMinute:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadDNDState
{
  v3 = [MEMORY[0x277D05A98] serviceForClientIdentifier:@"com.apple.Bridge-PBBridgeGateway"];
  v23 = 0;
  v4 = [v3 scheduleSettingsReturningError:&v23];
  v5 = v23;
  [v4 scheduleEnabledSetting];
  v6 = DNDResolvedScheduleEnabledSetting();
  if (v5)
  {
    NSLog(&cfstr_Dndscheduleset.isa, v5);
  }

  self->_isScheduled = v6 == 2;
  v7 = [v4 timePeriod];
  v8 = [v7 startTime];
  v9 = [PBBGatewayManager dateComponentsFromDNDScheduleTime:v8];
  dndFromComponents = self->_dndFromComponents;
  self->_dndFromComponents = v9;

  v11 = [v4 timePeriod];
  v12 = [v11 endTime];
  v13 = [PBBGatewayManager dateComponentsFromDNDScheduleTime:v12];
  dndToComponents = self->_dndToComponents;
  self->_dndToComponents = v13;

  v22 = v5;
  v15 = [v3 phoneCallBypassSettingsReturningError:&v22];
  v16 = v22;

  if (v16)
  {
    NSLog(&cfstr_Dndsettingsser.isa, v16);
  }

  if (v15)
  {
    v17 = [v15 immediateBypassEventSourceType];
    if ((v17 - 1) >= 5)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    self->_doNotDisturbPrivilegedSenderType = v18;
    v19 = [v15 immediateBypassCNGroupIdentifier];
    v20 = [v19 copy];
    doNotDisturbPrivilegedSenderTypeGroupIdentifier = self->_doNotDisturbPrivilegedSenderTypeGroupIdentifier;
    self->_doNotDisturbPrivilegedSenderTypeGroupIdentifier = v20;

    self->_repeatedCallsEnabled = [v15 repeatEventSourceBehaviorEnabledSetting];
  }
}

- (BOOL)pairSyncStateEditable
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(PBBGatewayManager *)self globalConfigurationService];
  v10 = 0;
  v3 = [v2 getPairSyncStateReturningError:&v10];
  v4 = v10;

  if (v4)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 localizedDescription];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Error getting pair sync state editable value: %{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = (~v3 & 3) == 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)pairSyncEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(PBBGatewayManager *)self globalConfigurationService];
  v9 = 0;
  v3 = [v2 getPairSyncStateReturningError:&v9];
  v4 = v9;

  if (v4)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 localizedDescription];
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Error getting pair sync enabled value: %{public}@", buf, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ((v3 >> 2) & 1);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)globalConfigurationService:(id)a3 didReceiveUpdatedPairSyncState:(unint64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__PBBGatewayManager_globalConfigurationService_didReceiveUpdatedPairSyncState___block_invoke;
  v4[3] = &unk_2799F4930;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __79__PBBGatewayManager_globalConfigurationService_didReceiveUpdatedPairSyncState___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 136315394;
    v9 = "[PBBGatewayManager globalConfigurationService:didReceiveUpdatedPairSyncState:]_block_invoke";
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "%s - pairSyncState: %lu", &v8, 0x16u);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 gatewayManagerDidUpdateFocusPairSyncValue];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (PBBGatewayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end