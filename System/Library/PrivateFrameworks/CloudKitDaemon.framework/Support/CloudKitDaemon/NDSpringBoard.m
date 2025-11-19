@interface NDSpringBoard
+ (id)sharedSpringBoard;
- (BOOL)identifierIsForSpringBoardApplication:(id)a3;
- (NDSpringBoard)init;
- (unsigned)applicationStateForBundleID:(id)a3;
- (void)addObserver:(id)a3 forApplication:(id)a4;
- (void)handleApplicationStateChange:(id)a3;
- (void)removeObserver:(id)a3 forApplication:(id)a4;
- (void)setupMonitor;
- (void)startMonitoringBundleID:(id)a3;
- (void)stopMonitoringBundleID:(id)a3;
@end

@implementation NDSpringBoard

+ (id)sharedSpringBoard
{
  if (qword_1000161E8 != -1)
  {
    dispatch_once(&qword_1000161E8, &stru_1000105A8);
  }

  v3 = qword_1000161F0;

  return v3;
}

- (NDSpringBoard)init
{
  v15.receiver = self;
  v15.super_class = NDSpringBoard;
  v2 = [(NDSpringBoard *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(BKSApplicationStateMonitor);
    monitor = v2->_monitor;
    v2->_monitor = v3;

    v5 = +[NSMutableDictionary dictionary];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = +[NSMutableDictionary dictionary];
    appStates = v2->_appStates;
    v2->_appStates = v7;

    v9 = +[NSMutableSet set];
    monitoredBundleIDs = v2->_monitoredBundleIDs;
    v2->_monitoredBundleIDs = v9;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v12 = dispatch_queue_create("com.apple.nsnetwork.SpringBoard-queue", v11);
    queue = v2->_queue;
    v2->_queue = v12;
  }

  return v2;
}

- (void)setupMonitor
{
  monitor = self->_monitor;
  v4 = [(NSMutableSet *)self->_monitoredBundleIDs allObjects];
  [(BKSApplicationStateMonitor *)monitor updateInterestedBundleIDs:v4];

  v5 = self->_monitor;

  [(BKSApplicationStateMonitor *)v5 setHandler:&stru_1000105E8];
}

- (void)handleApplicationStateChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002C64;
  v7[3] = &unk_100010610;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000030D0;
  block[3] = &unk_100010638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003234;
  block[3] = &unk_100010638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)startMonitoringBundleID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003324;
  v7[3] = &unk_100010610;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)stopMonitoringBundleID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003484;
  v7[3] = &unk_100010610;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (unsigned)applicationStateForBundleID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000035C8;
  block[3] = &unk_100010660;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)identifierIsForSpringBoardApplication:(id)a3
{
  v3 = a3;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v4 applicationIsInstalled:v3];

  if (v5)
  {
    v9 = 0;
    v6 = 1;
    v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v9];
    if ([v7 isPlaceholder])
    {
      v6 = [v7 isUpdate];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end