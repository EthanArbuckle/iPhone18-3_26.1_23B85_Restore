@interface HKLastUpdatedDayDataProviderCurrentValue
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)lastUpdatedDescriptionWithDateCache:(id)a3;
@end

@implementation HKLastUpdatedDayDataProviderCurrentValue

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v49[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
  if ([v12 isDateInToday:v13])
  {
  }

  else
  {
    v14 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
    v15 = [v12 isDateInYesterday:v14];

    if (!v15)
    {
      v21 = [MEMORY[0x1E695DEE8] currentCalendar];
      v22 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
      v23 = [MEMORY[0x1E695DF00] date];
      v17 = [v21 components:16 fromDate:v22 toDate:v23 options:0];

      v24 = [v17 day];
      if (v24 > 0x28)
      {
        v39 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
        v19 = HKLocalizedStringForDateAndTemplate(v39, 12);

        v40 = objc_alloc(MEMORY[0x1E696AAB0]);
        v42 = *MEMORY[0x1E69DB648];
        v43 = v10;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v20 = [v40 initWithString:v19 attributes:v31];
      }

      else
      {
        v25 = v24;
        v26 = HKIntegerFormatter();
        v27 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
        v19 = [v26 stringFromNumber:v27];

        v28 = MEMORY[0x1E696AEC0];
        v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v30 = [v29 localizedStringForKey:@"%d DAYS_AGO" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v31 = [v28 localizedStringWithFormat:v30, v25];

        v32 = objc_alloc(MEMORY[0x1E696AD40]);
        v46 = *MEMORY[0x1E69DB648];
        v33 = v46;
        v47 = v11;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v20 = [v32 initWithString:v31 attributes:v34];

        v44 = v33;
        v45 = v10;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v36 = [v20 string];
        v37 = [v36 rangeOfString:v19];
        [v20 setAttributes:v35 range:{v37, v38}];
      }

      goto LABEL_9;
    }
  }

  v16 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
  v17 = HKLocalizedStringForDateAndTemplate(v16, 36);

  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v48 = *MEMORY[0x1E69DB648];
  v49[0] = v10;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v20 = [v18 initWithString:v17 attributes:v19];
LABEL_9:

  return v20;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(v5, v4);

  return v6;
}

@end