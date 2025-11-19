@interface HMDWidgetTimelineRefresher
+ (id)fetchSpecificationsForWidgetKinds:(id)a3;
+ (id)logCategory;
- (BOOL)_getRequestsFromMessage:(id)a3 outCharacteristicWriteValueByUUUIDs:(id *)a4 outExecuteActionSetUUUIDs:(id *)a5 outExecuteTurnOffActionSetUUIDs:(id *)a6;
- (BOOL)_value:(id)a3 isApproximatelyEqualToValue:(id)a4 forMinimumValue:(id)a5 maximumValue:(id)a6;
- (BOOL)actionSetIsOn:(id)a3;
- (BOOL)homeHasAnyResident:(uint64_t)a1;
- (HMDHomeManager)homeManager;
- (HMDWidgetAccessoryReachabilityMonitor)reachabilityMonitor;
- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)a3;
- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)a3 queue:(id)a4 dataSource:(id)a5 reachabilityUpdateDispatchDelayNs:(int64_t)a6 forceUpdateTimelineDispatchDelayNs:(int64_t)a7;
- (NSUUID)messageTargetUUID;
- (_TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions)_swiftExtensions;
- (id)_firstErrorFromCharacteristicWriteResponsePayload:(id)a3;
- (id)_getPendingWriteValueForUUID:(id)a3;
- (id)accessoriesMonitoredForReachability;
- (id)actionSetsByHome:(id)a3;
- (id)actionSetsFromSPIClientIdentifiers:(void *)a1;
- (id)actionSetsMonitoredForWidgets;
- (id)cachedIsOnStateBySPIClientIdentifierForActionSets:(void *)a1;
- (id)characteristicsForMonitoredCharacteristics:(void *)a1;
- (id)characteristicsFromActionSets:(void *)a1;
- (id)characteristicsFromSPIClientIdentifiers:(void *)a1;
- (id)characteristicsMonitoredForWidgets;
- (id)createDataSource;
- (id)didExecuteFailBySPIClientIdentifierForActionSets:(void *)a1;
- (id)internalMonitorCharacteristicsForCurrentHome:(id)a3 activeAutoBahnWidgetKinds:(id)a4;
- (id)modifiedCharacteristicsFromNotification:(id)a3;
- (id)monitorCharacteristicsForHome:(id)a3 fetchSpecifications:(id)a4;
- (id)reachabilityByAccessorySPIClientIdentifierForCharacteristics:(id)a3;
- (id)thresholdForCharacteristic:(id)a3;
- (id)valueByCharacteristicSPIClientIdentifierForCharacteristics:(id)a3;
- (id)widgetKindsToUpdateFromFetchSpecifications:(id)a3 assumingChangedCharacteristic:(id)a4;
- (id)widgetKindsToUpdateFromFetchSpecifications:(id)a3 changedCharacteristics:(id)a4;
- (void)_clearCachedErrorForActionSet:(void *)a1;
- (void)_refreshTimelineForWidgetKinds:(void *)a3 withReason:;
- (void)_removePendingRequestValueForUUID:(id)a3 messageIdentifier:(id)a4;
- (void)_setCachedError:(void *)a3 forActionSet:;
- (void)_setPendingRequestValue:(id)a3 forUUID:(id)a4 messageIdentifier:(id)a5;
- (void)accessoryReachabilityDidChange:(id)a3;
- (void)cleanUpRemovedWidgetsFromWidgets:(void *)a3 completion:;
- (void)configure;
- (void)configureSwiftExtensions;
- (void)dealloc;
- (void)fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:(id)a3;
- (void)forceUpdateTimelineForWidgetKinds:(id)a3;
- (void)handleAccessoryAddedNotification:(id)a3;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)a3;
- (void)handleAccessoryReachabilityChanged:(id)a3;
- (void)handleAccessoryRemovedNotification:(id)a3;
- (void)handleAutobahnAccessoryReachabilityChanged:(id)a3;
- (void)handleCurrentHomeChangeNotification:(id)a3;
- (void)handleCurrentOrPrimaryHomeChangedNotification:(id)a3;
- (void)handleFetchState:(id)a3;
- (void)handleFetchStateForActionSets:(id)a3;
- (void)handleHomeAddedNotification:(id)a3;
- (void)handleHomeRemovedNotification:(id)a3;
- (void)handleHomeSensingChangedNotification;
- (void)handleMonitorActionSetsForWidget:(id)a3;
- (void)handleMonitorCharacteristicsForWidget:(id)a3;
- (void)handleNotificationOfPossibleNewWidget:(id)a3;
- (void)handleNotifiedXPCClientsOfHomeConfigurationChangeNotification:(id)a3;
- (void)handlePerformRequests:(id)a3;
- (void)handleResidentDeviceAddedOrRemovedNotification:(id)a3;
- (void)handleResidentDeviceChangedNotification:(id)a3;
- (void)handleSelectedHomeChangedNotification;
- (void)handleTimerFiredForActionSet:(id)a3;
- (void)initSwiftExtensions;
- (void)internalProcessChangedCharacteristics:(id)a3 activeAutoBahnWidgetKinds:(id)a4;
- (void)processCharacteristicsChangedNotification:(id)a3;
- (void)refreshTimelineForConfiguredWidgetsWithReason:(void *)a1;
- (void)refreshTimelineForWidgetKinds:(void *)a3 withReason:(int)a4 shouldCoalesce:;
- (void)registerForDarwinNotifications;
- (void)registerForMessagesWithMessageDispatcher:(id)a3;
- (void)setNotificationEnabled:(void *)a3 forCharacteristics:(void *)a4 clientIdentifier:;
- (void)stopMonitoringOldCharacteristics;
- (void)timerManager:(id)a3 didFireForTimerContext:(id)a4;
- (void)updateCachedIsOnStateForActionSets:(void *)a1;
- (void)updateMonitoredCharacteristicsAndRefreshWidgetTimelines;
- (void)updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:(int64_t)a3 afterChangesFromBlock:(id)a4;
- (void)updateNotificationRegistrationWithPreviousCharacteristics:(void *)a3 currentCharacteristics:(uint64_t)a4 updateRequestQualityOfService:;
- (void)updateReachabilityMonitorWithPreviousAccessories:(id)a3 currentAccessories:(id)a4 completion:(id)a5;
- (void)writeCharacteristicsWithWriteValueBySPIClientIdentifier:(id)a3 widgetKind:(id)a4 message:(id)a5 completionGroup:(id)a6 completion:(id)a7;
@end

@implementation HMDWidgetTimelineRefresher

- (_TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions)_swiftExtensions
{
  v2 = self;
  v3 = [(HMDWidgetTimelineRefresher *)v2 swiftExtensions];
  sub_253CD0E18();
  swift_unknownObjectRelease();

  _s15SwiftExtensionsCMa_1();
  swift_dynamicCast();

  return v5;
}

- (void)initSwiftExtensions
{
  v2 = self;
  sub_253232620();
}

- (void)configureSwiftExtensions
{
  v2 = self;
  sub_2532327D4();
}

- (id)createDataSource
{
  v2 = [objc_allocWithZone(type metadata accessor for WidgetTimelineRefresherDataSource()) init];

  return v2;
}

- (HMDWidgetAccessoryReachabilityMonitor)reachabilityMonitor
{
  v2 = [(HMDWidgetTimelineRefresher *)self _swiftExtensions];
  v3 = *(&v2->super.isa + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitor);

  return v3;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)accessoryReachabilityDidChange:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(HMDWidgetTimelineRefresher *)self handleAutobahnAccessoryReachabilityChanged:v4];
    [(HMDWidgetTimelineRefresher *)self handleAccessoryReachabilityChanged:v4];
  }
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDWidgetTimelineRefresher *)self homeManager];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (void)handleTimerFiredForActionSet:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Clearing cached error for action set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 uuid];
  v10 = [(HMDWidgetTimelineRefresher *)v6 cachedActionSetExecuteErrorByUUID];
  [v10 removeObjectForKey:v9];

  v11 = [(HMDWidgetTimelineRefresher *)v6 cachedActionSetExecuteErrorTimerContextByUUID];
  [v11 removeObjectForKey:v9];

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [(HMDWidgetTimelineRefresher *)v6 monitoredActionSetsMapByWidget];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__HMDWidgetTimelineRefresher_handleTimerFiredForActionSet___block_invoke;
  v17[3] = &unk_27972F368;
  v18 = v12;
  v19 = v4;
  v14 = v4;
  v15 = v12;
  [v13 enumerateKeysAndObjectsUsingBlock:v17];

  [(HMDWidgetTimelineRefresher *)v6 refreshTimelineForWidgetKinds:v15 withReason:@"Action Set Error Cleared" shouldCoalesce:1];
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

- (void)refreshTimelineForWidgetKinds:(void *)a3 withReason:(int)a4 shouldCoalesce:
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [a1 workQueue];
    dispatch_assert_queue_V2(v9);

    if ([v7 count])
    {
      if (!a4)
      {
        v23 = [a1 widgetRefreshCoalesceKinds];
        v24 = [v7 setByAddingObjectsFromSet:v23];
        [(HMDWidgetTimelineRefresher *)a1 _refreshTimelineForWidgetKinds:v24 withReason:v8];
LABEL_11:

        goto LABEL_12;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v7 allObjects];
        v15 = [v14 componentsJoinedByString:{@", "}];
        v26 = 138543874;
        v27 = v13;
        v28 = 2112;
        v29 = v8;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Coalescing and delaying widget refresh due to %@ for kinds: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v16 = [v11 widgetRefreshCoalesceKinds];
      v17 = [v16 setByAddingObjectsFromSet:v7];
      [v11 setWidgetRefreshCoalesceKinds:v17];

      v18 = [v11 widgetRefreshCoalesceTimerContext];

      if (!v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = v11;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v22;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Starting coalescing timer", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        [v20 setWidgetRefreshCoalesceReason:v8];
        v23 = [v20 timerManager];
        v24 = [v23 startTimerWithTimeInterval:@"AF927200-D9B8-4498-9175-6620DB053CC6" object:1.0];
        [v20 setWidgetRefreshCoalesceTimerContext:v24];
        goto LABEL_11;
      }
    }
  }

LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_refreshTimelineForWidgetKinds:(void *)a3 withReason:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 widgetRefreshCoalesceTimerContext];

    if (v7)
    {
      v8 = [a1 timerManager];
      v9 = [a1 widgetRefreshCoalesceTimerContext];
      [v8 cancelTimerForContext:v9];
    }

    [a1 setWidgetRefreshCoalesceReason:0];
    v10 = [MEMORY[0x277CBEB98] set];
    [a1 setWidgetRefreshCoalesceKinds:v10];

    v11 = objc_autoreleasePoolPush();
    v12 = a1;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v5 allObjects];
      v16 = [v15 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshing widget due to %@ for kinds: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v17 = [v12 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDWidgetTimelineRefresher__refreshTimelineForWidgetKinds_withReason___block_invoke;
    block[3] = &unk_279734960;
    v20 = v5;
    v21 = v12;
    v22 = v6;
    dispatch_async(v17, block);
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

        _os_log_impl(&dword_2531F8000, v15, v16, v17, buf, 0x20u);

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

- (void)timerManager:(id)a3 didFireForTimerContext:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDWidgetTimelineRefresher *)self widgetRefreshCoalesceTimerContext];

  if (v9 == v7)
  {
    [(HMDWidgetTimelineRefresher *)self setWidgetRefreshCoalesceTimerContext:0];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Widget refresh coalescing timer fired.", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [(HMDWidgetTimelineRefresher *)v14 widgetRefreshCoalesceKinds];
    v17 = [(HMDWidgetTimelineRefresher *)v14 widgetRefreshCoalesceReason];
    [(HMDWidgetTimelineRefresher *)v14 _refreshTimelineForWidgetKinds:v12 withReason:v17];
  }

  else
  {
    v10 = [v7 object];
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

    if (v12)
    {
      [(HMDWidgetTimelineRefresher *)self handleTimerFiredForActionSet:v12];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v7 object];
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Timer manager fired with object that is unexpected: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v12 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAutobahnAccessoryReachabilityChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v48 = [MEMORY[0x277CBEB58] set];
  v49 = [MEMORY[0x277CBEB58] set];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v70;
    v6 = 0x277CCA000;
    v50 = *v70;
    v51 = v2;
    do
    {
      v7 = 0;
      v52 = v4;
      do
      {
        if (*v70 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v69 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = [v8 home];
        LODWORD(v9) = [(HMDWidgetTimelineRefresher *)v9 homeHasAnyResident:v10];

        if (v9)
        {
          v11 = [*(a1 + 40) accessoryIsReachableByUUID];
          v12 = [v8 uuid];
          v13 = [v11 objectForKeyedSubscript:v12];

          v54 = v13;
          if (v13)
          {
            v14 = [v13 BOOLValue];
          }

          else
          {
            v14 = 1;
          }

          v15 = [*(a1 + 40) reachabilityMonitor];
          v16 = [v15 isAccessoryReachable:v8];

          v62 = v16;
          if (v14 != v16)
          {
            v53 = v7;
            v17 = *(a1 + 40);
            v18 = objc_opt_class();
            v19 = [*(a1 + 40) activeAutoBahnWidgetKinds];
            v59 = [v18 fetchSpecificationsForWidgetKinds:v19];

            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            obj = [*(a1 + 40) monitoredCharacteristics];
            v20 = [obj countByEnumeratingWithState:&v65 objects:v81 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v66;
              v23 = v48;
              if (!v62)
              {
                v23 = v49;
              }

              v57 = v23;
              v58 = *v66;
              do
              {
                v24 = 0;
                v60 = v21;
                do
                {
                  if (*v66 != v22)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v25 = *(*(&v65 + 1) + 8 * v24);
                  v26 = [v25 accessory];
                  v27 = [v26 isEqual:v8];

                  if (v27)
                  {
                    v28 = v57;
                    v29 = [*(a1 + 40) widgetKindsToUpdateFromFetchSpecifications:v59 assumingChangedCharacteristic:v25];
                    [v28 unionSet:v29];

                    v30 = objc_autoreleasePoolPush();
                    v31 = *(a1 + 40);
                    v32 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                    {
                      HMFGetLogIdentifier();
                      v33 = v55 = v30;
                      v34 = [v8 home];
                      [v34 name];
                      v56 = v28;
                      v36 = v35 = v8;
                      v37 = [v35 name];
                      HMFBooleanToString();
                      v39 = v38 = a1;
                      *buf = 138544130;
                      v74 = v33;
                      v75 = 2112;
                      v76 = v36;
                      v77 = 2112;
                      v78 = v37;
                      v79 = 2112;
                      v80 = v39;
                      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' reachability changed to %@.", buf, 0x2Au);

                      v8 = v35;
                      v28 = v56;

                      a1 = v38;
                      v6 = 0x277CCA000uLL;

                      v30 = v55;
                    }

                    objc_autoreleasePoolPop(v30);
                    v40 = [*(v6 + 2992) numberWithBool:v62];
                    v41 = [*(a1 + 40) accessoryIsReachableByUUID];
                    v42 = [v8 uuid];
                    [v41 setObject:v40 forKeyedSubscript:v42];

                    v22 = v58;
                    v21 = v60;
                  }

                  ++v24;
                }

                while (v21 != v24);
                v21 = [obj countByEnumeratingWithState:&v65 objects:v81 count:16];
              }

              while (v21);
            }

            v5 = v50;
            v2 = v51;
            v4 = v52;
            v7 = v53;
          }
        }

        ++v7;
      }

      while (v7 != v4);
      v4 = [v2 countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v4);
  }

  if ([v48 count])
  {
    v43 = dispatch_time(0, [*(a1 + 40) reachabilityUpdateDispatchDelayNs]);
    v44 = [*(a1 + 40) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke_339;
    block[3] = &unk_2797359B0;
    block[4] = *(a1 + 40);
    v64 = v48;
    dispatch_after(v43, v44, block);
  }

  v45 = v49;
  if ([v49 count])
  {
    v46 = [*(a1 + 40) forceUpdateAutobahnTimelineHandler];
    (v46)[2](v46, v49);

    v45 = v49;
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (BOOL)homeHasAnyResident:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a2 enabledResidents];
  v3 = [v2 count] != 0;

  return v3;
}

void __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke_339(uint64_t a1)
{
  v2 = [*(a1 + 32) forceUpdateAutobahnTimelineHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)handleNotificationOfPossibleNewWidget:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [(HMDWidgetTimelineRefresher *)self activeAutoBahnWidgetKinds];
  v7 = [v6 containsObject:v5];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 object];
      *buf = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Duplicate widget '%@' with payload '%@' ignored", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v4 object];
      *buf = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@New widget '%@' has been spotted, with payload '%@'", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__HMDWidgetTimelineRefresher_handleNotificationOfPossibleNewWidget___block_invoke;
    v17[3] = &unk_279735D00;
    v17[4] = v9;
    [(HMDWidgetTimelineRefresher *)v9 fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentDeviceAddedOrRemovedNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

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
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMDWidgetTimelineRefresher *)v10 homeManager];
    v14 = [v13 _homeWithUUID:v8];
    v15 = [v14 name];
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Resident was added or removed for home %@, resetting all characteristic notifications", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)v10 updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentDeviceChangedNotification:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

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
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v8 name];
    v18 = [(HMDWidgetTimelineRefresher *)v14 homeManager];
    v19 = [v18 _homeWithUUID:v12];
    [v19 name];
    v25 = v4;
    v20 = v12;
    v21 = v13;
    v23 = v22 = v8;
    *buf = 138543874;
    v27 = v16;
    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v23;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Resident has changed to %@ for home %@, resetting all characteristic notifications", buf, 0x20u);

    v8 = v22;
    v13 = v21;
    v12 = v20;
    v4 = v25;
  }

  objc_autoreleasePoolPop(v13);
  [(HMDWidgetTimelineRefresher *)v14 updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryRemovedNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

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

  v9 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 name];
    v17 = [v8 name];
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' was removed, resetting all characteristic notifications", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDWidgetTimelineRefresher *)v13 updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryAddedNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDNotificationAddedAccessoryKey"];

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

  v9 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 name];
    v17 = [v8 name];
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' was added, resetting all characteristic notifications", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDWidgetTimelineRefresher *)v13 updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDHomeNotificationKey"];

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
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 shortDescription];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Home '%@' was removed, resetting all characteristic notifications", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)v10 updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDHomeNotificationKey"];

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
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 shortDescription];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Home '%@' was added, resetting all characteristic notifications", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)v10 updateMonitoredCharacteristicsAndRefreshWidgetTimelines];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentOrPrimaryHomeChangedNotification:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"HMDNotificationCurrentHomeDidChange"];

  if (v6)
  {
    [(HMDWidgetTimelineRefresher *)self handleCurrentHomeChangeNotification:v4];
  }

  v7 = [(HMDWidgetTimelineRefresher *)self homeManager];
  v8 = [v7 currentHomeUUID];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [v7 primaryHomeUUID];
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v10 = [(HMDWidgetTimelineRefresher *)self currentHomeUUID];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v16 = [(HMDWidgetTimelineRefresher *)v13 currentHomeUUID];

      if (v16)
      {
        v17 = [(HMDWidgetTimelineRefresher *)v13 currentHomeUUID];
        [v17 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v20 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      [v9 getUUIDBytes:buf];
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Current home changed from %{uuid_t}.16P to %{uuid_t}.16P, resetting all characteristic notifications", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDWidgetTimelineRefresher *)v13 setCurrentHomeUUID:v9];
    [(HMDWidgetTimelineRefresher *)v13 updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_value:(id)a3 isApproximatelyEqualToValue:(id)a4 forMinimumValue:(id)a5 maximumValue:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v12;
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

  v19 = v9;
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

  v22 = v10;
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
    v32 = [v9 isEqual:v10];
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

- (BOOL)actionSetIsOn:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [a3 actions];
  v25 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v25)
  {
    v24 = *v28;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }

        v7 = v6;

        if (v7)
        {
          v8 = [v7 characteristic];
          v9 = [v8 value];
          v26 = v7;
          v10 = [v7 targetValue];
          v11 = [v8 metadata];
          v12 = [v11 minimumValue];
          v13 = [v8 metadata];
          v14 = [v13 maximumValue];
          v15 = self;
          v16 = [(HMDWidgetTimelineRefresher *)self _value:v9 isApproximatelyEqualToValue:v10 forMinimumValue:v12 maximumValue:v14];

          v17 = [v8 accessory];
          if (!v16 || (-[HMDWidgetTimelineRefresher reachabilityMonitor](v15, "reachabilityMonitor"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isAccessoryReachable:v17], v18, (v19 & 1) == 0))
          {

            v20 = 0;
            goto LABEL_17;
          }

          self = v15;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)thresholdForCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [v3 service];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = [v3 type];
  if (([v5 isEqualToString:*MEMORY[0x277CFE628]] & 1) == 0)
  {

    goto LABEL_9;
  }

  v6 = [v4 type];
  if (([v6 isEqualToString:*MEMORY[0x277CFE8F0]] & 1) == 0)
  {
    v7 = [v4 type];
    if ([v7 isEqualToString:*MEMORY[0x277CFE900]])
    {

      goto LABEL_6;
    }

    v13 = [v4 type];
    v14 = [v13 isEqualToString:*MEMORY[0x277CFE860]];

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v9 = [v3 type];
    if ([v9 isEqualToString:*MEMORY[0x277CFE618]])
    {
      v10 = [v4 type];
      if ([v10 isEqualToString:*MEMORY[0x277CFE8C0]])
      {
LABEL_13:

LABEL_14:
        v8 = &unk_286629650;
        goto LABEL_17;
      }

      v11 = [v4 type];
      if ([v11 isEqualToString:*MEMORY[0x277CFE900]])
      {

        goto LABEL_13;
      }

      v15 = [v4 type];
      v16 = [v15 isEqualToString:*MEMORY[0x277CFE868]];

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
  v8 = &unk_28662BE98;
LABEL_17:

  return v8;
}

- (id)actionSetsByHome:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
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
        v11 = [v10 home];
        if (v11)
        {
          v12 = [v4 objectForKey:v11];

          if (!v12)
          {
            v13 = [MEMORY[0x277CBEB58] set];
            [v4 setObject:v13 forKey:v11];
          }

          v14 = [v4 objectForKey:v11];
          [v14 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)updateReachabilityMonitorWithPreviousAccessories:(id)a3 currentAccessories:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [v10 na_setByRemovingObjectsFromSet:v9];
  v11 = [v9 na_setByRemovingObjectsFromSet:v10];

  v12 = [(HMDWidgetTimelineRefresher *)self reachabilityMonitor];
  [v12 startMonitoringAccessories:v11 stopMonitoring:v13 completionHandler:v8];
}

- (id)accessoriesMonitoredForReachability
{
  v3 = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  v4 = [v3 na_map:&__block_literal_global_315];

  v5 = [(HMDWidgetTimelineRefresher *)self monitoredCharacteristics];
  v6 = [v5 na_map:&__block_literal_global_317_148351];

  v7 = [v4 setByAddingObjectsFromSet:v6];

  return v7;
}

- (id)characteristicsMonitoredForWidgets
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    v3 = [a1 monitoredCharacteristicsMapByWidget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke;
    v8[3] = &unk_27972F3D0;
    v8[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v8];

    v4 = [a1 monitoredActionSetsMapByWidget];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke_2;
    v7[3] = &unk_27972F368;
    v7[4] = a1;
    v7[5] = v2;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];

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
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) actionSetsByHome:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [v2 objectForKey:*(*(&v11 + 1) + 8 * v6)];
        v8 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v7];
        v9 = [v8 na_map:&__block_literal_global_312];

        [*(a1 + 40) unionSet:v9];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)characteristicsFromActionSets:(void *)a1
{
  if (a1)
  {
    var28[0] = MEMORY[0x277D85DD0];
    var28[1] = 3221225472;
    var28[2] = __60__HMDWidgetTimelineRefresher_characteristicsFromActionSets___block_invoke;
    var28[3] = &unk_27972F438;
    var28[4] = a1;
    a1 = [a2 na_flatMap:var28];
    v2 = var28[6];
  }

  return a1;
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
    v3 = [v2 na_map:&__block_literal_global_321];

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

- (void)updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:(int64_t)a3 afterChangesFromBlock:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  v8 = [(HMDWidgetTimelineRefresher *)self actionSetsMonitoredForWidgets];
  v9 = [(HMDWidgetTimelineRefresher *)self accessoriesMonitoredForReachability];
  v6[2](v6);
  v10 = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  v11 = [(HMDWidgetTimelineRefresher *)self actionSetsMonitoredForWidgets];
  v12 = [(HMDWidgetTimelineRefresher *)self accessoriesMonitoredForReachability];
  v24 = v7;
  v21 = v10;
  [(HMDWidgetTimelineRefresher *)self updateNotificationRegistrationWithPreviousCharacteristics:v7 currentCharacteristics:v10 updateRequestQualityOfService:a3];
  v22 = v9;
  [(HMDWidgetTimelineRefresher *)self updateReachabilityMonitorWithPreviousAccessories:v9 currentAccessories:v12 completion:&__block_literal_global_302];
  v23 = v8;
  v13 = [v8 na_setByRemovingObjectsFromSet:v11];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        v19 = [(HMDWidgetTimelineRefresher *)self cachedIsOnStateByActionSet];
        [v19 removeObjectForKey:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)actionSetsMonitoredForWidgets
{
  if (a1)
  {
    v1 = [a1 monitoredActionSetsMapByWidget];
    v2 = [v1 na_flatMap:&__block_literal_global_324];

    v3 = [MEMORY[0x277CBEB98] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateNotificationRegistrationWithPreviousCharacteristics:(void *)a3 currentCharacteristics:(uint64_t)a4 updateRequestQualityOfService:
{
  v130 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v95 = v7;
    v8 = v7;
    v96 = v6;
    v9 = [v6 na_map:&__block_literal_global_305_148367];
    v98 = v8;
    v10 = [v8 na_map:&__block_literal_global_307_148368];
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
          v19 = [a1 clientIdentifierForExplicitlyMonitoredCharacteristics];
          [v18 registerForAccessoryReachabilityNotifications:0 registrationIdentifier:v19];
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
          v26 = [a1 clientIdentifierForExplicitlyMonitoredCharacteristics];
          [v25 registerForAccessoryReachabilityNotifications:1 registrationIdentifier:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v109 objects:v125 count:16];
      }

      while (v22);
    }

    v6 = v96;
    v27 = [v96 na_map:&__block_literal_global_310];
    v28 = [v98 na_map:&__block_literal_global_310];
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
        v32 = a1;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v34;
          v128 = 2112;
          v129 = v29;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications and removing cached value for characteristics: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = [v32 clientIdentifierForExplicitlyMonitoredCharacteristics];
        [(HMDWidgetTimelineRefresher *)v32 setNotificationEnabled:v29 forCharacteristics:v35 clientIdentifier:?];

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
              v43 = [v32 cachedValueByCharacteristic];
              [v43 removeObjectForKey:v42];
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
        v45 = a1;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v47;
          v128 = 2112;
          v129 = v30;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications and storing cached value for characteristics: %@", buf, 0x16u);
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
              v54 = [v45 cachedValueByCharacteristic];
              v55 = [v53 value];
              [v54 setObject:v55 forKey:v53];
            }

            v50 = [v48 countByEnumeratingWithState:&v101 objects:v117 count:16];
          }

          while (v50);
        }

        v56 = [v45 clientIdentifierForExplicitlyMonitoredCharacteristics];
        [(HMDWidgetTimelineRefresher *)v45 setNotificationEnabled:v48 forCharacteristics:v56 clientIdentifier:?];

        v57 = v48;
        v58 = objc_autoreleasePoolPush();
        v59 = v45;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = HMFGetLogIdentifier();
          *buf = 138543618;
          v127 = v61;
          v128 = 2112;
          v129 = v57;
          _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Reading characteristics: %@", buf, 0x16u);
        }

        v97 = v59;
        objc_autoreleasePoolPop(v58);
        v62 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
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
              v69 = [v68 accessory];
              v70 = [v69 home];

              if (v70)
              {
                v71 = [v62 objectForKey:v70];
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
                [v62 setObject:v73 forKey:v70];
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
        v74 = v62;
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
              v81 = [v80 allObjects];
              v82 = [v81 na_map:&__block_literal_global_330];

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
                _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_INFO, "%{public}@Reading characteristic for each home: %@, count %lu", v119, 0x20u);

                v76 = v97;
              }

              objc_autoreleasePoolPop(v83);
              v88 = [v84 description];
              [v79 readCharacteristicValues:v82 source:1210 sourceForLogging:v88 qualityOfService:a4 withCompletionHandler:0];
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

    v7 = v95;
  }

  v89 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationEnabled:(void *)a3 forCharacteristics:(void *)a4 clientIdentifier:
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v37 = a1;
  if (a1)
  {
    v35 = v7;
    v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v39 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = v6;
    obj = v6;
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
          v15 = [v14 accessory];
          if (v15)
          {
            v16 = [v9 objectForKey:v15];
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
            [v9 setObject:v18 forKey:v15];

            v19 = [v14 service];
            if (v19)
            {
              v20 = a2 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              v21 = [v37 thresholdForCharacteristic:v14];
              if (v21)
              {
                v22 = [v39 objectForKey:v15];
                if (!v22)
                {
                  v22 = [MEMORY[0x277CBEB18] array];
                  [v39 setObject:v22 forKey:v15];
                }

                v23 = [[HMDCharacteristicNotificationChangeThreshold alloc] initWithCharacteristic:v14 threshold:v21];
                [v22 addObject:v23];
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
    v24 = v9;
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
          v31 = [v39 objectForKey:v29];
          v32 = [v31 copy];

          v33 = [v30 allObjects];
          [v29 setNotificationsEnabled:a2 forCharacteristics:v33 notificationChangeThresholds:v32 clientIdentifier:v35];
        }

        v26 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v26);
    }

    v6 = v36;
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

- (void)handleSelectedHomeChangedNotification
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling selected home changed notification. Refreshing timeline for configured widgets", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDWidgetTimelineRefresher *)v5 refreshTimelineForConfiguredWidgetsWithReason:?];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshTimelineForConfiguredWidgetsWithReason:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 widgetConfigurationReader];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke;
    v5[3] = &unk_279734D18;
    v5[4] = a1;
    v6 = v3;
    [v4 fetchHomeWidgetsWithCompletion:v5];
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
  v12[3] = &unk_279734870;
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
    v4 = [v2 na_map:&__block_literal_global_334_148376];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch configured widgets to refresh with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)handleHomeSensingChangedNotification
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling home sensing changed notification. Refreshing timeline for configured widgets", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDWidgetTimelineRefresher *)v5 refreshTimelineForConfiguredWidgetsWithReason:?];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleNotifiedXPCClientsOfHomeConfigurationChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HMDWidgetTimelineRefresher_handleNotifiedXPCClientsOfHomeConfigurationChangeNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@. Generation counter: %lu. Refreshing timeline for configured widgets", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForConfiguredWidgetsWithReason:?];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentHomeChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDWidgetTimelineRefresher_handleCurrentHomeChangeNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@. Previous: %{uuid_t}.16P, Current %{uuid_t}.16P. Refreshing timeline for configured widgets", buf, 0x36u);
  }

  objc_autoreleasePoolPop(v2);
  [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForConfiguredWidgetsWithReason:?];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryReachabilityChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
          v30[3] = &unk_27972F368;
          v11 = v7;
          v31 = v11;
          v12 = v9;
          v32 = v12;
          [v10 enumerateKeysAndObjectsUsingBlock:v30];

          v13 = [v6 monitoredActionSetsMapByWidget];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke_2;
          v35 = &unk_27972F2C8;
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
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling reachability change for relevant widgets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = *(a1 + 40);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke_278;
    v24[3] = &unk_27972F318;
    v24[4] = v20;
    v24[5] = v2;
    v25 = *(a1 + 32);
    [(HMDWidgetTimelineRefresher *)v20 cleanUpRemovedWidgetsFromWidgets:v2 completion:v24];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke_278(id *a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline due to %ld accessory reachability changes for configured widgets: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [a1[5] na_map:&__block_literal_global_281];
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling reachability changed. Refreshing timeline for widget kinds: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDWidgetTimelineRefresher *)a1[4] refreshTimelineForWidgetKinds:v11 withReason:@"Accessory Reachability Changed" shouldCoalesce:0];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpRemovedWidgetsFromWidgets:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 widgetConfigurationReader];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke;
    v8[3] = &unk_2797349D8;
    v8[4] = a1;
    v10 = v6;
    v9 = v5;
    [v7 fetchHomeWidgetsWithCompletion:v8];
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
  block[3] = &unk_279734668;
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
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing old widgets and updating monitored characteristics and action sets: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __51__HMDWidgetTimelineRefresher_handleRemovedWidgets___block_invoke;
        v22 = &unk_2797359B0;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch configured widgets with error: %@", buf, 0x16u);
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

  v5 = [*(a1 + 40) allObjects];
  v3 = [*(a1 + 32) monitoredCharacteristicsMapByWidget];
  [v3 removeObjectsForKeys:v5];

  v4 = [*(a1 + 32) monitoredActionSetsMapByWidget];
  [v4 removeObjectsForKeys:v5];
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
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) actionSetsByHome:a3];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v29 = 0u;
  v21 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v7 = *v27;
    v19 = *v27;
    v20 = v5;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = [v6 objectForKey:*(*(&v26 + 1) + 8 * i)];
        v10 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v9];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v22 + 1) + 8 * j) accessory];
              v17 = [v16 isEqual:*(a1 + 40)];

              if (v17)
              {
                v5 = v20;
                [*(a1 + 48) addObject:v20];

                goto LABEL_18;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v19;
      }

      v5 = v20;
      v21 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryCharacteristicsChangedNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDWidgetTimelineRefresher *)self modifiedCharacteristicsFromNotification:v4];
  if ([v5 count])
  {
    v6 = [(HMDWidgetTimelineRefresher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    block[5] = v5;
    v14 = v4;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 userInfo];
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Characteristics changed notification does not include modified characteristics: %@", buf, 0x16u);
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
    v37 = &unk_27972F340;
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
    v32[3] = &unk_27972F340;
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
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Handling characteristic change for relevant widgets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = *(a1 + 32);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_269;
    v27[3] = &unk_27972F2F0;
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
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Not handling characteristics changed notification because it is not relevant for current widgets", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_269(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [MEMORY[0x277CBEB58] set];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_2;
  v24[3] = &unk_279733D48;
  v6 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v7 = [v6 na_filter:v24];
  if ([v7 count])
  {
    v8 = [*(a1 + 32) monitoredCharacteristicsMapByWidget];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_3;
    v23[3] = &unk_27972F2C8;
    v23[4] = *(a1 + 32);
    v23[5] = v7;
    v23[6] = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v23];
  }

  v9 = [*(a1 + 32) monitoredActionSetsMapByWidget];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_4;
  v22[3] = &unk_27972F2C8;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@ and refreshing timeline. Updated characteristics: %@, for widgets: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v18 = [v5 na_map:&__block_literal_global_274];
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@No widgets need to be refreshed from this characteristics changed notification: %@", buf, 0x16u);
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

- (id)characteristicsForMonitoredCharacteristics:(void *)a1
{
  if (a1)
  {
    a1 = [a2 na_map:&__block_literal_global_310];
    v2 = vars8;
  }

  return a1;
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
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) actionSetsByHome:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
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

        v11 = [v6 objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        v12 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v11];
        v13 = [v12 na_setByIntersectingWithSet:*(a1 + 40)];
        if (![v13 count])
        {

          goto LABEL_11;
        }

        [*(a1 + 48) addObject:v5];
        [*(a1 + 56) unionSet:v13];
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

- (id)modifiedCharacteristicsFromNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v6 = [v3 userInfo];

  v7 = [v6 hmf_arrayForKey:@"HMDModifiedPreviouslyNilValuedCharacteristicsKey"];

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

- (void)_removePendingRequestValueForUUID:(id)a3 messageIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  v8 = [v7 objectForKey:v11];

  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
    [v10 removeObjectForKey:v11];
  }
}

- (void)_setPendingRequestValue:(id)a3 forUUID:(id)a4 messageIdentifier:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = a5;
  v16[0] = a3;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v13 = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  [v13 setObject:v12 forKey:v10];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_getPendingWriteValueForUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 objectEnumerator];
  v8 = [v7 nextObject];

  return v8;
}

- (id)_firstErrorFromCharacteristicWriteResponsePayload:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v58 objects:v76 count:16];
    if (v5)
    {
      v6 = *v59;
      v7 = *MEMORY[0x277CD2128];
      v40 = self;
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
                          v26 = self;
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
                            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Error deserializing NSError: %@, for accessoryUUID: %@, serviceID: %@, characteristicID: %@, in payload: %@", buf, 0x3Eu);

                            self = v40;
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

    v4 = v39;
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)writeCharacteristicsWithWriteValueBySPIClientIdentifier:(id)a3 widgetKind:(id)a4 message:(id)a5 completionGroup:(id)a6 completion:(id)a7
{
  v110 = *MEMORY[0x277D85DE8];
  v61 = a3;
  v59 = a4;
  v12 = a5;
  group = a6;
  v57 = a7;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v13 = [(HMDWidgetTimelineRefresher *)self homeManager];
  v14 = [v13 homes];

  obj = v14;
  v62 = [v14 countByEnumeratingWithState:&v84 objects:v102 count:16];
  if (v62)
  {
    v60 = *v85;
    *&v15 = 138544130;
    v55 = v15;
    v66 = v12;
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
        v18 = v61;
        v19 = v17;
        v64 = v19;
        if (self)
        {
          v20 = [MEMORY[0x277CBEB18] array];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v65 = [v19 hapAccessories];
          v68 = [v65 countByEnumeratingWithState:&v96 objects:buf count:16];
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
                  objc_enumerationMutation(v65);
                }

                v69 = v21;
                v22 = *(*(&v96 + 1) + 8 * v21);
                v92 = 0u;
                v93 = 0u;
                v94 = 0u;
                v95 = 0u;
                v70 = [v22 services];
                v72 = [v70 countByEnumeratingWithState:&v92 objects:v104 count:16];
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
                        objc_enumerationMutation(v70);
                      }

                      v73 = v23;
                      v24 = *(*(&v92 + 1) + 8 * v23);
                      v88 = 0u;
                      v89 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v25 = [v24 characteristics];
                      v26 = [v25 countByEnumeratingWithState:&v88 objects:v103 count:16];
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
                              objc_enumerationMutation(v25);
                            }

                            v30 = *(*(&v88 + 1) + 8 * i);
                            v31 = [v30 spiClientIdentifier];
                            v32 = [v18 objectForKeyedSubscript:v31];

                            if (v32)
                            {
                              v33 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v30 value:v32 authorizationData:0 type:0];
                              [v20 addObject:v33];
                            }
                          }

                          v27 = [v25 countByEnumeratingWithState:&v88 objects:v103 count:16];
                        }

                        while (v27);
                      }

                      v23 = v73 + 1;
                    }

                    while (v73 + 1 != v72);
                    v72 = [v70 countByEnumeratingWithState:&v92 objects:v104 count:16];
                  }

                  while (v72);
                }

                v21 = v69 + 1;
              }

              while (v69 + 1 != v68);
              v68 = [v65 countByEnumeratingWithState:&v96 objects:buf count:16];
            }

            while (v68);
          }

          v12 = v66;
          v19 = v64;
        }

        else
        {
          v20 = 0;
        }

        if ([v20 count])
        {
          v34 = objc_autoreleasePoolPush();
          v35 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            v38 = [v12 identifier];

            if (v38)
            {
              v39 = [v12 identifier];
              [v39 getUUIDBytes:buf];
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
            v109 = v20;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Writing characteristics: %@", buf, 0x26u);
          }

          v40 = v35;
          objc_autoreleasePoolPop(v34);
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v74 = v20;
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
                v46 = [v45 value];
                v47 = [v45 characteristic];
                v48 = [v47 spiClientIdentifier];
                v49 = [v66 identifier];
                [(HMDWidgetTimelineRefresher *)v40 _setPendingRequestValue:v46 forUUID:v48 messageIdentifier:v49];
              }

              v42 = [v74 countByEnumeratingWithState:&v80 objects:v100 count:16];
            }

            while (v42);
          }

          dispatch_group_enter(group);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke;
          aBlock[3] = &unk_279734780;
          aBlock[4] = v40;
          v50 = v74;
          v76 = v50;
          v12 = v66;
          v51 = v66;
          v77 = v51;
          v78 = v59;
          v79 = v57;
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
  v8[3] = &unk_279734848;
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
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to write characteristics: %@, with error: %@", buf, 0x30u);
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
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully wrote characteristics: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v27 = *(a1 + 56);
  result = (*(*(a1 + 72) + 16))();
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_getRequestsFromMessage:(id)a3 outCharacteristicWriteValueByUUUIDs:(id *)a4 outExecuteActionSetUUUIDs:(id *)a5 outExecuteTurnOffActionSetUUIDs:(id *)a6
{
  v96 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (!a4)
  {
    _HMFPreconditionFailure();
    goto LABEL_60;
  }

  if (!a5)
  {
LABEL_60:
    _HMFPreconditionFailure();
LABEL_61:
    _HMFPreconditionFailure();
  }

  if (!a6)
  {
    goto LABEL_61;
  }

  v11 = v10;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v73 = self;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [MEMORY[0x277CBEB18] array];
  v76 = [MEMORY[0x277CBEB18] array];
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
    v74 = v13;
    v75 = v12;
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
        v39 = v73;
        v40 = HMFGetOSLogHandle();
        v11 = v72;
        v12 = v75;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v42 = [v72 identifier];

          if (v42)
          {
            v43 = [v72 identifier];
            [v43 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v94 = *buf;
          v60 = [v72 messagePayload];
          *buf = 138544130;
          *&buf[4] = v41;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v85 = 2096;
          v86 = &v94;
          v87 = 2112;
          v88 = v60;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] request type is not set in payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v38);
        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v72 respondWithError:v25];
LABEL_56:
        v34 = v76;
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
          v45 = v73;
          v46 = HMFGetOSLogHandle();
          v11 = v72;
          v12 = v75;
          v34 = v76;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            v50 = [v72 identifier];

            if (v50)
            {
              v51 = [v72 identifier];
              [v51 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v92 = *buf;
            v61 = [v72 messagePayload];
            *buf = 138544130;
            *&buf[4] = v47;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v85 = 2096;
            v86 = &v92;
            v87 = 2112;
            v88 = v61;
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
        v45 = v73;
        v46 = HMFGetOSLogHandle();
        v11 = v72;
        v12 = v75;
        v34 = v76;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v48 = [v72 identifier];

          if (v48)
          {
            v49 = [v72 identifier];
            [v49 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v83 = *buf;
          v61 = [v72 messagePayload];
          *buf = 138544386;
          *&buf[4] = v47;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v85 = 2096;
          v86 = &v83;
          v87 = 2048;
          v88 = v23;
          v89 = 2112;
          v90 = v61;
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
        v55 = v73;
        v56 = HMFGetOSLogHandle();
        v11 = v72;
        v12 = v75;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v58 = [v72 identifier];

          if (v58)
          {
            v59 = [v72 identifier];
            [v59 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v93 = *buf;
          v65 = [v72 messagePayload];
          *buf = 138544130;
          *&buf[4] = v57;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v85 = 2096;
          v86 = &v93;
          v87 = 2112;
          v88 = v65;
          _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] characteristic write request missing UUID or write value: %@", buf, 0x26u);
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
        v13 = v74;
        v12 = v75;
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
      v45 = v73;
      v46 = HMFGetOSLogHandle();
      v11 = v72;
      v12 = v75;
      v34 = v76;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v52 = [v72 identifier];

        if (v52)
        {
          v53 = [v72 identifier];
          [v53 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v91 = *buf;
        v61 = [v72 messagePayload];
        *buf = 138544130;
        *&buf[4] = v47;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        v85 = 2096;
        v86 = &v91;
        v87 = 2112;
        v88 = v61;
        v62 = "%{public}@[%{uuid_t}.16P] execute off request missing UUID: %@";
LABEL_50:
        v63 = v46;
        v64 = 38;
LABEL_51:
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, v62, buf, v64);
      }

LABEL_52:

      objc_autoreleasePoolPop(v44);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v11 respondWithError:v25];
      v37 = 0;
LABEL_57:

      v36 = 0;
      v13 = v74;
      goto LABEL_58;
    }

    v25 = v31;
    v30 = v76;
    goto LABEL_22;
  }

LABEL_25:

  v32 = v12;
  *v69 = v12;
  v33 = v13;
  *v70 = v13;
  v34 = v76;
  v35 = v76;
  *v71 = v76;
  v36 = 1;
LABEL_58:

  v67 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)reachabilityByAccessorySPIClientIdentifierForCharacteristics:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v4 = [v24 na_map:&__block_literal_global_239_148440];
  v5 = [MEMORY[0x277CBEB38] dictionary];
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
    v26 = self;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [(HMDWidgetTimelineRefresher *)self reachabilityMonitor];
        v10 = [v9 isAccessoryReachable:v8];

        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = v5;
          v15 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v16 = [v8 spiClientIdentifier];

          if (v16)
          {
            v17 = [v8 spiClientIdentifier];
            [v17 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v33 = *buf;
          v18 = [v8 name];
          v19 = HMFBooleanToString();
          *buf = 138544386;
          *&buf[4] = v15;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v35 = 2096;
          v36 = &v33;
          v37 = 2112;
          v38 = v18;
          v39 = 2112;
          v40 = v19;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Accessory spiClientIdentifier %{uuid_t}.16P, Name: %@, isRemotelyReachable: %@", buf, 0x30u);

          v5 = v14;
          v6 = v25;
          self = v26;
        }

        objc_autoreleasePoolPop(v11);
        v20 = [MEMORY[0x277CCABB0] numberWithBool:v10];
        v21 = [v8 spiClientIdentifier];
        [v5 setObject:v20 forKeyedSubscript:v21];
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v28);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)valueByCharacteristicSPIClientIdentifierForCharacteristics:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (v34)
  {
    v7 = *v36;
    *&v6 = 138545154;
    v25 = v6;
    v27 = self;
    v28 = v5;
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
        v10 = [v9 spiClientIdentifier];
        v11 = [(HMDWidgetTimelineRefresher *)self _getPendingWriteValueForUUID:v10];

        v12 = objc_autoreleasePoolPush();
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v33 = v12;
          v32 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v15 = [v9 spiClientIdentifier];

          if (v15)
          {
            v16 = [v9 spiClientIdentifier];
            [v16 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v39 = *buf;
          v17 = [v9 instanceID];
          v31 = [v9 type];
          v18 = HAPShortUUIDType();
          v19 = [v9 characteristicTypeDescription];
          v20 = [v9 value];
          *buf = v25;
          *&buf[4] = v32;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v41 = 2096;
          v42 = &v39;
          v43 = 2112;
          v44 = v17;
          v45 = 2112;
          v46 = v18;
          v47 = 2112;
          v48 = v19;
          v49 = 2112;
          v50 = v20;
          v51 = 2112;
          v52 = v11;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic spiClientIdentifier: %{uuid_t}.16P, IID: %@, Type/Desc: %@/%@, value: %@, pendingWriteValue: %@", buf, 0x4Eu);

          self = v27;
          v5 = v28;
          v7 = v26;
          v12 = v33;
        }

        objc_autoreleasePoolPop(v12);
        v21 = v11;
        if (!v11)
        {
          v21 = [v9 value];
          v30 = v21;
        }

        v22 = [v9 spiClientIdentifier];
        [v5 setObject:v21 forKeyedSubscript:v22];

        if (!v11)
        {
        }
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v53 count:16];
    }

    while (v34);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)handleFetchStateForActionSets:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 arrayForKey:*MEMORY[0x277CD14F8]];
  if (v5)
  {
    v6 = [(HMDWidgetTimelineRefresher *)self actionSetsFromSPIClientIdentifiers:v5];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v11 = [v4 identifier];

      if (v11)
      {
        v12 = [v4 identifier];
        [v12 getUUIDBytes:buf];
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to fetch action sets for: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDWidgetTimelineRefresher *)v8 updateCachedIsOnStateForActionSets:v6];
    v37[0] = *MEMORY[0x277CD1508];
    v19 = [(HMDWidgetTimelineRefresher *)v8 cachedIsOnStateBySPIClientIdentifierForActionSets:v6];
    v38[0] = v19;
    v37[1] = *MEMORY[0x277CD1500];
    v20 = [(HMDWidgetTimelineRefresher *)v8 didExecuteFailBySPIClientIdentifierForActionSets:v6];
    v38[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v22 = objc_autoreleasePoolPush();
    v23 = v8;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v4 name];
      *buf = 0;
      *&buf[8] = 0;
      v27 = [v4 identifier];

      if (v27)
      {
        v28 = [v4 identifier];
        [v28 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v31 = *buf;
      *buf = 138544386;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      *&buf[22] = 1040;
      *&buf[24] = 16;
      v33 = 2096;
      v34 = &v31;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v22);
    [v4 respondWithPayload:v21];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v17 = [v4 identifier];

      if (v17)
      {
        v18 = [v4 identifier];
        [v18 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v40 = *buf;
      v29 = [v4 messagePayload];
      *buf = 138544130;
      *&buf[4] = v16;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v40;
      v33 = 2112;
      v34 = v29;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find action set UUIDs in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v13);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v6];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)actionSetsFromSPIClientIdentifiers:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 homeManager];
    v5 = [v4 homes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke;
    v8[3] = &unk_27972F2A0;
    v9 = v3;
    v6 = [v5 na_flatMap:v8];

    a1 = [MEMORY[0x277CBEB98] setWithArray:v6];
  }

  return a1;
}

- (void)updateCachedIsOnStateForActionSets:(void *)a1
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
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
          v10 = [a1 cachedIsOnStateByActionSet];
          v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "actionSetIsOn:", v9)}];
          [v10 setObject:v11 forKey:v9];

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

- (id)cachedIsOnStateBySPIClientIdentifierForActionSets:(void *)a1
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v4;
    v28 = [obj countByEnumeratingWithState:&v29 objects:v46 count:16];
    if (v28)
    {
      v27 = *v30;
      v25 = v5;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v29 + 1) + 8 * i);
          v8 = [v7 uuid];
          v9 = [a1 _getPendingWriteValueForUUID:v8];

          v10 = [a1 cachedIsOnStateByActionSet];
          v11 = [v10 objectForKey:v7];

          v12 = objc_autoreleasePoolPush();
          v13 = a1;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            v16 = [v7 spiClientIdentifier];

            if (v16)
            {
              v17 = [v7 spiClientIdentifier];
              [v17 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v34 = *buf;
            *buf = 0;
            *&buf[8] = 0;
            v18 = [v7 uuid];

            if (v18)
            {
              v19 = [v7 uuid];
              [v19 getUUIDBytes:buf];
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
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Action Set spiClientIdentifier: %{uuid_t}.16P, UUID: %{uuid_t}.16P, pendingState: %@, cachedState: %@", buf, 0x40u);

            v5 = v25;
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

          v21 = [v7 spiClientIdentifier];
          [v5 setObject:v20 forKeyedSubscript:v21];
        }

        v28 = [obj countByEnumeratingWithState:&v29 objects:v46 count:16];
      }

      while (v28);
    }
  }

  else
  {
    v5 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)didExecuteFailBySPIClientIdentifierForActionSets:(void *)a1
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB38] dictionary];
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
          v12 = [a1 cachedActionSetExecuteErrorByUUID];
          v13 = [v11 uuid];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = [v11 spiClientIdentifier];
            [v5 setObject:&unk_286629620 forKeyedSubscript:v15];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

id __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionSets];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke_2;
  v6[3] = &unk_27972F278;
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

- (void)handleMonitorActionSetsForWidget:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:*MEMORY[0x277CD1558]];
  if (v5)
  {
    v6 = [v4 stringForKey:*MEMORY[0x277CD1560]];
    if (v6)
    {
      v7 = [v4 arrayForKey:*MEMORY[0x277CD14F8]];
      if (v7)
      {
        v8 = [[HMDWidget alloc] initWithIdentifier:v5 kind:v6];
        v9 = [(HMDWidgetTimelineRefresher *)self actionSetsFromSPIClientIdentifiers:v7];
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v52 = v9;
          v13 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v14 = [v4 identifier];

          if (v14)
          {
            v15 = [v4 identifier];
            [v15 getUUIDBytes:buf];
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
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to update action sets for widget: %@", buf, 0x26u);

          v9 = v52;
        }

        objc_autoreleasePoolPop(v10);
        [v4 qualityOfService];
        v35 = v9;
        v36 = v8;
        if (v11)
        {
          v37 = [(HMDWidgetTimelineRefresher *)v11 workQueue];
          dispatch_assert_queue_V2(v37);

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __96__HMDWidgetTimelineRefresher_updateMonitoredActionSets_forWidget_updateRequestQualityOfService___block_invoke;
          *&buf[24] = &unk_279734960;
          *&buf[32] = v11;
          v62 = v35;
          v63 = v36;
          [(HMDWidgetTimelineRefresher *)v11 updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:33 afterChangesFromBlock:buf];
        }

        [(HMDWidgetTimelineRefresher *)v11 updateCachedIsOnStateForActionSets:v35];
        v55[0] = *MEMORY[0x277CD1508];
        v38 = [(HMDWidgetTimelineRefresher *)v11 cachedIsOnStateBySPIClientIdentifierForActionSets:v35];
        v56[0] = v38;
        v55[1] = *MEMORY[0x277CD1500];
        v39 = [(HMDWidgetTimelineRefresher *)v11 didExecuteFailBySPIClientIdentifierForActionSets:v35];
        v56[1] = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];

        v41 = objc_autoreleasePoolPush();
        v42 = v11;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v51 = v41;
          v53 = v7;
          v50 = HMFGetLogIdentifier();
          v44 = [v4 name];
          *buf = 0;
          *&buf[8] = 0;
          v45 = [v4 identifier];

          if (v45)
          {
            v46 = [v4 identifier];
            [v46 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v54 = *buf;
          *buf = 138544386;
          *&buf[4] = v50;
          *&buf[12] = 2112;
          *&buf[14] = v44;
          *&buf[22] = 1040;
          *&buf[24] = 16;
          *&buf[28] = 2096;
          *&buf[30] = &v54;
          *&buf[38] = 2112;
          v62 = v40;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);

          v41 = v51;
          v7 = v53;
        }

        objc_autoreleasePoolPop(v41);
        [v4 respondWithPayload:v40];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v32 = [v4 identifier];

          if (v32)
          {
            v33 = [v4 identifier];
            [v33 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v58 = *buf;
          v48 = [v4 messagePayload];
          *buf = 138544130;
          *&buf[4] = v31;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v58;
          *&buf[28] = 2112;
          *&buf[30] = v48;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find action set UUIDs in message payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v28);
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v36];
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v26 = [v4 identifier];

        if (v26)
        {
          v27 = [v4 identifier];
          [v27 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v59 = *buf;
        v47 = [v4 messagePayload];
        *buf = 138544130;
        *&buf[4] = v25;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        *&buf[18] = 2096;
        *&buf[20] = &v59;
        *&buf[28] = 2112;
        *&buf[30] = v47;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v22);
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v7];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v20 = [v4 identifier];

      if (v20)
      {
        v21 = [v4 identifier];
        [v21 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v60 = *buf;
      v34 = [v4 messagePayload];
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v60;
      *&buf[28] = 2112;
      *&buf[30] = v34;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget identifier in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v16);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v6];
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

- (void)handlePerformRequests:(id)a3
{
  v176 = *MEMORY[0x277D85DE8];
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v103 = a3;
  v4 = [HMDWidgetTimelineRefresher _getRequestsFromMessage:"_getRequestsFromMessage:outCharacteristicWriteValueByUUUIDs:outExecuteActionSetUUUIDs:outExecuteTurnOffActionSetUUIDs:" outCharacteristicWriteValueByUUUIDs:? outExecuteActionSetUUUIDs:? outExecuteTurnOffActionSetUUIDs:?];
  v101 = 0;
  v102 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_110;
  }

  v99 = v5;
  v100 = [v103 stringForKey:*MEMORY[0x277CD1560]];
  v6 = objc_autoreleasePoolPush();
  v120 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (!v100)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *&buf[8] = 0;
      *buf = 0;
      v13 = [v103 identifier];

      if (v13)
      {
        v14 = [v103 identifier];
        [v14 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v146 = *buf;
      v95 = [v103 messagePayload];
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v170 = 2096;
      v171 = &v146;
      v172 = 2112;
      v173 = v95;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v106 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v103 respondWithError:v106];
    goto LABEL_109;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *&buf[8] = 0;
    *buf = 0;
    v10 = [v103 identifier];

    if (v10)
    {
      v11 = [v103 identifier];
      [v11 getUUIDBytes:buf];
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to perform requests for kind: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v6);
  v15 = dispatch_group_create();
  v135[0] = 0;
  v135[1] = v135;
  v135[2] = 0x3032000000;
  v135[3] = __Block_byref_object_copy__148459;
  v135[4] = __Block_byref_object_dispose__148460;
  v136 = 0;
  v133[0] = 0;
  v133[1] = v133;
  v133[2] = 0x2020000000;
  v134 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke;
  aBlock[3] = &unk_27972F230;
  v16 = v15;
  v130 = v16;
  v131 = v135;
  v132 = v133;
  v17 = _Block_copy(aBlock);
  v18 = v120;
  [(HMDWidgetTimelineRefresher *)v120 writeCharacteristicsWithWriteValueBySPIClientIdentifier:v101 widgetKind:v100 message:v103 completionGroup:v16 completion:v17];
  v111 = v102;
  v117 = v100;
  v19 = v103;
  group = v16;
  v115 = v17;
  if (v120)
  {
    v109 = [(HMDWidgetTimelineRefresher *)v120 actionSetsFromSPIClientIdentifiers:v111];
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
            v24 = [v23 type];
            v25 = [v24 isEqualToString:v21];

            v26 = objc_autoreleasePoolPush();
            v27 = v120;
            v28 = HMFGetOSLogHandle();
            v29 = v28;
            if (v25)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v30 = HMFGetLogIdentifier();
                *v174 = 0;
                *&v174[8] = 0;
                v31 = [v19 identifier];

                if (v31)
                {
                  v32 = [v19 identifier];
                  [v32 getUUIDBytes:v174];
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
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] We can't execute trigger-owned action set: %@", v174, 0x26u);
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
                v34 = [v19 identifier];

                if (v34)
                {
                  v35 = [v19 identifier];
                  [v35 getUUIDBytes:v174];
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
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Executing action set: %@", v174, 0x26u);
              }

              objc_autoreleasePoolPop(v26);
              v36 = [v23 uuid];
              v37 = [v19 identifier];
              [(HMDWidgetTimelineRefresher *)v27 _setPendingRequestValue:&unk_286629620 forUUID:v36 messageIdentifier:v37];

              [(HMDWidgetTimelineRefresher *)v27 _clearCachedErrorForActionSet:v23];
              dispatch_group_enter(group);
              v38 = [v19 mutableCopy];
              v157[0] = MEMORY[0x277D85DD0];
              v157[1] = 3221225472;
              v157[2] = __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke;
              v157[3] = &unk_279734780;
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

    v18 = v120;
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

  v97 = [(HMDWidgetTimelineRefresher *)v120 actionSetsFromSPIClientIdentifiers:v98];
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
      v40 = [v39 type];
      v41 = [v40 isEqualToString:v108];

      if (v41)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v120;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          v46 = [v112 identifier];

          if (v46)
          {
            v47 = [v112 identifier];
            [v47 getUUIDBytes:buf];
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
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] We can't execute trigger-owned action set: %@", buf, 0x26u);
        }

LABEL_80:

        objc_autoreleasePoolPop(v42);
        continue;
      }

      if (![(HMDWidgetTimelineRefresher *)v120 actionSetIsOn:v39])
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v120;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v76 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          v77 = [v112 identifier];

          if (v77)
          {
            v78 = [v112 identifier];
            [v78 getUUIDBytes:buf];
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
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Action set cannot be turned off because it's not active: %@", buf, 0x26u);
        }

        goto LABEL_80;
      }

      v114 = v39;
      groupa = [MEMORY[0x277CBEB18] array];
      v175 = 0u;
      memset(v174, 0, sizeof(v174));
      v48 = [v114 actions];
      v49 = [v48 countByEnumeratingWithState:v174 objects:buf count:16];
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
            objc_enumerationMutation(v48);
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
            v55 = [v54 characteristic];
            v56 = [v55 type];
            if ([v56 isEqual:v124])
            {

LABEL_59:
              v59 = [v54 targetValue];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = v59;
              }

              else
              {
                v60 = 0;
              }

              v61 = v60;

              v62 = [v61 BOOLValue];
              if (v62)
              {
                v63 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v55 value:&unk_286629638 authorizationData:0 type:0];
                [groupa addObject:v63];
              }

              else
              {
                v64 = objc_autoreleasePoolPush();
                v65 = v120;
                v66 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  v67 = HMFGetLogIdentifier();
                  *v165 = 138543618;
                  v166 = v67;
                  v167 = 2112;
                  v168 = v54;
                  _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring characteristic write action for turning off because target value is NO: %@", v165, 0x16u);
                }

                objc_autoreleasePoolPop(v64);
              }
            }

            else
            {
              v57 = [v55 type];
              v58 = [v57 isEqual:obja];

              if (v58)
              {
                goto LABEL_59;
              }
            }
          }
        }

        v49 = [v48 countByEnumeratingWithState:v174 objects:buf count:16];
      }

      while (v49);
LABEL_70:

      if ([groupa count])
      {
        v68 = [v114 home];
        v69 = objc_autoreleasePoolPush();
        v70 = v120;
        v71 = HMFGetOSLogHandle();
        v72 = v71;
        if (v68)
        {
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v73 = HMFGetLogIdentifier();
            *&buf[8] = 0;
            *buf = 0;
            v74 = [v112 identifier];

            if (v74)
            {
              v75 = [v112 identifier];
              [v75 getUUIDBytes:buf];
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
            _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Executing turning off action set: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v69);
          v88 = [v114 uuid];
          v89 = [v112 identifier];
          [(HMDWidgetTimelineRefresher *)v70 _setPendingRequestValue:&unk_286629638 forUUID:v88 messageIdentifier:v89];

          [(HMDWidgetTimelineRefresher *)v70 _clearCachedErrorForActionSet:v114];
          dispatch_group_enter(v106);
          *&v140 = MEMORY[0x277D85DD0];
          *(&v140 + 1) = 3221225472;
          *&v141 = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke;
          *(&v141 + 1) = &unk_279732B10;
          *&v142 = v70;
          *(&v142 + 1) = v114;
          v90 = v112;
          *&v143 = v90;
          *(&v143 + 1) = v104;
          v144 = v105;
          v91 = _Block_copy(&v140);
          *&v147 = MEMORY[0x277D85DD0];
          *(&v147 + 1) = 3221225472;
          v148 = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_264;
          v149 = &unk_279732CF0;
          v150 = v70;
          v151 = v91;
          v92 = v91;
          v93 = _Block_copy(&v147);
          [v68 writeCharacteristicValues:groupa message:v90 withCompletionHandler:v93];
        }

        else
        {
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v85 = HMFGetLogIdentifier();
            *&buf[8] = 0;
            *buf = 0;
            v86 = [v112 identifier];

            if (v86)
            {
              v87 = [v112 identifier];
              [v87 getUUIDBytes:buf];
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
            _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Home is nil for action set: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v69);
        }
      }

      else
      {
        v79 = objc_autoreleasePoolPush();
        v80 = v120;
        v81 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v82 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          v83 = [v112 identifier];

          if (v83)
          {
            v84 = [v112 identifier];
            [v84 getUUIDBytes:buf];
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
          _os_log_impl(&dword_2531F8000, v81, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Action set doesn't contain actions that can be turned off: %@", buf, 0x26u);
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

  v94 = [(HMDWidgetTimelineRefresher *)v120 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke_2;
  block[3] = &unk_279731418;
  v127 = v135;
  block[4] = v120;
  v126 = v112;
  v128 = v133;
  dispatch_group_notify(v106, v94, block);

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
      _os_log_impl(&dword_2531F8000, v16, v17, v15, buf, v18);
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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Did not execute any request from payload: %@", buf, 0x26u);

      goto LABEL_17;
    }
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) respondWithPayload:0 error:*(*(*(a1 + 48) + 8) + 40)];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_clearCachedErrorForActionSet:(void *)a1
{
  v8 = [a2 uuid];
  v3 = [a1 cachedActionSetExecuteErrorByUUID];
  [v3 removeObjectForKey:v8];

  v4 = [a1 cachedActionSetExecuteErrorTimerContextByUUID];
  v5 = [v4 objectForKeyedSubscript:v8];

  if (v5)
  {
    v6 = [a1 cachedActionSetExecuteErrorTimerContextByUUID];
    [v6 removeObjectForKey:v8];

    v7 = [a1 timerManager];
    [v7 cancelTimerForContext:v5];
  }
}

void __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
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

      v24 = *buf;
      v18 = *(a1 + 40);
      *buf = 138544386;
      *&buf[4] = v12;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v26 = 2096;
      v27 = &v24;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to turn off action set: %@, with error: %@", buf, 0x30u);
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

      v23 = *buf;
      v21 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v15;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v26 = 2096;
      v27 = &v23;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully turned off action set: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v8);
  }

  (*(*(a1 + 64) + 16))();

  v22 = *MEMORY[0x277D85DE8];
}

void __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_264(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2;
  v12[3] = &unk_279734578;
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

- (void)_setCachedError:(void *)a3 forActionSet:
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v11 = [v5 uuid];
    v7 = [a1 cachedActionSetExecuteErrorByUUID];
    [v7 setObject:v6 forKeyedSubscript:v11];

    v8 = [a1 timerManager];
    v9 = [v8 startTimerWithTimeInterval:v5 andReplaceObject:8.0];

    v10 = [a1 cachedActionSetExecuteErrorTimerContextByUUID];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }
}

void __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2;
  v6[3] = &unk_279734848;
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
  v33 = *MEMORY[0x277D85DE8];
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

      v25 = *buf;
      v16 = *(a1 + 40);
      v17 = *(a1 + 56);
      *buf = 138544386;
      *&buf[4] = v10;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v27 = 2096;
      v28 = &v25;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to execute action set: %@, with error: %@", buf, 0x30u);
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

      v24 = *buf;
      v20 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v27 = 2096;
      v28 = &v24;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully executed action set: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v21 = *(a1 + 56);
  result = (*(*(a1 + 72) + 16))();
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleFetchState:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CD1520];
  v6 = [v4 arrayForKey:*MEMORY[0x277CD1520]];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v12 = [v4 identifier];

      if (v12)
      {
        v13 = [v4 identifier];
        [v13 getUUIDBytes:buf];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to fetch state for: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [(HMDWidgetTimelineRefresher *)v8 characteristicsFromSPIClientIdentifiers:v6];
    v33 = v5;
    v17 = [(HMDWidgetTimelineRefresher *)v8 valueByCharacteristicSPIClientIdentifierForCharacteristics:v16];
    v34 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v19 = objc_autoreleasePoolPush();
    v20 = v8;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 name];
      *buf = 0;
      *&buf[8] = 0;
      v24 = [v4 identifier];

      if (v24)
      {
        v25 = [v4 identifier];
        [v25 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v27 = *buf;
      *buf = 138544386;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      *&buf[22] = 1040;
      *&buf[24] = 16;
      v29 = 2096;
      v30 = &v27;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v19);
    [v4 respondWithPayload:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v4 messagePayload];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find characteristic UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v16];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)characteristicsFromSPIClientIdentifiers:(void *)a1
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v5 = [a1 homeManager];
    v6 = [v5 homes];

    v7 = [v6 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v58;
      v38 = v6;
      v33 = *v58;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v58 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v57 + 1) + 8 * i);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v12 = [v11 accessories];
          v44 = [v12 countByEnumeratingWithState:&v53 objects:v63 count:16];
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
                  objc_enumerationMutation(v12);
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
                  v18 = [v15 services];
                  v39 = [v18 countByEnumeratingWithState:&v49 objects:v62 count:16];
                  if (v39)
                  {
                    v19 = *v50;
                    v42 = v17;
                    v43 = v12;
                    v36 = *v50;
                    v37 = v13;
                    v41 = v18;
                    do
                    {
                      v20 = 0;
                      do
                      {
                        if (*v50 != v19)
                        {
                          objc_enumerationMutation(v18);
                        }

                        v40 = v20;
                        v21 = *(*(&v49 + 1) + 8 * v20);
                        v45 = 0u;
                        v46 = 0u;
                        v47 = 0u;
                        v48 = 0u;
                        v22 = [v21 characteristics];
                        v23 = [v22 countByEnumeratingWithState:&v45 objects:v61 count:16];
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
                                objc_enumerationMutation(v22);
                              }

                              v27 = *(*(&v45 + 1) + 8 * k);
                              v28 = [v27 spiClientIdentifier];
                              v29 = [v3 containsObject:v28];

                              if (v29)
                              {
                                [v4 addObject:v27];
                                v30 = [v4 count];
                                if (v30 == [v3 count])
                                {

                                  v6 = v38;
                                  goto LABEL_39;
                                }
                              }
                            }

                            v24 = [v22 countByEnumeratingWithState:&v45 objects:v61 count:16];
                            if (v24)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v20 = v40 + 1;
                        v17 = v42;
                        v12 = v43;
                        v19 = v36;
                        v13 = v37;
                        v18 = v41;
                      }

                      while (v40 + 1 != v39);
                      v39 = [v41 countByEnumeratingWithState:&v49 objects:v62 count:16];
                    }

                    while (v39);
                  }
                }
              }

              v6 = v38;
              v9 = v33;
              i = v34;
              v8 = v35;
              v44 = [v12 countByEnumeratingWithState:&v53 objects:v63 count:16];
            }

            while (v44);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v57 objects:v64 count:16];
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

- (void)handleMonitorCharacteristicsForWidget:(id)a3
{
  v118 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:*MEMORY[0x277CD1558]];
  if (v5)
  {
    v6 = [v4 stringForKey:*MEMORY[0x277CD1560]];
    if (v6)
    {
      v7 = [v4 arrayForKey:*MEMORY[0x277CD1520]];
      if (v7)
      {
        v8 = [v4 numberForKey:*MEMORY[0x277CD1530]];
        if (v8)
        {
          v9 = [v4 numberForKey:*MEMORY[0x277CD1540]];
          v87 = v9;
          if (v9)
          {
            v10 = v9;
            v88 = v8;
            v11 = [v4 uuidForKey:*MEMORY[0x277CD1528]];
            v91 = v5;
            v12 = [[HMDWidget alloc] initWithIdentifier:v5 kind:v6];
            v13 = [(HMDWidgetTimelineRefresher *)self characteristicsFromSPIClientIdentifiers:v7];
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke;
            v103[3] = &unk_27972F1E0;
            v14 = v10;
            v104 = v14;
            v89 = [v13 na_map:v103];
            context = objc_autoreleasePoolPush();
            v15 = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v83 = v12;
              v17 = v11;
              v81 = HMFGetLogIdentifier();
              *buf = 0;
              *&buf[8] = 0;
              v18 = [v4 identifier];

              if (v18)
              {
                v19 = [v4 identifier];
                [v19 getUUIDBytes:buf];
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
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to update characteristics for widget: %@, generation counter: %@, current home: %{uuid_t}.16P", buf, 0x40u);
            }

            objc_autoreleasePoolPop(context);
            [v14 BOOLValue];
            v53 = [v4 qualityOfService];
            v94[0] = MEMORY[0x277D85DD0];
            v94[1] = 3221225472;
            v79 = v53;
            v95 = __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke_228;
            v96 = &unk_27972F208;
            v97 = v15;
            v98 = v88;
            v99 = v6;
            v100 = v11;
            v101 = v13;
            v102 = v4;
            v54 = v13;
            contexta = v11;
            v90 = v89;
            v55 = v12;
            v56 = v94;
            v57 = v56;
            v5 = v91;
            if (v15)
            {
              v82 = v56;
              v84 = v54;
              v58 = [(HMDWidgetTimelineRefresher *)v15 workQueue];
              dispatch_assert_queue_V2(v58);

              v59 = [(HMDWidgetTimelineRefresher *)v15 monitoredCharacteristicsMapByWidget];
              v60 = [v59 objectForKeyedSubscript:v55];
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
              v65 = v15;
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
                  _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Monitored characteristics did not change for widget %@", buf, 0x16u);
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
                  _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Monitored characteristics changed for widget %@ to %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v64);
                v70 = [(HMDWidgetTimelineRefresher *)v65 characteristicsMonitoredForWidgets];
                v71 = [(HMDWidgetTimelineRefresher *)v65 accessoriesMonitoredForReachability];
                v72 = [(HMDWidgetTimelineRefresher *)v65 monitoredCharacteristicsMapByWidget];
                [v72 setObject:v90 forKeyedSubscript:v55];

                v73 = [(HMDWidgetTimelineRefresher *)v65 characteristicsMonitoredForWidgets];
                v74 = [(HMDWidgetTimelineRefresher *)v65 accessoriesMonitoredForReachability];
                [(HMDWidgetTimelineRefresher *)v65 updateNotificationRegistrationWithPreviousCharacteristics:v70 currentCharacteristics:v73 updateRequestQualityOfService:v79];
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __146__HMDWidgetTimelineRefresher_internalUpdateMonitoredCharacteristics_shouldMonitorReachability_forWidget_updateRequestQualityOfService_completion___block_invoke;
                *&buf[24] = &unk_279735738;
                *&buf[32] = v65;
                v108 = v82;
                [(HMDWidgetTimelineRefresher *)v65 updateReachabilityMonitorWithPreviousAccessories:v71 currentAccessories:v74 completion:buf];

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
            v46 = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v93 = v5;
              v48 = HMFGetLogIdentifier();
              *buf = 0;
              *&buf[8] = 0;
              v49 = [v4 identifier];

              if (v49)
              {
                v50 = [v4 identifier];
                [v50 getUUIDBytes:buf];
              }

              else
              {
                *buf = *MEMORY[0x277D0F960];
              }

              v113 = *buf;
              v77 = [v4 messagePayload];
              *buf = 138544130;
              *&buf[4] = v48;
              *&buf[12] = 1040;
              *&buf[14] = 16;
              *&buf[18] = 2096;
              *&buf[20] = &v113;
              *&buf[28] = 2112;
              *&buf[30] = v77;
              _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find reachability registration value in message payload: %@", buf, 0x26u);

              v5 = v93;
            }

            objc_autoreleasePoolPop(v45);
            v55 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            [v4 respondWithError:v55];
            v75 = 0;
          }
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          v39 = self;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v92 = v5;
            v41 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            v42 = [v4 identifier];

            if (v42)
            {
              v43 = [v4 identifier];
              [v43 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v114 = *buf;
            v76 = [v4 messagePayload];
            *buf = 138544130;
            *&buf[4] = v41;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            *&buf[18] = 2096;
            *&buf[20] = &v114;
            *&buf[28] = 2112;
            *&buf[30] = v76;
            _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find generation counter in message payload: %@", buf, 0x26u);

            v5 = v92;
          }

          objc_autoreleasePoolPop(v38);
          v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [v4 respondWithError:v75];
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v36 = [v4 identifier];

          if (v36)
          {
            v37 = [v4 identifier];
            [v37 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v115 = *buf;
          v52 = [v4 messagePayload];
          *buf = 138544130;
          *&buf[4] = v35;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v115;
          *&buf[28] = 2112;
          *&buf[30] = v52;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find characteristic UUIDs in message payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v32);
        v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v8];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v30 = [v4 identifier];

        if (v30)
        {
          v31 = [v4 identifier];
          [v31 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v116 = *buf;
        v51 = [v4 messagePayload];
        *buf = 138544130;
        *&buf[4] = v29;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        *&buf[18] = 2096;
        *&buf[20] = &v116;
        *&buf[28] = 2112;
        *&buf[30] = v51;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v26);
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v7];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v24 = [v4 identifier];

      if (v24)
      {
        v25 = [v4 identifier];
        [v25 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v117 = *buf;
      v44 = [v4 messagePayload];
      *buf = 138544130;
      *&buf[4] = v23;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v117;
      *&buf[28] = 2112;
      *&buf[30] = v44;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget identifier in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v20);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v6];
  }

  v78 = *MEMORY[0x277D85DE8];
}

HMDWidgetMonitoredCharacteristic *__68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = -[HMDWidgetMonitoredCharacteristic initWithCharacteristic:reachabilityMonitored:]([HMDWidgetMonitoredCharacteristic alloc], "initWithCharacteristic:reachabilityMonitored:", v3, [*(a1 + 32) BOOLValue]);

  return v4;
}

void __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke_228(uint64_t a1)
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_FAULT, "%{public}@Generation counter is unexpectedly set to zero.", buf, 0xCu);
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
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline because client's currentHome UUID is different. Client: %{uuid_t}.16P, homed: %{uuid_t}.16P", buf, 0x2Cu);
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
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline because client's generation counter is older. Client: %lu, homed: %lu", buf, 0x20u);
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
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
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
  block[3] = &unk_2797348C0;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Reloading widgets from Chronod", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDWidgetTimelineRefresher *)v6 widgetConfigurationReader];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke;
  v12[3] = &unk_279734A00;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  [v9 fetchAutoBahnWidgetsWithCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke_2;
  block[3] = &unk_2797355D0;
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
  v3 = [*(a1 + 32) na_map:&__block_literal_global_222];
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Active widgets are: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) setActiveAutoBahnWidgetKinds:v4];
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)forceUpdateTimelineForWidgetKinds:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(HMDWidgetTimelineRefresher *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
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
      v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_148507];
      v15 = [v14 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@More kinds to reload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (!v5)
    {
      v16 = dispatch_time(0, [*(a1 + 40) forceUpdateTimelineDispatchDelayNs]);
      v17 = [*(a1 + 40) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke_215;
      block[3] = &unk_279735D00;
      block[4] = *(a1 + 40);
      dispatch_after(v16, v17, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke_215(uint64_t a1)
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

        _os_log_impl(&dword_2531F8000, v14, v15, v16, buf, v17);

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

- (id)widgetKindsToUpdateFromFetchSpecifications:(id)a3 assumingChangedCharacteristic:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v32 = [MEMORY[0x277CBEB58] set];
  v34 = v6;
  v7 = [v6 service];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5;
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
        v14 = [v13 serviceTypes];
        v15 = [v7 type];
        if (![v14 containsObject:v15])
        {

          goto LABEL_19;
        }

        v16 = [v13 associatedServiceTypes];
        v17 = [v16 hmf_isEmpty];
        if ((v17 & 1) == 0)
        {
          v18 = [v13 associatedServiceTypes];
          v37 = [v7 associatedServiceType];
          v38 = v18;
          if (![v18 containsObject:?])
          {
            v22 = 0;
            goto LABEL_15;
          }
        }

        v19 = v7;
        v20 = [v13 characteristicTypes];
        v21 = [v34 type];
        v22 = [v20 containsObject:v21];

        if ((v17 & 1) == 0)
        {
          v7 = v19;
          v11 = v33;
LABEL_15:
          v10 = v35;

          if ((v22 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_16:
          v23 = objc_autoreleasePoolPush();
          v24 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            v27 = [v13 affectedWidgetKinds];
            *buf = v30;
            v44 = v26;
            v45 = 2112;
            v46 = v27;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@...must reload widget kinds: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v14 = [v13 affectedWidgetKinds];
          [v32 unionSet:v14];
LABEL_19:

          goto LABEL_20;
        }

        v7 = v19;
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

- (id)widgetKindsToUpdateFromFetchSpecifications:(id)a3 changedCharacteristics:(id)a4
{
  v115 = *MEMORY[0x277D85DE8];
  v76 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v101 = v10;
    v102 = 2082;
    v103 = "[HMDWidgetTimelineRefresher widgetKindsToUpdateFromFetchSpecifications:changedCharacteristics:]";
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@%{public}s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v75 = [MEMORY[0x277CBEB58] set];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v96 objects:v114 count:16];
  if (v11)
  {
    v13 = v11;
    v95 = *v97;
    *&v12 = 138544898;
    v66 = v12;
    v92 = v8;
    do
    {
      v14 = 0;
      v93 = v13;
      do
      {
        if (*v97 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v96 + 1) + 8 * v14);
        v16 = [v15 accessory];
        v17 = [v16 home];
        v18 = [(HMDWidgetTimelineRefresher *)v8 homeHasAnyResident:v17];

        if (v18)
        {
          v19 = [(HMDWidgetTimelineRefresher *)v8 characteristicsToPreviouslySeenValues];
          v20 = [v15 serializedIdentifier];
          v21 = [v19 objectForKeyedSubscript:v20];

          v22 = [v15 value];
          LODWORD(v20) = HMFEqualObjects();

          if (v20)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = v8;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v69 = HMFGetLogIdentifier();
              v81 = [v15 characteristicType];
              v26 = HAPShortUUIDType();
              [v15 characteristicTypeDescription];
              v27 = log = v21;
              v77 = [v15 accessory];
              v72 = [v77 home];
              v28 = [v72 name];
              [v15 accessory];
              v29 = contexta = v23;
              v30 = [v29 name];
              v31 = [v15 value];
              *buf = 138544642;
              v101 = v69;
              v102 = 2112;
              v103 = v26;
              v104 = 2112;
              v105 = v27;
              v106 = 2112;
              v107 = v28;
              v108 = 2112;
              v109 = v30;
              v110 = 2112;
              v111 = v31;
              _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@...ignoring redundant characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

              v23 = contexta;
              v13 = v93;

              v8 = v92;
              v21 = log;
            }

            objc_autoreleasePoolPop(v23);
          }

          else
          {
            v42 = [(HMDWidgetTimelineRefresher *)v8 widgetKindsToUpdateFromFetchSpecifications:v76 assumingChangedCharacteristic:v15];
            [v75 unionSet:v42];
            v43 = [v42 count];
            context = objc_autoreleasePoolPush();
            v44 = v8;
            v45 = HMFGetOSLogHandle();
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
            if (v43)
            {
              if (v46)
              {
                HMFGetLogIdentifier();
                v47 = v83 = v42;
                v79 = [v15 characteristicType];
                v48 = HAPShortUUIDType();
                [v15 characteristicTypeDescription];
                v49 = logb = v45;
                v73 = [v15 accessory];
                v70 = [v73 home];
                v50 = [v70 name];
                v67 = [v15 accessory];
                v51 = [v67 name];
                [v15 value];
                v53 = v52 = v21;
                *buf = v66;
                v101 = v47;
                v102 = 2112;
                v103 = v48;
                v104 = 2112;
                v105 = v49;
                v106 = 2112;
                v107 = v50;
                v108 = 2112;
                v109 = v51;
                v110 = 2112;
                v111 = v53;
                v112 = 2112;
                v113 = v52;
                _os_log_impl(&dword_2531F8000, logb, OS_LOG_TYPE_INFO, "%{public}@...updating characteristic [%@] (%@) from '%@:%@', value '%@' was '%@'", buf, 0x48u);

                v21 = v52;
                v8 = v92;

                v13 = v93;
                v45 = logb;

                v42 = v83;
              }

              objc_autoreleasePoolPop(context);
              v54 = [v15 value];
              v55 = [(HMDWidgetTimelineRefresher *)v44 characteristicsToPreviouslySeenValues];
              v56 = [v15 serializedIdentifier];
              [v55 setObject:v54 forKeyedSubscript:v56];
            }

            else
            {
              if (v46)
              {
                v84 = HMFGetLogIdentifier();
                v80 = [v15 characteristicType];
                v68 = HAPShortUUIDType();
                v57 = [v15 characteristicTypeDescription];
                v74 = [v15 accessory];
                v71 = [v74 home];
                v58 = [v71 name];
                v59 = [v15 accessory];
                [v59 name];
                v60 = logc = v21;
                v61 = [v15 value];
                *buf = 138544642;
                v101 = v84;
                v102 = 2112;
                v103 = v68;
                v104 = 2112;
                v105 = v57;
                v62 = v57;
                v106 = 2112;
                v107 = v58;
                v63 = v58;
                v108 = 2112;
                v109 = v60;
                v110 = 2112;
                v111 = v61;
                _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@...ignoring irrelevant characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

                v21 = logc;
                v13 = v93;

                v8 = v92;
              }

              objc_autoreleasePoolPop(context);
            }
          }
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          v33 = v8;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            loga = [v15 characteristicType];
            v36 = HAPShortUUIDType();
            v37 = [v15 characteristicTypeDescription];
            v82 = [v15 accessory];
            v78 = [v82 home];
            v38 = [v78 name];
            [v15 accessory];
            v39 = contextb = v32;
            v40 = [v39 name];
            v41 = [v15 value];
            *buf = 138544642;
            v101 = v35;
            v102 = 2112;
            v103 = v36;
            v104 = 2112;
            v105 = v37;
            v106 = 2112;
            v107 = v38;
            v108 = 2112;
            v109 = v40;
            v110 = 2112;
            v111 = v41;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@...No resident. Ignoring characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

            v32 = contextb;
            v8 = v92;

            v13 = v93;
          }

          objc_autoreleasePoolPop(v32);
        }

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

- (void)internalProcessChangedCharacteristics:(id)a3 activeAutoBahnWidgetKinds:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v11;
    v18 = 2080;
    v19 = "[HMDWidgetTimelineRefresher internalProcessChangedCharacteristics:activeAutoBahnWidgetKinds:]";
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@%s", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_opt_class() fetchSpecificationsForWidgetKinds:v7];
  v13 = [(HMDWidgetTimelineRefresher *)v9 widgetKindsToUpdateFromFetchSpecifications:v12 changedCharacteristics:v6];
  v14 = [(HMDWidgetTimelineRefresher *)v9 forceUpdateAutobahnTimelineHandler];
  (v14)[2](v14, v13);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processCharacteristicsChangedNotification:(id)a3
{
  v4 = a3;
  [(HMDWidgetTimelineRefresher *)self handleAccessoryCharacteristicsChangedNotification:v4];
  v5 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDWidgetTimelineRefresher_processCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing characteristics changed notification", &v10, 0xCu);
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  v44 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDWidgetTimelineRefresher *)v44 monitoredCharacteristics];
    v8 = [v7 count];
    v9 = &stru_286509E58;
    if (!v8)
    {
      v9 = @"none registered";
    }

    *buf = 138543618;
    v59 = v6;
    v60 = 2112;
    v61 = v9;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop monitoring previous accessories: %@", buf, 0x16u);

    v4 = v44;
  }

  objc_autoreleasePoolPop(v3);
  v47 = objc_opt_new();
  v10 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = [(HMDWidgetTimelineRefresher *)v4 monitoredCharacteristics];
  v12 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v52 + 1) + 8 * i);
        v17 = [v16 accessory];
        v18 = [v17 uuid];
        if (v18)
        {
          [v47 setObject:v17 forKeyedSubscript:v18];
          v19 = [v10 objectForKeyedSubscript:v18];
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
          [v10 setObject:v21 forKeyedSubscript:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
          v33 = [(HMDWidgetTimelineRefresher *)v24 clientIdentifier];
          [(HMDWidgetTimelineRefresher *)v24 setNotificationEnabled:v31 forCharacteristics:v33 clientIdentifier:?];

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
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@- stopped monitoring accessory: %@", buf, 0x16u);

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

- (id)monitorCharacteristicsForHome:(id)a3 fetchSpecifications:(id)a4
{
  v128 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v7;
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

        v13 = [*(*(&v110 + 1) + 8 * i) name];
        [v8 addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v110 objects:v127 count:16];
    }

    while (v10);
  }

  v68 = v8;

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v6 name];
    v19 = [v6 shortDescription];
    v20 = [v8 componentsJoinedByString:{@", "}];
    *buf = 138544130;
    v120 = v17;
    v121 = 2112;
    v122 = v18;
    v123 = 2112;
    v124 = v19;
    v125 = 2112;
    v126 = v20;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@monitorCharacteristicsForHome: '%@' [%@], fetch specifications: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v72 = objc_opt_new();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v67 = v6;
  v69 = [v6 hapAccessories];
  v73 = [v69 countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v73)
  {
    v71 = *v107;
    v70 = v15;
    do
    {
      v21 = 0;
      do
      {
        if (*v107 != v71)
        {
          objc_enumerationMutation(v69);
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
              v25 = [v78 services];
              v26 = [v25 countByEnumeratingWithState:&v98 objects:v116 count:16];
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
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v98 + 1) + 8 * v29);
                    v31 = [v24 serviceTypes];
                    v32 = [v30 type];
                    if ([v31 containsObject:v32])
                    {
                      v33 = [v24 associatedServiceTypes];
                      if ([v33 hmf_isEmpty])
                      {
                      }

                      else
                      {
                        [v24 associatedServiceTypes];
                        v34 = v24;
                        v36 = v35 = v25;
                        v37 = [v30 associatedServiceType];
                        v86 = [v36 containsObject:v37];

                        v28 = v84;
                        v25 = v35;
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
                      v31 = [v24 characteristicTypes];
                      v38 = [v31 countByEnumeratingWithState:&v94 objects:v115 count:16];
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
                              objc_enumerationMutation(v31);
                            }

                            v42 = [v30 findCharacteristicWithType:*(*(&v94 + 1) + 8 * j)];
                            if (v42)
                            {
                              [v22 addObject:v42];
                            }
                          }

                          v39 = [v31 countByEnumeratingWithState:&v94 objects:v115 count:16];
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
                  v27 = [v25 countByEnumeratingWithState:&v98 objects:v116 count:16];
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
            v46 = [v78 home];
            v47 = [v46 name];
            v48 = [v78 name];
            *buf = 138543874;
            v120 = v45;
            v121 = 2112;
            v122 = v47;
            v123 = 2112;
            v124 = v48;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Monitoring accessory: '%@:%@'", buf, 0x20u);
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
                  v85 = [v53 service];
                  v58 = [v85 type];
                  v59 = HAPShortUUIDType();
                  v60 = [v53 characteristicType];
                  HAPShortUUIDType();
                  v61 = v87 = v54;
                  v62 = [v53 characteristicTypeDescription];
                  *buf = 138544130;
                  v120 = v57;
                  v121 = 2112;
                  v122 = v59;
                  v123 = 2112;
                  v124 = v61;
                  v125 = 2112;
                  v126 = v62;
                  _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@+ monitoring service: '%@', characteristic: '[%@] (%@)'", buf, 0x2Au);

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

          v63 = [(HMDWidgetTimelineRefresher *)v89 clientIdentifier];
          [(HMDWidgetTimelineRefresher *)v89 setNotificationEnabled:v83 forCharacteristics:v63 clientIdentifier:?];
        }

        [v72 unionSet:v22];

        v21 = v75 + 1;
      }

      while (v75 + 1 != v73);
      v73 = [v69 countByEnumeratingWithState:&v106 objects:v118 count:16];
    }

    while (v73);
  }

  v64 = [v72 copy];
  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

- (id)internalMonitorCharacteristicsForCurrentHome:(id)a3 activeAutoBahnWidgetKinds:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if (v6)
  {
    v9 = [(HMDWidgetTimelineRefresher *)self homeHasAnyResident:v6];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v6 shortDescription];
        *buf = 138543618;
        v38 = v14;
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating monitored characteristics for current home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v16 = [objc_opt_class() fetchSpecificationsForWidgetKinds:v7];
      v17 = [(HMDWidgetTimelineRefresher *)v11 monitorCharacteristicsForHome:v6 fetchSpecifications:v16];
      [v8 unionSet:v17];
    }

    else
    {
      if (v13)
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v6 shortDescription];
        *buf = 138543618;
        v38 = v18;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Not updating monitored characteristics for current home: %@ because there is no resident", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  if ([v7 containsObject:@"com.apple.Home.widget.security.singleAccessory"])
  {
    v31 = v7;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [(HMDWidgetTimelineRefresher *)self homeManager];
    v21 = [v20 homes];

    v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v32 + 1) + 8 * i);
          if ((HMFEqualObjects() & 1) == 0 && [(HMDWidgetTimelineRefresher *)self homeHasAnyResident:v26])
          {
            v27 = +[HMDWidgetFetchSpecification allOtherHomesSingleAccessorySecurityFetchSpecifications];
            v28 = [(HMDWidgetTimelineRefresher *)self monitorCharacteristicsForHome:v26 fetchSpecifications:v27];

            [v8 unionSet:v28];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v23);
    }

    v7 = v31;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)updateMonitoredCharacteristicsAndRefreshWidgetTimelines
{
  v3 = [(HMDWidgetTimelineRefresher *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
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
  v14[3] = &unk_2797359B0;
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
  v5[3] = &unk_2797359B0;
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Refreshing all Home widgets because of major changes / daemon restart", &v11, 0xCu);
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
  v3 = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
  v4 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke;
  v20[3] = &unk_27972FE68;
  objc_copyWeak(&v21, &location);
  v5 = [v3 notifyRegisterDispatch:"com.apple.Home.homeSensingChanged" outToken:&self->_homeSensingChangedNotificationToken queue:v4 handler:v20];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to register notification for %s with error: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
  v11 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke_202;
  v18[3] = &unk_27972FE68;
  objc_copyWeak(&v19, &location);
  v12 = [v10 notifyRegisterDispatch:"com.apple.Home.selectedHomeChanged" outToken:&self->_selectedHomeChangedNotificationToken queue:v11 handler:v18];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to register notification for %s with error: %d", buf, 0x1Cu);
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

void __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke_202(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSelectedHomeChangedNotification];
}

- (void)registerForMessagesWithMessageDispatcher:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  [v4 registerForMessage:*MEMORY[0x277CD1580] receiver:self policies:v6 selector:sel_handleMonitorCharacteristicsForWidget_];
  [v4 registerForMessage:*MEMORY[0x277CD1568] receiver:self policies:v6 selector:sel_handleFetchState_];
  [v4 registerForMessage:*MEMORY[0x277CD1590] receiver:self policies:v6 selector:sel_handlePerformRequests_];
  [v4 registerForMessage:*MEMORY[0x277CD1578] receiver:self policies:v6 selector:sel_handleMonitorActionSetsForWidget_];
  [v4 registerForMessage:*MEMORY[0x277CD1570] receiver:self policies:v6 selector:sel_handleFetchStateForActionSets_];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v43 = *MEMORY[0x277D85DE8];
  v31 = [(HMDWidgetTimelineRefresher *)self homeManager];
  if (v31)
  {
    [(HMDWidgetTimelineRefresher *)self configureSwiftExtensions];
    v3 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v3 addObserver:self selector:sel_processCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];

    v4 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v4 addObserver:self selector:sel_handleCurrentOrPrimaryHomeChangedNotification_ name:@"HMDNotificationCurrentHomeDidChange" object:v31];

    v5 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v5 addObserver:self selector:sel_handleCurrentOrPrimaryHomeChangedNotification_ name:@"HMDNotificationPrimaryHomeDidChange" object:v31];

    v6 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v6 addObserver:self selector:sel_handleHomeAddedNotification_ name:@"HMDHomeAddedNotification" object:v31];

    v7 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v7 addObserver:self selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:v31];

    v8 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v8 addObserver:self selector:sel_handleAccessoryAddedNotification_ name:@"HMDNotificationHomeAddedAccessory" object:0];

    v9 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v9 addObserver:self selector:sel_handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

    v10 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v10 addObserver:self selector:sel_handleResidentDeviceChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    v11 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v11 addObserver:self selector:sel_handleResidentDeviceAddedOrRemovedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

    v12 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v12 addObserver:self selector:sel_handleResidentDeviceAddedOrRemovedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];

    v13 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [v13 addObserver:self selector:sel_handleNotifiedXPCClientsOfHomeConfigurationChangeNotification_ name:@"HMDHomeManagerNotifiedXPCClientsOfHomeConfigurationChangeNotification" object:0];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = +[HMDWidgetFetchSpecification allHomeLockScreenWidgetKinds];
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = [MEMORY[0x277CCA9A0] defaultCenter];
          [v19 addObserver:self selector:sel_handleNotificationOfPossibleNewWidget_ name:v18 object:0 suspensionBehavior:4];
        }

        v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v15);
    }

    v20 = [v31 messageDispatcher];
    [(HMDWidgetTimelineRefresher *)self registerForMessagesWithMessageDispatcher:v20];

    [(HMDWidgetTimelineRefresher *)self registerForDarwinNotifications];
    v21 = [(HMDWidgetTimelineRefresher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v21, block);

    v22 = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    v23 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v22, v23, 0x68C61714000uLL, 0x8BB2C97000uLL);

    objc_initWeak(location, self);
    v24 = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke_2;
    handler[3] = &unk_279732FD8;
    objc_copyWeak(&v33, location);
    dispatch_source_set_event_handler(v24, handler);

    v25 = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    dispatch_activate(v25);

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v29;
      v41 = 2080;
      v42 = "[HMDWidgetTimelineRefresher configure]";
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil during %s, no widgets configured.", location, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __39__HMDWidgetTimelineRefresher_configure__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke_3;
  v2[3] = &unk_279735D00;
  v2[4] = WeakRetained;
  [WeakRetained fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:v2];
}

- (void)dealloc
{
  if (self->_homeSensingChangedNotificationToken != -1)
  {
    v3 = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
    [v3 notifyCancel:self->_homeSensingChangedNotificationToken];
  }

  if (self->_selectedHomeChangedNotificationToken != -1)
  {
    v4 = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
    [v4 notifyCancel:self->_selectedHomeChangedNotificationToken];
  }

  v5.receiver = self;
  v5.super_class = HMDWidgetTimelineRefresher;
  [(HMDWidgetTimelineRefresher *)&v5 dealloc];
}

- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)a3 queue:(id)a4 dataSource:(id)a5 reachabilityUpdateDispatchDelayNs:(int64_t)a6 forceUpdateTimelineDispatchDelayNs:(int64_t)a7
{
  v91 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v78 = a4;
  v13 = a5;
  v81.receiver = self;
  v81.super_class = HMDWidgetTimelineRefresher;
  v14 = [(HMDWidgetTimelineRefresher *)&v81 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_homeManager, v12);
    objc_storeStrong(&v15->_workQueue, a4);
    objc_storeStrong(&v15->_dataSource, a5);
    v16 = [MEMORY[0x277CBEB98] set];
    widgetKindsToUpdate = v15->_widgetKindsToUpdate;
    v15->_widgetKindsToUpdate = v16;

    v18 = objc_opt_new();
    accessoryIsReachableByUUID = v15->_accessoryIsReachableByUUID;
    v15->_accessoryIsReachableByUUID = v18;

    v20 = [MEMORY[0x277CBEB98] set];
    monitoredCharacteristics = v15->_monitoredCharacteristics;
    v15->_monitoredCharacteristics = v20;

    v22 = [v13 notificationCenterForTimelineRefresher:v15];
    notificationCenter = v15->_notificationCenter;
    v15->_notificationCenter = v22;

    v24 = [v13 darwinNotificationProviderForTimelineRefresher:v15];
    darwinNotificationProvider = v15->_darwinNotificationProvider;
    v15->_darwinNotificationProvider = v24;

    v26 = [v13 widgetConfigurationReaderForTimelineRefresher:v15];
    widgetConfigurationReader = v15->_widgetConfigurationReader;
    v15->_widgetConfigurationReader = v26;

    v28 = [v13 widgetTimelineControllerForTimelineRefresher:v15];
    timelineController = v15->_timelineController;
    v15->_timelineController = v28;

    v30 = [v13 logEventSubmitterForTimelineRefresher:v15];
    logEventSubmitter = v15->_logEventSubmitter;
    v15->_logEventSubmitter = v30;

    v32 = [v13 timerManagerForTimelineRefresher:v15 options:0];
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

    v38 = [MEMORY[0x277CBEB38] dictionary];
    monitoredCharacteristicsMapByWidget = v15->_monitoredCharacteristicsMapByWidget;
    v15->_monitoredCharacteristicsMapByWidget = v38;

    v40 = [MEMORY[0x277CBEB38] dictionary];
    monitoredActionSetsMapByWidget = v15->_monitoredActionSetsMapByWidget;
    v15->_monitoredActionSetsMapByWidget = v40;

    v42 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    cachedValueByCharacteristic = v15->_cachedValueByCharacteristic;
    v15->_cachedValueByCharacteristic = v42;

    v44 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    cachedIsOnStateByActionSet = v15->_cachedIsOnStateByActionSet;
    v15->_cachedIsOnStateByActionSet = v44;

    v46 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingRequestValueByUUID = v15->_pendingRequestValueByUUID;
    v15->_pendingRequestValueByUUID = v46;

    v48 = [MEMORY[0x277CBEB38] dictionary];
    cachedActionSetExecuteErrorByUUID = v15->_cachedActionSetExecuteErrorByUUID;
    v15->_cachedActionSetExecuteErrorByUUID = v48;

    v50 = [MEMORY[0x277CBEB38] dictionary];
    cachedActionSetExecuteErrorTimerContextByUUID = v15->_cachedActionSetExecuteErrorTimerContextByUUID;
    v15->_cachedActionSetExecuteErrorTimerContextByUUID = v50;

    v52 = [MEMORY[0x277CBEB38] dictionary];
    characteristicsToPreviouslySeenValues = v15->_characteristicsToPreviouslySeenValues;
    v15->_characteristicsToPreviouslySeenValues = v52;

    v54 = [MEMORY[0x277CBEB98] set];
    activeAutoBahnWidgetKinds = v15->_activeAutoBahnWidgetKinds;
    v15->_activeAutoBahnWidgetKinds = v54;

    v56 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v15->_workQueue);
    widgetRefreshDispatchTimer = v15->_widgetRefreshDispatchTimer;
    v15->_widgetRefreshDispatchTimer = v56;

    v15->_homeSensingChangedNotificationToken = -1;
    v15->_selectedHomeChangedNotificationToken = -1;
    v15->_reachabilityUpdateDispatchDelayNs = a6;
    v15->_forceUpdateTimelineDispatchDelayNs = a7;
    v58 = [MEMORY[0x277CBEB98] set];
    widgetRefreshCoalesceKinds = v15->_widgetRefreshCoalesceKinds;
    v15->_widgetRefreshCoalesceKinds = v58;

    v60 = [v12 currentHomeUUID];
    v61 = v60;
    if (v60)
    {
      v62 = 0;
      v63 = v60;
    }

    else
    {
      v64 = [v12 primaryHomeUUID];
      a6 = v64;
      if (v64)
      {
        v62 = 0;
        v63 = v64;
      }

      else
      {
        v63 = [MEMORY[0x277CCAD78] UUID];
        a6 = 0;
        v62 = 1;
      }
    }

    objc_storeStrong(&v15->_currentHomeUUID, v63);
    if (v62)
    {
    }

    if (!v61)
    {
    }

    v65 = objc_autoreleasePoolPush();
    v66 = v15;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v69 = [v12 primaryHomeUUID];

      if (v69)
      {
        v70 = [v12 primaryHomeUUID];
        [v70 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v83 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v71 = [v12 currentHomeUUID];

      if (v71)
      {
        v72 = [v12 currentHomeUUID];
        [v72 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v82 = *buf;
      *buf = 138544386;
      *&buf[4] = v68;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v85 = 2096;
      v86 = &v83;
      v87 = 1040;
      v88 = 16;
      v89 = 2096;
      v90 = &v82;
      _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@primary home is %{uuid_t}.16P, current home is %{uuid_t}.16P", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v65);
    objc_initWeak(buf, v66);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __136__HMDWidgetTimelineRefresher_initWithHomeManager_queue_dataSource_reachabilityUpdateDispatchDelayNs_forceUpdateTimelineDispatchDelayNs___block_invoke;
    aBlock[3] = &unk_27972F178;
    objc_copyWeak(&v80, buf);
    v73 = _Block_copy(aBlock);
    forceUpdateAutobahnTimelineHandler = v66->_forceUpdateAutobahnTimelineHandler;
    v66->_forceUpdateAutobahnTimelineHandler = v73;

    [(HMDWidgetTimelineRefresher *)v66 initSwiftExtensions];
    v75 = v66;
    objc_destroyWeak(&v80);
    objc_destroyWeak(buf);
  }

  v76 = *MEMORY[0x277D85DE8];
  return v15;
}

void __136__HMDWidgetTimelineRefresher_initWithHomeManager_queue_dataSource_reachabilityUpdateDispatchDelayNs_forceUpdateTimelineDispatchDelayNs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained forceUpdateTimelineForWidgetKinds:v3];
}

- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)a3
{
  v4 = a3;
  v5 = HMDispatchQueueNameString();
  v6 = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(v6, v7);
  v9 = [(HMDWidgetTimelineRefresher *)self createDataSource];
  v10 = [(HMDWidgetTimelineRefresher *)self initWithHomeManager:v4 queue:v8 dataSource:v9 reachabilityUpdateDispatchDelayNs:1000000000 forceUpdateTimelineDispatchDelayNs:333333333];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t133 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t133, &__block_literal_global_345_148580);
  }

  v3 = logCategory__hmf_once_v134;

  return v3;
}

uint64_t __41__HMDWidgetTimelineRefresher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v134;
  logCategory__hmf_once_v134 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)fetchSpecificationsForWidgetKinds:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 containsObject:@"com.apple.Home.widget.summary.category"])
  {
    v5 = +[HMDWidgetFetchSpecification lightsFetchSpecifications];
    [v4 unionSet:v5];

    v6 = +[HMDWidgetFetchSpecification mainHomeSecurityFetchSpecifications];
    [v4 unionSet:v6];
  }

  if ([v3 containsObject:@"com.apple.Home.widget.lights.category"])
  {
    v7 = +[HMDWidgetFetchSpecification lightsFetchSpecifications];
    [v4 unionSet:v7];
  }

  if ([v3 containsObject:@"com.apple.Home.widget.security.category"])
  {
    v8 = +[HMDWidgetFetchSpecification mainHomeSecurityFetchSpecifications];
    [v4 unionSet:v8];
  }

  if ([v3 containsObject:@"com.apple.Home.widget.security.singleAccessory"])
  {
    v9 = +[HMDWidgetFetchSpecification allOtherHomesSingleAccessorySecurityFetchSpecifications];
    [v4 unionSet:v9];
  }

  v10 = [v4 copy];

  return v10;
}

@end