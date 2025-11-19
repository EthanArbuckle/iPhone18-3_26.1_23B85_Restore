@interface IAPServer
+ (id)sharedIAPServer;
+ (void)sendAudioStateChangedNotification;
- (BOOL)isServerStopping;
- (BOOL)isShuttingDown;
- (IAPServer)init;
- (__CFString)deviceClass;
- (__CFString)deviceProductType;
- (id)iapPortManagerForDevPort:(void *)a3;
- (void)_pollForDeathAfterPromptCompletes;
- (void)addNewTransport:(void *)a3;
- (void)bringdownPlatform;
- (void)dealloc;
- (void)deleteAllPorts;
- (void)preventIdleSleep:(int)a3;
- (void)removeTransport:(void *)a3;
- (void)run;
- (void)stopServer:(int)a3;
- (void)stopServer:(int)a3 forceExitingImmediately:(BOOL)a4;
- (void)updateTransportListStates;
@end

@implementation IAPServer

+ (id)sharedIAPServer
{
  result = qword_10012B8C8;
  if (!qword_10012B8C8)
  {
    pthread_mutex_lock(&stru_1001294C8);
    if (!qword_10012B8C8)
    {
      qword_10012B8C8 = objc_alloc_init(IAPServer);
    }

    pthread_mutex_unlock(&stru_1001294C8);
    return qword_10012B8C8;
  }

  return result;
}

+ (void)sendAudioStateChangedNotification
{
  NSLog(@"%s - sending IAPAudioDeviceStateChangedNotification", a2, "+[IAPServer sendAudioStateChangedNotification]");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = IAPAudioDeviceStateChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 0);
}

- (IAPServer)init
{
  GSInitialize();
  v9.receiver = self;
  v9.super_class = IAPServer;
  v3 = [(IAPServer *)&v9 init];
  if (!v3)
  {
    return 0;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_10000AB64, @"com.apple.iapd.LoggingPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  sub_1000DDF4C();
  v3->_isShuttingDown = 0;
  if (!notify_register_check(&kIAPAvailableNotification, &dword_100129508))
  {
    state64 = 0;
    notify_get_state(dword_100129508, &state64);
    if (state64 != 1)
    {
      notify_set_state(dword_100129508, 1uLL);
      notify_post(&kIAPAvailableNotification);
    }
  }

  out_token = 0;
  result = notify_register_check("com.apple.iapd.videoout.SettingsChanged", &out_token);
  if (!result)
  {
    state64 = 0;
    notify_get_state(out_token, &state64);
    if (state64)
    {
      notify_set_state(out_token, 0);
      notify_post("com.apple.iapd.videoout.SettingsChanged");
    }

    result = notify_cancel(out_token);
  }

  if (((v3 + 112) & 3) == 0)
  {
    v3->_disableSleepAssertions = -1;
    result = [[IAPXPCConnection alloc] initWithServiceName:@"com.apple.iaptransportd.xpc" queueName:@"com.apple.iaptransportd.IAPXPCConnection"];
    if (((v3 + 144) & 7) == 0)
    {
      v3->_iaptransportd_connection = result;
      [(IAPServer *)result setDisconnectBlock:&stru_100111C40];
      result = dispatch_queue_create("IAPServerListenerQueue", 0);
      if ((&v3->_internalListenerQueue & 7) == 0)
      {
        v3->_internalListenerQueue = result;
        v6 = CFNotificationCenterGetDarwinNotifyCenter();
        pthread_mutex_lock(&stru_100129510);
        result = sub_100025E90();
        if (result)
        {
          if ((result & 7) == 0)
          {
            (*(result->super.isa + 11))(result, 0);
            CFNotificationCenterAddObserver(v6, 0, sub_10000ABC8, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
            CFNotificationCenterAddObserver(v6, 0, sub_10000ABFC, @"IAPDTransportListChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
            CFNotificationCenterAddObserver(v6, 0, sub_10000AC2C, @"IAPDTransportListItemAddedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
            CFNotificationCenterAddObserver(v6, 0, sub_10000AC6C, @"IAPDEmptyTransportListNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
            result = sub_1000154F0();
            if ((result & 7) == 0 && (&v3->_accessoryEventHander & 7) == 0)
            {
              v3->_accessoryEventHander = result;
              operator new();
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (void)bringdownPlatform
{
  [+[EAManager sharedManager](EAManager "sharedManager")];
  if ((&self->_listener & 7) != 0)
  {
    goto LABEL_56;
  }

  if (self->_listener)
  {
    p_internalListenerQueue = &self->_internalListenerQueue;
    if ((&self->_internalListenerQueue & 7) != 0)
    {
      goto LABEL_56;
    }

    v4 = *p_internalListenerQueue;
    if (!*p_internalListenerQueue)
    {
LABEL_57:
      __break(0x5510u);
      return;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B1C8;
    block[3] = &unk_100111C88;
    block[4] = self;
    dispatch_sync(v4, block);
  }

  v5 = &self->_internalListenerQueue;
  if ((&self->_internalListenerQueue & 7) != 0)
  {
    goto LABEL_56;
  }

  if (!*v5)
  {
    goto LABEL_57;
  }

  dispatch_release(*v5);
  p_iaptransportd_connection = &self->_iaptransportd_connection;
  if ((&self->_iaptransportd_connection & 7) != 0)
  {
    goto LABEL_56;
  }

  if (*p_iaptransportd_connection)
  {
    [(IAPXPCConnection *)*p_iaptransportd_connection setDisconnectBlock:0];

    *p_iaptransportd_connection = 0;
  }

  Main = CFRunLoopGetMain();
  if (((self + 56) & 7) != 0)
  {
    goto LABEL_56;
  }

  v8 = Main;
  RunLoopSource = IONotificationPortGetRunLoopSource(self->_ioaccessoryNotifyPort);
  CFRunLoopRemoveSource(v8, RunLoopSource, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(self->_ioaccessoryNotifyPort);
  p_systemPowerIterator = &self->_systemPowerIterator;
  if ((&self->_systemPowerIterator & 3) != 0)
  {
    goto LABEL_56;
  }

  if (*p_systemPowerIterator)
  {
    IODeregisterForSystemPower(p_systemPowerIterator);
  }

  if (dword_10012B8D0)
  {
    if ((&self->_serverRunLoop & 7) != 0)
    {
      goto LABEL_56;
    }

    p_systemPowerNotifyPortRef = &self->_systemPowerNotifyPortRef;
    if ((&self->_systemPowerNotifyPortRef & 7) != 0)
    {
      goto LABEL_56;
    }

    serverRunLoop = self->_serverRunLoop;
    v13 = IONotificationPortGetRunLoopSource(*p_systemPowerNotifyPortRef);
    CFRunLoopRemoveSource(serverRunLoop, v13, kCFRunLoopCommonModes);
    IONotificationPortDestroy(*p_systemPowerNotifyPortRef);
    IOServiceClose(dword_10012B8D0);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kIAPServerDiedNotification, 0, 0, 1u);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"AppleLanguagePreferencesChangedNotification", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"IAPDTransportListChangedNotification", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"IAPDTransportListItemAddedNotification", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"IAPDEmptyTransportListNotification", 0);
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  v15 = sub_1000CC7A0();
  if (!v15)
  {
    goto LABEL_56;
  }

  if ((v15 & 7) != 0)
  {
    goto LABEL_56;
  }

  if ((&self->_accessoryEventHander & 7) != 0)
  {
    goto LABEL_56;
  }

  (*(*v15 + 24))(v15, self->_accessoryEventHander);
  v16 = sub_1000D6570();
  if (!v16)
  {
    goto LABEL_56;
  }

  v17 = v16;
  if ((v16 & 7) != 0)
  {
    goto LABEL_56;
  }

  v18 = sub_1000546D0();
  if ((v18 & 7) != 0)
  {
    goto LABEL_56;
  }

  (*(*v17 + 24))(v17, v18);
  v19 = sub_1000CB9FC();
  if (!v19)
  {
    goto LABEL_56;
  }

  if ((v19 & 7) != 0)
  {
    goto LABEL_56;
  }

  p_accessoryEQEventHandler = &self->_accessoryEQEventHandler;
  if ((&self->_accessoryEQEventHandler & 7) != 0)
  {
    goto LABEL_56;
  }

  (*(*v19 + 24))(v19, *p_accessoryEQEventHandler);
  v21 = sub_100018DD8();
  if ((v21 & 7) != 0)
  {
    goto LABEL_56;
  }

  p_headsetEventHandler = &self->_headsetEventHandler;
  if ((&self->_headsetEventHandler & 7) != 0)
  {
    goto LABEL_56;
  }

  *p_headsetEventHandler = v21;
  v23 = sub_1000D0360();
  if (!v23)
  {
    goto LABEL_56;
  }

  if ((v23 & 7) != 0)
  {
    goto LABEL_56;
  }

  if ((*p_headsetEventHandler & 7) != 0)
  {
    goto LABEL_56;
  }

  (*(*v23 + 24))(v23);
  v24 = sub_1000CE5B4();
  if (!v24)
  {
    goto LABEL_56;
  }

  v25 = v24;
  if ((v24 & 7) != 0)
  {
    goto LABEL_56;
  }

  v26 = sub_1000188A0();
  if ((v26 & 7) != 0)
  {
    goto LABEL_56;
  }

  (*(*v25 + 24))(v25, v26);
  v27 = sub_1000D5ED0();
  if (!v27)
  {
    goto LABEL_56;
  }

  v28 = v27;
  if ((v27 & 7) != 0)
  {
    goto LABEL_56;
  }

  v29 = sub_100009DA0();
  if ((v29 & 7) != 0)
  {
    goto LABEL_56;
  }

  (*(*v28 + 24))(v28, v29);
  nullsub_9([(IAPServer *)self deleteAllPorts]);
  accessoryEventHander = self->_accessoryEventHander;
  if (accessoryEventHander)
  {
    if ((accessoryEventHander & 7) != 0)
    {
      goto LABEL_56;
    }

    (*(accessoryEventHander->var0 + 1))(accessoryEventHander);
  }

  v31 = *p_accessoryEQEventHandler;
  if (*p_accessoryEQEventHandler)
  {
    if ((v31 & 7) != 0)
    {
      goto LABEL_56;
    }

    (*(v31->var0 + 1))(v31);
  }

  v32 = *p_headsetEventHandler;
  if (!*p_headsetEventHandler)
  {
    goto LABEL_48;
  }

  if ((v32 & 7) != 0)
  {
LABEL_56:
    __break(0x5516u);
    goto LABEL_57;
  }

  (*(v32->var0 + 1))(v32);
LABEL_48:
  if (!notify_register_check(&kIAPAvailableNotification, &dword_100129508))
  {
    v34 = 0;
    notify_get_state(dword_100129508, &v34);
    if (v34 == 1)
    {
      notify_set_state(dword_100129508, 0);
      notify_post(&kIAPAvailableNotification);
    }

    notify_cancel(dword_100129508);
  }

  p_sleepAssertionTimer = &self->_sleepAssertionTimer;
  if ((p_sleepAssertionTimer & 7) != 0)
  {
    goto LABEL_56;
  }

  if (*p_sleepAssertionTimer)
  {
    CFRunLoopTimerInvalidate(*p_sleepAssertionTimer);
    CFRelease(*p_sleepAssertionTimer);
  }
}

- (void)dealloc
{
  if (((self + 120) & 7) != 0)
  {
    goto LABEL_9;
  }

  self->_iapPortManagers = 0;
  p_deviceClass = &self->_deviceClass;
  if ((&self->_deviceClass & 7) != 0)
  {
    goto LABEL_9;
  }

  if (*p_deviceClass)
  {
    CFRelease(*p_deviceClass);
  }

  p_deviceProductType = &self->_deviceProductType;
  if ((&self->_deviceProductType & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    if (*p_deviceProductType)
    {
      CFRelease(*p_deviceProductType);
    }

    v5.receiver = self;
    v5.super_class = IAPServer;
    [(IAPServer *)&v5 dealloc];
  }
}

- (void)run
{
  Current = CFRunLoopGetCurrent();
  if ((&self->_serverRunLoop & 7) != 0)
  {
    goto LABEL_15;
  }

  self->_serverRunLoop = Current;
  [+[IAPStackshot sharedInstance](IAPStackshot start];
  p_systemPowerNotifyPortRef = &self->_systemPowerNotifyPortRef;
  dword_10012B8D0 = IORegisterForSystemPower(0, &self->_systemPowerNotifyPortRef, sub_10000B518, &self->_systemPowerIterator);
  if (dword_10012B8D0)
  {
    if ((p_systemPowerNotifyPortRef & 7) != 0)
    {
      goto LABEL_15;
    }

    serverRunLoop = self->_serverRunLoop;
    RunLoopSource = IONotificationPortGetRunLoopSource(*p_systemPowerNotifyPortRef);
    CFRunLoopAddSource(serverRunLoop, RunLoopSource, kCFRunLoopCommonModes);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kIAPServerLaunchedNotification, 0, 0, 1u);
  sub_10004AAD8();
  p_internalListenerQueue = &self->_internalListenerQueue;
  if ((&self->_internalListenerQueue & 7) != 0)
  {
    goto LABEL_15;
  }

  v9 = *p_internalListenerQueue;
  if (!*p_internalListenerQueue)
  {
    goto LABEL_16;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B67C;
  block[3] = &unk_100111C88;
  block[4] = self;
  dispatch_async(v9, block);
  v10 = xpc_dictionary_create(0, 0, 0);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  xpc_dictionary_set_string(v10, "requestType", "ping");
  if (((self + 144) & 7) != 0 || ([(IAPXPCConnection *)self->_iaptransportd_connection sendMessage:v11], xpc_release(v11), p_serverFlags = &self->serverFlags, (&self->serverFlags & 3) != 0))
  {
LABEL_15:
    __break(0x5516u);
LABEL_16:
    __break(0x5510u);
    return;
  }

  while ((*p_serverFlags & 1) == 0)
  {
    v13 = objc_alloc_init(NSAutoreleasePool);
    if (CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0e10, 1u) == kCFRunLoopRunFinished)
    {
      *p_serverFlags |= 1u;
    }
  }

  self->_isShuttingDown = 1;
  [(IAPServer *)self bringdownPlatform];

  qword_10012B8C8 = 0;
}

- (void)_pollForDeathAfterPromptCompletes
{
  if (((self + 16) & 3) != 0 || (*&self->serverFlags |= 1u, (&self->_serverRunLoop & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    CFRunLoopStop(self->_serverRunLoop);
  }
}

- (void)stopServer:(int)a3
{
  if (a3 >= 4)
  {
    __break(0x550Au);
  }

  [IAPServer stopServer:"stopServer:forceExitingImmediately:" forceExitingImmediately:?];
}

- (void)stopServer:(int)a3 forceExitingImmediately:(BOOL)a4
{
  if ((&self->serverFlags & 3) != 0)
  {
    goto LABEL_12;
  }

  v4 = a4;
  *&self->serverFlags |= 2u;
  if (qword_10012B8D8)
  {

    qword_10012B8D8 = 0;
  }

  if (v4)
  {
    *&self->serverFlags |= 1u;
    if ((&self->_serverRunLoop & 7) == 0)
    {
      serverRunLoop = self->_serverRunLoop;

      CFRunLoopStop(serverRunLoop);
      return;
    }

LABEL_12:
    __break(0x5516u);
    return;
  }

  [(IAPServer *)self performSelectorOnMainThread:"_pollForDeathAfterPromptCompletes" withObject:0 waitUntilDone:0];
}

- (BOOL)isServerStopping
{
  if ((&self->serverFlags & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    LODWORD(self) = (*&self->serverFlags >> 1) & 1;
  }

  return self;
}

- (__CFString)deviceClass
{
  p_length = &self[2].length;
  if ((&self[2].length & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self = *p_length;
    if (!*p_length)
    {
      self = MGCopyAnswer();
      *p_length = self;
    }

    if (!self)
    {
      return &stru_100119FF8;
    }
  }

  return self;
}

- (__CFString)deviceProductType
{
  v2 = &self[3];
  if ((&self[3] & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self = *v2;
    if (!*v2)
    {
      self = MGCopyAnswer();
      *v2 = self;
    }

    if (!self)
    {
      return &stru_100119FF8;
    }
  }

  return self;
}

- (void)preventIdleSleep:(int)a3
{
  p_disableSleepAssertions = &self->_disableSleepAssertions;
  if ((&self->_disableSleepAssertions & 3) != 0)
  {
    goto LABEL_24;
  }

  v6 = *p_disableSleepAssertions;
  if (*p_disableSleepAssertions == -1)
  {
    v6 = CFPreferencesGetAppBooleanValue(@"SuppressSleepAssertions", @"com.apple.iapd", 0) != 0;
    *p_disableSleepAssertions = v6;
  }

  if (v6 != 1)
  {
    pthread_mutex_lock(&stru_100129510);
    p_sleepAssertionTimer = &self->_sleepAssertionTimer;
    if ((&self->_sleepAssertionTimer & 7) != 0)
    {
      goto LABEL_24;
    }

    if (*p_sleepAssertionTimer)
    {
      CFRunLoopTimerInvalidate(*p_sleepAssertionTimer);
      CFRelease(*p_sleepAssertionTimer);
      *p_sleepAssertionTimer = 0;
    }

    hasSleepAssertion = self->_hasSleepAssertion;
    if (a3 < 1)
    {
      if (hasSleepAssertion > 1)
      {
        goto LABEL_25;
      }

      if ((hasSleepAssertion & 1) == 0)
      {
        goto LABEL_18;
      }

      if ((&self->_sleepAssertionId & 3) != 0)
      {
        goto LABEL_24;
      }

      IOPMAssertionRelease(self->_sleepAssertionId);
      v9 = 0;
    }

    else
    {
      if (hasSleepAssertion >= 2)
      {
        goto LABEL_25;
      }

      if (hasSleepAssertion)
      {
        goto LABEL_18;
      }

      v13[0] = @"AssertType";
      v13[1] = @"AssertLevel";
      v14[0] = @"NoIdleSleepAssertion";
      v14[1] = &off_100121578;
      v13[2] = @"AssertName";
      v13[3] = @"AllowsDeviceRestart";
      v14[2] = @"com.apple.iapd.acc-connected";
      v14[3] = kCFBooleanTrue;
      if (IOPMAssertionCreateWithProperties([NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4], &self->_sleepAssertionId))
      {
        goto LABEL_18;
      }

      v9 = 1;
    }

    self->_hasSleepAssertion = v9;
LABEL_18:
    v10 = self->_hasSleepAssertion;
    if (v10 > 1)
    {
      goto LABEL_25;
    }

    if ((v10 & 1) == 0)
    {
LABEL_22:
      pthread_mutex_unlock(&stru_100129510);
      return;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v12 = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + a3, 0.0, 0, 0, sub_10000BD2C, 0);
    self->_sleepAssertionTimer = v12;
    if ((&self->_serverRunLoop & 7) == 0)
    {
      CFRunLoopAddTimer(self->_serverRunLoop, v12, kCFRunLoopCommonModes);
      goto LABEL_22;
    }

LABEL_24:
    __break(0x5516u);
LABEL_25:
    __break(0x550Au);
  }
}

- (id)iapPortManagerForDevPort:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  result = [[NSNumber alloc] initWithInt:sub_1000270C8(a3)];
  if (!result)
  {
    return 0;
  }

  if ((&self->_iapPortManagers & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = result;
    v6 = [(NSMutableDictionary *)self->_iapPortManagers objectForKey:result];

    return v6;
  }

  return result;
}

- (void)addNewTransport:(void *)a3
{
  if (!a3)
  {
    goto LABEL_14;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_14;
  }

  (*(*a3 + 56))(a3, a2);
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  p_iapPortManagers = &self->_iapPortManagers;
  if ((&self->_iapPortManagers & 7) != 0)
  {
    goto LABEL_14;
  }

  v7 = ServiceWithPrimaryPort;
  if (!*p_iapPortManagers)
  {
    *p_iapPortManagers = objc_alloc_init(NSMutableDictionary);
  }

  v10 = [[NSNumber alloc] initWithLong:(*(*a3 + 56))(a3)];
  if ([*p_iapPortManagers objectForKey:?])
  {
    goto LABEL_9;
  }

  v8 = [IAPPortManager alloc];
  if ((&self->_ioaccessoryNotifyPort & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return;
  }

  v9 = [(IAPPortManager *)v8 initWithService:v7 andNotificationPort:self->_ioaccessoryNotifyPort];
  [*p_iapPortManagers setObject:v9 forKey:{-[IAPPortManager portNumber](v9, "portNumber")}];

LABEL_9:
  if (v7)
  {
    IOObjectRelease(v7);
  }
}

- (void)removeTransport:(void *)a3
{
  p_iapPortManagers = &self->_iapPortManagers;
  if ((&self->_iapPortManagers & 7) != 0)
  {
    goto LABEL_11;
  }

  if (!*p_iapPortManagers)
  {
    return;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (sub_1000270C8(a3) < 6)
  {
    return;
  }

  v5 = [NSNumber alloc];
  if (!a3)
  {
LABEL_11:
    __break(0x5516u);
    return;
  }

  v6 = [v5 initWithLong:(*(*a3 + 56))(a3)];
  if (v6)
  {
    v7 = v6;
    [*p_iapPortManagers removeObjectForKey:v6];
  }
}

- (void)updateTransportListStates
{
  v2 = sub_10000C0EC();
  pthread_mutex_lock(&stru_10012B758);
  v3 = *(v2 + 16);
  pthread_mutex_unlock(&stru_10012B758);
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_BOOL(v4, "transportListContainsItems", v3 != 0);
    xpc_dictionary_set_string(v5, "requestType", "iapdTransportListStates");
    [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];

    xpc_release(v5);
  }

  else
  {
    __break(0x5510u);
  }
}

- (void)deleteAllPorts
{
  v2 = sub_10000C0EC();
  pthread_mutex_lock(&stru_10012B758);
  v3 = *(v2 + 8);
  if (v3 == v2)
  {
LABEL_12:

    pthread_mutex_unlock(&stru_10012B758);
  }

  else
  {
    while (v3 && (v3 & 7) == 0)
    {
      v4 = *(v3 + 16);
      if (!v4 || (*(v3 + 16) & 7) != 0)
      {
        break;
      }

      *(v4 + 72) = 1;
      v6 = sub_1000C4254();
      if (!v6 || (v6 & 7) != 0)
      {
        break;
      }

      (*(*v6 + 48))(v6, 8, 0, *(v3 + 16), 0);
      v3 = *(v3 + 8);
      if (v3 == v2)
      {
        goto LABEL_12;
      }
    }

    __break(0x5516u);
  }
}

- (BOOL)isShuttingDown
{
  if (self->_isShuttingDown >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_isShuttingDown;
  }

  return self;
}

@end