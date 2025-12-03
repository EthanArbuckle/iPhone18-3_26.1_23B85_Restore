@interface HKOverlayRoomPillValueProviderRelativeData
- (id)_formattedValueFromChartPoints:(id)points displayType:(id)type unitPreferenceController:(id)controller;
- (id)_unitStringForValueString:(id)string displayType:(id)type unitPreferenceController:(id)controller;
- (id)valueFromChartPoints:(id)points unit:(id)unit displayType:(id)type timeScope:(int64_t)scope unitPreferenceController:(id)controller;
@end

@implementation HKOverlayRoomPillValueProviderRelativeData

- (id)valueFromChartPoints:(id)points unit:(id)unit displayType:(id)type timeScope:(int64_t)scope unitPreferenceController:(id)controller
{
  controllerCopy = controller;
  typeCopy = type;
  v12 = [(HKOverlayRoomPillValueProviderRelativeData *)self _formattedValueFromChartPoints:points displayType:typeCopy unitPreferenceController:controllerCopy];
  v13 = [(HKOverlayRoomPillValueProviderRelativeData *)self _unitStringForValueString:v12 displayType:typeCopy unitPreferenceController:controllerCopy];

  v14 = [[HKOverlayPillValue alloc] initWithValueString:v12 unitString:v13];

  return v14;
}

- (id)_formattedValueFromChartPoints:(id)points displayType:(id)type unitPreferenceController:(id)controller
{
  v44 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  typeCopy = type;
  controllerCopy = controller;
  if ([pointsCopy count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = pointsCopy;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v37 = typeCopy;
      v38 = pointsCopy;
      v13 = 0;
      v14 = *v40;
      v15 = 0.0;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          userInfo = [v18 userInfo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            userInfo2 = [v18 userInfo];
            relativeValueState = [userInfo2 relativeValueState];
            if (relativeValueState && (v23 = relativeValueState, [userInfo2 relativeValueState], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "integerValue"), v24, v23, v25 != 3))
            {
              relativeValueState2 = [userInfo2 relativeValueState];
              v28 = [relativeValueState2 integerValue] == 2;

              v13 |= v28;
            }

            else
            {
              [userInfo2 value];
              v16 = v16 + v26 * [userInfo2 recordCount];
              v15 = v15 + [userInfo2 recordCount];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v12);

      if (v15 > 0.0)
      {
        v29 = objc_alloc_init(HKRelativeNumberFormatter);
        v30 = [MEMORY[0x1E696AD98] numberWithDouble:v16 / v15];
        typeCopy = v37;
        v31 = HKFormattedStringFromValue(v30, v37, controllerCopy, 0, v29);

        pointsCopy = v38;
        goto LABEL_24;
      }

      typeCopy = v37;
      pointsCopy = v38;
      if (v13)
      {
        v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v33 = v32;
        v34 = @"ESTABLISHING_BASELINE";
LABEL_22:
        v35 = @"HealthUI-Localizable-Kali";
        goto LABEL_23;
      }
    }

    else
    {
    }

    v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v33 = v32;
    v34 = @"NOT_ENOUGH_DATA";
    goto LABEL_22;
  }

  v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v33 = v32;
  v34 = @"NO_DATA";
  v35 = @"HealthUI-Localizable";
LABEL_23:
  v31 = [v32 localizedStringForKey:v34 value:&stru_1F42FFBE0 table:v35];

LABEL_24:

  return v31;
}

- (id)_unitStringForValueString:(id)string displayType:(id)type unitPreferenceController:(id)controller
{
  stringCopy = string;
  typeCopy = type;
  controllerCopy = controller;
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = &stru_1F42FFBE0;
  v12 = [v10 localizedStringForKey:@"ESTABLISHING_BASELINE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  if (([stringCopy isEqualToString:v12] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"NOT_ENOUGH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
    v15 = [stringCopy isEqualToString:v14];

    if (v15)
    {
      goto LABEL_5;
    }

    v10 = [controllerCopy localizedDisplayNameForDisplayType:typeCopy];
    v16 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v12 localizedStringForKey:@"%@_DEGREES_FROM_BASELINE_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
    v11 = [v16 stringWithFormat:v17, v10];
  }

LABEL_5:

  return v11;
}

@end