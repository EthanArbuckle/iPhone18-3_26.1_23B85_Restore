@interface CUBLEAdvertiser
- (CUBLEAdvertiser)init;
- (id)_advertiseParameters;
- (id)_advertiseParametersSummary:(id)a3;
- (void)_advertiseParametersAddLGWake:(id)a3;
- (void)_advertiseParametersAddOSR;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)_invalidate;
- (void)_invalidated;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)setAdvertiseFlags:(unsigned int)a3;
- (void)setAppleManufacturerData:(id)a3;
- (void)setLabel:(id)a3;
- (void)setLgBTAddress:(id)a3;
- (void)setLgDeviceID:(id)a3;
@end

@implementation CUBLEAdvertiser

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  v14 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!v6)
  {
    if (var0 > 30)
    {
      goto LABEL_12;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBLEAdvertiser peripheralManagerDidStartAdvertising:error:]", 0x1Eu, "Advertiser started\n", v7, v8, v9, v10, v13);
    goto LABEL_12;
  }

  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x5Au))
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBLEAdvertiser peripheralManagerDidStartAdvertising:error:]", 0x5Au, "### Advertiser start failed: %{error}\n", v7, v8, v9, v10, v6);
  }

LABEL_9:
  if (([v14 isAdvertising] & 1) == 0)
  {
    self->_startAdvertisingCalled = 0;
  }

  [(CURetrier *)self->_retrier failed];
LABEL_12:
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = [v5 state];

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
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

    LogPrintF(ucat, "[CUBLEAdvertiser peripheralManagerDidUpdateState:]", 0x1Eu, "Bluetooth advertiser state changed: %s\n", v7, v8, v9, v10, v12);
  }

LABEL_9:
  if (v6 == 1 || v6 == 4)
  {
    self->_startAdvertisingCalled = 0;
  }

  else if (v6 == 5)
  {

    [(CUBLEAdvertiser *)self _ensureStarted];
  }
}

- (id)_advertiseParametersSummary:(id)a3
{
  v3 = a3;
  CBAdvertisementDataAppleMfgData = getCBAdvertisementDataAppleMfgData();
  TypeID = CFDataGetTypeID();
  v6 = CFDictionaryGetTypedValue(v3, CBAdvertisementDataAppleMfgData, TypeID, 0);
  v7 = v6;
  if (v6)
  {
    v61 = 0;
    v8 = [v6 bytes];
    [v7 length];
    NSAppendPrintF(&v61, "AMD <%H>", v9, v10, v11, v12, v13, v14, v8);
    v15 = v61;
  }

  else
  {
    v15 = 0;
  }

  v16 = CFDataGetTypeID();
  v17 = CFDictionaryGetTypedValue(v3, @"kCBAdvDataManufacturerDataInternal", v16, 0);
  v18 = v17;
  if (v17)
  {
    v60 = v15;
    v19 = [v17 bytes];
    [v18 length];
    NSAppendPrintF(&v60, "Mfr <%H>", v20, v21, v22, v23, v24, v25, v19);
    v26 = v60;

    v15 = v26;
  }

  v27 = CFDataGetTypeID();
  v28 = CFDictionaryGetTypedValue(v3, @"kCBAdvDataNonAppleMfgData", v27, 0);
  v29 = v28;
  if (v28)
  {
    v59 = v15;
    v30 = [v28 bytes];
    [v29 length];
    NSAppendPrintF(&v59, "Mfr <%H>", v31, v32, v33, v34, v35, v36, v30);
    v37 = v59;

    v15 = v37;
  }

  CBAdvertisementDataIsConnectable = getCBAdvertisementDataIsConnectable();
  if (CFDictionaryGetInt64(v3, CBAdvertisementDataIsConnectable, 0))
  {
    v58 = v15;
    NSAppendPrintF(&v58, ", Cnx", v39, v40, v41, v42, v43, v44, v56);
    v45 = v58;

    v15 = v45;
  }

  if (CFDictionaryGetInt64(v3, @"kCBAdvDataIsExtended", 0))
  {
    v57 = v15;
    NSAppendPrintF(&v57, ", Extended", v46, v47, v48, v49, v50, v51, v56);
    v52 = v57;

    v15 = v52;
  }

  if (v15)
  {
    v53 = v15;
  }

  else
  {
    v53 = @"?";
  }

  v54 = v53;

  return v53;
}

- (void)_advertiseParametersAddOSR
{
  v6 = 5952;
  v7 = 1;
  if (GestaltGetDeviceClass_sOnce != -1)
  {
    dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
  }

  v3 = GestaltGetDeviceClass_deviceClass;
  if (GestaltGetDeviceClass_deviceClass > 3)
  {
    if (GestaltGetDeviceClass_deviceClass > 6)
    {
      if (GestaltGetDeviceClass_deviceClass == 100)
      {
        v3 = 5;
        goto LABEL_18;
      }

      if (GestaltGetDeviceClass_deviceClass == 7)
      {
        v3 = 4;
        goto LABEL_18;
      }
    }

    else
    {
      if (GestaltGetDeviceClass_deviceClass == 4)
      {
        v3 = 6;
        goto LABEL_18;
      }

      if (GestaltGetDeviceClass_deviceClass == 6)
      {
        v3 = 7;
        goto LABEL_18;
      }
    }

LABEL_15:
    v3 = 0;
    goto LABEL_18;
  }

  if (GestaltGetDeviceClass_deviceClass != 1 && GestaltGetDeviceClass_deviceClass != 2 && GestaltGetDeviceClass_deviceClass != 3)
  {
    goto LABEL_15;
  }

LABEL_18:
  v8 = v3;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v6 length:4];
  appleManufacturerData = self->_appleManufacturerData;
  self->_appleManufacturerData = v4;
}

- (void)_advertiseParametersAddLGWake:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v7 = 196;
  [v5 appendBytes:&v7 length:2];
  v6 = self->_lgDeviceID;
  if ([(NSData *)v6 length]== 6)
  {
    [v5 appendData:v6];
    v7 = 7;
    [v5 appendBytes:&v7 length:2];
    [v4 setObject:v5 forKeyedSubscript:@"kCBAdvDataManufacturerDataInternal"];
    [v4 setObject:v5 forKeyedSubscript:@"kCBAdvDataNonAppleMfgData"];
  }
}

- (id)_advertiseParameters
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = self;
  objc_sync_enter(v4);
  if ([(NSData *)v4->_lgDeviceID length]== 6)
  {
    [(CUBLEAdvertiser *)v4 _advertiseParametersAddLGWake:v3];
  }

  if ((v4->_advertiseFlags & 8) != 0)
  {
    [(CUBLEAdvertiser *)v4 _advertiseParametersAddOSR];
  }

  v5 = v4->_appleManufacturerData;
  v6 = [(NSData *)v5 length];
  if (v6 - 1 <= 0x19)
  {
    MEMORY[0x1EEE9AC00]();
    v7 = v15 - ((v6 + 19) & 0xFFFFFFFFFFFFFFF0);
    *v7 = v6 + 3;
    *(v7 + 1) = 19711;
    v7[3] = 0;
    memcpy(v7 + 4, [(NSData *)v5 bytes], v6);
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 length:v6 + 4];
    v9 = getCBAdvertisementDataAppleMfgData();
    [v3 setObject:v8 forKeyedSubscript:v9];
  }

  advertiseFlags = v4->_advertiseFlags;
  v11 = getCBAdvertisementDataIsConnectable();
  if ((advertiseFlags & 2) != 0)
  {
    v12 = MEMORY[0x1E695E118];
  }

  else
  {
    v12 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v12 forKeyedSubscript:v11];

  if ((v4->_advertiseFlags & 4) != 0)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBAdvDataIsExtended"];
  }

  v13 = getCBManagerIsPrivilegedDaemonKey();
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v13];

  objc_sync_exit(v4);

  return v3;
}

- (void)_ensureStopped
{
  retrier = self->_retrier;
  if (retrier)
  {
    [(CURetrier *)retrier invalidateDirect];
    v8 = self->_retrier;
    self->_retrier = 0;
  }

  self->_changesPending = 0;
  if (self->_startAdvertisingCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBLEAdvertiser _ensureStopped]", 0x1Eu, "Advertising stop\n", v2, v3, v4, v5, v12);
    }

LABEL_8:
    self->_startAdvertisingCalled = 0;
    [(CBPeripheralManager *)self->_peripheralManager stopAdvertising];
  }

  peripheralManager = self->_peripheralManager;
  if (peripheralManager)
  {
    [(CBPeripheralManager *)peripheralManager setDelegate:0];
    v11 = self->_peripheralManager;
    self->_peripheralManager = 0;
  }
}

- (void)_ensureStarted
{
  peripheralManager = self->_peripheralManager;
  if (peripheralManager)
  {
    v4 = [(CBPeripheralManager *)peripheralManager state];
    if (v4 != 5)
    {
      v9 = v4;
      ucat = self->_ucat;
      if (ucat->var0 > 30)
      {
        return;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          return;
        }

        ucat = self->_ucat;
      }

      if (v9 > 0xA)
      {
        v11 = "?";
      }

      else
      {
        v11 = off_1E73A2FA8[v9];
      }

      LogPrintF(ucat, "[CUBLEAdvertiser _ensureStarted]", 0x1Eu, "Deferring until Bluetooth powered: %s\n", v5, v6, v7, v8, v11);
      return;
    }

LABEL_9:
    if (!self->_retrier)
    {
      v19 = objc_alloc_init(CURetrier);
      retrier = self->_retrier;
      self->_retrier = v19;

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __33__CUBLEAdvertiser__ensureStarted__block_invoke;
      v48[3] = &unk_1E73A4F68;
      v48[4] = self;
      [(CURetrier *)self->_retrier setActionHandler:v48];
      [(CURetrier *)self->_retrier setDispatchQueue:self->_dispatchQueue];
      [(CURetrier *)self->_retrier setStartTime:CFAbsoluteTimeGetCurrent()];
    }

    if (self->_startAdvertisingCalled)
    {
      if (!self->_changesPending)
      {
        return;
      }

      v21 = [(CUBLEAdvertiser *)self _advertiseParameters];
      advertiseParametersCurrent = self->_advertiseParametersCurrent;
      v23 = v21;
      v24 = advertiseParametersCurrent;
      v25 = v24;
      if (v23 == v24)
      {

        self->_changesPending = 0;
      }

      else
      {
        if ((v23 != 0) == (v24 == 0))
        {

          self->_changesPending = 0;
          goto LABEL_39;
        }

        v26 = [(NSDictionary *)v23 isEqual:v24];

        self->_changesPending = 0;
        if ((v26 & 1) == 0)
        {
LABEL_39:
          v41 = self->_ucat;
          if (v41->var0 <= 30)
          {
            if (v41->var0 == -1)
            {
              if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
              {
                goto LABEL_47;
              }

              v41 = self->_ucat;
            }

            v42 = [(CUBLEAdvertiser *)self _advertiseParametersSummary:v23];
            LogPrintF(v41, "[CUBLEAdvertiser _ensureStarted]", 0x1Eu, "Advertiser update: %@\n", v43, v44, v45, v46, v42);
          }

LABEL_47:
          objc_storeStrong(&self->_advertiseParametersCurrent, v21);
          [(CBPeripheralManager *)self->_peripheralManager stopAdvertising];
          goto LABEL_35;
        }
      }

      v39 = self->_ucat;
      if (v39->var0 <= 10)
      {
        if (v39->var0 == -1)
        {
          if (!_LogCategory_Initialize(v39, 0xAu))
          {
            goto LABEL_36;
          }

          v39 = self->_ucat;
        }

        LogPrintF(v39, "[CUBLEAdvertiser _ensureStarted]", 0xAu, "Advertiser no changes\n", v27, v28, v29, v30, v47);
      }

LABEL_36:

      return;
    }

    v31 = [(CUBLEAdvertiser *)self _advertiseParameters];
    v32 = self->_ucat;
    if (v32->var0 <= 30)
    {
      if (v32->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
        {
          goto LABEL_34;
        }

        v32 = self->_ucat;
      }

      v33 = [(CUBLEAdvertiser *)self _advertiseParametersSummary:v31];
      LogPrintF(v32, "[CUBLEAdvertiser _ensureStarted]", 0x1Eu, "Advertiser start: %@\n", v34, v35, v36, v37, v33);
    }

LABEL_34:
    v40 = self->_advertiseParametersCurrent;
    self->_advertiseParametersCurrent = v31;
    v23 = v31;

    self->_changesPending = 0;
    self->_startAdvertisingCalled = 1;
LABEL_35:
    [(CBPeripheralManager *)self->_peripheralManager startAdvertising:v23];
    goto LABEL_36;
  }

  v12 = [objc_alloc(getCBPeripheralManagerClass[0]()) initWithDelegate:self queue:self->_dispatchQueue];
  v13 = self->_peripheralManager;
  self->_peripheralManager = v12;

  v18 = self->_peripheralManager;
  if (v18)
  {
    if ([(CBPeripheralManager *)v18 state]!= 5)
    {
      return;
    }

    goto LABEL_9;
  }

  v38 = self->_ucat;
  if (v38->var0 > 90)
  {
    return;
  }

  if (v38->var0 == -1)
  {
    if (!_LogCategory_Initialize(v38, 0x5Au))
    {
      return;
    }

    v38 = self->_ucat;
  }

  LogPrintF(v38, "[CUBLEAdvertiser _ensureStarted]", 0x5Au, "### Create CBPeripheralManager failed\n", v14, v15, v16, v17, v50);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
      v4 = self->_invalidationHandler;
    }

    else
    {
      v4 = 0;
    }

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

      LogPrintF(ucat, "[CUBLEAdvertiser _invalidated]", 0x1Eu, "Invalidated\n", v5, v6, v7, v8, v11);
    }
  }
}

- (void)_invalidate
{
  [(CUBLEAdvertiser *)self _ensureStopped];

  [(CUBLEAdvertiser *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CUBLEAdvertiser_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __29__CUBLEAdvertiser_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 25))
  {
    return result;
  }

  v11 = result;
  *(v10 + 25) = 1;
  v12 = *(result + 32);
  v13 = v12[7];
  if (*v13 <= 30)
  {
    if (*v13 == -1)
    {
      v14 = _LogCategory_Initialize(v13, 0x1Eu);
      v12 = *(v11 + 32);
      if (!v14)
      {
        goto LABEL_6;
      }

      v13 = v12[7];
    }

    LogPrintF(v13, "[CUBLEAdvertiser invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v8);
    v12 = *(v11 + 32);
  }

LABEL_6:

  return [v12 _invalidate];
}

- (void)activate
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_activateCalled = 1;
  dispatchQueue = v2->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CUBLEAdvertiser_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = v2;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(v2);
}

uint64_t __27__CUBLEAdvertiser_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9[7];
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUBLEAdvertiser activate]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v13);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = v9[7];
      goto LABEL_3;
    }
  }

LABEL_5:

  return [v9 _ensureStarted];
}

- (void)setLgDeviceID:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = self;
  objc_sync_enter(v6);
  lgDeviceID = v6->_lgDeviceID;
  v8 = v5;
  v9 = lgDeviceID;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if ((v8 != 0) != (v9 == 0))
    {
      v11 = [(NSData *)v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_storeStrong(&v6->_lgDeviceID, v5);
    if (v6->_activateCalled)
    {
      dispatchQueue = v6->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33__CUBLEAdvertiser_setLgDeviceID___block_invoke;
      block[3] = &unk_1E73A4F68;
      block[4] = v6;
      dispatch_async(dispatchQueue, block);
    }
  }

LABEL_9:
  objc_sync_exit(v6);
}

- (void)setLgBTAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = self;
  objc_sync_enter(v6);
  lgBTAddress = v6->_lgBTAddress;
  v8 = v5;
  v9 = lgBTAddress;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if ((v8 != 0) != (v9 == 0))
    {
      v11 = [(NSData *)v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_storeStrong(&v6->_lgBTAddress, v5);
    if (v6->_activateCalled)
    {
      dispatchQueue = v6->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__CUBLEAdvertiser_setLgBTAddress___block_invoke;
      block[3] = &unk_1E73A4F68;
      block[4] = v6;
      dispatch_async(dispatchQueue, block);
    }
  }

LABEL_9:
  objc_sync_exit(v6);
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE9148;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)setAppleManufacturerData:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = self;
  objc_sync_enter(v6);
  appleManufacturerData = v6->_appleManufacturerData;
  v8 = v5;
  v9 = appleManufacturerData;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if ((v8 != 0) != (v9 == 0))
    {
      v11 = [(NSData *)v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_storeStrong(&v6->_appleManufacturerData, v5);
    if (v6->_activateCalled)
    {
      dispatchQueue = v6->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__CUBLEAdvertiser_setAppleManufacturerData___block_invoke;
      block[3] = &unk_1E73A4F68;
      block[4] = v6;
      dispatch_async(dispatchQueue, block);
    }
  }

LABEL_9:
  objc_sync_exit(v6);
}

- (void)setAdvertiseFlags:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_advertiseFlags != a3)
  {
    v4->_advertiseFlags = a3;
    if (v4->_activateCalled)
    {
      dispatchQueue = v4->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__CUBLEAdvertiser_setAdvertiseFlags___block_invoke;
      block[3] = &unk_1E73A4F68;
      block[4] = v4;
      dispatch_async(dispatchQueue, block);
    }
  }

  objc_sync_exit(v4);
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
  v4.super_class = CUBLEAdvertiser;
  [(CUBLEAdvertiser *)&v4 dealloc];
}

- (CUBLEAdvertiser)init
{
  v6.receiver = self;
  v6.super_class = CUBLEAdvertiser;
  v2 = [(CUBLEAdvertiser *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUBLEAdvertiser;
    v4 = v3;
  }

  return v3;
}

@end