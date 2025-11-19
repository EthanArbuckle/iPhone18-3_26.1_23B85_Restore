@interface HMDHomeActivityStateLogEventAnalyzer
+ (unint64_t)fromStateFromTransitionTypeByReasonCounterGroupKey:(id)a3;
+ (unint64_t)toStateFromTransitionTypeByReasonCounterGroupKey:(id)a3;
- (HMDHomeActivityStateLogEventAnalyzer)initWithDataSource:(id)a3;
- (id)counterGroupForKey:(id)a3 homeUUID:(id)a4 date:(id)a5;
- (id)counterGroupForTransitionFromState:(unint64_t)a3 toState:(unint64_t)a4 homeUUID:(id)a5 date:(id)a6;
- (id)counterGroupKeyNamesForTransitionTypeByReasonLogEvents;
- (id)householdTransitionLogEventForHomeWithUUID:(id)a3 date:(id)a4;
- (id)householdTransitionTypeByReasonLogEventsForHomeWithUUID:(id)a3 date:(id)a4;
- (void)configure;
- (void)handleStateTransitionLogEvent:(id)a3;
- (void)handleVacationStateTransitionLogEvent:(id)a3;
- (void)incrementHouseholdTransitionCountersWithEvent:(id)a3;
- (void)incrementHouseholdTransitionTypeByReasonCountersWithEvent:(id)a3;
- (void)observeEvent:(id)a3;
- (void)removeHouseholdCounterGroupsForKey:(id)a3 afterDate:(id)a4;
- (void)removeHouseholdCounterGroupsForKey:(id)a3 beforeDate:(id)a4;
- (void)resetVacationStateTransitionCounterGroup;
- (void)runDailyTask;
- (void)submitVacationStateTransitionCounterGroups;
@end

@implementation HMDHomeActivityStateLogEventAnalyzer

- (void)resetVacationStateTransitionCounterGroup
{
  v2 = [(HMDHomeActivityStateLogEventAnalyzer *)self vacationStateTransitionCounterGroup];
  [v2 resetEventCounters];
}

- (id)counterGroupForKey:(id)a3 homeUUID:(id)a4 date:(id)a5
{
  v6 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:a3 homeUUID:a4 date:a5];
  v7 = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  v8 = [v7 legacyCountersManager];
  v9 = [v8 objectForKeyedSubscript:v6];

  return v9;
}

- (id)counterGroupKeyNamesForTransitionTypeByReasonLogEvents
{
  v19[6] = *MEMORY[0x277D85DE8];
  v2 = @"Unknown";
  v19[0] = @"Unknown";
  v3 = @"Home";
  v19[1] = @"Home";
  v4 = @"Away";
  v19[2] = @"Away";
  v5 = @"Vacation";
  v19[3] = @"Vacation";
  v6 = @"ComingHome";
  v19[4] = @"ComingHome";
  v7 = @"ComingHomeFromVacation";
  v19[5] = @"ComingHomeFromVacation";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:6];

  v9 = [v8 copy];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count") * objc_msgSend(v8, "count")}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__HMDHomeActivityStateLogEventAnalyzer_counterGroupKeyNamesForTransitionTypeByReasonLogEvents__block_invoke;
  v16[3] = &unk_27867E4C8;
  v17 = v9;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];
  v13 = [v11 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __94__HMDHomeActivityStateLogEventAnalyzer_counterGroupKeyNamesForTransitionTypeByReasonLogEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__HMDHomeActivityStateLogEventAnalyzer_counterGroupKeyNamesForTransitionTypeByReasonLogEvents__block_invoke_2;
  v6[3] = &unk_27867E4C8;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];
}

void __94__HMDHomeActivityStateLogEventAnalyzer_counterGroupKeyNamesForTransitionTypeByReasonLogEvents__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [HMDHomeActivityStateLogEventAnalyzer counterGroupKeyForTransitionTypeFromState:*(a1 + 32) toState:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)counterGroupForTransitionFromState:(unint64_t)a3 toState:(unint64_t)a4 homeUUID:(id)a5 date:(id)a6
{
  v10 = a6;
  v11 = a5;
  if (a3 - 1 > 6)
  {
    v12 = @"Unknown";
  }

  else
  {
    v12 = off_278671F60[a3 - 1];
  }

  v13 = v12;
  if (a4 - 1 > 6)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_278671F60[a4 - 1];
  }

  v15 = v14;
  v16 = [HMDHomeActivityStateLogEventAnalyzer counterGroupKeyForTransitionTypeFromState:v13 toState:v15];
  v17 = [(HMDHomeActivityStateLogEventAnalyzer *)self counterGroupForKey:v16 homeUUID:v11 date:v10];

  return v17;
}

- (void)submitVacationStateTransitionCounterGroups
{
  v11 = [(HMDHomeActivityStateLogEventAnalyzer *)self vacationStateTransitionCounterGroup];
  v3 = [v11 fetchEventCounterForEventName:@"HMDHomeActivityVacationStateChangeReasonDetectorInitiated"];

  v4 = [v11 fetchEventCounterForEventName:@"HMDHomeActivityVacationStateChangeReasonTimerFired"];
  v5 = [HMDHomeActivityStateVacationTransitionDailyCountLogEvent alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v8 = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)v5 initWithDetectorInitiatedCount:v6 timerFiredCount:v7];

  v9 = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  v10 = [v9 logEventSubmitter];
  [v10 submitLogEvent:v8];
}

- (void)runDailyTask
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  v4 = [v3 isCurrentDeviceConfirmedPrimaryResident];

  if (v4)
  {
    [(HMDHomeActivityStateLogEventAnalyzer *)self submitCounterGroups];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Not submitting daily task because this device is not the current primary resident Device", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  [(HMDHomeActivityStateLogEventAnalyzer *)self resetCounterGroups];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeHouseholdCounterGroupsForKey:(id)a3 afterDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  v9 = [v8 legacyCountersManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HMDHomeActivityStateLogEventAnalyzer_removeHouseholdCounterGroupsForKey_afterDate___block_invoke;
  v12[3] = &unk_27867E4A0;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [v9 removeCounterGroupsBasedOnPredicate:v12];
}

uint64_t __85__HMDHomeActivityStateLogEventAnalyzer_removeHouseholdCounterGroupsForKey_afterDate___block_invoke(uint64_t a1, void *a2)
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
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == 1)
    {
      v8 = [v6 groupName];
      v9 = [v8 hasPrefix:*(a1 + 40)];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeHouseholdCounterGroupsForKey:(id)a3 beforeDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  v9 = [v8 legacyCountersManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__HMDHomeActivityStateLogEventAnalyzer_removeHouseholdCounterGroupsForKey_beforeDate___block_invoke;
  v12[3] = &unk_27867E4A0;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [v9 removeCounterGroupsBasedOnPredicate:v12];
}

uint64_t __86__HMDHomeActivityStateLogEventAnalyzer_removeHouseholdCounterGroupsForKey_beforeDate___block_invoke(uint64_t a1, void *a2)
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
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == -1)
    {
      v9 = [v6 groupName];
      v8 = [v9 hasPrefix:*(a1 + 40)];
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

- (id)householdTransitionTypeByReasonLogEventsForHomeWithUUID:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeActivityStateLogEventAnalyzer *)self counterGroupKeyNamesForTransitionTypeByReasonLogEvents];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __101__HMDHomeActivityStateLogEventAnalyzer_householdTransitionTypeByReasonLogEventsForHomeWithUUID_date___block_invoke;
  v18 = &unk_27867E478;
  v19 = self;
  v20 = v6;
  v21 = v7;
  v10 = v9;
  v22 = v10;
  v11 = v7;
  v12 = v6;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];
  if ([v10 count])
  {
    v13 = [v10 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __101__HMDHomeActivityStateLogEventAnalyzer_householdTransitionTypeByReasonLogEventsForHomeWithUUID_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDHomeActivityStateLogEventAnalyzer fromStateFromTransitionTypeByReasonCounterGroupKey:v3];
  v5 = [HMDHomeActivityStateLogEventAnalyzer toStateFromTransitionTypeByReasonCounterGroupKey:v3];
  v17 = [*(a1 + 32) counterGroupForKey:v3 homeUUID:*(a1 + 40) date:*(a1 + 48)];

  if (v17)
  {
    v6 = @"Automated";
    v7 = @"AutomatedHoldEnd";
    v8 = @"ManualHoldEnd";
    v9 = @"ManualHoldStart";
    v10 = @"Other";
    v11 = [v17 fetchEventCounterForEventName:@"Automated"];
    v12 = [v17 fetchEventCounterForEventName:@"AutomatedHoldEnd"];
    v13 = [v17 fetchEventCounterForEventName:@"ManualHoldEnd"];
    v14 = [v17 fetchEventCounterForEventName:@"ManualHoldStart"];
    v15 = [v17 fetchEventCounterForEventName:@"Other"];
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v16 = [[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent alloc] initWithHomeUUID:*(a1 + 40) fromState:v4 toState:v5 automatedCount:v11 automatedHoldEndCount:v12 manualHoldEndCount:v13 manualHoldStartCount:v14 otherCount:v15];
  [*(a1 + 56) addObject:v16];
}

- (id)householdTransitionLogEventForHomeWithUUID:(id)a3 date:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeActivityStateLogEventAnalyzer *)self counterGroupForKey:@"HMDHouseholdHomeActivityStateTransitionLogEventCounterGroup" homeUUID:v6 date:v7];
  if (v8)
  {
    v9 = @"Home";
    v10 = @"Away";
    v11 = @"Vacation";
    v12 = @"ComingHome";
    v13 = @"ComingHomeFromVacation";
    v31 = [v8 fetchEventCounterForEventName:@"Home"];
    v30 = [v8 fetchEventCounterForEventName:@"Away"];
    v29 = [v8 fetchEventCounterForEventName:@"Vacation"];
    v28 = [v8 fetchEventCounterForEventName:@"ComingHome"];
    v27 = [v8 fetchEventCounterForEventName:@"ComingHomeFromVacation"];
    v14 = @"Automated";
    v15 = @"AutomatedHoldEnd";
    v16 = @"ManualHoldEnd";
    v17 = @"ManualHoldStart";
    v18 = @"Other";
    v19 = -[HMDHouseholdHomeActivityStateTransitionLogEvent initWithHomeUUID:homeCount:awayCount:vacationCount:comingHomeCount:comingHomeFromVacationCount:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:]([HMDHouseholdHomeActivityStateTransitionLogEvent alloc], "initWithHomeUUID:homeCount:awayCount:vacationCount:comingHomeCount:comingHomeFromVacationCount:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:", v6, v31, v30, v29, v28, v27, [v8 fetchEventCounterForEventName:@"Automated"], objc_msgSend(v8, "fetchEventCounterForEventName:", @"AutomatedHoldEnd"), objc_msgSend(v8, "fetchEventCounterForEventName:", @"ManualHoldEnd"), objc_msgSend(v8, "fetchEventCounterForEventName:", @"ManualHoldStart"), objc_msgSend(v8, "fetchEventCounterForEventName:", @"Other"));
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v6 UUIDString];
      *buf = 138543874;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly failed to fetch household counter group at for homeUUID %@ on date %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)handleVacationStateTransitionLogEvent:(id)a3
{
  v4 = a3;
  v7 = [(HMDHomeActivityStateLogEventAnalyzer *)self vacationStateTransitionCounterGroup];
  v5 = [v4 reason];

  v6 = HMDHomeActivityVacationStateChangeReasonAsString(v5);
  [v7 incrementEventCounterForEventName:v6];
}

- (void)incrementHouseholdTransitionCountersWithEvent:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 homeUUID];
    v10 = [v9 UUIDString];
    v11 = [v4 toState];
    if ((v11 - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_278671F60[v11 - 1];
    }

    v13 = v12;
    v14 = [v4 reason];
    if ((v14 - 1) > 3)
    {
      v15 = @"Other";
    }

    else
    {
      v15 = off_278671F98[v14 - 1];
    }

    v16 = v15;
    v29 = 138544130;
    v30 = v8;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = v16;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Incrementing HMDHouseholdHomeActivityStateTransitionLogEvent counters for home with UUID %@: toState %@ and reason %@", &v29, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v17 = [v4 homeUUID];
  v18 = [(HMDHomeActivityStateLogEventAnalyzer *)v6 dataSource];
  v19 = [v18 dateProvider];
  v20 = [v19 startOfCurrentDay];
  v21 = [(HMDHomeActivityStateLogEventAnalyzer *)v6 counterGroupForKey:@"HMDHouseholdHomeActivityStateTransitionLogEventCounterGroup" homeUUID:v17 date:v20];

  v22 = [v4 toState];
  if ((v22 - 1) > 6)
  {
    v23 = @"Unknown";
  }

  else
  {
    v23 = off_278671F60[v22 - 1];
  }

  v24 = v23;
  [v21 incrementEventCounterForEventName:v24];

  v25 = [v4 reason];
  if ((v25 - 1) > 3)
  {
    v26 = @"Other";
  }

  else
  {
    v26 = off_278671F98[v25 - 1];
  }

  v27 = v26;
  [v21 incrementEventCounterForEventName:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)incrementHouseholdTransitionTypeByReasonCountersWithEvent:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 homeUUID];
    v10 = [v9 UUIDString];
    v11 = [v4 fromState];
    if ((v11 - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_278671F60[v11 - 1];
    }

    v13 = v12;
    v14 = [v4 toState];
    if ((v14 - 1) > 6)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_278671F60[v14 - 1];
    }

    v16 = v15;
    v17 = [v4 reason];
    if ((v17 - 1) > 3)
    {
      v18 = @"Other";
    }

    else
    {
      v18 = off_278671F98[v17 - 1];
    }

    v19 = v18;
    v31 = 138544386;
    v32 = v8;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v16;
    v39 = 2112;
    v40 = v19;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Incrementing HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent counters for home with UUID %@: fromState %@ toState %@ and reason %@", &v31, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  v20 = [v4 fromState];
  v21 = [v4 toState];
  v22 = [v4 homeUUID];
  v23 = [(HMDHomeActivityStateLogEventAnalyzer *)v6 dataSource];
  v24 = [v23 dateProvider];
  v25 = [v24 startOfCurrentDay];
  v26 = [(HMDHomeActivityStateLogEventAnalyzer *)v6 counterGroupForTransitionFromState:v20 toState:v21 homeUUID:v22 date:v25];

  v27 = [v4 reason];
  if ((v27 - 1) > 3)
  {
    v28 = @"Other";
  }

  else
  {
    v28 = off_278671F98[v27 - 1];
  }

  v29 = v28;
  [v26 incrementEventCounterForEventName:v29];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleStateTransitionLogEvent:(id)a3
{
  v4 = a3;
  [(HMDHomeActivityStateLogEventAnalyzer *)self incrementHouseholdTransitionTypeByReasonCountersWithEvent:v4];
  [(HMDHomeActivityStateLogEventAnalyzer *)self incrementHouseholdTransitionCountersWithEvent:v4];
}

- (void)observeEvent:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    [(HMDHomeActivityStateLogEventAnalyzer *)self handleStateTransitionLogEvent:v5];
  }

  else
  {
    v6 = v9;
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

    if (v8)
    {
      [(HMDHomeActivityStateLogEventAnalyzer *)self handleVacationStateTransitionLogEvent:v8];
    }
  }
}

- (void)configure
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  v4 = [v3 dailyScheduler];
  [v4 registerDailyTaskRunner:self];

  v5 = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  v6 = [v5 logEventDispatcher];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v6 addObserver:self forEventClasses:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateLogEventAnalyzer)initWithDataSource:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HMDHomeActivityStateLogEventAnalyzer;
  v6 = [(HMDHomeActivityStateLogEventAnalyzer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = [v5 legacyCountersManager];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"HMDHomeActivityStateVacationTransitionDailyCountLogEvent"];
    v10 = [v8 counterGroupForName:v9];
    vacationStateTransitionCounterGroup = v7->_vacationStateTransitionCounterGroup;
    v7->_vacationStateTransitionCounterGroup = v10;
  }

  [(HMDHomeActivityStateLogEventAnalyzer *)v7 configure];

  return v7;
}

+ (unint64_t)toStateFromTransitionTypeByReasonCounterGroupKey:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"-"];
  v4 = [v3 objectAtIndexedSubscript:2];
  v5 = HMHomeActivityStateFromTruncatedString(v4);

  return v5;
}

+ (unint64_t)fromStateFromTransitionTypeByReasonCounterGroupKey:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"-"];
  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = HMHomeActivityStateFromTruncatedString(v4);

  return v5;
}

@end