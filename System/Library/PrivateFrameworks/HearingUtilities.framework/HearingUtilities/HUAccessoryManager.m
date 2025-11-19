@interface HUAccessoryManager
+ (HUAccessoryManager)sharedInstance;
- (BOOL)pmeEverywhereSupportedForAddress:(id)a3;
- (BOOL)updateBluetoothAvailability;
- (HUAccessoryManager)init;
- (NSArray)peripherals;
- (id)availableAddressesWithCharacteristicSupport:(id)a3;
- (id)characteristicWithUUID:(id)a3 forPeripheral:(id)a4;
- (id)identifierFromBluetoothAddress:(id)a3;
- (int)bluetoothListeningModeFromHearingListeningMode:(unint64_t)a3;
- (unint64_t)hearingListeningModeFromBluetoothListeningMode:(int)a3;
- (unint64_t)pseVersionForAddress:(id)a3;
- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)discoverAccessories;
- (void)enumerateAudioBluetoothDevicesUsingBlock:(id)a3;
- (void)enumerateAvailableDevicesWithBlock:(id)a3 andCompletion:(id)a4;
- (void)enumerateAvailablePSEDevicesWithBlock:(id)a3 andCompletion:(id)a4;
- (void)enumerateConnectedBluetoothDevices:(BOOL)a3 usingBlock:(id)a4 andCompletion:(id)a5;
- (void)enumerateProductCodesForAddresses:(id)a3 withBlock:(id)a4;
- (void)getAddressesFromIdentifiers:(id)a3 withCompletion:(id)a4;
- (void)getAudioOwnershipForAddress:(id)a3 withCompletion:(id)a4;
- (void)getAvailableAddressesSupportingCharacteristic:(id)a3 withCompletion:(id)a4;
- (void)getBluetoothState:(id)a3;
- (void)getCBDeviceForCurrentRouteWithCompletion:(id)a3;
- (void)getCurrentRouteInformationWithCompletion:(id)a3;
- (void)getCurrentRouteListeningModeWithCompletion:(id)a3;
- (void)getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:(id)a3;
- (void)getHearingProtectionSupportForAddress:(id)a3 withCompletion:(id)a4;
- (void)getIdentifiersFromAddresses:(id)a3 withCompletion:(id)a4;
- (void)getPMEEverywhereSupportStateForAddress:(id)a3 withCompletion:(id)a4;
- (void)getPSEVersionForAddress:(id)a3 withCompletion:(id)a4;
- (void)getPairedDeviceSupportsHearingProtection:(id)a3;
- (void)getPairedDeviceSupportsPSE:(id)a3;
- (void)getProductCodeForAddress:(id)a3 withCompletion:(id)a4;
- (void)getSSLEnabledForAddress:(id)a3 withCompletion:(id)a4;
- (void)getSSLSupportStateForAddress:(id)a3 withCompletion:(id)a4;
- (void)logMessage:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readValueForCharacteristicUUID:(id)a3;
- (void)registerAttributeUpdateBlock:(id)a3 withListener:(id)a4;
- (void)registerBluetoothStateBlock:(id)a3 withListener:(id)a4;
- (void)registerDiscoveryBlock:(id)a3 withListener:(id)a4;
- (void)registerLoggingBlock:(id)a3 withListener:(id)a4;
- (void)registerUpdateBlock:(id)a3 forCharacteristicUUIDs:(id)a4 withListener:(id)a5;
- (void)removeDiscoveredAccessories;
- (void)resetAADeviceManager;
- (void)setCurrentRouteListeningMode:(unint64_t)a3;
- (void)setNotify:(BOOL)a3 forCharacteristicUUIDs:(id)a4;
- (void)setPeripherals:(id)a3;
- (void)setSSLEnabled:(BOOL)a3 forAddress:(id)a4;
- (void)setupAADeviceManager;
- (void)setupBluetoothController;
- (void)turnBluetoothOnWithCompletion:(id)a3;
- (void)updateNotify:(BOOL)a3 forPeripheral:(id)a4 withCharacteristicUUIDs:(id)a5;
- (void)writeValue:(id)a3 forCharacteristicUUID:(id)a4 andAddress:(id)a5;
@end

@implementation HUAccessoryManager

- (HUAccessoryManager)init
{
  v30.receiver = self;
  v30.super_class = HUAccessoryManager;
  v2 = [(HUAccessoryManager *)&v30 init];
  v3 = v2;
  if (v2)
  {
    v2->_syncLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E69A4560] bluetoothManagerQueue];
    bluetoothCentralQueue = v3->_bluetoothCentralQueue;
    v3->_bluetoothCentralQueue = v4;

    v6 = objc_alloc(MEMORY[0x1E695D258]);
    v7 = v3->_bluetoothCentralQueue;
    v8 = MEMORY[0x1E695DF20];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v10 = [v8 dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E695D210], 0}];
    v11 = [v6 initWithDelegate:v3 queue:v7 options:v10];
    centralManager = v3->_centralManager;
    v3->_centralManager = v11;

    v13 = v3->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__HUAccessoryManager_init__block_invoke;
    block[3] = &unk_1E85C9F60;
    v14 = v3;
    v29 = v14;
    dispatch_async(v13, block);
    v15 = [MEMORY[0x1E695DF70] array];
    [v14 setRegisteredCharacteristics:v15];

    v16 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setLoggingUpdates:v16];

    v17 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setUpdateUpdates:v17];

    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setDiscoveryUpdates:v18];

    v19 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setBluetoothStateUpdates:v19];

    v20 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setAudioOwnershipByAddress:v20];

    v21 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setAttributeUpdateUpdates:v21];

    v22 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setAaAvailableDevices:v22];

    [v14 setupBluetoothController];
    objc_initWeak(&location, v14);
    v23 = v3->_bluetoothCentralQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __26__HUAccessoryManager_init__block_invoke_2;
    handler[3] = &unk_1E85CAF10;
    objc_copyWeak(&v26, &location);
    notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", v14 + 6, v23, handler);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __36__HUAccessoryManager_sharedInstance__block_invoke()
{
  sharedInstance_AccessoryManager = objc_alloc_init(HUAccessoryManager);

  return MEMORY[0x1EEE66BB8]();
}

- (void)setupBluetoothController
{
  bluetoothCentralQueue = self->_bluetoothCentralQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__HUAccessoryManager_setupBluetoothController__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(bluetoothCentralQueue, block);
}

- (BOOL)updateBluetoothAvailability
{
  v3 = [(CBController *)self->_bluetoothController bluetoothState];
  bluetoothAvailable = self->_bluetoothAvailable;
  v5 = v3 == 5;
  self->_bluetoothAvailable = v5;
  if (v3 > 0xA)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1E85CB708[v3];
  }

  [(HUAccessoryManager *)self logMessage:@"Updating BT state %s", v6];
  if (self->_bluetoothAvailable)
  {
    [(HUAccessoryManager *)self discoverAccessories];
  }

  else
  {
    [(HUAccessoryManager *)self removeDiscoveredAccessories];
  }

  if (bluetoothAvailable != v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    v9[5] = MEMORY[0x1E69E9820];
    v9[6] = 3221225472;
    v9[7] = __49__HUAccessoryManager_updateBluetoothAvailability__block_invoke;
    v9[8] = &unk_1E85CAF38;
    v9[9] = self;
    v9[10] = &v10;
    AX_PERFORM_WITH_LOCK();
    v7 = v11[5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__HUAccessoryManager_updateBluetoothAvailability__block_invoke_2;
    v9[3] = &unk_1E85CB4B0;
    v9[4] = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v9];
    _Block_object_dispose(&v10, 8);
  }

  return bluetoothAvailable != v5;
}

+ (HUAccessoryManager)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[HUAccessoryManager sharedInstance];
  }

  v3 = sharedInstance_AccessoryManager;

  return v3;
}

- (NSArray)peripherals
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_peripherals copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)removeDiscoveredAccessories
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HUAccessoryManager *)self peripherals];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__HUAccessoryManager_removeDiscoveredAccessories__block_invoke;
  v10[3] = &unk_1E85CB460;
  v5 = v3;
  v11 = v5;
  [v4 enumerateObjectsUsingBlock:v10];

  v6 = [MEMORY[0x1E695DEC8] array];
  [(HUAccessoryManager *)self setPeripherals:v6];

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__1;
  v8[4] = __Block_byref_object_dispose__1;
  v9 = 0;
  v7[5] = MEMORY[0x1E69E9820];
  v7[6] = 3221225472;
  v7[7] = __49__HUAccessoryManager_removeDiscoveredAccessories__block_invoke_2;
  v7[8] = &unk_1E85CAF38;
  v7[9] = self;
  v7[10] = v8;
  AX_PERFORM_WITH_LOCK();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__HUAccessoryManager_removeDiscoveredAccessories__block_invoke_3;
  v7[3] = &unk_1E85CB5C8;
  v7[4] = v8;
  [(HUAccessoryManager *)self getAddressesFromIdentifiers:v5 withCompletion:v7];
  _Block_object_dispose(v8, 8);
}

uint64_t __49__HUAccessoryManager_removeDiscoveredAccessories__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __46__HUAccessoryManager_setupBluetoothController__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x1E695D268]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  [*(*(a1 + 32) + 48) setDispatchQueue:*(*(a1 + 32) + 40)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__HUAccessoryManager_setupBluetoothController__block_invoke_2;
  v22[3] = &unk_1E85CB500;
  v22[4] = v5;
  objc_copyWeak(&v23, &location);
  [v6 getControllerInfoWithCompletion:v22];
  v7 = *(*(a1 + 32) + 48);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__HUAccessoryManager_setupBluetoothController__block_invoke_3;
  v20[3] = &unk_1E85C9F10;
  objc_copyWeak(&v21, &location);
  [v7 setBluetoothStateChangedHandler:v20];
  v8 = *(*(a1 + 32) + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__HUAccessoryManager_setupBluetoothController__block_invoke_4;
  v18[3] = &unk_1E85CB528;
  objc_copyWeak(&v19, &location);
  [v8 activateWithCompletion:v18];
  v9 = objc_alloc_init(MEMORY[0x1E695D288]);
  v10 = *(a1 + 32);
  v11 = *(v10 + 56);
  *(v10 + 56) = v9;

  [*(*(a1 + 32) + 56) setDispatchQueue:*(*(a1 + 32) + 40)];
  [*(*(a1 + 32) + 56) setDiscoveryFlags:0x80000200000];
  v12 = *(*(a1 + 32) + 56);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__HUAccessoryManager_setupBluetoothController__block_invoke_5;
  v16[3] = &unk_1E85CB550;
  objc_copyWeak(&v17, &location);
  [v12 setDeviceFoundHandler:v16];
  v13 = *(a1 + 32);
  v14 = *(v13 + 56);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__HUAccessoryManager_setupBluetoothController__block_invoke_10;
  v15[3] = &unk_1E85CB578;
  v15[4] = v13;
  [v14 activateWithCompletion:v15];
  [*(a1 + 32) setupAADeviceManager];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __49__HUAccessoryManager_removeDiscoveredAccessories__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__HUAccessoryManager_removeDiscoveredAccessories__block_invoke_4;
  v6[3] = &unk_1E85CA558;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __46__HUAccessoryManager_setupBluetoothController__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    [*(a1 + 32) logMessage:@"Error getting controller info"];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [v8 hardwareAddressData];
    v7 = CUPrintNSDataAddress();
    [WeakRetained setLocalBluetoothAddress:v7];
  }
}

uint64_t __49__HUAccessoryManager_updateBluetoothAvailability__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __46__HUAccessoryManager_setupBluetoothController__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logMessage:{@"Activated bluetooth controller with error %@", v3}];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 updateBluetoothAvailability];
}

- (void)discoverAccessories
{
  v18[1] = *MEMORY[0x1E69E9840];
  bluetoothAvailable = self->_bluetoothAvailable;
  if (self->_centralIsOn && bluetoothAvailable)
  {
    centralManager = self->_centralManager;
    v17 = *MEMORY[0x1E695D230];
    v5 = *MEMORY[0x1E695D240];
    v6 = [MEMORY[0x1E695D2A0] UUIDWithString:*MEMORY[0x1E695D240]];
    v16 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v18[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [(CBCentralManager *)centralManager registerForConnectionEventsWithOptions:v8];

    v9 = self->_centralManager;
    v10 = [MEMORY[0x1E695D2A0] UUIDWithString:v5];
    v15 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v12 = [(CBCentralManager *)v9 retrieveConnectedPeripheralsWithServices:v11];

    [(HUAccessoryManager *)self setPeripherals:v12];
    [(HUAccessoryManager *)self logMessage:@"Found peripherals %@", v12];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__HUAccessoryManager_discoverAccessories__block_invoke;
    v14[3] = &unk_1E85CB460;
    v14[4] = self;
    [v12 enumerateObjectsUsingBlock:v14];
  }

  else
  {
    [(HUAccessoryManager *)self logMessage:@"Skipping discovery %d, %d", self->_centralIsOn, bluetoothAvailable];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __26__HUAccessoryManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetAADeviceManager];
}

- (void)logMessage:(id)a3
{
  v4 = a3;
  v22 = &v23;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v4 locale:0 arguments:&v23];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __33__HUAccessoryManager_logMessage___block_invoke;
  v13 = &unk_1E85CAF38;
  v14 = self;
  v15 = &v16;
  AX_PERFORM_WITH_LOCK();
  v6 = v17[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__HUAccessoryManager_logMessage___block_invoke_2;
  v8[3] = &unk_1E85CA558;
  v7 = v5;
  v9 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  _Block_object_dispose(&v16, 8);
}

uint64_t __33__HUAccessoryManager_logMessage___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __33__HUAccessoryManager_logMessage___block_invoke_2(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, *(a1 + 32));
    v4 = v5;
  }
}

- (void)registerLoggingBlock:(id)a3 withListener:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v5;
    AX_PERFORM_WITH_LOCK();
  }
}

void __56__HUAccessoryManager_registerLoggingBlock_withListener___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 88);
  v7 = v2;
  if (v3)
  {
    v5 = [v3 copy];
    [v4 setObject:v5 forKey:v7];

    v6 = objc_getAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey);
    if (!v6)
    {
      v6 = [[HUAccessoryListenerHelper alloc] initWithListenerAddress:*(a1 + 32) andDelegate:*(a1 + 40)];
      objc_setAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey, v6, 1);
    }

    [(HUAccessoryListenerHelper *)v6 addKey:@"HUAccessoryManagerLoggingKey"];
  }

  else
  {
    [v4 removeObjectForKey:?];
  }
}

- (void)updateNotify:(BOOL)a3 forPeripheral:(id)a4 withCharacteristicUUIDs:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 services];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__HUAccessoryManager_updateNotify_forPeripheral_withCharacteristicUUIDs___block_invoke;
  v13[3] = &unk_1E85CAFB0;
  v14 = v9;
  v15 = self;
  v17 = a3;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  [v10 enumerateObjectsUsingBlock:v13];
}

void __73__HUAccessoryManager_updateNotify_forPeripheral_withCharacteristicUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__HUAccessoryManager_updateNotify_forPeripheral_withCharacteristicUUIDs___block_invoke_2;
  v7[3] = &unk_1E85CAF88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v11 = *(a1 + 56);
  v10 = v6;
  [v3 enumerateObjectsUsingBlock:v7];
}

void __73__HUAccessoryManager_updateNotify_forPeripheral_withCharacteristicUUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 UUID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 40) logMessage:{@"Setting notify %d for peripheral: %@ - %@", *(a1 + 56), *(a1 + 48), v6}];
    [*(a1 + 48) setNotifyValue:*(a1 + 56) forCharacteristic:v6];
  }
}

- (void)setNotify:(BOOL)a3 forCharacteristicUUIDs:(id)a4
{
  v6 = a4;
  if ([v6 count])
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__HUAccessoryManager_setNotify_forCharacteristicUUIDs___block_invoke;
    block[3] = &unk_1E85CB028;
    v11 = a3;
    v9 = v6;
    v10 = self;
    dispatch_async(bluetoothCentralQueue, block);
  }
}

void __55__HUAccessoryManager_setNotify_forCharacteristicUUIDs___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__HUAccessoryManager_setNotify_forCharacteristicUUIDs___block_invoke_2;
    v10[3] = &unk_1E85CAFD8;
    v2 = *(a1 + 32);
    v10[4] = *(a1 + 40);
    [v2 enumerateObjectsUsingBlock:v10];
  }

  else
  {
    v3 = [*(a1 + 40) registeredCharacteristics];
    [v3 removeObjectsInArray:*(a1 + 32)];
  }

  v4 = [*(a1 + 40) peripherals];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__HUAccessoryManager_setNotify_forCharacteristicUUIDs___block_invoke_3;
  v7[3] = &unk_1E85CB000;
  v9 = *(a1 + 48);
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  [v4 enumerateObjectsUsingBlock:v7];
}

void __55__HUAccessoryManager_setNotify_forCharacteristicUUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) registeredCharacteristics];
  v4 = [v3 containsObject:v6];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) registeredCharacteristics];
    [v5 addObject:v6];
  }
}

- (void)registerUpdateBlock:(id)a3 forCharacteristicUUIDs:(id)a4 withListener:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    [(HUAccessoryManager *)self setNotify:v8 != 0 forCharacteristicUUIDs:a4];
    v10 = v9;
    v11 = v8;
    AX_PERFORM_WITH_LOCK();
  }
}

void __78__HUAccessoryManager_registerUpdateBlock_forCharacteristicUUIDs_withListener___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 96);
  v7 = v2;
  if (v3)
  {
    v5 = [v3 copy];
    [v4 setObject:v5 forKey:v7];

    v6 = objc_getAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey);
    if (!v6)
    {
      v6 = [[HUAccessoryListenerHelper alloc] initWithListenerAddress:*(a1 + 32) andDelegate:*(a1 + 40)];
      objc_setAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey, v6, 1);
    }

    [(HUAccessoryListenerHelper *)v6 addKey:@"HUAccessoryManagerUpdateKey"];
  }

  else
  {
    [v4 removeObjectForKey:?];
  }
}

- (void)registerAttributeUpdateBlock:(id)a3 withListener:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v5;
    AX_PERFORM_WITH_LOCK();
  }
}

void __64__HUAccessoryManager_registerAttributeUpdateBlock_withListener___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 104);
  v7 = v2;
  if (v3)
  {
    v5 = [v3 copy];
    [v4 setObject:v5 forKey:v7];

    v6 = objc_getAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey);
    if (!v6)
    {
      v6 = [[HUAccessoryListenerHelper alloc] initWithListenerAddress:*(a1 + 32) andDelegate:*(a1 + 40)];
      objc_setAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey, v6, 1);
    }

    [(HUAccessoryListenerHelper *)v6 addKey:@"HUAccessoryManagerAttributesUpdateKey"];
  }

  else
  {
    [v4 removeObjectForKey:?];
  }
}

- (void)registerDiscoveryBlock:(id)a3 withListener:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v5;
    AX_PERFORM_WITH_LOCK();
  }
}

void __58__HUAccessoryManager_registerDiscoveryBlock_withListener___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 112);
  v7 = v2;
  if (v3)
  {
    v5 = [v3 copy];
    [v4 setObject:v5 forKey:v7];

    v6 = objc_getAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey);
    if (!v6)
    {
      v6 = [[HUAccessoryListenerHelper alloc] initWithListenerAddress:*(a1 + 32) andDelegate:*(a1 + 40)];
      objc_setAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey, v6, 1);
    }

    [(HUAccessoryListenerHelper *)v6 addKey:@"HUAccessoryManagerDiscoveryKey"];
  }

  else
  {
    [v4 removeObjectForKey:?];
  }
}

- (void)registerBluetoothStateBlock:(id)a3 withListener:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v5;
    AX_PERFORM_WITH_LOCK();
  }
}

void __63__HUAccessoryManager_registerBluetoothStateBlock_withListener___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(v4 + 120);
  if (v3)
  {
    v6 = [v3 copy];
    [v5 setObject:v6 forKey:v2];

    v7 = objc_getAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey);
    if (!v7)
    {
      v7 = [[HUAccessoryListenerHelper alloc] initWithListenerAddress:*(a1 + 32) andDelegate:*(a1 + 40)];
      objc_setAssociatedObject(*(a1 + 32), &HUAccessoryUpdateDestructionHelperKey, v7, 1);
    }

    [(HUAccessoryListenerHelper *)v7 addKey:@"HUAccessoryManagerBluetoothStateKey"];
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(v9 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__HUAccessoryManager_registerBluetoothStateBlock_withListener___block_invoke_2;
    v11[3] = &unk_1E85CA380;
    v11[4] = v9;
    v12 = v8;
    dispatch_async(v10, v11);
  }

  else
  {
    [*(v4 + 120) removeObjectForKey:v2];
  }
}

uint64_t __63__HUAccessoryManager_registerBluetoothStateBlock_withListener___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) updateBluetoothAvailability];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 9);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

- (void)getBluetoothState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__HUAccessoryManager_getBluetoothState___block_invoke;
    v7[3] = &unk_1E85CA508;
    v7[4] = self;
    v8 = v4;
    dispatch_async(bluetoothCentralQueue, v7);
  }
}

- (void)setPeripherals:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  peripherals = v4->_peripherals;
  v4->_peripherals = v5;

  objc_sync_exit(v4);
}

- (void)enumerateConnectedBluetoothDevices:(BOOL)a3 usingBlock:(id)a4 andCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__HUAccessoryManager_enumerateConnectedBluetoothDevices_usingBlock_andCompletion___block_invoke;
    block[3] = &unk_1E85CB078;
    v14 = a3;
    v12 = v8;
    v13 = v9;
    dispatch_async(bluetoothCentralQueue, block);
  }
}

void __82__HUAccessoryManager_enumerateConnectedBluetoothDevices_usingBlock_andCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0x80000200000;
  }

  else
  {
    v2 = 0x80000800000;
  }

  v3 = [MEMORY[0x1E695D288] devicesWithDiscoveryFlags:v2 error:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__HUAccessoryManager_enumerateConnectedBluetoothDevices_usingBlock_andCompletion___block_invoke_2;
  v5[3] = &unk_1E85CB050;
  v6 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v5];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

- (void)enumerateAudioBluetoothDevicesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__HUAccessoryManager_enumerateAudioBluetoothDevicesUsingBlock___block_invoke;
    v7[3] = &unk_1E85CA380;
    v7[4] = self;
    v8 = v4;
    dispatch_async(bluetoothCentralQueue, v7);
  }
}

void __63__HUAccessoryManager_enumerateAudioBluetoothDevicesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) aaAvailableDevices];
  v3 = [v2 allValues];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__HUAccessoryManager_enumerateAudioBluetoothDevicesUsingBlock___block_invoke_2;
  v4[3] = &unk_1E85CB0A0;
  v5 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v4];
}

- (void)getAvailableAddressesSupportingCharacteristic:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__HUAccessoryManager_getAvailableAddressesSupportingCharacteristic_withCompletion___block_invoke;
    block[3] = &unk_1E85CB0F0;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(bluetoothCentralQueue, block);
  }
}

void __83__HUAccessoryManager_getAvailableAddressesSupportingCharacteristic_withCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = [MEMORY[0x1E695D2A0] UUIDWithString:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [*(a1 + 40) peripherals];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __83__HUAccessoryManager_getAvailableAddressesSupportingCharacteristic_withCompletion___block_invoke_2;
  v12 = &unk_1E85CB0C8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = v2;
  v16 = v3;
  v7 = v3;
  v8 = v2;
  [v4 enumerateObjectsUsingBlock:&v9];

  [*(a1 + 40) logMessage:{@"Found identifiers for %@ = %@", *(a1 + 32), v7, v9, v10, v11, v12}];
  [*(a1 + 40) getAddressesFromIdentifiers:v7 withCompletion:*(a1 + 48)];
}

void __83__HUAccessoryManager_getAvailableAddressesSupportingCharacteristic_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![*(a1 + 32) length] || (objc_msgSend(*(a1 + 40), "characteristicWithUUID:forPeripheral:", *(a1 + 48), v7), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = *(a1 + 56);
    v5 = [v7 identifier];
    v6 = [v5 UUIDString];
    [v4 hcSafeAddObject:v6];
  }
}

- (void)getAudioOwnershipForAddress:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HUAccessoryManager_getAudioOwnershipForAddress_withCompletion___block_invoke;
    block[3] = &unk_1E85CB0F0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(bluetoothCentralQueue, block);
  }
}

uint64_t __65__HUAccessoryManager_getAudioOwnershipForAddress_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioOwnershipByAddress];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v5 logMessage:{@"Found audio ownership %@ for address %@", v6, *(a1 + 40)}];

  v7 = *(*(a1 + 48) + 16);

  return v7();
}

- (void)getProductCodeForAddress:(id)a3 withCompletion:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 && [v6 length])
  {
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__HUAccessoryManager_getProductCodeForAddress_withCompletion___block_invoke;
    v10[3] = &unk_1E85CB118;
    v11 = v7;
    [(HUAccessoryManager *)self enumerateProductCodesForAddresses:v8 withBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)enumerateProductCodesForAddresses:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__HUAccessoryManager_enumerateProductCodesForAddresses_withBlock___block_invoke;
    v8[3] = &unk_1E85CB140;
    v9 = v6;
    v10 = v7;
    [(HUAccessoryManager *)self enumerateConnectedBluetoothDevices:1 usingBlock:v8 andCompletion:0];
  }
}

void __66__HUAccessoryManager_enumerateProductCodesForAddresses_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v6 = [v9 btAddressData];
  v7 = CUPrintNSDataAddress();

  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = [v9 productCode];
    (*(*(a1 + 40) + 16))(*(a1 + 40), v7, v8, [*(a1 + 32) indexOfObject:v7], a4);
  }
}

- (void)enumerateAvailableDevicesWithBlock:(id)a3 andCompletion:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__HUAccessoryManager_enumerateAvailableDevicesWithBlock_andCompletion___block_invoke;
    v8[3] = &unk_1E85CB140;
    v8[4] = self;
    v9 = v6;
    [(HUAccessoryManager *)self enumerateConnectedBluetoothDevices:1 usingBlock:v8 andCompletion:a4];
  }
}

void __71__HUAccessoryManager_enumerateAvailableDevicesWithBlock_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 btAddressData];
  v4 = CUPrintNSDataAddress();

  if ([v4 length])
  {
    v5 = [v6 productCode];
    [*(a1 + 32) hearingListeningModeFromBluetoothListeningMode:{objc_msgSend(v6, "listeningMode")}];
    [v6 listeningModeConfigs];
    [v6 primaryPlacement];
    [v6 secondaryPlacement];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getHearingProtectionSupportForAddress:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__HUAccessoryManager_getHearingProtectionSupportForAddress_withCompletion___block_invoke;
    v8[3] = &unk_1E85CB168;
    v9 = v6;
    v10 = v7;
    [(HUAccessoryManager *)self enumerateAudioBluetoothDevicesUsingBlock:v8];
  }
}

void __75__HUAccessoryManager_getHearingProtectionSupportForAddress_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  v8 = [v6 bluetoothAddress];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    [v9 hearingProtectionCapability];
    (*(*(a1 + 40) + 16))();
    *a4 = 1;
  }
}

- (void)getPairedDeviceSupportsHearingProtection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__HUAccessoryManager_getPairedDeviceSupportsHearingProtection___block_invoke;
    v9[3] = &unk_1E85CB190;
    v9[4] = v10;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__HUAccessoryManager_getPairedDeviceSupportsHearingProtection___block_invoke_69;
    v6[3] = &unk_1E85CB1B8;
    v7 = v4;
    v8 = v10;
    [(HUAccessoryManager *)self enumerateConnectedBluetoothDevices:0 usingBlock:v9 andCompletion:v6];

    _Block_object_dispose(v10, 8);
  }
}

void __63__HUAccessoryManager_getPairedDeviceSupportsHearingProtection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 deviceFlags];
  v8 = +[HUUtilities sharedUtilities];
  v9 = [v8 deviceIsCounterfeit:v6];

  v10 = [v6 btAddressData];

  v11 = CUPrintNSDataAddress();

  v12 = +[HUAccessoryHearingSettings sharedInstance];
  v13 = [v12 activeHearingProtectionEnabledForAddress:v11];

  if ((v7 & 0x2000000) == 0 && (v9 & 1) == 0 && v13)
  {
    v14 = HCLogHearingProtection();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "AccessoryManager: Paired device with supported and enabled HP %@", &v16, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __85__HUAccessoryManager_getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion___block_invoke;
    v6[3] = &unk_1E85CB1E0;
    v6[4] = self;
    v7 = v4;
    [(HUAccessoryManager *)self getCBDeviceForCurrentRouteWithCompletion:v6];
  }
}

void __85__HUAccessoryManager_getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKey:@"RouteSubtype"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v8 = getpaSupportedWiredRoutesSymbolLoc_ptr;
  v23 = getpaSupportedWiredRoutesSymbolLoc_ptr;
  if (!getpaSupportedWiredRoutesSymbolLoc_ptr)
  {
    v9 = PersonalAudioLibrary();
    v21[3] = dlsym(v9, "paSupportedWiredRoutes");
    getpaSupportedWiredRoutesSymbolLoc_ptr = v21[3];
    v8 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v8)
  {
    getADAFMetadataKeyHAEDataForGauge_cold_1();
    goto LABEL_13;
  }

  v10 = v8();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v11 = getpaSupportedWirelessRoutesSymbolLoc_ptr;
  v23 = getpaSupportedWirelessRoutesSymbolLoc_ptr;
  if (!getpaSupportedWirelessRoutesSymbolLoc_ptr)
  {
    v12 = PersonalAudioLibrary();
    v21[3] = dlsym(v12, "paSupportedWirelessRoutes");
    getpaSupportedWirelessRoutesSymbolLoc_ptr = v21[3];
    v11 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v11)
  {
LABEL_13:
    ADAFMetadataKeyHAEDataForGauge_cold_1 = getADAFMetadataKeyHAEDataForGauge_cold_1();
    _Block_object_dispose(&v20, 8);
    _Unwind_Resume(ADAFMetadataKeyHAEDataForGauge_cold_1);
  }

  v13 = v11();
  if (([v10 containsObject:v7] & 1) != 0 || (objc_msgSend(v5, "productCode"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "containsObject:", v14), v14, v15))
  {
    v16 = ([v5 deviceFlags] & 0xC000000) != 0;
    v17 = [v5 btAddressData];
    v18 = CUPrintNSDataAddress();

    (*(*(a1 + 40) + 16))(*(a1 + 40), v6, [*(a1 + 32) pseVersionForAddress:v18], v18, v16, objc_msgSend(*(a1 + 32), "hearingListeningModeFromBluetoothListeningMode:", objc_msgSend(v5, "listeningMode")));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getPairedDeviceSupportsPSE:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__HUAccessoryManager_getPairedDeviceSupportsPSE___block_invoke;
    v9[3] = &unk_1E85CB190;
    v9[4] = v10;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__HUAccessoryManager_getPairedDeviceSupportsPSE___block_invoke_2;
    v6[3] = &unk_1E85CB1B8;
    v7 = v4;
    v8 = v10;
    [(HUAccessoryManager *)self enumerateConnectedBluetoothDevices:0 usingBlock:v9 andCompletion:v6];

    _Block_object_dispose(v10, 8);
  }
}

void __49__HUAccessoryManager_getPairedDeviceSupportsPSE___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 deviceFlags];
  v8 = +[HUUtilities sharedUtilities];
  v9 = [v8 deviceIsCounterfeit:v6];

  if ((v7 & 0x2000020) == 0x20 && (v9 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (unint64_t)pseVersionForAddress:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "AccessoryManager: Checking PSE version for address %@", buf, 0xCu);
  }

  if ([v4 length])
  {
    v6 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = [(HUAccessoryManager *)self aaAvailableDevices];
      v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      v10 = [(HUAccessoryManager *)self aaAvailableDevices];
      v11 = [v10 allValues];
      *buf = 138412546;
      v25 = v9;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "AccessoryManager: Found devices %@ - %@", buf, 0x16u);
    }

    v12 = [(HUAccessoryManager *)self aaAvailableDevices];
    v13 = [v12 allValues];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__HUAccessoryManager_pseVersionForAddress___block_invoke;
    v17[3] = &unk_1E85CB208;
    v18 = v4;
    v19 = &v20;
    [v13 enumerateObjectsUsingBlock:v17];
  }

  v14 = v21[3];
  _Block_object_dispose(&v20, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void __43__HUAccessoryManager_pseVersionForAddress___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 bluetoothAddress];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v3, "enhancedTransparencyVersion")}];
      v8 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "AccessoryManager: Found PSE version %@ for address %@", &v10, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = [v3 enhancedTransparencyVersion];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getPSEVersionForAddress:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__HUAccessoryManager_getPSEVersionForAddress_withCompletion___block_invoke;
    block[3] = &unk_1E85CB230;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_async(bluetoothCentralQueue, block);
  }
}

uint64_t __61__HUAccessoryManager_getPSEVersionForAddress_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) pseVersionForAddress:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (BOOL)pmeEverywhereSupportedForAddress:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ([v4 length])
  {
    v5 = [(HUAccessoryManager *)self aaAvailableDevices];
    v6 = [v5 allValues];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__HUAccessoryManager_pmeEverywhereSupportedForAddress___block_invoke;
    v9[3] = &unk_1E85CB208;
    v10 = v4;
    v11 = &v12;
    [v6 enumerateObjectsUsingBlock:v9];
  }

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__HUAccessoryManager_pmeEverywhereSupportedForAddress___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 bluetoothAddress];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v5 pmeEverywhereCapability] == 2;
  }
}

- (void)getPMEEverywhereSupportStateForAddress:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__HUAccessoryManager_getPMEEverywhereSupportStateForAddress_withCompletion___block_invoke;
    block[3] = &unk_1E85CB230;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_async(bluetoothCentralQueue, block);
  }
}

uint64_t __76__HUAccessoryManager_getPMEEverywhereSupportStateForAddress_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) pmeEverywhereSupportedForAddress:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)getSSLSupportStateForAddress:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 length])
    {
      *buf = 0;
      v17 = buf;
      v18 = 0x2020000000;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__HUAccessoryManager_getSSLSupportStateForAddress_withCompletion___block_invoke;
      v13[3] = &unk_1E85CB258;
      v14 = v6;
      v15 = buf;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __66__HUAccessoryManager_getSSLSupportStateForAddress_withCompletion___block_invoke_2;
      v9[3] = &unk_1E85CB280;
      v12 = buf;
      v10 = v14;
      v11 = v7;
      [(HUAccessoryManager *)self enumerateConnectedBluetoothDevices:1 usingBlock:v13 andCompletion:v9];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v8 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "AccessoryManager: SSL is not supported for nil address", buf, 2u);
      }

      (*(v7 + 2))(v7, 0);
    }
  }
}

void __66__HUAccessoryManager_getSSLSupportStateForAddress_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 btAddressData];
  v7 = CUPrintNSDataAddress();

  if ([v7 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 selectiveSpeechListeningCapability] == 1;
    *a4 = 1;
  }
}

uint64_t __66__HUAccessoryManager_getSSLSupportStateForAddress_withCompletion___block_invoke_2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[6] + 8) + 24);
    v4 = a1[4];
    v8[0] = 67109378;
    v8[1] = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "AccessoryManager: SSL is supported %d for %@ address", v8, 0x12u);
  }

  v5 = *(*(a1[6] + 8) + 24);
  result = (*(a1[5] + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getSSLEnabledForAddress:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v7 && v8)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__HUAccessoryManager_getSSLEnabledForAddress_withCompletion___block_invoke;
    v12[3] = &unk_1E85CB2A8;
    v9 = v6;
    v13 = v9;
    v14 = v7;
    v15 = &v16;
    [(HUAccessoryManager *)self enumerateConnectedBluetoothDevices:1 usingBlock:v12 andCompletion:0];
    if ((v17[3] & 1) == 0)
    {
      v10 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "AccessoryManager: Couldn't find SSL state for address %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v16, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __61__HUAccessoryManager_getSSLEnabledForAddress_withCompletion___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 btAddressData];
  v8 = CUPrintNSDataAddress();

  if ([v8 isEqualToString:a1[4]])
  {
    v9 = [v6 selectiveSpeechListeningConfig];
    v10 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v13[0] = 67109378;
      v13[1] = v9 == 1;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "AccessoryManager: Found SSL Enabled %d for address %@", v13, 0x12u);
    }

    (*(a1[5] + 16))();
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setSSLEnabled:(BOOL)a3 forAddress:(id)a4
{
  v6 = a4;
  if ([v6 length])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__HUAccessoryManager_setSSLEnabled_forAddress___block_invoke;
    v7[3] = &unk_1E85CB2F8;
    v10 = a3;
    v8 = v6;
    v9 = self;
    [(HUAccessoryManager *)self enumerateConnectedBluetoothDevices:1 usingBlock:v7 andCompletion:0];
  }
}

void __47__HUAccessoryManager_setSSLEnabled_forAddress___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 btAddressData];
  v8 = CUPrintNSDataAddress();

  if ([v8 isEqualToString:*(a1 + 32)])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695D280]);
    v10 = v9;
    if (*(a1 + 48))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [v9 setSelectiveSpeechListeningConfig:v11];
    v12 = [*(a1 + 40) bluetoothController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__HUAccessoryManager_setSSLEnabled_forAddress___block_invoke_2;
    v13[3] = &unk_1E85CB2D0;
    v13[4] = *(a1 + 40);
    v15 = *(a1 + 48);
    v14 = v6;
    [v12 modifyDevice:v14 settings:v10 completion:v13];

    *a4 = 1;
  }
}

void __47__HUAccessoryManager_setSSLEnabled_forAddress___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = *(a1 + 48);
  v6 = a2;
  v8 = [v4 numberWithBool:v5];
  v7 = [*(a1 + 40) identifier];
  [v3 logMessage:{@"AccessoryManager: Updated SSL mode %@ for %@ with error %@", v8, v7, v6}];
}

- (void)enumerateAvailablePSEDevicesWithBlock:(id)a3 andCompletion:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__HUAccessoryManager_enumerateAvailablePSEDevicesWithBlock_andCompletion___block_invoke;
    v8[3] = &unk_1E85CB050;
    v9 = v6;
    [(HUAccessoryManager *)self enumerateConnectedBluetoothDevices:1 usingBlock:v8 andCompletion:a4];
  }
}

void __74__HUAccessoryManager_enumerateAvailablePSEDevicesWithBlock_andCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  if (([v10 deviceFlags] & 0x20) != 0)
  {
    v6 = *(a1 + 32);
    v7 = [v10 btAddressData];
    v8 = CUPrintNSDataAddress();
    v9 = [v10 name];
    (*(v6 + 16))(v6, v8, v9, a4);
  }
}

- (void)getCBDeviceForCurrentRouteWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[HUUtilities sharedUtilities];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke;
    v6[3] = &unk_1E85CB370;
    v6[4] = self;
    v7 = v4;
    [v5 requestCurrentRoutesWithCompletion:v6];
  }
}

void __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__1;
  v20[4] = __Block_byref_object_dispose__1;
  v21 = 0;
  v4 = [v3 objectForKey:@"AXSHARoutePicked"];
  v5 = [v4 objectForKey:@"RouteUID"];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F5614A78];
  v7 = [v6 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5614A78];

  v8 = HCLogHearing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke_cold_1(v4, v8);
  }

  v9 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke_88;
  v16[3] = &unk_1E85CB320;
  v10 = v7;
  v17 = v10;
  v18 = v4;
  v19 = v20;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke_89;
  v12[3] = &unk_1E85CB348;
  v14 = *(a1 + 40);
  v15 = v20;
  v11 = v18;
  v13 = v11;
  [v9 enumerateConnectedBluetoothDevices:1 usingBlock:v16 andCompletion:v12];

  _Block_object_dispose(v20, 8);
}

void __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke_88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 btAddressData];
  v9 = CUPrintNSDataAddress();
  v10 = [v9 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5614A78];

  if ([*(a1 + 32) containsString:v10])
  {
    v11 = HCLogHearing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke_88_cold_1(v7, a1, v11);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)getCurrentRouteInformationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__HUAccessoryManager_getCurrentRouteInformationWithCompletion___block_invoke;
    v6[3] = &unk_1E85CB398;
    v7 = v4;
    [(HUAccessoryManager *)self getCBDeviceForCurrentRouteWithCompletion:v6];
  }
}

void __63__HUAccessoryManager_getCurrentRouteInformationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = +[HUUtilities sharedUtilities];
    [v8 deviceIsCounterfeit:v5];

    v9 = [v5 btAddressData];
    v10 = CUPrintNSDataAddress();

    v11 = [v5 identifier];
    v12 = [v5 productCode];
    v13 = [v5 name];
    (*(*(a1 + 32) + 16))();
  }

  else if (v6)
  {
    v14 = [v6 objectForKey:@"RouteUID"];
    v15 = [v7 objectForKey:@"RouteName"];
    if (!v15)
    {
      v15 = [v7 objectForKey:@"AVAudioRouteName"];
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v16 = HCLogHearing();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __63__HUAccessoryManager_getCurrentRouteInformationWithCompletion___block_invoke_cold_1(v16);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (unint64_t)hearingListeningModeFromBluetoothListeningMode:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1DA6874F8[a3 - 1];
  }
}

- (int)bluetoothListeningModeFromHearingListeningMode:(unint64_t)a3
{
  v3 = __ROR8__(a3, 1) - 1;
  if (v3 > 7)
  {
    return 0;
  }

  else
  {
    return dword_1DA687518[v3];
  }
}

- (void)getCurrentRouteListeningModeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__HUAccessoryManager_getCurrentRouteListeningModeWithCompletion___block_invoke;
    v6[3] = &unk_1E85CB1E0;
    v6[4] = self;
    v7 = v4;
    [(HUAccessoryManager *)self getCBDeviceForCurrentRouteWithCompletion:v6];
  }
}

void __65__HUAccessoryManager_getCurrentRouteListeningModeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "listeningMode")}];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "AccessoryManager: Found device: %@ for current route: %@, listening mode %@", &v12, 0x20u);
  }

  v9 = +[HUUtilities sharedUtilities];
  v10 = [v9 deviceIsCounterfeit:v5];

  if ((v10 & 1) == 0)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) hearingListeningModeFromBluetoothListeningMode:{objc_msgSend(v5, "listeningMode")}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentRouteListeningMode:(unint64_t)a3
{
  if (a3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __51__HUAccessoryManager_setCurrentRouteListeningMode___block_invoke;
    v3[3] = &unk_1E85CB3E8;
    v3[4] = self;
    v3[5] = a3;
    [(HUAccessoryManager *)self getCBDeviceForCurrentRouteWithCompletion:v3];
  }
}

void __51__HUAccessoryManager_setCurrentRouteListeningMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HUUtilities sharedUtilities];
  v5 = [v4 deviceIsCounterfeit:v3];

  if ((v5 & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695D280]);
    [v6 setListeningMode:{objc_msgSend(*(a1 + 32), "bluetoothListeningModeFromHearingListeningMode:", *(a1 + 40))}];
    v7 = [*(a1 + 32) bluetoothController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__HUAccessoryManager_setCurrentRouteListeningMode___block_invoke_2;
    v9[3] = &unk_1E85CB3C0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v11 = v8;
    v10 = v3;
    [v7 modifyDevice:v10 settings:v6 completion:v9];
  }
}

void __51__HUAccessoryManager_setCurrentRouteListeningMode___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = *(a1 + 48);
  v6 = a2;
  v8 = [v4 numberWithUnsignedInteger:v5];
  v7 = [*(a1 + 40) identifier];
  [v3 logMessage:{@"Updated listening mode %@ for %@ with error %@", v8, v7, v6}];
}

- (void)getIdentifiersFromAddresses:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HUAccessoryManager_getIdentifiersFromAddresses_withCompletion___block_invoke;
    block[3] = &unk_1E85CB0F0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(bluetoothCentralQueue, block);
  }
}

void __65__HUAccessoryManager_getIdentifiersFromAddresses_withCompletion___block_invoke(id *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1[4] bluetoothController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__HUAccessoryManager_getIdentifiersFromAddresses_withCompletion___block_invoke_2;
  v5[3] = &unk_1E85CB438;
  v6 = a1[5];
  v7 = v2;
  v8 = a1[4];
  v9 = a1[6];
  v4 = v2;
  [v3 getDevicesWithFlags:0 completionHandler:v5];
}

void __65__HUAccessoryManager_getIdentifiersFromAddresses_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__HUAccessoryManager_getIdentifiersFromAddresses_withCompletion___block_invoke_3;
  v5[3] = &unk_1E85CB410;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a2 enumerateObjectsUsingBlock:v5];
  [*(a1 + 48) logMessage:{@"Found identifiers %@", *(a1 + 40)}];
  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

void __65__HUAccessoryManager_getIdentifiersFromAddresses_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 btAddressData];
  v6 = CUPrintNSDataAddress();
  LODWORD(v4) = [v4 containsObject:v6];

  if (v4)
  {
    v7 = *(a1 + 40);
    v8 = [v9 identifier];
    [v7 hcSafeAddObject:v8];
  }
}

- (void)getAddressesFromIdentifiers:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HUAccessoryManager_getAddressesFromIdentifiers_withCompletion___block_invoke;
    block[3] = &unk_1E85CB0F0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(bluetoothCentralQueue, block);
  }
}

void __65__HUAccessoryManager_getAddressesFromIdentifiers_withCompletion___block_invoke(id *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1[4] bluetoothController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__HUAccessoryManager_getAddressesFromIdentifiers_withCompletion___block_invoke_2;
  v5[3] = &unk_1E85CB438;
  v6 = a1[5];
  v7 = v2;
  v8 = a1[4];
  v9 = a1[6];
  v4 = v2;
  [v3 getDevicesWithFlags:0 completionHandler:v5];
}

void __65__HUAccessoryManager_getAddressesFromIdentifiers_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__HUAccessoryManager_getAddressesFromIdentifiers_withCompletion___block_invoke_3;
  v5[3] = &unk_1E85CB410;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a2 enumerateObjectsUsingBlock:v5];
  [*(a1 + 48) logMessage:{@"Found addresses %@", *(a1 + 40)}];
  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

void __65__HUAccessoryManager_getAddressesFromIdentifiers_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 identifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v9 btAddressData];
    v8 = CUPrintNSDataAddress();
    [v6 hcSafeAddObject:v8];
  }
}

- (void)readValueForCharacteristicUUID:(id)a3
{
  v4 = a3;
  bluetoothCentralQueue = self->_bluetoothCentralQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__HUAccessoryManager_readValueForCharacteristicUUID___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(bluetoothCentralQueue, v7);
}

void __53__HUAccessoryManager_readValueForCharacteristicUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) peripherals];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__HUAccessoryManager_readValueForCharacteristicUUID___block_invoke_2;
  v3[3] = &unk_1E85CB460;
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __53__HUAccessoryManager_readValueForCharacteristicUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 services];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__HUAccessoryManager_readValueForCharacteristicUUID___block_invoke_3;
  v6[3] = &unk_1E85CA9F0;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __53__HUAccessoryManager_readValueForCharacteristicUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__HUAccessoryManager_readValueForCharacteristicUUID___block_invoke_4;
  v4[3] = &unk_1E85CA9C8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __53__HUAccessoryManager_readValueForCharacteristicUUID___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 UUID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    [*(a1 + 40) readValueForCharacteristic:v8];
    *a4 = 1;
  }
}

- (void)writeValue:(id)a3 forCharacteristicUUID:(id)a4 andAddress:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] && objc_msgSend(v10, "length") && (objc_msgSend(v9, "UUIDString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v12))
  {
    v19[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__HUAccessoryManager_writeValue_forCharacteristicUUID_andAddress___block_invoke;
    v15[3] = &unk_1E85CB488;
    v15[4] = self;
    v16 = v9;
    v17 = v8;
    v18 = v10;
    [(HUAccessoryManager *)self getIdentifiersFromAddresses:v13 withCompletion:v15];
  }

  else
  {
    [(HUAccessoryManager *)self logMessage:@"Skipping write request. Missing value %@, %@ = %@", v10, v9, v8];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __66__HUAccessoryManager_writeValue_forCharacteristicUUID_andAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 length];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 peripherals];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__HUAccessoryManager_writeValue_forCharacteristicUUID_andAddress___block_invoke_2;
    v10[3] = &unk_1E85CB0C8;
    v7 = v3;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = *(a1 + 48);
    [v6 enumerateObjectsUsingBlock:v10];
  }

  else
  {
    [v5 logMessage:{@"Skipping write request. No identifier found for %@", *(a1 + 56)}];
  }
}

void __66__HUAccessoryManager_writeValue_forCharacteristicUUID_andAddress___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 identifier];
  v7 = [v6 UUIDString];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 40) characteristicWithUUID:*(a1 + 48) forPeripheral:v10];
    [*(a1 + 40) logMessage:{@"Writing %@ to %@ - %@", v9, v10, *(a1 + 56)}];
    if (v9)
    {
      [v10 writeValue:*(a1 + 56) forCharacteristic:v9 type:1];
    }

    else
    {
      [*(a1 + 40) logMessage:{@"Error: Could not write nil characteristic %@ - %@, %@", v10, *(a1 + 56), *(a1 + 48)}];
    }

    *a4 = 1;
  }
}

- (void)turnBluetoothOnWithCompletion:(id)a3
{
  v4 = a3;
  bluetoothCentralQueue = self->_bluetoothCentralQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__HUAccessoryManager_turnBluetoothOnWithCompletion___block_invoke;
  v7[3] = &unk_1E85CA380;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(bluetoothCentralQueue, v7);
}

void __52__HUAccessoryManager_turnBluetoothOnWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__HUAccessoryManager_turnBluetoothOnWithCompletion___block_invoke_2;
  v3[3] = &unk_1E85CB4D8;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 setPowerState:5 completion:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __52__HUAccessoryManager_turnBluetoothOnWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained logMessage:{@"Error turning on Bluetooth %@", v9}];

    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = 0;
  }

  else
  {
    if (!*(a1 + 32))
    {
      goto LABEL_7;
    }

    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 bluetoothController];
    v5 = [v7 bluetoothState] == 5;

    v4 = *(a1 + 32);
  }

  (*(v4 + 16))(v4, v5);
LABEL_7:
  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 updateBluetoothAvailability];
}

void __46__HUAccessoryManager_setupBluetoothController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBluetoothAvailability];
}

void __46__HUAccessoryManager_setupBluetoothController__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 btAddressData];
  v6 = CUPrintNSDataAddress();

  v7 = [v3 deviceFlags];
  v8 = [v6 length];
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = v9;
  if (v8)
  {
    v11 = v7 & 0x40;
    v12 = [v9 audioOwnershipByAddress];
    v13 = [v12 objectForKey:v6];

    v14 = &off_1DA687000;
    if ([v13 BOOLValue] != v11 >> 6)
    {
      v15 = v11 != 0;
      v16 = objc_loadWeakRetained((a1 + 32));
      v17 = [MEMORY[0x1E696AD98] numberWithBool:v15];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "deviceFlags")}];
      [v16 logMessage:{@"Found discovery audio ownership %@ - %@ = %@", v17, v18, v6}];

      v14 = &off_1DA687000;
      v19 = objc_loadWeakRetained((a1 + 32));
      v20 = [v19 audioOwnershipByAddress];
      v21 = [MEMORY[0x1E696AD98] numberWithBool:v15];
      [v20 setObject:v21 forKey:v6];

      v42 = 0;
      v43 = &v42;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy__1;
      v46 = __Block_byref_object_dispose__1;
      v47 = 0;
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __46__HUAccessoryManager_setupBluetoothController__block_invoke_6;
      v39 = &unk_1E85CAF38;
      v41 = &v42;
      v40 = WeakRetained;
      AX_PERFORM_WITH_LOCK();
      v22 = v43[5];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __46__HUAccessoryManager_setupBluetoothController__block_invoke_7;
      v34[3] = &unk_1E85CA558;
      v35 = v6;
      [v22 enumerateKeysAndObjectsUsingBlock:v34];

      _Block_object_dispose(&v42, 8);
    }

    v23 = objc_loadWeakRetained((a1 + 32));
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "deviceFlags")}];
    [v23 logMessage:{@"Attributes updated %@ = %@", v24, v6}];

    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__1;
    v46 = __Block_byref_object_dispose__1;
    v47 = 0;
    v28 = MEMORY[0x1E69E9820];
    v29 = *(v14 + 125);
    v30 = __46__HUAccessoryManager_setupBluetoothController__block_invoke_8;
    v31 = &unk_1E85CAF38;
    v32 = WeakRetained;
    v33 = &v42;
    AX_PERFORM_WITH_LOCK();
    v25 = v43[5];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = v29;
    v26[2] = __46__HUAccessoryManager_setupBluetoothController__block_invoke_9;
    v26[3] = &unk_1E85CA558;
    v27 = v6;
    [v25 enumerateKeysAndObjectsUsingBlock:v26];

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    [v9 logMessage:{@"Missing address in discovery callback %@", v3}];
  }
}

uint64_t __46__HUAccessoryManager_setupBluetoothController__block_invoke_6(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __46__HUAccessoryManager_setupBluetoothController__block_invoke_7(uint64_t a1, int a2, void *aBlock)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v7[0] = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4[2](v4, 0, v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __46__HUAccessoryManager_setupBluetoothController__block_invoke_8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __46__HUAccessoryManager_setupBluetoothController__block_invoke_9(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, *(a1 + 32));
    v4 = v5;
  }
}

- (void)resetAADeviceManager
{
  [(HUAccessoryManager *)self logMessage:@"Resetting aa device manager"];

  [(HUAccessoryManager *)self setupAADeviceManager];
}

- (void)setupAADeviceManager
{
  if (AudioAccessoryServicesLibraryCore())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v3 = getAADeviceManagerClass_softClass;
    v19 = getAADeviceManagerClass_softClass;
    if (!getAADeviceManagerClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getAADeviceManagerClass_block_invoke;
      location[3] = &unk_1E85C9FB0;
      location[4] = &v16;
      __getAADeviceManagerClass_block_invoke(location);
      v3 = v17[3];
    }

    v4 = v3;
    _Block_object_dispose(&v16, 8);
    v5 = objc_alloc_init(v3);
    aaDeviceManager = self->_aaDeviceManager;
    self->_aaDeviceManager = v5;

    [(AADeviceManager *)self->_aaDeviceManager setDispatchQueue:self->_bluetoothCentralQueue];
    v7 = self->_aaDeviceManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__HUAccessoryManager_setupAADeviceManager__block_invoke;
    v14[3] = &unk_1E85CB578;
    v14[4] = self;
    [(AADeviceManager *)v7 activateWithCompletion:v14];
    objc_initWeak(location, self);
    v8 = self->_aaDeviceManager;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__HUAccessoryManager_setupAADeviceManager__block_invoke_2;
    v12[3] = &unk_1E85CB5A0;
    objc_copyWeak(&v13, location);
    [(AADeviceManager *)v8 setDeviceFoundHandler:v12];
    v9 = self->_aaDeviceManager;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__HUAccessoryManager_setupAADeviceManager__block_invoke_7;
    v10[3] = &unk_1E85CB5A0;
    objc_copyWeak(&v11, location);
    [(AADeviceManager *)v9 setDeviceLostHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }
}

void __42__HUAccessoryManager_setupAADeviceManager__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 bluetoothAddress];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 logMessage:{@"AA controller found %@ address: %@", v3, v5}];

  if (v5)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 aaAvailableDevices];
    [v8 setValue:v3 forKey:v5];

    v9 = objc_loadWeakRetained((a1 + 32));
    [v9 logMessage:{@"AA controller found %@", v3}];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = getPAYodelConfigDidUpdate();
    [v10 postNotificationName:v11 object:0];

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__1;
    v35 = __Block_byref_object_dispose__1;
    v36 = 0;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __42__HUAccessoryManager_setupAADeviceManager__block_invoke_3;
    v28 = &unk_1E85CAF38;
    v29 = WeakRetained;
    v30 = &v31;
    AX_PERFORM_WITH_LOCK();
    v12 = v32[5];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __42__HUAccessoryManager_setupAADeviceManager__block_invoke_4;
    v23[3] = &unk_1E85CA558;
    v13 = v5;
    v24 = v13;
    [v12 enumerateKeysAndObjectsUsingBlock:v23];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __42__HUAccessoryManager_setupAADeviceManager__block_invoke_5;
    v20 = &unk_1E85CAF38;
    v21 = WeakRetained;
    v22 = &v31;
    AX_PERFORM_WITH_LOCK();
    v14 = v32[5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__HUAccessoryManager_setupAADeviceManager__block_invoke_6;
    v15[3] = &unk_1E85CA558;
    v16 = v13;
    [v14 enumerateKeysAndObjectsUsingBlock:v15];

    _Block_object_dispose(&v31, 8);
  }
}

uint64_t __42__HUAccessoryManager_setupAADeviceManager__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __42__HUAccessoryManager_setupAADeviceManager__block_invoke_4(uint64_t a1, int a2, void *aBlock)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v7[0] = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4[2](v4, v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __42__HUAccessoryManager_setupAADeviceManager__block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __42__HUAccessoryManager_setupAADeviceManager__block_invoke_6(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, *(a1 + 32));
    v4 = v5;
  }
}

void __42__HUAccessoryManager_setupAADeviceManager__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 bluetoothAddress];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 logMessage:{@"AA controller lost %@, address: %@", v3, v5}];

  if (v5)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 aaAvailableDevices];
    [v8 removeObjectForKey:v5];

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __42__HUAccessoryManager_setupAADeviceManager__block_invoke_8;
    v17 = &unk_1E85CAF38;
    v18 = WeakRetained;
    v19 = &v20;
    AX_PERFORM_WITH_LOCK();
    v9 = v21[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__HUAccessoryManager_setupAADeviceManager__block_invoke_9;
    v12[3] = &unk_1E85CA558;
    v13 = v5;
    [v9 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = getPAYodelConfigDidUpdate();
    [v10 postNotificationName:v11 object:0];

    _Block_object_dispose(&v20, 8);
  }
}

uint64_t __42__HUAccessoryManager_setupAADeviceManager__block_invoke_8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __42__HUAccessoryManager_setupAADeviceManager__block_invoke_9(uint64_t a1, int a2, void *aBlock)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v7[0] = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4[2](v4, 0, v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __49__HUAccessoryManager_removeDiscoveredAccessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 identifier];
  v3 = [v4 UUIDString];
  [v2 hcSafeAddObject:v3];
}

void __49__HUAccessoryManager_removeDiscoveredAccessories__block_invoke_4(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  (*(v4 + 2))(v4, 0, *(a1 + 32));
}

- (id)characteristicWithUUID:(id)a3 forPeripheral:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v7 = [v6 services];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__HUAccessoryManager_characteristicWithUUID_forPeripheral___block_invoke;
  v11[3] = &unk_1E85CAB00;
  v8 = v5;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateObjectsUsingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __59__HUAccessoryManager_characteristicWithUUID_forPeripheral___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 characteristics];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__HUAccessoryManager_characteristicWithUUID_forPeripheral___block_invoke_2;
  v9[3] = &unk_1E85CAAD8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __59__HUAccessoryManager_characteristicWithUUID_forPeripheral___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 UUID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
    **(a1 + 48) = 1;
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  -[HUAccessoryManager logMessage:](self, "logMessage:", @"Central state (%ld) %d", [v4 state], self->_centralIsOn);
  v5 = [v4 state];

  if (v5 == 5)
  {
    self->_centralIsOn = 1;
    [(HUAccessoryManager *)self logMessage:@"centralManager ON"];

    [(HUAccessoryManager *)self discoverAccessories];
  }

  else
  {
    self->_centralIsOn = 0;

    [(HUAccessoryManager *)self logMessage:@"centralManager OFF"];
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  [v5 setDelegate:self];
  v6 = MEMORY[0x1E695DEC8];
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:*MEMORY[0x1E695D240]];
  v8 = [v6 arrayWithObjects:{v7, 0}];
  [v5 discoverServices:v8];

  v9 = [v5 identifier];
  v10 = [v9 UUIDString];

  if ([v10 length])
  {
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__HUAccessoryManager_centralManager_didConnectPeripheral___block_invoke;
    v13[3] = &unk_1E85CB5F0;
    v13[4] = self;
    v14 = v5;
    [(HUAccessoryManager *)self getAddressesFromIdentifiers:v11 withCompletion:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __58__HUAccessoryManager_centralManager_didConnectPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  [*(a1 + 32) logMessage:{@"Connected to %@ - %@", v3, *(a1 + 40)}];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HUAccessoryManager *)self peripherals];
  v12 = [v11 mutableCopy];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__HUAccessoryManager_centralManager_didDisconnectPeripheral_error___block_invoke;
  v29[3] = &unk_1E85CB618;
  v13 = v9;
  v30 = v13;
  [v12 ax_removeObjectsFromArrayUsingBlock:v29];
  [(HUAccessoryManager *)self setPeripherals:v12];
  v14 = [v13 identifier];
  v15 = [v14 UUIDString];

  if ([v15 length])
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__1;
    v27[4] = __Block_byref_object_dispose__1;
    v28 = 0;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __67__HUAccessoryManager_centralManager_didDisconnectPeripheral_error___block_invoke_2;
    v24 = &unk_1E85CAF38;
    v25 = self;
    v26 = v27;
    AX_PERFORM_WITH_LOCK();
    v31[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__HUAccessoryManager_centralManager_didDisconnectPeripheral_error___block_invoke_3;
    v18[3] = &unk_1E85CB640;
    v18[4] = self;
    v19 = v13;
    v20 = v27;
    [(HUAccessoryManager *)self getAddressesFromIdentifiers:v16 withCompletion:v18];

    _Block_object_dispose(v27, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __67__HUAccessoryManager_centralManager_didDisconnectPeripheral_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __67__HUAccessoryManager_centralManager_didDisconnectPeripheral_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __67__HUAccessoryManager_centralManager_didDisconnectPeripheral_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  [*(a1 + 32) logMessage:{@"Disconnected from %@ - %@", v3, *(a1 + 40)}];
  if ([v3 length])
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__HUAccessoryManager_centralManager_didDisconnectPeripheral_error___block_invoke_4;
    v5[3] = &unk_1E85CA558;
    v6 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __67__HUAccessoryManager_centralManager_didDisconnectPeripheral_error___block_invoke_4(uint64_t a1, int a2, void *aBlock)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v7[0] = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4[2](v4, 0, v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5
{
  v7 = a5;
  [(HUAccessoryManager *)self logMessage:@"Connection changed %ld - %@", a4, v7];
  if (a4 == 1)
  {
    v8 = [(HUAccessoryManager *)self peripherals];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__HUAccessoryManager_centralManager_connectionEventDidOccur_forPeripheral___block_invoke;
    v13[3] = &unk_1E85CB618;
    v9 = v7;
    v14 = v9;
    v10 = [v8 indexOfObjectPassingTest:v13];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(HUAccessoryManager *)self peripherals];
      v12 = [v11 arrayByAddingObject:v9];
      [(HUAccessoryManager *)self setPeripherals:v12];
    }

    [(CBCentralManager *)self->_centralManager connectPeripheral:v9 options:0];
  }
}

uint64_t __75__HUAccessoryManager_centralManager_connectionEventDidOccur_forPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v4 = a3;
  v5 = [v4 services];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__HUAccessoryManager_peripheral_didDiscoverServices___block_invoke;
  v7[3] = &unk_1E85CA0E0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __53__HUAccessoryManager_peripheral_didDiscoverServices___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 UUID];
  v4 = [MEMORY[0x1E695D2A0] UUIDWithString:*MEMORY[0x1E695D240]];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [*(a1 + 32) discoverCharacteristics:0 forService:v6];
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 characteristics];
  [(HUAccessoryManager *)self logMessage:@"Found characteristics %@ - %@", v8, v11];

  v12 = [(HUAccessoryManager *)self registeredCharacteristics];
  [(HUAccessoryManager *)self updateNotify:1 forPeripheral:v8 withCharacteristicUUIDs:v12];

  v13 = [v8 identifier];
  v14 = [v13 UUIDString];

  if ([v14 length])
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__1;
    v18[4] = __Block_byref_object_dispose__1;
    v19 = 0;
    v17[5] = MEMORY[0x1E69E9820];
    v17[6] = 3221225472;
    v17[7] = __76__HUAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
    v17[8] = &unk_1E85CAF38;
    v17[9] = self;
    v17[10] = v18;
    AX_PERFORM_WITH_LOCK();
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__HUAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2;
    v17[3] = &unk_1E85CB5C8;
    v17[4] = v18;
    [(HUAccessoryManager *)self getAddressesFromIdentifiers:v15 withCompletion:v17];

    _Block_object_dispose(v18, 8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __76__HUAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __76__HUAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if ([v3 length])
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__HUAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_3;
    v5[3] = &unk_1E85CA558;
    v6 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __76__HUAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_3(uint64_t a1, int a2, void *aBlock)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v7[0] = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4[2](v4, v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 UUID];
  v12 = [v9 value];
  v13 = [v8 identifier];
  v14 = [v13 UUIDString];

  if ([v14 length])
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__1;
    v27[4] = __Block_byref_object_dispose__1;
    v28 = 0;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __71__HUAccessoryManager_peripheral_didUpdateValueForCharacteristic_error___block_invoke;
    v24 = &unk_1E85CAF38;
    v25 = self;
    v26 = v27;
    AX_PERFORM_WITH_LOCK();
    v29[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__HUAccessoryManager_peripheral_didUpdateValueForCharacteristic_error___block_invoke_2;
    v17[3] = &unk_1E85CB690;
    v20 = v27;
    v18 = v11;
    v19 = v12;
    [(HUAccessoryManager *)self getAddressesFromIdentifiers:v15 withCompletion:v17];

    _Block_object_dispose(v27, 8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __71__HUAccessoryManager_peripheral_didUpdateValueForCharacteristic_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __71__HUAccessoryManager_peripheral_didUpdateValueForCharacteristic_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if ([v3 length])
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71__HUAccessoryManager_peripheral_didUpdateValueForCharacteristic_error___block_invoke_3;
    v5[3] = &unk_1E85CB668;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __71__HUAccessoryManager_peripheral_didUpdateValueForCharacteristic_error___block_invoke_3(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, a1[4], a1[5], a1[6]);
    v4 = v5;
  }
}

- (id)availableAddressesWithCharacteristicSupport:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__HUAccessoryManager_availableAddressesWithCharacteristicSupport___block_invoke;
  v10[3] = &unk_1E85CB6B8;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  [(HUAccessoryManager *)self getAvailableAddressesSupportingCharacteristic:v4 withCompletion:v10];
  v7 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __66__HUAccessoryManager_availableAddressesWithCharacteristicSupport___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)identifierFromBluetoothAddress:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  if ([v4 length])
  {
    v5 = dispatch_semaphore_create(0);
    v21[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__HUAccessoryManager_identifierFromBluetoothAddress___block_invoke;
    v12[3] = &unk_1E85CB6B8;
    v14 = &v15;
    v7 = v5;
    v13 = v7;
    [(HUAccessoryManager *)self getIdentifiersFromAddresses:v6 withCompletion:v12];

    v8 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v7, v8);
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

intptr_t __53__HUAccessoryManager_identifierFromBluetoothAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "AccessoryManager: Current route: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __63__HUAccessoryManager_getCBDeviceForCurrentRouteWithCompletion___block_invoke_88_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 name];
  v6 = *(a2 + 40);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_1DA5E2000, a3, OS_LOG_TYPE_DEBUG, "AccessoryManager: Found CB device: %@ for current route: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end