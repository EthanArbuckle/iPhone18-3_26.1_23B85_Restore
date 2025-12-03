@interface HMAccessoryCollectionSettingItem(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessoryCollectionSettingItem(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  identifier = [self identifier];
  [v4 appendObject:identifier withName:@"UUID" options:2];

  value = [self value];
  [v4 setObject:value forKeyedSubscript:@"value"];

  return v4;
}

@end