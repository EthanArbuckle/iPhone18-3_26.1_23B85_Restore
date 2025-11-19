@interface HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory
+ (id)reasonCountDictionaryTemplate;
- (HMDHomeActivityStateLogEventAnalyzer)analyzer;
- (HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory)initWithAnalyzer:(id)a3;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
- (id)serializedLogEvent:(id)a3;
- (void)deleteCountersAfterDate:(id)a3;
- (void)deleteCountersBeforeDate:(id)a3;
@end

@implementation HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory

- (HMDHomeActivityStateLogEventAnalyzer)analyzer
{
  WeakRetained = objc_loadWeakRetained(&self->_analyzer);

  return WeakRetained;
}

- (id)serializedLogEvent:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 homeUUID];
  v7 = [v6 UUIDString];

  [v5 setObject:v7 forKeyedSubscript:@"homeUUID"];
  v8 = [v4 coreAnalyticsEventDictionary];

  [v5 addEntriesFromDictionary:v8];
  v9 = [v5 copy];

  return v9;
}

- (id)serializeLogEvents:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (!v13)
          {
            v16 = objc_autoreleasePoolPush();
            v17 = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543618;
              v29 = v19;
              v30 = 2112;
              v31 = v11;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Log event is not HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            v15 = 0;
            goto LABEL_17;
          }

          v14 = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory *)self serializedLogEvent:v13, v22];
          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v26 = @"HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent";
    v6 = [v5 copy];
    v27 = v6;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
LABEL_17:
  }

  else
  {
    v15 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)logEventsFromDictionary:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent"];
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
    v30 = self;
    v31 = v4;
    v8 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16)
          {
            v17 = [[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent alloc] initWithDictionary:v16];
            if (!v17)
            {
              v24 = objc_autoreleasePoolPush();
              v25 = v30;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543618;
                v38 = v27;
                v39 = 2112;
                v40 = v16;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent from dictionary: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v24);
              v19 = 0;
              goto LABEL_25;
            }

            v18 = v17;
            [v8 addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v19 = [v8 copy];
LABEL_25:
    v4 = v31;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v23;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventKey is not an array in dictionary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionary];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __111__HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory_coalescedLogEventsFromLogEvents_homeUUID___block_invoke;
  v22[3] = &unk_278682DF0;
  v9 = v5;
  v23 = v9;
  v24 = v8;
  v10 = v8;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __111__HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory_coalescedLogEventsFromLogEvents_homeUUID___block_invoke_2;
  v19 = &unk_278682E18;
  v20 = v9;
  v21 = v11;
  v12 = v11;
  v13 = v9;
  [v10 enumerateKeysAndObjectsUsingBlock:&v16];
  v14 = [v12 copy];

  return v14;
}

void __111__HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory_coalescedLogEventsFromLogEvents_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v40 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v40;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 homeUUID];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (v7)
    {
      v8 = [v5 fromState];
      if ((v8 - 1) > 6)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_278671F60[v8 - 1];
      }

      v10 = v9;
      v11 = [v5 toState];
      if ((v11 - 1) > 6)
      {
        v12 = @"Unknown";
      }

      else
      {
        v12 = off_278671F60[v11 - 1];
      }

      v38 = v12;
      v13 = [HMDHomeActivityStateLogEventAnalyzer counterGroupKeyForTransitionTypeFromState:v10 toState:?];
      v14 = [*(a1 + 40) objectForKeyedSubscript:v13];

      v39 = v10;
      v37 = v13;
      if (v14)
      {
        v15 = [*(a1 + 40) objectForKeyedSubscript:v13];
      }

      else
      {
        v16 = +[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory reasonCountDictionaryTemplate];
        v15 = [v16 mutableCopy];

        [*(a1 + 40) setObject:v15 forKeyedSubscript:v13];
      }

      v17 = [v15 objectForKeyedSubscript:@"numTransitions_reason1_automated"];
      v36 = [v17 integerValue];
      v34 = [v5 automatedCount];

      v18 = [v15 objectForKeyedSubscript:@"numTransitions_reason2_automatedHoldEnd"];
      v35 = [v18 integerValue];
      v19 = [v5 automatedHoldEndCount];

      v20 = [v15 objectForKeyedSubscript:@"numTransitions_reason3_manualHoldEnd"];
      v33 = [v20 integerValue];
      v21 = [v5 manualHoldEndCount];

      v22 = [v15 objectForKeyedSubscript:@"numTransitions_reason4_manualHoldStart"];
      v23 = [v22 integerValue];
      v24 = [v5 manualHoldStartCount];

      v25 = [v15 objectForKeyedSubscript:@"numTransitions_reason5_other"];
      v26 = [v25 integerValue];
      v27 = [v5 otherCount];

      v28 = [MEMORY[0x277CCABB0] numberWithInteger:v34 + v36];
      [v15 setObject:v28 forKeyedSubscript:@"numTransitions_reason1_automated"];

      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v19 + v35];
      [v15 setObject:v29 forKeyedSubscript:@"numTransitions_reason2_automatedHoldEnd"];

      v30 = [MEMORY[0x277CCABB0] numberWithInteger:v21 + v33];
      [v15 setObject:v30 forKeyedSubscript:@"numTransitions_reason3_manualHoldEnd"];

      v31 = [MEMORY[0x277CCABB0] numberWithInteger:v24 + v23];
      [v15 setObject:v31 forKeyedSubscript:@"numTransitions_reason4_manualHoldStart"];

      v32 = [MEMORY[0x277CCABB0] numberWithInteger:v27 + v26];
      [v15 setObject:v32 forKeyedSubscript:@"numTransitions_reason5_other"];
    }
  }
}

void __111__HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory_coalescedLogEventsFromLogEvents_homeUUID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v13 = [HMDHomeActivityStateLogEventAnalyzer fromStateFromTransitionTypeByReasonCounterGroupKey:v6];
  v12 = [HMDHomeActivityStateLogEventAnalyzer toStateFromTransitionTypeByReasonCounterGroupKey:v6];

  v14 = [v5 objectForKeyedSubscript:@"numTransitions_reason1_automated"];
  v11 = [v5 objectForKeyedSubscript:@"numTransitions_reason2_automatedHoldEnd"];
  v7 = [v5 objectForKeyedSubscript:@"numTransitions_reason3_manualHoldEnd"];
  v8 = [v5 objectForKeyedSubscript:@"numTransitions_reason4_manualHoldStart"];
  v9 = [v5 objectForKeyedSubscript:@"numTransitions_reason5_other"];

  v10 = -[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent initWithHomeUUID:fromState:toState:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:]([HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent alloc], "initWithHomeUUID:fromState:toState:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:", *(a1 + 32), v13, v12, [v14 integerValue], objc_msgSend(v11, "integerValue"), objc_msgSend(v7, "integerValue"), objc_msgSend(v8, "integerValue"), objc_msgSend(v9, "integerValue"));
  [*(a1 + 40) addObject:v10];
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory *)self analyzer];
  v9 = [v8 householdTransitionTypeByReasonLogEventsForHomeWithUUID:v7 date:v6];

  return v9;
}

- (void)deleteCountersAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory *)self analyzer];
  [v5 removeHouseholdCounterGroupsForKey:@"HMDHouseholdHoldActivityStateTransitionTypeByReasonLogEventCounterGroup" afterDate:v4];
}

- (void)deleteCountersBeforeDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory *)self analyzer];
  [v5 removeHouseholdCounterGroupsForKey:@"HMDHouseholdHoldActivityStateTransitionTypeByReasonLogEventCounterGroup" beforeDate:v4];
}

- (HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory)initWithAnalyzer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory;
  v5 = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_analyzer, v4);
  }

  return v6;
}

+ (id)reasonCountDictionaryTemplate
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"numTransitions_reason1_automated";
  v5[1] = @"numTransitions_reason2_automatedHoldEnd";
  v6[0] = &unk_283E747B0;
  v6[1] = &unk_283E747B0;
  v5[2] = @"numTransitions_reason3_manualHoldEnd";
  v5[3] = @"numTransitions_reason4_manualHoldStart";
  v6[2] = &unk_283E747B0;
  v6[3] = &unk_283E747B0;
  v5[4] = @"numTransitions_reason5_other";
  v6[4] = &unk_283E747B0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end