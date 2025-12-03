@interface HKSleepSchedule(HealthUI)
- (id)hk_localizedBedtime;
- (id)hk_localizedScheduledSleepDuration;
- (id)hk_localizedWakeTime;
- (id)hk_localizedWeekdaysList;
- (id)hk_localizedWeekdaysListWithGregorianCalendar:()HealthUI standaloneFormatter:listItemFormatter:;
@end

@implementation HKSleepSchedule(HealthUI)

- (id)hk_localizedWeekdaysList
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setFormattingContext:2];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setFormattingContext:5];
  hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  v5 = [self hk_localizedWeekdaysListWithGregorianCalendar:hk_gregorianCalendar standaloneFormatter:v2 listItemFormatter:v3];

  return v5;
}

- (id)hk_localizedWeekdaysListWithGregorianCalendar:()HealthUI standaloneFormatter:listItemFormatter:
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![self weekdays])
  {
    overrideDayIndex = [self overrideDayIndex];
    v16 = _OverrideStringForCalendar(v8, overrideDayIndex);
LABEL_10:
    hk_localizedFirstWordCapitalizedString = v16;

    goto LABEL_11;
  }

  weekdays = [self weekdays];
  v12 = *MEMORY[0x1E696BE50];
  if (weekdays == *MEMORY[0x1E696BE50])
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    overrideDayIndex = v13;
    v15 = @"SLEEP_SCHEDULE_EVERY_DAY";
LABEL_9:
    v16 = [v13 localizedStringForKey:v15 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
    goto LABEL_10;
  }

  v17 = _WeekendDaysInCalendar(v8);
  if ([self weekdays] == v17)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    overrideDayIndex = v13;
    v15 = @"SLEEP_SCHEDULE_WEEKENDS";
    goto LABEL_9;
  }

  if ([self weekdays] == (v12 & ~v17))
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    overrideDayIndex = v13;
    v15 = @"SLEEP_SCHEDULE_WEEKDAYS";
    goto LABEL_9;
  }

  [self weekdays];
  if (HKSleepScheduleWeekdaysIsSingleDay() && ([self weekdays], v20 = NSWeekdayComponentFromHKSleepScheduleWeekday(), v21 = v20 - 1, v20 >= 1))
  {
    standaloneWeekdaySymbols = [v9 standaloneWeekdaySymbols];
    hk_localizedFirstWordCapitalizedString = [standaloneWeekdaySymbols objectAtIndexedSubscript:v21];
  }

  else
  {
    v34 = v9;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = _OrderedCalendarWeekdayComponents(v8);
    v25 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v36;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v35 + 1) + 8 * i);
          [v29 integerValue];
          v30 = HKSleepScheduleWeekdayFromWeekdayComponent();
          if (([self weekdays] & v30) != 0)
          {
            shortStandaloneWeekdaySymbols = [v10 shortStandaloneWeekdaySymbols];
            v32 = [shortStandaloneWeekdaySymbols objectAtIndexedSubscript:{objc_msgSend(v29, "integerValue") - 1}];
            [v23 addObject:v32];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v26);
    }

    v33 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v23];
    hk_localizedFirstWordCapitalizedString = [v33 hk_localizedFirstWordCapitalizedString];

    v9 = v34;
  }

LABEL_11:

  return hk_localizedFirstWordCapitalizedString;
}

- (id)hk_localizedScheduledSleepDuration
{
  bedTimeComponents = [self bedTimeComponents];
  if (bedTimeComponents && (v3 = bedTimeComponents, [self wakeTimeComponents], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    hk_hourMinuteOnlyDateIntervalFormatter = [MEMORY[0x1E696AB88] hk_hourMinuteOnlyDateIntervalFormatter];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    bedTimeComponents2 = [self bedTimeComponents];
    v8 = [currentCalendar dateFromComponents:bedTimeComponents2];

    wakeTimeComponents = [self wakeTimeComponents];
    v10 = [currentCalendar dateFromComponents:wakeTimeComponents];

    v11 = [hk_hourMinuteOnlyDateIntervalFormatter stringFromDate:v8 toDate:v10];
  }

  else
  {
    hk_hourMinuteOnlyDateIntervalFormatter = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [hk_hourMinuteOnlyDateIntervalFormatter localizedStringForKey:@"SLEEP_SCHEDULE_NO_TIMES_TEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  }

  return v11;
}

- (id)hk_localizedBedtime
{
  bedTimeComponents = [self bedTimeComponents];
  v2 = _TimeStringForDateComponents(bedTimeComponents);

  return v2;
}

- (id)hk_localizedWakeTime
{
  wakeTimeComponents = [self wakeTimeComponents];
  v2 = _TimeStringForDateComponents(wakeTimeComponents);

  return v2;
}

@end