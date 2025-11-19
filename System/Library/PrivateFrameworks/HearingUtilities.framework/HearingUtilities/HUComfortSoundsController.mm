@interface HUComfortSoundsController
+ (id)sharedController;
- (BOOL)currentRouteSupported;
- (BOOL)hasCurrentCall;
- (BOOL)isPlaying;
- (BOOL)isPlayingOnQueue;
- (BOOL)shouldContinuePlayback;
- (HUComfortSoundsController)init;
- (double)endTimeStamp;
- (id)nextFileToPlay;
- (id)processAutomationRequest:(id)a3;
- (id)processComfortSoundsAssetRequest:(id)a3;
- (id)processComfortSoundsControlRequest:(id)a3;
- (void)_handleContinuitySessionCheck;
- (void)applyTinnitusBalance;
- (void)assetDownloadDidUpdate;
- (void)attachNodesToEngine;
- (void)audioEngineWasInterrupted:(id)a3;
- (void)audioSessionWasInterrupted:(id)a3;
- (void)availableAssetsDidUpdate;
- (void)calculateVolumeForSessionWithCompletion:(id)a3;
- (void)callStatusDidChange:(id)a3;
- (void)clearActiveRoute;
- (void)clearEngine;
- (void)clientRemoved:(id)a3;
- (void)configureBandWithType:(int64_t)a3 frequency:(double)a4 bandwidth:(double)a5 atIndex:(int64_t)a6;
- (void)configureBandWithType:(int64_t)a3 frequency:(double)a4 bandwidth:(double)a5 gain:(double)a6 atIndex:(int64_t)a7;
- (void)configureBandsForCoarseFilter;
- (void)configureBandsForFineFilter;
- (void)configureTinnitusEqualizer;
- (void)connectNodesToEngine:(id)a3;
- (void)deviceScreenStatusDidChange:(int)a3 systemLocked:(int)a4;
- (void)handlePlaybackForDifferentCategory;
- (void)handlePlaybackForSameCategory;
- (void)invalidateTimer;
- (void)listenForChangesInEqualizer;
- (void)listenForChangesInTimer;
- (void)logMessageForTimer:(double)a3;
- (void)mediaPlaybackDidChange:(id)a3;
- (void)mediaServerDied;
- (void)nextFileToPlay;
- (void)play;
- (void)playOnQueue;
- (void)rampNodeVolume:(id)a3 from:(double)a4 to:(double)a5 fadeDuration:(double)a6 withProgress:(double)a7;
- (void)rampOutputGainFrom:(double)a3 to:(double)a4 withProgress:(double)a5;
- (void)registerHasBlankedScreenNotification;
- (void)registerNotifications;
- (void)routesDidChange:(id)a3;
- (void)scheduleFile;
- (void)scheduleNewFile;
- (void)scheduleTimer:(double)a3;
- (void)setFilterBoost:(double)a3;
- (void)setOutputGain:(double)a3;
- (void)setPreviewEnabled:(BOOL)a3;
- (void)setVolume:(double)a3 forNode:(id)a4 andRamp:(BOOL)a5;
- (void)setupEngine;
- (void)setupTimerIfEnabled;
- (void)setupTimerIfNeeded;
- (void)startComfortSounds;
- (void)stop;
- (void)stopAndClearRoute:(BOOL)a3;
- (void)stopComfortSound:(BOOL)a3;
- (void)updateAnalytics;
- (void)updateVolumeForSessionAndRamp:(BOOL)a3;
- (void)validateTimerDuration;
- (void)validateTimerEndInterval;
@end

@implementation HUComfortSoundsController

- (BOOL)currentRouteSupported
{
  v2 = +[HUUtilities sharedUtilities];
  v3 = [v2 currentRouteSupportsBackgroundSounds];

  return v3;
}

void __33__HUComfortSoundsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained audioQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__HUComfortSoundsController_init__block_invoke_2;
  v4[3] = &unk_1E85CB800;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v6);
}

- (BOOL)shouldContinuePlayback
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  if ([v3 comfortSoundsEnabled] && self->_selectedSound)
  {
    v4 = ![(HUComfortSoundsController *)self isInContinuitySession];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)stop
{
  audioQueue = self->_audioQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HUComfortSoundsController_stop__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(audioQueue, block);
}

- (void)_handleContinuitySessionCheck
{
  v25 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69587F0] sharedAudioPresentationOutputContext];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = v19 = 0u;
  v3 = [v15 outputDevices];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) isActivatedForContinuityScreen];
        [(HUComfortSoundsController *)self setIsInContinuitySession:v8];
        v9 = HCLogHearingXPC();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [MEMORY[0x1E696AD98] numberWithBool:v8];
          *buf = 136315394;
          v21 = "[HUComfortSoundsController _handleContinuitySessionCheck]";
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "%s: session active: %@", buf, 0x16u);
        }

        if (v8)
        {
          v11 = +[HUComfortSoundsSettings sharedInstance];
          v12 = [v11 comfortSoundsEnabled];

          if (v12)
          {
            v13 = +[HUComfortSoundsSettings sharedInstance];
            [v13 setComfortSoundsEnabled:0];

            goto LABEL_14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)clearActiveRoute
{
  v20 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HUComfortSoundsController_clearActiveRoute__block_invoke;
  aBlock[3] = &unk_1E85C9F60;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = +[HUUtilities sharedUtilities];
  v5 = [v4 currentPickableAudioRoutes];

  v6 = [v5 valueForKey:@"AXSHARoutePicked"];
  routeUID = self->_routeUID;
  v8 = [v6 valueForKey:@"RouteUID"];
  v9 = [(NSString *)routeUID isEqualToString:v8];

  v10 = HCLogComfortSounds();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    temporaryAirpodsDisconnect = self->_temporaryAirpodsDisconnect;
    *buf = 67109120;
    v19 = temporaryAirpodsDisconnect;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "The temporary airpods disconnect mode is - %hhd", buf, 8u);
  }

  if (v9 | ![(HUComfortSoundsController *)self isPlayingOnQueue])
  {
    if (v9)
    {
      v12 = HCLogComfortSounds();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Turning off temporary airpods disconnect mode.", buf, 2u);
      }

      self->_temporaryAirpodsDisconnect = 0;
    }

    else if (!self->_temporaryAirpodsDisconnect)
    {
      v16 = HCLogComfortSounds();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "Clearing route now", buf, 2u);
      }

      dispatch_async(self->_audioQueue, v3);
    }
  }

  else
  {
    v13 = HCLogComfortSounds();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Clearing route after grace period", buf, 2u);
    }

    self->_temporaryAirpodsDisconnect = 1;
    v14 = dispatch_time(0, 15000000000);
    dispatch_after(v14, self->_audioQueue, v3);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPlayingOnQueue
{
  v3 = [(HUComfortSoundsController *)self audioPlayerNodeA];
  if ([v3 isPlaying])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HUComfortSoundsController *)self audioPlayerNodeB];
    v4 = [v5 isPlaying];
  }

  return v4;
}

void __45__HUComfortSoundsController_clearActiveRoute__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isPlayingOnQueue] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 160);
    *(v2 + 160) = 0;

    *(*(a1 + 32) + 81) = 0;
  }
}

void __65__HUComfortSoundsController_registerHasBlankedScreenNotification__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = HCLogComfortSounds();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    *v11 = 138412546;
    *&v11[4] = WeakRetained;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Handled device lock with passcode: %@ %@", v11, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  if (v7)
  {
    *v11 = 0;
    notify_get_state(a2, v11);
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 isScreenBlank];
    [v8 deviceScreenStatusDidChange:v9 systemLocked:*v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __33__HUComfortSoundsController_stop__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopOnQueueAndClearRoute:1];
  v2 = +[HUComfortSoundsSettings sharedInstance];
  if (([v2 timerEnabled] & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = +[HUComfortSoundsSettings sharedInstance];
  if (([v3 timerOnlyOnFirstSession] & 1) == 0)
  {

LABEL_8:
    return [*(a1 + 32) invalidateTimer];
  }

  v4 = [*(a1 + 32) playbackTimer];
  v5 = [v4 isPending];

  if (v5)
  {
    v6 = HCLogComfortSounds();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Turning off timer as it is only enabled on the first session.", v8, 2u);
    }

    v2 = +[HUComfortSoundsSettings sharedInstance];
    [v2 setTimerEnabled:0];
    goto LABEL_8;
  }

  return [*(a1 + 32) invalidateTimer];
}

- (void)clearEngine
{
  [(HUComfortSoundsController *)self setEngine:0];
  [(HUComfortSoundsController *)self setAudioPlayerNodeA:0];

  [(HUComfortSoundsController *)self setAudioPlayerNodeB:0];
}

- (void)invalidateTimer
{
  v3 = [(HUComfortSoundsController *)self playbackTimer];

  if (v3)
  {
    v4 = HCLogComfortSounds();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating timer.", v7, 2u);
    }

    v5 = +[HUComfortSoundsSettings sharedInstance];
    [v5 resetValueForSelector:sel_activeTimerEndTimeStamp];

    v6 = [(HUComfortSoundsController *)self playbackTimer];
    [v6 cancel];
  }
}

- (void)updateAnalytics
{
  v17[2] = *MEMORY[0x1E69E9840];
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 selectedComfortSound];
  v4 = [v3 soundGroup];

  v16[0] = @"enabled";
  v5 = MEMORY[0x1E696AD98];
  v6 = +[HUComfortSoundsSettings sharedInstance];
  v7 = [v5 numberWithBool:{objc_msgSend(v6, "comfortSoundsEnabled")}];
  v17[0] = v7;
  v16[1] = @"sound";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = HCLogComfortSounds();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Updating analytics %@", buf, 0xCu);
  }

  v13 = v9;
  v11 = v9;
  AnalyticsSendEventLazy();

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)sharedController
{
  if (sharedController_onceToken_2 != -1)
  {
    +[HUComfortSoundsController sharedController];
  }

  v3 = sharedController_Controller_1;

  return v3;
}

- (HUComfortSoundsController)init
{
  v65 = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = HUComfortSoundsController;
  v2 = [(HUComfortSoundsController *)&v60 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69A4560] comfortSoundsAudioQueue];
    v4 = *(v2 + 19);
    *(v2 + 19) = v3;

    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSince1970];
    v7 = v6;
    v8 = [MEMORY[0x1E69A4560] systemBootTime];

    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSince1970];
    v11 = v10;
    v12 = +[HUComfortSoundsSettings sharedInstance];
    [v12 lastEnablementTimestamp];
    v14 = v13;

    v15 = HCLogComfortSounds();
    v16 = v7 - v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v62 = v7 - v8;
      v63 = 2048;
      v64 = v11 - v14;
      _os_log_impl(&dword_1DA5E2000, v15, OS_LOG_TYPE_DEFAULT, "Starting up (%f, %f)", buf, 0x16u);
    }

    if (v16 < 90.0 && v11 - v14 > v16)
    {
      v18 = HCLogComfortSounds();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v62 = v16;
        v63 = 2048;
        v64 = v11 - v14;
        _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Recently rebooted (%f, %f). Disabling", buf, 0x16u);
      }

      v19 = +[HUComfortSoundsSettings sharedInstance];
      [v19 setComfortSoundsEnabled:0];

      v20 = +[HUComfortSoundsSettings sharedInstance];
      v21 = [v20 timerOnlyOnFirstSession];

      if (v21)
      {
        v22 = +[HUComfortSoundsSettings sharedInstance];
        [v22 setTimerEnabled:0];
      }
    }

    *(v2 + 40) = xmmword_1DA687670;
    *(v2 + 56) = xmmword_1DA687680;
    *(v2 + 9) = 0x3FA1111111111111;
    v23 = objc_alloc(MEMORY[0x1E6988780]);
    v24 = [v2 audioQueue];
    v25 = [v23 initWithTargetSerialQueue:v24];
    [v2 setPlaybackTimer:v25];

    v26 = [v2 playbackTimer];
    [v26 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    v27 = objc_alloc_init(HUComfortSoundsAssetManager);
    v28 = *(v2 + 23);
    *(v2 + 23) = v27;

    [*(v2 + 23) setDelegate:v2];
    v29 = +[HUComfortSoundsSettings sharedInstance];
    v30 = [v29 selectedComfortSound];
    [v2 setSelectedSound:v30];

    objc_initWeak(buf, v2);
    v31 = +[HUComfortSoundsSettings sharedInstance];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __33__HUComfortSoundsController_init__block_invoke;
    v57[3] = &unk_1E85CB800;
    objc_copyWeak(&v59, buf);
    v32 = v2;
    v58 = v32;
    [v31 registerUpdateBlock:v57 forRetrieveSelector:sel_comfortSoundsEnabled withListener:v32];

    v33 = +[HUComfortSoundsSettings sharedInstance];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __33__HUComfortSoundsController_init__block_invoke_3;
    v55[3] = &unk_1E85C9F10;
    objc_copyWeak(&v56, buf);
    [v33 registerUpdateBlock:v55 forRetrieveSelector:sel_selectedComfortSound withListener:v32];

    v34 = +[HUComfortSoundsSettings sharedInstance];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __33__HUComfortSoundsController_init__block_invoke_16;
    v53[3] = &unk_1E85C9F10;
    objc_copyWeak(&v54, buf);
    [v34 registerUpdateBlock:v53 forRetrieveSelector:sel_relativeVolume withListener:v32];

    v35 = +[HUComfortSoundsSettings sharedInstance];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __33__HUComfortSoundsController_init__block_invoke_2_20;
    v51[3] = &unk_1E85C9F10;
    objc_copyWeak(&v52, buf);
    [v35 registerUpdateBlock:v51 forRetrieveSelector:sel_mixesWithMedia withListener:v32];

    v36 = +[HUComfortSoundsSettings sharedInstance];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __33__HUComfortSoundsController_init__block_invoke_2_24;
    v49[3] = &unk_1E85C9F10;
    objc_copyWeak(&v50, buf);
    [v36 registerUpdateBlock:v49 forRetrieveSelector:sel_mediaVolume withListener:v32];

    v37 = +[HUComfortSoundsSettings sharedInstance];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __33__HUComfortSoundsController_init__block_invoke_2_28;
    v47[3] = &unk_1E85C9F10;
    objc_copyWeak(&v48, buf);
    [v37 registerUpdateBlock:v47 forRetrieveSelector:sel_forceMixingBehavior withListener:v32];

    [v32 listenForChangesInTimer];
    [v32 listenForChangesInEqualizer];
    v38 = *(v2 + 19);
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __33__HUComfortSoundsController_init__block_invoke_2_32;
    v45 = &unk_1E85C9F60;
    v39 = v32;
    v46 = v39;
    dispatch_async(v38, &v42);
    [v39 registerNotifications];
    [v39 _handleContinuitySessionCheck];

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);

    objc_destroyWeak(&v59);
    objc_destroyWeak(buf);
  }

  v40 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __45__HUComfortSoundsController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(HUComfortSoundsController);
  v1 = sharedController_Controller_1;
  sharedController_Controller_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __33__HUComfortSoundsController_init__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained previewEnabled] & 1) == 0)
  {

    goto LABEL_6;
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  if ([v3 isSettingUpPreviewComfortSounds])
  {
    v4 = +[HUComfortSoundsSettings sharedInstance];
    v5 = [v4 comfortSoundsEnabled];

    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_6:
    v6 = +[HUComfortSoundsSettings sharedInstance];
    if ([v6 comfortSoundsEnabled])
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = [v7 isSettingUpPreviewComfortSounds];

      if (!v8)
      {
LABEL_10:
        v14 = *(a1 + 32);
        objc_copyWeak(&v15, (a1 + 40));
        AXPerformBlockOnMainThread();
        objc_destroyWeak(&v15);
        v9 = v14;
        goto LABEL_15;
      }

      v6 = objc_loadWeakRetained((a1 + 40));
      [v6 setIsSettingUpPreviewComfortSounds:0];
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = HCLogComfortSounds();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = +[HUComfortSoundsSettings sharedInstance];
    *buf = 67109120;
    v17 = [v11 comfortSoundsEnabled];
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Caching comfort sounds enablement while playing preview - %d", buf, 8u);
  }

  v9 = objc_loadWeakRetained((a1 + 40));
  v12 = +[HUComfortSoundsSettings sharedInstance];
  [v9 setComfortSoundsEnabledCache:{objc_msgSend(v12, "comfortSoundsEnabled")}];

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
}

void __33__HUComfortSoundsController_init__block_invoke_6(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 comfortSoundsEnabled];

  if (v3)
  {
    v4 = +[HUComfortSoundsSettings sharedInstance];
    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSince1970];
    [v4 setLastEnablementTimestamp:?];
  }

  else
  {
    [*(a1 + 32) setLiveListenComfortSoundsSwitch:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained shouldContinuePlayback];

  if (!v7)
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    [v15 stop];
LABEL_11:

    goto LABEL_12;
  }

  v8 = +[AXHAController sharedController];
  v9 = [v8 liveListenController];
  v10 = [v9 isListening];

  if (!v10)
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    [v15 startComfortSounds];
    goto LABEL_11;
  }

  v11 = HCLogComfortSounds();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Switching to Background Sounds from Live Listen", buf, 2u);
  }

  v12 = objc_loadWeakRetained((a1 + 40));
  [v12 setLiveListenComfortSoundsSwitch:1];

  v13 = +[AXHAController sharedController];
  v14 = [v13 liveListenController];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __33__HUComfortSoundsController_init__block_invoke_8;
  v19[3] = &unk_1E85CCD90;
  objc_copyWeak(&v20, (a1 + 40));
  [v14 stopListeningWithCompletion:v19];

  objc_destroyWeak(&v20);
LABEL_12:
  v16 = objc_loadWeakRetained((a1 + 40));
  [v16 updateAnalytics];

  v17 = +[HUUtilities sharedUtilities];
  [v17 updateHearingFeatureUsage];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.hearing.backgroundsounds.enabled.status.changed", 0, 0, 1u);
}

void __33__HUComfortSoundsController_init__block_invoke_8(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HUComfortSoundsController_init__block_invoke_2_9;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __33__HUComfortSoundsController_init__block_invoke_2_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLiveListenComfortSoundsSwitch:0];

  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = [v3 comfortSoundsEnabled];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 startComfortSounds];
  }
}

void __33__HUComfortSoundsController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HUComfortSoundsController_init__block_invoke_4;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __33__HUComfortSoundsController_init__block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 selectedComfortSound];

  v4 = HCLogComfortSounds();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v20 = 138412290;
    v21 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Updating sound to %@", &v20, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained selectedSound];
  v8 = [v7 isEqual:v3];

  if ((v8 & 1) == 0)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 isSameCategoryAsSelectedSound:v3];

    v11 = HCLogComfortSounds();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109120;
      LODWORD(v21) = v10;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Selected sound is the same catagory as the current sound %d", &v20, 8u);
    }

    v12 = objc_loadWeakRetained((a1 + 32));
    [v12 setSelectedSound:v3];

    v13 = objc_loadWeakRetained((a1 + 32));
    if (([v13 holdingForCall] & 1) == 0)
    {
      v14 = objc_loadWeakRetained((a1 + 32));
      v15 = [v14 shouldContinuePlayback];

      if (!v15)
      {
LABEL_13:
        v18 = objc_loadWeakRetained((a1 + 32));
        [v18 updateAnalytics];

        goto LABEL_14;
      }

      if (v10 && (v16 = objc_loadWeakRetained((a1 + 32)), v17 = [v16 currentRouteSupported], v16, v17))
      {
        v13 = objc_loadWeakRetained((a1 + 32));
        [v13 handlePlaybackForSameCategory];
      }

      else
      {
        v13 = objc_loadWeakRetained((a1 + 32));
        [v13 handlePlaybackForDifferentCategory];
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
}

void __33__HUComfortSoundsController_init__block_invoke_16(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUComfortSoundsSettings sharedInstance];
    [v3 relativeVolume];
    *buf = 134217984;
    v11 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Setting relative volume %lf", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HUComfortSoundsController_init__block_invoke_17;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v9, (a1 + 32));
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
  v7 = *MEMORY[0x1E69E9840];
}

void __33__HUComfortSoundsController_init__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVolumeForSessionAndRamp:0];
}

void __33__HUComfortSoundsController_init__block_invoke_2_20(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUComfortSoundsSettings sharedInstance];
    *buf = 67109120;
    v10 = [v3 mixesWithMedia];
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Setting mixing preference %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HUComfortSoundsController_init__block_invoke_21;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(v5, block);

  objc_destroyWeak(&v8);
  v6 = *MEMORY[0x1E69E9840];
}

void __33__HUComfortSoundsController_init__block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVolumeForSessionAndRamp:0];
}

void __33__HUComfortSoundsController_init__block_invoke_2_24(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUComfortSoundsSettings sharedInstance];
    [v3 mediaVolume];
    *buf = 134217984;
    v11 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Setting media volume %lf", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HUComfortSoundsController_init__block_invoke_25;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v9, (a1 + 32));
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
  v7 = *MEMORY[0x1E69E9840];
}

void __33__HUComfortSoundsController_init__block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVolumeForSessionAndRamp:0];
}

void __33__HUComfortSoundsController_init__block_invoke_2_28(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUComfortSoundsSettings sharedInstance];
    *buf = 67109120;
    v10 = [v3 forceMixingBehavior];
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Setting force media %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HUComfortSoundsController_init__block_invoke_29;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(v5, block);

  objc_destroyWeak(&v8);
  v6 = *MEMORY[0x1E69E9840];
}

void __33__HUComfortSoundsController_init__block_invoke_29(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVolumeForSessionAndRamp:1];
}

uint64_t __33__HUComfortSoundsController_init__block_invoke_2_32(uint64_t a1)
{
  result = [*(a1 + 32) shouldContinuePlayback];
  if (result)
  {
    v3 = HCLogComfortSounds();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "CS enabled at start. Starting", v4, 2u);
    }

    return [*(a1 + 32) playOnQueue];
  }

  return result;
}

- (void)listenForChangesInTimer
{
  objc_initWeak(&location, self);
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke;
  v13[3] = &unk_1E85C9F10;
  objc_copyWeak(&v14, &location);
  [v3 registerUpdateBlock:v13 forRetrieveSelector:sel_timerEnabled withListener:self];

  v4 = +[HUComfortSoundsSettings sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_36;
  v11[3] = &unk_1E85C9F10;
  objc_copyWeak(&v12, &location);
  [v4 registerUpdateBlock:v11 forRetrieveSelector:sel_timerOption withListener:self];

  v5 = +[HUComfortSoundsSettings sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_40;
  v9[3] = &unk_1E85CAA40;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  [v5 registerUpdateBlock:v9 forRetrieveSelector:sel_timerEndInterval withListener:self];

  v6 = +[HUComfortSoundsSettings sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_43;
  v7[3] = &unk_1E85CAA40;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:sel_timerDurationInSeconds withListener:self];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUComfortSoundsSettings sharedInstance];
    *buf = 67109120;
    v10 = [v3 timerEnabled];
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "The timer is enabled - %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_33;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(v5, block);

  objc_destroyWeak(&v8);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_33(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained previewEnabled])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    if (([v3 isSettingUpPreviewTimer] & 1) == 0)
    {

LABEL_18:
      v14 = HCLogComfortSounds();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = +[HUComfortSoundsSettings sharedInstance];
        *buf = 67109120;
        v26 = [v15 timerEnabled];
        _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Caching timer enablement while playing preview - %d", buf, 8u);
      }

      v16 = objc_loadWeakRetained((a1 + 32));
      v17 = +[HUComfortSoundsSettings sharedInstance];
      [v16 setTimerEnabledCache:{objc_msgSend(v17, "timerEnabled")}];

      v18 = objc_loadWeakRetained((a1 + 32));
      [v18 activeTimerEndTimeStampCache];
      v20 = v19;

      if (v20 != 0.0)
      {
        v21 = HCLogComfortSounds();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DA5E2000, v21, OS_LOG_TYPE_DEFAULT, "Removing cached active timer timestamp", buf, 2u);
        }

        v22 = objc_loadWeakRetained((a1 + 32));
        [v22 setActiveTimerEndTimeStampCache:0.0];
      }

      goto LABEL_24;
    }

    v4 = +[HUComfortSoundsSettings sharedInstance];
    v5 = [v4 timerEnabled];

    if (v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  if ([v6 isSettingUpPreviewTimer])
  {
    v7 = +[HUComfortSoundsSettings sharedInstance];
    v8 = [v7 timerEnabled];

    if (v8)
    {
      goto LABEL_10;
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setIsSettingUpPreviewTimer:0];
  }

LABEL_10:
  v9 = +[HUComfortSoundsSettings sharedInstance];
  if ([v9 timerEnabled])
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 playbackTimer];
    v12 = [v11 isPending];

    if (v12)
    {
LABEL_24:
      v23 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  else
  {
  }

  v24 = objc_loadWeakRetained((a1 + 32));
  [v24 setupTimerIfEnabled];
  v13 = *MEMORY[0x1E69E9840];
}

void __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_36(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUComfortSoundsSettings sharedInstance];
    *buf = 134217984;
    v10 = [v3 timerOption];
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "The timer option is %lu", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_37;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(v5, block);

  objc_destroyWeak(&v8);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained previewEnabled])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 activeTimerEndTimeStampCache];
    v5 = v4;

    if (v5 != 0.0)
    {
      v6 = HCLogComfortSounds();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Removing cached active timer timestamp", buf, 2u);
      }

      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 setActiveTimerEndTimeStampCache:0.0];

      return;
    }
  }

  else
  {
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setupTimerIfEnabled];
}

void __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[HUComfortSoundsSettings sharedInstance];
  [v3 timerEndInterval];
  [v2 logMessageForTimer:?];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_2;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
}

void __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained previewEnabled])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 activeTimerEndTimeStampCache];
    v5 = v4;

    if (v5 != 0.0)
    {
      v6 = HCLogComfortSounds();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Removing cached active timer timestamp", buf, 2u);
      }

      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 setActiveTimerEndTimeStampCache:0.0];

      return;
    }
  }

  else
  {
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setupTimerIfEnabled];
}

void __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_43(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[HUComfortSoundsSettings sharedInstance];
  [v3 timerDurationInSeconds];
  [v2 logMessageForTimer:?];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_2_44;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
}

void __52__HUComfortSoundsController_listenForChangesInTimer__block_invoke_2_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained previewEnabled])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 activeTimerEndTimeStampCache];
    v5 = v4;

    if (v5 != 0.0)
    {
      v6 = HCLogComfortSounds();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Removing cached active timer timestamp", buf, 2u);
      }

      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 setActiveTimerEndTimeStampCache:0.0];

      return;
    }
  }

  else
  {
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setupTimerIfEnabled];
}

- (void)listenForChangesInEqualizer
{
  objc_initWeak(&location, self);
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke;
  v13[3] = &unk_1E85C9F10;
  objc_copyWeak(&v14, &location);
  [v3 registerUpdateBlock:v13 forRetrieveSelector:sel_tinnitusFilterEnabled withListener:self];

  v4 = +[HUComfortSoundsSettings sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_2;
  v11[3] = &unk_1E85C9F10;
  objc_copyWeak(&v12, &location);
  [v4 registerUpdateBlock:v11 forRetrieveSelector:sel_tinnitusFilterPoint withListener:self];

  v5 = +[HUComfortSoundsSettings sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_4;
  v9[3] = &unk_1E85C9F10;
  objc_copyWeak(&v10, &location);
  [v5 registerUpdateBlock:v9 forRetrieveSelector:sel_tinnitusFilterMode withListener:self];

  v6 = +[HUComfortSoundsSettings sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_6;
  v7[3] = &unk_1E85C9F10;
  objc_copyWeak(&v8, &location);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:sel_tinnitusBalance withListener:self];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUComfortSoundsSettings sharedInstance];
    *buf = 67109120;
    v10 = [v3 tinnitusFilterEnabled];
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "The tinnitus gain is %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_47;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(v5, block);

  objc_destroyWeak(&v8);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureTinnitusEqualizer];
}

void __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_3;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureTinnitusEqualizer];
}

void __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_5;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureTinnitusEqualizer];
}

void __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_6(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUComfortSoundsSettings sharedInstance];
    [v3 tinnitusBalance];
    *buf = 134217984;
    v11 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "The tinnitus balance is %f", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_54;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v9, (a1 + 32));
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
  v7 = *MEMORY[0x1E69E9840];
}

void __56__HUComfortSoundsController_listenForChangesInEqualizer__block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applyTinnitusBalance];
}

- (void)attachNodesToEngine
{
  v3 = objc_alloc_init(MEMORY[0x1E6958458]);
  v4 = [(HUComfortSoundsController *)self engine];
  [v4 attachNode:v3];

  [(HUComfortSoundsController *)self setAudioPlayerNodeA:v3];
  v14 = objc_alloc_init(MEMORY[0x1E6958458]);

  v5 = [(HUComfortSoundsController *)self engine];
  [v5 attachNode:v14];

  [(HUComfortSoundsController *)self setAudioPlayerNodeB:v14];
  v6 = objc_alloc_init(MEMORY[0x1E6958428]);
  v7 = [(HUComfortSoundsController *)self engine];
  [v7 attachNode:v6];

  [(HUComfortSoundsController *)self setAudioPlayerMixerNode:v6];
  v8 = [(HUComfortSoundsController *)self audioPlayerMixerNode];
  LODWORD(v9) = 1.0;
  [v8 setVolume:v9];

  v10 = [(HUComfortSoundsController *)self audioPlayerMixerNode];
  LODWORD(v11) = 1.0;
  [v10 setOutputVolume:v11];

  v12 = [objc_alloc(MEMORY[0x1E69584C0]) initWithNumberOfBands:5];
  v13 = [(HUComfortSoundsController *)self engine];
  [v13 attachNode:v12];

  [(HUComfortSoundsController *)self setAudioPlayerFilterNode:v12];
}

- (void)connectNodesToEngine:(id)a3
{
  v4 = a3;
  v5 = [(HUComfortSoundsController *)self engine];
  v6 = [(HUComfortSoundsController *)self audioPlayerNodeA];
  v7 = [(HUComfortSoundsController *)self audioPlayerMixerNode];
  [v5 connect:v6 to:v7 format:v4];

  v8 = [(HUComfortSoundsController *)self engine];
  v9 = [(HUComfortSoundsController *)self audioPlayerNodeB];
  v10 = [(HUComfortSoundsController *)self audioPlayerMixerNode];
  [v8 connect:v9 to:v10 format:v4];

  v11 = [(HUComfortSoundsController *)self engine];
  v12 = [(HUComfortSoundsController *)self audioPlayerMixerNode];
  v13 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  [v11 connect:v12 to:v13 format:v4];

  v17 = [(HUComfortSoundsController *)self engine];
  v14 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  v15 = [(HUComfortSoundsController *)self engine];
  v16 = [v15 mainMixerNode];
  [v17 connect:v14 to:v16 format:v4];
}

- (void)configureTinnitusEqualizer
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = [v3 tinnitusFilterEnabled];

  v5 = +[HUComfortSoundsSettings sharedInstance];
  v6 = [v5 tinnitusFilterMode];

  v7 = +[HUComfortSoundsSettings sharedInstance];
  v8 = [v7 tinnitusFilterMode];

  v9 = v4 ^ 1;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  [(HUComfortSoundsController *)self applyBypassForFiltersAtIndexes:&unk_1F56243E8 shouldBypass:v10];
  if (v6 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  [(HUComfortSoundsController *)self applyBypassForFiltersAtIndexes:&unk_1F5624400 shouldBypass:v11];
  if (v6 == 1)
  {
    [(HUComfortSoundsController *)self configureBandsForFineFilter];
    if (v4)
    {
      return;
    }
  }

  else
  {
    [(HUComfortSoundsController *)self configureBandsForCoarseFilter];
    if (v4)
    {
      return;
    }
  }

  [(HUComfortSoundsController *)self setFilterBoost:0.0];
}

- (void)configureBandWithType:(int64_t)a3 frequency:(double)a4 bandwidth:(double)a5 atIndex:(int64_t)a6
{
  v11 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  v12 = [v11 bands];
  v13 = [v12 objectAtIndexedSubscript:a6];
  [v13 setFilterType:a3];

  v14 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  v15 = [v14 bands];
  v16 = [v15 objectAtIndexedSubscript:a6];
  *&a4 = a4;
  LODWORD(v17) = LODWORD(a4);
  [v16 setFrequency:v17];

  v21 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  v18 = [v21 bands];
  v19 = [v18 objectAtIndexedSubscript:a6];
  *&a5 = a5;
  LODWORD(v20) = LODWORD(a5);
  [v19 setBandwidth:v20];
}

- (void)configureBandWithType:(int64_t)a3 frequency:(double)a4 bandwidth:(double)a5 gain:(double)a6 atIndex:(int64_t)a7
{
  v13 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  v14 = [v13 bands];
  v15 = [v14 objectAtIndexedSubscript:a7];
  [v15 setFilterType:a3];

  v16 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  v17 = [v16 bands];
  v18 = [v17 objectAtIndexedSubscript:a7];
  *&a4 = a4;
  LODWORD(v19) = LODWORD(a4);
  [v18 setFrequency:v19];

  v20 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  v21 = [v20 bands];
  v22 = [v21 objectAtIndexedSubscript:a7];
  *&a5 = a5;
  LODWORD(v23) = LODWORD(a5);
  [v22 setBandwidth:v23];

  v27 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  v24 = [v27 bands];
  v25 = [v24 objectAtIndexedSubscript:a7];
  *&a6 = a6;
  LODWORD(v26) = LODWORD(a6);
  [v25 setGain:v26];
}

- (void)setFilterBoost:(double)a3
{
  v3 = a3;
  v5 = [(HUComfortSoundsController *)self audioPlayerFilterNode];
  *&v4 = v3;
  [v5 setGlobalGain:v4];
}

- (void)applyTinnitusBalance
{
  v7 = +[HUComfortSoundsSettings sharedInstance];
  [v7 tinnitusBalance];
  v4 = v3;
  v5 = [(HUComfortSoundsController *)self audioPlayerMixerNode];
  *&v6 = v4;
  [v5 setPan:v6];
}

- (void)configureBandsForFineFilter
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = [v3 tinnitusFilterPoint];
  [v4 frequencyForBandPass];
  v6 = v5;
  v7 = +[HUComfortSoundsSettings sharedInstance];
  v8 = [v7 tinnitusFilterPoint];
  [v8 widthForBandPass];
  [(HUComfortSoundsController *)self configureBandWithType:5 frequency:0 bandwidth:v6 atIndex:v9];

  [(HUComfortSoundsController *)self setFilterBoost:6.0];
}

- (void)configureBandsForCoarseFilter
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = [v3 tinnitusFilterPoint];
  [v4 gainForLowResonance];
  [(HUComfortSoundsController *)self configureBandWithType:9 frequency:1 bandwidth:150.0 gain:1.92 atIndex:v5];

  v6 = +[HUComfortSoundsSettings sharedInstance];
  v7 = [v6 tinnitusFilterPoint];
  [v7 gainForHighResonance];
  [(HUComfortSoundsController *)self configureBandWithType:10 frequency:2 bandwidth:4500.0 gain:1.89 atIndex:v8];

  v9 = +[HUComfortSoundsSettings sharedInstance];
  v10 = [v9 tinnitusFilterPoint];
  [v10 gainForLeftBellFilters];
  [(HUComfortSoundsController *)self configureBandWithType:0 frequency:3 bandwidth:750.0 gain:2.19 atIndex:v11];

  v12 = +[HUComfortSoundsSettings sharedInstance];
  v13 = [v12 tinnitusFilterPoint];
  [v13 gainForRightBellFilters];
  [(HUComfortSoundsController *)self configureBandWithType:0 frequency:4 bandwidth:1200.0 gain:1.91 atIndex:v14];

  [(HUComfortSoundsController *)self setFilterBoost:0.0];
}

- (void)handlePlaybackForSameCategory
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Handling playback for same catagory.", v4, 2u);
  }

  if ([(HUComfortSoundsController *)self isPlayingOnQueue])
  {
    [(HUComfortSoundsController *)self scheduleNewFile];
  }

  else
  {
    [(HUComfortSoundsController *)self playOnQueue];
  }
}

- (void)handlePlaybackForDifferentCategory
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Handling playback for a different catagory.", v4, 2u);
  }

  [(HUComfortSoundsController *)self playOnQueue];
}

- (void)registerNotifications
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_callStatusDidChange_ name:*MEMORY[0x1E69D8E08] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_callStatusDidChange_ name:*MEMORY[0x1E69D8E58] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_routesDidChange_ name:@"com.apple.accessibility.hearing.wireless.splitter.changed" object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel_audioSessionWasInterrupted_ name:*MEMORY[0x1E69580D8] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel_audioEngineWasInterrupted_ name:*MEMORY[0x1E6958028] object:0];

  MRMediaRemoteSetWantsNowPlayingNotifications();
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel_mediaPlaybackDidChange_ name:*MEMORY[0x1E69B0E08] object:0];

  MRMediaRemoteSetWantsRouteChangeNotifications();
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel_routesDidChange_ name:*MEMORY[0x1E69B12A0] object:0];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel_routesDidChange_ name:*MEMORY[0x1E69B12E0] object:0];

  v11 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v12 = MEMORY[0x1E69AECB8];
  v24[0] = *MEMORY[0x1E69AECB8];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v11 setAttribute:v13 forKey:*MEMORY[0x1E69AECD8] error:0];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = *v12;
  v16 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [v14 addObserver:self selector:sel_mediaServerDied name:v15 object:v16];

  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  v18 = *MEMORY[0x1E69586A8];
  v19 = [MEMORY[0x1E69587F0] sharedSystemAudioContext];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__HUComfortSoundsController_registerNotifications__block_invoke;
  v23[3] = &unk_1E85CCDB8;
  v23[4] = self;
  v20 = [v17 addObserverForName:v18 object:v19 queue:0 usingBlock:v23];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _hearingTestStarted, @"com.apple.HearingTest.test.started", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [(HUComfortSoundsController *)self registerHasBlankedScreenNotification];
  v22 = *MEMORY[0x1E69E9840];
}

- (void)registerHasBlankedScreenNotification
{
  v31 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HUComfortSoundsController_registerHasBlankedScreenNotification__block_invoke;
  aBlock[3] = &unk_1E85CAF10;
  objc_copyWeak(&v25, &location);
  v3 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__HUComfortSoundsController_registerHasBlankedScreenNotification__block_invoke_103;
  v22[3] = &unk_1E85CAF10;
  objc_copyWeak(&v23, &location);
  v4 = _Block_copy(v22);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __65__HUComfortSoundsController_registerHasBlankedScreenNotification__block_invoke_104;
  v20 = &unk_1E85CAF10;
  objc_copyWeak(&v21, &location);
  v5 = _Block_copy(&v17);
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  LODWORD(v6) = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_keybagLockStateToken, v6, v4) == 0;

  if (v6)
  {
    (*(v4 + 2))(v4, self->_keybagLockStateToken);
    v8 = HCLogComfortSounds();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{self->_keybagLockStateToken, v17, v18, v19, v20}];
      *buf = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Registered keybag lock state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_keybagLockStateToken = -1;
  }

  v10 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_blankScreenToken, MEMORY[0x1E69E96A0], v5) == 0;

  if (v10)
  {
    (*(v5 + 2))(v5, self->_blankScreenToken);
    v11 = HCLogComfortSounds();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:self->_blankScreenToken];
      *buf = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Registered blank screen state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_blankScreenToken = -1;
  }

  v13 = notify_register_dispatch("com.apple.springboard.passcodeLockedOrBlocked", &self->_lockStateNotifyToken, MEMORY[0x1E69E96A0], v3) == 0;

  if (v13)
  {
    (*(v3 + 2))(v3, self->_lockStateNotifyToken);
    v14 = HCLogComfortSounds();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_lockStateNotifyToken];
      *buf = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Registered lock screen state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_blankScreenToken = -1;
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  v16 = *MEMORY[0x1E69E9840];
}

void __65__HUComfortSoundsController_registerHasBlankedScreenNotification__block_invoke_103(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = HCLogComfortSounds();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v12 = 138412546;
    v13 = WeakRetained;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Handled keybag lock: %@ %@", &v12, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 isScreenBlank];
    v10 = objc_loadWeakRetained((a1 + 32));
    [v8 deviceScreenStatusDidChange:v9 systemLocked:{objc_msgSend(v10, "isDeviceLockedWithPasscode")}];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __65__HUComfortSoundsController_registerHasBlankedScreenNotification__block_invoke_104(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = HCLogComfortSounds();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    *v12 = 138412546;
    *&v12[4] = WeakRetained;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Handled screen wake: %@ %@", v12, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  if (v7)
  {
    *v12 = 0;
    notify_get_state(a2, v12);
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = *v12;
    v10 = v8;
    [v10 deviceScreenStatusDidChange:v9 systemLocked:{objc_msgSend(v10, "isDeviceLockedWithPasscode")}];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)deviceScreenStatusDidChange:(int)a3 systemLocked:(int)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = +[HUComfortSoundsSettings sharedInstance];
  v7 = [v6 stopsOnLock];

  v8 = HCLogComfortSounds();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a3 != 0;
    v10 = a4 != 0;
    if (a4)
    {
      v9 = 0;
    }

    v14[0] = 67109632;
    if (a3)
    {
      v10 = 0;
    }

    v14[1] = v10;
    v15 = 1024;
    v16 = v9;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Screen blank status has changed - %d, %d, %d", v14, 0x14u);
  }

  if ((((a3 != 0) ^ (a4 != 0)) & v7) == 1)
  {
    v11 = HCLogComfortSounds();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "The device is locked. Comfort sounds should stop on lock", v14, 2u);
    }

    v12 = +[HUComfortSoundsSettings sharedInstance];
    [v12 setComfortSoundsEnabled:0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (double)endTimeStamp
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = [v3 comfortSoundsEnabled];

  v5 = 0.0;
  if (v4)
  {
    [(HUComfortSoundsController *)self activeTimerEndTimeStampCache];
    if (v6 == 0.0)
    {
      v10 = +[HUComfortSoundsSettings sharedInstance];
      v11 = [v10 timerOption];

      if (v11 == 1)
      {
        [(HUComfortSoundsController *)self validateTimerDuration];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v15 = v14;
        v12 = +[HUComfortSoundsSettings sharedInstance];
        [v12 timerDurationInSeconds];
        v5 = v15 + v16;
      }

      else
      {
        if (v11)
        {
          goto LABEL_11;
        }

        [(HUComfortSoundsController *)self validateTimerEndInterval];
        v12 = +[HUComfortSoundsSettings sharedInstance];
        [v12 timerEndInterval];
        v5 = v13;
      }

      goto LABEL_11;
    }

    v7 = HCLogComfortSounds();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [(HUComfortSoundsController *)self activeTimerEndTimeStampCache];
      v19 = 134217984;
      v20 = v8;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Resuming the timer after playing preview. activeDurationTimerEndTimeStamp is %f", &v19, 0xCu);
    }

    [(HUComfortSoundsController *)self activeTimerEndTimeStampCache];
    v5 = v9;
    [(HUComfortSoundsController *)self setActiveTimerEndTimeStampCache:0.0];
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setupTimerIfEnabled
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scheduleTimer:(double)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = HCLogComfortSounds();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling timer with duration: %f", &v10, 0xCu);
  }

  v6 = +[HUComfortSoundsSettings sharedInstance];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v6 setActiveTimerEndTimeStamp:v7 + a3];

  v8 = [(HUComfortSoundsController *)self playbackTimer];
  [v8 afterDelay:&__block_literal_global_109 processBlock:a3];

  v9 = *MEMORY[0x1E69E9840];
}

void __43__HUComfortSoundsController_scheduleTimer___block_invoke()
{
  v0 = +[HUComfortSoundsSettings sharedInstance];
  [v0 resetValueForSelector:sel_activeTimerEndTimeStamp];

  v1 = +[HUComfortSoundsSettings sharedInstance];
  v2 = [v1 comfortSoundsEnabled];

  v3 = HCLogComfortSounds();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Timer is called. Turning background sounds off.", buf, 2u);
    }

    v3 = +[HUComfortSoundsSettings sharedInstance];
    [v3 setComfortSoundsEnabled:0];
  }

  else if (v4)
  {
    *v10 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Timer is called, but playback has already stopped.", v10, 2u);
  }

  v5 = +[HUComfortSoundsSettings sharedInstance];
  if ([v5 timerEnabled])
  {
    v6 = +[HUComfortSoundsSettings sharedInstance];
    v7 = [v6 timerOnlyOnFirstSession];

    if (!v7)
    {
      return;
    }

    v8 = HCLogComfortSounds();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Turning off timer as it is only enabled on the first session.", v9, 2u);
    }

    v5 = +[HUComfortSoundsSettings sharedInstance];
    [v5 setTimerEnabled:0];
  }
}

- (void)logMessageForTimer:(double)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = [v4 stringFromDate:v3];
  v6 = HCLogComfortSounds();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Timer is set to %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateTimerEndInterval
{
  v22 = [MEMORY[0x1E695DF00] date];
  v2 = MEMORY[0x1E695DF00];
  v3 = +[HUComfortSoundsSettings sharedInstance];
  [v3 timerEndInterval];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 dateByAddingUnit:16 value:1 toDate:v6 options:0];

  if ([v4 compare:v22] == -1)
  {
    [v22 timeIntervalSinceDate:v4];
    v9 = vcvtpd_s64_f64(v8 / 86400.0);
    v10 = [MEMORY[0x1E695DEE8] currentCalendar];
    v11 = [v10 dateByAddingUnit:16 value:v9 toDate:v4 options:0];

    v4 = v11;
  }

  if ([v4 compare:v7] == 1)
  {
    [v4 timeIntervalSinceDate:v7];
    v13 = vcvtpd_s64_f64(v12 / 86400.0);
    v14 = [MEMORY[0x1E695DEE8] currentCalendar];
    v15 = [v14 dateByAddingUnit:16 value:-v13 toDate:v4 options:0];

    v4 = v15;
  }

  v16 = +[HUComfortSoundsSettings sharedInstance];
  [v16 timerEndInterval];
  v18 = v17;
  [v4 timeIntervalSinceReferenceDate];
  v20 = v19;

  if (v18 != v20)
  {
    v21 = +[HUComfortSoundsSettings sharedInstance];
    [v4 timeIntervalSinceReferenceDate];
    [v21 setTimerEndInterval:?];
  }
}

- (void)validateTimerDuration
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  [v2 timerDurationInSeconds];
  v4 = fmin(fmax(v3, 60.0), 86400.0);

  v5 = +[HUComfortSoundsSettings sharedInstance];
  [v5 timerDurationInSeconds];
  v7 = v6;

  if (v7 != v4)
  {
    v8 = +[HUComfortSoundsSettings sharedInstance];
    [v8 setTimerDurationInSeconds:v4];
  }
}

- (void)setupTimerIfNeeded
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Setting back the timer call back.", v8, 2u);
  }

  v4 = +[HUComfortSoundsSettings sharedInstance];
  [v4 timerEndInterval];
  [(HUComfortSoundsController *)self _remainingTimeUntilTimestamp:?];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v7 = HCLogComfortSounds();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HUComfortSoundsController setupTimerIfEnabled];
    }

    [(HUComfortSoundsController *)self invalidateTimer];
  }

  else
  {
    [(HUComfortSoundsController *)self scheduleTimer:v6];
  }
}

- (void)mediaServerDied
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __44__HUComfortSoundsController_mediaServerDied__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopOnQueueAndClearRoute:1];
  [*(a1 + 32) setupEngine];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(a1 + 32)];

  [*(a1 + 32) registerNotifications];
  result = [*(a1 + 32) shouldContinuePlayback];
  if (result)
  {
    v4 = HCLogComfortSounds();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Continuing playback after server died", v5, 2u);
    }

    return [*(a1 + 32) playOnQueue];
  }

  return result;
}

- (void)audioSessionWasInterrupted:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogComfortSounds();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Session interrupted. %@", &v11, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 valueForKey:*MEMORY[0x1E6958100]];
  v8 = [v7 intValue];

  if (v8 == 1)
  {
    [(HUComfortSoundsController *)self stopAndClearRoute:0];
  }

  else
  {
    [(HUComfortSoundsController *)self play];
    if (self->_holdingForCall)
    {
      v9 = HCLogComfortSounds();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "CS interrupted changed while holding for call", &v11, 2u);
      }

      [(HUComfortSoundsController *)self callStatusDidChange:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)audioEngineWasInterrupted:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogComfortSounds();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Audio Engine interrupted. %@", buf, 0xCu);
  }

  audioQueue = self->_audioQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HUComfortSoundsController_audioEngineWasInterrupted___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(audioQueue, block);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __55__HUComfortSoundsController_audioEngineWasInterrupted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopOnQueueAndClearRoute:1];
  [*(a1 + 32) setupEngine];
  result = [*(a1 + 32) shouldContinuePlayback];
  if (result)
  {
    v3 = HCLogComfortSounds();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Continuing playback after restarting the engine", v4, 2u);
    }

    return [*(a1 + 32) playOnQueue];
  }

  return result;
}

- (void)setupEngine
{
  v3 = objc_alloc_init(MEMORY[0x1E69583F8]);
  [(HUComfortSoundsController *)self setEngine:v3];
  [(HUComfortSoundsController *)self attachNodesToEngine];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__HUComfortSoundsController_setupEngine__block_invoke;
  v4[3] = &unk_1E85CCDE0;
  v4[4] = self;
  [(HUComfortSoundsController *)self calculateVolumeForSessionWithCompletion:v4];
}

- (void)routesDidChange:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = +[HUUtilities sharedUtilities];
  [v4 clearAudioRoutes];

  v5 = [(HUComfortSoundsController *)self currentRouteSupported];
  v6 = +[HUUtilities sharedUtilities];
  v7 = [v6 currentPickableAudioRoutes];

  v8 = [v7 valueForKey:@"AXSHARoutePicked"];
  v9 = [v7 valueForKey:@"AXSHARouteSpeaker"];
  v10 = [v8 isEqualToDictionary:v9];

  routeUID = self->_routeUID;
  v12 = [v8 valueForKey:@"RouteUID"];
  v13 = [(NSString *)routeUID isEqualToString:v12];

  v14 = HCLogComfortSounds();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->_routeUID;
    v16 = [v8 valueForKey:@"RouteUID"];
    *buf = 67110146;
    v28 = v5;
    v29 = 1024;
    v30 = !v13;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Route changed %d, %d - %@, %@ = %@", buf, 0x2Cu);
  }

  if (!self->_holdingForCall)
  {
    if (v13 && v5)
    {
      if ((v10 & 1) != 0 || ![(NSString *)self->_routeUID length]|| !self->_selectedSound || !self->_temporaryAirpodsDisconnect)
      {
        goto LABEL_7;
      }

      v19 = HCLogComfortSounds();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "CS route changed. Starting", buf, 2u);
      }

      v20 = +[HUComfortSoundsSettings sharedInstance];
      v21 = v20;
      v22 = 1;
    }

    else
    {
      if (self->_liveListenComfortSoundsSwitch)
      {
        goto LABEL_7;
      }

      audioQueue = self->_audioQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__HUComfortSoundsController_routesDidChange___block_invoke;
      block[3] = &unk_1E85C9F60;
      block[4] = self;
      dispatch_async(audioQueue, block);
      v24 = +[HUComfortSoundsSettings sharedInstance];
      v25 = [v24 comfortSoundsEnabled];

      if (!v25)
      {
        goto LABEL_7;
      }

      v20 = +[HUComfortSoundsSettings sharedInstance];
      v21 = v20;
      v22 = 0;
    }

    [v20 setComfortSoundsEnabled:v22];

    goto LABEL_7;
  }

  v17 = HCLogComfortSounds();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, "CS route changed while holding for call", buf, 2u);
  }

  [(HUComfortSoundsController *)self callStatusDidChange:0];
LABEL_7:
  [(HUComfortSoundsController *)self _handleContinuitySessionCheck];

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasCurrentCall
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__HUComfortSoundsController_hasCurrentCall__block_invoke;
  v10[3] = &unk_1E85CA2B8;
  v10[4] = &v23;
  v10[5] = &v19;
  v10[6] = &v15;
  v10[7] = &v11;
  getCallStatus(v10);
  if ((v20[3] & 1) != 0 || (v12[3] & 1) != 0 || *(v16 + 24) == 1)
  {
    v2 = HCLogComfortSounds();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v12 + 24);
      v4 = *(v20 + 24);
      v5 = *(v16 + 24);
      v6 = *(v24 + 24);
      *buf = 67109888;
      v28 = v3;
      v29 = 1024;
      v30 = v4;
      v31 = 1024;
      v32 = v5;
      v33 = 1024;
      v34 = v6;
      _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Active Call Status - [pending = %d, active = %d, avc = %d, endpoint = %d]", buf, 0x1Au);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void *__43__HUComfortSoundsController_hasCurrentCall__block_invoke(void *result, char a2, char a3, char a4, char a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  *(*(result[7] + 8) + 24) = a5;
  return result;
}

- (void)callStatusDidChange:(id)a3
{
  v4 = a3;
  v5 = HCLogComfortSounds();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [HUComfortSoundsController callStatusDidChange:];
  }

  v6 = +[HUComfortSoundsSettings sharedInstance];
  v7 = [v6 comfortSoundsAvailable];

  if (v7)
  {
    v8 = HCLogComfortSounds();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(HUComfortSoundsController *)self callStatusDidChange:v4, v8];
    }

    if ([(HUComfortSoundsController *)self hasCurrentCall])
    {
      v9 = +[HUComfortSoundsSettings sharedInstance];
      v10 = [v9 comfortSoundsEnabled];

      if (v10)
      {
        self->_holdingForCall = 1;
        [(HUComfortSoundsController *)self stopAndClearRoute:0];
      }
    }

    else if (self->_holdingForCall)
    {
      v11 = +[HUComfortSoundsSettings sharedInstance];
      v12 = [v11 comfortSoundsEnabled];

      if ((v12 & 1) == 0)
      {
        v13 = +[HUComfortSoundsSettings sharedInstance];
        [v13 setComfortSoundsEnabled:1];
      }

      objc_initWeak(&location, self);
      v14 = dispatch_time(0, 3000000000);
      audioQueue = self->_audioQueue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __49__HUComfortSoundsController_callStatusDidChange___block_invoke;
      v16[3] = &unk_1E85C9F10;
      objc_copyWeak(&v17, &location);
      dispatch_after(v14, audioQueue, v16);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __49__HUComfortSoundsController_callStatusDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained hasCurrentCall];

  if (v3)
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    if ([v10 hasCurrentCall])
    {
      v4 = +[HUComfortSoundsSettings sharedInstance];
      v5 = [v4 comfortSoundsEnabled];

      if (!v5)
      {
        return;
      }

      v6 = objc_loadWeakRetained((a1 + 32));
      [v6 setHoldingForCall:1];

      v10 = objc_loadWeakRetained((a1 + 32));
      [v10 stopAndClearRoute:0];
    }
  }

  else
  {
    v7 = HCLogComfortSounds();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Removing call hold and playing", buf, 2u);
    }

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setHoldingForCall:0];

    v9 = objc_loadWeakRetained((a1 + 32));
    [v9 playOnQueue];
  }
}

- (void)mediaPlaybackDidChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogComfortSounds();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Now playing notification: %@", buf, 0xCu);
  }

  audioQueue = self->_audioQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HUComfortSoundsController_mediaPlaybackDidChange___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(audioQueue, block);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)play
{
  audioQueue = self->_audioQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HUComfortSoundsController_play__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(audioQueue, block);
}

void __33__HUComfortSoundsController_play__block_invoke(uint64_t a1)
{
  [*(a1 + 32) playOnQueue];
  v2 = +[HUComfortSoundsSettings sharedInstance];
  if (([v2 timerEnabled] & 1) == 0)
  {

    goto LABEL_5;
  }

  v3 = [*(a1 + 32) playbackTimer];
  v4 = [v3 isPending];

  if ((v4 & 1) == 0)
  {
LABEL_5:
    [*(a1 + 32) setupTimerIfEnabled];
  }

  v5 = HCLogComfortSounds();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DA5E2000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BackgroundSoundsEnablement", &unk_1DA697D1B, v6, 2u);
  }
}

- (void)playOnQueue
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)nextFileToPlay
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [self->_selectedSound nextFilePath];
  if (!v3)
  {
    v5 = 0;
LABEL_9:
    v4 = [self->_selectedSound asset];
    if (v4)
    {
      selectedSound = self->_selectedSound;
      objc_opt_class();
      LOBYTE(selectedSound) = objc_opt_isKindOfClass();

      if (selectedSound)
      {
        v8 = +[HUComfortSound defaultComfortSoundForGroup:](HUComfortSound, "defaultComfortSoundForGroup:", [self->_selectedSound soundGroup]);
        v9 = self->_selectedSound;
        self->_selectedSound = v8;

        v10 = HCLogComfortSounds();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_selectedSound;
          *buf = 138412290;
          v20 = v11;
          _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Missing file. Falling back %@", buf, 0xCu);
        }

        v12 = [self->_selectedSound nextFilePath];
        if (v12)
        {
          v17 = v5;
          v4 = [objc_alloc(MEMORY[0x1E6958408]) initForReading:v12 error:&v17];
          v13 = v17;

          if (v13)
          {
            v14 = HCLogComfortSounds();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [HUComfortSoundsController nextFileToPlay];
            }
          }
        }

        else
        {
          v4 = 0;
          v13 = v5;
        }

        v5 = v13;
      }

      else
      {
        v4 = 0;
      }
    }

    goto LABEL_21;
  }

  v18 = 0;
  v4 = [objc_alloc(MEMORY[0x1E6958408]) initForReading:v3 error:&v18];
  v5 = v18;
  if (v5)
  {
    v6 = HCLogComfortSounds();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HUComfortSoundsController nextFileToPlay];
    }
  }

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_21:

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)scheduleNewFile
{
  [(HUComfortSoundsController *)self setChangingSounds:1];
  rampUpBlock = self->_rampUpBlock;
  if (rampUpBlock)
  {
    dispatch_block_cancel(rampUpBlock);
  }

  rampDownBlock = self->_rampDownBlock;
  if (rampDownBlock)
  {
    dispatch_block_cancel(rampDownBlock);
  }

  [(HUComfortSoundsController *)self rampNodeVolume:self->_currentNode from:1.0 to:0.0 fadeDuration:self->_changeDuration];

  [(HUComfortSoundsController *)self scheduleFile];
}

- (void)scheduleFile
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Error starting engine %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__HUComfortSoundsController_scheduleFile__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained shouldContinuePlayback])
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 currentRouteSupported];

    if (v4)
    {
      v5 = HCLogComfortSounds();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = +[HUComfortSoundsSettings sharedInstance];
        v7 = [v6 comfortSoundsEnabled];
        v8 = objc_loadWeakRetained((a1 + 40));
        v15 = 67109376;
        v16 = v7;
        v17 = 1024;
        v18 = [v8 currentRouteSupported];
        _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Continuing playback [%d, %d]", &v15, 0xEu);
      }

      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 rampNodeVolume:*(a1 + 32) from:1.0 to:0.0 fadeDuration:*(a1 + 48)];

      v10 = objc_loadWeakRetained((a1 + 40));
      [v10 scheduleFile];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = HCLogComfortSounds();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = +[HUComfortSoundsSettings sharedInstance];
    v12 = [v11 comfortSoundsEnabled];
    v13 = objc_loadWeakRetained((a1 + 40));
    v15 = 67109376;
    v16 = v12;
    v17 = 1024;
    v18 = [v13 currentRouteSupported];
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Stopping playback [%d, %d]", &v15, 0xEu);
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPlaying
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  audioQueue = self->_audioQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__HUComfortSoundsController_isPlaying__block_invoke;
  v5[3] = &unk_1E85CAF38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(audioQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__HUComfortSoundsController_isPlaying__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPlayingOnQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)calculateVolumeForSessionWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v5 = +[HUUtilities sharedUtilities];
  audioQueue = self->_audioQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__HUComfortSoundsController_calculateVolumeForSessionWithCompletion___block_invoke;
  v8[3] = &unk_1E85CCE50;
  v10 = v11;
  v7 = v4;
  v9 = v7;
  [v5 checkAudioPlayingWithQueue:audioQueue andCompletion:v8];

  _Block_object_dispose(v11, 8);
}

uint64_t __69__HUComfortSoundsController_calculateVolumeForSessionWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = +[HUComfortSoundsSettings sharedInstance];
    if ([v2 mixesWithMedia])
    {

      goto LABEL_8;
    }
  }

  v5 = +[HUComfortSoundsSettings sharedInstance];
  v6 = [v5 forceMixingBehavior];

  if (!a2)
  {
    if (!v6)
    {
      v7 = +[HUComfortSoundsSettings sharedInstance];
      [v7 relativeVolume];
      goto LABEL_10;
    }

LABEL_8:
    v7 = +[HUComfortSoundsSettings sharedInstance];
    [v7 mediaVolume];
LABEL_10:
    *(*(*(a1 + 40) + 8) + 24) = v8;

    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  v9 = HCLogComfortSounds();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[HUComfortSoundsSettings sharedInstance];
    v11 = [v10 mixesWithMedia];
    v12 = *(*(*(a1 + 40) + 8) + 24);
    v15[0] = 67109632;
    v15[1] = a2;
    v16 = 1024;
    v17 = v11;
    v18 = 2048;
    v19 = v12;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Updating volume %d, %d, %lf", v15, 0x18u);
  }

  result = (*(*(a1 + 32) + 16))(*(*(*(a1 + 40) + 8) + 24));
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateVolumeForSessionAndRamp:(BOOL)a3
{
  if (!self->_holdingForCall)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __59__HUComfortSoundsController_updateVolumeForSessionAndRamp___block_invoke;
    v3[3] = &unk_1E85CCE78;
    v3[4] = self;
    v4 = a3;
    [(HUComfortSoundsController *)self calculateVolumeForSessionWithCompletion:v3];
  }
}

void __59__HUComfortSoundsController_updateVolumeForSessionAndRamp___block_invoke(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 currentNode];
  [v4 setVolume:v5 forNode:*(a1 + 40) andRamp:a2];
}

- (void)setVolume:(double)a3 forNode:(id)a4 andRamp:(BOOL)a5
{
  v5 = a5;
  v13 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (v5)
  {
    duckingBlock = self->_duckingBlock;
    if (duckingBlock)
    {
      dispatch_block_cancel(duckingBlock);
    }

    [(HUComfortSoundsController *)self outputGain];
    [HUComfortSoundsController rampOutputGainFrom:"rampOutputGainFrom:to:withProgress:" to:? withProgress:?];
  }

  else
  {
    [(HUComfortSoundsController *)self setOutputGain:a3];
    if (a3 <= 0.0)
    {
      [(HUComfortSoundsController *)self stopOnQueueAndClearRoute:0];
      goto LABEL_11;
    }

    v10 = HCLogComfortSounds();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = [(HUComfortSoundsController *)self shouldContinuePlayback];
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "CS volume changed. Starting %d", v12, 8u);
    }
  }

  [(HUComfortSoundsController *)self playOnQueue];
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setOutputGain:(double)a3
{
  v4 = 0.0;
  if (a3 >= 0.0)
  {
    v4 = a3;
  }

  if (a3 <= 1.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  self->_outputGain = v5;
  if (![(HUComfortSoundsController *)self crossFading])
  {
    outputGain = self->_outputGain;
    *&outputGain = outputGain;
    [(AVAudioPlayerNode *)self->_currentNode setVolume:outputGain];
  }

  v9 = [(HUComfortSoundsController *)self engine];
  v7 = [v9 mainMixerNode];
  v8 = self->_outputGain;
  *&v8 = v8;
  [v7 setOutputVolume:v8];
}

- (void)rampOutputGainFrom:(double)a3 to:(double)a4 withProgress:(double)a5
{
  if (a3 != a4)
  {
    v24[1] = v10;
    v24[2] = v9;
    v24[3] = v8;
    v24[4] = v7;
    v24[7] = v5;
    v24[8] = v6;
    duckDuration = self->_duckDuration;
    stepsPerSecond = self->_stepsPerSecond;
    v17 = 1.0 / (duckDuration * stepsPerSecond);
    [(HUComfortSoundsController *)self setOutputGain:self->_outputGain + (a4 - a3) / (duckDuration * stepsPerSecond + 1.0)];
    v18 = objc_initWeak(v24, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__HUComfortSoundsController_rampOutputGainFrom_to_withProgress___block_invoke;
    block[3] = &unk_1E85CCEA0;
    v23[1] = *&a5;
    v23[2] = *&v17;
    block[4] = self;
    v23[3] = *&a3;
    v23[4] = *&a4;
    objc_copyWeak(v23, v24);
    v19 = dispatch_block_create(0, block);
    duckingBlock = self->_duckingBlock;
    self->_duckingBlock = v19;

    v21 = dispatch_time(0, (self->_stepDuration * 1000000000.0));
    dispatch_after(v21, self->_audioQueue, self->_duckingBlock);
    objc_destroyWeak(v23);

    objc_destroyWeak(v24);
  }
}

void __64__HUComfortSoundsController_rampOutputGainFrom_to_withProgress___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48) + *(a1 + 56);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v2 < 1.0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);

    [v3 rampOutputGainFrom:v6 to:v7 withProgress:v2];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setOutputGain:*(a1 + 72)];

    if (*(a1 + 72) == 0.0)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      [v8 stopOnQueueAndClearRoute:1];
    }
  }
}

- (void)rampNodeVolume:(id)a3 from:(double)a4 to:(double)a5 fadeDuration:(double)a6 withProgress:(double)a7
{
  v12 = a3;
  stepsPerSecond = self->_stepsPerSecond;
  v14 = vabdd_f64(a5, a4);
  v15 = a7 * 1.57079633;
  if (a5 <= a4)
  {
    v16 = a5 + cos(v15) * v14;
  }

  else
  {
    v16 = a4 + sin(v15) * v14;
  }

  [(HUComfortSoundsController *)self outputGain];
  v18 = v16 * v17;
  v19 = 0.0;
  if (v18 >= 0.0)
  {
    v19 = v18;
  }

  if (v18 <= 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  *&v20 = v20;
  [v12 setVolume:{v20, v19}];
  if (a5 <= a4)
  {
    v21 = v16 <= a5;
  }

  else
  {
    v21 = v16 >= a5;
  }

  if (v21)
  {
    if (a5 <= a4)
    {
      [v12 stop];
      if (![(HUComfortSoundsController *)self shouldContinuePlayback])
      {
        v29 = HCLogComfortSounds();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1DA5E2000, v29, OS_LOG_TYPE_DEFAULT, "Playback ended. Stopping", buf, 2u);
        }

        v30 = [(HUComfortSoundsController *)self engine];
        [v30 stop];
      }

      rampDownBlock = self->_rampDownBlock;
      self->_rampDownBlock = 0;
    }

    else
    {
      rampUpBlock = self->_rampUpBlock;
      self->_rampUpBlock = 0;

      [(HUComfortSoundsController *)self setCrossFading:0];
      [(HUComfortSoundsController *)self setChangingSounds:0];
      if ([(HUComfortSoundsController *)self changePending])
      {
        v23 = HCLogComfortSounds();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "Performing pending change request.", buf, 2u);
        }

        [(HUComfortSoundsController *)self setChangePending:0];
        [(HUComfortSoundsController *)self scheduleNewFile];
      }
    }
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__HUComfortSoundsController_rampNodeVolume_from_to_fadeDuration_withProgress___block_invoke;
    block[3] = &unk_1E85CCEC8;
    objc_copyWeak(v34, buf);
    v34[1] = *&a7;
    *&v34[2] = 1.0 / (stepsPerSecond * a6);
    v33 = v12;
    v34[3] = *&a4;
    v34[4] = *&a5;
    v34[5] = *&a6;
    v24 = dispatch_block_create(0, block);
    v25 = _Block_copy(v24);
    v26 = 32;
    if (a5 > a4)
    {
      v26 = 24;
    }

    v27 = *(&self->super.isa + v26);
    *(&self->super.isa + v26) = v25;

    v28 = dispatch_time(0, (self->_stepDuration * 1000000000.0));
    dispatch_after(v28, self->_audioQueue, v24);

    objc_destroyWeak(v34);
    objc_destroyWeak(buf);
  }
}

void __78__HUComfortSoundsController_rampNodeVolume_from_to_fadeDuration_withProgress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained rampNodeVolume:*(a1 + 32) from:*(a1 + 64) to:*(a1 + 72) fadeDuration:*(a1 + 80) withProgress:*(a1 + 48) + *(a1 + 56)];
    WeakRetained = v3;
  }
}

- (void)startComfortSounds
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "CS enabled. Starting", buf, 2u);
  }

  v4 = HCLogComfortSounds();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DA5E2000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BackgroundSoundsEnablement", &unk_1DA697D1B, buf, 2u);
  }

  [(HUComfortSoundsController *)self play];
  v5 = +[HUComfortSoundsSettings sharedInstance];
  v6 = [v5 selectedComfortSound];
  v7 = [v6 soundGroup];

  v8 = [(HUComfortSoundsController *)self assetManager];
  v9 = [v8 availableAssets];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__HUComfortSoundsController_startComfortSounds__block_invoke;
  v10[3] = &unk_1E85CCEF0;
  v10[4] = self;
  v10[5] = v7;
  [v9 enumerateObjectsUsingBlock:v10];
}

void __47__HUComfortSoundsController_startComfortSounds__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 properties];
  v4 = [v3 valueForKey:@"SoundGroup"];
  v5 = [v4 integerValue];
  v6 = *(a1 + 40);

  if (v5 == v6)
  {
    v7 = [*(a1 + 32) assetManager];
    v8 = [v9 assetId];
    [v7 downloadAssetWithId:v8];
  }
}

- (void)stopAndClearRoute:(BOOL)a3
{
  audioQueue = self->_audioQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__HUComfortSoundsController_stopAndClearRoute___block_invoke;
  v4[3] = &unk_1E85CCF18;
  v4[4] = self;
  v5 = a3;
  dispatch_async(audioQueue, v4);
}

- (void)stopComfortSound:(BOOL)a3
{
  v3 = a3;
  v5 = HCLogComfortSounds();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Stopping", buf, 2u);
  }

  mixingBlock = self->_mixingBlock;
  if (mixingBlock)
  {
    dispatch_block_cancel(mixingBlock);
  }

  rampUpBlock = self->_rampUpBlock;
  if (rampUpBlock)
  {
    dispatch_block_cancel(rampUpBlock);
  }

  rampDownBlock = self->_rampDownBlock;
  if (rampDownBlock)
  {
    dispatch_block_cancel(rampDownBlock);
  }

  if (v3)
  {
    [(HUComfortSoundsController *)self clearActiveRoute];
  }

  v9 = [(HUComfortSoundsController *)self audioPlayerNodeA];
  [v9 stop];

  v10 = [(HUComfortSoundsController *)self audioPlayerNodeB];
  [v10 stop];

  if (![(HUComfortSoundsController *)self shouldContinuePlayback])
  {
    v11 = HCLogComfortSounds();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Stopping engine", v13, 2u);
    }

    v12 = [(HUComfortSoundsController *)self engine];
    [v12 stop];

    [(HUComfortSoundsController *)self setTransaction:0];
    [(AVAudioSession *)self->_session setActive:0 forFeature:2048 error:0];
  }

  [(HUComfortSoundsController *)self clearEngine];
}

- (void)availableAssetsDidUpdate
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Error archiving assets %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)assetDownloadDidUpdate
{
  v3 = MEMORY[0x1E69881A8];
  v4 = [(HUComfortSoundsAssetManager *)self->_assetManager availableAssets];
  v14 = 0;
  v5 = [v3 archivedAssets:v4 error:&v14];
  v6 = v14;

  if ([v5 length])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = MEMORY[0x1E695DF20];
    v10 = [(HUComfortSoundsAssetManager *)self->_assetManager assetDownloadProgress];
    v11 = [v9 dictionaryWithObjectsAndKeys:{v5, @"HUComfortSoundsAvailableAssetsKey", v10, @"HUComfortSoundsDownloadProgressKey", 0}];

    v8 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v11 andIdentifier:0x1000000];

    v12 = +[AXHeardController sharedServer];
    v13 = [MEMORY[0x1E69A4570] messageWithPayload:v8];
    [v12 sendUpdateMessage:v13 forIdentifier:0x1000000];
  }

  else
  {
    v8 = HCLogComfortSounds();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HUComfortSoundsController availableAssetsDidUpdate];
    }
  }
}

- (id)processComfortSoundsAssetRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__HUComfortSoundsController_processComfortSoundsAssetRequest___block_invoke;
  v8[3] = &unk_1E85CBD80;
  v9 = v4;
  v10 = self;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return 0;
}

void __62__HUComfortSoundsController_processComfortSoundsAssetRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 isEqualToString:@"ax_hearing_should_register_client_key"])
  {
    v6 = [v5 BOOLValue];
    v7 = [*(a1 + 32) client];
    [v7 setWantsUpdates:v6 forIdentifier:0x1000000];

    if (v6)
    {
      v8 = [*(*(a1 + 40) + 184) availableAssets];
      v9 = [v8 count];

      v10 = *(a1 + 40);
      if (v9)
      {
        [v10 availableAssetsDidUpdate];
      }

      else
      {
        [v10[23] refreshAssets];
      }
    }
  }

  else if ([v11 isEqualToString:@"HUComfortSoundsDownloadAssetKey"])
  {
    [*(*(a1 + 40) + 184) downloadAssetWithId:v5];
  }

  else if ([v11 isEqualToString:@"HUComfortSoundsRemoveAssetKey"])
  {
    [*(*(a1 + 40) + 184) removeAssetWithId:v5];
  }
}

- (id)processComfortSoundsControlRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__HUComfortSoundsController_processComfortSoundsControlRequest___block_invoke;
  v8[3] = &unk_1E85CBD80;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return 0;
}

void __64__HUComfortSoundsController_processComfortSoundsControlRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 isEqualToString:@"HUComfortSoundsPreviewKey"])
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) client];
    [v6 setPreviewClientPID:{objc_msgSend(v7, "pid")}];

    v8 = *(a1 + 32);
    v9 = *(v8 + 152);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__HUComfortSoundsController_processComfortSoundsControlRequest___block_invoke_2;
    v10[3] = &unk_1E85C9F38;
    v10[4] = v8;
    v11 = v5;
    dispatch_async(v9, v10);
  }
}

uint64_t __64__HUComfortSoundsController_processComfortSoundsControlRequest___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) previewEnabled];
    v4 = [*(a1 + 40) BOOLValue];
    v7[0] = 67109376;
    v7[1] = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Setting Comfort Sounds Preview: %d -> %d", v7, 0xEu);
  }

  result = [*(a1 + 32) setPreviewEnabled:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPreviewEnabled:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_previewEnabled != a3)
  {
    self->_previewEnabled = a3;
    if (a3)
    {
      v4 = +[HUComfortSoundsSettings sharedInstance];
      -[HUComfortSoundsController setComfortSoundsEnabledCache:](self, "setComfortSoundsEnabledCache:", [v4 comfortSoundsEnabled]);

      v5 = +[HUComfortSoundsSettings sharedInstance];
      -[HUComfortSoundsController setTimerEnabledCache:](self, "setTimerEnabledCache:", [v5 timerEnabled]);

      v6 = [(HUComfortSoundsController *)self playbackTimer];
      v7 = [v6 isPending];

      if (v7)
      {
        v8 = +[HUComfortSoundsSettings sharedInstance];
        [v8 activeTimerEndTimeStamp];
        [(HUComfortSoundsController *)self setActiveTimerEndTimeStampCache:?];
      }

      v9 = HCLogComfortSounds();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Playing comfort sounds preview", &v21, 2u);
      }

      [(HUComfortSoundsController *)self setIsSettingUpPreviewTimer:1];
      v10 = +[HUComfortSoundsSettings sharedInstance];
      [v10 setTimerEnabled:0];

      [(HUComfortSoundsController *)self setIsSettingUpPreviewComfortSounds:1];
      v11 = +[HUComfortSoundsSettings sharedInstance];
      [v11 setComfortSoundsEnabled:1];
    }

    else
    {
      v12 = HCLogComfortSounds();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Stopping comfort sounds preview", &v21, 2u);
      }

      [(HUComfortSoundsController *)self activeTimerEndTimeStampCache];
      if (v13 != 0.0)
      {
        [(HUComfortSoundsController *)self activeTimerEndTimeStampCache];
        [(HUComfortSoundsController *)self _remainingTimeUntilTimestamp:?];
        if (v14 <= 0.0)
        {
          v15 = HCLogComfortSounds();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            [(HUComfortSoundsController *)self activeTimerEndTimeStampCache];
            v21 = 134217984;
            v22 = v16;
            _os_log_impl(&dword_1DA5E2000, v15, OS_LOG_TYPE_DEFAULT, "Cached timer %f already ended. Will not restart comfort sounds", &v21, 0xCu);
          }

          [(HUComfortSoundsController *)self setActiveTimerEndTimeStampCache:0.0];
          [(HUComfortSoundsController *)self setComfortSoundsEnabledCache:0];
          v17 = +[HUComfortSoundsSettings sharedInstance];
          v18 = [v17 timerOnlyOnFirstSession];

          if (v18)
          {
            [(HUComfortSoundsController *)self setTimerEnabledCache:0];
          }
        }
      }

      [(HUComfortSoundsController *)self setIsSettingUpPreviewComfortSounds:0];
      v19 = +[HUComfortSoundsSettings sharedInstance];
      [v19 setComfortSoundsEnabled:{-[HUComfortSoundsController comfortSoundsEnabledCache](self, "comfortSoundsEnabledCache")}];

      [(HUComfortSoundsController *)self setIsSettingUpPreviewTimer:0];
      v11 = +[HUComfortSoundsSettings sharedInstance];
      [v11 setTimerEnabled:{-[HUComfortSoundsController timerEnabledCache](self, "timerEnabledCache")}];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)processAutomationRequest:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"ax_automation_is_background_sounds_playing"];

  if (v6)
  {
    v13 = @"ax_automation_is_background_sounds_playing";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[HUComfortSoundsController isPlaying](self, "isPlaying")}];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v8 andIdentifier:0x4000000000000000];
  v10 = [v4 replyMessageWithPayload:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)clientRemoved:(id)a3
{
  v4 = [a3 pid];
  if (v4 == [(HUComfortSoundsController *)self previewClientPID])
  {
    audioQueue = self->_audioQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__HUComfortSoundsController_clientRemoved___block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(audioQueue, block);
  }
}

- (void)callStatusDidChange:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_DEBUG, "Call status changed - %{private}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)callStatusDidChange:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v5[0] = 67109379;
  v5[1] = v3;
  v6 = 2113;
  v7 = a2;
  _os_log_debug_impl(&dword_1DA5E2000, log, OS_LOG_TYPE_DEBUG, "Phone call holding %d with notification %{private}@", v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)nextFileToPlay
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Error loading file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end