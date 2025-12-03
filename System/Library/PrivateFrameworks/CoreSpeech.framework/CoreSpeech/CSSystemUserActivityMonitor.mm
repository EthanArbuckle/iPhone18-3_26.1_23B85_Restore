@interface CSSystemUserActivityMonitor
+ (id)sharedInstance;
- (CSSystemUserActivityMonitor)init;
- (int64_t)systemUserActivityState;
- (void)_fetchSystemUserActivityState;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)dealloc;
@end

@implementation CSSystemUserActivityMonitor

- (int64_t)systemUserActivityState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017ABC;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_fetchSystemUserActivityState
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSSystemUserActivityMonitor _fetchSystemUserActivityState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  systemUserActivityNotificationToken = self->_systemUserActivityNotificationToken;
  if (systemUserActivityNotificationToken == -1)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315394;
    v14 = "[CSSystemUserActivityMonitor _fetchSystemUserActivityState]";
    v15 = 1024;
    LODWORD(v16) = -1;
    v7 = "%s Invalid notification token %d";
    v8 = v10;
    v9 = 18;
    goto LABEL_9;
  }

  state64 = 0;
  state = notify_get_state(systemUserActivityNotificationToken, &state64);
  v6 = CSLogContextFacilityCoreSpeech;
  if (state)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315138;
    v14 = "[CSSystemUserActivityMonitor _fetchSystemUserActivityState]";
    v7 = "%s Failed to fetch user idle activity state";
    v8 = v6;
    v9 = 12;
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
    return;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[CSSystemUserActivityMonitor _fetchSystemUserActivityState]";
    v15 = 2048;
    v16 = state64;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Current user activity: %llu", buf, 0x16u);
  }

  self->_userActivityStatus = state64 != 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017D38;
  v11[3] = &unk_100253B48;
  v11[4] = self;
  [(CSSystemUserActivityMonitor *)self enumerateObserversInQueue:v11];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017E5C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(workQueue, v7);
}

- (void)_stopMonitoring
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018190;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)dealloc
{
  [(CSSystemUserActivityMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = CSSystemUserActivityMonitor;
  [(CSSystemUserActivityMonitor *)&v3 dealloc];
}

- (CSSystemUserActivityMonitor)init
{
  v7.receiver = self;
  v7.super_class = CSSystemUserActivityMonitor;
  v2 = [(CSSystemUserActivityMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_systemUserActivityNotificationToken = -1;
    v4 = dispatch_queue_create("com.apple.corespeech.CSSystemUserActivityMonitor", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v4;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10029DF30 != -1)
  {
    dispatch_once(&qword_10029DF30, &stru_10024E5D0);
  }

  v3 = qword_10029DF28;

  return v3;
}

@end