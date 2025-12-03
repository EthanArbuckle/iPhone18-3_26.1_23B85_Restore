@interface HDHeartDaemonExtension
- (HDHeartDaemonExtension)initWithHealthDaemon:(id)daemon heartNotificationsUserDefaults:(id)defaults;
- (void)daemonReady:(id)ready;
- (void)performPostInstallUpdateTaskForManager:(id)manager completion:(id)completion;
@end

@implementation HDHeartDaemonExtension

- (HDHeartDaemonExtension)initWithHealthDaemon:(id)daemon heartNotificationsUserDefaults:(id)defaults
{
  daemonCopy = daemon;
  defaultsCopy = defaults;
  v13.receiver = self;
  v13.super_class = HDHeartDaemonExtension;
  v8 = [(HDHeartDaemonExtension *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_healthDaemon, daemonCopy);
    objc_storeStrong(&v9->_heartNotificationsUserDefaults, defaults);
    v10 = [[HDHRBloodPressureJournalPeriodicScheduler alloc] initWithDaemon:daemonCopy];
    bloodPressureJournalPeriodicScheduler = v9->_bloodPressureJournalPeriodicScheduler;
    v9->_bloodPressureJournalPeriodicScheduler = v10;

    [daemonCopy registerDaemonReadyObserver:v9 queue:0];
  }

  return v9;
}

- (void)daemonReady:(id)ready
{
  postInstallUpdateManager = [ready postInstallUpdateManager];
  [postInstallUpdateManager registerUpdateTaskHandler:self queue:0];
}

- (void)performPostInstallUpdateTaskForManager:(id)manager completion:(id)completion
{
  completionCopy = completion;
  v5 = HDMigrateHeartRateNotificationsUserDefaultsIfNecessary(self->_heartNotificationsUserDefaults);
  if ([v5 count])
  {
    v6 = *MEMORY[0x277CCE458];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  completionCopy[2](completionCopy, 1, 0);
}

@end