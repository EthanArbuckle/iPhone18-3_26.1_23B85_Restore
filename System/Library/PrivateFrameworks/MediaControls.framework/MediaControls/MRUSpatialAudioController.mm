@interface MRUSpatialAudioController
- (BOOL)isEnabled;
- (BOOL)isMultichannel;
- (BOOL)isMultichannelAvailable;
- (BOOL)isSpatialAudioActive;
- (MRUSpatialAudioController)initWithOutputDeviceRouteController:(id)a3;
- (MRUSpatialAudioControllerDelegate)delegate;
- (NSString)description;
- (id)localizedStringForRenderingMode:(int64_t)a3;
- (id)preferenceForBundleID:(id)a3 outputDevice:(id)a4;
- (id)preferencesForMode:(id)a3 previousPreferences:(id)a4;
- (void)accessibilityHeadTrackChangedNotification;
- (void)dealloc;
- (void)expanseManagerDidJoinExpanseSession:(id)a3;
- (void)expanseManagerDidLeaveExpanseSession:(id)a3;
- (void)nowPlayingAudioFormatController:(id)a3 didChangeAudioFormatApplication:(id)a4;
- (void)nowPlayingAudioFormatController:(id)a3 didChangeAudioFormatContentInfo:(id)a4;
- (void)resetOptimisticSpatialAudioActive;
- (void)setPreferences:(id)a3 forBundleID:(id)a4 outputDevice:(id)a5;
- (void)setSelectedMode:(id)a3;
- (void)startMonitoring;
- (void)startOptimisticSpatialAudioActive;
- (void)stopMonitoring;
- (void)stopOptimisticSpatialAudioActive;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)a3;
- (void)updateDeviceSpatialAudioSupported;
- (void)updateHeadTrackingAvailable;
- (void)updateNowPlaying;
- (void)updateSpatialAudioModes;
@end

@implementation MRUSpatialAudioController

- (void)resetOptimisticSpatialAudioActive
{
  [(NSTimer *)self->_optimisticSpatialAudioActiveTimer invalidate];
  optimisticSpatialAudioActiveTimer = self->_optimisticSpatialAudioActiveTimer;
  self->_optimisticSpatialAudioActiveTimer = 0;
}

- (void)updateSpatialAudioModes
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  v4 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  v5 = [v4 bundleID];
  v6 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v7 = [(MRUSpatialAudioController *)self preferenceForBundleID:v5 outputDevice:v6];

  v8 = [(MRUSpatialAudioController *)self isSpatialAudioActive];
  if ([v3 isFaceTime])
  {
    v9 = self->_accessoryStereoHFPStatus == 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(MRUSpatialAccessibilityObserver *)self->_accessibilityObserver isHeadTrackingEnabled]&& ![(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute]&& self->_isHeadTrackingAvailable;
  if (!self->_isDeviceSpatialAudioSupported)
  {
    v17 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  v35 = v8;
  v11 = MEMORY[0x1E695DF70];
  v12 = [[MRUSpatialAudioMode alloc] initWithType:0];
  v13 = [[MRUSpatialAudioMode alloc] initWithType:1];
  v14 = [v11 arrayWithObjects:{v12, v13, 0}];

  if (v10)
  {
    v15 = [[MRUSpatialAudioMode alloc] initWithType:2 isEnabled:v9];
    [v14 addObject:v15];
  }

  if (!-[MRUSpatialAudioController isMultichannel](self, "isMultichannel") && [v7 mode] == 3 || !objc_msgSend(v7, "mode"))
  {
    goto LABEL_21;
  }

  if ([v7 mode] != 1 || !v35 || (objc_msgSend(v7, "isHeadTrackingEnabled") & v10 & 1) == 0)
  {
    if ([v7 mode] == 1 && v35)
    {
      v16 = 1;
      goto LABEL_22;
    }

    if ([v7 mode] != 1)
    {
      if (([v7 isHeadTrackingEnabled] & v10) != 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_22;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v16 = 2;
LABEL_22:
  v17 = [v14 objectAtIndexedSubscript:v16];
LABEL_23:
  v18 = self->_availableModes;
  v19 = [v14 copy];
  availableModes = self->_availableModes;
  self->_availableModes = v19;

  v21 = self->_selectedMode;
  objc_storeStrong(&self->_selectedMode, v17);
  if (![(NSArray *)v18 isEqualToArray:v14])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained spatialAudioController:self didChangeAvailableSpatialModes:self->_availableModes];
  }

  if (![(MRUSpatialAudioMode *)v21 isEqual:v17])
  {
    v23 = objc_loadWeakRetained(&self->_delegate);
    [v23 spatialAudioController:self didChangeSelectedSpatialMode:self->_selectedMode];
  }

  v24 = MCLogCategoryVolume();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v21;
    v25 = v3;
    v26 = objc_opt_class();
    v31 = [(NSTimer *)self->_optimisticSpatialAudioActiveTimer isValid];
    isDeviceSpatialAudioSupported = self->_isDeviceSpatialAudioSupported;
    accessoryStereoHFPStatus = self->_accessoryStereoHFPStatus;
    v36 = v18;
    v27 = [(MRUSpatialAccessibilityObserver *)self->_accessibilityObserver isHeadTrackingEnabled];
    v28 = v14;
    v29 = [(MRUSpatialAccessibilityObserver *)self->_accessibilityObserver isMonoAudioEnabled];
    v30 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute];
    *buf = 138545666;
    v38 = v26;
    v3 = v25;
    v39 = 2114;
    v40 = v7;
    v41 = 2114;
    v42 = v25;
    v43 = 2114;
    v44 = v4;
    v45 = 1024;
    v46 = v31;
    v47 = 1024;
    v48 = isDeviceSpatialAudioSupported;
    v49 = 1024;
    v50 = accessoryStereoHFPStatus;
    v51 = 1024;
    v52 = v27;
    v21 = v34;
    v18 = v36;
    v53 = 1024;
    v54 = v29;
    v14 = v28;
    v55 = 1024;
    v56 = v30;
    _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ update modes - pref: %{public}@ | application: %{public}@ | contentInfo: %{public}@ | OptActive: %{BOOL}u | Supported: %{BOOL}u | HFP: %{PUBLIC}i | HTAcess: %{BOOL}u | Mono: %{BOOL}u | split: %{BOOL}u", buf, 0x4Eu);
  }
}

- (BOOL)isSpatialAudioActive
{
  v3 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  v4 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  v5 = ([v4 isFaceTime] & 1) != 0 || (objc_msgSend(v3, "isSpatialized") & 1) != 0 || -[NSTimer isValid](self->_optimisticSpatialAudioActiveTimer, "isValid");

  return v5;
}

- (BOOL)isMultichannel
{
  v3 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  if ([v3 isFaceTime])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
    if ([v5 isMultichannel])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = ![(MRUSpatialAudioController *)self isEnabled];
    }
  }

  return v4;
}

- (BOOL)isEnabled
{
  v3 = [MEMORY[0x1E69B0A28] sharedManager];
  v4 = [v3 expanseSessionHasScreenSharingActivity];

  if (v4)
  {
    return 0;
  }

  v6 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  v7 = [v6 isFaceTime];

  if (v7)
  {
    return 1;
  }

  v8 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  if ([v8 isEligibleForSpatialization])
  {
    v9 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
    v10 = [v9 audioFormatDescription];
    v5 = v10 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateNowPlaying
{
  v15 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  v3 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  v4 = [v15 bundleID];
  v5 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v6 = [(MRUSpatialAudioController *)self preferenceForBundleID:v4 outputDevice:v5];

  v7 = [v3 renderingMode];
  if ([v15 isFaceTime])
  {
    v8 = +[MRUStringsProvider spatialButtonTitle];
  }

  else if (self->_isDeviceSpatialAudioSupported || (v7 - 6) < 0xFFFFFFFFFFFFFFFDLL)
  {
    if ([(NSTimer *)self->_optimisticSpatialAudioActiveTimer isValid]&& [(MRUSpatialAudioController *)self isMultichannel])
    {
      if ([v3 bestAvailableAudioFormat] == 2)
      {
        +[MRUStringsProvider bestAvailableAudioFormatAtmos];
      }

      else
      {
        +[MRUStringsProvider bestAvailableAudioFormatMulitchannel];
      }
    }

    else if ([v6 mode])
    {
      [v3 audioFormatDescription];
    }

    else
    {
      [v3 bestAvailableAudioFormatDescription];
    }
    v8 = ;
  }

  else
  {
    v8 = [(MRUSpatialAudioController *)self localizedStringForRenderingMode:v7];
  }

  v9 = v8;
  if ([(MRUSpatialAudioController *)self isEnabled])
  {
    if (!self->_isDeviceSpatialAudioSupported && (v7 - 3) >= 3)
    {
      goto LABEL_18;
    }
  }

  else if ((v7 - 3) > 2)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_21;
  }

  v11 = [MRUVolumeNowPlayingInfo alloc];
  v12 = [v15 bundleID];
  v13 = [v15 displayName];
  v10 = [(MRUVolumeNowPlayingInfo *)v11 initWithBundleID:v12 name:v13 formatDescription:v9];

LABEL_21:
  if (![(MRUVolumeNowPlayingInfo *)self->_nowPlayingInfo isEqual:v10])
  {
    objc_storeStrong(&self->_nowPlayingInfo, v10);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained spatialAudioController:self didChangeNowPlayingInfo:v10];
  }
}

- (void)updateDeviceSpatialAudioSupported
{
  v3 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v7 = [v3 logicalLeaderOutputDevice];

  v4 = [v7 supportsHeadTrackedSpatialAudio];
  if ([(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute])
  {
    v5 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
    v6 = [v5 logicalLeaderOutputDevice];

    if (v4)
    {
      if ([v6 supportsHeadTrackedSpatialAudio])
      {
        v4 = +[MRUFeatureFlagProvider isSpatialOnAggregateDevices];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  if (self->_isDeviceSpatialAudioSupported != v4)
  {
    self->_isDeviceSpatialAudioSupported = v4;
    [(MRUSpatialAudioController *)self updateSpatialAudioModes];
  }
}

- (void)updateHeadTrackingAvailable
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v4 = [v3 logicalLeaderOutputDevice];

  if ([v4 deviceType] == 2)
  {
    v5 = [MEMORY[0x1E698F468] sharedInstance];
    v6 = [v4 uid];
    v7 = [v5 deviceFromAddressString:v6];

    v8 = [v7 getStereoHFPSupport];
    v9 = [v7 headTrackingAvailable];
    v10 = MCLogCategoryVolume();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = [v4 uid];
      v13 = 138544386;
      v14 = v11;
      v15 = 1026;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved accessoryStereoHFPStatus: %{public}i | isHeadTrackingAvailable: %{BOOL}u for uid: %{public}@ | device: %{public}@", &v13, 0x2Cu);
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (self->_accessoryStereoHFPStatus != v8 || self->_isHeadTrackingAvailable != v9)
  {
    self->_accessoryStereoHFPStatus = v8;
    self->_isHeadTrackingAvailable = v9;
    [(MRUSpatialAudioController *)self updateSpatialAudioModes];
  }
}

- (MRUSpatialAudioController)initWithOutputDeviceRouteController:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = MRUSpatialAudioController;
  v6 = [(MRUSpatialAudioController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceRouteController, a3);
    [(MRUSystemOutputDeviceRouteController *)v7->_outputDeviceRouteController add:v7];
    v8 = objc_alloc_init(MEMORY[0x1E69B0A80]);
    audioFormatController = v7->_audioFormatController;
    v7->_audioFormatController = v8;

    [(MRNowPlayingAudioFormatController *)v7->_audioFormatController setDelegate:v7];
    v10 = objc_alloc_init(MRUSpatialAccessibilityObserver);
    accessibilityObserver = v7->_accessibilityObserver;
    v7->_accessibilityObserver = v10;

    [(MRUSpatialAccessibilityObserver *)v7->_accessibilityObserver setDelegate:v7];
    v12 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v7->_cache;
    v7->_cache = v12;

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v7 selector:sel_accessibilityHeadTrackChangedNotification name:*MEMORY[0x1E698F430] object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(MRUSpatialAudioController *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = MRUSpatialAudioController;
  [(MRUSpatialAudioController *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  v6 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  if ([(NSTimer *)self->_optimisticSpatialAudioActiveTimer isValid])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [MEMORY[0x1E69B0A28] sharedManager];
  if ([v8 expanseSessionHasScreenSharingActivity])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"%@ | %@ | %@ | optimistic: %@ | Screen Sharing: %@", v4, v5, v6, v7, v9];

  return v10;
}

- (void)setSelectedMode:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_selectedMode, a3);
  v5 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  v6 = [v5 bundleID];

  v7 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v8 = [(MRUSpatialAudioController *)self preferenceForBundleID:v6 outputDevice:v7];

  v9 = [(MRUSpatialAudioController *)self preferencesForMode:v12 previousPreferences:v8];
  v10 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  [(MRUSpatialAudioController *)self setPreferences:v9 forBundleID:v6 outputDevice:v10];

  if ([(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute])
  {
    v11 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
    [(MRUSpatialAudioController *)self setPreferences:v9 forBundleID:v6 outputDevice:v11];
  }

  if (![v8 mode] && objc_msgSend(v9, "mode") == 1 && -[MRUSpatialAudioController isMultichannelAvailable](self, "isMultichannelAvailable"))
  {
    [(MRUSpatialAudioController *)self startOptimisticSpatialAudioActive];
  }

  else
  {
    [(MRUSpatialAudioController *)self stopOptimisticSpatialAudioActive];
  }
}

- (BOOL)isMultichannelAvailable
{
  v3 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  v4 = [v3 bestAvailableAudioFormat];

  v5 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  v6 = [v5 isFaceTime];
  if ((v4 - 1) < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)startMonitoring
{
  v3 = [MEMORY[0x1E69B0A28] sharedManager];
  [v3 addObserver:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_headTrackChangedNotification name:*MEMORY[0x1E698F430] object:0];

  [(MRUSpatialAudioController *)self updateDeviceSpatialAudioSupported];
  [(MRUSpatialAudioController *)self updateHeadTrackingAvailable];

  [(MRUSpatialAudioController *)self updateSpatialAudioModes];
}

- (void)stopMonitoring
{
  v3 = [MEMORY[0x1E69B0A28] sharedManager];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E698F430] object:0];
}

- (void)startOptimisticSpatialAudioActive
{
  [(NSTimer *)self->_optimisticSpatialAudioActiveTimer invalidate];
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_stopOptimisticSpatialAudioActive selector:0 userInfo:0 repeats:300.0];
  optimisticSpatialAudioActiveTimer = self->_optimisticSpatialAudioActiveTimer;
  self->_optimisticSpatialAudioActiveTimer = v3;

  MEMORY[0x1EEE66BB8](v3, optimisticSpatialAudioActiveTimer);
}

- (void)stopOptimisticSpatialAudioActive
{
  if ([(NSTimer *)self->_optimisticSpatialAudioActiveTimer isValid])
  {
    [(NSTimer *)self->_optimisticSpatialAudioActiveTimer invalidate];
    optimisticSpatialAudioActiveTimer = self->_optimisticSpatialAudioActiveTimer;
    self->_optimisticSpatialAudioActiveTimer = 0;

    [(MRUSpatialAudioController *)self updateSpatialAudioModes];
  }
}

- (void)accessibilityHeadTrackChangedNotification
{
  [(NSCache *)self->_cache removeAllObjects];

  [(MRUSpatialAudioController *)self updateSpatialAudioModes];
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)a3
{
  [(NSCache *)self->_cache removeAllObjects];
  [(MRUSpatialAudioController *)self updateSpatialAudioModes];
  [(MRUSpatialAudioController *)self updateHeadTrackingAvailable];

  [(MRUSpatialAudioController *)self updateNowPlaying];
}

- (void)nowPlayingAudioFormatController:(id)a3 didChangeAudioFormatApplication:(id)a4
{
  [(MRUSpatialAudioController *)self resetOptimisticSpatialAudioActive:a3];
  [(MRUSpatialAudioController *)self updateSpatialAudioModes];

  [(MRUSpatialAudioController *)self updateNowPlaying];
}

- (void)nowPlayingAudioFormatController:(id)a3 didChangeAudioFormatContentInfo:(id)a4
{
  [(MRUSpatialAudioController *)self resetOptimisticSpatialAudioActive:a3];
  [(MRUSpatialAudioController *)self updateSpatialAudioModes];

  [(MRUSpatialAudioController *)self updateNowPlaying];
}

- (void)expanseManagerDidJoinExpanseSession:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRUSpatialAudioController_expanseManagerDidJoinExpanseSession___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)expanseManagerDidLeaveExpanseSession:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRUSpatialAudioController_expanseManagerDidLeaveExpanseSession___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)preferenceForBundleID:(id)a3 outputDevice:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  cache = self->_cache;
  v8 = a4;
  v9 = [(NSCache *)cache objectForKey:v6];
  v10 = [v8 logicalLeaderOutputDevice];

  if ([v10 deviceType] == 2)
  {
    v11 = [MEMORY[0x1E698F468] sharedInstance];
    v12 = [v10 uid];
    v13 = [v11 deviceFromAddressString:v12];

    v22 = 0;
    v21 = 0;
    v14 = [v13 spatialAudioConfig:v6 spatialMode:&v22 headTracking:&v21];
    if (v14)
    {
      v15 = [MRUSpatialAudioPreferences alloc];
      v16 = [(MRUSpatialAudioPreferences *)v15 initWithMode:v22 headTrackingEnabled:v21];

      [(NSCache *)self->_cache setObject:v16 forKey:v6];
      v9 = v16;
    }

    v17 = MCLogCategoryVolume();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = [v10 uid];
      *buf = 138544386;
      v24 = v18;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v6;
      v29 = 2114;
      v30 = v19;
      v31 = 1024;
      v32 = v14;
      _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved preferences: %{public}@ for bundle id: %{public}@ | uid: %{public}@ | success: %{BOOL}u", buf, 0x30u);
    }
  }

  return v9;
}

- (void)setPreferences:(id)a3 forBundleID:(id)a4 outputDevice:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [a5 logicalLeaderOutputDevice];
  if ([v10 deviceType] == 2)
  {
    v11 = [MEMORY[0x1E698F468] sharedInstance];
    v12 = [v10 uid];
    v13 = [v11 deviceFromAddressString:v12];

    v14 = [v13 setSpatialAudioConfig:v9 spatialMode:objc_msgSend(v8 headTracking:{"mode"), objc_msgSend(v8, "isHeadTrackingEnabled")}];
    if (v14)
    {
      [(NSCache *)self->_cache setObject:v8 forKey:v9];
    }

    v15 = MCLogCategoryVolume();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = [v10 uid];
      v18 = 138544386;
      v19 = v16;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      v24 = 2114;
      v25 = v17;
      v26 = 1024;
      v27 = v14;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ set preferences: %{public}@ for bundle id: %{public}@ | uid: %{public}@ | success: %{BOOL}u", &v18, 0x30u);
    }
  }
}

- (id)preferencesForMode:(id)a3 previousPreferences:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRUSpatialAudioController *)self isSpatialAudioActive];
  v9 = [(MRUSpatialAudioController *)self isMultichannel];
  v10 = [(MRUSpatialAudioController *)self isMultichannelAvailable];
  v11 = 3;
  if ([v7 mode] != 1 || v8 || !v9)
  {
    v12 = [v7 mode] == 0;
    if (v9)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 && v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = [v6 type];
  if (v14 == 2)
  {
    v15 = [MRUSpatialAudioPreferences alloc];
    v16 = v11;
    v17 = 1;
  }

  else
  {
    if (v14 != 1)
    {
      if (v14)
      {
        goto LABEL_19;
      }

      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 3;
      }
    }

    v15 = [MRUSpatialAudioPreferences alloc];
    v16 = v11;
    v17 = 0;
  }

  v11 = [(MRUSpatialAudioPreferences *)v15 initWithMode:v16 headTrackingEnabled:v17];
LABEL_19:

  return v11;
}

- (id)localizedStringForRenderingMode:(int64_t)a3
{
  v3 = @"Not Applicable";
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v3 = +[MRUStringsProvider audioSessionRenderingModeMonoStereo];
    }

    else if (a3 == 2)
    {
      v3 = +[MRUStringsProvider audioSessionRenderingModeSurround];
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v3 = +[MRUStringsProvider audioSessionRenderingModeSpatialAudio];
        break;
      case 4:
        v3 = +[MRUStringsProvider audioSessionRenderingModeDolbyAudio];
        break;
      case 5:
        v3 = +[MRUStringsProvider audioSessionRenderingModeDolbyAtmos];
        break;
    }
  }

  return v3;
}

- (MRUSpatialAudioControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end