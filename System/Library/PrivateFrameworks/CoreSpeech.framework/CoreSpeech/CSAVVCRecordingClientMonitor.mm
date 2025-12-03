@interface CSAVVCRecordingClientMonitor
+ (id)sharedInstance;
- (CSAVVCRecordingClientMonitor)init;
- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)crash;
- (void)_didReceiveAVVCRecordingClientNumberChange:(unint64_t)change;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSAVVCRecordingClientMonitor

- (void)_didReceiveAVVCRecordingClientNumberChange:(unint64_t)change
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAVVCRecordingClientMonitor _didReceiveAVVCRecordingClientNumberChange:]";
    v8 = 2050;
    changeCopy = change;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s update AVVC recording client # : %{public}lu", &v6, 0x16u);
  }

  self->_numOfAVVCRecordingClients = change;
}

- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)crash
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[CSAVVCRecordingClientMonitor CSAudioServerCrashMonitorDidReceiveServerCrash:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Reset AVVC recording client count due to audio server crash", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011AB90;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopMonitoring
{
  v3 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  [v3 setSiriClientRecordStateChangedBlock:0];

  v4 = +[CSAudioServerCrashMonitor sharedInstance];
  [v4 removeObserver:self];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAVVCRecordingClientMonitor _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AVVC recording client count", &v6, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  objc_initWeak(&location, self);
  v5 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011AEAC;
  v10[3] = &unk_100251DC8;
  objc_copyWeak(&v11, &location);
  [v5 siriClientsRecordingCompletionBlock:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011AF90;
  v8[3] = &unk_100253000;
  objc_copyWeak(&v9, &location);
  [v5 setSiriClientRecordStateChangedBlock:v8];
  v6 = +[CSAudioServerCrashMonitor sharedInstance];
  [v6 addObserver:self];

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSAVVCRecordingClientMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AVVC recording client count", buf, 0xCu);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (CSAVVCRecordingClientMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSAVVCRecordingClientMonitor;
  v2 = [(CSAVVCRecordingClientMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAVVCRecordingClientMonitor Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_numOfAVVCRecordingClients = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E408 != -1)
  {
    dispatch_once(&qword_10029E408, &stru_100251D78);
  }

  v3 = qword_10029E400;

  return v3;
}

@end