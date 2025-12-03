@interface SignalHandler
- (SignalHandler)init;
@end

@implementation SignalHandler

- (SignalHandler)init
{
  v11.receiver = self;
  v11.super_class = SignalHandler;
  v2 = [(SignalHandler *)&v11 initWithDomain:"SignalHandler"];
  if (v2)
  {
    if (signal(15, 1) == -1)
    {
      logHandle = [v2 logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100033F8C(logHandle);
      }
    }

    v4 = dispatch_get_global_queue(2, 0);
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = *(v2 + 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001D500;
    handler[3] = &unk_100050FA0;
    v10 = v2;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(*(v2 + 1));
  }

  return v2;
}

@end