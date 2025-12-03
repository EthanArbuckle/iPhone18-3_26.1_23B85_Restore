@interface HDProfile
+ (unint64_t)_concurrentDatabaseReaderLimitForProfileType:(int64_t)type;
- (BOOL)fetchDisplayFirstName:(id *)name lastName:(id *)lastName error:(id *)error;
- (BOOL)hasNotifiedProfileReadyObservers;
- (BOOL)setDisplayFirstName:(id)name lastName:(id)lastName error:(id *)error;
- (BOOL)setDisplayImageData:(id)data error:(id *)error;
- (BOOL)setPairedGuardianParticipant:(id)participant error:(id *)error;
- (BOOL)setPairedGuardianUserInfo:(id)info error:(id *)error;
- (HDDaemon)daemon;
- (HDProfile)initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon profileIdentifier:(id)identifier;
- (HDSyncEngine)syncEngine;
- (id)_newCloudSyncManager;
- (id)_newContributorManager;
- (id)_newDatabase;
- (id)_newHealthRecordsAccountExistenceNotifier;
- (id)_newInternalContentDatabaseManager;
- (id)_newUserCharacteristicsManager;
- (id)_observerClassStringFor:(uint64_t)for late:(void *)late;
- (id)_sleepFeatureAvailabilityProvider:(id)provider;
- (id)ageWithCurrentDate:(id)date error:(id *)error;
- (id)allProfileExtensions;
- (id)biologicalSexWithError:(id *)error;
- (id)featureAvailabilityProviderForIdentifier:(id)identifier;
- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier;
- (id)featureStatusProviderForIdentifier:(id)identifier;
- (id)fetchDisplayImageDataWithError:(id *)error;
- (id)pairedGuardianParticipantWithError:(id *)error;
- (id)pairedGuardianUserInfoWithError:(id *)error;
- (id)profileExtensionWithIdentifier:(id)identifier;
- (id)profileExtensionsConformingToProtocol:(id)protocol;
- (id)requirementSatisfactionOverridesDataSource;
- (id)userCharacteristicForDataType:(id)type error:(id *)error;
- (id)watchLowPowerModeDataSource;
- (id)wristDetectionSettingManager;
- (int64_t)currentSyncIdentityPersistentID;
- (void)_createExtensionsIfNeeded;
- (void)_notifyProfileReadyObservers;
- (void)awakeFromDisk;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)executeBlockAfterProfileReady:(id)ready;
- (void)invalidateAndWaitWithReason:(id)reason;
- (void)isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion:(id)completion;
- (void)notifyProfileInitializedObservers;
- (void)obliterateAndTerminateWithOptions:(unint64_t)options reason:(id)reason completion:(id)completion;
- (void)obliterateWithOptions:(unint64_t)options reason:(id)reason;
- (void)prepareForObliterationWithReason:(id)reason;
- (void)registerProfileInitializedObserver:(id)observer queue:(id)queue;
- (void)registerProfileReadyObserver:(id)observer queue:(id)queue;
- (void)setTestModeEnabled:(BOOL)enabled;
- (void)triggerDeletion;
@end

@implementation HDProfile

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (HDSyncEngine)syncEngine
{
  syncEngine = self->_syncEngine;
  if (!syncEngine)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDProfile.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"_syncEngine != nil"}];

    syncEngine = self->_syncEngine;
  }

  return syncEngine;
}

- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (HKFeatureIdentifierIsProvidedBySleepDaemon())
  {
    v5 = [(HDProfile *)self _sleepFeatureAvailabilityProvider:identifierCopy];
  }

  else
  {
    [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71258];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) featureAvailabilityExtensionForFeatureIdentifier:{identifierCopy, v14}];
          if (v11)
          {
            v5 = v11;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_sleepFeatureAvailabilityProvider:(id)provider
{
  v17 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if (SleepLibraryCore() && getgetSleepFeatureAvailabilityProvidingSymbolLoc())
  {
    providerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"HDProfile<HKFeatureAvailabilityHealthDataSource> (%@)", providerCopy];
    v5 = providerCopy;
    v6 = getgetSleepFeatureAvailabilityProvidingSymbolLoc();
    if (!v6)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<HKFeatureAvailabilityProviding>  _Nullable getSleepFeatureAvailabilityProviding(NSString *__strong, HKHealthStore *__strong, __strong HKFeatureIdentifier)"}];
      [currentHandler handleFailureInFunction:v14 file:@"HDProfile+HKFeatureAvailabilityHealthDataSource.m" lineNumber:32 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v7 = v6(providerCopy, 0, v5);
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] HK_TARGET_OS_HAS_SLEEP_DAEMON true but missing getSleepFeatureAvailabilityProviding()", buf, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)requirementSatisfactionOverridesDataSource
{
  daemon = [(HDProfile *)self daemon];
  featureAvailabilityRequirementSatisfactionOverridesDataSource = [daemon featureAvailabilityRequirementSatisfactionOverridesDataSource];

  return featureAvailabilityRequirementSatisfactionOverridesDataSource;
}

- (id)watchLowPowerModeDataSource
{
  daemon = [(HDProfile *)self daemon];
  watchLowPowerModeDataSource = [daemon watchLowPowerModeDataSource];

  return watchLowPowerModeDataSource;
}

- (id)wristDetectionSettingManager
{
  daemon = [(HDProfile *)self daemon];
  wristDetectionSettingManager = [daemon wristDetectionSettingManager];

  return wristDetectionSettingManager;
}

- (id)userCharacteristicForDataType:(id)type error:(id *)error
{
  typeCopy = type;
  userCharacteristicsManager = [(HDProfile *)self userCharacteristicsManager];
  v8 = [userCharacteristicsManager userCharacteristicForType:typeCopy error:error];

  return v8;
}

- (id)ageWithCurrentDate:(id)date error:(id *)error
{
  dateCopy = date;
  v7 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  userCharacteristicsManager = [(HDProfile *)self userCharacteristicsManager];
  v15 = 0;
  v9 = [userCharacteristicsManager userCharacteristicForType:v7 error:&v15];
  v10 = v15;

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "hk_ageWithCurrentDate:", dateCopy)}];
    goto LABEL_11;
  }

  v12 = v10;
  if (v10)
  {
    if (error)
    {
      v13 = 0;
      *error = v12;
      goto LABEL_11;
    }

    _HKLogDroppedError();
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)biologicalSexWithError:(id *)error
{
  v5 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
  userCharacteristicsManager = [(HDProfile *)self userCharacteristicsManager];
  v13 = 0;
  v7 = [userCharacteristicsManager userCharacteristicForType:v5 error:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = v8;
    if (error)
    {
      v10 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
      v10 = 0;
    }
  }

  else
  {
    if (v7)
    {
      integerValue = [v7 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v10 = [objc_alloc(MEMORY[0x277CCD078]) _initWithBiologicalSex:integerValue];
  }

  return v10;
}

- (id)featureStatusProviderForIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(HDProfile *)self featureAvailabilityProviderForIdentifier:identifierCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v5 healthDataSource:self countryCodeSource:0];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = identifierCopy;
      _os_log_fault_impl(&dword_228986000, v7, OS_LOG_TYPE_FAULT, "[%{public}@] Unable to find feature availability provider for feature identifier %{public}@", &v10, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)featureAvailabilityProviderForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71258];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) featureAvailabilityExtensionForFeatureIdentifier:{identifierCopy, v14}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HDProfile *)self profileExtensionsConformingToProtocol:&unk_283D71148];
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    isImproveHealthRecordsDataSubmissionAllowed = [firstObject isImproveHealthRecordsDataSubmissionAllowed];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:isImproveHealthRecordsDataSubmissionAllowed];
    completionCopy[2](completionCopy, v7, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:100 description:{@"HDProfile does not have a health records profile extension, cannot determine IHR status"}];
    (completionCopy)[2](completionCopy, 0, v7);
  }
}

+ (unint64_t)_concurrentDatabaseReaderLimitForProfileType:(int64_t)type
{
  if (type <= 2)
  {
    if (type == 1)
    {
      goto LABEL_9;
    }

    if (type != 2)
    {
      return 3;
    }

    return 1;
  }

  if (type == 3)
  {
    return 2;
  }

  if (type == 4)
  {
    return 1;
  }

  if (type != 100)
  {
    return 3;
  }

LABEL_9:
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [standardUserDefaults integerForKey:@"HDHealthDaemonConcurrentDatabaseReadersKey"];

  if (v9 - 2 >= 7)
  {
    return 3;
  }

  else
  {
    return v9;
  }
}

- (HDProfile)initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon profileIdentifier:(id)identifier
{
  pathCopy = path;
  directoryPathCopy = directoryPath;
  daemonCopy = daemon;
  identifierCopy = identifier;
  v98.receiver = self;
  v98.super_class = HDProfile;
  v14 = [(HDProfile *)&v98 init];
  v15 = v14;
  if (v14)
  {
    v14->_profileLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v14->_daemon, daemonCopy);
    v16 = [pathCopy copy];
    directoryPath = v15->_directoryPath;
    v15->_directoryPath = v16;

    v18 = [directoryPathCopy copy];
    medicalIDDirectoryPath = v15->_medicalIDDirectoryPath;
    v15->_medicalIDDirectoryPath = v18;

    objc_storeStrong(&v15->_profileIdentifier, identifier);
    v20 = [pathCopy stringByAppendingPathComponent:@"TEST_PROFILE"];
    v21 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v15->_testModeEnabled = [v21 fileExistsAtPath:v20];
    v15->_profileObserverLock._os_unfair_lock_opaque = 0;
    v22 = objc_alloc(MEMORY[0x277CCDA88]);
    v23 = HKLogInfrastructure();
    v24 = [v22 initWithName:@"Profile Initialized" loggingCategory:v23];
    profileInitializedObservers = v15->_profileInitializedObservers;
    v15->_profileInitializedObservers = v24;

    v26 = dispatch_group_create();
    profileObserverGroup = v15->_profileObserverGroup;
    v15->_profileObserverGroup = v26;

    dispatch_group_enter(v15->_profileObserverGroup);
    v28 = objc_alloc(MEMORY[0x277CCD738]);
    v29 = HKLogInfrastructure();
    v30 = [v28 initWithName:@"Profile Ready" loggingCategory:v29];
    profileReadyObservers = v15->_profileReadyObservers;
    v15->_profileReadyObservers = v30;

    v15->_profileTrackingLock._os_unfair_lock_opaque = 0;
    v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
    profileTrackingLock_profileReadyObserversOutstanding = v15->_profileTrackingLock_profileReadyObserversOutstanding;
    v15->_profileTrackingLock_profileReadyObserversOutstanding = v32;

    _newDatabase = [(HDProfile *)v15 _newDatabase];
    database = v15->_database;
    v15->_database = _newDatabase;

    v36 = [[HDSourceManager alloc] initWithProfile:v15];
    sourceManager = v15->_sourceManager;
    v15->_sourceManager = v36;

    v38 = [[HDSourceOrderManager alloc] initWithProfile:v15];
    sourceOrderManager = v15->_sourceOrderManager;
    v15->_sourceOrderManager = v38;

    v40 = [[HDDeviceManager alloc] initWithProfile:v15];
    deviceManager = v15->_deviceManager;
    v15->_deviceManager = v40;

    _newContributorManager = [(HDProfile *)v15 _newContributorManager];
    contributorManager = v15->_contributorManager;
    v15->_contributorManager = _newContributorManager;

    v44 = [[HDAuthorizationManager alloc] initWithProfile:v15];
    authorizationManager = v15->_authorizationManager;
    v15->_authorizationManager = v44;

    v46 = [[HDDataManager alloc] initWithProfile:v15];
    dataManager = v15->_dataManager;
    v15->_dataManager = v46;

    v48 = [[HDUnitPreferencesManager alloc] initWithProfile:v15];
    unitPreferencesManager = v15->_unitPreferencesManager;
    v15->_unitPreferencesManager = v48;

    _newUserCharacteristicsManager = [(HDProfile *)v15 _newUserCharacteristicsManager];
    userCharacteristicsManager = v15->_userCharacteristicsManager;
    v15->_userCharacteristicsManager = _newUserCharacteristicsManager;

    v52 = [[HDDataProvenanceManager alloc] initWithProfile:v15];
    dataProvenanceManager = v15->_dataProvenanceManager;
    v15->_dataProvenanceManager = v52;

    v54 = [[HDDaemonSyncEngine alloc] initWithProfile:v15];
    syncEngine = v15->_syncEngine;
    v15->_syncEngine = v54;

    v56 = [[HDSyncIdentityManager alloc] initWithProfile:v15];
    syncIdentityManager = v15->_syncIdentityManager;
    v15->_syncIdentityManager = v56;

    v58 = [[HDMetadataManager alloc] initWithProfile:v15];
    metadataManager = v15->_metadataManager;
    v15->_metadataManager = v58;

    v60 = [[HDSharedSummaryManager alloc] initWithProfile:v15];
    sharedSummaryManager = v15->_sharedSummaryManager;
    v15->_sharedSummaryManager = v60;

    v62 = [[HDSharingAuthorizationManager alloc] initWithProfile:v15];
    sharingAuthorizationManager = v15->_sharingAuthorizationManager;
    v15->_sharingAuthorizationManager = v62;

    v64 = [[HDFeatureSettingsManager alloc] initWithProfile:v15];
    featureSettingsManager = v15->_featureSettingsManager;
    v15->_featureSettingsManager = v64;

    v66 = [[HDOnboardingCompletionManager alloc] initWithProfile:v15];
    onboardingCompletionManager = v15->_onboardingCompletionManager;
    v15->_onboardingCompletionManager = v66;

    v68 = [[HDFeatureAvailabilityHealthDataRequirementEvaluationManager alloc] initWithProfile:v15];
    healthDataRequirementEvaluationManager = v15->_healthDataRequirementEvaluationManager;
    v15->_healthDataRequirementEvaluationManager = v68;

    v70 = [MEMORY[0x277CCD400] dataSourceWithHealthDataSource:v15];
    requirementEvaluationDataSource = v15->_requirementEvaluationDataSource;
    v15->_requirementEvaluationDataSource = v70;

    v72 = [[HDDeviceContextStoreManager alloc] initWithProfile:v15];
    deviceContextManager = v15->_deviceContextManager;
    v15->_deviceContextManager = v72;

    v74 = [[HDDeviceKeyValueStoreManager alloc] initWithProfile:v15];
    deviceKeyValueStoreManager = v15->_deviceKeyValueStoreManager;
    v15->_deviceKeyValueStoreManager = v74;

    v76 = [[HDKeyValueDomainManager alloc] initWithProfile:v15];
    keyValueDomainManager = v15->_keyValueDomainManager;
    v15->_keyValueDomainManager = v76;

    v78 = [[HDDatabaseDailyAnalytics alloc] initWithProfile:v15];
    dailyAnalytics = v15->_dailyAnalytics;
    v15->_dailyAnalytics = v78;

    _newCloudSyncManager = [(HDProfile *)v15 _newCloudSyncManager];
    cloudSyncManager = v15->_cloudSyncManager;
    v15->_cloudSyncManager = _newCloudSyncManager;

    if ([(HKProfileIdentifier *)v15->_profileIdentifier type]!= 2)
    {
      v82 = [[HDUserDomainConceptManager alloc] initWithProfile:v15];
      userDomainConceptManager = v15->_userDomainConceptManager;
      v15->_userDomainConceptManager = v82;

      WeakRetained = objc_loadWeakRetained(&v15->_daemon);
      behavior = [WeakRetained behavior];
      supportsOntology = [behavior supportsOntology];

      if (supportsOntology)
      {
        _newHealthRecordsAccountExistenceNotifier = [(HDProfile *)v15 _newHealthRecordsAccountExistenceNotifier];
        healthRecordsAccountExistenceNotifier = v15->_healthRecordsAccountExistenceNotifier;
        v15->_healthRecordsAccountExistenceNotifier = _newHealthRecordsAccountExistenceNotifier;

        v89 = [[HDConceptIndexManager alloc] initWithProfile:v15];
        conceptIndexManager = v15->_conceptIndexManager;
        v15->_conceptIndexManager = v89;

        _newInternalContentDatabaseManager = [(HDProfile *)v15 _newInternalContentDatabaseManager];
        internalContentDatabaseManager = v15->_internalContentDatabaseManager;
        v15->_internalContentDatabaseManager = _newInternalContentDatabaseManager;
      }

      if (v15->_medicalIDDirectoryPath)
      {
        v93 = [[HDMedicalIDDataManager alloc] initWithProfile:v15];
        medicalIDDataManager = v15->_medicalIDDataManager;
        v15->_medicalIDDataManager = v93;
      }
    }

    type = [(HKProfileIdentifier *)v15->_profileIdentifier type];
    objc_opt_self();
    v96 = 0.0;
    if ((type - 2) < 3)
    {
      v96 = 30.0;
    }

    [(HDDatabase *)v15->_database setInactivityFlushInterval:v96];
    [(HDDatabase *)v15->_database enterStateInitialized];
  }

  return v15;
}

- (void)dealloc
{
  [(_HKExpiringCompletionTimer *)self->_profileReadyObserversTimer invalidate];
  v3.receiver = self;
  v3.super_class = HDProfile;
  [(HDProfile *)&v3 dealloc];
}

- (id)_newHealthRecordsAccountExistenceNotifier
{
  v3 = [HDHealthRecordsAccountExistenceNotifier alloc];

  return [(HDHealthRecordsAccountExistenceNotifier *)v3 initWithProfile:self];
}

- (int64_t)currentSyncIdentityPersistentID
{
  currentSyncIdentity = [(HDSyncIdentityManager *)self->_syncIdentityManager currentSyncIdentity];
  entity = [currentSyncIdentity entity];
  persistentID = [entity persistentID];

  return persistentID;
}

- (void)daemonReady:(id)ready
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_profileLock);
  [(HDProfile *)self _createExtensionsIfNeeded];
  os_unfair_lock_unlock(&self->_profileLock);
  [(HDDatabase *)self->_database enterStateAddResources];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  daemon = [(HDProfile *)self daemon];
  protectedResourceStoreProviders = [daemon protectedResourceStoreProviders];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = protectedResourceStoreProviders;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) protectedResourceStoreForProfile:{self, v14}];
        if (v12)
        {
          [v4 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    [(HDDatabase *)self->_database addProtectedResourceStores:v4];
  }

  [(HDDatabase *)self->_database enterStateRun];
  [(HDProfile *)self _notifyProfileReadyObservers];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_createExtensionsIfNeeded
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 104));
    if (!*(self + 96))
    {
      WeakRetained = objc_loadWeakRetained((self + 184));
      pluginManager = [WeakRetained pluginManager];
      v3 = [pluginManager createExtensionsForProfile:self];
      v4 = *(self + 96);
      *(self + 96) = v3;
    }
  }
}

- (void)registerProfileInitializedObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_profileObserverLock);
  [(HKSynchronousObserverSet *)self->_profileInitializedObservers registerObserver:observerCopy];
  if (self->_hasNotifiedProfileInitializedObservers)
  {
    profileInitializedObservers = self->_profileInitializedObservers;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__HDProfile_registerProfileInitializedObserver_queue___block_invoke;
    v7[3] = &unk_27862B898;
    v7[4] = self;
    [(HKSynchronousObserverSet *)profileInitializedObservers notifyObservers:v7];
    [(HKSynchronousObserverSet *)self->_profileInitializedObservers unregisterObserver:observerCopy];
  }

  else
  {
    dispatch_group_enter(self->_profileObserverGroup);
  }

  os_unfair_lock_unlock(&self->_profileObserverLock);
}

- (void)notifyProfileInitializedObservers
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_profileObserverLock);
  self->_hasNotifiedProfileInitializedObservers = 1;
  _HKInitializeLogging();
  v3 = HKLogDaemonInitialization();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

  if (v4)
  {
    v5 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(HKSynchronousObserverSet *)self->_profileInitializedObservers count];
      *buf = 134218242;
      v23 = v6;
      v24 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_INFO, "Notify (%lu) profile initialized observers for profile %@", buf, 0x16u);
    }
  }

  profileInitializedObservers = self->_profileInitializedObservers;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__HDProfile_notifyProfileInitializedObservers__block_invoke;
  v20[3] = &unk_27862B898;
  v20[4] = self;
  [(HKSynchronousObserverSet *)profileInitializedObservers notifyObservers:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObservers = [(HKSynchronousObserverSet *)self->_profileInitializedObservers allObservers];
  v9 = [allObservers countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allObservers);
        }

        [(HKSynchronousObserverSet *)self->_profileInitializedObservers unregisterObserver:*(*(&v16 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [allObservers countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_profileObserverLock);
  dispatch_group_leave(self->_profileObserverGroup);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v14 = HKCreateSerialDispatchQueue();
  [WeakRetained registerDaemonReadyObserver:self queue:v14];

  v15 = *MEMORY[0x277D85DE8];
}

void __46__HDProfile_notifyProfileInitializedObservers__block_invoke(uint64_t a1, void *a2)
{
  [a2 profileDidInitialize:*(a1 + 32)];
  v3 = *(*(a1 + 32) + 112);

  dispatch_group_leave(v3);
}

- (void)registerProfileReadyObserver:(id)observer queue:(id)queue
{
  v22 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_profileObserverLock);
  [(HKObserverSet *)self->_profileReadyObservers registerObserver:observerCopy queue:queueCopy];

  if (self->_hasNotifiedProfileReadyObservers)
  {
    if (_HDIsUnitTesting)
    {
      _HKInitializeLogging();
      v8 = HKLogDaemonInitialization();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412802;
        v17 = v9;
        v18 = 2048;
        selfCopy = self;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "<%@:%p> Notified late profile ready observer %@", buf, 0x20u);
      }
    }

    profileReadyObservers = self->_profileReadyObservers;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__HDProfile_registerProfileReadyObserver_queue___block_invoke;
    v15[3] = &unk_27862B8C0;
    v15[4] = self;
    [(HKObserverSet *)profileReadyObservers notifyObserver:observerCopy handler:v15];
    [(HKObserverSet *)self->_profileReadyObservers unregisterObserver:observerCopy];
  }

  os_unfair_lock_unlock(&self->_profileObserverLock);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_notifyProfileReadyObservers
{
  v47 = *MEMORY[0x277D85DE8];
  profileObserverGroup = self->_profileObserverGroup;
  v5 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(profileObserverGroup, v5))
  {
    _HKInitializeLogging();
    v6 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218242;
      v40 = 0x403E000000000000;
      v41 = 2112;
      selfCopy3 = self;
      _os_log_fault_impl(&dword_228986000, v6, OS_LOG_TYPE_FAULT, "Timeout (%0.1f) waiting on profile initialized observers for profile %@", buf, 0x16u);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  v8 = objc_opt_class();
  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x277CCDDB0]);
  v10 = dispatch_get_global_queue(21, 0);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __41__HDProfile__notifyProfileReadyObservers__block_invoke;
  v36[3] = &unk_278628890;
  objc_copyWeak(&v37, &location);
  v11 = [v9 initWithName:@"HDProfileObservers" queue:v10 completion:v36];
  profileReadyObserversTimer = self->_profileReadyObserversTimer;
  self->_profileReadyObserversTimer = v11;

  [(_HKExpiringCompletionTimer *)self->_profileReadyObserversTimer startWithTimeoutInterval:&__block_literal_global_211 handler:8.0];
  os_unfair_lock_lock(&self->_profileObserverLock);
  if (self->_hasNotifiedProfileReadyObservers)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDProfile.m" lineNumber:523 description:@"_notifyProfileReadyObservers called twice!"];
  }

  self->_hasNotifiedProfileReadyObservers = 1;
  daemon = [(HDProfile *)self daemon];
  runtimeDebugInfo = [daemon runtimeDebugInfo];

  _HKInitializeLogging();
  v15 = HKLogDaemonInitialization();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(HKObserverSet *)self->_profileReadyObservers count];
    *buf = 138413058;
    v40 = v8;
    v41 = 2048;
    selfCopy3 = self;
    v43 = 2048;
    v44 = v16;
    v45 = 2112;
    v46 = runtimeDebugInfo;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "<%@:%p> Start notification of %lu profile ready observers for %@", buf, 0x2Au);
  }

  allObservers = [(HKObserverSet *)self->_profileReadyObservers allObservers];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __41__HDProfile__notifyProfileReadyObservers__block_invoke_368;
  v35[3] = &unk_27862B8E8;
  v35[4] = self;
  [allObservers enumerateObjectsUsingBlock:v35];

  profileReadyObservers = self->_profileReadyObservers;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __41__HDProfile__notifyProfileReadyObservers__block_invoke_2_370;
  v34[3] = &unk_27862B8C0;
  v34[4] = self;
  [(HKObserverSet *)profileReadyObservers notifyObservers:v34];
  [(HKObserverSet *)self->_profileReadyObservers unregisterAllObservers];
  v19 = self->_postProfileReadyBlocks;
  postProfileReadyBlocks = self->_postProfileReadyBlocks;
  self->_postProfileReadyBlocks = 0;

  os_unfair_lock_unlock(&self->_profileObserverLock);
  if (_HDIsUnitTesting)
  {
    _HKInitializeLogging();
    v21 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = v8;
      v41 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "<%@:%p> Adding unitTest_didReadyProfile for profile", buf, 0x16u);
    }
  }

  v22 = self->_profileObserverGroup;
  v23 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HDProfile__notifyProfileReadyObservers__block_invoke_371;
  block[3] = &unk_27862B910;
  v32 = runtimeDebugInfo;
  v33 = v8;
  block[4] = self;
  v30 = v19;
  v31 = date;
  v24 = runtimeDebugInfo;
  v25 = date;
  v26 = v19;
  dispatch_group_notify(v22, v23, block);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
  v27 = *MEMORY[0x277D85DE8];
}

void __41__HDProfile__notifyProfileReadyObservers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 36);
    if ([*&v7[40]._os_unfair_lock_opaque count])
    {
      _HKInitializeLogging();
      v2 = HKLogDaemonInitialization();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = objc_opt_class();
        v4 = *&v7[40]._os_unfair_lock_opaque;
        *buf = 138412802;
        v9 = v3;
        v10 = 2048;
        v11 = v7;
        v12 = 2112;
        v13 = v4;
        v5 = v3;
        _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "<%@:%p> Notifying all profile ready observers is slow. Still pending: %@", buf, 0x20u);
      }
    }

    os_unfair_lock_unlock(v7 + 36);
    WeakRetained = v7;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __41__HDProfile__notifyProfileReadyObservers__block_invoke_368(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 112);
  v4 = a2;
  dispatch_group_enter(v3);
  os_unfair_lock_lock((*(a1 + 32) + 144));
  v5 = *(a1 + 32);
  v6 = *(v5 + 160);
  v7 = [HDProfile _observerClassStringFor:v5 late:v4];

  [v6 addObject:v7];
  v8 = (*(a1 + 32) + 144);

  os_unfair_lock_unlock(v8);
}

- (id)_observerClassStringFor:(uint64_t)for late:(void *)late
{
  if (for)
  {
    v2 = MEMORY[0x277CCACA8];
    lateCopy = late;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v2 stringWithFormat:@"<%p>%@%@", @" ", lateCopy, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __41__HDProfile__notifyProfileReadyObservers__block_invoke_2_370(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [HDProfile _observerClassStringFor:v3 late:v4];
  [v4 profileDidBecomeReady:*(a1 + 32)];

  os_unfair_lock_lock((*(a1 + 32) + 144));
  [*(*(a1 + 32) + 160) removeObject:v5];
  os_unfair_lock_unlock((*(a1 + 32) + 144));
  dispatch_group_leave(*(*(a1 + 32) + 112));
}

void __41__HDProfile__notifyProfileReadyObservers__block_invoke_371(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (_HDIsUnitTesting)
  {
    _HKInitializeLogging();
    v2 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 64);
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) count];
      *buf = 138412802;
      v40 = v3;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = *&v5;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "<%@:%p> Notifying %lu post profile ready blocks", buf, 0x20u);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v35 + 1) + 8 * i) + 16))(*(*(&v35 + 1) + 8 * i));
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v8);
  }

  _HKInitializeLogging();
  v11 = HKLogDaemonInitialization();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 64);
    v13 = *(a1 + 32);
    *buf = 138412546;
    v40 = v12;
    v41 = 2048;
    v42 = v13;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "<%@:%p> Notified all post profile ready blocks", buf, 0x16u);
  }

  [*(*(a1 + 32) + 152) invalidate];
  v14 = *(a1 + 32);
  v15 = *(v14 + 152);
  *(v14 + 152) = 0;

  if (_HDIsUnitTesting)
  {
    _HKInitializeLogging();
    v16 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 64);
      v18 = *(a1 + 32);
      *buf = 138412546;
      v40 = v17;
      v41 = 2048;
      v42 = v18;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "<%@:%p> Calling unitTest_didReadyProfile for profile", buf, 0x16u);
    }

    v19 = [*(a1 + 32) daemon];
    [v19 unitTest_didReadyProfile:*(a1 + 32)];

    _HKInitializeLogging();
    v20 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 64);
      v22 = *(a1 + 32);
      *buf = 138412546;
      v40 = v21;
      v41 = 2048;
      v42 = v22;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "<%@:%p> unitTest_didReadyProfile for profile returned", buf, 0x16u);
    }
  }

  [*(a1 + 48) timeIntervalSinceNow];
  v24 = v23;
  v25 = -v23;
  _HKInitializeLogging();
  v26 = HKLogDaemonInitialization();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 32);
    v29 = *(a1 + 56);
    v28 = *(a1 + 64);
    *buf = 138413058;
    v40 = v28;
    v41 = 2048;
    v42 = v27;
    v43 = 2048;
    v44 = v25;
    v45 = 2112;
    v46 = v29;
    _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "<%@:%p> End notification of profile ready observers in %0.1f seconds for %@", buf, 0x2Au);
  }

  if (v24 < -8.0)
  {
    _HKInitializeLogging();
    v30 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      v32 = *(a1 + 32);
      v34 = *(a1 + 56);
      v33 = *(a1 + 64);
      *buf = 138413058;
      v40 = v33;
      v41 = 2048;
      v42 = v32;
      v43 = 2048;
      v44 = v25;
      v45 = 2112;
      v46 = v34;
      _os_log_fault_impl(&dword_228986000, v30, OS_LOG_TYPE_FAULT, "<%@:%p> End notification of profile ready observers in %0.1f seconds for %@", buf, 0x2Au);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasNotifiedProfileReadyObservers
{
  os_unfair_lock_lock(&self->_profileObserverLock);
  hasNotifiedProfileReadyObservers = self->_hasNotifiedProfileReadyObservers;
  os_unfair_lock_unlock(&self->_profileObserverLock);
  return hasNotifiedProfileReadyObservers;
}

- (void)awakeFromDisk
{
  if ([(HDProfile *)self profileType]!= 1)
  {
    daemon = [(HDProfile *)self daemon];
    behavior = [daemon behavior];
    supportsSecondaryProfiles = [behavior supportsSecondaryProfiles];

    if ((supportsSecondaryProfiles & 1) == 0)
    {
      database = [(HDProfile *)self database];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __26__HDProfile_awakeFromDisk__block_invoke;
      v7[3] = &unk_278613968;
      v7[4] = self;
      [database performWhenDataProtectedByFirstUnlockIsAvailable:v7];
    }
  }
}

uint64_t __26__HDProfile_awakeFromDisk__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    [v3 profileType];
    v4 = HKStringFromProfileType();
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Device ineligible for loading profile of type %{public}@. Deleting.", &v7, 0x16u);
  }

  result = [*(a1 + 32) triggerDeletion];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)prepareForObliterationWithReason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = reasonCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Preparing for obliteration (%{public}@).", buf, 0x16u);
  }

  allProfileExtensions = [(HDProfile *)self allProfileExtensions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [allProfileExtensions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allProfileExtensions);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 prepareForObliteration];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allProfileExtensions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAndWaitWithReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v29 = 2114;
    v30 = reasonCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating (%{public}@).", buf, 0x16u);
  }

  nanoSyncManager = [(HDProfile *)self nanoSyncManager];
  [nanoSyncManager invalidateAndWait];

  database = [(HDProfile *)self database];
  [database invalidateAndWait];

  conceptIndexManager = [(HDProfile *)self conceptIndexManager];
  [conceptIndexManager invalidateAndWait];

  workoutManager = [(HDProfile *)self workoutManager];
  [workoutManager invalidateAndWait];

  summarySharingEntryIDSManager = [(HDProfile *)self summarySharingEntryIDSManager];
  [summarySharingEntryIDSManager invalidateAndWait];

  featureSettingsManager = [(HDProfile *)self featureSettingsManager];
  [featureSettingsManager invalidateAndWait];

  authorizationManager = [(HDProfile *)self authorizationManager];
  [authorizationManager invalidateAndWait];

  sourceManager = [(HDProfile *)self sourceManager];
  [sourceManager invalidateAndWait];

  cloudSyncManager = [(HDProfile *)self cloudSyncManager];
  [cloudSyncManager invalidateAndWait];

  allProfileExtensions = [(HDProfile *)self allProfileExtensions];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [allProfileExtensions countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(allProfileExtensions);
        }

        v20 = *(*(&v22 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          [v20 invalidateAndWait];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [allProfileExtensions countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)obliterateAndTerminateWithOptions:(unint64_t)options reason:(id)reason completion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  reasonCopy = reason;
  daemon = [(HDProfile *)self daemon];
  profileIdentifier = [(HDProfile *)self profileIdentifier];
  v14[0] = profileIdentifier;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [daemon obliterateAndTerminateProfiles:v12 options:options reason:reasonCopy completion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)obliterateWithOptions:(unint64_t)options reason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  daemon = [(HDProfile *)self daemon];
  behavior = [daemon behavior];
  isAppleInternalInstall = [behavior isAppleInternalInstall];

  if (options)
  {
    if ((options & 4) == 0)
    {
      medicalIDDataManager = [(HDProfile *)self medicalIDDataManager];

      if (medicalIDDataManager)
      {
        medicalIDDataManager2 = [(HDProfile *)self medicalIDDataManager];
        v19 = 0;
        v12 = [medicalIDDataManager2 obliterateMedicalIDDataWithReason:reasonCopy error:&v19];
        v13 = v19;

        if ((v12 & 1) == 0)
        {
          _HKInitializeLogging();
          v14 = HKLogInfrastructure();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v21 = v13;
            _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to obliterate Medical ID: %{public}@", buf, 0xCu);
          }
        }
      }
    }

    nanoSyncManager = [(HDProfile *)self nanoSyncManager];
    v16 = nanoSyncManager;
    if (nanoSyncManager)
    {
      [nanoSyncManager obliterateWithOptions:options reason:reasonCopy];
    }
  }

  database = [(HDProfile *)self database];
  [database obliterateWithReason:reasonCopy preserveCopy:isAppleInternalInstall & (options >> 1)];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)executeBlockAfterProfileReady:(id)ready
{
  aBlock = ready;
  os_unfair_lock_lock(&self->_profileObserverLock);
  if (self->_hasNotifiedProfileReadyObservers)
  {
    os_unfair_lock_unlock(&self->_profileObserverLock);
    aBlock[2]();
  }

  else
  {
    postProfileReadyBlocks = self->_postProfileReadyBlocks;
    if (!postProfileReadyBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_postProfileReadyBlocks;
      self->_postProfileReadyBlocks = v5;

      postProfileReadyBlocks = self->_postProfileReadyBlocks;
    }

    v7 = _Block_copy(aBlock);
    [(NSMutableArray *)postProfileReadyBlocks addObject:v7];

    os_unfair_lock_unlock(&self->_profileObserverLock);
  }
}

- (BOOL)fetchDisplayFirstName:(id *)name lastName:(id *)lastName error:(id *)error
{
  selfCopy = self;
  if (self)
  {
    v9 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"profile" profile:self];
    v10 = [(HDKeyValueDomain *)v9 stringForKey:@"displayName" error:error];
  }

  else
  {
    v10 = 0;
  }

  if (*error)
  {
    v11 = 0;
  }

  else
  {
    if (name && v10)
    {
      v12 = v10;
      *name = v10;
    }

    if (selfCopy)
    {
      v13 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"profile" profile:selfCopy];
      selfCopy = [(HDKeyValueDomain *)v13 stringForKey:@"displayLastName" error:error];
    }

    v14 = *error;
    v11 = *error == 0;
    if (!v14 && lastName && selfCopy)
    {
      v15 = selfCopy;
      *lastName = selfCopy;
    }
  }

  return v11;
}

- (BOOL)setDisplayFirstName:(id)name lastName:(id)lastName error:(id *)error
{
  nameCopy = name;
  lastNameCopy = lastName;
  v10 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"profile" profile:self];
  database = self->_database;
  v12 = +[HDDatabaseTransactionContext contextForWriting];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__HDProfile_setDisplayFirstName_lastName_error___block_invoke;
  v20[3] = &unk_278615D40;
  v21 = v10;
  v22 = nameCopy;
  v23 = lastNameCopy;
  v13 = lastNameCopy;
  v14 = nameCopy;
  v15 = v10;
  v16 = [(HDDatabase *)database performTransactionWithContext:v12 error:error block:v20 inaccessibilityHandler:0];

  if (v16)
  {
    daemon = [(HDProfile *)self daemon];
    profileManager = [daemon profileManager];
    [profileManager dispatchProfileListDidChange];
  }

  return v16;
}

uint64_t __48__HDProfile_setDisplayFirstName_lastName_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) setString:*(a1 + 40) forKey:@"displayName" error:a3];
  if (result)
  {
    if (*(a1 + 48))
    {
      v5 = *(a1 + 32);

      return [v5 setString:? forKey:? error:?];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)profileExtensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_profileLock);
  [(HDProfile *)self _createExtensionsIfNeeded];
  v5 = [(NSDictionary *)self->_profileExtensionsByIdentifier objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_profileLock);

  return v5;
}

- (id)profileExtensionsConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  allProfileExtensions = [(HDProfile *)self allProfileExtensions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HDProfile_profileExtensionsConformingToProtocol___block_invoke;
  v9[3] = &unk_27862B938;
  v10 = protocolCopy;
  v6 = protocolCopy;
  v7 = [allProfileExtensions hk_filter:v9];

  return v7;
}

- (id)allProfileExtensions
{
  os_unfair_lock_lock(&self->_profileLock);
  [(HDProfile *)self _createExtensionsIfNeeded];
  allValues = [(NSDictionary *)self->_profileExtensionsByIdentifier allValues];
  os_unfair_lock_unlock(&self->_profileLock);
  if (allValues)
  {
    v4 = allValues;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)fetchDisplayImageDataWithError:(id *)error
{
  v4 = [[HDKeyValueDomain alloc] initWithCategory:101 domainName:@"profile" profile:self];
  v5 = [(HDKeyValueDomain *)v4 dataForKey:@"displayImageData" error:error];

  return v5;
}

- (BOOL)setDisplayImageData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[HDKeyValueDomain alloc] initWithCategory:101 domainName:@"profile" profile:self];
  v8 = [(HDKeyValueDomain *)v7 setData:dataCopy forKey:@"displayImageData" error:error];

  if (v8)
  {
    daemon = [(HDProfile *)self daemon];
    profileManager = [daemon profileManager];
    [profileManager dispatchProfileListDidChange];
  }

  return v8;
}

- (void)setTestModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  *&v23[5] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_profileLock);
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    testModeEnabled = self->_testModeEnabled;
    *buf = 138543874;
    selfCopy4 = self;
    v22 = 1024;
    *v23 = testModeEnabled;
    v23[2] = 1024;
    *&v23[3] = enabledCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating test mode %{BOOL}d -> %{BOOL}d", buf, 0x18u);
  }

  v7 = self->_testModeEnabled;
  self->_testModeEnabled = enabledCopy;
  os_unfair_lock_unlock(&self->_profileLock);
  if (v7 != enabledCopy)
  {
    directoryURL = [(HDProfile *)self directoryURL];
    v9 = [directoryURL URLByAppendingPathComponent:@"TEST_PROFILE"];

    _HKInitializeLogging();
    v10 = HKLogInfrastructure();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v22 = 2114;
      *v23 = v9;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Test mode indicator URL: %{public}@", buf, 0x16u);
    }

    if (enabledCopy)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEA90]);
      v19 = 0;
      v12 = [v11 writeToURL:v9 options:0x10000000 error:&v19];
      v13 = v19;

      if (v12)
      {
LABEL_15:

        goto LABEL_16;
      }

      _HKInitializeLogging();
      v14 = HKLogInfrastructure();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v22 = 2114;
        *v23 = v13;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to enable testing mode: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CCAA00]);
      v18 = 0;
      v15 = [v13 removeItemAtURL:v9 error:&v18];
      v14 = v18;
      if ((v15 & 1) == 0)
      {
        _HKInitializeLogging();
        v16 = HKLogInfrastructure();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy4 = self;
          v22 = 2114;
          *v23 = v14;
          _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to disable testing mode: %{public}@", buf, 0x16u);
        }
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)triggerDeletion
{
  v17 = *MEMORY[0x277D85DE8];
  daemon = [(HDProfile *)self daemon];
  profileManager = [daemon profileManager];
  profileIdentifier = [(HDProfile *)self profileIdentifier];
  v12 = 0;
  v6 = [profileManager deleteProfile:profileIdentifier error:&v12];
  v7 = v12;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
      profileIdentifier2 = [(HDProfile *)self profileIdentifier];
      *buf = 138543618;
      v14 = profileIdentifier2;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Error deleting profile %{public}@, error: %{public}@ (#t0)", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_newDatabase
{
  v3 = [HDProfile _concurrentDatabaseReaderLimitForProfileType:[(HDProfile *)self profileType]];
  v4 = objc_alloc(MEMORY[0x277D10AE8]);
  daemon = [(HDProfile *)self daemon];
  behavior = [daemon behavior];
  daemon2 = [(HDProfile *)self daemon];
  contentProtectionManager = [daemon2 contentProtectionManager];
  v9 = [v4 initWithBehavior:behavior concurrentReaderLimit:v3 contentProtectionManager:contentProtectionManager];

  v10 = [[HDDatabase alloc] initWithConfiguration:v9 profile:self];
  return v10;
}

- (id)_newUserCharacteristicsManager
{
  v3 = [HDUserCharacteristicsManager alloc];

  return [(HDUserCharacteristicsManager *)v3 initWithProfile:self];
}

- (id)_newCloudSyncManager
{
  v3 = [HDCloudSyncManager alloc];

  return [(HDCloudSyncManager *)v3 initWithProfile:self];
}

- (id)_newContributorManager
{
  v3 = [HDContributorManager alloc];

  return [(HDContributorManager *)v3 initWithProfile:self];
}

- (id)_newInternalContentDatabaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  pluginManager = [WeakRetained pluginManager];
  v5 = [pluginManager pluginsConformingToProtocol:&unk_283D71618];
  allValues = [v5 allValues];
  firstObject = [allValues firstObject];

  if (!firstObject)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = HKLogHealthOntology();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_debug_impl(&dword_228986000, v10, OS_LOG_TYPE_DEBUG, "Did not find any internal content database manager provider.", v13, 2u);
      }
    }
  }

  v11 = [firstObject newInternalContentDatabaseManagerForProfile:self];

  return v11;
}

- (BOOL)setPairedGuardianParticipant:(id)participant error:(id *)error
{
  participantCopy = participant;
  v7 = HDTinkerKeyValueDomainWithProfile(self);
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:participantCopy requiringSecureCoding:1 error:error];

  if (v8)
  {
    v9 = [v7 setData:v8 forKey:@"TinkerPairedGuardianParticipantKey" error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)pairedGuardianParticipantWithError:(id *)error
{
  v4 = HDTinkerKeyValueDomainWithProfile(self);
  v5 = [v4 dataForKey:@"TinkerPairedGuardianParticipantKey" error:error];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setPairedGuardianUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = HDTinkerProtectedKeyValueDomainWithProfile(self);
  firstName = [infoCopy firstName];
  v9 = [v7 setString:firstName forKey:@"TinkerSharedUserFirstName" error:error];

  if (!v9)
  {
    goto LABEL_8;
  }

  lastName = [infoCopy lastName];
  v11 = [v7 setString:lastName forKey:@"TinkerSharedUserLastName" error:error];

  if ((v11 & 1) == 0)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"TinkerSharedUserFirstName", 0, v17}];
    v15 = LABEL_7:;
    [v7 removeValuesForKeys:v15 error:error];

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  dsid = [infoCopy dsid];
  v13 = [v7 setNumber:dsid forKey:@"TinkerSharedUserDSID" error:error];

  if ((v13 & 1) == 0)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"TinkerSharedUserFirstName", @"TinkerSharedUserLastName", 0}];
    goto LABEL_7;
  }

  v14 = 1;
LABEL_9:

  return v14;
}

- (id)pairedGuardianUserInfoWithError:(id *)error
{
  v4 = HDTinkerProtectedKeyValueDomainWithProfile(self);
  v5 = objc_alloc_init(HDTinkerPairedUserInfo);
  v6 = [v4 stringForKey:@"TinkerSharedUserFirstName" error:error];
  [(HDTinkerPairedUserInfo *)v5 setFirstName:v6];

  firstName = [(HDTinkerPairedUserInfo *)v5 firstName];
  if (firstName)
  {
  }

  else if (*error)
  {
    goto LABEL_13;
  }

  v8 = [v4 stringForKey:@"TinkerSharedUserLastName" error:error];
  [(HDTinkerPairedUserInfo *)v5 setLastName:v8];

  lastName = [(HDTinkerPairedUserInfo *)v5 lastName];
  if (lastName)
  {
  }

  else if (*error)
  {
    goto LABEL_13;
  }

  v10 = [v4 numberForKey:@"TinkerSharedUserDSID" error:error];
  [(HDTinkerPairedUserInfo *)v5 setDsid:v10];

  dsid = [(HDTinkerPairedUserInfo *)v5 dsid];
  if (dsid)
  {

LABEL_7:
    v12 = v5;
    goto LABEL_14;
  }

  if (!*error)
  {
    goto LABEL_7;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12;
}

@end