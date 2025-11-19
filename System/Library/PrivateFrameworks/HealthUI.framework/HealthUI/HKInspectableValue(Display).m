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
  v2 = [a1 valueType];
  v3 = &stru_1F42FFBE0;
  if (v2 <= 5)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_35;
        }

        v4 = [a1 ratioValue];
        v12 = [v4 numerator];
        v13 = [v12 localizedValue];
        v22[0] = v13;
        v14 = [a1 ratioValue];
        v15 = [v14 denominator];
        v16 = [v15 localizedValue];
        v22[1] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
        v3 = [a1 _joinValueStrings:v17];

        goto LABEL_34;
      }

      v6 = [a1 stringValue];
    }

    else
    {
      switch(v2)
      {
        case 2:
          v20 = [a1 medicalDateValue];
LABEL_28:
          v7 = v20;
          v19 = [v20 displayString];
          goto LABEL_29;
        case 3:
          v6 = [a1 _stringForMedicalDateInterval];
          break;
        case 4:
          v6 = [a1 _stringForTimeSinceMidnight];
          break;
        default:
          goto LABEL_35;
      }
    }

    v3 = v6;
    goto LABEL_35;
  }

  if (v2 > 8)
  {
    if (v2 == 9)
    {
      v18 = [a1 dataAbsentReasonCodings];
      goto LABEL_32;
    }

    if (v2 != 10)
    {
      if (v2 != 11)
      {
        goto LABEL_35;
      }

      v7 = [a1 BOOLeanValue];
      v8 = [v7 BOOLValue];
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v10 = v9;
      if (v8)
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

    v7 = [a1 inspectableIntegerValue];
    v19 = [v7 stringValue];
LABEL_29:
    v3 = v19;
LABEL_30:

    goto LABEL_35;
  }

  if (v2 == 6)
  {
    v20 = [a1 codedQuantityValue];
    goto LABEL_28;
  }

  if (v2 == 7)
  {
    v18 = [a1 medicalCodings];
LABEL_32:
    v4 = v18;
    v5 = [a1 _stringForMedicalCodings:v18];
    goto LABEL_33;
  }

  v4 = [a1 codedValueCollection];
  v5 = [a1 _displayStringForCodedValueCollection:v4];
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
  v5 = [a1 medicalCodings];
  v6 = [v5 firstObject];
  v7 = [v6 displayString];

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
        v14 = [v13 codingSystem];
        v15 = [MEMORY[0x1E696C238] textSystem];
        v16 = [v14 isEqual:v15];

        if (v16)
        {
          v17 = [v13 displayString];

          v7 = v17;
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

  return v7;
}

- (id)_stringForMedicalDateInterval
{
  v1 = [a1 medicalDateIntervalValue];
  v2 = [v1 startDate];

  if (v2)
  {
    v3 = [v1 startDate];
    v4 = [v3 displayString];
  }

  else
  {
    v4 = &stru_1F42FFBE0;
  }

  v5 = [v1 endDate];

  if (v5)
  {
    v6 = [v1 endDate];
    v7 = [v6 displayString];
  }

  else
  {
    v7 = &stru_1F42FFBE0;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"DATE_RANGE %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v8 stringWithFormat:v10, v4, v7];

  return v11;
}

- (id)_stringForTimeSinceMidnight
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [a1 dateComponentsValue];
  v4 = [v2 dateFromComponents:v3];

  v5 = HKLocalizedStringForDateAndTemplate(v4, 27);

  return v5;
}

- (id)_stringForQuantity:()Display
{
  v3 = a3;
  v4 = [v3 _unit];
  [v3 doubleValueForUnit:v4];
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
  v4 = [v3 codedValues];
  v5 = [v4 firstObject];
  v6 = [v5 value];
  v7 = [v6 unitString];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v3 codedValues];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
  v32 = v7;
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v41 + 1) + 8 * i) value];
        v14 = [v13 unitString];

        LODWORD(v13) = [v14 isEqualToString:v7];
        if (!v13)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
        v22 = [v21 value];
        v23 = [v22 displayString];
        v24 = v23;
        if (v15)
        {
          [v16 addObject:v23];
        }

        else
        {
          v45[0] = v23;
          v25 = [v21 value];
          v26 = [v25 unitString];
          v45[1] = v26;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
          v28 = v27 = v15;
          v29 = [v28 componentsJoinedByString:@" "];

          v15 = v27;
          [v16 addObject:v29];
          v22 = v29;
          v18 = v35;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v18);
  }

  v30 = [a1 _joinValueStrings:v16];

  return v30;
}

@end