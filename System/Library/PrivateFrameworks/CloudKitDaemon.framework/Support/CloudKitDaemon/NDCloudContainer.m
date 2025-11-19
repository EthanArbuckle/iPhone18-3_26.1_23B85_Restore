@interface NDCloudContainer
+ (id)containerIDForPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4;
- (BOOL)isForeground;
- (NDCloudContainer)initWithOperationID:(id)a3;
- (void)addObserver:(id)a3;
- (void)containerDidEnterBackground:(id)a3;
- (void)containerDidEnterForeground:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation NDCloudContainer

+ (id)containerIDForPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v4 = [sub_100002060() containerIDFromPrimaryIdentifier:v7 secondaryIdentifier:v6];
  }

  return v4;
}

- (NDCloudContainer)initWithOperationID:(id)a3
{
  v7.receiver = self;
  v7.super_class = NDCloudContainer;
  v3 = [(NDApplication *)&v7 initWithOperationID:a3];
  if (v3)
  {
    v4 = objc_alloc_init(sub_100002060());
    monitor = v3->_monitor;
    v3->_monitor = v4;

    v3->_initializedForegroundStateFromMonitorCallback = 0;
  }

  return v3;
}

- (BOOL)isForeground
{
  if (!self->_initializedForegroundStateFromMonitorCallback)
  {
    self->_isForeground = [sub_100002060() isContainerIDForeground:self->super._bundleIdentifier];
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ckdd;
    if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = self->super._bundleIdentifier;
      if (self->_isForeground)
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v7 = 138543618;
      v8 = bundleIdentifier;
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Being asked if container with identifier %{public}@ is foreground before getting callback from BRContainersMonitor! Foreground state is %c", &v7, 0x12u);
    }
  }

  return self->_isForeground;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(NSMutableArray *)v5->super._observers count])
  {
    [(BRContainersMonitor *)v5->_monitor addObserver:v5 forContainerID:v5->super._bundleIdentifier];
  }

  v6.receiver = v5;
  v6.super_class = NDCloudContainer;
  [(NDApplication *)&v6 addObserver:v4];
  objc_sync_exit(v5);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6.receiver = v5;
  v6.super_class = NDCloudContainer;
  [(NDApplication *)&v6 removeObserver:v4];
  if (![(NSMutableArray *)v5->super._observers count])
  {
    [(BRContainersMonitor *)v5->_monitor removeObserver:v5 forContainerID:v5->super._bundleIdentifier];
  }

  objc_sync_exit(v5);
}

- (void)containerDidEnterBackground:(id)a3
{
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Container %{public}@ entered background", buf, 0xCu);
  }

  self->_isForeground = 0;
  if (self->_initializedForegroundStateFromMonitorCallback)
  {
    v6.receiver = self;
    v6.super_class = NDCloudContainer;
    [(NDApplication *)&v6 invokeSelectorForAllObservers:"applicationNoLongerInForeground:"];
  }

  self->_initializedForegroundStateFromMonitorCallback = 1;
}

- (void)containerDidEnterForeground:(id)a3
{
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ckdd;
  if (os_log_type_enabled(ck_log_facility_ckdd, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Container %{public}@ entered foreground", buf, 0xCu);
  }

  self->_isForeground = 1;
  if (self->_initializedForegroundStateFromMonitorCallback)
  {
    v6.receiver = self;
    v6.super_class = NDCloudContainer;
    [(NDApplication *)&v6 invokeSelectorForAllObservers:"applicationEnteredForeground:"];
  }

  self->_initializedForegroundStateFromMonitorCallback = 1;
}

@end