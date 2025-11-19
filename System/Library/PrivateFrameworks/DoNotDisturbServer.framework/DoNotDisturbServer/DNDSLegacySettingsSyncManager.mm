@interface DNDSLegacySettingsSyncManager
+ (id)receiveManagerForPairedDevice:(id)a3;
+ (id)sendManagerForPairedDevice:(id)a3;
+ (void)cleanupState;
- (DNDSSettingsSyncManagerDataSource)dataSource;
- (DNDSSettingsSyncManagerDelegate)delegate;
- (id)_initWithListen:(BOOL)a3 send:(BOOL)a4 pairedDevice:(id)a5;
- (void)_beginMonitoringForChanges;
- (void)_endMonitoringForChanges;
- (void)_propagateBypassSettings:(id)a3;
- (void)_propagateScheduleSettings:(id)a3;
- (void)_updateBypassSettings;
- (void)_updateScheduleSettingsWithDate:(id)a3;
- (void)dealloc;
- (void)resume;
- (void)update;
@end

@implementation DNDSLegacySettingsSyncManager

+ (void)cleanupState
{
  v2 = DNDSLogLegacySettingsSync;
  if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up state", v5, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano"];
  [v3 removeObjectForKey:@"dndEffectiveOverrides"];
  [v3 removeObjectForKey:@"dndPrivilegedSenderTypes"];
  v4 = [v3 synchronize];
}

+ (id)sendManagerForPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithListen:0 send:1 pairedDevice:v4];

  return v5;
}

+ (id)receiveManagerForPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithListen:1 send:0 pairedDevice:v4];

  return v5;
}

- (id)_initWithListen:(BOOL)a3 send:(BOOL)a4 pairedDevice:(id)a5
{
  v8 = a5;
  v19.receiver = self;
  v19.super_class = DNDSLegacySettingsSyncManager;
  v9 = [(DNDSLegacySettingsSyncManager *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_listen = a3;
    v9->_send = a4;
    v11 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v10->_npsManager;
    v10->_npsManager = v11;

    v13 = objc_alloc(MEMORY[0x277D2BA58]);
    v14 = [v8 pairingIdentifier];
    v15 = [v8 pairingDataStore];
    v16 = [v13 initWithDomain:@"com.apple.nano" pairingID:v14 pairingDataStore:v15];
    accessor = v10->_accessor;
    v10->_accessor = v16;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_listen)
  {
    [(DNDSLegacySettingsSyncManager *)self _endMonitoringForChanges];
  }

  v3.receiver = self;
  v3.super_class = DNDSLegacySettingsSyncManager;
  [(DNDSLegacySettingsSyncManager *)&v3 dealloc];
}

- (void)resume
{
  if (self->_listen)
  {
    [(DNDSLegacySettingsSyncManager *)self _beginMonitoringForChanges];
    [(DNDSLegacySettingsSyncManager *)self _updateBypassSettings];
    [(DNDSLegacySettingsSyncManager *)self _updateScheduleSettingsWithDate:0];
  }

  [(DNDSLegacySettingsSyncManager *)self update];
}

- (void)update
{
  if (self->_send)
  {
    v6 = [(DNDSLegacySettingsSyncManager *)self dataSource];
    v4 = [v6 phoneCallBypassSettingsForSyncManager:self];
    v5 = [v6 scheduleSettingsForSyncManager:self];
    [(DNDSLegacySettingsSyncManager *)self _propagateBypassSettings:v4];
    [(DNDSLegacySettingsSyncManager *)self _propagateScheduleSettings:v5];
  }
}

- (void)_beginMonitoringForChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, DNDEffectiveOverridesChanged, @"DNDEffectiveOverridesChangedNotification", 0, 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v4, self, DNDPrivilegedSenderChanged, @"DNDPrivilegedSenderChangedNotification", 0, 0);
}

- (void)_endMonitoringForChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"DNDEffectiveOverridesChangedNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(v4, self, @"DNDPrivilegedSenderChangedNotification", 0);
}

- (void)_propagateScheduleSettings:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  [v5 scheduleEnabledSetting];
  [v5 setScheduleEnabledSetting:DNDResolvedScheduleEnabledSetting()];
  [v5 setBedtimeBehaviorEnabledSetting:0];
  v6 = [v4 creationDate];
  v7 = [DNDSScheduleSettings settingsWithClientSettings:v5 creationDate:v6];

  v8 = [(NPSDomainAccessor *)self->_accessor synchronize];
  accessor = self->_accessor;
  v10 = [v4 creationDate];
  v11 = [(NPSDomainAccessor *)accessor dnds_scheduleSettingsWithLastUpdated:v10];

  if (v7 != v11 && (!v7 || !v11 || ([v7 isEqual:v11] & 1) == 0))
  {
    v12 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = v4;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Got new schedule settings: settings=%{public}@, oldSettings=%{public}@", &v16, 0x16u);
    }

    [(NPSDomainAccessor *)self->_accessor dnds_setScheduleSettings:v4];
    v13 = [(NPSDomainAccessor *)self->_accessor synchronize];
    v14 = [MEMORY[0x277CBEB98] setWithObject:@"dndEffectiveOverrides"];
    [(NPSManager *)self->_npsManager synchronizeNanoDomain:@"com.apple.nano" keys:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateScheduleSettingsWithDate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self->_accessor synchronize];
  v6 = [(DNDSLegacySettingsSyncManager *)self dataSource];
  v7 = [v6 scheduleSettingsForSyncManager:self];

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = [v7 creationDate];
  }

  v9 = v8;
  v10 = [(NPSDomainAccessor *)self->_accessor dnds_scheduleSettingsWithLastUpdated:v8];
  v11 = v10;
  if (v10 && v7 != v10 && (!v7 || ([v7 isEqual:v10] & 1) == 0))
  {
    if (v4)
    {
      v12 = v4;
    }

    else
    {
      v12 = [MEMORY[0x277CBEAA8] date];
    }

    v13 = v12;
    v14 = [DNDSScheduleSettings settingsWithClientSettings:v11 creationDate:v12];
    v15 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Got new schedule settings: settings=%{public}@", &v18, 0xCu);
    }

    v16 = [(DNDSLegacySettingsSyncManager *)self delegate];
    [v16 syncManager:self didReceiveUpdatedScheduleSettings:v14];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_propagateBypassSettings:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  [v5 immediateBypassEventSourceType];
  [v5 setImmediateBypassEventSourceType:DNDResolvedImmediateBypassEventSourceType()];
  [v5 setImmediateBypassCNGroupIdentifier:0];
  [v5 repeatEventSourceBehaviorEnabledSetting];
  [v5 setRepeatEventSourceBehaviorEnabledSetting:DNDResolvedRepeatEventSourceBehaviorEnabledSetting()];
  v6 = [(NPSDomainAccessor *)self->_accessor synchronize];
  v7 = [(NPSDomainAccessor *)self->_accessor dnds_bypassSettings];
  v8 = v7;
  if (v5 != v7 && (!v5 || !v7 || ([v5 isEqual:v7] & 1) == 0))
  {
    v9 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v4;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Got new bypass settings: settings=%{public}@, oldSettings=%{public}@", &v13, 0x16u);
    }

    [(NPSDomainAccessor *)self->_accessor dnds_setBypassSettings:v4];
    v10 = [(NPSDomainAccessor *)self->_accessor synchronize];
    v11 = [MEMORY[0x277CBEB98] setWithObject:@"dndPrivilegedSenderTypes"];
    [(NPSManager *)self->_npsManager synchronizeNanoDomain:@"com.apple.nano" keys:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateBypassSettings
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(NPSDomainAccessor *)self->_accessor synchronize];
  v4 = [(DNDSLegacySettingsSyncManager *)self dataSource];
  v5 = [v4 phoneCallBypassSettingsForSyncManager:self];

  v6 = [(NPSDomainAccessor *)self->_accessor dnds_bypassSettings];
  v7 = v6;
  if (v6)
  {
    v8 = v6 == v5;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (!v5 || ([v6 isEqual:v5] & 1) == 0))
  {
    v9 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Got new bypass settings: settings=%{public}@", &v12, 0xCu);
    }

    v10 = [(DNDSLegacySettingsSyncManager *)self delegate];
    [v10 syncManager:self didReceiveUpdatedPhoneCallBypassSettings:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (DNDSSettingsSyncManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSSettingsSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end