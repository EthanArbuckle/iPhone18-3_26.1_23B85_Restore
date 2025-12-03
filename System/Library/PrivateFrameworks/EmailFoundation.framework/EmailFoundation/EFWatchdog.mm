@interface EFWatchdog
+ (OS_os_log)log;
- (EFWatchdog)initWithMonitoredBundleIdentifier:(id)identifier;
- (void)invalidate;
- (void)quitMonitor:(id)monitor userClosedLastSceneOfApplicationWithBundleID:(id)d;
- (void)start;
@end

@implementation EFWatchdog

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__EFWatchdog_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_8 != -1)
  {
    dispatch_once(&log_onceToken_8, block);
  }

  v2 = log_log_8;

  return v2;
}

void __17__EFWatchdog_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_8;
  log_log_8 = v1;
}

- (EFWatchdog)initWithMonitoredBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = EFWatchdog;
  v5 = [(EFWatchdog *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    monitoredBundleIdentifier = v5->_monitoredBundleIdentifier;
    v5->_monitoredBundleIdentifier = v6;
  }

  return v5;
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_monitor)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFWatchdog_iOS.m" lineNumber:36 description:@"-[EFWatchdog start] should only be called once"];
  }

  v3 = [objc_alloc(MEMORY[0x1E69D41E0]) initWithDelegate:self];
  monitor = self->_monitor;
  self->_monitor = v3;

  v5 = +[EFWatchdog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    monitoredBundleIdentifier = [(EFWatchdog *)self monitoredBundleIdentifier];
    v10 = 138543362;
    v11 = monitoredBundleIdentifier;
    _os_log_impl(&dword_1C6152000, v5, OS_LOG_TYPE_DEFAULT, "Monitoring for user termination of bundle identifier %{public}@", &v10, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[EFWatchdog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    monitoredBundleIdentifier = [(EFWatchdog *)self monitoredBundleIdentifier];
    v6 = 138543362;
    v7 = monitoredBundleIdentifier;
    _os_log_impl(&dword_1C6152000, v3, OS_LOG_TYPE_DEFAULT, "Stopping monitoring for user termination of bundle identifier %{public}@", &v6, 0xCu);
  }

  [(SBSApplicationUserQuitMonitor *)self->_monitor invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)quitMonitor:(id)monitor userClosedLastSceneOfApplicationWithBundleID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  dCopy = d;
  monitoredBundleIdentifier = [(EFWatchdog *)self monitoredBundleIdentifier];
  v8 = [dCopy isEqualToString:monitoredBundleIdentifier];

  if (v8)
  {
    v10 = +[EFWatchdog log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = dCopy;
      _os_log_impl(&dword_1C6152000, v10, OS_LOG_TYPE_DEFAULT, "App with bundle identifier %{public}@ was quit by the user, terminating", buf, 0xCu);
    }

    exit(0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end