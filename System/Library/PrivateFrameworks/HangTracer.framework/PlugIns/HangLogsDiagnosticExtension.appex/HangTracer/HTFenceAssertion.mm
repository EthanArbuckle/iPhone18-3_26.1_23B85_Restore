@interface HTFenceAssertion
- (HTFenceAssertion)initWithFenceName:(unint64_t)name;
- (void)blown;
- (void)invalidate;
@end

@implementation HTFenceAssertion

- (HTFenceAssertion)initWithFenceName:(unint64_t)name
{
  v16.receiver = self;
  v16.super_class = HTFenceAssertion;
  v4 = [(HTFenceAssertion *)&v16 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4->__name = name;
  v4->__startTime = mach_absolute_time();
  if (qword_10002B0D0 != -1)
  {
    sub_100014100();
  }

  v6 = +[HTPrefs sharedPrefs];
  hangtracerDaemonEnabled = [v6 hangtracerDaemonEnabled];

  if ((hangtracerDaemonEnabled & 1) == 0)
  {
    v12 = shared_ht_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100014128();
    }

    goto LABEL_12;
  }

  v8 = +[HTPrefs sharedPrefs];
  fenceTrackingEnabled = [v8 fenceTrackingEnabled];

  if ((fenceTrackingEnabled & 1) == 0)
  {
    v12 = shared_ht_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10001415C();
    }

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  sub_10000D800();
  v10 = HTConnectionQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D848;
  block[3] = &unk_100024828;
  v15 = v5;
  dispatch_async(v10, block);

LABEL_7:
  v11 = v5;
LABEL_13:

  return v11;
}

- (void)invalidate
{
  v3 = mach_absolute_time();
  v4 = HTConnectionQueue();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D9FC;
  v5[3] = &unk_100025178;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(v4, v5);
}

- (void)blown
{
  v3 = mach_absolute_time();
  v4 = HTConnectionQueue();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DBBC;
  v5[3] = &unk_100025178;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(v4, v5);
}

@end