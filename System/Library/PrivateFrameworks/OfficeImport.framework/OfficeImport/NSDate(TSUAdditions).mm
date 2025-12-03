@interface NSDate(TSUAdditions)
- (BOOL)tsu_isEqualToDate:()TSUAdditions;
- (__CFString)tsu_relativeAnnotationStringForEarlierDate:()TSUAdditions withDateFormatter:shortAsPossible:;
- (id)p_rule1To23HoursAgo:()TSUAdditions;
- (id)p_rule1To59MinutesAgo:()TSUAdditions;
- (id)p_ruleForOverAWeekAgoForDate:()TSUAdditions withDateFormatter:;
- (id)p_ruleForOverAYearAgoForDate:()TSUAdditions withDateFormatter:;
- (id)p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:()TSUAdditions withDateFormatter:;
- (id)p_ruleForYesterday:()TSUAdditions withDateFormatter:;
- (id)p_ruleForYesterdayShortAsPossible:()TSUAdditions;
- (id)tsu_fullFormattedDateWithPeriod;
- (id)tsu_initWithDOSTime:()TSUAdditions;
- (uint64_t)tsu_DOSTime;
@end

@implementation NSDate(TSUAdditions)

- (id)tsu_initWithDOSTime:()TSUAdditions
{
  v4 = 0;
  memset(&v9.tm_wday, 0, 32);
  v9.tm_isdst = -1;
  v9.tm_sec = (a3 >> 15) & 0x3E;
  v9.tm_min = (a3 >> 21) & 0x3F;
  v9.tm_hour = a3 >> 27;
  v9.tm_mday = a3 & 0x1F;
  v5 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF7FFFFFFFBLL), 0x7F0000000FLL);
  *&v9.tm_mon = vadd_s32(v5, 0x50FFFFFFFFLL);
  v7 = (v5.i32[0] - 13) < 0xFFFFFFF4 || a3 >> 30 == 3 || (a3 & 0x1F) == 0;
  if (!v7 && ((a3 >> 21) & 0x3F) <= 0x3B && ((a3 >> 15) & 0x3E) <= 0x3B)
  {
    v4 = [self initWithTimeIntervalSince1970:mktime(&v9)];
  }

  return v4;
}

- (uint64_t)tsu_DOSTime
{
  [self timeIntervalSince1970];
  v5 = v1;
  v2 = localtime(&v5);
  tm_year = v2->tm_year;
  if (tm_year <= 81)
  {
    LOWORD(tm_year) = 81;
  }

  return ((32 * v2->tm_mon + 32) | v2->tm_mday | ((tm_year << 9) + 24576)) | (((32 * LOWORD(v2->tm_min)) | (v2->tm_hour << 11) | (v2->tm_sec >> 1)) << 16);
}

- (__CFString)tsu_relativeAnnotationStringForEarlierDate:()TSUAdditions withDateFormatter:shortAsPossible:
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    tsu_fullFormattedDateWithPeriod = @" ";
    goto LABEL_23;
  }

  if ([self compare:v8] == -1)
  {
    tsu_fullFormattedDateWithPeriod = [self tsu_fullFormattedDateWithPeriod];
    goto LABEL_23;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [currentCalendar components:240 fromDate:v8 toDate:self options:0];
  v12 = [currentCalendar components:752 fromDate:v8];
  v13 = [currentCalendar components:512 fromDate:self];
  weekday = [v13 weekday];
  v15 = weekday - [v12 weekday] == 1 || objc_msgSend(v12, "weekday") == 7 && objc_msgSend(v13, "weekday") == 1;
  if ([v11 day] < 365)
  {
    if ([v11 day] < 8)
    {
      if ([v11 day] <= 1 && (objc_msgSend(v11, "day") != 1 || v15))
      {
        if ([v11 day] == 1 && v15)
        {
          if (a5)
          {
            [self p_ruleForYesterdayShortAsPossible:v8];
          }

          else
          {
            [self p_ruleForYesterday:v8 withDateFormatter:v9];
          }
          v17 = ;
        }

        else if ([v11 hour] < 1)
        {
          if ([v11 minute] < 1)
          {
            v20 = SFUBundle();
            v18 = [v20 localizedStringForKey:@"Just now" value:&stru_286EE1130 table:@"TSUtility"];

            goto LABEL_22;
          }

          v17 = [self p_rule1To59MinutesAgo:{objc_msgSend(v11, "minute")}];
        }

        else
        {
          v17 = [self p_rule1To23HoursAgo:{objc_msgSend(v11, "hour")}];
        }
      }

      else
      {
        v17 = [self p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:v8 withDateFormatter:v9];
      }
    }

    else
    {
      v17 = [self p_ruleForOverAWeekAgoForDate:v8 withDateFormatter:v9];
    }
  }

  else
  {
    v17 = [self p_ruleForOverAYearAgoForDate:v8 withDateFormatter:v9];
  }

  v18 = v17;
LABEL_22:
  tsu_fullFormattedDateWithPeriod = v18;

LABEL_23:

  return tsu_fullFormattedDateWithPeriod;
}

- (id)p_rule1To59MinutesAgo:()TSUAdditions
{
  v4 = SFUBundle();
  v5 = [v4 localizedStringForKey:@"%ld min ago" value:&stru_286EE1130 table:@"TSUtility"];

  v6 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, a3];

  return v6;
}

- (id)p_rule1To23HoursAgo:()TSUAdditions
{
  v4 = MEMORY[0x277CCACA8];
  v5 = SFUBundle();
  v6 = [v5 localizedStringForKey:@"%ld hour(s) ago" value:&stru_286EE1130 table:@"TSUtility"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (id)p_ruleForYesterdayShortAsPossible:()TSUAdditions
{
  v0 = SFUBundle();
  v1 = [v0 localizedStringForKey:@"Yesterday" value:&stru_286EE1130 table:@"TSUtility"];

  return v1;
}

- (id)p_ruleForYesterday:()TSUAdditions withDateFormatter:
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  }

  [v6 setLocalizedDateFormatFromTemplate:@"hhmma"];
  v7 = SFUBundle();
  v8 = [v7 localizedStringForKey:@"Yesterday value:%@" table:{&stru_286EE1130, @"TSUtility"}];

  v9 = MEMORY[0x277CCACA8];
  v10 = [v6 stringFromDate:v5];
  v11 = [v9 stringWithFormat:v8, v10];

  return v11;
}

- (id)p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:()TSUAdditions withDateFormatter:
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  }

  [v6 setLocalizedDateFormatFromTemplate:@"eeehhmma"];
  v7 = [v6 stringFromDate:v5];

  return v7;
}

- (id)p_ruleForOverAWeekAgoForDate:()TSUAdditions withDateFormatter:
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  }

  [v6 setLocalizedDateFormatFromTemplate:@"MMMdhhmma"];
  v7 = [v6 stringFromDate:v5];

  return v7;
}

- (id)p_ruleForOverAYearAgoForDate:()TSUAdditions withDateFormatter:
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  }

  [v6 setLocalizedDateFormatFromTemplate:@"Mdy"];
  v7 = [v6 stringFromDate:v5];

  return v7;
}

- (id)tsu_fullFormattedDateWithPeriod
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setLocalizedDateFormatFromTemplate:@"MMMMddyyyyhhmma"];
  v3 = [v2 stringFromDate:self];

  return v3;
}

- (BOOL)tsu_isEqualToDate:()TSUAdditions
{
  v4 = a3;
  if (v4)
  {
    [self timeIntervalSince1970];
    v6 = v5;
    [v4 timeIntervalSince1970];
    v8 = v6 == v7 || vabdd_f64(v6, v7) < fabs(v7 * 1.0e-10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end