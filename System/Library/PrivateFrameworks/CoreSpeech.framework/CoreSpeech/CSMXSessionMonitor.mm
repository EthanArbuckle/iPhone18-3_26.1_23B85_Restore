@interface CSMXSessionMonitor
+ (id)GetCurrentlyActiveSessionCategory;
+ (id)GetCurrentlyActiveSessionMode;
+ (id)sharedInstance;
- (CSMXSessionMonitor)init;
- (void)_handleSomeClientIsActiveDidChangeNotification:(id)notification;
- (void)_querySomeClientIsActive;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_startObservingAVSystemControllerLifecycle;
- (void)_startObservingSomeClientIsActive;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)died;
@end

@implementation CSMXSessionMonitor

- (void)_querySomeClientIsActive
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014D8B4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleSomeClientIsActiveDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014DBF4;
  v7[3] = &unk_100253C48;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_systemControllerDied:(id)died
{
  diedCopy = died;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[CSMXSessionMonitor _systemControllerDied:]";
    v8 = 2114;
    v9 = diedCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s notification = %{public}@", &v6, 0x16u);
  }

  [(CSMXSessionMonitor *)self _startObservingAVSystemControllerLifecycle];
  [(CSMXSessionMonitor *)self _startObservingSomeClientIsActive];
  [(CSMXSessionMonitor *)self _handleSomeClientIsActiveDidChangeNotification:0];
}

- (void)_startObservingSomeClientIsActive
{
  v3 = +[AVSystemController sharedAVSystemController];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVSystemController_SomeClientIsActiveDidChangeNotification object:v3];
  v6 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 setAttribute:v5 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
  [v4 addObserver:self selector:"_handleSomeClientIsActiveDidChangeNotification:" name:AVSystemController_SomeClientIsActiveDidChangeNotification object:v3];
}

- (void)_startObservingAVSystemControllerLifecycle
{
  v5 = +[AVSystemController sharedAVSystemController];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:v5];
  v4 = [NSArray arrayWithObject:AVSystemController_ServerConnectionDiedNotification];
  [v5 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
  [v3 addObserver:self selector:"_systemControllerDied:" name:AVSystemController_ServerConnectionDiedNotification object:v5];
}

- (void)_stopMonitoring
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[CSMXSessionMonitor _stopMonitoring]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[CSMXSessionMonitor _startMonitoringWithQueue:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  [(CSMXSessionMonitor *)self _startObservingAVSystemControllerLifecycle];
  [(CSMXSessionMonitor *)self _startObservingSomeClientIsActive];
  [(CSMXSessionMonitor *)self _querySomeClientIsActive];
}

- (CSMXSessionMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSMXSessionMonitor;
  v2 = [(CSMXSessionMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSMXSessionMonitorQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)GetCurrentlyActiveSessionMode
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_CurrentlyActiveModeAttribute];

  return v3;
}

+ (id)GetCurrentlyActiveSessionCategory
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_CurrentlyActiveCategoryAttribute];

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10029E560 != -1)
  {
    dispatch_once(&qword_10029E560, &stru_100252DE8);
  }

  v3 = qword_10029E558;

  return v3;
}

@end