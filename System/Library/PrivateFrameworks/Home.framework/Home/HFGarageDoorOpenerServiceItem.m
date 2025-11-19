@interface HFGarageDoorOpenerServiceItem
- (id)_subclass_updateWithOptions:(id)a3;
- (id)createControlItemsWithOptions:(id)a3;
@end

@implementation HFGarageDoorOpenerServiceItem

- (id)createControlItemsWithOptions:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v6 = [HFValueTransformer transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_131 reverseTransformBlock:&__block_literal_global_6_5];
  v7 = MEMORY[0x277CBEB98];
  v8 = [HFPrimaryStateControlItem alloc];
  v9 = *MEMORY[0x277CCFB08];
  v17[0] = @"title";
  v10 = HFItemOptionalLocalizedString(@"HFControlShortTitleDoorState", v4);

  v17[1] = @"actionRequiresDeviceUnlock";
  v18[0] = v10;
  v18[1] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = [(HFPrimaryStateControlItem *)v8 initWithValueSource:v5 characteristicType:v9 valueTransformer:v6 displayResults:v11, v17[0]];
  v19[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v14 = [v7 setWithArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __63__HFGarageDoorOpenerServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [a2 integerValue];
    if (v4 > 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_20DD97538[v4];
    }

    v6 = [v3 numberWithInteger:v5];
  }

  else
  {
    v6 = &unk_282524258;
  }

  return v6;
}

uint64_t __63__HFGarageDoorOpenerServiceItem_createControlItemsWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 integerValue] < 2;

  return [v2 numberWithInteger:v3];
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCFB08];
  v15[0] = *MEMORY[0x277CCF800];
  v15[1] = v5;
  v15[2] = *MEMORY[0x277CCF9A0];
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:v15 count:3];
  v9 = [v4 setWithArray:v8];

  v10 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v9 options:v7];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HFGarageDoorOpenerServiceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF2828;
  v14[4] = self;
  v11 = [v10 flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __61__HFGarageDoorOpenerServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCFB08]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  v7 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF9A0]];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  v9 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF800]];
  v10 = [v9 characteristic];
  v11 = [v9 valueWithExpectedClass:objc_opt_class()];
  v12 = [v3 standardResults];

  v13 = [v12 mutableCopy];
  if (v11)
  {
    v14 = v6 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v33 = v10;
    v15 = [v11 integerValue];
    v16 = [v6 integerValue];
    v31 = v8;
    v32 = v6;
    if (v15 == 4)
    {
      v15 = 0;
    }

    else if (v15 != v16)
    {
      if (v16)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:(v15 & 0xFFFFFFFFFFFFFFFELL) == 2];
    [v13 setObject:v17 forKeyedSubscript:@"isInStateTransition"];

    v18 = a1;
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
    v21 = [v19 descriptionForCharacteristic:v33 withValue:v20];

    if (v21)
    {
      v22 = [v13 objectForKeyedSubscript:@"description"];

      if (!v22)
      {
        [v13 setObject:v21 forKeyedSubscript:@"description"];
      }
    }

    v23 = *(v18 + 32);
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
    v10 = v33;
    v25 = [v23 controlDescriptionForCharacteristic:v33 withValue:v24];

    a1 = v18;
    [v13 na_safeSetObject:v25 forKey:@"controlDescription"];

    v8 = v31;
    v6 = v32;
  }

  if ([v8 BOOLValue])
  {
    v26 = _HFLocalizedStringWithDefaultValue(@"HFStatusDescriptionGarageDoor_OneObstructed", @"HFStatusDescriptionGarageDoor_OneObstructed", 1);
    [v13 setObject:v26 forKeyedSubscript:@"description"];
    [v13 setObject:v26 forKeyedSubscript:@"detailedControlDescription"];
    [v13 setObject:&unk_282524270 forKeyedSubscript:@"badge"];
    [v13 setObject:&unk_282524288 forKeyedSubscript:@"descriptionBadge"];
  }

  [*(a1 + 32) applyInflectionToDescriptions:v13];
  v27 = MEMORY[0x277D2C900];
  v28 = [HFItemUpdateOutcome outcomeWithResults:v13];
  v29 = [v27 futureWithResult:v28];

  return v29;
}

@end