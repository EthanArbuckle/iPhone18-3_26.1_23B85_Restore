@interface HUHeadphoneLevelController
+ (id)sharedController;
- (HUHeadphoneLevelController)init;
- (id)_pushPayload;
- (id)_sendIDSRequestToCompanion:(id)a3 messageIdentifier:(unint64_t)a4;
- (id)registerForHeadphoneLevelUpdates:(id)a3;
- (id)registerForRemoteHeadphoneLevelChangesUpdates:(id)a3;
- (id)registerForRemoteHeadphoneLevelUpdates:(id)a3;
- (unint64_t)_audioLevelFromAudioDict:(id)a3;
- (void)_automationPlaySampleData;
- (void)_automationStartPlayingSampleData:(id)a3;
- (void)_mediaPlaybackDidChange:(id)a3;
- (void)_publishAudioDataIDSMessage:(id)a3;
- (void)_publishRequestAudioDataIDSMessage:(id)a3;
- (void)_pushValues:(id)a3 identifier:(unint64_t)a4;
- (void)_registerMediaNotification;
- (void)_startIDSConnection;
- (void)_startReceivingADAMAudioSample:(BOOL)a3;
- (void)_stopIDSConnection;
- (void)_unregisterMediaNotification;
- (void)connectedDevicesDidChange:(id)a3;
- (void)dealloc;
- (void)didReceiveIncomingData:(id)a3;
- (void)pushValuesToLocalOrIDSListeners;
- (void)pushValuesToRemoteChangeListeners;
- (void)pushValuesToRemoteListeners;
- (void)receiveAudioSample:(id)a3;
- (void)restartADAMTimer;
- (void)serverConnectionWasInterrupted;
@end

@implementation HUHeadphoneLevelController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[HUHeadphoneLevelController sharedController];
  }

  v3 = sharedController_Controller;

  return v3;
}

void __49__HUHeadphoneLevelController__startIDSConnection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!AXIDSServicesLibraryCore())
  {
    v6 = AXLogIDS();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__HUHeadphoneLevelController__startIDSConnection__block_invoke_cold_1(v6);
    }

    goto LABEL_8;
  }

  v2 = [getAXIDSServicesClass() sharedInstance];
  v3 = [v2 containsClient:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = AXLogIDS();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HeadphoneLevelController is starting IDS %@", &v8, 0xCu);
    }

    v6 = [getAXIDSServicesClass() sharedInstance];
    [v6 registerForIncomingData:*(a1 + 32)];
LABEL_8:
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (HUHeadphoneLevelController)init
{
  v20.receiver = self;
  v20.super_class = HUHeadphoneLevelController;
  v2 = [(HUHeadphoneLevelController *)&v20 init];
  if (v2)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v3 = getADAMAudioDataReceiverClass_softClass;
    v25 = getADAMAudioDataReceiverClass_softClass;
    if (!getADAMAudioDataReceiverClass_softClass)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getADAMAudioDataReceiverClass_block_invoke;
      v21[3] = &unk_1E85C9FB0;
      v21[4] = &v22;
      __getADAMAudioDataReceiverClass_block_invoke(v21);
      v3 = v23[3];
    }

    v4 = v3;
    _Block_object_dispose(&v22, 8);
    v5 = [v3 alloc];
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];
    v8 = [v5 initWithIdentifier:v7];
    v9 = *(v2 + 3);
    *(v2 + 3) = v8;

    [*(v2 + 3) setDelegate:v2];
    [*(v2 + 3) stopReceivingAudioSampleType:1751213428];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.HearingUtilities.HUHeadphoneLevelController.DataQueue", v10);
    v12 = *(v2 + 5);
    *(v2 + 5) = v11;

    v13 = [objc_alloc(MEMORY[0x1E6988780]) initWithTargetSerialQueue:*(v2 + 5)];
    v14 = *(v2 + 4);
    *(v2 + 4) = v13;

    if ([MEMORY[0x1E69A4560] isInternalInstall])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _automationPlayAutomationAudioSamples, *MEMORY[0x1E69E4DF0], 0, 0);
    }

    *(v2 + 9) = 0;
    *(v2 + 8) = 0;
    *(v2 + 9) = 0;
    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_create("com.apple.HearingUtilities.HUHeadphoneLevelController.IDSQueue", v16);
    v18 = *(v2 + 7);
    *(v2 + 7) = v17;

    [v2 _startIDSConnection];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(ADAMAudioDataReceiver *)self->_receiver stopReceivingAudioSampleType:1751213428];
  [(HUHeadphoneLevelController *)self _stopIDSConnection];
  [(HUHeadphoneLevelController *)self _unregisterMediaNotification];
  v4.receiver = self;
  v4.super_class = HUHeadphoneLevelController;
  [(HUHeadphoneLevelController *)&v4 dealloc];
}

uint64_t __46__HUHeadphoneLevelController_sharedController__block_invoke()
{
  sharedController_Controller = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)registerForHeadphoneLevelUpdates:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"ax_hearing_should_register_client_key"];
  v7 = [v6 BOOLValue];

  v8 = HCLogSoundMeter();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v15 = 0;
      v10 = "Local: Start receiving headphone audio updates";
      v11 = &v15;
LABEL_6:
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_INFO, v10, v11, 2u);
    }
  }

  else if (v9)
  {
    v14 = 0;
    v10 = "Local: Stop receiving headphone audio updates";
    v11 = &v14;
    goto LABEL_6;
  }

  v12 = [v4 client];

  [v12 setWantsUpdates:v7 forIdentifier:0x100000];
  [(HUHeadphoneLevelController *)self _startReceivingADAMAudioSample:v7];
  return 0;
}

- (void)_startReceivingADAMAudioSample:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXHeardController sharedServer];
  v6 = [v5 countOfClientsListeningForIdentifier:0x100000];

  v7 = +[HUHearingAidSettings sharedInstance];
  v8 = [v7 anyGizmoLiveHeadphoneLevelEnabled];

  if (v8)
  {
    v9 = [(HUHeadphoneLevelController *)self shouldStreamingDataToGizmo];
  }

  else
  {
    v9 = 0;
  }

  if (v3)
  {
    if (v6 == 0 && !v9)
    {
      return;
    }

    v10 = HCLogSoundMeter();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_INFO, "Start receiving ADAM headphone audio data", buf, 2u);
    }

    v11 = [(HUHeadphoneLevelController *)self receiver];
    [v11 startReceivingAudioSampleType:1751213428];
  }

  else
  {
    if (v6 != 0 || v9)
    {
      return;
    }

    v12 = HCLogSoundMeter();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_INFO, "Stop receiving ADAM headphone audio data", v13, 2u);
    }

    v11 = [(HUHeadphoneLevelController *)self receiver];
    [v11 stopReceivingAudioSampleType:1751213428];
  }
}

- (void)restartADAMTimer
{
  [(AXDispatchTimer *)self->_adamSuspendedTimer cancel];
  objc_initWeak(&location, self);
  adamSuspendedTimer = self->_adamSuspendedTimer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__HUHeadphoneLevelController_restartADAMTimer__block_invoke;
  v4[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, &location);
  [(AXDispatchTimer *)adamSuspendedTimer afterDelay:v4 processBlock:0.2];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__HUHeadphoneLevelController_restartADAMTimer__block_invoke(uint64_t a1)
{
  v2 = HCLogSoundMeter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_INFO, "Headphone level didn't receive measurements from ADAM", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMeasurementEnabled:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setFastLeq:0.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setSlowLeq:0.0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 pushValuesToLocalOrIDSListeners];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 pushValuesToRemoteListeners];
}

- (id)_pushPayload
{
  v3 = MEMORY[0x1E695DF20];
  v4 = MEMORY[0x1E696AD98];
  [(HUHeadphoneLevelController *)self slowLeq];
  v5 = [v4 numberWithFloat:?];
  v6 = MEMORY[0x1E696AD98];
  [(HUHeadphoneLevelController *)self fastLeq];
  v7 = [v6 numberWithFloat:?];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HUHeadphoneLevelController isMeasurementEnabled](self, "isMeasurementEnabled")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HUHeadphoneLevelController thresholdLevel](self, "thresholdLevel")}];
  v10 = [v3 dictionaryWithObjectsAndKeys:{v5, @"HUEDSlowLeqIdentifier", v7, @"HUEDFastLeqIdentifier", v8, @"HUEDEnabledIdentifier", v9, @"HUEDThresholdCrossedIdentifier", 0}];

  return v10;
}

- (void)pushValuesToLocalOrIDSListeners
{
  v3 = [(HUHeadphoneLevelController *)self dataQueue];
  dispatch_assert_queue_V2(v3);

  v6 = [(HUHeadphoneLevelController *)self _pushPayload];
  [HUHeadphoneLevelController _pushValues:"_pushValues:identifier:" identifier:?];
  v4 = +[HUHearingAidSettings sharedInstance];
  v5 = [v4 anyGizmoLiveHeadphoneLevelEnabled];

  if (v5)
  {
    [(HUHeadphoneLevelController *)self _publishAudioDataIDSMessage:v6];
  }
}

- (void)pushValuesToRemoteListeners
{
  v3 = [(HUHeadphoneLevelController *)self dataQueue];
  dispatch_assert_queue_V2(v3);

  v6 = [(HUHeadphoneLevelController *)self _pushPayload];
  v4 = +[HUHearingAidSettings sharedInstance];
  v5 = [v4 anyGizmoLiveHeadphoneLevelEnabled];

  if (v5)
  {
    [(HUHeadphoneLevelController *)self _pushValues:v6 identifier:0x200000];
  }
}

- (void)pushValuesToRemoteChangeListeners
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(HUHeadphoneLevelController *)self dataQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[HUHearingAidSettings sharedInstance];
  v5 = [v4 anyGizmoLiveHeadphoneLevelEnabled];

  if (v5)
  {
    v9 = @"HUGizmoAudioLevelIdentifier";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HUHeadphoneLevelController streamingToGizmoAudioLevel](self, "streamingToGizmoAudioLevel")}];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(HUHeadphoneLevelController *)self _pushValues:v7 identifier:0x400000];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_pushValues:(id)a3 identifier:(unint64_t)a4
{
  v10 = a3;
  v5 = +[AXHeardController sharedServer];
  v6 = [v5 countOfClientsListeningForIdentifier:a4];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v10 andIdentifier:a4];
    v8 = +[AXHeardController sharedServer];
    v9 = [MEMORY[0x1E69A4570] messageWithPayload:v7];
    [v8 sendUpdateMessage:v9 forIdentifier:a4];
  }
}

- (void)receiveAudioSample:(id)a3
{
  v4 = a3;
  v5 = [(HUHeadphoneLevelController *)self dataQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__HUHeadphoneLevelController_receiveAudioSample___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __49__HUHeadphoneLevelController_receiveAudioSample___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  [v2 floatValue];
  v4 = v3;

  v5 = [*(a1 + 32) metadata];
  v6 = getADAFMetadataKeyHAEDataForGauge();
  v7 = [v5 objectForKey:v6];
  v8 = [v7 BOOLValue];

  v10 = *(a1 + 40);
  if (v8)
  {
    *&v9 = v4;
    [v10 setFastLeq:v9];
  }

  else
  {
    *&v9 = v4;
    [v10 setSlowLeq:v9];
    if (v4 < 80.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = 80;
    }

    [*(a1 + 40) setThresholdLevel:v11];
  }

  [*(a1 + 40) setMeasurementEnabled:1];
  [*(a1 + 40) pushValuesToLocalOrIDSListeners];
  v12 = *(a1 + 40);

  return [v12 restartADAMTimer];
}

- (id)registerForRemoteHeadphoneLevelUpdates:(id)a3
{
  v4 = a3;
  v5 = +[HUHearingAidSettings sharedInstance];
  v6 = [v5 anyGizmoLiveHeadphoneLevelEnabled];

  if (v6)
  {
    v7 = [(HUHeadphoneLevelController *)self _sendIDSRequestToCompanion:v4 messageIdentifier:0x200000];
  }

  return 0;
}

- (id)registerForRemoteHeadphoneLevelChangesUpdates:(id)a3
{
  v4 = a3;
  v5 = +[HUHearingAidSettings sharedInstance];
  v6 = [v5 anyGizmoLiveHeadphoneLevelEnabled];

  if (v6)
  {
    v7 = [(HUHeadphoneLevelController *)self _sendIDSRequestToCompanion:v4 messageIdentifier:0x400000];
  }

  return 0;
}

- (id)_sendIDSRequestToCompanion:(id)a3 messageIdentifier:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 payload];
  v8 = [v7 objectForKey:@"ax_hearing_should_register_client_key"];
  v9 = [v8 BOOLValue];

  v10 = [v6 client];

  [v10 setWantsUpdates:v9 forIdentifier:a4];
  if (v9)
  {
    v11 = HCLogSoundMeter();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v27 = a4;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_INFO, "Remote: Start requesting headphone audio updates for %llu", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69A4560];
    v24 = @"HUGizmoIDSRequestDataKey";
    v25 = MEMORY[0x1E695E118];
    v13 = MEMORY[0x1E695DF20];
    v14 = &v25;
    v15 = &v24;
  }

  else
  {
    v16 = [(HUHeadphoneLevelController *)self isConnectedToIDS];
    v17 = HCLogSoundMeter();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (!v16)
    {
      if (v18)
      {
        *buf = 134217984;
        v27 = a4;
        _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_INFO, "Remote: Don't send Stop Updates message, already stopped for %llu", buf, 0xCu);
      }

      goto LABEL_13;
    }

    if (v18)
    {
      *buf = 134217984;
      v27 = a4;
      _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_INFO, "Remote: Stop requesting headphone audio updates for %llu", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69A4560];
    v22 = @"HUGizmoIDSRequestDataKey";
    v23 = MEMORY[0x1E695E110];
    v13 = MEMORY[0x1E695DF20];
    v14 = &v23;
    v15 = &v22;
  }

  v19 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:{1, v22, v23, v24, v25}];
  v17 = [v12 messagePayloadFromDictionary:v19 andIdentifier:a4];

  if (v17)
  {
    [(HUHeadphoneLevelController *)self _publishRequestAudioDataIDSMessage:v17];
LABEL_13:
  }

  v20 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_startIDSConnection
{
  v3 = AXLogIDS();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HeadphoneLevelController will start IDS", buf, 2u);
  }

  v4 = +[HUHearingAidSettings sharedInstance];
  v5 = [v4 anyGizmoLiveHeadphoneLevelEnabled];

  if (v5)
  {
    [(HUHeadphoneLevelController *)self setIsConnectedToIDS:1];
    v6 = [(HUHeadphoneLevelController *)self idsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__HUHeadphoneLevelController__startIDSConnection__block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = AXLogIDS();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneLevelController starting IDS skipped, no Watches with enabled", buf, 2u);
    }
  }
}

- (void)_stopIDSConnection
{
  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = [v3 anyGizmoLiveHeadphoneLevelEnabled];

  if (v4)
  {
    [(HUHeadphoneLevelController *)self setIsConnectedToIDS:0];
    v5 = [(HUHeadphoneLevelController *)self idsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__HUHeadphoneLevelController__stopIDSConnection__block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __48__HUHeadphoneLevelController__stopIDSConnection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (AXIDSServicesLibraryCore())
  {
    v2 = [getAXIDSServicesClass() sharedInstance];
    v3 = [v2 containsClient:*(a1 + 32)];

    if (v3)
    {
      v4 = AXLogIDS();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "_stopIDSConnection %@", &v8, 0xCu);
      }

      v6 = [getAXIDSServicesClass() sharedInstance];
      [v6 deregisterForIncomingData:*(a1 + 32)];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_publishAudioDataIDSMessage:(id)a3
{
  v4 = a3;
  v5 = +[HUHearingAidSettings sharedInstance];
  v6 = [v5 anyGizmoLiveHeadphoneLevelEnabled];

  if (v6)
  {
    v7 = [(HUHeadphoneLevelController *)self idsQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__HUHeadphoneLevelController__publishAudioDataIDSMessage___block_invoke;
    v8[3] = &unk_1E85C9F38;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

void __58__HUHeadphoneLevelController__publishAudioDataIDSMessage___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) shouldStreamingDataToGizmo])
  {
    if (([*(a1 + 32) streamingDataToGizmoType] & 0x200000) != 0)
    {
      v3 = HCLogSoundMeter();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_INFO, "Publishing audio data(HCMessageIdentifierRemoteHeadphoneLevelUpdates) to Gizmo.", v14, 2u);
      }

      v2 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:*(a1 + 40) andIdentifier:0x200000];
      if (v2 && AXIDSServicesLibraryCore())
      {
        v4 = [getAXIDSServicesClass() sharedInstance];
        v5 = [v4 publishDirectIDSMessage:v2];
      }
    }

    else
    {
      v2 = 0;
    }

    if (([*(a1 + 32) streamingDataToGizmoType] & 0x400000) != 0 && (v6 = objc_msgSend(*(a1 + 32), "_audioLevelFromAudioDict:", *(a1 + 40)), objc_msgSend(*(a1 + 32), "streamingToGizmoAudioLevel") != v6))
    {
      v8 = HCLogSoundMeter();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_INFO, "Publishing audio data(HCMessageIdentifierRemoteHeadphoneLevelChangesUpdates) to Gizmo.", v14, 2u);
      }

      [*(a1 + 32) setStreamingToGizmoAudioLevel:v6];
      v15 = @"HUGizmoAudioLevelIdentifier";
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "streamingToGizmoAudioLevel")}];
      v16[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

      v7 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v10 andIdentifier:0x400000];

      if (v7 && AXIDSServicesLibraryCore())
      {
        v11 = [getAXIDSServicesClass() sharedInstance];
        v12 = [v11 publishDirectIDSMessage:v7];
      }
    }

    else
    {
      v7 = v2;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_audioLevelFromAudioDict:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"HUEDEnabledIdentifier"];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKeyedSubscript:@"HUEDSlowLeqIdentifier"];

  [v6 floatValue];
  v8 = v7;

  if (!v5)
  {
    return 1;
  }

  if (v8 >= 0.0 && v8 < 80.0)
  {
    return 2;
  }

  if (v8 >= 80.0)
  {
    return 3;
  }

  return 0;
}

- (void)_publishRequestAudioDataIDSMessage:(id)a3
{
  v4 = a3;
  v5 = +[HUHearingAidSettings sharedInstance];
  v6 = [v5 anyGizmoLiveHeadphoneLevelEnabled];

  if (v6)
  {
    v7 = [(HUHeadphoneLevelController *)self idsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HUHeadphoneLevelController__publishRequestAudioDataIDSMessage___block_invoke;
    block[3] = &unk_1E85C9F60;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __65__HUHeadphoneLevelController__publishRequestAudioDataIDSMessage___block_invoke(uint64_t a1)
{
  v2 = HCLogSoundMeter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_INFO, "Publishing request audio data to Companion.", v5, 2u);
  }

  if (AXIDSServicesLibraryCore())
  {
    v3 = [getAXIDSServicesClass() sharedInstance];
    v4 = [v3 publishDirectIDSMessage:*(a1 + 32)];
  }
}

- (void)didReceiveIncomingData:(id)a3
{
  v4 = a3;
  v5 = +[HUHearingAidSettings sharedInstance];
  v6 = [v5 anyGizmoLiveHeadphoneLevelEnabled];

  if (!v6)
  {
    goto LABEL_13;
  }

  if (!AXIDSServicesLibraryCore() || !getAXIDSServiceMessageKeySymbolLoc())
  {
    v8 = MEMORY[0x1E695E0F8];
LABEL_7:
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69A4528]];
    v10 = [v9 unsignedLongLongValue];

    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69A4530]];
    v12 = [v11 objectForKeyedSubscript:@"HUGizmoIDSRequestDataKey"];

    if (v12)
    {
      v13 = [(HUHeadphoneLevelController *)self idsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__HUHeadphoneLevelController_didReceiveIncomingData___block_invoke;
      block[3] = &unk_1E85C9F88;
      v21 = v11;
      v22 = self;
      v23 = v10;
      dispatch_async(v13, block);

      v14 = v21;
    }

    else
    {
      if (!v11)
      {
LABEL_12:

LABEL_13:
        return;
      }

      v15 = [(HUHeadphoneLevelController *)self dataQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __53__HUHeadphoneLevelController_didReceiveIncomingData___block_invoke_14;
      v17[3] = &unk_1E85C9F88;
      v19 = v10;
      v17[4] = self;
      v18 = v11;
      dispatch_async(v15, v17);

      v14 = v18;
    }

    goto LABEL_12;
  }

  AXIDSServiceMessageKeySymbolLoc = getAXIDSServiceMessageKeySymbolLoc();
  if (AXIDSServiceMessageKeySymbolLoc)
  {
    v8 = [v4 objectForKeyedSubscript:*AXIDSServiceMessageKeySymbolLoc];
    goto LABEL_7;
  }

  ADAFMetadataKeyHAEDataForGauge_cold_1 = getADAFMetadataKeyHAEDataForGauge_cold_1();
  __53__HUHeadphoneLevelController_didReceiveIncomingData___block_invoke(ADAFMetadataKeyHAEDataForGauge_cold_1);
}

void __53__HUHeadphoneLevelController_didReceiveIncomingData___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"HUGizmoIDSRequestDataKey"];
  v3 = [v2 BOOLValue];

  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 48) | [*(a1 + 40) streamingDataToGizmoType];
  }

  else
  {
    v6 = *(a1 + 48);
    v5 = [*(a1 + 40) streamingDataToGizmoType] & ~v6;
  }

  [v4 setStreamingDataToGizmoType:v5];
  if (*(a1 + 48) == 0x400000)
  {
    [*(a1 + 40) setStreamingToGizmoAudioLevel:1];
  }

  if (([*(a1 + 40) streamingDataToGizmoType] & 0x200000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = ([*(a1 + 40) streamingDataToGizmoType] >> 22) & 1;
  }

  [*(a1 + 40) setShouldStreamingDataToGizmo:v7];
  [*(a1 + 40) _startReceivingADAMAudioSample:{objc_msgSend(*(a1 + 40), "shouldStreamingDataToGizmo")}];
  v8 = HCLogSoundMeter();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 40) shouldStreamingDataToGizmo];
    v10 = [*(a1 + 40) streamingDataToGizmoType];
    v12[0] = 67109376;
    v12[1] = v9;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_INFO, "Receiving request audio data from Gizmo. shouldStreamingDataToGizmo: %i, streamingDataToGizmoType: %llu", v12, 0x12u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __53__HUHeadphoneLevelController_didReceiveIncomingData___block_invoke_14(uint64_t a1)
{
  v2 = HCLogSoundMeter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_INFO, "Receiving audio data from Companion.", v10, 2u);
  }

  v3 = *(a1 + 48);
  if (v3 == 0x400000)
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:@"HUGizmoAudioLevelIdentifier"];
    [*(a1 + 32) setStreamingToGizmoAudioLevel:{objc_msgSend(v9, "unsignedIntegerValue")}];

    [*(a1 + 32) pushValuesToRemoteChangeListeners];
  }

  else if (v3 == 0x200000)
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:@"HUEDSlowLeqIdentifier"];
    [v4 floatValue];
    [*(a1 + 32) setSlowLeq:?];

    v5 = [*(a1 + 40) objectForKeyedSubscript:@"HUEDFastLeqIdentifier"];
    [v5 floatValue];
    [*(a1 + 32) setFastLeq:?];

    v6 = [*(a1 + 40) objectForKeyedSubscript:@"HUEDEnabledIdentifier"];
    [*(a1 + 32) setMeasurementEnabled:{objc_msgSend(v6, "BOOLValue")}];

    v7 = [*(a1 + 40) objectForKeyedSubscript:@"HUEDThresholdCrossedIdentifier"];
    [v7 floatValue];
    [*(a1 + 32) setThresholdLevel:v8];

    [*(a1 + 32) pushValuesToRemoteListeners];
  }
}

- (void)connectedDevicesDidChange:(id)a3
{
  if (![a3 count] && -[HUHeadphoneLevelController shouldStreamingDataToGizmo](self, "shouldStreamingDataToGizmo"))
  {
    v4 = HCLogSoundMeter();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_INFO, "Gizmo is not connected anymore. Stop streaming to Gizmo.", v5, 2u);
    }

    [(HUHeadphoneLevelController *)self setShouldStreamingDataToGizmo:0];
    [(HUHeadphoneLevelController *)self _startReceivingADAMAudioSample:[(HUHeadphoneLevelController *)self shouldStreamingDataToGizmo]];
  }
}

- (void)serverConnectionWasInterrupted
{
  v3 = HCLogSoundMeter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_INFO, "Lost connection to AXUIServer", buf, 2u);
  }

  [(HUHeadphoneLevelController *)self setIsConnectedToIDS:0];
  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __60__HUHeadphoneLevelController_serverConnectionWasInterrupted__block_invoke(uint64_t a1)
{
  v2 = HCLogSoundMeter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_INFO, "Restarting AXUIServer + IDS connection", v4, 2u);
  }

  return [*(a1 + 32) _startIDSConnection];
}

- (void)_registerMediaNotification
{
  v3 = HCLogSoundMeter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_INFO, "Start observing media playback", v7, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69AEAB0];
  v6 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [v4 addObserver:self selector:sel__mediaPlaybackDidChange_ name:v5 object:v6];
}

- (void)_unregisterMediaNotification
{
  v3 = HCLogSoundMeter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_INFO, "Stop observing media playback", v7, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69AEAB0];
  v6 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [v4 removeObserver:self name:v5 object:v6];
}

- (void)_mediaPlaybackDidChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEAB8]];
  v6 = [v5 BOOLValue];

  v7 = HCLogSoundMeter();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109376;
    v9[1] = v6;
    v10 = 1024;
    v11 = [(HUHeadphoneLevelController *)self isConnectedToIDS];
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_INFO, "Receive play back notification. isPlaying %i, isCompanionConnectedToIDS %i", v9, 0xEu);
  }

  if (v6 && ![(HUHeadphoneLevelController *)self isConnectedToIDS])
  {
    [(HUHeadphoneLevelController *)self _startIDSConnection];
    [(HUHeadphoneLevelController *)self _unregisterMediaNotification];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_automationStartPlayingSampleData:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogSoundMeter();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_INFO, "Received automation request for sample headphone level data", buf, 2u);
  }

  if ([v4 count])
  {
    v6 = [(HUHeadphoneLevelController *)self automationSampleData];
    v7 = [v6 count];

    if (v7)
    {
      v8 = HCLogSoundMeter();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v18 = 0x3FB999999999999ALL;
        _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_INFO, "Waiting %fs for current automation sample to finish", buf, 0xCu);
      }

      [(HUHeadphoneLevelController *)self setAutomationSampleData:0];
      v9 = 0.1;
    }

    else
    {
      v10 = [v4 mutableCopy];
      [(HUHeadphoneLevelController *)self setAutomationSampleData:v10];

      v9 = 0.0;
    }

    v11 = dispatch_time(0, (v9 * 1000000000.0));
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__HUHeadphoneLevelController__automationStartPlayingSampleData___block_invoke;
    block[3] = &unk_1E85C9F88;
    v16 = v9;
    block[4] = self;
    v15 = v4;
    dispatch_after(v11, dataQueue, block);
  }

  else
  {
    [(HUHeadphoneLevelController *)self setAutomationSampleData:0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __64__HUHeadphoneLevelController__automationStartPlayingSampleData___block_invoke(uint64_t a1)
{
  v2 = HCLogSoundMeter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_INFO, "Starting new automation sample", v5, 2u);
  }

  if (*(a1 + 48) != 0.0)
  {
    v3 = [*(a1 + 40) mutableCopy];
    [*(a1 + 32) setAutomationSampleData:v3];
  }

  return [*(a1 + 32) _automationPlaySampleData];
}

- (void)_automationPlaySampleData
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(HUHeadphoneLevelController *)self automationSampleData];
  v4 = [v3 count];

  if (v4 && [MEMORY[0x1E69A4560] isInternalInstall] && _AXSAutomationEnabled())
  {
    v5 = [(HUHeadphoneLevelController *)self automationSampleData];
    v6 = [v5 lastObject];
    [v6 floatValue];
    v8 = v7;

    v9 = [(HUHeadphoneLevelController *)self automationSampleData];
    [v9 removeLastObject];

    v10 = fmod(v4, 10.0);
    v11 = objc_alloc(MEMORY[0x1E696AB80]);
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [v11 initWithStartDate:v12 duration:0.100000001];

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v14 = getADAMAudioDataAnalysisSampleClass_softClass;
    v31 = getADAMAudioDataAnalysisSampleClass_softClass;
    if (!getADAMAudioDataAnalysisSampleClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v35 = __getADAMAudioDataAnalysisSampleClass_block_invoke;
      v36 = &unk_1E85C9FB0;
      v37 = &v28;
      __getADAMAudioDataAnalysisSampleClass_block_invoke(&buf);
      v14 = v29[3];
    }

    v15 = v14;
    _Block_object_dispose(&v28, 8);
    v16 = [v14 alloc];
    LODWORD(v17) = v8;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    v19 = getADAFMetadataKeyHAEDataForGauge();
    v32 = v19;
    v20 = [MEMORY[0x1E696AD98] numberWithBool:v10 != 0.0];
    v33 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = [v16 initAudioSampleWithType:1751213428 data:v18 dateInterval:v13 metadata:v21];

    v23 = HCLogSoundMeter();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_INFO, "Processing automation request for sample %@", &buf, 0xCu);
    }

    [(HUHeadphoneLevelController *)self receiveAudioSample:v22];
    v24 = dispatch_time(0, 100000001);
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__HUHeadphoneLevelController__automationPlaySampleData__block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_after(v24, dataQueue, block);
  }

  else
  {
    v13 = HCLogSoundMeter();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_INFO, "No automation sample data left", &buf, 2u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end