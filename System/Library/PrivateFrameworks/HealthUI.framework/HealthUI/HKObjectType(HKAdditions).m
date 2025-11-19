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
  [a1 code];
  v1 = objc_opt_class();

  return v1;
}

- (HKTimePeriodNumberFormatter)hk_numberFormatterForUnit:()HKAdditions decimalPrecisionRule:formattingContext:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 code];
  if (v10 > 137)
  {
    if (v10 <= 293)
    {
      if (v10 != 138)
      {
        if (v10 != 189)
        {
          if (v10 != 256)
          {
            goto LABEL_26;
          }

          v13 = [MEMORY[0x1E696C510] _changeInDegreeCelsiusUnit];
          v14 = [v8 _isCompatibleWithUnit:v13];

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

    else if ((v10 - 294) >= 4)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v10 <= 69)
  {
    if (v10 == 2)
    {
      if (_HeightFormatter_oncetoken != -1)
      {
        [HKObjectType(HKAdditions) hk_numberFormatterForUnit:decimalPrecisionRule:formattingContext:];
      }

      v16 = _HeightFormatter__heightFormatter;
LABEL_25:
      v12 = v16;
      if (v16)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v10 != 8)
    {
      if (v10 == 63)
      {
        goto LABEL_23;
      }

LABEL_26:
      v12 = [v9 numberFormatter];
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

  v11 = v10 - 70;
  if ((v10 - 70) > 0x2B)
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

  if (v10 != 70)
  {
    goto LABEL_26;
  }

  v12 = objc_alloc_init(HKTimePeriodNumberFormatter);
  [(HKTimePeriodNumberFormatter *)v12 setShouldRoundToHours:1];
  [(HKTimePeriodNumberFormatter *)v12 setShouldShowDays:0];
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_27:

  return v12;
}

- (id)hk_valueFormatterClassForUnit:()HKAdditions
{
  v4 = a3;
  if ([a1 code] == 256)
  {
    v5 = [MEMORY[0x1E696C510] _changeInDegreeCelsiusUnit];
    v6 = [v4 _isCompatibleWithUnit:v5];

    if (v6)
    {
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = a1;
    v8 = [MEMORY[0x1E696C510] countUnit];
    if ([v4 isEqual:v8])
    {
      v9 = [v7 canonicalUnit];
      v10 = [v9 _isCompatibleWithUnit:v4];

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

  v12 = [MEMORY[0x1E696C510] countUnit];
  v13 = [v4 isEqual:v12];

  if (v13 && v11)
  {
LABEL_11:
    v14 = objc_opt_class();
  }

  else
  {
    v14 = [a1 hk_valueFormatterClass];
  }

  v15 = v14;

  return v15;
}

- (id)hk_primaryMetadataKey
{
  v1 = [a1 code];
  v2 = 0;
  if (v1 > 146)
  {
    v3 = MEMORY[0x1E696BA40];
    if (v1 == 199 || v1 == 178)
    {
      goto LABEL_12;
    }

    if (v1 != 147)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(v1)
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
  v1 = [a1 code];
  v2 = MEMORY[0x1E696C6D8];
  if (v1 == 178 || v1 == 199)
  {
    goto LABEL_5;
  }

  if (v1 == 236)
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
  v5 = [a1 code];
  if (v5 <= 198)
  {
    if (v5 == 140 || v5 == 147)
    {
      v6 = MEMORY[0x1E696C370];
      v7 = MEMORY[0x1E696BD30];
      goto LABEL_17;
    }

    if (v5 == 178)
    {
      v6 = MEMORY[0x1E696C370];
      v7 = MEMORY[0x1E696BD08];
      goto LABEL_17;
    }

LABEL_14:
    v8 = a1;
    goto LABEL_18;
  }

  if (v5 > 249)
  {
    if (v5 == 250)
    {
      v6 = MEMORY[0x1E696C370];
      v7 = MEMORY[0x1E696BC68];
      goto LABEL_17;
    }

    if (v5 == 276)
    {
      v6 = MEMORY[0x1E696C370];
      v7 = MEMORY[0x1E696BC50];
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v5 == 199)
  {
    v6 = MEMORY[0x1E696C370];
    v7 = MEMORY[0x1E696BD28];
    goto LABEL_17;
  }

  if (v5 != 236)
  {
    goto LABEL_14;
  }

  v6 = MEMORY[0x1E696C370];
  v7 = MEMORY[0x1E696BDF0];
LABEL_17:
  v8 = [v6 quantityTypeForIdentifier:*v7];
LABEL_18:
  v9 = v8;
  v10 = [HKDisplayTypeController sharedInstanceForHealthStore:v4];
  v11 = [v10 displayTypeForObjectType:v9];

  return v11;
}

- (id)hk_formatPrimaryMetadataValueForObject:()HKAdditions unitPreferencesController:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 hk_primaryMetadataKey];
  v9 = [a1 _hk_formatMetadataValueForMetadataKey:v8 object:v7 unitPreferenceController:v6];

  return v9;
}

- (id)hk_formatSecondaryMetadataValueForObject:()HKAdditions unitPreferencesController:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 hk_secondaryMetadataKey];
  v9 = [a1 _hk_formatMetadataValueForMetadataKey:v8 object:v7 unitPreferenceController:v6];

  return v9;
}

- (id)_hk_formatMetadataValueForMetadataKey:()HKAdditions object:unitPreferenceController:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 healthStore];
  v12 = [a1 hk_metadataValueDisplayTypeInStore:v11];

  v13 = 0;
  if (v8 && v12)
  {
    v14 = [v9 metadata];
    v15 = [v14 objectForKey:v8];

    v13 = [a1 hk_formatMetadataValue:v15 displayType:v12 unitPreferencesController:v10];
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
    v16 = [v8 presentation];
    v17 = [v16 adjustedValueForDaemonValue:v15];

    v18 = [v8 hk_valueFormatterForUnit:v11];
    v19 = [v18 stringFromValue:v17 displayType:v8 unitController:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v7;
      v21 = [v8 presentation];
      v22 = [v21 adjustedValueForDaemonValue:v20];

      v19 = [v22 stringValue];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v7;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

@end