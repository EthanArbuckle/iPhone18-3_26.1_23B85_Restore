@interface CalTimeIntervalLocalization
+ (id)_localizedStringWithTimeString:(id)a3 rawDuration:(double)a4 options:(unint64_t)a5;
+ (id)_localizedTimeStringForAllDayEventDuration:(double)a3 includeAlert:(BOOL)a4;
+ (id)_stringWithDurations:(id)a3 timeUnits:(id)a4;
+ (id)localizedStringForInterval:(double)a3 withOptions:(unint64_t)a4;
+ (void)_calculateDurations:(id)a3 timeUnits:(id)a4 forDuration:(double)a5 allDay:(BOOL)a6 dayDuration:(id *)a7 hourDuration:(id *)a8 minuteDuration:(id *)a9 secondDuration:(id *)a10 abbreviate:(BOOL)a11;
@end

@implementation CalTimeIntervalLocalization

+ (id)localizedStringForInterval:(double)a3 withOptions:(unint64_t)a4
{
  if (fabs(a3) >= 2.22044605e-16 || (a4 & 1) == 0)
  {
    if ((a4 & 0x20) != 0)
    {
      v12 = [a1 _localizedTimeStringForAllDayEventDuration:(a4 >> 3) & 1 includeAlert:a3];
    }

    else
    {
      v8 = [a1 _localizedTimeStringForTimedEventDuration:(a4 >> 1) & 1 abbreviate:a3];
      v12 = [a1 _localizedStringWithTimeString:v8 rawDuration:a4 options:a3];
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

+ (id)_localizedTimeStringForAllDayEventDuration:(double)a3 includeAlert:(BOOL)a4
{
  v4 = a4;
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  LOBYTE(v33) = 0;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [a1 _calculateDurations:v8 timeUnits:a3 forDuration:&v38 allDay:v33 dayDuration:? hourDuration:? minuteDuration:? secondDuration:? abbreviate:?];
  v36 = v41;
  v9 = v40;
  v10 = v39;
  v11 = v38;
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v14 = [v13 components:28 fromDate:v12];

  v35 = v9;
  [v14 setHour:{objc_msgSend(v9, "integerValue")}];
  v15 = [v10 integerValue];

  [v14 setMinute:v15];
  v16 = [MEMORY[0x1E695DEE8] sharedAutoupdatingCurrentCalendar];
  v17 = [v16 dateFromComponents:v14];

  v18 = [v17 timeStringAlwaysIncludeMinutes:0];
  v19 = [v8 objectAtIndex:0];
  v20 = [v19 integerValue];

  if (!v4)
  {
    if (v20 == 7)
    {
      if (a3 < 0.0)
      {
        v22 = MEMORY[0x1E696AEC0];
        v25 = @"1 week before";
        goto LABEL_15;
      }
    }

    else
    {
      if (!v20)
      {
        v21 = v7;
        v22 = MEMORY[0x1E696AEC0];
        if (a3 < 0.0)
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

      if (a3 < 0.0)
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

  if (v20 == 7)
  {
    if (a3 >= 0.0)
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

  if (v20)
  {
    if (a3 < 0.0)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = @"Alert %ld days before at %@";
LABEL_22:
      v24 = [v7 localizedStringForKey:v27 value:&stru_1F379FFA8 table:0];
      v28 = v26;
      v21 = v7;
      [v28 localizedStringWithFormat:v24, v20, v18];
      goto LABEL_27;
    }

LABEL_18:
    v26 = MEMORY[0x1E696AEC0];
    v27 = @"Alert %ld days after at %@";
    goto LABEL_22;
  }

  v21 = v7;
  v22 = MEMORY[0x1E696AEC0];
  if (a3 >= 0.0)
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

+ (void)_calculateDurations:(id)a3 timeUnits:(id)a4 forDuration:(double)a5 allDay:(BOOL)a6 dayDuration:(id *)a7 hourDuration:(id *)a8 minuteDuration:(id *)a9 secondDuration:(id *)a10 abbreviate:(BOOL)a11
{
  v14 = a6;
  v68 = a10;
  v69 = a3;
  v17 = a4;
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v19 = -a5;
  if (a5 >= 0.0)
  {
    v20 = a5;
  }

  else
  {
    v20 = -a5;
  }

  if (v20 < 86400.0)
  {
    goto LABEL_24;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithInt:(a5 / 86400.0)];
  *a7 = v21;
  v22 = (86400 * [v21 integerValue]);
  v23 = *a7;
  if (a5 < 0.0 && v14)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v23, "integerValue") - 1}];
    *a7 = v23;
  }

  a5 = a5 - v22;
  v24 = [v23 integerValue];
  if (v24 >= 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = -v24;
  }

  if (v25 < 2)
  {
    if (a11)
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

  if (!a11)
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
  v31 = [*a7 integerValue];
  if (v31 >= 0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -v31;
  }

  v33 = [v30 numberWithInteger:v32];
  [v69 addObject:v33];

  [v17 addObject:v29];
  v19 = -a5;
LABEL_24:
  if (a5 >= 0.0)
  {
    v34 = a5;
  }

  else
  {
    v34 = v19;
  }

  if (v34 >= 3600.0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:(a5 / 3600.0)];
    *a8 = v35;
    a5 = a5 - (3600 * [v35 integerValue]);
    v36 = [*a8 integerValue];
    v37 = @"hours";
    if (v36 >= 0)
    {
      v38 = v36;
    }

    else
    {
      v38 = -v36;
    }

    if (a11)
    {
      v37 = @"hrs";
    }

    v39 = @"hr";
    if (!a11)
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

    v41 = [v18 localizedStringForKey:v40 value:&stru_1F379FFA8 table:{0, v68}];
    v42 = MEMORY[0x1E696AD98];
    v43 = [*a8 integerValue];
    if (v43 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = -v43;
    }

    v45 = [v42 numberWithInteger:v44];
    [v69 addObject:v45];

    [v17 addObject:v41];
    v19 = -a5;
  }

  if (a5 >= 0.0)
  {
    v46 = a5;
  }

  else
  {
    v46 = v19;
  }

  if (v46 >= 60.0)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:(a5 / 60.0)];
    *a9 = v47;
    a5 = a5 - (60 * [v47 integerValue]);
    if (a11)
    {
      v48 = @"min";
    }

    else
    {
      v49 = [*a9 integerValue];
      if (v49 >= 0)
      {
        v50 = v49;
      }

      else
      {
        v50 = -v49;
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

    v51 = [v18 localizedStringForKey:v48 value:&stru_1F379FFA8 table:{0, v68}];
    v52 = MEMORY[0x1E696AD98];
    v53 = [*a9 integerValue];
    if (v53 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = -v53;
    }

    v55 = [v52 numberWithInteger:v54];
    [v69 addObject:v55];

    [v17 addObject:v51];
    v19 = -a5;
  }

  if (a5 >= 0.0)
  {
    v19 = a5;
  }

  if (v19 > 0.0)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithInt:a5];
    v57 = v68;
    *v68 = v56;
    v58 = [v56 integerValue];
    if (v58 >= 0)
    {
      v59 = v58;
    }

    else
    {
      v59 = -v58;
    }

    if (v59 <= 1)
    {
      v60 = @"second";
    }

    else
    {
      v60 = @"seconds";
    }

    v61 = [v18 localizedStringForKey:v60 value:&stru_1F379FFA8 table:{0, v68}];
    v62 = MEMORY[0x1E696AD98];
    v63 = [*v57 integerValue];
    if (v63 >= 0)
    {
      v64 = v63;
    }

    else
    {
      v64 = -v63;
    }

    v65 = [v62 numberWithInteger:v64];
    [v69 addObject:v65];

    [v17 addObject:v61];
  }

  if (v14 && !*a7)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    *a7 = v66;
    [v69 insertObject:v66 atIndex:0];
    v67 = [v18 localizedStringForKey:@"day" value:@"day" table:0];
    [v17 insertObject:v67 atIndex:0];
  }
}

+ (id)_stringWithDurations:(id)a3 timeUnits:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  if ([v5 count] == 1)
  {
    v8 = [v5 objectAtIndex:0];
    v9 = [v8 integerValue];

    v10 = MEMORY[0x1E696AEC0];
    v11 = [v7 localizedStringForKey:@"duration and unit one group" value:@"%ld %@" table:0];
    v12 = [v6 objectAtIndex:0];
    v13 = [v10 localizedStringWithFormat:v11, v9, v12];
LABEL_9:

    goto LABEL_10;
  }

  if ([v5 count] == 2)
  {
    v14 = [v5 objectAtIndex:0];
    v15 = [v14 integerValue];

    v16 = [v5 objectAtIndex:1];
    v17 = [v16 integerValue];

    v18 = MEMORY[0x1E696AEC0];
    v11 = [v7 localizedStringForKey:@"%ld %@ value:%ld %@" table:{&stru_1F379FFA8, 0}];
    v12 = [v6 objectAtIndex:0];
    v19 = [v6 objectAtIndex:1];
    v13 = [v18 localizedStringWithFormat:v11, v15, v12, v17, v19];

    goto LABEL_9;
  }

  if ([v5 count] == 3)
  {
    v20 = [v5 objectAtIndex:0];
    v40 = [v20 integerValue];

    v21 = [v5 objectAtIndex:1];
    v22 = [v21 integerValue];

    v23 = [v5 objectAtIndex:2];
    v24 = [v23 integerValue];

    v25 = MEMORY[0x1E696AEC0];
    v11 = [v7 localizedStringForKey:@"%ld %@ value:%ld %@ table:{%ld %@", &stru_1F379FFA8, 0}];
    v12 = [v6 objectAtIndex:0];
    v26 = [v6 objectAtIndex:1];
    v27 = [v6 objectAtIndex:2];
    v13 = [v25 localizedStringWithFormat:v11, v40, v12, v22, v26, v24, v27];

    goto LABEL_9;
  }

  if ([v5 count] == 4)
  {
    v28 = [v5 objectAtIndex:0];
    v41 = [v28 integerValue];

    v29 = [v5 objectAtIndex:1];
    v39 = [v29 integerValue];

    v30 = [v5 objectAtIndex:2];
    v38 = [v30 integerValue];

    v31 = [v5 objectAtIndex:3];
    v32 = [v31 integerValue];

    v33 = MEMORY[0x1E696AEC0];
    v11 = [v7 localizedStringForKey:@"%ld %@ value:%ld %@ table:{%ld %@, %ld %@", &stru_1F379FFA8, 0}];
    v12 = [v6 objectAtIndex:0];
    v34 = [v6 objectAtIndex:1];
    v35 = [v6 objectAtIndex:2];
    v36 = [v6 objectAtIndex:3];
    v13 = [v33 localizedStringWithFormat:v11, v41, v12, v39, v34, v38, v35, v32, v36];

    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

+ (id)_localizedStringWithTimeString:(id)a3 rawDuration:(double)a4 options:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v9 = v8;
  if ((v5 & 8) != 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    if ((v5 & 0x10) != 0)
    {
      if (a4 < 0.0)
      {
        v12 = @"Alert %@ before travel";
      }

      else
      {
        v12 = @"Alert %@ after travel";
      }
    }

    else if (a4 < 0.0)
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
    if ((v5 & 4) == 0)
    {
      v10 = v7;
      goto LABEL_15;
    }

    v11 = MEMORY[0x1E696AEC0];
    if (a4 >= 0.0)
    {
      v12 = @"%@ after";
    }

    else
    {
      v12 = @"%@ before";
    }
  }

  v13 = [v8 localizedStringForKey:v12 value:&stru_1F379FFA8 table:0];
  v10 = [v11 localizedStringWithFormat:v13, v7];

LABEL_15:

  return v10;
}

@end