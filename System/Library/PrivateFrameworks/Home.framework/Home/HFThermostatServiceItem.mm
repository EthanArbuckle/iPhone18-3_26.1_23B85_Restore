@interface HFThermostatServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFThermostatServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v56[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = [MEMORY[0x277CBEB58] set];
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v7 = [HFTemperatureThresholdControlItem alloc];
  v55 = @"title";
  v8 = HFItemOptionalLocalizedString(@"HFControlShortTitleTemperature", optionsCopy);
  v56[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
  v10 = [(HFTemperatureThresholdControlItem *)v7 initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v9];

  v11 = v10;
  [v5 na_safeAddObject:v10];
  v12 = [HFSimpleIncrementalControlItem alloc];
  v13 = [(HFSimpleIncrementalControlItem *)v12 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:*MEMORY[0x277CCFB58] displayResults:0];
  [v5 addObject:v13];
  v14 = [HFTemperatureUnitControlItem alloc];
  v42 = [(HFTemperatureUnitControlItem *)v14 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:*MEMORY[0x277CCFB88] displayResults:0];
  [v5 addObject:?];
  service = [(HFServiceItem *)self service];
  v40 = *MEMORY[0x277CCFB20];
  v16 = [service hf_characteristicOfType:?];
  metadata = [v16 metadata];

  v41 = metadata;
  v18 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:metadata];
  v53 = @"title";
  v19 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeOff", optionsCopy);
  v54 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  [(HFMultiStateValueSet *)v18 addValue:&unk_282523400 displayResults:v20];

  v51 = @"title";
  v21 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeHeat", optionsCopy);
  v52 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [(HFMultiStateValueSet *)v18 addValue:&unk_282523418 displayResults:v22];

  v49 = @"title";
  v23 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeCool", optionsCopy);
  v50 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  [(HFMultiStateValueSet *)v18 addValue:&unk_282523430 displayResults:v24];

  v47 = @"title";
  v25 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeAuto", optionsCopy);
  v48 = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  [(HFMultiStateValueSet *)v18 addValue:&unk_282523448 displayResults:v26];

  allValues = [(HFMultiStateValueSet *)v18 allValues];
  v28 = [allValues count];

  if (v28 >= 2)
  {
    v39 = v13;
    v29 = [HFUtilities comparatorWithSortedObjects:&unk_2825256A8];
    [(HFMultiStateValueSet *)v18 setValueComparator:v29];

    if ([(HFMultiStateValueSet *)v18 count]== 2)
    {
      v30 = [HFValueTransformer transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_10 reverseTransformBlock:&__block_literal_global_31];
      v31 = [HFPrimaryStateControlItem alloc];
      v45[0] = @"title";
      v32 = HFItemOptionalLocalizedString(@"HFControlShortTitleHeatingCoolingMode", optionsCopy);
      v45[1] = @"controlItemPurpose";
      v46[0] = v32;
      v46[1] = &unk_282523460;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      v34 = v33 = v11;
      v35 = [(HFPrimaryStateControlItem *)v31 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:v40 valueTransformer:v30 displayResults:v34];

      v11 = v33;
    }

    else
    {
      v36 = [HFMultiStateControlItem alloc];
      v43[0] = @"title";
      v30 = HFItemOptionalLocalizedString(@"HFControlShortTitleHeatingCoolingMode", optionsCopy);
      v43[1] = @"controlItemPurpose";
      v44[0] = v30;
      v44[1] = &unk_282523460;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      v35 = [(HFMultiStateControlItem *)v36 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:v40 possibleValueSet:v18 displayResults:v32];
    }

    [v5 addObject:v35];
    v13 = v39;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v5;
}

id __57__HFThermostatServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
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
      v5 = qword_20DD97260[v4];
    }

    v6 = [v3 numberWithInteger:v5];
  }

  else
  {
    v6 = &unk_282523400;
  }

  return v6;
}

uint64_t __57__HFThermostatServiceItem_createControlItemsWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 integerValue] > 1;

  return [v2 numberWithInteger:v3];
}

- (id)_subclass_updateWithOptions:(id)options
{
  v17[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCFB68];
  v17[0] = *MEMORY[0x277CCF868];
  v17[1] = v5;
  v6 = *MEMORY[0x277CCFB20];
  v17[2] = *MEMORY[0x277CCF818];
  v17[3] = v6;
  v7 = *MEMORY[0x277CCF8C8];
  v17[4] = *MEMORY[0x277CCF7F0];
  v17[5] = v7;
  v8 = MEMORY[0x277CBEA60];
  optionsCopy = options;
  v10 = [v8 arrayWithObjects:v17 count:6];
  v11 = [v4 setWithArray:v10];

  v12 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v11 options:optionsCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__HFThermostatServiceItem__subclass_updateWithOptions___block_invoke;
  v16[3] = &unk_277DF2828;
  v16[4] = self;
  v13 = [v12 flatMap:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __55__HFThermostatServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF868]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  v7 = [v4 responseForCharacteristicType:*MEMORY[0x277CCFB20]];
  v26 = [v7 valueWithExpectedClass:objc_opt_class()];

  v8 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF818]];
  v25 = [v8 valueWithExpectedClass:objc_opt_class()];

  v9 = [v3 standardResults];

  v10 = [v9 mutableCopy];
  v11 = +[HFFormatterManager sharedInstance];
  v12 = [v11 temperatureFormatter];

  [v12 setInputIsCelsius:1];
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v13 = [*(a1 + 32) service];
  [HFThermostatItemUtilities getDescription:&v29 controlDescription:&v28 optionalDescriptions:&v27 forResponse:v4 primaryService:v13 temperatureFormatter:v12];
  v14 = v29;
  v15 = v28;
  v16 = v27;

  if (v14)
  {
    v17 = [v10 objectForKeyedSubscript:@"description"];

    if (!v17)
    {
      [v10 setObject:v14 forKeyedSubscript:@"description"];
    }
  }

  [v10 na_safeSetObject:v15 forKey:@"controlDescription"];
  [v10 addEntriesFromDictionary:v16];
  v18 = [v12 stringForObjectValue:v6];
  v24 = v6;
  v19 = -[HFTemperatureIconDescriptor initWithFormattedTemperature:heatingCoolingMode:targetHeatingCoolingMode:]([HFTemperatureIconDescriptor alloc], "initWithFormattedTemperature:heatingCoolingMode:targetHeatingCoolingMode:", v18, [v25 integerValue], objc_msgSend(v26, "integerValue"));
  [v10 setObject:v19 forKeyedSubscript:@"icon"];

  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"tempreatureUnitDependency"];
  [*(a1 + 32) applyInflectionToDescriptions:v10];
  v20 = MEMORY[0x277D2C900];
  v21 = [HFItemUpdateOutcome outcomeWithResults:v10];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

@end