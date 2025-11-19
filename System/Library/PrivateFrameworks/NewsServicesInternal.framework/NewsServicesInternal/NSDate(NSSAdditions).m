@interface NSDate(NSSAdditions)
+ (id)_todayStringDateFormatterForThread;
- (void)nss_gregorianDescriptionWithFlags:()NSSAdditions options:completion:;
@end

@implementation NSDate(NSSAdditions)

+ (id)_todayStringDateFormatterForThread
{
  v0 = [MEMORY[0x277CCACC8] currentThread];
  v1 = [v0 threadDictionary];
  v2 = [v1 objectForKey:@"kCurrentThreadTodayStringFormatterKey"];

  if (!v2)
  {
    v2 = objc_opt_new();
    [v2 setDoesRelativeDateFormatting:1];
    [v2 setTimeStyle:0];
    [v2 setDateStyle:4];
    v3 = [MEMORY[0x277CCACC8] currentThread];
    v4 = [v3 threadDictionary];
    [v4 setObject:v2 forKey:@"kCurrentThreadTodayStringFormatterKey"];
  }

  return v2;
}

- (void)nss_gregorianDescriptionWithFlags:()NSSAdditions options:completion:
{
  v56 = a5;
  [a1 timeIntervalSinceNow];
  v9 = v8;
  v10 = -v8;
  if (v9 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [MEMORY[0x277CCACC8] currentThread];
  v13 = [v12 threadDictionary];
  v14 = [v13 objectForKey:@"NSDateCurrentThreadNSDateComponentsFormatterKey"];

  if (!v14)
  {
    v14 = objc_opt_new();
    [v14 setUnitsStyle:5];
    [v14 setAllowedUnits:124];
    [v14 setFormattingContext:2];
    [v14 setMaximumUnitCount:1];
    v15 = [MEMORY[0x277CCACC8] currentThread];
    v16 = [v15 threadDictionary];
    [v16 setObject:v14 forKey:@"NSDateCurrentThreadNSDateComponentsFormatterKey"];
  }

  if (v9 >= 0.0 || v11 < 60.0)
  {
    v19 = NSSBundleInternal();
    v20 = [v19 localizedStringForKey:@"now" value:&stru_286D8BB50 table:0];

    v21 = v20;
LABEL_12:
    v22 = v21;
    v23 = v22;
    v18 = v22;
    goto LABEL_59;
  }

  if (v11 >= 3600.0)
  {
    if (v11 >= 86400.0)
    {
      if (v11 >= 604800.0)
      {
        if (v11 >= 31449600.0)
        {
          if (a3)
          {
            v18 = [v14 stringFromTimeInterval:v11];
          }

          else
          {
            v18 = 0;
          }

          v46 = v11 / 31449600.0;
          v31 = floorf(v46);
          if ((a3 & 2) != 0)
          {
            v53 = MEMORY[0x277CCACA8];
            v54 = NSSBundleInternal();
            v55 = [v54 localizedStringForKey:@"%d year/years ago medium" value:&stru_286D8BB50 table:0];
            v23 = [v53 localizedStringWithFormat:v55, v31];
          }

          else
          {
            v23 = 0;
          }

          if ((a3 & 4) == 0)
          {
            goto LABEL_58;
          }

          v36 = MEMORY[0x277CCACA8];
          v37 = NSSBundleInternal();
          v38 = v37;
          v39 = @"%d year/years ago long";
        }

        else
        {
          if (a3)
          {
            v18 = [v14 stringFromTimeInterval:v11];
          }

          else
          {
            v18 = 0;
          }

          v45 = v11 / 604800.0;
          v31 = floorf(v45);
          if ((a3 & 2) != 0)
          {
            v50 = MEMORY[0x277CCACA8];
            v51 = NSSBundleInternal();
            v52 = [v51 localizedStringForKey:@"%d week/weeks ago medium" value:&stru_286D8BB50 table:0];
            v23 = [v50 localizedStringWithFormat:v52, v31];
          }

          else
          {
            v23 = 0;
          }

          if ((a3 & 4) == 0)
          {
            goto LABEL_58;
          }

          v36 = MEMORY[0x277CCACA8];
          v37 = NSSBundleInternal();
          v38 = v37;
          v39 = @"%d week/weeks ago long";
        }

        goto LABEL_27;
      }

      if (a3)
      {
        v18 = [v14 stringFromTimeInterval:v11];
      }

      else
      {
        v18 = 0;
      }

      v32 = v11 / 86400.0;
      v31 = floorf(v32);
      if ((a3 & 2) != 0)
      {
        v47 = MEMORY[0x277CCACA8];
        v48 = NSSBundleInternal();
        v49 = [v48 localizedStringForKey:@"%d day/days ago medium" value:&stru_286D8BB50 table:0];
        v23 = [v47 localizedStringWithFormat:v49, v31];

        if ((a3 & 4) == 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v23 = 0;
        if ((a3 & 4) == 0)
        {
          goto LABEL_58;
        }
      }

      v36 = MEMORY[0x277CCACA8];
      v37 = NSSBundleInternal();
      v38 = v37;
      v39 = @"%d day/days ago long";
      goto LABEL_27;
    }

    v24 = v11 / 3600.0;
    v25 = floorf(v24);
    if ((a4 & 1) != 0 && v25 > 6.0)
    {
      v26 = [MEMORY[0x277CBEA80] currentCalendar];
      v27 = [v26 isDateInToday:a1];

      if (v27)
      {
        v28 = [MEMORY[0x277CBEAA8] _todayStringDateFormatterForThread];
        v29 = [MEMORY[0x277CBEAA8] date];
        v30 = [v28 stringFromDate:v29];

        v21 = v30;
        goto LABEL_12;
      }
    }

    if (a3)
    {
      v18 = [v14 stringFromTimeInterval:v11];
      if ((a3 & 2) != 0)
      {
LABEL_31:
        v42 = MEMORY[0x277CCACA8];
        v43 = NSSBundleInternal();
        v44 = [v43 localizedStringForKey:@"%d hour/hours ago medium" value:&stru_286D8BB50 table:0];
        v23 = [v42 localizedStringWithFormat:v44, v25];

        if ((a3 & 4) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v18 = 0;
      if ((a3 & 2) != 0)
      {
        goto LABEL_31;
      }
    }

    v23 = 0;
    if ((a3 & 4) == 0)
    {
      goto LABEL_58;
    }

LABEL_38:
    v36 = MEMORY[0x277CCACA8];
    v38 = NSSBundleInternal();
    v40 = [v38 localizedStringForKey:@"%d hour/hours ago long" value:&stru_286D8BB50 table:0];
    v41 = v25;
    goto LABEL_28;
  }

  if (a3)
  {
    v18 = [v14 stringFromTimeInterval:v11];
  }

  else
  {
    v18 = 0;
  }

  v17 = v11 / 60.0;
  v31 = floorf(v17);
  if ((a3 & 2) == 0)
  {
    v23 = 0;
    if ((a3 & 4) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_26;
  }

  v33 = MEMORY[0x277CCACA8];
  v34 = NSSBundleInternal();
  v35 = [v34 localizedStringForKey:@"%d minute/minutes ago medium" value:&stru_286D8BB50 table:0];
  v23 = [v33 localizedStringWithFormat:v35, v31];

  if ((a3 & 4) != 0)
  {
LABEL_26:
    v36 = MEMORY[0x277CCACA8];
    v37 = NSSBundleInternal();
    v38 = v37;
    v39 = @"%d minute/minutes ago long";
LABEL_27:
    v40 = [v37 localizedStringForKey:v39 value:&stru_286D8BB50 table:0];
    v41 = v31;
LABEL_28:
    v22 = [v36 localizedStringWithFormat:v40, v41];

    goto LABEL_59;
  }

LABEL_58:
  v22 = 0;
LABEL_59:
  if (v56)
  {
    v56[2](v56, v18, v23, v22);
  }
}

@end