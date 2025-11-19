@interface IAPTransportServer
+ (id)sharedIAPTransportServer;
- (BOOL)createNewClientPort:(id)a3 connection:(id)a4;
- (BOOL)isDeviceInLowPowerMode;
- (IAPTransportServer)init;
- (id)iapPortManagerForDevPort:(IapTransport *)a3;
- (void)_detachClientPort:(IapTransport *)a3;
- (void)_listenForAccessoryPortChanges;
- (void)_setupiAPInterfaceNotifications;
- (void)_updatePlistWithApplicationUninstall:(id)a3;
- (void)attachPowerModeNotifications;
- (void)bringdownPlatform;
- (void)bringupPlatform;
- (void)checkXPCConnections;
- (void)cleanupPhysicalConnectorConnections;
- (void)cleanupStaleClientPorts:(int)a3;
- (void)clientPortReceivedData:(id)a3 dataPtr:(char *)a4 length:(unsigned __int16)a5;
- (void)dealloc;
- (void)deleteAllPorts;
- (void)deleteClientPortsUsingConnection:(id)a3;
- (void)deleteWiredPorts;
- (void)detachIOKitPort:(IapTransport *)a3;
- (void)detachPowerModeNotifications;
- (void)enterLowPowerMode;
- (void)exitLowPowerMode;
- (void)handleLowPowerModeStateChange:(BOOL)a3;
- (void)iap2Disconnect;
- (void)iapDisconnect;
- (void)preventIdleSleep:(BOOL)a3;
- (void)radioPreferencesChanged:(unsigned int)a3;
- (void)registerClientPortAccessory:(id)a3 connection:(id)a4;
- (void)run;
- (void)sendValidAccResistorIDToIAPD;
- (void)setHasAdaptor:(BOOL)a3;
- (void)setUSBMode:(IapTransport *)a3 forMode:(int)a4;
- (void)setWiredPortPacketParsingState:(BOOL)a3;
- (void)setiaptransportdhighPriorityRootQueue:(id)a3;
- (void)startAccPowerTimer:(unsigned int)a3;
- (void)startAccPowerTimer:(unsigned int)a3 ForPortService:(unsigned int)a4;
- (void)startIOAccMgrPortDetectTimer:(unsigned int)a3;
- (void)stopServer:(int)a3 forceExitingImmediately:(BOOL)a4;
- (void)unregisterClientPortAccessory:(id)a3;
- (void)updateDeviceUUIDState;
- (void)updatePortManagers;
- (void)updateSleepAssertionState;
@end

@implementation IAPTransportServer

+ (id)sharedIAPTransportServer
{
  if (qword_100031DB8 != -1)
  {
    sub_10001B7F0();
  }

  return qword_100031DC0;
}

- (void)setiaptransportdhighPriorityRootQueue:(id)a3
{
  iaptransportdhighPriorityRootQueue = self->_iaptransportdhighPriorityRootQueue;
  if (iaptransportdhighPriorityRootQueue)
  {
    dispatch_release(iaptransportdhighPriorityRootQueue);
  }

  self->_iaptransportdhighPriorityRootQueue = a3;
  if (a3)
  {

    dispatch_retain(a3);
  }
}

- (void)_listenForAccessoryPortChanges
{
  ioaccessoryNotifyPort = self->_ioaccessoryNotifyPort;
  v4 = IOServiceMatching("IOAccessoryPort");
  v5 = IOServiceAddMatchingNotification(ioaccessoryNotifyPort, "IOServicePublish", v4, sub_100011BE4, self, &self->_ioaccessoryPortAddedIterator);
  if (v5)
  {
    NSLog(@"ERROR - %s:%s - %d IOServiceAddMatchingNotification failed 0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "[IAPTransportServer _listenForAccessoryPortChanges]", 1688, v5);
  }

  else
  {
    sub_100011BE4(self, self->_ioaccessoryPortAddedIterator);
    Main = CFRunLoopGetMain();
    RunLoopSource = IONotificationPortGetRunLoopSource(self->_ioaccessoryNotifyPort);

    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
  }
}

- (void)_setupiAPInterfaceNotifications
{
  v3 = IONotificationPortCreate(kIOMasterPortDefault);
  self->_iapInterfaceNotifyPort = v3;
  if (v3)
  {
    v4 = IOServiceMatching("IOUSBInterface");
    if (v4)
    {
      v5 = v4;
      keys = @"SupportsIAP";
      v6 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v5, @"IOPropertyMatch", v6);
      CFRelease(v6);
      v7 = CFRetain(v5);
      v8 = IOServiceAddMatchingNotification(self->_iapInterfaceNotifyPort, "IOServiceFirstMatch", v7, sub_1000120B8, 0, &self->_iAPInterfaceDeviceArrivedIterator);
      if (v8)
      {
        NSLog(@"_attachiAPInterfaceUSBDevices: could not install kIOFirstMatchNotification notification, error: %08x", v8);
      }

      sub_1000120B8(v8, self->_iAPInterfaceDeviceArrivedIterator);
      v9 = IOServiceAddMatchingNotification(self->_iapInterfaceNotifyPort, "IOServiceTerminate", v7, sub_100012624, 0, &self->_iAPInterfaceDeviceRemovedIterator);
      if (v9)
      {
        NSLog(@"_attachiAPInterfaceUSBDevices: could not install kIOTerminatedNotification notification, error: %08x", v9);
      }

      sub_100012624(v9, self->_iAPInterfaceDeviceRemovedIterator);
      Main = CFRunLoopGetMain();
      RunLoopSource = IONotificationPortGetRunLoopSource(self->_iapInterfaceNotifyPort);
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    }

    else
    {
      NSLog(@"_attachiAPInterfaceUSBDevices: IOServiceMatching() failed");
    }
  }

  else
  {
    NSLog(@"_attachiAPInterfaceUSBDevices: IONotificationPortCreate() failed");
  }
}

- (void)startAccPowerTimer:(unsigned int)a3
{
  if (!self->_isShuttingDown)
  {
    initAccPowerTimerOnce = self->_initAccPowerTimerOnce;
    p_initAccPowerTimerOnce = &self->_initAccPowerTimerOnce;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001275C;
    block[3] = &unk_10002D690;
    block[4] = self;
    if (initAccPowerTimerOnce != -1)
    {
      dispatch_once(p_initAccPowerTimerOnce, block);
    }

    accPowerTimer = self->_accPowerTimer;
    v8 = dispatch_time(0, 1000000 * a3);
    dispatch_source_set_timer(accPowerTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)startAccPowerTimer:(unsigned int)a3 ForPortService:(unsigned int)a4
{
  if (!self->_isShuttingDown)
  {
    initAccPowerForPortServiceTimerOnce = self->_initAccPowerForPortServiceTimerOnce;
    p_initAccPowerForPortServiceTimerOnce = &self->_initAccPowerForPortServiceTimerOnce;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100012A08;
    v10[3] = &unk_10002D6B8;
    v10[4] = self;
    v11 = a4;
    if (initAccPowerForPortServiceTimerOnce != -1)
    {
      dispatch_once(p_initAccPowerForPortServiceTimerOnce, v10);
    }

    accPowerForPortServiceTimer = self->_accPowerForPortServiceTimer;
    v9 = dispatch_time(0, 1000000 * a3);
    dispatch_source_set_timer(accPowerForPortServiceTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)startIOAccMgrPortDetectTimer:(unsigned int)a3
{
  if (!self->_isShuttingDown)
  {
    initIOAccMgrPortDetectTimerOnce = self->_initIOAccMgrPortDetectTimerOnce;
    p_initIOAccMgrPortDetectTimerOnce = &self->_initIOAccMgrPortDetectTimerOnce;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100012CA4;
    v6[3] = &unk_10002D6B8;
    v6[4] = self;
    v7 = a3;
    if (initIOAccMgrPortDetectTimerOnce != -1)
    {
      dispatch_once(p_initIOAccMgrPortDetectTimerOnce, v6);
    }
  }
}

- (void)iapDisconnect
{
  shutdownQ = self->_shutdownQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013234;
  block[3] = &unk_10002D690;
  block[4] = self;
  dispatch_async(shutdownQ, block);
}

- (void)iap2Disconnect
{
  shutdownQ = self->_shutdownQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000133B0;
  block[3] = &unk_10002D690;
  block[4] = self;
  dispatch_async(shutdownQ, block);
}

- (void)setUSBMode:(IapTransport *)a3 forMode:(int)a4
{
  v4 = [(IAPTransportServer *)self iapPortManagerForDevPort:a3];
  if (v4)
  {
    v5 = [v4 service];
    connect = 0;
    v6 = IOServiceOpen(v5, mach_task_self_, 0, &connect);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = connect == 0;
    }

    if (v7)
    {
      NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "[IAPTransportServer setUSBMode:forMode:]", 1998, v6);
    }

    else
    {
      v8 = IOAccessoryManagerConfigureUSBMode();
      if (v8)
      {
        if (v8 == -536870183)
        {
          NSLog(@"INFO - %s:%s - %d IOAccessoryManagerConfigureUSBMode not attached %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "[IAPTransportServer setUSBMode:forMode:]", 2006, 3758097113);
        }

        else
        {
          NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerConfigureUSBMode failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "[IAPTransportServer setUSBMode:forMode:]", 2010, v8);
        }
      }

      IOServiceClose(connect);
    }
  }
}

- (void)setWiredPortPacketParsingState:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001364C;
  v3[3] = &unk_10002D728;
  v4 = a3;
  pthread_mutex_lock(&stru_100031AA8);
  sub_10001364C(v3);
  pthread_mutex_unlock(&stru_100031AA8);
}

- (void)deleteWiredPorts
{
  shutdownQ = self->_shutdownQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013778;
  block[3] = &unk_10002D690;
  block[4] = self;
  dispatch_async(shutdownQ, block);
}

- (void)enterLowPowerMode
{
  sub_100002668(3);
  if (byte_100031DE0 == 1)
  {
    [(IAPTransportServer *)self cleanupStaleClientPorts:3];
  }

  [(IAPTransportServer *)self setWiredPortPacketParsingState:0];
  [(IAPTransportServer *)self cleanupPhysicalConnectorConnections];

  sub_10001289C(1, 0);
}

- (void)exitLowPowerMode
{
  [(IAPTransportServer *)self checkXPCConnections];
  [(IAPTransportServer *)self setWiredPortPacketParsingState:1];
  sub_10001289C(3, 0);

  [(IAPTransportServer *)self sendValidAccResistorIDToIAPD];
}

- (BOOL)isDeviceInLowPowerMode
{
  radiosPreferences = self->_radiosPreferences;
  if (radiosPreferences)
  {
    SCPreferencesSynchronize(radiosPreferences);
    radiosPreferences = SCPreferencesGetValue(self->_radiosPreferences, @"LowPowerMode");
    if (radiosPreferences)
    {
      v4 = radiosPreferences;
      v5 = CFGetTypeID(radiosPreferences);
      LOBYTE(radiosPreferences) = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) == 1;
    }
  }

  return radiosPreferences;
}

- (void)handleLowPowerModeStateChange:(BOOL)a3
{
  if (a3)
  {
    [(IAPTransportServer *)self enterLowPowerMode];
  }

  else
  {
    [(IAPTransportServer *)self exitLowPowerMode];
  }
}

- (void)radioPreferencesChanged:(unsigned int)a3
{
  if ((a3 & 2) != 0)
  {
    v4 = [(IAPTransportServer *)self isDeviceInLowPowerMode];
    if (self->_lowPowerModeEnabled != v4)
    {
      self->_lowPowerModeEnabled = v4;

      [(IAPTransportServer *)self handleLowPowerModeStateChange:v4];
    }
  }
}

- (void)attachPowerModeNotifications
{
  v3 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.iaptransportd", @"com.apple.radios.plist");
  self->_radiosPreferences = v3;
  if (v3)
  {
    v4 = SCPreferencesSetCallback(v3, sub_100013BEC, 0);
    radiosPreferences = self->_radiosPreferences;
    if (v4)
    {
      global_queue = dispatch_get_global_queue(0, 0);

      SCPreferencesSetDispatchQueue(radiosPreferences, global_queue);
    }

    else
    {
      CFRelease(self->_radiosPreferences);
      self->_radiosPreferences = 0;
    }
  }
}

- (void)detachPowerModeNotifications
{
  radiosPreferences = self->_radiosPreferences;
  if (radiosPreferences)
  {
    SCPreferencesSetDispatchQueue(radiosPreferences, 0);
    CFRelease(self->_radiosPreferences);
    self->_radiosPreferences = 0;
  }
}

- (IAPTransportServer)init
{
  v29.receiver = self;
  v29.super_class = IAPTransportServer;
  v2 = [(IAPTransportServer *)&v29 init];
  if (!v2)
  {
    return v2;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100014310, @"com.apple.iapd.LoggingPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  sub_100018890();
  v2[209] = 0;
  *(v2 + 25) = 0;
  if ([v2 isLowPowerModeSupported])
  {
    [v2 attachPowerModeNotifications];
    v2[208] = [v2 isDeviceInLowPowerMode];
  }

  byte_100031DE0 = MGGetBoolAnswer();
  *(v2 + 14) = 0;
  *(v2 + 30) = 0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  v4 = objc_alloc_init(IAPWorkspaceObserver);
  *(v2 + 4) = v4;
  [(IAPWorkspaceObserver *)v4 setDelegate:v2];
  [*(v2 + 4) startObserving];
  *(v2 + 31) = 0;
  v2[256] = 0;
  *(v2 + 15) = dispatch_queue_create("IAPTransportServerListenerQueue", 0);
  *(v2 + 16) = dispatch_queue_create("IAPTransportServerAccPowerTimerQueue", 0);
  *(v2 + 29) = dispatch_queue_create("IAPTransportServerShutdownQueue", 0);
  *(v2 + 33) = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3052000000;
  v28[3] = sub_100012FBC;
  v28[4] = sub_100012FCC;
  v28[5] = v2;
  *(v2 + 27) = 0;
  if (+[IAPTransportServer supportsIAPD])
  {
    v5 = [[IAPXPCConnection alloc] initWithServiceName:@"com.apple.iapd.xpc" queueName:@"com.apple.iapd.IAPXPCConnection"];
    *(v2 + 27) = v5;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100014340;
    v27[3] = &unk_10002D460;
    v27[4] = v28;
    [(IAPXPCConnection *)v5 setDisconnectBlock:v27];
  }

  v6 = [[IAPXPCConnection alloc] initWithServiceName:@"com.apple.iap2d.xpc" queueName:@"com.apple.iap2d.IAPXPCConnection"];
  *(v2 + 28) = v6;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100014350;
  v26[3] = &unk_10002D460;
  v26[4] = v28;
  [(IAPXPCConnection *)v6 setDisconnectBlock:v26];
  dispatch_async(&_dispatch_main_q, &stru_10002D888);
  v7 = IONotificationPortCreate(kIOMasterPortDefault);
  *(v2 + 46) = 0;
  *(v2 + 6) = v7;
  v2[192] = 0;
  *(v2 + 187) = 0;
  v2[272] = -1;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"E75ServiceMaxAttempts", @"com.apple.iaptransportd", 0);
  v9 = AppIntegerValue;
  if (AppIntegerValue)
  {
    syslog(6, "IAPTransportServer: init: E75ServiceMaxAttempts=%d\n", AppIntegerValue);
  }

  else
  {
    v9 = 10;
  }

  v23 = v9;
  v24 = 0;
  while (1)
  {
    existing[0] = 0;
    v10 = IOServiceMatching("IOAccessoryManager");
    if (IOServiceGetMatchingServices(kIOMasterPortDefault, v10, existing))
    {
      syslog(4, "IAPTransportServer: init: Error: IOServiceGetMatchingServices failed\n");
    }

    else
    {
      syslog(4, "IAPTransportServer: init: ioPortIter:0x%x\n", existing[0]);
      while (1)
      {
        v11 = IOIteratorNext(existing[0]);
        if (!v11)
        {
          break;
        }

        PrimaryPort = IOAccessoryManagerGetPrimaryPort();
        TransportType = IOAccessoryPortGetTransportType();
        v14 = MGGetBoolAnswer();
        syslog(4, "IAPTransportServer: init: ioService:0x%x, portID:%d, priPortType:%d, supports9Pin:%d\n", v11, PrimaryPort, TransportType, v14);
        if (((PrimaryPort == 1) & v14) == 1)
        {
          v2[189] = 1;
          xmmword_100031E80 = 0u;
          *&dword_100031E90 = 0u;
          xmmword_100031EA0 = 0u;
          unk_100031EB0 = 0u;
          xmmword_100031EC0 = 0u;
          *&qword_100031ED0 = 0u;
          qword_100031EE0 = 0;
          DWORD2(xmmword_100031E80) = 1;
          HIDWORD(xmmword_100031E80) = TransportType;
          dword_100031E90 = v11;
          IOObjectRetain(v11);
          qword_100031DC8 = sub_100006BF4(v2, &xmmword_100031E80);
          syslog(4, "IAPTransportServer: init: __pIapAppleIDBusRootE75:0x%x\n", qword_100031DC8);
          if (!qword_100031DC8)
          {
            _os_assert_log();
            v20 = _os_crash();
            sub_10001B804(v20);
          }
        }

        else if (PrimaryPort == 256)
        {
          v2[190] = 1;
          xmmword_100031EE8 = 0u;
          *&dword_100031EF8 = 0u;
          xmmword_100031F08 = 0u;
          unk_100031F18 = 0u;
          xmmword_100031F28 = 0u;
          unk_100031F38 = 0u;
          qword_100031F48 = 0;
          DWORD2(xmmword_100031EE8) = 256;
          HIDWORD(xmmword_100031EE8) = TransportType;
          dword_100031EF8 = v11;
          IOObjectRetain(v11);
          qword_100031DD8 = sub_100006BF4(v2, &xmmword_100031EE8);
          if (!qword_100031DD8)
          {
            _os_assert_log();
            v21 = _os_crash();
            sub_10001B804(v21);
          }
        }

        IOObjectRelease(v11);
      }

      IOObjectRelease(existing[0]);
    }

    if (qword_100031DC8)
    {
      break;
    }

    syslog(4, "IAPTransportServer: init:%d: __pIapAppleIDBusRootE75 == NULL\n", 2373);
    usleep(0x186A0u);
    if (!qword_100031DC8 && v24++ < v23)
    {
      continue;
    }

    if (!qword_100031DC8)
    {
      syslog(4, "IAPTransportServer: init:%d: __pIapAppleIDBusRootE75 == NULL\n", 2380);
    }

    break;
  }

  v2[191] = 1;
  xmmword_100031F50 = 0u;
  unk_100031F60 = 0u;
  xmmword_100031F70 = 0u;
  unk_100031F80 = 0u;
  xmmword_100031F90 = 0u;
  unk_100031FA0 = 0u;
  qword_100031FB0 = 0;
  qword_100031DD0 = sub_100006BF4(v2, &xmmword_100031F50);
  if (!qword_100031DD0)
  {
    _os_assert_log();
    v22 = _os_crash();
    sub_10001B804(v22);
  }

  v2[188] = MGGetBoolAnswer();
  v16 = MGCopyAnswer();
  v17 = v16;
  if (v16)
  {
    if (CFEqual(v16, @"iPhone"))
    {
      v18 = 1;
    }

    else if (CFEqual(v17, @"iPod"))
    {
      v18 = 2;
    }

    else
    {
      if (!CFEqual(v17, @"iPad"))
      {
LABEL_35:
        CFRelease(v17);
        goto LABEL_36;
      }

      v18 = 3;
    }

    *(v2 + 46) = v18;
    goto LABEL_35;
  }

LABEL_36:
  [v2 updatePortManagers];
  [v2 _setupiAPInterfaceNotifications];
  if (!notify_register_check("com.apple.iaptransportd.notify.availability", &dword_100031BB0))
  {
    *existing = 0;
    notify_get_state(dword_100031BB0, existing);
    if (*existing != 1)
    {
      notify_set_state(dword_100031BB0, 1uLL);
      notify_post("com.apple.iaptransportd.notify.availability");
    }
  }

  _Block_object_dispose(v28, 8);
  return v2;
}

- (void)dealloc
{
  accPowerTimer = self->_accPowerTimer;
  if (accPowerTimer)
  {
    dispatch_source_cancel(accPowerTimer);
    dispatch_release(self->_accPowerTimer);
    self->_accPowerTimer = 0;
  }

  accPowerForPortServiceTimer = self->_accPowerForPortServiceTimer;
  if (accPowerForPortServiceTimer)
  {
    dispatch_source_cancel(accPowerForPortServiceTimer);
    dispatch_release(self->_accPowerForPortServiceTimer);
    self->_accPowerForPortServiceTimer = 0;
  }

  internalListenerQueue = self->_internalListenerQueue;
  if (internalListenerQueue)
  {
    dispatch_sync(internalListenerQueue, &stru_10002D748);
    dispatch_release(self->_internalListenerQueue);
    self->_internalListenerQueue = 0;
  }

  accPowerQueue = self->_accPowerQueue;
  if (accPowerQueue)
  {
    dispatch_release(accPowerQueue);
  }

  self->_accPowerQueue = 0;
  shutdownQ = self->_shutdownQ;
  if (shutdownQ)
  {
    dispatch_sync(shutdownQ, &stru_10002D768);
    dispatch_release(self->_shutdownQ);
    self->_shutdownQ = 0;
  }

  self->_iapPortManagers = 0;
  ioAccMgrPortDetectTimer = self->_ioAccMgrPortDetectTimer;
  if (ioAccMgrPortDetectTimer)
  {
    dispatch_source_cancel(ioAccMgrPortDetectTimer);
    dispatch_release(self->_ioAccMgrPortDetectTimer);
    self->_ioAccMgrPortDetectTimer = 0;
  }

  ioaccessoryPortAddedIterator = self->_ioaccessoryPortAddedIterator;
  if (ioaccessoryPortAddedIterator)
  {
    IOObjectRelease(ioaccessoryPortAddedIterator);
  }

  iAPInterfaceDeviceArrivedIterator = self->_iAPInterfaceDeviceArrivedIterator;
  if (iAPInterfaceDeviceArrivedIterator)
  {
    IOObjectRelease(iAPInterfaceDeviceArrivedIterator);
  }

  iAPInterfaceDeviceRemovedIterator = self->_iAPInterfaceDeviceRemovedIterator;
  if (iAPInterfaceDeviceRemovedIterator)
  {
    IOObjectRelease(iAPInterfaceDeviceRemovedIterator);
  }

  ioAccNotification = self->_ioAccNotification;
  if (ioAccNotification)
  {
    IOObjectRelease(ioAccNotification);
    self->_ioAccNotification = 0;
  }

  v13.receiver = self;
  v13.super_class = IAPTransportServer;
  [(IAPTransportServer *)&v13 dealloc];
}

- (void)run
{
  mkdir(&kEAPipePath, 0x1E8u);
  sub_10001289C(1, 0);
  [(IAPTransportServer *)self bringupPlatform];
  if ((byte_100031DE1 & 1) == 0)
  {
    self->_batteryNotifyPortRef = IONotificationPortCreate(kIOMasterPortDefault);
    Main = CFRunLoopGetMain();
    RunLoopSource = IONotificationPortGetRunLoopSource(self->_batteryNotifyPortRef);
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    batteryNotifyPortRef = self->_batteryNotifyPortRef;
    v6 = IOServiceMatching("IOPMPowerSource");
    IOServiceAddMatchingNotification(batteryNotifyPortRef, "IOServiceFirstMatch", v6, sub_100014928, &self->_batteryNotifyPortRef, &self->_battery_iter);
    sub_100014928(&self->_batteryNotifyPortRef, self->_battery_iter);
    byte_100031DE1 = 1;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.iaptransportd.xpc", self->_internalListenerQueue, 1uLL);
  self->_listener = mach_service;
  if (mach_service)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3052000000;
    v24 = sub_100012FBC;
    internalListenerQueue = self->_internalListenerQueue;
    v25 = sub_100012FCC;
    v26 = internalListenerQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000149C4;
    handler[3] = &unk_10002D790;
    handler[4] = &v21;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(self->_listener);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    NSLog(@"IAPTransportServer::init _listener is not valid!\n");
  }

  v9 = dword_100031BB4;
  if (dword_100031BB4 == -1)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AccPowerOnDelayOnStart", @"com.apple.iaptransportd", 0);
    dword_100031BB4 = AppIntegerValue;
    NSLog(@"Loaded AccPowerOnDelayOnStart=%d\n", AppIntegerValue);
    v9 = dword_100031BB4;
  }

  if (v9 < 1)
  {
    v11 = 0;
  }

  else
  {
    NSLog(@"Override delay acc power on boot: %d -> %d\n", 0, v9);
    v11 = dword_100031BB4;
  }

  *v27 = 0x1500000001;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 16;
  if (sysctl(v27, 2u, &v21, &v19, 0, 0) != -1)
  {
    v18.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v18.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v18, 0);
    if ((v18.tv_sec - v21) >= 61)
    {
      NSLog(@"Not during boot, override delay acc power on boot: %d -> %d\n", v11, 1250);
      v11 = 1250;
    }
  }

  if (qword_100031DC8)
  {
    sub_10000BB54(qword_100031DC8);
    sub_10000C2C4(qword_100031DC8);
  }

  if (qword_100031DD8)
  {
    sub_10000BB54(qword_100031DD8);
    sub_10000C2C4(qword_100031DD8);
  }

  [(IAPTransportServer *)self startIOAccMgrPortDetectTimer:v11];
  self->_serverRunLoop = CFRunLoopGetCurrent();
  dword_100031DE4 = IORegisterForSystemPower(0, &self->_systemPowerNotifyPortRef, sub_100014AF0, &self->_systemPowerIterator);
  if (dword_100031DE4)
  {
    serverRunLoop = self->_serverRunLoop;
    v13 = IONotificationPortGetRunLoopSource(self->_systemPowerNotifyPortRef);
    CFRunLoopAddSource(serverRunLoop, v13, kCFRunLoopCommonModes);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kIAPTransportServerLaunchedNotification", 0, 0, 1u);
  CFRunLoopGetMain();
  if (!IOAccessoryStartVoltageEventMonitor())
  {
    sub_10001883C(1, @"Failed to start lightning receptacle voltage monitoring");
  }

  while ((*&self->serverFlags & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    if (CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0e10, 1u) == kCFRunLoopRunFinished)
    {
      *&self->serverFlags |= 1u;
    }

    objc_autoreleasePoolPop(v15);
  }

  self->_isShuttingDown = 1;
  [(IAPTransportServer *)self deleteAllPorts];
  shutdownQ = self->_shutdownQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014BC8;
  block[3] = &unk_10002D690;
  block[4] = self;
  dispatch_sync(shutdownQ, block);

  qword_100031DC0 = 0;
}

- (void)stopServer:(int)a3 forceExitingImmediately:(BOOL)a4
{
  serverFlags = self->serverFlags;
  self->serverFlags = (*&serverFlags | 2);
  if (a4)
  {
    self->serverFlags = (*&serverFlags | 3);
    CFRunLoopStop(self->_serverRunLoop);
  }

  else
  {
    [(IAPTransportServer *)self performSelectorOnMainThread:"_pollForDeathAfterPromptCompletes" withObject:0 waitUntilDone:0];
  }
}

- (id)iapPortManagerForDevPort:(IapTransport *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [[NSNumber alloc] initWithInt:sub_100003EB8(a3)];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(NSMutableDictionary *)self->_iapPortManagers objectForKey:v4];

  return v6;
}

- (void)updatePortManagers
{
  existing = -1431655766;
  v3 = IOServiceMatching("IOAccessoryManager");
  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v3, &existing);
  if (MatchingServices)
  {
    NSLog(@"ERROR - %s:%s - %d IOServiceGetMatchingServices failed 0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "[IAPTransportServer updatePortManagers]", 2685, MatchingServices);
    return;
  }

  v5 = IOIteratorNext(existing);
  if (v5)
  {
    v6 = v5;
    do
    {
      cf2 = 0xAAAAAAAAAAAAAAAALL;
      v7 = objc_alloc_init(NSMutableString);
      if (IOAccessoryManagerCopyDeviceInfo())
      {
        goto LABEL_12;
      }

      if (qword_100031E08)
      {
        if (CFEqual(qword_100031E08, cf2))
        {
          CFRelease(cf2);
          goto LABEL_12;
        }

        CFRelease(qword_100031E08);
        qword_100031E08 = cf2;
        NSLog(@"Interface device serial number: %@", cf2);
        v8 = qword_100031E08;
      }

      else
      {
        NSLog(@"Interface device serial number: %@", cf2);
        v8 = cf2;
        qword_100031E08 = cf2;
      }

      [IAPEventLogger AddToStr:v7 WithKey:@"InterfaceDeviceSerialNumber" AndValue:[NSString stringWithFormat:@"%@", v8]];
LABEL_12:
      if (IOAccessoryManagerCopyDeviceInfo())
      {
        goto LABEL_19;
      }

      if (qword_100031E10)
      {
        if (CFEqual(qword_100031E10, cf2))
        {
          CFRelease(cf2);
          goto LABEL_19;
        }

        CFRelease(qword_100031E10);
        qword_100031E10 = cf2;
        NSLog(@"Interface module serial number: %@", cf2);
        v9 = qword_100031E10;
      }

      else
      {
        NSLog(@"Interface module serial number: %@", cf2);
        v9 = cf2;
        qword_100031E10 = cf2;
      }

      [IAPEventLogger AddToStr:v7 WithKey:@"InterfaceModuleSerialNumber" AndValue:[NSString stringWithFormat:@"%@", v9]];
LABEL_19:
      if (!IOAccessoryManagerCopyDeviceInfo())
      {
        if (!qword_100031E18)
        {
          NSLog(@"Accessory serial number: %@", cf2);
          v10 = cf2;
          qword_100031E18 = cf2;
LABEL_25:
          [IAPEventLogger AddToStr:v7 WithKey:@"AccessorySerialNumber" AndValue:[NSString stringWithFormat:@"%@", v10]];
          goto LABEL_26;
        }

        if (!CFEqual(qword_100031E18, cf2))
        {
          CFRelease(qword_100031E18);
          qword_100031E18 = cf2;
          NSLog(@"Accessory serial number: %@", cf2);
          v10 = qword_100031E18;
          goto LABEL_25;
        }

        CFRelease(cf2);
      }

LABEL_26:
      if ([v7 length])
      {
        [IAPEventLogger LogMsg:0 WithStr:v7];
      }

      if (!self->_iapPortManagers)
      {
        self->_iapPortManagers = objc_alloc_init(NSMutableDictionary);
      }

      if (![(NSMutableDictionary *)self->_iapPortManagers objectForKey:[NSNumber numberWithInt:IOAccessoryManagerGetPrimaryPort()]])
      {
        v11 = [[IAPTransportManager alloc] initWithService:v6 andNotificationPort:self->_ioaccessoryNotifyPort];
        [(NSMutableDictionary *)self->_iapPortManagers setObject:v11 forKey:[(IAPTransportManager *)v11 portNumber]];
        NSLog(@"%s:%s - %d added PortManager=%hhx service=%d portNumber=%@", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "[IAPTransportServer updatePortManagers]", 2704, v11, v6, [(IAPTransportManager *)v11 portNumber]);
      }

      IOObjectRelease(v6);
      v6 = IOIteratorNext(existing);
    }

    while (v6);
  }

  IOObjectRelease(existing);
}

- (void)detachIOKitPort:(IapTransport *)a3
{
  if (a3)
  {
    v5 = [(NSMutableDictionary *)self->_iapPortManagers objectForKey:[NSNumber numberWithInt:sub_100003EB8(a3)]];
    sub_10000ED60(a3, 8, 0);
    sub_100011860(a3);
    if (v5)
    {
      if (sub_100003EC4([objc_msgSend(v5 "portNumber")]))
      {
        iapPortManagers = self->_iapPortManagers;
        v7 = [v5 portNumber];

        [(NSMutableDictionary *)iapPortManagers removeObjectForKey:v7];
      }
    }
  }
}

- (void)checkXPCConnections
{
  if (!self->_iapd_connection && +[IAPTransportServer supportsIAPD])
  {
    v3 = [[IAPXPCConnection alloc] initWithServiceName:@"com.apple.iapd.xpc" queueName:@"com.apple.iapd.IAPXPCConnection"];
    self->_iapd_connection = v3;
    [(IAPXPCConnection *)v3 setDisconnectBlock:&stru_10002D7B0];
  }

  if (!self->_iap2d_connection)
  {
    v4 = [[IAPXPCConnection alloc] initWithServiceName:@"com.apple.iap2d.xpc" queueName:@"com.apple.iap2d.IAPXPCConnection"];
    self->_iap2d_connection = v4;

    [(IAPXPCConnection *)v4 setDisconnectBlock:&stru_10002D7D0];
  }
}

- (void)sendValidAccResistorIDToIAPD
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000154A8;
  v9 = &unk_10002D7F8;
  v10 = self;
  v11 = &v14;
  v12 = &v22;
  v13 = &v18;
  pthread_mutex_lock(&stru_100031AA8);
  sub_1000154A8(&v6);
  pthread_mutex_unlock(&stru_100031AA8);
  if (*(v23 + 24) == 1 && v19[3])
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = sub_100003EAC(v19[3]);
    xpc_dictionary_set_uint64(v2, "portNumber", v3);
    v4 = sub_100003EB8(v19[3]);
    xpc_dictionary_set_uint64(v2, "portManagerNumber", v4);
    v5 = (*(*v19[3] + 80))(v19[3]);
    xpc_dictionary_set_uint64(v2, "portType", v5);
    xpc_dictionary_set_uint64(v2, "portID", v19[3]);
    xpc_dictionary_set_uint64(v2, "resistorID", *(v15 + 6));
    xpc_dictionary_set_string(v2, "requestType", "resistorArrived");
    if ([IAPTransportServer supportsIAPD:v6])
    {
      [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
    }

    xpc_release(v2);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)cleanupPhysicalConnectorConnections
{
  pthread_mutex_lock(&stru_100031AA8);
  sub_1000155B8();

  pthread_mutex_unlock(&stru_100031AA8);
}

- (void)cleanupStaleClientPorts:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000157C0;
  v3[3] = &unk_10002D6B8;
  v4 = a3;
  v3[4] = self;
  pthread_mutex_lock(&stru_100031AA8);
  sub_1000157C0(v3);
  pthread_mutex_unlock(&stru_100031AA8);
}

- (void)preventIdleSleep:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&stru_100031BB8);
  if (v3)
  {
    if (!self->_hasSleepAssertion)
    {
      v5[0] = @"AssertType";
      v5[1] = @"AssertLevel";
      v6[0] = @"NoIdleSleepAssertion";
      v6[1] = &off_10002F880;
      v5[2] = @"AssertName";
      v5[3] = @"AllowsDeviceRestart";
      v6[2] = @"com.apple.iaptransportd.acc-connected";
      v6[3] = kCFBooleanTrue;
      if (!IOPMAssertionCreateWithProperties([NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4], &self->_sleepAssertionId))
      {
        self->_hasSleepAssertion = 1;
        sub_10001883C(1, @"IAPTRANSPORTD HAS TAKEN A POWER ASSERTION!!!!!!!");
      }
    }
  }

  else if (self->_hasSleepAssertion)
  {
    IOPMAssertionRelease(self->_sleepAssertionId);
    self->_hasSleepAssertion = 0;
    sub_10001883C(1, @"IAPTRANSPORTD HAS RELEASED A POWER ASSERTION!!!!!!!");
  }

  pthread_mutex_unlock(&stru_100031BB8);
}

- (void)updateDeviceUUIDState
{
  if (!self->_iapdPortListContainsItems && !self->_iap2dPortListContainsItems)
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v6, 0);
    v4 = 0;
    deviceUUIDTimestampMs = 1000 * v6.tv_sec + v6.tv_usec / 1000;
    self->_deviceUUIDTimestampMs = deviceUUIDTimestampMs;
    self->_previousPortListDidContainItems = 0;
    deviceUUIDStr = self->_deviceUUIDStr;
    goto LABEL_11;
  }

  if (!self->_deviceUUIDStr)
  {
    goto LABEL_8;
  }

  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v6, 0);
  if (!self->_previousPortListDidContainItems && 1000 * v6.tv_sec - self->_deviceUUIDTimestampMs + v6.tv_usec / 1000 >= 0x493E1)
  {

    self->_deviceUUIDStr = 0;
LABEL_8:
    deviceUUIDStr = [+[NSUUID UUID](NSUUID UUIDString];
    self->_deviceUUIDStr = deviceUUIDStr;
    goto LABEL_9;
  }

  deviceUUIDStr = self->_deviceUUIDStr;
  if (!deviceUUIDStr)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = 1;
  self->_previousPortListDidContainItems = 1;
  deviceUUIDTimestampMs = self->_deviceUUIDTimestampMs;
LABEL_11:
  sub_10001883C(1, @"updateDeviceUUIDState: _iapdPortListContainsItems: %d, _iap2dPortListContainsItems: %d, _deviceUUIDStr: %@, _deviceUUIDTimestampMs: %llu, _previousPortListDidContainItems: %d", self->_iapdPortListContainsItems, self->_iap2dPortListContainsItems, deviceUUIDStr, deviceUUIDTimestampMs, v4);
}

- (void)updateSleepAssertionState
{
  sub_10001883C(1, @"_iapdPortListContainsItems: %d, _iap2dPortListContainsItems: %d, __isOnAC: %d", self->_iapdPortListContainsItems, self->_iap2dPortListContainsItems, byte_100031DE8);
  v3 = (self->_iapdPortListContainsItems || self->_iap2dPortListContainsItems) && (byte_100031DE8 & 1) != 0;

  [(IAPTransportServer *)self preventIdleSleep:v3];
}

- (void)registerClientPortAccessory:(id)a3 connection:(id)a4
{
  if (byte_100031DE0 == 1)
  {
    v15 = v4;
    v16 = v5;
    if (a3)
    {
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_100015C84;
      v12 = &unk_10002D820;
      v13 = a3;
      v14 = self;
      pthread_mutex_lock(&stru_100031AA8);
      sub_100015C84(&v9);
      pthread_mutex_unlock(&stru_100031AA8);
      [(IAPTransportServer *)self createNewClientPort:a3 connection:a4, v9, v10];
    }

    else
    {
      NSLog(@"registerClientPortAccessory bad params", a2, 0, a4);
    }
  }
}

- (void)unregisterClientPortAccessory:(id)a3
{
  if (byte_100031DE0 == 1)
  {
    v5[8] = v3;
    v5[9] = v4;
    if (a3)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100015DF0;
      v5[3] = &unk_10002D820;
      v5[4] = a3;
      v5[5] = self;
      pthread_mutex_lock(&stru_100031AA8);
      sub_100015DF0(v5);
      pthread_mutex_unlock(&stru_100031AA8);
    }

    else
    {
      NSLog(@"unregisterClientPortAccessory bad params", a2);
    }
  }
}

- (void)deleteClientPortsUsingConnection:(id)a3
{
  if (byte_100031DE0 == 1)
  {
    v5[8] = v3;
    v5[9] = v4;
    if (a3)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100015F5C;
      v5[3] = &unk_10002D820;
      v5[4] = a3;
      v5[5] = self;
      pthread_mutex_lock(&stru_100031AA8);
      sub_100015F5C(v5);
      pthread_mutex_unlock(&stru_100031AA8);
    }

    else
    {
      NSLog(@"deleteClientPortsUsingConnection bad params", a2);
    }
  }
}

- (void)clientPortReceivedData:(id)a3 dataPtr:(char *)a4 length:(unsigned __int16)a5
{
  if (byte_100031DE0 == 1)
  {
    v9 = v5;
    v10 = v6;
    if (a3 && a4 && a5)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000160B8;
      v7[3] = &unk_10002D848;
      v7[4] = a3;
      v7[5] = a4;
      v8 = a5;
      pthread_mutex_lock(&stru_100031AA8);
      sub_1000160B8(v7);
      pthread_mutex_unlock(&stru_100031AA8);
    }

    else
    {
      NSLog(@"clientPortReceivedData bad params", a2);
    }
  }
}

- (BOOL)createNewClientPort:(id)a3 connection:(id)a4
{
  v4 = sub_1000056E4(a3, a4);
  v5 = v4;
  if (v4)
  {
    sub_1000117D0(v4);
  }

  return v5 != 0;
}

- (void)setHasAdaptor:(BOOL)a3
{
  byte_100031DB0 = 1;
  sub_100004B78(1);
  notify_set_state(dword_100031DB4, byte_100031DB0);

  notify_post("com.apple.iapd.adaptor.AvailableChanged");
}

- (void)deleteAllPorts
{
  sub_100002668(3);
  if (byte_100031DE0 == 1)
  {
    [(IAPTransportServer *)self cleanupStaleClientPorts:3];
  }

  sub_100016284();
  [(IAPTransportServer *)self deleteWiredPorts];
  if (qword_100031DC8)
  {
    sub_100006D30(qword_100031DC8);
    qword_100031DC8 = 0;
  }

  if (qword_100031DD8)
  {
    sub_100006D30(qword_100031DD8);
    qword_100031DD8 = 0;
  }
}

- (void)_detachClientPort:(IapTransport *)a3
{
  if (a3)
  {
    nullsub_15(a3, 8, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000163B0;
    block[3] = &unk_10002CA90;
    block[4] = a3;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)bringupPlatform
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100016494, @"SBSpringBoardDidLaunchNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000164A8, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  dword_100031DB4 = 0;
  if (!notify_register_check("com.apple.iapd.adaptor.AvailableChanged", &dword_100031DB4))
  {
    state64 = 0;
    notify_get_state(dword_100031DB4, &state64);
    if (state64)
    {
      notify_set_state(dword_100031DB4, 0);
      notify_post("com.apple.iapd.adaptor.AvailableChanged");
    }
  }

  notify_post("com.apple.iapd.adaptor.AvailableChanged");
}

- (void)bringdownPlatform
{
  if (self->_listener)
  {
    dispatch_sync(self->_internalListenerQueue, &stru_10002D868);
    xpc_connection_cancel(self->_listener);
    xpc_release(self->_listener);
    self->_listener = 0;
  }

  if (+[IAPTransportServer supportsIAPD])
  {
    [(IAPXPCConnection *)self->_iapd_connection setDisconnectBlock:0];

    self->_iapd_connection = 0;
  }

  [(IAPXPCConnection *)self->_iap2d_connection setDisconnectBlock:0];

  self->_iap2d_connection = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kIAPTransportServerDiedNotification, 0, 0, 1u);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"SBSpringBoardDidLaunchNotification", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"AppleLanguagePreferencesChangedNotification", 0);
  [(IAPWorkspaceObserver *)self->_workspaceObserver stopObserving];
  Main = CFRunLoopGetMain();
  RunLoopSource = IONotificationPortGetRunLoopSource(self->_ioaccessoryNotifyPort);
  CFRunLoopRemoveSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(self->_ioaccessoryNotifyPort);
  v6 = CFRunLoopGetMain();
  v7 = IONotificationPortGetRunLoopSource(self->_iapInterfaceNotifyPort);
  CFRunLoopRemoveSource(v6, v7, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(self->_iapInterfaceNotifyPort);
  if (byte_100031DE1 == 1)
  {
    v8 = CFRunLoopGetMain();
    v9 = IONotificationPortGetRunLoopSource(self->_batteryNotifyPortRef);
    CFRunLoopRemoveSource(v8, v9, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(self->_batteryNotifyPortRef);
  }

  if (self->_systemPowerIterator)
  {
    IODeregisterForSystemPower(&self->_systemPowerIterator);
  }

  if (dword_100031DE4)
  {
    serverRunLoop = self->_serverRunLoop;
    v11 = IONotificationPortGetRunLoopSource(self->_systemPowerNotifyPortRef);
    CFRunLoopRemoveSource(serverRunLoop, v11, kCFRunLoopCommonModes);
    IONotificationPortDestroy(self->_systemPowerNotifyPortRef);
    IOServiceClose(dword_100031DE4);
  }

  [(IAPTransportServer *)self detachPowerModeNotifications];
  sub_10001289C(1, 0);
  if (!notify_register_check("com.apple.iaptransportd.notify.availability", &dword_100031BB0))
  {
    state64 = 0;
    notify_get_state(dword_100031BB0, &state64);
    if (state64 == 1)
    {
      notify_set_state(dword_100031BB0, 0);
      notify_post("com.apple.iaptransportd.notify.availability");
    }
  }
}

- (void)_updatePlistWithApplicationUninstall:(id)a3
{
  v4 = CFPreferencesCopyAppValue(@"OptionalSDKProtocolsShownKey", @"com.apple.iapd");
  if (v4)
  {
    v5 = v4;
    v6 = [[NSMutableArray alloc] initWithArray:v4];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = [a3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      obj = a3;
      v7 = 0;
      v19 = *v27;
      do
      {
        v8 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = v8;
          v9 = [*(*(&v26 + 1) + 8 * v8) externalAccessoryProtocols];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v23;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v22 + 1) + 8 * i);
                v15 = sub_1000013D0("SBSCopyDisplayIdentifiersForExternalAccessoryProtocol", 2);
                v16 = v15(v14);
                v17 = v16;
                if (v16 && ![v16 count] && objc_msgSend(v5, "containsObject:", objc_msgSend(v14, "lowercaseString")) && objc_msgSend(v6, "containsObject:", objc_msgSend(v14, "lowercaseString")))
                {
                  [v6 removeObject:{objc_msgSend(v14, "lowercaseString")}];
                  NSLog(@"Removing protocol %@ from protocols list", [v14 lowercaseString]);
                  v7 = 1;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v11);
          }

          v8 = v21 + 1;
        }

        while ((v21 + 1) != v20);
        v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
      if ((v7 & (v6 != 0)) == 1)
      {
        CFPreferencesSetAppValue(@"OptionalSDKProtocolsShownKey", v6, @"com.apple.iapd");
        CFPreferencesSynchronize(@"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      }
    }

    CFRelease(v5);
  }
}

@end