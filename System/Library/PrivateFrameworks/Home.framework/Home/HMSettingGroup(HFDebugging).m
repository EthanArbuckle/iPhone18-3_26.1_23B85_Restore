@interface HMSettingGroup(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSettingGroup(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 localizedTitle];
  [v5 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [a1 keyPath];
  [v5 appendObject:v7 withName:@"keyPath" options:2];

  v8 = [v4 detailLevel];
  if (v8 == 2)
  {
    v9 = [a1 settings];
    [v5 setObject:v9 forKeyedSubscript:@"settings"];

    v10 = [a1 groups];
    [v5 setObject:v10 forKeyedSubscript:@"groups"];
  }

  return v5;
}

@end