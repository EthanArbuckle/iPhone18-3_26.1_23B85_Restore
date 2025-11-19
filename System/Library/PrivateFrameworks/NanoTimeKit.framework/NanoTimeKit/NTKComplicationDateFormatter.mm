@interface NTKComplicationDateFormatter
+ (id)_localizedDayDateFormatter;
+ (id)dateFormatterForStyle:(unint64_t)a3;
+ (id)stringForDate:(id)a3 withStyle:(unint64_t)a4;
+ (void)_handleLocaleChange:(id)a3;
+ (void)_handleSignificantTimeChange:(id)a3;
+ (void)initialize;
@end

@implementation NTKComplicationDateFormatter

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:a1 selector:sel__handleSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:a1 selector:sel__handleLocaleChange_ name:*MEMORY[0x277CBE620] object:0];
  }
}

+ (void)_handleSignificantTimeChange:(id)a3
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v4 = _NTKAllDateFormatters();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NTKComplicationDateFormatter__handleSignificantTimeChange___block_invoke;
  v6[3] = &unk_27877E360;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

+ (void)_handleLocaleChange:(id)a3
{
  v3 = _NTKAllDateFormatters();
  [v3 removeAllObjects];
}

+ (id)stringForDate:(id)a3 withStyle:(unint64_t)a4
{
  if (!a3)
  {
    v9 = &stru_284110E98;
    goto LABEL_14;
  }

  v6 = a3;
  v7 = [a1 dateFormatterForStyle:a4];
  v8 = [v7 stringFromDate:v6];

  v9 = _NTKRemovePunctationIfNecessaryFromTextForDateStyle(v8, a4);

  if (a4 <= 255)
  {
    if (a4 != 1 && a4 != 8)
    {
      goto LABEL_13;
    }
  }

  else if (a4 != 4096 && a4 != 2048)
  {
    if (a4 != 256 || (NTKCanUseAllUppercaseLongDateStrings() & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (NTKUseAllUppercaseShortWeekdays())
  {
LABEL_12:
    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [(__CFString *)v9 uppercaseStringWithLocale:v10];

    v9 = v11;
  }

LABEL_13:

LABEL_14:

  return v9;
}

+ (id)dateFormatterForStyle:(unint64_t)a3
{
  v4 = _NTKAllDateFormatters();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = 0;
    if (a3 <= 63)
    {
      if (a3 > 7)
      {
        if (a3 == 8)
        {
          v7 = @"E d";
LABEL_34:
          v6 = objc_opt_new();
          v8 = [MEMORY[0x277CBEAF8] currentLocale];
          v9 = [v8 objectForKey:*MEMORY[0x277CBE6C8]];

          LODWORD(v8) = [v9 isEqualToString:@"en"];
          if (!v8)
          {
LABEL_38:
            [v6 setLocalizedDateFormatFromTemplate:v7];
            goto LABEL_39;
          }

LABEL_35:
          [v6 setDateFormat:v7];
LABEL_39:
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
          [v4 setObject:v6 forKeyedSubscript:v10];

          goto LABEL_40;
        }

        if (a3 != 16)
        {
          if (a3 == 32)
          {
            v7 = @"EMMMd";
          }

          goto LABEL_37;
        }

        goto LABEL_24;
      }

      switch(a3)
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
      if (a3 > 511)
      {
        if (a3 > 2047)
        {
          if (a3 == 2048)
          {
            v7 = @"EEEEE d";
          }

          else if (a3 == 4096)
          {
            v7 = @"EEEEEE d";
          }

          goto LABEL_37;
        }

        if (a3 != 512)
        {
          if (a3 == 1024)
          {
            v7 = @"M/d";
          }

          goto LABEL_37;
        }

        v7 = @"EEEE d";
        goto LABEL_34;
      }

      switch(a3)
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