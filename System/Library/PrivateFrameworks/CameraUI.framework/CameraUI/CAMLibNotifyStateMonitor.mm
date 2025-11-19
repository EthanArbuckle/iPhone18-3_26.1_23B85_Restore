@interface CAMLibNotifyStateMonitor
- (BOOL)monitoredValue;
- (CAMLibNotifyStateMonitor)initWithNotificationName:(const char *)a3 queue:(id)a4 updateHandler:(id)a5;
- (void)_startMonitoringIfNeeded;
- (void)_updateMonitoredValue;
- (void)dealloc;
- (void)setNeedsUpdate;
@end

@implementation CAMLibNotifyStateMonitor

- (CAMLibNotifyStateMonitor)initWithNotificationName:(const char *)a3 queue:(id)a4 updateHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CAMLibNotifyStateMonitor;
  v11 = [(CAMLibNotifyStateMonitor *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->__notifyName = a3;
    objc_storeStrong(&v11->__notifyQueue, a4);
    v13 = [v10 copy];
    updateHandler = v12->__updateHandler;
    v12->__updateHandler = v13;
  }

  return v12;
}

- (void)_startMonitoringIfNeeded
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "notify_register_dispatch failed with %d", v2, 8u);
}

- (void)dealloc
{
  notifyToken = self->__notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = CAMLibNotifyStateMonitor;
  [(CAMLibNotifyStateMonitor *)&v4 dealloc];
}

- (void)_updateMonitoredValue
{
  v3 = [(CAMLibNotifyStateMonitor *)self _updateHandler];
  [(CAMLibNotifyStateMonitor *)self set_monitoredValue:v3[2](v3, [(CAMLibNotifyStateMonitor *)self _notifyToken])];
}

- (BOOL)monitoredValue
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CAMLibNotifyStateMonitor *)self _notifyQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CAMLibNotifyStateMonitor_monitoredValue__block_invoke;
  v5[3] = &unk_1E76FB040;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __42__CAMLibNotifyStateMonitor_monitoredValue__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startMonitoringIfNeeded];
  result = [*(a1 + 32) _monitoredValue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setNeedsUpdate
{
  v3 = [(CAMLibNotifyStateMonitor *)self _notifyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CAMLibNotifyStateMonitor_setNeedsUpdate__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __42__CAMLibNotifyStateMonitor_setNeedsUpdate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _notifyRegistered];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateMonitoredValue];
  }

  return result;
}

@end