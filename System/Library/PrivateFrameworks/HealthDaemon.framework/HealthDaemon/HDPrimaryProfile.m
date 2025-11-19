@interface HDPrimaryProfile
- (HDPrimaryProfile)initWithDirectoryPath:(id)a3 medicalIDDirectoryPath:(id)a4 daemon:(id)a5;
- (id)_initWithDirectoryPath:(id)a3 medicalIDDirectoryPath:(id)a4 daemon:(id)a5 profileIdentifier:(id)a6;
- (id)_newAWDSubmissionManager;
- (id)_newDataCollectionManager;
- (id)_newNanoSyncManager;
- (id)_newPeriodicCountryMonitorWithNanoSyncManager:(id)a3;
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
  v3 = [v2 firstObject];

  v4 = [v3 fitnessManager];

  return v4;
}

- (HDPrimaryProfile)initWithDirectoryPath:(id)a3 medicalIDDirectoryPath:(id)a4 daemon:(id)a5
{
  v8 = MEMORY[0x277CCD7C8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 primaryProfile];
  v13 = [(HDPrimaryProfile *)self _initWithDirectoryPath:v11 medicalIDDirectoryPath:v10 daemon:v9 profileIdentifier:v12];

  return v13;
}

- (id)_initWithDirectoryPath:(id)a3 medicalIDDirectoryPath:(id)a4 daemon:(id)a5 profileIdentifier:(id)a6
{
  v10 = a5;
  v79.receiver = self;
  v79.super_class = HDPrimaryProfile;
  v11 = [(HDProfile *)&v79 initWithDirectoryPath:a3 medicalIDDirectoryPath:a4 daemon:v10 profileIdentifier:a6];
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

    v18 = [(HDProfile *)v11 daemon];
    v19 = [v18 behavior];
    v20 = [v19 supportsAppSubscriptions];

    if (v20)
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

    v29 = [(HDPrimaryProfile *)v11 _newAWDSubmissionManager];
    awdSubmissionManager = v11->_awdSubmissionManager;
    v11->_awdSubmissionManager = v29;

    v31 = [[HDCurrentActivitySummaryHelper alloc] initWithProfile:v11];
    currentActivitySummaryHelper = v11->_currentActivitySummaryHelper;
    v11->_currentActivitySummaryHelper = v31;

    v33 = [[HDProtectedDataOperationScheduler alloc] initWithProfile:v11];
    protectedDataOperationScheduler = v11->_protectedDataOperationScheduler;
    v11->_protectedDataOperationScheduler = v33;

    v35 = [(HDPrimaryProfile *)v11 _newDataCollectionManager];
    dataCollectionManager = v11->_dataCollectionManager;
    v11->_dataCollectionManager = v35;

    v37 = [(HDPrimaryProfile *)v11 _newNanoSyncManager];
    nanoSyncManager = v11->_nanoSyncManager;
    v11->_nanoSyncManager = v37;

    v39 = [[HDNotificationManager alloc] initWithProfile:v11 bundle:0];
    notificationManager = v11->_notificationManager;
    v11->_notificationManager = v39;

    v41 = [[HDNotificationSyncManager alloc] initWithProfile:v11];
    notificationSyncManager = v11->_notificationSyncManager;
    v11->_notificationSyncManager = v41;

    v43 = [v10 behavior];
    v44 = [v43 supportsPeriodicCountryMonitoring];

    if (v44)
    {
      v45 = [(HDPrimaryProfile *)v11 _newPeriodicCountryMonitorWithNanoSyncManager:v11->_nanoSyncManager];
      periodicCountryMonitor = v11->_periodicCountryMonitor;
      v11->_periodicCountryMonitor = v45;
    }

    v47 = [(HDPrimaryProfile *)v11 _newRapportMessenger];
    rapportMessenger = v11->_rapportMessenger;
    v11->_rapportMessenger = v47;

    v49 = [v10 behavior];
    v50 = [v49 tinkerModeEnabled];

    if (v50)
    {
      v51 = [[HDTinkerPrivacyAlertCoordinator alloc] initWithProfile:v11];
      tinkerPrivacyAlertCoordinator = v11->_tinkerPrivacyAlertCoordinator;
      v11->_tinkerPrivacyAlertCoordinator = v51;
    }

    v53 = [v10 behavior];
    v54 = [v53 supportsSharedSummarySync];

    if (v54)
    {
      v55 = [[HDSummarySharingEntryManager alloc] initWithProfile:v11];
      summarySharingEntryManager = v11->_summarySharingEntryManager;
      v11->_summarySharingEntryManager = v55;

      v57 = [(HDPrimaryProfile *)v11 _newSummarySharingEntryIDSManager];
      summarySharingEntryIDSManager = v11->_summarySharingEntryIDSManager;
      v11->_summarySharingEntryIDSManager = v57;
    }

    if ([MEMORY[0x277CCDD68] shouldGenerateDemoData])
    {
      v59 = [[HDDemoDataManager alloc] initWithProfile:v11];
      demoDataManager = v11->_demoDataManager;
      v11->_demoDataManager = v59;
    }

    v61 = [(HDPrimaryProfile *)v11 _newWorkoutManager];
    workoutManager = v11->_workoutManager;
    v11->_workoutManager = v61;

    v63 = [(HDProfile *)v11 daemon];
    v64 = [v63 behavior];
    if ([v64 performsWorkoutCondensation])
    {
      v65 = [[HDWorkoutCondenser alloc] initWithProfile:v11];
    }

    else
    {
      v65 = 0;
    }

    workoutCondenser = v11->_workoutCondenser;
    v11->_workoutCondenser = v65;

    v67 = [(HDProfile *)v11 daemon];
    v68 = [v67 behavior];
    v69 = [v68 isAppleInternalInstall];

    if (v69)
    {
      v70 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v71 = [v70 BOOLForKey:@"HDPPTTestRunning"];
      v72 = [v70 BOOLForKey:@"HDPPTTestDataUpdateApplied"];
      if (v71 && (v72 & 1) == 0)
      {
        v73 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:410255999.0];
        v74 = [MEMORY[0x277CBEAA8] date];
        [v74 timeIntervalSinceDate:v73];
        v76 = v75;
        v77 = [(HDProfile *)v11 database];
        [v77 setOffsetTimeInterval:v76];

        [v70 setBool:1 forKey:@"HDPPTTestDataUpdateApplied"];
      }
    }
  }

  return v11;
}

- (void)terminationCleanup
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71318];
  v3 = [v2 firstObject];

  [v3 terminationCleanup];
}

- (id)activityCacheInterface
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71378];
  v3 = [v2 firstObject];

  v4 = [v3 activityCacheInterface];

  return v4;
}

- (id)serviceConnectionManager
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71318];
  v3 = [v2 firstObject];

  v4 = [v3 serviceConnectionManager];

  return v4;
}

- (id)serviceManager
{
  v2 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71318];
  v3 = [v2 firstObject];

  v4 = [v3 serviceManager];

  return v4;
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
  v3 = [(HDProfile *)self daemon];
  v4 = [v3 behavior];

  if ([v4 supportsNanoSync])
  {
    v5 = -[HDNanoSyncManager initWithProfile:isMaster:]([HDNanoSyncManager alloc], "initWithProfile:isMaster:", self, [v4 isAppleWatch] ^ 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newPeriodicCountryMonitorWithNanoSyncManager:(id)a3
{
  v4 = a3;
  v5 = [[HDPeriodicCountryMonitor alloc] initWithProfile:self nanoSyncManager:v4];

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