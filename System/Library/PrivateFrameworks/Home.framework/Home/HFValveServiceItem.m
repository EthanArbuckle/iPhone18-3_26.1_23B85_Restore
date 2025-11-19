@interface HFValveServiceItem
- (id)_subclass_updateWithOptions:(id)a3;
- (id)createControlItemsWithOptions:(id)a3;
- (id)currentStateActionBuildersForHome:(id)a3;
@end

@implementation HFValveServiceItem

- (id)createControlItemsWithOptions:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v31 = [HFValueTransformer transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_78 reverseTransformBlock:&__block_literal_global_6_1];
  v37 = @"controlItemPurpose";
  v38[0] = &unk_282523E50;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v6 = [HFPrimaryStateControlItem alloc];
  v29 = v5;
  v28 = [(HFPrimaryStateControlItem *)v6 initWithValueSource:v5 characteristicType:*MEMORY[0x277CCF920] valueTransformer:v31 displayResults:v30];
  v35[0] = @"title";
  v7 = HFItemOptionalLocalizedString(@"HFCharacteristicGroupTitleSetDuration", v4);
  v35[1] = @"controlItemPurpose";
  v36[0] = v7;
  v36[1] = &unk_282523E50;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v9 = [HFSimpleIncrementalControlItem alloc];
  v10 = [(HFSimpleIncrementalControlItem *)v9 initWithValueSource:v5 characteristicType:*MEMORY[0x277CCFA60] displayResults:v8];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = HFItemOptionalLocalizedString(@"HFControlTitleFaucetActive", v4);

  [v11 setObject:v12 forKeyedSubscript:@"title"];
  [v11 setObject:&unk_282523E68 forKeyedSubscript:@"controlItemPurpose"];
  v13 = [(HFServiceItem *)self service];
  v14 = [v13 hf_parentService];

  v15 = MEMORY[0x277CBEB98];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __52__HFValveServiceItem_createControlItemsWithOptions___block_invoke_22;
  v32[3] = &unk_277DF9638;
  v33 = v14;
  v34 = self;
  v16 = v14;
  v17 = __52__HFValveServiceItem_createControlItemsWithOptions___block_invoke_22(v32);
  v18 = [v15 setWithArray:v17];

  v19 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v20 = [(HFServiceItem *)self valueSource];
  v21 = [(HFServiceItem *)self service];
  v22 = [v21 hf_serviceDescriptor];
  v23 = [(HFSimpleAggregatedCharacteristicValueSource *)v19 initWithValueSource:v20 services:v18 primaryServiceDescriptor:v22];

  v24 = [[HFValveActiveStateControlItem alloc] initWithValueSource:v23 displayResults:v11];
  v25 = [MEMORY[0x277CBEB98] setWithObjects:{v24, v28, v10, 0}];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

id __52__HFValveServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if ([a2 integerValue] == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  }

  else
  {
    v4 = &unk_282523E20;
  }

  return v4;
}

uint64_t __52__HFValveServiceItem_createControlItemsWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isEqualToNumber:&unk_282523E38];

  return [v2 numberWithInteger:v3];
}

id __52__HFValveServiceItem_createControlItemsWithOptions___block_invoke_22(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && ([v2 serviceType], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0E80]), v3, v4))
  {
    v5 = [*(a1 + 40) service];
    v6 = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v14;
    v9 = 2;
  }

  else
  {
    v5 = [*(a1 + 40) service];
    v13 = v5;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v13;
    v9 = 1;
  }

  v10 = [v7 arrayWithObjects:v8 count:{v9, v13, v14, v15, v16}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF920];
  v6 = a3;
  v7 = [v4 setWithObject:v5];
  v8 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v7 options:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HFValveServiceItem__subclass_updateWithOptions___block_invoke;
  v11[3] = &unk_277DF2828;
  v11[4] = self;
  v9 = [v8 flatMap:v11];

  return v9;
}

id __50__HFValveServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF920]];

  v6 = [v5 valueWithExpectedClass:objc_opt_class()];
  v7 = [v3 standardResults];

  v8 = [v7 mutableCopy];
  if (v6 && ![v6 integerValue])
  {
    v9 = [v8 objectForKeyedSubscript:@"description"];

    if (!v9)
    {
      v10 = *(a1 + 32);
      v11 = [v5 characteristic];
      v12 = [v10 controlDescriptionForCharacteristic:v11 withValue:v6];
      [v8 setObject:v12 forKeyedSubscript:@"description"];
    }

    v13 = *(a1 + 32);
    v14 = [v5 characteristic];
    v15 = [v13 descriptionForCharacteristic:v14 withValue:v6];
    [v8 setObject:v15 forKeyedSubscript:@"controlDescription"];

    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isDisabled"];
  }

  [v8 setObject:&unk_282523E80 forKeyedSubscript:@"controlSummaryStyle"];
  [*(a1 + 32) applyInflectionToDescriptions:v8];
  v16 = MEMORY[0x277D2C900];
  v17 = [HFItemUpdateOutcome outcomeWithResults:v8];
  v18 = [v16 futureWithResult:v17];

  return v18;
}

- (id)currentStateActionBuildersForHome:(id)a3
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

@end