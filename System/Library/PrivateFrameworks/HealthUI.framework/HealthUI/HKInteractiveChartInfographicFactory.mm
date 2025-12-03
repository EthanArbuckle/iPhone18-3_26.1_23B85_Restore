@interface HKInteractiveChartInfographicFactory
+ (BOOL)infographicSupportedForDisplayType:(id)type factorDisplayType:(id)displayType healthStore:(id)store;
+ (id)_appleSleepingBreathingDisturbancesInfographicForDisplayType:(id)type;
+ (id)_appleSleepingBreathingDisturbancesItemWithTitleKey:(id)key descriptionKey:(id)descriptionKey;
+ (id)_appleSleepingWristTemperatureInfographicForDisplayType:(id)type;
+ (id)_appleSleepingWristTemperatureItemWithTitleKey:(id)key descriptionKey:(id)descriptionKey;
+ (id)_appleWalkingSteadinessInfographicForDisplayType:(id)type;
+ (id)_attributedSymbolForAudioClassification:(unint64_t)classification textStyle:(id)style;
+ (id)_environmentalAudioExposureInfographic;
+ (id)_exposureLimitTextItem;
+ (id)_factorDescriptionForDisplayType:(id)type factorDisplayType:(id)displayType;
+ (id)_headphoneAudioExposureInfographic;
+ (id)_itemForAppleWalkingSteadinessInfographicWithClassification:(int64_t)classification;
+ (id)_itemForAudioInfographicWithClassification:(unint64_t)classification descriptionKey:(id)key;
+ (id)_itemWithTitleKey:(id)key valueKey:(id)valueKey hideSeparator:(BOOL)separator;
+ (id)_pregnancyHealthFactorDescriptionTitleKey:(id)key bodyKeys:(id)keys;
+ (id)_undefinedFactorDescriptionViewController:(id)controller factorDisplayType:(id)type;
+ (id)_whoExposureTextItem;
+ (id)infographicViewControllerForDisplayType:(id)type factorDisplayType:(id)displayType healthStore:(id)store;
@end

@implementation HKInteractiveChartInfographicFactory

+ (BOOL)infographicSupportedForDisplayType:(id)type factorDisplayType:(id)displayType healthStore:(id)store
{
  typeCopy = type;
  displayTypeCopy = displayType;
  v8 = typeCopy;
  objc_opt_class();
  baseDisplayType = v8;
  if (objc_opt_isKindOfClass())
  {
    baseDisplayType = v8;
    do
    {
      v10 = baseDisplayType;
      baseDisplayType = [v10 baseDisplayType];

      objc_opt_class();
    }

    while ((objc_opt_isKindOfClass() & 1) != 0);
  }

  if (displayTypeCopy)
  {
    hk_chartFactorDescriptionDisplayTypes = [baseDisplayType hk_chartFactorDescriptionDisplayTypes];
    v12 = [hk_chartFactorDescriptionDisplayTypes containsObject:displayTypeCopy];

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
      if (v15 == [baseDisplayType displayTypeIdentifier])
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

+ (id)infographicViewControllerForDisplayType:(id)type factorDisplayType:(id)displayType healthStore:(id)store
{
  typeCopy = type;
  displayTypeCopy = displayType;
  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v9 = typeCopy;
    typeCopy = [v9 baseDisplayType];
  }

  if ([typeCopy displayTypeIdentifier] == 172)
  {
    _environmentalAudioExposureInfographic = [self _environmentalAudioExposureInfographic];
  }

  else
  {
    _environmentalAudioExposureInfographic = 0;
  }

  if ([typeCopy displayTypeIdentifier] == 173)
  {
    _headphoneAudioExposureInfographic = [self _headphoneAudioExposureInfographic];

    _environmentalAudioExposureInfographic = _headphoneAudioExposureInfographic;
  }

  if ([typeCopy displayTypeIdentifier] == 249)
  {
    v12 = [self _appleWalkingSteadinessInfographicForDisplayType:typeCopy];

    _environmentalAudioExposureInfographic = v12;
  }

  if ([typeCopy displayTypeIdentifier] == 256)
  {
    v13 = [self _appleSleepingWristTemperatureInfographicForDisplayType:typeCopy];

    _environmentalAudioExposureInfographic = v13;
  }

  if ([typeCopy displayTypeIdentifier] == 275)
  {
    v14 = [self _appleSleepingBreathingDisturbancesInfographicForDisplayType:typeCopy];

    _environmentalAudioExposureInfographic = v14;
  }

  if (displayTypeCopy)
  {
    while (1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v15 = displayTypeCopy;
      displayTypeCopy = [v15 baseDisplayType];
    }

    v16 = [self _factorDescriptionForDisplayType:typeCopy factorDisplayType:displayTypeCopy];

    _environmentalAudioExposureInfographic = v16;
  }

  if (_environmentalAudioExposureInfographic)
  {
    v17 = [[HKModalNavigationController alloc] initWithRootViewController:_environmentalAudioExposureInfographic];
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
  v17 = [self _itemForAudioInfographicWithClassification:1 descriptionKey:@"ENVIRONMENTAL_EXPOSURE_OK_DESCRIPTION"];
  v18[0] = v17;
  v3 = [self _itemForAudioInfographicWithClassification:2 descriptionKey:@"ENVIRONMENTAL_EXPOSURE_LOUD_DESCRIPTION"];
  v18[1] = v3;
  _exposureLimitTextItem = [self _exposureLimitTextItem];
  v18[2] = _exposureLimitTextItem;
  v5 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_75" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_75"];
  v18[3] = v5;
  v6 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_80" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_80"];
  v18[4] = v6;
  v7 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_90" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_90"];
  v18[5] = v7;
  v8 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_100" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_100"];
  v18[6] = v8;
  v9 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_110" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_110"];
  v18[7] = v9;
  v10 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_120" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_120" hideSeparator:1];
  v18[8] = v10;
  _whoExposureTextItem = [self _whoExposureTextItem];
  v18[9] = _whoExposureTextItem;
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
  v17 = [self _itemForAudioInfographicWithClassification:1 descriptionKey:@"HEADPHONE_EXPOSURE_OK_DESCRIPTION"];
  v18[0] = v17;
  v3 = [self _itemForAudioInfographicWithClassification:2 descriptionKey:@"HEADPHONE_EXPOSURE_LOUD_DESCRIPTION"];
  v18[1] = v3;
  _exposureLimitTextItem = [self _exposureLimitTextItem];
  v18[2] = _exposureLimitTextItem;
  v5 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_75" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_75"];
  v18[3] = v5;
  v6 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_80" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_80"];
  v18[4] = v6;
  v7 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_90" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_90"];
  v18[5] = v7;
  v8 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_100" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_100"];
  v18[6] = v8;
  v9 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_110" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_110"];
  v18[7] = v9;
  v10 = [self _itemWithTitleKey:@"EXPOSURE_EXAMPLE_QUANTITY_120" valueKey:@"EXPOSURE_EXAMPLE_DESCRIPTION_120" hideSeparator:1];
  v18[8] = v10;
  _whoExposureTextItem = [self _whoExposureTextItem];
  v18[9] = _whoExposureTextItem;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:10];

  v13 = [[HKInfographicViewController alloc] initWithItems:v12];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"SOUND_LEVEL_CLASSIFICATIONS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKInfographicViewController *)v13 setTitle:v15];

  return v13;
}

+ (id)_appleWalkingSteadinessInfographicForDisplayType:(id)type
{
  v13[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = [self _itemForAppleWalkingSteadinessInfographicWithClassification:1];
  v6 = [self _itemForAppleWalkingSteadinessInfographicWithClassification:{2, v5}];
  v13[1] = v6;
  v7 = [self _itemForAppleWalkingSteadinessInfographicWithClassification:3];
  v13[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v9 = [[HKInfographicViewController alloc] initWithItems:v8];
  localization = [typeCopy localization];

  displayName = [localization displayName];
  [(HKInfographicViewController *)v9 setTitle:displayName];

  return v9;
}

+ (id)_appleSleepingWristTemperatureInfographicForDisplayType:(id)type
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DC740];
  typeCopy = type;
  plainButtonConfiguration = [v4 plainButtonConfiguration];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SLEEPING_WRIST_TEMPERATURE_INFOGRAPHIC_LEARN_MORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  [plainButtonConfiguration setTitle:v8];

  v9 = [[HKInfographicButtonItem alloc] initWithConfiguration:plainButtonConfiguration buttonTapHandler:&__block_literal_global_52];
  v10 = [self _appleSleepingWristTemperatureItemWithTitleKey:@"SLEEPING_WRIST_TEMPERATURE_INFOGRAPHIC_YOUR_BASELINE_TITLE" descriptionKey:@"SLEEPING_WRIST_TEMPERATURE_INFOGRAPHIC_YOUR_BASELINE_BODY"];
  v11 = [self _appleSleepingWristTemperatureItemWithTitleKey:@"ESTABLISHING_BASELINE" descriptionKey:{@"SLEEPING_WRIST_TEMPERATURE_INFOGRAPHIC_ESTABLISHING_BASELINE_BODY", v10}];
  v17[1] = v11;
  v17[2] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];

  v13 = [[HKInfographicViewController alloc] initWithItems:v12];
  localization = [typeCopy localization];

  displayName = [localization displayName];
  [(HKInfographicViewController *)v13 setTitle:displayName];

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

+ (id)_appleSleepingBreathingDisturbancesInfographicForDisplayType:(id)type
{
  v19[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DC740];
  typeCopy = type;
  plainButtonConfiguration = [v4 plainButtonConfiguration];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_LEARN_MORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
  [plainButtonConfiguration setTitle:v8];

  v9 = [[HKInfographicButtonItem alloc] initWithConfiguration:plainButtonConfiguration buttonTapHandler:&__block_literal_global_392];
  v10 = [self _appleSleepingBreathingDisturbancesItemWithTitleKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_1_TITLE" descriptionKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_1_BODY"];
  v11 = [self _appleSleepingBreathingDisturbancesItemWithTitleKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_2_TITLE" descriptionKey:{@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_2_BODY", v10}];
  v19[1] = v11;
  v12 = [self _appleSleepingBreathingDisturbancesItemWithTitleKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_3_TITLE" descriptionKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_3_BODY"];
  v19[2] = v12;
  v13 = [self _appleSleepingBreathingDisturbancesItemWithTitleKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_4_TITLE" descriptionKey:@"SLEEP_BREATHING_DISTURBANCES_INFOGRAPHIC_SECTION_4_BODY"];
  v19[3] = v13;
  v19[4] = v9;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];

  v15 = [[HKInfographicViewController alloc] initWithItems:v14];
  localization = [typeCopy localization];

  displayName = [localization displayName];
  [(HKInfographicViewController *)v15 setTitle:displayName];

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

+ (id)_itemForAudioInfographicWithClassification:(unint64_t)classification descriptionKey:(id)key
{
  v6 = *MEMORY[0x1E69DDDC0];
  keyCopy = key;
  v8 = [self _attributedSymbolForAudioClassification:classification textStyle:v6];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x1E696BF20] localizedDisplayNameForClassification:classification];
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  _titleAttributes = [self _titleAttributes];
  v13 = [v11 initWithString:v10 attributes:_titleAttributes];
  [v9 appendAttributedString:v13];

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:keyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

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
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v12[1] = hk_chartLollipopValueColor;
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
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12[1] = secondaryLabelColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v2 initWithString:v4 attributes:v7];

  v9 = [[HKInfographicTextItem alloc] initWithDescription:v8];

  return v9;
}

+ (id)_itemWithTitleKey:(id)key valueKey:(id)valueKey hideSeparator:(BOOL)separator
{
  separatorCopy = separator;
  v7 = MEMORY[0x1E696AAB0];
  valueKeyCopy = valueKey;
  keyCopy = key;
  v10 = [v7 alloc];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:keyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  _tableTitleAttributes = [self _tableTitleAttributes];
  v14 = [v10 initWithString:v12 attributes:_tableTitleAttributes];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:valueKeyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v18 = [v15 initWithString:v17];
  v19 = [[HKInfographicTableItem alloc] initWithTitle:v14 value:v18 separatorHidden:separatorCopy];

  return v19;
}

+ (id)_attributedSymbolForAudioClassification:(unint64_t)classification textStyle:(id)style
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:style];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];
  v9 = [v5 hk_hearingHealthAudioExposureSymbolForClassification:classification font:v8];

  v10 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v9];
  v11 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v12 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  [v11 appendAttributedString:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v11 appendAttributedString:v13];

  v14 = *MEMORY[0x1E69DB650];
  v15 = [MEMORY[0x1E69DC888] hk_hearingHealthAudioExposureColorForClassification:classification];
  [v11 addAttribute:v14 value:v15 range:{0, objc_msgSend(v11, "length")}];

  v16 = [v11 copy];

  return v16;
}

+ (id)_itemForAppleWalkingSteadinessInfographicWithClassification:(int64_t)classification
{
  v5 = [HKMobilityUtilities localizedTitleForClassification:?];
  v6 = [HKMobilityUtilities localizedDescriptionForClassification:classification];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  _titleAttributes = [self _titleAttributes];
  v9 = [v7 initWithString:v5 attributes:_titleAttributes];

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
  v11 = [[HKInfographicContentItem alloc] initWithTitle:v9 description:v10];

  return v11;
}

+ (id)_appleSleepingWristTemperatureItemWithTitleKey:(id)key descriptionKey:(id)descriptionKey
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22[0] = *MEMORY[0x1E69DB648];
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDDC0];
  descriptionKeyCopy = descriptionKey;
  keyCopy = key;
  v8 = [v5 _preferredFontForTextStyle:v6 variant:66560];
  v23[0] = v8;
  v22[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v23[1] = hk_chartLollipopValueColor;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:keyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

  v14 = [v11 initWithString:v13 attributes:v10];
  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:descriptionKeyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

  v18 = [v15 initWithString:v17];
  v19 = [[HKInfographicContentItem alloc] initWithTitle:v14 description:v18];

  return v19;
}

+ (id)_appleSleepingBreathingDisturbancesItemWithTitleKey:(id)key descriptionKey:(id)descriptionKey
{
  v6 = MEMORY[0x1E696AAB0];
  descriptionKeyCopy = descriptionKey;
  keyCopy = key;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:keyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];

  _titleAttributes = [self _titleAttributes];
  v13 = [v9 initWithString:v11 attributes:_titleAttributes];

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:descriptionKeyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];

  v17 = [v14 initWithString:v16];
  v18 = [[HKInfographicContentItem alloc] initWithTitle:v13 description:v17];

  return v18;
}

+ (id)_factorDescriptionForDisplayType:(id)type factorDisplayType:(id)displayType
{
  typeCopy = type;
  displayTypeCopy = displayType;
  displayTypeIdentifier = [typeCopy displayTypeIdentifier];
  if (displayTypeIdentifier > 136)
  {
    if (displayTypeIdentifier == 137)
    {
      if ([displayTypeCopy displayTypeIdentifier] == 191)
      {
        v9 = @"WALKING_HEARTRATE_PREGNANCY_TITLE";
        v10 = &unk_1F4381360;
        goto LABEL_20;
      }
    }

    else if (displayTypeIdentifier == 248)
    {
      if ([displayTypeCopy displayTypeIdentifier] == 191)
      {
        v9 = @"AFIB_BURDEN_PREGNANCY_TITLE";
        v10 = &unk_1F4381390;
        goto LABEL_20;
      }
    }

    else if (displayTypeIdentifier == 284 && [displayTypeCopy displayTypeIdentifier] == 191)
    {
      v9 = @"STATE_OF_MIND_PREGNANCY_TITLE";
      v10 = &unk_1F43813A8;
      goto LABEL_20;
    }
  }

  else if (displayTypeIdentifier == 3)
  {
    if ([displayTypeCopy displayTypeIdentifier] == 191)
    {
      v9 = @"BODY_MASS_PREGNANCY_TITLE";
      v10 = &unk_1F4381330;
      goto LABEL_20;
    }
  }

  else if (displayTypeIdentifier == 118)
  {
    if ([displayTypeCopy displayTypeIdentifier] == 191)
    {
      v9 = @"RESTING_HEARTRATE_PREGNANCY_TITLE";
      v10 = &unk_1F4381348;
      goto LABEL_20;
    }
  }

  else if (displayTypeIdentifier == 124 && [displayTypeCopy displayTypeIdentifier] == 191)
  {
    v9 = @"CARDIO_FITNESS_PREGNANCY_TITLE";
    v10 = &unk_1F4381378;
LABEL_20:
    v11 = [self _pregnancyHealthFactorDescriptionTitleKey:v9 bodyKeys:v10];
    goto LABEL_22;
  }

  v11 = [self _undefinedFactorDescriptionViewController:typeCopy factorDisplayType:displayTypeCopy];
LABEL_22:
  v12 = v11;

  return v12;
}

+ (id)_undefinedFactorDescriptionViewController:(id)controller factorDisplayType:(id)type
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AAB0];
  typeCopy = type;
  controllerCopy = controller;
  v9 = [v6 alloc];
  _tableTitleAttributes = [self _tableTitleAttributes];
  v11 = [v9 initWithString:@"Undefined Factor Description" attributes:_tableTitleAttributes];

  v12 = MEMORY[0x1E696AEC0];
  localization = [controllerCopy localization];

  displayName = [localization displayName];
  localization2 = [typeCopy localization];

  displayName2 = [localization2 displayName];
  v17 = [v12 stringWithFormat:@"No description is available for %@ with the factor %@.", displayName, displayName2];

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

+ (id)_pregnancyHealthFactorDescriptionTitleKey:(id)key bodyKeys:(id)keys
{
  keyCopy = key;
  keysCopy = keys;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:keyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pregnancy"];

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  _titleAttributes = [self _titleAttributes];
  v12 = [v10 initWithString:v9 attributes:_titleAttributes];

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
  v14 = [keysCopy hk_map:&v20];
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