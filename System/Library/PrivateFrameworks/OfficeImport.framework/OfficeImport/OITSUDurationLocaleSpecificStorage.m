@interface OITSUDurationLocaleSpecificStorage
+ (id)localeSpecificStorageForLocale:(id)a3;
- (OITSUDurationLocaleSpecificStorage)initWithLocale:(id)a3;
- (void)addDurationUnit:(id)a3;
- (void)dealloc;
@end

@implementation OITSUDurationLocaleSpecificStorage

- (OITSUDurationLocaleSpecificStorage)initWithLocale:(id)a3
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
    [v5 addCharactersInString:{objc_msgSend(a3, "decimalSeparator")}];
    v4->_separatorPunctuationCharacterSet = [v5 copy];
    v6 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
    [v6 addCharactersInString:{objc_msgSend(a3, "decimalSeparator")}];
    [v6 addCharactersInString:{objc_msgSend(a3, "groupingSeparator")}];
    v4->_decimalDigitAndSeperatorsCharacterSet = [v6 copy];
    v4->_weekLongSingularString = [a3 localizedStringForKey:@"week" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_weekLongPluralString = [a3 localizedStringForKey:@"weeks" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_weekMediumSingularString = [a3 localizedStringForKey:@"wk" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_weekMediumPluralString = [a3 localizedStringForKey:@"wks" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_weekShortString = [a3 localizedStringForKey:@"w" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayLongSingularString = [a3 localizedStringForKey:@"day" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayLongPluralString = [a3 localizedStringForKey:@"days" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayMediumSingularString = [a3 localizedStringForKey:@"day" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayMediumPluralString = [a3 localizedStringForKey:@"days" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_dayShortString = [a3 localizedStringForKey:@"d" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourLongSingularString = [a3 localizedStringForKey:@"hour" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourLongPluralString = [a3 localizedStringForKey:@"hours" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourMediumSingularString = [a3 localizedStringForKey:@"hr" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourMediumPluralString = [a3 localizedStringForKey:@"hrs" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_hourShortString = [a3 localizedStringForKey:@"h" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteLongSingularString = [a3 localizedStringForKey:@"minute" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteLongPluralString = [a3 localizedStringForKey:@"minutes" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteMediumSingularString = [a3 localizedStringForKey:@"min" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteMediumPluralString = [a3 localizedStringForKey:@"mins" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_minuteShortString = [a3 localizedStringForKey:@"m" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondLongSingularString = [a3 localizedStringForKey:@"second" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondLongPluralString = [a3 localizedStringForKey:@"seconds" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondMediumSingularString = [a3 localizedStringForKey:@"sec" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondMediumPluralString = [a3 localizedStringForKey:@"secs" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_secondShortString = [a3 localizedStringForKey:@"s" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_millisecondLongSingularString = [a3 localizedStringForKey:@"millisecond" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_millisecondLongPluralString = [a3 localizedStringForKey:@"milliseconds" value:&stru_286EE1130 table:@"TSUtility"];
    v4->_millisecondShortString = [a3 localizedStringForKey:@"ms" value:&stru_286EE1130 table:@"TSUtility"];
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

- (void)addDurationUnit:(id)a3
{
  v4 = [a3 stringByTrimmingCharactersInSet:self->_whitespaceCharacterSet];
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

+ (id)localeSpecificStorageForLocale:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDurationFormatter.m"], 347, 0, "No locale passed in, falling to back current locale.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    v3 = +[OITSULocale currentLocale];
  }

  v6 = [v3 localeSpecificStorageForKey:@"durationFormatterLocaleStorageKey"];
  if (!v6)
  {
    objc_sync_enter(a1);
    v6 = [[OITSUDurationLocaleSpecificStorage alloc] initWithLocale:v3];
    [v3 setLocaleSpecificStorage:v6 forKey:@"durationFormatterLocaleStorageKey"];
    objc_sync_exit(a1);
  }

  return v6;
}

@end