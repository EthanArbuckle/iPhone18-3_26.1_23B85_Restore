@interface NSFormatter(HFCharacteristicValueFormatting)
+ (HFFormatterTransformer)_hf_microgramsPerMeterCubedFormatter;
+ (HFFormatterTransformer)_hf_partsPerMillionFormatter;
+ (HFFormatterTransformer)hf_controlDescriptionFormatterForCharacteristicType:()HFCharacteristicValueFormatting withMetadata:options:form:;
+ (id)_hf_airParticulateSizeFormatter;
+ (id)_hf_airQualityFormatter;
+ (id)_hf_configurationStateFormatter;
+ (id)_hf_contactStateStateFormatter;
+ (id)_hf_controlDescriptionForDetectionCharacteristicOfType:()HFCharacteristicValueFormatting withValue:valueDescription:form:;
+ (id)_hf_controlTitleForCharacteristicType:()HFCharacteristicValueFormatting;
+ (id)_hf_currentAirPurifierStateFormatter;
+ (id)_hf_currentSecuritySystemStateFormatter;
+ (id)_hf_customValueFormatterForCharacteristicType:()HFCharacteristicValueFormatting metadata:options:;
+ (id)_hf_doorStateFormatter;
+ (id)_hf_heatingCoolingFormatter;
+ (id)_hf_lockMechanismStateFormatter;
+ (id)_hf_percentFormatterForMetadata:()HFCharacteristicValueFormatting;
+ (id)_hf_positionFormatterWithMetadata:()HFCharacteristicValueFormatting options:;
+ (id)_hf_positionStateFormatter;
+ (id)_hf_powerStateFormatter;
+ (id)_hf_rotationDirectionFormatter;
+ (id)_hf_targetSecuritySystemStateFormatter;
+ (id)_hf_temperatureUnitFormatter;
+ (id)_hf_valueFormatterForCharacteristicMetadata:()HFCharacteristicValueFormatting options:;
+ (id)_hf_valueSetFormatterForCharacteristicType:()HFCharacteristicValueFormatting options:;
+ (id)hf_controlDescriptionFormatterForCharacteristic:()HFCharacteristicValueFormatting options:form:;
+ (id)hf_valueFormatterForCharacteristic:()HFCharacteristicValueFormatting options:;
+ (id)hf_valueFormatterForCharacteristicType:()HFCharacteristicValueFormatting withMetadata:options:;
@end

@implementation NSFormatter(HFCharacteristicValueFormatting)

+ (id)hf_valueFormatterForCharacteristic:()HFCharacteristicValueFormatting options:
{
  v6 = a4;
  v7 = a3;
  characteristicType = [v7 characteristicType];
  metadata = [v7 metadata];

  v10 = [self hf_valueFormatterForCharacteristicType:characteristicType withMetadata:metadata options:v6];

  return v10;
}

+ (id)hf_valueFormatterForCharacteristicType:()HFCharacteristicValueFormatting withMetadata:options:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    NSLog(&cfstr_NoCharacterist_1.isa);
  }

  v11 = [self _hf_customValueFormatterForCharacteristicType:v8 metadata:v9 options:v10];
  if (!v11)
  {
    v11 = [self _hf_valueFormatterForCharacteristicMetadata:v9 options:v10];
  }

  return v11;
}

+ (id)_hf_customValueFormatterForCharacteristicType:()HFCharacteristicValueFormatting metadata:options:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [self _hf_valueSetFormatterForCharacteristicType:v8 options:v10];
  if (v11)
  {
    v12 = v11;
    goto LABEL_23;
  }

  if (_MergedGlobals_322 != -1)
  {
    dispatch_once(&_MergedGlobals_322, &__block_literal_global_10_12);
  }

  v13 = qword_280E03CF8;
  if (qword_280E03D00 != -1)
  {
    dispatch_once(&qword_280E03D00, &__block_literal_global_15_12);
  }

  v14 = qword_280E03D08;
  if (qword_280E03D10 != -1)
  {
    dispatch_once(&qword_280E03D10, &__block_literal_global_19_11);
  }

  v15 = qword_280E03D18;
  if (qword_280E03D20 != -1)
  {
    dispatch_once(&qword_280E03D20, &__block_literal_global_23_6);
  }

  v16 = qword_280E03D28;
  if (qword_280E03D30 != -1)
  {
    dispatch_once(&qword_280E03D30, &__block_literal_global_27_15);
  }

  v17 = qword_280E03D38;
  if ([v17 containsObject:v8])
  {
    _hf_microgramsPerMeterCubedFormatter = [self _hf_microgramsPerMeterCubedFormatter];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CCF8A0]])
  {
    _hf_microgramsPerMeterCubedFormatter = [self _hf_filterChangeIndicationFormatter];
  }

  else if ([v13 containsObject:v8])
  {
    _hf_microgramsPerMeterCubedFormatter = [self _hf_positionFormatterWithMetadata:v9 options:v10];
  }

  else
  {
    if (![v15 containsObject:v8])
    {
      if ([v14 containsObject:v8] || objc_msgSend(v16, "containsObject:", v8) && _HFCharacteristicMetadataTypeIsReallyBinary(v9))
      {
        v21 = +[HFFormatterManager sharedInstance];
        bOOLeanFormatter = [v21 BOOLeanFormatter];
      }

      else
      {
        bOOLeanFormatter = 0;
      }

      goto LABEL_22;
    }

    _hf_microgramsPerMeterCubedFormatter = [self _hf_partsPerMillionFormatter];
  }

  bOOLeanFormatter = _hf_microgramsPerMeterCubedFormatter;
LABEL_22:
  v12 = bOOLeanFormatter;

LABEL_23:

  return v12;
}

+ (id)_hf_valueFormatterForCharacteristicMetadata:()HFCharacteristicValueFormatting options:
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  units = [v4 units];
  v6 = *MEMORY[0x277CCF6F8];
  v7 = *MEMORY[0x277CCF700];
  v21[0] = *MEMORY[0x277CCF6F8];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v9 = [v8 containsObject:units];

  if (v9)
  {
    v10 = +[HFFormatterManager sharedInstance];
    temperatureFormatter = [v10 temperatureFormatter];

    [temperatureFormatter setInputIsCelsius:{objc_msgSend(units, "isEqualToString:", v6)}];
    if (!temperatureFormatter)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 = temperatureFormatter;
    goto LABEL_24;
  }

  if ([units isEqualToString:*MEMORY[0x277CCF710]])
  {
    temperatureFormatter = [self _hf_percentFormatterForMetadata:v4];
    if (temperatureFormatter)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ([units isEqualToString:*MEMORY[0x277CCF718]])
    {
      v12 = +[HFFormatterManager sharedInstance];
      timeIntervalFormatter = [v12 timeIntervalFormatter];
    }

    else if ([units isEqualToString:*MEMORY[0x277CCF6F0]])
    {
      v12 = +[HFFormatterManager sharedInstance];
      timeIntervalFormatter = [v12 arcDegreeFormatter];
    }

    else
    {
      if (![units isEqualToString:*MEMORY[0x277CCF708]])
      {
        goto LABEL_15;
      }

      v12 = +[HFFormatterManager sharedInstance];
      timeIntervalFormatter = [v12 luxFormatter];
    }

    temperatureFormatter = timeIntervalFormatter;

    if (temperatureFormatter)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  format = [v4 format];
  if ([format isEqualToString:*MEMORY[0x277CCF6B0]])
  {
    v16 = +[HFFormatterManager sharedInstance];
    bOOLeanFormatter = [v16 BOOLeanFormatter];
LABEL_22:
    v18 = bOOLeanFormatter;

    goto LABEL_23;
  }

  if ([format isEqualToString:*MEMORY[0x277CCF6C8]])
  {
    v16 = +[HFFormatterManager sharedInstance];
    bOOLeanFormatter = [v16 identityFormatter];
    goto LABEL_22;
  }

  if (![v4 hf_isNumeric])
  {
    v16 = +[HFFormatterManager sharedInstance];
    bOOLeanFormatter = [v16 emptyStringFormatter];
    goto LABEL_22;
  }

  v18 = objc_alloc_init(MEMORY[0x277CCABB8]);
LABEL_23:
  v14 = v18;

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_hf_percentFormatterForMetadata:()HFCharacteristicValueFormatting
{
  v3 = a3;
  v4 = +[HFFormatterManager sharedInstance];
  percentFormatter = [v4 percentFormatter];

  maximumValue = [v3 maximumValue];

  if (maximumValue)
  {
    maximumValue2 = [v3 maximumValue];
    [percentFormatter setMaximumValue:maximumValue2];
  }

  return percentFormatter;
}

+ (id)_hf_positionFormatterWithMetadata:()HFCharacteristicValueFormatting options:
{
  v22[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [self _hf_percentFormatterForMetadata:a3];
  v8 = *MEMORY[0x277CD0F58];
  v21[0] = *MEMORY[0x277CD0E30];
  v21[1] = v8;
  v22[0] = @"HMServiceTypeDoor";
  v22[1] = @"HMServiceTypeWindow";
  v21[2] = *MEMORY[0x277CD0F60];
  v22[2] = @"HMServiceTypeWindowCovering";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v10 = [v6 objectForKeyedSubscript:@"serviceType"];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v12 = [v6 objectForKeyedSubscript:@"serviceType"];
    NSLog(&cfstr_NoFormatString.isa, v12);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__NSFormatter_HFCharacteristicValueFormatting___hf_positionFormatterWithMetadata_options___block_invoke;
  v18[3] = &unk_277E01B60;
  v19 = v11;
  v20 = v7;
  v13 = v7;
  v14 = v11;
  v15 = [HFValueSetFormatter formatterWithStringProvider:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (HFFormatterTransformer)_hf_partsPerMillionFormatter
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v0 setUsesGroupingSeparator:1];
  v1 = [[HFFormatterTransformer alloc] initWithSourceFormatter:v0 transformBlock:&__block_literal_global_77_1];

  return v1;
}

+ (HFFormatterTransformer)_hf_microgramsPerMeterCubedFormatter
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v0 setUsesGroupingSeparator:1];
  v1 = [[HFFormatterTransformer alloc] initWithSourceFormatter:v0 transformBlock:&__block_literal_global_88];

  return v1;
}

+ (id)_hf_valueSetFormatterForCharacteristicType:()HFCharacteristicValueFormatting options:
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  hf_powerStateCharacteristicTypes = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
  v6 = [hf_powerStateCharacteristicTypes containsObject:v4];

  if (v6)
  {
    _hf_powerStateFormatter = [self _hf_powerStateFormatter];
LABEL_31:
    v17 = _hf_powerStateFormatter;
    goto LABEL_32;
  }

  v8 = *MEMORY[0x277CCFB08];
  v22[0] = *MEMORY[0x277CCF800];
  v22[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v10 = [v9 containsObject:v4];

  if (v10)
  {
    _hf_powerStateFormatter = [self _hf_doorStateFormatter];
    goto LABEL_31;
  }

  v11 = *MEMORY[0x277CCFB20];
  v21[0] = *MEMORY[0x277CCF818];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v13 = [v12 containsObject:v4];

  if (v13)
  {
    _hf_powerStateFormatter = [self _hf_heatingCoolingFormatter];
    goto LABEL_31;
  }

  v14 = *MEMORY[0x277CCFB40];
  v20[0] = *MEMORY[0x277CCF838];
  v20[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v16 = [v15 containsObject:v4];

  if (v16)
  {
    _hf_powerStateFormatter = [self _hf_lockMechanismStateFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCFA18]])
  {
    _hf_powerStateFormatter = [self _hf_rotationDirectionFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCFB88]])
  {
    _hf_powerStateFormatter = [self _hf_temperatureUnitFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCF950]])
  {
    _hf_powerStateFormatter = [self _hf_lockMechanismLastKnownActionFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCF768]])
  {
    _hf_powerStateFormatter = [self _hf_airParticulateSizeFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCF770]])
  {
    _hf_powerStateFormatter = [self _hf_airQualityFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCF9E0]])
  {
    _hf_powerStateFormatter = [self _hf_positionStateFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCF858]])
  {
    _hf_powerStateFormatter = [self _hf_currentSecuritySystemStateFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCFB60]])
  {
    _hf_powerStateFormatter = [self _hf_targetSecuritySystemStateFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCF7E8]])
  {
    _hf_powerStateFormatter = [self _hf_contactStateStateFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCF7F8]])
  {
    _hf_powerStateFormatter = [self _hf_currentAirPurifierStateFormatter];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCF920]])
  {
    _hf_powerStateFormatter = [self _hf_configurationStateFormatter];
    goto LABEL_31;
  }

  v17 = 0;
LABEL_32:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_hf_powerStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_98_1);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_doorStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_106);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_heatingCoolingFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_132_0);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_rotationDirectionFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_146_0);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_temperatureUnitFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_154_0);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_lockMechanismStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_162_0);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_airParticulateSizeFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_176);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_airQualityFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_190_0);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_positionStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_212_2);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_currentSecuritySystemStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_223_1);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_targetSecuritySystemStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_240_1);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_contactStateStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_254);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_currentAirPurifierStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_267_0);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)_hf_configurationStateFormatter
{
  v2 = HFValueSetStringProviderWithMap(a2, &__block_literal_global_278);
  v3 = [HFValueSetFormatter formatterWithStringProvider:v2];

  return v3;
}

+ (id)hf_controlDescriptionFormatterForCharacteristic:()HFCharacteristicValueFormatting options:form:
{
  v8 = a4;
  v9 = a3;
  characteristicType = [v9 characteristicType];
  metadata = [v9 metadata];

  v12 = [self hf_controlDescriptionFormatterForCharacteristicType:characteristicType withMetadata:metadata options:v8 form:a5];

  return v12;
}

+ (HFFormatterTransformer)hf_controlDescriptionFormatterForCharacteristicType:()HFCharacteristicValueFormatting withMetadata:options:form:
{
  v49[7] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [self hf_valueFormatterForCharacteristicType:v10 withMetadata:a4 options:v11];
  if (qword_280E03D40 != -1)
  {
    dispatch_once(&qword_280E03D40, &__block_literal_global_288);
  }

  v13 = qword_280E03D48;
  if ([v13 containsObject:v10])
  {
    v14 = v12;
LABEL_8:
    v19 = v14;
    goto LABEL_21;
  }

  hf_powerStateCharacteristicTypes = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
  v16 = [hf_powerStateCharacteristicTypes containsObject:v10];

  if (v16)
  {
    v17 = [HFFormatterTransformer alloc];
    v18 = &__block_literal_global_290_1;
LABEL_7:
    v14 = [(HFFormatterTransformer *)v17 initWithSourceFormatter:v12 transformBlock:v18];
    goto LABEL_8;
  }

  v20 = *MEMORY[0x277CCF7A0];
  v49[0] = *MEMORY[0x277CCF770];
  v49[1] = v20;
  v21 = *MEMORY[0x277CCF938];
  v49[2] = *MEMORY[0x277CCF7B8];
  v49[3] = v21;
  v22 = *MEMORY[0x277CCF9A8];
  v49[4] = *MEMORY[0x277CCF978];
  v49[5] = v22;
  v49[6] = *MEMORY[0x277CCFA80];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:7];
  v24 = [v23 containsObject:v10];

  if (v24)
  {
    v25 = [HFFormatterTransformer alloc];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_4;
    v45[3] = &unk_277E01BC8;
    selfCopy = self;
    v46 = v10;
    v48 = a6;
    v19 = [(HFFormatterTransformer *)v25 initWithSourceFormatter:v12 transformBlock:v45];
    v26 = v46;
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CCF850]] && (objc_msgSend(v11, "objectForKey:", @"roomName"), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    v28 = [HFFormatterTransformer alloc];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_5;
    v43[3] = &unk_277E01BF0;
    v44 = v11;
    v19 = [(HFFormatterTransformer *)v28 initWithSourceFormatter:v12 transformBlock:v43];
    v26 = v44;
  }

  else if ([v10 isEqualToString:*MEMORY[0x277CCF868]] && (objc_msgSend(v11, "objectForKey:", @"roomName"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
  {
    v30 = [HFFormatterTransformer alloc];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_6;
    v41[3] = &unk_277E01BF0;
    v42 = v11;
    v19 = [(HFFormatterTransformer *)v30 initWithSourceFormatter:v12 transformBlock:v41];
    v26 = v42;
  }

  else
  {
    if (![v10 isEqualToString:*MEMORY[0x277CCF830]] || (objc_msgSend(v11, "objectForKey:", @"roomName"), v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
    {
      if (![v10 isEqualToString:*MEMORY[0x277CCFBC0]])
      {
        v35 = [self _hf_controlTitleForCharacteristicType:v10];
        if (v35)
        {
          v36 = [HFFormatterTransformer alloc];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_9;
          v37[3] = &unk_277E01BF0;
          v38 = v35;
          v19 = [(HFFormatterTransformer *)v36 initWithSourceFormatter:v12 transformBlock:v37];
        }

        else
        {
          v19 = v12;
        }

        goto LABEL_21;
      }

      v17 = [HFFormatterTransformer alloc];
      v18 = &__block_literal_global_307_0;
      goto LABEL_7;
    }

    v32 = [HFFormatterTransformer alloc];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_7;
    v39[3] = &unk_277E01BF0;
    v40 = v11;
    v19 = [(HFFormatterTransformer *)v32 initWithSourceFormatter:v12 transformBlock:v39];
    v26 = v40;
  }

LABEL_21:
  v33 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_hf_controlDescriptionForDetectionCharacteristicOfType:()HFCharacteristicValueFormatting withValue:valueDescription:form:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = @"Simple";
  if (a6 != 1)
  {
    v12 = 0;
  }

  if (a6)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_2824B1A78;
  }

  if ([v9 isEqualToString:*MEMORY[0x277CCF770]])
  {
    v20 = HFLocalizedStringWithFormat(@"HFCharacteristicDescriptionFormatAirQuality", @"%@", v14, v15, v16, v17, v18, v19, v11);
    goto LABEL_24;
  }

  if ([v9 isEqualToString:*MEMORY[0x277CCF7A0]])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleCO2Detected%@", v13];
    [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleNoCO2Detected%@", v13];
    v22 = LABEL_20:;
    if ([v10 BOOLValue])
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    v20 = _HFLocalizedStringWithDefaultValue(v23, v23, 1);

    goto LABEL_24;
  }

  if ([v9 isEqualToString:*MEMORY[0x277CCF7B8]])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleCODetected%@", v13];
    [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleNoCODetected%@", v13];
    goto LABEL_20;
  }

  if ([v9 isEqualToString:*MEMORY[0x277CCF938]])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleLeakDetected%@", v13];
    [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleNoLeakDetected%@", v13];
    goto LABEL_20;
  }

  if ([v9 isEqualToString:*MEMORY[0x277CCF978]])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleMotionDetected%@", v13];
    [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleNoMotionDetected%@", v13];
    goto LABEL_20;
  }

  if ([v9 isEqualToString:*MEMORY[0x277CCF9A8]])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleOccupancyDetected%@", v13];
    [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleNoOccupancyDetected%@", v13];
    goto LABEL_20;
  }

  if ([v9 isEqualToString:*MEMORY[0x277CCFA80]])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleSmokeDetected%@", v13];
    [MEMORY[0x277CCACA8] stringWithFormat:@"HFCharacteristicTitleNoSmokeDetected%@", v13];
    goto LABEL_20;
  }

  v20 = 0;
LABEL_24:

  return v20;
}

+ (id)_hf_controlTitleForCharacteristicType:()HFCharacteristicValueFormatting
{
  v3 = a3;
  if (qword_280E03D50 != -1)
  {
    dispatch_once(&qword_280E03D50, &__block_literal_global_359_1);
  }

  v4 = qword_280E03D58;
  v5 = [v4 objectForKeyedSubscript:v3];
  if (v5)
  {
    v6 = v5;
LABEL_5:
    v7 = _HFLocalizedStringWithDefaultValue(v6, v6, 1);

    goto LABEL_6;
  }

  v7 = [MEMORY[0x277CD1970] hf_associatedCharacteristicTypeForCharacteristicType:v3];
  if (v7)
  {
    v6 = [v4 objectForKeyedSubscript:v7];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = 0;
  }

LABEL_6:

  return v7;
}

@end