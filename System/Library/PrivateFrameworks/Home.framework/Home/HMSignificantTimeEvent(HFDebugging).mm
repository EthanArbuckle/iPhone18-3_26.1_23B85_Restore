@interface HMSignificantTimeEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSignificantTimeEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = self;
  v6.super_class = &off_28258CAF0;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  significantEvent = [self significantEvent];
  [v2 setObject:significantEvent forKeyedSubscript:@"significantEvent"];

  offset = [self offset];
  [v2 setObject:offset forKeyedSubscript:@"offset"];

  return v2;
}

@end