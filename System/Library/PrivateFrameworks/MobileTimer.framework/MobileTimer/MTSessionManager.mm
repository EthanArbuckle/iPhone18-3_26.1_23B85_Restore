@interface MTSessionManager
+ (void)warmUp;
- (MTSessionManager)init;
- (MTSessionManager)initWithConnectionProvider:(id)provider metrics:(id)metrics;
- (MTSessionManager)initWithConnectionProvider:(id)provider metrics:(id)metrics notificationCenter:(id)center;
- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics;
- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics notificationCenter:(id)center;
- (void)dealloc;
- (void)endAlertingSession;
- (void)reconnect;
@end

@implementation MTSessionManager

+ (void)warmUp
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ warming...", &v7, 0xCu);
  }

  v4 = MTSessionServerInterface();
  v5 = MTSessionClientInterface();
  v6 = *MEMORY[0x1E69E9840];
}

- (MTSessionManager)init
{
  v3 = objc_alloc_init(MTMetrics);
  v4 = [(MTSessionManager *)self initWithMetrics:v3];

  return v4;
}

- (void)endAlertingSession
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ ending alerting session", buf, 0xCu);
  }

  connectionProvider = [(MTSessionManager *)self connectionProvider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__MTSessionManager_endAlertingSession__block_invoke_2;
  v6[3] = &unk_1E7B0D658;
  v6[4] = self;
  [connectionProvider performRemoteBlock:&__block_literal_global_16_0 withErrorHandler:v6];

  v5 = *MEMORY[0x1E69E9840];
}

id __36__MTSessionManager_initWithMetrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTSessionServerInterface();
  v4 = [v2 exportedObject];
  v5 = MTSessionClientInterface();
  v6 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.sessionserver" remoteObjectInterface:v3 exportedObject:v4 exportedObjectInterface:v5 lifecycleNotification:@"com.apple.MTSessionServer.wakeup" requiredEntitlement:0 options:4096];

  objc_initWeak(&location, v2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MTSessionManager_initWithMetrics___block_invoke_2;
  v9[3] = &unk_1E7B0CF70;
  objc_copyWeak(&v10, &location);
  v7 = [MTXPCConnectionProvider providerWithConnectionInfo:v6 reconnectHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __36__MTSessionManager_initWithMetrics___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

- (MTSessionManager)initWithConnectionProvider:(id)provider metrics:(id)metrics
{
  providerCopy = provider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__MTSessionManager_initWithConnectionProvider_metrics___block_invoke;
  v10[3] = &unk_1E7B0FA58;
  v11 = providerCopy;
  v7 = providerCopy;
  v8 = [(MTSessionManager *)self _initWithConnectionProvidingBlock:v10 metrics:metrics];

  return v8;
}

- (MTSessionManager)initWithConnectionProvider:(id)provider metrics:(id)metrics notificationCenter:(id)center
{
  providerCopy = provider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__MTSessionManager_initWithConnectionProvider_metrics_notificationCenter___block_invoke;
  v12[3] = &unk_1E7B0FA58;
  v13 = providerCopy;
  v9 = providerCopy;
  v10 = [(MTSessionManager *)self _initWithConnectionProvidingBlock:v12 metrics:metrics notificationCenter:center];

  return v10;
}

- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics
{
  v6 = MEMORY[0x1E696AD88];
  metricsCopy = metrics;
  blockCopy = block;
  defaultCenter = [v6 defaultCenter];
  v10 = [(MTSessionManager *)self _initWithConnectionProvidingBlock:blockCopy metrics:metricsCopy notificationCenter:defaultCenter];

  return v10;
}

- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics notificationCenter:(id)center
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  metricsCopy = metrics;
  centerCopy = center;
  v19.receiver = self;
  v19.super_class = MTSessionManager;
  v11 = [(MTSessionManager *)&v19 init];
  if (v11)
  {
    v12 = MTLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    objc_storeStrong(&v11->_notificationCenter, center);
    v13 = [[MTSessionManagerExportedObject alloc] initWithSessionManager:v11];
    exportedObject = v11->_exportedObject;
    v11->_exportedObject = v13;

    objc_storeStrong(&v11->_metrics, metrics);
    v15 = blockCopy[2](blockCopy, v11);
    connectionProvider = v11->_connectionProvider;
    v11->_connectionProvider = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  [(MTXPCConnectionProvider *)self->_connectionProvider invalidate];
  v5.receiver = self;
  v5.super_class = MTSessionManager;
  [(MTSessionManager *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)reconnect
{
  connectionProvider = [(MTSessionManager *)self connectionProvider];
  [connectionProvider performRemoteBlock:&__block_literal_global_14_1 withErrorHandler:0];
}

void __38__MTSessionManager_endAlertingSession__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__MTSessionManager_endAlertingSession__block_invoke_2_cold_1(a1, v3, v4);
  }
}

void __38__MTSessionManager_endAlertingSession__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ ending alerting session failed with error %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end