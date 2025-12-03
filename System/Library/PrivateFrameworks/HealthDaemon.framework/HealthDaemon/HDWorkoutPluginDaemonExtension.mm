@interface HDWorkoutPluginDaemonExtension
- (HDDaemon)daemon;
- (HDWorkoutPluginDaemonExtension)initWithDaemon:(id)daemon;
@end

@implementation HDWorkoutPluginDaemonExtension

- (HDWorkoutPluginDaemonExtension)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v21.receiver = self;
  v21.super_class = HDWorkoutPluginDaemonExtension;
  v5 = [(HDWorkoutPluginDaemonExtension *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v7 = [[HDAlertSuppressor alloc] initWithDaemon:daemonCopy];
    alertSuppressor = v6->_alertSuppressor;
    v6->_alertSuppressor = v7;

    v9 = [HDAppLauncher alloc];
    processStateManager = [daemonCopy processStateManager];
    hd_defaultService = [MEMORY[0x277D0AD78] hd_defaultService];
    v12 = [(HDAppLauncher *)v9 initWithProcessStateManager:processStateManager openApplicationService:hd_defaultService];
    appLauncher = v6->_appLauncher;
    v6->_appLauncher = v12;

    v14 = objc_alloc_init(HDCarouselServicesManager);
    carouselServicesManager = v6->_carouselServicesManager;
    v6->_carouselServicesManager = v14;

    v16 = objc_alloc_init(HDCoreMotionWorkoutInterface);
    coreMotionWorkoutInterface = v6->_coreMotionWorkoutInterface;
    v6->_coreMotionWorkoutInterface = v16;

    v18 = objc_alloc_init(HDHeartRateRecoveryManager);
    heartRateRecoveryManager = v6->_heartRateRecoveryManager;
    v6->_heartRateRecoveryManager = v18;
  }

  return v6;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end