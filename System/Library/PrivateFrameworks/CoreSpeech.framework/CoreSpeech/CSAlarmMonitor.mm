@interface CSAlarmMonitor
+ (id)sharedInstance;
- (CSAlarmMonitor)init;
- (int64_t)alarmState;
- (void)_alarmDismissed:(id)dismissed;
- (void)_alarmIsFiring:(id)firing;
- (void)_alarmStateReset:(id)reset;
- (void)_notifyObserver:(id)observer alarmIsFiringState:(int64_t)state;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)initializeAlarmState;
@end

@implementation CSAlarmMonitor

- (int64_t)alarmState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C6010;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_notifyObserver:(id)observer alarmIsFiringState:(int64_t)state
{
  observerCopy = observer;
  self->_alarmFiringState = state;
  [(CSAlarmMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSAlarmMonitor:self didReceiveAlarmChanged:state];
  }
}

- (void)_alarmStateReset:(id)reset
{
  resetCopy = reset;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSAlarmMonitor _alarmStateReset:]";
    v9 = 2112;
    v10 = resetCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %@", buf, 0x16u);
  }

  if (self->_alarmFiringState)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C61E0;
    v6[3] = &unk_100253B48;
    v6[4] = self;
    [(CSAlarmMonitor *)self enumerateObserversInQueue:v6];
  }
}

- (void)_alarmDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSAlarmMonitor _alarmDismissed:]";
    v9 = 2112;
    v10 = dismissedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %@", buf, 0x16u);
  }

  if (self->_alarmFiringState != 2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C6324;
    v6[3] = &unk_100253B48;
    v6[4] = self;
    [(CSAlarmMonitor *)self enumerateObserversInQueue:v6];
  }
}

- (void)_alarmIsFiring:(id)firing
{
  firingCopy = firing;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSAlarmMonitor _alarmIsFiring:]";
    v9 = 2112;
    v10 = firingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %@", buf, 0x16u);
  }

  if (self->_alarmFiringState != 1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C6468;
    v6[3] = &unk_100253B48;
    v6[4] = self;
    [(CSAlarmMonitor *)self enumerateObserversInQueue:v6];
  }
}

- (void)_stopMonitoring
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CSAlarmMonitor _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  v4 = sub_1000C6600();
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:v4 object:0];
  }

  v6 = sub_1000C6714();
  if (v6)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:v6 object:0];
  }

  v8 = sub_1000C6828();
  if (v8)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self name:v8 object:0];
  }

  alarmManager = self->_alarmManager;
  self->_alarmManager = 0;

  self->_alarmFiringState = 0;
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSAlarmMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  [(CSAlarmMonitor *)self _stopMonitoring];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v6 = qword_10029E2A0;
  v19 = qword_10029E2A0;
  if (!qword_10029E2A0)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v21 = sub_1000C6E24;
    v22 = &unk_100253580;
    v23 = &v16;
    sub_1000C6E24(&buf);
    v6 = v17[3];
  }

  v7 = v6;
  _Block_object_dispose(&v16, 8);
  v8 = objc_alloc_init(v6);
  alarmManager = self->_alarmManager;
  self->_alarmManager = v8;

  [(MTAlarmManager *)self->_alarmManager checkIn];
  v10 = sub_1000C6600();
  if (v10)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_alarmIsFiring:" name:v10 object:0];
  }

  v12 = sub_1000C6714();
  if (v12)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"_alarmDismissed:" name:v12 object:0];
  }

  v14 = sub_1000C6828();
  if (v14)
  {
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:self selector:"_alarmStateReset:" name:v14 object:0];
  }

  self->_alarmFiringState = 0;
}

- (void)initializeAlarmState
{
  alarms = [(MTAlarmManager *)self->_alarmManager alarms];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C6F48;
  v6[3] = &unk_100250B18;
  v6[4] = self;
  v4 = [alarms addSuccessBlock:v6];
  v5 = [v4 addFailureBlock:&stru_100250B58];
}

- (CSAlarmMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSAlarmMonitor;
  v2 = [(CSAlarmMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAlarmMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_alarmFiringState = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E298 != -1)
  {
    dispatch_once(&qword_10029E298, &stru_100250AF0);
  }

  v3 = qword_10029E290;

  return v3;
}

@end