@interface CSGestureMonitorPhone
- (CSGestureMonitorPhone)init;
- (void)_didReceiveSleepGesture;
- (void)_didReceiveWakeGesture;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)wakeGestureManager:(id)a3 didUpdateWakeGesture:(int64_t)a4;
@end

@implementation CSGestureMonitorPhone

- (void)_didReceiveSleepGesture
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C8238;
  v3[3] = &unk_100253B48;
  v3[4] = self;
  v2.receiver = self;
  v2.super_class = CSGestureMonitorPhone;
  [(CSGestureMonitorPhone *)&v2 enumerateObserversInQueue:v3];
}

- (void)_didReceiveWakeGesture
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C832C;
  v3[3] = &unk_100253B48;
  v3[4] = self;
  v2.receiver = self;
  v2.super_class = CSGestureMonitorPhone;
  [(CSGestureMonitorPhone *)&v2 enumerateObserversInQueue:v3];
}

- (void)wakeGestureManager:(id)a3 didUpdateWakeGesture:(int64_t)a4
{
  v6 = a3;
  if (a4 == 3)
  {
    v8 = mach_absolute_time();
    v9.receiver = self;
    v9.super_class = CSGestureMonitorPhone;
    [(CSGestureMonitor *)&v9 setDismissalTimestamp:v8];
    [(CSGestureMonitorPhone *)self _didReceiveSleepGesture];
  }

  else if (a4 == 1)
  {
    v7 = mach_absolute_time();
    v10.receiver = self;
    v10.super_class = CSGestureMonitorPhone;
    [(CSGestureMonitor *)&v10 setWakeGestureTimestamp:v7];
    [(CSGestureMonitorPhone *)self _didReceiveWakeGesture];
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  [(CMWakeGestureManager *)self->_gestureManager setDelegate:self];
  [(CMWakeGestureManager *)self->_gestureManager startWakeGestureUpdates];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSGestureMonitorPhone _startMonitoringWithQueue:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Start monitoring: wake Gesture", &v5, 0xCu);
  }
}

- (CSGestureMonitorPhone)init
{
  v6.receiver = self;
  v6.super_class = CSGestureMonitorPhone;
  v2 = [(CSGestureMonitorPhone *)&v6 init];
  if (v2 && [sub_1000C858C() isWakeGestureAvailable])
  {
    v3 = [sub_1000C858C() sharedManager];
    gestureManager = v2->_gestureManager;
    v2->_gestureManager = v3;
  }

  return v2;
}

@end