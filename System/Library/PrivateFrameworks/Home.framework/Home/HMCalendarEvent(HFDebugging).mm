@interface HMCalendarEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCalendarEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v5.receiver = self;
  v5.super_class = &off_28258C890;
  v2 = objc_msgSendSuper2(&v5, sel_hf_stateDumpBuilderWithContext_);
  fireDateComponents = [self fireDateComponents];
  [v2 setObject:fireDateComponents forKeyedSubscript:@"dateComponents"];

  return v2;
}

@end