@interface NWCSevenDayForecastUltravioletIndexView
- (id)_setupViewBuilderForDevice:(id)device;
- (void)processSimpleEntryModel:(id)model;
@end

@implementation NWCSevenDayForecastUltravioletIndexView

- (void)processSimpleEntryModel:(id)model
{
  modelCopy = model;
  if (processSimpleEntryModel__onceToken != -1)
  {
    [NWCSevenDayForecastUltravioletIndexView processSimpleEntryModel:];
  }

  hourlyEntryModels = [modelCopy hourlyEntryModels];
  firstObject = [hourlyEntryModels firstObject];
  timeZone = [firstObject timeZone];

  if (timeZone)
  {
    [processSimpleEntryModel__WeekdayFormatter setTimeZone:timeZone];
    v8 = [processSimpleEntryModel__RangeFormatter stringFromNumber:&unk_286D01FC0];
    dailyForecastRangeView = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
    highLabel = [dailyForecastRangeView highLabel];
    [highLabel setText:v8];

    v11 = [processSimpleEntryModel__RangeFormatter stringFromNumber:&unk_286D01FD0];
    dailyForecastRangeView2 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
    lowLabel = [dailyForecastRangeView2 lowLabel];
    [lowLabel setText:v11];

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    [currentCalendar setTimeZone:timeZone];
    dailyForecastViews = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v16 = [dailyForecastViews count];
    hourlyEntryModels2 = [modelCopy hourlyEntryModels];
    v18 = [hourlyEntryModels2 count];

    if (v16 == v18)
    {
      dailyForecastViews2 = [(NWCSevenDayForecastView *)self dailyForecastViews];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__NWCSevenDayForecastUltravioletIndexView_processSimpleEntryModel___block_invoke_14;
      v20[3] = &unk_279962288;
      v21 = modelCopy;
      [dailyForecastViews2 enumerateObjectsUsingBlock:v20];
    }
  }
}

void __67__NWCSevenDayForecastUltravioletIndexView_processSimpleEntryModel___block_invoke()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v0 setLocale:v1];

  [v0 setMinimumIntegerDigits:1];
  [v0 setMaximumFractionDigits:0];
  v2 = processSimpleEntryModel__RangeFormatter;
  processSimpleEntryModel__RangeFormatter = v0;

  v3 = objc_opt_new();
  [v3 setDateFormat:@"EEEEE"];
  v4 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v3 setLocale:v4];

  v5 = processSimpleEntryModel__WeekdayFormatter;
  processSimpleEntryModel__WeekdayFormatter = v3;

  v6 = objc_opt_new();
  [v6 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];

  v8 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v8];

  v9 = processSimpleEntryModel__FixedDateFormatter;
  processSimpleEntryModel__FixedDateFormatter = v6;
}

void __67__NWCSevenDayForecastUltravioletIndexView_processSimpleEntryModel___block_invoke_14(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = a2;
  v5 = [*(a1 + 32) hourlyEntryModels];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 middleString];

  if (v7)
  {
    v8 = processSimpleEntryModel__RangeFormatter;
    v9 = [v6 middleString];
    v7 = [v8 numberFromString:v9];
  }

  v10 = *MEMORY[0x277D2C808];
  if (a3)
  {
    v11 = [v34 linearGaugeView];
    [v11 setValue:v10];

    v12 = +[NWCColor systemGrayTextColor];
    v13 = [v34 weekdayLabel];
    [v13 setTextColor:v12];
  }

  else
  {
    v12 = [v6 topString];

    if (v12)
    {
      v14 = processSimpleEntryModel__RangeFormatter;
      v15 = [v6 topString];
      v12 = [v14 numberFromString:v15];

      [v12 doubleValue];
      v10 = fmin(v16 / 11.0, 1.0);
    }

    v13 = [NWMUltravioletIndexCategoryColor colorForNumber:v12];
    v17 = [v34 linearGaugeView];
    [v17 applyIndicatorFillColor:v13];

    v18 = [v34 linearGaugeView];
    [v18 setValue:v10];

    v19 = [MEMORY[0x277D75348] whiteColor];
    v20 = [v34 weekdayLabel];
    [v20 setTextColor:v19];
  }

  if ([v6 isDay])
  {
    [v7 doubleValue];
    v22 = v21;
    v23 = [(NWKUIColorIndex *)NWMUltravioletIndexColorIndex indexForValue:?];
    v24 = +[NWMUltravioletIndexColorIndex allIndices];
    v25 = [v24 subarrayWithRange:{0, objc_msgSend(v24, "indexOfObject:", v23) + 1}];

    v26 = fmin(v22 / 11.0, 1.0);
  }

  else
  {
    v25 = 0;
    v26 = 1.0;
  }

  v27 = [v34 linearGaugeView];
  [v27 setHighValue:v26];

  v28 = [v34 linearGaugeView];
  [v28 setColorIndices:v25];

  v29 = processSimpleEntryModel__FixedDateFormatter;
  v30 = [v6 bottomString];
  v31 = [v29 dateFromString:v30];

  v32 = [processSimpleEntryModel__WeekdayFormatter stringFromDate:v31];
  v33 = [v34 weekdayLabel];
  [v33 setText:v32];
}

- (id)_setupViewBuilderForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NWCDailyForecastUltravioletIndexViewBuilder alloc] initWithDevice:deviceCopy];

  return v4;
}

@end