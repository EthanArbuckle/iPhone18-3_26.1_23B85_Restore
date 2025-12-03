@interface OITSUDurationLocaleSpecificStorage
+ (id)localeSpecificStorageForLocale:(id)locale;
- (OITSUDurationLocaleSpecificStorage)initWithLocale:(id)locale;
- (void)addDurationUnit:(id)unit;
- (void)dealloc;
@end

@implementation OITSUDurationLocaleSpecificStorage

- (OITSUDurationLocaleSpecificStorage)initWithLocale:(id)locale
{
  v8.receiver = self;
  v8.super_class = OITSUDurationLocaleSpecificStorage;
  v4 = [(OITSUDurationLocaleSpecificStorage *)&v8 init];
  if (v4)
  {
    v4->_emptyCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:&stru_286EE1130];
    v4->_minusSignCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
    v4->_alphabeticCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
    v4->_decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v4->_whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v4->_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4->_specialDurationFormatCharacters = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"wdhmsf"];
    v5 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:@":."];
    [v5 addCharactersInString:{objc_msgSend(locale, "decimalSeparator")}];
    v4->_separatorPunctuationCharacterSet = [v5 copy];
    decimalDigitCharacterSet = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
    [decimalDigitCharacterSet addCharactersInString:{objc_msgSend(locale, "decimalSeparator")}];
    [decimalDigitCharacterSet addCharactersInString:{objc_msgSend(locale, "groupingSeparator")}];
    v4->_decimalDigitAndSeperatorsCharacterSet = [decimalDigitCharacterSet copy];
    v4->_weekLongSingularString = [locale localizedStringForKey:@"week" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_weekLongPluralString = [locale localizedStringForKey:@"weeks" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_weekMediumSingularString = [locale localizedStringForKey:@"wk" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_weekMediumPluralString = [locale localizedStringForKey:@"wks" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_weekShortString = [locale localizedStringForKey:@"w" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayLongSingularString = [locale localizedStringForKey:@"day" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayLongPluralString = [locale localizedStringForKey:@"days" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayMediumSingularString = [locale localizedStringForKey:@"day" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayMediumPluralString = [locale localizedStringForKey:@"days" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayShortString = [locale localizedStringForKey:@"d" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourLongSingularString = [locale localizedStringForKey:@"hour" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourLongPluralString = [locale localizedStringForKey:@"hours" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourMediumSingularString = [locale localizedStringForKey:@"hr" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourMediumPluralString = [locale localizedStringForKey:@"hrs" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourShortString = [locale localizedStringForKey:@"h" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteLongSingularString = [locale localizedStringForKey:@"minute" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteLongPluralString = [locale localizedStringForKey:@"minutes" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteMediumSingularString = [locale localizedStringForKey:@"min" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteMediumPluralString = [locale localizedStringForKey:@"mins" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteShortString = [locale localizedStringForKey:@"m" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondLongSingularString = [locale localizedStringForKey:@"second" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondLongPluralString = [locale localizedStringForKey:@"seconds" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondMediumSingularString = [locale localizedStringForKey:@"sec" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondMediumPluralString = [locale localizedStringForKey:@"secs" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondShortString = [locale localizedStringForKey:@"s" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_millisecondLongSingularString = [locale localizedStringForKey:@"millisecond" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_millisecondLongPluralString = [locale localizedStringForKey:@"milliseconds" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_millisecondShortString = [locale localizedStringForKey:@"ms" value:&stru_286EE1130 table:@"TSUtility"];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekLongSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekLongPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekMediumSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekMediumPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekShortString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayLongSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayLongPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayMediumSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayMediumPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayShortString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourLongSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourLongPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourMediumSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourMediumPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourShortString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteLongSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteLongPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteMediumSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteMediumPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteShortString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondLongSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondLongPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondMediumSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondMediumPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondShortString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_millisecondLongSingularString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_millisecondLongPluralString];
    [(OITSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_millisecondShortString];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUDurationLocaleSpecificStorage;
  [(OITSUDurationLocaleSpecificStorage *)&v3 dealloc];
}

- (void)addDurationUnit:(id)unit
{
  v4 = [unit stringByTrimmingCharactersInSet:self->_whitespaceCharacterSet];
  if ([v4 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
  {
    multiWordDurationUnitStrings = self->_multiWordDurationUnitStrings;
    if (!multiWordDurationUnitStrings)
    {
      multiWordDurationUnitStrings = objc_opt_new();
      self->_multiWordDurationUnitStrings = multiWordDurationUnitStrings;
    }

    [(NSMutableArray *)multiWordDurationUnitStrings addObject:v4];
  }

  if ([v4 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
  {
    fullStopDurationUnitStrings = self->_fullStopDurationUnitStrings;
    if (!fullStopDurationUnitStrings)
    {
      fullStopDurationUnitStrings = objc_opt_new();
      self->_fullStopDurationUnitStrings = fullStopDurationUnitStrings;
    }

    [(NSMutableArray *)fullStopDurationUnitStrings addObject:v4];
  }
}

+ (id)localeSpecificStorageForLocale:(id)locale
{
  localeCopy = locale;
  if (!locale)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"], 347, 0, "No locale passed in, falling to back current locale.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    localeCopy = +[OITSULocale currentLocale];
  }

  v6 = [localeCopy localeSpecificStorageForKey:@"durationFormatterLocaleStorageKey"];
  if (!v6)
  {
    objc_sync_enter(self);
    v6 = [[OITSUDurationLocaleSpecificStorage alloc] initWithLocale:localeCopy];
    [localeCopy setLocaleSpecificStorage:v6 forKey:@"durationFormatterLocaleStorageKey"];
    objc_sync_exit(self);
  }

  return v6;
}

@end