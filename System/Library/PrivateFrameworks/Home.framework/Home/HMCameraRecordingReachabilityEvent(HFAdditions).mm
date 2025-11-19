@interface HMCameraRecordingReachabilityEvent(HFAdditions)
- (id)hf_dateInterval;
- (id)hf_endDate;
- (id)hf_stateDumpBuilderWithContext:()HFAdditions;
@end

@implementation HMCameraRecordingReachabilityEvent(HFAdditions)

- (id)hf_endDate
{
  v2 = [a1 dateOfOccurrence];
  [a1 duration];
  v3 = [v2 dateByAddingTimeInterval:?];

  return v3;
}

- (id)hf_dateInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  v3 = [a1 dateOfOccurrence];
  [a1 duration];
  v4 = [v2 initWithStartDate:v3 duration:?];

  return v4;
}

- (id)hf_stateDumpBuilderWithContext:()HFAdditions
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [MEMORY[0x277CCAA68] hf_rfc3339Formatter];
  v8 = [a1 dateOfOccurrence];
  v9 = [v7 stringFromDate:v8];
  [v5 setObject:v9 forKeyedSubscript:@"dateOfOccurrence"];

  v10 = [v4 detailLevel];
  if (v10 == 2)
  {
    v11 = MEMORY[0x277CCABB0];
    [a1 duration];
    [v11 numberWithDouble:?];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    [a1 duration];
    [v12 stringWithFormat:@"%.2f", v13];
  }
  v14 = ;
  [v5 setObject:v14 forKeyedSubscript:@"duration"];

  [v5 appendBool:objc_msgSend(a1 withName:{"isReachable"), @"reachable"}];
  v15 = [a1 dateOfOccurrence];
  v16 = [v15 hf_hksvDescription];
  [v5 setObject:v16 forKeyedSubscript:@"dateString"];

  return v5;
}

@end