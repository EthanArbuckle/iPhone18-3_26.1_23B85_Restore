@interface HMSignificantTimeEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSignificantTimeEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = a1;
  v6.super_class = &off_28258CAF0;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  v3 = [a1 significantEvent];
  [v2 setObject:v3 forKeyedSubscript:@"significantEvent"];

  v4 = [a1 offset];
  [v2 setObject:v4 forKeyedSubscript:@"offset"];

  return v2;
}

@end