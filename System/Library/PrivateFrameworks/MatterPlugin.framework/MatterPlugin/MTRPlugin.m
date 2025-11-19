@interface MTRPlugin
+ (id)sharedInstance;
- (BOOL)start;
- (BOOL)stop;
- (MTRPlugin)init;
- (void)_pairingStartedNotification:(id)a3;
- (void)_pairingStoppedNotification:(id)a3;
@end

@implementation MTRPlugin

+ (id)sharedInstance
{
  if (sharedInstance_creation_0 != -1)
  {
    +[MTRPlugin sharedInstance];
  }

  v3 = sharedInstance_sInstance_0;

  return v3;
}

uint64_t __27__MTRPlugin_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_0 = objc_alloc_init(MTRPlugin);

  return MEMORY[0x2821F96F8]();
}

- (MTRPlugin)init
{
  v6.receiver = self;
  v6.super_class = MTRPlugin;
  v2 = [(MTRPlugin *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)start
{
  v10 = *MEMORY[0x277D85DE8];
  matterPluginLogInitialize();
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Starting MTRPlugin: %p", &v8, 0xCu);
  }

  [MEMORY[0x277CD5318] swizzlePrewarm];
  [MEMORY[0x277CD5328] swizzlePrewarm];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__pairingStartedNotification_ name:@"HMDHomeManagerFirstProcessDidBecomeActiveNotification" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__pairingStoppedNotification_ name:@"HMDHomeManagerLastProcessDidBecomeInactiveNotification" object:0];

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)stop
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping MTRPlugin: %p", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_pairingStartedNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = _MTRValidateUserInfo(v4);

  v6 = matterPluginLog_default;
  v7 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      v9 = [v3 userInfo];
      v10 = [v9 objectForKeyedSubscript:@"HMDXPCConnectionClientIdentifierKey"];
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "Process activation for %@", &v15, 0xCu);
    }

    MTRSetPotentialPairing(0, 1);
  }

  else if (v7)
  {
    v11 = v6;
    v12 = [v3 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"HMDXPCConnectionClientIdentifierKey"];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring process activation for %@, not com.apple.Home.HomeUIService", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_pairingStoppedNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = _MTRValidateUserInfo(v4);

  v6 = matterPluginLog_default;
  v7 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      v9 = [v3 userInfo];
      v10 = [v9 objectForKeyedSubscript:@"HMDXPCConnectionClientIdentifierKey"];
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "Process de-activation for %@", &v15, 0xCu);
    }

    MTRSetPotentialPairing(0, 0);
  }

  else if (v7)
  {
    v11 = v6;
    v12 = [v3 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"HMDXPCConnectionClientIdentifierKey"];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring process de-activation for %@, not com.apple.Home.HomeUIService", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end