@interface OITSUDateFormatter
+ (id)datePortionOfDateTimeFormatString:(id)string;
+ (id)defaultDateTimeFormatForLocale:(id)locale;
+ (id)p_supportedDateFormatMatchingFormat:(id)format locale:(id)locale;
+ (id)p_supportedTimeFormatMatchingFormat:(id)format locale:(id)locale;
+ (id)supportedDateFormatsForLocale:(id)locale;
+ (id)supportedTimeFormatsForLocale:(id)locale;
+ (id)timePortionOfDateTimeFormatString:(id)string;
+ (unint64_t)p_DateTimeSplitLocationInFormatString:(id)string;
- (OITSUDateFormatter)init;
- (OITSUDateFormatter)initWithLocale:(id)locale;
- (void)dealloc;
@end

@implementation OITSUDateFormatter

+ (id)defaultDateTimeFormatForLocale:(id)locale
{
  localeCopy = locale;
  v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_defaultDateTimeFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterMediumStyle, kCFDateFormatterShortStyle, localeCopy);
    [localeCopy setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_defaultDateTimeFormat"];
    objc_sync_exit(v5);
  }

  return v4;
}

+ (id)supportedDateFormatsForLocale:(id)locale
{
  v32 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_supportedDateFormats"];
  if (!v4)
  {
    obj = objc_opt_class();
    objc_sync_enter(obj);
    v26 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterShortStyle, kCFDateFormatterNoStyle, localeCopy);
    v25 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle, localeCopy);
    v24 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterLongStyle, kCFDateFormatterNoStyle, localeCopy);
    v5 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterFullStyle, kCFDateFormatterNoStyle, localeCopy);
    locale = [localeCopy locale];
    v7 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(locale);

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

          v16 = TSUDateFormatterStringFromDateWithFormat(v11, *(*(&v27 + 1) + 8 * i), localeCopy);
          [v10 addObject:v16];
        }

        v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v17 = TSUDateFormatterStringFromDateWithFormat(v11, v26, localeCopy);
    v18 = TSUDateFormatterStringFromDateWithFormat(v11, v25, localeCopy);
    v19 = TSUDateFormatterStringFromDateWithFormat(v11, v24, localeCopy);
    v20 = TSUDateFormatterStringFromDateWithFormat(v11, v5, localeCopy);
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
    [localeCopy setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_supportedDateFormats"];

    objc_sync_exit(obj);
  }

  return v4;
}

+ (id)p_supportedDateFormatMatchingFormat:(id)format locale:(id)locale
{
  v23 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  localeCopy = locale;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v8 = TSUDateFormatterStringFromDateWithFormat(v7, formatCopy, localeCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [OITSUDateFormatter supportedDateFormatsForLocale:localeCopy, 0];
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
        v15 = TSUDateFormatterStringFromDateWithFormat(v7, v14, localeCopy);
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

  v16 = formatCopy;
LABEL_11:

  return v16;
}

+ (id)supportedTimeFormatsForLocale:(id)locale
{
  localeCopy = locale;
  v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_supportedTimeFormats"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    obj = v5;
    v6 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterNoStyle, kCFDateFormatterShortStyle, localeCopy);
    v7 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterNoStyle, kCFDateFormatterMediumStyle, localeCopy);
    locale = [localeCopy locale];
    v9 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(locale);

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
    [localeCopy setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_supportedTimeFormats"];

    objc_sync_exit(obj);
  }

  return v4;
}

+ (id)p_supportedTimeFormatMatchingFormat:(id)format locale:(id)locale
{
  v23 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  localeCopy = locale;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v8 = TSUDateFormatterStringFromDateWithFormat(v7, formatCopy, localeCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [OITSUDateFormatter supportedTimeFormatsForLocale:localeCopy, 0];
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
        v15 = TSUDateFormatterStringFromDateWithFormat(v7, v14, localeCopy);
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

  v16 = formatCopy;
LABEL_11:

  return v16;
}

+ (unint64_t)p_DateTimeSplitLocationInFormatString:(id)string
{
  stringCopy = string;
  scanLocation5 = [stringCopy length];
  v5 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
  [v5 setCharactersToBeSkipped:0];
  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'hHmsSakKZ"];
  scanLocation = [v5 scanLocation];
  if (scanLocation >= [stringCopy length])
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

      scanLocation2 = [v5 scanLocation];
      if (scanLocation2 >= [stringCopy length] || objc_msgSend(stringCopy, "characterAtIndex:", objc_msgSend(v5, "scanLocation")) != 39)
      {
        break;
      }

      scanLocation3 = [v5 scanLocation];
      v12 = [v5 scanLocation] + 1;
      if (v12 >= [stringCopy length])
      {
        goto LABEL_14;
      }

      [v5 setScanLocation:{objc_msgSend(v5, "scanLocation") + 1}];
      v20 = v9;
      [v5 scanUpToString:@"'" intoString:&v20];
      v8 = v20;

      v13 = [v5 scanLocation] + 1;
      v14 = [stringCopy length];
      v15 = [v5 scanLocation] + 1;
      if (v13 >= v14)
      {
        if (v15 == [stringCopy length])
        {
          goto LABEL_10;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUDateFormatter p_DateTimeSplitLocationInFormatString:]"];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
        [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1007 isFatal:0 description:"Unmatched single quote found in format string %{public}@", stringCopy];

        +[OITSUAssertionHandler logBacktraceThrottled];
        v15 = scanLocation3 + 1;
      }

      [v5 setScanLocation:v15];
      scanLocation4 = [v5 scanLocation];
      if (scanLocation4 >= [stringCopy length])
      {
LABEL_10:
        v9 = v8;
        goto LABEL_14;
      }
    }

    scanLocation5 = [v5 scanLocation];
  }

LABEL_14:

  return scanLocation5;
}

+ (id)datePortionOfDateTimeFormatString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy substringToIndex:{objc_msgSend(self, "p_DateTimeSplitLocationInFormatString:", stringCopy)}];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v7;
}

+ (id)timePortionOfDateTimeFormatString:(id)string
{
  stringCopy = string;
  v5 = [self p_DateTimeSplitLocationInFormatString:stringCopy];
  if (v5 >= [stringCopy length])
  {
    v8 = &stru_286EE1130;
  }

  else
  {
    v6 = [stringCopy substringFromIndex:v5];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  return v8;
}

- (OITSUDateFormatter)initWithLocale:(id)locale
{
  localeCopy = locale;
  v19.receiver = self;
  v19.super_class = OITSUDateFormatter;
  v5 = [(OITSUDateFormatter *)&v19 init];
  if (v5)
  {
    gregorianCalendarLocale = [localeCopy gregorianCalendarLocale];
    UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, gregorianCalendarLocale, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);

    gregorianCalendarLocale2 = [localeCopy gregorianCalendarLocale];
    v9 = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, gregorianCalendarLocale2, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);

    v10 = CFDateFormatterGetFormat(UsingHarmonizedSymbols);
    dateOnlyFormatString = v5->_dateOnlyFormatString;
    v5->_dateOnlyFormatString = v10;

    v12 = CFDateFormatterGetFormat(v9);
    timeOnlyFormatString = v5->_timeOnlyFormatString;
    v5->_timeOnlyFormatString = v12;

    gregorianCalendarLocale3 = [localeCopy gregorianCalendarLocale];
    v5->_fullDateFormatter = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, gregorianCalendarLocale3, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);

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