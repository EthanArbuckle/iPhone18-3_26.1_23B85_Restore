@interface HMCharacteristicEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = a1;
  v6.super_class = &off_28258CF58;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  v3 = [a1 characteristic];
  [v2 setObject:v3 forKeyedSubscript:@"characteristic"];

  v4 = [a1 triggerValue];
  [v2 setObject:v4 forKeyedSubscript:@"value"];

  return v2;
}

@end