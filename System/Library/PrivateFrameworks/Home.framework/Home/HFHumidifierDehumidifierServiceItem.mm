@interface HFHumidifierDehumidifierServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
- (void)_formatDescription:(id *)description controlDescription:(id *)controlDescription optionalDescriptions:(id *)descriptions forResponse:(id)response;
@end

@implementation HFHumidifierDehumidifierServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v136[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v106 = [MEMORY[0x277CBEB58] set];
  service = [(HFServiceItem *)self service];
  hf_childServices = [service hf_childServices];
  v111 = [hf_childServices na_firstObjectPassingTest:&__block_literal_global_126];

  v8 = MEMORY[0x277CBEB58];
  service2 = [(HFServiceItem *)self service];
  v10 = [v8 setWithObject:service2];

  [v10 na_safeAddObject:v111];
  v103 = v10;
  v110 = [(HFServiceItem *)self controlItemValueSourceForServices:v10];
  service3 = [(HFServiceItem *)self service];
  hf_childServices2 = [service3 hf_childServices];
  v13 = [hf_childServices2 na_filter:&__block_literal_global_7_4];

  v14 = MEMORY[0x277CBEB58];
  service4 = [(HFServiceItem *)self service];
  v16 = [v14 setWithObject:service4];

  v102 = v13;
  [v16 unionSet:v13];
  v101 = v16;
  v109 = [(HFServiceItem *)self controlItemValueSourceForServices:v16];
  v135[0] = @"title";
  v17 = HFItemOptionalLocalizedString(@"HFControlShortTitleHumidity", optionsCopy);
  v136[0] = v17;
  v135[1] = @"controlItemPurpose";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v136[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];

  v107 = controlItemValueSourceForPrimaryService;
  v100 = v19;
  v99 = [[HFHumidifierDehumidifierThresholdControlItem alloc] initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v19];
  [v106 na_safeAddObject:?];
  selfCopy = self;
  service5 = [(HFServiceItem *)self service];
  v104 = *MEMORY[0x277CCFB30];
  v21 = [service5 hf_characteristicOfType:?];
  metadata = [v21 metadata];

  v98 = metadata;
  v23 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:metadata];
  v133 = @"title";
  v24 = HFItemOptionalLocalizedString(@"HFServiceHumidifierDehumidifierStateAuto", optionsCopy);
  v134 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
  [(HFMultiStateValueSet *)v23 addValue:&unk_2825241E0 displayResults:v25];

  v131 = @"title";
  v26 = HFItemOptionalLocalizedString(@"HFServiceHumidifierDehumidifierStateHumidify", optionsCopy);
  v132 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
  [(HFMultiStateValueSet *)v23 addValue:&unk_2825241F8 displayResults:v27];

  v129 = @"title";
  v28 = HFItemOptionalLocalizedString(@"HFServiceHumidifierDehumidifierStateDehumidify", optionsCopy);
  v130 = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
  [(HFMultiStateValueSet *)v23 addValue:&unk_282524210 displayResults:v29];

  v30 = [HFUtilities comparatorWithSortedObjects:&unk_282525810];
  [(HFMultiStateValueSet *)v23 setValueComparator:v30];

  v31 = [HFPowerStateControlItem alloc];
  v32 = MEMORY[0x277CBEB98];
  v33 = +[HFPowerStateTargetValueTuple fanStateTargetValueTuple];
  v34 = [v32 setWithObject:v33];
  v127 = @"title";
  v35 = HFItemOptionalLocalizedString(@"HFControlShortTitlePower", optionsCopy);
  v128 = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v37 = [(HFPowerStateControlItem *)v31 initWithValueSource:v110 auxiliaryTargetValueTuples:v34 displayResults:v36];

  v38 = v106;
  v125[0] = @"title";
  v39 = optionsCopy;
  v40 = HFItemOptionalLocalizedString(@"HFControlShortTitleHumidifierDehumidifierState", optionsCopy);
  v125[1] = @"controlItemPurpose";
  v126[0] = v40;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:12];
  v126[1] = v41;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];

  v43 = [HFTargetModeControlItem alloc];
  v44 = v104;
  v97 = v23;
  v105 = v37;
  v95 = v42;
  v94 = [(HFTargetModeControlItem *)v43 initWithValueSource:v110 targetModeCharacteristicType:v44 targetModeValueSet:v23 primaryPowerStateControlItem:v37 displayResults:v42];
  [v106 addObject:?];
  v112 = *MEMORY[0x277CCFA20];
  if (v111 && ([v111 hf_characteristicOfType:v112], v45 = objc_claimAutoreleasedReturnValue(), v45, v45))
  {
    v46 = selfCopy;
    service6 = [(HFServiceItem *)selfCopy service];
    v48 = [service6 hf_characteristicOfType:v112];

    v49 = v39;
    if (v48)
    {
      v50 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        service7 = [(HFServiceItem *)selfCopy service];
        *buf = 138412546;
        v122 = service7;
        v123 = 2112;
        v124 = v111;
        _os_log_error_impl(&dword_20D9BF000, v50, OS_LOG_TYPE_ERROR, "Both the humidifier/dehumidifier service (%@) and the fan child service (%@) have a rotation speed characteristic. This is not a valid configuration. Arbitrarily choosing to use the child fan's characteristic,", buf, 0x16u);
      }
    }

    v51 = [MEMORY[0x277CBEB98] setWithObject:v111];
    v52 = [(HFServiceItem *)selfCopy controlItemValueSourceForServices:v51];

    v53 = [v111 hf_characteristicOfType:*MEMORY[0x277CCFA18]];
    metadata2 = [v53 metadata];
    v55 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionClockwise", v49);
    v56 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionCounterClockwise", v49);
    v57 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata2 firstValue:&unk_2825241E0 firstTitle:v55 secondValue:&unk_2825241F8 secondTitle:v56];

    if (v57)
    {
      v58 = [HFMultiStateControlItem alloc];
      characteristicType = [v53 characteristicType];
      v119 = @"title";
      v60 = HFItemOptionalLocalizedString(@"HFControlShortTitleRotationDirection", v49);
      v120 = v60;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v62 = v61 = v53;
      v63 = [(HFMultiStateControlItem *)v58 initWithValueSource:v52 characteristicType:characteristicType possibleValueSet:v57 displayResults:v62];
      [v106 na_safeAddObject:v63];

      v53 = v61;
    }

    v64 = v52;
    v65 = [HFPowerStateControlItem alloc];
    v117 = @"title";
    v66 = HFItemOptionalLocalizedString(@"HFControlShortTitlePower", v49);
    v118 = v66;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
    v68 = [(HFPowerStateControlItem *)v65 initWithValueSource:v64 displayResults:v67];

    v38 = v106;
    v69 = v107;
    if (v64)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v68 = 0;
    v69 = v107;
    v49 = optionsCopy;
    v46 = selfCopy;
  }

  v108 = v68;
  service8 = [(HFServiceItem *)v46 service];
  v71 = [service8 hf_characteristicOfType:v112];

  if (!v71)
  {
    v72 = v49;
    v73 = v69;
    v64 = 0;
    goto LABEL_19;
  }

  v64 = v69;
  v68 = v105;

LABEL_14:
  v108 = v68;
  v72 = v49;
  if (v64 && v68)
  {
    v73 = v69;
    v74 = [HFIncrementalStateControlItem alloc];
    v115 = @"title";
    v75 = HFItemOptionalLocalizedString(@"HFControlShortTitleLinkedFanRotationSpeed", v72);
    v116 = v75;
    v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v77 = [(HFIncrementalStateControlItem *)v74 initWithValueSource:v64 primaryStateControlItem:v68 incrementalCharacteristicType:v112 displayResults:v76];

    [v38 addObject:v77];
  }

  else
  {
    v73 = v69;
  }

LABEL_19:
  v78 = [[HFSwingModeControlItem alloc] initWithValueSource:v109];
  [v38 na_safeAddObject:v78];

  service9 = [(HFServiceItem *)v46 service];
  v80 = [service9 hf_characteristicOfType:*MEMORY[0x277CCF958]];

  metadata3 = [v80 metadata];
  v82 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsUnlocked", v72);
  HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsLocked", v72);
  v84 = v83 = v38;
  v85 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata3 firstValue:&unk_2825241E0 firstTitle:v82 secondValue:&unk_2825241F8 secondTitle:v84];

  if (v85)
  {
    v86 = [HFMultiStateControlItem alloc];
    characteristicType2 = [v80 characteristicType];
    v113 = @"title";
    v88 = HFItemOptionalLocalizedString(@"HFControlShortTitleLockPhysicalControls", v72);
    v114 = v88;
    v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    v90 = [(HFMultiStateControlItem *)v86 initWithValueSource:v73 characteristicType:characteristicType2 possibleValueSet:v85 displayResults:v89];
    [v83 na_safeAddObject:v90];
  }

  v91 = *MEMORY[0x277D85DE8];

  return v83;
}

uint64_t __69__HFHumidifierDehumidifierServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

uint64_t __69__HFHumidifierDehumidifierServiceItem_createControlItemsWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0EE0]];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF748];
  v6 = *MEMORY[0x277CCF850];
  v7 = *MEMORY[0x277CCF828];
  v8 = *MEMORY[0x277CCFB30];
  v9 = *MEMORY[0x277CCF8E0];
  v10 = *MEMORY[0x277CCF888];
  v11 = *MEMORY[0x277CCFBC0];
  optionsCopy = options;
  v13 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, 0}];
  v14 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v13 options:optionsCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__HFHumidifierDehumidifierServiceItem__subclass_updateWithOptions___block_invoke;
  v17[3] = &unk_277DF2828;
  v17[4] = self;
  v15 = [v14 flatMap:v17];

  return v15;
}

id __67__HFHumidifierDehumidifierServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v3 standardResults];

  v6 = [v5 mutableCopy];
  v30 = a1;
  v31 = 0;
  v7 = *(a1 + 32);
  v32 = 0;
  v33 = 0;
  [v7 _formatDescription:&v33 controlDescription:&v32 optionalDescriptions:&v31 forResponse:v4];
  v8 = v33;
  v9 = v32;
  v10 = v31;
  if (v8)
  {
    v11 = [v6 objectForKeyedSubscript:@"description"];

    if (!v11)
    {
      [v6 setObject:v8 forKeyedSubscript:@"description"];
    }
  }

  [v6 na_safeSetObject:v9 forKey:@"controlDescription"];
  [v6 addEntriesFromDictionary:v10];
  v12 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF828]];
  v13 = [v12 valueWithExpectedClass:objc_opt_class()];

  v14 = [v4 responseForCharacteristicType:*MEMORY[0x277CCFBC0]];
  v15 = [v14 valueWithExpectedClass:objc_opt_class()];
  v16 = v15;
  if (v13)
  {
    if (v15)
    {
      v17 = [v6 objectForKeyedSubscript:@"detailedControlDescription"];

      if (!v17)
      {
        v18 = [v14 characteristic];
        v19 = [v18 metadata];
        v29 = [v19 hf_percentageForCharacteristicValue:v16];

        if ([v13 integerValue] == 2 && (objc_msgSend(v29, "doubleValue"), v20 <= 0.2) || objc_msgSend(v13, "integerValue") == 3 && (objc_msgSend(v29, "doubleValue"), v21 >= 0.8))
        {
          v22 = *(v30 + 32);
          v23 = [v14 characteristic];
          v24 = [v22 controlDescriptionForCharacteristic:v23 withValue:v16];
          [v6 setObject:v24 forKeyedSubscript:@"detailedControlDescription"];
        }
      }
    }
  }

  [*(v30 + 32) applyInflectionToDescriptions:v6];
  v25 = MEMORY[0x277D2C900];
  v26 = [HFItemUpdateOutcome outcomeWithResults:v6];
  v27 = [v25 futureWithResult:v26];

  return v27;
}

- (void)_formatDescription:(id *)description controlDescription:(id *)controlDescription optionalDescriptions:(id *)descriptions forResponse:(id)response
{
  v129[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v122 = 0;
  v123 = &v122;
  v124 = 0x3032000000;
  v125 = __Block_byref_object_copy__17;
  v126 = __Block_byref_object_dispose__17;
  v127 = 0;
  v116 = 0;
  v117 = &v116;
  v118 = 0x3032000000;
  v119 = __Block_byref_object_copy__17;
  v120 = __Block_byref_object_dispose__17;
  v121 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = __Block_byref_object_copy__17;
  v114 = __Block_byref_object_dispose__17;
  v115 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__HFHumidifierDehumidifierServiceItem__formatDescription_controlDescription_optionalDescriptions_forResponse___block_invoke;
  aBlock[3] = &unk_277DFBEE0;
  aBlock[4] = &v122;
  aBlock[5] = &v116;
  aBlock[8] = controlDescription;
  aBlock[9] = descriptions;
  aBlock[6] = &v110;
  aBlock[7] = description;
  v103 = _Block_copy(aBlock);
  service = [(HFServiceItem *)self service];
  hf_childServices = [service hf_childServices];
  v106 = [hf_childServices na_firstObjectPassingTest:&__block_literal_global_68_1];

  v13 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF828]];
  v108 = [v13 valueWithExpectedClass:objc_opt_class()];

  v14 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB30]];
  v15 = [v14 valueWithExpectedClass:objc_opt_class()];

  service2 = [(HFServiceItem *)self service];
  v17 = *MEMORY[0x277CCF748];
  v18 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF748] inService:service2];
  v107 = [v18 valueWithExpectedClass:objc_opt_class()];

  if (v106)
  {
    v19 = [responseCopy responseForCharacteristicType:v17 inService:?];
    v104 = [v19 valueWithExpectedClass:objc_opt_class()];

    if (!v15)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v104 = 0;
    if (!v15)
    {
      goto LABEL_53;
    }
  }

  if (v108 && v107)
  {
    v105 = [@"HFServiceDescriptionHumidifier" mutableCopy];
    if ([v15 integerValue])
    {
      integerValue = [v108 integerValue];
      if (integerValue >= 2)
      {
        if (integerValue == 2)
        {
          v21 = @"Humidify";
          goto LABEL_21;
        }

        if (integerValue == 3)
        {
          v21 = @"Dehumidify";
LABEL_21:
          [v105 appendString:v21];
          goto LABEL_22;
        }

        NSLog(&cfstr_UnexpectedCurr_0.isa, v108);
        goto LABEL_52;
      }

      if ([v107 BOOLValue])
      {
        integerValue2 = [v15 integerValue];
        switch(integerValue2)
        {
          case 0:
LABEL_22:
            v22 = 1;
            goto LABEL_23;
          case 1:
            v21 = @"TargetHumidify";
            goto LABEL_21;
          case 2:
            v21 = @"TargetDehumidify";
            goto LABEL_21;
        }

        NSLog(&cfstr_UnexpectedTarg_0.isa, v15);
LABEL_52:

        goto LABEL_53;
      }

      if ([v104 BOOLValue])
      {
        v24 = @"FanOnly";
      }

      else
      {
        v24 = @"Off";
      }
    }

    else
    {
      if ([v107 BOOLValue])
      {
        [v105 appendString:@"Auto"];
        v22 = 2;
LABEL_23:
        v99 = v22;
LABEL_29:
        v25 = +[HFTargetRangeUtilities rangeModeForTargetHumidifierDehumidifierState:](HFTargetRangeUtilities, "rangeModeForTargetHumidifierDehumidifierState:", [v15 integerValue]);
        v26 = +[HFTargetRangeUtilities rangeModeForCurrentHumidifierDehumidifierState:](HFTargetRangeUtilities, "rangeModeForCurrentHumidifierDehumidifierState:", [v108 integerValue]);
        v102 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF888]];
        value = [v102 value];
        if (value)
        {
          v28 = [HFRelativePercentValue alloc];
          v29 = [v102 valueWithExpectedClass:objc_opt_class()];
          characteristic = [v102 characteristic];
          v101 = [(HFRelativePercentValue *)v28 initWithValue:v29 forCharacteristic:characteristic];
        }

        else
        {
          v101 = 0;
        }

        v31 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF8E0]];
        value2 = [v31 value];
        if (value2)
        {
          v33 = [HFRelativePercentValue alloc];
          v34 = [v31 valueWithExpectedClass:objc_opt_class()];
          characteristic2 = [v31 characteristic];
          v36 = [(HFRelativePercentValue *)v33 initWithValue:v34 forCharacteristic:characteristic2];
        }

        else
        {
          v36 = 0;
        }

        v37 = [HFTargetRangeUtilities targetRelativePercentValueWithTargetMode:v25 currentMode:v26 rawTargetResponse:0 minimumThresholdResponse:v31 maximumThresholdResponse:v102];
        v38 = +[HFFormatterManager sharedInstance];
        percentFormatter = [v38 percentFormatter];

        if (v37)
        {
          v40 = [percentFormatter stringForRelativePercentValue:v37];
        }

        else
        {
          v40 = &stru_2824B1A78;
        }

        if (v99)
        {
          if (v99 != 1 && v36 && v101)
          {
            [v105 appendString:@"WithHumidityRange"];
            v62 = [percentFormatter stringForRelativePercentValue:v36];
            v63 = [percentFormatter stringForRelativePercentValue:v101];
            v70 = HFLocalizedStringWithFormat(v105, @"%@%@", v64, v65, v66, v67, v68, v69, v62);
            v71 = v123[5];
            v123[5] = v70;

            v72 = [percentFormatter stringForRelativePercentValue:v36];
            v98 = [percentFormatter stringForRelativePercentValue:v101];
            v79 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionHumidifierAutoWithHumidityRange", @"%@%@", v73, v74, v75, v76, v77, v78, v72);
            v80 = v117[5];
            v117[5] = v79;

            v128[0] = @"humidifyThresholdDescription";
            v51 = [percentFormatter stringForRelativePercentValue:v36];
            v87 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionHumidifierHumidifyWithHumidity", @"%@", v81, v82, v83, v84, v85, v86, v51);
            v128[1] = @"dehumidifyThresholdDescription";
            v129[0] = v87;
            v100 = [percentFormatter stringForRelativePercentValue:v101];
            v94 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionHumidifierDehumidifyWithHumidity", @"%@", v88, v89, v90, v91, v92, v93, v100);
            v129[1] = v94;
            v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:2];
            v96 = v111[5];
            v111[5] = v95;
          }

          else
          {
            [v105 appendString:@"WithHumidity"];
            v47 = HFLocalizedStringWithFormat(v105, @"%@", v41, v42, v43, v44, v45, v46, v40);
            v48 = v123[5];
            v123[5] = v47;

            v49 = v117;
            v50 = v123[5];
            v51 = v49[5];
            v49[5] = v50;
          }
        }

        else
        {
          v52 = _HFLocalizedStringWithDefaultValue(v105, v105, 1);
          v53 = v123[5];
          v123[5] = v52;

          if (v40)
          {
            v60 = v37 != 0;
          }

          else
          {
            v60 = 0;
          }

          if (v60)
          {
            HFLocalizedStringWithFormat(@"HFServiceControlDescriptionHumidifierOff", @"%@", v54, v55, v56, v57, v58, v59, v40);
          }

          else
          {
            _HFLocalizedStringWithDefaultValue(@"HFServiceControlDescriptionHumidifierOffNoTargetHumidity", @"HFServiceControlDescriptionHumidifierOffNoTargetHumidity", 1);
          }
          v61 = ;
          v51 = v117[5];
          v117[5] = v61;
        }

        goto LABEL_52;
      }

      v24 = @"Off";
    }

    [v105 appendString:v24];
    v99 = 0;
    goto LABEL_29;
  }

LABEL_53:

  if (v103)
  {
    v103[2](v103);
  }

  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v116, 8);

  _Block_object_dispose(&v122, 8);
  v97 = *MEMORY[0x277D85DE8];
}

void __110__HFHumidifierDehumidifierServiceItem__formatDescription_controlDescription_optionalDescriptions_forResponse___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    **(a1 + 56) = *(*(*(a1 + 32) + 8) + 40);
  }

  if (*(a1 + 64))
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
    if (!v2)
    {
      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    **(a1 + 64) = v2;
  }

  if (*(a1 + 72))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    if (v3)
    {
      **(a1 + 72) = v3;
    }

    else
    {
      v4 = [MEMORY[0x277CBEAC0] dictionary];
      **(a1 + 72) = v4;
    }
  }
}

uint64_t __110__HFHumidifierDehumidifierServiceItem__formatDescription_controlDescription_optionalDescriptions_forResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

@end