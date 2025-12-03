@interface DNDSSettingsManager
- (BOOL)setBehaviorSettings:(id)settings withError:(id *)error;
- (BOOL)setScheduleSettings:(id)settings withError:(id *)error;
- (DNDSSettingsManager)initWithBackingStore:(id)store contactStore:(id)contactStore;
- (DNDSSettingsManagerDelegate)delegate;
- (id)_readSettingsReturningError:(id *)error;
- (id)behaviorSettingsWithError:(id *)error;
- (id)phoneCallBypassSettingsWithError:(id *)error;
- (id)scheduleSettingsWithError:(id *)error;
- (unint64_t)_saveBehaviorSettings:(id)settings scheduleSettings:(id)scheduleSettings error:(id *)error;
- (unint64_t)_saveConfiguration:(id)configuration forModeIdentifier:(id)identifier error:(id *)error;
- (unint64_t)_writeSettingsRecord:(id)record error:(id *)error;
- (void)dealloc;
- (void)syncSettingsProvider:(id)provider didReceiveUpdatedSyncSettings:(id)settings;
@end

@implementation DNDSSettingsManager

- (DNDSSettingsManager)initWithBackingStore:(id)store contactStore:(id)contactStore
{
  storeCopy = store;
  contactStoreCopy = contactStore;
  v15.receiver = self;
  v15.super_class = DNDSSettingsManager;
  v9 = [(DNDSSettingsManager *)&v15 init];
  if (v9)
  {
    v10 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.SettingsManager"];
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_backingStore, store);
    objc_storeStrong(&v9->_contactStore, contactStore);
    v12 = objc_alloc_init(DNDSSyncSettingsProvider);
    syncSettingsProvider = v9->_syncSettingsProvider;
    v9->_syncSettingsProvider = v12;

    [(DNDSSyncSettingsProvider *)v9->_syncSettingsProvider setDelegate:v9];
    DNDSRegisterSysdiagnoseDataProvider(v9);
  }

  return v9;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSSettingsManager;
  [(DNDSSettingsManager *)&v3 dealloc];
}

- (id)behaviorSettingsWithError:(id *)error
{
  v3 = [(DNDSSettingsManager *)self _readSettingsReturningError:error];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D058D0];
    behaviorSettings = [v3 behaviorSettings];
    v7 = [v5 settingsForRecord:behaviorSettings];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setBehaviorSettings:(id)settings withError:(id *)error
{
  settingsCopy = settings;
  v7 = [(DNDSSettingsManager *)self _saveBehaviorSettings:settingsCopy scheduleSettings:0 error:error];
  if (v7 != 1)
  {
    if (v7 != 2)
    {
      v9 = 0;
      goto LABEL_6;
    }

    delegate = [(DNDSSettingsManager *)self delegate];
    [delegate settingsManager:self didReceiveUpdatedBehaviorSettings:settingsCopy];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (id)phoneCallBypassSettingsWithError:(id *)error
{
  v3 = [(DNDSSettingsManager *)self _readSettingsReturningError:error];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D058D8];
    phoneCallBypassSettings = [v3 phoneCallBypassSettings];
    v7 = [v5 settingsForRecord:phoneCallBypassSettings];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)scheduleSettingsWithError:(id *)error
{
  v3 = [(DNDSSettingsManager *)self _readSettingsReturningError:error];
  v4 = v3;
  if (v3)
  {
    scheduleSettings = [v3 scheduleSettings];
    v6 = [DNDSScheduleSettings settingsForRecord:scheduleSettings];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setScheduleSettings:(id)settings withError:(id *)error
{
  settingsCopy = settings;
  v7 = [(DNDSSettingsManager *)self _saveBehaviorSettings:0 scheduleSettings:settingsCopy error:error];
  if (v7 != 1)
  {
    if (v7 != 2)
    {
      v9 = 0;
      goto LABEL_6;
    }

    delegate = [(DNDSSettingsManager *)self delegate];
    [delegate settingsManager:self didReceiveUpdatedScheduleSettings:settingsCopy];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (id)_readSettingsReturningError:(id *)error
{
  backingStore = self->_backingStore;
  v11 = 0;
  v5 = [(DNDSBackingStore *)backingStore readRecordWithError:&v11];
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    if (error)
    {
      v8 = v6;
      *error = v7;
    }

    v9 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      [(DNDSSettingsManager *)v7 _readSettingsReturningError:v9];
    }

    _DNDSRequestRadar(@"Failed to load settings", v7, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSSettingsManager.m", 163);
  }

  return v5;
}

- (unint64_t)_saveBehaviorSettings:(id)settings scheduleSettings:(id)scheduleSettings error:(id *)error
{
  settingsCopy = settings;
  scheduleSettingsCopy = scheduleSettings;
  v10 = [(DNDSBackingStore *)self->_backingStore readRecordWithError:0];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(DNDSMutableSettingsRecord);
  }

  v14 = v13;

  if (!settingsCopy)
  {
    if (!scheduleSettingsCopy)
    {
      goto LABEL_26;
    }

    LOBYTE(v23) = 0;
    goto LABEL_17;
  }

  makeRecord = [settingsCopy makeRecord];
  behaviorSettings = [(DNDSSettingsRecord *)v14 behaviorSettings];
  v17 = behaviorSettings;
  if (behaviorSettings == makeRecord)
  {

    v23 = 0;
    goto LABEL_16;
  }

  errorCopy = error;
  behaviorSettings2 = [(DNDSSettingsRecord *)v14 behaviorSettings];
  v19 = behaviorSettings2;
  if (!behaviorSettings2 || !makeRecord)
  {

    goto LABEL_14;
  }

  [(DNDSSettingsRecord *)v14 behaviorSettings];
  v21 = v20 = self;
  v22 = [v21 isEqual:makeRecord];

  self = v20;
  if ((v22 & 1) == 0)
  {
LABEL_14:
    [(DNDSMutableSettingsRecord *)v14 setBehaviorSettings:makeRecord];
    v23 = 1;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_15:
  error = errorCopy;
LABEL_16:

  if (!scheduleSettingsCopy)
  {
    if (v23)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_17:
  makeRecord2 = [scheduleSettingsCopy makeRecord];
  scheduleSettings = [(DNDSSettingsRecord *)v14 scheduleSettings];
  v26 = scheduleSettings;
  if (scheduleSettings == makeRecord2)
  {
  }

  else
  {
    scheduleSettings2 = [(DNDSSettingsRecord *)v14 scheduleSettings];
    v28 = scheduleSettings2;
    if (!scheduleSettings2 || !makeRecord2)
    {

LABEL_28:
      [(DNDSMutableSettingsRecord *)v14 setScheduleSettings:makeRecord2];

      goto LABEL_29;
    }

    [(DNDSSettingsRecord *)v14 scheduleSettings];
    selfCopy = self;
    v29 = v10;
    v31 = v30 = error;
    v34 = [v31 isEqual:makeRecord2];

    error = v30;
    v10 = v29;
    self = selfCopy;

    if ((v34 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v23)
  {
LABEL_29:
    v32 = [(DNDSSettingsManager *)self _writeSettingsRecord:v14 error:error];
    goto LABEL_30;
  }

LABEL_26:
  v32 = 1;
LABEL_30:

  return v32;
}

- (unint64_t)_saveConfiguration:(id)configuration forModeIdentifier:(id)identifier error:(id *)error
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v10 = [(DNDSBackingStore *)self->_backingStore readRecordWithError:0];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(DNDSMutableSettingsRecord);
  }

  v14 = v13;

  configurations = [v10 configurations];
  v16 = [configurations mutableCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_alloc_init(DNDSMutableConfigurationsRecord);
  }

  v19 = v18;

  v20 = [configurations configurationForModeIdentifier:identifierCopy];
  makeRecord = [configurationCopy makeRecord];
  v22 = makeRecord;
  if (v20 == makeRecord || v20 && makeRecord && ([v20 isEqual:makeRecord] & 1) != 0)
  {
    v23 = 1;
  }

  else
  {
    [(DNDSMutableConfigurationsRecord *)v19 setConfiguration:configurationCopy forModeIdentifier:identifierCopy];
    [(DNDSMutableSettingsRecord *)v14 setConfigurations:v19];
    v23 = [(DNDSSettingsManager *)self _writeSettingsRecord:v14 error:error];
  }

  return v23;
}

- (unint64_t)_writeSettingsRecord:(id)record error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  backingStore = self->_backingStore;
  v18 = 0;
  v8 = [(DNDSBackingStore *)backingStore writeRecord:recordCopy error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    if (v8 == 1)
    {
      v13 = DNDSLogSettings;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v10;
        _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Failed to save settings, but error can be ignored; error=%{public}@", buf, 0xCu);
      }
    }

    else if (v8 == 2)
    {
      v11 = DNDSLogSettings;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = recordCopy;
        _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Saved settings; settingsRecord=%{public}@", buf, 0xCu);
      }

      v12 = 2;
      goto LABEL_16;
    }

    v12 = 1;
    goto LABEL_16;
  }

  if (error && v9)
  {
    v14 = v9;
    *error = v10;
  }

  v15 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
  {
    [(DNDSSettingsManager *)recordCopy _writeSettingsRecord:v10 error:v15];
  }

  _DNDSRequestRadar(@"Error saving settings", v10, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSSettingsManager.m", 239);
  v12 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)syncSettingsProvider:(id)provider didReceiveUpdatedSyncSettings:(id)settings
{
  settingsCopy = settings;
  delegate = [(DNDSSettingsManager *)self delegate];
  [delegate settingsManager:self didReceiveUpdatedSyncSettings:settingsCopy];
}

- (DNDSSettingsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_readSettingsReturningError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Failed to load settings, will request a radar; error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_writeSettingsRecord:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Failed to save settings, will request a radar; settingsRecord=%{public}@, error=%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end