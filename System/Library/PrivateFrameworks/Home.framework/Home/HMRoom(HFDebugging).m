@interface HMRoom(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMRoom(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:1];
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 name];
  [v5 setObject:v7 forKeyedSubscript:@"name"];

  if ([v4 detailLevel] == 2)
  {
    v8 = [a1 hf_allZones];
    v9 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v8 withName:@"zones" context:v9 options:1];
  }

  return v5;
}

@end