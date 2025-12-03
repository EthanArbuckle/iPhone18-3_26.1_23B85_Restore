@interface HFLightSensorStatusItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFLightSensorStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{objects, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"sun.max.circle.fill" configuration:v3];

  return v4;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v21[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  serviceTypes = [objc_opt_class() serviceTypes];
  anyObject = [serviceTypes anyObject];

  v7 = [objc_opt_class() characteristicTypesForServiceType:anyObject includingAssociatedTypes:1];
  v21[0] = anyObject;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  allObjects = [v7 allObjects];
  v10 = [(HFStatusItem *)self filteredServicesOfTypes:v8 containingCharacteristicTypes:allObjects];

  objc_initWeak(&location, self);
  valueSource = [(HFStatusItem *)self valueSource];
  v12 = [valueSource readValuesForCharacteristicTypes:v7 inServices:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__HFLightSensorStatusItem__subclass_updateWithOptions___block_invoke;
  v17[3] = &unk_277DF61A0;
  objc_copyWeak(&v19, &location);
  v13 = anyObject;
  v18 = v13;
  v14 = [v12 flatMap:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __55__HFLightSensorStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
    v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
    v7 = [v6 mutableCopy];

    v8 = [v7 objectForKeyedSubscript:@"hidden"];
    LODWORD(v6) = [v8 BOOLValue];

    if (v6)
    {
      v9 = MEMORY[0x277D2C900];
      v10 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v11 = [v9 futureWithResult:v10];
    }

    else
    {
      v14 = [v3 servicesWithValuesPassingTest:&__block_literal_global_46 forCharacteristicType:*MEMORY[0x277CCF830]];
      if ([v14 count])
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 0;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __55__HFLightSensorStatusItem__subclass_updateWithOptions___block_invoke_3;
        v27[3] = &unk_277DF6178;
        v28 = v3;
        v29 = &v30;
        [v14 na_each:v27];
        v15 = [MEMORY[0x277CCABB0] numberWithDouble:{v31[3] / objc_msgSend(v14, "count")}];
        v16 = +[HFFormatterManager sharedInstance];
        v17 = [v16 luxFormatter];

        v18 = [v17 numberFormatter];
        [v18 setUsesSignificantDigits:0];

        [v15 doubleValue];
        v20 = v19;
        v21 = [v17 numberFormatter];
        [v21 setMaximumFractionDigits:v20 < 1.0];

        v22 = [v17 stringForObjectValue:v15];
        [v7 setObject:v22 forKeyedSubscript:@"description"];

        _Block_object_dispose(&v30, 8);
      }

      v23 = MEMORY[0x277D2C900];
      v24 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v11 = [v23 futureWithResult:v24];
    }
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v34 = @"hidden";
    v35[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v13 = [HFItemUpdateOutcome outcomeWithResults:v7];
    v11 = [v12 futureWithResult:v13];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

void __55__HFLightSensorStatusItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) responseForCharacteristicType:*MEMORY[0x277CCF830] inService:a2];
  v5 = [v3 valueWithExpectedClass:objc_opt_class()];

  [v5 doubleValue];
  *(*(*(a1 + 40) + 8) + 24) = v4 + *(*(*(a1 + 40) + 8) + 24);
}

@end