@interface HMRoom(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMRoom(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:1];
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  if ([v4 detailLevel] == 2)
  {
    hf_allZones = [self hf_allZones];
    v9 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:hf_allZones withName:@"zones" context:v9 options:1];
  }

  return v5;
}

@end