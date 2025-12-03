@interface PPDiscoveryManager
+ (id)sharedDiscoveryManager;
- (PPDiscoveryManager)init;
- (void)_beginDiscovery;
- (void)_forceEndDiscovery;
- (void)begin;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)end;
- (void)foundAcceptableDeviceWithAdvertisingID:(id)d signalStrength:(id)strength;
- (void)setSignalLimitOverride:(int64_t)override;
- (void)updateFromBTState:(int64_t)state;
@end

@implementation PPDiscoveryManager

+ (id)sharedDiscoveryManager
{
  if (sharedDiscoveryManager_onceToken != -1)
  {
    +[PPDiscoveryManager sharedDiscoveryManager];
  }

  v3 = sharedDiscoveryManager_sharedDiscoveryManager;

  return v3;
}

uint64_t __44__PPDiscoveryManager_sharedDiscoveryManager__block_invoke()
{
  sharedDiscoveryManager_sharedDiscoveryManager = objc_alloc_init(PPDiscoveryManager);

  return MEMORY[0x2821F96F8]();
}

- (PPDiscoveryManager)init
{
  v11.receiver = self;
  v11.super_class = PPDiscoveryManager;
  v2 = [(PPDiscoveryManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.pairingproximity.discovery", 0);
    discoveryQueue = v2->_discoveryQueue;
    v2->_discoveryQueue = v3;

    if (_os_feature_enabled_impl())
    {
      v5 = 1;
    }

    else
    {
      v5 = MGGetBoolAnswer();
    }

    v2->_networkRelayPairingEnabled = v5;
    v6 = v2->_discoveryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__PPDiscoveryManager_init__block_invoke;
    block[3] = &unk_2799FD4E8;
    v7 = v2;
    v10 = v7;
    dispatch_async(v6, block);
    v7->_signalLimitOverride = -80;
  }

  return v2;
}

- (void)begin
{
  v3 = pbb_mobileasset_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25DF4A000, v3, OS_LOG_TYPE_DEFAULT, "PPDeviceDiscovery - Began discovering", v4, 2u);
  }

  [(PPDiscoveryManager *)self _beginDiscovery];
}

- (void)_beginDiscovery
{
  discoveryQueue = self->_discoveryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PPDiscoveryManager__beginDiscovery__block_invoke;
  block[3] = &unk_2799FD4E8;
  block[4] = self;
  dispatch_async(discoveryQueue, block);
}

void __26__PPDiscoveryManager_init__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBDFF8]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  v10 = *MEMORY[0x277CBDD98];
  v11[0] = MEMORY[0x277CBEC28];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v2 initWithDelegate:v3 queue:v4 options:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *MEMORY[0x277D85DE8];
}

void __37__PPDiscoveryManager__beginDiscovery__block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (+[PPDiscoveryManager isBluetoothPoweredOn:](PPDiscoveryManager, "isBluetoothPoweredOn:", [*(*(a1 + 32) + 40) state]))
  {
    v2 = *(*(a1 + 32) + 40);
    v3 = [MEMORY[0x277CBE0A0] UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
    v22[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v5 = *MEMORY[0x277CBDDB0];
    v20[0] = *MEMORY[0x277CBDEF8];
    v20[1] = v5;
    v21[0] = MEMORY[0x277CBEC38];
    v21[1] = MEMORY[0x277CBEC38];
    v6 = *MEMORY[0x277CBDE58];
    v20[2] = *MEMORY[0x277CBDDA8];
    v20[3] = v6;
    v21[2] = MEMORY[0x277CBEC28];
    v21[3] = &unk_286FC4468;
    v20[4] = *MEMORY[0x277CBDE38];
    v21[4] = &unk_286FC4480;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
    [v2 scanForPeripheralsWithServices:v4 options:v7];
  }

  *(*(a1 + 32) + 17) = 1;
  v8 = *(a1 + 32);
  if (*(v8 + 16) == 1 && !*(v8 + 8))
  {
    v9 = objc_alloc_init(MEMORY[0x277D2CA08]);
    [v9 setPairingTransport:1];
    [v9 setDeviceType:1];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(a1 + 32) + 24)];
    [v9 setRssi:v10];

    v11 = [objc_alloc(MEMORY[0x277D2CA10]) initWithIdentifier:0 pairingCriteria:v9 metadata:0 queue:*(*(a1 + 32) + 48)];
    v12 = *(*(a1 + 32) + 8);
    *(*(a1 + 32) + 8) = v11;

    objc_initWeak(&location, *(a1 + 32));
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __37__PPDiscoveryManager__beginDiscovery__block_invoke_27;
    v17[3] = &unk_2799FD510;
    objc_copyWeak(&v18, &location);
    [*(*(a1 + 32) + 8) setCandidateDiscoveredHandler:v17];
    v13 = *(*(a1 + 32) + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__PPDiscoveryManager__beginDiscovery__block_invoke_30;
    v15[3] = &unk_2799FD538;
    objc_copyWeak(&v16, &location);
    [v13 activateWithCompletion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __37__PPDiscoveryManager__beginDiscovery__block_invoke_30(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = pbb_mobileasset_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_25DF4A000, v4, OS_LOG_TYPE_DEFAULT, "PPDeviceDiscovery - failed to activate NRDevicePairingManager with error %{public}@", &v7, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [(objc_class *)WeakRetained[1].isa startDiscoveryWithCompletion:&__block_literal_global_34];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __37__PPDiscoveryManager__beginDiscovery__block_invoke_31(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pbb_mobileasset_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "PPDeviceDiscovery - failed to start discovering using NetworkRelay with error %{public}@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_25DF4A000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    v5 = "PPDeviceDiscovery - started discovering with NetworkRelay";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)end
{
  v3 = pbb_mobileasset_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25DF4A000, v3, OS_LOG_TYPE_DEFAULT, "PPDeviceDiscovery - End discovering", v4, 2u);
  }

  [(PPDiscoveryManager *)self _forceEndDiscovery];
  self->_signalLimitOverride = -80;
}

void __37__PPDiscoveryManager__beginDiscovery__block_invoke_27(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25DF4A000, v4, OS_LOG_TYPE_DEFAULT, "PPDeviceDiscovery - candidate discovered via NetworkRelay: %@", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [v3 identifier];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D2BD20]) initWithPackedIdentifierData:v6];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 humanReadableName];
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:WeakRetained[3]];
        [WeakRetained foundAcceptableDeviceWithAdvertisingID:v9 signalStrength:v10];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_forceEndDiscovery
{
  discoveryQueue = self->_discoveryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PPDiscoveryManager__forceEndDiscovery__block_invoke;
  block[3] = &unk_2799FD4E8;
  block[4] = self;
  dispatch_async(discoveryQueue, block);
}

void __40__PPDiscoveryManager__forceEndDiscovery__block_invoke(uint64_t a1)
{
  if (+[PPDiscoveryManager isBluetoothPoweredOn:](PPDiscoveryManager, "isBluetoothPoweredOn:", [*(*(a1 + 32) + 40) state]))
  {
    [*(*(a1 + 32) + 40) stopScan];
  }

  *(*(a1 + 32) + 17) = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      [v3 cancelDiscovery];
      [*(*(a1 + 32) + 8) invalidate];
      v4 = pbb_mobileasset_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25DF4A000, v4, OS_LOG_TYPE_DEFAULT, "PPDeviceDiscovery - stopped discovering with NetworkRelay", v7, 2u);
      }

      v5 = *(a1 + 32);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;
    }
  }
}

- (void)updateFromBTState:(int64_t)state
{
  v5 = [PPDiscoveryManager isBluetoothPoweredOn:?];
  v6 = [PPDiscoveryManager isBluetoothConnected:state];
  v7 = !v5 || !v6;
  if (!v7 && self->_bluetoothIsScanning)
  {

    [(PPDiscoveryManager *)self _beginDiscovery];
  }
}

- (void)setSignalLimitOverride:(int64_t)override
{
  if ((override - 20) > 0xFFFFFFFFFFFFFF9BLL)
  {
    self->_signalLimitOverride = override;
  }

  else
  {
    v3 = pbb_mobileasset_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PPDiscoveryManager setSignalLimitOverride:v3];
    }
  }
}

- (void)foundAcceptableDeviceWithAdvertisingID:(id)d signalStrength:(id)strength
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  strengthCopy = strength;
  integerValue = [strengthCopy integerValue];
  v9 = pbb_mobileasset_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dCopy;
    v17 = 2048;
    v18 = integerValue;
    _os_log_impl(&dword_25DF4A000, v9, OS_LOG_TYPE_DEFAULT, "Found Acceptable Device: %@ with RSSI Value: %ld", buf, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13[0] = @"PPDiscoveredDeviceAdvertisingName";
  v13[1] = @"PPDiscoveredDeviceRSSIValue";
  v14[0] = dCopy;
  v14[1] = strengthCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [defaultCenter postNotificationName:@"PPDeviceWasDiscoveredNotification" object:self userInfo:v11];

  if (self->_discoveryDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(PPDiscoveryManagerDelegate *)self->_discoveryDelegate didDiscoverDeviceWithAdvertisingID:dCopy signalStrength:integerValue];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  discoveryQueue = self->_discoveryQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PPDiscoveryManager_centralManagerDidUpdateState___block_invoke;
  v7[3] = &unk_2799FD560;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(discoveryQueue, v7);
}

uint64_t __51__PPDiscoveryManager_centralManagerDidUpdateState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) state];

  return [v1 updateFromBTState:v2];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  dataCopy = data;
  iCopy = i;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__PPDiscoveryManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke;
  block[3] = &unk_2799FD588;
  v13 = dataCopy;
  v14 = iCopy;
  selfCopy = self;
  v10 = iCopy;
  v11 = dataCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__PPDiscoveryManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke(id *a1)
{
  v4 = [a1[4] objectForKeyedSubscript:*MEMORY[0x277CBDD08]];
  v2 = [a1[5] integerValue];
  v3 = v2 > 19 || v2 < *(a1[6] + 3);
  if (!v3 && [v4 length])
  {
    [a1[6] foundAcceptableDeviceWithAdvertisingID:v4 signalStrength:a1[5]];
  }
}

- (void)setSignalLimitOverride:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = &unk_286FC4498;
  v4 = 2112;
  v5 = &unk_286FC44B0;
  _os_log_error_impl(&dword_25DF4A000, log, OS_LOG_TYPE_ERROR, "Warning invalid signalLimitOverride value! Acceptable values are greater than or equal to %@ and less than %@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end