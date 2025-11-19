@interface HMSelectionSettingItem(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSelectionSettingItem(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:1];
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 identifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 title];
  [v5 setObject:v7 forKeyedSubscript:@"title"];

  return v5;
}

@end