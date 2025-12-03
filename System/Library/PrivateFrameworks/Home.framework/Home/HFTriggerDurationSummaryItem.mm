@interface HFTriggerDurationSummaryItem
- (HFTriggerDurationSummaryItem)initWithTriggerBuilder:(id)builder;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFTriggerDurationSummaryItem

- (HFTriggerDurationSummaryItem)initWithTriggerBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = HFTriggerDurationSummaryItem;
  v6 = [(HFTriggerDurationSummaryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triggerBuilder, builder);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  triggerBuilder = [(HFTriggerDurationSummaryItem *)self triggerBuilder];
  if (([triggerBuilder supportsEndEvents] & 1) == 0)
  {

    goto LABEL_6;
  }

  triggerBuilder2 = [(HFTriggerDurationSummaryItem *)self triggerBuilder];
  areActionsAffectedByEndEvents = [triggerBuilder2 areActionsAffectedByEndEvents];

  if ((areActionsAffectedByEndEvents & 1) == 0)
  {
LABEL_6:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    goto LABEL_11;
  }

  v8 = _HFLocalizedStringWithDefaultValue(@"HFTriggerDurationSummaryTitle", @"HFTriggerDurationSummaryTitle", 1);
  [v4 setObject:v8 forKeyedSubscript:@"title"];

  v9 = MEMORY[0x277CCABB0];
  triggerBuilder3 = [(HFTriggerDurationSummaryItem *)self triggerBuilder];
  home = [triggerBuilder3 home];
  v12 = [v9 numberWithInt:{objc_msgSend(home, "hf_supportsSharedEventAutomation") ^ 1}];
  [v4 setObject:v12 forKeyedSubscript:@"isDisabled"];

  triggerBuilder4 = [(HFTriggerDurationSummaryItem *)self triggerBuilder];
  designatedDurationEventBuilder = [triggerBuilder4 designatedDurationEventBuilder];

  v15 = MEMORY[0x277CD19F8];
  if (designatedDurationEventBuilder)
  {
    v16 = MEMORY[0x277CCABB0];
    [designatedDurationEventBuilder duration];
    v17 = [v16 numberWithDouble:?];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v15 hf_naturalLanguageTurnOffAfterDuration:v17 style:0];
  [v4 setObject:v18 forKeyedSubscript:@"description"];

  if (designatedDurationEventBuilder)
  {
  }

LABEL_11:
  v19 = MEMORY[0x277D2C900];
  v20 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v21 = [v19 futureWithResult:v20];

  return v21;
}

@end