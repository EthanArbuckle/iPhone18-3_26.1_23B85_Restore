@interface HUAccessoryHearingSyncManager
+ (NSSet)adaptiveTransparencySupportedDevices;
+ (NSSet)syncableSupportedDevices;
+ (id)sharedInstance;
- ($0AC6E346AE4835514AAA8AC86D8F4844)deviceState;
- (BOOL)hasPairedDevicesWithListeningModes;
- (BOOL)shouldUpdateWatchesWithListeningModes:(id)a3;
- (HUAccessoryHearingSyncManager)init;
- (id)deviceTypeForProductCode:(id)a3;
- (id)deviceTypesForAvailableAddresses:(id)a3;
- (int64_t)deviceTypeForAddress:(id)a3;
- (int64_t)listeningStateForAddress:(id)a3 andStoredState:(id)a4;
- (void)_cleanupNearbyDeviceStateDuplicatesForDevice:(id)a3;
- (void)_initCachedEnabled;
- (void)_registerForAccessoryHearingSettingsUpdate;
- (void)_registerForAccessoryManagerUpdate;
- (void)_registerForNearbyControllerUpdate;
- (void)_sendIDSMessageIfNeededForListeningModes:(id)a3 addresses:(id)a4 force:(BOOL)a5;
- (void)getDeviceTypesWithCompletion:(id)a3;
- (void)hasPairedDevicesWithListeningModes;
- (void)listeningModeDidChange:(id)a3;
- (void)processNoiseMeasurementsDisabledMessage:(id)a3 fromDevice:(id)a4;
- (void)readHearingProtectionState;
- (void)routesDidChange:(id)a3;
- (void)sendIDSMessageIfNeededForNewListeningModes:(id)a3 addresses:(id)a4 force:(BOOL)a5;
- (void)sendListeningModesIDSMessageIfNeeded;
- (void)sendUpdateToAccessory;
@end

@implementation HUAccessoryHearingSyncManager

void __37__HUAccessoryHearingSyncManager_init__block_invoke_3(uint64_t a1)
{
  v2 = HCLogHearingProtection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Lock state changed", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained readHearingProtectionState];
}

- (void)readHearingProtectionState
{
  v2 = +[HUAccessoryManager sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke;
  v4[3] = &unk_1E85CB7B0;
  v5 = v2;
  v3 = v2;
  [v3 getAvailableAddressesSupportingCharacteristic:@"a48fec08-3921-43db-82aa-afbce8ebb4fb" withCompletion:v4];
}

void __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = @"a48fec08-3921-43db-82aa-afbce8ebb4fb";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HUAccessoryHearingSyncManager Characteristic %@, addresses %@", buf, 0x16u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke_26;
  v6[3] = &unk_1E85CBC98;
  v7 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v6];

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[HUAccessoryHearingSyncManager sharedInstance];
  }

  v3 = sharedInstance_Settings_2;

  return v3;
}

uint64_t __47__HUAccessoryHearingSyncManager_sharedInstance__block_invoke()
{
  sharedInstance_Settings_2 = objc_alloc_init(HUAccessoryHearingSyncManager);

  return MEMORY[0x1EEE66BB8]();
}

- (HUAccessoryHearingSyncManager)init
{
  v8.receiver = self;
  v8.super_class = HUAccessoryHearingSyncManager;
  v2 = [(HUAccessoryHearingSyncManager *)&v8 init];
  if (v2)
  {
    v3 = +[HUAccessoryManager sharedInstance];
    v4 = [v3 sharedQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__HUAccessoryHearingSyncManager_init__block_invoke;
    block[3] = &unk_1E85C9F60;
    v7 = v2;
    dispatch_async(v4, block);
  }

  return v2;
}

void __37__HUAccessoryHearingSyncManager_init__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__HUAccessoryHearingSyncManager_init__block_invoke_2;
  v10[3] = &unk_1E85CB7D8;
  v11 = v2;
  [v11 getDeviceTypesWithCompletion:v10];
  if (MKBDeviceFormattedForContentProtection())
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = *(a1 + 32);
    v4 = +[HUAccessoryManager sharedInstance];
    v5 = [v4 sharedQueue];
    v6 = *MEMORY[0x1E69B1A70];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __37__HUAccessoryHearingSyncManager_init__block_invoke_3;
    handler[3] = &unk_1E85CAF10;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch(v6, (v3 + 48), v5, handler);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __37__HUAccessoryHearingSyncManager_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [*(a1 + 32) setDeviceListeningState:v4];

  v5 = objc_opt_new();
  [*(a1 + 32) setPersistentDeviceListeningState:v5];

  [*(a1 + 32) _initCachedEnabled];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setNearbyDevicesListeningState:v7];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];

  [v8 setDeviceType:v9];
  [*(a1 + 32) _registerForAccessoryHearingSettingsUpdate];
  [*(a1 + 32) _registerForAccessoryManagerUpdate];
  [*(a1 + 32) _registerForNearbyControllerUpdate];
  [*(a1 + 32) _registerForNoiseEnabledPreferenceChange];
  v10 = objc_alloc(MEMORY[0x1E6988780]);
  v11 = +[HUAccessoryManager sharedInstance];
  v12 = [v11 sharedQueue];
  v13 = [v10 initWithTargetSerialQueue:v12];
  [*(a1 + 32) setIgnoreHPTimer:v13];

  v14 = [*(a1 + 32) ignoreHPTimer];
  [v14 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

  v15 = objc_alloc(MEMORY[0x1E6988780]);
  v16 = +[HUAccessoryManager sharedInstance];
  v17 = [v16 sharedQueue];
  v18 = [v15 initWithTargetSerialQueue:v17];
  [*(a1 + 32) setMessageTimer:v18];

  v19 = [*(a1 + 32) messageTimer];
  [v19 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  [v20 addObserver:*(a1 + 32) selector:sel_routesDidChange_ name:@"com.apple.accessibility.hearingaid.audio.route.changed" object:0];
}

- (void)_initCachedEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[HUAccessoryHearingSettings sharedInstance];
  v4 = [v3 activeHearingProtectionEnabled];
  v5 = [v4 mutableCopy];
  cachedEnabled = self->_cachedEnabled;
  self->_cachedEnabled = v5;

  if (!self->_cachedEnabled)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_cachedEnabled;
    self->_cachedEnabled = v7;
  }

  v9 = HCLogHearingProtection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_cachedEnabled;
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Starting sync %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_registerForAccessoryHearingSettingsUpdate
{
  objc_initWeak(&location, self);
  v3 = +[HUAccessoryHearingSettings sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__HUAccessoryHearingSyncManager__registerForAccessoryHearingSettingsUpdate__block_invoke;
  v4[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, &location);
  [v3 registerUpdateBlock:v4 forRetrieveSelector:sel_activeHearingProtectionEnabled withListener:self];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_registerForAccessoryManagerUpdate
{
  v20[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = +[HUAccessoryManager sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke;
  v16[3] = &unk_1E85CC1F0;
  v4 = v3;
  v17 = v4;
  objc_copyWeak(&v18, &location);
  [v4 registerDiscoveryBlock:v16 withListener:self];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_3;
  v14[3] = &unk_1E85CC218;
  v14[4] = self;
  objc_copyWeak(&v15, &location);
  v5 = [MEMORY[0x1E695D2A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  v20[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v4 registerUpdateBlock:v14 forCharacteristicUUIDs:v6 withListener:self];

  v7 = +[HUAccessoryManager sharedInstance];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_37;
  v12 = &unk_1E85CC240;
  objc_copyWeak(&v13, &location);
  [v7 registerAttributeUpdateBlock:&v9 withListener:self];

  [v4 registerLoggingBlock:&__block_literal_global_41 withListener:{self, v9, v10, v11, v12}];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_registerForNearbyControllerUpdate
{
  objc_initWeak(&location, self);
  v3 = +[HUNearbyController sharedInstance];
  v4 = +[HUAccessoryManager sharedInstance];
  v5 = [v4 sharedQueue];
  [v3 registerQueue:v5 forDomain:@"com.apple.hearing.accessory"];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke;
  v7[3] = &unk_1E85CC288;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [v3 registerMessageBlock:v7 forDomain:@"com.apple.hearing.accessory" withListener:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_55;
  v6[3] = &unk_1E85CB7B0;
  v6[4] = self;
  [v3 registerDiscoveryBlock:v6 forDomain:@"com.apple.hearing.accessory" withListener:self];
  [v3 registerLoggingBlock:&__block_literal_global_63 forDomain:@"com.apple.hearing.accessory" withListener:self];
  [v3 discoverNearbyDevicesWithDomain:@"com.apple.hearing.accessory"];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

+ (NSSet)adaptiveTransparencySupportedDevices
{
  v2 = adaptiveTransparencySupportedDevices_AudioRouteProductIDs;
  if (!adaptiveTransparencySupportedDevices_AudioRouteProductIDs)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"76, 8212", @"76, 8228", @"76, 8231", 0}];
    v4 = adaptiveTransparencySupportedDevices_AudioRouteProductIDs;
    adaptiveTransparencySupportedDevices_AudioRouteProductIDs = v3;

    v2 = adaptiveTransparencySupportedDevices_AudioRouteProductIDs;
  }

  return v2;
}

+ (NSSet)syncableSupportedDevices
{
  v2 = syncableSupportedDevices_AudioRouteProductIDs;
  if (!syncableSupportedDevices_AudioRouteProductIDs)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"76, 8206", @"76, 8202", @"76, 8223", @"76, 8212", @"76, 8228", @"76, 8231", 0}];
    v4 = syncableSupportedDevices_AudioRouteProductIDs;
    syncableSupportedDevices_AudioRouteProductIDs = v3;

    v2 = syncableSupportedDevices_AudioRouteProductIDs;
  }

  return v2;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)deviceState
{
  v36 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v3 = [(HUAccessoryHearingSyncManager *)self deviceListeningState];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__HUAccessoryHearingSyncManager_deviceState__block_invoke;
  v17[3] = &unk_1E85CC128;
  v17[4] = self;
  v17[5] = &v22;
  v17[6] = &v18;
  [v3 enumerateKeysAndObjectsUsingBlock:v17];

  if (!v23[3])
  {
    v4 = [(HUAccessoryHearingSyncManager *)self nearbyDevicesListeningState];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __44__HUAccessoryHearingSyncManager_deviceState__block_invoke_2;
    v16[3] = &unk_1E85CC150;
    v16[4] = self;
    v16[5] = &v22;
    v16[6] = &v18;
    [v4 enumerateKeysAndObjectsUsingBlock:v16];
  }

  if ([MEMORY[0x1E69A4560] isInternalInstall])
  {
    v5 = deviceState_LastListeningState;
    if (deviceState_LastListeningState != v23[3])
    {
      v6 = HCLogHearingProtection();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:v19[3]];
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:v23[3]];
        v9 = [(HUAccessoryHearingSyncManager *)self deviceListeningState];
        v10 = [(HUAccessoryHearingSyncManager *)self nearbyDevicesListeningState];
        v11 = [(HUAccessoryHearingSyncManager *)self deviceType];
        *buf = 138413314;
        v27 = v7;
        v28 = 2112;
        v29 = v8;
        v30 = 2112;
        v31 = v9;
        v32 = 2112;
        v33 = v10;
        v34 = 2112;
        v35 = v11;
        _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Listening state %@ = %@ - %@ = %@ = %@", buf, 0x34u);
      }

      v5 = v23[3];
      deviceState_LastListeningState = v5;
    }
  }

  else
  {
    v5 = v23[3];
  }

  v12 = v19[3];
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  v13 = *MEMORY[0x1E69E9840];
  v14 = v12;
  v15 = v5;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

void __44__HUAccessoryHearingSyncManager_deviceState__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v7 listeningStateForAddress:v8 andStoredState:a3];
  v9 = [*(a1 + 32) deviceTypeForAddress:v8];

  *(*(*(a1 + 48) + 8) + 24) = v9;
  if (*(*(*(a1 + 40) + 8) + 24) == 5)
  {
    *a4 = 1;
  }
}

uint64_t __44__HUAccessoryHearingSyncManager_deviceState__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__HUAccessoryHearingSyncManager_deviceState__block_invoke_3;
  v4[3] = &unk_1E85CC128;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __44__HUAccessoryHearingSyncManager_deviceState__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v7 listeningStateForAddress:v8 andStoredState:a3];
  v9 = [*(a1 + 32) deviceTypeForAddress:v8];

  *(*(*(a1 + 48) + 8) + 24) = v9;
  if (*(*(*(a1 + 40) + 8) + 24) == 5)
  {
    *a4 = 1;
  }
}

void __75__HUAccessoryHearingSyncManager__registerForAccessoryHearingSettingsUpdate__block_invoke(uint64_t a1)
{
  v2 = +[HUAccessoryManager sharedInstance];
  v3 = [v2 sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__HUAccessoryHearingSyncManager__registerForAccessoryHearingSettingsUpdate__block_invoke_2;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __75__HUAccessoryHearingSyncManager__registerForAccessoryHearingSettingsUpdate__block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = +[HUAccessoryHearingSettings sharedInstance];
  v3 = [v2 activeHearingProtectionEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained cachedEnabled];
    v6 = [v3 isEqualToDictionary:v5];

    if ((v6 & 1) == 0)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 sendUpdateToAccessory];

      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = [v3 mutableCopy];
      [v8 setCachedEnabled:v9];

      v13 = @"HUAHPEnabledKey";
      v14[0] = v3;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = +[HUNearbyController sharedInstance];
      [v11 sendMessage:v10 toDevicesWithDomain:@"com.apple.hearing.accessory" withPriority:1];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke_2;
  v6[3] = &unk_1E85CA050;
  v7 = v3;
  v5 = v3;
  [v4 getHearingProtectionSupportForAddress:v5 withCompletion:v6];
}

void __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v6 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HP supported %@ for accessory %@", &v9, 0x16u);
  }

  v7 = +[HUAccessoryHearingSettings sharedInstance];
  [v7 setActiveHearingProtectionAvailable:a2 forAddress:*(a1 + 32)];

  v8 = *MEMORY[0x1E69E9840];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = HCLogHearingProtection();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Found new accessories %@, lost accessories %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E695D2A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  [v8 readValueForCharacteristicUUID:v9];

  v10 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_31;
  v14[3] = &unk_1E85CC1C8;
  objc_copyWeak(&v18, (a1 + 40));
  v15 = *(a1 + 32);
  v11 = v5;
  v16 = v11;
  v12 = v6;
  v17 = v12;
  [v10 getAvailableAddressesSupportingCharacteristic:@"a48fec08-3921-43db-82aa-afbce8ebb4fb" withCompletion:v14];

  objc_destroyWeak(&v18);
  v13 = *MEMORY[0x1E69E9840];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_31(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = @"a48fec08-3921-43db-82aa-afbce8ebb4fb";
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HUAccessoryHearingSyncManager Characteristic %@, addresses %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained readHearingProtectionState];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_32;
  v16[3] = &unk_1E85CC178;
  objc_copyWeak(&v17, (a1 + 56));
  [v6 enumerateProductCodesForAddresses:v7 withBlock:v16];
  v8 = *(a1 + 48);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_2;
  v14 = &unk_1E85CC1A0;
  objc_copyWeak(&v15, (a1 + 56));
  [v8 enumerateObjectsUsingBlock:&v11];
  v9 = objc_loadWeakRetained((a1 + 56));
  [v9 listeningModeDidChange:{0, v11, v12, v13, v14}];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);

  v10 = *MEMORY[0x1E69E9840];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained deviceTypeForProductCode:v5];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 deviceType];
    [v9 setObject:v7 forKey:v10];
  }
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained deviceType];
  [v4 removeObjectForKey:v3];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (([*(a1 + 32) ignoreHPUpdates] & 1) == 0)
  {
    v10 = [MEMORY[0x1E695D2A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      v12 = HCLogHearingProtection();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Found value for AHP %@ - %@", &v15, 0x16u);
      }

      if (v9)
      {
        LOBYTE(v15) = 1;
        [v9 getBytes:&v15 length:1];
        WeakRetained = +[HUAccessoryHearingSettings sharedInstance];
        [WeakRetained setActiveHearingProtectionEnabled:v15 != 0 forAddress:v7];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained sendUpdateToAccessory];
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained listeningModeDidChange:v3];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_2_39(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) processNoiseMeasurementsDisabledMessage:v6 fromDevice:v5];
  v7 = [v6 objectForKey:@"HUAHPEnabledKey"];
  if ([*(a1 + 32) ignoreHPUpdates])
  {
    v8 = HCLogHearingProtection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = v7;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring IDS message to update hearing protection: %@", &v27, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained cachedEnabled];

    [v10 addEntriesFromDictionary:v7];
    v11 = +[HUAccessoryHearingSettings sharedInstance];
    [v11 setActiveHearingProtectionEnabled:v10];
  }

  v12 = [v6 objectForKey:@"HUAHPAvailableKey"];
  [v12 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_47_0];
  v13 = [v6 objectForKey:@"HUListenModeKey"];
  v14 = HCLogHearingProtection();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412546;
    v28 = v13;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Listening modes %@ for device %@", &v27, 0x16u);
  }

  if (v5)
  {
    v15 = [v13 count];
    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 nearbyDevicesListeningState];
    v18 = [v5 identifier];
    if (v15)
    {
      [v17 setObject:v13 forKey:v18];

      v16 = objc_loadWeakRetained((a1 + 40));
      [v16 _cleanupNearbyDeviceStateDuplicatesForDevice:v5];
    }

    else
    {
      [v17 removeObjectForKey:v18];
    }

    v19 = HCLogHearingProtection();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_loadWeakRetained((a1 + 40));
      v21 = [v20 nearbyDevicesListeningState];
      v27 = 138412290;
      v28 = v21;
      _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "Updated nearbyDevicesListeningState: %@", &v27, 0xCu);
    }
  }

  v22 = [v6 objectForKey:@"HUDeviceTypeKey"];
  v23 = HCLogHearingProtection();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412546;
    v28 = v22;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "Device types %@ for device %@", &v27, 0x16u);
  }

  if (v5)
  {
    v24 = objc_loadWeakRetained((a1 + 40));
    v25 = [v24 deviceType];
    [v25 addEntriesFromDictionary:v22];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v7 = +[HUAccessoryHearingSettings sharedInstance];
  v6 = [v4 BOOLValue];

  [v7 setActiveHearingProtectionAvailable:v6 forAddress:v5];
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_2;
    v5[3] = &unk_1E85CC2F8;
    v5[4] = v4;
    v6 = v3;
    [v4 getDeviceTypesWithCompletion:v5];
  }
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (headphoneStreamSelected())
  {
    v5 = +[HUAccessoryHearingSettings sharedInstance];
    v6 = [v5 activeHearingProtectionEnabled];

    v7 = +[HUAccessoryHearingSettings sharedInstance];
    v8 = [v7 activeHearingProtectionAvailable];

    v9 = [*(a1 + 32) deviceListeningState];
    if ([v8 count])
    {
      [v4 setObject:v8 forKey:@"HUAHPAvailableKey"];
    }

    if ([v6 count])
    {
      [v4 setObject:v6 forKey:@"HUAHPEnabledKey"];
    }

    if ([v9 count])
    {
      [v4 setObject:v9 forKey:@"HUListenModeKey"];
    }

    if ([v3 count])
    {
      [v4 setObject:v3 forKey:@"HUDeviceTypeKey"];
    }
  }

  else
  {
    v6 = HCLogHearingProtection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Headphone is not selected, NOT sending Accessory info", buf, 2u);
    }
  }

  if ([v4 count])
  {
    v10 = HCLogHearingProtection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Sending Accessory state message to discovered devices: %@", buf, 0xCu);
    }

    v12 = +[HUNearbyController sharedInstance];
    [v12 sendMessage:v4 withDomain:@"com.apple.hearing.accessory" toDevices:*(a1 + 40) withPriority:1];
  }

  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = +[HUNearbyController sharedInstance];
  v15 = [v14 nearbyDevices];
  v16 = [v15 ax_mappedArrayUsingBlock:&__block_literal_global_59];

  v17 = [*(a1 + 32) nearbyDevicesListeningState];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_2_60;
  v26 = &unk_1E85CC2D0;
  v18 = v16;
  v27 = v18;
  v19 = v13;
  v28 = v19;
  [v17 enumerateKeysAndObjectsUsingBlock:&v23];

  v20 = HCLogHearingProtection();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 32) nearbyDevicesListeningState];
    *buf = 138412546;
    v30 = v21;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "Filtering nearby listening modes on update to nearby devices %@ - %@", buf, 0x16u);
  }

  [*(a1 + 32) setNearbyDevicesListeningState:v19];
  v22 = *MEMORY[0x1E69E9840];
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_2_60(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_61(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupNearbyDeviceStateDuplicatesForDevice:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(HUAccessoryHearingSyncManager *)self nearbyDevicesListeningState];
  v7 = [v4 identifier];
  v8 = [v6 objectForKey:v7];
  v9 = [v8 allKeys];

  v10 = [(HUAccessoryHearingSyncManager *)self nearbyDevicesListeningState];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__HUAccessoryHearingSyncManager__cleanupNearbyDeviceStateDuplicatesForDevice___block_invoke;
  v14[3] = &unk_1E85CC320;
  v15 = v4;
  v16 = v5;
  v17 = v9;
  v11 = v9;
  v12 = v5;
  v13 = v4;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];

  [(HUAccessoryHearingSyncManager *)self setNearbyDevicesListeningState:v12];
}

void __78__HUAccessoryHearingSyncManager__cleanupNearbyDeviceStateDuplicatesForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 identifier];
  v8 = [v10 isEqualToString:v7];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];

    [v9 removeObjectsForKeys:*(a1 + 48)];
    v6 = v9;
    if (![v9 count])
    {
      goto LABEL_5;
    }
  }

  [*(a1 + 40) setObject:v6 forKey:v10];
LABEL_5:
}

- (void)listeningModeDidChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingProtection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Listening state changed %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v6 = +[HUAccessoryManager sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__HUAccessoryHearingSyncManager_listeningModeDidChange___block_invoke;
  v12[3] = &unk_1E85CC348;
  v12[4] = &buf;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__HUAccessoryHearingSyncManager_listeningModeDidChange___block_invoke_74;
  v9[3] = &unk_1E85CB970;
  v9[4] = self;
  p_buf = &buf;
  v7 = v4;
  v10 = v7;
  [v6 enumerateAvailableDevicesWithBlock:v12 andCompletion:v9];

  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x1E69E9840];
}

void __56__HUAccessoryHearingSyncManager_listeningModeDidChange___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = +[HUAccessoryHearingSyncManager syncableSupportedDevices];
  v14 = [v13 containsObject:v12];

  if (a6 == 1 && a5 && v14)
  {
    v15 = __ROR8__(a4, 1);
    if (v15 <= 1)
    {
      if (!v15)
      {
        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = &unk_1F5623E90;
        goto LABEL_18;
      }

      if (v15 == 1)
      {
        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = &unk_1F5623E48;
        goto LABEL_18;
      }
    }

    else
    {
      switch(v15)
      {
        case 8:
          v16 = *(*(*(a1 + 32) + 8) + 40);
          v17 = &unk_1F5623E78;
          goto LABEL_18;
        case 4:
          v16 = *(*(*(a1 + 32) + 8) + 40);
          v17 = &unk_1F5623E60;
          goto LABEL_18;
        case 2:
          v16 = *(*(*(a1 + 32) + 8) + 40);
          v17 = &unk_1F5623E30;
LABEL_18:
          [v16 setObject:v17 forKey:v11];
          break;
      }
    }
  }

  else
  {
    v18 = HCLogHearingProtection();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
      v22 = 138413058;
      v23 = v12;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Skipping device because not supported %@ %@, %@ %@", &v22, 0x2Au);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __56__HUAccessoryHearingSyncManager_listeningModeDidChange___block_invoke_74(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) deviceListeningState];
  v3 = [v2 isEqualToDictionary:*(*(*(a1 + 48) + 8) + 40)];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) length] != 0;
    [*(a1 + 32) setDeviceListeningState:*(*(*(a1 + 48) + 8) + 40)];
  }

  v5 = HCLogHearingProtection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) deviceListeningState];
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v13 = 138412802;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Listening modes current: %@ new: %@ forcing update %@", &v13, 0x20u);
  }

  v9 = *(a1 + 32);
  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = [v10 allKeys];
  [v9 sendIDSMessageIfNeededForNewListeningModes:v10 addresses:v11 force:v4];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sendUpdateToAccessory
{
  v3 = [MEMORY[0x1E695D2A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  v4 = +[HUAccessoryManager sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke;
  v7[3] = &unk_1E85CC398;
  v7[4] = self;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v6 getAvailableAddressesSupportingCharacteristic:0 withCompletion:v7];
}

void __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke_2;
  v5[3] = &unk_1E85CC370;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 enumerateObjectsUsingBlock:v5];
}

void __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[HUAccessoryHearingSettings sharedInstance];
  v5 = [v4 activeHearingProtectionEnabledForAddress:v3];

  v12 = v5;
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v12 length:1];
  [*(a1 + 32) setIgnoreHPUpdates:1];
  v7 = HCLogHearingProtection();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Sending update to %@ - %@ - %@", buf, 0x20u);
  }

  [*(a1 + 40) writeValue:v6 forCharacteristicUUID:*(a1 + 48) andAddress:v3];
  v9 = [*(a1 + 32) ignoreHPTimer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke_76;
  v11[3] = &unk_1E85C9F60;
  v11[4] = *(a1 + 32);
  [v9 afterDelay:v11 processBlock:1.0];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)routesDidChange:(id)a3
{
  v4 = +[HUAccessoryManager sharedInstance];
  v5 = [v4 sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HUAccessoryHearingSyncManager_routesDidChange___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __49__HUAccessoryHearingSyncManager_routesDidChange___block_invoke(uint64_t a1)
{
  v2 = headphoneStreamSelected();
  result = [*(a1 + 32) isHeadphoneStreamSelected];
  if (v2 != result)
  {
    v4 = *(a1 + 32);

    return [v4 sendListeningModesIDSMessageIfNeeded];
  }

  return result;
}

- (void)getDeviceTypesWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[HUAccessoryManager sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__HUAccessoryHearingSyncManager_getDeviceTypesWithCompletion___block_invoke;
    v6[3] = &unk_1E85CC3C0;
    v6[4] = self;
    v7 = v4;
    [v5 getAvailableAddressesSupportingCharacteristic:0 withCompletion:v6];
  }
}

void __62__HUAccessoryHearingSyncManager_getDeviceTypesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) deviceTypesForAvailableAddresses:a2];
  (*(v2 + 16))(v2, v3);
}

- (id)deviceTypesForAvailableAddresses:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = +[HUAccessoryManager sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__HUAccessoryHearingSyncManager_deviceTypesForAvailableAddresses___block_invoke;
  v12[3] = &unk_1E85CC3E8;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [v7 enumerateProductCodesForAddresses:v5 withBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __66__HUAccessoryHearingSyncManager_deviceTypesForAvailableAddresses___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) deviceTypeForProductCode:a3];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

- (id)deviceTypeForProductCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:{@"76, 8206"}])
  {
    v4 = &unk_1F5623E48;
  }

  else if ([v3 isEqualToString:{@"76, 8202"}] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"76,8223"))
  {
    v4 = &unk_1F5623E30;
  }

  else if ([v3 isEqualToString:{@"76, 8212"}] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"76,8228"))
  {
    v4 = &unk_1F5623E60;
  }

  else if ([v3 isEqualToString:{@"76, 8231"}])
  {
    v4 = &unk_1F5623E78;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)deviceTypeForAddress:(id)a3
{
  v4 = a3;
  v5 = [(HUAccessoryHearingSyncManager *)self deviceType];
  v6 = [v5 valueForKey:v4];

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (int64_t)listeningStateForAddress:(id)a3 andStoredState:(id)a4
{
  v5 = a3;
  v6 = [a4 unsignedIntegerValue];
  if (v6 == 3)
  {
    v7 = +[HUAccessoryHearingSettings sharedInstance];
    v8 = [v7 activeHearingProtectionEnabledForAddress:v5];

    if (v8)
    {
      v6 = 5;
    }

    else
    {
      v6 = 3;
    }
  }

  return v6;
}

- (BOOL)shouldUpdateWatchesWithListeningModes:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = headphoneStreamSelected();
  v6 = HCLogHearingProtection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    *buf = 67109634;
    *&buf[4] = v5;
    *v31 = 2112;
    *&v31[2] = v7;
    *&v31[10] = 2112;
    *&v31[12] = v4;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Headphone Selected %d, Listening modes sent to Watches: %@, new: %@", buf, 0x1Cu);
  }

  *buf = 0;
  *v31 = buf;
  *&v31[8] = 0x2020000000;
  v31[16] = 0;
  if (v5)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__HUAccessoryHearingSyncManager_shouldUpdateWatchesWithListeningModes___block_invoke;
    v26[3] = &unk_1E85CAA90;
    v26[4] = self;
    v26[5] = buf;
    [v4 enumerateKeysAndObjectsUsingBlock:v26];
    v8 = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __71__HUAccessoryHearingSyncManager_shouldUpdateWatchesWithListeningModes___block_invoke_78;
    v23 = &unk_1E85CAA90;
    v9 = v4;
    v24 = v9;
    v25 = buf;
    [v8 enumerateKeysAndObjectsUsingBlock:&v20];

    if (*(*v31 + 24) == 1)
    {
      [(HUAccessoryHearingSyncManager *)self setPersistentDeviceListeningState:v9, v20, v21, v22, v23];
    }
  }

  else
  {
    v10 = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    v11 = [v10 count] == 0;

    if (!v11)
    {
      *(*v31 + 24) = 1;
      v12 = objc_opt_new();
      [(HUAccessoryHearingSyncManager *)self setPersistentDeviceListeningState:v12];
    }
  }

  if (*(*v31 + 24) == 1)
  {
    self->_isHeadphoneStreamSelected = v5;
  }

  v13 = HCLogHearingProtection();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    [(HUAccessoryHearingSyncManager *)v14 shouldUpdateWatchesWithListeningModes:v29, v13];
  }

  v15 = HCLogHearingProtection();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*v31 + 24);
    *v27 = 67109120;
    v28 = v16;
    _os_log_impl(&dword_1DA5E2000, v15, OS_LOG_TYPE_DEFAULT, "Listening modes for Watch changed: %d", v27, 8u);
  }

  v17 = *(*v31 + 24);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void __71__HUAccessoryHearingSyncManager_shouldUpdateWatchesWithListeningModes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) persistentDeviceListeningState];
  v8 = [v7 objectForKey:v5];

  if (!v8)
  {
    v9 = HCLogHearingProtection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      v10 = "Added listening mode %@, for device: %@";
      goto LABEL_7;
    }

LABEL_8:

    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_9;
  }

  if (([v8 isEqual:v6] & 1) == 0)
  {
    v9 = HCLogHearingProtection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      v10 = "Changed listening mode %@, for device: %@";
LABEL_7:
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
}

void __71__HUAccessoryHearingSyncManager_shouldUpdateWatchesWithListeningModes___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  if (!v7)
  {
    v8 = HCLogHearingProtection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Removed listening mode %@, for device: %@", &v10, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)sendListeningModesIDSMessageIfNeeded
{
  v3 = [(HUAccessoryHearingSyncManager *)self messageTimer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke;
  v4[3] = &unk_1E85C9F60;
  v4[4] = self;
  [v3 afterDelay:v4 processBlock:0.5];
}

void __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke(uint64_t a1)
{
  v2 = +[HUAccessoryManager sharedInstance];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_2;
  v3[3] = &unk_1E85CB7B0;
  v3[4] = *(a1 + 32);
  [v2 getAvailableAddressesSupportingCharacteristic:0 withCompletion:v3];
}

void __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_2_cold_1(a1, v4);
  }

  v5 = +[HUAccessoryManager sharedInstance];
  v6 = [v5 sharedQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_79;
  v8[3] = &unk_1E85C9F38;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

void __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_79(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 deviceListeningState];
  [v2 _sendIDSMessageIfNeededForListeningModes:v3 addresses:*(a1 + 40) force:0];
}

- (void)sendIDSMessageIfNeededForNewListeningModes:(id)a3 addresses:(id)a4 force:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HUAccessoryHearingSyncManager *)self messageTimer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__HUAccessoryHearingSyncManager_sendIDSMessageIfNeededForNewListeningModes_addresses_force___block_invoke;
  v13[3] = &unk_1E85CC410;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  [v10 afterDelay:v13 processBlock:0.5];
}

- (void)_sendIDSMessageIfNeededForListeningModes:(id)a3 addresses:(id)a4 force:(BOOL)a5
{
  v5 = a5;
  v21[1] = *MEMORY[0x1E69E9840];
  if ([(HUAccessoryHearingSyncManager *)self shouldUpdateWatchesWithListeningModes:a3, a4])
  {
    v7 = MEMORY[0x1E695DF90];
    v20 = @"HUListenModeKey";
    v8 = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    v21[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v7 dictionaryWithDictionary:v9];

    v11 = +[HUAccessoryHearingSettings sharedInstance];
    v12 = [v11 activeHearingProtectionEnabled];

    v13 = [(HUAccessoryHearingSyncManager *)self deviceType];
    if ([v12 count])
    {
      [v10 setObject:v12 forKey:@"HUAHPEnabledKey"];
    }

    if ([v13 count])
    {
      [v10 setObject:v13 forKey:@"HUDeviceTypeKey"];
    }

    v14 = HCLogHearingProtection();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v15)
      {
        v18 = 138412290;
        v19 = v10;
        _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Sending to all Accessory state message: %@", &v18, 0xCu);
      }

      v16 = +[HUNearbyController sharedInstance];
      [v16 sendMessage:v10 toDevicesWithDomain:@"com.apple.hearing.accessory" excludingState:&unk_1F5623EA8 withPriority:1];
    }

    else
    {
      if (v15)
      {
        v18 = 138412290;
        v19 = v10;
        _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Sending to Watches Accessory state message: %@", &v18, 0xCu);
      }

      v16 = +[HUNearbyController sharedInstance];
      [v16 sendMessage:v10 toWatchDevicesWithDomain:@"com.apple.hearing.accessory" excludingState:&unk_1F5623EA8 withPriority:1];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)processNoiseMeasurementsDisabledMessage:(id)a3 fromDevice:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"%llu", 0x800000];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = HCLogHearingProtection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "IDS received Noise Disabled: %@ from device: %@", buf, 0x16u);
    }

    [v5 setState:v9 forDomain:@"com.apple.hearing.accessory"];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasPairedDevicesWithListeningModes
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D288] devicesWithDiscoveryFlags:0x80000800000 error:0];
  v3 = HCLogHearingProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(HUAccessoryHearingSyncManager *)v2 hasPairedDevicesWithListeningModes];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (([v9 deviceFlags] & 0x4000000) != 0 || (objc_msgSend(v9, "deviceFlags") & 0x8000000) != 0)
        {
          v12 = HCLogHearingProtection();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Has paired devices with listening modes", v15, 2u);
          }

          v11 = 1;
          v10 = v4;
          goto LABEL_18;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = HCLogHearingProtection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "No paired devices with listening modes", v15, 2u);
  }

  v11 = 0;
LABEL_18:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)shouldUpdateWatchesWithListeningModes:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1DA5E2000, log, OS_LOG_TYPE_DEBUG, "Updated listening modes for Watch: %@", buf, 0xCu);
}

void __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) deviceListeningState];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "Routes and isHeadphoneStreamSelected are updated, deviceListeningState: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)hasPairedDevicesWithListeningModes
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "AccessoryManager pairedDevices: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end