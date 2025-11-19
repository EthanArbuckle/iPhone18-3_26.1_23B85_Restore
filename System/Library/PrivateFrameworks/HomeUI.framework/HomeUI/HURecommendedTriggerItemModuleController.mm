@interface HURecommendedTriggerItemModuleController
- (Class)cellClassForItem:(id)a3;
- (HURecommendedTriggerItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)a3;
- (void)didCommitTriggerBuilderForItem:(id)a3 withError:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HURecommendedTriggerItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 moreButtonItem];

  v7 = objc_opt_class();

  return v7;
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v10 = v8;
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
    v17 = [v12 contentMetrics];
    [v17 setIconSize:{v14, v16}];

    v18 = [v12 contentMetrics];
    [v18 setContentInset:{12.0, 0.0, 12.0, 0.0}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v9 latestResults];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v21 = [v20 BOOLValue];

    v22 = v8;
    [v22 setDisabled:v21];
    [v22 setAccessoryType:v21 ^ 1];
    if (v21)
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
    [v8 setAccessoryType:1];
  }

  v24.receiver = self;
  v24.super_class = HURecommendedTriggerItemModuleController;
  [(HUItemModuleController *)&v24 updateCell:v8 forItem:v9 animated:v5];
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [v7 recommendation];
    v9 = [v8 hu_triggerBuilderIfAny];
    if (v9)
    {
      v10 = v9;
      v11 = [HUTriggerBuilderContext alloc];
      v12 = [v10 context];
      v13 = [(HUTriggerBuilderContext *)v11 initWithTriggerBuilderContext:v12];

      [(HUTriggerBuilderContext *)v13 setSuggestionItem:v7];
      v14 = [v10 triggerBuilderWithContext:v13];

      v15 = [(HURecommendedTriggerItemModuleController *)self delegate];
      [v15 recommendedTriggerModuleController:self didSelectToOpenTriggerBuilder:v14];
    }
  }

  v16 = [(HUItemModuleController *)self module];
  v17 = [v16 moreButtonItem];

  if (v17 == v5)
  {
    v18 = [(HURecommendedTriggerItemModuleController *)self delegate];
    [v18 recommendedTriggerModuleControllerDidSelectShowMore:self];
  }

  return 0;
}

- (void)didCommitTriggerBuilderForItem:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v17 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v17;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 recommendation];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 analyticsData];
    v13 = [v12 mutableCopy];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:v7 == 0];
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13598]];

    [v13 setObject:&unk_2824926D8 forKeyedSubscript:*MEMORY[0x277D13508]];
    if (v7)
    {
      [v13 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13510]];
    }

    v15 = [(HURecommendedTriggerItemModuleController *)self analyticsPresentationContext];

    if (v15)
    {
      v16 = [(HURecommendedTriggerItemModuleController *)self analyticsPresentationContext];
      [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13548]];
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