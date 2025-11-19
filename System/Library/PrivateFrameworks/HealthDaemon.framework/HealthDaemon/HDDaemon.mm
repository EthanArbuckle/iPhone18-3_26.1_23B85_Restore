@interface HDDaemon
- (HDContentProtectionManager)contentProtectionManager;
- (HDDaemon)init;
- (HDDaemon)initWithContainerDirectoryPath:(id)a3;
- (HDDaemon)initWithHealthDirectoryPath:(id)a3 medicalIDDirectoryPath:(id)a4;
- (HDDaemonTester)daemonTester;
- (HDPluginManager)pluginManager;
- (HDProcessStateManager)processStateManager;
- (HDProfileManager)profileManager;
- (NSObject)_setupSignal:(void *)a3 handler:;
- (NSURL)localContentURL;
- (id)IDSServiceWithIdentifier:(id)a3;
- (id)_newAnalyticsSubmissionCoordinator;
- (id)_newAutoBugCaptureReporter;
- (id)_newCloudSyncCoordinator;
- (id)_newConnectionManager;
- (id)_newDatabasePruningCoordinator;
- (id)_newMaintenanceWorkCoordinator;
- (id)_newNotificationInstructionSyncService;
- (id)_newOTAFeatureAvailabilityManager;
- (id)_newPluginManager;
- (id)_newPrimaryProfile;
- (id)_newProcessStateManager;
- (id)_newProfileManager;
- (id)_newTaskServerRegistry;
- (id)createApplicationStateMonitor;
- (id)createRBSProcessStateProvider;
- (id)daemonExtensionsConformingToProtocol:(id)a3;
- (id)diagnosticDescription;
- (id)healthDirectorySizeInBytes;
- (id)healthDomainAccessorWithPairedDevice:(id)a3;
- (id)healthLiteUserDefaultsDomain;
- (id)protectedResourceStoreProviders;
- (id)taskServerClasses;
- (void)_resetPrivacySettings;
- (void)_terminationCleanup;
- (void)applicationStateDidChange:(id)a3;
- (void)dealloc;
- (void)exitClean:(BOOL)a3 reason:(id)a4;
- (void)invalidateAndWaitWithReason:(id)a3;
- (void)obliterateAndTerminateProfiles:(id)a3 options:(unint64_t)a4 reason:(id)a5 completion:(id)a6;
- (void)obliterateAndTerminateWithOptions:(unint64_t)a3 reason:(id)a4 completion:(id)a5;
- (void)performBlockWithPowerAssertionIdentifier:(id)a3 transactionName:(id)a4 powerAssertionInterval:(double)a5 block:(id)a6;
- (void)registerDaemonActivatedObserver:(id)a3 queue:(id)queue;
- (void)registerDaemonReadyObserver:(id)a3 queue:(id)a4;
- (void)registerForLaunchNotification:(const char *)a3;
- (void)registerProtectedResourceStoreProvider:(id)a3;
- (void)setDaemonTester:(id)a3;
- (void)start;
- (void)unregisterForLaunchNotification:(const char *)a3;
- (void)unregisterProtectedResourceStoreProvider:(id)a3;
@end

@implementation HDDaemon

- (HDProfileManager)profileManager
{
  profileManager = self->_profileManager;
  if (!profileManager)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1098 description:{@"Invalid parameter not satisfying: %@", @"_profileManager != nil"}];

    profileManager = self->_profileManager;
  }

  return profileManager;
}

- (HDProcessStateManager)processStateManager
{
  processStateManager = self->_processStateManager;
  if (!processStateManager)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1084 description:{@"Invalid parameter not satisfying: %@", @"_processStateManager != nil"}];

    processStateManager = self->_processStateManager;
  }

  return processStateManager;
}

- (HDPluginManager)pluginManager
{
  pluginManager = self->_pluginManager;
  if (!pluginManager)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1089 description:{@"Invalid parameter not satisfying: %@", @"_pluginManager != nil"}];

    pluginManager = self->_pluginManager;
  }

  return pluginManager;
}

void __38__HDDaemon__setupMemoryWarningHandler__block_invoke(uint64_t a1, double *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (Current >= *a2 + 1.0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = a3;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
    }

    *a2 = Current;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (HDContentProtectionManager)contentProtectionManager
{
  contentProtectionManager = self->_contentProtectionManager;
  if (!contentProtectionManager)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1071 description:{@"Invalid parameter not satisfying: %@", @"_contentProtectionManager != nil"}];

    contentProtectionManager = self->_contentProtectionManager;
  }

  return contentProtectionManager;
}

- (HDDaemonTester)daemonTester
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonTester);

  return WeakRetained;
}

- (id)taskServerClasses
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:51];
  v3 = [HDQueryServer builtInQueryServerClasses:v7];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)IDSServiceWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D18778];
  v4 = a3;
  v5 = [[v3 alloc] initWithService:v4];

  return v5;
}

- (id)healthDomainAccessorWithPairedDevice:(id)a3
{
  v3 = MEMORY[0x277D2BA58];
  v4 = a3;
  v5 = [[v3 alloc] initWithDomain:@"com.apple.healthd" pairedDevice:v4];

  return v5;
}

- (id)healthLiteUserDefaultsDomain
{
  v3 = [HDKeyValueDomain alloc];
  v4 = [(HDDaemon *)self primaryProfile];
  v5 = [(HDKeyValueDomain *)v3 initWithCategory:105 domainName:@"HealthLite" profile:v4];

  return v5;
}

- (HDDaemon)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDaemon)initWithContainerDirectoryPath:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingPathComponent:@"Health"];
  v6 = [v4 stringByAppendingPathComponent:@"MedicalID"];

  v7 = [(HDDaemon *)self initWithHealthDirectoryPath:v5 medicalIDDirectoryPath:v6];
  return v7;
}

- (HDDaemon)initWithHealthDirectoryPath:(id)a3 medicalIDDirectoryPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = HDDaemon;
  v8 = [(HDDaemon *)&v27 init];
  v9 = v8;
  if (v8)
  {
    v8->_isTerminating = 0;
    atomic_store(0, &v8->_hasCalledExit);
    v10 = [MEMORY[0x277CCDD30] sharedBehavior];
    behavior = v9->_behavior;
    v9->_behavior = v10;

    v12 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    daemonReadyBlocks = v9->_daemonReadyBlocks;
    v9->_daemonReadyBlocks = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    daemonActivatedBlocks = v9->_daemonActivatedBlocks;
    v9->_daemonActivatedBlocks = v16;

    v18 = [v6 copy];
    healthDirectoryPath = v9->_healthDirectoryPath;
    v9->_healthDirectoryPath = v18;

    v20 = [v7 copy];
    medicalIDDirectoryPath = v9->_medicalIDDirectoryPath;
    v9->_medicalIDDirectoryPath = v20;

    v9->_daemonReadyLock._os_unfair_lock_opaque = 0;
    v9->_protectedResourceStoreProvidersLock._os_unfair_lock_opaque = 0;
    v22 = [(HDDaemon *)v9 _newConnectionManager];
    connectionManager = v9->_connectionManager;
    v9->_connectionManager = v22;

    v24 = objc_alloc_init(HDBackgroundObservationServerExtensionManager);
    extensionManager = v9->_extensionManager;
    v9->_extensionManager = v24;
  }

  return v9;
}

- (void)start
{
  v155[13] = *MEMORY[0x277D85DE8];
  if (atomic_exchange(&self->_didStart._Value, 1u))
  {
    v127 = [MEMORY[0x277CCA890] currentHandler];
    [v127 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"alreadyStarted == false"}];
  }

  else
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    healthDirectoryPath = self->_healthDirectoryPath;
    v137 = 0;
    v5 = [v3 createDirectoryAtPath:healthDirectoryPath withIntermediateDirectories:1 attributes:0 error:&v137];
    v129 = v137;

    v6 = MEMORY[0x277CCC2B0];
    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v125 = self->_healthDirectoryPath;
        *buf = 138543618;
        *&buf[4] = v125;
        *&buf[12] = 2114;
        *&buf[14] = v129;
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to create %{public}@: %{public}@", buf, 0x16u);
      }
    }

    if (([(_HKBehavior *)self->_behavior isDeviceSupported]& 1) == 0)
    {
      _HKInitializeLogging();
      v8 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Device is unsupported", buf, 2u);
      }
    }

    v9 = [[HDPostInstallUpdateManager alloc] initWithDaemon:self];
    postInstallUpdateManager = self->_postInstallUpdateManager;
    self->_postInstallUpdateManager = v9;

    if ([(_HKBehavior *)self->_behavior isDeviceSupported])
    {
      v11 = [(HDDaemon *)self _newPluginManager];
      pluginManager = self->_pluginManager;
      self->_pluginManager = v11;

      v13 = [(HDDaemon *)self _newCacheDeleteCoordinator];
      cacheDeleteCoordinator = self->_cacheDeleteCoordinator;
      self->_cacheDeleteCoordinator = v13;

      v15 = [(HDDaemon *)self _newContentProtectionManager];
      contentProtectionManager = self->_contentProtectionManager;
      self->_contentProtectionManager = v15;

      v17 = [(HDDaemon *)self _newProcessStateManager];
      processStateManager = self->_processStateManager;
      self->_processStateManager = v17;

      v19 = [(HDDaemon *)self _newBackgroundSystemScheduler];
      systemScheduler = self->_systemScheduler;
      self->_systemScheduler = v19;

      v21 = [(HDDaemon *)self _newNotificationInstructionSyncService];
      notificationInstructionSyncService = self->_notificationInstructionSyncService;
      self->_notificationInstructionSyncService = v21;

      if ([(_HKBehavior *)self->_behavior healthAppSupportedOnDevice])
      {
        v23 = [(HDDaemon *)self _newHealthAppNewDeviceNotificationService];
        healthAppNewDeviceNotificationService = self->_healthAppNewDeviceNotificationService;
        self->_healthAppNewDeviceNotificationService = v23;
      }

      v25 = [(HDDaemon *)self _newNanoRegistryDeviceCapabilityProvider];
      nanoRegistryDeviceCapabilityProvider = self->_nanoRegistryDeviceCapabilityProvider;
      self->_nanoRegistryDeviceCapabilityProvider = v25;

      v27 = [(HDDaemon *)self _newOTAFeatureAvailabilityManager];
      OTAFeatureAvailabilityManager = self->_OTAFeatureAvailabilityManager;
      self->_OTAFeatureAvailabilityManager = v27;

      v29 = objc_alloc_init(MEMORY[0x277D10BD0]);
      alarmScheduler = self->_alarmScheduler;
      self->_alarmScheduler = v29;

      v31 = [MEMORY[0x277CCD418] requirementSatisfactionOverridesDataSource];
      featureAvailabilityRequirementSatisfactionOverridesDataSource = self->_featureAvailabilityRequirementSatisfactionOverridesDataSource;
      self->_featureAvailabilityRequirementSatisfactionOverridesDataSource = v31;

      v33 = objc_alloc_init(MEMORY[0x277CCDBE0]);
      watchLowPowerModeDataSource = self->_watchLowPowerModeDataSource;
      self->_watchLowPowerModeDataSource = v33;

      v35 = objc_alloc_init(MEMORY[0x277CCDCF8]);
      wristDetectionSettingManager = self->_wristDetectionSettingManager;
      self->_wristDetectionSettingManager = v35;

      v37 = [(HDDaemon *)self _newPrimaryProfile];
      primaryProfile = self->_primaryProfile;
      self->_primaryProfile = v37;

      [(HDDaemon *)self unitTest_didCreateProfile:self->_primaryProfile];
      v39 = [(HDDaemon *)self _newProfileManager];
      profileManager = self->_profileManager;
      self->_profileManager = v39;

      [(HDProfileManager *)self->_profileManager addProfile:self->_primaryProfile];
      v41 = [(HDDaemon *)self _newCloudSyncCoordinator];
      cloudSyncCoordinator = self->_cloudSyncCoordinator;
      self->_cloudSyncCoordinator = v41;

      v43 = [(HDDaemon *)self _newDatabasePruningCoordinator];
      databasePruningCoordinator = self->_databasePruningCoordinator;
      self->_databasePruningCoordinator = v43;

      v45 = [(HDDaemon *)self _newAnalyticsSubmissionCoordinator];
      analyticsSubmissionCoordinator = self->_analyticsSubmissionCoordinator;
      self->_analyticsSubmissionCoordinator = v45;

      v47 = [(HDDaemon *)self _newMaintenanceWorkCoordinator];
      maintenanceWorkCoordinator = self->_maintenanceWorkCoordinator;
      self->_maintenanceWorkCoordinator = v47;

      v49 = [(HDDaemon *)self _newAutoBugCaptureReporter];
      autoBugCaptureReporter = self->_autoBugCaptureReporter;
      self->_autoBugCaptureReporter = v49;

      if ([(_HKBehavior *)self->_behavior supportsOntology])
      {
        v51 = objc_alloc_init(HDOntologyConfigurationProvider);
        ontologyConfigurationProvider = self->_ontologyConfigurationProvider;
        self->_ontologyConfigurationProvider = v51;
      }

      v53 = [(HDDaemon *)self _newDevicePowerMonitor];
      devicePowerMonitor = self->_devicePowerMonitor;
      self->_devicePowerMonitor = v53;

      v55 = [[HDQueryManager alloc] initWithDaemon:self];
      queryManager = self->_queryManager;
      self->_queryManager = v55;

      v57 = [(HDDaemon *)self _newTaskServerRegistry];
      taskServerRegistry = self->_taskServerRegistry;
      self->_taskServerRegistry = v57;

      v59 = [HDUserDomainConceptEntityRegistry registryWithDaemon:self setSharedInstance:1];
      userDomainConceptEntityRegistry = self->_userDomainConceptEntityRegistry;
      self->_userDomainConceptEntityRegistry = v59;

      v147 = self;
      v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
      v128 = [(HDPluginManager *)self->_pluginManager pluginsConformingToProtocol:&unk_283CCAEA0];
      v62 = [v128 allValues];
      v63 = [v61 arrayByAddingObjectsFromArray:v62];

      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v64 = v63;
      v65 = [v64 countByEnumeratingWithState:&v133 objects:v146 count:16];
      if (v65)
      {
        v66 = *v134;
        do
        {
          v67 = 0;
          do
          {
            if (*v134 != v66)
            {
              objc_enumerationMutation(v64);
            }

            v68 = *(*(&v133 + 1) + 8 * v67);
            v69 = self->_taskServerRegistry;
            v132 = 0;
            v70 = [(HDTaskServerRegistry *)v69 registerTaskServerClassesWithProvider:v68 error:&v132];
            v71 = v132;
            if (!v70)
            {
              _HKInitializeLogging();
              v72 = *v6;
              if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                *&buf[4] = v68;
                *&buf[12] = 2114;
                *&buf[14] = v71;
                _os_log_error_impl(&dword_228986000, v72, OS_LOG_TYPE_ERROR, "Failed to register task server classes from provider %{public}@: %{public}@", buf, 0x16u);
              }
            }

            ++v67;
          }

          while (v65 != v67);
          v65 = [v64 countByEnumeratingWithState:&v133 objects:v146 count:16];
        }

        while (v65);
      }

      v73 = [(HDPluginManager *)self->_pluginManager createExtensionsForDaemon:self];
      daemonExtensionsByIdentifier = self->_daemonExtensionsByIdentifier;
      self->_daemonExtensionsByIdentifier = v73;

      if (!_HDIsUnitTesting)
      {
        from = @"UserAssignedDeviceName";
        v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&from count:1];
        objc_initWeak(location, self);
        queue = self->_queue;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __41__HDDaemon__registerForDeviceNameChanges__block_invoke;
        v154 = &unk_27861B4E0;
        objc_copyWeak(v155, location);
        self->_deviceNameChangesToken = MGRegisterForUpdates();
        objc_destroyWeak(v155);
        objc_destroyWeak(location);
      }
    }

    else
    {
      [HDCloudSyncPeriodicActivityScheduler registerDisabledPeriodicActivitiesForUnsupportedDaemon:self];
      [HDDatabasePruningCoordinator registerDisabledPeriodicActivitiesForUnsupportedDaemon:self];
      self->_healthdStateHandler = HDAddStateHandler(self->_queue, @"Sensitive Logging Status", &__block_literal_global_60);
    }

    v77 = objc_alloc_init(HDXPCEventManager);
    xpcEventManager = self->_xpcEventManager;
    self->_xpcEventManager = v77;

    objc_initWeak(location, self);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __32__HDDaemon__setUpSignalHandlers__block_invoke;
    v154 = &unk_278616F38;
    objc_copyWeak(v155, location);
    v79 = [(HDDaemon *)self _setupSignal:buf handler:?];
    v80 = _MergedGlobals_198;
    _MergedGlobals_198 = v79;

    v81 = [(HDDaemon *)self _setupSignal:&__block_literal_global_429 handler:?];
    v82 = qword_280D67B60;
    qword_280D67B60 = v81;

    from = MEMORY[0x277D85DD0];
    v149 = 3221225472;
    v150 = __32__HDDaemon__setUpSignalHandlers__block_invoke_3;
    v151 = &unk_278616F38;
    objc_copyWeak(v152, location);
    v83 = [(HDDaemon *)self _setupSignal:&from handler:?];
    v84 = qword_280D67B68;
    qword_280D67B68 = v83;

    objc_destroyWeak(v152);
    objc_destroyWeak(v155);
    objc_destroyWeak(location);
    v85 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v85 addObserver:self];

    v86 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v86 addObject:self];

    os_unfair_lock_lock(&self->_daemonReadyLock);
    self->_daemonReady = 1;
    WeakRetained = objc_loadWeakRetained(&self->_daemonTester);
    v88 = self->_daemonReadyBlocks;
    daemonReadyBlocks = self->_daemonReadyBlocks;
    self->_daemonReadyBlocks = 0;

    os_unfair_lock_unlock(&self->_daemonReadyLock);
    _HKInitializeLogging();
    v90 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = [(NSMutableArray *)v88 count];
      *buf = 134217984;
      *&buf[4] = v91;
      _os_log_impl(&dword_228986000, v90, OS_LOG_TYPE_DEFAULT, "Notifying %lu Daemon Ready Observers", buf, 0xCu);
    }

    _HKInitializeLogging();
    v92 = _HKLogPersistedSignposts();
    v93 = os_signpost_enabled(v92);

    if (v93)
    {
      v94 = _HKLogPersistedSignposts();
      if (os_signpost_enabled(v94))
      {
        v95 = [(NSMutableArray *)v88 count];
        *buf = 134217984;
        *&buf[4] = v95;
        _os_signpost_emit_with_name_impl(&dword_228986000, v94, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Notify Daemon Ready Observers", "count=%lu", buf, 0xCu);
      }
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v96 = v88;
    v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v138 objects:&from count:16];
    if (v97)
    {
      v98 = *v139;
      do
      {
        for (i = 0; i != v97; ++i)
        {
          if (*v139 != v98)
          {
            objc_enumerationMutation(v96);
          }

          (*(*(*(&v138 + 1) + 8 * i) + 16))();
        }

        v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v138 objects:&from count:16];
      }

      while (v97);
    }

    os_unfair_lock_lock(&self->_daemonReadyLock);
    v100 = self->_daemonActivatedBlocks;
    daemonActivatedBlocks = self->_daemonActivatedBlocks;
    self->_daemonActivatedBlocks = 0;

    os_unfair_lock_unlock(&self->_daemonReadyLock);
    _HKInitializeLogging();
    v102 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v103 = v102;
      v104 = [(NSMutableArray *)v100 count];
      *buf = 134217984;
      *&buf[4] = v104;
      _os_log_impl(&dword_228986000, v103, OS_LOG_TYPE_DEFAULT, "Notify (%lu) Daemon Activated Observers", buf, 0xCu);
    }

    v144 = 0u;
    v145 = 0u;
    *location = 0u;
    v143 = 0u;
    v105 = v100;
    v106 = [(NSMutableArray *)v105 countByEnumeratingWithState:location objects:buf count:16];
    if (v106)
    {
      v107 = *v143;
      do
      {
        for (j = 0; j != v106; ++j)
        {
          if (*v143 != v107)
          {
            objc_enumerationMutation(v105);
          }

          (*(*(location[1] + j) + 16))();
        }

        v106 = [(NSMutableArray *)v105 countByEnumeratingWithState:location objects:buf count:16];
      }

      while (v106);
    }

    _HKInitializeLogging();
    v109 = _HKLogPersistedSignposts();
    v110 = os_signpost_enabled(v109);

    if (v110)
    {
      v111 = _HKLogPersistedSignposts();
      if (os_signpost_enabled(v111))
      {
        v112 = [(NSMutableArray *)v96 count];
        *buf = 134217984;
        *&buf[4] = v112;
        _os_signpost_emit_with_name_impl(&dword_228986000, v111, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Notify Daemon Ready Observers", "count=%lu", buf, 0xCu);
      }
    }

    [(HDDaemon *)self _postDaemonLaunchDarwinNotification];
    [WeakRetained daemonReadyComplete:self];

    objc_initWeak(&from, self);
    v113 = self->_queue;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __48__HDDaemon__setUpDarwinNotificationEventHandler__block_invoke;
    v154 = &unk_27861B430;
    objc_copyWeak(v155, &from);
    hd_xpc_set_event_stream_handler();
    objc_destroyWeak(v155);
    objc_destroyWeak(&from);
    objc_initWeak(&from, self);
    v114 = MEMORY[0x277D85CD0];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __53__HDDaemon__setUpDistributedNotificationEventHandler__block_invoke;
    v154 = &unk_27861B430;
    objc_copyWeak(v155, &from);
    hd_xpc_set_event_stream_handler();

    objc_destroyWeak(v155);
    objc_destroyWeak(&from);
    if (!_HDIsUnitTesting)
    {
      v115 = dispatch_source_create(MEMORY[0x277D85D18], 0, 1uLL, MEMORY[0x277D85CD0]);
      v116 = qword_280D67B80;
      qword_280D67B80 = v115;

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __38__HDDaemon__setupMemoryWarningHandler__block_invoke_465;
      v154 = &unk_278613658;
      v155[0] = &__block_literal_global_464_0;
      dispatch_source_set_event_handler(qword_280D67B80, buf);
      dispatch_activate(qword_280D67B80);
      v117 = dispatch_source_create(MEMORY[0x277D85D18], 0, 2uLL, MEMORY[0x277D85CD0]);
      v118 = qword_280D67B88;
      qword_280D67B88 = v117;

      from = MEMORY[0x277D85DD0];
      v149 = 3221225472;
      v150 = __38__HDDaemon__setupMemoryWarningHandler__block_invoke_2;
      v151 = &unk_278613658;
      v152[0] = &__block_literal_global_464_0;
      dispatch_source_set_event_handler(qword_280D67B88, &from);
      dispatch_activate(qword_280D67B88);
      v119 = dispatch_source_create(MEMORY[0x277D85D18], 0, 4uLL, MEMORY[0x277D85CD0]);
      v120 = qword_280D67B90;
      qword_280D67B90 = v119;

      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      *&v143 = __38__HDDaemon__setupMemoryWarningHandler__block_invoke_3;
      *(&v143 + 1) = &unk_278613658;
      *&v144 = &__block_literal_global_464_0;
      dispatch_source_set_event_handler(qword_280D67B90, location);
      dispatch_activate(qword_280D67B90);
    }

    v121 = self->_queue;
    hd_xpc_set_event_stream_handler();
    [(HDPostInstallUpdateManager *)self->_postInstallUpdateManager start];
    v122 = [MEMORY[0x277CCAB98] defaultCenter];
    [v122 addObserver:self selector:sel__localeOrLanguageChanged_ name:*MEMORY[0x277CBE620] object:0];

    objc_initWeak(buf, self);
    v123 = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __17__HDDaemon_start__block_invoke_2;
    handler[3] = &unk_278613BF0;
    objc_copyWeak(&v131, buf);
    notify_register_dispatch("com.apple.language.changed", &self->_languageChangeNotifyToken, v123, handler);
    [(HDCacheDeleteCoordinator *)self->_cacheDeleteCoordinator activate];
    [(HDDaemonConnectionManager *)self->_connectionManager resume];
    objc_destroyWeak(&v131);
    objc_destroyWeak(buf);
  }

  v124 = *MEMORY[0x277D85DE8];
}

id __17__HDDaemon_start__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Sensitive Logging";
  v0 = HKShowSensitiveLogItems();
  v1 = @"Disabled";
  if (v0)
  {
    v1 = @"Enabled";
  }

  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __17__HDDaemon_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _localeOrLanguageChanged:0];
}

- (void)dealloc
{
  if (self)
  {
    hd_xpc_remove_event_stream_handlers();
  }

  deviceNameChangesToken = self->_deviceNameChangesToken;
  MGCancelNotifications();
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  notify_cancel(self->_languageChangeNotifyToken);
  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v5 removeObserver:self];

  if (self->_healthdStateHandler)
  {
    os_state_remove_handler();
  }

  v6.receiver = self;
  v6.super_class = HDDaemon;
  [(HDDaemon *)&v6 dealloc];
}

- (id)daemonExtensionsConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_daemonExtensionsByIdentifier allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HDDaemon_daemonExtensionsConformingToProtocol___block_invoke;
  v9[3] = &unk_27861B3E0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 hk_filter:v9];

  return v7;
}

- (void)invalidateAndWaitWithReason:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HDCloudSyncCoordinator *)self->_cloudSyncCoordinator invalidate];
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating (%{public}@).", buf, 0x16u);
  }

  [(HDDaemonConnectionManager *)self->_connectionManager invalidate];
  [(HDMaintenanceWorkCoordinator *)self->_maintenanceWorkCoordinator cancelAllOperations];
  [(HDProfileManager *)self->_profileManager invalidateAndWaitWithReason:v4];
  v6 = [(NSDictionary *)self->_daemonExtensionsByIdentifier allValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 invalidateAndWait];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)obliterateAndTerminateWithOptions:(unint64_t)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [(HDDaemon *)self profileManager];
  v10 = [v11 allProfileIdentifiers];
  [(HDDaemon *)self obliterateAndTerminateProfiles:v10 options:a3 reason:v9 completion:v8];
}

- (void)obliterateAndTerminateProfiles:(id)a3 options:(unint64_t)a4 reason:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"Obliteration"];
  self->_isTerminating = 1;
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v21 = v14;
    v22 = [v10 componentsJoinedByString:{@", "}];
    *buf = 138543874;
    v27 = v22;
    v28 = 2114;
    v29 = v11;
    v30 = 2048;
    v31 = a4;
    _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "*** OBLITERATING HEALTH DATA (%{public}@): %{public}@ (%ld)", buf, 0x20u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69__HDDaemon_obliterateAndTerminateProfiles_options_reason_completion___block_invoke;
  v25[3] = &unk_27861B408;
  v25[4] = self;
  v15 = [v10 hk_map:v25];
  v24 = v12;
  v23 = v11;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v15;
  HKDispatchAsyncOnGlobalConcurrentQueue();

  v20 = *MEMORY[0x277D85DE8];
}

id __69__HDDaemon_obliterateAndTerminateProfiles_options_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 104) profileForIdentifier:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to find profile %{public}@ during obliteration", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

void __69__HDDaemon_obliterateAndTerminateProfiles_options_reason_completion___block_invoke_364(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.ActivityMonitorApp", @"com.apple.DeepBreathing", @"com.apple.Fitness", @"com.apple.Health", @"com.apple.HeartRate", *MEMORY[0x277CCE528], @"com.apple.NanoHeartRhythm", @"com.apple.NanoMenstrualCycles", @"com.apple.NanoSleep.watchkitapp", @"com.apple.NanoOxygenSaturation.watchkitapp", @"com.apple.NanoHealthBalance", 0}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v5 = [*(v2 + 328) clientProcesses];
    v6 = [v5 countByEnumeratingWithState:&v84 objects:buf count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v85;
      do
      {
        v9 = 0;
        do
        {
          if (*v85 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v84 + 1) + 8 * v9) bundleIdentifier];
          v11 = v10;
          if (v10 && (![v10 hasPrefix:@"com.apple."] || objc_msgSend(v4, "containsObject:", v11)))
          {
            [v3 addObject:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v84 objects:buf count:16];
      }

      while (v7);
    }
  }

  else
  {
    v3 = 0;
  }

  _HKInitializeLogging();
  v12 = MEMORY[0x277CCC2B0];
  v13 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "*** PREPARING FOR OBLITERATION ***", buf, 2u);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v14 = *(a1 + 40);
  v15 = [v14 countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v81;
    do
    {
      v18 = 0;
      do
      {
        if (*v81 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v80 + 1) + 8 * v18++) prepareForObliterationWithReason:*(a1 + 48)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v16);
  }

  _HKInitializeLogging();
  v19 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "*** INVALIDATING PROFILES", buf, 2u);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v20 = *(a1 + 40);
  v21 = [v20 countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v77;
    do
    {
      v24 = 0;
      do
      {
        if (*v77 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v76 + 1) + 8 * v24++) invalidateAndWaitWithReason:@"OBLITERATION"];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v22);
  }

  _HKInitializeLogging();
  v25 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "*** INVALIDATING DAEMON EXTENSIONS", buf, 2u);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v26 = [*(*(a1 + 32) + 200) allValues];
  v27 = [v26 countByEnumeratingWithState:&v72 objects:v89 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v73;
    do
    {
      v30 = 0;
      do
      {
        if (*v73 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v72 + 1) + 8 * v30);
        if (objc_opt_respondsToSelector())
        {
          [v31 prepareForObliteration];
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v72 objects:v89 count:16];
    }

    while (v28);
  }

  _HKInitializeLogging();
  v32 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "*** OBLITERATING PROFILES", buf, 2u);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v33 = *(a1 + 40);
  v34 = [v33 countByEnumeratingWithState:&v68 objects:v88 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v69;
    do
    {
      v37 = 0;
      do
      {
        if (*v69 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v68 + 1) + 8 * v37++) obliterateWithOptions:*(a1 + 72) reason:*(a1 + 48)];
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v68 objects:v88 count:16];
    }

    while (v35);
  }

  _HKInitializeLogging();
  v38 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "*** OBLITERATING DAEMON OWNED DATA", buf, 2u);
  }

  v39 = *(a1 + 32);
  if (v39)
  {
    v40 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v41 = [v39 localContentURL];
    *&v84 = 0;
    v42 = [v40 removeItemAtURL:v41 error:&v84];
    v43 = v84;

    if ((v42 & 1) == 0)
    {
      _HKInitializeLogging();
      v44 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v43;
        _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "Failed to remove local content during obliteration: %{public}@", buf, 0xCu);
      }
    }
  }

  _HKInitializeLogging();
  v45 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "*** KILLING CLIENTS", buf, 2u);
  }

  v46 = *(a1 + 32);
  v47 = v3;
  v48 = v47;
  if (v46 && [v47 count])
  {
    _HKInitializeLogging();
    v49 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      v51 = [v48 count];
      *buf = 134217984;
      *&buf[4] = v51;
      _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_DEFAULT, "Terminating %lu clients in response to obliteration", buf, 0xCu);
    }

    v52 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:v48];
    v53 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Health database obliterated"];
    v54 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v52 context:v53];
    *&v84 = 0;
    v55 = [v54 execute:&v84];
    v56 = v84;
    _HKInitializeLogging();
    v57 = *v12;
    v58 = *v12;
    if (v55)
    {
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v48;
        _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "Did terminate clients (%{public}@) in response to obliteration", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v56;
      *&buf[12] = 2114;
      *&buf[14] = v48;
      _os_log_error_impl(&dword_228986000, v57, OS_LOG_TYPE_ERROR, "Failed to terminate clients in response to obliteration: %{public}@ (%{public}@)", buf, 0x16u);
    }
  }

  _HKInitializeLogging();
  v59 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "*** CLEARING USER DEFAULTS DOMAINS", buf, 2u);
  }

  if (*(a1 + 32))
  {
    v60 = MEMORY[0x277CBEBD0];
    v61 = *MEMORY[0x277CCE500];
    *buf = *MEMORY[0x277CCE228];
    *&buf[8] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:2];
    [v60 hk_deleteDomainsNamed:v62];
  }

  _HKInitializeLogging();
  v63 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "*** NOTIFYING PLUGINS", buf, 2u);
  }

  v64 = [*(a1 + 32) pluginManager];
  [v64 notifyPluginsOfDatabaseObliteration];

  v65 = *(a1 + 64);
  if (v65)
  {
    (*(v65 + 16))();
  }

  _HKInitializeLogging();
  v66 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "*** EXITING", buf, 2u);
  }

  [*(a1 + 32) terminateClean:0 reason:@"obliterating"];
  [*(a1 + 56) invalidate];

  v67 = *MEMORY[0x277D85DE8];
}

- (void)_terminationCleanup
{
  if (a1)
  {
    [*(a1 + 120) terminationCleanup];
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v1 synchronize];
  }
}

- (void)exitClean:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = "";
    if (v4)
    {
      v8 = " clean";
    }

    *buf = 136315394;
    v12 = v8;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Exiting%s: %{public}@", buf, 0x16u);
  }

  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__HDDaemon_exitClean_reason___block_invoke;
    block[3] = &unk_278613968;
    block[4] = self;
    if (exitClean_reason__onceToken != -1)
    {
      dispatch_once(&exitClean_reason__onceToken, block);
    }

    xpc_transaction_exit_clean();
  }

  else if ((atomic_exchange(&self->_hasCalledExit, 1u) & 1) == 0)
  {
    exit(0);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __29__HDDaemon_exitClean_reason___block_invoke(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
  v3 = exitClean_reason__timerSource;
  exitClean_reason__timerSource = v2;

  v4 = exitClean_reason__timerSource;
  v5 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __29__HDDaemon_exitClean_reason___block_invoke_2;
  handler[3] = &unk_278613968;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(exitClean_reason__timerSource, handler);
  dispatch_resume(exitClean_reason__timerSource);
}

uint64_t __29__HDDaemon_exitClean_reason___block_invoke_2(uint64_t a1)
{
  xpc_transaction_try_exit_clean();
  v2 = *(a1 + 32);

  return [v2 exitClean:0 reason:@"forcing as xpc failed to quiesce"];
}

void __32__HDDaemon__setUpSignalHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(HDDaemon *)WeakRetained _terminationCleanup];
    [v2 exitClean:0 reason:@"received SIGTERM"];
    WeakRetained = v2;
  }
}

- (NSObject)_setupSignal:(void *)a3 handler:
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = dispatch_source_create(MEMORY[0x277D85D30], a2, 0, *(a1 + 32));
  if (v6)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__HDDaemon__setupSignal_handler___block_invoke;
    handler[3] = &unk_278613658;
    v11 = v5;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    signal(a2, 1);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = a2;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Could not set up signal handler for %d", buf, 8u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

void __32__HDDaemon__setUpSignalHandlers__block_invoke_2()
{
  v0 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v0 logAllDiagnostics];
}

void __32__HDDaemon__setUpSignalHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"HDUSR2SignalNotification" object:v3];

    WeakRetained = v3;
  }
}

void __48__HDDaemon__setUpDarwinNotificationEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    if (MEMORY[0x22AAC9AB0](v4) == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86430]);
      if (string)
      {
        v6 = string;
        _HKInitializeLogging();
        v7 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v26 = v6;
          _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "Received notifyd notification %s", buf, 0xCu);
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [WeakRetained[25] allValues];
        v9 = [v8 countByEnumeratingWithState:&v19 objects:buf count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * v12);
            if (objc_opt_respondsToSelector() & 1) != 0 && ([v13 daemonDidReceiveNotification:v6])
            {
              goto LABEL_19;
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v19 objects:buf count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        if (!strcasecmp("com.apple.Preferences.ResetPrivacyWarningsNotification", v6))
        {
          [WeakRetained _resetPrivacySettings];
        }

        if (!strcasecmp("com.apple.springboard.homescreenunlocked", v6))
        {
          v14 = xpc_dictionary_get_uint64(v4, "_State") != 0;
          v23 = @"HDDaemonHomescreenUnlockedAtHomescreenKey";
          v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
          v24 = v15;
          v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

          v16 = [MEMORY[0x277CCAB98] defaultCenter];
          [v16 postNotificationName:@"HDDaemonHomescreenUnlockedNotification" object:WeakRetained userInfo:v8];

LABEL_19:
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __53__HDDaemon__setUpDistributedNotificationEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    if (MEMORY[0x22AAC9AB0](v4) == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86430]);
      if (string)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        _HKInitializeLogging();
        v7 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v6;
          _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Received distnoted notification %@", &buf, 0xCu);
        }

        if ([v6 hasPrefix:{@"com.apple.LaunchServices", WeakRetained}])
        {
          v8 = v4;
          v9 = v6;
          v10 = [v9 isEqualToString:@"com.apple.LaunchServices.applicationRegistered"];
          v11 = [v9 isEqualToString:@"com.apple.LaunchServices.applicationUnregistered"];
          if ((v10 & 1) != 0 || v11)
          {
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__HDDaemon__handleLaunchServicesEvent_name___block_invoke;
            block[3] = &unk_278613968;
            block[4] = WeakRetained;
            if (qword_280D67B78 != -1)
            {
              dispatch_once(&qword_280D67B78, block);
            }

            v12 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:WeakRetained activityName:@"AppInstallation"];
            v13 = qword_280D67B70;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v20 = __44__HDDaemon__handleLaunchServicesEvent_name___block_invoke_2;
            v21 = &unk_278617B08;
            v14 = v8;
            v26 = v10;
            v22 = v14;
            v23 = WeakRetained;
            v24 = v9;
            v25 = v12;
            v15 = v12;
            dispatch_async(v13, &buf);
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __44__HDDaemon__handleLaunchServicesEvent_name___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_280D67B70 = HKCreateSerialDispatchQueueWithQOSClass();

  return MEMORY[0x2821F96F8]();
}

void __44__HDDaemon__handleLaunchServicesEvent_name___block_invoke_2(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEAC0];
  v3 = xpc_dictionary_get_value(*(a1 + 32), "UserInfo");
  v4 = [v2 hd_dictionaryFromXPCObject:v3];

  v5 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v4 objectForKeyedSubscript:@"isPlaceholder"];
  v7 = [v6 BOOLValue];

  if (v5)
  {
    if (v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring LaunchServices notification for placeholder", &v20, 2u);
      }
    }

    else
    {
      if (*(a1 + 64))
      {
        v11 = &HDHealthDaemonApplicationsInstalledNotification;
      }

      else
      {
        v11 = &HDHealthDaemonApplicationsUninstalledNotification;
      }

      v12 = *v11;
      if (*(a1 + 64))
      {
        v13 = &HDHealthDaemonApplicationsInstalledBundleIdentifiersKey;
      }

      else
      {
        v13 = &HDHealthDaemonApplicationsUninstalledBundleIdentifiersKey;
      }

      v22 = *v13;
      v23[0] = v5;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v22;
      v16 = v12;
      v17 = [v14 dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      [v18 postNotificationName:v16 object:*(a1 + 40) userInfo:v17];
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v20 = 138412290;
      v21 = v10;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%@ notification missing bundle identifiers", &v20, 0xCu);
    }
  }

  [*(a1 + 56) invalidate];

  v19 = *MEMORY[0x277D85DE8];
}

void __37__HDDaemon__setupRapportEventHandler__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (MEMORY[0x22AAC9AB0]() == MEMORY[0x277D86468] && xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]) && xpc_dictionary_get_BOOL(xdict, "replyRequired"))
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }
  }
}

- (void)registerDaemonReadyObserver:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = v7;
  if (!v7)
  {
    queue = self->_queue;
  }

  v9 = queue;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HDDaemon_registerDaemonReadyObserver_queue___block_invoke;
  aBlock[3] = &unk_27861B498;
  aBlock[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  objc_copyWeak(&v18, &location);
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->_daemonReadyLock);
  if (self->_daemonReady)
  {
    ++self->_numberOfDaemonReadyObserversAfterReady;
    os_unfair_lock_unlock(&self->_daemonReadyLock);
    v12[2](v12);
  }

  else
  {
    daemonReadyBlocks = self->_daemonReadyBlocks;
    ++self->_numberOfDaemonReadyObserversBeforeReady;
    v14 = _Block_copy(v12);
    [(NSMutableArray *)daemonReadyBlocks addObject:v14];

    os_unfair_lock_unlock(&self->_daemonReadyLock);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __46__HDDaemon_registerDaemonReadyObserver_queue___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogDaemonInitialization();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogDaemonInitialization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      label = dispatch_queue_get_label(*(a1 + 48));
      *buf = 138543874;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      v17 = 2080;
      v18 = label;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "%{public}@: notify daemon ready for observer %{public}@ on queue %s", buf, 0x20u);
    }
  }

  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HDDaemon_registerDaemonReadyObserver_queue___block_invoke_476;
  v10[3] = &unk_278617620;
  objc_copyWeak(&v12, (a1 + 56));
  v11 = *(a1 + 40);
  dispatch_async(v8, v10);

  objc_destroyWeak(&v12);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __46__HDDaemon_registerDaemonReadyObserver_queue___block_invoke_476(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) daemonReady:WeakRetained];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)registerDaemonActivatedObserver:(id)a3 queue:(id)queue
{
  v6 = a3;
  v7 = self;
  v8 = v7;
  if (!queue)
  {
    queue = v7->_queue;
  }

  v9 = queue;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __50__HDDaemon_registerDaemonActivatedObserver_queue___block_invoke;
  v19 = &unk_278616D68;
  v20 = v8;
  v10 = v6;
  v21 = v10;
  v11 = v9;
  v22 = v11;
  v12 = v8;
  v23 = v12;
  v13 = _Block_copy(&v16);
  os_unfair_lock_lock(v12 + 34);
  if (v12[42]._os_unfair_lock_opaque)
  {
    os_unfair_lock_unlock(v12 + 34);
    v13[2](v13);
  }

  else
  {
    v14 = *&v12[44]._os_unfair_lock_opaque;
    v15 = _Block_copy(v13);
    [v14 addObject:{v15, v16, v17, v18, v19, v20, v21, v22}];

    os_unfair_lock_unlock(v12 + 34);
  }
}

void __50__HDDaemon_registerDaemonActivatedObserver_queue___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      label = dispatch_queue_get_label(*(a1 + 48));
      *buf = 138543874;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      v17 = 2080;
      v18 = label;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "%{public}@: notify daemon activated for observer %{public}@ on queue %s", buf, 0x20u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HDDaemon_registerDaemonActivatedObserver_queue___block_invoke_477;
  v10[3] = &unk_278613920;
  v8 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  dispatch_async(v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)registerProtectedResourceStoreProvider:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_protectedResourceStoreProvidersLock);
  protectedResourceStoreProviders = self->_protectedResourceStoreProviders;
  if (!protectedResourceStoreProviders)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v6 = self->_protectedResourceStoreProviders;
    self->_protectedResourceStoreProviders = v5;

    protectedResourceStoreProviders = self->_protectedResourceStoreProviders;
  }

  [(NSHashTable *)protectedResourceStoreProviders addObject:v7];
  os_unfair_lock_unlock(&self->_protectedResourceStoreProvidersLock);
}

- (void)unregisterProtectedResourceStoreProvider:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_protectedResourceStoreProvidersLock);
  [(NSHashTable *)self->_protectedResourceStoreProviders removeObject:v4];

  os_unfair_lock_unlock(&self->_protectedResourceStoreProvidersLock);
}

- (id)protectedResourceStoreProviders
{
  os_unfair_lock_lock(&self->_protectedResourceStoreProvidersLock);
  protectedResourceStoreProviders = self->_protectedResourceStoreProviders;
  if (protectedResourceStoreProviders)
  {
    v4 = [(NSHashTable *)protectedResourceStoreProviders allObjects];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  os_unfair_lock_unlock(&self->_protectedResourceStoreProvidersLock);

  return v4;
}

- (void)setDaemonTester:(id)a3
{
  obj = a3;
  os_unfair_lock_lock(&self->_daemonReadyLock);
  objc_storeWeak(&self->_daemonTester, obj);
  daemonReady = self->_daemonReady;
  os_unfair_lock_unlock(&self->_daemonReadyLock);
  if (daemonReady)
  {
    [obj daemonReadyComplete:self];
  }
}

- (void)performBlockWithPowerAssertionIdentifier:(id)a3 transactionName:(id)a4 powerAssertionInterval:(double)a5 block:(id)a6
{
  v18 = a3;
  v11 = a4;
  v12 = a6;
  if (v18)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:937 description:{@"Invalid parameter not satisfying: %@", @"transactionName != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:936 description:{@"Invalid parameter not satisfying: %@", @"powerAssertionIdentifier != nil"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:938 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

LABEL_4:
  v13 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:v11];
  v14 = [HDPowerAssertion powerAssertionWithIdentifier:v18 timeout:0 timeoutHandler:a5];
  v12[2](v12);
  [v14 invalidate];
  [v13 invalidate];
}

- (void)unregisterForLaunchNotification:(const char *)a3
{
  if (self)
  {
    xpc_set_event();
  }
}

- (void)registerForLaunchNotification:(const char *)a3
{
  if (self)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "Notification", a3);
    xpc_set_event();
  }
}

- (id)healthDirectorySizeInBytes
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(HDDaemon *)self healthDirectoryURL];
  v5 = *MEMORY[0x277CBE908];
  v35[0] = *MEMORY[0x277CBE908];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v7 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:v6 options:0 errorHandler:&__block_literal_global_491];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *v27;
    *&v10 = 138543618;
    v23 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v24 = 0;
        v25 = 0;
        v16 = [v15 getResourceValue:&v25 forKey:v5 error:{&v24, v23}];
        v17 = v25;
        v18 = v24;
        if (v16)
        {
          v12 += [v17 unsignedLongLongValue];
        }

        else
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v31 = v15;
            v32 = 2114;
            v33 = v18;
            _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Unable to determine file size for %{public}@: %{public}@", buf, 0x16u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __38__HDDaemon_healthDirectorySizeInBytes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Unable to enumerate %{public}@: %{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

void __41__HDDaemon__registerForDeviceNameChanges__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v1 = [WeakRetained profileManager];
    v2 = [v1 allProfileIdentifiers];

    v3 = [v2 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = 0;
      v7 = *v21;
      *&v4 = 138543618;
      v17 = v4;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [WeakRetained profileManager];
          v11 = [v10 profileForIdentifier:v9];

          if (v11)
          {
            v12 = [v11 sourceManager];
            v19 = v6;
            v13 = [v12 updateCurrentDeviceNameWithError:&v19];
            v14 = v19;

            if ((v13 & 1) == 0)
            {
              _HKInitializeLogging();
              v15 = *MEMORY[0x277CCC2B0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
              {
                *buf = v17;
                v25 = v9;
                v26 = 2114;
                v27 = v14;
                _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Current device source name update failed for profile with identifier %{public}@: %{public}@", buf, 0x16u);
              }
            }

            v6 = v14;
          }
        }

        v5 = [v2 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_resetPrivacySettings
{
  v31[2] = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "Resetting privacy settings", buf, 2u);
  }

  v4 = [(HDDaemon *)self primaryProfile];
  v5 = [v4 authorizationManager];
  [v5 resetAllAuthorizationRecordsWithCompletion:0];

  v6 = objc_alloc(MEMORY[0x277D2BA58]);
  v7 = *MEMORY[0x277CCE500];
  v8 = [v6 initWithDomain:*MEMORY[0x277CCE500]];
  v9 = MEMORY[0x277CBEB98];
  v10 = *MEMORY[0x277CCE510];
  v31[0] = *MEMORY[0x277CCE518];
  v31[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v12 = [v9 setWithArray:v11];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v8 removeObjectForKey:{*(*(&v22 + 1) + 8 * i), v22}];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v18 = [v8 synchronize];
  if (v18)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v8;
      v28 = 2114;
      v29 = v18;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to synchronize %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277D2BA60]);
    [v20 synchronizeNanoDomain:v7 keys:v13];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (NSURL)localContentURL
{
  v2 = [(HDDaemon *)self healthDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Local" isDirectory:1];

  return v3;
}

- (id)createApplicationStateMonitor
{
  v2 = objc_alloc_init(MEMORY[0x277CEEE90]);

  return v2;
}

- (id)createRBSProcessStateProvider
{
  v2 = objc_alloc_init(HDRBSProcessStateProvider);

  return v2;
}

- (id)diagnosticDescription
{
  os_unfair_lock_lock(&self->_daemonReadyLock);
  numberOfDaemonReadyObserversBeforeReady = self->_numberOfDaemonReadyObserversBeforeReady;
  numberOfDaemonReadyObserversAfterReady = self->_numberOfDaemonReadyObserversAfterReady;
  os_unfair_lock_unlock(&self->_daemonReadyLock);
  return [MEMORY[0x277CCACA8] stringWithFormat:@"DaemonReadyObservers: %ld (%ld before ready, %ld after ready)", numberOfDaemonReadyObserversAfterReady + numberOfDaemonReadyObserversBeforeReady, numberOfDaemonReadyObserversBeforeReady, numberOfDaemonReadyObserversAfterReady];
}

- (id)_newConnectionManager
{
  v3 = [HDDaemonConnectionManager alloc];
  v4 = *MEMORY[0x277CCC1D8];

  return [(HDDaemonConnectionManager *)v3 initWithMachServiceName:v4 daemon:self];
}

- (id)_newDatabasePruningCoordinator
{
  v3 = [HDDatabasePruningCoordinator alloc];

  return [(HDDatabasePruningCoordinator *)v3 initWithDaemon:self];
}

- (id)_newCloudSyncCoordinator
{
  v3 = [HDCloudSyncCoordinator alloc];

  return [(HDCloudSyncCoordinator *)v3 initWithDaemon:self];
}

- (id)_newAnalyticsSubmissionCoordinator
{
  if (!self->_primaryProfile)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1169 description:{@"Invalid parameter not satisfying: %@", @"_primaryProfile"}];
  }

  v3 = [HDAnalyticsSubmissionCoordinator alloc];
  primaryProfile = self->_primaryProfile;

  return [(HDAnalyticsSubmissionCoordinator *)v3 initWithProfile:primaryProfile];
}

- (id)_newAutoBugCaptureReporter
{
  v3 = [HDAutoBugCaptureReporter alloc];

  return [(HDAutoBugCaptureReporter *)v3 initWithDaemon:self];
}

- (id)_newNotificationInstructionSyncService
{
  v3 = [HDNotificationInstructionSyncService alloc];

  return [(HDNotificationInstructionSyncService *)v3 initWithDaemon:self];
}

- (id)_newOTAFeatureAvailabilityManager
{
  v3 = [HDOTAFeatureAvailabilityManager alloc];

  return [(HDOTAFeatureAvailabilityManager *)v3 initWithDaemon:self];
}

- (id)_newPrimaryProfile
{
  if (!self->_healthDirectoryPath)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDDaemon.m" lineNumber:1194 description:{@"Invalid parameter not satisfying: %@", @"_healthDirectoryPath"}];
  }

  v3 = [HDPrimaryProfile alloc];
  healthDirectoryPath = self->_healthDirectoryPath;
  medicalIDDirectoryPath = self->_medicalIDDirectoryPath;

  return [(HDPrimaryProfile *)v3 initWithDirectoryPath:healthDirectoryPath medicalIDDirectoryPath:medicalIDDirectoryPath daemon:self];
}

- (id)_newProcessStateManager
{
  v3 = [HDProcessStateManager alloc];

  return [(HDProcessStateManager *)v3 initWithApplicationStateMonitorProvider:self];
}

- (id)_newPluginManager
{
  v3 = [HDPluginManager alloc];

  return [(HDPluginManager *)v3 initWithDaemon:self];
}

- (id)_newProfileManager
{
  v3 = [HDProfileManager alloc];

  return [(HDProfileManager *)v3 initWithDaemon:self];
}

- (id)_newMaintenanceWorkCoordinator
{
  v3 = [HDMaintenanceWorkCoordinator alloc];
  analyticsSubmissionCoordinator = self->_analyticsSubmissionCoordinator;
  contentProtectionManager = self->_contentProtectionManager;

  return [(HDMaintenanceWorkCoordinator *)v3 initWithAnalyticsCoordinator:analyticsSubmissionCoordinator contentProtectionManager:contentProtectionManager];
}

- (id)_newTaskServerRegistry
{
  v3 = [HDTaskServerRegistry alloc];

  return [(HDTaskServerRegistry *)v3 initWithDaemon:self];
}

- (void)applicationStateDidChange:(id)a3
{
  v30[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CCE340];
  v30[0] = @"com.apple.ActivityMonitorApp";
  v30[1] = v6;
  v30[2] = *MEMORY[0x277CCE528];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v8 = [v5 setWithArray:v7];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __38__HDDaemon_applicationStateDidChange___block_invoke;
  v27[3] = &unk_27861B508;
  v9 = v8;
  v28 = v9;
  v10 = [v4 hk_filter:v27];
  if ([v10 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v22 = self;
      v14 = *v24;
      v15 = &HDHealthDaemonFitnessAppsRestrictedNotification;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v23 + 1) + 8 * v16) appState];
        v18 = [v17 isRestricted];

        if (v18)
        {
          break;
        }

        if (v13 == ++v16)
        {
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          v15 = &HDHealthDaemonFitnessAppsAllowedNotification;
          break;
        }
      }

      self = v22;
    }

    else
    {
      v15 = &HDHealthDaemonFitnessAppsAllowedNotification;
    }

    v19 = *v15;
    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 postNotificationName:v19 object:self];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __38__HDDaemon_applicationStateDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end