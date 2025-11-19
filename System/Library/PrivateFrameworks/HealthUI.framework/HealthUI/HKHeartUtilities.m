@interface HKHeartUtilities
+ (id)localizedPossibleHypertensionTitle;
+ (id)minMaxStringForHeartRates:(id)a3 displayTypeController:(id)a4 unitController:(id)a5;
@end

@implementation HKHeartUtilities

+ (id)minMaxStringForHeartRates:(id)a3 displayTypeController:(id)a4 unitController:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v38 = v9;
    v10 = v8;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v37 = v7;
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      v15 = 0.0;
      v16 = 1.79769313e308;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = [*(*(&v39 + 1) + 8 * i) quantity];
          v19 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
          [v18 doubleValueForUnit:v19];
          v21 = v20;

          if (v16 >= v21)
          {
            v16 = v21;
          }

          if (v15 < v21)
          {
            v15 = v21;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
      v16 = 1.79769313e308;
    }

    v23 = v10;
    v24 = [v10 displayTypeWithIdentifier:&unk_1F4384240];
    v25 = [v24 presentation];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
    v27 = [v25 adjustedValueForDaemonValue:v26];

    v28 = [v24 presentation];
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v30 = [v28 adjustedValueForDaemonValue:v29];

    v9 = v38;
    v31 = HKFormattedStringFromValueForContext(v27, v24, v38, 0, 0, 1);
    v32 = HKFormattedStringFromValueForContext(v30, v24, v38, 0, 0, 1);
    v33 = MEMORY[0x1E696AEC0];
    v34 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v35 = [v34 localizedStringForKey:@"SHOW_ALL_DATA_MIN_MAX" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v22 = [v33 stringWithFormat:v35, v31, v32];

    v8 = v23;
    v7 = v37;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)localizedPossibleHypertensionTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"HYPERTENSION_NOTIFICATIONS_EVENT_LIST_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Hermit"];

  return v3;
}

@end