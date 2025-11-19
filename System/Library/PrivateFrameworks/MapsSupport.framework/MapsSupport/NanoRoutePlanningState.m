@interface NanoRoutePlanningState
- (NanoRoutePlanningState)initWithStateManager:(id)a3 isolationQueue:(id)a4;
- (NanoRoutePlanningStateManager)manager;
- (void)enterToState:(int64_t)a3 fromState:(int64_t)a4;
- (void)leaveToState:(int64_t)a3;
- (void)setActive:(BOOL)a3;
- (void)stop;
@end

@implementation NanoRoutePlanningState

- (NanoRoutePlanningState)initWithStateManager:(id)a3 isolationQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NanoRoutePlanningState;
  v8 = [(NanoRoutePlanningState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, v6);
    v9->_sessionState = -1;
    objc_storeStrong(&v9->_isolationQueue, a4);
  }

  return v9;
}

- (void)enterToState:(int64_t)a3 fromState:(int64_t)a4
{
  self->_sessionState = a3;
  self->_previousState = a4;
  v6 = sub_100053324();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_100013558(a3);
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Entering '%@' state", buf, 0xCu);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  self->_timestampStarted = v8;
  isolationQueue = self->_isolationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E7D0;
  v10[3] = &unk_100085248;
  v10[4] = self;
  v10[5] = a3;
  dispatch_async(isolationQueue, v10);
}

- (void)leaveToState:(int64_t)a3
{
  v5 = [(NanoRoutePlanningState *)self sessionState];
  self->_nextState = a3;
  v6 = sub_100053324();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_100013558(v5);
    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8 - self->_timestampStarted;
    *buf = 138412546;
    v13 = v7;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Leaving '%@' state (active for %#.5lfs)", buf, 0x16u);
  }

  isolationQueue = self->_isolationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E9E8;
  v11[3] = &unk_100085248;
  v11[4] = self;
  v11[5] = v5;
  dispatch_async(isolationQueue, v11);
}

- (void)stop
{
  if (self->_sessionState == 4)
  {
    v6 = v2;
    v7 = v3;
    if ([objc_opt_class() controlsDiskRouteStorage])
    {
      v4 = sub_100053324();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will clear disk route storage", v5, 2u);
      }

      +[NanoRoutePlanningResponse clearDiskRouteStorage];
    }
  }
}

- (void)setActive:(BOOL)a3
{
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EBBC;
  v4[3] = &unk_100084F60;
  v4[4] = self;
  v5 = a3;
  dispatch_async(isolationQueue, v4);
}

- (NanoRoutePlanningStateManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end