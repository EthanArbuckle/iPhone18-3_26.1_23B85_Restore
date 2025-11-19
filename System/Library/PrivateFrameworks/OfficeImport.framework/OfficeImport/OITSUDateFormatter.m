@interface OITSUDateFormatter
+ (id)datePortionOfDateTimeFormatString:(id)a3;
+ (id)defaultDateTimeFormatForLocale:(id)a3;
+ (id)p_supportedDateFormatMatchingFormat:(id)a3 locale:(id)a4;
+ (id)p_supportedTimeFormatMatchingFormat:(id)a3 locale:(id)a4;
+ (id)supportedDateFormatsForLocale:(id)a3;
+ (id)supportedTimeFormatsForLocale:(id)a3;
+ (id)timePortionOfDateTimeFormatString:(id)a3;
+ (unint64_t)p_DateTimeSplitLocationInFormatString:(id)a3;
- (OITSUDateFormatter)init;
- (OITSUDateFormatter)initWithLocale:(id)a3;
- (void)dealloc;
@end

@implementation OITSUDateFormatter

+ (id)defaultDateTimeFormatForLocale:(id)a3
{
  v3 = a3;
  v4 = [v3 localeSpecificStorageForKey:@"TSUDateFormatter_defaultDateTimeFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterMediumStyle, kCFDateFormatterShortStyle, v3);
    [v3 setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_defaultDateTimeFormat"];
    objc_sync_exit(v5);
  }

  return v4;
}

+ (id)supportedDateFormatsForLocale:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 localeSpecificStorageForKey:@"TSUDateFormatter_supportedDateFormats"];
  if (!v4)
  {
    obj = objc_opt_class();
    objc_sync_enter(obj);
    v26 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterShortStyle, kCFDateFormatterNoStyle, v3);
    v25 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle, v3);
    v24 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterLongStyle, kCFDateFormatterNoStyle, v3);
    v5 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterFullStyle, kCFDateFormatterNoStyle, v3);
    v6 = [v3 locale];
    v7 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(v6);

    v8 = [v7 objectForKey:@"DisplayedDateFormats"];
    v9 = [v8 mutableCopy];

    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    v22 = v7;
    if (v13)
    {
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = TSUDateFormatterStringFromDateWithFormat(v11, *(*(&v27 + 1) + 8 * i), v3);
          [v10 addObject:v16];
        }

        v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v17 = TSUDateFormatterStringFromDateWithFormat(v11, v26, v3);
    v18 = TSUDateFormatterStringFromDateWithFormat(v11, v25, v3);
    v19 = TSUDateFormatterStringFromDateWithFormat(v11, v24, v3);
    v20 = TSUDateFormatterStringFromDateWithFormat(v11, v5, v3);
    if (([v10 containsObject:v17] & 1) == 0)
    {
      [v10 addObject:v17];
      [v12 addObject:v26];
    }

    if (([v10 containsObject:v18] & 1) == 0)
    {
      [v10 addObject:v18];
      [v12 addObject:v25];
    }

    if (([v10 containsObject:v19] & 1) == 0)
    {
      [v10 addObject:v19];
      [v12 addObject:v24];
    }

    if (([v10 containsObject:v20] & 1) == 0)
    {
      [v10 addObject:v20];
      [v12 addObject:v5];
    }

    v4 = [v12 copy];
    [v3 setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_supportedDateFormats"];

    objc_sync_exit(obj);
  }

  return v4;
}

+ (id)p_supportedDateFormatMatchingFormat:(id)a3 locale:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v8 = TSUDateFormatterStringFromDateWithFormat(v7, v5, v6);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [OITSUDateFormatter supportedDateFormatsForLocale:v6, 0];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = TSUDateFormatterStringFromDateWithFormat(v7, v14, v6);
        if ([v15 isEqualToString:v8])
        {
          v16 = v14;

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = v5;
LABEL_11:

  return v16;
}

+ (id)supportedTimeFormatsForLocale:(id)a3
{
  v3 = a3;
  v4 = [v3 localeSpecificStorageForKey:@"TSUDateFormatter_supportedTimeFormats"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    obj = v5;
    v6 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterNoStyle, kCFDateFormatterShortStyle, v3);
    v7 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterNoStyle, kCFDateFormatterMediumStyle, v3);
    v8 = [v3 locale];
    v9 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(v8);

    v21 = v9;
    v10 = [v9 objectForKey:@"DisplayedTimeFormats"];
    v11 = [v10 mutableCopy];

    v12 = [v6 mutableCopy];
    [v12 replaceOccurrencesOfString:@"h" withString:@"hh" options:0 range:{0, objc_msgSend(v12, "length")}];
    [v12 replaceOccurrencesOfString:@"H" withString:@"HH" options:0 range:{0, objc_msgSend(v12, "length")}];
    v13 = [v6 mutableCopy];
    [v13 replaceOccurrencesOfString:@"hh" withString:@"h" options:0 range:{0, objc_msgSend(v13, "length")}];
    [v13 replaceOccurrencesOfString:@"HH" withString:@"H" options:0 range:{0, objc_msgSend(v13, "length")}];
    v14 = [v7 mutableCopy];
    [v14 replaceOccurrencesOfString:@"h" withString:@"hh" options:0 range:{0, objc_msgSend(v14, "length")}];
    [v14 replaceOccurrencesOfString:@"H" withString:@"HH" options:0 range:{0, objc_msgSend(v14, "length")}];
    v15 = [v7 mutableCopy];
    [v15 replaceOccurrencesOfString:@"hh" withString:@"h" options:0 range:{0, objc_msgSend(v15, "length")}];
    [v15 replaceOccurrencesOfString:@"HH" withString:@"H" options:0 range:{0, objc_msgSend(v15, "length")}];
    v16 = [v11 indexOfObject:v12];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 removeObjectAtIndex:v16];
    }

    v17 = [v11 indexOfObject:v13];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 removeObjectAtIndex:v17];
      v16 = v17;
    }

    if (([v11 containsObject:v6] & 1) == 0)
    {
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v11 addObject:v6];
      }

      else
      {
        [v11 insertObject:v6 atIndex:v16];
      }
    }

    v18 = [v11 indexOfObject:v14];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 removeObjectAtIndex:v18];
    }

    v19 = [v11 indexOfObject:v15];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 removeObjectAtIndex:v19];
      v18 = v19;
    }

    if (([v11 containsObject:v7] & 1) == 0)
    {
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v11 addObject:v7];
      }

      else
      {
        [v11 insertObject:v7 atIndex:v18];
      }
    }

    v4 = [v11 copy];
    [v3 setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_supportedTimeFormats"];

    objc_sync_exit(obj);
  }

  return v4;
}

+ (id)p_supportedTimeFormatMatchingFormat:(id)a3 locale:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v8 = TSUDateFormatterStringFromDateWithFormat(v7, v5, v6);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [OITSUDateFormatter supportedTimeFormatsForLocale:v6, 0];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = TSUDateFormatterStringFromDateWithFormat(v7, v14, v6);
        if ([v15 isEqualToString:v8])
        {
          v16 = v14;

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = v5;
LABEL_11:

  return v16;
}

+ (unint64_t)p_DateTimeSplitLocationInFormatString:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [MEMORY[0x277CCAC80] scannerWithString:v3];
  [v5 setCharactersToBeSkipped:0];
  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'hHmsSakKZ"];
  v7 = [v5 scanLocation];
  if (v7 >= [v3 length])
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v21 = v8;
      [v5 scanUpToCharactersFromSet:v6 intoString:&v21];
      v9 = v21;

      v10 = [v5 scanLocation];
      if (v10 >= [v3 length] || objc_msgSend(v3, "characterAtIndex:", objc_msgSend(v5, "scanLocation")) != 39)
      {
        break;
      }

      v11 = [v5 scanLocation];
      v12 = [v5 scanLocation] + 1;
      if (v12 >= [v3 length])
      {
        goto LABEL_14;
      }

      [v5 setScanLocation:{objc_msgSend(v5, "scanLocation") + 1}];
      v20 = v9;
      [v5 scanUpToString:@"'" intoString:&v20];
      v8 = v20;

      v13 = [v5 scanLocation] + 1;
      v14 = [v3 length];
      v15 = [v5 scanLocation] + 1;
      if (v13 >= v14)
      {
        if (v15 == [v3 length])
        {
          goto LABEL_10;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUDateFormatter p_DateTimeSplitLocationInFormatString:]"];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
        [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1007 isFatal:0 description:"Unmatched single quote found in format string %{public}@", v3];

        +[OITSUAssertionHandler logBacktraceThrottled];
        v15 = v11 + 1;
      }

      [v5 setScanLocation:v15];
      v18 = [v5 scanLocation];
      if (v18 >= [v3 length])
      {
LABEL_10:
        v9 = v8;
        goto LABEL_14;
      }
    }

    v4 = [v5 scanLocation];
  }

LABEL_14:

  return v4;
}

+ (id)datePortionOfDateTimeFormatString:(id)a3
{
  v4 = a3;
  v5 = [v4 substringToIndex:{objc_msgSend(a1, "p_DateTimeSplitLocationInFormatString:", v4)}];

  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  return v7;
}

+ (id)timePortionOfDateTimeFormatString:(id)a3
{
  v4 = a3;
  v5 = [a1 p_DateTimeSplitLocationInFormatString:v4];
  if (v5 >= [v4 length])
  {
    v8 = &stru_286EE1130;
  }

  else
  {
    v6 = [v4 substringFromIndex:v5];
    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:v7];
  }

  return v8;
}

- (OITSUDateFormatter)initWithLocale:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = OITSUDateFormatter;
  v5 = [(OITSUDateFormatter *)&v19 init];
  if (v5)
  {
    v6 = [v4 gregorianCalendarLocale];
    UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, v6, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);

    v8 = [v4 gregorianCalendarLocale];
    v9 = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, v8, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);

    v10 = CFDateFormatterGetFormat(UsingHarmonizedSymbols);
    dateOnlyFormatString = v5->_dateOnlyFormatString;
    v5->_dateOnlyFormatString = v10;

    v12 = CFDateFormatterGetFormat(v9);
    timeOnlyFormatString = v5->_timeOnlyFormatString;
    v5->_timeOnlyFormatString = v12;

    v14 = [v4 gregorianCalendarLocale];
    v5->_fullDateFormatter = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, v14, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);

    fullDateFormatter = v5->_fullDateFormatter;
    v16 = *MEMORY[0x277CBEDF8];
    v17 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(fullDateFormatter, v16, v17);

    CFRelease(UsingHarmonizedSymbols);
    CFRelease(v9);
  }

  return v5;
}

- (OITSUDateFormatter)init
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateFormatter init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:1060 isFatal:0 description:"I don't think anyone creates these objects anymore - if they do, a locale needs to be supplied"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v5 = +[OITSULocale currentLocale];
  v6 = [(OITSUDateFormatter *)self initWithLocale:v5];

  return v6;
}

- (void)dealloc
{
  CFRelease(self->_fullDateFormatter);
  v3.receiver = self;
  v3.super_class = OITSUDateFormatter;
  [(OITSUDateFormatter *)&v3 dealloc];
}

@end