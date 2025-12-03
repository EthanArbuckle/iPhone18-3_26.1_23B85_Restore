@interface MRUMirroringController
+ (id)mirroringControllerWithAudioRoutingSupport;
+ (id)symbolNameForOutputDevice:(id)device;
- (MRUMirroringController)init;
- (MRUMirroringControllerDelegate)delegate;
- (id)outputDeviceForID:(id)d;
- (void)addBusyIdentifier:(id)identifier;
- (void)mirrorToOutputDevice:(id)device completion:(id)completion;
- (void)mirroringDiscoverySessionController:(id)controller didChangeAvailableOutputDevices:(id)devices;
- (void)outputContextController:(id)controller didChangeOutputDevice:(id)device;
- (void)pairingHandlerNotification:(id)notification;
- (void)removeBusyIdentifier:(id)identifier;
- (void)selectAudioOutputDevice:(id)device completion:(id)completion;
- (void)startDetailedDiscovery;
- (void)startMirroringToOutputDevice:(id)device completion:(id)completion;
- (void)stopDetailedDiscovery;
- (void)stopMirroringWithCompletion:(id)completion;
- (void)updateAvailableAudioOutputDevices;
- (void)updateAvailableOutputDevices;
- (void)updateSelectedAudioOutputDevice;
- (void)updateSelectedOutputDevice;
@end

@implementation MRUMirroringController

- (MRUMirroringController)init
{
  v11.receiver = self;
  v11.super_class = MRUMirroringController;
  v2 = [(MRUMirroringController *)&v11 init];
  if (v2)
  {
    v2->_tetheredDisplayPortModeEnabled = CFPreferencesGetAppBooleanValue(@"EnableTetheredDisplayPortMode", *MEMORY[0x1E695E890], 0) != 0;
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    busyIdentifiers = v2->_busyIdentifiers;
    v2->_busyIdentifiers = v3;

    v5 = [[MRUDiscoverySessionController alloc] initWithDeviceFeatures:2];
    outputDeviceDiscoverySessionController = v2->_outputDeviceDiscoverySessionController;
    v2->_outputDeviceDiscoverySessionController = v5;

    [(MRUDiscoverySessionController *)v2->_outputDeviceDiscoverySessionController setDelegate:v2];
    v7 = [[MRUOutputContextController alloc] initWithOutputContextType:1];
    outputContextController = v2->_outputContextController;
    v2->_outputContextController = v7;

    [(MRUOutputContextController *)v2->_outputContextController setDelegate:v2];
    MRMediaRemoteSetWantsRouteChangeNotifications();
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_pairingHandlerNotification_ name:*MEMORY[0x1E69B1290] object:0];

    [(MRUMirroringController *)v2 updateSelectedOutputDevice];
  }

  return v2;
}

+ (id)mirroringControllerWithAudioRoutingSupport
{
  v2 = objc_alloc_init(self);
  v3 = [[MRUDiscoverySessionController alloc] initWithDeviceFeatures:1];
  [v2 setAudioDiscoverySessionController:v3];

  audioDiscoverySessionController = [v2 audioDiscoverySessionController];
  [audioDiscoverySessionController setDelegate:v2];

  v5 = [[MRUOutputContextController alloc] initWithOutputContextType:0];
  [v2 setAudioContextController:v5];

  audioContextController = [v2 audioContextController];
  [audioContextController setDelegate:v2];

  return v2;
}

+ (id)symbolNameForOutputDevice:(id)device
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (device)
  {
    v3 = MRAVOutputDeviceCreateFromAVOutputDevice();
    v4 = objc_alloc(MEMORY[0x1E6970470]);
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [v4 initWithOutputDevices:v5];

    CFRelease(v3);
    v7 = [MEMORY[0x1E6970490] _symbolNameForRoute:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)startMirroringToOutputDevice:(id)device completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E69B0AE0]);
  v9 = [v8 initWithSurface:*MEMORY[0x1E69B08F8] initiator:*MEMORY[0x1E69B0968] reason:0];
  deviceID = [deviceCopy deviceID];
  if (deviceID && ([(NSMutableSet *)self->_busyIdentifiers containsObject:deviceID]& 1) == 0)
  {
    [(MRUMirroringController *)self addBusyIdentifier:deviceID];
    v11 = _MCSLogCategoryMirroring();
    operationID = [v9 operationID];
    v13 = [operationID hash];

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      name = [deviceCopy name];
      deviceID2 = [deviceCopy deviceID];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(deviceCopy, "deviceType")}];
      *buf = 138478339;
      v38 = name;
      v39 = 2114;
      v40 = deviceID2;
      v41 = 2114;
      v42 = v16;
      _os_signpost_emit_with_name_impl(&dword_1A20FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MirroringActivation", "START OPERATION DETAILS || outputDevice - deviceName:%{private}@, deviceID:%{public}@, deviceType:%{public}@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = _MPAVLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        deviceID3 = [deviceCopy deviceID];
        *buf = 138543618;
        v38 = v20;
        v39 = 2114;
        v40 = deviceID3;
        _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ start mirroring to device %{public}@", buf, 0x16u);
      }

      v22 = _MCSLogCategoryMirroring();
      operationID2 = [v9 operationID];
      v24 = [operationID2 hash];

      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        name2 = [deviceCopy name];
        deviceID4 = [deviceCopy deviceID];
        v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(deviceCopy, "deviceType")}];
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(deviceCopy, "deviceSubType")}];
        *buf = 138478595;
        v38 = name2;
        v39 = 2114;
        v40 = deviceID4;
        v41 = 2114;
        v42 = v25;
        v43 = 2114;
        v44 = v26;
        _os_signpost_emit_with_name_impl(&dword_1A20FC000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "MirroringActivation", "START OPERATION DETAILS || startedMirroringToOutputDevice - deviceName:%{private}@, deviceID:%{public}@, deviceType:%{public}@, deviceSubType:%{public}@", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      v27 = MEMORY[0x1E69E96A0];
      objc_copyWeak(&v36, buf);
      v33 = deviceCopy;
      v35 = completionCopy;
      v34 = v9;
      MRMediaRemoteRegisterPairingHandler();

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    else
    {
      [(MRUMirroringController *)self mirrorToOutputDevice:deviceCopy completion:completionCopy];
      v28 = _MCSLogCategoryMirroring();
      operationID3 = [v9 operationID];
      v30 = [operationID3 hash];

      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A20FC000, v28, OS_SIGNPOST_INTERVAL_END, v30, "MirroringActivation", "", buf, 2u);
      }
    }
  }
}

void __66__MRUMirroringController_startMirroringToOutputDevice_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MRUMirroringController_startMirroringToOutputDevice_completion___block_invoke_2;
  v4[3] = &unk_1E7663E20;
  v5 = v3;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [WeakRetained mirrorToOutputDevice:v5 completion:v4];
}

void __66__MRUMirroringController_startMirroringToOutputDevice_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) deviceID];
  MRMediaRemoteUnregisterPairingHandler();

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  v6 = _MCSLogCategoryMirroring();
  v7 = [*(a1 + 40) operationID];
  v8 = [v7 hash];

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v6, OS_SIGNPOST_INTERVAL_END, v8, "MirroringActivation", "", v9, 2u);
  }
}

- (void)mirrorToOutputDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  outputContextController = self->_outputContextController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__MRUMirroringController_mirrorToOutputDevice_completion___block_invoke;
  v11[3] = &unk_1E7663E70;
  objc_copyWeak(&v14, &location);
  v9 = deviceCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [(MRUOutputContextController *)outputContextController setOutputDevice:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __58__MRUMirroringController_mirrorToOutputDevice_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) deviceID];
  [WeakRetained removeBusyIdentifier:v4];

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }
}

- (void)stopMirroringWithCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E69B0AE0]);
  v6 = [v5 initWithSurface:*MEMORY[0x1E69B08F8] initiator:*MEMORY[0x1E69B0968] reason:0];
  v7 = _MPAVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    selectedOutputDevice = [(MRUMirroringController *)self selectedOutputDevice];
    deviceID = [selectedOutputDevice deviceID];
    *buf = 138543618;
    v29 = v8;
    v30 = 2114;
    v31 = deviceID;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ stop mirroring to device %{public}@", buf, 0x16u);
  }

  v11 = _MCSLogCategoryMirroring();
  operationID = [v6 operationID];
  v13 = [operationID hash];

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    selectedOutputDevice2 = [(MRUMirroringController *)self selectedOutputDevice];
    name = [selectedOutputDevice2 name];
    selectedOutputDevice3 = [(MRUMirroringController *)self selectedOutputDevice];
    deviceID2 = [selectedOutputDevice3 deviceID];
    v17 = MEMORY[0x1E696AD98];
    selectedOutputDevice4 = [(MRUMirroringController *)self selectedOutputDevice];
    v19 = [v17 numberWithInteger:{objc_msgSend(selectedOutputDevice4, "deviceType")}];
    *buf = 138478339;
    v29 = name;
    v30 = 2114;
    v31 = deviceID2;
    v32 = 2114;
    v33 = v19;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MirroringDeactivation", "START OPERATION DETAILS || stoppedMirroringToOutputDevice - deviceName:%{private}@, deviceID:%{public}@, deviceType:%{public}@", buf, 0x20u);
  }

  outputContextController = self->_outputContextController;
  mEMORY[0x1E6958800] = [MEMORY[0x1E6958800] sharedLocalDevice];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__MRUMirroringController_stopMirroringWithCompletion___block_invoke;
  v25[3] = &unk_1E7663E98;
  v26 = v6;
  v27 = completionCopy;
  v22 = v6;
  v23 = completionCopy;
  [(MRUOutputContextController *)outputContextController setOutputDevice:mEMORY[0x1E6958800] completion:v25];
}

void __54__MRUMirroringController_stopMirroringWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = _MCSLogCategoryMirroring();
  v4 = [*(a1 + 32) operationID];
  v5 = [v4 hash];

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v3, OS_SIGNPOST_INTERVAL_END, v5, "MirroringDeactivation", "", v6, 2u);
  }
}

- (void)selectAudioOutputDevice:(id)device completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  completionCopy = completion;
  v8 = _MPAVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    selectedOutputDevice = [(MRUMirroringController *)self selectedOutputDevice];
    deviceID = [selectedOutputDevice deviceID];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = deviceID;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ change audio destination to %{public}@", buf, 0x16u);
  }

  deviceID2 = [deviceCopy deviceID];
  if (deviceID2 && ([(NSMutableSet *)self->_busyIdentifiers containsObject:deviceID2]& 1) == 0)
  {
    [(MRUMirroringController *)self addBusyIdentifier:deviceID2];
    objc_initWeak(buf, self);
    audioContextController = self->_audioContextController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__MRUMirroringController_selectAudioOutputDevice_completion___block_invoke;
    v14[3] = &unk_1E7663E70;
    objc_copyWeak(&v17, buf);
    v15 = deviceCopy;
    v16 = completionCopy;
    [(MRUOutputContextController *)audioContextController setOutputDevice:v15 completion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __61__MRUMirroringController_selectAudioOutputDevice_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) deviceID];
  [WeakRetained removeBusyIdentifier:v4];

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }
}

- (void)startDetailedDiscovery
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = _MPAVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = objc_opt_class();
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ start detailed discovery", &v16, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x1E69B0AE0]);
  v5 = [v4 initWithSurface:*MEMORY[0x1E69B08F8] initiator:*MEMORY[0x1E69B0968] reason:0];
  [(MRUMirroringController *)self setDetailedDiscoveryOperation:v5];

  v6 = _MCSLogCategoryMirroring();
  detailedDiscoveryOperation = [(MRUMirroringController *)self detailedDiscoveryOperation];
  operationID = [detailedDiscoveryOperation operationID];
  v9 = [operationID hash];

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v10 = MEMORY[0x1E696AD98];
    availableOutputDevices = [(MRUDiscoverySessionController *)self->_outputDeviceDiscoverySessionController availableOutputDevices];
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(availableOutputDevices, "count")}];
    v13 = MEMORY[0x1E696AD98];
    availableOutputDevices2 = [(MRUDiscoverySessionController *)self->_audioDiscoverySessionController availableOutputDevices];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(availableOutputDevices2, "count")}];
    v16 = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v15;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DetailedDiscoverySession", "START OPERATION DETAILS || availableOutputDevices - devicesAvailable:%{public}@, availableOutputAudioDevices - devicesAvailable:%{public}@", &v16, 0x16u);
  }

  [(MRUDiscoverySessionController *)self->_outputDeviceDiscoverySessionController startDetailedDiscovery];
  [(MRUDiscoverySessionController *)self->_audioDiscoverySessionController startDetailedDiscovery];
}

- (void)stopDetailedDiscovery
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _MPAVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stop detailed discovery", &v8, 0xCu);
  }

  v4 = _MCSLogCategoryMirroring();
  detailedDiscoveryOperation = [(MRUMirroringController *)self detailedDiscoveryOperation];
  operationID = [detailedDiscoveryOperation operationID];
  v7 = [operationID hash];

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v4, OS_SIGNPOST_INTERVAL_END, v7, "DetailedDiscoverySession", "", &v8, 2u);
  }

  [(MRUDiscoverySessionController *)self->_outputDeviceDiscoverySessionController stopDetailedDiscovery];
  [(MRUDiscoverySessionController *)self->_audioDiscoverySessionController stopDetailedDiscovery];
}

- (void)pairingHandlerNotification:(id)notification
{
  v30 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B1298]];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"inputType"];
  integerValue = [v8 integerValue];

  v10 = _MPAVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    busyIdentifiers = self->_busyIdentifiers;
    *buf = 138544130;
    v23 = v11;
    v24 = 2114;
    v25 = v6;
    v26 = 2048;
    v27 = integerValue;
    v28 = 2114;
    v29 = busyIdentifiers;
    _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received pairing request for %{public}@ | inputType: %li | requests: %{public}@", buf, 0x2Au);
  }

  v13 = _MCSLogCategoryMirroring();
  v14 = os_signpost_id_generate(v13);

  v15 = _MCSLogCategoryMirroring();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    userInfo3 = [notificationCopy userInfo];
    *buf = 138543618;
    v23 = v6;
    v24 = 2112;
    v25 = userInfo3;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v16, OS_SIGNPOST_EVENT, v14, "PairingHandlerNotificationRequest", "EVENT DETAILS || requestedDeviceId:%{public}@, notificationUserInfo:%@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MRUMirroringController_pairingHandlerNotification___block_invoke;
  block[3] = &unk_1E7663EC0;
  block[4] = self;
  v20 = v6;
  v21 = integerValue != 1;
  v18 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __53__MRUMirroringController_pairingHandlerNotification___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) outputDeviceForID:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  if (v5)
  {
    v3 = [*(a1 + 32) busyIdentifiers];
    if ([(MRUMirroringAuthorizationRequest *)v3 containsObject:*(a1 + 40)])
    {
      v4 = objc_opt_respondsToSelector();

      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }

      v3 = [(MRUPairingAuthorizationRequest *)[MRUMirroringAuthorizationRequest alloc] initWithOutputDevice:v5 inputType:*(a1 + 48)];
      [v2 mirroringController:*(a1 + 32) didReceiveAuthorizationRequest:v3];
    }
  }

LABEL_6:
}

- (void)outputContextController:(id)controller didChangeOutputDevice:(id)device
{
  controllerCopy = controller;
  deviceID = [device deviceID];
  [(MRUMirroringController *)self removeBusyIdentifier:deviceID];

  outputContextController = self->_outputContextController;
  if (outputContextController == controllerCopy)
  {

    [(MRUMirroringController *)self updateSelectedOutputDevice];
  }

  else
  {
    [(MRUMirroringController *)self updateSelectedAudioOutputDevice];

    [(MRUMirroringController *)self updateAvailableAudioOutputDevices];
  }
}

- (void)mirroringDiscoverySessionController:(id)controller didChangeAvailableOutputDevices:(id)devices
{
  if (self->_outputDeviceDiscoverySessionController == controller)
  {
    [(MRUMirroringController *)self updateAvailableOutputDevices];
  }

  else
  {
    [(MRUMirroringController *)self updateAvailableAudioOutputDevices];
  }
}

- (void)updateSelectedOutputDevice
{
  v29 = *MEMORY[0x1E69E9840];
  outputDevice = [(MRUOutputContextController *)self->_outputContextController outputDevice];
  if (self->_tetheredDisplayPortModeEnabled)
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x1E6958800] = [MEMORY[0x1E6958800] sharedLocalDevice];
    if ([outputDevice isEqual:mEMORY[0x1E6958800]])
    {
      v6 = 0;
    }

    else
    {
      v6 = outputDevice;
    }

    v4 = v6;

    outputDevice = mEMORY[0x1E6958800];
  }

  p_selectedOutputDevice = &self->_selectedOutputDevice;
  if (([v4 isEqual:self->_selectedOutputDevice] & 1) == 0)
  {
    v8 = _MPAVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      deviceID = [v4 deviceID];
      deviceID2 = [(AVOutputDevice *)self->_selectedOutputDevice deviceID];
      v21 = 138543874;
      v22 = v9;
      v23 = 2114;
      v24 = deviceID;
      v25 = 2114;
      v26 = deviceID2;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ update selected output device: %{public}@ | previous: %{public}@", &v21, 0x20u);
    }

    v12 = _MCSLogCategoryMirroring();
    v13 = os_signpost_id_generate(v12);

    v14 = _MCSLogCategoryMirroring();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      deviceName = [v4 deviceName];
      deviceID3 = [v4 deviceID];
      deviceName2 = [(AVOutputDevice *)*p_selectedOutputDevice deviceName];
      deviceID4 = [(AVOutputDevice *)*p_selectedOutputDevice deviceID];
      v21 = 138478595;
      v22 = deviceName;
      v23 = 2114;
      v24 = deviceID3;
      v25 = 2113;
      v26 = deviceName2;
      v27 = 2114;
      v28 = deviceID4;
      _os_signpost_emit_with_name_impl(&dword_1A20FC000, v15, OS_SIGNPOST_EVENT, v13, "UpdatedSelectedOutputDevice", "EVENT DETAILS || currentOutputDevice - deviceName:%{private}@, deviceID:%{public}@, previouslySelectedOutputDevice - deviceName:%{private}@, deviceID:%{public}@", &v21, 0x2Au);
    }

    objc_storeStrong(&self->_selectedOutputDevice, v4);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mirroringController:self didChangeOutputDevice:v4];
  }
}

- (void)updateSelectedAudioOutputDevice
{
  v25 = *MEMORY[0x1E69E9840];
  outputDevice = [(MRUOutputContextController *)self->_audioContextController outputDevice];
  if (([outputDevice isEqual:self->_selectedAudioOutputDevice] & 1) == 0)
  {
    v4 = _MPAVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      deviceID = [outputDevice deviceID];
      deviceID2 = [(AVOutputDevice *)self->_selectedAudioOutputDevice deviceID];
      v17 = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = deviceID;
      v21 = 2114;
      v22 = deviceID2;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ update selected audio output device: %{public}@ | previous: %{public}@", &v17, 0x20u);
    }

    v8 = _MCSLogCategoryMirroring();
    v9 = os_signpost_id_generate(v8);

    v10 = _MCSLogCategoryMirroring();
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      deviceName = [outputDevice deviceName];
      deviceID3 = [outputDevice deviceID];
      deviceName2 = [(AVOutputDevice *)self->_selectedAudioOutputDevice deviceName];
      deviceID4 = [(AVOutputDevice *)self->_selectedOutputDevice deviceID];
      v17 = 138478595;
      v18 = deviceName;
      v19 = 2114;
      v20 = deviceID3;
      v21 = 2113;
      v22 = deviceName2;
      v23 = 2114;
      v24 = deviceID4;
      _os_signpost_emit_with_name_impl(&dword_1A20FC000, v11, OS_SIGNPOST_EVENT, v9, "UpdatedSelectedOutputDevice", "EVENT DETAILS || currentAudioOutputDevice - deviceName:%{private}@, deviceID:%{public}@, previouslySelectedAudioOutputDevice - deviceName:%{private}@, deviceID:%{public}@", &v17, 0x2Au);
    }

    objc_storeStrong(&self->_selectedAudioOutputDevice, outputDevice);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained mirroringController:self didChangeAudioOutputDevice:outputDevice];
    }
  }
}

- (void)updateAvailableOutputDevices
{
  v46 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E6958800] = [MEMORY[0x1E6958800] sharedLocalDevice];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  availableOutputDevices = [(MRUDiscoverySessionController *)self->_outputDeviceDiscoverySessionController availableOutputDevices];
  v7 = [availableOutputDevices countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(availableOutputDevices);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if (([v11 isEqual:mEMORY[0x1E6958800]] & 1) != 0 || (objc_msgSend(v11, "deviceID"), v12 = objc_claimAutoreleasedReturnValue(), v12, v13 = array, !v12))
        {
          v13 = array2;
        }

        [v13 addObject:v11];
      }

      v8 = [availableOutputDevices countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v8);
  }

  v14 = [array copy];
  availableOutputDevices = self->_availableOutputDevices;
  self->_availableOutputDevices = v14;

  v16 = _MPAVLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *buf = 138543618;
    v34 = v17;
    v35 = 2114;
    v36 = array;
    _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ update output devices: %{public}@", buf, 0x16u);
  }

  v18 = _MCSLogCategoryMirroring();
  detailedDiscoveryOperation = [(MRUMirroringController *)self detailedDiscoveryOperation];
  operationID = [detailedDiscoveryOperation operationID];
  v21 = [operationID hash];

  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v28 = [array count];
    v22 = [array valueForKey:@"deviceID"];
    v23 = [array valueForKey:@"deviceName"];
    v27 = [array2 count];
    v24 = [array2 valueForKey:@"deviceID"];
    v25 = [array2 valueForKey:@"deviceName"];
    *buf = 134219267;
    v34 = v28;
    v35 = 2114;
    v36 = v22;
    v37 = 2113;
    v38 = v23;
    v39 = 2048;
    v40 = v27;
    v41 = 2114;
    v42 = v24;
    v43 = 2113;
    v44 = v25;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v18, OS_SIGNPOST_EVENT, v21, "UpdateAvailableOutputDevices", "OPERATION EVENT DETAILS || filteredAvailableOutputDevices - count:%lu, deviceIDs:%{public}@, deviceName:%{private}@, unfilteredAvailableOutputDevices - count:%lu, deviceIDs:%{public}@, deviceName:%{private}@", buf, 0x3Eu);
  }

  delegate = [(MRUMirroringController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mirroringController:self didChangeAvailableOutputDevices:self->_availableOutputDevices];
  }
}

- (void)updateAvailableAudioOutputDevices
{
  v50 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  availableOutputDevices = [(MRUDiscoverySessionController *)self->_audioDiscoverySessionController availableOutputDevices];
  v6 = [availableOutputDevices countByEnumeratingWithState:&v33 objects:v49 count:16];
  v32 = array2;
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(availableOutputDevices);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        deviceID = [v10 deviceID];
        if (!deviceID)
        {
          goto LABEL_12;
        }

        v12 = deviceID;
        selectedOutputDevice = [(MRUMirroringController *)self selectedOutputDevice];
        if (([v10 isEqual:selectedOutputDevice] & 1) != 0 || objc_msgSend(v10, "deviceType") == 1 || objc_msgSend(v10, "deviceType") == 3)
        {

          v14 = array;
          goto LABEL_13;
        }

        deviceType = [v10 deviceType];

        v14 = array;
        v16 = deviceType == 4;
        array2 = v32;
        if (!v16)
        {
LABEL_12:
          v14 = array2;
        }

LABEL_13:
        [v14 addObject:v10];
      }

      v7 = [availableOutputDevices countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v7);
  }

  v17 = [array copy];
  availableAudioOutputDevices = self->_availableAudioOutputDevices;
  self->_availableAudioOutputDevices = v17;

  v19 = _MPAVLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    *buf = 138543618;
    v38 = v20;
    v39 = 2114;
    v40 = array;
    _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ update audio output devices: %{public}@", buf, 0x16u);
  }

  v21 = _MCSLogCategoryMirroring();
  detailedDiscoveryOperation = [(MRUMirroringController *)self detailedDiscoveryOperation];
  operationID = [detailedDiscoveryOperation operationID];
  v24 = [operationID hash];

  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v25 = [array count];
    v26 = [array valueForKey:@"deviceID"];
    v27 = [array valueForKey:@"deviceName"];
    v28 = [v32 count];
    v29 = [v32 valueForKey:@"deviceID"];
    v30 = [v32 valueForKey:@"deviceName"];
    *buf = 134219267;
    v38 = v25;
    array2 = v32;
    v39 = 2114;
    v40 = v26;
    v41 = 2113;
    v42 = v27;
    v43 = 2048;
    v44 = v28;
    v45 = 2114;
    v46 = v29;
    v47 = 2113;
    v48 = v30;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v21, OS_SIGNPOST_EVENT, v24, "UpdateAvailableAudioOutputDevices", "OPERATION EVENT DETAILS || availableAudioOutputDevices - count:%lu, deviceIDs:%{public}@, deviceName:%{private}@, unfilteredAvailableOutputDevices - count:%lu, deviceIDs:%{public}@, deviceName:%{private}@", buf, 0x3Eu);
  }

  delegate = [(MRUMirroringController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mirroringController:self didChangeAvailableOutputDevices:self->_availableAudioOutputDevices];
  }
}

- (void)addBusyIdentifier:(id)identifier
{
  if (identifier)
  {
    [(NSMutableSet *)self->_busyIdentifiers addObject:?];
    delegate = [(MRUMirroringController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained mirroringController:self didUpdateBusyIdenifiers:self->_busyIdentifiers];
    }
  }
}

- (void)removeBusyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(NSMutableSet *)self->_busyIdentifiers count]== 1)
  {
    [(NSMutableSet *)self->_busyIdentifiers removeAllObjects];
  }

  else if (identifierCopy)
  {
    [(NSMutableSet *)self->_busyIdentifiers removeObject:identifierCopy];
  }

  delegate = [(MRUMirroringController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mirroringController:self didUpdateBusyIdenifiers:self->_busyIdentifiers];
  }
}

- (id)outputDeviceForID:(id)d
{
  dCopy = d;
  availableOutputDevices = [(MRUMirroringController *)self availableOutputDevices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MRUMirroringController_outputDeviceForID___block_invoke;
  v9[3] = &unk_1E7663EE8;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [availableOutputDevices msv_firstWhere:v9];

  return v7;
}

uint64_t __44__MRUMirroringController_outputDeviceForID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 deviceID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (MRUMirroringControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end