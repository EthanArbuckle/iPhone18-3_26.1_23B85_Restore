@interface HDHeartDaemonExtension
- (HDHeartDaemonExtension)initWithHealthDaemon:(id)a3 heartNotificationsUserDefaults:(id)a4;
- (void)daemonReady:(id)a3;
- (void)performPostInstallUpdateTaskForManager:(id)a3 completion:(id)a4;
@end

@implementation HDHeartDaemonExtension

- (HDHeartDaemonExtension)initWithHealthDaemon:(id)a3 heartNotificationsUserDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HDHeartDaemonExtension;
  v8 = [(HDHeartDaemonExtension *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_healthDaemon, v6);
    objc_storeStrong(&v9->_heartNotificationsUserDefaults, a4);
    v10 = [[HDHRBloodPressureJournalPeriodicScheduler alloc] initWithDaemon:v6];
    bloodPressureJournalPeriodicScheduler = v9->_bloodPressureJournalPeriodicScheduler;
    v9->_bloodPressureJournalPeriodicScheduler = v10;

    [v6 registerDaemonReadyObserver:v9 queue:0];
  }

  return v9;
}

- (void)daemonReady:(id)a3
{
  v4 = [a3 postInstallUpdateManager];
  [v4 registerUpdateTaskHandler:self queue:0];
}

- (void)performPostInstallUpdateTaskForManager:(id)a3 completion:(id)a4
{
  v7 = a4;
  v5 = HDMigrateHeartRateNotificationsUserDefaultsIfNecessary(self->_heartNotificationsUserDefaults);
  if ([v5 count])
  {
    v6 = *MEMORY[0x277CCE458];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  v7[2](v7, 1, 0);
}

@end