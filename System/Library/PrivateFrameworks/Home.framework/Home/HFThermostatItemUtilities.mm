@interface HFThermostatItemUtilities
+ (void)getDescription:(id *)a3 controlDescription:(id *)a4 optionalDescriptions:(id *)a5 forResponse:(id)a6 primaryService:(id)a7 temperatureFormatter:(id)a8;
@end

@implementation HFThermostatItemUtilities

+ (void)getDescription:(id *)a3 controlDescription:(id *)a4 optionalDescriptions:(id *)a5 forResponse:(id)a6 primaryService:(id)a7 temperatureFormatter:(id)a8
{
  v121[2] = *MEMORY[0x277D85DE8];
  v14 = a6;
  v100 = a7;
  v15 = a8;
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__15;
  v118 = __Block_byref_object_dispose__15;
  v119 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__15;
  v112 = __Block_byref_object_dispose__15;
  v113 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__15;
  v106 = __Block_byref_object_dispose__15;
  v107 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__HFThermostatItemUtilities_getDescription_controlDescription_optionalDescriptions_forResponse_primaryService_temperatureFormatter___block_invoke;
  aBlock[3] = &unk_277DFBEE0;
  aBlock[4] = &v114;
  aBlock[5] = &v108;
  aBlock[8] = a4;
  aBlock[9] = a5;
  aBlock[6] = &v102;
  aBlock[7] = a3;
  v16 = _Block_copy(aBlock);
  v17 = [objc_opt_class() currentHeatingCoolingModeValueInResponse:v14];
  v18 = [objc_opt_class() targetHeatingCoolingModeValueInResponse:v14];
  v19 = v18;
  if (v17 && v18)
  {
    v20 = [v14 responseForCharacteristicType:*MEMORY[0x277CCF7F0]];
    v99 = [v20 valueWithExpectedClass:objc_opt_class()];

    v21 = [v14 responseForCharacteristicType:*MEMORY[0x277CCF8C8]];
    v22 = [v21 valueWithExpectedClass:objc_opt_class()];

    [v22 doubleValue];
    v24 = v23;
    [v99 doubleValue];
    if (v24 > v25)
    {
      v26 = v99;

      v22 = v26;
    }

    v27 = [v100 hf_childServices];
    v98 = [v27 na_firstObjectPassingTest:&__block_literal_global_116];

    if (v98)
    {
      v28 = [v14 responseForCharacteristicType:*MEMORY[0x277CCF748] inService:?];
      v96 = [v28 valueWithExpectedClass:objc_opt_class()];
    }

    else
    {
      v96 = 0;
    }

    v29 = [@"HFServiceDescriptionThermostat" mutableCopy];
    if ([v19 integerValue] == 3)
    {
      [v29 appendString:@"Auto"];
      v30 = 2;
      goto LABEL_17;
    }

    v31 = [v17 integerValue];
    if (v31)
    {
      if (v31 == 1)
      {
        v32 = @"Heating";
        goto LABEL_15;
      }

      if (v31 == 2)
      {
        v32 = @"Cooling";
LABEL_15:
        [v29 appendString:v32];
LABEL_16:
        v30 = 1;
        goto LABEL_17;
      }

      NSLog(&cfstr_UnexpectedCurr.isa, v17);
    }

    else
    {
      v90 = [v19 integerValue];
      if (v90 > 1)
      {
        if (v90 == 2)
        {
          v32 = @"TargetCooling";
          goto LABEL_15;
        }

        if (v90 == 3)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!v90)
        {
          if ([v96 BOOLValue])
          {
            v92 = @"FanOnly";
          }

          else
          {
            v92 = @"Off";
          }

          [v29 appendString:v92];
          v30 = 0;
LABEL_17:
          v33 = [a1 targetTemperatureValueInResponse:v14];
          v97 = [v15 stringForObjectValue:v33];
          if (v30)
          {
            if (v30 != 1 && v22 && v99)
            {
              [v29 appendString:@"WithTemperatureRange"];
              v56 = [v15 stringForObjectValue:v22];
              v57 = [v15 stringForObjectValue:v99];
              v64 = HFLocalizedStringWithFormat(v29, @"%@%@", v58, v59, v60, v61, v62, v63, v56);
              v65 = v115[5];
              v115[5] = v64;

              v66 = [v15 stringForObjectValue:v22];
              v93 = [v15 stringForObjectValue:v99];
              v73 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionThermostatAutoWithTemperatureRange", @"%@%@", v67, v68, v69, v70, v71, v72, v66);
              v74 = v109[5];
              v109[5] = v73;

              v120[0] = @"heatingThresholdDescription";
              v44 = [v15 stringForObjectValue:v22];
              v95 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionThermostatAutoHeatingWithTemperature", @"%@", v75, v76, v77, v78, v79, v80, v44);
              v121[0] = v95;
              v120[1] = @"coolingThresholdDescription";
              v94 = [v15 stringForObjectValue:v99];
              v87 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionThermostatAutoCoolingWithTemperature", @"%@", v81, v82, v83, v84, v85, v86, v94);
              v121[1] = v87;
              v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
              v89 = v103[5];
              v103[5] = v88;
            }

            else
            {
              [v29 appendString:@"WithTemperature"];
              v40 = HFLocalizedStringWithFormat(v29, @"%@", v34, v35, v36, v37, v38, v39, v97);
              v41 = v115[5];
              v115[5] = v40;

              v42 = v109;
              v43 = v115[5];
              v44 = v42[5];
              v42[5] = v43;
            }
          }

          else
          {
            v45 = _HFLocalizedStringWithDefaultValue(v29, v29, 1);
            v46 = v115[5];
            v115[5] = v45;

            v47 = _HFLocalizedStringWithDefaultValue(v29, v29, 1);
            v48 = v109[5];
            v109[5] = v47;

            if (v109[5])
            {
LABEL_38:

              goto LABEL_39;
            }

            if (v33 && v97)
            {
              v55 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionThermostatOff", @"%@", v49, v50, v51, v52, v53, v54, v97);
            }

            else
            {
              v55 = _HFLocalizedStringWithDefaultValue(@"HFServiceControlDescriptionThermostatOffNoTargetTemperature", @"HFServiceControlDescriptionThermostatOffNoTargetTemperature", 1);
            }

            v44 = v109[5];
            v109[5] = v55;
          }

          goto LABEL_38;
        }

        if (v90 == 1)
        {
          v32 = @"TargetHeating";
          goto LABEL_15;
        }
      }

      NSLog(&cfstr_UnexpectedTarg.isa, v19);
    }

LABEL_39:
  }

  if (v16)
  {
    v16[2](v16);
  }

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v108, 8);

  _Block_object_dispose(&v114, 8);
  v91 = *MEMORY[0x277D85DE8];
}

void __132__HFThermostatItemUtilities_getDescription_controlDescription_optionalDescriptions_forResponse_primaryService_temperatureFormatter___block_invoke(uint64_t a1)
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

uint64_t __132__HFThermostatItemUtilities_getDescription_controlDescription_optionalDescriptions_forResponse_primaryService_temperatureFormatter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

@end