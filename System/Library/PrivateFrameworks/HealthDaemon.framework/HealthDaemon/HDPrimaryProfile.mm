@interface HDPrimaryProfile
- (HDPrimaryProfile)initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon;
- (id)_initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon profileIdentifier:(id)identifier;
- (id)_newAWDSubmissionManager;
- (id)_newDataCollectionManager;
- (id)_newNanoSyncManager;
- (id)_newPeriodicCountryMonitorWithNanoSyncManager:(id)manager;
- (id)_newRapportMessenger;
- (id)_newSummarySharingEntryIDSManager;
- (id)_newWorkoutManager;
- (id)activityCacheInterface;
- (id)fitnessMachineManager;
- (id)serviceConnectionManager;
- (id)serviceManager;
- (void)terminationCleanup;
@end

@implementation HDPrimaryProfile

- (id)fitnessMachineManager
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71318];
  firstObject = [v2 firstObject];

  fitnessManager = [firstObject fitnessManager];

  return fitnessManager;
}

- (HDPrimaryProfile)initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon
{
  v8 = MEMORY[0x277CCD7C8];
  daemonCopy = daemon;
  directoryPathCopy = directoryPath;
  pathCopy = path;
  primaryProfile = [v8 primaryProfile];
  v13 = [(HDPrimaryProfile *)self _initWithDirectoryPath:pathCopy medicalIDDirectoryPath:directoryPathCopy daemon:daemonCopy profileIdentifier:primaryProfile];

  return v13;
}

- (id)_initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon profileIdentifier:(id)identifier
{
  daemonCopy = daemon;
  v79.receiver = self;
  v79.super_class = HDPrimaryProfile;
  v11 = [(HDProfile *)&v79 initWithDirectoryPath:path medicalIDDirectoryPath:directoryPath daemon:daemonCopy profileIdentifier:identifier];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D10AC0]);
    sessionAssertionManager = v11->_sessionAssertionManager;
    v11->_sessionAssertionManager = v12;

    v14 = [[HDAgeGatingManager alloc] initWithProfile:v11];
    ageGatingManager = v11->_ageGatingManager;
    v11->_ageGatingManager = v14;

    v16 = [[HDRestorableAlarmScheduler alloc] initWithProfile:v11];
    alarmScheduler = v11->_alarmScheduler;
    v11->_alarmScheduler = v16;

    daemon = [(HDProfile *)v11 daemon];
    behavior = [daemon behavior];
    supportsAppSubscriptions = [behavior supportsAppSubscriptions];

    if (supportsAppSubscriptions)
    {
      v21 = [HDAppSubscriptionManager alloc];
      v22 = objc_alloc_init(HDBackgroundActivityScheduler);
      v23 = [(HDAppSubscriptionManager *)v21 initWithProfile:v11 backgroundAppRefreshSettings:v22];
    }

    else
    {
      v23 = 0;
    }

    appSubscriptionManager = v11->_appSubscriptionManager;
    v11->_appSubscriptionManager = v23;

    v25 = [[HDAssociationManager alloc] initWithProfile:v11];
    associationManager = v11->_associationManager;
    v11->_associationManager = v25;

    v27 = [[HDAttachmentManager alloc] initWithProfile:v11];
    attachmentManager = v11->_attachmentManager;
    v11->_attachmentManager = v27;

    _newAWDSubmissionManager = [(HDPrimaryProfile *)v11 _newAWDSubmissionManager];
    awdSubmissionManager = v11->_awdSubmissionManager;
    v11->_awdSubmissionManager = _newAWDSubmissionManager;

    v31 = [[HDCurrentActivitySummaryHelper alloc] initWithProfile:v11];
    currentActivitySummaryHelper = v11->_currentActivitySummaryHelper;
    v11->_currentActivitySummaryHelper = v31;

    v33 = [[HDProtectedDataOperationScheduler alloc] initWithProfile:v11];
    protectedDataOperationScheduler = v11->_protectedDataOperationScheduler;
    v11->_protectedDataOperationScheduler = v33;

    _newDataCollectionManager = [(HDPrimaryProfile *)v11 _newDataCollectionManager];
    dataCollectionManager = v11->_dataCollectionManager;
    v11->_dataCollectionManager = _newDataCollectionManager;

    _newNanoSyncManager = [(HDPrimaryProfile *)v11 _newNanoSyncManager];
    nanoSyncManager = v11->_nanoSyncManager;
    v11->_nanoSyncManager = _newNanoSyncManager;

    v39 = [[HDNotificationManager alloc] initWithProfile:v11 bundle:0];
    notificationManager = v11->_notificationManager;
    v11->_notificationManager = v39;

    v41 = [[HDNotificationSyncManager alloc] initWithProfile:v11];
    notificationSyncManager = v11->_notificationSyncManager;
    v11->_notificationSyncManager = v41;

    behavior2 = [daemonCopy behavior];
    supportsPeriodicCountryMonitoring = [behavior2 supportsPeriodicCountryMonitoring];

    if (supportsPeriodicCountryMonitoring)
    {
      v45 = [(HDPrimaryProfile *)v11 _newPeriodicCountryMonitorWithNanoSyncManager:v11->_nanoSyncManager];
      periodicCountryMonitor = v11->_periodicCountryMonitor;
      v11->_periodicCountryMonitor = v45;
    }

    _newRapportMessenger = [(HDPrimaryProfile *)v11 _newRapportMessenger];
    rapportMessenger = v11->_rapportMessenger;
    v11->_rapportMessenger = _newRapportMessenger;

    behavior3 = [daemonCopy behavior];
    tinkerModeEnabled = [behavior3 tinkerModeEnabled];

    if (tinkerModeEnabled)
    {
      v51 = [[HDTinkerPrivacyAlertCoordinator alloc] initWithProfile:v11];
      tinkerPrivacyAlertCoordinator = v11->_tinkerPrivacyAlertCoordinator;
      v11->_tinkerPrivacyAlertCoordinator = v51;
    }

    behavior4 = [daemonCopy behavior];
    supportsSharedSummarySync = [behavior4 supportsSharedSummarySync];

    if (supportsSharedSummarySync)
    {
      v55 = [[HDSummarySharingEntryManager alloc] initWithProfile:v11];
      summarySharingEntryManager = v11->_summarySharingEntryManager;
      v11->_summarySharingEntryManager = v55;

      _newSummarySharingEntryIDSManager = [(HDPrimaryProfile *)v11 _newSummarySharingEntryIDSManager];
      summarySharingEntryIDSManager = v11->_summarySharingEntryIDSManager;
      v11->_summarySharingEntryIDSManager = _newSummarySharingEntryIDSManager;
    }

    if ([MEMORY[0x277CCDD68] shouldGenerateDemoData])
    {
      v59 = [[HDDemoDataManager alloc] initWithProfile:v11];
      demoDataManager = v11->_demoDataManager;
      v11->_demoDataManager = v59;
    }

    _newWorkoutManager = [(HDPrimaryProfile *)v11 _newWorkoutManager];
    workoutManager = v11->_workoutManager;
    v11->_workoutManager = _newWorkoutManager;

    daemon2 = [(HDProfile *)v11 daemon];
    behavior5 = [daemon2 behavior];
    if ([behavior5 performsWorkoutCondensation])
    {
      v65 = [[HDWorkoutCondenser alloc] initWithProfile:v11];
    }

    else
    {
      v65 = 0;
    }

    workoutCondenser = v11->_workoutCondenser;
    v11->_workoutCondenser = v65;

    daemon3 = [(HDProfile *)v11 daemon];
    behavior6 = [daemon3 behavior];
    isAppleInternalInstall = [behavior6 isAppleInternalInstall];

    if (isAppleInternalInstall)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v71 = [standardUserDefaults BOOLForKey:@"HDPPTTestRunning"];
      v72 = [standardUserDefaults BOOLForKey:@"HDPPTTestDataUpdateApplied"];
      if (v71 && (v72 & 1) == 0)
      {
        v73 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:410255999.0];
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSinceDate:v73];
        v76 = v75;
        database = [(HDProfile *)v11 database];
        [database setOffsetTimeInterval:v76];

        [standardUserDefaults setBool:1 forKey:@"HDPPTTestDataUpdateApplied"];
      }
    }
  }

  return v11;
}

- (void)terminationCleanup
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71318];
  firstObject = [v2 firstObject];

  [firstObject terminationCleanup];
}

- (id)activityCacheInterface
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71378];
  firstObject = [v2 firstObject];

  activityCacheInterface = [firstObject activityCacheInterface];

  return activityCacheInterface;
}

- (id)serviceConnectionManager
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71318];
  firstObject = [v2 firstObject];

  serviceConnectionManager = [firstObject serviceConnectionManager];

  return serviceConnectionManager;
}

- (id)serviceManager
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71318];
  firstObject = [v2 firstObject];

  serviceManager = [firstObject serviceManager];

  return serviceManager;
}

- (id)_newAWDSubmissionManager
{
  v3 = [HDAWDSubmissionManager alloc];

  return [(HDAWDSubmissionManager *)v3 initWithProfile:self];
}

- (id)_newDataCollectionManager
{
  v3 = [HDDataCollectionManager alloc];

  return [(HDDataCollectionManager *)v3 initWithProfile:self];
}

- (id)_newNanoSyncManager
{
  daemon = [(HDProfile *)self daemon];
  behavior = [daemon behavior];

  if ([behavior supportsNanoSync])
  {
    v5 = -[HDNanoSyncManager initWithProfile:isMaster:]([HDNanoSyncManager alloc], "initWithProfile:isMaster:", self, [behavior isAppleWatch] ^ 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newPeriodicCountryMonitorWithNanoSyncManager:(id)manager
{
  managerCopy = manager;
  v5 = [[HDPeriodicCountryMonitor alloc] initWithProfile:self nanoSyncManager:managerCopy];

  return v5;
}

- (id)_newWorkoutManager
{
  v3 = [HDWorkoutManager alloc];

  return [(HDWorkoutManager *)v3 initWithProfile:self];
}

- (id)_newRapportMessenger
{
  v2 = [HDRapportMessenger alloc];

  return [(HDRapportMessenger *)v2 initForCompanionDevice];
}

- (id)_newSummarySharingEntryIDSManager
{
  v3 = [HDSummarySharingEntryIDSManager alloc];

  return [(HDSummarySharingEntryIDSManager *)v3 initWithProfile:self];
}

@end