@interface NTKComplicationDateFormatter
+ (id)_localizedDayDateFormatter;
+ (id)dateFormatterForStyle:(unint64_t)style;
+ (id)stringForDate:(id)date withStyle:(unint64_t)style;
+ (void)_handleLocaleChange:(id)change;
+ (void)_handleSignificantTimeChange:(id)change;
+ (void)initialize;
@end

@implementation NTKComplicationDateFormatter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__handleLocaleChange_ name:*MEMORY[0x277CBE620] object:0];
  }
}

+ (void)_handleSignificantTimeChange:(id)change
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v4 = _NTKAllDateFormatters();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NTKComplicationDateFormatter__handleSignificantTimeChange___block_invoke;
  v6[3] = &unk_27877E360;
  v7 = systemTimeZone;
  v5 = systemTimeZone;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

+ (void)_handleLocaleChange:(id)change
{
  v3 = _NTKAllDateFormatters();
  [v3 removeAllObjects];
}

+ (id)stringForDate:(id)date withStyle:(unint64_t)style
{
  if (!date)
  {
    v9 = &stru_284110E98;
    goto LABEL_14;
  }

  dateCopy = date;
  v7 = [self dateFormatterForStyle:style];
  v8 = [v7 stringFromDate:dateCopy];

  v9 = _NTKRemovePunctationIfNecessaryFromTextForDateStyle(v8, style);

  if (style <= 255)
  {
    if (style != 1 && style != 8)
    {
      goto LABEL_13;
    }
  }

  else if (style != 4096 && style != 2048)
  {
    if (style != 256 || (NTKCanUseAllUppercaseLongDateStrings() & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (NTKUseAllUppercaseShortWeekdays())
  {
LABEL_12:
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [(__CFString *)v9 uppercaseStringWithLocale:currentLocale];

    v9 = v11;
  }

LABEL_13:

LABEL_14:

  return v9;
}

+ (id)dateFormatterForStyle:(unint64_t)style
{
  v4 = _NTKAllDateFormatters();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = 0;
    if (style <= 63)
    {
      if (style > 7)
      {
        if (style == 8)
        {
          v7 = @"E d";
LABEL_34:
          v6 = objc_opt_new();
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          v9 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];

          LODWORD(currentLocale) = [v9 isEqualToString:@"en"];
          if (!currentLocale)
          {
LABEL_38:
            [v6 setLocalizedDateFormatFromTemplate:v7];
            goto LABEL_39;
          }

LABEL_35:
          [v6 setDateFormat:v7];
LABEL_39:
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
          [v4 setObject:v6 forKeyedSubscript:v10];

          goto LABEL_40;
        }

        if (style != 16)
        {
          if (style == 32)
          {
            v7 = @"EMMMd";
          }

          goto LABEL_37;
        }

        goto LABEL_24;
      }

      switch(style)
      {
        case 1uLL:
          v7 = @"E";
          break;
        case 2uLL:
          v7 = @"EEEE";
          break;
        case 4uLL:
          v6 = objc_opt_new();
          v7 = @"d";
          if ((CLKIsCurrentLocaleCJK() & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_35;
      }
    }

    else
    {
      if (style > 511)
      {
        if (style > 2047)
        {
          if (style == 2048)
          {
            v7 = @"EEEEE d";
          }

          else if (style == 4096)
          {
            v7 = @"EEEEEE d";
          }

          goto LABEL_37;
        }

        if (style != 512)
        {
          if (style == 1024)
          {
            v7 = @"M/d";
          }

          goto LABEL_37;
        }

        v7 = @"EEEE d";
        goto LABEL_34;
      }

      switch(style)
      {
        case 0x40uLL:
          v7 = @"MMMd";
          break;
        case 0x80uLL:
          v7 = @"MMM";
          break;
        case 0x100uLL:
LABEL_24:
          v7 = @"EEEEMMMd";
          break;
        default:
          break;
      }
    }

LABEL_37:
    v6 = objc_opt_new();
    goto LABEL_38;
  }

LABEL_40:

  return v6;
}

+ (id)_localizedDayDateFormatter
{
  v2 = _NTKAllDateFormatters();
  v3 = [v2 objectForKeyedSubscript:@"localized"];

  if (!v3)
  {
    v3 = objc_opt_new();
    [v3 setLocalizedDateFormatFromTemplate:@"d"];
    v4 = _NTKAllDateFormatters();
    [v4 setObject:v3 forKeyedSubscript:@"localized"];
  }

  return v3;
}

@end