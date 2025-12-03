@interface HFHeaterCoolerServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFHeaterCoolerServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v138[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v6 = [MEMORY[0x277CBEB58] set];
  service = [(HFServiceItem *)self service];
  hf_childServices = [service hf_childServices];
  v113 = [hf_childServices na_firstObjectPassingTest:&__block_literal_global_169];

  v9 = MEMORY[0x277CBEB58];
  service2 = [(HFServiceItem *)self service];
  v11 = [v9 setWithObject:service2];

  [v11 na_safeAddObject:v113];
  v106 = v11;
  v112 = [(HFServiceItem *)self controlItemValueSourceForServices:v11];
  service3 = [(HFServiceItem *)self service];
  hf_childServices2 = [service3 hf_childServices];
  v14 = [hf_childServices2 na_filter:&__block_literal_global_3_24];

  v15 = MEMORY[0x277CBEB58];
  service4 = [(HFServiceItem *)self service];
  v17 = [v15 setWithObject:service4];

  v105 = v14;
  [v17 unionSet:v14];
  v104 = v17;
  v111 = [(HFServiceItem *)self controlItemValueSourceForServices:v17];
  v137[0] = @"title";
  v18 = HFItemOptionalLocalizedString(@"HFControlShortTitleTemperature", optionsCopy);
  v138[0] = v18;
  v137[1] = @"controlItemPurpose";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v138[1] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];

  v103 = v20;
  v114 = v6;
  v102 = [[HFHeaterCoolerThresholdControlItem alloc] initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v20];
  [v6 na_safeAddObject:?];
  v21 = [HFTemperatureUnitControlItem alloc];
  v98 = controlItemValueSourceForPrimaryService;
  v101 = [(HFTemperatureUnitControlItem *)v21 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:*MEMORY[0x277CCFB88] displayResults:0];
  [v6 na_safeAddObject:?];
  selfCopy = self;
  service5 = [(HFServiceItem *)self service];
  v107 = *MEMORY[0x277CCFB18];
  v23 = [service5 hf_characteristicOfType:?];
  metadata = [v23 metadata];

  v100 = metadata;
  v25 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:metadata];
  v135 = @"title";
  v26 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeAuto", optionsCopy);
  v136 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
  [(HFMultiStateValueSet *)v25 addValue:&unk_282524930 displayResults:v27];

  v133 = @"title";
  v28 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeHeat", optionsCopy);
  v134 = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
  [(HFMultiStateValueSet *)v25 addValue:&unk_282524948 displayResults:v29];

  v131 = @"title";
  v30 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeCool", optionsCopy);
  v132 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
  [(HFMultiStateValueSet *)v25 addValue:&unk_282524960 displayResults:v31];

  v32 = [HFUtilities comparatorWithSortedObjects:&unk_2825258B8];
  [(HFMultiStateValueSet *)v25 setValueComparator:v32];

  v33 = [HFPowerStateControlItem alloc];
  v34 = MEMORY[0x277CBEB98];
  v35 = +[HFPowerStateTargetValueTuple fanStateTargetValueTuple];
  v36 = [v34 setWithObject:v35];
  v129 = @"title";
  v37 = HFItemOptionalLocalizedString(@"HFControlShortTitlePower", optionsCopy);
  v130 = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
  v39 = [(HFPowerStateControlItem *)v33 initWithValueSource:v112 auxiliaryTargetValueTuples:v36 displayResults:v38];

  v40 = 0x277CBE000uLL;
  v127[0] = @"title";
  v41 = optionsCopy;
  v42 = HFItemOptionalLocalizedString(@"HFControlShortTitleHeatingCoolingMode", optionsCopy);
  v127[1] = @"controlItemPurpose";
  v128[0] = v42;
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v128[1] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:2];

  v45 = v114;
  v46 = [HFTargetModeControlItem alloc];
  v47 = v107;
  v99 = v25;
  v108 = v39;
  v96 = v44;
  v95 = [(HFTargetModeControlItem *)v46 initWithValueSource:v112 targetModeCharacteristicType:v47 targetModeValueSet:v25 primaryPowerStateControlItem:v39 displayResults:v44];
  [v114 addObject:?];
  v48 = *MEMORY[0x277CCFA20];
  if (v113 && ([v113 hf_characteristicOfType:*MEMORY[0x277CCFA20]], v49 = objc_claimAutoreleasedReturnValue(), v49, v49))
  {
    v50 = selfCopy;
    service6 = [(HFServiceItem *)selfCopy service];
    v52 = [service6 hf_characteristicOfType:v48];

    v53 = v41;
    if (v52)
    {
      v54 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        service7 = [(HFServiceItem *)selfCopy service];
        *buf = 138412546;
        v124 = service7;
        v125 = 2112;
        v126 = v113;
        _os_log_error_impl(&dword_20D9BF000, v54, OS_LOG_TYPE_ERROR, "Both the heater/cooler service (%@) and the fan child service (%@) have a rotation speed characteristic. This is not a valid configuration. Arbitrarily choosing to use the child fan's characteristic,", buf, 0x16u);
      }
    }

    v55 = [MEMORY[0x277CBEB98] setWithObject:v113];
    v94 = [(HFServiceItem *)selfCopy controlItemValueSourceForServices:v55];

    v109 = [v113 hf_characteristicOfType:*MEMORY[0x277CCFA18]];
    metadata2 = [v109 metadata];
    v57 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionClockwise", v53);
    v58 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionCounterClockwise", v53);
    v59 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata2 firstValue:&unk_282524930 firstTitle:v57 secondValue:&unk_282524948 secondTitle:v58];

    if (v59)
    {
      v60 = [HFMultiStateControlItem alloc];
      characteristicType = [v109 characteristicType];
      v121 = @"title";
      v62 = HFItemOptionalLocalizedString(@"HFControlShortTitleRotationDirection", v53);
      v122 = v62;
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
      v64 = [(HFMultiStateControlItem *)v60 initWithValueSource:v94 characteristicType:characteristicType possibleValueSet:v59 displayResults:v63];
      [v114 na_safeAddObject:v64];
    }

    v65 = v94;
    v66 = [HFPowerStateControlItem alloc];
    v119 = @"title";
    v67 = HFItemOptionalLocalizedString(@"HFControlShortTitlePower", v53);
    v120 = v67;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    v69 = [(HFPowerStateControlItem *)v66 initWithValueSource:v65 displayResults:v68];

    if (v65)
    {
      v70 = v53;
      v40 = 0x277CBE000;
      v71 = v98;
      goto LABEL_15;
    }

    v110 = v69;
    v45 = v114;
    v40 = 0x277CBE000;
  }

  else
  {
    v110 = 0;
    v53 = v41;
    v50 = selfCopy;
  }

  service8 = [(HFServiceItem *)v50 service];
  v65 = [service8 hf_characteristicOfType:v48];

  if (!v65)
  {
    v70 = v53;
    v73 = v98;
    goto LABEL_19;
  }

  v71 = v98;
  v65 = v98;
  v69 = v108;

  if (!v65)
  {
    v70 = v53;
    v73 = v98;
    goto LABEL_18;
  }

  v70 = v53;
LABEL_15:
  v73 = v71;
  v74 = [HFIncrementalStateControlItem alloc];
  v117 = @"title";
  v75 = HFItemOptionalLocalizedString(@"HFControlShortTitleLinkedFanRotationSpeed", v70);
  v118 = v75;
  v76 = [*(v40 + 2752) dictionaryWithObjects:&v118 forKeys:&v117 count:1];
  v77 = [(HFIncrementalStateControlItem *)v74 initWithValueSource:v65 primaryStateControlItem:v69 incrementalCharacteristicType:v48 displayResults:v76];

  [(HFIncrementalStateControlItem *)v77 setAllowsToggle:0];
  v45 = v114;
  [v114 addObject:v77];

LABEL_18:
  v110 = v69;
LABEL_19:
  v78 = [[HFSwingModeControlItem alloc] initWithValueSource:v111];
  [v45 na_safeAddObject:v78];

  service9 = [(HFServiceItem *)v50 service];
  [service9 hf_characteristicOfType:*MEMORY[0x277CCF958]];
  v81 = v80 = v45;

  metadata3 = [v81 metadata];
  v83 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsUnlocked", v70);
  v84 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsLocked", v70);
  v85 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata3 firstValue:&unk_282524930 firstTitle:v83 secondValue:&unk_282524948 secondTitle:v84];

  if (v85)
  {
    v86 = [HFMultiStateControlItem alloc];
    characteristicType2 = [v81 characteristicType];
    v115 = @"title";
    v88 = HFItemOptionalLocalizedString(@"HFControlShortTitleLockPhysicalControls", v70);
    v116 = v88;
    v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v90 = [(HFMultiStateControlItem *)v86 initWithValueSource:v73 characteristicType:characteristicType2 possibleValueSet:v85 displayResults:v89];
    [v80 na_safeAddObject:v90];
  }

  v91 = *MEMORY[0x277D85DE8];

  return v114;
}

uint64_t __59__HFHeaterCoolerServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

uint64_t __59__HFHeaterCoolerServiceItem_createControlItemsWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0EE0]];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF748];
  v6 = *MEMORY[0x277CCF868];
  v7 = *MEMORY[0x277CCF810];
  v8 = *MEMORY[0x277CCFB18];
  v9 = *MEMORY[0x277CCF7F0];
  v10 = *MEMORY[0x277CCF8C8];
  optionsCopy = options;
  v12 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, 0}];
  v13 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v12 options:optionsCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HFHeaterCoolerServiceItem__subclass_updateWithOptions___block_invoke;
  v16[3] = &unk_277DF2828;
  v16[4] = self;
  v14 = [v13 flatMap:v16];

  return v14;
}

id __57__HFHeaterCoolerServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF868]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  v7 = [HFTemperatureItemUtilities currentHeatingCoolingModeValueInResponse:v4];
  v24 = [HFTemperatureItemUtilities targetHeatingCoolingModeValueInResponse:v4];
  v8 = [v3 standardResults];

  v9 = [v8 mutableCopy];
  v10 = +[HFFormatterManager sharedInstance];
  v11 = [v10 temperatureFormatter];

  [v11 setInputIsCelsius:1];
  v27 = 0;
  v28 = 0;
  v25 = a1;
  v26 = 0;
  v12 = [*(a1 + 32) service];
  [HFThermostatItemUtilities getDescription:&v28 controlDescription:&v27 optionalDescriptions:&v26 forResponse:v4 primaryService:v12 temperatureFormatter:v11];
  v13 = v28;
  v14 = v27;
  v15 = v26;

  if (v13)
  {
    v16 = [v9 objectForKeyedSubscript:@"description"];

    if (!v16)
    {
      [v9 setObject:v13 forKeyedSubscript:@"description"];
    }
  }

  [v9 na_safeSetObject:v14 forKey:@"controlDescription"];
  [v9 addEntriesFromDictionary:v15];
  v17 = [v11 stringForObjectValue:v6];
  v23 = v6;
  v18 = -[HFTemperatureIconDescriptor initWithFormattedTemperature:heatingCoolingMode:targetHeatingCoolingMode:]([HFTemperatureIconDescriptor alloc], "initWithFormattedTemperature:heatingCoolingMode:targetHeatingCoolingMode:", v17, [v7 integerValue], objc_msgSend(v24, "integerValue"));
  [v9 setObject:v18 forKeyedSubscript:@"icon"];

  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"tempreatureUnitDependency"];
  [*(v25 + 32) applyInflectionToDescriptions:v9];
  v19 = MEMORY[0x277D2C900];
  v20 = [HFItemUpdateOutcome outcomeWithResults:v9];
  v21 = [v19 futureWithResult:v20];

  return v21;
}

@end