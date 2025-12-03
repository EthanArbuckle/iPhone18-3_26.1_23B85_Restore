@interface CUTWiFiManager
+ (id)sharedInstance;
- (BOOL)_isPrimaryCellular;
- (BOOL)autoAssociateWiFi;
- (BOOL)hasWiFiAutoAssociationClientToken:(id)token;
- (BOOL)hasWoWClient:(id)client;
- (BOOL)isHostingWiFiHotSpot;
- (BOOL)isWiFiAssociated;
- (BOOL)isWiFiCaptive;
- (BOOL)isWiFiEnabled;
- (BOOL)isWoWEnabled;
- (BOOL)willTryToAutoAssociateWiFiNetwork;
- (BOOL)willTryToSearchForWiFiNetwork;
- (CUTWiFiManager)init;
- (NSNumber)wiFiScaledRSSI;
- (NSNumber)wiFiScaledRate;
- (NSNumber)wiFiSignalStrength;
- (NSString)currentSSID;
- (id)_ssidFromNetwork:(__WiFiNetwork *)network;
- (void)_adjustWiFiAutoAssociation;
- (void)_adjustWiFiAutoAssociationLocked;
- (void)_adjustWoWState;
- (void)_createDynamicStore;
- (void)_handleDeviceAttachedCallback;
- (void)_handleDevicePowerCallback;
- (void)_handleHostAPStateChangedCallback;
- (void)_handlePotentialDeviceChange:(__WiFiDeviceClient *)change;
- (void)_performBackgroundInit;
- (void)_performCurrentNetworkBlock:(id)block withDevice:(__WiFiDeviceClient *)device async:(BOOL)async;
- (void)_performDeviceBlock:(id)block;
- (void)_performDeviceBlock:(id)block useCache:(BOOL)cache;
- (void)_performPowerReading;
- (void)_setCurrentNetwork:(__WiFiNetwork *)network;
- (void)_setupWifiNotifications;
- (void)_threadedMain;
- (void)_updateInitialWiFiState;
- (void)_updateIsWiFiEnabled;
- (void)addDelegate:(id)delegate;
- (void)addWiFiAutoAssociationClientToken:(id)token;
- (void)addWoWClient:(id)client;
- (void)currentWiFiNetworkPowerUsageWithCompletion:(id)completion;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)removeWiFiAutoAssociationClientToken:(id)token;
- (void)removeWoWClient:(id)client;
- (void)setCurrentNetwork:(void *)network;
- (void)showNetworkOptions;
@end

@implementation CUTWiFiManager

+ (id)sharedInstance
{
  if (qword_1ED4AE458 != -1)
  {
    sub_1B2322BD8();
  }

  v3 = qword_1ED4AE438;

  return v3;
}

- (BOOL)isWiFiEnabled
{
  [(NSRecursiveLock *)self->_lock lock];
  isWifiEnabled = self->_isWifiEnabled;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWifiEnabled;
}

- (BOOL)isWiFiAssociated
{
  v10 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  currentNetwork = self->_currentNetwork;
  [(NSRecursiveLock *)self->_lock unlock];
  v4 = +[CUTLog network];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (currentNetwork)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_DEFAULT, "is WiFi associated? %@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return currentNetwork != 0;
}

- (BOOL)isWiFiCaptive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B232300C;
  v4[3] = &unk_1E7B210B0;
  v4[4] = self;
  v4[5] = &v5;
  [(CUTWiFiManager *)self _performCurrentNetworkBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)_isPrimaryCellular
{
  [(NSRecursiveLock *)self->_lock lock];
  isPrimaryCellularCached = self->_isPrimaryCellularCached;
  [(NSRecursiveLock *)self->_lock unlock];
  return isPrimaryCellularCached;
}

- (void)_adjustWiFiAutoAssociationLocked
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_wifiManager)
  {
    autoAssociateWiFi = [(CUTWiFiManager *)self autoAssociateWiFi];
    if (autoAssociateWiFi)
    {
      if ([(CUTWiFiManager *)self autoAssociateWiFiAsForegroundClient])
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    wifiManager = self->_wifiManager;
    if (WiFiManagerClientGetType() != v4)
    {
      v8 = +[CUTLog network];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "disabling";
        wiFiAutoAssociationTokens = self->_wiFiAutoAssociationTokens;
        if (autoAssociateWiFi)
        {
          v9 = "enabling";
        }

        v13 = 136446467;
        v14 = v9;
        v15 = 2113;
        v16 = wiFiAutoAssociationTokens;
        _os_log_impl(&dword_1B2321000, v8, OS_LOG_TYPE_DEFAULT, "Interface manager: %{public}s WiFi association on wake (client tokens: %{private}@)", &v13, 0x16u);
      }

      v11 = self->_wifiManager;
      WiFiManagerClientSetType();
    }

    [(NSRecursiveLock *)self->_lock unlock];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    lock = self->_lock;
    v6 = *MEMORY[0x1E69E9840];

    [(NSRecursiveLock *)lock unlock];
  }
}

- (BOOL)autoAssociateWiFi
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableSet *)self->_wiFiAutoAssociationTokens count]!= 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (BOOL)isHostingWiFiHotSpot
{
  if ([(CUTWiFiManager *)self isWiFiEnabled])
  {
    [(NSRecursiveLock *)self->_lock lock];
    isHostingHotSpot = self->_isHostingHotSpot;
    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    return 0;
  }

  return isHostingHotSpot;
}

- (void)_threadedMain
{
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  wifiRunLoop = self->_wifiRunLoop;
  self->_wifiRunLoop = currentRunLoop;

  memset(&context, 0, sizeof(context));
  self->_runLoopSource = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, self->_runLoopSource, *MEMORY[0x1E695E8E0]);
  while (1)
  {
    v6 = objc_autoreleasePoolPush();
    CFRunLoopRun();
    objc_autoreleasePoolPop(v6);
  }
}

- (void)_performBackgroundInit
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  v3 = +[CUTLog network];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2321000, v3, OS_LOG_TYPE_DEFAULT, "Creating wifi manager", buf, 2u);
  }

  [(CUTWiFiManager *)self _setupWifiNotifications];
  v4 = +[CUTLog network];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    wifiManager = self->_wifiManager;
    wifiDevice = self->_wifiDevice;
    *buf = 138543619;
    v13 = wifiManager;
    v14 = 2113;
    v15 = wifiDevice;
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_DEFAULT, " => Done: %{public}@   (Current device: %{private}@)", buf, 0x16u);
  }

  [(CUTWiFiManager *)self _createDynamicStore];
  [(NSRecursiveLock *)self->_lock unlock];
  v7 = +[CUTLog network];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CUTWiFiManager _performBackgroundInit]";
    _os_log_impl(&dword_1B2321000, v7, OS_LOG_TYPE_DEFAULT, "%s Running network block sync", buf, 0xCu);
  }

  [(CUTWiFiManager *)self _updateIsWiFiAssociatedAsync:0];
  v8 = +[CUTLog network];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2321000, v8, OS_LOG_TYPE_DEFAULT, " => Done running network block", buf, 2u);
  }

  v9 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1B232AD40;
  handler[3] = &unk_1E7B20F20;
  handler[4] = self;
  notify_register_dispatch("com.apple.wifi.linkdidchange", &self->_linkToken, v9, handler);

  v10 = *MEMORY[0x1E69E9840];
}

- (CUTWiFiManager)init
{
  v10.receiver = self;
  v10.super_class = CUTWiFiManager;
  v2 = [(CUTWiFiManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = dispatch_queue_create("com.apple.cutwifimanager.callbacks", 0);
    incomingCallbacksQueue = v2->_incomingCallbacksQueue;
    v2->_incomingCallbacksQueue = v5;

    v7 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:v2 selector:sel__threadedMain object:0];
    wifiThread = v2->_wifiThread;
    v2->_wifiThread = v7;

    [(NSThread *)v2->_wifiThread setName:@"CommonUtilities-WiFi-Thread"];
    [(NSThread *)v2->_wifiThread start];
    [(NSRecursiveLock *)v2->_lock lock];
    v2->_wifiManager = WiFiManagerClientCreate();
    [(CUTWiFiManager *)v2 _updateInitialWiFiState];
    [(NSRecursiveLock *)v2->_lock unlock];
    [(CUTWiFiManager *)v2 performSelector:sel__performBackgroundInit onThread:v2->_wifiThread withObject:0 waitUntilDone:0];
  }

  return v2;
}

- (void)dealloc
{
  [(NSRecursiveLock *)self->_lock lock];
  [(NSMutableSet *)self->_wiFiAutoAssociationTokens removeAllObjects];
  [(CUTWiFiManager *)self _adjustWiFiAutoAssociation];
  [(CUTWiFiManager *)self _handlePotentialDeviceChange:0];
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    CFRelease(dynamicStore);
  }

  wifiDevice = self->_wifiDevice;
  if (wifiDevice)
  {
    CFRelease(wifiDevice);
  }

  wifiManager = self->_wifiManager;
  if (wifiManager)
  {
    CFRelease(wifiManager);
  }

  notify_cancel(self->_linkToken);
  runLoopSource = self->_runLoopSource;
  if (runLoopSource)
  {
    CFRunLoopSourceInvalidate(runLoopSource);
    CFRelease(self->_runLoopSource);
  }

  [(NSThread *)self->_wifiThread cancel];
  [(NSRecursiveLock *)self->_lock unlock];
  v7.receiver = self;
  v7.super_class = CUTWiFiManager;
  [(CUTWiFiManager *)&v7 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(NSRecursiveLock *)self->_lock lock];
  if (![(NSHashTable *)self->_delegateMap containsObject:delegateCopy])
  {
    delegateMap = self->_delegateMap;
    if (!delegateMap)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v6 = self->_delegateMap;
      self->_delegateMap = weakObjectsHashTable;

      delegateMap = self->_delegateMap;
    }

    [(NSHashTable *)delegateMap addObject:delegateCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    lock = self->_lock;
    delegateCopy = delegate;
    [(NSRecursiveLock *)lock lock];
    [(NSHashTable *)self->_delegateMap removeObject:delegateCopy];

    if (![(NSHashTable *)self->_delegateMap count])
    {
      delegateMap = self->_delegateMap;
      self->_delegateMap = 0;
    }

    v7 = self->_lock;

    [(NSRecursiveLock *)v7 unlock];
  }
}

- (void)addWoWClient:(id)client
{
  clientCopy = client;
  [(NSRecursiveLock *)self->_lock lock];
  v4 = [(NSHashTable *)self->_wowClients count];
  if (![(NSHashTable *)self->_wowClients containsObject:clientCopy])
  {
    wowClients = self->_wowClients;
    if (!wowClients)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_wowClients;
      self->_wowClients = weakObjectsHashTable;

      wowClients = self->_wowClients;
    }

    [(NSHashTable *)wowClients addObject:clientCopy];
    if (!v4)
    {
      [(CUTWiFiManager *)self _adjustWoWState];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)removeWoWClient:(id)client
{
  lock = self->_lock;
  clientCopy = client;
  [(NSRecursiveLock *)lock lock];
  v6 = [(NSHashTable *)self->_wowClients count];
  [(NSHashTable *)self->_wowClients removeObject:clientCopy];

  if (![(NSHashTable *)self->_wowClients count])
  {
    wowClients = self->_wowClients;
    self->_wowClients = 0;

    if (v6)
    {
      [(CUTWiFiManager *)self _adjustWoWState];
    }
  }

  v8 = self->_lock;

  [(NSRecursiveLock *)v8 unlock];
}

- (BOOL)hasWoWClient:(id)client
{
  lock = self->_lock;
  clientCopy = client;
  [(NSRecursiveLock *)lock lock];
  LOBYTE(lock) = [(NSHashTable *)self->_wowClients containsObject:clientCopy];

  [(NSRecursiveLock *)self->_lock unlock];
  return lock;
}

- (void)_adjustWoWState
{
  if (self->_wifiManager)
  {
    v3 = [(NSHashTable *)self->_wowClients count]!= 0;
    wifiManager = self->_wifiManager;

    MEMORY[0x1EEE1E7B8](wifiManager, v3);
  }
}

- (void)_setupWifiNotifications
{
  if (self->_wifiManager)
  {
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    wifiManager = self->_wifiManager;
    WiFiManagerClientRegisterNotificationCallback();
    Current = CFRunLoopGetCurrent();
    v5 = self->_wifiManager;
    v6 = *MEMORY[0x1E695E8E0];
    WiFiManagerClientScheduleWithRunLoop();
    CFRunLoopWakeUp(Current);

    [(CUTWiFiManager *)self _updateInitialWiFiState];
  }

  else
  {
    v7 = +[CUTLog network];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331B1C();
    }
  }
}

- (void)_updateInitialWiFiState
{
  if (self->_wifiManager)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B232B480;
    v4[3] = &unk_1E7B20F48;
    v4[4] = self;
    [(CUTWiFiManager *)self _performDeviceBlock:v4 useCache:0];
    [(CUTWiFiManager *)self _adjustWoWState];
    [(CUTWiFiManager *)self _adjustWiFiAutoAssociationLocked];
    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v3 = +[CUTLog network];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331B1C();
    }
  }
}

- (void)_createDynamicStore
{
  v3 = [CUTWeakReference weakRefWithObject:self];
  context.version = 0;
  context.info = v3;
  context.retain = MEMORY[0x1E695D7C8];
  context.release = MEMORY[0x1E695D7C0];
  context.copyDescription = 0;
  v4 = *MEMORY[0x1E695E480];
  dynamicStore = SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"com.apple.cutwifimanager", sub_1B232B648, &context);
  self->_dynamicStore = dynamicStore;
  if (!dynamicStore)
  {
    v6 = +[CUTLog network];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331B90();
    }

    dynamicStore = self->_dynamicStore;
  }

  SCDynamicStoreSetDispatchQueue(dynamicStore, self->_incomingCallbacksQueue);
  v7 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  v9 = CFArrayCreateMutable(v4, 0, v7);
  v10 = *MEMORY[0x1E69822F0];
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v4, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  CFRelease(NetworkGlobalEntity);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v4, v10, *MEMORY[0x1E69822E0], *MEMORY[0x1E6982320]);
  CFArrayAppendValue(v9, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  SCDynamicStoreSetNotificationKeys(self->_dynamicStore, Mutable, v9);
  CFRelease(Mutable);
  CFRelease(v9);
}

- (BOOL)willTryToAutoAssociateWiFiNetwork
{
  if (![(CUTWiFiManager *)self isWiFiEnabled])
  {
    return 0;
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_wifiManager || (AskToJoinState = WiFiManagerClientGetAskToJoinState(), wifiManager = self->_wifiManager, (v5 = WiFiManagerClientCopyEnabledNetworks()) == 0))
  {
    [(NSRecursiveLock *)self->_lock unlock];
    return 0;
  }

  v6 = v5;
  v7 = AskToJoinState != 0;
  Count = CFArrayGetCount(v5);
  CFRelease(v6);
  [(NSRecursiveLock *)self->_lock unlock];
  if (!Count)
  {
    return 0;
  }

  return v7;
}

- (BOOL)willTryToSearchForWiFiNetwork
{
  if (![(CUTWiFiManager *)self isWiFiEnabled])
  {
    return 0;
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (self->_wifiManager)
  {
    v3 = WiFiManagerClientGetAskToJoinState() != 0;
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (NSNumber)wiFiSignalStrength
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_wifiManager)
  {
    v3 = WiFiManagerClientCopyDevices();
    v4 = v3;
    if (v3 && [v3 count] && (v5 = objc_msgSend(v4, "objectAtIndex:", 0)) != 0)
    {
      v6 = v5;
      CFRetain(v5);
      v7 = *MEMORY[0x1E69B2080];
      v8 = WiFiDeviceClientCopyProperty();
      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    [(NSRecursiveLock *)self->_lock unlock];
    v8 = 0;
  }

  return v8;
}

- (NSNumber)wiFiScaledRSSI
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_wifiManager)
  {
    v3 = WiFiManagerClientCopyDevices();
    v4 = v3;
    if (v3 && [v3 count] && (v5 = objc_msgSend(v4, "objectAtIndex:", 0)) != 0)
    {
      v6 = v5;
      CFRetain(v5);
      v7 = *MEMORY[0x1E69B2070];
      v8 = WiFiDeviceClientCopyProperty();
      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    [(NSRecursiveLock *)self->_lock unlock];
    v8 = 0;
  }

  return v8;
}

- (NSNumber)wiFiScaledRate
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_wifiManager)
  {
    v3 = WiFiManagerClientCopyDevices();
    v4 = v3;
    if (v3 && [v3 count] && (v5 = objc_msgSend(v4, "objectAtIndex:", 0)) != 0)
    {
      v6 = v5;
      CFRetain(v5);
      v7 = *MEMORY[0x1E69B2078];
      v8 = WiFiDeviceClientCopyProperty();
      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    [(NSRecursiveLock *)self->_lock unlock];
    v8 = 0;
  }

  return v8;
}

- (void)_updateIsWiFiEnabled
{
  *&self->_isHostingHotSpot = 0;
  if (self->_wifiManager)
  {
    Power = WiFiManagerClientGetPower();
    wifiManager = self->_wifiManager;
    v5 = WiFiManagerClientCopyProperty();
    bOOLValue = [v5 BOOLValue];
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = (Power != 0) & bOOLValue;
    self->_isWifiEnabled = v7;
    if (v7)
    {
      v8 = self->_wifiManager;
      v9 = WiFiManagerClientGetMISState() != 0;
    }

    else
    {
      v9 = 0;
    }

    self->_isHostingHotSpot = v9;
    v10 = +[CUTLog network];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B2321000, v10, OS_LOG_TYPE_DEFAULT, "Running network block async", v11, 2u);
    }

    [(CUTWiFiManager *)self _updateIsWiFiAssociatedAsync:1];
  }
}

- (void)_performDeviceBlock:(id)block useCache:(BOOL)cache
{
  cacheCopy = cache;
  blockCopy = block;
  if (!blockCopy)
  {
    goto LABEL_16;
  }

  v7 = blockCopy;
  v12 = [blockCopy copy];

  [(NSRecursiveLock *)self->_lock lock];
  if (cacheCopy)
  {
    wifiDevice = self->_wifiDevice;
    if (wifiDevice)
    {
      CFRetain(self->_wifiDevice);
    }

    goto LABEL_13;
  }

  if (self->_wifiManager)
  {
    v9 = WiFiManagerClientCopyDevices();
    v10 = v9;
    if (v9 && [v9 count])
    {
      v11 = [v10 objectAtIndex:0];
      wifiDevice = v11;
      if (v11)
      {
        CFRetain(v11);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  wifiDevice = 0;
LABEL_12:

LABEL_13:
  [(NSRecursiveLock *)self->_lock unlock];
  v12[2](v12, wifiDevice);
  if (wifiDevice)
  {
    CFRelease(wifiDevice);
  }

  blockCopy = v12;
LABEL_16:
}

- (void)_performDeviceBlock:(id)block
{
  blockCopy = block;
  v4 = objc_autoreleasePoolPush();
  [(CUTWiFiManager *)self _performDeviceBlock:blockCopy useCache:1];
  objc_autoreleasePoolPop(v4);
}

- (void)_performCurrentNetworkBlock:(id)block withDevice:(__WiFiDeviceClient *)device async:(BOOL)async
{
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B232C3C4;
    v12[3] = &unk_1E7B20FE8;
    v12[4] = self;
    asyncCopy = async;
    v13 = blockCopy;
    v10 = MEMORY[0x1B2746240](v12);
    if (device)
    {
      v11 = objc_autoreleasePoolPush();
      (v10)[2](v10, device);
      objc_autoreleasePoolPop(v11);
    }

    else
    {
      [(CUTWiFiManager *)self _performDeviceBlock:v10];
    }
  }
}

- (id)_ssidFromNetwork:(__WiFiNetwork *)network
{
  if (network)
  {
    SSID = WiFiNetworkGetSSID();
  }

  else
  {
    SSID = 0;
  }

  return SSID;
}

- (void)_handleDevicePowerCallback
{
  [(NSRecursiveLock *)self->_lock lock];
  [(CUTWiFiManager *)self _updateIsWiFiEnabled];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_handleDeviceAttachedCallback
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1B232C890;
  v2[3] = &unk_1E7B20F48;
  v2[4] = self;
  [(CUTWiFiManager *)self _performDeviceBlock:v2 useCache:0];
}

- (void)_handleHostAPStateChangedCallback
{
  [(NSRecursiveLock *)self->_lock lock];
  [(CUTWiFiManager *)self _updateIsWiFiEnabled];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_handlePotentialDeviceChange:(__WiFiDeviceClient *)change
{
  v29 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  wifiDevice = self->_wifiDevice;
  if (wifiDevice == change)
  {
    self->_isWakeOnWiFiSupported = 1;
  }

  else
  {
    if (wifiDevice)
    {
      WiFiDeviceClientRegisterDeviceAvailableCallback();
      v6 = self->_wifiDevice;
      WiFiDeviceClientRegisterExtendedLinkCallback();
      v7 = self->_wifiDevice;
      WiFiDeviceClientRegisterHostApStateChangedCallback();
      CFRelease(self->_wifiDevice);
      self->_wifiDevice = 0;
    }

    if (change)
    {
      self->_wifiDevice = change;
      CFRetain(change);
      wifiManager = self->_wifiManager;
      self->_isWakeOnWiFiSupported = WiFiManagerClientGetWoWCapability() != 0;
      [(CUTWiFiManager *)self _updateIsWiFiEnabled];
      v9 = self->_wifiDevice;
      WiFiDeviceClientRegisterDeviceAvailableCallback();
      v10 = self->_wifiDevice;
      WiFiDeviceClientRegisterExtendedLinkCallback();
      v11 = self->_wifiDevice;
      WiFiDeviceClientRegisterPowerCallback();
      v12 = self->_wifiDevice;
      WiFiDeviceClientRegisterHostApStateChangedCallback();
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = self->_delegateMap;
      v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        v17 = MEMORY[0x1E69E96A0];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v24 + 1) + 8 * i);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_1B232CCA0;
            block[3] = &unk_1E7B20D70;
            block[4] = v19;
            block[5] = self;
            dispatch_async(v17, block);
          }

          v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }
    }

    else
    {
      self->_isWifiEnabled = 0;
      v20 = +[CUTLog network];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_1B2321000, v20, OS_LOG_TYPE_DEFAULT, "Running network block async", v22, 2u);
      }

      [(CUTWiFiManager *)self _updateIsWiFiAssociatedAsync:1];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v21 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentNetwork:(void *)network
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  currentNetwork = self->_currentNetwork;
  if (currentNetwork != network)
  {
    if (currentNetwork)
    {
      CFRelease(currentNetwork);
    }

    self->_currentNetwork = network;
    if (network)
    {
      CFRetain(network);
    }

    v6 = +[CUTLog network];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_currentNetwork;
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_1B2321000, v6, OS_LOG_TYPE_DEFAULT, "_currentNetwork is %p", &v9, 0xCu);
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentNetwork:(__WiFiNetwork *)network
{
  [(NSRecursiveLock *)self->_lock lock];
  [(CUTWiFiManager *)self setCurrentNetwork:network];
  [(CUTWiFiManager *)self _updateIsWiFiEnabled];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_performPowerReading
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSHashTable *)self->_delegateMap count];
  [(NSRecursiveLock *)self->_lock unlock];
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B232CECC;
    v4[3] = &unk_1E7B21010;
    v4[4] = self;
    [(CUTWiFiManager *)self currentWiFiNetworkPowerUsageWithCompletion:v4];
  }
}

- (void)currentWiFiNetworkPowerUsageWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B232D188;
    v6[3] = &unk_1E7B21060;
    v6[4] = self;
    v7 = completionCopy;
    [(CUTWiFiManager *)self _performDeviceBlock:v6];
  }
}

- (NSString)currentSSID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B23231E0;
  v9 = sub_1B2322E2C;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B232D72C;
  v4[3] = &unk_1E7B21088;
  v4[4] = self;
  v4[5] = &v5;
  [(CUTWiFiManager *)self _performCurrentNetworkBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_adjustWiFiAutoAssociation
{
  [(NSRecursiveLock *)self->_lock lock];
  [(CUTWiFiManager *)self _adjustWiFiAutoAssociationLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)hasWiFiAutoAssociationClientToken:(id)token
{
  if (!token)
  {
    return 0;
  }

  lock = self->_lock;
  tokenCopy = token;
  [(NSRecursiveLock *)lock lock];
  LOBYTE(lock) = [(NSMutableSet *)self->_wiFiAutoAssociationTokens containsObject:tokenCopy];

  [(NSRecursiveLock *)self->_lock unlock];
  return lock;
}

- (void)addWiFiAutoAssociationClientToken:(id)token
{
  v15 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    [(NSRecursiveLock *)self->_lock lock];
    wiFiAutoAssociationTokens = self->_wiFiAutoAssociationTokens;
    if (!wiFiAutoAssociationTokens)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_wiFiAutoAssociationTokens;
      self->_wiFiAutoAssociationTokens = v6;

      wiFiAutoAssociationTokens = self->_wiFiAutoAssociationTokens;
    }

    [(NSMutableSet *)wiFiAutoAssociationTokens addObject:tokenCopy];
    v8 = +[CUTLog network];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_wiFiAutoAssociationTokens;
      v11 = 138478083;
      v12 = tokenCopy;
      v13 = 2113;
      v14 = v9;
      _os_log_impl(&dword_1B2321000, v8, OS_LOG_TYPE_DEFAULT, "Client token: %{private}@ was added to WiFi association clients (%{private}@)", &v11, 0x16u);
    }

    [(CUTWiFiManager *)self _adjustWiFiAutoAssociationLocked];
    [(NSRecursiveLock *)self->_lock unlock];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeWiFiAutoAssociationClientToken:(id)token
{
  v12 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v5 = +[CUTLog network];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      wiFiAutoAssociationTokens = self->_wiFiAutoAssociationTokens;
      v8 = 138478083;
      v9 = tokenCopy;
      v10 = 2113;
      v11 = wiFiAutoAssociationTokens;
      _os_log_impl(&dword_1B2321000, v5, OS_LOG_TYPE_DEFAULT, "Client token: %{private}@ being removed from WiFi association clients (%{private}@)", &v8, 0x16u);
    }

    [(NSMutableSet *)self->_wiFiAutoAssociationTokens removeObject:tokenCopy];
    [(CUTWiFiManager *)self _adjustWiFiAutoAssociationLocked];
    [(NSRecursiveLock *)self->_lock unlock];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)showNetworkOptions
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_wifiManager)
  {
    WiFiManagerClientSetAssociationMode();
    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }

  else
  {
    v4 = +[CUTLog network];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331BC4();
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }
}

- (BOOL)isWoWEnabled
{
  [(NSRecursiveLock *)self->_lock lock];
  isWakeOnWiFiEnabled = self->_isWakeOnWiFiEnabled;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWakeOnWiFiEnabled;
}

@end