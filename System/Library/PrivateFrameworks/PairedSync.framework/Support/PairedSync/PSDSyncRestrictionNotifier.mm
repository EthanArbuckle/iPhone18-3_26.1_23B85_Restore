@interface PSDSyncRestrictionNotifier
- (PSDSyncRestrictionNotifier)init;
- (PSDSyncRestrictionNotifier)initWithScheduler:(id)a3;
- (int)notifyTokenWithName:(id)a3;
- (void)dealloc;
- (void)scheduler:(id)a3 didClearSyncSession:(id)a4 withBlock:(id)a5;
- (void)scheduler:(id)a3 willStartSyncSession:(id)a4;
- (void)setNotifyToken:(int)a3 withValue:(unint64_t)a4 withNotificationName:(id)a5;
- (void)setSyncComplete;
@end

@implementation PSDSyncRestrictionNotifier

- (PSDSyncRestrictionNotifier)init
{
  v3 = +[PSDScheduler sharedScheduler];
  v4 = [(PSDSyncRestrictionNotifier *)self initWithScheduler:v3];

  return v4;
}

- (PSDSyncRestrictionNotifier)initWithScheduler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PSDSyncRestrictionNotifier;
  v5 = [(PSDSyncRestrictionNotifier *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_scheduler, v4);
    v6->_lastSyncSwitchIDNotifyToken = -1;
    v8 = v7;
    [v4 addSchedulerObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);
  [WeakRetained removeSchedulerObserver:self];

  v4.receiver = self;
  v4.super_class = PSDSyncRestrictionNotifier;
  [(PSDSyncRestrictionNotifier *)&v4 dealloc];
}

- (void)scheduler:(id)a3 willStartSyncSession:(id)a4
{
  lastSyncSwitchIDNotifyToken = self->_lastSyncSwitchIDNotifyToken;
  v6 = PSYLastSyncSwitchIDNotification;
  if (lastSyncSwitchIDNotifyToken == -1)
  {
    lastSyncSwitchIDNotifyToken = [(PSDSyncRestrictionNotifier *)self notifyTokenWithName:PSYLastSyncSwitchIDNotification, a4];
    self->_lastSyncSwitchIDNotifyToken = lastSyncSwitchIDNotifyToken;
  }

  [(PSDSyncRestrictionNotifier *)self setNotifyToken:lastSyncSwitchIDNotifyToken withValue:-1 withNotificationName:v6];
}

- (void)scheduler:(id)a3 didClearSyncSession:(id)a4 withBlock:(id)a5
{
  v6 = a5;
  [(PSDSyncRestrictionNotifier *)self setSyncComplete];
  v6[2]();
}

- (void)setSyncComplete
{
  v3 = +[PSYRegistrySingleton registry];
  v4 = [v3 switchIndex];

  lastSyncSwitchIDNotifyToken = self->_lastSyncSwitchIDNotifyToken;
  v6 = PSYLastSyncSwitchIDNotification;
  if (lastSyncSwitchIDNotifyToken == -1)
  {
    lastSyncSwitchIDNotifyToken = [(PSDSyncRestrictionNotifier *)self notifyTokenWithName:PSYLastSyncSwitchIDNotification];
    self->_lastSyncSwitchIDNotifyToken = lastSyncSwitchIDNotifyToken;
  }

  [(PSDSyncRestrictionNotifier *)self setNotifyToken:lastSyncSwitchIDNotifyToken withValue:v4 withNotificationName:v6];
}

- (int)notifyTokenWithName:(id)a3
{
  v3 = a3;
  out_token = -1;
  if (notify_register_check([v3 UTF8String], &out_token))
  {
    v4 = psd_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001A9FC(v3, v6);
      }
    }
  }

  v7 = out_token;

  return v7;
}

- (void)setNotifyToken:(int)a3 withValue:(unint64_t)a4 withNotificationName:(id)a5
{
  v7 = a5;
  v8 = psd_log();
  v9 = v8;
  if (a3 == -1)
  {
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = psd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001AA88(v7, v13);
      }
    }
  }

  else
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = psd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = v7;
        v16 = 2048;
        v17 = a4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating token %{public}@ with value %lld", &v14, 0x16u);
      }
    }

    notify_set_state(a3, a4);
    notify_post([v7 UTF8String]);
  }
}

@end