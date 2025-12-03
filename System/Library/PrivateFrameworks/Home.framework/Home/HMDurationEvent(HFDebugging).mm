@interface HMDurationEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMDurationEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = self;
  v6.super_class = &off_28258CCB0;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  v3 = MEMORY[0x277CCABB0];
  [self duration];
  v4 = [v3 numberWithDouble:?];
  [v2 setObject:v4 forKeyedSubscript:@"duration"];

  return v2;
}

@end