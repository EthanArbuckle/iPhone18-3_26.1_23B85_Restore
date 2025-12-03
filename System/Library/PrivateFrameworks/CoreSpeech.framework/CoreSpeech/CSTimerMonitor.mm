@interface CSTimerMonitor
+ (id)sharedInstance;
- (BOOL)_isSleepTimer:(id)timer;
- (CSTimerMonitor)init;
- (int64_t)timerState;
- (void)_notifyObserver:(id)observer timerIsFiringState:(int64_t)state;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)_timerDismissed:(id)dismissed;
- (void)_timerIsFiring:(id)firing;
- (void)_timerStateReset:(id)reset;
- (void)initializeTimerState;
@end

@implementation CSTimerMonitor

- (int64_t)timerState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004D568;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_notifyObserver:(id)observer timerIsFiringState:(int64_t)state
{
  observerCopy = observer;
  self->_timerFiringState = state;
  [(CSTimerMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSTimerMonitor:self didReceiveTimerChanged:state];
  }
}

- (void)_timerStateReset:(id)reset
{
  resetCopy = reset;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSTimerMonitor _timerStateReset:]";
    v9 = 2112;
    v10 = resetCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %@", buf, 0x16u);
  }

  if (self->_timerFiringState)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004D738;
    v6[3] = &unk_100253B48;
    v6[4] = self;
    [(CSTimerMonitor *)self enumerateObserversInQueue:v6];
  }
}

- (void)_timerDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSTimerMonitor _timerDismissed:]";
    v9 = 2112;
    v10 = dismissedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %@", buf, 0x16u);
  }

  if (self->_timerFiringState != 2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004D87C;
    v6[3] = &unk_100253B48;
    v6[4] = self;
    [(CSTimerMonitor *)self enumerateObserversInQueue:v6];
  }
}

- (void)_timerIsFiring:(id)firing
{
  firingCopy = firing;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSTimerMonitor _timerIsFiring:]";
    v9 = 2112;
    v10 = firingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %@", buf, 0x16u);
  }

  if (![(CSTimerMonitor *)self _isSleepTimer:firingCopy]&& self->_timerFiringState != 1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004D9D0;
    v6[3] = &unk_100253B48;
    v6[4] = self;
    [(CSTimerMonitor *)self enumerateObserversInQueue:v6];
  }
}

- (BOOL)_isSleepTimer:(id)timer
{
  timerCopy = timer;
  userInfo = [timerCopy userInfo];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v5 = qword_10029E090;
  v27 = qword_10029E090;
  if (!qword_10029E090)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10004DC10;
    v22 = &unk_100253580;
    v23 = &v24;
    v6 = sub_10004DC60();
    v25[3] = dlsym(v6, "MTTimerManagerTimersKey");
    qword_10029E090 = *(v23[1] + 24);
    v5 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v5)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v7 = [userInfo objectForKey:*v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        sound = [*(*(&v15 + 1) + 8 * i) sound];
        interruptAudio = [sound interruptAudio];

        if (interruptAudio)
        {
          LOBYTE(v9) = 1;
          goto LABEL_14;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v9;
}

- (void)_stopMonitoring
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CSTimerMonitor _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  v4 = sub_10004DF6C();
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:v4 object:0];
  }

  v6 = sub_10004E080();
  if (v6)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:v6 object:0];
  }

  v8 = sub_10004E194();
  if (v8)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self name:v8 object:0];
  }

  timerManager = self->_timerManager;
  self->_timerManager = 0;

  self->_timerFiringState = 0;
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSTimerMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  [(CSTimerMonitor *)self _stopMonitoring];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v6 = qword_10029E068;
  v19 = qword_10029E068;
  if (!qword_10029E068)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v21 = sub_10004E60C;
    v22 = &unk_100253580;
    v23 = &v16;
    sub_10004E60C(&buf);
    v6 = v17[3];
  }

  v7 = v6;
  _Block_object_dispose(&v16, 8);
  v8 = objc_alloc_init(v6);
  timerManager = self->_timerManager;
  self->_timerManager = v8;

  [(MTTimerManager *)self->_timerManager checkIn];
  v10 = sub_10004DF6C();
  if (v10)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_timerIsFiring:" name:v10 object:0];
  }

  v12 = sub_10004E080();
  if (v12)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"_timerDismissed:" name:v12 object:0];
  }

  v14 = sub_10004E194();
  if (v14)
  {
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:self selector:"_timerStateReset:" name:v14 object:0];
  }

  self->_timerFiringState = 0;
}

- (void)initializeTimerState
{
  timers = [(MTTimerManager *)self->_timerManager timers];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004E730;
  v6[3] = &unk_100250B18;
  v6[4] = self;
  v4 = [timers addSuccessBlock:v6];
  v5 = [v4 addFailureBlock:&stru_10024F278];
}

- (CSTimerMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSTimerMonitor;
  v2 = [(CSTimerMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSTimerMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_timerFiringState = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E060 != -1)
  {
    dispatch_once(&qword_10029E060, &stru_10024F258);
  }

  v3 = qword_10029E058;

  return v3;
}

@end