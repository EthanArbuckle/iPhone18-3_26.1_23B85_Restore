@interface FIUIDateFormattingUtilities
+ (BOOL)_dateStringFits:(id)fits font:(id)font maxWidth:(double)width;
+ (id)_dateFormatter;
+ (id)_localizedTodayFormatterWithTemplate:(id)template;
+ (id)stringWithDayNameAndShortMonthFromDate:(id)date;
+ (id)stringWithEitherTodayOrLongStyleDateFromDate:(id)date;
+ (id)stringWithLongestStyleDate:(id)date font:(id)font maxWidth:(double)width;
+ (id)stringWithShortStyleDate:(id)date;
+ (id)timeFormatter;
+ (id)timeRangeStringFromDateInterval:(id)interval;
+ (id)timeStringWithSpaceRemoved:(id)removed date:(id)date;
@end

@implementation FIUIDateFormattingUtilities

+ (id)timeFormatter
{
  if (timeFormatter_onceToken != -1)
  {
    +[FIUIDateFormattingUtilities timeFormatter];
  }

  v3 = timeFormatter___timeFormatter;

  return v3;
}

void __44__FIUIDateFormattingUtilities_timeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = timeFormatter___timeFormatter;
  timeFormatter___timeFormatter = v0;

  [timeFormatter___timeFormatter setDateStyle:0];
  [timeFormatter___timeFormatter setTimeStyle:1];
  v2 = FIUIBundle();
  v5 = [v2 localizedStringForKey:@"AM_SYMBOL_OVERRIDE" value:&stru_1F5F88F90 table:@"Localizable"];

  if ([v5 length] && (objc_msgSend(v5, "isEqualToString:", @"-") & 1) == 0)
  {
    [timeFormatter___timeFormatter setAMSymbol:v5];
  }

  v3 = FIUIBundle();
  v4 = [v3 localizedStringForKey:@"PM_SYMBOL_OVERRIDE" value:&stru_1F5F88F90 table:@"Localizable"];

  if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", @"-") & 1) == 0)
  {
    [timeFormatter___timeFormatter setPMSymbol:v4];
  }

  [timeFormatter___timeFormatter fu_observeTimeZoneAndLocaleChanges];
}

+ (id)_dateFormatter
{
  if (_dateFormatter_onceToken != -1)
  {
    +[FIUIDateFormattingUtilities _dateFormatter];
  }

  v3 = _dateFormatter___dateFormatter;

  return v3;
}

uint64_t __45__FIUIDateFormattingUtilities__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _dateFormatter___dateFormatter;
  _dateFormatter___dateFormatter = v0;

  [_dateFormatter___dateFormatter setTimeStyle:0];
  v2 = _dateFormatter___dateFormatter;

  return [v2 fu_observeTimeZoneAndLocaleChanges];
}

+ (id)stringWithLongestStyleDate:(id)date font:(id)font maxWidth:(double)width
{
  dateCopy = date;
  fontCopy = font;
  _dateFormatter = [self _dateFormatter];
  [_dateFormatter setDateStyle:3];
  v11 = [_dateFormatter stringFromDate:dateCopy];
  if (([self _dateStringFits:v11 font:fontCopy maxWidth:width] & 1) == 0)
  {
    [_dateFormatter setDateStyle:2];
    v12 = [_dateFormatter stringFromDate:dateCopy];

    if ([self _dateStringFits:v12 font:fontCopy maxWidth:width])
    {
      v11 = v12;
    }

    else
    {
      [_dateFormatter setDateStyle:1];
      v11 = [_dateFormatter stringFromDate:dateCopy];
    }
  }

  v13 = v11;

  return v11;
}

+ (id)stringWithShortStyleDate:(id)date
{
  dateCopy = date;
  _dateFormatter = [self _dateFormatter];
  [_dateFormatter setDateStyle:1];
  v6 = [_dateFormatter stringFromDate:dateCopy];

  return v6;
}

+ (BOOL)_dateStringFits:(id)fits font:(id)font maxWidth:(double)width
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E69DB648];
  v15[0] = font;
  v7 = MEMORY[0x1E695DF20];
  fontCopy = font;
  fitsCopy = fits;
  v10 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [fitsCopy sizeWithAttributes:v10];
  v12 = v11;

  return v12 <= width;
}

+ (id)timeStringWithSpaceRemoved:(id)removed date:(id)date
{
  removedCopy = removed;
  v6 = [removedCopy stringFromDate:date];
  v7 = MEMORY[0x1E696AEC0];
  aMSymbol = [removedCopy AMSymbol];
  v9 = [v7 stringWithFormat:@" %@", aMSymbol];
  aMSymbol2 = [removedCopy AMSymbol];
  v11 = [v6 stringByReplacingOccurrencesOfString:v9 withString:aMSymbol2];

  v12 = MEMORY[0x1E696AEC0];
  pMSymbol = [removedCopy PMSymbol];
  v14 = [v12 stringWithFormat:@" %@", pMSymbol];
  pMSymbol2 = [removedCopy PMSymbol];
  v16 = [v11 stringByReplacingOccurrencesOfString:v14 withString:pMSymbol2];

  v17 = MEMORY[0x1E696AEC0];
  aMSymbol3 = [removedCopy AMSymbol];
  v19 = [v17 stringWithFormat:@" %@", aMSymbol3];
  aMSymbol4 = [removedCopy AMSymbol];
  v21 = [v16 stringByReplacingOccurrencesOfString:v19 withString:aMSymbol4];

  v22 = MEMORY[0x1E696AEC0];
  pMSymbol3 = [removedCopy PMSymbol];
  v24 = [v22 stringWithFormat:@" %@", pMSymbol3];
  pMSymbol4 = [removedCopy PMSymbol];

  v26 = [v21 stringByReplacingOccurrencesOfString:v24 withString:pMSymbol4];

  return v26;
}

+ (id)timeRangeStringFromDateInterval:(id)interval
{
  intervalCopy = interval;
  timeFormatter = [self timeFormatter];
  startDate = [intervalCopy startDate];
  v7 = [self timeStringWithSpaceRemoved:timeFormatter date:startDate];

  timeFormatter2 = [self timeFormatter];
  endDate = [intervalCopy endDate];

  v10 = [self timeStringWithSpaceRemoved:timeFormatter2 date:endDate];

  v11 = MEMORY[0x1E696AEC0];
  v12 = FIUIBundle();
  v13 = [v12 localizedStringForKey:@"TIME_RANGE_FORMAT" value:&stru_1F5F88F90 table:@"Localizable"];
  v14 = [v11 stringWithFormat:v13, v7, v10];

  return v14;
}

+ (id)_localizedTodayFormatterWithTemplate:(id)template
{
  v3 = MEMORY[0x1E696AB78];
  templateCopy = template;
  v5 = objc_alloc_init(v3);
  [v5 setDoesRelativeDateFormatting:1];
  [v5 setDateStyle:2];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [v5 stringFromDate:date];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
  v10 = [v8 stringWithFormat:@"'%@'", v9];

  v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v12 = MEMORY[0x1E696AB78];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v12 dateFormatFromTemplate:templateCopy options:0 locale:currentLocale];

  v15 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(EE+|cc+)" options:0 error:0];
  v16 = [v15 stringByReplacingMatchesInString:v14 options:0 range:0 withTemplate:{objc_msgSend(v14, "length"), v10}];
  [v11 setDateFormat:v16];

  return v11;
}

+ (id)stringWithEitherTodayOrLongStyleDateFromDate:(id)date
{
  dateCopy = date;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__FIUIDateFormattingUtilities_stringWithEitherTodayOrLongStyleDateFromDate___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (stringWithEitherTodayOrLongStyleDateFromDate__onceToken != -1)
  {
    dispatch_once(&stringWithEitherTodayOrLongStyleDateFromDate__onceToken, block);
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar isDateInToday:dateCopy];

  v7 = &stringWithEitherTodayOrLongStyleDateFromDate____todayFormatter;
  if (!v6)
  {
    v7 = &stringWithEitherTodayOrLongStyleDateFromDate____notTodayFormatter;
  }

  v8 = [*v7 stringFromDate:dateCopy];

  return v8;
}

uint64_t __76__FIUIDateFormattingUtilities_stringWithEitherTodayOrLongStyleDateFromDate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _localizedTodayFormatterWithTemplate:@"EEEEMMMMdy"];
  v2 = stringWithEitherTodayOrLongStyleDateFromDate____todayFormatter;
  stringWithEitherTodayOrLongStyleDateFromDate____todayFormatter = v1;

  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v4 = stringWithEitherTodayOrLongStyleDateFromDate____notTodayFormatter;
  stringWithEitherTodayOrLongStyleDateFromDate____notTodayFormatter = v3;

  [stringWithEitherTodayOrLongStyleDateFromDate____notTodayFormatter setDateStyle:3];
  [stringWithEitherTodayOrLongStyleDateFromDate____notTodayFormatter setTimeStyle:0];
  [stringWithEitherTodayOrLongStyleDateFromDate____notTodayFormatter setDoesRelativeDateFormatting:0];
  [stringWithEitherTodayOrLongStyleDateFromDate____todayFormatter fu_observeTimeZoneAndLocaleChanges];
  v5 = stringWithEitherTodayOrLongStyleDateFromDate____notTodayFormatter;

  return [v5 fu_observeTimeZoneAndLocaleChanges];
}

+ (id)stringWithDayNameAndShortMonthFromDate:(id)date
{
  dateCopy = date;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__FIUIDateFormattingUtilities_stringWithDayNameAndShortMonthFromDate___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (stringWithDayNameAndShortMonthFromDate__onceToken != -1)
  {
    dispatch_once(&stringWithDayNameAndShortMonthFromDate__onceToken, block);
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar isDateInToday:dateCopy];

  v7 = &stringWithDayNameAndShortMonthFromDate____todayFormatter;
  if (!v6)
  {
    v7 = &stringWithDayNameAndShortMonthFromDate____notTodayFormatter;
  }

  v8 = [*v7 stringFromDate:dateCopy];

  return v8;
}

void __70__FIUIDateFormattingUtilities_stringWithDayNameAndShortMonthFromDate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _localizedTodayFormatterWithTemplate:@"EEEEMMMdy"];
  v2 = stringWithDayNameAndShortMonthFromDate____todayFormatter;
  stringWithDayNameAndShortMonthFromDate____todayFormatter = v1;

  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v4 = stringWithDayNameAndShortMonthFromDate____notTodayFormatter;
  stringWithDayNameAndShortMonthFromDate____notTodayFormatter = v3;

  v5 = MEMORY[0x1E696AB78];
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v5 dateFormatFromTemplate:@"EEEEMMMdy" options:0 locale:v6];

  [stringWithDayNameAndShortMonthFromDate____notTodayFormatter setFormattingContext:2];
  [stringWithDayNameAndShortMonthFromDate____notTodayFormatter setDateFormat:v7];
  [stringWithDayNameAndShortMonthFromDate____todayFormatter fu_observeTimeZoneAndLocaleChanges];
  [stringWithDayNameAndShortMonthFromDate____notTodayFormatter fu_observeTimeZoneAndLocaleChanges];
}

@end