@interface HMCharacteristicEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = self;
  v6.super_class = &off_28258CF58;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  characteristic = [self characteristic];
  [v2 setObject:characteristic forKeyedSubscript:@"characteristic"];

  triggerValue = [self triggerValue];
  [v2 setObject:triggerValue forKeyedSubscript:@"value"];

  return v2;
}

@end