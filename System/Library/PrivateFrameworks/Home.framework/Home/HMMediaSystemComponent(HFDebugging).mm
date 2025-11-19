@interface HMMediaSystemComponent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMMediaSystemComponent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 mediaProfile];
  v8 = [v7 accessory];
  v9 = [v4 copyWithDetailLevel:0];

  [v5 appendObject:v8 withName:@"acc" context:v9];
  v10 = [a1 role];
  [v5 setObject:v10 forKeyedSubscript:@"role"];

  return v5;
}

@end