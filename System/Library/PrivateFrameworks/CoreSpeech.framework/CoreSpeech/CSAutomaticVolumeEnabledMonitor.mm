@interface CSAutomaticVolumeEnabledMonitor
+ (id)sharedInstance;
- (CSAutomaticVolumeEnabledMonitor)init;
- (void)_didReceiveAutomaticVolumeToggled:(BOOL)toggled;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CSAutomaticVolumeEnabledMonitor

- (void)_stopMonitoring
{
  queue = self->_queue;
  self->_queue = 0;
}

- (void)_startMonitoringWithQueue:(id)queue
{
  objc_storeStrong(&self->_queue, queue);
  queueCopy = queue;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B9FBC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_didReceiveAutomaticVolumeToggled:(BOOL)toggled
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BA14C;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  toggledCopy = toggled;
  [(CSAutomaticVolumeEnabledMonitor *)self enumerateObservers:v3];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v8 = pathCopy;
  queue = self->_queue;
  if (queue)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BA20C;
    v10[3] = &unk_100253C48;
    v11 = pathCopy;
    selfCopy = self;
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