@interface MBWatchdog
- (MBWatchdog)init;
- (MBWatchdog)initWithName:(id)a3;
- (void)_invokeTimeoutBlock;
- (void)_scheduleTimer;
- (void)resume;
- (void)suspend;
@end

@implementation MBWatchdog

- (MBWatchdog)initWithName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBWatchdog initWithName:]", "MBWatchdog.m", 22, "name");
  }

  v5 = v4;
  v19.receiver = self;
  v19.super_class = MBWatchdog;
  v6 = [(MBWatchdog *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_timeout = 30.0;
    v8 = [v5 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7->_queue);
    timer = v7->_timer;
    v7->_timer = v12;

    dispatch_source_set_timer(v7->_timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, v7);
    v14 = v7->_timer;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100172D74;
    v16[3] = &unk_1003BE6A0;
    objc_copyWeak(&v17, &location);
    dispatch_source_set_event_handler(v14, v16);
    dispatch_resume(v7->_timer);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (MBWatchdog)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MBWatchdog *)self initWithName:v4];

  return v5;
}

- (void)suspend
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100172F1C;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)resume
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100172FA8;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invokeTimeoutBlock
{
  v2 = objc_retainBlock(self->_timeoutBlock);
  if (v2)
  {
    v3 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100173074;
    block[3] = &unk_1003BCB38;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (void)_scheduleTimer
{
  v3 = dispatch_time(0, (self->_timeout * 1000000000.0));
  timer = self->_timer;

  dispatch_source_set_timer(timer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
}

@end