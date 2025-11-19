@interface DNDSSettingsManager
- (BOOL)setBehaviorSettings:(id)a3 withError:(id *)a4;
- (BOOL)setScheduleSettings:(id)a3 withError:(id *)a4;
- (DNDSSettingsManager)initWithBackingStore:(id)a3 contactStore:(id)a4;
- (DNDSSettingsManagerDelegate)delegate;
- (id)_readSettingsReturningError:(id *)a3;
- (id)behaviorSettingsWithError:(id *)a3;
- (id)phoneCallBypassSettingsWithError:(id *)a3;
- (id)scheduleSettingsWithError:(id *)a3;
- (unint64_t)_saveBehaviorSettings:(id)a3 scheduleSettings:(id)a4 error:(id *)a5;
- (unint64_t)_saveConfiguration:(id)a3 forModeIdentifier:(id)a4 error:(id *)a5;
- (unint64_t)_writeSettingsRecord:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)syncSettingsProvider:(id)a3 didReceiveUpdatedSyncSettings:(id)a4;
@end

@implementation DNDSSettingsManager

- (DNDSSettingsManager)initWithBackingStore:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = DNDSSettingsManager;
  v9 = [(DNDSSettingsManager *)&v15 init];
  if (v9)
  {
    v10 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.SettingsManager"];
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_backingStore, a3);
    objc_storeStrong(&v9->_contactStore, a4);
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

- (id)behaviorSettingsWithError:(id *)a3
{
  v3 = [(DNDSSettingsManager *)self _readSettingsReturningError:a3];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D058D0];
    v6 = [v3 behaviorSettings];
    v7 = [v5 settingsForRecord:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setBehaviorSettings:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(DNDSSettingsManager *)self _saveBehaviorSettings:v6 scheduleSettings:0 error:a4];
  if (v7 != 1)
  {
    if (v7 != 2)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v8 = [(DNDSSettingsManager *)self delegate];
    [v8 settingsManager:self didReceiveUpdatedBehaviorSettings:v6];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (id)phoneCallBypassSettingsWithError:(id *)a3
{
  v3 = [(DNDSSettingsManager *)self _readSettingsReturningError:a3];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D058D8];
    v6 = [v3 phoneCallBypassSettings];
    v7 = [v5 settingsForRecord:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)scheduleSettingsWithError:(id *)a3
{
  v3 = [(DNDSSettingsManager *)self _readSettingsReturningError:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 scheduleSettings];
    v6 = [DNDSScheduleSettings settingsForRecord:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setScheduleSettings:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(DNDSSettingsManager *)self _saveBehaviorSettings:0 scheduleSettings:v6 error:a4];
  if (v7 != 1)
  {
    if (v7 != 2)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v8 = [(DNDSSettingsManager *)self delegate];
    [v8 settingsManager:self didReceiveUpdatedScheduleSettings:v6];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (id)_readSettingsReturningError:(id *)a3
{
  backingStore = self->_backingStore;
  v11 = 0;
  v5 = [(DNDSBackingStore *)backingStore readRecordWithError:&v11];
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v8 = v6;
      *a3 = v7;
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

- (unint64_t)_saveBehaviorSettings:(id)a3 scheduleSettings:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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

  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    LOBYTE(v23) = 0;
    goto LABEL_17;
  }

  v15 = [v8 makeRecord];
  v16 = [(DNDSSettingsRecord *)v14 behaviorSettings];
  v17 = v16;
  if (v16 == v15)
  {

    v23 = 0;
    goto LABEL_16;
  }

  v35 = a5;
  v18 = [(DNDSSettingsRecord *)v14 behaviorSettings];
  v19 = v18;
  if (!v18 || !v15)
  {

    goto LABEL_14;
  }

  [(DNDSSettingsRecord *)v14 behaviorSettings];
  v21 = v20 = self;
  v22 = [v21 isEqual:v15];

  self = v20;
  if ((v22 & 1) == 0)
  {
LABEL_14:
    [(DNDSMutableSettingsRecord *)v14 setBehaviorSettings:v15];
    v23 = 1;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_15:
  a5 = v35;
LABEL_16:

  if (!v9)
  {
    if (v23)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_17:
  v24 = [v9 makeRecord];
  v25 = [(DNDSSettingsRecord *)v14 scheduleSettings];
  v26 = v25;
  if (v25 == v24)
  {
  }

  else
  {
    v27 = [(DNDSSettingsRecord *)v14 scheduleSettings];
    v28 = v27;
    if (!v27 || !v24)
    {

LABEL_28:
      [(DNDSMutableSettingsRecord *)v14 setScheduleSettings:v24];

      goto LABEL_29;
    }

    [(DNDSSettingsRecord *)v14 scheduleSettings];
    v36 = self;
    v29 = v10;
    v31 = v30 = a5;
    v34 = [v31 isEqual:v24];

    a5 = v30;
    v10 = v29;
    self = v36;

    if ((v34 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v23)
  {
LABEL_29:
    v32 = [(DNDSSettingsManager *)self _writeSettingsRecord:v14 error:a5];
    goto LABEL_30;
  }

LABEL_26:
  v32 = 1;
LABEL_30:

  return v32;
}

- (unint64_t)_saveConfiguration:(id)a3 forModeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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

  v15 = [v10 configurations];
  v16 = [v15 mutableCopy];
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

  v20 = [v15 configurationForModeIdentifier:v9];
  v21 = [v8 makeRecord];
  v22 = v21;
  if (v20 == v21 || v20 && v21 && ([v20 isEqual:v21] & 1) != 0)
  {
    v23 = 1;
  }

  else
  {
    [(DNDSMutableConfigurationsRecord *)v19 setConfiguration:v8 forModeIdentifier:v9];
    [(DNDSMutableSettingsRecord *)v14 setConfigurations:v19];
    v23 = [(DNDSSettingsManager *)self _writeSettingsRecord:v14 error:a5];
  }

  return v23;
}

- (unint64_t)_writeSettingsRecord:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  backingStore = self->_backingStore;
  v18 = 0;
  v8 = [(DNDSBackingStore *)backingStore writeRecord:v6 error:&v18];
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
        v20 = v6;
        _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Saved settings; settingsRecord=%{public}@", buf, 0xCu);
      }

      v12 = 2;
      goto LABEL_16;
    }

    v12 = 1;
    goto LABEL_16;
  }

  if (a4 && v9)
  {
    v14 = v9;
    *a4 = v10;
  }

  v15 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
  {
    [(DNDSSettingsManager *)v6 _writeSettingsRecord:v10 error:v15];
  }

  _DNDSRequestRadar(@"Error saving settings", v10, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSSettingsManager.m", 239);
  v12 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)syncSettingsProvider:(id)a3 didReceiveUpdatedSyncSettings:(id)a4
{
  v5 = a4;
  v6 = [(DNDSSettingsManager *)self delegate];
  [v6 settingsManager:self didReceiveUpdatedSyncSettings:v5];
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