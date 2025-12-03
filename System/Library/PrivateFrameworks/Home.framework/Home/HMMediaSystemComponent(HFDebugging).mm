@interface HMMediaSystemComponent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMMediaSystemComponent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  mediaProfile = [self mediaProfile];
  accessory = [mediaProfile accessory];
  v9 = [v4 copyWithDetailLevel:0];

  [v5 appendObject:accessory withName:@"acc" context:v9];
  role = [self role];
  [v5 setObject:role forKeyedSubscript:@"role"];

  return v5;
}

@end