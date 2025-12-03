@interface PSDSyncRestrictionNotifier
- (PSDSyncRestrictionNotifier)init;
- (PSDSyncRestrictionNotifier)initWithScheduler:(id)scheduler;
- (int)notifyTokenWithName:(id)name;
- (void)dealloc;
- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block;
- (void)scheduler:(id)scheduler willStartSyncSession:(id)session;
- (void)setNotifyToken:(int)token withValue:(unint64_t)value withNotificationName:(id)name;
- (void)setSyncComplete;
@end

@implementation PSDSyncRestrictionNotifier

- (PSDSyncRestrictionNotifier)init
{
  v3 = +[PSDScheduler sharedScheduler];
  v4 = [(PSDSyncRestrictionNotifier *)self initWithScheduler:v3];

  return v4;
}

- (PSDSyncRestrictionNotifier)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10.receiver = self;
  v10.super_class = PSDSyncRestrictionNotifier;
  v5 = [(PSDSyncRestrictionNotifier *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_scheduler, schedulerCopy);
    v6->_lastSyncSwitchIDNotifyToken = -1;
    v8 = v7;
    [schedulerCopy addSchedulerObserver:v6];
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

- (void)scheduler:(id)scheduler willStartSyncSession:(id)session
{
  lastSyncSwitchIDNotifyToken = self->_lastSyncSwitchIDNotifyToken;
  v6 = PSYLastSyncSwitchIDNotification;
  if (lastSyncSwitchIDNotifyToken == -1)
  {
    lastSyncSwitchIDNotifyToken = [(PSDSyncRestrictionNotifier *)self notifyTokenWithName:PSYLastSyncSwitchIDNotification, session];
    self->_lastSyncSwitchIDNotifyToken = lastSyncSwitchIDNotifyToken;
  }

  [(PSDSyncRestrictionNotifier *)self setNotifyToken:lastSyncSwitchIDNotifyToken withValue:-1 withNotificationName:v6];
}

- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block
{
  blockCopy = block;
  [(PSDSyncRestrictionNotifier *)self setSyncComplete];
  blockCopy[2]();
}

- (void)setSyncComplete
{
  v3 = +[PSYRegistrySingleton registry];
  switchIndex = [v3 switchIndex];

  lastSyncSwitchIDNotifyToken = self->_lastSyncSwitchIDNotifyToken;
  v6 = PSYLastSyncSwitchIDNotification;
  if (lastSyncSwitchIDNotifyToken == -1)
  {
    lastSyncSwitchIDNotifyToken = [(PSDSyncRestrictionNotifier *)self notifyTokenWithName:PSYLastSyncSwitchIDNotification];
    self->_lastSyncSwitchIDNotifyToken = lastSyncSwitchIDNotifyToken;
  }

  [(PSDSyncRestrictionNotifier *)self setNotifyToken:lastSyncSwitchIDNotifyToken withValue:switchIndex withNotificationName:v6];
}

- (int)notifyTokenWithName:(id)name
{
  nameCopy = name;
  out_token = -1;
  if (notify_register_check([nameCopy UTF8String], &out_token))
  {
    v4 = psd_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001A9FC(nameCopy, v6);
      }
    }
  }

  v7 = out_token;

  return v7;
}

- (void)setNotifyToken:(int)token withValue:(unint64_t)value withNotificationName:(id)name
{
  nameCopy = name;
  v8 = psd_log();
  v9 = v8;
  if (token == -1)
  {
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = psd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001AA88(nameCopy, v13);
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
        v15 = nameCopy;
        v16 = 2048;
        valueCopy = value;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating token %{public}@ with value %lld", &v14, 0x16u);
      }
    }

    notify_set_state(token, value);
    notify_post([nameCopy UTF8String]);
  }
}

@end