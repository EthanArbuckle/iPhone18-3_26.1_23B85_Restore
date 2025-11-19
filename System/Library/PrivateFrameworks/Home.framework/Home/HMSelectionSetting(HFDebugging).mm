@interface HMSelectionSetting(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSelectionSetting(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v9.receiver = a1;
  v9.super_class = &off_282592410;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v9, sel_hf_stateDumpBuilderWithContext_, v4);
  v6 = [v4 detailLevel];

  if (v6 == 2)
  {
    v7 = [a1 items];
    [v5 setObject:v7 forKeyedSubscript:@"items"];
  }

  return v5;
}

@end