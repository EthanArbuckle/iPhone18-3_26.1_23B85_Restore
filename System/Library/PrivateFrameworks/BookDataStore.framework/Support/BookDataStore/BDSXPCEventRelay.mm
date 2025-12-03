@interface BDSXPCEventRelay
+ (void)_registerNotificationEventHandler;
+ (void)start;
@end

@implementation BDSXPCEventRelay

+ (void)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067A48;
  block[3] = &unk_10023F980;
  block[4] = self;
  if (qword_100274AA8 != -1)
  {
    dispatch_once(&qword_100274AA8, block);
  }
}

+ (void)_registerNotificationEventHandler
{
  v2 = dispatch_get_global_queue(21, 0);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, &stru_100241AD8);

  v3 = sub_1000023E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registered handler for notification events", v4, 2u);
  }
}

@end