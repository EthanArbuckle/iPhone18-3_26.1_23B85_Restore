@interface NSDateInterval(Schedule)
+ (id)dnds_dateIntervalForScheduleSettings:()Schedule date:calendar:;
+ (id)dnds_dateIntervalUntilEndOfScheduleForScheduleSettings:()Schedule startDate:calendar:;
@end

@implementation NSDateInterval(Schedule)

+ (id)dnds_dateIntervalForScheduleSettings:()Schedule date:calendar:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 scheduleEnabledSetting];
  v10 = DNDResolvedScheduleEnabledSetting();
  v11 = [v7 timePeriod];
  v12 = [v11 weekdays];
  v13 = 0;
  if (v10 == 2)
  {
    v14 = v12;
    if (v12 != *MEMORY[0x277D05888])
    {
      [v9 component:512 fromDate:v8];
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__0;
      v31 = __Block_byref_object_dispose__0;
      v32 = 0;
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__0;
      v25 = __Block_byref_object_dispose__0;
      v26 = 0;
      v17 = MEMORY[0x277D85DD0];
      v18 = v11;
      v19 = v9;
      v20 = v8;
      DNDEnumerateDaysOfWeekStartingOnDay();
      if (v28[5] && v22[5])
      {
        v15 = objc_alloc(MEMORY[0x277CCA970]);
        v13 = [v15 initWithStartDate:v28[5] endDate:{v22[5], v17, 3221225472, __79__NSDateInterval_Schedule__dnds_dateIntervalForScheduleSettings_date_calendar___block_invoke, &unk_278F8A030, v18, v19, v20, &v27, &v21, v14}];
      }

      else
      {
        v13 = 0;
      }

      _Block_object_dispose(&v21, 8);
      _Block_object_dispose(&v27, 8);
    }
  }

  return v13;
}

+ (id)dnds_dateIntervalUntilEndOfScheduleForScheduleSettings:()Schedule startDate:calendar:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 scheduleEnabledSetting];
  v10 = DNDResolvedScheduleEnabledSetting();
  v11 = [v7 timePeriod];
  v12 = [v11 weekdays];
  v13 = 0;
  if (v10 == 2 && v12 != *MEMORY[0x277D05888])
  {
    [v9 component:512 fromDate:v8];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__0;
    v23 = __Block_byref_object_dispose__0;
    v24 = 0;
    v17 = v11;
    v18 = v9;
    v14 = v8;
    DNDEnumerateDaysOfWeekStartingOnDay();
    if (v20[5])
    {
      v15 = objc_alloc(MEMORY[0x277CCA970]);
      v13 = [v15 initWithStartDate:v14 endDate:v20[5]];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  return v13;
}

@end