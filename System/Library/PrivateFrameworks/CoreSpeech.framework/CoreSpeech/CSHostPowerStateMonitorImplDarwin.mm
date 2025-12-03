@interface CSHostPowerStateMonitorImplDarwin
+ (id)sharedInstance;
- (CSHostPowerStateMonitorImplDarwin)init;
- (int)_fetchHostStateWithService:(unsigned int)service;
- (void)_didReceiveDarwinHostStateChangeNotification:(int64_t)notification;
- (void)_notifyObserver:(id)observer withDarwinHostState:(int64_t)state;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSHostPowerStateMonitorImplDarwin

- (void)_notifyObserver:(id)observer withDarwinHostState:(int64_t)state
{
  observerCopy = observer;
  [(CSHostPowerStateMonitorImplDarwin *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSHostPowerStateMonitor:self didReceiveDarwinHostStateChange:state];
  }
}

- (void)_didReceiveDarwinHostStateChangeNotification:(int64_t)notification
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10011CFEC;
  v3[3] = &unk_1002539B8;
  v3[4] = self;
  v3[5] = notification;
  [(CSHostPowerStateMonitorImplDarwin *)self enumerateObserversInQueue:v3];
}

- (int)_fetchHostStateWithService:(unsigned int)service
{
  v4 = -1;
  valuePtr = -1;
  CFProperty = IORegistryEntryCreateCFProperty(service, @"HostState", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
    }

    CFRelease(v6);
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[CSHostPowerStateMonitorImplDarwin _fetchHostStateWithService:]";
      v13 = 1026;
      v14 = valuePtr;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Darwin Host State update : %{public}d", buf, 0x12u);
    }

    v4 = valuePtr;
  }

  self->_hostState = v4;
  return v4;
}

- (void)_stopMonitoring
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSHostPowerStateMonitorImplDarwin _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Host power state update", &v3, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v4 = IONotificationPortCreate(kIOMainPortDefault);
  self->_notificationPort = v4;
  if (v4)
  {
    v5 = IOServiceMatching("AppleDisplayPlatformControl");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    if (MatchingService)
    {
      v7 = MatchingService;
      IONotificationPortSetDispatchQueue(self->_notificationPort, &_dispatch_main_q);
      v8 = IOServiceAddInterestNotification(self->_notificationPort, v7, "IOGeneralInterest", sub_10011D4C4, self, &self->_serviceNotification);
      v9 = CSLogContextFacilityCoreSpeech;
      if (v8)
      {
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315138;
          v15 = "[CSHostPowerStateMonitorImplDarwin _startMonitoringWithQueue:]";
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to register host state notification", &v14, 0xCu);
        }
      }

      else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[CSHostPowerStateMonitorImplDarwin _startMonitoringWithQueue:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Host power state update", &v14, 0xCu);
      }

      IOObjectRelease(v7);
    }

    else
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = "[CSHostPowerStateMonitorImplDarwin _startMonitoringWithQueue:]";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to find matching service for AppleDisplayPlatformControl", &v14, 0xCu);
      }
    }

    if (!self->_serviceNotification)
    {
      v12 = CSLogContextFacilityCoreSpeech;
      serviceNotification = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR);
      if (serviceNotification)
      {
        v14 = 136315138;
        v15 = "[CSHostPowerStateMonitorImplDarwin _startMonitoringWithQueue:]";
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Invalid service notification!", &v14, 0xCu);
        serviceNotification = self->_serviceNotification;
      }

      IOObjectRelease(serviceNotification);
      self->_serviceNotification = 0;
    }
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSHostPowerStateMonitorImplDarwin _startMonitoringWithQueue:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Invalid notification port!", &v14, 0xCu);
    }
  }
}

- (CSHostPowerStateMonitorImplDarwin)init
{
  v8.receiver = self;
  v8.super_class = CSHostPowerStateMonitorImplDarwin;
  v2 = [(CSHostPowerStateMonitorImplDarwin *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_serviceNotification = 0;
    v4 = IOServiceMatching("AppleDisplayPlatformControl");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    if (MatchingService)
    {
      v6 = [(CSHostPowerStateMonitorImplDarwin *)v3 _fetchHostStateWithService:MatchingService];
    }

    else
    {
      v6 = -1;
    }

    v3->_hostState = v6;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10029E428 != -1)
  {
    dispatch_once(&qword_10029E428, &stru_100251EA8);
  }

  v3 = qword_10029E420;

  return v3;
}

@end