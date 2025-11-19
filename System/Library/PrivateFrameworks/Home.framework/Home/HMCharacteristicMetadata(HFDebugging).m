@interface HMCharacteristicMetadata(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicMetadata(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 minimumValue];
  [v4 appendObject:v5 withName:@"min" options:1];

  v6 = [a1 maximumValue];
  [v4 appendObject:v6 withName:@"max" options:1];

  v7 = [a1 stepValue];
  [v4 appendObject:v7 withName:@"step" options:1];

  v8 = [a1 validValues];
  [v4 appendObject:v8 withName:@"validValues" options:1];

  v9 = [a1 format];
  [v4 appendObject:v9 withName:@"format" options:1];

  v10 = [a1 units];
  [v4 appendObject:v10 withName:@"units" options:1];

  return v4;
}

@end