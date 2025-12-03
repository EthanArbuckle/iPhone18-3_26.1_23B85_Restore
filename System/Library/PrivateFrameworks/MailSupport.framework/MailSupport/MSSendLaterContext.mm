@interface MSSendLaterContext
+ (BOOL)shouldShowSendLaterDisclaimerAlertForContext:(unint64_t)context;
+ (id)_configuredTitleForFormat:(id)format date:(id)date;
+ (id)_nextMondayMorning;
+ (id)titleAndDateForSendLaterContext:(unint64_t)context;
+ (unint64_t)contextForCurrentDate;
+ (unint64_t)contextForDate:(id)date;
@end

@implementation MSSendLaterContext

+ (unint64_t)contextForCurrentDate
{
  v2 = [MEMORY[0x277CBEAA8] now];
  v3 = [MSSendLaterContext contextForDate:v2];

  return v3;
}

+ (unint64_t)contextForDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v5 setTimeZone:localTimeZone];

  v21 = [MEMORY[0x277CBEAA8] ef_midnightInNdays:0];
  v7 = [v5 dateBySettingHour:7 minute:30 second:0 ofDate:dateCopy options:0];
  v20 = v7;
  if ([dateCopy ef_isLaterThanOrEqualDate:v21])
  {
    if ([dateCopy ef_isEarlierThanDate:v7])
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

  v9 = [v5 dateBySettingHour:5 minute:0 second:0 ofDate:dateCopy options:0];
  v10 = [v5 dateBySettingHour:20 minute:30 second:0 ofDate:dateCopy options:0];
  if ([dateCopy ef_isLaterThanOrEqualDate:v9] && objc_msgSend(dateCopy, "ef_isEarlierThanDate:", v10))
  {
    v8 |= 4uLL;
  }

  v11 = [v5 dateBySettingHour:12 minute:0 second:0 ofDate:dateCopy options:0];
  v12 = [MEMORY[0x277CBEAA8] ef_midnightInNdays:1];
  if ([dateCopy ef_isLaterThanOrEqualDate:v11] && objc_msgSend(dateCopy, "ef_isEarlierThanDate:", v12))
  {
    v8 |= 8uLL;
  }

  v13 = [v5 components:512 fromDate:dateCopy];
  weekday = [v13 weekday];

  if (weekday == 1)
  {
    v15 = -1;
  }

  else
  {
    v15 = 6;
  }

  v16 = [MEMORY[0x277CBEAA8] ef_thisWeekday:v15 hour:17 minute:0 second:0];
  if (weekday == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 8;
  }

  v18 = [MEMORY[0x277CBEAA8] ef_thisWeekday:v17 hour:12 minute:0 second:0];
  if ([dateCopy ef_isLaterThanOrEqualDate:v16] && objc_msgSend(dateCopy, "ef_isEarlierThanDate:", v18))
  {
    v8 |= 0x10uLL;
  }

  return v8;
}

+ (BOOL)shouldShowSendLaterDisclaimerAlertForContext:(unint64_t)context
{
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v5 = [em_userDefaults BOOLForKey:*MEMORY[0x277D06CF0]];

  v6 = v5 ^ 1;
  if (context == 1)
  {
    v6 = 0;
  }

  if ((context & 0xFFFFFFFFFFFFFFDFLL) != 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

+ (id)titleAndDateForSendLaterContext:(unint64_t)context
{
  if (context <= 7)
  {
    if (context != 1)
    {
      if (context == 2)
      {
        ef_morning = [MEMORY[0x277CBEAA8] ef_morning];
        v12 = MEMORY[0x277D07190];
        v7 = [self _configuredTitleForFormat:@"Send at %@" date:ef_morning];
        v8 = [v12 pairWithFirst:v7 second:ef_morning];
      }

      else
      {
        if (context != 4)
        {
          goto LABEL_19;
        }

        ef_morning = [MEMORY[0x277CBEAA8] ef_tonight];
        v9 = MEMORY[0x277D07190];
        v7 = [self _configuredTitleForFormat:@"Send %@ Tonight" date:ef_morning];
        v8 = [v9 pairWithFirst:v7 second:ef_morning];
      }

      goto LABEL_17;
    }

LABEL_15:
    v11 = MEMORY[0x277D07190];
    ef_morning = _EFLocalizedString();
    v3 = [v11 pairWithFirst:ef_morning second:0];
LABEL_18:

    goto LABEL_19;
  }

  if (context <= 31)
  {
    if (context == 8)
    {
      ef_morning = [MEMORY[0x277CBEAA8] ef_tomorrowMorning];
      v10 = MEMORY[0x277D07190];
      v7 = [self _configuredTitleForFormat:@"Send %@ Tomorrow" date:ef_morning];
      v8 = [v10 pairWithFirst:v7 second:ef_morning];
    }

    else
    {
      if (context != 16)
      {
        goto LABEL_19;
      }

      ef_morning = +[MSSendLaterContext _nextMondayMorning];
      v6 = MEMORY[0x277D07190];
      v7 = [self _configuredTitleForFormat:@"Send %@ Monday" date:ef_morning];
      v8 = [v6 pairWithFirst:v7 second:ef_morning];
    }

LABEL_17:
    v3 = v8;

    goto LABEL_18;
  }

  if (context == 32 || context == 64)
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
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v3 setTimeZone:localTimeZone];

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v3 components:512 fromDate:v5];
  weekday = [v6 weekday];

  if (weekday == 1)
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

+ (id)_configuredTitleForFormat:(id)format date:(id)date
{
  formatCopy = format;
  dateCopy = date;
  v7 = [MEMORY[0x277CCA968] ef_formatterForStyle:4];
  formattingContext = [v7 formattingContext];
  [v7 setFormattingContext:5];
  v9 = [v7 stringFromDate:dateCopy];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [currentCalendar component:32 fromDate:dateCopy];
  v12 = MEMORY[0x277CCACA8];
  v13 = _EFLocalizedString();
  v14 = [v12 localizedStringWithFormat:v13, v11, v9];

  [v7 setFormattingContext:formattingContext];

  return v14;
}

@end