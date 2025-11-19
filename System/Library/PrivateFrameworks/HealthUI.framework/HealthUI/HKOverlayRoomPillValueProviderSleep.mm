@interface HKOverlayRoomPillValueProviderSleep
- (id)_minMaxValueFromChartPoints:(id)a3 displayType:(id)a4 unitPreferenceController:(id)a5;
- (id)valueFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 timeScope:(int64_t)a6 unitPreferenceController:(id)a7;
@end

@implementation HKOverlayRoomPillValueProviderSleep

- (id)valueFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 timeScope:(int64_t)a6 unitPreferenceController:(id)a7
{
  v7 = [(HKOverlayRoomPillValueProviderSleep *)self _minMaxValueFromChartPoints:a3 displayType:a5 unitPreferenceController:a7, a6];
  v8 = [[HKOverlayPillValue alloc] initWithValueString:v7 unitString:&stru_1F42FFBE0];

  return v8;
}

- (id)_minMaxValueFromChartPoints:(id)a3 displayType:(id)a4 unitPreferenceController:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7 || ![v7 count])
  {
    goto LABEL_35;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 1.79769313e308;
    v14 = -1.79769313e308;
    v15 = *v43;
    v16 = -1.79769313e308;
    v17 = 1.79769313e308;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
          [v20 asleepValue];
          v22 = v21;
          [v20 inBedValue];
          v24 = v23;

          if (v22 >= v16)
          {
            v25 = v22;
          }

          else
          {
            v25 = v16;
          }

          if (v22 > 2.22044605e-16)
          {
            v16 = v25;
          }

          if (v22 < v17 && v22 > 2.22044605e-16)
          {
            v17 = v22;
          }

          if (v24 >= v14)
          {
            v27 = v24;
          }

          else
          {
            v27 = v14;
          }

          if (v24 > 2.22044605e-16)
          {
            v14 = v27;
          }

          if (v24 < v13 && v24 > 2.22044605e-16)
          {
            v13 = v24;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 1.79769313e308;
    v14 = -1.79769313e308;
    v16 = -1.79769313e308;
    v17 = 1.79769313e308;
  }

  if (v17 != 1.79769313e308 || v13 != 1.79769313e308)
  {
    if (v17 >= 1.79769313e308)
    {
      v32 = v13;
    }

    else
    {
      v32 = v17;
    }

    if (v17 >= 1.79769313e308)
    {
      v33 = v14;
    }

    else
    {
      v33 = v16;
    }

    v34 = vabdd_f64(v32, v33);
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v30 = HKTimePeriodString(v35, 56);

    if (v34 >= 2.22044605e-16)
    {
      v36 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
      v37 = HKTimePeriodString(v36, 56);

      v38 = MEMORY[0x1E696AEC0];
      v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v40 = [v39 localizedStringForKey:@"OVERLAY_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v41 = [v38 stringWithFormat:v40, v30, v37, v42];

      v30 = v41;
    }
  }

  else
  {
LABEL_35:
    v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v30 = [v29 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v30;
}

@end