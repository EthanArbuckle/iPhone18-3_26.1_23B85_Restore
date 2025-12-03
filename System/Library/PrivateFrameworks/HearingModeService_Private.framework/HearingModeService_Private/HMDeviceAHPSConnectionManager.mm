@interface HMDeviceAHPSConnectionManager
- (HMDeviceAHPSConnectionManager)initWithQueue:(id)queue;
- (void)_activateWithBluetoothDeviceUUID:(id)d;
- (void)_centralManagerEnsureStarted;
- (void)_centralManagerEnsureStopped;
- (void)_discoverAccessory;
- (void)_invalidate;
- (void)_triggerOnDemandDiagnosticCheckWithCompletionHandler:(id)handler;
- (void)_writeHMSettingsConfigsData:(id)data completion:(id)completion;
- (void)activateWithBluetoothDeviceUUID:(id)d;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)invalidate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)triggerOnDemandDiagnosticCheckWithCompletionHandler:(id)handler;
- (void)writeHMSettingsConfigsData:(id)data completion:(id)completion;
@end

@implementation HMDeviceAHPSConnectionManager

- (HMDeviceAHPSConnectionManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = HMDeviceAHPSConnectionManager;
  v6 = [(HMDeviceAHPSConnectionManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)activateWithBluetoothDeviceUUID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDeviceAHPSConnectionManager_activateWithBluetoothDeviceUUID___block_invoke;
  v7[3] = &unk_2796EFEC8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithBluetoothDeviceUUID:(id)d
{
  dCopy = d;
  if (!self->_activateCalled)
  {
    v6 = dCopy;
    self->_activateCalled = 1;
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager _activateWithBluetoothDeviceUUID:];
    }

    objc_storeStrong(&self->_identifier, d);
    [(HMDeviceAHPSConnectionManager *)self _centralManagerEnsureStarted];
    dCopy = v6;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDeviceAHPSConnectionManager_invalidate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(HMDeviceAHPSConnectionManager *)self _centralManagerEnsureStopped];
  v3 = *MEMORY[0x277CCA590];
  v4 = NSErrorF();
  diagnosticCheckWriteCompletion = self->_diagnosticCheckWriteCompletion;
  v11 = v4;
  if (diagnosticCheckWriteCompletion)
  {
    diagnosticCheckWriteCompletion[2]();
    v6 = self->_diagnosticCheckWriteCompletion;
  }

  else
  {
    v6 = 0;
  }

  self->_diagnosticCheckWriteCompletion = 0;

  diagnosticStatusUpdateHandler = self->_diagnosticStatusUpdateHandler;
  self->_diagnosticStatusUpdateHandler = 0;

  hearingProtectionUpdateHandler = self->_hearingProtectionUpdateHandler;
  self->_hearingProtectionUpdateHandler = 0;

  settingsUpdateHandler = self->_settingsUpdateHandler;
  self->_settingsUpdateHandler = 0;

  self->_activateCalled = 0;
  identifier = self->_identifier;
  self->_identifier = 0;
}

- (void)_centralManagerEnsureStarted
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager _centralManagerEnsureStarted];
  }

  v3 = self->_centralManager;
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBDFF8]);
    dispatchQueue = self->_dispatchQueue;
    v6 = MEMORY[0x277CBEAC0];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v8 = [v6 dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x277CBDD90], 0}];
    obj = [v4 initWithDelegate:self queue:dispatchQueue options:v8];

    objc_storeStrong(&self->_centralManager, obj);
    v3 = obj;
  }
}

- (void)_centralManagerEnsureStopped
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager _centralManagerEnsureStopped];
  }

  centralManager = self->_centralManager;
  self->_centralManager = 0;

  selectedPeripheral = self->_selectedPeripheral;
  self->_selectedPeripheral = 0;
}

- (void)_discoverAccessory
{
  v18[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager _discoverAccessory];
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

    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager _discoverAccessory];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__HMDeviceAHPSConnectionManager__discoverAccessory__block_invoke;
    v14[3] = &unk_2796EFF18;
    v14[4] = self;
    [v11 enumerateObjectsUsingBlock:v14];
  }

  else if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager == -1)
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

void __51__HMDeviceAHPSConnectionManager__discoverAccessory__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 40);
  v15 = v7;
  v9 = [v7 identifier];
  v10 = [v9 UUIDString];
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

LABEL_6:
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __51__HMDeviceAHPSConnectionManager__discoverAccessory__block_invoke_cold_1();
    }

    objc_storeStrong((*(a1 + 32) + 56), a2);
    [*(*(a1 + 32) + 16) connectPeripheral:v15 options:0];
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v11 != 0) == (v12 == 0))
  {

    goto LABEL_11;
  }

  v14 = [v11 isEqual:v12];

  if (v14)
  {
    goto LABEL_6;
  }

LABEL_11:
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v11 = identifier;
  v12 = uUIDString;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {

LABEL_17:
      [HMDeviceAHPSConnectionManager centralManager:connectionEventDidOccur:forPeripheral:];
      goto LABEL_12;
    }

    v14 = [(NSString *)v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (occur == 1 && !self->_selectedPeripheral)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager centralManager:connectionEventDidOccur:forPeripheral:];
    }

    objc_storeStrong(&self->_selectedPeripheral, peripheral);
    [(CBCentralManager *)self->_centralManager connectPeripheral:peripheralCopy options:0];
  }

LABEL_12:
}

- (void)centralManagerDidUpdateState:(id)state
{
  state = [state state];
  v5 = state == 5;
  if (self->_isCentralManagerOn != v5)
  {
    v6 = state;
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager centralManagerDidUpdateState:];
    }

    self->_isCentralManagerOn = v5;
    if (v6 == 5)
    {

      [(HMDeviceAHPSConnectionManager *)self _discoverAccessory];
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v8 = identifier;
  v9 = uUIDString;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if ((v8 != 0) == (v9 == 0))
    {

LABEL_15:
      [HMDeviceAHPSConnectionManager centralManager:didConnectPeripheral:];
      goto LABEL_10;
    }

    v11 = [(NSString *)v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v12 = peripheralCopy;
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager != -1 || (v13 = _LogCategory_Initialize(), v12 = peripheralCopy, v13))
    {
      [HMDeviceAHPSConnectionManager centralManager:v12 didConnectPeripheral:?];
      v12 = peripheralCopy;
    }
  }

  [v12 setDelegate:self];
  v14 = MEMORY[0x277CBEA60];
  v15 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v16 = [v14 arrayWithObjects:{v15, 0}];
  [peripheralCopy discoverServices:v16];

LABEL_10:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v9 = identifier;
  v10 = uUIDString;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {

LABEL_15:
      [HMDeviceAHPSConnectionManager centralManager:didDisconnectPeripheral:error:];
      goto LABEL_10;
    }

    v12 = [(NSString *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager centralManager:peripheralCopy didDisconnectPeripheral:? error:?];
  }

  selectedPeripheral = self->_selectedPeripheral;
  self->_selectedPeripheral = 0;

LABEL_10:
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v9 = identifier;
  v10 = uUIDString;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {

LABEL_9:
      [HMDeviceAHPSConnectionManager peripheral:didDiscoverServices:];
      goto LABEL_7;
    }

    v12 = [(NSString *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  services = [peripheralCopy services];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HMDeviceAHPSConnectionManager_peripheral_didDiscoverServices___block_invoke;
  v14[3] = &unk_2796EFF40;
  v15 = peripheralCopy;
  [services enumerateObjectsUsingBlock:v14];

LABEL_7:
}

void __64__HMDeviceAHPSConnectionManager_peripheral_didDiscoverServices___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __64__HMDeviceAHPSConnectionManager_peripheral_didDiscoverServices___block_invoke_cold_1(a1);
    }

    [*(a1 + 32) discoverCharacteristics:0 forService:v6];
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v12 = identifier;
  v13 = uUIDString;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_20:
      [HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:];
      goto LABEL_16;
    }

    v15 = [(NSString *)v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager peripheral:serviceCopy didDiscoverCharacteristicsForService:? error:?];
  }

  services = [peripheralCopy services];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
  v17[3] = &unk_2796EFF40;
  v18 = peripheralCopy;
  [services enumerateObjectsUsingBlock:v17];

  if (self->_isDiagnosticCheckPending)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:];
    }

    if (self->_selectedPeripheral)
    {
      [(HMDeviceAHPSConnectionManager *)self _triggerOnDemandDiagnosticCheckWithCompletionHandler:self->_diagnosticCheckWriteCompletion];
    }

    else
    {
      [HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:];
    }
  }

LABEL_16:
}

void __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2;
  v4[3] = &unk_2796EFF68;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [v26 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120005-95c5-4d6f-9098-0f0b41457e0a"];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else if ((v5 != 0) == (v6 == 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 isEqual:v6];
  }

  v9 = [v26 UUID];
  v10 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  v11 = v9;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 1;
  }

  else if ((v11 != 0) == (v12 == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = [v11 isEqual:v12];
  }

  v15 = v8 | v14;
  v16 = [v26 UUID];
  v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120002-95c5-4d6f-9098-0f0b41457e0a"];
  v18 = v16;
  v19 = v17;
  v20 = v19;
  if (v18 == v19)
  {
    v21 = 1;
  }

  else if ((v18 != 0) == (v19 == 0))
  {
    v21 = 0;
  }

  else
  {
    v21 = [v18 isEqual:v19];
  }

  if ((v15 | v21))
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      v24 = *(a1 + 32);
      v25 = v26;
      LogPrintF();
    }

    v23 = *(a1 + 32);
    v22 = (a1 + 32);
    [v23 setNotifyValue:1 forCharacteristic:{v26, v24, v25}];
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2_cold_1(v22);
    }

    [*v22 readValueForCharacteristic:v26];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v12 = identifier;
  v13 = uUIDString;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_47:
      [HMDeviceAHPSConnectionManager peripheral:didUpdateValueForCharacteristic:error:];
      goto LABEL_42;
    }

    v15 = [(NSString *)v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  uUID = [characteristicCopy UUID];
  v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120005-95c5-4d6f-9098-0f0b41457e0a"];
  value = uUID;
  v19 = v17;
  v20 = v19;
  if (value == v19)
  {

    goto LABEL_11;
  }

  if ((value != 0) == (v19 == 0))
  {

LABEL_17:
    goto LABEL_18;
  }

  v21 = [value isEqual:v19];

  if (v21)
  {
LABEL_11:
    value = [characteristicCopy value];
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager peripheral:didUpdateValueForCharacteristic:error:];
    }

    settingsUpdateHandler = self->_settingsUpdateHandler;
    if (settingsUpdateHandler)
    {
      settingsUpdateHandler[2](settingsUpdateHandler, self->_identifier, value);
    }

    goto LABEL_17;
  }

LABEL_18:
  uUID2 = [characteristicCopy UUID];
  v24 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  value2 = uUID2;
  v26 = v24;
  v27 = v26;
  if (value2 == v26)
  {

    goto LABEL_23;
  }

  if ((value2 != 0) == (v26 == 0))
  {

LABEL_29:
    goto LABEL_30;
  }

  v28 = [value2 isEqual:v26];

  if (v28)
  {
LABEL_23:
    value2 = [characteristicCopy value];
    v37 = 1;
    [value2 getBytes:&v37 length:1];
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager peripheral:didUpdateValueForCharacteristic:error:];
    }

    hearingProtectionUpdateHandler = self->_hearingProtectionUpdateHandler;
    if (hearingProtectionUpdateHandler)
    {
      hearingProtectionUpdateHandler[2](hearingProtectionUpdateHandler, self->_identifier, v37);
    }

    goto LABEL_29;
  }

LABEL_30:
  uUID3 = [characteristicCopy UUID];
  v31 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120002-95c5-4d6f-9098-0f0b41457e0a"];
  value3 = uUID3;
  v33 = v31;
  v34 = v33;
  if (value3 == v33)
  {

LABEL_35:
    value3 = [characteristicCopy value];
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager peripheral:didUpdateValueForCharacteristic:error:];
    }

    diagnosticStatusUpdateHandler = self->_diagnosticStatusUpdateHandler;
    if (diagnosticStatusUpdateHandler)
    {
      diagnosticStatusUpdateHandler[2](diagnosticStatusUpdateHandler, self->_identifier, value3);
    }

    goto LABEL_41;
  }

  if ((value3 != 0) != (v33 == 0))
  {
    v35 = [value3 isEqual:v33];

    if ((v35 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

LABEL_41:
LABEL_42:
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      v18 = characteristicCopy;
      v19 = errorCopy;
      v17 = peripheralCopy;
LABEL_8:
      LogPrintF();
    }
  }

  else if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
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
    v12 = MEMORY[0x253095540](self->_diagnosticCheckWriteCompletion);
    diagnosticCheckWriteCompletion = self->_diagnosticCheckWriteCompletion;
    self->_diagnosticCheckWriteCompletion = 0;

    if (v12)
    {
      (*(v12 + 2))(v12, errorCopy);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)writeHMSettingsConfigsData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDeviceAHPSConnectionManager_writeHMSettingsConfigsData_completion___block_invoke;
  block[3] = &unk_2796EFF90;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_writeHMSettingsConfigsData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selectedPeripheral = self->_selectedPeripheral;
  if (selectedPeripheral)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    services = [(CBPeripheral *)selectedPeripheral services];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke;
    v16[3] = &unk_2796EFFE0;
    v16[4] = self;
    v17 = dataCopy;
    v18 = &v19;
    [services enumerateObjectsUsingBlock:v16];

    if (v20[3])
    {
      v10 = 0;
      if (!completionCopy)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (gLogCategory_HMDeviceAHPSConnectionManager <= 90 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
      {
        v14 = self->_selectedPeripheral;
        LogPrintF();
      }

      v12 = *MEMORY[0x277CCA590];
      identifier = self->_identifier;
      v10 = NSErrorF();
      if (!completionCopy)
      {
        goto LABEL_16;
      }
    }

    completionCopy[2](completionCopy, v10);
LABEL_16:

    _Block_object_dispose(&v19, 8);
    goto LABEL_17;
  }

  if (gLogCategory_HMDeviceAHPSConnectionManager <= 90 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager _writeHMSettingsConfigsData:? completion:?];
  }

  v11 = *MEMORY[0x277CCA590];
  v13 = self->_identifier;
  v10 = NSErrorF();
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }

LABEL_17:
}

void __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 characteristics];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke_2;
  v7[3] = &unk_2796EFFB8;
  v4 = a1[5];
  v7[4] = a1[4];
  v5 = v4;
  v6 = a1[6];
  v8 = v5;
  v9 = v6;
  [v3 enumerateObjectsUsingBlock:v7];
}

void __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
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
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke_2_cold_1(a1);
    }

    [*(a1[4] + 56) writeValue:a1[5] forCharacteristic:v12 type:1];
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 1;
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

- (void)triggerOnDemandDiagnosticCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HMDeviceAHPSConnectionManager_triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796F0008;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_triggerOnDemandDiagnosticCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = MEMORY[0x253095540](handlerCopy);
  diagnosticCheckWriteCompletion = self->_diagnosticCheckWriteCompletion;
  self->_diagnosticCheckWriteCompletion = v5;

  selectedPeripheral = self->_selectedPeripheral;
  if (selectedPeripheral)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    services = [(CBPeripheral *)selectedPeripheral services];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke;
    v15[3] = &unk_2796F0058;
    v15[4] = self;
    v15[5] = &v16;
    [services enumerateObjectsUsingBlock:v15];

    if ((v17[3] & 1) == 0)
    {
      if (gLogCategory_HMDeviceAHPSConnectionManager <= 90 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
      {
        v13 = self->_selectedPeripheral;
        LogPrintF();
      }

      v9 = *MEMORY[0x277CCA590];
      identifier = self->_identifier;
      v10 = NSErrorF();
      v11 = self->_diagnosticCheckWriteCompletion;
      if (v11)
      {
        v11[2](v11, v10);
        v12 = self->_diagnosticCheckWriteCompletion;
      }

      else
      {
        v12 = 0;
      }

      self->_diagnosticCheckWriteCompletion = 0;
    }

    self->_isDiagnosticCheckPending = 0;
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    self->_isDiagnosticCheckPending = 1;
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 90 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager _triggerOnDemandDiagnosticCheckWithCompletionHandler:];
    }
  }
}

void __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_2796F0030;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke_2_cold_1(a1);
    }

    v12 = *(*(a1 + 32) + 56);
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:"1" length:1];
    [v12 writeValue:v13 forCharacteristic:v14 type:0];

    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
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

- (void)centralManager:connectionEventDidOccur:forPeripheral:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)centralManager:didConnectPeripheral:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)centralManager:(void *)a1 didConnectPeripheral:.cold.2(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (void)centralManager:didDisconnectPeripheral:error:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)centralManager:(void *)a1 didDisconnectPeripheral:error:.cold.2(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
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
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

@end