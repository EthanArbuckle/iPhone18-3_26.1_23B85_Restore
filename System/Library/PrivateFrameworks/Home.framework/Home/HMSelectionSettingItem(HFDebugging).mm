@interface HMSelectionSettingItem(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSelectionSettingItem(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:1];
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  identifier = [self identifier];
  [v5 appendObject:identifier withName:@"UUID" options:2];

  title = [self title];
  [v5 setObject:title forKeyedSubscript:@"title"];

  return v5;
}

@end