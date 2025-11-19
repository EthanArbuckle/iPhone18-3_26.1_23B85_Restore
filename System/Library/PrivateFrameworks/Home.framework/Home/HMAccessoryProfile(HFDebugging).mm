@interface HMAccessoryProfile(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessoryProfile(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  if ([v4 detailLevel] == 2)
  {
    v7 = [a1 accessory];
    v8 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v7 withName:@"accessory" context:v8];

    v9 = [a1 services];
    v10 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v9 withName:@"services" context:v10 options:1];
  }

  return v5;
}

@end