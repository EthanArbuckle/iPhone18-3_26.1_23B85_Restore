@interface HMAccessorySelectionSetting(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessorySelectionSetting(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v13.receiver = a1;
  v13.super_class = &off_2825922E0;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v13, sel_hf_stateDumpBuilderWithContext_, v4);
  v6 = [v4 detailLevel];

  if (v6 == 2)
  {
    v7 = [a1 keyPath];
    v8 = [v7 isEqualToString:@"root.siri.language"];

    if (v8)
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = [a1 items];
      v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      [v5 appendObject:v11 withName:@"language count (too many items to list)"];
    }

    else
    {
      v10 = [a1 items];
      [v5 setObject:v10 forKeyedSubscript:@"items"];
    }
  }

  return v5;
}

@end