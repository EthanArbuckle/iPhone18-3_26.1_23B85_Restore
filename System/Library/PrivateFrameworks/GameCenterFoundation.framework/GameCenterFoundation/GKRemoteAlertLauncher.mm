@interface GKRemoteAlertLauncher
+ (id)shared;
- (GKRemoteAlertLauncher)init;
- (void)cancelLaunchTimeoutTimer;
- (void)dealloc;
- (void)notifyDashboardDidLaunch;
- (void)startLaunchTimeoutTimer;
@end

@implementation GKRemoteAlertLauncher

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[GKRemoteAlertLauncher shared];
  }

  v3 = shared_sharedInstance;

  return v3;
}

uint64_t __31__GKRemoteAlertLauncher_shared__block_invoke()
{
  shared_sharedInstance = objc_alloc_init(GKRemoteAlertLauncher);

  return MEMORY[0x2821F96F8]();
}

- (GKRemoteAlertLauncher)init
{
  v5.receiver = self;
  v5.super_class = GKRemoteAlertLauncher;
  v2 = [(GKRemoteAlertLauncher *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.gamed.remoteAlertQueue", 0);
    [(GKRemoteAlertLauncher *)v2 setQueue:v3];
  }

  return v2;
}

- (void)startLaunchTimeoutTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v4 = dispatch_walltime(0, 5000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__GKRemoteAlertLauncher_startLaunchTimeoutTimer__block_invoke;
  handler[3] = &unk_2785DD760;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "RemoteAlert: _launchTimeoutTimer started.", v7, 2u);
  }

  dispatch_resume(v3);
  [(GKRemoteAlertLauncher *)self setLaunchTimeoutTimer:v3];
}

void __48__GKRemoteAlertLauncher_startLaunchTimeoutTimer__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = 0;
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 8);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "RemoteAlert: _launchTimeoutTimer fired. Did the dashboard successfully launch? GKRemoteAlertLauncher.isLaunching is set to %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyDashboardDidLaunch
{
  v8 = *MEMORY[0x277D85DE8];
  self->_isLaunching = 0;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    isLaunching = self->_isLaunching;
    v7[0] = 67109120;
    v7[1] = isLaunching;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "RemoteAlert: notifyDashboardDidLaunch -> GKRemoteAlertLauncher.isLaunching is set to %d", v7, 8u);
  }

  [(GKRemoteAlertLauncher *)self cancelLaunchTimeoutTimer];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelLaunchTimeoutTimer
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "RemoteAlert: _launchTimeoutTimer cancelled.", v6, 2u);
  }

  launchTimeoutTimer = self->_launchTimeoutTimer;
  if (launchTimeoutTimer)
  {
    dispatch_source_cancel(launchTimeoutTimer);
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[GKRemoteAlertLauncher dealloc]";
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "RemoteAlert: %s", buf, 0xCu);
  }

  [(GKRemoteAlertLauncher *)self cancelLaunchTimeoutTimer];
  v6.receiver = self;
  v6.super_class = GKRemoteAlertLauncher;
  [(GKRemoteAlertLauncher *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)launchBypassingPreAuthentication:(uint64_t)a1 forGame:(NSObject *)a2 hostPID:deeplink:launchContext:observer:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "RemoteAlert: Could not activate the remote alert due to archiving error=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end