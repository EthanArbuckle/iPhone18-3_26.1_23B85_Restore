@interface CPUIVideoAvailability
- (BOOL)isVideoAllowed;
- (BOOL)isVideoSupported;
- (CPUIVideoAvailability)init;
- (id)_currentCarPlayDevice;
- (int64_t)playbackState;
- (void)_postVideoAvailabilityChanged:(id)changed;
- (void)setVideoActive:(BOOL)active completionHandler:(id)handler;
@end

@implementation CPUIVideoAvailability

- (CPUIVideoAvailability)init
{
  v10.receiver = self;
  v10.super_class = CPUIVideoAvailability;
  v2 = [(CPUIVideoAvailability *)&v10 init];
  if (v2 && _os_feature_enabled_impl())
  {
    mEMORY[0x277CB8698] = [MEMORY[0x277CB8698] sharedSystemRemoteDisplayContext];
    outputContext = v2->_outputContext;
    v2->_outputContext = mEMORY[0x277CB8698];

    v5 = [objc_alloc(MEMORY[0x277CF89F8]) initWithOptions:0];
    sessionStatus = v2->_sessionStatus;
    v2->_sessionStatus = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__postVideoAvailabilityChanged_ name:*MEMORY[0x277CB8670] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__postVideoAvailabilityChanged_ name:*MEMORY[0x277CF8958] object:0];
  }

  return v2;
}

- (BOOL)isVideoSupported
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    sessionStatus = [(CPUIVideoAvailability *)self sessionStatus];
    currentSession = [sessionStatus currentSession];
    configuration = [currentSession configuration];
    videoPlaybackSupported = [configuration videoPlaybackSupported];

    LOBYTE(v3) = videoPlaybackSupported;
  }

  return v3;
}

- (BOOL)isVideoAllowed
{
  _currentCarPlayDevice = [(CPUIVideoAvailability *)self _currentCarPlayDevice];
  isCarPlayVideoAllowed = [_currentCarPlayDevice isCarPlayVideoAllowed];

  if ((isCarPlayVideoAllowed & 1) == 0)
  {
    v4 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243134000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay video not allowed", v6, 2u);
    }
  }

  return isCarPlayVideoAllowed;
}

- (int64_t)playbackState
{
  if ([(CPUIVideoAvailability *)self isVideoSupported])
  {
    _currentCarPlayDevice = [(CPUIVideoAvailability *)self _currentCarPlayDevice];
    mediaSessionStatus = [_currentCarPlayDevice mediaSessionStatus];
    if (mediaSessionStatus < 2)
    {
      v5 = CarPlayUIGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_243134000, v5, OS_LOG_TYPE_DEFAULT, "not playing a video", v12, 2u);
      }

      v6 = 0;
      goto LABEL_13;
    }

    if (mediaSessionStatus == 2)
    {
      v8 = CarPlayUIGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_243134000, v8, OS_LOG_TYPE_DEFAULT, "playable / playing video", v11, 2u);
      }

      if (([_currentCarPlayDevice isCarPlayVideoAllowed]& 1) != 0)
      {
        v6 = 3;
        goto LABEL_14;
      }

      v5 = CarPlayUIGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_243134000, v5, OS_LOG_TYPE_DEFAULT, "video not allowed", v9, 2u);
      }

      v6 = 1;
      goto LABEL_13;
    }

    if (mediaSessionStatus == 3)
    {
      v5 = CarPlayUIGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = 2;
        _os_log_impl(&dword_243134000, v5, OS_LOG_TYPE_DEFAULT, "playing an unsupported video", buf, 2u);
      }

      else
      {
        v6 = 2;
      }

LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
    _currentCarPlayDevice = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(_currentCarPlayDevice, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_243134000, _currentCarPlayDevice, OS_LOG_TYPE_DEFAULT, "video unsupported", v13, 2u);
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (void)setVideoActive:(BOOL)active completionHandler:(id)handler
{
  activeCopy = active;
  handlerCopy = handler;
  _currentCarPlayDevice = [(CPUIVideoAvailability *)self _currentCarPlayDevice];
  [_currentCarPlayDevice setCarPlayVideoActive:activeCopy completionHandler:handlerCopy];
}

- (id)_currentCarPlayDevice
{
  outputContext = [(CPUIVideoAvailability *)self outputContext];
  outputDevices = [outputContext outputDevices];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
  v5 = [outputDevices filteredArrayUsingPredicate:v4];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (void)_postVideoAvailabilityChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CPUIVideoAvailability__postVideoAvailabilityChanged___block_invoke;
  block[3] = &unk_278D9C2D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__CPUIVideoAvailability__postVideoAvailabilityChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"CPUIVideoAvailabilityChangedNotification" object:*(a1 + 32)];
}

@end