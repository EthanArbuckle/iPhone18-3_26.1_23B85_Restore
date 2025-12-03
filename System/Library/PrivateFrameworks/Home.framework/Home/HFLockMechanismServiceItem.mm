@interface HFLockMechanismServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFLockMechanismServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v17[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v6 = [HFValueTransformer transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_182 reverseTransformBlock:&__block_literal_global_6_7];
  v7 = MEMORY[0x277CBEB98];
  v8 = [HFPrimaryStateControlItem alloc];
  v9 = *MEMORY[0x277CCFB40];
  v16[0] = @"title";
  v10 = HFItemOptionalLocalizedString(@"HFControlShortTitleLockState", optionsCopy);

  v16[1] = @"actionRequiresDeviceUnlock";
  v17[0] = v10;
  v17[1] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [(HFPrimaryStateControlItem *)v8 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:v9 valueTransformer:v6 displayResults:v11];
  v13 = [v7 setWithObject:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __60__HFLockMechanismServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [a2 integerValue];
    if (v4 > 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_20DD97648[v4];
    }

    v6 = [v3 numberWithInteger:v5];
  }

  else
  {
    v6 = &unk_282524D20;
  }

  return v6;
}

uint64_t __60__HFLockMechanismServiceItem_createControlItemsWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 integerValue];
  if (v3)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = 3;
  }

  return [v2 numberWithInteger:v4];
}

- (id)_subclass_updateWithOptions:(id)options
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCFB40];
  v15[0] = *MEMORY[0x277CCF838];
  v15[1] = v5;
  v15[2] = *MEMORY[0x277CCF9A0];
  v6 = MEMORY[0x277CBEA60];
  optionsCopy = options;
  v8 = [v6 arrayWithObjects:v15 count:3];
  v9 = [v4 setWithArray:v8];

  v10 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v9 options:optionsCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__HFLockMechanismServiceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF2828;
  v14[4] = self;
  v11 = [v10 flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __58__HFLockMechanismServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCFB40]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  v7 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF838]];
  v8 = [v7 characteristic];
  v9 = [v7 valueWithExpectedClass:objc_opt_class()];
  v10 = [v3 standardResults];
  v11 = [v10 mutableCopy];

  if (v9)
  {
    v31 = v4;
    v12 = [v9 integerValue];
    v34 = v6;
    v30 = [v6 integerValue];
    v13 = a1;
    v14 = *(a1 + 32);
    [MEMORY[0x277CCABB0] numberWithInteger:v12];
    v16 = v15 = v8;
    v17 = [v14 descriptionForCharacteristic:v15 withValue:v16];

    v33 = v13;
    v18 = *(v13 + 32);
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    v32 = v15;
    v20 = [v18 controlDescriptionForCharacteristic:v15 withValue:v19];

    v21 = [v3 displayMetadata];
    v22 = [v21 transitioningPrimaryState];

    if (!v22)
    {
      v6 = v34;
      v4 = v31;
      if (v17)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isInStateTransition"];
    if (v12 || v30 != 1)
    {
      v6 = v34;
      v4 = v31;
      if (v12 != 1 || v30)
      {
LABEL_12:
        v17 = v17;

        v20 = v17;
        if (v17)
        {
LABEL_13:
          v25 = [v11 objectForKeyedSubscript:@"description"];

          if (!v25)
          {
            [v11 setObject:v17 forKeyedSubscript:@"description"];
          }
        }

LABEL_15:
        [v11 na_safeSetObject:v20 forKey:@"controlDescription"];

        v8 = v32;
        a1 = v33;
        goto LABEL_16;
      }

      v23 = @"HFCharacteristicValueLockMechanismStateUnlocking";
    }

    else
    {
      v23 = @"HFCharacteristicValueLockMechanismStateLocking";
      v6 = v34;
      v4 = v31;
    }

    v24 = _HFLocalizedStringWithDefaultValue(v23, v23, 1);

    v17 = v24;
    goto LABEL_12;
  }

LABEL_16:
  [*(a1 + 32) applyInflectionToDescriptions:v11];
  v26 = MEMORY[0x277D2C900];
  v27 = [HFItemUpdateOutcome outcomeWithResults:v11];
  v28 = [v26 futureWithResult:v27];

  return v28;
}

@end