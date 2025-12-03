@interface HFDoorServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFDoorServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v17[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v16[0] = @"title";
  v6 = HFItemOptionalLocalizedString(@"HFControlShortTitleDoorState", optionsCopy);

  v17[0] = v6;
  v17[1] = MEMORY[0x277CBEC38];
  v16[1] = @"preferReversedInteractionDirection";
  v16[2] = @"actionRequiresDeviceUnlock";
  v17[2] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v8 = [HFIncrementalStateControlItem alloc];
  v9 = [(HFIncrementalStateControlItem *)v8 initWithValueSource:controlItemValueSourceForPrimaryService incrementalAndPrimaryCharacteristicType:*MEMORY[0x277CCFB50] displayResults:v7];
  v10 = MEMORY[0x277CBEB98];
  v15 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v10 setWithArray:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCFB50];
  v15[0] = *MEMORY[0x277CCF848];
  v15[1] = v5;
  v15[2] = *MEMORY[0x277CCF9A0];
  v6 = MEMORY[0x277CBEA60];
  optionsCopy = options;
  v8 = [v6 arrayWithObjects:v15 count:3];
  v9 = [v4 setWithArray:v8];

  v10 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v9 options:optionsCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HFDoorServiceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF2828;
  v14[4] = self;
  v11 = [v10 flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __49__HFDoorServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF848]];
  v6 = [v5 characteristic];
  v7 = [v5 valueWithExpectedClass:objc_opt_class()];
  v8 = [v4 responseForCharacteristicType:*MEMORY[0x277CCFB50]];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF9A0]];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = [v3 standardResults];

  v13 = [v12 mutableCopy];
  if (v7)
  {
    v35 = v4;
    v37 = v5;
    v14 = [v7 integerValue];
    v15 = 0;
    if (([v11 BOOLValue] & 1) == 0 && v9)
    {
      v16 = [v9 integerValue];
      if (v16 == [v7 integerValue])
      {
        v15 = 0;
      }

      else
      {
        v14 = [v9 integerValue];
        v15 = 1;
      }
    }

    v17 = [MEMORY[0x277CCABB0] numberWithBool:v15];
    [v13 setObject:v17 forKeyedSubscript:@"isInStateTransition"];

    v36 = a1;
    v18 = *(a1 + 32);
    v19 = v14;
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    v21 = [v18 descriptionForCharacteristic:v6 withValue:v20];

    if (v15)
    {
      if ([v7 compare:v9] == -1)
      {
        v22 = @"HFCharacteristicValueDoorStateOpening";
      }

      else
      {
        v22 = @"HFCharacteristicValueDoorStateClosing";
      }

      v23 = _HFLocalizedStringWithDefaultValue(v22, v22, 1);

      v21 = v23;
    }

    v4 = v35;
    v24 = [v6 metadata];
    v25 = [v24 hf_percentageForCharacteristicValue:v7];
    [v13 setObject:v25 forKeyedSubscript:@"subPriority"];

    if (v21)
    {
      v26 = [v13 objectForKeyedSubscript:@"description"];

      if (!v26)
      {
        [v13 setObject:v21 forKeyedSubscript:@"description"];
      }
    }

    v27 = *(v36 + 32);
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
    v29 = [v27 controlDescriptionForCharacteristic:v6 withValue:v28];
    [v13 na_safeSetObject:v29 forKey:@"controlDescription"];

    a1 = v36;
    v5 = v37;
  }

  if ([v11 BOOLValue])
  {
    v30 = _HFLocalizedStringWithDefaultValue(@"HFStatusDescriptionDoor_OneObstructed", @"HFStatusDescriptionDoor_OneObstructed", 1);
    [v13 setObject:v30 forKeyedSubscript:@"description"];
    [v13 setObject:v30 forKeyedSubscript:@"detailedControlDescription"];
    [v13 setObject:&unk_2825240C0 forKeyedSubscript:@"badge"];
    [v13 setObject:&unk_2825240D8 forKeyedSubscript:@"descriptionBadge"];
  }

  [*(a1 + 32) applyInflectionToDescriptions:v13];
  v31 = MEMORY[0x277D2C900];
  v32 = [HFItemUpdateOutcome outcomeWithResults:v13];
  v33 = [v31 futureWithResult:v32];

  return v33;
}

@end