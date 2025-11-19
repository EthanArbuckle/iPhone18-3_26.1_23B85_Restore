@interface HMCollectionSettingItem(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCollectionSettingItem(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 identifier];
  [v4 appendObject:v5 withName:@"UUID" options:2];

  v6 = [a1 value];
  [v4 setObject:v6 forKeyedSubscript:@"value"];

  return v4;
}

@end