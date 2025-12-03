@interface HKInspectableValue(Display)
- (__CFString)displayString;
- (id)_displayStringForCodedValueCollection:()Display;
- (id)_stringForMedicalCodings:()Display;
- (id)_stringForMedicalDateInterval;
- (id)_stringForQuantity:()Display;
- (id)_stringForTimeSinceMidnight;
@end

@implementation HKInspectableValue(Display)

- (__CFString)displayString
{
  v22[2] = *MEMORY[0x1E69E9840];
  valueType = [self valueType];
  v3 = &stru_1F42FFBE0;
  if (valueType <= 5)
  {
    if (valueType <= 1)
    {
      if (valueType)
      {
        if (valueType != 1)
        {
          goto LABEL_35;
        }

        ratioValue = [self ratioValue];
        numerator = [ratioValue numerator];
        localizedValue = [numerator localizedValue];
        v22[0] = localizedValue;
        ratioValue2 = [self ratioValue];
        denominator = [ratioValue2 denominator];
        localizedValue2 = [denominator localizedValue];
        v22[1] = localizedValue2;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
        v3 = [self _joinValueStrings:v17];

        goto LABEL_34;
      }

      stringValue = [self stringValue];
    }

    else
    {
      switch(valueType)
      {
        case 2:
          medicalDateValue = [self medicalDateValue];
LABEL_28:
          bOOLeanValue = medicalDateValue;
          displayString = [medicalDateValue displayString];
          goto LABEL_29;
        case 3:
          stringValue = [self _stringForMedicalDateInterval];
          break;
        case 4:
          stringValue = [self _stringForTimeSinceMidnight];
          break;
        default:
          goto LABEL_35;
      }
    }

    v3 = stringValue;
    goto LABEL_35;
  }

  if (valueType > 8)
  {
    if (valueType == 9)
    {
      dataAbsentReasonCodings = [self dataAbsentReasonCodings];
      goto LABEL_32;
    }

    if (valueType != 10)
    {
      if (valueType != 11)
      {
        goto LABEL_35;
      }

      bOOLeanValue = [self BOOLeanValue];
      bOOLValue = [bOOLeanValue BOOLValue];
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v10 = v9;
      if (bOOLValue)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v3 = [v9 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      goto LABEL_30;
    }

    bOOLeanValue = [self inspectableIntegerValue];
    displayString = [bOOLeanValue stringValue];
LABEL_29:
    v3 = displayString;
LABEL_30:

    goto LABEL_35;
  }

  if (valueType == 6)
  {
    medicalDateValue = [self codedQuantityValue];
    goto LABEL_28;
  }

  if (valueType == 7)
  {
    dataAbsentReasonCodings = [self medicalCodings];
LABEL_32:
    ratioValue = dataAbsentReasonCodings;
    v5 = [self _stringForMedicalCodings:dataAbsentReasonCodings];
    goto LABEL_33;
  }

  ratioValue = [self codedValueCollection];
  v5 = [self _displayStringForCodedValueCollection:ratioValue];
LABEL_33:
  v3 = v5;
LABEL_34:

LABEL_35:

  return v3;
}

- (id)_stringForMedicalCodings:()Display
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  medicalCodings = [self medicalCodings];
  firstObject = [medicalCodings firstObject];
  displayString = [firstObject displayString];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        codingSystem = [v13 codingSystem];
        textSystem = [MEMORY[0x1E696C238] textSystem];
        v16 = [codingSystem isEqual:textSystem];

        if (v16)
        {
          displayString2 = [v13 displayString];

          displayString = displayString2;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return displayString;
}

- (id)_stringForMedicalDateInterval
{
  medicalDateIntervalValue = [self medicalDateIntervalValue];
  startDate = [medicalDateIntervalValue startDate];

  if (startDate)
  {
    startDate2 = [medicalDateIntervalValue startDate];
    displayString = [startDate2 displayString];
  }

  else
  {
    displayString = &stru_1F42FFBE0;
  }

  endDate = [medicalDateIntervalValue endDate];

  if (endDate)
  {
    endDate2 = [medicalDateIntervalValue endDate];
    displayString2 = [endDate2 displayString];
  }

  else
  {
    displayString2 = &stru_1F42FFBE0;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"DATE_RANGE %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v8 stringWithFormat:v10, displayString, displayString2];

  return v11;
}

- (id)_stringForTimeSinceMidnight
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  dateComponentsValue = [self dateComponentsValue];
  v4 = [currentCalendar dateFromComponents:dateComponentsValue];

  v5 = HKLocalizedStringForDateAndTemplate(v4, 27);

  return v5;
}

- (id)_stringForQuantity:()Display
{
  v3 = a3;
  _unit = [v3 _unit];
  [v3 doubleValueForUnit:_unit];
  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v7 setNumberStyle:1];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v9 = [v7 stringFromNumber:v8];

  return v9;
}

- (id)_displayStringForCodedValueCollection:()Display
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a3;
  codedValues = [v3 codedValues];
  firstObject = [codedValues firstObject];
  value = [firstObject value];
  unitString = [value unitString];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  codedValues2 = [v3 codedValues];
  v9 = [codedValues2 countByEnumeratingWithState:&v41 objects:v47 count:16];
  v32 = unitString;
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(codedValues2);
        }

        value2 = [*(*(&v41 + 1) + 8 * i) value];
        unitString2 = [value2 unitString];

        LODWORD(value2) = [unitString2 isEqualToString:unitString];
        if (!value2)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v10 = [codedValues2 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v3;
  obj = [v3 codedValues];
  v17 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      v20 = 0;
      v35 = v18;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v37 + 1) + 8 * v20);
        value3 = [v21 value];
        displayString = [value3 displayString];
        v24 = displayString;
        if (v15)
        {
          [v16 addObject:displayString];
        }

        else
        {
          v45[0] = displayString;
          value4 = [v21 value];
          unitString3 = [value4 unitString];
          v45[1] = unitString3;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
          v28 = v27 = v15;
          v29 = [v28 componentsJoinedByString:@" "];

          v15 = v27;
          [v16 addObject:v29];
          value3 = v29;
          v18 = v35;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v18);
  }

  v30 = [self _joinValueStrings:v16];

  return v30;
}

@end