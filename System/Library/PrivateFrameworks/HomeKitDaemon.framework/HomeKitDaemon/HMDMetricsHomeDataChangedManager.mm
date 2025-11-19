@interface HMDMetricsHomeDataChangedManager
+ (id)logCategory;
- (BOOL)_shouldExcludeUpdateForModelName:(id)a3 propertyName:(id)a4;
- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource;
- (HMDEventCountersManager)countersManager;
- (HMDMetricsHomeDataChangedManager)initWithCountersManager:(id)a3 currentHomeDataSource:(id)a4 dateProvider:(id)a5;
- (HMDMetricsHomeDataChangedManager)initWithCountersManager:(id)a3 currentHomeDataSource:(id)a4 dateProvider:(id)a5 notificationCenter:(id)a6 maxNumberEventsToReport:(unint64_t)a7 workQueue:(id)a8;
- (HMMDateProvider)dateProvider;
- (NSNotificationCenter)notificationCenter;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
- (void)_handleChangeSetSummary:(id)a3 homeUUID:(id)a4;
- (void)_handleGeneratedHomeDataChangedNotification:(id)a3;
- (void)_handleHDCDueToBecamePrimaryForHome:(id)a3;
- (void)_handleHomeDataChangedReasonBecamePrimaryLogEvent:(id)a3 becamePrimaryHouseholdLogEventsByName:(id)a4 homeUUID:(id)a5;
- (void)_handleHomeDataChangedReasonInsertedLogEvent:(id)a3 insertedHouseholdLogEventsByName:(id)a4 homeUUID:(id)a5;
- (void)_handleHomeDataChangedReasonUpdatedLogEvent:(id)a3 updatedHouseholdLogEventsByName:(id)a4 homeUUID:(id)a5;
- (void)deleteCountersAfterDate:(id)a3;
- (void)deleteCountersBeforeDate:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HMDMetricsHomeDataChangedManager

- (HMMDateProvider)dateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dateProvider);

  return WeakRetained;
}

- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHomeDataSource);

  return WeakRetained;
}

- (NSNotificationCenter)notificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

  return WeakRetained;
}

- (HMDEventCountersManager)countersManager
{
  WeakRetained = objc_loadWeakRetained(&self->_countersManager);

  return WeakRetained;
}

- (BOOL)_shouldExcludeUpdateForModelName:(id)a3 propertyName:(id)a4
{
  v4 = _shouldExcludeUpdateForModelName_propertyName__onceToken;
  v5 = a4;
  if (v4 != -1)
  {
    dispatch_once(&_shouldExcludeUpdateForModelName_propertyName__onceToken, &__block_literal_global_44_20241);
  }

  v6 = [_shouldExcludeUpdateForModelName_propertyName__propertyNamesToExclude containsObject:v5];

  return v6;
}

void __82__HMDMetricsHomeDataChangedManager__shouldExcludeUpdateForModelName_propertyName___block_invoke()
{
  v0 = _shouldExcludeUpdateForModelName_propertyName__propertyNamesToExclude;
  _shouldExcludeUpdateForModelName_propertyName__propertyNamesToExclude = &unk_283E755D8;
}

- (void)_handleHomeDataChangedReasonBecamePrimaryLogEvent:(id)a3 becamePrimaryHouseholdLogEventsByName:(id)a4 homeUUID:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 objectForKeyedSubscript:@"becamePrimary"];
  if (v9)
  {
    v10 = v9;
    [v9 incrementCountWithValue:{objc_msgSend(v11, "count")}];
  }

  else
  {
    v10 = -[HMDHouseholdHomeDataChangedLogEvent initAsBecamePrimaryEventWithCount:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsBecamePrimaryEventWithCount:homeUUID:", [v11 count], v8);
    [v7 setObject:v10 forKeyedSubscript:@"becamePrimary"];
  }
}

- (void)_handleHomeDataChangedReasonUpdatedLogEvent:(id)a3 updatedHouseholdLogEventsByName:(id)a4 homeUUID:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v14 modelName];
  v10 = [v14 propertyName];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v9, v10];
  v12 = [v7 objectForKeyedSubscript:v11];
  if (v12)
  {
    v13 = v12;
    [v12 incrementCountWithValue:{objc_msgSend(v14, "count")}];
  }

  else
  {
    v13 = -[HMDHouseholdHomeDataChangedLogEvent initAsUpdateEventForModelName:propertyName:count:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsUpdateEventForModelName:propertyName:count:homeUUID:", v9, v10, [v14 count], v8);
    [v7 setObject:v13 forKeyedSubscript:v11];
  }
}

- (void)_handleHomeDataChangedReasonInsertedLogEvent:(id)a3 insertedHouseholdLogEventsByName:(id)a4 homeUUID:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v12 modelName];
  v10 = [v7 objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v10;
    [v10 incrementCountWithValue:{objc_msgSend(v12, "count")}];
  }

  else
  {
    v11 = -[HMDHouseholdHomeDataChangedLogEvent initAsInsertEventForModelName:count:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsInsertEventForModelName:count:homeUUID:", v9, [v12 count], v8);
    [v7 setObject:v11 forKeyedSubscript:v9];
  }
}

- (void)_handleHDCDueToBecamePrimaryForHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDMetricsHomeDataChangedManager *)self dateProvider];
  v9 = [v5 startOfCurrentDay];

  v6 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsBecamePrimaryEventGroup" homeUUID:v4 date:v9];

  v7 = [(HMDMetricsHomeDataChangedManager *)self countersManager];
  v8 = [v7 objectForKeyedSubscript:v6];

  [v8 incrementEventCounterForEventName:@"becamePrimary"];
}

- (void)_handleChangeSetSummary:(id)a3 homeUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDMetricsHomeDataChangedManager *)self dateProvider];
  v9 = [v8 startOfCurrentDay];

  v10 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsInsertedEventGroup" homeUUID:v6 date:v9];
  v11 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsUpdatedEventGroup" homeUUID:v6 date:v9];

  v12 = [(HMDMetricsHomeDataChangedManager *)self countersManager];
  v13 = [v12 objectForKeyedSubscript:v10];
  v14 = [v7 insertedObjectNames];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__HMDMetricsHomeDataChangedManager__handleChangeSetSummary_homeUUID___block_invoke;
  v21[3] = &unk_278683BA0;
  v22 = v13;
  v15 = v13;
  [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

  v16 = [v12 objectForKeyedSubscript:v11];
  v17 = [v7 modifiedObjectPropertyNames];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__HMDMetricsHomeDataChangedManager__handleChangeSetSummary_homeUUID___block_invoke_2;
  v19[3] = &unk_278683BA0;
  v20 = v16;
  v18 = v16;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];
}

- (void)_handleGeneratedHomeDataChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDMetricsHomeDataChangedManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HMDMetricsHomeDataChangedManager__handleGeneratedHomeDataChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __80__HMDMetricsHomeDataChangedManager__handleGeneratedHomeDataChangedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) userInfo];
    v17 = 138543618;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling HMDGeneratedHomeDataChangedNotification with userInfo: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"HMDGeneratedHomeDataChangedSummaryNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [*(a1 + 40) userInfo];
  v12 = [v11 objectForKeyedSubscript:@"HMDGeneratedHomeDataChangedHomeUUIDNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *(a1 + 32);
  if (v10)
  {
    [v15 _handleChangeSetSummary:v10 homeUUID:v14];
  }

  else
  {
    [v15 _handleHDCDueToBecamePrimaryForHome:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)serializeLogEvents:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMDMetricsHomeDataChangedManager_serializeLogEvents___block_invoke;
  v12[3] = &unk_278682DF0;
  v12[4] = self;
  v7 = v6;
  v13 = v7;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  if ([v7 count])
  {
    v14 = @"HMDMetricsHomeDataChangedLogEvents";
    v8 = [v7 copy];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __55__HMDMetricsHomeDataChangedManager_serializeLogEvents___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v5 serializedLogEvent];
    [v6 addObject:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Skipping unexpected log event during encoding: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)logEventsFromDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"HMDMetricsHomeDataChangedLogEvents"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __60__HMDMetricsHomeDataChangedManager_logEventsFromDictionary___block_invoke;
    v14 = &unk_278689E38;
    v15 = self;
    v16 = v7;
    v8 = v7;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __60__HMDMetricsHomeDataChangedManager_logEventsFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[HMDHouseholdHomeDataChangedLogEvent alloc] initWithDictionary:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode log event: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __77__HMDMetricsHomeDataChangedManager_coalescedLogEventsFromLogEvents_homeUUID___block_invoke;
  v30[3] = &unk_278671178;
  v30[4] = self;
  v11 = v8;
  v31 = v11;
  v12 = v7;
  v32 = v12;
  v13 = v9;
  v33 = v13;
  v14 = v10;
  v34 = v14;
  v29 = v6;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [v11 allValues];
  [v15 addObjectsFromArray:v16];

  v17 = [v13 allValues];
  [v15 addObjectsFromArray:v17];

  [v15 sortUsingComparator:&__block_literal_global_32_20273];
  v18 = [v14 objectForKeyedSubscript:@"becamePrimary"];
  if (v18)
  {
    [v15 insertObject:v18 atIndex:0];
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v22;
    v37 = 2112;
    v38 = v15;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@CoalescedLogEvents before truncating: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [(HMDMetricsHomeDataChangedManager *)v20 maxNumberEventsToReport];
  v24 = [v15 count];
  if (v23 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v26 = [v15 subarrayWithRange:{0, v25}];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __77__HMDMetricsHomeDataChangedManager_coalescedLogEventsFromLogEvents_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 changeType];
    if (v6)
    {
      if (v6 == 2)
      {
        [*(a1 + 32) _handleHomeDataChangedReasonUpdatedLogEvent:v5 updatedHouseholdLogEventsByName:*(a1 + 56) homeUUID:*(a1 + 48)];
      }

      else if (v6 == 1)
      {
        [*(a1 + 32) _handleHomeDataChangedReasonInsertedLogEvent:v5 insertedHouseholdLogEventsByName:*(a1 + 40) homeUUID:*(a1 + 48)];
      }
    }

    else
    {
      [*(a1 + 32) _handleHomeDataChangedReasonBecamePrimaryLogEvent:v5 becamePrimaryHouseholdLogEventsByName:*(a1 + 64) homeUUID:*(a1 + 48)];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Skipping unexpected log event during coalescing: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __77__HMDMetricsHomeDataChangedManager_coalescedLogEventsFromLogEvents_homeUUID___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 <= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 < [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)deleteCountersBeforeDate:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v15[0] = @"HMDHomeDataChangedReasonsInsertedEventGroup";
  v15[1] = @"HMDHomeDataChangedReasonsUpdatedEventGroup";
  v15[2] = @"HMDHomeDataChangedReasonsBecamePrimaryEventGroup";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v7 = [v5 setWithArray:v6];

  v8 = [(HMDMetricsHomeDataChangedManager *)self countersManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HMDMetricsHomeDataChangedManager_deleteCountersBeforeDate___block_invoke;
  v12[3] = &unk_27867E4A0;
  v13 = v4;
  v14 = v7;
  v9 = v7;
  v10 = v4;
  [v8 removeCounterGroupsBasedOnPredicate:v12];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HMDMetricsHomeDataChangedManager_deleteCountersBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 groupName];
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == -1)
    {
      v8 = [*(a1 + 40) containsObject:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteCountersAfterDate:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v15[0] = @"HMDHomeDataChangedReasonsInsertedEventGroup";
  v15[1] = @"HMDHomeDataChangedReasonsUpdatedEventGroup";
  v15[2] = @"HMDHomeDataChangedReasonsBecamePrimaryEventGroup";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v7 = [v5 setWithArray:v6];

  v8 = [(HMDMetricsHomeDataChangedManager *)self countersManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HMDMetricsHomeDataChangedManager_deleteCountersAfterDate___block_invoke;
  v12[3] = &unk_27867E4A0;
  v13 = v4;
  v14 = v7;
  v9 = v7;
  v10 = v4;
  [v8 removeCounterGroupsBasedOnPredicate:v12];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMDMetricsHomeDataChangedManager_deleteCountersAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 groupName];
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == 1)
    {
      v8 = [*(a1 + 40) containsObject:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMetricsHomeDataChangedManager *)self currentHomeDataSource];
  v9 = [v8 homeUUIDForCurrentResidentDevice];
  v10 = [v6 hmf_isEqualToUUID:v9];

  if (v10)
  {
    v11 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsInsertedEventGroup" homeUUID:v6 date:v7];
    v12 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsUpdatedEventGroup" homeUUID:v6 date:v7];
    v13 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsBecamePrimaryEventGroup" homeUUID:v6 date:v7];
    context = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [(HMDMetricsHomeDataChangedManager *)self countersManager];
    v38 = v11;
    v36 = [v15 objectForKeyedSubscript:v11];
    v16 = [v36 eventCounters];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke;
    v44[3] = &unk_278672F20;
    v17 = v6;
    v45 = v17;
    v18 = v14;
    v46 = v18;
    [v16 enumerateKeysAndObjectsUsingBlock:v44];

    v35 = [v15 objectForKeyedSubscript:v12];
    v19 = [v35 eventCounters];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke_2;
    v41[3] = &unk_278680698;
    v41[4] = self;
    v20 = v17;
    v42 = v20;
    v21 = v18;
    v43 = v21;
    [v19 enumerateKeysAndObjectsUsingBlock:v41];

    [v21 sortUsingComparator:&__block_literal_global_20281];
    v37 = v15;
    v40 = v13;
    v22 = [v15 objectForKeyedSubscript:v13];
    v23 = -[HMDHouseholdHomeDataChangedLogEvent initAsBecamePrimaryEventWithCount:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsBecamePrimaryEventWithCount:homeUUID:", [v22 fetchEventCounterForEventName:@"becamePrimary"], v20);
    [v21 insertObject:v23 atIndex:0];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v27 = v34 = v7;
      *buf = 138543618;
      v48 = v27;
      v49 = 2112;
      v50 = v21;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@PopulatedLogEvents before truncating: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [(HMDMetricsHomeDataChangedManager *)v25 maxNumberEventsToReport];
    v29 = [v21 count];
    if (v28 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    v31 = [v21 subarrayWithRange:{0, v30, v34}];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HMDHouseholdHomeDataChangedLogEvent alloc];
  v8 = [v5 unsignedIntegerValue];

  v9 = [(HMDHouseholdHomeDataChangedLogEvent *)v7 initAsInsertEventForModelName:v6 count:v8 homeUUID:*(a1 + 32)];
  [*(a1 + 40) addObject:v9];
}

void __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 componentsSeparatedByString:@"_"];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v7 objectAtIndexedSubscript:1];
    if ([*(a1 + 32) _shouldExcludeUpdateForModelName:v8 propertyName:v9])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v13;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Excluding update for modelName: %@ propertyName: %@ from HMDHomeDataChangedLogEvent", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v18 = -[HMDHouseholdHomeDataChangedLogEvent initAsUpdateEventForModelName:propertyName:count:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsUpdateEventForModelName:propertyName:count:homeUUID:", v8, v9, [v6 unsignedIntegerValue], *(a1 + 40));
      [*(a1 + 48) addObject:v18];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Expected 2 event name components from eventName: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 <= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 < [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)stop
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_started)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:v4 name:@"HMDGeneratedHomeDataChangedNotification" object:0];

    self->_started = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_started)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v4 selector:sel__handleGeneratedHomeDataChangedNotification_ name:@"HMDGeneratedHomeDataChangedNotification" object:0];

    self->_started = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDMetricsHomeDataChangedManager)initWithCountersManager:(id)a3 currentHomeDataSource:(id)a4 dateProvider:(id)a5 notificationCenter:(id)a6 maxNumberEventsToReport:(unint64_t)a7 workQueue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = HMDMetricsHomeDataChangedManager;
  v19 = [(HMDMetricsHomeDataChangedManager *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_countersManager, v14);
    objc_storeWeak(&v20->_currentHomeDataSource, v15);
    objc_storeWeak(&v20->_notificationCenter, v17);
    objc_storeWeak(&v20->_dateProvider, v16);
    v20->_maxNumberEventsToReport = a7;
    objc_storeStrong(&v20->_workQueue, a8);
  }

  return v20;
}

- (HMDMetricsHomeDataChangedManager)initWithCountersManager:(id)a3 currentHomeDataSource:(id)a4 dateProvider:(id)a5
{
  v8 = MEMORY[0x277CCAB98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 defaultCenter];
  v13 = dispatch_get_global_queue(-32768, 0);
  v14 = [(HMDMetricsHomeDataChangedManager *)self initWithCountersManager:v11 currentHomeDataSource:v10 dateProvider:v9 notificationCenter:v12 maxNumberEventsToReport:50 workQueue:v13];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_20300 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_20300, &__block_literal_global_49);
  }

  v3 = logCategory__hmf_once_v20_20301;

  return v3;
}

void __47__HMDMetricsHomeDataChangedManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_20301;
  logCategory__hmf_once_v20_20301 = v1;
}

@end