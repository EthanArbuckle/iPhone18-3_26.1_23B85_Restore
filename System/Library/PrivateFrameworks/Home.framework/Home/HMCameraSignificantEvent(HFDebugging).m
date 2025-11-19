@interface HMCameraSignificantEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCameraSignificantEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 uniqueIdentifier];
  [v4 appendObject:v5 withName:@"UUID" options:2];

  v6 = [MEMORY[0x277CCAA68] hf_rfc3339Formatter];
  v7 = [a1 dateOfOccurrence];
  v8 = [v6 stringFromDate:v7];
  [v4 setObject:v8 forKeyedSubscript:@"dateOfOccurrence"];

  [a1 reason];
  v9 = HMStringFromCameraSignificantEventReason();
  [v4 appendObject:v9 withName:@"reason"];

  v10 = [a1 hf_faceClassificationName];
  [v4 appendObject:v10 withName:@"faceName" options:1];

  v11 = [a1 dateOfOccurrence];
  v12 = [v11 hf_hksvDescription];
  [v4 setObject:v12 forKeyedSubscript:@"dateString"];

  return v4;
}

@end