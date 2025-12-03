@interface MBXPCActivityTimer
- (MBXPCActivityTimer)initWithName:(id)name timeInterval:(double)interval priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (id)_activityHandler;
- (id)criteria;
- (id)description;
- (void)handleActivity;
- (void)invalidate;
@end

@implementation MBXPCActivityTimer

- (MBXPCActivityTimer)initWithName:(id)name timeInterval:(double)interval priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = MBXPCActivityTimer;
  v14 = [(MBXPCActivityTimer *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(MBXPCActivityTimer *)v14 setName:nameCopy];
    v16 = [NSDate dateWithTimeIntervalSinceNow:interval];
    [(MBXPCActivityTimer *)v15 setDate:v16];

    [(MBXPCActivityTimer *)v15 setPriority:priority];
    [(MBXPCActivityTimer *)v15 setOptions:options];
    [(MBXPCActivityTimer *)v15 setBlock:blockCopy];
    [(MBXPCActivityTimer *)v15 handleActivity];
  }

  return v15;
}

- (id)description
{
  name = [(MBXPCActivityTimer *)self name];
  criteria = [(MBXPCActivityTimer *)self criteria];
  v5 = [NSString stringWithFormat:@"MB XPC Activity: %@, %@", name, criteria];

  return v5;
}

- (id)criteria
{
  date = [(MBXPCActivityTimer *)self date];
  [date timeIntervalSinceNow];
  v5 = v4;

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, ([(MBXPCActivityTimer *)self options]& 0x2000) != 0);
  v7 = 0.0;
  if (v5 >= 0.0)
  {
    v7 = v5;
  }

  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, v7);
  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, 0);
  priority = [(MBXPCActivityTimer *)self priority];
  v9 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  if (priority != 1)
  {
    v9 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, *v9);
  options = [(MBXPCActivityTimer *)self options];
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_POWER_NAP, options & 1);
  options2 = [(MBXPCActivityTimer *)self options];
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, (options2 & 2) != 0);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, ([(MBXPCActivityTimer *)self options]& 0x200) != 0);

  return v6;
}

- (void)invalidate
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(MBXPCActivityTimer *)self name];
    *buf = 138412290;
    v11 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MBXPCTimer Unregistering XPC activity %@", buf, 0xCu);

    name2 = [(MBXPCActivityTimer *)self name];
    _MBLog();
  }

  name3 = [(MBXPCActivityTimer *)self name];
  uTF8String = [name3 UTF8String];

  xpc_activity_unregister(uTF8String);
  block = [(MBXPCActivityTimer *)self block];

  if (block)
  {
    [(MBXPCActivityTimer *)self setBlock:0];
  }

  activity = [(MBXPCActivityTimer *)self activity];

  if (activity)
  {
    [(MBXPCActivityTimer *)self setActivity:0];
  }
}

- (id)_activityHandler
{
  name = [(MBXPCActivityTimer *)self name];
  date = [(MBXPCActivityTimer *)self date];
  [date timeIntervalSinceNow];
  v6 = v5;

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0.0;
    if (v6 >= 0.0)
    {
      v8 = v6;
    }

    *buf = 138412546;
    v19 = name;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MBXPCTimer: Scheduling XPC activity (%@) in %lld", buf, 0x16u);
    _MBLog();
  }

  objc_initWeak(buf, self);
  block = [(MBXPCActivityTimer *)self block];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100138194;
  v14[3] = &unk_1003BF990;
  objc_copyWeak(&v17, buf);
  v15 = name;
  v16 = block;
  v10 = block;
  v11 = name;
  v12 = objc_retainBlock(v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  return v12;
}

- (void)handleActivity
{
  name = [(MBXPCActivityTimer *)self name];
  utf8ValueSafe = [name utf8ValueSafe];
  _activityHandler = [(MBXPCActivityTimer *)self _activityHandler];
  xpc_activity_register(utf8ValueSafe, XPC_ACTIVITY_CHECK_IN, _activityHandler);
}

@end