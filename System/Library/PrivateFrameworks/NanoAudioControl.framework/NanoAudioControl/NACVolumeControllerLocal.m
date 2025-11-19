@interface NACVolumeControllerLocal
- (BOOL)isMuted;
- (BOOL)isVolumeControlAvailable;
- (BOOL)isVolumeWarningEnabled;
- (NACVolumeControllerDelegate)delegate;
- (NACVolumeControllerLocal)initWithAudioCategory:(id)a3;
- (NACVolumeControllerLocal)initWithRoute:(id)a3;
- (NACVolumeControllerLocal)initWithTarget:(int64_t)a3 category:(id)a4;
- (NSOrderedSet)availableListeningModes;
- (NSString)currentListeningMode;
- (float)EUVolumeLimit;
- (float)hapticIntensity;
- (float)volumeValue;
- (id)_init;
- (id)_mediaControlsVolumeController;
- (id)_volumeController;
- (int64_t)hapticState;
- (int64_t)volumeWarningState;
- (void)_ignoreHapticObservation;
- (void)_setHapticIntensity:(id)a3;
- (void)_setVolumeValue:(id)a3;
- (void)_updateMutedStateFromVolumeController:(id)a3;
- (void)_updateVolumeState;
- (void)allowUserToExceedEUVolumeLimit;
- (void)beginObservingHapticState;
- (void)beginObservingHaptics;
- (void)beginObservingListeningModes;
- (void)beginObservingVolume;
- (void)endObservingHapticState;
- (void)endObservingHaptics;
- (void)playDefaultHapticPreview;
- (void)playPreview;
- (void)playProminentHapticPreview;
- (void)routingControllerAvailableRoutesDidChange:(id)a3;
- (void)setCurrentListeningMode:(id)a3;
- (void)setHapticIntensity:(float)a3;
- (void)setHapticState:(int64_t)a3;
- (void)setVolumeValue:(float)a3;
- (void)updateCachedHapticState;
- (void)volumeController:(id)a3 EUVolumeLimitDidChange:(float)a4;
- (void)volumeController:(id)a3 mutedStateDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
- (void)volumeController:(id)a3 volumeWarningStateDidChange:(int64_t)a4;
@end

@implementation NACVolumeControllerLocal

- (BOOL)isVolumeControlAvailable
{
  target = self->_target;
  if (target == 1)
  {
    v8 = [(MPVolumeController *)self->_volumeController dataSource];
    v9 = [v8 groupRoute];
    if (v9)
    {
      v2 = [(MPVolumeController *)self->_volumeController isVolumeControlAvailable];
    }

    else
    {
      v2 = 0;
    }

    return v2 & 1;
  }

  if (target)
  {
    return v2 & 1;
  }

  if (self->_route)
  {
    v5 = [(NACVolumeControllerLocal *)self _volumeController];
    v6 = [v5 isVolumeControlAvailable];

    return v6;
  }

  else
  {
    routingController = self->_routingController;

    return [(MPAVRoutingController *)routingController volumeControlIsAvailable];
  }
}

- (void)beginObservingVolume
{
  if (!self->_route && !self->_routingController)
  {
    target = self->_target;
    if (target == 1)
    {
      v7 = objc_alloc(MEMORY[0x277CD5D48]);
      v8 = objc_alloc_init(MEMORY[0x277CD5D10]);
      v9 = [v7 initWithDataSource:v8 name:0];
      routingController = self->_routingController;
      self->_routingController = v9;

      v6 = 3;
    }

    else
    {
      if (target)
      {
        goto LABEL_8;
      }

      v4 = objc_alloc_init(MEMORY[0x277CD5D48]);
      v5 = self->_routingController;
      self->_routingController = v4;

      [(MPAVRoutingController *)self->_routingController setCategory:self->_audioCategory];
      v6 = 0;
    }

    [(MPAVRoutingController *)self->_routingController setDelegate:self];
    [(MPAVRoutingController *)self->_routingController setDiscoveryMode:v6];
  }

LABEL_8:
  if (!self->_shouldIgnoreHaptics)
  {
    [(NACVolumeControllerLocal *)self beginObservingHaptics];
  }

  v11 = [(NACVolumeControllerLocal *)self _volumeController];

  if (v11)
  {
    [(NACVolumeControllerLocal *)self _updateVolumeState];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 volumeControllerDidUpdateVolumeValue:self];
    }
  }

  else
  {
    self->_validCachedMutedValue = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__NACVolumeControllerLocal_beginObservingVolume__block_invoke;
    block[3] = &unk_27992B4E8;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

- (void)_updateVolumeState
{
  v3 = [(NACVolumeControllerLocal *)self _volumeController];
  [v3 updateVolumeValue];
  [v3 updateVolumeWarningState];
  [(NACVolumeControllerLocal *)self _updateMutedStateFromVolumeController:v3];
}

- (float)volumeValue
{
  v2 = [(NACVolumeControllerLocal *)self _volumeController];
  [v2 volumeValue];
  v4 = v3;

  return v4;
}

- (BOOL)isMuted
{
  if (!self->_validCachedMutedValue)
  {
    v3 = [(NACVolumeControllerLocal *)self _volumeController];
    self->_muted = [v3 isMuted];

    self->_validCachedMutedValue = 1;
  }

  return self->_muted;
}

- (BOOL)isVolumeWarningEnabled
{
  v2 = [(NACVolumeControllerLocal *)self _volumeController];
  v3 = [v2 volumeWarningEnabled];

  return v3;
}

- (void)_ignoreHapticObservation
{
  self->_shouldIgnoreHaptics = 1;
  if (self->_monitoringHaptics)
  {
    [(NACVolumeControllerLocal *)self endObservingHaptics];
  }
}

- (void)endObservingHaptics
{
  if (self->_monitoringHaptics)
  {
    [(NACVolumeControllerLocal *)self endObservingHapticState];
    self->_monitoringHaptics = 0;
  }
}

- (NACVolumeControllerLocal)initWithAudioCategory:(id)a3
{
  v5 = a3;
  v6 = [(NACVolumeControllerLocal *)self _init];
  v7 = v6;
  if (v6)
  {
    v6->_target = 0;
    objc_storeStrong(&v6->_audioCategory, a3);
  }

  return v7;
}

- (NACVolumeControllerLocal)initWithRoute:(id)a3
{
  v5 = a3;
  v6 = [(NACVolumeControllerLocal *)self _init];
  v7 = v6;
  if (v6)
  {
    v6->_target = 0;
    objc_storeStrong(&v6->_route, a3);
  }

  return v7;
}

- (NACVolumeControllerLocal)initWithTarget:(int64_t)a3 category:(id)a4
{
  v7 = a4;
  v8 = [(NACVolumeControllerLocal *)self _init];
  v9 = v8;
  if (v8)
  {
    v8->_target = a3;
    objc_storeStrong(&v8->_audioCategory, a4);
  }

  return v9;
}

- (id)_init
{
  v19.receiver = self;
  v19.super_class = NACVolumeControllerLocal;
  v2 = [(NACVolumeControllerLocal *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_new();
    volumeSetHistory = v2->_volumeSetHistory;
    v2->_volumeSetHistory = v3;

    v5 = dispatch_queue_create("NACVolumeControllerLocal", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    objc_initWeak(&location, v2);
    v7 = objc_opt_new();
    volumeThrottler = v2->_volumeThrottler;
    v2->_volumeThrottler = v7;

    [(NACEventThrottler *)v2->_volumeThrottler setMinimumDelay:0.1];
    v9 = v2->_volumeThrottler;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __33__NACVolumeControllerLocal__init__block_invoke;
    v16[3] = &unk_27992B890;
    objc_copyWeak(&v17, &location);
    [(NACEventThrottler *)v9 setEventBlock:v16];
    v10 = objc_opt_new();
    hapticThrottler = v2->_hapticThrottler;
    v2->_hapticThrottler = v10;

    [(NACEventThrottler *)v2->_hapticThrottler setMinimumDelay:0.5];
    v12 = v2->_hapticThrottler;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __33__NACVolumeControllerLocal__init__block_invoke_2;
    v14[3] = &unk_27992B890;
    objc_copyWeak(&v15, &location);
    [(NACEventThrottler *)v12 setEventBlock:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__NACVolumeControllerLocal__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setVolumeValue:v3];
}

void __33__NACVolumeControllerLocal__init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setHapticIntensity:v3];
}

void __48__NACVolumeControllerLocal_beginObservingVolume__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3 == 1)
  {
    v5 = objc_alloc(MEMORY[0x277CD60F8]);
    v6 = [*(*(a1 + 32) + 40) availableRoutes];
    v7 = [v6 firstObject];
    v4 = [v5 initWithGroupRoute:v7 outputDeviceRoute:0];
  }

  else if (v3)
  {
    v4 = 0;
  }

  else if (*(v2 + 24))
  {
    v4 = [objc_alloc(MEMORY[0x277CD60F8]) initWithGroupRoute:*(*(a1 + 32) + 24) outputDeviceRoute:0];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CD6100]);
    [v4 setVolumeAudioCategory:*(*(a1 + 32) + 16)];
  }

  v8 = [objc_alloc(MEMORY[0x277CD60F0]) initWithDataSource:v4];
  [v8 setDelegate:*(a1 + 32)];
  objc_storeStrong((*(a1 + 32) + 32), v8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__NACVolumeControllerLocal_beginObservingVolume__block_invoke_2;
  v10[3] = &unk_27992B510;
  v10[4] = *(a1 + 32);
  v11 = v8;
  v9 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __48__NACVolumeControllerLocal_beginObservingVolume__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateMutedStateFromVolumeController:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 volumeControllerDidUpdateVolumeValue:*(a1 + 32)];
  }
}

- (void)beginObservingHaptics
{
  if (!self->_monitoringHaptics)
  {
    *&self->_shouldIgnoreHaptics = 256;
    [(NACVolumeControllerLocal *)self beginObservingHapticState];

    [(NACVolumeControllerLocal *)self updateCachedHapticState];
  }
}

- (void)beginObservingListeningModes
{
  v3 = [(NACVolumeControllerLocal *)self _mediaControlsVolumeController];
  [v3 addObserver:self];
}

- (float)EUVolumeLimit
{
  v2 = [(NACVolumeControllerLocal *)self _volumeController];
  [v2 EUVolumeLimit];
  v4 = v3;

  return v4;
}

- (int64_t)volumeWarningState
{
  v2 = [(NACVolumeControllerLocal *)self _volumeController];
  v3 = [v2 volumeWarningState];

  return v3;
}

- (void)setVolumeValue:(float)a3
{
  volumeThrottler = self->_volumeThrottler;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(NACEventThrottler *)volumeThrottler setValue:v4];
}

- (void)_setVolumeValue:(id)a3
{
  v4 = a3;
  [v4 floatValue];
  v6 = v5;
  [(NSCountedSet *)self->_volumeSetHistory addObject:v4];

  v7 = [(NACVolumeControllerLocal *)self _volumeController];
  LODWORD(v8) = 0.5;
  LODWORD(v9) = v6;
  [v7 setVolume:v9 withNotificationDelay:v8];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NACVolumeControllerLocal__setVolumeValue___block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __44__NACVolumeControllerLocal__setVolumeValue___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) isEqualToString:@"Ringtone"];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 playPreview];
  }

  return result;
}

- (void)allowUserToExceedEUVolumeLimit
{
  if (!self->_route)
  {
    v3 = [MEMORY[0x277D26E58] sharedAVSystemController];
    [v3 allowUserToExceedEUVolumeLimit];
  }
}

- (NSOrderedSet)availableListeningModes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [(NACVolumeControllerLocal *)self _mediaControlsVolumeController];
  v4 = [v3 availableBluetoothListeningModeForRouteType:0];
  v5 = [v2 orderedSetWithArray:v4];

  return v5;
}

- (NSString)currentListeningMode
{
  v2 = [(NACVolumeControllerLocal *)self _mediaControlsVolumeController];
  v3 = [v2 currentBluetoothListeningModeForRouteType:0];

  return v3;
}

- (void)setCurrentListeningMode:(id)a3
{
  v4 = a3;
  v5 = [(NACVolumeControllerLocal *)self _mediaControlsVolumeController];
  v11 = 0;
  v6 = [v5 setCurrentBluetoothListeningModeForRouteType:0 bluetoothListeningMode:v4 error:&v11];

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 volumeController:self didFailToSetCurrentListeningModeWithError:v7];
    }
  }
}

- (id)_mediaControlsVolumeController
{
  mediaControlsVolumeController = self->_mediaControlsVolumeController;
  if (!mediaControlsVolumeController)
  {
    v4 = objc_alloc_init(MediaControlsVolumeController);
    v5 = self->_mediaControlsVolumeController;
    self->_mediaControlsVolumeController = v4;

    [(MediaControlsVolumeController *)self->_mediaControlsVolumeController setVolumeAudioCategory:self->_audioCategory];
    mediaControlsVolumeController = self->_mediaControlsVolumeController;
  }

  return mediaControlsVolumeController;
}

- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 volumeControllerDidUpdateVolumeControlAvailibility:self];
  }
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  volumeSetHistory = self->_volumeSetHistory;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:a3];
  v8 = [(NSCountedSet *)volumeSetHistory containsObject:v7];

  v10 = self->_volumeSetHistory;
  if (v8)
  {
    *&v9 = a4;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [(NSCountedSet *)v10 removeObject:v11];
  }

  else
  {
    [(NSCountedSet *)self->_volumeSetHistory removeAllObjects];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NACVolumeControllerLocal_volumeController_volumeValueDidChange___block_invoke;
    block[3] = &unk_27992B4E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __66__NACVolumeControllerLocal_volumeController_volumeValueDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 volumeControllerDidUpdateVolumeValue:*(a1 + 32)];
  }
}

- (void)volumeController:(id)a3 mutedStateDidChange:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__NACVolumeControllerLocal_volumeController_mutedStateDidChange___block_invoke;
  v4[3] = &unk_27992B600;
  v4[4] = self;
  v5 = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __65__NACVolumeControllerLocal_volumeController_mutedStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 1;
  *(*(a1 + 32) + 73) = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 volumeControllerDidUpdateVolumeValue:*(a1 + 32)];
  }
}

- (void)volumeController:(id)a3 EUVolumeLimitDidChange:(float)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NACVolumeControllerLocal_volumeController_EUVolumeLimitDidChange___block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__NACVolumeControllerLocal_volumeController_EUVolumeLimitDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 volumeControllerDidUpdateEUVolumeLimit:*(a1 + 32)];
  }
}

- (void)volumeController:(id)a3 volumeWarningStateDidChange:(int64_t)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NACVolumeControllerLocal_volumeController_volumeWarningStateDidChange___block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__NACVolumeControllerLocal_volumeController_volumeWarningStateDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 volumeControllerDidUpdateVolumeWarningState:*(a1 + 32)];
  }
}

- (void)routingControllerAvailableRoutesDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NACVolumeControllerLocal_routingControllerAvailableRoutesDidChange___block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__NACVolumeControllerLocal_routingControllerAvailableRoutesDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = [*(v2 + 40) availableRoutes];
    v4 = [v3 firstObject];
    v5 = [*(*(a1 + 32) + 32) dataSource];
    [v5 setGroupRoute:v4];

    v2 = *(a1 + 32);
  }

  [v2 _updateVolumeState];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v8 volumeControllerDidUpdateVolumeControlAvailibility:*(a1 + 32)];
  }
}

- (void)setHapticState:(int64_t)a3
{
  v5 = NACProminentEnabledFromState(a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__NACVolumeControllerLocal_setHapticState___block_invoke;
  v7[3] = &unk_27992B600;
  v8 = v5;
  v7[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  *&v6 = NACIntensityFromState(a3);
  [(NACVolumeControllerLocal *)self setHapticIntensity:v6];
  [(NACVolumeControllerLocal *)self setProminentHapticEnabled:NACProminentEnabledFromState(a3)];
}

uint64_t __43__NACVolumeControllerLocal_setHapticState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 playProminentHapticPreview];
  }

  else
  {
    return [v2 playDefaultHapticPreview];
  }
}

- (int64_t)hapticState
{
  [(NACVolumeControllerLocal *)self hapticIntensity];
  v4 = v3;
  v5 = [(NACVolumeControllerLocal *)self isProminentHapticEnabled];

  return NACStateFromIntensityAndProminentEnabled(v5, v4);
}

- (void)updateCachedHapticState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NACVolumeControllerLocal_updateCachedHapticState__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __51__NACVolumeControllerLocal_updateCachedHapticState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hapticState];
  v3 = *(a1 + 32);
  if (*(v3 + 80) != v2)
  {
    *(v3 + 80) = v2;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__NACVolumeControllerLocal_updateCachedHapticState__block_invoke_2;
    block[3] = &unk_27992B4E8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __51__NACVolumeControllerLocal_updateCachedHapticState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 volumeControllerDidUpdateHapticState:*(a1 + 32)];
  }
}

- (void)beginObservingHapticState
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AEBF000, a2, OS_LOG_TYPE_ERROR, "Failed to set AVSC notifications attribute: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)endObservingHapticState
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [v4 removeObserver:self name:*MEMORY[0x277D26DF8] object:v3];
  [v4 removeObserver:self name:*MEMORY[0x277D72088] object:0];
}

- (void)setHapticIntensity:(float)a3
{
  hapticThrottler = self->_hapticThrottler;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(NACEventThrottler *)hapticThrottler setValue:v4];
}

- (void)_setHapticIntensity:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  [a3 floatValue];
  v5 = NACSystemHapticValueForUIValue(v4);
  v6 = NMLogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&dword_25AEBF000, v6, OS_LOG_TYPE_DEFAULT, "Handling set haptic intensity. Setting haptic intensity: %f", &v10, 0xCu);
  }

  v7 = [MEMORY[0x277D26E58] sharedAVSystemController];
  *&v8 = v5;
  [v7 setVibeIntensityTo:v8];
  [(NACVolumeControllerLocal *)self updateCachedHapticState];

  v9 = *MEMORY[0x277D85DE8];
}

- (float)hapticIntensity
{
  v5 = 0.0;
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  if ([v2 getVibeIntensity:&v5])
  {
    v3 = NACUIValueForSystemHapticValue(v5);
  }

  else
  {
    v3 = NAN;
  }

  return v3;
}

- (void)playPreview
{
  v2 = +[NACXPCClient sharedClient];
  [v2 playAudioAndHapticPreview];
}

- (void)playDefaultHapticPreview
{
  v2 = +[NACXPCClient sharedClient];
  [v2 playDefaultHapticPreview];
}

- (void)playProminentHapticPreview
{
  v2 = +[NACXPCClient sharedClient];
  [v2 playProminentHapticPreview];
}

- (void)_updateMutedStateFromVolumeController:(id)a3
{
  if (!self->_validCachedMutedValue)
  {
    self->_muted = [a3 isMuted];
    self->_validCachedMutedValue = 1;
  }
}

- (id)_volumeController
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NACVolumeControllerLocal__volumeController__block_invoke;
  v5[3] = &unk_27992BD60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NACVolumeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end