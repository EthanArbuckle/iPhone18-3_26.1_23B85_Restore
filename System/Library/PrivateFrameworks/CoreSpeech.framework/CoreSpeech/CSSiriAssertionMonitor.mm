@interface CSSiriAssertionMonitor
+ (CSSiriAssertionMonitor)sharedInstance;
- (CSSiriAssertionMonitor)init;
- (void)_notifyObserver:(BOOL)observer;
- (void)_notifyObserverBacklightOn:(BOOL)on atHostTime:(unint64_t)time;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)disableAssertionReceived;
- (void)enableAssertionReceived;
@end

@implementation CSSiriAssertionMonitor

- (void)_notifyObserverBacklightOn:(BOOL)on atHostTime:(unint64_t)time
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100147204;
  v4[3] = &unk_100252B98;
  onCopy = on;
  v4[4] = self;
  v4[5] = time;
  [(CSSiriAssertionMonitor *)self enumerateObserversInQueue:v4];
}

- (void)_notifyObserver:(BOOL)observer
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001472D8;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  observerCopy = observer;
  [(CSSiriAssertionMonitor *)self enumerateObserversInQueue:v3];
}

- (void)disableAssertionReceived
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001473CC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)enableAssertionReceived
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014752C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopMonitoring
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSSiriAssertionMonitor _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring: siri assertion enable/disable", &v3, 0xCu);
  }
}

- (void)dealloc
{
  [(CSSiriAssertionMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = CSSiriAssertionMonitor;
  [(CSSiriAssertionMonitor *)&v3 dealloc];
}

- (CSSiriAssertionMonitor)init
{
  v8.receiver = self;
  v8.super_class = CSSiriAssertionMonitor;
  v2 = [(CSSiriAssertionMonitor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_assertionState = 0;
    v4 = dispatch_queue_create("CSSiriAssertionMonitor queue", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSSiriAssertionMonitor init]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring: siri assertion enable/disable", buf, 0xCu);
    }
  }

  return v3;
}

+ (CSSiriAssertionMonitor)sharedInstance
{
  if (qword_10029E510 != -1)
  {
    dispatch_once(&qword_10029E510, &stru_100252B70);
  }

  v3 = qword_10029E508;

  return v3;
}

@end