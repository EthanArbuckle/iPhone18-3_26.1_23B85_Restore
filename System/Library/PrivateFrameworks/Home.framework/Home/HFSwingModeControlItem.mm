@interface HFSwingModeControlItem
- (HFSwingModeControlItem)initWithValueSource:(id)source;
- (HFSwingModeControlItem)initWithValueSource:(id)source characteristicType:(id)type valueTransformer:(id)transformer displayResults:(id)results;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
@end

@implementation HFSwingModeControlItem

- (HFSwingModeControlItem)initWithValueSource:(id)source characteristicType:(id)type valueTransformer:(id)transformer displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithValueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSwingModeControlItem.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HFSwingModeControlItem initWithValueSource:characteristicType:valueTransformer:displayResults:]", v9}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFPrimaryStateControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    v7 = [objc_alloc(objc_opt_class()) initWithValueSource:sourceCopy];
    [v7 copyLatestResultsFromItem:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HFSwingModeControlItem)initWithValueSource:(id)source
{
  v14[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = [HFValueTransformer transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_65 reverseTransformBlock:&__block_literal_global_10_2];
  v13 = @"title";
  v6 = _HFLocalizedStringWithDefaultValue(@"HFControlShortTitleSwingMode", @"HFControlShortTitleSwingMode", 1);
  v14[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v8 = *MEMORY[0x277CCFAF8];
  v12.receiver = self;
  v12.super_class = HFSwingModeControlItem;
  v9 = [(HFPrimaryStateControlItem *)&v12 initWithValueSource:sourceCopy characteristicType:v8 valueTransformer:v5 displayResults:v7];

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