@interface HMSelectionSetting(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSelectionSetting(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v9.receiver = self;
  v9.super_class = &off_282592410;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v9, sel_hf_stateDumpBuilderWithContext_, v4);
  detailLevel = [v4 detailLevel];

  if (detailLevel == 2)
  {
    items = [self items];
    [v5 setObject:items forKeyedSubscript:@"items"];
  }

  return v5;
}

@end