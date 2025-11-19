@interface HMCalendarEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCalendarEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v5.receiver = a1;
  v5.super_class = &off_28258C890;
  v2 = objc_msgSendSuper2(&v5, sel_hf_stateDumpBuilderWithContext_);
  v3 = [a1 fireDateComponents];
  [v2 setObject:v3 forKeyedSubscript:@"dateComponents"];

  return v2;
}

@end