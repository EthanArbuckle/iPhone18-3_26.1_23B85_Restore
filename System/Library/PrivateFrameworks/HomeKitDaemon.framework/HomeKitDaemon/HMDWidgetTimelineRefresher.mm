@interface HMDWidgetTimelineRefresher
+ (id)fetchSpecificationsForWidgetKinds:(id)kinds;
+ (id)logCategory;
- (BOOL)_getRequestsFromMessage:(id)message outCharacteristicWriteValueByUUUIDs:(id *)ds outExecuteActionSetUUUIDs:(id *)iDs outExecuteTurnOffActionSetUUIDs:(id *)uIDs;
- (BOOL)_value:(id)_value isApproximatelyEqualToValue:(id)value forMinimumValue:(id)minimumValue maximumValue:(id)maximumValue;
- (BOOL)actionSetIsOn:(id)on;
- (BOOL)evaluateActionSetStateOnPrimaryEnabledForHome:(id)home;
- (HMDHomeManager)homeManager;
- (HMDWidgetAccessoryReachabilityMonitor)reachabilityMonitor;
- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)manager;
- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)manager queue:(id)queue dataSource:(id)source reachabilityUpdateDispatchDelayNs:(int64_t)ns forceUpdateTimelineDispatchDelayNs:(int64_t)delayNs;
- (NSUUID)messageTargetUUID;
- (_TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions)_swiftExtensions;
- (id)_firstErrorFromCharacteristicWriteResponsePayload:(id)payload;
- (id)_getPendingWriteValueForUUID:(id)d;
- (id)accessoriesMonitoredForReachability;
- (id)actionSetsByHome:(id)home;
- (id)actionSetsFromSPIClientIdentifiers:(void *)identifiers;
- (id)actionSetsMonitoredForWidgets;
- (id)attributesMonitoredForWidgets;
- (id)cachedIsOnStateBySPIClientIdentifierForActionSets:(void *)sets;
- (id)characteristicsForMonitoredCharacteristics:(void *)characteristics;
- (id)characteristicsFromActionSets:(void *)sets;
- (id)characteristicsFromSPIClientIdentifiers:(void *)identifiers;
- (id)characteristicsMonitoredForWidgets;
- (id)createDataSource;
- (id)didExecuteFailBySPIClientIdentifierForActionSets:(void *)sets;
- (id)internalMonitorCharacteristicsForCurrentHome:(id)home activeAutoBahnWidgetKinds:(id)kinds;
- (id)modifiedCharacteristicsFromNotification:(id)notification;
- (id)monitorCharacteristicsForHome:(id)home fetchSpecifications:(id)specifications;
- (id)reachabilityByAccessorySPIClientIdentifierForCharacteristics:(id)characteristics;
- (id)thresholdForCharacteristic:(id)characteristic;
- (id)valueByCharacteristicSPIClientIdentifierForCharacteristics:(id)characteristics;
- (id)widgetKindsToUpdateFromFetchSpecifications:(id)specifications assumingChangedCharacteristic:(id)characteristic;
- (id)widgetKindsToUpdateFromFetchSpecifications:(id)specifications changedCharacteristics:(id)characteristics;
- (void)_clearCachedErrorForActionSet:(void *)set;
- (void)_clearExpiredActionSetPrimaryStateUpdates;
- (void)_refreshTimelineForWidgetKinds:(void *)kinds withReason:;
- (void)_refreshWidgetsIfActionSetsHaveChanged:(id)changed;
- (void)_removePendingRequestValueForUUID:(id)d messageIdentifier:(id)identifier;
- (void)_setCachedError:(void *)error forActionSet:;
- (void)_setPendingRequestValue:(id)value forUUID:(id)d messageIdentifier:(id)identifier;
- (void)_startActionSetPrimaryStateUpdateCoalesceTimerContextForActionSetUUID:(id)d expectedState:(id)state;
- (void)accessoryReachabilityDidChange:(id)change;
- (void)cleanUpRemovedWidgetsFromWidgets:(void *)widgets completion:;
- (void)configure;
- (void)configureSwiftExtensions;
- (void)dealloc;
- (void)device:(id)device receivedAttributeReport:(id)report;
- (void)device:(id)device receivedEventReport:(id)report;
- (void)device:(id)device stateChanged:(unint64_t)changed;
- (void)didUpdateStateActionSetUUID:(id)d state:(BOOL)state;
- (void)fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:(id)completion;
- (void)forceUpdateTimelineForWidgetKinds:(id)kinds;
- (void)handleAccessoryAddedNotification:(id)notification;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification;
- (void)handleAccessoryReachabilityChanged:(id)changed;
- (void)handleAccessoryRemovedNotification:(id)notification;
- (void)handleAutobahnAccessoryReachabilityChanged:(id)changed;
- (void)handleCurrentHomeChangeNotification:(id)notification;
- (void)handleCurrentOrPrimaryHomeChangedNotification:(id)notification;
- (void)handleFetchState:(id)state;
- (void)handleFetchStateForActionSets:(id)sets;
- (void)handleHomeAddedNotification:(id)notification;
- (void)handleHomeRemovedNotification:(id)notification;
- (void)handleHomeSensingChangedNotification;
- (void)handleMonitorActionSetsForWidget:(id)widget;
- (void)handleMonitorCharacteristicsForWidget:(id)widget;
- (void)handleMonitorMTRAttributes:(id)attributes;
- (void)handleNotificationOfPossibleNewWidget:(id)widget;
- (void)handleNotifiedXPCClientsOfHomeConfigurationChangeNotification:(id)notification;
- (void)handlePerformRequests:(id)requests;
- (void)handleResidentDeviceAddedOrRemovedNotification:(id)notification;
- (void)handleResidentDeviceChangedNotification:(id)notification;
- (void)handleRestrictedGuestScheduleEndedNotification:(id)notification;
- (void)handleRestrictedGuestScheduleEventForUser:(id)user;
- (void)handleRestrictedGuestScheduleStartedNotification:(id)notification;
- (void)handleSelectedHomeChangedNotification;
- (void)handleTimerFiredForActionSet:(id)set;
- (void)initSwiftExtensions;
- (void)internalProcessChangedCharacteristics:(id)characteristics activeAutoBahnWidgetKinds:(id)kinds;
- (void)monitorDeviceNodeID:(id)d controller:(id)controller attributes:(id)attributes;
- (void)processCharacteristicsChangedNotification:(id)notification;
- (void)refreshTimelineForConfiguredWidgetsWithReason:(void *)reason;
- (void)refreshTimelineForWidgetKinds:(void *)kinds withReason:(int)reason shouldCoalesce:;
- (void)registerForDarwinNotifications;
- (void)registerForMessagesWithMessageDispatcher:(id)dispatcher;
- (void)setNotificationEnabled:(void *)enabled forCharacteristics:(void *)characteristics clientIdentifier:;
- (void)stopMonitoringOldCharacteristics;
- (void)timerManager:(id)manager didFireForTimerContext:(id)context;
- (void)updateCachedIsOnStateForActionSets:(void *)sets;
- (void)updateMonitoredCharacteristicsAndRefreshWidgetTimelines;
- (void)updateMonitoredMTRAttributes:(id)attributes forWidget:(id)widget;
- (void)updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:(int64_t)s afterChangesFromBlock:(id)block;
- (void)updateNotificationRegistrationWithPreviousAttributes:(void *)attributes currentAttributes:;
- (void)updateNotificationRegistrationWithPreviousCharacteristics:(void *)characteristics currentCharacteristics:(uint64_t)currentCharacteristics updateRequestQualityOfService:;
- (void)updateReachabilityMonitorWithPreviousAccessories:(id)accessories currentAccessories:(id)currentAccessories completion:(id)completion;
- (void)writeCharacteristicsWithWriteValueBySPIClientIdentifier:(id)identifier widgetKind:(id)kind message:(id)message completionGroup:(id)group completion:(id)completion;
@end

@implementation HMDWidgetTimelineRefresher

- (_TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions)_swiftExtensions
{
  selfCopy = self;
  swiftExtensions = [(HMDWidgetTimelineRefresher *)selfCopy swiftExtensions];
  sub_22A4DE01C();
  swift_unknownObjectRelease();

  _s15SwiftExtensionsCMa_0();
  swift_dynamicCast();

  return v5;
}

- (void)initSwiftExtensions
{
  selfCopy = self;
  sub_229721870();
}

- (void)configureSwiftExtensions
{
  selfCopy = self;
  sub_229721A24();
}

- (id)createDataSource
{
  v2 = [objc_allocWithZone(type metadata accessor for WidgetTimelineRefresherDataSource()) init];

  return v2;
}

- (HMDWidgetAccessoryReachabilityMonitor)reachabilityMonitor
{
  _swiftExtensions = [(HMDWidgetTimelineRefresher *)self _swiftExtensions];
  v3 = *(&_swiftExtensions->super.isa + OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitor);

  return v3;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)accessoryReachabilityDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy count])
  {
    [(HMDWidgetTimelineRefresher *)self handleAutobahnAccessoryReachabilityChanged:changeCopy];
    [(HMDWidgetTimelineRefresher *)self handleAccessoryReachabilityChanged:changeCopy];
  }
}

- (void)device:(id)device stateChanged:(unint64_t)changed
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = deviceCopy;
    v16 = 2048;
    changedCopy = changed;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Device: %@, received state change to: %ld", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)device receivedEventReport:(id)report
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = deviceCopy;
    v17 = 2112;
    v18 = reportCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Device: %@, received event report: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)device receivedAttributeReport:(id)report
{
  v67 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = deviceCopy;
    *&buf[22] = 2112;
    v63 = reportCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Device: %@, received attribute report: %@", buf, 0x20u);
  }

  v50 = deviceCopy;

  objc_autoreleasePoolPop(v8);
  context = objc_autoreleasePoolPush();
  v51 = [MEMORY[0x277CBEB58] set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = reportCopy;
  v12 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v58;
    v15 = *MEMORY[0x277CD50B8];
    v54 = *MEMORY[0x277CD50D8];
    v52 = selfCopy;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v57 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:v15];
        if (v18 && (v19 = v18, [v17 objectForKeyedSubscript:v54], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
        {
          v21 = [v17 objectForKeyedSubscript:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          if (v23)
          {
            [v51 addObject:v23];
          }

          else
          {
            v28 = objc_autoreleasePoolPush();
            v29 = selfCopy;
            v30 = v28;
            v31 = v29;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v33;
              *&buf[12] = 2112;
              *&buf[14] = v17;
              _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Malformed attribute report with invalid or missing path. Ignoring report: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v30);
            selfCopy = v52;
          }
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v27;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Malformed attribute report. Ignoring report: %@", buf, 0x16u);

            selfCopy = v52;
          }

          objc_autoreleasePoolPop(v24);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v13);
  }

  nodeID = [v50 nodeID];
  v35 = v51;
  v36 = nodeID;
  if (selfCopy)
  {
    workQueue = [(HMDWidgetTimelineRefresher *)selfCopy workQueue];
    dispatch_assert_queue_V2(workQueue);

    v38 = [MEMORY[0x277CBEB58] set];
    monitoredMTRAttributesByWidget = [(HMDWidgetTimelineRefresher *)selfCopy monitoredMTRAttributesByWidget];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __66__HMDWidgetTimelineRefresher_relevantWidgetsForAttributes_nodeID___block_invoke;
    v63 = &unk_278674E18;
    v64 = v36;
    v65 = v35;
    v40 = v38;
    v66 = v40;
    [monitoredMTRAttributesByWidget enumerateKeysAndObjectsUsingBlock:buf];

    v41 = v66;
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  v43 = [v42 mutableCopy];
  if ([v43 count])
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __61__HMDWidgetTimelineRefresher_device_receivedAttributeReport___block_invoke;
    v55[3] = &unk_2786811A0;
    v55[4] = selfCopy;
    v56 = v43;
    [(HMDWidgetTimelineRefresher *)selfCopy cleanUpRemovedWidgetsFromWidgets:v56 completion:v55];
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@No relevant widgets for attribute report", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
  }

  objc_autoreleasePoolPop(context);
  v48 = *MEMORY[0x277D85DE8];
}

void __61__HMDWidgetTimelineRefresher_device_receivedAttributeReport___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  [*(a1 + 40) minusSet:v3];
  if ([*(a1 + 40) count])
  {
    v5 = [*(a1 + 40) na_map:&__block_literal_global_410_60399];
    if ([v5 count])
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v5 allObjects];
        v11 = [v10 componentsJoinedByString:{@", "}];
        v17 = 138543618;
        v18 = v9;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline for widget kinds: %@ due to attribute report", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForWidgetKinds:v5 withReason:@"Attribute Report" shouldCoalesce:0];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@All relevant widgets for attribute report have been removed", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpRemovedWidgetsFromWidgets:(void *)widgets completion:
{
  v5 = a2;
  widgetsCopy = widgets;
  if (self)
  {
    widgetConfigurationReader = [self widgetConfigurationReader];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke;
    v8[3] = &unk_278684DE0;
    v8[4] = self;
    v10 = widgetsCopy;
    v9 = v5;
    [widgetConfigurationReader fetchHomeWidgetsWithCompletion:v8];
  }
}

void __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke_2;
  block[3] = &unk_278688978;
  v8 = a1[4];
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v16 = a1[6];
  v15 = a1[5];
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    v3 = [MEMORY[0x277CBEB98] setWithArray:?];
    v4 = [v2 na_setByRemovingObjectsFromSet:v3];

    v5 = *(a1 + 40);
    v20 = v4;
    if (v5)
    {
      v6 = [v5 workQueue];
      dispatch_assert_queue_V2(v6);

      if ([v20 count])
      {
        v7 = objc_autoreleasePoolPush();
        v8 = v5;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v20;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing old widgets and updating monitored characteristics and action sets: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __51__HMDWidgetTimelineRefresher_handleRemovedWidgets___block_invoke;
        v22 = &unk_27868A750;
        v23 = v8;
        v24 = v20;
        [v8 updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:33 afterChangesFromBlock:buf];
      }
    }

    (*(*(a1 + 64) + 16))();
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 48);
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch configured widgets with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = *(a1 + 64);
    v18 = [MEMORY[0x277CBEB98] set];
    (*(v17 + 16))(v17, v18);

    v19 = *MEMORY[0x277D85DE8];
  }
}

void __51__HMDWidgetTimelineRefresher_handleRemovedWidgets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  v6 = [*(a1 + 40) allObjects];
  v3 = [*(a1 + 32) monitoredCharacteristicsMapByWidget];
  [v3 removeObjectsForKeys:v6];

  v4 = [*(a1 + 32) monitoredActionSetsMapByWidget];
  [v4 removeObjectsForKeys:v6];

  v5 = [*(a1 + 32) monitoredMTRAttributesByWidget];
  [v5 removeObjectsForKeys:v6];
}

- (void)refreshTimelineForWidgetKinds:(void *)kinds withReason:(int)reason shouldCoalesce:
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  kindsCopy = kinds;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    if ([v7 count])
    {
      if (!reason)
      {
        widgetRefreshCoalesceKinds = [self widgetRefreshCoalesceKinds];
        v24 = [v7 setByAddingObjectsFromSet:widgetRefreshCoalesceKinds];
        [(HMDWidgetTimelineRefresher *)self _refreshTimelineForWidgetKinds:v24 withReason:kindsCopy];
LABEL_11:

        goto LABEL_12;
      }

      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        allObjects = [v7 allObjects];
        v15 = [allObjects componentsJoinedByString:{@", "}];
        v26 = 138543874;
        v27 = v13;
        v28 = 2112;
        v29 = kindsCopy;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Coalescing and delaying widget refresh due to %@ for kinds: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      widgetRefreshCoalesceKinds2 = [selfCopy widgetRefreshCoalesceKinds];
      v17 = [widgetRefreshCoalesceKinds2 setByAddingObjectsFromSet:v7];
      [selfCopy setWidgetRefreshCoalesceKinds:v17];

      widgetRefreshCoalesceTimerContext = [selfCopy widgetRefreshCoalesceTimerContext];

      if (!widgetRefreshCoalesceTimerContext)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v22;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Starting coalescing timer", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        [v20 setWidgetRefreshCoalesceReason:kindsCopy];
        widgetRefreshCoalesceKinds = [v20 timerManager];
        v24 = [widgetRefreshCoalesceKinds startTimerWithTimeInterval:@"AF927200-D9B8-4498-9175-6620DB053CC6" object:1.0];
        [v20 setWidgetRefreshCoalesceTimerContext:v24];
        goto LABEL_11;
      }
    }
  }

LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_refreshTimelineForWidgetKinds:(void *)kinds withReason:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  kindsCopy = kinds;
  if (self)
  {
    widgetRefreshCoalesceTimerContext = [self widgetRefreshCoalesceTimerContext];

    if (widgetRefreshCoalesceTimerContext)
    {
      timerManager = [self timerManager];
      widgetRefreshCoalesceTimerContext2 = [self widgetRefreshCoalesceTimerContext];
      [timerManager cancelTimerForContext:widgetRefreshCoalesceTimerContext2];
    }

    [self setWidgetRefreshCoalesceReason:0];
    v10 = [MEMORY[0x277CBEB98] set];
    [self setWidgetRefreshCoalesceKinds:v10];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      allObjects = [v5 allObjects];
      v16 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v24 = v14;
      v25 = 2112;
      v26 = kindsCopy;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshing widget due to %@ for kinds: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    workQueue = [selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDWidgetTimelineRefresher__refreshTimelineForWidgetKinds_withReason___block_invoke;
    block[3] = &unk_27868A010;
    v20 = v5;
    v21 = selfCopy;
    v22 = kindsCopy;
    dispatch_async(workQueue, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __72__HMDWidgetTimelineRefresher__refreshTimelineForWidgetKinds_withReason___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v25;
    *&v3 = 138543874;
    v22 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [*(a1 + 40) timelineController];
        v9 = [v8 reloadTimelineWithExtensionBundleIdentifier:@"com.apple.Home.HomeWidget.Interactive" kind:v7 reason:*(a1 + 48)];

        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        v13 = v12;
        if (v9)
        {
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v14 = HMFGetLogIdentifier();
          *buf = v22;
          v29 = v14;
          v30 = 2114;
          v31 = v7;
          v32 = 2112;
          v33 = v9;
          v15 = v13;
          v16 = OS_LOG_TYPE_ERROR;
          v17 = "%{public}@Failed reload of timeline for '%{public}@': %@";
        }

        else
        {
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v14 = HMFGetLogIdentifier();
          v18 = *(a1 + 48);
          *buf = v22;
          v29 = v14;
          v30 = 2114;
          v31 = v7;
          v32 = 2114;
          v33 = v18;
          v15 = v13;
          v16 = OS_LOG_TYPE_DEFAULT;
          v17 = "%{public}@Successfully reloaded timeline for '%{public}@' due to %{public}@";
        }

        _os_log_impl(&dword_229538000, v15, v16, v17, buf, 0x20u);

LABEL_12:
        objc_autoreleasePoolPop(v10);
        v19 = [*(a1 + 40) logEventSubmitter];
        v20 = [[HMDWidgetTimelineRefresherLogEvent alloc] initWithKind:v7 reason:*(a1 + 48)];
        [v19 submitLogEvent:v20 error:v9];
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v4);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __66__HMDWidgetTimelineRefresher_relevantWidgetsForAttributes_nodeID___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __66__HMDWidgetTimelineRefresher_relevantWidgetsForAttributes_nodeID___block_invoke_2;
  v9 = &unk_278674DF0;
  v10 = a1[4];
  v11 = a1[5];
  if ([a3 na_any:&v6])
  {
    [a1[6] addObject:{v5, v6, v7, v8, v9, v10}];
  }
}

uint64_t __66__HMDWidgetTimelineRefresher_relevantWidgetsForAttributes_nodeID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nodeID];
  v5 = [v4 isEqualToNumber:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v3 attributePaths];
    v8 = [v6 intersectsSet:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSUUID)messageTargetUUID
{
  homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
  messageTargetUUID = [homeManager messageTargetUUID];

  return messageTargetUUID;
}

- (void)handleTimerFiredForActionSet:(id)set
{
  v24 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = setCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Clearing cached error for action set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  uuid = [setCopy uuid];
  cachedActionSetExecuteErrorByUUID = [(HMDWidgetTimelineRefresher *)selfCopy cachedActionSetExecuteErrorByUUID];
  [cachedActionSetExecuteErrorByUUID removeObjectForKey:uuid];

  cachedActionSetExecuteErrorTimerContextByUUID = [(HMDWidgetTimelineRefresher *)selfCopy cachedActionSetExecuteErrorTimerContextByUUID];
  [cachedActionSetExecuteErrorTimerContextByUUID removeObjectForKey:uuid];

  v12 = [MEMORY[0x277CBEB58] set];
  monitoredActionSetsMapByWidget = [(HMDWidgetTimelineRefresher *)selfCopy monitoredActionSetsMapByWidget];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__HMDWidgetTimelineRefresher_handleTimerFiredForActionSet___block_invoke;
  v17[3] = &unk_278674F00;
  v18 = v12;
  v19 = setCopy;
  v14 = setCopy;
  v15 = v12;
  [monitoredActionSetsMapByWidget enumerateKeysAndObjectsUsingBlock:v17];

  [(HMDWidgetTimelineRefresher *)selfCopy refreshTimelineForWidgetKinds:v15 withReason:@"Action Set Error Cleared" shouldCoalesce:1];
  v16 = *MEMORY[0x277D85DE8];
}

void __59__HMDWidgetTimelineRefresher_handleTimerFiredForActionSet___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [v7 kind];
  LOBYTE(v9) = [v9 containsObject:v10];

  if ((v9 & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v19 + 1) + 8 * i) isEqual:{*(a1 + 40), v19}])
          {
            v16 = *(a1 + 32);
            v17 = [v7 kind];
            [v16 addObject:v17];

            *a4 = 1;
            goto LABEL_12;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)timerManager:(id)manager didFireForTimerContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  widgetRefreshCoalesceTimerContext = [(HMDWidgetTimelineRefresher *)self widgetRefreshCoalesceTimerContext];

  if (widgetRefreshCoalesceTimerContext == contextCopy)
  {
    [(HMDWidgetTimelineRefresher *)self setWidgetRefreshCoalesceTimerContext:0];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Widget refresh coalescing timer fired.", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    widgetRefreshCoalesceKinds = [(HMDWidgetTimelineRefresher *)selfCopy widgetRefreshCoalesceKinds];
    widgetRefreshCoalesceReason = [(HMDWidgetTimelineRefresher *)selfCopy widgetRefreshCoalesceReason];
    [(HMDWidgetTimelineRefresher *)selfCopy _refreshTimelineForWidgetKinds:widgetRefreshCoalesceKinds withReason:widgetRefreshCoalesceReason];

    goto LABEL_15;
  }

  actionSetPrimaryStateUpdateCoalesceTimerContext = [(HMDWidgetTimelineRefresher *)self actionSetPrimaryStateUpdateCoalesceTimerContext];

  if (actionSetPrimaryStateUpdateCoalesceTimerContext != contextCopy)
  {
    object = [contextCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = object;
    }

    else
    {
      v12 = 0;
    }

    widgetRefreshCoalesceKinds = v12;

    if (widgetRefreshCoalesceKinds)
    {
      [(HMDWidgetTimelineRefresher *)self handleTimerFiredForActionSet:widgetRefreshCoalesceKinds];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        object2 = [contextCopy object];
        v25 = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = object2;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Timer manager fired with object that is unexpected: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }

LABEL_15:

    goto LABEL_16;
  }

  [(HMDWidgetTimelineRefresher *)self _clearExpiredActionSetPrimaryStateUpdates];
LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWidgetsIfActionSetsHaveChanged:(id)changed
{
  v29 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [MEMORY[0x277CBEB58] set];
  monitoredActionSetsMapByWidget = [(HMDWidgetTimelineRefresher *)self monitoredActionSetsMapByWidget];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__HMDWidgetTimelineRefresher__refreshWidgetsIfActionSetsHaveChanged___block_invoke;
  v19[3] = &unk_278674E18;
  v8 = changedCopy;
  v20 = v8;
  selfCopy = self;
  v22 = v6;
  [monitoredActionSetsMapByWidget enumerateKeysAndObjectsUsingBlock:v19];

  v9 = [v6 count];
  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v14;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling action set change (%@) and refreshing timeline for widgets: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__HMDWidgetTimelineRefresher__refreshWidgetsIfActionSetsHaveChanged___block_invoke_391;
    v17[3] = &unk_278674EB0;
    v17[4] = selfCopy2;
    v17[5] = v6;
    v18 = v8;
    [(HMDWidgetTimelineRefresher *)selfCopy2 cleanUpRemovedWidgetsFromWidgets:v6 completion:v17];
  }

  else
  {
    if (v13)
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v15;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@No widgets need to be refreshed from this action set change: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __69__HMDWidgetTimelineRefresher__refreshWidgetsIfActionSetsHaveChanged___block_invoke(id *a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__HMDWidgetTimelineRefresher__refreshWidgetsIfActionSetsHaveChanged___block_invoke_2;
  v27[3] = &unk_27867AF28;
  v28 = a1[4];
  v9 = [v8 na_any:v27];

  if (v9)
  {
    v22 = a4;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [a1[5] cachedIsOnStateByActionSet];
          v17 = [v16 objectForKey:v15];

          v18 = [a1[5] actionSetIsOn:v15];
          if (!v17 || v18 != [v17 BOOLValue])
          {
            v19 = [a1[5] cachedIsOnStateByActionSet];
            v20 = [MEMORY[0x277CCABB0] numberWithBool:v18];
            [v19 setObject:v20 forKey:v15];

            [a1[6] addObject:v7];
            *v22 = 1;

            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __69__HMDWidgetTimelineRefresher__refreshWidgetsIfActionSetsHaveChanged___block_invoke_391(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  [*(a1 + 40) minusSet:v3];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13 = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline due to action set (%@) change for configured widgets: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [*(a1 + 40) na_map:&__block_literal_global_394_60424];
  [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForWidgetKinds:v11 withReason:@"Action set state changed" shouldCoalesce:0];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HMDWidgetTimelineRefresher__refreshWidgetsIfActionSetsHaveChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)didUpdateStateActionSetUUID:(id)d state:(BOOL)state
{
  dCopy = d;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HMDWidgetTimelineRefresher_didUpdateStateActionSetUUID_state___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(workQueue, v8);
}

void __64__HMDWidgetTimelineRefresher_didUpdateStateActionSetUUID_state___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCAD78] zeroUUID];
  [v2 _removePendingRequestValueForUUID:v3 messageIdentifier:v4];

  v5 = [*(a1 + 32) actionSetsPendingPrimaryResidentStateUpdates];
  [v5 removeObject:*(a1 + 40)];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  [v6 _refreshWidgetsIfActionSetsHaveChanged:v7];
}

- (BOOL)evaluateActionSetStateOnPrimaryEnabledForHome:(id)home
{
  primaryResident = [home primaryResident];
  v4 = primaryResident;
  if (primaryResident)
  {
    capabilities = [primaryResident capabilities];
    supportsResidentActionSetStateEvaluation = [capabilities supportsResidentActionSetStateEvaluation];
  }

  else
  {
    supportsResidentActionSetStateEvaluation = 0;
  }

  return supportsResidentActionSetStateEvaluation;
}

- (void)handleRestrictedGuestScheduleEventForUser:(id)user
{
  if ([user isCurrentUser])
  {
    workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDWidgetTimelineRefresher_handleRestrictedGuestScheduleEventForUser___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __72__HMDWidgetTimelineRefresher_handleRestrictedGuestScheduleEventForUser___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Refreshing all Home widgets because of current user RG schedule changes", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) forceUpdateAutobahnTimelineHandler];
  v7 = [*(a1 + 32) activeAutoBahnWidgetKinds];
  (v6)[2](v6, v7);

  [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForConfiguredWidgetsWithReason:?];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshTimelineForConfiguredWidgetsWithReason:(void *)reason
{
  v3 = a2;
  if (reason)
  {
    widgetConfigurationReader = [reason widgetConfigurationReader];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke;
    v5[3] = &unk_278688CE8;
    v5[4] = reason;
    v6 = v3;
    [widgetConfigurationReader fetchHomeWidgetsWithCompletion:v5];
  }
}

void __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke_2;
  v12[3] = &unk_2786891E0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [v2 na_map:&__block_literal_global_381];
    v12 = [v3 setWithArray:v4];

    [(HMDWidgetTimelineRefresher *)*(a1 + 40) refreshTimelineForWidgetKinds:v12 withReason:*(a1 + 56) shouldCoalesce:0];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 48);
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch configured widgets to refresh with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)handleRestrictedGuestScheduleEndedNotification:(id)notification
{
  object = [notification object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  v6 = v7;
  if (v7)
  {
    [(HMDWidgetTimelineRefresher *)self handleRestrictedGuestScheduleEventForUser:v7];
    v6 = v7;
  }
}

- (void)handleRestrictedGuestScheduleStartedNotification:(id)notification
{
  object = [notification object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  v6 = v7;
  if (v7)
  {
    [(HMDWidgetTimelineRefresher *)self handleRestrictedGuestScheduleEventForUser:v7];
    v6 = v7;
  }
}

- (void)handleAutobahnAccessoryReachabilityChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v50 = [MEMORY[0x277CBEB58] set];
  v51 = [MEMORY[0x277CBEB58] set];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v72;
    v6 = 0x277CCA000;
    v52 = *v72;
    v53 = v2;
    do
    {
      v7 = 0;
      v54 = v4;
      do
      {
        if (*v72 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v71 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = [v8 home];
        if (v9)
        {
          v11 = v10;
          v12 = [v10 hasAnyResident];

          if (!v12)
          {
            goto LABEL_28;
          }

          v13 = [*(a1 + 40) accessoryIsReachableByUUID];
          v14 = [v8 uuid];
          v15 = [v13 objectForKeyedSubscript:v14];

          v56 = v15;
          if (v15)
          {
            v16 = [v15 BOOLValue];
          }

          else
          {
            v16 = 1;
          }

          v17 = [*(a1 + 40) reachabilityMonitor];
          v18 = [v17 isAccessoryReachable:v8];

          v64 = v18;
          if (v16 != v18)
          {
            v55 = v7;
            v19 = *(a1 + 40);
            v20 = objc_opt_class();
            v21 = [*(a1 + 40) activeAutoBahnWidgetKinds];
            v61 = [v20 fetchSpecificationsForWidgetKinds:v21];

            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            obj = [*(a1 + 40) monitoredCharacteristics];
            v22 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v68;
              v25 = v50;
              if (!v64)
              {
                v25 = v51;
              }

              v59 = v25;
              v60 = *v68;
              do
              {
                v26 = 0;
                v62 = v23;
                do
                {
                  if (*v68 != v24)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v27 = *(*(&v67 + 1) + 8 * v26);
                  v28 = [v27 accessory];
                  v29 = [v28 isEqual:v8];

                  if (v29)
                  {
                    v30 = v59;
                    v31 = [*(a1 + 40) widgetKindsToUpdateFromFetchSpecifications:v61 assumingChangedCharacteristic:v27];
                    [v30 unionSet:v31];

                    v32 = objc_autoreleasePoolPush();
                    v33 = *(a1 + 40);
                    v34 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                    {
                      HMFGetLogIdentifier();
                      v35 = v57 = v32;
                      v36 = [v8 home];
                      [v36 name];
                      v58 = v30;
                      v38 = v37 = v8;
                      v39 = [v37 name];
                      HMFBooleanToString();
                      v41 = v40 = a1;
                      *buf = 138544130;
                      v76 = v35;
                      v77 = 2112;
                      v78 = v38;
                      v79 = 2112;
                      v80 = v39;
                      v81 = 2112;
                      v82 = v41;
                      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' reachability changed to %@.", buf, 0x2Au);

                      v8 = v37;
                      v30 = v58;

                      a1 = v40;
                      v6 = 0x277CCA000uLL;

                      v32 = v57;
                    }

                    objc_autoreleasePoolPop(v32);
                    v42 = [*(v6 + 2992) numberWithBool:v64];
                    v43 = [*(a1 + 40) accessoryIsReachableByUUID];
                    v44 = [v8 uuid];
                    [v43 setObject:v42 forKeyedSubscript:v44];

                    v24 = v60;
                    v23 = v62;
                  }

                  ++v26;
                }

                while (v23 != v26);
                v23 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
              }

              while (v23);
            }

            v5 = v52;
            v2 = v53;
            v4 = v54;
            v7 = v55;
          }

          v10 = v56;
        }

LABEL_28:
        ++v7;
      }

      while (v7 != v4);
      v4 = [v2 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v4);
  }

  if ([v50 count])
  {
    v45 = dispatch_time(0, [*(a1 + 40) reachabilityUpdateDispatchDelayNs]);
    v46 = [*(a1 + 40) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke_386;
    block[3] = &unk_27868A750;
    block[4] = *(a1 + 40);
    v66 = v50;
    dispatch_after(v45, v46, block);
  }

  v47 = v51;
  if ([v51 count])
  {
    v48 = [*(a1 + 40) forceUpdateAutobahnTimelineHandler];
    (v48)[2](v48, v51);

    v47 = v51;
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke_386(uint64_t a1)
{
  v2 = [*(a1 + 32) forceUpdateAutobahnTimelineHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)handleNotificationOfPossibleNewWidget:(id)widget
{
  v24 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  name = [widgetCopy name];
  activeAutoBahnWidgetKinds = [(HMDWidgetTimelineRefresher *)self activeAutoBahnWidgetKinds];
  v7 = [activeAutoBahnWidgetKinds containsObject:name];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      object = [widgetCopy object];
      *buf = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = name;
      v22 = 2112;
      v23 = object;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Duplicate widget '%@' with payload '%@' ignored", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      object2 = [widgetCopy object];
      *buf = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = name;
      v22 = 2112;
      v23 = object2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@New widget '%@' has been spotted, with payload '%@'", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__HMDWidgetTimelineRefresher_handleNotificationOfPossibleNewWidget___block_invoke;
    v17[3] = &unk_27868A728;
    v17[4] = selfCopy;
    [(HMDWidgetTimelineRefresher *)selfCopy fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentDeviceAddedOrRemovedNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    homeManager = [(HMDWidgetTimelineRefresher *)selfCopy homeManager];
    v14 = [homeManager _homeWithUUID:v8];
    name = [v14 name];
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = name;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Resident was added or removed for home %@, resetting all characteristic notifications", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentDeviceChangedNotification:(id)notification
{
  v32 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    name = [v8 name];
    homeManager = [(HMDWidgetTimelineRefresher *)selfCopy homeManager];
    v19 = [homeManager _homeWithUUID:v12];
    [v19 name];
    v25 = notificationCopy;
    v20 = v12;
    v21 = v13;
    v23 = v22 = v8;
    *buf = 138543874;
    v27 = v16;
    v28 = 2112;
    v29 = name;
    v30 = 2112;
    v31 = v23;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Resident has changed to %@ for home %@, resetting all characteristic notifications", buf, 0x20u);

    v8 = v22;
    v13 = v21;
    v12 = v20;
    notificationCopy = v25;
  }

  objc_autoreleasePoolPop(v13);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryRemovedNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = object;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    name = [v11 name];
    name2 = [v8 name];
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = name2;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' was removed, resetting all characteristic notifications", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryAddedNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDNotificationAddedAccessoryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = object;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    name = [v11 name];
    name2 = [v8 name];
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = name2;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' was added, resetting all characteristic notifications", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    shortDescription = [v8 shortDescription];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = shortDescription;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Home '%@' was removed, resetting all characteristic notifications", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    shortDescription = [v8 shortDescription];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = shortDescription;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Home '%@' was added, resetting all characteristic notifications", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentOrPrimaryHomeChangedNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:@"HMDNotificationCurrentHomeDidChange"];

  if (v6)
  {
    [(HMDWidgetTimelineRefresher *)self handleCurrentHomeChangeNotification:notificationCopy];
  }

  homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
  currentHomeUUID = [homeManager currentHomeUUID];
  if (currentHomeUUID)
  {
    primaryHomeUUID = currentHomeUUID;
  }

  else
  {
    primaryHomeUUID = [homeManager primaryHomeUUID];
    if (!primaryHomeUUID)
    {
      goto LABEL_13;
    }
  }

  currentHomeUUID2 = [(HMDWidgetTimelineRefresher *)self currentHomeUUID];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      currentHomeUUID3 = [(HMDWidgetTimelineRefresher *)selfCopy currentHomeUUID];

      if (currentHomeUUID3)
      {
        currentHomeUUID4 = [(HMDWidgetTimelineRefresher *)selfCopy currentHomeUUID];
        [currentHomeUUID4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v20 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      [primaryHomeUUID getUUIDBytes:buf];
      v19 = *buf;
      *buf = 138544386;
      *&buf[4] = v15;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v22 = 2096;
      v23 = &v20;
      v24 = 1040;
      v25 = 16;
      v26 = 2096;
      v27 = &v19;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Current home changed from %{uuid_t}.16P to %{uuid_t}.16P, resetting all characteristic notifications", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDWidgetTimelineRefresher *)selfCopy setCurrentHomeUUID:primaryHomeUUID];
    [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_value:(id)_value isApproximatelyEqualToValue:(id)value forMinimumValue:(id)minimumValue maximumValue:(id)maximumValue
{
  _valueCopy = _value;
  valueCopy = value;
  minimumValueCopy = minimumValue;
  maximumValueCopy = maximumValue;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = minimumValueCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = maximumValueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v14)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_21;
  }

  v19 = _valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (!v21 || !v24)
  {

LABEL_21:
    v32 = [_valueCopy isEqual:valueCopy];
    goto LABEL_22;
  }

  [v21 floatValue];
  v26 = v25;
  [v24 floatValue];
  v28 = vabds_f32(v26, v27);
  [v17 floatValue];
  v30 = v29;
  [v14 floatValue];
  v32 = v28 <= ((v30 - v31) * 0.02);

LABEL_22:
  return v32;
}

- (BOOL)actionSetIsOn:(id)on
{
  v37 = *MEMORY[0x277D85DE8];
  onCopy = on;
  home = [onCopy home];
  v28 = [(HMDWidgetTimelineRefresher *)self evaluateActionSetStateOnPrimaryEnabledForHome:?];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = onCopy;
  obj = [onCopy actions];
  v30 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v30)
  {
    v29 = *v33;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        uuid = v7;

        if (uuid)
        {
          characteristic = [uuid characteristic];
          value = [characteristic value];
          targetValue = [uuid targetValue];
          metadata = [characteristic metadata];
          minimumValue = [metadata minimumValue];
          metadata2 = [characteristic metadata];
          maximumValue = [metadata2 maximumValue];
          v31 = [(HMDWidgetTimelineRefresher *)self _value:value isApproximatelyEqualToValue:targetValue forMinimumValue:minimumValue maximumValue:maximumValue]|| v28;

          accessory = [characteristic accessory];
          if ((v31 & 1) == 0 || (-[HMDWidgetTimelineRefresher reachabilityMonitor](self, "reachabilityMonitor"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isAccessoryReachable:accessory], v17, (v18 & 1) == 0))
          {

            v22 = 0;
            v19 = home;
            v21 = v26;
            goto LABEL_18;
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  if (v28)
  {
    v19 = home;
    actionSetStateSubscriptionManager = [home actionSetStateSubscriptionManager];
    v21 = v26;
    uuid = [v26 uuid];
    obj = actionSetStateSubscriptionManager;
    v22 = [actionSetStateSubscriptionManager isActionSetOn:uuid];
LABEL_18:
  }

  else
  {
    v22 = 1;
    v19 = home;
    v21 = v26;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)thresholdForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  if (!service)
  {
    goto LABEL_16;
  }

  type = [characteristicCopy type];
  if (([type isEqualToString:*MEMORY[0x277CFE628]] & 1) == 0)
  {

    goto LABEL_9;
  }

  type2 = [service type];
  if (([type2 isEqualToString:*MEMORY[0x277CFE8F0]] & 1) == 0)
  {
    type3 = [service type];
    if ([type3 isEqualToString:*MEMORY[0x277CFE900]])
    {

      goto LABEL_6;
    }

    type4 = [service type];
    v14 = [type4 isEqualToString:*MEMORY[0x277CFE860]];

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    type5 = [characteristicCopy type];
    if ([type5 isEqualToString:*MEMORY[0x277CFE618]])
    {
      type6 = [service type];
      if ([type6 isEqualToString:*MEMORY[0x277CFE8C0]])
      {
LABEL_13:

LABEL_14:
        v8 = &unk_283E72320;
        goto LABEL_17;
      }

      type7 = [service type];
      if ([type7 isEqualToString:*MEMORY[0x277CFE900]])
      {

        goto LABEL_13;
      }

      type8 = [service type];
      v16 = [type8 isEqualToString:*MEMORY[0x277CFE868]];

      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

LABEL_6:

LABEL_7:
  v8 = &unk_283E75EA8;
LABEL_17:

  return v8;
}

- (id)actionSetsByHome:(id)home
{
  v23 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = homeCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        home = [v10 home];
        if (home)
        {
          v12 = [strongToStrongObjectsMapTable objectForKey:home];

          if (!v12)
          {
            v13 = [MEMORY[0x277CBEB58] set];
            [strongToStrongObjectsMapTable setObject:v13 forKey:home];
          }

          v14 = [strongToStrongObjectsMapTable objectForKey:home];
          [v14 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [strongToStrongObjectsMapTable copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)updateReachabilityMonitorWithPreviousAccessories:(id)accessories currentAccessories:(id)currentAccessories completion:(id)completion
{
  completionCopy = completion;
  currentAccessoriesCopy = currentAccessories;
  accessoriesCopy = accessories;
  v13 = [accessoriesCopy na_setByRemovingObjectsFromSet:currentAccessoriesCopy];
  v11 = [currentAccessoriesCopy na_setByRemovingObjectsFromSet:accessoriesCopy];

  reachabilityMonitor = [(HMDWidgetTimelineRefresher *)self reachabilityMonitor];
  [reachabilityMonitor startMonitoringAccessories:v11 stopMonitoring:v13 completionHandler:completionCopy];
}

- (id)accessoriesMonitoredForReachability
{
  characteristicsMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  v4 = [characteristicsMonitoredForWidgets na_map:&__block_literal_global_362];

  monitoredCharacteristics = [(HMDWidgetTimelineRefresher *)self monitoredCharacteristics];
  v6 = [monitoredCharacteristics na_map:&__block_literal_global_364];

  v7 = [v4 setByAddingObjectsFromSet:v6];

  return v7;
}

- (id)characteristicsMonitoredForWidgets
{
  if (self)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    monitoredCharacteristicsMapByWidget = [self monitoredCharacteristicsMapByWidget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke;
    v8[3] = &unk_278674CE8;
    v8[4] = v2;
    [monitoredCharacteristicsMapByWidget enumerateKeysAndObjectsUsingBlock:v8];

    monitoredActionSetsMapByWidget = [self monitoredActionSetsMapByWidget];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke_2;
    v7[3] = &unk_278674F00;
    v7[4] = self;
    v7[5] = v2;
    [monitoredActionSetsMapByWidget enumerateKeysAndObjectsUsingBlock:v7];

    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __65__HMDWidgetTimelineRefresher_accessoriesMonitoredForReachability__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 accessory];

  return v3;
}

void __64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) actionSetsByHome:?];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v2 objectForKey:v7];
        if (([*(a1 + 32) evaluateActionSetStateOnPrimaryEnabledForHome:v7] & 1) == 0)
        {
          v9 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v8];
          v10 = [v9 na_map:&__block_literal_global_359];

          [*(a1 + 40) unionSet:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)characteristicsFromActionSets:(void *)sets
{
  if (sets)
  {
    var28[0] = MEMORY[0x277D85DD0];
    var28[1] = 3221225472;
    var28[2] = __60__HMDWidgetTimelineRefresher_characteristicsFromActionSets___block_invoke;
    var28[3] = &unk_278674FA8;
    var28[4] = sets;
    sets = [a2 na_flatMap:var28];
    v2 = var28[6];
  }

  return sets;
}

HMDWidgetMonitoredCharacteristic *__64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDWidgetMonitoredCharacteristic alloc] initWithCharacteristic:v2 reachabilityMonitored:0];

  return v3;
}

id __60__HMDWidgetTimelineRefresher_characteristicsFromActionSets___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [a2 actions];
    v3 = [v2 na_map:&__block_literal_global_368_60461];

    v4 = [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __59__HMDWidgetTimelineRefresher_characteristicsFromActionSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 characteristic];

  return v5;
}

- (void)updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:(int64_t)s afterChangesFromBlock:(id)block
{
  v64 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  characteristicsMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  actionSetsMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)self actionSetsMonitoredForWidgets];
  accessoriesMonitoredForReachability = [(HMDWidgetTimelineRefresher *)self accessoriesMonitoredForReachability];
  attributesMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)self attributesMonitoredForWidgets];
  v45 = blockCopy;
  (*(blockCopy + 2))(blockCopy);
  characteristicsMonitoredForWidgets2 = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  actionSetsMonitoredForWidgets2 = [(HMDWidgetTimelineRefresher *)self actionSetsMonitoredForWidgets];
  accessoriesMonitoredForReachability2 = [(HMDWidgetTimelineRefresher *)self accessoriesMonitoredForReachability];
  attributesMonitoredForWidgets2 = [(HMDWidgetTimelineRefresher *)self attributesMonitoredForWidgets];
  v42 = attributesMonitoredForWidgets;
  [(HMDWidgetTimelineRefresher *)self updateNotificationRegistrationWithPreviousAttributes:attributesMonitoredForWidgets currentAttributes:attributesMonitoredForWidgets2];
  v10 = actionSetsMonitoredForWidgets;
  v11 = actionSetsMonitoredForWidgets2;
  v46 = v10;
  if (self)
  {
    v12 = [v10 na_setByRemovingObjectsFromSet:v11];
    v39 = [v11 na_setByRemovingObjectsFromSet:v10];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v58;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v57 + 1) + 8 * i);
          home = [v18 home];
          actionSetStateSubscriptionManager = [home actionSetStateSubscriptionManager];
          uuid = [v18 uuid];
          [actionSetStateSubscriptionManager stopMonitoringActionSetUUID:uuid observer:self];
        }

        v15 = [v13 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v15);
    }

    sCopy = s;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = v39;
    v23 = [v22 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v54;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v53 + 1) + 8 * j);
          home2 = [v27 home];
          actionSetStateSubscriptionManager2 = [home2 actionSetStateSubscriptionManager];
          uuid2 = [v27 uuid];
          [actionSetStateSubscriptionManager2 startMonitoringActionSetUUID:uuid2 observer:self];
        }

        v24 = [v22 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v24);
    }

    v10 = v46;
    s = sCopy;
  }

  [(HMDWidgetTimelineRefresher *)self updateNotificationRegistrationWithPreviousCharacteristics:characteristicsMonitoredForWidgets currentCharacteristics:characteristicsMonitoredForWidgets2 updateRequestQualityOfService:s];
  [(HMDWidgetTimelineRefresher *)self updateReachabilityMonitorWithPreviousAccessories:accessoriesMonitoredForReachability currentAccessories:accessoriesMonitoredForReachability2 completion:&__block_literal_global_349];
  v31 = [v10 na_setByRemovingObjectsFromSet:v11];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v50;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v49 + 1) + 8 * k);
        cachedIsOnStateByActionSet = [(HMDWidgetTimelineRefresher *)self cachedIsOnStateByActionSet];
        [cachedIsOnStateByActionSet removeObjectForKey:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v33);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)actionSetsMonitoredForWidgets
{
  if (self)
  {
    monitoredActionSetsMapByWidget = [self monitoredActionSetsMapByWidget];
    v2 = [monitoredActionSetsMapByWidget na_flatMap:&__block_literal_global_371];

    v3 = [MEMORY[0x277CBEB98] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)attributesMonitoredForWidgets
{
  if (self)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    monitoredMTRAttributesByWidget = [self monitoredMTRAttributesByWidget];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__HMDWidgetTimelineRefresher_attributesMonitoredForWidgets__block_invoke;
    v5[3] = &unk_278674CE8;
    v5[4] = v2;
    [monitoredMTRAttributesByWidget enumerateKeysAndObjectsUsingBlock:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)updateNotificationRegistrationWithPreviousAttributes:(void *)attributes currentAttributes:
{
  v110 = *MEMORY[0x277D85DE8];
  v5 = a2;
  attributesCopy = attributes;
  if (self)
  {
    v7 = [v5 na_setByRemovingObjectsFromSet:attributesCopy];
    v68 = [attributesCopy na_setByRemovingObjectsFromSet:v5];
    v76 = v7;
    if ([v7 count] || objc_msgSend(v68, "count"))
    {
      v67 = [attributesCopy na_setByIntersectingWithSet:v5];
      v63 = v5;
      v8 = [v5 na_map:&__block_literal_global_272_60472];
      v62 = attributesCopy;
      [attributesCopy na_map:&__block_literal_global_274];
      v70 = v61 = v8;
      [v8 na_setByRemovingObjectsFromSet:?];
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      obj = v101 = 0u;
      v77 = [obj countByEnumeratingWithState:&v98 objects:v109 count:16];
      if (v77)
      {
        v74 = *v99;
        do
        {
          for (i = 0; i != v77; ++i)
          {
            if (*v99 != v74)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v98 + 1) + 8 * i);
            deviceControllersByID = [self deviceControllersByID];
            v12 = [deviceControllersByID objectForKey:v10];

            if (v12)
            {
              v97[0] = MEMORY[0x277D85DD0];
              v97[1] = 3221225472;
              v97[2] = __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_275;
              v97[3] = &unk_278674D30;
              v79 = v10;
              v97[4] = v10;
              v13 = [v76 na_map:v97];
              v93 = 0u;
              v94 = 0u;
              v95 = 0u;
              v96 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v93 objects:v104 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v94;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v94 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v93 + 1) + 8 * j);
                    v20 = [MEMORY[0x277CBEB98] set];
                    [self monitorDeviceNodeID:v19 controller:v12 attributes:v20];
                  }

                  v16 = [v14 countByEnumeratingWithState:&v93 objects:v104 count:16];
                }

                while (v16);
              }

              [v12 shutdown];
              v21 = objc_autoreleasePoolPush();
              selfCopy = self;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = HMFGetLogIdentifier();
                *buf = 138543618;
                v106 = v24;
                v107 = 2112;
                v108 = v79;
                _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Removing controller for id: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v21);
              deviceControllersByID2 = [selfCopy deviceControllersByID];
              [deviceControllersByID2 removeObjectForKey:v79];

              devicesByController = [selfCopy devicesByController];
              [devicesByController removeObjectForKey:v12];
            }

            else
            {
              v27 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v29 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = HMFGetLogIdentifier();
                *buf = 138543618;
                v106 = v30;
                v107 = 2112;
                v108 = v10;
                _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Removed unknown controller id %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v27);
            }
          }

          v77 = [obj countByEnumeratingWithState:&v98 objects:v109 count:16];
        }

        while (v77);
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v64 = v70;
      v69 = [v64 countByEnumeratingWithState:&v89 objects:v103 count:16];
      if (v69)
      {
        v66 = *v90;
        do
        {
          v31 = 0;
          do
          {
            if (*v90 != v66)
            {
              objc_enumerationMutation(v64);
            }

            v32 = *(*(&v89 + 1) + 8 * v31);
            v33 = objc_autoreleasePoolPush();
            v88[0] = MEMORY[0x277D85DD0];
            v88[1] = 3221225472;
            v88[2] = __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_277;
            v88[3] = &unk_278674D58;
            v88[4] = v32;
            v34 = [v68 na_filter:v88];
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_2_279;
            v87[3] = &unk_278674D58;
            v87[4] = v32;
            v35 = [v76 na_filter:v87];
            v86[0] = MEMORY[0x277D85DD0];
            v86[1] = 3221225472;
            v86[2] = __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_3;
            v86[3] = &unk_278674D58;
            v86[4] = v32;
            v80 = [v67 na_filter:v86];
            if ([v34 count] || objc_msgSend(v35, "count"))
            {
              v36 = [v34 setByAddingObjectsFromSet:v35];
              v37 = [v36 na_map:&__block_literal_global_281_60475];

              v78 = v37;
              if ([v37 count])
              {
                v71 = v35;
                v72 = v34;
                v73 = v33;
                v75 = v31;
                v38 = [v34 setByAddingObjectsFromSet:v80];
                deviceControllersByID3 = [self deviceControllersByID];
                v40 = [deviceControllersByID3 objectForKey:v32];

                if (v40)
                {
                  goto LABEL_38;
                }

                v41 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v43 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v44 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v106 = v44;
                  v107 = 2112;
                  v108 = v32;
                  _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Creating and caching controller for id: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v41);
                v40 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v32];
                dataSource = [selfCopy3 dataSource];
                v46 = [dataSource matterDeviceControllerForTimelineRefresher:selfCopy3 withUUID:v40];

                if (v46)
                {
                  deviceControllersByID4 = [selfCopy3 deviceControllersByID];
                  [deviceControllersByID4 setObject:v46 forKey:v32];

                  v40 = v46;
LABEL_38:
                  v84 = 0u;
                  v85 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v48 = v78;
                  v49 = [v48 countByEnumeratingWithState:&v82 objects:v102 count:16];
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *v83;
                    do
                    {
                      for (k = 0; k != v50; ++k)
                      {
                        if (*v83 != v51)
                        {
                          objc_enumerationMutation(v48);
                        }

                        v53 = *(*(&v82 + 1) + 8 * k);
                        v81[0] = MEMORY[0x277D85DD0];
                        v81[1] = 3221225472;
                        v81[2] = __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_282;
                        v81[3] = &unk_278674DA0;
                        v81[4] = v53;
                        v54 = [v38 na_flatMap:v81];
                        [self monitorDeviceNodeID:v53 controller:v40 attributes:v54];
                      }

                      v50 = [v48 countByEnumeratingWithState:&v82 objects:v102 count:16];
                    }

                    while (v50);
                  }
                }

                else
                {
                  v55 = objc_autoreleasePoolPush();
                  v56 = selfCopy3;
                  v57 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    v58 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v106 = v58;
                    v107 = 2112;
                    v108 = v32;
                    _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@No controller for ID: %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v55);
                }

                v33 = v73;
                v31 = v75;
                v35 = v71;
                v34 = v72;
              }
            }

            objc_autoreleasePoolPop(v33);
            ++v31;
          }

          while (v31 != v69);
          v59 = [v64 countByEnumeratingWithState:&v89 objects:v103 count:16];
          v69 = v59;
        }

        while (v59);
      }

      attributesCopy = v62;
      v5 = v63;
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)updateNotificationRegistrationWithPreviousCharacteristics:(void *)characteristics currentCharacteristics:(uint64_t)currentCharacteristics updateRequestQualityOfService:
{
  v130 = *MEMORY[0x277D85DE8];
  v6 = a2;
  characteristicsCopy = characteristics;
  if (self)
  {
    v95 = characteristicsCopy;
    v8 = characteristicsCopy;
    v96 = v6;
    v9 = [v6 na_map:&__block_literal_global_352];
    v98 = v8;
    v10 = [v8 na_map:&__block_literal_global_354];
    v11 = [v9 na_setByRemovingObjectsFromSet:v10];
    v12 = [v10 na_setByRemovingObjectsFromSet:v9];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v113 objects:buf count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v114;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v114 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v113 + 1) + 8 * i);
          clientIdentifierForExplicitlyMonitoredCharacteristics = [self clientIdentifierForExplicitlyMonitoredCharacteristics];
          [v18 registerForAccessoryReachabilityNotifications:0 registrationIdentifier:clientIdentifierForExplicitlyMonitoredCharacteristics];
        }

        v15 = [v13 countByEnumeratingWithState:&v113 objects:buf count:16];
      }

      while (v15);
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v109 objects:v125 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v110;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v110 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v109 + 1) + 8 * j);
          clientIdentifierForExplicitlyMonitoredCharacteristics2 = [self clientIdentifierForExplicitlyMonitoredCharacteristics];
          [v25 registerForAccessoryReachabilityNotifications:1 registrationIdentifier:clientIdentifierForExplicitlyMonitoredCharacteristics2];
        }

        v22 = [v20 countByEnumeratingWithState:&v109 objects:v125 count:16];
      }

      while (v22);
    }

    v6 = v96;
    v27 = [v96 na_map:&__block_literal_global_357];
    v28 = [v98 na_map:&__block_literal_global_357];
    v29 = [v27 na_setByRemovingObjectsFromSet:v28];
    v94 = v28;
    v30 = [v28 na_setByRemovingObjectsFromSet:v27];
    if ([v29 count] || objc_msgSend(v30, "count"))
    {
      v92 = v30;
      v93 = v27;
      if ([v29 count])
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v34;
          v128 = 2112;
          v129 = v29;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications and removing cached value for characteristics: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        clientIdentifierForExplicitlyMonitoredCharacteristics3 = [selfCopy clientIdentifierForExplicitlyMonitoredCharacteristics];
        [(HMDWidgetTimelineRefresher *)selfCopy setNotificationEnabled:v29 forCharacteristics:clientIdentifierForExplicitlyMonitoredCharacteristics3 clientIdentifier:?];

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v36 = v29;
        v37 = v29;
        v38 = [v37 countByEnumeratingWithState:&v105 objects:v118 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v106;
          do
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v106 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v105 + 1) + 8 * k);
              cachedValueByCharacteristic = [selfCopy cachedValueByCharacteristic];
              [cachedValueByCharacteristic removeObjectForKey:v42];
            }

            v39 = [v37 countByEnumeratingWithState:&v105 objects:v118 count:16];
          }

          while (v39);
        }

        v29 = v36;
        v30 = v92;
        v27 = v93;
      }

      if ([v30 count])
      {
        v91 = v29;
        v44 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v47;
          v128 = 2112;
          v129 = v30;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications and storing cached value for characteristics: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v48 = v30;
        v49 = [v48 countByEnumeratingWithState:&v101 objects:v117 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v102;
          do
          {
            for (m = 0; m != v50; ++m)
            {
              if (*v102 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v101 + 1) + 8 * m);
              cachedValueByCharacteristic2 = [selfCopy2 cachedValueByCharacteristic];
              value = [v53 value];
              [cachedValueByCharacteristic2 setObject:value forKey:v53];
            }

            v50 = [v48 countByEnumeratingWithState:&v101 objects:v117 count:16];
          }

          while (v50);
        }

        clientIdentifierForExplicitlyMonitoredCharacteristics4 = [selfCopy2 clientIdentifierForExplicitlyMonitoredCharacteristics];
        [(HMDWidgetTimelineRefresher *)selfCopy2 setNotificationEnabled:v48 forCharacteristics:clientIdentifierForExplicitlyMonitoredCharacteristics4 clientIdentifier:?];

        v57 = v48;
        v58 = objc_autoreleasePoolPush();
        v59 = selfCopy2;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v61;
          v128 = 2112;
          v129 = v57;
          _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@Reading characteristics: %@", buf, 0x16u);
        }

        v97 = v59;
        objc_autoreleasePoolPop(v58);
        strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v63 = v57;
        v64 = [v63 countByEnumeratingWithState:&v113 objects:buf count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v114;
          do
          {
            for (n = 0; n != v65; ++n)
            {
              if (*v114 != v66)
              {
                objc_enumerationMutation(v63);
              }

              v68 = *(*(&v113 + 1) + 8 * n);
              accessory = [v68 accessory];
              home = [accessory home];

              if (home)
              {
                v71 = [strongToStrongObjectsMapTable objectForKey:home];
                v72 = v71;
                if (v71)
                {
                  [v71 setByAddingObject:v68];
                }

                else
                {
                  [MEMORY[0x277CBEB98] setWithObject:v68];
                }
                v73 = ;
                [strongToStrongObjectsMapTable setObject:v73 forKey:home];
              }
            }

            v65 = [v63 countByEnumeratingWithState:&v113 objects:buf count:16];
          }

          while (v65);
        }

        v90 = v63;

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v74 = strongToStrongObjectsMapTable;
        v75 = [v74 countByEnumeratingWithState:&v109 objects:v125 count:16];
        v76 = v97;
        if (v75)
        {
          v77 = v75;
          v99 = *v110;
          do
          {
            for (ii = 0; ii != v77; ++ii)
            {
              if (*v110 != v99)
              {
                objc_enumerationMutation(v74);
              }

              v79 = *(*(&v109 + 1) + 8 * ii);
              v80 = [v74 objectForKey:v79];
              allObjects = [v80 allObjects];
              v82 = [allObjects na_map:&__block_literal_global_377];

              v83 = objc_autoreleasePoolPush();
              v84 = v76;
              v85 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
              {
                v86 = HMFGetLogIdentifier();
                v87 = [v82 count];
                *v119 = 138543874;
                v120 = v86;
                v121 = 2112;
                v122 = v79;
                v123 = 2048;
                v124 = v87;
                _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_INFO, "%{public}@Reading characteristic for each home: %@, count %lu", v119, 0x20u);

                v76 = v97;
              }

              objc_autoreleasePoolPop(v83);
              v88 = [v84 description];
              [v79 readCharacteristicValues:v82 source:1210 sourceForLogging:v88 qualityOfService:currentCharacteristics withCompletionHandler:0];
            }

            v77 = [v74 countByEnumeratingWithState:&v109 objects:v125 count:16];
          }

          while (v77);
        }

        v6 = v96;
        v30 = v92;
        v27 = v93;
        v29 = v91;
      }
    }

    characteristicsCopy = v95;
  }

  v89 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationEnabled:(void *)enabled forCharacteristics:(void *)characteristics clientIdentifier:
{
  v51 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  characteristicsCopy = characteristics;
  v8 = characteristicsCopy;
  selfCopy = self;
  if (self)
  {
    v35 = characteristicsCopy;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = enabledCopy;
    obj = enabledCopy;
    v10 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          accessory = [v14 accessory];
          if (accessory)
          {
            v16 = [strongToStrongObjectsMapTable objectForKey:accessory];
            v17 = v16;
            if (v16)
            {
              [v16 setByAddingObject:v14];
            }

            else
            {
              [MEMORY[0x277CBEB98] setWithObject:v14];
            }
            v18 = ;
            [strongToStrongObjectsMapTable setObject:v18 forKey:accessory];

            service = [v14 service];
            if (service)
            {
              v20 = a2 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              v21 = [selfCopy thresholdForCharacteristic:v14];
              if (v21)
              {
                array = [strongToStrongObjectsMapTable2 objectForKey:accessory];
                if (!array)
                {
                  array = [MEMORY[0x277CBEB18] array];
                  [strongToStrongObjectsMapTable2 setObject:array forKey:accessory];
                }

                v23 = [[HMDCharacteristicNotificationChangeThreshold alloc] initWithCharacteristic:v14 threshold:v21];
                [array addObject:v23];
              }
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v11);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = strongToStrongObjectsMapTable;
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
    v8 = v35;
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v41 + 1) + 8 * j);
          v30 = [v24 objectForKey:v29];
          v31 = [strongToStrongObjectsMapTable2 objectForKey:v29];
          v32 = [v31 copy];

          allObjects = [v30 allObjects];
          [v29 setNotificationsEnabled:a2 forCharacteristics:allObjects notificationChangeThresholds:v32 clientIdentifier:v35];
        }

        v26 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v26);
    }

    enabledCopy = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
}

id __101__HMDWidgetTimelineRefresher_updateMonitoredHomesWithPreviousCharacteristics_currentCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reachabilityMonitored])
  {
    v3 = [v2 characteristic];
    v4 = [v3 accessory];
    v5 = [v4 home];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __101__HMDWidgetTimelineRefresher_updateMonitoredHomesWithPreviousCharacteristics_currentCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reachabilityMonitored])
  {
    v3 = [v2 characteristic];
    v4 = [v3 accessory];
    v5 = [v4 home];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_275(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 controllerID];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = [v3 nodeID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_277(uint64_t a1, void *a2)
{
  v3 = [a2 controllerID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_2_279(uint64_t a1, void *a2)
{
  v3 = [a2 controllerID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 controllerID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __101__HMDWidgetTimelineRefresher_updateNotificationRegistrationWithPreviousAttributes_currentAttributes___block_invoke_282(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nodeID];
  LODWORD(a1) = [v4 isEqualToNumber:*(a1 + 32)];

  if (a1)
  {
    v5 = [v3 attributePaths];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleSelectedHomeChangedNotification
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling selected home changed notification. Refreshing timeline for configured widgets", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDWidgetTimelineRefresher *)selfCopy refreshTimelineForConfiguredWidgetsWithReason:?];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeSensingChangedNotification
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling home sensing changed notification. Refreshing timeline for configured widgets", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDWidgetTimelineRefresher *)selfCopy refreshTimelineForConfiguredWidgetsWithReason:?];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleNotifiedXPCClientsOfHomeConfigurationChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HMDWidgetTimelineRefresher_handleNotifiedXPCClientsOfHomeConfigurationChangeNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __92__HMDWidgetTimelineRefresher_handleNotifiedXPCClientsOfHomeConfigurationChangeNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 32) homeManager];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2048;
    v14 = [v7 generationCounter];
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@. Generation counter: %lu. Refreshing timeline for configured widgets", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForConfiguredWidgetsWithReason:?];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentHomeChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDWidgetTimelineRefresher_handleCurrentHomeChangeNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __66__HMDWidgetTimelineRefresher_handleCurrentHomeChangeNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    *buf = 0;
    *&buf[8] = 0;
    v7 = [*(a1 + 40) userInfo];
    v8 = [v7 hmf_UUIDForKey:@"HMDPreviousHomeUUIDKey"];

    if (v8)
    {
      v9 = [*(a1 + 40) userInfo];
      v10 = [v9 hmf_UUIDForKey:@"HMDPreviousHomeUUIDKey"];
      [v10 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v17 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v11 = [*(a1 + 40) userInfo];
    v12 = [v11 hmf_UUIDForKey:@"HMDCurrentHomeUUIDKey"];

    if (v12)
    {
      v13 = [*(a1 + 40) userInfo];
      v14 = [v13 hmf_UUIDForKey:@"HMDCurrentHomeUUIDKey"];
      [v14 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v16 = *buf;
    *buf = 138544642;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    v19 = 1040;
    v20 = 16;
    v21 = 2096;
    v22 = &v17;
    v23 = 1040;
    v24 = 16;
    v25 = 2096;
    v26 = &v16;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@. Previous: %{uuid_t}.16P, Current %{uuid_t}.16P. Refreshing timeline for configured widgets", buf, 0x36u);
  }

  objc_autoreleasePoolPop(v2);
  [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForConfiguredWidgetsWithReason:?];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryReachabilityChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v23 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(a1 + 40);
        v7 = *(*(&v26 + 1) + 8 * i);
        if (v6)
        {
          v8 = [v6 workQueue];
          dispatch_assert_queue_V2(v8);

          v9 = [MEMORY[0x277CBEB58] set];
          v10 = [v6 monitoredCharacteristicsMapByWidget];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke;
          v30[3] = &unk_278674F00;
          v11 = v7;
          v31 = v11;
          v12 = v9;
          v32 = v12;
          [v10 enumerateKeysAndObjectsUsingBlock:v30];

          v13 = [v6 monitoredActionSetsMapByWidget];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke_2;
          v35 = &unk_278674E18;
          v36 = v6;
          v37 = v11;
          v14 = v12;
          v38 = v14;
          [v13 enumerateKeysAndObjectsUsingBlock:buf];

          v15 = v38;
          v6 = v14;
        }

        [v2 unionSet:v6];
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling reachability change for relevant widgets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = *(a1 + 40);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke_325;
    v24[3] = &unk_278674EB0;
    v24[4] = v20;
    v24[5] = v2;
    v25 = *(a1 + 32);
    [(HMDWidgetTimelineRefresher *)v20 cleanUpRemovedWidgetsFromWidgets:v2 completion:v24];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke_325(id *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v4);

  [a1[5] minusSet:v3];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [a1[6] count];
    v10 = a1[5];
    v19 = 138543874;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline due to %ld accessory reachability changes for configured widgets: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [a1[5] na_map:&__block_literal_global_328];
  if ([v11 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v11 allObjects];
      v17 = [v16 componentsJoinedByString:{@", "}];
      v19 = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling reachability changed. Refreshing timeline for widget kinds: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDWidgetTimelineRefresher *)a1[4] refreshTimelineForWidgetKinds:v11 withReason:@"Accessory Reachability Changed" shouldCoalesce:0];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) characteristic];
        v12 = [v11 accessory];
        v13 = [v12 isEqual:*(a1 + 32)];

        if (v13)
        {
          [*(a1 + 40) addObject:v5];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

void __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) actionSetsByHome:a3];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v32 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v24 = v5;
    v22 = *v30;
    do
    {
      v10 = 0;
      v23 = v8;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v12 = [v6 objectForKey:v11];
        if (([*(a1 + 32) evaluateActionSetStateOnPrimaryEnabledForHome:v11] & 1) == 0)
        {
          v13 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v12];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            while (2)
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v25 + 1) + 8 * i) accessory];
                v20 = [v19 isEqual:*(a1 + 40)];

                if (v20)
                {
                  v5 = v24;
                  [*(a1 + 48) addObject:v24];

                  goto LABEL_20;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v9 = v22;
          v8 = v23;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v5 = v24;
    }

    while (v8);
  }

LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [(HMDWidgetTimelineRefresher *)self modifiedCharacteristicsFromNotification:notificationCopy];
  if ([v5 count])
  {
    workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = self;
    block[5] = v5;
    v14 = notificationCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      userInfo = [notificationCopy userInfo];
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = userInfo;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Characteristics changed notification does not include modified characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v2 workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [v2 monitoredCharacteristicsMapByWidget];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __91__HMDWidgetTimelineRefresher_relevantWidgetsForCharacteristics_outRelevantCharacteristics___block_invoke;
    v37 = &unk_278674ED8;
    v38 = v2;
    v8 = v3;
    v39 = v8;
    v9 = v5;
    v40 = v9;
    v10 = v6;
    v41 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:buf];

    v11 = [v2 monitoredActionSetsMapByWidget];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __91__HMDWidgetTimelineRefresher_relevantWidgetsForCharacteristics_outRelevantCharacteristics___block_invoke_2;
    v32[3] = &unk_278674ED8;
    v32[4] = v2;
    v33 = v8;
    v12 = v9;
    v34 = v12;
    v35 = v10;
    v13 = v10;
    [v11 enumerateKeysAndObjectsUsingBlock:v32];

    v14 = v13;
    v15 = v35;
    v2 = v12;
  }

  else
  {
    v13 = 0;
  }

  v16 = v13;
  v17 = [v2 count];
  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Handling characteristic change for relevant widgets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = *(a1 + 32);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_317;
    v27[3] = &unk_278674E88;
    v27[4] = v23;
    v28 = v16;
    v29 = v2;
    v24 = *(a1 + 48);
    v30 = *(a1 + 40);
    v31 = v24;
    [(HMDWidgetTimelineRefresher *)v23 cleanUpRemovedWidgetsFromWidgets:v2 completion:v27];
  }

  else
  {
    if (v21)
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not handling characteristics changed notification because it is not relevant for current widgets", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_317(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [MEMORY[0x277CBEB58] set];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_2;
  v24[3] = &unk_278687EB0;
  v6 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v7 = [v6 na_filter:v24];
  if ([v7 count])
  {
    v8 = [*(a1 + 32) monitoredCharacteristicsMapByWidget];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_3;
    v23[3] = &unk_278674E18;
    v23[4] = *(a1 + 32);
    v23[5] = v7;
    v23[6] = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v23];
  }

  v9 = [*(a1 + 32) monitoredActionSetsMapByWidget];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_4;
  v22[3] = &unk_278674E18;
  v10 = *(a1 + 32);
  v22[4] = *(a1 + 48);
  v22[5] = v10;
  v22[6] = v5;
  [v9 enumerateKeysAndObjectsUsingBlock:v22];

  v11 = [v5 count];
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 64) name];
      *buf = 138544130;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@ and refreshing timeline. Updated characteristics: %@, for widgets: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v18 = [v5 na_map:&__block_literal_global_321];
    [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForWidgetKinds:v18 withReason:@"Characteristics changed" shouldCoalesce:0];
  }

  else
  {
    if (v15)
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 56);
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@No widgets need to be refreshed from this characteristics changed notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [*(a1 + 32) cachedValueByCharacteristic];
  v6 = [v5 objectForKey:v3];

  v7 = [*(a1 + 32) cachedValueByCharacteristic];
  v8 = v7;
  if (v4)
  {
    [v7 setObject:v4 forKey:v3];
  }

  else
  {
    [v7 removeObjectForKey:v3];
  }

  v9 = HMFEqualObjects();
  return v9 ^ 1u;
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsForMonitoredCharacteristics:a3];
  v6 = [v5 na_setByIntersectingWithSet:*(a1 + 40)];
  v7 = [v6 count];

  if (v7)
  {
    [*(a1 + 48) addObject:v8];
  }
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_4(id *a1, void *a2, void *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([a1[4] containsObject:v7])
  {
    v21 = a4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [a1[5] cachedIsOnStateByActionSet];
          v16 = [v15 objectForKey:v14];

          v17 = [a1[5] actionSetIsOn:v14];
          if (!v16 || v17 != [v16 BOOLValue])
          {
            v18 = [a1[5] cachedIsOnStateByActionSet];
            v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
            [v18 setObject:v19 forKey:v14];

            [a1[6] addObject:v7];
            *v21 = 1;

            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)characteristicsForMonitoredCharacteristics:(void *)characteristics
{
  if (characteristics)
  {
    characteristics = [a2 na_map:&__block_literal_global_357];
    v2 = vars8;
  }

  return characteristics;
}

void __91__HMDWidgetTimelineRefresher_relevantWidgetsForCharacteristics_outRelevantCharacteristics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsForMonitoredCharacteristics:a3];
  v6 = [v5 na_setByIntersectingWithSet:*(a1 + 40)];

  if ([v6 count])
  {
    [*(a1 + 48) addObject:v7];
    [*(a1 + 56) unionSet:v6];
  }
}

void __91__HMDWidgetTimelineRefresher_relevantWidgetsForCharacteristics_outRelevantCharacteristics___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) actionSetsByHome:a3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, v16}];
        if (([*(a1 + 32) evaluateActionSetStateOnPrimaryEnabledForHome:v11] & 1) == 0)
        {
          v13 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v12];
          v14 = [v13 na_setByIntersectingWithSet:*(a1 + 40)];
          if (![v14 count])
          {

            goto LABEL_13;
          }

          [*(a1 + 48) addObject:v5];
          [*(a1 + 56) unionSet:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)modifiedCharacteristicsFromNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  userInfo2 = [notificationCopy userInfo];

  v7 = [userInfo2 hmf_arrayForKey:@"HMDModifiedPreviouslyNilValuedCharacteristicsKey"];

  if ([v5 count] || objc_msgSend(v7, "count"))
  {
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v7, "count") + objc_msgSend(v5, "count")}];
    if ([v5 count])
    {
      [v8 addObjectsFromArray:v5];
    }

    if ([v7 count])
    {
      [v8 addObjectsFromArray:v7];
    }

    v9 = [v8 copy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

- (void)_removePendingRequestValueForUUID:(id)d messageIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  pendingRequestValueByUUID = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  v8 = [pendingRequestValueByUUID objectForKey:dCopy];

  v9 = [v8 objectForKey:identifierCopy];

  if (v9)
  {
    pendingRequestValueByUUID2 = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
    [pendingRequestValueByUUID2 removeObjectForKey:dCopy];
  }
}

- (void)_setPendingRequestValue:(id)value forUUID:(id)d messageIdentifier:(id)identifier
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16[0] = value;
  v8 = MEMORY[0x277CBEAC0];
  identifierCopy2 = identifier;
  dCopy = d;
  valueCopy = value;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:&identifierCopy count:1];

  pendingRequestValueByUUID = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  [pendingRequestValueByUUID setObject:v12 forKey:dCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_getPendingWriteValueForUUID:(id)d
{
  dCopy = d;
  pendingRequestValueByUUID = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  v6 = [pendingRequestValueByUUID objectForKey:dCopy];

  objectEnumerator = [v6 objectEnumerator];
  nextObject = [objectEnumerator nextObject];

  return nextObject;
}

- (id)_firstErrorFromCharacteristicWriteResponsePayload:(id)payload
{
  v77 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (payloadCopy)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = payloadCopy;
    obj = payloadCopy;
    v5 = [obj countByEnumeratingWithState:&v58 objects:v76 count:16];
    if (v5)
    {
      v6 = *v59;
      v7 = *MEMORY[0x277CD2128];
      selfCopy = self;
      v33 = *v59;
      v45 = *MEMORY[0x277CD2128];
      do
      {
        v8 = 0;
        v32 = v5;
        do
        {
          if (*v59 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v58 + 1) + 8 * v8);
          v9 = [obj hmf_dictionaryForKey:v32];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v10 = v9;
          v36 = [v10 countByEnumeratingWithState:&v54 objects:v75 count:16];
          if (v36)
          {
            v11 = *v55;
            v34 = *v55;
            v35 = v8;
            v38 = v10;
            do
            {
              v12 = 0;
              do
              {
                if (*v55 != v11)
                {
                  objc_enumerationMutation(v10);
                }

                v37 = v12;
                v42 = *(*(&v54 + 1) + 8 * v12);
                v13 = [v10 hmf_dictionaryForKey:?];
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v14 = v13;
                v48 = [v14 countByEnumeratingWithState:&v50 objects:v74 count:16];
                if (v48)
                {
                  v15 = *v51;
                  v46 = *v51;
                  v47 = v14;
                  while (2)
                  {
                    for (i = 0; i != v48; ++i)
                    {
                      if (*v51 != v15)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v17 = *(*(&v50 + 1) + 8 * i);
                      v18 = [v14 hmf_dictionaryForKey:v17];
                      v19 = [v18 hmf_dataForKey:v7];
                      if (v19)
                      {
                        v20 = v19;
                        v21 = MEMORY[0x277CCAAC8];
                        v22 = objc_opt_class();
                        v49 = 0;
                        v23 = [v21 unarchivedObjectOfClass:v22 fromData:v20 error:&v49];
                        v24 = v49;
                        if (v24)
                        {
                          v25 = objc_autoreleasePoolPush();
                          selfCopy2 = self;
                          v27 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                          {
                            v28 = HMFGetLogIdentifier();
                            *buf = 138544642;
                            v63 = v28;
                            v64 = 2112;
                            v65 = v24;
                            v66 = 2112;
                            v67 = v41;
                            v68 = 2112;
                            v69 = v42;
                            v70 = 2112;
                            v71 = v17;
                            v72 = 2112;
                            v73 = obj;
                            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Error deserializing NSError: %@, for accessoryUUID: %@, serviceID: %@, characteristicID: %@, in payload: %@", buf, 0x3Eu);

                            self = selfCopy;
                          }

                          objc_autoreleasePoolPop(v25);
                          v7 = v45;
                          v15 = v46;
                          v14 = v47;
                        }

                        else
                        {
                          v43 = v23;
                        }

                        if (!v24)
                        {

                          v29 = v43;
                          goto LABEL_35;
                        }
                      }

                      else
                      {
                      }
                    }

                    v48 = [v14 countByEnumeratingWithState:&v50 objects:v74 count:16];
                    if (v48)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v12 = v37 + 1;
                v11 = v34;
                v8 = v35;
                v10 = v38;
              }

              while (v37 + 1 != v36);
              v36 = [v38 countByEnumeratingWithState:&v54 objects:v75 count:16];
            }

            while (v36);
          }

          ++v8;
          v6 = v33;
        }

        while (v8 != v32);
        v5 = [obj countByEnumeratingWithState:&v58 objects:v76 count:16];
        v6 = v33;
        v29 = 0;
      }

      while (v5);
    }

    else
    {
      v29 = 0;
    }

LABEL_35:

    payloadCopy = v39;
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)_clearExpiredActionSetPrimaryStateUpdates
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  actionSetsPendingPrimaryResidentStateUpdates = [(HMDWidgetTimelineRefresher *)self actionSetsPendingPrimaryResidentStateUpdates];
  v5 = [actionSetsPendingPrimaryResidentStateUpdates countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(actionSetsPendingPrimaryResidentStateUpdates);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        zeroUUID = [MEMORY[0x277CCAD78] zeroUUID];
        [(HMDWidgetTimelineRefresher *)self _removePendingRequestValueForUUID:v9 messageIdentifier:zeroUUID];

        ++v8;
      }

      while (v6 != v8);
      v6 = [actionSetsPendingPrimaryResidentStateUpdates countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  actionSetsPendingPrimaryResidentStateUpdates2 = [(HMDWidgetTimelineRefresher *)self actionSetsPendingPrimaryResidentStateUpdates];
  [(HMDWidgetTimelineRefresher *)self _refreshWidgetsIfActionSetsHaveChanged:actionSetsPendingPrimaryResidentStateUpdates2];

  actionSetsPendingPrimaryResidentStateUpdates3 = [(HMDWidgetTimelineRefresher *)self actionSetsPendingPrimaryResidentStateUpdates];
  [actionSetsPendingPrimaryResidentStateUpdates3 removeAllObjects];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_startActionSetPrimaryStateUpdateCoalesceTimerContextForActionSetUUID:(id)d expectedState:(id)state
{
  stateCopy = state;
  dCopy = d;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zeroUUID = [MEMORY[0x277CCAD78] zeroUUID];
  [(HMDWidgetTimelineRefresher *)self _setPendingRequestValue:stateCopy forUUID:dCopy messageIdentifier:zeroUUID];

  actionSetsPendingPrimaryResidentStateUpdates = [(HMDWidgetTimelineRefresher *)self actionSetsPendingPrimaryResidentStateUpdates];
  [actionSetsPendingPrimaryResidentStateUpdates addObject:dCopy];

  timerManager = [(HMDWidgetTimelineRefresher *)self timerManager];
  v11 = [timerManager startTimerWithTimeInterval:@"304578fe-8218-4be9-8afb-14ec282ab45b" andReplaceObject:30.0];
  [(HMDWidgetTimelineRefresher *)self setActionSetPrimaryStateUpdateCoalesceTimerContext:v11];
}

- (void)writeCharacteristicsWithWriteValueBySPIClientIdentifier:(id)identifier widgetKind:(id)kind message:(id)message completionGroup:(id)group completion:(id)completion
{
  v110 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  kindCopy = kind;
  messageCopy = message;
  group = group;
  completionCopy = completion;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
  homes = [homeManager homes];

  obj = homes;
  v62 = [homes countByEnumeratingWithState:&v84 objects:v102 count:16];
  if (v62)
  {
    v60 = *v85;
    *&v15 = 138544130;
    v55 = v15;
    v66 = messageCopy;
    do
    {
      v16 = 0;
      do
      {
        if (*v85 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v63 = v16;
        v17 = *(*(&v84 + 1) + 8 * v16);
        v18 = identifierCopy;
        v19 = v17;
        v64 = v19;
        if (self)
        {
          array = [MEMORY[0x277CBEB18] array];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          hapAccessories = [v19 hapAccessories];
          v68 = [hapAccessories countByEnumeratingWithState:&v96 objects:buf count:16];
          if (v68)
          {
            v67 = *v97;
            do
            {
              v21 = 0;
              do
              {
                if (*v97 != v67)
                {
                  objc_enumerationMutation(hapAccessories);
                }

                v69 = v21;
                v22 = *(*(&v96 + 1) + 8 * v21);
                v92 = 0u;
                v93 = 0u;
                v94 = 0u;
                v95 = 0u;
                services = [v22 services];
                v72 = [services countByEnumeratingWithState:&v92 objects:v104 count:16];
                if (v72)
                {
                  v71 = *v93;
                  do
                  {
                    v23 = 0;
                    do
                    {
                      if (*v93 != v71)
                      {
                        objc_enumerationMutation(services);
                      }

                      v73 = v23;
                      v24 = *(*(&v92 + 1) + 8 * v23);
                      v88 = 0u;
                      v89 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      characteristics = [v24 characteristics];
                      v26 = [characteristics countByEnumeratingWithState:&v88 objects:v103 count:16];
                      if (v26)
                      {
                        v27 = v26;
                        v28 = *v89;
                        do
                        {
                          for (i = 0; i != v27; ++i)
                          {
                            if (*v89 != v28)
                            {
                              objc_enumerationMutation(characteristics);
                            }

                            v30 = *(*(&v88 + 1) + 8 * i);
                            spiClientIdentifier = [v30 spiClientIdentifier];
                            v32 = [v18 objectForKeyedSubscript:spiClientIdentifier];

                            if (v32)
                            {
                              v33 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v30 value:v32 authorizationData:0 type:0];
                              [array addObject:v33];
                            }
                          }

                          v27 = [characteristics countByEnumeratingWithState:&v88 objects:v103 count:16];
                        }

                        while (v27);
                      }

                      v23 = v73 + 1;
                    }

                    while (v73 + 1 != v72);
                    v72 = [services countByEnumeratingWithState:&v92 objects:v104 count:16];
                  }

                  while (v72);
                }

                v21 = v69 + 1;
              }

              while (v69 + 1 != v68);
              v68 = [hapAccessories countByEnumeratingWithState:&v96 objects:buf count:16];
            }

            while (v68);
          }

          messageCopy = v66;
          v19 = v64;
        }

        else
        {
          array = 0;
        }

        if ([array count])
        {
          v34 = objc_autoreleasePoolPush();
          selfCopy = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            identifier = [messageCopy identifier];

            if (identifier)
            {
              identifier2 = [messageCopy identifier];
              [identifier2 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v101 = *buf;
            *buf = v55;
            *&buf[4] = v37;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v106 = 2096;
            v107 = &v101;
            v108 = 2112;
            v109 = array;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Writing characteristics: %@", buf, 0x26u);
          }

          v40 = selfCopy;
          objc_autoreleasePoolPop(v34);
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v74 = array;
          v41 = [v74 countByEnumeratingWithState:&v80 objects:v100 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v81;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v81 != v43)
                {
                  objc_enumerationMutation(v74);
                }

                v45 = *(*(&v80 + 1) + 8 * j);
                value = [v45 value];
                characteristic = [v45 characteristic];
                spiClientIdentifier2 = [characteristic spiClientIdentifier];
                identifier3 = [v66 identifier];
                [(HMDWidgetTimelineRefresher *)v40 _setPendingRequestValue:value forUUID:spiClientIdentifier2 messageIdentifier:identifier3];
              }

              v42 = [v74 countByEnumeratingWithState:&v80 objects:v100 count:16];
            }

            while (v42);
          }

          dispatch_group_enter(group);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke;
          aBlock[3] = &unk_278688A90;
          aBlock[4] = v40;
          v50 = v74;
          v76 = v50;
          messageCopy = v66;
          v51 = v66;
          v77 = v51;
          v78 = kindCopy;
          v79 = completionCopy;
          v52 = _Block_copy(aBlock);
          [v64 writeCharacteristicValues:v50 message:v51 withCompletionHandler:v52];
        }

        v16 = v63 + 1;
      }

      while (v63 + 1 != v62);
      v53 = [obj countByEnumeratingWithState:&v84 objects:v102 count:16];
      v62 = v53;
    }

    while (v53);
  }

  v54 = *MEMORY[0x277D85DE8];
}

void __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke_2;
  v8[3] = &unk_278688B58;
  v5 = a1[5];
  v6 = a1[4];
  v9 = v5;
  v10 = v6;
  v11 = a1[6];
  v12 = v3;
  v13 = a1[7];
  v14 = a1[8];
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v30 + 1) + 8 * v6) characteristic];
        v9 = [v8 spiClientIdentifier];
        v10 = [*(a1 + 48) identifier];
        [v7 _removePendingRequestValueForUUID:v9 messageIdentifier:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v4);
  }

  v11 = *(a1 + 56);
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 40);
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v17 = [*(a1 + 48) identifier];

      if (v17)
      {
        v18 = [*(a1 + 48) identifier];
        [v18 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v35 = *buf;
      v22 = *(a1 + 32);
      v23 = *(a1 + 56);
      *buf = 138544386;
      *&buf[4] = v16;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v37 = 2096;
      v38 = &v35;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to write characteristics: %@, with error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v12);
    v24 = *(a1 + 40);
    v25 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 64)];
    [(HMDWidgetTimelineRefresher *)v24 refreshTimelineForWidgetKinds:v25 withReason:@"Characteristic Write Request Failed" shouldCoalesce:1];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v20 = [*(a1 + 48) identifier];

      if (v20)
      {
        v21 = [*(a1 + 48) identifier];
        [v21 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v34 = *buf;
      v26 = *(a1 + 32);
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v37 = 2096;
      v38 = &v34;
      v39 = 2112;
      v40 = v26;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully wrote characteristics: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v27 = *(a1 + 56);
  result = (*(*(a1 + 72) + 16))();
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_getRequestsFromMessage:(id)message outCharacteristicWriteValueByUUUIDs:(id *)ds outExecuteActionSetUUUIDs:(id *)iDs outExecuteTurnOffActionSetUUIDs:(id *)uIDs
{
  v96 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (!ds)
  {
    _HMFPreconditionFailure();
    goto LABEL_60;
  }

  if (!iDs)
  {
LABEL_60:
    _HMFPreconditionFailure();
LABEL_61:
    _HMFPreconditionFailure();
  }

  if (!uIDs)
  {
    goto LABEL_61;
  }

  v11 = messageCopy;
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  selfCopy = self;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = [v11 arrayForKey:*MEMORY[0x277CD1550]];
  v14 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v80;
    v17 = *MEMORY[0x277CD1548];
    v18 = *MEMORY[0x277CD14F0];
    v19 = *MEMORY[0x277CD1510];
    v20 = *MEMORY[0x277CD1518];
    v72 = v11;
    v74 = array;
    v75 = dictionary;
LABEL_6:
    v21 = 0;
    while (1)
    {
      if (*v80 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v79 + 1) + 8 * v21);
      v78 = 0;
      v23 = [v22 hmf_integerForKey:v17 error:&v78];
      v24 = v78;
      if (v24)
      {
        v37 = v24;
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        v11 = v72;
        dictionary = v75;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier = [v72 identifier];

          if (identifier)
          {
            identifier2 = [v72 identifier];
            [identifier2 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v94 = *buf;
          messagePayload = [v72 messagePayload];
          *buf = 138544130;
          *&buf[4] = v41;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v85 = 2096;
          v86 = &v94;
          v87 = 2112;
          v88 = messagePayload;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] request type is not set in payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v38);
        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v72 respondWithError:v25];
LABEL_56:
        v34 = array2;
        goto LABEL_57;
      }

      if (v23 == 2)
      {
        break;
      }

      if (v23 == 1)
      {
        v29 = [v22 hmf_UUIDForKey:v18];
        if (!v29)
        {
          v44 = objc_autoreleasePoolPush();
          v45 = selfCopy;
          v46 = HMFGetOSLogHandle();
          v11 = v72;
          dictionary = v75;
          v34 = array2;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            identifier3 = [v72 identifier];

            if (identifier3)
            {
              identifier4 = [v72 identifier];
              [identifier4 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v92 = *buf;
            messagePayload2 = [v72 messagePayload];
            *buf = 138544130;
            *&buf[4] = v47;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v85 = 2096;
            v86 = &v92;
            v87 = 2112;
            v88 = messagePayload2;
            v62 = "%{public}@[%{uuid_t}.16P] execute request missing UUID: %@";
            goto LABEL_50;
          }

          goto LABEL_52;
        }

        v25 = v29;
        v30 = v74;
LABEL_22:
        [v30 addObject:v25];
        goto LABEL_23;
      }

      if (v23)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = selfCopy;
        v46 = HMFGetOSLogHandle();
        v11 = v72;
        dictionary = v75;
        v34 = array2;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier5 = [v72 identifier];

          if (identifier5)
          {
            identifier6 = [v72 identifier];
            [identifier6 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v83 = *buf;
          messagePayload2 = [v72 messagePayload];
          *buf = 138544386;
          *&buf[4] = v47;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v85 = 2096;
          v86 = &v83;
          v87 = 2048;
          v88 = v23;
          v89 = 2112;
          v90 = messagePayload2;
          v62 = "%{public}@[%{uuid_t}.16P] unknown request type (%ld) in payload: %@";
          v63 = v46;
          v64 = 48;
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      v25 = [v22 hmf_UUIDForKey:v19];
      v26 = [v22 objectForKeyedSubscript:v20];
      v27 = v26;
      if (v25)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        v54 = objc_autoreleasePoolPush();
        v55 = selfCopy;
        v56 = HMFGetOSLogHandle();
        v11 = v72;
        dictionary = v75;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier7 = [v72 identifier];

          if (identifier7)
          {
            identifier8 = [v72 identifier];
            [identifier8 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v93 = *buf;
          messagePayload3 = [v72 messagePayload];
          *buf = 138544130;
          *&buf[4] = v57;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v85 = 2096;
          v86 = &v93;
          v87 = 2112;
          v88 = messagePayload3;
          _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] characteristic write request missing UUID or write value: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v54);
        v66 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v72 respondWithError:v66];

        v37 = 0;
        goto LABEL_56;
      }

      [v75 setObject:v26 forKeyedSubscript:v25];

LABEL_23:
      if (v15 == ++v21)
      {
        v15 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
        v11 = v72;
        array = v74;
        dictionary = v75;
        if (v15)
        {
          goto LABEL_6;
        }

        goto LABEL_25;
      }
    }

    v31 = [v22 hmf_UUIDForKey:v18];
    if (!v31)
    {
      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      v11 = v72;
      dictionary = v75;
      v34 = array2;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        identifier9 = [v72 identifier];

        if (identifier9)
        {
          identifier10 = [v72 identifier];
          [identifier10 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v91 = *buf;
        messagePayload2 = [v72 messagePayload];
        *buf = 138544130;
        *&buf[4] = v47;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        v85 = 2096;
        v86 = &v91;
        v87 = 2112;
        v88 = messagePayload2;
        v62 = "%{public}@[%{uuid_t}.16P] execute off request missing UUID: %@";
LABEL_50:
        v63 = v46;
        v64 = 38;
LABEL_51:
        _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, v62, buf, v64);
      }

LABEL_52:

      objc_autoreleasePoolPop(v44);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v11 respondWithError:v25];
      v37 = 0;
LABEL_57:

      v36 = 0;
      array = v74;
      goto LABEL_58;
    }

    v25 = v31;
    v30 = array2;
    goto LABEL_22;
  }

LABEL_25:

  v32 = dictionary;
  *dsCopy = dictionary;
  v33 = array;
  *iDsCopy = array;
  v34 = array2;
  v35 = array2;
  *uIDsCopy = array2;
  v36 = 1;
LABEL_58:

  v67 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)reachabilityByAccessorySPIClientIdentifierForCharacteristics:(id)characteristics
{
  v42 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v4 = [characteristicsCopy na_map:&__block_literal_global_288_60538];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v28)
  {
    v6 = *v30;
    v25 = *v30;
    selfCopy = self;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        reachabilityMonitor = [(HMDWidgetTimelineRefresher *)self reachabilityMonitor];
        v10 = [reachabilityMonitor isAccessoryReachable:v8];

        v11 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = dictionary;
          v15 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          spiClientIdentifier = [v8 spiClientIdentifier];

          if (spiClientIdentifier)
          {
            spiClientIdentifier2 = [v8 spiClientIdentifier];
            [spiClientIdentifier2 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v33 = *buf;
          name = [v8 name];
          v19 = HMFBooleanToString();
          *buf = 138544386;
          *&buf[4] = v15;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v35 = 2096;
          v36 = &v33;
          v37 = 2112;
          v38 = name;
          v39 = 2112;
          v40 = v19;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Accessory spiClientIdentifier %{uuid_t}.16P, Name: %@, isRemotelyReachable: %@", buf, 0x30u);

          dictionary = v14;
          v6 = v25;
          self = selfCopy;
        }

        objc_autoreleasePoolPop(v11);
        v20 = [MEMORY[0x277CCABB0] numberWithBool:v10];
        spiClientIdentifier3 = [v8 spiClientIdentifier];
        [dictionary setObject:v20 forKeyedSubscript:spiClientIdentifier3];
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v28);
  }

  v22 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)valueByCharacteristicSPIClientIdentifierForCharacteristics:(id)characteristics
{
  v54 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = characteristicsCopy;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (v34)
  {
    v7 = *v36;
    *&v6 = 138545154;
    v25 = v6;
    selfCopy = self;
    v28 = dictionary;
    v26 = *v36;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        spiClientIdentifier = [v9 spiClientIdentifier];
        v11 = [(HMDWidgetTimelineRefresher *)self _getPendingWriteValueForUUID:spiClientIdentifier];

        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v33 = v12;
          v32 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          spiClientIdentifier2 = [v9 spiClientIdentifier];

          if (spiClientIdentifier2)
          {
            spiClientIdentifier3 = [v9 spiClientIdentifier];
            [spiClientIdentifier3 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v39 = *buf;
          instanceID = [v9 instanceID];
          type = [v9 type];
          v18 = HAPShortUUIDType();
          characteristicTypeDescription = [v9 characteristicTypeDescription];
          value = [v9 value];
          *buf = v25;
          *&buf[4] = v32;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v41 = 2096;
          v42 = &v39;
          v43 = 2112;
          v44 = instanceID;
          v45 = 2112;
          v46 = v18;
          v47 = 2112;
          v48 = characteristicTypeDescription;
          v49 = 2112;
          v50 = value;
          v51 = 2112;
          v52 = v11;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic spiClientIdentifier: %{uuid_t}.16P, IID: %@, Type/Desc: %@/%@, value: %@, pendingWriteValue: %@", buf, 0x4Eu);

          self = selfCopy;
          dictionary = v28;
          v7 = v26;
          v12 = v33;
        }

        objc_autoreleasePoolPop(v12);
        value2 = v11;
        if (!v11)
        {
          value2 = [v9 value];
          v30 = value2;
        }

        spiClientIdentifier4 = [v9 spiClientIdentifier];
        [dictionary setObject:value2 forKeyedSubscript:spiClientIdentifier4];

        if (!v11)
        {
        }
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v53 count:16];
    }

    while (v34);
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)monitorDeviceNodeID:(id)d controller:(id)controller attributes:(id)attributes
{
  dCopy = d;
  controllerCopy = controller;
  attributesCopy = attributes;
  v11 = [attributesCopy count];
  devicesByController = [(HMDWidgetTimelineRefresher *)self devicesByController];
  array = [devicesByController objectForKey:controllerCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      devicesByController2 = [(HMDWidgetTimelineRefresher *)self devicesByController];
      [devicesByController2 setObject:array forKey:controllerCopy];
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__HMDWidgetTimelineRefresher_monitorDeviceNodeID_controller_attributes___block_invoke;
  v20[3] = &unk_278674DC8;
  v15 = dCopy;
  v21 = v15;
  v16 = [array na_firstObjectPassingTest:v20];
  if (!v16)
  {
    v17 = [MEMORY[0x277CD5310] deviceWithNodeID:v15 controller:controllerCopy];
    if (!v11)
    {
      goto LABEL_10;
    }

    [array addObject:v17];
LABEL_9:
    workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
    allObjects = [attributesCopy allObjects];
    [v17 addDelegate:self queue:workQueue interestedPathsForAttributes:allObjects interestedPathsForEvents:MEMORY[0x277CBEBF8]];

LABEL_12:
    goto LABEL_13;
  }

  v17 = v16;
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v17 removeDelegate:self];
  [array removeObject:v17];
  if ([array hmf_isEmpty])
  {
    workQueue = [(HMDWidgetTimelineRefresher *)self devicesByController];
    [workQueue removeObjectForKey:controllerCopy];
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t __72__HMDWidgetTimelineRefresher_monitorDeviceNodeID_controller_attributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 nodeID];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (void)updateMonitoredMTRAttributes:(id)attributes forWidget:(id)widget
{
  v30 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  widgetCopy = widget;
  monitoredMTRAttributesByWidget = [(HMDWidgetTimelineRefresher *)self monitoredMTRAttributesByWidget];
  v9 = [monitoredMTRAttributesByWidget objectForKeyedSubscript:widgetCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  v12 = v11;

  v13 = [attributesCopy isEqualToSet:v12];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = widgetCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Monitored attributes did not change for widget %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    if (v17)
    {
      v19 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v19;
      v26 = 2112;
      v27 = widgetCopy;
      v28 = 2112;
      v29 = attributesCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Monitored attributes changed for widget %@ to %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    attributesMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)selfCopy attributesMonitoredForWidgets];
    monitoredMTRAttributesByWidget2 = [(HMDWidgetTimelineRefresher *)selfCopy monitoredMTRAttributesByWidget];
    [monitoredMTRAttributesByWidget2 setObject:attributesCopy forKeyedSubscript:widgetCopy];

    attributesMonitoredForWidgets2 = [(HMDWidgetTimelineRefresher *)selfCopy attributesMonitoredForWidgets];
    [(HMDWidgetTimelineRefresher *)selfCopy updateNotificationRegistrationWithPreviousAttributes:attributesMonitoredForWidgets currentAttributes:attributesMonitoredForWidgets2];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleMonitorMTRAttributes:(id)attributes
{
  v52 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v5 = objc_autoreleasePoolPush();
  v6 = [attributesCopy stringForKey:*MEMORY[0x277CD1558]];
  if (!v6)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier = [attributesCopy identifier];

      if (identifier)
      {
        identifier2 = [attributesCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v50 = *buf;
      messagePayload = [attributesCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v21;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v50;
      *&buf[28] = 2112;
      *&buf[30] = messagePayload;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget identifier in mtr attribute message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v18);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [attributesCopy respondWithError:v7];
    goto LABEL_36;
  }

  v7 = v6;
  v8 = [attributesCopy stringForKey:*MEMORY[0x277CD1560]];
  if (!v8)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier3 = [attributesCopy identifier];

      if (identifier3)
      {
        identifier4 = [attributesCopy identifier];
        [identifier4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v49 = *buf;
      messagePayload2 = [attributesCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v27;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v49;
      *&buf[28] = 2112;
      *&buf[30] = messagePayload2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in mtr attribute message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v24);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [attributesCopy respondWithError:v9];
    goto LABEL_35;
  }

  v9 = v8;
  v10 = [attributesCopy dataForKey:*MEMORY[0x277CD1538]];
  if (!v10)
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier5 = [attributesCopy identifier];

      if (identifier5)
      {
        identifier6 = [attributesCopy identifier];
        [identifier6 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v48 = *buf;
      messagePayload3 = [attributesCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v33;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v48;
      *&buf[28] = 2112;
      *&buf[30] = messagePayload3;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find attributes data in mtr attribute message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v30);
    v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [attributesCopy respondWithError:v43];

LABEL_35:
LABEL_36:

    objc_autoreleasePoolPop(v5);
    goto LABEL_37;
  }

  v11 = v10;
  v47 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v10 error:&v47];
  v13 = v47;
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 == 0;
  }

  v15 = !v14;
  v46 = v15;
  if (v14)
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v39 = v45 = v36;
      *buf = 138543874;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      *&buf[24] = v13;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode attributes for widget: %@ with error: %@", buf, 0x20u);

      v36 = v45;
    }

    objc_autoreleasePoolPop(v36);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [attributesCopy respondWithError:v16];
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] setWithArray:v12];
    v17 = [[HMDWidget alloc] initWithIdentifier:v7 kind:v9];
    [(HMDWidgetTimelineRefresher *)self updateMonitoredMTRAttributes:v16 forWidget:v17];
  }

  objc_autoreleasePoolPop(v5);
  if (v46)
  {
    [attributesCopy respondWithSuccess];
  }

LABEL_37:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchStateForActionSets:(id)sets
{
  v41 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  v5 = [setsCopy arrayForKey:*MEMORY[0x277CD14F8]];
  if (v5)
  {
    v6 = [(HMDWidgetTimelineRefresher *)self actionSetsFromSPIClientIdentifiers:v5];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier = [setsCopy identifier];

      if (identifier)
      {
        identifier2 = [setsCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v39 = *buf;
      *buf = 138544130;
      *&buf[4] = v10;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v39;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to fetch action sets for: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDWidgetTimelineRefresher *)selfCopy updateCachedIsOnStateForActionSets:v6];
    v37[0] = *MEMORY[0x277CD1508];
    v19 = [(HMDWidgetTimelineRefresher *)selfCopy cachedIsOnStateBySPIClientIdentifierForActionSets:v6];
    v38[0] = v19;
    v37[1] = *MEMORY[0x277CD1500];
    v20 = [(HMDWidgetTimelineRefresher *)selfCopy didExecuteFailBySPIClientIdentifierForActionSets:v6];
    v38[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      name = [setsCopy name];
      *buf = 0;
      *&buf[8] = 0;
      identifier3 = [setsCopy identifier];

      if (identifier3)
      {
        identifier4 = [setsCopy identifier];
        [identifier4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v31 = *buf;
      *buf = 138544386;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = name;
      *&buf[22] = 1040;
      *&buf[24] = 16;
      v33 = 2096;
      v34 = &v31;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v22);
    [setsCopy respondWithPayload:v21];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier5 = [setsCopy identifier];

      if (identifier5)
      {
        identifier6 = [setsCopy identifier];
        [identifier6 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v40 = *buf;
      messagePayload = [setsCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v16;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v40;
      v33 = 2112;
      v34 = messagePayload;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find action set UUIDs in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v13);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [setsCopy respondWithError:v6];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)actionSetsFromSPIClientIdentifiers:(void *)identifiers
{
  v3 = a2;
  if (identifiers)
  {
    homeManager = [identifiers homeManager];
    homes = [homeManager homes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke;
    v8[3] = &unk_278674E60;
    v9 = v3;
    v6 = [homes na_flatMap:v8];

    identifiers = [MEMORY[0x277CBEB98] setWithArray:v6];
  }

  return identifiers;
}

- (void)updateCachedIsOnStateForActionSets:(void *)sets
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (sets)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          cachedIsOnStateByActionSet = [sets cachedIsOnStateByActionSet];
          v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(sets, "actionSetIsOn:", v9)}];
          [cachedIsOnStateByActionSet setObject:v11 forKey:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)cachedIsOnStateBySPIClientIdentifierForActionSets:(void *)sets
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = v3;
  if (sets)
  {
    v4 = v3;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v4;
    v28 = [obj countByEnumeratingWithState:&v29 objects:v46 count:16];
    if (v28)
    {
      v27 = *v30;
      v25 = dictionary;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v29 + 1) + 8 * i);
          uuid = [v7 uuid];
          v9 = [sets _getPendingWriteValueForUUID:uuid];

          cachedIsOnStateByActionSet = [sets cachedIsOnStateByActionSet];
          v11 = [cachedIsOnStateByActionSet objectForKey:v7];

          v12 = objc_autoreleasePoolPush();
          setsCopy = sets;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            spiClientIdentifier = [v7 spiClientIdentifier];

            if (spiClientIdentifier)
            {
              spiClientIdentifier2 = [v7 spiClientIdentifier];
              [spiClientIdentifier2 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v34 = *buf;
            *buf = 0;
            *&buf[8] = 0;
            uuid2 = [v7 uuid];

            if (uuid2)
            {
              uuid3 = [v7 uuid];
              [uuid3 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v33 = *buf;
            *buf = 138544898;
            *&buf[4] = v15;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v36 = 2096;
            v37 = &v34;
            v38 = 1040;
            v39 = 16;
            v40 = 2096;
            v41 = &v33;
            v42 = 2112;
            v43 = v9;
            v44 = 2112;
            v45 = v11;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Action Set spiClientIdentifier: %{uuid_t}.16P, UUID: %{uuid_t}.16P, pendingState: %@, cachedState: %@", buf, 0x40u);

            dictionary = v25;
          }

          objc_autoreleasePoolPop(v12);
          if (v9)
          {
            v20 = v9;
          }

          else
          {
            v20 = v11;
          }

          spiClientIdentifier3 = [v7 spiClientIdentifier];
          [dictionary setObject:v20 forKeyedSubscript:spiClientIdentifier3];
        }

        v28 = [obj countByEnumeratingWithState:&v29 objects:v46 count:16];
      }

      while (v28);
    }
  }

  else
  {
    dictionary = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)didExecuteFailBySPIClientIdentifierForActionSets:(void *)sets
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = v3;
  if (sets)
  {
    v4 = v3;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          cachedActionSetExecuteErrorByUUID = [sets cachedActionSetExecuteErrorByUUID];
          uuid = [v11 uuid];
          v14 = [cachedActionSetExecuteErrorByUUID objectForKeyedSubscript:uuid];

          if (v14)
          {
            spiClientIdentifier = [v11 spiClientIdentifier];
            [dictionary setObject:&unk_283E722F0 forKeyedSubscript:spiClientIdentifier];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    dictionary = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

id __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionSets];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke_2;
  v6[3] = &unk_27867AF28;
  v7 = *(a1 + 32);
  v4 = [v3 na_filter:v6];

  return v4;
}

uint64_t __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 spiClientIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)handleMonitorActionSetsForWidget:(id)widget
{
  v64 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  v5 = [widgetCopy stringForKey:*MEMORY[0x277CD1558]];
  if (v5)
  {
    v6 = [widgetCopy stringForKey:*MEMORY[0x277CD1560]];
    if (v6)
    {
      v7 = [widgetCopy arrayForKey:*MEMORY[0x277CD14F8]];
      if (v7)
      {
        v8 = [[HMDWidget alloc] initWithIdentifier:v5 kind:v6];
        v9 = [(HMDWidgetTimelineRefresher *)self actionSetsFromSPIClientIdentifiers:v7];
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v52 = v9;
          v13 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier = [widgetCopy identifier];

          if (identifier)
          {
            identifier2 = [widgetCopy identifier];
            [identifier2 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v57 = *buf;
          *buf = 138544130;
          *&buf[4] = v13;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v57;
          *&buf[28] = 2112;
          *&buf[30] = v8;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to update action sets for widget: %@", buf, 0x26u);

          v9 = v52;
        }

        objc_autoreleasePoolPop(v10);
        [widgetCopy qualityOfService];
        v35 = v9;
        v36 = v8;
        if (selfCopy)
        {
          workQueue = [(HMDWidgetTimelineRefresher *)selfCopy workQueue];
          dispatch_assert_queue_V2(workQueue);

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __96__HMDWidgetTimelineRefresher_updateMonitoredActionSets_forWidget_updateRequestQualityOfService___block_invoke;
          *&buf[24] = &unk_27868A010;
          *&buf[32] = selfCopy;
          v62 = v35;
          v63 = v36;
          [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:33 afterChangesFromBlock:buf];
        }

        [(HMDWidgetTimelineRefresher *)selfCopy updateCachedIsOnStateForActionSets:v35];
        v55[0] = *MEMORY[0x277CD1508];
        v38 = [(HMDWidgetTimelineRefresher *)selfCopy cachedIsOnStateBySPIClientIdentifierForActionSets:v35];
        v56[0] = v38;
        v55[1] = *MEMORY[0x277CD1500];
        v39 = [(HMDWidgetTimelineRefresher *)selfCopy didExecuteFailBySPIClientIdentifierForActionSets:v35];
        v56[1] = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];

        v41 = objc_autoreleasePoolPush();
        v42 = selfCopy;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v51 = v41;
          v53 = v7;
          v50 = HMFGetLogIdentifier();
          name = [widgetCopy name];
          *buf = 0;
          *&buf[8] = 0;
          identifier3 = [widgetCopy identifier];

          if (identifier3)
          {
            identifier4 = [widgetCopy identifier];
            [identifier4 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v54 = *buf;
          *buf = 138544386;
          *&buf[4] = v50;
          *&buf[12] = 2112;
          *&buf[14] = name;
          *&buf[22] = 1040;
          *&buf[24] = 16;
          *&buf[28] = 2096;
          *&buf[30] = &v54;
          *&buf[38] = 2112;
          v62 = v40;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);

          v41 = v51;
          v7 = v53;
        }

        objc_autoreleasePoolPop(v41);
        [widgetCopy respondWithPayload:v40];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier5 = [widgetCopy identifier];

          if (identifier5)
          {
            identifier6 = [widgetCopy identifier];
            [identifier6 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v58 = *buf;
          messagePayload = [widgetCopy messagePayload];
          *buf = 138544130;
          *&buf[4] = v31;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v58;
          *&buf[28] = 2112;
          *&buf[30] = messagePayload;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find action set UUIDs in message payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v28);
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [widgetCopy respondWithError:v36];
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        identifier7 = [widgetCopy identifier];

        if (identifier7)
        {
          identifier8 = [widgetCopy identifier];
          [identifier8 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v59 = *buf;
        messagePayload2 = [widgetCopy messagePayload];
        *buf = 138544130;
        *&buf[4] = v25;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        *&buf[18] = 2096;
        *&buf[20] = &v59;
        *&buf[28] = 2112;
        *&buf[30] = messagePayload2;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v22);
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [widgetCopy respondWithError:v7];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier9 = [widgetCopy identifier];

      if (identifier9)
      {
        identifier10 = [widgetCopy identifier];
        [identifier10 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v60 = *buf;
      messagePayload3 = [widgetCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v60;
      *&buf[28] = 2112;
      *&buf[30] = messagePayload3;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget identifier in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v16);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [widgetCopy respondWithError:v6];
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __96__HMDWidgetTimelineRefresher_updateMonitoredActionSets_forWidget_updateRequestQualityOfService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  v3 = [*(a1 + 32) monitoredActionSetsMapByWidget];
  [v3 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)handlePerformRequests:(id)requests
{
  v176 = *MEMORY[0x277D85DE8];
  v138 = 0;
  v139 = 0;
  v137 = 0;
  requestsCopy = requests;
  v4 = [HMDWidgetTimelineRefresher _getRequestsFromMessage:"_getRequestsFromMessage:outCharacteristicWriteValueByUUUIDs:outExecuteActionSetUUUIDs:outExecuteTurnOffActionSetUUIDs:" outCharacteristicWriteValueByUUUIDs:? outExecuteActionSetUUUIDs:? outExecuteTurnOffActionSetUUIDs:?];
  v101 = 0;
  v102 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_110;
  }

  v99 = v5;
  v100 = [requestsCopy stringForKey:*MEMORY[0x277CD1560]];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (!v100)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *&buf[8] = 0;
      *buf = 0;
      identifier = [requestsCopy identifier];

      if (identifier)
      {
        identifier2 = [requestsCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v146 = *buf;
      messagePayload = [requestsCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v170 = 2096;
      v171 = &v146;
      v172 = 2112;
      v173 = messagePayload;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v106 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [requestsCopy respondWithError:v106];
    goto LABEL_109;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *&buf[8] = 0;
    *buf = 0;
    identifier3 = [requestsCopy identifier];

    if (identifier3)
    {
      identifier4 = [requestsCopy identifier];
      [identifier4 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v145 = *buf;
    *buf = 138544130;
    *&buf[4] = v9;
    *&buf[12] = 1040;
    *&buf[14] = 16;
    v170 = 2096;
    v171 = &v145;
    v172 = 2112;
    v173 = v100;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to perform requests for kind: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v6);
  v15 = dispatch_group_create();
  v135[0] = 0;
  v135[1] = v135;
  v135[2] = 0x3032000000;
  v135[3] = __Block_byref_object_copy__60566;
  v135[4] = __Block_byref_object_dispose__60567;
  v136 = 0;
  v133[0] = 0;
  v133[1] = v133;
  v133[2] = 0x2020000000;
  v134 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke;
  aBlock[3] = &unk_278674CC0;
  v16 = v15;
  v130 = v16;
  v131 = v135;
  v132 = v133;
  v17 = _Block_copy(aBlock);
  v18 = selfCopy;
  [(HMDWidgetTimelineRefresher *)selfCopy writeCharacteristicsWithWriteValueBySPIClientIdentifier:v101 widgetKind:v100 message:requestsCopy completionGroup:v16 completion:v17];
  v111 = v102;
  v117 = v100;
  v19 = requestsCopy;
  group = v16;
  v115 = v17;
  if (selfCopy)
  {
    v109 = [(HMDWidgetTimelineRefresher *)selfCopy actionSetsFromSPIClientIdentifiers:v111];
    if ([v109 count])
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      obj = v109;
      v20 = [obj countByEnumeratingWithState:&v140 objects:buf count:16];
      if (v20)
      {
        v123 = *v141;
        v21 = *MEMORY[0x277CCF1A0];
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v141 != v123)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v140 + 1) + 8 * i);
            type = [v23 type];
            v25 = [type isEqualToString:v21];

            v26 = objc_autoreleasePoolPush();
            v27 = selfCopy;
            v28 = HMFGetOSLogHandle();
            v29 = v28;
            if (v25)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v30 = HMFGetLogIdentifier();
                *v174 = 0;
                *&v174[8] = 0;
                identifier5 = [v19 identifier];

                if (identifier5)
                {
                  identifier6 = [v19 identifier];
                  [identifier6 getUUIDBytes:v174];
                }

                else
                {
                  *v174 = *MEMORY[0x277D0F960];
                }

                v161 = *v174;
                *v174 = 138544130;
                *&v174[4] = v30;
                *&v174[12] = 1040;
                *&v174[14] = 16;
                *&v174[18] = 2096;
                *&v174[20] = &v161;
                *&v174[28] = 2112;
                *&v174[30] = v23;
                _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] We can't execute trigger-owned action set: %@", v174, 0x26u);
              }

              objc_autoreleasePoolPop(v26);
            }

            else
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v33 = HMFGetLogIdentifier();
                *v174 = 0;
                *&v174[8] = 0;
                identifier7 = [v19 identifier];

                if (identifier7)
                {
                  identifier8 = [v19 identifier];
                  [identifier8 getUUIDBytes:v174];
                }

                else
                {
                  *v174 = *MEMORY[0x277D0F960];
                }

                v147 = *v174;
                *v174 = 138544130;
                *&v174[4] = v33;
                *&v174[12] = 1040;
                *&v174[14] = 16;
                *&v174[18] = 2096;
                *&v174[20] = &v147;
                *&v174[28] = 2112;
                *&v174[30] = v23;
                _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Executing action set: %@", v174, 0x26u);
              }

              objc_autoreleasePoolPop(v26);
              uuid = [v23 uuid];
              identifier9 = [v19 identifier];
              [(HMDWidgetTimelineRefresher *)v27 _setPendingRequestValue:&unk_283E722F0 forUUID:uuid messageIdentifier:identifier9];

              [(HMDWidgetTimelineRefresher *)v27 _clearCachedErrorForActionSet:v23];
              dispatch_group_enter(group);
              v38 = [v19 mutableCopy];
              v157[0] = MEMORY[0x277D85DD0];
              v157[1] = 3221225472;
              v157[2] = __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke;
              v157[3] = &unk_278688A90;
              v157[4] = v27;
              v157[5] = v23;
              v158 = v19;
              v159 = v117;
              v160 = v115;
              [v38 setResponseHandler:v157];
              [v23 execute:v38];
            }
          }

          v20 = [obj countByEnumeratingWithState:&v140 objects:buf count:16];
        }

        while (v20);
      }
    }

    v18 = selfCopy;
  }

  v98 = v99;
  v104 = v117;
  v112 = v19;
  v106 = group;
  v105 = v115;
  if (!v18)
  {
    goto LABEL_105;
  }

  v97 = [(HMDWidgetTimelineRefresher *)selfCopy actionSetsFromSPIClientIdentifiers:v98];
  if (![v97 count])
  {
    goto LABEL_104;
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v107 = v97;
  v113 = [v107 countByEnumeratingWithState:&v161 objects:v157 count:16];
  if (!v113)
  {
    goto LABEL_103;
  }

  v108 = *MEMORY[0x277CCF1A0];
  v110 = *v162;
  v124 = *MEMORY[0x277CFE698];
  obja = *MEMORY[0x277CFE5B0];
  do
  {
    for (j = 0; j != v113; ++j)
    {
      if (*v162 != v110)
      {
        objc_enumerationMutation(v107);
      }

      v39 = *(*(&v161 + 1) + 8 * j);
      type2 = [v39 type];
      v41 = [type2 isEqualToString:v108];

      if (v41)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = selfCopy;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          identifier10 = [v112 identifier];

          if (identifier10)
          {
            identifier11 = [v112 identifier];
            [identifier11 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v156 = *buf;
          *buf = 138544130;
          *&buf[4] = v45;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v170 = 2096;
          v171 = &v156;
          v172 = 2112;
          v173 = v39;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] We can't execute trigger-owned action set: %@", buf, 0x26u);
        }

LABEL_80:

        objc_autoreleasePoolPop(v42);
        continue;
      }

      if (![(HMDWidgetTimelineRefresher *)selfCopy actionSetIsOn:v39])
      {
        v42 = objc_autoreleasePoolPush();
        v43 = selfCopy;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v76 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          identifier12 = [v112 identifier];

          if (identifier12)
          {
            identifier13 = [v112 identifier];
            [identifier13 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v155 = *buf;
          *buf = 138544130;
          *&buf[4] = v76;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v170 = 2096;
          v171 = &v155;
          v172 = 2112;
          v173 = v39;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Action set cannot be turned off because it's not active: %@", buf, 0x26u);
        }

        goto LABEL_80;
      }

      v114 = v39;
      groupa = [MEMORY[0x277CBEB18] array];
      v175 = 0u;
      memset(v174, 0, sizeof(v174));
      actions = [v114 actions];
      v49 = [actions countByEnumeratingWithState:v174 objects:buf count:16];
      if (!v49)
      {
        goto LABEL_70;
      }

      v50 = **&v174[16];
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (**&v174[16] != v50)
          {
            objc_enumerationMutation(actions);
          }

          v52 = *(*&v174[8] + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = v52;
          }

          else
          {
            v53 = 0;
          }

          v54 = v53;

          if (v54)
          {
            characteristic = [v54 characteristic];
            type3 = [characteristic type];
            if ([type3 isEqual:v124])
            {

LABEL_59:
              targetValue = [v54 targetValue];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = targetValue;
              }

              else
              {
                v60 = 0;
              }

              v61 = v60;

              bOOLValue = [v61 BOOLValue];
              if (bOOLValue)
              {
                v63 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:characteristic value:&unk_283E72308 authorizationData:0 type:0];
                [groupa addObject:v63];
              }

              else
              {
                v64 = objc_autoreleasePoolPush();
                v65 = selfCopy;
                v66 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  v67 = HMFGetLogIdentifier();
                  *v165 = 138543618;
                  v166 = v67;
                  v167 = 2112;
                  v168 = v54;
                  _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring characteristic write action for turning off because target value is NO: %@", v165, 0x16u);
                }

                objc_autoreleasePoolPop(v64);
              }
            }

            else
            {
              type4 = [characteristic type];
              v58 = [type4 isEqual:obja];

              if (v58)
              {
                goto LABEL_59;
              }
            }
          }
        }

        v49 = [actions countByEnumeratingWithState:v174 objects:buf count:16];
      }

      while (v49);
LABEL_70:

      if ([groupa count])
      {
        home = [v114 home];
        v69 = objc_autoreleasePoolPush();
        v70 = selfCopy;
        v71 = HMFGetOSLogHandle();
        v72 = v71;
        if (home)
        {
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v73 = HMFGetLogIdentifier();
            *&buf[8] = 0;
            *buf = 0;
            identifier14 = [v112 identifier];

            if (identifier14)
            {
              identifier15 = [v112 identifier];
              [identifier15 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v152 = *buf;
            *buf = 138544130;
            *&buf[4] = v73;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v170 = 2096;
            v171 = &v152;
            v172 = 2112;
            v173 = v114;
            _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Executing turning off action set: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v69);
          uuid2 = [v114 uuid];
          identifier16 = [v112 identifier];
          [(HMDWidgetTimelineRefresher *)v70 _setPendingRequestValue:&unk_283E72308 forUUID:uuid2 messageIdentifier:identifier16];

          [(HMDWidgetTimelineRefresher *)v70 _clearCachedErrorForActionSet:v114];
          dispatch_group_enter(v106);
          *&v140 = MEMORY[0x277D85DD0];
          *(&v140 + 1) = 3221225472;
          *&v141 = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke;
          *(&v141 + 1) = &unk_2786862E8;
          *&v142 = v70;
          *(&v142 + 1) = v114;
          v90 = v112;
          *&v143 = v90;
          *(&v143 + 1) = v104;
          v144 = v105;
          v91 = _Block_copy(&v140);
          *&v147 = MEMORY[0x277D85DD0];
          *(&v147 + 1) = 3221225472;
          v148 = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_313;
          v149 = &unk_278685AF8;
          v150 = v70;
          v151 = v91;
          v92 = v91;
          v93 = _Block_copy(&v147);
          [home writeCharacteristicValues:groupa message:v90 withCompletionHandler:v93];
        }

        else
        {
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v85 = HMFGetLogIdentifier();
            *&buf[8] = 0;
            *buf = 0;
            identifier17 = [v112 identifier];

            if (identifier17)
            {
              identifier18 = [v112 identifier];
              [identifier18 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v153 = *buf;
            *buf = 138544130;
            *&buf[4] = v85;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v170 = 2096;
            v171 = &v153;
            v172 = 2112;
            v173 = v114;
            _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Home is nil for action set: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v69);
        }
      }

      else
      {
        v79 = objc_autoreleasePoolPush();
        v80 = selfCopy;
        v81 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v82 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          identifier19 = [v112 identifier];

          if (identifier19)
          {
            identifier20 = [v112 identifier];
            [identifier20 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v154 = *buf;
          *buf = 138544130;
          *&buf[4] = v82;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v170 = 2096;
          v171 = &v154;
          v172 = 2112;
          v173 = v114;
          _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Action set doesn't contain actions that can be turned off: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v79);
      }
    }

    v113 = [v107 countByEnumeratingWithState:&v161 objects:v157 count:16];
  }

  while (v113);
LABEL_103:

LABEL_104:
LABEL_105:

  workQueue = [(HMDWidgetTimelineRefresher *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke_2;
  block[3] = &unk_2786869D8;
  v127 = v135;
  block[4] = selfCopy;
  v126 = v112;
  v128 = v133;
  dispatch_group_notify(v106, workQueue, block);

  _Block_object_dispose(v133, 8);
  _Block_object_dispose(v135, 8);

LABEL_109:
  v5 = v99;
LABEL_110:

  v96 = *MEMORY[0x277D85DE8];
}

void __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v9 = a2;
  dispatch_group_leave(v3);
  v4 = *(a1[5] + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v8 = v9;
  if (v7)
  {
    v8 = v6;
  }

  objc_storeStrong(v5, v8);
  *(*(a1[6] + 8) + 24) = 1;
}

uint64_t __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v6 = [*(a1 + 40) identifier];

      if (v6)
      {
        v7 = [*(a1 + 40) identifier];
        [v7 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v24 = *buf;
      v14 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138544130;
      *&buf[4] = v5;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v26 = 2096;
      v27 = &v24;
      v28 = 2112;
      v29 = v14;
      v15 = "%{public}@[%{uuid_t}.16P] Failed with error: %@";
      v16 = v4;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 38;
LABEL_16:
      _os_log_impl(&dword_229538000, v16, v17, v15, buf, v18);
LABEL_17:
    }
  }

  else
  {
    v8 = *(*(*(a1 + 56) + 8) + 24);
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    v4 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v10 = [*(a1 + 40) identifier];

        if (v10)
        {
          v11 = [*(a1 + 40) identifier];
          [v11 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v22 = *buf;
        *buf = 138543874;
        *&buf[4] = v5;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        v26 = 2096;
        v27 = &v22;
        v15 = "%{public}@[%{uuid_t}.16P] Successfully completed requests";
        v16 = v4;
        v17 = OS_LOG_TYPE_INFO;
        v18 = 28;
        goto LABEL_16;
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v12 = [*(a1 + 40) identifier];

      if (v12)
      {
        v13 = [*(a1 + 40) identifier];
        [v13 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v23 = *buf;
      v21 = [*(a1 + 40) messagePayload];
      *buf = 138544130;
      *&buf[4] = v5;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v26 = 2096;
      v27 = &v23;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Did not execute any request from payload: %@", buf, 0x26u);

      goto LABEL_17;
    }
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) respondWithPayload:0 error:*(*(*(a1 + 48) + 8) + 40)];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_clearCachedErrorForActionSet:(void *)set
{
  uuid = [a2 uuid];
  cachedActionSetExecuteErrorByUUID = [set cachedActionSetExecuteErrorByUUID];
  [cachedActionSetExecuteErrorByUUID removeObjectForKey:uuid];

  cachedActionSetExecuteErrorTimerContextByUUID = [set cachedActionSetExecuteErrorTimerContextByUUID];
  v5 = [cachedActionSetExecuteErrorTimerContextByUUID objectForKeyedSubscript:uuid];

  if (v5)
  {
    cachedActionSetExecuteErrorTimerContextByUUID2 = [set cachedActionSetExecuteErrorTimerContextByUUID];
    [cachedActionSetExecuteErrorTimerContextByUUID2 removeObjectForKey:uuid];

    timerManager = [set timerManager];
    [timerManager cancelTimerForContext:v5];
  }
}

void __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v7 = [*(a1 + 48) identifier];
  [v5 _removePendingRequestValueForUUID:v6 messageIdentifier:v7];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v13 = [*(a1 + 48) identifier];

      if (v13)
      {
        v14 = [*(a1 + 48) identifier];
        [v14 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v25 = *buf;
      v18 = *(a1 + 40);
      *buf = 138544386;
      *&buf[4] = v12;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v27 = 2096;
      v28 = &v25;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v3;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to turn off action set: %@, with error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDWidgetTimelineRefresher *)*(a1 + 32) _setCachedError:v3 forActionSet:*(a1 + 40)];
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 56)];
    [(HMDWidgetTimelineRefresher *)v19 refreshTimelineForWidgetKinds:v20 withReason:@"Turn Off Action Set Execution Failed" shouldCoalesce:1];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v16 = [*(a1 + 48) identifier];

      if (v16)
      {
        v17 = [*(a1 + 48) identifier];
        [v17 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v24 = *buf;
      v21 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v15;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v27 = 2096;
      v28 = &v24;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully turned off action set: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v8);
    v22 = *(a1 + 32);
    v20 = [*(a1 + 40) uuid];
    [v22 _startActionSetPrimaryStateUpdateCoalesceTimerContextForActionSetUUID:v20 expectedState:&unk_283E72308];
  }

  (*(*(a1 + 64) + 16))();
  v23 = *MEMORY[0x277D85DE8];
}

void __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_313(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2;
  v12[3] = &unk_278689AB8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v13 = v5;
  v14 = v9;
  v15 = v6;
  v16 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 56);

    v2(v3);
  }

  else
  {
    v4 = [*(a1 + 40) _firstErrorFromCharacteristicWriteResponsePayload:*(a1 + 48)];
    (*(v1 + 16))(v1, v4);
  }
}

- (void)_setCachedError:(void *)error forActionSet:
{
  if (self)
  {
    errorCopy = error;
    v6 = a2;
    uuid = [errorCopy uuid];
    cachedActionSetExecuteErrorByUUID = [self cachedActionSetExecuteErrorByUUID];
    [cachedActionSetExecuteErrorByUUID setObject:v6 forKeyedSubscript:uuid];

    timerManager = [self timerManager];
    v9 = [timerManager startTimerWithTimeInterval:errorCopy andReplaceObject:8.0];

    cachedActionSetExecuteErrorTimerContextByUUID = [self cachedActionSetExecuteErrorTimerContextByUUID];
    [cachedActionSetExecuteErrorTimerContextByUUID setObject:v9 forKeyedSubscript:uuid];
  }
}

void __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2;
  v6[3] = &unk_278688B58;
  v7 = *(a1 + 2);
  v8 = a1[6];
  v9 = v3;
  v10 = a1[7];
  v11 = a1[8];
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [*(a1 + 48) identifier];
  [v2 _removePendingRequestValueForUUID:v3 messageIdentifier:v4];

  v5 = *(a1 + 56);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v11 = [*(a1 + 48) identifier];

      if (v11)
      {
        v12 = [*(a1 + 48) identifier];
        [v12 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v26 = *buf;
      v16 = *(a1 + 40);
      v17 = *(a1 + 56);
      *buf = 138544386;
      *&buf[4] = v10;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v28 = 2096;
      v29 = &v26;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to execute action set: %@, with error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDWidgetTimelineRefresher *)*(a1 + 32) _setCachedError:*(a1 + 40) forActionSet:?];
    v18 = *(a1 + 32);
    v19 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 64)];
    [(HMDWidgetTimelineRefresher *)v18 refreshTimelineForWidgetKinds:v19 withReason:@"Action Set Execution Failed" shouldCoalesce:1];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v14 = [*(a1 + 48) identifier];

      if (v14)
      {
        v15 = [*(a1 + 48) identifier];
        [v15 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v25 = *buf;
      v20 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v28 = 2096;
      v29 = &v25;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully executed action set: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v21 = *(a1 + 32);
    v19 = [*(a1 + 40) uuid];
    [v21 _startActionSetPrimaryStateUpdateCoalesceTimerContextForActionSetUUID:v19 expectedState:&unk_283E722F0];
  }

  v22 = *(a1 + 56);
  result = (*(*(a1 + 72) + 16))();
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleFetchState:(id)state
{
  v36 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = *MEMORY[0x277CD1520];
  v6 = [stateCopy arrayForKey:*MEMORY[0x277CD1520]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier = [stateCopy identifier];

      if (identifier)
      {
        identifier2 = [stateCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v35 = *buf;
      *buf = 138544130;
      *&buf[4] = v11;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v35;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to fetch state for: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [(HMDWidgetTimelineRefresher *)selfCopy characteristicsFromSPIClientIdentifiers:v6];
    v33 = v5;
    v17 = [(HMDWidgetTimelineRefresher *)selfCopy valueByCharacteristicSPIClientIdentifierForCharacteristics:v16];
    v34 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      name = [stateCopy name];
      *buf = 0;
      *&buf[8] = 0;
      identifier3 = [stateCopy identifier];

      if (identifier3)
      {
        identifier4 = [stateCopy identifier];
        [identifier4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v27 = *buf;
      *buf = 138544386;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = name;
      *&buf[22] = 1040;
      *&buf[24] = 16;
      v29 = 2096;
      v30 = &v27;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v19);
    [stateCopy respondWithPayload:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      messagePayload = [stateCopy messagePayload];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find characteristic UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [stateCopy respondWithError:v16];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)characteristicsFromSPIClientIdentifiers:(void *)identifiers
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (identifiers)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    homeManager = [identifiers homeManager];
    homes = [homeManager homes];

    v7 = [homes countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v58;
      v38 = homes;
      v33 = *v58;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v58 != v9)
          {
            objc_enumerationMutation(homes);
          }

          v11 = *(*(&v57 + 1) + 8 * i);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          accessories = [v11 accessories];
          v44 = [accessories countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v44)
          {
            v13 = *v54;
            v34 = i;
            v35 = v8;
            do
            {
              for (j = 0; j != v44; ++j)
              {
                if (*v54 != v13)
                {
                  objc_enumerationMutation(accessories);
                }

                v15 = *(*(&v53 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = v15;
                }

                else
                {
                  v16 = 0;
                }

                v17 = v16;

                if (v17)
                {
                  v51 = 0u;
                  v52 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  services = [v15 services];
                  v39 = [services countByEnumeratingWithState:&v49 objects:v62 count:16];
                  if (v39)
                  {
                    v19 = *v50;
                    v42 = v17;
                    v43 = accessories;
                    v36 = *v50;
                    v37 = v13;
                    v41 = services;
                    do
                    {
                      v20 = 0;
                      do
                      {
                        if (*v50 != v19)
                        {
                          objc_enumerationMutation(services);
                        }

                        v40 = v20;
                        v21 = *(*(&v49 + 1) + 8 * v20);
                        v45 = 0u;
                        v46 = 0u;
                        v47 = 0u;
                        v48 = 0u;
                        characteristics = [v21 characteristics];
                        v23 = [characteristics countByEnumeratingWithState:&v45 objects:v61 count:16];
                        if (v23)
                        {
                          v24 = v23;
                          v25 = *v46;
                          while (2)
                          {
                            for (k = 0; k != v24; ++k)
                            {
                              if (*v46 != v25)
                              {
                                objc_enumerationMutation(characteristics);
                              }

                              v27 = *(*(&v45 + 1) + 8 * k);
                              spiClientIdentifier = [v27 spiClientIdentifier];
                              v29 = [v3 containsObject:spiClientIdentifier];

                              if (v29)
                              {
                                [v4 addObject:v27];
                                v30 = [v4 count];
                                if (v30 == [v3 count])
                                {

                                  homes = v38;
                                  goto LABEL_39;
                                }
                              }
                            }

                            v24 = [characteristics countByEnumeratingWithState:&v45 objects:v61 count:16];
                            if (v24)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v20 = v40 + 1;
                        v17 = v42;
                        accessories = v43;
                        v19 = v36;
                        v13 = v37;
                        services = v41;
                      }

                      while (v40 + 1 != v39);
                      v39 = [v41 countByEnumeratingWithState:&v49 objects:v62 count:16];
                    }

                    while (v39);
                  }
                }
              }

              homes = v38;
              v9 = v33;
              i = v34;
              v8 = v35;
              v44 = [accessories countByEnumeratingWithState:&v53 objects:v63 count:16];
            }

            while (v44);
          }
        }

        v8 = [homes countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v8);
    }

LABEL_39:
  }

  else
  {
    v4 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)handleMonitorCharacteristicsForWidget:(id)widget
{
  v118 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  v5 = [widgetCopy stringForKey:*MEMORY[0x277CD1558]];
  if (v5)
  {
    v6 = [widgetCopy stringForKey:*MEMORY[0x277CD1560]];
    if (v6)
    {
      v7 = [widgetCopy arrayForKey:*MEMORY[0x277CD1520]];
      if (v7)
      {
        v8 = [widgetCopy numberForKey:*MEMORY[0x277CD1530]];
        if (v8)
        {
          v9 = [widgetCopy numberForKey:*MEMORY[0x277CD1540]];
          v87 = v9;
          if (v9)
          {
            v10 = v9;
            v88 = v8;
            v11 = [widgetCopy uuidForKey:*MEMORY[0x277CD1528]];
            v91 = v5;
            v12 = [[HMDWidget alloc] initWithIdentifier:v5 kind:v6];
            v13 = [(HMDWidgetTimelineRefresher *)self characteristicsFromSPIClientIdentifiers:v7];
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke;
            v103[3] = &unk_278674C98;
            v14 = v10;
            v104 = v14;
            v89 = [v13 na_map:v103];
            context = objc_autoreleasePoolPush();
            selfCopy = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v83 = v12;
              v17 = v11;
              v81 = HMFGetLogIdentifier();
              *buf = 0;
              *&buf[8] = 0;
              identifier = [widgetCopy identifier];

              if (identifier)
              {
                identifier2 = [widgetCopy identifier];
                [identifier2 getUUIDBytes:buf];
              }

              else
              {
                *buf = *MEMORY[0x277D0F960];
              }

              v106 = *buf;
              *buf = 0;
              *&buf[8] = 0;
              v11 = v17;
              if (v17)
              {
                [v17 getUUIDBytes:buf];
              }

              else
              {
                *buf = *MEMORY[0x277D0F960];
              }

              v105 = *buf;
              *buf = 138544898;
              v12 = v83;
              *&buf[4] = v81;
              *&buf[12] = 1040;
              *&buf[14] = 16;
              *&buf[18] = 2096;
              *&buf[20] = &v106;
              *&buf[28] = 2112;
              *&buf[30] = v83;
              *&buf[38] = 2112;
              v108 = v88;
              v109 = 1040;
              v110 = 16;
              v111 = 2096;
              v112 = &v105;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to update characteristics for widget: %@, generation counter: %@, current home: %{uuid_t}.16P", buf, 0x40u);
            }

            objc_autoreleasePoolPop(context);
            [v14 BOOLValue];
            qualityOfService = [widgetCopy qualityOfService];
            v94[0] = MEMORY[0x277D85DD0];
            v94[1] = 3221225472;
            v79 = qualityOfService;
            v95 = __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke_258;
            v96 = &unk_278683598;
            v97 = selfCopy;
            v98 = v88;
            v99 = v6;
            v100 = v11;
            v101 = v13;
            v102 = widgetCopy;
            v54 = v13;
            contexta = v11;
            v90 = v89;
            v55 = v12;
            v56 = v94;
            v57 = v56;
            v5 = v91;
            if (selfCopy)
            {
              v82 = v56;
              v84 = v54;
              workQueue = [(HMDWidgetTimelineRefresher *)selfCopy workQueue];
              dispatch_assert_queue_V2(workQueue);

              monitoredCharacteristicsMapByWidget = [(HMDWidgetTimelineRefresher *)selfCopy monitoredCharacteristicsMapByWidget];
              v60 = [monitoredCharacteristicsMapByWidget objectForKeyedSubscript:v55];
              v61 = v60;
              if (v60)
              {
                v62 = v60;
              }

              else
              {
                v62 = [MEMORY[0x277CBEB98] set];
              }

              v63 = v62;

              v80 = v63;
              LODWORD(v63) = [v90 isEqualToSet:v63];
              v64 = objc_autoreleasePoolPush();
              v65 = selfCopy;
              v66 = HMFGetOSLogHandle();
              v67 = os_log_type_enabled(v66, OS_LOG_TYPE_INFO);
              if (v63)
              {
                if (v67)
                {
                  v68 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v68;
                  *&buf[12] = 2112;
                  *&buf[14] = v55;
                  _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@Monitored characteristics did not change for widget %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v64);
                v57 = v82;
                v95(v82);
              }

              else
              {
                if (v67)
                {
                  v69 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  *&buf[4] = v69;
                  *&buf[12] = 2112;
                  *&buf[14] = v55;
                  *&buf[22] = 2112;
                  *&buf[24] = v90;
                  _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@Monitored characteristics changed for widget %@ to %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v64);
                characteristicsMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)v65 characteristicsMonitoredForWidgets];
                accessoriesMonitoredForReachability = [(HMDWidgetTimelineRefresher *)v65 accessoriesMonitoredForReachability];
                monitoredCharacteristicsMapByWidget2 = [(HMDWidgetTimelineRefresher *)v65 monitoredCharacteristicsMapByWidget];
                [monitoredCharacteristicsMapByWidget2 setObject:v90 forKeyedSubscript:v55];

                characteristicsMonitoredForWidgets2 = [(HMDWidgetTimelineRefresher *)v65 characteristicsMonitoredForWidgets];
                accessoriesMonitoredForReachability2 = [(HMDWidgetTimelineRefresher *)v65 accessoriesMonitoredForReachability];
                [(HMDWidgetTimelineRefresher *)v65 updateNotificationRegistrationWithPreviousCharacteristics:characteristicsMonitoredForWidgets currentCharacteristics:characteristicsMonitoredForWidgets2 updateRequestQualityOfService:v79];
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __146__HMDWidgetTimelineRefresher_internalUpdateMonitoredCharacteristics_shouldMonitorReachability_forWidget_updateRequestQualityOfService_completion___block_invoke;
                *&buf[24] = &unk_27868A7A0;
                *&buf[32] = v65;
                v108 = v82;
                [(HMDWidgetTimelineRefresher *)v65 updateReachabilityMonitorWithPreviousAccessories:accessoriesMonitoredForReachability currentAccessories:accessoriesMonitoredForReachability2 completion:buf];

                v57 = v82;
              }

              v5 = v91;

              v54 = v84;
            }

            v75 = v87;
            v8 = v88;
          }

          else
          {
            v45 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v93 = v5;
              v48 = HMFGetLogIdentifier();
              *buf = 0;
              *&buf[8] = 0;
              identifier3 = [widgetCopy identifier];

              if (identifier3)
              {
                identifier4 = [widgetCopy identifier];
                [identifier4 getUUIDBytes:buf];
              }

              else
              {
                *buf = *MEMORY[0x277D0F960];
              }

              v113 = *buf;
              messagePayload = [widgetCopy messagePayload];
              *buf = 138544130;
              *&buf[4] = v48;
              *&buf[12] = 1040;
              *&buf[14] = 16;
              *&buf[18] = 2096;
              *&buf[20] = &v113;
              *&buf[28] = 2112;
              *&buf[30] = messagePayload;
              _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find reachability registration value in message payload: %@", buf, 0x26u);

              v5 = v93;
            }

            objc_autoreleasePoolPop(v45);
            v55 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            [widgetCopy respondWithError:v55];
            v75 = 0;
          }
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v92 = v5;
            v41 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            identifier5 = [widgetCopy identifier];

            if (identifier5)
            {
              identifier6 = [widgetCopy identifier];
              [identifier6 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v114 = *buf;
            messagePayload2 = [widgetCopy messagePayload];
            *buf = 138544130;
            *&buf[4] = v41;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            *&buf[18] = 2096;
            *&buf[20] = &v114;
            *&buf[28] = 2112;
            *&buf[30] = messagePayload2;
            _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find generation counter in message payload: %@", buf, 0x26u);

            v5 = v92;
          }

          objc_autoreleasePoolPop(v38);
          v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [widgetCopy respondWithError:v75];
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier7 = [widgetCopy identifier];

          if (identifier7)
          {
            identifier8 = [widgetCopy identifier];
            [identifier8 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v115 = *buf;
          messagePayload3 = [widgetCopy messagePayload];
          *buf = 138544130;
          *&buf[4] = v35;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v115;
          *&buf[28] = 2112;
          *&buf[30] = messagePayload3;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find characteristic UUIDs in message payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v32);
        v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [widgetCopy respondWithError:v8];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        identifier9 = [widgetCopy identifier];

        if (identifier9)
        {
          identifier10 = [widgetCopy identifier];
          [identifier10 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v116 = *buf;
        messagePayload4 = [widgetCopy messagePayload];
        *buf = 138544130;
        *&buf[4] = v29;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        *&buf[18] = 2096;
        *&buf[20] = &v116;
        *&buf[28] = 2112;
        *&buf[30] = messagePayload4;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v26);
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [widgetCopy respondWithError:v7];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier11 = [widgetCopy identifier];

      if (identifier11)
      {
        identifier12 = [widgetCopy identifier];
        [identifier12 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v117 = *buf;
      messagePayload5 = [widgetCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v23;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v117;
      *&buf[28] = 2112;
      *&buf[30] = messagePayload5;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget identifier in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v20);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [widgetCopy respondWithError:v6];
  }

  v78 = *MEMORY[0x277D85DE8];
}

HMDWidgetMonitoredCharacteristic *__68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = -[HMDWidgetMonitoredCharacteristic initWithCharacteristic:reachabilityMonitored:]([HMDWidgetMonitoredCharacteristic alloc], "initWithCharacteristic:reachabilityMonitored:", v3, [*(a1 + 32) BOOLValue]);

  return v4;
}

void __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke_258(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unsignedIntValue];
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = v3;
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v2;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_FAULT, "%{public}@Generation counter is unexpectedly set to zero.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = [v2 homeManager];
  v10 = [v9 generationCounter];

  if (v10 <= v4)
  {
LABEL_10:
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    if (v16)
    {
      v18 = [v16 homeManager];
      v19 = [v18 currentHomeUUID];

      if ((HMFEqualObjects() & 1) == 0)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v16;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          if (v17)
          {
            [v17 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v42 = *buf;
          *buf = 0;
          *&buf[8] = 0;
          if (v19)
          {
            [v19 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v41 = *buf;
          *buf = 138544386;
          *&buf[4] = v23;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v42;
          *&buf[28] = 1040;
          *&buf[30] = 16;
          *&buf[34] = 2096;
          *&buf[36] = &v41;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline because client's currentHome UUID is different. Client: %{uuid_t}.16P, homed: %{uuid_t}.16P", buf, 0x2Cu);
        }

        objc_autoreleasePoolPop(v20);
        v15 = @"Current home mismatch";
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = v2;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    *&buf[22] = 2048;
    *&buf[24] = v10;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline because client's generation counter is older. Client: %lu, homed: %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = @"Generation counter mismatch";
LABEL_23:
  v24 = *(a1 + 32);
  v25 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 48)];
  [(HMDWidgetTimelineRefresher *)v24 refreshTimelineForWidgetKinds:v25 withReason:v15 shouldCoalesce:1];

LABEL_24:
  v39[0] = *MEMORY[0x277CD1520];
  v26 = [*(a1 + 32) valueByCharacteristicSPIClientIdentifierForCharacteristics:*(a1 + 64)];
  v40[0] = v26;
  v39[1] = *MEMORY[0x277CD1540];
  v27 = [*(a1 + 32) reachabilityByAccessorySPIClientIdentifierForCharacteristics:*(a1 + 64)];
  v40[1] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

  v29 = objc_autoreleasePoolPush();
  v30 = *(a1 + 32);
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    v33 = [*(a1 + 72) name];
    *buf = 0;
    *&buf[8] = 0;
    v34 = [*(a1 + 72) identifier];

    if (v34)
    {
      v35 = [*(a1 + 72) identifier];
      [v35 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v37 = *buf;
    *buf = 138544386;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v33;
    *&buf[22] = 1040;
    *&buf[24] = 16;
    *&buf[28] = 2096;
    *&buf[30] = &v37;
    *&buf[38] = 2112;
    *&buf[40] = v28;
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v29);
  [*(a1 + 72) respondWithPayload:v28];

  v36 = *MEMORY[0x277D85DE8];
}

void __146__HMDWidgetTimelineRefresher_internalUpdateMonitoredCharacteristics_shouldMonitorReachability_forWidget_updateRequestQualityOfService_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __146__HMDWidgetTimelineRefresher_internalUpdateMonitoredCharacteristics_shouldMonitorReachability_forWidget_updateRequestQualityOfService_completion___block_invoke_2;
  block[3] = &unk_278688B80;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Reloading widgets from Chronod", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  widgetConfigurationReader = [(HMDWidgetTimelineRefresher *)selfCopy widgetConfigurationReader];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke;
  v12[3] = &unk_278687158;
  v12[4] = selfCopy;
  v13 = completionCopy;
  v10 = completionCopy;
  [widgetConfigurationReader fetchAutoBahnWidgetsWithCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke_2;
  block[3] = &unk_278689F98;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [*(a1 + 32) na_map:&__block_literal_global_252];
  v4 = [v2 setWithArray:v3];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Active widgets are: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) setActiveAutoBahnWidgetKinds:v4];
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)forceUpdateTimelineForWidgetKinds:(id)kinds
{
  kindsCopy = kinds;
  if ([kindsCopy count])
  {
    workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke;
    v6[3] = &unk_27868A750;
    v7 = kindsCopy;
    selfCopy = self;
    dispatch_async(workQueue, v6);
  }
}

void __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) widgetKindsToUpdate];
  LOBYTE(v2) = [v2 isSubsetOfSet:v3];

  if ((v2 & 1) == 0)
  {
    v4 = [*(a1 + 40) widgetKindsToUpdate];
    v5 = [v4 count];

    v6 = [*(a1 + 40) widgetKindsToUpdate];
    v7 = [v6 setByAddingObjectsFromSet:*(a1 + 32)];
    [*(a1 + 40) setWidgetKindsToUpdate:v7];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) widgetKindsToUpdate];
      v13 = [v12 allObjects];
      v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_60614];
      v15 = [v14 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@More kinds to reload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (!v5)
    {
      v16 = dispatch_time(0, [*(a1 + 40) forceUpdateTimelineDispatchDelayNs]);
      v17 = [*(a1 + 40) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke_245;
      block[3] = &unk_27868A728;
      block[4] = *(a1 + 40);
      dispatch_after(v16, v17, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke_245(uint64_t a1)
{
  v1 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [*(a1 + 32) widgetKindsToUpdate];
  v2 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v23;
    v20 = v1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [objc_alloc(MEMORY[0x277CFA320]) initWithExtensionBundleIdentifier:@"com.apple.Home.HomeWidget" kind:v6];
        v8 = [v7 reloadTimelineWithReason:@"new data"];
        v9 = objc_autoreleasePoolPush();
        v10 = *(v1 + 32);
        v11 = HMFGetOSLogHandle();
        v12 = v11;
        if (v8)
        {
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v13 = HMFGetLogIdentifier();
          *buf = 138543874;
          v27 = v13;
          v28 = 2112;
          v29 = v6;
          v30 = 2112;
          v31 = v8;
          v14 = v12;
          v15 = OS_LOG_TYPE_ERROR;
          v16 = "%{public}@Failed reload of timeline for '%@': %@";
          v17 = 32;
        }

        else
        {
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v27 = v13;
          v28 = 2112;
          v29 = v6;
          v14 = v12;
          v15 = OS_LOG_TYPE_DEFAULT;
          v16 = "%{public}@Successfully reloaded timeline for '%@'";
          v17 = 22;
        }

        _os_log_impl(&dword_229538000, v14, v15, v16, buf, v17);

        v1 = v20;
LABEL_12:

        objc_autoreleasePoolPop(v9);
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v3);
  }

  v18 = [MEMORY[0x277CBEB98] set];
  [*(v1 + 32) setWidgetKindsToUpdate:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)widgetKindsToUpdateFromFetchSpecifications:(id)specifications assumingChangedCharacteristic:(id)characteristic
{
  v48 = *MEMORY[0x277D85DE8];
  specificationsCopy = specifications;
  characteristicCopy = characteristic;
  v32 = [MEMORY[0x277CBEB58] set];
  v34 = characteristicCopy;
  service = [characteristicCopy service];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = specificationsCopy;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v40;
    *&v9 = 138543618;
    v30 = v9;
    v33 = *v40;
    do
    {
      v12 = 0;
      v35 = v10;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        serviceTypes = [v13 serviceTypes];
        type = [service type];
        if (![serviceTypes containsObject:type])
        {

          goto LABEL_19;
        }

        associatedServiceTypes = [v13 associatedServiceTypes];
        hmf_isEmpty = [associatedServiceTypes hmf_isEmpty];
        if ((hmf_isEmpty & 1) == 0)
        {
          associatedServiceTypes2 = [v13 associatedServiceTypes];
          associatedServiceType = [service associatedServiceType];
          v38 = associatedServiceTypes2;
          if (![associatedServiceTypes2 containsObject:?])
          {
            v22 = 0;
            goto LABEL_15;
          }
        }

        v19 = service;
        characteristicTypes = [v13 characteristicTypes];
        type2 = [v34 type];
        v22 = [characteristicTypes containsObject:type2];

        if ((hmf_isEmpty & 1) == 0)
        {
          service = v19;
          v11 = v33;
LABEL_15:
          v10 = v35;

          if ((v22 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_16:
          v23 = objc_autoreleasePoolPush();
          selfCopy = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            affectedWidgetKinds = [v13 affectedWidgetKinds];
            *buf = v30;
            v44 = v26;
            v45 = 2112;
            v46 = affectedWidgetKinds;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@...must reload widget kinds: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          serviceTypes = [v13 affectedWidgetKinds];
          [v32 unionSet:serviceTypes];
LABEL_19:

          goto LABEL_20;
        }

        service = v19;
        v11 = v33;
        v10 = v35;
        if (v22)
        {
          goto LABEL_16;
        }

LABEL_20:
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v10);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)widgetKindsToUpdateFromFetchSpecifications:(id)specifications changedCharacteristics:(id)characteristics
{
  v115 = *MEMORY[0x277D85DE8];
  specificationsCopy = specifications;
  characteristicsCopy = characteristics;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v101 = v10;
    v102 = 2082;
    v103 = "[HMDWidgetTimelineRefresher widgetKindsToUpdateFromFetchSpecifications:changedCharacteristics:]";
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@%{public}s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v75 = [MEMORY[0x277CBEB58] set];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = characteristicsCopy;
  v11 = [obj countByEnumeratingWithState:&v96 objects:v114 count:16];
  if (v11)
  {
    v13 = v11;
    v95 = *v97;
    *&v12 = 138544898;
    v66 = v12;
    v88 = selfCopy;
    do
    {
      v14 = 0;
      v89 = v13;
      do
      {
        if (*v97 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v96 + 1) + 8 * v14);
        accessory = [v15 accessory];
        home = [accessory home];
        v18 = home;
        if (selfCopy)
        {
          hasAnyResident = [home hasAnyResident];

          if (hasAnyResident)
          {
            characteristicsToPreviouslySeenValues = [(HMDWidgetTimelineRefresher *)selfCopy characteristicsToPreviouslySeenValues];
            serializedIdentifier = [v15 serializedIdentifier];
            v22 = [characteristicsToPreviouslySeenValues objectForKeyedSubscript:serializedIdentifier];

            value = [v15 value];
            LODWORD(serializedIdentifier) = HMFEqualObjects();

            if (serializedIdentifier)
            {
              log = v22;
              v24 = objc_autoreleasePoolPush();
              v25 = selfCopy;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v69 = HMFGetLogIdentifier();
                characteristicType = [v15 characteristicType];
                v27 = HAPShortUUIDType();
                characteristicTypeDescription = [v15 characteristicTypeDescription];
                accessory2 = [v15 accessory];
                home2 = [accessory2 home];
                name = [home2 name];
                [v15 accessory];
                v30 = contexta = v24;
                name2 = [v30 name];
                value2 = [v15 value];
                *buf = 138544642;
                v101 = v69;
                v102 = 2112;
                v103 = v27;
                v33 = v27;
                v104 = 2112;
                v105 = characteristicTypeDescription;
                v106 = 2112;
                v107 = name;
                v108 = 2112;
                v109 = name2;
                v110 = 2112;
                v111 = value2;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@...ignoring redundant characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

                v24 = contexta;
                v13 = v89;

                selfCopy = v88;
              }

              objc_autoreleasePoolPop(v24);
              v22 = log;
            }

            else
            {
              v34 = [(HMDWidgetTimelineRefresher *)selfCopy widgetKindsToUpdateFromFetchSpecifications:specificationsCopy assumingChangedCharacteristic:v15];
              [v75 unionSet:v34];
              v35 = [v34 count];
              context = objc_autoreleasePoolPush();
              v36 = selfCopy;
              v37 = HMFGetOSLogHandle();
              v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
              if (v35)
              {
                if (v38)
                {
                  HMFGetLogIdentifier();
                  v39 = v82 = v34;
                  characteristicType2 = [v15 characteristicType];
                  v40 = HAPShortUUIDType();
                  [v15 characteristicTypeDescription];
                  v41 = loga = v37;
                  accessory3 = [v15 accessory];
                  home3 = [accessory3 home];
                  name3 = [home3 name];
                  accessory4 = [v15 accessory];
                  name4 = [accessory4 name];
                  [v15 value];
                  v45 = v44 = v22;
                  *buf = v66;
                  v101 = v39;
                  v102 = 2112;
                  v103 = v40;
                  v104 = 2112;
                  v105 = v41;
                  v106 = 2112;
                  v107 = name3;
                  v108 = 2112;
                  v109 = name4;
                  v110 = 2112;
                  v111 = v45;
                  v112 = 2112;
                  v113 = v44;
                  _os_log_impl(&dword_229538000, loga, OS_LOG_TYPE_INFO, "%{public}@...updating characteristic [%@] (%@) from '%@:%@', value '%@' was '%@'", buf, 0x48u);

                  v22 = v44;
                  selfCopy = v88;

                  v13 = v89;
                  v37 = loga;

                  v34 = v82;
                }

                objc_autoreleasePoolPop(context);
                value3 = [v15 value];
                characteristicsToPreviouslySeenValues2 = [(HMDWidgetTimelineRefresher *)v36 characteristicsToPreviouslySeenValues];
                serializedIdentifier2 = [v15 serializedIdentifier];
                [characteristicsToPreviouslySeenValues2 setObject:value3 forKeyedSubscript:serializedIdentifier2];
              }

              else
              {
                if (v38)
                {
                  v83 = HMFGetLogIdentifier();
                  characteristicType3 = [v15 characteristicType];
                  v68 = HAPShortUUIDType();
                  characteristicTypeDescription2 = [v15 characteristicTypeDescription];
                  accessory5 = [v15 accessory];
                  home4 = [accessory5 home];
                  name5 = [home4 name];
                  accessory6 = [v15 accessory];
                  [accessory6 name];
                  v52 = logb = v22;
                  value4 = [v15 value];
                  *buf = 138544642;
                  v101 = v83;
                  v102 = 2112;
                  v103 = v68;
                  v104 = 2112;
                  v105 = characteristicTypeDescription2;
                  v106 = 2112;
                  v107 = name5;
                  v108 = 2112;
                  v109 = v52;
                  v110 = 2112;
                  v111 = value4;
                  _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@...ignoring irrelevant characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

                  v22 = logb;
                  v13 = v89;

                  selfCopy = v88;
                }

                objc_autoreleasePoolPop(context);
              }
            }

            goto LABEL_27;
          }
        }

        else
        {
        }

        v54 = objc_autoreleasePoolPush();
        v55 = selfCopy;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = HMFGetLogIdentifier();
          contextb = [v15 characteristicType];
          v58 = HAPShortUUIDType();
          characteristicTypeDescription3 = [v15 characteristicTypeDescription];
          accessory7 = [v15 accessory];
          home5 = [accessory7 home];
          name6 = [home5 name];
          [v15 accessory];
          v61 = logc = v54;
          name7 = [v61 name];
          value5 = [v15 value];
          *buf = 138544642;
          v101 = v57;
          v102 = 2112;
          v103 = v58;
          v104 = 2112;
          v105 = characteristicTypeDescription3;
          v106 = 2112;
          v107 = name6;
          v108 = 2112;
          v109 = name7;
          v110 = 2112;
          v111 = value5;
          _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@...No resident. Ignoring characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

          v54 = logc;
          selfCopy = v88;

          v13 = v89;
        }

        objc_autoreleasePoolPop(v54);
LABEL_27:
        ++v14;
      }

      while (v13 != v14);
      v13 = [obj countByEnumeratingWithState:&v96 objects:v114 count:16];
    }

    while (v13);
  }

  v64 = *MEMORY[0x277D85DE8];

  return v75;
}

- (void)internalProcessChangedCharacteristics:(id)characteristics activeAutoBahnWidgetKinds:(id)kinds
{
  v20 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  kindsCopy = kinds;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v11;
    v18 = 2080;
    v19 = "[HMDWidgetTimelineRefresher internalProcessChangedCharacteristics:activeAutoBahnWidgetKinds:]";
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@%s", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_opt_class() fetchSpecificationsForWidgetKinds:kindsCopy];
  v13 = [(HMDWidgetTimelineRefresher *)selfCopy widgetKindsToUpdateFromFetchSpecifications:v12 changedCharacteristics:characteristicsCopy];
  forceUpdateAutobahnTimelineHandler = [(HMDWidgetTimelineRefresher *)selfCopy forceUpdateAutobahnTimelineHandler];
  (forceUpdateAutobahnTimelineHandler)[2](forceUpdateAutobahnTimelineHandler, v13);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  [(HMDWidgetTimelineRefresher *)self handleAccessoryCharacteristicsChangedNotification:notificationCopy];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDWidgetTimelineRefresher_processCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __72__HMDWidgetTimelineRefresher_processCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing characteristics changed notification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) modifiedCharacteristicsFromNotification:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = [v7 activeAutoBahnWidgetKinds];
  [v7 internalProcessChangedCharacteristics:v6 activeAutoBahnWidgetKinds:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringOldCharacteristics
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  v44 = selfCopy;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    monitoredCharacteristics = [(HMDWidgetTimelineRefresher *)v44 monitoredCharacteristics];
    v8 = [monitoredCharacteristics count];
    v9 = &stru_283CF9D50;
    if (!v8)
    {
      v9 = @"none registered";
    }

    *buf = 138543618;
    v59 = v6;
    v60 = 2112;
    v61 = v9;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop monitoring previous accessories: %@", buf, 0x16u);

    selfCopy = v44;
  }

  objc_autoreleasePoolPop(v3);
  v47 = objc_opt_new();
  v10 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  monitoredCharacteristics2 = [(HMDWidgetTimelineRefresher *)selfCopy monitoredCharacteristics];
  v12 = [monitoredCharacteristics2 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(monitoredCharacteristics2);
        }

        v16 = *(*(&v52 + 1) + 8 * i);
        accessory = [v16 accessory];
        uuid = [accessory uuid];
        if (uuid)
        {
          [v47 setObject:accessory forKeyedSubscript:uuid];
          v19 = [v10 objectForKeyedSubscript:uuid];
          v20 = v19;
          if (v19)
          {
            [v19 setByAddingObject:v16];
          }

          else
          {
            [MEMORY[0x277CBEB98] setWithObject:v16];
          }
          v21 = ;
          [v10 setObject:v21 forKeyedSubscript:uuid];
        }
      }

      v13 = [monitoredCharacteristics2 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v13);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [v47 allKeys];
  v22 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  v24 = v44;
  if (v22)
  {
    v25 = v22;
    *&v23 = 138543618;
    v43 = v23;
    v26 = *v49;
    do
    {
      v27 = 0;
      v45 = v25;
      do
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v48 + 1) + 8 * v27);
        v29 = [v47 objectForKeyedSubscript:{v28, v43}];
        v30 = [v10 objectForKeyedSubscript:v28];
        v31 = v30;
        if (v29)
        {
          v32 = v30 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (!v32)
        {
          clientIdentifier = [(HMDWidgetTimelineRefresher *)v24 clientIdentifier];
          [(HMDWidgetTimelineRefresher *)v24 setNotificationEnabled:v31 forCharacteristics:clientIdentifier clientIdentifier:?];

          v34 = objc_autoreleasePoolPush();
          v35 = v24;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            [v29 shortDescription];
            v38 = v10;
            v40 = v39 = v26;
            *buf = v43;
            v59 = v37;
            v60 = 2112;
            v61 = v40;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@- stopped monitoring accessory: %@", buf, 0x16u);

            v26 = v39;
            v10 = v38;
            v25 = v45;

            v24 = v44;
          }

          objc_autoreleasePoolPop(v34);
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v25);
  }

  v41 = objc_opt_new();
  [(HMDWidgetTimelineRefresher *)v24 setMonitoredCharacteristics:v41];

  v42 = *MEMORY[0x277D85DE8];
}

- (id)monitorCharacteristicsForHome:(id)home fetchSpecifications:(id)specifications
{
  v128 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  specificationsCopy = specifications;
  array = [MEMORY[0x277CBEB18] array];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = specificationsCopy;
  v9 = [obj countByEnumeratingWithState:&v110 objects:v127 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v111;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v111 != v11)
        {
          objc_enumerationMutation(obj);
        }

        name = [*(*(&v110 + 1) + 8 * i) name];
        [array addObject:name];
      }

      v10 = [obj countByEnumeratingWithState:&v110 objects:v127 count:16];
    }

    while (v10);
  }

  v68 = array;

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    name2 = [homeCopy name];
    shortDescription = [homeCopy shortDescription];
    v20 = [array componentsJoinedByString:{@", "}];
    *buf = 138544130;
    v120 = v17;
    v121 = 2112;
    v122 = name2;
    v123 = 2112;
    v124 = shortDescription;
    v125 = 2112;
    v126 = v20;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@monitorCharacteristicsForHome: '%@' [%@], fetch specifications: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v72 = objc_opt_new();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v67 = homeCopy;
  hapAccessories = [homeCopy hapAccessories];
  v73 = [hapAccessories countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v73)
  {
    v71 = *v107;
    v70 = selfCopy;
    do
    {
      v21 = 0;
      do
      {
        if (*v107 != v71)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v75 = v21;
        v78 = *(*(&v106 + 1) + 8 * v21);
        v22 = [MEMORY[0x277CBEB58] set];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v76 = obj;
        v80 = [v76 countByEnumeratingWithState:&v102 objects:v117 count:16];
        if (v80)
        {
          v77 = *v103;
          do
          {
            v23 = 0;
            do
            {
              if (*v103 != v77)
              {
                objc_enumerationMutation(v76);
              }

              v82 = v23;
              v24 = *(*(&v102 + 1) + 8 * v23);
              v98 = 0u;
              v99 = 0u;
              v100 = 0u;
              v101 = 0u;
              services = [v78 services];
              v26 = [services countByEnumeratingWithState:&v98 objects:v116 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v99;
                v84 = *v99;
                do
                {
                  v29 = 0;
                  v88 = v27;
                  do
                  {
                    if (*v99 != v28)
                    {
                      objc_enumerationMutation(services);
                    }

                    v30 = *(*(&v98 + 1) + 8 * v29);
                    serviceTypes = [v24 serviceTypes];
                    type = [v30 type];
                    if ([serviceTypes containsObject:type])
                    {
                      associatedServiceTypes = [v24 associatedServiceTypes];
                      if ([associatedServiceTypes hmf_isEmpty])
                      {
                      }

                      else
                      {
                        [v24 associatedServiceTypes];
                        v34 = v24;
                        v36 = v35 = services;
                        associatedServiceType = [v30 associatedServiceType];
                        v86 = [v36 containsObject:associatedServiceType];

                        v28 = v84;
                        services = v35;
                        v24 = v34;
                        v27 = v88;

                        if (!v86)
                        {
                          goto LABEL_41;
                        }
                      }

                      v96 = 0u;
                      v97 = 0u;
                      v94 = 0u;
                      v95 = 0u;
                      serviceTypes = [v24 characteristicTypes];
                      v38 = [serviceTypes countByEnumeratingWithState:&v94 objects:v115 count:16];
                      if (v38)
                      {
                        v39 = v38;
                        v40 = *v95;
                        do
                        {
                          for (j = 0; j != v39; ++j)
                          {
                            if (*v95 != v40)
                            {
                              objc_enumerationMutation(serviceTypes);
                            }

                            v42 = [v30 findCharacteristicWithType:*(*(&v94 + 1) + 8 * j)];
                            if (v42)
                            {
                              [v22 addObject:v42];
                            }
                          }

                          v39 = [serviceTypes countByEnumeratingWithState:&v94 objects:v115 count:16];
                        }

                        while (v39);
                        v28 = v84;
                        v27 = v88;
                      }
                    }

                    else
                    {
                    }

LABEL_41:
                    ++v29;
                  }

                  while (v29 != v27);
                  v27 = [services countByEnumeratingWithState:&v98 objects:v116 count:16];
                }

                while (v27);
              }

              v23 = v82 + 1;
            }

            while (v82 + 1 != v80);
            v80 = [v76 countByEnumeratingWithState:&v102 objects:v117 count:16];
          }

          while (v80);
        }

        if ([v22 count])
        {
          v43 = objc_autoreleasePoolPush();
          v89 = v70;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            home = [v78 home];
            name3 = [home name];
            name4 = [v78 name];
            *buf = 138543874;
            v120 = v45;
            v121 = 2112;
            v122 = name3;
            v123 = 2112;
            v124 = name4;
            _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Monitoring accessory: '%@:%@'", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v43);
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v83 = v22;
          v49 = [v83 countByEnumeratingWithState:&v90 objects:v114 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v91;
            v79 = *v91;
            do
            {
              v52 = 0;
              v81 = v50;
              do
              {
                if (*v91 != v51)
                {
                  objc_enumerationMutation(v83);
                }

                v53 = *(*(&v90 + 1) + 8 * v52);
                v54 = objc_autoreleasePoolPush();
                v55 = v89;
                v56 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                {
                  v57 = HMFGetLogIdentifier();
                  service = [v53 service];
                  type2 = [service type];
                  v59 = HAPShortUUIDType();
                  characteristicType = [v53 characteristicType];
                  HAPShortUUIDType();
                  v61 = v87 = v54;
                  characteristicTypeDescription = [v53 characteristicTypeDescription];
                  *buf = 138544130;
                  v120 = v57;
                  v121 = 2112;
                  v122 = v59;
                  v123 = 2112;
                  v124 = v61;
                  v125 = 2112;
                  v126 = characteristicTypeDescription;
                  _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@+ monitoring service: '%@', characteristic: '[%@] (%@)'", buf, 0x2Au);

                  v51 = v79;
                  v50 = v81;

                  v54 = v87;
                }

                objc_autoreleasePoolPop(v54);
                ++v52;
              }

              while (v50 != v52);
              v50 = [v83 countByEnumeratingWithState:&v90 objects:v114 count:16];
            }

            while (v50);
          }

          clientIdentifier = [(HMDWidgetTimelineRefresher *)v89 clientIdentifier];
          [(HMDWidgetTimelineRefresher *)v89 setNotificationEnabled:v83 forCharacteristics:clientIdentifier clientIdentifier:?];
        }

        [v72 unionSet:v22];

        v21 = v75 + 1;
      }

      while (v75 + 1 != v73);
      v73 = [hapAccessories countByEnumeratingWithState:&v106 objects:v118 count:16];
    }

    while (v73);
  }

  v64 = [v72 copy];
  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

- (id)internalMonitorCharacteristicsForCurrentHome:(id)home activeAutoBahnWidgetKinds:(id)kinds
{
  v43 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  kindsCopy = kinds;
  v8 = objc_opt_new();
  if (homeCopy)
  {
    if (self && [homeCopy hasAnyResident])
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        shortDescription = [homeCopy shortDescription];
        *buf = 138543618;
        v40 = v12;
        v41 = 2112;
        v42 = shortDescription;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating monitored characteristics for current home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v14 = [objc_opt_class() fetchSpecificationsForWidgetKinds:kindsCopy];
      v15 = [(HMDWidgetTimelineRefresher *)selfCopy monitorCharacteristicsForHome:homeCopy fetchSpecifications:v14];
      [v8 unionSet:v15];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        shortDescription2 = [homeCopy shortDescription];
        *buf = 138543618;
        v40 = v19;
        v41 = 2112;
        v42 = shortDescription2;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Not updating monitored characteristics for current home: %@ because there is no resident", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  if ([kindsCopy containsObject:@"com.apple.Home.widget.security.singleAccessory"])
  {
    v33 = kindsCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
    homes = [homeManager homes];

    v23 = [homes countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(homes);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          v28 = HMFEqualObjects();
          if (self && (v28 & 1) == 0 && [v27 hasAnyResident])
          {
            v29 = +[HMDWidgetFetchSpecification allOtherHomesSingleAccessorySecurityFetchSpecifications];
            v30 = [(HMDWidgetTimelineRefresher *)self monitorCharacteristicsForHome:v27 fetchSpecifications:v29];

            [v8 unionSet:v30];
          }
        }

        v24 = [homes countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }

    kindsCopy = v33;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)updateMonitoredCharacteristicsAndRefreshWidgetTimelines
{
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) monitoredCharacteristics];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) accessoriesMonitoredForReachability];
  [*(a1 + 32) stopMonitoringOldCharacteristics];
  v5 = *(a1 + 32);
  v6 = [v5 homeManager];
  v7 = [*(a1 + 32) currentHomeUUID];
  v8 = [v6 _homeWithUUID:v7];
  v9 = [*(a1 + 32) activeAutoBahnWidgetKinds];
  v10 = [v5 internalMonitorCharacteristicsForCurrentHome:v8 activeAutoBahnWidgetKinds:v9];
  [*(a1 + 32) setMonitoredCharacteristics:v10];

  v11 = [*(a1 + 32) accessoriesMonitoredForReachability];
  v12 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke_2;
  v14[3] = &unk_27868A750;
  v14[4] = v12;
  v15 = v3;
  v13 = v3;
  [v12 updateReachabilityMonitorWithPreviousAccessories:v4 currentAccessories:v11 completion:v14];
}

void __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke_3;
  v5[3] = &unk_27868A750;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) monitoredCharacteristics];
  LOBYTE(v2) = [v2 isEqualToSet:v3];

  if ((v2 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Refreshing all Home widgets because of major changes / daemon restart", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 40) forceUpdateAutobahnTimelineHandler];
    v9 = [*(a1 + 40) activeAutoBahnWidgetKinds];
    (v8)[2](v8, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForDarwinNotifications
{
  v29 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  darwinNotificationProvider = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke;
  v20[3] = &unk_278682DC8;
  objc_copyWeak(&v21, &location);
  v5 = [darwinNotificationProvider notifyRegisterDispatch:"com.apple.Home.homeSensingChanged" outToken:&self->_homeSensingChangedNotificationToken queue:workQueue handler:v20];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v9;
      v25 = 2080;
      v26 = "com.apple.Home.homeSensingChanged";
      v27 = 1024;
      v28 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to register notification for %s with error: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v6);
  }

  darwinNotificationProvider2 = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
  workQueue2 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke_233;
  v18[3] = &unk_278682DC8;
  objc_copyWeak(&v19, &location);
  v12 = [darwinNotificationProvider2 notifyRegisterDispatch:"com.apple.Home.selectedHomeChanged" outToken:&self->_selectedHomeChangedNotificationToken queue:workQueue2 handler:v18];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v16;
      v25 = 2080;
      v26 = "com.apple.Home.selectedHomeChanged";
      v27 = 1024;
      v28 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to register notification for %s with error: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  v17 = *MEMORY[0x277D85DE8];
}

void __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleHomeSensingChangedNotification];
}

void __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke_233(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSelectedHomeChangedNotification];
}

- (void)registerForMessagesWithMessageDispatcher:(id)dispatcher
{
  v8[1] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1580] receiver:self policies:v6 selector:sel_handleMonitorCharacteristicsForWidget_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1568] receiver:self policies:v6 selector:sel_handleFetchState_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1590] receiver:self policies:v6 selector:sel_handlePerformRequests_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1578] receiver:self policies:v6 selector:sel_handleMonitorActionSetsForWidget_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1570] receiver:self policies:v6 selector:sel_handleFetchStateForActionSets_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1588] receiver:self policies:v6 selector:sel_handleMonitorMTRAttributes_];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v45 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
  if (homeManager)
  {
    [(HMDWidgetTimelineRefresher *)self configureSwiftExtensions];
    notificationCenter = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_processCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];

    notificationCenter2 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleCurrentOrPrimaryHomeChangedNotification_ name:@"HMDNotificationCurrentHomeDidChange" object:homeManager];

    notificationCenter3 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleCurrentOrPrimaryHomeChangedNotification_ name:@"HMDNotificationPrimaryHomeDidChange" object:homeManager];

    notificationCenter4 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter4 addObserver:self selector:sel_handleHomeAddedNotification_ name:@"HMDHomeAddedNotification" object:homeManager];

    notificationCenter5 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter5 addObserver:self selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:homeManager];

    notificationCenter6 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter6 addObserver:self selector:sel_handleAccessoryAddedNotification_ name:@"HMDNotificationHomeAddedAccessory" object:0];

    notificationCenter7 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter7 addObserver:self selector:sel_handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

    notificationCenter8 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter8 addObserver:self selector:sel_handleResidentDeviceChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    notificationCenter9 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter9 addObserver:self selector:sel_handleResidentDeviceAddedOrRemovedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

    notificationCenter10 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter10 addObserver:self selector:sel_handleResidentDeviceAddedOrRemovedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];

    notificationCenter11 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter11 addObserver:self selector:sel_handleNotifiedXPCClientsOfHomeConfigurationChangeNotification_ name:@"HMDHomeManagerNotifiedXPCClientsOfHomeConfigurationChangeNotification" object:0];

    notificationCenter12 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter12 addObserver:self selector:sel_handleRestrictedGuestScheduleStartedNotification_ name:@"HMDUserRestrictedGuestScheduleStartedNotification" object:0];

    notificationCenter13 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter13 addObserver:self selector:sel_handleRestrictedGuestScheduleEndedNotification_ name:@"HMDUserRestrictedGuestScheduleEndedNotification" object:0];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = +[HMDWidgetFetchSpecification allHomeLockScreenWidgetKinds];
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v17)
    {
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
          [defaultCenter addObserver:self selector:sel_handleNotificationOfPossibleNewWidget_ name:v20 object:0 suspensionBehavior:4];
        }

        v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    messageDispatcher = [homeManager messageDispatcher];
    [(HMDWidgetTimelineRefresher *)self registerForMessagesWithMessageDispatcher:messageDispatcher];

    [(HMDWidgetTimelineRefresher *)self registerForDarwinNotifications];
    workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);

    widgetRefreshDispatchTimer = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    v25 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(widgetRefreshDispatchTimer, v25, 0x68C61714000uLL, 0x8BB2C97000uLL);

    objc_initWeak(location, self);
    widgetRefreshDispatchTimer2 = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke_2;
    handler[3] = &unk_278686B80;
    objc_copyWeak(&v35, location);
    dispatch_source_set_event_handler(widgetRefreshDispatchTimer2, handler);

    widgetRefreshDispatchTimer3 = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    dispatch_activate(widgetRefreshDispatchTimer3);

    objc_destroyWeak(&v35);
    objc_destroyWeak(location);
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v31;
      v43 = 2080;
      v44 = "[HMDWidgetTimelineRefresher configure]";
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil during %s, no widgets configured.", location, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __39__HMDWidgetTimelineRefresher_configure__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke_3;
  v2[3] = &unk_27868A728;
  v2[4] = WeakRetained;
  [WeakRetained fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:v2];
}

- (void)dealloc
{
  if (self->_homeSensingChangedNotificationToken != -1)
  {
    darwinNotificationProvider = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
    [darwinNotificationProvider notifyCancel:self->_homeSensingChangedNotificationToken];
  }

  if (self->_selectedHomeChangedNotificationToken != -1)
  {
    darwinNotificationProvider2 = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
    [darwinNotificationProvider2 notifyCancel:self->_selectedHomeChangedNotificationToken];
  }

  v5.receiver = self;
  v5.super_class = HMDWidgetTimelineRefresher;
  [(HMDWidgetTimelineRefresher *)&v5 dealloc];
}

- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)manager queue:(id)queue dataSource:(id)source reachabilityUpdateDispatchDelayNs:(int64_t)ns forceUpdateTimelineDispatchDelayNs:(int64_t)delayNs
{
  v99 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  queueCopy = queue;
  sourceCopy = source;
  v89.receiver = self;
  v89.super_class = HMDWidgetTimelineRefresher;
  v14 = [(HMDWidgetTimelineRefresher *)&v89 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_homeManager, managerCopy);
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v15->_dataSource, source);
    v16 = [MEMORY[0x277CBEB98] set];
    widgetKindsToUpdate = v15->_widgetKindsToUpdate;
    v15->_widgetKindsToUpdate = v16;

    v18 = objc_opt_new();
    accessoryIsReachableByUUID = v15->_accessoryIsReachableByUUID;
    v15->_accessoryIsReachableByUUID = v18;

    v20 = [MEMORY[0x277CBEB98] set];
    monitoredCharacteristics = v15->_monitoredCharacteristics;
    v15->_monitoredCharacteristics = v20;

    v22 = [sourceCopy notificationCenterForTimelineRefresher:v15];
    notificationCenter = v15->_notificationCenter;
    v15->_notificationCenter = v22;

    v24 = [sourceCopy darwinNotificationProviderForTimelineRefresher:v15];
    darwinNotificationProvider = v15->_darwinNotificationProvider;
    v15->_darwinNotificationProvider = v24;

    v26 = [sourceCopy widgetConfigurationReaderForTimelineRefresher:v15];
    widgetConfigurationReader = v15->_widgetConfigurationReader;
    v15->_widgetConfigurationReader = v26;

    v28 = [sourceCopy widgetTimelineControllerForTimelineRefresher:v15];
    timelineController = v15->_timelineController;
    v15->_timelineController = v28;

    v30 = [sourceCopy logEventSubmitterForTimelineRefresher:v15];
    logEventSubmitter = v15->_logEventSubmitter;
    v15->_logEventSubmitter = v30;

    v32 = [sourceCopy timerManagerForTimelineRefresher:v15 options:0];
    timerManager = v15->_timerManager;
    v15->_timerManager = v32;

    [(HMFTimerManager *)v15->_timerManager setDelegate:v15];
    [(HMFTimerManager *)v15->_timerManager setDelegateQueue:v15->_workQueue];
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDWidgetTimelineRefresher.Autobahn", @"com.apple.HomeKitDaemon"];
    clientIdentifier = v15->_clientIdentifier;
    v15->_clientIdentifier = v34;

    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDWidgetTimelineRefresher", @"com.apple.HomeKitDaemon"];
    clientIdentifierForExplicitlyMonitoredCharacteristics = v15->_clientIdentifierForExplicitlyMonitoredCharacteristics;
    v15->_clientIdentifierForExplicitlyMonitoredCharacteristics = v36;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    monitoredCharacteristicsMapByWidget = v15->_monitoredCharacteristicsMapByWidget;
    v15->_monitoredCharacteristicsMapByWidget = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    monitoredActionSetsMapByWidget = v15->_monitoredActionSetsMapByWidget;
    v15->_monitoredActionSetsMapByWidget = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    monitoredMTRAttributesByWidget = v15->_monitoredMTRAttributesByWidget;
    v15->_monitoredMTRAttributesByWidget = dictionary3;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceControllersByID = v15->_deviceControllersByID;
    v15->_deviceControllersByID = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    devicesByController = v15->_devicesByController;
    v15->_devicesByController = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    cachedValueByCharacteristic = v15->_cachedValueByCharacteristic;
    v15->_cachedValueByCharacteristic = strongToStrongObjectsMapTable3;

    strongToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    cachedIsOnStateByActionSet = v15->_cachedIsOnStateByActionSet;
    v15->_cachedIsOnStateByActionSet = strongToStrongObjectsMapTable4;

    strongToStrongObjectsMapTable5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingRequestValueByUUID = v15->_pendingRequestValueByUUID;
    v15->_pendingRequestValueByUUID = strongToStrongObjectsMapTable5;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    cachedActionSetExecuteErrorByUUID = v15->_cachedActionSetExecuteErrorByUUID;
    v15->_cachedActionSetExecuteErrorByUUID = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    cachedActionSetExecuteErrorTimerContextByUUID = v15->_cachedActionSetExecuteErrorTimerContextByUUID;
    v15->_cachedActionSetExecuteErrorTimerContextByUUID = dictionary5;

    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    characteristicsToPreviouslySeenValues = v15->_characteristicsToPreviouslySeenValues;
    v15->_characteristicsToPreviouslySeenValues = dictionary6;

    v60 = [MEMORY[0x277CBEB98] set];
    activeAutoBahnWidgetKinds = v15->_activeAutoBahnWidgetKinds;
    v15->_activeAutoBahnWidgetKinds = v60;

    v62 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v15->_workQueue);
    widgetRefreshDispatchTimer = v15->_widgetRefreshDispatchTimer;
    v15->_widgetRefreshDispatchTimer = v62;

    v15->_homeSensingChangedNotificationToken = -1;
    v15->_selectedHomeChangedNotificationToken = -1;
    v15->_reachabilityUpdateDispatchDelayNs = ns;
    v15->_forceUpdateTimelineDispatchDelayNs = delayNs;
    v64 = [MEMORY[0x277CBEB98] set];
    widgetRefreshCoalesceKinds = v15->_widgetRefreshCoalesceKinds;
    v15->_widgetRefreshCoalesceKinds = v64;

    v66 = [MEMORY[0x277CBEB58] set];
    actionSetsPendingPrimaryResidentStateUpdates = v15->_actionSetsPendingPrimaryResidentStateUpdates;
    v15->_actionSetsPendingPrimaryResidentStateUpdates = v66;

    currentHomeUUID = [managerCopy currentHomeUUID];
    v69 = currentHomeUUID;
    if (currentHomeUUID)
    {
      v70 = 0;
      uUID = currentHomeUUID;
    }

    else
    {
      primaryHomeUUID = [managerCopy primaryHomeUUID];
      ns = primaryHomeUUID;
      if (primaryHomeUUID)
      {
        v70 = 0;
        uUID = primaryHomeUUID;
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        ns = 0;
        v70 = 1;
      }
    }

    objc_storeStrong(&v15->_currentHomeUUID, uUID);
    if (v70)
    {
    }

    if (!v69)
    {
    }

    v73 = objc_autoreleasePoolPush();
    v74 = v15;
    v75 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      v76 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      primaryHomeUUID2 = [managerCopy primaryHomeUUID];

      if (primaryHomeUUID2)
      {
        primaryHomeUUID3 = [managerCopy primaryHomeUUID];
        [primaryHomeUUID3 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v91 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      currentHomeUUID2 = [managerCopy currentHomeUUID];

      if (currentHomeUUID2)
      {
        currentHomeUUID3 = [managerCopy currentHomeUUID];
        [currentHomeUUID3 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v90 = *buf;
      *buf = 138544386;
      *&buf[4] = v76;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v93 = 2096;
      v94 = &v91;
      v95 = 1040;
      v96 = 16;
      v97 = 2096;
      v98 = &v90;
      _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@primary home is %{uuid_t}.16P, current home is %{uuid_t}.16P", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v73);
    objc_initWeak(buf, v74);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __136__HMDWidgetTimelineRefresher_initWithHomeManager_queue_dataSource_reachabilityUpdateDispatchDelayNs_forceUpdateTimelineDispatchDelayNs___block_invoke;
    aBlock[3] = &unk_278674C30;
    objc_copyWeak(&v88, buf);
    v81 = _Block_copy(aBlock);
    forceUpdateAutobahnTimelineHandler = v74->_forceUpdateAutobahnTimelineHandler;
    v74->_forceUpdateAutobahnTimelineHandler = v81;

    [(HMDWidgetTimelineRefresher *)v74 initSwiftExtensions];
    v83 = v74;
    objc_destroyWeak(&v88);
    objc_destroyWeak(buf);
  }

  v84 = *MEMORY[0x277D85DE8];
  return v15;
}

void __136__HMDWidgetTimelineRefresher_initWithHomeManager_queue_dataSource_reachabilityUpdateDispatchDelayNs_forceUpdateTimelineDispatchDelayNs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained forceUpdateTimelineForWidgetKinds:v3];
}

- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v5 = HMDispatchQueueNameString();
  uTF8String = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(uTF8String, v7);
  createDataSource = [(HMDWidgetTimelineRefresher *)self createDataSource];
  v10 = [(HMDWidgetTimelineRefresher *)self initWithHomeManager:managerCopy queue:v8 dataSource:createDataSource reachabilityUpdateDispatchDelayNs:1000000000 forceUpdateTimelineDispatchDelayNs:333333333];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t149 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t149, &__block_literal_global_403);
  }

  v3 = logCategory__hmf_once_v150;

  return v3;
}

void __41__HMDWidgetTimelineRefresher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v150;
  logCategory__hmf_once_v150 = v1;
}

+ (id)fetchSpecificationsForWidgetKinds:(id)kinds
{
  kindsCopy = kinds;
  v4 = objc_opt_new();
  if ([kindsCopy containsObject:@"com.apple.Home.widget.summary.category"])
  {
    v5 = +[HMDWidgetFetchSpecification lightsFetchSpecifications];
    [v4 unionSet:v5];

    v6 = +[HMDWidgetFetchSpecification mainHomeSecurityFetchSpecifications];
    [v4 unionSet:v6];
  }

  if ([kindsCopy containsObject:@"com.apple.Home.widget.lights.category"])
  {
    v7 = +[HMDWidgetFetchSpecification lightsFetchSpecifications];
    [v4 unionSet:v7];
  }

  if ([kindsCopy containsObject:@"com.apple.Home.widget.security.category"])
  {
    v8 = +[HMDWidgetFetchSpecification mainHomeSecurityFetchSpecifications];
    [v4 unionSet:v8];
  }

  if ([kindsCopy containsObject:@"com.apple.Home.widget.security.singleAccessory"])
  {
    v9 = +[HMDWidgetFetchSpecification allOtherHomesSingleAccessorySecurityFetchSpecifications];
    [v4 unionSet:v9];
  }

  v10 = [v4 copy];

  return v10;
}

@end