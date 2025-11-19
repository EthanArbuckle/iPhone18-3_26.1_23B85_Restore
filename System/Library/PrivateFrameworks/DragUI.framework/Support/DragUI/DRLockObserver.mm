@interface DRLockObserver
- (DRLockObserver)initWithLockHandler:(id)a3;
- (void)dealloc;
@end

@implementation DRLockObserver

- (DRLockObserver)initWithLockHandler:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DRLockObserver;
  v5 = [(DRLockObserver *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_notifyToken = -1;
    p_notifyToken = &v5->_notifyToken;
    v8 = objc_retainBlock(v4);
    lockHandler = v6->_lockHandler;
    v6->_lockHandler = v8;

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002E318;
    v12[3] = &unk_100056540;
    v13 = v6;
    v10 = objc_retainBlock(v12);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v6->_notifyToken, &_dispatch_main_q, v10);
    (v10[2])(v10, *p_notifyToken);
  }

  return v6;
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = DRLockObserver;
  [(DRLockObserver *)&v3 dealloc];
}

@end