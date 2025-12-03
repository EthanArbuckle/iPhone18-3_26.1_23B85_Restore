@interface HFValueTransformer(HUAdditions)
+ (id)transformerForRingSliderViewProfile:()HUAdditions rangeControlItem:;
@end

@implementation HFValueTransformer(HUAdditions)

+ (id)transformerForRingSliderViewProfile:()HUAdditions rangeControlItem:
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  latestResults = [v6 latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  mEMORY[0x277D14BF8] = [MEMORY[0x277D14BF8] sharedCoordinator];
  isCelsius = [mEMORY[0x277D14BF8] isCelsius];

  if ([v8 mode] == 1)
  {
    v11 = MEMORY[0x277D14BE0];
    targetValueConstraints = [v6 targetValueConstraints];
    validRange = [targetValueConstraints validRange];
    v14 = [v11 integerTemperatureRangeWithinNumberRange:validRange representsCelsius:isCelsius];

    v15 = MEMORY[0x277D14CF0];
    v16 = objc_opt_class();
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __88__HFValueTransformer_HUAdditions__transformerForRingSliderViewProfile_rangeControlItem___block_invoke;
    v50[3] = &unk_277DBE620;
    v51 = v5;
    v52 = v14;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __88__HFValueTransformer_HUAdditions__transformerForRingSliderViewProfile_rangeControlItem___block_invoke_2;
    v47[3] = &unk_277DBE648;
    v48 = v52;
    v49 = v51;
    v17 = v52;
    v18 = [v15 transformerForValueClass:v16 transformBlock:v50 reverseTransformBlock:v47];
  }

  else if ([v8 mode] == 2)
  {
    v19 = MEMORY[0x277D14BE0];
    maximumValueConstraints = [v6 maximumValueConstraints];
    validRange2 = [maximumValueConstraints validRange];
    v22 = [v19 integerTemperatureRangeWithinNumberRange:validRange2 representsCelsius:isCelsius];

    v23 = MEMORY[0x277D14BE0];
    minimumValueConstraints = [v6 minimumValueConstraints];
    validRange3 = [minimumValueConstraints validRange];
    v26 = [v23 integerTemperatureRangeWithinNumberRange:validRange3 representsCelsius:isCelsius];

    primaryValueConstraints = [v5 primaryValueConstraints];
    validRange4 = [primaryValueConstraints validRange];

    secondaryValueConstraints = [v5 secondaryValueConstraints];
    validRange5 = [secondaryValueConstraints validRange];

    v31 = MEMORY[0x277D14CF0];
    v32 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __88__HFValueTransformer_HUAdditions__transformerForRingSliderViewProfile_rangeControlItem___block_invoke_3;
    v42[3] = &unk_277DBE670;
    v43 = validRange4;
    v44 = v22;
    v45 = validRange5;
    v46 = v26;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __88__HFValueTransformer_HUAdditions__transformerForRingSliderViewProfile_rangeControlItem___block_invoke_4;
    v37[3] = &unk_277DBE698;
    v38 = v46;
    v39 = v45;
    v40 = v44;
    v41 = v43;
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v17 = v46;
    v18 = [v31 transformerForValueClass:v32 transformBlock:v42 reverseTransformBlock:v37];
  }

  else
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v54 = "+[HFValueTransformer(HUAdditions) transformerForRingSliderViewProfile:rangeControlItem:]";
      v55 = 2048;
      mode = [v8 mode];
      _os_log_debug_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEBUG, "(%s) %lu is an unsupported mode for HUQuickControlRingSliderRangeViewController. Only HFRangeControlItemModeTarget and HFRangeControlItemModeThreshold are valid. (HFTemperatureModeTarget and HFTemperatureModeThreshold are deprecated)", buf, 0x16u);
    }

    v18 = 0;
  }

  return v18;
}

@end