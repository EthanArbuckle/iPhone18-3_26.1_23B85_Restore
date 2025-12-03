@interface MRUSpatialAudioController
- (BOOL)isEnabled;
- (BOOL)isMultichannel;
- (BOOL)isMultichannelAvailable;
- (BOOL)isSpatialAudioActive;
- (MRUSpatialAudioController)initWithOutputDeviceRouteController:(id)controller;
- (MRUSpatialAudioControllerDelegate)delegate;
- (NSString)description;
- (id)localizedStringForRenderingMode:(int64_t)mode;
- (id)preferenceForBundleID:(id)d outputDevice:(id)device;
- (id)preferencesForMode:(id)mode previousPreferences:(id)preferences;
- (void)accessibilityHeadTrackChangedNotification;
- (void)dealloc;
- (void)expanseManagerDidJoinExpanseSession:(id)session;
- (void)expanseManagerDidLeaveExpanseSession:(id)session;
- (void)nowPlayingAudioFormatController:(id)controller didChangeAudioFormatApplication:(id)application;
- (void)nowPlayingAudioFormatController:(id)controller didChangeAudioFormatContentInfo:(id)info;
- (void)resetOptimisticSpatialAudioActive;
- (void)setPreferences:(id)preferences forBundleID:(id)d outputDevice:(id)device;
- (void)setSelectedMode:(id)mode;
- (void)startMonitoring;
- (void)startOptimisticSpatialAudioActive;
- (void)stopMonitoring;
- (void)stopOptimisticSpatialAudioActive;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)devices;
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
  audioFormatApplication = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  audioFormatContentInfo = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  bundleID = [audioFormatContentInfo bundleID];
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v7 = [(MRUSpatialAudioController *)self preferenceForBundleID:bundleID outputDevice:primaryOutputDeviceRoute];

  isSpatialAudioActive = [(MRUSpatialAudioController *)self isSpatialAudioActive];
  if ([audioFormatApplication isFaceTime])
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

  v35 = isSpatialAudioActive;
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
    v25 = audioFormatApplication;
    v26 = objc_opt_class();
    isValid = [(NSTimer *)self->_optimisticSpatialAudioActiveTimer isValid];
    isDeviceSpatialAudioSupported = self->_isDeviceSpatialAudioSupported;
    accessoryStereoHFPStatus = self->_accessoryStereoHFPStatus;
    v36 = v18;
    isHeadTrackingEnabled = [(MRUSpatialAccessibilityObserver *)self->_accessibilityObserver isHeadTrackingEnabled];
    v28 = v14;
    isMonoAudioEnabled = [(MRUSpatialAccessibilityObserver *)self->_accessibilityObserver isMonoAudioEnabled];
    isSplitRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute];
    *buf = 138545666;
    v38 = v26;
    audioFormatApplication = v25;
    v39 = 2114;
    v40 = v7;
    v41 = 2114;
    v42 = v25;
    v43 = 2114;
    v44 = audioFormatContentInfo;
    v45 = 1024;
    v46 = isValid;
    v47 = 1024;
    v48 = isDeviceSpatialAudioSupported;
    v49 = 1024;
    v50 = accessoryStereoHFPStatus;
    v51 = 1024;
    v52 = isHeadTrackingEnabled;
    v21 = v34;
    v18 = v36;
    v53 = 1024;
    v54 = isMonoAudioEnabled;
    v14 = v28;
    v55 = 1024;
    v56 = isSplitRoute;
    _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ update modes - pref: %{public}@ | application: %{public}@ | contentInfo: %{public}@ | OptActive: %{BOOL}u | Supported: %{BOOL}u | HFP: %{PUBLIC}i | HTAcess: %{BOOL}u | Mono: %{BOOL}u | split: %{BOOL}u", buf, 0x4Eu);
  }
}

- (BOOL)isSpatialAudioActive
{
  audioFormatContentInfo = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  audioFormatApplication = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  v5 = ([audioFormatApplication isFaceTime] & 1) != 0 || (objc_msgSend(audioFormatContentInfo, "isSpatialized") & 1) != 0 || -[NSTimer isValid](self->_optimisticSpatialAudioActiveTimer, "isValid");

  return v5;
}

- (BOOL)isMultichannel
{
  audioFormatApplication = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  if ([audioFormatApplication isFaceTime])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    audioFormatContentInfo = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
    if ([audioFormatContentInfo isMultichannel])
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
  mEMORY[0x1E69B0A28] = [MEMORY[0x1E69B0A28] sharedManager];
  expanseSessionHasScreenSharingActivity = [mEMORY[0x1E69B0A28] expanseSessionHasScreenSharingActivity];

  if (expanseSessionHasScreenSharingActivity)
  {
    return 0;
  }

  audioFormatApplication = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  isFaceTime = [audioFormatApplication isFaceTime];

  if (isFaceTime)
  {
    return 1;
  }

  audioFormatContentInfo = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  if ([audioFormatContentInfo isEligibleForSpatialization])
  {
    audioFormatContentInfo2 = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
    audioFormatDescription = [audioFormatContentInfo2 audioFormatDescription];
    v5 = audioFormatDescription != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateNowPlaying
{
  audioFormatApplication = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  audioFormatContentInfo = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  bundleID = [audioFormatApplication bundleID];
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v6 = [(MRUSpatialAudioController *)self preferenceForBundleID:bundleID outputDevice:primaryOutputDeviceRoute];

  renderingMode = [audioFormatContentInfo renderingMode];
  if ([audioFormatApplication isFaceTime])
  {
    v8 = +[MRUStringsProvider spatialButtonTitle];
  }

  else if (self->_isDeviceSpatialAudioSupported || (renderingMode - 6) < 0xFFFFFFFFFFFFFFFDLL)
  {
    if ([(NSTimer *)self->_optimisticSpatialAudioActiveTimer isValid]&& [(MRUSpatialAudioController *)self isMultichannel])
    {
      if ([audioFormatContentInfo bestAvailableAudioFormat] == 2)
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
      [audioFormatContentInfo audioFormatDescription];
    }

    else
    {
      [audioFormatContentInfo bestAvailableAudioFormatDescription];
    }
    v8 = ;
  }

  else
  {
    v8 = [(MRUSpatialAudioController *)self localizedStringForRenderingMode:renderingMode];
  }

  v9 = v8;
  if ([(MRUSpatialAudioController *)self isEnabled])
  {
    if (!self->_isDeviceSpatialAudioSupported && (renderingMode - 3) >= 3)
    {
      goto LABEL_18;
    }
  }

  else if ((renderingMode - 3) > 2)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_21;
  }

  v11 = [MRUVolumeNowPlayingInfo alloc];
  bundleID2 = [audioFormatApplication bundleID];
  displayName = [audioFormatApplication displayName];
  v10 = [(MRUVolumeNowPlayingInfo *)v11 initWithBundleID:bundleID2 name:displayName formatDescription:v9];

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
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [primaryOutputDeviceRoute logicalLeaderOutputDevice];

  supportsHeadTrackedSpatialAudio = [logicalLeaderOutputDevice supportsHeadTrackedSpatialAudio];
  if ([(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute])
  {
    secondaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
    logicalLeaderOutputDevice2 = [secondaryOutputDeviceRoute logicalLeaderOutputDevice];

    if (supportsHeadTrackedSpatialAudio)
    {
      if ([logicalLeaderOutputDevice2 supportsHeadTrackedSpatialAudio])
      {
        supportsHeadTrackedSpatialAudio = +[MRUFeatureFlagProvider isSpatialOnAggregateDevices];
      }

      else
      {
        supportsHeadTrackedSpatialAudio = 0;
      }
    }
  }

  if (self->_isDeviceSpatialAudioSupported != supportsHeadTrackedSpatialAudio)
  {
    self->_isDeviceSpatialAudioSupported = supportsHeadTrackedSpatialAudio;
    [(MRUSpatialAudioController *)self updateSpatialAudioModes];
  }
}

- (void)updateHeadTrackingAvailable
{
  v23 = *MEMORY[0x1E69E9840];
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [primaryOutputDeviceRoute logicalLeaderOutputDevice];

  if ([logicalLeaderOutputDevice deviceType] == 2)
  {
    mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
    v6 = [logicalLeaderOutputDevice uid];
    v7 = [mEMORY[0x1E698F468] deviceFromAddressString:v6];

    getStereoHFPSupport = [v7 getStereoHFPSupport];
    headTrackingAvailable = [v7 headTrackingAvailable];
    v10 = MCLogCategoryVolume();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = [logicalLeaderOutputDevice uid];
      v13 = 138544386;
      v14 = v11;
      v15 = 1026;
      v16 = getStereoHFPSupport;
      v17 = 1024;
      v18 = headTrackingAvailable;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved accessoryStereoHFPStatus: %{public}i | isHeadTrackingAvailable: %{BOOL}u for uid: %{public}@ | device: %{public}@", &v13, 0x2Cu);
    }
  }

  else
  {
    headTrackingAvailable = 0;
    getStereoHFPSupport = 0;
  }

  if (self->_accessoryStereoHFPStatus != getStereoHFPSupport || self->_isHeadTrackingAvailable != headTrackingAvailable)
  {
    self->_accessoryStereoHFPStatus = getStereoHFPSupport;
    self->_isHeadTrackingAvailable = headTrackingAvailable;
    [(MRUSpatialAudioController *)self updateSpatialAudioModes];
  }
}

- (MRUSpatialAudioController)initWithOutputDeviceRouteController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = MRUSpatialAudioController;
  v6 = [(MRUSpatialAudioController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceRouteController, controller);
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_accessibilityHeadTrackChangedNotification name:*MEMORY[0x1E698F430] object:0];
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
  audioFormatApplication = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  audioFormatContentInfo = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  if ([(NSTimer *)self->_optimisticSpatialAudioActiveTimer isValid])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  mEMORY[0x1E69B0A28] = [MEMORY[0x1E69B0A28] sharedManager];
  if ([mEMORY[0x1E69B0A28] expanseSessionHasScreenSharingActivity])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"%@ | %@ | %@ | optimistic: %@ | Screen Sharing: %@", v4, audioFormatApplication, audioFormatContentInfo, v7, v9];

  return v10;
}

- (void)setSelectedMode:(id)mode
{
  modeCopy = mode;
  objc_storeStrong(&self->_selectedMode, mode);
  audioFormatContentInfo = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  bundleID = [audioFormatContentInfo bundleID];

  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v8 = [(MRUSpatialAudioController *)self preferenceForBundleID:bundleID outputDevice:primaryOutputDeviceRoute];

  v9 = [(MRUSpatialAudioController *)self preferencesForMode:modeCopy previousPreferences:v8];
  primaryOutputDeviceRoute2 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  [(MRUSpatialAudioController *)self setPreferences:v9 forBundleID:bundleID outputDevice:primaryOutputDeviceRoute2];

  if ([(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute])
  {
    secondaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
    [(MRUSpatialAudioController *)self setPreferences:v9 forBundleID:bundleID outputDevice:secondaryOutputDeviceRoute];
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
  audioFormatContentInfo = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatContentInfo];
  bestAvailableAudioFormat = [audioFormatContentInfo bestAvailableAudioFormat];

  audioFormatApplication = [(MRNowPlayingAudioFormatController *)self->_audioFormatController audioFormatApplication];
  isFaceTime = [audioFormatApplication isFaceTime];
  if ((bestAvailableAudioFormat - 1) < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = isFaceTime;
  }

  return v7;
}

- (void)startMonitoring
{
  mEMORY[0x1E69B0A28] = [MEMORY[0x1E69B0A28] sharedManager];
  [mEMORY[0x1E69B0A28] addObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_headTrackChangedNotification name:*MEMORY[0x1E698F430] object:0];

  [(MRUSpatialAudioController *)self updateDeviceSpatialAudioSupported];
  [(MRUSpatialAudioController *)self updateHeadTrackingAvailable];

  [(MRUSpatialAudioController *)self updateSpatialAudioModes];
}

- (void)stopMonitoring
{
  mEMORY[0x1E69B0A28] = [MEMORY[0x1E69B0A28] sharedManager];
  [mEMORY[0x1E69B0A28] removeObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698F430] object:0];
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

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)devices
{
  [(NSCache *)self->_cache removeAllObjects];
  [(MRUSpatialAudioController *)self updateSpatialAudioModes];
  [(MRUSpatialAudioController *)self updateHeadTrackingAvailable];

  [(MRUSpatialAudioController *)self updateNowPlaying];
}

- (void)nowPlayingAudioFormatController:(id)controller didChangeAudioFormatApplication:(id)application
{
  [(MRUSpatialAudioController *)self resetOptimisticSpatialAudioActive:controller];
  [(MRUSpatialAudioController *)self updateSpatialAudioModes];

  [(MRUSpatialAudioController *)self updateNowPlaying];
}

- (void)nowPlayingAudioFormatController:(id)controller didChangeAudioFormatContentInfo:(id)info
{
  [(MRUSpatialAudioController *)self resetOptimisticSpatialAudioActive:controller];
  [(MRUSpatialAudioController *)self updateSpatialAudioModes];

  [(MRUSpatialAudioController *)self updateNowPlaying];
}

- (void)expanseManagerDidJoinExpanseSession:(id)session
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRUSpatialAudioController_expanseManagerDidJoinExpanseSession___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)expanseManagerDidLeaveExpanseSession:(id)session
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRUSpatialAudioController_expanseManagerDidLeaveExpanseSession___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)preferenceForBundleID:(id)d outputDevice:(id)device
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  cache = self->_cache;
  deviceCopy = device;
  v9 = [(NSCache *)cache objectForKey:dCopy];
  logicalLeaderOutputDevice = [deviceCopy logicalLeaderOutputDevice];

  if ([logicalLeaderOutputDevice deviceType] == 2)
  {
    mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
    v12 = [logicalLeaderOutputDevice uid];
    v13 = [mEMORY[0x1E698F468] deviceFromAddressString:v12];

    v22 = 0;
    v21 = 0;
    v14 = [v13 spatialAudioConfig:dCopy spatialMode:&v22 headTracking:&v21];
    if (v14)
    {
      v15 = [MRUSpatialAudioPreferences alloc];
      v16 = [(MRUSpatialAudioPreferences *)v15 initWithMode:v22 headTrackingEnabled:v21];

      [(NSCache *)self->_cache setObject:v16 forKey:dCopy];
      v9 = v16;
    }

    v17 = MCLogCategoryVolume();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = [logicalLeaderOutputDevice uid];
      *buf = 138544386;
      v24 = v18;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = dCopy;
      v29 = 2114;
      v30 = v19;
      v31 = 1024;
      v32 = v14;
      _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved preferences: %{public}@ for bundle id: %{public}@ | uid: %{public}@ | success: %{BOOL}u", buf, 0x30u);
    }
  }

  return v9;
}

- (void)setPreferences:(id)preferences forBundleID:(id)d outputDevice:(id)device
{
  v28 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  dCopy = d;
  logicalLeaderOutputDevice = [device logicalLeaderOutputDevice];
  if ([logicalLeaderOutputDevice deviceType] == 2)
  {
    mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
    v12 = [logicalLeaderOutputDevice uid];
    v13 = [mEMORY[0x1E698F468] deviceFromAddressString:v12];

    v14 = [v13 setSpatialAudioConfig:dCopy spatialMode:objc_msgSend(preferencesCopy headTracking:{"mode"), objc_msgSend(preferencesCopy, "isHeadTrackingEnabled")}];
    if (v14)
    {
      [(NSCache *)self->_cache setObject:preferencesCopy forKey:dCopy];
    }

    v15 = MCLogCategoryVolume();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = [logicalLeaderOutputDevice uid];
      v18 = 138544386;
      v19 = v16;
      v20 = 2114;
      v21 = preferencesCopy;
      v22 = 2114;
      v23 = dCopy;
      v24 = 2114;
      v25 = v17;
      v26 = 1024;
      v27 = v14;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ set preferences: %{public}@ for bundle id: %{public}@ | uid: %{public}@ | success: %{BOOL}u", &v18, 0x30u);
    }
  }
}

- (id)preferencesForMode:(id)mode previousPreferences:(id)preferences
{
  modeCopy = mode;
  preferencesCopy = preferences;
  isSpatialAudioActive = [(MRUSpatialAudioController *)self isSpatialAudioActive];
  isMultichannel = [(MRUSpatialAudioController *)self isMultichannel];
  isMultichannelAvailable = [(MRUSpatialAudioController *)self isMultichannelAvailable];
  v11 = 3;
  if ([preferencesCopy mode] != 1 || isSpatialAudioActive || !isMultichannel)
  {
    v12 = [preferencesCopy mode] == 0;
    if (isMultichannel)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 && isMultichannelAvailable)
    {
      v11 = 3;
    }

    else
    {
      v11 = v13;
    }
  }

  type = [modeCopy type];
  if (type == 2)
  {
    v15 = [MRUSpatialAudioPreferences alloc];
    v16 = v11;
    v17 = 1;
  }

  else
  {
    if (type != 1)
    {
      if (type)
      {
        goto LABEL_19;
      }

      if (isMultichannel)
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

- (id)localizedStringForRenderingMode:(int64_t)mode
{
  v3 = @"Not Applicable";
  if (mode <= 2)
  {
    if (mode == 1)
    {
      v3 = +[MRUStringsProvider audioSessionRenderingModeMonoStereo];
    }

    else if (mode == 2)
    {
      v3 = +[MRUStringsProvider audioSessionRenderingModeSurround];
    }
  }

  else
  {
    switch(mode)
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