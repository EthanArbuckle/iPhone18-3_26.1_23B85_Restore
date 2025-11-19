@interface HFInputSourceServiceItem
- (id)_subclass_updateWithOptions:(id)a3;
- (id)createControlItemsWithOptions:(id)a3;
@end

@implementation HFInputSourceServiceItem

- (id)createControlItemsWithOptions:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v4 = [HFValueTransformer transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_154 reverseTransformBlock:&__block_literal_global_7_5];
  v11 = @"controlItemPurpose";
  v12[0] = &unk_2825245E8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [HFPrimaryStateControlItem alloc];
  v7 = [(HFPrimaryStateControlItem *)v6 initWithValueSource:v3 characteristicType:*MEMORY[0x277CCFB80] valueTransformer:v4 displayResults:v5];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __58__HFInputSourceServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if ([a2 integerValue])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  }

  else
  {
    v4 = &unk_2825245B8;
  }

  return v4;
}

uint64_t __58__HFInputSourceServiceItem_createControlItemsWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isEqualToNumber:&unk_2825245D0] ^ 1;

  return [v2 numberWithInteger:v3];
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF920];
  v6 = *MEMORY[0x277CCF880];
  v7 = *MEMORY[0x277CCFB80];
  v8 = a3;
  v9 = [v4 setWithObjects:{v5, v6, v7, 0}];
  v10 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v9 options:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HFInputSourceServiceItem__subclass_updateWithOptions___block_invoke;
  v13[3] = &unk_277DF2828;
  v13[4] = self;
  v11 = [v10 flatMap:v13];

  return v11;
}

id __56__HFInputSourceServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF920]];

  v34 = [v5 valueWithExpectedClass:objc_opt_class()];
  v6 = [v3 standardResults];
  v7 = [v6 mutableCopy];

  v8 = [v3 readResponse];
  v9 = [v8 responseForCharacteristicType:*MEMORY[0x277CCFB80]];

  v10 = [v3 readResponse];

  v11 = [v10 responseForCharacteristicType:*MEMORY[0x277CCF880]];

  v35 = [v11 valueWithExpectedClass:objc_opt_class()];
  v12 = MEMORY[0x277CBEC28];
  v13 = MEMORY[0x277CBEC38];
  if (v9)
  {
    v14 = [v9 characteristic];
    v15 = [v14 hf_isWritable];

    v16 = MEMORY[0x277CBEC28];
    if (v15 && ![v35 isEqualToNumber:&unk_282524600])
    {
      v16 = v13;
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEC28];
  }

  [v7 setObject:v16 forKeyedSubscript:@"HFInputSourceCanHideKey"];
  v17 = [*(a1 + 32) service];
  if ([v17 isNameModifiable])
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  [v7 setObject:v18 forKeyedSubscript:@"isDisabled"];

  v19 = [*(a1 + 32) service];
  v20 = [v19 configurationState];

  if (v20 == 3 && v5)
  {
    v21 = [v7 objectForKeyedSubscript:@"suspendedState"];
    v22 = [v21 unsignedIntegerValue];

    if ([MEMORY[0x277CD1650] hf_isSuspendedStateSuspended:v22])
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isDisabled"];
    }

    v23 = *(a1 + 32);
    v24 = [v5 characteristic];
    v25 = v34;
    v26 = [v23 controlDescriptionForCharacteristic:v24 withValue:v34];
    [v7 setObject:v26 forKeyedSubscript:@"description"];

    v27 = *(a1 + 32);
    v28 = [v5 characteristic];
    v29 = [v27 descriptionForCharacteristic:v28 withValue:v34];
    [v7 setObject:v29 forKeyedSubscript:@"controlDescription"];
  }

  else
  {
    v28 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v7 setObject:v28 forKeyedSubscript:@"hidden"];
    v25 = v34;
  }

  [v7 setObject:&unk_282524618 forKeyedSubscript:@"controlSummaryStyle"];
  [*(a1 + 32) applyInflectionToDescriptions:v7];
  v30 = MEMORY[0x277D2C900];
  v31 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v32 = [v30 futureWithResult:v31];

  return v32;
}

@end