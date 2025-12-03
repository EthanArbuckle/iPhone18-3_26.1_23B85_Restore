@interface HFSwitchServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFSwitchServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v15[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v6 = MEMORY[0x277CBEB98];
  v7 = [HFPowerStateControlItem alloc];
  v14 = @"title";
  v8 = HFItemOptionalLocalizedString(@"HFControlShortTitlePower", optionsCopy);

  v15[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [(HFPowerStateControlItem *)v7 initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v9];
  v11 = [v6 setWithObject:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF9F0];
  optionsCopy = options;
  v7 = [v4 setWithObject:v5];
  v8 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v7 options:optionsCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HFSwitchServiceItem__subclass_updateWithOptions___block_invoke;
  v11[3] = &unk_277DF2828;
  v11[4] = self;
  v9 = [v8 flatMap:v11];

  return v9;
}

id __51__HFSwitchServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF9F0]];

  v6 = [v5 characteristic];
  v7 = [v5 valueWithExpectedClass:objc_opt_class()];
  v8 = [v3 standardResults];

  v9 = [v8 mutableCopy];
  if (v7)
  {
    v10 = [*(a1 + 32) controlDescriptionForCharacteristic:v6 withValue:v7];
    [v9 na_safeSetObject:v10 forKey:@"controlDescription"];
    v11 = [*(a1 + 32) descriptionForCharacteristic:v6 withValue:v7];
    [v9 na_safeSetObject:v11 forKey:@"description"];
  }

  [*(a1 + 32) applyInflectionToDescriptions:v9];
  v12 = MEMORY[0x277D2C900];
  v13 = [HFItemUpdateOutcome outcomeWithResults:v9];
  v14 = [v12 futureWithResult:v13];

  return v14;
}

@end