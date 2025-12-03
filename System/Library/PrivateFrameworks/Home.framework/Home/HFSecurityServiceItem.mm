@interface HFSecurityServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFSecurityServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v49[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  service = [(HFServiceItem *)self service];
  v7 = *MEMORY[0x277CCFB60];
  v8 = [service hf_characteristicOfType:*MEMORY[0x277CCFB60]];
  metadata = [v8 metadata];

  v10 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:metadata];
  v48 = @"title";
  v11 = HFItemOptionalLocalizedString(@"HFServiceSecuritySystemStateStayArm", optionsCopy);
  v49[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  [(HFMultiStateValueSet *)v10 addValue:&unk_2825233A0 displayResults:v12];

  v46 = @"title";
  v13 = HFItemOptionalLocalizedString(@"HFServiceSecuritySystemStateAwayArm", optionsCopy);
  v47 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  [(HFMultiStateValueSet *)v10 addValue:&unk_2825233B8 displayResults:v14];

  v44 = @"title";
  v15 = HFItemOptionalLocalizedString(@"HFServiceSecuritySystemStateNightArm", optionsCopy);
  v45 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  [(HFMultiStateValueSet *)v10 addValue:&unk_2825233D0 displayResults:v16];

  v42 = @"title";
  v17 = HFItemOptionalLocalizedString(@"HFServiceSecuritySystemStateDisarm", optionsCopy);
  v43 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  [(HFMultiStateValueSet *)v10 addValue:&unk_2825233E8 displayResults:v18];

  v19 = [MEMORY[0x277CBEB98] set];
  allValues = [(HFMultiStateValueSet *)v10 allValues];
  v21 = [allValues count];

  if (v21 >= 2)
  {
    v37 = v7;
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_282525690];
    v23 = [HFUtilities comparatorWithSortedObjects:v22];
    [(HFMultiStateValueSet *)v10 setValueComparator:v23];

    if ([(HFMultiStateValueSet *)v10 count]== 2)
    {
      v24 = [HFValueTransformer transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_7 reverseTransformBlock:&__block_literal_global_25];
      v36 = v22;
      v25 = metadata;
      v26 = controlItemValueSourceForPrimaryService;
      v27 = [HFPrimaryStateControlItem alloc];
      v40[0] = @"title";
      v28 = HFItemOptionalLocalizedString(@"HFControlShortTitleSecuritySystemState", optionsCopy);
      v40[1] = @"actionRequiresDeviceUnlock";
      v41[0] = v28;
      v41[1] = MEMORY[0x277CBEC38];
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v30 = v27;
      controlItemValueSourceForPrimaryService = v26;
      metadata = v25;
      v22 = v36;
      v31 = [(HFPrimaryStateControlItem *)v30 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:v37 valueTransformer:v24 displayResults:v29];
    }

    else
    {
      v32 = [HFMultiStateControlItem alloc];
      v38[0] = @"title";
      v24 = HFItemOptionalLocalizedString(@"HFControlShortTitleSecuritySystemState", optionsCopy);
      v38[1] = @"actionRequiresDeviceUnlock";
      v39[0] = v24;
      v39[1] = MEMORY[0x277CBEC38];
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v31 = [(HFMultiStateControlItem *)v32 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:v37 possibleValueSet:v10 displayResults:v28];
    }

    v33 = [MEMORY[0x277CBEB98] setWithObject:v31];

    v19 = v33;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v19;
}

id __55__HFSecurityServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
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
      v5 = qword_20DD97238[v4];
    }

    v6 = [v3 numberWithInteger:v5];
  }

  else
  {
    v6 = &unk_2825233A0;
  }

  return v6;
}

uint64_t __55__HFSecurityServiceItem_createControlItemsWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  if ([a2 integerValue] > 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  return [v2 numberWithInteger:v3];
}

- (id)_subclass_updateWithOptions:(id)options
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF858];
  v15[0] = *MEMORY[0x277CCFB60];
  v15[1] = v5;
  v6 = MEMORY[0x277CBEA60];
  optionsCopy = options;
  v8 = [v6 arrayWithObjects:v15 count:2];
  v9 = [v4 setWithArray:v8];

  v10 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v9 options:optionsCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HFSecurityServiceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF2828;
  v14[4] = self;
  v11 = [v10 flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __53__HFSecurityServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF858]];
  v6 = [v5 characteristic];
  v7 = [v5 valueWithExpectedClass:objc_opt_class()];
  v8 = [v4 responseForCharacteristicType:*MEMORY[0x277CCFB60]];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [v3 standardResults];

  v11 = [v10 mutableCopy];
  if (v7)
  {
    v39 = v4;
    v40 = a1;
    v12 = v6;
    v13 = [v7 integerValue];
    v14 = [v9 integerValue];
    v15 = v14;
    v16 = v13 != 4;
    if (v13 == 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v14;
    }

    if (v14 == v13)
    {
      v16 = 0;
    }

    v38 = v9;
    if (v9)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    if (v9)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
    [v11 setObject:v20 forKeyedSubscript:@"isInStateTransition"];

    if (v13 > 4)
    {
      v21 = 0;
    }

    else
    {
      v21 = *off_277DF35F0[v13];
    }

    v37 = v21;
    v22 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSecuritySystem" state:v21];
    [v11 setObject:v22 forKeyedSubscript:@"icon"];

    v23 = *(v40 + 32);
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
    v25 = [v23 descriptionForCharacteristic:v12 withValue:v24];

    v26 = *(v40 + 32);
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
    v28 = v26;
    v6 = v12;
    v29 = [v28 controlDescriptionForCharacteristic:v12 withValue:v27];

    if (v19)
    {
      if (v15 == 3)
      {
        v30 = @"HFCharacteristicValueCurrentSecuritySystemStateDisarming";
      }

      else
      {
        v30 = @"HFCharacteristicValueCurrentSecuritySystemStateArming";
      }

      v31 = _HFLocalizedStringWithDefaultValue(v30, v30, 1);

      v25 = v31;
      v29 = v25;
    }

    v4 = v39;
    v9 = v38;
    if (v25)
    {
      v32 = [v11 objectForKeyedSubscript:@"description"];

      if (!v32)
      {
        [v11 setObject:v25 forKeyedSubscript:@"description"];
      }
    }

    [v11 na_safeSetObject:v29 forKey:@"controlDescription"];

    a1 = v40;
  }

  [*(a1 + 32) applyInflectionToDescriptions:v11];
  v33 = MEMORY[0x277D2C900];
  v34 = [HFItemUpdateOutcome outcomeWithResults:v11];
  v35 = [v33 futureWithResult:v34];

  return v35;
}

@end