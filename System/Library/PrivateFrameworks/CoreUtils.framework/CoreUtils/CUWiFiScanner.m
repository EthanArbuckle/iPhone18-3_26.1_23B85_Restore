@interface CUWiFiScanner
- (CUWiFiScanner)init;
- (void)_cleanup;
- (void)_invalidated;
- (void)_scanWiFiFinished:(id)a3 status:(int)a4;
- (void)_scanWiFiProcessResult:(id)a3;
- (void)_scanWiFiStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)setLabel:(id)a3;
- (void)suspend;
@end

@implementation CUWiFiScanner

- (void)_scanWiFiProcessResult:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  CFDictionaryGetHardwareAddress(v4, @"bssid", &v48, 6uLL, &v50);
  if (v50)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x32u))
        {
          goto LABEL_52;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUWiFiScanner _scanWiFiProcessResult:]", 0x32u, "### No BSSID for scan result\n", v5, v6, v7, v8, v44);
    }

LABEL_52:
    v37 = 0;
    v11 = 0;
    v14 = 0;
    v21 = 0;
    v26 = 0;
    goto LABEL_47;
  }

  v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v48 length:6];
  v10 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v9];
  v11 = v10;
  if (!v10)
  {
    v11 = objc_alloc_init(CUWiFiDevice);
  }

  [(CUWiFiDevice *)v11 setBssid:v9];
  [(CUWiFiDevice *)v11 setRawScanResult:v4];
  if ([(CUWiFiDevice *)v11 present]<= 0)
  {
    [(CUWiFiDevice *)v11 setPresent:1];
  }

  LOWORD(v52) = 0;
  v51 = 0;
  *(&v52 + 2) = v48;
  HIWORD(v52) = v49;
  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v51];
  [(CUWiFiDevice *)v11 setIdentifier:v12];

  TypeID = CFDataGetTypeID();
  v14 = CFDictionaryGetTypedValue(v4, @"ie", TypeID, 0);
  v45 = v9;
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = [(CUWiFiDevice *)v11 ieData];
  v16 = v14;
  v17 = v15;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_12;
  }

  if (v17)
  {
    v19 = [v16 isEqual:v17];

    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v20 = 0;
    goto LABEL_15;
  }

LABEL_14:
  [(CUWiFiDevice *)v11 setIeData:v16];
  v20 = 1;
LABEL_15:
  v21 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"platformNetwork"];
  if (v21)
  {
    [(CUWiFiDevice *)v11 setPlatformObject:v21];
  }

  Int64Ranged = CFDictionaryGetInt64Ranged(v4, @"rssi", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v50);
  if ((Int64Ranged & 0x80000000) != 0 && [(CUWiFiDevice *)v11 rssi]!= Int64Ranged)
  {
    [(CUWiFiDevice *)v11 setRssi:Int64Ranged];
    v20 = v20 | 2;
  }

  v23 = CFStringGetTypeID();
  v24 = CFDictionaryGetTypedValue(v4, @"ssid", v23, 0);
  v25 = [(CUWiFiDevice *)v11 ssid];
  v26 = v24;
  v27 = v25;
  v28 = v27;
  if (v26 == v27)
  {

    goto LABEL_27;
  }

  if ((v26 != 0) == (v27 == 0))
  {

    goto LABEL_26;
  }

  v29 = [v26 isEqual:v27];

  if ((v29 & 1) == 0)
  {
LABEL_26:
    [(CUWiFiDevice *)v11 setSsid:v26];
    v20 = v20 | 4;
  }

LABEL_27:
  v46 = 0;
  v47 = [v14 bytes];
  IEGetVendorSpecific(v47, &v47[[v14 length]], 10502144, &v47, &v46, 0);
  if (v46)
  {
    v20 = [(CUWiFiDevice *)v11 _updateWithDeviceIE:v47 end:&v47[v46]]| v20;
  }

  if (v10)
  {
    changeFlags = self->_changeFlags;
    if (changeFlags != -1 && (changeFlags & v20) == 0)
    {
LABEL_46:
      v37 = v45;
      goto LABEL_47;
    }

    v35 = self->_ucat;
    if (v35->var0 <= 30)
    {
      if (v35->var0 != -1)
      {
LABEL_34:
        LogPrintF(v35, "[CUWiFiScanner _scanWiFiProcessResult:]", 0x1Eu, "WiFi scan changed: %@, %#{flags}\n", v30, v31, v32, v33, v11);
        goto LABEL_44;
      }

      if (_LogCategory_Initialize(v35, 0x1Eu))
      {
        v35 = self->_ucat;
        goto LABEL_34;
      }
    }

LABEL_44:
    deviceChangedHandler = self->_deviceChangedHandler;
    if (deviceChangedHandler)
    {
      deviceChangedHandler[2](deviceChangedHandler, v11, v20);
    }

    goto LABEL_46;
  }

  v36 = self->_ucat;
  v37 = v45;
  if (v36->var0 <= 30)
  {
    if (v36->var0 == -1)
    {
      if (!_LogCategory_Initialize(v36, 0x1Eu))
      {
        goto LABEL_39;
      }

      v36 = self->_ucat;
    }

    LogPrintF(v36, "[CUWiFiScanner _scanWiFiProcessResult:]", 0x1Eu, "WiFi scan found: %@\n", v30, v31, v32, v33, v11);
  }

LABEL_39:
  devices = self->_devices;
  if (!devices)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v40 = self->_devices;
    self->_devices = v39;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:v11 forKeyedSubscript:v45];
  deviceFoundHandler = self->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, v11);
  }

LABEL_47:
}

- (void)_scanWiFiFinished:(id)a3 status:(int)a4
{
  v61[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v8 = [v6 count];
      LogPrintF(ucat, "[CUWiFiScanner _scanWiFiFinished:status:]", 0x1Eu, "WiFi scan finish: %ld results, status %#m\n", v9, v10, v11, v12, v8);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_invalidateCalled)
  {
    [(CUWiFiScanner *)self _invalidated];
    goto LABEL_39;
  }

  if (self->_suspended)
  {
    goto LABEL_39;
  }

  if (a4)
  {
    errorHandler = self->_errorHandler;
    if (errorHandler)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A768];
      v16 = a4;
      v60 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, a4, 0, 0)}];
      v18 = v17;
      v19 = @"?";
      if (v17)
      {
        v19 = v17;
      }

      v61[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
      v21 = [v14 errorWithDomain:v15 code:v16 userInfo:v20];
      errorHandler[2](errorHandler, v21);
    }
  }

  [(NSMutableDictionary *)self->_devices enumerateKeysAndObjectsUsingBlock:&__block_literal_global_10282];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v22 = v6;
  v23 = [v22 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v55;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(CUWiFiScanner *)self _scanWiFiProcessResult:*(*(&v54 + 1) + 8 * i)];
      }

      v24 = [v22 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v24);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v27 = [(NSMutableDictionary *)self->_devices allKeys];
  v28 = [v27 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v51;
    do
    {
      v31 = 0;
      do
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v50 + 1) + 8 * v31);
        v33 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v32];
        if ([v33 present] <= -2)
        {
          v38 = self->_ucat;
          if (v38->var0 <= 30)
          {
            if (v38->var0 != -1)
            {
              goto LABEL_28;
            }

            if (_LogCategory_Initialize(v38, 0x1Eu))
            {
              v38 = self->_ucat;
LABEL_28:
              LogPrintF(v38, "[CUWiFiScanner _scanWiFiFinished:status:]", 0x1Eu, "WiFi scan lost: %@\n", v34, v35, v36, v37, v33);
            }
          }

          [(NSMutableDictionary *)self->_devices removeObjectForKey:v32];
          deviceLostHandler = self->_deviceLostHandler;
          if (deviceLostHandler)
          {
            deviceLostHandler[2](deviceLostHandler, v33);
          }
        }

        ++v31;
      }

      while (v29 != v31);
      v40 = [v27 countByEnumeratingWithState:&v50 objects:v58 count:16];
      v29 = v40;
    }

    while (v40);
  }

  scanTimer = self->_scanTimer;
  if (scanTimer)
  {
    v42 = scanTimer;
    dispatch_source_cancel(v42);
    v43 = self->_scanTimer;
    self->_scanTimer = 0;
  }

  v44 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v45 = self->_scanTimer;
  self->_scanTimer = v44;

  v46 = self->_scanTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__CUWiFiScanner__scanWiFiFinished_status___block_invoke_2;
  handler[3] = &unk_1E73A4F68;
  handler[4] = self;
  dispatch_source_set_event_handler(v46, handler);
  v47 = self->_scanTimer;
  v48 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v47, v48, 0xFFFFFFFFFFFFFFFFLL, 0x4A817C80uLL);
  dispatch_resume(self->_scanTimer);
LABEL_39:
}

void __42__CUWiFiScanner__scanWiFiFinished_status___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [v3 setPresent:{objc_msgSend(v3, "present") - 1}];
}

- (void)_scanWiFiStart
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v3;
  scanFlags = self->_scanFlags;
  if ((scanFlags & 1) == 0)
  {
    [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"channel_2pt4GHz"];
    scanFlags = self->_scanFlags;
  }

  if ((scanFlags & 2) == 0)
  {
    [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"channel_5GHz"];
  }

  ssid = self->_ssid;
  if (ssid)
  {
    [v8 setObject:ssid forKeyedSubscript:@"ssid"];
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUWiFiScanner _scanWiFiStart]", 0x1Eu, "WiFi scan start\n", v4, v5, v6, v7, v23[0]);
  }

LABEL_11:
  self->_scanning = 1;
  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __31__CUWiFiScanner__scanWiFiStart__block_invoke;
  v23[3] = &unk_1E73A4368;
  v23[4] = self;
  v13 = WiFiScan_b(v8, dispatchQueue, v23);
  if (v13)
  {
    errorHandler = self->_errorHandler;
    if (errorHandler)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A768];
      v17 = v13;
      v24 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v13, 0, 0)}];
      v19 = v18;
      v20 = @"?";
      if (v18)
      {
        v20 = v18;
      }

      v25[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v22 = [v15 errorWithDomain:v16 code:v17 userInfo:v21];
      errorHandler[2](errorHandler, v22);
    }
  }
}

- (void)resume
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__CUWiFiScanner_resume__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __23__CUWiFiScanner_resume__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(v10, 0x1Eu);
      v9 = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_5;
      }

      v10 = *(v9 + 48);
    }

    LogPrintF(v10, "[CUWiFiScanner resume]_block_invoke", 0x1Eu, "Resume\n", a5, a6, a7, a8, v13);
    v9 = *(a1 + 32);
  }

LABEL_5:
  *(v9 + 40) = 0;
  result = *(a1 + 32);
  if (*(result + 8) == 1 && (*(result + 26) & 1) == 0 && !*(result + 32))
  {

    return [result _scanWiFiStart];
  }

  return result;
}

- (void)suspend
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__CUWiFiScanner_suspend__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __24__CUWiFiScanner_suspend__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUWiFiScanner suspend]_block_invoke", 0x1Eu, "Suspend\n", a5, a6, a7, a8, v16);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 48);
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = *(v9 + 32);
  if (v12)
  {
    v13 = v12;
    dispatch_source_cancel(v13);
    v14 = *(a1 + 32);
    v15 = *(v14 + 32);
    *(v14 + 32) = 0;

    v9 = *(a1 + 32);
  }

  *(v9 + 40) = 1;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone && !self->_scanning)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    [(CUWiFiScanner *)self _cleanup];
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

      LogPrintF(ucat, "[CUWiFiScanner _invalidated]", 0x1Eu, "Invalidated\n", v4, v5, v6, v7, v10);
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CUWiFiScanner_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __27__CUWiFiScanner_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 24))
  {
    return result;
  }

  v11 = result;
  *(v10 + 24) = 1;
  v12 = *(result + 32);
  if ((*(v12 + 25) & 1) == 0)
  {
    v13 = *(v12 + 48);
    if (*v13 <= 30)
    {
      if (*v13 == -1)
      {
        v14 = _LogCategory_Initialize(*(v12 + 48), 0x1Eu);
        v12 = *(v11 + 32);
        if (!v14)
        {
          goto LABEL_7;
        }

        v13 = *(v12 + 48);
      }

      LogPrintF(v13, "[CUWiFiScanner invalidate]_block_invoke", 0x1Eu, "Invalidating\n", a5, a6, a7, a8, v8);
      v12 = *(v11 + 32);
    }
  }

LABEL_7:
  v15 = *(v12 + 32);
  if (v15)
  {
    v16 = v15;
    dispatch_source_cancel(v16);
    v17 = *(v11 + 32);
    v18 = *(v17 + 32);
    *(v17 + 32) = 0;

    v12 = *(v11 + 32);
  }

  return [v12 _invalidated];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CUWiFiScanner_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__CUWiFiScanner_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUWiFiScanner activate]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v14);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 48);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v9 + 8) = 1;
  v12 = *(a1 + 32);

  return [v12 _scanWiFiStart];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADEA928;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)_cleanup
{
  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;

  scanTimer = self->_scanTimer;
  if (scanTimer)
  {
    v5 = scanTimer;
    dispatch_source_cancel(v5);
    v6 = self->_scanTimer;
    self->_scanTimer = 0;
  }

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  deviceChangedHandler = self->_deviceChangedHandler;
  self->_deviceChangedHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    FatalErrorF("Dealloc without invalidate", a2, v2, v3, v4, v5, v6, v7, v10.receiver);
  }

  [(CUWiFiScanner *)self _cleanup];
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v10.receiver = self;
  v10.super_class = CUWiFiScanner;
  [(CUWiFiScanner *)&v10 dealloc];
}

- (CUWiFiScanner)init
{
  v5.receiver = self;
  v5.super_class = CUWiFiScanner;
  v2 = [(CUWiFiScanner *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_changeFlags = 5;
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v3->_dispatchQueue, CUMainQueue_sQueue);
    v3->_scanFlags = 3;
    v3->_ucat = &gLogCategory_CUWiFiScanner;
  }

  return v3;
}

@end