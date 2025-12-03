@interface HMCameraSignificantEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCameraSignificantEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  uniqueIdentifier = [self uniqueIdentifier];
  [v4 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  hf_rfc3339Formatter = [MEMORY[0x277CCAA68] hf_rfc3339Formatter];
  dateOfOccurrence = [self dateOfOccurrence];
  v8 = [hf_rfc3339Formatter stringFromDate:dateOfOccurrence];
  [v4 setObject:v8 forKeyedSubscript:@"dateOfOccurrence"];

  [self reason];
  v9 = HMStringFromCameraSignificantEventReason();
  [v4 appendObject:v9 withName:@"reason"];

  hf_faceClassificationName = [self hf_faceClassificationName];
  [v4 appendObject:hf_faceClassificationName withName:@"faceName" options:1];

  dateOfOccurrence2 = [self dateOfOccurrence];
  hf_hksvDescription = [dateOfOccurrence2 hf_hksvDescription];
  [v4 setObject:hf_hksvDescription forKeyedSubscript:@"dateString"];

  return v4;
}

@end