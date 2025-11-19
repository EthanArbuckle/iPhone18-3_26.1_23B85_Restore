@interface DRDispatchTimer
- (DRDispatchTimer)initWithQueue:(id)a3 eventHandler:(id)a4;
- (void)activate;
- (void)cancel;
- (void)dealloc;
- (void)resetWithTimeout:(double)a3 leeway:(double)a4;
@end

@implementation DRDispatchTimer

- (DRDispatchTimer)initWithQueue:(id)a3 eventHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = DRDispatchTimer;
  v8 = [(DRDispatchTimer *)&v13 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
  v10 = v9;
  if (v9)
  {
    dispatch_source_set_event_handler(v9, v7);
    timer = v8->_timer;
    v8->_timer = v10;

LABEL_4:
    v10 = v8;
  }

  return v10;
}

- (void)resetWithTimeout:(double)a3 leeway:(double)a4
{
  timer = self->_timer;
  v6 = dispatch_time(0, (a3 * 1000000000.0));

  dispatch_source_set_timer(timer, v6, 0xFFFFFFFFFFFFFFFFLL, (a4 * 1000000000.0));
}

- (void)activate
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_activate(timer);
  }
}

- (void)cancel
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)dealloc
{
  [(DRDispatchTimer *)self cancel];
  v3.receiver = self;
  v3.super_class = DRDispatchTimer;
  [(DRDispatchTimer *)&v3 dealloc];
}

@end