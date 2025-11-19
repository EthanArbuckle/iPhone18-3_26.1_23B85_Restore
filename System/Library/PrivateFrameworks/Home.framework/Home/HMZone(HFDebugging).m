@interface HMZone(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMZone(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 name];
  [v5 setObject:v7 forKeyedSubscript:@"name"];

  if ([v4 detailLevel] == 2)
  {
    v8 = [a1 rooms];
    v9 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v8 withName:@"rooms" context:v9 options:0];
  }

  return v5;
}

@end