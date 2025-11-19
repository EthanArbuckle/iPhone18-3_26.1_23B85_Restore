@interface HKInteractiveChartInfographicFactory
+ (BOOL)infographicSupportedForDisplayType:(id)a3 factorDisplayType:(id)a4 healthStore:(id)a5;
+ (id)_appleSleepingBreathingDisturbancesInfographicForDisplayType:(id)a3;
+ (id)_appleSleepingBreathingDisturbancesItemWithTitleKey:(id)a3 descriptionKey:(id)a4;
+ (id)_appleSleepingWristTemperatureInfographicForDisplayType:(id)a3;
+ (id)_appleSleepingWristTemperatureItemWithTitleKey:(id)a3 descriptionKey:(id)a4;
+ (id)_appleWalkingSteadinessInfographicForDisplayType:(id)a3;
+ (id)_attributedSymbolForAudioClassification:(unint64_t)a3 textStyle:(id)a4;
+ (id)_environmentalAudioExposureInfographic;
+ (id)_exposureLimitTextItem;
+ (id)_factorDescriptionForDisplayType:(id)a3 factorDisplayType:(id)a4;
+ (id)_headphoneAudioExposureInfographic;
+ (id)_itemForAppleWalkingSteadinessInfographicWithClassification:(int64_t)a3;
+ (id)_itemForAudioInfographicWithClassification:(unint64_t)a3 descriptionKey:(id)a4;
+ (id)_itemWithTitleKey:(id)a3 valueKey:(id)a4 hideSeparator:(BOOL)a5;
+ (id)_pregnancyHealthFactorDescriptionTitleKey:(id)a3 bodyKeys:(id)a4;
+ (id)_undefinedFactorDescriptionViewController:(id)a3 factorDisplayType:(id)a4;
+ (id)_whoExposureTextItem;
+ (id)infographicViewControllerForDisplayType:(id)a3 factorDisplayType:(id)a4 healthStore:(id)a5;
@end

@implementation HKInteractiveChartInfographicFactory

+ (BOOL)infographicSupportedForDisplayType:(id)a3 factorDisplayType:(id)a4 healthStore:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    do
    {
      v10 = v9;
      v9 = [v10 baseDisplayType];

      objc_opt_class();
    }

    while ((objc_opt_isKindOfClass() & 1) != 0);
  }

  if (v7)
  {
    v11 = [v9 hk_chartFactorDescriptionDisplayTypes];
    v12 = [v11 containsObject:v7];

    if ((v12 & 1) == 0)
    {
LABEL_10:
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v15 = _supportedDisplayTypes[v14];
      if (v15 == [v9 displayTypeIdentifier])
      {
        break;
      }

      if (++v14 == 5)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

+ (id)infographicViewControllerForDisplayType:(id)a3 factorDisplayType:(id)a4 healthStore:(id)a5
{
  v7 = a3;
  v8 = a4;
  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v9 = v7;
    v7 = [v9 baseDisplayType];
  }

  if ([v7 displayTypeIdentifier] == 172)
  {
    v10 = [a1 _environmentalAudioExposureInfographic];
  }

  else
  {
    v10 = 0;
  }

  if ([v7 displayTypeIdentifier] == 173)
  {
    v11 = [a1 _headphoneAudioExposureInfographic];

    v10 = v11;
  }

  if ([v7 displayTypeIdentifier] == 249)
  {
    v12 = [a1 _appleWalkingSteadinessInfographicForDisplayType:v7];

    v10 = v12;
  }

  if ([v7 displayTypeIdentifier] == 256)
  {
    v13 = [a1 _appleSleepingWristTemperatureInfographicForDisplayType:v7];

    v10 = v13;
  }

  if ([v7 displayTypeIdentifier] == 275)
  {
    v14 = [a1 _appleSleepingBreathingDisturbancesInfographicForDisplayType:v7];

    v10 = v14;
  }

  if (v8)
  {
    while (1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v15 = v8;
      v8 = [v15 baseDisplayType];
    }

    v16 = [a1 _factorDescriptionForDisplayType:v7 factorDisplayType:v8];

    v10 = v16;
  }

  if (v10)
  {
    v17 = [[HKModalNavigationController alloc] initWithRootViewController:v10];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_environmentalAudioExposureInfographic
{
  v18[10] = *MEMORY[0x1E69E9840];
  v17 = [a1 _itemForAudioInfographicWithClassification:1 descriptionKey:@"ENVIRONMENTAL_EXPOSURE_OK_DESCRIPTION"];
  v18[0] = v17;
  v3 = [a1 _itemForAudioInfographicWithClassification:2 descriptionKey:@"ENVIRONMENTAL_EXPOSURE_LOUD_DESCRIPTION"];
  v18[1] = v3;
  v4 = [a1 _exposureLimitTextItem];
  v18[2] = v4;
  v5 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_75" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_75"];
  v18[3] = v5;
  v6 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_80" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_80"];
  v18[4] = v6;
  v7 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_90" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_90"];
  v18[5] = v7;
  v8 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_100" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_100"];
  v18[6] = v8;
  v9 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_110" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_110"];
  v18[7] = v9;
  v10 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_120" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_120" hideSeparator:1];
  v18[8] = v10;
  v11 = [a1 _whoExposureTextItem];
  v18[9] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:10];

  v13 = [[HKInfographicViewController alloc] initWithItems:v12];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"SOUND_LEVEL_CLASSIFICATIONS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKInfographicViewController *)v13 setTitle:v15];

  return v13;
}

+ (id)_headphoneAudioExposureInfographic
{
  v18[10] = *MEMORY[0x1E69E9840];
  v17 = [a1 _itemForAudioInfographicWithClassification:1 descriptionKey:@"HEADPHONE_EXPOSURE_OK_DESCRIPTION"];
  v18[0] = v17;
  v3 = [a1 _itemForAudioInfographicWithClassification:2 descriptionKey:@"HEADPHONE_EXPOSURE_LOUD_DESCRIPTION"];
  v18[1] = v3;
  v4 = [a1 _exposureLimitTextItem];
  v18[2] = v4;
  v5 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_75" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_75"];
  v18[3] = v5;
  v6 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_80" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_80"];
  v18[4] = v6;
  v7 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_90" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_90"];
  v18[5] = v7;
  v8 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_100" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_100"];
  v18[6] = v8;
  v9 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_110" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_110"];
  v18[7] = v9;
  v10 = [a1 _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_120" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_120" hideSeparator:1];
  v18[8] = v10;
  v11 = [a1 _whoExposureTextItem];
  v18[9] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:10];

  v13 = [[HKInfographicViewController alloc] initWithItems:v12];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"SOUND_LEVEL_CLASSIFICATIONS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKInfographicViewController *)v13 setTitle:v15];

  return v13;
}

+ (id)_appleWalkingSteadinessInfographicForDisplayType:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _itemForAppleWalkingSteadinessInfographicWithClassification:1];
  v6 = [a1 _itemForAppleWalkingSteadinessInfographicWithClassification:{2, v5}];
  v13[1] = v6;
  v7 = [a1 _itemForAppleWalkingSteadinessInfographicWithClassification:3];
  v13[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v9 = [[HKInfographicViewController alloc] initWithItems:v8];
  v10 = [v4 localization];

  v11 = [v10 displayName];
  [(HKInfographicViewController *)v9 setTitle:v11];

  return v9;
}

+ (id)_appleSleepingWristTemperatureInfographicForDisplayType:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DC740];
  v5 = a3;
  v6 = [v4 plainButtonConfiguration];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SLEEPING_WRIST_TEMPERATURE_INFOGRAPHIC_LEARN_MORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  [v6 setTitle:v8];

  v9 = [[HKInfographicButtonItem alloc] initWithConfiguration:v6 buttonTapHandler:&__block_literal_global_52];
  v10 = [a1 _appleSleepingWristTemperatureItemWithTitleKey:@"SLEEPING_WRIST_TEMPERATURE_INFOGRAPHIC_YOUR_BASELINE_TITLE" descriptionKey:@"SLEEPING_WRIST_TEMPERATURE_INFOGRAPHIC_YOUR_BASELINE_BODY"];
  v11 = [a1 _appleSleepingWristTemperatureItemWithTitleKey:@"ESTABLISHING_BASELINE" descriptionKey:{@"SLEEPING_WRIST_TEMPERATURE_INFOGRAPHIC_ESTABLISHING_BASELINE_BODY", v10}];
  v17[1] = v11;
  v17[2] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];

  v13 = [[HKInfographicViewController alloc] initWithItems:v12];
  v14 = [v5 localization];

  v15 = [v14 displayName];
  [(HKInfographicViewController *)v13 setTitle:v15];

  return v13;
}

void __96__HKInteractiveChartInfographicFactory__appleSleepingWristTemperatureInfographicForDisplayType___block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v2 = [v1 localizedStringForKey:@"SLEEPING_WRIST_TEMPERATURE_KNOWLEDGE_BASE_ARTICLE_URL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  v4 = [v0 URLWithString:v2];

  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 openURL:v4 withOptions:0];
}

+ (id)_appleSleepingBreathingDisturbancesInfographicForDisplayType:(id)a3
{
  v19[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DC740];
  v5 = a3;
  v6 = [v4 plainButtonConfiguration];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_LEARN_MORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
  [v6 setTitle:v8];

  v9 = [[HKInfographicButtonItem alloc] initWithConfiguration:v6 buttonTapHandler:&__block_literal_global_392];
  v10 = [a1 _appleSleepingBreathingDisturbancesItemWithTitleKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_1_TITLE" descriptionKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_1_BODY"];
  v11 = [a1 _appleSleepingBreathingDisturbancesItemWithTitleKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_2_TITLE" descriptionKey:{@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_2_BODY", v10}];
  v19[1] = v11;
  v12 = [a1 _appleSleepingBreathingDisturbancesItemWithTitleKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_3_TITLE" descriptionKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_3_BODY"];
  v19[2] = v12;
  v13 = [a1 _appleSleepingBreathingDisturbancesItemWithTitleKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_4_TITLE" descriptionKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_4_BODY"];
  v19[3] = v13;
  v19[4] = v9;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];

  v15 = [[HKInfographicViewController alloc] initWithItems:v14];
  v16 = [v5 localization];

  v17 = [v16 displayName];
  [(HKInfographicViewController *)v15 setTitle:v17];

  return v15;
}

void __101__HKInteractiveChartInfographicFactory__appleSleepingBreathingDisturbancesInfographicForDisplayType___block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v2 = [v1 localizedStringForKey:@"SLEEP_BREATHING_DISTURBANCES_KNOWLEDGE_BASE_ARTICLE_URL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
  v4 = [v0 URLWithString:v2];

  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 openURL:v4 withOptions:0];
}

+ (id)_itemForAudioInfographicWithClassification:(unint64_t)a3 descriptionKey:(id)a4
{
  v6 = *MEMORY[0x1E69DDDC0];
  v7 = a4;
  v8 = [a1 _attributedSymbolForAudioClassification:a3 textStyle:v6];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x1E696BF20] localizedDisplayNameForClassification:a3];
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = [a1 _titleAttributes];
  v13 = [v11 initWithString:v10 attributes:v12];
  [v9 appendAttributedString:v13];

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v17 = [v14 initWithString:v16];
  v18 = [[HKInfographicContentItem alloc] initWithTitle:v9 description:v17];

  return v18;
}

+ (id)_exposureLimitTextItem
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"EXPOSURE_LIMIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11[0] = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  v12[0] = v5;
  v11[1] = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v2 initWithString:v4 attributes:v7];

  v9 = [[HKInfographicTextItem alloc] initWithDescription:v8];

  return v9;
}

+ (id)_whoExposureTextItem
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"EXPOSURE_WHO_RECOMMENDATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11[0] = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD30] symbolicTraits:2];
  v12[0] = v5;
  v11[1] = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v2 initWithString:v4 attributes:v7];

  v9 = [[HKInfographicTextItem alloc] initWithDescription:v8];

  return v9;
}

+ (id)_itemWithTitleKey:(id)a3 valueKey:(id)a4 hideSeparator:(BOOL)a5
{
  v21 = a5;
  v7 = MEMORY[0x1E696AAB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v13 = [a1 _tableTitleAttributes];
  v14 = [v10 initWithString:v12 attributes:v13];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:v8 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v18 = [v15 initWithString:v17];
  v19 = [[HKInfographicTableItem alloc] initWithTitle:v14 value:v18 separatorHidden:v21];

  return v19;
}

+ (id)_attributedSymbolForAudioClassification:(unint64_t)a3 textStyle:(id)a4
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a4];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];
  v9 = [v5 hk_hearingHealthAudioExposureSymbolForClassification:a3 font:v8];

  v10 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v9];
  v11 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v12 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  [v11 appendAttributedString:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v11 appendAttributedString:v13];

  v14 = *MEMORY[0x1E69DB650];
  v15 = [MEMORY[0x1E69DC888] hk_hearingHealthAudioExposureColorForClassification:a3];
  [v11 addAttribute:v14 value:v15 range:{0, objc_msgSend(v11, "length")}];

  v16 = [v11 copy];

  return v16;
}

+ (id)_itemForAppleWalkingSteadinessInfographicWithClassification:(int64_t)a3
{
  v5 = [HKMobilityUtilities localizedTitleForClassification:?];
  v6 = [HKMobilityUtilities localizedDescriptionForClassification:a3];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = [a1 _titleAttributes];
  v9 = [v7 initWithString:v5 attributes:v8];

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
  v11 = [[HKInfographicContentItem alloc] initWithTitle:v9 description:v10];

  return v11;
}

+ (id)_appleSleepingWristTemperatureItemWithTitleKey:(id)a3 descriptionKey:(id)a4
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22[0] = *MEMORY[0x1E69DB648];
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDDC0];
  v21 = a4;
  v7 = a3;
  v8 = [v5 _preferredFontForTextStyle:v6 variant:66560];
  v23[0] = v8;
  v22[1] = *MEMORY[0x1E69DB650];
  v9 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v23[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

  v14 = [v11 initWithString:v13 attributes:v10];
  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:v21 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

  v18 = [v15 initWithString:v17];
  v19 = [[HKInfographicContentItem alloc] initWithTitle:v14 description:v18];

  return v19;
}

+ (id)_appleSleepingBreathingDisturbancesItemWithTitleKey:(id)a3 descriptionKey:(id)a4
{
  v6 = MEMORY[0x1E696AAB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:v8 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];

  v12 = [a1 _titleAttributes];
  v13 = [v9 initWithString:v11 attributes:v12];

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];

  v17 = [v14 initWithString:v16];
  v18 = [[HKInfographicContentItem alloc] initWithTitle:v13 description:v17];

  return v18;
}

+ (id)_factorDescriptionForDisplayType:(id)a3 factorDisplayType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 displayTypeIdentifier];
  if (v8 > 136)
  {
    if (v8 == 137)
    {
      if ([v7 displayTypeIdentifier] == 191)
      {
        v9 = @"WALKING_HEARTRATE_PREGNANCY_TITLE";
        v10 = &unk_1F4381360;
        goto LABEL_20;
      }
    }

    else if (v8 == 248)
    {
      if ([v7 displayTypeIdentifier] == 191)
      {
        v9 = @"AFIB_BURDEN_PREGNANCY_TITLE";
        v10 = &unk_1F4381390;
        goto LABEL_20;
      }
    }

    else if (v8 == 284 && [v7 displayTypeIdentifier] == 191)
    {
      v9 = @"STATE_OF_MIND_PREGNANCY_TITLE";
      v10 = &unk_1F43813A8;
      goto LABEL_20;
    }
  }

  else if (v8 == 3)
  {
    if ([v7 displayTypeIdentifier] == 191)
    {
      v9 = @"BODY_MASS_PREGNANCY_TITLE";
      v10 = &unk_1F4381330;
      goto LABEL_20;
    }
  }

  else if (v8 == 118)
  {
    if ([v7 displayTypeIdentifier] == 191)
    {
      v9 = @"RESTING_HEARTRATE_PREGNANCY_TITLE";
      v10 = &unk_1F4381348;
      goto LABEL_20;
    }
  }

  else if (v8 == 124 && [v7 displayTypeIdentifier] == 191)
  {
    v9 = @"CARDIO_FITNESS_PREGNANCY_TITLE";
    v10 = &unk_1F4381378;
LABEL_20:
    v11 = [a1 _pregnancyHealthFactorDescriptionTitleKey:v9 bodyKeys:v10];
    goto LABEL_22;
  }

  v11 = [a1 _undefinedFactorDescriptionViewController:v6 factorDisplayType:v7];
LABEL_22:
  v12 = v11;

  return v12;
}

+ (id)_undefinedFactorDescriptionViewController:(id)a3 factorDisplayType:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AAB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [a1 _tableTitleAttributes];
  v11 = [v9 initWithString:@"Undefined Factor Description" attributes:v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v8 localization];

  v14 = [v13 displayName];
  v15 = [v7 localization];

  v16 = [v15 displayName];
  v17 = [v12 stringWithFormat:@"No description is available for %@ with the factor %@.", v14, v16];

  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17];
  v19 = [[HKInfographicContentItem alloc] initWithTitle:v11 description:v18];
  v25[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

  v21 = [[HKInfographicViewController alloc] initWithItems:v20];
  v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v23 = [v22 localizedStringForKey:@"LIFE_FACTOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
  [(HKInfographicViewController *)v21 setTitle:v23];

  return v21;
}

+ (id)_pregnancyHealthFactorDescriptionTitleKey:(id)a3 bodyKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pregnancy"];

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = [a1 _titleAttributes];
  v12 = [v10 initWithString:v9 attributes:v11];

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 1;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __91__HKInteractiveChartInfographicFactory__pregnancyHealthFactorDescriptionTitleKey_bodyKeys___block_invoke;
  v23 = &unk_1E81B8DF8;
  v25 = v26;
  v13 = v12;
  v24 = v13;
  v14 = [v7 hk_map:&v20];
  v15 = [HKInfographicViewController alloc];
  v16 = [(HKInfographicViewController *)v15 initWithItems:v14, v20, v21, v22, v23];
  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:@"LIFE_FACTOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
  [(HKInfographicViewController *)v16 setTitle:v18];

  _Block_object_dispose(v26, 8);

  return v16;
}

HKInfographicContentItem *__91__HKInteractiveChartInfographicFactory__pregnancyHealthFactorDescriptionTitleKey_bodyKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pregnancy"];

  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) == 1)
  {
    *(v8 + 24) = 0;
    v9 = [[HKInfographicContentItem alloc] initWithTitle:*(a1 + 32) description:v7];
  }

  else
  {
    v9 = [[HKInfographicTextItem alloc] initWithDescription:v7];
  }

  v10 = v9;

  return v10;
}

@end