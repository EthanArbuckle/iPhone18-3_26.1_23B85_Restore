@interface MTSessionManagerExportedObject
- (MTSessionManager)sessionManager;
- (MTSessionManagerExportedObject)initWithSessionManager:(id)a3;
- (void)_didReceiveSessionServerReadyNotification:(id)a3;
- (void)dealloc;
@end

@implementation MTSessionManagerExportedObject

- (MTSessionManagerExportedObject)initWithSessionManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTSessionManagerExportedObject;
  v5 = [(MTSessionManagerExportedObject *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sessionManager, v4);
    v7 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v7 addObserver:v6 selector:sel__didReceiveSessionServerReadyNotification_ name:@"com.apple.MTSessionServer.ready" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 removeObserver:self name:@"com.apple.MTSessionServer.ready" object:0];

  v6.receiver = self;
  v6.super_class = MTSessionManagerExportedObject;
  [(MTSessionManagerExportedObject *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveSessionServerReadyNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MTSessionManagerExportedObject *)self sessionManager];
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received MTSessionServerReadyNotification", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MTSessionManagerExportedObject__didReceiveSessionServerReadyNotification___block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__MTSessionManagerExportedObject__didReceiveSessionServerReadyNotification___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) sessionManager];
  v2 = [v4 notificationCenter];
  v3 = [*(a1 + 32) sessionManager];
  [v2 postNotificationName:@"MTSessionManagerStateReset" object:v3];
}

- (MTSessionManager)sessionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionManager);

  return WeakRetained;
}

@end