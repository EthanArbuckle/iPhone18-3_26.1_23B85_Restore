@interface HMAccessoryProfile(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessoryProfile(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  if ([v4 detailLevel] == 2)
  {
    accessory = [self accessory];
    v8 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:accessory withName:@"accessory" context:v8];

    services = [self services];
    v10 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:services withName:@"services" context:v10 options:1];
  }

  return v5;
}

@end