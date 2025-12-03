@interface MBOneShotTimer
- (MBOneShotTimer)initWithSeconds:(double)seconds queue:(id)queue;
- (id)description;
- (void)cancel;
- (void)resume;
@end

@implementation MBOneShotTimer

- (MBOneShotTimer)initWithSeconds:(double)seconds queue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    __assert_rtn("[MBOneShotTimer initWithSeconds:queue:]", "MBOneShotTimer.m", 23, "queue");
  }

  v7 = queueCopy;
  v21.receiver = self;
  v21.super_class = MBOneShotTimer;
  v8 = [(MBOneShotTimer *)&v21 init];
  v9 = v8;
  if (v8)
  {
    [(MBOneShotTimer *)v8 setSeconds:seconds];
    [(MBOneShotTimer *)v9 setQueue:v7];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
    v11 = dispatch_walltime(0, (seconds * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100236570;
    handler[3] = &unk_1003BC060;
    v12 = v9;
    v19 = v12;
    v20 = v10;
    v13 = v10;
    dispatch_source_set_event_handler(v13, handler);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10023668C;
    v16[3] = &unk_1003BC0B0;
    v14 = v12;
    v17 = v14;
    dispatch_source_set_cancel_handler(v13, v16);
    [(MBOneShotTimer *)v14 setTimer:v13];
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  [(MBOneShotTimer *)self seconds];
  return [NSString stringWithFormat:@"<%@: %p; seconds=%.3f>", v3, self, v4];
}

- (void)resume
{
  timer = [(MBOneShotTimer *)self timer];
  if (!timer)
  {
    __assert_rtn("[MBOneShotTimer resume]", "MBOneShotTimer.m", 64, "timer");
  }

  v4 = timer;
  v5 = os_transaction_create();
  [(MBOneShotTimer *)self setTransaction:v5];

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Resuming %{public}@", buf, 0xCu);
    _MBLog();
  }

  dispatch_resume(v4);
}

- (void)cancel
{
  timer = [(MBOneShotTimer *)self timer];
  if (timer)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Canceling %{public}@", buf, 0xCu);
      _MBLog();
    }

    dispatch_source_cancel(timer);
  }
}

@end