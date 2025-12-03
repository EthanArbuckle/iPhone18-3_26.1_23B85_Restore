@interface NFMPlayCommands
- (BOOL)_isFaceTimeOrCameraFrontmost;
- (BOOL)_isInFaceTimeCall;
- (BOOL)_isInPhoneOrFaceTimeCall;
- (BOOL)_isInternalInstall;
- (BOOL)_playSoundAtPath:(id)path;
- (BOOL)flashLEDIfAppropriate;
- (BOOL)flashLights;
- (BOOL)playFindLocallySound;
- (BOOL)playSoundAndFlash;
- (NFMPlayCommands)init;
- (void)beginObservingTUChanges;
- (void)cancelAllAlerts:(id)alerts;
- (void)dealloc;
- (void)flashLED;
- (void)playNearbySound;
- (void)playbackStateChanged:(id)changed;
- (void)setFlashEnabled:(BOOL)enabled;
- (void)updateFlashState;
@end

@implementation NFMPlayCommands

- (NFMPlayCommands)init
{
  v8.receiver = self;
  v8.super_class = NFMPlayCommands;
  v2 = [(NFMPlayCommands *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(NFMPlayCommands *)v2 beginObservingTUChanges];
    if ([(NFMPlayCommands *)v3 _isInternalInstall])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, HandleAlertCancellation, @"3780-9e0b-fded-d875-7ab7-ac8e", 0, 0);
      v5 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v5, v3, HandlePlaySound, @"1def-b278-bc84-97f5-8ec2-2b7a", 0, 0);
      v6 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v6, v3, HandlePlaySoundAndLED, @"7e6e-6f4c-e43b-89f6-6a8c-af04", 0, 0);
    }
  }

  return v3;
}

- (void)beginObservingTUChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_cancelAllAlerts_ name:*MEMORY[0x277D6EFF0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_cancelAllAlerts_ name:*MEMORY[0x277D6F038] object:0];

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
}

- (BOOL)_isInternalInstall
{
  if (_isInternalInstall_onceToken != -1)
  {
    [NFMPlayCommands _isInternalInstall];
  }

  return _isInternalInstall___isInternalInstall;
}

- (void)dealloc
{
  if ([(NFMPlayCommands *)self _isInternalInstall])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"3780-9e0b-fded-d875-7ab7-ac8e", 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, self, @"1def-b278-bc84-97f5-8ec2-2b7a", 0);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v5, self, @"7e6e-6f4c-e43b-89f6-6a8c-af04", 0);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = NFMPlayCommands;
  [(NFMPlayCommands *)&v7 dealloc];
}

uint64_t __37__NFMPlayCommands__isInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  _isInternalInstall___isInternalInstall = result;
  return result;
}

- (BOOL)playFindLocallySound
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NanoLeash.framework"];
  v4 = [v3 pathForResource:@"ping" ofType:@"caf"];

  LOBYTE(self) = [(NFMPlayCommands *)self _playSoundAtPath:v4];
  return self;
}

- (BOOL)_playSoundAtPath:(id)path
{
  v44 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pathCopy isDirectory:0];
  if (v5)
  {
    initAuxiliarySession = [objc_alloc(MEMORY[0x277CEFC98]) initAuxiliarySession];
    v7 = *MEMORY[0x277CEFC70];
    v40 = 0;
    [initAuxiliarySession setCategory:v7 error:&v40];
    v8 = v40;
    if (v8)
    {
      v9 = nfm_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NFMPlayCommands _playSoundAtPath:v9];
      }

      v10 = 0;
    }

    else
    {
      avQueuePlayer = self->_avQueuePlayer;
      if (avQueuePlayer)
      {
        items = [(AVQueuePlayer *)avQueuePlayer items];
        items2 = [(AVQueuePlayer *)self->_avQueuePlayer items];
        v14 = [items2 count];

        if (v14)
        {
          v35 = items;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v15 = items;
          v16 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                asset = [*(*(&v36 + 1) + 8 * i) asset];
                v21 = [asset URL];

                if ([v21 isEqual:v5])
                {
                  v32 = nfm_log();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v42 = v21;
                    _os_log_impl(&dword_25B17F000, v32, OS_LOG_TYPE_DEFAULT, "Already playing requested sound - %@, skipping", buf, 0xCu);
                  }

                  v10 = 0;
                  v8 = 0;
                  goto LABEL_31;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          items = v35;
          v8 = 0;
        }

        v22 = nfm_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B17F000, v22, OS_LOG_TYPE_DEFAULT, "Queing a sound", buf, 2u);
        }

        v23 = self->_avQueuePlayer;
        v24 = [MEMORY[0x277CE65B0] playerItemWithURL:v5];
        [(AVQueuePlayer *)v23 insertItem:v24 afterItem:0];
      }

      else
      {
        v25 = [objc_alloc(MEMORY[0x277CE65F8]) initWithURL:v5];
        items = self->_avQueuePlayer;
        self->_avQueuePlayer = v25;
      }

      [(AVQueuePlayer *)self->_avQueuePlayer setAllowsExternalPlayback:0];
      LODWORD(v26) = 1.0;
      [(AVQueuePlayer *)self->_avQueuePlayer setVolume:v26];
      [(AVQueuePlayer *)self->_avQueuePlayer _setClientName:@"LocatePhone"];
      [(AVQueuePlayer *)self->_avQueuePlayer setAudioSession:initAuxiliarySession];
      if ([(NFMPlayCommands *)self _isInFaceTimeCall])
      {
        v27 = nfm_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B17F000, v27, OS_LOG_TYPE_DEFAULT, "User is in a FaceTime Video Call.", buf, 2u);
        }

        v28 = 9;
      }

      else
      {
        v28 = 10;
      }

      [(AVQueuePlayer *)self->_avQueuePlayer _setClientPriority:v28, v35];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_playbackStateChanged_ name:*MEMORY[0x277CE60C0] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_playbackStateChanged_ name:*MEMORY[0x277CE60D0] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel_playbackStateChanged_ name:*MEMORY[0x277CE6150] object:0];

      [(AVQueuePlayer *)self->_avQueuePlayer play];
      v10 = 1;
    }

LABEL_31:
  }

  else
  {
    v10 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)playSoundAndFlash
{
  playFindLocallySound = [(NFMPlayCommands *)self playFindLocallySound];
  v4 = nfm_log();
  v5 = v4;
  if (playFindLocallySound)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### Played Sound", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(NFMPlayCommands *)v5 playSoundAndFlash];
  }

  [(NFMPlayCommands *)self flashLights];
  return playFindLocallySound;
}

- (BOOL)flashLights
{
  flashLEDIfAppropriate = [(NFMPlayCommands *)self flashLEDIfAppropriate];
  system("/System/Library/PrivateFrameworks/NanoLeash.framework/findme");
  return flashLEDIfAppropriate;
}

- (void)playNearbySound
{
  if (CFPreferencesGetAppBooleanValue(@"disableNearbySound", @"com.apple.internal.watchprecisionfinding", 0) && [(NFMPlayCommands *)self _isInternalInstall])
  {
    v3 = nfm_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Watch is nearby, default set, skipping sound", buf, 2u);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"chirp" ofType:@"caf"];

    [(NFMPlayCommands *)self _playSoundAtPath:v5];
  }
}

- (BOOL)flashLEDIfAppropriate
{
  if (![(NFMPlayCommands *)self _isDeviceLocked]|| [(NFMPlayCommands *)self _isFaceTimeOrCameraFrontmost]|| [(NFMPlayCommands *)self _isInFaceTimeCall])
  {
    if (self->_flashEnabled)
    {
      [(NFMPlayCommands *)self setFlashEnabled:0];
      self->_flashEnabled = 0;
    }

    [(NSTimer *)self->_flashScheduler invalidate];
    flashScheduler = self->_flashScheduler;
    self->_flashScheduler = 0;

    result = 0;
    self->_flashCount = 0;
  }

  else
  {
    [(NFMPlayCommands *)self flashLED];
    return 1;
  }

  return result;
}

- (void)cancelAllAlerts:(id)alerts
{
  [(AVQueuePlayer *)self->_avQueuePlayer pause];
  avQueuePlayer = self->_avQueuePlayer;
  self->_avQueuePlayer = 0;

  [(NSTimer *)self->_flashScheduler invalidate];
  flashScheduler = self->_flashScheduler;
  self->_flashScheduler = 0;

  self->_flashCount = 0;
  self->_flashEnabled = 0;

  [(NFMPlayCommands *)self setFlashEnabled:0];
}

- (void)playbackStateChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [changedCopy name];
    v15 = 138412290;
    v16 = name;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "Playback state changed: %@", &v15, 0xCu);
  }

  name2 = [changedCopy name];
  v8 = *MEMORY[0x277CE6150];
  v9 = [name2 isEqualToString:*MEMORY[0x277CE6150]];

  if (v9)
  {
    [(AVQueuePlayer *)self->_avQueuePlayer pause];
  }

  avQueuePlayer = self->_avQueuePlayer;
  self->_avQueuePlayer = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CE60D0] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:v8 object:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)flashLED
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Flash Torch", v13, 2u);
  }

  flashScheduler = self->_flashScheduler;
  self->_flashCount += 10;
  if (!flashScheduler)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBB8]);
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [date dateByAddingTimeInterval:0.2];
    v8 = [v5 initWithFireDate:v7 interval:self target:sel_updateFlashState selector:0 userInfo:1 repeats:0.2];
    v9 = self->_flashScheduler;
    self->_flashScheduler = v8;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_flashScheduler forMode:*MEMORY[0x277CBE738]];

    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.2];
    [currentRunLoop2 runUntilDate:v12];
  }
}

- (void)setFlashEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  v4 = nfm_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = enabledCopy;
    _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "########### setFlashEnabled: %d", buf, 8u);
  }

  v5 = [MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5EA8]];
  if ([v5 hasTorch])
  {
    v9 = 0;
    [v5 lockForConfiguration:&v9];
    v6 = v9;
    [v5 setTorchMode:enabledCopy];
    [v5 unlockForConfiguration];
    if (v6)
    {
      v7 = nfm_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(NFMPlayCommands *)v6 setFlashEnabled:v5, v7];
      }
    }
  }

  else
  {
    v6 = nfm_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NFMPlayCommands *)v5 setFlashEnabled:v6];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateFlashState
{
  flashCount = self->_flashCount;
  v4 = nfm_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (flashCount <= 0)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "########### Cleared Flash", buf, 2u);
    }

    [(NSTimer *)self->_flashScheduler invalidate];
    flashScheduler = self->_flashScheduler;
    self->_flashScheduler = 0;

    self->_flashCount = 0;
    self->_flashEnabled = 0;
    [(NFMPlayCommands *)self setFlashEnabled:0];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "########### Schedule Flash", v7, 2u);
    }

    self->_flashEnabled = !self->_flashEnabled;
    [(NFMPlayCommands *)self setFlashEnabled:?];
    --self->_flashCount;
  }
}

- (BOOL)_isFaceTimeOrCameraFrontmost
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_286C65908];
  v2 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:?];
  v3 = MEMORY[0x277D46FA8];
  descriptor = [MEMORY[0x277D46FB0] descriptor];
  v19 = v2;
  v5 = [v3 statesForPredicate:v2 withDescriptor:descriptor error:0];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = nfm_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          process = [v11 process];
          bundle = [process bundle];
          identifier = [bundle identifier];
          v16 = [v11 description];
          *buf = 138412546;
          v27 = identifier;
          v28 = 2112;
          v29 = v16;
          _os_log_impl(&dword_25B17F000, v12, OS_LOG_TYPE_DEFAULT, "########### Application state: %@, %@", buf, 0x16u);
        }

        v8 |= [v11 taskState] == 4;
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)_isInFaceTimeCall
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [mEMORY[0x277D6EDF8] currentVideoCallCount] != 0;

  return v3;
}

- (BOOL)_isInPhoneOrFaceTimeCall
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  if (currentCalls)
  {
    _isInFaceTimeCall = 1;
  }

  else
  {
    _isInFaceTimeCall = [(NFMPlayCommands *)self _isInFaceTimeCall];
  }

  return _isInFaceTimeCall;
}

- (void)setFlashEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B17F000, a2, OS_LOG_TYPE_ERROR, "########### No Torch! (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setFlashEnabled:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25B17F000, log, OS_LOG_TYPE_ERROR, "########### Error adjusting flash: %@ (For Device: %@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end