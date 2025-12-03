@interface HMSettingGroup(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSettingGroup(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  localizedTitle = [self localizedTitle];
  [v5 setObject:localizedTitle forKeyedSubscript:@"title"];

  keyPath = [self keyPath];
  [v5 appendObject:keyPath withName:@"keyPath" options:2];

  detailLevel = [v4 detailLevel];
  if (detailLevel == 2)
  {
    settings = [self settings];
    [v5 setObject:settings forKeyedSubscript:@"settings"];

    groups = [self groups];
    [v5 setObject:groups forKeyedSubscript:@"groups"];
  }

  return v5;
}

@end