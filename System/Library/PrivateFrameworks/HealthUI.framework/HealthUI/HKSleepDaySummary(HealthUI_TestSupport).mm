@interface HKSleepDaySummary(HealthUI_TestSupport)
- (id)firstStartDateMatchingSleepValues:()HealthUI_TestSupport;
- (id)hkui_somnogramChartDateInterval;
- (id)lastEndDateMatchingSleepValues:()HealthUI_TestSupport;
- (void)hkui_durationForSleepCategoryValue:()HealthUI_TestSupport;
@end

@implementation HKSleepDaySummary(HealthUI_TestSupport)

- (void)hkui_durationForSleepCategoryValue:()HealthUI_TestSupport
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        return [self coreSleepDuration];
      case 4:
        return [self deepSleepDuration];
      case 5:
        return [self remSleepDuration];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return [self unspecifiedSleepDuration];
    }

    else if (a3 == 2)
    {
      return [self awakeDuration];
    }
  }

  else
  {
    return [self inBedDuration];
  }

  return self;
}

- (id)hkui_somnogramChartDateInterval
{
  [self sleepDuration];
  if (v2 == 0.0 && ([self inBedDuration], v3 == 0.0))
  {
    dateInterval = [self dateInterval];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:&unk_1F43813F0];
    if (([self hasSleepStageData] & 1) == 0)
    {
      [v5 addObject:&unk_1F4383D48];
    }

    v6 = [self firstStartDateMatchingSleepValues:v5];
    v7 = [v6 dateByAddingTimeInterval:-300.0];

    v8 = [self lastEndDateMatchingSleepValues:v5];
    v9 = [v8 dateByAddingTimeInterval:300.0];

    calendar = [self calendar];
    v11 = [calendar hk_startOfHourForDate:v7 addingHours:0];

    v12 = v9;
    calendar2 = [self calendar];
    v14 = [calendar2 component:64 fromDate:v12];

    v15 = v12;
    if (v14 >= 1)
    {
      calendar3 = [self calendar];
      v15 = [calendar3 hk_startOfHourForDate:v12 addingHours:1];
    }

    if (v11 && v15)
    {
      [v15 timeIntervalSinceDate:v11];
      v18 = v17 / 3600.0;
      if (v18 <= 0)
      {
        v19 = -(-v18 & 3);
      }

      else
      {
        v19 = v18 & 3;
      }

      if (v19 >= 1)
      {
        v20 = 4 - v19;
        v21 = vcvtd_n_f64_u64(4 - v19, 1uLL);
        v22 = vcvtmd_s64_f64(v21);
        v23 = [v11 dateByAddingTimeInterval:floor(v21) * -3600.0];

        v24 = [v15 dateByAddingTimeInterval:(v20 - v22) * 3600.0];

        v15 = v24;
        v11 = v23;
      }

      dateInterval2 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 endDate:v15];
    }

    else
    {
      dateInterval2 = [self dateInterval];
    }

    dateInterval = dateInterval2;
  }

  return dateInterval;
}

- (id)firstStartDateMatchingSleepValues:()HealthUI_TestSupport
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  periods = [self periods];
  v21 = [periods countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v6 = *v28;
    v22 = periods;
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(periods);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        segments = [v8 segments];
        v10 = [segments countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(segments);
              }

              v14 = *(*(&v23 + 1) + 8 * j);
              v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "category")}];
              v16 = [v4 containsObject:v15];

              if (v16)
              {
                dateInterval = [v14 dateInterval];
                startDate = [dateInterval startDate];

                periods = v22;
                goto LABEL_19;
              }
            }

            v11 = [segments countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        periods = v22;
        v6 = v20;
      }

      startDate = 0;
      v21 = [v22 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  else
  {
    startDate = 0;
  }

LABEL_19:

  return startDate;
}

- (id)lastEndDateMatchingSleepValues:()HealthUI_TestSupport
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [self periods];
  v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  v5 = 0;
  if (v27)
  {
    v26 = *v37;
    v6 = 0x1E696A000uLL;
    v29 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v7;
        v8 = *(*(&v36 + 1) + 8 * v7);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        segments = [v8 segments];
        v9 = [segments countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(segments);
              }

              v13 = *(*(&v32 + 1) + 8 * i);
              v14 = [*(v6 + 3480) numberWithInteger:{objc_msgSend(v13, "category")}];
              if (![v4 containsObject:v14])
              {
                goto LABEL_17;
              }

              if (!v5)
              {

LABEL_16:
                v14 = v5;
                v5 = v13;
LABEL_17:

                continue;
              }

              dateInterval = [v13 dateInterval];
              endDate = [dateInterval endDate];
              [v5 dateInterval];
              v18 = v17 = v5;
              [v18 endDate];
              v20 = v19 = v11;
              v31 = [endDate hk_isAfterDate:v20];

              v11 = v19;
              v5 = v17;

              v4 = v29;
              v6 = 0x1E696A000;

              if (v31)
              {
                goto LABEL_16;
              }
            }

            v10 = [segments countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }

  dateInterval2 = [v5 dateInterval];
  [dateInterval2 endDate];
  v23 = v22 = v5;

  return v23;
}

@end