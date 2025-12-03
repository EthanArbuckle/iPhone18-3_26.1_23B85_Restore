@interface HDHealthMedicationsDaemonExtension
- (BOOL)daemonDidReceiveNotification:(const char *)notification;
- (HDDaemon)daemon;
- (HDHealthMedicationsDaemonExtension)init;
- (HDHealthMedicationsDaemonExtension)initWithHealthDaemon:(id)daemon;
- (NSArray)ontologyFeatureEvaluators;
@end

@implementation HDHealthMedicationsDaemonExtension

- (HDHealthMedicationsDaemonExtension)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHealthMedicationsDaemonExtension)initWithHealthDaemon:(id)daemon
{
  daemonCopy = daemon;
  v24.receiver = self;
  v24.super_class = HDHealthMedicationsDaemonExtension;
  v5 = [(HDHealthMedicationsDaemonExtension *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    mEMORY[0x277D115D0] = [MEMORY[0x277D115D0] sharedBehavior];
    medicationsBehavior = v6->_medicationsBehavior;
    v6->_medicationsBehavior = mEMORY[0x277D115D0];

    v9 = [[HDMedicationPeriodicScheduler alloc] initWithDaemon:daemonCopy];
    periodicScheduler = v6->_periodicScheduler;
    v6->_periodicScheduler = v9;

    v11 = [[HDMedicationCountProvider alloc] initWithDaemon:daemonCopy];
    medicationCountProvider = v6->_medicationCountProvider;
    v6->_medicationCountProvider = v11;

    v13 = [[HDOntologyMedsEducationFeatureEvaluator alloc] initWithDaemon:daemonCopy medicationCountProvider:v6->_medicationCountProvider];
    medsEducationFeatureEvaluator = v6->_medsEducationFeatureEvaluator;
    v6->_medsEducationFeatureEvaluator = v13;

    v15 = [[HDDrugInteractionFactorStateProvider alloc] initWithDaemon:daemonCopy];
    drugInteractionStateProvider = v6->_drugInteractionStateProvider;
    v6->_drugInteractionStateProvider = v15;

    v17 = [[HDOntologyCoreMedsFeatureEvaluator alloc] initWithDaemon:daemonCopy medicationCountProvider:v6->_medicationCountProvider];
    coreMedsFeatureEvaluator = v6->_coreMedsFeatureEvaluator;
    v6->_coreMedsFeatureEvaluator = v17;

    v19 = [[HDOntologyInteractionsFeatureEvaluator alloc] initWithDaemon:daemonCopy medicationCountProvider:v6->_medicationCountProvider interactionFactorStateProvider:v6->_drugInteractionStateProvider];
    interactionsFeatureEvaluator = v6->_interactionsFeatureEvaluator;
    v6->_interactionsFeatureEvaluator = v19;

    v21 = [(HDOntologyMedicationFeatureEvaluator *)[HDOntologyMedsScanningFeatureEvaluator alloc] initWithDaemon:daemonCopy];
    medsScanningFeatureEvaluator = v6->_medsScanningFeatureEvaluator;
    v6->_medsScanningFeatureEvaluator = v21;
  }

  return v6;
}

- (NSArray)ontologyFeatureEvaluators
{
  v8[4] = *MEMORY[0x277D85DE8];
  medsEducationFeatureEvaluator = self->_medsEducationFeatureEvaluator;
  interactionsFeatureEvaluator = self->_interactionsFeatureEvaluator;
  medsScanningFeatureEvaluator = self->_medsScanningFeatureEvaluator;
  v8[0] = self->_coreMedsFeatureEvaluator;
  v8[1] = interactionsFeatureEvaluator;
  v8[2] = medsEducationFeatureEvaluator;
  v8[3] = medsScanningFeatureEvaluator;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)daemonDidReceiveNotification:(const char *)notification
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = strcasecmp(notification, *MEMORY[0x277D11448]);
  if (v5)
  {
    if (!strcasecmp(notification, "com.apple.system.timezone"))
    {
      _HKInitializeLogging();
      v6 = HKLogMedication();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543618;
        selfCopy = self;
        v20 = 2082;
        notificationCopy = notification;
      }

      daemon = [(HDHealthMedicationsDaemonExtension *)self daemon];
      primaryProfile = [daemon primaryProfile];
      healthMedicationsProfileExtension = [primaryProfile healthMedicationsProfileExtension];
      medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];
      timeZoneManager = [medicationScheduleManager timeZoneManager];

      [timeZoneManager handleTimeZoneChange];
    }
  }

  else
  {
    daemon2 = [(HDHealthMedicationsDaemonExtension *)self daemon];
    primaryProfile2 = [daemon2 primaryProfile];
    healthMedicationsProfileExtension2 = [primaryProfile2 healthMedicationsProfileExtension];
    medicationsDataDonator = [healthMedicationsProfileExtension2 medicationsDataDonator];
    [medicationsDataDonator didRecieveThirdPartyMigrationNotification];
  }

  result = v5 == 0;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end