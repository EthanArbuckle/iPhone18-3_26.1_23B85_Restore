@interface CSBatteryMonitor
+ (id)sharedInstance;
- (CSBatteryMonitor)init;
- (unsigned)_checkBatteryState;
- (void)_didReceiveBatteryStatusChanged:(unsigned __int8)changed;
- (void)_didReceiveBatteryStatusChangedInQueue:(unsigned __int8)queue;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSBatteryMonitor

- (unsigned)_checkBatteryState
{
  v2 = IOPSDrawingUnlimitedPower();
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Battery";
    if (v2)
    {
      v4 = @"Charger";
    }

    v6 = 136315394;
    v7 = "[CSBatteryMonitor _checkBatteryState]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Power source : %{public}@", &v6, 0x16u);
  }

  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_didReceiveBatteryStatusChanged:(unsigned __int8)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100168248;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  changedCopy = changed;
  [(CSBatteryMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveBatteryStatusChangedInQueue:(unsigned __int8)queue
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001682CC;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  queueCopy = queue;
  [(CSBatteryMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSBatteryMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Power source", &v5, 0xCu);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10016853C;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.powersources.source", &self->_notifyToken, queueCopy, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSBatteryMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitoring : Power source";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSBatteryMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring power source because it was already started";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  self->_batteryState = [(CSBatteryMonitor *)self _checkBatteryState];
}

- (CSBatteryMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSBatteryMonitor;
  result = [(CSBatteryMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_batteryState = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_10029E618 != -1)
    {
      dispatch_once(&qword_10029E618, &stru_100253798);
    }

    v2 = qword_10029E610;
  }

  return v2;
}

@end