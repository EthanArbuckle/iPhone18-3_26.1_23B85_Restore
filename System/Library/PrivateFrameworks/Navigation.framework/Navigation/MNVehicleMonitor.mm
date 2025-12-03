@interface MNVehicleMonitor
- (MNVehicleMonitorDelegate)delegate;
- (void)dealloc;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MNVehicleMonitor

- (MNVehicleMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stopMonitoring
{
  if (self->_isMonitoring)
  {
    v9 = v2;
    v10 = v3;
    v5 = MNGetMNVehicleMonitorLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Stop monitoring vehicle connection.", v8, 2u);
    }

    vehicleConnectedToken = self->_vehicleConnectedToken;
    if (vehicleConnectedToken)
    {
      notify_cancel(vehicleConnectedToken);
    }

    vehicleDisconnectedToken = self->_vehicleDisconnectedToken;
    if (vehicleDisconnectedToken)
    {
      notify_cancel(vehicleDisconnectedToken);
    }

    self->_isMonitoring = 0;
  }
}

- (void)startMonitoring
{
  v3 = MNGetMNVehicleMonitorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Start monitoring vehicle connection.", buf, 2u);
  }

  v4 = dispatch_get_global_queue(21, 0);
  objc_initWeak(buf, self);
  uTF8String = [*MEMORY[0x1E6963538] UTF8String];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __35__MNVehicleMonitor_startMonitoring__block_invoke;
  handler[3] = &unk_1E8430E58;
  objc_copyWeak(&v12, buf);
  notify_register_dispatch(uTF8String, &self->_vehicleConnectedToken, v4, handler);
  uTF8String2 = [*MEMORY[0x1E6963540] UTF8String];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__MNVehicleMonitor_startMonitoring__block_invoke_2;
  v8[3] = &unk_1E842B0A8;
  v7 = v4;
  v9 = v7;
  objc_copyWeak(&v10, buf);
  notify_register_dispatch(uTF8String2, &self->_vehicleDisconnectedToken, v7, v8);
  self->_isMonitoring = 1;
  objc_destroyWeak(&v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __35__MNVehicleMonitor_startMonitoring__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNVehicleMonitorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Received vehicle connected notification.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__MNVehicleMonitor_startMonitoring__block_invoke_5;
    v7[3] = &unk_1E8430ED8;
    v7[4] = WeakRetained;
    MNRunAsyncOnNavigationQueue(v7);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[MNVehicleMonitor startMonitoring]_block_invoke";
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __35__MNVehicleMonitor_startMonitoring__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 200000000);
  v3 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MNVehicleMonitor_startMonitoring__block_invoke_3;
  block[3] = &unk_1E8430EA0;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_after(v2, v3, block);
  objc_destroyWeak(&v5);
}

void __35__MNVehicleMonitor_startMonitoring__block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[MNCarPlayConnectionMonitor sharedInstance];
  v3 = [v2 isConnected];

  v4 = MNGetMNVehicleMonitorLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Received vehicle disconnected notification, but a CarPlay connection is still detected. Ignoring notification.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Received vehicle disconnected notification.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __35__MNVehicleMonitor_startMonitoring__block_invoke_10;
      v9[3] = &unk_1E8430ED8;
      v9[4] = WeakRetained;
      MNRunAsyncOnNavigationQueue(v9);
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v11 = "[MNVehicleMonitor startMonitoring]_block_invoke";
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __35__MNVehicleMonitor_startMonitoring__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 vehicleMonitorDidDisconnectFromVehicle:*(a1 + 32)];
  }
}

void __35__MNVehicleMonitor_startMonitoring__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 vehicleMonitorDidConnectToVehicle:*(a1 + 32)];
  }
}

- (void)dealloc
{
  [(MNVehicleMonitor *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = MNVehicleMonitor;
  [(MNVehicleMonitor *)&v3 dealloc];
}

@end