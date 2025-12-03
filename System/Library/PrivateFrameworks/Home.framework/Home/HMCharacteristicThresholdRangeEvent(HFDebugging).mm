@interface HMCharacteristicThresholdRangeEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicThresholdRangeEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = self;
  v6.super_class = &off_28258D150;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  characteristic = [self characteristic];
  [v2 setObject:characteristic forKeyedSubscript:@"characteristic"];

  thresholdRange = [self thresholdRange];
  [v2 setObject:thresholdRange forKeyedSubscript:@"range"];

  return v2;
}

@end