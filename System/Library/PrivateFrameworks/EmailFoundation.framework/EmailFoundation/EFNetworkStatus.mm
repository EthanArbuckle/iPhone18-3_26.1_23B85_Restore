@interface EFNetworkStatus
+ (EFNetworkStatus)cellular;
+ (EFNetworkStatus)external;
+ (EFNetworkStatus)wifi;
+ (EFNetworkStatus)wired;
- (BOOL)isAvailable;
- (BOOL)isConstrained;
- (BOOL)isExpensive;
- (EFNetworkStatus)initWithInterfaceType:(int)type;
- (EFNetworkStatus)initWithPathMonitor:(id)monitor;
@end

@implementation EFNetworkStatus

void ___ef_log_EFNetworkStatus_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFNetworkStatus");
  v1 = _ef_log_EFNetworkStatus_log;
  _ef_log_EFNetworkStatus_log = v0;
}

+ (EFNetworkStatus)external
{
  if (external_onceToken != -1)
  {
    +[EFNetworkStatus external];
  }

  v3 = external_sNetworkStatus;

  return v3;
}

void __27__EFNetworkStatus_external__block_invoke()
{
  v2 = nw_path_monitor_create();
  v0 = [[EFNetworkStatus alloc] initWithPathMonitor:v2];
  v1 = external_sNetworkStatus;
  external_sNetworkStatus = v0;
}

+ (EFNetworkStatus)cellular
{
  if (cellular_onceToken != -1)
  {
    +[EFNetworkStatus cellular];
  }

  v3 = cellular_sNetworkStatus;

  return v3;
}

void __27__EFNetworkStatus_cellular__block_invoke()
{
  v0 = [[EFNetworkStatus alloc] initWithInterfaceType:2];
  v1 = cellular_sNetworkStatus;
  cellular_sNetworkStatus = v0;
}

+ (EFNetworkStatus)wifi
{
  if (wifi_onceToken != -1)
  {
    +[EFNetworkStatus wifi];
  }

  v3 = wifi_sNetworkStatus;

  return v3;
}

void __23__EFNetworkStatus_wifi__block_invoke()
{
  v0 = [[EFNetworkStatus alloc] initWithInterfaceType:1];
  v1 = wifi_sNetworkStatus;
  wifi_sNetworkStatus = v0;
}

+ (EFNetworkStatus)wired
{
  if (wired_onceToken != -1)
  {
    +[EFNetworkStatus wired];
  }

  v3 = wired_sNetworkStatus;

  return v3;
}

void __24__EFNetworkStatus_wired__block_invoke()
{
  v0 = [[EFNetworkStatus alloc] initWithInterfaceType:3];
  v1 = wired_sNetworkStatus;
  wired_sNetworkStatus = v0;
}

- (EFNetworkStatus)initWithInterfaceType:(int)type
{
  v4 = nw_path_monitor_create_with_type(type);
  v5 = [(EFNetworkStatus *)self initWithPathMonitor:v4];

  return v5;
}

- (EFNetworkStatus)initWithPathMonitor:(id)monitor
{
  monitorCopy = monitor;
  v25.receiver = self;
  v25.super_class = EFNetworkStatus;
  v6 = [(EFNetworkStatus *)&v25 init];
  v7 = v6;
  if (v6)
  {
    v6->_currentPathLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pathMonitor, monitor);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.mail.EFNetworkStatus.monitorQueue", v9);
    monitorQueue = v7->_monitorQueue;
    v7->_monitorQueue = v10;

    nw_path_monitor_set_queue(v7->_pathMonitor, v7->_monitorQueue);
    v12 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    objc_initWeak(&location, v12);
    objc_initWeak(&from, v7);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __39__EFNetworkStatus_initWithPathMonitor___block_invoke;
    v20 = &unk_1E8248E00;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    nw_path_monitor_set_update_handler(monitorCopy, &v17);
    nw_path_monitor_start(monitorCopy);
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{1.0, v17, v18, v19, v20}];
    v14 = [v12 lockWhenCondition:1 beforeDate:v13];

    if (v14)
    {
      [v12 unlock];
    }

    else
    {
      v15 = _ef_log_EFNetworkStatus();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [EFNetworkStatus initWithPathMonitor:v15];
      }
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __39__EFNetworkStatus_initWithPathMonitor___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    os_unfair_lock_lock(v5 + 2);
    objc_storeStrong(&v6[8], a2);
    os_unfair_lock_unlock(v6 + 2);
    [WeakRetained lock];
    [WeakRetained unlockWithCondition:1];
  }
}

- (BOOL)isAvailable
{
  os_unfair_lock_lock(&self->_currentPathLock);
  v3 = self->_currentPath;
  os_unfair_lock_unlock(&self->_currentPathLock);
  if (v3)
  {
    v4 = ((nw_path_get_status(v3) - 1) & 0xFFFFFFFD) == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isExpensive
{
  os_unfair_lock_lock(&self->_currentPathLock);
  v3 = self->_currentPath;
  os_unfair_lock_unlock(&self->_currentPathLock);
  if (v3)
  {
    v4 = MEMORY[0x1C6957490](v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isConstrained
{
  os_unfair_lock_lock(&self->_currentPathLock);
  v3 = self->_currentPath;
  os_unfair_lock_unlock(&self->_currentPathLock);
  if (v3)
  {
    v4 = MEMORY[0x1C6957480](v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end