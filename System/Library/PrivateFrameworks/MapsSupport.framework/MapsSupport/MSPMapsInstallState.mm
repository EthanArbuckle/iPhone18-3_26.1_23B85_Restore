@interface MSPMapsInstallState
+ (BOOL)isMapsAppInstalled;
+ (id)sharedState;
- (BOOL)_fetchMapsAppInstallState;
- (BOOL)_isMapsAppInstalled;
- (MSPMapsInstallState)init;
- (void)dealloc;
- (void)receivedChangeNotification:(id)notification;
@end

@implementation MSPMapsInstallState

+ (BOOL)isMapsAppInstalled
{
  sharedState = [self sharedState];
  _isMapsAppInstalled = [sharedState _isMapsAppInstalled];

  return _isMapsAppInstalled;
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
      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel_receivedChangeNotification_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

      defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter2 addObserver:v2 selector:sel_receivedChangeNotification_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    }
  }

  return v2;
}

- (BOOL)_isMapsAppInstalled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasState)
  {
    mapsInstalled = selfCopy->_mapsInstalled;
  }

  else
  {
    mapsInstalled = [(MSPMapsInstallState *)selfCopy _fetchMapsAppInstallState];
    selfCopy->_mapsInstalled = mapsInstalled;
    selfCopy->_hasState = 1;
  }

  objc_sync_exit(selfCopy);

  return mapsInstalled;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  v5.receiver = self;
  v5.super_class = MSPMapsInstallState;
  [(MSPMapsInstallState *)&v5 dealloc];
}

- (BOOL)_fetchMapsAppInstallState
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x277D0EA88] allowPlaceholder:0 error:0];
  applicationState = [v3 applicationState];
  LOBYTE(v5) = 0;
  if ([applicationState isInstalled])
  {
    applicationState2 = [v3 applicationState];
    if ([applicationState2 isValid])
    {
      applicationState3 = [v3 applicationState];
      if ([applicationState3 isRestricted])
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        applicationState4 = [v3 applicationState];
        v5 = [applicationState4 isPlaceholder] ^ 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)receivedChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v5 copy];

  v7 = [userInfo objectForKeyedSubscript:@"isPlaceholder"];
  bOOLValue = [v7 BOOLValue];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !(bOOLValue & 1 | (([v6 containsObject:*MEMORY[0x277D0EA88]] & 1) == 0)))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    _fetchMapsAppInstallState = [(MSPMapsInstallState *)selfCopy _fetchMapsAppInstallState];
    selfCopy->_mapsInstalled = _fetchMapsAppInstallState;
    [(GEOObserverHashTable *)selfCopy->_installStateObservers mapsInstallStateDidChange:_fetchMapsAppInstallState];
    objc_sync_exit(selfCopy);
  }
}

@end