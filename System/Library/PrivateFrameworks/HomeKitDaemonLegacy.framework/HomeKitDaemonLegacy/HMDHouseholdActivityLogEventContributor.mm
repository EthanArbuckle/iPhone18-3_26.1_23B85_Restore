@interface HMDHouseholdActivityLogEventContributor
+ (id)logCategory;
- (HMDHouseholdActivityLogEventContributor)initWithHouseholdGroupName:(id)a3 countersManager:(id)a4 dateProvider:(id)a5;
- (id)householdGroupForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)householdGroupForLogEvent:(id)a3;
- (void)coalesceLogEvent:(id)a3 fromSourceEvent:(id)a4;
- (void)contributeLogEvent:(id)a3 toCoreAnalyticsEvent:(id)a4;
- (void)contributeLogEvent:(id)a3 toSerializedMetric:(id)a4;
- (void)deleteCountersAfterDate:(id)a3;
- (void)deleteCountersBeforeDate:(id)a3;
- (void)deserializeLogEvent:(id)a3 fromSerializedMetric:(id)a4;
- (void)populateLogEvent:(id)a3 forHomeWithUUID:(id)a4 associatedToDate:(id)a5;
@end

@implementation HMDHouseholdActivityLogEventContributor

- (void)deleteCountersAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdActivityLogEventContributor *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDHouseholdActivityLogEventContributor_deleteCountersAfterDate___block_invoke;
  v7[3] = &unk_27972E328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 removeCounterGroupsBasedOnPredicate:v7];
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

- (void)deleteCountersBeforeDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdActivityLogEventContributor *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDHouseholdActivityLogEventContributor_deleteCountersBeforeDate___block_invoke;
  v7[3] = &unk_27972E328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 removeCounterGroupsBasedOnPredicate:v7];
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

- (void)coalesceLogEvent:(id)a3 fromSourceEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)contributeLogEvent:(id)a3 toCoreAnalyticsEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)deserializeLogEvent:(id)a3 fromSerializedMetric:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)contributeLogEvent:(id)a3 toSerializedMetric:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)populateLogEvent:(id)a3 forHomeWithUUID:(id)a4 associatedToDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)householdGroupForLogEvent:(id)a3
{
  v4 = HMMSafeHomeUUIDFromLogEvent();
  if (v4)
  {
    v5 = [(HMDHouseholdActivityLogEventContributor *)self dateProvider];
    v6 = [v5 startOfCurrentDay];
    v7 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupForHomeWithUUID:v4 associatedWithDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)householdGroupForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHouseholdActivityLogEventContributor *)self countersManager];
  v9 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupName];
  v10 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:v9 homeUUID:v7 date:v6];

  v11 = [v8 objectForKeyedSubscript:v10];

  return v11;
}

- (HMDHouseholdActivityLogEventContributor)initWithHouseholdGroupName:(id)a3 countersManager:(id)a4 dateProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDHouseholdActivityLogEventContributor;
  v12 = [(HMDHouseholdActivityLogEventContributor *)&v15 init];
  v13 = v12;
  if (v12 == self)
  {
    objc_storeStrong(&v12->_householdGroupName, a3);
    objc_storeStrong(&v13->_countersManager, a4);
    objc_storeStrong(&v13->_dateProvider, a5);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_142435 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_142435, &__block_literal_global_142436);
  }

  v3 = logCategory__hmf_once_v3_142437;

  return v3;
}

uint64_t __54__HMDHouseholdActivityLogEventContributor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_142437;
  logCategory__hmf_once_v3_142437 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end