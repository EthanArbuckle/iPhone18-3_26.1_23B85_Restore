@interface CSBluetoothSpeakerStateMonitor
+ (id)sharedInstance;
- (BOOL)isActive;
- (CSBluetoothSpeakerStateMonitor)init;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)a3;
- (void)_didReceiveBluetoothSpeakerStateChangeNotification:(BOOL)a3;
- (void)_fetchSpeakerStateActiveInfo;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSBluetoothSpeakerStateMonitor

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)a3
{
  v5[0] = @"AVVoiceTriggerPort_BluetoothSpeaker";
  v5[1] = @"AVVoiceTriggerPort_BuiltinSpeaker";
  v6[0] = &__kCFBooleanTrue;
  v6[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  [v4 enableListeningOnPorts:v3 completionBlock:&stru_10024E998];
}

- (void)_didReceiveBluetoothSpeakerStateChangeNotification:(BOOL)a3
{
  self->_isActive = a3;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100028EF0;
  v3[3] = &unk_100253B48;
  v3[4] = self;
  [(CSBluetoothSpeakerStateMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v2 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  [v2 setPortStateChangedBlock:0];
  v7[0] = @"AVVoiceTriggerPort_BluetoothSpeaker";
  v7[1] = @"AVVoiceTriggerPort_BuiltinSpeaker";
  v8[0] = &__kCFBooleanFalse;
  v8[1] = &__kCFBooleanFalse;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 enableListeningOnPorts:v3 completionBlock:&stru_10024E978];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSBluetoothSpeakerStateMonitor _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : BT Speaker state from AVVC", &v5, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100029320;
  v12 = &unk_10024E938;
  objc_copyWeak(&v13, &location);
  [v5 setPortStateChangedBlock:&v9];
  v17[0] = @"AVVoiceTriggerPort_BluetoothSpeaker";
  v17[1] = @"AVVoiceTriggerPort_BuiltinSpeaker";
  v18[0] = &__kCFBooleanTrue;
  v18[1] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2, v9, v10, v11, v12];
  [v5 enableListeningOnPorts:v6 completionBlock:&stru_10024E958];
  v7 = +[CSAudioServerCrashMonitor sharedInstance];
  [v7 addObserver:self];

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSBluetoothSpeakerStateMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : BT Speaker state from AVVC", buf, 0xCu);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100029730;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_fetchSpeakerStateActiveInfo
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029888;
  v9[3] = &unk_10024E910;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 portStateActiveCompletionBlock:v9];

  v6 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v5, v6))
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029960;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (CSBluetoothSpeakerStateMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSBluetoothSpeakerStateMonitor;
  v2 = [(CSBluetoothSpeakerStateMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSBluetoothSpeakerStateMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_isActive = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E010 != -1)
  {
    dispatch_once(&qword_10029E010, &stru_10024E8E8);
  }

  v3 = qword_10029E008;

  return v3;
}

@end