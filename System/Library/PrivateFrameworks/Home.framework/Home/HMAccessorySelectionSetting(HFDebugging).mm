@interface HMAccessorySelectionSetting(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessorySelectionSetting(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v13.receiver = self;
  v13.super_class = &off_2825922E0;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v13, sel_hf_stateDumpBuilderWithContext_, v4);
  detailLevel = [v4 detailLevel];

  if (detailLevel == 2)
  {
    keyPath = [self keyPath];
    v8 = [keyPath isEqualToString:@"root.siri.language"];

    if (v8)
    {
      v9 = MEMORY[0x277CCABB0];
      items = [self items];
      v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(items, "count")}];
      [v5 appendObject:v11 withName:@"language count (too many items to list)"];
    }

    else
    {
      items = [self items];
      [v5 setObject:items forKeyedSubscript:@"items"];
    }
  }

  return v5;
}

@end