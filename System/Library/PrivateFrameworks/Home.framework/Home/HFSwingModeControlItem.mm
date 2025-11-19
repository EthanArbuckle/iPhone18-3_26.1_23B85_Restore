@interface HFSwingModeControlItem
- (HFSwingModeControlItem)initWithValueSource:(id)a3;
- (HFSwingModeControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 valueTransformer:(id)a5 displayResults:(id)a6;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
@end

@implementation HFSwingModeControlItem

- (HFSwingModeControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 valueTransformer:(id)a5 displayResults:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithValueSource_);
  [v8 handleFailureInMethod:a2 object:self file:@"HFSwingModeControlItem.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HFSwingModeControlItem initWithValueSource:characteristicType:valueTransformer:displayResults:]", v9}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  if ([(HFPrimaryStateControlItem *)self canCopyWithCharacteristicOptions:a3])
  {
    v7 = [objc_alloc(objc_opt_class()) initWithValueSource:v6];
    [v7 copyLatestResultsFromItem:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HFSwingModeControlItem)initWithValueSource:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HFValueTransformer transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_65 reverseTransformBlock:&__block_literal_global_10_2];
  v13 = @"title";
  v6 = _HFLocalizedStringWithDefaultValue(@"HFControlShortTitleSwingMode", @"HFControlShortTitleSwingMode", 1);
  v14[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v8 = *MEMORY[0x277CCFAF8];
  v12.receiver = self;
  v12.super_class = HFSwingModeControlItem;
  v9 = [(HFPrimaryStateControlItem *)&v12 initWithValueSource:v4 characteristicType:v8 valueTransformer:v5 displayResults:v7];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

id __46__HFSwingModeControlItem_initWithValueSource___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if ([a2 integerValue] == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  }

  else
  {
    v4 = &unk_282523C10;
  }

  return v4;
}

uint64_t __46__HFSwingModeControlItem_initWithValueSource___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isEqualToNumber:&unk_282523C28];

  return [v2 numberWithInteger:v3];
}

@end