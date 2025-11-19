@interface HFTriggerDurationSummaryItem
- (HFTriggerDurationSummaryItem)initWithTriggerBuilder:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFTriggerDurationSummaryItem

- (HFTriggerDurationSummaryItem)initWithTriggerBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFTriggerDurationSummaryItem;
  v6 = [(HFTriggerDurationSummaryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triggerBuilder, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(HFTriggerDurationSummaryItem *)self triggerBuilder];
  if (([v5 supportsEndEvents] & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [(HFTriggerDurationSummaryItem *)self triggerBuilder];
  v7 = [v6 areActionsAffectedByEndEvents];

  if ((v7 & 1) == 0)
  {
LABEL_6:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    goto LABEL_11;
  }

  v8 = _HFLocalizedStringWithDefaultValue(@"HFTriggerDurationSummaryTitle", @"HFTriggerDurationSummaryTitle", 1);
  [v4 setObject:v8 forKeyedSubscript:@"title"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [(HFTriggerDurationSummaryItem *)self triggerBuilder];
  v11 = [v10 home];
  v12 = [v9 numberWithInt:{objc_msgSend(v11, "hf_supportsSharedEventAutomation") ^ 1}];
  [v4 setObject:v12 forKeyedSubscript:@"isDisabled"];

  v13 = [(HFTriggerDurationSummaryItem *)self triggerBuilder];
  v14 = [v13 designatedDurationEventBuilder];

  v15 = MEMORY[0x277CD19F8];
  if (v14)
  {
    v16 = MEMORY[0x277CCABB0];
    [v14 duration];
    v17 = [v16 numberWithDouble:?];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v15 hf_naturalLanguageTurnOffAfterDuration:v17 style:0];
  [v4 setObject:v18 forKeyedSubscript:@"description"];

  if (v14)
  {
  }

LABEL_11:
  v19 = MEMORY[0x277D2C900];
  v20 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v21 = [v19 futureWithResult:v20];

  return v21;
}

@end