@interface HMDHouseholdHomeActivityStateTransitionLogEventFactory
- (HMDHomeActivityStateLogEventAnalyzer)analyzer;
- (HMDHouseholdHomeActivityStateTransitionLogEventFactory)initWithAnalyzer:(id)analyzer;
- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d;
- (id)logEventsFromDictionary:(id)dictionary;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)serializeLogEvents:(id)events;
- (id)serializedLogEvent:(id)event;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
@end

@implementation HMDHouseholdHomeActivityStateTransitionLogEventFactory

- (HMDHomeActivityStateLogEventAnalyzer)analyzer
{
  WeakRetained = objc_loadWeakRetained(&self->_analyzer);

  return WeakRetained;
}

- (id)serializedLogEvent:(id)event
{
  v3 = MEMORY[0x277CBEB38];
  eventCopy = event;
  dictionary = [v3 dictionary];
  homeUUID = [eventCopy homeUUID];
  uUIDString = [homeUUID UUIDString];

  [dictionary setObject:uUIDString forKeyedSubscript:@"homeUUID"];
  coreAnalyticsEventDictionary = [eventCopy coreAnalyticsEventDictionary];

  [dictionary addEntriesFromDictionary:coreAnalyticsEventDictionary];
  v9 = [dictionary copy];

  return v9;
}

- (id)serializeLogEvents:(id)events
{
  v33 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([eventsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = eventsCopy;
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
            selfCopy = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543618;
              v29 = v19;
              v30 = 2112;
              v31 = v11;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Log event is not HMDHouseholdHomeActivityStateTransitionLogEvent: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            v15 = 0;
            goto LABEL_17;
          }

          v14 = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)self serializedLogEvent:v13, v22];
          [array addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v26 = @"HMDHouseholdHomeActivityStateTransitionLogEvent";
    v6 = [array copy];
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

- (id)logEventsFromDictionary:(id)dictionary
{
  v41 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"HMDHouseholdHomeActivityStateTransitionLogEvent"];
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
    selfCopy = self;
    v31 = dictionaryCopy;
    array = [MEMORY[0x277CBEB18] array];
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
            v17 = [[HMDHouseholdHomeActivityStateTransitionLogEvent alloc] initWithDictionary:v16];
            if (!v17)
            {
              v24 = objc_autoreleasePoolPush();
              v25 = selfCopy;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543618;
                v38 = v27;
                v39 = 2112;
                v40 = v16;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HMDHouseholdHomeActivityStateTransitionLogEvent from dictionary: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v24);
              v19 = 0;
              goto LABEL_25;
            }

            v18 = v17;
            [array addObject:v17];
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

    v19 = [array copy];
LABEL_25:
    dictionaryCopy = v31;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v23;
      v39 = 2112;
      v40 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@HMDHouseholdHomeActivityStateTransitionLogEventKey is not an array in dictionary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = eventsCopy;
  v6 = [eventsCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
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
          homeUUID = [v16 homeUUID];
          v18 = [homeUUID isEqual:dCopy];

          if (v18)
          {
            v11 += [v16 homeCount];
            v10 += [v16 awayCount];
            v9 += [v16 vacationCount];
            v25 += [v16 comingHomeCount];
            v27 += [v16 comingHomeFromVacationCount];
            v29 += [v16 automatedCount];
            v28 += [v16 automatedHoldEndCount];
            v26 += [v16 manualHoldEndCount];
            v24 += [v16 manualHoldStartCount];
            v8 += [v16 otherCount];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v19 = [[HMDHouseholdHomeActivityStateTransitionLogEvent alloc] initWithHomeUUID:dCopy homeCount:v11 awayCount:v10 vacationCount:v9 comingHomeCount:v25 comingHomeFromVacationCount:v27 automatedCount:v29 automatedHoldEndCount:v28 manualHoldEndCount:v26 manualHoldStartCount:v24 otherCount:v8];
  v35 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v13[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  analyzer = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)self analyzer];
  v9 = [analyzer householdTransitionLogEventForHomeWithUUID:dCopy date:dateCopy];

  if (v9)
  {
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  analyzer = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)self analyzer];
  [analyzer removeHouseholdCounterGroupsForKey:@"HMDHouseholdHomeActivityStateTransitionLogEventCounterGroup" afterDate:dateCopy];
}

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  analyzer = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)self analyzer];
  [analyzer removeHouseholdCounterGroupsForKey:@"HMDHouseholdHomeActivityStateTransitionLogEventCounterGroup" beforeDate:dateCopy];
}

- (HMDHouseholdHomeActivityStateTransitionLogEventFactory)initWithAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  v8.receiver = self;
  v8.super_class = HMDHouseholdHomeActivityStateTransitionLogEventFactory;
  v5 = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_analyzer, analyzerCopy);
  }

  return v6;
}

@end