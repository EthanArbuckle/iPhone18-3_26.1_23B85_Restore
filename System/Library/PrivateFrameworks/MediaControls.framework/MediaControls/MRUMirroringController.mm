@interface MRUMirroringController
+ (id)mirroringControllerWithAudioRoutingSupport;
+ (id)symbolNameForOutputDevice:(id)a3;
- (MRUMirroringController)init;
- (MRUMirroringControllerDelegate)delegate;
- (id)outputDeviceForID:(id)a3;
- (void)addBusyIdentifier:(id)a3;
- (void)mirrorToOutputDevice:(id)a3 completion:(id)a4;
- (void)mirroringDiscoverySessionController:(id)a3 didChangeAvailableOutputDevices:(id)a4;
- (void)outputContextController:(id)a3 didChangeOutputDevice:(id)a4;
- (void)pairingHandlerNotification:(id)a3;
- (void)removeBusyIdentifier:(id)a3;
- (void)selectAudioOutputDevice:(id)a3 completion:(id)a4;
- (void)startDetailedDiscovery;
- (void)startMirroringToOutputDevice:(id)a3 completion:(id)a4;
- (void)stopDetailedDiscovery;
- (void)stopMirroringWithCompletion:(id)a3;
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
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel_pairingHandlerNotification_ name:*MEMORY[0x1E69B1290] object:0];

    [(MRUMirroringController *)v2 updateSelectedOutputDevice];
  }

  return v2;
}

+ (id)mirroringControllerWithAudioRoutingSupport
{
  v2 = objc_alloc_init(a1);
  v3 = [[MRUDiscoverySessionController alloc] initWithDeviceFeatures:1];
  [v2 setAudioDiscoverySessionController:v3];

  v4 = [v2 audioDiscoverySessionController];
  [v4 setDelegate:v2];

  v5 = [[MRUOutputContextController alloc] initWithOutputContextType:0];
  [v2 setAudioContextController:v5];

  v6 = [v2 audioContextController];
  [v6 setDelegate:v2];

  return v2;
}

+ (id)symbolNameForOutputDevice:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
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

- (void)startMirroringToOutputDevice:(id)a3 completion:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E69B0AE0]);
  v9 = [v8 initWithSurface:*MEMORY[0x1E69B08F8] initiator:*MEMORY[0x1E69B0968] reason:0];
  v10 = [v6 deviceID];
  if (v10 && ([(NSMutableSet *)self->_busyIdentifiers containsObject:v10]& 1) == 0)
  {
    [(MRUMirroringController *)self addBusyIdentifier:v10];
    v11 = _MCSLogCategoryMirroring();
    v12 = [v9 operationID];
    v13 = [v12 hash];

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = [v6 name];
      v15 = [v6 deviceID];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "deviceType")}];
      *buf = 138478339;
      v38 = v14;
      v39 = 2114;
      v40 = v15;
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
        v21 = [v6 deviceID];
        *buf = 138543618;
        v38 = v20;
        v39 = 2114;
        v40 = v21;
        _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ start mirroring to device %{public}@", buf, 0x16u);
      }

      v22 = _MCSLogCategoryMirroring();
      v23 = [v9 operationID];
      v24 = [v23 hash];

      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        v32 = [v6 name];
        v31 = [v6 deviceID];
        v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "deviceType")}];
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "deviceSubType")}];
        *buf = 138478595;
        v38 = v32;
        v39 = 2114;
        v40 = v31;
        v41 = 2114;
        v42 = v25;
        v43 = 2114;
        v44 = v26;
        _os_signpost_emit_with_name_impl(&dword_1A20FC000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "MirroringActivation", "START OPERATION DETAILS || startedMirroringToOutputDevice - deviceName:%{private}@, deviceID:%{public}@, deviceType:%{public}@, deviceSubType:%{public}@", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      v27 = MEMORY[0x1E69E96A0];
      objc_copyWeak(&v36, buf);
      v33 = v6;
      v35 = v7;
      v34 = v9;
      MRMediaRemoteRegisterPairingHandler();

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    else
    {
      [(MRUMirroringController *)self mirrorToOutputDevice:v6 completion:v7];
      v28 = _MCSLogCategoryMirroring();
      v29 = [v9 operationID];
      v30 = [v29 hash];

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

- (void)mirrorToOutputDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  outputContextController = self->_outputContextController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__MRUMirroringController_mirrorToOutputDevice_completion___block_invoke;
  v11[3] = &unk_1E7663E70;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
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

- (void)stopMirroringWithCompletion:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69B0AE0]);
  v6 = [v5 initWithSurface:*MEMORY[0x1E69B08F8] initiator:*MEMORY[0x1E69B0968] reason:0];
  v7 = _MPAVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [(MRUMirroringController *)self selectedOutputDevice];
    v10 = [v9 deviceID];
    *buf = 138543618;
    v29 = v8;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ stop mirroring to device %{public}@", buf, 0x16u);
  }

  v11 = _MCSLogCategoryMirroring();
  v12 = [v6 operationID];
  v13 = [v12 hash];

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v24 = [(MRUMirroringController *)self selectedOutputDevice];
    v14 = [v24 name];
    v15 = [(MRUMirroringController *)self selectedOutputDevice];
    v16 = [v15 deviceID];
    v17 = MEMORY[0x1E696AD98];
    v18 = [(MRUMirroringController *)self selectedOutputDevice];
    v19 = [v17 numberWithInteger:{objc_msgSend(v18, "deviceType")}];
    *buf = 138478339;
    v29 = v14;
    v30 = 2114;
    v31 = v16;
    v32 = 2114;
    v33 = v19;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MirroringDeactivation", "START OPERATION DETAILS || stoppedMirroringToOutputDevice - deviceName:%{private}@, deviceID:%{public}@, deviceType:%{public}@", buf, 0x20u);
  }

  outputContextController = self->_outputContextController;
  v21 = [MEMORY[0x1E6958800] sharedLocalDevice];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__MRUMirroringController_stopMirroringWithCompletion___block_invoke;
  v25[3] = &unk_1E7663E98;
  v26 = v6;
  v27 = v4;
  v22 = v6;
  v23 = v4;
  [(MRUOutputContextController *)outputContextController setOutputDevice:v21 completion:v25];
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

- (void)selectAudioOutputDevice:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _MPAVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = [(MRUMirroringController *)self selectedOutputDevice];
    v11 = [v10 deviceID];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ change audio destination to %{public}@", buf, 0x16u);
  }

  v12 = [v6 deviceID];
  if (v12 && ([(NSMutableSet *)self->_busyIdentifiers containsObject:v12]& 1) == 0)
  {
    [(MRUMirroringController *)self addBusyIdentifier:v12];
    objc_initWeak(buf, self);
    audioContextController = self->_audioContextController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__MRUMirroringController_selectAudioOutputDevice_completion___block_invoke;
    v14[3] = &unk_1E7663E70;
    objc_copyWeak(&v17, buf);
    v15 = v6;
    v16 = v7;
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
  v7 = [(MRUMirroringController *)self detailedDiscoveryOperation];
  v8 = [v7 operationID];
  v9 = [v8 hash];

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [(MRUDiscoverySessionController *)self->_outputDeviceDiscoverySessionController availableOutputDevices];
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    v13 = MEMORY[0x1E696AD98];
    v14 = [(MRUDiscoverySessionController *)self->_audioDiscoverySessionController availableOutputDevices];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
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
  v5 = [(MRUMirroringController *)self detailedDiscoveryOperation];
  v6 = [v5 operationID];
  v7 = [v6 hash];

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v4, OS_SIGNPOST_INTERVAL_END, v7, "DetailedDiscoverySession", "", &v8, 2u);
  }

  [(MRUDiscoverySessionController *)self->_outputDeviceDiscoverySessionController stopDetailedDiscovery];
  [(MRUDiscoverySessionController *)self->_audioDiscoverySessionController stopDetailedDiscovery];
}

- (void)pairingHandlerNotification:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B1298]];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"inputType"];
  v9 = [v8 integerValue];

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
    v27 = v9;
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
    v17 = [v4 userInfo];
    *buf = 138543618;
    v23 = v6;
    v24 = 2112;
    v25 = v17;
    _os_signpost_emit_with_name_impl(&dword_1A20FC000, v16, OS_SIGNPOST_EVENT, v14, "PairingHandlerNotificationRequest", "EVENT DETAILS || requestedDeviceId:%{public}@, notificationUserInfo:%@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MRUMirroringController_pairingHandlerNotification___block_invoke;
  block[3] = &unk_1E7663EC0;
  block[4] = self;
  v20 = v6;
  v21 = v9 != 1;
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

- (void)outputContextController:(id)a3 didChangeOutputDevice:(id)a4
{
  v6 = a3;
  v7 = [a4 deviceID];
  [(MRUMirroringController *)self removeBusyIdentifier:v7];

  outputContextController = self->_outputContextController;
  if (outputContextController == v6)
  {

    [(MRUMirroringController *)self updateSelectedOutputDevice];
  }

  else
  {
    [(MRUMirroringController *)self updateSelectedAudioOutputDevice];

    [(MRUMirroringController *)self updateAvailableAudioOutputDevices];
  }
}

- (void)mirroringDiscoverySessionController:(id)a3 didChangeAvailableOutputDevices:(id)a4
{
  if (self->_outputDeviceDiscoverySessionController == a3)
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
  v3 = [(MRUOutputContextController *)self->_outputContextController outputDevice];
  if (self->_tetheredDisplayPortModeEnabled)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E6958800] sharedLocalDevice];
    if ([v3 isEqual:v5])
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }

    v4 = v6;

    v3 = v5;
  }

  p_selectedOutputDevice = &self->_selectedOutputDevice;
  if (([v4 isEqual:self->_selectedOutputDevice] & 1) == 0)
  {
    v8 = _MPAVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = [v4 deviceID];
      v11 = [(AVOutputDevice *)self->_selectedOutputDevice deviceID];
      v21 = 138543874;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ update selected output device: %{public}@ | previous: %{public}@", &v21, 0x20u);
    }

    v12 = _MCSLogCategoryMirroring();
    v13 = os_signpost_id_generate(v12);

    v14 = _MCSLogCategoryMirroring();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = [v4 deviceName];
      v17 = [v4 deviceID];
      v18 = [(AVOutputDevice *)*p_selectedOutputDevice deviceName];
      v19 = [(AVOutputDevice *)*p_selectedOutputDevice deviceID];
      v21 = 138478595;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2113;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
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
  v3 = [(MRUOutputContextController *)self->_audioContextController outputDevice];
  if (([v3 isEqual:self->_selectedAudioOutputDevice] & 1) == 0)
  {
    v4 = _MPAVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = [v3 deviceID];
      v7 = [(AVOutputDevice *)self->_selectedAudioOutputDevice deviceID];
      v17 = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ update selected audio output device: %{public}@ | previous: %{public}@", &v17, 0x20u);
    }

    v8 = _MCSLogCategoryMirroring();
    v9 = os_signpost_id_generate(v8);

    v10 = _MCSLogCategoryMirroring();
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = [v3 deviceName];
      v13 = [v3 deviceID];
      v14 = [(AVOutputDevice *)self->_selectedAudioOutputDevice deviceName];
      v15 = [(AVOutputDevice *)self->_selectedOutputDevice deviceID];
      v17 = 138478595;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2113;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      _os_signpost_emit_with_name_impl(&dword_1A20FC000, v11, OS_SIGNPOST_EVENT, v9, "UpdatedSelectedOutputDevice", "EVENT DETAILS || currentAudioOutputDevice - deviceName:%{private}@, deviceID:%{public}@, previouslySelectedAudioOutputDevice - deviceName:%{private}@, deviceID:%{public}@", &v17, 0x2Au);
    }

    objc_storeStrong(&self->_selectedAudioOutputDevice, v3);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained mirroringController:self didChangeAudioOutputDevice:v3];
    }
  }
}

- (void)updateAvailableOutputDevices
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6958800] sharedLocalDevice];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(MRUDiscoverySessionController *)self->_outputDeviceDiscoverySessionController availableOutputDevices];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v45 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if (([v11 isEqual:v3] & 1) != 0 || (objc_msgSend(v11, "deviceID"), v12 = objc_claimAutoreleasedReturnValue(), v12, v13 = v4, !v12))
        {
          v13 = v5;
        }

        [v13 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];
  availableOutputDevices = self->_availableOutputDevices;
  self->_availableOutputDevices = v14;

  v16 = _MPAVLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *buf = 138543618;
    v34 = v17;
    v35 = 2114;
    v36 = v4;
    _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ update output devices: %{public}@", buf, 0x16u);
  }

  v18 = _MCSLogCategoryMirroring();
  v19 = [(MRUMirroringController *)self detailedDiscoveryOperation];
  v20 = [v19 operationID];
  v21 = [v20 hash];

  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v28 = [v4 count];
    v22 = [v4 valueForKey:@"deviceID"];
    v23 = [v4 valueForKey:@"deviceName"];
    v27 = [v5 count];
    v24 = [v5 valueForKey:@"deviceID"];
    v25 = [v5 valueForKey:@"deviceName"];
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

  v26 = [(MRUMirroringController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v26 mirroringController:self didChangeAvailableOutputDevices:self->_availableOutputDevices];
  }
}

- (void)updateAvailableAudioOutputDevices
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(MRUDiscoverySessionController *)self->_audioDiscoverySessionController availableOutputDevices];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v49 count:16];
  v32 = v4;
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 deviceID];
        if (!v11)
        {
          goto LABEL_12;
        }

        v12 = v11;
        v13 = [(MRUMirroringController *)self selectedOutputDevice];
        if (([v10 isEqual:v13] & 1) != 0 || objc_msgSend(v10, "deviceType") == 1 || objc_msgSend(v10, "deviceType") == 3)
        {

          v14 = v3;
          goto LABEL_13;
        }

        v15 = [v10 deviceType];

        v14 = v3;
        v16 = v15 == 4;
        v4 = v32;
        if (!v16)
        {
LABEL_12:
          v14 = v4;
        }

LABEL_13:
        [v14 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v7);
  }

  v17 = [v3 copy];
  availableAudioOutputDevices = self->_availableAudioOutputDevices;
  self->_availableAudioOutputDevices = v17;

  v19 = _MPAVLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    *buf = 138543618;
    v38 = v20;
    v39 = 2114;
    v40 = v3;
    _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ update audio output devices: %{public}@", buf, 0x16u);
  }

  v21 = _MCSLogCategoryMirroring();
  v22 = [(MRUMirroringController *)self detailedDiscoveryOperation];
  v23 = [v22 operationID];
  v24 = [v23 hash];

  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v25 = [v3 count];
    v26 = [v3 valueForKey:@"deviceID"];
    v27 = [v3 valueForKey:@"deviceName"];
    v28 = [v32 count];
    v29 = [v32 valueForKey:@"deviceID"];
    v30 = [v32 valueForKey:@"deviceName"];
    *buf = 134219267;
    v38 = v25;
    v4 = v32;
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

  v31 = [(MRUMirroringController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v31 mirroringController:self didChangeAvailableOutputDevices:self->_availableAudioOutputDevices];
  }
}

- (void)addBusyIdentifier:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_busyIdentifiers addObject:?];
    v5 = [(MRUMirroringController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained mirroringController:self didUpdateBusyIdenifiers:self->_busyIdentifiers];
    }
  }
}

- (void)removeBusyIdentifier:(id)a3
{
  v6 = a3;
  if ([(NSMutableSet *)self->_busyIdentifiers count]== 1)
  {
    [(NSMutableSet *)self->_busyIdentifiers removeAllObjects];
  }

  else if (v6)
  {
    [(NSMutableSet *)self->_busyIdentifiers removeObject:v6];
  }

  v4 = [(MRUMirroringController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mirroringController:self didUpdateBusyIdenifiers:self->_busyIdentifiers];
  }
}

- (id)outputDeviceForID:(id)a3
{
  v4 = a3;
  v5 = [(MRUMirroringController *)self availableOutputDevices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MRUMirroringController_outputDeviceForID___block_invoke;
  v9[3] = &unk_1E7663EE8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 msv_firstWhere:v9];

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