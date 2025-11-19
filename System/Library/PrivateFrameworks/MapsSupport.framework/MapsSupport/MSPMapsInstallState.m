@interface MSPMapsInstallState
+ (BOOL)isMapsAppInstalled;
+ (id)sharedState;
- (BOOL)_fetchMapsAppInstallState;
- (BOOL)_isMapsAppInstalled;
- (MSPMapsInstallState)init;
- (void)dealloc;
- (void)receivedChangeNotification:(id)a3;
@end

@implementation MSPMapsInstallState

+ (BOOL)isMapsAppInstalled
{
  v2 = [a1 sharedState];
  v3 = [v2 _isMapsAppInstalled];

  return v3;
}

+ (id)sharedState
{
  if (sharedState_once != -1)
  {
    +[MSPMapsInstallState sharedState];
  }

  v3 = sharedState_singleton;

  return v3;
}

uint64_t __34__MSPMapsInstallState_sharedState__block_invoke()
{
  sharedState_singleton = objc_alloc_init(MSPMapsInstallState);

  return MEMORY[0x2821F96F8]();
}

- (MSPMapsInstallState)init
{
  v8.receiver = self;
  v8.super_class = MSPMapsInstallState;
  v2 = [(MSPMapsInstallState *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0EC08]) initWithProtocol:&unk_28697CA30 queue:0];
    installStateObservers = v2->_installStateObservers;
    v2->_installStateObservers = v3;

    if (_sRunningInsideMapsApp == 1)
    {
      *&v2->_mapsInstalled = 257;
    }

    else
    {
      *&v2->_mapsInstalled = 0;
      v5 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v5 addObserver:v2 selector:sel_receivedChangeNotification_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

      v6 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v6 addObserver:v2 selector:sel_receivedChangeNotification_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    }
  }

  return v2;
}

- (BOOL)_isMapsAppInstalled
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_hasState)
  {
    mapsInstalled = v2->_mapsInstalled;
  }

  else
  {
    mapsInstalled = [(MSPMapsInstallState *)v2 _fetchMapsAppInstallState];
    v2->_mapsInstalled = mapsInstalled;
    v2->_hasState = 1;
  }

  objc_sync_exit(v2);

  return mapsInstalled;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  v5.receiver = self;
  v5.super_class = MSPMapsInstallState;
  [(MSPMapsInstallState *)&v5 dealloc];
}

- (BOOL)_fetchMapsAppInstallState
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x277D0EA88] allowPlaceholder:0 error:0];
  v4 = [v3 applicationState];
  LOBYTE(v5) = 0;
  if ([v4 isInstalled])
  {
    v6 = [v3 applicationState];
    if ([v6 isValid])
    {
      v7 = [v3 applicationState];
      if ([v7 isRestricted])
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v8 = [v3 applicationState];
        v5 = [v8 isPlaceholder] ^ 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)receivedChangeNotification:(id)a3
{
  v11 = a3;
  v4 = [v11 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v5 copy];

  v7 = [v4 objectForKeyedSubscript:@"isPlaceholder"];
  v8 = [v7 BOOLValue];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !(v8 & 1 | (([v6 containsObject:*MEMORY[0x277D0EA88]] & 1) == 0)))
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = [(MSPMapsInstallState *)v9 _fetchMapsAppInstallState];
    v9->_mapsInstalled = v10;
    [(GEOObserverHashTable *)v9->_installStateObservers mapsInstallStateDidChange:v10];
    objc_sync_exit(v9);
  }
}

@end