@interface CPUIVideoAvailability
- (BOOL)isVideoAllowed;
- (BOOL)isVideoSupported;
- (CPUIVideoAvailability)init;
- (id)_currentCarPlayDevice;
- (int64_t)playbackState;
- (void)_postVideoAvailabilityChanged:(id)a3;
- (void)setVideoActive:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation CPUIVideoAvailability

- (CPUIVideoAvailability)init
{
  v10.receiver = self;
  v10.super_class = CPUIVideoAvailability;
  v2 = [(CPUIVideoAvailability *)&v10 init];
  if (v2 && _os_feature_enabled_impl())
  {
    v3 = [MEMORY[0x277CB8698] sharedSystemRemoteDisplayContext];
    outputContext = v2->_outputContext;
    v2->_outputContext = v3;

    v5 = [objc_alloc(MEMORY[0x277CF89F8]) initWithOptions:0];
    sessionStatus = v2->_sessionStatus;
    v2->_sessionStatus = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__postVideoAvailabilityChanged_ name:*MEMORY[0x277CB8670] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel__postVideoAvailabilityChanged_ name:*MEMORY[0x277CF8958] object:0];
  }

  return v2;
}

- (BOOL)isVideoSupported
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = [(CPUIVideoAvailability *)self sessionStatus];
    v5 = [v4 currentSession];
    v6 = [v5 configuration];
    v7 = [v6 videoPlaybackSupported];

    LOBYTE(v3) = v7;
  }

  return v3;
}

- (BOOL)isVideoAllowed
{
  v2 = [(CPUIVideoAvailability *)self _currentCarPlayDevice];
  v3 = [v2 isCarPlayVideoAllowed];

  if ((v3 & 1) == 0)
  {
    v4 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243134000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay video not allowed", v6, 2u);
    }
  }

  return v3;
}

- (int64_t)playbackState
{
  if ([(CPUIVideoAvailability *)self isVideoSupported])
  {
    v3 = [(CPUIVideoAvailability *)self _currentCarPlayDevice];
    v4 = [v3 mediaSessionStatus];
    if (v4 < 2)
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

    if (v4 == 2)
    {
      v8 = CarPlayUIGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_243134000, v8, OS_LOG_TYPE_DEFAULT, "playable / playing video", v11, 2u);
      }

      if (([v3 isCarPlayVideoAllowed]& 1) != 0)
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

    if (v4 == 3)
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
    v3 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_243134000, v3, OS_LOG_TYPE_DEFAULT, "video unsupported", v13, 2u);
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (void)setVideoActive:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CPUIVideoAvailability *)self _currentCarPlayDevice];
  [v7 setCarPlayVideoActive:v4 completionHandler:v6];
}

- (id)_currentCarPlayDevice
{
  v2 = [(CPUIVideoAvailability *)self outputContext];
  v3 = [v2 outputDevices];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = [v5 firstObject];

  return v6;
}

- (void)_postVideoAvailabilityChanged:(id)a3
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