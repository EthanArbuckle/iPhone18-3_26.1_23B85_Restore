@interface CDNotifydMonitor
+ (id)xpcDictionaryToFoundation:(id)a3;
- (CDNotifydMonitor)init;
@end

@implementation CDNotifydMonitor

+ (id)xpcDictionaryToFoundation:(id)a3
{
  v3 = a3;
  string = xpc_dictionary_get_string(v3, [@"Notification" UTF8String]);
  if (string)
  {
    v5 = string;
    uint64 = xpc_dictionary_get_uint64(v3, [@"_State" UTF8String]);
    v11[0] = @"Notification";
    v7 = [NSString stringWithUTF8String:v5];
    v11[1] = @"_State";
    v12[0] = v7;
    v8 = [NSNumber numberWithUnsignedLongLong:uint64];
    v12[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CDNotifydMonitor)init
{
  v4.receiver = self;
  v4.super_class = CDNotifydMonitor;
  v2 = [(CDNotifydMonitor *)&v4 init];
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002E14();
    }

    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100008510);
  }

  return v2;
}

@end