@interface NSDate(WFFormatting)
- (id)wf_formattedStringWithDateStyle:()WFFormatting timeStyle:relativeDateStyle:customDateFormat:includeTimeForISO8601:timeZone:locale:;
@end

@implementation NSDate(WFFormatting)

- (id)wf_formattedStringWithDateStyle:()WFFormatting timeStyle:relativeDateStyle:customDateFormat:includeTimeForISO8601:timeZone:locale:
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  currentLocale = a9;
  if (!currentLocale)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  }

  if ([v16 isEqualToString:@"Relative"])
  {
    v21 = objc_opt_new();
    [v21 setLocale:currentLocale];
    date = [MEMORY[0x277CBEAA8] date];
    v23 = [v21 localizedStringForDate:self relativeToDate:date];

    goto LABEL_17;
  }

  v21 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v21 setTimeZone:v19];
  [v21 setLocale:currentLocale];
  if ([v15 isEqualToString:@"Custom"])
  {
    [v21 setDateFormat:v18];
    localeIdentifier = [currentLocale localeIdentifier];
    if (([localeIdentifier hasSuffix:@"_POSIX"] & 1) == 0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@_POSIX", localeIdentifier];
      v25 = v31 = v17;
      v26 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v25];
      [v21 setLocale:v26];

      v17 = v31;
    }

    goto LABEL_16;
  }

  if (![v15 isEqualToString:@"RFC 2822"])
  {
    if ([v15 isEqualToString:@"ISO 8601"])
    {
      v29 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
      [v21 setLocale:v29];

      if (a7)
      {
        v28 = @"yyyy-MM-dd'T'HH:mm:ssZZZZZ";
      }

      else
      {
        v28 = @"yyyy-MM-dd";
      }

      goto LABEL_15;
    }

    v32 = 0;
    if ([v15 isEqualToString:@"Relative"])
    {
      [v21 setDoesRelativeDateFormatting:1];
      if ((WFDateFormatterStyleFromStyle(v17, &v32) & 1) == 0)
      {
LABEL_25:
        if (WFDateFormatterStyleFromStyle(v16, &v32))
        {
          [v21 setTimeStyle:v32];
        }

        goto LABEL_16;
      }
    }

    else if (!WFDateFormatterStyleFromStyle(v15, &v32))
    {
      goto LABEL_25;
    }

    [v21 setDateStyle:v32];
    goto LABEL_25;
  }

  v27 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v21 setLocale:v27];

  v28 = @"EEE, dd MMM yyyy HH:mm:ss Z";
LABEL_15:
  [v21 setDateFormat:v28];
LABEL_16:
  v23 = [v21 stringFromDate:self];
LABEL_17:

  return v23;
}

@end