@interface HMDCameraMetricsStreamLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)accessoryIdentifier;
- (id)_durationBetweenMilestone1:(id)a3 andMilestone2:(id)a4 index:(id)a5;
- (id)_milestonesSortedByTimestamp;
- (void)_addDurationsBetweenMilestones:(id)a3 toEvent:(id)a4;
- (void)_addFirstToLastDurationFromMilestones:(id)a3 toEvent:(id)a4;
- (void)_addInitialConfigurationMetricsToEvent:(id)a3;
- (void)_addStreamStartToFirstFrameDurationFromMilestones:(id)a3 toEvent:(id)a4;
@end

@implementation HMDCameraMetricsStreamLogEvent

- (void)_addInitialConfigurationMetricsToEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraMetricsLogEvent *)self sessionID];
  v6 = [v5 deviceMilestones];
  v7 = [v6 objectForKeyedSubscript:@"InitialConfiguration"];

  [v4 addEntriesFromDictionary:v7];
}

- (void)_addDurationsBetweenMilestones:(id)a3 toEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HMDCameraMetricsStreamLogEvent__addDurationsBetweenMilestones_toEvent___block_invoke;
  v10[3] = &unk_27972B850;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [v9 enumerateObjectsWithOptions:2 usingBlock:v10];
}

void __73__HMDCameraMetricsStreamLogEvent__addDurationsBetweenMilestones_toEvent___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v6 = a1[4];
    v7 = a3 - 1;
    v8 = a2;
    v13 = [v6 objectAtIndexedSubscript:v7];
    v10 = a1[5];
    v9 = a1[6];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v12 = [v9 _durationBetweenMilestone1:v13 andMilestone2:v8 index:v11];

    [v10 addEntriesFromDictionary:v12];
  }

  else
  {
    *a4 = 1;
  }
}

- (void)_addStreamStartToFirstFrameDurationFromMilestones:(id)a3 toEvent:(id)a4
{
  v18 = a4;
  v5 = [(HMDCameraMetricsLogEvent *)self sessionID];
  v6 = [v5 deviceMilestones];
  v7 = [v6 objectForKeyedSubscript:@"ReceivedFirstFrame"];

  if (v7)
  {
    v8 = [(HMDCameraMetricsLogEvent *)self isLocal];
    v9 = @"SentStartRemoteStreamRequest";
    if (v8)
    {
      v9 = @"SentStartResponse";
    }

    v10 = v9;
    v11 = [(HMDCameraMetricsLogEvent *)self sessionID];
    v12 = [v11 deviceMilestones];
    v13 = [v12 objectForKeyedSubscript:v10];
    v14 = [v13 integerValue];

    v15 = [[HMDCameraMetricsMilestone alloc] initWithKey:v10 timestamp:v14];
    v16 = -[HMDCameraMetricsMilestone initWithKey:timestamp:]([HMDCameraMetricsMilestone alloc], "initWithKey:timestamp:", @"ReceivedFirstFrame", [v7 integerValue]);

    v17 = [(HMDCameraMetricsStreamLogEvent *)self _durationBetweenMilestone1:v15 andMilestone2:v16 index:0];
    [v18 addEntriesFromDictionary:v17];
  }
}

- (void)_addFirstToLastDurationFromMilestones:(id)a3 toEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [v7 firstObject];
  v8 = [v7 lastObject];

  v9 = [(HMDCameraMetricsStreamLogEvent *)self _durationBetweenMilestone1:v10 andMilestone2:v8 index:0];
  [v6 addEntriesFromDictionary:v9];
}

- (id)_durationBetweenMilestone1:(id)a3 andMilestone2:(id)a4 index:(id)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBEC10];
  if (v8 && a4)
  {
    v11 = a4;
    v12 = [(HMDCameraMetricsLogEvent *)self isLocal];
    v13 = @"Remote";
    if (v12)
    {
      v13 = @"Local";
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = v13;
    v16 = [v8 key];
    v17 = [v11 key];
    v18 = v17;
    if (v9)
    {
      [v14 stringWithFormat:@"%@_%@_%@_%@", v15, v9, v16, v17];
    }

    else
    {
      [v14 stringWithFormat:@"%@_%@_%@", v15, v16, v17, v25];
    }
    v19 = ;

    v20 = [v11 timestamp];
    v21 = [v8 timestamp];
    v26 = v19;
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v20 - v21];
    v27[0] = v22;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_milestonesSortedByTimestamp
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(HMDCameraMetricsLogEvent *)self sessionID];
  v5 = [v4 deviceMilestones];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HMDCameraMetricsStreamLogEvent__milestonesSortedByTimestamp__block_invoke;
  v8[3] = &unk_279735048;
  v6 = v3;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __62__HMDCameraMetricsStreamLogEvent__milestonesSortedByTimestamp__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
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
    v8 = -[HMDCameraMetricsMilestone initWithKey:timestamp:]([HMDCameraMetricsMilestone alloc], "initWithKey:timestamp:", v9, [v7 integerValue]);
    [*(a1 + 32) insertObject:v8 atIndex:{objc_msgSend(*(a1 + 32), "indexOfObject:inSortedRange:options:usingComparator:", v8, 0, objc_msgSend(*(a1 + 32), "count"), 1024, &__block_literal_global_114979)}];
  }
}

uint64_t __62__HMDCameraMetricsStreamLogEvent__milestonesSortedByTimestamp__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "timestamp")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 timestamp];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (NSString)accessoryIdentifier
{
  v2 = [(HMDCameraMetricsLogEvent *)self accessory];
  v3 = [v2 identifier];

  return v3;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HMDCameraMetricsStreamLogEvent *)self _milestonesSortedByTimestamp];
  [(HMDCameraMetricsStreamLogEvent *)self _addFirstToLastDurationFromMilestones:v4 toEvent:v3];
  [(HMDCameraMetricsStreamLogEvent *)self _addStreamStartToFirstFrameDurationFromMilestones:v4 toEvent:v3];
  [(HMDCameraMetricsStreamLogEvent *)self _addDurationsBetweenMilestones:v4 toEvent:v3];
  [(HMDCameraMetricsStreamLogEvent *)self _addInitialConfigurationMetricsToEvent:v3];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraMetricsLogEvent isLocal](self, "isLocal")}];
  [v3 setObject:v5 forKeyedSubscript:@"isLocal"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraMetricsStreamLogEvent isRelayed](self, "isRelayed")}];
  [v3 setObject:v6 forKeyedSubscript:@"isRelayed"];

  v7 = [v3 copy];

  return v7;
}

@end