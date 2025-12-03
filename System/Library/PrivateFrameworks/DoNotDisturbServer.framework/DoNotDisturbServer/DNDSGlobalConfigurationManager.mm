@interface DNDSGlobalConfigurationManager
- (BOOL)getModesCanImpactAvailabilityReturningError:(id *)error;
- (BOOL)getPreventAutoReplyReturningError:(id *)error;
- (BOOL)setConfiguration:(id)configuration withError:(id *)error;
- (BOOL)setModesCanImpactAvailability:(BOOL)availability withError:(id *)error;
- (BOOL)setPreventAutoReply:(BOOL)reply withError:(id *)error;
- (DNDSGlobalConfigurationManager)initWithBackingStore:(id)store;
- (DNDSGlobalConfigurationManagerDelegate)delegate;
- (id)getConfigurationReturningError:(id *)error;
- (unint64_t)_writeConfiguration:(id)configuration error:(id *)error;
- (void)dealloc;
@end

@implementation DNDSGlobalConfigurationManager

- (DNDSGlobalConfigurationManager)initWithBackingStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = DNDSGlobalConfigurationManager;
  v6 = [(DNDSGlobalConfigurationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingStore, store);
    [(DNDSGlobalConfigurationStoring *)v7->_backingStore setDelegate:v7];
    DNDSRegisterSysdiagnoseDataProvider(v7);
  }

  return v7;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSGlobalConfigurationManager;
  [(DNDSGlobalConfigurationManager *)&v3 dealloc];
}

- (id)getConfigurationReturningError:(id *)error
{
  v3 = [(DNDSGlobalConfigurationStoring *)self->_backingStore readRecordWithError:error];
  if (!v3)
  {
    v3 = objc_alloc_init(DNDSMutableGlobalConfiguration);
    [(DNDSMutableGlobalConfiguration *)v3 setAutomaticallyGenerated:1];
  }

  v4 = [(DNDSMutableGlobalConfiguration *)v3 copy];

  return v4;
}

- (BOOL)setConfiguration:(id)configuration withError:(id *)error
{
  configurationCopy = configuration;
  v7 = [(DNDSGlobalConfigurationStoring *)self->_backingStore readRecordWithError:error];
  v8 = [(DNDSGlobalConfigurationManager *)self _writeConfiguration:configurationCopy error:error];
  if (v8 != 2)
  {
    v9 = v8 == 1;
    goto LABEL_18;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  preventAutoReply = [v7 preventAutoReply];
  if (preventAutoReply != [configurationCopy preventAutoReply])
  {
    [WeakRetained globalConfigurationManager:self didUpdatePreventAutoReplySetting:{DNDResolvedPreventAutoReplySetting(objc_msgSend(configurationCopy, "preventAutoReply")) == 2}];
  }

  bypassSettings = [v7 bypassSettings];
  bypassSettings2 = [configurationCopy bypassSettings];
  v14 = bypassSettings2;
  if (bypassSettings != bypassSettings2)
  {
    bypassSettings3 = [v7 bypassSettings];
    if (bypassSettings3)
    {
      v16 = bypassSettings3;
      bypassSettings4 = [configurationCopy bypassSettings];
      if (bypassSettings4)
      {
        v18 = bypassSettings4;
        bypassSettings5 = [v7 bypassSettings];
        bypassSettings6 = [configurationCopy bypassSettings];
        v23 = [bypassSettings5 isEqual:bypassSettings6];

        if (v23)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

LABEL_13:
    bypassSettings = [configurationCopy bypassSettings];
    [WeakRetained globalConfigurationManager:self didUpdatePhoneCallBypassSettings:bypassSettings];
    goto LABEL_14;
  }

LABEL_14:
LABEL_15:
  modesCanImpactAvailability = [v7 modesCanImpactAvailability];
  if (modesCanImpactAvailability != [configurationCopy modesCanImpactAvailability])
  {
    [WeakRetained globalConfigurationManager:self didUpdateModesCanImpactAvailabilitySetting:{DNDResolvedModesCanImpactAvailabilitySetting(objc_msgSend(configurationCopy, "modesCanImpactAvailability")) == 2}];
  }

  v9 = 1;
LABEL_18:

  return v9;
}

- (BOOL)getPreventAutoReplyReturningError:(id *)error
{
  v3 = [(DNDSGlobalConfigurationStoring *)self->_backingStore readRecordWithError:error];
  v4 = DNDResolvedPreventAutoReplySetting([v3 preventAutoReply]) == 2;

  return v4;
}

- (BOOL)setPreventAutoReply:(BOOL)reply withError:(id *)error
{
  replyCopy = reply;
  v22 = *MEMORY[0x277D85DE8];
  v7 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "allow";
    if (replyCopy)
    {
      v8 = "prevent";
    }

    *buf = 136315138;
    v21 = v8;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Setting auto reply to %s", buf, 0xCu);
  }

  backingStore = self->_backingStore;
  v19 = 0;
  v10 = [(DNDSGlobalConfigurationStoring *)backingStore readRecordWithError:&v19];
  v11 = v19;
  v12 = [v10 mutableCopy];

  v13 = v11 == 0;
  if (v11)
  {
    v14 = DNDSLogGlobalConfiguration;
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationManager setPreventAutoReply:v11 withError:v14];
    }
  }

  else
  {
    if (replyCopy)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    if ([v12 preventAutoReply] != v15)
    {
      [v12 setPreventAutoReply:v15];
      v13 = [(DNDSGlobalConfigurationManager *)self setConfiguration:v12 withError:error];
      goto LABEL_15;
    }
  }

  if (error)
  {
    v16 = v11;
    *error = v11;
  }

LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)getModesCanImpactAvailabilityReturningError:(id *)error
{
  v3 = [(DNDSGlobalConfigurationStoring *)self->_backingStore readRecordWithError:error];
  v4 = DNDResolvedModesCanImpactAvailabilitySetting([v3 modesCanImpactAvailability]) == 2;

  return v4;
}

- (BOOL)setModesCanImpactAvailability:(BOOL)availability withError:(id *)error
{
  availabilityCopy = availability;
  v22 = *MEMORY[0x277D85DE8];
  v7 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    if (availabilityCopy)
    {
      v8 = "YES";
    }

    *buf = 136315138;
    v21 = v8;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Setting global availability preference to %s", buf, 0xCu);
  }

  backingStore = self->_backingStore;
  v19 = 0;
  v10 = [(DNDSGlobalConfigurationStoring *)backingStore readRecordWithError:&v19];
  v11 = v19;
  v12 = [v10 mutableCopy];

  v13 = v11 == 0;
  if (v11)
  {
    v14 = DNDSLogGlobalConfiguration;
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationManager setModesCanImpactAvailability:v11 withError:v14];
    }
  }

  else
  {
    if (availabilityCopy)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    if ([v12 modesCanImpactAvailability] != v15)
    {
      [v12 setModesCanImpactAvailability:v15];
      v13 = [(DNDSGlobalConfigurationManager *)self setConfiguration:v12 withError:error];
      goto LABEL_15;
    }
  }

  if (error)
  {
    v16 = v11;
    *error = v11;
  }

LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unint64_t)_writeConfiguration:(id)configuration error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  backingStore = self->_backingStore;
  v19 = 0;
  v8 = [(DNDSGlobalConfigurationStoring *)backingStore writeRecord:configurationCopy error:&v19];
  v9 = v19;
  v10 = v9;
  if (v8)
  {
    if (v8 == 1)
    {
      v13 = DNDSLogGlobalConfiguration;
      if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v10;
        _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Failed to save configuration, but error can be ignored; error=%{public}@", buf, 0xCu);
      }
    }

    else if (v8 == 2)
    {
      v11 = DNDSLogGlobalConfiguration;
      if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = configurationCopy;
        _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Saved configuration; configuration=%{public}@", buf, 0xCu);
      }

      v12 = 2;
      goto LABEL_20;
    }

    v12 = 1;
    goto LABEL_20;
  }

  if (error && v9)
  {
    v14 = v9;
    *error = v10;
  }

  v15 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v15 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationManager _writeConfiguration:error:];
    }

    _DNDSRequestRadar(@"Error saving configuration", v10, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSGlobalConfigurationManager.m", 225);
  }

  else if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
  {
    [DNDSGlobalConfigurationManager _writeConfiguration:error:];
  }

  v12 = 0;
LABEL_20:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (DNDSGlobalConfigurationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setPreventAutoReply:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Error reading auto reply state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setModesCanImpactAvailability:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Error reading global availability state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_writeConfiguration:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "Failed to save configuration but device is under first lock; configuration=%{public}@, error=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_writeConfiguration:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "Failed to save configuration, will request a radar; configuration=%{public}@, error=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end