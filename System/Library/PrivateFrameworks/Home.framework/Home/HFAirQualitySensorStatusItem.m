@interface HFAirQualitySensorStatusItem
- (id)_subclass_updateWithOptions:(id)a3;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3;
@end

@implementation HFAirQualitySensorStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{a3, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"aqi.medium" configuration:v3];

  return v4;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() serviceTypes];
  v6 = [v5 anyObject];

  v7 = [objc_opt_class() characteristicTypesForServiceType:v6 includingAssociatedTypes:1];
  v21[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v9 = [v7 allObjects];
  v10 = [(HFStatusItem *)self filteredServicesOfTypes:v8 containingCharacteristicTypes:v9];

  objc_initWeak(&location, self);
  v11 = [(HFStatusItem *)self valueSource];
  v12 = [v11 readValuesForCharacteristicTypes:v7 inServices:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HFAirQualitySensorStatusItem__subclass_updateWithOptions___block_invoke;
  v17[3] = &unk_277DF61A0;
  objc_copyWeak(&v19, &location);
  v13 = v6;
  v18 = v13;
  v14 = [v12 flatMap:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __60__HFAirQualitySensorStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
    v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
    v7 = [v6 mutableCopy];

    v8 = [v7 objectForKeyedSubscript:@"hidden"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = MEMORY[0x277D2C900];
      v11 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v12 = [v10 futureWithResult:v11];
    }

    else
    {
      v15 = *MEMORY[0x277CCF770];
      v31 = [v3 servicesWithValuesPassingTest:&__block_literal_global_227 forCharacteristicType:*MEMORY[0x277CCF770]];
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __60__HFAirQualitySensorStatusItem__subclass_updateWithOptions___block_invoke_3;
      v32[3] = &unk_277DF6178;
      v16 = v3;
      v33 = v16;
      v34 = &v35;
      [v31 na_each:v32];
      if (v36[3])
      {
        v17 = [v16 responseForCharacteristicType:v15];
        v30 = [v17 characteristic];

        v18 = [MEMORY[0x277CCAA28] hf_valueFormatterForCharacteristic:v30 options:0];
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v36[3]];
        v20 = [v18 stringForObjectValue:v19];

        [v7 setObject:v20 forKeyedSubscript:@"description"];
        [v7 setObject:&unk_2825251A0 forKeyedSubscript:@"statusItemCategory"];
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:6 - v36[3]];
        v22 = [HFNumberRange valueWithValue:v21];
        [v7 setObject:v22 forKeyedSubscript:@"statusCurrentValue"];

        v23 = [HFNumberRange rangeWithMaxValue:&unk_2825251B8 minValue:&unk_2825251D0];
        [v7 setObject:v23 forKeyedSubscript:@"statusPossibleValues"];
      }

      v24 = [v7 objectForKeyedSubscript:@"title"];
      v25 = v24 == 0;

      if (v25)
      {
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
      }

      v26 = MEMORY[0x277D2C900];
      v27 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v12 = [v26 futureWithResult:v27];

      _Block_object_dispose(&v35, 8);
    }
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v39 = @"hidden";
    v40[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v14 = [HFItemUpdateOutcome outcomeWithResults:v7];
    v12 = [v13 futureWithResult:v14];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v12;
}

void __60__HFAirQualitySensorStatusItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) responseForCharacteristicType:*MEMORY[0x277CCF770] inService:a2];
  v7 = [v3 valueWithExpectedClass:objc_opt_class()];

  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = [v7 integerValue];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

@end