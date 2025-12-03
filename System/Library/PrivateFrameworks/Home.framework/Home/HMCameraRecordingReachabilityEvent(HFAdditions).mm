@interface HMCameraRecordingReachabilityEvent(HFAdditions)
- (id)hf_dateInterval;
- (id)hf_endDate;
- (id)hf_stateDumpBuilderWithContext:()HFAdditions;
@end

@implementation HMCameraRecordingReachabilityEvent(HFAdditions)

- (id)hf_endDate
{
  dateOfOccurrence = [self dateOfOccurrence];
  [self duration];
  v3 = [dateOfOccurrence dateByAddingTimeInterval:?];

  return v3;
}

- (id)hf_dateInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  dateOfOccurrence = [self dateOfOccurrence];
  [self duration];
  v4 = [v2 initWithStartDate:dateOfOccurrence duration:?];

  return v4;
}

- (id)hf_stateDumpBuilderWithContext:()HFAdditions
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  hf_rfc3339Formatter = [MEMORY[0x277CCAA68] hf_rfc3339Formatter];
  dateOfOccurrence = [self dateOfOccurrence];
  v9 = [hf_rfc3339Formatter stringFromDate:dateOfOccurrence];
  [v5 setObject:v9 forKeyedSubscript:@"dateOfOccurrence"];

  detailLevel = [v4 detailLevel];
  if (detailLevel == 2)
  {
    v11 = MEMORY[0x277CCABB0];
    [self duration];
    [v11 numberWithDouble:?];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    [self duration];
    [v12 stringWithFormat:@"%.2f", v13];
  }
  v14 = ;
  [v5 setObject:v14 forKeyedSubscript:@"duration"];

  [v5 appendBool:objc_msgSend(self withName:{"isReachable"), @"reachable"}];
  dateOfOccurrence2 = [self dateOfOccurrence];
  hf_hksvDescription = [dateOfOccurrence2 hf_hksvDescription];
  [v5 setObject:hf_hksvDescription forKeyedSubscript:@"dateString"];

  return v5;
}

@end