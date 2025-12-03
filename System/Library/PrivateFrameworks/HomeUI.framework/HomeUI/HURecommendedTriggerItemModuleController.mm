@interface HURecommendedTriggerItemModuleController
- (Class)cellClassForItem:(id)item;
- (HURecommendedTriggerItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)item;
- (void)didCommitTriggerBuilderForItem:(id)item withError:(id)error;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HURecommendedTriggerItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  moreButtonItem = [module moreButtonItem];

  v7 = objc_opt_class();

  return v7;
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v10 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    [v12 setIconDisplayStyle:1];
    HUDefaultSizeForIconSize();
    v14 = v13;
    v16 = v15;
    contentMetrics = [v12 contentMetrics];
    [contentMetrics setIconSize:{v14, v16}];

    contentMetrics2 = [v12 contentMetrics];
    [contentMetrics2 setContentInset:{12.0, 0.0, 12.0, 0.0}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    latestResults = [itemCopy latestResults];
    v20 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v20 BOOLValue];

    v22 = cellCopy;
    [v22 setDisabled:bOOLValue];
    [v22 setAccessoryType:bOOLValue ^ 1];
    if (bOOLValue)
    {
      v23 = 0.200000003;
    }

    else
    {
      v23 = 1.0;
    }

    [v22 setIconAlpha:v23];
    [v22 setTextAlpha:v23];
    [v22 setIconDisplayStyle:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setAccessoryType:1];
  }

  v24.receiver = self;
  v24.super_class = HURecommendedTriggerItemModuleController;
  [(HUItemModuleController *)&v24 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    recommendation = [v7 recommendation];
    hu_triggerBuilderIfAny = [recommendation hu_triggerBuilderIfAny];
    if (hu_triggerBuilderIfAny)
    {
      v10 = hu_triggerBuilderIfAny;
      v11 = [HUTriggerBuilderContext alloc];
      context = [v10 context];
      v13 = [(HUTriggerBuilderContext *)v11 initWithTriggerBuilderContext:context];

      [(HUTriggerBuilderContext *)v13 setSuggestionItem:v7];
      v14 = [v10 triggerBuilderWithContext:v13];

      delegate = [(HURecommendedTriggerItemModuleController *)self delegate];
      [delegate recommendedTriggerModuleController:self didSelectToOpenTriggerBuilder:v14];
    }
  }

  module = [(HUItemModuleController *)self module];
  moreButtonItem = [module moreButtonItem];

  if (moreButtonItem == v5)
  {
    delegate2 = [(HURecommendedTriggerItemModuleController *)self delegate];
    [delegate2 recommendedTriggerModuleControllerDidSelectShowMore:self];
  }

  return 0;
}

- (void)didCommitTriggerBuilderForItem:(id)item withError:(id)error
{
  itemCopy = item;
  errorCopy = error;
  objc_opt_class();
  v17 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v17;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  recommendation = [v9 recommendation];
  v11 = recommendation;
  if (recommendation)
  {
    analyticsData = [recommendation analyticsData];
    v13 = [analyticsData mutableCopy];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy == 0];
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13598]];

    [v13 setObject:&unk_2824926D8 forKeyedSubscript:*MEMORY[0x277D13508]];
    if (errorCopy)
    {
      [v13 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277D13510]];
    }

    analyticsPresentationContext = [(HURecommendedTriggerItemModuleController *)self analyticsPresentationContext];

    if (analyticsPresentationContext)
    {
      analyticsPresentationContext2 = [(HURecommendedTriggerItemModuleController *)self analyticsPresentationContext];
      [v13 setObject:analyticsPresentationContext2 forKeyedSubscript:*MEMORY[0x277D13548]];
    }

    [MEMORY[0x277D143D8] sendEvent:14 withData:v13];
  }
}

- (HURecommendedTriggerItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end