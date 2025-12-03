@interface HMDHouseholdActivityLogEventContributor
+ (id)logCategory;
- (HMDHouseholdActivityLogEventContributor)initWithHouseholdGroupName:(id)name countersManager:(id)manager dateProvider:(id)provider;
- (id)householdGroupForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)householdGroupForLogEvent:(id)event;
- (void)coalesceLogEvent:(id)event fromSourceEvent:(id)sourceEvent;
- (void)contributeLogEvent:(id)event toCoreAnalyticsEvent:(id)analyticsEvent;
- (void)contributeLogEvent:(id)event toSerializedMetric:(id)metric;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
- (void)deserializeLogEvent:(id)event fromSerializedMetric:(id)metric;
- (void)populateLogEvent:(id)event forHomeWithUUID:(id)d associatedToDate:(id)date;
@end

@implementation HMDHouseholdActivityLogEventContributor

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  countersManager = [(HMDHouseholdActivityLogEventContributor *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDHouseholdActivityLogEventContributor_deleteCountersAfterDate___block_invoke;
  v7[3] = &unk_27867E4A0;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v7];
}

BOOL __67__HMDHouseholdActivityLogEventContributor_deleteCountersAfterDate___block_invoke(uint64_t a1, void *a2)
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
  v6 = v5;
  if (v5)
  {
    v7 = [v5 groupName];
    v8 = [*(a1 + 32) householdGroupName];
    if ([v7 isEqualToString:v8])
    {
      v9 = [v6 date];
      v10 = [v9 compare:*(a1 + 40)] == 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  countersManager = [(HMDHouseholdActivityLogEventContributor *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDHouseholdActivityLogEventContributor_deleteCountersBeforeDate___block_invoke;
  v7[3] = &unk_27867E4A0;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v7];
}

BOOL __68__HMDHouseholdActivityLogEventContributor_deleteCountersBeforeDate___block_invoke(uint64_t a1, void *a2)
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
  v6 = v5;
  if (v5)
  {
    v7 = [v5 groupName];
    v8 = [*(a1 + 32) householdGroupName];
    if ([v7 isEqualToString:v8])
    {
      v9 = [v6 date];
      v10 = [v9 compare:*(a1 + 40)] == -1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)coalesceLogEvent:(id)event fromSourceEvent:(id)sourceEvent
{
  eventCopy = event;
  sourceEventCopy = sourceEvent;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)contributeLogEvent:(id)event toCoreAnalyticsEvent:(id)analyticsEvent
{
  eventCopy = event;
  analyticsEventCopy = analyticsEvent;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)deserializeLogEvent:(id)event fromSerializedMetric:(id)metric
{
  eventCopy = event;
  metricCopy = metric;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)contributeLogEvent:(id)event toSerializedMetric:(id)metric
{
  eventCopy = event;
  metricCopy = metric;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)populateLogEvent:(id)event forHomeWithUUID:(id)d associatedToDate:(id)date
{
  eventCopy = event;
  dCopy = d;
  dateCopy = date;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)householdGroupForLogEvent:(id)event
{
  v4 = HMMSafeHomeUUIDFromLogEvent();
  if (v4)
  {
    dateProvider = [(HMDHouseholdActivityLogEventContributor *)self dateProvider];
    startOfCurrentDay = [dateProvider startOfCurrentDay];
    v7 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupForHomeWithUUID:v4 associatedWithDate:startOfCurrentDay];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)householdGroupForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  countersManager = [(HMDHouseholdActivityLogEventContributor *)self countersManager];
  householdGroupName = [(HMDHouseholdActivityLogEventContributor *)self householdGroupName];
  v10 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:householdGroupName homeUUID:dCopy date:dateCopy];

  v11 = [countersManager objectForKeyedSubscript:v10];

  return v11;
}

- (HMDHouseholdActivityLogEventContributor)initWithHouseholdGroupName:(id)name countersManager:(id)manager dateProvider:(id)provider
{
  nameCopy = name;
  managerCopy = manager;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = HMDHouseholdActivityLogEventContributor;
  v12 = [(HMDHouseholdActivityLogEventContributor *)&v15 init];
  v13 = v12;
  if (v12 == self)
  {
    objc_storeStrong(&v12->_householdGroupName, name);
    objc_storeStrong(&v13->_countersManager, manager);
    objc_storeStrong(&v13->_dateProvider, provider);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_35027 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_35027, &__block_literal_global_35028);
  }

  v3 = logCategory__hmf_once_v3_35029;

  return v3;
}

void __54__HMDHouseholdActivityLogEventContributor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_35029;
  logCategory__hmf_once_v3_35029 = v1;
}

@end