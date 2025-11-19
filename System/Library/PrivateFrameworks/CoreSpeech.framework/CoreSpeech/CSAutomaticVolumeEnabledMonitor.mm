@interface CSAutomaticVolumeEnabledMonitor
+ (id)sharedInstance;
- (CSAutomaticVolumeEnabledMonitor)init;
- (void)_didReceiveAutomaticVolumeToggled:(BOOL)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation CSAutomaticVolumeEnabledMonitor

- (void)_stopMonitoring
{
  queue = self->_queue;
  self->_queue = 0;
}

- (void)_startMonitoringWithQueue:(id)a3
{
  objc_storeStrong(&self->_queue, a3);
  v5 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B9FBC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_didReceiveAutomaticVolumeToggled:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BA14C;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  v4 = a3;
  [(CSAutomaticVolumeEnabledMonitor *)self enumerateObservers:v3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v8 = v7;
  queue = self->_queue;
  if (queue)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BA20C;
    v10[3] = &unk_100253C48;
    v11 = v7;
    v12 = self;
    dispatch_async(queue, v10);
  }
}

- (CSAutomaticVolumeEnabledMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSAutomaticVolumeEnabledMonitor;
  return [(CSAutomaticVolumeEnabledMonitor *)&v3 init];
}

+ (id)sharedInstance
{
  if (qword_10029E250 != -1)
  {
    dispatch_once(&qword_10029E250, &stru_1002508E0);
  }

  v3 = qword_10029E248;

  return v3;
}

@end