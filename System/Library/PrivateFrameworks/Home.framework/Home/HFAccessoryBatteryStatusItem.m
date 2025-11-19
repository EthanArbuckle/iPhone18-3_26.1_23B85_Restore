@interface HFAccessoryBatteryStatusItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFAccessoryBatteryStatusItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = MEMORY[0x277D2C900];
    v28 = @"hidden";
    v29[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v9 = [HFItemUpdateOutcome outcomeWithResults:v8];
    v10 = [v7 futureWithResult:v9];
  }

  else
  {
    v11 = [(HFStatusItem *)self home];
    v12 = [v11 accessories];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke;
    v27[3] = &unk_277DF3888;
    v27[4] = self;
    v13 = [v12 na_filter:v27];

    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D2C900];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke_3;
    v23[3] = &unk_277E00648;
    objc_copyWeak(&v25, &location);
    v24 = v4;
    v15 = [v13 na_map:v23];
    v16 = [v14 combineAllFutures:v15];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke_4;
    v20[3] = &unk_277DFED88;
    objc_copyWeak(&v22, &location);
    v17 = v13;
    v21 = v17;
    v10 = [v16 flatMap:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke(id *a1, void *a2)
{
  v4 = a2;
  v5 = [a1[4] room];
  if (v5)
  {
    a1 = [a1[4] room];
    v2 = [v4 room];
    if (![a1 isEqual:v2])
    {
      v6 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v7 = [v4 services];
  v6 = [v7 na_any:&__block_literal_global_199];

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

BOOL __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 serviceType];
  if ([v3 isEqualToString:*MEMORY[0x277CD0DE8]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 hf_characteristicOfType:*MEMORY[0x277CCF780]];
    v4 = v5 != 0;
  }

  return v4;
}

id __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained batteryLevelItems];
  v6 = [v3 uniqueIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [HFAccessoryBatteryLevelItem alloc];
    v9 = [WeakRetained valueSource];
    v7 = [(HFAccessoryBatteryLevelItem *)v8 initWithAccessory:v3 valueSource:v9];

    v10 = [WeakRetained batteryLevelItems];
    v11 = [v3 uniqueIdentifier];
    [v10 setObject:v7 forKeyedSubscript:v11];
  }

  v12 = [*(a1 + 32) mutableCopy];
  v13 = [MEMORY[0x277CBEB98] setWithObject:@"batteryLow"];
  [v12 setObject:v13 forKeyedSubscript:@"accessoryBatteryDesiredKeys"];

  v14 = [(HFItem *)v7 updateWithOptions:v12];

  return v14;
}

id __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = *(a1 + 32);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke_5;
    v25 = &unk_277E00670;
    v26 = v3;
    v8 = v5;
    v27 = v8;
    v9 = v6;
    v28 = v9;
    [v7 enumerateObjectsUsingBlock:&v22];
    v10 = objc_opt_new();
    if ([v8 count])
    {
      v11 = [WeakRetained defaultTitleForRepresentedHomeKitObjects:v8];
      [v10 setObject:v11 forKeyedSubscript:@"title"];

      v12 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
      v13 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"battery.25" configuration:v12];
      [v10 setObject:v13 forKeyedSubscript:@"icon"];

      [v10 setObject:&unk_282524EA0 forKeyedSubscript:@"statusItemCategory"];
      [v10 setObject:v8 forKeyedSubscript:@"representedHomeKitObjects"];
    }

    else
    {
      [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v16 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyAccessoryLowBattery", @"HFStatusSortKeyAccessoryLowBattery", 1);
    [v10 setObject:v16 forKeyedSubscript:@"sortKey"];

    [v10 setObject:&unk_282524EB8 forKeyedSubscript:@"priority"];
    [v10 setObject:v9 forKeyedSubscript:@"dependentHomeKitObjects"];
    v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v10 setObject:v17 forKeyedSubscript:@"dependentHomeKitClasses"];

    v18 = MEMORY[0x277D2C900];
    v19 = [HFItemUpdateOutcome outcomeWithResults:v10];
    v15 = [v18 futureWithResult:v19];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v29 = @"hidden";
    v30[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v9 = [HFItemUpdateOutcome outcomeWithResults:v8];
    v15 = [v14 futureWithResult:v9];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

void __60__HFAccessoryBatteryStatusItem__subclass_updateWithOptions___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 objectForKeyedSubscript:@"batteryLow"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [*(a1 + 40) addObject:v10];
  }

  v8 = *(a1 + 48);
  v9 = [v5 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  [v8 unionSet:v9];
}

@end