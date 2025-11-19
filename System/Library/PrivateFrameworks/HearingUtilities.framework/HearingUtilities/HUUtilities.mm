@interface HUUtilities
+ (id)XDCObjectFromObject:(id)a3;
+ (id)objectFromXDCObject:(id)a3;
+ (id)sharedUtilities;
- (BOOL)_shouldBypassLiveListenRouteCheck;
- (BOOL)deviceIsCounterfeit:(id)a3;
- (BOOL)headphoneStreamSelected;
- (BOOL)hearingAidRouteAvailable;
- (BOOL)hearingAidRouteAvailableForAvailableRoutes:(id)a3;
- (BOOL)hearingAidStreamSelected;
- (BOOL)hearingAidStreamSelectedForAvailableRoutes:(id)a3;
- (BOOL)liveListenRouteSelected;
- (BOOL)liveListenRouteSelectedForAvailableRoutes:(id)a3;
- (HUUtilities)init;
- (OS_dispatch_queue)routingQueue;
- (id)currentPickableAudioRoutes;
- (id)currentPickableAudioRoutesIfExist;
- (unint64_t)backgroundSoundsRouteDecision;
- (void)addHearingFeatureUsage:(unint64_t)a3;
- (void)checkAudioPlayingWithQueue:(id)a3 andCompletion:(id)a4;
- (void)checkAudioPlayingWithQueue:(id)a3 origin:(void *)a4 andCompletion:(id)a5;
- (void)clearAudioRoutes;
- (void)dealloc;
- (void)headphoneStreamSelected;
- (void)hearingAidRouteAvailableAsync:(id)a3;
- (void)hearingAidStreamSelectedAsync:(id)a3;
- (void)liveListenRouteSelectedAsync:(id)a3;
- (void)pauseNowPlaying:(BOOL)a3 withQueue:(id)a4 andCompletion:(id)a5;
- (void)requestCurrentRoutesWithCompletion:(id)a3;
- (void)updateHearingFeatureUsage;
- (void)updateWirelessSplitterState;
@end

@implementation HUUtilities

+ (id)sharedUtilities
{
  if (sharedUtilities_onceToken != -1)
  {
    +[HUUtilities sharedUtilities];
  }

  v3 = sharedUtilities_UtilityProvider;

  return v3;
}

- (void)clearAudioRoutes
{
  v2 = [(HUUtilities *)self routesManager];
  [v2 clearAudioRoutes];
}

- (id)currentPickableAudioRoutes
{
  v2 = [(HUUtilities *)self routesManager];
  v3 = [v2 fetchCurrentPickableAudioRoutesIfNeeded];

  return v3;
}

- (unint64_t)backgroundSoundsRouteDecision
{
  v2 = [(HUUtilities *)self currentPickableAudioRoutes];
  v3 = +[HUUtilities sharedUtilities];
  v4 = [v3 wirelessSplitterEnabled];

  if (v4)
  {
    v5 = HCLogComfortSounds();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Wireless splitter active.", buf, 2u);
    }

    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [v2 valueForKey:@"AXSHARoutePicked"];
  v8 = [v7 valueForKey:@"BTDetails_IsHFPRoute"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = HCLogComfortSounds();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HFP active.", v13, 2u);
    }

    v6 = 2;
  }

  if (_AXSInUnitTestMode())
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (void)updateHearingFeatureUsage
{
  v2 = +[HUHearingAidSettings sharedInstance];
  v3 = [v2 usedHearingFeatures];

  v4 = +[HUHearingAidSettings sharedInstance];
  if ([v4 isPairedWithRealHearingAids])
  {
    v5 = compoundAttributeByAddingAttribute(v3, 2);
  }

  else
  {
    v5 = compoundAttributeByRemovingAttribute(v3, 2);
  }

  v6 = v5;

  if (AXHACHearingAidComplianceEnabled())
  {
    v7 = compoundAttributeByAddingAttribute(v6, 4);
  }

  else
  {
    v7 = compoundAttributeByRemovingAttribute(v6, 4);
  }

  v8 = v7;
  v9 = [getRTTSettingsClass_0() sharedInstance];
  if ([v9 TTYHardwareEnabled])
  {
    v10 = compoundAttributeByAddingAttribute(v8, 16);
  }

  else
  {
    v11 = [getRTTSettingsClass_0() sharedInstance];
    if ([v11 TTYSoftwareEnabled])
    {
      v12 = compoundAttributeByAddingAttribute(v8, 16);
    }

    else
    {
      v12 = compoundAttributeByRemovingAttribute(v8, 16);
    }

    v10 = v12;
  }

  if (_AXSMonoAudioEnabled())
  {
    v13 = compoundAttributeByAddingAttribute(v10, 32);
  }

  else
  {
    v13 = compoundAttributeByRemovingAttribute(v10, 32);
  }

  v14 = v13;
  if (_AXSEarpieceNoiseCancellationEnabled())
  {
    v15 = compoundAttributeByAddingAttribute(v14, 64);
  }

  else
  {
    v15 = compoundAttributeByRemovingAttribute(v14, 64);
  }

  v16 = v15;
  _AXSLeftRightAudioBalance();
  if (v17 == 0.0)
  {
    v18 = compoundAttributeByRemovingAttribute(v16, 128);
  }

  else
  {
    v18 = compoundAttributeByAddingAttribute(v16, 128);
  }

  v19 = v18;
  if (_AXSVisualAlertEnabled())
  {
    v20 = compoundAttributeByAddingAttribute(v19, 256);
  }

  else
  {
    v20 = compoundAttributeByRemovingAttribute(v19, 256);
  }

  v21 = v20;
  if (_AXSClosedCaptionsEnabled())
  {
    v22 = compoundAttributeByAddingAttribute(v21, 512);
  }

  else
  {
    v22 = compoundAttributeByRemovingAttribute(v21, 512);
  }

  v23 = v22;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v24 = getPASettingsClass_softClass_0;
  v38 = getPASettingsClass_softClass_0;
  if (!getPASettingsClass_softClass_0)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __getPASettingsClass_block_invoke_0;
    v34[3] = &unk_1E85C9FB0;
    v34[4] = &v35;
    __getPASettingsClass_block_invoke_0(v34);
    v24 = v36[3];
  }

  v25 = v24;
  _Block_object_dispose(&v35, 8);
  v26 = [v24 sharedInstance];
  v27 = [v26 personalMediaConfiguration];
  if (v27)
  {
    v28 = compoundAttributeByAddingAttribute(v23, 1024);
  }

  else
  {
    v28 = compoundAttributeByRemovingAttribute(v23, 1024);
  }

  v29 = v28;

  v30 = +[HUComfortSoundsSettings sharedInstance];
  if ([v30 comfortSoundsEnabled])
  {
    v31 = compoundAttributeByAddingAttribute(v29, 2048);
  }

  else
  {
    v31 = compoundAttributeByRemovingAttribute(v29, 2048);
  }

  v32 = v31;

  v33 = +[HUHearingAidSettings sharedInstance];
  [v33 setUsedHearingFeatures:v32];
}

- (BOOL)hearingAidStreamSelected
{
  v2 = self;
  v3 = [(HUUtilities *)self currentPickableAudioRoutes];
  LOBYTE(v2) = [(HUUtilities *)v2 hearingAidStreamSelectedForAvailableRoutes:v3];

  return v2;
}

- (BOOL)liveListenRouteSelected
{
  if ([(HUUtilities *)self _shouldBypassLiveListenRouteCheck])
  {
    return 1;
  }

  v4 = [(HUUtilities *)self currentPickableAudioRoutes];
  v5 = [(HUUtilities *)self liveListenRouteSelectedForAvailableRoutes:v4];

  return v5;
}

- (BOOL)hearingAidRouteAvailable
{
  v2 = self;
  v3 = [(HUUtilities *)self currentPickableAudioRoutes];
  LOBYTE(v2) = [(HUUtilities *)v2 hearingAidRouteAvailableForAvailableRoutes:v3];

  return v2;
}

- (OS_dispatch_queue)routingQueue
{
  v2 = [(HUUtilities *)self routesManager];
  v3 = [v2 routingQueue];

  return v3;
}

- (BOOL)headphoneStreamSelected
{
  v2 = [(HUUtilities *)self currentPickableAudioRoutes];
  v3 = [v2 valueForKey:@"AXSHARoutePicked"];
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(HUUtilities *)v3 headphoneStreamSelected];
  }

  v5 = [v3 valueForKey:@"AVAudioRouteName"];
  v6 = [v5 hasPrefix:@"Headphone"];

  return v6;
}

uint64_t __30__HUUtilities_sharedUtilities__block_invoke()
{
  sharedUtilities_UtilityProvider = objc_alloc_init(HUUtilities);

  return MEMORY[0x1EEE66BB8]();
}

- (void)updateWirelessSplitterState
{
  v9 = *MEMORY[0x1E69E9840];
  state64 = -1;
  notify_get_state(self->_wirelessSplitterNotifyToken, &state64);
  self->_wirelessSplitterEnabled = state64 & 1;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    wirelessSplitterEnabled = self->_wirelessSplitterEnabled;
    *buf = 67109120;
    v8 = wirelessSplitterEnabled;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Wireless splitter updated %d", buf, 8u);
  }

  [(HUUtilities *)self clearAudioRoutes];
  v5 = *MEMORY[0x1E69E9840];
}

- (HUUtilities)init
{
  v16.receiver = self;
  v16.super_class = HUUtilities;
  v2 = [(HUUtilities *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    routesManager = v2->_routesManager;
    v2->_routesManager = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, UserRequestedAudioTransferCompleteNotification, @"com.apple.accessibility.hearing.audio.transfer.complete", 0, 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, UserRequestedAudioTransferNotification_0, @"com.apple.accessibility.hearing.audio.transfer", 0, 0);
    objc_initWeak(&location, v2);
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __19__HUUtilities_init__block_invoke;
    v13 = &unk_1E85CAF10;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch("com.apple.bluetooth.WirelessSplitterOn", &v2->_wirelessSplitterNotifyToken, v7, &v10);

    [(HUUtilities *)v2 updateWirelessSplitterState:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __19__HUUtilities_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateWirelessSplitterState];

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"com.apple.accessibility.hearing.wireless.splitter.changed" object:0];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.accessibility.hearing.audio.transfer.complete", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.accessibility.hearing.audio.transfer", 0);
  v5.receiver = self;
  v5.super_class = HUUtilities;
  [(HUUtilities *)&v5 dealloc];
}

- (void)hearingAidStreamSelectedAsync:(id)a3
{
  v4 = a3;
  v5 = [(HUUtilities *)self routesManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__HUUtilities_hearingAidStreamSelectedAsync___block_invoke;
  v7[3] = &unk_1E85CC7E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchCurrentPickableAudioRoutesIfNeededAsync:v7];
}

uint64_t __45__HUUtilities_hearingAidStreamSelectedAsync___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) hearingAidStreamSelectedForAvailableRoutes:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (BOOL)hearingAidStreamSelectedForAvailableRoutes:(id)a3
{
  v3 = [a3 valueForKey:@"AXSHARoutePicked"];
  v4 = [v3 valueForKey:@"AVAudioRouteName"];
  v5 = [v4 isEqual:@"BluetoothLEOutput"];

  return v5;
}

- (void)hearingAidRouteAvailableAsync:(id)a3
{
  v4 = a3;
  v5 = [(HUUtilities *)self routesManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__HUUtilities_hearingAidRouteAvailableAsync___block_invoke;
  v7[3] = &unk_1E85CC7E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchCurrentPickableAudioRoutesIfNeededAsync:v7];
}

uint64_t __45__HUUtilities_hearingAidRouteAvailableAsync___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) hearingAidRouteAvailableForAvailableRoutes:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (BOOL)hearingAidRouteAvailableForAvailableRoutes:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 valueForKey:@"AXSHARouteHearingAid"];
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4 != 0;
}

- (void)liveListenRouteSelectedAsync:(id)a3
{
  v4 = a3;
  v5 = [(HUUtilities *)self _shouldBypassLiveListenRouteCheck];
  if (v4 && v5)
  {
    v4[2](v4, 1);
  }

  else
  {
    v6 = [(HUUtilities *)self routesManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__HUUtilities_liveListenRouteSelectedAsync___block_invoke;
    v7[3] = &unk_1E85CC7E0;
    v7[4] = self;
    v8 = v4;
    [v6 fetchCurrentPickableAudioRoutesIfNeededAsync:v7];
  }
}

uint64_t __44__HUUtilities_liveListenRouteSelectedAsync___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) liveListenRouteSelectedForAvailableRoutes:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (BOOL)liveListenRouteSelectedForAvailableRoutes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(HUUtilities *)self _shouldBypassLiveListenRouteCheck])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(HUUtilities *)self hearingAidStreamSelectedForAvailableRoutes:v4];
    v7 = [v4 valueForKey:@"AXSHARouteLiveListen"];
    v8 = [v7 valueForKey:*MEMORY[0x1E69AEC78]];
    v9 = [v8 BOOLValue];

    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109634;
      v13[1] = v6;
      v14 = 1024;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "%d, %d %@", v13, 0x18u);
    }

    v5 = v6 | v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (BOOL)_shouldBypassLiveListenRouteCheck
{
  if (![MEMORY[0x1E69A4560] isInternalInstall] || !_AXSAutomationEnabled())
  {
    return 0;
  }

  v2 = +[HUHearingSettings sharedInstance];
  v3 = [v2 liveListenAnyRouteEnabled];

  return v3;
}

- (id)currentPickableAudioRoutesIfExist
{
  v2 = [(HUUtilities *)self routesManager];
  v3 = [v2 currentPickableAudioRoutes];

  return v3;
}

- (void)requestCurrentRoutesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HUUtilities *)self routesManager];
  [v5 fetchCurrentPickableAudioRoutesIfNeededAsync:v4];
}

- (void)checkAudioPlayingWithQueue:(id)a3 origin:(void *)a4 andCompletion:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (v7)
  {
    if (!v6)
    {
      v6 = dispatch_get_global_queue(0, 0);
    }

    v8 = v7;
    MRMediaRemoteGetNowPlayingApplicationPlaybackStateForOrigin();
  }
}

- (void)checkAudioPlayingWithQueue:(id)a3 andCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HUUtilities *)self checkAudioPlayingWithQueue:v7 origin:MRMediaRemoteGetLocalOrigin() andCompletion:v6];
}

- (void)pauseNowPlaying:(BOOL)a3 withQueue:(id)a4 andCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = dispatch_get_global_queue(0, 0);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke;
  v12[3] = &unk_1E85CC880;
  v16 = a3;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  [(HUUtilities *)self checkAudioPlayingWithQueue:v11 andCompletion:v12];
}

void __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke(int8x16_t *a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1[3].i8[8];
  if (a2)
  {
    if (a1[3].i8[8])
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = MRMediaRemoteSendCommandToApp() != 0;
      v4 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke_2;
      block[3] = &unk_1E85CC858;
      v16 = a1[2];
      v22 = vextq_s8(v16, v16, 8uLL);
      v23 = &v24;
      dispatch_after(v4, v16.i64[0], block);
      v5 = HCLogHearingAids();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v25 + 24))
        {
          v6 = @"success";
        }

        else
        {
          v6 = @"fail";
        }

        *buf = 138412290;
        v29 = v6;
        _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Media Pause command %@", buf, 0xCu);
      }

      v7 = a1[3].i64[0];
      if (v7)
      {
        (*(v7 + 16))(v7, *(v25 + 24));
      }

LABEL_24:
      _Block_object_dispose(&v24, 8);
      goto LABEL_25;
    }

LABEL_16:
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = MRMediaRemoteSendCommandToApp() != 0;
    v11 = dispatch_time(0, 500000000);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke_25;
    v18[3] = &unk_1E85CC858;
    v17 = a1[2];
    v19 = vextq_s8(v17, v17, 8uLL);
    v20 = &v24;
    dispatch_after(v11, v17.i64[0], v18);
    v12 = HCLogHearingAids();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v25 + 24))
      {
        v13 = @"success";
      }

      else
      {
        v13 = @"fail";
      }

      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Media Play command %@", buf, 0xCu);
    }

    v14 = a1[3].i64[0];
    if (v14)
    {
      (*(v14 + 16))(v14, *(v25 + 24));
    }

    goto LABEL_24;
  }

  if ((a1[3].i8[8] & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = a1[3].i64[0];
  if (!v8)
  {
LABEL_25:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = *(v8 + 16);
  v10 = *MEMORY[0x1E69E9840];

  v9();
}

uint64_t __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke_3;
  v4[3] = &unk_1E85CC830;
  v4[4] = a1[6];
  return [v2 checkAudioPlayingWithQueue:v1 andCompletion:v4];
}

void __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke_3(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = MRMediaRemoteSendCommandToApp() != 0;
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v4 = @"success";
      }

      else
      {
        v4 = @"fail";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Retried media pause, %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke_25(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke_2_26;
  v4[3] = &unk_1E85CC830;
  v4[4] = a1[6];
  return [v2 checkAudioPlayingWithQueue:v1 andCompletion:v4];
}

void __55__HUUtilities_pauseNowPlaying_withQueue_andCompletion___block_invoke_2_26(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = MRMediaRemoteSendCommandToApp() != 0;
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v4 = @"success";
      }

      else
      {
        v4 = @"fail";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Retried media play, %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addHearingFeatureUsage:(unint64_t)a3
{
  v4 = +[HUHearingAidSettings sharedInstance];
  v5 = [v4 usedHearingFeatures];

  v6 = compoundAttributeByAddingAttribute(v5, a3);
  v7 = +[HUHearingAidSettings sharedInstance];
  [v7 setUsedHearingFeatures:v6];
}

- (BOOL)deviceIsCounterfeit:(id)a3
{
  if (a3)
  {
    return ([a3 gapaFlags] >> 1) & 1;
  }

  else
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HUUtilities deviceIsCounterfeit:v4];
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (id)XDCObjectFromObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__7;
    v12 = __Block_byref_object_dispose__7;
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__HUUtilities_XDCObjectFromObject___block_invoke;
    v7[3] = &unk_1E85CC8A8;
    v7[4] = &v8;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    objc_opt_class();
    v4 = v3;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__7;
    v12 = __Block_byref_object_dispose__7;
    v13 = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__HUUtilities_XDCObjectFromObject___block_invoke_2;
    v6[3] = &unk_1E85CC8D0;
    v6[4] = &v8;
    [v3 enumerateObjectsUsingBlock:v6];
  }

  v4 = v9[5];

  _Block_object_dispose(&v8, 8);
LABEL_6:

  return v4;
}

void __35__HUUtilities_XDCObjectFromObject___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = [HUUtilities XDCObjectFromObject:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (isKindOfClass)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hai.%@", v5];

    v5 = v8;
  }

  [v7 setObject:v9 forKey:v5];
}

void __35__HUUtilities_XDCObjectFromObject___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [HUUtilities XDCObjectFromObject:a2];
  [v2 addObject:v3];
}

+ (id)objectFromXDCObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__HUUtilities_objectFromXDCObject___block_invoke;
    v12[3] = &unk_1E85CA558;
    v5 = &v13;
    v6 = v4;
    v13 = v6;
    [v3 enumerateKeysAndObjectsUsingBlock:v12];
  }

  else
  {
    objc_opt_class();
    v7 = v3;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = [MEMORY[0x1E695DF70] array];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__HUUtilities_objectFromXDCObject___block_invoke_2;
    v10[3] = &unk_1E85CA8E0;
    v5 = &v11;
    v6 = v8;
    v11 = v6;
    [v3 enumerateObjectsUsingBlock:v10];
  }

  v7 = v6;

LABEL_6:

  return v7;
}

void __35__HUUtilities_objectFromXDCObject___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = [HUUtilities objectFromXDCObject:a3];
  v6 = [v5 hasPrefix:@"hai."];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v5 componentsSeparatedByString:@"hai."];

    v9 = [v8 lastObject];
    [v7 setObject:v10 forKey:v9];

    v5 = v8;
  }

  else
  {
    [*(a1 + 32) setObject:v10 forKey:v5];
  }
}

void __35__HUUtilities_objectFromXDCObject___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HUUtilities objectFromXDCObject:a2];
  [v2 addObject:v3];
}

- (void)headphoneStreamSelected
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "headphoneStreamSelected selectedRoute: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end