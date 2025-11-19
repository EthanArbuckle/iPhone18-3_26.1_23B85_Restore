@interface DROrientationObserver
+ (id)sharedObserver;
- (id)_init;
- (void)_didReceiveOrientationUpdate:(id)a3;
- (void)addObserver:(id)a3;
@end

@implementation DROrientationObserver

+ (id)sharedObserver
{
  if (qword_1000634B0 != -1)
  {
    sub_10002F7E4();
  }

  v3 = qword_1000634A8;

  return v3;
}

- (id)_init
{
  v14.receiver = self;
  v14.super_class = DROrientationObserver;
  v2 = [(DROrientationObserver *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v3;

    objc_initWeak(&location, v2);
    v5 = objc_opt_new();
    interfaceOrientationObserver = v2->_interfaceOrientationObserver;
    v2->_interfaceOrientationObserver = v5;

    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000045A0;
    v11 = &unk_100054C00;
    objc_copyWeak(&v12, &location);
    [(FBSOrientationObserver *)v2->_interfaceOrientationObserver setHandler:&v8];
    v2->_interfaceOrientation = [(FBSOrientationObserver *)v2->_interfaceOrientationObserver activeInterfaceOrientation:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_observers containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_observers addObject:v4];
    interfaceOrientationObserver = self->_interfaceOrientationObserver;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000046B8;
    v6[3] = &unk_100054C28;
    v7 = v4;
    v8 = self;
    [(FBSOrientationObserver *)interfaceOrientationObserver activeInterfaceOrientationWithCompletion:v6];
  }
}

- (void)_didReceiveOrientationUpdate:(id)a3
{
  v4 = a3;
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 orientation];
    [v4 duration];
    *buf = 134218496;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = [v4 rotationDirection];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got orientation change to %ld duration %g direction %ld", buf, 0x20u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000482C;
  v9[3] = &unk_100054C50;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, v9);
}

@end