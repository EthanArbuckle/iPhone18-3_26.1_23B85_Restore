@interface AXHearingAidDeviceController
+ (id)sharedController;
- (AXHearingAidDeviceController)init;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)isLEAudioServiceInServiceUUIDs:(id)ds;
- (BOOL)isPaired;
- (BOOL)isPartiallyConnected;
- (BOOL)shouldRelinquishForPartialConnection;
- (id)addPeripheral:(id)peripheral toDevice:(id)device;
- (id)hearingAidForDeviceID:(id)d;
- (id)hearingAidForPeripheral:(id)peripheral;
- (id)hearingAidForPeripheralID:(id)d;
- (id)hearingAidsForPeripheral:(id)peripheral;
- (id)hearingAidsForUUID:(id)d;
- (id)pairedHearingDevice;
- (id)scanningServiceUUIDs;
- (id)valueForProperty:(unint64_t)property forDeviceID:(id)d;
- (void)addAvailableDevice:(id)device;
- (void)addConnectedDevice:(id)device;
- (void)addFakeHearingAidsWithType:(id)type;
- (void)addLoadedDevice:(id)device;
- (void)cancelPendingConnections;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didRetrieveConnectedPeripherals:(id)peripherals;
- (void)centralManager:(id)manager didRetrievePeripherals:(id)peripherals;
- (void)centralManagerDidUpdateState:(id)state;
- (void)checkPartiallyPairedWithCompletion:(id)completion;
- (void)checkPeripheralPaired:(id)paired withCompletion:(id)completion;
- (void)clearAvailableDevices;
- (void)clearConnectedDevices;
- (void)clearLoadedDevices;
- (void)clearMissingHearingAids;
- (void)clearPairedHearingAids;
- (void)connectToPeripheral:(id)peripheral;
- (void)dealloc;
- (void)deviceDidFinishLoading:(id)loading;
- (void)disconnectFromHearingAidWithDeviceUUID:(id)d;
- (void)disconnectFromPeripheral:(id)peripheral;
- (void)forgetDevice:(id)device;
- (void)loadedDevicesDidChange;
- (void)mergeDevice:(id)device withDevice:(id)withDevice;
- (void)pairedHearingAidsDidChange;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)persistPairedHearingAids;
- (void)processConnectedIdentifiers:(id)identifiers andLocations:(id)locations;
- (void)removeAvailableDevice:(id)device;
- (void)removeConnectedDevice:(id)device;
- (void)removeLoadedDevice:(id)device;
- (void)replaceDevice:(id)device withDevice:(id)withDevice;
- (void)resetConnectionToPeripheral:(id)peripheral;
- (void)searchForAvailableDevices;
- (void)searchForAvailableDevicesWithCompletion:(id)completion;
- (void)searchForConnectedDevices;
- (void)sendRequestToCentralManager:(id)manager;
- (void)setupCentralManagerForLEAudio;
- (void)stopSearching;
- (void)unpairPeripheralWithUUID:(id)d;
@end

@implementation AXHearingAidDeviceController

+ (id)sharedController
{
  if (sharedController_onceToken_1 != -1)
  {
    +[AXHearingAidDeviceController sharedController];
  }

  v3 = sharedController_HearingAidController;

  return v3;
}

uint64_t __48__AXHearingAidDeviceController_sharedController__block_invoke()
{
  sharedController_HearingAidController = objc_alloc_init(AXHearingAidDeviceController);

  return MEMORY[0x1EEE66BB8]();
}

- (void)searchForAvailableDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = completionCopy;
  AXPerformBlockOnMainThread();
}

void __72__AXHearingAidDeviceController_searchForAvailableDevicesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectedDevices];
  v19 = [v2 copy];

  v3 = [*(a1 + 32) persistentDevices];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [*(a1 + 32) persistentDevices];
    v6 = [v19 arrayByAddingObjectsFromArray:v5];

    v19 = v6;
  }

  v7 = [*(a1 + 32) availablePeripherals];
  v8 = [v7 arrayByAddingObjectsFromArray:v19];

  v9 = [*(a1 + 32) loadedDevices];
  v10 = [v19 indexesOfObjectsPassingTest:&__block_literal_global_3];
  v11 = [v19 objectsAtIndexes:v10];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  if (*(a1 + 40))
  {
    v13 = [*(a1 + 32) availableSearchBlocks];
    [v13 removeAllObjects];

    v14 = [*(a1 + 40) copy];
    v15 = [*(a1 + 32) availableSearchBlocks];
    v16 = _Block_copy(v14);
    [v15 addObject:v16];

    v17 = [*(a1 + 32) connectedSearchBlocks];
    v18 = _Block_copy(v14);
    [v17 addObject:v18];
  }

  [*(a1 + 32) searchForAvailableDevices];
}

- (id)scanningServiceUUIDs
{
  if (scanningServiceUUIDs_onceToken != -1)
  {
    [AXHearingAidDeviceController scanningServiceUUIDs];
  }

  v3 = scanningServiceUUIDs_scanningServiceUUIDs;

  return v3;
}

void __52__AXHearingAidDeviceController_scanningServiceUUIDs__block_invoke()
{
  v0 = objc_opt_new();
  v1 = scanningServiceUUIDs_scanningServiceUUIDs;
  scanningServiceUUIDs_scanningServiceUUIDs = v0;

  if ([MEMORY[0x1E69A4560] isLEAudioEnabled])
  {
    v2 = HCLogHearingAids();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Scanning LEA 3", buf, 2u);
    }

    v3 = scanningServiceUUIDs_scanningServiceUUIDs;
    v4 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1854"];
    [v3 axSafelyAddObject:v4];
  }

  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Scanning MFi", v8, 2u);
  }

  v6 = scanningServiceUUIDs_scanningServiceUUIDs;
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"7D74F4BD-C74A-4431-862C-CCE884371592"];
  [v6 axSafelyAddObject:v7];
}

- (AXHearingAidDeviceController)init
{
  if (([MEMORY[0x1E69A4560] currentProcessIsHeard] & 1) != 0 || _AXSInUnitTestMode())
  {
    v37.receiver = self;
    v37.super_class = AXHearingAidDeviceController;
    v3 = [(HUDeviceController *)&v37 init];
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      availableSearchBlocks = v3->_availableSearchBlocks;
      v3->_availableSearchBlocks = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      connectedSearchBlocks = v3->_connectedSearchBlocks;
      v3->_connectedSearchBlocks = v6;

      array = [MEMORY[0x1E695DF70] array];
      [(AXHearingAidDeviceController *)v3 setUpdateDeviceBlocks:array];

      array2 = [MEMORY[0x1E695DF70] array];
      [(AXHearingAidDeviceController *)v3 setAvailablePeripherals:array2];

      array3 = [MEMORY[0x1E695DF70] array];
      [(AXHearingAidDeviceController *)v3 setLoadedDevices:array3];

      array4 = [MEMORY[0x1E695DF70] array];
      [(AXHearingAidDeviceController *)v3 setConnectedDevices:array4];

      array5 = [MEMORY[0x1E695DF70] array];
      [(AXHearingAidDeviceController *)v3 setCentralRequestBlocks:array5];

      array6 = [MEMORY[0x1E695DF70] array];
      [(AXHearingAidDeviceController *)v3 setPersistentDevices:array6];

      v14 = dispatch_queue_create("com.apple.ax.hearingaids", 0);
      bluetoothCentralQueue = v3->_bluetoothCentralQueue;
      v3->_bluetoothCentralQueue = v14;

      v16 = objc_alloc(MEMORY[0x1E695D258]);
      v17 = v3->_bluetoothCentralQueue;
      v18 = MEMORY[0x1E695DF20];
      v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v20 = [v18 dictionaryWithObjectsAndKeys:{v19, *MEMORY[0x1E695D210], 0}];
      v21 = [v16 initWithDelegate:v3 queue:v17 options:v20];
      bluetoothManager = v3->_bluetoothManager;
      v3->_bluetoothManager = v21;

      sharedPairingAgent = [(CBCentralManager *)v3->_bluetoothManager sharedPairingAgent];
      [sharedPairingAgent setDelegate:v3];

      v3->_centralIsOn = [(CBCentralManager *)v3->_bluetoothManager state]== 5;
      v24 = objc_alloc_init(MEMORY[0x1E696AD10]);
      centralRequestsLock = v3->_centralRequestsLock;
      v3->_centralRequestsLock = v24;

      v26 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
      v27 = dispatch_queue_create("ha_updates_queue", v26);
      deviceUpdatesQueue = v3->_deviceUpdatesQueue;
      v3->_deviceUpdatesQueue = v27;

      v29 = [objc_alloc(MEMORY[0x1E6988780]) initWithTargetSerialQueue:0];
      availableDeviceTimer = v3->_availableDeviceTimer;
      v3->_availableDeviceTimer = v29;

      [(AXDispatchTimer *)v3->_availableDeviceTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
      v31 = dispatch_time(0, 100000000);
      v32 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__AXHearingAidDeviceController_init__block_invoke;
      block[3] = &unk_1E85C9F60;
      v36 = v3;
      dispatch_after(v31, v32, block);
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __36__AXHearingAidDeviceController_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) pairedHearingAidsDidChange];
  objc_initWeak(&location, *(a1 + 32));
  v2 = +[HUHearingAidSettings sharedInstance];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__AXHearingAidDeviceController_init__block_invoke_2;
  v3[3] = &unk_1E85C9F10;
  objc_copyWeak(&v4, &location);
  [v2 registerUpdateBlock:v3 forRetrieveSelector:sel_pairedHearingAids withListener:*(a1 + 32)];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __36__AXHearingAidDeviceController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pairedHearingAidsDidChange];
}

- (void)dealloc
{
  [(AXHearingAidDeviceController *)self setAvailablePeripherals:0];
  [(AXHearingAidDeviceController *)self setLoadedDevices:0];
  [(AXHearingAidDeviceController *)self setConnectedDevices:0];
  [(AXHearingAidDeviceController *)self setUpdateDeviceBlocks:0];
  [(AXHearingAidDeviceController *)self setAvailableSearchBlocks:0];
  [(AXHearingAidDeviceController *)self setConnectedSearchBlocks:0];
  [(AXHearingAidDeviceController *)self setCentralRequestBlocks:0];
  [(AXHearingAidDeviceController *)self setPersistentDevices:0];
  v3.receiver = self;
  v3.super_class = AXHearingAidDeviceController;
  [(AXHearingAidDeviceController *)&v3 dealloc];
}

- (void)setupCentralManagerForLEAudio
{
  if ([MEMORY[0x1E69A4560] isLEAudioEnabled])
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController LEA 3: session setup", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__AXHearingAidDeviceController_setupCentralManagerForLEAudio__block_invoke;
    v4[3] = &unk_1E85CC4B8;
    v4[4] = self;
    objc_copyWeak(&v5, buf);
    [(CBCentralManager *)self->_bluetoothManager setLeAudioEventHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void __61__AXHearingAidDeviceController_setupCentralManagerForLEAudio__block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    v6 = [v3 sessionInfo];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    v5 = [v3 sessionInfo];
    v9 = [v5 audioSessionIdentifier];
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 UUIDString];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject sessionState](v5, "sessionState")}];
      v34 = 138412546;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController LEA 3: session update - ID %@, state %@", &v34, 0x16u);
    }

    v13 = HCLogHearingAids();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject eventType](v3, "eventType")}];
      v15 = [v5 connectedIdentifiers];
      v16 = [v5 locations];
      v34 = 138412802;
      v35 = v14;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController LEA 3: session update - eventType %@, connectedIdentifiers %@, locations %@", &v34, 0x20u);
    }

    if ([v3 eventType]== 1)
    {
      WeakRetained = [v5 connectedIdentifiers];
      v18 = HCLogHearingAids();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v34 = 138412290;
      v35 = WeakRetained;
      v19 = "LEA 3: session update - peripheral ready, connectedIdentifiers %@";
LABEL_11:
      _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, v19, &v34, 0xCu);
      goto LABEL_17;
    }

    if ([v3 eventType]== 7)
    {
      v20 = HCLogHearingAids();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v5 connectedIdentifiers];
        v22 = [v5 locations];
        v34 = 138412546;
        v35 = v21;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "LEA 3: session update - connected, connectedIdentifiers %@, locations %@", &v34, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v18 = [v5 connectedIdentifiers];
      v23 = [v5 locations];
      [WeakRetained processConnectedIdentifiers:v18 andLocations:v23];
    }

    else
    {
      if ([v3 eventType]== 2)
      {
        v25 = [v5 sessionState];
        WeakRetained = HCLogHearingAids();
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v9 UUIDString];
          v27 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
          v34 = 138412546;
          v35 = v26;
          v36 = 2112;
          v37 = v27;
          _os_log_impl(&dword_1DA5E2000, WeakRetained, OS_LOG_TYPE_DEFAULT, "LEA 3: session update - ID %@, new state %@", &v34, 0x16u);
        }

        goto LABEL_18;
      }

      if ([v3 eventType]== 2)
      {
        WeakRetained = [v3 updatedValue];
        v28 = objc_loadWeakRetained((a1 + 40));
        v18 = [v28 pairedHearingDevice];

        v29 = HCLogHearingAids();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 138412546;
          v35 = WeakRetained;
          v36 = 2112;
          v37 = v18;
          _os_log_impl(&dword_1DA5E2000, v29, OS_LOG_TYPE_DEFAULT, "LEA 3: session update - volume %@, paired HearingDevice: %@", &v34, 0x16u);
        }

        [v18 sessionDidUpdateValue:WeakRetained forProperty:0x4000000000];
        goto LABEL_17;
      }

      if ([v3 eventType]== 3)
      {
        WeakRetained = [v3 updatedValue];
        v18 = HCLogHearingAids();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v34 = 138412290;
        v35 = WeakRetained;
        v19 = "LEA 3: session update - volume offset %@";
        goto LABEL_11;
      }

      if ([v3 eventType]== 4)
      {
        WeakRetained = [v3 updatedValue];
        v18 = HCLogHearingAids();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v34 = 138412290;
        v35 = WeakRetained;
        v19 = "LEA 3: session update - volume mute %@";
        goto LABEL_11;
      }

      if ([v3 eventType]!= 6)
      {
        if ([v3 eventType]!= 5)
        {
          WeakRetained = HCLogHearingAids();
          if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 138412290;
            v35 = v3;
            _os_log_impl(&dword_1DA5E2000, WeakRetained, OS_LOG_TYPE_DEFAULT, "LEA 3: session update - unknown event %@", &v34, 0xCu);
          }

          goto LABEL_18;
        }

        WeakRetained = [v3 updatedValue];
        v18 = HCLogHearingAids();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v34 = 138412290;
        v35 = WeakRetained;
        v19 = "LEA 3: session update - mic mute %@";
        goto LABEL_11;
      }

      WeakRetained = [v3 updatedValue];
      v30 = objc_loadWeakRetained((a1 + 40));
      v18 = [v30 pairedHearingDevice];

      v31 = HCLogHearingAids();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412546;
        v35 = WeakRetained;
        v36 = 2112;
        v37 = v18;
        _os_log_impl(&dword_1DA5E2000, v31, OS_LOG_TYPE_DEFAULT, "LEA 3: session update - mic gain %@, paired HearingDevice: %@", &v34, 0x16u);
      }

      [WeakRetained floatValue];
      v33 = v32 / 255.0;
      [v18 setLeftMicrophoneVolume:v33];
      [v18 setRightMicrophoneVolume:v33];
      v23 = +[AXHearingAidDeviceController sharedController];
      [v23 device:v18 didUpdateProperty:64];
    }

    goto LABEL_17;
  }

  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __61__AXHearingAidDeviceController_setupCentralManagerForLEAudio__block_invoke_cold_1(v3, v5);
  }

LABEL_19:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)processConnectedIdentifiers:(id)identifiers andLocations:(id)locations
{
  identifiersCopy = identifiers;
  locationsCopy = locations;
  if ([MEMORY[0x1E69A4560] isLEAudioEnabled])
  {
    if ([identifiersCopy count])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke;
      v9[3] = &unk_1E85CA468;
      v9[4] = self;
      v10 = identifiersCopy;
      v11 = locationsCopy;
      [(AXHearingAidDeviceController *)self sendRequestToCentralManager:v9];
    }

    else
    {
      v8 = HCLogHearingAids();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [AXHearingAidDeviceController processConnectedIdentifiers:andLocations:];
      }
    }
  }
}

void __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 40) retrievePeripheralsWithIdentifiers:*(a1 + 40)];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 138412290;
    v52 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "CentralManager LEA 3: session connected peripherals %@", &v51, 0xCu);
  }

  v5 = [v3 count];
  if (v5 != [*v2 count])
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke_cold_1(v2);
    }
  }

  if ([v3 count])
  {
    v7 = [v3 objectAtIndexedSubscript:0];
    v8 = [*(a1 + 32) hearingAidForPeripheral:v7];
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 identifier];
      v51 = 138412546;
      v52 = v10;
      v53 = 2112;
      v54 = v8;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "LEA 3: session peripheral1 %@\n found device %@", &v51, 0x16u);
    }

    if ([v3 count]< 2)
    {
      if (v8)
      {
LABEL_27:
        v22 = HCLogHearingAids();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v51 = 138412290;
          v52 = v8;
          _os_log_impl(&dword_1DA5E2000, v22, OS_LOG_TYPE_DEFAULT, "LEA 3: session device %@", &v51, 0xCu);
        }

        [v8 sessionDidUpdateLocations:*(a1 + 48)];
        [v8 setupLoadingProperties];
        v23 = [v8 leftPeripheral];
        if ([v23 state] == 1)
        {
          v24 = 1;
        }

        else
        {
          v25 = [v8 leftPeripheral];
          v24 = [v25 state] == 2;
        }

        v26 = [v8 rightPeripheral];
        if ([v26 state] == 1)
        {
          v27 = 1;
        }

        else
        {
          v28 = [v8 rightPeripheral];
          v27 = [v28 state] == 2;
        }

        v29 = HCLogHearingAids();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v8 leftPeripheral];
          v31 = [v30 identifier];
          v51 = 138412546;
          v52 = v31;
          v53 = 1024;
          LODWORD(v54) = v24;
          _os_log_impl(&dword_1DA5E2000, v29, OS_LOG_TYPE_DEFAULT, "LEA 3: session left %@ connection requested %d", &v51, 0x12u);
        }

        v32 = HCLogHearingAids();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v8 rightPeripheral];
          v34 = [v33 identifier];
          v51 = 138412546;
          v52 = v34;
          v53 = 1024;
          LODWORD(v54) = v27;
          _os_log_impl(&dword_1DA5E2000, v32, OS_LOG_TYPE_DEFAULT, "LEA 3: session right %@ connection requested %d", &v51, 0x12u);
        }

        v35 = [v8 leftPeripheral];
        v36 = v35 == 0 || v24;

        if (!v36)
        {
          v37 = *(a1 + 32);
          v38 = [v8 leftPeripheral];
          [v37 connectToPeripheral:v38];
        }

        v39 = [v8 rightPeripheral];
        v40 = v39 == 0 || v27;

        if (!v40)
        {
          v41 = *(a1 + 32);
          v42 = [v8 rightPeripheral];
          [v41 connectToPeripheral:v42];
        }

        [v8 setBasicPropertiesLoaded];
        [v8 updateName];
        v43 = [v8 persistentRepresentation];
        v44 = HCLogHearingAids();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v51 = 138412290;
          v52 = v43;
          _os_log_impl(&dword_1DA5E2000, v44, OS_LOG_TYPE_DEFAULT, "LEA 3: session updating persistent representation - %@", &v51, 0xCu);
        }

        v45 = +[HUHearingAidSettings sharedInstance];
        [v45 setPairedHearingAids:v43];

        v46 = HCLogHearingAids();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v8 deviceUUID];
          v51 = 138412290;
          v52 = v47;
          _os_log_impl(&dword_1DA5E2000, v46, OS_LOG_TYPE_DEFAULT, "LEA 3: session DeviceIdentifier - %@", &v51, 0xCu);
        }

        v48 = +[AXHearingAidDeviceController sharedController];
        [v48 device:v8 didUpdateProperty:0x1000000];

        v49 = +[AXHearingAidDeviceController sharedController];
        [v49 device:v8 didUpdateProperty:14155784];

LABEL_51:
        goto LABEL_52;
      }
    }

    else
    {
      if (v8)
      {
        v11 = 1;
        goto LABEL_21;
      }

      v12 = [v3 objectAtIndexedSubscript:1];

      v8 = [*(a1 + 32) hearingAidForPeripheral:v12];
      v13 = HCLogHearingAids();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 identifier];
        v51 = 138412546;
        v52 = v14;
        v53 = 2112;
        v54 = v8;
        _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "LEA 3: session peripheral2 %@\n found device %@", &v51, 0x16u);
      }

      if (v8)
      {
        v11 = 0;
        v7 = v12;
LABEL_21:
        v15 = [v8 leftPeripheral];
        if (v15)
        {
          v16 = v15;
          v17 = [v8 rightPeripheral];

          if (v17)
          {
            v18 = HCLogHearingAids();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke_cold_2();
            }
          }
        }

        v19 = *(a1 + 32);
        v20 = [v3 objectAtIndexedSubscript:v11];
        v21 = [v19 addPeripheral:v20 toDevice:v8];

        goto LABEL_27;
      }

      v7 = v12;
    }

    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke_cold_3();
    }

    goto LABEL_51;
  }

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke_cold_4(v2);
  }

LABEL_52:

  v50 = *MEMORY[0x1E69E9840];
}

- (id)addPeripheral:(id)peripheral toDevice:(id)device
{
  v24 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  deviceCopy = device;
  isLEAudioEnabled = [MEMORY[0x1E69A4560] isLEAudioEnabled];
  v9 = 0;
  if (deviceCopy && isLEAudioEnabled)
  {
    leftPeripheral = [deviceCopy leftPeripheral];

    if (!leftPeripheral || ([deviceCopy rightPeripheral], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      [deviceCopy addPeripheral:peripheralCopy asLeft:leftPeripheral == 0];
    }

    v12 = HCLogHearingAids();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [peripheralCopy identifier];
      *buf = 138412546;
      v21 = identifier;
      v22 = 2112;
      v23 = deviceCopy;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController LEA 3: session added the second peripheral %@ to %@", buf, 0x16u);
    }

    v14 = self->_availablePeripherals;
    objc_sync_enter(v14);
    availablePeripherals = self->_availablePeripherals;
    v19 = deviceCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [(NSMutableArray *)availablePeripherals setArray:v16];

    objc_sync_exit(v14);
    v9 = deviceCopy;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isLEAudioServiceInServiceUUIDs:(id)ds
{
  dsCopy = ds;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([MEMORY[0x1E69A4560] isLEAudioEnabled])
  {
    v4 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1854"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__AXHearingAidDeviceController_isLEAudioServiceInServiceUUIDs___block_invoke;
    v8[3] = &unk_1E85CC4E0;
    v5 = v4;
    v9 = v5;
    v10 = &v11;
    [dsCopy enumerateObjectsUsingBlock:v8];
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __63__AXHearingAidDeviceController_isLEAudioServiceInServiceUUIDs___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)clearMissingHearingAids
{
  [(AXDispatchTimer *)self->_advertisingTimeoutTimer cancel];
  objc_initWeak(&location, self);
  advertisingTimeoutTimer = self->_advertisingTimeoutTimer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AXHearingAidDeviceController_clearMissingHearingAids__block_invoke;
  v4[3] = &unk_1E85CAA40;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [(AXDispatchTimer *)advertisingTimeoutTimer afterDelay:v4 processBlock:10.0];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __55__AXHearingAidDeviceController_clearMissingHearingAids__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AXHearingAidDeviceController_clearMissingHearingAids__block_invoke_2;
  v6[3] = &unk_1E85CC530;
  objc_copyWeak(&v7, (a1 + 40));
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained isScanning];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 clearMissingHearingAids];
  }

  objc_destroyWeak(&v7);
}

void __55__AXHearingAidDeviceController_clearMissingHearingAids__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:v6];
  v9 = v8;

  if (v9 >= 10.0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = [WeakRetained hearingAidsForUUID:v5];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__AXHearingAidDeviceController_clearMissingHearingAids__block_invoke_3;
    v12[3] = &unk_1E85CC508;
    objc_copyWeak(&v13, (a1 + 32));
    [v11 enumerateObjectsUsingBlock:v12];
    objc_destroyWeak(&v13);
  }
}

void __55__AXHearingAidDeviceController_clearMissingHearingAids__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isConnected] & 1) == 0 && (objc_msgSend(v3, "isPersistent") & 1) == 0)
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: clearMissingHearingAids, Device stopped advertising. Removing %@", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained removeLoadedDevice:v3];

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 removeAvailableDevice:v3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)searchForAvailableDevices
{
  if (self->_isScanning || self->_stoppedScanningForLEAudio)
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Already scanning", buf, 2u);
    }
  }

  else
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Scan for available devices", buf, 2u);
    }

    array = [MEMORY[0x1E695DF70] array];
    persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
    lastObject = [persistentDevices lastObject];

    if (lastObject)
    {
      leftPeripheralUUID = [lastObject leftPeripheralUUID];
      v9 = [leftPeripheralUUID length];

      if (v9)
      {
        v10 = objc_alloc(MEMORY[0x1E696AFB0]);
        leftPeripheralUUID2 = [lastObject leftPeripheralUUID];
        v12 = [v10 initWithUUIDString:leftPeripheralUUID2];

        if (v12)
        {
          [array addObject:v12];
        }
      }

      rightPeripheralUUID = [lastObject rightPeripheralUUID];
      v14 = [rightPeripheralUUID length];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x1E696AFB0]);
        rightPeripheralUUID2 = [lastObject rightPeripheralUUID];
        v17 = [v15 initWithUUIDString:rightPeripheralUUID2];

        if (v17)
        {
          [array addObject:v17];
        }
      }
    }

    if (!self->_advertisingTimeoutTimer)
    {
      v18 = objc_alloc_init(MEMORY[0x1E6988780]);
      advertisingTimeoutTimer = self->_advertisingTimeoutTimer;
      self->_advertisingTimeoutTimer = v18;
    }

    if (!self->_advertisingTimestamps)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      advertisingTimestamps = self->_advertisingTimestamps;
      self->_advertisingTimestamps = v20;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__AXHearingAidDeviceController_searchForAvailableDevices__block_invoke;
    v23[3] = &unk_1E85CA468;
    v23[4] = self;
    v3 = array;
    v24 = v3;
    v22 = lastObject;
    v25 = v22;
    [(AXHearingAidDeviceController *)self sendRequestToCentralManager:v23];
    if ([MEMORY[0x1E69A4560] isLEAudioEnabled])
    {
      [(AXHearingAidDeviceController *)self setupCentralManagerForLEAudio];
    }
  }

  [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
}

void __57__AXHearingAidDeviceController_searchForAvailableDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) retrievePeripheralsWithIdentifiers:*(a1 + 40)];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AXHearingAidDeviceController_searchForAvailableDevices__block_invoke_2;
  v5[3] = &unk_1E85CC558;
  v5[4] = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = v2;
  v4 = v2;
  [v3 checkPartiallyPairedWithCompletion:v5];
}

uint64_t __57__AXHearingAidDeviceController_searchForAvailableDevices__block_invoke_2(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldActiveScan])
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (![*(a1 + 48) count])
    {
      goto LABEL_14;
    }

LABEL_7:
    if (![*(a1 + 56) count])
    {
      a2 = 1;
    }

    if (v6)
    {
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    else
    {

      if ((a2 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_14;
  }

  v2 = +[HUHearingAidSettings sharedInstance];
  v3 = [v2 pairedHearingAids];
  if (v3 && [*(a1 + 48) count])
  {
    goto LABEL_7;
  }

LABEL_14:
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) scanningServiceUUIDs];
    v9 = *(a1 + 48);
    *buf = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "CentralManager: Starting scan services: %@ persistent uuids: %@", buf, 0x16u);
  }

  *(*(a1 + 32) + 64) = 1;
  v10 = *(a1 + 32);
  v11 = v10[5];
  v12 = [v10 scanningServiceUUIDs];
  v13 = MEMORY[0x1E695DF20];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v15 = *MEMORY[0x1E695D220];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v17 = [v13 dictionaryWithObjectsAndKeys:{v14, v15, v16, *MEMORY[0x1E695D238], 0}];
  [v11 scanForPeripheralsWithServices:v12 options:v17];

  [*(a1 + 32) clearMissingHearingAids];
LABEL_17:
  result = [*(a1 + 32) centralManager:*(*(a1 + 32) + 40) didRetrievePeripherals:*(a1 + 56)];
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)searchForConnectedDevices
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__AXHearingAidDeviceController_searchForConnectedDevices__block_invoke;
  v2[3] = &unk_1E85C9F60;
  v2[4] = self;
  [(AXHearingAidDeviceController *)self sendRequestToCentralManager:v2];
}

void __57__AXHearingAidDeviceController_searchForConnectedDevices__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  v4 = [v2 scanningServiceUUIDs];
  v5 = [v3 retrieveConnectedPeripheralsWithServices:v4];

  [*(a1 + 32) centralManager:*(*(a1 + 32) + 40) didRetrieveConnectedPeripherals:v5];
}

- (void)resetConnectionToPeripheral:(id)peripheral
{
  v9 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = peripheralCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Resetting connection to %@", &v7, 0xCu);
  }

  if (peripheralCopy)
  {
    [(AXHearingAidDeviceController *)self disconnectFromPeripheral:peripheralCopy];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)connectToPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v5 = peripheralCopy;
  if (peripheralCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__AXHearingAidDeviceController_connectToPeripheral___block_invoke;
    v8[3] = &unk_1E85C9F38;
    v9 = peripheralCopy;
    selfCopy = self;
    [(AXHearingAidDeviceController *)self sendRequestToCentralManager:v8];
    v6 = v9;
  }

  else
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: connectToPeripheral, Failed, no peripheral", v7, 2u);
    }
  }
}

void __52__AXHearingAidDeviceController_connectToPeripheral___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUNearbyHearingAidController sharedInstance];
    v4 = [v3 descriptionForCurrentState];
    v5 = *(a1 + 32);
    *buf = 138412546;
    v54 = v4;
    v55 = 2112;
    v56 = v5;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: connectToPeripheral, Requesting connection in state %@ to %@", buf, 0x16u);
  }

  v6 = [*(a1 + 40) hearingAidForPeripheral:*(a1 + 32)];
  if ([v6 isPaired])
  {
    v7 = [v6 leftPeripheral];
    v8 = *(a1 + 32);

    if (v7 == v8)
    {
      v16 = +[HUHearingAidSettings sharedInstance];
      v17 = [v16 shouldStreamToLeftAid];

      v18 = HCLogHearingAids();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          v20 = *(a1 + 32);
          *buf = 138412290;
          v54 = v20;
          _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Enabling streaming to LEFT %@", buf, 0xCu);
        }

        [*(a1 + 32) axUntag:@"DisableLEA"];
      }

      else
      {
        if (v19)
        {
          v21 = *(a1 + 32);
          *buf = 138412290;
          v54 = v21;
          _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Disabling streaming to LEFT %@", buf, 0xCu);
        }

        [*(a1 + 32) axTag:@"DisableLEA"];
      }

      v22 = compoundAttributeContainsAttribute([v6 earsSupportingWatch], 2);
      v23 = HCLogHearingAids();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          v25 = *(a1 + 32);
          *buf = 138412290;
          v54 = v25;
          v26 = "Enabling watch support LEFT %@";
LABEL_28:
          _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
        }

LABEL_29:

        [*(a1 + 32) axTag:@"HearingAidSupportsWatch"];
        goto LABEL_34;
      }

      if (v24)
      {
        v27 = *(a1 + 32);
        *buf = 138412290;
        v54 = v27;
        v28 = "Disabling watch support LEFT %@";
LABEL_32:
        _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
      }
    }

    else
    {
      v9 = [v6 rightPeripheral];
      v10 = *(a1 + 32);

      if (v9 != v10)
      {
LABEL_34:
        [v6 updateInputTagsAndReset:0];
        goto LABEL_35;
      }

      v11 = +[HUHearingAidSettings sharedInstance];
      v12 = [v11 shouldStreamToRightAid];

      v13 = HCLogHearingAids();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          v54 = v15;
          _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Enabling streaming to RIGHT %@", buf, 0xCu);
        }

        [*(a1 + 32) axUntag:@"DisableLEA"];
      }

      else
      {
        if (v14)
        {
          v29 = *(a1 + 32);
          *buf = 138412290;
          v54 = v29;
          _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Disabling streaming to RIGHT %@", buf, 0xCu);
        }

        [*(a1 + 32) axTag:@"DisableLEA"];
      }

      v30 = compoundAttributeContainsAttribute([v6 earsSupportingWatch], 4);
      v23 = HCLogHearingAids();
      v31 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 32);
          *buf = 138412290;
          v54 = v32;
          v26 = "Enabling watch support RIGHT %@";
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      if (v31)
      {
        v33 = *(a1 + 32);
        *buf = 138412290;
        v54 = v33;
        v28 = "Disabling watch support RIGHT %@";
        goto LABEL_32;
      }
    }

    [*(a1 + 32) axUntag:@"HearingAidSupportsWatch"];
    goto LABEL_34;
  }

LABEL_35:
  v34 = +[HUNearbyHearingAidController sharedInstance];
  v35 = [v34 shouldConnect];

  v36 = [*(a1 + 40) persistentDevices];
  v37 = [v36 firstObject];

  if (v37)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __52__AXHearingAidDeviceController_connectToPeripheral___block_invoke_35;
    v49[3] = &unk_1E85CC580;
    v38 = *(a1 + 32);
    v52 = v35;
    v39 = *(a1 + 40);
    v50 = v38;
    v51 = v39;
    [v37 checkPairingStatusWithCompletion:v49];
    v40 = v50;
LABEL_41:

    goto LABEL_42;
  }

  if ((([*(a1 + 32) state] != 2) & v35) == 1)
  {
    v41 = HCLogHearingHandoff();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [*(a1 + 32) state];
      v43 = [*(a1 + 32) identifier];
      *buf = 134218242;
      v54 = v42;
      v55 = 2112;
      v56 = v43;
      _os_log_impl(&dword_1DA5E2000, v41, OS_LOG_TYPE_DEFAULT, "CentralManager: connectPeripheral state: %ld, %@", buf, 0x16u);
    }

    v44 = *(a1 + 32);
    v45 = *(*(a1 + 40) + 40);
    v46 = MEMORY[0x1E695DF20];
    v40 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v47 = [v46 dictionaryWithObject:v40 forKey:*MEMORY[0x1E695D228]];
    [v45 connectPeripheral:v44 options:v47];

    goto LABEL_41;
  }

LABEL_42:

  v48 = *MEMORY[0x1E69E9840];
}

void __52__AXHearingAidDeviceController_connectToPeripheral___block_invoke_35(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] != 2)
  {
    if ((*(a1 + 48) & 1) != 0 || ([*(a1 + 40) persistentDevices], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5 == 1) && (a2 & 1) == 0)
    {
      v6 = HCLogHearingHandoff();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) state];
        v8 = [*(a1 + 32) identifier];
        v16 = 134218242;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "CentralManager: connectPeripheral state: %ld, %@", &v16, 0x16u);
      }

      v10 = a1 + 32;
      v9 = *(a1 + 32);
      v11 = *(*(v10 + 8) + 40);
      v12 = MEMORY[0x1E695DF20];
      v13 = [MEMORY[0x1E696AD98] numberWithBool:0];
      v14 = [v12 dictionaryWithObject:v13 forKey:*MEMORY[0x1E695D228]];
      [v11 connectPeripheral:v9 options:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)disconnectFromPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v5 = peripheralCopy;
  if (peripheralCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__AXHearingAidDeviceController_disconnectFromPeripheral___block_invoke;
    v6[3] = &unk_1E85C9F38;
    v7 = peripheralCopy;
    selfCopy = self;
    [(AXHearingAidDeviceController *)self sendRequestToCentralManager:v6];
  }
}

void __57__AXHearingAidDeviceController_disconnectFromPeripheral___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "CentralManager: disconnectFromPeripheral from %@", buf, 0xCu);
  }

  v4 = HCLogHearingHandoff();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) state];
    v6 = [*(a1 + 32) identifier];
    *buf = 134218242;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "CentralManager: disconnectFromPeripheral: state: %ld, %@", buf, 0x16u);
  }

  v8 = a1 + 32;
  v7 = *(a1 + 32);
  v9 = *(*(v8 + 8) + 40);
  v10 = *MEMORY[0x1E695D200];
  v13[0] = *MEMORY[0x1E695D208];
  v13[1] = v10;
  v14[0] = MEMORY[0x1E695E118];
  v14[1] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v9 cancelPeripheralConnection:v7 options:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)disconnectFromHearingAidWithDeviceUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(AXHearingAidDeviceController *)self hearingAidForDeviceID:dCopy];
  v6 = +[HUNearbyHearingAidController sharedInstance];
  shouldDisconnect = [v6 shouldDisconnect];

  rightPeripheral = HCLogHearingHandoff();
  v9 = os_log_type_enabled(rightPeripheral, OS_LOG_TYPE_DEFAULT);
  if ((shouldDisconnect & 1) == 0)
  {
    if (v9)
    {
      name = [v5 name];
      v14 = 138412546;
      v15 = dCopy;
      v16 = 2112;
      v17 = name;
      _os_log_impl(&dword_1DA5E2000, rightPeripheral, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: disconnectFromHearingAidWithDeviceUUID %@, Disconnection is not allowed from %@", &v14, 0x16u);
    }

    goto LABEL_8;
  }

  if (v9)
  {
    name2 = [v5 name];
    v14 = 138412546;
    v15 = dCopy;
    v16 = 2112;
    v17 = name2;
    _os_log_impl(&dword_1DA5E2000, rightPeripheral, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: disconnectFromHearingAidWithDeviceUUID %@, Disconnection from %@", &v14, 0x16u);
  }

  if (v5)
  {
    leftPeripheral = [v5 leftPeripheral];
    [(AXHearingAidDeviceController *)self disconnectFromPeripheral:leftPeripheral];

    rightPeripheral = [v5 rightPeripheral];
    [(AXHearingAidDeviceController *)self disconnectFromPeripheral:rightPeripheral];
LABEL_8:
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cancelPendingConnections
{
  bluetoothCentralQueue = self->_bluetoothCentralQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AXHearingAidDeviceController_cancelPendingConnections__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(bluetoothCentralQueue, block);
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Cancelling pending connections", buf, 2u);
  }

  availablePeripherals = [(AXHearingAidDeviceController *)self availablePeripherals];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AXHearingAidDeviceController_cancelPendingConnections__block_invoke_37;
  v6[3] = &unk_1E85CC5A8;
  v6[4] = self;
  [availablePeripherals enumerateObjectsUsingBlock:v6];
}

void __56__AXHearingAidDeviceController_cancelPendingConnections__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) centralRequestBlocks];
  [v1 removeAllObjects];
}

void __56__AXHearingAidDeviceController_cancelPendingConnections__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 leftPeripheral];
  [v3 disconnectFromPeripheral:v5];

  v6 = *(a1 + 32);
  v7 = [v4 rightPeripheral];

  [v6 disconnectFromPeripheral:v7];
}

- (void)stopSearching
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "CentralManager: Stopping scan", v5, 2u);
  }

  [(CBCentralManager *)self->_bluetoothManager stopScan];
  self->_isScanning = 0;
  loadedDevices = [(AXHearingAidDeviceController *)self loadedDevices];
  if ([loadedDevices count])
  {
    [loadedDevices enumerateObjectsUsingBlock:&__block_literal_global_39];
  }
}

void __45__AXHearingAidDeviceController_stopSearching__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setKeepInSync:{objc_msgSend(v2, "isPaired")}];
}

- (BOOL)shouldRelinquishForPartialConnection
{
  v25 = *MEMORY[0x1E69E9840];
  loadedDevices = [(AXHearingAidDeviceController *)self loadedDevices];
  v4 = [loadedDevices indexesOfObjectsPassingTest:&__block_literal_global_42_0];

  if ([v4 count] != 1)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      loadedDevices2 = [(AXHearingAidDeviceController *)self loadedDevices];
      v19 = 138412290;
      *v20 = loadedDevices2;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: shouldRelinquishForPartialConnection, Wrong number of paired devices %@", &v19, 0xCu);
    }

    goto LABEL_10;
  }

  loadedDevices3 = [(AXHearingAidDeviceController *)self loadedDevices];
  v6 = [loadedDevices3 objectAtIndex:{objc_msgSend(v4, "firstIndex")}];

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    leftAvailable = [v6 leftAvailable];
    rightAvailable = [v6 rightAvailable];
    leftPeripheral = [v6 leftPeripheral];
    v11 = [leftPeripheral state] == 2;
    rightPeripheral = [v6 rightPeripheral];
    v19 = 67109888;
    *v20 = leftAvailable;
    *&v20[4] = 1024;
    *&v20[6] = rightAvailable;
    v21 = 1024;
    v22 = v11;
    v23 = 1024;
    v24 = [rightPeripheral state] != 2;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: shouldRelinquishForPartialConnection, Should relinquish %d, %d, %d, %d", &v19, 0x1Au);
  }

  if (![v6 leftAvailable]|| ![v6 rightAvailable])
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  leftPeripheral2 = [v6 leftPeripheral];
  if ([leftPeripheral2 state] == 2)
  {
    rightPeripheral2 = [v6 rightPeripheral];
    v15 = [rightPeripheral2 state] != 2;
  }

  else
  {
    v15 = 0;
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)checkPartiallyPairedWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = self->_loadedDevices;
  objc_sync_enter(v5);
  loadedDevices = [(AXHearingAidDeviceController *)self loadedDevices];
  v7 = [loadedDevices indexesOfObjectsPassingTest:&__block_literal_global_44_0];

  if ([v7 count] == 1)
  {
    loadedDevices2 = [(AXHearingAidDeviceController *)self loadedDevices];
    v9 = [loadedDevices2 objectAtIndex:{objc_msgSend(v7, "firstIndex")}];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__AXHearingAidDeviceController_checkPartiallyPairedWithCompletion___block_invoke_2;
    v15[3] = &unk_1E85CC610;
    v10 = v9;
    v16 = v10;
    v18 = &v19;
    v17 = completionCopy;
    [v10 checkPairingStatusWithCompletion:v15];
  }

  else
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      loadedDevices3 = [(AXHearingAidDeviceController *)self loadedDevices];
      *buf = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = loadedDevices3;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: checkPartiallyPaired, Paired devices count %@, Loaded devices\n%@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, *(v20 + 24));
  }

  objc_sync_exit(v5);
  _Block_object_dispose(&v19, 8);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __67__AXHearingAidDeviceController_checkPartiallyPairedWithCompletion___block_invoke_2(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) leftUUID];
  if ([v6 length])
  {
    v7 = [*(a1 + 32) rightUUID];
    v8 = [v7 length] == 0;
  }

  else
  {
    v8 = 1;
  }

  if ([*(a1 + 32) leftAvailable])
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) rightAvailable] ^ 1;
  }

  v10 = [*(a1 + 32) leftAvailable];
  if (((a2 & ~(v10 ^ [*(a1 + 32) rightAvailable] | a3) | v9 | v8) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v11 = HCLogHearingAids();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v13 = *(a1 + 32);
    v17[0] = 67109378;
    v17[1] = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: checkPartiallyPaired, Partial pair %d\n%@", v17, 0x12u);
  }

  v14 = *(*(*(a1 + 48) + 8) + 24);
  result = (*(*(a1 + 40) + 16))();
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isPartiallyConnected
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = self->_loadedDevices;
  objc_sync_enter(v3);
  loadedDevices = [(AXHearingAidDeviceController *)self loadedDevices];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AXHearingAidDeviceController_isPartiallyConnected__block_invoke;
  v6[3] = &unk_1E85CC638;
  v6[4] = &v7;
  [loadedDevices enumerateObjectsUsingBlock:v6];

  objc_sync_exit(v3);
  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __52__AXHearingAidDeviceController_isPartiallyConnected__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 hasConnection] && (objc_msgSend(v6, "isConnected") & 1) == 0 && objc_msgSend(v6, "isPaired"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)isPaired
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = self->_loadedDevices;
  objc_sync_enter(v3);
  loadedDevices = [(AXHearingAidDeviceController *)self loadedDevices];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__AXHearingAidDeviceController_isPaired__block_invoke;
  v6[3] = &unk_1E85CC638;
  v6[4] = &v7;
  [loadedDevices enumerateObjectsUsingBlock:v6];

  objc_sync_exit(v3);
  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __40__AXHearingAidDeviceController_isPaired__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isPaired] && ((objc_msgSend(v6, "leftAvailable") & 1) != 0 || objc_msgSend(v6, "rightAvailable")))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)isConnected
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = self->_loadedDevices;
  objc_sync_enter(v3);
  loadedDevices = [(AXHearingAidDeviceController *)self loadedDevices];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AXHearingAidDeviceController_isConnected__block_invoke;
  v6[3] = &unk_1E85CC638;
  v6[4] = &v7;
  [loadedDevices enumerateObjectsUsingBlock:v6];

  objc_sync_exit(v3);
  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __43__AXHearingAidDeviceController_isConnected__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ([v6 hasConnection] && objc_msgSend(v6, "isPaired"))
  {
    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: isConnected, Found connected device %@", &v9, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnecting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = self->_loadedDevices;
  objc_sync_enter(v3);
  loadedDevices = [(AXHearingAidDeviceController *)self loadedDevices];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AXHearingAidDeviceController_isConnecting__block_invoke;
  v6[3] = &unk_1E85CC638;
  v6[4] = &v7;
  [loadedDevices enumerateObjectsUsingBlock:v6];

  objc_sync_exit(v3);
  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __44__AXHearingAidDeviceController_isConnecting__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ([v6 isAnyPeripheralInConnectingState] && objc_msgSend(v6, "isPaired"))
  {
    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: isConnecting, Found connecting device %@", &v11, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __44__AXHearingAidDeviceController_isConnecting__block_invoke_cold_1(v6);
  }

  v9 = HCLogHearingHandoff();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __44__AXHearingAidDeviceController_isConnecting__block_invoke_cold_2(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)hearingAidsForUUID:(id)d
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  array = [MEMORY[0x1E695DF70] array];
  if (dCopy && [dCopy length])
  {
    availablePeripherals = self->_availablePeripherals;
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __51__AXHearingAidDeviceController_hearingAidsForUUID___block_invoke;
    v11 = &unk_1E85CC660;
    v12 = dCopy;
    v13 = &v14;
    [(NSMutableArray *)availablePeripherals enumerateObjectsUsingBlock:&v8];
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:{v15[5], v8, v9, v10, v11}];
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __51__AXHearingAidDeviceController_hearingAidsForUUID___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v5 = [v10 leftUUID];
  if (v5)
  {
    v2 = [v10 leftUUID];
    if ([v2 isEqual:*(a1 + 32)])
    {

      goto LABEL_11;
    }
  }

  v6 = [v10 rightUUID];
  if (v6 && ([v10 rightUUID], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isEqual:", *(a1 + 32)) & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = [v10 deviceUUID];
    v7 = [v8 isEqualToString:*(a1 + 32)];

    if (!v6)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  if (v5)
  {

    v9 = v10;
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = v10;
  if (v7)
  {
LABEL_11:
    [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
    v9 = v10;
  }

LABEL_12:
}

- (id)pairedHearingDevice
{
  v3 = +[AXHAController sharedController];
  pairedDeviceUUID = [v3 pairedDeviceUUID];
  v5 = [(AXHearingAidDeviceController *)self hearingAidForDeviceID:pairedDeviceUUID];

  return v5;
}

- (id)hearingAidForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v5 = peripheralCopy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  if (peripheralCopy)
  {
    identifier = [peripheralCopy identifier];

    if (identifier)
    {
      identifier2 = [v5 identifier];
      uUIDString = [identifier2 UUIDString];
    }

    else
    {
      uUIDString = 0;
    }

    v10 = self->_availablePeripherals;
    objc_sync_enter(v10);
    availablePeripherals = self->_availablePeripherals;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__AXHearingAidDeviceController_hearingAidForPeripheral___block_invoke;
    v15[3] = &unk_1E85CC688;
    v12 = uUIDString;
    v16 = v12;
    v17 = v5;
    v18 = &v19;
    [(NSMutableArray *)availablePeripherals enumerateObjectsUsingBlock:v15];

    objc_sync_exit(v10);
    v9 = v20[5];
  }

  else
  {
    v9 = 0;
  }

  v13 = v9;
  _Block_object_dispose(&v19, 8);

  return v13;
}

void __56__AXHearingAidDeviceController_hearingAidForPeripheral___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if (([v11 containsPeripheralWithUUID:a1[4]] & 1) == 0)
  {
    v7 = [v11 leftPeripheral];
    v8 = v7;
    if (v7 == a1[5])
    {
    }

    else
    {
      v9 = [v11 rightPeripheral];
      v10 = a1[5];

      if (v9 != v10)
      {
        goto LABEL_7;
      }
    }
  }

  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  *a4 = 1;
LABEL_7:
}

- (id)hearingAidForPeripheralID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  if (dCopy)
  {
    v5 = self->_availablePeripherals;
    objc_sync_enter(v5);
    availablePeripherals = self->_availablePeripherals;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__AXHearingAidDeviceController_hearingAidForPeripheralID___block_invoke;
    v10[3] = &unk_1E85CC660;
    v11 = dCopy;
    v12 = &v13;
    [(NSMutableArray *)availablePeripherals enumerateObjectsUsingBlock:v10];

    objc_sync_exit(v5);
    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __58__AXHearingAidDeviceController_hearingAidForPeripheralID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 containsPeripheralWithUUID:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)hearingAidForDeviceID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v5 = self->_availablePeripherals;
  objc_sync_enter(v5);
  availablePeripherals = self->_availablePeripherals;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AXHearingAidDeviceController_hearingAidForDeviceID___block_invoke;
  v10[3] = &unk_1E85CC660;
  v7 = dCopy;
  v11 = v7;
  v12 = &v13;
  [(NSMutableArray *)availablePeripherals enumerateObjectsUsingBlock:v10];

  objc_sync_exit(v5);
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __54__AXHearingAidDeviceController_hearingAidForDeviceID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 deviceUUID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)hearingAidsForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  array = [MEMORY[0x1E695DF70] array];
  if (peripheralCopy)
  {
    identifier = [peripheralCopy identifier];

    if (identifier)
    {
      identifier2 = [peripheralCopy identifier];
      uUIDString = [identifier2 UUIDString];
    }

    else
    {
      uUIDString = 0;
    }

    v9 = self->_availablePeripherals;
    objc_sync_enter(v9);
    availablePeripherals = self->_availablePeripherals;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__AXHearingAidDeviceController_hearingAidsForPeripheral___block_invoke;
    v13[3] = &unk_1E85CB788;
    v11 = uUIDString;
    v14 = v11;
    v15 = peripheralCopy;
    v16 = array;
    [(NSMutableArray *)availablePeripherals enumerateObjectsUsingBlock:v13];

    objc_sync_exit(v9);
  }

  return array;
}

void __57__AXHearingAidDeviceController_hearingAidsForPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 containsPeripheralWithUUID:*(a1 + 32)] & 1) == 0)
  {
    v3 = [v7 leftPeripheral];
    v4 = v3;
    if (v3 == *(a1 + 40))
    {
    }

    else
    {
      v5 = [v7 rightPeripheral];
      v6 = *(a1 + 40);

      if (v5 != v6)
      {
        goto LABEL_7;
      }
    }
  }

  [*(a1 + 48) addObject:v7];
LABEL_7:
}

- (void)loadedDevicesDidChange
{
  if (([(AXDispatchTimer *)self->_availableDeviceTimer isActive]& 1) == 0)
  {
    objc_initWeak(&location, self);
    availableDeviceTimer = self->_availableDeviceTimer;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54__AXHearingAidDeviceController_loadedDevicesDidChange__block_invoke;
    v4[3] = &unk_1E85CAA40;
    v4[4] = self;
    objc_copyWeak(&v5, &location);
    [(AXDispatchTimer *)availableDeviceTimer afterDelay:v4 processBlock:0 cancelBlock:0.2];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __54__AXHearingAidDeviceController_loadedDevicesDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) copy];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained availableSearchBlocks];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AXHearingAidDeviceController_loadedDevicesDidChange__block_invoke_2;
  v6[3] = &unk_1E85CC6B0;
  v7 = v2;
  v5 = v2;
  [v4 enumerateObjectsUsingBlock:v6];
}

- (void)addLoadedDevice:(id)device
{
  deviceCopy = device;
  v4 = self->_loadedDevices;
  objc_sync_enter(v4);
  if (deviceCopy && ([(NSMutableArray *)self->_loadedDevices containsObject:deviceCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_loadedDevices addObject:deviceCopy];
    [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
  }

  objc_sync_exit(v4);
}

- (void)removeLoadedDevice:(id)device
{
  deviceCopy = device;
  v4 = self->_loadedDevices;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_loadedDevices removeObject:deviceCopy];
  [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
  objc_sync_exit(v4);
}

- (void)clearLoadedDevices
{
  obj = self->_loadedDevices;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_loadedDevices removeAllObjects];
  [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
  objc_sync_exit(obj);
}

- (void)addAvailableDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v6 = deviceCopy;
    v5 = self->_availablePeripherals;
    objc_sync_enter(v5);
    if (([(NSMutableArray *)self->_availablePeripherals containsObject:v6]& 1) == 0)
    {
      [(NSMutableArray *)self->_availablePeripherals addObject:v6];
    }

    objc_sync_exit(v5);

    deviceCopy = v6;
  }
}

- (void)removeAvailableDevice:(id)device
{
  deviceCopy = device;
  v4 = self->_availablePeripherals;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_availablePeripherals removeObject:deviceCopy];
  objc_sync_exit(v4);
}

- (void)clearAvailableDevices
{
  obj = self->_availablePeripherals;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_availablePeripherals removeAllObjects];
  objc_sync_exit(obj);
}

- (void)addConnectedDevice:(id)device
{
  deviceCopy = device;
  v4 = self->_connectedDevices;
  objc_sync_enter(v4);
  if (deviceCopy && ([(NSMutableArray *)self->_connectedDevices containsObject:deviceCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_connectedDevices addObject:deviceCopy];
  }

  objc_sync_exit(v4);
}

- (void)removeConnectedDevice:(id)device
{
  deviceCopy = device;
  v4 = self->_connectedDevices;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_connectedDevices removeObject:deviceCopy];
  objc_sync_exit(v4);
}

- (void)clearConnectedDevices
{
  obj = self->_connectedDevices;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_connectedDevices removeAllObjects];
  objc_sync_exit(obj);
}

- (void)replaceDevice:(id)device withDevice:(id)withDevice
{
  v21 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  withDeviceCopy = withDevice;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = deviceCopy;
    v19 = 2112;
    v20 = withDeviceCopy;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Replacing device %@ with %@", &v17, 0x16u);
  }

  [(AXHearingAidDeviceController *)self removeLoadedDevice:deviceCopy];
  [(AXHearingAidDeviceController *)self removeAvailableDevice:deviceCopy];
  [(AXHearingAidDeviceController *)self removeConnectedDevice:deviceCopy];
  if ([withDeviceCopy isConnected])
  {
    [(AXHearingAidDeviceController *)self addConnectedDevice:withDeviceCopy];
  }

  if ([deviceCopy isPaired])
  {
    v9 = +[HUHearingAidSettings sharedInstance];
    isiCloudPaired = [v9 isiCloudPaired];

    if ((isiCloudPaired & 1) == 0)
    {
      persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
      [persistentDevices removeAllObjects];

      v12 = +[HUHearingAidSettings sharedInstance];
      persistentRepresentation = [withDeviceCopy persistentRepresentation];
      [v12 setPairedHearingAids:persistentRepresentation];

      v14 = +[AXHAController sharedController];
      deviceUUID = [withDeviceCopy deviceUUID];
      [v14 setPairedHearingAidID:deviceUUID];
    }
  }

  [(HUDeviceController *)self device:withDeviceCopy didUpdateProperty:69206024];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)mergeDevice:(id)device withDevice:(id)withDevice
{
  v28 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  withDeviceCopy = withDevice;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = deviceCopy;
    v26 = 2112;
    v27 = withDeviceCopy;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Merging device %@ with: %@", &v24, 0x16u);
  }

  if (deviceCopy && withDeviceCopy)
  {
    v9 = withDeviceCopy;
    v10 = deviceCopy;
    v11 = v9;
    v12 = v10;
    if ([v10 leftAvailable])
    {

      v12 = v9;
      v11 = v10;
    }

    v13 = objc_opt_class();
    if (v13 == objc_opt_class())
    {
      v14 = [objc_alloc(objc_opt_class()) initWithLeftDevice:v11 andRightDevice:v12];
      if (v14)
      {
        v15 = v14;
        [(AXHearingAidDeviceController *)self addLoadedDevice:v14];
        [(AXHearingAidDeviceController *)self addAvailableDevice:v15];
        if ([v15 isConnected])
        {
          [(AXHearingAidDeviceController *)self addConnectedDevice:v15];
        }

        if ([v15 isPaired])
        {
          v16 = +[HUHearingAidSettings sharedInstance];
          isiCloudPaired = [v16 isiCloudPaired];

          if ((isiCloudPaired & 1) == 0)
          {
            persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
            [persistentDevices removeAllObjects];

            v19 = +[HUHearingAidSettings sharedInstance];
            persistentRepresentation = [v15 persistentRepresentation];
            [v19 setPairedHearingAids:persistentRepresentation];

            v21 = +[AXHAController sharedController];
            deviceUUID = [v15 deviceUUID];
            [v21 setPairedHearingAidID:deviceUUID];
          }
        }

        [(AXHearingAidDeviceController *)self removeAvailableDevice:v10];
        [(AXHearingAidDeviceController *)self removeConnectedDevice:v10];
        [(AXHearingAidDeviceController *)self removeLoadedDevice:v10];
        [(AXHearingAidDeviceController *)self removeAvailableDevice:v9];
        [(AXHearingAidDeviceController *)self removeConnectedDevice:v9];
        [(AXHearingAidDeviceController *)self removeLoadedDevice:v9];
        [(HUDeviceController *)self device:v15 didUpdateProperty:69206024];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)deviceDidFinishLoading:(id)loading
{
  v16 = *MEMORY[0x1E69E9840];
  loadingCopy = loading;
  if (loadingCopy)
  {
    [(AXHearingAidDeviceController *)self addAvailableDevice:loadingCopy];
    [(AXHearingAidDeviceController *)self addLoadedDevice:loadingCopy];
    leftPeripheral = [loadingCopy leftPeripheral];
    deviceUUID = [loadingCopy deviceUUID];
    [leftPeripheral tag:deviceUUID];

    leftPeripheral2 = [loadingCopy leftPeripheral];
    [leftPeripheral2 tag:@"Left HA"];

    rightPeripheral = [loadingCopy rightPeripheral];
    deviceUUID2 = [loadingCopy deviceUUID];
    [rightPeripheral tag:deviceUUID2];

    rightPeripheral2 = [loadingCopy rightPeripheral];
    [rightPeripheral2 tag:@"Right HA"];

    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = loadingCopy;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Device finished loading %@", &v14, 0xCu);
    }

    if (([loadingCopy isPaired] & 1) == 0 && objc_msgSend(loadingCopy, "deviceProtocol") == 1)
    {
      v12 = HCLogHearingAids();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = loadingCopy;
        _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Device finished loading, not paired, Disconnecting %@", &v14, 0xCu);
      }

      [loadingCopy disconnectAndUnpair:0];
    }
  }

  if ([loadingCopy keepInSync] && objc_msgSend(loadingCopy, "isConnected"))
  {
    [loadingCopy loadRequiredProperties];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)forgetDevice:(id)device
{
  if (device)
  {
    deviceUUID = [device deviceUUID];
    v6 = [(AXHearingAidDeviceController *)self hearingAidForDeviceID:deviceUUID];

    [(AXHearingAidDeviceController *)self removeLoadedDevice:v6];
    [(AXHearingAidDeviceController *)self removeAvailableDevice:v6];
    [(AXHearingAidDeviceController *)self removeConnectedDevice:v6];
    persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
    [persistentDevices removeObject:v6];
  }
}

- (void)sendRequestToCentralManager:(id)manager
{
  v17 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v5 = managerCopy;
  if (self->_centralIsOn)
  {
    (*(managerCopy + 2))(managerCopy);
  }

  else
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      state = [(CBCentralManager *)self->_bluetoothManager state];
      centralIsOn = self->_centralIsOn;
      *buf = 134218240;
      v14 = state;
      v15 = 1024;
      v16 = centralIsOn;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "CentralManager: BT not available. Caching [%ld, %d]", buf, 0x12u);
    }

    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__AXHearingAidDeviceController_sendRequestToCentralManager___block_invoke;
    v11[3] = &unk_1E85CA508;
    v11[4] = self;
    v12 = v5;
    dispatch_async(bluetoothCentralQueue, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __60__AXHearingAidDeviceController_sendRequestToCentralManager___block_invoke(uint64_t a1)
{
  aBlock = [*(a1 + 40) copy];
  v2 = [*(a1 + 32) centralRequestBlocks];
  v3 = _Block_copy(aBlock);
  [v2 addObject:v3];
}

- (void)centralManagerDidUpdateState:(id)state
{
  v27 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  state = [stateCopy state];
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(stateCopy, "state")}];
    centralIsOn = self->_centralIsOn;
    v9 = @"Off";
    *buf = 138413058;
    v20 = v7;
    if (state == 5)
    {
      v9 = @"On";
    }

    v21 = 2112;
    v22 = v9;
    v23 = 1024;
    v24 = state == 5;
    v25 = 1024;
    v26 = centralIsOn;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "CentralManager: centralManagerDidUpdateState, Central state %@ (%@), new = %d, old = %d", buf, 0x22u);
  }

  if (state == 5)
  {
    self->_centralIsOn = 1;
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "CentralManager: ON, Updating Paired Hearing Aids, Connecting to persistent device", buf, 2u);
    }

    [(AXHearingAidDeviceController *)self pairedHearingAidsDidChange];
    persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
    firstObject = [persistentDevices firstObject];
    [firstObject connect];

    bluetoothCentralQueue = self->_bluetoothCentralQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AXHearingAidDeviceController_centralManagerDidUpdateState___block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(bluetoothCentralQueue, block);
  }

  else
  {
    self->_centralIsOn = 0;
    v14 = HCLogHearingAids();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_isScanning || self->_stoppedScanningForLEAudio;
      *buf = 67109120;
      LODWORD(v20) = v15;
      _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "CentralManager: OFF, Clearing Devices, restarting scanning %d", buf, 8u);
    }

    if (self->_isScanning || self->_stoppedScanningForLEAudio)
    {
      self->_isScanning = 0;
      self->_stoppedScanningForLEAudio = 0;
      [(AXHearingAidDeviceController *)self searchForAvailableDevices];
    }

    [(AXHearingAidDeviceController *)self clearAvailableDevices];
    [(AXHearingAidDeviceController *)self clearConnectedDevices];
    [(AXHearingAidDeviceController *)self clearLoadedDevices];
    [(AXHearingAidDeviceController *)self pairedHearingAidsDidChange];
  }

  v16 = +[HUNearbyHearingAidController sharedInstance];
  [v16 sendConnectionUpdateToPeers];

  v17 = *MEMORY[0x1E69E9840];
}

void __61__AXHearingAidDeviceController_centralManagerDidUpdateState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) centralRequestBlocks];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_61];

  v3 = [*(a1 + 32) centralRequestBlocks];
  [v3 removeAllObjects];
}

void __61__AXHearingAidDeviceController_centralManagerDidUpdateState___block_invoke_2(int a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);
  v2[2]();
}

- (void)centralManager:(id)manager didRetrievePeripherals:(id)peripherals
{
  v14 = *MEMORY[0x1E69E9840];
  peripheralsCopy = peripherals;
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
    *buf = 138412546;
    v11 = peripheralsCopy;
    v12 = 2112;
    v13 = persistentDevices;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "CentralManager: didRetrievePeripherals %@, persistentDevices %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AXHearingAidDeviceController_centralManager_didRetrievePeripherals___block_invoke;
  v9[3] = &unk_1E85CB460;
  v9[4] = self;
  [peripheralsCopy enumerateObjectsUsingBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __70__AXHearingAidDeviceController_centralManager_didRetrievePeripherals___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) persistentDevices];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) persistentDevices];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__AXHearingAidDeviceController_centralManager_didRetrievePeripherals___block_invoke_3;
    v25[3] = &unk_1E85CC720;
    v7 = v3;
    v8 = *(a1 + 32);
    v26 = v7;
    v27 = v8;
    [v6 enumerateObjectsUsingBlock:v25];

    [*(a1 + 32) loadedDevicesDidChange];
    v9 = v26;
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__6;
    v36 = __Block_byref_object_dispose__6;
    v37 = 0;
    v10 = +[HUHearingAidSettings sharedInstance];
    v11 = [v10 pairedHearingAids];

    v12 = [v11 objectForKey:@"ax_hearing_device_left_peripheral_key"];
    v13 = [v11 objectForKey:@"ax_hearing_device_right_peripheral_key"];
    v14 = [MEMORY[0x1E695DF70] array];
    if (v12)
    {
      v15 = [v12 objectForKey:@"ax_hearing_device_uuid_key"];

      if (v15)
      {
        v16 = [v12 objectForKey:@"ax_hearing_device_uuid_key"];
        [v14 addObject:v16];
      }
    }

    if (v13)
    {
      v17 = [v13 objectForKey:@"ax_hearing_device_uuid_key"];

      if (v17)
      {
        v18 = [v13 objectForKey:@"ax_hearing_device_uuid_key"];
        [v14 addObject:v18];
      }
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__AXHearingAidDeviceController_centralManager_didRetrievePeripherals___block_invoke_2;
    v28[3] = &unk_1E85CC6F8;
    v19 = v3;
    v29 = v19;
    v20 = v11;
    v30 = v20;
    v31 = &v32;
    [v14 enumerateObjectsUsingBlock:v28];
    v21 = v33[5];
    if (v21)
    {
      [v21 setIsPaired:1];
      [*(a1 + 32) connectToPeripheral:v19];
      [*(a1 + 32) addAvailableDevice:v33[5]];
      v22 = [*(a1 + 32) persistentDevices];
      v23 = [v22 indexOfObject:v33[5]];

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = [*(a1 + 32) persistentDevices];
        [v24 addObject:v33[5]];
      }
    }

    _Block_object_dispose(&v32, 8);
    v9 = v37;
  }
}

void __70__AXHearingAidDeviceController_centralManager_didRetrievePeripherals___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 identifier];
  v6 = [v5 UUIDString];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    if (a1[5])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[AXHearingAidDevice alloc] initWithPeripheral:a1[4]];
        v9 = *(a1[6] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        MEMORY[0x1EEE66BB8]();
      }
    }
  }
}

uint64_t __70__AXHearingAidDeviceController_centralManager_didRetrievePeripherals___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 addPeripheral:*(a1 + 32)])
  {
    [*(a1 + 40) addLoadedDevice:v10];
    [*(a1 + 40) addAvailableDevice:v10];
    [v10 setIsPersistent:1];
    [v10 setIsPaired:1];
    [*(a1 + 40) connectToPeripheral:*(a1 + 32)];
    v6 = [*(a1 + 40) persistentDevices];
    v7 = [v6 indexOfObject:v10];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [*(a1 + 40) persistentDevices];
      [v8 addObject:v10];
    }

    *a4 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)centralManager:(id)manager didRetrieveConnectedPeripherals:(id)peripherals
{
  v11 = *MEMORY[0x1E69E9840];
  peripheralsCopy = peripherals;
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = peripheralsCopy;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "CentralManager: didRetrieveConnectedPeripherals %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__AXHearingAidDeviceController_centralManager_didRetrieveConnectedPeripherals___block_invoke;
  v8[3] = &unk_1E85CB460;
  v8[4] = self;
  [peripheralsCopy enumerateObjectsUsingBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __79__AXHearingAidDeviceController_centralManager_didRetrieveConnectedPeripherals___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) hearingAidForPeripheral:v3];
  [*(a1 + 32) addAvailableDevice:v4];
  if ([v4 didLoadBasicProperties])
  {
    [*(a1 + 32) addLoadedDevice:v4];
  }

  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: didRetrieveConnectedPeripherals, Will reconnect if possible %@", &v7, 0xCu);
  }

  [*(a1 + 32) connectToPeripheral:v3];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v54 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  array = [MEMORY[0x1E695DF70] array];
  v13 = [dataCopy objectForKey:*MEMORY[0x1E695D1F8]];
  [array addObjectsFromArray:v13];

  v14 = [dataCopy objectForKey:*MEMORY[0x1E695D1F0]];
  [array addObjectsFromArray:v14];

  v15 = [(AXHearingAidDeviceController *)self hearingAidForPeripheral:peripheralCopy];
  v16 = HCLogHearingAids();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [peripheralCopy identifier];
    *buf = 138413058;
    *&buf[4] = identifier;
    *&buf[12] = 2112;
    *&buf[14] = array;
    *&buf[22] = 2112;
    *&buf[24] = v15;
    LOWORD(v53) = 2112;
    *(&v53 + 2) = dataCopy;
    _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "CentralManager: didDiscoverPeripheral %@\n serviceUUIDs: %@\n existingDevice: %@\n advertisementData: %@", buf, 0x2Au);
  }

  if (v15)
  {
    [v15 updateName];
    [(AXHearingAidDeviceController *)self addAvailableDevice:v15];
    deviceUUID = [v15 deviceUUID];
    v19 = deviceUUID == 0;

    if (!v19)
    {
      advertisingTimestamps = self->_advertisingTimestamps;
      date = [MEMORY[0x1E695DF00] date];
      deviceUUID2 = [v15 deviceUUID];
      [(NSMutableDictionary *)advertisingTimestamps setObject:date forKey:deviceUUID2];
    }

    if (([v15 didLoadBasicProperties] & 1) != 0 || objc_msgSend(v15, "isPersistent"))
    {
      [(AXHearingAidDeviceController *)self addLoadedDevice:v15];
    }

    v23 = HCLogHearingAids();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if ([v15 isConnected])
      {
        isConnecting = 0;
      }

      else if (([v15 isPaired] & 1) != 0 || !objc_msgSend(v15, "didLoadBasicProperties"))
      {
        isConnecting = 1;
      }

      else
      {
        isConnecting = [v15 isConnecting];
      }

      isConnected = [v15 isConnected];
      isPaired = [v15 isPaired];
      didLoadBasicProperties = [v15 didLoadBasicProperties];
      isConnecting2 = [v15 isConnecting];
      *buf = 67110144;
      *&buf[4] = isConnecting;
      *&buf[8] = 1024;
      *&buf[10] = isConnected ^ 1;
      *&buf[14] = 1024;
      *&buf[16] = isPaired;
      *&buf[20] = 1024;
      *&buf[22] = didLoadBasicProperties ^ 1;
      *&buf[26] = 1024;
      *&buf[28] = isConnecting2;
      _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: didDiscoverPeripheral, Connecting %d = [%d, %d, %d, %d]", buf, 0x20u);
    }

    if (([v15 isConnected] & 1) == 0 && ((objc_msgSend(v15, "isPaired") & 1) != 0 || !objc_msgSend(v15, "didLoadBasicProperties") || objc_msgSend(v15, "isConnecting")))
    {
      [v15 addPeripheral:peripheralCopy];
      if ([v15 deviceProtocol] == 1)
      {
        v38 = HCLogHearingHandoff();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          name = [v15 name];
          *buf = 138412290;
          *&buf[4] = name;
          _os_log_impl(&dword_1DA5E2000, v38, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: didDiscoverPeripheral, Will reconnect if possible %@", buf, 0xCu);
        }

        leftPeripheral = [v15 leftPeripheral];
        [(AXHearingAidDeviceController *)self connectToPeripheral:leftPeripheral];

        rightPeripheral = [v15 rightPeripheral];
        [(AXHearingAidDeviceController *)self connectToPeripheral:rightPeripheral];
      }
    }

    if ([v15 isConnected])
    {
      [(AXHearingAidDeviceController *)self addConnectedDevice:v15];
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__6;
    *&v53 = __Block_byref_object_dispose__6;
    *(&v53 + 1) = 0;
    v25 = [MEMORY[0x1E695D2A0] UUIDWithString:@"7D74F4BD-C74A-4431-862C-CCE884371592"];
    v26 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1854"];
    if ([MEMORY[0x1E69A4560] isLEAudioEnabled])
    {
      v27 = ![(AXHearingAidDeviceController *)self isLEAudioServiceInServiceUUIDs:array];
    }

    else
    {
      v27 = 1;
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __92__AXHearingAidDeviceController_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke;
    v45[3] = &unk_1E85CC748;
    v28 = v25;
    v50 = v27;
    v46 = v28;
    v49 = buf;
    v29 = peripheralCopy;
    v47 = v29;
    v30 = v26;
    v48 = v30;
    [array enumerateObjectsUsingBlock:v45];
    v31 = *(*&buf[8] + 40);
    if (v31)
    {
      [v31 updateName];
      [(AXHearingAidDeviceController *)self addAvailableDevice:*(*&buf[8] + 40)];
      if ([MEMORY[0x1E69A4560] isLEAudioEnabled])
      {
        if ([*(*&buf[8] + 40) deviceProtocol] == 2)
        {
          [*(*&buf[8] + 40) setBasicPropertiesLoaded];
          v32 = HCLogHearingAids();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            identifier2 = [v29 identifier];
            [AXHearingAidDeviceController centralManager:identifier2 didDiscoverPeripheral:&buf[8] advertisementData:v51 RSSI:v32];
          }

          [(AXHearingAidDeviceController *)self deviceDidFinishLoading:*(*&buf[8] + 40)];
        }
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __92__AXHearingAidDeviceController_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isEqual:*(a1 + 32)] && *(a1 + 64) == 1)
  {
    v4 = [[AXHearingAidDevice alloc] initWithPeripheral:*(a1 + 40)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) identifier];
      v9 = *(*(*(a1 + 56) + 8) + 40);
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v10 = "HearingAidDeviceController: didDiscoverPeripheral %@, Created Hearing Aids device %@";
LABEL_9:
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, v10, &v16, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ([MEMORY[0x1E69A4560] isLEAudioEnabled] && objc_msgSend(v3, "isEqual:", *(a1 + 48)))
  {
    v11 = [(AXHearingAidDevice *)[AXHearingAidLEAudioDevice alloc] initWithPeripheral:*(a1 + 40)];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) identifier];
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v14;
      v10 = "HearingAidDeviceController LEA 3: didDiscoverPeripheral %@, Created Hearing Aids device %@";
      goto LABEL_9;
    }

LABEL_10:
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  *&v38[13] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  peripheralCopy = peripheral;
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    state = [peripheralCopy state];
    identifier = [peripheralCopy identifier];
    *buf = 134218242;
    v36 = state;
    v37 = 2112;
    *v38 = identifier;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "CentralManager: didConnectPeripheral, state: %ld %@", buf, 0x16u);
  }

  v11 = [(AXHearingAidDeviceController *)self hearingAidsForPeripheral:peripheralCopy];
  v12 = HCLogHearingAids();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = peripheralCopy;
    v37 = 2112;
    *v38 = v11;
    _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "CentralManager: didConnectPeripheral, %@ in %@", buf, 0x16u);
  }

  if ([v11 count])
  {
    if ([v11 count] == 1)
    {
      firstObject = [v11 firstObject];
    }

    else
    {
      v15 = [v11 indexesOfObjectsPassingTest:&__block_literal_global_76_0];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __68__AXHearingAidDeviceController_centralManager_didConnectPeripheral___block_invoke_2;
      v32[3] = &unk_1E85CC5A8;
      v32[4] = self;
      [v11 enumerateObjectsAtIndexes:v15 options:0 usingBlock:v32];
      v16 = [v11 count];
      if (v16 - [v15 count] == 1)
      {
        firstObject = [(AXHearingAidDeviceController *)self hearingAidForPeripheral:peripheralCopy];
      }

      else
      {
        v17 = HCLogHearingAids();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(AXHearingAidDeviceController *)self hearingAidsForPeripheral:peripheralCopy];
          *buf = 138412290;
          v36 = v18;
          _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: didConnectPeripheral, More than one valid hearing device %@", buf, 0xCu);
        }

        firstObject = 0;
      }
    }

    [firstObject addPeripheral:peripheralCopy];
    [(AXHearingAidDeviceController *)self addConnectedDevice:firstObject];
  }

  else
  {
    v14 = HCLogHearingAids();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = peripheralCopy;
      _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: didConnectPeripheral, No device found, disconnecting peripheral %@", buf, 0xCu);
    }

    [(AXHearingAidDeviceController *)self disconnectFromPeripheral:peripheralCopy];
    firstObject = 0;
  }

  [peripheralCopy axTag:@"IsHearingAid"];
  [firstObject connectionDidChange];
  v19 = HCLogHearingAids();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [peripheralCopy identifier];
    isPaired = [firstObject isPaired];
    *buf = 138412802;
    v36 = identifier2;
    v37 = 1024;
    *v38 = isPaired;
    v38[2] = 2112;
    *&v38[3] = firstObject;
    _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: didConnectPeripheral %@\n connectedDevice (paired: %d)\n%@", buf, 0x1Cu);
  }

  if ([firstObject isPaired])
  {
    v22 = +[HUNearbyHearingAidController sharedInstance];
    [v22 sendConnectionUpdateToPeers];

    v23 = self->_availablePeripherals;
    objc_sync_enter(v23);
    availablePeripherals = self->_availablePeripherals;
    v34 = firstObject;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [(NSMutableArray *)availablePeripherals setArray:v25];

    objc_sync_exit(v23);
    loadedDevices = self->_loadedDevices;
    v33 = firstObject;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [(NSMutableArray *)loadedDevices setArray:v27];

    persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
    LODWORD(v27) = [persistentDevices indexOfObject:firstObject] == 0x7FFFFFFFFFFFFFFFLL;

    if (v27)
    {
      persistentDevices2 = [(AXHearingAidDeviceController *)self persistentDevices];
      [persistentDevices2 addObject:firstObject];
    }

    [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
  }

  if ([firstObject deviceProtocol] == 1 && objc_msgSend(firstObject, "didLoadBasicProperties"))
  {
    [(AXHearingAidDeviceController *)self deviceDidFinishLoading:firstObject];
  }

  discoveringServiceUUIDs = [firstObject discoveringServiceUUIDs];
  [peripheralCopy discoverServices:discoveringServiceUUIDs];

  v31 = *MEMORY[0x1E69E9840];
}

BOOL __68__AXHearingAidDeviceController_centralManager_didConnectPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 didLoadPersistentProperties])
  {
    v3 = [v2 leftPeripheral];
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v5 = [v2 rightPeripheral];
      v4 = v5 == 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = HCLogHearingAids();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = peripheralCopy;
    v33 = 2112;
    v34 = errorCopy;
    _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "CentralManager: didFailToConnectPeripheral %@ - %@", buf, 0x16u);
  }

  code = [errorCopy code];
  if (code <= 0x10)
  {
    if (((1 << code) & 0x8EF9) != 0)
    {
      v13 = HCLogHearingAids();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "CentralManager: didFailToConnectPeripheral, Non fatal error. Attempting reconnect", buf, 2u);
      }

      v14 = HCLogHearingHandoff();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [peripheralCopy identifier];
        *buf = 138412290;
        v32 = identifier;
        _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: didFailToConnectPeripheral, Non fatal error, Will reconnect if possible: %@", buf, 0xCu);
      }

      [(AXHearingAidDeviceController *)self connectToPeripheral:peripheralCopy];
      goto LABEL_17;
    }

    if (((1 << code) & 0x13106) != 0)
    {
      v16 = HCLogHearingAids();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AXHearingAidDeviceController centralManager:didFailToConnectPeripheral:error:];
      }

      v17 = HCLogHearingHandoff();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      identifier2 = [peripheralCopy identifier];
      *buf = 138412290;
      v32 = identifier2;
      v19 = "CentralManager: didFailToConnectPeripheral, Fatal: %@";
    }

    else
    {
      v21 = +[HUHearingAidSettings sharedInstance];
      clearPartialPairing = [v21 clearPartialPairing];

      if (clearPartialPairing)
      {
        sharedPairingAgent = [managerCopy sharedPairingAgent];
        [sharedPairingAgent unpairPeer:peripheralCopy];
      }

      else
      {
        v24 = MEMORY[0x1E69A4570];
        v25 = MEMORY[0x1E69A4560];
        v29 = *MEMORY[0x1E69A4530];
        v30 = &unk_1F5623EC0;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v27 = [v25 messagePayloadFromDictionary:v26 andIdentifier:0x8000000000000000];
        sharedPairingAgent = [v24 messageWithPayload:v27];

        v28 = +[AXHeardController sharedServer];
        [v28 sendUpdateMessage:sharedPairingAgent forIdentifier:0x8000000000000000];
      }

      v17 = HCLogHearingHandoff();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      identifier2 = [peripheralCopy identifier];
      *buf = 138412290;
      v32 = identifier2;
      v19 = "CentralManager: didFailToConnectPeripheral, Pairing info was removed: %@";
    }

    _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);

LABEL_16:
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  errorCopy = error;
  v9 = [(AXHearingAidDeviceController *)self hearingAidForPeripheral:peripheralCopy];
  [v9 updateBatteryServiceForPeripheral:peripheralCopy];
  v10 = HCLogHearingHandoff();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    state = [peripheralCopy state];
    identifier = [peripheralCopy identifier];
    name = [v9 name];
    v22 = 134218754;
    v23 = state;
    v24 = 2112;
    v25 = identifier;
    v26 = 2112;
    v27 = name;
    v28 = 2112;
    v29 = errorCopy;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "CentralManager: didDisconnectPeripheral state: %ld %@ %@ error: %@", &v22, 0x2Au);
  }

  if (![v9 isPaired])
  {
    goto LABEL_10;
  }

  v14 = +[HUHearingAidSettings sharedInstance];
  if ([v14 isiCloudPaired])
  {

    goto LABEL_10;
  }

  v15 = +[HUHearingAidSettings sharedInstance];
  pairedHearingAids = [v15 pairedHearingAids];

  if (!pairedHearingAids)
  {
LABEL_10:
    if (v9)
    {
      [(HUDeviceController *)self device:v9 didUpdateProperty:69206016];
      [(AXHearingAidDeviceController *)self removeConnectedDevice:v9];
      persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
      [persistentDevices removeObject:v9];

      [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
    }

    goto LABEL_12;
  }

  [(HUDeviceController *)self device:v9 didUpdateProperty:0x200000];
  [(AXHearingAidDeviceController *)self removeConnectedDevice:v9];
  [v9 connectionDidChange];
  v17 = +[HUNearbyHearingAidController sharedInstance];
  [v17 sendConnectionUpdateToPeers];

  v18 = HCLogHearingHandoff();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [peripheralCopy identifier];
    v22 = 138412290;
    v23 = identifier2;
    _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: didDisconnectPeripheral, Will reconnect if possible: %@", &v22, 0xCu);
  }

  [(AXHearingAidDeviceController *)self connectToPeripheral:peripheralCopy];
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  v45 = *MEMORY[0x1E69E9840];
  pairingCopy = pairing;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(AXHearingAidDevice *)pairingCopy hasTag:@"IsHearingAid"])
  {
    v6 = pairingCopy;
    v7 = +[HUHearingAidSettings sharedInstance];
    pairedHearingAids = [v7 pairedHearingAids];

    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = v6;
      v43 = 2112;
      v44 = pairedHearingAids;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "PairingAgent: peerDidCompletePairing, Pairing completed %@ - %@", buf, 0x16u);
    }

    v10 = [(AXHearingAidDeviceController *)self hearingAidForPeripheral:v6];
    if (!v10)
    {
      if (pairedHearingAids)
      {
        v11 = [pairedHearingAids objectForKey:@"ax_hearing_device_left_peripheral_key"];
        dictionary = [v11 objectForKey:@"ax_hearing_device_hiid_key"];

        v13 = [pairedHearingAids objectForKey:@"ax_hearing_device_left_peripheral_key"];
        v40 = [v13 objectForKey:@"ax_hearing_device_hiidother_key"];

        v14 = [pairedHearingAids objectForKey:@"ax_hearing_device_right_peripheral_key"];
        v15 = [v14 objectForKey:@"ax_hearing_device_hiid_key"];

        v16 = [pairedHearingAids objectForKey:@"ax_hearing_device_right_peripheral_key"];
        v17 = [v16 objectForKey:@"ax_hearing_device_hiidother_key"];

        if (![(AXHearingAidDevice *)dictionary length])
        {
          v18 = v17;

          dictionary = v18;
        }

        v38 = v17;
        if (![v15 length])
        {
          v19 = v40;

          v15 = v19;
        }

        v39 = v15;
        v20 = [AXHearingAidDevice deviceIDFromLeftID:dictionary andRightID:v15];
        v21 = [v6 hasTag:v20];
        v22 = HCLogHearingAids();
        v23 = os_log_type_enabled(&v22->super, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          if (v23)
          {
            *buf = 138412546;
            v42 = v20;
            v43 = 2112;
            v44 = v6;
            _os_log_impl(&dword_1DA5E2000, &v22->super, OS_LOG_TYPE_DEFAULT, "PairingAgent: peerDidCompletePairing, Found easy paired peripheral %@ - %@", buf, 0x16u);
          }

          v22 = [(AXHearingAidDeviceController *)self hearingAidForDeviceID:v20];
          if (!v22)
          {
            v22 = [[AXHearingAidDevice alloc] initWithPersistentRepresentation:pairedHearingAids];
            [(AXHearingAidDeviceController *)self addAvailableDevice:v22];
            [(AXHearingAidDeviceController *)self addLoadedDevice:v22];
            v24 = HCLogHearingAids();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = v22;
              _os_log_impl(&dword_1DA5E2000, v24, OS_LOG_TYPE_DEFAULT, "PairingAgent: peerDidCompletePairing, Creating new easy pairing device %@", buf, 0xCu);
            }
          }

          [(AXHearingAidDevice *)v22 addPeripheral:v6 asLeft:[v6 hasTag:@"Left HA"]];
          v25 = +[HUHearingAidSettings sharedInstance];
          persistentRepresentation = [(AXHearingAidDevice *)v22 persistentRepresentation];
          [v25 setPairedHearingAids:persistentRepresentation];
        }

        else if (v23)
        {
          *buf = 138412290;
          v42 = v20;
          _os_log_impl(&dword_1DA5E2000, &v22->super, OS_LOG_TYPE_DEFAULT, "PairingAgent: peerDidCompletePairing, Peripheral missing tag %@", buf, 0xCu);
        }

        v36 = v40;
      }

      else
      {
        v27 = [v6 hasTag:@"Left HA"];
        v28 = @"ax_hearing_device_right_peripheral_key";
        if (v27)
        {
          v28 = @"ax_hearing_device_left_peripheral_key";
        }

        v29 = MEMORY[0x1E695DF90];
        v30 = v28;
        v31 = +[HUHearingAidSettings sharedInstance];
        knownPeripheralUUIDs = [v31 knownPeripheralUUIDs];
        dictionary = [v29 dictionaryWithDictionary:knownPeripheralUUIDs];

        if (!dictionary)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        identifier = [v6 identifier];
        uUIDString = [identifier UUIDString];
        [(AXHearingAidDevice *)dictionary setValue:uUIDString forKey:v30];

        v35 = +[HUHearingAidSettings sharedInstance];
        [v35 setKnownPeripheralUUIDs:dictionary];

        v36 = HCLogHearingAids();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = dictionary;
          _os_log_impl(&dword_1DA5E2000, v36, OS_LOG_TYPE_DEFAULT, "PairingAgent: peerDidCompletePairing, Not iCloud paired. Storing UUIDs %@", buf, 0xCu);
        }
      }
    }

    [v10 addPeripheral:v6];
    [v10 pairingDidCompleteForPeripheral:v6];
    [v10 checkPairingStatusWithCompletion:&__block_literal_global_91];
    [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
  }

  else
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = pairingCopy;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "PairingAgent: peerDidCompletePairing, Skipping pairing because not a hearing device %@", buf, 0xCu);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __68__AXHearingAidDeviceController_pairingAgent_peerDidCompletePairing___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2 && (a3 & 1) == 0)
  {
    v3 = +[AXHAController sharedController];
    [v3 setListenForAvailableDeviceUpdates:0];

    v4 = +[HUHearingAidSettings sharedInstance];
    [v4 setClearPartialPairing:0];
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  pairingCopy = pairing;
  errorCopy = error;
  v9 = HCLogHearingAids();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = pairingCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "PairingAgent: peerDidFailToCompletePairing, %@ - %@", &v13, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = pairingCopy;
    v11 = [(AXHearingAidDeviceController *)self hearingAidForPeripheral:v10];
    [v11 pairingDidCompleteForPeripheral:v10];

    [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  v14 = *MEMORY[0x1E69E9840];
  unpairCopy = unpair;
  v6 = [(AXHearingAidDeviceController *)self hearingAidForPeripheral:unpairCopy];
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = unpairCopy;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "PairingAgent: peerDidUnpair, Did Unpair %@ in device %@", &v10, 0x16u);
  }

  if (v6)
  {
    [(AXHearingAidDeviceController *)self forgetDevice:v6];
    [(AXHearingAidDeviceController *)self loadedDevicesDidChange];
    [v6 disconnectAndUnpair:1];
    v8 = +[HUHearingAidSettings sharedInstance];
    [v8 setPairedHearingAids:0];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)checkPeripheralPaired:(id)paired withCompletion:(id)completion
{
  pairedCopy = paired;
  completionCopy = completion;
  if (completionCopy)
  {
    if (_AXSInUnitTestMode())
    {
      completionCopy[2](completionCopy, 1);
    }

    else if (pairedCopy)
    {
      bluetoothCentralQueue = self->_bluetoothCentralQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__AXHearingAidDeviceController_checkPeripheralPaired_withCompletion___block_invoke;
      block[3] = &unk_1E85CB0F0;
      block[4] = self;
      v10 = pairedCopy;
      v11 = completionCopy;
      dispatch_async(bluetoothCentralQueue, block);
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

uint64_t __69__AXHearingAidDeviceController_checkPeripheralPaired_withCompletion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) sharedPairingAgent];
  [v2 isPeerPaired:a1[5]];

  v3 = *(a1[6] + 16);

  return v3();
}

- (void)unpairPeripheralWithUUID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [dCopy length];
  v6 = HCLogHearingAids();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Unpairing peripheral %@", buf, 0xCu);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__AXHearingAidDeviceController_unpairPeripheralWithUUID___block_invoke;
    v9[3] = &unk_1E85C9F38;
    v10 = dCopy;
    selfCopy = self;
    [(AXHearingAidDeviceController *)self sendRequestToCentralManager:v9];
    v6 = v10;
  }

  else if (v7)
  {
    *buf = 138412290;
    v13 = dCopy;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Not Unpairing %@", buf, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __57__AXHearingAidDeviceController_unpairPeripheralWithUUID___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 40);
  v16[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v5 = [v3 retrievePeripheralsWithIdentifiers:v4];

  v6 = [v5 firstObject];
  if (!v6)
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v14 = 138412290;
      v15[0] = v12;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: Not unpairing, no peripheral for %@", &v14, 0xCu);
    }

    goto LABEL_8;
  }

  v7 = [*(*(a1 + 40) + 40) sharedPairingAgent];
  v8 = [v7 isPeerPaired:v6];

  v9 = HCLogHearingAids();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v14 = 67109378;
    LODWORD(v15[0]) = v8;
    WORD2(v15[0]) = 2112;
    *(v15 + 6) = v10;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "PairingAgent: Unpairing [%d] %@", &v14, 0x12u);
  }

  if (v8)
  {
    v11 = [*(*(a1 + 40) + 40) sharedPairingAgent];
    [v11 unpairPeer:v6];
LABEL_8:
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)persistPairedHearingAids
{
  persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
  firstObject = [persistentDevices firstObject];
  persistentRepresentation = [firstObject persistentRepresentation];

  if ([persistentRepresentation count])
  {
    v4 = +[HUHearingAidSettings sharedInstance];
    [v4 setPairedHearingAids:persistentRepresentation];
  }
}

- (void)pairedHearingAidsDidChange
{
  v59[1] = *MEMORY[0x1E69E9840];
  v3 = +[HUHearingAidSettings sharedInstance];
  pairedHearingAids = [v3 pairedHearingAids];

  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = pairedHearingAids;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: pairedHearingAidsDidChange, persistent Hearing Aids: %@", buf, 0xCu);
  }

  if (pairedHearingAids)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [pairedHearingAids valueForKey:@"ax_hearing_device_fake_type_key"];
      if (v6 || ([pairedHearingAids valueForKey:@"HAFakeSearch"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v8))
      {
        [(AXHearingAidDeviceController *)self addFakeHearingAidsWithType:v6];
LABEL_42:

        goto LABEL_43;
      }

      v14 = 0x1E695D000uLL;
      array = [MEMORY[0x1E695DF70] array];
      v16 = [pairedHearingAids valueForKey:@"ax_hearing_device_protocol_key"];
      unsignedLongLongValue = [v16 unsignedLongLongValue];

      if (unsignedLongLongValue >= 2)
      {
        v19 = 0;
        if (![MEMORY[0x1E69A4560] isLEAudioEnabled] || unsignedLongLongValue != 2)
        {
LABEL_19:
          deviceUUID = [v19 deviceUUID];
          v21 = [(AXHearingAidDeviceController *)self hearingAidForDeviceID:deviceUUID];

          if (v21)
          {
            v22 = v21;

            v19 = v22;
          }

          else if (!v19)
          {
            goto LABEL_26;
          }

          if ([v19 didLoadPersistentProperties])
          {
            v23 = HCLogHearingAids();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v56 = v19;
              _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: pairedHearingAidsDidChange, Updating Persistent/Loaded/Available with device\n%@", buf, 0xCu);
            }

            persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
            v59[0] = v19;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
            [persistentDevices setArray:v25];

            [(AXHearingAidDeviceController *)self addLoadedDevice:v19];
            [(AXHearingAidDeviceController *)self addAvailableDevice:v19];
            v14 = 0x1E695D000;
LABEL_29:
            leftPeripheralUUID = [v19 leftPeripheralUUID];

            if (leftPeripheralUUID)
            {
              leftPeripheralUUID2 = [v19 leftPeripheralUUID];
              [array addObject:leftPeripheralUUID2];
            }

            rightPeripheralUUID = [v19 rightPeripheralUUID];

            if (rightPeripheralUUID)
            {
              rightPeripheralUUID2 = [v19 rightPeripheralUUID];
              [array addObject:rightPeripheralUUID2];
            }

            v46 = v21;
            v32 = HCLogHearingAids();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              [(AXHearingAidDeviceController *)self persistentDevices];
              v34 = v33 = v14;
              *buf = 138412546;
              v56 = v19;
              v57 = 2112;
              v58 = v34;
              _os_log_impl(&dword_1DA5E2000, v32, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: pairedHearingAidsDidChange, Persistent device %@, %@", buf, 0x16u);

              v14 = v33;
            }

            connectedDevices = [(AXHearingAidDeviceController *)self connectedDevices];
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_102;
            v52[3] = &unk_1E85CC5A8;
            v36 = array;
            v53 = v36;
            [connectedDevices enumerateObjectsUsingBlock:v52];

            array2 = [*(v14 + 3952) array];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_3;
            v50[3] = &unk_1E85CA8E0;
            v38 = array2;
            v51 = v38;
            [v36 enumerateObjectsUsingBlock:v50];
            if ([v38 count])
            {
              v47[0] = MEMORY[0x1E69E9820];
              v47[1] = 3221225472;
              v47[2] = __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_4;
              v47[3] = &unk_1E85CA468;
              v47[4] = self;
              v48 = v38;
              v49 = v19;
              [(AXHearingAidDeviceController *)self sendRequestToCentralManager:v47];
            }

            else
            {
              v39 = +[HUHearingAidSettings sharedInstance];
              isiCloudPaired = [v39 isiCloudPaired];

              if ((isiCloudPaired & 1) == 0)
              {
                v41 = HCLogHearingAids();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v56 = v36;
                  v57 = 2112;
                  v58 = pairedHearingAids;
                  _os_log_impl(&dword_1DA5E2000, v41, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: pairedHearingAidsDidChange, No peripheral identifiers %@, unpairing persistent device\n%@", buf, 0x16u);
                }

                v42 = +[HUHearingAidSettings sharedInstance];
                [v42 setPairedHearingAids:0];

                persistentDevices2 = [(AXHearingAidDeviceController *)self persistentDevices];
                firstObject = [persistentDevices2 firstObject];
                [firstObject disconnectAndUnpair:1];

                [(AXHearingAidDeviceController *)self searchForAvailableDevices];
              }
            }

            goto LABEL_42;
          }

LABEL_26:
          v26 = HCLogHearingAids();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v56 = v19;
            _os_log_impl(&dword_1DA5E2000, v26, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: pairedHearingAidsDidChange, Persistent properties weren't loaded, Disconnecting and Unpairing device\n%@", buf, 0xCu);
          }

          [v19 disconnectAndUnpair:1];
          v27 = +[HUHearingAidSettings sharedInstance];
          [v27 setPairedHearingAids:0];

          goto LABEL_29;
        }

        v18 = off_1E85C9908;
      }

      else
      {
        v18 = off_1E85C98F8;
      }

      v19 = [objc_alloc(*v18) initWithPersistentRepresentation:pairedHearingAids];
      goto LABEL_19;
    }
  }

  else
  {
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: pairedHearingAidsDidChange, No persistent Hearing Aids, Clearing Paired Hearing Devices", buf, 2u);
    }

    v10 = +[AXHAController sharedController];
    liveListenController = [v10 liveListenController];
    isListening = [liveListenController isListening];

    if (isListening)
    {
      v6 = +[AXHAController sharedController];
      liveListenController2 = [v6 liveListenController];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke;
      v54[3] = &unk_1E85CC790;
      v54[4] = self;
      [liveListenController2 stopListeningWithCompletion:v54];

      goto LABEL_42;
    }

    [(AXHearingAidDeviceController *)self clearPairedHearingAids];
  }

LABEL_43:

  v45 = *MEMORY[0x1E69E9840];
}

void __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_2;
  v7[3] = &unk_1E85CC7B8;
  v8 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v7];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 disconnectAndUnpair:1];
  }

  [v5 setIsPaired:v6 != 0x7FFFFFFFFFFFFFFFLL];
}

void __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a2;
  v6 = [[v3 alloc] initWithUUIDString:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

void __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) retrievePeripheralsWithIdentifiers:*(a1 + 40)];
  if ([v2 count])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_103;
    v15[3] = &unk_1E85CA8E0;
    v16 = *(a1 + 48);
    [v2 enumerateObjectsUsingBlock:v15];
    v3 = +[HUHearingAidSettings sharedInstance];
    v4 = [v3 isiCloudPaired];

    if (v4)
    {
      v5 = HCLogHearingAids();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDeviceController: pairedHearingAidsDidChange, Saving iCloud paired device\n%@", buf, 0xCu);
      }

      v7 = +[HUHearingAidSettings sharedInstance];
      v8 = [*(a1 + 48) persistentRepresentation];
      [v7 setPairedHearingAids:v8];
    }

    [*(a1 + 32) centralManager:*(*(a1 + 32) + 40) didRetrievePeripherals:v2];
  }

  else
  {
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "CentralManager: No peripherals with identifiers, unpairing %@", buf, 0xCu);
    }

    v11 = +[HUHearingAidSettings sharedInstance];
    [v11 setPairedHearingAids:0];

    v12 = [*(a1 + 32) persistentDevices];
    v13 = [v12 firstObject];
    [v13 disconnectAndUnpair:1];

    [*(a1 + 32) searchForAvailableDevices];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __58__AXHearingAidDeviceController_pairedHearingAidsDidChange__block_invoke_103(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) addPeripheral:v3];
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = v4;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "CentralManager: Retrieved peripheral, Did add %d to device\n%@", v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addFakeHearingAidsWithType:(id)type
{
  typeCopy = type;
  v4 = [AXFakeHearingAidDevice alloc];
  if (typeCopy)
  {
    v5 = -[AXFakeHearingAidDevice initWithDeviceType:](v4, "initWithDeviceType:", [typeCopy intValue]);
    persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
    [(AXFakeHearingAidDevice *)persistentDevices addObject:v5];
  }

  else
  {
    v7 = [(AXFakeHearingAidDevice *)v4 initWithDeviceType:2];
    [(AXHearingAidDeviceController *)self addLoadedDevice:v7];
    [(AXHearingAidDeviceController *)self addAvailableDevice:v7];
    v8 = [[AXFakeHearingAidDevice alloc] initWithDeviceType:4];

    [(AXHearingAidDeviceController *)self addLoadedDevice:v8];
    [(AXHearingAidDeviceController *)self addAvailableDevice:v8];
    persistentDevices = [[AXFakeHearingAidDevice alloc] initWithDeviceType:8];

    [(AXHearingAidDeviceController *)self addLoadedDevice:persistentDevices];
    [(AXHearingAidDeviceController *)self addAvailableDevice:persistentDevices];
    v5 = [[AXFakeHearingAidDevice alloc] initWithDeviceType:64];
  }

  [(AXHearingAidDeviceController *)self addLoadedDevice:v5];
  [(AXHearingAidDeviceController *)self addAvailableDevice:v5];
}

- (id)valueForProperty:(unint64_t)property forDeviceID:(id)d
{
  v5 = [(AXHearingAidDeviceController *)self hearingAidForDeviceID:d];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 valueForProperty:property];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)clearPairedHearingAids
{
  persistentDevices = [(AXHearingAidDeviceController *)self persistentDevices];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__AXHearingAidDeviceController_clearPairedHearingAids__block_invoke;
  v4[3] = &unk_1E85CC5A8;
  v4[4] = self;
  [persistentDevices enumerateObjectsUsingBlock:v4];

  AXPerformBlockOnMainThread();
}

void __54__AXHearingAidDeviceController_clearPairedHearingAids__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 disconnectAndUnpair:1];
  [*(a1 + 32) removeLoadedDevice:v3];
  [*(a1 + 32) removeAvailableDevice:v3];
  [v3 setIsPaired:0];
}

uint64_t __54__AXHearingAidDeviceController_clearPairedHearingAids__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentDevices];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 loadedDevicesDidChange];
}

void __61__AXHearingAidDeviceController_setupCentralManagerForLEAudio__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a1 error];
  v6 = 138412546;
  v7 = a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_ERROR, "HearingAidDeviceController LEA 3: session update - event %@ error %@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

void __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __73__AXHearingAidDeviceController_processConnectedIdentifiers_andLocations___block_invoke_cold_4(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__AXHearingAidDeviceController_isConnecting__block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 leftPeripheral];
  v3 = [a1 descriptionForCBPeripheralState:{objc_msgSend(v2, "state")}];
  v4 = [a1 leftPeripheral];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1(&dword_1DA5E2000, v6, v7, "leftPeripheral state: %@ %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

void __44__AXHearingAidDeviceController_isConnecting__block_invoke_cold_2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 rightPeripheral];
  v3 = [a1 descriptionForCBPeripheralState:{objc_msgSend(v2, "state")}];
  v4 = [a1 rightPeripheral];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1(&dword_1DA5E2000, v6, v7, "rightPeripheral state: %@ %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:(void *)a1 didDiscoverPeripheral:(uint64_t)a2 advertisementData:(uint8_t *)buf RSSI:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(*a2 + 40);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_debug_impl(&dword_1DA5E2000, log, OS_LOG_TYPE_DEBUG, "LEA 3: peripheral discovered %@\n device: %@", buf, 0x16u);
}

@end