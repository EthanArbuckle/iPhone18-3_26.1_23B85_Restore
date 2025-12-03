@interface ULBleIdentityBridge
- (ULBleIdentityBridge)initWithDelegate:(id)delegate;
- (ULBleIdentityBridgeDelegate)delegate;
- (void)_deviceFoundHandler:(id)handler;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation ULBleIdentityBridge

- (ULBleIdentityBridge)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ULBleIdentityBridge;
  v5 = [(ULBleIdentityBridge *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(ULBleIdentityBridge *)v5 setDelegate:delegateCopy];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.ULBleIdentityBridge.internal", v7);
    [(ULBleIdentityBridge *)v6 setQueue:v8];
  }

  return v6;
}

- (void)startMonitoring
{
  queue = [(ULBleIdentityBridge *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ULBleIdentityBridge_startMonitoring__block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__ULBleIdentityBridge_startMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cbDiscovery];

  if (!v2)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) setCbDiscovery:v3];

    v4 = [*(a1 + 32) queue];
    v5 = [*(a1 + 32) cbDiscovery];
    [v5 setDispatchQueue:v4];

    v6 = [*(a1 + 32) cbDiscovery];
    [v6 setDiscoveryFlags:0x100200080040];

    v7 = [*(a1 + 32) cbDiscovery];
    [v7 setUseCase:524291];

    objc_initWeak(&location, *(a1 + 32));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__ULBleIdentityBridge_startMonitoring__block_invoke_2;
    v12[3] = &unk_2798D4E08;
    objc_copyWeak(&v13, &location);
    v8 = [*(a1 + 32) cbDiscovery];
    [v8 setDeviceFoundHandler:v12];

    v9 = [*(a1 + 32) cbDiscovery];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__ULBleIdentityBridge_startMonitoring__block_invoke_3;
    v10[3] = &unk_2798D43C0;
    objc_copyWeak(&v11, &location);
    [v9 activateWithCompletion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __38__ULBleIdentityBridge_startMonitoring__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    dispatch_assert_queue_V2(v5);

    [v4 _deviceFoundHandler:v6];
  }
}

void __38__ULBleIdentityBridge_startMonitoring__block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    dispatch_assert_queue_V2(v6);

    if (v3)
    {
      v7 = [v5 cbDiscovery];
      [v7 invalidate];

      [v5 setCbDiscovery:0];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"CBDiscovery activation error:", v3];
      CLMicroLocationErrorHandling::reportError(v8, v9);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        __38__ULBleIdentityBridge_startMonitoring__block_invoke_3_cold_1();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:ULBleIdentityBridge: CBDiscovery activated successfully}", buf, 0x12u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring
{
  queue = [(ULBleIdentityBridge *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ULBleIdentityBridge_stopMonitoring__block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__ULBleIdentityBridge_stopMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cbDiscovery];

  if (v2)
  {
    v3 = [*(a1 + 32) cbDiscovery];
    [v3 invalidate];

    v4 = *(a1 + 32);

    [v4 setCbDiscovery:0];
  }
}

- (void)_deviceFoundHandler:(id)handler
{
  v64 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  deviceFlags = [handlerCopy deviceFlags];
  nearbyInfoV2DecryptedFlags = [handlerCopy nearbyInfoV2DecryptedFlags];
  if ((deviceFlags & 0x180) != 0 || (nearbyInfoV2DecryptedFlags & 4) != 0)
  {
    discoveryFlags = [handlerCopy discoveryFlags];
    deviceFlags2 = [handlerCopy deviceFlags];
    deviceFlags3 = [handlerCopy deviceFlags];
    if (onceToken_MicroLocationQE_Default != -1)
    {
      [ULBleIdentityBridge _deviceFoundHandler:];
    }

    v10 = *&discoveryFlags & 0x80040;
    v11 = deviceFlags2 & 0x80;
    v12 = logObject_MicroLocationQE_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      idsDeviceID = [handlerCopy idsDeviceID];
      uTF8String = [idsDeviceID UTF8String];
      identifier = [handlerCopy identifier];
      v34 = uTF8String;
      selfCopy = self;
      uTF8String2 = [identifier UTF8String];
      model = [handlerCopy model];
      uTF8String3 = [model UTF8String];
      [handlerCopy bleAdvertisementTimestamp];
      *buf = 68291075;
      v45 = 0;
      v46 = 2082;
      *v47 = "";
      *&v47[8] = 2081;
      *&v47[10] = v34;
      v48 = 2081;
      v49 = uTF8String2;
      v50 = 2081;
      v51 = uTF8String3;
      LOWORD(v52) = 1025;
      *(&v52 + 2) = v10 != 0;
      HIWORD(v52) = 1025;
      v53 = v11 >> 7;
      v54 = 1025;
      v55 = (deviceFlags3 >> 15) & 1;
      v56 = 2050;
      v57 = v18;
      v58 = 1026;
      *v59 = [handlerCopy rssi];
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ULBleIdentityBridge: Ble Beacon Received, IDS ID:%{private, location:escape_only}s, BT identifier:%{private, location:escape_only}s, Model:%{private, location:escape_only}s, is device nearbyInfo or nearbyAction type?:%{private}hhd, is device same account?:%{private}hhd, is device cloud paired?:%{private}hhd, AdvertisementTimestamp:%{public}.3f, RSSI:%{public}d}", buf, 0x52u);

      self = selfCopy;
    }

    identifier2 = [handlerCopy identifier];
    v20 = (deviceFlags3 & 0x8000) == 0;
    if (identifier2)
    {
      v21 = v10 == 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = v21 || v11 == 0;

    if (((v23 | v20) & 1) == 0)
    {
      identifier3 = [handlerCopy identifier];
      v25 = identifier3;
      if (identifier3)
      {
        [identifier3 boostUUID];
      }

      else
      {
        v62 = 0uLL;
        v63 = 0;
      }

      if (v63 == 1)
      {
        name = [handlerCopy name];
        v27 = name;
        if (name)
        {
          [name stdString];
        }

        else
        {
          *v42 = 0u;
          v43 = 0u;
        }

        stableIdentifier = [handlerCopy stableIdentifier];
        v29 = stableIdentifier;
        if (stableIdentifier)
        {
          [stableIdentifier stdString];
        }

        else
        {
          *v40 = 0u;
          v41 = 0u;
        }

        model2 = [handlerCopy model];
        v31 = model2;
        if (model2)
        {
          [model2 stdString];
        }

        else
        {
          *v38 = 0u;
          v39 = 0u;
        }

        v37 = cl::chrono::CFAbsoluteTimeClock::now();
        ULBleIdentityItem::ULBleIdentityItem(buf, &v62, v42, v40, v38, &v37);
        delegate = [(ULBleIdentityBridge *)self delegate];
        [delegate onBleIdentityItem:buf];

        if (v61 == 1 && v60 < 0)
        {
          operator delete(*&v59[2]);
        }

        if (BYTE4(v57) == 1 && SBYTE3(v57) < 0)
        {
          operator delete(v52);
        }

        if (v51 == 1 && SHIBYTE(v50) < 0)
        {
          operator delete(*&v47[6]);
        }

        if (BYTE8(v39) == 1 && SBYTE7(v39) < 0)
        {
          operator delete(v38[0]);
        }

        if (BYTE8(v41) == 1 && SBYTE7(v41) < 0)
        {
          operator delete(v40[0]);
        }

        if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
        {
          operator delete(v42[0]);
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (ULBleIdentityBridgeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end