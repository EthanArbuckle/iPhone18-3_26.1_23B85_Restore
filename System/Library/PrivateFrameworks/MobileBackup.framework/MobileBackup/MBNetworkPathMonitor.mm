@interface MBNetworkPathMonitor
+ (const)_pathTypeStringWithPathType:(int)a3;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivity;
- (MBNetworkPathMonitor)init;
- (MBNetworkPathMonitor)initWithQueue:(id)a3;
- (int)cellularRadioType;
- (unint64_t)backupOnCellularSupport;
- (void)_cancelMonitors;
- (void)_handleCellularStateChange:(id)a3 backupOnCellularSupport:(unint64_t)a4;
- (void)_handleWiFiStateChange;
- (void)_performBlock:(id)a3;
- (void)_startCellularMonitor;
- (void)_startWiFiMonitor;
- (void)cancel;
- (void)dealloc;
- (void)fetchNetworkConnectivityWithBlock:(id)a3;
- (void)start;
@end

@implementation MBNetworkPathMonitor

void __45__MBNetworkPathMonitor__startCellularMonitor__block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [objc_opt_class() _pathTypeStringWithPathType:2];
    status = nw_path_get_status(v3);
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v23 = v5;
      v24 = 1024;
      v25 = status;
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEBUG, "%{public}s path changed, status:%d - %{public}@", buf, 0x1Cu);
      _MBLog(@"Db", "%{public}s path changed, status:%d - %{public}@", v8, v9, v10, v11, v12, v13, v5);
    }

    v14 = status & 0xFFFFFFFD;
    v15 = MEMORY[0x1E12C55B0](v3);
    v16 = MEMORY[0x1E12C55A0](v3);
    v17 = 0x1000000;
    if (!v16)
    {
      v17 = 0;
    }

    v18 = 0x10000;
    if (!v15)
    {
      v18 = 0;
    }

    v19 = 257;
    if (v14 != 1)
    {
      v19 = 1;
    }

    [WeakRetained _handleCellularStateChange:v19 | v18 | v17 backupOnCellularSupport:WeakRetained[7]];
    v20 = [WeakRetained initialCellularStateGroup];
    if (v20)
    {
      [WeakRetained setInitialCellularStateGroup:0];
      dispatch_group_leave(v20);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (MBNetworkPathMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MBNetworkPathMonitor;
  v6 = [(MBNetworkPathMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    atomic_store(0, &v6->_started);
    objc_storeStrong(&v6->_queue, a3);
    v7->_backupOnCellularSupport = 0;
    v7->_backupOnCellularSupportChanged = 0;
    v7->_wifiPathState = 0;
    v7->_cellularPathState = 0;
  }

  return v7;
}

- (MBNetworkPathMonitor)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

  v5 = objc_opt_class();
  Name = class_getName(v5);
  v7 = dispatch_queue_create(Name, v4);
  v8 = [(MBNetworkPathMonitor *)self initWithQueue:v7];

  return v8;
}

- (void)dealloc
{
  [(MBNetworkPathMonitor *)self _cancelMonitors];
  v3.receiver = self;
  v3.super_class = MBNetworkPathMonitor;
  [(MBNetworkPathMonitor *)&v3 dealloc];
}

- (void)_cancelMonitors
{
  v3 = [(MBNetworkPathMonitor *)self dataSubscriptionMonitor];
  [v3 cancel];

  [(MBNetworkPathMonitor *)self setDataSubscriptionMonitor:0];
  cellularPathMonitor = self->_cellularPathMonitor;
  if (cellularPathMonitor)
  {
    nw_path_monitor_cancel(cellularPathMonitor);
    v5 = self->_cellularPathMonitor;
    self->_cellularPathMonitor = 0;
  }

  wifiPathMonitor = self->_wifiPathMonitor;
  if (wifiPathMonitor)
  {
    nw_path_monitor_cancel(wifiPathMonitor);
    v7 = self->_wifiPathMonitor;
    self->_wifiPathMonitor = 0;
  }

  wiredPathMonitor = self->_wiredPathMonitor;
  if (wiredPathMonitor)
  {
    nw_path_monitor_cancel(wiredPathMonitor);
    v9 = self->_wiredPathMonitor;
    self->_wiredPathMonitor = 0;
  }
}

- (void)_performBlock:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v5 = [(MBNetworkPathMonitor *)self initialCellularStateGroup];
  if (v5)
  {
    [v4 addObject:v5];
  }

  v6 = [(MBNetworkPathMonitor *)self initialWiFiStateGroup];

  if (v6)
  {
    [v4 addObject:v6];
  }

  v7 = [(MBNetworkPathMonitor *)self initialWiredStateGroup];

  if (v7)
  {
    [v4 addObject:v7];
  }

  v8 = [(MBNetworkPathMonitor *)self initialBackupOnCellularSupportGroup];

  if (v8)
  {
    [v4 addObject:v8];
  }

  v9 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v13);

        dispatch_group_enter(v9);
        v15 = [(MBNetworkPathMonitor *)self queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __38__MBNetworkPathMonitor__performBlock___block_invoke;
        block[3] = &unk_1E8684358;
        v21 = v9;
        dispatch_group_notify(v8, v15, block);

        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v16 = [(MBNetworkPathMonitor *)self queue];
  dispatch_group_notify(v9, v16, v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __30__MBNetworkPathMonitor_cancel__block_invoke;
  v2[3] = &unk_1E8684358;
  v2[4] = self;
  [(MBNetworkPathMonitor *)self _performBlock:v2];
}

+ (const)_pathTypeStringWithPathType:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return "???";
  }

  else
  {
    return off_1E8684418[a3 - 1];
  }
}

- (void)_handleWiFiStateChange
{
  v3 = [(MBNetworkPathMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  if (self->_wifiPathState.isMonitored && self->_wiredPathState.isMonitored)
  {
    v4 = 40;
    if (self->_wiredPathState.isAvailable)
    {
      v4 = 44;
    }

    v5 = *(&self->super.isa + v4);
    v6 = [(MBNetworkPathMonitor *)self networkPathUpdateHandler];

    if (v6)
    {
      v7 = [(MBNetworkPathMonitor *)self networkPathUpdateHandler];
      v7[2](v7, 1, v5);
    }
  }
}

- (void)_startWiFiMonitor
{
  v3 = nw_path_monitor_create_with_type(nw_interface_type_wifi);
  objc_initWeak(&location, self);
  update_handler[0] = MEMORY[0x1E69E9820];
  update_handler[1] = 3221225472;
  update_handler[2] = __41__MBNetworkPathMonitor__startWiFiMonitor__block_invoke;
  update_handler[3] = &unk_1E8684380;
  objc_copyWeak(&v10, &location);
  nw_path_monitor_set_update_handler(v3, update_handler);
  v4 = [(MBNetworkPathMonitor *)self queue];
  nw_path_monitor_set_queue(v3, v4);

  objc_storeStrong(&self->_wifiPathMonitor, v3);
  v5 = nw_path_monitor_create_with_type(nw_interface_type_wired);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__MBNetworkPathMonitor__startWiFiMonitor__block_invoke_2;
  v7[3] = &unk_1E8684380;
  objc_copyWeak(&v8, &location);
  nw_path_monitor_set_update_handler(v5, v7);
  v6 = [(MBNetworkPathMonitor *)self queue];
  nw_path_monitor_set_queue(v5, v6);

  objc_storeStrong(&self->_wiredPathMonitor, v5);
  nw_path_monitor_start(v3);
  nw_path_monitor_start(v5);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __41__MBNetworkPathMonitor__startWiFiMonitor__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _updateState:WeakRetained + 40 path:v6 pathType:1])
    {
      [v4 _handleWiFiStateChange];
    }

    v5 = [v4 initialWiFiStateGroup];
    if (v5)
    {
      [v4 setInitialWiFiStateGroup:0];
      dispatch_group_leave(v5);
    }
  }
}

void __41__MBNetworkPathMonitor__startWiFiMonitor__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _updateState:WeakRetained + 11 path:v8 pathType:3])
    {
      [v4 _handleWiFiStateChange];
      v5 = [v4 networkPathUpdateHandler];

      if (v5)
      {
        v6 = [v4 networkPathUpdateHandler];
        v6[2](v6, 3, v4[11]);
      }
    }

    v7 = [v4 initialWiredStateGroup];
    if (v7)
    {
      [v4 setInitialWiredStateGroup:0];
      dispatch_group_leave(v7);
    }
  }
}

- (void)_handleCellularStateChange:(id)a3 backupOnCellularSupport:(unint64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = [(MBNetworkPathMonitor *)self queue];
  dispatch_assert_queue_V2(v7);

  if (__PAIR64__((*&a3 >> 8) & 1, a3.var0) == __PAIR64__(self->_cellularPathState.isAvailable, self->_cellularPathState.isMonitored) && (HIWORD(*&a3) & 1) == self->_cellularPathState.isExpensive && (HIBYTE(*&a3) & 1) == self->_cellularPathState.isConstrained)
  {
    v8 = 0;
  }

  else
  {
    self->_cellularPathState = a3;
    v8 = 1;
  }

  if (self->_backupOnCellularSupportChanged && self->_backupOnCellularSupport == a4)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = 0;
  }

  else
  {
    self->_backupOnCellularSupport = a4;
    v9 = 1;
    self->_backupOnCellularSupportChanged = 1;
  }

  v10 = [objc_opt_class() _pathTypeStringWithPathType:2];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v24 = v10;
    v25 = 1024;
    v26 = (*&a3 >> 8) & 1;
    v27 = 1024;
    v28 = HIWORD(*&a3) & 1;
    v29 = 1024;
    v30 = HIBYTE(*&a3) & 1;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s, available:%d, expensive:%d, constrained:%d, backupOnCellularSupport:0x%lx", buf, 0x28u);
    _MBLog(@"Df", "%{public}s, available:%d, expensive:%d, constrained:%d, backupOnCellularSupport:0x%lx", v12, v13, v14, v15, v16, v17, v10);
  }

  if (v8)
  {
    v18 = [(MBNetworkPathMonitor *)self networkPathUpdateHandler];

    if (v18)
    {
      v19 = [(MBNetworkPathMonitor *)self networkPathUpdateHandler];
      v19[2](v19, 2, *&a3);
    }
  }

  if (v9)
  {
    v20 = [(MBNetworkPathMonitor *)self backupOnCellularSupportUpdateHandler];

    if (v20)
    {
      v21 = [(MBNetworkPathMonitor *)self backupOnCellularSupportUpdateHandler];
      v21[2](v21, a4);
    }
  }

LABEL_19:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)_startCellularMonitor
{
  v3 = [(MBNetworkPathMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v4 = [MBCellularDataSubscriptionMonitor alloc];
  v5 = [(MBNetworkPathMonitor *)self queue];
  v6 = [(MBCellularDataSubscriptionMonitor *)v4 initWithQueue:v5 timeout:30];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__MBNetworkPathMonitor__startCellularMonitor__block_invoke;
  v11[3] = &unk_1E86843A8;
  objc_copyWeak(&v12, &location);
  [(MBCellularDataSubscriptionMonitor *)v6 setBackupOnCellularSupportHandler:v11];
  [(MBNetworkPathMonitor *)self setDataSubscriptionMonitor:v6];
  v7 = nw_path_monitor_create_with_type(nw_interface_type_cellular);
  update_handler[0] = MEMORY[0x1E69E9820];
  update_handler[1] = 3221225472;
  update_handler[2] = __45__MBNetworkPathMonitor__startCellularMonitor__block_invoke_2;
  update_handler[3] = &unk_1E8684380;
  objc_copyWeak(&v10, &location);
  nw_path_monitor_set_update_handler(v7, update_handler);
  v8 = [(MBNetworkPathMonitor *)self queue];
  nw_path_monitor_set_queue(v7, v8);

  objc_storeStrong(&self->_cellularPathMonitor, v7);
  [(MBCellularDataSubscriptionMonitor *)v6 start];
  nw_path_monitor_start(v7);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __45__MBNetworkPathMonitor__startCellularMonitor__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _handleCellularStateChange:WeakRetained[12] backupOnCellularSupport:a2];
    v4 = [v5 initialBackupOnCellularSupportGroup];
    if (v4)
    {
      [v5 setInitialBackupOnCellularSupportGroup:0];
      dispatch_group_leave(v4);
    }

    WeakRetained = v5;
  }
}

- (void)start
{
  if ((atomic_exchange(&self->_started, 1u) & 1) == 0)
  {
    v3 = dispatch_group_create();
    [(MBNetworkPathMonitor *)self setInitialWiFiStateGroup:v3];

    v4 = [(MBNetworkPathMonitor *)self initialWiFiStateGroup];
    dispatch_group_enter(v4);

    v5 = dispatch_group_create();
    [(MBNetworkPathMonitor *)self setInitialWiredStateGroup:v5];

    v6 = [(MBNetworkPathMonitor *)self initialWiredStateGroup];
    dispatch_group_enter(v6);

    v7 = dispatch_group_create();
    [(MBNetworkPathMonitor *)self setInitialCellularStateGroup:v7];

    v8 = [(MBNetworkPathMonitor *)self initialCellularStateGroup];
    dispatch_group_enter(v8);

    v9 = dispatch_group_create();
    [(MBNetworkPathMonitor *)self setInitialBackupOnCellularSupportGroup:v9];

    v10 = [(MBNetworkPathMonitor *)self initialBackupOnCellularSupportGroup];
    dispatch_group_enter(v10);

    v11 = [(MBNetworkPathMonitor *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__MBNetworkPathMonitor_start__block_invoke;
    block[3] = &unk_1E8684358;
    block[4] = self;
    dispatch_async(v11, block);
  }
}

uint64_t __29__MBNetworkPathMonitor_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startWiFiMonitor];
  v2 = *(a1 + 32);

  return [v2 _startCellularMonitor];
}

- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivity
{
  v3 = [(MBNetworkPathMonitor *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v17 = 0;
  v18 = 0;
  v16 = &unk_1DEBA09A1;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__MBNetworkPathMonitor_networkConnectivity__block_invoke;
  v10[3] = &unk_1E86843D0;
  v12 = &v13;
  v5 = v4;
  v11 = v5;
  [(MBNetworkPathMonitor *)self fetchNetworkConnectivityWithBlock:v10];
  MBGroupWaitForever(v5);
  v6 = v14[4];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);
  v8 = v6;
  v9 = v7;
  result.var4 = v9;
  result.var0 = v8;
  result.var1 = BYTE1(v8);
  result.var2 = BYTE2(v8);
  result.var3 = HIDWORD(v8);
  return result;
}

void __43__MBNetworkPathMonitor_networkConnectivity__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  dispatch_group_leave(*(a1 + 32));
}

- (void)fetchNetworkConnectivityWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__MBNetworkPathMonitor_fetchNetworkConnectivityWithBlock___block_invoke;
  v6[3] = &unk_1E86843F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MBNetworkPathMonitor *)self _performBlock:v6];
}

uint64_t __58__MBNetworkPathMonitor_fetchNetworkConnectivityWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[41] & 1) == 0)
  {
    v3 = v2[45];
  }

  if (v2[49] == 1)
  {
    v4 = v2[50] << 16;
  }

  v5 = [v2 dataSubscriptionMonitor];
  [v5 cellularRadioType];

  v6 = [*(a1 + 32) dataSubscriptionMonitor];
  [v6 backupOnCellularSupport];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (unint64_t)backupOnCellularSupport
{
  v2 = [(MBNetworkPathMonitor *)self dataSubscriptionMonitor];
  v3 = [v2 backupOnCellularSupport];

  return v3;
}

- (int)cellularRadioType
{
  v2 = [(MBNetworkPathMonitor *)self dataSubscriptionMonitor];
  v3 = [v2 cellularRadioType];

  return v3;
}

@end