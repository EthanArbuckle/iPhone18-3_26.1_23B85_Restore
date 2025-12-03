@interface CSMediaPlayingMonitor
+ (id)sharedInstance;
- (CSMediaPlayingMonitor)init;
- (int64_t)mediaPlayingState;
- (void)_notePossiblePlayPausedStateChange:(id)change;
- (void)_notifyObserver:(id)observer mediaIsPlayingState:(int64_t)state;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)initializeMediaPlayingState;
- (void)mediaPlayingStateWithCompletion:(id)completion;
@end

@implementation CSMediaPlayingMonitor

- (void)mediaPlayingStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100166FEC;
    v7[3] = &unk_100253718;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (int64_t)mediaPlayingState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001670BC;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_notifyObserver:(id)observer mediaIsPlayingState:(int64_t)state
{
  observerCopy = observer;
  [(CSMediaPlayingMonitor *)self notifyObserver:observerCopy];
  self->_mediaIsPlaying = state;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSMediaPlayingMonitor:self didReceiveMediaPlayingChanged:state];
  }
}

- (void)_notePossiblePlayPausedStateChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
  bOOLValue = [v5 BOOLValue];

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NOT PLAYING";
    v12 = "[CSMediaPlayingMonitor _notePossiblePlayPausedStateChange:]";
    *buf = 136315650;
    if (bOOLValue)
    {
      v8 = "PLAYING";
    }

    v13 = 2080;
    v14 = v8;
    v15 = 1024;
    v16 = bOOLValue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s MediaRemote reported the now playing app playback state changed to %s (state %d)", buf, 0x1Cu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001672D0;
  v9[3] = &unk_1002537E8;
  v9[4] = self;
  v10 = bOOLValue;
  [(CSMediaPlayingMonitor *)self enumerateObserversInQueue:v9];
}

- (void)_stopMonitoring
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification object:0];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSMediaPlayingMonitor _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring MediaRemote: media playback", &v5, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  [(CSMediaPlayingMonitor *)self _stopMonitoring];
  MRMediaRemoteRegisterForNowPlayingNotifications();

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_notePossiblePlayPausedStateChange:" name:kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification object:0];

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSMediaPlayingMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring MediaRemote: media playback", &v7, 0xCu);
  }
}

- (void)initializeMediaPlayingState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167548;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSMediaPlayingMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSMediaPlayingMonitor;
  v2 = [(CSMediaPlayingMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSMediaPlayingMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_mediaIsPlaying = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_10029E5F8 != -1)
    {
      dispatch_once(&qword_10029E5F8, &stru_1002536C8);
    }

    v2 = qword_10029E5F0;
  }

  return v2;
}

@end