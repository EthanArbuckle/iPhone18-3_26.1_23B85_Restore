@interface NTKNumeralEditOption
+ (BOOL)isPartiallySupported:(unint64_t)supported;
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)defaultOptionForDevice:(id)device;
+ (id)partiallySupportedEditOptionsForDevice:(id)device;
+ (id)partiallySupportedOptions;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)styleForSwatchTimeLabelWithFont:(id)font device:(id)device baseline:(double)baseline faceBounds:(CGRect)bounds;
- (id)swatchImageWithFont:(id)font device:(id)device baseline:(double)baseline;
@end

@implementation NTKNumeralEditOption

+ (id)defaultOptionForDevice:(id)device
{
  deviceCopy = device;
  v4 = CLKLocaleCurrentNumberSystem();
  v5 = [NTKNumeralEditOption optionWithNumeral:NTKNumeralOptionFromCLKLocaleNumberSystem(v4) forDevice:deviceCopy];

  return v5;
}

id __48__NTKNumeralEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_29);
  if (_block_invoke___cachedDevice_29)
  {
    v3 = _block_invoke___cachedDevice_29 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_29))
  {
    _block_invoke___cachedDevice_29 = v2;
    _block_invoke___previousCLKDeviceVersion_29 = [v2 version];
    v5 = __48__NTKNumeralEditOption__orderedValuesForDevice___block_invoke_2(_block_invoke___previousCLKDeviceVersion_29, v2);
    v6 = _block_invoke_value_19;
    _block_invoke_value_19 = v5;
  }

  v7 = _block_invoke_value_19;
  os_unfair_lock_unlock(&_block_invoke_lock_29);

  return v7;
}

id __48__NTKNumeralEditOption__orderedValuesForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = _EnumValueRange(0, 2uLL);
  v5 = _EnumValueRange(3uLL, 0xEuLL);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = +[NTKNumeralEditOption _localizedNameForValue:forDevice:](NTKNumeralEditOption, "_localizedNameForValue:forDevice:", [v10 unsignedIntegerValue], v2);
        [v3 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v7);
  }

  v12 = [v3 allKeys];
  v13 = [v12 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 addObject:*(*(&v32 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v13;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [v3 objectForKeyedSubscript:{*(*(&v28 + 1) + 8 * k), v28}];
        if (v25)
        {
          [v14 addObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v22);
  }

  v26 = [v14 copy];

  return v26;
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_0 != -1)
  {
    [NTKNumeralEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_0;

  return v3;
}

void __52__NTKNumeralEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[15] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284182BC0;
  v2[1] = &unk_284182BD8;
  v3[0] = @"style 1";
  v3[1] = @"style 2";
  v2[2] = &unk_284182BF0;
  v2[3] = &unk_284182C08;
  v3[2] = @"style 3";
  v3[3] = @"style 4";
  v2[4] = &unk_284182C20;
  v2[5] = &unk_284182C38;
  v3[4] = @"style 5";
  v3[5] = @"style 6";
  v2[6] = &unk_284182C50;
  v2[7] = &unk_284182C68;
  v3[6] = @"style 7";
  v3[7] = @"style 8";
  v2[8] = &unk_284182C80;
  v2[9] = &unk_284182C98;
  v3[8] = @"style 9";
  v3[9] = @"style 10";
  v2[10] = &unk_284182CB0;
  v2[11] = &unk_284182CC8;
  v3[10] = @"style 11";
  v3[11] = @"style 12";
  v2[12] = &unk_284182CE0;
  v2[13] = &unk_284182CF8;
  v3[12] = @"style 13";
  v3[13] = @"style 14";
  v2[14] = &unk_284182D10;
  v3[14] = @"style 15";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:15];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_0;
  _valueToFaceBundleStringDict_valueToFaceBundleString_0 = v0;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = CLKLocaleNumberSystemFromNumeralOption(value);

  return MEMORY[0x28210D9E0](v4);
}

- (id)localizedName
{
  numeralOption = [(NTKNumeralEditOption *)self numeralOption];
  device = [(NTKEditOption *)self device];
  v5 = [NTKNumeralEditOption _localizedNameForValue:numeralOption forDevice:device];

  return v5;
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    v6 = [deviceCopy supportsPDRCapability:270936181];
  }

  else
  {
    v6 = 0;
  }

  v7 = @"EDIT_OPTION_LABEL_NUMERAL_DEVANAGARI";
  switch(value)
  {
    case 0uLL:
      v8 = @"EDIT_OPTION_LABEL_NUMERAL_LATIN_COMPATIBILITY";
      v9 = @"EDIT_OPTION_LABEL_NUMERAL_LATIN";
      goto LABEL_12;
    case 1uLL:
      v8 = @"EDIT_OPTION_LABEL_NUMERAL_ARABIC_INDIC_COMPATIBILITY";
      v9 = @"EDIT_OPTION_LABEL_NUMERAL_ARABIC_INDIC";
LABEL_12:
      if (v6)
      {
        v7 = v9;
      }

      else
      {
        v7 = v8;
      }

      goto LABEL_23;
    case 2uLL:
      goto LABEL_23;
    case 3uLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_BENGALI";
      goto LABEL_23;
    case 4uLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_GURMUKHI";
      goto LABEL_23;
    case 5uLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_GUJARATI";
      goto LABEL_23;
    case 6uLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_TELUGU";
      goto LABEL_23;
    case 7uLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_MALAYALAM";
      goto LABEL_23;
    case 8uLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_KANNADA";
      goto LABEL_23;
    case 9uLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_ODIA";
      goto LABEL_23;
    case 0xAuLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_Ol_CHIKI";
      goto LABEL_23;
    case 0xBuLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_URDU";
      goto LABEL_23;
    case 0xCuLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_MEITEI";
      goto LABEL_23;
    case 0xDuLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_BURMESE";
      goto LABEL_23;
    case 0xEuLL:
      v7 = @"EDIT_OPTION_LABEL_NUMERAL_KHMER";
LABEL_23:
      v11 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
      v10 = NTKCompanionClockFaceLocalizedString(v11, @"Numerals");

      break;
    default:
      v10 = &stru_284110E98;
      break;
  }

  return v10;
}

- (id)swatchImageWithFont:(id)font device:(id)device baseline:(double)baseline
{
  deviceCopy = device;
  fontCopy = font;
  [NTKEditOption sizeForSwatchStyle:[(NTKNumeralEditOption *)self swatchStyle]];
  v11 = v10;
  v13 = v12;
  v14 = [fontCopy fontWithSize:22.0];

  device = [(NTKEditOption *)self device];
  v16 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:1 forDevice:device];

  v17 = CLKLocaleNumberSystemFromNumeralOption([(NTKNumeralEditOption *)self numeralOption]);
  [v16 setUsesLegibility:1];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v16 setTextColor:whiteColor];

  v19 = +[NTKTimeOffsetManager sharedManager];
  [v19 timeOffset];
  [v16 setTimeOffset:?];

  v20 = NTKIdealizedDate();
  [v16 setOverrideDate:v20 duration:0.0];

  [v16 setForcedNumberSystem:v17];
  v21 = [(NTKNumeralEditOption *)self styleForSwatchTimeLabelWithFont:v14 device:deviceCopy baseline:baseline faceBounds:0.0, 0.0, v11, v13];

  [v16 setStyle:v21];
  [v16 sizeToFit];
  v22 = objc_alloc(MEMORY[0x277D75D18]);
  v23 = [v22 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v23 setBounds:{0.0, 0.0, v11, v13}];
  [v23 addSubview:v16];
  [v23 bounds];
  MidX = CGRectGetMidX(v32);
  [v23 bounds];
  [v16 setCenter:{MidX, CGRectGetMidY(v33)}];
  v25 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:{0.0, 0.0, v11, v13}];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__NTKNumeralEditOption_swatchImageWithFont_device_baseline___block_invoke;
  v29[3] = &unk_2787820A8;
  v30 = v23;
  v26 = v23;
  v27 = [v25 imageWithActions:v29];

  return v27;
}

void __60__NTKNumeralEditOption_swatchImageWithFont_device_baseline___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

- (id)styleForSwatchTimeLabelWithFont:(id)font device:(id)device baseline:(double)baseline faceBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v7 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:font applyAdvanceFudge:device withBaselineY:bounds.origin.x withFont:bounds.origin.y forDevice:bounds.size.width, bounds.size.height, 0.0, round(bounds.size.height * baseline)];
  layoutRule = [v7 layoutRule];
  [layoutRule referenceFrame];
  v10 = v9;
  v12 = v11;

  layoutRule2 = [v7 layoutRule];
  [layoutRule2 setReferenceFrame:{0.0, v10, width, v12}];

  layoutRule3 = [v7 layoutRule];
  [layoutRule3 setHorizontalLayout:1];

  return v7;
}

+ (id)partiallySupportedEditOptionsForDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = _EnumValueRange(3uLL, 0xEuLL);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_opt_class() optionWithNumeral:objc_msgSend(*(*(&v12 + 1) + 8 * i) forDevice:{"intValue", v12), deviceCopy}];
        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)partiallySupportedOptions
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = _EnumValueRange(3uLL, 0xEuLL);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        intValue = [*(*(&v11 + 1) + 8 * i) intValue];
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue];
        [array addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return array;
}

+ (BOOL)isPartiallySupported:(unint64_t)supported
{
  v4 = +[NTKNumeralEditOption partiallySupportedOptions];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:supported];
  v6 = [v4 containsObject:v5];

  return v6;
}

@end