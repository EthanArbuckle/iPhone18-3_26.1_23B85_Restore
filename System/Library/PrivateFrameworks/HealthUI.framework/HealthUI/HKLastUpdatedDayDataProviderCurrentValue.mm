@interface HKLastUpdatedDayDataProviderCurrentValue
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)lastUpdatedDescriptionWithDateCache:(id)cache;
@end

@implementation HKLastUpdatedDayDataProviderCurrentValue

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  v49[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  unitFontCopy = unitFont;
  cacheCopy = cache;
  date = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
  if ([cacheCopy isDateInToday:date])
  {
  }

  else
  {
    date2 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
    v15 = [cacheCopy isDateInYesterday:date2];

    if (!v15)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date3 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
      date4 = [MEMORY[0x1E695DF00] date];
      v17 = [currentCalendar components:16 fromDate:date3 toDate:date4 options:0];

      v24 = [v17 day];
      if (v24 > 0x28)
      {
        date5 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
        v19 = HKLocalizedStringForDateAndTemplate(date5, 12);

        v40 = objc_alloc(MEMORY[0x1E696AAB0]);
        v42 = *MEMORY[0x1E69DB648];
        v43 = fontCopy;
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
        v47 = unitFontCopy;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v20 = [v32 initWithString:v31 attributes:v34];

        v44 = v33;
        v45 = fontCopy;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        string = [v20 string];
        v37 = [string rangeOfString:v19];
        [v20 setAttributes:v35 range:{v37, v38}];
      }

      goto LABEL_9;
    }
  }

  date6 = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
  v17 = HKLocalizedStringForDateAndTemplate(date6, 36);

  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v48 = *MEMORY[0x1E69DB648];
  v49[0] = fontCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v20 = [v18 initWithString:v17 attributes:v19];
LABEL_9:

  return v20;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(HKLastUpdatedDayDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(date, cacheCopy);

  return v6;
}

@end