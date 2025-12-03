@interface LibcoreIcuICU
+ (IOSObjectArray)getAvailableCalendarLocalesNative;
+ (IOSObjectArray)getAvailableDateFormatLocalesNative;
+ (IOSObjectArray)getAvailableNumberFormatLocalesNative;
+ (IOSObjectArray)getISOCountriesNative;
+ (IOSObjectArray)getISOLanguagesNative;
+ (id)getAvailableBreakIteratorLocales;
+ (id)getAvailableBreakIteratorLocalesNative;
+ (id)getAvailableCalendarLocales;
+ (id)getAvailableCollatorLocales;
+ (id)getAvailableCollatorLocalesNative;
+ (id)getAvailableCurrencyCodes;
+ (id)getAvailableDateFormatLocales;
+ (id)getAvailableDateFormatSymbolsLocales;
+ (id)getAvailableDecimalFormatSymbolsLocales;
+ (id)getAvailableLocalesNative;
+ (id)getAvailableNumberFormatLocales;
@end

@implementation LibcoreIcuICU

+ (id)getAvailableBreakIteratorLocales
{
  v2 = [IOSObjectArray arrayWithLength:0 type:NSString_class_()];

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v2);
}

+ (id)getAvailableCalendarLocales
{
  v2 = +[LibcoreIcuICU getAvailableCalendarLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v2);
}

+ (id)getAvailableCollatorLocales
{
  v2 = [IOSObjectArray arrayWithLength:0 type:NSString_class_()];

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v2);
}

+ (id)getAvailableDateFormatLocales
{
  v2 = +[LibcoreIcuICU getAvailableDateFormatLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v2);
}

+ (id)getAvailableDateFormatSymbolsLocales
{
  v2 = +[LibcoreIcuICU getAvailableDateFormatLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v2);
}

+ (id)getAvailableDecimalFormatSymbolsLocales
{
  v2 = +[LibcoreIcuICU getAvailableNumberFormatLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v2);
}

+ (id)getAvailableNumberFormatLocales
{
  v2 = +[LibcoreIcuICU getAvailableNumberFormatLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v2);
}

+ (id)getAvailableCurrencyCodes
{
  v2 = +[NSLocale ISOCurrencyCodes];
  v3 = NSString_class_();

  return [IOSObjectArray arrayWithNSArray:v2 type:v3];
}

+ (id)getAvailableBreakIteratorLocalesNative
{
  v2 = NSString_class_();

  return [IOSObjectArray arrayWithLength:0 type:v2];
}

+ (id)getAvailableCollatorLocalesNative
{
  v2 = NSString_class_();

  return [IOSObjectArray arrayWithLength:0 type:v2];
}

+ (id)getAvailableLocalesNative
{
  v2 = +[NSLocale availableLocaleIdentifiers];
  v3 = NSString_class_();

  return [IOSObjectArray arrayWithNSArray:v2 type:v3];
}

+ (IOSObjectArray)getISOLanguagesNative
{
  v0 = +[NSLocale ISOLanguageCodes];
  v1 = [(NSArray *)v0 count];
  v2 = [NSMutableData dataWithLength:8 * v1];
  [(NSArray *)v0 getObjects:[(NSMutableData *)v2 mutableBytes] range:0, v1];
  mutableBytes = [(NSMutableData *)v2 mutableBytes];
  v4 = NSString_class_();

  return [IOSObjectArray arrayWithObjects:mutableBytes count:v1 type:v4];
}

+ (IOSObjectArray)getISOCountriesNative
{
  v0 = +[NSLocale ISOCountryCodes];
  v1 = [(NSArray *)v0 count];
  v2 = [NSMutableData dataWithLength:8 * v1];
  [(NSArray *)v0 getObjects:[(NSMutableData *)v2 mutableBytes] range:0, v1];
  mutableBytes = [(NSMutableData *)v2 mutableBytes];
  v4 = NSString_class_();

  return [IOSObjectArray arrayWithObjects:mutableBytes count:v1 type:v4];
}

+ (IOSObjectArray)getAvailableDateFormatLocalesNative
{
  v0 = +[NSMutableArray array];
  v1 = objc_alloc_init(NSDateFormatter);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = +[NSLocale availableLocaleIdentifiers];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [[NSLocale alloc] initWithLocaleIdentifier:v7];
        [v1 setLocale:v8];
        if ([v1 dateFormat])
        {
          [v0 addObject:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [IOSObjectArray arrayWithNSArray:v0 type:NSString_class_()];
}

+ (IOSObjectArray)getAvailableCalendarLocalesNative
{
  v0 = +[NSMutableArray array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = +[NSLocale availableLocaleIdentifiers];
  v2 = [(NSArray *)v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = [[NSLocale alloc] initWithLocaleIdentifier:v6];
        if ([v7 objectForKey:NSLocaleCalendar])
        {
          [v0 addObject:v6];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return [IOSObjectArray arrayWithNSArray:v0 type:NSString_class_()];
}

+ (IOSObjectArray)getAvailableNumberFormatLocalesNative
{
  v0 = +[NSMutableArray array];
  v1 = objc_alloc_init(NSNumberFormatter);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = +[NSLocale availableLocaleIdentifiers];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [[NSLocale alloc] initWithLocaleIdentifier:v7];
        [v1 setLocale:v8];
        if ([v1 positiveFormat])
        {
          [v0 addObject:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [IOSObjectArray arrayWithNSArray:v0 type:NSString_class_()];
}

@end