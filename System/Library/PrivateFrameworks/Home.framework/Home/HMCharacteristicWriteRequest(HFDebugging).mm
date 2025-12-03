@interface HMCharacteristicWriteRequest(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicWriteRequest(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v5.receiver = self;
  v5.super_class = &off_28258D6D8;
  v2 = objc_msgSendSuper2(&v5, sel_hf_stateDumpBuilderWithContext_);
  value = [self value];
  [v2 setObject:value forKeyedSubscript:@"value"];

  return v2;
}

@end