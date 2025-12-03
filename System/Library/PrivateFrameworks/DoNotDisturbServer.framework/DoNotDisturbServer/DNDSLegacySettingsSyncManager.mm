@interface DNDSLegacySettingsSyncManager
+ (id)receiveManagerForPairedDevice:(id)device;
+ (id)sendManagerForPairedDevice:(id)device;
+ (void)cleanupState;
- (DNDSSettingsSyncManagerDataSource)dataSource;
- (DNDSSettingsSyncManagerDelegate)delegate;
- (id)_initWithListen:(BOOL)listen send:(BOOL)send pairedDevice:(id)device;
- (void)_beginMonitoringForChanges;
- (void)_endMonitoringForChanges;
- (void)_propagateBypassSettings:(id)settings;
- (void)_propagateScheduleSettings:(id)settings;
- (void)_updateBypassSettings;
- (void)_updateScheduleSettingsWithDate:(id)date;
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
  synchronize = [v3 synchronize];
}

+ (id)sendManagerForPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] _initWithListen:0 send:1 pairedDevice:deviceCopy];

  return v5;
}

+ (id)receiveManagerForPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] _initWithListen:1 send:0 pairedDevice:deviceCopy];

  return v5;
}

- (id)_initWithListen:(BOOL)listen send:(BOOL)send pairedDevice:(id)device
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = DNDSLegacySettingsSyncManager;
  v9 = [(DNDSLegacySettingsSyncManager *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_listen = listen;
    v9->_send = send;
    v11 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v10->_npsManager;
    v10->_npsManager = v11;

    v13 = objc_alloc(MEMORY[0x277D2BA58]);
    pairingIdentifier = [deviceCopy pairingIdentifier];
    pairingDataStore = [deviceCopy pairingDataStore];
    v16 = [v13 initWithDomain:@"com.apple.nano" pairingID:pairingIdentifier pairingDataStore:pairingDataStore];
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
    dataSource = [(DNDSLegacySettingsSyncManager *)self dataSource];
    v4 = [dataSource phoneCallBypassSettingsForSyncManager:self];
    v5 = [dataSource scheduleSettingsForSyncManager:self];
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

- (void)_propagateScheduleSettings:(id)settings
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = [settingsCopy mutableCopy];
  [v5 scheduleEnabledSetting];
  [v5 setScheduleEnabledSetting:DNDResolvedScheduleEnabledSetting()];
  [v5 setBedtimeBehaviorEnabledSetting:0];
  creationDate = [settingsCopy creationDate];
  v7 = [DNDSScheduleSettings settingsWithClientSettings:v5 creationDate:creationDate];

  synchronize = [(NPSDomainAccessor *)self->_accessor synchronize];
  accessor = self->_accessor;
  creationDate2 = [settingsCopy creationDate];
  v11 = [(NPSDomainAccessor *)accessor dnds_scheduleSettingsWithLastUpdated:creationDate2];

  if (v7 != v11 && (!v7 || !v11 || ([v7 isEqual:v11] & 1) == 0))
  {
    v12 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = settingsCopy;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Got new schedule settings: settings=%{public}@, oldSettings=%{public}@", &v16, 0x16u);
    }

    [(NPSDomainAccessor *)self->_accessor dnds_setScheduleSettings:settingsCopy];
    synchronize2 = [(NPSDomainAccessor *)self->_accessor synchronize];
    v14 = [MEMORY[0x277CBEB98] setWithObject:@"dndEffectiveOverrides"];
    [(NPSManager *)self->_npsManager synchronizeNanoDomain:@"com.apple.nano" keys:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateScheduleSettingsWithDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  synchronize = [(NPSDomainAccessor *)self->_accessor synchronize];
  dataSource = [(DNDSLegacySettingsSyncManager *)self dataSource];
  v7 = [dataSource scheduleSettingsForSyncManager:self];

  if (dateCopy)
  {
    creationDate = dateCopy;
  }

  else
  {
    creationDate = [v7 creationDate];
  }

  v9 = creationDate;
  v10 = [(NPSDomainAccessor *)self->_accessor dnds_scheduleSettingsWithLastUpdated:creationDate];
  v11 = v10;
  if (v10 && v7 != v10 && (!v7 || ([v7 isEqual:v10] & 1) == 0))
  {
    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v13 = date;
    v14 = [DNDSScheduleSettings settingsWithClientSettings:v11 creationDate:date];
    v15 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Got new schedule settings: settings=%{public}@", &v18, 0xCu);
    }

    delegate = [(DNDSLegacySettingsSyncManager *)self delegate];
    [delegate syncManager:self didReceiveUpdatedScheduleSettings:v14];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_propagateBypassSettings:(id)settings
{
  v17 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = [settingsCopy mutableCopy];
  [v5 immediateBypassEventSourceType];
  [v5 setImmediateBypassEventSourceType:DNDResolvedImmediateBypassEventSourceType()];
  [v5 setImmediateBypassCNGroupIdentifier:0];
  [v5 repeatEventSourceBehaviorEnabledSetting];
  [v5 setRepeatEventSourceBehaviorEnabledSetting:DNDResolvedRepeatEventSourceBehaviorEnabledSetting()];
  synchronize = [(NPSDomainAccessor *)self->_accessor synchronize];
  dnds_bypassSettings = [(NPSDomainAccessor *)self->_accessor dnds_bypassSettings];
  v8 = dnds_bypassSettings;
  if (v5 != dnds_bypassSettings && (!v5 || !dnds_bypassSettings || ([v5 isEqual:dnds_bypassSettings] & 1) == 0))
  {
    v9 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = settingsCopy;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Got new bypass settings: settings=%{public}@, oldSettings=%{public}@", &v13, 0x16u);
    }

    [(NPSDomainAccessor *)self->_accessor dnds_setBypassSettings:settingsCopy];
    synchronize2 = [(NPSDomainAccessor *)self->_accessor synchronize];
    v11 = [MEMORY[0x277CBEB98] setWithObject:@"dndPrivilegedSenderTypes"];
    [(NPSManager *)self->_npsManager synchronizeNanoDomain:@"com.apple.nano" keys:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateBypassSettings
{
  v14 = *MEMORY[0x277D85DE8];
  synchronize = [(NPSDomainAccessor *)self->_accessor synchronize];
  dataSource = [(DNDSLegacySettingsSyncManager *)self dataSource];
  v5 = [dataSource phoneCallBypassSettingsForSyncManager:self];

  dnds_bypassSettings = [(NPSDomainAccessor *)self->_accessor dnds_bypassSettings];
  v7 = dnds_bypassSettings;
  if (dnds_bypassSettings)
  {
    v8 = dnds_bypassSettings == v5;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (!v5 || ([dnds_bypassSettings isEqual:v5] & 1) == 0))
  {
    v9 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Got new bypass settings: settings=%{public}@", &v12, 0xCu);
    }

    delegate = [(DNDSLegacySettingsSyncManager *)self delegate];
    [delegate syncManager:self didReceiveUpdatedPhoneCallBypassSettings:v7];
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