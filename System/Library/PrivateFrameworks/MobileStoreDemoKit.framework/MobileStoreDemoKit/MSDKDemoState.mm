@interface MSDKDemoState
+ (id)sharedInstance;
- (BOOL)_isDeviceEnrolledWithDeKOTA:(id *)a;
- (BOOL)_isMuseBuddyDemoModeEnabled;
- (BOOL)_isPressDemoModeEnabled;
- (BOOL)_isPressDemoModeEnabled:(id *)enabled;
- (BOOL)_isSecureDemoModeEnabled:(id *)enabled;
- (BOOL)_isStoreDemoModeEnabled:(id *)enabled;
- (MSDKDemoState)init;
- (int)_activationConfigurationFlags:(id *)flags;
@end

@implementation MSDKDemoState

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[MSDKDemoState sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __31__MSDKDemoState_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(MSDKDemoState);

  return MEMORY[0x2821F96F8]();
}

- (MSDKDemoState)init
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = MSDKDemoState;
  v2 = [(MSDKDemoState *)&v10 init];
  if (v2)
  {
    v3 = defaultLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];
      *buf = 138543362;
      v12 = processName;
      _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ started to use MobileStoreDemoKit/MSDKDemoState.", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MSDKDemoState *)v2 setCache:v6];

    v7 = v2;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)_isSecureDemoModeEnabled:(id *)enabled
{
  v5 = NSStringFromSelector(sel__isSecureDemoModeEnabled_);
  cache = [(MSDKDemoState *)self cache];
  objc_sync_enter(cache);
  if (v5)
  {
    cache2 = [(MSDKDemoState *)self cache];
    v8 = [cache2 objectForKey:v5];

    if (v8)
    {
      cache3 = [(MSDKDemoState *)self cache];
      v10 = [cache3 objectForKey:v5];
      bOOLValue = [v10 BOOLValue];
LABEL_9:

      objc_sync_exit(cache);
      goto LABEL_10;
    }
  }

  objc_sync_exit(cache);

  v12 = [(MSDKDemoState *)self _isDeviceEnrolledWithDeKOTA:enabled];
  bOOLValue = v12;
  if (v5)
  {
    v13 = !v12;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    cache = [(MSDKDemoState *)self cache];
    objc_sync_enter(cache);
    cache3 = [(MSDKDemoState *)self cache];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [cache3 setObject:v10 forKey:v5];
    bOOLValue = 1;
    goto LABEL_9;
  }

LABEL_10:

  return bOOLValue;
}

- (BOOL)_isStoreDemoModeEnabled:(id *)enabled
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(sel__isStoreDemoModeEnabled_);
  cache = [(MSDKDemoState *)self cache];
  objc_sync_enter(cache);
  if (v4)
  {
    cache2 = [(MSDKDemoState *)self cache];
    v7 = [cache2 objectForKey:v4];

    if (v7)
    {
      cache3 = [(MSDKDemoState *)self cache];
      v9 = [cache3 objectForKey:v4];
      LOBYTE(v10) = [v9 BOOLValue];

      objc_sync_exit(cache);
      goto LABEL_12;
    }
  }

  objc_sync_exit(cache);

  if (geteuid())
  {
    LODWORD(v10) = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[MSDKDemoState _isStoreDemoModeEnabled:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s - Caller is in root user session, making call to MobileGestalt", &v16, 0xCu);
  }

  LODWORD(v10) = MGGetBoolAnswer();
  if (v4)
  {
LABEL_10:
    if (v10)
    {
      cache4 = [(MSDKDemoState *)self cache];
      objc_sync_enter(cache4);
      cache5 = [(MSDKDemoState *)self cache];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [cache5 setObject:v10 forKey:v4];

      objc_sync_exit(cache4);
      LOBYTE(v10) = 1;
    }
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_isPressDemoModeEnabled:(id *)enabled
{
  v4 = NSStringFromSelector(sel__isPressDemoModeEnabled);
  cache = [(MSDKDemoState *)self cache];
  objc_sync_enter(cache);
  if (v4 && (-[MSDKDemoState cache](self, "cache"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKey:v4], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    cache2 = [(MSDKDemoState *)self cache];
    v9 = [cache2 objectForKey:v4];
    bOOLValue = [v9 BOOLValue];

    objc_sync_exit(cache);
  }

  else
  {
    objc_sync_exit(cache);

    if (geteuid())
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PressDemoMode", @"com.apple.demo-settings", 0);
      bOOLValue = AppBooleanValue != 0;
      if (v4 && AppBooleanValue)
      {
        cache3 = [(MSDKDemoState *)self cache];
        objc_sync_enter(cache3);
        cache4 = [(MSDKDemoState *)self cache];
        v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [cache4 setObject:v14 forKey:v4];

        objc_sync_exit(cache3);
        bOOLValue = 1;
      }
    }

    else
    {
      v15 = defaultLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MSDKDemoState _isPressDemoModeEnabled:v15];
      }

      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (BOOL)_isPressDemoModeEnabled
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.demo-settings"];
  v3 = [v2 BOOLForKey:@"PressDemoMode"];

  return v3;
}

- (BOOL)_isMuseBuddyDemoModeEnabled
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.musebuddy"];
  v3 = [v2 BOOLForKey:@"DemoMode"];

  return v3;
}

- (BOOL)_isDeviceEnrolledWithDeKOTA:(id *)a
{
  v5 = NSStringFromSelector(sel_isDeviceEnrolledWithDeKOTA);
  cache = [(MSDKDemoState *)self cache];
  objc_sync_enter(cache);
  if (v5)
  {
    cache2 = [(MSDKDemoState *)self cache];
    v8 = [cache2 objectForKey:v5];

    if (v8)
    {
      cache3 = [(MSDKDemoState *)self cache];
      v10 = [cache3 objectForKey:v5];
      LOBYTE(v11) = [v10 BOOLValue];
LABEL_11:

      objc_sync_exit(cache);
      goto LABEL_12;
    }
  }

  objc_sync_exit(cache);

  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 fakeActivationDemoBit], v12, (v13 & 1) != 0))
  {
    v11 = 1;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = ([(MSDKDemoState *)self _activationConfigurationFlags:a]>> 1) & 1;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v11)
  {
    cache = [(MSDKDemoState *)self cache];
    objc_sync_enter(cache);
    cache3 = [(MSDKDemoState *)self cache];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [cache3 setObject:v10 forKey:v5];
    LOBYTE(v11) = 1;
    goto LABEL_11;
  }

LABEL_12:

  return v11;
}

- (int)_activationConfigurationFlags:(id *)flags
{
  v20 = *MEMORY[0x277D85DE8];
  if (!os_variant_has_internal_content() || (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 deviceActivationFlag], v4, v5 < 0))
  {
    v15 = 0;
    v7 = MEMORY[0x259CB0290](&v15);
    v8 = v15;
    if (v8)
    {
      [(MSDKDemoState *)v8 _activationConfigurationFlags:buf];
      LODWORD(v5) = 0;
      v9 = v16;
      v10 = *buf;
    }

    else if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
      LODWORD(v5) = [v9 intValue];
      v10 = 0;
    }

    else
    {
      v14 = 0;
      safeAssignError(&v14, 3727741187, @"Failed to retrieve activation record.");
      v10 = v14;
      v9 = defaultLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MSDKDemoState _activationConfigurationFlags:v9];
      }

      LODWORD(v5) = 0;
    }

    if (flags)
    {
      v11 = v10;
      *flags = v10;
    }
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[MSDKDemoState _activationConfigurationFlags:]";
      v18 = 2048;
      v19 = v5;
      _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "%s - Using device activation flag: %ld for internal testing", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_isPressDemoModeEnabled:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MSDKDemoState _isPressDemoModeEnabled:]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s - Caller is in root user session, erroring out!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_activationConfigurationFlags:(uint64_t *)a3 .cold.1(void *a1, uint64_t *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = [a1 localizedDescription];
    v11 = 136315394;
    v12 = "[MSDKDemoState _activationConfigurationFlags:]";
    v13 = 2114;
    v14 = v10;
    _os_log_error_impl(&dword_259B7D000, v6, OS_LOG_TYPE_ERROR, "%s - Could not get activation record with error - %{public}@", &v11, 0x16u);
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = [a1 localizedDescription];
  *a2 = v8;
  *a3 = [v7 errorDomainMSDWithCode:3727741187 message:@"Failed to retrieve activation record." reason:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_activationConfigurationFlags:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MSDKDemoState _activationConfigurationFlags:]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s - Activation record is NULL", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end