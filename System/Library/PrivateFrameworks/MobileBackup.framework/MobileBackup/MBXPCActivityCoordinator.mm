@interface MBXPCActivityCoordinator
- (MBXPCActivityCoordinator)initWithDelegate:(id)delegate;
- (MBXPCActivityCoordinatorDelegate)delegate;
- (id)checkInBackupActivity:(int)activity;
- (id)xpcActivityForBackupActivity:(int)activity;
- (void)_handleXPCActivity:(id)activity type:(int)type;
- (void)finishBackupActivity:(int)activity;
- (void)pollForBackupActivityDeferrals:(int)deferrals block:(id)block;
- (void)registerBackupActivity:(int)activity criteria:(id)criteria;
@end

@implementation MBXPCActivityCoordinator

- (MBXPCActivityCoordinator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = MBXPCActivityCoordinator;
  v5 = [(MBXPCActivityCoordinator *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_opt_class();
    Name = class_getName(v7);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(Name, v9);
    stateQueue = v6->_stateQueue;
    v6->_stateQueue = v10;

    v12 = objc_opt_new();
    backupActivities = v6->_backupActivities;
    v6->_backupActivities = v12;

    v14 = objc_opt_new();
    checkedInActivities = v6->_checkedInActivities;
    v6->_checkedInActivities = v14;
  }

  return v6;
}

- (void)registerBackupActivity:(int)activity criteria:(id)criteria
{
  criteriaCopy = criteria;
  if (!activity)
  {
    __assert_rtn("[MBXPCActivityCoordinator registerBackupActivity:criteria:]", "MBXPCActivityCoordinator.m", 81, "activityType != MBBackupXPCActivityTypeNone");
  }

  v7 = criteriaCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002063AC;
  block[3] = &unk_1003C1328;
  activityCopy = activity;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_sync(stateQueue, block);
}

- (void)finishBackupActivity:(int)activity
{
  stateQueue = self->_stateQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100206728;
  v4[3] = &unk_1003BFFD8;
  v4[4] = self;
  activityCopy = activity;
  dispatch_async(stateQueue, v4);
}

- (id)checkInBackupActivity:(int)activity
{
  v5 = MBBackupXPCActivityNameWithType(activity);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=XPCActivity= Checking in XPC activity %{public}s (initial)", &buf, 0xCu);
    _MBLog();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = sub_1002069AC;
  v20 = sub_1002069BC;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1002069C4;
  handler[3] = &unk_1003C1AC0;
  objc_copyWeak(&v14, &location);
  v8 = v7;
  v12 = v8;
  p_buf = &buf;
  activityCopy = activity;
  xpc_activity_register(v5, XPC_ACTIVITY_CHECK_IN, handler);
  MBSemaphoreWaitForever();
  v9 = *(*(&buf + 1) + 40);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);

  return v9;
}

- (id)xpcActivityForBackupActivity:(int)activity
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1002069AC;
  v14 = sub_1002069BC;
  v15 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100206C68;
  block[3] = &unk_1003C1AE8;
  block[4] = self;
  block[5] = &v10;
  activityCopy = activity;
  dispatch_sync(stateQueue, block);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)pollForBackupActivityDeferrals:(int)deferrals block:(id)block
{
  blockCopy = block;
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_stateQueue);
  v8 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v7, v8, 0x77359400uLL, 0);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v9 = MBBackupXPCActivityNameWithType(deferrals);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100206E90;
  handler[3] = &unk_1003C1B10;
  deferralsCopy = deferrals;
  v19 = v22;
  v20 = v9;
  handler[4] = self;
  v18 = blockCopy;
  v10 = blockCopy;
  dispatch_source_set_event_handler(v7, handler);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100206FE0;
  block[3] = &unk_1003C1B38;
  v14 = v7;
  v15 = v9;
  deferralsCopy2 = deferrals;
  block[4] = self;
  v12 = v7;
  dispatch_async(stateQueue, block);

  _Block_object_dispose(v22, 8);
}

- (void)_handleXPCActivity:(id)activity type:(int)type
{
  activityCopy = activity;
  state = xpc_activity_get_state(activityCopy);
  v8 = xpc_activity_copy_criteria(activityCopy);
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v16 = MBBackupXPCActivityNameWithType(type);
    v17 = 2080;
    v18 = sub_1002065FC(state);
    v19 = 2048;
    v20 = state;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=XPCActivity= Handling %{public}s, state:%s(%ld), criteria:%{public}@", buf, 0x2Au);
    MBBackupXPCActivityNameWithType(type);
    _MBLog();
  }

  if (state)
  {
    if (state == 2)
    {
      xpc_activity_set_state(activityCopy, 4);
      stateQueue = self->_stateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002072C0;
      block[3] = &unk_1003C1B38;
      typeCopy = type;
      block[4] = self;
      v13 = 2;
      v12 = activityCopy;
      dispatch_async(stateQueue, block);
    }

    else
    {
      xpc_activity_set_state(activityCopy, 5);
    }
  }
}

- (MBXPCActivityCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end