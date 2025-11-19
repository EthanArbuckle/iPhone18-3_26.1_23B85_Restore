@interface HMLocationEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMLocationEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v5.receiver = a1;
  v5.super_class = &off_282586A60;
  v2 = objc_msgSendSuper2(&v5, sel_hf_stateDumpBuilderWithContext_);
  v3 = [a1 region];
  [v2 setObject:v3 forKeyedSubscript:@"region"];

  return v2;
}

@end