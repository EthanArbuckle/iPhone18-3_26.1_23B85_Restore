@interface NDSpringBoard
+ (id)sharedSpringBoard;
- (BOOL)identifierIsForSpringBoardApplication:(id)application;
- (NDSpringBoard)init;
- (unsigned)applicationStateForBundleID:(id)d;
- (void)addObserver:(id)observer forApplication:(id)application;
- (void)handleApplicationStateChange:(id)change;
- (void)removeObserver:(id)observer forApplication:(id)application;
- (void)setupMonitor;
- (void)startMonitoringBundleID:(id)d;
- (void)stopMonitoringBundleID:(id)d;
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
  allObjects = [(NSMutableSet *)self->_monitoredBundleIDs allObjects];
  [(BKSApplicationStateMonitor *)monitor updateInterestedBundleIDs:allObjects];

  v5 = self->_monitor;

  [(BKSApplicationStateMonitor *)v5 setHandler:&stru_1000105E8];
}

- (void)handleApplicationStateChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002C64;
  v7[3] = &unk_100010610;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)observer forApplication:(id)application
{
  observerCopy = observer;
  applicationCopy = application;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000030D0;
  block[3] = &unk_100010638;
  block[4] = self;
  v12 = applicationCopy;
  v13 = observerCopy;
  v9 = observerCopy;
  v10 = applicationCopy;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)observer forApplication:(id)application
{
  observerCopy = observer;
  applicationCopy = application;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003234;
  block[3] = &unk_100010638;
  block[4] = self;
  v12 = applicationCopy;
  v13 = observerCopy;
  v9 = observerCopy;
  v10 = applicationCopy;
  dispatch_async(queue, block);
}

- (void)startMonitoringBundleID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003324;
  v7[3] = &unk_100010610;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)stopMonitoringBundleID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003484;
  v7[3] = &unk_100010610;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (unsigned)applicationStateForBundleID:(id)d
{
  dCopy = d;
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
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)identifierIsForSpringBoardApplication:(id)application
{
  applicationCopy = application;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v4 applicationIsInstalled:applicationCopy];

  if (v5)
  {
    v9 = 0;
    isUpdate = 1;
    v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:applicationCopy allowPlaceholder:1 error:&v9];
    if ([v7 isPlaceholder])
    {
      isUpdate = [v7 isUpdate];
    }
  }

  else
  {
    isUpdate = 0;
  }

  return isUpdate;
}

@end