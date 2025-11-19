@interface CPLNetworkWatcher
- (BOOL)_isRestrictedPath:(id)a3 policies:(id)a4;
- (CPLNetworkWatcher)initWithQueue:(id)a3;
- (CPLNetworkWatcherDelegate)delegate;
- (void)_getCellularPolicyWithClient:(network_usage_policy_client_s *)a3;
- (void)_updateAirplaneMode;
- (void)_updateCellularPolicy:(id)a3;
- (void)_updateCellularPolicyFromPolicies:(id)a3;
- (void)_updateNetworkState:(id)a3;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation CPLNetworkWatcher

void __26__CPLNetworkWatcher_start__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 16) == *(a1 + 40))
  {
    v4 = a2;
    v5 = -[CPLNetworkState initWithNetworkPath:cellularRestricted:inAirplaneMode:]([CPLNetworkState alloc], "initWithNetworkPath:cellularRestricted:inAirplaneMode:", v4, [*(*(a1 + 32) + 48) isCellularRestricted], objc_msgSend(*(*(a1 + 32) + 48), "isInAirplaneMode"));

    [*(a1 + 32) _updateNetworkState:v5];
  }
}

- (CPLNetworkWatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stop
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__CPLNetworkWatcher_stop__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_1813;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __25__CPLNetworkWatcher_stop__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLNetworkOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Stopping monitoring network path", v11, 2u);
      }
    }

    v3 = [[CPLNetworkState alloc] initWithNetworkPath:0 cellularRestricted:0 inAirplaneMode:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    nw_path_monitor_cancel(*(*(a1 + 32) + 16));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    v8 = *(*(a1 + 32) + 24);
    network_usage_policy_destroy_client();
    *(*(a1 + 32) + 24) = 0;
    [*(*(a1 + 32) + 32) setDelegate:0];
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;
  }
}

- (void)dealloc
{
  if (*&self->_monitor != 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Network watcher has not been stopped before deallocation", buf, 2u);
      }
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLNetworkWatcher.m"];
    v7 = @"Network watcher has not been stopped before deallocation";
    v8 = v5;
    v9 = a2;
    v10 = self;
    v11 = v6;
    v12 = 199;
LABEL_14:
    [v8 handleFailureInMethod:v9 object:v10 file:v11 lineNumber:v12 description:v7];

    abort();
  }

  if (self->_radiosPreferences)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Radios preferences was not nullified before deallocation", buf, 2u);
      }
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLNetworkWatcher.m"];
    v7 = @"Radios preferences was not nullified before deallocation";
    v8 = v5;
    v9 = a2;
    v10 = self;
    v11 = v6;
    v12 = 200;
    goto LABEL_14;
  }

  v14.receiver = self;
  v14.super_class = CPLNetworkWatcher;
  [(CPLNetworkWatcher *)&v14 dealloc];
}

- (void)start
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__CPLNetworkWatcher_start__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_1813;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __26__CPLNetworkWatcher_start__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v22 = v4;
    v23 = v3;
    v24 = v1;
    v25 = v2;
    v6 = nw_path_monitor_create();
    objc_storeStrong((*(a1 + 32) + 16), v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    update_handler[0] = MEMORY[0x1E69E9820];
    update_handler[1] = 3221225472;
    update_handler[2] = __26__CPLNetworkWatcher_start__block_invoke_2;
    update_handler[3] = &unk_1E861BDC0;
    update_handler[4] = v7;
    v9 = v6;
    v21 = v9;
    nw_path_monitor_set_update_handler(v8, update_handler);
    nw_path_monitor_set_queue(*(*(a1 + 32) + 16), *(*(a1 + 32) + 8));
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLNetworkOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Starting monitoring network path", buf, 2u);
      }
    }

    nw_path_monitor_start(*(*(a1 + 32) + 16));
    client = network_usage_policy_create_client();
    v12 = *(*(a1 + 32) + 8);
    v17 = MEMORY[0x1E69E9820];
    v18 = *(a1 + 32);
    network_usage_policy_set_changed_handler();
    *(*(a1 + 32) + 24) = client;
    v13 = [objc_alloc(MEMORY[0x1E698B6B0]) initWithQueue:{*(*(a1 + 32) + 8), v17, 3221225472, __26__CPLNetworkWatcher_start__block_invoke_7, &unk_1E861BD98, v18, client}];
    [v13 setDelegate:*(a1 + 32)];
    v14 = *(a1 + 32);
    v15 = *(v14 + 32);
    *(v14 + 32) = v13;
    v16 = v13;

    [*(*(a1 + 32) + 32) refresh];
    [*(a1 + 32) _updateAirplaneMode];
  }
}

void *__26__CPLNetworkWatcher_start__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (*(v3 + 8) == result[3])
  {
    return [result _updateCellularPolicyFromPolicies:a2];
  }

  return result;
}

- (void)_updateAirplaneMode
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(RadiosPreferences *)self->_radiosPreferences airplaneMode];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLNetworkOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "not in airplane mode";
      if (v3)
      {
        v5 = "in airplane mode";
      }

      v10 = 136315138;
      v11 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Updated airplane mode: %s", &v10, 0xCu);
    }
  }

  v6 = [CPLNetworkState alloc];
  v7 = [(CPLNetworkState *)self->_networkState networkPath];
  v8 = [(CPLNetworkState *)v6 initWithNetworkPath:v7 cellularRestricted:[(CPLNetworkState *)self->_networkState isCellularRestricted] inAirplaneMode:v3];

  [(CPLNetworkWatcher *)self _updateNetworkState:v8];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_getCellularPolicyWithClient:(network_usage_policy_client_s *)a3
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLNetworkOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Getting cellular policy", buf, 2u);
    }
  }

  network_usage_policy_get_for_bundle();
}

uint64_t __50__CPLNetworkWatcher__getCellularPolicyWithClient___block_invoke(uint64_t a1, void *a2)
{
  count = a2;
  v4 = count;
  if (count)
  {
    if (*(a1 + 40) == *(*(a1 + 32) + 24))
    {
      xarray = count;
      count = MEMORY[0x1E128EF20](count);
      v4 = xarray;
      if (count == MEMORY[0x1E69E9E50])
      {
        count = xpc_array_get_count(xarray);
        v4 = xarray;
        if (count)
        {
          v5 = xpc_array_get_value(xarray, 0);
          [*(a1 + 32) _updateCellularPolicy:v5];

          v4 = xarray;
        }
      }
    }
  }

  return MEMORY[0x1EEE66BB8](count, v4);
}

- (void)_updateCellularPolicyFromPolicies:(id)a3
{
  xarray = a3;
  v4 = objc_autoreleasePoolPush();
  if (xarray)
  {
    if (MEMORY[0x1E128EF20](xarray) == MEMORY[0x1E69E9E50])
    {
      count = xpc_array_get_count(xarray);
      v6 = xarray;
      if (count)
      {
        v7 = 0;
        while (1)
        {
          v8 = xpc_array_get_value(v6, v7);
          bundle_from_policy = network_usage_policy_get_bundle_from_policy();
          if (bundle_from_policy)
          {
            if (!strcmp(bundle_from_policy, "com.apple.mobileslideshow"))
            {
              break;
            }
          }

          ++v7;
          v6 = xarray;
          if (count == v7)
          {
            goto LABEL_3;
          }
        }

        [(CPLNetworkWatcher *)self _updateCellularPolicy:v8];
      }
    }
  }

LABEL_3:
  objc_autoreleasePoolPop(v4);
}

- (void)_updateCellularPolicy:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  bundle_from_policy = network_usage_policy_get_bundle_from_policy();
  cell_data_allowed_from_policy = network_usage_policy_get_cell_data_allowed_from_policy();

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLNetworkOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "restricted";
      if (cell_data_allowed_from_policy)
      {
        v8 = "not restricted";
      }

      v13 = 136315394;
      v14 = bundle_from_policy;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Updated cellular policy for %s: %s", &v13, 0x16u);
    }
  }

  v9 = [CPLNetworkState alloc];
  v10 = [(CPLNetworkState *)self->_networkState networkPath];
  v11 = [(CPLNetworkState *)v9 initWithNetworkPath:v10 cellularRestricted:cell_data_allowed_from_policy ^ 1u inAirplaneMode:[(CPLNetworkState *)self->_networkState isInAirplaneMode]];

  [(CPLNetworkWatcher *)self _updateNetworkState:v11];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateNetworkState:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 isFunctionallyEqual:self->_networkState];
  objc_storeStrong(&self->_networkState, a3);
  if ((v6 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLNetworkOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        networkState = self->_networkState;
        v11 = 138543362;
        v12 = networkState;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Network path did change to '%{public}@'", &v11, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained watcher:self stateDidChangeToNetworkState:self->_networkState];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isRestrictedPath:(id)a3 policies:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
LABEL_5:
    cell_data_allowed_from_policy = 0;
    goto LABEL_6;
  }

  v7 = MEMORY[0x1E128E8D0](v5, 2);
  cell_data_allowed_from_policy = 0;
  if (v6 && v7)
  {
    if (MEMORY[0x1E128EF20](v6) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v6))
    {
      v10 = xpc_array_get_value(v6, 0);
      cell_data_allowed_from_policy = network_usage_policy_get_cell_data_allowed_from_policy();

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:

  return cell_data_allowed_from_policy;
}

- (CPLNetworkWatcher)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CPLNetworkWatcher;
  v6 = [(CPLNetworkWatcher *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [[CPLNetworkState alloc] initWithNetworkPath:0 cellularRestricted:0 inAirplaneMode:0];
    networkState = v7->_networkState;
    v7->_networkState = v8;
  }

  return v7;
}

@end