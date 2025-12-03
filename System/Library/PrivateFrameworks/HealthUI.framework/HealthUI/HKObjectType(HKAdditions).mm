@interface HKObjectType(HKAdditions)
- (HKTimePeriodNumberFormatter)hk_numberFormatterForUnit:()HKAdditions decimalPrecisionRule:formattingContext:;
- (id)_hk_formatMetadataValueForMetadataKey:()HKAdditions object:unitPreferenceController:;
- (id)hk_formatMetadataValue:()HKAdditions displayType:unitPreferencesController:;
- (id)hk_formatPrimaryMetadataValueForObject:()HKAdditions unitPreferencesController:;
- (id)hk_formatSecondaryMetadataValueForObject:()HKAdditions unitPreferencesController:;
- (id)hk_metadataValueDisplayTypeInStore:()HKAdditions;
- (id)hk_primaryMetadataKey;
- (id)hk_secondaryMetadataKey;
- (id)hk_valueFormatterClass;
- (id)hk_valueFormatterClassForUnit:()HKAdditions;
@end

@implementation HKObjectType(HKAdditions)

- (id)hk_valueFormatterClass
{
  [self code];
  v1 = objc_opt_class();

  return v1;
}

- (HKTimePeriodNumberFormatter)hk_numberFormatterForUnit:()HKAdditions decimalPrecisionRule:formattingContext:
{
  v8 = a3;
  v9 = a4;
  code = [self code];
  if (code > 137)
  {
    if (code <= 293)
    {
      if (code != 138)
      {
        if (code != 189)
        {
          if (code != 256)
          {
            goto LABEL_26;
          }

          _changeInDegreeCelsiusUnit = [MEMORY[0x1E696C510] _changeInDegreeCelsiusUnit];
          v14 = [v8 _isCompatibleWithUnit:_changeInDegreeCelsiusUnit];

          if (!v14)
          {
            goto LABEL_26;
          }

          v15 = HKRelativeNumberFormatter;
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else if ((code - 294) >= 4)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (code <= 69)
  {
    if (code == 2)
    {
      if (_HeightFormatter_oncetoken != -1)
      {
        [HKObjectType(HKAdditions) hk_numberFormatterForUnit:decimalPrecisionRule:formattingContext:];
      }

      v16 = _HeightFormatter__heightFormatter;
LABEL_25:
      numberFormatter = v16;
      if (v16)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (code != 8)
    {
      if (code == 63)
      {
        goto LABEL_23;
      }

LABEL_26:
      numberFormatter = [v9 numberFormatter];
      goto LABEL_27;
    }

LABEL_21:
    if (a5 == 1)
    {
      v15 = HKNaturalScaleDistanceMeasurementFormatter;
LABEL_24:
      v16 = objc_alloc_init(v15);
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v11 = code - 70;
  if ((code - 70) > 0x2B)
  {
    goto LABEL_26;
  }

  if (((1 << v11) & 0x90000002000) != 0)
  {
    goto LABEL_21;
  }

  if (((1 << v11) & 0x20000200) != 0)
  {
LABEL_23:
    v15 = HKTimePeriodNumberFormatter;
    goto LABEL_24;
  }

  if (code != 70)
  {
    goto LABEL_26;
  }

  numberFormatter = objc_alloc_init(HKTimePeriodNumberFormatter);
  [(HKTimePeriodNumberFormatter *)numberFormatter setShouldRoundToHours:1];
  [(HKTimePeriodNumberFormatter *)numberFormatter setShouldShowDays:0];
  if (!numberFormatter)
  {
    goto LABEL_26;
  }

LABEL_27:

  return numberFormatter;
}

- (id)hk_valueFormatterClassForUnit:()HKAdditions
{
  v4 = a3;
  if ([self code] == 256)
  {
    _changeInDegreeCelsiusUnit = [MEMORY[0x1E696C510] _changeInDegreeCelsiusUnit];
    v6 = [v4 _isCompatibleWithUnit:_changeInDegreeCelsiusUnit];

    if (v6)
    {
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    countUnit = [MEMORY[0x1E696C510] countUnit];
    if ([v4 isEqual:countUnit])
    {
      canonicalUnit = [selfCopy canonicalUnit];
      v10 = [canonicalUnit _isCompatibleWithUnit:v4];

      v11 = v10 ^ 1;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  countUnit2 = [MEMORY[0x1E696C510] countUnit];
  v13 = [v4 isEqual:countUnit2];

  if (v13 && v11)
  {
LABEL_11:
    hk_valueFormatterClass = objc_opt_class();
  }

  else
  {
    hk_valueFormatterClass = [self hk_valueFormatterClass];
  }

  v15 = hk_valueFormatterClass;

  return v15;
}

- (id)hk_primaryMetadataKey
{
  code = [self code];
  v2 = 0;
  if (code > 146)
  {
    v3 = MEMORY[0x1E696BA40];
    if (code == 199 || code == 178)
    {
      goto LABEL_12;
    }

    if (code != 147)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(code)
  {
    case 14:
      v3 = MEMORY[0x1E696BA50];
      goto LABEL_12;
    case 124:
      v3 = MEMORY[0x1E696BB88];
      goto LABEL_12;
    case 140:
LABEL_9:
      v3 = MEMORY[0x1E696BAC0];
LABEL_12:
      v2 = *v3;
      break;
  }

LABEL_13:

  return v2;
}

- (id)hk_secondaryMetadataKey
{
  code = [self code];
  v2 = MEMORY[0x1E696C6D8];
  if (code == 178 || code == 199)
  {
    goto LABEL_5;
  }

  if (code == 236)
  {
    v2 = MEMORY[0x1E696BB18];
LABEL_5:
    v3 = *v2;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)hk_metadataValueDisplayTypeInStore:()HKAdditions
{
  v4 = a3;
  code = [self code];
  if (code <= 198)
  {
    if (code == 140 || code == 147)
    {
      v6 = MEMORY[0x1E696C370];
      v7 = MEMORY[0x1E696BD30];
      goto LABEL_17;
    }

    if (code == 178)
    {
      v6 = MEMORY[0x1E696C370];
      v7 = MEMORY[0x1E696BD08];
      goto LABEL_17;
    }

LABEL_14:
    selfCopy = self;
    goto LABEL_18;
  }

  if (code > 249)
  {
    if (code == 250)
    {
      v6 = MEMORY[0x1E696C370];
      v7 = MEMORY[0x1E696BC68];
      goto LABEL_17;
    }

    if (code == 276)
    {
      v6 = MEMORY[0x1E696C370];
      v7 = MEMORY[0x1E696BC50];
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (code == 199)
  {
    v6 = MEMORY[0x1E696C370];
    v7 = MEMORY[0x1E696BD28];
    goto LABEL_17;
  }

  if (code != 236)
  {
    goto LABEL_14;
  }

  v6 = MEMORY[0x1E696C370];
  v7 = MEMORY[0x1E696BDF0];
LABEL_17:
  selfCopy = [v6 quantityTypeForIdentifier:*v7];
LABEL_18:
  v9 = selfCopy;
  v10 = [HKDisplayTypeController sharedInstanceForHealthStore:v4];
  v11 = [v10 displayTypeForObjectType:v9];

  return v11;
}

- (id)hk_formatPrimaryMetadataValueForObject:()HKAdditions unitPreferencesController:
{
  v6 = a4;
  v7 = a3;
  hk_primaryMetadataKey = [self hk_primaryMetadataKey];
  v9 = [self _hk_formatMetadataValueForMetadataKey:hk_primaryMetadataKey object:v7 unitPreferenceController:v6];

  return v9;
}

- (id)hk_formatSecondaryMetadataValueForObject:()HKAdditions unitPreferencesController:
{
  v6 = a4;
  v7 = a3;
  hk_secondaryMetadataKey = [self hk_secondaryMetadataKey];
  v9 = [self _hk_formatMetadataValueForMetadataKey:hk_secondaryMetadataKey object:v7 unitPreferenceController:v6];

  return v9;
}

- (id)_hk_formatMetadataValueForMetadataKey:()HKAdditions object:unitPreferenceController:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  healthStore = [v10 healthStore];
  v12 = [self hk_metadataValueDisplayTypeInStore:healthStore];

  v13 = 0;
  if (v8 && v12)
  {
    metadata = [v9 metadata];
    v15 = [metadata objectForKey:v8];

    v13 = [self hk_formatMetadataValue:v15 displayType:v12 unitPreferencesController:v10];
  }

  return v13;
}

- (id)hk_formatMetadataValue:()HKAdditions displayType:unitPreferencesController:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v11 = [v9 unitForDisplayType:v8];
    v12 = MEMORY[0x1E696AD98];
    [v10 doubleValueForUnit:v11];
    v14 = v13;

    v15 = [v12 numberWithDouble:v14];
    presentation = [v8 presentation];
    v17 = [presentation adjustedValueForDaemonValue:v15];

    v18 = [v8 hk_valueFormatterForUnit:v11];
    stringValue = [v18 stringFromValue:v17 displayType:v8 unitController:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v7;
      presentation2 = [v8 presentation];
      v22 = [presentation2 adjustedValueForDaemonValue:v20];

      stringValue = [v22 stringValue];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = v7;
      }

      else
      {
        stringValue = 0;
      }
    }
  }

  return stringValue;
}

@end