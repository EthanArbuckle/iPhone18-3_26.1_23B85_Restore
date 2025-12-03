@interface HUShortcutItem
- (HUShortcutItem)init;
- (HUShortcutItem)initWithTriggerBuilder:(id)builder selectable:(BOOL)selectable;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUShortcutItem

- (HUShortcutItem)initWithTriggerBuilder:(id)builder selectable:(BOOL)selectable
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = HUShortcutItem;
  v8 = [(HUShortcutItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_triggerBuilder, builder);
    v9->_selectable = selectable;
  }

  return v9;
}

- (HUShortcutItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithTriggerBuilder_selectable_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUShortcutItem.m" lineNumber:31 description:{@"%s is unavailable; use %@ instead", "-[HUShortcutItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  triggerBuilder = [(HUShortcutItem *)self triggerBuilder];
  v6 = [v4 initWithTriggerBuilder:triggerBuilder];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  triggerBuilder = [(HUShortcutItem *)self triggerBuilder];

  if (!triggerBuilder)
  {
    NSLog(&cfstr_Triggerbuilder_0.isa);
  }

  triggerBuilder2 = [(HUShortcutItem *)self triggerBuilder];

  if (triggerBuilder2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    triggerBuilder3 = [(HUShortcutItem *)self triggerBuilder];
    triggerActionSets = [triggerBuilder3 triggerActionSets];
    actionSetsSummary = [triggerActionSets actionSetsSummary];

    summaryText = [actionSetsSummary summaryText];
    summaryIconDescriptors = [actionSetsSummary summaryIconDescriptors];
    v12 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryShortcutsItemTitle", @"HUTriggerSummaryShortcutsItemTitle", 1);
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [dictionary setObject:summaryText forKeyedSubscript:*MEMORY[0x277D13E20]];
    [dictionary setObject:summaryIconDescriptors forKeyedSubscript:*MEMORY[0x277D13E90]];
    if (![(HUShortcutItem *)self selectable])
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13EC0]];
    }

    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
    v15 = [v13 futureWithResult:v14];
  }

  else
  {
    v16 = MEMORY[0x277D2C900];
    dictionary = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v15 = [v16 futureWithError:dictionary];
  }

  return v15;
}

@end