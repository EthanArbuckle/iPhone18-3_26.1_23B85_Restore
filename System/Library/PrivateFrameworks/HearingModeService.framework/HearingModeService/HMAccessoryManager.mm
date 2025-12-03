@interface HMAccessoryManager
- (HMAccessoryManager)init;
- (void)_activateWithBluetoothDeviceAddress:(id)address;
- (void)_discoveryAccessory;
- (void)_invalidate;
- (void)_triggerOnDemandFaultCheckWithCompletionHandler:(id)handler;
- (void)_writeHearingModeSetting:(id)setting;
- (void)activateWithBluetoothDeviceAddress:(id)address;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)init;
- (void)invalidate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)triggerOnDemandFaultCheckWithCompletionHandler:(id)handler;
- (void)writeHearingModeSetting:(id)setting;
@end

@implementation HMAccessoryManager

- (HMAccessoryManager)init
{
  v10.receiver = self;
  v10.super_class = HMAccessoryManager;
  v2 = [(HMAccessoryManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("HearingModeAccessoryManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager init];
    }

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    bluetoothManager = v2->_bluetoothManager;
    v2->_bluetoothManager = mEMORY[0x277CF3248];

    v8 = v2;
  }

  return v2;
}

- (void)activateWithBluetoothDeviceAddress:(id)address
{
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMAccessoryManager_activateWithBluetoothDeviceAddress___block_invoke;
  v7[3] = &unk_2796EE598;
  v7[4] = self;
  v8 = addressCopy;
  v6 = addressCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithBluetoothDeviceAddress:(id)address
{
  addressCopy = address;
  v4 = self->_centralManager;
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDFF8]);
    dispatchQueue = self->_dispatchQueue;
    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v9 = [v7 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x277CBDD90], 0}];
    v4 = [v5 initWithDelegate:self queue:dispatchQueue options:v9];

    objc_storeStrong(&self->_centralManager, v4);
  }

  v10 = [addressCopy copy];
  v11 = [(BluetoothManager *)self->_bluetoothManager deviceFromAddressString:v10];
  selectedDevice = self->_selectedDevice;
  self->_selectedDevice = v11;

  if (self->_selectedDevice)
  {
    if (gLogCategory_HMAccessoryManager > 30)
    {
      goto LABEL_12;
    }

    if (gLogCategory_HMAccessoryManager != -1)
    {
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v13 = self->_selectedDevice;
LABEL_6:
      LogPrintF();
    }
  }

  else if (gLogCategory_HMAccessoryManager <= 90 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager _activateWithBluetoothDeviceAddress:];
  }

LABEL_12:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMAccessoryManager_invalidate__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selectedDevice = self->_selectedDevice;
  self->_selectedDevice = 0;

  selectedPeripheral = self->_selectedPeripheral;
  self->_selectedPeripheral = 0;

  centralManager = self->_centralManager;
  self->_centralManager = 0;
}

- (void)triggerOnDemandFaultCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMAccessoryManager_triggerOnDemandFaultCheckWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796EE5E8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_triggerOnDemandFaultCheckWithCompletionHandler:(id)handler
{
  dispatchQueue = self->_dispatchQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = MEMORY[0x2530950A0](handlerCopy);

  faultCheckWriteCompletion = self->_faultCheckWriteCompletion;
  self->_faultCheckWriteCompletion = v6;

  selectedPeripheral = self->_selectedPeripheral;
  if (selectedPeripheral)
  {
    services = [(CBPeripheral *)selectedPeripheral services];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke;
    v10[3] = &unk_2796EE638;
    v10[4] = self;
    [services enumerateObjectsUsingBlock:v10];
  }

  else
  {
    self->_isFaultCheckPending = 1;
    if (gLogCategory_HMAccessoryManager <= 90 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager _triggerOnDemandFaultCheckWithCompletionHandler:];
    }
  }
}

void __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_2796EE610;
  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v9[4] = v8;
  [v6 enumerateObjectsUsingBlock:v9];

  if ((*a4 & 1) == 0 && gLogCategory_HMAccessoryManager <= 90 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke_cold_1(v7);
  }

  *(*v7 + 41) = 0;
}

void __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 UUID];
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120004-95c5-4d6f-9098-0f0b41457e0a"];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_6:
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke_2_cold_1(a1);
    }

    v12 = *(*(a1 + 32) + 56);
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:"1" length:1];
    [v12 writeValue:v13 forCharacteristic:v14 type:0];

    *a4 = 1;
    goto LABEL_11;
  }

  if ((v8 != 0) == (v9 == 0))
  {

    goto LABEL_11;
  }

  v11 = [v8 isEqual:v9];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_11:
}

- (void)writeHearingModeSetting:(id)setting
{
  settingCopy = setting;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMAccessoryManager_writeHearingModeSetting___block_invoke;
  v7[3] = &unk_2796EE598;
  v7[4] = self;
  v8 = settingCopy;
  v6 = settingCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_writeHearingModeSetting:(id)setting
{
  settingCopy = setting;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selectedPeripheral = self->_selectedPeripheral;
  if (selectedPeripheral)
  {
    services = [(CBPeripheral *)selectedPeripheral services];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__HMAccessoryManager__writeHearingModeSetting___block_invoke;
    v7[3] = &unk_2796EE688;
    v7[4] = self;
    v8 = settingCopy;
    [services enumerateObjectsUsingBlock:v7];
  }

  else
  {
    [HMAccessoryManager _writeHearingModeSetting:];
  }
}

void __47__HMAccessoryManager__writeHearingModeSetting___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HMAccessoryManager__writeHearingModeSetting___block_invoke_2;
  v5[3] = &unk_2796EE660;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

void __47__HMAccessoryManager__writeHearingModeSetting___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 UUID];
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120005-95c5-4d6f-9098-0f0b41457e0a"];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_6:
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __47__HMAccessoryManager__writeHearingModeSetting___block_invoke_2_cold_1(a1);
    }

    [*(*(a1 + 32) + 56) writeValue:*(a1 + 40) forCharacteristic:v12 type:1];
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v8 != 0) == (v9 == 0))
  {

    goto LABEL_11;
  }

  v11 = [v8 isEqual:v9];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_11:
}

- (void)_discoveryAccessory
{
  v18[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager _discoveryAccessory];
  }

  if (self->_isCentralManagerOn)
  {
    centralManager = self->_centralManager;
    v17 = *MEMORY[0x277CBDED8];
    v4 = *MEMORY[0x277CBDF60];
    v5 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
    v16 = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v18[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [(CBCentralManager *)centralManager registerForConnectionEventsWithOptions:v7];

    v8 = self->_centralManager;
    v9 = [MEMORY[0x277CBE0A0] UUIDWithString:v4];
    v15 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v11 = [(CBCentralManager *)v8 retrieveConnectedPeripheralsWithServices:v10];

    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager _discoveryAccessory];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__HMAccessoryManager__discoveryAccessory__block_invoke;
    v14[3] = &unk_2796EE6B0;
    v14[4] = self;
    [v11 enumerateObjectsUsingBlock:v14];
  }

  else if (gLogCategory_HMAccessoryManager <= 30)
  {
    if (gLogCategory_HMAccessoryManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      isCentralManagerOn = self->_isCentralManagerOn;
    }

    LogPrintF();
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

void __41__HMAccessoryManager__discoveryAccessory__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [MEMORY[0x277CF3248] sharedInstance];
  v8 = [v14 identifier];
  v9 = [v7 deviceFromIdentifier:v8];

  v10 = *(*(a1 + 32) + 48);
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

LABEL_6:
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __41__HMAccessoryManager__discoveryAccessory__block_invoke_cold_1();
    }

    objc_storeStrong((*(a1 + 32) + 56), a2);
    [*(*(a1 + 32) + 16) connectPeripheral:v14 options:0];
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v11 == 0) == (v10 != 0))
  {

    goto LABEL_11;
  }

  v13 = [v10 isEqual:v11];

  if (v13)
  {
    goto LABEL_6;
  }

LABEL_11:
}

- (void)centralManagerDidUpdateState:(id)state
{
  state = [state state];
  v5 = state == 5;
  if (self->_isCentralManagerOn != v5)
  {
    v6 = state;
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager centralManagerDidUpdateState:];
    }

    self->_isCentralManagerOn = v5;
    if (v6 == 5)
    {

      [(HMAccessoryManager *)self _discoveryAccessory];
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v7 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v9 = v7;
  v10 = selectedDevice;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {

LABEL_15:
      [HMAccessoryManager centralManager:didConnectPeripheral:];
      goto LABEL_10;
    }

    v12 = [(BluetoothDevice *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager centralManager:v9 didConnectPeripheral:?];
  }

  [peripheralCopy setDelegate:self];
  v13 = MEMORY[0x277CBEA60];
  v14 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v15 = [v13 arrayWithObjects:{v14, 0}];
  [peripheralCopy discoverServices:v15];

LABEL_10:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v8 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v10 = v8;
  v11 = selectedDevice;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {

LABEL_15:
      [HMAccessoryManager centralManager:didDisconnectPeripheral:error:];
      goto LABEL_10;
    }

    v13 = [(BluetoothDevice *)v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager centralManager:v10 didDisconnectPeripheral:? error:?];
  }

  selectedPeripheral = self->_selectedPeripheral;
  self->_selectedPeripheral = 0;

LABEL_10:
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v10 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v12 = v10;
  v13 = selectedDevice;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_17:
      [HMAccessoryManager centralManager:connectionEventDidOccur:forPeripheral:];
      goto LABEL_12;
    }

    v15 = [(BluetoothDevice *)v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (occur == 1 && !self->_selectedPeripheral)
  {
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager centralManager:connectionEventDidOccur:forPeripheral:];
    }

    objc_storeStrong(&self->_selectedPeripheral, peripheral);
    [(CBCentralManager *)self->_centralManager connectPeripheral:peripheralCopy options:0];
  }

LABEL_12:
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v8 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v10 = v8;
  v11 = selectedDevice;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {

LABEL_9:
      [HMAccessoryManager peripheral:didDiscoverServices:];
      goto LABEL_7;
    }

    v13 = [(BluetoothDevice *)v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  services = [peripheralCopy services];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__HMAccessoryManager_peripheral_didDiscoverServices___block_invoke;
  v15[3] = &unk_2796EE638;
  v16 = peripheralCopy;
  [services enumerateObjectsUsingBlock:v15];

LABEL_7:
}

void __53__HMAccessoryManager_peripheral_didDiscoverServices___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __53__HMAccessoryManager_peripheral_didDiscoverServices___block_invoke_cold_1(a1);
    }

    [*(a1 + 32) discoverCharacteristics:0 forService:v6];
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v11 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v13 = v11;
  v14 = selectedDevice;
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    if ((v13 != 0) == (v14 == 0))
    {

LABEL_20:
      [HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:];
      goto LABEL_16;
    }

    v16 = [(BluetoothDevice *)v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager peripheral:serviceCopy didDiscoverCharacteristicsForService:? error:?];
  }

  services = [peripheralCopy services];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
  v18[3] = &unk_2796EE638;
  v19 = peripheralCopy;
  [services enumerateObjectsUsingBlock:v18];

  if (self->_isFaultCheckPending)
  {
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:];
    }

    if (self->_selectedPeripheral)
    {
      [(HMAccessoryManager *)self _triggerOnDemandFaultCheckWithCompletionHandler:self->_faultCheckWriteCompletion];
    }

    else
    {
      [HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:];
    }
  }

LABEL_16:
}

void __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2;
  v4[3] = &unk_2796EE610;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120005-95c5-4d6f-9098-0f0b41457e0a"];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

LABEL_6:
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      v11 = *(a1 + 32);
      v12 = v13;
      LogPrintF();
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    [v10 setNotifyValue:1 forCharacteristic:{v13, v11, v12}];
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2_cold_1(v9);
    }

    [*v9 readValueForCharacteristic:v13];
    goto LABEL_15;
  }

  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_15;
  }

  v8 = [v5 isEqual:v6];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_15:
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v10 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v12 = v10;
  v13 = selectedDevice;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_17:
      [HMAccessoryManager peripheral:didUpdateValueForCharacteristic:error:];
      goto LABEL_12;
    }

    v15 = [(BluetoothDevice *)v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  value = [characteristicCopy value];
  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager peripheral:didUpdateValueForCharacteristic:error:];
  }

  settingsUpdateHandler = self->_settingsUpdateHandler;
  if (settingsUpdateHandler)
  {
    settingsUpdateHandler[2](settingsUpdateHandler, value);
  }

LABEL_12:
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      v18 = characteristicCopy;
      v19 = errorCopy;
      v17 = peripheralCopy;
LABEL_8:
      LogPrintF();
    }
  }

  else if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    v17 = peripheralCopy;
    v18 = characteristicCopy;
    goto LABEL_8;
  }

  uUID = [characteristicCopy UUID];
  v11 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120004-95c5-4d6f-9098-0f0b41457e0a"];
  v12 = uUID;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_17;
  }

  if ((v12 != 0) == (v13 == 0))
  {

LABEL_20:
    goto LABEL_21;
  }

  v15 = [v12 isEqual:v13];

  if (v15)
  {
LABEL_17:
    v12 = MEMORY[0x2530950A0](self->_faultCheckWriteCompletion);
    faultCheckWriteCompletion = self->_faultCheckWriteCompletion;
    self->_faultCheckWriteCompletion = 0;

    if (v12)
    {
      (*(v12 + 2))(v12, errorCopy);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)init
{
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  connectedDevices = [mEMORY[0x277CF3248] connectedDevices];
  LogPrintF();
}

- (void)_writeHearingModeSetting:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1();
  }
}

- (void)centralManager:didConnectPeripheral:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)centralManager:(void *)a1 didConnectPeripheral:.cold.2(void *a1)
{
  v1 = [a1 address];
  LogPrintF();
}

- (void)centralManager:didDisconnectPeripheral:error:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)centralManager:(void *)a1 didDisconnectPeripheral:error:.cold.2(void *a1)
{
  v1 = [a1 address];
  LogPrintF();
}

- (void)centralManager:connectionEventDidOccur:forPeripheral:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)peripheral:(void *)a1 didDiscoverCharacteristicsForService:error:.cold.2(void *a1)
{
  v1 = [a1 characteristics];
  LogPrintF();
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.4()
{
  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

@end