@interface HUShortcutItem
- (HUShortcutItem)init;
- (HUShortcutItem)initWithTriggerBuilder:(id)a3 selectable:(BOOL)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUShortcutItem

- (HUShortcutItem)initWithTriggerBuilder:(id)a3 selectable:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUShortcutItem;
  v8 = [(HUShortcutItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_triggerBuilder, a3);
    v9->_selectable = a4;
  }

  return v9;
}

- (HUShortcutItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithTriggerBuilder_selectable_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUShortcutItem.m" lineNumber:31 description:{@"%s is unavailable; use %@ instead", "-[HUShortcutItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUShortcutItem *)self triggerBuilder];
  v6 = [v4 initWithTriggerBuilder:v5];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HUShortcutItem *)self triggerBuilder];

  if (!v4)
  {
    NSLog(&cfstr_Triggerbuilder_0.isa);
  }

  v5 = [(HUShortcutItem *)self triggerBuilder];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [(HUShortcutItem *)self triggerBuilder];
    v8 = [v7 triggerActionSets];
    v9 = [v8 actionSetsSummary];

    v10 = [v9 summaryText];
    v11 = [v9 summaryIconDescriptors];
    v12 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryShortcutsItemTitle", @"HUTriggerSummaryShortcutsItemTitle", 1);
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13E20]];
    [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13E90]];
    if (![(HUShortcutItem *)self selectable])
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13EC0]];
    }

    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277D14780] outcomeWithResults:v6];
    v15 = [v13 futureWithResult:v14];
  }

  else
  {
    v16 = MEMORY[0x277D2C900];
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v15 = [v16 futureWithError:v6];
  }

  return v15;
}

@end