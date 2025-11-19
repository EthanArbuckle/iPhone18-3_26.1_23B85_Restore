@interface MBXPCActivityTimer
- (MBXPCActivityTimer)initWithName:(id)a3 timeInterval:(double)a4 priority:(int64_t)a5 options:(unint64_t)a6 block:(id)a7;
- (id)_activityHandler;
- (id)criteria;
- (id)description;
- (void)handleActivity;
- (void)invalidate;
@end

@implementation MBXPCActivityTimer

- (MBXPCActivityTimer)initWithName:(id)a3 timeInterval:(double)a4 priority:(int64_t)a5 options:(unint64_t)a6 block:(id)a7
{
  v12 = a3;
  v13 = a7;
  v18.receiver = self;
  v18.super_class = MBXPCActivityTimer;
  v14 = [(MBXPCActivityTimer *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(MBXPCActivityTimer *)v14 setName:v12];
    v16 = [NSDate dateWithTimeIntervalSinceNow:a4];
    [(MBXPCActivityTimer *)v15 setDate:v16];

    [(MBXPCActivityTimer *)v15 setPriority:a5];
    [(MBXPCActivityTimer *)v15 setOptions:a6];
    [(MBXPCActivityTimer *)v15 setBlock:v13];
    [(MBXPCActivityTimer *)v15 handleActivity];
  }

  return v15;
}

- (id)description
{
  v3 = [(MBXPCActivityTimer *)self name];
  v4 = [(MBXPCActivityTimer *)self criteria];
  v5 = [NSString stringWithFormat:@"MB XPC Activity: %@, %@", v3, v4];

  return v5;
}

- (id)criteria
{
  v3 = [(MBXPCActivityTimer *)self date];
  [v3 timeIntervalSinceNow];
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
  v8 = [(MBXPCActivityTimer *)self priority];
  v9 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  if (v8 != 1)
  {
    v9 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, *v9);
  v10 = [(MBXPCActivityTimer *)self options];
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_POWER_NAP, v10 & 1);
  v11 = [(MBXPCActivityTimer *)self options];
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, (v11 & 2) != 0);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, ([(MBXPCActivityTimer *)self options]& 0x200) != 0);

  return v6;
}

- (void)invalidate
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MBXPCActivityTimer *)self name];
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MBXPCTimer Unregistering XPC activity %@", buf, 0xCu);

    v9 = [(MBXPCActivityTimer *)self name];
    _MBLog();
  }

  v5 = [(MBXPCActivityTimer *)self name];
  v6 = [v5 UTF8String];

  xpc_activity_unregister(v6);
  v7 = [(MBXPCActivityTimer *)self block];

  if (v7)
  {
    [(MBXPCActivityTimer *)self setBlock:0];
  }

  v8 = [(MBXPCActivityTimer *)self activity];

  if (v8)
  {
    [(MBXPCActivityTimer *)self setActivity:0];
  }
}

- (id)_activityHandler
{
  v3 = [(MBXPCActivityTimer *)self name];
  v4 = [(MBXPCActivityTimer *)self date];
  [v4 timeIntervalSinceNow];
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
    v19 = v3;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MBXPCTimer: Scheduling XPC activity (%@) in %lld", buf, 0x16u);
    _MBLog();
  }

  objc_initWeak(buf, self);
  v9 = [(MBXPCActivityTimer *)self block];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100138194;
  v14[3] = &unk_1003BF990;
  objc_copyWeak(&v17, buf);
  v15 = v3;
  v16 = v9;
  v10 = v9;
  v11 = v3;
  v12 = objc_retainBlock(v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  return v12;
}

- (void)handleActivity
{
  v5 = [(MBXPCActivityTimer *)self name];
  v3 = [v5 utf8ValueSafe];
  v4 = [(MBXPCActivityTimer *)self _activityHandler];
  xpc_activity_register(v3, XPC_ACTIVITY_CHECK_IN, v4);
}

@end