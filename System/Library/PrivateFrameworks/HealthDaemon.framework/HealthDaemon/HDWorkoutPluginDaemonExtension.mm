@interface HDWorkoutPluginDaemonExtension
- (HDDaemon)daemon;
- (HDWorkoutPluginDaemonExtension)initWithDaemon:(id)a3;
@end

@implementation HDWorkoutPluginDaemonExtension

- (HDWorkoutPluginDaemonExtension)initWithDaemon:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HDWorkoutPluginDaemonExtension;
  v5 = [(HDWorkoutPluginDaemonExtension *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
    v7 = [[HDAlertSuppressor alloc] initWithDaemon:v4];
    alertSuppressor = v6->_alertSuppressor;
    v6->_alertSuppressor = v7;

    v9 = [HDAppLauncher alloc];
    v10 = [v4 processStateManager];
    v11 = [MEMORY[0x277D0AD78] hd_defaultService];
    v12 = [(HDAppLauncher *)v9 initWithProcessStateManager:v10 openApplicationService:v11];
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