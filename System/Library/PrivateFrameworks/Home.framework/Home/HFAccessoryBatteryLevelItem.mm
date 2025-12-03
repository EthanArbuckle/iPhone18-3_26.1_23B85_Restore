@interface HFAccessoryBatteryLevelItem
- (HFAccessoryBatteryLevelItem)initWithAccessory:(id)accessory valueSource:(id)source;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFAccessoryBatteryLevelItem

- (HFAccessoryBatteryLevelItem)initWithAccessory:(id)accessory valueSource:(id)source
{
  accessoryCopy = accessory;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HFAccessoryBatteryLevelItem;
  v9 = [(HFAccessoryBatteryLevelItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, accessory);
    objc_storeStrong(&v10->_valueSource, source);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  accessory = [(HFAccessoryBatteryLevelItem *)self accessory];
  valueSource = [(HFAccessoryBatteryLevelItem *)self valueSource];
  v7 = [v4 initWithAccessory:accessory valueSource:valueSource];

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v42 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  accessory = [(HFAccessoryBatteryLevelItem *)self accessory];
  services = [accessory services];
  v7 = [services na_firstObjectPassingTest:&__block_literal_global_27];

  v8 = [optionsCopy objectForKeyedSubscript:@"accessoryBatteryDesiredKeys"];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF780]];
  if (!v8 || [v8 containsObject:@"batteryPercentage"])
  {
    [v9 na_safeAddObject:v10];
  }

  v11 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF7D0]];
  if (!v8 || [v8 containsObject:@"batteryCharging"])
  {
    [v9 na_safeAddObject:v11];
  }

  v31 = v11;
  v12 = *MEMORY[0x277CCFAA8];
  v13 = [v7 hf_characteristicOfType:*MEMORY[0x277CCFAA8]];
  if (!v13)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    accessory2 = [(HFAccessoryBatteryLevelItem *)self accessory];
    services2 = [accessory2 services];

    v16 = [services2 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v29 = v10;
      v30 = optionsCopy;
      v18 = *v36;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(services2);
          }

          v20 = [*(*(&v35 + 1) + 8 * i) hf_characteristicOfType:v12];
          if (v20)
          {
            v13 = v20;
            goto LABEL_20;
          }
        }

        v17 = [services2 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v13 = 0;
LABEL_20:
      v10 = v29;
      optionsCopy = v30;
    }

    else
    {
      v13 = 0;
    }

    if (!v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    if (![v8 containsObject:@"batteryLow"])
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v8)
  {
    goto LABEL_23;
  }

LABEL_24:
  [v9 na_safeAddObject:v13];
LABEL_25:
  v21 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  bOOLValue = [v21 BOOLValue];

  if (bOOLValue)
  {
    v23 = MEMORY[0x277D2C900];
    v39[0] = @"dependentHomeKitObjects";
    v39[1] = @"hidden";
    v40[0] = v9;
    v40[1] = MEMORY[0x277CBEC38];
    v39[2] = @"readsSkipped";
    v40[2] = MEMORY[0x277CBEC38];
    valueSource = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v25 = [HFItemUpdateOutcome outcomeWithResults:valueSource];
    v26 = [v23 futureWithResult:v25];
  }

  else
  {
    valueSource = [(HFAccessoryBatteryLevelItem *)self valueSource];
    v25 = [valueSource readValuesForCharacteristics:v9];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __59__HFAccessoryBatteryLevelItem__subclass_updateWithOptions___block_invoke_2;
    v32[3] = &unk_277DF3A40;
    v33 = v10;
    v34 = v9;
    v26 = [v25 flatMap:v32];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __59__HFAccessoryBatteryLevelItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0DE8]];

  return v3;
}

id __59__HFAccessoryBatteryLevelItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v5 = [v3 responseForCharacteristicType:*MEMORY[0x277CCFAA8]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  v7 = MEMORY[0x277CBEC28];
  v8 = MEMORY[0x277CBEC38];
  if (v6)
  {
    v21 = v6;
    if ([v21 unsignedIntegerValue] == 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    [(HFMutableItemUpdateOutcome *)v4 setObject:v9 forKeyedSubscript:@"batteryLow"];
  }

  v10 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF7D0]];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  if (v11)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = v11;
    if ([v20 unsignedIntegerValue] == 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    [(HFMutableItemUpdateOutcome *)v4 setObject:v12 forKeyedSubscript:@"batteryCharging"];
  }

  v13 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF780]];
  v14 = [v13 valueWithExpectedClass:objc_opt_class()];

  if (v14)
  {
    v15 = [*(a1 + 32) metadata];
    v16 = [v15 hf_percentageForCharacteristicValue:v14];
    [(HFMutableItemUpdateOutcome *)v4 setObject:v16 forKeyedSubscript:@"batteryPercentage"];
  }

  if (![*(a1 + 40) count])
  {
    [(HFMutableItemUpdateOutcome *)v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
  }

  [(HFMutableItemUpdateOutcome *)v4 setObject:*(a1 + 40) forKeyedSubscript:@"dependentHomeKitObjects"];
  v17 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v17;
}

uint64_t __59__HFAccessoryBatteryLevelItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) unsignedIntegerValue] == 1)
  {
    return MEMORY[0x277CBEC38];
  }

  else
  {
    return MEMORY[0x277CBEC28];
  }
}

uint64_t __59__HFAccessoryBatteryLevelItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) unsignedIntegerValue] == 1)
  {
    return MEMORY[0x277CBEC38];
  }

  else
  {
    return MEMORY[0x277CBEC28];
  }
}

@end