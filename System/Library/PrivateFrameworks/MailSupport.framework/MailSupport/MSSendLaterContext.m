@interface MSSendLaterContext
+ (BOOL)shouldShowSendLaterDisclaimerAlertForContext:(unint64_t)a3;
+ (id)_configuredTitleForFormat:(id)a3 date:(id)a4;
+ (id)_nextMondayMorning;
+ (id)titleAndDateForSendLaterContext:(unint64_t)a3;
+ (unint64_t)contextForCurrentDate;
+ (unint64_t)contextForDate:(id)a3;
@end

@implementation MSSendLaterContext

+ (unint64_t)contextForCurrentDate
{
  v2 = [MEMORY[0x277CBEAA8] now];
  v3 = [MSSendLaterContext contextForDate:v2];

  return v3;
}

+ (unint64_t)contextForDate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v6 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v5 setTimeZone:v6];

  v21 = [MEMORY[0x277CBEAA8] ef_midnightInNdays:0];
  v7 = [v5 dateBySettingHour:7 minute:30 second:0 ofDate:v3 options:0];
  v20 = v7;
  if ([v3 ef_isLaterThanOrEqualDate:v21])
  {
    if ([v3 ef_isEarlierThanDate:v7])
    {
      v8 = 99;
    }

    else
    {
      v8 = 97;
    }
  }

  else
  {
    v8 = 97;
  }

  v9 = [v5 dateBySettingHour:5 minute:0 second:0 ofDate:v3 options:0];
  v10 = [v5 dateBySettingHour:20 minute:30 second:0 ofDate:v3 options:0];
  if ([v3 ef_isLaterThanOrEqualDate:v9] && objc_msgSend(v3, "ef_isEarlierThanDate:", v10))
  {
    v8 |= 4uLL;
  }

  v11 = [v5 dateBySettingHour:12 minute:0 second:0 ofDate:v3 options:0];
  v12 = [MEMORY[0x277CBEAA8] ef_midnightInNdays:1];
  if ([v3 ef_isLaterThanOrEqualDate:v11] && objc_msgSend(v3, "ef_isEarlierThanDate:", v12))
  {
    v8 |= 8uLL;
  }

  v13 = [v5 components:512 fromDate:v3];
  v14 = [v13 weekday];

  if (v14 == 1)
  {
    v15 = -1;
  }

  else
  {
    v15 = 6;
  }

  v16 = [MEMORY[0x277CBEAA8] ef_thisWeekday:v15 hour:17 minute:0 second:0];
  if (v14 == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 8;
  }

  v18 = [MEMORY[0x277CBEAA8] ef_thisWeekday:v17 hour:12 minute:0 second:0];
  if ([v3 ef_isLaterThanOrEqualDate:v16] && objc_msgSend(v3, "ef_isEarlierThanDate:", v18))
  {
    v8 |= 0x10uLL;
  }

  return v8;
}

+ (BOOL)shouldShowSendLaterDisclaimerAlertForContext:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v5 = [v4 BOOLForKey:*MEMORY[0x277D06CF0]];

  v6 = v5 ^ 1;
  if (a3 == 1)
  {
    v6 = 0;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFDFLL) != 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

+ (id)titleAndDateForSendLaterContext:(unint64_t)a3
{
  if (a3 <= 7)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v5 = [MEMORY[0x277CBEAA8] ef_morning];
        v12 = MEMORY[0x277D07190];
        v7 = [a1 _configuredTitleForFormat:@"Send at %@" date:v5];
        v8 = [v12 pairWithFirst:v7 second:v5];
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_19;
        }

        v5 = [MEMORY[0x277CBEAA8] ef_tonight];
        v9 = MEMORY[0x277D07190];
        v7 = [a1 _configuredTitleForFormat:@"Send %@ Tonight" date:v5];
        v8 = [v9 pairWithFirst:v7 second:v5];
      }

      goto LABEL_17;
    }

LABEL_15:
    v11 = MEMORY[0x277D07190];
    v5 = _EFLocalizedString();
    v3 = [v11 pairWithFirst:v5 second:0];
LABEL_18:

    goto LABEL_19;
  }

  if (a3 <= 31)
  {
    if (a3 == 8)
    {
      v5 = [MEMORY[0x277CBEAA8] ef_tomorrowMorning];
      v10 = MEMORY[0x277D07190];
      v7 = [a1 _configuredTitleForFormat:@"Send %@ Tomorrow" date:v5];
      v8 = [v10 pairWithFirst:v7 second:v5];
    }

    else
    {
      if (a3 != 16)
      {
        goto LABEL_19;
      }

      v5 = +[MSSendLaterContext _nextMondayMorning];
      v6 = MEMORY[0x277D07190];
      v7 = [a1 _configuredTitleForFormat:@"Send %@ Monday" date:v5];
      v8 = [v6 pairWithFirst:v7 second:v5];
    }

LABEL_17:
    v3 = v8;

    goto LABEL_18;
  }

  if (a3 == 32 || a3 == 64)
  {
    goto LABEL_15;
  }

LABEL_19:

  return v3;
}

+ (id)_nextMondayMorning
{
  v2 = objc_alloc(MEMORY[0x277CBEA80]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v4 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v3 setTimeZone:v4];

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v3 components:512 fromDate:v5];
  v7 = [v6 weekday];

  if (v7 == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 9;
  }

  v9 = [MEMORY[0x277CBEAA8] ef_thisWeekday:v8 hour:8 minute:0 second:0];

  return v9;
}

+ (id)_configuredTitleForFormat:(id)a3 date:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA968] ef_formatterForStyle:4];
  v8 = [v7 formattingContext];
  [v7 setFormattingContext:5];
  v9 = [v7 stringFromDate:v6];
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v10 component:32 fromDate:v6];
  v12 = MEMORY[0x277CCACA8];
  v13 = _EFLocalizedString();
  v14 = [v12 localizedStringWithFormat:v13, v11, v9];

  [v7 setFormattingContext:v8];

  return v14;
}

@end