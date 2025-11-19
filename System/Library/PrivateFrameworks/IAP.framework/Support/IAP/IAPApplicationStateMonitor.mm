@interface IAPApplicationStateMonitor
- (BOOL)isAnyAppOpenInForeground;
- (IAPApplicationStateMonitor)init;
- (NSSet)foregroundAppBundleIDs;
- (id)applicationInfoForBundleIDSync:(id)a3;
- (void)dealloc;
- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5;
- (void)sharedInit;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation IAPApplicationStateMonitor

- (void)sharedInit
{
  v3 = [FBSDisplayLayoutMonitor sharedMonitorForDisplayType:0];
  sharedDisplayLayoutMonitor = self->_sharedDisplayLayoutMonitor;
  self->_sharedDisplayLayoutMonitor = v3;

  v5 = objc_alloc_init(NSMutableSet);
  [(IAPApplicationStateMonitor *)self setForegroundAppBundleIDsMutable:v5];

  v6 = dispatch_queue_create("com.apple.iap.appStateMonitorQueue", 0);
  [(IAPApplicationStateMonitor *)self setForegroundBundleIDsQueue:v6];

  self->_observingFBSLayoutMonitor = 0;
}

- (IAPApplicationStateMonitor)init
{
  v6.receiver = self;
  v6.super_class = IAPApplicationStateMonitor;
  v2 = [(IAPApplicationStateMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BKSApplicationStateMonitor);
    appStateMonitor = v2->_appStateMonitor;
    v2->_appStateMonitor = v3;

    [(IAPApplicationStateMonitor *)v2 sharedInit];
  }

  return v2;
}

- (void)dealloc
{
  if (((self + 8) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    [(BKSApplicationStateMonitor *)self->_appStateMonitor invalidate];
    appStateMonitor = self->_appStateMonitor;
    self->_appStateMonitor = 0;

    [(IAPApplicationStateMonitor *)self setForegroundAppBundleIDsMutable:0];
    [(IAPApplicationStateMonitor *)self setForegroundBundleIDsQueue:0];
    v4.receiver = self;
    v4.super_class = IAPApplicationStateMonitor;
    [(IAPApplicationStateMonitor *)&v4 dealloc];
  }
}

- (void)startObserving
{
  objc_initWeak(&location, self);
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_100051928;
  v6 = &unk_1001155B8;
  objc_copyWeak(&v7, &location);
  if ((&self->_appStateMonitor & 7) != 0 || ([(BKSApplicationStateMonitor *)self->_appStateMonitor setHandler:&v3], self->_observingFBSLayoutMonitor = 1, ((self + 16) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    [(FBSDisplayLayoutMonitor *)self->_sharedDisplayLayoutMonitor addObserver:self, v3, v4, v5, v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)stopObserving
{
  if (((self + 8) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    [(BKSApplicationStateMonitor *)self->_appStateMonitor invalidate];
    v3 = [(IAPApplicationStateMonitor *)self foregroundBundleIDsQueue];
    if (v3)
    {
      v4 = v3;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100051C90;
      block[3] = &unk_1001155E0;
      block[4] = self;
      dispatch_sync(v3, block);

      return;
    }
  }

  __break(0x5510u);
}

- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IAPApplicationStateMonitor *)self foregroundBundleIDsQueue];
  if (v11)
  {
    v12 = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100051DE4;
    v14[3] = &unk_100115608;
    v14[4] = self;
    v15 = v9;
    v13 = v9;
    dispatch_sync(v12, v14);
  }

  else
  {
    __break(0x5510u);
  }
}

- (id)applicationInfoForBundleIDSync:(id)a3
{
  result = a3;
  if ((&self->_appStateMonitor & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = result;
    v6 = [(BKSApplicationStateMonitor *)self->_appStateMonitor applicationInfoForApplication:result];

    return v6;
  }

  return result;
}

- (NSSet)foregroundAppBundleIDs
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10005210C;
  v9 = sub_10005211C;
  v10 = 0;
  if ((&self[6] & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_7;
  }

  isa = self[6].super.isa;
  if (!isa)
  {
LABEL_7:
    __break(0x5510u);
    return self;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052124;
  v4[3] = &unk_100115630;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(isa, v4);
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (BOOL)isAnyAppOpenInForeground
{
  if (self->_isAnyAppOpenInForeground >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_isAnyAppOpenInForeground;
  }

  return self;
}

@end