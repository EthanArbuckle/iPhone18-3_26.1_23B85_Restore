@interface HMLocationEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMLocationEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v5.receiver = self;
  v5.super_class = &off_282586A60;
  v2 = objc_msgSendSuper2(&v5, sel_hf_stateDumpBuilderWithContext_);
  region = [self region];
  [v2 setObject:region forKeyedSubscript:@"region"];

  return v2;
}

@end