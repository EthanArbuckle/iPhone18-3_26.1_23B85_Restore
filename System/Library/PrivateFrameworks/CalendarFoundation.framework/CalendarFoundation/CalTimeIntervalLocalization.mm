@interface CalTimeIntervalLocalization
+ (id)_localizedStringWithTimeString:(id)string rawDuration:(double)duration options:(unint64_t)options;
+ (id)_localizedTimeStringForAllDayEventDuration:(double)duration includeAlert:(BOOL)alert;
+ (id)_stringWithDurations:(id)durations timeUnits:(id)units;
+ (id)localizedStringForInterval:(double)interval withOptions:(unint64_t)options;
+ (void)_calculateDurations:(id)durations timeUnits:(id)units forDuration:(double)duration allDay:(BOOL)day dayDuration:(id *)dayDuration hourDuration:(id *)hourDuration minuteDuration:(id *)minuteDuration secondDuration:(id *)self0 abbreviate:(BOOL)self1;
@end

@implementation CalTimeIntervalLocalization

+ (id)localizedStringForInterval:(double)interval withOptions:(unint64_t)options
{
  if (fabs(interval) >= 2.22044605e-16 || (options & 1) == 0)
  {
    if ((options & 0x20) != 0)
    {
      v12 = [self _localizedTimeStringForAllDayEventDuration:(options >> 3) & 1 includeAlert:interval];
    }

    else
    {
      v8 = [self _localizedTimeStringForTimedEventDuration:(options >> 1) & 1 abbreviate:interval];
      v12 = [self _localizedStringWithTimeString:v8 rawDuration:options options:interval];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v9 localizedStringForKey:@"%d minutes" value:&stru_1F379FFA8 table:0];
    v12 = [v10 localizedStringWithFormat:v11, 0];
  }

  return v12;
}

+ (id)_localizedTimeStringForAllDayEventDuration:(double)duration includeAlert:(BOOL)alert
{
  alertCopy = alert;
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  LOBYTE(v33) = 0;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [self _calculateDurations:v8 timeUnits:duration forDuration:&v38 allDay:v33 dayDuration:? hourDuration:? minuteDuration:? secondDuration:? abbreviate:?];
  v36 = v41;
  v9 = v40;
  v10 = v39;
  v11 = v38;
  date = [MEMORY[0x1E695DF00] date];
  calGregorianGMTCalendar = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v14 = [calGregorianGMTCalendar components:28 fromDate:date];

  v35 = v9;
  [v14 setHour:{objc_msgSend(v9, "integerValue")}];
  integerValue = [v10 integerValue];

  [v14 setMinute:integerValue];
  mEMORY[0x1E695DEE8] = [MEMORY[0x1E695DEE8] sharedAutoupdatingCurrentCalendar];
  v17 = [mEMORY[0x1E695DEE8] dateFromComponents:v14];

  v18 = [v17 timeStringAlwaysIncludeMinutes:0];
  v19 = [v8 objectAtIndex:0];
  integerValue2 = [v19 integerValue];

  if (!alertCopy)
  {
    if (integerValue2 == 7)
    {
      if (duration < 0.0)
      {
        v22 = MEMORY[0x1E696AEC0];
        v25 = @"1 week before";
        goto LABEL_15;
      }
    }

    else
    {
      if (!integerValue2)
      {
        v21 = v7;
        v22 = MEMORY[0x1E696AEC0];
        if (duration < 0.0)
        {
          v23 = @"%ld days before (%@)";
          goto LABEL_10;
        }

        v29 = @"On day of event (%@)";
LABEL_25:
        v24 = [v21 localizedStringForKey:v29 value:&stru_1F379FFA8 table:0];
        v32 = v18;
        goto LABEL_26;
      }

      if (duration < 0.0)
      {
        v26 = MEMORY[0x1E696AEC0];
        v27 = @"%ld days before (%@)";
        goto LABEL_22;
      }
    }

    v26 = MEMORY[0x1E696AEC0];
    v27 = @"%ld days after (%@)";
    goto LABEL_22;
  }

  if (integerValue2 == 7)
  {
    if (duration >= 0.0)
    {
      goto LABEL_18;
    }

    v22 = MEMORY[0x1E696AEC0];
    v25 = @"Alert 1 week before";
LABEL_15:
    v21 = v7;
    v24 = [v7 localizedStringForKey:v25 value:&stru_1F379FFA8 table:0];
    goto LABEL_26;
  }

  if (integerValue2)
  {
    if (duration < 0.0)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = @"Alert %ld days before at %@";
LABEL_22:
      v24 = [v7 localizedStringForKey:v27 value:&stru_1F379FFA8 table:0];
      v28 = v26;
      v21 = v7;
      [v28 localizedStringWithFormat:v24, integerValue2, v18];
      goto LABEL_27;
    }

LABEL_18:
    v26 = MEMORY[0x1E696AEC0];
    v27 = @"Alert %ld days after at %@";
    goto LABEL_22;
  }

  v21 = v7;
  v22 = MEMORY[0x1E696AEC0];
  if (duration >= 0.0)
  {
    v29 = @"Alert on day of event at %@";
    goto LABEL_25;
  }

  v23 = @"Alert %ld days before at %@";
LABEL_10:
  v24 = [v21 localizedStringForKey:v23 value:&stru_1F379FFA8 table:0];
  v32 = 1;
  v34 = v18;
LABEL_26:
  [v22 localizedStringWithFormat:v24, v32, v34];
  v30 = LABEL_27:;

  return v30;
}

+ (void)_calculateDurations:(id)durations timeUnits:(id)units forDuration:(double)duration allDay:(BOOL)day dayDuration:(id *)dayDuration hourDuration:(id *)hourDuration minuteDuration:(id *)minuteDuration secondDuration:(id *)self0 abbreviate:(BOOL)self1
{
  dayCopy = day;
  secondDurationCopy = secondDuration;
  durationsCopy = durations;
  unitsCopy = units;
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  durationCopy4 = -duration;
  if (duration >= 0.0)
  {
    durationCopy = duration;
  }

  else
  {
    durationCopy = -duration;
  }

  if (durationCopy < 86400.0)
  {
    goto LABEL_24;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithInt:(duration / 86400.0)];
  *dayDuration = v21;
  v22 = (86400 * [v21 integerValue]);
  v23 = *dayDuration;
  if (duration < 0.0 && dayCopy)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v23, "integerValue") - 1}];
    *dayDuration = v23;
  }

  duration = duration - v22;
  integerValue = [v23 integerValue];
  if (integerValue >= 0)
  {
    v25 = integerValue;
  }

  else
  {
    v25 = -integerValue;
  }

  if (v25 < 2)
  {
    if (abbreviate)
    {
      v26 = @"shortened day";
      v27 = @"day";
      goto LABEL_16;
    }

    v26 = @"day";
LABEL_19:
    v28 = v18;
    v27 = v26;
    goto LABEL_20;
  }

  if (!abbreviate)
  {
    v26 = @"days";
    goto LABEL_19;
  }

  v26 = @"shortened days";
  v27 = @"days";
LABEL_16:
  v28 = v18;
LABEL_20:
  v29 = [v28 localizedStringForKey:v26 value:v27 table:0];
  v30 = MEMORY[0x1E696AD98];
  integerValue2 = [*dayDuration integerValue];
  if (integerValue2 >= 0)
  {
    v32 = integerValue2;
  }

  else
  {
    v32 = -integerValue2;
  }

  v33 = [v30 numberWithInteger:v32];
  [durationsCopy addObject:v33];

  [unitsCopy addObject:v29];
  durationCopy4 = -duration;
LABEL_24:
  if (duration >= 0.0)
  {
    durationCopy2 = duration;
  }

  else
  {
    durationCopy2 = durationCopy4;
  }

  if (durationCopy2 >= 3600.0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:(duration / 3600.0)];
    *hourDuration = v35;
    duration = duration - (3600 * [v35 integerValue]);
    integerValue3 = [*hourDuration integerValue];
    v37 = @"hours";
    if (integerValue3 >= 0)
    {
      v38 = integerValue3;
    }

    else
    {
      v38 = -integerValue3;
    }

    if (abbreviate)
    {
      v37 = @"hrs";
    }

    v39 = @"hr";
    if (!abbreviate)
    {
      v39 = @"hour";
    }

    if (v38 <= 1)
    {
      v40 = v39;
    }

    else
    {
      v40 = v37;
    }

    v41 = [v18 localizedStringForKey:v40 value:&stru_1F379FFA8 table:{0, secondDurationCopy}];
    v42 = MEMORY[0x1E696AD98];
    integerValue4 = [*hourDuration integerValue];
    if (integerValue4 >= 0)
    {
      v44 = integerValue4;
    }

    else
    {
      v44 = -integerValue4;
    }

    v45 = [v42 numberWithInteger:v44];
    [durationsCopy addObject:v45];

    [unitsCopy addObject:v41];
    durationCopy4 = -duration;
  }

  if (duration >= 0.0)
  {
    durationCopy3 = duration;
  }

  else
  {
    durationCopy3 = durationCopy4;
  }

  if (durationCopy3 >= 60.0)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:(duration / 60.0)];
    *minuteDuration = v47;
    duration = duration - (60 * [v47 integerValue]);
    if (abbreviate)
    {
      v48 = @"min";
    }

    else
    {
      integerValue5 = [*minuteDuration integerValue];
      if (integerValue5 >= 0)
      {
        v50 = integerValue5;
      }

      else
      {
        v50 = -integerValue5;
      }

      if (v50 <= 1)
      {
        v48 = @"minute";
      }

      else
      {
        v48 = @"minutes";
      }
    }

    v51 = [v18 localizedStringForKey:v48 value:&stru_1F379FFA8 table:{0, secondDurationCopy}];
    v52 = MEMORY[0x1E696AD98];
    integerValue6 = [*minuteDuration integerValue];
    if (integerValue6 >= 0)
    {
      v54 = integerValue6;
    }

    else
    {
      v54 = -integerValue6;
    }

    v55 = [v52 numberWithInteger:v54];
    [durationsCopy addObject:v55];

    [unitsCopy addObject:v51];
    durationCopy4 = -duration;
  }

  if (duration >= 0.0)
  {
    durationCopy4 = duration;
  }

  if (durationCopy4 > 0.0)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithInt:duration];
    v57 = secondDurationCopy;
    *secondDurationCopy = v56;
    integerValue7 = [v56 integerValue];
    if (integerValue7 >= 0)
    {
      v59 = integerValue7;
    }

    else
    {
      v59 = -integerValue7;
    }

    if (v59 <= 1)
    {
      v60 = @"second";
    }

    else
    {
      v60 = @"seconds";
    }

    v61 = [v18 localizedStringForKey:v60 value:&stru_1F379FFA8 table:{0, secondDurationCopy}];
    v62 = MEMORY[0x1E696AD98];
    integerValue8 = [*v57 integerValue];
    if (integerValue8 >= 0)
    {
      v64 = integerValue8;
    }

    else
    {
      v64 = -integerValue8;
    }

    v65 = [v62 numberWithInteger:v64];
    [durationsCopy addObject:v65];

    [unitsCopy addObject:v61];
  }

  if (dayCopy && !*dayDuration)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    *dayDuration = v66;
    [durationsCopy insertObject:v66 atIndex:0];
    v67 = [v18 localizedStringForKey:@"day" value:@"day" table:0];
    [unitsCopy insertObject:v67 atIndex:0];
  }
}

+ (id)_stringWithDurations:(id)durations timeUnits:(id)units
{
  durationsCopy = durations;
  unitsCopy = units;
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  if ([durationsCopy count] == 1)
  {
    v8 = [durationsCopy objectAtIndex:0];
    integerValue = [v8 integerValue];

    v10 = MEMORY[0x1E696AEC0];
    v11 = [v7 localizedStringForKey:@"duration and unit one group" value:@"%ld %@" table:0];
    v12 = [unitsCopy objectAtIndex:0];
    v13 = [v10 localizedStringWithFormat:v11, integerValue, v12];
LABEL_9:

    goto LABEL_10;
  }

  if ([durationsCopy count] == 2)
  {
    v14 = [durationsCopy objectAtIndex:0];
    integerValue2 = [v14 integerValue];

    v16 = [durationsCopy objectAtIndex:1];
    integerValue3 = [v16 integerValue];

    v18 = MEMORY[0x1E696AEC0];
    v11 = [v7 localizedStringForKey:@"%ld %@ value:%ld %@" table:{&stru_1F379FFA8, 0}];
    v12 = [unitsCopy objectAtIndex:0];
    v19 = [unitsCopy objectAtIndex:1];
    v13 = [v18 localizedStringWithFormat:v11, integerValue2, v12, integerValue3, v19];

    goto LABEL_9;
  }

  if ([durationsCopy count] == 3)
  {
    v20 = [durationsCopy objectAtIndex:0];
    integerValue4 = [v20 integerValue];

    v21 = [durationsCopy objectAtIndex:1];
    integerValue5 = [v21 integerValue];

    v23 = [durationsCopy objectAtIndex:2];
    integerValue6 = [v23 integerValue];

    v25 = MEMORY[0x1E696AEC0];
    v11 = [v7 localizedStringForKey:@"%ld %@ value:%ld %@ table:{%ld %@", &stru_1F379FFA8, 0}];
    v12 = [unitsCopy objectAtIndex:0];
    v26 = [unitsCopy objectAtIndex:1];
    v27 = [unitsCopy objectAtIndex:2];
    v13 = [v25 localizedStringWithFormat:v11, integerValue4, v12, integerValue5, v26, integerValue6, v27];

    goto LABEL_9;
  }

  if ([durationsCopy count] == 4)
  {
    v28 = [durationsCopy objectAtIndex:0];
    integerValue7 = [v28 integerValue];

    v29 = [durationsCopy objectAtIndex:1];
    integerValue8 = [v29 integerValue];

    v30 = [durationsCopy objectAtIndex:2];
    integerValue9 = [v30 integerValue];

    v31 = [durationsCopy objectAtIndex:3];
    integerValue10 = [v31 integerValue];

    v33 = MEMORY[0x1E696AEC0];
    v11 = [v7 localizedStringForKey:@"%ld %@ value:%ld %@ table:{%ld %@, %ld %@", &stru_1F379FFA8, 0}];
    v12 = [unitsCopy objectAtIndex:0];
    v34 = [unitsCopy objectAtIndex:1];
    v35 = [unitsCopy objectAtIndex:2];
    v36 = [unitsCopy objectAtIndex:3];
    v13 = [v33 localizedStringWithFormat:v11, integerValue7, v12, integerValue8, v34, integerValue9, v35, integerValue10, v36];

    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

+ (id)_localizedStringWithTimeString:(id)string rawDuration:(double)duration options:(unint64_t)options
{
  optionsCopy = options;
  stringCopy = string;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v9 = v8;
  if ((optionsCopy & 8) != 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    if ((optionsCopy & 0x10) != 0)
    {
      if (duration < 0.0)
      {
        v12 = @"Alert %@ before travel";
      }

      else
      {
        v12 = @"Alert %@ after travel";
      }
    }

    else if (duration < 0.0)
    {
      v12 = @"Alert %@ before start";
    }

    else
    {
      v12 = @"Alert %@ after start";
    }
  }

  else
  {
    if ((optionsCopy & 4) == 0)
    {
      stringCopy = stringCopy;
      goto LABEL_15;
    }

    v11 = MEMORY[0x1E696AEC0];
    if (duration >= 0.0)
    {
      v12 = @"%@ after";
    }

    else
    {
      v12 = @"%@ before";
    }
  }

  v13 = [v8 localizedStringForKey:v12 value:&stru_1F379FFA8 table:0];
  stringCopy = [v11 localizedStringWithFormat:v13, stringCopy];

LABEL_15:

  return stringCopy;
}

@end