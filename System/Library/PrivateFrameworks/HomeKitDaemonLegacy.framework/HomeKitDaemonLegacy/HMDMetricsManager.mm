@interface HMDMetricsManager
+ (HMMLogEventSubmitting)sharedLogEventSubmitter;
+ (NSUUID)namespaceUUID;
+ (id)initSwiftExtensionsWithLogEventSubmitter:(id)a3;
+ (id)logCategory;
+ (id)makeDailySchedulerWithSwiftData:(id)a3;
+ (void)submitMinimalCoreAnalyticsEvent:(id)a3;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isDemoModeConfigured;
- (BOOL)updateCachedWidgetCount;
- (HMDConfigurationLogEvent)cachedConfiguration;
- (HMDDevice)currentDevice;
- (HMDEWSLogging)ewsLogger;
- (HMDHH2AutoMigrationEligibilityChecker)hh2AutoMigrationEligibilityChecker;
- (HMDHomeManager)homeManager;
- (HMDMetricsManager)initWithMessageDispatcher:(id)a3 accountManager:(id)a4 notificationSettingsProvider:(id)a5;
- (HMDMetricsManager)initWithMessageDispatcher:(id)a3 accountManager:(id)a4 notificationSettingsProvider:(id)a5 logEventDispatcher:(id)a6 dailyScheduler:(id)a7 dateProvider:(id)a8 uptimeProvider:(id)a9 legacyCountersManager:(id)a10 flagsManager:(id)a11 ewsLogger:(id)a12 deviceStateManager:(id)a13 networkObserver:(id)a14 coreAnalyticsTagObserver:(id)a15 backgroundLoggingTimer:(id)a16 radarInitiator:(id)a17 notificationCenter:(id)a18 userDefaults:(id)a19 currentSoftwareVersion:(id)a20 swiftData:(id)a21;
- (NSArray)configurationObservers;
- (NSArray)devicesOnCurrentAccount;
- (NSArray)homeDataSources;
- (NSError)ephemeralContainNameRequiredError;
- (NSError)notEnabledError;
- (NSUUID)homeUUIDForCurrentResidentDevice;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)accessoryForIdentifier:(id)a3;
- (id)cachedHomeConfigurationForHomeUUID:(id)a3;
- (id)configureHouseholdLogEventFactories;
- (id)configureSwiftObservers;
- (id)homeKitAggregationAnalysisLogEventForDate:(id)a3;
- (id)messageDestination;
- (void)_configureManagers;
- (void)_configureObservers;
- (void)_handleFetchEventCounters:(id)a3;
- (void)_handleResetEventCounters:(id)a3;
- (void)_registerForMessages;
- (void)addConfigurationChangedObserver:(id)a3;
- (void)addContributor:(id)a3 toListOfAggregationAnalysisEventContributing:(id)a4;
- (void)addRateTrigger:(id)a3 forEventName:(id)a4 requestGroup:(id)a5 atThreshold:(unint64_t)a6 windowSize:(unint64_t)a7;
- (void)addThresholdTrigger:(id)a3 forEventName:(id)a4 requestGroup:(id)a5 atThreshold:(unint64_t)a6;
- (void)configureHAPMetricsDispatcher:(id)a3;
- (void)handleAddEphemeralContainer:(id)a3;
- (void)handleDeactivateEphemeralContainer:(id)a3;
- (void)handleDeleteCounters:(id)a3;
- (void)handleDeleteEphemeralContainer:(id)a3;
- (void)handleListEphemeralContainers:(id)a3;
- (void)handleLogEventDailySchedulerSubmitRequest:(id)a3;
- (void)handleReadCounters:(id)a3;
- (void)handleSaveCounters:(id)a3;
- (void)handleStartupEphemeralContainer:(id)a3;
- (void)homeKitConfigurationChanged;
- (void)logEventAggregationAnalysisLogEvents;
- (void)notifyConfigurationObserversWithUpdatedEvent:(id)a3;
- (void)registerDailyTaskRunnerBookends;
- (void)registerTaggedLoggingProcessors;
- (void)resetHomeKitAggregationAnalysisContext;
- (void)runDailyTask;
- (void)saveCounters;
- (void)start;
- (void)startAnalyzers;
- (void)submitCurrentUserSettings;
- (void)submitDailyAggregationAnalysisEvents;
- (void)submitHAPMetricsCounters;
- (void)timerDidFire:(id)a3;
- (void)updateCachedConfiguration;
- (void)waitToCompleteCurrentlyQueuedTasks;
@end

@implementation HMDMetricsManager

+ (id)initSwiftExtensionsWithLogEventSubmitter:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_253275CD0();
  swift_unknownObjectRelease();

  return v3;
}

+ (id)makeDailySchedulerWithSwiftData:(id)a3
{
  _s9SwiftDataCMa();
  v3 = swift_dynamicCastClassUnconditional();
  sub_2532074E4(v3 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_dailyScheduler, v8);
  v4 = objc_allocWithZone(sub_253CD05D8());
  swift_unknownObjectRetain();
  v5 = sub_253CD05C8();
  v6 = [objc_allocWithZone(MEMORY[0x277D17DA8]) initWithDelegate_];
  swift_unknownObjectRelease();

  return v6;
}

- (void)registerDailyTaskRunnerBookends
{
  v2 = self;
  sub_25326F294();
}

- (id)configureSwiftObservers
{
  v2 = self;
  sub_2532700A0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3C08, &qword_253D4AC10);
  v3 = sub_253CD0A38();

  return v3;
}

- (id)configureHouseholdLogEventFactories
{
  sub_253218B5C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3C00, &unk_253D4AC00);
  v2 = sub_253CD08B8();

  return v2;
}

- (NSError)notEnabledError
{
  v2 = objc_opt_self();
  v3 = sub_253CD0938();
  v4 = [v2 hmfErrorWithCode:5 reason:v3];

  v5 = sub_253CCFE08();

  return v5;
}

- (NSError)ephemeralContainNameRequiredError
{
  v2 = objc_opt_self();
  v3 = sub_253CD0938();
  v4 = [v2 hmfErrorWithCode:3 reason:v3];

  v5 = sub_253CCFE08();

  return v5;
}

- (void)handleLogEventDailySchedulerSubmitRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(HMDMetricsManager *)v5 internalSwiftData];
  _s9SwiftDataCMa();
  v7 = swift_dynamicCastClassUnconditional();
  sub_2532074E4(v7 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_dailyScheduler, v8);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  sub_253CD05E8();
  __swift_destroy_boxed_opaque_existential_0(v8);
  [v4 respondWithSuccess];
}

- (void)handleReadCounters:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2532705E8(v4);
}

- (void)handleSaveCounters:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_253270FE8(v4);
}

- (void)handleDeleteCounters:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_253271178(v4);
}

- (void)handleAddEphemeralContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25327185C(v4, MEMORY[0x277D17CE0]);
}

- (void)handleDeactivateEphemeralContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25327185C(v4, MEMORY[0x277D17CF0]);
}

- (void)handleDeleteEphemeralContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25327185C(v4, MEMORY[0x277D17CE8]);
}

- (void)handleStartupEphemeralContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_253271ACC(v4);
}

- (void)handleListEphemeralContainers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_253271CE8(v4);
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (HMDEWSLogging)ewsLogger
{
  WeakRetained = objc_loadWeakRetained(&self->_ewsLogger);

  return WeakRetained;
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  v2 = [(HMDMetricsManager *)self homeManager];
  v3 = [v2 homes];
  v4 = [v3 na_any:&__block_literal_global_268_80461];

  return v4;
}

- (HMDHH2AutoMigrationEligibilityChecker)hh2AutoMigrationEligibilityChecker
{
  v2 = [(HMDMetricsManager *)self homeManager];
  v3 = [v2 hh2AutoMigrationEligibilityChecker];

  return v3;
}

- (NSUUID)homeUUIDForCurrentResidentDevice
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [(HMDMetricsManager *)self homeManager];
  v3 = [v2 homes];

  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 residentDeviceManager];
        v10 = [v9 residentDevices];

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v18 + 1) + 8 * j) isCurrentDevice])
              {
                v15 = [v8 uuid];

                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v15 = 0;
    }

    while (v5);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSArray)homeDataSources
{
  v2 = [(HMDMetricsManager *)self homeManager];
  v3 = [v2 homes];

  return v3;
}

- (NSArray)devicesOnCurrentAccount
{
  v2 = [(HMDMetricsManager *)self accountManager];
  v3 = [v2 account];
  v4 = [v3 devices];

  return v4;
}

- (HMDDevice)currentDevice
{
  v2 = [(HMDMetricsManager *)self accountManager];
  v3 = [v2 device];

  return v3;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  v2 = [(HMDMetricsManager *)self logEventDispatcher];
  v3 = [v2 clientQueue];

  return v3;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDMetricsManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  v2 = objc_opt_class();

  return [v2 namespaceUUID];
}

- (void)saveCounters
{
  v2 = [(HMDMetricsManager *)self legacyCountersManager];
  [v2 forceSave];
}

- (void)waitToCompleteCurrentlyQueuedTasks
{
  v3 = [(HMDMetricsManager *)self logEventDispatcher];
  v2 = [v3 clientQueue];
  dispatch_sync(v2, &__block_literal_global_264);
}

- (void)_handleResetEventCounters:(id)a3
{
  v5 = a3;
  v4 = [(HMDMetricsManager *)self legacyCountersManager];
  [v4 resetAllEventCounters];

  [v5 respondWithSuccess];
}

- (void)_handleFetchEventCounters:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMetricsManager *)self legacyCountersManager];
  v6 = [v5 fetchAllEventCounters];

  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __47__HMDMetricsManager__handleFetchEventCounters___block_invoke;
  v14 = &unk_279729148;
  v15 = v7;
  v8 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:&v11];
  v16 = @"countersManager";
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:{1, v11, v12, v13, v14}];
  [v4 respondWithPayload:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __47__HMDMetricsManager__handleFetchEventCounters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 description];
  [v4 setObject:v5 forKey:v6];
}

- (void)addRateTrigger:(id)a3 forEventName:(id)a4 requestGroup:(id)a5 atThreshold:(unint64_t)a6 windowSize:(unint64_t)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v18 = [(HMDMetricsManager *)self legacyCountersManager];
  v15 = [HMDCounterRateLoggingTrigger alloc];
  v16 = [(HMDMetricsManager *)self ewsLogger];
  v17 = [(HMDCounterRateLoggingTrigger *)v15 initWithThreshold:a6 windowSize:a7 counterName:v14 ewsLogger:v16];

  [v18 addObserver:v17 forEventName:v13 requestGroup:v12];
}

- (void)addThresholdTrigger:(id)a3 forEventName:(id)a4 requestGroup:(id)a5 atThreshold:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v16 = [(HMDMetricsManager *)self legacyCountersManager];
  v13 = [HMDCounterThresholdLoggingTrigger alloc];
  v14 = [(HMDMetricsManager *)self ewsLogger];
  v15 = [(HMDCounterThresholdLoggingTrigger *)v13 initWithThreshold:a6 counterName:v12 ewsLogger:v14];

  [v16 addObserver:v15 forEventName:v11 requestGroup:v10];
}

- (void)startAnalyzers
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDMetricsManager *)self logEventDispatcher];
  v4 = [(HMDMetricsManager *)self processMemoryEventsAnalyzer];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [v3 addObserver:v4 forEventClasses:v5];

  v6 = [(HMDMetricsManager *)self logEventDispatcher];
  v7 = [(HMDMetricsManager *)self userActivityEventsAnalyzer];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  v27[4] = objc_opt_class();
  v27[5] = objc_opt_class();
  v27[6] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];
  [v6 addObserver:v7 forEventClasses:v8];

  v9 = [(HMDMetricsManager *)self logEventDispatcher];
  v10 = [(HMDMetricsManager *)self hapEventsAnalyzer];
  v26 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  [v9 addObserver:v10 forEventClasses:v11];

  v12 = [(HMDMetricsManager *)self logEventDispatcher];
  v13 = [(HMDMetricsManager *)self firmwareUpdateEventsAnalyzer];
  v25 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v12 addObserver:v13 forEventClasses:v14];

  v15 = [(HMDMetricsManager *)self logEventDispatcher];
  v16 = [(HMDMetricsManager *)self reachabilityEventsAnalyzer];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  [v15 addObserver:v16 forEventClasses:v17];

  if (isInternalBuild())
  {
    v18 = [(HMDMetricsManager *)self eventCountingAnalyzer];

    if (v18)
    {
      v19 = [(HMDMetricsManager *)self logEventDispatcher];
      v20 = [(HMDMetricsManager *)self eventCountingAnalyzer];
      [v19 addObserver:v20 forProtocol:&unk_28662C538];
    }
  }

  v21 = [(HMDMetricsManager *)self logEventDispatcher];
  v22 = [(HMDMetricsManager *)self widgetTimelineRefresherEventsAnalyzer];
  [v21 addObserver:v22 forEventClass:objc_opt_class()];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerTaggedLoggingProcessors
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D17DF0];
  v7[0] = *MEMORY[0x277D17A78];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HMDMetricsManager_registerTaggedLoggingProcessors__block_invoke;
  v6[3] = &unk_279729120;
  v6[4] = self;
  [v3 addObserverForStartTags:v4 usingCreatorBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

HMDMatterThirdPartyPairingTagProcessor *__52__HMDMetricsManager_registerTaggedLoggingProcessors__block_invoke(uint64_t a1)
{
  v2 = [HMDMatterThirdPartyPairingTagProcessor alloc];
  v3 = [*(a1 + 32) logEventSubmitter];
  v4 = [(HMDMatterThirdPartyPairingTagProcessor *)v2 initWithSubmitter:v3];

  return v4;
}

- (BOOL)isDemoModeConfigured
{
  v2 = [(HMDMetricsManager *)self homeManager];
  v3 = [v2 demoFinalized];

  return v3;
}

- (BOOL)updateCachedWidgetCount
{
  v3 = [(HMDMetricsManager *)self homeManager];
  v4 = [v3 widgetConfigurationReader];
  v5 = [v4 homeWidgetsEnabledCount];

  os_unfair_lock_lock_with_options();
  if (v5 < 0 || v5 == self->_configuredWidgetsCount)
  {
    v6 = 0;
  }

  else
  {
    self->_configuredWidgetsCount = v5;
    v6 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (id)accessoryForIdentifier:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(HMDMetricsManager *)self homeManager];
  v6 = [v5 homes];

  v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v7 = *v28;
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v9 accessories];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              v16 = [v15 identifier];
              v17 = [v16 isEqual:v4];

              if (v17)
              {
                v18 = v15;

                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v21;
      }

      v18 = 0;
      v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)cachedHomeConfigurationForHomeUUID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HMDMetricsManager *)self cachedConfiguration];
  v6 = [v5 homeConfigurations];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 homeUUID];
        v12 = [v11 hmf_isEqualToUUID:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDConfigurationLogEvent)cachedConfiguration
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cachedConfiguration;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)notifyConfigurationObserversWithUpdatedEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HMDMetricsManager *)self configurationObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCachedConfiguration
{
  v3 = +[HMDHAPMetadata getSharedInstance];
  v4 = [v3 version];
  v5 = [v4 unsignedIntegerValue];

  v6 = [HMDConfigurationLogEvent alloc];
  v7 = [(HMDMetricsManager *)self homeManager];
  v8 = [(HMDConfigurationLogEvent *)v6 initWithHomeManager:v7 widgetDataSource:self metadataVersion:v5];

  os_unfair_lock_lock_with_options();
  cachedConfiguration = self->_cachedConfiguration;
  self->_cachedConfiguration = v8;
  v10 = v8;

  os_unfair_lock_unlock(&self->_lock);
  [(HMDMetricsManager *)self notifyConfigurationObserversWithUpdatedEvent:v10];
}

- (void)homeKitConfigurationChanged
{
  v3 = [(HMDMetricsManager *)self homeManager];
  if (v3)
  {
    v4 = [(HMDMetricsManager *)self processLaunchEventsAnalyzer];
    [v4 homeKitConfigurationChangedWithHomeManager:v3];

    v5 = [(HMDMetricsManager *)self logEventDispatcher];
    v6 = [v5 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__HMDMetricsManager_homeKitConfigurationChanged__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

void __48__HMDMetricsManager_homeKitConfigurationChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedConfiguration];

  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 updateCachedConfiguration];
  }

  else
  {
    [v3 updateCachedWidgetCount];
    [*(a1 + 32) updateCachedConfiguration];
    v5 = [*(a1 + 32) logEventDispatcher];
    v4 = [*(a1 + 32) cachedConfiguration];
    [v5 submitLogEvent:v4];
  }
}

- (NSArray)configurationObservers
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_configurationObservers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addConfigurationChangedObserver:(id)a3
{
  aBlock = a3;
  os_unfair_lock_lock_with_options();
  configurationObservers = self->_configurationObservers;
  v5 = _Block_copy(aBlock);
  [(NSMutableArray *)configurationObservers addObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)submitHAPMetricsCounters
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HMDHAPMetricsLogEvent);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = self;
  v4 = [(HMDMetricsManager *)self homeManager];
  v5 = [v4 homes];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v11 = [v10 hapAccessories];
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v24 + 1) + 8 * j);
              v17 = [v16 identifier];
              v18 = [v16 matchingHAPAccessoryWithServerIdentifier:v17];

              v19 = [v18 server];
              if (v19)
              {
                [(HMDHAPMetricsLogEvent *)v3 updateWithHAPAccessoryServer:v19];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v20 = [(HMDMetricsManager *)v22 logEventDispatcher];
  [v20 submitLogEvent:v3];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logEventAggregationAnalysisLogEvents
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMetricsManager *)self dateProvider];
  v4 = [v3 startOfCurrentDay];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDMetricsManager *)v6 homeKitAggregationAnalysisLogEventForDate:v4];
    v10 = [v9 description];
    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Current state of aggregated event counts since last metric submission (reset every 24 hrs): %{public}@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = objc_autoreleasePoolPush();
  v12 = v6;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDMetricsManager *)v12 errorEventsAnalyzer];
    v16 = [v15 errorEventsAnalyzedSummaryForDate:v4];
    v18 = 138543618;
    v19 = v14;
    v20 = 2114;
    v21 = v16;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Current state of aggregated error counts since last metric submission (reset every 24 hrs): %{public}@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  [(HMDMetricsManager *)self logEventAggregationAnalysisLogEvents];

  [(HMDMetricsManager *)self submitHAPMetricsCounters];
}

- (void)resetHomeKitAggregationAnalysisContext
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDMetricsManager *)self aggregationAnalysisEventContributingAnalyzers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetAggregationAnalysisContext];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)homeKitAggregationAnalysisLogEventForDate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(HMDAggregationAnalysisLogEvent);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(HMDMetricsManager *)self aggregationAnalysisEventContributingAnalyzers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) populateAggregationAnalysisLogEvent:v5 forDate:v4];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)submitDailyAggregationAnalysisEvents
{
  v3 = [(HMDMetricsManager *)self logEventDispatcher];
  v4 = [v3 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDMetricsManager_submitDailyAggregationAnalysisEvents__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __57__HMDMetricsManager_submitDailyAggregationAnalysisEvents__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dateProvider];
  v10 = [v2 startOfDayByAddingDayCount:-1];

  v3 = [*(a1 + 32) homeKitAggregationAnalysisLogEventForDate:v10];
  v4 = [*(a1 + 32) cloudSyncLogEventsAnalyzer];
  v5 = [v4 cloudSyncAnalysisResultForDate:v10];

  [*(a1 + 32) resetHomeKitAggregationAnalysisContext];
  v6 = [*(a1 + 32) cloudSyncLogEventsAnalyzer];
  [v6 resetDataSource];

  v7 = [*(a1 + 32) legacyCountersManager];
  [v7 forceSave];

  v8 = [*(a1 + 32) logEventDispatcher];
  [v8 submitLogEvent:v3];

  v9 = [*(a1 + 32) logEventDispatcher];
  [v9 submitLogEvent:v5];
}

- (void)submitCurrentUserSettings
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(HMDMetricsManager *)self homeManager];
  v4 = [v3 homes];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [HMDUserSettingsPerHomeLogEvent alloc];
        v11 = [v9 currentUser];
        v12 = [(HMDUserSettingsPerHomeLogEvent *)v10 initWithUser:v11];

        v13 = [(HMDMetricsManager *)self logEventDispatcher];
        [v13 submitLogEvent:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)runDailyTask
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v4 = [v3 productVariant];

  if (v4 == 3)
  {
    v5 = [MEMORY[0x277D0F910] systemInfo];
    v6 = [v5 serialNumber];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v10;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[CA] Serial Number: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  if ([(HMDMetricsManager *)self updateCachedWidgetCount])
  {
    [(HMDMetricsManager *)self homeKitConfigurationChanged];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = [(HMDMetricsManager *)self cachedConfiguration];
  v12 = [v11 homeConfigurations];

  v13 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      v16 = 0;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v39 + 1) + 8 * v16);
        v18 = [(HMDMetricsManager *)self logEventDispatcher];
        [v18 submitLogEvent:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v14);
  }

  v19 = [(HMDMetricsManager *)self logEventDispatcher];
  v20 = [(HMDMetricsManager *)self cachedConfiguration];
  [v19 submitLogEvent:v20];

  [(HMDMetricsManager *)self submitCurrentUserSettings];
  v21 = [HMDCameraConfigurationsLogEvent alloc];
  v22 = MEMORY[0x277CBEA60];
  v23 = [(HMDMetricsManager *)self homeManager];
  v24 = [v23 homes];
  v25 = [v22 arrayWithArray:v24];
  v26 = [(HMDCameraConfigurationsLogEvent *)v21 initWithHomes:v25];

  v27 = [(HMDMetricsManager *)self logEventDispatcher];
  [v27 submitLogEvent:v26];

  v28 = objc_alloc_init(HMDWatchConnectivityLogEvent);
  v29 = [(HMDMetricsManager *)self logEventDispatcher];
  [v29 submitLogEvent:v28];

  v30 = [(HMDMetricsManager *)self messagingEventsAnalyzer];
  [v30 submitDailyMessageEvents];

  [(HMDMetricsManager *)self submitDailyAggregationAnalysisEvents];
  v31 = [(HMDMetricsManager *)self logEventSubmitter];
  v32 = [[HMDUnexpectedNotificationLogEvent alloc] initWithCount:0];
  [v31 submitLogEvent:v32];

  v33 = [(HMDMetricsManager *)self ewsLogger];
  [v33 submitEventWithName:@"Daily heartbeat" serviceName:@"EWS Heartbeat" uploadImmediately:0 payload:MEMORY[0x277CBEC10]];

  v34 = [(HMDMetricsManager *)self dateProvider];
  v35 = [v34 startOfDayByAddingDayCount:-7];

  v36 = [(HMDMetricsManager *)self dateProvider];
  v37 = [v36 startOfDayByAddingDayCount:1];

  [(HMDMetricsManager *)self deletePartitionsBeforeDate:v35];
  [(HMDMetricsManager *)self deletePartitionsAfterDate:v37];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if ([(HMDMetricsManager *)self hasStarted])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Metrics collection already started", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    os_unfair_lock_unlock(&self->_lock);
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(HMDMetricsManager *)self setHasStarted:1];
    os_unfair_lock_unlock(&self->_lock);
    [(HMDMetricsManager *)self _registerForMessages];
    v8 = [(HMDMetricsManager *)self deviceStateManager];
    [v8 configure];

    v9 = [(HMDMetricsManager *)self logEventDispatcher];
    v10 = [(HMDMetricsManager *)self coreAnalyticsObserver];
    [v9 addObserver:v10 forProtocol:&unk_28662E450];

    [(HMDMetricsManager *)self registerTaggedLoggingProcessors];
    v11 = [(HMDMetricsManager *)self diagnosticReporterLogObserver];
    [v11 start];

    v12 = [(HMDMetricsManager *)self powerLogObserver];
    [v12 start];

    v13 = [(HMDMetricsManager *)self coreAnalyticsTagObserver];
    [v13 configure];

    [(HMDMetricsManager *)self startAnalyzers];
    [(HMDMetricsManager *)self registerDailyTaskRunnerBookends];
    v14 = [(HMDMetricsManager *)self dailyScheduler];
    [v14 registerDailyTaskRunner:self];

    os_unfair_lock_lock_with_options();
    v15 = bufferedSubmitter;
    v16 = [(HMDMetricsManager *)self logEventDispatcher];
    [v15 processLogEventsWithSubmitter:v16];

    v17 = bufferedSubmitter;
    bufferedSubmitter = 0;

    v18 = [(HMDMetricsManager *)self logEventDispatcher];
    v19 = sharedDispatcher;
    sharedDispatcher = v18;

    v20 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&sharedSubmitterLock);
  }
}

- (void)configureHAPMetricsDispatcher:(id)a3
{
  v4 = a3;
  v5 = [(HMDMetricsManager *)self logEventDispatcher];
  [v4 setLogDispatcher:v5];
}

- (void)_registerForMessages
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v4 = [v3 productVariant];

  if (v4 == 3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for homeutil messages", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDMetricsManager *)v6 messageDispatcher];
    v10 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v53 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    [v9 registerForMessage:@"readCounters" receiver:v6 policies:v11 selector:sel_handleReadCounters_];

    v12 = [(HMDMetricsManager *)v6 messageDispatcher];
    v13 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v52 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    [v12 registerForMessage:@"saveCounters" receiver:v6 policies:v14 selector:sel_handleSaveCounters_];

    v15 = [(HMDMetricsManager *)v6 messageDispatcher];
    v16 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v51 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [v15 registerForMessage:@"deleteCounters" receiver:v6 policies:v17 selector:sel_handleDeleteCounters_];

    v18 = [(HMDMetricsManager *)v6 messageDispatcher];
    v19 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v50 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    [v18 registerForMessage:@"addEphemeralContainer" receiver:v6 policies:v20 selector:sel_handleAddEphemeralContainer_];

    v21 = [(HMDMetricsManager *)v6 messageDispatcher];
    v22 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v49 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [v21 registerForMessage:@"deactivateEphemeralContainer" receiver:v6 policies:v23 selector:sel_handleDeactivateEphemeralContainer_];

    v24 = [(HMDMetricsManager *)v6 messageDispatcher];
    v25 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v48 = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v24 registerForMessage:@"deleteEphemeralContainer" receiver:v6 policies:v26 selector:sel_handleDeleteEphemeralContainer_];

    v27 = [(HMDMetricsManager *)v6 messageDispatcher];
    v28 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v47 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    [v27 registerForMessage:@"startupEphemeralContainer" receiver:v6 policies:v29 selector:sel_handleStartupEphemeralContainer_];

    v30 = [(HMDMetricsManager *)v6 messageDispatcher];
    v31 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v46 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    [v30 registerForMessage:@"listEphemeralContainers" receiver:v6 policies:v32 selector:sel_handleListEphemeralContainers_];

    v33 = [(HMDMetricsManager *)v6 messageDispatcher];
    v34 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v45 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    [v33 registerForMessage:@"fetchEventCounters" receiver:v6 policies:v35 selector:sel__handleFetchEventCounters_];

    v36 = [(HMDMetricsManager *)v6 messageDispatcher];
    v37 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v44 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [v36 registerForMessage:@"resetEventCounters" receiver:v6 policies:v38 selector:sel__handleResetEventCounters_];

    v39 = [(HMDMetricsManager *)v6 messageDispatcher];
    v40 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v43 = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    [v39 registerForMessage:@"logEventDailySchedulerRunRegisteredBlocks" receiver:v6 policies:v41 selector:sel_handleLogEventDailySchedulerSubmitRequest_];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_configureManagers
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [[HMDMetricsAccessoryDetailsManager alloc] initWithDataSource:self];
  accessoryDetailsManager = self->_accessoryDetailsManager;
  self->_accessoryDetailsManager = v3;

  v5 = [(HMDMetricsManager *)self configureHouseholdLogEventFactories];
  householdLogEventFactories = self->_householdLogEventFactories;
  self->_householdLogEventFactories = v5;

  v7 = [HMDHouseholdMetricsManager alloc];
  v8 = [(HMDMetricsManager *)self legacyCountersManager];
  v9 = [(HMDMetricsManager *)self accessoryDetailsManager];
  v10 = [(HMDMetricsManager *)self dailyScheduler];
  v11 = [(HMDMetricsManager *)self logEventDispatcher];
  dateProvider = self->_dateProvider;
  v17[0] = self->_userActivityEventsAnalyzer;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = [(HMDHouseholdMetricsManager *)v7 initWithCountersManager:v8 dataSource:self accessoryDetailsManager:v9 dailyScheduler:v10 logEventSubmitter:v11 dateProvider:dateProvider activityContributors:v13 logEventFactories:self->_householdLogEventFactories];
  householdMetricsManager = self->_householdMetricsManager;
  self->_householdMetricsManager = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addContributor:(id)a3 toListOfAggregationAnalysisEventContributing:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([v6 conformsToProtocol:&unk_286649248])
  {
    [v5 addObject:v6];
  }
}

- (void)_configureObservers
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = [[HMDCoreAnalyticsLogEventObserverDelegate alloc] initWithDataSource:self];
  coreAnalyticsDelegate = self->_coreAnalyticsDelegate;
  self->_coreAnalyticsDelegate = v3;

  v5 = [[HMDLogEventWeekBasedFilter alloc] initWithDateProvider:self->_dateProvider];
  v60[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  coreAnalyticsFilters = self->_coreAnalyticsFilters;
  self->_coreAnalyticsFilters = v6;

  v8 = [objc_alloc(MEMORY[0x277D17D98]) initWithDelegate:self->_coreAnalyticsDelegate filters:self->_coreAnalyticsFilters];
  coreAnalyticsObserver = self->_coreAnalyticsObserver;
  self->_coreAnalyticsObserver = v8;

  v10 = [[HMDDiagnosticReporterLogObserver alloc] initWithLogEventDispatcher:self->_logEventDispatcher];
  diagnosticReporterLogObserver = self->_diagnosticReporterLogObserver;
  self->_diagnosticReporterLogObserver = v10;

  v12 = [[HMDPowerLogObserver alloc] initWithLogEventDispatcher:self->_logEventDispatcher];
  powerLogObserver = self->_powerLogObserver;
  self->_powerLogObserver = v12;

  v14 = objc_alloc(MEMORY[0x277D17DD8]);
  v15 = [MEMORY[0x277D552C0] sharedStream];
  v16 = [v14 initWithSiriAnalyticsStream:v15 logEventDispatcher:self->_logEventDispatcher];
  siriSELFLoggingObserver = self->_siriSELFLoggingObserver;
  self->_siriSELFLoggingObserver = v16;

  v18 = [[HMDHH2AutoMigrationEligibilityLogEventSubmitter alloc] initWithEligibilityStatusDataSource:self analyzerDataSource:self];
  hh2AutoMigrationEligibilitySubmitter = self->_hh2AutoMigrationEligibilitySubmitter;
  self->_hh2AutoMigrationEligibilitySubmitter = v18;

  if (isInternalBuild())
  {
    v20 = [HMDLogEventCountingAnalyzer alloc];
    legacyCountersManager = self->_legacyCountersManager;
    dailyScheduler = self->_dailyScheduler;
    dateProvider = self->_dateProvider;
    v24 = [MEMORY[0x277D0F910] systemInfo];
    v25 = [(HMMLogEventDispatching *)self->_logEventDispatcher clientQueue];
    v26 = [(HMDLogEventCountingAnalyzer *)v20 initWithEventCountersManager:legacyCountersManager dailyScheduler:dailyScheduler dateProvider:dateProvider systemInfo:v24 queue:v25];
    eventCountingAnalyzer = self->_eventCountingAnalyzer;
    self->_eventCountingAnalyzer = v26;

    v28 = [[HMDHH2MigrationLogEventsAnalyzer alloc] initWithDataSource:self];
    hh2MigrationAnalyzer = self->_hh2MigrationAnalyzer;
    self->_hh2MigrationAnalyzer = v28;
  }

  v30 = [[HMDCloudSyncLogEventsAnalyzer alloc] initWithDataSource:self];
  cloudSyncLogEventsAnalyzer = self->_cloudSyncLogEventsAnalyzer;
  self->_cloudSyncLogEventsAnalyzer = v30;

  [(HMDMetricsManager *)self addContributor:self->_cloudSyncLogEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v32 = [[HMDLogEventErrorEventsAnalyzer alloc] initWithDataSource:self];
  errorEventsAnalyzer = self->_errorEventsAnalyzer;
  self->_errorEventsAnalyzer = v32;

  [(HMDMetricsManager *)self addContributor:self->_errorEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v34 = [[HMDLogEventHAPMetricsEventAnalyzer alloc] initWithEventCountersManager:self->_legacyCountersManager];
  hapEventsAnalyzer = self->_hapEventsAnalyzer;
  self->_hapEventsAnalyzer = v34;

  [(NSMutableArray *)self->_aggregationAnalysisEventContributingAnalyzers addObject:self->_hapEventsAnalyzer];
  v36 = [[HMDLogEventMessageEventsAnalyzer alloc] initWithDataSource:self];
  messagingEventsAnalyzer = self->_messagingEventsAnalyzer;
  self->_messagingEventsAnalyzer = v36;

  [(HMDMetricsManager *)self addContributor:self->_messagingEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v38 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:300.0];
  v39 = [[HMDMetricsPreferencesDebugManager alloc] initWithDataSource:self];
  preferencesDebugManager = self->_preferencesDebugManager;
  self->_preferencesDebugManager = v39;

  v41 = [[HMDLogEventProcessLaunchAnalyzer alloc] initWithProcessLaunchInfoTimer:v38 dataSource:self preferencesDebugManager:self->_preferencesDebugManager];
  processLaunchEventsAnalyzer = self->_processLaunchEventsAnalyzer;
  self->_processLaunchEventsAnalyzer = v41;

  [(HMDMetricsManager *)self addContributor:self->_processLaunchEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v43 = [[HMDLogEventProcessMemoryEventsAnalyzer alloc] initWithDataSource:self];
  processMemoryEventsAnalyzer = self->_processMemoryEventsAnalyzer;
  self->_processMemoryEventsAnalyzer = v43;

  [(HMDMetricsManager *)self addContributor:self->_processMemoryEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v45 = [[HMDLogEventReachabilityEventsAnalyzer alloc] initWithEventCountersManager:self->_legacyCountersManager];
  reachabilityEventsAnalyzer = self->_reachabilityEventsAnalyzer;
  self->_reachabilityEventsAnalyzer = v45;

  [(HMDMetricsManager *)self addContributor:self->_reachabilityEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v47 = [[HMDLogEventUserActivityAnalyzer alloc] initWithEventCountersManager:self->_legacyCountersManager flagsManager:self->_flagsManager dateProvider:self->_dateProvider];
  userActivityEventsAnalyzer = self->_userActivityEventsAnalyzer;
  self->_userActivityEventsAnalyzer = v47;

  [(HMDMetricsManager *)self addContributor:self->_userActivityEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v49 = [[HMDCameraRecordingEventObserver alloc] initWithLogEventDispatcher:self->_logEventDispatcher countersManager:self->_legacyCountersManager dailyScheduler:self->_dailyScheduler dateProvider:self->_dateProvider currentHomeDataSource:self];
  cameraRecordingEventObserver = self->_cameraRecordingEventObserver;
  self->_cameraRecordingEventObserver = v49;

  v51 = [[HMDLogEventElectionEventsAnalyzer alloc] initWithDataSource:self];
  electionEventsAnalyzer = self->_electionEventsAnalyzer;
  self->_electionEventsAnalyzer = v51;

  [(HMDMetricsManager *)self addContributor:self->_electionEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v53 = [[HMDLogEventAccessoryFirmwareUpdateEventAnalyzer alloc] initWithEventCountersManager:self->_legacyCountersManager];
  firmwareUpdateEventsAnalyzer = self->_firmwareUpdateEventsAnalyzer;
  self->_firmwareUpdateEventsAnalyzer = v53;

  v55 = [[HMDLogEventBulletinNotificationsAnalyzer alloc] initWithDataSource:self notificationSettingsProvider:self->_notificationSettingsProvider];
  bulletinNotificationsAnalyzer = self->_bulletinNotificationsAnalyzer;
  self->_bulletinNotificationsAnalyzer = v55;

  [(HMDMetricsManager *)self addContributor:self->_bulletinNotificationsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  v57 = [[HMDWidgetTimelineRefresherEventsAnalyzer alloc] initWithEventCountersManager:self->_legacyCountersManager logEventSubmitter:self->_logEventDispatcher dailyScheduler:self->_dailyScheduler];
  widgetTimelineRefresherEventsAnalyzer = self->_widgetTimelineRefresherEventsAnalyzer;
  self->_widgetTimelineRefresherEventsAnalyzer = v57;

  [(HMDMetricsManager *)self addContributor:self->_widgetTimelineRefresherEventsAnalyzer toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];
  [(HMDMetricsManager *)self addContributor:self->_deviceStateManager toListOfAggregationAnalysisEventContributing:self->_aggregationAnalysisEventContributingAnalyzers];

  v59 = *MEMORY[0x277D85DE8];
}

- (HMDMetricsManager)initWithMessageDispatcher:(id)a3 accountManager:(id)a4 notificationSettingsProvider:(id)a5 logEventDispatcher:(id)a6 dailyScheduler:(id)a7 dateProvider:(id)a8 uptimeProvider:(id)a9 legacyCountersManager:(id)a10 flagsManager:(id)a11 ewsLogger:(id)a12 deviceStateManager:(id)a13 networkObserver:(id)a14 coreAnalyticsTagObserver:(id)a15 backgroundLoggingTimer:(id)a16 radarInitiator:(id)a17 notificationCenter:(id)a18 userDefaults:(id)a19 currentSoftwareVersion:(id)a20 swiftData:(id)a21
{
  v60 = a3;
  v59 = a4;
  v58 = a5;
  v46 = a6;
  v26 = a6;
  v27 = a8;
  v57 = v26;
  v56 = a7;
  v55 = a8;
  v54 = a9;
  v53 = a10;
  v52 = a11;
  v61 = a12;
  v51 = a13;
  v50 = a14;
  v49 = a15;
  v28 = a16;
  v48 = a17;
  v29 = a18;
  v30 = a19;
  v31 = a20;
  v32 = a21;
  v62.receiver = self;
  v62.super_class = HMDMetricsManager;
  v33 = [(HMDMetricsManager *)&v62 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_messageDispatcher, a3);
    objc_storeStrong(&v34->_accountManager, a4);
    objc_storeStrong(&v34->_notificationSettingsProvider, a5);
    objc_storeStrong(&v34->_dailyScheduler, a7);
    objc_storeStrong(&v34->_dateProvider, v27);
    objc_storeStrong(&v34->_uptimeProvider, a9);
    objc_storeStrong(&v34->_legacyCountersManager, a10);
    objc_storeStrong(&v34->_flagsManager, a11);
    objc_storeWeak(&v34->_ewsLogger, v61);
    objc_storeStrong(&v34->_deviceStateManager, a13);
    objc_storeStrong(&v34->_networkObserver, a14);
    objc_storeStrong(&v34->_coreAnalyticsTagObserver, a15);
    objc_storeStrong(&v34->_logEventDispatcher, v46);
    [(HMMLogEventDispatching *)v34->_logEventDispatcher setDataSource:v34];
    [v28 setDelegate:v34];
    [(HMDMetricsManager *)v34 logEventDispatcher];
    v36 = v35 = v31;
    v37 = [v36 clientQueue];
    [v28 setDelegateQueue:v37];

    [v28 resume];
    objc_storeStrong(&v34->_backgroundLoggingTimer, a16);
    objc_storeStrong(&v34->_radarInitiator, a17);
    objc_storeStrong(&v34->_notificationCenter, a18);
    objc_storeStrong(&v34->_userDefaults, a19);
    objc_storeStrong(&v34->_currentSoftwareVersion, a20);
    objc_storeStrong(&v34->_internalSwiftData, a21);
    v38 = [MEMORY[0x277CBEB18] array];
    aggregationAnalysisEventContributingAnalyzers = v34->_aggregationAnalysisEventContributingAnalyzers;
    v34->_aggregationAnalysisEventContributingAnalyzers = v38;

    v31 = v35;
    v40 = [MEMORY[0x277CBEB18] array];
    configurationObservers = v34->_configurationObservers;
    v34->_configurationObservers = v40;

    [v61 addCommonField:@"isHH2Enabled" withValue:&unk_2866284F8];
    [(HMDMetricsManager *)v34 _configureObservers];
    v42 = [(HMDMetricsManager *)v34 configureSwiftObservers];
    swiftObservers = v34->_swiftObservers;
    v34->_swiftObservers = v42;

    [(HMDMetricsManager *)v34 _configureManagers];
  }

  return v34;
}

- (HMDMetricsManager)initWithMessageDispatcher:(id)a3 accountManager:(id)a4 notificationSettingsProvider:(id)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v78 = a3;
  v77 = a4;
  v76 = a5;
  v80 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v68 = objc_alloc_init(MEMORY[0x277D17DC8]);
  v75 = [HMDMetricsManager initSwiftExtensionsWithLogEventSubmitter:?];
  v74 = [HMDMetricsManager makeDailySchedulerWithSwiftData:?];
  v8 = [MEMORY[0x277D17DB0] sharedInstance];
  v72 = [MEMORY[0x277D17E00] sharedInstance];
  v79 = +[HMDMetricsManager defaultRadarInitiator];
  v71 = [[HMDTimeBasedFlagsManager alloc] initWithDateProvider:v8];
  v9 = _os_feature_enabled_impl();
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v84 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Using HomeKitMetrics counters", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v15 = metricsCountersPersistentStorePath;
    if (isInternalBuild())
    {
      v16 = [v80 objectForKey:@"HMDStartupEphemeralContainer"];
    }

    else
    {
      v16 = 0;
    }

    if (isInternalBuild())
    {
      v19 = [v80 objectForKey:@"HMDCounterPersistence"];
    }

    else
    {
      v19 = 0;
    }

    if ([v19 isEqualToIgnoringCase:@"none"])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v11;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v23 = v11;
        v24 = v15;
        v25 = v19;
        v27 = v26 = v16;
        *buf = 138543362;
        v84 = v27;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@HomeKitMetrics counter persistence disabled via defaults write", buf, 0xCu);

        v16 = v26;
        v19 = v25;
        v15 = v24;
        v11 = v23;
      }

      objc_autoreleasePoolPop(v20);
      v18 = [[HMDEventCountersManager alloc] initWithDateProvider:v8 startupContainerName:v16 uptimeProvider:v72];
      v28 = 0;
      if (v18)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if ([v19 isEqualToIgnoringCase:@"core-data"])
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v11;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v32 = v11;
        v33 = v15;
        v34 = v19;
        v36 = v35 = v16;
        *buf = 138543362;
        v84 = v36;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@HomeKitMetrics counter persistence using Core Data via defaults write", buf, 0xCu);

        v16 = v35;
        v19 = v34;
        v15 = v33;
        v11 = v32;
      }

      objc_autoreleasePoolPop(v29);
      v82 = 0;
      v18 = [[HMDEventCountersManager alloc] initWithCoreDataStoragePath:v15 dateProvider:v8 startupContainerName:v16 uptimeProvider:v72 error:&v82];
      v37 = v82;
LABEL_29:
      v28 = v37;
      if (v18)
      {
LABEL_33:

        goto LABEL_34;
      }

LABEL_30:
      v73 = v16;
      v45 = objc_autoreleasePoolPush();
      v46 = v11;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v48;
        v85 = 2112;
        v86 = v28;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HomeKitMetrics counters manager. Creating one with no persistence. Error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v45);
      [v79 requestRadarWithDisplayReason:@"persistent counter storage failed to load" radarTitle:@"Failed to load persistent counter storage"];
      v16 = v73;
      v18 = [[HMDEventCountersManager alloc] initWithDateProvider:v8 startupContainerName:v73 uptimeProvider:v72];
      goto LABEL_33;
    }

    v38 = [v19 isEqualToIgnoringCase:@"flat-file"];
    v39 = objc_autoreleasePoolPush();
    v40 = v11;
    v41 = HMFGetOSLogHandle();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      if (v42)
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v84 = v43;
        v44 = "%{public}@HomeKitMetrics counter persistence using flat-file via defaults write";
LABEL_27:
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);
      }
    }

    else if (v42)
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v84 = v43;
      v44 = "%{public}@HomeKitMetrics counter persistence defaulting to flat-file";
      goto LABEL_27;
    }

    objc_autoreleasePoolPop(v39);
    v81 = 0;
    v18 = [[HMDEventCountersManager alloc] initWithFlatFileStoragePath:v15 dateProvider:v8 startupContainerName:v16 uptimeProvider:v72 error:&v81];
    v37 = v81;
    goto LABEL_29;
  }

  if (v13)
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v84 = v17;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Using legacy metric counters", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v18 = objc_alloc_init(HMDEventCountersManager);
LABEL_34:
  v49 = objc_alloc(MEMORY[0x277D17DA0]);
  v50 = [MEMORY[0x277D17DE8] sharedInstance];
  v51 = objc_alloc_init(HMDCoreAnalyticsLogEventFactory);
  v52 = [v49 initWithTagDispatcher:v50 logEventSubmitter:v68 logEventFactory:v51];

  v67 = [[HMDNetworkObserver alloc] initWithLogEventDispatcher:v68 countersManager:v18 dailyScheduler:v74 currentHomeDataSource:v11 dateProvider:v8];
  v70 = [[HMDMetricsDeviceStateManager alloc] initWithLogEventSubmitter:v68 dailyScheduler:v74 dateProvider:v8];
  v53 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v54 = [v53 preferenceForKey:@"backgroundLoggingPeriod"];
  v69 = [v54 numberValue];

  v55 = objc_alloc(MEMORY[0x277D0F920]);
  [v69 doubleValue];
  v66 = [v55 initWithTimeInterval:4 options:?];
  v56 = [MEMORY[0x277CCAB98] defaultCenter];
  [MEMORY[0x277D0F8E8] productInfo];
  v57 = v8;
  v59 = v58 = v11;
  v60 = [v59 softwareVersion];
  v61 = [v60 versionString];

  v62 = [MEMORY[0x277D17DD0] sharedManager];
  v65 = [(HMDMetricsManager *)v58 initWithMessageDispatcher:v78 accountManager:v77 notificationSettingsProvider:v76 logEventDispatcher:v68 dailyScheduler:v74 dateProvider:v57 uptimeProvider:v72 legacyCountersManager:v18 flagsManager:v71 ewsLogger:v62 deviceStateManager:v70 networkObserver:v67 coreAnalyticsTagObserver:v52 backgroundLoggingTimer:v66 radarInitiator:v79 notificationCenter:v56 userDefaults:v80 currentSoftwareVersion:v61 swiftData:v75];

  v63 = *MEMORY[0x277D85DE8];
  return v65;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_80606 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_80606, &__block_literal_global_259);
  }

  v3 = logCategory__hmf_once_v21_80607;

  return v3;
}

uint64_t __32__HMDMetricsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_80607;
  logCategory__hmf_once_v21_80607 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)submitMinimalCoreAnalyticsEvent:(id)a3
{
  v3 = a3;
  v6 = objc_alloc_init(HMDMinimalCoreAnalyticsLogEventObserverDelegate);
  v4 = objc_alloc(MEMORY[0x277D17D98]);
  v5 = [v4 initWithDelegate:v6 filters:MEMORY[0x277CBEBF8]];
  [v5 observeEvent:v3];
}

+ (HMMLogEventSubmitting)sharedLogEventSubmitter
{
  os_unfair_lock_lock_with_options();
  v2 = sharedDispatcher;
  if (!sharedDispatcher)
  {
    v2 = bufferedSubmitter;
    if (!bufferedSubmitter)
    {
      v3 = objc_alloc_init(MEMORY[0x277D17D90]);
      v4 = bufferedSubmitter;
      bufferedSubmitter = v3;

      v2 = bufferedSubmitter;
    }
  }

  v5 = v2;
  os_unfair_lock_unlock(&sharedSubmitterLock);

  return v5;
}

+ (NSUUID)namespaceUUID
{
  if (namespaceUUID_onceToken != -1)
  {
    dispatch_once(&namespaceUUID_onceToken, &__block_literal_global_80615);
  }

  v3 = namespaceUUID_namespaceUUID;

  return v3;
}

uint64_t __34__HMDMetricsManager_namespaceUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v1 = namespaceUUID_namespaceUUID;
  namespaceUUID_namespaceUUID = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end