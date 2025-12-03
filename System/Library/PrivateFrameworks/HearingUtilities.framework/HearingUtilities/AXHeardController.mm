@interface AXHeardController
+ (id)entitlementsForMessageID:(unint64_t)d;
+ (id)sharedServer;
- (AXHeardController)init;
- (BOOL)connection:(id)connection hasEntitlementForMessage:(unint64_t)message;
- (BOOL)sendMessage:(id)message withError:(id *)error;
- (NSArray)clients;
- (NSDictionary)handlers;
- (id)boostPriority:(id)priority;
- (unint64_t)countOfClientsListeningForIdentifier:(unint64_t)identifier;
- (void)_setShutdownTimer;
- (void)_shouldBeRunning:(id)running;
- (void)_shutdownIfPossible;
- (void)addHandler:(id)handler andBlock:(id)block forMessageIdentifier:(unint64_t)identifier;
- (void)dealloc;
- (void)handleMessage:(id)message forIdentifier:(unint64_t)identifier;
- (void)handleNewConnection:(id)connection;
- (void)registerFakeClient:(id)client;
- (void)sendClientsMessageWithPayload:(id)payload excluding:(id)excluding;
- (void)sendUpdateMessage:(id)message forIdentifier:(unint64_t)identifier;
- (void)setClients:(id)clients;
- (void)setHandlers:(id)handlers;
- (void)shutdownIfPossible;
- (void)startServer;
- (void)updateAnalytics;
- (void)updateHearingControlCenterModule;
- (void)updateLiveListenWithAccommodationTypes;
- (void)updatePersonalAudioSettingsOnAccessories;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation AXHeardController

void __34__AXHeardController_continueSetup__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[40] & 1) == 0)
  {
    objc_initWeak(&location, v1);
    v3 = +[HUUtilities sharedUtilities];
    [v3 updateHearingFeatureUsage];

    [*(a1 + 32) updateHearingControlCenterModule];
    v4 = +[HUHearingAidSettings sharedInstance];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __34__AXHeardController_continueSetup__block_invoke_2;
    v55[3] = &unk_1E85C9F10;
    objc_copyWeak(&v56, &location);
    [v4 registerUpdateBlock:v55 forRetrieveSelector:sel_usedHearingFeatures withListener:*(a1 + 32)];

    v5 = +[HUHearingAidSettings sharedInstance];
    [v5 registerUpdateBlock:&__block_literal_global_110 forRetrieveSelector:sel_pairedHearingAids withListener:*(a1 + 32)];

    *(*(a1 + 32) + 40) = 1;
    v6 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Setting up AA/PA", buf, 2u);
    }

    v7 = [getPASettingsClass_0() sharedInstance];
    v8 = [v7 personalMediaConfiguration];

    v9 = [getPADatabaseManagerClass() sharedManager];
    v10 = +[AXHeardController sharedServer];
    [v10 updatePersonalAudioSettingsOnAccessories];

    v11 = [getPASettingsClass_0() sharedInstance];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __34__AXHeardController_continueSetup__block_invoke_115;
    v52[3] = &unk_1E85C9F10;
    objc_copyWeak(&v53, &location);
    v12 = +[AXHeardController sharedServer];
    [v11 registerUpdateBlock:v52 forRetrieveSelector:sel_personalMediaConfigurationByRouteUID withListener:v12];

    v13 = [getPAAccessoryManagerClass() sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__AXHeardController_continueSetup__block_invoke_2_119;
    aBlock[3] = &unk_1E85C9F10;
    objc_copyWeak(&v51, &location);
    v14 = _Block_copy(aBlock);
    v15 = [getPASettingsClass_0() sharedInstance];
    [v15 setShouldUpdateAccessory:1];

    v16 = [getPASettingsClass_0() sharedInstance];
    v17 = +[AXHeardController sharedServer];
    [v16 registerUpdateBlock:v14 forRetrieveSelector:sel_transparencyBalance withListener:v17];

    v18 = [getPASettingsClass_0() sharedInstance];
    v19 = +[AXHeardController sharedServer];
    [v18 registerUpdateBlock:v14 forRetrieveSelector:sel_transparencyAmplification withListener:v19];

    v20 = [getPASettingsClass_0() sharedInstance];
    v21 = +[AXHeardController sharedServer];
    [v20 registerUpdateBlock:v14 forRetrieveSelector:sel_transparencyTone withListener:v21];

    v22 = [getPASettingsClass_0() sharedInstance];
    v23 = +[AXHeardController sharedServer];
    [v22 registerUpdateBlock:v14 forRetrieveSelector:sel_transparencyBeamforming withListener:v23];

    v24 = [getPASettingsClass_0() sharedInstance];
    v25 = +[AXHeardController sharedServer];
    [v24 registerUpdateBlock:v14 forRetrieveSelector:sel_transparencyNoiseSupressor withListener:v25];

    v26 = [getPASettingsClass_0() sharedInstance];
    v27 = +[AXHeardController sharedServer];
    [v26 registerUpdateBlock:v14 forRetrieveSelector:sel_transparencyAutobeamformer withListener:v27];

    v28 = [getPASettingsClass_0() sharedInstance];
    v29 = +[AXHeardController sharedServer];
    [v28 registerUpdateBlock:v14 forRetrieveSelector:sel_transparencyOwnVoice withListener:v29];

    v30 = [getPASettingsClass_0() sharedInstance];
    v31 = +[AXHeardController sharedServer];
    [v30 registerUpdateBlock:v14 forRetrieveSelector:sel_personalAudioAccommodationTypes withListener:v31];

    v32 = [getPASettingsClass_0() sharedInstance];
    v33 = +[AXHeardController sharedServer];
    [v32 registerUpdateBlock:v14 forRetrieveSelector:sel_personalMediaEnabled withListener:v33];

    v34 = [getPASettingsClass_0() sharedInstance];
    v35 = +[AXHeardController sharedServer];
    [v34 registerUpdateBlock:v14 forRetrieveSelector:sel_transparencyCustomized withListener:v35];

    v36 = +[HUNoiseSettings sharedInstance];
    if ([MEMORY[0x1E69A4560] deviceIsWatch] && +[HUNoiseController deviceSupportsEnvironmentalDosimetry](HUNoiseController, "deviceSupportsEnvironmentalDosimetry"))
    {
      v37 = +[HUNoiseController sharedController];
    }

    v38 = +[HUAccessoryHearingSyncManager sharedInstance];
    v39 = +[HUComfortSoundsController sharedController];
    v40 = [MEMORY[0x1E695DF00] date];
    [v40 timeIntervalSince1970];
    v42 = v41 - [MEMORY[0x1E69A4560] systemBootTime];

    if (v42 < 90.0)
    {
      v43 = +[HUHearingAidSettings sharedInstance];
      v44 = [v43 isPairedWithFakeHearingAids];

      if (v44)
      {
        v45 = HCLogHearingAids();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DA5E2000, v45, OS_LOG_TYPE_DEFAULT, "AXHeardController: continueSetup, Recently rebooted. Disabling fake hearing aids", buf, 2u);
        }

        v46 = +[HUHearingAidSettings sharedInstance];
        [v46 setPairedHearingAids:0];
      }
    }

    v47 = +[HUAccessoryManager sharedInstance];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __34__AXHeardController_continueSetup__block_invoke_147;
    v48[3] = &unk_1E85CCB10;
    objc_copyWeak(&v49, &location);
    [v47 registerBluetoothStateBlock:v48 withListener:*(a1 + 32)];

    [*(a1 + 32) shutdownIfPossible];
    objc_destroyWeak(&v49);

    objc_destroyWeak(&v51);
    objc_destroyWeak(&v53);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }
}

+ (id)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    +[AXHeardController sharedServer];
  }

  v3 = sharedServer_Server;

  return v3;
}

- (void)updatePersonalAudioSettingsOnAccessories
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_transparencyHysteresisTimer)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6988780]);
    transparencyHysteresisTimer = self->_transparencyHysteresisTimer;
    self->_transparencyHysteresisTimer = v3;
  }

  sharedInstance = [getPASettingsClass_0() sharedInstance];
  if ([sharedInstance shouldUpdateAccessory])
  {
    sharedInstance2 = [getPASettingsClass_0() sharedInstance];
    personalMediaConfiguration = [sharedInstance2 personalMediaConfiguration];

    if (personalMediaConfiguration)
    {
      v8 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sharedInstance3 = [getPASettingsClass_0() sharedInstance];
        shouldUpdateAccessory = [sharedInstance3 shouldUpdateAccessory];
        sharedInstance4 = [getPASettingsClass_0() sharedInstance];
        personalMediaConfiguration2 = [sharedInstance4 personalMediaConfiguration];
        v19 = 67109376;
        v20 = shouldUpdateAccessory;
        v21 = 1024;
        v22 = personalMediaConfiguration2 != 0;
        _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Sending accessory update %d, %d", &v19, 0xEu);
      }

      if (([(AXDispatchTimer *)self->_transparencyHysteresisTimer isPending]& 1) == 0)
      {
        [(AXDispatchTimer *)self->_transparencyHysteresisTimer afterDelay:&__block_literal_global_199 processBlock:0.1];
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sharedInstance5 = [getPASettingsClass_0() sharedInstance];
    shouldUpdateAccessory2 = [sharedInstance5 shouldUpdateAccessory];
    sharedInstance6 = [getPASettingsClass_0() sharedInstance];
    personalMediaConfiguration3 = [sharedInstance6 personalMediaConfiguration];
    v19 = 67109376;
    v20 = shouldUpdateAccessory2;
    v21 = 1024;
    v22 = personalMediaConfiguration3 != 0;
    _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Skipping accessory update %d, %d", &v19, 0xEu);
  }

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateHearingControlCenterModule
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = +[HUHearingAidSettings sharedInstance];
  usedHearingFeatures = [v2 usedHearingFeatures];

  if (!compoundAttributeContainsAttribute(usedHearingFeatures, 2) && !compoundAttributeContainsAttribute(usedHearingFeatures, 8) && !compoundAttributeContainsAttribute(usedHearingFeatures, 1024) && !compoundAttributeContainsAttribute(usedHearingFeatures, 2048))
  {
    v6 = HCLogHearingAids();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 134219008;
    *&buf[4] = usedHearingFeatures;
    *&buf[12] = 1024;
    *&buf[14] = compoundAttributeContainsAttribute(usedHearingFeatures, 2);
    *&buf[18] = 1024;
    *&buf[20] = compoundAttributeContainsAttribute(usedHearingFeatures, 8);
    LOWORD(v22) = 1024;
    *(&v22 + 2) = compoundAttributeContainsAttribute(usedHearingFeatures, 1024);
    HIWORD(v22) = 1024;
    LODWORD(v23) = compoundAttributeContainsAttribute(usedHearingFeatures, 2048);
    v7 = "Not adding hearing module %lu - %d, %d, %d, %d";
    v8 = v6;
    v9 = 36;
    goto LABEL_8;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"HUHearingControlCenterAddedKey"];

  if (v5)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Skipping adding hearing to control center because we already added it.";
      v8 = v6;
      v9 = 2;
LABEL_8:
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = getCCSIconElementRequestClass_softClass;
    v20 = getCCSIconElementRequestClass_softClass;
    if (!getCCSIconElementRequestClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCCSIconElementRequestClass_block_invoke;
      v22 = &unk_1E85C9FB0;
      v23 = &v17;
      __getCCSIconElementRequestClass_block_invoke(buf);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    v12 = [[v10 alloc] initWithIntent:2 moduleIdentifier:@"com.apple.accessibility.controlcenter.hearingdevices" containerBundleIdentifier:@"com.apple.accessibility.controlcenter.hearingdevices" moduleSize:0];
    sharedInstance = [getCCSControlCenterServiceClass() sharedInstance];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__AXHeardController_updateHearingControlCenterModule__block_invoke;
    v15[3] = &unk_1E85CCAE8;
    v16 = v12;
    v6 = v12;
    [sharedInstance requestIconElementState:v6 completionHandler:v15];
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

void __34__AXHeardController_continueSetup__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateHearingControlCenterModule];
}

- (void)shutdownIfPossible
{
  bluetoothReady = self->_bluetoothReady;
  v4 = HCLogHearing();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (bluetoothReady)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "AXHeardController: BT ready, processing shutdown check", buf, 2u);
    }

    [(AXDispatchTimer *)self->_shutdownTimer cancel];
    [(AXHeardController *)self _shutdownIfPossible];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "AXHeardController: BT not yet ready, delaying shutdown check", buf, 2u);
    }

    shutdownTimer = self->_shutdownTimer;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__AXHeardController_shutdownIfPossible__block_invoke;
    v7[3] = &unk_1E85C9F60;
    v7[4] = self;
    [(AXDispatchTimer *)shutdownTimer afterDelay:v7 processBlock:1.0];
  }
}

- (void)_shutdownIfPossible
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__AXHeardController__shutdownIfPossible__block_invoke;
  v2[3] = &unk_1E85CA050;
  v2[4] = self;
  [(AXHeardController *)self _shouldBeRunning:v2];
}

void __40__AXHeardController__shutdownIfPossible__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "AXHeardController: heard should be running. Continuing", buf, 2u);
    }

    *(*(a1 + 32) + 24) = 0;
LABEL_12:
    [*(a1 + 32) _setShutdownTimer];
    return;
  }

  if (*(*(a1 + 32) + 24) != 1)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "AXHeardController: heard shouldn't be running. Starting timer", buf, 2u);
    }

    *(*(a1 + 32) + 24) = 1;
    goto LABEL_12;
  }

  v4 = HCLogHearingNearbyIDS();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __40__AXHeardController__shutdownIfPossible__block_invoke_cold_1(v4);
  }

  v5 = +[HUNearbySettings sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AXHeardController__shutdownIfPossible__block_invoke_152;
  v7[3] = &unk_1E85C9F60;
  v7[4] = *(a1 + 32);
  [v5 saveCollectedDataWithCompletion:v7];
}

- (void)_setShutdownTimer
{
  objc_initWeak(&location, self);
  shutdownTimer = self->_shutdownTimer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__AXHeardController__setShutdownTimer__block_invoke;
  v4[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, &location);
  [(AXDispatchTimer *)shutdownTimer afterDelay:v4 processBlock:180.0];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (NSDictionary)handlers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_handlers copy];
  objc_sync_exit(selfCopy);

  return v3;
}

void __38__AXHeardController__setShutdownTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shutdownIfPossible];
}

- (AXHeardController)init
{
  v14.receiver = self;
  v14.super_class = AXHeardController;
  v2 = [(AXHeardController *)&v14 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DEC8] array];
    [(AXHeardController *)v2 setClients:array];

    dictionary = [MEMORY[0x1E695DF20] dictionary];
    [(AXHeardController *)v2 setHandlers:dictionary];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, UserLevelHearingSetupAvailable, @"com.apple.accessibility.hearing.setup.ready", 0, 0);
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("personal_audio_access_queue", v6);
    personalAudioQueue = v2->_personalAudioQueue;
    v2->_personalAudioQueue = v7;

    v9 = objc_alloc(MEMORY[0x1E6988780]);
    v10 = [v9 initWithTargetSerialQueue:MEMORY[0x1E69E96A0]];
    shutdownTimer = v2->_shutdownTimer;
    v2->_shutdownTimer = v10;

    v13 = v2;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  return v2;
}

- (void)startServer
{
  v3 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  sharedController = [getRTTControllerClass() sharedController];
  [sharedController setDelegate:self];
  v5 = +[AXHAController sharedController];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __32__AXHeardController_startServer__block_invoke;
  v102[3] = &unk_1E85CCB80;
  v6 = v5;
  v103 = v6;
  [(AXHeardController *)self addHandler:v6 andBlock:v102 forMessageIdentifier:2];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __32__AXHeardController_startServer__block_invoke_2;
  v100[3] = &unk_1E85CCB80;
  v7 = v6;
  v101 = v7;
  [(AXHeardController *)self addHandler:v7 andBlock:v100 forMessageIdentifier:4];
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __32__AXHeardController_startServer__block_invoke_3;
  v98[3] = &unk_1E85CCB80;
  v8 = v7;
  v99 = v8;
  [(AXHeardController *)self addHandler:v8 andBlock:v98 forMessageIdentifier:16];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __32__AXHeardController_startServer__block_invoke_4;
  v96[3] = &unk_1E85CCB80;
  v9 = v8;
  v97 = v9;
  [(AXHeardController *)self addHandler:v9 andBlock:v96 forMessageIdentifier:8];
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __32__AXHeardController_startServer__block_invoke_5;
  v94[3] = &unk_1E85CCB80;
  v10 = v9;
  v95 = v10;
  [(AXHeardController *)self addHandler:v10 andBlock:v94 forMessageIdentifier:32];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __32__AXHeardController_startServer__block_invoke_6;
  v92[3] = &unk_1E85CCB80;
  v11 = v10;
  v93 = v11;
  [(AXHeardController *)self addHandler:v11 andBlock:v92 forMessageIdentifier:128];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __32__AXHeardController_startServer__block_invoke_7;
  v90[3] = &unk_1E85CCB80;
  v12 = v11;
  v91 = v12;
  [(AXHeardController *)self addHandler:v12 andBlock:v90 forMessageIdentifier:256];
  if (_os_feature_enabled_impl())
  {
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __32__AXHeardController_startServer__block_invoke_8;
    v88[3] = &unk_1E85CCB80;
    v13 = v12;
    v89 = v13;
    [(AXHeardController *)self addHandler:v13 andBlock:v88 forMessageIdentifier:0x2000000];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __32__AXHeardController_startServer__block_invoke_9;
    v86[3] = &unk_1E85CCB80;
    v87 = v13;
    [(AXHeardController *)self addHandler:v87 andBlock:v86 forMessageIdentifier:0x8000000];
  }

  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __32__AXHeardController_startServer__block_invoke_10;
  v84[3] = &unk_1E85CCB80;
  v14 = v12;
  v85 = v14;
  [(AXHeardController *)self addHandler:v14 andBlock:v84 forMessageIdentifier:2048];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __32__AXHeardController_startServer__block_invoke_11;
  v82[3] = &unk_1E85CCB80;
  v15 = v14;
  v83 = v15;
  [(AXHeardController *)self addHandler:v15 andBlock:v82 forMessageIdentifier:0x8000];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __32__AXHeardController_startServer__block_invoke_12;
  v80[3] = &unk_1E85CCB80;
  v16 = v15;
  v81 = v16;
  [(AXHeardController *)self addHandler:v16 andBlock:v80 forMessageIdentifier:0x2000];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __32__AXHeardController_startServer__block_invoke_13;
  v78[3] = &unk_1E85CCB80;
  v17 = v16;
  v79 = v17;
  [(AXHeardController *)self addHandler:v17 andBlock:v78 forMessageIdentifier:0x8000000000000000];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __32__AXHeardController_startServer__block_invoke_14;
  v76[3] = &unk_1E85CCBA8;
  objc_copyWeak(&v77, &location);
  [(AXHeardController *)self addHandler:self andBlock:v76 forMessageIdentifier:0x10000];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __32__AXHeardController_startServer__block_invoke_15;
  v74[3] = &unk_1E85CCB80;
  v18 = v17;
  v75 = v18;
  [(AXHeardController *)self addHandler:self andBlock:v74 forMessageIdentifier:0x20000];
  [(AXHeardController *)self addHandler:v18 andBlock:&__block_literal_global_204 forMessageIdentifier:0x40000];
  v19 = +[HUHeadphoneLevelController sharedController];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __32__AXHeardController_startServer__block_invoke_17;
  v72[3] = &unk_1E85CCB80;
  v20 = v19;
  v73 = v20;
  [(AXHeardController *)self addHandler:v20 andBlock:v72 forMessageIdentifier:0x100000];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __32__AXHeardController_startServer__block_invoke_18;
  v70[3] = &unk_1E85CCB80;
  v21 = v20;
  v71 = v21;
  [(AXHeardController *)self addHandler:v21 andBlock:v70 forMessageIdentifier:0x200000];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __32__AXHeardController_startServer__block_invoke_19;
  v68[3] = &unk_1E85CCB80;
  v22 = v21;
  v69 = v22;
  [(AXHeardController *)self addHandler:v22 andBlock:v68 forMessageIdentifier:0x400000];
  v23 = +[HUComfortSoundsController sharedController];
  [(AXHeardController *)self addHandler:v23 andBlock:&__block_literal_global_206 forMessageIdentifier:0x1000000];

  v24 = +[HUComfortSoundsController sharedController];
  [(AXHeardController *)self addHandler:v24 andBlock:&__block_literal_global_208 forMessageIdentifier:0x10000000];

  v25 = +[HUComfortSoundsController sharedController];
  [(AXHeardController *)self addHandler:v25 andBlock:&__block_literal_global_210 forMessageIdentifier:0x4000000000000000];

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __32__AXHeardController_startServer__block_invoke_23;
  v66[3] = &unk_1E85CCB80;
  v26 = sharedController;
  v67 = v26;
  [(AXHeardController *)self addHandler:v26 andBlock:v66 forMessageIdentifier:0x1000000000];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __32__AXHeardController_startServer__block_invoke_24;
  v64[3] = &unk_1E85CCB80;
  v27 = v26;
  v65 = v27;
  [(AXHeardController *)self addHandler:v27 andBlock:v64 forMessageIdentifier:0x800000000];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __32__AXHeardController_startServer__block_invoke_25;
  v62[3] = &unk_1E85CCB80;
  v28 = v27;
  v63 = v28;
  [(AXHeardController *)self addHandler:v28 andBlock:v62 forMessageIdentifier:0x2000000000];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __32__AXHeardController_startServer__block_invoke_26;
  v60[3] = &unk_1E85CCB80;
  v29 = v28;
  v61 = v29;
  [(AXHeardController *)self addHandler:v29 andBlock:v60 forMessageIdentifier:0x4000000000];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __32__AXHeardController_startServer__block_invoke_27;
  v58[3] = &unk_1E85CCB80;
  v30 = v29;
  v59 = v30;
  [(AXHeardController *)self addHandler:v30 andBlock:v58 forMessageIdentifier:0x8000000000];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __32__AXHeardController_startServer__block_invoke_28;
  v56[3] = &unk_1E85CCB80;
  v31 = v30;
  v57 = v31;
  [(AXHeardController *)self addHandler:v31 andBlock:v56 forMessageIdentifier:0x10000000000];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __32__AXHeardController_startServer__block_invoke_29;
  v54[3] = &unk_1E85CCB80;
  v32 = v31;
  v55 = v32;
  [(AXHeardController *)self addHandler:v32 andBlock:v54 forMessageIdentifier:0x20000000000];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __32__AXHeardController_startServer__block_invoke_30;
  v52[3] = &unk_1E85CCB80;
  v33 = v32;
  v53 = v33;
  [(AXHeardController *)self addHandler:v33 andBlock:v52 forMessageIdentifier:0x80000000000];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __32__AXHeardController_startServer__block_invoke_31;
  v50[3] = &unk_1E85CCB80;
  v34 = v33;
  v51 = v34;
  [(AXHeardController *)self addHandler:v34 andBlock:v50 forMessageIdentifier:0x100000000000];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __32__AXHeardController_startServer__block_invoke_32;
  v48[3] = &unk_1E85CCB80;
  v35 = v34;
  v49 = v35;
  [(AXHeardController *)self addHandler:v35 andBlock:v48 forMessageIdentifier:0x200000000000];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __32__AXHeardController_startServer__block_invoke_33;
  v46[3] = &unk_1E85CCB80;
  v36 = v35;
  v47 = v36;
  [(AXHeardController *)self addHandler:v36 andBlock:v46 forMessageIdentifier:0x400000000000];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __32__AXHeardController_startServer__block_invoke_34;
  v44[3] = &unk_1E85CCB80;
  v37 = v36;
  v45 = v37;
  [(AXHeardController *)self addHandler:v37 andBlock:v44 forMessageIdentifier:0x800000000000];

  objc_destroyWeak(&v77);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v3);
  v38 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.SoundDetectionNotifications"];
  [v38 setDelegate:self];
  [v38 setWantsNotificationResponsesDelivered];
  uTF8String = [*MEMORY[0x1E69A4540] UTF8String];
  v40 = MEMORY[0x1E69E96A0];
  mach_service = xpc_connection_create_mach_service(uTF8String, MEMORY[0x1E69E96A0], 1uLL);
  service = self->_service;
  self->_service = mach_service;

  xpc_connection_set_event_handler(self->_service, &__block_literal_global_217);
  xpc_connection_set_target_queue(self->_service, v40);

  xpc_connection_resume(self->_service);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.hearing.server.ready", 0, 0, 1u);
}

id __32__AXHeardController_startServer__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained boostPriority:v3];

  return v5;
}

- (NSArray)clients
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_clients copy];
  objc_sync_exit(selfCopy);

  return v3;
}

uint64_t __33__AXHeardController_sharedServer__block_invoke()
{
  v0 = objc_alloc_init(AXHeardController);
  v1 = sharedServer_Server;
  sharedServer_Server = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)entitlementsForMessageID:(unint64_t)d
{
  result = 0;
  if (d <= 0x1FFFFFFFFFLL)
  {
    if (d < 0x400000)
    {
      if (d < 0x40000)
      {
        if (d == 128)
        {
          return &unk_1F5624310;
        }

        if (d == 0x10000)
        {
          return &unk_1F56243B8;
        }
      }

      else
      {
        switch(d)
        {
          case 0x40000uLL:
            return &unk_1F5624358;
          case 0x100000uLL:
            return &unk_1F5624370;
          case 0x200000uLL:
            return &unk_1F5624388;
        }
      }

      return &unk_1F56243D0;
    }

    if (d <= 0x3FFFFFF)
    {
      if (d == 0x400000)
      {
        return &unk_1F56243A0;
      }

      if (d == 0x2000000)
      {
        return &unk_1F5624328;
      }

      return &unk_1F56243D0;
    }

    switch(d)
    {
      case 0x4000000uLL:
        return &unk_1F5624340;
      case 0x800000000uLL:
        return &unk_1F56242E0;
      case 0x1000000000uLL:
        return result;
    }

    return &unk_1F56243D0;
  }

  if (d > 0x3FFFFFFFFFFLL)
  {
    if (d > 0x1FFFFFFFFFFFLL)
    {
      if (d == 0x200000000000 || d == 0x800000000000 || d == 0x400000000000)
      {
        return &unk_1F56242C8;
      }

      return &unk_1F56243D0;
    }

    if (d != 0x40000000000)
    {
      if (d == 0x80000000000)
      {
        return &unk_1F56242E0;
      }

      v4 = 0x100000000000;
      goto LABEL_17;
    }

    return &unk_1F56242F8;
  }

  if (d <= 0x7FFFFFFFFFLL)
  {
    if (d == 0x2000000000)
    {
      return result;
    }

    if (d == 0x4000000000)
    {
      return &unk_1F56242F8;
    }

    return &unk_1F56243D0;
  }

  if (d != 0x8000000000)
  {
    if (d == 0x10000000000)
    {
      return &unk_1F56242E0;
    }

    v4 = 0x20000000000;
LABEL_17:
    if (d != v4)
    {
      return &unk_1F56243D0;
    }

    return &unk_1F56242E0;
  }

  return result;
}

void __53__AXHeardController_updateHearingControlCenterModule__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Hearing control status: %@", &v9, 0xCu);
  }

  if (a2 == 2)
  {
    v6 = [getCCSControlCenterServiceClass() sharedInstance];
    [v6 handleIconElementRequest:*(a1 + 32) completionHandler:&__block_literal_global_104];
  }

  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v7 setBool:1 forKey:@"HUHearingControlCenterAddedKey"];

  v8 = *MEMORY[0x1E69E9840];
}

void __53__AXHeardController_updateHearingControlCenterModule__block_invoke_101(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 dictionaryRepresentation];
    v9 = 138412802;
    v10 = v4;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Added hearing to control center: %@ success: %d %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __34__AXHeardController_continueSetup__block_invoke_3()
{
  v0 = +[HUHearingAidSettings sharedInstance];
  v1 = [v0 pairedHearingAids];
  v2 = v1 != 0;

  v3 = [getCCSControlCenterServiceClass() sharedInstance];
  [v3 setVisibility:v2 forModuleWithIdentifier:@"com.apple.accessibility.controlcenter.hearingaids" completionHandler:&__block_literal_global_112];
}

void __34__AXHeardController_continueSetup__block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Aids hearing aids module control center gallery: %@ success: %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __34__AXHeardController_continueSetup__block_invoke_115(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [getPASettingsClass_0() sharedInstance];
  v3 = [v2 personalMediaConfiguration];

  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "AA changed %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__AXHeardController_continueSetup__block_invoke_116;
    block[3] = &unk_1E85C9F60;
    v14 = v3;
    dispatch_async(v7, block);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 updateAnalytics];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 updatePersonalAudioSettingsOnAccessories];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.hearing.ui.availability", 0, 0, 1u);
  v11 = +[HUUtilities sharedUtilities];
  [v11 updateHearingFeatureUsage];

  v12 = *MEMORY[0x1E69E9840];
}

void __34__AXHeardController_continueSetup__block_invoke_116(uint64_t a1)
{
  v2 = [getPADatabaseManagerClass() sharedManager];
  [v2 saveConfiguration:*(a1 + 32)];
}

void __34__AXHeardController_continueSetup__block_invoke_2_119(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAnalytics];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updatePersonalAudioSettingsOnAccessories];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 updateLiveListenWithAccommodationTypes];
}

void __34__AXHeardController_continueSetup__block_invoke_147(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = HCLogHearing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "AXHeardController: BT state updated %@", &v7, 0xCu);
  }

  WeakRetained[41] = a2;
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_shouldBeRunning:(id)running
{
  runningCopy = running;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AXHeardController__shouldBeRunning___block_invoke;
  v5[3] = &unk_1E85CA670;
  v6 = runningCopy;
  v4 = runningCopy;
  hearingDeamonShouldBeRunning(v5);
}

uint64_t __38__AXHeardController__shouldBeRunning___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_15;
  }

  v3 = +[AXHAController sharedController];
  v4 = [v3 liveListenController];
  v5 = [v4 isListening];

  if (v5)
  {
    v6 = HCLogHearingXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v7 = "heard will be running for Live Listen session";
      v8 = &v18;
LABEL_13:
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v9 = +[HUHeadphoneLevelController sharedController];
  v10 = [v9 isMeasurementEnabled];

  if (v10)
  {
    v6 = HCLogHearingXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v7 = "heard will be running for Headphone levels measurements";
      v8 = &v17;
      goto LABEL_13;
    }

LABEL_14:

LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

  v11 = [getRTTSettingsClass_1() sharedInstance];
  if ([v11 TTYSoftwareEnabled])
  {

    goto LABEL_11;
  }

  v12 = [getRTTSettingsClass_1() sharedInstance];
  v13 = [v12 TTYHardwareEnabled];

  if (v13)
  {
LABEL_11:
    v6 = HCLogHearingXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v7 = "heard will be running for RTT";
      v8 = &v16;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v14 = 0;
LABEL_16:
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, v14);
  }

  return result;
}

uint64_t __40__AXHeardController__shutdownIfPossible__block_invoke_152(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__AXHeardController__shutdownIfPossible__block_invoke_2;
  v3[3] = &unk_1E85CA050;
  v3[4] = v1;
  return [v1 _shouldBeRunning:v3];
}

uint64_t __40__AXHeardController__shutdownIfPossible__block_invoke_2(uint64_t a1, int a2)
{
  v4 = HCLogHearingNearbyIDS();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __40__AXHeardController__shutdownIfPossible__block_invoke_2_cold_1(a2, v4);
  }

  if (!a2)
  {
    v6 = +[AXHAController sharedController];
    [v6 cleanUp];

    v7 = HCLogHearingXPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "AXHeardController: heard shouldn't be running. Shutting down.", v8, 2u);
    }

    exit(0);
  }

  *(*(a1 + 32) + 24) = 0;
  return [*(a1 + 32) _setShutdownTimer];
}

- (void)updateAnalytics
{
  v21[4] = *MEMORY[0x1E69E9840];
  sharedInstance = [getPASettingsClass_0() sharedInstance];
  personalMediaConfiguration = [sharedInstance personalMediaConfiguration];

  if (personalMediaConfiguration)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu_%lu", objc_msgSend(personalMediaConfiguration, "level"), objc_msgSend(personalMediaConfiguration, "shape")];
  }

  else
  {
    v4 = &stru_1F5614A78;
  }

  sharedInstance2 = [getPASettingsClass_0() sharedInstance];
  personalAudioAccommodationTypes = [sharedInstance2 personalAudioAccommodationTypes];

  v20[0] = @"enabled";
  v7 = MEMORY[0x1E696AD98];
  sharedInstance3 = [getPASettingsClass_0() sharedInstance];
  v9 = [v7 numberWithBool:{objc_msgSend(sharedInstance3, "personalMediaEnabled")}];
  v21[0] = v9;
  v20[1] = @"mediaEnabled";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{compoundAttributeContainsAttribute(personalAudioAccommodationTypes, 4)}];
  v21[1] = v10;
  v20[2] = @"phoneEnabled";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{compoundAttributeContainsAttribute(personalAudioAccommodationTypes, 2)}];
  v20[3] = @"profile";
  v21[2] = v11;
  v21[3] = v4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v13 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Updating PME analytics %@", buf, 0xCu);
  }

  v17 = v12;
  v14 = v12;
  AnalyticsSendEventLazy();
  v15 = +[HUAccessoryManager sharedInstance];
  [v15 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:&__block_literal_global_178];

  v16 = *MEMORY[0x1E69E9840];
}

void __36__AXHeardController_updateAnalytics__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v31[0] = @"enabled";
    v4 = MEMORY[0x1E696AD98];
    v5 = a4;
    v28 = [getPASettingsClass_0() sharedInstance];
    v27 = [v4 numberWithBool:{objc_msgSend(v28, "transparencyCustomizedForAddress:", v5)}];
    v32[0] = v27;
    v31[1] = @"amplification";
    v6 = MEMORY[0x1E696AD98];
    v26 = [getPASettingsClass_0() sharedInstance];
    [v26 transparencyAmplificationForAddress:v5];
    v7 = [v6 numberWithDouble:?];
    v32[1] = v7;
    v31[2] = @"balance";
    v8 = MEMORY[0x1E696AD98];
    v9 = [getPASettingsClass_0() sharedInstance];
    [v9 transparencyBalanceForAddress:v5];
    v10 = [v8 numberWithDouble:?];
    v32[2] = v10;
    v31[3] = @"beamformerEnabled";
    v11 = MEMORY[0x1E696AD98];
    v12 = [getPASettingsClass_0() sharedInstance];
    v13 = [v11 numberWithBool:{objc_msgSend(v12, "transparencyBeamformingForAddress:", v5)}];
    v32[3] = v13;
    v31[4] = @"noiseSuppressorValue";
    v14 = MEMORY[0x1E696AD98];
    v15 = [getPASettingsClass_0() sharedInstance];
    [v15 transparencyNoiseSupressorForAddress:v5];
    v16 = [v14 numberWithDouble:?];
    v32[4] = v16;
    v31[5] = @"tone";
    v17 = MEMORY[0x1E696AD98];
    v18 = [getPASettingsClass_0() sharedInstance];
    [v18 transparencyToneForAddress:v5];
    v20 = v19;

    v21 = [v17 numberWithDouble:v20];
    v32[5] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:6];

    v23 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v22;
      _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "Updating PSE analytics %@", buf, 0xCu);
    }

    v24 = v22;
    AnalyticsSendEventLazy();
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __61__AXHeardController_updatePersonalAudioSettingsOnAccessories__block_invoke()
{
  v0 = [getPAAccessoryManagerClass() sharedInstance];
  [v0 sendUpdateToAccessory];
}

- (void)updateLiveListenWithAccommodationTypes
{
  sharedInstance = [getPASettingsClass_0() sharedInstance];
  personalAudioAccommodationTypes = [sharedInstance personalAudioAccommodationTypes];

  v4 = compoundAttributeContainsAttribute(personalAudioAccommodationTypes, 4);
  v6 = +[AXHAController sharedController];
  liveListenController = [v6 liveListenController];
  [liveListenController setPersonalAudioMediaAccommodationsEnabled:v4];
}

id __32__AXHeardController_startServer__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HUNoiseController sharedController];
  v4 = [v3 registerForEnvironmentalDosimetryUpdates:v2];

  return v4;
}

id __32__AXHeardController_startServer__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HUComfortSoundsController sharedController];
  v4 = [v3 processComfortSoundsAssetRequest:v2];

  return v4;
}

id __32__AXHeardController_startServer__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HUComfortSoundsController sharedController];
  v4 = [v3 processComfortSoundsControlRequest:v2];

  return v4;
}

id __32__AXHeardController_startServer__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HUComfortSoundsController sharedController];
  v4 = [v3 processAutomationRequest:v2];

  return v4;
}

void __32__AXHeardController_startServer__block_invoke_35(uint64_t a1, void *a2)
{
  v2 = a2;
  if (MEMORY[0x1DA751E20]() == MEMORY[0x1E69E9E98])
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __32__AXHeardController_startServer__block_invoke_35_cold_1(v2, v3);
    }
  }

  else
  {
    v3 = v2;
    v4 = objc_autoreleasePoolPush();
    v5 = +[AXHeardController sharedServer];
    [v5 handleNewConnection:v3];

    objc_autoreleasePoolPop(v4);
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  AXSDSoundDetectionHandleNotificationsForResponse();
  handlerCopy[2]();
}

- (void)dealloc
{
  xpc_connection_cancel(self->_service);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXHeardController;
  [(AXHeardController *)&v4 dealloc];
}

- (BOOL)connection:(id)connection hasEntitlementForMessage:(unint64_t)message
{
  connectionCopy = connection;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12 = 0u;
  v13 = 0u;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = [AXHeardController entitlementsForMessageID:message];
    if ([v7 count])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __57__AXHeardController_connection_hasEntitlementForMessage___block_invoke;
      v10[3] = &unk_1E85CCC10;
      v10[4] = &v14;
      v10[5] = v6;
      [v7 enumerateObjectsUsingBlock:v10];
    }

    else
    {
      *(v15 + 24) = 1;
    }

    CFRelease(v6);
  }

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __57__AXHeardController_connection_hasEntitlementForMessage___block_invoke(uint64_t a1, const __CFString *a2, uint64_t a3, _BYTE *a4)
{
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(*(a1 + 40), a2, &error);
  if (error)
  {
    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HUHearingAidSettings *)&error shouldUseiCloud:v7];
    }

    CFRelease(error);
  }

  if (v6)
  {
    v14 = CFGetTypeID(v6);
    v15 = v14 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
    *(*(*(a1 + 32) + 8) + 24) = v15;
    CFRelease(v6);
  }

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

- (void)setClients:(id)clients
{
  clientsCopy = clients;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [clientsCopy copy];
  clients = selfCopy->_clients;
  selfCopy->_clients = v5;

  objc_sync_exit(selfCopy);
}

- (void)setHandlers:(id)handlers
{
  handlersCopy = handlers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [handlersCopy copy];
  handlers = selfCopy->_handlers;
  selfCopy->_handlers = v5;

  objc_sync_exit(selfCopy);
}

- (void)handleNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [MEMORY[0x1E69A4568] clientWithConnection:connectionCopy];
  v6 = v5;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__AXHeardController_handleNewConnection___block_invoke;
    block[3] = &unk_1E85C9F60;
    v7 = v5;
    v21 = v7;
    if (handleNewConnection__token != -1)
    {
      dispatch_once(&handleNewConnection__token, block);
    }

    clients = [(AXHeardController *)self clients];
    v9 = [clients mutableCopy];

    [v9 addObject:v7];
    [(AXHeardController *)self setClients:v9];
    inited = objc_initWeak(&location, connectionCopy);
    objc_initWeak(&v18, self);
    objc_initWeak(&from, v7);
    v11 = inited;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__AXHeardController_handleNewConnection___block_invoke_2;
    v13[3] = &unk_1E85CCC88;
    objc_copyWeak(&v14, &from);
    v13[4] = self;
    objc_copyWeak(&v15, &v18);
    objc_copyWeak(&v16, &location);
    xpc_connection_set_event_handler(connectionCopy, v13);

    v12 = objc_loadWeakRetained(&location);
    xpc_connection_resume(v12);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __41__AXHeardController_handleNewConnection___block_invoke(uint64_t a1)
{
  v2 = +[HUNearbySettings sharedInstance];
  [v2 incomingXPCMessageID:0 fromPid:{objc_msgSend(*(a1 + 32), "pid")}];
}

void __41__AXHeardController_handleNewConnection___block_invoke_2(id *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1DA751E20](v3);
  if (v5 == MEMORY[0x1E69E9E98])
  {
    v18 = HCLogHearingAids();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __41__AXHeardController_handleNewConnection___block_invoke_2_cold_2(v18);
    }

    v19 = [getRTTControllerClass() sharedController];
    WeakRetained = objc_loadWeakRetained(a1 + 5);
    [v19 clientRemoved:WeakRetained];

    v21 = +[HUComfortSoundsController sharedController];
    v22 = objc_loadWeakRetained(a1 + 5);
    [v21 clientRemoved:v22];

    v23 = +[HUNearbyHearingAidController sharedInstance];
    v24 = objc_loadWeakRetained(a1 + 5);
    [v23 clientRemoved:v24];

    v25 = objc_loadWeakRetained(a1 + 5);
    [v25 teardownConnection];

    v39[1] = MEMORY[0x1E69E9820];
    v39[2] = 3221225472;
    v39[3] = __41__AXHeardController_handleNewConnection___block_invoke_224;
    v39[4] = &unk_1E85CAA40;
    v39[5] = a1[4];
    objc_copyWeak(&v40, a1 + 5);
    AXPerformBlockSynchronouslyOnMainThread();
    objc_destroyWeak(&v40);
  }

  else if (v5 == MEMORY[0x1E69E9E80])
  {
    v39[0] = 0;
    v6 = [MEMORY[0x1E6988810] dictionaryFromXPCMessage:v3 error:v39];
    v7 = v39[0];
    v8 = [v6 objectForKey:*MEMORY[0x1E69A4528]];
    v9 = [v8 unsignedLongLongValue];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__AXHeardController_handleNewConnection___block_invoke_4;
    block[3] = &unk_1E85CCC60;
    v38[1] = v9;
    objc_copyWeak(v38, a1 + 5);
    if (CCSIconElementRequestErrorDomain_block_invoke_token == -1)
    {
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      dispatch_once(&CCSIconElementRequestErrorDomain_block_invoke_token, block);
      if (v9)
      {
LABEL_5:
        v10 = objc_loadWeakRetained(a1 + 6);
        v11 = objc_loadWeakRetained(a1 + 7);
        v12 = [v10 connection:v11 hasEntitlementForMessage:v9];

        if (v12)
        {
          v13 = [v6 objectForKey:*MEMORY[0x1E69A4530]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = MEMORY[0x1E69A4570];
            v15 = objc_loadWeakRetained(a1 + 5);
            v16 = [v14 messageWithPayload:v13 xpcMessage:v3 andClient:v15];

            if (v16)
            {
              v17 = objc_loadWeakRetained(a1 + 6);
              [v17 handleMessage:v16 forIdentifier:v9];
            }
          }
        }

        else if (v9 >> 35)
        {
          v13 = AXLogRTT();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            connectiona = objc_loadWeakRetained(a1 + 7);
            pid = xpc_connection_get_pid(connectiona);
            v34 = objc_loadWeakRetained(a1 + 7);
            name = xpc_connection_get_name(v34);
            v29 = objc_loadWeakRetained(a1 + 5);
            *buf = 67109890;
            v42 = pid;
            v43 = 2080;
            v44 = name;
            v45 = 2048;
            v46 = v9;
            v47 = 2112;
            v48 = v29;
            _os_log_error_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_ERROR, "Message missing entitlement %d - %s, message: %llu: %@", buf, 0x26u);
          }
        }

        else
        {
          v13 = HCLogHearingAids();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            connection = objc_loadWeakRetained(a1 + 7);
            v31 = xpc_connection_get_pid(connection);
            v33 = objc_loadWeakRetained(a1 + 7);
            v26 = xpc_connection_get_name(v33);
            v27 = objc_loadWeakRetained(a1 + 5);
            *buf = 67109890;
            v42 = v31;
            v43 = 2048;
            v44 = v9;
            v45 = 2080;
            v46 = v26;
            v47 = 2112;
            v48 = v27;
            _os_log_error_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_ERROR, "Message missing entitlement %d - %llu - %s: %@", buf, 0x26u);
          }
        }

LABEL_21:

        objc_destroyWeak(v38);
        goto LABEL_22;
      }
    }

    v13 = HCLogHearingAids();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __41__AXHeardController_handleNewConnection___block_invoke_2_cold_1();
    }

    goto LABEL_21;
  }

LABEL_22:
  objc_autoreleasePoolPop(v4);

  v30 = *MEMORY[0x1E69E9840];
}

void __41__AXHeardController_handleNewConnection___block_invoke_224(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [v2 mutableCopy];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:WeakRetained];

  [*(a1 + 32) setClients:v3];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v5 = [*(a1 + 32) clients];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__AXHeardController_handleNewConnection___block_invoke_2_225;
  v8[3] = &unk_1E85CCC38;
  v8[4] = v9;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = +[AXHearingAidDeviceController sharedController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AXHeardController_handleNewConnection___block_invoke_3;
  v7[3] = &unk_1E85CC830;
  v7[4] = v9;
  [v6 checkPartiallyPairedWithCompletion:v7];

  _Block_object_dispose(v9, 8);
}

uint64_t __41__AXHeardController_handleNewConnection___block_invoke_2_225(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 wantsUpdatesForIdentifier:32];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __41__AXHeardController_handleNewConnection___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[HUHearingAidSettings sharedInstance];
    v3 = [v4 isiCloudPaired] ^ 1;
  }

  v5 = +[AXHAController sharedController];
  [v5 setListenForAvailableDeviceUpdates:*(*(*(a1 + 32) + 8) + 24) & v3 & 1];
}

void __41__AXHeardController_handleNewConnection___block_invoke_4(uint64_t a1)
{
  v4 = +[HUNearbySettings sharedInstance];
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v4 incomingXPCMessageID:v2 fromPid:{objc_msgSend(WeakRetained, "pid")}];
}

- (BOOL)sendMessage:(id)message withError:(id *)error
{
  messageCopy = message;
  client = [messageCopy client];
  v6 = [client sendMessage:messageCopy errorBlock:&__block_literal_global_232];

  return v6;
}

void __43__AXHeardController_sendMessage_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__AXHeardController_sendMessage_withError___block_invoke_cold_1();
  }
}

- (void)sendUpdateMessage:(id)message forIdentifier:(unint64_t)identifier
{
  messageCopy = message;
  v7 = objc_autoreleasePoolPush();
  payload = [messageCopy payload];
  v9 = [payload count];

  if (v9 >= 2)
  {
    clients = [(AXHeardController *)self clients];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__AXHeardController_sendUpdateMessage_forIdentifier___block_invoke;
    v11[3] = &unk_1E85CCCB0;
    identifierCopy = identifier;
    v12 = messageCopy;
    [clients enumerateObjectsUsingBlock:v11];
  }

  objc_autoreleasePoolPop(v7);
}

void __53__AXHeardController_sendUpdateMessage_forIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 wantsUpdatesForIdentifier:*(a1 + 40)])
  {
    [v3 sendMessage:*(a1 + 32) errorBlock:&__block_literal_global_234];
  }
}

void __53__AXHeardController_sendUpdateMessage_forIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__AXHeardController_sendMessage_withError___block_invoke_cold_1();
  }
}

- (void)sendClientsMessageWithPayload:(id)payload excluding:(id)excluding
{
  payloadCopy = payload;
  excludingCopy = excluding;
  if ([payloadCopy count])
  {
    clients = [(AXHeardController *)self clients];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__AXHeardController_sendClientsMessageWithPayload_excluding___block_invoke;
    v9[3] = &unk_1E85CCCD8;
    v10 = excludingCopy;
    v11 = payloadCopy;
    [clients enumerateObjectsUsingBlock:v9];
  }
}

void __61__AXHeardController_sendClientsMessageWithPayload_excluding___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v3 = [MEMORY[0x1E69A4570] messageWithPayload:*(a1 + 40)];
    [v4 sendMessage:v3 errorBlock:&__block_literal_global_236];
  }
}

void __61__AXHeardController_sendClientsMessageWithPayload_excluding___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__AXHeardController_sendMessage_withError___block_invoke_cold_1();
  }
}

- (unint64_t)countOfClientsListeningForIdentifier:(unint64_t)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  clients = [(AXHeardController *)self clients];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__AXHeardController_countOfClientsListeningForIdentifier___block_invoke;
  v13[3] = &__block_descriptor_40_e28_B32__0__HCXPCClient_8Q16_B24l;
  v13[4] = identifier;
  v6 = [clients indexesOfObjectsPassingTest:v13];

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clients2 = [(AXHeardController *)self clients];
    v9 = [clients2 objectsAtIndexes:v6];
    *buf = 134218242;
    identifierCopy = identifier;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "AXHeardController: Found clients %llu = %@", buf, 0x16u);
  }

  v10 = [v6 count];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)addHandler:(id)handler andBlock:(id)block forMessageIdentifier:(unint64_t)identifier
{
  blockCopy = block;
  handlerCopy = handler;
  v13 = [[AXHAMessageHandlerContext alloc] initWithTarget:handlerCopy block:blockCopy];

  if (v13)
  {
    handlers = [(AXHeardController *)self handlers];
    v11 = [handlers mutableCopy];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
    [v11 setObject:v13 forKey:v12];

    [(AXHeardController *)self setHandlers:v11];
  }
}

- (void)handleMessage:(id)message forIdentifier:(unint64_t)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = HCLogHearingXPC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (identifier == 0x800000000)
  {
    if (v8)
    {
      v19 = 134218498;
      identifierCopy = 0x800000000;
      v21 = 2160;
      v22 = 1752392040;
      v23 = 2112;
      v24 = messageCopy;
      v9 = "AXHeardController: handleMessage %llu - %{mask.hash}@";
      v10 = v7;
      v11 = 32;
LABEL_6:
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, v9, &v19, v11);
    }
  }

  else if (v8)
  {
    v19 = 134218242;
    identifierCopy = identifier;
    v21 = 2112;
    v22 = messageCopy;
    v9 = "AXHeardController: handleMessage %llu - %@";
    v10 = v7;
    v11 = 22;
    goto LABEL_6;
  }

  v12 = objc_autoreleasePoolPush();
  handlers = [(AXHeardController *)self handlers];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
  v15 = [handlers objectForKey:v14];

  if (messageCopy && v15)
  {
    block = [v15 block];
    v17 = (block)[2](block, messageCopy);

    if (v17)
    {
      [(AXHeardController *)self sendMessage:v17 withError:0];
    }
  }

  objc_autoreleasePoolPop(v12);
  v18 = *MEMORY[0x1E69E9840];
}

- (id)boostPriority:(id)priority
{
  v18 = *MEMORY[0x1E69E9840];
  priorityCopy = priority;
  payload = [priorityCopy payload];
  v6 = [payload objectForKey:@"ax_hearing_should_register_client_key"];
  bOOLValue = [v6 BOOLValue];

  client = [priorityCopy client];
  [client setWantsUpdates:bOOLValue forIdentifier:0x10000];

  v9 = +[AXHeardController sharedServer];
  v10 = [v9 countOfClientsListeningForIdentifier:0x10000];

  if (v10)
  {
    v11 = priorityCopy;
  }

  else
  {
    v11 = 0;
  }

  [(AXHeardController *)self setBoostMessage:v11];
  v12 = HCLogHearing();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    boostMessage = [(AXHeardController *)self boostMessage];
    v16 = 138412290;
    v17 = boostMessage;
    _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "AXHeardController: Setting boost %@", &v16, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)registerFakeClient:(id)client
{
  if (client)
  {
    clientCopy = client;
    clients = [(AXHeardController *)self clients];
    v6 = [clients mutableCopy];

    [v6 addObject:clientCopy];
    [(AXHeardController *)self setClients:v6];
  }
}

void __40__AXHeardController__shutdownIfPossible__block_invoke_2_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "AXHeardController: IDS stats is saved, should be running: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __32__AXHeardController_startServer__block_invoke_35_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_ERROR, "XPC error: %s", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __41__AXHeardController_handleNewConnection___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Malformed message %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__AXHeardController_sendMessage_withError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end