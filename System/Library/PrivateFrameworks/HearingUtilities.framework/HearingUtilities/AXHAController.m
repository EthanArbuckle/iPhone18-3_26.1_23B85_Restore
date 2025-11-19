@interface AXHAController
+ (id)descriptionForHandoffReason:(int64_t)a3;
+ (id)sharedController;
- (AXHAController)init;
- (BOOL)hearingAidsIsLEA2:(id)a3;
- (BOOL)hearingAidsPaired;
- (id)_registerForLiveListenUpdates_BOOLValue:(id)a3;
- (id)_registerForLiveListenUpdates_enumValue:(id)a3;
- (id)_toggleLiveListen_BOOLValue:(id)a3;
- (id)_toggleLiveListen_enumValue:(id)a3;
- (id)connectToControllerWithID:(id)a3;
- (id)currentDeviceController;
- (id)liveListenController;
- (id)observeRemoteLiveListenUpdates:(id)a3;
- (id)readAvailableControllers:(id)a3;
- (id)readAvailableDevices:(id)a3;
- (id)readDeviceProperty:(id)a3;
- (id)registerForAvailableDevicesUpdates:(id)a3;
- (id)registerForControlMessageUpdates:(id)a3;
- (id)registerForDeviceUpdates:(id)a3;
- (id)registerForLiveListenUpdates:(id)a3;
- (id)sendMessagesPriority:(id)a3;
- (id)toggleLiveListen:(id)a3;
- (id)toggleLiveListenRewind:(id)a3;
- (id)writeDeviceProperty:(id)a3;
- (void)connectToPairedDevice;
- (void)dealloc;
- (void)liveListenControllerStateDidChange;
- (void)processPropertyUpdates:(id)a3 isLocal:(BOOL)a4;
- (void)readLiveListenLevels;
- (void)sendUpdatesForProperties:(id)a3 excludingClient:(id)a4;
- (void)setListenForAvailableDeviceUpdates:(BOOL)a3;
- (void)setPairedHearingAidID:(id)a3;
- (void)transitionToPeer;
- (void)updateNearbyDeviceAvailabilityWithForce:(BOOL)a3;
- (void)willSwitchUser;
@end

@implementation AXHAController

+ (id)sharedController
{
  if (sharedController_onceToken_0 != -1)
  {
    +[AXHAController sharedController];
  }

  v3 = sharedController_Controller_0;

  return v3;
}

- (id)liveListenController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AXHAController_liveListenController__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  if (liveListenController_onceToken != -1)
  {
    dispatch_once(&liveListenController_onceToken, block);
  }

  return liveListenController_LiveListenController;
}

void __55__AXHAController_sendAvailabilityDidChangeNotification__block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.hearing.audio.transfer.availability", 0, 0, 1u);
}

uint64_t __34__AXHAController_sharedController__block_invoke()
{
  sharedController_Controller_0 = objc_alloc_init(AXHAController);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)descriptionForHandoffReason:(int64_t)a3
{
  if (descriptionForHandoffReason__onceToken != -1)
  {
    +[AXHAController descriptionForHandoffReason:];
  }

  if ([descriptionForHandoffReason__HandoffReasonDeacription count] <= a3)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = [descriptionForHandoffReason__HandoffReasonDeacription objectAtIndexedSubscript:a3];
  }

  return v4;
}

void __46__AXHAController_descriptionForHandoffReason___block_invoke()
{
  v0 = descriptionForHandoffReason__HandoffReasonDeacription;
  descriptionForHandoffReason__HandoffReasonDeacription = &unk_1F5624298;
}

- (AXHAController)init
{
  v20.receiver = self;
  v20.super_class = AXHAController;
  v2 = [(AXHAController *)&v20 init];
  if (v2)
  {
    v3 = +[HUHearingAidSettings sharedInstance];
    v4 = [v3 pairedHearingAids];

    objc_initWeak(&location, v2);
    v5 = +[HUHearingAidSettings sharedInstance];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __22__AXHAController_init__block_invoke;
    v17 = &unk_1E85C9F10;
    objc_copyWeak(&v18, &location);
    [v5 registerUpdateBlock:&v14 forRetrieveSelector:sel_pairedHearingAids withListener:v2];

    v6 = [HUNearbyHearingAidController sharedInstance:v14];
    [v6 setDelegate:v2];

    if ([(AXHAController *)v2 hearingAidsPaired])
    {
      [(AXHAController *)v2 setListenForAvailableDeviceUpdates:1];
      v7 = +[HUNearbyHearingAidController sharedInstance];
      [v7 start];
    }

    if ([MEMORY[0x1E69A4560] deviceIsMultiUser])
    {
      v8 = [getUMUserManagerClass() sharedManager];
      [v8 registerUserSwitchStakeHolder:v2];
    }

    v9 = objc_alloc_init(HUAudioHalController);
    audioHalController = v2->_audioHalController;
    v2->_audioHalController = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    liveListenCountsPerClient = v2->_liveListenCountsPerClient;
    v2->_liveListenCountsPerClient = v11;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __22__AXHAController_init__block_invoke(uint64_t a1)
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Updated", v6, 2u);
  }

  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = [v3 pairedHearingAids];

  if (v4)
  {
    WeakRetained = +[AXHearingAidDeviceController sharedController];
    [WeakRetained checkPartiallyPairedWithCompletion:&__block_literal_global_24];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setPairedHearingAidID:0];
  }
}

void __22__AXHAController_init__block_invoke_21(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = +[HUNearbyHearingAidController sharedInstance];
    [v3 start];
  }
}

- (void)dealloc
{
  [(AXHAController *)self setPairedDeviceUUID:0];
  [(AXHAController *)self setAvailableDevicesDescription:0];
  [(AXHAController *)self setLiveListenCountsPerClient:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXHAController;
  [(AXHAController *)&v4 dealloc];
}

- (void)willSwitchUser
{
  v3 = [getUMUserManagerClass() sharedManager];
  v4 = [v3 isLoginSession];

  if ((v4 & 1) == 0)
  {

    [(AXHAController *)self setPairedHearingAidID:0];
  }
}

- (id)currentDeviceController
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = +[AXHearingAidDeviceController sharedController];
  v4 = [(AXHAController *)self pairedDeviceUUID];
  v5 = [v3 hearingAidForDeviceID:v4];

  if ([v5 leftAvailable])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 rightAvailable];
  }

  v7 = +[AXHearingAidDeviceController sharedController];
  if ([v7 isConnected])
  {

LABEL_6:
    v8 = +[AXHearingAidDeviceController sharedController];
    v9 = [(AXHAController *)self pairedDeviceUUID];
    v10 = [v8 hearingAidForDeviceID:v9];

    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = +[AXHearingAidDeviceController sharedController];
      v13 = [v12 isConnected];
      v14 = [v10 isConnecting];
      v15 = +[HUNearbyHearingAidController sharedInstance];
      v16 = [v15 descriptionForCurrentState];
      v23[0] = 67109890;
      v23[1] = v13;
      v24 = 1024;
      v25 = v14;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "HAController: Current controller is device, connected=%d, connecting=%d, nearby state=%@\nPaired Device=%@", v23, 0x22u);
    }

    v17 = +[AXHearingAidDeviceController sharedController];

    goto LABEL_16;
  }

  if ([v5 isConnecting] & v6)
  {
    v18 = +[HUNearbyHearingAidController sharedInstance];
    v19 = [v18 state];

    if (v19 != 2)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = HCLogHearingAids();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23[0]) = 0;
    _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "HAController: Current controller is nearby", v23, 2u);
  }

  v17 = +[HUNearbyHearingAidController sharedInstance];
LABEL_16:

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)hearingAidsPaired
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[HUHearingAidSettings sharedInstance];
  v3 = [v2 pairedHearingAids];

  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3 != 0;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HAController: Checking paired %d", v7, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3 != 0;
}

- (void)setListenForAvailableDeviceUpdates:(BOOL)a3
{
  if (self->_isListening != a3)
  {
    v3 = a3;
    self->_isListening = a3;
    v5 = +[AXHearingAidDeviceController sharedController];
    v6 = v5;
    if (v3)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __53__AXHAController_setListenForAvailableDeviceUpdates___block_invoke;
      v7[3] = &unk_1E85CB7B0;
      v7[4] = self;
      [v5 searchForAvailableDevicesWithCompletion:v7];
    }

    else
    {
      [v5 stopSearching];
    }
  }
}

void __53__AXHAController_setListenForAvailableDeviceUpdates___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AXHearingAidDeviceController sharedController];
  v5 = [*(a1 + 32) pairedDeviceUUID];
  v6 = [v4 hearingAidForDeviceID:v5];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__AXHAController_setListenForAvailableDeviceUpdates___block_invoke_2;
  v18[3] = &unk_1E85CB788;
  v8 = v6;
  v9 = *(a1 + 32);
  v19 = v8;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  [v3 enumerateObjectsUsingBlock:v18];

  if (![v10 count])
  {
    v11 = [MEMORY[0x1E695DFB0] null];
    [v10 setObject:v11 forKey:@"No_HA_Devices"];
  }

  v12 = HCLogHearingAids();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v10;
    _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "HAController: HearingAidDeviceController updated Available Devices, Updating Clients with Available Devices: %@", buf, 0xCu);
  }

  [*(a1 + 32) setAvailableDevicesDescription:v10];
  v13 = +[AXHeardController sharedServer];
  v14 = MEMORY[0x1E69A4570];
  v15 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v10 andIdentifier:32];
  v16 = [v14 messageWithPayload:v15];
  [v13 sendUpdateMessage:v16 forIdentifier:32];

  v17 = *MEMORY[0x1E69E9840];
}

void __53__AXHAController_setListenForAvailableDeviceUpdates___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (([v6 isPaired] & 1) != 0 || objc_msgSend(v6, "isPersistent"))
  {
    if (([v6 isEqual:*(a1 + 32)] & 1) == 0)
    {
      v7 = HCLogHearingAids();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = [v6 deviceUUID];
        v27 = 138412546;
        v28 = v8;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HAController: HearingAidDeviceController updated Available Devices, Changing paired Hearing Aids from: %@ to: %@, Update clients with properties", &v27, 0x16u);
      }

      v10 = *(a1 + 40);
      v11 = [v6 deviceUUID];
      [v10 setPairedHearingAidID:v11];

      v12 = +[AXHeardController sharedServer];
      v13 = MEMORY[0x1E69A4570];
      v14 = MEMORY[0x1E69A4560];
      v15 = [v6 deviceDescription];
      v16 = [v14 messagePayloadFromDictionary:v15 andIdentifier:64];
      v17 = [v13 messageWithPayload:v16];
      [v12 sendUpdateMessage:v17 forIdentifier:64];
    }

    if ([v6 didLoadPersistentProperties])
    {
      v18 = +[HUHearingAidSettings sharedInstance];
      v19 = [v18 isiCloudPaired];

      if ((v19 & 1) == 0)
      {
        v20 = *(a1 + 48);
        v21 = [v6 deviceDescription];
        [v20 setDictionary:v21];

        *a4 = 1;
      }
    }

    else
    {
      v22 = HCLogHearingAids();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = v6;
        _os_log_impl(&dword_1DA5E2000, v22, OS_LOG_TYPE_DEFAULT, "Missing info %@", &v27, 0xCu);
      }

      [*(a1 + 40) setPairedHearingAidID:0];
    }
  }

  v23 = [v6 leftPeripheralUUID];
  if (!v23)
  {
    [v6 rightPeripheralUUID];
  }

  [v6 availableInputEars];
  [v6 earsSupportingWatch];
  [*(a1 + 40) hearingAidsIsLEA2:v6];
  v24 = *(a1 + 48);
  v25 = [v6 deviceDescription];
  [v24 addEntriesFromDictionary:v25];

  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)hearingAidsIsLEA2:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 availableInputEars];
  v5 = [v3 leftPeripheralUUID];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 rightPeripheralUUID];
    v6 = v7 != 0;
  }

  v8 = +[HUHearingAidSettings sharedInstance];
  v9 = [v8 hearingAidsLEAVersionFromiCloud];

  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 name];
    v12 = +[HUHearingAidSettings sharedInstance];
    v18 = 138413314;
    v19 = v11;
    v20 = 1024;
    v21 = v9 == 2;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = [v12 isiCloudPaired];
    v26 = 1024;
    v27 = [v3 availableInputEars];
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, " %@ LEA version from iCloud: %d, real hearing aids: %d, iCloud paired: %d, available input ears: %d", &v18, 0x24u);
  }

  v13 = v9 == 2 || v6 && v4 != 0;
  if (v13)
  {
    v14 = HCLogHearingAids();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v3 name];
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, " %@ is LEA 2.0", &v18, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)setPairedHearingAidID:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AXHearingAidDeviceController sharedController];
  v6 = [v5 hearingAidForDeviceID:v4];

  v7 = +[AXHearingAidDeviceController sharedController];
  v8 = [(AXHAController *)self pairedDeviceUUID];
  v9 = [v7 hearingAidForDeviceID:v8];

  v10 = [v6 deviceUUID];
  v11 = [v9 containsPeripheralWithUUID:v10];

  v12 = [v6 didLoadPersistentProperties];
  v13 = HCLogHearingAids();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v45 = v4;
    v46 = 1024;
    v47 = v11;
    v48 = 1024;
    v49 = [v9 hasConnection];
    v50 = 1024;
    v51 = [v6 hasConnection];
    v52 = 1024;
    v53 = v12;
    v54 = 2112;
    v55 = v9;
    v56 = 2112;
    v57 = v6;
    _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "HAController: setPairedHearingAidID %@, related: %d, connected: (old %d, new %d), new loaded: %d, \n old: %@, \n new: %@", buf, 0x38u);
  }

  if (v11 && ([v9 hasConnection] & 1) == 0)
  {
    v14 = [v6 hasConnection];
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (!(v14 & 1 | ((v11 & 1) == 0)) || !v15)
  {
    if (v4)
    {
      goto LABEL_36;
    }

LABEL_32:
    [(AXHAController *)self cleanUp];
    goto LABEL_36;
  }

  if (v9)
  {
    v16 = HCLogHearingAids();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v9;
      _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "HAController: setPairedHearingAidID, stop updates and unpair old aids: %@", buf, 0xCu);
    }
  }

  [v9 setKeepInSync:0];
  if ((v14 & 1) == 0)
  {
    [v9 disconnectAndUnpair:1];
  }

  [v9 setIsPaired:0];
  v17 = [v6 deviceUUID];
  [(AXHAController *)self setPairedDeviceUUID:v17];

  v18 = [(AXHAController *)self currentDeviceController];
  [v18 stopPropertyUpdates];

  if (!v4)
  {
    v22 = +[AXHearingAidDeviceController sharedController];
    [v22 forgetDevice:v9];

    if ((liveListenStreamSelected() & 1) == 0)
    {
      v23 = [(AXHAController *)self liveListenController];
      [v23 stopListeningWithCompletion:0];
    }

    [(AXHAController *)self setListenForAvailableDeviceUpdates:0];
    v24 = +[HUNearbyHearingAidController sharedInstance];
    [v24 stop];

    [(AXHAController *)self availableRemoteControllersDidChange];
    v25 = HCLogHearingAids();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v25, OS_LOG_TYPE_DEFAULT, "HAController: setPairedHearingAidID, Hearing Aids unpaired. Cleared and updated available controllers", buf, 2u);
    }

    v26 = +[AXHeardController sharedServer];
    v27 = MEMORY[0x1E69A4570];
    v28 = MEMORY[0x1E69A4560];
    v42 = @"No_HA_Devices";
    v29 = [MEMORY[0x1E695DFB0] null];
    v43 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v31 = [v28 messagePayloadFromDictionary:v30 andIdentifier:32];
    v32 = [v27 messageWithPayload:v31];
    [v26 sendUpdateMessage:v32 forIdentifier:32];

    goto LABEL_32;
  }

  v19 = os_transaction_create();
  [(AXHAController *)self setTransaction:v19];

  v20 = HCLogHearingAids();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v6;
    _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "HAController: setPairedHearingAidID, connect and start updates new aids: %@", buf, 0xCu);
  }

  [v6 setIsPaired:1];
  if (([v6 isConnected] & 1) == 0)
  {
    [v6 connect];
  }

  [v6 setKeepInSync:1];
  if ([(AXHAController *)self hearingAidsPaired])
  {
    v21 = +[HUNearbyHearingAidController sharedInstance];
    [v21 start];
  }

  else
  {
    v21 = HCLogHearingAids();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v21, OS_LOG_TYPE_DEFAULT, "Skipping nearby because no hearing aids paired.", buf, 2u);
    }
  }

  v33 = +[AXHearingAidDeviceController sharedController];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __40__AXHAController_setPairedHearingAidID___block_invoke;
  v41[3] = &unk_1E85CA050;
  v41[4] = self;
  [v33 checkPartiallyPairedWithCompletion:v41];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__AXHAController_setPairedHearingAidID___block_invoke_2;
  aBlock[3] = &unk_1E85CB7D8;
  aBlock[4] = self;
  v34 = _Block_copy(aBlock);
  v35 = +[AXHearingAidDeviceController sharedController];
  [v35 registerForPropertyUpdates:v34];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __40__AXHAController_setPairedHearingAidID___block_invoke_3;
  v39[3] = &unk_1E85CB7D8;
  v39[4] = self;
  v36 = _Block_copy(v39);
  v37 = +[HUNearbyHearingAidController sharedInstance];
  [v37 registerForPropertyUpdates:v36];

  [(AXHAController *)self setTransaction:0];
LABEL_36:

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __40__AXHAController_setPairedHearingAidID___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) setListenForAvailableDeviceUpdates:0];
  }

  return result;
}

- (void)processPropertyUpdates:(id)a3 isLocal:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = [a3 copy];
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v25[0] = 67109378;
    v25[1] = v4;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE isLocal %d %@", v25, 0x12u);
  }

  v8 = [(AXHAController *)self pairedDeviceUUID];
  v9 = [v6 objectForKey:v8];
  v10 = [v9 objectForKey:&unk_1F5623C38];

  if (v10)
  {
    v11 = +[AXHearingAidDeviceController sharedController];
    v12 = [(AXHAController *)self pairedDeviceUUID];
    v13 = [v11 hearingAidForDeviceID:v12];

    if (([v13 hasConnection] & 1) == 0 && (liveListenStreamSelected() & 1) == 0)
    {
      v14 = [(AXHAController *)self liveListenController];
      [v14 stopListeningWithCompletion:0];
    }

    v15 = HCLogHearingAids();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_1DA5E2000, v15, OS_LOG_TYPE_DEFAULT, "Connection status changed. Updated available controllers", v25, 2u);
    }

    [(AXHAController *)self availableRemoteControllersDidChange];
  }

  if ([(AXHAController *)self hearingAidsPaired])
  {
    v16 = +[HUNearbyHearingAidController sharedInstance];
    [v16 start];
  }

  v17 = MEMORY[0x1E69A4570];
  v18 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v6 andIdentifier:64];
  v19 = [v17 messageWithPayload:v18];

  v20 = +[AXHeardController sharedServer];
  [v20 sendUpdateMessage:v19 forIdentifier:64];

  v21 = +[AXHearingAidDeviceController sharedController];
  v22 = [v21 isConnected];

  if (v22 && v4)
  {
    v23 = +[HUNearbyHearingAidController sharedInstance];
    [v23 sendWriteToAllDevices:v6];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)readLiveListenLevels
{
  liveListenLevelsTimer = self->_liveListenLevelsTimer;
  if (!liveListenLevelsTimer)
  {
    v4 = objc_alloc(MEMORY[0x1E6988780]);
    v5 = [v4 initWithTargetSerialQueue:MEMORY[0x1E69E96A0]];
    v6 = self->_liveListenLevelsTimer;
    self->_liveListenLevelsTimer = v5;

    liveListenLevelsTimer = self->_liveListenLevelsTimer;
  }

  [(AXDispatchTimer *)liveListenLevelsTimer cancel];
  objc_initWeak(&location, self);
  v7 = self->_liveListenLevelsTimer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__AXHAController_readLiveListenLevels__block_invoke;
  v8[3] = &unk_1E85CB800;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [(AXDispatchTimer *)v7 afterDelay:v8 processBlock:0.05];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__AXHAController_readLiveListenLevels__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained liveListenController];
  [v3 audioLevel];
  v5 = v4;

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 liveListenController];
  v8 = [v7 isListening];

  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:512];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1024];
  v14 = [v9 dictionaryWithObjectsAndKeys:{v10, v11, v12, v13, 0}];

  if (_os_feature_enabled_impl())
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 liveListenController];
    v17 = [v16 isPlayingBack];

    v18 = objc_loadWeakRetained((a1 + 40));
    v19 = [v18 liveListenController];
    v20 = [v19 transcription];

    v21 = 0.0;
    if (!v17)
    {
      v21 = v5;
    }

    v33 = MEMORY[0x1E695DF20];
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:512];
    v23 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1024];
    v8 = v34 = v8;
    v24 = [MEMORY[0x1E696AD98] numberWithBool:v17];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x2000000];
    if (v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = &stru_1F5614A78;
    }

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x4000000];
    v28 = [v33 dictionaryWithObjectsAndKeys:{v32, v22, v23, v8, v24, v25, v26, v27, 0}];

    LODWORD(v8) = v34;
    v14 = v28;
  }

  v35 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v14 andIdentifier:512];

  v29 = +[AXHeardController sharedServer];
  v30 = [MEMORY[0x1E69A4570] messageWithPayload:v35];
  [v29 sendUpdateMessage:v30 forIdentifier:512];

  if (v8)
  {
    v31 = objc_loadWeakRetained((a1 + 40));
    [v31 readLiveListenLevels];
  }

  else
  {
    [*(a1 + 32) setLiveListenMessage:0];
  }
}

- (void)liveListenControllerStateDidChange
{
  v3 = [(AXHAController *)self liveListenController];
  v4 = [v3 isListening];

  if (v4)
  {

    [(AXHAController *)self readLiveListenLevels];
  }
}

uint64_t __38__AXHAController_liveListenController__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(HULiveListenController);
  v3 = liveListenController_LiveListenController;
  liveListenController_LiveListenController = v2;

  v4 = liveListenController_LiveListenController;
  v5 = *(a1 + 32);

  return [v4 setDelegate:v5];
}

- (void)connectToPairedDevice
{
  v2 = +[HUNearbyHearingAidController sharedInstance];
  [v2 requestConnection];
}

- (void)transitionToPeer
{
  v2 = +[HUNearbyHearingAidController sharedInstance];
  [v2 relinquishConnection];
}

- (id)registerForAvailableDevicesUpdates:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"ax_hearing_should_register_client_key"];
  v7 = [v6 BOOLValue];

  v8 = [v4 payload];
  v9 = [v8 objectForKey:@"ax_hearing_should_begin_searching_key"];
  v10 = [v9 BOOLValue];

  v11 = +[AXHearingAidDeviceController sharedController];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__AXHAController_registerForAvailableDevicesUpdates___block_invoke;
  v19[3] = &unk_1E85CB870;
  v21 = v7;
  v19[4] = self;
  v12 = v4;
  v20 = v12;
  v22 = v10;
  [v11 checkPartiallyPairedWithCompletion:v19];

  v13 = [(AXHAController *)self availableDevicesDescription];

  if (v13)
  {
    v14 = MEMORY[0x1E69A4560];
    v15 = [(AXHAController *)self availableDevicesDescription];
    v16 = [v14 messagePayloadFromDictionary:v15 andIdentifier:32];
    v17 = [v12 replyMessageWithPayload:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __53__AXHAController_registerForAvailableDevicesUpdates___block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = [*(a1 + 32) pairedDeviceUUID];
    v6 = [v5 length] != 0;

    if ((v6 & a2) != 0)
    {
      v3 = 180.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  v7 = [*(a1 + 40) hasEntitlement:@"com.apple.CoreRoutine.preferences"];
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    *buf = 67109632;
    v16 = v9;
    v17 = 1024;
    v18 = v7;
    v19 = 2048;
    v20 = v3;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Registering for device availability %d, %d, %lf", buf, 0x18u);
  }

  v12 = MEMORY[0x1E69E9820];
  LOBYTE(v14) = v7;
  *(&v14 + 1) = *(a1 + 48);
  v13 = *(a1 + 32);
  AXPerformBlockOnMainThreadAfterDelay();
  v10 = [*(a1 + 40) client];
  [v10 setWantsUpdates:*(a1 + 48) forIdentifier:32];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __53__AXHAController_registerForAvailableDevicesUpdates___block_invoke_63(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 41) == 1)
    {
      v2 = +[AXHearingAidDeviceController sharedController];
      v3 = [v2 shouldActiveScan];

      if ((v3 & 1) == 0)
      {
        [*(a1 + 32) setListenForAvailableDeviceUpdates:0];
      }
    }

    v4 = +[AXHearingAidDeviceController sharedController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__AXHAController_registerForAvailableDevicesUpdates___block_invoke_2;
    v6[3] = &__block_descriptor_34_e8_v12__0B8l;
    v7 = *(a1 + 42);
    v8 = *(a1 + 41);
    [v4 checkPartiallyPairedWithCompletion:v6];
  }

  return [*(a1 + 32) setListenForAvailableDeviceUpdates:*(a1 + 41)];
}

void __53__AXHAController_registerForAvailableDevicesUpdates___block_invoke_2(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 == 1 && (a2 & 1) == 0)
  {
    v4 = +[HUHearingAidSettings sharedInstance];
    v5 = [v4 pairedHearingAids];
    if (v5)
    {
      v6 = +[HUHearingAidSettings sharedInstance];
      v3 = [v6 isiCloudPaired];
    }

    else
    {
      v3 = 1;
    }
  }

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 33);
    v11[0] = 67109376;
    v11[1] = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Setting active scan %d, %d", v11, 0xEu);
  }

  v9 = +[AXHearingAidDeviceController sharedController];
  [v9 setShouldActiveScan:*(a1 + 33) & v3 & 1];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)registerForDeviceUpdates:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"ax_hearing_should_register_client_key"];
  v7 = [v6 BOOLValue];

  v8 = [v4 client];
  [v8 setWantsUpdates:v7 forIdentifier:64];

  [(AXHAController *)self availableRemoteControllersDidChange];
  v9 = HCLogHearingAids();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "HAController: New device updates client. Updated available controllers", v15, 2u);
  }

  v10 = MEMORY[0x1E69A4560];
  v11 = [(AXHAController *)self availableDevicesDescription];
  v12 = [v10 messagePayloadFromDictionary:v11 andIdentifier:32];
  v13 = [v4 replyMessageWithPayload:v12];

  return v13;
}

- (id)readDeviceProperty:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 allKeys];

  v7 = [v4 payload];

  v8 = [v7 objectForKey:&unk_1F5623C50];

  if (v8)
  {
    v9 = [(AXHAController *)self pairedDeviceUUID];
    v10 = [v9 isEqualToString:v8];

    if (v10)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __37__AXHAController_readDeviceProperty___block_invoke;
      v12[3] = &unk_1E85CACD0;
      v12[4] = self;
      v13 = v8;
      [v6 enumerateObjectsUsingBlock:v12];
    }
  }

  return 0;
}

void __37__AXHAController_readDeviceProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 currentDeviceController];
  v5 = [v4 integerValue];

  [v6 updateProperty:v5 forDeviceID:*(a1 + 40)];
}

- (void)sendUpdatesForProperties:(id)a3 excludingClient:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionary];
  v10 = [(AXHAController *)self pairedDeviceUUID];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__AXHAController_sendUpdatesForProperties_excludingClient___block_invoke;
  v18[3] = &unk_1E85CAD48;
  v11 = v10;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  [v8 enumerateObjectsUsingBlock:v18];

  if ([v12 count] && objc_msgSend(v11, "length"))
  {
    v13 = +[AXHeardController sharedServer];
    v14 = MEMORY[0x1E69A4560];
    v21 = v11;
    v22[0] = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v16 = [v14 messagePayloadFromDictionary:v15 andIdentifier:64];
    [v13 sendClientsMessageWithPayload:v16 excluding:v6];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __59__AXHAController_sendUpdatesForProperties_excludingClient___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[AXHearingAidDeviceController sharedController];
  v4 = [v3 valueForProperty:objc_msgSend(v5 forDeviceID:{"longLongValue"), *(a1 + 32)}];

  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v5];
  }
}

- (id)writeDeviceProperty:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AXHearingAidDeviceController sharedController];
  v6 = [(AXHAController *)self pairedDeviceUUID];
  v7 = [v5 hearingAidForDeviceID:v6];

  v8 = [v4 payload];
  v9 = [v8 objectForKey:&unk_1F5623C50];

  if (v9)
  {
    v10 = [v7 deviceUUID];
    if ([v10 isEqualToString:v9])
    {
      v11 = [v7 isPaired];

      if (v11)
      {
        v12 = [v4 payload];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __38__AXHAController_writeDeviceProperty___block_invoke;
        v30[3] = &unk_1E85CA558;
        v31 = v9;
        [v12 enumerateKeysAndObjectsUsingBlock:v30];

        v13 = [v4 payload];
        v14 = [v13 allKeys];
        v15 = [v4 client];
        [(AXHAController *)self sendUpdatesForProperties:v14 excludingClient:v15];

        v16 = v31;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
    }

    v17 = [v4 payload];
    v18 = [v17 objectForKey:&unk_1F5623C38];

    if (v18)
    {
      v19 = +[AXHearingAidDeviceController sharedController];
      v16 = [v19 hearingAidsForUUID:v9];

      if ([v16 count])
      {
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __38__AXHAController_writeDeviceProperty___block_invoke_2;
        v26 = &unk_1E85CB788;
        v27 = v4;
        v28 = self;
        v29 = v9;
        [v16 enumerateObjectsUsingBlock:&v23];
        if ([v16 count] >= 2)
        {
          v20 = HCLogHearingAids();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v16;
            _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "Found more than one matching hearing aid %@", buf, 0xCu);
          }
        }
      }

      goto LABEL_13;
    }
  }

LABEL_14:

  v21 = *MEMORY[0x1E69E9840];
  return 0;
}

void __38__AXHAController_writeDeviceProperty___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = +[AXHearingAidDeviceController sharedController];
  v7 = [v6 isConnected];

  if (v7)
  {
    v8 = +[AXHearingAidDeviceController sharedController];
    [v8 writeValue:v5 forProperty:objc_msgSend(v10 andDeviceID:{"unsignedLongLongValue"), *(a1 + 32)}];
  }

  v9 = +[HUNearbyHearingAidController sharedInstance];
  [v9 writeValue:v5 forProperty:objc_msgSend(v10 andDeviceID:{"unsignedLongLongValue"), *(a1 + 32)}];
}

void __38__AXHAController_writeDeviceProperty___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (([v8 leftAvailable] & 1) != 0 || objc_msgSend(v8, "rightAvailable"))
  {
    v6 = [*(a1 + 32) payload];
    v7 = [v6 objectForKey:&unk_1F5623C38];

    [v8 setValue:v7 forProperty:0x200000];
    if ([v7 intValue] == 2)
    {
      [*(a1 + 40) setPairedHearingAidID:*(a1 + 48)];
    }

    *a4 = 1;
  }
}

- (id)registerForControlMessageUpdates:(id)a3
{
  v3 = a3;
  v4 = [v3 payload];
  v5 = [v4 objectForKey:@"ax_hearing_should_register_client_key"];
  v6 = [v5 BOOLValue];

  v7 = [v3 client];

  [v7 setWantsUpdates:v6 forIdentifier:0x8000000000000000];
  return 0;
}

- (void)updateNearbyDeviceAvailabilityWithForce:(BOOL)a3
{
  v5 = [(AXHAController *)self pairedDeviceUUID];
  v6 = [v5 length];

  if (v6)
  {
    v7 = +[AXHearingAidDeviceController sharedController];
    if ([v7 isConnected])
    {
      v8 = 1;
    }

    else
    {
      v10 = +[AXHearingAidDeviceController sharedController];
      v8 = [v10 isPartiallyConnected];
    }

    v11 = +[HUNearbyHearingAidController sharedInstance];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__AXHAController_updateNearbyDeviceAvailabilityWithForce___block_invoke;
    v12[3] = &unk_1E85CB898;
    v13 = v8;
    v12[4] = self;
    v14 = a3;
    [v11 connectedPeerWithCompletion:v12];
  }

  else
  {
    v9 = +[HUHearingAidSettings sharedInstance];
    [v9 setAvailableHearingDeviceName:0];

    if (!a3)
    {

      [(AXHAController *)self sendAvailabilityDidChangeNotification];
    }
  }
}

void __58__AXHAController_updateNearbyDeviceAvailabilityWithForce___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v3 && (*(a1 + 40) & 1) == 0)
  {
    v6 = +[HUHearingAidSettings sharedInstance];
    v5 = [v6 multideviceSettingsEnabled];

    v4 = *(a1 + 40);
  }

  v39 = v5;
  if (v3 && (v4 & 1) == 0)
  {
    v7 = +[HUHearingAidSettings sharedInstance];
    v4 = [v7 multideviceAudioEnabled];
  }

  v8 = +[AXHearingAidDeviceController sharedController];
  v9 = [*(a1 + 32) pairedDeviceUUID];
  v10 = [v8 hearingAidForDeviceID:v9];
  v11 = [v10 name];

  v12 = v11;
  if (!v3 || (*(a1 + 40) & 1) != 0 || (+[HUHearingAidSettings sharedInstance](HUHearingAidSettings, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isiCloudPaired], v13, v14))
  {

    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = +[AXHearingAidDeviceController sharedController];
  v17 = [v16 isBluetoothAvailable];

  v18 = +[HUHearingAidSettings sharedInstance];
  v19 = v18;
  if (v17)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  [v18 setAvailableHearingDeviceName:v20];

  if (v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = &stru_1F5614A78;
  }

  v22 = [v3 name];
  v23 = v22;
  if (!v22 || !v3 || (*(a1 + 40) & 1) != 0)
  {

    v23 = &stru_1F5614A78;
  }

  v40 = v15;
  v24 = HCLogHearingHandoff();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if ([(__CFString *)v23 length])
    {
      v25 = v23;
    }

    else
    {
      v25 = @"No";
    }

    v26 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    v27 = [MEMORY[0x1E696AD98] numberWithBool:v4 & 1];
    *buf = 138413058;
    v46 = v25;
    v47 = 2112;
    v48 = v40;
    v49 = 2112;
    v50 = v26;
    v51 = 2112;
    v52 = v27;
    _os_log_impl(&dword_1DA5E2000, v24, OS_LOG_TYPE_DEFAULT, "HAController: update nearby state with connectedPeer: %@, Reachable HA: %@, isConnected: %@, audioReachable: %@", buf, 0x2Au);
  }

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x4000];
  v43 = v28;
  v41[0] = &unk_1F5623C68;
  v29 = [MEMORY[0x1E696AD98] numberWithBool:v39 & 1];
  v42[0] = v29;
  v41[1] = &unk_1F5623C80;
  v30 = [MEMORY[0x1E696AD98] numberWithBool:v4 & 1];
  v42[1] = v30;
  v42[2] = v23;
  v31 = *MEMORY[0x1E69A4548];
  v41[2] = &unk_1F5623C98;
  v41[3] = v31;
  v42[3] = v21;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:4];
  v44 = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

  if ((*(a1 + 41) & 1) != 0 || ([*(a1 + 32) availableControllersPayload], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToDictionary:", v34), v34, (v35 & 1) == 0))
  {
    [*(a1 + 32) setAvailableControllersPayload:v33];
    v36 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v33 andIdentifier:2048];

    v37 = +[AXHeardController sharedServer];
    [v37 sendClientsMessageWithPayload:v36 excluding:0];

    v33 = v36;
  }

  if ((*(a1 + 41) & 1) == 0)
  {
    [*(a1 + 32) sendAvailabilityDidChangeNotification];
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (id)readAvailableDevices:(id)a3
{
  v4 = MEMORY[0x1E69A4560];
  v5 = a3;
  v6 = [(AXHAController *)self availableDevicesDescription];
  v7 = [v4 messagePayloadFromDictionary:v6 andIdentifier:32];
  v8 = [v5 replyMessageWithPayload:v7];

  return v8;
}

- (id)readAvailableControllers:(id)a3
{
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Client requesting update to available controllers", v6, 2u);
  }

  [(AXHAController *)self updateNearbyDeviceAvailabilityWithForce:1];
  return 0;
}

- (id)connectToControllerWithID:(id)a3
{
  v3 = a3;
  v4 = [v3 payload];
  v5 = [v4 valueForKey:@"controller"];

  v6 = [v3 payload];

  v7 = [v6 valueForKey:@"reason"];

  if (v7)
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v9)
  {
    v10 = +[HUNearbyHearingAidController sharedInstance];
    v11 = v10;
    if (v8 == 1)
    {
      [v10 requestConnectionForMedia];
    }

    else
    {
      [v10 requestConnectionForReason:v8];
    }
  }

  return 0;
}

- (id)toggleLiveListen:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    [(AXHAController *)self _toggleLiveListen_enumValue:v4];
  }

  else
  {
    [(AXHAController *)self _toggleLiveListen_BOOLValue:v4];
  }
  v5 = ;

  return v5;
}

- (id)registerForLiveListenUpdates:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    [(AXHAController *)self _registerForLiveListenUpdates_enumValue:v4];
  }

  else
  {
    [(AXHAController *)self _registerForLiveListenUpdates_BOOLValue:v4];
  }
  v5 = ;

  return v5;
}

- (id)_toggleLiveListen_BOOLValue:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 payload];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:128];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 BOOLValue];

  v9 = [(AXHAController *)self liveListenController];
  LODWORD(v6) = [v9 isListening];

  if (v8 != v6)
  {
    v10 = [(AXHAController *)self liveListenController];
    v11 = v10;
    if (v8)
    {
      [v10 startListeningWithCompletion:0];
      v12 = v4;
    }

    else
    {
      [v10 stopListeningWithCompletion:0];
      v12 = 0;
    }

    [(AXHAController *)self setLiveListenMessage:v12];
  }

  [(AXHAController *)self readLiveListenLevels];
  v13 = MEMORY[0x1E69A4560];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:128];
  v23 = v14;
  v15 = MEMORY[0x1E696AD98];
  v16 = [(AXHAController *)self liveListenController];
  v17 = [v15 numberWithBool:{objc_msgSend(v16, "isListening")}];
  v24[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v19 = [v13 messagePayloadFromDictionary:v18 andIdentifier:128];
  v20 = [v4 replyMessageWithPayload:v19];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_registerForLiveListenUpdates_BOOLValue:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"ax_hearing_should_register_client_key"];
  v7 = [v6 BOOLValue];

  v8 = [v4 client];
  [v8 setWantsUpdates:v7 forIdentifier:512];

  v9 = +[AXHeardController sharedServer];
  v10 = [v9 countOfClientsListeningForIdentifier:512];

  if (v10)
  {
    if (v10 == 1)
    {
      [(AXHAController *)self readLiveListenLevels];
    }
  }

  else
  {
    [(AXDispatchTimer *)self->_liveListenLevelsTimer cancel];
  }

  v11 = MEMORY[0x1E69A4560];
  v12 = MEMORY[0x1E695DF20];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:512];
  v14 = MEMORY[0x1E696AD98];
  v15 = [(AXHAController *)self liveListenController];
  v16 = [v14 numberWithBool:{objc_msgSend(v15, "isListening")}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1024];
  v18 = [v12 dictionaryWithObjectsAndKeys:{&unk_1F5624870, v13, v16, v17, 0}];
  v19 = [v11 messagePayloadFromDictionary:v18 andIdentifier:512];
  v20 = [v4 replyMessageWithPayload:v19];

  return v20;
}

- (id)_toggleLiveListen_enumValue:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKeyedSubscript:&unk_1F5623CB0];
  v7 = [v6 BOOLValue];

  v8 = +[HUNearbyLiveListenController sharedInstance];
  v9 = isLiveListenEnabledForState([v8 state]);

  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v24[0] = 67109376;
    v24[1] = v9;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_INFO, "Toggle Live Listen: %{BOOL}d -> %{BOOL}d", v24, 0xEu);
  }

  if (v7 != v9)
  {
    v11 = +[HUNearbyLiveListenController sharedInstance];
    v12 = v11;
    if (v7)
    {
      [v11 startLiveListen];
      v13 = v4;
    }

    else
    {
      [v11 stopLiveListen];
      v13 = 0;
    }

    [(AXHAController *)self setLiveListenMessage:v13];
  }

  v14 = +[HUNearbyLiveListenController sharedInstance];
  v15 = [v14 state];

  v16 = +[HUNearbyLiveListenController sharedInstance];
  v17 = [v16 isPlayingBack];

  v18 = HCLogHearingAids();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [AXHAController _toggleLiveListen_enumValue:v15];
  }

  v19 = [(AXHAController *)self _liveListenPayloadWithState:v15 audioLevel:v17 isPlayingBack:&stru_1F5614A78 transcription:0.0];
  v20 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v19 andIdentifier:128];
  v21 = [v4 replyMessageWithPayload:v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_registerForLiveListenUpdates_enumValue:(id)a3
{
  v4 = a3;
  v5 = +[AXHeardController sharedServer];
  v6 = [v5 countOfClientsListeningForIdentifier:512];

  v7 = [v4 payload];
  v8 = [v7 objectForKeyedSubscript:@"ax_hearing_should_register_client_key"];
  v9 = [v8 BOOLValue];

  v10 = [(AXHAController *)self liveListenCountsPerClient];
  v11 = MEMORY[0x1E696AD98];
  v12 = [v4 client];
  v13 = [v11 numberWithInt:{objc_msgSend(v12, "pid")}];
  v14 = [v10 objectForKey:v13];
  v15 = [v14 intValue];

  if (v9)
  {
    v16 = (v15 + 1);
  }

  else
  {
    v16 = (v15 - 1);
  }

  v17 = [(AXHAController *)self liveListenCountsPerClient];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v16];
  v19 = MEMORY[0x1E696AD98];
  v20 = [v4 client];
  v21 = [v19 numberWithInt:{objc_msgSend(v20, "pid")}];
  [v17 setObject:v18 forKey:v21];

  if ((v9 & 1) != 0 || !v16)
  {
    v22 = [v4 client];
    [v22 setWantsUpdates:v9 forIdentifier:512];
  }

  v23 = +[AXHeardController sharedServer];
  v24 = [v23 countOfClientsListeningForIdentifier:512];

  if (v24 != 1 || v6)
  {
    if (v24)
    {
      goto LABEL_19;
    }

    v27 = +[HUNearbyLiveListenController sharedInstance];
    v26 = [v27 deviceImplementation];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (+[HUNearbyController sharedInstance](HUNearbyController, "sharedInstance"), v28 = objc_claimAutoreleasedReturnValue(), [v28 nearbyDevices], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count"), v29, v28, !v30))
    {
      v31 = HCLogHearingAids();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v31, OS_LOG_TYPE_INFO, "Removing listener for Live Listen state updates", buf, 2u);
      }

      v32 = +[HUNearbyLiveListenController sharedInstance];
      [v32 registerUpdateBlock:0 withListener:self];
    }
  }

  else
  {
    v25 = HCLogHearingAids();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v25, OS_LOG_TYPE_DEFAULT, "Registering for Live Listen state updates", buf, 2u);
    }

    v26 = +[HUNearbyLiveListenController sharedInstance];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __58__AXHAController__registerForLiveListenUpdates_enumValue___block_invoke;
    v44[3] = &unk_1E85CB8C0;
    v44[4] = self;
    [v26 registerUpdateBlock:v44 withListener:self];
  }

LABEL_19:
  v33 = +[HUNearbyLiveListenController sharedInstance];
  v34 = [v33 state];

  v35 = +[HUNearbyLiveListenController sharedInstance];
  v36 = [v35 isPlayingBack];

  v37 = +[HUNearbyLiveListenController sharedInstance];
  v38 = [v37 transcription];

  v39 = HCLogHearingAids();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    [AXHAController _toggleLiveListen_enumValue:v34];
  }

  if (v34)
  {
    v40 = [(AXHAController *)self _liveListenPayloadWithState:v34 audioLevel:v36 isPlayingBack:v38 transcription:0.0];
    v41 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v40 andIdentifier:512];
    v42 = [v4 replyMessageWithPayload:v41];
  }

  else
  {
    v40 = HCLogHearingAids();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v40, OS_LOG_TYPE_INFO, "Not sending an XPC reply. The initial state value hasn't been set yet.", buf, 2u);
    }

    v42 = 0;
  }

  return v42;
}

void __58__AXHAController__registerForLiveListenUpdates_enumValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v9 = a4;
  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __58__AXHAController__registerForLiveListenUpdates_enumValue___block_invoke_cold_1(a2);
  }

  *&v11 = a5;
  v12 = [*(a1 + 32) _liveListenPayloadWithState:a2 audioLevel:a3 isPlayingBack:v9 transcription:v11];

  v13 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v12 andIdentifier:512];
  v14 = +[AXHeardController sharedServer];
  v15 = [MEMORY[0x1E69A4570] messageWithPayload:v13];
  [v14 sendUpdateMessage:v15 forIdentifier:512];
}

- (id)toggleLiveListenRewind:(id)a3
{
  v3 = [a3 payload];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x2000000];
  v5 = [v3 objectForKey:v4];
  v6 = [v5 BOOLValue];

  v7 = +[HUNearbyLiveListenController sharedInstance];
  v8 = v7;
  if (v6)
  {
    [v7 startLiveListenRewind];
  }

  else
  {
    [v7 stopLiveListenRewind];
  }

  return 0;
}

- (id)observeRemoteLiveListenUpdates:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKey:@"ax_hearing_should_register_client_key"];
  v5 = [v4 BOOLValue];

  v6 = +[HUNearbyLiveListenController sharedInstance];
  v7 = [v6 deviceImplementation];
  v8 = v7;
  if (v5)
  {
    [v7 startObservingRemoteSession];
  }

  else
  {
    [v7 stopObservingRemoteSession];
  }

  return 0;
}

- (id)sendMessagesPriority:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 payload];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x20000];
  v6 = [v4 objectForKey:v5];
  v7 = [v6 BOOLValue];

  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 client];
    v14[0] = 67109376;
    v14[1] = v7;
    v15 = 1024;
    v16 = [v9 pid];
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "XPC received MessagesPriority isHigh: %d for client: %d", v14, 0xEu);
  }

  v10 = +[HUNearbyHearingAidController sharedInstance];
  v11 = [v3 client];
  if (v7)
  {
    [v10 sendMessagesPriorityHighForClient:v11];
  }

  else
  {
    [v10 sendMessagesPriorityDefaultForClient:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_toggleLiveListen_enumValue:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = liveListenStateDescription(a1);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __58__AXHAController__registerForLiveListenUpdates_enumValue___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = liveListenStateDescription(a1);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end