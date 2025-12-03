@interface CSAudioSessionInfoProvider
+ (id)sharedInstance;
- (CSAudioSessionInfoProvider)init;
- (unsigned)audioSessionIdForDeviceId:(id)id;
- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)crash;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart;
- (void)_audioRouteChanged:(id)changed;
- (void)_deregisterAudioSessionNotifications;
- (void)_handleInterruption:(id)interruption;
- (void)_registerAudioRouteChangeNotification;
- (void)_registerAudioSessionNotifications;
- (void)_registerInterruptionNotification;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSAudioSessionInfoProvider

- (void)_deregisterAudioSessionNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioSessionInfoProvider _deregisterAudioSessionNotifications]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring AudioSession activities", &v5, 0xCu);
  }
}

- (void)_registerAudioSessionNotifications
{
  [(CSAudioSessionInfoProvider *)self _registerInterruptionNotification];

  [(CSAudioSessionInfoProvider *)self _registerAudioRouteChangeNotification];
}

- (void)_audioRouteChanged:(id)changed
{
  changedCopy = changed;
  sessionInfoQueue = self->_sessionInfoQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026058;
  v7[3] = &unk_100253C48;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(sessionInfoQueue, v7);
}

- (void)_handleInterruption:(id)interruption
{
  interruptionCopy = interruption;
  sessionInfoQueue = self->_sessionInfoQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000262C4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = interruptionCopy;
  v6 = interruptionCopy;
  dispatch_async(sessionInfoQueue, v7);
}

- (void)_registerAudioRouteChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[AVAudioSession sharedInstance];
  [v4 addObserver:self selector:"_audioRouteChanged:" name:AVAudioSessionRouteChangeNotification object:v5];

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSAudioSessionInfoProvider _registerAudioRouteChangeNotification]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AudioSessionRouteChangeNotification", &v7, 0xCu);
  }
}

- (void)_registerInterruptionNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[AVAudioSession sharedInstance];
  [v4 addObserver:self selector:"_handleInterruption:" name:AVAudioSessionInterruptionNotification object:v5];

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSAudioSessionInfoProvider _registerInterruptionNotification]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AudioSessionInterruption", &v7, 0xCu);
  }
}

- (void)_stopMonitoring
{
  v3 = +[CSAudioServerCrashMonitor sharedInstance];
  [v3 removeObserver:self];

  [(CSAudioSessionInfoProvider *)self _deregisterAudioSessionNotifications];
}

- (void)_startMonitoring
{
  v3 = +[CSAudioServerCrashMonitor sharedInstance];
  [v3 addObserver:self];

  [(CSAudioSessionInfoProvider *)self _registerAudioSessionNotifications];
}

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart
{
  sessionInfoQueue = self->_sessionInfoQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000267EC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(sessionInfoQueue, block);
}

- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)crash
{
  sessionInfoQueue = self->_sessionInfoQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000269E8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(sessionInfoQueue, block);
}

- (unsigned)audioSessionIdForDeviceId:(id)id
{
  idCopy = id;
  v4 = +[CSUtils supportRemoraVoiceTrigger];
  if (idCopy && v4)
  {
    v5 = [CSAudioRecordContext contextForRemoraVoiceTriggerWithDeviceId:idCopy];
    avvcContextSettings = [v5 avvcContextSettings];

    v7 = +[AVVCSessionFactory sharedInstance];
    v15 = 0;
    v8 = [v7 sessionForContext:avvcContextSettings error:&v15];
    v9 = v15;

    if (v8)
    {
      opaqueSessionID = [v8 opaqueSessionID];
    }

    else
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v13 = v11;
        localizedDescription = [v9 localizedDescription];
        *buf = 136315394;
        v17 = "[CSAudioSessionInfoProvider audioSessionIdForDeviceId:]";
        v18 = 2114;
        v19 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Session Query Failed : %{public}@", buf, 0x16u);
      }

      opaqueSessionID = 0;
    }
  }

  else
  {
    avvcContextSettings = +[AVAudioSession sharedInstance];
    opaqueSessionID = [avvcContextSettings opaqueSessionID];
  }

  return opaqueSessionID;
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    sessionInfoQueue = self->_sessionInfoQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100026DC8;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(sessionInfoQueue, v7);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    sessionInfoQueue = self->_sessionInfoQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100026ECC;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(sessionInfoQueue, v7);
  }
}

- (void)dealloc
{
  [(CSAudioSessionInfoProvider *)self _deregisterAudioSessionNotifications];
  v3.receiver = self;
  v3.super_class = CSAudioSessionInfoProvider;
  [(CSAudioSessionInfoProvider *)&v3 dealloc];
}

- (CSAudioSessionInfoProvider)init
{
  v8.receiver = self;
  v8.super_class = CSAudioSessionInfoProvider;
  v2 = [(CSAudioSessionInfoProvider *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioSessionInfoProvider", 0);
    sessionInfoQueue = v2->_sessionInfoQueue;
    v2->_sessionInfoQueue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029DFF8 != -1)
  {
    dispatch_once(&qword_10029DFF8, &stru_10024E808);
  }

  v3 = qword_10029E000;

  return v3;
}

@end