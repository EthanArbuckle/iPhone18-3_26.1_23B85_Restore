@interface CUBLEScanner
- (BOOL)_shouldScan;
- (CUBLEScanner)init;
- (id)_scanParameters;
- (id)_scanParametersSummary:(id)a3;
- (int)rssiThreshold;
- (void)_invalidate;
- (void)_invalidated;
- (void)_stopScanIfNeededWithReason:(const char *)a3;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)a3;
- (void)_updateScanRules:(id *)a3 payloadType:(unsigned __int8)a4 rssiThreshold:(int)a5;
- (void)activate;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setChangeFlags:(unsigned int)a3;
- (void)setLabel:(id)a3;
- (void)setRssiThreshold:(int)a3;
- (void)setScanFlags:(unsigned int)a3;
- (void)setScanRate:(int)a3;
@end

@implementation CUBLEScanner

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 identifier];
  v37 = [v14 UUIDString];

  v15 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v37];
  v16 = objc_alloc_init(CUBLEDevice);
  [(CUBLEDevice *)v16 setIdentifier:v37];
  v17 = [v10 intValue];

  v18 = [(CUBLEDevice *)v16 updateWithAdvertisementData:v11 rssi:v17 oldDevice:v15];
  v19 = v18 | 0x18;
  if (v15)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18 | 0x38;
  }

  [(CUBLEDevice *)v16 setChangeFlags:v20];
  v21 = [v13 sharedPairingAgent];

  v22 = [v21 isPeerPaired:v12];
  [(CUBLEDevice *)v16 setDeviceFlags:v22];
  scanFlags = self->_scanFlags;
  if ((scanFlags & 0xFE) != 0 && ([(CUBLEDevice *)v16 scanFlags]& scanFlags & 0xFE) == 0)
  {
    v29 = 0;
    v28 = 8;
  }

  else
  {
    v28 = 9;
    v29 = 1;
  }

  ucat = self->_ucat;
  if (v28 < ucat->var0)
  {
    goto LABEL_12;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize(ucat, v28))
    {
      goto LABEL_12;
    }

    ucat = self->_ucat;
  }

  LogPrintF(ucat, "[CUBLEScanner centralManager:didDiscoverPeripheral:advertisementData:RSSI:]", v28, "Found: %@\n", v23, v24, v25, v26, v16);
LABEL_12:
  if (!v29)
  {
    goto LABEL_23;
  }

  devices = self->_devices;
  if (!devices)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = self->_devices;
    self->_devices = v32;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:v16 forKeyedSubscript:v37];
  if (!v15)
  {
    goto LABEL_20;
  }

  if ((self->_changeFlags & v19) == 0)
  {
    goto LABEL_23;
  }

  if ((scanFlags & 0x100) != 0)
  {
LABEL_20:
    v36 = _Block_copy(self->_deviceFoundHandler);
    v35 = v36;
    if (v36)
    {
      (*(v36 + 2))(v36, v16);
    }
  }

  else
  {
    v34 = _Block_copy(self->_deviceChangedHandler);
    v35 = v34;
    if (v34)
    {
      (*(v34 + 2))(v34, v16, v19);
    }
  }

LABEL_23:
}

- (void)centralManagerDidUpdateState:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = [v5 state];

  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_9;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize(ucat, 0x1Eu))
    {
      goto LABEL_9;
    }

    ucat = self->_ucat;
  }

  if (v6 > 0xA)
  {
    v12 = "?";
  }

  else
  {
    v12 = off_1E73A3018[v6];
  }

  LogPrintF(ucat, "[CUBLEScanner centralManagerDidUpdateState:]", 0x1Eu, "Bluetooth scanner state changed: %s\n", v7, v8, v9, v10, v12);
LABEL_9:
  if ((v6 - 1) > 9)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_191FF9B50[v6 - 1];
  }

  self->_bluetoothState = v13;
  v14 = _Block_copy(self->_bluetoothStateChangedHandler);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14);
  }

  if (v6 > 4)
  {
    if (v6 == 10 || v6 == 5)
    {

      [(CUBLEScanner *)self _update];
    }
  }

  else if (v6 == 1 || v6 == 4)
  {
    self->_scannerStartCalled = 0;
  }
}

- (void)_updateScanRules:(id *)a3 payloadType:(unsigned __int8)a4 rssiThreshold:(int)a5
{
  v6 = a4;
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v6];
  v10 = getCBCentralManagerScanOptionMatchingRuleTypeKey();
  [v8 setObject:v9 forKeyedSubscript:v10];

  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 4294967216;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v13 = getCBCentralManagerScanOptionMatchingRuleRSSIKey();
  [v8 setObject:v12 forKeyedSubscript:v13];

  v22 = 0;
  v23[0] = 0;
  *(v23 + 6) = 0;
  v20 = 0;
  v21[0] = 0;
  *(v21 + 6) = 0;
  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v22 length:22];
  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v20 length:22];
  v16 = getCBCentralManagerScanOptionMatchingRulePayloadKey();
  [v8 setObject:v14 forKeyedSubscript:v16];

  v17 = getCBCentralManagerScanOptionMatchingRuleMaskKey();
  [v8 setObject:v15 forKeyedSubscript:v17];

  v18 = *a3;
  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = *a3;
    *a3 = v18;
  }

  [v18 addObject:v8];
}

- (void)_stopScanIfNeededWithReason:(const char *)a3
{
  if (self->_scannerStartCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBLEScanner _stopScanIfNeededWithReason:]", 0x1Eu, "Scanner stop (%s)\n", v3, v4, v5, v6, a3);
    }

LABEL_6:
    self->_scannerStartCalled = 0;
    [(CBCentralManager *)self->_centralManager stopScan];
  }

  if (!self->_invalidateCalled)
  {
    v10 = _Block_copy(self->_deviceLostHandler);
    if (v10)
    {
      devices = self->_devices;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__CUBLEScanner__stopScanIfNeededWithReason___block_invoke;
      v12[3] = &unk_1E73A2C00;
      v12[4] = v10;
      [(NSMutableDictionary *)devices enumerateKeysAndObjectsUsingBlock:v12];
    }
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
}

- (BOOL)_shouldScan
{
  if ((self->_scanFlags & 1) != 0 || (v2 = [(CUSystemMonitor *)self->_systemMonitor screenOn]))
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

- (id)_scanParametersSummary:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CBCentralManagerScanOptionScanInterval = getCBCentralManagerScanOptionScanInterval();
  CFDictionaryGetInt64Ranged(v3, CBCentralManagerScanOptionScanInterval, 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  CBCentralManagerScanOptionScanWindow = getCBCentralManagerScanOptionScanWindow();
  Int64Ranged = CFDictionaryGetInt64Ranged(v3, CBCentralManagerScanOptionScanWindow, 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  v75 = 0;
  NSAppendPrintF(&v75, "%d/%d ms (%d%%)", v7, v8, v9, v10, v11, v12, Int64Ranged);
  v13 = v75;
  CBCentralManagerScanOptionMatchingRuleKey = getCBCentralManagerScanOptionMatchingRuleKey();
  TypeID = CFArrayGetTypeID();
  v16 = CFDictionaryGetTypedValue(v3, CBCentralManagerScanOptionMatchingRuleKey, TypeID, 0);
  if ([v16 count])
  {
    v74 = v13;
    NSAppendPrintF(&v74, ", Filters[", v17, v18, v19, v20, v21, v22, v64);
    v23 = v74;

    v13 = v23;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v16;
  v24 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = "";
    v27 = *v71;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v71 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v70 + 1) + 8 * i);
        CBCentralManagerScanOptionMatchingRuleTypeKey = getCBCentralManagerScanOptionMatchingRuleTypeKey();
        CFDictionaryGetInt64Ranged(v29, CBCentralManagerScanOptionMatchingRuleTypeKey, 0, 255, 0);
        v69 = v13;
        NSAppendPrintF(&v69, "%s%s", v31, v32, v33, v34, v35, v36, v26);
        v37 = v69;

        CBCentralManagerScanOptionMatchingRuleRSSIKey = getCBCentralManagerScanOptionMatchingRuleRSSIKey();
        v39 = CFDictionaryGetInt64Ranged(v29, CBCentralManagerScanOptionMatchingRuleRSSIKey, 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
        if (v39)
        {
          v68 = v37;
          NSAppendPrintF(&v68, ", RSSI %d", v40, v41, v42, v43, v44, v45, v39);
          v13 = v68;
        }

        else
        {
          v13 = v37;
        }

        v26 = "; ";
      }

      v25 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
      v26 = "; ";
    }

    while (v25);
  }

  if ([obj count])
  {
    v67 = v13;
    NSAppendPrintF(&v67, "]", v46, v47, v48, v49, v50, v51, v64);
    v52 = v67;

    v13 = v52;
  }

  CBCentralManagerScanOptionAllowDuplicatesKey = getCBCentralManagerScanOptionAllowDuplicatesKey();
  if (CFDictionaryGetInt64(v3, CBCentralManagerScanOptionAllowDuplicatesKey, 0))
  {
    v66 = v13;
    NSAppendPrintF(&v66, ", Dups", v54, v55, v56, v57, v58, v59, v64);
    v60 = v66;

    v13 = v60;
  }

  if (v13)
  {
    v61 = v13;
  }

  else
  {
    v61 = @"?";
  }

  v62 = v61;

  return v61;
}

- (id)_scanParameters
{
  v2 = self;
  objc_sync_enter(v2);
  scanFlags = v2->_scanFlags;
  v4 = v2->_changeFlags & 0x18;
  rssiThreshold = v2->_rssiThreshold;
  scanRate = v2->_scanRate;
  if (scanRate == 60)
  {
    v7 = 30;
  }

  else
  {
    v7 = 966;
  }

  if (scanRate == 50)
  {
    v8 = 40;
  }

  else
  {
    v8 = v7;
  }

  if (scanRate == 40)
  {
    v9 = 60;
  }

  else
  {
    v9 = 966;
  }

  if (scanRate == 30)
  {
    v9 = 300;
  }

  if (scanRate <= 49)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  objc_sync_exit(v2);

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ((scanFlags & 0x40) != 0)
  {
    v12 = getCBCentralManagerScanOptionActive();
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v12];
  }

  if (v4)
  {
    v13 = getCBCentralManagerScanOptionAllowDuplicatesKey();
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v13];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v15 = getCBCentralManagerScanOptionScanInterval();
  [v11 setObject:v14 forKeyedSubscript:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:30];
  v17 = getCBCentralManagerScanOptionScanWindow();
  [v11 setObject:v16 forKeyedSubscript:v17];

  v18 = getCBManagerIsPrivilegedDaemonKey_1343();
  [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v18];

  v23 = 0;
  if ((scanFlags & 2) != 0)
  {
    [(CUBLEScanner *)v2 _updateScanRules:&v23 payloadType:15 rssiThreshold:rssiThreshold];
  }

  if ((scanFlags & 4) != 0)
  {
    [(CUBLEScanner *)v2 _updateScanRules:&v23 payloadType:16 rssiThreshold:rssiThreshold];
  }

  if ((scanFlags & 0x90) != 0)
  {
    [(CUBLEScanner *)v2 _updateScanRules:&v23 payloadType:7 rssiThreshold:rssiThreshold];
  }

  if ((scanFlags & 0x20) != 0)
  {
    [(CUBLEScanner *)v2 _updateScanRules:&v23 payloadType:18 rssiThreshold:rssiThreshold];
  }

  v19 = v23;
  if (v23)
  {
    v20 = getCBCentralManagerScanOptionMatchingRuleKey();
    [v11 setObject:v19 forKeyedSubscript:v20];

    v21 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v11;
}

- (void)_update
{
  v57[1] = *MEMORY[0x1E69E9840];
  if (self->_invalidateCalled)
  {
    return;
  }

  centralManager = self->_centralManager;
  v4 = centralManager;
  if (!centralManager)
  {
    v5 = objc_alloc(getCBCentralManagerClass_1352[0]());
    dispatchQueue = self->_dispatchQueue;
    v7 = getCBManagerNeedsRestrictedStateOperation_1353();
    v56 = v7;
    v57[0] = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v9 = [v5 initWithDelegate:self queue:dispatchQueue options:v8];
    v10 = self->_centralManager;
    self->_centralManager = v9;

    v4 = self->_centralManager;
    if (!v4)
    {
      ucat = self->_ucat;
      if (ucat->var0 > 90)
      {
        return;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          return;
        }

        ucat = self->_ucat;
      }

      v43 = "### Create CBCentralManager failed\n";
      v44 = 90;
LABEL_35:
      LogPrintF(ucat, "[CUBLEScanner _update]", v44, v43, v11, v12, v13, v14, v53);
      return;
    }
  }

  v15 = [(CBCentralManager *)v4 state];
  if (v15 == 5 || v15 == 10)
  {
    if ((self->_scanFlags & 1) == 0 && !self->_systemMonitor)
    {
      v17 = objc_alloc_init(CUSystemMonitor);
      systemMonitor = self->_systemMonitor;
      self->_systemMonitor = v17;

      [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __23__CUBLEScanner__update__block_invoke;
      v55[3] = &unk_1E73A4F68;
      v55[4] = self;
      [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v55];
      v19 = self->_systemMonitor;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __23__CUBLEScanner__update__block_invoke_2;
      v54[3] = &unk_1E73A4F68;
      v54[4] = self;
      [(CUSystemMonitor *)v19 activateWithCompletion:v54];
    }

    v20 = self;
    objc_sync_enter(v20);
    changesPending = v20->_changesPending;
    v20->_changesPending = 0;
    objc_sync_exit(v20);

    if (![(CUBLEScanner *)v20 _shouldScan])
    {
      [(CUBLEScanner *)v20 _stopScanIfNeededWithReason:"criteria"];
      return;
    }

    if (v20->_scannerStartCalled)
    {
      if (!changesPending)
      {
        return;
      }

      v22 = [(CUBLEScanner *)v20 _scanParameters];
      p_scanParametersCurrent = &v20->_scanParametersCurrent;
      scanParametersCurrent = v20->_scanParametersCurrent;
      v25 = v22;
      v26 = scanParametersCurrent;
      v27 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        if ((v25 != 0) == (v26 == 0))
        {

          goto LABEL_48;
        }

        v28 = [(NSDictionary *)v25 isEqual:v26];

        if ((v28 & 1) == 0)
        {
LABEL_48:
          v47 = v20->_ucat;
          if (v47->var0 <= 30)
          {
            if (v47->var0 == -1)
            {
              if (!_LogCategory_Initialize(v20->_ucat, 0x1Eu))
              {
                goto LABEL_54;
              }

              v47 = v20->_ucat;
            }

            v48 = [(CUBLEScanner *)v20 _scanParametersSummary:v25];
            LogPrintF(v47, "[CUBLEScanner _update]", 0x1Eu, "Scanner update: %@\n", v49, v50, v51, v52, v48);
          }

LABEL_54:
          objc_storeStrong(p_scanParametersCurrent, v22);
          [(CBCentralManager *)self->_centralManager stopScan];
          goto LABEL_42;
        }
      }

      v45 = v20->_ucat;
      if (v45->var0 <= 10)
      {
        if (v45->var0 == -1)
        {
          if (!_LogCategory_Initialize(v45, 0xAu))
          {
            goto LABEL_43;
          }

          v45 = v20->_ucat;
        }

        LogPrintF(v45, "[CUBLEScanner _update]", 0xAu, "Scanner no changes\n", v29, v30, v31, v32, v53);
      }

LABEL_43:

      return;
    }

    v36 = [(CUBLEScanner *)v20 _scanParameters];
    v37 = v20->_ucat;
    if (v37->var0 <= 30)
    {
      if (v37->var0 == -1)
      {
        if (!_LogCategory_Initialize(v20->_ucat, 0x1Eu))
        {
          goto LABEL_41;
        }

        v37 = v20->_ucat;
      }

      v38 = [(CUBLEScanner *)v20 _scanParametersSummary:v36];
      LogPrintF(v37, "[CUBLEScanner _update]", 0x1Eu, "Scanner start: %@\n", v39, v40, v41, v42, v38);
    }

LABEL_41:
    v46 = v20->_scanParametersCurrent;
    v20->_scanParametersCurrent = v36;
    v25 = v36;

    v20->_scannerStartCalled = 1;
LABEL_42:
    [(CBCentralManager *)self->_centralManager scanForPeripheralsWithServices:0 options:v25];
    goto LABEL_43;
  }

  if (centralManager)
  {
    v33 = v15;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_23:
        if (v33 > 0xA)
        {
          v35 = "?";
        }

        else
        {
          v35 = off_1E73A2FA8[v33];
        }

        v53 = v35;
        v43 = "Deferring until Bluetooth powered: %s\n";
        v44 = 30;
        goto LABEL_35;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_23;
      }
    }
  }
}

- (void)_updateIfNeededWithBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ((v4[2](v4) & 1) != 0 && v5->_activateCalled && !v5->_changesPending)
  {
    v5->_changesPending = 1;
    dispatchQueue = v5->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__CUBLEScanner__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E73A4F68;
    block[4] = v5;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v5);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
    self->_bluetoothStateChangedHandler = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;

    v8 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBLEScanner _invalidated]", 0x1Eu, "Invalidated\n", v9, v10, v11, v12, v15);
    }
  }
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v12 = v6;
  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBLEScanner _invalidate]", 0x1Eu, "Invalidate\n", v2, v3, v4, v5, v6);
  }

LABEL_6:
  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  [(CUBLEScanner *)self _stopScanIfNeededWithReason:"invalidate"];
  [(CBCentralManager *)self->_centralManager setDelegate:0];
  centralManager = self->_centralManager;
  self->_centralManager = 0;

  [(CUBLEScanner *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CUBLEScanner_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activate
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_activateCalled = 1;
  dispatchQueue = v2->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__CUBLEScanner_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = v2;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(v2);
}

uint64_t __24__CUBLEScanner_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9[9];
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUBLEScanner activate]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v13);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = v9[9];
      goto LABEL_3;
    }
  }

LABEL_5:

  return [v9 _update];
}

- (void)setScanRate:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__CUBLEScanner_setScanRate___block_invoke;
  v3[3] = &unk_1E73A3100;
  v4 = a3;
  v3[4] = self;
  [(CUBLEScanner *)self _updateIfNeededWithBlock:v3];
}

BOOL __28__CUBLEScanner_setScanRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 92);
  if (v1 != v3)
  {
    *(v2 + 92) = v1;
  }

  return v1 != v3;
}

- (void)setScanFlags:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__CUBLEScanner_setScanFlags___block_invoke;
  v3[3] = &unk_1E73A3100;
  v4 = a3;
  v3[4] = self;
  [(CUBLEScanner *)self _updateIfNeededWithBlock:v3];
}

BOOL __29__CUBLEScanner_setScanFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 != v3)
  {
    *(v2 + 88) = v1;
  }

  return v1 != v3;
}

- (void)setRssiThreshold:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CUBLEScanner_setRssiThreshold___block_invoke;
  v3[3] = &unk_1E73A3100;
  v4 = a3;
  v3[4] = self;
  [(CUBLEScanner *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CUBLEScanner_setRssiThreshold___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 44);
  if (v1 != v3)
  {
    *(v2 + 44) = v1;
  }

  return v1 != v3;
}

- (int)rssiThreshold
{
  v2 = self;
  objc_sync_enter(v2);
  rssiThreshold = v2->_rssiThreshold;
  objc_sync_exit(v2);

  return rssiThreshold;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE9288;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)setChangeFlags:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__CUBLEScanner_setChangeFlags___block_invoke;
  v3[3] = &unk_1E73A3100;
  v4 = a3;
  v3[4] = self;
  [(CUBLEScanner *)self _updateIfNeededWithBlock:v3];
}

BOOL __31__CUBLEScanner_setChangeFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 84);
  if (v1 != v3)
  {
    *(v2 + 84) = v1;
  }

  return v1 != v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUBLEScanner;
  [(CUBLEScanner *)&v4 dealloc];
}

- (CUBLEScanner)init
{
  v6.receiver = self;
  v6.super_class = CUBLEScanner;
  v2 = [(CUBLEScanner *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_scanRate = 30;
    v3->_ucat = &gLogCategory_CUBLEScanner;
    v4 = v3;
  }

  return v3;
}

@end