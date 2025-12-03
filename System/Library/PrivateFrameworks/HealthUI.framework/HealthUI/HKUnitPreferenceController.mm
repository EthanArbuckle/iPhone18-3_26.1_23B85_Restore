@interface HKUnitPreferenceController
+ (__CFString)_displayNameKey:(int)key withNumber:;
+ (__CFString)_displayNameKeyForUnit:(uint64_t)unit nameContext:;
+ (__CFString)_localizedHealthUIStringForDisplayType:(void *)type unit:(void *)unit key:(void *)key value:;
- (id)_displayNameKeyForDisplayType:(int)type withNumber:;
- (id)_displayNameKeyForDisplayType:(int)type withNumber:(uint64_t)number nameContext:;
- (id)_longDisplayNameForUnit:(uint64_t)unit;
- (id)_longDisplayNameOverrideForDisplayType:(uint64_t)type;
- (id)_unitDisplayNameKeyForDisplayType:(void *)type unit:(uint64_t)unit nameContext:;
- (id)localizedHealthUIStringForDisplayType:(void *)type key:(void *)key value:;
@end

@implementation HKUnitPreferenceController

+ (__CFString)_localizedHealthUIStringForDisplayType:(void *)type unit:(void *)unit key:(void *)key value:
{
  v8 = a2;
  typeCopy = type;
  unitCopy = unit;
  keyCopy = key;
  objc_opt_self();
  if (unitCopy)
  {
    if ([unitCopy length])
    {
      localization = [v8 localization];
      localizationTableNameOverride = [localization localizationTableNameOverride];

      if (!localizationTableNameOverride || (HKHealthKitFrameworkBundle(), v14 = objc_claimAutoreleasedReturnValue(), [v8 localization], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "localizationTableNameOverride"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "localizedStringForKey:value:table:", unitCopy, &stru_1F42FFBE0, v16), localizationTableNameOverride = objc_claimAutoreleasedReturnValue(), v16, v15, v14, !localizationTableNameOverride) || (v17 = localizationTableNameOverride, objc_msgSend(localizationTableNameOverride, "isEqualToString:", unitCopy)))
      {
        v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v17 = [v18 localizedStringForKey:unitCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      }

      if (keyCopy && ([MEMORY[0x1E696C510] percentUnit], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(typeCopy, "isEqual:", v19), v19, (v20 & 1) == 0))
      {
        if (![v17 containsString:@"unit_double"])
        {
          integerValue = [keyCopy integerValue];
          v22 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v17, integerValue];
          if (![(__CFString *)v22 length])
          {
            v27 = MEMORY[0x1E696AEC0];
            [keyCopy doubleValue];
            v29 = [v27 localizedStringWithFormat:v17, v28];

            v22 = v29;
          }

          goto LABEL_11;
        }

        v24 = MEMORY[0x1E696AEC0];
        [keyCopy doubleValue];
        v21 = [v24 localizedStringWithFormat:v17, v25];
      }

      else
      {
        v21 = v17;
      }

      v22 = v21;
LABEL_11:

      goto LABEL_14;
    }

    v22 = &stru_1F42FFBE0;
  }

  else
  {
    v22 = 0;
  }

LABEL_14:

  return v22;
}

+ (__CFString)_displayNameKey:(int)key withNumber:
{
  v4 = a2;
  objc_opt_self();
  v5 = @"_NUMBERLESS_UNIT";
  if (key)
  {
    v5 = @"_NUMBERED_UNIT";
  }

  v6 = v5;
  if ([v4 length] && (objc_msgSend(v4, "containsString:", v6) & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v6];
  }

  else
  {
    v7 = &stru_1F42FFBE0;
  }

  return v7;
}

+ (__CFString)_displayNameKeyForUnit:(uint64_t)unit nameContext:
{
  v4 = a2;
  objc_opt_self();
  if (_displayNameKeyForUnit_nameContext__onceToken != -1)
  {
    +[HKUnitPreferenceController _displayNameKeyForUnit:nameContext:];
  }

  largeCalorieUnit = [MEMORY[0x1E696C510] largeCalorieUnit];
  v6 = [v4 isEqual:largeCalorieUnit];

  if (v6)
  {
    if (unit == 2)
    {
      v7 = @"LARGE_CALORIES";
    }

    else
    {
      v7 = @"SMALL_CALORIES";
    }
  }

  else
  {
    v7 = [_displayNameKeyForUnit_nameContext__localizableStringDict objectForKeyedSubscript:v4];
  }

  return v7;
}

void __75__HKUnitPreferenceController_HealthUI___displayNameKeyForUnit_nameContext___block_invoke()
{
  v52[49] = *MEMORY[0x1E69E9840];
  v50 = [MEMORY[0x1E696C510] inchUnit];
  v51[0] = v50;
  v52[0] = @"INCHES";
  v49 = [MEMORY[0x1E696C510] footUnit];
  v51[1] = v49;
  v52[1] = @"FEET";
  v48 = [MEMORY[0x1E696C510] poundUnit];
  v51[2] = v48;
  v52[2] = @"POUNDS";
  v47 = [MEMORY[0x1E696C510] secondUnit];
  v51[3] = v47;
  v52[3] = @"SECONDS_SHORT";
  v46 = [MEMORY[0x1E696C510] minuteUnit];
  v51[4] = v46;
  v52[4] = @"MINUTES_SHORT";
  v45 = [MEMORY[0x1E696C510] hourUnit];
  v51[5] = v45;
  v52[5] = @"HOURS_SHORT";
  v44 = [MEMORY[0x1E696C510] stoneUnit];
  v51[6] = v44;
  v52[6] = @"STONES";
  v43 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:9];
  v51[7] = v43;
  v52[7] = @"KILOGRAMS";
  v42 = [MEMORY[0x1E696C510] mileUnit];
  v51[8] = v42;
  v52[8] = @"MILES";
  v41 = [MEMORY[0x1E696C510] yardUnit];
  v51[9] = v41;
  v52[9] = @"YARDS";
  v40 = [MEMORY[0x1E696C510] meterUnit];
  v51[10] = v40;
  v52[10] = @"METERS";
  v39 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
  v51[11] = v39;
  v52[11] = @"CENTIMETERS";
  v38 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:9];
  v51[12] = v38;
  v52[12] = @"KILOMETERS";
  v37 = [MEMORY[0x1E696C510] degreeCelsiusUnit];
  v51[13] = v37;
  v52[13] = @"DEGREES_CELSIUS";
  v36 = [MEMORY[0x1E696C510] degreeFahrenheitUnit];
  v51[14] = v36;
  v52[14] = @"DEGREES_FAHRENHEIT";
  v35 = [MEMORY[0x1E696C510] _changeInDegreeCelsiusUnit];
  v51[15] = v35;
  v52[15] = @"DEGREES_CELSIUS";
  v34 = [MEMORY[0x1E696C510] _changeInDegreeFahrenheitUnit];
  v51[16] = v34;
  v52[16] = @"DEGREES_FAHRENHEIT";
  v33 = [MEMORY[0x1E696C510] jouleUnitWithMetricPrefix:9];
  v51[17] = v33;
  v52[17] = @"KILOJOULES";
  v32 = [MEMORY[0x1E696C510] internationalUnit];
  v51[18] = v32;
  v52[18] = @"INTERNATIONAL_UNITS";
  v31 = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
  v51[19] = v31;
  v52[19] = @"DECIBELS_HEARING";
  v30 = [MEMORY[0x1E696C510] decibelAWeightedSoundPressureLevelUnit];
  v51[20] = v30;
  v52[20] = @"DECIBELS";
  v29 = _HKBloodGlucoseMillimolesPerLiterUnit();
  v51[21] = v29;
  v52[21] = @"MILLIMOLES_PER_LITER";
  v28 = [MEMORY[0x1E696C510] percentUnit];
  v51[22] = v28;
  v52[22] = @"PERCENT";
  v27 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v51[23] = v27;
  v52[23] = @"KILOCALORIES";
  v26 = [MEMORY[0x1E696C510] largeCalorieUnit];
  v51[24] = v26;
  v52[24] = @"LARGE_CALORIES";
  v25 = [MEMORY[0x1E696C510] literUnit];
  v51[25] = v25;
  v52[25] = @"LITERS";
  v24 = [MEMORY[0x1E696C510] gramUnit];
  v51[26] = v24;
  v52[26] = @"GRAMS";
  v23 = [MEMORY[0x1E696C510] wattUnit];
  v51[27] = v23;
  v52[27] = @"WATTS";
  v22 = [MEMORY[0x1E696C510] unitFromString:@"cal"];
  v51[28] = v22;
  v52[28] = @"SMALL_CALORIES";
  v21 = [MEMORY[0x1E696C510] unitFromString:@"mg/dL"];
  v51[29] = v21;
  v52[29] = @"MILLIGRAMS_PER_DECILITER";
  v20 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v51[30] = v20;
  v52[30] = @"MILLIGRAMS";
  v19 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v51[31] = v19;
  v52[31] = @"MICROGRAMS";
  v18 = [MEMORY[0x1E696C510] unitFromString:@"mcS"];
  v51[32] = v18;
  v52[32] = @"MICROSIEMENS";
  v17 = [MEMORY[0x1E696C510] unitFromString:@"L/min"];
  v51[33] = v17;
  v52[33] = @"LITERS_PER_MINUTE";
  v16 = [MEMORY[0x1E696C510] unitFromString:@"mL"];
  v51[34] = v16;
  v52[34] = @"MILLILITERS";
  v15 = [MEMORY[0x1E696C510] unitFromString:@"mmHg"];
  v51[35] = v15;
  v52[35] = @"MILLIMETERS_MERCURY";
  v14 = [MEMORY[0x1E696C510] unitFromString:@"fl_oz_us"];
  v51[36] = v14;
  v52[36] = @"US_FLUID_OUNCES";
  v13 = [MEMORY[0x1E696C510] unitFromString:@"fl_oz_imp"];
  v51[37] = v13;
  v52[37] = @"IMPERIAL_FLUID_OUNCES";
  v12 = [MEMORY[0x1E696C510] unitFromString:@"pt_us"];
  v51[38] = v12;
  v52[38] = @"US_PINTS";
  v0 = [MEMORY[0x1E696C510] unitFromString:@"pt_imp"];
  v51[39] = v0;
  v52[39] = @"IMPERIAL_PINTS";
  v1 = [MEMORY[0x1E696C510] unitFromString:@"cup_us"];
  v51[40] = v1;
  v52[40] = @"US_CUPS";
  v2 = [MEMORY[0x1E696C510] unitFromString:@"cup_imp"];
  v51[41] = v2;
  v52[41] = @"IMPERIAL_CUPS";
  v3 = [MEMORY[0x1E696C510] unitFromString:@"ms"];
  v51[42] = v3;
  v52[42] = @"MILLISECONDS_SHORT";
  v4 = [MEMORY[0x1E696C510] unitFromString:@"ml/(kg*min)"];
  v51[43] = v4;
  v52[43] = @"VO2_MAX";
  v5 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v51[44] = v5;
  v52[44] = @"METERS_PER_SECOND";
  v6 = [MEMORY[0x1E696C510] unitFromString:@"ft/s"];
  v51[45] = v6;
  v52[45] = @"FEET_PER_SECOND";
  v7 = [MEMORY[0x1E696C510] unitFromString:@"mi/hr"];
  v51[46] = v7;
  v52[46] = @"MILES_PER_HOUR";
  v8 = [MEMORY[0x1E696C510] unitFromString:@"km/hr"];
  v51[47] = v8;
  v52[47] = @"KILOMETERS_PER_HOUR";
  v9 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
  v51[48] = v9;
  v52[48] = @"PHYSICAL_EFFORT";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:49];
  v11 = _displayNameKeyForUnit_nameContext__localizableStringDict;
  _displayNameKeyForUnit_nameContext__localizableStringDict = v10;
}

void __64__HKUnitPreferenceController_HealthUI___longDisplayNameForUnit___block_invoke()
{
  v0 = _MergedGlobals;
  _MergedGlobals = &unk_1F4384B58;
}

void __67__HKUnitPreferenceController_HealthUI__displayRangeForDisplayType___block_invoke()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696BC80];
  v0 = MEMORY[0x1E696C350];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"mg/dL"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"mg/dL"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:600.0];
  v7 = [v0 inclusiveRangeWithMinimum:v3 maximum:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = displayRangeForDisplayType____displayRanges;
  displayRangeForDisplayType____displayRanges = v8;
}

- (id)localizedHealthUIStringForDisplayType:(void *)type key:(void *)key value:
{
  selfCopy = self;
  if (self)
  {
    keyCopy = key;
    typeCopy = type;
    v9 = a2;
    v10 = [selfCopy unitForDisplayType:v9];
    selfCopy = [(HKUnitPreferenceController *)MEMORY[0x1E696C518] _localizedHealthUIStringForDisplayType:v9 unit:v10 key:typeCopy value:keyCopy];
  }

  return selfCopy;
}

- (id)_unitDisplayNameKeyForDisplayType:(void *)type unit:(uint64_t)unit nameContext:
{
  typeCopy = type;
  if (self)
  {
    localization = [a2 localization];
    v9 = [localization unitDisplayNameKeyOverrideForUnit:typeCopy nameContext:unit];

    if (!v9)
    {
      v9 = [(HKUnitPreferenceController *)MEMORY[0x1E696C518] _displayNameKeyForUnit:typeCopy nameContext:unit];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_displayNameKeyForDisplayType:(int)type withNumber:
{
  if (self)
  {
    self = [(HKUnitPreferenceController *)self _displayNameKeyForDisplayType:a2 withNumber:type nameContext:1];
    v3 = vars8;
  }

  return self;
}

- (id)_displayNameKeyForDisplayType:(int)type withNumber:(uint64_t)number nameContext:
{
  if (self)
  {
    v7 = a2;
    v8 = [self unitForDisplayType:v7];
    v9 = [(HKUnitPreferenceController *)self _unitDisplayNameKeyForDisplayType:v7 unit:v8 nameContext:number];

    v10 = [(HKUnitPreferenceController *)MEMORY[0x1E696C518] _displayNameKey:v9 withNumber:type];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_longDisplayNameOverrideForDisplayType:(uint64_t)type
{
  if (type)
  {
    displayTypeIdentifier = [a2 displayTypeIdentifier];
    switch(displayTypeIdentifier)
    {
      case 266:
      case 5:
        goto LABEL_15;
      case 7:
        v4 = @"LONG_STEPS";
        goto LABEL_16;
      case 12:
        v4 = @"LONG_FLOORS";
        goto LABEL_16;
      case 61:
        v4 = @"LONG_BREATHS_PER_MINUTE";
        goto LABEL_16;
      case 79:
        v4 = @"LONG_WORKOUT_MINUTES";
        goto LABEL_16;
      case 118:
      case 137:
LABEL_15:
        v4 = @"LONG_BEATS_PER_MINUTE";
        goto LABEL_16;
      case 251:
        v4 = @"LONG_NUMBER_OF_ALCOHOLIC_BEVERAGES";
        goto LABEL_16;
      case 0:
        v4 = @"LONG_BMI";
LABEL_16:
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = [v5 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

        goto LABEL_17;
    }
  }

  v6 = 0;
LABEL_17:

  return v6;
}

- (id)_longDisplayNameForUnit:(uint64_t)unit
{
  v3 = a2;
  if (!unit)
  {
    goto LABEL_6;
  }

  if (qword_1EC087FC0 != -1)
  {
    dispatch_once(&qword_1EC087FC0, &__block_literal_global_547);
  }

  v4 = _MergedGlobals;
  unitString = [v3 unitString];
  v6 = [v4 objectForKey:unitString];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return v8;
}

@end